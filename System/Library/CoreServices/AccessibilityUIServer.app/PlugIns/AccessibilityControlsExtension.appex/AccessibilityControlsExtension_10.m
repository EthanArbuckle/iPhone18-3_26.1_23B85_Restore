uint64_t sub_10013A9A4@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v24[1] = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1002D8900();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1002D8CF0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v24 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v24 - v16;
  v18 = sub_1002D8910();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  __chkstk_darwin(v21);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v19 + 56))(v17, 0, 1, v18);
  sub_1002D8690();
  v22 = sub_1002D86B0();
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  sub_1002D8CE0();
  sub_1000B4F14(v7);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_10013AD20()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D450);
  sub_10001EDB8(v0, qword_10051D450);
  return sub_1002D88F0();
}

uint64_t sub_10013AD84()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D468);
  v1 = sub_10001EDB8(v0, qword_10051D468);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10013AE44()
{
  result = swift_getKeyPath();
  qword_10051D480 = result;
  return result;
}

uint64_t sub_10013AE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455BB8, &qword_100352D68) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455BC0, &qword_100352D70);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10013B04C, 0, 0);
}

uint64_t sub_10013B04C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10013C19C();
  *v4 = v0;
  v4[1] = sub_10013B130;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EC0, 0, &type metadata for AccessibilityIncreaseContrastEnabledEntity, v5);
}

uint64_t sub_10013B130()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10013B22C, 0, 0);
}

uint64_t sub_10013B22C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A620 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D480;
  *(v0 + 288) = qword_10051D480;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455BA0, &qword_100455BA8, &qword_100352D50);
  *v7 = v0;
  v7[1] = sub_10013B390;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10013B390()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_10013B500;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10013B500()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10013A79C();
  sub_10013C3B0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10013B778()
{
  v0 = sub_10000321C(&qword_100455BC8, &qword_100352D78);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A620 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10013C3B0();
  sub_10002B6E4(&qword_100455BD0, &qword_100455BC8, &qword_100352D78);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10013B8EC(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_10013B960(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_10013B9FC()
{
  result = qword_1004499A8;
  if (!qword_1004499A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499A8);
  }

  return result;
}

unint64_t sub_10013BA54()
{
  result = qword_1004499B0;
  if (!qword_1004499B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499B0);
  }

  return result;
}

uint64_t sub_10013BB50(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10013AE6C(a1, v5, v4);
}

uint64_t sub_10013BBFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A8960();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10013BC44()
{
  result = qword_1004499B8;
  if (!qword_1004499B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499B8);
  }

  return result;
}

unint64_t sub_10013BC9C()
{
  result = qword_1004499C0;
  if (!qword_1004499C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499C0);
  }

  return result;
}

uint64_t sub_10013BD10()
{
  v1 = *(v0 + 16);
  *v1 = _AXDarkenSystemColors() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10013BDA4()
{
  v1 = *(v0 + 16);
  _AXSSetDarkenSystemColors();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10013BE08(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10013BE98, 0, 0);
}

uint64_t sub_10013BE98()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004499A0, qword_1003082B8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455BA0, &qword_100455BA8, &qword_100352D50);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000023;
  v2[1] = 0x800000010035E4E0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10013BFE4()
{
  result = qword_1004499C8;
  if (!qword_1004499C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499C8);
  }

  return result;
}

uint64_t sub_10013C038(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10013C608();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10013C0EC()
{
  result = qword_1004499D0;
  if (!qword_1004499D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499D0);
  }

  return result;
}

unint64_t sub_10013C144()
{
  result = qword_1004499D8;
  if (!qword_1004499D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499D8);
  }

  return result;
}

unint64_t sub_10013C19C()
{
  result = qword_1004499E0;
  if (!qword_1004499E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499E0);
  }

  return result;
}

uint64_t sub_10013C1F0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10013C608();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10013C2A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10013C608();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10013C358()
{
  result = qword_1004499E8;
  if (!qword_1004499E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499E8);
  }

  return result;
}

unint64_t sub_10013C3B0()
{
  result = qword_1004499F0;
  if (!qword_1004499F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004499F0);
  }

  return result;
}

uint64_t sub_10013C448(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10013BFE4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10013C500()
{
  result = qword_100449A08;
  if (!qword_100449A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A08);
  }

  return result;
}

unint64_t sub_10013C558()
{
  result = qword_100449A10;
  if (!qword_100449A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A10);
  }

  return result;
}

unint64_t sub_10013C5B0()
{
  result = qword_100449A18;
  if (!qword_100449A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A18);
  }

  return result;
}

unint64_t sub_10013C608()
{
  result = qword_100449A20;
  if (!qword_100449A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A20);
  }

  return result;
}

uint64_t sub_10013C65C()
{
  v0 = qword_100446CF8;

  return v0;
}

unint64_t sub_10013C698()
{
  result = qword_100449A28;
  if (!qword_100449A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A28);
  }

  return result;
}

uint64_t sub_10013C6EC()
{
  v0 = sub_10000321C(&qword_100455B90, &qword_100352D30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455B98, &qword_100352D38);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10013C19C();
  sub_1002D8800();
  v9._object = 0x8000000100373AF0;
  v9._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1002D87E0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1002D87F0(v10);
  return sub_1002D8810();
}

unint64_t sub_10013C8B4()
{
  result = qword_100449A30;
  if (!qword_100449A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A30);
  }

  return result;
}

unint64_t sub_10013C90C()
{
  result = qword_100449A38;
  if (!qword_100449A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A38);
  }

  return result;
}

unint64_t sub_10013C964()
{
  result = qword_100449A40;
  if (!qword_100449A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A40);
  }

  return result;
}

uint64_t sub_10013C9B8()
{
  sub_1002D5F14();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10013CAA0(uint64_t a1)
{
  v2 = sub_10013C19C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10013CAF0()
{
  result = qword_100449A58;
  if (!qword_100449A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A58);
  }

  return result;
}

uint64_t sub_10013CB48(uint64_t a1)
{
  v2 = sub_10013C964();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10013CB98()
{
  result = qword_100449A60;
  if (!qword_100449A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A60);
  }

  return result;
}

uint64_t sub_10013CC30()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1002D8910();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1002D8840();
  sub_10001EDF0(v7, qword_10051D488);
  sub_10001EDB8(v7, qword_10051D488);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10013CDA0@<X0>(uint64_t a1@<X8>)
{
  v23[0] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1002D8900();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1002D8CF0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v23 - v11;
  v13 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v23 - v15;
  v17 = sub_1002D8910();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  __chkstk_darwin(v20);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_1002D8690();
  v21 = sub_1002D86B0();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_10013D110()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D4A0);
  sub_10001EDB8(v0, qword_10051D4A0);
  return sub_1002D88F0();
}

uint64_t sub_10013D174()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D4B8);
  v1 = sub_10001EDB8(v0, qword_10051D4B8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10013D234()
{
  result = swift_getKeyPath();
  qword_10051D4D0 = result;
  return result;
}

uint64_t sub_10013D25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455B68, &qword_100352CF0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455B70, &qword_100352CF8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10013D43C, 0, 0);
}

uint64_t sub_10013D43C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10013E58C();
  *v4 = v0;
  v4[1] = sub_10013D520;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EC4, 0, &type metadata for AccessibilityDifferentiateWithoutColorEnabledEntity, v5);
}

uint64_t sub_10013D520()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10013D61C, 0, 0);
}

uint64_t sub_10013D61C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A640 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D4D0;
  *(v0 + 288) = qword_10051D4D0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455B50, &qword_100455B58, &qword_100352CD8);
  *v7 = v0;
  v7[1] = sub_10013D780;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10013D780()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_10013D8F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10013D8F0()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10013CB98();
  sub_10013E7A0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10013DB68()
{
  v0 = sub_10000321C(&qword_100455B78, &qword_100352D00);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A640 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10013E7A0();
  sub_10002B6E4(&qword_100455B80, &qword_100455B78, &qword_100352D00);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10013DCDC(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_10013DD50(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_10013DDEC()
{
  result = qword_100449A78;
  if (!qword_100449A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A78);
  }

  return result;
}

unint64_t sub_10013DE44()
{
  result = qword_100449A80;
  if (!qword_100449A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A80);
  }

  return result;
}

uint64_t sub_10013DF40(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10013D25C(a1, v5, v4);
}

uint64_t sub_10013DFEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A8DC8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10013E034()
{
  result = qword_100449A88;
  if (!qword_100449A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A88);
  }

  return result;
}

unint64_t sub_10013E08C()
{
  result = qword_100449A90;
  if (!qword_100449A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A90);
  }

  return result;
}

uint64_t sub_10013E100()
{
  v1 = *(v0 + 16);
  *v1 = _AXSDifferentiateWithoutColorEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10013E194()
{
  v1 = *(v0 + 16);
  _AXSSetDifferentiateWithoutColorEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10013E1F8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10013E288, 0, 0);
}

uint64_t sub_10013E288()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100449A70, qword_1003088F0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455B50, &qword_100455B58, &qword_100352CD8);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000002CLL;
  v2[1] = 0x800000010035FB70;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10013E3D4()
{
  result = qword_100449A98;
  if (!qword_100449A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449A98);
  }

  return result;
}

uint64_t sub_10013E428(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10013E9F8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10013E4DC()
{
  result = qword_100449AA0;
  if (!qword_100449AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AA0);
  }

  return result;
}

unint64_t sub_10013E534()
{
  result = qword_100449AA8;
  if (!qword_100449AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AA8);
  }

  return result;
}

unint64_t sub_10013E58C()
{
  result = qword_100449AB0;
  if (!qword_100449AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AB0);
  }

  return result;
}

uint64_t sub_10013E5E0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10013E9F8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10013E694(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10013E9F8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10013E748()
{
  result = qword_100449AB8;
  if (!qword_100449AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AB8);
  }

  return result;
}

unint64_t sub_10013E7A0()
{
  result = qword_100449AC0;
  if (!qword_100449AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AC0);
  }

  return result;
}

uint64_t sub_10013E838(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10013E3D4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10013E8F0()
{
  result = qword_100449AD8;
  if (!qword_100449AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AD8);
  }

  return result;
}

unint64_t sub_10013E948()
{
  result = qword_100449AE0;
  if (!qword_100449AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AE0);
  }

  return result;
}

unint64_t sub_10013E9A0()
{
  result = qword_100449AE8;
  if (!qword_100449AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AE8);
  }

  return result;
}

unint64_t sub_10013E9F8()
{
  result = qword_100449AF0;
  if (!qword_100449AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AF0);
  }

  return result;
}

