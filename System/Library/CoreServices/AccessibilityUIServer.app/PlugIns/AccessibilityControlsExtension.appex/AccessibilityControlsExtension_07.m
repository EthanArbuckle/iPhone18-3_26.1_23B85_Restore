uint64_t sub_1000D9BA8()
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
  sub_10001EDF0(v7, qword_10051C6C8);
  sub_10001EDB8(v7, qword_10051C6C8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1000D9D18@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000DA088()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C6E0);
  sub_10001EDB8(v0, qword_10051C6E0);
  return sub_1002D88F0();
}

uint64_t sub_1000DA0EC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C6F8);
  v1 = sub_10001EDB8(v0, qword_10051C6F8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000DA1AC()
{
  result = swift_getKeyPath();
  qword_10051C710 = result;
  return result;
}

uint64_t sub_1000DA1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456940, &qword_1003541B0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456948, &qword_1003541B8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA3B4, 0, 0);
}

uint64_t sub_1000DA3B4()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000DB730();
  *v4 = v0;
  v4[1] = sub_1000DA498;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E14, 0, &type metadata for AccessibilityReaderEnabledEntity, v5);
}

uint64_t sub_1000DA498()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000DA594, 0, 0);
}

uint64_t sub_1000DA594()
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
  if (qword_10043A0C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051C710;
  *(v0 + 288) = qword_10051C710;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456928, &qword_100456930, &unk_100354190);
  *v7 = v0;
  v7[1] = sub_1000DA6F8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000DA6F8()
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
    v6 = sub_1000DA868;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000DA868()
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
  sub_1000D9830();
  sub_1000DBA04();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000DAAE0()
{
  v0 = sub_10000321C(&qword_100456950, &qword_1003541C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A0C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000DBA04();
  sub_10002B6E4(&qword_100456958, &qword_100456950, &qword_1003541C0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000DAC5C(uint64_t *a1))(void *)
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

uint64_t sub_1000DACD0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_1002D85B0();
  *a1 = v5;
  return result;
}

uint64_t sub_1000DAD0C(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_1002D85C0();
}

void (*sub_1000DAD44(uint64_t *a1))(void *)
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

unint64_t sub_1000DADFC()
{
  result = qword_1004476D0;
  if (!qword_1004476D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004476D0);
  }

  return result;
}

unint64_t sub_1000DAE54()
{
  result = qword_1004476D8;
  if (!qword_1004476D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004476D8);
  }

  return result;
}

uint64_t sub_1000DAF50(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000DA1D4(a1, v5, v4);
}

uint64_t sub_1000DAFFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029D0D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000DB044()
{
  result = qword_1004476E0;
  if (!qword_1004476E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004476E0);
  }

  return result;
}

unint64_t sub_1000DB09C()
{
  result = qword_1004476E8;
  if (!qword_1004476E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004476E8);
  }

  return result;
}

uint64_t sub_1000DB110()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 accessibilityReaderIsActive];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000DB1E4()
{
  v1 = *(*(sub_10000321C(&qword_10043F808, &unk_100352800) - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();

  return _swift_task_switch(sub_1000DB27C, 0, 0);
}

uint64_t sub_1000DB27C()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1002D8DB0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_1000D98C8(0, 0, v1, &unk_1002EE9E8, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000DB398(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000DB428, 0, 0);
}

uint64_t sub_1000DB428()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004476C8, qword_1002F7750);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456928, &qword_100456930, &unk_100354190);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003CLL;
  v2[1] = 0x8000000100362380;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000DB578()
{
  result = qword_1004476F0;
  if (!qword_1004476F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004476F0);
  }

  return result;
}

uint64_t sub_1000DB5CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000DBD1C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000DB680()
{
  result = qword_1004476F8;
  if (!qword_1004476F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004476F8);
  }

  return result;
}

unint64_t sub_1000DB6D8()
{
  result = qword_100447700;
  if (!qword_100447700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447700);
  }

  return result;
}

unint64_t sub_1000DB730()
{
  result = qword_100447708;
  if (!qword_100447708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447708);
  }

  return result;
}

uint64_t sub_1000DB784(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000DBD1C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000DB838(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000DBD1C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_1000DB8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000D9828;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

unint64_t sub_1000DB9AC()
{
  result = qword_100447710;
  if (!qword_100447710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447710);
  }

  return result;
}

unint64_t sub_1000DBA04()
{
  result = qword_100447718;
  if (!qword_100447718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447718);
  }

  return result;
}

uint64_t sub_1000DBA9C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000DB578();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000DBB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002B72C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1000DBC08()
{
  result = qword_100447730;
  if (!qword_100447730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447730);
  }

  return result;
}

unint64_t sub_1000DBC60()
{
  result = qword_100447738;
  if (!qword_100447738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447738);
  }

  return result;
}

unint64_t sub_1000DBCB8()
{
  result = qword_100447740;
  if (!qword_100447740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447740);
  }

  return result;
}

unint64_t sub_1000DBD1C()
{
  result = qword_100447748;
  if (!qword_100447748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447748);
  }

  return result;
}

uint64_t sub_1000DBD70()
{
  v0 = qword_100446A48;

  return v0;
}

unint64_t sub_1000DBDAC()
{
  result = qword_100447750;
  if (!qword_100447750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447750);
  }

  return result;
}

uint64_t sub_1000DBE00()
{
  v0 = sub_10000321C(&qword_100456918, &qword_100354170);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456920, &qword_100354178);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000DB730();
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

unint64_t sub_1000DBFC8()
{
  result = qword_100447758;
  if (!qword_100447758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447758);
  }

  return result;
}

unint64_t sub_1000DC020()
{
  result = qword_100447760;
  if (!qword_100447760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447760);
  }

  return result;
}

unint64_t sub_1000DC078()
{
  result = qword_100447768;
  if (!qword_100447768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447768);
  }

  return result;
}

uint64_t sub_1000DC0D8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000DC0E4()
{
  sub_1002D6D30();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000DC1CC(uint64_t a1)
{
  v2 = sub_1000DB730();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000DC21C()
{
  result = qword_100447780;
  if (!qword_100447780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447780);
  }

  return result;
}

uint64_t sub_1000DC274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10002B72C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000DC338(uint64_t a1)
{
  v2 = sub_1000DC078();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000DC388()
{
  result = qword_100447788;
  if (!qword_100447788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447788);
  }

  return result;
}

uint64_t sub_1000DC420()
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
  sub_10001EDF0(v7, qword_10051C718);
  sub_10001EDB8(v7, qword_10051C718);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1000DC590@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000DC900()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C730);
  sub_10001EDB8(v0, qword_10051C730);
  return sub_1002D88F0();
}

uint64_t sub_1000DC964()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C748);
  v1 = sub_10001EDB8(v0, qword_10051C748);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000DCA24()
{
  result = swift_getKeyPath();
  qword_10051C760 = result;
  return result;
}

uint64_t sub_1000DCA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004568F0, &qword_100354130) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004568F8, &qword_100354138);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000DCC2C, 0, 0);
}

uint64_t sub_1000DCC2C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000DDDF8();
  *v4 = v0;
  v4[1] = sub_1000DCD10;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E18, 0, &type metadata for AppleTVRemoteDirectionalButtonsEntity, v5);
}

uint64_t sub_1000DCD10()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000DCE0C, 0, 0);
}

uint64_t sub_1000DCE0C()
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
  if (qword_10043A0E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051C760;
  *(v0 + 288) = qword_10051C760;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004568D8, &qword_1004568E0, &qword_100354118);
  *v7 = v0;
  v7[1] = sub_1000DCF70;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000DCF70()
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
    v6 = sub_1000DD0E0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000DD0E0()
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
  sub_1000DC388();
  sub_1000DE00C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000DD358()
{
  v0 = sub_10000321C(&qword_100456900, &qword_100354140);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A0E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000DE00C();
  sub_10002B6E4(&qword_100456908, &qword_100456900, &qword_100354140);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000DD4CC(uint64_t *a1))(void *)
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

void (*sub_1000DD540(uint64_t *a1))(void *)
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

unint64_t sub_1000DD5DC()
{
  result = qword_1004477A0;
  if (!qword_1004477A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477A0);
  }

  return result;
}

unint64_t sub_1000DD634()
{
  result = qword_1004477A8;
  if (!qword_1004477A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477A8);
  }

  return result;
}

uint64_t sub_1000DD730@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  v6 = sub_10001EDB8(v5, a2);
  return sub_10002AC00(v6, a3, &qword_100452A70, &qword_10034E3D0);
}

uint64_t sub_1000DD7AC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000DCA4C(a1, v5, v4);
}

uint64_t sub_1000DD858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029D538();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000DD8A0()
{
  result = qword_1004477B0;
  if (!qword_1004477B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477B0);
  }

  return result;
}

unint64_t sub_1000DD8F8()
{
  result = qword_1004477B8;
  if (!qword_1004477B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477B8);
  }

  return result;
}

uint64_t sub_1000DD96C()
{
  v1 = *(v0 + 16);
  *v1 = _AXSAppleTVRemoteUsesSimpleGestures() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DDA00()
{
  v1 = *(v0 + 16);
  _AXSSetAppleTVRemoteUsesSimpleGestures();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DDA64(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000DDAF4, 0, 0);
}

uint64_t sub_1000DDAF4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100447798, qword_1002F7D88);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004568D8, &qword_1004568E0, &qword_100354118);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000025;
  v2[1] = 0x800000010035FB10;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000DDC40()
{
  result = qword_1004477C0;
  if (!qword_1004477C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477C0);
  }

  return result;
}

uint64_t sub_1000DDC94(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000DE264();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000DDD48()
{
  result = qword_1004477C8;
  if (!qword_1004477C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477C8);
  }

  return result;
}

unint64_t sub_1000DDDA0()
{
  result = qword_1004477D0;
  if (!qword_1004477D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477D0);
  }

  return result;
}

unint64_t sub_1000DDDF8()
{
  result = qword_1004477D8;
  if (!qword_1004477D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477D8);
  }

  return result;
}

uint64_t sub_1000DDE4C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000DE264();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000DDF00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000DE264();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000DDFB4()
{
  result = qword_1004477E0;
  if (!qword_1004477E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477E0);
  }

  return result;
}

unint64_t sub_1000DE00C()
{
  result = qword_1004477E8;
  if (!qword_1004477E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004477E8);
  }

  return result;
}

