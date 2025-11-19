uint64_t sub_100001838@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100001EF0(&qword_1000343F8, &unk_100026030);
  v27 = *(v1 - 8);
  v2 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v27 - v3;
  v5 = sub_100001EF0(&qword_100034400, &unk_100024FC0);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = sub_100001EF0(&qword_100034408, &unk_100026040);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v14 = &v27 - v13;
  v15 = sub_100001EF0(&qword_100034410, &qword_100024FD0);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v19 = &v27 - v18;
  swift_getKeyPath();
  sub_100001EF0(&qword_100034418, &unk_100025000);
  sub_100001F3C();
  sub_100001F90();
  sub_1000225C0();
  sub_100022540();
  v20 = sub_1000020BC(&qword_100034450, &qword_1000343F8, &unk_100026030);
  sub_100022570();

  (*(v27 + 8))(v4, v1);
  sub_100022540();
  v35 = v1;
  v36 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  sub_100022550();

  (*(v29 + 8))(v9, v22);
  v35 = v22;
  v36 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_100022560();
  (*(v31 + 8))(v14, v24);
  v35 = v24;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_100022580();
  return (*(v33 + 8))(v19, v25);
}

uint64_t sub_100001D48@<X0>(uint64_t a1@<X8>)
{
  sub_100022540();
  sub_1000225B0();
  v2 = sub_1000225A0();
  result = sub_100001EF0(&qword_100034418, &unk_100025000);
  *(a1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_100001DCC@<X0>(uint64_t a1@<X8>)
{
  sub_100022540();
  result = sub_100022590();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100001E3C@<X0>(uint64_t a1@<X8>)
{
  sub_100022540();
  result = sub_100022590();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100001EF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001F3C()
{
  result = qword_100034420;
  if (!qword_100034420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034420);
  }

  return result;
}

unint64_t sub_100001F90()
{
  result = qword_100034428;
  if (!qword_100034428)
  {
    sub_100002074(&qword_100034418, &unk_100025000);
    sub_1000020BC(&qword_100034430, &qword_100034438, qword_100026080);
    sub_1000020BC(&qword_100034440, &qword_100034448, &unk_100025010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034428);
  }

  return result;
}

uint64_t sub_100002074(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000020BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002074(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002104()
{
  sub_100002074(&qword_100034410, &qword_100024FD0);
  sub_100002074(&qword_100034408, &unk_100026040);
  sub_100002074(&qword_100034400, &unk_100024FC0);
  sub_100002074(&qword_1000343F8, &unk_100026030);
  sub_1000020BC(&qword_100034450, &qword_1000343F8, &unk_100026030);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000225C()
{
  result = qword_100034458;
  if (!qword_100034458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034458);
  }

  return result;
}

uint64_t sub_1000022F4()
{
  v0 = sub_100001EF0(&qword_100034550, &qword_100025728);
  sub_100004D7C(v0, qword_10003C838);
  sub_100004D44(v0, qword_10003C838);
  sub_100003D84();
  return sub_1000223F0();
}

uint64_t sub_100002378()
{
  v0 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000224D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100022460();
  sub_100004D7C(v7, qword_10003C850);
  sub_100004D44(v7, qword_10003C850);
  sub_1000224B0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100022450();
}

uint64_t sub_1000024E8()
{
  v0 = sub_1000224D0();
  sub_100004D7C(v0, qword_10003C868);
  sub_100004D44(v0, qword_10003C868);
  return sub_1000224B0();
}

uint64_t sub_10000254C()
{
  v0 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  sub_100004D7C(v0, qword_10003C880);
  v1 = sub_100004D44(v0, qword_10003C880);
  sub_1000222D0();
  v2 = sub_1000222E0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000260C()
{
  result = swift_getKeyPath();
  qword_10003C898 = result;
  return result;
}

uint64_t sub_100002644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100001EF0(&qword_100034588, &qword_100025770) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100001EF0(&qword_100034590, &qword_100025778) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100001EF0(&qword_100034598, &qword_100025780) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_100022130();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100001EF0(&qword_1000345A0, &qword_100025788);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100002824, 0, 0);
}

uint64_t sub_100002824()
{
  v1 = v0[8];
  sub_100022180();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_100003D84();
  *v3 = v0;
  v3[1] = sub_1000028F4;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_100005318, 0, &type metadata for FTSilenceUnknownCallersToggleEntity, v4);
}

uint64_t sub_1000028F4()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_1000029F0, 0, 0);
}

uint64_t sub_1000029F0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_100022180();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_100022180();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000342A8 != -1)
  {
    swift_once();
  }

  v4 = qword_10003C898;
  *(v0 + 176) = qword_10003C898;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_1000020BC(&qword_100034558, &qword_100034560, &qword_100025740);
  *v6 = v0;
  v6[1] = sub_100002B50;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_100002B50()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100002F0C;
  }

  else
  {
    v5 = sub_100002CA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100002CA4()
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
  sub_10000225C();
  sub_100004154();
  sub_100022100();
  (*(v2 + 16))(v12, v1, v3);
  sub_100022120();
  sub_100022140();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100002F0C()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  (*(v0[17] + 8))(v0[19], v0[16]);

  v6 = v0[1];
  v7 = v0[24];

  return v6();
}

uint64_t sub_100002FD4()
{
  v0 = sub_100001EF0(&qword_1000345A8, &qword_100025790);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v6 - v3;
  if (qword_1000342A8 != -1)
  {
    swift_once();
  }

  sub_100022330();

  sub_100004154();
  sub_1000020BC(&qword_1000345B0, &qword_1000345A8, &qword_100025790);
  sub_100022320();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100003148@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_100022180();
  *a1 = v5;
  return result;
}

uint64_t sub_100003184(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;

  sub_100022190();
}

uint64_t (*sub_1000031CC(uint64_t *a1))()
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

uint64_t sub_100003244@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_100022180();
  *a1 = v5;
  return result;
}

uint64_t sub_100003280(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_100022190();
}

uint64_t (*sub_1000032B8(uint64_t *a1))()
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

void sub_10000332C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100003378()
{
  if (qword_1000342A8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000033FC()
{
  result = qword_100034470;
  if (!qword_100034470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034470);
  }

  return result;
}

unint64_t sub_100003454()
{
  result = qword_100034478;
  if (!qword_100034478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034478);
  }

  return result;
}

uint64_t sub_100003578@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000342A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  v3 = sub_100004D44(v2, qword_10003C880);

  return sub_1000052A4(v3, a1);
}

uint64_t sub_1000035FC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005314;

  return sub_100002644(a1, v5, v4);
}

uint64_t sub_1000036A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004E34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000036F0()
{
  result = qword_100034480;
  if (!qword_100034480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034480);
  }

  return result;
}

unint64_t sub_100003748()
{
  result = qword_100034488;
  if (!qword_100034488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034488);
  }

  return result;
}

uint64_t sub_1000037BC()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  v3 = [v2 isSilenceUnknownCallersEnabledForFaceTime];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000387C()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  [v2 setSilenceUnknownCallersEnabledForFaceTime:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000390C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000224D0() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000399C, 0, 0);
}

uint64_t sub_10000399C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100001EF0(&qword_100034468, qword_100025020);
  sub_1000224B0();
  sub_1000020BC(&qword_100034558, &qword_100034560, &qword_100025740);
  *v2 = sub_1000224A0();

  v3 = v0[1];

  return v3();
}

unint64_t sub_100003ABC()
{
  result = qword_100034490;
  if (!qword_100034490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034490);
  }

  return result;
}

uint64_t sub_100003B10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000045B0();
  *v5 = v2;
  v5[1] = sub_100003BC0;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_100003BC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_100003CD8()
{
  result = qword_100034498;
  if (!qword_100034498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034498);
  }

  return result;
}

unint64_t sub_100003D30()
{
  result = qword_1000344A0;
  if (!qword_1000344A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000344A0);
  }

  return result;
}

unint64_t sub_100003D84()
{
  result = qword_1000344A8;
  if (!qword_1000344A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000344A8);
  }

  return result;
}

uint64_t sub_100003DD8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000045B0();
  *v6 = v2;
  v6[1] = sub_10000533C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100003E8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000045B0();
  *v5 = v2;
  v5[1] = sub_10000531C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_100003F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003FFC;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100003FFC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_100004100()
{
  result = qword_1000344B0;
  if (!qword_1000344B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000344B0);
  }

  return result;
}

unint64_t sub_100004154()
{
  result = qword_1000344B8;
  if (!qword_1000344B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000344B8);
  }

  return result;
}

unint64_t sub_1000041AC()
{
  result = qword_1000344C0;
  if (!qword_1000344C0)
  {
    sub_100002074(&qword_1000344C8, qword_1000252C0);
    sub_100004154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000344C0);
  }

  return result;
}

uint64_t sub_100004230(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100003ABC();
  *v6 = v2;
  v6[1] = sub_1000042E4;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000042E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000043D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100005314;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100004494()
{
  result = qword_1000344D0;
  if (!qword_1000344D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000344D0);
  }

  return result;
}

unint64_t sub_1000044EC()
{
  result = qword_1000344D8;
  if (!qword_1000344D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000344D8);
  }

  return result;
}

unint64_t sub_100004544()
{
  result = qword_1000344E0;
  if (!qword_1000344E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000344E0);
  }

  return result;
}

unint64_t sub_1000045B0()
{
  result = qword_1000344E8;
  if (!qword_1000344E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000344E8);
  }

  return result;
}

unint64_t sub_100004608()
{
  result = qword_1000344F0;
  if (!qword_1000344F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000344F0);
  }

  return result;
}

uint64_t sub_10000465C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100034288 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EF0(&qword_100034550, &qword_100025728);
  v3 = sub_100004D44(v2, qword_10003C838);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100004714()
{
  result = qword_1000344F8;
  if (!qword_1000344F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000344F8);
  }

  return result;
}

unint64_t sub_10000476C()
{
  result = qword_100034500;
  if (!qword_100034500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034500);
  }

  return result;
}

unint64_t sub_1000047C8()
{
  result = qword_100034508;
  if (!qword_100034508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034508);
  }

  return result;
}

uint64_t sub_100004828@<X0>(uint64_t *a1@<X8>)
{
  sub_100003748();
  result = sub_100022160();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004868()
{
  sub_100004DE0();
  v1 = sub_1000223B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100004910@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100004D44(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000049FC(uint64_t a1)
{
  v2 = sub_100003D84();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100004A4C()
{
  result = qword_100034520;
  if (!qword_100034520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034520);
  }

  return result;
}

uint64_t sub_100004AA0(uint64_t a1)
{
  v2 = sub_100003748();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100004AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000042E4;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100004BB0(uint64_t a1)
{
  v2 = sub_1000047C8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100004C1C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100004C28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100004C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100004D44(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004D7C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_100004DE0()
{
  result = qword_100034548;
  if (!qword_100034548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034548);
  }

  return result;
}

uint64_t sub_100004E34()
{
  v0 = (*(*(sub_100001EF0(&qword_100034568, &qword_100025748) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v33 = &v25 - v1;
  v34 = sub_1000223A0();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  (__chkstk_darwin)();
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_100001EF0(&qword_100034570, &qword_100025750) - 8) + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - v14;
  v16 = sub_1000224D0();
  v32 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v26 = sub_100001EF0(&qword_100034578, &qword_100025758);
  sub_1000224B0();
  v19 = *(v17 + 56);
  v30 = v17 + 56;
  v31 = v19;
  v19(v15, 1, 1, v16);
  v36 = 0;
  v20 = sub_100022130();
  v21 = *(*(v20 - 8) + 56);
  v21(v11, 1, 1, v20);
  v21(v9, 1, 1, v20);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v22 = *(v2 + 104);
  v27 = v2 + 104;
  v28 = v22;
  v22(v5);
  sub_100003D84();
  v26 = sub_1000221A0();
  sub_100001EF0(&qword_100034580, &qword_100025760);
  sub_1000224B0();
  v31(v15, 1, 1, v32);
  v35 = 2;
  v23 = sub_100022650();
  (*(*(v23 - 8) + 56))(v33, 1, 1, v23);
  v21(v11, 1, 1, v20);
  v28(v5, v29, v34);
  sub_1000221B0();
  return v26;
}

uint64_t sub_1000052A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000536C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100001EF0(&qword_1000343F8, &unk_100026030);
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100001EF0(&qword_100034400, &unk_100024FC0);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100001EF0(&qword_100034408, &unk_100026040);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100001EF0(&qword_100034410, &qword_100024FD0);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  swift_getKeyPath();
  sub_100001EF0(&qword_100034418, &unk_100025000);
  sub_100005908();
  sub_100001F90();
  sub_1000225C0();
  sub_100022540();
  v20 = sub_1000020BC(&qword_100034450, &qword_1000343F8, &unk_100026030);
  sub_100022570();

  (*(v27 + 8))(v4, v1);
  sub_100022540();
  v35 = v1;
  v36 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  sub_100022550();

  (*(v29 + 8))(v9, v22);
  v35 = v22;
  v36 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_100022560();
  (*(v31 + 8))(v14, v24);
  v35 = v24;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_100022580();
  return (*(v33 + 8))(v19, v25);
}

uint64_t sub_10000587C@<X0>(uint64_t a1@<X8>)
{
  sub_100022540();
  sub_1000225B0();
  v2 = sub_1000225A0();
  result = sub_100001EF0(&qword_100034418, &unk_100025000);
  *(a1 + *(result + 36)) = v2;
  return result;
}

unint64_t sub_100005908()
{
  result = qword_1000345C0;
  if (!qword_1000345C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000345C0);
  }

  return result;
}

uint64_t sub_10000595C()
{
  sub_100002074(&qword_100034410, &qword_100024FD0);
  sub_100002074(&qword_100034408, &unk_100026040);
  sub_100002074(&qword_100034400, &unk_100024FC0);
  sub_100002074(&qword_1000343F8, &unk_100026030);
  sub_1000020BC(&qword_100034450, &qword_1000343F8, &unk_100026030);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100005AB4()
{
  result = qword_1000345C8;
  if (!qword_1000345C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000345C8);
  }

  return result;
}

uint64_t sub_100005B4C()
{
  v0 = sub_100001EF0(&qword_1000346B8, &qword_100025F58);
  sub_100004D7C(v0, qword_10003C8A0);
  sub_100004D44(v0, qword_10003C8A0);
  sub_100007274();
  return sub_1000223F0();
}

uint64_t sub_100005BD0()
{
  v0 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000224D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100022460();
  sub_100004D7C(v7, qword_10003C8B8);
  sub_100004D44(v7, qword_10003C8B8);
  sub_1000224B0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100022450();
}

uint64_t sub_100005D40()
{
  v0 = sub_1000224D0();
  sub_100004D7C(v0, qword_10003C8D0);
  sub_100004D44(v0, qword_10003C8D0);
  return sub_1000224B0();
}

uint64_t sub_100005DA4()
{
  v0 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  sub_100004D7C(v0, qword_10003C8E8);
  v1 = sub_100004D44(v0, qword_10003C8E8);
  sub_1000222D0();
  v2 = sub_1000222E0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100005E64()
{
  result = swift_getKeyPath();
  qword_10003C900 = result;
  return result;
}

uint64_t sub_100005E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100001EF0(&qword_100034588, &qword_100025770) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100001EF0(&qword_100034590, &qword_100025778) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100001EF0(&qword_1000346D8, &qword_100025F90) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_100022130();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100001EF0(&qword_1000346E0, &qword_100025F98);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10000606C, 0, 0);
}

uint64_t sub_10000606C()
{
  v1 = v0[8];
  sub_100022180();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_100007274();
  *v3 = v0;
  v3[1] = sub_10000613C;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_100008174, 0, &type metadata for SilenceJunkCallersToggleEntity, v4);
}

uint64_t sub_10000613C()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100006238, 0, 0);
}

uint64_t sub_100006238()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_100022180();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_100022180();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000342D0 != -1)
  {
    swift_once();
  }

  v4 = qword_10003C900;
  *(v0 + 176) = qword_10003C900;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_1000020BC(&qword_1000346C0, &qword_1000346C8, &qword_100025F70);
  *v6 = v0;
  v6[1] = sub_100006398;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_100006398()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100002F0C;
  }

  else
  {
    v5 = sub_1000064EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000064EC()
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
  sub_100005AB4();
  sub_100007484();
  sub_100022100();
  (*(v2 + 16))(v12, v1, v3);
  sub_100022120();
  sub_100022140();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100006758()
{
  v0 = sub_100001EF0(&qword_1000346E8, &qword_100025FA0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000342D0 != -1)
  {
    swift_once();
  }

  sub_100022330();

  sub_100007484();
  sub_1000020BC(&qword_1000346F0, &qword_1000346E8, &qword_100025FA0);
  sub_100022320();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_1000068CC(uint64_t *a1))()
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

uint64_t (*sub_100006940(uint64_t *a1))()
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

uint64_t sub_1000069B4()
{
  if (qword_1000342D0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100006A14()
{
  result = qword_1000345E0;
  if (!qword_1000345E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000345E0);
  }

  return result;
}

unint64_t sub_100006A6C()
{
  result = qword_1000345E8;
  if (!qword_1000345E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000345E8);
  }

  return result;
}

uint64_t sub_100006B7C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000342C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  v3 = sub_100004D44(v2, qword_10003C8E8);

  return sub_1000052A4(v3, a1);
}