uint64_t sub_10013EA4C()
{
  v0 = qword_100446D08;

  return v0;
}

unint64_t sub_10013EA88()
{
  result = qword_100449AF8;
  if (!qword_100449AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449AF8);
  }

  return result;
}

uint64_t sub_10013EADC()
{
  v0 = sub_10000321C(&qword_100455B40, &qword_100352CB8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455B48, &qword_100352CC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10013E58C();
  sub_1002D8800();
  v9._object = 0x8000000100373AF0;
  v9._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1002D87E0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1002D87F0(v10);
  return sub_1002D8810();
}

unint64_t sub_10013ECA4()
{
  result = qword_100449B00;
  if (!qword_100449B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B00);
  }

  return result;
}

unint64_t sub_10013ECFC()
{
  result = qword_100449B08;
  if (!qword_100449B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B08);
  }

  return result;
}

unint64_t sub_10013ED54()
{
  result = qword_100449B10;
  if (!qword_100449B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B10);
  }

  return result;
}

uint64_t sub_10013EDA8()
{
  sub_1002D5EC0();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10013EE90(uint64_t a1)
{
  v2 = sub_10013E58C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10013EEE0()
{
  result = qword_100449B28;
  if (!qword_100449B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B28);
  }

  return result;
}

uint64_t sub_10013EF38(uint64_t a1)
{
  v2 = sub_10013ED54();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10013EF88()
{
  result = qword_100449B30;
  if (!qword_100449B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B30);
  }

  return result;
}

uint64_t sub_10013F020()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1002D8910();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1002D8840();
  sub_10001EDF0(v7, qword_10051D4D8);
  sub_10001EDB8(v7, qword_10051D4D8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10013F190@<X0>(uint64_t a1@<X8>)
{
  v23[0] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1002D8900();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1002D8CF0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v23 - v11;
  v13 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v23 - v15;
  v17 = sub_1002D8910();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  __chkstk_darwin(v20);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_1002D8690();
  v21 = sub_1002D86B0();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_10013F500()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D4F0);
  sub_10001EDB8(v0, qword_10051D4F0);
  return sub_1002D88F0();
}

uint64_t sub_10013F564()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D508);
  v1 = sub_10001EDB8(v0, qword_10051D508);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10013F624()
{
  result = swift_getKeyPath();
  qword_10051D520 = result;
  return result;
}

uint64_t sub_10013F64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455B18, &qword_100352C78) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455B20, &qword_100352C80);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10013F82C, 0, 0);
}

uint64_t sub_10013F82C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10014097C();
  *v4 = v0;
  v4[1] = sub_10013F910;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EC8, 0, &type metadata for AccessibilityPreferHorizontalTextEnabledEntity, v5);
}

uint64_t sub_10013F910()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10013FA0C, 0, 0);
}

uint64_t sub_10013FA0C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A660 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D520;
  *(v0 + 288) = qword_10051D520;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455B00, &qword_100455B08, &qword_100352C60);
  *v7 = v0;
  v7[1] = sub_10013FB70;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10013FB70()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_10013FCE0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10013FCE0()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10013EF88();
  sub_100140B90();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10013FF58()
{
  v0 = sub_10000321C(&qword_100455B28, &qword_100352C88);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A660 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100140B90();
  sub_10002B6E4(&qword_100455B30, &qword_100455B28, &qword_100352C88);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001400CC(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_100140140(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_1001401DC()
{
  result = qword_100449B48;
  if (!qword_100449B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B48);
  }

  return result;
}

unint64_t sub_100140234()
{
  result = qword_100449B50;
  if (!qword_100449B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B50);
  }

  return result;
}

uint64_t sub_100140330(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10013F64C(a1, v5, v4);
}

uint64_t sub_1001403DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A9230();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100140424()
{
  result = qword_100449B58;
  if (!qword_100449B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B58);
  }

  return result;
}

unint64_t sub_10014047C()
{
  result = qword_100449B60;
  if (!qword_100449B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B60);
  }

  return result;
}

uint64_t sub_1001404F0()
{
  v1 = *(v0 + 16);
  *v1 = _AXSPrefersHorizontalTextLayout() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100140584()
{
  v1 = *(v0 + 16);
  _AXSSetPrefersHorizontalTextLayout();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001405E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100140678, 0, 0);
}

uint64_t sub_100140678()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100449B40, qword_100308F28);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455B00, &qword_100455B08, &qword_100352C60);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000027;
  v2[1] = 0x800000010035C9D0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001407C4()
{
  result = qword_100449B68;
  if (!qword_100449B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B68);
  }

  return result;
}

uint64_t sub_100140818(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100140DE8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001408CC()
{
  result = qword_100449B70;
  if (!qword_100449B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B70);
  }

  return result;
}

unint64_t sub_100140924()
{
  result = qword_100449B78;
  if (!qword_100449B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B78);
  }

  return result;
}

unint64_t sub_10014097C()
{
  result = qword_100449B80;
  if (!qword_100449B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B80);
  }

  return result;
}

uint64_t sub_1001409D0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100140DE8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100140A84(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100140DE8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100140B38()
{
  result = qword_100449B88;
  if (!qword_100449B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B88);
  }

  return result;
}

unint64_t sub_100140B90()
{
  result = qword_100449B90;
  if (!qword_100449B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449B90);
  }

  return result;
}

uint64_t sub_100140C28(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001407C4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100140CE0()
{
  result = qword_100449BA8;
  if (!qword_100449BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BA8);
  }

  return result;
}

unint64_t sub_100140D38()
{
  result = qword_100449BB0;
  if (!qword_100449BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BB0);
  }

  return result;
}

unint64_t sub_100140D90()
{
  result = qword_100449BB8;
  if (!qword_100449BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BB8);
  }

  return result;
}

unint64_t sub_100140DE8()
{
  result = qword_100449BC0;
  if (!qword_100449BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BC0);
  }

  return result;
}

uint64_t sub_100140E3C()
{
  v0 = qword_100446D18;

  return v0;
}

unint64_t sub_100140E78()
{
  result = qword_100449BC8;
  if (!qword_100449BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BC8);
  }

  return result;
}

uint64_t sub_100140ECC()
{
  v0 = sub_10000321C(&qword_100455AF0, &qword_100352C40);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455AF8, &qword_100352C48);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10014097C();
  sub_1002D8800();
  v9._object = 0x8000000100373AF0;
  v9._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1002D87E0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1002D87F0(v10);
  return sub_1002D8810();
}

unint64_t sub_100141094()
{
  result = qword_100449BD0;
  if (!qword_100449BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BD0);
  }

  return result;
}

unint64_t sub_1001410EC()
{
  result = qword_100449BD8;
  if (!qword_100449BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BD8);
  }

  return result;
}

unint64_t sub_100141144()
{
  result = qword_100449BE0;
  if (!qword_100449BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BE0);
  }

  return result;
}

uint64_t sub_100141198()
{
  sub_1002D5E6C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100141280(uint64_t a1)
{
  v2 = sub_10014097C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001412D0()
{
  result = qword_100449BF8;
  if (!qword_100449BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449BF8);
  }

  return result;
}

uint64_t sub_100141328(uint64_t a1)
{
  v2 = sub_100141144();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100141378()
{
  result = qword_100449C00;
  if (!qword_100449C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C00);
  }

  return result;
}

uint64_t sub_100141438@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v24[1] = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1002D8900();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1002D8CF0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v24 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v24 - v16;
  v18 = sub_1002D8910();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  __chkstk_darwin(v21);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v19 + 56))(v17, 0, 1, v18);
  sub_1002D8690();
  v22 = sub_1002D86B0();
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  sub_1002D8CE0();
  sub_1000B4F14(v7);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_1001417BC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D540);
  sub_10001EDB8(v0, qword_10051D540);
  return sub_1002D88F0();
}

uint64_t sub_100141820()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D558);
  v1 = sub_10001EDB8(v0, qword_10051D558);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001418E0()
{
  result = swift_getKeyPath();
  qword_10051D570 = result;
  return result;
}

uint64_t sub_100141908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455AC8, &qword_100352C00) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455AD0, &qword_100352C08);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100141AE8, 0, 0);
}

uint64_t sub_100141AE8()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100142C60();
  *v4 = v0;
  v4[1] = sub_100141BCC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6ECC, 0, &type metadata for AccessibilitySmartInvertEnabledEntity, v5);
}

uint64_t sub_100141BCC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100141CC8, 0, 0);
}

uint64_t sub_100141CC8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A680 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D570;
  *(v0 + 288) = qword_10051D570;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455AB0, &qword_100455AB8, &qword_100352BE8);
  *v7 = v0;
  v7[1] = sub_100141E2C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100141E2C()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_100141F9C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100141F9C()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100141378();
  sub_100142E74();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100142214()
{
  v0 = sub_10000321C(&qword_100455AD8, &qword_100352C10);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A680 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100142E74();
  sub_10002B6E4(&qword_100455AE0, &qword_100455AD8, &qword_100352C10);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100142388(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_1001423FC(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100142498()
{
  result = qword_100449C18;
  if (!qword_100449C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C18);
  }

  return result;
}

unint64_t sub_1001424F0()
{
  result = qword_100449C20;
  if (!qword_100449C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C20);
  }

  return result;
}

uint64_t sub_1001425EC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100141908(a1, v5, v4);
}

uint64_t sub_100142698@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A96A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001426E0()
{
  result = qword_100449C28;
  if (!qword_100449C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C28);
  }

  return result;
}

unint64_t sub_100142738()
{
  result = qword_100449C30;
  if (!qword_100449C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C30);
  }

  return result;
}

uint64_t sub_1001427AC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = _AXSInvertColorsEnabledGlobal() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100142870()
{
  sub_100003390(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001428D4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100142964, 0, 0);
}

uint64_t sub_100142964()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100449C10, qword_100309560);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455AB0, &qword_100455AB8, &qword_100352BE8);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001DLL;
  v2[1] = 0x800000010035BAD0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100142AA8()
{
  result = qword_100449C38;
  if (!qword_100449C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C38);
  }

  return result;
}

uint64_t sub_100142AFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001430CC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100142BB0()
{
  result = qword_100449C40;
  if (!qword_100449C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C40);
  }

  return result;
}

unint64_t sub_100142C08()
{
  result = qword_100449C48;
  if (!qword_100449C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C48);
  }

  return result;
}

unint64_t sub_100142C60()
{
  result = qword_100449C50;
  if (!qword_100449C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C50);
  }

  return result;
}