uint64_t sub_1000DE0A4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000DDC40();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000DE15C()
{
  result = qword_100447800;
  if (!qword_100447800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447800);
  }

  return result;
}

unint64_t sub_1000DE1B4()
{
  result = qword_100447808;
  if (!qword_100447808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447808);
  }

  return result;
}

unint64_t sub_1000DE20C()
{
  result = qword_100447810;
  if (!qword_100447810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447810);
  }

  return result;
}

unint64_t sub_1000DE264()
{
  result = qword_100447818;
  if (!qword_100447818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447818);
  }

  return result;
}

uint64_t sub_1000DE2B8()
{
  v0 = qword_100446A58;

  return v0;
}

unint64_t sub_1000DE2F4()
{
  result = qword_100447820;
  if (!qword_100447820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447820);
  }

  return result;
}

uint64_t sub_1000DE348()
{
  v0 = sub_10000321C(&qword_1004568C8, &qword_1003540F8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004568D0, &qword_100354100);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000DDDF8();
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

unint64_t sub_1000DE510()
{
  result = qword_100447828;
  if (!qword_100447828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447828);
  }

  return result;
}

unint64_t sub_1000DE568()
{
  result = qword_100447830;
  if (!qword_100447830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447830);
  }

  return result;
}

unint64_t sub_1000DE5C0()
{
  result = qword_100447838;
  if (!qword_100447838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447838);
  }

  return result;
}

uint64_t sub_1000DE614()
{
  sub_1002D6CDC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000DE6FC(uint64_t a1)
{
  v2 = sub_1000DDDF8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000DE74C()
{
  result = qword_100447850;
  if (!qword_100447850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447850);
  }

  return result;
}

uint64_t sub_1000DE7A4(uint64_t a1)
{
  v2 = sub_1000DE5C0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000DE7F4()
{
  result = qword_100447858;
  if (!qword_100447858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447858);
  }

  return result;
}

uint64_t sub_1000DE8B8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000DEC34()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C780);
  sub_10001EDB8(v0, qword_10051C780);
  return sub_1002D88F0();
}

uint64_t sub_1000DEC98()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C798);
  v1 = sub_10001EDB8(v0, qword_10051C798);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000DED58()
{
  result = swift_getKeyPath();
  qword_10051C7B0 = result;
  return result;
}

uint64_t sub_1000DED80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004568A0, &qword_1003540B8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004568A8, &qword_1003540C0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000DEF60, 0, 0);
}

uint64_t sub_1000DEF60()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000E00AC();
  *v4 = v0;
  v4[1] = sub_1000DF044;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E1C, 0, &type metadata for AppleTVRemoteLiveTVButtonsEntity, v5);
}

uint64_t sub_1000DF044()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000DF140, 0, 0);
}

uint64_t sub_1000DF140()
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
  if (qword_10043A100 != -1)
  {
    swift_once();
  }

  v5 = qword_10051C7B0;
  *(v0 + 288) = qword_10051C7B0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456888, &qword_100456890, &qword_1003540A0);
  *v7 = v0;
  v7[1] = sub_1000DF2A4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000DF2A4()
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
    v6 = sub_1000DF414;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000DF414()
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
  sub_1000DE7F4();
  sub_1000E02C0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000DF68C()
{
  v0 = sub_10000321C(&qword_1004568B0, &qword_1003540C8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A100 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000E02C0();
  sub_10002B6E4(&qword_1004568B8, &qword_1004568B0, &qword_1003540C8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000DF800(uint64_t *a1))(void *)
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

void (*sub_1000DF874(uint64_t *a1))(void *)
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

unint64_t sub_1000DF910()
{
  result = qword_100447870;
  if (!qword_100447870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447870);
  }

  return result;
}

unint64_t sub_1000DF968()
{
  result = qword_100447878;
  if (!qword_100447878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447878);
  }

  return result;
}

uint64_t sub_1000DFA64(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000DED80(a1, v5, v4);
}

uint64_t sub_1000DFB10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029D9A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000DFB58()
{
  result = qword_100447880;
  if (!qword_100447880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447880);
  }

  return result;
}

unint64_t sub_1000DFBB0()
{
  result = qword_100447888;
  if (!qword_100447888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447888);
  }

  return result;
}

uint64_t sub_1000DFC24()
{
  v1 = *(v0 + 16);
  *v1 = _AXSAppleTVRemoteForceLiveTVButtons() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DFCB8()
{
  v1 = *(v0 + 16);
  _AXSSetAppleTVRemoteForceLiveTVButtons();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000DFD1C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000DFDAC, 0, 0);
}

uint64_t sub_1000DFDAC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100447868, qword_1002F83C0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456888, &qword_100456890, &qword_1003540A0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000024;
  v2[1] = 0x800000010035DAA0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000DFEF4()
{
  result = qword_100447890;
  if (!qword_100447890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447890);
  }

  return result;
}

uint64_t sub_1000DFF48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000E0518();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000DFFFC()
{
  result = qword_100447898;
  if (!qword_100447898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447898);
  }

  return result;
}

unint64_t sub_1000E0054()
{
  result = qword_1004478A0;
  if (!qword_1004478A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478A0);
  }

  return result;
}

unint64_t sub_1000E00AC()
{
  result = qword_1004478A8;
  if (!qword_1004478A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478A8);
  }

  return result;
}

uint64_t sub_1000E0100(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000E0518();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000E01B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000E0518();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000E0268()
{
  result = qword_1004478B0;
  if (!qword_1004478B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478B0);
  }

  return result;
}

unint64_t sub_1000E02C0()
{
  result = qword_1004478B8;
  if (!qword_1004478B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478B8);
  }

  return result;
}

uint64_t sub_1000E0358(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000DFEF4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000E0410()
{
  result = qword_1004478D0;
  if (!qword_1004478D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478D0);
  }

  return result;
}

unint64_t sub_1000E0468()
{
  result = qword_1004478D8;
  if (!qword_1004478D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478D8);
  }

  return result;
}

unint64_t sub_1000E04C0()
{
  result = qword_1004478E0;
  if (!qword_1004478E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478E0);
  }

  return result;
}

unint64_t sub_1000E0518()
{
  result = qword_1004478E8;
  if (!qword_1004478E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478E8);
  }

  return result;
}

uint64_t sub_1000E056C()
{
  v0 = qword_100446A68;

  return v0;
}

unint64_t sub_1000E05A8()
{
  result = qword_1004478F0;
  if (!qword_1004478F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478F0);
  }

  return result;
}

uint64_t sub_1000E05FC()
{
  v0 = sub_10000321C(&qword_100456878, &qword_100354080);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456880, &qword_100354088);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000E00AC();
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

unint64_t sub_1000E07C4()
{
  result = qword_1004478F8;
  if (!qword_1004478F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004478F8);
  }

  return result;
}

unint64_t sub_1000E081C()
{
  result = qword_100447900;
  if (!qword_100447900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447900);
  }

  return result;
}

unint64_t sub_1000E0874()
{
  result = qword_100447908;
  if (!qword_100447908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447908);
  }

  return result;
}

uint64_t sub_1000E08C8()
{
  sub_1002D6C88();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000E09B0(uint64_t a1)
{
  v2 = sub_1000E00AC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000E0A00()
{
  result = qword_100447920;
  if (!qword_100447920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447920);
  }

  return result;
}

uint64_t sub_1000E0A58(uint64_t a1)
{
  v2 = sub_1000E0874();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000E0AA8()
{
  result = qword_100447928;
  if (!qword_100447928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447928);
  }

  return result;
}

uint64_t sub_1000E0B40()
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
  sub_10001EDF0(v7, qword_10051C7B8);
  sub_10001EDB8(v7, qword_10051C7B8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1000E0CB0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000E102C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C7D0);
  sub_10001EDB8(v0, qword_10051C7D0);
  return sub_1002D88F0();
}

uint64_t sub_1000E1090()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C7E8);
  v1 = sub_10001EDB8(v0, qword_10051C7E8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000E1150()
{
  result = swift_getKeyPath();
  qword_10051C800 = result;
  return result;
}

uint64_t sub_1000E1178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456850, &qword_100354040) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456858, &qword_100354048);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1358, 0, 0);
}

uint64_t sub_1000E1358()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000E2498();
  *v4 = v0;
  v4[1] = sub_1000E143C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E20, 0, &type metadata for AccessibilityAppleWatchRemoteScreenEnabledEntity, v5);
}

uint64_t sub_1000E143C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000E1538, 0, 0);
}

uint64_t sub_1000E1538()
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
  if (qword_10043A120 != -1)
  {
    swift_once();
  }

  v5 = qword_10051C800;
  *(v0 + 288) = qword_10051C800;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456838, &qword_100456840, &qword_100354028);
  *v7 = v0;
  v7[1] = sub_1000E169C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000E169C()
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
    v6 = sub_1000E180C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000E180C()
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
  sub_1000E0AA8();
  sub_1000E26AC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000E1A84()
{
  v0 = sub_10000321C(&qword_100456860, &qword_100354050);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A120 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000E26AC();
  sub_10002B6E4(&qword_100456868, &qword_100456860, &qword_100354050);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000E1BF8(uint64_t *a1))(void *)
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

void (*sub_1000E1C6C(uint64_t *a1))(void *)
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

unint64_t sub_1000E1D08()
{
  result = qword_100447940;
  if (!qword_100447940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447940);
  }

  return result;
}

unint64_t sub_1000E1D60()
{
  result = qword_100447948;
  if (!qword_100447948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447948);
  }

  return result;
}

uint64_t sub_1000E1E5C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000E1178(a1, v5, v4);
}

uint64_t sub_1000E1F08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029DE08();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000E1F50()
{
  result = qword_100447950;
  if (!qword_100447950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447950);
  }

  return result;
}

unint64_t sub_1000E1FA8()
{
  result = qword_100447958;
  if (!qword_100447958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447958);
  }

  return result;
}

uint64_t sub_1000E201C()
{
  v1 = *(v0 + 16);
  *v1 = _AXSTwiceRemoteScreenEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000E20B0()
{
  v1 = *(v0 + 16);
  _AXSTwiceRemoteScreenSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000E2114(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000E21A4, 0, 0);
}

uint64_t sub_1000E21A4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100447938, qword_1002F89F8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456838, &qword_100456840, &qword_100354028);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000019;
  v2[1] = 0x8000000100359410;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000E22E0()
{
  result = qword_100447960;
  if (!qword_100447960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447960);
  }

  return result;
}

