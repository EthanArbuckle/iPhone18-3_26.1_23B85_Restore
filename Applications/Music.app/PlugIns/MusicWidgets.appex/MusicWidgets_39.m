uint64_t sub_100401D80()
{
  v1 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_100571FD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);

  v6 = v2 + v1[7];
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    v5(v6, v3);
  }

  sub_100009DCC(&qword_1006F29E8);

  v7 = v1[8];
  sub_100009DCC(&unk_1006F2270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10056EBD8();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[9];
  sub_100009DCC(&unk_1006EEDC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10056E9B8();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100402110()
{
  result = qword_1006F2CE8;
  if (!qword_1006F2CE8)
  {
    sub_100010324(&qword_1006F2C28);
    sub_100010BC0(&qword_1006F2CF0, &qword_1006F2CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2CE8);
  }

  return result;
}

uint64_t sub_1004021C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100402228(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_100402240(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100402240(uint64_t a1, uint64_t a2, char a3)
{
  sub_10002AAC4(a1, a2, a3 & 1);
}

uint64_t sub_10040227C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1003BD904(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_100402294()
{
  result = qword_1006F2D10;
  if (!qword_1006F2D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2D10);
  }

  return result;
}

unint64_t sub_100402320()
{
  result = qword_1006F2D18;
  if (!qword_1006F2D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2D18);
  }

  return result;
}

unint64_t sub_100402374()
{
  result = qword_1006F2D20;
  if (!qword_1006F2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2D20);
  }

  return result;
}

uint64_t sub_1004023C8()
{
  v1 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  sub_100009DCC(&qword_1006F2D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056E698();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_100053068(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

unint64_t sub_100402570()
{
  result = qword_1006F2D50;
  if (!qword_1006F2D50)
  {
    sub_100010324(&qword_1006F2D48);
    sub_1004025FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2D50);
  }

  return result;
}

unint64_t sub_1004025FC()
{
  result = qword_1006F2D58;
  if (!qword_1006F2D58)
  {
    sub_100010324(&qword_1006F2D60);
    sub_100402688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2D58);
  }

  return result;
}

unint64_t sub_100402688()
{
  result = qword_1006F2D68;
  if (!qword_1006F2D68)
  {
    sub_100010324(&qword_1006F2D70);
    sub_100010BC0(&qword_1006F2D78, &qword_1006F2D80);
    sub_100010BC0(&qword_1006F2D88, &qword_1006F2D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2D68);
  }

  return result;
}

unint64_t sub_10040277C()
{
  result = qword_1006F2DC8;
  if (!qword_1006F2DC8)
  {
    sub_100010324(&qword_1006F2DC0);
    sub_100010BC0(&unk_1006F2DD0, &qword_1006F1268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2DC8);
  }

  return result;
}

uint64_t sub_100402834()
{
  v1 = sub_100571FD8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100402900(uint64_t a1)
{
  v4 = *(sub_100571FD8() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000116F0;

  return sub_1003E7638(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100402A0C(uint64_t a1)
{
  v4 = *(sub_100571FD8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_1003E7D4C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100402B04()
{
  v1 = sub_100571FD8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100402BD0(uint64_t a1)
{
  v4 = *(sub_100571FD8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_1003E6E00(a1, v6, v7, v8, v1 + v5);
}

double sub_100402E58(uint64_t a1)
{
  v2 = sub_10056F708();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&unk_1006F2320);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = sub_100009DCC(&qword_1006EF138);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - v15;
  (*(v3 + 104))(&v22 - v15, enum case for UserInterfaceSizeClass.compact(_:), v2, v14);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v7 + 56);
  sub_10000CC8C(a1, v9, &qword_1006EF138);
  sub_10000CC8C(v16, &v9[v17], &qword_1006EF138);
  v18 = *(v3 + 48);
  if (v18(v9, 1, v2) == 1)
  {
    sub_10001036C(v16, &qword_1006EF138);
    if (v18(&v9[v17], 1, v2) == 1)
    {
      sub_10001036C(v9, &qword_1006EF138);
      return -9.0;
    }

    goto LABEL_6;
  }

  sub_10000CC8C(v9, v12, &qword_1006EF138);
  if (v18(&v9[v17], 1, v2) == 1)
  {
    sub_10001036C(v16, &qword_1006EF138);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_10001036C(v9, &unk_1006F2320);
    return -12.0;
  }

  (*(v3 + 32))(v5, &v9[v17], v2);
  sub_1003FFF94(&qword_1006F2330, &type metadata accessor for UserInterfaceSizeClass);
  v20 = sub_1005727E8();
  v21 = *(v3 + 8);
  v21(v5, v2);
  sub_10001036C(v16, &qword_1006EF138);
  v21(v12, v2);
  sub_10001036C(v9, &qword_1006EF138);
  result = -9.0;
  if ((v20 & 1) == 0)
  {
    return -12.0;
  }

  return result;
}

uint64_t sub_10040329C()
{
  v1 = (type metadata accessor for PlaylistCurators.View(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;

  v4 = v1[7];
  sub_100009DCC(&qword_1006F2300);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10056F708();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100403418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PlaylistCurators.View(0);
  v7 = *(v3 + 16);

  return sub_1003FB59C(a1, a2, v7, a3);
}

uint64_t sub_1004034A4()
{

  return swift_deallocObject();
}

uint64_t sub_1004034DC(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_100009DCC(&qword_1006F2F58);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_100403544()
{
  result = qword_1006F2EE8;
  if (!qword_1006F2EE8)
  {
    sub_100010324(&qword_1006F2ED8);
    sub_1004035FC();
    sub_100010BC0(&qword_1006F2F48, &qword_1006F2F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2EE8);
  }

  return result;
}

unint64_t sub_1004035FC()
{
  result = qword_1006F2EF0;
  if (!qword_1006F2EF0)
  {
    sub_100010324(&qword_1006F2EF8);
    sub_100403688();
    sub_1003A6A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2EF0);
  }

  return result;
}

unint64_t sub_100403688()
{
  result = qword_1006F2F00;
  if (!qword_1006F2F00)
  {
    sub_100010324(&qword_1006F2F08);
    sub_100403714();
    sub_1003A69FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2F00);
  }

  return result;
}

unint64_t sub_100403714()
{
  result = qword_1006F2F10;
  if (!qword_1006F2F10)
  {
    sub_100010324(&qword_1006F2F18);
    sub_1004037A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2F10);
  }

  return result;
}

unint64_t sub_1004037A0()
{
  result = qword_1006F2F20;
  if (!qword_1006F2F20)
  {
    sub_100010324(&qword_1006F2F28);
    sub_100010324(&qword_1006F18C8);
    sub_1003CC8F4();
    swift_getOpaqueTypeConformance2();
    sub_1003FFF94(&unk_1006F2F30, type metadata accessor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2F20);
  }

  return result;
}

double sub_100403898(uint64_t a1)
{
  v2 = sub_10056F708();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&unk_1006F2320);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = sub_100009DCC(&qword_1006EF138);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - v15;
  (*(v3 + 104))(&v22 - v15, enum case for UserInterfaceSizeClass.compact(_:), v2, v14);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v7 + 56);
  sub_10000CC8C(a1, v9, &qword_1006EF138);
  sub_10000CC8C(v16, &v9[v17], &qword_1006EF138);
  v18 = *(v3 + 48);
  if (v18(v9, 1, v2) == 1)
  {
    sub_10001036C(v16, &qword_1006EF138);
    if (v18(&v9[v17], 1, v2) == 1)
    {
      sub_10001036C(v9, &qword_1006EF138);
      return 25.0;
    }

    goto LABEL_6;
  }

  sub_10000CC8C(v9, v12, &qword_1006EF138);
  if (v18(&v9[v17], 1, v2) == 1)
  {
    sub_10001036C(v16, &qword_1006EF138);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_10001036C(v9, &unk_1006F2320);
    return 29.0;
  }

  (*(v3 + 32))(v5, &v9[v17], v2);
  sub_1003FFF94(&qword_1006F2330, &type metadata accessor for UserInterfaceSizeClass);
  v20 = sub_1005727E8();
  v21 = *(v3 + 8);
  v21(v5, v2);
  sub_10001036C(v16, &qword_1006EF138);
  v21(v12, v2);
  sub_10001036C(v9, &qword_1006EF138);
  result = 25.0;
  if ((v20 & 1) == 0)
  {
    return 29.0;
  }

  return result;
}

uint64_t sub_100403C78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100403C98@<X0>(void *a1@<X8>)
{
  result = sub_10056F048();
  *a1 = v3;
  return result;
}

uint64_t sub_100403CFC()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_100009DCC(&unk_1006EEDB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056E918();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_100009DCC(&unk_1006F2270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10056EBD8();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  sub_100009DCC(&unk_1006EEDC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10056E9B8();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100403F90()
{
  result = qword_1006F3018;
  if (!qword_1006F3018)
  {
    sub_100010324(&qword_1006F3008);
    sub_100010BC0(&qword_1006F3020, &qword_1006F3028);
    sub_100010BC0(&qword_1006F3030, &qword_1006F3038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3018);
  }

  return result;
}

uint64_t sub_100404074(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004040F0()
{
  result = qword_1006F3048;
  if (!qword_1006F3048)
  {
    sub_100010324(&qword_1006F3050);
    sub_1004041A8();
    sub_100010BC0(&qword_1006F3068, &qword_1006F3070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3048);
  }

  return result;
}

unint64_t sub_1004041A8()
{
  result = qword_1006F3058;
  if (!qword_1006F3058)
  {
    sub_100010324(&qword_1006F3060);
    sub_1004019D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3058);
  }

  return result;
}

unint64_t sub_100404234()
{
  result = qword_1006F3078;
  if (!qword_1006F3078)
  {
    sub_100010324(&qword_1006F3000);
    sub_100010BC0(&qword_1006F3080, &qword_1006F3088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3078);
  }

  return result;
}

unint64_t sub_1004042E4()
{
  result = qword_1006F3090;
  if (!qword_1006F3090)
  {
    sub_100010324(&qword_1006F2FF0);
    sub_100010324(&qword_1006F3008);
    sub_100010324(&qword_1006F3010);
    sub_100403F90();
    sub_100404074(&qword_1006F3040, &qword_1006F3010, &unk_10059EAB8, sub_1004040F0);
    swift_getOpaqueTypeConformance2();
    sub_100404234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3090);
  }

  return result;
}

unint64_t sub_100404444()
{
  result = qword_1006F30E0;
  if (!qword_1006F30E0)
  {
    sub_100010324(&qword_1006F30D8);
    sub_1003FFF94(&qword_1006F30D0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F30E0);
  }

  return result;
}

unint64_t sub_10040452C()
{
  result = qword_1006F3120;
  if (!qword_1006F3120)
  {
    sub_100010324(&qword_1006F3118);
    sub_1004045E4();
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3120);
  }

  return result;
}

unint64_t sub_1004045E4()
{
  result = qword_1006F3128;
  if (!qword_1006F3128)
  {
    sub_100010324(&qword_1006F3130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3128);
  }

  return result;
}

uint64_t sub_100404698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_1003E5F44(a1, v4, v5, v6);
}

uint64_t sub_100404754@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_1003F23BC(a1);
}

uint64_t sub_1004047C8()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  sub_100009DCC(&unk_1006EEDB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10056E918();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  sub_100009DCC(&unk_1006F2270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10056EBD8();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  sub_100009DCC(&unk_1006EEDC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10056E9B8();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100404A30(char *a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1003F2444(a1, v4, v5, v6);
}

uint64_t sub_100404AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CB98;

  return sub_1003E5B48(a1, v4, v5, v6, v7);
}

uint64_t sub_100404B70@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_1003F070C(a1);
}

uint64_t sub_100404BE0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1003BF95C(a1, a2, v2 + v6, v7);
}

uint64_t sub_100404CAC(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003F05A0(a1, v4);
}

unint64_t sub_100404D2C()
{
  result = qword_1006F3230;
  if (!qword_1006F3230)
  {
    sub_100010324(&qword_1006F3200);
    sub_100404DE4();
    sub_100010BC0(&qword_1006F3248, &qword_1006F3220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3230);
  }

  return result;
}

unint64_t sub_100404DE4()
{
  result = qword_1006F3238;
  if (!qword_1006F3238)
  {
    sub_100010324(&qword_1006F3240);
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3238);
  }

  return result;
}

uint64_t sub_100404E9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_1003E64A4(a1, v4, v5, v6);
}

uint64_t sub_100404FA4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return sub_1003EF830(a1);
}

unint64_t sub_100405014()
{
  result = qword_1006F3288;
  if (!qword_1006F3288)
  {
    sub_100010324(&qword_1006F3270);
    sub_1003FFF94(&qword_1006F3290, _s10ManagementO4ViewV5ShareO6ButtonVMa);
    sub_100010BC0(&qword_1006F3298, &qword_1006F32A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3288);
  }

  return result;
}

unint64_t sub_100405128()
{
  result = qword_1006F32E0;
  if (!qword_1006F32E0)
  {
    sub_100010324(&qword_1006F32B8);
    sub_1004051B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F32E0);
  }

  return result;
}

unint64_t sub_1004051B4()
{
  result = qword_1006F32E8;
  if (!qword_1006F32E8)
  {
    sub_100010324(&qword_1006F32D8);
    sub_10040526C();
    sub_100010BC0(&qword_1006F3030, &qword_1006F3038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F32E8);
  }

  return result;
}

unint64_t sub_10040526C()
{
  result = qword_1006F32F0;
  if (!qword_1006F32F0)
  {
    sub_100010324(&qword_1006F32D0);
    sub_100010BC0(&qword_1006F32F8, &qword_1006F3300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F32F0);
  }

  return result;
}

uint64_t sub_1004053EC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_100405468()
{
  result = qword_1006F3370;
  if (!qword_1006F3370)
  {
    sub_100010324(&qword_1006F3318);
    sub_100010BC0(&qword_1006F2BE8, &unk_1006F2BF0);
    sub_100010BC0(&unk_1006F2DD0, &qword_1006F1268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3370);
  }

  return result;
}

unint64_t sub_10040554C()
{
  result = qword_1006F33A0;
  if (!qword_1006F33A0)
  {
    sub_100010324(&qword_1006F3320);
    sub_100405604();
    sub_100010BC0(&qword_1006F33D8, &qword_1006F3398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F33A0);
  }

  return result;
}

unint64_t sub_100405604()
{
  result = qword_1006F33A8;
  if (!qword_1006F33A8)
  {
    sub_100010324(&qword_1006F3390);
    sub_1004056BC();
    sub_100010BC0(&qword_1006F33C8, &qword_1006F33D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F33A8);
  }

  return result;
}

unint64_t sub_1004056BC()
{
  result = qword_1006F33B0;
  if (!qword_1006F33B0)
  {
    sub_100010324(&qword_1006F3388);
    sub_100405748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F33B0);
  }

  return result;
}

unint64_t sub_100405748()
{
  result = qword_1006F33B8;
  if (!qword_1006F33B8)
  {
    sub_100010324(&qword_1006F3380);
    sub_1004057D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F33B8);
  }

  return result;
}

unint64_t sub_1004057D4()
{
  result = qword_1006F33C0;
  if (!qword_1006F33C0)
  {
    sub_100010324(&qword_1006F3378);
    sub_100010324(&qword_1006F3318);
    sub_100405468();
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F33C0);
  }

  return result;
}

uint64_t sub_100405968()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1004059B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1004059F4()
{
  v1 = sub_1005722D8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100405ACC(uint64_t a1)
{
  v4 = *(sub_1005722D8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_1003E081C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100405BEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000C8CC(a1, a1[3]);
  result = sub_100571928();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100405C34()
{
  result = qword_1006F3430;
  if (!qword_1006F3430)
  {
    sub_1000D3B98(255, &qword_1006F3420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3430);
  }

  return result;
}

unint64_t sub_100405CEC()
{
  result = qword_1006F3488;
  if (!qword_1006F3488)
  {
    sub_100010324(&qword_1006F3490);
    sub_100010324(&qword_1006F2B88);
    sub_100010324(&qword_1006F2B80);
    sub_100010324(&qword_1006F2B78);
    sub_100010324(&qword_1006F2BA0);
    sub_100401AA8();
    sub_100404074(&unk_1006F2BD0, &qword_1006F2BA0, &unk_10059E458, sub_100401B8C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1003FFF94(&qword_1006F3498, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3488);
  }

  return result;
}

unint64_t sub_100405EC8()
{
  result = qword_1006F34A0;
  if (!qword_1006F34A0)
  {
    sub_100010324(&qword_1006F2D98);
    sub_100405F80();
    sub_100010BC0(&qword_1006F34C0, &qword_1006F2DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F34A0);
  }

  return result;
}

unint64_t sub_100405F80()
{
  result = qword_1006F34A8;
  if (!qword_1006F34A8)
  {
    sub_100010324(&qword_1006F2D38);
    sub_100406038();
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F34A8);
  }

  return result;
}

unint64_t sub_100406038()
{
  result = qword_1006F34B0;
  if (!qword_1006F34B0)
  {
    sub_100010324(&qword_1006F2D30);
    sub_100010BC0(&qword_1006F34B8, &qword_1006F2D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F34B0);
  }

  return result;
}

unint64_t sub_100406110()
{
  result = qword_1006F34C8;
  if (!qword_1006F34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F34C8);
  }

  return result;
}

uint64_t sub_100406164()
{

  return swift_deallocObject();
}

unint64_t sub_1004061B4()
{
  result = qword_1006F34E8;
  if (!qword_1006F34E8)
  {
    sub_100010324(&qword_1006F34E0);
    sub_10040626C();
    sub_100010BC0(&unk_1006F3520, &qword_1006F3EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F34E8);
  }

  return result;
}

unint64_t sub_10040626C()
{
  result = qword_1006F34F0;
  if (!qword_1006F34F0)
  {
    sub_100010324(&qword_1006F34F8);
    sub_100406324();
    sub_100010BC0(&qword_1006F33C8, &qword_1006F33D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F34F0);
  }

  return result;
}

unint64_t sub_100406324()
{
  result = qword_1006F3500;
  if (!qword_1006F3500)
  {
    sub_100010324(&qword_1006F3508);
    sub_1004063B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3500);
  }

  return result;
}

unint64_t sub_1004063B0()
{
  result = qword_1006F3510;
  if (!qword_1006F3510)
  {
    sub_100010324(&qword_1006F3518);
    sub_10040277C();
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3510);
  }

  return result;
}

unint64_t sub_100406500()
{
  result = qword_1006F3548;
  if (!qword_1006F3548)
  {
    sub_100010324(&qword_1006F3538);
    sub_100010324(&qword_1006F34D0);
    sub_10056F638();
    sub_100010BC0(&qword_1006F3530, &qword_1006F34D0);
    sub_1003FFF94(&qword_1006F3110, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&unk_1006F3550, &qword_1006F3540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3548);
  }

  return result;
}