uint64_t sub_100142CB4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001430CC();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100142D68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001430CC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100142E1C()
{
  result = qword_100449C58;
  if (!qword_100449C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C58);
  }

  return result;
}

unint64_t sub_100142E74()
{
  result = qword_100449C60;
  if (!qword_100449C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C60);
  }

  return result;
}

uint64_t sub_100142F0C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100142AA8();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100142FC4()
{
  result = qword_100449C78;
  if (!qword_100449C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C78);
  }

  return result;
}

unint64_t sub_10014301C()
{
  result = qword_100449C80;
  if (!qword_100449C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C80);
  }

  return result;
}

unint64_t sub_100143074()
{
  result = qword_100449C88;
  if (!qword_100449C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C88);
  }

  return result;
}

unint64_t sub_1001430CC()
{
  result = qword_100449C90;
  if (!qword_100449C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C90);
  }

  return result;
}

uint64_t sub_100143120()
{
  v0 = qword_100446D28;

  return v0;
}

unint64_t sub_10014315C()
{
  result = qword_100449C98;
  if (!qword_100449C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449C98);
  }

  return result;
}

uint64_t sub_1001431B0()
{
  v0 = sub_10000321C(&qword_100455AA0, &qword_100352BC8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455AA8, &qword_100352BD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100142C60();
  sub_1002D8800();
  v9._object = 0x8000000100373AF0;
  v9._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1002D87E0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1002D87F0(v10);
  return sub_1002D8810();
}

unint64_t sub_100143378()
{
  result = qword_100449CA0;
  if (!qword_100449CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CA0);
  }

  return result;
}

unint64_t sub_1001433D0()
{
  result = qword_100449CA8;
  if (!qword_100449CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CA8);
  }

  return result;
}

unint64_t sub_100143428()
{
  result = qword_100449CB0;
  if (!qword_100449CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CB0);
  }

  return result;
}

uint64_t sub_10014347C()
{
  sub_1002D5E18();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100143564(uint64_t a1)
{
  v2 = sub_100142C60();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001435B4()
{
  result = qword_100449CC8;
  if (!qword_100449CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CC8);
  }

  return result;
}

uint64_t sub_10014360C(uint64_t a1)
{
  v2 = sub_100143428();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10014365C()
{
  result = qword_100449CD0;
  if (!qword_100449CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CD0);
  }

  return result;
}

uint64_t sub_100143720@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v24[1] = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1002D8900();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1002D8CF0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v24 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v24 - v16;
  v18 = sub_1002D8910();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  __chkstk_darwin(v21);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v19 + 56))(v17, 0, 1, v18);
  sub_1002D8690();
  v22 = sub_1002D86B0();
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  sub_1002D8CE0();
  sub_1000B4F14(v7);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100143AA8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D590);
  sub_10001EDB8(v0, qword_10051D590);
  return sub_1002D88F0();
}

uint64_t sub_100143B0C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D5A8);
  v1 = sub_10001EDB8(v0, qword_10051D5A8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100143BCC()
{
  result = swift_getKeyPath();
  qword_10051D5C0 = result;
  return result;
}

uint64_t sub_100143BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455A78, &qword_100352B88) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455A80, &qword_100352B90);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100143DD4, 0, 0);
}

uint64_t sub_100143DD4()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100144F88();
  *v4 = v0;
  v4[1] = sub_100143EB8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6ED0, 0, &type metadata for AccessibilityClassicInvertEnabledEntity, v5);
}

uint64_t sub_100143EB8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100143FB4, 0, 0);
}

uint64_t sub_100143FB4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A6A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D5C0;
  *(v0 + 288) = qword_10051D5C0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455A60, &qword_100455A68, &qword_100352B70);
  *v7 = v0;
  v7[1] = sub_100144118;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100144118()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_100144288;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100144288()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10014365C();
  sub_10014519C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100144500()
{
  v0 = sub_10000321C(&qword_100455A88, &qword_100352B98);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A6A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10014519C();
  sub_10002B6E4(&qword_100455A90, &qword_100455A88, &qword_100352B98);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100144674(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_1001446E8(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100144784()
{
  result = qword_100449CE8;
  if (!qword_100449CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CE8);
  }

  return result;
}

unint64_t sub_1001447DC()
{
  result = qword_100449CF0;
  if (!qword_100449CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CF0);
  }

  return result;
}

uint64_t sub_1001448D8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100143BF4(a1, v5, v4);
}

uint64_t sub_100144984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A9B10();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001449CC()
{
  result = qword_100449CF8;
  if (!qword_100449CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449CF8);
  }

  return result;
}

unint64_t sub_100144A24()
{
  result = qword_100449D00;
  if (!qword_100449D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D00);
  }

  return result;
}

uint64_t sub_100144A98()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 classicInvertColors];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100144B60()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setClassicInvertColors:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100144BF8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100144C88, 0, 0);
}

uint64_t sub_100144C88()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100449CE0, qword_100309B98);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455A60, &qword_100455A68, &qword_100352B70);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001FLL;
  v2[1] = 0x8000000100360640;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100144DD0()
{
  result = qword_100449D08;
  if (!qword_100449D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D08);
  }

  return result;
}

uint64_t sub_100144E24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001453F4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100144ED8()
{
  result = qword_100449D10;
  if (!qword_100449D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D10);
  }

  return result;
}

unint64_t sub_100144F30()
{
  result = qword_100449D18;
  if (!qword_100449D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D18);
  }

  return result;
}

unint64_t sub_100144F88()
{
  result = qword_100449D20;
  if (!qword_100449D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D20);
  }

  return result;
}

uint64_t sub_100144FDC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001453F4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100145090(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001453F4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100145144()
{
  result = qword_100449D28;
  if (!qword_100449D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D28);
  }

  return result;
}

unint64_t sub_10014519C()
{
  result = qword_100449D30;
  if (!qword_100449D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D30);
  }

  return result;
}

uint64_t sub_100145234(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100144DD0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001452EC()
{
  result = qword_100449D48;
  if (!qword_100449D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D48);
  }

  return result;
}

unint64_t sub_100145344()
{
  result = qword_100449D50;
  if (!qword_100449D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D50);
  }

  return result;
}

unint64_t sub_10014539C()
{
  result = qword_100449D58;
  if (!qword_100449D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D58);
  }

  return result;
}

unint64_t sub_1001453F4()
{
  result = qword_100449D60;
  if (!qword_100449D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D60);
  }

  return result;
}

uint64_t sub_100145448()
{
  v0 = qword_100446D38;

  return v0;
}

unint64_t sub_100145484()
{
  result = qword_100449D68;
  if (!qword_100449D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D68);
  }

  return result;
}

uint64_t sub_1001454D8()
{
  v0 = sub_10000321C(&qword_100455A50, &qword_100352B50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455A58, &qword_100352B58);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100144F88();
  sub_1002D8800();
  v9._object = 0x8000000100373AF0;
  v9._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1002D87E0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1002D87F0(v10);
  return sub_1002D8810();
}

unint64_t sub_1001456A0()
{
  result = qword_100449D70;
  if (!qword_100449D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D70);
  }

  return result;
}

unint64_t sub_1001456F8()
{
  result = qword_100449D78;
  if (!qword_100449D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D78);
  }

  return result;
}

unint64_t sub_100145750()
{
  result = qword_100449D80;
  if (!qword_100449D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D80);
  }

  return result;
}

uint64_t sub_1001457A4()
{
  sub_1002D5DC4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10014588C(uint64_t a1)
{
  v2 = sub_100144F88();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001458DC()
{
  result = qword_100449D98;
  if (!qword_100449D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449D98);
  }

  return result;
}

uint64_t sub_100145934(uint64_t a1)
{
  v2 = sub_100145750();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100145984()
{
  result = qword_100449DA0;
  if (!qword_100449DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DA0);
  }

  return result;
}

uint64_t sub_100145A48@<X0>(uint64_t a1@<X8>)
{
  v23[0] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1002D8900();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1002D8CF0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v23 - v11;
  v13 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v23 - v15;
  v17 = sub_1002D8910();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  __chkstk_darwin(v20);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_1002D8690();
  v21 = sub_1002D86B0();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100145DC4()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D5E0);
  sub_10001EDB8(v0, qword_10051D5E0);
  return sub_1002D88F0();
}

uint64_t sub_100145E28()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D5F8);
  v1 = sub_10001EDB8(v0, qword_10051D5F8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100145EE8()
{
  result = swift_getKeyPath();
  qword_10051D610 = result;
  return result;
}

uint64_t sub_100145F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455A28, &qword_100352B10) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455A30, &qword_100352B18);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001460F0, 0, 0);
}

uint64_t sub_1001460F0()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001472E8();
  *v4 = v0;
  v4[1] = sub_1001461D4;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6ED4, 0, &type metadata for AccessibilityAutoBrightnessEnabledEntity, v5);
}

uint64_t sub_1001461D4()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001462D0, 0, 0);
}

uint64_t sub_1001462D0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A6C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D610;
  *(v0 + 288) = qword_10051D610;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455A10, &qword_100455A18, &qword_100352AF8);
  *v7 = v0;
  v7[1] = sub_100146434;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100146434()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_1001465A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001465A4()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100145984();
  sub_1001474FC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10014681C()
{
  v0 = sub_10000321C(&qword_100455A38, &qword_100352B20);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A6C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001474FC();
  sub_10002B6E4(&qword_100455A40, &qword_100455A38, &qword_100352B20);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100146990(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_100146A04(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100146AA0()
{
  result = qword_100449DB8;
  if (!qword_100449DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DB8);
  }

  return result;
}

unint64_t sub_100146AF8()
{
  result = qword_100449DC0;
  if (!qword_100449DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DC0);
  }

  return result;
}

uint64_t sub_100146BF4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100145F10(a1, v5, v4);
}

uint64_t sub_100146CA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A9F78();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100146CE8()
{
  result = qword_100449DC8;
  if (!qword_100449DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DC8);
  }

  return result;
}

unint64_t sub_100146D40()
{
  result = qword_100449DD0;
  if (!qword_100449DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DD0);
  }

  return result;
}

uint64_t sub_100146DB4()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = _AXSAutoBrightnessEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

__CFNotificationCenter *sub_100146E78()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  BKSDisplayBrightnessSetAutoBrightnessEnabled();
  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (kAXSAutoBrightnessChangedNotification)
  {
    v3 = result;
    v4 = kAXSAutoBrightnessChangedNotification;
    CFNotificationCenterPostNotification(v3, v4, 0, 0, 1u);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100146F58(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100146FE8, 0, 0);
}