uint64_t sub_1000E2334(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000E2904();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000E23E8()
{
  result = qword_100447968;
  if (!qword_100447968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447968);
  }

  return result;
}

unint64_t sub_1000E2440()
{
  result = qword_100447970;
  if (!qword_100447970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447970);
  }

  return result;
}

unint64_t sub_1000E2498()
{
  result = qword_100447978;
  if (!qword_100447978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447978);
  }

  return result;
}

uint64_t sub_1000E24EC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000E2904();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000E25A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000E2904();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000E2654()
{
  result = qword_100447980;
  if (!qword_100447980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447980);
  }

  return result;
}

unint64_t sub_1000E26AC()
{
  result = qword_100447988;
  if (!qword_100447988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447988);
  }

  return result;
}

uint64_t sub_1000E2744(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000E22E0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000E27FC()
{
  result = qword_1004479A0;
  if (!qword_1004479A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479A0);
  }

  return result;
}

unint64_t sub_1000E2854()
{
  result = qword_1004479A8;
  if (!qword_1004479A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479A8);
  }

  return result;
}

unint64_t sub_1000E28AC()
{
  result = qword_1004479B0;
  if (!qword_1004479B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479B0);
  }

  return result;
}

unint64_t sub_1000E2904()
{
  result = qword_1004479B8;
  if (!qword_1004479B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479B8);
  }

  return result;
}

uint64_t sub_1000E2958()
{
  v0 = qword_100446A78;

  return v0;
}

unint64_t sub_1000E2994()
{
  result = qword_1004479C0;
  if (!qword_1004479C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479C0);
  }

  return result;
}

uint64_t sub_1000E29E8()
{
  v0 = sub_10000321C(&qword_100456828, &qword_100354008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456830, &qword_100354010);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000E2498();
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

unint64_t sub_1000E2BB0()
{
  result = qword_1004479C8;
  if (!qword_1004479C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479C8);
  }

  return result;
}

unint64_t sub_1000E2C08()
{
  result = qword_1004479D0;
  if (!qword_1004479D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479D0);
  }

  return result;
}

unint64_t sub_1000E2C60()
{
  result = qword_1004479D8;
  if (!qword_1004479D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479D8);
  }

  return result;
}

uint64_t sub_1000E2CB4()
{
  sub_1002D6C34();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000E2D9C(uint64_t a1)
{
  v2 = sub_1000E2498();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000E2DEC()
{
  result = qword_1004479F0;
  if (!qword_1004479F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479F0);
  }

  return result;
}

uint64_t sub_1000E2E44(uint64_t a1)
{
  v2 = sub_1000E2C60();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000E2E94()
{
  result = qword_1004479F8;
  if (!qword_1004479F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004479F8);
  }

  return result;
}

uint64_t sub_1000E2F58@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000E32EC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C820);
  sub_10001EDB8(v0, qword_10051C820);
  return sub_1002D88F0();
}

uint64_t sub_1000E3350()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C838);
  v1 = sub_10001EDB8(v0, qword_10051C838);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000E3410()
{
  result = swift_getKeyPath();
  qword_10051C850 = result;
  return result;
}

uint64_t sub_1000E3438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456800, &qword_100353FC8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456808, &qword_100353FD0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000E3618, 0, 0);
}

uint64_t sub_1000E3618()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000E47D0();
  *v4 = v0;
  v4[1] = sub_1000E36FC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E24, 0, &type metadata for AccessibilityAssistiveTouchEnabledEntity, v5);
}

uint64_t sub_1000E36FC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000E37F8, 0, 0);
}

uint64_t sub_1000E37F8()
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
  if (qword_10043A140 != -1)
  {
    swift_once();
  }

  v5 = qword_10051C850;
  *(v0 + 288) = qword_10051C850;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004567E8, &qword_1004567F0, &qword_100353FB0);
  *v7 = v0;
  v7[1] = sub_1000E395C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000E395C()
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
    v6 = sub_1000E3ACC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000E3ACC()
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
  sub_1000E2E94();
  sub_1000E49E4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000E3D44()
{
  v0 = sub_10000321C(&qword_100456810, &qword_100353FD8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A140 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000E49E4();
  sub_10002B6E4(&qword_100456818, &qword_100456810, &qword_100353FD8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000E3EB8(uint64_t *a1))(void *)
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

void (*sub_1000E3F2C(uint64_t *a1))(void *)
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

unint64_t sub_1000E3FC8()
{
  result = qword_100447A10;
  if (!qword_100447A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A10);
  }

  return result;
}

unint64_t sub_1000E4020()
{
  result = qword_100447A18;
  if (!qword_100447A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A18);
  }

  return result;
}

uint64_t sub_1000E411C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000E3438(a1, v5, v4);
}

uint64_t sub_1000E41C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029E270();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000E4210()
{
  result = qword_100447A20;
  if (!qword_100447A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A20);
  }

  return result;
}

unint64_t sub_1000E4268()
{
  result = qword_100447A28;
  if (!qword_100447A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A28);
  }

  return result;
}

uint64_t sub_1000E42DC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = _AXSAssistiveTouchEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000E43A0()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  _AXSAssistiveTouchSetEnabled();
  _AXSAssistiveTouchSetUIEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000E4440(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000E44D0, 0, 0);
}

uint64_t sub_1000E44D0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100447A08, qword_1002F9030);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004567E8, &qword_1004567F0, &qword_100353FB0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000046;
  v2[1] = 0x8000000100361B10;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000E4618()
{
  result = qword_100447A30;
  if (!qword_100447A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A30);
  }

  return result;
}

uint64_t sub_1000E466C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000E4C3C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000E4720()
{
  result = qword_100447A38;
  if (!qword_100447A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A38);
  }

  return result;
}

unint64_t sub_1000E4778()
{
  result = qword_100447A40;
  if (!qword_100447A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A40);
  }

  return result;
}

unint64_t sub_1000E47D0()
{
  result = qword_100447A48;
  if (!qword_100447A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A48);
  }

  return result;
}

uint64_t sub_1000E4824(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000E4C3C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000E48D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000E4C3C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000E498C()
{
  result = qword_100447A50;
  if (!qword_100447A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A50);
  }

  return result;
}

unint64_t sub_1000E49E4()
{
  result = qword_100447A58;
  if (!qword_100447A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A58);
  }

  return result;
}

uint64_t sub_1000E4A7C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000E4618();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000E4B34()
{
  result = qword_100447A70;
  if (!qword_100447A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A70);
  }

  return result;
}

unint64_t sub_1000E4B8C()
{
  result = qword_100447A78;
  if (!qword_100447A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A78);
  }

  return result;
}

unint64_t sub_1000E4BE4()
{
  result = qword_100447A80;
  if (!qword_100447A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A80);
  }

  return result;
}

unint64_t sub_1000E4C3C()
{
  result = qword_100447A88;
  if (!qword_100447A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A88);
  }

  return result;
}

uint64_t sub_1000E4C90()
{
  v0 = qword_100446A88;

  return v0;
}

unint64_t sub_1000E4CCC()
{
  result = qword_100447A90;
  if (!qword_100447A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A90);
  }

  return result;
}

uint64_t sub_1000E4D20()
{
  v0 = sub_10000321C(&qword_1004567D8, &qword_100353F90);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004567E0, &qword_100353F98);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000E47D0();
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

unint64_t sub_1000E4EE8()
{
  result = qword_100447A98;
  if (!qword_100447A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447A98);
  }

  return result;
}

unint64_t sub_1000E4F40()
{
  result = qword_100447AA0;
  if (!qword_100447AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AA0);
  }

  return result;
}

unint64_t sub_1000E4F98()
{
  result = qword_100447AA8;
  if (!qword_100447AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AA8);
  }

  return result;
}

uint64_t sub_1000E4FEC()
{
  sub_1002D6BE0();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000E50D4(uint64_t a1)
{
  v2 = sub_1000E47D0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000E5124()
{
  result = qword_100447AC0;
  if (!qword_100447AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AC0);
  }

  return result;
}

uint64_t sub_1000E517C(uint64_t a1)
{
  v2 = sub_1000E4F98();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000E51CC()
{
  result = qword_100447AC8;
  if (!qword_100447AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AC8);
  }

  return result;
}

uint64_t sub_1000E528C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000E5604()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C870);
  sub_10001EDB8(v0, qword_10051C870);
  return sub_1002D88F0();
}

uint64_t sub_1000E5668()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C888);
  v1 = sub_10001EDB8(v0, qword_10051C888);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000E5728()
{
  result = swift_getKeyPath();
  qword_10051C8A0 = result;
  return result;
}

uint64_t sub_1000E5750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004567B0, &qword_100353F50) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v9 = *(v8 + 64) + 15;
  v3[29] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004567B8, &qword_100353F58);
  v3[30] = v10;
  v11 = *(v10 - 8);
  v3[31] = v11;
  v12 = *(v11 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000E5930, 0, 0);
}

uint64_t sub_1000E5930()
{
  v1 = *(v0 + 176);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  v5 = sub_1000E6B4C();
  *v4 = v0;
  v4[1] = sub_1000E5A14;
  v6 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E28, 0, &type metadata for AccessibilityAssistiveTouchOpacityEntity, v5);
}

uint64_t sub_1000E5A14()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_1000E5B10, 0, 0);
}

uint64_t sub_1000E5B10()
{
  v1 = v0[22];
  v2 = v0[23];
  sub_1002D85B0();
  v0[11] = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v0[35] = v3;
  v0[36] = v4;
  v0[12] = v3;
  v0[13] = v4;
  sub_1002D85B0();
  if (qword_10043A160 != -1)
  {
    swift_once();
  }

  v5 = qword_10051C8A0;
  v0[37] = qword_10051C8A0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[38] = v7;
  v8 = sub_10002B6E4(&qword_100456798, &qword_1004567A0, &qword_100353F38);
  *v7 = v0;
  v7[1] = sub_1000E5C6C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v5, &type metadata for Double, v8);
}

