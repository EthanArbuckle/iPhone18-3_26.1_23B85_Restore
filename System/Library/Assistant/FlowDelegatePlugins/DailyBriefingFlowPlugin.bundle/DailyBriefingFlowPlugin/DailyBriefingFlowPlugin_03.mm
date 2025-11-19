uint64_t sub_3ECE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_3FF44;

  return sub_3E52C(a2, a3, a4, a5, a6);
}

uint64_t sub_3EDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_40414();
  sub_40178();
  v10 = sub_403CC();
  sub_5940(v10);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  sub_40054(*(v13 + 64));
  v14 = swift_task_alloc();
  v15 = sub_40354(v14);
  *v15 = v16;
  v15[1] = sub_18540;
  sub_400A0();
  sub_403FC();

  return v23(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

unint64_t sub_3EE98()
{
  result = qword_DD480;
  if (!qword_DD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD480);
  }

  return result;
}

uint64_t sub_3EEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 16) = a1;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = sub_3EFBC;

  return sub_3C7E0(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_3EFBC()
{
  sub_25654();
  v3 = v2;
  v5 = v4;
  sub_AAA8();
  v7 = v6;
  sub_40168();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  sub_5930();
  *v12 = v11;

  if (!v0)
  {
    v13 = *(v7 + 16);
    *v13 = v5;
    *(v13 + 8) = v3 & 1;
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_3F0C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_3FF70;

  return sub_3D758(a2, a3, a4);
}

uint64_t sub_3F180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_3FF70;

  return sub_3E52C(a2, a3, a4, a5, a6);
}

uint64_t sub_3F248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 16) = a1;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = sub_3F318;

  return sub_3CD40(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_3F318()
{
  sub_AB40();
  v3 = v2;
  sub_AAA8();
  v5 = v4;
  sub_40168();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_5930();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3 & 1;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_3F414()
{
  sub_40178();
  sub_401B4();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v4.n128_f64[0] = sub_400DC(v1);

  return v3(v4);
}

uint64_t sub_3F4B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_3FF74;

  return sub_3D950(a2, a3, a4);
}

void sub_3F56C()
{
  sub_25654();
  sub_401DC();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_18540;
  sub_40070();
  sub_40498();

  __asm { BR              X5 }
}

uint64_t sub_3F60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_3FF74;

  return sub_3E550(a2, a3, a4, a5, a6);
}

uint64_t sub_3F6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_40414();
  sub_40178();
  v10 = sub_403CC();
  sub_5940(v10);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  sub_40054(*(v13 + 64));
  v14 = swift_task_alloc();
  v15 = sub_40354(v14);
  *v15 = v16;
  v15[1] = sub_18540;
  sub_400A0();
  sub_403FC();

  return v23(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_3F7C0()
{
  sub_25654();
  sub_401DC();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_18540;
  v3 = sub_40070();

  return sub_3D280(v3, v4, v5, v6);
}

uint64_t sub_3F858()
{
  sub_40178();
  v2 = sub_A2EA4();
  sub_5940(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_40054(*(v5 + 64));
  v6 = swift_task_alloc();
  v7 = sub_18584(v6);
  *v7 = v8;
  v7[1] = sub_18540;
  v9 = sub_4008C();

  return sub_3DEA4(v9, v10, v11, v12, v0, v1);
}

uint64_t sub_3F954()
{
  sub_25654();
  sub_401DC();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_18540;
  v3 = sub_40070();

  return sub_3D45C(v3, v4, v5, v6);
}

uint64_t sub_3F9EC()
{
  sub_40178();
  v2 = sub_A2EA4();
  sub_5940(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_40054(*(v5 + 64));
  v6 = swift_task_alloc();
  v7 = sub_18584(v6);
  *v7 = v8;
  v7[1] = sub_18540;
  v9 = sub_4008C();

  return sub_3E260(v9, v10, v11, v12, v0, v1);
}

uint64_t sub_3FAE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4BF0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_3FB50()
{
  sub_40178();
  sub_401B4();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v4.n128_f64[0] = sub_400DC(v1);

  return v3(v4);
}

uint64_t sub_3FBF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  sub_40308();

  return _swift_deallocObject(v3, v4, v5);
}

void sub_3FC2C()
{
  sub_25654();
  sub_401DC();
  v0 = swift_task_alloc();
  v1 = sub_18584(v0);
  *v1 = v2;
  v1[1] = sub_18540;
  sub_40070();
  sub_40498();

  __asm { BR              X5 }
}

uint64_t sub_3FCCC()
{
  v1 = sub_A2EA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_3FDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_40414();
  sub_40178();
  v10 = sub_403CC();
  sub_5940(v10);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  sub_40054(*(v13 + 64));
  v14 = swift_task_alloc();
  v15 = sub_40354(v14);
  *v15 = v16;
  v15[1] = sub_18540;
  sub_400A0();
  sub_403FC();

  return v23(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

__n128 sub_3FE94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_3FEA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3FEE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_3FF78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_81094(a1, v3, 0xD000000000000029, a2 | 0x8000000000000000, 0xD000000000000029, (v2 - 32) | 0x8000000000000000);
}

void sub_3FFCC(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000021;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_A46D4(v2);
}

void sub_3FFF4()
{
  v3._countAndFlagsBits = v1;
  v3._object = v0;

  sub_A46D4(v3);
}

uint64_t sub_40038(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = *(v1 + 32);
  return a1 + v2;
}

void sub_40054(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (v1 + ((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
}

void sub_400B8()
{

  sub_A4B54(36);
}

double sub_400DC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2 + *v2;
  return v3;
}

void sub_401B4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
}

void sub_401DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

uint64_t sub_4021C()
{
  v1 = v0[11];
  v2 = *(v0[12] + 8);
  return v0[13];
}

void sub_40230()
{
  v1 = v0[14];
  v2 = v0[12];
  v5 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
}

uint64_t sub_4026C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = (v13 + v14);
  *v16 = a12;
  v16[1] = a13;
}

uint64_t sub_40288(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
  a1[5] = v2;
}

void sub_402DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_81094(a1, a2 | 0x8000000000000000, 0xD00000000000002FLL, v2 | 0x8000000000000000, v3, 0xE700000000000000);
}

uint64_t sub_4033C()
{
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_A43D4();
}

uint64_t sub_40374()
{

  return swift_willThrow();
}

uint64_t sub_4038C()
{
  v7 = v0[7];
  v8 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[3];

  return sub_A2E24();
}

uint64_t sub_403CC()
{

  return sub_A2EA4();
}

uint64_t sub_4042C()
{

  return swift_allocObject();
}

uint64_t sub_40444(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = a6;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  *(v7 + 32) = a7;
  *(v7 + 16) = result;
  *(v7 + 24) = a2;
  return result;
}

void sub_40458()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[2];
  v7 = v0[3];
}

id sub_40480()
{
  v3 = *(v1 + 1160);

  return [v0 v3];
}

uint64_t sub_404AC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a3;
  v6 = type metadata accessor for CalendarEvent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = *(a2 + 16);
  while (1)
  {
    if (v12 == v11)
    {
      v14 = 1;
      v15 = v18;
      return sub_A924(v15, v14, 1, v6);
    }

    sub_106FC(a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v10);
    v13 = a1(v10);
    if (v3)
    {
      return sub_48E30(v10, type metadata accessor for CalendarEvent);
    }

    if (v13)
    {
      break;
    }

    sub_48E30(v10, type metadata accessor for CalendarEvent);
    ++v11;
  }

  v15 = v18;
  sub_48DD4(v10, v18, type metadata accessor for CalendarEvent);
  v14 = 0;
  return sub_A924(v15, v14, 1, v6);
}

BOOL sub_40650(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for CalendarEvent(0) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) != 0);
  return v7 == v8;
}

uint64_t sub_40724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[231] = a5;
  v5[225] = a3;
  v5[219] = a2;
  v5[213] = a1;
  v6 = sub_4BF0(&qword_DB958, qword_A6CE0);
  sub_10A88(v6);
  v8 = *(v7 + 64) + 15;
  v5[232] = swift_task_alloc();
  v9 = sub_A2EA4();
  v5[233] = v9;
  sub_5940(v9);
  v5[234] = v10;
  v5[235] = *(v11 + 64);
  v5[236] = swift_task_alloc();
  v5[237] = swift_task_alloc();
  v12 = sub_4BF0(&qword_DD4E8, &qword_A9300);
  sub_5940(v12);
  v5[238] = v13;
  v5[239] = *(v14 + 64);
  v5[240] = swift_task_alloc();
  v15 = swift_task_alloc();
  v5[241] = v15;
  v16 = swift_task_alloc();
  v5[242] = v16;
  *v16 = v5;
  v16[1] = sub_408F8;

  return (sub_9CD74)(v15, 0);
}

uint64_t sub_408F8()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 1936);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_409DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (qword_DA8D0 != -1)
  {
    sub_49044();
  }

  v11 = *(v10 + 1928);
  v12 = *(v10 + 1920);
  v32 = *(v10 + 1904);
  v33 = *(v10 + 1912);
  v13 = *(v10 + 1896);
  v30 = v12;
  v31 = *(v10 + 1880);
  v14 = *(v10 + 1872);
  v15 = *(v10 + 1864);
  v36 = *(v10 + 1888);
  v37 = *(v10 + 1848);
  v16 = *(v10 + 1800);
  v17 = *(v10 + 1752);
  v35 = v17;
  v18 = sub_A43D4();
  *(v10 + 1944) = sub_48A4(v18, qword_DD4D0);
  sub_810AC(0xD000000000000019, 0x80000000000B0780, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000041, 0x80000000000B07D0);
  v34 = *(v14 + 16);
  v34(v13, v17, v15);
  sub_48F30(v11, v12, &qword_DD4E8, &qword_A9300);
  sub_A760(v16, v10 + 1576);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = (v19 + v31 + *(v32 + 80)) & ~*(v32 + 80);
  v21 = swift_allocObject();
  *(v10 + 1952) = v21;
  v22 = *(v14 + 32);
  v22(v21 + v19, v13, v15);
  sub_47C48(v30, v21 + v20, &qword_DD4E8, &qword_A9300);
  sub_AA3C((v10 + 1576), v21 + ((v33 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_4BF0(&qword_DD4F0, &qword_A9318);
  swift_asyncLet_begin();
  v34(v36, v35, v15);
  v23 = swift_allocObject();
  *(v10 + 1960) = v23;
  v22(v23 + v19, v36, v15);
  *(v23 + ((v19 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;
  v24 = v37;
  sub_4BF0(&qword_DD4F8, &qword_A9330);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v10 + 16, v10 + 1336, sub_40D00, v10 + 1296, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_40D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_49170();
  sub_40178();
  v11 = *(v10 + 1336);
  *(v10 + 1968) = v11;
  if (*(v10 + 1381) == 1)
  {
    v12 = *(v10 + 1944);
    v13 = *(v10 + 1704);
    swift_errorRetain();
    sub_810AC(0xD000000000000022, 0x80000000000B0820, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000041, 0x80000000000B07D0);
    *v13 = v11;
    sub_4BF0(&qword_DC758, &unk_A8340);
    swift_storeEnumTagMultiPayload();
    sub_490A8();
    sub_49104();

    return _swift_asyncLet_finish(v14, v15, v16, v17);
  }

  else
  {
    v19 = *(v10 + 1944);
    v20 = *(v10 + 1380);
    v21 = *(v10 + 1376);
    *(v10 + 1976) = v21;
    *(v10 + 1424) = v21;
    *(v10 + 1980) = v20;
    v22 = *(v10 + 1368);
    *(v10 + 1984) = v22;
    v23 = *(v10 + 1360);
    *(v10 + 1992) = v23;
    v24 = *(v10 + 1352);
    *(v10 + 2000) = v24;
    v25 = *(v10 + 1344);
    *(v10 + 2008) = v25;
    *(v10 + 1480) = v11;
    *(v10 + 1488) = v25;
    *(v10 + 1496) = v24;
    *(v10 + 1504) = v23;
    *(v10 + 1512) = v22;
    *(v10 + 1520) = v21 & 1;
    v26.i64[0] = 0xFFFFFFFFFFLL;
    v26.i64[1] = 0xFFFFFFFFFFLL;
    v27 = vandq_s8(vdupq_n_s64(v21 | (v20 << 32)), v26);
    *v27.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v27, xmmword_A6B70), vshlq_u64(v27, xmmword_A6B60))), 0x1000100010001);
    *(v10 + 1521) = vuzp1_s8(*v27.i8, *v27.i8).u32[0];
    *(v10 + 1384) = v11;
    *(v10 + 1392) = v25;
    *(v10 + 1400) = v24;
    *(v10 + 1408) = v23;
    *(v10 + 1416) = v22;
    *(v10 + 1428) = v20;
    sub_42558(v10 + 1384, v10 + 1528);
    sub_810AC(0xD000000000000022, 0x80000000000B0820, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000041, 0x80000000000B07D0);
    sub_490A8();
    sub_49104();

    return _swift_asyncLet_get(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_40F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_49170();
  sub_40178();
  sub_49088();
  sub_11E34(v10, &qword_DD4E8, &qword_A9300);

  v12 = *(v11 + 8);
  sub_49104();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_41058()
{
  v1 = *(v0 + 2008);
  v2 = *(v0 + 2000);
  v3 = *(v0 + 1992);
  v4 = *(v0 + 1984);
  v5 = *(v0 + 1976) | (*(v0 + 1980) << 32);
  v6 = *(v0 + 1968);
  v7 = *(v0 + 1928);
  v8 = *(v0 + 1856);
  v9 = *(v0 + 1752);
  v10 = *(v0 + 1704);
  v11 = *(v0 + 1656);
  *(v0 + 1432) = v6;
  v20 = v2;
  v21 = v1;
  *(v0 + 1440) = v1;
  *(v0 + 1448) = v2;
  v19 = v3;
  *(v0 + 1456) = v3;
  *(v0 + 1464) = v4;
  *(v0 + 1472) = v5 & 0x1010101;
  *(v0 + 1476) = (v5 & 0x101010101010101) >> 32;
  sub_432E4(v6, v1, v2, v3, v4, v5, 0);

  sub_42C28(v11, v0 + 1432, v8);

  v12 = type metadata accessor for CalendarPreprocessingResult(0);
  sub_48F30(v8, v10 + *(v12 + 20), &qword_DB958, qword_A6CE0);
  sub_43330(v0 + 1480, v10 + *(v12 + 24));
  sub_43AE8(v6, v21, v20, v19, v4, v5, 0);
  sub_11E34(v8, &qword_DB958, qword_A6CE0);
  v13 = *(v0 + 1461);
  v14 = *(v0 + 1448);
  *v10 = *(v0 + 1432);
  v10[1] = v14;
  *(v10 + 29) = v13;
  sub_4BF0(&qword_DC758, &unk_A8340);
  swift_storeEnumTagMultiPayload();
  v15 = sub_490A8();

  return _swift_asyncLet_finish(v15, v16, v17, v0 + 1664);
}

BOOL sub_41254(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_A2DB4() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_41328()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_DD4D0);
  v1 = sub_48A4(v0, qword_DD4D0);
  if (qword_DA9E0 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0BD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_413F0()
{
  result = sub_7B510(&off_CF080);
  qword_E08D0 = result;
  return result;
}

uint64_t sub_41418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  v8 = swift_task_alloc();
  *(v4 + 72) = v8;
  *v8 = v4;
  v8[1] = sub_414D0;

  return sub_41924(v4 + 16, a2, a3, a4);
}

uint64_t sub_414D0()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 72);
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_415B4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 30) = *(v0 + 46);
  *v1 = v2;
  v1[1] = v3;
  return sub_49070();
}

uint64_t sub_415CC()
{
  v1 = sub_A2EA4();
  sub_591C(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = sub_4BF0(&qword_DD4E8, &qword_A9300);
  sub_5940(v8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10) & ~v10;
  v13 = *(v12 + 64);
  v14 = *(v3 + 8);
  v14(v0 + v5, v1);
  v15 = v0 + v11;
  v16 = type metadata accessor for DBCalendarState();
  if (!sub_CF2C(v0 + v11, 1, v16))
  {
    v23 = v13;
    v14(v0 + v11, v1);
    v17 = *(v15 + v16[5]);

    v18 = v16[6];
    if (!sub_CF2C(v15 + v18, 1, v1))
    {
      v14(v15 + v18, v1);
    }

    v19 = *(v15 + v16[10]);

    v20 = v16[11];
    v13 = v23;
    if (!sub_CF2C(v15 + v20, 1, v1))
    {
      v14(v15 + v20, v1);
    }
  }

  v21 = (v13 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_761C((v0 + v21));

  return _swift_deallocObject(v0, v21 + 40, v4 | v10 | 7);
}

uint64_t sub_417B8(uint64_t a1)
{
  v3 = v2;
  v5 = sub_A2EA4();
  sub_5940(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = v7 + *(v8 + 64);
  v10 = sub_4BF0(&qword_DD4E8, &qword_A9300);
  sub_5940(v10);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = (*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2B8E8;

  return sub_41418(a1, v1 + v7, v1 + v12, v1 + v14);
}

uint64_t sub_41924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_A3004();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();
  v8 = sub_A2EA4();
  v4[21] = v8;
  v9 = *(v8 - 8);
  v4[22] = v9;
  v10 = *(v9 + 64) + 15;
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_41A44, 0, 0);
}

uint64_t sub_41A44()
{
  sub_5950();
  if (qword_DA8D0 != -1)
  {
    sub_49044();
  }

  v1 = sub_A43D4();
  v0[24] = sub_48A4(v1, qword_DD4D0);
  sub_810AC(0xD000000000000018, 0x80000000000B0B30, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003FLL, 0x80000000000B0B50);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_41B64;
  v3 = v0[17];
  v4 = v0[15];

  return sub_6819C();
}

uint64_t sub_41B64()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v4 = *(v3 + 200);
  *v2 = *v0;
  *(v1 + 208) = v5;
  *(v1 + 62) = v6;

  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

id sub_41C54()
{
  v4 = *(v0 + 208);
  v5 = "fetching upcoming events";
  if (*(v0 + 62))
  {
    v6 = *(v0 + 192);
    sub_490B8();
    sub_A4B54(42);

    swift_getErrorValue();
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 80);
    v96._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v96);

    v10 = 0x80000000000B0C20;
    sub_490E0();
    sub_810AC(v11, v12, v13, v14, v15, v16);

    sub_490C8();
    v17 = *(v0 + 208);
  }

  else
  {
    v19 = *(v0 + 192);
    v20 = *(v0 + 120);
    v21 = *(v0 + 208);

    sub_490E0();
    sub_810AC(v22, v23, v24, v25, v26, v27);
    v2 = sub_43B34(v20, v4);
    v3 = v28;
    v29 = swift_task_alloc();
    *(v29 + 16) = v20;

    v10 = 0;
    sub_61CC4(sub_48DA0, v29, v2);
    v31 = v30;

    if (sub_1BF68(v31))
    {
      sub_1BF70(0, (v31 & 0xC000000000000001) == 0, v31);
      v93 = v2;
      if ((v31 & 0xC000000000000001) != 0)
      {

        v33 = sub_A4B74();
      }

      else
      {
        v32 = *(v31 + 32);

        v33 = v32;
      }

      v94 = v33;
      v34 = *(v0 + 192);
      v35 = sub_44130(v31);
      sub_490B8();
      sub_A4B54(37);

      v88 = v35[2];
      v89 = v35;
      *(v0 + 88) = v88;
      v97._countAndFlagsBits = sub_A4E24();
      sub_A46D4(v97);

      v98._object = 0x80000000000B0BC0;
      v98._countAndFlagsBits = 0xD00000000000001DLL;
      sub_A46D4(v98);
      sub_490E0();
      sub_810AC(v36, v37, v38, v39, v40, v41);

      v42 = sub_44130(v3);
      sub_490B8();
      sub_A4B54(37);

      v86 = v42[2];
      v87 = v42;
      *(v0 + 96) = v86;
      v99._countAndFlagsBits = sub_A4E24();
      sub_A46D4(v99);

      v100._object = 0x80000000000B0BE0;
      v100._countAndFlagsBits = 0xD00000000000001DLL;
      sub_A46D4(v100);
      sub_490E0();
      sub_810AC(v43, v44, v45, v46, v47, v48);

      v2 = sub_1BF68(v31);
      result = [v94 startDate];
      if (result)
      {
        v50 = result;
        v51 = *(v0 + 208);
        v52 = *(v0 + 176);
        v53 = *(v0 + 184);
        v54 = *(v0 + 160);
        v55 = *(v0 + 144);
        v56 = *(v0 + 152);
        v91 = *(v0 + 168);
        v92 = *(v0 + 128);
        v90 = *(v0 + 120);

        sub_5068(v51, 0);

        sub_A2E74();

        sub_A2FD4();
        v57 = sub_A2F54();
        (*(v56 + 8))(v54, v55);
        (*(v52 + 8))(v53, v91);
        v58 = sub_79D74();
        v59 = sub_448EC(1, v2, v92);

        v60 = sub_1BF68(v93);

        v61 = v60 - v2;
        if (!__OFSUB__(v60, v2))
        {
          v62 = *(v0 + 208);
          v63 = (v58 - 6) < 3u;
          v64 = v61 > 0;
          v17 = v89;
          v65 = sub_45038(1, v89, *(v0 + 128));
          sub_5068(v62, 0);

          v18 = 0;
          v66 = 0x10000;
          if ((v59 & 1) == 0)
          {
            v66 = 0;
          }

          v67 = 0x100000000;
          if (!v65)
          {
            v67 = 0;
          }

          v10 = v66 & 0xFFFFFFFFFFFFFFFELL | v57 & 1 | (v63 << 8) | (v64 << 24) | v67;
          v1 = v87;
          v5 = v88;
          v3 = v86;
          goto LABEL_16;
        }

        __break(1u);
      }

      __break(1u);
      return result;
    }

    v68 = *(v0 + 208);
    v69 = sub_1BF68(v3);

    sub_5068(v68, 0);
    v1 = *(v0 + 208);
    if (v69)
    {
      v70 = *(v0 + 120);
      v71 = *(v0 + 128);

      sub_43E5C(v3, v71, v0 + 16);
      v17 = *(v0 + 16);
      v72 = *(v0 + 24);
      v5 = *(v0 + 32);
      v2 = *(v0 + 40);
      v10 = *(v0 + 56) | (*(v0 + 60) << 32);
      v18 = *(v0 + 61);
      v3 = *(v0 + 48);

      v73 = v1;
      v1 = v72;
      sub_5068(v73, 0);
      goto LABEL_16;
    }

    v78 = *(v0 + 192);

    swift_bridgeObjectRelease_n();

    sub_490E0();
    sub_810AC(v79, v80, v81, v82, v83, v84);
    sub_24824();
    v17 = swift_allocError();
    *v85 = 2;
    sub_5068(v1, 0);
    sub_490C8();
  }

  v18 = 1;
LABEL_16:
  v74 = *(v0 + 184);
  v75 = *(v0 + 160);
  v76 = *(v0 + 112);

  *v76 = v17;
  *(v76 + 8) = v1;
  *(v76 + 16) = v5;
  *(v76 + 24) = v2;
  *(v76 + 32) = v3;
  *(v76 + 44) = BYTE4(v10);
  *(v76 + 40) = v10;
  *(v76 + 45) = v18;
  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_422D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_42374;

  return sub_425B4(a2, a3);
}

uint64_t sub_42374()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_42470()
{
  v1 = sub_A2EA4();
  sub_5940(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_49130(*(v4 + 64));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v6 = sub_490EC(v5);

  return sub_422D4(v6, v7, v8);
}

uint64_t sub_425B4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_A40F4();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_A2EA4();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v2[15] = *(v7 + 64);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_426D8, 0, 0);
}