uint64_t sub_100146FE8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100449DB0, qword_10030A1D0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455A10, &qword_100455A18, &qword_100352AF8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000020;
  v2[1] = 0x80000001003615A0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100147130()
{
  result = qword_100449DD8;
  if (!qword_100449DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DD8);
  }

  return result;
}

uint64_t sub_100147184(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100147754();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100147238()
{
  result = qword_100449DE0;
  if (!qword_100449DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DE0);
  }

  return result;
}

unint64_t sub_100147290()
{
  result = qword_100449DE8;
  if (!qword_100449DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DE8);
  }

  return result;
}

unint64_t sub_1001472E8()
{
  result = qword_100449DF0;
  if (!qword_100449DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DF0);
  }

  return result;
}

uint64_t sub_10014733C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100147754();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001473F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100147754();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001474A4()
{
  result = qword_100449DF8;
  if (!qword_100449DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449DF8);
  }

  return result;
}

unint64_t sub_1001474FC()
{
  result = qword_100449E00;
  if (!qword_100449E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E00);
  }

  return result;
}

uint64_t sub_100147594(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100147130();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10014764C()
{
  result = qword_100449E18;
  if (!qword_100449E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E18);
  }

  return result;
}

unint64_t sub_1001476A4()
{
  result = qword_100449E20;
  if (!qword_100449E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E20);
  }

  return result;
}

unint64_t sub_1001476FC()
{
  result = qword_100449E28;
  if (!qword_100449E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E28);
  }

  return result;
}

unint64_t sub_100147754()
{
  result = qword_100449E30;
  if (!qword_100449E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E30);
  }

  return result;
}

uint64_t sub_1001477A8()
{
  v0 = qword_100446D48;

  return v0;
}

unint64_t sub_1001477E4()
{
  result = qword_100449E38;
  if (!qword_100449E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E38);
  }

  return result;
}

uint64_t sub_100147838()
{
  v0 = sub_10000321C(&qword_100455A00, &qword_100352AD8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455A08, &qword_100352AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001472E8();
  sub_1002D8800();
  v9._object = 0x8000000100373AF0;
  v9._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1002D87E0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1002D87F0(v10);
  return sub_1002D8810();
}

unint64_t sub_100147A00()
{
  result = qword_100449E40;
  if (!qword_100449E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E40);
  }

  return result;
}

unint64_t sub_100147A58()
{
  result = qword_100449E48;
  if (!qword_100449E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E48);
  }

  return result;
}

unint64_t sub_100147AB0()
{
  result = qword_100449E50;
  if (!qword_100449E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E50);
  }

  return result;
}

uint64_t sub_100147B04()
{
  sub_1002D5D70();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100147BEC(uint64_t a1)
{
  v2 = sub_1001472E8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100147C3C()
{
  result = qword_100449E68;
  if (!qword_100449E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E68);
  }

  return result;
}

uint64_t sub_100147C94(uint64_t a1)
{
  v2 = sub_100147AB0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100147CE4()
{
  result = qword_100449E70;
  if (!qword_100449E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E70);
  }

  return result;
}

uint64_t sub_100147D7C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1002D8910();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1002D8840();
  sub_10001EDF0(v7, qword_10051D618);
  sub_10001EDB8(v7, qword_10051D618);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100147EEC@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v24[1] = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1002D8900();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1002D8CF0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v24 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v24 - v16;
  v18 = sub_1002D8910();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  __chkstk_darwin(v21);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v19 + 56))(v17, 0, 1, v18);
  sub_1002D8690();
  v22 = sub_1002D86B0();
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  sub_1002D8CE0();
  sub_1000B4F14(v7);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100148268()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D630);
  sub_10001EDB8(v0, qword_10051D630);
  return sub_1002D88F0();
}

uint64_t sub_1001482CC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D648);
  v1 = sub_10001EDB8(v0, qword_10051D648);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10014838C()
{
  result = swift_getKeyPath();
  qword_10051D660 = result;
  return result;
}

uint64_t sub_1001483B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004559D8, &qword_100352A98) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004559E0, &qword_100352AA0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100148594, 0, 0);
}

uint64_t sub_100148594()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001496E4();
  *v4 = v0;
  v4[1] = sub_100148678;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6ED8, 0, &type metadata for AccessibilityReduceWhitePointEnabledEntity, v5);
}

uint64_t sub_100148678()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100148774, 0, 0);
}

uint64_t sub_100148774()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A6E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D660;
  *(v0 + 288) = qword_10051D660;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004559C0, &qword_1004559C8, &qword_100352A80);
  *v7 = v0;
  v7[1] = sub_1001488D8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001488D8()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_100148A48;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100148A48()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100147CE4();
  sub_1001498F8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100148CC0()
{
  v0 = sub_10000321C(&qword_1004559E8, &qword_100352AA8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A6E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001498F8();
  sub_10002B6E4(&qword_1004559F0, &qword_1004559E8, &qword_100352AA8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100148E34(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_100148EA8(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100148F44()
{
  result = qword_100449E88;
  if (!qword_100449E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E88);
  }

  return result;
}

unint64_t sub_100148F9C()
{
  result = qword_100449E90;
  if (!qword_100449E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E90);
  }

  return result;
}

uint64_t sub_100149098(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001483B4(a1, v5, v4);
}

uint64_t sub_100149144@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AA3E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10014918C()
{
  result = qword_100449E98;
  if (!qword_100449E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449E98);
  }

  return result;
}

unint64_t sub_1001491E4()
{
  result = qword_100449EA0;
  if (!qword_100449EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EA0);
  }

  return result;
}

uint64_t sub_100149258()
{
  v1 = *(v0 + 16);
  *v1 = _AXSReduceWhitePointEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001492EC()
{
  v1 = *(v0 + 16);
  _AXSSetReduceWhitePointEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100149350(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001493E0, 0, 0);
}

uint64_t sub_1001493E0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100449E80, qword_10030A808);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004559C0, &qword_1004559C8, &qword_100352A80);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001CLL;
  v2[1] = 0x800000010035C4E0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10014952C()
{
  result = qword_100449EA8;
  if (!qword_100449EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EA8);
  }

  return result;
}

uint64_t sub_100149580(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100149B50();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100149634()
{
  result = qword_100449EB0;
  if (!qword_100449EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EB0);
  }

  return result;
}

unint64_t sub_10014968C()
{
  result = qword_100449EB8;
  if (!qword_100449EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EB8);
  }

  return result;
}

unint64_t sub_1001496E4()
{
  result = qword_100449EC0;
  if (!qword_100449EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EC0);
  }

  return result;
}

uint64_t sub_100149738(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100149B50();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001497EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100149B50();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001498A0()
{
  result = qword_100449EC8;
  if (!qword_100449EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EC8);
  }

  return result;
}

unint64_t sub_1001498F8()
{
  result = qword_100449ED0;
  if (!qword_100449ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449ED0);
  }

  return result;
}

uint64_t sub_100149990(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10014952C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100149A48()
{
  result = qword_100449EE8;
  if (!qword_100449EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EE8);
  }

  return result;
}

unint64_t sub_100149AA0()
{
  result = qword_100449EF0;
  if (!qword_100449EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EF0);
  }

  return result;
}

unint64_t sub_100149AF8()
{
  result = qword_100449EF8;
  if (!qword_100449EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449EF8);
  }

  return result;
}

unint64_t sub_100149B50()
{
  result = qword_100449F00;
  if (!qword_100449F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F00);
  }

  return result;
}

uint64_t sub_100149BA4()
{
  v0 = qword_100446D58;

  return v0;
}

unint64_t sub_100149BE0()
{
  result = qword_100449F08;
  if (!qword_100449F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F08);
  }

  return result;
}

uint64_t sub_100149C34()
{
  v0 = sub_10000321C(&qword_1004559B0, &qword_100352A60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004559B8, &qword_100352A68);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001496E4();
  sub_1002D8800();
  v9._object = 0x8000000100373AF0;
  v9._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1002D87E0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1002D87F0(v10);
  return sub_1002D8810();
}

unint64_t sub_100149DFC()
{
  result = qword_100449F10;
  if (!qword_100449F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F10);
  }

  return result;
}

unint64_t sub_100149E54()
{
  result = qword_100449F18;
  if (!qword_100449F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F18);
  }

  return result;
}

unint64_t sub_100149EAC()
{
  result = qword_100449F20;
  if (!qword_100449F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F20);
  }

  return result;
}

uint64_t sub_100149F00()
{
  sub_1002D5D1C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100149FE8(uint64_t a1)
{
  v2 = sub_1001496E4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10014A038()
{
  result = qword_100449F38;
  if (!qword_100449F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F38);
  }

  return result;
}

uint64_t sub_10014A090(uint64_t a1)
{
  v2 = sub_100149EAC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10014A0E0()
{
  result = qword_100449F40;
  if (!qword_100449F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F40);
  }

  return result;
}

uint64_t sub_10014A1A4@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v24[1] = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1002D8900();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1002D8CF0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v24 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v24 - v16;
  v18 = sub_1002D8910();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  __chkstk_darwin(v21);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v19 + 56))(v17, 0, 1, v18);
  sub_1002D8690();
  v22 = sub_1002D86B0();
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  sub_1002D8CE0();
  sub_1000B4F14(v7);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_10014A544()
{
  result = swift_getKeyPath();
  qword_10051D6B0 = result;
  return result;
}

uint64_t sub_10014A56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455988, &qword_100352A20) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455990, &qword_100352A28);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10014A74C, 0, 0);
}

uint64_t sub_10014A74C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10014B898();
  *v4 = v0;
  v4[1] = sub_10014A830;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EDC, 0, &type metadata for AccessibilityColorFiltersEnabledEntity, v5);
}

uint64_t sub_10014A830()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10014A92C, 0, 0);
}

uint64_t sub_10014A92C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A700 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D6B0;
  *(v0 + 288) = qword_10051D6B0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455970, &qword_100455978, &qword_100352A08);
  *v7 = v0;
  v7[1] = sub_10014AA90;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10014AA90()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_10014AC00;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10014AC00()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10014A0E0();
  sub_10014BAAC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10014AE78()
{
  v0 = sub_10000321C(&qword_100455998, &qword_100352A30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A700 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10014BAAC();
  sub_10002B6E4(&qword_1004559A0, &qword_100455998, &qword_100352A30);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10014AFEC(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_10014B060(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_10014B0FC()
{
  result = qword_100449F58;
  if (!qword_100449F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F58);
  }

  return result;
}

unint64_t sub_10014B154()
{
  result = qword_100449F60;
  if (!qword_100449F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F60);
  }

  return result;
}

uint64_t sub_10014B250(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10014A56C(a1, v5, v4);
}

uint64_t sub_10014B2FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AA848();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10014B344()
{
  result = qword_100449F68;
  if (!qword_100449F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F68);
  }

  return result;
}

unint64_t sub_10014B39C()
{
  result = qword_100449F70;
  if (!qword_100449F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F70);
  }

  return result;
}