uint64_t sub_100006C00(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005314;

  return sub_100005E8C(a1, v5, v4);
}

uint64_t sub_100006CAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007D04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100006CF4()
{
  result = qword_1000345F0;
  if (!qword_1000345F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000345F0);
  }

  return result;
}

unint64_t sub_100006D4C()
{
  result = qword_1000345F8;
  if (!qword_1000345F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000345F8);
  }

  return result;
}

uint64_t sub_100006DC0()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  v3 = [v2 isSilenceJunkCallingEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100006E80()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  [v2 setSilenceJunkCallingEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100006F10(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000224D0() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100006FA0, 0, 0);
}

uint64_t sub_100006FA0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100001EF0(&qword_1000345D8, qword_100025860);
  sub_1000224B0();
  sub_1000020BC(&qword_1000346C0, &qword_1000346C8, &qword_100025F70);
  *v2 = sub_1000224A0();

  v3 = v0[1];

  return v3();
}

unint64_t sub_1000070C0()
{
  result = qword_100034600;
  if (!qword_100034600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034600);
  }

  return result;
}

uint64_t sub_100007114(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100007728();
  *v5 = v2;
  v5[1] = sub_100003BC0;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000071C8()
{
  result = qword_100034608;
  if (!qword_100034608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034608);
  }

  return result;
}

unint64_t sub_100007220()
{
  result = qword_100034610;
  if (!qword_100034610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034610);
  }

  return result;
}

unint64_t sub_100007274()
{
  result = qword_100034618;
  if (!qword_100034618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034618);
  }

  return result;
}

uint64_t sub_1000072C8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100007728();
  *v6 = v2;
  v6[1] = sub_10000533C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10000737C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100007728();
  *v5 = v2;
  v5[1] = sub_10000531C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100007430()
{
  result = qword_100034620;
  if (!qword_100034620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034620);
  }

  return result;
}

unint64_t sub_100007484()
{
  result = qword_100034628;
  if (!qword_100034628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034628);
  }

  return result;
}

unint64_t sub_1000074DC()
{
  result = qword_100034630;
  if (!qword_100034630)
  {
    sub_100002074(&qword_100034638, qword_100025B00);
    sub_100007484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034630);
  }

  return result;
}

uint64_t sub_100007560(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000070C0();
  *v6 = v2;
  v6[1] = sub_1000042E4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100007618()
{
  result = qword_100034640;
  if (!qword_100034640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034640);
  }

  return result;
}

unint64_t sub_100007670()
{
  result = qword_100034648;
  if (!qword_100034648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034648);
  }

  return result;
}

unint64_t sub_1000076C8()
{
  result = qword_100034650;
  if (!qword_100034650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034650);
  }

  return result;
}

unint64_t sub_100007728()
{
  result = qword_100034658;
  if (!qword_100034658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034658);
  }

  return result;
}

unint64_t sub_100007780()
{
  result = qword_100034660;
  if (!qword_100034660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034660);
  }

  return result;
}

uint64_t sub_1000077D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000342B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EF0(&qword_1000346B8, &qword_100025F58);
  v3 = sub_100004D44(v2, qword_10003C8A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000788C()
{
  result = qword_100034668;
  if (!qword_100034668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034668);
  }

  return result;
}

unint64_t sub_1000078E4()
{
  result = qword_100034670;
  if (!qword_100034670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034670);
  }

  return result;
}

unint64_t sub_100007940()
{
  result = qword_100034678;
  if (!qword_100034678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034678);
  }

  return result;
}

uint64_t sub_100007994@<X0>(uint64_t *a1@<X8>)
{
  sub_100006D4C();
  result = sub_100022160();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000079D4()
{
  sub_100007CB0();
  v1 = sub_1000223B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100007ABC(uint64_t a1)
{
  v2 = sub_100007274();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100007B0C()
{
  result = qword_100034690;
  if (!qword_100034690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034690);
  }

  return result;
}

uint64_t sub_100007B60(uint64_t a1)
{
  v2 = sub_100006D4C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100007BAC(uint64_t a1)
{
  v2 = sub_100007940();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100007CB0()
{
  result = qword_1000346B0;
  if (!qword_1000346B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000346B0);
  }

  return result;
}

uint64_t sub_100007D04()
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
  v28 = sub_100001EF0(&qword_1000346D0, &unk_100025F78);
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
  sub_100007274();
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

uint64_t sub_1000081B8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100001EF0(&qword_1000343F8, &unk_100026030);
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100001EF0(&qword_100034400, &unk_100024FC0);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100001EF0(&qword_100034408, &unk_100026040);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100001EF0(&qword_100034410, &qword_100024FD0);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  swift_getKeyPath();
  sub_100001EF0(&qword_100034418, &unk_100025000);
  sub_100006D4C();
  sub_100001F90();
  sub_1000225C0();
  sub_100022540();
  v20 = sub_1000020BC(&qword_100034450, &qword_1000343F8, &unk_100026030);
  sub_100022570();

  (*(v27 + 8))(v4, v1);
  sub_100022540();
  v35 = v1;
  v36 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  sub_100022550();

  (*(v29 + 8))(v9, v22);
  v35 = v22;
  v36 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_100022560();
  (*(v31 + 8))(v14, v24);
  v35 = v24;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_100022580();
  return (*(v33 + 8))(v19, v25);
}

uint64_t sub_1000086CC@<X0>(uint64_t a1@<X8>)
{
  sub_100022540();
  sub_1000225B0();
  v2 = sub_1000225A0();
  result = sub_100001EF0(&qword_100034418, &unk_100025000);
  *(a1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_100008784@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100001EF0(&qword_1000343F8, &unk_100026030);
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100001EF0(&qword_100034400, &unk_100024FC0);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100001EF0(&qword_100034408, &unk_100026040);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100001EF0(&qword_100034410, &qword_100024FD0);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  swift_getKeyPath();
  sub_100001EF0(&qword_100034418, &unk_100025000);
  sub_100003748();
  sub_100001F90();
  sub_1000225C0();
  sub_100022540();
  v20 = sub_1000020BC(&qword_100034450, &qword_1000343F8, &unk_100026030);
  sub_100022570();

  (*(v27 + 8))(v4, v1);
  sub_100022540();
  v35 = v1;
  v36 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  sub_100022550();

  (*(v29 + 8))(v9, v22);
  v35 = v22;
  v36 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_100022560();
  (*(v31 + 8))(v14, v24);
  v35 = v24;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_100022580();
  return (*(v33 + 8))(v19, v25);
}

uint64_t sub_100008C94@<X0>(uint64_t a1@<X8>)
{
  sub_100022540();
  sub_1000225B0();
  v2 = sub_1000225A0();
  result = sub_100001EF0(&qword_100034418, &unk_100025000);
  *(a1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_100008D18@<X0>(uint64_t a1@<X8>)
{
  sub_100022540();
  result = sub_100022590();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_100008D98()
{
  result = qword_1000346F8;
  if (!qword_1000346F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000346F8);
  }

  return result;
}

unint64_t sub_100008DF0()
{
  result = qword_100034700;
  if (!qword_100034700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034700);
  }

  return result;
}

unint64_t sub_100008E44()
{
  result = qword_100034708;
  if (!qword_100034708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034708);
  }

  return result;
}

uint64_t sub_100008E98@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v31[1] = a2;
  v3 = sub_100001EF0(&qword_100034798, "@F");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v31 - v8;
  v10 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v31 - v15;
  v17 = sub_1000224D0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  switch(a1)
  {
    case 4:
      sub_1000224B0();
      sub_1000224B0();
      (*(v18 + 56))(v14, 0, 1, v17);
      sub_100022340();
      v23 = sub_100022350();
      (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
      TUDeviceHasChinaSKU();
      goto LABEL_5;
    case 5:
      sub_1000224B0();
      sub_1000224B0();
      v25 = *(v18 + 56);
      v24 = v18 + 56;
      v25(v16, 0, 1, v17);
      sub_100022340();
      v26 = sub_100022350();
      (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
      sub_100001EF0(&qword_1000347A0, "8F");
      v27 = *(v24 + 16);
      v28 = (*(v24 + 24) + 32) & ~*(v24 + 24);
      *(swift_allocObject() + 16) = xmmword_100026130;
      sub_1000224B0();
      sub_1000224B0();
      break;
    default:
      sub_1000224B0();
      sub_1000224B0();
      (*(v18 + 56))(v16, 0, 1, v17);
      sub_100022340();
      v29 = sub_100022350();
      (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
LABEL_5:
      sub_1000224B0();
      break;
  }

  return sub_100022360();
}

uint64_t sub_100009EC8()
{
  v0 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000224D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100022460();
  sub_100004D7C(v7, qword_10003C908);
  sub_100004D44(v7, qword_10003C908);
  sub_1000224B0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100022450();
}

uint64_t sub_10000A038(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000533C;

  return sub_10000B3B0(a1);
}

uint64_t sub_10000A0E0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000531C;

  return sub_10000B064();
}

unint64_t sub_10000A184()
{
  result = qword_100034710;
  if (!qword_100034710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034710);
  }

  return result;
}

uint64_t sub_10000A1D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003BC0;

  return sub_10000AF44();
}

unint64_t sub_10000A280()
{
  result = qword_100034718;
  if (!qword_100034718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034718);
  }

  return result;
}

unint64_t sub_10000A2D4()
{
  result = qword_100034720;
  if (!qword_100034720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034720);
  }

  return result;
}

unint64_t sub_10000A32C()
{
  result = qword_100034728;
  if (!qword_100034728)
  {
    sub_100002074(&qword_100034730, qword_1000261F8);
    sub_10000A2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034728);
  }

  return result;
}

uint64_t sub_10000A3B0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000A184();
  *v6 = v2;
  v6[1] = sub_1000042E4;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000A464(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000A508;

  return sub_10000B6FC();
}

uint64_t sub_10000A508(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_10000A620()
{
  result = qword_100034738;
  if (!qword_100034738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034738);
  }

  return result;
}

uint64_t sub_10000A674()
{
  v0 = sub_100001EF0(&qword_1000347B0, &qword_100026600);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100001EF0(&qword_1000347B8, &qword_100026608);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100008E44();
  sub_100022420();
  v9._object = 0x8000000100023970;
  v9._countAndFlagsBits = 0xD000000000000040;
  sub_100022410(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100022400();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100022410(v10);
  return sub_100022430();
}

unint64_t sub_10000A83C()
{
  result = qword_100034740;
  if (!qword_100034740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034740);
  }

  return result;
}

unint64_t sub_10000A894()
{
  result = qword_100034748;
  if (!qword_100034748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034748);
  }

  return result;
}

unint64_t sub_10000A8EC()
{
  result = qword_100034750;
  if (!qword_100034750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034750);
  }

  return result;
}

unint64_t sub_10000A948()
{
  result = qword_100034758;
  if (!qword_100034758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034758);
  }

  return result;
}

uint64_t sub_10000A99C()
{
  sub_10000AEF0();
  v1 = sub_1000223B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000AA0C()
{
  result = qword_100034760;
  if (!qword_100034760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034760);
  }

  return result;
}

unint64_t sub_10000AA64()
{
  result = qword_100034768;
  if (!qword_100034768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034768);
  }

  return result;
}

unint64_t sub_10000AAC0()
{
  result = qword_100034770;
  if (!qword_100034770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034770);
  }

  return result;
}

unint64_t sub_10000AB18()
{
  result = qword_100034778;
  if (!qword_100034778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034778);
  }

  return result;
}

uint64_t sub_10000AB78@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000342D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100022460();
  v3 = sub_100004D44(v2, qword_10003C908);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000AC24()
{
  result = qword_100034780;
  if (!qword_100034780)
  {
    sub_100002074(&qword_100034788, &qword_100026498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034780);
  }

  return result;
}

uint64_t sub_10000AC88(uint64_t a1)
{
  v2 = sub_100008E44();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000ACD8()
{
  result = qword_100034790;
  if (!qword_100034790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034790);
  }

  return result;
}

uint64_t sub_10000AD34(uint64_t a1)
{
  v2 = sub_10000AAC0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for FaceTimeSettingsDynamicDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FaceTimeSettingsDynamicDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000AEF0()
{
  result = qword_1000347A8;
  if (!qword_1000347A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000347A8);
  }

  return result;
}