unint64_t sub_100406710(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100009DCC(&qword_1006F3AC8);
    v2 = sub_1005741C8();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1000F40D4(*(a1 + 48) + 40 * v12, v33);
        sub_100081F38(*(a1 + 56) + 32 * v12, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_1000F40D4(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_10001036C(v30, &qword_1006F3968);

          goto LABEL_23;
        }

        v14 = v23[0];
        v13 = v23[1];
        sub_100081F38(v31 + 8, v23);
        sub_10001036C(v30, &qword_1006F3968);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        result = sub_100429D94(v14, v13);
        if (v15)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v14;
          v9[1] = v13;
          v10 = result;

          result = sub_100415860(&v24, v2[7] + 40 * v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v16 = (v2[6] + 16 * result);
          *v16 = v14;
          v16[1] = v13;
          v17 = v2[7] + 40 * result;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_27;
          }

          v2[2] = v22;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_10001036C(&v24, &qword_1006F3AD0);
LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_100406A3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100009DCC(&qword_1006F3960);
    v2 = sub_1005741C8();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1000F40D4(*(a1 + 48) + 40 * v12, v27);
        sub_100081F38(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1000F40D4(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100081F38(v25 + 8, v20);
        sub_10001036C(v24, &qword_1006F3968);
        v21 = v18;
        sub_1000F51DC(v20, v22);
        v13 = v21;
        sub_1000F51DC(v22, v23);
        sub_1000F51DC(v23, &v21);
        result = sub_100429D94(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100010474(v10);
          result = sub_1000F51DC(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1000F51DC(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_10001036C(v24, &qword_1006F3968);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t Collaboration.Flow.Collaborator.init(name:handle:artwork:canCollaborate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v14 + 24);
  v16 = sub_100571E58();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = *(v14 + 28);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  result = sub_100406DFC(a5, &a7[v15]);
  a7[v17] = a6;
  return result;
}

uint64_t sub_100406DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&unk_1006F3B10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Collaboration.Flow.Collaborator.artwork.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Collaboration.Flow.Collaborator(0) + 24);

  return sub_100406DFC(a1, v3);
}

uint64_t Collaboration.Flow.Collaborator.canCollaborate.setter(char a1)
{
  result = type metadata accessor for Collaboration.Flow.Collaborator(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Collaboration.Flow.title.getter()
{
  v1 = v0;
  v33[0] = sub_100571FD8();
  v2 = *(v33[0] - 8);
  __chkstk_darwin(v33[0]);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10056CC38();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100572888();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  v13 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100413998(v1, v15, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v2;
      v18 = *(v2 + 32);
      v19 = v33[0];
      v18(v4, v15, v33[0]);
      sub_100572818();
      (*(v7 + 16))(v9, v12, v6);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v20 = qword_1006FDF00;
      sub_10056CBC8();
      sub_100572948();
      (*(v7 + 8))(v12, v6);
      sub_100009DCC(&qword_1006F3598);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_10057B510;
      v22 = sub_100571F78();
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_1004123C4();
      if (v24)
      {
        v25 = v22;
      }

      else
      {
        v25 = 0;
      }

      v26 = 0xE000000000000000;
      if (v24)
      {
        v26 = v24;
      }

      *(v21 + 32) = v25;
      *(v21 + 40) = v26;
      v27 = sub_1005728A8();

      (*(v17 + 8))(v4, v19);
    }

    else
    {
      sub_100572818();
      (*(v7 + 16))(v9, v12, v6);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v29 = qword_1006FDF00;
      sub_10056CBC8();
      v27 = sub_100572948();
      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    v28 = *(sub_100009DCC(&qword_1006F35A8) + 48);
    sub_100572818();
    (*(v7 + 16))(v9, v12, v6);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v30 = qword_1006FDF00;
    sub_10056CBC8();
    v27 = sub_100572948();
    (*(v7 + 8))(v12, v6);
    v31 = sub_10056C8A8();
    (*(*(v31 - 8) + 8))(&v15[v28], v31);
    sub_10001036C(v15, &qword_1006F35B0);
  }

  return v27;
}

Swift::String __swiftcall Collaboration.Flow.subtitle(hasProfileEdit:)(Swift::Bool hasProfileEdit)
{
  v84 = hasProfileEdit;
  v2 = sub_100572868();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v83 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (&v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = (&v79 - v7);
  v9 = sub_100009DCC(&qword_1006F35B8);
  __chkstk_darwin(v9 - 8);
  v11 = &v79 - v10;
  v12 = sub_100009DCC(&qword_1006F35B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v79 - v13;
  v15 = sub_10056CC38();
  __chkstk_darwin(v15 - 8);
  v86 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100572888();
  v85 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v79 - v19;
  v21 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v21);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100413998(v1, v23, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100572818();
      v25 = v85;
      v26 = v88;
      (*(v85 + 16))(v87, v20, v88);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v27 = qword_1006FDF00;
      sub_10056CBC8();
      v28 = sub_100572948();
      v30 = v29;
      (*(v25 + 8))(v20, v26);
      sub_100412418(v23, type metadata accessor for Collaboration.Flow);
    }

    else
    {
      v39 = v85;
      v40 = (v85 + 16);
      v41 = v20;
      v42 = v87;
      v43 = v88;
      sub_100572818();
      (*v40)(v42, v41, v43);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v46 = qword_1006FDF00;
      sub_10056CBC8();
      v28 = sub_100572948();
      v30 = v47;
      (*(v39 + 8))(v41, v43);
    }

    goto LABEL_33;
  }

  v31 = sub_100009DCC(&qword_1006F35A8);
  v32 = *(v31 + 48);
  v33 = *(v31 + 64);
  v34 = v23;
  v35 = v23[v33];
  v81 = v32;
  v82 = v34;
  sub_100019B40(v34, v14, &qword_1006F35B0);
  v80 = v14;
  sub_10000CC8C(v14, v11, &qword_1006F35B0);
  if ((*(v83 + 48))(v11, 1, v3) == 1)
  {
    v36 = v85;
    v37 = (v85 + 16);
    v38 = v20;
    sub_100572818();
    v48 = v88;
    (*v37)(v87, v38, v88);
    v49 = v80;
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v50 = qword_1006FDF00;
    sub_10056CBC8();
    v28 = sub_100572948();
    v30 = v51;
    (*(v36 + 8))(v38, v48);
    sub_10001036C(v49, &qword_1006F35B0);
    v52 = sub_10056C8A8();
    (*(*(v52 - 8) + 8))(v82 + v81, v52);
    goto LABEL_33;
  }

  v44 = v20;
  if (v35)
  {
    v45 = v8;
    sub_100412498(v11, v8, type metadata accessor for Collaboration.Flow.Collaborator);
    if (v84)
    {
      goto LABEL_19;
    }

    countAndFlagsBits = v8[1]._countAndFlagsBits;
    object = v8[1]._object;
    v61 = v82;
    if (object)
    {
      sub_100572858();
      v89._countAndFlagsBits = 0x100000000000002ELL;
      v89._object = 0x80000001005B9860;
      sub_100572848(v89);
      sub_100572838(*v8);
      v90._countAndFlagsBits = 4204576;
      v90._object = 0xE300000000000000;
      sub_100572848(v90);
      v91._countAndFlagsBits = countAndFlagsBits;
      v91._object = object;
      sub_100572838(v91);
      v92._countAndFlagsBits = 0xD000000000000031;
      v92._object = 0x80000001005B9890;
      sub_100572848(v92);
LABEL_26:
      sub_100572878();
      v64 = v85;
      v65 = v88;
      (*(v85 + 16))(v87, v44, v88);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v66 = qword_1006FDF00;
      sub_10056CBC8();
      v28 = sub_100572948();
      v30 = v67;
      (*(v64 + 8))(v44, v65);
LABEL_32:
      sub_10001036C(v80, &qword_1006F35B0);
      sub_100412418(v45, type metadata accessor for Collaboration.Flow.Collaborator);
      v75 = sub_10056C8A8();
      (*(*(v75 - 8) + 8))(v61 + v81, v75);
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v45 = v5;
  sub_100412498(v11, v5, type metadata accessor for Collaboration.Flow.Collaborator);
  if (!v84)
  {
    v62 = v5[1]._countAndFlagsBits;
    v63 = v5[1]._object;
    v61 = v82;
    if (v63)
    {
      sub_100572858();
      v93._countAndFlagsBits = 0x100000000000002ALL;
      v93._object = 0x80000001005B9770;
      sub_100572848(v93);
      sub_100572838(*v5);
      v94._countAndFlagsBits = 4204576;
      v94._object = 0xE300000000000000;
      sub_100572848(v94);
      v95._countAndFlagsBits = v62;
      v95._object = v63;
      sub_100572838(v95);
      v96._countAndFlagsBits = 0xD000000000000048;
      v96._object = 0x80000001005B97A0;
      sub_100572848(v96);
      goto LABEL_26;
    }

LABEL_29:
    sub_100572818();
    v68 = v85;
    v69 = v88;
    (*(v85 + 16))(v87, v44, v88);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v70 = qword_1006FDF00;
    sub_10056CBC8();
    sub_100572948();
    (*(v68 + 8))(v44, v69);
    sub_100009DCC(&qword_1006F3598);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_10057B510;
    v72 = v45->_countAndFlagsBits;
    v73 = v45->_object;
    *(v71 + 56) = &type metadata for String;
    *(v71 + 64) = sub_1004123C4();
    *(v71 + 32) = v72;
    *(v71 + 40) = v73;

    v28 = sub_1005728A8();
    v30 = v74;

    goto LABEL_32;
  }

LABEL_19:
  sub_100572818();
  v53 = v85;
  v54 = v88;
  (*(v85 + 16))(v87, v44, v88);
  v55 = v82;
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v56 = qword_1006FDF00;
  sub_10056CBC8();
  v28 = sub_100572948();
  v30 = v57;
  (*(v53 + 8))(v44, v54);
  sub_10001036C(v80, &qword_1006F35B0);
  sub_100412418(v45, type metadata accessor for Collaboration.Flow.Collaborator);
  v58 = sub_10056C8A8();
  (*(*(v58 - 8) + 8))(v55 + v81, v58);
LABEL_33:
  v76 = v28;
  v77 = v30;
  result._object = v77;
  result._countAndFlagsBits = v76;
  return result;
}

uint64_t Collaboration.Flow.buttonActionTitle.getter()
{
  v1 = v0;
  v2 = sub_10056CC38();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100572888();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  v10 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v10);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100413998(v1, v12, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100412418(v12, type metadata accessor for Collaboration.Flow);
      return 0;
    }

    else
    {
      sub_100572818();
      (*(v4 + 16))(v6, v9, v3);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v16 = qword_1006FDF00;
      sub_10056CBC8();
      v14 = sub_100572948();
      (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    v15 = *(sub_100009DCC(&qword_1006F35A8) + 48);
    sub_100572818();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v17 = qword_1006FDF00;
    sub_10056CBC8();
    v14 = sub_100572948();
    (*(v4 + 8))(v9, v3);
    v18 = sub_10056C8A8();
    (*(*(v18 - 8) + 8))(&v12[v15], v18);
    sub_10001036C(v12, &qword_1006F35B0);
  }

  return v14;
}

uint64_t Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B805SwiftD05StateVySbGvpfi_0();
  sub_100570668();
  *a9 = v25;
  *(a9 + 8) = v26;
  sub_100570668();
  *(a9 + 16) = v25;
  *(a9 + 24) = v26;
  v17 = type metadata accessor for Collaboration.Flow.View(0);
  v18 = (a9 + v17[10]);
  v19 = a9 + v17[12];
  *v19 = sub_10040F4B8;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  sub_100412498(a1, a9 + v17[6], type metadata accessor for Collaboration.Flow);
  v20 = v17[7];
  v21 = sub_1005722D8();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v17[8]) = a3;
  *(a9 + v17[9]) = a4;
  *v18 = a5;
  v18[1] = a6;
  v23 = (a9 + v17[11]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t Collaboration.Flow.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10056F368();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100009DCC(&qword_1006F35C0);
  return sub_100408828(v1, a1 + *(v3 + 44));
}

uint64_t sub_100408828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v487 = a1;
  v461 = a2;
  v460 = sub_100009DCC(&qword_1006F3980);
  __chkstk_darwin(v460);
  v424 = &v396 - v2;
  v3 = sub_100009DCC(&qword_1006F2C40);
  __chkstk_darwin(v3 - 8);
  v399 = &v396 - v4;
  v400 = sub_100571DC8();
  v417 = *(v400 - 8);
  __chkstk_darwin(v400);
  v416 = &v396 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&unk_1006F3B10);
  __chkstk_darwin(v6 - 8);
  v410 = &v396 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v409 = &v396 - v9;
  v10 = sub_10056DC68();
  v418 = *(v10 - 8);
  v419 = v10;
  __chkstk_darwin(v10);
  v432 = &v396 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v398 = &v396 - v13;
  __chkstk_darwin(v14);
  v415 = &v396 - v15;
  __chkstk_darwin(v16);
  v434 = &v396 - v17;
  v435 = sub_10056DBD8();
  v433 = *(v435 - 8);
  __chkstk_darwin(v435);
  v446 = &v396 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100009DCC(&qword_1006F3E50);
  __chkstk_darwin(v19 - 8);
  v408 = &v396 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v407 = &v396 - v22;
  __chkstk_darwin(v23);
  v445 = (&v396 - v24);
  v412 = sub_100009DCC(&qword_1006F3988);
  __chkstk_darwin(v412);
  v414 = &v396 - v25;
  v413 = sub_100009DCC(&qword_1006F3E70);
  __chkstk_darwin(v413);
  v423 = &v396 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v411 = &v396 - v28;
  __chkstk_darwin(v29);
  v455 = &v396 - v30;
  v468 = sub_100571FD8();
  v454 = *(v468 - 8);
  __chkstk_darwin(v468);
  v436 = v31;
  v437 = &v396 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v467 = &v396 - v33;
  v34 = sub_10056C8A8();
  v430 = *(v34 - 8);
  v431 = v34;
  __chkstk_darwin(v34);
  v405 = v35;
  v406 = &v396 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v429 = &v396 - v37;
  v457 = sub_100009DCC(&qword_1006F3990);
  __chkstk_darwin(v457);
  v459 = &v396 - v38;
  v439 = sub_100009DCC(&qword_1006F3998);
  __chkstk_darwin(v439);
  v441 = (&v396 - v39);
  v458 = sub_100009DCC(&qword_1006F39A0);
  __chkstk_darwin(v458);
  v442 = &v396 - v40;
  v440 = sub_100009DCC(&qword_1006F39A8);
  __chkstk_darwin(v440);
  v422 = &v396 - v41;
  v42 = type metadata accessor for Collaboration.Flow.View(0);
  v453 = *(v42 - 8);
  v43 = *(v453 + 64);
  __chkstk_darwin(v42);
  v469 = &v396 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = sub_100009DCC(&qword_1006F39B0);
  v465 = *(v449 - 1);
  __chkstk_darwin(v449);
  v421 = &v396 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v438 = &v396 - v46;
  v47 = sub_10056CC38();
  __chkstk_darwin(v47 - 8);
  v450 = &v396 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = sub_100572888();
  v466 = *(v452 - 8);
  __chkstk_darwin(v452);
  v448 = &v396 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v451 = &v396 - v51;
  v401 = sub_100009DCC(&qword_1006F39B8);
  __chkstk_darwin(v401);
  v403 = &v396 - v52;
  v402 = sub_100009DCC(&qword_1006F39C0);
  __chkstk_darwin(v402);
  v420 = &v396 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v404 = &v396 - v55;
  __chkstk_darwin(v56);
  v447 = (&v396 - v57);
  v58 = sub_100009DCC(&qword_1006F39C8);
  __chkstk_darwin(v58 - 8);
  v485 = &v396 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v62 = &v396 - v61;
  v63 = sub_100009DCC(&qword_1006F39D0);
  v443 = *(v63 - 8);
  v444 = v63;
  __chkstk_darwin(v63);
  v397 = (&v396 - v64);
  v65 = sub_100009DCC(&qword_1006F39D8);
  __chkstk_darwin(v65 - 8);
  v483 = &v396 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v490 = &v396 - v68;
  v478 = sub_100009DCC(&qword_1006F39E0);
  __chkstk_darwin(v478);
  v481 = &v396 - v69;
  v480 = sub_100009DCC(&qword_1006F39E8);
  __chkstk_darwin(v480);
  v484 = &v396 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v479 = &v396 - v72;
  __chkstk_darwin(v73);
  v488 = &v396 - v74;
  v75 = sub_100009DCC(&qword_1006F39F0);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v78 = &v396 - v77;
  v79 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v79);
  v464 = (&v396 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v81);
  v477 = &v396 - v82;
  __chkstk_darwin(v83);
  v85 = &v396 - v84;
  v86 = sub_100009DCC(&qword_1006F39F8);
  __chkstk_darwin(v86 - 8);
  v482 = &v396 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v90 = &v396 - v89;
  v462 = v42;
  v491 = *(v42 + 24);
  sub_100413998(v487 + v491, v85, type metadata accessor for Collaboration.Flow);
  v470 = v79;
  LODWORD(v42) = swift_getEnumCaseMultiPayload();
  sub_100412418(v85, type metadata accessor for Collaboration.Flow);
  v489 = v62;
  v486 = v90;
  if (v42 == 1)
  {
    v91 = 1;
  }

  else
  {
    if (qword_1006EEC10 != -1)
    {
      swift_once();
    }

    v92 = qword_1006F3588;
    *v499 = swift_getKeyPath();
    *&v499[8] = v92;

    v93 = sub_100009DCC(&qword_1006F3A00);
    v94 = sub_100413704();
    sub_100570258();

    *v499 = v93;
    *&v499[8] = v94;
    swift_getOpaqueTypeConformance2();
    v90 = v486;
    sub_1005701D8();
    (*(v76 + 8))(v78, v75);
    v91 = 0;
  }

  v456 = v43;
  v95 = sub_100009DCC(&qword_1006F3A18);
  (*(*(v95 - 8) + 56))(v90, v91, 1, v95);
  v96 = v487;
  *v499 = Collaboration.Flow.title.getter();
  *&v499[8] = v97;
  v463 = sub_10037AD68();
  v98 = sub_10056FF28();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  if (qword_1006EEC08 != -1)
  {
    swift_once();
  }

  v105 = qword_1006F3580;
  KeyPath = swift_getKeyPath();
  LOBYTE(v498[0]) = v102 & 1;
  *v499 = v98;
  *&v499[8] = v100;
  v499[16] = v102 & 1;
  *&v499[24] = v104;
  *&v499[32] = 256;
  *&v499[40] = KeyPath;
  *&v499[48] = v105;

  sub_100009DCC(&qword_1006F3A20);
  sub_100413810();
  v107 = v481;
  sub_100570258();
  v544[0] = *v499;
  v544[1] = *&v499[16];
  v544[2] = *&v499[32];
  v545 = *&v499[48];
  sub_10001036C(v544, &qword_1006F3A20);
  v108 = swift_getKeyPath();
  v109 = v107 + *(v478 + 36);
  *v109 = v108;
  *(v109 + 8) = 1;
  v110 = sub_10056FA48();
  v111 = v477;
  sub_100413998(v96 + v491, v477, type metadata accessor for Collaboration.Flow);
  swift_getEnumCaseMultiPayload();
  sub_100412418(v111, type metadata accessor for Collaboration.Flow);
  sub_10056E598();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v120 = v479;
  sub_100019B40(v107, v479, &qword_1006F39E0);
  v121 = v120 + *(v480 + 36);
  *v121 = v110;
  *(v121 + 8) = v113;
  *(v121 + 16) = v115;
  *(v121 + 24) = v117;
  *(v121 + 32) = v119;
  *(v121 + 40) = 0;
  sub_100019B40(v120, v488, &qword_1006F39E8);
  v122 = v462;
  v123 = v462[9];
  v124 = *(v96 + v123);
  *v499 = Collaboration.Flow.subtitle(hasProfileEdit:)(*(v96 + v123));
  v478 = sub_10056FF28();
  v477 = v125;
  v127 = v126;
  v479 = v128;
  v480 = swift_getKeyPath();
  v474 = v127 & 1;
  v499[0] = v127 & 1;
  v129 = swift_getKeyPath();
  v481 = v105;

  v130 = sub_100570508();
  v131 = swift_getKeyPath();
  v471 = sub_10056FA48();
  sub_10056E598();
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v499[0] = 0;
  v472 = sub_10056FA58();
  if (qword_1006EEC00 != -1)
  {
    swift_once();
  }

  v473 = v131;
  sub_10056E598();
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;
  if (v124)
  {
    v148 = v491;
    if (*(v96 + v122[10]))
    {
      type metadata accessor for InlineProfileEditingView.Context();
      sub_100415818(&qword_1006F3B60, type metadata accessor for InlineProfileEditingView.Context);
      v149 = sub_10056E708();
      v150 = _s4FlowO18ProfileEditingViewVMa(0);
      v151 = v397;
      sub_100413998(v96 + v148, v397 + *(v150 + 20), type metadata accessor for Collaboration.Flow);
      *v151 = v149;
      LOBYTE(v149) = sub_10056FA58();
      sub_10056E598();
      v152 = v444;
      v153 = v151 + *(v444 + 36);
      *v153 = v149;
      *(v153 + 1) = v154;
      *(v153 + 2) = v155;
      *(v153 + 3) = v156;
      *(v153 + 4) = v157;
      v153[40] = 0;
      sub_100019B40(v151, v490, &qword_1006F39D0);
      v158 = v152;
      v159 = 0;
      goto LABEL_16;
    }

    v159 = 1;
  }

  else
  {
    v159 = 1;
    v148 = v491;
  }

  v158 = v444;
LABEL_16:
  (*(v443 + 56))(v490, v159, 1, v158);
  type metadata accessor for InlineProfileEditingView.Context();
  sub_100415818(&qword_1006F3B60, type metadata accessor for InlineProfileEditingView.Context);
  sub_10056E708();
  v160 = InlineProfileEditingView.Context.canValidate.getter();

  v161 = !v160;
  v162 = v464;
  sub_100413998(v96 + v148, v464, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v476 = v129;
  v475 = v130;
  if (EnumCaseMultiPayload)
  {
    v427 = v143;
    v428 = v141;
    v425 = v147;
    v426 = v145;
    if (EnumCaseMultiPayload != 1)
    {
      LODWORD(v470) = v161;
      v198 = *(v96 + 8);
      LOBYTE(v498[0]) = *v96;
      v197 = v498[0];
      *(&v498[0] + 1) = v198;
      v199 = sub_100009DCC(&qword_1006F12F8);
      sub_100570698();
      v200 = v403;
      sub_1005707A8();
      v201 = sub_10056FA38();
      sub_10056E598();
      v203 = v202;
      v205 = v204;
      v207 = v206;
      v209 = v208;
      v210 = v200 + *(sub_100009DCC(&qword_1006F3A90) + 36);
      *v210 = v201;
      *(v210 + 8) = v203;
      *(v210 + 16) = v205;
      *(v210 + 24) = v207;
      *(v210 + 32) = v209;
      *(v210 + 40) = 0;
      v211 = sub_10056FA38();
      *(v200 + *(sub_100009DCC(&qword_1006F3A98) + 36)) = v211;
      v212 = (v200 + *(v401 + 36));
      v213 = *(sub_10056EDD8() + 20);
      v214 = enum case for RoundedCornerStyle.continuous(_:);
      v215 = sub_10056F2E8();
      (*(*(v215 - 8) + 104))(&v212[v213], v214, v215);
      __asm { FMOV            V0.2D, #16.0 }

      *v212 = _Q0;
      *&v212[*(sub_100009DCC(&unk_1006F3BA0) + 36)] = 256;
      sub_1005709E8();
      sub_10056EDF8();
      v221 = v404;
      sub_100019B40(v200, v404, &qword_1006F39B8);
      v222 = (v221 + *(v402 + 36));
      v223 = v526;
      v222[4] = v525;
      v222[5] = v223;
      v222[6] = v527;
      v224 = v522;
      *v222 = v521;
      v222[1] = v224;
      v225 = v524;
      v222[2] = v523;
      v222[3] = v225;
      sub_100019B40(v221, v447, &qword_1006F39C0);
      v499[0] = v197;
      *&v499[8] = v198;
      v455 = v199;
      sub_100570678();
      v226 = v466;
      v227 = (v466 + 16);
      v228 = v451;
      sub_100572818();
      v238 = v452;
      (*v227)(v448, v228, v452);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v239 = qword_1006FDF00;
      sub_10056CBC8();
      v240 = sub_100572948();
      v242 = v241;
      v462 = v139;
      v464 = v137;
      v467 = v135;
      v468 = v133;
      (*(v226 + 8))(v228, v238);
      *v499 = v240;
      *&v499[8] = v242;
      v466 = sub_10056FF28();
      v463 = v243;
      LOBYTE(v240) = v244;
      v454 = v245;
      sub_1005709F8();
      sub_10056EDF8();
      *&v500[54] = v532;
      *&v500[70] = v533;
      *&v500[86] = v534;
      *&v500[102] = v535;
      *&v500[6] = v529;
      *&v500[22] = v530;
      v246 = v240 & 1;
      v501 = v240 & 1;
      *&v500[38] = v531;
      v452 = swift_getKeyPath();
      v247 = sub_10056F6F8();
      v248 = sub_10056FC48();
      v249 = swift_getKeyPath();
      v250 = sub_10056FA28();
      sub_10056E598();
      v252 = v251;
      v254 = v253;
      v256 = v255;
      v258 = v257;
      v502 = 0;
      v259 = sub_10056FA48();
      if (qword_1006EEC18 != -1)
      {
        swift_once();
      }

      sub_10056E598();
      v261 = v260;
      v263 = v262;
      v265 = v264;
      v267 = v266;
      v503 = 0;
      v268 = sub_10056FA58();
      sub_10056E598();
      *&v493[98] = *&v500[64];
      *&v493[114] = *&v500[80];
      *&v493[130] = *&v500[96];
      *&v493[34] = *v500;
      *&v493[50] = *&v500[16];
      *&v493[66] = *&v500[32];
      v504 = 0;
      *v493 = v466;
      *&v493[8] = v463;
      v493[16] = v246;
      *&v493[24] = v454;
      *&v493[32] = 256;
      *&v493[82] = *&v500[48];
      *&v493[144] = *&v500[110];
      *&v493[152] = v452;
      v493[160] = 0;
      *&v493[164] = v247;
      *&v493[168] = v249;
      *&v493[176] = v248;
      v493[184] = v250;
      *&v493[192] = v252;
      *&v493[200] = v254;
      *&v493[208] = v256;
      *&v493[216] = v258;
      v493[224] = 0;
      v493[232] = v259;
      *&v493[240] = v261;
      *&v493[248] = v263;
      *&v493[256] = v265;
      *&v493[264] = v267;
      v493[272] = 0;
      *&v493[273] = v505;
      *&v493[276] = *(&v505 + 3);
      v493[280] = v268;
      *&v493[281] = v546;
      *&v493[284] = *(&v546 + 3);
      *&v493[288] = v269;
      *&v493[296] = v270;
      *&v493[304] = v271;
      *&v493[312] = v272;
      v493[320] = 0;
      v273 = v487;
      v274 = Collaboration.Flow.buttonActionTitle.getter();
      v276 = v275;
      v277 = v469;
      sub_100413998(v273, v469, type metadata accessor for Collaboration.Flow.View);
      v278 = (*(v453 + 80) + 16) & ~*(v453 + 80);
      v279 = swift_allocObject();
      sub_100412498(v277, v279 + v278, type metadata accessor for Collaboration.Flow.View);
      LOBYTE(v498[0]) = 0;
      sub_100570668();
      v280 = v499[0];
      v281 = *&v499[8];
      v282 = swift_getKeyPath();
      v494 = 0;
      v283 = swift_getKeyPath();
      v284 = swift_allocObject();
      *(v284 + 16) = v470 & 1;
      *v499 = v274;
      *&v499[8] = v276;
      v499[16] = 0;
      *&v499[17] = v497[0];
      *&v499[20] = *(v497 + 3);
      *&v499[24] = sub_10041443C;
      *&v499[32] = v279;
      v499[40] = v280;
      *&v499[41] = v496[0];
      *&v499[44] = *(v496 + 3);
      *&v499[48] = v281;
      *&v499[56] = v282;
      v499[64] = v494;
      *&v499[65] = *v495;
      *&v499[68] = *&v495[3];
      *&v499[72] = v283;
      *&v499[80] = sub_100415B74;
      *&v499[88] = v284;
      v285 = *(v273 + 24);
      LOBYTE(v492[0]) = *(v273 + 16);
      *(&v492[0] + 1) = v285;
      v286 = sub_100570698();
      v470 = &v396;
      LODWORD(v469) = LOBYTE(v498[1]);
      __chkstk_darwin(v286);
      v487 = sub_100009DCC(&qword_1006F3A68);
      v491 = sub_100413F9C();
      v287 = v438;
      sub_100570278();

      v515 = *&v499[32];
      v516 = *&v499[48];
      v517 = *&v499[64];
      v518 = *&v499[80];
      v513 = *v499;
      v514 = *&v499[16];
      sub_10001036C(&v513, &qword_1006F3A68);
      v288 = v420;
      sub_10000CC8C(v447, v420, &qword_1006F39C0);
      memcpy(v492, v493, 0x141uLL);
      v289 = *(v465 + 16);
      v290 = v421;
      v289(v421, v287, v449);
      v291 = v422;
      sub_10000CC8C(v288, v422, &qword_1006F39C0);
      v292 = sub_100009DCC(&qword_1006F3AA0);
      v293 = *(v292 + 48);
      memcpy(v498, v492, 0x141uLL);
      memcpy((v291 + v293), v492, 0x141uLL);
      v294 = v449;
      v289((v291 + *(v292 + 64)), v290, v449);
      sub_10000CC8C(v493, v499, &qword_1006F3AA8);
      sub_10000CC8C(v498, v499, &qword_1006F3AA8);
      v470 = *(v465 + 8);
      v465 += 8;
      (v470)(v290, v294);
      memcpy(v499, v492, sizeof(v499));
      sub_10001036C(v499, &qword_1006F3AA8);
      sub_10001036C(v288, &qword_1006F39C0);
      sub_10000CC8C(v291, v441, &qword_1006F39A8);
      swift_storeEnumTagMultiPayload();
      sub_100010BC0(&qword_1006F3A58, &qword_1006F39A8);
      v295 = v442;
      sub_10056F5B8();
      sub_10000CC8C(v295, v459, &qword_1006F39A0);
      swift_storeEnumTagMultiPayload();
      sub_100413EE4();
      sub_100010BC0(&qword_1006F3A78, &qword_1006F3980);
      sub_10056F5B8();
      sub_10001036C(v493, &qword_1006F3AA8);
      sub_10001036C(v295, &qword_1006F39A0);
      sub_10001036C(v291, &qword_1006F39A8);
      (v470)(v438, v449);
      sub_10001036C(v447, &qword_1006F39C0);
      v133 = v468;
      v135 = v467;
      v137 = v464;
      v139 = v462;
      goto LABEL_41;
    }

    v164 = *(v454 + 32);
    v491 = v454 + 32;
    v470 = v164;
    (v164)(v467, v162, v468);
    v165 = v445;
    sub_1003F59B0(v445);
    v166 = sub_100571F78();
    v168 = v167;
    if (qword_1006EEBF8 != -1)
    {
      swift_once();
    }

    (*(v433 + 104))(v446, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v435);
    v169 = swift_allocObject();
    *(v169 + 16) = v166;
    *(v169 + 24) = v168;
    v170 = v407;
    sub_10000CC8C(v165, v407, &qword_1006F3E50);
    v171 = type metadata accessor for ArtworkImage.ViewModel(0);
    v464 = *(*(v171 - 8) + 48);
    v172 = (v464)(v170, 1, v171);
    v173 = v417;
    v174 = v409;
    v465 = v169;
    if (v172 == 1)
    {
      sub_10001036C(v170, &qword_1006F3E50);
      v175 = sub_100571E58();
      (*(*(v175 - 8) + 56))(v174, 1, 1, v175);
    }

    else
    {
      v229 = sub_100571E58();
      v230 = *(v229 - 8);
      (*(v230 + 16))(v174, v170, v229);
      sub_100412418(v170, type metadata accessor for ArtworkImage.ViewModel);
      (*(v230 + 56))(v174, 0, 1, v229);
    }

    sub_10000CC8C(v174, v410, &unk_1006F3B10);
    sub_10056DC28();
    sub_10001036C(v174, &unk_1006F3B10);
    sub_10056DC08();
    v231 = v408;
    sub_10000CC8C(v445, v408, &qword_1006F3E50);
    if ((v464)(v231, 1, v171) == 1)
    {
      sub_10001036C(v231, &qword_1006F3E50);
      v232 = v399;
      v233 = v400;
      (*(v173 + 56))(v399, 1, 1, v400);
      v234 = v398;
    }

    else
    {
      v232 = v399;
      sub_10000CC8C(v231 + *(v171 + 20), v399, &qword_1006F2C40);
      sub_100412418(v231, type metadata accessor for ArtworkImage.ViewModel);
      v233 = v400;
      v235 = (*(v173 + 48))(v232, 1, v400);
      v234 = v398;
      if (v235 != 1)
      {
        v237 = v416;
        (*(v173 + 32))(v416, v232, v233);
LABEL_38:
        v296 = v432;
        sub_10056DBE8();
        (*(v173 + 8))(v237, v233);
        v297 = v419;
        v298 = *(v418 + 8);
        v298(v296, v419);
        v299 = v415;
        sub_10056DC18();
        v298(v234, v297);
        sub_1003CCBB0();
        v300 = v414;
        sub_10056DBF8();

        v298(v299, v297);
        v298(v434, v297);
        (*(v433 + 8))(v446, v435);
        sub_10001036C(v445, &qword_1006F3E50);
        sub_1005709E8();
        sub_10056E888();
        v301 = (v300 + *(sub_100009DCC(&unk_1006F3E60) + 36));
        v302 = v547;
        *v301 = v546;
        v301[1] = v302;
        v301[2] = v548;
        *(v300 + *(v412 + 36)) = 256;
        LOBYTE(v296) = sub_10056FA48();
        sub_10056E598();
        v304 = v303;
        v306 = v305;
        v308 = v307;
        v310 = v309;
        v311 = v411;
        sub_100019B40(v300, v411, &qword_1006F3988);
        v312 = v311 + *(v413 + 36);
        *v312 = v296;
        *(v312 + 8) = v304;
        *(v312 + 16) = v306;
        *(v312 + 24) = v308;
        *(v312 + 32) = v310;
        *(v312 + 40) = 0;
        sub_100019B40(v311, v455, &qword_1006F3E70);
        v313 = v451;
        sub_100572818();
        v314 = v466;
        v315 = *(v466 + 16);
        v316 = v452;
        v465 = v466 + 16;
        v464 = v315;
        v315();
        if (qword_1006EE950 != -1)
        {
          swift_once();
        }

        v317 = qword_1006FDF00;
        v318 = qword_1006FDF00;
        v463 = v317;
        v319 = v318;
        sub_10056CBC8();
        v320 = v319;
        v321 = sub_100572948();
        v442 = v322;
        v443 = v321;
        v323 = *(v314 + 8);
        v466 = v314 + 8;
        v462 = v323;
        (v323)(v313, v316);
        v449 = type metadata accessor for Collaboration.Flow.View;
        v324 = v469;
        sub_100413998(v96, v469, type metadata accessor for Collaboration.Flow.View);
        v325 = v454;
        v326 = *(v454 + 16);
        v446 = (v454 + 16);
        v447 = v326;
        v327 = v437;
        v328 = v468;
        v326(v437, v467, v468);
        v329 = *(v453 + 80);
        v330 = *(v325 + 80);
        v331 = (v329 + 16) & ~v329;
        v453 = v331;
        v332 = (v456 + v330 + v331) & ~v330;
        v456 = v329 | v330;
        v333 = v332;
        v444 = v332;
        v334 = swift_allocObject();
        v445 = type metadata accessor for Collaboration.Flow.View;
        sub_100412498(v324, v334 + v331, type metadata accessor for Collaboration.Flow.View);
        (v470)(v334 + v333, v327, v328);
        LOBYTE(v498[0]) = 0;
        sub_100570668();
        LOBYTE(v327) = v499[0];
        v335 = *&v499[8];
        v336 = swift_getKeyPath();
        LOBYTE(v496[0]) = 0;
        v337 = sub_10056FA48();
        v338 = v448;
        v339 = v337;
        sub_10056E598();
        v493[0] = 0;
        *&v521 = v443;
        *(&v521 + 1) = v442;
        LOBYTE(v522) = 0;
        *(&v522 + 1) = sub_100413A0C;
        *&v523 = v334;
        BYTE8(v523) = v327;
        *&v524 = v335;
        *(&v524 + 1) = v336;
        LOBYTE(v525) = v496[0];
        *(&v525 + 1) = *v499;
        DWORD1(v525) = *&v499[3];
        BYTE8(v525) = v339;
        HIDWORD(v525) = *(v498 + 3);
        *(&v525 + 9) = v498[0];
        *&v526 = v340;
        *(&v526 + 1) = v341;
        *&v527 = v342;
        *(&v527 + 1) = v343;
        v528 = 0;
        v344 = v451;
        sub_100572818();
        v345 = v452;
        (v464)(v338, v344, v452);
        sub_10056CBC8();
        v465 = sub_100572948();
        v464 = v346;
        (v462)(v344, v345);
        v347 = v469;
        sub_100413998(v487, v469, v449);
        v348 = v437;
        v349 = v468;
        v447(v437, v467, v468);
        v350 = v444;
        v351 = swift_allocObject();
        sub_100412498(v347, v351 + v453, v445);
        (v470)(v351 + v350, v348, v349);
        LOBYTE(v498[0]) = 0;
        sub_100570668();
        LOBYTE(v348) = v499[0];
        v352 = *&v499[8];
        v353 = swift_getKeyPath();
        LOBYTE(v497[0]) = 0;
        LOBYTE(v347) = sub_10056FA48();
        sub_10056E598();
        v493[0] = 0;
        *&v529 = v465;
        *(&v529 + 1) = v464;
        LOBYTE(v530) = 1;
        *(&v530 + 1) = sub_100413DA4;
        *&v531 = v351;
        BYTE8(v531) = v348;
        *&v532 = v352;
        *(&v532 + 1) = v353;
        LOBYTE(v533) = v497[0];
        *(&v533 + 1) = *v499;
        DWORD1(v533) = *&v499[3];
        BYTE8(v533) = v347;
        HIDWORD(v533) = *(v498 + 3);
        *(&v533 + 9) = v498[0];
        *&v534 = v354;
        *(&v534 + 1) = v355;
        *&v535 = v356;
        *(&v535 + 1) = v357;
        v536 = 0;
        v358 = v423;
        sub_10000CC8C(v455, v423, &qword_1006F3E70);
        v517 = v525;
        v518 = v526;
        v519 = v527;
        v513 = v521;
        v514 = v522;
        v515 = v523;
        v516 = v524;
        v509 = v533;
        v510 = v534;
        v511 = v535;
        v505 = v529;
        v506 = v530;
        v507 = v531;
        v520 = v528;
        v512 = v536;
        v508 = v532;
        v359 = v424;
        sub_10000CC8C(v358, v424, &qword_1006F3E70);
        v360 = sub_100009DCC(&qword_1006F3A40);
        v361 = v359 + *(v360 + 48);
        v362 = v520;
        LOBYTE(v492[7]) = v520;
        v364 = v518;
        v492[4] = v517;
        v363 = v517;
        v492[5] = v518;
        v492[6] = v519;
        v365 = v519;
        v367 = v514;
        v492[0] = v513;
        v366 = v513;
        v492[1] = v514;
        v368 = v516;
        v492[2] = v515;
        v492[3] = v516;
        *(v361 + 32) = v515;
        *(v361 + 48) = v368;
        *v361 = v366;
        *(v361 + 16) = v367;
        *(v361 + 112) = v362;
        *(v361 + 80) = v364;
        *(v361 + 96) = v365;
        *(v361 + 64) = v363;
        v369 = v359 + *(v360 + 64);
        *&v493[32] = v507;
        *&v493[48] = v508;
        *v493 = v505;
        *&v493[16] = v506;
        *&v493[64] = v509;
        *&v493[80] = v510;
        *&v493[96] = v511;
        v493[112] = v512;
        v370 = v509;
        v371 = v510;
        *(v369 + 64) = v509;
        *(v369 + 80) = v371;
        v372 = v511;
        *(v369 + 96) = v511;
        v373 = v512;
        *(v369 + 112) = v512;
        v374 = v505;
        v375 = v506;
        *v369 = v505;
        *(v369 + 16) = v375;
        v376 = v507;
        v377 = v508;
        *(v369 + 32) = v507;
        *(v369 + 48) = v377;
        v498[0] = v374;
        v498[1] = v375;
        v498[2] = v376;
        v498[3] = v377;
        v498[4] = v370;
        v498[5] = v371;
        v498[6] = v372;
        LOBYTE(v498[7]) = v373;
        sub_10000CC8C(&v521, v499, &qword_1006F3A48);
        sub_10000CC8C(&v529, v499, &qword_1006F3A48);
        sub_10000CC8C(v492, v499, &qword_1006F3A48);
        sub_10000CC8C(v493, v499, &qword_1006F3A48);
        sub_10001036C(v498, &qword_1006F3A48);
        *&v499[64] = v517;
        *&v499[80] = v518;
        *&v499[96] = v519;
        v499[112] = v520;
        *v499 = v513;
        *&v499[16] = v514;
        *&v499[32] = v515;
        *&v499[48] = v516;
        sub_10001036C(v499, &qword_1006F3A48);
        sub_10001036C(v358, &qword_1006F3E70);
        sub_10000CC8C(v359, v459, &qword_1006F3980);
        swift_storeEnumTagMultiPayload();
        sub_100413EE4();
        sub_100010BC0(&qword_1006F3A78, &qword_1006F3980);
        sub_10056F5B8();
        sub_10001036C(&v529, &qword_1006F3A48);
        sub_10001036C(&v521, &qword_1006F3A48);
        sub_10001036C(v359, &qword_1006F3980);
        sub_10001036C(v455, &qword_1006F3E70);
        (*(v454 + 8))(v467, v468);
LABEL_41:
        v143 = v427;
        v141 = v428;
        v147 = v425;
        v145 = v426;
        goto LABEL_42;
      }
    }

    if (qword_1006EEB38 != -1)
    {
      swift_once();
    }

    v236 = sub_10000C49C(v233, static Artwork.CropStyle.fallback);
    v237 = v416;
    (*(v173 + 16))(v416, v236, v233);
    if ((*(v173 + 48))(v232, 1, v233) != 1)
    {
      sub_10001036C(v232, &qword_1006F2C40);
    }

    goto LABEL_38;
  }

  v176 = sub_100009DCC(&qword_1006F35A8);
  v177 = v429;
  v178 = v430;
  v179 = *(v430 + 32);
  v180 = v431;
  v179(v429, v162 + *(v176 + 48), v431);
  LODWORD(v470) = v161;
  v491 = Collaboration.Flow.buttonActionTitle.getter();
  v468 = v181;
  v182 = v469;
  sub_100413998(v96, v469, type metadata accessor for Collaboration.Flow.View);
  v183 = v406;
  v184 = v180;
  (*(v178 + 16))(v406, v177, v180);
  v185 = (*(v453 + 80) + 16) & ~*(v453 + 80);
  v186 = (v456 + *(v178 + 80) + v185) & ~*(v178 + 80);
  v187 = swift_allocObject();
  sub_100412498(v182, v187 + v185, type metadata accessor for Collaboration.Flow.View);
  v179((v187 + v186), v183, v184);
  LOBYTE(v498[0]) = 0;
  sub_100570668();
  LOBYTE(v185) = v499[0];
  v188 = *&v499[8];
  v189 = swift_getKeyPath();
  v493[0] = 0;
  v190 = swift_getKeyPath();
  v191 = swift_allocObject();
  *(v191 + 16) = v470 & 1;
  *v499 = v491;
  *&v499[8] = v468;
  v499[16] = 0;
  *&v499[24] = sub_1004143F0;
  *&v499[32] = v187;
  v499[40] = v185;
  *&v499[48] = v188;
  *&v499[56] = v189;
  v499[64] = v493[0];
  *&v499[65] = v498[0];
  *&v499[68] = *(v498 + 3);
  *&v499[72] = v190;
  *&v499[80] = sub_100415B74;
  *&v499[88] = v191;
  v192 = *&v499[48];
  v193 = v441;
  v441[2] = *&v499[32];
  v193[3] = v192;
  v194 = *&v499[80];
  v193[4] = *&v499[64];
  v193[5] = v194;
  v195 = *&v499[16];
  *v193 = *v499;
  v193[1] = v195;
  swift_storeEnumTagMultiPayload();
  sub_10000CC8C(v499, v498, &qword_1006F3A68);
  sub_100009DCC(&qword_1006F3A68);
  sub_100010BC0(&qword_1006F3A58, &qword_1006F39A8);
  sub_100413F9C();
  v196 = v442;
  sub_10056F5B8();
  sub_10000CC8C(v196, v459, &qword_1006F39A0);
  swift_storeEnumTagMultiPayload();
  sub_100413EE4();
  sub_100010BC0(&qword_1006F3A78, &qword_1006F3980);
  sub_10056F5B8();
  sub_10001036C(v499, &qword_1006F3A68);
  sub_10001036C(v196, &qword_1006F39A0);
  (*(v430 + 8))(v429, v431);
  sub_10001036C(v464, &qword_1006F35B0);
LABEL_42:
  v378 = v482;
  sub_10000CC8C(v486, v482, &qword_1006F39F8);
  v379 = v484;
  sub_10000CC8C(v488, v484, &qword_1006F39E8);
  sub_10000CC8C(v490, v483, &qword_1006F39D8);
  sub_10000CC8C(v489, v485, &qword_1006F39C8);
  v380 = v378;
  v381 = v461;
  sub_10000CC8C(v380, v461, &qword_1006F39F8);
  v382 = sub_100009DCC(&qword_1006F3A80);
  sub_10000CC8C(v379, v381 + v382[12], &qword_1006F39E8);
  v383 = v381 + v382[16];
  *&v498[0] = v478;
  *(&v498[0] + 1) = v477;
  LOBYTE(v498[1]) = v474;
  *(&v498[1] + 1) = *v541;
  DWORD1(v498[1]) = *&v541[3];
  *(&v498[1] + 1) = v479;
  LOWORD(v498[2]) = 256;
  *(&v498[2] + 2) = v539;
  WORD3(v498[2]) = v540;
  *(&v498[2] + 1) = v480;
  *&v498[3] = v481;
  *(&v498[3] + 1) = v476;
  LOBYTE(v498[4]) = 1;
  *(&v498[4] + 1) = *v538;
  DWORD1(v498[4]) = *&v538[3];
  *(&v498[4] + 1) = v473;
  *&v498[5] = v475;
  BYTE8(v498[5]) = v471;
  *(&v498[5] + 9) = *v537;
  HIDWORD(v498[5]) = *&v537[3];
  *&v498[6] = v133;
  *(&v498[6] + 1) = v135;
  *&v498[7] = v137;
  *(&v498[7] + 1) = v139;
  LOBYTE(v498[8]) = 0;
  DWORD1(v498[8]) = *&v543[3];
  *(&v498[8] + 1) = *v543;
  BYTE8(v498[8]) = v472;
  HIDWORD(v498[8]) = *&v542[3];
  *(&v498[8] + 9) = *v542;
  *&v498[9] = v141;
  *(&v498[9] + 1) = v143;
  *&v498[10] = v145;
  *(&v498[10] + 1) = v147;
  LOBYTE(v498[11]) = 0;
  v384 = v498[8];
  v385 = v498[9];
  v386 = v498[10];
  *(v383 + 176) = 0;
  *(v383 + 144) = v385;
  *(v383 + 160) = v386;
  v387 = v498[0];
  v388 = v498[1];
  v389 = v498[3];
  *(v383 + 32) = v498[2];
  *(v383 + 48) = v389;
  *v383 = v387;
  *(v383 + 16) = v388;
  v390 = v498[4];
  v391 = v498[5];
  v392 = v498[6];
  *(v383 + 112) = v498[7];
  *(v383 + 128) = v384;
  *(v383 + 80) = v391;
  *(v383 + 96) = v392;
  *(v383 + 64) = v390;
  v393 = v483;
  sub_10000CC8C(v483, v381 + v382[20], &qword_1006F39D8);
  v394 = v485;
  sub_10000CC8C(v485, v381 + v382[24], &qword_1006F39C8);
  sub_10000CC8C(v498, v499, &qword_1006F3A88);
  sub_10001036C(v489, &qword_1006F39C8);
  sub_10001036C(v490, &qword_1006F39D8);
  sub_10001036C(v488, &qword_1006F39E8);
  sub_10001036C(v486, &qword_1006F39F8);
  sub_10001036C(v394, &qword_1006F39C8);
  sub_10001036C(v393, &qword_1006F39D8);
  *v499 = v478;
  *&v499[8] = v477;
  v499[16] = v474;
  *&v499[17] = *v541;
  *&v499[20] = *&v541[3];
  *&v499[24] = v479;
  *&v499[32] = 256;
  *&v499[34] = v539;
  *&v499[38] = v540;
  *&v499[40] = v480;
  *&v499[48] = v481;
  *&v499[56] = v476;
  v499[64] = 1;
  *&v499[68] = *&v538[3];
  *&v499[65] = *v538;
  *&v499[72] = v473;
  *&v499[80] = v475;
  v499[88] = v471;
  *&v499[92] = *&v537[3];
  *&v499[89] = *v537;
  *&v499[96] = v133;
  *&v499[104] = v135;
  *&v499[112] = v137;
  *&v499[120] = v139;
  v499[128] = 0;
  *&v499[129] = *v543;
  *&v499[132] = *&v543[3];
  v499[136] = v472;
  *&v499[140] = *&v542[3];
  *&v499[137] = *v542;
  *&v499[144] = v141;
  *&v499[152] = v143;
  *&v499[160] = v145;
  *&v499[168] = v147;
  v499[176] = 0;
  sub_10001036C(v499, &qword_1006F3A88);
  sub_10001036C(v484, &qword_1006F39E8);
  return sub_10001036C(v482, &qword_1006F39F8);
}

uint64_t sub_10040BE98@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10056CC38();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100572888();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  sub_100572818();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v10 = qword_1006FDF00;
  sub_10056CBC8();
  v11 = sub_100572948();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_10037AD68();
  result = sub_10056FF28();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_10040C0A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Collaboration.Flow.View(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009DCC(&qword_1006F4800);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_100572F48();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_100413998(a2, v6, type metadata accessor for Collaboration.Flow.View);
  sub_100572F08();
  v11 = sub_100572EF8();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_100412498(v6, v13 + v12, type metadata accessor for Collaboration.Flow.View);
  sub_100396F38(0, 0, v9, &unk_10059F6A0, v13);
}

uint64_t sub_10040C288()
{
  v0[2] = sub_100572F08();
  v0[3] = sub_100572EF8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10031E56C;

  return sub_10040C338(0);
}

uint64_t sub_10040C338(char a1)
{
  v2[10] = v1;
  v2[11] = sub_100009DCC(&qword_1006F3AB0);
  v2[12] = swift_task_alloc();
  v4 = sub_1005722D8();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = sub_100572F08();
  v2[17] = sub_100572EF8();
  type metadata accessor for Collaboration.Flow.View(0);
  if (a1)
  {
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = sub_10040C510;

    return Playlist.duplicate()();
  }

  else
  {
    v7 = swift_task_alloc();
    v2[20] = v7;
    *v7 = v2;
    v7[1] = sub_10040C8D0;

    return Playlist.hasUnsupportedContent.getter();
  }
}

uint64_t sub_10040C510()
{
  *(*v1 + 152) = v0;

  v3 = sub_100572E78();
  if (v0)
  {
    v4 = sub_10040D310;
  }

  else
  {
    v4 = sub_10040C668;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10040C668()
{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_100415818(&qword_1006F3B60, type metadata accessor for InlineProfileEditingView.Context);
    v4 = sub_10056E708();
    *(v0 + 176) = v4;
    v12 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_10040CE3C;

    return v12(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = *(v1 + 8);
    *(v0 + 40) = *v1;
    *(v0 + 48) = v8;
    sub_100009DCC(&qword_1006F12F8);
    sub_100570678();
    v9 = *(v0 + 33);
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_10040D080;
    v11 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v11, v1 + v7, (v9 & 1) == 0);
  }
}

uint64_t sub_10040C8D0(char a1)
{
  *(*v1 + 35) = a1;

  v3 = sub_100572E78();

  return _swift_task_switch(sub_10040CA14, v3, v2);
}

uint64_t sub_10040CA14()
{
  if (*(v0 + 35) == 1)
  {

    sub_100414814();
    v1 = swift_allocError();
    *v2 = xmmword_100596F20;
    *(v2 + 16) = 3;
    swift_willThrow();
    *(v0 + 72) = v1;
    swift_errorRetain();
    sub_100009DCC(&qword_1006F47F0);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 16);
      v4 = *(v0 + 24);
      v5 = *(v0 + 32);
      if (v5 == 3 && v3 == 8 && !v4)
      {
        v6 = *(v0 + 80);

        v7 = *(v6 + 24);
        *(v0 + 56) = *(v6 + 16);
        *(v0 + 64) = v7;
        *(v0 + 34) = 1;
        sub_100009DCC(&qword_1006F12F8);
        sub_100570688();

LABEL_17:

        v22 = *(v0 + 8);

        return v22();
      }

      sub_100414958(v3, v4, v5);
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 80);

    v21 = *(v20 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
    *v19 = v1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v21(v19);

    sub_10001036C(v19, &qword_1006F3AB0);
    goto LABEL_17;
  }

  v8 = *(v0 + 80);
  v9 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v9;
  if (*(v8 + v9[9]) == 1 && (v10 = *(v8 + v9[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_100415818(&qword_1006F3B60, type metadata accessor for InlineProfileEditingView.Context);
    v11 = sub_10056E708();
    *(v0 + 176) = v11;
    v23 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_10040CE3C;

    return v23(v11);
  }

  else
  {
    v14 = v9[7];
    v15 = *(v8 + 8);
    *(v0 + 40) = *v8;
    *(v0 + 48) = v15;
    sub_100009DCC(&qword_1006F12F8);
    sub_100570678();
    v16 = *(v0 + 33);
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_10040D080;
    v18 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v18, v8 + v14, (v16 & 1) == 0);
  }
}

uint64_t sub_10040CE3C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100572E78();
    v4 = v3;
    v5 = sub_10040D4C0;
  }

  else
  {

    v2 = sub_100572E78();
    v4 = v6;
    v5 = sub_10040CF8C;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_10040CF8C()
{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 168) + 28);
  v3 = *(v1 + 8);
  *(v0 + 40) = *v1;
  *(v0 + 48) = v3;
  sub_100009DCC(&qword_1006F12F8);
  sub_100570678();
  v4 = *(v0 + 33);
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_10040D080;
  v6 = *(v0 + 120);

  return Collaboration.Manager.start(_:isOpen:)(v6, v1 + v2, (v4 & 1) == 0);
}

uint64_t sub_10040D080()
{
  *(*v1 + 208) = v0;

  v3 = sub_100572E78();
  if (v0)
  {
    v4 = sub_10040D67C;
  }

  else
  {
    v4 = sub_10040D1D8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10040D1D8()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];

  v7 = *(v6 + *(v1 + 44));
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  swift_storeEnumTagMultiPayload();
  v7(v5);
  sub_10001036C(v5, &qword_1006F3AB0);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10040D310()
{

  v1 = *(v0 + 152);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006F47F0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_100009DCC(&qword_1006F12F8);
      sub_100570688();

      goto LABEL_8;
    }

    sub_100414958(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_10001036C(v7, &qword_1006F3AB0);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10040D4C0()
{

  v1 = *(v0 + 192);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006F47F0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_100009DCC(&qword_1006F12F8);
      sub_100570688();

      goto LABEL_8;
    }

    sub_100414958(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_10001036C(v7, &qword_1006F3AB0);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10040D67C()
{

  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006F47F0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      sub_100009DCC(&qword_1006F12F8);
      sub_100570688();

      goto LABEL_8;
    }

    sub_100414958(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  sub_10001036C(v7, &qword_1006F3AB0);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10040D82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v65 = a2;
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v61 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v62 = v3;
  v64 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100570438();
  __chkstk_darwin(v4 - 8);
  v63 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v49 - v7;
  v8 = sub_10056CC38();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100572888();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  sub_100572818();
  v52 = *(v10 + 16);
  v51 = v10 + 16;
  v52(v12, v15, v9);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v16 = qword_1006FDF00;
  v17 = qword_1006FDF00;
  v66 = v16;
  v18 = v17;
  sub_10056CBC8();
  v19 = v18;
  v20 = sub_100572948();
  v22 = v21;
  v23 = *(v10 + 8);
  v23(v15, v9);
  v50 = v23;
  v69 = v20;
  v70 = v22;
  v49 = sub_10037AD68();
  v24 = sub_10056FF28();
  v59 = v25;
  v60 = v24;
  v57 = v26;
  v58 = v27;
  sub_100572818();
  v28 = v52;
  v52(v12, v15, v9);
  sub_10056CBC8();
  v29 = sub_100572948();
  v31 = v30;
  v23(v15, v9);
  v69 = v29;
  v70 = v31;
  v32 = sub_10056FF28();
  v55 = v33;
  v56 = v32;
  v53 = v34 & 1;
  v54 = v35;
  sub_100572818();
  v28(v12, v15, v9);
  sub_10056CBC8();
  v36 = sub_100572948();
  v38 = v37;
  v50(v15, v9);
  v69 = v36;
  v70 = v38;
  v39 = sub_10056FF28();
  v41 = v40;
  v43 = v42;
  v66 = type metadata accessor for Collaboration.Flow.View;
  v44 = v64;
  sub_100413998(v68, v64, type metadata accessor for Collaboration.Flow.View);
  v45 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v46 = swift_allocObject();
  sub_100412498(v44, v46 + v45, type metadata accessor for Collaboration.Flow.View);
  sub_100570428();
  sub_10001B5A4(v39, v41, v43 & 1);

  sub_100413998(v68, v44, v66);
  v47 = swift_allocObject();
  sub_100412498(v44, v47 + v45, type metadata accessor for Collaboration.Flow.View);
  sub_100570418();

  return sub_1005703F8();
}

uint64_t sub_10040DE20(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&qword_1006F4800);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_100572F48();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100413998(a1, v5, type metadata accessor for Collaboration.Flow.View);
  sub_100572F08();
  v10 = sub_100572EF8();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100412498(v5, v12 + v11, type metadata accessor for Collaboration.Flow.View);
  sub_100396F38(0, 0, v8, &unk_10059F680, v12);
}

uint64_t sub_10040E000()
{
  v0[2] = sub_100572F08();
  v0[3] = sub_100572EF8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10031E380;

  return sub_10040C338(1);
}

uint64_t sub_10040E0B0(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F3AB0);
  __chkstk_darwin(v2);
  v4 = (&v9 - v3);
  v5 = *(a1 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  sub_100414814();
  v6 = swift_allocError();
  *v7 = xmmword_100596F20;
  *(v7 + 16) = 3;
  *v4 = v6;
  swift_storeEnumTagMultiPayload();
  v5(v4);
  return sub_10001036C(v4, &qword_1006F3AB0);
}

uint64_t sub_10040E1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100009DCC(&qword_1006F3AB0);
  v5[5] = swift_task_alloc();
  sub_100572F08();
  v5[6] = sub_100572EF8();
  v7 = sub_100572E78();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10040E288, v7, v6);
}

uint64_t sub_10040E288()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_100415818(&qword_1006F3B60, type metadata accessor for InlineProfileEditingView.Context);
    v4 = sub_10056E708();
    v0[10] = v4;
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_10040E4B0;

    return v10(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_10040E680;
    v9 = v0[3];

    return Collaboration.Manager.join(_:url:)(v1 + v7, v9);
  }
}

uint64_t sub_10040E4B0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10040E8B8;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10040E5CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10040E5CC()
{
  v1 = v0[2];
  v2 = *(v0[9] + 28);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10040E680;
  v4 = v0[3];

  return Collaboration.Manager.join(_:url:)(v1 + v2, v4);
}

uint64_t sub_10040E680()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_10040E99C;
  }

  else
  {
    v5 = sub_10040E7BC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10040E7BC()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = *(v3 + *(v1 + 44));
  v5 = sub_1005722D8();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v4(v2);
  sub_10001036C(v2, &qword_1006F3AB0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10040E8B8()
{

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_10001036C(v3, &qword_1006F3AB0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10040E99C()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_10001036C(v3, &qword_1006F3AB0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10040EA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100009DCC(&qword_1006F3AB0);
  v5[5] = swift_task_alloc();
  sub_100572F08();
  v5[6] = sub_100572EF8();
  v7 = sub_100572E78();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10040EB4C, v7, v6);
}

uint64_t sub_10040EB4C()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10040EC08;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(0, v5, v1 + v3);
}

uint64_t sub_10040EC08()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_10040ED44;
  }

  else
  {
    v5 = sub_100415B70;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10040ED44()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_10001036C(v3, &qword_1006F3AB0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10040EE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v8 = a4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Collaboration.Flow.View(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100009DCC(&qword_1006F4800);
  __chkstk_darwin(v16 - 8);
  v18 = &v25 - v17;
  v19 = sub_100572F48();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_100413998(a2, v15, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 16))(v11, a3, v8);
  sub_100572F08();
  v20 = sub_100572EF8();
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = (v14 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = &protocol witness table for MainActor;
  sub_100412498(v15, v23 + v21, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 32))(v23 + v22, v11, v8);
  sub_100396F38(0, 0, v18, v26, v23);
}

uint64_t sub_10040F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_100009DCC(&qword_1006F3AB0);
  v5[5] = swift_task_alloc();
  sub_100572F08();
  v5[6] = sub_100572EF8();
  v7 = sub_100572E78();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10040F1A8, v7, v6);
}

uint64_t sub_10040F1A8()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10040F264;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(1, v5, v1 + v3);
}

uint64_t sub_10040F264()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100415B6C;
  }

  else
  {
    v5 = sub_100415B70;
  }

  return _swift_task_switch(v5, v4, v3);
}

id _s9MusicCore13CollaborationO0aB2UIE4FlowO4ViewV13_isRestricted33_4FA82EB282576B4095E3FA5F35E498B8LL05SwiftD05StateVySbGvpfi_0()
{
  v0 = [objc_opt_self() defaultIdentityStore];
  sub_1004157CC();
  v1 = static ICUserIdentity.active.getter();
  v7 = 0;
  v2 = [v0 getPropertiesForUserIdentity:v1 error:&v7];

  if (v2)
  {
    v3 = v7;
    v4 = [v2 isU18MinorAccount];
  }

  else
  {
    v5 = v7;
    sub_10056C728();

    swift_willThrow();

    return 0;
  }

  return v4;
}

uint64_t sub_10040F4B8()
{
  type metadata accessor for InlineProfileEditingView.Context();
  swift_allocObject();
  return InlineProfileEditingView.Context.init()();
}

uint64_t sub_10040F51C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100009DCC(&qword_1006F33E8);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_100570548();
  sub_10056F398();
  v5 = sub_10056F3A8();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_100570588();

  sub_10001036C(v4, &qword_1006F33E8);
  v7 = sub_100570458();
  result = swift_getKeyPath();
  *a1 = v6;
  a1[1] = result;
  a1[2] = v7;
  return result;
}