uint64_t sub_1000E5C6C()
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 288);
  v5 = *(*v1 + 280);
  v8 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v6 = sub_1002D6E00;
  }

  else
  {
    v6 = sub_1000E5DDC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000E5DDC()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];
  v12 = v0[33];
  v13 = v0[29];
  v4 = v0[26];
  v17 = v0[28];
  v18 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[22];
  v14 = v0[21];
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
  sub_1000E51CC();
  sub_1000E6D60();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000E6054()
{
  v0 = sub_10000321C(&qword_1004567C0, &qword_100353F60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A160 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000E6D60();
  sub_10002B6E4(&qword_1004567C8, &qword_1004567C0, &qword_100353F60);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000E61C8(uint64_t *a1))(void *)
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

double sub_1000E623C@<D0>(double *a1@<X8>)
{
  v3 = *(v1 + 8);
  sub_1002D85B0();
  result = v5;
  *a1 = v5;
  return result;
}

uint64_t sub_1000E6278(uint64_t *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_1002D85C0();
}

void (*sub_1000E62B0(uint64_t *a1))(void *)
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

unint64_t sub_1000E634C()
{
  result = qword_100447AE0;
  if (!qword_100447AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AE0);
  }

  return result;
}

unint64_t sub_1000E63A4()
{
  result = qword_100447AE8;
  if (!qword_100447AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AE8);
  }

  return result;
}

uint64_t sub_1000E64A0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000E5750(a1, v5, v4);
}

uint64_t sub_1000E654C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029E6D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000E6594()
{
  result = qword_100447AF0;
  if (!qword_100447AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AF0);
  }

  return result;
}

unint64_t sub_1000E65EC()
{
  result = qword_100447AF8;
  if (!qword_100447AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447AF8);
  }

  return result;
}

uint64_t sub_1000E6660()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 assistiveTouchIdleOpacity];
  v4 = v3;

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000E6728()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchIdleOpacity:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000E67C0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000E6850, 0, 0);
}

uint64_t sub_1000E6850()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100447AD8, qword_1002F9668);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456798, &qword_1004567A0, &qword_100353F38);
  v3 = sub_1002D88B0();
  *v2 = 0xD000000000000034;
  v2[1] = 0x80000001003803F0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000E6994()
{
  result = qword_100447B00;
  if (!qword_100447B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B00);
  }

  return result;
}

uint64_t sub_1000E69E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000E6FB8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000E6A9C()
{
  result = qword_100447B08;
  if (!qword_100447B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B08);
  }

  return result;
}

unint64_t sub_1000E6AF4()
{
  result = qword_100447B10;
  if (!qword_100447B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B10);
  }

  return result;
}

unint64_t sub_1000E6B4C()
{
  result = qword_100447B18;
  if (!qword_100447B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B18);
  }

  return result;
}

uint64_t sub_1000E6BA0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000E6FB8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000E6C54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000E6FB8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000E6D08()
{
  result = qword_100447B20;
  if (!qword_100447B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B20);
  }

  return result;
}

unint64_t sub_1000E6D60()
{
  result = qword_100447B28;
  if (!qword_100447B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B28);
  }

  return result;
}

uint64_t sub_1000E6DF8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000E6994();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000E6EB0()
{
  result = qword_100447B40;
  if (!qword_100447B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B40);
  }

  return result;
}

unint64_t sub_1000E6F08()
{
  result = qword_100447B48;
  if (!qword_100447B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B48);
  }

  return result;
}

unint64_t sub_1000E6F60()
{
  result = qword_100447B50;
  if (!qword_100447B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B50);
  }

  return result;
}

unint64_t sub_1000E6FB8()
{
  result = qword_100447B58;
  if (!qword_100447B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B58);
  }

  return result;
}

uint64_t sub_1000E700C()
{
  v0 = qword_100446A98;

  return v0;
}

unint64_t sub_1000E7048()
{
  result = qword_100447B60;
  if (!qword_100447B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B60);
  }

  return result;
}

uint64_t sub_1000E709C()
{
  v0 = sub_10000321C(&qword_100456788, &qword_100353F18);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456790, &qword_100353F20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000E6B4C();
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

unint64_t sub_1000E7264()
{
  result = qword_100447B68;
  if (!qword_100447B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B68);
  }

  return result;
}

unint64_t sub_1000E72BC()
{
  result = qword_100447B70;
  if (!qword_100447B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B70);
  }

  return result;
}

unint64_t sub_1000E7314()
{
  result = qword_100447B78;
  if (!qword_100447B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B78);
  }

  return result;
}

uint64_t sub_1000E7368()
{
  sub_1002D6B8C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000E7450(uint64_t a1)
{
  v2 = sub_1000E6B4C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000E74A0()
{
  result = qword_100447B90;
  if (!qword_100447B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B90);
  }

  return result;
}

uint64_t sub_1000E74F8(uint64_t a1)
{
  v2 = sub_1000E7314();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000E7548()
{
  result = qword_100447B98;
  if (!qword_100447B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447B98);
  }

  return result;
}

uint64_t sub_1000E75E0()
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
  sub_10001EDF0(v7, qword_10051C8A8);
  sub_10001EDB8(v7, qword_10051C8A8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1000E7750@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000E7AC0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C8C0);
  sub_10001EDB8(v0, qword_10051C8C0);
  return sub_1002D88F0();
}

uint64_t sub_1000E7B24()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C8D8);
  v1 = sub_10001EDB8(v0, qword_10051C8D8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000E7BE4()
{
  result = swift_getKeyPath();
  qword_10051C8F0 = result;
  return result;
}

uint64_t sub_1000E7C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456760, &qword_100353ED8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456768, &qword_100353EE0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000E7DEC, 0, 0);
}

uint64_t sub_1000E7DEC()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000E8FA4();
  *v4 = v0;
  v4[1] = sub_1000E7ED0;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E2C, 0, &type metadata for AccessibilityAssistiveTouchShowOnscreenKeyboardEnabledEntity, v5);
}

uint64_t sub_1000E7ED0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000E7FCC, 0, 0);
}

uint64_t sub_1000E7FCC()
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
  if (qword_10043A180 != -1)
  {
    swift_once();
  }

  v5 = qword_10051C8F0;
  *(v0 + 288) = qword_10051C8F0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456748, &qword_100456750, &qword_100353EC0);
  *v7 = v0;
  v7[1] = sub_1000E8130;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000E8130()
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
    v6 = sub_1000E82A0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000E82A0()
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
  sub_1000E7548();
  sub_1000E91B8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000E8518()
{
  v0 = sub_10000321C(&qword_100456770, &qword_100353EE8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A180 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000E91B8();
  sub_10002B6E4(&qword_100456778, &qword_100456770, &qword_100353EE8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000E868C(uint64_t *a1))(void *)
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

void (*sub_1000E8700(uint64_t *a1))(void *)
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

unint64_t sub_1000E879C()
{
  result = qword_100447BB0;
  if (!qword_100447BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BB0);
  }

  return result;
}

unint64_t sub_1000E87F4()
{
  result = qword_100447BB8;
  if (!qword_100447BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BB8);
  }

  return result;
}

uint64_t sub_1000E88F0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000E7C0C(a1, v5, v4);
}

uint64_t sub_1000E899C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029EB64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000E89E4()
{
  result = qword_100447BC0;
  if (!qword_100447BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BC0);
  }

  return result;
}

unint64_t sub_1000E8A3C()
{
  result = qword_100447BC8;
  if (!qword_100447BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BC8);
  }

  return result;
}

uint64_t sub_1000E8AB0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000E8B78()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseAlwaysShowSoftwareKeyboardEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000E8C10(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000E8CA0, 0, 0);
}

uint64_t sub_1000E8CA0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100447BA8, qword_1002F9CA0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456748, &qword_100456750, &qword_100353EC0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000043;
  v2[1] = 0x8000000100361710;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000E8DEC()
{
  result = qword_100447BD0;
  if (!qword_100447BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BD0);
  }

  return result;
}

uint64_t sub_1000E8E40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000E9410();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000E8EF4()
{
  result = qword_100447BD8;
  if (!qword_100447BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BD8);
  }

  return result;
}

unint64_t sub_1000E8F4C()
{
  result = qword_100447BE0;
  if (!qword_100447BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BE0);
  }

  return result;
}

unint64_t sub_1000E8FA4()
{
  result = qword_100447BE8;
  if (!qword_100447BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BE8);
  }

  return result;
}

uint64_t sub_1000E8FF8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000E9410();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000E90AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000E9410();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000E9160()
{
  result = qword_100447BF0;
  if (!qword_100447BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BF0);
  }

  return result;
}

unint64_t sub_1000E91B8()
{
  result = qword_100447BF8;
  if (!qword_100447BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447BF8);
  }

  return result;
}

uint64_t sub_1000E9250(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000E8DEC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000E9308()
{
  result = qword_100447C10;
  if (!qword_100447C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C10);
  }

  return result;
}

unint64_t sub_1000E9360()
{
  result = qword_100447C18;
  if (!qword_100447C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C18);
  }

  return result;
}

unint64_t sub_1000E93B8()
{
  result = qword_100447C20;
  if (!qword_100447C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C20);
  }

  return result;
}

unint64_t sub_1000E9410()
{
  result = qword_100447C28;
  if (!qword_100447C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C28);
  }

  return result;
}

uint64_t sub_1000E9464()
{
  v0 = qword_100446AA8;

  return v0;
}

unint64_t sub_1000E94A0()
{
  result = qword_100447C30;
  if (!qword_100447C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C30);
  }

  return result;
}

uint64_t sub_1000E94F4()
{
  v0 = sub_10000321C(&qword_100456738, &qword_100353EA0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456740, &qword_100353EA8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000E8FA4();
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

unint64_t sub_1000E96BC()
{
  result = qword_100447C38;
  if (!qword_100447C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C38);
  }

  return result;
}

unint64_t sub_1000E9714()
{
  result = qword_100447C40;
  if (!qword_100447C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C40);
  }

  return result;
}

unint64_t sub_1000E976C()
{
  result = qword_100447C48;
  if (!qword_100447C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C48);
  }

  return result;
}

uint64_t sub_1000E97C0()
{
  sub_1002D6B38();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000E98A8(uint64_t a1)
{
  v2 = sub_1000E8FA4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000E98F8()
{
  result = qword_100447C60;
  if (!qword_100447C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C60);
  }

  return result;
}

uint64_t sub_1000E9950(uint64_t a1)
{
  v2 = sub_1000E976C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000E99A0()
{
  result = qword_100447C68;
  if (!qword_100447C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C68);
  }

  return result;
}

uint64_t sub_1000E9A38()
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
  sub_10001EDF0(v7, qword_10051C8F8);
  sub_10001EDB8(v7, qword_10051C8F8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1000E9BA8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000E9F18()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C910);
  sub_10001EDB8(v0, qword_10051C910);
  return sub_1002D88F0();
}