uint64_t sub_10000AF60()
{
  sub_10001ED88(0, 15, 0);
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v3 = *(&_swiftEmptyArrayStorage + 2);
  do
  {
    v4 = *(&off_100030F00 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_10001ED88((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 15);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000B080()
{
  v0 = 0;
  while (2)
  {
    v3 = *(&off_100030F00 + v0 + 32);
    switch(v3)
    {
      case 1:
      case 2:
      case 5:
      case 6:
      case 8:
      case 13:
      case 14:
        v4 = [objc_allocWithZone(TUConfigurationProvider) init];
        v5 = [v4 isFaceTimeEnabledInSettings];
        goto LABEL_8;
      case 4:
        v4 = [objc_allocWithZone(TUConfigurationProvider) init];
        v5 = [v4 isRelaySecondaryAvailable];
        goto LABEL_8;
      case 7:
        v4 = [objc_allocWithZone(TUConfigurationProvider) init];
        v5 = [v4 isShareNameAndPhotosAvailable];
        goto LABEL_8;
      case 9:
        v4 = [objc_allocWithZone(TUConfigurationProvider) init];
        v5 = [v4 isAutomaticProminenceAvailable];
        goto LABEL_8;
      case 10:
        v7 = [objc_allocWithZone(TUConfigurationProvider) init];
        v8 = [v7 isFaceTimeEnabledInSettings];

        if ((v8 & 1) != 0 && [objc_opt_self() isCaptioningSupported])
        {
          goto LABEL_9;
        }

        goto LABEL_5;
      case 11:
        v4 = [objc_allocWithZone(TUConfigurationProvider) init];
        v5 = [v4 isLivePhotosAvailable];
LABEL_8:
        v6 = v5;

        if (v6)
        {
          goto LABEL_9;
        }

        goto LABEL_5;
      case 12:
        if (sub_10000F7D0())
        {
          goto LABEL_9;
        }

        goto LABEL_5;
      default:
LABEL_9:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001EDA8(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v2 = *(&_swiftEmptyArrayStorage + 2);
        v1 = *(&_swiftEmptyArrayStorage + 3);
        if (v2 >= v1 >> 1)
        {
          sub_10001EDA8((v1 > 1), v2 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v2 + 1;
        *(&_swiftEmptyArrayStorage + v2 + 32) = v3;
LABEL_5:
        if (++v0 != 15)
        {
          continue;
        }

        v9 = *(&_swiftEmptyArrayStorage + 2);
        if (v9)
        {
          sub_10001ED88(0, v9, 0);
          v10 = *(&_swiftEmptyArrayStorage + 2);
          v11 = 32;
          do
          {
            v12 = *(&_swiftEmptyArrayStorage + v11);
            v13 = *(&_swiftEmptyArrayStorage + 3);
            if (v10 >= v13 >> 1)
            {
              sub_10001ED88((v13 > 1), v10 + 1, 1);
            }

            *(&_swiftEmptyArrayStorage + 2) = v10 + 1;
            *(&_swiftEmptyArrayStorage + v10 + 32) = v12;
            ++v11;
            ++v10;
            --v9;
          }

          while (v9);
        }

        v14 = *(v16 + 8);

        return v14(&_swiftEmptyArrayStorage);
    }
  }
}

uint64_t sub_10000B3D0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    while (2)
    {
      v7 = *v3++;
      v6 = v7;
      switch(v7)
      {
        case 1:
        case 2:
        case 5:
        case 6:
        case 8:
        case 13:
        case 14:
          v8 = [objc_allocWithZone(TUConfigurationProvider) init];
          v9 = [v8 isFaceTimeEnabledInSettings];
          goto LABEL_9;
        case 4:
          v8 = [objc_allocWithZone(TUConfigurationProvider) init];
          v9 = [v8 isRelaySecondaryAvailable];
          goto LABEL_9;
        case 7:
          v8 = [objc_allocWithZone(TUConfigurationProvider) init];
          v9 = [v8 isShareNameAndPhotosAvailable];
          goto LABEL_9;
        case 9:
          v8 = [objc_allocWithZone(TUConfigurationProvider) init];
          v9 = [v8 isAutomaticProminenceAvailable];
          goto LABEL_9;
        case 10:
          v11 = [objc_allocWithZone(TUConfigurationProvider) init];
          v12 = [v11 isFaceTimeEnabledInSettings];

          if ((v12 & 1) != 0 && [objc_opt_self() isCaptioningSupported])
          {
            goto LABEL_10;
          }

          goto LABEL_6;
        case 11:
          v8 = [objc_allocWithZone(TUConfigurationProvider) init];
          v9 = [v8 isLivePhotosAvailable];
LABEL_9:
          v10 = v9;

          if (v10)
          {
            goto LABEL_10;
          }

          goto LABEL_6;
        case 12:
          if (sub_10000F7D0())
          {
            goto LABEL_10;
          }

          goto LABEL_6;
        default:
LABEL_10:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10001EDA8(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
          }

          v5 = *(&_swiftEmptyArrayStorage + 2);
          v4 = *(&_swiftEmptyArrayStorage + 3);
          if (v5 >= v4 >> 1)
          {
            sub_10001EDA8((v4 > 1), v5 + 1, 1);
          }

          *(&_swiftEmptyArrayStorage + 2) = v5 + 1;
          *(&_swiftEmptyArrayStorage + v5 + 32) = v6;
LABEL_6:
          if (--v2)
          {
            continue;
          }

          goto LABEL_21;
      }
    }
  }

LABEL_21:
  v13 = *(&_swiftEmptyArrayStorage + 2);
  if (v13)
  {
    sub_10001ED88(0, v13, 0);
    v14 = *(&_swiftEmptyArrayStorage + 2);
    v15 = 32;
    do
    {
      v16 = *(&_swiftEmptyArrayStorage + v15);
      v17 = *(&_swiftEmptyArrayStorage + 3);
      if (v14 >= v17 >> 1)
      {
        sub_10001ED88((v17 > 1), v14 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v14 + 1;
      *(&_swiftEmptyArrayStorage + v14 + 32) = v16;
      ++v15;
      ++v14;
      --v13;
    }

    while (v13);
  }

  v18 = *(v20 + 8);

  return v18(&_swiftEmptyArrayStorage);
}

uint64_t sub_10000B718()
{
  v1 = 0;
  while (2)
  {
    v4 = *(&off_100030F00 + v1 + 32);
    switch(v4)
    {
      case 1:
      case 2:
      case 5:
      case 6:
      case 8:
      case 13:
      case 14:
        v5 = [objc_allocWithZone(TUConfigurationProvider) init];
        v6 = [v5 isFaceTimeEnabledInSettings];
        goto LABEL_8;
      case 4:
        v5 = [objc_allocWithZone(TUConfigurationProvider) init];
        v6 = [v5 isRelaySecondaryAvailable];
        goto LABEL_8;
      case 7:
        v5 = [objc_allocWithZone(TUConfigurationProvider) init];
        v6 = [v5 isShareNameAndPhotosAvailable];
        goto LABEL_8;
      case 9:
        v5 = [objc_allocWithZone(TUConfigurationProvider) init];
        v6 = [v5 isAutomaticProminenceAvailable];
        goto LABEL_8;
      case 10:
        v8 = [objc_allocWithZone(TUConfigurationProvider) init];
        v9 = [v8 isFaceTimeEnabledInSettings];

        if ((v9 & 1) != 0 && [objc_opt_self() isCaptioningSupported])
        {
          goto LABEL_9;
        }

        goto LABEL_5;
      case 11:
        v5 = [objc_allocWithZone(TUConfigurationProvider) init];
        v6 = [v5 isLivePhotosAvailable];
LABEL_8:
        v7 = v6;

        if (v7)
        {
          goto LABEL_9;
        }

        goto LABEL_5;
      case 12:
        if (sub_10000F7D0())
        {
          goto LABEL_9;
        }

        goto LABEL_5;
      default:
LABEL_9:
        v13 = _swiftEmptyArrayStorage;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001EDA8(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v3 = _swiftEmptyArrayStorage[2];
        v2 = _swiftEmptyArrayStorage[3];
        if (v3 >= v2 >> 1)
        {
          sub_10001EDA8((v2 > 1), v3 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v3 + 1;
        *(&_swiftEmptyArrayStorage[4] + v3) = v4;
LABEL_5:
        if (++v1 != 15)
        {
          continue;
        }

        if (_swiftEmptyArrayStorage[2])
        {
          v10 = LOBYTE(_swiftEmptyArrayStorage[4]);
        }

        else
        {
          v10 = 15;
        }

        v11 = *(v0 + 8);

        return v11(v10);
    }
  }
}

uint64_t sub_10000B9EC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100001EF0(&qword_1000343F8, &unk_100026030);
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100001EF0(&qword_100034400, &unk_100024FC0);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100001EF0(&qword_100034408, &unk_100026040);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100001EF0(&qword_100034410, &qword_100024FD0);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  swift_getKeyPath();
  sub_100001EF0(&qword_100034418, &unk_100025000);
  sub_10000BF88();
  sub_100001F90();
  sub_1000225C0();
  sub_100022540();
  v20 = sub_1000020BC(&qword_100034450, &qword_1000343F8, &unk_100026030);
  sub_100022570();

  (*(v27 + 8))(v4, v1);
  sub_100022540();
  v35 = v1;
  v36 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  sub_100022550();

  (*(v29 + 8))(v9, v22);
  v35 = v22;
  v36 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_100022560();
  (*(v31 + 8))(v14, v24);
  v35 = v24;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_100022580();
  return (*(v33 + 8))(v19, v25);
}

uint64_t sub_10000BEFC@<X0>(uint64_t a1@<X8>)
{
  sub_100022540();
  sub_1000225B0();
  v2 = sub_1000225A0();
  result = sub_100001EF0(&qword_100034418, &unk_100025000);
  *(a1 + *(result + 36)) = v2;
  return result;
}

unint64_t sub_10000BF88()
{
  result = qword_1000347C0;
  if (!qword_1000347C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000347C0);
  }

  return result;
}

unint64_t sub_10000BFDC(char a1)
{
  result = 47;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x434E554F4E4E412FLL;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      v3 = 11;
      goto LABEL_14;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      v3 = 9;
LABEL_14:
      result = v3 | 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD00000000000002DLL;
      break;
    case 14:
      result = 0x45434E454C49532FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000C1D4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10000BFDC(*a1);
  v5 = v4;
  if (v3 == sub_10000BFDC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000226A0();
  }

  return v8 & 1;
}

unint64_t sub_10000C260()
{
  result = qword_1000347C8;
  if (!qword_1000347C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000347C8);
  }

  return result;
}

Swift::Int sub_10000C2B4()
{
  v1 = *v0;
  sub_1000226C0();
  sub_10000BFDC(v1);
  sub_100022630();

  return sub_1000226E0();
}

uint64_t sub_10000C318()
{
  sub_10000BFDC(*v0);
  sub_100022630();
}

Swift::Int sub_10000C36C()
{
  v1 = *v0;
  sub_1000226C0();
  sub_10000BFDC(v1);
  sub_100022630();

  return sub_1000226E0();
}

uint64_t sub_10000C3CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000C524(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10000C3FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000BFDC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10000C42C()
{
  result = qword_1000347D0;
  if (!qword_1000347D0)
  {
    sub_100002074(&qword_1000347D8, qword_100026760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000347D0);
  }

  return result;
}

uint64_t sub_10000C4BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10000C524(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000C524(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100030F30;
  v6._object = a2;
  v4 = sub_100022690(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000C574()
{
  result = qword_1000347E0;
  if (!qword_1000347E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000347E0);
  }

  return result;
}

uint64_t sub_10000C60C()
{
  v0 = sub_100001EF0(&qword_1000348D0, &qword_100026F08);
  sub_100004D7C(v0, qword_10003C920);
  sub_100004D44(v0, qword_10003C920);
  sub_10000DD3C();
  return sub_1000223F0();
}

uint64_t sub_10000C690()
{
  v0 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000224D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100022460();
  sub_100004D7C(v7, qword_10003C938);
  sub_100004D44(v7, qword_10003C938);
  sub_1000224B0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100022450();
}

uint64_t sub_10000C800()
{
  v0 = sub_1000224D0();
  sub_100004D7C(v0, qword_10003C950);
  sub_100004D44(v0, qword_10003C950);
  return sub_1000224B0();
}

uint64_t sub_10000C864()
{
  v0 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  sub_100004D7C(v0, qword_10003C968);
  v1 = sub_100004D44(v0, qword_10003C968);
  sub_1000222D0();
  v2 = sub_1000222E0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000C924()
{
  result = swift_getKeyPath();
  qword_10003C980 = result;
  return result;
}

uint64_t sub_10000C94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100001EF0(&qword_100034588, &qword_100025770) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100001EF0(&qword_100034590, &qword_100025778) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100001EF0(&qword_1000348F0, &qword_100026F40) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_100022130();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100001EF0(&qword_1000348F8, &qword_100026F48);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10000CB2C, 0, 0);
}

uint64_t sub_10000CB2C()
{
  v1 = v0[8];
  sub_100022180();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_10000DD3C();
  *v3 = v0;
  v3[1] = sub_10000CBFC;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10000EC3C, 0, &type metadata for BrandedCallingSecondaryToggleEntity, v4);
}

uint64_t sub_10000CBFC()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_10000CCF8, 0, 0);
}

uint64_t sub_10000CCF8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_100022180();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_100022180();
  *(v0 + 201) = *(v0 + 200);
  if (qword_100034300 != -1)
  {
    swift_once();
  }

  v4 = qword_10003C980;
  *(v0 + 176) = qword_10003C980;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_1000020BC(&qword_1000348D8, &qword_1000348E0, &qword_100026F20);
  *v6 = v0;
  v6[1] = sub_10000CE58;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_10000CE58()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100002F0C;
  }

  else
  {
    v5 = sub_10000CFAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000CFAC()
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
  sub_10000C574();
  sub_10000DF4C();
  sub_100022100();
  (*(v2 + 16))(v12, v1, v3);
  sub_100022120();
  sub_100022140();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000D218()
{
  v0 = sub_100001EF0(&qword_100034900, &qword_100026F50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_100034300 != -1)
  {
    swift_once();
  }

  sub_100022330();

  sub_10000DF4C();
  sub_1000020BC(&qword_100034908, &qword_100034900, &qword_100026F50);
  sub_100022320();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_10000D38C(uint64_t *a1))()
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

uint64_t (*sub_10000D400(uint64_t *a1))()
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

uint64_t sub_10000D474()
{
  if (qword_100034300 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000D4D4()
{
  result = qword_1000347F8;
  if (!qword_1000347F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000347F8);
  }

  return result;
}

unint64_t sub_10000D52C()
{
  result = qword_100034800;
  if (!qword_100034800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034800);
  }

  return result;
}

uint64_t sub_10000D63C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000342F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  v3 = sub_100004D44(v2, qword_10003C968);

  return sub_1000052A4(v3, a1);
}

uint64_t sub_10000D6C0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005314;

  return sub_10000C94C(a1, v5, v4);
}

uint64_t sub_10000D76C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000E7CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000D7B4()
{
  result = qword_100034808;
  if (!qword_100034808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034808);
  }

  return result;
}

unint64_t sub_10000D80C()
{
  result = qword_100034810;
  if (!qword_100034810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034810);
  }

  return result;
}

uint64_t sub_10000D880()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  v3 = [v2 isBrandedCallingEnabled:0];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000D944()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  [v2 setBrandedCallingEnabled:v1 primary:0];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000D9D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000224D0() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000DA68, 0, 0);
}

uint64_t sub_10000DA68()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100001EF0(&qword_1000347F0, qword_100026800);
  sub_1000224B0();
  sub_1000020BC(&qword_1000348D8, &qword_1000348E0, &qword_100026F20);
  *v2 = sub_1000224A0();

  v3 = v0[1];

  return v3();
}

unint64_t sub_10000DB88()
{
  result = qword_100034818;
  if (!qword_100034818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034818);
  }

  return result;
}

uint64_t sub_10000DBDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000E1F0();
  *v5 = v2;
  v5[1] = sub_100003BC0;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10000DC90()
{
  result = qword_100034820;
  if (!qword_100034820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034820);
  }

  return result;
}

unint64_t sub_10000DCE8()
{
  result = qword_100034828;
  if (!qword_100034828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034828);
  }

  return result;
}

unint64_t sub_10000DD3C()
{
  result = qword_100034830;
  if (!qword_100034830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034830);
  }

  return result;
}

uint64_t sub_10000DD90(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000E1F0();
  *v6 = v2;
  v6[1] = sub_10000533C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10000DE44(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000E1F0();
  *v5 = v2;
  v5[1] = sub_10000531C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10000DEF8()
{
  result = qword_100034838;
  if (!qword_100034838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034838);
  }

  return result;
}

unint64_t sub_10000DF4C()
{
  result = qword_100034840;
  if (!qword_100034840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034840);
  }

  return result;
}

unint64_t sub_10000DFA4()
{
  result = qword_100034848;
  if (!qword_100034848)
  {
    sub_100002074(&qword_100034850, qword_100026AA0);
    sub_10000DF4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034848);
  }

  return result;
}

uint64_t sub_10000E028(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000DB88();
  *v6 = v2;
  v6[1] = sub_1000042E4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10000E0E0()
{
  result = qword_100034858;
  if (!qword_100034858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034858);
  }

  return result;
}

