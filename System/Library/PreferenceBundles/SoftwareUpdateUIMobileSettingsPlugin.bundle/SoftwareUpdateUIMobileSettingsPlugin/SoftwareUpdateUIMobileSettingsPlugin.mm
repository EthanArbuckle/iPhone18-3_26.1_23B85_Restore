uint64_t sub_1EA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1EA0();
  *a1 = result;
  return result;
}

uint64_t EnvironmentValues.reactivePreferencesManager.getter()
{
  sub_1F3C();
  sub_50F20();
  return v1;
}

unint64_t sub_1F3C()
{
  v2 = qword_64CF0[0];
  if (!qword_64CF0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_64CF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1FB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_50F10();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = EnvironmentValues.reactivePreferencesManager.getter();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

uint64_t EnvironmentValues.reactivePreferencesManager.setter()
{

  sub_1F3C();
  sub_50F30();
}

uint64_t *(*EnvironmentValues.reactivePreferencesManager.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = EnvironmentValues.reactivePreferencesManager.getter();
  return sub_21B8;
}

uint64_t *sub_21B8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v5 = *a1;

    EnvironmentValues.reactivePreferencesManager.setter();
    return sub_2224(a1);
  }

  else
  {
    v3 = *a1;
    return EnvironmentValues.reactivePreferencesManager.setter();
  }
}