uint64_t sub_1000E9F7C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C928);
  v1 = sub_10001EDB8(v0, qword_10051C928);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000EA03C()
{
  result = swift_getKeyPath();
  qword_10051C940 = result;
  return result;
}

uint64_t sub_1000EA064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456710, &qword_100353E60) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456718, &qword_100353E68);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000EA244, 0, 0);
}

uint64_t sub_1000EA244()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000EB400();
  *v4 = v0;
  v4[1] = sub_1000EA328;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E30, 0, &type metadata for AccessibilityAssistiveTouchPerformTouchGesturesEnabledEntity, v5);
}

uint64_t sub_1000EA328()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000EA424, 0, 0);
}

uint64_t sub_1000EA424()
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
  if (qword_10043A1A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051C940;
  *(v0 + 288) = qword_10051C940;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004566F8, &qword_100456700, &qword_100353E48);
  *v7 = v0;
  v7[1] = sub_1000EA588;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000EA588()
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
    v6 = sub_1000EA6F8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000EA6F8()
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
  sub_1000E99A0();
  sub_1000EB614();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000EA970()
{
  v0 = sub_10000321C(&qword_100456720, &qword_100353E70);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A1A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000EB614();
  sub_10002B6E4(&qword_100456728, &qword_100456720, &qword_100353E70);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000EAAE4(uint64_t *a1))(void *)
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

void (*sub_1000EAB58(uint64_t *a1))(void *)
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

unint64_t sub_1000EABF4()
{
  result = qword_100447C80;
  if (!qword_100447C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C80);
  }

  return result;
}

unint64_t sub_1000EAC4C()
{
  result = qword_100447C88;
  if (!qword_100447C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C88);
  }

  return result;
}

uint64_t sub_1000EAD48(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000EA064(a1, v5, v4);
}

uint64_t sub_1000EADF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029EFCC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000EAE3C()
{
  result = qword_100447C90;
  if (!qword_100447C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C90);
  }

  return result;
}

unint64_t sub_1000EAE94()
{
  result = qword_100447C98;
  if (!qword_100447C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447C98);
  }

  return result;
}

uint64_t sub_1000EAF08()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseBehavesLikeFinger];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000EAFD0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseBehavesLikeFinger:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000EB068(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000EB0F8, 0, 0);
}

uint64_t sub_1000EB0F8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100447C78, qword_1002FA2D8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004566F8, &qword_100456700, &qword_100353E48);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003FLL;
  v2[1] = 0x800000010035CFA0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000EB248()
{
  result = qword_100447CA0;
  if (!qword_100447CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CA0);
  }

  return result;
}

uint64_t sub_1000EB29C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000EB86C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000EB350()
{
  result = qword_100447CA8;
  if (!qword_100447CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CA8);
  }

  return result;
}

unint64_t sub_1000EB3A8()
{
  result = qword_100447CB0;
  if (!qword_100447CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CB0);
  }

  return result;
}

unint64_t sub_1000EB400()
{
  result = qword_100447CB8;
  if (!qword_100447CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CB8);
  }

  return result;
}

uint64_t sub_1000EB454(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000EB86C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000EB508(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000EB86C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000EB5BC()
{
  result = qword_100447CC0;
  if (!qword_100447CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CC0);
  }

  return result;
}

unint64_t sub_1000EB614()
{
  result = qword_100447CC8;
  if (!qword_100447CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CC8);
  }

  return result;
}

uint64_t sub_1000EB6AC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000EB248();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000EB764()
{
  result = qword_100447CE0;
  if (!qword_100447CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CE0);
  }

  return result;
}

unint64_t sub_1000EB7BC()
{
  result = qword_100447CE8;
  if (!qword_100447CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CE8);
  }

  return result;
}

unint64_t sub_1000EB814()
{
  result = qword_100447CF0;
  if (!qword_100447CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CF0);
  }

  return result;
}

unint64_t sub_1000EB86C()
{
  result = qword_100447CF8;
  if (!qword_100447CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447CF8);
  }

  return result;
}

uint64_t sub_1000EB8C0()
{
  v0 = qword_100446AB8;

  return v0;
}

unint64_t sub_1000EB8FC()
{
  result = qword_100447D00;
  if (!qword_100447D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D00);
  }

  return result;
}

uint64_t sub_1000EB950()
{
  v0 = sub_10000321C(&qword_1004566E8, &qword_100353E28);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004566F0, &qword_100353E30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000EB400();
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

unint64_t sub_1000EBB18()
{
  result = qword_100447D08;
  if (!qword_100447D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D08);
  }

  return result;
}

unint64_t sub_1000EBB70()
{
  result = qword_100447D10;
  if (!qword_100447D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D10);
  }

  return result;
}

unint64_t sub_1000EBBC8()
{
  result = qword_100447D18;
  if (!qword_100447D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D18);
  }

  return result;
}

uint64_t sub_1000EBC1C()
{
  sub_1002D6AE4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000EBD04(uint64_t a1)
{
  v2 = sub_1000EB400();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000EBD54()
{
  result = qword_100447D30;
  if (!qword_100447D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D30);
  }

  return result;
}

uint64_t sub_1000EBDAC(uint64_t a1)
{
  v2 = sub_1000EBBC8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000EBDFC()
{
  result = qword_100447D38;
  if (!qword_100447D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D38);
  }

  return result;
}

uint64_t sub_1000EBE94()
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
  sub_10001EDF0(v7, qword_10051C948);
  sub_10001EDB8(v7, qword_10051C948);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1000EC004@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000EC374()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C960);
  sub_10001EDB8(v0, qword_10051C960);
  return sub_1002D88F0();
}

uint64_t sub_1000EC3D8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C978);
  v1 = sub_10001EDB8(v0, qword_10051C978);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000EC498()
{
  result = swift_getKeyPath();
  qword_10051C990 = result;
  return result;
}

uint64_t sub_1000EC4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004566C0, &qword_100353DE8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004566C8, &qword_100353DF0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000EC6A0, 0, 0);
}

uint64_t sub_1000EC6A0()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000ED858();
  *v4 = v0;
  v4[1] = sub_1000EC784;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E34, 0, &type metadata for AccessibilityAssistiveTouchGameControllerModeEnabledEntity, v5);
}

uint64_t sub_1000EC784()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000EC880, 0, 0);
}

uint64_t sub_1000EC880()
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
  if (qword_10043A1C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051C990;
  *(v0 + 288) = qword_10051C990;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004566A8, &qword_1004566B0, &qword_100353DD0);
  *v7 = v0;
  v7[1] = sub_1000EC9E4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000EC9E4()
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
    v6 = sub_1000ECB54;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000ECB54()
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
  sub_1000EBDFC();
  sub_1000EDA6C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000ECDCC()
{
  v0 = sub_10000321C(&qword_1004566D0, &qword_100353DF8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A1C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000EDA6C();
  sub_10002B6E4(&qword_1004566D8, &qword_1004566D0, &qword_100353DF8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000ECF40(uint64_t *a1))(void *)
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

void (*sub_1000ECFB4(uint64_t *a1))(void *)
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

unint64_t sub_1000ED050()
{
  result = qword_100447D50;
  if (!qword_100447D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D50);
  }

  return result;
}

unint64_t sub_1000ED0A8()
{
  result = qword_100447D58;
  if (!qword_100447D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D58);
  }

  return result;
}

uint64_t sub_1000ED1A4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000EC4C0(a1, v5, v4);
}

uint64_t sub_1000ED250@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029F444();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000ED298()
{
  result = qword_100447D60;
  if (!qword_100447D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D60);
  }

  return result;
}

unint64_t sub_1000ED2F0()
{
  result = qword_100447D68;
  if (!qword_100447D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D68);
  }

  return result;
}

uint64_t sub_1000ED364()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchGameControllerEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000ED42C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchGameControllerEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000ED4C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000ED554, 0, 0);
}

uint64_t sub_1000ED554()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100447D48, qword_1002FA910);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004566A8, &qword_1004566B0, &qword_100353DD0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000054;
  v2[1] = 0x800000010035A510;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000ED6A0()
{
  result = qword_100447D70;
  if (!qword_100447D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D70);
  }

  return result;
}

uint64_t sub_1000ED6F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000EDCC4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000ED7A8()
{
  result = qword_100447D78;
  if (!qword_100447D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D78);
  }

  return result;
}

unint64_t sub_1000ED800()
{
  result = qword_100447D80;
  if (!qword_100447D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D80);
  }

  return result;
}

unint64_t sub_1000ED858()
{
  result = qword_100447D88;
  if (!qword_100447D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D88);
  }

  return result;
}

uint64_t sub_1000ED8AC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000EDCC4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000ED960(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000EDCC4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000EDA14()
{
  result = qword_100447D90;
  if (!qword_100447D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D90);
  }

  return result;
}

unint64_t sub_1000EDA6C()
{
  result = qword_100447D98;
  if (!qword_100447D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447D98);
  }

  return result;
}

uint64_t sub_1000EDB04(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000ED6A0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000EDBBC()
{
  result = qword_100447DB0;
  if (!qword_100447DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DB0);
  }

  return result;
}

unint64_t sub_1000EDC14()
{
  result = qword_100447DB8;
  if (!qword_100447DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DB8);
  }

  return result;
}

unint64_t sub_1000EDC6C()
{
  result = qword_100447DC0;
  if (!qword_100447DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DC0);
  }

  return result;
}

unint64_t sub_1000EDCC4()
{
  result = qword_100447DC8;
  if (!qword_100447DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DC8);
  }

  return result;
}

uint64_t sub_1000EDD18()
{
  v0 = qword_100446AC8;

  return v0;
}

unint64_t sub_1000EDD54()
{
  result = qword_100447DD0;
  if (!qword_100447DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DD0);
  }

  return result;
}

uint64_t sub_1000EDDA8()
{
  v0 = sub_10000321C(&qword_100456698, &qword_100353DB0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004566A0, &qword_100353DB8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000ED858();
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

unint64_t sub_1000EDF70()
{
  result = qword_100447DD8;
  if (!qword_100447DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DD8);
  }

  return result;
}

unint64_t sub_1000EDFC8()
{
  result = qword_100447DE0;
  if (!qword_100447DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DE0);
  }

  return result;
}