unint64_t sub_10000E138()
{
  result = qword_100034860;
  if (!qword_100034860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034860);
  }

  return result;
}

unint64_t sub_10000E190()
{
  result = qword_100034868;
  if (!qword_100034868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034868);
  }

  return result;
}

unint64_t sub_10000E1F0()
{
  result = qword_100034870;
  if (!qword_100034870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034870);
  }

  return result;
}

unint64_t sub_10000E248()
{
  result = qword_100034878;
  if (!qword_100034878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034878);
  }

  return result;
}

uint64_t sub_10000E29C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000342E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EF0(&qword_1000348D0, &qword_100026F08);
  v3 = sub_100004D44(v2, qword_10003C920);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000E354()
{
  result = qword_100034880;
  if (!qword_100034880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034880);
  }

  return result;
}

unint64_t sub_10000E3AC()
{
  result = qword_100034888;
  if (!qword_100034888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034888);
  }

  return result;
}

unint64_t sub_10000E408()
{
  result = qword_100034890;
  if (!qword_100034890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034890);
  }

  return result;
}

uint64_t sub_10000E45C@<X0>(uint64_t *a1@<X8>)
{
  sub_10000D80C();
  result = sub_100022160();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000E49C()
{
  sub_10000E778();
  v1 = sub_1000223B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10000E584(uint64_t a1)
{
  v2 = sub_10000DD3C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000E5D4()
{
  result = qword_1000348A8;
  if (!qword_1000348A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000348A8);
  }

  return result;
}

uint64_t sub_10000E628(uint64_t a1)
{
  v2 = sub_10000D80C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10000E674(uint64_t a1)
{
  v2 = sub_10000E408();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000E778()
{
  result = qword_1000348C8;
  if (!qword_1000348C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000348C8);
  }

  return result;
}

uint64_t sub_10000E7CC()
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
  v28 = sub_100001EF0(&qword_1000348E8, &unk_100026F28);
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
  sub_10000DD3C();
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

uint64_t sub_10000EC80@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100001EF0(&qword_1000343F8, &unk_100026030);
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100001EF0(&qword_100034400, &unk_100024FC0);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100001EF0(&qword_100034408, &unk_100026040);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100001EF0(&qword_100034410, &qword_100024FD0);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  swift_getKeyPath();
  sub_100001EF0(&qword_100034418, &unk_100025000);
  sub_10000F224();
  sub_100001F90();
  sub_1000225C0();
  sub_100022540();
  v20 = sub_1000020BC(&qword_100034450, &qword_1000343F8, &unk_100026030);
  sub_100022570();

  (*(v27 + 8))(v4, v1);
  sub_100022540();
  v35 = v1;
  v36 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  sub_100022550();

  (*(v29 + 8))(v9, v22);
  v35 = v22;
  v36 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_100022560();
  (*(v31 + 8))(v14, v24);
  v35 = v24;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_100022580();
  return (*(v33 + 8))(v19, v25);
}

uint64_t sub_10000F190@<X0>(uint64_t a1@<X8>)
{
  sub_100022540();
  sub_1000225B0();
  v2 = sub_1000225A0();
  result = sub_100001EF0(&qword_100034418, &unk_100025000);
  *(a1 + *(result + 36)) = v2;
  return result;
}

unint64_t sub_10000F224()
{
  result = qword_100034910;
  if (!qword_100034910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034910);
  }

  return result;
}

id sub_10000F278()
{
  result = [objc_allocWithZone(type metadata accessor for Features()) init];
  static Features.shared = result;
  return result;
}

id Features.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *Features.shared.unsafeMutableAddressor()
{
  if (qword_100034308 != -1)
  {
    swift_once();
  }

  return &static Features.shared;
}

id static Features.shared.getter()
{
  if (qword_100034308 != -1)
  {
    swift_once();
  }

  v1 = static Features.shared;

  return v1;
}

uint64_t Features.isViewpointCorrectionEnabled.getter()
{
  v2[3] = &type metadata for Features.AVConference;
  v2[4] = sub_10000F434();
  v0 = sub_100022510();
  sub_10000F488(v2);
  return v0 & 1;
}

unint64_t sub_10000F434()
{
  result = qword_100034918;
  if (!qword_100034918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034918);
  }

  return result;
}

uint64_t sub_10000F488(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

Swift::Int sub_10000F4DC()
{
  sub_1000226C0();
  sub_1000226D0(0);
  return sub_1000226E0();
}

Swift::Int sub_10000F548()
{
  sub_1000226C0();
  sub_1000226D0(0);
  return sub_1000226E0();
}

id Features.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Features();
  return objc_msgSendSuper2(&v2, "init");
}

id Features.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Features();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for Features.AVConference(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Features.AVConference(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000F77C()
{
  result = qword_100034948;
  if (!qword_100034948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034948);
  }

  return result;
}

uint64_t sub_10000F7D0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    v3 = sub_100022610();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      sub_100022660();
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v21 = v18;
    v22 = v19;
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  sub_10000FD1C(&v21, &v18);
  v5 = *(&v19 + 1);
  sub_10000FD8C(&v18);
  if (!v5)
  {
    sub_10000FD8C(&v21);
    LOBYTE(v21) = 1;
    *(&v22 + 1) = &type metadata for Bool;
  }

  v6 = objc_opt_self();
  v7 = [v6 currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = [objc_opt_self() isEyeContactSupported];
  }

  v10 = [v6 currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 && !v9)
  {
    goto LABEL_20;
  }

  v12 = MGGetBoolAnswer();

  if (!v12)
  {
    goto LABEL_20;
  }

  if (qword_100034308 != -1)
  {
    swift_once();
  }

  *(&v19 + 1) = &type metadata for Features.AVConference;
  v20 = sub_10000F434();
  v13 = sub_100022510();
  sub_10000F488(&v18);
  if (v13)
  {
    result = sub_10000FD1C(&v21, &v16);
    if (v17)
    {
      sub_10000FD8C(&v21);

      sub_10000FDF4(&v16, &v18);
      swift_dynamicCast();
      return v15;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
LABEL_20:

    sub_10000FD8C(&v21);
    return 0;
  }

  return result;
}

uint64_t sub_10000FA68()
{
  v21 = sub_100022500();
  v0 = *(v21 - 8);
  v1 = v0[8];
  __chkstk_darwin(v21);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(VMVoicemailManager) init];
  v4 = [v22 accounts];
  sub_10000FCD0();
  v5 = sub_100022640();

  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100022680())
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v19 = v5 & 0xFFFFFFFFFFFFFF8;
    v20 = v0 + 1;
    v9 = &CNKFeatures__properties;
    while (1)
    {
      if (v8)
      {
        v10 = sub_100022670();
      }

      else
      {
        if (v7 >= *(v19 + 16))
        {
          goto LABEL_15;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v0 = v10;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v10 *&v9[27]])
      {
        v12 = v5;
        v13 = i;
        v14 = v9;
        v15 = [v0 UUID];
        sub_1000224F0();

        isa = sub_1000224E0().super.isa;
        (*v20)(v3, v21);
        v17 = [v22 isPasscodeChangeSupportedForAccountUUID:isa];

        v9 = v14;
        i = v13;
        v5 = v12;

        if (v17)
        {

          return 1;
        }
      }

      else
      {
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return 0;
}

unint64_t sub_10000FCD0()
{
  result = qword_100034950;
  if (!qword_100034950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100034950);
  }

  return result;
}

uint64_t sub_10000FD1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EF0(&qword_100034958, &unk_100027100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FD8C(uint64_t a1)
{
  v2 = sub_100001EF0(&qword_100034958, &unk_100027100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_10000FDF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000FE30@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_100001EF0(&qword_1000343F8, &unk_100026030);
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100001EF0(&qword_100034400, &unk_100024FC0);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100001EF0(&qword_100034408, &unk_100026040);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = sub_100001EF0(&qword_100034410, &qword_100024FD0);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  swift_getKeyPath();
  sub_100001EF0(&qword_100034418, &unk_100025000);
  sub_10000D80C();
  sub_100001F90();
  sub_1000225C0();
  sub_100022540();
  v20 = sub_1000020BC(&qword_100034450, &qword_1000343F8, &unk_100026030);
  sub_100022570();

  (*(v27 + 8))(v4, v1);
  sub_100022540();
  v35 = v1;
  v36 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v28;
  sub_100022550();

  (*(v29 + 8))(v9, v22);
  v35 = v22;
  v36 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_100022560();
  (*(v31 + 8))(v14, v24);
  v35 = v24;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  sub_100022580();
  return (*(v33 + 8))(v19, v25);
}

uint64_t sub_100010340@<X0>(uint64_t a1@<X8>)
{
  sub_100022540();
  sub_1000225B0();
  v2 = sub_1000225A0();
  result = sub_100001EF0(&qword_100034418, &unk_100025000);
  *(a1 + *(result + 36)) = v2;
  return result;
}

BOOL sub_1000103CC(char a1)
{
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  v3 = v2;
  switch(a1)
  {
    case 1:
      v5 = [v2 isIncomingCallsAvailableForPhone];
      goto LABEL_25;
    case 2:
      v5 = [v2 isCallAnnouncementAvailableForPhone];
      goto LABEL_25;
    case 4:
      if (![v2 isShareNameAndPhotosAvailable])
      {
        goto LABEL_19;
      }

      v4 = [objc_opt_self() sharedInstance];
      if (!v4)
      {
        __break(1u);
        JUMPOUT(0x1000105C0);
      }

      goto LABEL_18;
    case 5:
      v5 = [v2 isWiFiCallingAvailable];
      goto LABEL_25;
    case 6:
      v5 = [v2 isRelayPrimaryAvailable];
      goto LABEL_25;
    case 7:
      v5 = [v2 isRespondwithTextAvailable];
      goto LABEL_25;
    case 8:
      v5 = [v2 isCallForwardingAvailable];
      goto LABEL_25;
    case 9:
      v5 = [v2 isCallWaitingAvailable];
      goto LABEL_25;
    case 10:
      v5 = [v2 isCallRecordingAvailable];
      goto LABEL_25;
    case 11:
      v5 = [v2 isShowMyCallerIDAvailable];
      goto LABEL_25;
    case 12:
      v5 = [v2 isCallScreeningAvailable];
      goto LABEL_25;
    case 14:
      v5 = [v2 isCallBlockingAndIdentificationAvailable];
      goto LABEL_25;
    case 15:
      v5 = [v2 isBlockedContactsAvailable];
      goto LABEL_25;
    case 16:
      goto LABEL_5;
    case 17:
      if (![v2 isSIMAvailable])
      {
        goto LABEL_19;
      }

      v6 = sub_10000FA68();

      return v6 & 1;
    case 18:
      v5 = [v2 isDialAssistAvailable];
      goto LABEL_25;
    default:
      if ([v2 isSIMAvailable])
      {
        v4 = [objc_opt_self() sharedInstance];
        if (v4)
        {
LABEL_18:
          v8 = v4;
          v9 = [v4 deviceType];

          return v9 == 2;
        }

        else
        {
          __break(1u);
LABEL_5:
          v5 = [v3 isILClassificationAvailable];
LABEL_25:
          v10 = v5;
        }
      }

      else
      {
LABEL_19:

        return 0;
      }

      return v10;
  }
}

unint64_t sub_10001060C(char a1)
{
  result = 47;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x434E554F4E4E412FLL;
      break;
    case 3:
    case 16:
      v3 = 9;
      goto LABEL_10;
    case 4:
      v3 = 11;
LABEL_10:
      result = v3 | 0xD000000000000014;
      break;
    case 5:
    case 9:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000023;
      break;
    case 10:
      result = 0x45525F4C4C41432FLL;
      break;
    case 11:
      result = 0xD00000000000002FLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x45434E454C49532FLL;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD00000000000002DLL;
      break;
    case 17:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0x7373416C61694423;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001089C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10001060C(*a1);
  v5 = v4;
  if (v3 == sub_10001060C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000226A0();
  }

  return v8 & 1;
}

unint64_t sub_100010928()
{
  result = qword_100034960;
  if (!qword_100034960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034960);
  }

  return result;
}

Swift::Int sub_10001097C()
{
  v1 = *v0;
  sub_1000226C0();
  sub_10001060C(v1);
  sub_100022630();

  return sub_1000226E0();
}

uint64_t sub_1000109E0()
{
  sub_10001060C(*v0);
  sub_100022630();
}

Swift::Int sub_100010A34()
{
  v1 = *v0;
  sub_1000226C0();
  sub_10001060C(v1);
  sub_100022630();

  return sub_1000226E0();
}

uint64_t sub_100010A94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100010D1C();
  *a2 = result;
  return result;
}

unint64_t sub_100010AC4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001060C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100010AF4()
{
  result = qword_100034968;
  if (!qword_100034968)
  {
    sub_100002074(&qword_100034970, qword_100027240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034968);
  }

  return result;
}

uint64_t sub_100010B84@<X0>(_BYTE *a1@<X8>)
{

  result = sub_100010D1C();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MobilePhoneSettingsDynamicDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MobilePhoneSettingsDynamicDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100010D1C()
{
  v0 = sub_1000226B0();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100010D74()
{
  result = qword_100034978;
  if (!qword_100034978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034978);
  }

  return result;
}

unint64_t sub_100010DCC()
{
  result = qword_100034980;
  if (!qword_100034980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034980);
  }

  return result;
}

uint64_t sub_100010E20()
{
  v0 = sub_1000224D0();
  sub_100004D7C(v0, qword_10003C990);
  sub_100004D44(v0, qword_10003C990);
  return sub_1000224B0();
}

uint64_t sub_100010EBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_100022180();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_100010F00(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  return sub_100022190();
}

void (*sub_100010F40(uint64_t *a1))(void *a1)
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
  return sub_10000332C;
}

unint64_t sub_100010FB4()
{
  result = qword_100034988;
  if (!qword_100034988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034988);
  }

  return result;
}

unint64_t sub_100011008()
{
  result = qword_100034990;
  if (!qword_100034990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034990);
  }

  return result;
}

uint64_t sub_10001105C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011820();
  v5 = sub_1000118C8();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000110CC()
{
  result = qword_100034998;
  if (!qword_100034998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034998);
  }

  return result;
}

unint64_t sub_100011124()
{
  result = qword_1000349A0;
  if (!qword_1000349A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000349A0);
  }

  return result;
}

uint64_t sub_1000111CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100034310 != -1)
  {
    swift_once();
  }

  v2 = sub_1000224D0();
  v3 = sub_100004D44(v2, qword_10003C990);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100011278(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100011820();
  v8 = sub_100011874();
  v9 = sub_1000118C8();
  *v6 = v2;
  v6[1] = sub_10001134C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10001134C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_100011454@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000114C8();
  *a1 = result;
  return result;
}

uint64_t sub_10001147C(uint64_t a1)
{
  v2 = sub_100010FB4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000114C8()
{
  v21[0] = sub_1000223A0();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001EF0(&qword_100034570, &qword_100025750);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_1000224D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100001EF0(&qword_1000349A8, &qword_100027508);
  sub_1000224B0();
  (*(v16 + 56))(v14, 1, 1, v15);
  v18 = sub_100022130();
  memset(&v21[1], 0, 24);
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_1000117CC();
  return sub_1000221A0();
}

unint64_t sub_1000117CC()
{
  result = qword_1000349B0;
  if (!qword_1000349B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000349B0);
  }

  return result;
}

unint64_t sub_100011820()
{
  result = qword_1000349B8;
  if (!qword_1000349B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000349B8);
  }

  return result;
}

unint64_t sub_100011874()
{
  result = qword_1000349C0;
  if (!qword_1000349C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000349C0);
  }

  return result;
}

