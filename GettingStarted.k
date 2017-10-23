$ This sample is from http://www.dynasupport.com/tutorial/getting-started-with-ls-dyna/getting-started
*KEYWORD
$
$ specify the problem termination time: 1 sec
*CONTROL_TERMINATION
        1.
$
$ control the printing interval of result: print the results every 0.1 sec
*DATABASE_BINARY_D3PLOT
        .1
$
$ part identified by part identification (pid=1).
$ SID/SECID = section identification (sid=1)
$ MID = material identification (mid=1).
*PART
aluminum block
$--------+---------+---------+---------+---------+---------+---------+---------+
$      PID     SECID       MID     EOSID      HGID      GRAV    ADPOPT      TMID
         1         1         1
$
$ Parts identified by (sid=1) are defined as SECTION_SOLID
$ => constant stress 8 node brick elements by this keyword.
*SECTION_SOLID
$--------+---------+---------+---------+---------+---------+---------+---------+
$    SECID    ELFORM       AET
         1
$
$ Parts identified by (mid=1)
$ => defined as an elastic material with a density Á, a modulus of elasticity E, and a Poisson ratio of µ.
*MAT_ELASTIC
$--------+---------+---------+---------+---------+---------+---------+---------+
$      MID        RO         E        PR        DA        DB         K
         1     2700.   70.e+09        .3
*ELEMENT_SOLID
$------+-------+-------+-------+-------+-------+-------+-------+-------+-------+
$    EID     PID      N1      N2      N3      N4      N5      N6      N7      N8
       1       1       1       2       3       4       5       6       7       8
*NODE
$------+---------------+---------------+---------------+-------+-------+-------+
$    NID               X               Y               Z      TC      RC
       1              0.              0.              0.       7       7
       2              1.              0.              0.       5       0
       3              1.              1.              0.       3       0
       4              0.              1.              0.       6       0
       5              0.              0.              1.       4       0
       6              1.              0.              1.       2       0
       7              1.              1.              1.       0       0
       8              0.              1.              1.       1       0
*LOAD_SEGMENT
$--------+---------+---------+---------+---------+---------+---------+---------+
$     LCID        SF        AT        N1        N2        N3        N4
         1        1.        0.         5         6         7         8
*DEFINE_CURVE
$--------+---------+---------+---------+---------+---------+---------+---------+
$     LCID      SIDR       SFA       SFO      OFFA      OFFO    DATTYP
         1
$------------------+-------------------+
$                 A1                  O1
                  0.                  0.
                  1.             70.e+05
*END