uint64_t sub_426D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_49170();
  sub_40178();
  v12 = v10[15];
  v11 = v10[16];
  v13 = v10[13];
  v14 = v10[14];
  v15 = v10[9];
  (*(v14 + 16))(v11, v10[8], v13);
  v16 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v10[17] = v18;
  (*(v14 + 32))(v18 + v16, v11, v13);
  *(v18 + v17) = v15;
  v19 = async function pointer to withTimeout<A>(seconds:operation:)[1];
  v20 = v15;
  v21 = swift_task_alloc();
  v10[18] = v21;
  sub_4BF0(&qword_DD4F8, &qword_A9330);
  *v21 = v10;
  v21[1] = sub_4282C;
  sub_49104();

  return withTimeout<A>(seconds:operation:)(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_4282C()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_25540();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  sub_5930();
  *v8 = v7;
  *(v3 + 152) = v0;

  if (v0)
  {
    v9 = sub_429A0;
  }

  else
  {
    v10 = *(v3 + 136);

    v9 = sub_42934;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_42934()
{
  sub_5950();
  v1 = v0[5];
  v2 = v0[16];
  v3 = v0[12];

  sub_49144();

  return v4(v1);
}

uint64_t sub_429A0()
{
  sub_40178();
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[12];
  v4 = v0[10];

  v0[6] = v1;
  swift_errorRetain();
  sub_4BF0(&qword_DBB90, &qword_A7540);
  if (swift_dynamicCast())
  {
    v5 = v0[19];

    if (qword_DA8D0 != -1)
    {
      sub_49044();
    }

    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];
    v9 = sub_A43D4();
    sub_48A4(v9, qword_DD4D0);
    sub_4911C();
    sub_81094(v10, v11, v12, v13, v14, v15);
    (*(v7 + 8))(v6, v8);
    v16 = v0[6];
  }

  else
  {
    v17 = v0[6];

    if (qword_DA8D0 != -1)
    {
      sub_49044();
    }

    v18 = v0[19];
    v19 = sub_A43D4();
    sub_48A4(v19, qword_DD4D0);
    sub_A4B54(39);

    swift_getErrorValue();
    v21 = v0[2];
    v20 = v0[3];
    v22 = v0[4];
    v28._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v28);

    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    sub_A46D4(v29);
    sub_810AC(0xD000000000000024, 0x80000000000B08E0, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000026, 0x80000000000B0910);
  }

  v23 = v0[16];
  v24 = v0[12];

  sub_49144();

  return v25(_swiftEmptyArrayStorage);
}

uint64_t sub_42C28@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = sub_4BF0(&qword_DB960, &unk_A6C00);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v49 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v49 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v49 - v17;
  __chkstk_darwin(v16);
  v20 = &v49 - v19;
  v21 = sub_4BF0(&qword_DD220, qword_A9B20);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v49 - v23;
  v25 = sub_A2EA4();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a2;
  if (*a2 && *(a1 + 16))
  {
    v31 = *(a2 + 16);
    v32 = *(a2 + 40);
    if ((v32 & 1) == 0)
    {
      v31 = *(a2 + 32);
    }

    v49 = v31;
    v50 = v27;
    if (v32)
    {
      sub_589D0(v30, v20);
      v33 = type metadata accessor for CalendarEvent(0);
      if (sub_CF2C(v20, 1, v33) == 1)
      {
        v18 = v20;
LABEL_12:
        sub_11E34(v18, &qword_DB960, &unk_A6C00);
        sub_A924(v24, 1, 1, v25);
LABEL_15:
        sub_11E34(v24, &qword_DD220, qword_A9B20);
        v38 = type metadata accessor for ImportantEventInfo(0);
        return sub_A924(v51, 1, 1, v38);
      }
    }

    else
    {
      sub_589D0(*(a2 + 8), v18);
      v33 = type metadata accessor for CalendarEvent(0);
      if (sub_CF2C(v18, 1, v33) == 1)
      {
        goto LABEL_12;
      }

      v20 = v18;
    }

    v37 = v50;
    (*(v50 + 16))(v24, &v20[*(v33 + 20)], v25);
    sub_48E30(v20, type metadata accessor for CalendarEvent);
    sub_A924(v24, 0, 1, v25);
    if (sub_CF2C(v24, 1, v25) == 1)
    {
      goto LABEL_15;
    }

    v39 = (*(v37 + 32))(v29, v24, v25);
    if (v49 < 3)
    {
      v40 = _swiftEmptyArrayStorage;
    }

    else
    {
      __chkstk_darwin(v39);
      *(&v49 - 2) = v29;

      v40 = sub_61A9C(sub_47C94, (&v49 - 4), a1);
    }

    v41 = type metadata accessor for CalendarEvent(0);
    v42 = sub_A924(v15, 1, 1, v41);
    __chkstk_darwin(v42);
    *(&v49 - 2) = v29;
    sub_404AC(sub_47C28, a1, v12);
    sub_11E34(v15, &qword_DB960, &unk_A6C00);
    sub_47C48(v12, v15, &qword_DB960, &unk_A6C00);
    if (!v40[2])
    {
      sub_48F30(v15, v9, &qword_DB960, &unk_A6C00);
      if (sub_CF2C(v9, 1, v41) == 1)
      {

        sub_11E34(v9, &qword_DB960, &unk_A6C00);
        sub_11E34(v15, &qword_DB960, &unk_A6C00);
        v43 = type metadata accessor for ImportantEventInfo(0);
        v44 = v51;
        v45 = 1;
LABEL_28:
        sub_A924(v44, v45, 1, v43);
        return (*(v50 + 8))(v29, v25);
      }

      sub_11E34(v9, &qword_DB960, &unk_A6C00);
    }

    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v46 = sub_A43D4();
    sub_48A4(v46, qword_DD4D0);
    sub_810AC(0xD000000000000033, 0x80000000000B0850, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000004FLL, 0x80000000000B0890);
    if (qword_DAA28 != -1)
    {
      swift_once();
    }

    sub_7A124(0, qword_E0CB8, unk_E0CC0, byte_E0CC8, qword_E0CD0);
    v47 = type metadata accessor for ImportantEventInfo(0);
    v48 = v51;
    sub_47C48(v15, v51 + *(v47 + 20), &qword_DB960, &unk_A6C00);
    *v48 = v40;
    v44 = v48;
    v45 = 0;
    v43 = v47;
    goto LABEL_28;
  }

  v34 = type metadata accessor for ImportantEventInfo(0);
  v35 = v51;

  return sub_A924(v35, 1, 1, v34);
}

uint64_t sub_432E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_43330@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v74 = a2;
  v82 = type metadata accessor for CalendarEvent(0);
  v3 = *(v82 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v82);
  v83 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_A2DB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v66 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v64 - v11;
  v13 = sub_4BF0(&qword_DB960, &unk_A6C00);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v73 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v64 - v17;
  v19 = sub_4BF0(&qword_DD220, qword_A9B20);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v78 = &v64 - v24;
  v25 = sub_A2EA4();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v71 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v28;
  v68 = *(v28 + 16);
  v69 = v28 + 16;
  v68();
  v29 = *a1;
  v30 = *(*a1 + 16);
  v79 = v25;
  v75 = v23;
  v76 = a1;
  if (v30)
  {
    v67 = v18;
    v84 = _swiftEmptyArrayStorage;
    v31 = v29;
    sub_7AD60(0, v30, 0);
    v32 = v84;
    v33 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v65 = v31;
    v34 = v31 + v33;
    v77 = v3;
    v35 = *(v3 + 72);
    v80 = v7 + 32;
    v81 = v35;
    v36 = v82;
    do
    {
      v37 = v83;
      sub_106FC(v34, v83);
      (*(v7 + 16))(v12, v37 + *(v36 + 24), v6);
      sub_48E30(v37, type metadata accessor for CalendarEvent);
      v84 = v32;
      v38 = v6;
      v40 = v32[2];
      v39 = v32[3];
      if (v40 >= v39 >> 1)
      {
        sub_7AD60(v39 > 1, v40 + 1, 1);
        v36 = v82;
        v32 = v84;
      }

      v32[2] = v40 + 1;
      (*(v7 + 32))(v32 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v40, v12, v38);
      v34 += v81;
      --v30;
      v6 = v38;
    }

    while (v30);
    v70 = v32;
    v23 = v75;
    a1 = v76;
    v25 = v79;
    v3 = v77;
    v18 = v67;
    v29 = v65;
  }

  else
  {
    v70 = _swiftEmptyArrayStorage;
    v36 = v82;
  }

  sub_589D0(v29, v18);
  if (sub_CF2C(v18, 1, v36) == 1)
  {
    sub_11E34(v18, &qword_DB960, &unk_A6C00);
    v41 = 1;
    v42 = v78;
  }

  else
  {
    v42 = v78;
    (v68)(v78, &v18[*(v36 + 20)], v25);
    sub_48E30(v18, type metadata accessor for CalendarEvent);
    v41 = 0;
  }

  sub_A924(v42, v41, 1, v25);
  LODWORD(v77) = *(a1 + 40);
  if (v77)
  {
    v67 = *(a1 + 24);
  }

  else
  {
    v67 = 0;
  }

  v43 = *(a1 + 8);
  v44 = *(v43 + 16);
  v45 = _swiftEmptyArrayStorage;
  if (v44)
  {
    v84 = _swiftEmptyArrayStorage;
    sub_7AD60(0, v44, 0);
    v45 = v84;
    v46 = v43 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v47 = *(v3 + 72);
    v80 = v7 + 32;
    v81 = v47;
    v48 = v66;
    do
    {
      v49 = v83;
      sub_106FC(v46, v83);
      (*(v7 + 16))(v48, v49 + *(v82 + 24), v6);
      sub_48E30(v49, type metadata accessor for CalendarEvent);
      v84 = v45;
      v50 = v6;
      v52 = v45[2];
      v51 = v45[3];
      if (v52 >= v51 >> 1)
      {
        sub_7AD60(v51 > 1, v52 + 1, 1);
        v45 = v84;
      }

      v45[2] = v52 + 1;
      (*(v7 + 32))(v45 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v52, v48, v50);
      v46 += v81;
      --v44;
      v6 = v50;
    }

    while (v44);
    v23 = v75;
    a1 = v76;
    v25 = v79;
  }

  v53 = v73;
  sub_589D0(v43, v73);
  v54 = v82;
  if (sub_CF2C(v53, 1, v82) == 1)
  {
    sub_11E34(v53, &qword_DB960, &unk_A6C00);
    v55 = 1;
  }

  else
  {
    (v68)(v23, v53 + *(v54 + 20), v25);
    sub_48E30(v53, type metadata accessor for CalendarEvent);
    v55 = 0;
  }

  sub_A924(v23, v55, 1, v25);
  if (v77)
  {
    v56 = 0;
  }

  else
  {
    v56 = *(a1 + 24);
  }

  v57 = *(a1 + 16);
  v58 = *(a1 + 32);
  v59 = v74;
  (*(v72 + 32))(v74, v71, v79);
  v60 = type metadata accessor for DBCalendarState();
  *(v59 + v60[5]) = v70;
  sub_47C48(v78, v59 + v60[6], &qword_DD220, qword_A9B20);
  *(v59 + v60[7]) = v57;
  v61 = v59 + v60[8];
  *v61 = v67;
  LOBYTE(v57) = v77;
  *(v61 + 8) = (v77 & 1) == 0;
  *(v59 + v60[9]) = v58;
  *(v59 + v60[10]) = v45;
  result = sub_47C48(v23, v59 + v60[11], &qword_DD220, qword_A9B20);
  v63 = v59 + v60[12];
  *v63 = v56;
  *(v63 + 8) = v57 & 1;
  return result;
}

uint64_t sub_43AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
  }
}