unint64_t sub_1000118C8()
{
  result = qword_1000349C8;
  if (!qword_1000349C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000349C8);
  }

  return result;
}

unint64_t sub_100011928()
{
  result = qword_1000349D0;
  if (!qword_1000349D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000349D0);
  }

  return result;
}

uint64_t sub_1000119C0()
{
  v0 = sub_100001EF0(&qword_100034AB8, &qword_100027C08);
  sub_100004D7C(v0, qword_10003C9A8);
  sub_100004D44(v0, qword_10003C9A8);
  sub_10001309C();
  return sub_1000223F0();
}

uint64_t sub_100011A44()
{
  v0 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000224D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100022460();
  sub_100004D7C(v7, qword_10003C9C0);
  sub_100004D44(v7, qword_10003C9C0);
  sub_1000224B0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100022450();
}

uint64_t sub_100011BB4()
{
  v0 = sub_1000224D0();
  sub_100004D7C(v0, qword_10003C9D8);
  sub_100004D44(v0, qword_10003C9D8);
  return sub_1000224B0();
}

uint64_t sub_100011C18()
{
  v0 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  sub_100004D7C(v0, qword_10003C9F0);
  v1 = sub_100004D44(v0, qword_10003C9F0);
  sub_1000222D0();
  v2 = sub_1000222E0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100011CD8()
{
  result = swift_getKeyPath();
  qword_10003CA08 = result;
  return result;
}

uint64_t sub_100011D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100001EF0(&qword_100034588, &qword_100025770) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100001EF0(&qword_100034590, &qword_100025778) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100001EF0(&qword_100034AD8, &qword_100027C40) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_100022130();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100001EF0(&qword_100034AE0, &qword_100027C48);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100011EE0, 0, 0);
}

uint64_t sub_100011EE0()
{
  v1 = v0[8];
  sub_100022180();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_10001309C();
  *v3 = v0;
  v3[1] = sub_100011FB0;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_100013F9C, 0, &type metadata for LiveVoicemailToggleEntity, v4);
}

uint64_t sub_100011FB0()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_1000120AC, 0, 0);
}

uint64_t sub_1000120AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_100022180();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_100022180();
  *(v0 + 201) = *(v0 + 200);
  if (qword_100034338 != -1)
  {
    swift_once();
  }

  v4 = qword_10003CA08;
  *(v0 + 176) = qword_10003CA08;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_1000020BC(&qword_100034AC0, &qword_100034AC8, &qword_100027C20);
  *v6 = v0;
  v6[1] = sub_10001220C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_10001220C()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100002F0C;
  }

  else
  {
    v5 = sub_100012360;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100012360()
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
  sub_100011928();
  sub_1000132AC();
  sub_100022100();
  (*(v2 + 16))(v12, v1, v3);
  sub_100022120();
  sub_100022140();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000125CC()
{
  v0 = sub_100001EF0(&qword_100034AE8, &qword_100027C50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_100034338 != -1)
  {
    swift_once();
  }

  sub_100022330();

  sub_1000132AC();
  sub_1000020BC(&qword_100034AF0, &qword_100034AE8, &qword_100027C50);
  sub_100022320();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_100012740(uint64_t *a1))()
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

uint64_t (*sub_1000127B4(uint64_t *a1))()
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

uint64_t sub_100012828()
{
  if (qword_100034338 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100012888()
{
  result = qword_1000349E8;
  if (!qword_1000349E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000349E8);
  }

  return result;
}

unint64_t sub_1000128E0()
{
  result = qword_1000349F0;
  if (!qword_1000349F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000349F0);
  }

  return result;
}

uint64_t sub_1000129F0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100034330 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  v3 = sub_100004D44(v2, qword_10003C9F0);

  return sub_1000052A4(v3, a1);
}

uint64_t sub_100012A74(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005314;

  return sub_100011D00(a1, v5, v4);
}

uint64_t sub_100012B20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100013B2C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100012B68()
{
  result = qword_1000349F8;
  if (!qword_1000349F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000349F8);
  }

  return result;
}

uint64_t sub_100012BE0()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  v3 = [v2 isCallScreeningEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100012CA0()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  [v2 setCallScreeningEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100012D30(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000224D0() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100012DC0, 0, 0);
}

uint64_t sub_100012DC0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100001EF0(&qword_1000349E0, qword_100027510);
  sub_1000224B0();
  sub_1000020BC(&qword_100034AC0, &qword_100034AC8, &qword_100027C20);
  *v2 = sub_1000224A0();

  v3 = v0[1];

  return v3();
}

unint64_t sub_100012EE8()
{
  result = qword_100034A00;
  if (!qword_100034A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A00);
  }

  return result;
}

uint64_t sub_100012F3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100013550();
  *v5 = v2;
  v5[1] = sub_100003BC0;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100012FF0()
{
  result = qword_100034A08;
  if (!qword_100034A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A08);
  }

  return result;
}

unint64_t sub_100013048()
{
  result = qword_100034A10;
  if (!qword_100034A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A10);
  }

  return result;
}

unint64_t sub_10001309C()
{
  result = qword_100034A18;
  if (!qword_100034A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A18);
  }

  return result;
}

uint64_t sub_1000130F0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100013550();
  *v6 = v2;
  v6[1] = sub_10000533C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000131A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100013550();
  *v5 = v2;
  v5[1] = sub_10000531C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100013258()
{
  result = qword_100034A20;
  if (!qword_100034A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A20);
  }

  return result;
}

unint64_t sub_1000132AC()
{
  result = qword_100034A28;
  if (!qword_100034A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A28);
  }

  return result;
}

unint64_t sub_100013304()
{
  result = qword_100034A30;
  if (!qword_100034A30)
  {
    sub_100002074(&qword_100034A38, qword_1000277B0);
    sub_1000132AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A30);
  }

  return result;
}

uint64_t sub_100013388(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100012EE8();
  *v6 = v2;
  v6[1] = sub_1000042E4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100013440()
{
  result = qword_100034A40;
  if (!qword_100034A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A40);
  }

  return result;
}

unint64_t sub_100013498()
{
  result = qword_100034A48;
  if (!qword_100034A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A48);
  }

  return result;
}

unint64_t sub_1000134F0()
{
  result = qword_100034A50;
  if (!qword_100034A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A50);
  }

  return result;
}

unint64_t sub_100013550()
{
  result = qword_100034A58;
  if (!qword_100034A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A58);
  }

  return result;
}

unint64_t sub_1000135A8()
{
  result = qword_100034A60;
  if (!qword_100034A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A60);
  }

  return result;
}

uint64_t sub_1000135FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100034318 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EF0(&qword_100034AB8, &qword_100027C08);
  v3 = sub_100004D44(v2, qword_10003C9A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000136B4()
{
  result = qword_100034A68;
  if (!qword_100034A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A68);
  }

  return result;
}

unint64_t sub_10001370C()
{
  result = qword_100034A70;
  if (!qword_100034A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A70);
  }

  return result;
}

unint64_t sub_100013768()
{
  result = qword_100034A78;
  if (!qword_100034A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A78);
  }

  return result;
}

uint64_t sub_1000137BC@<X0>(uint64_t *a1@<X8>)
{
  sub_10000F224();
  result = sub_100022160();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000137FC()
{
  sub_100013AD8();
  v1 = sub_1000223B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000138E4(uint64_t a1)
{
  v2 = sub_10001309C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100013934()
{
  result = qword_100034A90;
  if (!qword_100034A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034A90);
  }

  return result;
}

uint64_t sub_100013988(uint64_t a1)
{
  v2 = sub_10000F224();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_1000139D4(uint64_t a1)
{
  v2 = sub_100013768();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100013AD8()
{
  result = qword_100034AB0;
  if (!qword_100034AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034AB0);
  }

  return result;
}

uint64_t sub_100013B2C()
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
  v28 = sub_100001EF0(&qword_100034AD0, &unk_100027C28);
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
  sub_10001309C();
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

unint64_t sub_100013FB8()
{
  result = qword_100034AF8;
  if (!qword_100034AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034AF8);
  }

  return result;
}

uint64_t sub_100014010()
{
  v0 = sub_1000224D0();
  sub_100004D7C(v0, qword_10003CA10);
  sub_100004D44(v0, qword_10003CA10);
  return sub_1000224B0();
}

uint64_t sub_1000140A8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100022180();
  *a1 = v5;
  return result;
}

uint64_t sub_1000140E4(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100022190();
}

void (*sub_10001411C(uint64_t *a1))(void *a1)
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
  return sub_10000332C;
}

unint64_t sub_100014190()
{
  result = qword_100034B00;
  if (!qword_100034B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B00);
  }

  return result;
}

uint64_t sub_1000141E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001483C();
  v5 = sub_10000AEF0();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100014254()
{
  result = qword_100034B08;
  if (!qword_100034B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B08);
  }

  return result;
}

unint64_t sub_1000142AC()
{
  result = qword_100034B10;
  if (!qword_100034B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B10);
  }

  return result;
}

uint64_t sub_100014350@<X0>(uint64_t a1@<X8>)
{
  if (qword_100034340 != -1)
  {
    swift_once();
  }

  v2 = sub_1000224D0();
  v3 = sub_100004D44(v2, qword_10003CA10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000143F8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001483C();
  v8 = sub_100014890();
  v9 = sub_10000AEF0();
  *v6 = v2;
  v6[1] = sub_10001134C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_1000144CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100014540();
  *a1 = result;
  return result;
}

uint64_t sub_1000144F4(uint64_t a1)
{
  v2 = sub_100014190();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100014540()
{
  v21 = sub_1000223A0();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001EF0(&qword_100034570, &qword_100025750);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000224D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100001EF0(&qword_100034B18, &qword_100027EA8);
  sub_1000224B0();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 15;
  v18 = sub_100022130();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100008E44();
  return sub_1000221A0();
}

unint64_t sub_10001483C()
{
  result = qword_100034B20;
  if (!qword_100034B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B20);
  }

  return result;
}

unint64_t sub_100014890()
{
  result = qword_100034B28;
  if (!qword_100034B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B28);
  }

  return result;
}

unint64_t sub_1000148EC()
{
  result = qword_100034B30;
  if (!qword_100034B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B30);
  }

  return result;
}

uint64_t sub_100014984()
{
  v0 = sub_100001EF0(&qword_100034C18, &qword_1000285B8);
  sub_100004D7C(v0, qword_10003CA28);
  sub_100004D44(v0, qword_10003CA28);
  sub_100016058();
  return sub_1000223F0();
}

uint64_t sub_100014A08()
{
  v0 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000224D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100022460();
  sub_100004D7C(v7, qword_10003CA40);
  sub_100004D44(v7, qword_10003CA40);
  sub_1000224B0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100022450();
}

uint64_t sub_100014B78()
{
  v0 = sub_1000224D0();
  sub_100004D7C(v0, qword_10003CA58);
  sub_100004D44(v0, qword_10003CA58);
  return sub_1000224B0();
}

uint64_t sub_100014BDC()
{
  v0 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  sub_100004D7C(v0, qword_10003CA70);
  v1 = sub_100004D44(v0, qword_10003CA70);
  sub_1000222D0();
  v2 = sub_1000222E0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100014C9C()
{
  result = swift_getKeyPath();
  qword_10003CA88 = result;
  return result;
}

uint64_t sub_100014CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100001EF0(&qword_100034588, &qword_100025770) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100001EF0(&qword_100034590, &qword_100025778) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100001EF0(&qword_100034C38, &qword_1000285F0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_100022130();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100001EF0(&qword_100034C40, &qword_1000285F8);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100014EA4, 0, 0);
}

uint64_t sub_100014EA4()
{
  v1 = v0[8];
  sub_100022180();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_100016058();
  *v3 = v0;
  v3[1] = sub_100014F74;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_100016F58, 0, &type metadata for BusinessConnectCallingToggleEntity, v4);
}

uint64_t sub_100014F74()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100015070, 0, 0);
}

uint64_t sub_100015070()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_100022180();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_100022180();
  *(v0 + 201) = *(v0 + 200);
  if (qword_100034368 != -1)
  {
    swift_once();
  }

  v4 = qword_10003CA88;
  *(v0 + 176) = qword_10003CA88;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_1000020BC(&qword_100034C20, &qword_100034C28, &qword_1000285D0);
  *v6 = v0;
  v6[1] = sub_1000151D0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_1000151D0()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100002F0C;
  }

  else
  {
    v5 = sub_100015324;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100015324()
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
  sub_1000148EC();
  sub_100016268();
  sub_100022100();
  (*(v2 + 16))(v12, v1, v3);
  sub_100022120();
  sub_100022140();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100015590()
{
  v0 = sub_100001EF0(&qword_100034C48, &qword_100028600);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_100034368 != -1)
  {
    swift_once();
  }

  sub_100022330();

  sub_100016268();
  sub_1000020BC(&qword_100034C50, &qword_100034C48, &qword_100028600);
  sub_100022320();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_100015704(uint64_t *a1))()
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

uint64_t (*sub_100015778(uint64_t *a1))()
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

uint64_t sub_1000157EC()
{
  if (qword_100034368 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10001584C()
{
  result = qword_100034B48;
  if (!qword_100034B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B48);
  }

  return result;
}

unint64_t sub_1000158A4()
{
  result = qword_100034B50;
  if (!qword_100034B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B50);
  }

  return result;
}

uint64_t sub_1000159B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100034360 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  v3 = sub_100004D44(v2, qword_10003CA70);

  return sub_1000052A4(v3, a1);
}

uint64_t sub_100015A38(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005314;

  return sub_100014CC4(a1, v5, v4);
}

uint64_t sub_100015AE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100016AE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100015B2C()
{
  result = qword_100034B58;
  if (!qword_100034B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B58);
  }

  return result;
}

uint64_t sub_100015BA4()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  v3 = [v2 isBusinessConnectCallingEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100015C64()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  [v2 setBusinessConnectCallingEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100015CF4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000224D0() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100015D84, 0, 0);
}

uint64_t sub_100015D84()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100001EF0(&qword_100034B40, qword_100027EB0);
  sub_1000224B0();
  sub_1000020BC(&qword_100034C20, &qword_100034C28, &qword_1000285D0);
  *v2 = sub_1000224A0();

  v3 = v0[1];

  return v3();
}

unint64_t sub_100015EA4()
{
  result = qword_100034B60;
  if (!qword_100034B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B60);
  }

  return result;
}

uint64_t sub_100015EF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10001650C();
  *v5 = v2;
  v5[1] = sub_100003BC0;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100015FAC()
{
  result = qword_100034B68;
  if (!qword_100034B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B68);
  }

  return result;
}

unint64_t sub_100016004()
{
  result = qword_100034B70;
  if (!qword_100034B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B70);
  }

  return result;
}

unint64_t sub_100016058()
{
  result = qword_100034B78;
  if (!qword_100034B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B78);
  }

  return result;
}

uint64_t sub_1000160AC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001650C();
  *v6 = v2;
  v6[1] = sub_10000533C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100016160(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10001650C();
  *v5 = v2;
  v5[1] = sub_10000531C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100016214()
{
  result = qword_100034B80;
  if (!qword_100034B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B80);
  }

  return result;
}

unint64_t sub_100016268()
{
  result = qword_100034B88;
  if (!qword_100034B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B88);
  }

  return result;
}

unint64_t sub_1000162C0()
{
  result = qword_100034B90;
  if (!qword_100034B90)
  {
    sub_100002074(&qword_100034B98, qword_100028150);
    sub_100016268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034B90);
  }

  return result;
}

uint64_t sub_100016344(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100015EA4();
  *v6 = v2;
  v6[1] = sub_1000042E4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000163FC()
{
  result = qword_100034BA0;
  if (!qword_100034BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BA0);
  }

  return result;
}