unint64_t sub_1000EE020()
{
  result = qword_100447DE8;
  if (!qword_100447DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447DE8);
  }

  return result;
}

uint64_t sub_1000EE074()
{
  sub_1002D6A90();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000EE15C(uint64_t a1)
{
  v2 = sub_1000ED858();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000EE1AC()
{
  result = qword_100447E00;
  if (!qword_100447E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E00);
  }

  return result;
}

uint64_t sub_1000EE204(uint64_t a1)
{
  v2 = sub_1000EE020();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000EE254()
{
  result = qword_100447E08;
  if (!qword_100447E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E08);
  }

  return result;
}

uint64_t sub_1000EE318@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000EE694()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051C9B0);
  sub_10001EDB8(v0, qword_10051C9B0);
  return sub_1002D88F0();
}

uint64_t sub_1000EE6F8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051C9C8);
  v1 = sub_10001EDB8(v0, qword_10051C9C8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000EE7B8()
{
  result = swift_getKeyPath();
  qword_10051C9E0 = result;
  return result;
}

uint64_t sub_1000EE7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456670, &qword_100353D70) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456678, &qword_100353D78);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000EE9C0, 0, 0);
}

uint64_t sub_1000EE9C0()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000EFB74();
  *v4 = v0;
  v4[1] = sub_1000EEAA4;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E38, 0, &type metadata for AccessibilityAssistiveTouchDwellControlEnabledEntity, v5);
}

uint64_t sub_1000EEAA4()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000EEBA0, 0, 0);
}

uint64_t sub_1000EEBA0()
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
  if (qword_10043A1E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051C9E0;
  *(v0 + 288) = qword_10051C9E0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456658, &qword_100456660, &qword_100353D58);
  *v7 = v0;
  v7[1] = sub_1000EED04;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000EED04()
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
    v6 = sub_1000EEE74;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000EEE74()
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
  sub_1000EE254();
  sub_1000EFD88();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000EF0EC()
{
  v0 = sub_10000321C(&qword_100456680, &qword_100353D80);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A1E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000EFD88();
  sub_10002B6E4(&qword_100456688, &qword_100456680, &qword_100353D80);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000EF260(uint64_t *a1))(void *)
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

void (*sub_1000EF2D4(uint64_t *a1))(void *)
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

unint64_t sub_1000EF370()
{
  result = qword_100447E20;
  if (!qword_100447E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E20);
  }

  return result;
}

unint64_t sub_1000EF3C8()
{
  result = qword_100447E28;
  if (!qword_100447E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E28);
  }

  return result;
}

uint64_t sub_1000EF4C4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000EE7E0(a1, v5, v4);
}

uint64_t sub_1000EF570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029F8AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000EF5B8()
{
  result = qword_100447E30;
  if (!qword_100447E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E30);
  }

  return result;
}

unint64_t sub_1000EF610()
{
  result = qword_100447E38;
  if (!qword_100447E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E38);
  }

  return result;
}

uint64_t sub_1000EF684()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseDwellControlEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000EF74C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseDwellControlEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000EF7E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000EF874, 0, 0);
}

uint64_t sub_1000EF874()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100447E18, qword_1002FAF48);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456658, &qword_100456660, &qword_100353D58);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003ELL;
  v2[1] = 0x800000010035F900;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000EF9BC()
{
  result = qword_100447E40;
  if (!qword_100447E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E40);
  }

  return result;
}

uint64_t sub_1000EFA10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000EFFE0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000EFAC4()
{
  result = qword_100447E48;
  if (!qword_100447E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E48);
  }

  return result;
}

unint64_t sub_1000EFB1C()
{
  result = qword_100447E50;
  if (!qword_100447E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E50);
  }

  return result;
}

unint64_t sub_1000EFB74()
{
  result = qword_100447E58;
  if (!qword_100447E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E58);
  }

  return result;
}

uint64_t sub_1000EFBC8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000EFFE0();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000EFC7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000EFFE0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000EFD30()
{
  result = qword_100447E60;
  if (!qword_100447E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E60);
  }

  return result;
}

unint64_t sub_1000EFD88()
{
  result = qword_100447E68;
  if (!qword_100447E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E68);
  }

  return result;
}

uint64_t sub_1000EFE20(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000EF9BC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000EFED8()
{
  result = qword_100447E80;
  if (!qword_100447E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E80);
  }

  return result;
}

unint64_t sub_1000EFF30()
{
  result = qword_100447E88;
  if (!qword_100447E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E88);
  }

  return result;
}

unint64_t sub_1000EFF88()
{
  result = qword_100447E90;
  if (!qword_100447E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E90);
  }

  return result;
}

unint64_t sub_1000EFFE0()
{
  result = qword_100447E98;
  if (!qword_100447E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447E98);
  }

  return result;
}

uint64_t sub_1000F0034()
{
  v0 = qword_100446AD8;

  return v0;
}

unint64_t sub_1000F0070()
{
  result = qword_100447EA0;
  if (!qword_100447EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447EA0);
  }

  return result;
}

uint64_t sub_1000F00C4()
{
  v0 = sub_10000321C(&qword_100456648, &qword_100353D38);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456650, &qword_100353D40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000EFB74();
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

unint64_t sub_1000F028C()
{
  result = qword_100447EA8;
  if (!qword_100447EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447EA8);
  }

  return result;
}

unint64_t sub_1000F02E4()
{
  result = qword_100447EB0;
  if (!qword_100447EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447EB0);
  }

  return result;
}

unint64_t sub_1000F033C()
{
  result = qword_100447EB8;
  if (!qword_100447EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447EB8);
  }

  return result;
}

uint64_t sub_1000F0390()
{
  sub_1002D6A3C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000F0478(uint64_t a1)
{
  v2 = sub_1000EFB74();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000F04C8()
{
  result = qword_100447ED0;
  if (!qword_100447ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447ED0);
  }

  return result;
}

uint64_t sub_1000F0520(uint64_t a1)
{
  v2 = sub_1000F033C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000F0570()
{
  result = qword_100447ED8;
  if (!qword_100447ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447ED8);
  }

  return result;
}

uint64_t sub_1000F0608()
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
  sub_10001EDF0(v7, qword_10051C9E8);
  sub_10001EDB8(v7, qword_10051C9E8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1000F0778@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000F0AE8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CA00);
  sub_10001EDB8(v0, qword_10051CA00);
  return sub_1002D88F0();
}

uint64_t sub_1000F0B4C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CA18);
  v1 = sub_10001EDB8(v0, qword_10051CA18);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000F0C0C()
{
  result = swift_getKeyPath();
  qword_10051CA30 = result;
  return result;
}

uint64_t sub_1000F0C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456620, &qword_100353CF8) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v9 = *(v8 + 64) + 15;
  v3[29] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456628, &qword_100353D00);
  v3[30] = v10;
  v11 = *(v10 - 8);
  v3[31] = v11;
  v12 = *(v11 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000F0E14, 0, 0);
}

uint64_t sub_1000F0E14()
{
  v1 = *(v0 + 176);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  v5 = sub_1000F1FC4();
  *v4 = v0;
  v4[1] = sub_1000F0EF8;
  v6 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E3C, 0, &type metadata for AccessibilityAssistiveTouchTrackingSensitivityEntity, v5);
}

uint64_t sub_1000F0EF8()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_1000F0FF4, 0, 0);
}

uint64_t sub_1000F0FF4()
{
  v1 = v0[22];
  v2 = v0[23];
  sub_1002D85B0();
  v0[11] = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v0[35] = v3;
  v0[36] = v4;
  v0[12] = v3;
  v0[13] = v4;
  sub_1002D85B0();
  if (qword_10043A200 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CA30;
  v0[37] = qword_10051CA30;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[38] = v7;
  v8 = sub_10002B6E4(&qword_100456608, &qword_100456610, &qword_100353CE0);
  *v7 = v0;
  v7[1] = sub_1000F1150;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v5, &type metadata for Double, v8);
}

uint64_t sub_1000F1150()
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 288);
  v5 = *(*v1 + 280);
  v8 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v6 = sub_1002D6E00;
  }

  else
  {
    v6 = sub_1000F12C0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000F12C0()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];
  v12 = v0[33];
  v13 = v0[29];
  v4 = v0[26];
  v17 = v0[28];
  v18 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[22];
  v14 = v0[21];
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
  sub_1000F0570();
  sub_1000F21D8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000F1538()
{
  v0 = sub_10000321C(&qword_100456630, &qword_100353D08);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A200 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000F21D8();
  sub_10002B6E4(&qword_100456638, &qword_100456630, &qword_100353D08);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000F16AC(uint64_t *a1))(void *)
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

void (*sub_1000F1720(uint64_t *a1))(void *)
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

unint64_t sub_1000F17BC()
{
  result = qword_100447EF0;
  if (!qword_100447EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447EF0);
  }

  return result;
}

unint64_t sub_1000F1814()
{
  result = qword_100447EF8;
  if (!qword_100447EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447EF8);
  }

  return result;
}

uint64_t sub_1000F1910(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000F0C34(a1, v5, v4);
}

uint64_t sub_1000F19BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10029FD14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000F1A04()
{
  result = qword_100447F00;
  if (!qword_100447F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F00);
  }

  return result;
}

unint64_t sub_1000F1A5C()
{
  result = qword_100447F08;
  if (!qword_100447F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F08);
  }

  return result;
}

uint64_t sub_1000F1AD0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 assistiveTouchSpeed];
  v4 = v3;

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000F1B98()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchSpeed:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000F1C30(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000F1CC0, 0, 0);
}

uint64_t sub_1000F1CC0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100447EE8, qword_1002FB580);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456608, &qword_100456610, &qword_100353CE0);
  v3 = sub_1002D88B0();
  *v2 = 0xD000000000000033;
  v2[1] = 0x800000010035A820;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000F1E0C()
{
  result = qword_100447F10;
  if (!qword_100447F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F10);
  }

  return result;
}

uint64_t sub_1000F1E60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000F2430();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000F1F14()
{
  result = qword_100447F18;
  if (!qword_100447F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F18);
  }

  return result;
}

unint64_t sub_1000F1F6C()
{
  result = qword_100447F20;
  if (!qword_100447F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F20);
  }

  return result;
}