uint64_t sub_43B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_A2EA4();
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 64);
  __chkstk_darwin(v4);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4F714(a1, v26);
  v30 = _swiftEmptyArrayStorage;
  v7 = sub_1BF68(a2);
  v8 = 0;
  v29 = SACalendarParticipantStatusDECLINEDValue;
  while (1)
  {
    if (v7 == v8)
    {

      v30 = sub_29790(v19);
      sub_48314(&v30);

      v21 = v30;
      __chkstk_darwin(v20);
      v22 = v26;
      *(&v26 - 2) = v26;

      sub_61CC4(sub_48F7C, (&v26 - 4), v21);
      v24 = v23;
      __chkstk_darwin(v23);
      *(&v26 - 2) = v22;
      sub_61CC4(sub_48FB0, (&v26 - 4), v21);
      (*(v27 + 8))(v22, v28);
      return v24;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = sub_A4B74();
    }

    else
    {
      if (v8 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_23;
      }

      v9 = *(a2 + 8 * v8 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if ([v9 allDay])
    {
      goto LABEL_8;
    }

    v11 = sub_48D44(v10, &selRef_selfParticipantStatus);
    v13 = v12;
    v14 = sub_A45F4();
    if (!v13)
    {

LABEL_17:
      sub_A4BB4();
      v18 = v30[2];
      sub_A4BE4();
      sub_A4BF4();
      sub_A4BC4();
      goto LABEL_19;
    }

    if (v11 != v14 || v13 != v15)
    {
      v17 = sub_A4E44();

      if (v17)
      {
LABEL_8:

        goto LABEL_19;
      }

      goto LABEL_17;
    }

LABEL_19:
    ++v8;
  }

  __break(1u);
LABEL_23:
  __break(1u);

  __break(1u);
  return result;
}

void *sub_43E5C@<X0>(id *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if ((sub_79D74() - 6) <= 2u && sub_1BF68(a1))
  {
    v6 = sub_44130(a1);
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v7 = sub_A43D4();
    sub_48A4(v7, qword_DD4D0);
    sub_A4B54(37);

    v8 = v6[2];
    v19._countAndFlagsBits = sub_A4E24();
    sub_A46D4(v19);

    v20._countAndFlagsBits = 0xD00000000000001DLL;
    v20._object = 0x80000000000B0BE0;
    sub_A46D4(v20);
    sub_810AC(0x20646E756F46, 0xE600000000000000, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000004FLL, 0x80000000000B0C80);

    v9 = sub_1BF68(a1);
    v10 = sub_448EC(0, v9, a2);
    v11 = sub_45038(0, v6, a2);
    v12 = 0;
    v13 = 256;
    if (v10)
    {
      v13 = 65792;
    }

    v14 = 0x100000000;
    if (!v11)
    {
      v14 = 0;
    }

    v15 = v14 | v13;
    result = _swiftEmptyArrayStorage;
  }

  else
  {
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v17 = sub_A43D4();
    sub_48A4(v17, qword_DD4D0);
    sub_810AC(0xD000000000000025, 0x80000000000B0C50, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000004FLL, 0x80000000000B0C80);
    sub_24824();
    result = swift_allocError();
    v6 = 0;
    v9 = 0;
    v8 = 0;
    v15 = 0;
    *v18 = 2;
    v12 = 1;
  }

  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  *(a3 + 24) = v9;
  *(a3 + 32) = v8;
  *(a3 + 40) = v15;
  *(a3 + 44) = BYTE4(v15);
  *(a3 + 45) = v12;
  return result;
}

void *sub_44130(id *a1)
{
  v62 = sub_A2DB4();
  v2 = *(v62 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v62);
  v61 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CalendarEvent(0);
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  __chkstk_darwin(v5);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_A2FE4();
  v8 = *(v73 - 8);
  v9 = v8[8];
  __chkstk_darwin(v73);
  v72 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_A2EA4();
  v11 = *(v75 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v75);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v71 = (&v53 - v17);
  __chkstk_darwin(v16);
  v19 = &v53 - v18;
  v70 = sub_A3004();
  v20 = *(v70 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v70);
  v76 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v23 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v23)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_40:
  v23 = sub_A4C94();
  if (!v23)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  sub_1BF70(0, (a1 & 0xC000000000000001) == 0, a1);
  v69 = a1 & 0xC000000000000001;
  v57 = v15;
  v55 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v24 = sub_A4B74();
  }

  else
  {
    v24 = a1[4];
  }

  v74 = v24;
  v25 = 0;
  v77[0] = _swiftEmptyArrayStorage;
  v56 = a1 & 0xFFFFFFFFFFFFFF8;
  v68 = (v8 + 13);
  v67 = enum case for Calendar.Component.minute(_:);
  v65 = (v20 + 8);
  v66 = (v8 + 1);
  v54 = v11;
  v63 = a1;
  v64 = v11 + 1;
  v2 = &unk_D9000;
  while (v23 != v25)
  {
    if (v69)
    {
      v26 = sub_A4B74();
    }

    else
    {
      if (v25 >= *(v56 + 16))
      {
        goto LABEL_38;
      }

      v26 = a1[v25 + 4];
    }

    v27 = v26;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_A2FD4();
    result = [v27 *(v2 + 1136)];
    if (!result)
    {
      goto LABEL_45;
    }

    v29 = result;
    v20 = v23;
    sub_A2E74();

    v15 = v2;
    result = [v74 *(v2 + 1136)];
    if (!result)
    {
      goto LABEL_44;
    }

    v30 = result;
    v31 = v71;
    sub_A2E74();

    v33 = v72;
    v32 = v73;
    (*v68)(v72, v67, v73);
    v34 = v76;
    v11 = sub_A2FC4();
    (*v66)(v33, v32);
    (*v65)(v34, v70);
    v8 = v64;
    v35 = *v64;
    v36 = v75;
    (*v64)(v31, v75);
    v35(v19, v36);
    if (v11)
    {
    }

    else
    {
      v8 = v77;
      sub_A4BB4();
      v37 = *(v77[0] + 16);
      sub_A4BE4();
      sub_A4BF4();
      sub_A4BC4();
    }

    v23 = v20;
    ++v25;
    a1 = v63;
    v2 = v15;
  }

  v15 = v77[0];
  v38 = sub_1BF68(v77[0]);
  if (!v38)
  {

    return _swiftEmptyArrayStorage;
  }

  v39 = v38;
  v77[0] = _swiftEmptyArrayStorage;
  v8 = v77;
  result = sub_7AD08(0, v38 & ~(v38 >> 63), 0);
  if ((v39 & 0x8000000000000000) == 0)
  {
    v2 = 0;
    v40 = v77[0];
    v73 = v15 & 0xC000000000000001;
    v72 = (v54 + 4);
    v71 = (v55 + 32);
    while (1)
    {
      a1 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        goto LABEL_37;
      }

      if (v73)
      {
        v41 = sub_A4B74();
      }

      else
      {
        if (v2 >= *(v15 + 16))
        {
          goto LABEL_39;
        }

        v41 = *(v15 + 8 * v2 + 32);
      }

      v8 = v41;
      result = sub_48D44(v41, &selRef_title);
      if (!v42)
      {
        goto LABEL_47;
      }

      v43 = result;
      v44 = v42;
      v76 = (v2 + 1);
      result = [v8 startDate];
      if (!result)
      {
        goto LABEL_48;
      }

      v45 = result;
      v46 = v15;
      v11 = v40;
      v47 = v57;
      sub_A2E74();

      result = [v8 calendarPunchoutURI];
      if (!result)
      {
        goto LABEL_46;
      }

      v48 = result;
      v49 = v61;
      sub_A2D74();

      v19 = v58;
      *v58 = v43;
      *(v19 + 1) = v44;
      v50 = v60;
      (*v72)(&v19[*(v60 + 20)], v47, v75);
      (*v71)(&v19[*(v50 + 24)], v49, v62);

      v40 = v11;
      v77[0] = v11;
      v52 = v11[2];
      v51 = v11[3];
      v20 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v8 = v77;
        sub_7AD08(v51 > 1, v52 + 1, 1);
        v40 = v77[0];
      }

      v40[2] = v20;
      sub_48DD4(v19, v40 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v52, type metadata accessor for CalendarEvent);
      ++v2;
      v15 = v46;
      if (v76 == v39)
      {

        return v40;
      }
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_448EC(char a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v5 = sub_A3004();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_4BF0(&qword_DD4E8, &qword_A9300);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v35 - v12;
  v14 = type metadata accessor for DBCalendarState();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48F30(a3, v13, &qword_DD4E8, &qword_A9300);
  if (sub_CF2C(v13, 1, v14) == 1)
  {
    sub_11E34(v13, &qword_DD4E8, &qword_A9300);
LABEL_10:
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v22 = sub_A43D4();
    sub_48A4(v22, qword_DD4D0);
    sub_810C4(0xD00000000000003BLL, 0x80000000000B0CD0, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003CLL, 0x80000000000B0E90);
    return 0;
  }

  sub_48DD4(v13, v17, type metadata accessor for DBCalendarState);
  if (!sub_4FAC4())
  {
    sub_48E30(v17, type metadata accessor for DBCalendarState);
    goto LABEL_10;
  }

  sub_A2FD4();
  v18 = (v6 + 8);
  if ((a1 & 1) == 0)
  {
    v25 = sub_A2F54();
    (*v18)(v9, v5);
    if ((v25 & 1) != 0 && (sub_79D74() - 6) <= 2u)
    {
      v26 = &v17[*(v14 + 48)];
      v21 = (v26[8] & 1) == 0 && *v26 == v36;
      v23 = !v21;
      if (qword_DA8D0 != -1)
      {
        swift_once();
      }

      v32 = sub_A43D4();
      sub_48A4(v32, qword_DD4D0);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_A4B54(46);

      v37 = 0xD00000000000002CLL;
      v38 = 0x80000000000B0F00;
      goto LABEL_39;
    }

    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v29 = sub_A43D4();
    sub_48A4(v29, qword_DD4D0);
    sub_810C4(0xD00000000000002FLL, 0x80000000000B0ED0, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003CLL, 0x80000000000B0E90);
LABEL_27:
    sub_48E30(v17, type metadata accessor for DBCalendarState);
    return 0;
  }

  v19 = sub_A2F84();
  (*v18)(v9, v5);
  if ((v19 & 1) != 0 && (sub_79D74() - 6) <= 2u)
  {
    v20 = &v17[*(v14 + 48)];
    v21 = (v20[8] & 1) == 0 && *v20 == v36;
    v23 = !v21;
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v31 = sub_A43D4();
    sub_48A4(v31, qword_DD4D0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_A4B54(67);
    v39._countAndFlagsBits = 0xD000000000000041;
    v39._object = 0x80000000000B0F90;
    sub_A46D4(v39);
LABEL_39:
    if (v21)
    {
      v33._countAndFlagsBits = 0x65736C6166;
    }

    else
    {
      v33._countAndFlagsBits = 1702195828;
    }

    if (v21)
    {
      v34 = 0xE500000000000000;
    }

    else
    {
      v34 = 0xE400000000000000;
    }

    v33._object = v34;
    sub_A46D4(v33);

    sub_810C4(v37, v38, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003CLL, 0x80000000000B0E90);

    sub_48E30(v17, type metadata accessor for DBCalendarState);
    return v23;
  }

  v27 = &v17[*(v14 + 32)];
  if ((v27[8] & 1) == 0 && *v27 == v36)
  {
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v28 = sub_A43D4();
    sub_48A4(v28, qword_DD4D0);
    sub_810AC(0xD00000000000002BLL, 0x80000000000B0F60, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003CLL, 0x80000000000B0E90);
    goto LABEL_27;
  }

  if (qword_DA8D0 != -1)
  {
    swift_once();
  }

  v30 = sub_A43D4();
  sub_48A4(v30, qword_DD4D0);
  sub_810C4(0xD000000000000022, 0x80000000000B0F30, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003CLL, 0x80000000000B0E90);
  sub_48E30(v17, type metadata accessor for DBCalendarState);
  return 1;
}

BOOL sub_45038(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_A3004();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4BF0(&qword_DD4E8, &qword_A9300);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for DBCalendarState();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v19 = sub_A43D4();
    sub_48A4(v19, qword_DD4D0);
    v20 = " first event(s) for tomorrow.";
    v21 = 0xD000000000000019;
    goto LABEL_18;
  }

  sub_48F30(a3, v14, &qword_DD4E8, &qword_A9300);
  if (sub_CF2C(v14, 1, v15) == 1)
  {
    sub_11E34(v14, &qword_DD4E8, &qword_A9300);
LABEL_15:
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v29 = sub_A43D4();
    sub_48A4(v29, qword_DD4D0);
    v20 = "omorrow:previousCalendarState:)";
    v21 = 0xD00000000000003BLL;
LABEL_18:
    sub_810C4(v21, v20 | 0x8000000000000000, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003FLL, 0x80000000000B0D10);
    return 0;
  }

  sub_48DD4(v14, v18, type metadata accessor for DBCalendarState);
  if (!sub_4FAC4())
  {
    sub_48E30(v18, type metadata accessor for DBCalendarState);
    goto LABEL_15;
  }

  sub_A2FD4();
  v22 = (v7 + 8);
  if ((a1 & 1) == 0)
  {
    v31 = sub_A2F54();
    (*v22)(v10, v6);
    if (v31)
    {
      v32 = sub_79D74();
      if ((v32 - 6) <= 2u)
      {
        __chkstk_darwin(v32);
        *(&v39 - 2) = v18;
        v25 = sub_40650(sub_48E88, (&v39 - 4), a2);
        if (qword_DA8D0 != -1)
        {
          swift_once();
        }

        v33 = sub_A43D4();
        sub_48A4(v33, qword_DD4D0);
        v40 = 0;
        v41 = 0xE000000000000000;
        sub_A4B54(57);
        v27 = "om today evening.";
        v28._countAndFlagsBits = 0xD000000000000037;
        goto LABEL_26;
      }
    }

    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v37 = sub_A43D4();
    sub_48A4(v37, qword_DD4D0);
    sub_810C4(0xD000000000000031, 0x80000000000B0D50, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003FLL, 0x80000000000B0D10);
LABEL_43:
    sub_48E30(v18, type metadata accessor for DBCalendarState);
    return 0;
  }

  v23 = sub_A2F84();
  v24 = (*v22)(v10, v6);
  if (v23)
  {
    v24 = sub_79D74();
    if ((v24 - 6) <= 2u)
    {
      __chkstk_darwin(v24);
      *(&v39 - 2) = v18;
      v25 = sub_40650(sub_48EDC, (&v39 - 4), a2);
      if (qword_DA8D0 != -1)
      {
        swift_once();
      }

      v26 = sub_A43D4();
      sub_48A4(v26, qword_DD4D0);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_A4B54(62);
      v27 = " changed since last invocation";
      v28._countAndFlagsBits = 0xD00000000000003CLL;
LABEL_26:
      v28._object = (v27 | 0x8000000000000000);
      sub_A46D4(v28);
      if (v25)
      {
        v34._countAndFlagsBits = 1702195828;
      }

      else
      {
        v34._countAndFlagsBits = 0x65736C6166;
      }

      if (v25)
      {
        v35 = 0xE400000000000000;
      }

      else
      {
        v35 = 0xE500000000000000;
      }

      v34._object = v35;
      sub_A46D4(v34);

      sub_810C4(v40, v41, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003FLL, 0x80000000000B0D10);

      sub_48E30(v18, type metadata accessor for DBCalendarState);
      return v25;
    }
  }

  __chkstk_darwin(v24);
  *(&v39 - 2) = v18;
  if (!sub_40650(sub_48EBC, (&v39 - 4), a2))
  {
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v38 = sub_A43D4();
    sub_48A4(v38, qword_DD4D0);
    sub_810AC(0xD00000000000003BLL, 0x80000000000B0DD0, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003FLL, 0x80000000000B0D10);
    goto LABEL_43;
  }

  if (qword_DA8D0 != -1)
  {
    swift_once();
  }

  v36 = sub_A43D4();
  sub_48A4(v36, qword_DD4D0);
  sub_810C4(0xD00000000000003ELL, 0x80000000000B0E10, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD00000000000003FLL, 0x80000000000B0D10);
  sub_48E30(v18, type metadata accessor for DBCalendarState);
  return 1;
}

uint64_t sub_4583C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_45860, 0, 0);
}

uint64_t sub_45860()
{
  sub_5950();
  if (qword_DA8D0 != -1)
  {
    sub_49044();
  }

  v1 = sub_A43D4();
  v0[6] = sub_48A4(v1, qword_DD4D0);
  sub_4911C();
  sub_810AC(v2, v3, v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_4596C;
  v10 = v0[4];
  v9 = v0[5];

  return sub_45BB4(v10, v9);
}

uint64_t sub_4596C()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v4 = *(v3 + 56);
  *v2 = *v0;
  *(v1 + 64) = v5;

  v6 = sub_AA8C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_45A58()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];
  sub_A4B54(28);

  v0[2] = *(v1 + 16);
  v7._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v7);

  v8._object = 0x80000000000B09C0;
  v8._countAndFlagsBits = 0xD000000000000012;
  sub_A46D4(v8);
  sub_810AC(0x2064656863746546, 0xE800000000000000, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000026, 0x80000000000B0910);

  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_45BB4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_A43A4();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_45C74, 0, 0);
}

uint64_t sub_45C74()
{
  sub_40178();
  if (qword_DA998 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = qword_E0AD8;
  v8 = *(v0 + 24);
  sub_A4384();
  sub_A49B4();
  sub_A4374();
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v3[1] = vextq_s8(v8, v8, 8uLL);
  v3[2].i64[0] = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = sub_4BF0(&qword_DD4F8, &qword_A9330);
  *v5 = v0;
  v5[1] = sub_45E14;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000036, 0x80000000000B09E0, sub_47E34, v3, v6);
}

uint64_t sub_45E14()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_25540();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_5930();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    v9 = sub_45F98;
  }

  else
  {
    v10 = *(v3 + 64);

    v9 = sub_45F1C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_45F1C()
{
  sub_5950();
  v1 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);

  sub_49144();

  return v2(v1);
}

uint64_t sub_45F98()
{
  sub_5950();
  v1 = v0[8];

  if (qword_DA8D0 != -1)
  {
    sub_49044();
  }

  v2 = v0[10];
  v3 = sub_A43D4();
  sub_48A4(v3, qword_DD4D0);
  sub_81094(0xD000000000000015, 0x80000000000B0A20, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000036, 0x80000000000B09E0);

  (*(v0[6] + 8))(v0[7], v0[5]);

  sub_49144();

  return v4(_swiftEmptyArrayStorage);
}