uint64_t sub_10040F658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v140 = a1;
  v2 = sub_10056FBF8();
  v135 = *(v2 - 8);
  v136 = v2;
  __chkstk_darwin(v2);
  v134 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10056CC38();
  __chkstk_darwin(v4 - 8);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100572888();
  v133 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v117 - v11;
  v120 = sub_100009DCC(&qword_1006F3918);
  __chkstk_darwin(v120);
  v14 = &v117 - v13;
  v121 = sub_100009DCC(&qword_1006F3920);
  __chkstk_darwin(v121);
  v124 = &v117 - v15;
  v16 = sub_100009DCC(&qword_1006F3928);
  v131 = *(v16 - 8);
  v132 = v16;
  __chkstk_darwin(v16);
  v122 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v123 = &v117 - v19;
  v20 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v20);
  v22 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100009DCC(&qword_1006F3930);
  __chkstk_darwin(v23 - 8);
  v138 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v117 - v26;
  v28 = *(_s4FlowO18ProfileEditingViewVMa(0) + 20);
  v130 = v20;
  swift_storeEnumTagMultiPayload();
  v129 = v28;
  LOBYTE(v28) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(v140 + v28, v22);
  sub_100412418(v22, type metadata accessor for Collaboration.Flow);
  v137 = v27;
  v127 = v6;
  v128 = v7;
  v125 = v9;
  v126 = v12;
  if (v28)
  {
    v29 = 1;
    v30 = v132;
  }

  else
  {
    sub_100572818();
    v31 = v133;
    (*(v133 + 16))(v9, v12, v7);
    v32 = v31;
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v33 = qword_1006FDF00;
    sub_10056CBC8();
    v34 = sub_100572948();
    v36 = v35;
    (*(v32 + 8))(v12, v7);
    *&v163 = v34;
    *(&v163 + 1) = v36;
    sub_10037AD68();
    v37 = sub_10056FF28();
    v118 = v38;
    v119 = v39;
    v41 = v40;
    v42 = &v14[*(sub_100009DCC(&qword_1006F3938) + 36)];
    v43 = *(sub_100009DCC(&qword_1006F3940) + 28);
    v44 = enum case for Text.Case.uppercase(_:);
    v45 = sub_10056FE68();
    v46 = *(v45 - 8);
    (*(v46 + 104))(v42 + v43, v44, v45);
    (*(v46 + 56))(v42 + v43, 0, 1, v45);
    *v42 = swift_getKeyPath();
    v47 = v118;
    *v14 = v37;
    *(v14 + 1) = v47;
    v14[16] = v41 & 1;
    *(v14 + 3) = v119;
    v48 = sub_10056FC48();
    KeyPath = swift_getKeyPath();
    v50 = &v14[*(sub_100009DCC(&qword_1006F3948) + 36)];
    *v50 = KeyPath;
    v50[1] = v48;
    v51 = sub_100570508();
    v52 = swift_getKeyPath();
    v53 = &v14[*(v120 + 36)];
    *v53 = v52;
    v53[1] = v51;
    sub_1005709F8();
    sub_10056EDF8();
    v54 = v124;
    sub_100019B40(v14, v124, &qword_1006F3918);
    v55 = (v54 + *(v121 + 36));
    v56 = v177;
    v55[4] = v176;
    v55[5] = v56;
    v55[6] = v178;
    v57 = v173;
    *v55 = v172;
    v55[1] = v57;
    v58 = v175;
    v55[2] = v174;
    v55[3] = v58;
    LOBYTE(v51) = sub_10056FA28();
    sub_10056E598();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v122;
    sub_100019B40(v54, v122, &qword_1006F3920);
    v30 = v132;
    v68 = v67 + *(v132 + 36);
    *v68 = v51;
    *(v68 + 8) = v60;
    *(v68 + 16) = v62;
    *(v68 + 24) = v64;
    *(v68 + 32) = v66;
    *(v68 + 40) = 0;
    v69 = v67;
    v70 = v123;
    sub_100019B40(v69, v123, &qword_1006F3928);
    v27 = v137;
    sub_100019B40(v70, v137, &qword_1006F3928);
    v29 = 0;
  }

  v72 = v135;
  v71 = v136;
  v73 = v134;
  (*(v131 + 56))(v27, v29, 1, v30);
  v74 = v140;

  sub_10041B674(&v179);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v74) = _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(v74 + v129, v22);
  sub_100412418(v22, type metadata accessor for Collaboration.Flow);
  if (v74)
  {
    sub_1004136E8(&v163);
  }

  else
  {
    v75 = v126;
    sub_100572818();
    v76 = v133;
    v77 = v128;
    (*(v133 + 16))(v125, v75, v128);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v78 = qword_1006FDF00;
    sub_10056CBC8();
    v79 = sub_100572948();
    v81 = v80;
    (*(v76 + 8))(v75, v77);
    *&v163 = v79;
    *(&v163 + 1) = v81;
    sub_10037AD68();
    v140 = sub_10056FF28();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = swift_getKeyPath();
    LOBYTE(v79) = v85 & 1;
    LOBYTE(v163) = v85 & 1;
    sub_10056FC48();
    (*(v72 + 104))(v73, enum case for Font.Leading.tight(_:), v71);
    v89 = sub_10056FC28();

    (*(v72 + 8))(v73, v71);
    v90 = swift_getKeyPath();
    v91 = sub_100570508();
    v92 = swift_getKeyPath();
    v93 = sub_10056FA28();
    sub_10056E598();
    LOBYTE(v163) = 0;
    *&v154 = v140;
    *(&v154 + 1) = v83;
    LOBYTE(v155) = v79;
    *(&v155 + 1) = v87;
    LOWORD(v156) = 256;
    *(&v156 + 1) = v88;
    LOBYTE(v157) = 1;
    *(&v157 + 1) = v90;
    *&v158 = v89;
    *(&v158 + 1) = v92;
    *&v159 = v91;
    BYTE8(v159) = v93;
    *&v160 = v94;
    *(&v160 + 1) = v95;
    *&v161 = v96;
    *(&v161 + 1) = v97;
    v162 = 0;
    v98.location = &v154;
    CFRange.init(_:)(v98);
    v169 = v160;
    v170 = v161;
    v171 = v162;
    v165 = v156;
    v166 = v157;
    v167 = v158;
    v168 = v159;
    v163 = v154;
    v164 = v155;
    v27 = v137;
  }

  v99 = v138;
  sub_10000CC8C(v27, v138, &qword_1006F3930);
  v147 = v169;
  v148 = v170;
  v149 = v171;
  v143 = v165;
  v144 = v166;
  v145 = v167;
  v146 = v168;
  v141 = v163;
  v142 = v164;
  v100 = v139;
  sub_10000CC8C(v99, v139, &qword_1006F3930);
  v101 = sub_100009DCC(&qword_1006F3950);
  v102 = (v100 + *(v101 + 48));
  v103 = v183;
  v104 = v182;
  v150[3] = v182;
  v150[4] = v183;
  v105 = v180;
  v106 = v179;
  v150[1] = v180;
  v150[2] = v181;
  v150[0] = v179;
  v102[2] = v181;
  v102[3] = v104;
  v102[4] = v103;
  *v102 = v106;
  v102[1] = v105;
  v107 = *(v101 + 64);
  v108 = v148;
  v151[6] = v147;
  v151[7] = v148;
  v110 = v145;
  v109 = v146;
  v151[4] = v145;
  v151[5] = v146;
  v111 = v143;
  v112 = v144;
  v151[2] = v143;
  v151[3] = v144;
  v114 = v141;
  v113 = v142;
  v151[0] = v141;
  v151[1] = v142;
  v115 = v100 + v107;
  *(v115 + 96) = v147;
  *(v115 + 112) = v108;
  v152 = v149;
  *(v115 + 128) = v149;
  *(v115 + 32) = v111;
  *(v115 + 48) = v112;
  *(v115 + 64) = v110;
  *(v115 + 80) = v109;
  *v115 = v114;
  *(v115 + 16) = v113;
  sub_100413638(v150, &v154);
  sub_10000CC8C(v151, &v154, &qword_1006F3958);
  sub_10001036C(v27, &qword_1006F3930);
  v160 = v147;
  v161 = v148;
  v162 = v149;
  v156 = v143;
  v157 = v144;
  v158 = v145;
  v159 = v146;
  v154 = v141;
  v155 = v142;
  sub_10001036C(&v154, &qword_1006F3958);
  v153[2] = v181;
  v153[3] = v182;
  v153[4] = v183;
  v153[0] = v179;
  v153[1] = v180;
  sub_100413694(v153);
  return sub_10001036C(v99, &qword_1006F3930);
}