uint64_t *sub_2224(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

void *sub_2264(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_229C(uint64_t *a1)
{
  v2 = *a1;

  sub_51130();

  return v3;
}

uint64_t sub_232C()
{
  v4 = *v0;
  sub_23A4(&v4, &v3);
  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51140();
  sub_2468(&v4);
  return v2;
}

void *sub_23A4(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

uint64_t sub_23FC(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t *sub_2468(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

uint64_t sub_24A0()
{
  v5 = *v0;
  sub_23A4(&v5, &v4);
  sub_23A4(&v5, &v3);
  v2 = v5;

  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51150();
  sub_2468(&v2);
  sub_2468(&v5);
}

uint64_t sub_254C()
{
  v4 = *v0;
  sub_23A4(&v4, &v3);
  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51160();
  sub_2468(&v4);
  return v2;
}

uint64_t sub_25DC()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_261C(uint64_t a1, uint64_t a2)
{

  v3 = *v2;
  v5 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_2684()
{

  type metadata accessor for ReactiveMobilePreferencesManager();
  sub_51130();

  return v1;
}

uint64_t sub_26FC()
{
  v4 = *(v0 + 16);
  sub_2774(&v4, &v3);
  sub_23FC(&qword_64498, &qword_51CB8);
  sub_51140();
  sub_27CC(&v4);
  return v2;
}

void *sub_2774(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

uint64_t *sub_27CC(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

uint64_t sub_2804()
{
  v5 = *(v0 + 16);
  sub_2774(&v5, &v4);
  sub_2774(&v5, &v3);
  v2 = v5;

  sub_23FC(&qword_64498, &qword_51CB8);
  sub_51150();
  sub_27CC(&v2);
  sub_27CC(&v5);
}

uint64_t sub_28B0()
{
  v4 = *(v0 + 16);
  sub_2774(&v4, &v3);
  sub_23FC(&qword_64498, &qword_51CB8);
  sub_51160();
  sub_27CC(&v4);
  return v2;
}

uint64_t sub_2940()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t sub_2980(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 16);
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_29E8(uint64_t *a1)
{
  v2 = *a1;

  sub_51130();

  return v3;
}

uint64_t sub_2A78()
{
  v4 = *(v0 + 32);
  sub_2AF0(&v4, &v3);
  sub_23FC(&qword_644A0, &qword_51CC0);
  sub_51140();
  sub_2B48(&v4);
  return v2;
}

void *sub_2AF0(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

uint64_t *sub_2B48(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

uint64_t sub_2B80()
{
  v5 = *(v0 + 32);
  sub_2AF0(&v5, &v4);
  sub_2AF0(&v5, &v3);
  v2 = v5;

  sub_23FC(&qword_644A0, &qword_51CC0);
  sub_51150();
  sub_2B48(&v2);
  sub_2B48(&v5);
}

uint64_t sub_2C2C()
{
  v4 = *(v0 + 32);
  sub_2AF0(&v4, &v3);
  sub_23FC(&qword_644A0, &qword_51CC0);
  sub_51160();
  sub_2B48(&v4);
  return v2;
}

uint64_t sub_2CBC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t sub_2CFC(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 32);
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_2D64(uint64_t *a1)
{
  v2 = *a1;

  sub_51130();

  return v3;
}

uint64_t sub_2DF4()
{
  v4 = *(v0 + 48);
  sub_2E6C(&v4, &v3);
  sub_23FC(&qword_644A8, &qword_51CC8);
  sub_51140();
  sub_2EC4(&v4);
  return v2;
}

void *sub_2E6C(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

uint64_t *sub_2EC4(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

uint64_t sub_2EFC()
{
  v5 = *(v0 + 48);
  sub_2E6C(&v5, &v4);
  sub_2E6C(&v5, &v3);
  v2 = v5;

  sub_23FC(&qword_644A8, &qword_51CC8);
  sub_51150();
  sub_2EC4(&v2);
  sub_2EC4(&v5);
}

uint64_t sub_2FA8()
{
  v4 = *(v0 + 48);
  sub_2E6C(&v4, &v3);
  sub_23FC(&qword_644A8, &qword_51CC8);
  sub_51160();
  sub_2EC4(&v4);
  return v2;
}

uint64_t sub_3038()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

uint64_t sub_3078(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 48);
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_30E0()
{
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_3168(&v4, v3);
  sub_23FC(&qword_644B0, &qword_51CD0);
  sub_50DF0();
  sub_3200(&v4);
  return v2;
}

uint64_t sub_3168(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_31C0();
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t *sub_3200(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_3238();
  return a1;
}

uint64_t sub_3278()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_32B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_50F10();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = sub_50E70();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

uint64_t sub_33E8()
{
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_31C0();
  return v3;
}

uint64_t sub_3428(uint64_t a1, char a2)
{
  sub_31C0();
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2 & 1;
  sub_3238();
  return sub_3238();
}

uint64_t sub_348C()
{

  sub_50CF0();
  sub_51130();

  return v1;
}

uint64_t sub_3504()
{
  v4 = *(v0 + 80);
  sub_357C(&v4, &v3);
  sub_23FC(&qword_644B8, &qword_51D08);
  sub_51140();
  sub_35D4(&v4);
  return v2;
}

void *sub_357C(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  v6 = a1[1];

  result = a2;
  a2[1] = v6;
  return result;
}

uint64_t *sub_35D4(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

uint64_t sub_360C()
{
  v5 = *(v0 + 80);
  sub_357C(&v5, &v4);
  sub_357C(&v5, &v3);
  v2 = v5;

  sub_23FC(&qword_644B8, &qword_51D08);
  sub_51150();
  sub_35D4(&v2);
  sub_35D4(&v5);
}

uint64_t sub_36E4()
{
  v4 = *(v0 + 80);
  sub_357C(&v4, &v3);
  sub_23FC(&qword_644B8, &qword_51D08);
  sub_51160();
  sub_35D4(&v4);
  return v2;
}

uint64_t sub_3774()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return v2;
}

uint64_t sub_37B4(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 80);
  v5 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_3870()
{
  v4 = *(v0 + 96);
  sub_38EC(&v4, v3);
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51140();
  sub_392C(&v4);
  return v2 & 1;
}

uint64_t sub_38EC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);

  result = a2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_392C(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_3958()
{
  v5 = *(v0 + 96);
  sub_38EC(&v5, v4);
  sub_38EC(&v5, v3);
  v2 = v5;
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51150();
  sub_392C(&v2);
  return sub_392C(&v5);
}

uint64_t sub_3A00()
{
  v4 = *(v0 + 96);
  sub_38EC(&v4, v3);
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51160();
  sub_392C(&v4);
  return v2;
}

uint64_t sub_3A94()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  return v2 & 1;
}

uint64_t sub_3AD0(char a1, uint64_t a2)
{

  v3 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_3B70()
{
  v4 = *(v0 + 112);
  sub_38EC(&v4, v3);
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51140();
  sub_392C(&v4);
  return v2 & 1;
}

uint64_t sub_3BEC()
{
  v5 = *(v0 + 112);
  sub_38EC(&v5, v4);
  sub_38EC(&v5, v3);
  v2 = v5;
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51150();
  sub_392C(&v2);
  return sub_392C(&v5);
}

uint64_t sub_3C94()
{
  v4 = *(v0 + 112);
  sub_38EC(&v4, v3);
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51160();
  sub_392C(&v4);
  return v2;
}

uint64_t sub_3D28()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  return v2 & 1;
}

uint64_t sub_3D64(char a1, uint64_t a2)
{

  v3 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

uint64_t sub_3E04()
{
  v4 = *(v0 + 128);
  sub_38EC(&v4, v3);
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51140();
  sub_392C(&v4);
  return v2 & 1;
}

uint64_t sub_3E80()
{
  v5 = *(v0 + 128);
  sub_38EC(&v5, v4);
  sub_38EC(&v5, v3);
  v2 = v5;
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51150();
  sub_392C(&v2);
  return sub_392C(&v5);
}

uint64_t sub_3F28()
{
  v4 = *(v0 + 128);
  sub_38EC(&v4, v3);
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51160();
  sub_392C(&v4);
  return v2;
}

uint64_t sub_3FBC()
{
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  return v2 & 1;
}

uint64_t sub_3FF8(char a1, uint64_t a2)
{

  v3 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

void *sub_4044@<X0>(void *a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  swift_getKeyPath();
  sub_50E00();
  __b[8] = v26;
  LOBYTE(__b[9]) = v27 & 1;
  sub_50CF0();
  sub_50CE0();
  __b[10] = sub_348C();
  __b[11] = v1;
  LOBYTE(__b[12]) = sub_381C() & 1;
  __b[13] = v2;
  LOBYTE(__b[14]) = sub_3B1C() & 1;
  __b[15] = v3;
  LOBYTE(__b[16]) = sub_3DB0() & 1;
  __b[17] = v4;
  sub_50D40();
  sub_50D30();
  sub_23FC(&qword_644C8, &qword_51D18);
  swift_dynamicCast();
  v7 = v25;
  v24 = v25;
  sub_50D70();
  sub_50D30();
  v23 = sub_50D50();
  sub_50C70();
  sub_50D10();
  v22 = sub_50C60();

  v19 = v23;
  sub_51130();
  __b[4] = v20;
  __b[5] = v21;

  v16 = v22;
  sub_51130();
  __b[6] = v17;
  __b[7] = v18;
  sub_50BC0();
  sub_50D20();

  v13 = sub_50B80();
  sub_51130();
  __b[0] = v14;
  __b[1] = v15;
  type metadata accessor for ReactiveMobilePreferencesManager();
  v5 = sub_50D00();
  v10 = ReactiveMobilePreferencesManager.__allocating_init(wrapping:)(v5);
  sub_51130();
  __b[2] = v11;
  __b[3] = v12;

  _objc_release(v7);
  memcpy(__dst, __b, sizeof(__dst));
  sub_4354(__dst, v9);
  sub_4530(__b);
  return memcpy(a1, __dst, 0x90uLL);
}

uint64_t sub_4354(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  *(a2 + 8) = v4;
  v5 = a1[2];

  *(a2 + 16) = v5;
  v6 = a1[3];

  *(a2 + 24) = v6;
  v7 = a1[4];

  *(a2 + 32) = v7;
  v8 = a1[5];

  *(a2 + 40) = v8;
  v9 = a1[6];

  *(a2 + 48) = v9;
  v10 = a1[7];

  *(a2 + 56) = v10;
  v11 = a1[8];
  v12 = *(a1 + 72);
  sub_31C0();
  *(a2 + 64) = v11;
  *(a2 + 72) = v12 & 1;
  v13 = a1[10];

  *(a2 + 80) = v13;
  v14 = a1[11];

  *(a2 + 88) = v14;
  *(a2 + 96) = *(a1 + 96);
  v15 = a1[13];

  *(a2 + 104) = v15;
  *(a2 + 112) = *(a1 + 112);
  v17 = a1[15];

  *(a2 + 120) = v17;
  *(a2 + 128) = *(a1 + 128);
  v19 = a1[17];

  result = a2;
  *(a2 + 136) = v19;
  return result;
}

uint64_t *sub_4530(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[3];

  v5 = a1[4];

  v6 = a1[5];

  v7 = a1[6];

  v8 = a1[7];

  v9 = a1[8];
  v10 = *(a1 + 72);
  sub_3238();
  v11 = a1[10];

  v12 = a1[11];

  v13 = a1[13];

  v14 = a1[15];

  v15 = a1[17];

  return a1;
}

uint64_t sub_4600@<X0>(uint64_t a1@<X8>)
{
  v128 = a1;
  v207 = 0;
  v252 = 0;
  v253 = *v1;
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v257 = v1[4];
  v256 = v4;
  v255 = v3;
  v254 = v2;
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v261 = v1[8];
  v260 = v7;
  v259 = v6;
  v258 = v5;
  v273 = v253;
  v277 = v257;
  v276 = v256;
  v275 = v255;
  v274 = v254;
  v281 = v261;
  v280 = v7;
  v279 = v6;
  v278 = v5;
  v129 = (*(*(sub_23FC(&qword_644D0, &qword_51D20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v130 = &v54 - v129;
  v8 = *(*(sub_50990() - 8) + 64);
  __chkstk_darwin(v207);
  v131 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_50960();
  v133 = *(v132 - 8);
  v134 = v133;
  v10 = *(v133 + 64);
  __chkstk_darwin(v207);
  v135 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_50910();
  v137 = *(v136 - 8);
  v138 = v137;
  v12 = *(v137 + 64);
  __chkstk_darwin(v207);
  v139 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(sub_512F0() - 8) + 64);
  __chkstk_darwin(v207);
  v140 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_50920();
  v142 = *(v141 - 8);
  v143 = v142;
  v16 = *(v142 + 64);
  __chkstk_darwin(v207);
  v144 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_51230();
  v146 = *(v145 - 8);
  v147 = v146;
  v18 = *(v146 + 64);
  __chkstk_darwin(v145 - 8);
  v148 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = sub_23FC(&qword_644D8, &qword_51D28);
  v150 = (*(*(v149 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v207);
  v151 = &v54 - v150;
  v152 = sub_51450();
  v153 = *(v152 - 8);
  v154 = v153;
  v20 = *(v153 + 64);
  __chkstk_darwin(v152 - 8);
  v155 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_23FC(&qword_644E0, &qword_51D30);
  v157 = (*(*(v156 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v156 - 8);
  v158 = &v54 - v157;
  v159 = sub_23FC(&qword_644E8, &qword_51D38);
  v160 = *(v159 - 8);
  v161 = v160;
  v162 = (*(v160 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v159 - 8);
  v206 = &v54 - v162;
  v163 = &v54 - v162;
  v164 = sub_23FC(&qword_644F0, &qword_51D40);
  v165 = (*(*(v164 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v164 - 8);
  v166 = &v54 - v165;
  v167 = sub_23FC(&qword_644F8, &qword_51D48);
  v168 = *(v167 - 8);
  v169 = v168;
  v170 = (*(v168 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v167 - 8);
  v171 = &v54 - v170;
  v172 = sub_23FC(&qword_64500, &qword_51D50);
  v173 = *(v172 - 8);
  v174 = v173;
  v175 = (*(v173 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v172 - 8);
  v176 = &v54 - v175;
  v177 = sub_23FC(&qword_64508, &qword_51D58);
  v178 = *(v177 - 8);
  v179 = v178;
  v180 = (*(v178 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v177 - 8);
  v181 = &v54 - v180;
  v182 = sub_23FC(&qword_64510, &qword_51D60);
  v183 = *(v182 - 8);
  v184 = v183;
  v185 = (*(v183 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v182 - 8);
  v186 = &v54 - v185;
  v187 = sub_23FC(&qword_64518, &qword_51D68);
  v188 = (*(*(v187 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v187 - 8);
  v189 = &v54 - v188;
  v190 = sub_23FC(&qword_64520, &qword_51D70);
  v191 = (*(*(v190 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v190 - 8);
  v192 = &v54 - v191;
  v193 = sub_23FC(&qword_64528, &qword_51D78);
  v194 = *(v193 - 8);
  v195 = v194;
  v196 = (*(v194 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v193 - 8);
  v197 = &v54 - v196;
  v198 = sub_23FC(&qword_64530, &qword_51D80);
  v199 = *(v198 - 8);
  v200 = v199;
  v202 = *(v199 + 64);
  __chkstk_darwin(v198 - 8);
  v204 = (v202 + 15) & 0xFFFFFFFFFFFFFFF0;
  v201 = &v54 - v204;
  __chkstk_darwin(&v54 - v204);
  v203 = &v54 - v204;
  __chkstk_darwin(&v54 - v204);
  v205 = &v54 - v204;
  v252 = &v54 - v204;
  v208 = sub_23FC(&qword_64538, &qword_51D88);
  sub_6298();
  sub_50A50();
  v22 = *(v1 + 8);
  v272 = *(v1 + 72);
  v271 = v22;
  v209 = &v271;
  sub_3168(&v271, &v251);
  v250 = v272;
  v249 = v271;
  sub_23FC(&qword_644B0, &qword_51CD0);
  sub_50DF0();
  v211 = v248;
  v210 = v248;
  sub_3200(v209);
  if (v211)
  {
    v126 = v210;
    v125 = v210;
    sub_50B00();

    v23 = sub_50970();
    (*(*(v23 - 8) + 56))(v158, 0, 1);
  }

  else
  {
    v50 = sub_50970();
    (*(*(v50 - 8) + 56))(v158, 1);
  }

  sub_4354(v127, &v247);
  v65 = 160;
  v66 = 7;
  v24 = swift_allocObject();
  v25 = v127;
  v62 = v24;
  v24[1] = *v127;
  v26 = *(v25 + 1);
  v27 = *(v25 + 2);
  v28 = *(v25 + 3);
  v24[5] = *(v25 + 4);
  v24[4] = v28;
  v24[3] = v27;
  v24[2] = v26;
  v29 = *(v25 + 5);
  v30 = *(v25 + 6);
  v31 = *(v25 + 7);
  v24[9] = *(v25 + 8);
  v24[8] = v31;
  v24[7] = v30;
  v24[6] = v29;
  v60 = sub_7C5C();
  v61 = sub_7CE4();
  sub_7C34();
  sub_510E0();
  (*(v154 + 8))(v155, v152);

  sub_7DFC(v158);
  (*(v161 + 8))(v163, v159);
  v270 = *(v127 + 5);
  v63 = &v270;
  sub_357C(&v270, &v246);
  v245 = v270;
  v99 = sub_23FC(&qword_644B8, &qword_51D08);
  sub_51140();
  v64 = v244[18];
  sub_35D4(v63);
  sub_50CC0();

  sub_4354(v127, v244);
  v32 = swift_allocObject();
  v33 = v127;
  v67 = v32;
  v32[1] = *v127;
  v34 = *(v33 + 1);
  v35 = *(v33 + 2);
  v36 = *(v33 + 3);
  v32[5] = *(v33 + 4);
  v32[4] = v36;
  v32[3] = v35;
  v32[2] = v34;
  v37 = *(v33 + 5);
  v38 = *(v33 + 6);
  v39 = *(v33 + 7);
  v32[9] = *(v33 + 8);
  v32[8] = v39;
  v32[7] = v38;
  v32[6] = v37;
  v69 = sub_8EFC();
  v70 = sub_902C();
  sub_8EE0();
  sub_51120();

  sub_9144(v151);
  sub_91EC(v166);
  v269 = *(v127 + 6);
  v68 = &v269;
  sub_38EC(&v269, &v243);
  v242 = v269;
  v88 = sub_23FC(&qword_644C0, &qword_51D10);
  sub_51160();
  v75 = v240[18];
  v76 = v240[19];
  v72 = v241;
  sub_392C(v68);
  sub_4354(v127, v240);
  v74 = &v54;
  v90 = 24;
  __chkstk_darwin(&v54);
  v73 = &v51;
  v78 = sub_23FC(&qword_64588, &qword_533C0);
  v239[4] = v164;
  v239[5] = v149;
  v239[6] = v69;
  v239[7] = v70;
  v124 = 1;
  v106 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = sub_6320(&qword_64590, &qword_51DB0);
  v40 = sub_9840();
  v239[2] = v71;
  v239[3] = v40;
  v82 = &opaque type descriptor for <<opaque return type of View.withSUUIEnvironmentContext(manager:reactivePlatform:reactiveAnalyticsReporter:)>>;
  v80 = swift_getOpaqueTypeConformance2();
  v53 = v80;
  sub_510D0();
  sub_4530(v127);

  (*(v169 + 8))(v171, v167);
  v268 = *(v127 + 7);
  v77 = &v268;
  sub_38EC(&v268, v239);
  v238 = v268;
  sub_51160();
  v86 = v236[18];
  v87 = v236[19];
  v83 = v237;
  sub_392C(v77);
  sub_4354(v127, v236);
  v85 = &v54;
  __chkstk_darwin(&v54);
  v84 = &v51;
  v91 = sub_23FC(&qword_645B8, &qword_51DC0);
  v235[4] = v167;
  v235[5] = v78;
  v235[6] = OpaqueTypeConformance2;
  v235[7] = v80;
  v105 = &opaque type descriptor for <<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>;
  v92 = swift_getOpaqueTypeConformance2();
  v81 = sub_6320(&qword_645C0, &qword_51DC8);
  v41 = sub_9F68();
  v235[2] = v81;
  v235[3] = v41;
  v93 = swift_getOpaqueTypeConformance2();
  v53 = v93;
  sub_510D0();
  sub_4530(v127);

  (*(v174 + 8))(v176, v172);
  v267 = *(v127 + 8);
  v89 = &v267;
  sub_38EC(&v267, v235);
  v234 = v267;
  sub_51160();
  v97 = v232[18];
  v98 = v232[19];
  v94 = v233;
  sub_392C(v89);
  sub_4354(v127, v232);
  v96 = &v54;
  __chkstk_darwin(&v54);
  v95 = &v51;
  v102 = sub_23FC(&qword_645D8, &qword_51DD0);
  v231[2] = v172;
  v231[3] = v91;
  v231[4] = v92;
  v231[5] = v93;
  v103 = swift_getOpaqueTypeConformance2();
  v104 = sub_A9B0();
  v53 = v104;
  sub_510D0();
  sub_4530(v127);

  (*(v179 + 8))(v181, v177);
  KeyPath = swift_getKeyPath();
  v266 = *(v127 + 5);
  v100 = &v266;
  sub_357C(&v266, v231);
  v230 = v266;
  sub_51140();
  v101 = v229[6];
  sub_35D4(v100);
  sub_50CC0();

  v229[2] = v177;
  v229[3] = v102;
  v229[4] = v103;
  v229[5] = v104;
  swift_getOpaqueTypeConformance2();
  sub_51090();
  sub_9144(v151);

  (*(v184 + 8))(v186, v182);
  v111 = swift_getKeyPath();
  v265 = *(v127 + 1);
  v108 = &v265;
  sub_2774(&v265, v229);
  v228 = v265;
  sub_23FC(&qword_64498, &qword_51CB8);
  sub_51140();
  v109 = v227[1];
  sub_27CC(v108);
  v227[0] = v109;
  sub_B710();
  v110 = v227;
  sub_51090();
  sub_2224(v110);

  sub_BA9C(v189);
  v264 = *(v127 + 2);
  v112 = &v264;
  sub_2AF0(&v264, &v226);
  v225 = v264;
  sub_23FC(&qword_644A0, &qword_51CC0);
  sub_51140();
  v118 = v224[2];
  sub_2B48(v112);
  v263 = *v127;
  v113 = &v263;
  sub_23A4(&v263, v224);
  v223 = v263;
  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51140();
  v117 = v222[2];
  sub_2468(v113);
  v262 = *(v127 + 3);
  v114 = &v262;
  sub_2E6C(&v262, v222);
  v221 = v262;
  sub_23FC(&qword_644A8, &qword_51CC8);
  sub_51140();
  v116 = v220;
  sub_2EC4(v114);
  v115 = sub_BBF0();
  sub_51000();

  sub_BC98(v192);
  v42 = sub_51350("com.apple.graphic-icon.software-update", 0x26uLL, v124);
  v43 = v147;
  v44 = v42;
  v45 = v148;
  *v148 = v44;
  v45[1] = v46;
  (*(v43 + 104))();
  sub_51350("Software Update", 0xFuLL, v124);
  sub_512E0();
  v119 = *sub_411D0();
  v47 = v119;
  v120 = [v119 bundleURL];
  sub_50940();
  (*(v134 + 32))(v139, v135, v132);

  (*(v138 + 104))(v139, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v136);
  sub_BE24();
  v121 = 0;
  v216 = 0;
  v217 = 0;
  v218 = 0;
  v219 = v124;
  sub_50930();

  v122 = sub_51650();
  sub_51350("settings-navigation://com.apple.Settings.General/SOFTWARE_UPDATE_LINK", 0x45uLL, v124);
  v123 = v48;
  sub_50950();

  if ((*(v134 + 48))(v130, v124, v132) == 1)
  {
    LODWORD(v53) = 0;
    v52 = 128;
    v51 = 2;
    sub_51610();
    __break(1u);
  }

  v214 = v190;
  v215 = v115;
  v56 = 1;
  v55 = swift_getOpaqueTypeConformance2();
  sub_51050();
  (*(v134 + 8))(v130, v132);

  (*(v143 + 8))(v144, v141);
  (*(v147 + 8))(v148, v145);
  (*(v195 + 8))(v197, v193);
  v212 = v193;
  v213 = v55;
  v57 = swift_getOpaqueTypeConformance2();
  sub_6394(v203, v198, v205);
  v59 = *(v200 + 8);
  v58 = v200 + 8;
  v59(v203, v198);
  (*(v200 + 16))(v201, v205, v198);
  sub_99E8(v201, v198, v128);
  v59(v201, v198);
  return (v59)(v205, v198);
}

uint64_t *sub_6018@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v32 = 0;
  v23 = __b;
  v8 = 80;
  memset(__b, 0, sizeof(__b));
  v19 = sub_50C50();
  v10 = *(v19 - 8);
  v11 = v19 - 8;
  v4 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v17 = &v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v4);
  v22 = &v3 - v5;
  v32 = &v3 - v5;
  v6 = v30;
  AutomaticUpdatesNavigationLink.init()(v30);
  v7 = __dst;
  memcpy(__dst, v6, v8);
  v9 = v29;
  memcpy(v29, v7, v8);
  v13 = sub_18228();
  v12 = &type metadata for AutomaticUpdatesNavigationLink;
  sub_6394(v9, &type metadata for AutomaticUpdatesNavigationLink, v23);
  sub_182A0(v9);
  sub_50C40();
  v14 = sub_182FC();
  sub_6394(v17, v19, v22);
  v21 = *(v10 + 8);
  v20 = v10 + 8;
  v21(v17, v19);
  v18 = v27;
  sub_1837C(v23, v27);
  v16 = v28;
  v28[0] = v18;
  (*(v10 + 16))(v17, v22, v19);
  v28[1] = v17;
  v26[0] = v12;
  v26[1] = v19;
  v24 = v13;
  v25 = v14;
  sub_63F8(v16, 2uLL, v26, v15);
  v21(v17, v19);
  sub_182A0(v18);
  v21(v22, v19);
  return sub_182A0(v23);
}

unint64_t sub_6298()
{
  v2 = qword_64540;
  if (!qword_64540)
  {
    sub_6320(&qword_64538, &qword_51D88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64540);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_6320(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t *sub_63F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v27 = a4;
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    v23 = 0;
  }

  else
  {
    v19 = &v9;
    __chkstk_darwin(&v9);
    v20 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v18 = i;
      if (i >= v25)
      {
        break;
      }

      v5 = v18;
      *&v20[8 * v18] = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v23 = v6;
  }

  v14 = TupleTypeMetadata;
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v15 = &v9;
  __chkstk_darwin(&v9);
  v17 = &v9 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (j = 0; ; j = v9)
    {
      v11 = j;
      v12 = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v10 = v25 == 1 ? 0 : *(v14 + 16 * v11 + 32);
      (*(*(v12 - 8) + 16))(&v17[v10], *(v26 + 8 * v11));
      v9 = v11 + 1;
      if (v11 + 1 == v25)
      {
        break;
      }
    }
  }

  sub_511F0();
  return v15;
}

uint64_t sub_6654(uint64_t a1)
{
  v1[12] = a1;
  v1[8] = v1;
  v1[9] = 0;
  v1[11] = 0;
  v1[9] = a1;
  sub_51410();
  v1[13] = sub_51400();
  v5 = sub_513F0();
  v1[14] = v5;
  v1[15] = v2;
  v3 = v1[8];

  return _swift_task_switch(sub_6714, v5, v2);
}

uint64_t sub_6714()
{
  v1 = *(v0 + 96);
  *(v0 + 64) = v0;
  *(v0 + 16) = *(v1 + 64);
  *(v0 + 24) = *(v1 + 72);
  sub_3168((v0 + 16), v0 + 32);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 56) = *(v0 + 24);
  sub_23FC(&qword_644B0, &qword_51CD0);
  sub_50DF0();
  v9 = *(v0 + 80);
  *(v0 + 128) = v9;
  sub_3200((v0 + 16));
  if (v9)
  {
    v8[11] = v9;
    v2 = swift_task_alloc();
    v8[17] = v2;
    *v2 = v8[8];
    v2[1] = sub_68C4;
    v3 = v8[12];

    return sub_6E24(v9);
  }

  else
  {
    v5 = v8[13];

    v6 = *(v8[8] + 8);
    v7 = v8[8];

    return v6();
  }
}

uint64_t sub_68C4()
{
  v9 = *v1;
  v2 = *(*v1 + 136);
  v9[8] = *v1;
  v10 = v9 + 8;
  v9[18] = v0;

  if (v0)
  {
    v7 = *v10;
    v4 = v9[15];
    v5 = v9[14];
    v6 = sub_6AE8;
  }

  else
  {
    v3 = *v10;
    v4 = v9[15];
    v5 = v9[14];
    v6 = sub_6A3C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_6A3C()
{
  v0[8] = v0;
  v1 = v0[16];

  v2 = v0[13];

  v3 = *(v0[8] + 8);
  v4 = v0[8];

  return v3();
}

uint64_t sub_6AE8()
{
  v1 = v0[18];
  v0[8] = v0;

  v2 = v0[16];

  v3 = v0[13];

  v4 = *(v0[8] + 8);
  v5 = v0[8];

  return v4();
}

uint64_t sub_6B9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  v8 = *(v0 + 72);

  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  sub_3238();
  v11 = *(v0 + 96);

  v12 = *(v0 + 104);

  v13 = *(v0 + 120);

  v14 = *(v0 + 136);

  v15 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_6C4C()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_6CFC;

  return sub_6654(v0 + 16);
}

uint64_t sub_6CFC()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_6E24(uint64_t a1)
{
  v2[42] = v1;
  v2[41] = a1;
  v2[38] = v2;
  v2[39] = 0;
  v2[40] = 0;
  v3 = *(*(sub_23FC(&qword_64640, &qword_52260) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v4 = sub_50DB0();
  v2[44] = v4;
  v9 = *(v4 - 8);
  v2[45] = v9;
  v5 = *(v9 + 64) + 15;
  v2[46] = swift_task_alloc();
  v2[39] = a1;
  v2[40] = v1;
  sub_51410();
  v2[47] = sub_51400();
  v11 = sub_513F0();
  v7 = v2[38];

  return _swift_task_switch(sub_6FAC, v11, v6);
}

uint64_t sub_6FAC()
{
  v43 = v0;
  v1 = v0[46];
  __src = v0[42];
  v24 = v0[41];
  v0[38] = v0;
  sub_50D90();
  sub_4354(__src, (v0 + 2));
  v20 = swift_allocObject();
  memcpy((v20 + 16), __src, 0x90uLL);

  v36 = sub_50DA0();
  v37 = sub_51480();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_FEFC;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_145F8;
  *(v22 + 24) = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_14644;
  *(v28 + 24) = v22;
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_FF04;
  *(v23 + 24) = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_14744;
  *(v31 + 24) = v23;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_FF58;
  *(v25 + 24) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_14844;
  *(v34 + 24) = v25;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v35 = v2;

  *v35 = sub_1457C;
  v35[1] = v26;

  v35[2] = sub_145B0;
  v35[3] = v27;

  v35[4] = sub_14690;
  v35[5] = v28;

  v35[6] = sub_146C8;
  v35[7] = v29;

  v35[8] = sub_146FC;
  v35[9] = v30;

  v35[10] = sub_14790;
  v35[11] = v31;

  v35[12] = sub_147C8;
  v35[13] = v32;

  v35[14] = sub_147FC;
  v35[15] = v33;

  v35[16] = sub_14890;
  v35[17] = v34;
  sub_1489C();

  if (os_log_type_enabled(v36, v37))
  {
    buf = sub_514F0();
    sub_23FC(&qword_64650, &unk_53930);
    v16 = sub_121D4(0);
    v17 = sub_121D4(3);
    v38 = buf;
    v39 = v16;
    v40 = v17;
    sub_12228(2, &v38);
    sub_12228(3, &v38);
    v41 = sub_1457C;
    v42 = v26;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_145B0;
    v42 = v27;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_14690;
    v42 = v28;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_146C8;
    v42 = v29;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_146FC;
    v42 = v30;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_14790;
    v42 = v31;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_147C8;
    v42 = v32;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_147FC;
    v42 = v33;
    sub_1223C(&v41, &v38, &v39, &v40);
    v41 = sub_14890;
    v42 = v34;
    sub_1223C(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_0, v36, v37, "%s.%s: Resolving deep link request: %s", buf, 0x20u);
    sub_12288(v16);
    sub_12288(v17);
    sub_514D0();
  }

  else
  {
  }

  v12 = v18[47];
  v13 = v18[46];
  v8 = v18[44];
  v14 = v18[43];
  v9 = v18[42];
  v10 = v18[41];
  v7 = v18[45];
  _objc_release(v36);
  (*(v7 + 8))(v13, v8);
  sub_51420();
  v3 = sub_51450();
  (*(*(v3 - 8) + 56))(v14, 0, 1);
  sub_4354(v9, (v18 + 20));

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  memcpy(v11 + 4, v9, 0x90uLL);
  v11[22] = v10;
  sub_11A30(0, 0, v14, &unk_51E70, v11, &type metadata for () + 8);
  sub_14BA4(v14);

  v4 = *(v18[38] + 8);
  v5 = v18[38];

  return v4();
}

unint64_t sub_7C5C()
{
  v2 = qword_64548;
  if (!qword_64548)
  {
    sub_6320(&qword_644E8, &qword_51D38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_7CE4()
{
  v2 = qword_64550;
  if (!qword_64550)
  {
    sub_6320(&qword_644E0, &qword_51D30);
    sub_7D7C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_7D7C()
{
  v2 = qword_64558;
  if (!qword_64558)
  {
    sub_50970();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64558);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_7DFC(uint64_t a1)
{
  v3 = sub_50970();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_7EA4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v80 = v103;
  v81 = a3;
  v82 = a2;
  v90 = a1;
  v92 = 0;
  memset(&v110[1], 0, 48);
  v67 = 0;
  v107 = 0;
  v106 = 0;
  v68 = sub_50DB0();
  v69 = *(v68 - 8);
  v70 = v69;
  v3 = *(v69 + 64);
  __chkstk_darwin(0);
  v71 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_50A70();
  v73 = *(v72 - 8);
  v74 = v73;
  v5 = *(v73 + 64);
  __chkstk_darwin(v72 - 8);
  v75 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v80 + 19) = v75;
  v76 = *(*(sub_23FC(&qword_644D8, &qword_51D28) - 8) + 64);
  v7 = __chkstk_darwin(v92);
  v78 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = &v28 - v78;
  __chkstk_darwin(v7);
  v93 = &v28 - v78;
  v79 = &v28 - v78;
  v83 = sub_50C20();
  v84 = *(v83 - 8);
  v85 = v84;
  v87 = *(v84 + 64);
  v8 = __chkstk_darwin(v82);
  v89 = (v87 + 15) & 0xFFFFFFFFFFFFFFF0;
  v86 = &v28 - v89;
  v9 = __chkstk_darwin(v8);
  v88 = &v28 - v89;
  *(v10 + 144) = &v28 - v89;
  v11 = __chkstk_darwin(v9);
  v91 = &v28 - v89;
  v12[17] = v90;
  v12[16] = v11;
  v12[15] = v13;
  sub_174D4(v11, v14);
  v94 = sub_50B30();
  v95 = *(v94 - 8);
  if ((*(v95 + 48))(v93, 1))
  {
    goto LABEL_24;
  }

  sub_174D4(v79, v77);
  v66 = (*(v95 + 88))(v77, v94);
  if (v66 == enum case for DeepLinkResponse.navigate(_:))
  {
    (*(v95 + 96))(v77, v94);
    v15 = sub_23FC(&qword_646A8, &unk_52178);
    v65 = *&v77[*(v15 + 48)];
    (*(v85 + 32))(v88);
    (*(v85 + 16))(v91, v88, v83);
    (*(v85 + 8))(v88, v83);

    sub_9144(v79);
    goto LABEL_8;
  }

  if (v66 != enum case for DeepLinkResponse.perform(_:))
  {
    if (v66 != enum case for DeepLinkResponse.navigateAndPerform(_:))
    {
      (*(v95 + 8))(v77, v94);
LABEL_24:
      sub_9144(v79);
      return v67;
    }

    (*(v95 + 96))(v77, v94);
    v16 = sub_23FC(&qword_64660, ":)");
    v63 = &v77[*(v16 + 48)];
    v64 = *&v77[*(v16 + 64)];
    *(v80 + 18) = v88;
    (*(v85 + 32))(v88, v77, v83);
    (*(v85 + 16))(v91, v88, v83);
    (*(v85 + 8))(v88, v83);

    (*(v74 + 8))(v63, v72);
    sub_9144(v79);
LABEL_8:
    v17 = v86;
    v18 = v85;
    *(v80 + 7) = v91;
    (*(v18 + 16))(v17);
    v62 = (*(v85 + 88))(v86, v83);
    if (v62 == enum case for DeepLinkDestination.automaticUpdates(_:))
    {
      *(v80 + 10) = v81[6];
      v61 = v111;
      sub_38EC(v111, v99);
      sub_38EC(v61, &v98);
      v97 = *(v80 + 10);
      v96 = 1;
      sub_23FC(&qword_644C0, &qword_51D10);
      v60 = &v97;
      sub_51150();
      sub_392C(v60);
      sub_392C(v61);
    }

    else if (v62 == enum case for DeepLinkDestination.betaUpdates(_:))
    {
      *(v80 + 11) = v81[7];
      v59 = v112;
      sub_38EC(v112, v102);
      sub_38EC(v59, &v101);
      v100 = *(v80 + 11);
      v99[23] = 1;
      sub_23FC(&qword_644C0, &qword_51D10);
      v58 = &v100;
      sub_51150();
      sub_392C(v58);
      sub_392C(v59);
    }

    else if (v62 == enum case for DeepLinkDestination.alsoAvailable(_:))
    {
      *(v80 + 12) = v81[8];
      v57 = v113;
      sub_38EC(v113, v105);
      sub_38EC(v57, v104);
      *v80 = *(v80 + 12);
      v102[23] = 1;
      sub_23FC(&qword_644C0, &qword_51D10);
      v56 = v103;
      sub_51150();
      sub_392C(v56);
      sub_392C(v57);
    }

    else
    {
      sub_51660();
      __break(1u);
    }

    (*(v85 + 8))(v91, v83);
    return v67;
  }

  (*(v95 + 96))(v77, v94);
  v19 = sub_23FC(&qword_64690, &qword_52168);
  v53 = *&v77[*(v19 + 48)];
  v20 = v53;
  (*(v74 + 32))(v75);
  v21 = v80;
  *(v80 + 19) = v75;
  *(v21 + 14) = v20;
  v54 = sub_50AA0();
  v55 = sub_50BB0();
  if (v55)
  {
    v52 = v55;
    v46 = v55;
    *(v80 + 8) = v55;

    sub_8B3C(v53, v46, v75);

    (*(v74 + 8))(v75, v72);
    sub_9144(v79);
    return v67;
  }

  sub_50D90();
  v50 = sub_50DA0();
  v47 = v50;
  v49 = sub_514A0();
  v48 = v49;
  sub_23FC(&qword_64648, &qword_51E60);
  v51 = sub_51650();
  if (os_log_type_enabled(v50, v49))
  {
    v22 = v67;
    v37 = sub_514F0();
    v33 = v37;
    v34 = sub_23FC(&qword_64650, &unk_53930);
    v35 = 0;
    v38 = sub_121D4(0);
    v36 = v38;
    v23 = sub_121D4(v35);
    v24 = v38;
    v25 = v80;
    v39 = v23;
    *(v80 + 13) = v37;
    *(v25 + 12) = v24;
    *(v25 + 11) = v23;
    v40 = 0;
    v41 = v110;
    sub_12228(0, v110);
    sub_12228(v40, v41);
    *(v80 + 10) = v51;
    v42 = &v28;
    __chkstk_darwin(&v28);
    v43 = &v28 - 6;
    *(&v28 - 4) = v26;
    *(&v28 - 3) = &v109;
    *(&v28 - 2) = &v108;
    v44 = sub_23FC(&qword_64698, &qword_52170);
    sub_181A0();
    sub_513C0();
    v45 = v22;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v47, v48, "Attempted to perform an update action without a preferred descriptor.", v33, 2u);
      v31 = 0;
      sub_12288(v36);
      sub_12288(v39);
      sub_514D0();

      v32 = v45;
    }
  }

  else
  {

    v32 = v67;
  }

  v29 = v32;

  (*(v70 + 8))(v71, v68);

  (*(v74 + 8))(v75, v72);
  sub_9144(v79);
  return v29;
}

uint64_t sub_8A84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  v8 = *(v0 + 72);

  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  sub_3238();
  v11 = *(v0 + 96);

  v12 = *(v0 + 104);

  v13 = *(v0 + 120);

  v14 = *(v0 + 136);

  v15 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_8B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v25 = a2;
  v22 = a3;
  v37 = &unk_51E88;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v36 = 0;
  v30 = sub_50A70();
  v26 = *(v30 - 8);
  v27 = v30 - 8;
  v23 = v26;
  v24 = *(v26 + 64);
  v20 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v29 = &v19 - v20;
  v21 = (*(*(sub_23FC(&qword_64640, &qword_52260) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v39 = &v19 - v21;
  v45 = v4;
  v44 = v5;
  v43 = v6;
  v42 = v3;
  v7 = sub_51450();
  (*(*(v7 - 8) + 56))(v39, 1);

  (*(v26 + 16))(v29, v22, v30);

  sub_4354(v34, v41);
  v28 = (*(v23 + 80) + 40) & ~*(v23 + 80);
  v32 = (v28 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = 144;
  v8 = swift_allocObject();
  v9 = v25;
  v10 = v26;
  v11 = v28;
  v12 = v29;
  v13 = v30;
  v38 = v8;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v9;
  (*(v10 + 32))(v8 + v11, v12, v13);
  v14 = v33;
  v15 = v34;
  v16 = v35;
  v17 = v38;
  *(v38 + v32) = v31;
  memcpy((v17 + v14), v15, v16);
  v40 = sub_F350(v36, v36, v39, v37, v38, &type metadata for () + 8);
  sub_14BA4(v39);
}

unint64_t sub_8EFC()
{
  v2 = qword_64560;
  if (!qword_64560)
  {
    sub_6320(&qword_644F0, &qword_51D40);
    sub_7C5C();
    sub_8FA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64560);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8FA4()
{
  v2 = qword_64568;
  if (!qword_64568)
  {
    sub_6320(&qword_64570, &unk_51DA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_902C()
{
  v2 = qword_64578;
  if (!qword_64578)
  {
    sub_6320(&qword_644D8, &qword_51D28);
    sub_90C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64578);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_90C4()
{
  v2 = qword_64580;
  if (!qword_64580)
  {
    sub_50B30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64580);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_9144(uint64_t a1)
{
  v3 = sub_50B30();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_91EC(uint64_t a1)
{
  v1 = sub_23FC(&qword_644E8, &qword_51D38);
  (*(*(v1 - 8) + 8))(a1);
  v6 = *(sub_23FC(&qword_644F0, &qword_51D40) + 36);
  v2 = *(a1 + v6 + 8);

  v8 = sub_23FC(&qword_64570, &unk_51DA0);
  v7 = *(v8 + 36);
  v3 = sub_51450();
  (*(*(v3 - 8) + 8))(a1 + v6 + v7);
  v9 = *(v8 + 40);
  v10 = sub_50970();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(a1 + v6 + v9, 1))
  {
    (*(v11 + 8))(a1 + v6 + v9, v10);
  }

  return a1;
}

uint64_t sub_9394@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = &v55;
  v37 = a2;
  v25 = a1;
  v34 = &opaque type descriptor for <<opaque return type of View.withSUUIEnvironmentContext(manager:reactivePlatform:reactiveAnalyticsReporter:)>>;
  v61 = 0;
  v60 = 0;
  v41 = sub_23FC(&qword_64588, &qword_533C0);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v10 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v25);
  v39 = &v10 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v40 = &v10 - v11;
  v61 = &v10 - v11;
  v60 = v4;
  v12 = v58;
  sub_359C4(v58);
  v13 = __dst;
  v14 = 64;
  memcpy(__dst, v12, sizeof(__dst));
  v19 = v57;
  memcpy(v57, __dst, sizeof(v57));
  KeyPath = swift_getKeyPath();
  v5 = v25[1];
  v15 = v65;
  *(v26 + 19) = v5;
  sub_2774(v65, &v56);
  *v26 = *(v26 + 19);
  sub_23FC(&qword_64498, &qword_51CB8);
  sub_51140();
  v16 = v54[1];
  sub_27CC(v15);
  v17 = v54;
  v54[0] = v16;
  sub_98E8();
  v20 = &v59;
  sub_51090();
  sub_2224(v17);

  sub_180B8(v19);
  v21 = v67;
  v22 = 80;
  memcpy(v67, v20, sizeof(v67));
  v31 = v53;
  memcpy(v53, v67, sizeof(v53));
  v6 = *v25;
  v23 = v64;
  *(v26 + 18) = v6;
  sub_23A4(v64, &v52);
  v51 = *(v26 + 18);
  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51140();
  v30 = v50[2];
  sub_2468(v23);
  v7 = v25[2];
  v24 = v63;
  *(v26 + 17) = v7;
  sub_2AF0(v63, v50);
  v49 = *(v26 + 17);
  sub_23FC(&qword_644A0, &qword_51CC0);
  sub_51140();
  v29 = v48[2];
  sub_2B48(v24);
  v8 = v25[3];
  v27 = v62;
  *(v26 + 16) = v8;
  sub_2E6C(v62, v48);
  v47 = *(v26 + 16);
  sub_23FC(&qword_644A8, &qword_51CC8);
  sub_51140();
  v28 = v46;
  sub_2EC4(v27);
  v32 = sub_23FC(&qword_64590, &qword_51DB0);
  v33 = sub_9840();
  sub_51030();

  sub_18108(v31);
  v44 = v32;
  v45 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_6394(v39, v41, v40);
  v43 = *(v35 + 8);
  v42 = v35 + 8;
  v43(v39, v41);
  (*(v35 + 16))(v39, v40, v41);
  sub_99E8(v39, v41, v37);
  v43(v39, v41);
  return (v43)(v40, v41);
}

unint64_t sub_9840()
{
  v2 = qword_64598;
  if (!qword_64598)
  {
    sub_6320(&qword_64590, &qword_51DB0);
    sub_98E8();
    sub_9960();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_98E8()
{
  v2 = qword_645A0;
  if (!qword_645A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_645A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_9960()
{
  v2 = qword_645A8;
  if (!qword_645A8)
  {
    sub_6320(&qword_645B0, &qword_51DB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_645A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_9A4C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = &v53;
  v36 = a2;
  v24 = a1;
  v33 = &opaque type descriptor for <<opaque return type of View.withSUUIEnvironmentContext(manager:reactivePlatform:reactiveAnalyticsReporter:)>>;
  v56 = 0;
  v55 = 0;
  v21 = sub_50A90();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v9 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v20 = &v9 - v9;
  v31 = sub_23FC(&qword_645C0, &qword_51DC8);
  v10 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v30 = &v9 - v10;
  v40 = sub_23FC(&qword_645B8, &qword_51DC0);
  v34 = *(v40 - 8);
  v35 = v40 - 8;
  v12 = *(v34 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v24);
  v38 = &v9 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v39 = &v9 - v13;
  v56 = &v9 - v13;
  v55 = v3;
  sub_50A80();
  KeyPath = swift_getKeyPath();
  v4 = v24[1];
  v14 = v60;
  *(v25 + 6) = v4;
  sub_2774(v60, &v54);
  *v25 = *(v25 + 6);
  sub_23FC(&qword_64498, &qword_51CB8);
  sub_51140();
  v15 = v52[1];
  sub_27CC(v14);
  v16 = v52;
  v52[0] = v15;
  sub_A010();
  sub_51090();
  sub_2224(v16);

  (*(v18 + 8))(v20, v21);
  v5 = *v24;
  v22 = v59;
  *(v25 + 5) = v5;
  sub_23A4(v59, &v51);
  v50 = *(v25 + 5);
  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51140();
  v29 = v49[2];
  sub_2468(v22);
  v6 = v24[2];
  v23 = v58;
  *(v25 + 4) = v6;
  sub_2AF0(v58, v49);
  v48 = *(v25 + 4);
  sub_23FC(&qword_644A0, &qword_51CC0);
  sub_51140();
  v28 = v47[2];
  sub_2B48(v23);
  v7 = v24[3];
  v26 = v57;
  *(v25 + 3) = v7;
  sub_2E6C(v57, v47);
  v46 = *(v25 + 3);
  sub_23FC(&qword_644A8, &qword_51CC8);
  sub_51140();
  v27 = v45;
  sub_2EC4(v26);
  v32 = sub_9F68();
  sub_51030();

  sub_18020(v30);
  v43 = v31;
  v44 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_6394(v38, v40, v39);
  v42 = *(v34 + 8);
  v41 = v34 + 8;
  v42(v38, v40);
  (*(v34 + 16))(v38, v39, v40);
  sub_99E8(v38, v40, v36);
  v42(v38, v40);
  return (v42)(v39, v40);
}

unint64_t sub_9F68()
{
  v2 = qword_645C8;
  if (!qword_645C8)
  {
    sub_6320(&qword_645C0, &qword_51DC8);
    sub_A010();
    sub_9960();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_645C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_A010()
{
  v2 = qword_645D0;
  if (!qword_645D0)
  {
    sub_50A90();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_645D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_A090@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = &v60;
  v27 = a2;
  v35 = a1;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v50 = 0;
  v49 = 0;
  v28 = sub_23FC(&qword_64600, &qword_51DE0);
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v30 = &v12 - v29;
  v31 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v12 - v29);
  v32 = &v12 - v31;
  v33 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v12 - v31);
  v34 = &v12 - v33;
  v64 = &v12 - v33;
  v36 = sub_23FC(&qword_645D8, &qword_51DD0);
  v40 = *(*(v36 - 8) + 64);
  v37 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v35);
  v38 = &v12 - v37;
  v39 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v4);
  v41 = &v12 - v39;
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v5);
  v43 = &v12 - v42;
  v63 = &v12 - v42;
  v62 = v6;
  v7 = *v6;
  v46 = &v67;
  *(v8 + 96) = v7;
  sub_23A4(&v67, &v61);
  *v44 = *(v44 + 6);
  v45 = sub_23FC(&qword_64490, &qword_51CB0);
  sub_51140();
  v47 = v59[2];
  sub_2468(v46);
  v48 = sub_50B50();

  if (v48)
  {
    v9 = *v35;
    v24 = &v66;
    *(v44 + 5) = v9;
    sub_23A4(&v66, &v53);
    v52 = *(v44 + 5);
    sub_51140();
    v25 = v51;
    sub_2468(v24);
    v26 = sub_50BB0();
    if (v26)
    {
      v23 = v26;
      v21 = v26;
      v50 = v26;

      sub_AD04(v21, v32);
      v22 = sub_AAE8();
      sub_6394(v32, v28, v34);
      sub_15258(v32);
      v49 = v32;
      sub_15338(v34, v30);
      sub_99E8(v30, v28, v32);
      sub_15258(v30);
      sub_15338(v32, v30);
      sub_B2D4(v30, v28, v28, v22, v22, v38);
      sub_15258(v30);
      v20 = sub_23FC(&qword_645F0, &qword_51DD8);
      (*(*(v20 - 8) + 56))(v38, 0, 1);
      sub_AA48();
      sub_B3CC(v38, v20, v41);
      sub_17724(v38);
      sub_17918(v41, v43);
      sub_15258(v32);
      sub_15258(v34);

      goto LABEL_8;
    }
  }

  v10 = *v35;
  v17 = &v65;
  *(v44 + 4) = v10;
  sub_23A4(&v65, v59);
  v58 = *(v44 + 4);
  sub_51140();
  v18 = v57;
  sub_2468(v17);
  v19 = sub_50BA0();
  if (v19)
  {
    v16 = v19;
    v14 = v19;
    v56 = v19;

    v55 = v34;
    sub_AD04(v14, v32);
    v13 = sub_AAE8();
    sub_6394(v32, v28, v34);
    sub_15258(v32);
    v54 = v32;
    sub_15338(v34, v30);
    sub_99E8(v30, v28, v32);
    sub_15258(v30);
    sub_15338(v32, v30);
    sub_B418(v30, v28, v28, v13, v13, v38);
    sub_15258(v30);
    v12 = sub_23FC(&qword_645F0, &qword_51DD8);
    (*(*(v12 - 8) + 56))(v38, 0, 1);
    sub_AA48();
    sub_B3CC(v38, v12, v41);
    sub_17724(v38);
    sub_17918(v41, v43);
    sub_15258(v32);
    sub_15258(v34);
  }

  else
  {

    v15 = sub_23FC(&qword_645F0, &qword_51DD8);
    (*(*(v15 - 8) + 56))(v38, 1);
    sub_AA48();
    sub_B3CC(v38, v15, v41);
    sub_17724(v38);
    sub_17918(v41, v43);
  }

LABEL_8:
  sub_17B78(v43, v41);
  sub_A9B0();
  sub_99E8(v41, v36, v27);
  sub_17724(v41);
  return sub_17724(v43);
}

unint64_t sub_A9B0()
{
  v2 = qword_645E0;
  if (!qword_645E0)
  {
    sub_6320(&qword_645D8, &qword_51DD0);
    sub_AA48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_645E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_AA48()
{
  v2 = qword_645E8;
  if (!qword_645E8)
  {
    sub_6320(&qword_645F0, &qword_51DD8);
    sub_AAE8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_645E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_AAE8()
{
  v2 = qword_645F8;
  if (!qword_645F8)
  {
    sub_6320(&qword_64600, &qword_51DE0);
    sub_6320(&qword_64608, &qword_51DE8);
    sub_ABDC();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_645F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_ABDC()
{
  v2 = qword_64610;
  if (!qword_64610)
  {
    sub_6320(&qword_64608, &qword_51DE8);
    sub_AC84();
    sub_9960();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64610);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_AC84()
{
  v2 = qword_64618;
  if (!qword_64618)
  {
    sub_50A20();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64618);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_AD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = &v58;
  v50 = a2;
  v40 = a1;
  v43 = &opaque type descriptor for <<opaque return type of View.withSUUIEnvironmentContext(manager:reactivePlatform:reactiveAnalyticsReporter:)>>;
  v44 = sub_15218;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v29 = sub_50A20();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v17 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v28 = &v17 - v17;
  v41 = sub_23FC(&qword_64608, &qword_51DE8);
  v18 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v37 = &v17 - v18;
  v49 = sub_23FC(&qword_64658, &unk_51E90);
  v46 = *(v49 - 8);
  v47 = v49 - 8;
  v19 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v48 = &v17 - v19;
  v51 = sub_23FC(&qword_64600, &qword_51DE0);
  v20 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v40);
  v53 = &v17 - v20;
  v21 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v54 = &v17 - v21;
  v66 = &v17 - v21;
  v65 = v5;
  v64 = v2;

  sub_50A10();
  KeyPath = swift_getKeyPath();
  v6 = *(v2 + 16);
  v22 = v70;
  *(v32 + 16) = v6;
  sub_2774(v70, &v63);
  *(v32 + 9) = *(v32 + 16);
  sub_23FC(&qword_64498, &qword_51CB8);
  sub_51140();
  v23 = v62[1];
  sub_27CC(v22);
  v24 = v62;
  v62[0] = v23;
  sub_AC84();
  sub_51090();
  v7 = v38;
  sub_2224(v24);

  (*(v26 + 8))(v28, v29);
  v8 = *v7;
  v30 = v69;
  *(v32 + 15) = v8;
  sub_23A4(v69, &v61);
  *(v32 + 6) = *(v32 + 15);
  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51140();
  v9 = v38;
  v36 = v60[2];
  sub_2468(v30);
  v10 = *(v9 + 2);
  v31 = v68;
  *(v32 + 14) = v10;
  sub_2AF0(v68, v60);
  *(v32 + 3) = *(v32 + 14);
  sub_23FC(&qword_644A0, &qword_51CC0);
  sub_51140();
  v11 = v38;
  v35 = v59[2];
  sub_2B48(v31);
  v12 = *(v11 + 3);
  v33 = v67;
  *(v32 + 13) = v12;
  sub_2E6C(v67, v59);
  *v32 = *(v32 + 13);
  sub_23FC(&qword_644A8, &qword_51CC8);
  sub_51140();
  v34 = v57[18];
  sub_2EC4(v33);
  v42 = sub_ABDC();
  sub_51030();

  sub_150C8(v37);
  sub_4354(v38, v57);

  v39 = swift_allocObject();
  memcpy((v39 + 16), v38, 0x90uLL);
  v13 = v39;
  v14 = v41;
  v15 = v42;
  *(v39 + 160) = v40;
  v45 = v13;
  v55 = v14;
  v56 = v15;
  swift_getOpaqueTypeConformance2();
  sub_51110();
  sub_15224(v44);
  (*(v46 + 8))(v48, v49);
  v52 = sub_AAE8();
  sub_6394(v53, v51, v54);
  sub_15258(v53);
  sub_15338(v54, v53);
  sub_99E8(v53, v51, v50);
  sub_15258(v53);
  return sub_15258(v54);
}

uint64_t sub_B2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_50F80();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_50F90();
}

uint64_t sub_B418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a6;
  v8[1] = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v18 = a2;
  v17 = a3;
  v10 = sub_50F80();
  v9 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v12 = v8 - v9;
  (*(*(v6 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return sub_50F90();
}

uint64_t sub_B510@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = sub_23FC(&qword_644D8, &qword_51D28);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v8 = &v4 - v5;
  v12 = sub_50F10();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v13 = &v4 - v7;
  (*(v10 + 16))(&v4 - v7);
  sub_50EB0();
  sub_175FC(v8, v9);
  return (*(v10 + 8))(v13, v12);
}

uint64_t sub_B670(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(sub_23FC(&qword_644D8, &qword_51D28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v4);
  v6 = &v3 - v5;
  sub_174D4(v1, &v3 - v5);
  return sub_50EC0();
}

unint64_t sub_B710()
{
  v2 = qword_64620;
  if (!qword_64620)
  {
    sub_6320(&qword_64518, &qword_51D68);
    sub_6320(&qword_64508, &qword_51D58);
    sub_6320(&qword_645D8, &qword_51DD0);
    sub_6320(&qword_64500, &qword_51D50);
    sub_6320(&qword_645B8, &qword_51DC0);
    sub_6320(&qword_644F8, &qword_51D48);
    sub_6320(&qword_64588, &qword_533C0);
    sub_6320(&qword_644F0, &qword_51D40);
    sub_6320(&qword_644D8, &qword_51D28);
    sub_8EFC();
    sub_902C();
    swift_getOpaqueTypeConformance2();
    sub_6320(&qword_64590, &qword_51DB0);
    sub_9840();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_6320(&qword_645C0, &qword_51DC8);
    sub_9F68();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_A9B0();
    swift_getOpaqueTypeConformance2();
    sub_BA14();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64620);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_BA14()
{
  v2 = qword_64628;
  if (!qword_64628)
  {
    sub_6320(&qword_64630, &qword_51E48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64628);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_BA9C(uint64_t a1)
{
  v1 = sub_23FC(&qword_64510, &qword_51D60);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(sub_23FC(&qword_64518, &qword_51D68) + 36);
  v2 = *(a1 + v5);

  v6 = *(sub_23FC(&qword_64630, &qword_51E48) + 28);
  v7 = sub_50B30();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1 + v5 + v6, 1))
  {
    (*(v8 + 8))(a1 + v5 + v6, v7);
  }

  return a1;
}

unint64_t sub_BBF0()
{
  v2 = qword_64638;
  if (!qword_64638)
  {
    sub_6320(&qword_64520, &qword_51D70);
    sub_B710();
    sub_9960();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64638);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_BC98(uint64_t a1)
{
  v1 = sub_23FC(&qword_64510, &qword_51D60);
  (*(*(v1 - 8) + 8))(a1);
  v8 = *(sub_23FC(&qword_64518, &qword_51D68) + 36);
  v2 = *(a1 + v8);

  v9 = *(sub_23FC(&qword_64630, &qword_51E48) + 28);
  v10 = sub_50B30();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(a1 + v8 + v9, 1))
  {
    (*(v11 + 8))(a1 + v8 + v9, v10);
  }

  v6 = (a1 + *(sub_23FC(&qword_64520, &qword_51D70) + 36));
  v3 = *v6;

  v4 = v6[1];

  return a1;
}

uint64_t sub_BE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[29] = a7;
  v7[28] = a6;
  v7[27] = a5;
  v7[26] = a4;
  v7[20] = v7;
  v7[21] = 0;
  v7[22] = 0;
  v7[23] = 0;
  v7[24] = 0;
  v7[25] = 0;
  v8 = sub_50A30();
  v7[30] = v8;
  v15 = *(v8 - 8);
  v7[31] = v15;
  v9 = *(v15 + 64) + 15;
  v7[32] = swift_task_alloc();
  v10 = sub_50DB0();
  v7[33] = v10;
  v16 = *(v10 - 8);
  v7[34] = v16;
  v17 = *(v16 + 64);
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v11 = sub_50A70();
  v7[39] = v11;
  v18 = *(v11 - 8);
  v7[40] = v18;
  v7[41] = *(v18 + 64);
  v7[42] = swift_task_alloc();
  v12 = sub_50A40();
  v7[43] = v12;
  v19 = *(v12 - 8);
  v7[44] = v19;
  v7[45] = *(v19 + 64);
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[21] = a4;
  v7[22] = a5;
  v7[23] = a6;
  v7[24] = a7;
  v13 = v7[20];

  return _swift_task_switch(sub_C180, 0, 0);
}

uint64_t sub_C180()
{
  v128 = v0;
  v1 = *(v0 + 208);
  *(v0 + 160) = v0;
  v112 = sub_50C10();
  switch(v112)
  {
    case 0:
      goto LABEL_16;
    case 1:
      v109 = *(v111 + 336);
      v108 = *(v111 + 312);
      v106 = *(v111 + 216);
      v107 = *(v111 + 320);
      (*(v107 + 104))();
      sub_1637C();
      v110 = sub_51670();
      (*(v107 + 8))(v109, v108);
      if (v110)
      {
        (*(*(v111 + 352) + 104))(*(v111 + 392), enum case for UpdateAction.updateNow(_:), *(v111 + 344));
      }

      else
      {
        (*(*(v111 + 352) + 104))(*(v111 + 392), enum case for UpdateAction.updateTonight(_:), *(v111 + 344));
      }

      (*(*(v111 + 352) + 32))(*(v111 + 400), *(v111 + 392), *(v111 + 344));
      break;
    case 2:
    case 3:
      goto LABEL_16;
    case 4:
      v104 = *(v111 + 336);
      v103 = *(v111 + 312);
      v101 = *(v111 + 216);
      v102 = *(v111 + 320);
      (*(v102 + 104))();
      sub_1637C();
      v105 = sub_51670();
      (*(v102 + 8))(v104, v103);
      if (v105)
      {
        (*(*(v111 + 352) + 104))(*(v111 + 384), enum case for UpdateAction.installNow(_:), *(v111 + 344));
      }

      else
      {
        (*(*(v111 + 352) + 104))(*(v111 + 384), enum case for UpdateAction.installTonight(_:), *(v111 + 344));
      }

      (*(*(v111 + 352) + 32))(*(v111 + 400), *(v111 + 384), *(v111 + 344));
      break;
    case 5:
LABEL_16:
      v91 = *(v111 + 336);
      v89 = *(v111 + 328);
      v92 = *(v111 + 312);
      v2 = *(v111 + 304);
      v88 = *(v111 + 216);
      v87 = *(v111 + 320);
      sub_50D90();
      (*(v87 + 16))(v91, v88, v92);
      v90 = (*(v87 + 80) + 16) & ~*(v87 + 80);
      v93 = swift_allocObject();
      (*(v87 + 32))(v93 + v90, v91, v92);
      oslog = sub_50DA0();
      v100 = sub_51480();
      v95 = swift_allocObject();
      *(v95 + 16) = 32;
      v96 = swift_allocObject();
      *(v96 + 16) = 8;
      v94 = swift_allocObject();
      *(v94 + 16) = sub_16218;
      *(v94 + 24) = v93;
      v97 = swift_allocObject();
      *(v97 + 16) = sub_16324;
      *(v97 + 24) = v94;
      sub_23FC(&qword_64648, &qword_51E60);
      sub_51650();
      v98 = v3;

      *v98 = sub_162A8;
      v98[1] = v95;

      v98[2] = sub_162DC;
      v98[3] = v96;

      v98[4] = sub_16370;
      v98[5] = v97;
      sub_1489C();

      if (os_log_type_enabled(oslog, v100))
      {
        buf = sub_514F0();
        sub_23FC(&qword_64650, &unk_53930);
        v85 = sub_121D4(0);
        v86 = sub_121D4(1);
        v118 = buf;
        v119 = v85;
        v120 = v86;
        sub_12228(2, &v118);
        sub_12228(1, &v118);
        v121 = sub_162A8;
        v122 = v95;
        sub_1223C(&v121, &v118, &v119, &v120);
        v121 = sub_162DC;
        v122 = v96;
        sub_1223C(&v121, &v118, &v119, &v120);
        v121 = sub_16370;
        v122 = v97;
        sub_1223C(&v121, &v118, &v119, &v120);
        _os_log_impl(&dword_0, oslog, v100, "Could not perform the deep link action %s as the descriptor\nis not available to download or available to install. Aborting the request.", buf, 0xCu);
        sub_12288(v85);
        sub_12288(v86);
        sub_514D0();
      }

      else
      {
      }

      v82 = *(v111 + 304);
      v83 = *(v111 + 264);
      v81 = *(v111 + 272);
      _objc_release(oslog);
      (*(v81 + 8))(v82, v83);
      goto LABEL_30;
    default:
      v71 = *(v111 + 336);
      v69 = *(v111 + 328);
      v72 = *(v111 + 312);
      v4 = *(v111 + 296);
      v68 = *(v111 + 216);
      v67 = *(v111 + 320);
      sub_50D90();
      (*(v67 + 16))(v71, v68, v72);
      v70 = (*(v67 + 80) + 16) & ~*(v67 + 80);
      v73 = swift_allocObject();
      (*(v67 + 32))(v73 + v70, v71, v72);
      log = sub_50DA0();
      v80 = sub_51480();
      v75 = swift_allocObject();
      *(v75 + 16) = 32;
      v76 = swift_allocObject();
      *(v76 + 16) = 8;
      v74 = swift_allocObject();
      *(v74 + 16) = sub_15FE8;
      *(v74 + 24) = v73;
      v77 = swift_allocObject();
      *(v77 + 16) = sub_160F4;
      *(v77 + 24) = v74;
      sub_23FC(&qword_64648, &qword_51E60);
      sub_51650();
      v78 = v5;

      *v78 = sub_16078;
      v78[1] = v75;

      v78[2] = sub_160AC;
      v78[3] = v76;

      v78[4] = sub_16140;
      v78[5] = v77;
      sub_1489C();

      if (os_log_type_enabled(log, v80))
      {
        v64 = sub_514F0();
        sub_23FC(&qword_64650, &unk_53930);
        v65 = sub_121D4(0);
        v66 = sub_121D4(1);
        v113 = v64;
        v114 = v65;
        v115 = v66;
        sub_12228(2, &v113);
        sub_12228(1, &v113);
        v116 = sub_16078;
        v117 = v75;
        sub_1223C(&v116, &v113, &v114, &v115);
        v116 = sub_160AC;
        v117 = v76;
        sub_1223C(&v116, &v113, &v114, &v115);
        v116 = sub_16140;
        v117 = v77;
        sub_1223C(&v116, &v113, &v114, &v115);
        _os_log_impl(&dword_0, log, v80, "Could not perform the deep link action %s as the descriptor\nis in an unknown state. Aborting the request.", v64, 0xCu);
        sub_12288(v65);
        sub_12288(v66);
        sub_514D0();
      }

      else
      {
      }

      v62 = *(v111 + 296);
      v63 = *(v111 + 264);
      v61 = *(v111 + 272);
      _objc_release(log);
      (*(v61 + 8))(v62, v63);
LABEL_30:
      v16 = *(v111 + 400);
      v20 = *(v111 + 392);
      v21 = *(v111 + 384);
      v22 = *(v111 + 376);
      v23 = *(v111 + 368);
      v24 = *(v111 + 336);
      v25 = *(v111 + 304);
      v26 = *(v111 + 296);
      v27 = *(v111 + 288);
      v28 = *(v111 + 280);
      v29 = *(v111 + 256);

      v17 = *(*(v111 + 160) + 8);
      v18 = *(v111 + 160);

      return v17();
  }

  v37 = *(v111 + 400);
  v40 = *(v111 + 376);
  v38 = *(v111 + 360);
  v41 = *(v111 + 344);
  v46 = *(v111 + 336);
  v44 = *(v111 + 328);
  v47 = *(v111 + 312);
  v6 = *(v111 + 288);
  v43 = *(v111 + 216);
  v36 = *(v111 + 352);
  v42 = *(v111 + 320);
  sub_50D90();
  v7 = *(v36 + 16);
  *(v111 + 408) = v7;
  *(v111 + 416) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v40, v37, v41);
  v8 = *(v36 + 80);
  *(v111 + 488) = v8;
  v39 = (v8 + 16) & ~v8;
  v48 = swift_allocObject();
  v9 = *(v36 + 32);
  *(v111 + 424) = v9;
  *(v111 + 432) = (v36 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v48 + v39, v40, v41);
  (*(v42 + 16))(v46, v43, v47);
  v45 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v50 = swift_allocObject();
  (*(v42 + 32))(v50 + v45, v46, v47);
  v59 = sub_50DA0();
  v60 = sub_51480();
  v52 = swift_allocObject();
  *(v52 + 16) = 32;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_164C8;
  *(v49 + 24) = v48;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_16704;
  *(v54 + 24) = v49;
  v55 = swift_allocObject();
  *(v55 + 16) = 32;
  v56 = swift_allocObject();
  *(v56 + 16) = 8;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_165F8;
  *(v51 + 24) = v50;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_16804;
  *(v57 + 24) = v51;
  *(v111 + 440) = sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v58 = v10;

  *v58 = sub_16688;
  v58[1] = v52;

  v58[2] = sub_166BC;
  v58[3] = v53;

  v58[4] = sub_16750;
  v58[5] = v54;

  v58[6] = sub_16788;
  v58[7] = v55;

  v58[8] = sub_167BC;
  v58[9] = v56;

  v58[10] = sub_16850;
  v58[11] = v57;
  sub_1489C();

  if (os_log_type_enabled(v59, v60))
  {
    v33 = sub_514F0();
    sub_23FC(&qword_64650, &unk_53930);
    v34 = sub_121D4(0);
    v35 = sub_121D4(2);
    v123 = v33;
    v124 = v34;
    v125 = v35;
    sub_12228(2, &v123);
    sub_12228(2, &v123);
    v126 = sub_16688;
    v127 = v52;
    sub_1223C(&v126, &v123, &v124, &v125);
    v126 = sub_166BC;
    v127 = v53;
    sub_1223C(&v126, &v123, &v124, &v125);
    v126 = sub_16750;
    v127 = v54;
    sub_1223C(&v126, &v123, &v124, &v125);
    v126 = sub_16788;
    v127 = v55;
    sub_1223C(&v126, &v123, &v124, &v125);
    v126 = sub_167BC;
    v127 = v56;
    sub_1223C(&v126, &v123, &v124, &v125);
    v126 = sub_16850;
    v127 = v57;
    sub_1223C(&v126, &v123, &v124, &v125);
    _os_log_impl(&dword_0, v59, v60, "Atempting to perform update action %s to resolve the deep link action: %s", v33, 0x16u);
    sub_12288(v34);
    sub_12288(v35);
    sub_514D0();
  }

  else
  {
  }

  v31 = *(v111 + 288);
  v32 = *(v111 + 264);
  v11 = *(v111 + 224);
  v30 = *(v111 + 272);
  _objc_release(v59);
  v12 = *(v30 + 8);
  *(v111 + 448) = v12;
  *(v111 + 456) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v31, v32);
  sub_50AB0();
  sub_1685C();
  v13 = sub_513F0();
  v15 = *(v111 + 160);

  return _swift_task_switch(sub_DCC8, v13, v14);
}

uint64_t sub_DCC8()
{
  v10 = v0[52];
  v11 = v0[51];
  v8 = v0[50];
  v12 = v0[46];
  v9 = v0[43];
  v1 = v0[28];
  v0[20] = v0;
  v0[58] = sub_50AA0();
  v11(v12, v8, v9);
  v2 = async function pointer to ReactiveUIManager.initiateUpdateAction(_:for:delegate:)[1];
  v3 = swift_task_alloc();
  v13[59] = v3;
  *v3 = v13[20];
  v3[1] = sub_DDE4;
  v4 = v13[46];
  v5 = v13[32];
  v6 = v13[26];

  return ReactiveUIManager.initiateUpdateAction(_:for:delegate:)(v5, v4, v6, 0);
}

uint64_t sub_DDE4()
{
  v8 = *v1;
  v2 = *(*v1 + 472);
  v8[20] = *v1;
  v9 = v8 + 20;
  v8[60] = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = sub_E134;
  }

  else
  {
    v7 = v8[58];
    (*(v8[44] + 8))(v8[46], v8[43]);

    v3 = *v9;
    v4 = sub_DF84;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_DF84()
{
  v1 = v0[32];
  v2 = v0[31];
  v3 = v0[30];
  v0[20] = v0;
  (*(v2 + 8))(v1, v3);
  (*(v0[44] + 8))(v0[50], v0[43]);
  v4 = v0[50];
  v8 = v0[49];
  v9 = v0[48];
  v10 = v0[47];
  v11 = v0[46];
  v12 = v0[42];
  v13 = v0[38];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[35];
  v17 = v0[32];

  v5 = *(v0[20] + 8);
  v6 = v0[20];

  return v5();
}

uint64_t sub_E134()
{
  v64 = v0;
  v29 = *(v0 + 480);
  v28 = *(v0 + 464);
  v56 = *(v0 + 440);
  v38 = *(v0 + 432);
  v39 = *(v0 + 424);
  v35 = *(v0 + 488);
  v32 = *(v0 + 416);
  v33 = *(v0 + 408);
  v31 = *(v0 + 400);
  v36 = *(v0 + 376);
  v1 = *(v0 + 368);
  v34 = *(v0 + 360);
  v2 = *(v0 + 352);
  v37 = *(v0 + 344);
  v3 = *(v0 + 280);
  __src = *(v0 + 232);
  *(v0 + 160) = v0;
  (*(v2 + 8))(v1);

  swift_errorRetain();
  *(v0 + 200) = v29;
  sub_50D80();
  sub_4354(__src, v0 + 16);
  v40 = swift_allocObject();
  memcpy((v40 + 16), __src, 0x90uLL);
  v33(v36, v31, v37);
  v44 = swift_allocObject();
  v39(v44 + ((v35 + 16) & ~v35), v36, v37);
  v57 = sub_50DA0();
  v58 = sub_514A0();
  v46 = swift_allocObject();
  *(v46 + 16) = 32;
  v47 = swift_allocObject();
  *(v47 + 16) = 8;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1698C;
  *(v41 + 24) = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_16B6C;
  *(v42 + 24) = v41;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_16BB8;
  *(v48 + 24) = v42;
  v49 = swift_allocObject();
  *(v49 + 16) = 32;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_F26C;
  *(v43 + 24) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_16CB8;
  *(v51 + 24) = v43;
  v52 = swift_allocObject();
  *(v52 + 16) = 32;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_16A60;
  *(v45 + 24) = v44;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_16DB8;
  *(v54 + 24) = v45;
  sub_51650();
  v55 = v4;

  *v55 = sub_16AF0;
  v55[1] = v46;

  v55[2] = sub_16B24;
  v55[3] = v47;

  v55[4] = sub_16C04;
  v55[5] = v48;

  v55[6] = sub_16C3C;
  v55[7] = v49;

  v55[8] = sub_16C70;
  v55[9] = v50;

  v55[10] = sub_16D04;
  v55[11] = v51;

  v55[12] = sub_16D3C;
  v55[13] = v52;

  v55[14] = sub_16D70;
  v55[15] = v53;

  v55[16] = sub_16E04;
  v55[17] = v54;
  sub_1489C();

  if (os_log_type_enabled(v57, v58))
  {
    buf = sub_514F0();
    sub_23FC(&qword_64650, &unk_53930);
    v25 = sub_121D4(0);
    v26 = sub_121D4(3);
    v59 = buf;
    v60 = v25;
    v61 = v26;
    sub_12228(2, &v59);
    sub_12228(3, &v59);
    v62 = sub_16AF0;
    v63 = v46;
    sub_1223C(&v62, &v59, &v60, &v61);
    v62 = sub_16B24;
    v63 = v47;
    sub_1223C(&v62, &v59, &v60, &v61);
    v62 = sub_16C04;
    v63 = v48;
    sub_1223C(&v62, &v59, &v60, &v61);
    v62 = sub_16C3C;
    v63 = v49;
    sub_1223C(&v62, &v59, &v60, &v61);
    v62 = sub_16C70;
    v63 = v50;
    sub_1223C(&v62, &v59, &v60, &v61);
    v62 = sub_16D04;
    v63 = v51;
    sub_1223C(&v62, &v59, &v60, &v61);
    v62 = sub_16D3C;
    v63 = v52;
    sub_1223C(&v62, &v59, &v60, &v61);
    v62 = sub_16D70;
    v63 = v53;
    sub_1223C(&v62, &v59, &v60, &v61);
    v62 = sub_16E04;
    v63 = v54;
    sub_1223C(&v62, &v59, &v60, &v61);
    _os_log_impl(&dword_0, v57, v58, "%s.%s: Failed to perform update action: %s", buf, 0x20u);
    sub_12288(v25);
    sub_12288(v26);
    sub_514D0();
  }

  else
  {
  }

  v13 = v27[60];
  v11 = v27[57];
  v12 = v27[56];
  v9 = v27[35];
  v10 = v27[33];
  _objc_release(v57);
  v12(v9, v10);

  (*(v27[44] + 8))(v27[50], v27[43]);
  v5 = v27[50];
  v14 = v27[49];
  v15 = v27[48];
  v16 = v27[47];
  v17 = v27[46];
  v18 = v27[42];
  v19 = v27[38];
  v20 = v27[37];
  v21 = v27[36];
  v22 = v27[35];
  v23 = v27[32];

  v6 = *(v27[20] + 8);
  v7 = v27[20];

  return v6();
}

uint64_t sub_EF8C(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_50A70();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return sub_51330();
}

uint64_t sub_F040(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_50A70();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return sub_51330();
}

uint64_t sub_F0F4(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_50A40();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return sub_51330();
}

uint64_t sub_F1A8(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_50A70();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return sub_51330();
}

uint64_t sub_F29C(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_50A40();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return sub_51330();
}

uint64_t sub_F350(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_52138;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(sub_23FC(&qword_64640, &qword_52260) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v57 = &v16 - v53;

  v63 = v55;
  v64 = v56;
  sub_1592C(v54, v57);
  v58 = sub_51450();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_14BA4(v57);
    v44 = 0;
  }

  else
  {
    v43 = sub_51440();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1000;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_513F0();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;
  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v26 = sub_51340();
    v8 = *(v26 + 16);
    sub_12474(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v25 = v61;

    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v24 = v27;
  if (v27)
  {
    v18 = v24;
    v19 = v24;
  }

  else
  {

    v20 = v63;
    v21 = v64;

    v9 = swift_allocObject();
    v10 = v20;
    v11 = v21;
    v12 = v31;
    v13 = v30;
    v22 = v9;
    v9[2] = v47;
    v9[3] = v10;
    v9[4] = v11;
    v23 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v23 = v62;
    }

    v19 = swift_task_create();
  }

  sub_12460();
  v17 = v14;

  return v17;
}

uint64_t sub_F8E0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = a2;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v31 = 0;
  v17 = 0;
  v12 = sub_50A70();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v16 = &v11 - v15;
  v38 = &v11 - v15;
  v18 = (*(*(sub_23FC(&qword_644D8, &qword_51D28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17);
  v29 = &v11 - v18;
  v30 = sub_50B30();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v21 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v20);
  v22 = &v11 - v21;
  v23 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v24 = &v11 - v23;
  v37 = &v11 - v23;
  v36 = v4;
  v35 = v5;
  v6 = *(v4 + 80);
  v25 = &v39;
  v39 = v6;
  sub_357C(&v39, &v34);
  v33 = v39;
  sub_23FC(&qword_644B8, &qword_51D08);
  sub_51140();
  v26 = v32;
  sub_35D4(v25);
  sub_50CC0();
  if ((*(v27 + 48))(v29, 1, v30) == 1)
  {
    sub_9144(v29);
  }

  else
  {
    (*(v27 + 32))(v24, v29, v30);

    (*(v27 + 16))(v22, v24, v30);
    if ((*(v27 + 88))(v22, v30) == enum case for DeepLinkResponse.navigateAndPerform(_:))
    {
      (*(v27 + 96))(v22, v30);
      v8 = sub_23FC(&qword_64660, ":)");
      v9 = &v22[*(v8 + 48)];
      v11 = *&v22[*(v8 + 64)];
      (*(v13 + 32))(v16, v9, v12);
      v31 = v11;
      v10 = sub_50C20();
      (*(*(v10 - 8) + 8))(v22);
      sub_8B3C(v11, v19, v16);

      (*(v13 + 8))(v16, v12);
    }

    else
    {
      (*(v27 + 8))(v22, v30);
    }

    return (*(v27 + 8))(v24, v30);
  }
}

uint64_t sub_FE4C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  v8 = *(v0 + 72);

  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  sub_3238();
  v11 = *(v0 + 96);

  v12 = *(v0 + 104);

  v13 = *(v0 + 120);

  v14 = *(v0 + 136);

  v15 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_FF60(int a1, int a2, int a3, void *__src, uint64_t a5)
{
  v5[66] = a5;
  v5[65] = __src;
  v5[62] = v5;
  v5[63] = 0;
  memcpy(v5 + 20, __src, 0x90uLL);
  memcpy(v5 + 2, v5 + 20, 0x90uLL);
  v6 = *(*(sub_23FC(&qword_644D8, &qword_51D28) - 8) + 64) + 15;
  v5[67] = swift_task_alloc();
  v7 = sub_50B30();
  v5[68] = v7;
  v11 = *(v7 - 8);
  v5[69] = v11;
  v8 = *(v11 + 64) + 15;
  v5[70] = swift_task_alloc();
  v5[63] = a5;
  v9 = v5[62];

  return _swift_task_switch(sub_100CC, 0, 0);
}

uint64_t sub_100CC()
{
  v0[62] = v0;
  v0[71] = sub_50AE0();
  v0[72] = sub_51410();
  v0[73] = sub_51400();
  v4 = sub_513F0();
  v2 = v0[62];

  return _swift_task_switch(sub_10188, v4, v1);
}

uint64_t sub_10188()
{
  v4 = *(v0 + 584);
  v1 = *(v0 + 520);
  *(v0 + 496) = v0;
  *(v0 + 448) = *v1;
  sub_23A4((v0 + 448), (v0 + 464));
  *(v0 + 480) = *(v0 + 448);
  sub_23FC(&qword_64490, &qword_51CB0);
  sub_51140();
  *(v0 + 592) = *(v0 + 512);
  sub_2468((v0 + 448));

  v2 = *(v0 + 496);

  return _swift_task_switch(sub_10258, 0, 0);
}

uint64_t sub_10258()
{
  v1 = v0[74];
  v2 = v0[71];
  v0[62] = v0;
  v0[75] = sub_50AC0();
  v3 = async function pointer to DeepLinkHandler.resolve(_:)[1];
  v4 = swift_task_alloc();
  v8[76] = v4;
  *v4 = v8[62];
  v4[1] = sub_10328;
  v5 = v8[67];
  v6 = v8[66];

  return DeepLinkHandler.resolve(_:)(v5, v6);
}

uint64_t sub_10328()
{
  v10 = *v1;
  v8 = *v1 + 16;
  v9 = (v10 + 496);
  v2 = *(*v1 + 608);
  *(v10 + 496) = *v1;
  *(v10 + 616) = v0;

  if (v0)
  {
    v6 = *v9;
    v5 = sub_10950;
  }

  else
  {
    v3 = *(v8 + 584);

    v4 = *v9;
    v5 = sub_104A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_104A8()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v0[62] = v0;
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_9144(v17[67]);
    v4 = v17[70];
    v16 = v17[67];

    v5 = *(v17[62] + 8);
    v6 = v17[62];

    return v5();
  }

  else
  {
    v13 = v17[70];
    v8 = v17[68];
    v9 = v17[67];
    v12 = v17[65];
    (*(v17[69] + 32))();
    sub_4354(v12, (v17 + 38));
    v14 = swift_task_alloc();
    v17[78] = v14;
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    sub_11810();
    v10 = swift_task_alloc();
    v17[79] = v10;
    *v10 = v17[62];
    v10[1] = sub_106F4;
    v11 = v17[72];

    return sub_11824(v15, &type metadata for () + 8, sub_16E10, v14);
  }
}

uint64_t sub_106F4()
{
  v9 = *v1 + 16;
  v10 = (*v1 + 496);
  v2 = *(*v1 + 632);
  *v10 = *v1;

  if (v0)
  {
    v6 = *v10;
    v5 = sub_10A10;
  }

  else
  {
    v3 = *(v9 + 608);
    v8 = *(v9 + 504);

    sub_4530(v8);
    v4 = *v10;
    v5 = sub_1087C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1087C()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v0[62] = v0;
  (*(v2 + 8))(v1, v3);
  v4 = v0[70];
  v8 = v0[67];

  v5 = *(v0[62] + 8);
  v6 = v0[62];

  return v5();
}

uint64_t sub_10950()
{
  v1 = v0[75];
  v7 = v0[70];
  v8 = v0[67];
  v0[62] = v0;

  v2 = v0;
  v3 = *(v0[62] + 8);
  v4 = v0[62];
  v5 = v2[77];

  return v3();
}

uint64_t *sub_10A10()
{
  v1 = v0[78];
  v3 = v0[65];
  v0[62] = v0;

  return sub_4530(v3);
}

uint64_t sub_10A70(uint64_t *a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v82 = sub_16EEC;
  v84 = sub_170CC;
  v86 = sub_17118;
  v88 = sub_1172C;
  v89 = sub_17218;
  v94 = sub_16FC0;
  v98 = sub_17318;
  v100 = sub_17050;
  v102 = sub_17084;
  v104 = sub_17164;
  v106 = sub_1719C;
  v108 = sub_171D0;
  v110 = sub_17264;
  v112 = sub_1729C;
  v114 = sub_172D0;
  v117 = sub_17364;
  v132 = 0;
  v131 = 0;
  v2 = sub_23FC(&qword_644D8, &qword_51D28);
  v62 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v63 = &v40 - v62;
  v64 = 0;
  v81 = sub_50B30();
  v77 = *(v81 - 8);
  v78 = v81 - 8;
  v75 = v77;
  v76 = *(v77 + 64);
  v65 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v64);
  v80 = &v40 - v65;
  v66 = sub_50DB0();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v71);
  v70 = &v40 - v69;
  v132 = v3;
  v131 = v4;
  sub_50D90();
  sub_4354(v71, v130);
  v96 = 7;
  v83 = swift_allocObject();
  memcpy((v83 + 16), v71, 0x90uLL);
  v73 = *(v77 + 16);
  v74 = v77 + 16;
  v73(v80, v72, v81);
  v79 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v97 = swift_allocObject();
  (*(v77 + 32))(v97 + v79, v80, v81);
  v121 = sub_50DA0();
  v122 = sub_51480();
  v92 = 17;
  v101 = swift_allocObject();
  v91 = 32;
  *(v101 + 16) = 32;
  v103 = swift_allocObject();
  v93 = 8;
  *(v103 + 16) = 8;
  v95 = 32;
  v5 = swift_allocObject();
  v6 = v83;
  v85 = v5;
  *(v5 + 16) = v82;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v85;
  v87 = v7;
  *(v7 + 16) = v84;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v87;
  v105 = v9;
  *(v9 + 16) = v86;
  *(v9 + 24) = v10;
  v107 = swift_allocObject();
  *(v107 + 16) = v91;
  v109 = swift_allocObject();
  *(v109 + 16) = v93;
  v11 = swift_allocObject();
  v90 = v11;
  *(v11 + 16) = v88;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v90;
  v111 = v12;
  *(v12 + 16) = v89;
  *(v12 + 24) = v13;
  v113 = swift_allocObject();
  *(v113 + 16) = v91;
  v115 = swift_allocObject();
  *(v115 + 16) = v93;
  v14 = swift_allocObject();
  v15 = v97;
  v99 = v14;
  *(v14 + 16) = v94;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v99;
  v118 = v16;
  *(v16 + 16) = v98;
  *(v16 + 24) = v17;
  v120 = sub_23FC(&qword_64648, &qword_51E60);
  v116 = sub_51650();
  v119 = v18;

  v19 = v101;
  v20 = v119;
  *v119 = v100;
  v20[1] = v19;

  v21 = v103;
  v22 = v119;
  v119[2] = v102;
  v22[3] = v21;

  v23 = v105;
  v24 = v119;
  v119[4] = v104;
  v24[5] = v23;

  v25 = v107;
  v26 = v119;
  v119[6] = v106;
  v26[7] = v25;

  v27 = v109;
  v28 = v119;
  v119[8] = v108;
  v28[9] = v27;

  v29 = v111;
  v30 = v119;
  v119[10] = v110;
  v30[11] = v29;

  v31 = v113;
  v32 = v119;
  v119[12] = v112;
  v32[13] = v31;

  v33 = v115;
  v34 = v119;
  v119[14] = v114;
  v34[15] = v33;

  v35 = v118;
  v36 = v119;
  v119[16] = v117;
  v36[17] = v35;
  sub_1489C();

  if (os_log_type_enabled(v121, v122))
  {
    v54 = sub_514F0();
    v53 = sub_23FC(&qword_64650, &unk_53930);
    v55 = sub_121D4(0);
    v56 = sub_121D4(3);
    v57 = v127;
    v127[0] = v54;
    v58 = &v126;
    v126 = v55;
    v59 = &v125;
    v125 = v56;
    sub_12228(2, v127);
    sub_12228(3, v57);
    v37 = v61;
    v123 = v100;
    v124 = v101;
    sub_1223C(&v123, v57, v58, v59);
    v60 = v37;
    if (v37)
    {

      __break(1u);
    }

    else
    {
      v123 = v102;
      v124 = v103;
      sub_1223C(&v123, v127, &v126, &v125);
      v51 = 0;
      v123 = v104;
      v124 = v105;
      sub_1223C(&v123, v127, &v126, &v125);
      v50 = 0;
      v123 = v106;
      v124 = v107;
      sub_1223C(&v123, v127, &v126, &v125);
      v49 = 0;
      v123 = v108;
      v124 = v109;
      sub_1223C(&v123, v127, &v126, &v125);
      v48 = 0;
      v123 = v110;
      v124 = v111;
      sub_1223C(&v123, v127, &v126, &v125);
      v47 = 0;
      v123 = v112;
      v124 = v113;
      sub_1223C(&v123, v127, &v126, &v125);
      v46 = 0;
      v123 = v114;
      v124 = v115;
      sub_1223C(&v123, v127, &v126, &v125);
      v45 = 0;
      v123 = v117;
      v124 = v118;
      sub_1223C(&v123, v127, &v126, &v125);
      v44 = 0;
      _os_log_impl(&dword_0, v121, v122, "%s.%s: Resolved deep link with response: %s", v54, 0x20u);
      sub_12288(v55);
      sub_12288(v56);
      sub_514D0();

      v52 = v44;
    }
  }

  else
  {

    v52 = v61;
  }

  v43 = v52;
  _objc_release(v121);
  (*(v67 + 8))(v70, v66);
  v38 = *(v71 + 5);
  v41 = &v133;
  v133 = v38;
  sub_357C(&v133, &v129);
  v128 = v133;
  sub_23FC(&qword_644B8, &qword_51D08);
  sub_51140();
  v42 = v127[1];
  sub_35D4(v41);
  v73(v63, v72, v81);
  (*(v77 + 56))(v63, 0, 1, v81);
  sub_50CD0();
}

uint64_t sub_1175C(uint64_t a1)
{
  v2[1] = a1;
  v5 = sub_50B30();
  v4 = *(v5 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v6 = v2 - v3;
  (*(v4 + 16))();
  return sub_51330();
}

uint64_t sub_11824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a1;
  v5[2] = v5;
  v6 = v5[2];
  return _swift_task_switch(sub_11868, 0, 0);
}

uint64_t sub_11868()
{
  v4 = v0[6];
  v0[2] = v0;
  v0[7] = sub_51400();
  v5 = sub_513F0();
  v2 = v0[2];

  return _swift_task_switch(sub_11900, v5, v1);
}

uint64_t sub_11900()
{
  v1 = v0[7];
  v2 = v0[5];
  v8 = v0[4];
  v7 = v0[3];
  v0[2] = v0;

  v8(v3);
  v4 = *(v0[2] + 8);
  v5 = v0[2];

  return v4();
}

uint64_t sub_11A30(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a1;
  v40 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v41 = a6;
  v42 = "Fatal error";
  v43 = "Unexpectedly found nil while unwrapping an Optional value";
  v44 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v45 = 0;
  v58 = a6;
  v46 = (*(*(sub_23FC(&qword_64640, &qword_52260) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v50 = &v11 - v46;

  v56 = v48;
  v57 = v49;
  sub_1592C(v47, v50);
  v51 = sub_51450();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  if ((*(v52 + 48))(v50, 1) == 1)
  {
    sub_14BA4(v50);
    v38 = 0;
  }

  else
  {
    v37 = sub_51440();
    (*(v52 + 8))(v50, v51);
    v38 = v37;
  }

  v34 = v38 | 0x1000;
  v36 = *(v49 + 16);
  v35 = *(v49 + 24);
  swift_unknownObjectRetain();

  if (v36)
  {
    v32 = v36;
    v33 = v35;
    v26 = v35;
    v27 = v36;
    swift_getObjectType();
    v28 = sub_513F0();
    v29 = v6;
    swift_unknownObjectRelease();
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v24 = v31;
  v25 = v30;
  if (v40)
  {
    v22 = v39;
    v23 = v40;
    v7 = v45;
    v20 = sub_51340();
    v8 = *(v20 + 16);
    sub_122F0(v20 + 32, &v56, &v54);
    if (v7)
    {
      __break(1u);
    }

    v19 = v54;

    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v18 = v21;
  if (v21)
  {
    v13 = v18;
    v14 = v18;
  }

  else
  {

    v15 = v56;
    v16 = v57;

    v17 = 0;
    if (v25 != 0 || v24 != 0)
    {
      v55[0] = 0;
      v55[1] = 0;
      v55[2] = v25;
      v55[3] = v24;
      v17 = v55;
    }

    v14 = swift_task_create();
  }

  v11 = v14;
  sub_23FC(&qword_64678, &qword_52148);
  sub_12460();
  v12 = v9;

  return v12;
}

uint64_t sub_11F7C(uint64_t a1)
{
  *(v2 + 160) = v2;
  memcpy((v2 + 16), v1, 0x90uLL);
  v3 = swift_task_alloc();
  *(v5 + 168) = v3;
  *v3 = *(v5 + 160);
  v3[1] = sub_12044;

  return sub_6E24(a1);
}

uint64_t sub_12044()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  *(v2 + 160) = *v1;
  v6 = v2 + 160;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t sub_121D4(uint64_t a1)
{
  if (a1)
  {
    return sub_514F0();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_12228(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void sub_12288(uint64_t a1)
{
  if (a1)
  {
    sub_514E0();
    sub_514D0();
  }
}

uint64_t sub_122F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
    sub_51610();
    __break(1u);
  }

  v4 = *a2;
  v5 = a2[1];

  result = swift_task_create();
  *a3 = result;
  return result;
}

uint64_t sub_12474@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_51610();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_12634(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_12748;

  return v7(a1);
}

uint64_t sub_12748()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

void *sub_128DC(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_12978(v4, v5, a3);
  v8 = *a1;

  sub_51510();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_12978(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_12B1C(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_17410(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_17370(v12);
  }

  else
  {
    v13[3] = &type metadata for _StringGuts;
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_17410(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_17370(v13);
  }

  return v11;
}

uint64_t sub_12B1C(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_51610();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_12ED4(v22, v17, v16);
        sub_51520();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_13050(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_515E0();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_51610();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_12ED4(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_51630();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_51630();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_13050(uint64_t a1, uint64_t a2)
{
  v7 = sub_1310C(a1, a2);
  sub_23FC(&qword_64680, qword_52EA0);
  inited = swift_initStackObject();
  v3 = sub_1391C(inited, 1);
  *v4 = 0;
  sub_13968();
  sub_1399C(v3);

  v8 = sub_13D44(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1310C(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_51370();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_14264();
  }

  v10 = sub_13D5C(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_51630();
    __break(1u);
    return sub_14264();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_13EA0(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_515E0();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_13EA0(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_515D0();
  if (v2)
  {
LABEL_29:
    sub_51610();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_51610();
    __break(1u);
  }

  sub_174A8(v17);
  return v10;
}

uint64_t sub_1391C(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_1399C(uint64_t a1)
{
  v20 = sub_13D44(a1);
  v2 = sub_13D44(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = sub_142A0(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    sub_51630();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1440C(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    sub_51610();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    sub_51610();
    __break(1u);
    goto LABEL_21;
  }

  sub_13EA0((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    sub_14294();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_13D5C(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    sub_23FC(&qword_64680, qword_52EA0);
    v5 = swift_allocObject();

    if (sub_17474())
    {
      v3 = sub_17480(v5) - 32;
      v5[2] = a1;
      v5[3] = 2 * v3;
    }

    else
    {
      v5[2] = a1;
      v5[3] = 2 * v6;
    }

    return v5;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }
}

void *sub_13EA0(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_51630();
    __break(1u);
  }

  result = sub_51630();
  __break(1u);
  return result;
}

uint64_t sub_13FF0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = sub_51390();
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_51610();
    __break(1u);
  }

  v5 = sub_513B0();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

char *sub_142A0(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_13D5C(v4, v6);
  if (v7)
  {
    sub_14414((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_13EA0((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_14414(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_51630();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_1453C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_145B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_14604()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_14650()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_14704()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_14750()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_14804()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_14850()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_148E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  v9 = *(v0 + 88);

  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  sub_3238();
  v12 = *(v0 + 112);

  v13 = *(v0 + 120);

  v14 = *(v0 + 136);

  v15 = *(v0 + 152);

  v16 = *(v0 + 168);

  v17 = *(v0 + 176);

  return swift_deallocObject();
}

uint64_t sub_149A0(int a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  *v6 = v1[2];
  *v7 = v1[3];
  v8 = v1[22];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_14A7C;

  return sub_FF60(a1, v6[0], v7[0], v1 + 4, v8);
}

uint64_t sub_14A7C()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_14BA4(uint64_t a1)
{
  v3 = sub_51450();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_14C4C()
{
  v22 = sub_50A70();
  v20 = *(v22 - 8);
  v21 = (*(v20 + 80) + 40) & ~*(v20 + 80);
  v23 = (v21 + *(v20 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  (*(v20 + 8))(v0 + v21, v22);
  v3 = *(v0 + v23);

  v4 = *(v0 + v24);

  v5 = *(v0 + v24 + 8);

  v6 = *(v0 + v24 + 16);

  v7 = *(v0 + v24 + 24);

  v8 = *(v0 + v24 + 32);

  v9 = *(v0 + v24 + 40);

  v10 = *(v0 + v24 + 48);

  v11 = *(v0 + v24 + 56);

  v12 = *(v0 + v24 + 64);
  v13 = *(v0 + v24 + 72);
  sub_3238();
  v14 = *(v0 + v24 + 80);

  v15 = *(v0 + v24 + 88);

  v16 = *(v0 + v24 + 104);

  v17 = *(v0 + v24 + 120);

  v18 = *(v0 + v24 + 136);

  return swift_deallocObject();
}

uint64_t sub_14E2C(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v6 = *(sub_50A70() - 8);
  v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v3 = (v11 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v12 = *(v1 + v3);
  v4 = swift_task_alloc();
  *(v7 + 24) = v4;
  *v4 = *(v7 + 16);
  v4[1] = sub_14FA0;

  return sub_BE3C(a1, v8, v9, v10, v1 + v11, v12, v1 + v13);
}

uint64_t sub_14FA0()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_150C8(uint64_t a1)
{
  v1 = sub_50A20();
  (*(*(v1 - 8) + 8))(a1);
  v5 = (a1 + *(sub_23FC(&qword_64608, &qword_51DE8) + 36));
  v2 = *v5;

  v3 = v5[1];

  return a1;
}

uint64_t sub_15160()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  v8 = *(v0 + 72);

  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  sub_3238();
  v11 = *(v0 + 96);

  v12 = *(v0 + 104);

  v13 = *(v0 + 120);

  v14 = *(v0 + 136);

  v15 = *(v0 + 152);

  v16 = *(v0 + 160);

  return swift_deallocObject();
}

uint64_t sub_15224(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_15258(uint64_t a1)
{
  v1 = sub_23FC(&qword_64658, &unk_51E90);
  (*(*(v1 - 8) + 8))(a1);
  v6 = *(sub_23FC(&qword_64600, &qword_51DE0) + 36);
  if (*(a1 + v6))
  {
    v2 = *(a1 + v6 + 8);
  }

  if (*(a1 + v6 + 16))
  {
    v3 = *(a1 + v6 + 24);
  }

  return a1;
}

uint64_t sub_15338(uint64_t a1, uint64_t a2)
{
  v2 = sub_23FC(&qword_64658, &unk_51E90);
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = *(sub_23FC(&qword_64600, &qword_51DE0) + 36);
  if (*(a1 + v13))
  {
    v9 = *(a1 + v13);
    v10 = *(a1 + v13 + 8);

    v3 = (a2 + v13);
    *v3 = v9;
    v3[1] = v10;
  }

  else
  {
    *(a2 + v13) = *(a1 + v13);
  }

  v7 = a2 + v13;
  v8 = a1 + v13;
  if (*(a1 + v13 + 16))
  {
    v5 = *(v8 + 16);
    v6 = *(a1 + v13 + 24);

    *(v7 + 16) = v5;
    *(a2 + v13 + 24) = v6;
  }

  else
  {
    *(v7 + 16) = *(v8 + 16);
  }

  return a2;
}

uint64_t sub_15534(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *sub_1564C(void *result, int a2, int a3)
{
  v3 = result + 18;
  if (a2 < 0)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[17] = 0;
    result[16] = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_15854()
{
  sub_6320(&qword_64528, &qword_51D78);
  sub_6320(&qword_64520, &qword_51D70);
  sub_BBF0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void *sub_1592C(const void *a1, void *a2)
{
  v6 = sub_51450();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_23FC(&qword_64640, &qword_52260);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_15A54()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_15A9C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_15B90;

  return sub_12634(a1, v6);
}

uint64_t sub_15B90()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_15CB8()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_15D00(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_15DF4;

  return sub_12634(a1, v6);
}

uint64_t sub_15DF4()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_15F1C()
{
  v3 = *(sub_50A70() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_15FE8()
{
  v1 = *(sub_50A70() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_EF8C(v2);
}

uint64_t sub_160B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_16100()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1614C()
{
  v3 = *(sub_50A70() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_16218()
{
  v1 = *(sub_50A70() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_F040(v2);
}

uint64_t sub_162E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_16330()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1637C()
{
  v2 = qword_64668;
  if (!qword_64668)
  {
    sub_50A70();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64668);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_163FC()
{
  v3 = *(sub_50A40() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_164C8()
{
  v1 = *(sub_50A40() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_F0F4(v2);
}

uint64_t sub_1652C()
{
  v3 = *(sub_50A70() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_165F8()
{
  v1 = *(sub_50A70() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_F1A8(v2);
}

uint64_t sub_166C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_16710()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_167C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_16810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1685C()
{
  v2 = qword_64670;
  if (!qword_64670)
  {
    sub_50AB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64670);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_168DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  v8 = *(v0 + 72);

  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  sub_3238();
  v11 = *(v0 + 96);

  v12 = *(v0 + 104);

  v13 = *(v0 + 120);

  v14 = *(v0 + 136);

  v15 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_16994()
{
  v3 = *(sub_50A40() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_16A60()
{
  v1 = *(sub_50A40() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_F29C(v2);
}

uint64_t sub_16B2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_16B78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_16BC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_16C78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_16CC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_16D78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_16DC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_16E3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  v8 = *(v0 + 72);

  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  sub_3238();
  v11 = *(v0 + 96);

  v12 = *(v0 + 104);

  v13 = *(v0 + 120);

  v14 = *(v0 + 136);

  v15 = *(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_16EF4()
{
  v3 = *(sub_50B30() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_16FC0()
{
  v1 = *(sub_50B30() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1175C(v2);
}

uint64_t sub_1708C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_170D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_17124()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_171D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_17224()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_172D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_17324()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_17370(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t sub_17410(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_174A8(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

void *sub_174D4(const void *a1, void *a2)
{
  v6 = sub_50B30();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_23FC(&qword_644D8, &qword_51D28);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_175FC(const void *a1, void *a2)
{
  v6 = sub_50B30();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_23FC(&qword_644D8, &qword_51D28);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_17724(uint64_t a1)
{
  v1 = sub_23FC(&qword_645F0, &qword_51DD8);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    sub_23FC(&qword_64688, &qword_52160);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_23FC(&qword_64658, &unk_51E90);
      (*(*(v5 - 8) + 8))(a1);
      v9 = (a1 + *(sub_23FC(&qword_64600, &qword_51DE0) + 36));
      if (*v9)
      {
        v6 = v9[1];
      }

      if (v9[2])
      {
        v7 = v9[3];
      }
    }

    else
    {
      v2 = sub_23FC(&qword_64658, &unk_51E90);
      (*(*(v2 - 8) + 8))(a1);
      v10 = (a1 + *(sub_23FC(&qword_64600, &qword_51DE0) + 36));
      if (*v10)
      {
        v3 = v10[1];
      }

      if (v10[2])
      {
        v4 = v10[3];
      }
    }
  }

  return a1;
}

char *sub_17918(char *a1, char *a2)
{
  v10 = sub_23FC(&qword_645F0, &qword_51DD8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1, 1))
  {
    v6 = sub_23FC(&qword_645D8, &qword_51DD0);
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    sub_23FC(&qword_64688, &qword_52160);
    swift_getEnumCaseMultiPayload();
    v2 = sub_23FC(&qword_64658, &unk_51E90);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = sub_23FC(&qword_64600, &qword_51DE0);
    v4 = &a2[*(v3 + 36)];
    v5 = &a1[*(v3 + 36)];
    *v4 = *v5;
    *(v4 + 1) = *(v5 + 1);
    swift_storeEnumTagMultiPayload();
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  return a2;
}

char *sub_17B78(char *a1, char *a2)
{
  v24 = sub_23FC(&qword_645F0, &qword_51DD8);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(a1, 1))
  {
    v8 = sub_23FC(&qword_645D8, &qword_51DD0);
    memcpy(a2, a1, *(*(v8 - 8) + 64));
  }

  else
  {
    sub_23FC(&qword_64688, &qword_52160);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = sub_23FC(&qword_64658, &unk_51E90);
      (*(*(v4 - 8) + 16))(a2, a1);
      v5 = sub_23FC(&qword_64600, &qword_51DE0);
      v14 = &a2[*(v5 + 36)];
      v15 = &a1[*(v5 + 36)];
      if (*v15)
      {
        v12 = *v15;
        v13 = *(v15 + 1);

        *v14 = v12;
        *(v14 + 1) = v13;
      }

      else
      {
        v6 = &a2[*(v5 + 36)];
        v7 = &a1[*(v5 + 36)];
        *v14 = *v15;
      }

      if (*(v15 + 2))
      {
        v10 = *(v15 + 2);
        v11 = *(v15 + 3);

        *(v14 + 2) = v10;
        *(v14 + 3) = v11;
      }

      else
      {
        *(v14 + 1) = *(v15 + 1);
      }
    }

    else
    {
      v2 = sub_23FC(&qword_64658, &unk_51E90);
      (*(*(v2 - 8) + 16))(a2, a1);
      v3 = sub_23FC(&qword_64600, &qword_51DE0);
      v20 = &a2[*(v3 + 36)];
      v21 = &a1[*(v3 + 36)];
      if (*v21)
      {
        v18 = *v21;
        v19 = *(v21 + 1);

        *v20 = v18;
        *(v20 + 1) = v19;
      }

      else
      {
        *v20 = *v21;
      }

      if (*(v21 + 2))
      {
        v16 = *(v21 + 2);
        v17 = *(v21 + 3);

        *(v20 + 2) = v16;
        *(v20 + 3) = v17;
      }

      else
      {
        *(v20 + 1) = *(v21 + 1);
      }
    }

    swift_storeEnumTagMultiPayload();
    (*(v25 + 56))(a2, 0, 1, v24);
  }

  return a2;
}

void *sub_17F10(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_18020(uint64_t a1)
{
  v1 = sub_50A90();
  (*(*(v1 - 8) + 8))(a1);
  v5 = (a1 + *(sub_23FC(&qword_645C0, &qword_51DC8) + 36));
  v2 = *v5;

  v3 = v5[1];

  return a1;
}

uint64_t *sub_180B8(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[2];

  v3 = a1[4];

  v4 = a1[7];

  return a1;
}

uint64_t *sub_18108(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[2];

  v3 = a1[4];

  v4 = a1[7];

  v5 = a1[8];

  v6 = a1[9];

  return a1;
}

unint64_t sub_181A0()
{
  v2 = qword_646A0;
  if (!qword_646A0)
  {
    sub_6320(&qword_64698, &qword_52170);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_646A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_18228()
{
  v2 = qword_646B0;
  if (!qword_646B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_646B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_182A0(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[2];

  v3 = a1[4];

  v4 = a1[6];

  v5 = a1[9];

  return a1;
}

unint64_t sub_182FC()
{
  v2 = qword_646B8;
  if (!qword_646B8)
  {
    sub_50C50();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_646B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1837C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  v5 = a1[2];
  v6 = *(a1 + 24);

  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  v7 = a1[4];
  v8 = *(a1 + 40);

  *(a2 + 32) = v7;
  *(a2 + 40) = v8 & 1;
  v10 = a1[6];
  v11 = *(a1 + 56);

  *(a2 + 48) = v10;
  *(a2 + 56) = v11 & 1;
  *(a2 + 64) = *(a1 + 64);
  v13 = a1[9];

  result = a2;
  *(a2 + 72) = v13;
  return result;
}

void *sub_184A8(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_184E0()
{
  v3 = *v0;
  v2 = *(v0 + 8);

  sub_23FC(&qword_646C0, &qword_53300);
  sub_50DF0();

  return v4;
}

uint64_t sub_1856C()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_185A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_50F10();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = sub_50E90();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

uint64_t sub_186DC()
{
  v2 = *v0;
  v3 = *(v0 + 8);

  return v2;
}

uint64_t sub_18720(uint64_t a1, char a2)
{

  v3 = *v2;
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_187A0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_23FC(&qword_646C8, &qword_53340);
  sub_50DF0();

  return v4;
}

uint64_t sub_1882C()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_18868()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t sub_188AC(uint64_t a1, char a2)
{

  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
}

uint64_t sub_1892C()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_23FC(&qword_646D0, &qword_52220);
  sub_50DF0();

  return v4;
}

uint64_t sub_189B8()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_189F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_50F10();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = sub_50ED0();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

uint64_t sub_18B28()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t sub_18B6C(uint64_t a1, char a2)
{

  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
}

uint64_t AutomaticUpdatesView.mobileStatefulManager.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v6 = v0;
  memcpy(v5, __dst, sizeof(v5));
  sub_184E0();
  v3 = sub_50B90();

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v2 = v4;
  }

  else
  {
    _objc_release(v3);
    v2 = 0;
  }

  if (v2)
  {
    return v2;
  }

  sub_51350("The AutomaticUpdatesView except to have a mobile stateful manager", 0x41uLL, 1);
  result = sub_51620();
  __break(1u);
  return result;
}

uint64_t sub_18D58()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F68(__dst, v7);
  sub_51410();
  v2 = sub_51400();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = &protocol witness table for MainActor;
  memcpy(v4 + 4, __dst, 0x40uLL);
  sub_18F68(__dst, v6);
  v3 = sub_51400();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = &protocol witness table for MainActor;
  memcpy(v5 + 4, __dst, 0x40uLL);
  sub_511B0();
  return v8;
}

uint64_t sub_18EC0(int a1, int a2, void *__src)
{
  v6 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v4 = sub_187A0();
  swift_getKeyPath();
  (*(*v4 + 200))();
}

uint64_t sub_18F68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  v5 = a1[2];
  v6 = *(a1 + 24);

  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  v8 = a1[4];
  v9 = *(a1 + 40);

  *(a2 + 32) = v8;
  *(a2 + 40) = v9 & 1;
  *(a2 + 48) = *(a1 + 48);
  v11 = a1[7];

  result = a2;
  *(a2 + 56) = v11;
  return result;
}

uint64_t sub_1905C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return swift_deallocObject();
}

void sub_190CC(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 automaticUpdateEnabled];
  _objc_release(v2);
}

void sub_19138(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  *a2;
  [v2 setAutomaticUpdateEnabled:v3 & 1];
  _objc_release(v2);
}

uint64_t *sub_191A4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v33 = a1;
  v32 = a4;
  v41 = sub_40D64;
  v43 = sub_40E18;
  v45 = sub_40E64;
  v49 = sub_40EB0;
  v51 = sub_40D9C;
  v53 = sub_40DD0;
  v56 = sub_40EFC;
  v69 = 0;
  v68 = 0;
  v31 = 0;
  v34 = sub_50DB0();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = v22 - v37;
  v39 = *__chkstk_darwin(v33);
  v69 = v39 & 1;
  v68 = v4;
  sub_50D90();
  v40 = 17;
  v47 = 7;
  v42 = swift_allocObject();
  *(v42 + 16) = v39;
  v60 = sub_50DA0();
  v61 = sub_51480();
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = 4;
  v46 = 32;
  v5 = swift_allocObject();
  v6 = v42;
  v44 = v5;
  *(v5 + 16) = v41;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v44;
  v48 = v7;
  *(v7 + 16) = v43;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v48;
  v50 = v9;
  *(v9 + 16) = v45;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v50;
  v57 = v11;
  *(v11 + 16) = v49;
  *(v11 + 24) = v12;
  v59 = sub_23FC(&qword_64648, &qword_51E60);
  v55 = sub_51650();
  v58 = v13;

  v14 = v52;
  v15 = v58;
  *v58 = v51;
  v15[1] = v14;

  v16 = v54;
  v17 = v58;
  v58[2] = v53;
  v17[3] = v16;

  v18 = v57;
  v19 = v58;
  v58[4] = v56;
  v19[5] = v18;
  sub_1489C();

  if (os_log_type_enabled(v60, v61))
  {
    v20 = v31;
    v24 = sub_514F0();
    v22[3] = sub_23FC(&qword_64650, &unk_53930);
    v23 = 0;
    v25 = sub_121D4(0);
    v26 = sub_121D4(v23);
    v27 = &v66;
    v66 = v24;
    v28 = &v65;
    v65 = v25;
    v29 = &v64;
    v64 = v26;
    sub_12228(0, &v66);
    sub_12228(1, v27);
    v62 = v51;
    v63 = v52;
    sub_1223C(&v62, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v62 = v53;
      v63 = v54;
      sub_1223C(&v62, &v66, &v65, &v64);
      v22[1] = 0;
      v62 = v56;
      v63 = v57;
      sub_1223C(&v62, &v66, &v65, &v64);
      _os_log_impl(&dword_0, v60, v61, "User Action: Sets %{BOOL}d for automatic Update in AutomaticUpdatesView", v24, 8u);
      v22[0] = 0;
      sub_12288(v25);
      sub_12288(v26);
      sub_514D0();
    }
  }

  else
  {
  }

  _objc_release(v60);
  (*(v35 + 8))(v38, v34);
  memcpy(__dst, v32, sizeof(__dst));
  return sub_19918(v39 & 1);
}

uint64_t sub_198A0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t *sub_19918(unsigned int a1)
{
  v196 = a1;
  v159 = sub_32D50;
  v160 = sub_35E40;
  v161 = sub_35E8C;
  v162 = sub_32D58;
  v163 = sub_35F8C;
  v164 = sub_32DBC;
  v165 = sub_364E4;
  v166 = sub_36558;
  v167 = sub_365E0;
  v168 = sub_35DC4;
  v169 = sub_35DF8;
  v170 = sub_35ED8;
  v171 = sub_35F10;
  v172 = sub_35F44;
  v173 = sub_35FD8;
  v174 = sub_36010;
  v175 = sub_36044;
  v176 = sub_3662C;
  v177 = sub_36770;
  v178 = sub_36858;
  v179 = sub_368A4;
  v180 = sub_32B74;
  v181 = sub_369A4;
  v182 = sub_367A4;
  v183 = sub_36AA4;
  v184 = sub_36AF0;
  v185 = sub_36B3C;
  v186 = sub_367DC;
  v187 = sub_36810;
  v188 = sub_368F0;
  v189 = sub_36928;
  v190 = sub_3695C;
  v191 = sub_369F0;
  v192 = sub_36A28;
  v193 = sub_36A5C;
  v194 = sub_36B88;
  v223 = 0;
  v195 = 0;
  v197 = sub_50DB0();
  v198 = *(v197 - 8);
  v199 = v197 - 8;
  v200 = (*(v198 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v196);
  v201 = v80 - v200;
  v202 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v203 = v80 - v202;
  v223 = v3 & 1;
  v204 = __dst;
  v205 = 64;
  memcpy(__dst, v4, sizeof(__dst));
  memcpy(v222, __dst, sizeof(v222));
  v206 = sub_184E0();
  v207 = sub_50B40();

  if (v207)
  {
    sub_50D90();
    v131 = __dst;
    sub_18F68(__dst, &v214);
    v142 = 7;
    v132 = swift_allocObject();
    memcpy((v132 + 16), v131, 0x40uLL);
    v138 = 17;
    v139 = swift_allocObject();
    *(v139 + 16) = v196;
    v157 = sub_50DA0();
    v158 = sub_51480();
    v145 = swift_allocObject();
    v135 = 32;
    *(v145 + 16) = 32;
    v146 = swift_allocObject();
    v136 = 8;
    *(v146 + 16) = 8;
    v141 = 32;
    v5 = swift_allocObject();
    v6 = v132;
    v133 = v5;
    *(v5 + 16) = v177;
    *(v5 + 24) = v6;
    v7 = swift_allocObject();
    v8 = v133;
    v134 = v7;
    *(v7 + 16) = v178;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v134;
    v147 = v9;
    *(v9 + 16) = v179;
    *(v9 + 24) = v10;
    v148 = swift_allocObject();
    *(v148 + 16) = v135;
    v149 = swift_allocObject();
    *(v149 + 16) = v136;
    v11 = swift_allocObject();
    v137 = v11;
    *(v11 + 16) = v180;
    *(v11 + 24) = 0;
    v12 = swift_allocObject();
    v13 = v137;
    v150 = v12;
    *(v12 + 16) = v181;
    *(v12 + 24) = v13;
    v151 = swift_allocObject();
    *(v151 + 16) = 0;
    v152 = swift_allocObject();
    *(v152 + 16) = 4;
    v14 = swift_allocObject();
    v15 = v139;
    v140 = v14;
    *(v14 + 16) = v182;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v140;
    v143 = v16;
    *(v16 + 16) = v183;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v143;
    v144 = v18;
    *(v18 + 16) = v184;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v144;
    v154 = v20;
    *(v20 + 16) = v185;
    *(v20 + 24) = v21;
    v156 = sub_23FC(&qword_64648, &qword_51E60);
    v153 = sub_51650();
    v155 = v22;

    v23 = v145;
    v24 = v155;
    *v155 = v186;
    v24[1] = v23;

    v25 = v146;
    v26 = v155;
    v155[2] = v187;
    v26[3] = v25;

    v27 = v147;
    v28 = v155;
    v155[4] = v188;
    v28[5] = v27;

    v29 = v148;
    v30 = v155;
    v155[6] = v189;
    v30[7] = v29;

    v31 = v149;
    v32 = v155;
    v155[8] = v190;
    v32[9] = v31;

    v33 = v150;
    v34 = v155;
    v155[10] = v191;
    v34[11] = v33;

    v35 = v151;
    v36 = v155;
    v155[12] = v192;
    v36[13] = v35;

    v37 = v152;
    v38 = v155;
    v155[14] = v193;
    v38[15] = v37;

    v39 = v154;
    v40 = v155;
    v155[16] = v194;
    v40[17] = v39;
    sub_1489C();

    if (os_log_type_enabled(v157, v158))
    {
      v41 = v195;
      v124 = sub_514F0();
      v123 = sub_23FC(&qword_64650, &unk_53930);
      v125 = sub_121D4(0);
      v126 = sub_121D4(2);
      v127 = &v212;
      v212 = v124;
      v128 = &v211;
      v211 = v125;
      v129 = &v210;
      v210 = v126;
      sub_12228(2, &v212);
      sub_12228(3, v127);
      v208 = v186;
      v209 = v145;
      sub_1223C(&v208, v127, v128, v129);
      v130 = v41;
      if (v41)
      {

        __break(1u);
      }

      else
      {
        v208 = v187;
        v209 = v146;
        sub_1223C(&v208, &v212, &v211, &v210);
        v122 = 0;
        v208 = v188;
        v209 = v147;
        sub_1223C(&v208, &v212, &v211, &v210);
        v121 = 0;
        v208 = v189;
        v209 = v148;
        sub_1223C(&v208, &v212, &v211, &v210);
        v120 = 0;
        v208 = v190;
        v209 = v149;
        sub_1223C(&v208, &v212, &v211, &v210);
        v119 = 0;
        v208 = v191;
        v209 = v150;
        sub_1223C(&v208, &v212, &v211, &v210);
        v118 = 0;
        v208 = v192;
        v209 = v151;
        sub_1223C(&v208, &v212, &v211, &v210);
        v117 = 0;
        v208 = v193;
        v209 = v152;
        sub_1223C(&v208, &v212, &v211, &v210);
        v116 = 0;
        v208 = v194;
        v209 = v154;
        sub_1223C(&v208, &v212, &v211, &v210);
        _os_log_impl(&dword_0, v157, v158, "%s.%s: Toggeled automatic update enabled while targetted update is scheduled: %{BOOL}d", v124, 0x1Cu);
        sub_12288(v125);
        sub_12288(v126);
        sub_514D0();
      }
    }

    else
    {
    }

    _objc_release(v157);
    (*(v198 + 8))(v203, v197);
    memcpy(v213, __dst, sizeof(v213));
    return sub_32BAC(v196 & 1);
  }

  else
  {
    sub_50D90();
    v88 = __dst;
    sub_18F68(__dst, v221);
    v99 = 7;
    v89 = swift_allocObject();
    memcpy((v89 + 16), v88, 0x40uLL);
    v95 = 17;
    v96 = swift_allocObject();
    *(v96 + 16) = v196;
    v114 = sub_50DA0();
    v115 = sub_51480();
    v102 = swift_allocObject();
    v92 = 32;
    *(v102 + 16) = 32;
    v103 = swift_allocObject();
    v93 = 8;
    *(v103 + 16) = 8;
    v98 = 32;
    v43 = swift_allocObject();
    v44 = v89;
    v90 = v43;
    *(v43 + 16) = v159;
    *(v43 + 24) = v44;
    v45 = swift_allocObject();
    v46 = v90;
    v91 = v45;
    *(v45 + 16) = v160;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v91;
    v104 = v47;
    *(v47 + 16) = v161;
    *(v47 + 24) = v48;
    v105 = swift_allocObject();
    *(v105 + 16) = v92;
    v106 = swift_allocObject();
    *(v106 + 16) = v93;
    v49 = swift_allocObject();
    v94 = v49;
    *(v49 + 16) = v162;
    *(v49 + 24) = 0;
    v50 = swift_allocObject();
    v51 = v94;
    v107 = v50;
    *(v50 + 16) = v163;
    *(v50 + 24) = v51;
    v108 = swift_allocObject();
    *(v108 + 16) = 0;
    v109 = swift_allocObject();
    *(v109 + 16) = 4;
    v52 = swift_allocObject();
    v53 = v96;
    v97 = v52;
    *(v52 + 16) = v164;
    *(v52 + 24) = v53;
    v54 = swift_allocObject();
    v55 = v97;
    v100 = v54;
    *(v54 + 16) = v165;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v100;
    v101 = v56;
    *(v56 + 16) = v166;
    *(v56 + 24) = v57;
    v58 = swift_allocObject();
    v59 = v101;
    v111 = v58;
    *(v58 + 16) = v167;
    *(v58 + 24) = v59;
    v113 = sub_23FC(&qword_64648, &qword_51E60);
    v110 = sub_51650();
    v112 = v60;

    v61 = v102;
    v62 = v112;
    *v112 = v168;
    v62[1] = v61;

    v63 = v103;
    v64 = v112;
    v112[2] = v169;
    v64[3] = v63;

    v65 = v104;
    v66 = v112;
    v112[4] = v170;
    v66[5] = v65;

    v67 = v105;
    v68 = v112;
    v112[6] = v171;
    v68[7] = v67;

    v69 = v106;
    v70 = v112;
    v112[8] = v172;
    v70[9] = v69;

    v71 = v107;
    v72 = v112;
    v112[10] = v173;
    v72[11] = v71;

    v73 = v108;
    v74 = v112;
    v112[12] = v174;
    v74[13] = v73;

    v75 = v109;
    v76 = v112;
    v112[14] = v175;
    v76[15] = v75;

    v77 = v111;
    v78 = v112;
    v112[16] = v176;
    v78[17] = v77;
    sub_1489C();

    if (os_log_type_enabled(v114, v115))
    {
      v79 = v195;
      v81 = sub_514F0();
      v80[7] = sub_23FC(&qword_64650, &unk_53930);
      v82 = sub_121D4(0);
      v83 = sub_121D4(2);
      v84 = &v219;
      v219 = v81;
      v85 = &v218;
      v218 = v82;
      v86 = &v217;
      v217 = v83;
      sub_12228(2, &v219);
      sub_12228(3, v84);
      v215 = v168;
      v216 = v102;
      sub_1223C(&v215, v84, v85, v86);
      v87 = v79;
      if (v79)
      {

        __break(1u);
      }

      else
      {
        v215 = v169;
        v216 = v103;
        sub_1223C(&v215, &v219, &v218, &v217);
        v80[6] = 0;
        v215 = v170;
        v216 = v104;
        sub_1223C(&v215, &v219, &v218, &v217);
        v80[5] = 0;
        v215 = v171;
        v216 = v105;
        sub_1223C(&v215, &v219, &v218, &v217);
        v80[4] = 0;
        v215 = v172;
        v216 = v106;
        sub_1223C(&v215, &v219, &v218, &v217);
        v80[3] = 0;
        v215 = v173;
        v216 = v107;
        sub_1223C(&v215, &v219, &v218, &v217);
        v80[2] = 0;
        v215 = v174;
        v216 = v108;
        sub_1223C(&v215, &v219, &v218, &v217);
        v80[1] = 0;
        v215 = v175;
        v216 = v109;
        sub_1223C(&v215, &v219, &v218, &v217);
        v80[0] = 0;
        v215 = v176;
        v216 = v111;
        sub_1223C(&v215, &v219, &v218, &v217);
        _os_log_impl(&dword_0, v114, v115, "%s.%s: Toggeled automatic update enabled while targetted update is not scheduled: %{BOOL}d", v81, 0x1Cu);
        sub_12288(v82);
        sub_12288(v83);
        sub_514D0();
      }
    }

    else
    {
    }

    _objc_release(v114);
    (*(v198 + 8))(v201, v197);
    memcpy(v220, __dst, sizeof(v220));
    return sub_32DC8(v196 & 1);
  }
}

uint64_t sub_1AEF8()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F68(__dst, v7);
  sub_51410();
  v2 = sub_51400();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = &protocol witness table for MainActor;
  memcpy(v4 + 4, __dst, 0x40uLL);
  sub_18F68(__dst, v6);
  v3 = sub_51400();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = &protocol witness table for MainActor;
  memcpy(v5 + 4, __dst, 0x40uLL);
  sub_511B0();
  return v8;
}

uint64_t sub_1B060(int a1, int a2, void *__src)
{
  v6 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v4 = sub_187A0();
  swift_getKeyPath();
  (*(*v4 + 200))();
}

void sub_1B108(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 autoInstallSecurityResponse];
  _objc_release(v2);
}

void sub_1B174(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  *a2;
  [v2 setAutoInstallSecurityResponse:v3 & 1];
  _objc_release(v2);
}

uint64_t *sub_1B1E0(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v33 = a1;
  v32 = a4;
  v41 = sub_40AC8;
  v43 = sub_40B7C;
  v45 = sub_40BC8;
  v49 = sub_40C14;
  v51 = sub_40B00;
  v53 = sub_40B34;
  v56 = sub_40C60;
  v69 = 0;
  v68 = 0;
  v31 = 0;
  v34 = sub_50DB0();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = v22 - v37;
  v39 = *__chkstk_darwin(v33);
  v69 = v39 & 1;
  v68 = v4;
  sub_50D90();
  v40 = 17;
  v47 = 7;
  v42 = swift_allocObject();
  *(v42 + 16) = v39;
  v60 = sub_50DA0();
  v61 = sub_51480();
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = 4;
  v46 = 32;
  v5 = swift_allocObject();
  v6 = v42;
  v44 = v5;
  *(v5 + 16) = v41;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v44;
  v48 = v7;
  *(v7 + 16) = v43;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v48;
  v50 = v9;
  *(v9 + 16) = v45;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v50;
  v57 = v11;
  *(v11 + 16) = v49;
  *(v11 + 24) = v12;
  v59 = sub_23FC(&qword_64648, &qword_51E60);
  v55 = sub_51650();
  v58 = v13;

  v14 = v52;
  v15 = v58;
  *v58 = v51;
  v15[1] = v14;

  v16 = v54;
  v17 = v58;
  v58[2] = v53;
  v17[3] = v16;

  v18 = v57;
  v19 = v58;
  v58[4] = v56;
  v19[5] = v18;
  sub_1489C();

  if (os_log_type_enabled(v60, v61))
  {
    v20 = v31;
    v24 = sub_514F0();
    v22[3] = sub_23FC(&qword_64650, &unk_53930);
    v23 = 0;
    v25 = sub_121D4(0);
    v26 = sub_121D4(v23);
    v27 = &v66;
    v66 = v24;
    v28 = &v65;
    v65 = v25;
    v29 = &v64;
    v64 = v26;
    sub_12228(0, &v66);
    sub_12228(1, v27);
    v62 = v51;
    v63 = v52;
    sub_1223C(&v62, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v62 = v53;
      v63 = v54;
      sub_1223C(&v62, &v66, &v65, &v64);
      v22[1] = 0;
      v62 = v56;
      v63 = v57;
      sub_1223C(&v62, &v66, &v65, &v64);
      _os_log_impl(&dword_0, v60, v61, "User Action: Sets %{BOOL}d for auto Install Security Response in AutomaticUpdatesView", v24, 8u);
      v22[0] = 0;
      sub_12288(v25);
      sub_12288(v26);
      sub_514D0();
    }
  }

  else
  {
  }

  _objc_release(v60);
  (*(v35 + 8))(v38, v34);
  memcpy(__dst, v32, sizeof(__dst));
  return sub_1B8E4(v39 & 1);
}

uint64_t *sub_1B8E4(char a1)
{
  v9 = a1 & 1;
  memcpy(__dst, v1, sizeof(__dst));
  v8 = v1;
  memcpy(v7, __dst, sizeof(v7));
  v2 = sub_25A44();
  sub_25A50(a1 & 1, 2, v2 & 1);
  memcpy(v6, __dst, sizeof(v6));
  v3 = sub_25A44();
  return sub_25A50(a1 & 1, 3, v3 & 1);
}

uint64_t sub_1B9A0()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F68(__dst, v7);
  sub_51410();
  v2 = sub_51400();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = &protocol witness table for MainActor;
  memcpy(v4 + 4, __dst, 0x40uLL);
  sub_18F68(__dst, v6);
  v3 = sub_51400();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = &protocol witness table for MainActor;
  memcpy(v5 + 4, __dst, 0x40uLL);
  sub_511B0();
  return v8;
}

uint64_t sub_1BB08(int a1, int a2, void *__src)
{
  v6 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v4 = sub_187A0();
  swift_getKeyPath();
  (*(*v4 + 200))();
}

void sub_1BBB0(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 automaticDownloadEnabled];
  _objc_release(v2);
}

void sub_1BC1C(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  *a2;
  [v2 setAutomaticDownloadEnabled:v3 & 1];
  _objc_release(v2);
}

uint64_t sub_1BC88(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v33 = a1;
  v32 = a4;
  v41 = sub_40890;
  v43 = sub_40944;
  v45 = sub_40990;
  v49 = sub_409DC;
  v51 = sub_408C8;
  v53 = sub_408FC;
  v56 = sub_40A28;
  v69 = 0;
  v68 = 0;
  v31 = 0;
  v34 = sub_50DB0();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = v22 - v37;
  v39 = *__chkstk_darwin(v33);
  v69 = v39 & 1;
  v68 = v4;
  sub_50D90();
  v40 = 17;
  v47 = 7;
  v42 = swift_allocObject();
  *(v42 + 16) = v39;
  v60 = sub_50DA0();
  v61 = sub_51480();
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = 4;
  v46 = 32;
  v5 = swift_allocObject();
  v6 = v42;
  v44 = v5;
  *(v5 + 16) = v41;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v44;
  v48 = v7;
  *(v7 + 16) = v43;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v48;
  v50 = v9;
  *(v9 + 16) = v45;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v50;
  v57 = v11;
  *(v11 + 16) = v49;
  *(v11 + 24) = v12;
  v59 = sub_23FC(&qword_64648, &qword_51E60);
  v55 = sub_51650();
  v58 = v13;

  v14 = v52;
  v15 = v58;
  *v58 = v51;
  v15[1] = v14;

  v16 = v54;
  v17 = v58;
  v58[2] = v53;
  v17[3] = v16;

  v18 = v57;
  v19 = v58;
  v58[4] = v56;
  v19[5] = v18;
  sub_1489C();

  if (os_log_type_enabled(v60, v61))
  {
    v20 = v31;
    v24 = sub_514F0();
    v22[3] = sub_23FC(&qword_64650, &unk_53930);
    v23 = 0;
    v25 = sub_121D4(0);
    v26 = sub_121D4(v23);
    v27 = &v66;
    v66 = v24;
    v28 = &v65;
    v65 = v25;
    v29 = &v64;
    v64 = v26;
    sub_12228(0, &v66);
    sub_12228(1, v27);
    v62 = v51;
    v63 = v52;
    sub_1223C(&v62, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v62 = v53;
      v63 = v54;
      sub_1223C(&v62, &v66, &v65, &v64);
      v22[1] = 0;
      v62 = v56;
      v63 = v57;
      sub_1223C(&v62, &v66, &v65, &v64);
      _os_log_impl(&dword_0, v60, v61, "User Action: Sets %{BOOL}d for automatic Download in AutomaticUpdatesView", v24, 8u);
      v22[0] = 0;
      sub_12288(v25);
      sub_12288(v26);
      sub_514D0();
    }
  }

  else
  {
  }

  _objc_release(v60);
  (*(v35 + 8))(v38, v34);
  memcpy(__dst, v32, sizeof(__dst));
  return sub_1C38C(v39 & 1);
}

uint64_t sub_1C38C(unsigned int a1)
{
  v273 = a1;
  v274 = sub_36E14;
  v276 = sub_36EFC;
  v278 = sub_36F48;
  v282 = sub_32F48;
  v283 = sub_37048;
  v286 = sub_36E48;
  v288 = sub_37148;
  v290 = sub_37194;
  v294 = sub_371E0;
  v296 = sub_36E80;
  v298 = sub_36EB4;
  v300 = sub_36F94;
  v302 = sub_36FCC;
  v304 = sub_37000;
  v306 = sub_37094;
  v308 = sub_370CC;
  v310 = sub_37100;
  v313 = sub_3722C;
  v228 = sub_372F8;
  v229 = sub_373E0;
  v230 = sub_3742C;
  v231 = sub_33068;
  v232 = sub_3752C;
  v233 = sub_3732C;
  v234 = sub_3762C;
  v235 = sub_37678;
  v236 = sub_376C4;
  v237 = sub_37364;
  v238 = sub_37398;
  v239 = sub_37478;
  v240 = sub_374B0;
  v241 = sub_374E4;
  v242 = sub_37578;
  v243 = sub_375B0;
  v244 = sub_375E4;
  v245 = sub_37710;
  v246 = &unk_52270;
  v247 = sub_37A34;
  v248 = sub_37AE4;
  v249 = sub_37B30;
  v250 = sub_330B0;
  v251 = sub_37C30;
  v252 = sub_37A68;
  v253 = sub_37A9C;
  v254 = sub_37B7C;
  v255 = sub_37BB4;
  v256 = sub_37BE8;
  v257 = sub_37C7C;
  v344 = 0;
  v341 = 0;
  v258 = 0;
  v1 = sub_23FC(&qword_64640, &qword_52260);
  v259 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v260 = &v113 - v259;
  v261 = sub_50DB0();
  v262 = *(v261 - 8);
  v263 = v261 - 8;
  v264 = (*(v262 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v273);
  v265 = &v113 - v264;
  v266 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v267 = &v113 - v266;
  v268 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v270 = &v113 - v268;
  v269 = 1;
  v344 = v6 & 1;
  v271 = __dst;
  v272 = 64;
  memcpy(__dst, v7, sizeof(__dst));
  memcpy(v343, __dst, sizeof(v343));
  v8 = sub_25A44();
  sub_25A50(v273 & 1, v269, v8 & 1);
  sub_50D90();
  sub_18F68(v271, v342);
  v292 = 7;
  v275 = swift_allocObject();
  memcpy((v275 + 16), v271, v272);
  v285 = 17;
  v287 = swift_allocObject();
  *(v287 + 16) = v273;
  v317 = sub_50DA0();
  v318 = sub_51490();
  v297 = swift_allocObject();
  v280 = 32;
  *(v297 + 16) = 32;
  v299 = swift_allocObject();
  v281 = 8;
  *(v299 + 16) = 8;
  v291 = 32;
  v9 = swift_allocObject();
  v10 = v275;
  v277 = v9;
  *(v9 + 16) = v274;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v277;
  v279 = v11;
  *(v11 + 16) = v276;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v279;
  v301 = v13;
  *(v13 + 16) = v278;
  *(v13 + 24) = v14;
  v303 = swift_allocObject();
  *(v303 + 16) = v280;
  v305 = swift_allocObject();
  *(v305 + 16) = v281;
  v15 = swift_allocObject();
  v284 = v15;
  *(v15 + 16) = v282;
  *(v15 + 24) = 0;
  v16 = swift_allocObject();
  v17 = v284;
  v307 = v16;
  *(v16 + 16) = v283;
  *(v16 + 24) = v17;
  v309 = swift_allocObject();
  *(v309 + 16) = 0;
  v311 = swift_allocObject();
  *(v311 + 16) = 4;
  v18 = swift_allocObject();
  v19 = v287;
  v289 = v18;
  *(v18 + 16) = v286;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v289;
  v293 = v20;
  *(v20 + 16) = v288;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v293;
  v295 = v22;
  *(v22 + 16) = v290;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v295;
  v314 = v24;
  *(v24 + 16) = v294;
  *(v24 + 24) = v25;
  v316 = sub_23FC(&qword_64648, &qword_51E60);
  v312 = sub_51650();
  v315 = v26;

  v27 = v297;
  v28 = v315;
  *v315 = v296;
  v28[1] = v27;

  v29 = v299;
  v30 = v315;
  v315[2] = v298;
  v30[3] = v29;

  v31 = v301;
  v32 = v315;
  v315[4] = v300;
  v32[5] = v31;

  v33 = v303;
  v34 = v315;
  v315[6] = v302;
  v34[7] = v33;

  v35 = v305;
  v36 = v315;
  v315[8] = v304;
  v36[9] = v35;

  v37 = v307;
  v38 = v315;
  v315[10] = v306;
  v38[11] = v37;

  v39 = v309;
  v40 = v315;
  v315[12] = v308;
  v40[13] = v39;

  v41 = v311;
  v42 = v315;
  v315[14] = v310;
  v42[15] = v41;

  v43 = v314;
  v44 = v315;
  v315[16] = v313;
  v44[17] = v43;
  sub_1489C();

  if (os_log_type_enabled(v317, v318))
  {
    v45 = v258;
    v221 = sub_514F0();
    v220 = sub_23FC(&qword_64650, &unk_53930);
    v222 = sub_121D4(0);
    v223 = sub_121D4(2);
    v224 = &v323;
    v323 = v221;
    v225 = &v322;
    v322 = v222;
    v226 = &v321;
    v321 = v223;
    sub_12228(2, &v323);
    sub_12228(3, v224);
    v319 = v296;
    v320 = v297;
    sub_1223C(&v319, v224, v225, v226);
    v227 = v45;
    if (v45)
    {

      __break(1u);
    }

    else
    {
      v319 = v298;
      v320 = v299;
      sub_1223C(&v319, &v323, &v322, &v321);
      v218 = 0;
      v319 = v300;
      v320 = v301;
      sub_1223C(&v319, &v323, &v322, &v321);
      v217 = 0;
      v319 = v302;
      v320 = v303;
      sub_1223C(&v319, &v323, &v322, &v321);
      v216 = 0;
      v319 = v304;
      v320 = v305;
      sub_1223C(&v319, &v323, &v322, &v321);
      v215 = 0;
      v319 = v306;
      v320 = v307;
      sub_1223C(&v319, &v323, &v322, &v321);
      v214 = 0;
      v319 = v308;
      v320 = v309;
      sub_1223C(&v319, &v323, &v322, &v321);
      v213 = 0;
      v319 = v310;
      v320 = v311;
      sub_1223C(&v319, &v323, &v322, &v321);
      v212 = 0;
      v319 = v313;
      v320 = v314;
      sub_1223C(&v319, &v323, &v322, &v321);
      v211 = 0;
      _os_log_impl(&dword_0, v317, v318, "%s.%s: Assigning %{BOOL}d to automaticDownload.", v221, 0x1Cu);
      sub_12288(v222);
      sub_12288(v223);
      sub_514D0();

      v219 = v211;
    }
  }

  else
  {
    v46 = v258;

    v219 = v46;
  }

  v208 = v219;
  _objc_release(v317);
  v209 = *(v262 + 8);
  v210 = v262 + 8;
  v209(v270, v261);
  if (v273)
  {
    memcpy(&v324[1], __dst, 0x40uLL);
    v47 = sub_187A0();
    v204 = v47;
    KeyPath = swift_getKeyPath();
    (*(*v47 + 200))(v324);
    v206 = v324[0];

    v207 = v206;
  }

  else
  {
    v207 = 0;
  }

  v177 = v207;
  v176 = 1;
  v341 = v207 & 1;
  v174 = __dst;
  v175 = 64;
  memcpy(v340, __dst, sizeof(v340));
  sub_25A50(v207 & 1, 0, 0);
  sub_50D90();
  sub_18F68(v174, &v339);
  v188 = 7;
  v178 = swift_allocObject();
  memcpy((v178 + 16), v174, v175);
  v184 = 17;
  v185 = swift_allocObject();
  *(v185 + 16) = v177 & v176;
  v202 = sub_50DA0();
  v203 = sub_51490();
  v191 = swift_allocObject();
  v181 = 32;
  *(v191 + 16) = 32;
  v192 = swift_allocObject();
  v182 = 8;
  *(v192 + 16) = 8;
  v187 = 32;
  v48 = swift_allocObject();
  v49 = v178;
  v179 = v48;
  *(v48 + 16) = v228;
  *(v48 + 24) = v49;
  v50 = swift_allocObject();
  v51 = v179;
  v180 = v50;
  *(v50 + 16) = v229;
  *(v50 + 24) = v51;
  v52 = swift_allocObject();
  v53 = v180;
  v193 = v52;
  *(v52 + 16) = v230;
  *(v52 + 24) = v53;
  v194 = swift_allocObject();
  *(v194 + 16) = v181;
  v195 = swift_allocObject();
  *(v195 + 16) = v182;
  v54 = swift_allocObject();
  v183 = v54;
  *(v54 + 16) = v231;
  *(v54 + 24) = 0;
  v55 = swift_allocObject();
  v56 = v183;
  v196 = v55;
  *(v55 + 16) = v232;
  *(v55 + 24) = v56;
  v197 = swift_allocObject();
  *(v197 + 16) = 0;
  v198 = swift_allocObject();
  *(v198 + 16) = 4;
  v57 = swift_allocObject();
  v58 = v185;
  v186 = v57;
  *(v57 + 16) = v233;
  *(v57 + 24) = v58;
  v59 = swift_allocObject();
  v60 = v186;
  v189 = v59;
  *(v59 + 16) = v234;
  *(v59 + 24) = v60;
  v61 = swift_allocObject();
  v62 = v189;
  v190 = v61;
  *(v61 + 16) = v235;
  *(v61 + 24) = v62;
  v63 = swift_allocObject();
  v64 = v190;
  v200 = v63;
  *(v63 + 16) = v236;
  *(v63 + 24) = v64;
  v199 = sub_51650();
  v201 = v65;

  v66 = v191;
  v67 = v201;
  *v201 = v237;
  v67[1] = v66;

  v68 = v192;
  v69 = v201;
  v201[2] = v238;
  v69[3] = v68;

  v70 = v193;
  v71 = v201;
  v201[4] = v239;
  v71[5] = v70;

  v72 = v194;
  v73 = v201;
  v201[6] = v240;
  v73[7] = v72;

  v74 = v195;
  v75 = v201;
  v201[8] = v241;
  v75[9] = v74;

  v76 = v196;
  v77 = v201;
  v201[10] = v242;
  v77[11] = v76;

  v78 = v197;
  v79 = v201;
  v201[12] = v243;
  v79[13] = v78;

  v80 = v198;
  v81 = v201;
  v201[14] = v244;
  v81[15] = v80;

  v82 = v200;
  v83 = v201;
  v201[16] = v245;
  v83[17] = v82;
  sub_1489C();

  if (os_log_type_enabled(v202, v203))
  {
    v84 = v208;
    v167 = sub_514F0();
    v166 = sub_23FC(&qword_64650, &unk_53930);
    v168 = sub_121D4(0);
    v169 = sub_121D4(2);
    v170 = &v329;
    v329 = v167;
    v171 = &v328;
    v328 = v168;
    v172 = &v327;
    v327 = v169;
    sub_12228(2, &v329);
    sub_12228(3, v170);
    v325 = v237;
    v326 = v191;
    sub_1223C(&v325, v170, v171, v172);
    v173 = v84;
    if (v84)
    {

      __break(1u);
    }

    else
    {
      v325 = v238;
      v326 = v192;
      sub_1223C(&v325, &v329, &v328, &v327);
      v164 = 0;
      v325 = v239;
      v326 = v193;
      sub_1223C(&v325, &v329, &v328, &v327);
      v163 = 0;
      v325 = v240;
      v326 = v194;
      sub_1223C(&v325, &v329, &v328, &v327);
      v162 = 0;
      v325 = v241;
      v326 = v195;
      sub_1223C(&v325, &v329, &v328, &v327);
      v161 = 0;
      v325 = v242;
      v326 = v196;
      sub_1223C(&v325, &v329, &v328, &v327);
      v160 = 0;
      v325 = v243;
      v326 = v197;
      sub_1223C(&v325, &v329, &v328, &v327);
      v159 = 0;
      v325 = v244;
      v326 = v198;
      sub_1223C(&v325, &v329, &v328, &v327);
      v158 = 0;
      v325 = v245;
      v326 = v200;
      sub_1223C(&v325, &v329, &v328, &v327);
      v157 = 0;
      _os_log_impl(&dword_0, v202, v203, "%s.%s: Assigning %{BOOL}d to automaticUpdate. userSpecified: false", v167, 0x1Cu);
      sub_12288(v168);
      sub_12288(v169);
      sub_514D0();

      v165 = v157;
    }
  }

  else
  {
    v85 = v208;

    v165 = v85;
  }

  v156 = v165;
  _objc_release(v202);
  v209(v267, v261);
  if (v273)
  {
    v135 = __dst;
    v136 = 64;
    memcpy(v336, __dst, sizeof(v336));
    v133 = AutomaticUpdatesView.mobileStatefulManager.getter();
    v134 = [v133 client];
    _objc_release(v133);
    [v134 autoScanAndDownloadIfAvailable:0];
    _objc_release(v134);
    sub_50D90();
    sub_18F68(v135, &v335);
    v144 = 7;
    v137 = swift_allocObject();
    memcpy((v137 + 16), v135, v136);
    v154 = sub_50DA0();
    v155 = sub_51490();
    v141 = 17;
    v146 = swift_allocObject();
    v140 = 32;
    *(v146 + 16) = 32;
    v147 = swift_allocObject();
    v142 = 8;
    *(v147 + 16) = 8;
    v143 = 32;
    v86 = swift_allocObject();
    v87 = v137;
    v138 = v86;
    *(v86 + 16) = v247;
    *(v86 + 24) = v87;
    v88 = swift_allocObject();
    v89 = v138;
    v139 = v88;
    *(v88 + 16) = v248;
    *(v88 + 24) = v89;
    v90 = swift_allocObject();
    v91 = v139;
    v148 = v90;
    *(v90 + 16) = v249;
    *(v90 + 24) = v91;
    v149 = swift_allocObject();
    *(v149 + 16) = v140;
    v150 = swift_allocObject();
    *(v150 + 16) = v142;
    v92 = swift_allocObject();
    v145 = v92;
    *(v92 + 16) = v250;
    *(v92 + 24) = 0;
    v93 = swift_allocObject();
    v94 = v145;
    v152 = v93;
    *(v93 + 16) = v251;
    *(v93 + 24) = v94;
    v151 = sub_51650();
    v153 = v95;

    v96 = v146;
    v97 = v153;
    *v153 = v252;
    v97[1] = v96;

    v98 = v147;
    v99 = v153;
    v153[2] = v253;
    v99[3] = v98;

    v100 = v148;
    v101 = v153;
    v153[4] = v254;
    v101[5] = v100;

    v102 = v149;
    v103 = v153;
    v153[6] = v255;
    v103[7] = v102;

    v104 = v150;
    v105 = v153;
    v153[8] = v256;
    v105[9] = v104;

    v106 = v152;
    v107 = v153;
    v153[10] = v257;
    v107[11] = v106;
    sub_1489C();

    if (os_log_type_enabled(v154, v155))
    {
      v108 = v156;
      v125 = sub_514F0();
      v124 = sub_23FC(&qword_64650, &unk_53930);
      v126 = sub_121D4(0);
      v127 = sub_121D4(2);
      v129 = &v334;
      v334 = v125;
      v130 = &v333;
      v333 = v126;
      v131 = &v332;
      v332 = v127;
      v128 = 2;
      sub_12228(2, &v334);
      sub_12228(v128, v129);
      v330 = v252;
      v331 = v146;
      sub_1223C(&v330, v129, v130, v131);
      v132 = v108;
      if (v108)
      {

        __break(1u);
      }

      else
      {
        v330 = v253;
        v331 = v147;
        sub_1223C(&v330, &v334, &v333, &v332);
        v123 = 0;
        v330 = v254;
        v331 = v148;
        sub_1223C(&v330, &v334, &v333, &v332);
        v122 = 0;
        v330 = v255;
        v331 = v149;
        sub_1223C(&v330, &v334, &v333, &v332);
        v121 = 0;
        v330 = v256;
        v331 = v150;
        sub_1223C(&v330, &v334, &v333, &v332);
        v120 = 0;
        v330 = v257;
        v331 = v152;
        sub_1223C(&v330, &v334, &v333, &v332);
        _os_log_impl(&dword_0, v154, v155, "%s.%s: autoScanAndDownloadIfAvailable(nil) called", v125, 0x16u);
        sub_12288(v126);
        sub_12288(v127);
        sub_514D0();
      }
    }

    else
    {
    }

    _objc_release(v154);
    return (v209)(v265, v261);
  }

  else
  {
    memcpy(v338, __dst, sizeof(v338));
    v118 = sub_184E0();
    v119 = sub_50B40();

    result = v119;
    if (v119)
    {
      sub_51430();
      v115 = 0;
      v110 = sub_51450();
      (*(*(v110 - 8) + 56))(v260, 0, 1);
      v114 = __dst;
      sub_18F68(__dst, &v337);
      v111 = swift_allocObject();
      v112 = v114;
      v116 = v111;
      v111[2] = 0;
      v111[3] = 0;
      memcpy(v111 + 4, v112, 0x40uLL);
      v117 = sub_F350(v115, v115, v260, v246, v116, &type metadata for () + 8);
      sub_14BA4(v260);
    }
  }

  return result;
}

uint64_t sub_1E3B0()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  sub_23FC(&qword_646E0, &unk_522D8);
  sub_51140();

  return v4;
}

uint64_t sub_1E434(char a1)
{
  v7 = 0;
  v8 = a1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);

  v5[0] = v3;
  v6 = v4;
  sub_23FC(&qword_646E0, &unk_522D8);
  sub_51150();
  sub_37C94(v5);
}

uint64_t sub_1E4E8()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  sub_23FC(&qword_646E0, &unk_522D8);
  sub_51160();

  return v4;
}

uint64_t sub_1E584()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

uint64_t sub_1E5C4(char a1, uint64_t a2)
{

  v3 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t AutomaticUpdatesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v191 = &v228;
  v123 = a1;
  v143 = 0;
  v230 = 0;
  v124 = (*(*(sub_23FC(&qword_644D0, &qword_51D20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v125 = v77 - v124;
  v126 = sub_50960();
  v127 = *(v126 - 8);
  v128 = v127;
  v2 = *(v127 + 64);
  __chkstk_darwin(v143);
  v129 = v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_50910();
  v131 = *(v130 - 8);
  v132 = v131;
  v4 = *(v131 + 64);
  __chkstk_darwin(v143);
  v133 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_50920();
  v135 = *(v134 - 8);
  v136 = v135;
  v6 = *(v135 + 64);
  __chkstk_darwin(v143);
  v137 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_51230();
  v139 = *(v138 - 8);
  v140 = v139;
  v8 = *(v139 + 64);
  __chkstk_darwin(v143);
  v141 = (v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*(sub_50990() - 8) + 64);
  __chkstk_darwin(v143);
  v142 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_512F0() - 8) + 64);
  __chkstk_darwin(v143);
  v144 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_50FB0();
  v146 = *(v145 - 8);
  v147 = v146;
  v14 = *(v146 + 64);
  __chkstk_darwin(v145 - 8);
  v148 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_23FC(&qword_646E8, &qword_522E8);
  v150 = *(v149 - 8);
  v151 = v150;
  v152 = (*(v150 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v149 - 8);
  v187 = v77 - v152;
  v153 = v77 - v152;
  v154 = sub_23FC(&qword_646F0, &qword_522F0);
  v155 = *(v154 - 8);
  v156 = v155;
  v157 = (*(v155 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v154 - 8);
  v158 = v77 - v157;
  v159 = sub_23FC(&qword_646F8, &qword_522F8);
  v160 = *(v159 - 8);
  v161 = v160;
  v162 = (*(v160 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v159 - 8);
  v163 = v77 - v162;
  v164 = sub_23FC(&qword_64700, &qword_52300);
  v165 = *(v164 - 8);
  v166 = v165;
  v167 = (*(v165 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v164 - 8);
  v168 = v77 - v167;
  v169 = sub_23FC(&qword_64708, &qword_52308);
  v170 = *(v169 - 8);
  v171 = v170;
  v172 = (*(v170 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v169 - 8);
  v173 = v77 - v172;
  v174 = sub_23FC(&qword_64710, &qword_52310);
  v175 = *(v174 - 8);
  v176 = v175;
  v177 = (*(v175 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v174 - 8);
  v178 = v77 - v177;
  v179 = sub_23FC(&qword_64718, &qword_52318);
  v180 = *(v179 - 8);
  v181 = v180;
  v183 = *(v180 + 64);
  __chkstk_darwin(v179 - 8);
  v185 = (v183 + 15) & 0xFFFFFFFFFFFFFFF0;
  v182 = v77 - v185;
  __chkstk_darwin(v77 - v185);
  v184 = v77 - v185;
  __chkstk_darwin(v77 - v185);
  v186 = v77 - v185;
  v230 = v77 - v185;
  v16 = *v1;
  v17 = v1[1];
  v18 = v1[2];
  v19[12] = v1[3];
  v19[11] = v18;
  v19[10] = v17;
  v19[9] = v16;
  v20 = *v1;
  v21 = v1[1];
  v22 = v1[2];
  v19[16] = v1[3];
  v19[15] = v22;
  v19[14] = v21;
  v19[13] = v20;
  sub_18F68(v231, v229);
  v23 = swift_allocObject();
  v188 = v23;
  v24 = *(v191 + 9);
  v25 = *(v191 + 10);
  v26 = *(v191 + 11);
  v23[4] = *(v191 + 12);
  v23[3] = v26;
  v23[2] = v25;
  v23[1] = v24;
  v189 = sub_23FC(&qword_64720, &qword_52320);
  v190 = sub_37D20();
  sub_20C80();
  sub_50A60();
  v27 = sub_50FC0();
  v28 = v191;
  v192 = v27;
  v29 = *(v191 + 9);
  v30 = *(v191 + 10);
  v31 = *(v191 + 11);
  *(v191 + 3) = *(v191 + 12);
  *(v28 + 2) = v31;
  *(v28 + 1) = v30;
  *v28 = v29;
  v193 = sub_18D58();
  v194 = v32;
  v225 = v193;
  v226 = v32;
  v227 = v33 & 1;
  sub_23FC(&qword_64730, &qword_52328);
  sub_511A0();
  v195 = v224;

  if (v195 == 1)
  {
    v122 = 20.0;
  }

  else
  {
    v122 = 5.0;
  }

  v79 = v122;
  v81 = sub_37DA8();
  sub_20CB0();
  v116 = 0;
  sub_510B0();
  (*(v147 + 8))(v148, v145);
  (*(v151 + 8))(v153, v149);
  v113 = "Automatic Updates";
  v114 = 17;
  v121 = 1;
  sub_51350("Automatic Updates", 0x11uLL, 1);
  sub_512E0();
  v80 = *sub_411D0();
  v34 = v80;
  sub_20CD4();
  v118 = 0;
  v221[2] = 0;
  v221[3] = 0;
  v222 = v116;
  v223 = v121;
  v221[0] = sub_51320();
  v221[1] = v35;
  v220[2] = v149;
  v220[3] = v81;
  v111 = v121;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v106 = sub_37E30();
  v102 = &type metadata for String;
  v82 = v221;
  sub_510C0();
  sub_37EA8(v82);
  (*(v156 + 8))(v158, v154);
  v100 = v231;
  v220[0] = sub_20CEC(v231);
  v220[1] = v36;
  sub_18F68(v100, v218);
  v83 = sub_51410();
  v84 = sub_51400();
  v85 = 96;
  v101 = 7;
  v37 = swift_allocObject();
  v38 = v191;
  v39 = v37;
  v40 = v100;
  v87 = v39;
  *(v39 + 16) = v84;
  v86 = &protocol witness table for MainActor;
  *(v39 + 24) = &protocol witness table for MainActor;
  v41 = *(v38 + 9);
  v42 = *(v38 + 10);
  v43 = *(v38 + 11);
  *(v39 + 80) = *(v38 + 12);
  *(v39 + 64) = v43;
  *(v39 + 48) = v42;
  *(v39 + 32) = v41;
  sub_18F68(v40, &v217);
  v88 = sub_51400();
  v44 = swift_allocObject();
  v45 = v86;
  v46 = v191;
  *(v44 + 16) = v88;
  *(v44 + 24) = v45;
  v47 = *(v46 + 9);
  v48 = *(v46 + 10);
  v49 = *(v46 + 11);
  *(v44 + 80) = *(v46 + 12);
  *(v44 + 64) = v49;
  *(v44 + 48) = v48;
  *(v44 + 32) = v47;
  sub_511B0();
  v97 = v218[8];
  v98 = v218[9];
  v91 = v219;
  sub_18F68(v100, &v216);
  v96 = v77;
  v89 = 24;
  v50 = __chkstk_darwin(v100);
  v92 = &v73;
  sub_18F68(v50, &v215);
  v95 = v77;
  __chkstk_darwin(v77);
  v93 = &v73;
  v103 = sub_23FC(&qword_64748, &qword_52330);
  v104 = sub_23FC(&qword_64750, &qword_52338);
  v214[8] = v154;
  v214[9] = v102;
  v214[10] = OpaqueTypeConformance2;
  v214[11] = v106;
  v105 = swift_getOpaqueTypeConformance2();
  v107 = sub_37FC4();
  v108 = sub_38220();
  v94 = v72;
  v76 = v108;
  v75 = v107;
  v74 = v106;
  v73 = v105;
  v72[3] = v104;
  v72[2] = v103;
  v72[1] = v102;
  v72[0] = v159;
  v99 = v220;
  sub_510F0();
  sub_180B8(v100);
  sub_180B8(v100);

  sub_37EA8(v99);
  (*(v161 + 8))(v163, v159);
  sub_18F68(v100, v214);
  v51 = swift_allocObject();
  v52 = v159;
  v53 = v102;
  v54 = v103;
  v55 = v104;
  v56 = v105;
  v57 = v106;
  v58 = v107;
  v59 = v51;
  v60 = v108;
  v109 = v59;
  v61 = *(v191 + 9);
  v62 = *(v191 + 10);
  v63 = *(v191 + 11);
  v59[4] = *(v191 + 12);
  v59[3] = v63;
  v59[2] = v62;
  v59[1] = v61;
  v206 = v52;
  v207 = v53;
  v208 = v54;
  v209 = v55;
  v210 = v56;
  v211 = v57;
  v212 = v58;
  v213 = v60;
  v110 = swift_getOpaqueTypeConformance2();
  sub_51040();

  (*(v166 + 8))(v168, v164);
  v204 = v164;
  v205 = v110;
  v112 = swift_getOpaqueTypeConformance2();
  sub_51020();
  (*(v171 + 8))(v173, v169);
  v64 = sub_51350("com.apple.graphic-icon.software-update", 0x26uLL, v121);
  v65 = v140;
  v66 = v64;
  v67 = v141;
  *v141 = v66;
  v67[1] = v68;
  (*(v65 + 104))();
  sub_51350(v113, v114, v121);
  sub_512E0();
  v115 = *sub_411D0();
  v69 = v115;
  v117 = [v115 bundleURL];
  sub_50940();
  (*(v128 + 32))(v133, v129, v126);

  (*(v132 + 104))(v133, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v130);
  sub_BE24();
  v200 = v118;
  v201 = v118;
  v202 = v116;
  v203 = v121;
  sub_50930();

  v119 = sub_51650();
  sub_51350("settings-navigation://com.apple.Settings.General/SOFTWARE_UPDATE_LINK/SUAutomaticUpdateButton", 0x5DuLL, v121);
  v120 = v70;
  sub_50950();

  if ((*(v128 + 48))(v125, v121, v126) == 1)
  {
    LODWORD(v75) = 0;
    v74 = 226;
    LOBYTE(v73) = 2;
    sub_51610();
    __break(1u);
  }

  v198 = v169;
  v199 = v112;
  v77[1] = 1;
  v77[0] = swift_getOpaqueTypeConformance2();
  sub_51050();
  (*(v128 + 8))(v125, v126);

  (*(v136 + 8))(v137, v134);
  (*(v140 + 8))(v141, v138);
  (*(v176 + 8))(v178, v174);
  v196 = v174;
  v197 = v77[0];
  v77[2] = swift_getOpaqueTypeConformance2();
  sub_6394(v184, v179, v186);
  v78 = *(v181 + 8);
  v77[3] = v181 + 8;
  v78(v184, v179);
  (*(v181 + 16))(v182, v186, v179);
  sub_99E8(v182, v179, v123);
  v78(v182, v179);
  return (v78)(v186, v179);
}

uint64_t sub_1FA0C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v62 = a1;
  v87 = a2;
  v78 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v92 = 0;
  v52 = 0;
  v30 = sub_50F50();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v34 = &v18 - v33;
  v35 = sub_23FC(&qword_64828, &qword_523A0);
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v39 = &v18 - v38;
  v40 = sub_23FC(&qword_648D8, &qword_52E68);
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v42 = &v18 - v41;
  v43 = sub_23FC(&qword_648E0, &qword_52E70);
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43);
  v47 = &v18 - v46;
  v48 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v18 - v46);
  v49 = &v18 - v48;
  v50 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v18 - v48);
  v51 = &v18 - v50;
  v111 = &v18 - v50;
  v53 = sub_23FC(&qword_648E8, &qword_52E78);
  v54 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v52);
  v55 = &v18 - v54;
  v56 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v57 = &v18 - v56;
  v58 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v59 = &v18 - v58;
  v110 = &v18 - v58;
  v70 = sub_50C30();
  v67 = *(v70 - 8);
  v68 = v70 - 8;
  v60 = (v67[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v70);
  v69 = &v18 - v60;
  v76 = sub_23FC(&qword_647A8, &qword_52360);
  v73 = *(v76 - 8);
  v74 = v76 - 8;
  v61 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v76);
  v75 = &v18 - v61;
  v84 = sub_23FC(&qword_648F0, qword_52E80);
  v81 = *(v84 - 8);
  v82 = v84 - 8;
  v63 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v62);
  v83 = &v18 - v63;
  v64 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v9);
  v79 = &v18 - v64;
  v109 = &v18 - v64;
  v108 = v11;
  v107 = v12;
  v88 = 64;
  memcpy(__dst, v12, sizeof(__dst));
  sub_204F8(v75);
  v65 = v67[13];
  v66 = v67 + 13;
  v65(v69, enum case for AccessibilityIdentifiers.automaticInstallGroup(_:), v70);
  v77 = sub_3880C();
  sub_50FF0();
  v71 = v67[1];
  v72 = v67 + 1;
  v71(v69, v70);
  (*(v73 + 8))(v75, v76);
  v104 = v76;
  v105 = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_6394(v83, v84, v79);
  v85 = *(v81 + 8);
  v86 = v81 + 8;
  v85(v83, v84);
  memcpy(v103, v87, v88);
  v89 = sub_18D58();
  v90 = v13;
  v100 = v89;
  v101 = v13;
  v102 = v14 & 1;
  sub_23FC(&qword_64730, &qword_52328);
  sub_511A0();
  v91 = v99;

  if (v91)
  {
    (*(v44 + 56))(v55, 1, 1, v43);
    v16 = sub_3F53C();
    v98[2] = v40;
    v98[3] = v16;
    swift_getOpaqueTypeConformance2();
    sub_B3CC(v55, v43, v57);
    sub_3F5E4(v55);
    sub_3F698(v57, v59);
  }

  else
  {
    memcpy(v95, v87, sizeof(v95));
    sub_20828(v39);
    sub_20B80();
    v24 = sub_38A84();
    v15 = sub_3BF78();
    sub_20B98(v34, v35, v30, v24, v15, v42);
    (*(v31 + 8))(v34, v30);
    (*(v36 + 8))(v39, v35);
    v65(v69, enum case for AccessibilityIdentifiers.automaticDownloadGroup(_:), v70);
    v25 = sub_3F53C();
    sub_50FF0();
    v71(v69, v70);
    sub_3F9E8(v42);
    v93 = v40;
    v94 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    sub_6394(v49, v43, v51);
    v27 = *(v44 + 8);
    v28 = v44 + 8;
    v27(v49, v43);
    v92 = v49;
    v23 = *(v44 + 16);
    v22 = v44 + 16;
    v23(v47, v51, v43);
    sub_99E8(v47, v43, v49);
    v27(v47, v43);
    v23(v55, v49, v43);
    (*(v44 + 56))(v55, 0, 1, v43);
    sub_B3CC(v55, v43, v57);
    sub_3F5E4(v55);
    sub_3F698(v57, v59);
    v27(v49, v43);
    v27(v51, v43);
  }

  (*(v81 + 16))(v83, v79, v84);
  v21 = v98;
  v98[0] = v83;
  sub_3F7CC(v59, v57);
  v98[1] = v57;
  v19 = v97;
  v97[0] = v84;
  v97[1] = v53;
  v20 = v96;
  v96[0] = OpaqueTypeConformance2;
  v96[1] = sub_3F900();
  sub_63F8(v21, 2uLL, v19, v29);
  sub_3F5E4(v57);
  v85(v83, v84);
  sub_3F5E4(v59);
  return (v85)(v79, v84);
}

uint64_t sub_204F8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v20 = sub_383C0;
  v14 = sub_383C8;
  v16 = sub_383D0;
  v37 = 0;
  v28 = sub_23FC(&qword_647A8, &qword_52360);
  v22 = *(v28 - 8);
  v23 = v28 - 8;
  v6 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v26 = &v5 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v6);
  v27 = &v5 - v7;
  v37 = &v5 - v7;
  v21 = __dst;
  v9 = 64;
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v39, v8, sizeof(v39));
  sub_18F68(__dst, v36);
  v13 = v33;
  v33[2] = v21;
  sub_18F68(v21, &v35);
  v15 = v32;
  v32[2] = v21;
  sub_18F68(v21, &v34);
  v17 = v31;
  v31[2] = v21;
  v18 = sub_23FC(&qword_647B0, &qword_52368);
  v19 = sub_23FC(&qword_647B8, &qword_52370);
  v10 = sub_23FC(&qword_647C0, &qword_52378);
  v11 = sub_383D8();
  v12 = sub_3859C();
  v3 = sub_38624();
  sub_316F4(v20, v13, v16, v17, v18, v19, v26, v10, v11, v12, v3);
  sub_180B8(v21);
  sub_180B8(v21);
  sub_180B8(v21);
  v25 = sub_3880C();
  sub_6394(v26, v28, v27);
  v30 = *(v22 + 8);
  v29 = v22 + 8;
  v30(v26, v28);
  (*(v22 + 16))(v26, v27, v28);
  sub_99E8(v26, v28, v24);
  v30(v26, v28);
  return (v30)(v27, v28);
}

uint64_t sub_20828@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v20 = 0;
  v13 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v15 = &opaque type descriptor for <<opaque return type of View.analyticsForToggle(onType:offType:isOn:)>>;
  v22 = sub_388C4;
  v18 = sub_32588;
  v19 = sub_32758;
  v35 = 0;
  v30 = sub_23FC(&qword_64828, &qword_523A0);
  v24 = *(v30 - 8);
  v25 = v30 - 8;
  v8 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v28 = &v7 - v8;
  v9 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v8);
  v29 = &v7 - v9;
  v35 = &v7 - v9;
  v23 = __dst;
  v11 = 64;
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v37, v10, sizeof(v37));
  sub_18F68(__dst, v34);
  v17 = v33;
  v33[2] = v23;
  v21 = sub_23FC(&qword_64830, &qword_523A8);
  v14 = sub_6320(&qword_64838, &qword_523B0);
  v12 = sub_6320(&qword_64840, &qword_523B8);
  v3 = sub_388CC();
  v33[6] = v12;
  v33[7] = v3;
  v16 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33[4] = v14;
  v33[5] = OpaqueTypeConformance2;
  v5 = swift_getOpaqueTypeConformance2();
  sub_316F4(v22, v17, v19, v20, &type metadata for Text, v21, v28, &type metadata for Text, &protocol witness table for Text, v5, &protocol witness table for Text);
  sub_180B8(v23);
  v27 = sub_38A84();
  sub_6394(v28, v30, v29);
  v32 = *(v24 + 8);
  v31 = v24 + 8;
  v32(v28, v30);
  (*(v24 + 16))(v28, v29, v30);
  sub_99E8(v28, v30, v26);
  v32(v28, v30);
  return (v32)(v29, v30);
}

uint64_t sub_20B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = a6;
  v7 = a1;
  v14 = a2;
  v10 = a3;
  v15 = a4;
  v11 = a5;
  v18 = a2;
  v17 = a3;
  v9 = *(a3 - 8);
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v12 = &v7 - v8;
  (*(v9 + 16))(&v7 - v8);
  v16 = sub_50E10();
  sub_51080();
}

uint64_t sub_20CEC(uint64_t a1)
{
  v16 = a1;
  v12 = "RecoveryOS is a device's state enables the user to perform system recovery actions";
  v28 = 0;
  v13 = 0;
  v14 = (*(*(sub_50990() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v15 = &v6[-v14];
  v1 = sub_512F0();
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v18 = &v6[-v17];
  v28 = v2;
  memcpy(__dst, v2, sizeof(__dst));
  v19 = sub_1E3B0();
  if (v19)
  {
    if (v19 == 1)
    {
      v7 = 1;
      sub_51350("Turn off automatic updates?", 0x1BuLL, 1);
      sub_512E0();
      v8 = *sub_411D0();
      v8;
      sub_20CD4();
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = v7 & 1;
    }

    else
    {
      sub_51350("RecoveryOS Information", 0x16uLL, 1);
      sub_512E0();
      v9 = *sub_411D0();
      v9;
      sub_20CD4();
      v20 = v12;
      v21 = 82;
      v22 = 2;
    }

    v10 = sub_51320();
    v11 = v3;
  }

  else
  {
    v10 = sub_51350("", 0, 1);
    v11 = v4;
  }

  return v10;
}

BOOL sub_20F80@<W0>(void *__src@<X2>, BOOL *a2@<X8>)
{
  v6 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_1E3B0();
  result = sub_35740(v2, 0);
  *a2 = !result;
  return result;
}

uint64_t *sub_20FEC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = 0;
  v8 = 0;
  v4 = *result;
  v9 = *result & 1;
  v8 = a4;
  if ((v4 & 1) == 0)
  {
    sub_18F68(a4, v7);
    memcpy(__dst, a4, sizeof(__dst));
    sub_1E434(0);
    return sub_180B8(__dst);
  }

  return result;
}

uint64_t sub_21078@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v117 = a1;
  v77 = sub_3D4E8;
  v78 = sub_3D5D0;
  v79 = sub_3D630;
  v80 = sub_3D9F8;
  v81 = sub_3DA58;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v155 = 0;
  v151 = 0;
  v146 = 0;
  v132 = 0;
  v82 = sub_23FC(&qword_64788, &unk_52350);
  v83 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v82);
  v84 = &v31 - v83;
  v85 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v83);
  v86 = &v31 - v85;
  v161 = &v31 - v85;
  v87 = sub_23FC(&qword_64768, &qword_52340);
  v88 = (*(*(v87 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v87);
  v89 = &v31 - v88;
  v90 = sub_23FC(&qword_64778, &qword_52348);
  v91 = (*(*(v90 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v90);
  v92 = &v31 - v91;
  v93 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v91);
  v94 = &v31 - v93;
  v160 = &v31 - v93;
  v4 = sub_23FC(&qword_648A0, &qword_52E10);
  v95 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v96 = &v31 - v95;
  v97 = 0;
  v98 = (*(*(sub_50990() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v97);
  v99 = &v31 - v98;
  v5 = sub_512F0();
  v100 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v101 = &v31 - v100;
  v102 = sub_23FC(&qword_648A8, &qword_52E18);
  v103 = *(v102 - 8);
  v104 = v102 - 8;
  v105 = (v103[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v102);
  v106 = &v31 - v105;
  v107 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v105);
  v108 = &v31 - v107;
  v109 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v107);
  v110 = &v31 - v109;
  v111 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v109);
  v112 = &v31 - v111;
  v113 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v111);
  v114 = &v31 - v113;
  v115 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v113);
  v116 = &v31 - v115;
  v159 = &v31 - v115;
  v118 = sub_23FC(&qword_64748, &qword_52330);
  v119 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v118);
  v120 = &v31 - v119;
  v121 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v31 - v119);
  v122 = &v31 - v121;
  v158 = &v31 - v121;
  v157 = v12;
  memcpy(__dst, v12, sizeof(__dst));
  v123 = sub_1E3B0();
  if (v123)
  {
    if (v123 == 1)
    {
      v155 = v116;
      *&v49[1] = 1;
      sub_51350("Turn off Automatic Updates", 0x1AuLL, 1);
      sub_512E0();
      v47 = *sub_411D0();
      v47;
      sub_20CD4();
      v48 = 0;
      v153[2] = 0;
      v153[3] = 0;
      v154 = *v49 & 0x100;
      v20 = sub_51320();
      v54 = v153;
      v153[0] = v20;
      v153[1] = v21;
      sub_50DC0();
      v50 = sub_50DE0();
      v22 = *(v50 - 8);
      v51 = *(v22 + 56);
      v52 = v22 + 56;
      v51(v96, 0, *&v49[1]);
      sub_18F68(v117, v152);
      v53 = swift_allocObject();
      memcpy((v53 + 16), v117, 0x40uLL);
      v55 = sub_37E30();
      sub_51170();
      v56 = sub_3D4F0();
      sub_6394(v114, v102, v116);
      v57 = v103[1];
      v58 = v103 + 1;
      v57(v114, v102);
      v151 = v114;
      v43 = 1;
      sub_51350("Cancel Install Tonight", 0x16uLL, 1);
      sub_512E0();
      v44 = *sub_411D0();
      v44;
      sub_20CD4();
      v148[2] = 0;
      v148[3] = 0;
      v149 = 0;
      v150 = v43 & 1;
      v23 = sub_51320();
      v45 = v148;
      v148[0] = v23;
      v148[1] = v24;
      sub_18F68(v117, &v147);
      v46 = swift_allocObject();
      memcpy((v46 + 16), v117, 0x40uLL);
      sub_51180();
      sub_6394(v112, v102, v114);
      v57(v112, v102);
      v146 = v112;
      v36 = 1;
      sub_51350("Cancel", 6uLL, 1);
      sub_512E0();
      v35 = *sub_411D0();
      v35;
      sub_20CD4();
      v143[2] = 0;
      v143[3] = 0;
      v144 = 0;
      v145 = v36 & 1;
      v25 = sub_51320();
      v37 = v143;
      v143[0] = v25;
      v143[1] = v26;
      sub_50DD0();
      (v51)(v96, 0, v36, v50);
      sub_18F68(v117, &v142);
      v38 = swift_allocObject();
      memcpy((v38 + 16), v117, 0x40uLL);
      sub_51170();
      sub_6394(v110, v102, v112);
      v57(v110, v102);
      v40 = v103[2];
      v39 = v103 + 2;
      v40(v110, v116, v102);
      v41 = v141;
      v141[0] = v110;
      v40(v108, v114, v102);
      v141[1] = v108;
      v40(v106, v112, v102);
      v141[2] = v106;
      v140[0] = v102;
      v140[1] = v102;
      v140[2] = v102;
      v137 = v56;
      v138 = v56;
      v139 = v56;
      sub_63F8(v41, 3uLL, v140, v86);
      v57(v106, v102);
      v57(v108, v102);
      v57(v110, v102);
      sub_3D638(v86, v84);
      v42 = sub_38110();
      v27 = sub_38198();
      sub_B418(v84, v90, v82, v42, v27, v89);
      sub_3D730(v84);
      v28 = sub_38068();
      sub_B2D4(v89, v87, &type metadata for EmptyView, v28, &protocol witness table for EmptyView, v120);
      sub_3D80C(v89);
      sub_3CE18(v120, v122);
      sub_3D730(v86);
      v57(v112, v102);
      v57(v114, v102);
      v57(v116, v102);
    }

    else
    {
      v68 = 1;
      sub_51350("Update Now", 0xAuLL, 1);
      sub_512E0();
      v69 = *sub_411D0();
      v69;
      sub_20CD4();
      v134[2] = 0;
      v134[3] = 0;
      v135 = 0;
      v136 = v68 & 1;
      v13 = sub_51320();
      v71 = v134;
      v134[0] = v13;
      v134[1] = v14;
      sub_18F68(v117, &v133);
      v70 = swift_allocObject();
      memcpy((v70 + 16), v117, 0x40uLL);
      v72 = sub_37E30();
      sub_51180();
      v73 = sub_3D4F0();
      sub_6394(v114, v102, v116);
      v74 = v103[1];
      v75 = v103 + 1;
      v74(v114, v102);
      v132 = v114;
      v61 = 1;
      sub_51350("Close", 5uLL, 1);
      sub_512E0();
      v59 = *sub_411D0();
      v59;
      sub_20CD4();
      v60 = 0;
      v129[2] = 0;
      v129[3] = 0;
      v130 = 0;
      v131 = v61 & 1;
      v15 = sub_51320();
      v62 = v129;
      v129[0] = v15;
      v129[1] = v16;
      sub_50DD0();
      v17 = sub_50DE0();
      (*(*(v17 - 8) + 56))(v96, 0, v61);
      sub_18F68(v117, &v128);
      v63 = swift_allocObject();
      memcpy((v63 + 16), v117, 0x40uLL);
      sub_51170();
      sub_6394(v112, v102, v114);
      v74(v112, v102);
      v65 = v103[2];
      v64 = v103 + 2;
      v65(v112, v116, v102);
      v66 = v127;
      v127[0] = v112;
      v65(v110, v114, v102);
      v127[1] = v110;
      v126[0] = v102;
      v126[1] = v102;
      v124 = v73;
      v125 = v73;
      sub_63F8(v66, 2uLL, v126, v94);
      v74(v110, v102);
      v74(v112, v102);
      sub_3DA60(v94, v92);
      v67 = sub_38110();
      v18 = sub_38198();
      sub_B2D4(v92, v90, v82, v67, v18, v89);
      sub_3DB20(v92);
      v19 = sub_38068();
      sub_B2D4(v89, v87, &type metadata for EmptyView, v19, &protocol witness table for EmptyView, v120);
      sub_3D80C(v89);
      sub_3CE18(v120, v122);
      sub_3DB20(v94);
      v74(v114, v102);
      v74(v116, v102);
    }
  }

  else
  {
    sub_511E0();
    v32 = &type metadata for EmptyView;
    v33 = &protocol witness table for EmptyView;
    sub_6394(v34, &type metadata for EmptyView, v34);
    sub_99E8(v34, v32, v34);
    v29 = sub_38068();
    sub_B418(v34, v87, v32, v29, v33, v120);
    sub_3CE18(v120, v122);
  }

  sub_3D074(v122, v120);
  sub_37FC4();
  sub_99E8(v120, v118, v76);
  sub_3D2D0(v120);
  return sub_3D2D0(v122);
}

uint64_t *sub_221E0(uint64_t *a1)
{
  v29 = &v48;
  v31 = a1;
  v38 = 0;
  v49 = 0;
  v30 = 0;
  v32 = sub_50DB0();
  v33 = *(v32 - 8);
  v34 = v33;
  v1 = *(v33 + 64);
  v2 = __chkstk_darwin(v31);
  v35 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v2;
  sub_50D90();
  v40 = sub_50DA0();
  v36 = v40;
  v39 = sub_51480();
  v37 = v39;
  sub_23FC(&qword_64648, &qword_51E60);
  v41 = sub_51650();
  if (os_log_type_enabled(v40, v39))
  {
    v4 = v30;
    v20 = sub_514F0();
    v16 = v20;
    v17 = sub_23FC(&qword_64650, &unk_53930);
    v18 = 0;
    v21 = sub_121D4(0);
    v19 = v21;
    v22 = sub_121D4(v18);
    v45 = v20;
    v44 = v21;
    v43 = v22;
    v23 = 0;
    v24 = &v45;
    sub_12228(0, &v45);
    sub_12228(v23, v24);
    v42 = v41;
    v25 = v14;
    __chkstk_darwin(v14);
    v26 = &v14[-6];
    v14[-4] = v5;
    v14[-3] = &v44;
    v14[-2] = &v43;
    v27 = sub_23FC(&qword_64698, &qword_52170);
    sub_181A0();
    sub_513C0();
    v28 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v36, v37, "User Action: Clicked 'Update Now' on the nerdMenu alert in AutomaticUpdatesView", v16, 2u);
      v14[1] = 0;
      sub_12288(v19);
      sub_12288(v22);
      sub_514D0();

      v15 = v28;
    }
  }

  else
  {

    v15 = v30;
  }

  (*(v34 + 8))(v35, v32);
  v6 = v29;
  v7 = *v31;
  v8 = *(v31 + 1);
  v9 = *(v31 + 2);
  *(v29 + 3) = *(v31 + 3);
  *(v6 + 2) = v9;
  *(v6 + 1) = v8;
  *v6 = v7;
  sub_226C4();
  sub_18F68(v31, v47);
  v10 = *v31;
  v11 = *(v31 + 1);
  v12 = *(v31 + 2);
  v46[3] = *(v31 + 3);
  v46[2] = v12;
  v46[1] = v11;
  v46[0] = v10;
  v14[0] = v46;
  sub_1E434(0);
  return sub_180B8(v14[0]);
}

void sub_226C4()
{
  v47 = sub_38C28;
  v49 = sub_38CD8;
  v51 = sub_38D24;
  v56 = sub_35448;
  v59 = sub_38E24;
  v61 = sub_38C5C;
  v63 = sub_38C90;
  v65 = sub_38D70;
  v67 = sub_38DA8;
  v69 = sub_38DDC;
  v72 = sub_38E70;
  v39 = 0;
  v40 = sub_50DB0();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v44 = v24 - v43;
  v45 = __dst;
  v46 = 64;
  memcpy(__dst, v0, sizeof(__dst));
  sub_50D90();
  sub_18F68(v45, v84);
  v58 = 7;
  v48 = swift_allocObject();
  memcpy((v48 + 16), v45, v46);
  v76 = sub_50DA0();
  v77 = sub_51480();
  v54 = 17;
  v62 = swift_allocObject();
  v53 = 32;
  *(v62 + 16) = 32;
  v64 = swift_allocObject();
  v55 = 8;
  *(v64 + 16) = 8;
  v57 = 32;
  v1 = swift_allocObject();
  v2 = v48;
  v50 = v1;
  *(v1 + 16) = v47;
  *(v1 + 24) = v2;
  v3 = swift_allocObject();
  v4 = v50;
  v52 = v3;
  *(v3 + 16) = v49;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v52;
  v66 = v5;
  *(v5 + 16) = v51;
  *(v5 + 24) = v6;
  v68 = swift_allocObject();
  *(v68 + 16) = v53;
  v70 = swift_allocObject();
  *(v70 + 16) = v55;
  v7 = swift_allocObject();
  v60 = v7;
  *(v7 + 16) = v56;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  v9 = v60;
  v73 = v8;
  *(v8 + 16) = v59;
  *(v8 + 24) = v9;
  v75 = sub_23FC(&qword_64648, &qword_51E60);
  v71 = sub_51650();
  v74 = v10;

  v11 = v62;
  v12 = v74;
  *v74 = v61;
  v12[1] = v11;

  v13 = v64;
  v14 = v74;
  v74[2] = v63;
  v14[3] = v13;

  v15 = v66;
  v16 = v74;
  v74[4] = v65;
  v16[5] = v15;

  v17 = v68;
  v18 = v74;
  v74[6] = v67;
  v18[7] = v17;

  v19 = v70;
  v20 = v74;
  v74[8] = v69;
  v20[9] = v19;

  v21 = v73;
  v22 = v74;
  v74[10] = v72;
  v22[11] = v21;
  sub_1489C();

  if (os_log_type_enabled(v76, v77))
  {
    v23 = v39;
    v31 = sub_514F0();
    v30 = sub_23FC(&qword_64650, &unk_53930);
    v32 = sub_121D4(0);
    v33 = sub_121D4(2);
    v35 = &v82;
    v82 = v31;
    v36 = &v81;
    v81 = v32;
    v37 = &v80;
    v80 = v33;
    v34 = 2;
    sub_12228(2, &v82);
    sub_12228(v34, v35);
    v78 = v61;
    v79 = v62;
    sub_1223C(&v78, v35, v36, v37);
    v38 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v78 = v63;
      v79 = v64;
      sub_1223C(&v78, &v82, &v81, &v80);
      v29 = 0;
      v78 = v65;
      v79 = v66;
      sub_1223C(&v78, &v82, &v81, &v80);
      v28 = 0;
      v78 = v67;
      v79 = v68;
      sub_1223C(&v78, &v82, &v81, &v80);
      v27 = 0;
      v78 = v69;
      v79 = v70;
      sub_1223C(&v78, &v82, &v81, &v80);
      v26 = 0;
      v78 = v72;
      v79 = v73;
      sub_1223C(&v78, &v82, &v81, &v80);
      _os_log_impl(&dword_0, v76, v77, "%s.%s: Automatic Updates: Triggering RecoveryOS Software Update Request", v31, 0x16u);
      sub_12288(v32);
      sub_12288(v33);
      sub_514D0();
    }
  }

  else
  {
  }

  _objc_release(v76);
  (*(v41 + 8))(v44, v40);
  memcpy(v83, __dst, sizeof(v83));
  v24[1] = sub_184E0();
  v25 = sub_50B90();

  [v25 updateNeRDVersion];
  _objc_release(v25);
}

uint64_t *sub_231CC(uint64_t *a1)
{
  v28 = a1;
  v35 = 0;
  v45 = 0;
  v27 = 0;
  v29 = sub_50DB0();
  v30 = *(v29 - 8);
  v31 = v30;
  v1 = *(v30 + 64);
  v2 = __chkstk_darwin(v28);
  v32 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v2;
  sub_50D90();
  v37 = sub_50DA0();
  v33 = v37;
  v36 = sub_51480();
  v34 = v36;
  sub_23FC(&qword_64648, &qword_51E60);
  v38 = sub_51650();
  if (os_log_type_enabled(v37, v36))
  {
    v4 = v27;
    v18 = sub_514F0();
    v14 = v18;
    v15 = sub_23FC(&qword_64650, &unk_53930);
    v16 = 0;
    v19 = sub_121D4(0);
    v17 = v19;
    v20 = sub_121D4(v16);
    v42 = v18;
    v41 = v19;
    v40 = v20;
    v21 = 0;
    v22 = &v42;
    sub_12228(0, &v42);
    sub_12228(v21, v22);
    v39 = v38;
    v23 = &v10;
    __chkstk_darwin(&v10);
    v24 = &v10 - 6;
    *(&v10 - 4) = v5;
    *(&v10 - 3) = &v41;
    *(&v10 - 2) = &v40;
    v25 = sub_23FC(&qword_64698, &qword_52170);
    sub_181A0();
    sub_513C0();
    v26 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v33, v34, "User Action: Clicked 'Close' on the nerdMenu alert in AutomaticUpdatesView", v14, 2u);
      v12 = 0;
      sub_12288(v17);
      sub_12288(v20);
      sub_514D0();

      v13 = v26;
    }
  }

  else
  {

    v13 = v27;
  }

  (*(v31 + 8))(v32, v29);
  sub_18F68(v28, v44);
  v6 = *v28;
  v7 = *(v28 + 1);
  v8 = *(v28 + 2);
  v43[3] = *(v28 + 3);
  v43[2] = v8;
  v43[1] = v7;
  v43[0] = v6;
  v11 = v43;
  sub_1E434(0);
  return sub_180B8(v11);
}