uint64_t sub_460AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v58 = a1;
  v55 = a3;
  v65 = a2;
  v4 = sub_A4454();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  __chkstk_darwin(v4);
  v60 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_4BF0(&qword_DD500, &qword_A9358);
  v52 = *(v59 - 8);
  v53 = *(v52 + 64);
  __chkstk_darwin(v59);
  v64 = &v44 - v7;
  v51 = sub_A43A4();
  v49 = *(v51 - 8);
  v8 = *(v49 + 64);
  __chkstk_darwin(v51);
  v50 = v9;
  v63 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_A2EA4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v48 = v13;
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_A4964();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_A4954();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v56 = sub_A44B4();
  v54 = *(v56 - 8);
  v22 = *(v54 + 64);
  __chkstk_darwin(v56);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DA8D0 != -1)
  {
    swift_once();
  }

  v25 = sub_A43D4();
  sub_48A4(v25, qword_DD4D0);
  sub_810AC(0xD000000000000024, 0x80000000000B0A40, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000036, 0x80000000000B09E0);
  sub_35BE0();
  v46 = v24;
  sub_A4494();
  sub_A4944();
  (*(v16 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  v47 = sub_A4994();
  v26 = v11;
  v27 = *(v11 + 16);
  v45 = v14;
  v28 = v10;
  v27(v14, v55, v10);
  v29 = v49;
  v30 = v51;
  (*(v49 + 16))(v63, v57, v51);
  v31 = v52;
  v32 = v59;
  (*(v52 + 16))(v64, v58, v59);
  v33 = (*(v26 + 80) + 24) & ~*(v26 + 80);
  v34 = (v48 + *(v29 + 80) + v33) & ~*(v29 + 80);
  v35 = (v50 + *(v31 + 80) + v34) & ~*(v31 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v65;
  (*(v26 + 32))(v36 + v33, v45, v28);
  (*(v29 + 32))(v36 + v34, v63, v30);
  (*(v31 + 32))(v36 + v35, v64, v32);
  aBlock[4] = sub_48004;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_7A7E8;
  aBlock[3] = &unk_D1A08;
  v37 = _Block_copy(aBlock);
  v38 = v65;
  v39 = v46;
  sub_A4474();
  v66 = _swiftEmptyArrayStorage;
  sub_48FD0(&qword_DD508, &type metadata accessor for DispatchWorkItemFlags);
  sub_4BF0(&qword_DD510, &unk_AAE40);
  sub_48140();
  v40 = v60;
  v41 = v62;
  sub_A4AC4();
  v42 = v47;
  sub_A4984();
  _Block_release(v37);

  (*(v61 + 8))(v40, v41);
  (*(v54 + 8))(v39, v56);
}

uint64_t sub_46804(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a1;
  v5 = sub_A43A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_A2EA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  isa = sub_A2DF4().super.isa;
  if ((sub_79D74() - 6) >= 3u)
  {
    sub_4F714(a2, v12);
  }

  else
  {
    sub_4F704(a2, v12);
  }

  v14 = sub_A2DF4().super.isa;
  (*(v9 + 8))(v12, v8);
  v15 = v30;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v5);
  v16 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  (*(v6 + 32))(v17 + v16, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v37 = sub_48294;
  v38 = v17;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_46F9C;
  v36 = &unk_D1A80;
  v18 = _Block_copy(&aBlock);

  aBlock = 0;
  v19 = isa;
  v20 = [v29 iterEventHighlightsFrom:isa to:v14 options:0 error:&aBlock block:v18];
  _Block_release(v18);

  v21 = aBlock;
  if (v20)
  {
    swift_beginAccess();
    v32 = *(v13 + 16);
    v22 = v21;

    sub_4BF0(&qword_DD500, &qword_A9358);
    sub_A47E4();
  }

  else
  {
    v24 = aBlock;
    v25 = sub_A2D44();

    swift_willThrow();

    if (qword_DA998 != -1)
    {
      swift_once();
    }

    sub_7A58C(v15, 0xD000000000000028, 0x80000000000B0AD0, 0x9000u);
    if (qword_DA8D0 != -1)
    {
      swift_once();
    }

    v26 = sub_A43D4();
    sub_48A4(v26, qword_DD4D0);
    aBlock = 0;
    v34 = 0xE000000000000000;
    sub_A4B54(44);

    aBlock = 0xD00000000000002ALL;
    v34 = 0x80000000000B0B00;
    v32 = v25;
    swift_errorRetain();
    sub_4BF0(&qword_DBB90, &qword_A7540);
    v39._countAndFlagsBits = sub_A4644();
    sub_A46D4(v39);

    sub_81094(aBlock, v34, 0xD00000000000002ALL, 0x80000000000B07A0, 0xD000000000000036, 0x80000000000B09E0);

    aBlock = v25;
    sub_4BF0(&qword_DD500, &qword_A9358);
    return sub_A47D4();
  }
}

uint64_t sub_46D28(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CalendarEvent(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (![a1 isExtraordinary])
  {
    goto LABEL_3;
  }

  v13 = [a1 title];
  v14 = sub_A45F4();
  v16 = v15;

  v17 = [a1 startDate];
  v18 = v12 + *(v8 + 20);
  sub_A2E74();

  v19 = [a1 externalURI];
  v20 = v12 + *(v8 + 24);
  sub_A2D74();

  *v12 = v14;
  v12[1] = v16;
  swift_beginAccess();
  sub_24684();
  v21 = *(*(a3 + 16) + 16);
  sub_246D0(v21);
  v22 = *(a3 + 16);
  *(v22 + 16) = v21 + 1;
  sub_48DD4(v12, v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, type metadata accessor for CalendarEvent);
  *(a3 + 16) = v22;
  result = swift_endAccess();
  if (v21 == 1)
  {
LABEL_3:
    *a2 = 1;
    if (qword_DA998 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    return sub_7A58C(a4, *(*(a3 + 16) + 16), 0, 0x4000u);
  }

  return result;
}

void sub_46F9C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_47010(id *a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t))
{
  v6 = sub_A2EA4();
  v7 = sub_591C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*a1 startDate];
  if (result)
  {
    v15 = result;
    sub_A2E74();

    v16 = a3(v13, a2);
    (*(v9 + 8))(v13, v6);
    return (v16 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_47128(id *a1)
{
  v2 = sub_A2EA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*a1 startDate];
  if (result)
  {
    v8 = result;
    sub_A2E74();

    sub_48FD0(&qword_DD530, &type metadata accessor for Date);
    v9 = sub_A4584();
    (*(v3 + 8))(v6, v2);
    return ((v9 & 1) == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4727C(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t))
{
  v6 = sub_A2EA4();
  v42 = sub_591C(v6);
  v43 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v42);
  v40 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4BF0(&qword_DD520, &qword_A9BD0);
  v12 = sub_7A14(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = sub_4BF0(&qword_DD220, qword_A9B20);
  v18 = sub_10A88(v17);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v41 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v40 - v23;
  v25 = type metadata accessor for DBCalendarState();
  v26 = a2;
  v27 = *(a2 + *(v25 + 40));
  v28 = type metadata accessor for CalendarEvent(0);
  v45 = a1 + *(v28 + 24);
  if (sub_41254(a3, v44, v27))
  {
    v29 = *(v25 + 44);
    v30 = a1 + *(v28 + 20);
    v31 = v42;
    (*(v43 + 16))(v24, v30, v42);
    sub_A924(v24, 0, 1, v31);
    v32 = *(v11 + 48);
    sub_48F30(v26 + v29, v16, &qword_DD220, qword_A9B20);
    sub_48F30(v24, &v16[v32], &qword_DD220, qword_A9B20);
    sub_49188(v16);
    if (!v35)
    {
      v34 = v41;
      sub_48F30(v16, v41, &qword_DD220, qword_A9B20);
      sub_49188(&v16[v32]);
      if (!v35)
      {
        v36 = v43;
        v37 = v40;
        (*(v43 + 32))(v40, &v16[v32], v31);
        sub_48FD0(&qword_DD528, &type metadata accessor for Date);
        LODWORD(v46) = sub_A45B4();
        v38 = *(v36 + 8);
        v38(v37, v31);
        sub_11E34(v24, &qword_DD220, qword_A9B20);
        v38(v34, v31);
        sub_11E34(v16, &qword_DD220, qword_A9B20);
        v33 = v46 ^ 1;
        return v33 & 1;
      }

      sub_11E34(v24, &qword_DD220, qword_A9B20);
      (*(v43 + 8))(v34, v31);
LABEL_11:
      sub_11E34(v16, &qword_DD520, &qword_A9BD0);
      v33 = 1;
      return v33 & 1;
    }

    sub_11E34(v24, &qword_DD220, qword_A9B20);
    sub_49188(&v16[v32]);
    if (!v35)
    {
      goto LABEL_11;
    }

    sub_11E34(v16, &qword_DD220, qword_A9B20);
  }

  v33 = 0;
  return v33 & 1;
}

uint64_t sub_47674(uint64_t a1, uint64_t a2)
{
  v36 = sub_A2EA4();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v36);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4BF0(&qword_DD520, &qword_A9BD0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = sub_4BF0(&qword_DD220, qword_A9B20);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  v17 = type metadata accessor for DBCalendarState();
  v18 = a2;
  v19 = *(a2 + *(v17 + 20));
  v20 = type metadata accessor for CalendarEvent(0);
  v38 = a1 + *(v20 + 24);
  if (!sub_41254(sub_49020, v37, v19))
  {
    v25 = 0;
    return v25 & 1;
  }

  v33 = v2;
  v21 = *(v17 + 24);
  v22 = a1 + *(v20 + 20);
  v23 = v36;
  (*(v39 + 16))(v16, v22, v36);
  sub_A924(v16, 0, 1, v23);
  v24 = *(v7 + 48);
  sub_48F30(v18 + v21, v10, &qword_DD220, qword_A9B20);
  sub_48F30(v16, &v10[v24], &qword_DD220, qword_A9B20);
  if (sub_CF2C(v10, 1, v23) != 1)
  {
    v26 = v35;
    sub_48F30(v10, v35, &qword_DD220, qword_A9B20);
    if (sub_CF2C(&v10[v24], 1, v23) != 1)
    {
      v27 = v23;
      v28 = v39;
      v29 = v34;
      (*(v39 + 32))(v34, &v10[v24], v27);
      sub_48FD0(&qword_DD528, &type metadata accessor for Date);
      v30 = sub_A45B4();
      v31 = *(v28 + 8);
      v31(v29, v27);
      sub_11E34(v16, &qword_DD220, qword_A9B20);
      v31(v26, v27);
      sub_11E34(v10, &qword_DD220, qword_A9B20);
      v25 = v30 ^ 1;
      return v25 & 1;
    }

    sub_11E34(v16, &qword_DD220, qword_A9B20);
    (*(v39 + 8))(v26, v23);
    goto LABEL_8;
  }

  sub_11E34(v16, &qword_DD220, qword_A9B20);
  if (sub_CF2C(&v10[v24], 1, v23) != 1)
  {
LABEL_8:
    sub_11E34(v10, &qword_DD520, &qword_A9BD0);
    v25 = 1;
    return v25 & 1;
  }

  sub_11E34(v10, &qword_DD220, qword_A9B20);
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_47B0C()
{
  v0 = sub_A3004();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for CalendarEvent(0) + 20);
  if (sub_A2E04())
  {
    sub_A2FD4();
    v6 = sub_A2FB4();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_47C48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_49150(a1, a2, a3, a4);
  sub_7A14(v5);
  v7 = *(v6 + 32);
  v8 = sub_2558C();
  v9(v8);
  return v4;
}

uint64_t sub_47CB8()
{
  v1 = sub_A2EA4();
  sub_7A14(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_47D4C()
{
  v1 = sub_A2EA4();
  sub_5940(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_49130(*(v4 + 64));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v6 = sub_490EC(v5);

  return sub_4583C(v6, v7, v8);
}

uint64_t sub_47E40()
{
  v24 = sub_A2EA4();
  sub_591C(v24);
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);
  v23 = sub_A43A4();
  sub_591C(v23);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v12 = *(v11 + 64);
  v13 = sub_4BF0(&qword_DD500, &qword_A9358);
  sub_591C(v13);
  v15 = v14;
  v17 = v16;
  v18 = *(v15 + 80);
  v19 = (v10 + v12 + v18) & ~v18;
  v22 = *(v17 + 64);
  v20 = v3 | v9 | v18;

  (*(v2 + 8))(v0 + v4, v24);
  (*(v8 + 8))(v0 + v10, v23);
  (*(v15 + 8))(v0 + v19, v13);

  return _swift_deallocObject(v0, v19 + v22, v20 | 7);
}

uint64_t sub_48004()
{
  v1 = sub_A2EA4();
  sub_5940(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_A43A4();
  sub_5940(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_4BF0(&qword_DD500, &qword_A9358);
  sub_10A88(v11);
  v13 = *(v0 + 16);
  v14 = v0 + ((v8 + v10 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_46804(v13, v0 + v3, v0 + v8, v14);
}

uint64_t sub_48128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_48140()
{
  result = qword_DD518;
  if (!qword_DD518)
  {
    sub_1B4B0(&qword_DD510, &unk_AAE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD518);
  }

  return result;
}

uint64_t sub_481A4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_481DC()
{
  v1 = sub_A43A4();
  sub_591C(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_48294(void *a1, _BYTE *a2)
{
  v5 = sub_A43A4();
  sub_10A88(v5);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return sub_46D28(a1, a2, v7, v8);
}

uint64_t sub_48314(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_29DE8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_48390(v6);
  return sub_A4BC4();
}

void sub_48390(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_A4E14(v3);
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_273BC(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_4853C(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_48470(0, v3, 1, a1);
  }
}

void sub_48470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        v14 = sub_373B8(v13);

        if (v14 != -1)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v15 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v15;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_4853C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v98 = v8;
        v106 = v5;
        v10 = v9;
        v11 = (*a3 + 8 * v9);
        v12 = 8 * v10;
        v14 = *v11;
        v13 = v11 + 2;
        v15 = *(*a3 + 8 * v7);
        v16 = v14;
        v102 = sub_373B8(v16);

        v17 = v10 + 2;
        while (1)
        {
          v18 = v17;
          if (++v7 >= v6)
          {
            break;
          }

          v19 = *(v13 - 1);
          v20 = *v13;
          v21 = v19;
          v22 = sub_373B8(v21);

          ++v13;
          v17 = v18 + 1;
          if ((v102 == -1) == (v22 != -1))
          {
            goto LABEL_9;
          }
        }

        v7 = v6;
LABEL_9:
        if (v102 == -1)
        {
          v9 = v10;
          if (v7 < v10)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            return;
          }

          if (v10 >= v7)
          {
            v5 = v106;
            v8 = v98;
          }

          else
          {
            if (v6 >= v18)
            {
              v23 = v18;
            }

            else
            {
              v23 = v6;
            }

            v24 = 8 * v23 - 8;
            v25 = v7;
            v26 = v10;
            v5 = v106;
            v8 = v98;
            do
            {
              if (v26 != --v25)
              {
                v27 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v28 = *(v27 + v12);
                *(v27 + v12) = *(v27 + v24);
                *(v27 + v24) = v28;
              }

              ++v26;
              v24 -= 8;
              v12 += 8;
            }

            while (v26 < v25);
          }
        }

        else
        {
          v5 = v106;
          v8 = v98;
          v9 = v10;
        }
      }

      v29 = a3[1];
      if (v7 < v29)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_123;
        }

        if (v7 - v9 < a4)
        {
          v30 = v9 + a4;
          if (__OFADD__(v9, a4))
          {
            goto LABEL_124;
          }

          if (v30 >= v29)
          {
            v30 = a3[1];
          }

          if (v30 < v9)
          {
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (v7 != v30)
          {
            v99 = v8;
            v100 = v9;
            v106 = v5;
            v31 = *a3;
            v32 = *a3 + 8 * v7 - 8;
            v33 = v9 - v7;
            v103 = v30;
            do
            {
              v34 = *(v31 + 8 * v7);
              v35 = v33;
              v36 = v32;
              do
              {
                v37 = *v36;
                v38 = v34;
                v39 = v37;
                v40 = sub_373B8(v39);

                if (v40 != -1)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_128;
                }

                v41 = *v36;
                v34 = *(v36 + 8);
                *v36 = v34;
                *(v36 + 8) = v41;
                v36 -= 8;
              }

              while (!__CFADD__(v35++, 1));
              ++v7;
              v32 += 8;
              --v33;
            }

            while (v7 != v103);
            v7 = v103;
            v5 = v106;
            v8 = v99;
            v9 = v100;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = *(v8 + 16);
        sub_551BC();
        v8 = v88;
      }

      v43 = *(v8 + 16);
      v44 = v43 + 1;
      v106 = v5;
      if (v43 >= *(v8 + 24) >> 1)
      {
        sub_551BC();
        v8 = v89;
      }

      *(v8 + 16) = v44;
      v5 = v8 + 32;
      v45 = (v8 + 32 + 16 * v43);
      *v45 = v9;
      v45[1] = v7;
      v104 = *a1;
      if (!*a1)
      {
        goto LABEL_132;
      }

      if (v43)
      {
        while (1)
        {
          v46 = v44 - 1;
          v47 = (v5 + 16 * (v44 - 1));
          v48 = (v8 + 16 * v44);
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v49 = *(v8 + 32);
            v50 = *(v8 + 40);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_59:
            if (v52)
            {
              goto LABEL_109;
            }

            v64 = *v48;
            v63 = v48[1];
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_112;
            }

            v68 = v47[1];
            v69 = v68 - *v47;
            if (__OFSUB__(v68, *v47))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v66, v69))
            {
              goto LABEL_117;
            }

            if (v66 + v69 >= v51)
            {
              if (v51 < v69)
              {
                v46 = v44 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          if (v44 < 2)
          {
            goto LABEL_111;
          }

          v71 = *v48;
          v70 = v48[1];
          v59 = __OFSUB__(v70, v71);
          v66 = v70 - v71;
          v67 = v59;
LABEL_74:
          if (v67)
          {
            goto LABEL_114;
          }

          v73 = *v47;
          v72 = v47[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_116;
          }

          if (v74 < v66)
          {
            goto LABEL_88;
          }

LABEL_81:
          if (v46 - 1 >= v44)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v78 = v8;
          v79 = (v5 + 16 * (v46 - 1));
          v80 = *v79;
          v81 = v46;
          v8 = v5 + 16 * v46;
          v82 = *(v8 + 8);
          sub_48B54((*a3 + 8 * *v79), (*a3 + 8 * *v8), (*a3 + 8 * v82), v104);
          if (v106)
          {
            goto LABEL_102;
          }

          if (v82 < v80)
          {
            goto LABEL_104;
          }

          v83 = v7;
          v84 = v5;
          v5 = *(v78 + 16);
          if (v81 > v5)
          {
            goto LABEL_105;
          }

          *v79 = v80;
          v79[1] = v82;
          if (v81 >= v5)
          {
            goto LABEL_106;
          }

          v85 = v81;
          v44 = v5 - 1;
          sub_29664((v8 + 16), v5 - 1 - v85, v8);
          v8 = v78;
          *(v78 + 16) = v5 - 1;
          v86 = v5 > 2;
          v5 = v84;
          v7 = v83;
          if (!v86)
          {
            goto LABEL_88;
          }
        }

        v53 = v5 + 16 * v44;
        v54 = *(v53 - 64);
        v55 = *(v53 - 56);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_107;
        }

        v58 = *(v53 - 48);
        v57 = *(v53 - 40);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_108;
        }

        v60 = v48[1];
        v61 = v60 - *v48;
        if (__OFSUB__(v60, *v48))
        {
          goto LABEL_110;
        }

        v59 = __OFADD__(v51, v61);
        v62 = v51 + v61;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v62 >= v56)
        {
          v76 = *v47;
          v75 = v47[1];
          v59 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v59)
          {
            goto LABEL_121;
          }

          if (v51 < v77)
          {
            v46 = v44 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_59;
      }

LABEL_88:
      v6 = a3[1];
      v5 = v106;
      if (v7 >= v6)
      {
        goto LABEL_92;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_92:
  v106 = *a1;
  if (!*a1)
  {
    goto LABEL_133;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_126:
    v8 = sub_29650(v8);
  }

  v91 = (v8 + 16);
  v90 = *(v8 + 16);
  while (v90 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_130;
    }

    v92 = v8;
    v93 = (v8 + 16 * v90);
    v94 = *v93;
    v95 = &v91[2 * v90];
    v8 = *(v95 + 1);
    sub_48B54((*a3 + 8 * *v93), (*a3 + 8 * *v95), (*a3 + 8 * v8), v106);
    if (v5)
    {
      break;
    }

    if (v8 < v94)
    {
      goto LABEL_118;
    }

    if (v90 - 2 >= *v91)
    {
      goto LABEL_119;
    }

    *v93 = v94;
    v93[1] = v8;
    v96 = *v91 - v90;
    if (*v91 < v90)
    {
      goto LABEL_120;
    }

    v90 = *v91 - 1;
    sub_29664(v95 + 16, v96, v95);
    *v91 = v90;
    v8 = v92;
  }

LABEL_102:
}

uint64_t sub_48B54(void **a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_55C74(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      v16 = sub_373B8(v15);

      if (v16 != -1)
      {
        break;
      }

      v17 = v6;
      v18 = v7 == v6++;
      if (!v18)
      {
        goto LABEL_9;
      }

LABEL_10:
      ++v7;
      v5 = v12;
    }

    v17 = v4;
    v18 = v7 == v4++;
    if (v18)
    {
      goto LABEL_10;
    }

LABEL_9:
    *v7 = *v17;
    goto LABEL_10;
  }

  sub_55C74(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v31 = v4;
LABEL_15:
  v19 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v21 = v7;
    v22 = v6;
    v6 = v19;
    v23 = *v19;
    v24 = *(v10 - 1);
    v25 = v23;
    v26 = sub_373B8(v25);

    v27 = v5 + 1;
    if (v26 == -1)
    {
      v18 = v27 == v22;
      v7 = v21;
      v4 = v31;
      if (!v18)
      {
        *v5 = *v6;
      }

      goto LABEL_15;
    }

    if (v10 != v27)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v19 = v6;
    v6 = v22;
    v7 = v21;
    v4 = v31;
  }

LABEL_28:
  v28 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v28])
  {
    memmove(v6, v4, 8 * v28);
  }

  return 1;
}

uint64_t sub_48D44(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_A45F4();
  }

  return sub_2558C();
}

uint64_t sub_48DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_7A14(v4);
  v6 = *(v5 + 32);
  v7 = sub_2558C();
  v8(v7);
  return a2;
}

uint64_t sub_48E30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_7A14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_48F30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_49150(a1, a2, a3, a4);
  sub_7A14(v5);
  v7 = *(v6 + 16);
  v8 = sub_2558C();
  v9(v8);
  return v4;
}

uint64_t sub_48FD0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_49044()
{

  return swift_once();
}

void sub_49088()
{
  v1 = v0[245];
  v2 = v0[244];
  v3 = v0[241];
  v4 = v0[240];
  v5 = v0[237];
  v6 = v0[236];
  v7 = v0[232];
}

uint64_t sub_49150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_4BF0(a3, a4);
}

void sub_491C0()
{
  sub_25714();
  v2 = v1;
  v41 = v3;
  v40[0] = v4;
  v40[1] = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v42 = v12;
  v13 = sub_4BF0(&qword_DFEB0, &qword_A93F0);
  sub_10A88(v13);
  v15 = *(v14 + 64);
  sub_11FC0();
  __chkstk_darwin(v16);
  v18 = v40 - v17;
  v19 = sub_4BF0(&qword_DD468, &qword_A9068);
  sub_10A88(v19);
  v21 = *(v20 + 64);
  sub_11FC0();
  __chkstk_darwin(v22);
  v24 = v40 - v23;
  v25 = sub_A4434();
  sub_AA64();
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v30);
  sub_AA54();
  v33 = (v32 - v31);
  v34 = v0;

  v2(v34, v11, v9);
  if (sub_CF2C(v24, 1, v25) == 1)
  {
    sub_11E34(v24, &qword_DD468, &qword_A9068);
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v35 = sub_A43D4();
    sub_48A4(v35, qword_E0BA0);
    sub_81094(0xD000000000000027, 0x80000000000B1010, 0xD000000000000036, 0x80000000000B1040, 0xD00000000000002FLL, 0x80000000000B1080);
    v36 = 1;
    v37 = v42;
  }

  else
  {
    v38 = *(v27 + 32);
    v38(v33, v24, v25);
    if (v7 && (v41 & 1) == 0)
    {

      sub_A43E4();
      v39 = sub_A43F4();
      sub_A924(v18, 0, 1, v39);
      sub_A4424();
    }

    v37 = v42;
    v38(v42, v33, v25);
    v36 = 0;
  }

  sub_A924(v37, v36, 1, v25);
  sub_2569C();
}

uint64_t sub_49480(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B564(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B564(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RemindersPreprocessingResult(0);
  v5 = v4[6];
  if ((sub_A2E64() & 1) == 0)
  {
    return 0;
  }

  sub_29D54(0, &qword_DD7F0, NSObject_ptr);
  v6 = v4[7];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if ((sub_A4A04() & 1) == 0)
  {
    return 0;
  }

  v9 = v4[8];
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  return sub_A4A04() & 1;
}

void sub_4953C(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SupportedFeatures;
  *(a1 + 32) = &off_D2110;
  *a1 = 1;
}

uint64_t sub_4955C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_eventDetails_Value;
  swift_beginAccess();
  return sub_4C704(a1 + v4, a2, &qword_DD7F8, &qword_A93E8);
}

void sub_495D0()
{
  sub_25714();
  v2 = v1;
  v3 = sub_4BF0(&qword_DD7F8, &qword_A93E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = v13 - v6;
  v8 = *(v0 + 80);
  sub_4C704(v2, v13 - v6, &qword_DD7F8, &qword_A93E8);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  sub_4C900(v7, v10 + v9);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_4C970;
  *(v11 + 24) = v10;
  v13[4] = sub_253D8;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_50578;
  v13[3] = &unk_D1AF8;
  v12 = _Block_copy(v13);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  sub_11E34(v2, &qword_DD7F8, &qword_A93E8);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    sub_2569C();
  }
}

uint64_t sub_497E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_eventDetails_Value;
  swift_beginAccess();
  sub_4CA04(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_4986C()
{
  if (qword_DA890 != -1)
  {
    swift_once();
  }

  v1 = qword_E0798;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_4994C;
  v3 = *(v0 + 16);

  return sub_4BCE4(v1, v3);
}

uint64_t sub_4994C(uint64_t a1, char a2)
{
  v5 = *(*v2 + 24);
  v6 = *v2;
  sub_5930();
  *v7 = v6;

  sub_255F0();

  return v8(a1, a2 & 1);
}

void sub_49A44()
{
  sub_25714();
  v1 = v0;
  v47 = v2;
  v3 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_10A88(v3);
  v5 = *(v4 + 64);
  sub_11FC0();
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  v9 = sub_A3744();
  sub_AA64();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  sub_AA54();
  v17 = (v16 - v15);
  v18 = sub_4BF0(&qword_DD7F8, &qword_A93E8);
  sub_7A14(v18);
  v20 = *(v19 + 64);
  sub_11FC0();
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v24 = type metadata accessor for RemindersPreprocessingResult(0);
  v25 = sub_7A14(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_AA54();
  v30 = (v29 - v28);
  v31 = v0[10];
  sub_A4974();
  if (sub_CF2C(v23, 1, v24) == 1)
  {
    v32 = &qword_DD7F8;
    v33 = &qword_A93E8;
    v34 = v23;
LABEL_5:
    sub_11E34(v34, v32, v33);
    v35 = 1;
    v36 = v47;
    goto LABEL_13;
  }

  sub_4B688(v23, v30);
  sub_82D48(v8);
  if (sub_CF2C(v8, 1, v9) == 1)
  {
    sub_4B6EC(v30);
    v32 = &qword_DB5A8;
    v33 = &unk_A67C0;
    v34 = v8;
    goto LABEL_5;
  }

  v37 = *(v11 + 32);
  v37(v17, v8, v9);
  sub_1C450(0);
  sub_A36A4();
  sub_625E0(*(v30 + *(v24 + 28)), *(v30 + *(v24 + 32)));
  sub_A36D4();
  v38 = sub_49D80(*v30);
  v39 = sub_49D80(v30[1]);
  v48 = v38;
  sub_4B85C(v39);
  v40 = v48;
  v41 = v1[18];
  sub_7584(v1 + 14, v1[17]);
  v42 = sub_A34D4();
  v43 = (v42 & 1) == 0;
  if (v42)
  {
    v44 = 0xD000000000000017;
  }

  else
  {
    v44 = 0xD000000000000013;
  }

  if (v43)
  {
    v45 = "com.apple.NanoCalendar";
  }

  else
  {
    v45 = "com.apple.reminders";
  }

  sub_49EF0(v44, v45 | 0x8000000000000000, v40);

  sub_A3694();
  sub_4B6EC(v30);
  v36 = v47;
  v37(v47, v17, v9);
  v35 = 0;
LABEL_13:
  sub_A924(v36, v35, 1, v9);
  sub_2569C();
}

uint64_t sub_49D80(unint64_t a1)
{

  v2 = sub_1DDB8(3, a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_A4E64();
  swift_unknownObjectRetain_n();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];

  if (__OFSUB__(v8 >> 1, v6))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v12 != (v8 >> 1) - v6)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_2:
    sub_94F8C(v2, v4, v6, v8);
    v10 = v9;
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v10)
  {
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

LABEL_10:
  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    sub_29D54(0, &qword_DC1C8, INTask_ptr);

    v13 = sub_A4C84();
  }

  else
  {

    sub_A4E54();
    sub_29D54(0, &qword_DC1C8, INTask_ptr);
    v13 = v10;
  }

  return v13;
}

void *sub_49EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a2;
  v4 = sub_4BF0(&qword_DD468, &qword_A9068);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v32 - v6;
  v41 = sub_A4434();
  v37 = *(v41 - 8);
  v8 = *(v37 + 64);
  v9 = __chkstk_darwin(v41);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v35 = &v32 - v11;
  v12 = sub_A2ED4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A2EC4();
  sub_A2EB4();
  (*(v13 + 8))(v16, v12);
  result = sub_1BF68(a3);
  v18 = result;
  v19 = 0;
  v20 = a3 & 0xC000000000000001;
  v21 = a3;
  v22 = a3 & 0xFFFFFFFFFFFFFF8;
  v34 = (v37 + 32);
  v38 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v18 == v19)
    {

      return v38;
    }

    if (v20)
    {
      result = sub_A4B74();
    }

    else
    {
      if (v19 >= *(v22 + 16))
      {
        goto LABEL_17;
      }

      result = *(v21 + 8 * v19 + 32);
    }

    v23 = result;
    v24 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    sub_491C0();

    if (sub_CF2C(v7, 1, v41) == 1)
    {
      result = sub_11E34(v7, &qword_DD468, &qword_A9068);
      ++v19;
    }

    else
    {
      v25 = *v34;
      (*v34)(v35, v7, v41);
      v33 = v25;
      v25(v36, v35, v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = v38[2];
        sub_54D2C();
        v38 = v30;
      }

      v26 = v38[2];
      if (v26 >= v38[3] >> 1)
      {
        sub_54D2C();
        v38 = v31;
      }

      v27 = v37;
      v28 = v38;
      v38[2] = v26 + 1;
      result = (v33)(v28 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v26, v36, v41);
      v19 = v24;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_4A294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  sub_25714();
  v65 = v22;
  v66 = v23;
  v25 = v24;
  v27 = v26;
  v64 = v28;
  v62 = v29;
  v63 = v30;
  v32 = v31;
  v33 = *(v21 + 48);
  v34 = *(v21 + 52);
  v35 = swift_allocObject();
  sub_A7C4(a21, a21[3]);
  sub_AA64();
  v37 = *(v36 + 64);
  __chkstk_darwin(v38);
  sub_AA54();
  v41 = (v40 - v39);
  (*(v42 + 16))(v40 - v39);
  v43 = *v41;
  v44 = type metadata accessor for OfflineStateProvider();
  v68[3] = v44;
  v68[4] = &off_D29E8;
  v68[0] = v43;
  v45 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_logger;
  if (qword_DAA00 != -1)
  {
    swift_once();
  }

  v46 = sub_A43D4();
  v47 = sub_48A4(v46, qword_E0C30);
  (*(*(v46 - 8) + 16))(v35 + v45, v47, v46);
  v48 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_eventDetails_Value;
  v49 = type metadata accessor for RemindersPreprocessingResult(0);
  sub_A924(v35 + v48, 1, 1, v49);
  sub_A760(v27, v35 + 16);
  sub_A760(v25, v35 + 112);
  sub_A760(v68, v67);
  sub_A7C4(v67, v67[3]);
  sub_AA64();
  v51 = *(v50 + 64);
  __chkstk_darwin(v52);
  sub_AA54();
  v55 = (v54 - v53);
  (*(v56 + 16))(v54 - v53);
  v57 = *v55;
  *(v35 + 192) = v44;
  *(v35 + 200) = &off_D29E8;
  *(v35 + 168) = v57;
  v58 = sub_A3584();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  *(v35 + 56) = sub_A3574();
  sub_2505C();
  v61 = swift_allocError();
  sub_761C(v25);
  sub_761C(v27);
  sub_761C(v68);
  *(v35 + 64) = v61;
  *(v35 + 72) = 1;
  *(v35 + 208) = 0;
  *(v35 + 216) = -256;
  *(v35 + 80) = v32;
  *(v35 + 88) = v62;
  *(v35 + 96) = v63;
  *(v35 + 104) = v64;
  *(v35 + 152) = v65;
  *(v35 + 160) = v66;
  sub_761C(v67);
  sub_761C(a21);
  sub_2569C();
}

uint64_t sub_4A5AC()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_logger;
  v2 = sub_A43D4();
  sub_7A14(v2);
  (*(v3 + 8))(v0 + v1);
  return sub_11E34(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_eventDetails_Value, &qword_DD7F8, &qword_A93E8);
}

uint64_t sub_4A620()
{
  v0 = sub_82DF4();
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_logger;
  v2 = sub_A43D4();
  sub_7A14(v2);
  v4 = *(v3 + 8);

  v4(v0 + v1, v2);
  sub_11E34(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin13RemindersSpec_eventDetails_Value, &qword_DD7F8, &qword_A93E8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

void sub_4A728()
{
  v0 = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_4A7F4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_4A7F4()
{
  if (!qword_DD580)
  {
    type metadata accessor for RemindersPreprocessingResult(255);
    v0 = sub_A4A24();
    if (!v1)
    {
      atomic_store(v0, &qword_DD580);
    }
  }
}

uint64_t sub_4A880(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_A2EA4();
    v9 = a1 + *(a3 + 24);

    return sub_CF2C(v9, a2, v8);
  }
}

void *sub_4A91C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_A2EA4();
    v8 = v5 + *(a4 + 24);

    return sub_A924(v8, a2, a2, v7);
  }

  return result;
}

void sub_4A99C()
{
  sub_4AA70();
  if (v0 <= 0x3F)
  {
    sub_A2EA4();
    if (v1 <= 0x3F)
    {
      sub_29D54(319, &qword_DD7A8, INSearchForNotebookItemsIntent_ptr);
      if (v2 <= 0x3F)
      {
        sub_29D54(319, &unk_DD7B0, INSearchForNotebookItemsIntentResponse_ptr);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_4AA70()
{
  if (!qword_DD7A0)
  {
    sub_29D54(255, &qword_DC1C8, INTask_ptr);
    v0 = sub_A47B4();
    if (!v1)
    {
      atomic_store(v0, &qword_DD7A0);
    }
  }
}

uint64_t sub_4AAE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4BF0(&qword_DFEB0, &qword_A93F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-v6];
  v8 = sub_4BF0(&qword_DD468, &qword_A9068);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20[-v10];
  if (!sub_4B0BC())
  {

LABEL_7:
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v15 = sub_A43D4();
    sub_48A4(v15, qword_E0BA0);
    sub_81094(0xD000000000000019, 0x80000000000B10B0, 0xD000000000000036, 0x80000000000B1040, 0xD000000000000014, 0x80000000000B10D0);

    goto LABEL_10;
  }

  sub_4BC80(a1);
  if (!v12)
  {

    goto LABEL_7;
  }

  v13 = sub_A43F4();
  sub_A924(v7, 1, 1, v13);
  sub_29D54(0, &qword_DC1C8, INTask_ptr);
  sub_A4404();
  v14 = sub_A4434();
  sub_A924(v11, 0, 1, v14);
  if (!sub_CF2C(v11, 1, v14))
  {
    (*(*(v14 - 8) + 32))(a2, v11, v14);
    v17 = a2;
    v18 = 0;
    v16 = v14;
    return sub_A924(v17, v18, 1, v16);
  }

  sub_11E34(v11, &qword_DD468, &qword_A9068);
LABEL_10:
  v16 = sub_A4434();
  v17 = a2;
  v18 = 1;
  return sub_A924(v17, v18, 1, v16);
}

uint64_t sub_4ADCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4BF0(&qword_DFEB0, &qword_A93F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-v6];
  v8 = sub_4BF0(&qword_DD468, &qword_A9068);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20[-v10];
  if (sub_4B2BC())
  {
    v12 = [a1 uniqueIdentifier];
    sub_A45F4();

    v13 = sub_A43F4();
    sub_A924(v7, 1, 1, v13);
    sub_29D54(0, &qword_DC740, MapsSuggestionsEntry_ptr);
    sub_A4404();
    v14 = sub_A4434();
    sub_A924(v11, 0, 1, v14);
    if (!sub_CF2C(v11, 1, v14))
    {
      (*(*(v14 - 8) + 32))(a2, v11, v14);
      v17 = a2;
      v18 = 0;
      v16 = v14;
      return sub_A924(v17, v18, 1, v16);
    }

    sub_11E34(v11, &qword_DD468, &qword_A9068);
  }

  else
  {

    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v15 = sub_A43D4();
    sub_48A4(v15, qword_E0BA0);
    sub_81094(0xD000000000000019, 0x80000000000B10B0, 0xD000000000000036, 0x80000000000B1040, 0xD000000000000014, 0x80000000000B10D0);
  }

  v16 = sub_A4434();
  v17 = a2;
  v18 = 1;
  return sub_A924(v17, v18, 1, v16);
}

uint64_t sub_4B0BC()
{
  if (!INTask.entityBuilder.getter())
  {
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v2 = sub_A43D4();
    sub_48A4(v2, qword_E0BA0);
    sub_81094(0xD000000000000037, 0x80000000000B10F0, 0xD000000000000036, 0x80000000000B1040, 0x7469746E456F7375, 0xE900000000000079);
    return 0;
  }

  v0 = sub_A3C34();
  if (!v0)
  {
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v3 = sub_A43D4();
    sub_48A4(v3, qword_E0BA0);
    sub_A4B54(28);

    sub_A3BA4();

    v5._countAndFlagsBits = sub_A4644();
    sub_A46D4(v5);

    sub_81094(0xD00000000000001ALL, 0x80000000000B1130, 0xD000000000000036, 0x80000000000B1040, 0x7469746E456F7375, 0xE900000000000079);

    return 0;
  }

  v1 = v0;

  return v1;
}

uint64_t sub_4B2BC()
{
  if (!MapsSuggestionsEntry.entityBuilder.getter())
  {
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v2 = sub_A43D4();
    sub_48A4(v2, qword_E0BA0);
    sub_81094(0xD000000000000037, 0x80000000000B10F0, 0xD000000000000036, 0x80000000000B1040, 0x7469746E456F7375, 0xE900000000000079);
    return 0;
  }

  v0 = sub_A3C34();
  if (!v0)
  {
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v3 = sub_A43D4();
    sub_48A4(v3, qword_E0BA0);
    sub_A4B54(28);

    sub_A3BA4();

    v5._countAndFlagsBits = sub_A4644();
    sub_A46D4(v5);

    sub_81094(0xD00000000000001ALL, 0x80000000000B1130, 0xD000000000000036, 0x80000000000B1040, 0x7469746E456F7375, 0xE900000000000079);

    return 0;
  }

  v1 = v0;

  return v1;
}

uint64_t sub_4B4BC()
{
  if (!sub_54BC4())
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v2 = sub_A43D4();
    sub_48A4(v2, qword_E0BA0);
    sub_4CA90();
    sub_4CA7C();
    sub_81094(v3, v4, v5, v6, v7, v8);
    return 0;
  }

  v0 = sub_A3C34();
  if (!v0)
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v9 = sub_A43D4();
    sub_48A4(v9, qword_E0BA0);
    sub_A4B54(28);

    sub_A3BA4();

    v17._countAndFlagsBits = sub_A4644();
    sub_A46D4(v17);

    sub_4CA90();
    sub_4CA7C();
    sub_81094(v10, v11, v12, v13, v14, v15);

    return 0;
  }

  v1 = v0;

  return v1;
}

uint64_t sub_4B688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersPreprocessingResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4B6EC(uint64_t a1)
{
  v2 = type metadata accessor for RemindersPreprocessingResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4B748(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_4BC08(result, 1, sub_54E08);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for CalendarEvent(0);
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_4B85C(unint64_t a1)
{
  v3 = sub_1BF68(a1);
  v4 = sub_1BF68(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_4BB68(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_29854(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_4B908(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_4BC08(v7 + v6, 1, sub_54FDC);
  v1 = *v2;
  v8 = (*(*v2 + 24) >> 1) - *(*v2 + 16);
  sub_95148();
  if (v9 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v11 + v9;
    if (v12)
    {
      __break(1u);
LABEL_13:
      v16 = (v10 + 64) >> 6;
      while (1)
      {
        v17 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        if (v17 >= v16)
        {
          goto LABEL_7;
        }

        v18 = *(v8 + 8 * v17);
        ++v4;
        if (v18)
        {
          v14 = (v18 - 1) & v18;
          v15 = __clz(__rbit64(v18)) | (v17 << 6);
          v4 = v17;
          goto LABEL_18;
        }
      }
    }

    *(v1 + 16) = v13;
  }

  v5 = v28;
  if (v9 != v8)
  {
LABEL_7:
    sub_4CA74();
    *v2 = v1;
    return;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v8 = v29;
  v10 = v30;
  v4 = v31;
  if (!v32)
  {
    goto LABEL_13;
  }

  v14 = (v32 - 1) & v32;
  v15 = __clz(__rbit64(v32)) | (v31 << 6);
  v16 = (v30 + 64) >> 6;
LABEL_18:
  v19 = (*(v5 + 48) + 16 * v15);
  v21 = *v19;
  v20 = v19[1];

LABEL_19:
  v27 = *(v1 + 24) >> 1;
  if (v27 < v3 + 1)
  {
    sub_54FDC();
    v1 = v26;
    v27 = *(v26 + 24) >> 1;
  }

  while (1)
  {
    if (v3 >= v27)
    {
      *(v1 + 16) = v3;
      goto LABEL_19;
    }

    v22 = (v1 + 32 + 16 * v3);
    *v22 = v21;
    v22[1] = v20;
    ++v3;
    if (!v14)
    {
      break;
    }

    v23 = v4;
LABEL_28:
    v24 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v25 = (*(v5 + 48) + ((v23 << 10) | (16 * v24)));
    v21 = *v25;
    v20 = v25[1];
  }

  while (1)
  {
    v23 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v23 >= v16)
    {
      *(v1 + 16) = v3;
      goto LABEL_7;
    }

    v14 = *(v8 + 8 * v23);
    ++v4;
    if (v14)
    {
      v4 = v23;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_4BB68(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_A4C94();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_A4B84();
  *v1 = result;
  return result;
}

uint64_t sub_4BC08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_4BC80(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_A45F4();

  return v3;
}

uint64_t sub_4BCE4(uint64_t a1, uint64_t a2)
{
  v2[25] = a2;
  v4 = *(*(sub_4BF0(&qword_DB5A8, &unk_A67C0) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v5 = *(*(sub_4BF0(&qword_DD7F8, &qword_A93E8) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v6 = type metadata accessor for RemindersPreprocessingResult(0);
  v2[28] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v8 = sub_A2EA4();
  v2[30] = v8;
  v9 = *(v8 - 8);
  v2[31] = v9;
  v10 = *(v9 + 64) + 15;
  v2[32] = swift_task_alloc();
  v11 = sub_4BF0(&qword_DD4B8, &qword_A9240);
  v2[33] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v13 = type metadata accessor for AppDetecter();
  v2[36] = v13;
  v2[5] = v13;
  v2[6] = &off_D0F20;
  v2[2] = a1;

  return _swift_task_switch(sub_4BEB8, 0, 0);
}

uint64_t sub_4BEB8()
{
  v1 = sub_7584(v0 + 2, v0[36]);
  if (qword_DA8F8 != -1)
  {
    swift_once();
  }

  v2 = *v1;
  v3._countAndFlagsBits = sub_1F118(qword_E0910);
  v0[37] = v3._object;
  if (v3._object)
  {
    v4 = v0[32];
    v5 = v0[25];
    sub_A46D4(v3);
    sub_810AC(0x706120646E756F46, 0xEB00000000203A70, 0xD00000000000002BLL, 0x80000000000B1150, 0xD000000000000016, 0x80000000000B1180);

    sub_A2E94();
    sub_A3904();
    sub_A3454();
    v6 = swift_task_alloc();
    v0[38] = v6;
    *v6 = v0;
    v6[1] = sub_4C120;
    v7 = v0[35];
    v8 = v0[32];

    return sub_61E70();
  }

  else
  {
    v10 = v0[25];
    sub_24824();
    v11 = sub_4CAC4();
    *v12 = 3;
    sub_82ED4(v11, 256);
    v13 = sub_4CAC4();
    *v14 = 3;
    v16 = v0[34];
    v15 = v0[35];
    sub_4CAA4();

    sub_255F0();

    return v17(v13, 1);
  }
}

uint64_t sub_4C120()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 248);
  v5 = *(*v0 + 240);
  v8 = *v0;
  sub_5930();
  *v6 = v8;

  sub_761C((v8 + 96));
  sub_761C((v8 + 56));
  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_4C2A4, 0, 0);
}

uint64_t sub_4C2A4()
{
  v1 = v0[33];
  sub_4C704(v0[35], v0[34], &qword_DD4B8, &qword_A9240);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[34];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[35];
    v5 = v0[25];
    v6 = *v3;
    swift_errorRetain();
    sub_82ED4(v6, 256);
    sub_11E34(v4, &qword_DD4B8, &qword_A9240);
    v7 = v0[34];
    v8 = v0[35];
    sub_4CAA4();

    sub_255F0();

    return v9(v6, 1);
  }

  else
  {
    v11 = v0[28];
    v12 = v0[29];
    v14 = v0[26];
    v13 = v0[27];
    v15 = v0[25];
    sub_4B688(v3, v12);
    sub_4C764(v12, v13);
    sub_A924(v13, 0, 1, v11);
    sub_495D0();
    sub_A3904();
    sub_761C(v0 + 17);
    v16 = *(v15 + 160);
    v0[39] = v16;
    type metadata accessor for RemindersTemplatingService();
    inited = swift_initStackObject();
    v0[40] = inited;
    *(inited + 16) = v16;

    sub_49A44();
    v18 = swift_task_alloc();
    v0[41] = v18;
    *v18 = v0;
    v18[1] = sub_4C4C4;
    v19 = v0[29];
    v20 = v0[26];

    return sub_6DEE4(v19, v20);
  }
}

uint64_t sub_4C4C4()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 208);
  v4 = *v0;
  sub_5930();
  *v5 = v4;
  *(v7 + 336) = v6;

  sub_11E34(v3, &qword_DB5A8, &unk_A67C0);

  return _swift_task_switch(sub_4C608, 0, 0);
}

uint64_t sub_4C608()
{
  v1 = v0[42];
  v2 = v0[35];
  v3 = v0[29];
  v4 = v0[25];

  sub_82ED4(v5, 1);

  sub_4B6EC(v3);
  sub_11E34(v2, &qword_DD4B8, &qword_A9240);
  v6 = v0[34];
  v7 = v0[35];
  v8 = v0[32];
  v9 = v0[29];
  v11 = v0[26];
  v10 = v0[27];
  sub_761C(v0 + 2);

  sub_255F0();

  return v12(1, 0);
}

uint64_t sub_4C704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4BF0(a3, a4);
  sub_7A14(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_4C764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersPreprocessingResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4C7C8()
{
  v1 = *(sub_4BF0(&qword_DD7F8, &qword_A93E8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  v7 = type metadata accessor for RemindersPreprocessingResult(0);
  if (!sub_CF2C(v0 + v3, 1, v7))
  {
    v8 = *v6;

    v9 = *(v6 + 1);

    v10 = v7[6];
    v11 = sub_A2EA4();
    sub_7A14(v11);
    (*(v12 + 8))(&v6[v10]);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4C900(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD7F8, &qword_A93E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4C970()
{
  v1 = sub_4BF0(&qword_DD7F8, &qword_A93E8);
  sub_10A88(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_497E8(v3, v4);
}

uint64_t sub_4C9EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4CA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD7F8, &qword_A93E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_4CAA4()
{
  v2 = v0[32];
  v3 = v0[29];
  v5 = v0[26];
  v4 = v0[27];

  return sub_761C(v0 + 2);
}

uint64_t sub_4CAC4()
{

  return swift_allocError();
}

uint64_t sub_4CAE4()
{
  v2 = v1;
  v3 = sub_4BF0(&unk_DD800, &unk_A9400);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_36194();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_A2D04();
  v12 = sub_14CB8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v2 temporalEventTrigger];
  if (!v19)
  {
    sub_4D234(v10, 1);
LABEL_8:
    sub_AD70(v10, &unk_DD800, &unk_A9400);
    v25 = 0;
    return v25 & 1;
  }

  v20 = v19;
  v21 = [v19 dateComponentsRange];

  v22 = [v21 startDateComponents];
  if (v22)
  {
    sub_A2C54();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  sub_4D234(v7, v23);
  sub_3FAE8(v7, v10, &unk_DD800, &unk_A9400);
  sub_4D214(v10);
  if (v24)
  {
    goto LABEL_8;
  }

  (*(v14 + 32))(v18, v10, v0);
  sub_A2C84();
  if (v26 & 1) != 0 && (sub_A2CB4(), (v27))
  {
    sub_A2CC4();
    v25 = v28;
  }

  else
  {
    v25 = 0;
  }

  (*(v14 + 8))(v18, v0);
  return v25 & 1;
}

uint64_t sub_4CD28(void *a1)
{
  v4 = sub_A2EA4();
  v5 = sub_14CB8(v4);
  v55 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_36194();
  v53 = (v9 - v10);
  __chkstk_darwin(v11);
  v54 = &v52 - v12;
  v13 = sub_4BF0(&qword_DD220, qword_A9B20);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_36194();
  v17 = v15 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v52 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v52 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v52 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v52 - v29;
  __chkstk_darwin(v28);
  v32 = &v52 - v31;
  v33 = [v2 temporalEventTrigger];
  if (v33)
  {
    v34 = v33;
    v52 = v27;
    v35 = a1;
    v36 = [v33 dateComponentsRange];

    v37 = [v36 startDate];
    if (v37)
    {
      sub_A2E74();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    sub_4D234(v30, v38);
    sub_3FAE8(v30, v32, &qword_DD220, qword_A9B20);
    a1 = v35;
    v27 = v52;
  }

  else
  {
    sub_4D234(v32, 1);
  }

  v39 = [a1 temporalEventTrigger];
  v40 = v54;
  if (v39)
  {
    v41 = v39;
    v42 = [v39 dateComponentsRange];

    v43 = [v42 startDate];
    if (v43)
    {
      sub_A2E74();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    sub_4D234(v24, v44);
    sub_3FAE8(v24, v27, &qword_DD220, qword_A9B20);
  }

  else
  {
    sub_4D234(v27, 1);
  }

  sub_4D1A4(v32, v21);
  sub_4D214(v21);
  v45 = v55;
  if (v47)
  {
    v17 = v21;
  }

  else
  {
    v46 = *(v55 + 32);
    v46(v40, v21, v1);
    sub_4D1A4(v27, v17);
    sub_4D214(v17);
    if (!v47)
    {
      v48 = v53;
      v46(v53, v17, v1);
      v49 = sub_A2E84();
      v50 = *(v45 + 8);
      v50(v48, v1);
      v50(v40, v1);
LABEL_24:
      sub_AD70(v32, &qword_DD220, qword_A9B20);
      goto LABEL_25;
    }

    (*(v45 + 8))(v40, v1);
  }

  sub_AD70(v17, &qword_DD220, qword_A9B20);
  sub_4D214(v32);
  if (v47)
  {
    sub_4D214(v27);
    if (v47)
    {
      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    goto LABEL_24;
  }

  sub_AD70(v32, &qword_DD220, qword_A9B20);
  v49 = -1;
LABEL_25:
  sub_AD70(v27, &qword_DD220, qword_A9B20);
  return v49;
}

uint64_t sub_4D1A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD220, qword_A9B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4D234(uint64_t a1, uint64_t a2)
{

  return sub_A924(a1, a2, 1, v2);
}

id sub_4D24C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v8 setCentered:a4 & 1];
  v9 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  sub_4D340(a3, v9);
  [v8 setAction:v9];

  v10 = [objc_allocWithZone(SAUIDecoratedText) init];
  sub_4D3C0(a1, a2, v10);
  [v8 setDecoratedLabel:v10];

  return v8;
}

void sub_4D340(uint64_t a1, void *a2)
{
  sub_4BF0(&unk_DD870, &qword_A9410);
  isa = sub_A4754().super.isa;

  [a2 setCommands:isa];
}

void sub_4D3C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_A45C4();

  [a3 setText:v4];
}

uint64_t sub_4D424()
{
  sub_A33D4();
  sub_7584(v1, v1[3]);
  sub_A33E4();
  return sub_761C(v1);
}

uint64_t sub_4D488(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 80) = a1;
  return _swift_task_switch(sub_4D4B0, 0, 0);
}

uint64_t sub_4D4B0()
{
  sub_4BF0(&qword_DD958, &qword_AAE70);
  v1 = swift_allocObject();
  v0[5] = v1;
  *(v1 + 16) = xmmword_A8CD0;
  *(v1 + 32) = 50462976;
  if (qword_DA838 != -1)
  {
    swift_once();
  }

  v0[6] = qword_E0608;

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_4D5C4;

  return sub_44F0(1);
}

uint64_t sub_4D5C4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v6 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return _swift_task_switch(sub_4D6C4, 0, 0);
}

uint64_t sub_4D6C4()
{
  v1 = *(v0 + 48);
  v2 = sub_4F034(*(v0 + 64), *(v0 + 72));

  v3 = sub_4ED80(v2);
  v4 = *(v0 + 40);
  if (v3)
  {
    v5 = *(v0 + 40);
    sub_55290();
    v4 = v6;
    *(v6 + 16) = 5;
    *(v6 + 36) = 4;
  }

  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 80);
  sub_A3444();
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = v8;
  v10[4] = v7;

  sub_A3434();
  sub_4D424();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_4D81C()
{
  sub_A3444();
  sub_4DD34();
  sub_4DD1C();
  sub_A3434();
  sub_4D424();
}

uint64_t sub_4D884(char a1)
{
  sub_4BF0(&qword_DD958, &qword_AAE70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_A8CD0;
  *(v2 + 32) = 50462976;
  if (a1)
  {
    sub_55290();
    v2 = v3;
    *(v3 + 16) = 5;
    *(v3 + 36) = 4;
  }

  sub_A3444();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = 0;
  v4[4] = 0xE000000000000000;
  sub_4DD34();
  sub_A3434();
  sub_4D424();
}

uint64_t sub_4D9A0()
{
  sub_A3444();
  sub_4DD1C();
  sub_A3434();
  sub_4D424();
}

uint64_t sub_4DA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to SiriKitEventSending.sendAsync(_:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2C330;

  return SiriKitEventSending.sendAsync(_:)(a1, a2, a3);
}

uint64_t sub_4DB38(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v23 = a8;
  v24 = a7;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(a1);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v22[-v17];
  v19 = *(v12 + 16);
  v19(&v22[-v17]);
  v20 = sub_A3444();
  (v19)(v16, v18, a6);

  v25 = 0;
  sub_4EBF8(v23, v16, a3, a4, a2, v20, a6, v24);
  sub_4D424();

  return (*(v12 + 8))(v18, a6);
}

void sub_4DCC8(uint64_t *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_4EA38(a1, v1[2]);
}

uint64_t sub_4DCD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_4DD48(unsigned __int8 a1)
{
  sub_1C664(a1);
  v1 = sub_A3804();

  return v1;
}

uint64_t sub_4DE18(double a1, double a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *v2;
  return _swift_task_switch(sub_4DE40, 0, 0);
}

uint64_t sub_4DE40()
{
  v1 = sub_2567C(&unk_A9558);
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_4DED4;
  v2 = v0[4];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_4E828();

  return v6(v5);
}

uint64_t sub_4DED4(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  sub_25540();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_4DFD0(double a1, double a2)
{
  v3[2] = v3;
  v3[7] = v3 + 18;
  v3[3] = sub_4E104;
  v6 = swift_continuation_init();
  v3[17] = sub_4BF0(&qword_DD968, &qword_A9560);
  v3[10] = _NSConcreteStackBlock;
  v3[11] = 1107296256;
  v3[12] = sub_4E240;
  v3[13] = &unk_D1BF8;
  v3[14] = v6;
  [v2 currentLocationWithAccuracy:v3 + 10 timeout:a1 completion:a2];

  return _swift_continuation_await(v3 + 2);
}

uint64_t sub_4E104()
{
  v1 = *v0;
  sub_25540();
  *v4 = v2;
  v5 = *v0;
  *v4 = *v0;
  if (*(v3 + 48))
  {
    v6 = *(v3 + 48);
    swift_willThrow();
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v2 + 144);
    v10 = *(v5 + 8);

    return v10(v9);
  }
}

uint64_t *sub_4E240(uint64_t a1, void *a2, void *a3)
{
  result = sub_7584((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_4E2C4(v6, a3);
  }

  if (a2)
  {
    v7 = a2;

    return sub_4E330(v6, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4E2C4(uint64_t a1, uint64_t a2)
{
  sub_4BF0(&qword_DBB90, &qword_A7540);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_4E350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return _swift_continuation_throwingResume();
}

uint64_t sub_4E394()
{
  v1 = sub_2567C(&unk_A9540);
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_4E424;
  v2 = *(v0 + 16);
  v3 = sub_4E828();

  return v4(v3);
}

uint64_t sub_4E424(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 24);
  v7 = *v3;
  sub_25540();
  *v8 = v7;

  v11 = *(v7 + 8);
  if (!v2)
  {
    v9 = a1;
    v10 = a2;
  }

  return v11(v9, v10);
}

uint64_t sub_4E530()
{
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_4E64C;
  v2 = swift_continuation_init();
  v1[17] = sub_4BF0(&qword_DD960, &unk_A9548);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_4E788;
  v1[13] = &unk_D1BD0;
  v1[14] = v2;
  [v0 currentAuthorizationStyle:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_4E64C()
{
  v1 = *v0;
  sub_25540();
  *v4 = v2;
  v5 = *v0;
  *v4 = *v0;
  if (*(v3 + 48))
  {
    v6 = *(v3 + 48);
    swift_willThrow();
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v2 + 144);
    v10 = *(v2 + 152);
    v11 = *(v5 + 8);

    return v11(v9, v10);
  }
}

uint64_t sub_4E788(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_7584((a1 + 32), *(a1 + 56));
  if (a4)
  {
    return sub_4E2C4(*v7, a4);
  }

  v9 = *v7;

  return sub_4E350(v9, a2, a3);
}

void sub_4E83C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a1;

  sub_A3414();
  v6 = a4[3];
  v7 = a4[4];
  sub_7584(a4, v6);
  (*(v7 + 8))(v6, v7);
  sub_A3424();
  v8 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(FLOWSchemaFLOWBriefingContext) init];
    if (v10)
    {
      v11 = a4[3];
      v12 = a4[4];
      v16 = v10;
      sub_7584(a4, v11);
      [v16 setBriefingAttribute:{(*(v12 + 16))(v11, v12)}];
      [v9 setBriefingContext:v16];
      [v9 setHasBriefingContext:1];
      v13 = v9;
      sub_A3404();

      return;
    }
  }

  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v14 = sub_A43D4();
  v15 = sub_48A4(v14, qword_E0BA0);
  sub_4ED60(v15, 0x80000000000B1230, 0xD000000000000038, 0x80000000000B1270, 0xD00000000000003FLL);
}

void sub_4EA38(uint64_t *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(FLOWSchemaFLOWBriefingContext) init];
    if (v6)
    {
      v7 = v6;
      v8 = *(a2 + 16);
      v15 = v6;
      if (v8)
      {
        v9 = (a2 + 32);
        do
        {
          v10 = *v9++;
          [v7 addEnabledFeatures:dword_A9568[v10]];
          v7 = v15;
          --v8;
        }

        while (v8);
      }

      [v5 setBriefingContext:v7];
      [v5 setHasBriefingContext:1];
      v11 = *a1;
      v12 = v5;
      sub_A3404();

      sub_A3424();

      return;
    }
  }

  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v13 = sub_A43D4();
  v14 = sub_48A4(v13, qword_E0BA0);
  sub_4ED60(v14, 0x80000000000B1230, 0xD000000000000038, 0x80000000000B1270, 0xD000000000000037);
}

uint64_t sub_4EBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[3] = a7;
  v17[4] = a8;
  v12 = sub_76B0(v17);
  (*(*(a7 - 8) + 32))(v12, a2, a7);
  sub_A760(v17, v16);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  sub_A814(v16, v13 + 32);
  v14 = sub_A3434();
  sub_761C(v17);
  return v14;
}

uint64_t sub_4ED14()
{
  v1 = *(v0 + 24);

  sub_761C((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_4ED60(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_81094(0xD000000000000035, a2, a3, a4, a5, v5 | 0x8000000000000000);
}

uint64_t sub_4ED80(char a1)
{
  if (!a1)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = sub_A4E44();

  if ((v2 & 1) == 0)
  {
    if (a1 == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_A4E44();
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_4EE58(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_4EF28;

  return sub_39B8();
}

uint64_t sub_4EF28()
{
  sub_5950();
  v1 = *(*v0 + 16);
  *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_4F034(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 2;
  }

  v4 = a1 == 1702195828 && a2 == 0xE400000000000000;
  if (v4 || (sub_A4E44() & 1) != 0)
  {

    return 0;
  }

  if (a1 == 0x65736C6166 && a2 == 0xE500000000000000)
  {
  }

  else
  {
    v7 = sub_A4E44();

    if ((v7 & 1) == 0)
    {
      return 2;
    }
  }

  return 1;
}

uint64_t sub_4F0F8()
{
  sub_5950();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_4F184;

  return sub_44F0(3);
}

uint64_t sub_4F184()
{
  sub_5950();
  v1 = *v0;
  v2 = *(*v0 + 16);
  v6 = *v0;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;

  return _swift_task_switch(sub_4F280, 0, 0);
}

uint64_t sub_4F280()
{
  sub_5950();
  v1 = sub_4F034(v0[3], v0[4]);
  v2 = sub_4ED80(v1);
  v3 = v0[1];
  v4 = v2 & 1;

  return v3(v4);
}

uint64_t sub_4F2E4(char a1)
{
  if (!a1)
  {
    return 1702195796;
  }

  if (a1 == 1)
  {
    return 0x65736C6146;
  }

  return 0x7465736E75;
}

uint64_t sub_4F32C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4F2E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_4F358@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_4BF0(&qword_DD970, &qword_A95B8);
  sub_10A88(v3);
  v5 = *(v4 + 64);
  sub_11FC0();
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_A2F34();
  v10 = sub_591C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_AA54();
  sub_504D0();
  v15 = [objc_allocWithZone(NSDateFormatter) init];
  sub_A2EE4();
  isa = sub_A2F14().super.isa;
  (*(v12 + 8))(v1, v9);
  [v15 setLocale:isa];

  sub_50230(0xD000000000000018, 0x80000000000B1330, v15);
  sub_A3024();
  v17 = sub_A3044();
  v18 = 0;
  if (sub_CF2C(v8, 1, v17) != 1)
  {
    v18 = sub_A3034().super.isa;
    (*(*(v17 - 8) + 8))(v8, v17);
  }

  [v15 setTimeZone:v18];

  v19 = sub_A45C4();
  v20 = [v15 dateFromString:v19];

  if (v20)
  {
    sub_A2E74();

    v21 = 0;
    v15 = v20;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_A2EA4();
  return sub_A924(a1, v21, 1, v22);
}

uint64_t sub_4F5E0()
{
  v0 = sub_A2EA4();
  v1 = sub_591C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_36194();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_A2E94();
  sub_A2DE4();
  v12 = sub_4FBDC(v8, v11);
  v13 = *(v3 + 8);
  v13(v8, v0);
  v13(v11, v0);
  return v12 & 1;
}

uint64_t sub_4F724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = sub_504F0(a1, a2, a3);
  v4 = sub_591C(v3);
  v57[6] = v5;
  v57[7] = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_AA54();
  v10 = v9 - v8;
  v11 = sub_A3004();
  v12 = sub_591C(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_36194();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = v57 - v21;
  v23 = sub_4BF0(&qword_DD220, qword_A9B20);
  sub_10A88(v23);
  v25 = *(v24 + 64);
  sub_11FC0();
  __chkstk_darwin(v26);
  v28 = v57 - v27;
  v29 = sub_4BF0(&qword_DD970, &qword_A95B8);
  sub_10A88(v29);
  v31 = *(v30 + 64);
  sub_11FC0();
  __chkstk_darwin(v32);
  v33 = sub_4BF0(&qword_DD988, &unk_AA310);
  sub_10A88(v33);
  v35 = *(v34 + 64);
  sub_11FC0();
  __chkstk_darwin(v36);
  sub_504D0();
  v37 = sub_A2D04();
  v38 = sub_591C(v37);
  v57[3] = v39;
  v57[4] = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38);
  sub_AA54();
  sub_504C4();
  sub_A924(v42, v43, v44, v11);
  sub_A3044();
  sub_504C4();
  sub_A924(v45, v46, v47, v48);
  sub_503CC();
  sub_50530();
  sub_A2CD4();
  sub_A2FD4();
  sub_A2FD4();
  sub_A2F44();
  v49 = *(v14 + 8);
  v49(v19, v11);
  sub_5048C();
  v50 = sub_5046C();
  (dword_0)(v50);
  v51 = sub_504DC();
  (v49)(v51);
  if (sub_CF2C(v28, 1, v10) == 1)
  {
    sub_11E34(v28, &qword_DD220, qword_A9B20);
    sub_A2FD4();
    sub_50510();
    v49(v22, v57[5]);
    sub_A2DE4();
    (dword_0)(v28, v10);
    v52 = sub_5045C();
  }

  else
  {
    v55 = sub_5045C();
    v56(v55);
    v52 = sub_504B0();
  }

  return v53(v52);
}

BOOL sub_4FAC4()
{
  v1 = sub_A3004();
  v2 = sub_591C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_AA54();
  sub_504D0();
  sub_A2FD4();
  v7 = sub_A2F54();
  v8 = *(v4 + 8);
  v8(v0, v1);
  if (v7)
  {
    return 1;
  }

  sub_A2FD4();
  v10 = sub_A2F84();
  v8(v0, v1);
  return (v10 & 1) != 0 && (sub_79D74() - 6) < 3u;
}

uint64_t sub_4FBDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_4BF0(&qword_DD978, &qword_A95C0);
  v7 = sub_7A14(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_36194();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_4BF0(&qword_DD980, qword_A95C8);
  sub_7A14(v16);
  v18 = *(v17 + 64);
  sub_11FC0();
  __chkstk_darwin(v19);
  v21 = &v34 - v20;
  v22 = sub_A2EA4();
  v23 = sub_50294();
  result = sub_A45A4();
  if (result)
  {
    v25 = *(v22 - 8);
    v37 = v3;
    v26 = v25;
    v27 = a1;
    v28 = a2;
    v29 = *(v25 + 16);
    v35 = v16;
    v29(v15, v27, v22);
    v29(&v15[*(v6 + 48)], v28, v22);
    sub_502EC(v15, v12);
    v30 = *(v6 + 48);
    v31 = *(v26 + 32);
    v31(v21, v12, v22);
    v36 = v23;
    v32 = *(v26 + 8);
    v32(v12 + v30, v22);
    sub_5035C(v15, v12);
    v31(&v21[*(v35 + 36)], v12 + *(v6 + 48), v22);
    v32(v12, v22);
    if (sub_A4594())
    {
      v33 = sub_A45A4();
    }

    else
    {
      v33 = 0;
    }

    sub_11E34(v21, &qword_DD980, qword_A95C8);
    return v33 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4FE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = sub_504F0(a1, a2, a3);
  v4 = sub_591C(v3);
  v57[6] = v5;
  v57[7] = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_AA54();
  v10 = v9 - v8;
  v11 = sub_A3004();
  v12 = sub_591C(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_36194();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = v57 - v21;
  v23 = sub_4BF0(&qword_DD220, qword_A9B20);
  sub_10A88(v23);
  v25 = *(v24 + 64);
  sub_11FC0();
  __chkstk_darwin(v26);
  v28 = v57 - v27;
  v29 = sub_4BF0(&qword_DD970, &qword_A95B8);
  sub_10A88(v29);
  v31 = *(v30 + 64);
  sub_11FC0();
  __chkstk_darwin(v32);
  v33 = sub_4BF0(&qword_DD988, &unk_AA310);
  sub_10A88(v33);
  v35 = *(v34 + 64);
  sub_11FC0();
  __chkstk_darwin(v36);
  sub_504D0();
  v37 = sub_A2D04();
  v38 = sub_591C(v37);
  v57[3] = v39;
  v57[4] = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38);
  sub_AA54();
  sub_504C4();
  sub_A924(v42, v43, v44, v11);
  sub_A3044();
  sub_504C4();
  sub_A924(v45, v46, v47, v48);
  sub_503CC();
  sub_50530();
  sub_A2FD4();
  sub_A2FD4();
  sub_A2F44();
  v49 = *(v14 + 8);
  v49(v19, v11);
  sub_5048C();
  v50 = sub_5046C();
  (dword_0)(v50);
  v51 = sub_504DC();
  (v49)(v51);
  if (sub_CF2C(v28, 1, v10) == 1)
  {
    sub_11E34(v28, &qword_DD220, qword_A9B20);
    sub_A2FD4();
    sub_50510();
    v49(v22, v57[5]);
    sub_A2DE4();
    (dword_0)(v28, v10);
    v52 = sub_5045C();
  }

  else
  {
    v55 = sub_5045C();
    v56(v55);
    v52 = sub_504B0();
  }

  return v53(v52);
}

void sub_50230(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_A45C4();

  [a3 setDateFormat:v4];
}

unint64_t sub_50294()
{
  result = qword_DD530;
  if (!qword_DD530)
  {
    sub_A2EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD530);
  }

  return result;
}

uint64_t sub_502EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD978, &qword_A95C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5035C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD978, &qword_A95C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_503CC()
{

  return DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)(v0, v1, 0, 1, 0, 1, 0, 1);
}

uint64_t sub_5045C()
{
  v2 = *(v1 - 144);
  v3 = *(*(v1 - 152) + 8);
  return v0;
}

uint64_t sub_5046C()
{
  v2 = *(*(v1 - 128) + 8);
  *(v1 - 168) = v0;
  result = v0;
  v4 = *(v1 - 120);
  return result;
}

uint64_t sub_5048C()
{

  return Calendar.date(byAdding:to:wrappingComponents:)(v0, v1, 0);
}

uint64_t sub_504DC()
{
  result = v1;
  *(v3 - 136) = v0;
  *(v3 - 160) = v2;
  return result;
}

uint64_t sub_504F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 136) = a2;
  *(v3 - 112) = a3;
  *(v3 - 104) = a1;

  return sub_A2EA4();
}

uint64_t sub_50510()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 104);

  return sub_A2F44();
}

uint64_t sub_50530()
{
  v2 = *(v0 - 136);

  return (DateComponents.day.setter)(v2, 0);
}

void sub_505A0(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SupportedFeatures;
  *(a1 + 32) = &off_D2110;
  *a1 = 2;
}

uint64_t sub_505C0(uint64_t a1)
{
  v3 = sub_4BF0(&qword_DDC50, &unk_A9640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = aBlock - v6;
  v8 = *(v1 + 80);
  sub_4C704(a1, aBlock - v6, &qword_DDC50, &unk_A9640);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  sub_51E80(v7, v10 + v9);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_51EF0;
  *(v11 + 24) = v10;
  aBlock[4] = sub_51F6C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_50578;
  aBlock[3] = &unk_D1C98;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  sub_11E34(a1, &qword_DDC50, &unk_A9640);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_507E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherForecast_Value;
  swift_beginAccess();
  sub_51FAC(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_5084C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v49 = a7;
  v50 = a8;
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v13 = *(v9 + 48);
  v14 = *(v9 + 52);
  v15 = swift_allocObject();
  v16 = a9[3];
  v17 = sub_A7C4(a9, v16);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v23 = type metadata accessor for OfflineStateProvider();
  v53[3] = v23;
  v53[4] = &off_D29E8;
  v53[0] = v22;
  v24 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_logger;
  if (qword_DA9D8 != -1)
  {
    swift_once();
  }

  v25 = sub_A43D4();
  v26 = sub_48A4(v25, qword_E0BB8);
  (*(*(v25 - 8) + 16))(v15 + v24, v26, v25);
  v27 = v15 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherService;
  *(v27 + 24) = &type metadata for WeatherService;
  *(v27 + 32) = &off_D3148;
  v28 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherForecast_Value;
  v29 = type metadata accessor for WeatherPreprocessingResult(0);
  sub_A924(v15 + v28, 1, 1, v29);
  sub_A760(a5, v15 + 16);
  sub_A760(a6, v15 + 112);
  sub_A760(v53, v51);
  v30 = v52;
  v31 = sub_A7C4(v51, v52);
  v32 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = (&v45 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  *(v15 + 192) = v23;
  *(v15 + 200) = &off_D29E8;
  *(v15 + 168) = v36;
  v37 = sub_A3584();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  *(v15 + 56) = sub_A3574();
  sub_2505C();
  v40 = swift_allocError();
  sub_761C(a6);
  sub_761C(a5);
  sub_761C(v53);
  *(v15 + 64) = v40;
  *(v15 + 72) = 1;
  *(v15 + 208) = 0;
  *(v15 + 216) = -256;
  v42 = v46;
  v41 = v47;
  *(v15 + 80) = a1;
  *(v15 + 88) = v42;
  *(v15 + 96) = v41;
  *(v15 + 104) = v48;
  v43 = v50;
  *(v15 + 152) = v49;
  *(v15 + 160) = v43;
  sub_761C(v51);
  sub_761C(a9);
  return v15;
}

uint64_t sub_50BB4()
{
  v1[11] = v0;
  v2 = sub_4BF0(&qword_DDC50, &unk_A9640);
  sub_10A88(v2);
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = type metadata accessor for WeatherPreprocessingResult(0);
  v1[13] = v5;
  sub_10A88(v5);
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = sub_4BF0(&qword_DD4A0, &qword_A9200);
  v1[15] = v8;
  sub_10A88(v8);
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v11 = sub_AA8C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_50CB4()
{
  v1 = v0[11];
  v0[18] = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_logger;
  sub_5201C(0xD00000000000001ELL, "weatherForecast_Value");
  v2 = *sub_7584((v1 + 168), *(v1 + 192));
  v3 = sub_834E4();
  v4 = v0[11];
  if (v3)
  {
    sub_5201C(0xD000000000000027, "ssing result: succeeded");
    sub_24824();
    v5 = sub_256B4();
    *v6 = 0;
    sub_82ED4(v5, 256);
    v7 = sub_256B4();
    *v8 = 0;
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[14];
    v12 = v0[12];

    v13 = v0[1];

    return v13(v7, 1);
  }

  else
  {
    sub_7584((v4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherService), *(v4 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherService + 24));
    v15 = *(v4 + 88);
    v16 = *(v4 + 96);
    v17 = *(v4 + 104);
    v18 = swift_task_alloc();
    v0[19] = v18;
    *v18 = v0;
    v18[1] = sub_50E9C;
    v19 = v0[17];

    return sub_95F28();
  }
}

uint64_t sub_50E9C()
{
  v1 = *(*v0 + 152);
  v6 = *v0;

  v2 = sub_AA8C();

  return _swift_task_switch(v2, v3, v4);
}

id sub_50F90()
{
  v1 = v0[15];
  sub_4C704(v0[17], v0[16], &qword_DD4A0, &qword_A9200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[17];
    v3 = v0[18];
    v4 = v0[11];
    v5 = *v0[16];
    swift_errorRetain();
    sub_82ED4(v5, 256);
    sub_A4B54(44);

    swift_getErrorValue();
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[9];
    v31._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v31);

    sub_5204C(0xD00000000000002ALL, 0x80000000000B1410, v9, 0x80000000000B13E0);

    sub_11E34(v2, &qword_DD4A0, &qword_A9200);
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[14];
    v13 = v0[12];

    v14 = v0[1];

    return v14(v5, 1);
  }

  else
  {
    v16 = v0[18];
    v18 = v0[13];
    v17 = v0[14];
    v20 = v0[11];
    v19 = v0[12];
    sub_51B20(v0[16], v17);
    sub_5204C(0xD000000000000027, 0x80000000000B1440, v21, 0x80000000000B13E0);
    sub_51B84(v17, v19);
    sub_A924(v19, 0, 1, v18);
    sub_505C0(v19);
    if (qword_DAA18 != -1)
    {
      swift_once();
    }

    v22 = v0[11];
    sub_7A124(1, qword_E0C78, unk_E0C80, byte_E0C88, qword_E0C90);
    sub_A760(v22 + 112, (v0 + 2));
    v23 = *(v22 + 160);
    v24 = type metadata accessor for WeatherTemplatingService();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();

    v0[20] = sub_56574(v0 + 2, v23);
    result = [objc_opt_self() currentLocale];
    v0[21] = result;
    if (result)
    {
      v27 = result;
      v28 = swift_task_alloc();
      v0[22] = v28;
      *v28 = v0;
      v28[1] = sub_51308;
      v29 = v0[14];

      return sub_55DE4(v29, v27);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_51308(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 184) = a1;

  v5 = sub_AA8C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_51438()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];

  sub_82ED4(v5, 1);

  sub_51BE8(v3);
  sub_11E34(v2, &qword_DD4A0, &qword_A9200);
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v9 = v0[12];

  v10 = v0[1];

  return v10(1, 0);
}

uint64_t sub_51510()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_logger;
  v2 = sub_A43D4();
  sub_7A14(v2);
  (*(v3 + 8))(v0 + v1);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherService));
  return sub_11E34(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherForecast_Value, &qword_DDC50, &unk_A9640);
}

uint64_t sub_51594()
{
  v0 = sub_82DF4();
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_logger;
  v2 = sub_A43D4();
  sub_7A14(v2);
  (*(v3 + 8))(v0 + v1);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherService));
  sub_11E34(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin11WeatherSpec_weatherForecast_Value, &qword_DDC50, &unk_A9640);
  return v0;
}

uint64_t sub_51624()
{
  v0 = sub_51594();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_516A0()
{
  v0 = sub_A43D4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_51A6C(319, &unk_DD9D8, type metadata accessor for WeatherPreprocessingResult, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_517D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CurrentWeatherForecast();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_CF2C(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for WeatherState();
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_518BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CurrentWeatherForecast();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for WeatherState();
    v10 = a1 + *(a4 + 28);
  }

  return sub_A924(v10, a2, a2, v9);
}

void sub_51988()
{
  type metadata accessor for CurrentWeatherForecast();
  if (v0 <= 0x3F)
  {
    sub_51A6C(319, &qword_DDC10, type metadata accessor for WeatherConditionEvent, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_51AD0();
      if (v2 <= 0x3F)
      {
        type metadata accessor for WeatherState();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_51A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_51AD0()
{
  if (!qword_DDC18)
  {
    v0 = sub_A4A24();
    if (!v1)
    {
      atomic_store(v0, &qword_DDC18);
    }
  }
}

uint64_t sub_51B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherPreprocessingResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_51B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherPreprocessingResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_51BE8(uint64_t a1)
{
  v2 = type metadata accessor for WeatherPreprocessingResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_51C44()
{
  v1 = *(sub_4BF0(&qword_DDC50, &unk_A9640) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = type metadata accessor for WeatherPreprocessingResult(0);
  if (!sub_CF2C(v0 + v3, 1, v7))
  {
    v26 = v4;
    v8 = sub_4BF0(&qword_DB768, &unk_A9650);
    sub_7A14(v8);
    v10 = *(v9 + 8);
    v10(v0 + v3, v8);
    v11 = type metadata accessor for CurrentWeatherForecast();
    v12 = v11[5];
    if (!sub_CF2C(v6 + v12, 1, v8))
    {
      v10(v6 + v12, v8);
    }

    v13 = v11[6];
    if (!sub_CF2C(v6 + v13, 1, v8))
    {
      v10(v6 + v13, v8);
    }

    v14 = v11[8];
    v15 = sub_A2EA4();
    sub_7A14(v15);
    v17 = *(v16 + 8);
    v17(v6 + v14, v15);
    v18 = *(v6 + v7[5]);

    v19 = v6 + v7[6];
    if (*(v19 + 24))
    {

      v20 = *(v19 + 48);
    }

    v21 = v6 + v7[7];
    v17(v21, v15);
    v22 = type metadata accessor for WeatherState();
    v23 = *(v21 + *(v22 + 24) + 8);

    v24 = *(v21 + *(v22 + 28));

    v4 = v26;
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_51E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DDC50, &unk_A9640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_51EF0()
{
  v1 = sub_4BF0(&qword_DDC50, &unk_A9640);
  sub_10A88(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_507E8(v3, v4);
}

uint64_t sub_51F6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_51F94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_51FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DDC50, &unk_A9640);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_5201C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_810AC(a1, a2 | 0x8000000000000000, 0xD000000000000029, v3 | 0x8000000000000000, v2, 0xE900000000000029);
}

void sub_5204C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_810AC(a1, a2, 0xD000000000000029, a4, v4, 0xE900000000000029);
}

__n128 sub_52070(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_5208C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_520CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_52128()
{
  sub_5277C();
  sub_A4B54(26);

  sub_52788();
  v9 = v1 | 6;
  if (*v0)
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (*v0)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_A46D4(v2);

  sub_52754();
  sub_5277C();
  sub_A4B54(18);

  v7 = *(v0 + 8);
  sub_52770();
  v10._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v10);

  sub_52754();

  v11._countAndFlagsBits = 0x79726F6765746163;
  v11._object = 0xEF203A7865646E49;
  sub_A46D4(v11);

  sub_5277C();
  sub_A4B54(18);

  sub_A46D4(*(v0 + 16));
  sub_52754();

  v12._countAndFlagsBits = 0x79726F6765746163;
  v12._object = 0xEF203A656C616353;
  sub_A46D4(v12);

  sub_5277C();
  sub_A4B54(19);

  sub_52788();
  v8 = *(v0 + 32);
  sub_52770();
  v13._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v13);

  v14._countAndFlagsBits = sub_52770();
  sub_A46D4(v14);

  if (*(v0 + 48))
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  v15._countAndFlagsBits = v4;
  v15._object = v5;
  sub_A46D4(v15);

  v16._countAndFlagsBits = 0x72656469766F7270;
  v16._object = 0xEA0000000000203ALL;
  sub_A46D4(v16);

  return v9;
}

uint64_t sub_52400@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_4BF0(&qword_DDC58, qword_A96E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v35[-v4];
  v37 = sub_A31F4();
  v6 = sub_591C(v37);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_A3234();
  v14 = sub_591C(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v20 = &v35[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((sub_A3184() & 1) == 0)
  {
    goto LABEL_4;
  }

  if (qword_DAA20 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    sub_7A124(1, qword_E0C98, unk_E0CA0, byte_E0CA8, qword_E0CB0);
LABEL_4:
    v36 = sub_A3184();
    sub_A31A4();
    v21 = sub_A3224();
    v22 = *(v16 + 8);
    v16 += 8;
    v22(v20, v13);
    if (v21 < 0)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_A31C4();
    v13 = sub_A31E4();
    v20 = v23;
    v24 = *(v8 + 8);
    v8 += 8;
    v24(v12, v37);
    v25 = sub_A31B4();
    if ((v25 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    swift_once();
  }

  v26 = v25;
  sub_A3194();
  v27 = sub_A3214();
  if (sub_CF2C(v5, 1, v27) == 1)
  {
    result = sub_526EC(v5);
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v29 = sub_A3204();
    v30 = v31;
    v32 = *(*(v27 - 8) + 8);
    v33 = sub_52770();
    result = v34(v33);
  }

  *a1 = v36 & 1;
  *(a1 + 8) = v21;
  *(a1 + 16) = v13;
  *(a1 + 24) = v20;
  *(a1 + 32) = v26;
  *(a1 + 40) = v29;
  *(a1 + 48) = v30;
  return result;
}

uint64_t sub_526EC(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DDC58, qword_A96E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_52754()
{
  v1._countAndFlagsBits = 10;
  v1._object = 0xE100000000000000;

  sub_A46D4(v1);
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x52868);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_528B4()
{
  result = qword_DDC60;
  if (!qword_DDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DDC60);
  }

  return result;
}

const char *sub_5291C(char a1)
{
  if (a1)
  {
    return "SiriX";
  }

  else
  {
    return "RF";
  }
}

uint64_t sub_52974(unsigned __int8 a1, char a2)
{
  v2 = 0xEF64656C6C617473;
  v3 = 0x6E49746F4E707061;
  v4 = a1;
  v5 = 0x6E49746F4E707061;
  v6 = 0xEF64656C6C617473;
  switch(v4)
  {
    case 1:
      v6 = 0x80000000000AD260;
      v5 = 0xD000000000000012;
      break;
    case 2:
      v6 = 0x80000000000AD280;
      v5 = 0xD000000000000015;
      break;
    case 3:
      break;
    default:
      v6 = 0x80000000000AD240;
      v5 = 0xD000000000000014;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000000000AD260;
      v3 = 0xD000000000000012;
      break;
    case 2:
      v2 = 0x80000000000AD280;
      v3 = 0xD000000000000015;
      break;
    case 3:
      break;
    default:
      v2 = 0x80000000000AD240;
      v3 = 0xD000000000000014;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_54398();
  }

  return v8 & 1;
}

uint64_t sub_52AF0(unsigned __int8 a1, char a2)
{
  v2 = 0xEF7865646E497974;
  v3 = 0x696C617551726961;
  v4 = a1;
  v5 = 0x696C617551726961;
  v6 = 0xEF7865646E497974;
  switch(v4)
  {
    case 1:
      v7 = "shouldSpeakAirQuality";
      goto LABEL_6;
    case 2:
      v7 = "airQualityCategoryScale";
LABEL_6:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD000000000000017;
      break;
    case 3:
      break;
    case 4:
      v6 = 0xE800000000000000;
      v5 = 0x72656469766F7270;
      break;
    case 5:
      v6 = 0x80000000000AD490;
      v5 = 0xD000000000000018;
      break;
    default:
      v6 = 0x80000000000AD410;
      v5 = 0xD000000000000015;
      break;
  }

  switch(a2)
  {
    case 1:
      v8 = "shouldSpeakAirQuality";
      goto LABEL_13;
    case 2:
      v8 = "airQualityCategoryScale";
LABEL_13:
      v2 = v8 | 0x8000000000000000;
      v3 = 0xD000000000000017;
      break;
    case 3:
      break;
    case 4:
      v2 = 0xE800000000000000;
      v3 = 0x72656469766F7270;
      break;
    case 5:
      v2 = 0x80000000000AD490;
      v3 = 0xD000000000000018;
      break;
    default:
      v2 = 0x80000000000AD410;
      v3 = 0xD000000000000015;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_54398();
  }

  return v10 & 1;
}

uint64_t sub_52CAC(char a1, char a2)
{
  v2 = 1702195796;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x65736C6146;
    }

    else
    {
      v3 = 0x7465736E75;
    }

    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1702195796;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x65736C6146;
    }

    else
    {
      v2 = 0x7465736E75;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_5437C();
  }

  return v7 & 1;
}

uint64_t sub_52D88()
{
  sub_543D0();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = sub_543B4();
      break;
    case 2:
      v3 = sub_54408();
      break;
    case 3:
      v0 = 0xE400000000000000;
      v3 = 1936744813;
      break;
    case 4:
      v0 = 0xE700000000000000;
      v3 = 0x74736163646F70;
      break;
    default:
      break;
  }

  v5 = 0xE800000000000000;
  switch(v1)
  {
    case 1:
      sub_543EC();
      break;
    case 2:
      sub_54420();
      break;
    case 3:
      v5 = 0xE400000000000000;
      v2 = 1936744813;
      break;
    case 4:
      v5 = 0xE700000000000000;
      v2 = 0x74736163646F70;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_5437C();
  }

  return v7 & 1;
}

uint64_t sub_52EBC(unsigned __int8 a1, char a2)
{
  v2 = 0xEE006E6F69746964;
  v3 = 0x6E6F437473726966;
  v4 = a1;
  v5 = 0x6E6F437473726966;
  v6 = 0xEE006E6F69746964;
  switch(v4)
  {
    case 1:
      v5 = 0x6F43646E6F636573;
      v6 = 0xEF6E6F697469646ELL;
      break;
    case 2:
      v5 = 0xD000000000000013;
      v6 = 0x80000000000ACF90;
      break;
    case 3:
      v6 = 0x80000000000ACFB0;
      v5 = 0xD000000000000014;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6F43646E6F636573;
      v2 = 0xEF6E6F697469646ELL;
      break;
    case 2:
      v3 = 0xD000000000000013;
      v2 = 0x80000000000ACF90;
      break;
    case 3:
      v2 = 0x80000000000ACFB0;
      v3 = 0xD000000000000014;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_54398();
  }

  return v8 & 1;
}

uint64_t sub_53048(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000010;
  v3 = "ted";
  v4 = "ted";
  v5 = a1;
  v6 = 0xD000000000000010;
  switch(v5)
  {
    case 1:
      v4 = "LocationDisabled";
      v6 = 0xD000000000000019;
      break;
    case 2:
      v4 = "LocationDisabledForDevice";
      v6 = 0xD000000000000016;
      break;
    case 3:
      v4 = "PodcastAppNotInstalled";
      v6 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "LocationDisabled";
      v2 = 0xD000000000000019;
      break;
    case 2:
      v3 = "LocationDisabledForDevice";
      v2 = 0xD000000000000016;
      break;
    case 3:
      v3 = "PodcastAppNotInstalled";
      v2 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5437C();
  }

  return v8 & 1;
}

uint64_t sub_53184(unsigned __int8 a1, char a2)
{
  v2 = 0xEF656D614E707041;
  v3 = 0x7374736163646F50;
  v4 = a1;
  v5 = 0x7374736163646F50;
  v6 = 0xEF656D614E707041;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000014;
      v6 = 0x80000000000AD5E0;
      break;
    case 2:
      break;
    case 3:
      v5 = 0x77654E656C617453;
      v6 = 0xEF74706D6F725073;
      break;
    default:
      v6 = 0x80000000000AD5C0;
      v5 = 0xD000000000000017;
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000014;
      v2 = 0x80000000000AD5E0;
      break;
    case 2:
      break;
    case 3:
      v3 = 0x77654E656C617453;
      v2 = 0xEF74706D6F725073;
      break;
    default:
      v2 = 0x80000000000AD5C0;
      v3 = 0xD000000000000017;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_54398();
  }

  return v8 & 1;
}

uint64_t sub_53310(unsigned __int8 a1, char a2)
{
  v2 = 0xEE00746E65764574;
  v3 = 0x6E6174726F706D49;
  v4 = a1;
  v5 = 0x6E6174726F706D49;
  v6 = 0xEE00746E65764574;
  switch(v4)
  {
    case 1:
      v7 = "ry";
      goto LABEL_5;
    case 2:
      v7 = "UpcomingEventSummary";
      goto LABEL_5;
    case 3:
      v7 = "CalendarEventSummary";
LABEL_5:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD000000000000014;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v8 = "ry";
      goto LABEL_10;
    case 2:
      v8 = "UpcomingEventSummary";
      goto LABEL_10;
    case 3:
      v8 = "CalendarEventSummary";
LABEL_10:
      v2 = v8 | 0x8000000000000000;
      v3 = 0xD000000000000014;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_54398();
  }

  return v10 & 1;
}

uint64_t sub_53464(unsigned __int8 a1, char a2)
{
  v2 = 0xEF65736E6F707365;
  v3 = 0x5264696C61766E69;
  v4 = a1;
  v5 = 0x5264696C61766E69;
  v6 = 0xEF65736E6F707365;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v6 = 0x80000000000AD1A0;
      v5 = 0xD000000000000010;
      break;
    case 3:
      v6 = 0x80000000000AD1C0;
      v5 = 0xD000000000000016;
      break;
    default:
      v6 = 0x80000000000AD170;
      v5 = 0xD000000000000013;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 0x80000000000AD1A0;
      v3 = 0xD000000000000010;
      break;
    case 3:
      v2 = 0x80000000000AD1C0;
      v3 = 0xD000000000000016;
      break;
    default:
      v2 = 0x80000000000AD170;
      v3 = 0xD000000000000013;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_54398();
  }

  return v8 & 1;
}

uint64_t sub_535E0(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000012;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x5264696C61766E69;
    }

    else
    {
      v4 = 0xD000000000000014;
    }

    if (v3 == 1)
    {
      v5 = 0xEF65736E6F707365;
    }

    else
    {
      v5 = 0x80000000000AD200;
    }
  }

  else
  {
    v5 = 0x80000000000AD1E0;
    v4 = 0xD000000000000012;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x5264696C61766E69;
    }

    else
    {
      v2 = 0xD000000000000014;
    }

    if (a2 == 1)
    {
      v6 = 0xEF65736E6F707365;
    }

    else
    {
      v6 = 0x80000000000AD200;
    }
  }

  else
  {
    v6 = 0x80000000000AD1E0;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5437C();
  }

  return v8 & 1;
}

uint64_t sub_536E4(unsigned __int8 a1, char a2)
{
  v2 = 0x676E697465657267;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x676E697465657267;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x676E696E726177;
      break;
    case 2:
      v5 = 0x6973756C636E6F63;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1702060386;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x6C616974696E69;
      break;
    case 5:
      v5 = 0x6F5474706D6F7270;
      v3 = 0xEE006B636F6C6E55;
      break;
    case 6:
      v5 = 0x766F6D6552646461;
      v3 = 0xED0000776F6C4665;
      break;
    case 7:
      v5 = 0x6F6C466472617567;
      v3 = 0xE900000000000077;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x656E696C66666FLL;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x676E696E726177;
      break;
    case 2:
      v2 = 0x6973756C636E6F63;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1702060386;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x6C616974696E69;
      break;
    case 5:
      v2 = 0x6F5474706D6F7270;
      v6 = 0xEE006B636F6C6E55;
      break;
    case 6:
      v2 = 0x766F6D6552646461;
      v6 = 0xED0000776F6C4665;
      break;
    case 7:
      v2 = 0x6F6C466472617567;
      v6 = 0xE900000000000077;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v2 = 0x656E696C66666FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5437C();
  }

  return v8 & 1;
}

uint64_t sub_5398C(unsigned __int8 a1, char a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1702125924;
    }

    else
    {
      v4 = 0x7961446C6C417369;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x656C746974;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1702125924;
    }

    else
    {
      v2 = 0x7961446C6C417369;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5437C();
  }

  return v8 & 1;
}

uint64_t sub_53A68(unsigned __int8 a1, char a2)
{
  v2 = 0x6665697262;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6665697262;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 6579297;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v6 = 1633972341;
      goto LABEL_6;
    case 3:
      v3 = 0xE600000000000000;
      v6 = 1701602660;
LABEL_6:
      v5 = v6 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x65676E616863;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1684104562;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 2036427888;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE300000000000000;
      v2 = 6579297;
      break;
    case 2:
      v7 = 0xE600000000000000;
      v8 = 1633972341;
      goto LABEL_14;
    case 3:
      v7 = 0xE600000000000000;
      v8 = 1701602660;
LABEL_14:
      v2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      v7 = 0xE600000000000000;
      v2 = 0x65676E616863;
      break;
    case 5:
      v7 = 0xE400000000000000;
      v2 = 1684104562;
      break;
    case 6:
      v7 = 0xE400000000000000;
      v2 = 2036427888;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_5437C();
  }

  return v10 & 1;
}

uint64_t sub_53C1C(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x736972616D6D7573;
  v4 = a1;
  v5 = 0x736972616D6D7573;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      v5 = 0x6978456B63656863;
      v6 = 0xEE0065636E657473;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v7 = 1633972341;
      goto LABEL_6;
    case 3:
      v6 = 0xE600000000000000;
      v7 = 1701602660;
LABEL_6:
      v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v5 = 2036427888;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v5 = 0x746165706572;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6978456B63656863;
      v2 = 0xEE0065636E657473;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v8 = 1633972341;
      goto LABEL_13;
    case 3:
      v2 = 0xE600000000000000;
      v8 = 1701602660;
LABEL_13:
      v3 = v8 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      v2 = 0xE400000000000000;
      v3 = 2036427888;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v3 = 0x746165706572;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_54398();
  }

  return v10 & 1;
}

uint64_t sub_53DDC()
{
  sub_543D0();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v0 = 0xE400000000000000;
      v3 = 1937204590;
      break;
    case 2:
      v3 = sub_543B4();
      break;
    case 3:
      v0 = 0xE700000000000000;
      v3 = 0x63696666617274;
      break;
    case 4:
      v3 = sub_54408();
      break;
    default:
      break;
  }

  v5 = 0xE800000000000000;
  switch(v1)
  {
    case 1:
      v5 = 0xE400000000000000;
      v2 = 1937204590;
      break;
    case 2:
      sub_543EC();
      break;
    case 3:
      v5 = 0xE700000000000000;
      v2 = 0x63696666617274;
      break;
    case 4:
      sub_54420();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_5437C();
  }

  return v7 & 1;
}

uint64_t sub_53F10(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x657461647075;
  }

  else
  {
    v3 = 0x676E696665697262;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x657461647075;
  }

  else
  {
    v5 = 0x676E696665697262;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5437C();
  }

  return v8 & 1;
}

uint64_t sub_53FA0(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5437C();
  }

  return v8 & 1;
}

uint64_t sub_54070(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6574656C706D6F63;
  }

  else
  {
    v3 = 0x6572676F72506E69;
  }

  if (v2)
  {
    v4 = 0xEA00000000007373;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (a2)
  {
    v5 = 0x6574656C706D6F63;
  }

  else
  {
    v5 = 0x6572676F72506E69;
  }

  if (a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xEA00000000007373;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5437C();
  }

  return v8 & 1;
}

uint64_t sub_54124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_5437C();
  }

  return v10 & 1;
}

uint64_t sub_5424C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 88))();
  if (v2 == 6)
  {
    return 0;
  }

  if (sub_1C878(v2) == 0x657461647075 && v4 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_54438();

    return v6 & 1;
  }
}

uint64_t sub_542D8(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 88))();
  if (v2 == 6)
  {
    return 0;
  }

  if (sub_1C878(v2) == 0x6574656C6564 && v4 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_54438();

    return v6 & 1;
  }
}