uint64_t sub_1004102D4@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t a4@<X8>)
{
  *a4 = sub_10056F368();
  *(a4 + 8) = a1;
  *(a4 + 16) = 0;
  sub_100009DCC(a2);
  return a3(v4);
}

uint64_t sub_100410340@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = sub_10056F198();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10056EDD8();
  __chkstk_darwin(v70);
  v75 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_100009DCC(&qword_1006F3870);
  __chkstk_darwin(v74);
  v76 = &v64 - v6;
  v7 = sub_100009DCC(&qword_1006F3878);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v64 - v9;
  v11 = sub_100009DCC(&qword_1006F3880);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v68 = sub_100009DCC(&qword_1006F3888);
  __chkstk_darwin(v68);
  v16 = &v64 - v15;
  v69 = sub_100009DCC(&qword_1006F3890);
  __chkstk_darwin(v69);
  v18 = &v64 - v17;
  v19 = sub_100009DCC(&qword_1006F3898);
  v72 = *(v19 - 8);
  v73 = v19;
  __chkstk_darwin(v19);
  v71 = &v64 - v20;
  v21 = swift_allocObject();
  v22 = *(v1 + 48);
  *(v21 + 48) = *(v1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(v1 + 64);
  v23 = *(v1 + 16);
  *(v21 + 16) = *v1;
  *(v21 + 32) = v23;
  v78 = v1;
  sub_1004130F8(v1, v88);
  sub_100009DCC(&qword_1006F38A0);
  sub_100413130();
  sub_1005706D8();
  v91 = *(v1 + 40);
  v88[0] = *(v1 + 40);
  v64 = sub_100009DCC(&qword_1006F12F8);
  sub_100570678();
  v24 = v81;
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = &v10[*(v8 + 44)];
  *v27 = KeyPath;
  v27[1] = sub_1000AD63C;
  v27[2] = v26;
  sub_1005709E8();
  sub_10056EDF8();
  sub_100019B40(v10, v14, &qword_1006F3878);
  v28 = &v14[*(v12 + 44)];
  v29 = v86;
  *(v28 + 4) = v85;
  *(v28 + 5) = v29;
  *(v28 + 6) = v87;
  v30 = v82;
  *v28 = v81;
  *(v28 + 1) = v30;
  v31 = v84;
  *(v28 + 2) = v83;
  *(v28 + 3) = v31;
  v32 = *(v2 + 16);
  if (v32)
  {
    v33 = sub_100570458();
  }

  else
  {
    v33 = sub_1005704D8();
  }

  v34 = v33;
  v35 = swift_getKeyPath();
  sub_100019B40(v14, v16, &qword_1006F3880);
  v36 = &v16[*(v68 + 36)];
  *v36 = v35;
  v36[1] = v34;
  v37 = v71;
  if (qword_1006EEBE8 != -1)
  {
    swift_once();
  }

  v38 = *&qword_1006F3560;
  sub_1005709E8();
  sub_10056EDF8();
  sub_100019B40(v16, v18, &qword_1006F3888);
  v39 = &v18[*(v69 + 36)];
  v40 = v88[5];
  *(v39 + 4) = v88[4];
  *(v39 + 5) = v40;
  *(v39 + 6) = v88[6];
  v41 = v88[1];
  *v39 = v88[0];
  *(v39 + 1) = v41;
  v42 = v88[3];
  *(v39 + 2) = v88[2];
  *(v39 + 3) = v42;
  sub_100413414(&qword_1006F38C0, &qword_1006F3890, &unk_10059F338, sub_100413330);
  sub_100570258();
  sub_10001036C(v18, &qword_1006F3890);
  v43 = v38 * 0.5;
  v44 = *(v70 + 20);
  v45 = enum case for RoundedCornerStyle.continuous(_:);
  v46 = sub_10056F2E8();
  v47 = v75;
  (*(*(v46 - 8) + 104))(v75 + v44, v45, v46);
  *v47 = v43;
  v47[1] = v43;
  v48 = *(v2 + 56);
  v89 = v48;
  v90 = *(v2 + 64);
  if (v90 == 1)
  {
    if (v48)
    {
      goto LABEL_11;
    }
  }

  else
  {

    sub_100573438();
    v49 = sub_10056F9D8();
    sub_10056DE58();

    v50 = v65;
    sub_10056F188();
    swift_getAtKeyPath();
    sub_10001036C(&v89, &qword_1006F38F0);
    (*(v66 + 8))(v50, v67);
    if (v80)
    {
      goto LABEL_11;
    }
  }

  v80 = v91;
  sub_100570678();
  if (v79 != 1)
  {
    v52 = [objc_opt_self() systemFillColor];
    v51 = sub_100570528();
    goto LABEL_15;
  }

LABEL_11:
  if (v32)
  {
    v51 = sub_1005704B8();
  }

  else
  {
    v51 = sub_100570458();
  }

LABEL_15:
  v53 = v51;
  v54 = v76;
  sub_100412498(v47, v76, &type metadata accessor for RoundedRectangle);
  v55 = v74;
  *(v54 + *(v74 + 52)) = v53;
  *(v54 + *(v55 + 56)) = 256;
  v56 = sub_1005709E8();
  v58 = v57;
  v59 = sub_100009DCC(&qword_1006F38F8);
  v60 = v77;
  v61 = v77 + *(v59 + 36);
  sub_100019B40(v54, v61, &qword_1006F3870);
  v62 = (v61 + *(sub_100009DCC(&qword_1006F3900) + 36));
  *v62 = v56;
  v62[1] = v58;
  return (*(v72 + 32))(v60, v37, v73);
}