unint64_t sub_100016454()
{
  result = qword_100034BA8;
  if (!qword_100034BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BA8);
  }

  return result;
}

unint64_t sub_1000164AC()
{
  result = qword_100034BB0;
  if (!qword_100034BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BB0);
  }

  return result;
}

unint64_t sub_10001650C()
{
  result = qword_100034BB8;
  if (!qword_100034BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BB8);
  }

  return result;
}

unint64_t sub_100016564()
{
  result = qword_100034BC0;
  if (!qword_100034BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BC0);
  }

  return result;
}

uint64_t sub_1000165B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100034348 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EF0(&qword_100034C18, &qword_1000285B8);
  v3 = sub_100004D44(v2, qword_10003CA28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100016670()
{
  result = qword_100034BC8;
  if (!qword_100034BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BC8);
  }

  return result;
}

unint64_t sub_1000166C8()
{
  result = qword_100034BD0;
  if (!qword_100034BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BD0);
  }

  return result;
}

unint64_t sub_100016724()
{
  result = qword_100034BD8;
  if (!qword_100034BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BD8);
  }

  return result;
}

uint64_t sub_100016778@<X0>(uint64_t *a1@<X8>)
{
  sub_100001F3C();
  result = sub_100022160();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000167B8()
{
  sub_100016A94();
  v1 = sub_1000223B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000168A0(uint64_t a1)
{
  v2 = sub_100016058();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000168F0()
{
  result = qword_100034BF0;
  if (!qword_100034BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034BF0);
  }

  return result;
}

uint64_t sub_100016944(uint64_t a1)
{
  v2 = sub_100001F3C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100016990(uint64_t a1)
{
  v2 = sub_100016724();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100016A94()
{
  result = qword_100034C10;
  if (!qword_100034C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034C10);
  }

  return result;
}

uint64_t sub_100016AE8()
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
  v28 = sub_100001EF0(&qword_100034C30, &unk_1000285D8);
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
  sub_100016058();
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

uint64_t sub_100016F70()
{
  sub_100001EF0(&qword_100034C58, &qword_100028768);
  v0 = *(sub_1000222B0() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100028630;
  sub_100014540();
  sub_100014190();
  sub_1000222C0();
  sub_100014540();
  sub_1000222C0();
  sub_100014540();
  sub_1000222C0();
  sub_1000114C8();
  sub_100010FB4();
  sub_1000222C0();
  sub_1000114C8();
  sub_1000222C0();
  sub_1000114C8();
  result = sub_1000222C0();
  qword_10003CA90 = v3;
  return result;
}

uint64_t sub_100017284()
{
  v0 = sub_100022210();
  v1 = sub_100022210();
  v2 = sub_100022210();
  v3 = sub_100022210();
  v4 = sub_100022210();
  v5 = sub_100022210();
  v6 = sub_100022210();
  sub_100001EF0(&qword_100034C68, &qword_1000287A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100028640;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = sub_100022200();

  return v8;
}

uint64_t sub_100017448()
{
  v0 = sub_100022210();
  v1 = sub_100022210();
  v2 = sub_100022210();
  sub_100001EF0(&qword_100034C68, &qword_1000287A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100028650;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_100022200();

  return v4;
}

uint64_t sub_10001751C()
{
  v0 = sub_100001EF0(&qword_100034C90, &qword_1000287E8);
  v15 = *(v0 - 8);
  v16 = v0;
  v1 = *(v15 + 64);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = sub_1000221D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001EF0(&qword_100034C98, &qword_1000287F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100010FB4();
  sub_100022290();
  v17._countAndFlagsBits = 0x206E65704FLL;
  v17._object = 0xE500000000000000;
  sub_100022280(v17);
  swift_getKeyPath();
  sub_100019D2C();
  sub_1000221C0();

  sub_100022270();

  v18._countAndFlagsBits = 544106784;
  v18._object = 0xE400000000000000;
  sub_100022280(v18);
  (*(v5 + 104))(v8, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v4);
  sub_100022260();
  (*(v5 + 8))(v8, v4);
  v19._countAndFlagsBits = 0x7465532070706120;
  v19._object = 0xED000073676E6974;
  sub_100022280(v19);
  sub_1000222A0();
  v11 = sub_1000221F0();
  (*(v15 + 8))(v3, v16);
  sub_100001EF0(&qword_100034CA0, &qword_1000287F8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100026130;
  *(v12 + 32) = v11;
  v13 = sub_1000221E0();

  return v13;
}

uint64_t sub_10001789C()
{
  v21 = sub_100022210();
  v20 = sub_100022210();
  v19 = sub_100022210();
  v18 = sub_100022210();
  v17 = sub_100022210();
  v16 = sub_100022210();
  v15 = sub_100022210();
  v14 = sub_100022210();
  v13 = sub_100022210();
  v12 = sub_100022210();
  v0 = sub_100022210();
  v1 = sub_100022210();
  v2 = sub_100022210();
  v3 = sub_100022210();
  v4 = sub_100022210();
  v5 = sub_100022210();
  v6 = sub_100022210();
  v7 = sub_100022210();
  v8 = sub_100022210();
  sub_100001EF0(&qword_100034C68, &qword_1000287A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100028660;
  *(v9 + 32) = v21;
  *(v9 + 40) = v20;
  *(v9 + 48) = v19;
  *(v9 + 56) = v18;
  *(v9 + 64) = v17;
  *(v9 + 72) = v16;
  *(v9 + 80) = v15;
  *(v9 + 88) = v14;
  *(v9 + 96) = v13;
  *(v9 + 104) = v12;
  *(v9 + 112) = v0;
  *(v9 + 120) = v1;
  *(v9 + 128) = v2;
  *(v9 + 136) = v3;
  *(v9 + 144) = v4;
  *(v9 + 152) = v5;
  *(v9 + 160) = v6;
  *(v9 + 168) = v7;
  *(v9 + 176) = v8;
  v10 = sub_100022200();

  return v10;
}

uint64_t sub_100017BC8()
{
  v0 = sub_100001EF0(&qword_100034C90, &qword_1000287E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - v3;
  v5 = sub_1000221D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001EF0(&qword_100034C98, &qword_1000287F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_100010FB4();
  sub_100022290();
  v17._object = 0x8000000100024250;
  v17._countAndFlagsBits = 0xD000000000000010;
  sub_100022280(v17);
  (*(v6 + 104))(v9, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v5);
  sub_100022260();
  (*(v6 + 8))(v9, v5);
  v18._countAndFlagsBits = 0x676E697474655320;
  v18._object = 0xEA00000000003F73;
  sub_100022280(v18);
  sub_1000222A0();
  v12 = sub_1000221F0();
  (*(v1 + 8))(v4, v0);
  sub_100001EF0(&qword_100034CA0, &qword_1000287F8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100026130;
  *(v13 + 32) = v12;
  v14 = sub_1000221E0();

  return v14;
}

uint64_t sub_100017EF4()
{
  v0 = sub_100001EF0(&qword_100034C90, &qword_1000287E8);
  v15 = *(v0 - 8);
  v16 = v0;
  v1 = *(v15 + 64);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = sub_1000221D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001EF0(&qword_100034C98, &qword_1000287F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100010FB4();
  sub_100022290();
  v17._countAndFlagsBits = 2126665;
  v17._object = 0xE300000000000000;
  sub_100022280(v17);
  swift_getKeyPath();
  sub_100019D2C();
  sub_1000221C0();

  sub_100022270();

  v18._countAndFlagsBits = 0x2064656E72757420;
  v18._object = 0xEE00206E69206E6FLL;
  sub_100022280(v18);
  (*(v5 + 104))(v8, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v4);
  sub_100022260();
  (*(v5 + 8))(v8, v4);
  v19._countAndFlagsBits = 0x3F70706120;
  v19._object = 0xE500000000000000;
  sub_100022280(v19);
  sub_1000222A0();
  v11 = sub_1000221F0();
  (*(v15 + 8))(v3, v16);
  sub_100001EF0(&qword_100034CA0, &qword_1000287F8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100026130;
  *(v12 + 32) = v11;
  v13 = sub_1000221E0();

  return v13;
}

uint64_t sub_100018274()
{
  v14 = sub_100022210();
  v13 = sub_100022210();
  v12 = sub_100022210();
  v0 = sub_100022210();
  v1 = sub_100022210();
  v2 = sub_100022210();
  v3 = sub_100022210();
  v4 = sub_100022210();
  v5 = sub_100022210();
  v6 = sub_100022210();
  v7 = sub_100022210();
  v8 = sub_100022210();
  sub_100001EF0(&qword_100034C68, &qword_1000287A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100028670;
  *(v9 + 32) = v14;
  *(v9 + 40) = v13;
  *(v9 + 48) = v12;
  *(v9 + 56) = v0;
  *(v9 + 64) = v1;
  *(v9 + 72) = v2;
  *(v9 + 80) = v3;
  *(v9 + 88) = v4;
  *(v9 + 96) = v5;
  *(v9 + 104) = v6;
  *(v9 + 112) = v7;
  *(v9 + 120) = v8;
  v10 = sub_100022200();

  return v10;
}

uint64_t sub_10001850C()
{
  sub_100001EF0(&qword_100034C58, &qword_100028768);
  v0 = *(sub_1000222B0() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100028680;
  sub_100014540();
  sub_100014190();
  sub_1000222C0();
  sub_100014540();
  sub_1000222C0();
  sub_100014540();
  sub_1000222C0();
  sub_100014540();
  result = sub_1000222C0();
  qword_10003CAA0 = v3;
  return result;
}

uint64_t sub_100018724(uint64_t a1)
{
  v23 = a1;
  v25 = sub_100001EF0(&qword_100034C70, &qword_1000287A8);
  v27 = *(v25 - 8);
  v1 = *(v27 + 64);
  __chkstk_darwin(v25);
  v3 = v19 - v2;
  v26 = sub_1000221D0();
  v4 = *(v26 - 8);
  v5 = v4[8];
  __chkstk_darwin(v26);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001EF0(&qword_100034C78, &qword_1000287B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_100014190();
  sub_100022290();
  v28._countAndFlagsBits = 0x206E65704FLL;
  v28._object = 0xE500000000000000;
  sub_100022280(v28);
  swift_getKeyPath();
  sub_10000A2D4();
  sub_1000221C0();

  sub_100022270();

  v29._countAndFlagsBits = 544106784;
  v29._object = 0xE400000000000000;
  sub_100022280(v29);
  v22 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v21 = v4[13];
  v10 = v26;
  v21(v7);
  sub_100022260();
  v11 = v4[1];
  v19[1] = v4 + 1;
  v20 = v11;
  v11(v7, v10);
  v30._countAndFlagsBits = 0x676E697474655320;
  v30._object = 0xE900000000000073;
  sub_100022280(v30);
  sub_1000222A0();
  v24 = sub_1000221F0();
  v12 = *(v27 + 8);
  v27 += 8;
  v19[0] = v12;
  v13 = v25;
  v12(v3, v25);
  sub_100022290();
  v31._countAndFlagsBits = 0x20656D20776F6853;
  v31._object = 0xE800000000000000;
  sub_100022280(v31);
  swift_getKeyPath();
  sub_1000221C0();

  sub_100022270();

  v32._countAndFlagsBits = 544106784;
  v32._object = 0xE400000000000000;
  sub_100022280(v32);
  v14 = v26;
  (v21)(v7, v22, v26);
  sub_100022260();
  v20(v7, v14);
  v33._countAndFlagsBits = 0x676E697474655320;
  v33._object = 0xE900000000000073;
  sub_100022280(v33);
  sub_1000222A0();
  v15 = sub_1000221F0();
  (v19[0])(v3, v13);
  sub_100001EF0(&qword_100034C80, &qword_1000287B8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100028690;
  *(v16 + 32) = v24;
  *(v16 + 40) = v15;
  v17 = sub_1000221E0();

  return v17;
}

uint64_t sub_100018C0C()
{
  v0 = sub_100022210();
  v1 = sub_100022210();
  v2 = sub_100022210();
  v3 = sub_100022210();
  v4 = sub_100022210();
  v5 = sub_100022210();
  sub_100001EF0(&qword_100034C68, &qword_1000287A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100028630;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_100022200();

  return v7;
}

uint64_t sub_100018D60()
{
  v0 = sub_100001EF0(&qword_100034C70, &qword_1000287A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - v3;
  v5 = sub_1000221D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001EF0(&qword_100034C78, &qword_1000287B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_100014190();
  sub_100022290();
  v17._object = 0x8000000100024250;
  v17._countAndFlagsBits = 0xD000000000000010;
  sub_100022280(v17);
  (*(v6 + 104))(v9, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v5);
  sub_100022260();
  (*(v6 + 8))(v9, v5);
  v18._countAndFlagsBits = 0x676E697474655320;
  v18._object = 0xE900000000000073;
  sub_100022280(v18);
  sub_1000222A0();
  v12 = sub_1000221F0();
  (*(v1 + 8))(v4, v0);
  sub_100001EF0(&qword_100034C80, &qword_1000287B8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100026130;
  *(v13 + 32) = v12;
  v14 = sub_1000221E0();

  return v14;
}

uint64_t sub_100019078()
{
  v0 = sub_100022210();
  v1 = sub_100022210();
  v2 = sub_100022210();
  v3 = sub_100022210();
  v4 = sub_100022210();
  v5 = sub_100022210();
  v6 = sub_100022210();
  sub_100001EF0(&qword_100034C68, &qword_1000287A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100028640;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = sub_100022200();

  return v8;
}

uint64_t sub_1000191EC()
{
  v0 = sub_100001EF0(&qword_100034C70, &qword_1000287A8);
  v15 = *(v0 - 8);
  v16 = v0;
  v1 = *(v15 + 64);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = sub_1000221D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001EF0(&qword_100034C78, &qword_1000287B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100014190();
  sub_100022290();
  v17._countAndFlagsBits = 2126665;
  v17._object = 0xE300000000000000;
  sub_100022280(v17);
  swift_getKeyPath();
  sub_10000A2D4();
  sub_1000221C0();

  sub_100022270();

  v18._countAndFlagsBits = 0x2064656E72757420;
  v18._object = 0xEE00206E69206E6FLL;
  sub_100022280(v18);
  (*(v5 + 104))(v8, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v4);
  sub_100022260();
  (*(v5 + 8))(v8, v4);
  v19._countAndFlagsBits = 63;
  v19._object = 0xE100000000000000;
  sub_100022280(v19);
  sub_1000222A0();
  v11 = sub_1000221F0();
  (*(v15 + 8))(v3, v16);
  sub_100001EF0(&qword_100034C80, &qword_1000287B8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100026130;
  *(v12 + 32) = v11;
  v13 = sub_1000221E0();

  return v13;
}

uint64_t sub_100019564()
{
  v0 = sub_100022210();
  v1 = sub_100022210();
  v2 = sub_100022210();
  sub_100001EF0(&qword_100034C68, &qword_1000287A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100028650;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_100022200();

  return v4;
}

uint64_t sub_10001963C()
{
  v0 = sub_100001EF0(&qword_100034C70, &qword_1000287A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - v3;
  v5 = sub_1000221D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001EF0(&qword_100034C78, &qword_1000287B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_100014190();
  sub_100022290();
  v17._countAndFlagsBits = 2126665;
  v17._object = 0xE300000000000000;
  sub_100022280(v17);
  (*(v6 + 104))(v9, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v5);
  sub_100022260();
  (*(v6 + 8))(v9, v5);
  v18._countAndFlagsBits = 1064202016;
  v18._object = 0xE400000000000000;
  sub_100022280(v18);
  sub_1000222A0();
  v12 = sub_1000221F0();
  (*(v1 + 8))(v4, v0);
  sub_100001EF0(&qword_100034C80, &qword_1000287B8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100026130;
  *(v13 + 32) = v12;
  v14 = sub_1000221E0();

  return v14;
}

uint64_t sub_10001993C(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_100022250();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_1000221C0();

  a4(v11);
  sub_100022240();
  v12 = sub_100022230();
  (*(v7 + 8))(v10, v6);
  sub_100001EF0(&qword_100034C60, &qword_100028798);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100026130;
  *(v13 + 32) = v12;
  v14 = sub_100022220();

  return v14;
}

uint64_t sub_100019AE0()
{
  v0 = sub_100022210();
  sub_100001EF0(&qword_100034C68, &qword_1000287A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100026130;
  *(v1 + 32) = v0;
  v2 = sub_100022200();

  return v2;
}

uint64_t sub_100019BAC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

uint64_t sub_100019C30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100022180();
  *a2 = v5;
  return result;
}

uint64_t sub_100019C6C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100022190();
}

uint64_t sub_100019CA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_100022180();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_100019CE8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);

  return sub_100022190();
}

unint64_t sub_100019D2C()
{
  result = qword_100034C88;
  if (!qword_100034C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034C88);
  }

  return result;
}

unint64_t sub_100019D98()
{
  result = qword_100034CA8;
  if (!qword_100034CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034CA8);
  }

  return result;
}

uint64_t sub_100019E30()
{
  v0 = sub_100001EF0(&qword_100034D90, &qword_100028F08);
  sub_100004D7C(v0, qword_10003CAB0);
  sub_100004D44(v0, qword_10003CAB0);
  sub_10001B50C();
  return sub_1000223F0();
}

uint64_t sub_100019EB4()
{
  v0 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000224D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100022460();
  sub_100004D7C(v7, qword_10003CAC8);
  sub_100004D44(v7, qword_10003CAC8);
  sub_1000224B0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100022450();
}

uint64_t sub_10001A024()
{
  v0 = sub_1000224D0();
  sub_100004D7C(v0, qword_10003CAE0);
  sub_100004D44(v0, qword_10003CAE0);
  return sub_1000224B0();
}

uint64_t sub_10001A088()
{
  v0 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  sub_100004D7C(v0, qword_10003CAF8);
  v1 = sub_100004D44(v0, qword_10003CAF8);
  sub_1000222D0();
  v2 = sub_1000222E0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10001A148()
{
  result = swift_getKeyPath();
  qword_10003CB10 = result;
  return result;
}

uint64_t sub_10001A170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100001EF0(&qword_100034588, &qword_100025770) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100001EF0(&qword_100034590, &qword_100025778) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100001EF0(&qword_100034DB0, &qword_100028F40) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_100022130();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100001EF0(&qword_100034DB8, &qword_100028F48);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10001A350, 0, 0);
}

uint64_t sub_10001A350()
{
  v1 = v0[8];
  sub_100022180();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_10001B50C();
  *v3 = v0;
  v3[1] = sub_10001A420;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10001C40C, 0, &type metadata for BrandedCallingPrimaryToggleEntity, v4);
}

uint64_t sub_10001A420()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_10001A51C, 0, 0);
}

uint64_t sub_10001A51C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_100022180();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_100022180();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000343B0 != -1)
  {
    swift_once();
  }

  v4 = qword_10003CB10;
  *(v0 + 176) = qword_10003CB10;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_1000020BC(&qword_100034D98, &qword_100034DA0, &qword_100028F20);
  *v6 = v0;
  v6[1] = sub_10001A67C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_10001A67C()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100002F0C;
  }

  else
  {
    v5 = sub_10001A7D0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001A7D0()
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
  sub_100019D98();
  sub_10001B71C();
  sub_100022100();
  (*(v2 + 16))(v12, v1, v3);
  sub_100022120();
  sub_100022140();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001AA3C()
{
  v0 = sub_100001EF0(&qword_100034DC0, &qword_100028F50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000343B0 != -1)
  {
    swift_once();
  }

  sub_100022330();

  sub_10001B71C();
  sub_1000020BC(&qword_100034DC8, &qword_100034DC0, &qword_100028F50);
  sub_100022320();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_10001ABB0(uint64_t *a1))()
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

uint64_t (*sub_10001AC24(uint64_t *a1))()
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

uint64_t sub_10001AC98()
{
  if (qword_1000343B0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10001ACF8()
{
  result = qword_100034CC0;
  if (!qword_100034CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034CC0);
  }

  return result;
}

unint64_t sub_10001AD50()
{
  result = qword_100034CC8;
  if (!qword_100034CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034CC8);
  }

  return result;
}

uint64_t sub_10001AE60@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000343A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  v3 = sub_100004D44(v2, qword_10003CAF8);

  return sub_1000052A4(v3, a1);
}

uint64_t sub_10001AEE4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005314;

  return sub_10001A170(a1, v5, v4);
}

uint64_t sub_10001AF90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001BF9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10001AFD8()
{
  result = qword_100034CD0;
  if (!qword_100034CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034CD0);
  }

  return result;
}

uint64_t sub_10001B050()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  v3 = [v2 isBrandedCallingEnabled:1];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001B114()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(TUConfigurationProvider) init];
  [v2 setBrandedCallingEnabled:v1 primary:1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001B1A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000224D0() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10001B238, 0, 0);
}

uint64_t sub_10001B238()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100001EF0(&qword_100034CB8, qword_100028800);
  sub_1000224B0();
  sub_1000020BC(&qword_100034D98, &qword_100034DA0, &qword_100028F20);
  *v2 = sub_1000224A0();

  v3 = v0[1];

  return v3();
}

unint64_t sub_10001B358()
{
  result = qword_100034CD8;
  if (!qword_100034CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034CD8);
  }

  return result;
}

uint64_t sub_10001B3AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10001B9C0();
  *v5 = v2;
  v5[1] = sub_100003BC0;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10001B460()
{
  result = qword_100034CE0;
  if (!qword_100034CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034CE0);
  }

  return result;
}

unint64_t sub_10001B4B8()
{
  result = qword_100034CE8;
  if (!qword_100034CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034CE8);
  }

  return result;
}

unint64_t sub_10001B50C()
{
  result = qword_100034CF0;
  if (!qword_100034CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034CF0);
  }

  return result;
}

uint64_t sub_10001B560(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001B9C0();
  *v6 = v2;
  v6[1] = sub_10000533C;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10001B614(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10001B9C0();
  *v5 = v2;
  v5[1] = sub_10000531C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10001B6C8()
{
  result = qword_100034CF8;
  if (!qword_100034CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034CF8);
  }

  return result;
}

unint64_t sub_10001B71C()
{
  result = qword_100034D00;
  if (!qword_100034D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D00);
  }

  return result;
}

unint64_t sub_10001B774()
{
  result = qword_100034D08;
  if (!qword_100034D08)
  {
    sub_100002074(&qword_100034D10, qword_100028AA0);
    sub_10001B71C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D08);
  }

  return result;
}

uint64_t sub_10001B7F8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001B358();
  *v6 = v2;
  v6[1] = sub_1000042E4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10001B8B0()
{
  result = qword_100034D18;
  if (!qword_100034D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D18);
  }

  return result;
}

unint64_t sub_10001B908()
{
  result = qword_100034D20;
  if (!qword_100034D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D20);
  }

  return result;
}

unint64_t sub_10001B960()
{
  result = qword_100034D28;
  if (!qword_100034D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D28);
  }

  return result;
}

unint64_t sub_10001B9C0()
{
  result = qword_100034D30;
  if (!qword_100034D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D30);
  }

  return result;
}

unint64_t sub_10001BA18()
{
  result = qword_100034D38;
  if (!qword_100034D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D38);
  }

  return result;
}

uint64_t sub_10001BA6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100034390 != -1)
  {
    swift_once();
  }

  v2 = sub_100001EF0(&qword_100034D90, &qword_100028F08);
  v3 = sub_100004D44(v2, qword_10003CAB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10001BB24()
{
  result = qword_100034D40;
  if (!qword_100034D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D40);
  }

  return result;
}

unint64_t sub_10001BB7C()
{
  result = qword_100034D48;
  if (!qword_100034D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D48);
  }

  return result;
}

unint64_t sub_10001BBD8()
{
  result = qword_100034D50;
  if (!qword_100034D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D50);
  }

  return result;
}