uint64_t sub_5437C()
{

  return sub_A4E44();
}

uint64_t sub_54398()
{

  return sub_A4E44();
}

uint64_t sub_54438()
{

  return sub_A4E44();
}

void *sub_54458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a3;
  v58 = a4;
  v55 = a1;
  v56 = a2;
  v6 = sub_4BF0(&qword_DFEB0, &qword_A93F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v54 = &v48 - v8;
  v9 = sub_4BF0(&qword_DD468, &qword_A9068);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v48 - v11;
  v13 = sub_A4434();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v51 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v53 = &v48 - v19;
  __chkstk_darwin(v18);
  v49 = &v48 - v20;
  v64 = sub_4BF0(&qword_DDCD8, qword_A9880);
  v21 = sub_7A14(v64);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v68 = (&v48 - v24);
  v25 = 0;
  v26 = *(a5 + 16);
  v65 = a5;
  v66 = v26;
  v50 = v14;
  v61 = "ailed to build RREntity";
  v62 = " ";
  v59 = (v14 + 32);
  v60 = "tEntityProviding.swift";
  v52 = _swiftEmptyArrayStorage;
  while (v66 != v25)
  {
    v27 = *(type metadata accessor for CalendarEvent(0) - 8);
    v28 = v65 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25;
    v29 = *(v64 + 48);
    v30 = v68;
    v67 = v25;
    *v68 = v25;
    sub_106FC(v28, v30 + v29);
    sub_54A28();
    if (v31)
    {
      if (sub_4B4BC())
      {
        v63 = sub_A43F4();
        v32 = v54;
        sub_A924(v54, 1, 1, v63);

        v33 = v53;
        sub_A4414();

        v34 = v67;
        sub_A43E4();
        sub_A924(v32, 0, 1, v63);
        sub_A4424();

        (*v59)(v12, v33, v13);
        v35 = 0;
        goto LABEL_10;
      }
    }

    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v36 = sub_A43D4();
    sub_48A4(v36, qword_E0BA0);
    sub_81094(0xD000000000000033, v62 | 0x8000000000000000, 0xD000000000000036, v61 | 0x8000000000000000, 0xD00000000000002FLL, v60 | 0x8000000000000000);
    v35 = 1;
    v34 = v67;
LABEL_10:
    sub_A924(v12, v35, 1, v13);
    sub_11E34(v68, &qword_DDCD8, qword_A9880);
    if (sub_CF2C(v12, 1, v13) == 1)
    {
      sub_11E34(v12, &qword_DD468, &qword_A9068);
      v25 = v34 + 1;
    }

    else
    {
      v37 = *v59;
      v38 = v49;
      (*v59)(v49, v12, v13);
      v37(v51, v38, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = v52[2];
        sub_54D2C();
        v52 = v45;
      }

      v39 = v52[2];
      if (v39 >= v52[3] >> 1)
      {
        sub_54D2C();
        v52 = v46;
      }

      v25 = v34 + 1;
      v52[2] = v39 + 1;
      v40 = *(v50 + 80);
      sub_55D58();
      (v37)(v42 + v41 + *(v43 + 72) * v39);
    }
  }

  return v52;
}