uint64_t sub_100410C4C(uint64_t a1)
{
  sub_100009DCC(&qword_1006F12F8);
  sub_100570688();
  return (*(a1 + 24))(a1);
}

uint64_t sub_100410CB8(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F3908);
  __chkstk_darwin(v2);
  v4 = v23 - v3;
  v5 = sub_100009DCC(&qword_1006F38B8);
  __chkstk_darwin(v5);
  v7 = v23 - v6;
  v23[0] = *(a1 + 40);
  sub_100009DCC(&qword_1006F12F8);
  sub_100570678();
  if (v24 == 1)
  {
    sub_10056E7E8();
    v8 = sub_1005704D8();
    KeyPath = swift_getKeyPath();
    v10 = &v7[*(v5 + 36)];
    *v10 = KeyPath;
    v10[1] = v8;
    sub_10000CC8C(v7, v4, &qword_1006F38B8);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006F3130);
    sub_1004131DC();
    sub_1004138E8(&qword_1006F3128, &qword_1006F3130);
    sub_10056F5B8();
    return sub_10001036C(v7, &qword_1006F38B8);
  }

  else
  {
    v12 = *(a1 + 8);
    *&v23[0] = *a1;
    *(&v23[0] + 1) = v12;
    sub_10037AD68();

    v13 = sub_10056FF28();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_1005709E8();
    sub_10056EDF8();
    v24 = v17 & 1;
    *v4 = v13;
    *(v4 + 1) = v15;
    v4[16] = v17 & 1;
    *(v4 + 3) = v19;
    v20 = v23[5];
    *(v4 + 6) = v23[4];
    *(v4 + 7) = v20;
    *(v4 + 8) = v23[6];
    v21 = v23[1];
    *(v4 + 2) = v23[0];
    *(v4 + 3) = v21;
    v22 = v23[3];
    *(v4 + 4) = v23[2];
    *(v4 + 5) = v22;
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006F3130);
    sub_1004131DC();
    sub_1004138E8(&qword_1006F3128, &qword_1006F3130);
    return sub_10056F5B8();
  }
}

void sub_100410FDC()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 50.0;
  if (v1 == 6)
  {
    v2 = 44.0;
  }

  qword_1006F3560 = *&v2;
}

void sub_100411094()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_1006F3568 = v1 == 6;
}

uint64_t sub_1004110F8()
{
  if (qword_1006EEBF0 != -1)
  {
    result = swift_once();
  }

  v0 = 180.0;
  if (byte_1006F3568)
  {
    v0 = 140.0;
  }

  qword_1006F3570 = *&v0;
  return result;
}

uint64_t sub_100411170()
{
  if (qword_1006EEBF0 != -1)
  {
    result = swift_once();
  }

  v0 = 24.0;
  if (byte_1006F3568)
  {
    v0 = 16.0;
  }

  qword_1006F3578 = *&v0;
  return result;
}

uint64_t sub_1004111D8()
{
  v0 = sub_10056FBF8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006EEBF0 != -1)
  {
    swift_once();
  }

  if (byte_1006F3568 == 1)
  {
    result = sub_10056FB08();
    v5 = result;
  }

  else
  {
    sub_10056FB18();
    (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
    v5 = sub_10056FC28();

    result = (*(v1 + 8))(v3, v0);
  }

  qword_1006F3580 = v5;
  return result;
}

uint64_t sub_100411334()
{
  v0 = sub_100009DCC(&qword_1006F2E90);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  if (qword_1006EEBF0 != -1)
  {
    swift_once();
  }

  v3 = sub_10056FB38();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_10056FBA8();
  result = sub_10001036C(v2, &qword_1006F2E90);
  qword_1006F3588 = v4;
  return result;
}

uint64_t sub_100411470()
{
  if (qword_1006EEBF0 != -1)
  {
    result = swift_once();
  }

  v0 = 6.0;
  if (byte_1006F3568)
  {
    v0 = 9.0;
  }

  qword_1006F3590 = *&v0;
  return result;
}

uint64_t ICMusicUserProfile.collaborator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100009DCC(&unk_1006F3B10);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = sub_100571E58();
  v11 = *(v10 - 8);
  v32 = *(v11 + 56);
  v33 = v10;
  v31[1] = v11 + 56;
  v32(v9, 1, 1);
  v12 = [v2 artworkInfo];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 responseDictionary];

    if (v14)
    {
      v15 = sub_1005726A8();

      v16 = sub_100406A3C(v15);

      if (v16)
      {
        sub_100571DD8();
        sub_10001036C(v9, &unk_1006F3B10);
        sub_100019B40(v6, v9, &unk_1006F3B10);
      }
    }
  }

  v17 = [v2 name];
  v18 = sub_1005728D8();
  v20 = v19;

  v21 = [v2 handle];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1005728D8();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  sub_10000CC8C(v9, v6, &unk_1006F3B10);
  v26 = [v2 collaborationAllowed];
  sub_10001036C(v9, &unk_1006F3B10);
  v27 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v28 = *(v27 + 24);
  (v32)(a1 + v28, 1, 1, v33);
  v29 = *(v27 + 28);
  *a1 = v18;
  a1[1] = v20;
  a1[2] = v23;
  a1[3] = v25;
  result = sub_100406DFC(v6, a1 + v28);
  *(a1 + v29) = v26;
  return result;
}

uint64_t sub_1004117A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056F168();
  *a1 = result;
  return result;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v69 = a2;
  v2 = sub_100571FD8();
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v63 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v59 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100009DCC(&qword_1006F35B0);
  __chkstk_darwin(v6 - 8);
  v60 = (&v58 - v7);
  v66 = sub_100009DCC(&qword_1006F3970);
  __chkstk_darwin(v66);
  v9 = &v58 - v8;
  v10 = sub_10056C8A8();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  v16 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = sub_100009DCC(&qword_1006F3978);
  __chkstk_darwin(v22 - 8);
  v24 = &v58 - v23;
  v26 = &v58 + *(v25 + 56) - v23;
  sub_100413998(v68, &v58 - v23, type metadata accessor for Collaboration.Flow);
  sub_100413998(v69, v26, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v34 = v66;
    v65 = v9;
    v68 = v12;
    v69 = v15;
    v35 = v10;
    sub_100413998(v24, v21, type metadata accessor for Collaboration.Flow);
    v36 = sub_100009DCC(&qword_1006F35A8);
    v37 = *(v36 + 48);
    v38 = *(v36 + 64);
    v39 = v21[v38];
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v67 + 8))(&v21[v37], v10);
      sub_10001036C(v21, &qword_1006F35B0);
LABEL_10:
      sub_10001036C(v24, &qword_1006F3978);
LABEL_11:
      v32 = 0;
      return v32 & 1;
    }

    LODWORD(v64) = v39;
    v41 = v26[v38];
    v42 = *(v67 + 32);
    v42(v69, &v21[v37], v35);
    v42(v68, &v26[v37], v35);
    v43 = *(v34 + 48);
    v44 = v65;
    sub_100019B40(v21, v65, &qword_1006F35B0);
    sub_100019B40(v26, v44 + v43, &qword_1006F35B0);
    v45 = v62;
    v46 = *(v61 + 48);
    if (v46(v44, 1, v62) == 1)
    {
      v47 = v46(v44 + v43, 1, v45);
      v48 = v67;
      v49 = v68;
      v50 = v69;
      if (v47 == 1)
      {
        sub_10001036C(v44, &qword_1006F35B0);
        goto LABEL_21;
      }
    }

    else
    {
      v51 = v60;
      sub_10000CC8C(v44, v60, &qword_1006F35B0);
      if (v46(v44 + v43, 1, v45) != 1)
      {
        v53 = v59;
        sub_100412498(v44 + v43, v59, type metadata accessor for Collaboration.Flow.Collaborator);
        v54 = _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(v51, v53);
        sub_100412418(v53, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_100412418(v51, type metadata accessor for Collaboration.Flow.Collaborator);
        sub_10001036C(v44, &qword_1006F35B0);
        v48 = v67;
        v49 = v68;
        v50 = v69;
        if (v54)
        {
LABEL_21:
          v55 = sub_10056C828();
          v56 = *(v48 + 8);
          v56(v49, v35);
          v56(v50, v35);
          if (v55)
          {
            v57 = v64 ^ v41;
            sub_100412418(v24, type metadata accessor for Collaboration.Flow);
            v32 = v57 ^ 1;
            return v32 & 1;
          }

          goto LABEL_23;
        }

LABEL_19:
        v52 = *(v48 + 8);
        v52(v49, v35);
        v52(v50, v35);
LABEL_23:
        sub_100412418(v24, type metadata accessor for Collaboration.Flow);
        goto LABEL_11;
      }

      sub_100412418(v51, type metadata accessor for Collaboration.Flow.Collaborator);
      v48 = v67;
      v49 = v68;
      v50 = v69;
    }

    sub_10001036C(v44, &qword_1006F3970);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100412418(v24, type metadata accessor for Collaboration.Flow);
      v32 = 1;
      return v32 & 1;
    }

    goto LABEL_10;
  }

  sub_100413998(v24, v18, type metadata accessor for Collaboration.Flow);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v64 + 8))(v18, v65);
    goto LABEL_10;
  }

  v29 = v63;
  v28 = v64;
  v30 = v26;
  v31 = v65;
  (*(v64 + 32))(v63, v30, v65);
  v32 = sub_100571F58();
  v33 = *(v28 + 8);
  v33(v29, v31);
  v33(v18, v31);
  sub_100412418(v24, type metadata accessor for Collaboration.Flow);
  return v32 & 1;
}

uint64_t _s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = sub_100571E58();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&unk_1006F3B10);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_100009DCC(&qword_1006F2F78);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_100574498() & 1) == 0)
  {
    goto LABEL_17;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (sub_100574498() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v15)
  {
    goto LABEL_17;
  }

  v25 = v7;
  v26 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v16 = *(v26 + 24);
  v17 = *(v11 + 48);
  sub_10000CC8C(a1 + v16, v13, &unk_1006F3B10);
  sub_10000CC8C(a2 + v16, &v13[v17], &unk_1006F3B10);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_10001036C(v13, &unk_1006F3B10);
LABEL_20:
      v19 = *(a1 + *(v26 + 28)) ^ *(a2 + *(v26 + 28)) ^ 1;
      return v19 & 1;
    }

    goto LABEL_16;
  }

  sub_10000CC8C(v13, v10, &unk_1006F3B10);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_16:
    sub_10001036C(v13, &qword_1006F2F78);
    goto LABEL_17;
  }

  v21 = &v13[v17];
  v22 = v25;
  (*(v5 + 32))(v25, v21, v4);
  sub_100415818(&qword_1006F2F80, &type metadata accessor for Artwork);
  v23 = sub_1005727E8();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v24(v10, v4);
  sub_10001036C(v13, &unk_1006F3B10);
  if (v23)
  {
    goto LABEL_20;
  }

LABEL_17:
  v19 = 0;
  return v19 & 1;
}

unint64_t sub_1004123C4()
{
  result = qword_1006F35A0;
  if (!qword_1006F35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F35A0);
  }

  return result;
}

uint64_t sub_100412418(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100412498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10041251C()
{
  sub_100412590();
  if (v0 <= 0x3F)
  {
    sub_100571FD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100412590()
{
  if (!qword_1006F3648)
  {
    sub_100010324(&qword_1006F35B0);
    sub_10056C8A8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006F3648);
    }
  }
}

uint64_t sub_100412628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009DCC(&unk_1006F3B10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1004126F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&unk_1006F3B10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1004127A8()
{
  sub_100412C10(319, &unk_1006F36E0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100412860();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100412860()
{
  if (!qword_1006F28A0)
  {
    sub_100571E58();
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006F28A0);
    }
  }
}

uint64_t sub_1004128CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1005722D8();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1004129E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_1005722D8();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_100412AEC()
{
  sub_100412C10(319, &unk_1006F10B8, &type metadata for Bool, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Collaboration.Flow(319);
    if (v1 <= 0x3F)
    {
      sub_1005722D8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Collaboration.Manager();
        if (v3 <= 0x3F)
        {
          sub_1003DB87C();
          if (v4 <= 0x3F)
          {
            sub_1003CC840();
            if (v5 <= 0x3F)
            {
              sub_100412C60();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100412C10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100412C60()
{
  if (!qword_1006F3780)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    sub_100415818(&qword_1006F3B60, type metadata accessor for InlineProfileEditingView.Context);
    v0 = sub_10056E718();
    if (!v1)
    {
      atomic_store(v0, &qword_1006F3780);
    }
  }
}

__n128 sub_100412D44(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100412D68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100412DB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100412E28(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Collaboration.Flow(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100412EE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Collaboration.Flow(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100412FAC()
{
  result = type metadata accessor for InlineProfileEditingView.Context();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Collaboration.Flow(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100413094()
{

  sub_100053068(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t sub_100413130()
{
  result = qword_1006F38A8;
  if (!qword_1006F38A8)
  {
    sub_100010324(&qword_1006F38A0);
    sub_1004131DC();
    sub_1004138E8(&qword_1006F3128, &qword_1006F3130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F38A8);
  }

  return result;
}

unint64_t sub_1004131DC()
{
  result = qword_1006F38B0;
  if (!qword_1006F38B0)
  {
    sub_100010324(&qword_1006F38B8);
    sub_100010BC0(&qword_1006F2CF0, &qword_1006F2CF8);
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F38B0);
  }

  return result;
}

uint64_t sub_1004132C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10056F128();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100413330()
{
  result = qword_1006F38C8;
  if (!qword_1006F38C8)
  {
    sub_100010324(&qword_1006F3888);
    sub_100413414(&qword_1006F38D0, &qword_1006F3880, &unk_10059F328, sub_100413498);
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F38C8);
  }

  return result;
}

uint64_t sub_100413414(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100413498()
{
  result = qword_1006F38D8;
  if (!qword_1006F38D8)
  {
    sub_100010324(&qword_1006F3878);
    sub_100010BC0(&qword_1006F38E0, &qword_1006F38E8);
    sub_100010BC0(&qword_1006F3298, &qword_1006F32A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F38D8);
  }

  return result;
}

uint64_t sub_10041357C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056F168();
  *a1 = result;
  return result;
}

uint64_t sub_1004135E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10056F028();
  *a1 = result;
  return result;
}

double sub_1004136E8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_100413704()
{
  result = qword_1006F3A08;
  if (!qword_1006F3A08)
  {
    sub_100010324(&qword_1006F3A00);
    sub_1004137BC();
    sub_100010BC0(&unk_1006F2DD0, &qword_1006F1268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3A08);
  }

  return result;
}

unint64_t sub_1004137BC()
{
  result = qword_1006F3A10;
  if (!qword_1006F3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3A10);
  }

  return result;
}

unint64_t sub_100413810()
{
  result = qword_1006F3A28;
  if (!qword_1006F3A28)
  {
    sub_100010324(&qword_1006F3A20);
    sub_1004138E8(&qword_1006F3A30, &qword_1006F3A38);
    sub_100010BC0(&unk_1006F2DD0, &qword_1006F1268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3A28);
  }

  return result;
}

uint64_t sub_1004138E8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100413958()
{

  return swift_deallocObject();
}

uint64_t sub_100413998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100413A5C()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_100571FD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_100571E58();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = *(sub_100009DCC(&qword_1006F35A8) + 48);
    v16 = sub_10056C8A8();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_1005722D8();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_100413A04();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_100413DEC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a2(0) - 8);
  return sub_10040EE20(a1, v5 + v12, v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a3, a4, a5);
}

unint64_t sub_100413EE4()
{
  result = qword_1006F3A50;
  if (!qword_1006F3A50)
  {
    sub_100010324(&qword_1006F39A0);
    sub_100010BC0(&qword_1006F3A58, &qword_1006F39A8);
    sub_100413F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3A50);
  }

  return result;
}

unint64_t sub_100413F9C()
{
  result = qword_1006F3A60;
  if (!qword_1006F3A60)
  {
    sub_100010324(&qword_1006F3A68);
    sub_100414054();
    sub_100010BC0(&qword_1006F3298, &qword_1006F32A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3A60);
  }

  return result;
}

unint64_t sub_100414054()
{
  result = qword_1006F3A70;
  if (!qword_1006F3A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3A70);
  }

  return result;
}

uint64_t sub_1004140A8()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_10056C8A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_100571FD8();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_100571E58();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = sub_100009DCC(&qword_1006F35A8);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_1005722D8();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_100413A04();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_10041443C(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10040C0A8(a1, v4);
}

uint64_t sub_1004144B4()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_100571FD8();
    (*(*(v11 - 8) + 8))(v3, v11);
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = sub_100571E58();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }
    }

    v9 = *(sub_100009DCC(&qword_1006F35A8) + 48);
    v10 = sub_10056C8A8();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  v12 = v1[7];
  v13 = sub_1005722D8();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  if (*(v2 + v1[10]))
  {
  }

  sub_100413A04();

  return swift_deallocObject();
}

uint64_t sub_1004147A0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100414814()
{
  result = qword_1006F3AB8;
  if (!qword_1006F3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3AB8);
  }

  return result;
}

uint64_t sub_100414868()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CB98;

  return sub_10040E000();
}

uint64_t sub_100414958(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_100414984()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = sub_100571FD8();
    (*(*(v12 - 8) + 8))(v4, v12);
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = sub_100571E58();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v4 + v7, 1, v8))
      {
        (*(v9 + 8))(v4 + v7, v8);
      }
    }

    v10 = *(sub_100009DCC(&qword_1006F35A8) + 48);
    v11 = sub_10056C8A8();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v13 = v1[7];
  v14 = sub_1005722D8();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  if (*(v3 + v1[10]))
  {
  }

  sub_100413A04();

  return swift_deallocObject();
}

uint64_t sub_100414C48()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  return sub_10040C288();
}