uint64_t sub_10001BC2C@<X0>(uint64_t *a1@<X8>)
{
  sub_100005908();
  result = sub_100022160();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001BC6C()
{
  sub_10001BF48();
  v1 = sub_1000223B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10001BD54(uint64_t a1)
{
  v2 = sub_10001B50C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001BDA4()
{
  result = qword_100034D68;
  if (!qword_100034D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D68);
  }

  return result;
}

uint64_t sub_10001BDF8(uint64_t a1)
{
  v2 = sub_100005908();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10001BE44(uint64_t a1)
{
  v2 = sub_10001BBD8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10001BF48()
{
  result = qword_100034D88;
  if (!qword_100034D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034D88);
  }

  return result;
}

uint64_t sub_10001BF9C()
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
  v28 = sub_100001EF0(&qword_100034DA8, &unk_100028F28);
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
  sub_10001B50C();
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

unint64_t sub_10001C428()
{
  result = qword_100034DD0;
  if (!qword_100034DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034DD0);
  }

  return result;
}

unint64_t sub_10001C480()
{
  result = qword_100034DD8;
  if (!qword_100034DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034DD8);
  }

  return result;
}

uint64_t sub_10001C4D4@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v91._countAndFlagsBits = a2;
  v91._object = a3;
  v94 = a4;
  v5 = sub_100001EF0(&qword_100034798, "@F");
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v86 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v87 = &v86 - v10;
  __chkstk_darwin(v9);
  v90 = &v86 - v11;
  v12 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v86 - v18;
  __chkstk_darwin(v17);
  v89 = &v86 - v20;
  v21 = sub_1000224D0();
  v22 = *(v21 - 8);
  v92 = v21;
  v93 = v22;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v25 = __chkstk_darwin(v24);
  v26 = __chkstk_darwin(v25);
  v27 = __chkstk_darwin(v26);
  v28 = __chkstk_darwin(v27);
  v88 = &v86 - v29;
  __chkstk_darwin(v28);
  v30 = sub_100022600();
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  __chkstk_darwin(v32);
  switch(a1)
  {
    case 1:
      sub_1000224B0();
      sub_1000225F0();
      v111._countAndFlagsBits = 0xD000000000000023;
      v111._object = 0x8000000100024C20;
      sub_1000225E0(v111);
      sub_1000225D0(v91);
      v112._countAndFlagsBits = 0;
      v112._object = 0xE000000000000000;
      sub_1000225E0(v112);
      v63 = v89;
      sub_1000224C0();
      (*(v93 + 56))(v63, 0, 1, v92);
      v64 = v90;
      sub_100022340();
      v65 = sub_100022350();
      (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
      goto LABEL_23;
    case 2:
      sub_1000224B0();
      sub_1000225F0();
      v107._countAndFlagsBits = 0xD000000000000022;
      v107._object = 0x8000000100024BC0;
      sub_1000225E0(v107);
      sub_1000225D0(v91);
      v108._countAndFlagsBits = 0;
      v108._object = 0xE000000000000000;
      sub_1000225E0(v108);
      v54 = v89;
      sub_1000224C0();
      (*(v93 + 56))(v54, 0, 1, v92);
      v55 = v90;
      sub_100022340();
      v56 = sub_100022350();
      (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
      goto LABEL_23;
    case 3:
    case 14:
    case 15:
    case 17:
    case 18:
      sub_1000224B0();
      sub_1000225F0();
      v119._countAndFlagsBits = 0xD000000000000014;
      v119._object = 0x8000000100024560;
      sub_1000225E0(v119);
      sub_1000225D0(v91);
      v120._countAndFlagsBits = 0;
      v120._object = 0xE000000000000000;
      sub_1000225E0(v120);
      v76 = v89;
      sub_1000224C0();
      (*(v93 + 56))(v76, 0, 1, v92);
      v77 = v90;
      sub_100022340();
      v78 = sub_100022350();
      (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
      goto LABEL_23;
    case 4:
      sub_1000224B0();
      sub_1000225F0();
      v101._object = 0x8000000100024560;
      v101._countAndFlagsBits = 0xD000000000000014;
      sub_1000225E0(v101);
      sub_1000225D0(v91);
      v102._countAndFlagsBits = 0;
      v102._object = 0xE000000000000000;
      sub_1000225E0(v102);
      v45 = v89;
      sub_1000224C0();
      (*(v93 + 56))(v45, 0, 1, v92);
      v46 = v90;
      sub_100022340();
      v47 = sub_100022350();
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
      sub_1000224B0();
      return sub_100022360();
    case 5:
      TUDeviceHasChinaSKU();
      sub_1000224B0();
      HasChinaSKU = TUDeviceHasChinaSKU();
      v67 = "WIFI_CALLING_SETTINGS_PATH_";
      if (HasChinaSKU)
      {
        v67 = "WLAN_CALLING_SETTINGS_PATH_";
      }

      v68 = v67 - 32;
      sub_1000225F0();
      v113._countAndFlagsBits = 0xD00000000000001BLL;
      v113._object = (v68 | 0x8000000000000000);
      sub_1000225E0(v113);
      sub_1000225D0(v91);
      v114._countAndFlagsBits = 0;
      v114._object = 0xE000000000000000;
      sub_1000225E0(v114);
      sub_1000224C0();
      (*(v93 + 56))(v19, 0, 1, v92);
      v69 = v87;
      sub_100022340();
      v70 = sub_100022350();
      (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
      TUDeviceHasChinaSKU();
      goto LABEL_23;
    case 6:
      sub_1000224B0();
      sub_1000225F0();
      v117._countAndFlagsBits = 0xD000000000000025;
      v117._object = 0x8000000100024A20;
      sub_1000225E0(v117);
      sub_1000225D0(v91);
      v118._countAndFlagsBits = 0;
      v118._object = 0xE000000000000000;
      sub_1000225E0(v118);
      sub_1000224C0();
      (*(v93 + 56))(v16, 0, 1, v92);
      v74 = v86;
      sub_100022340();
      v75 = sub_100022350();
      (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
      TUDeviceHasChinaSKU();
      sub_1000224B0();
      return sub_100022360();
    case 7:
      sub_1000224B0();
      sub_1000225F0();
      v109._countAndFlagsBits = 0xD000000000000020;
      v109._object = 0x8000000100024980;
      sub_1000225E0(v109);
      sub_1000225D0(v91);
      v110._countAndFlagsBits = 0;
      v110._object = 0xE000000000000000;
      sub_1000225E0(v110);
      v57 = v89;
      sub_1000224C0();
      v58 = v93 + 56;
      (*(v93 + 56))(v57, 0, 1, v92);
      v59 = v90;
      sub_100022340();
      v60 = sub_100022350();
      (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
      sub_100001EF0(&qword_1000347A0, "8F");
      v61 = *(v58 + 16);
      v62 = (*(v58 + 24) + 32) & ~*(v58 + 24);
      *(swift_allocObject() + 16) = xmmword_100026130;
      sub_1000224B0();
      sub_1000224B0();
      return sub_100022360();
    case 8:
      sub_1000224B0();
      sub_1000225F0();
      v123._countAndFlagsBits = 0xD00000000000001ELL;
      v123._object = 0x8000000100024910;
      sub_1000225E0(v123);
      sub_1000225D0(v91);
      v124._countAndFlagsBits = 0;
      v124._object = 0xE000000000000000;
      sub_1000225E0(v124);
      v82 = v89;
      sub_1000224C0();
      (*(v93 + 56))(v82, 0, 1, v92);
      v83 = v90;
      sub_100022340();
      v84 = sub_100022350();
      (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
      goto LABEL_23;
    case 9:
      sub_1000224B0();
      sub_1000225F0();
      v105._countAndFlagsBits = 0xD00000000000001BLL;
      v105._object = 0x80000001000248C0;
      sub_1000225E0(v105);
      sub_1000225D0(v91);
      v106._countAndFlagsBits = 0;
      v106._object = 0xE000000000000000;
      sub_1000225E0(v106);
      v51 = v89;
      sub_1000224C0();
      (*(v93 + 56))(v51, 0, 1, v92);
      v52 = v90;
      sub_100022340();
      v53 = sub_100022350();
      (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
      goto LABEL_23;
    case 10:
      sub_1000224B0();
      sub_1000225F0();
      v121._countAndFlagsBits = 0xD00000000000001DLL;
      v121._object = 0x8000000100024870;
      sub_1000225E0(v121);
      sub_1000225D0(v91);
      v122._countAndFlagsBits = 0;
      v122._object = 0xE000000000000000;
      sub_1000225E0(v122);
      v79 = v89;
      sub_1000224C0();
      (*(v93 + 56))(v79, 0, 1, v92);
      v80 = v90;
      sub_100022340();
      v81 = sub_100022350();
      (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
      goto LABEL_23;
    case 11:
      sub_1000224B0();
      sub_1000225F0();
      v99._countAndFlagsBits = 0xD000000000000020;
      v99._object = 0x8000000100024810;
      sub_1000225E0(v99);
      sub_1000225D0(v91);
      v100._countAndFlagsBits = 0;
      v100._object = 0xE000000000000000;
      sub_1000225E0(v100);
      v42 = v89;
      sub_1000224C0();
      (*(v93 + 56))(v42, 0, 1, v92);
      v43 = v90;
      sub_100022340();
      v44 = sub_100022350();
      (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
      goto LABEL_23;
    case 12:
      sub_1000224B0();
      sub_1000225F0();
      v103._countAndFlagsBits = 0xD00000000000001DLL;
      v103._object = 0x80000001000247A0;
      sub_1000225E0(v103);
      sub_1000225D0(v91);
      v104._countAndFlagsBits = 0;
      v104._object = 0xE000000000000000;
      sub_1000225E0(v104);
      v48 = v89;
      sub_1000224C0();
      (*(v93 + 56))(v48, 0, 1, v92);
      v49 = v90;
      sub_100022340();
      v50 = sub_100022350();
      (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
      goto LABEL_23;
    case 13:
      sub_1000224B0();
      sub_1000225F0();
      v115._countAndFlagsBits = 0xD00000000000002CLL;
      v115._object = 0x8000000100024730;
      sub_1000225E0(v115);
      sub_1000225D0(v91);
      v116._countAndFlagsBits = 0;
      v116._object = 0xE000000000000000;
      sub_1000225E0(v116);
      v71 = v89;
      sub_1000224C0();
      (*(v93 + 56))(v71, 0, 1, v92);
      v72 = v90;
      sub_100022340();
      v73 = sub_100022350();
      (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
      goto LABEL_23;
    case 16:
      sub_1000224B0();
      sub_1000225F0();
      v97._countAndFlagsBits = 0xD000000000000021;
      v97._object = 0x8000000100024640;
      sub_1000225E0(v97);
      sub_1000225D0(v91);
      v98._countAndFlagsBits = 0;
      v98._object = 0xE000000000000000;
      sub_1000225E0(v98);
      v39 = v89;
      sub_1000224C0();
      (*(v93 + 56))(v39, 0, 1, v92);
      v40 = v90;
      sub_100022340();
      v41 = sub_100022350();
      (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
LABEL_23:
      sub_1000224B0();
      break;
    default:
      sub_1000225F0();
      v95._countAndFlagsBits = 0x5F5245444C4F48;
      v95._object = 0xE700000000000000;
      sub_1000225E0(v95);
      sub_1000225D0(v91);
      v96._countAndFlagsBits = 0;
      v96._object = 0xE000000000000000;
      sub_1000225E0(v96);
      sub_1000224C0();
      v33 = v89;
      sub_1000224B0();
      v34 = v93 + 56;
      (*(v93 + 56))(v33, 0, 1, v92);
      v35 = v90;
      sub_100022340();
      v36 = sub_100022350();
      (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
      sub_100001EF0(&qword_1000347A0, "8F");
      v37 = *(v34 + 16);
      v38 = (*(v34 + 24) + 32) & ~*(v34 + 24);
      *(swift_allocObject() + 16) = xmmword_100028650;
      sub_1000224B0();
      sub_1000224B0();
      sub_1000224B0();
      sub_1000224B0();
      break;
  }

  return sub_100022360();
}

uint64_t sub_10001DEAC()
{
  v0 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000224D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100022460();
  sub_100004D7C(v7, qword_10003CB18);
  sub_100004D44(v7, qword_10003CB18);
  sub_1000224B0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100022450();
}

uint64_t sub_10001E024(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000533C;

  return sub_10001F47C(a1);
}

uint64_t sub_10001E0CC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000531C;

  return sub_10001F274();
}

unint64_t sub_10001E170()
{
  result = qword_100034DE0;
  if (!qword_100034DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034DE0);
  }

  return result;
}

uint64_t sub_10001E1C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003BC0;

  return sub_10001F128();
}

unint64_t sub_10001E26C()
{
  result = qword_100034DE8;
  if (!qword_100034DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034DE8);
  }

  return result;
}

unint64_t sub_10001E2C4()
{
  result = qword_100034DF0;
  if (!qword_100034DF0)
  {
    sub_100002074(&qword_100034DF8, qword_100029038);
    sub_100019D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034DF0);
  }

  return result;
}

uint64_t sub_10001E348(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001E170();
  *v6 = v2;
  v6[1] = sub_1000042E4;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10001E3FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001E4A0;

  return sub_10001F68C();
}

uint64_t sub_10001E4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 24);
  v8 = *(*v3 + 16);
  v11 = *v3;

  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v9 = *(v11 + 8);

  return v9();
}

unint64_t sub_10001E5CC()
{
  result = qword_100034E00;
  if (!qword_100034E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E00);
  }

  return result;
}

uint64_t sub_10001E620()
{
  v0 = sub_100001EF0(&qword_100034E58, "v#");
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100001EF0(&qword_100034E60, &qword_100029438);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000117CC();
  sub_100022420();
  v9._object = 0x8000000100024CD0;
  v9._countAndFlagsBits = 0xD000000000000043;
  sub_100022410(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100022400();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100022410(v10);
  return sub_100022430();
}

unint64_t sub_10001E7E8()
{
  result = qword_100034E08;
  if (!qword_100034E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E08);
  }

  return result;
}

unint64_t sub_10001E840()
{
  result = qword_100034E10;
  if (!qword_100034E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E10);
  }

  return result;
}

unint64_t sub_10001E89C()
{
  result = qword_100034E18;
  if (!qword_100034E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E18);
  }

  return result;
}

uint64_t sub_10001E8F0()
{
  sub_1000118C8();
  v1 = sub_1000223B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10001E960()
{
  result = qword_100034E20;
  if (!qword_100034E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E20);
  }

  return result;
}

unint64_t sub_10001E9B8()
{
  result = qword_100034E28;
  if (!qword_100034E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E28);
  }

  return result;
}

unint64_t sub_10001EA14()
{
  result = qword_100034E30;
  if (!qword_100034E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E30);
  }

  return result;
}

unint64_t sub_10001EA6C()
{
  result = qword_100034E38;
  if (!qword_100034E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E38);
  }

  return result;
}

uint64_t sub_10001EAC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000343B8 != -1)
  {
    swift_once();
  }

  v2 = sub_100022460();
  v3 = sub_100004D44(v2, qword_10003CB18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10001EB6C()
{
  result = qword_100034E40;
  if (!qword_100034E40)
  {
    sub_100002074(&qword_100034E48, &qword_1000292D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E40);
  }

  return result;
}

uint64_t sub_10001EBD0(uint64_t a1)
{
  v2 = sub_1000117CC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001EC20()
{
  result = qword_100034E50;
  if (!qword_100034E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E50);
  }

  return result;
}

uint64_t sub_10001EC80(uint64_t a1)
{
  v2 = sub_10001EA14();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_10001ECDC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001ECF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001ED38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_10001ED88(char *a1, int64_t a2, char a3)
{
  result = sub_10001EE28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001EDA8(char *a1, int64_t a2, char a3)
{
  result = sub_10001F03C(a1, a2, a3, *v3, &qword_100034E78, &qword_100029470);
  *v3 = result;
  return result;
}

char *sub_10001EDD8(char *a1, int64_t a2, char a3)
{
  result = sub_10001EF1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001EDF8(char *a1, int64_t a2, char a3)
{
  result = sub_10001F03C(a1, a2, a3, *v3, &qword_100034E68, &qword_100029448);
  *v3 = result;
  return result;
}

char *sub_10001EE28(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001EF0(&qword_100034E80, &qword_100029478);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10001EF1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001EF0(&qword_100034E70, &qword_100029458);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001F03C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100001EF0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_10001F144()
{
  sub_10001EDD8(0, 19, 0);
  for (i = 0; i != 19; ++i)
  {
    v2 = *(&off_1000312A0 + i + 32);
    v3 = TUResolvedPhoneString();
    v4 = sub_100022620();
    v6 = v5;

    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_10001EDD8((v7 > 1), v8 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v8 + 1;
    v9 = &_swiftEmptyArrayStorage[3 * v8];
    *(v9 + 32) = v2;
    v9[5] = v4;
    v9[6] = v6;
  }

  v10 = *(v0 + 8);

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_10001F290()
{
  for (i = 0; i != 19; ++i)
  {
    v4 = *(&off_1000312A0 + i + 32);
    if (sub_1000103CC(v4))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001EDF8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v3 = _swiftEmptyArrayStorage[2];
      v2 = _swiftEmptyArrayStorage[3];
      if (v3 >= v2 >> 1)
      {
        sub_10001EDF8((v2 > 1), v3 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v3 + 1;
      *(&_swiftEmptyArrayStorage[4] + v3) = v4;
    }
  }

  v5 = _swiftEmptyArrayStorage[2];
  if (v5)
  {
    sub_10001EDD8(0, v5, 0);
    v6 = 32;
    do
    {
      v7 = *(_swiftEmptyArrayStorage + v6);
      v8 = TUResolvedPhoneString();
      v9 = sub_100022620();
      v11 = v10;

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_10001EDD8((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[3 * v13];
      *(v14 + 32) = v7;
      v14[5] = v9;
      v14[6] = v11;
      ++v6;
      --v5;
    }

    while (v5);
  }

  v15 = *(v0 + 8);

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_10001F49C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      if (sub_1000103CC(v7))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001EDF8(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v5 = _swiftEmptyArrayStorage[2];
        v4 = _swiftEmptyArrayStorage[3];
        if (v5 >= v4 >> 1)
        {
          sub_10001EDF8((v4 > 1), v5 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v5 + 1;
        *(&_swiftEmptyArrayStorage[4] + v5) = v6;
      }

      --v2;
    }

    while (v2);
  }

  v8 = _swiftEmptyArrayStorage[2];
  if (v8)
  {
    sub_10001EDD8(0, v8, 0);
    v9 = 32;
    do
    {
      v10 = *(_swiftEmptyArrayStorage + v9);
      v11 = TUResolvedPhoneString();
      v12 = sub_100022620();
      v14 = v13;

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_10001EDD8((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[3 * v16];
      *(v17 + 32) = v10;
      v17[5] = v12;
      v17[6] = v14;
      ++v9;
      --v8;
    }

    while (v8);
  }

  v18 = *(v0 + 8);

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_10001F6A8()
{
  for (i = 0; i != 19; ++i)
  {
    v4 = *(&off_1000312A0 + i + 32);
    if (sub_1000103CC(v4))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001EDF8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v3 = _swiftEmptyArrayStorage[2];
      v2 = _swiftEmptyArrayStorage[3];
      if (v3 >= v2 >> 1)
      {
        sub_10001EDF8((v2 > 1), v3 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v3 + 1;
      *(&_swiftEmptyArrayStorage[4] + v3) = v4;
    }
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v5 = LOBYTE(_swiftEmptyArrayStorage[4]);

    v6 = TUResolvedPhoneString();
    v7 = sub_100022620();
    v9 = v8;
  }

  else
  {

    v5 = 0;
    v7 = 0;
    v9 = 0;
  }

  v10 = *(v0 + 8);

  return v10(v5, v7, v9);
}

uint64_t sub_10001F828()
{
  v0 = sub_100001EF0(&qword_100034E90, &qword_1000294E0);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10001F8B0();
  sub_100022530();
  return 0;
}

unint64_t sub_10001F8B0()
{
  result = qword_100034E88;
  if (!qword_100034E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E88);
  }

  return result;
}

unint64_t sub_10001F934()
{
  result = qword_100034E98;
  if (!qword_100034E98)
  {
    sub_100002074(&qword_100034EA0, &qword_1000294E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034E98);
  }

  return result;
}

unint64_t sub_10001F99C()
{
  result = qword_100034EA8;
  if (!qword_100034EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100034EA8);
  }

  return result;
}

uint64_t sub_10001FA34()
{
  v0 = sub_100001EF0(&qword_100034F90, &qword_100029BF8);
  sub_100004D7C(v0, qword_10003CB30);
  sub_100004D44(v0, qword_10003CB30);
  sub_100021108();
  return sub_1000223F0();
}

uint64_t sub_10001FAB8()
{
  v0 = sub_100001EF0(&qword_100034540, &qword_100025720);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000224D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100022460();
  sub_100004D7C(v7, qword_10003CB48);
  sub_100004D44(v7, qword_10003CB48);
  sub_1000224B0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100022450();
}

uint64_t sub_10001FC28()
{
  v0 = sub_1000224D0();
  sub_100004D7C(v0, qword_10003CB60);
  sub_100004D44(v0, qword_10003CB60);
  return sub_1000224B0();
}

uint64_t sub_10001FC8C()
{
  v0 = sub_100001EF0(&qword_1000345B8, &unk_1000257C0);
  sub_100004D7C(v0, qword_10003CB78);
  v1 = sub_100004D44(v0, qword_10003CB78);
  sub_1000222D0();
  v2 = sub_1000222E0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10001FD4C()
{
  result = swift_getKeyPath();
  qword_10003CB90 = result;
  return result;
}

uint64_t sub_10001FD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100001EF0(&qword_100034588, &qword_100025770) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100001EF0(&qword_100034590, &qword_100025778) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100001EF0(&qword_100034FB0, &qword_100029C30) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_100022130();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100001EF0(&qword_100034FB8, &qword_100029C38);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10001FF54, 0, 0);
}

uint64_t sub_10001FF54()
{
  v1 = v0[8];
  sub_100022180();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_100021108();
  *v3 = v0;
  v3[1] = sub_100020024;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_100022008, 0, &type metadata for MPSilenceUnknownCallersToggleEntity, v4);
}

uint64_t sub_100020024()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100020120, 0, 0);
}

uint64_t sub_100020120()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_100022180();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_100022180();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000343E0 != -1)
  {
    swift_once();
  }

  v4 = qword_10003CB90;
  *(v0 + 176) = qword_10003CB90;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_1000020BC(&qword_100034F98, &qword_100034FA0, &qword_100029C10);
  *v6 = v0;
  v6[1] = sub_100020280;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_100020280()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100002F0C;
  }

  else
  {
    v5 = sub_1000203D4;
  }

  return _swift_task_switch(v5, 0, 0);
}