uint64_t sub_54A28()
{
  sub_4BF0(&qword_DDC88, &qword_A9850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_A9830;
  v1 = *(type metadata accessor for CalendarEvent(0) + 24);
  *(inited + 32) = sub_A2D84();
  *(inited + 40) = v2;
  v3 = 0;
  *(inited + 48) = sub_A2D94();
  *(inited + 56) = v4;
  v5 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = (inited + 40 + 16 * v3);
  while (++v3 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = v5[2];
        sub_54FDC();
        v5 = v13;
      }

      v10 = v5[2];
      if (v10 >= v5[3] >> 1)
      {
        sub_54FDC();
        v5 = v14;
      }

      v5[2] = v10 + 1;
      v11 = &v5[2 * v10];
      v11[4] = v9;
      v11[5] = v8;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_54CCC();
  sub_4BF0(&qword_DC1A8, &qword_A8E50);
  sub_35AE8();
  v15 = sub_A4574();

  return v15;
}

uint64_t sub_54BC4()
{
  v1 = sub_A3ED4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_A3EC4();
  v5 = *v0;
  v6 = v0[1];
  sub_A3EB4();
  v7 = v0 + *(type metadata accessor for CalendarEvent(0) + 20);
  if (sub_600EC())
  {
    sub_55D4C();
    v8 = sub_A3F04();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_A3EF4();

    sub_A3EE4();

    sub_A3EA4();
  }

  return v4;
}

uint64_t sub_54CA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_54BC4();
  *a1 = result;
  return result;
}

