uint64_t sub_1000203D4()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_100022180();
  v0[6] = v0[5];
  v8 = sub_100022440();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_100022470();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10001F99C();
  sub_100021318();
  sub_100022100();
  (*(v2 + 16))(v12, v1, v3);
  sub_100022120();
  sub_100022140();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100020640()
{
  v0 = sub_100001EF0(&qword_100034FC0, &qword_100029C40);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000343E0 != -1)
  {
    swift_once();
  }

  sub_100022330();

  sub_100021318();
  sub_1000020BC(&qword_100034FC8, &qword_100034FC0, &qword_100029C40);
  sub_100022320();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_1000207B4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100022170();
  return sub_100003240;
}

uint64_t (*sub_100020828(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_100022170();
  return sub_100005320;
}

uint64_t sub_10002089C()
{
  if (qword_1000343E0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000208FC()
{
  result = qword_100034EC0;
  if (!qword_100034EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034EC0);
  }

  return result;
}

unint64_t sub_100020954()
{
  result = qword_100034EC8;
  if (!qword_100034EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034EC8);
  }

  return result;
}

uint64_t sub_100020A64@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000343D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  v3 = sub_100004D44(v2, qword_10003CB78);

  return sub_1000052A4(v3, a1);
}

uint64_t sub_100020AE8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005314;

  return sub_10001FD74(a1, v5, v4);
}

uint64_t sub_100020B94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100021B98();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100020BDC()
{
  result = qword_100034ED0;
  if (!qword_100034ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034ED0);
  }

  return result;
}

uint64_t sub_100020C54()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  v3 = [v2 isSilenceUnknownCallersEnabledForPhone];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100020D14()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  [v2 setSilenceUnknownCallersEnabledForPhone:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100020DA4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000224D0() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100020E34, 0, 0);
}

uint64_t sub_100020E34()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100001EF0(&qword_100034EB8, qword_1000294F0);
  sub_1000224B0();
  sub_1000020BC(&qword_100034F98, &qword_100034FA0, &qword_100029C10);
  *v2 = sub_1000224A0();

  v3 = v0[1];

  return v3();
}

unint64_t sub_100020F54()
{
  result = qword_100034ED8;
  if (!qword_100034ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034ED8);
  }

  return result;
}

uint64_t sub_100020FA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000215BC();
  *v5 = v2;
  v5[1] = sub_100003BC0;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10002105C()
{
  result = qword_100034EE0;
  if (!qword_100034EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034EE0);
  }

  return result;
}

unint64_t sub_1000210B4()
{
  result = qword_100034EE8;
  if (!qword_100034EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034EE8);
  }

  return result;
}

unint64_t sub_100021108()
{
  result = qword_100034EF0;
  if (!qword_100034EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034EF0);
  }

  return result;
}

uint64_t sub_10002115C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000215BC();
  *v6 = v2;
  v6[1] = sub_10000533C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100021210(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000215BC();
  *v5 = v2;
  v5[1] = sub_10000531C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000212C4()
{
  result = qword_100034EF8;
  if (!qword_100034EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034EF8);
  }

  return result;
}

unint64_t sub_100021318()
{
  result = qword_100034F00;
  if (!qword_100034F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034F00);
  }

  return result;
}

unint64_t sub_100021370()
{
  result = qword_100034F08;
  if (!qword_100034F08)
  {
    sub_100002074(&qword_100034F10, qword_100029790);
    sub_100021318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034F08);
  }

  return result;
}

uint64_t sub_1000213F4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100020F54();
  *v6 = v2;
  v6[1] = sub_1000042E4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000214AC()
{
  result = qword_100034F18;
  if (!qword_100034F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034F18);
  }

  return result;
}

unint64_t sub_100021504()
{
  result = qword_100034F20;
  if (!qword_100034F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034F20);
  }

  return result;
}

unint64_t sub_10002155C()
{
  result = qword_100034F28;
  if (!qword_100034F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034F28);
  }

  return result;
}

unint64_t sub_1000215BC()
{
  result = qword_100034F30;
  if (!qword_100034F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034F30);
  }

  return result;
}

unint64_t sub_100021614()
{
  result = qword_100034F38;
  if (!qword_100034F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034F38);
  }

  return result;
}

uint64_t sub_100021668@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000343C0 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EF0(&qword_100034F90, &qword_100029BF8);
  v3 = sub_100004D44(v2, qword_10003CB30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100021720()
{
  result = qword_100034F40;
  if (!qword_100034F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034F40);
  }

  return result;
}

unint64_t sub_100021778()
{
  result = qword_100034F48;
  if (!qword_100034F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034F48);
  }

  return result;
}

unint64_t sub_1000217D4()
{
  result = qword_100034F50;
  if (!qword_100034F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034F50);
  }

  return result;
}

uint64_t sub_100021828@<X0>(uint64_t *a1@<X8>)
{
  sub_10000BF88();
  result = sub_100022160();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100021868()
{
  sub_100021B44();
  v1 = sub_1000223B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100021950(uint64_t a1)
{
  v2 = sub_100021108();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000219A0()
{
  result = qword_100034F68;
  if (!qword_100034F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034F68);
  }

  return result;
}

uint64_t sub_1000219F4(uint64_t a1)
{
  v2 = sub_10000BF88();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100021A40(uint64_t a1)
{
  v2 = sub_1000217D4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100021B44()
{
  result = qword_100034F88;
  if (!qword_100034F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034F88);
  }

  return result;
}

uint64_t sub_100021B98()
{
  v0 = sub_100001EF0(&qword_100034568, &qword_100025748);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000223A0();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001EF0(&qword_100034570, &qword_100025750);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_1000224D0();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100001EF0(&qword_100034FA8, &unk_100029C18);
  sub_1000224B0();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_100022130();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_100021108();
  v28 = sub_1000221A0();
  sub_100001EF0(&qword_100034580, &qword_100025760);
  sub_1000224B0();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_100022650();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_1000221B0();
  return v28;
}