uint64_t sub_10014B410()
{
  v1 = *(v0 + 16);
  *v1 = _AXSDisplayFilterColorEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10014B4A4()
{
  v1 = *(v0 + 16);
  _AXSDisplayFilterColorSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10014B508(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10014B598, 0, 0);
}

uint64_t sub_10014B598()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100449F50, qword_10030AE40);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455970, &qword_100455978, &qword_100352A08);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003ALL;
  v2[1] = 0x8000000100360570;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10014B6E0()
{
  result = qword_100449F78;
  if (!qword_100449F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F78);
  }

  return result;
}

uint64_t sub_10014B734(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10014BD04();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10014B7E8()
{
  result = qword_100449F80;
  if (!qword_100449F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F80);
  }

  return result;
}

unint64_t sub_10014B840()
{
  result = qword_100449F88;
  if (!qword_100449F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F88);
  }

  return result;
}

unint64_t sub_10014B898()
{
  result = qword_100449F90;
  if (!qword_100449F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F90);
  }

  return result;
}

uint64_t sub_10014B8EC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10014BD04();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10014B9A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10014BD04();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10014BA54()
{
  result = qword_100449F98;
  if (!qword_100449F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449F98);
  }

  return result;
}

unint64_t sub_10014BAAC()
{
  result = qword_100449FA0;
  if (!qword_100449FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FA0);
  }

  return result;
}

uint64_t sub_10014BB44(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10014B6E0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10014BBFC()
{
  result = qword_100449FB8;
  if (!qword_100449FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FB8);
  }

  return result;
}

unint64_t sub_10014BC54()
{
  result = qword_100449FC0;
  if (!qword_100449FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FC0);
  }

  return result;
}

unint64_t sub_10014BCAC()
{
  result = qword_100449FC8;
  if (!qword_100449FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FC8);
  }

  return result;
}

unint64_t sub_10014BD04()
{
  result = qword_100449FD0;
  if (!qword_100449FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FD0);
  }

  return result;
}

uint64_t sub_10014BD58()
{
  v0 = qword_100446D68;

  return v0;
}

unint64_t sub_10014BD94()
{
  result = qword_100449FD8;
  if (!qword_100449FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FD8);
  }

  return result;
}

uint64_t sub_10014BDE8()
{
  v0 = sub_10000321C(&qword_100455960, &qword_1003529E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455968, &qword_1003529F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10014B898();
  sub_1002D8800();
  v9._object = 0x8000000100373AF0;
  v9._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1002D87E0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1002D87F0(v10);
  return sub_1002D8810();
}

unint64_t sub_10014BFB0()
{
  result = qword_100449FE0;
  if (!qword_100449FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FE0);
  }

  return result;
}

unint64_t sub_10014C008()
{
  result = qword_100449FE8;
  if (!qword_100449FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FE8);
  }

  return result;
}

unint64_t sub_10014C060()
{
  result = qword_100449FF0;
  if (!qword_100449FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449FF0);
  }

  return result;
}

uint64_t sub_10014C0B4()
{
  sub_1002D5CC8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10014C19C(uint64_t a1)
{
  v2 = sub_10014B898();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10014C1EC()
{
  result = qword_10044A008;
  if (!qword_10044A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A008);
  }

  return result;
}

uint64_t sub_10014C244(uint64_t a1)
{
  v2 = sub_10014C060();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10014C294()
{
  result = qword_10044A010;
  if (!qword_10044A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A010);
  }

  return result;
}

uint64_t sub_10014C358@<X0>(uint64_t a1@<X8>)
{
  v23[0] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1002D8900();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1002D8CF0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v23 - v11;
  v13 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v23 - v15;
  v17 = sub_1002D8910();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  __chkstk_darwin(v20);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_1002D8690();
  v21 = sub_1002D86B0();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_10014C6E0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

uint64_t sub_10014C74C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v3, a2);
  v4 = sub_10001EDB8(v3, a2);
  sub_1002D8620();
  v5 = sub_1002D8630();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_10014C808()
{
  result = swift_getKeyPath();
  qword_10051D700 = result;
  return result;
}

uint64_t sub_10014C830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455938, &qword_1003529A8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455940, &qword_1003529B0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10014CA10, 0, 0);
}

uint64_t sub_10014CA10()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10014DB30();
  *v4 = v0;
  v4[1] = sub_10014CAF4;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EE0, 0, &type metadata for AccessibilityColorFiltersPickerEntity, v5);
}

uint64_t sub_10014CAF4()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10014CBF0, 0, 0);
}

uint64_t sub_10014CBF0()
{
  v1 = v0[21];
  v2 = v0[22];
  sub_1002D85B0();
  v0[11] = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v0[34] = v3;
  v0[35] = v4;
  v0[12] = v3;
  v0[13] = v4;
  sub_1002D85B0();
  if (qword_10043A720 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D700;
  v0[36] = qword_10051D700;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100455918, &qword_100455920, &qword_100352988);
  *v7 = v0;
  v7[1] = sub_10014CD4C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for ColorFilterAppEnum, v8);
}

uint64_t sub_10014CD4C()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_10014CEBC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10014CEBC()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10014C294();
  sub_10014DD44();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10014D134()
{
  v0 = sub_10000321C(&qword_100455948, &qword_1003529B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A720 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10014DD44();
  sub_10002B6E4(&qword_100455950, &qword_100455948, &qword_1003529B8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10014D2A8(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_10014D31C(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_10014D3B8()
{
  result = qword_10044A028;
  if (!qword_10044A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A028);
  }

  return result;
}

unint64_t sub_10014D410()
{
  result = qword_10044A030;
  if (!qword_10044A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A030);
  }

  return result;
}

uint64_t sub_10014D50C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10014C830(a1, v5, v4);
}

uint64_t sub_10014D5B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AACB0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10014D600()
{
  result = qword_10044A038;
  if (!qword_10044A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A038);
  }

  return result;
}

uint64_t sub_10014D678()
{
  Type = MADisplayFilterPrefGetType();
  if ((Type - 1) >= 8)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x300000002000104uLL >> (8 * (Type - 1));
  }

  **(v0 + 16) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10014D728()
{
  sub_10001EBD0(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014D78C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10014D81C, 0, 0);
}

uint64_t sub_10014D81C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044A020, &qword_10030B478);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455918, &qword_100455920, &qword_100352988);
  sub_1000168A0();
  v3 = sub_1002D8890();
  *v2 = 0xD00000000000003ALL;
  v2[1] = 0x8000000100360570;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10014D978()
{
  result = qword_10044A040;
  if (!qword_10044A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A040);
  }

  return result;
}

uint64_t sub_10014D9CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10014DF9C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10014DA80()
{
  result = qword_10044A048;
  if (!qword_10044A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A048);
  }

  return result;
}

unint64_t sub_10014DAD8()
{
  result = qword_10044A050;
  if (!qword_10044A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A050);
  }

  return result;
}

unint64_t sub_10014DB30()
{
  result = qword_10044A058;
  if (!qword_10044A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A058);
  }

  return result;
}

uint64_t sub_10014DB84(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10014DF9C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10014DC38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10014DF9C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10014DCEC()
{
  result = qword_10044A060;
  if (!qword_10044A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A060);
  }

  return result;
}

unint64_t sub_10014DD44()
{
  result = qword_10044A068;
  if (!qword_10044A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A068);
  }

  return result;
}

uint64_t sub_10014DDDC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10014D978();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10014DE94()
{
  result = qword_10044A080;
  if (!qword_10044A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A080);
  }

  return result;
}

unint64_t sub_10014DEEC()
{
  result = qword_10044A088;
  if (!qword_10044A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A088);
  }

  return result;
}

unint64_t sub_10014DF44()
{
  result = qword_10044A090;
  if (!qword_10044A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A090);
  }

  return result;
}

unint64_t sub_10014DF9C()
{
  result = qword_10044A098;
  if (!qword_10044A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A098);
  }

  return result;
}

uint64_t sub_10014DFF0()
{
  v0 = qword_100446D78;

  return v0;
}

unint64_t sub_10014E02C()
{
  result = qword_10044A0A0;
  if (!qword_10044A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0A0);
  }

  return result;
}

uint64_t sub_10014E080()
{
  v0 = sub_10000321C(&qword_100455908, &qword_100352968);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455910, &qword_100352970);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10014DB30();
  sub_1002D8800();
  v9._object = 0x8000000100373AF0;
  v9._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1002D87E0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1002D87F0(v10);
  return sub_1002D8810();
}

unint64_t sub_10014E248()
{
  result = qword_10044A0A8;
  if (!qword_10044A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0A8);
  }

  return result;
}

unint64_t sub_10014E2A0()
{
  result = qword_10044A0B0;
  if (!qword_10044A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0B0);
  }

  return result;
}

unint64_t sub_10014E2F8()
{
  result = qword_10044A0B8;
  if (!qword_10044A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0B8);
  }

  return result;
}

uint64_t sub_10014E34C()
{
  sub_1002D5C74();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10014E434(uint64_t a1)
{
  v2 = sub_10014DB30();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10014E484()
{
  result = qword_10044A0D0;
  if (!qword_10044A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0D0);
  }

  return result;
}

uint64_t sub_10014E4DC(uint64_t a1)
{
  v2 = sub_10014E2F8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10014E52C()
{
  result = qword_10044A0D8;
  if (!qword_10044A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0D8);
  }

  return result;
}

uint64_t sub_10014E5EC@<X0>(uint64_t a1@<X8>)
{
  v23[0] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1002D8900();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1002D8CF0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v23 - v11;
  v13 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v23 - v15;
  v17 = sub_1002D8910();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  __chkstk_darwin(v20);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_1002D8690();
  v21 = sub_1002D86B0();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_10014E964()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D720);
  sub_10001EDB8(v0, qword_10051D720);
  return sub_1002D88F0();
}

uint64_t sub_10014E9C8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D738);
  v1 = sub_10001EDB8(v0, qword_10051D738);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10014EA88()
{
  result = swift_getKeyPath();
  qword_10051D750 = result;
  return result;
}