uint64_t sub_100414D38()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_10056C8A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = sub_100571FD8();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_100571E58();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = sub_100009DCC(&qword_1006F35A8);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_1005722D8();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_100413A04();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_100415088(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10056C8A8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000116F0;

  return sub_10040E1B4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1004151DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100571FD8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000116F0;

  return sub_10040F0D4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10041532C()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_100571FD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = sub_100571E58();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = *(sub_100009DCC(&qword_1006F35A8) + 48);
    v16 = sub_10056C8A8();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = sub_1005722D8();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  sub_100413A04();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_10041567C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_100571FD8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000116F0;

  return sub_10040EA78(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_1004157CC()
{
  result = qword_1006F3AC0;
  if (!qword_1006F3AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F3AC0);
  }

  return result;
}

uint64_t sub_100415818(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004158D0()
{
  result = qword_1006F3AD8;
  if (!qword_1006F3AD8)
  {
    sub_100010324(&qword_1006F38F8);
    sub_100010324(&qword_1006F3890);
    sub_100413414(&qword_1006F38C0, &qword_1006F3890, &unk_10059F338, sub_100413330);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006F3AE0, &qword_1006F3900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3AD8);
  }

  return result;
}

unint64_t sub_100415A40()
{
  result = qword_1006F3AF8;
  if (!qword_1006F3AF8)
  {
    sub_100010324(&qword_1006F3B00);
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3AF8);
  }

  return result;
}

unint64_t sub_100415AFC()
{
  result = qword_1006F3B08;
  if (!qword_1006F3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3B08);
  }

  return result;
}

uint64_t InlineProfileEditingView.Context.__allocating_init()()
{
  v0 = swift_allocObject();
  InlineProfileEditingView.Context.init()();
  return v0;
}