uint64_t sub_54CCC()
{
  v1 = *(v0 + 16);
  sub_4BF0(&qword_DDC90, &qword_A9858);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

void sub_54D2C()
{
  sub_55D24();
  if (v4)
  {
    sub_55D14();
    if (v6 != v7)
    {
      sub_55D74();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_55CF4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_55DB4(v2, v5, &qword_DD470, &qword_A9070);
  sub_55D4C();
  v9 = sub_A4434();
  sub_11F80(v9);
  v11 = *(v10 + 80);
  sub_55D58();
  if (v1)
  {
    v13 = sub_55CB0(v12);
    sub_55AC8(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_55CC0();
  }
}

void sub_54E08()
{
  sub_55D24();
  if (v4)
  {
    sub_55D14();
    if (v6 != v7)
    {
      sub_55D74();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_55CF4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_55DB4(v2, v5, &qword_DDCD0, qword_AAE80);
  v9 = sub_55D4C();
  v10 = type metadata accessor for CalendarEvent(v9);
  sub_11F80(v10);
  v12 = *(v11 + 80);
  sub_55D58();
  if (v1)
  {
    v14 = sub_55CB0(v13);
    sub_55AC8(v14, v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_55CC0();
  }
}

void sub_54EE4()
{
  sub_55D40();
  if (v5)
  {
    sub_55CA0();
    if (v7 != v8)
    {
      sub_55D34();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_55C90();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_55D04(v6);
  if (v3)
  {
    sub_4BF0(&qword_DDC98, &qword_A9860);
    v9 = sub_55D94();
    j__malloc_size(v9);
    sub_55D64();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[6 * v2 + 4] <= v9 + 4)
    {
      v12 = sub_2E7C4();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_4BF0(&qword_DB5E0, &qword_A6818);
    sub_2E7C4();
    swift_arrayInitWithCopy();
  }
}

void sub_54FDC()
{
  sub_55D40();
  if (v5)
  {
    sub_55CA0();
    if (v7 != v8)
    {
      sub_55D34();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_55C90();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_55D04(v6);
  if (v3)
  {
    sub_4BF0(&qword_DBB88, &unk_A6EB0);
    v9 = sub_55DCC();
    j__malloc_size(v9);
    sub_55CE0();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_550B0()
{
  sub_55D40();
  if (v3)
  {
    sub_55CA0();
    if (v5 != v6)
    {
      sub_55D34();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_55C90();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = v0[2];
  if (v4 <= v7)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_4BF0(&qword_DBF90, &qword_A7530);
    v9 = swift_allocObject();
    j__malloc_size(v9);
    sub_55D64();
    v9[2] = v7;
    v9[3] = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[3 * v7 + 4] <= v9 + 4)
    {
      v12 = sub_2E7C4();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_4BF0(&qword_DBF98, &qword_A7538);
    sub_2E7C4();
    swift_arrayInitWithCopy();
  }
}