uint64_t sub_10014EAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004558E0, &qword_100352928) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004558E8, &qword_100352930);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10014EC90, 0, 0);
}

uint64_t sub_10014EC90()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10014FEE8();
  *v4 = v0;
  v4[1] = sub_10014ED74;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EE4, 0, &type metadata for AccessibilityOnDeviceEyeTrackingEnabledEntity, v5);
}

uint64_t sub_10014ED74()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10014EE70, 0, 0);
}

uint64_t sub_10014EE70()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A740 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D750;
  *(v0 + 288) = qword_10051D750;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004558C8, &qword_1004558D0, &qword_100352910);
  *v7 = v0;
  v7[1] = sub_10014EFD4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10014EFD4()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_10014F144;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10014F144()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10014E52C();
  sub_1001500FC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10014F3BC()
{
  v0 = sub_10000321C(&qword_1004558F0, &qword_100352938);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A740 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001500FC();
  sub_10002B6E4(&qword_1004558F8, &qword_1004558F0, &qword_100352938);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10014F530(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_10014F5A4(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_10014F640()
{
  result = qword_10044A0F0;
  if (!qword_10044A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0F0);
  }

  return result;
}

unint64_t sub_10014F698()
{
  result = qword_10044A0F8;
  if (!qword_10044A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A0F8);
  }

  return result;
}

uint64_t sub_10014F794(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10014EAB0(a1, v5, v4);
}

uint64_t sub_10014F840@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AB0B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10014F888()
{
  result = qword_10044A100;
  if (!qword_10044A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A100);
  }

  return result;
}

unint64_t sub_10014F8E0()
{
  result = qword_10044A108;
  if (!qword_10044A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A108);
  }

  return result;
}

uint64_t sub_10014F954()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseOnDeviceEyeTrackingEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10014FA4C()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  if (*(v0 + 16) == 1)
  {
    v1 = [objc_opt_self() sharedInstance];
    [v1 setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:1];
  }

  else
  {
    v2 = [objc_opt_self() server];
    if (!v2)
    {
      goto LABEL_8;
    }

    v1 = v2;
    [v2 showAlert:26 withHandler:0];
  }

LABEL_8:
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10014FB5C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10014FBEC, 0, 0);
}

uint64_t sub_10014FBEC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044A0E8, qword_10030BAB0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004558C8, &qword_1004558D0, &qword_100352910);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000037;
  v2[1] = 0x800000010035F4D0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10014FD30()
{
  result = qword_10044A110;
  if (!qword_10044A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A110);
  }

  return result;
}

uint64_t sub_10014FD84(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100150354();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10014FE38()
{
  result = qword_10044A118;
  if (!qword_10044A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A118);
  }

  return result;
}

unint64_t sub_10014FE90()
{
  result = qword_10044A120;
  if (!qword_10044A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A120);
  }

  return result;
}

unint64_t sub_10014FEE8()
{
  result = qword_10044A128;
  if (!qword_10044A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A128);
  }

  return result;
}

uint64_t sub_10014FF3C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100150354();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10014FFF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100150354();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001500A4()
{
  result = qword_10044A130;
  if (!qword_10044A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A130);
  }

  return result;
}

unint64_t sub_1001500FC()
{
  result = qword_10044A138;
  if (!qword_10044A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A138);
  }

  return result;
}

uint64_t sub_100150194(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10014FD30();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10015024C()
{
  result = qword_10044A150;
  if (!qword_10044A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A150);
  }

  return result;
}

unint64_t sub_1001502A4()
{
  result = qword_10044A158;
  if (!qword_10044A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A158);
  }

  return result;
}

unint64_t sub_1001502FC()
{
  result = qword_10044A160;
  if (!qword_10044A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A160);
  }

  return result;
}

unint64_t sub_100150354()
{
  result = qword_10044A168;
  if (!qword_10044A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A168);
  }

  return result;
}

uint64_t sub_1001503A8()
{
  v0 = qword_100446D88;

  return v0;
}

unint64_t sub_1001503E4()
{
  result = qword_10044A170;
  if (!qword_10044A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A170);
  }

  return result;
}

uint64_t sub_100150438()
{
  v0 = sub_10000321C(&qword_1004558B8, &qword_1003528F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004558C0, &qword_1003528F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10014FEE8();
  sub_1002D8800();
  v9._object = 0x8000000100373AF0;
  v9._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1002D87E0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1002D87F0(v10);
  return sub_1002D8810();
}

unint64_t sub_100150600()
{
  result = qword_10044A178;
  if (!qword_10044A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A178);
  }

  return result;
}

unint64_t sub_100150658()
{
  result = qword_10044A180;
  if (!qword_10044A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A180);
  }

  return result;
}

unint64_t sub_1001506B0()
{
  result = qword_10044A188;
  if (!qword_10044A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A188);
  }

  return result;
}

uint64_t sub_100150704()
{
  sub_1002D5C20();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001507EC(uint64_t a1)
{
  v2 = sub_10014FEE8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10015083C()
{
  result = qword_10044A1A0;
  if (!qword_10044A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1A0);
  }

  return result;
}

uint64_t sub_100150894(uint64_t a1)
{
  v2 = sub_1001506B0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001508E4()
{
  result = qword_10044A1A8;
  if (!qword_10044A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1A8);
  }

  return result;
}

uint64_t sub_10015097C()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1002D8910();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1002D8840();
  sub_10001EDF0(v7, qword_10051D758);
  sub_10001EDB8(v7, qword_10051D758);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100150AEC@<X0>(uint64_t a1@<X8>)
{
  v23[0] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1002D8900();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1002D8CF0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v23 - v11;
  v13 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v23 - v15;
  v17 = sub_1002D8910();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  __chkstk_darwin(v20);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_1002D8690();
  v21 = sub_1002D86B0();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100150E5C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D770);
  sub_10001EDB8(v0, qword_10051D770);
  return sub_1002D88F0();
}

uint64_t sub_100150EC0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D788);
  v1 = sub_10001EDB8(v0, qword_10051D788);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100150F80()
{
  result = swift_getKeyPath();
  qword_10051D7A0 = result;
  return result;
}

uint64_t sub_100150FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455890, &qword_1003528B0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455898, &qword_1003528B8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100151188, 0, 0);
}

uint64_t sub_100151188()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001522D0();
  *v4 = v0;
  v4[1] = sub_10015126C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EE8, 0, &type metadata for AccessibilityHapticOnSuccessfulAuthenticationForFaceIDEnabledEntity, v5);
}

uint64_t sub_10015126C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100151368, 0, 0);
}

uint64_t sub_100151368()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A760 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D7A0;
  *(v0 + 288) = qword_10051D7A0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455878, &qword_100455880, &qword_100352898);
  *v7 = v0;
  v7[1] = sub_1001514CC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001514CC()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_10015163C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10015163C()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1001508E4();
  sub_1001524E4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001518B4()
{
  v0 = sub_10000321C(&qword_1004558A0, &qword_1003528C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A760 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001524E4();
  sub_10002B6E4(&qword_1004558A8, &qword_1004558A0, &qword_1003528C0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100151A28(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_100151A9C(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100151B38()
{
  result = qword_10044A1C0;
  if (!qword_10044A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1C0);
  }

  return result;
}

unint64_t sub_100151B90()
{
  result = qword_10044A1C8;
  if (!qword_10044A1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1C8);
  }

  return result;
}

uint64_t sub_100151C8C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100150FA8(a1, v5, v4);
}

uint64_t sub_100151D38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AB51C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100151D80()
{
  result = qword_10044A1D0;
  if (!qword_10044A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1D0);
  }

  return result;
}

unint64_t sub_100151DD8()
{
  result = qword_10044A1D8;
  if (!qword_10044A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1D8);
  }

  return result;
}

uint64_t sub_100151E4C()
{
  v1 = *(v0 + 16);
  *v1 = _AXSPearlAuthenticationHapticsEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100151EE0()
{
  v1 = *(v0 + 16);
  _AXSSetPearlAuthenticationHapticsEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100151F44(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100151FD4, 0, 0);
}

uint64_t sub_100151FD4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044A1B8, qword_10030C0E8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455878, &qword_100455880, &qword_100352898);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001ALL;
  v2[1] = 0x800000010035F050;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100152118()
{
  result = qword_10044A1E0;
  if (!qword_10044A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1E0);
  }

  return result;
}

uint64_t sub_10015216C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10015273C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100152220()
{
  result = qword_10044A1E8;
  if (!qword_10044A1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1E8);
  }

  return result;
}

unint64_t sub_100152278()
{
  result = qword_10044A1F0;
  if (!qword_10044A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1F0);
  }

  return result;
}

unint64_t sub_1001522D0()
{
  result = qword_10044A1F8;
  if (!qword_10044A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A1F8);
  }

  return result;
}

uint64_t sub_100152324(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10015273C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001523D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10015273C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10015248C()
{
  result = qword_10044A200;
  if (!qword_10044A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A200);
  }

  return result;
}

unint64_t sub_1001524E4()
{
  result = qword_10044A208;
  if (!qword_10044A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A208);
  }

  return result;
}

uint64_t sub_10015257C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100152118();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100152634()
{
  result = qword_10044A220;
  if (!qword_10044A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A220);
  }

  return result;
}

unint64_t sub_10015268C()
{
  result = qword_10044A228;
  if (!qword_10044A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A228);
  }

  return result;
}

unint64_t sub_1001526E4()
{
  result = qword_10044A230;
  if (!qword_10044A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A230);
  }

  return result;
}

unint64_t sub_10015273C()
{
  result = qword_10044A238;
  if (!qword_10044A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A238);
  }

  return result;
}

uint64_t sub_100152790()
{
  v0 = qword_100446D98;

  return v0;
}

unint64_t sub_1001527CC()
{
  result = qword_10044A240;
  if (!qword_10044A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A240);
  }

  return result;
}

uint64_t sub_100152820()
{
  v0 = sub_10000321C(&qword_100455868, &qword_100352878);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455870, &qword_100352880);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001522D0();
  sub_1002D8800();
  v9._object = 0x8000000100373AF0;
  v9._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1002D87E0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1002D87F0(v10);
  return sub_1002D8810();
}

unint64_t sub_1001529E8()
{
  result = qword_10044A248;
  if (!qword_10044A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A248);
  }

  return result;
}

unint64_t sub_100152A40()
{
  result = qword_10044A250;
  if (!qword_10044A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A250);
  }

  return result;
}