__n128 InlineProfileEditingView.init(context:)@<Q0>(uint64_t a1@<X8>)
{
  sub_10041B674(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.Context.artwork(uint64_t a1)
{
  v2 = sub_100009DCC(&unk_1006F3B10);
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_10000CC8C(a1, &v9 - v6, &unk_1006F3B10);
  sub_10000CC8C(v7, v4, &unk_1006F3B10);
  sub_10056E438();
  sub_10001036C(a1, &unk_1006F3B10);
  return sub_10001036C(v7, &unk_1006F3B10);
}

uint64_t sub_100415D10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

uint64_t sub_100415DD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

void sub_100415E48(void *a1)
{
  v3 = sub_100009DCC(&unk_1006F3B10);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = a1;
  v9 = a1;

  sub_10056E488();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v10 = v14;
  if (v14)
  {
    v11 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
    swift_beginAccess();
    *(v1 + v11) = 0;
    v12 = sub_100571E58();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000CC8C(v8, v5, &unk_1006F3B10);

    sub_10056E488();

    sub_10001036C(v8, &unk_1006F3B10);
  }

  else
  {
  }
}

uint64_t InlineProfileEditingView.Context.init()()
{
  v0 = sub_100009DCC(&qword_1006F3B20);
  v78 = *(v0 - 8);
  v79 = v0;
  __chkstk_darwin(v0);
  v77 = &v71 - v1;
  v76 = sub_100009DCC(&qword_1006F3B28);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v3 = &v71 - v2;
  v4 = sub_100009DCC(&qword_1006F3B30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v71 - v6;
  v8 = sub_100009DCC(&unk_1006F3B10);
  __chkstk_darwin(v8);
  v72 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v71 - v11;
  __chkstk_darwin(v12);
  v14 = &v71 - v13;
  __chkstk_darwin(v15);
  v17 = &v71 - v16;
  v18 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v19 = sub_100571E58();
  v80 = *(v19 - 8);
  v81 = v19;
  (*(v80 + 56))(v17, 1, 1);
  sub_10000CC8C(v17, v14, &unk_1006F3B10);
  v71 = v14;
  sub_10056E438();
  v20 = v17;
  sub_10001036C(v17, &unk_1006F3B10);
  v21 = v75;
  (*(v5 + 32))(v75 + v18, v7, v4);
  v22 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v83 = 0;
  v84 = 0xE000000000000000;
  sub_10056E438();
  (*(v74 + 32))(v21 + v22, v3, v76);
  v23 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v83 = 0;
  sub_100009DCC(&qword_1006EF6A0);
  v24 = v77;
  sub_10056E438();
  (*(v78 + 32))(v21 + v23, v24, v79);
  *(v21 + OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage) = 0;
  v25 = [objc_opt_self() shared];
  v26 = [v25 activeUserState];

  v27 = [v26 music];
  v28 = [v27 userProfile];

  if (v28)
  {
    v29 = [v28 name];
    v30 = sub_1005728D8();
    v32 = v31;

    swift_getKeyPath();
    swift_getKeyPath();
    v83 = v30;
    v84 = v32;

    sub_10056E488();
    v33 = [v28 artworkInfo];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 responseDictionary];

      if (v35)
      {
        v36 = sub_1005726A8();

        v37 = sub_100406A3C(v36);

        if (v37)
        {
          sub_100571DD8();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10000CC8C(v20, v71, &unk_1006F3B10);

          sub_10056E488();
          sub_10001036C(v20, &unk_1006F3B10);
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v39 = v83;
  v38 = v84;

  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v39 & 0xFFFFFFFFFFFFLL;
  }

  v42 = v80;
  v41 = v81;
  if (v40)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = v73;
    sub_10056E478();

    if ((*(v42 + 48))(v43, 1, v41) != 1)
    {

LABEL_25:
      sub_10001036C(v43, &unk_1006F3B10);
      return v21;
    }

    sub_10001036C(v43, &unk_1006F3B10);
  }

  sub_100009DCC(&qword_1006F3B50);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_10057B4F0;
  *(v44 + 32) = CNContactThumbnailImageDataKey;
  v82 = v44;
  v45 = objc_opt_self();
  v46 = CNContactThumbnailImageDataKey;
  v47 = [v45 descriptorForRequiredKeysForStyle:0];
  sub_100572CE8();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
  v48 = [objc_allocWithZone(CNContactStore) init];
  sub_100009DCC(&qword_1006F3B58);
  isa = sub_100572D08().super.isa;

  v83 = 0;
  v50 = [v48 _ios_meContactWithKeysToFetch:isa error:&v83];

  v51 = v83;
  if (!v50)
  {
    v69 = v83;
    sub_10056C728();

    swift_willThrow();

    return v21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v51;
  sub_10056E478();

  v54 = v83;
  v53 = v84;

  v55 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v55 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {
    v56 = [v45 stringFromContact:v50 style:0];
    if (v56)
    {
      v57 = v56;
      v58 = sub_1005728D8();
      v60 = v59;

      swift_getKeyPath();
      swift_getKeyPath();
      v83 = v58;
      v84 = v60;

      sub_10056E488();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v72;
  sub_10056E478();

  if ((*(v42 + 48))(v43, 1, v41) != 1)
  {

    goto LABEL_25;
  }

  sub_10001036C(v43, &unk_1006F3B10);
  v61 = [v50 thumbnailImageData];
  if (v61)
  {
    v62 = v61;
    v63 = sub_10056C918();
    v65 = v64;

    v66 = objc_allocWithZone(UIImage);
    sub_1000F54C8(v63, v65);
    v67 = sub_10056C908().super.isa;
    v68 = [v66 initWithData:v67];

    sub_10008246C(v63, v65);
    sub_100415E48(v68);

    sub_10008246C(v63, v65);
  }

  else
  {
  }

  return v21;
}

BOOL InlineProfileEditingView.Context.canValidate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v0 = String.trim()();

  v1 = (v0._object >> 56) & 0xF;
  if ((v0._object & 0x2000000000000000) == 0)
  {
    v1 = v0._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

uint64_t InlineProfileEditingView.Context.userName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  countAndFlagsBits = String.trim()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.getter()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.setter(char a1)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100416D5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();
}

uint64_t InlineProfileEditingView.Context.userImage.getter()
{
  v1 = sub_100009DCC(&unk_1006F3B10);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  if (*(v0 + v4))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v5 = sub_100571E58();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_10001036C(v3, &unk_1006F3B10);
  if (v6 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v8;
}

uint64_t InlineProfileEditingView.Context.deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_100009DCC(&qword_1006F3B30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_100009DCC(&qword_1006F3B28);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_100009DCC(&qword_1006F3B20);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t InlineProfileEditingView.Context.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = sub_100009DCC(&qword_1006F3B30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = sub_100009DCC(&qword_1006F3B28);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = sub_100009DCC(&qword_1006F3B20);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_1004171A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InlineProfileEditingView.Context();
  result = sub_10056E408();
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.context()
{
  type metadata accessor for InlineProfileEditingView.Context();
  sub_10041B814();

  return sub_10056EA78();
}

uint64_t InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v3 = sub_10056CC38();
  __chkstk_darwin(v3 - 8);
  v83 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100572888();
  v81 = *(v5 - 8);
  v82 = v5;
  __chkstk_darwin(v5);
  v80 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v79 = v72 - v8;
  v9 = sub_100009DCC(&qword_1006F3B68);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = v72 - v11;
  v13 = sub_100009DCC(&qword_1006F3B70);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v72 - v15;
  v17 = sub_100009DCC(&qword_1006F3B78);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = v72 - v19;
  v21 = sub_100009DCC(&qword_1006F3B80);
  v72[2] = v21;
  __chkstk_darwin(v21);
  v85 = v72 - v22;
  v23 = sub_100009DCC(&qword_1006F3B88);
  v77 = *(v23 - 8);
  v78 = v23;
  __chkstk_darwin(v23);
  v76 = v72 - v24;
  v86 = sub_100009DCC(&qword_1006F3B90);
  __chkstk_darwin(v86);
  v87 = v72 - v25;
  *v12 = sub_10056F218();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v26 = sub_100009DCC(&qword_1006F3B98);
  sub_100417BCC(v2, &v12[*(v26 + 44)]);
  v27 = [objc_opt_self() quaternarySystemFillColor];
  v28 = sub_100570528();
  v29 = sub_10056FA38();
  v30 = &v12[*(v10 + 44)];
  *v30 = v28;
  v30[8] = v29;
  sub_1005709E8();
  sub_10056EDF8();
  sub_100019B40(v12, v16, &qword_1006F3B68);
  v31 = &v16[*(v14 + 44)];
  v32 = v97;
  *(v31 + 4) = v96;
  *(v31 + 5) = v32;
  *(v31 + 6) = v98;
  v33 = v93;
  *v31 = v92;
  *(v31 + 1) = v33;
  v34 = v95;
  *(v31 + 2) = v94;
  *(v31 + 3) = v34;
  sub_1005709E8();
  sub_10056EDF8();
  sub_100019B40(v16, v20, &qword_1006F3B70);
  v35 = &v20[*(v18 + 44)];
  v36 = v104;
  *(v35 + 4) = v103;
  *(v35 + 5) = v36;
  *(v35 + 6) = v105;
  v37 = v100;
  *v35 = v99;
  *(v35 + 1) = v37;
  v38 = v102;
  *(v35 + 2) = v101;
  *(v35 + 3) = v38;
  v39 = *(v21 + 36);
  v40 = v85;
  v41 = &v85[v39];
  v42 = *(sub_10056EDD8() + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = sub_10056F2E8();
  (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
  __asm { FMOV            V0.2D, #16.0 }

  *v41 = _Q0;
  *&v41[*(sub_100009DCC(&unk_1006F3BA0) + 36)] = 256;
  sub_100019B40(v20, v40, &qword_1006F3B78);
  v90 = 0;
  v91 = 0xE000000000000000;
  v50 = v73;
  v89 = *(v73 + 16);
  v74 = sub_100009DCC(&qword_1006F12F8);
  sub_100570698();
  v72[1] = v72;
  v88 = v50;
  sub_100009DCC(&qword_1006F3BB0);
  sub_10041B874();
  v51 = sub_10037AD68();
  sub_100010BC0(&qword_1006F3BE8, &qword_1006F3BB0);
  v75 = v51;
  v52 = v76;
  v53 = v85;
  sub_1005701A8();
  v54 = v79;
  v55 = v50;

  v56 = v80;

  v57 = v81;
  sub_10001036C(v53, &qword_1006F3B80);
  v58 = sub_1005709E8();
  v60 = v59;
  v61 = v87;
  v62 = &v87[*(v86 + 36)];
  sub_10041A4B0(v55, v62);
  v63 = (v62 + *(sub_100009DCC(&qword_1006F3BF0) + 36));
  *v63 = v58;
  v63[1] = v60;
  v64 = v82;
  (*(v77 + 32))(v61, v52, v78);
  sub_100572818();
  (*(v57 + 16))(v56, v54, v64);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v65 = qword_1006FDF00;
  sub_10056CBC8();
  v66 = sub_100572948();
  v68 = v67;
  (*(v57 + 8))(v54, v64);
  v90 = v66;
  v91 = v68;
  v89 = *(v55 + 48);
  v69 = sub_100570698();
  v85 = v72;
  __chkstk_darwin(v69);
  sub_100009DCC(&qword_1006F3BF8);
  sub_10041BAF8();
  sub_100010BC0(&qword_1006F3C10, &qword_1006F3BF8);
  v70 = v87;
  sub_100570298();

  return sub_10001036C(v70, &qword_1006F3B90);
}

uint64_t sub_100417BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v255 = a2;
  v3 = sub_100009DCC(&qword_1006F3E18);
  v251 = *(v3 - 8);
  v252 = v3;
  __chkstk_darwin(v3);
  v232 = v208 - v4;
  v5 = sub_100009DCC(&unk_1006F3E20);
  __chkstk_darwin(v5 - 8);
  v254 = v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v253 = v208 - v8;
  v9 = sub_10056CC38();
  __chkstk_darwin(v9 - 8);
  v247 = v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_100572888();
  v246 = *(v248 - 8);
  __chkstk_darwin(v248);
  v259 = v208 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v260 = v208 - v13;
  v245 = sub_100009DCC(&qword_1006F2BE0);
  __chkstk_darwin(v245);
  v228 = v208 - v14;
  v242 = sub_100009DCC(&qword_1006F3E30);
  __chkstk_darwin(v242);
  v244 = (v208 - v15);
  v16 = sub_100009DCC(&qword_1006F3E38);
  __chkstk_darwin(v16 - 8);
  v250 = v208 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v261 = v208 - v19;
  v20 = sub_100570558();
  v230 = *(v20 - 8);
  v231 = v20;
  __chkstk_darwin(v20);
  v229 = v208 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_100009DCC(&unk_1006F3E40);
  __chkstk_darwin(v239);
  v240 = (v208 - v22);
  v256 = sub_100571DC8();
  v237 = *(v256 - 8);
  __chkstk_darwin(v256);
  v224 = v208 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10056DC68();
  v226 = *(v24 - 8);
  v227 = v24;
  __chkstk_darwin(v24);
  v233 = v208 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v223 = v208 - v27;
  __chkstk_darwin(v28);
  v225 = v208 - v29;
  __chkstk_darwin(v30);
  v235 = v208 - v31;
  v236 = sub_10056DBD8();
  v234 = *(v236 - 8);
  __chkstk_darwin(v236);
  v258 = v208 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100009DCC(&qword_1006F2C40);
  __chkstk_darwin(v33 - 8);
  v219 = v208 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v214 = v208 - v36;
  v37 = sub_100009DCC(&unk_1006F3B10);
  __chkstk_darwin(v37 - 8);
  v217 = v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v216 = v208 - v40;
  __chkstk_darwin(v41);
  v213 = v208 - v42;
  v43 = sub_100009DCC(&qword_1006F3E50);
  __chkstk_darwin(v43 - 8);
  v218 = v208 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v215 = v208 - v46;
  __chkstk_darwin(v47);
  v257 = v208 - v48;
  v49 = sub_100009DCC(&qword_1006F3E58);
  v221 = *(v49 - 8);
  v222 = v49;
  __chkstk_darwin(v49);
  v220 = v208 - v50;
  v51 = sub_100009DCC(&unk_1006F3E60);
  __chkstk_darwin(v51);
  v53 = v208 - v52;
  v54 = sub_100009DCC(&qword_1006F3988);
  __chkstk_darwin(v54);
  v56 = v208 - v55;
  v238 = sub_100009DCC(&qword_1006F3E70);
  __chkstk_darwin(v238);
  v58 = v208 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v61 = v208 - v60;
  v62 = sub_100009DCC(&qword_1006F3E78);
  __chkstk_darwin(v62 - 8);
  v243 = v208 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v241 = v208 - v65;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v249 = a1;
  v66 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v262 = v66;
  if (v265._countAndFlagsBits)
  {
    v258 = v265._countAndFlagsBits;
    sub_100570538();
    v68 = v229;
    v67 = v230;
    v69 = v231;
    (*(v230 + 13))(v229, enum case for Image.ResizingMode.stretch(_:), v231);
    v257 = sub_1005705D8();

    (*(v67 + 8))(v68, v69);
    sub_1005709E8();
    sub_10056E888();
    v70 = v273;
    v71 = v274;
    v72 = v275;
    v73 = v276;
    v75 = v277;
    v74 = v278;
    LOBYTE(v265._countAndFlagsBits) = v274;
    LOBYTE(v263[0]) = v276;
    LOBYTE(v67) = sub_10056FA38();
    sub_10056E598();
    v264 = 0;
    v265._countAndFlagsBits = v257;
    v265._object = v70;
    LOBYTE(v266._countAndFlagsBits) = v71;
    v266._object = v72;
    LOBYTE(v267._countAndFlagsBits) = v73;
    v267._object = v75;
    v268._countAndFlagsBits = v74;
    LOWORD(v268._object) = 256;
    *(&v268._object + 2) = v271;
    HIWORD(v268._object) = WORD2(v271);
    LOBYTE(v269._countAndFlagsBits) = v67;
    HIDWORD(v269._countAndFlagsBits) = *(v263 + 3);
    *(&v269._countAndFlagsBits + 1) = v263[0];
    v269._object = v76;
    *&v270[0] = v77;
    *(&v270[0] + 1) = v78;
    *&v270[1] = v79;
    BYTE8(v270[1]) = 0;
    v80 = v268;
    v81 = v270[0];
    v82 = v240;
    v240[4] = v269;
    v82[5] = v81;
    *(v82 + 89) = *(v270 + 9);
    v83 = v266;
    v84 = v267;
    *v82 = v265;
    v82[1] = v83;
    v82[2] = v84;
    v82[3] = v80;
    swift_storeEnumTagMultiPayload();
    sub_10000CC8C(&v265, v263, &qword_1006F3E88);
    sub_100009DCC(&qword_1006F3E88);
    sub_10041C10C();
    sub_10041C2F8();
    v85 = v241;
    sub_10056F5B8();

    sub_10001036C(&v265, &qword_1006F3E88);
    v86 = v259;
    goto LABEL_18;
  }

  v210 = v54;
  v211 = v58;
  v212 = v51;
  v229 = v53;
  v230 = v56;
  v231 = v61;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v213;
  sub_10056E478();

  v88 = v214;
  v208[0] = *(v237 + 56);
  v208[1] = v237 + 56;
  (v208[0])(v214, 1, 1, v256);
  v89 = sub_100571E58();
  v90 = *(v89 - 8);
  v91 = (*(v90 + 48))(v87, 1, v89);
  v209 = v89;
  if (v91 == 1)
  {
    sub_10001036C(v88, &qword_1006F2C40);
    sub_10001036C(v87, &unk_1006F3B10);
    v92 = type metadata accessor for ArtworkImage.ViewModel(0);
    v93 = v257;
    (*(*(v92 - 8) + 56))(v257, 1, 1, v92);
  }

  else
  {
    v93 = v257;
    (*(v90 + 32))(v257, v87, v89);
    v92 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100019B40(v88, v93 + *(v92 + 20), &qword_1006F2C40);
    (*(*(v92 - 8) + 56))(v93, 0, 1, v92);
  }

  v94 = v258;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v95 = String.trim()();

  (*(v234 + 104))(v94, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v236);
  *(swift_allocObject() + 16) = v95;
  v96 = v215;
  sub_10000CC8C(v93, v215, &qword_1006F3E50);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v97 = *(*(v92 - 8) + 48);
  if (v97(v96, 1, v92) == 1)
  {
    sub_10001036C(v96, &qword_1006F3E50);
    v98 = 1;
    v99 = v216;
    v100 = v217;
    v101 = v209;
  }

  else
  {
    v99 = v216;
    v101 = v209;
    (*(v90 + 16))(v216, v96, v209);
    sub_10041C584(v96, type metadata accessor for ArtworkImage.ViewModel);
    v98 = 0;
    v100 = v217;
  }

  (*(v90 + 56))(v99, v98, 1, v101);
  sub_10000CC8C(v99, v100, &unk_1006F3B10);
  sub_10056DC58();
  sub_10001036C(v99, &unk_1006F3B10);
  sub_10056DC08();
  v102 = v218;
  sub_10000CC8C(v257, v218, &qword_1006F3E50);
  v103 = v97(v102, 1, v92);
  v104 = v227;
  if (v103 == 1)
  {
    sub_10001036C(v102, &qword_1006F3E50);
    v105 = v219;
    (v208[0])(v219, 1, 1, v256);
    v86 = v259;
    v106 = v226;
    v107 = v237;
LABEL_12:
    v110 = v224;
    if (qword_1006EEB38 != -1)
    {
      swift_once();
    }

    v108 = v256;
    v111 = sub_10000C49C(v256, static Artwork.CropStyle.fallback);
    (*(v107 + 16))(v110, v111, v108);
    v112 = (*(v107 + 48))(v105, 1, v108) == 1;
    v113 = v105;
    v114 = v110;
    v115 = v107;
    if (!v112)
    {
      sub_10001036C(v113, &qword_1006F2C40);
    }

    goto LABEL_17;
  }

  v105 = v219;
  sub_10000CC8C(v102 + *(v92 + 20), v219, &qword_1006F2C40);
  sub_10041C584(v102, type metadata accessor for ArtworkImage.ViewModel);
  v107 = v237;
  v108 = v256;
  v109 = (*(v237 + 48))(v105, 1, v256);
  v86 = v259;
  v106 = v226;
  if (v109 == 1)
  {
    goto LABEL_12;
  }

  v116 = v105;
  v114 = v224;
  (*(v107 + 32))(v224, v116, v108);
  v115 = v107;
LABEL_17:
  v117 = v223;
  v118 = v233;
  sub_10056DBE8();
  (*(v115 + 8))(v114, v108);
  v119 = *(v106 + 8);
  v119(v118, v104);
  v120 = v225;
  sub_10056DC18();
  v119(v117, v104);
  sub_1003CCBB0();
  v121 = v220;
  sub_10056DBF8();

  v119(v120, v104);
  v119(v235, v104);
  (*(v234 + 8))(v258, v236);
  sub_10001036C(v257, &qword_1006F3E50);
  sub_1005709E8();
  sub_10056E888();
  v122 = v229;
  (*(v221 + 32))(v229, v121, v222);
  v123 = (v122 + *(v212 + 36));
  v124 = v263[1];
  *v123 = v263[0];
  v123[1] = v124;
  v123[2] = v263[2];
  v125 = v230;
  sub_100019B40(v122, v230, &unk_1006F3E60);
  *(v125 + *(v210 + 36)) = 256;
  LOBYTE(v122) = sub_10056FA38();
  sub_10056E598();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v134 = v211;
  sub_100019B40(v125, v211, &qword_1006F3988);
  v135 = v134 + *(v238 + 36);
  *v135 = v122;
  *(v135 + 8) = v127;
  *(v135 + 16) = v129;
  *(v135 + 24) = v131;
  *(v135 + 32) = v133;
  *(v135 + 40) = 0;
  v136 = v231;
  sub_100019B40(v134, v231, &qword_1006F3E70);
  sub_10000CC8C(v136, v240, &qword_1006F3E70);
  swift_storeEnumTagMultiPayload();
  sub_100009DCC(&qword_1006F3E88);
  sub_10041C10C();
  sub_10041C2F8();
  v85 = v241;
  sub_10056F5B8();
  sub_10001036C(v136, &qword_1006F3E70);
LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v137 = String.trim()();

  v138 = (v137._object >> 56) & 0xF;
  if ((v137._object & 0x2000000000000000) == 0)
  {
    v138 = v137._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v139 = &static AccessibilityIdentifier.containerDetailHeaderTitle;
  if (v138)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v140 = String.trim()();

    v265 = v140;
    sub_10037AD68();
    v141 = sub_10056FF28();
    v143 = v142;
    v145 = v144;
    v146 = sub_10056FE78();
    v148 = v147;
    v149 = v85;
    v151 = v150;
    v153 = v152;
    sub_10001B5A4(v141, v143, v145 & 1);

    v154 = v244;
    *v244 = v146;
    v154[1] = v148;
    v86 = v259;
    v155 = v151 & 1;
    v85 = v149;
    *(v154 + 16) = v155;
    v154[3] = v153;
    v139 = &static AccessibilityIdentifier.containerDetailHeaderTitle;
    swift_storeEnumTagMultiPayload();
    sub_100401B8C();
    sub_10056F5B8();
    v156 = v248;
  }

  else
  {
    v157 = v260;
    sub_100572818();
    v158 = v246;
    v156 = v248;
    (*(v246 + 16))(v86, v157, v248);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v159 = qword_1006FDF00;
    sub_10056CBC8();
    v160 = sub_100572948();
    v162 = v161;
    (*(v158 + 8))(v260, v156);
    v271 = v160;
    v272 = v162;
    v163 = swift_allocObject();
    v164 = v249;
    v165 = v249[3];
    v163[3] = v249[2];
    v163[4] = v165;
    v163[5] = v164[4];
    v166 = v164[1];
    v163[1] = *v164;
    v163[2] = v166;
    sub_100413638(v164, &v265);
    sub_10037AD68();
    v167 = v228;
    sub_100570708();
    v168 = sub_100570508();
    KeyPath = swift_getKeyPath();
    v170 = v244;
    v171 = (v167 + *(v245 + 36));
    *v171 = KeyPath;
    v171[1] = v168;
    sub_10000CC8C(v167, v170, &qword_1006F2BE0);
    swift_storeEnumTagMultiPayload();
    sub_100401B8C();
    sub_10056F5B8();
    sub_10001036C(v167, &qword_1006F2BE0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v172 = String.trim()();

  v173 = (v172._object >> 56) & 0xF;
  if ((v172._object & 0x2000000000000000) == 0)
  {
    v173 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v173)
  {
    v174 = v260;
    sub_100572818();
    v175 = v246;
    (*(v246 + 16))(v86, v174, v156);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v176 = v139[480];
    sub_10056CBC8();
    v177 = sub_100572948();
    v179 = v178;
    (*(v175 + 8))(v260, v156);
    v271 = v177;
    v272 = v179;
    v180 = swift_allocObject();
    v181 = v249;
    v182 = v249[3];
    v180[3] = v249[2];
    v180[4] = v182;
    v180[5] = v181[4];
    v183 = v181[1];
    v180[1] = *v181;
    v180[2] = v183;
    sub_100413638(v181, &v265);
    sub_10037AD68();
    v184 = v232;
    sub_100570708();
    LOBYTE(v180) = sub_10056FA88();
    sub_10056E598();
    v186 = v185;
    v188 = v187;
    v190 = v189;
    v192 = v191;
    v193 = v184 + *(sub_100009DCC(&qword_1006F3F00) + 36);
    *v193 = v180;
    *(v193 + 8) = v186;
    *(v193 + 16) = v188;
    *(v193 + 24) = v190;
    *(v193 + 32) = v192;
    *(v193 + 40) = 0;
    v194 = swift_getKeyPath();
    v195 = v184 + *(sub_100009DCC(&qword_1006F3F08) + 36);
    *v195 = v194;
    *(v195 + 8) = 1;
    *(v195 + 16) = 0;
    v197 = v252;
    v196 = v253;
    *(v184 + *(v252 + 36)) = 0x3FF0000000000000;
    sub_100019B40(v184, v196, &qword_1006F3E18);
    v198 = 0;
  }

  else
  {
    v198 = 1;
    v197 = v252;
    v196 = v253;
  }

  (*(v251 + 56))(v196, v198, 1, v197);
  v199 = v243;
  v200 = v85;
  sub_10000CC8C(v85, v243, &qword_1006F3E78);
  v201 = v261;
  v202 = v250;
  sub_10000CC8C(v261, v250, &qword_1006F3E38);
  v203 = v254;
  sub_10000CC8C(v196, v254, &unk_1006F3E20);
  v204 = v255;
  sub_10000CC8C(v199, v255, &qword_1006F3E78);
  v205 = sub_100009DCC(&unk_1006F3F10);
  sub_10000CC8C(v202, v204 + v205[12], &qword_1006F3E38);
  v206 = v204 + v205[16];
  *v206 = 0;
  *(v206 + 8) = 1;
  sub_10000CC8C(v203, v204 + v205[20], &unk_1006F3E20);
  sub_10001036C(v196, &unk_1006F3E20);
  sub_10001036C(v201, &qword_1006F3E38);
  sub_10001036C(v200, &qword_1006F3E78);
  sub_10001036C(v203, &unk_1006F3E20);
  sub_10001036C(v202, &qword_1006F3E38);
  return sub_10001036C(v199, &qword_1006F3E78);
}

uint64_t sub_100419820@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v3 = sub_100009DCC(&qword_1006F3E08);
  __chkstk_darwin(v3 - 8);
  v85 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v101 = &v81 - v6;
  v7 = sub_10056CC38();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100572888();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v81 - v13;
  v91 = sub_100009DCC(&unk_1006F2BF0);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v83 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v95 = &v81 - v17;
  __chkstk_darwin(v18);
  v94 = &v81 - v19;
  __chkstk_darwin(v20);
  v89 = &v81 - v21;
  __chkstk_darwin(v22);
  v97 = &v81 - v23;
  __chkstk_darwin(v24);
  v100 = &v81 - v25;
  sub_100572818();
  v98 = *(v9 + 16);
  v99 = v8;
  v96 = v9 + 16;
  v98(v11, v14, v8);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v26 = qword_1006FDF00;
  v27 = qword_1006FDF00;
  sub_10056CBC8();
  v92 = v27;
  v28 = sub_100572948();
  v93 = v11;
  v30 = v29;
  v31 = *(v9 + 8);
  v32 = v99;
  v31(v14, v99);
  v103 = v28;
  v104 = v30;
  v33 = swift_allocObject();
  v34 = v9 + 8;
  v35 = a1[3];
  v33[3] = a1[2];
  v33[4] = v35;
  v33[5] = a1[4];
  v36 = a1[1];
  v33[1] = *a1;
  v33[2] = v36;
  sub_100413638(a1, v102);
  v37 = sub_10037AD68();
  sub_100570708();
  sub_100572818();
  v98(v93, v14, v32);
  sub_10056CBC8();
  v88 = v26;
  v38 = v31;
  v39 = sub_100572948();
  v41 = v40;
  v87 = v34;
  v31(v14, v32);
  v103 = v39;
  v104 = v41;
  v42 = swift_allocObject();
  v43 = a1[3];
  v42[3] = a1[2];
  v42[4] = v43;
  v42[5] = a1[4];
  v44 = a1[1];
  v42[1] = *a1;
  v42[2] = v44;
  sub_100413638(a1, v102);
  v45 = v97;
  v86 = v37;
  v46 = v93;
  sub_100570708();
  v47 = 1;
  if ([objc_opt_self() isSourceTypeAvailable:1])
  {
    v48 = v92;
    v82 = v38;
    v49 = v98;
    v50 = v99;
    v51 = [objc_opt_self() currentTraitCollection];
    v52 = [v51 userInterfaceIdiom];

    if (v52 == 6)
    {
      v47 = 1;
      v45 = v97;
      v38 = v82;
    }

    else
    {
      sub_100572818();
      v49(v46, v14, v50);
      v53 = v48;
      sub_10056CBC8();
      v54 = sub_100572948();
      v56 = v55;
      v38 = v82;
      v82(v14, v50);
      v103 = v54;
      v104 = v56;
      v57 = swift_allocObject();
      v58 = a1[3];
      v57[3] = a1[2];
      v57[4] = v58;
      v57[5] = a1[4];
      v59 = a1[1];
      v57[1] = *a1;
      v57[2] = v59;
      sub_100413638(a1, v102);
      v60 = v89;
      sub_100570708();
      (*(v90 + 32))(v101, v60, v91);
      v47 = 0;
      v45 = v97;
    }
  }

  v61 = v90;
  v62 = v91;
  (*(v90 + 56))(v101, v47, 1, v91);
  sub_100572818();
  v63 = v99;
  v98(v46, v14, v99);
  v64 = v92;
  sub_10056CBC8();
  v65 = sub_100572948();
  v67 = v66;
  v38(v14, v63);
  v103 = v65;
  v104 = v67;
  v68 = swift_allocObject();
  v69 = a1[3];
  v68[3] = a1[2];
  v68[4] = v69;
  v68[5] = a1[4];
  v70 = a1[1];
  v68[1] = *a1;
  v68[2] = v70;
  sub_100413638(a1, v102);
  v71 = v89;
  sub_100570708();
  v72 = *(v61 + 16);
  v73 = v94;
  v72(v94, v100, v62);
  v74 = v95;
  v72(v95, v45, v62);
  v75 = v85;
  sub_10000CC8C(v101, v85, &qword_1006F3E08);
  v76 = v83;
  v72(v83, v71, v62);
  v77 = v84;
  v72(v84, v73, v62);
  v78 = sub_100009DCC(&qword_1006F3E10);
  v72(&v77[v78[12]], v74, v62);
  sub_10000CC8C(v75, &v77[v78[16]], &qword_1006F3E08);
  v72(&v77[v78[20]], v76, v62);
  v79 = *(v61 + 8);
  v79(v71, v62);
  sub_10001036C(v101, &qword_1006F3E08);
  v79(v97, v62);
  v79(v100, v62);
  v79(v76, v62);
  sub_10001036C(v75, &qword_1006F3E08);
  v79(v95, v62);
  return (v79)(v94, v62);
}

uint64_t sub_10041A29C()
{
  sub_100009DCC(&unk_1006F3DF0);
  sub_100570688();
  sub_100009DCC(&qword_1006F12F8);
  return sub_100570688();
}

uint64_t sub_10041A328(uint64_t a1)
{
  v2 = sub_100009DCC(&unk_1006F3B10);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = *(a1 + 8);
  sub_100415E48(0);
  v9 = sub_100571E58();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000CC8C(v7, v4, &unk_1006F3B10);

  sub_10056E488();
  sub_10001036C(v7, &unk_1006F3B10);
  v10 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v8 + v10) = 1;
  return result;
}

uint64_t sub_10041A4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for InlineProfileEditingView.Context();
  sub_10041B814();
  sub_10056EA88();
  swift_getKeyPath();
  sub_10056EA98();

  v23 = *(&v30 + 1);
  v24 = v30;
  v6 = v31;
  v29 = *(a1 + 64);
  sub_100009DCC(&unk_1006F3DF0);
  sub_100570698();
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v29 = *(a1 + 32);
  sub_100009DCC(&qword_1006F12F8);
  sub_100570698();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  if (qword_1006EEC20 != -1)
  {
    swift_once();
  }

  v13 = static UIImagePickerController.profileImagePickerProperties;
  *v5 = swift_getKeyPath();
  sub_100009DCC(&unk_1006EEDB0);
  swift_storeEnumTagMultiPayload();
  v14 = (v5 + v3[7]);
  v15 = v3[9];
  v16 = (v5 + v3[5]);
  *v16 = v24;
  v16[1] = v23;
  v16[2] = v6;
  v17 = v5 + v3[6];
  *v17 = v7;
  *(v17 + 1) = v8;
  v17[16] = v9;
  v18 = v5 + v3[8];
  *v18 = v10;
  *(v18 + 1) = v11;
  v18[16] = v12;
  *v14 = 0;
  v14[1] = 0;
  *(v5 + v15) = v13;

  sub_1005709E8();
  sub_10056E888();
  v19 = v25;
  sub_10041C024(v5, v25);
  v20 = (v19 + *(sub_100009DCC(&qword_1006F3E00) + 36));
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  v20[2] = v32;
  return sub_10041C584(v5, type metadata accessor for ImagePicker);
}

uint64_t sub_10041A750@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a1 = v3;
  return result;
}

uint64_t sub_10041A7D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v3 = sub_100009DCC(&unk_1006F3DC0);
  __chkstk_darwin(v3 - 8);
  v88 = &v76 - v4;
  v5 = sub_100009DCC(&unk_1006F2BF0);
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v90 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v99 = &v76 - v8;
  __chkstk_darwin(v9);
  v85 = &v76 - v10;
  v84 = sub_100009DCC(&qword_1006F3DD0);
  __chkstk_darwin(v84);
  v98 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = &v76 - v13;
  __chkstk_darwin(v14);
  v97 = &v76 - v15;
  v16 = sub_10056CC38();
  __chkstk_darwin(v16 - 8);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100572888();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  v87 = sub_100009DCC(&qword_1006F3DD8);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v96 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v102 = &v76 - v28;
  v89 = a1;
  v29 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v92 = v29;
  sub_10056E478();

  v82 = v103;
  v81 = v104;
  sub_100572818();
  v30 = *(v20 + 16);
  v95 = v20 + 16;
  v94 = v30;
  v30(v22, v25, v19);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v31 = qword_1006FDF00;
  v32 = qword_1006FDF00;
  v76 = v18;
  sub_10056CBC8();
  v33 = v32;
  v77 = v22;
  v79 = v31;
  v34 = sub_100572948();
  v36 = v35;
  v93 = *(v20 + 8);
  v93(v25, v19);
  type metadata accessor for InlineProfileEditingView.Context();
  sub_10041B814();
  sub_10056EA88();
  swift_getKeyPath();
  sub_10056EA98();

  v105 = v34;
  v106 = v36;
  v80 = sub_10037AD68();
  sub_100570AB8();
  sub_100572818();
  v37 = v77;
  v78 = v19;
  v94(v77, v25, v19);
  sub_10056CBC8();
  v38 = sub_100572948();
  v40 = v39;
  v93(v25, v19);
  v103 = v38;
  v104 = v40;
  v41 = v85;
  sub_100570708();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v42 = String.trim()();

  v43 = (v42._object >> 56) & 0xF;
  if ((v42._object & 0x2000000000000000) == 0)
  {
    v43 = v42._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v44 = v43 == 0;
  KeyPath = swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v47 = v100;
  v48 = v83;
  (*(v100 + 32))(v83, v41, v101);
  v49 = (v48 + *(v84 + 36));
  *v49 = KeyPath;
  v49[1] = sub_100034F8C;
  v49[2] = v46;
  v50 = v97;
  sub_100019B40(v48, v97, &qword_1006F3DD0);
  sub_100572818();
  v51 = v78;
  v94(v37, v25, v78);
  sub_10056CBC8();
  v52 = sub_100572948();
  v54 = v53;
  v93(v25, v51);
  v105 = v52;
  v106 = v54;
  v55 = v88;
  sub_10056E578();
  v56 = sub_10056E588();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = swift_allocObject();
  v58 = v89;
  v59 = v89[3];
  *(v57 + 48) = v89[2];
  *(v57 + 64) = v59;
  *(v57 + 80) = v58[4];
  v60 = v58[1];
  *(v57 + 16) = *v58;
  *(v57 + 32) = v60;
  v61 = v81;
  *(v57 + 96) = v82;
  *(v57 + 104) = v61;
  sub_100413638(v58, &v103);
  v62 = v99;
  sub_1005706F8();
  v63 = v86;
  v64 = *(v86 + 16);
  v65 = v96;
  v66 = v87;
  v64(v96, v102, v87);
  sub_10000CC8C(v50, v98, &qword_1006F3DD0);
  v67 = *(v47 + 16);
  v68 = v90;
  v69 = v101;
  v67(v90, v62, v101);
  v70 = v91;
  v64(v91, v65, v66);
  v71 = sub_100009DCC(&qword_1006F3DE0);
  v72 = v98;
  sub_10000CC8C(v98, &v70[*(v71 + 48)], &qword_1006F3DD0);
  v67(&v70[*(v71 + 64)], v68, v69);
  v73 = *(v100 + 8);
  v73(v99, v69);
  sub_10001036C(v97, &qword_1006F3DD0);
  v74 = *(v63 + 8);
  v74(v102, v66);
  v73(v68, v69);
  sub_10001036C(v72, &qword_1006F3DD0);
  return (v74)(v96, v66);
}

uint64_t sub_10041B2DC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10041B35C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

uint64_t sub_10041B3E0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v6[2] = a2;
  v6[3] = a3;
  sub_10000CC8C(&v7, v6, &qword_1006F3DE8);

  return sub_10056E488();
}

uint64_t sub_10041B4C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();
}

uint64_t sub_10041B544(uint64_t a1)
{
  v2 = sub_100009DCC(&unk_1006F3B10);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_10000CC8C(a1, &v9 - v6, &unk_1006F3B10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000CC8C(v7, v4, &unk_1006F3B10);

  sub_10056E488();
  return sub_10001036C(v7, &unk_1006F3B10);
}

uint64_t sub_10041B674@<X0>(uint64_t a1@<X8>)
{
  sub_100570668();
  sub_100570668();
  sub_100570668();
  sub_100570668();
  type metadata accessor for InlineProfileEditingView.Context();
  sub_10041B814();
  result = sub_10056EA78();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

void sub_10041B798(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100415E48(v1);
}

uint64_t type metadata accessor for InlineProfileEditingView.Context()
{
  result = qword_1006F3C40;
  if (!qword_1006F3C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10041B814()
{
  result = qword_1006F3B60;
  if (!qword_1006F3B60)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3B60);
  }

  return result;
}

unint64_t sub_10041B874()
{
  result = qword_1006F3BB8;
  if (!qword_1006F3BB8)
  {
    sub_100010324(&qword_1006F3B80);
    sub_10041B988(&qword_1006F3BC0, &qword_1006F3B78, &unk_10059F898, sub_10041B958);
    sub_100010BC0(&qword_1006F0788, &unk_1006F3BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3BB8);
  }

  return result;
}

uint64_t sub_10041B988(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10041BA0C()
{
  result = qword_1006F3BD0;
  if (!qword_1006F3BD0)
  {
    sub_100010324(&qword_1006F3B68);
    sub_100010BC0(&qword_1006F3BD8, &qword_1006F3BE0);
    sub_100010BC0(&qword_1006F33C8, &qword_1006F33D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3BD0);
  }

  return result;
}

unint64_t sub_10041BAF8()
{
  result = qword_1006F3C00;
  if (!qword_1006F3C00)
  {
    sub_100010324(&qword_1006F3B90);
    sub_100010324(&qword_1006F3B80);
    sub_100010324(&qword_1006F3BB0);
    sub_10041B874();
    sub_10037AD68();
    sub_100010BC0(&qword_1006F3BE8, &qword_1006F3BB0);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006F3C08, &qword_1006F3BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3C00);
  }

  return result;
}

uint64_t sub_10041BC84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10041BCCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10041BD38()
{
  sub_1002CA904(319, &qword_1006F3C50, &unk_1006F3B10);
  if (v0 <= 0x3F)
  {
    sub_10041BE74();
    if (v1 <= 0x3F)
    {
      sub_1002CA904(319, &unk_1006F3C60, &qword_1006EF6A0);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10041BE74()
{
  if (!qword_1006F3C58)
  {
    v0 = sub_10056E4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006F3C58);
    }
  }
}

uint64_t sub_10041BEC4()
{
  sub_100010324(&qword_1006F3B90);
  sub_100010324(&qword_1006F3BF8);
  sub_10041BAF8();
  sub_10037AD68();
  sub_100010BC0(&qword_1006F3C10, &qword_1006F3BF8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10041BFB4()
{

  return swift_deallocObject();
}

uint64_t sub_10041C024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10041C0D4()
{

  return swift_deallocObject();
}

unint64_t sub_10041C10C()
{
  result = qword_1006F3E90;
  if (!qword_1006F3E90)
  {
    sub_100010324(&qword_1006F3E88);
    sub_10041C1C4(&qword_1006F3E98, &qword_1006F3EA0, &unk_10059FB08, sub_10041C274);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3E90);
  }

  return result;
}

uint64_t sub_10041C1C4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2);
    a4();
    sub_100010BC0(&unk_1006F3520, &qword_1006F3EC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10041C274()
{
  result = qword_1006F3EA8;
  if (!qword_1006F3EA8)
  {
    sub_100010324(&unk_1006F3EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3EA8);
  }

  return result;
}

unint64_t sub_10041C2F8()
{
  result = qword_1006F3EC8;
  if (!qword_1006F3EC8)
  {
    sub_100010324(&qword_1006F3E70);
    sub_10041C1C4(&qword_1006F3ED0, &qword_1006F3988, &unk_10059F538, sub_10041C3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3EC8);
  }

  return result;
}

unint64_t sub_10041C3B0()
{
  result = qword_1006F3ED8;
  if (!qword_1006F3ED8)
  {
    sub_100010324(&unk_1006F3E60);
    sub_1003CCBB0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3ED8);
  }

  return result;
}

uint64_t sub_10041C4C8()
{

  return swift_deallocObject();
}

uint64_t sub_10041C584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HeightLimitedButtonTextView.init(action:body:trailingView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  a3();
  v9 = type metadata accessor for HeightLimitedButtonTextView();
  result = a4(v9, v10, v11, v12);
  v14 = (a5 + *(v9 + 56));
  *v14 = a1;
  v14[1] = a2;
  return result;
}

uint64_t HeightLimitedButtonTextView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_100010324(&qword_1006F3F20);
  v33 = a1 + 5;
  v3 = a1[2];
  sub_10056ECA8();
  sub_10056ECA8();
  v31 = a1[3];
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  sub_1005707E8();
  sub_10056ECA8();
  WitnessTable = swift_getWitnessTable();
  v47 = &protocol witness table for _CompositingGroupEffect;
  v30 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v42 = sub_100570718();
  v43 = sub_10056ED78();
  v44 = swift_getWitnessTable();
  v45 = sub_10041CC58();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  v26[3] = swift_getWitnessTable();
  v26[0] = sub_10056E868();
  v29 = *(v26[0] - 8);
  __chkstk_darwin(v26[0]);
  v5 = v26 - v4;
  v6 = sub_10056ECA8();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v26[1] = swift_getWitnessTable();
  v26[2] = sub_10056EE08();
  v9 = sub_10056ECA8();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v26 - v13;
  v15 = a1[4];
  v16 = v32;
  sub_1005702C8();
  sub_10056FA08();
  *&v17 = v15;
  *(&v17 + 1) = *v33;
  *&v18 = v3;
  *(&v18 + 1) = v31;
  v35 = v18;
  v36 = v17;
  v37 = v16;
  sub_10056E858();
  sub_1005709E8();
  v19 = sub_10041DA2C();
  v40 = v15;
  v41 = v19;
  v20 = swift_getWitnessTable();
  v21 = v26[0];
  sub_100570308();
  (*(v29 + 8))(v5, v21);
  (*(v28 + 8))(v8, v6);
  v22 = swift_getWitnessTable();
  v38 = v20;
  v39 = v22;
  v23 = swift_getWitnessTable();
  sub_1003CE294(v11, v9, v23);
  v24 = *(v27 + 8);
  v24(v11, v9);
  sub_1003CE294(v14, v9, v23);
  return (v24)(v14, v9);
}

unint64_t sub_10041CC58()
{
  result = qword_1006F3F28;
  if (!qword_1006F3F28)
  {
    sub_10056ED78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3F28);
  }

  return result;
}

uint64_t sub_10041CCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a5;
  v70 = a3;
  v52 = a1;
  v74 = a6;
  v8 = sub_10056ED78();
  v62 = v8;
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v72 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  sub_1005707E8();
  v10 = sub_10056ECA8();
  WitnessTable = swift_getWitnessTable();
  v89 = &protocol witness table for _CompositingGroupEffect;
  v56 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v68 = v10;
  v67 = swift_getWitnessTable();
  v11 = sub_100570718();
  v63 = v11;
  v69 = *(v11 - 8);
  __chkstk_darwin(v11);
  v58 = &v50 - v12;
  v13 = swift_getWitnessTable();
  v61 = v13;
  v60 = sub_10041CC58();
  v84 = v11;
  v85 = v8;
  v86 = v13;
  v87 = v60;
  v64 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v57 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v59 = &v50 - v16;
  sub_100010324(&qword_1006F3F20);
  v51 = a2;
  v17 = sub_10056ECA8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v50 - v19;
  v21 = sub_10056ECA8();
  v75 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v50 - v25;
  sub_1005703B8();
  v27 = sub_10041E248();
  v83[4] = a4;
  v83[5] = v27;
  v28 = a4;
  v29 = swift_getWitnessTable();
  sub_100570398();
  (*(v18 + 8))(v20, v17);
  v83[2] = v29;
  v83[3] = &protocol witness table for _FixedSizeLayout;
  v54 = swift_getWitnessTable();
  v30 = v26;
  v53 = v23;
  sub_1003CE294(v23, v21, v54);
  v55 = *(v75 + 8);
  v56 = (v75 + 8);
  v55(v23, v21);
  v31 = v51;
  v32 = v70;
  v84 = v51;
  v85 = v70;
  v33 = v71;
  v86 = v28;
  v87 = v71;
  type metadata accessor for HeightLimitedButtonTextView();
  v76 = v31;
  v77 = v32;
  v78 = v28;
  v79 = v33;
  v80 = v52;

  v34 = v58;
  sub_1005706D8();
  v35 = v72;
  sub_10056ED68();
  v36 = v57;
  v37 = v63;
  v38 = v62;
  v39 = v61;
  v40 = v60;
  sub_10056FFE8();
  (*(v73 + 8))(v35, v38);
  (*(v69 + 8))(v34, v37);
  v84 = v37;
  v85 = v38;
  v86 = v39;
  v87 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v59;
  v43 = OpaqueTypeMetadata2;
  sub_1003CE294(v36, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v44 = v65;
  v45 = *(v65 + 8);
  v46 = v36;
  v45(v36, v43);
  v47 = v53;
  (*(v75 + 16))(v53, v30, v21);
  v84 = v47;
  (*(v44 + 16))(v46, v42, v43);
  v85 = v46;
  v83[0] = v21;
  v83[1] = v43;
  v81 = v54;
  v82 = OpaqueTypeConformance2;
  sub_10042FBC4(&v84, 2uLL, v83);
  v45(v42, v43);
  v48 = v55;
  v55(v30, v21);
  v45(v46, v43);
  return v48(v47, v21);
}

uint64_t sub_10041D4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a4;
  v25 = a5;
  v21 = a2;
  v22 = a3;
  v23 = a1;
  v26 = a6;
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  v6 = sub_1005707E8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = sub_10056ECA8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_10056F388();
  sub_10056F1E8();
  v27 = v21;
  v28 = v22;
  v29 = v24;
  v30 = v25;
  v31 = v23;
  sub_1005707D8();
  WitnessTable = swift_getWitnessTable();
  sub_100570118();
  (*(v7 + 8))(v9, v6);
  v32 = WitnessTable;
  v33 = &protocol witness table for _CompositingGroupEffect;
  v18 = swift_getWitnessTable();
  sub_1003CE294(v13, v10, v18);
  v19 = *(v11 + 8);
  v19(v13, v10);
  sub_1003CE294(v16, v10, v18);
  return (v19)(v16, v10);
}

uint64_t sub_10041D7B4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v35 = a6;
  v10 = *(a3 - 1);
  __chkstk_darwin(a1);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v17 = *(v16 - 8);
  __chkstk_darwin(v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v32 - v22;
  v33 = v24;
  sub_1003CE294(v25, v26, v24);
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v27 = v34;
  v42 = v34;
  v28 = type metadata accessor for HeightLimitedButtonTextView();
  sub_1003CE294(a1 + *(v28 + 52), a3, v27);
  (*(v17 + 16))(v20, v23, a2);
  v39 = v20;
  (*(v10 + 16))(v12, v15, a3);
  v40 = v12;
  v38[0] = a2;
  v38[1] = a3;
  v36 = v33;
  v37 = v27;
  sub_10042FBC4(&v39, 2uLL, v38);
  v29 = *(v10 + 8);
  v29(v15, a3);
  v30 = *(v17 + 8);
  v30(v23, a2);
  v29(v12, a3);
  return (v30)(v20, a2);
}

unint64_t sub_10041DA2C()
{
  result = qword_1006F3F30[0];
  if (!qword_1006F3F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006F3F30);
  }

  return result;
}

unint64_t sub_10041DAD0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1003CC840();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10041DB74(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_DWORD *sub_10041DD44(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = result;
      bzero(result, v16);
      result = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(result + v16) = v21;
      }

      else
      {
        *(result + v16) = v21;
      }
    }

    else if (v20)
    {
      *(result + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(result + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v16) = 0;
  }

  else if (v20)
  {
    *(result + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = ((result + v13) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      v26 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v26 = a2 & 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        *v26 = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t sub_10041DFA8()
{
  sub_10056ECA8();
  sub_100010324(&qword_1006F3F20);
  sub_10056ECA8();
  sub_10056ECA8();
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  sub_1005707E8();
  sub_10056ECA8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100570718();
  sub_10056ED78();
  swift_getWitnessTable();
  sub_10041CC58();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  sub_10056E868();
  swift_getWitnessTable();
  sub_10056EE08();
  sub_10056ECA8();
  sub_10041DA2C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_10041E248()
{
  result = qword_1006F3FB8;
  if (!qword_1006F3FB8)
  {
    sub_100010324(&qword_1006F3F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3FB8);
  }

  return result;
}

uint64_t MoreLabel.init(color:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MoreLabel();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_100009DCC(&unk_1006EEE30);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  result = swift_getKeyPath();
  *v6 = result;
  v6[8] = 0;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for MoreLabel()
{
  result = qword_1006F4078;
  if (!qword_1006F4078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoreLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v1 = sub_10056FEF8();
  v79 = *(v1 - 8);
  v80 = v1;
  __chkstk_darwin(v1);
  v78 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10056F198();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009DCC(&qword_1006F3938);
  v75 = v5;
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = sub_100009DCC(&qword_1006F3FC0);
  __chkstk_darwin(v8);
  v76 = &v70 - v9;
  Int.seconds.getter(44);
  sub_10056F2A8();
  v10 = sub_10056FF08();
  v12 = v11;
  v73 = v13;
  v74 = v14;
  v15 = &v7[*(v5 + 36)];
  v16 = *(sub_100009DCC(&qword_1006F3940) + 28);
  v17 = enum case for Text.Case.uppercase(_:);
  v18 = sub_10056FE68();
  v19 = *(v18 - 8);
  v20 = v17;
  v21 = v8;
  (*(v19 + 104))(v15 + v16, v20, v18);
  (*(v19 + 56))(v15 + v16, 0, 1, v18);
  *v15 = swift_getKeyPath();
  *v7 = v10;
  *(v7 + 1) = v12;
  v23 = v76;
  v22 = v77;
  v7[16] = v73 & 1;
  *(v7 + 3) = v74;
  sub_10056FB88();
  sub_10041EEC4();
  sub_10056FFA8();
  sub_10001036C(v7, &qword_1006F3938);
  v24 = sub_10056FC48();
  KeyPath = swift_getKeyPath();
  v26 = (v23 + *(sub_100009DCC(&qword_1006F3FD8) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = *v22;
  v28 = swift_getKeyPath();
  v29 = (v23 + *(v21 + 36));
  *v29 = v28;
  v29[1] = v27;
  v30 = v22 + *(type metadata accessor for MoreLabel() + 24);
  v31 = *v30;
  if (v30[8] == 1)
  {
    v98 = v31 & 1;
  }

  else
  {

    sub_10041F02C(v31, 0);
    sub_100573438();
    v32 = sub_10056F9D8();
    sub_10056DE58();

    v33 = v70;
    sub_10056F188();
    swift_getAtKeyPath();
    sub_100053068(v31, 0);
    (*(v71 + 8))(v33, v72);
  }

  v34 = v78;
  sub_10056FEE8();
  sub_10041F038();
  v35 = v81;
  sub_1005703E8();
  (*(v79 + 8))(v34, v80);
  sub_10041F1E4(v23);
  v36 = sub_10056FA68();
  sub_10056E598();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v35 + *(sub_100009DCC(&qword_1006F3FF0) + 36);
  *v45 = v36;
  *(v45 + 8) = v38;
  *(v45 + 16) = v40;
  *(v45 + 24) = v42;
  *(v45 + 32) = v44;
  *(v45 + 40) = 0;
  v46 = sub_10056FA48();
  sub_10056E598();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v35 + *(sub_100009DCC(&qword_1006F3FF8) + 36);
  *v55 = v46;
  *(v55 + 8) = v48;
  *(v55 + 16) = v50;
  *(v55 + 24) = v52;
  *(v55 + 32) = v54;
  *(v55 + 40) = 0;
  v56 = sub_10056F218();
  v90 = 0;
  sub_10041EAD4(&v83);
  v93 = v85;
  v94 = v86;
  v95 = v87;
  v96 = v88;
  v91 = v83;
  v92 = v84;
  v97[2] = v85;
  v97[3] = v86;
  v97[4] = v87;
  v97[5] = v88;
  v97[0] = v83;
  v97[1] = v84;
  sub_10000CC8C(&v91, &v82, &qword_1006F4000);
  sub_10001036C(v97, &qword_1006F4000);
  *&v89[39] = v93;
  *&v89[55] = v94;
  *&v89[71] = v95;
  *&v89[87] = v96;
  *&v89[7] = v91;
  *&v89[23] = v92;
  v57 = v90;
  v58 = v35 + *(sub_100009DCC(&qword_1006F4008) + 36);
  v59 = *(sub_100009DCC(&qword_1006F4010) + 36);
  v60 = enum case for BlendMode.destinationOut(_:);
  v61 = sub_100570A78();
  (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
  v62 = *&v89[32];
  *(v58 + 65) = *&v89[48];
  v63 = *&v89[80];
  *(v58 + 81) = *&v89[64];
  *(v58 + 97) = v63;
  v64 = *&v89[16];
  *(v58 + 17) = *v89;
  *(v58 + 33) = v64;
  *v58 = v56;
  *(v58 + 8) = 0;
  *(v58 + 16) = v57;
  *(v58 + 112) = *&v89[95];
  *(v58 + 49) = v62;
  v65 = sub_1005709E8();
  v67 = v66;
  result = sub_100009DCC(&qword_1006F4018);
  v69 = (v58 + *(result + 36));
  *v69 = v65;
  v69[1] = v67;
  return result;
}

uint64_t sub_10041EAD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10056EC88();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  type metadata accessor for MoreLabel();
  sub_1003BE998(v8);
  (*(v3 + 104))(v5, enum case for LayoutDirection.rightToLeft(_:), v2);
  v9 = sub_10056EC78();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  sub_100009DCC(&qword_1006F03D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057B500;
  if (v9)
  {
    *(v11 + 32) = sub_1005704A8();
    v12 = sub_1005704B8();
  }

  else
  {
    *(v11 + 32) = sub_1005704B8();
    v12 = sub_1005704A8();
  }

  *(v11 + 40) = v12;
  sub_100570968();
  sub_100570B58();
  sub_100570B68();
  sub_10056EA68();
  sub_1005709E8();
  sub_10056E888();
  v13 = sub_1005704A8();
  v14 = v27;
  v20[2] = v26;
  v20[3] = v27;
  v15 = v28;
  v20[4] = v28;
  v16 = v29;
  v21 = v29;
  v17 = v24;
  v18 = v25;
  v20[0] = v24;
  v20[1] = v25;
  *(a1 + 32) = v26;
  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 80) = v16;
  *(a1 + 88) = v13;
  sub_10000CC8C(v20, v22, &qword_1006F0890);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  return sub_10001036C(v22, &qword_1006F0890);
}

uint64_t sub_10041ED90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10056F078();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10041EDC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10056F078();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10041EE18(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F40D8);
  __chkstk_darwin(v2 - 8);
  sub_10000CC8C(a1, &v5 - v3, &qword_1006F40D8);
  return sub_10056F0D8();
}

unint64_t sub_10041EEC4()
{
  result = qword_1006F3FC8;
  if (!qword_1006F3FC8)
  {
    sub_100010324(&qword_1006F3938);
    sub_100010BC0(&qword_1006F3FD0, &qword_1006F3940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3FC8);
  }

  return result;
}

uint64_t sub_10041EF7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056F088();
  *a1 = result;
  return result;
}

uint64_t sub_10041EFD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056EF48();
  *a1 = result;
  return result;
}

uint64_t sub_10041F02C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_10041F038()
{
  result = qword_1006F3FE0;
  if (!qword_1006F3FE0)
  {
    sub_100010324(&qword_1006F3FC0);
    sub_10041F0F0();
    sub_100010BC0(&unk_1006F3EF0, &unk_1006F2C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3FE0);
  }

  return result;
}

unint64_t sub_10041F0F0()
{
  result = qword_1006F3FE8;
  if (!qword_1006F3FE8)
  {
    sub_100010324(&qword_1006F3FD8);
    sub_100010324(&qword_1006F3938);
    sub_10041EEC4();
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&unk_1006F2DD0, &qword_1006F1268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F3FE8);
  }

  return result;
}

uint64_t sub_10041F1E4(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F3FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10041F27C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&qword_1006F1110);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10041F34C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006F1110);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10041F3FC()
{
  sub_10041F490();
  if (v0 <= 0x3F)
  {
    sub_10041F4E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10041F490()
{
  if (!qword_1006F1190)
  {
    sub_10056EC88();
    v0 = sub_10056E6D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006F1190);
    }
  }
}

void sub_10041F4E8()
{
  if (!qword_1006F2B20)
  {
    v0 = sub_10056E6D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006F2B20);
    }
  }
}

unint64_t sub_10041F53C()
{
  result = qword_1006F40B8;
  if (!qword_1006F40B8)
  {
    sub_100010324(&qword_1006F4008);
    sub_10041F5F4();
    sub_100010BC0(&qword_1006F40D0, &qword_1006F4018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F40B8);
  }

  return result;
}

unint64_t sub_10041F5F4()
{
  result = qword_1006F40C0;
  if (!qword_1006F40C0)
  {
    sub_100010324(&qword_1006F3FF8);
    sub_10041F680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F40C0);
  }

  return result;
}

unint64_t sub_10041F680()
{
  result = qword_1006F40C8;
  if (!qword_1006F40C8)
  {
    sub_100010324(&qword_1006F3FF0);
    sub_100010324(&qword_1006F3FC0);
    sub_10041F038();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F40C8);
  }

  return result;
}

double Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a6;
  *(&v16 + 1) = a7;
  *&v17 = a8;
  *(&v17 + 1) = a9;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  *&v18[4] = a6;
  *&v18[5] = a7;
  *&v18[6] = a8;
  *&v18[7] = a9;
  sub_10041F7D4(&v14, &v13);
  sub_10041F80C(v18);
  v10 = v15;
  *a5 = v14;
  a5[1] = v10;
  result = *&v16;
  v12 = v17;
  a5[2] = v16;
  a5[3] = v12;
  return result;
}

char *sub_10041F83C(void *a1)
{
  v2 = v1;
  [a1 setType:*v1];
  v4 = *(v1 + 2);
  if (v4)
  {
    sub_1003A7908(v4);
    sub_1000D3B98(0, &qword_1006F1F20);
    v5.super.isa = sub_100572D08().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  [a1 setLocations:v5.super.isa];

  isa = *(v2 + 3);
  if (isa)
  {
    sub_1000D3B98(0, &qword_1006F2E68);
    isa = sub_100572D08().super.isa;
  }

  [a1 setInterpolations:isa];

  v7 = *(v2 + 1);
  if (!v7)
  {
    goto LABEL_19;
  }

  if (v7 >> 62)
  {
    v8 = sub_100574178();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
LABEL_18:
    v7 = sub_100572D08().super.isa;

LABEL_19:
    [a1 setColors:v7];

    [a1 setStartPoint:{v2[4], v2[5]}];
    return [a1 setEndPoint:{v2[6], v2[7]}];
  }

  v20 = _swiftEmptyArrayStorage;
  result = sub_1004753A8(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v20;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = sub_100573F58();
      }

      else
      {
        v12 = *(v7 + v10 + 4);
      }

      v13 = v12;
      v14 = [v12 CGColor];
      _s3__C7CGColorCMa_0(0);
      v19 = v15;

      *&v18 = v14;
      v20 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_1004753A8((v16 > 1), v17 + 1, 1);
        v11 = v20;
      }

      ++v10;
      v11[2] = v17 + 1;
      sub_1000F51DC(&v18, &v11[4 * v17 + 4]);
    }

    while (v8 != v10);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id Gradient.View.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_10041F7D4(a1, v14);
  v13.receiver = v4;
  v13.super_class = v2;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_10041F83C(v11);

  sub_10041F80C(a1);
  return v9;
}

id Gradient.View.init(configuration:)(_OWORD *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v6;
  v7 = a1[3];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v7;
  sub_10041F7D4(a1, v13);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = [v8 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  sub_10041F83C(v10);

  sub_10041F80C(a1);
  return v8;
}

double Gradient.View.typedConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v10 = *v3;
  v11 = v4;
  v5 = v3[3];
  v12 = v3[2];
  v13 = v5;
  sub_10041F7D4(&v10, v9);
  v6 = v11;
  *a1 = v10;
  a1[1] = v6;
  result = *&v12;
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  return result;
}

uint64_t Gradient.View.typedConfiguration.setter(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v19[0] = *v3;
  v19[1] = v4;
  v5 = *(v3 + 3);
  v20 = *(v3 + 2);
  v21 = v5;
  v22[0] = v19[0];
  v22[1] = v4;
  v22[2] = v20;
  v22[3] = v5;
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v6;
  v7 = a1[3];
  *(v3 + 2) = a1[2];
  *(v3 + 3) = v7;
  sub_10041F7D4(v19, v18);
  sub_10041F7D4(a1, v18);
  sub_10041F80C(v22);
  v8 = *(v3 + 1);
  v18[0] = *v3;
  v18[1] = v8;
  v9 = *(v3 + 3);
  v18[2] = *(v3 + 2);
  v18[3] = v9;
  sub_10041F7D4(v18, v17);
  v10 = _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v19);
  sub_10041F80C(v18);
  if (v10)
  {
    sub_10041F80C(v19);
  }

  else
  {
    v11 = *(v3 + 1);
    v17[0] = *v3;
    v17[1] = v11;
    v12 = *(v3 + 3);
    v17[2] = *(v3 + 2);
    v17[3] = v12;
    sub_10041F7D4(v17, v16);
    v13 = [v1 layer];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    sub_10041F83C(v14);
    sub_10041F80C(v19);
    sub_10041F80C(a1);

    a1 = v17;
  }

  return sub_10041F80C(a1);
}

void (*Gradient.View.typedConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_10041F7D4(v4, (v4 + 16));
  return sub_100420058;
}

void sub_100420058(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 208);
  if (a2)
  {
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    sub_10041F7D4((v2 + 4), (v2 + 20));
    Gradient.View.typedConfiguration.setter(v2 + 4);
    v5 = v2[13];
    v2[16] = v2[12];
    v2[17] = v5;
    v6 = v2[15];
    v2[18] = v2[14];
    v2[19] = v6;
    sub_10041F80C((v2 + 16));
  }

  else
  {
    v2[8] = v2[12];
    v2[9] = v3;
    v7 = v2[15];
    v2[10] = v2[14];
    v2[11] = v7;
    Gradient.View.typedConfiguration.setter(v2 + 8);
  }

  free(v2);
}

id sub_100420180(_OWORD *a1)
{
  v3 = a1[1];
  v15[0] = *a1;
  v15[1] = v3;
  v4 = a1[3];
  v15[2] = a1[2];
  v15[3] = v4;
  v5 = objc_allocWithZone(v1);
  v6 = &v5[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v8 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v8;
  sub_10041F7D4(v15, v14);
  v13.receiver = v5;
  v13.super_class = v1;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_10041F83C(v11);

  sub_10041F80C(v15);
  return v9;
}

uint64_t sub_10042027C@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = v3[3];
  v10 = v3[2];
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_10041F7D4(v9, v8);
}

uint64_t sub_1004202E8(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return Gradient.View.typedConfiguration.setter(v4);
}

void (*sub_10042031C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_10041F7D4(v4, (v4 + 16));
  return sub_100420058;
}

uint64_t sub_1004203D8@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for Gradient;
  a1[4] = sub_100420DD0();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v5 = v4[1];
  v10[0] = *v4;
  v10[1] = v5;
  v7 = v4[3];
  v11 = v4[2];
  v6 = v11;
  v12 = v7;
  v3[1] = v10[0];
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  return sub_10041F7D4(v10, v9);
}