unint64_t sub_1000F1FC4()
{
  result = qword_100447F28;
  if (!qword_100447F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F28);
  }

  return result;
}

uint64_t sub_1000F2018(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000F2430();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000F20CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000F2430();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000F2180()
{
  result = qword_100447F30;
  if (!qword_100447F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F30);
  }

  return result;
}

unint64_t sub_1000F21D8()
{
  result = qword_100447F38;
  if (!qword_100447F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F38);
  }

  return result;
}

uint64_t sub_1000F2270(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000F1E0C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000F2328()
{
  result = qword_100447F50;
  if (!qword_100447F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F50);
  }

  return result;
}

unint64_t sub_1000F2380()
{
  result = qword_100447F58;
  if (!qword_100447F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F58);
  }

  return result;
}

unint64_t sub_1000F23D8()
{
  result = qword_100447F60;
  if (!qword_100447F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F60);
  }

  return result;
}

unint64_t sub_1000F2430()
{
  result = qword_100447F68;
  if (!qword_100447F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F68);
  }

  return result;
}

uint64_t sub_1000F2484()
{
  v0 = qword_100446AE8;

  return v0;
}

unint64_t sub_1000F24C0()
{
  result = qword_100447F70;
  if (!qword_100447F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F70);
  }

  return result;
}

uint64_t sub_1000F2514()
{
  v0 = sub_10000321C(&qword_1004565F8, &qword_100353CC0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456600, &qword_100353CC8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000F1FC4();
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

unint64_t sub_1000F26DC()
{
  result = qword_100447F78;
  if (!qword_100447F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F78);
  }

  return result;
}

unint64_t sub_1000F2734()
{
  result = qword_100447F80;
  if (!qword_100447F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F80);
  }

  return result;
}

unint64_t sub_1000F278C()
{
  result = qword_100447F88;
  if (!qword_100447F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447F88);
  }

  return result;
}

uint64_t sub_1000F27E0()
{
  sub_1002D69E8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000F28C8(uint64_t a1)
{
  v2 = sub_1000F1FC4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000F2918()
{
  result = qword_100447FA0;
  if (!qword_100447FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FA0);
  }

  return result;
}

uint64_t sub_1000F2970(uint64_t a1)
{
  v2 = sub_1000F278C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000F29C0()
{
  result = qword_100447FA8;
  if (!qword_100447FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FA8);
  }

  return result;
}

uint64_t sub_1000F2A58()
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
  sub_10001EDF0(v7, qword_10051CA38);
  sub_10001EDB8(v7, qword_10051CA38);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1000F2BC8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000F2F38()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CA50);
  sub_10001EDB8(v0, qword_10051CA50);
  return sub_1002D88F0();
}

uint64_t sub_1000F2F9C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CA68);
  v1 = sub_10001EDB8(v0, qword_10051CA68);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000F305C()
{
  result = swift_getKeyPath();
  qword_10051CA80 = result;
  return result;
}

uint64_t sub_1000F3084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004565D0, &qword_100353C80) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004565D8, &qword_100353C88);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000F3264, 0, 0);
}

uint64_t sub_1000F3264()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000F441C();
  *v4 = v0;
  v4[1] = sub_1000F3348;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E40, 0, &type metadata for AccessibilityAssistiveTouchExtendedPredictionsEntity, v5);
}

uint64_t sub_1000F3348()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000F3444, 0, 0);
}

uint64_t sub_1000F3444()
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
  if (qword_10043A220 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CA80;
  *(v0 + 288) = qword_10051CA80;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004565B8, &qword_1004565C0, &qword_100353C68);
  *v7 = v0;
  v7[1] = sub_1000F35A8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000F35A8()
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
    v6 = sub_1000F3718;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000F3718()
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
  sub_1000F29C0();
  sub_1000F4630();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000F3990()
{
  v0 = sub_10000321C(&qword_1004565E0, &qword_100353C90);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A220 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000F4630();
  sub_10002B6E4(&qword_1004565E8, &qword_1004565E0, &qword_100353C90);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000F3B04(uint64_t *a1))(void *)
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

void (*sub_1000F3B78(uint64_t *a1))(void *)
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

unint64_t sub_1000F3C14()
{
  result = qword_100447FC0;
  if (!qword_100447FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FC0);
  }

  return result;
}

unint64_t sub_1000F3C6C()
{
  result = qword_100447FC8;
  if (!qword_100447FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FC8);
  }

  return result;
}

uint64_t sub_1000F3D68(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000F3084(a1, v5, v4);
}

uint64_t sub_1000F3E14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A01A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000F3E5C()
{
  result = qword_100447FD0;
  if (!qword_100447FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FD0);
  }

  return result;
}

unint64_t sub_1000F3EB4()
{
  result = qword_100447FD8;
  if (!qword_100447FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FD8);
  }

  return result;
}

uint64_t sub_1000F3F28()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchShouldUseExtendedKeyboardPredictions];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000F3FF0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchShouldUseExtendedKeyboardPredictions:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000F4088(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000F4118, 0, 0);
}

uint64_t sub_1000F4118()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100447FB8, qword_1002FBBB8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004565B8, &qword_1004565C0, &qword_100353C68);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000004ALL;
  v2[1] = 0x8000000100361A20;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000F4264()
{
  result = qword_100447FE0;
  if (!qword_100447FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FE0);
  }

  return result;
}

uint64_t sub_1000F42B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000F4888();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000F436C()
{
  result = qword_100447FE8;
  if (!qword_100447FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FE8);
  }

  return result;
}

unint64_t sub_1000F43C4()
{
  result = qword_100447FF0;
  if (!qword_100447FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FF0);
  }

  return result;
}

unint64_t sub_1000F441C()
{
  result = qword_100447FF8;
  if (!qword_100447FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100447FF8);
  }

  return result;
}

uint64_t sub_1000F4470(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000F4888();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000F4524(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000F4888();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000F45D8()
{
  result = qword_100448000;
  if (!qword_100448000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448000);
  }

  return result;
}

unint64_t sub_1000F4630()
{
  result = qword_100448008;
  if (!qword_100448008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448008);
  }

  return result;
}

uint64_t sub_1000F46C8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000F4264();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000F4780()
{
  result = qword_100448020;
  if (!qword_100448020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448020);
  }

  return result;
}

unint64_t sub_1000F47D8()
{
  result = qword_100448028;
  if (!qword_100448028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448028);
  }

  return result;
}

unint64_t sub_1000F4830()
{
  result = qword_100448030;
  if (!qword_100448030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448030);
  }

  return result;
}

unint64_t sub_1000F4888()
{
  result = qword_100448038;
  if (!qword_100448038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448038);
  }

  return result;
}

uint64_t sub_1000F48DC()
{
  v0 = qword_100446AF8;

  return v0;
}

unint64_t sub_1000F4918()
{
  result = qword_100448040;
  if (!qword_100448040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448040);
  }

  return result;
}

uint64_t sub_1000F496C()
{
  v0 = sub_10000321C(&qword_1004565A8, &qword_100353C48);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004565B0, &qword_100353C50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000F441C();
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

unint64_t sub_1000F4B34()
{
  result = qword_100448048;
  if (!qword_100448048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448048);
  }

  return result;
}

unint64_t sub_1000F4B8C()
{
  result = qword_100448050;
  if (!qword_100448050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448050);
  }

  return result;
}

unint64_t sub_1000F4BE4()
{
  result = qword_100448058;
  if (!qword_100448058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448058);
  }

  return result;
}

uint64_t sub_1000F4C38()
{
  sub_1002D6994();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000F4D20(uint64_t a1)
{
  v2 = sub_1000F441C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000F4D70()
{
  result = qword_100448070;
  if (!qword_100448070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448070);
  }

  return result;
}

uint64_t sub_1000F4DC8(uint64_t a1)
{
  v2 = sub_1000F4BE4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000F4E18()
{
  result = qword_100448078;
  if (!qword_100448078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448078);
  }

  return result;
}

uint64_t sub_1000F4EB0()
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
  sub_10001EDF0(v7, qword_10051CA88);
  sub_10001EDB8(v7, qword_10051CA88);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1000F5020@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000F5390()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CAA0);
  sub_10001EDB8(v0, qword_10051CAA0);
  return sub_1002D88F0();
}

uint64_t sub_1000F53F4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CAB8);
  v1 = sub_10001EDB8(v0, qword_10051CAB8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000F54B4()
{
  result = swift_getKeyPath();
  qword_10051CAD0 = result;
  return result;
}

uint64_t sub_1000F54DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456580, &qword_100353C08) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456588, &qword_100353C10);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000F56BC, 0, 0);
}

uint64_t sub_1000F56BC()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000F6878();
  *v4 = v0;
  v4[1] = sub_1000F57A0;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E44, 0, &type metadata for AccessibilityAssistiveTouchSoundOnMouseClickEntity, v5);
}

uint64_t sub_1000F57A0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000F589C, 0, 0);
}

uint64_t sub_1000F589C()
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
  if (qword_10043A240 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CAD0;
  *(v0 + 288) = qword_10051CAD0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456568, &qword_100456570, &qword_100353BF0);
  *v7 = v0;
  v7[1] = sub_1000F5A00;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000F5A00()
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
    v6 = sub_1000F5B70;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000F5B70()
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
  sub_1000F4E18();
  sub_1000F6A8C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000F5DE8()
{
  v0 = sub_10000321C(&qword_100456590, &qword_100353C18);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A240 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000F6A8C();
  sub_10002B6E4(&qword_100456598, &qword_100456590, &qword_100353C18);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000F5F5C(uint64_t *a1))(void *)
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

void (*sub_1000F5FD0(uint64_t *a1))(void *)
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

unint64_t sub_1000F606C()
{
  result = qword_100448090;
  if (!qword_100448090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448090);
  }

  return result;
}

unint64_t sub_1000F60C4()
{
  result = qword_100448098;
  if (!qword_100448098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448098);
  }

  return result;
}

uint64_t sub_1000F61C0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000F54DC(a1, v5, v4);
}

uint64_t sub_1000F626C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A0608();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000F62B4()
{
  result = qword_1004480A0;
  if (!qword_1004480A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480A0);
  }

  return result;
}

unint64_t sub_1000F630C()
{
  result = qword_1004480A8;
  if (!qword_1004480A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480A8);
  }

  return result;
}