unint64_t sub_100152A98()
{
  result = qword_10044A258;
  if (!qword_10044A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A258);
  }

  return result;
}

uint64_t sub_100152AEC()
{
  sub_1002D5BCC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100152BD4(uint64_t a1)
{
  v2 = sub_1001522D0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100152C24()
{
  result = qword_10044A270;
  if (!qword_10044A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A270);
  }

  return result;
}

uint64_t sub_100152C7C(uint64_t a1)
{
  v2 = sub_100152A98();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100152CCC()
{
  result = qword_10044A278;
  if (!qword_10044A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A278);
  }

  return result;
}

uint64_t sub_100152D88@<X0>(uint64_t a1@<X8>)
{
  v23[0] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1002D8900();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1002D8CF0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v23 - v11;
  v13 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v23 - v15;
  v17 = sub_1002D8910();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  __chkstk_darwin(v20);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_1002D8690();
  v21 = sub_1002D86B0();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_1001530FC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D7C0);
  sub_10001EDB8(v0, qword_10051D7C0);
  return sub_1002D88F0();
}

uint64_t sub_100153160()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D7D8);
  v1 = sub_10001EDB8(v0, qword_10051D7D8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100153220()
{
  result = swift_getKeyPath();
  qword_10051D7F0 = result;
  return result;
}

uint64_t sub_100153248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455840, &qword_100352838) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455848, &qword_100352840);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100153428, 0, 0);
}

uint64_t sub_100153428()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100154710();
  *v4 = v0;
  v4[1] = sub_10015350C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EEC, 0, &type metadata for AccessibilityGuestPassEnabledEntity, v5);
}

uint64_t sub_10015350C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100153608, 0, 0);
}

uint64_t sub_100153608()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A780 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D7F0;
  *(v0 + 288) = qword_10051D7F0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455828, &qword_100455830, &qword_1003527F8);
  *v7 = v0;
  v7[1] = sub_10015376C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10015376C()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_1001538DC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001538DC()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100152CCC();
  sub_100154924();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100153B54()
{
  v0 = sub_10000321C(&qword_100455850, &qword_100352848);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A780 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100154924();
  sub_10002B6E4(&qword_100455858, &qword_100455850, &qword_100352848);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100153CC8(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_100153D3C(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100153DD8()
{
  result = qword_10044A290;
  if (!qword_10044A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A290);
  }

  return result;
}

unint64_t sub_100153E30()
{
  result = qword_10044A298;
  if (!qword_10044A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A298);
  }

  return result;
}

uint64_t sub_100153F2C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100153248(a1, v5, v4);
}

uint64_t sub_100153FD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AB984();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100154020()
{
  result = qword_10044A2A0;
  if (!qword_10044A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2A0);
  }

  return result;
}

unint64_t sub_100154078()
{
  result = qword_10044A2A8;
  if (!qword_10044A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2A8);
  }

  return result;
}

uint64_t sub_1001540EC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 guestPassSessionCCWidgetIsActive];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001541C0(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(sub_10000321C(&qword_10043F808, &unk_100352800) - 8) + 64) + 15;
  *(v2 + 16) = swift_task_alloc();
  *(v2 + 24) = *a2;

  return _swift_task_switch(sub_100154264, 0, 0);
}

uint64_t sub_100154264()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = sub_1002D8DB0();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  sub_1000D98C8(0, 0, v2, &unk_1002EE9D0, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100154388(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100154418, 0, 0);
}

uint64_t sub_100154418()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044A288, qword_10030C720);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455828, &qword_100455830, &qword_1003527F8);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001ELL;
  v2[1] = 0x800000010037CCB0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100154558()
{
  result = qword_10044A2B0;
  if (!qword_10044A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2B0);
  }

  return result;
}

uint64_t sub_1001545AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100154B7C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100154660()
{
  result = qword_10044A2B8;
  if (!qword_10044A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2B8);
  }

  return result;
}

unint64_t sub_1001546B8()
{
  result = qword_10044A2C0;
  if (!qword_10044A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2C0);
  }

  return result;
}

unint64_t sub_100154710()
{
  result = qword_10044A2C8;
  if (!qword_10044A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2C8);
  }

  return result;
}

uint64_t sub_100154764(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100154B7C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100154818(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100154B7C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001548CC()
{
  result = qword_10044A2D0;
  if (!qword_10044A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2D0);
  }

  return result;
}

unint64_t sub_100154924()
{
  result = qword_10044A2D8;
  if (!qword_10044A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2D8);
  }

  return result;
}

uint64_t sub_1001549BC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100154558();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100154A74()
{
  result = qword_10044A2F0;
  if (!qword_10044A2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2F0);
  }

  return result;
}

unint64_t sub_100154ACC()
{
  result = qword_10044A2F8;
  if (!qword_10044A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A2F8);
  }

  return result;
}

unint64_t sub_100154B24()
{
  result = qword_10044A300;
  if (!qword_10044A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A300);
  }

  return result;
}

unint64_t sub_100154B7C()
{
  result = qword_10044A308;
  if (!qword_10044A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A308);
  }

  return result;
}

uint64_t sub_100154BD0()
{
  v0 = qword_100446DA8;

  return v0;
}

unint64_t sub_100154C0C()
{
  result = qword_10044A310;
  if (!qword_10044A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A310);
  }

  return result;
}

uint64_t sub_100154C60()
{
  v0 = sub_10000321C(&qword_100455818, &qword_1003527D8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455820, &qword_1003527E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100154710();
  sub_1002D8800();
  v9._object = 0x8000000100373AF0;
  v9._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1002D87E0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1002D87F0(v10);
  return sub_1002D8810();
}

unint64_t sub_100154E28()
{
  result = qword_10044A318;
  if (!qword_10044A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A318);
  }

  return result;
}

unint64_t sub_100154E80()
{
  result = qword_10044A320;
  if (!qword_10044A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A320);
  }

  return result;
}

unint64_t sub_100154ED8()
{
  result = qword_10044A328;
  if (!qword_10044A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A328);
  }

  return result;
}

uint64_t sub_100154F2C()
{
  sub_1002D5930();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100155014(uint64_t a1)
{
  v2 = sub_100154710();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100155064()
{
  result = qword_10044A340;
  if (!qword_10044A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A340);
  }

  return result;
}

uint64_t sub_1001550BC(uint64_t a1)
{
  v2 = sub_100154ED8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10015510C()
{
  result = qword_10044A348;
  if (!qword_10044A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A348);
  }

  return result;
}

uint64_t sub_1001551D0@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v24[1] = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1002D8900();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1002D8CF0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v24 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v24 - v16;
  v18 = sub_1002D8910();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  __chkstk_darwin(v21);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v19 + 56))(v17, 0, 1, v18);
  sub_1002D8690();
  v22 = sub_1002D86B0();
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  sub_1002D8CE0();
  sub_1000B4F14(v7);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100155558()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D810);
  sub_10001EDB8(v0, qword_10051D810);
  return sub_1002D88F0();
}

uint64_t sub_1001555BC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D828);
  v1 = sub_10001EDB8(v0, qword_10051D828);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10015567C()
{
  result = swift_getKeyPath();
  qword_10051D840 = result;
  return result;
}

uint64_t sub_1001556A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004557F0, &qword_100352798) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004557F8, &qword_1003527A0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100155884, 0, 0);
}

uint64_t sub_100155884()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001569D0();
  *v4 = v0;
  v4[1] = sub_100155968;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EF0, 0, &type metadata for AccessibilityGuidedAccessEnabledEntity, v5);
}

uint64_t sub_100155968()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100155A64, 0, 0);
}

uint64_t sub_100155A64()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A7A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D840;
  *(v0 + 288) = qword_10051D840;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004557D8, &qword_1004557E0, &qword_100352780);
  *v7 = v0;
  v7[1] = sub_100155BC8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100155BC8()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_100155D38;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100155D38()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10015510C();
  sub_100156BE4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100155FB0()
{
  v0 = sub_10000321C(&qword_100455800, &qword_1003527A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A7A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100156BE4();
  sub_10002B6E4(&qword_100455808, &qword_100455800, &qword_1003527A8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100156124(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_100156198(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100156234()
{
  result = qword_10044A360;
  if (!qword_10044A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A360);
  }

  return result;
}

unint64_t sub_10015628C()
{
  result = qword_10044A368;
  if (!qword_10044A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A368);
  }

  return result;
}

uint64_t sub_100156388(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001556A4(a1, v5, v4);
}

uint64_t sub_100156434@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002ABDEC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10015647C()
{
  result = qword_10044A370;
  if (!qword_10044A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A370);
  }

  return result;
}

unint64_t sub_1001564D4()
{
  result = qword_10044A378;
  if (!qword_10044A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A378);
  }

  return result;
}

uint64_t sub_100156548()
{
  v1 = *(v0 + 16);
  *v1 = _AXSGuidedAccessEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001565DC()
{
  v1 = *(v0 + 16);
  _AXSGuidedAccessSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100156640(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001566D0, 0, 0);
}

uint64_t sub_1001566D0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044A358, qword_10030CD58);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004557D8, &qword_1004557E0, &qword_100352780);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000026;
  v2[1] = 0x800000010037CBA0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100156818()
{
  result = qword_10044A380;
  if (!qword_10044A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A380);
  }

  return result;
}

uint64_t sub_10015686C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100156E3C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100156920()
{
  result = qword_10044A388;
  if (!qword_10044A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A388);
  }

  return result;
}

unint64_t sub_100156978()
{
  result = qword_10044A390;
  if (!qword_10044A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A390);
  }

  return result;
}

unint64_t sub_1001569D0()
{
  result = qword_10044A398;
  if (!qword_10044A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A398);
  }

  return result;
}

uint64_t sub_100156A24(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100156E3C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100156AD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100156E3C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100156B8C()
{
  result = qword_10044A3A0;
  if (!qword_10044A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3A0);
  }

  return result;
}

unint64_t sub_100156BE4()
{
  result = qword_10044A3A8;
  if (!qword_10044A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3A8);
  }

  return result;
}

uint64_t sub_100156C7C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100156818();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100156D34()
{
  result = qword_10044A3C0;
  if (!qword_10044A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3C0);
  }

  return result;
}

unint64_t sub_100156D8C()
{
  result = qword_10044A3C8;
  if (!qword_10044A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3C8);
  }

  return result;
}

unint64_t sub_100156DE4()
{
  result = qword_10044A3D0;
  if (!qword_10044A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3D0);
  }

  return result;
}

unint64_t sub_100156E3C()
{
  result = qword_10044A3D8;
  if (!qword_10044A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3D8);
  }

  return result;
}

uint64_t sub_100156E90()
{
  v0 = qword_100446DB8;

  return v0;
}

unint64_t sub_100156ECC()
{
  result = qword_10044A3E0;
  if (!qword_10044A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3E0);
  }

  return result;
}

uint64_t sub_100156F20()
{
  v0 = sub_10000321C(&qword_1004557C8, &qword_100352760);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004557D0, &qword_100352768);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001569D0();
  sub_1002D8800();
  v9._object = 0x8000000100373AF0;
  v9._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1002D87E0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1002D87F0(v10);
  return sub_1002D8810();
}

unint64_t sub_1001570E8()
{
  result = qword_10044A3E8;
  if (!qword_10044A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3E8);
  }

  return result;
}

unint64_t sub_100157140()
{
  result = qword_10044A3F0;
  if (!qword_10044A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3F0);
  }

  return result;
}

unint64_t sub_100157198()
{
  result = qword_10044A3F8;
  if (!qword_10044A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A3F8);
  }

  return result;
}

uint64_t sub_1001571EC()
{
  sub_1002D58DC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001572D4(uint64_t a1)
{
  v2 = sub_1001569D0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100157324()
{
  result = qword_10044A410;
  if (!qword_10044A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A410);
  }

  return result;
}

uint64_t sub_10015737C(uint64_t a1)
{
  v2 = sub_100157198();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001573CC()
{
  result = qword_10044A418;
  if (!qword_10044A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A418);
  }

  return result;
}

uint64_t sub_100157464()
{
  v0 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1002D8910();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1002D8840();
  sub_10001EDF0(v7, qword_10051D848);
  sub_10001EDB8(v7, qword_10051D848);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001575D4()
{
  v0 = sub_1002D8990();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1002D8900();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1002D8CF0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22[-v10];
  v12 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v22[-v14];
  v16 = sub_1002D8910();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  __chkstk_darwin(v19);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v17 + 56))(v15, 0, 1, v16);
  sub_1002D8690();
  v20 = sub_1002D86B0();
  (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  sub_1002D8CE0();
  sub_1000B4F14(v5);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100157948()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D860);
  sub_10001EDB8(v0, qword_10051D860);
  return sub_1002D88F0();
}

uint64_t sub_1001579AC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D878);
  v1 = sub_10001EDB8(v0, qword_10051D878);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100157A6C()
{
  result = swift_getKeyPath();
  qword_10051D890 = result;
  return result;
}

uint64_t sub_100157A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004557A0, &qword_100352720) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004557A8, &qword_100352728);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100157C74, 0, 0);
}

uint64_t sub_100157C74()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100158E38();
  *v4 = v0;
  v4[1] = sub_100157D58;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EF4, 0, &type metadata for AccessibilityHeadphoneAccommodationsEnabledEntity, v5);
}

uint64_t sub_100157D58()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100157E54, 0, 0);
}

uint64_t sub_100157E54()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A7C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D890;
  *(v0 + 288) = qword_10051D890;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455788, &qword_100455790, &qword_100352708);
  *v7 = v0;
  v7[1] = sub_100157FB8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100157FB8()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_100158128;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100158128()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1001573CC();
  sub_10015904C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001583A0()
{
  v0 = sub_10000321C(&qword_1004557B0, &qword_100352730);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A7C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10015904C();
  sub_10002B6E4(&qword_1004557B8, &qword_1004557B0, &qword_100352730);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100158514(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_100158588(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_100158624()
{
  result = qword_10044A430;
  if (!qword_10044A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A430);
  }

  return result;
}

unint64_t sub_10015867C()
{
  result = qword_10044A438;
  if (!qword_10044A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A438);
  }

  return result;
}

uint64_t sub_100158778(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100157A94(a1, v5, v4);
}

uint64_t sub_100158824@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AC254();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10015886C()
{
  result = qword_10044A440;
  if (!qword_10044A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A440);
  }

  return result;
}

unint64_t sub_1001588C4()
{
  result = qword_10044A448;
  if (!qword_10044A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A448);
  }

  return result;
}

id sub_100158938()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result personalMediaEnabled];

    *v3 = v4;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100158A08()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    [result setPersonalMediaEnabled:*(v0 + 16)];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100158AA4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100158B34, 0, 0);
}

uint64_t sub_100158B34()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044A428, qword_10030D390);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455788, &qword_100455790, &qword_100352708);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000023;
  v2[1] = 0x800000010037CA40;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100158C80()
{
  result = qword_10044A450;
  if (!qword_10044A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A450);
  }

  return result;
}

uint64_t sub_100158CD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001592A4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100158D88()
{
  result = qword_10044A458;
  if (!qword_10044A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A458);
  }

  return result;
}

unint64_t sub_100158DE0()
{
  result = qword_10044A460;
  if (!qword_10044A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A460);
  }

  return result;
}

unint64_t sub_100158E38()
{
  result = qword_10044A468;
  if (!qword_10044A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A468);
  }

  return result;
}

uint64_t sub_100158E8C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001592A4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100158F40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001592A4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100158FF4()
{
  result = qword_10044A470;
  if (!qword_10044A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A470);
  }

  return result;
}

unint64_t sub_10015904C()
{
  result = qword_10044A478;
  if (!qword_10044A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A478);
  }

  return result;
}

uint64_t sub_1001590E4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100158C80();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10015919C()
{
  result = qword_10044A490;
  if (!qword_10044A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A490);
  }

  return result;
}

unint64_t sub_1001591F4()
{
  result = qword_10044A498;
  if (!qword_10044A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A498);
  }

  return result;
}

unint64_t sub_10015924C()
{
  result = qword_10044A4A0;
  if (!qword_10044A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4A0);
  }

  return result;
}

unint64_t sub_1001592A4()
{
  result = qword_10044A4A8;
  if (!qword_10044A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4A8);
  }

  return result;
}

uint64_t sub_1001592F8()
{
  v0 = qword_100446DC8;

  return v0;
}

unint64_t sub_100159334()
{
  result = qword_10044A4B0;
  if (!qword_10044A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4B0);
  }

  return result;
}

uint64_t sub_100159388()
{
  v0 = sub_10000321C(&qword_100455778, &qword_1003526E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455780, &qword_1003526F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100158E38();
  sub_1002D8800();
  v9._object = 0x8000000100373AF0;
  v9._countAndFlagsBits = 0xD000000000000037;
  sub_1002D87F0(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1002D87E0();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1002D87F0(v10);
  return sub_1002D8810();
}

unint64_t sub_100159550()
{
  result = qword_10044A4B8;
  if (!qword_10044A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4B8);
  }

  return result;
}

unint64_t sub_1001595A8()
{
  result = qword_10044A4C0;
  if (!qword_10044A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4C0);
  }

  return result;
}

unint64_t sub_100159600()
{
  result = qword_10044A4C8;
  if (!qword_10044A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4C8);
  }

  return result;
}

uint64_t sub_100159654()
{
  sub_1002D5888();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10015973C(uint64_t a1)
{
  v2 = sub_100158E38();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10015978C()
{
  result = qword_10044A4E0;
  if (!qword_10044A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4E0);
  }

  return result;
}

uint64_t sub_1001597E4(uint64_t a1)
{
  v2 = sub_100159600();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100159834()
{
  result = qword_10044A4E8;
  if (!qword_10044A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A4E8);
  }

  return result;
}

uint64_t sub_1001598F8@<X0>(uint64_t a1@<X8>)
{
  v23[0] = a1;
  v1 = sub_1002D8990();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1002D8900();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1002D8CF0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v23 - v11;
  v13 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v23 - v15;
  v17 = sub_1002D8910();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  __chkstk_darwin(v20);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_1002D8690();
  v21 = sub_1002D86B0();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  sub_1002D8CE0();
  sub_1000B4F14(v6);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100159C74()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D8B0);
  sub_10001EDB8(v0, qword_10051D8B0);
  return sub_1002D88F0();
}

uint64_t sub_100159CD8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D8C8);
  v1 = sub_10001EDB8(v0, qword_10051D8C8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100159D98()
{
  result = swift_getKeyPath();
  qword_10051D8E0 = result;
  return result;
}

uint64_t sub_100159DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455750, &qword_1003526A8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455758, &qword_1003526B0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100159FA0, 0, 0);
}

uint64_t sub_100159FA0()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10015B0EC();
  *v4 = v0;
  v4[1] = sub_10015A084;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EF8, 0, &type metadata for MusicHapticsEnabledEntity, v5);
}

uint64_t sub_10015A084()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10015A180, 0, 0);
}

uint64_t sub_10015A180()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1002D85B0();
  *(v0 + 88) = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 272) = v3;
  *(v0 + 280) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  sub_1002D85B0();
  *(v0 + 313) = *(v0 + 312);
  if (qword_10043A7E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D8E0;
  *(v0 + 288) = qword_10051D8E0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455738, &qword_100455740, &qword_100352690);
  *v7 = v0;
  v7[1] = sub_10015A2E4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10015A2E4()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1002D6DFC;
  }

  else
  {
    v6 = sub_10015A454;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10015A454()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30];
  v12 = v0[32];
  v13 = v0[28];
  v4 = v0[25];
  v17 = v0[27];
  v18 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  v14 = v0[20];
  sub_1002D85B0();
  v15 = v0[15];
  v16 = v0[16];
  v0[17] = v0[14];
  v0[18] = v15;
  v0[19] = v16;
  v8 = sub_1002D8820();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1002D8850();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100159834();
  sub_10015B300();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10015A6CC()
{
  v0 = sub_10000321C(&qword_100455760, &qword_1003526B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A7E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10015B300();
  sub_10002B6E4(&qword_100455768, &qword_100455760, &qword_1003526B8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10015A840(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

void (*sub_10015A8B4(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1002D85A0();
  return sub_1002D7134;
}

unint64_t sub_10015A950()
{
  result = qword_10044A500;
  if (!qword_10044A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A500);
  }

  return result;
}

unint64_t sub_10015A9A8()
{
  result = qword_10044A508;
  if (!qword_10044A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A508);
  }

  return result;
}

uint64_t sub_10015AAA4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100159DC0(a1, v5, v4);
}

uint64_t sub_10015AB50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AC6BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10015AB98()
{
  result = qword_10044A510;
  if (!qword_10044A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A510);
  }

  return result;
}

unint64_t sub_10015ABF0()
{
  result = qword_10044A518;
  if (!qword_10044A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A518);
  }

  return result;
}