uint64_t sub_1000F6380()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchMouseClickSoundsEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000F6448()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchMouseClickSoundsEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000F64E0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000F6570, 0, 0);
}

uint64_t sub_1000F6570()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448088, qword_1002FC1F0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456568, &qword_100456570, &qword_100353BF0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000037;
  v2[1] = 0x8000000100361D30;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000F66C0()
{
  result = qword_1004480B0;
  if (!qword_1004480B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480B0);
  }

  return result;
}

uint64_t sub_1000F6714(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000F6CE4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000F67C8()
{
  result = qword_1004480B8;
  if (!qword_1004480B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480B8);
  }

  return result;
}

unint64_t sub_1000F6820()
{
  result = qword_1004480C0;
  if (!qword_1004480C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480C0);
  }

  return result;
}

unint64_t sub_1000F6878()
{
  result = qword_1004480C8;
  if (!qword_1004480C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480C8);
  }

  return result;
}

uint64_t sub_1000F68CC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000F6CE4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000F6980(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000F6CE4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000F6A34()
{
  result = qword_1004480D0;
  if (!qword_1004480D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480D0);
  }

  return result;
}

unint64_t sub_1000F6A8C()
{
  result = qword_1004480D8;
  if (!qword_1004480D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480D8);
  }

  return result;
}

uint64_t sub_1000F6B24(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000F66C0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000F6BDC()
{
  result = qword_1004480F0;
  if (!qword_1004480F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480F0);
  }

  return result;
}

unint64_t sub_1000F6C34()
{
  result = qword_1004480F8;
  if (!qword_1004480F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004480F8);
  }

  return result;
}

unint64_t sub_1000F6C8C()
{
  result = qword_100448100;
  if (!qword_100448100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448100);
  }

  return result;
}

unint64_t sub_1000F6CE4()
{
  result = qword_100448108;
  if (!qword_100448108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448108);
  }

  return result;
}

uint64_t sub_1000F6D38()
{
  v0 = qword_100446B08;

  return v0;
}

unint64_t sub_1000F6D74()
{
  result = qword_100448110;
  if (!qword_100448110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448110);
  }

  return result;
}

uint64_t sub_1000F6DC8()
{
  v0 = sub_10000321C(&qword_100456558, &qword_100353BD0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456560, &qword_100353BD8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000F6878();
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

unint64_t sub_1000F6F90()
{
  result = qword_100448118;
  if (!qword_100448118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448118);
  }

  return result;
}

unint64_t sub_1000F6FE8()
{
  result = qword_100448120;
  if (!qword_100448120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448120);
  }

  return result;
}

unint64_t sub_1000F7040()
{
  result = qword_100448128;
  if (!qword_100448128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448128);
  }

  return result;
}

uint64_t sub_1000F7094()
{
  sub_1002D6940();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000F717C(uint64_t a1)
{
  v2 = sub_1000F6878();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000F71CC()
{
  result = qword_100448140;
  if (!qword_100448140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448140);
  }

  return result;
}

uint64_t sub_1000F7224(uint64_t a1)
{
  v2 = sub_1000F7040();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000F7274()
{
  result = qword_100448148;
  if (!qword_100448148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448148);
  }

  return result;
}

uint64_t sub_1000F730C()
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
  sub_10001EDF0(v7, qword_10051CAD8);
  sub_10001EDB8(v7, qword_10051CAD8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1000F747C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000F77EC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CAF0);
  sub_10001EDB8(v0, qword_10051CAF0);
  return sub_1002D88F0();
}

uint64_t sub_1000F7850()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CB08);
  v1 = sub_10001EDB8(v0, qword_10051CB08);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000F7910()
{
  result = swift_getKeyPath();
  qword_10051CB20 = result;
  return result;
}

uint64_t sub_1000F7938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456530, &qword_100353B90) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456538, &qword_100353B98);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000F7B18, 0, 0);
}

uint64_t sub_1000F7B18()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000F8D10();
  *v4 = v0;
  v4[1] = sub_1000F7BFC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E48, 0, &type metadata for AccessibilityAudioDescriptionsEntity, v5);
}

uint64_t sub_1000F7BFC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000F7CF8, 0, 0);
}

uint64_t sub_1000F7CF8()
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
  if (qword_10043A260 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CB20;
  *(v0 + 288) = qword_10051CB20;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456518, &qword_100456520, &qword_100353B78);
  *v7 = v0;
  v7[1] = sub_1000F7E5C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000F7E5C()
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
    v6 = sub_1000F7FCC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000F7FCC()
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
  sub_1000F7274();
  sub_1000F8F24();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000F8244()
{
  v0 = sub_10000321C(&qword_100456540, &qword_100353BA0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A260 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000F8F24();
  sub_10002B6E4(&qword_100456548, &qword_100456540, &qword_100353BA0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000F83B8(uint64_t *a1))(void *)
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

void (*sub_1000F842C(uint64_t *a1))(void *)
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

unint64_t sub_1000F84C8()
{
  result = qword_100448160;
  if (!qword_100448160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448160);
  }

  return result;
}

unint64_t sub_1000F8520()
{
  result = qword_100448168;
  if (!qword_100448168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448168);
  }

  return result;
}

uint64_t sub_1000F861C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000F7938(a1, v5, v4);
}

uint64_t sub_1000F86C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A0A70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000F8710()
{
  result = qword_100448170;
  if (!qword_100448170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448170);
  }

  return result;
}

unint64_t sub_1000F8768()
{
  result = qword_100448178;
  if (!qword_100448178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448178);
  }

  return result;
}

const __CFBoolean *sub_1000F87DC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
    if (MAAudibleMediaPrefCopyPreferDescriptiveVideo())
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  if (!MAAudibleMediaPrefCopyPreferDescriptiveVideo())
  {
    goto LABEL_6;
  }

LABEL_3:
  result = MAAudibleMediaPrefCopyPreferDescriptiveVideo();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  Value = CFBooleanGetValue(result);

  v4 = Value != 0;
LABEL_7:
  **(v0 + 16) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000F88CC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = &kCFBooleanFalse;
  if (*(v0 + 16))
  {
    v1 = &kCFBooleanTrue;
  }

  v2 = *v1;
  MAAudibleMediaPrefSetPreferDescriptiveVideo();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000F897C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000F8A0C, 0, 0);
}

uint64_t sub_1000F8A0C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448158, qword_1002FC828);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456518, &qword_100456520, &qword_100353B78);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000002BLL;
  v2[1] = 0x800000010037FB10;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000F8B58()
{
  result = qword_100448180;
  if (!qword_100448180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448180);
  }

  return result;
}

uint64_t sub_1000F8BAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000F917C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000F8C60()
{
  result = qword_100448188;
  if (!qword_100448188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448188);
  }

  return result;
}

unint64_t sub_1000F8CB8()
{
  result = qword_100448190;
  if (!qword_100448190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448190);
  }

  return result;
}

unint64_t sub_1000F8D10()
{
  result = qword_100448198;
  if (!qword_100448198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448198);
  }

  return result;
}

uint64_t sub_1000F8D64(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000F917C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000F8E18(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000F917C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000F8ECC()
{
  result = qword_1004481A0;
  if (!qword_1004481A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481A0);
  }

  return result;
}

unint64_t sub_1000F8F24()
{
  result = qword_1004481A8;
  if (!qword_1004481A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481A8);
  }

  return result;
}

uint64_t sub_1000F8FBC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000F8B58();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000F9074()
{
  result = qword_1004481C0;
  if (!qword_1004481C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481C0);
  }

  return result;
}

unint64_t sub_1000F90CC()
{
  result = qword_1004481C8;
  if (!qword_1004481C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481C8);
  }

  return result;
}

unint64_t sub_1000F9124()
{
  result = qword_1004481D0;
  if (!qword_1004481D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481D0);
  }

  return result;
}

unint64_t sub_1000F917C()
{
  result = qword_1004481D8;
  if (!qword_1004481D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481D8);
  }

  return result;
}

uint64_t sub_1000F91D0()
{
  v0 = qword_100446B18;

  return v0;
}

unint64_t sub_1000F920C()
{
  result = qword_1004481E0;
  if (!qword_1004481E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481E0);
  }

  return result;
}

uint64_t sub_1000F9260()
{
  v0 = sub_10000321C(&qword_100456508, &qword_100353B58);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456510, &qword_100353B60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000F8D10();
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

unint64_t sub_1000F9428()
{
  result = qword_1004481E8;
  if (!qword_1004481E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481E8);
  }

  return result;
}

unint64_t sub_1000F9480()
{
  result = qword_1004481F0;
  if (!qword_1004481F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481F0);
  }

  return result;
}

unint64_t sub_1000F94D8()
{
  result = qword_1004481F8;
  if (!qword_1004481F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004481F8);
  }

  return result;
}

uint64_t sub_1000F952C()
{
  sub_1002D68EC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000F9614(uint64_t a1)
{
  v2 = sub_1000F8D10();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000F9664()
{
  result = qword_100448210;
  if (!qword_100448210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448210);
  }

  return result;
}

uint64_t sub_1000F96BC(uint64_t a1)
{
  v2 = sub_1000F94D8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000F970C()
{
  result = qword_100448218;
  if (!qword_100448218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448218);
  }

  return result;
}

uint64_t sub_1000F97D0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000F9B58()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CB40);
  sub_10001EDB8(v0, qword_10051CB40);
  return sub_1002D88F0();
}

uint64_t sub_1000F9BBC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CB58);
  v1 = sub_10001EDB8(v0, qword_10051CB58);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000F9C7C()
{
  result = swift_getKeyPath();
  qword_10051CB70 = result;
  return result;
}

uint64_t sub_1000F9CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004564E0, &qword_100353B18) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004564E8, &qword_100353B20);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000F9E84, 0, 0);
}

uint64_t sub_1000F9E84()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000FB038();
  *v4 = v0;
  v4[1] = sub_1000F9F68;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E4C, 0, &type metadata for AccessibilityBackgroundSoundsEnabledEntity, v5);
}

uint64_t sub_1000F9F68()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000FA064, 0, 0);
}

uint64_t sub_1000FA064()
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
  if (qword_10043A280 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CB70;
  *(v0 + 288) = qword_10051CB70;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004564C8, &qword_1004564D0, &qword_100353B00);
  *v7 = v0;
  v7[1] = sub_1000FA1C8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}