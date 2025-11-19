unint64_t sub_10025BCA0()
{
  result = qword_100450350;
  if (!qword_100450350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450350);
  }

  return result;
}

uint64_t sub_10025BCF8(uint64_t a1)
{
  v2 = sub_10025BB14();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10025BD48()
{
  result = qword_100450358;
  if (!qword_100450358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450358);
  }

  return result;
}

uint64_t sub_10025BDF8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10025C194()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FD58);
  v1 = sub_10001EDB8(v0, qword_10051FD58);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10025C254()
{
  result = swift_getKeyPath();
  qword_10051FD70 = result;
  return result;
}

uint64_t sub_10025C27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453208, &qword_10034EF18) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453210, &qword_10034EF20);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10025C45C, 0, 0);
}

uint64_t sub_10025C45C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10025D594();
  *v4 = v0;
  v4[1] = sub_10025C540;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70CC, 0, &type metadata for AccessibilityZoomEnabledEntity, v5);
}

uint64_t sub_10025C540()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10025C63C, 0, 0);
}

uint64_t sub_10025C63C()
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
  if (qword_10043B680 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FD70;
  *(v0 + 288) = qword_10051FD70;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004531F0, &qword_1004531F8, &qword_10034EF00);
  *v7 = v0;
  v7[1] = sub_10025C7A0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10025C7A0()
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
    v6 = sub_10025C910;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10025C910()
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
  sub_10025BD48();
  sub_10025D7A8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10025CB88()
{
  v0 = sub_10000321C(&qword_100453218, &qword_10034EF28);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B680 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10025D7A8();
  sub_10002B6E4(&qword_100453220, &qword_100453218, &qword_10034EF28);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10025CCFC(uint64_t *a1))(void *)
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

void (*sub_10025CD70(uint64_t *a1))(void *)
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

unint64_t sub_10025CE0C()
{
  result = qword_100450370;
  if (!qword_100450370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450370);
  }

  return result;
}

unint64_t sub_10025CE64()
{
  result = qword_100450378;
  if (!qword_100450378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450378);
  }

  return result;
}

uint64_t sub_10025CF60(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10025C27C(a1, v5, v4);
}

uint64_t sub_10025D00C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CBF80();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10025D054()
{
  result = qword_100450380;
  if (!qword_100450380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450380);
  }

  return result;
}

unint64_t sub_10025D0AC()
{
  result = qword_100450388;
  if (!qword_100450388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450388);
  }

  return result;
}

uint64_t sub_10025D120()
{
  v1 = *(v0 + 16);
  *v1 = _AXSZoomTouchEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10025D1B4()
{
  v1 = *(v0 + 16);
  _AXSZoomTouchSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10025D218(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10025D2A8, 0, 0);
}

uint64_t sub_10025D2A8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450368, qword_10033B160);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004531F0, &qword_1004531F8, &qword_10034EF00);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001BLL;
  v2[1] = 0x8000000100375550;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10025D3DC()
{
  result = qword_100450390;
  if (!qword_100450390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450390);
  }

  return result;
}

uint64_t sub_10025D430(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10025DA00();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10025D4E4()
{
  result = qword_100450398;
  if (!qword_100450398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450398);
  }

  return result;
}

unint64_t sub_10025D53C()
{
  result = qword_1004503A0;
  if (!qword_1004503A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004503A0);
  }

  return result;
}

unint64_t sub_10025D594()
{
  result = qword_1004503A8;
  if (!qword_1004503A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004503A8);
  }

  return result;
}

uint64_t sub_10025D5E8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10025DA00();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10025D69C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10025DA00();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10025D750()
{
  result = qword_1004503B0;
  if (!qword_1004503B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004503B0);
  }

  return result;
}

unint64_t sub_10025D7A8()
{
  result = qword_1004503B8;
  if (!qword_1004503B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004503B8);
  }

  return result;
}

uint64_t sub_10025D840(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10025D3DC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10025D8F8()
{
  result = qword_1004503D0;
  if (!qword_1004503D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004503D0);
  }

  return result;
}

unint64_t sub_10025D950()
{
  result = qword_1004503D8;
  if (!qword_1004503D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004503D8);
  }

  return result;
}

unint64_t sub_10025D9A8()
{
  result = qword_1004503E0;
  if (!qword_1004503E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004503E0);
  }

  return result;
}

unint64_t sub_10025DA00()
{
  result = qword_1004503E8;
  if (!qword_1004503E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004503E8);
  }

  return result;
}

uint64_t sub_10025DA54()
{
  v0 = qword_100447528;

  return v0;
}

unint64_t sub_10025DA90()
{
  result = qword_1004503F0;
  if (!qword_1004503F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004503F0);
  }

  return result;
}

uint64_t sub_10025DAE4()
{
  v0 = sub_10000321C(&qword_1004531E0, &qword_10034EEE0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004531E8, &qword_10034EEE8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10025D594();
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

unint64_t sub_10025DCAC()
{
  result = qword_1004503F8;
  if (!qword_1004503F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004503F8);
  }

  return result;
}

unint64_t sub_10025DD04()
{
  result = qword_100450400;
  if (!qword_100450400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450400);
  }

  return result;
}

unint64_t sub_10025DD5C()
{
  result = qword_100450408;
  if (!qword_100450408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450408);
  }

  return result;
}

uint64_t sub_10025DDB0()
{
  sub_1002D31D0();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10025DE98(uint64_t a1)
{
  v2 = sub_10025D594();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10025DEE8()
{
  result = qword_100450420;
  if (!qword_100450420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450420);
  }

  return result;
}

uint64_t sub_10025DF40(uint64_t a1)
{
  v2 = sub_10025DD5C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10025DF90()
{
  result = qword_100450428;
  if (!qword_100450428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450428);
  }

  return result;
}

uint64_t sub_10025E050@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10025E3C8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FD90);
  sub_10001EDB8(v0, qword_10051FD90);
  return sub_1002D88F0();
}

uint64_t sub_10025E42C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FDA8);
  v1 = sub_10001EDB8(v0, qword_10051FDA8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10025E4EC()
{
  result = swift_getKeyPath();
  qword_10051FDC0 = result;
  return result;
}

uint64_t sub_10025E514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004531B8, &qword_10034EEA0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004531C0, &qword_10034EEA8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10025E6F4, 0, 0);
}

uint64_t sub_10025E6F4()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10025F8A4();
  *v4 = v0;
  v4[1] = sub_10025E7D8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70D0, 0, &type metadata for AccessibilityZoomFollowFocusEnabledEntity, v5);
}

uint64_t sub_10025E7D8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10025E8D4, 0, 0);
}

uint64_t sub_10025E8D4()
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
  if (qword_10043B6A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FDC0;
  *(v0 + 288) = qword_10051FDC0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004531A0, &qword_1004531A8, &qword_10034EE88);
  *v7 = v0;
  v7[1] = sub_10025EA38;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10025EA38()
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
    v6 = sub_10025EBA8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10025EBA8()
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
  sub_10025DF90();
  sub_10025FAB8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10025EE20()
{
  v0 = sub_10000321C(&qword_1004531C8, &qword_10034EEB0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B6A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10025FAB8();
  sub_10002B6E4(&qword_1004531D0, &qword_1004531C8, &qword_10034EEB0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10025EF94(uint64_t *a1))(void *)
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

void (*sub_10025F008(uint64_t *a1))(void *)
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

unint64_t sub_10025F0A4()
{
  result = qword_100450440;
  if (!qword_100450440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450440);
  }

  return result;
}

unint64_t sub_10025F0FC()
{
  result = qword_100450448;
  if (!qword_100450448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450448);
  }

  return result;
}

uint64_t sub_10025F1F8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10025E514(a1, v5, v4);
}

uint64_t sub_10025F2A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CC3EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10025F2EC()
{
  result = qword_100450450;
  if (!qword_100450450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450450);
  }

  return result;
}

unint64_t sub_10025F344()
{
  result = qword_100450458;
  if (!qword_100450458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450458);
  }

  return result;
}

uint64_t sub_10025F3B8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomShouldFollowFocus];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10025F480()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomShouldFollowFocus:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10025F518(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10025F5A8, 0, 0);
}

uint64_t sub_10025F5A8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450438, qword_10033B798);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004531A0, &qword_1004531A8, &qword_10034EE88);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000020;
  v2[1] = 0x800000010035F290;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10025F6EC()
{
  result = qword_100450460;
  if (!qword_100450460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450460);
  }

  return result;
}

uint64_t sub_10025F740(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10025FD10();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10025F7F4()
{
  result = qword_100450468;
  if (!qword_100450468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450468);
  }

  return result;
}

unint64_t sub_10025F84C()
{
  result = qword_100450470;
  if (!qword_100450470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450470);
  }

  return result;
}

unint64_t sub_10025F8A4()
{
  result = qword_100450478;
  if (!qword_100450478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450478);
  }

  return result;
}

uint64_t sub_10025F8F8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10025FD10();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10025F9AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10025FD10();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10025FA60()
{
  result = qword_100450480;
  if (!qword_100450480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450480);
  }

  return result;
}

unint64_t sub_10025FAB8()
{
  result = qword_100450488;
  if (!qword_100450488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450488);
  }

  return result;
}

uint64_t sub_10025FB50(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10025F6EC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10025FC08()
{
  result = qword_1004504A0;
  if (!qword_1004504A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004504A0);
  }

  return result;
}

unint64_t sub_10025FC60()
{
  result = qword_1004504A8;
  if (!qword_1004504A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004504A8);
  }

  return result;
}

unint64_t sub_10025FCB8()
{
  result = qword_1004504B0;
  if (!qword_1004504B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004504B0);
  }

  return result;
}

unint64_t sub_10025FD10()
{
  result = qword_1004504B8;
  if (!qword_1004504B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004504B8);
  }

  return result;
}

uint64_t sub_10025FD64()
{
  v0 = qword_100447538;

  return v0;
}

unint64_t sub_10025FDA0()
{
  result = qword_1004504C0;
  if (!qword_1004504C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004504C0);
  }

  return result;
}

uint64_t sub_10025FDF4()
{
  v0 = sub_10000321C(&qword_100453190, &qword_10034EE68);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453198, &qword_10034EE70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10025F8A4();
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

unint64_t sub_10025FFBC()
{
  result = qword_1004504C8;
  if (!qword_1004504C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004504C8);
  }

  return result;
}

unint64_t sub_100260014()
{
  result = qword_1004504D0;
  if (!qword_1004504D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004504D0);
  }

  return result;
}

unint64_t sub_10026006C()
{
  result = qword_1004504D8;
  if (!qword_1004504D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004504D8);
  }

  return result;
}

uint64_t sub_1002600C0()
{
  sub_1002D317C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002601A8(uint64_t a1)
{
  v2 = sub_10025F8A4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002601F8()
{
  result = qword_1004504F0;
  if (!qword_1004504F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004504F0);
  }

  return result;
}

uint64_t sub_100260250(uint64_t a1)
{
  v2 = sub_10026006C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002602A0()
{
  result = qword_1004504F8;
  if (!qword_1004504F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004504F8);
  }

  return result;
}

uint64_t sub_100260360@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1002606D8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FDE0);
  sub_10001EDB8(v0, qword_10051FDE0);
  return sub_1002D88F0();
}

uint64_t sub_10026073C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FDF8);
  v1 = sub_10001EDB8(v0, qword_10051FDF8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1002607FC()
{
  result = swift_getKeyPath();
  qword_10051FE10 = result;
  return result;
}

uint64_t sub_100260824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453168, &qword_10034EE28) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453170, &qword_10034EE30);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100260A04, 0, 0);
}

uint64_t sub_100260A04()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100261BB4();
  *v4 = v0;
  v4[1] = sub_100260AE8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70D4, 0, &type metadata for AccessibilityZoomSmartTypingEnabledEntity, v5);
}

uint64_t sub_100260AE8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100260BE4, 0, 0);
}

uint64_t sub_100260BE4()
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
  if (qword_10043B6C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FE10;
  *(v0 + 288) = qword_10051FE10;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453150, &qword_100453158, &qword_10034EE10);
  *v7 = v0;
  v7[1] = sub_100260D48;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100260D48()
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
    v6 = sub_100260EB8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100260EB8()
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
  sub_1002602A0();
  sub_100261DC8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100261130()
{
  v0 = sub_10000321C(&qword_100453178, &qword_10034EE38);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B6C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100261DC8();
  sub_10002B6E4(&qword_100453180, &qword_100453178, &qword_10034EE38);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1002612A4(uint64_t *a1))(void *)
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

void (*sub_100261318(uint64_t *a1))(void *)
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

unint64_t sub_1002613B4()
{
  result = qword_100450510;
  if (!qword_100450510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450510);
  }

  return result;
}

unint64_t sub_10026140C()
{
  result = qword_100450518;
  if (!qword_100450518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450518);
  }

  return result;
}

uint64_t sub_100261508(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100260824(a1, v5, v4);
}

uint64_t sub_1002615B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CC854();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1002615FC()
{
  result = qword_100450520;
  if (!qword_100450520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450520);
  }

  return result;
}

unint64_t sub_100261654()
{
  result = qword_100450528;
  if (!qword_100450528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450528);
  }

  return result;
}

uint64_t sub_1002616C8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomAlwaysUseWindowedZoomForTyping];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100261790()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomAlwaysUseWindowedZoomForTyping:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100261828(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002618B8, 0, 0);
}

uint64_t sub_1002618B8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450508, qword_10033BDD0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453150, &qword_100453158, &qword_10034EE10);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000002BLL;
  v2[1] = 0x800000010035BAA0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1002619FC()
{
  result = qword_100450530;
  if (!qword_100450530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450530);
  }

  return result;
}

uint64_t sub_100261A50(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100262020();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100261B04()
{
  result = qword_100450538;
  if (!qword_100450538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450538);
  }

  return result;
}

unint64_t sub_100261B5C()
{
  result = qword_100450540;
  if (!qword_100450540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450540);
  }

  return result;
}

unint64_t sub_100261BB4()
{
  result = qword_100450548;
  if (!qword_100450548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450548);
  }

  return result;
}

uint64_t sub_100261C08(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100262020();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100261CBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100262020();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100261D70()
{
  result = qword_100450550;
  if (!qword_100450550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450550);
  }

  return result;
}

unint64_t sub_100261DC8()
{
  result = qword_100450558;
  if (!qword_100450558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450558);
  }

  return result;
}

uint64_t sub_100261E60(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002619FC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100261F18()
{
  result = qword_100450570;
  if (!qword_100450570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450570);
  }

  return result;
}

unint64_t sub_100261F70()
{
  result = qword_100450578;
  if (!qword_100450578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450578);
  }

  return result;
}

unint64_t sub_100261FC8()
{
  result = qword_100450580;
  if (!qword_100450580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450580);
  }

  return result;
}

unint64_t sub_100262020()
{
  result = qword_100450588;
  if (!qword_100450588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450588);
  }

  return result;
}

uint64_t sub_100262074()
{
  v0 = qword_100447548;

  return v0;
}

unint64_t sub_1002620B0()
{
  result = qword_100450590;
  if (!qword_100450590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450590);
  }

  return result;
}

uint64_t sub_100262104()
{
  v0 = sub_10000321C(&qword_100453140, &qword_10034EDF0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453148, &qword_10034EDF8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100261BB4();
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

unint64_t sub_1002622CC()
{
  result = qword_100450598;
  if (!qword_100450598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450598);
  }

  return result;
}

unint64_t sub_100262324()
{
  result = qword_1004505A0;
  if (!qword_1004505A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004505A0);
  }

  return result;
}

unint64_t sub_10026237C()
{
  result = qword_1004505A8;
  if (!qword_1004505A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004505A8);
  }

  return result;
}

uint64_t sub_1002623D0()
{
  sub_1002D3128();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002624B8(uint64_t a1)
{
  v2 = sub_100261BB4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100262508()
{
  result = qword_1004505C0;
  if (!qword_1004505C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004505C0);
  }

  return result;
}

uint64_t sub_100262560(uint64_t a1)
{
  v2 = sub_10026237C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002625B0()
{
  result = qword_1004505C8;
  if (!qword_1004505C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004505C8);
  }

  return result;
}

uint64_t sub_100262648()
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
  sub_10001EDF0(v7, qword_10051FE18);
  sub_10001EDB8(v7, qword_10051FE18);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1002627B8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100262B28()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FE30);
  sub_10001EDB8(v0, qword_10051FE30);
  return sub_1002D88F0();
}

uint64_t sub_100262B8C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FE48);
  v1 = sub_10001EDB8(v0, qword_10051FE48);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100262C4C()
{
  result = swift_getKeyPath();
  qword_10051FE60 = result;
  return result;
}

uint64_t sub_100262C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453118, &qword_10034EDB0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453120, &qword_10034EDB8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100262E54, 0, 0);
}

uint64_t sub_100262E54()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10026400C();
  *v4 = v0;
  v4[1] = sub_100262F38;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70D8, 0, &type metadata for AccessibilityZoomShowWhileMirroringEnabledEntity, v5);
}

uint64_t sub_100262F38()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100263034, 0, 0);
}

uint64_t sub_100263034()
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
  if (qword_10043B6E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FE60;
  *(v0 + 288) = qword_10051FE60;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453100, &qword_100453108, &qword_10034ED98);
  *v7 = v0;
  v7[1] = sub_100263198;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100263198()
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
    v6 = sub_100263308;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100263308()
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
  sub_1002625B0();
  sub_100264220();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100263580()
{
  v0 = sub_10000321C(&qword_100453128, &qword_10034EDC0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B6E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100264220();
  sub_10002B6E4(&qword_100453130, &qword_100453128, &qword_10034EDC0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1002636F4(uint64_t *a1))(void *)
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

void (*sub_100263768(uint64_t *a1))(void *)
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

unint64_t sub_100263804()
{
  result = qword_1004505E0;
  if (!qword_1004505E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004505E0);
  }

  return result;
}

unint64_t sub_10026385C()
{
  result = qword_1004505E8;
  if (!qword_1004505E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004505E8);
  }

  return result;
}

uint64_t sub_100263958(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100262C74(a1, v5, v4);
}

uint64_t sub_100263A04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CCCBC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100263A4C()
{
  result = qword_1004505F0;
  if (!qword_1004505F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004505F0);
  }

  return result;
}

unint64_t sub_100263AA4()
{
  result = qword_1004505F8;
  if (!qword_1004505F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004505F8);
  }

  return result;
}

uint64_t sub_100263B18()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomShowWhileMirroring];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100263BE0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomShowWhileMirroring:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100263C78(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100263D08, 0, 0);
}

uint64_t sub_100263D08()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004505D8, qword_10033C408);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453100, &qword_100453108, &qword_10034ED98);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000021;
  v2[1] = 0x800000010035BC00;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100263E54()
{
  result = qword_100450600;
  if (!qword_100450600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450600);
  }

  return result;
}

uint64_t sub_100263EA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100264478();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100263F5C()
{
  result = qword_100450608;
  if (!qword_100450608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450608);
  }

  return result;
}

unint64_t sub_100263FB4()
{
  result = qword_100450610;
  if (!qword_100450610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450610);
  }

  return result;
}

unint64_t sub_10026400C()
{
  result = qword_100450618;
  if (!qword_100450618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450618);
  }

  return result;
}

uint64_t sub_100264060(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100264478();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100264114(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100264478();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1002641C8()
{
  result = qword_100450620;
  if (!qword_100450620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450620);
  }

  return result;
}

unint64_t sub_100264220()
{
  result = qword_100450628;
  if (!qword_100450628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450628);
  }

  return result;
}

uint64_t sub_1002642B8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100263E54();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100264370()
{
  result = qword_100450640;
  if (!qword_100450640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450640);
  }

  return result;
}

unint64_t sub_1002643C8()
{
  result = qword_100450648;
  if (!qword_100450648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450648);
  }

  return result;
}

unint64_t sub_100264420()
{
  result = qword_100450650;
  if (!qword_100450650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450650);
  }

  return result;
}

unint64_t sub_100264478()
{
  result = qword_100450658;
  if (!qword_100450658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450658);
  }

  return result;
}

uint64_t sub_1002644CC()
{
  v0 = qword_100447558;

  return v0;
}

unint64_t sub_100264508()
{
  result = qword_100450660;
  if (!qword_100450660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450660);
  }

  return result;
}

uint64_t sub_10026455C()
{
  v0 = sub_10000321C(&qword_1004530F0, &qword_10034ED78);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004530F8, &qword_10034ED80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10026400C();
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

unint64_t sub_100264724()
{
  result = qword_100450668;
  if (!qword_100450668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450668);
  }

  return result;
}

unint64_t sub_10026477C()
{
  result = qword_100450670;
  if (!qword_100450670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450670);
  }

  return result;
}

unint64_t sub_1002647D4()
{
  result = qword_100450678;
  if (!qword_100450678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450678);
  }

  return result;
}

uint64_t sub_100264828()
{
  sub_1002D30D4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100264910(uint64_t a1)
{
  v2 = sub_10026400C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100264960()
{
  result = qword_100450690;
  if (!qword_100450690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450690);
  }

  return result;
}

uint64_t sub_1002649B8(uint64_t a1)
{
  v2 = sub_1002647D4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100264A08()
{
  result = qword_100450698;
  if (!qword_100450698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450698);
  }

  return result;
}

uint64_t sub_100264AA0()
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
  sub_10001EDF0(v7, qword_10051FE68);
  sub_10001EDB8(v7, qword_10051FE68);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100264C10@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100264F80()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FE80);
  sub_10001EDB8(v0, qword_10051FE80);
  return sub_1002D88F0();
}

uint64_t sub_100264FE4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FE98);
  v1 = sub_10001EDB8(v0, qword_10051FE98);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1002650A4()
{
  result = swift_getKeyPath();
  qword_10051FEB0 = result;
  return result;
}

uint64_t sub_1002650CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004530C8, &qword_10034ED38) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004530D0, &qword_10034ED40);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002652AC, 0, 0);
}

uint64_t sub_1002652AC()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100266464();
  *v4 = v0;
  v4[1] = sub_100265390;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70DC, 0, &type metadata for AccessibilityZoomKeyboardShortcutsEnabledEntity, v5);
}

uint64_t sub_100265390()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10026548C, 0, 0);
}

uint64_t sub_10026548C()
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
  if (qword_10043B700 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FEB0;
  *(v0 + 288) = qword_10051FEB0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004530B0, &qword_1004530B8, &qword_10034ED20);
  *v7 = v0;
  v7[1] = sub_1002655F0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1002655F0()
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
    v6 = sub_100265760;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100265760()
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
  sub_100264A08();
  sub_100266678();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002659D8()
{
  v0 = sub_10000321C(&qword_1004530D8, &qword_10034ED48);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B700 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100266678();
  sub_10002B6E4(&qword_1004530E0, &qword_1004530D8, &qword_10034ED48);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100265B4C(uint64_t *a1))(void *)
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

void (*sub_100265BC0(uint64_t *a1))(void *)
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

unint64_t sub_100265C5C()
{
  result = qword_1004506B0;
  if (!qword_1004506B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004506B0);
  }

  return result;
}

unint64_t sub_100265CB4()
{
  result = qword_1004506B8;
  if (!qword_1004506B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004506B8);
  }

  return result;
}

uint64_t sub_100265DB0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1002650CC(a1, v5, v4);
}

uint64_t sub_100265E5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CD124();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100265EA4()
{
  result = qword_1004506C0;
  if (!qword_1004506C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004506C0);
  }

  return result;
}

unint64_t sub_100265EFC()
{
  result = qword_1004506C8;
  if (!qword_1004506C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004506C8);
  }

  return result;
}

uint64_t sub_100265F70()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomKeyboardShortcutsEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100266038()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomKeyboardShortcutsEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002660D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100266160, 0, 0);
}

uint64_t sub_100266160()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004506A8, qword_10033CA40);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004530B0, &qword_1004530B8, &qword_10034ED20);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003CLL;
  v2[1] = 0x800000010035E290;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1002662AC()
{
  result = qword_1004506D0;
  if (!qword_1004506D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004506D0);
  }

  return result;
}

uint64_t sub_100266300(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002668D0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1002663B4()
{
  result = qword_1004506D8;
  if (!qword_1004506D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004506D8);
  }

  return result;
}

unint64_t sub_10026640C()
{
  result = qword_1004506E0;
  if (!qword_1004506E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004506E0);
  }

  return result;
}

unint64_t sub_100266464()
{
  result = qword_1004506E8;
  if (!qword_1004506E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004506E8);
  }

  return result;
}

uint64_t sub_1002664B8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002668D0();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10026656C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002668D0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100266620()
{
  result = qword_1004506F0;
  if (!qword_1004506F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004506F0);
  }

  return result;
}

unint64_t sub_100266678()
{
  result = qword_1004506F8;
  if (!qword_1004506F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004506F8);
  }

  return result;
}

uint64_t sub_100266710(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002662AC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1002667C8()
{
  result = qword_100450710;
  if (!qword_100450710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450710);
  }

  return result;
}

unint64_t sub_100266820()
{
  result = qword_100450718;
  if (!qword_100450718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450718);
  }

  return result;
}

unint64_t sub_100266878()
{
  result = qword_100450720;
  if (!qword_100450720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450720);
  }

  return result;
}

unint64_t sub_1002668D0()
{
  result = qword_100450728;
  if (!qword_100450728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450728);
  }

  return result;
}

uint64_t sub_100266924()
{
  v0 = qword_100447568;

  return v0;
}

unint64_t sub_100266960()
{
  result = qword_100450730;
  if (!qword_100450730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450730);
  }

  return result;
}

uint64_t sub_1002669B4()
{
  v0 = sub_10000321C(&qword_1004530A0, &qword_10034ED00);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004530A8, &qword_10034ED08);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100266464();
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

unint64_t sub_100266B7C()
{
  result = qword_100450738;
  if (!qword_100450738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450738);
  }

  return result;
}

unint64_t sub_100266BD4()
{
  result = qword_100450740;
  if (!qword_100450740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450740);
  }

  return result;
}

unint64_t sub_100266C2C()
{
  result = qword_100450748;
  if (!qword_100450748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450748);
  }

  return result;
}

uint64_t sub_100266C80()
{
  sub_1002D3080();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100266D68(uint64_t a1)
{
  v2 = sub_100266464();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100266DB8()
{
  result = qword_100450760;
  if (!qword_100450760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450760);
  }

  return result;
}

uint64_t sub_100266E10(uint64_t a1)
{
  v2 = sub_100266C2C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100266E60()
{
  result = qword_100450768;
  if (!qword_100450768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450768);
  }

  return result;
}

uint64_t sub_100266EF8()
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
  sub_10001EDF0(v7, qword_10051FEB8);
  sub_10001EDB8(v7, qword_10051FEB8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100267068@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1002673D8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FED0);
  sub_10001EDB8(v0, qword_10051FED0);
  return sub_1002D88F0();
}

uint64_t sub_10026743C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FEE8);
  v1 = sub_10001EDB8(v0, qword_10051FEE8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1002674FC()
{
  result = swift_getKeyPath();
  qword_10051FF00 = result;
  return result;
}

uint64_t sub_100267524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453078, &qword_10034ECC0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453080, &qword_10034ECC8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100267704, 0, 0);
}

uint64_t sub_100267704()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1002688BC();
  *v4 = v0;
  v4[1] = sub_1002677E8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70E0, 0, &type metadata for AccessibilityZoomAdjustZoomLevelKBShortcutEnabledEntity, v5);
}

uint64_t sub_1002677E8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1002678E4, 0, 0);
}

uint64_t sub_1002678E4()
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
  if (qword_10043B720 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FF00;
  *(v0 + 288) = qword_10051FF00;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453060, &qword_100453068, &qword_10034ECA8);
  *v7 = v0;
  v7[1] = sub_100267A48;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100267A48()
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
    v6 = sub_100267BB8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100267BB8()
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
  sub_100266E60();
  sub_100268AD0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100267E30()
{
  v0 = sub_10000321C(&qword_100453088, &qword_10034ECD0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B720 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100268AD0();
  sub_10002B6E4(&qword_100453090, &qword_100453088, &qword_10034ECD0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100267FA4(uint64_t *a1))(void *)
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

void (*sub_100268018(uint64_t *a1))(void *)
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

unint64_t sub_1002680B4()
{
  result = qword_100450780;
  if (!qword_100450780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450780);
  }

  return result;
}

unint64_t sub_10026810C()
{
  result = qword_100450788;
  if (!qword_100450788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450788);
  }

  return result;
}

uint64_t sub_100268208(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100267524(a1, v5, v4);
}

uint64_t sub_1002682B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CD58C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1002682FC()
{
  result = qword_100450790;
  if (!qword_100450790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450790);
  }

  return result;
}

unint64_t sub_100268354()
{
  result = qword_100450798;
  if (!qword_100450798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450798);
  }

  return result;
}

uint64_t sub_1002683C8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomAdjustZoomLevelKbShortcutEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100268490()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomAdjustZoomLevelKbShortcutEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100268528(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002685B8, 0, 0);
}

uint64_t sub_1002685B8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450778, qword_10033D078);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453060, &qword_100453068, &qword_10034ECA8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000044;
  v2[1] = 0x8000000100361F20;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100268704()
{
  result = qword_1004507A0;
  if (!qword_1004507A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004507A0);
  }

  return result;
}

uint64_t sub_100268758(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100268D28();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10026880C()
{
  result = qword_1004507A8;
  if (!qword_1004507A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004507A8);
  }

  return result;
}

unint64_t sub_100268864()
{
  result = qword_1004507B0;
  if (!qword_1004507B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004507B0);
  }

  return result;
}

unint64_t sub_1002688BC()
{
  result = qword_1004507B8;
  if (!qword_1004507B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004507B8);
  }

  return result;
}

uint64_t sub_100268910(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100268D28();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1002689C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100268D28();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100268A78()
{
  result = qword_1004507C0;
  if (!qword_1004507C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004507C0);
  }

  return result;
}

unint64_t sub_100268AD0()
{
  result = qword_1004507C8;
  if (!qword_1004507C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004507C8);
  }

  return result;
}

uint64_t sub_100268B68(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100268704();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100268C20()
{
  result = qword_1004507E0;
  if (!qword_1004507E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004507E0);
  }

  return result;
}

unint64_t sub_100268C78()
{
  result = qword_1004507E8;
  if (!qword_1004507E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004507E8);
  }

  return result;
}

unint64_t sub_100268CD0()
{
  result = qword_1004507F0;
  if (!qword_1004507F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004507F0);
  }

  return result;
}

unint64_t sub_100268D28()
{
  result = qword_1004507F8;
  if (!qword_1004507F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004507F8);
  }

  return result;
}

uint64_t sub_100268D7C()
{
  v0 = qword_100447578;

  return v0;
}

unint64_t sub_100268DB8()
{
  result = qword_100450800;
  if (!qword_100450800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450800);
  }

  return result;
}

uint64_t sub_100268E0C()
{
  v0 = sub_10000321C(&qword_100453050, &qword_10034EC88);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453058, &qword_10034EC90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1002688BC();
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

unint64_t sub_100268FD4()
{
  result = qword_100450808;
  if (!qword_100450808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450808);
  }

  return result;
}

unint64_t sub_10026902C()
{
  result = qword_100450810;
  if (!qword_100450810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450810);
  }

  return result;
}

unint64_t sub_100269084()
{
  result = qword_100450818;
  if (!qword_100450818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450818);
  }

  return result;
}

uint64_t sub_1002690D8()
{
  sub_1002D302C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002691C0(uint64_t a1)
{
  v2 = sub_1002688BC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100269210()
{
  result = qword_100450830;
  if (!qword_100450830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450830);
  }

  return result;
}

uint64_t sub_100269268(uint64_t a1)
{
  v2 = sub_100269084();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002692B8()
{
  result = qword_100450838;
  if (!qword_100450838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450838);
  }

  return result;
}

uint64_t sub_100269378@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1002696F0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FF20);
  sub_10001EDB8(v0, qword_10051FF20);
  return sub_1002D88F0();
}

uint64_t sub_100269754()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FF38);
  v1 = sub_10001EDB8(v0, qword_10051FF38);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100269814()
{
  result = swift_getKeyPath();
  qword_10051FF50 = result;
  return result;
}

uint64_t sub_10026983C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453028, &qword_10034EC48) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453030, &qword_10034EC50);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100269A1C, 0, 0);
}

uint64_t sub_100269A1C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10026ABCC();
  *v4 = v0;
  v4[1] = sub_100269B00;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70E4, 0, &type metadata for AccessibilityZoomToggleZoomKBShortcutEnabledEntity, v5);
}

uint64_t sub_100269B00()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100269BFC, 0, 0);
}

uint64_t sub_100269BFC()
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
  if (qword_10043B740 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FF50;
  *(v0 + 288) = qword_10051FF50;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453010, &qword_100453018, &qword_10034EC30);
  *v7 = v0;
  v7[1] = sub_100269D60;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100269D60()
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
    v6 = sub_100269ED0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100269ED0()
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
  sub_1002692B8();
  sub_10026ADE0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10026A148()
{
  v0 = sub_10000321C(&qword_100453038, &qword_10034EC58);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B740 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10026ADE0();
  sub_10002B6E4(&qword_100453040, &qword_100453038, &qword_10034EC58);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10026A2BC(uint64_t *a1))(void *)
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

void (*sub_10026A330(uint64_t *a1))(void *)
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

unint64_t sub_10026A3CC()
{
  result = qword_100450850;
  if (!qword_100450850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450850);
  }

  return result;
}

unint64_t sub_10026A424()
{
  result = qword_100450858;
  if (!qword_100450858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450858);
  }

  return result;
}

uint64_t sub_10026A520(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10026983C(a1, v5, v4);
}

uint64_t sub_10026A5CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CD9F4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10026A614()
{
  result = qword_100450860;
  if (!qword_100450860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450860);
  }

  return result;
}

unint64_t sub_10026A66C()
{
  result = qword_100450868;
  if (!qword_100450868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450868);
  }

  return result;
}

uint64_t sub_10026A6E0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomToggleZoomKbShortcutEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10026A7A8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomToggleZoomKbShortcutEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10026A840(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10026A8D0, 0, 0);
}

uint64_t sub_10026A8D0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450848, qword_10033D6B0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453010, &qword_100453018, &qword_10034EC30);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003FLL;
  v2[1] = 0x800000010035AA80;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10026AA14()
{
  result = qword_100450870;
  if (!qword_100450870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450870);
  }

  return result;
}

uint64_t sub_10026AA68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10026B038();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10026AB1C()
{
  result = qword_100450878;
  if (!qword_100450878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450878);
  }

  return result;
}

unint64_t sub_10026AB74()
{
  result = qword_100450880;
  if (!qword_100450880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450880);
  }

  return result;
}

unint64_t sub_10026ABCC()
{
  result = qword_100450888;
  if (!qword_100450888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450888);
  }

  return result;
}

uint64_t sub_10026AC20(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10026B038();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10026ACD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10026B038();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10026AD88()
{
  result = qword_100450890;
  if (!qword_100450890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450890);
  }

  return result;
}

unint64_t sub_10026ADE0()
{
  result = qword_100450898;
  if (!qword_100450898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450898);
  }

  return result;
}

uint64_t sub_10026AE78(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10026AA14();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10026AF30()
{
  result = qword_1004508B0;
  if (!qword_1004508B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004508B0);
  }

  return result;
}

unint64_t sub_10026AF88()
{
  result = qword_1004508B8;
  if (!qword_1004508B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004508B8);
  }

  return result;
}

unint64_t sub_10026AFE0()
{
  result = qword_1004508C0;
  if (!qword_1004508C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004508C0);
  }

  return result;
}

unint64_t sub_10026B038()
{
  result = qword_1004508C8;
  if (!qword_1004508C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004508C8);
  }

  return result;
}

uint64_t sub_10026B08C()
{
  v0 = qword_100447588;

  return v0;
}

unint64_t sub_10026B0C8()
{
  result = qword_1004508D0;
  if (!qword_1004508D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004508D0);
  }

  return result;
}

uint64_t sub_10026B11C()
{
  v0 = sub_10000321C(&qword_100453000, &qword_10034EC10);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453008, &qword_10034EC18);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10026ABCC();
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

unint64_t sub_10026B2E4()
{
  result = qword_1004508D8;
  if (!qword_1004508D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004508D8);
  }

  return result;
}

unint64_t sub_10026B33C()
{
  result = qword_1004508E0;
  if (!qword_1004508E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004508E0);
  }

  return result;
}

unint64_t sub_10026B394()
{
  result = qword_1004508E8;
  if (!qword_1004508E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004508E8);
  }

  return result;
}

uint64_t sub_10026B3E8()
{
  sub_1002D2FD8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10026B4D0(uint64_t a1)
{
  v2 = sub_10026ABCC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10026B520()
{
  result = qword_100450900;
  if (!qword_100450900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450900);
  }

  return result;
}

uint64_t sub_10026B578(uint64_t a1)
{
  v2 = sub_10026B394();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10026B5C8()
{
  result = qword_100450908;
  if (!qword_100450908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450908);
  }

  return result;
}

uint64_t sub_10026B660()
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
  sub_10001EDF0(v7, qword_10051FF58);
  sub_10001EDB8(v7, qword_10051FF58);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10026B7D0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10026BB40()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FF70);
  sub_10001EDB8(v0, qword_10051FF70);
  return sub_1002D88F0();
}

uint64_t sub_10026BBA4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FF88);
  v1 = sub_10001EDB8(v0, qword_10051FF88);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10026BC64()
{
  result = swift_getKeyPath();
  qword_10051FFA0 = result;
  return result;
}

uint64_t sub_10026BC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452FD8, &qword_10034EBD0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452FE0, &qword_10034EBD8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10026BE6C, 0, 0);
}

uint64_t sub_10026BE6C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10026D028();
  *v4 = v0;
  v4[1] = sub_10026BF50;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70E8, 0, &type metadata for AccessibilityZoomPanZoomKBShortcutEnabledEntity, v5);
}

uint64_t sub_10026BF50()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10026C04C, 0, 0);
}

uint64_t sub_10026C04C()
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
  if (qword_10043B760 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FFA0;
  *(v0 + 288) = qword_10051FFA0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100452FC0, &qword_100452FC8, &qword_10034EBB8);
  *v7 = v0;
  v7[1] = sub_10026C1B0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10026C1B0()
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
    v6 = sub_10026C320;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10026C320()
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
  sub_10026B5C8();
  sub_10026D23C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10026C598()
{
  v0 = sub_10000321C(&qword_100452FE8, &qword_10034EBE0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B760 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10026D23C();
  sub_10002B6E4(&qword_100452FF0, &qword_100452FE8, &qword_10034EBE0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10026C70C(uint64_t *a1))(void *)
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

void (*sub_10026C780(uint64_t *a1))(void *)
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

unint64_t sub_10026C81C()
{
  result = qword_100450920;
  if (!qword_100450920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450920);
  }

  return result;
}

unint64_t sub_10026C874()
{
  result = qword_100450928;
  if (!qword_100450928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450928);
  }

  return result;
}

uint64_t sub_10026C970(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10026BC8C(a1, v5, v4);
}

uint64_t sub_10026CA1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CDE5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10026CA64()
{
  result = qword_100450930;
  if (!qword_100450930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450930);
  }

  return result;
}

unint64_t sub_10026CABC()
{
  result = qword_100450938;
  if (!qword_100450938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450938);
  }

  return result;
}

uint64_t sub_10026CB30()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomPanZoomKbShortcutEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10026CBF8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomPanZoomKbShortcutEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10026CC90(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10026CD20, 0, 0);
}

uint64_t sub_10026CD20()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450918, qword_10033DCE8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452FC0, &qword_100452FC8, &qword_10034EBB8);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003CLL;
  v2[1] = 0x800000010035D400;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10026CE70()
{
  result = qword_100450940;
  if (!qword_100450940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450940);
  }

  return result;
}

uint64_t sub_10026CEC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10026D494();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10026CF78()
{
  result = qword_100450948;
  if (!qword_100450948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450948);
  }

  return result;
}

unint64_t sub_10026CFD0()
{
  result = qword_100450950;
  if (!qword_100450950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450950);
  }

  return result;
}

unint64_t sub_10026D028()
{
  result = qword_100450958;
  if (!qword_100450958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450958);
  }

  return result;
}

uint64_t sub_10026D07C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10026D494();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10026D130(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10026D494();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10026D1E4()
{
  result = qword_100450960;
  if (!qword_100450960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450960);
  }

  return result;
}

unint64_t sub_10026D23C()
{
  result = qword_100450968;
  if (!qword_100450968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450968);
  }

  return result;
}

uint64_t sub_10026D2D4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10026CE70();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10026D38C()
{
  result = qword_100450980;
  if (!qword_100450980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450980);
  }

  return result;
}

unint64_t sub_10026D3E4()
{
  result = qword_100450988;
  if (!qword_100450988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450988);
  }

  return result;
}

unint64_t sub_10026D43C()
{
  result = qword_100450990;
  if (!qword_100450990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450990);
  }

  return result;
}

unint64_t sub_10026D494()
{
  result = qword_100450998;
  if (!qword_100450998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450998);
  }

  return result;
}

uint64_t sub_10026D4E8()
{
  v0 = qword_100447598;

  return v0;
}

unint64_t sub_10026D524()
{
  result = qword_1004509A0;
  if (!qword_1004509A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004509A0);
  }

  return result;
}

uint64_t sub_10026D578()
{
  v0 = sub_10000321C(&qword_100452FB0, &qword_10034EB98);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452FB8, &qword_10034EBA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10026D028();
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

unint64_t sub_10026D740()
{
  result = qword_1004509A8;
  if (!qword_1004509A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004509A8);
  }

  return result;
}

unint64_t sub_10026D798()
{
  result = qword_1004509B0;
  if (!qword_1004509B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004509B0);
  }

  return result;
}

unint64_t sub_10026D7F0()
{
  result = qword_1004509B8;
  if (!qword_1004509B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004509B8);
  }

  return result;
}

uint64_t sub_10026D844()
{
  sub_1002D2F84();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10026D92C(uint64_t a1)
{
  v2 = sub_10026D028();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10026D97C()
{
  result = qword_1004509D0;
  if (!qword_1004509D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004509D0);
  }

  return result;
}

uint64_t sub_10026D9D4(uint64_t a1)
{
  v2 = sub_10026D7F0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10026DA24()
{
  result = qword_1004509D8;
  if (!qword_1004509D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004509D8);
  }

  return result;
}

uint64_t sub_10026DABC()
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
  sub_10001EDF0(v7, qword_10051FFA8);
  sub_10001EDB8(v7, qword_10051FFA8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10026DC2C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10026DF9C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FFC0);
  sub_10001EDB8(v0, qword_10051FFC0);
  return sub_1002D88F0();
}

uint64_t sub_10026E000()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FFD8);
  v1 = sub_10001EDB8(v0, qword_10051FFD8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10026E0C0()
{
  result = swift_getKeyPath();
  qword_10051FFF0 = result;
  return result;
}

uint64_t sub_10026E0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452F88, &qword_10034EB58) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452F90, &qword_10034EB60);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10026E2C8, 0, 0);
}

uint64_t sub_10026E2C8()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10026F480();
  *v4 = v0;
  v4[1] = sub_10026E3AC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70EC, 0, &type metadata for AccessibilityZoomResizeZoomKBShortcutEnabledEntity, v5);
}

uint64_t sub_10026E3AC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10026E4A8, 0, 0);
}

uint64_t sub_10026E4A8()
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
  if (qword_10043B780 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FFF0;
  *(v0 + 288) = qword_10051FFF0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100452F70, &qword_100452F78, &qword_10034EB40);
  *v7 = v0;
  v7[1] = sub_10026E60C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10026E60C()
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
    v6 = sub_10026E77C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10026E77C()
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
  sub_10026DA24();
  sub_10026F694();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10026E9F4()
{
  v0 = sub_10000321C(&qword_100452F98, &qword_10034EB68);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B780 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10026F694();
  sub_10002B6E4(&qword_100452FA0, &qword_100452F98, &qword_10034EB68);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10026EB68(uint64_t *a1))(void *)
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

void (*sub_10026EBDC(uint64_t *a1))(void *)
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

unint64_t sub_10026EC78()
{
  result = qword_1004509F0;
  if (!qword_1004509F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004509F0);
  }

  return result;
}

unint64_t sub_10026ECD0()
{
  result = qword_1004509F8;
  if (!qword_1004509F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004509F8);
  }

  return result;
}

uint64_t sub_10026EDCC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10026E0E8(a1, v5, v4);
}

uint64_t sub_10026EE78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CE2C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10026EEC0()
{
  result = qword_100450A00;
  if (!qword_100450A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A00);
  }

  return result;
}

unint64_t sub_10026EF18()
{
  result = qword_100450A08;
  if (!qword_100450A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A08);
  }

  return result;
}

uint64_t sub_10026EF8C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomResizeZoomWindowKbShortcutEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10026F054()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomResizeZoomWindowKbShortcutEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10026F0EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10026F17C, 0, 0);
}

uint64_t sub_10026F17C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004509E8, qword_10033E320);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452F70, &qword_100452F78, &qword_10034EB40);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000045;
  v2[1] = 0x800000010035C3E0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10026F2C8()
{
  result = qword_100450A10;
  if (!qword_100450A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A10);
  }

  return result;
}

uint64_t sub_10026F31C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10026F8EC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10026F3D0()
{
  result = qword_100450A18;
  if (!qword_100450A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A18);
  }

  return result;
}

unint64_t sub_10026F428()
{
  result = qword_100450A20;
  if (!qword_100450A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A20);
  }

  return result;
}

unint64_t sub_10026F480()
{
  result = qword_100450A28;
  if (!qword_100450A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A28);
  }

  return result;
}

uint64_t sub_10026F4D4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10026F8EC();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10026F588(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10026F8EC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10026F63C()
{
  result = qword_100450A30;
  if (!qword_100450A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A30);
  }

  return result;
}

unint64_t sub_10026F694()
{
  result = qword_100450A38;
  if (!qword_100450A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A38);
  }

  return result;
}

uint64_t sub_10026F72C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10026F2C8();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10026F7E4()
{
  result = qword_100450A50;
  if (!qword_100450A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A50);
  }

  return result;
}

unint64_t sub_10026F83C()
{
  result = qword_100450A58;
  if (!qword_100450A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A58);
  }

  return result;
}

unint64_t sub_10026F894()
{
  result = qword_100450A60;
  if (!qword_100450A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A60);
  }

  return result;
}

unint64_t sub_10026F8EC()
{
  result = qword_100450A68;
  if (!qword_100450A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A68);
  }

  return result;
}

uint64_t sub_10026F940()
{
  v0 = qword_1004475A8;

  return v0;
}

unint64_t sub_10026F97C()
{
  result = qword_100450A70;
  if (!qword_100450A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A70);
  }

  return result;
}

uint64_t sub_10026F9D0()
{
  v0 = sub_10000321C(&qword_100452F60, &qword_10034EB20);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452F68, &qword_10034EB28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10026F480();
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

unint64_t sub_10026FB98()
{
  result = qword_100450A78;
  if (!qword_100450A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A78);
  }

  return result;
}

unint64_t sub_10026FBF0()
{
  result = qword_100450A80;
  if (!qword_100450A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A80);
  }

  return result;
}

unint64_t sub_10026FC48()
{
  result = qword_100450A88;
  if (!qword_100450A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450A88);
  }

  return result;
}

uint64_t sub_10026FC9C()
{
  sub_1002D2F30();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10026FD84(uint64_t a1)
{
  v2 = sub_10026F480();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10026FDD4()
{
  result = qword_100450AA0;
  if (!qword_100450AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450AA0);
  }

  return result;
}

uint64_t sub_10026FE2C(uint64_t a1)
{
  v2 = sub_10026FC48();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10026FE7C()
{
  result = qword_100450AA8;
  if (!qword_100450AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450AA8);
  }

  return result;
}

uint64_t sub_10026FF14()
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
  sub_10001EDF0(v7, qword_10051FFF8);
  sub_10001EDB8(v7, qword_10051FFF8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100270084@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1002703F4()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_100520010);
  sub_10001EDB8(v0, qword_100520010);
  return sub_1002D88F0();
}

uint64_t sub_100270458()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_100520028);
  v1 = sub_10001EDB8(v0, qword_100520028);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100270518()
{
  result = swift_getKeyPath();
  qword_100520040 = result;
  return result;
}

uint64_t sub_100270540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452F38, &qword_10034EAE0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452F40, &qword_10034EAE8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100270720, 0, 0);
}

uint64_t sub_100270720()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1002718D8();
  *v4 = v0;
  v4[1] = sub_100270804;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70F0, 0, &type metadata for AccessibilityZoomSwitchZoomModeKBShortcutEnabledEntity, v5);
}

uint64_t sub_100270804()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100270900, 0, 0);
}

uint64_t sub_100270900()
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
  if (qword_10043B7A0 != -1)
  {
    swift_once();
  }

  v5 = qword_100520040;
  *(v0 + 288) = qword_100520040;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100452F20, &qword_100452F28, &qword_10034EAC8);
  *v7 = v0;
  v7[1] = sub_100270A64;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100270A64()
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
    v6 = sub_100270BD4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100270BD4()
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
  sub_10026FE7C();
  sub_100271AEC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100270E4C()
{
  v0 = sub_10000321C(&qword_100452F48, &qword_10034EAF0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B7A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100271AEC();
  sub_10002B6E4(&qword_100452F50, &qword_100452F48, &qword_10034EAF0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100270FC0(uint64_t *a1))(void *)
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

void (*sub_100271034(uint64_t *a1))(void *)
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

unint64_t sub_1002710D0()
{
  result = qword_100450AC0;
  if (!qword_100450AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450AC0);
  }

  return result;
}

unint64_t sub_100271128()
{
  result = qword_100450AC8;
  if (!qword_100450AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450AC8);
  }

  return result;
}

uint64_t sub_100271224(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100270540(a1, v5, v4);
}

uint64_t sub_1002712D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CE72C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100271318()
{
  result = qword_100450AD0;
  if (!qword_100450AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450AD0);
  }

  return result;
}

unint64_t sub_100271370()
{
  result = qword_100450AD8;
  if (!qword_100450AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450AD8);
  }

  return result;
}

uint64_t sub_1002713E4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomSwitchZoomModeKbShortcutEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002714AC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomSwitchZoomModeKbShortcutEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100271544(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002715D4, 0, 0);
}

uint64_t sub_1002715D4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450AB8, qword_10033E958);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452F20, &qword_100452F28, &qword_10034EAC8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000043;
  v2[1] = 0x800000010035AF70;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100271720()
{
  result = qword_100450AE0;
  if (!qword_100450AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450AE0);
  }

  return result;
}

uint64_t sub_100271774(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100271D44();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100271828()
{
  result = qword_100450AE8;
  if (!qword_100450AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450AE8);
  }

  return result;
}

unint64_t sub_100271880()
{
  result = qword_100450AF0;
  if (!qword_100450AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450AF0);
  }

  return result;
}

unint64_t sub_1002718D8()
{
  result = qword_100450AF8;
  if (!qword_100450AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450AF8);
  }

  return result;
}

uint64_t sub_10027192C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100271D44();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1002719E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100271D44();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100271A94()
{
  result = qword_100450B00;
  if (!qword_100450B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450B00);
  }

  return result;
}

unint64_t sub_100271AEC()
{
  result = qword_100450B08;
  if (!qword_100450B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450B08);
  }

  return result;
}

uint64_t sub_100271B84(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100271720();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100271C3C()
{
  result = qword_100450B20;
  if (!qword_100450B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450B20);
  }

  return result;
}

unint64_t sub_100271C94()
{
  result = qword_100450B28;
  if (!qword_100450B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450B28);
  }

  return result;
}

unint64_t sub_100271CEC()
{
  result = qword_100450B30;
  if (!qword_100450B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450B30);
  }

  return result;
}

unint64_t sub_100271D44()
{
  result = qword_100450B38;
  if (!qword_100450B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450B38);
  }

  return result;
}

uint64_t sub_100271D98()
{
  v0 = qword_1004475B8;

  return v0;
}

unint64_t sub_100271DD4()
{
  result = qword_100450B40;
  if (!qword_100450B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450B40);
  }

  return result;
}

uint64_t sub_100271E28()
{
  v0 = sub_10000321C(&qword_100452F10, &qword_10034EAA8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452F18, &qword_10034EAB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1002718D8();
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

unint64_t sub_100271FF0()
{
  result = qword_100450B48;
  if (!qword_100450B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450B48);
  }

  return result;
}

unint64_t sub_100272048()
{
  result = qword_100450B50;
  if (!qword_100450B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450B50);
  }

  return result;
}

unint64_t sub_1002720A0()
{
  result = qword_100450B58;
  if (!qword_100450B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450B58);
  }

  return result;
}

uint64_t sub_1002720F4()
{
  sub_1002D2EDC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002721DC(uint64_t a1)
{
  v2 = sub_1002718D8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10027222C()
{
  result = qword_100450B70;
  if (!qword_100450B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450B70);
  }

  return result;
}

uint64_t sub_100272284(uint64_t a1)
{
  v2 = sub_1002720A0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002722D4()
{
  result = qword_100450B78;
  if (!qword_100450B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450B78);
  }

  return result;
}

uint64_t sub_10027236C()
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
  sub_10001EDF0(v7, qword_100520048);
  sub_10001EDB8(v7, qword_100520048);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1002724DC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10027284C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_100520060);
  sub_10001EDB8(v0, qword_100520060);
  return sub_1002D88F0();
}

uint64_t sub_1002728B0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_100520078);
  v1 = sub_10001EDB8(v0, qword_100520078);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100272970()
{
  result = swift_getKeyPath();
  qword_100520090 = result;
  return result;
}

uint64_t sub_100272998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452EE8, &qword_10034EA68) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452EF0, &qword_10034EA70);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100272B78, 0, 0);
}

uint64_t sub_100272B78()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100273D30();
  *v4 = v0;
  v4[1] = sub_100272C5C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70F4, 0, &type metadata for AccessibilityZoomTempToggleZoomKBShortcutEnabledEntity, v5);
}

uint64_t sub_100272C5C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100272D58, 0, 0);
}

uint64_t sub_100272D58()
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
  if (qword_10043B7C0 != -1)
  {
    swift_once();
  }

  v5 = qword_100520090;
  *(v0 + 288) = qword_100520090;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100452ED0, &qword_100452ED8, &qword_10034EA50);
  *v7 = v0;
  v7[1] = sub_100272EBC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100272EBC()
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
    v6 = sub_10027302C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10027302C()
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
  sub_1002722D4();
  sub_100273F44();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002732A4()
{
  v0 = sub_10000321C(&qword_100452EF8, &qword_10034EA78);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B7C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100273F44();
  sub_10002B6E4(&qword_100452F00, &qword_100452EF8, &qword_10034EA78);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100273418(uint64_t *a1))(void *)
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

void (*sub_10027348C(uint64_t *a1))(void *)
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

unint64_t sub_100273528()
{
  result = qword_100450B90;
  if (!qword_100450B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450B90);
  }

  return result;
}

unint64_t sub_100273580()
{
  result = qword_100450B98;
  if (!qword_100450B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450B98);
  }

  return result;
}

uint64_t sub_10027367C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100272998(a1, v5, v4);
}

uint64_t sub_100273728@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CEB94();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100273770()
{
  result = qword_100450BA0;
  if (!qword_100450BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450BA0);
  }

  return result;
}

unint64_t sub_1002737C8()
{
  result = qword_100450BA8;
  if (!qword_100450BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450BA8);
  }

  return result;
}

uint64_t sub_10027383C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomTempToggleZoomKbShortcutEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100273904()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomTempToggleZoomKbShortcutEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10027399C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100273A2C, 0, 0);
}

uint64_t sub_100273A2C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450B88, qword_10033EF90);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452ED0, &qword_100452ED8, &qword_10034EA50);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000043;
  v2[1] = 0x800000010035AC70;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100273B78()
{
  result = qword_100450BB0;
  if (!qword_100450BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450BB0);
  }

  return result;
}

uint64_t sub_100273BCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10027419C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100273C80()
{
  result = qword_100450BB8;
  if (!qword_100450BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450BB8);
  }

  return result;
}

unint64_t sub_100273CD8()
{
  result = qword_100450BC0;
  if (!qword_100450BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450BC0);
  }

  return result;
}

unint64_t sub_100273D30()
{
  result = qword_100450BC8;
  if (!qword_100450BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450BC8);
  }

  return result;
}

uint64_t sub_100273D84(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10027419C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100273E38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10027419C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100273EEC()
{
  result = qword_100450BD0;
  if (!qword_100450BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450BD0);
  }

  return result;
}

unint64_t sub_100273F44()
{
  result = qword_100450BD8;
  if (!qword_100450BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450BD8);
  }

  return result;
}

uint64_t sub_100273FDC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100273B78();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100274094()
{
  result = qword_100450BF0;
  if (!qword_100450BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450BF0);
  }

  return result;
}

unint64_t sub_1002740EC()
{
  result = qword_100450BF8;
  if (!qword_100450BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450BF8);
  }

  return result;
}

unint64_t sub_100274144()
{
  result = qword_100450C00;
  if (!qword_100450C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C00);
  }

  return result;
}

unint64_t sub_10027419C()
{
  result = qword_100450C08;
  if (!qword_100450C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C08);
  }

  return result;
}

uint64_t sub_1002741F0()
{
  v0 = qword_1004475C8;

  return v0;
}

unint64_t sub_10027422C()
{
  result = qword_100450C10;
  if (!qword_100450C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C10);
  }

  return result;
}

uint64_t sub_100274280()
{
  v0 = sub_10000321C(&qword_100452EC0, &qword_10034EA30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452EC8, &qword_10034EA38);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100273D30();
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

unint64_t sub_100274448()
{
  result = qword_100450C18;
  if (!qword_100450C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C18);
  }

  return result;
}

unint64_t sub_1002744A0()
{
  result = qword_100450C20;
  if (!qword_100450C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C20);
  }

  return result;
}

unint64_t sub_1002744F8()
{
  result = qword_100450C28;
  if (!qword_100450C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C28);
  }

  return result;
}

uint64_t sub_10027454C()
{
  sub_1002D2E88();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100274634(uint64_t a1)
{
  v2 = sub_100273D30();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100274684()
{
  result = qword_100450C40;
  if (!qword_100450C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C40);
  }

  return result;
}

uint64_t sub_1002746DC(uint64_t a1)
{
  v2 = sub_1002744F8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10027472C()
{
  result = qword_100450C48;
  if (!qword_100450C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C48);
  }

  return result;
}

uint64_t sub_1002747C4()
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
  sub_10001EDF0(v7, qword_100520098);
  sub_10001EDB8(v7, qword_100520098);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100274934@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100274CA4()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_1005200B0);
  sub_10001EDB8(v0, qword_1005200B0);
  return sub_1002D88F0();
}

uint64_t sub_100274D08()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_1005200C8);
  v1 = sub_10001EDB8(v0, qword_1005200C8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100274DC8()
{
  result = swift_getKeyPath();
  qword_1005200E0 = result;
  return result;
}

uint64_t sub_100274DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452E98, &qword_10034E9F0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452EA0, &qword_10034E9F8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100274FD0, 0, 0);
}

uint64_t sub_100274FD0()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100276188();
  *v4 = v0;
  v4[1] = sub_1002750B4;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70F8, 0, &type metadata for AccessibilityZoomScrollWheelKBShortcutEnabledEntity, v5);
}

uint64_t sub_1002750B4()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1002751B0, 0, 0);
}

uint64_t sub_1002751B0()
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
  if (qword_10043B7E0 != -1)
  {
    swift_once();
  }

  v5 = qword_1005200E0;
  *(v0 + 288) = qword_1005200E0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100452E80, &qword_100452E88, &qword_10034E9D8);
  *v7 = v0;
  v7[1] = sub_100275314;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100275314()
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
    v6 = sub_100275484;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100275484()
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
  sub_10027472C();
  sub_10027639C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002756FC()
{
  v0 = sub_10000321C(&qword_100452EA8, &qword_10034EA00);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B7E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10027639C();
  sub_10002B6E4(&qword_100452EB0, &qword_100452EA8, &qword_10034EA00);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100275870(uint64_t *a1))(void *)
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

void (*sub_1002758E4(uint64_t *a1))(void *)
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

unint64_t sub_100275980()
{
  result = qword_100450C60;
  if (!qword_100450C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C60);
  }

  return result;
}

unint64_t sub_1002759D8()
{
  result = qword_100450C68;
  if (!qword_100450C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C68);
  }

  return result;
}

uint64_t sub_100275AD4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100274DF0(a1, v5, v4);
}

uint64_t sub_100275B80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CEFFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100275BC8()
{
  result = qword_100450C70;
  if (!qword_100450C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C70);
  }

  return result;
}

unint64_t sub_100275C20()
{
  result = qword_100450C78;
  if (!qword_100450C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C78);
  }

  return result;
}

uint64_t sub_100275C94()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomScrollWheelKbShortcutEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100275D5C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomScrollWheelKbShortcutEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100275DF4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100275E84, 0, 0);
}

uint64_t sub_100275E84()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450C58, qword_10033F5C8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452E80, &qword_100452E88, &qword_10034E9D8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000040;
  v2[1] = 0x8000000100359810;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100275FD0()
{
  result = qword_100450C80;
  if (!qword_100450C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C80);
  }

  return result;
}

uint64_t sub_100276024(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002765F4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1002760D8()
{
  result = qword_100450C88;
  if (!qword_100450C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C88);
  }

  return result;
}

unint64_t sub_100276130()
{
  result = qword_100450C90;
  if (!qword_100450C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C90);
  }

  return result;
}

unint64_t sub_100276188()
{
  result = qword_100450C98;
  if (!qword_100450C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450C98);
  }

  return result;
}

uint64_t sub_1002761DC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002765F4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100276290(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002765F4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100276344()
{
  result = qword_100450CA0;
  if (!qword_100450CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450CA0);
  }

  return result;
}

unint64_t sub_10027639C()
{
  result = qword_100450CA8;
  if (!qword_100450CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450CA8);
  }

  return result;
}

uint64_t sub_100276434(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100275FD0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1002764EC()
{
  result = qword_100450CC0;
  if (!qword_100450CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450CC0);
  }

  return result;
}

unint64_t sub_100276544()
{
  result = qword_100450CC8;
  if (!qword_100450CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450CC8);
  }

  return result;
}

unint64_t sub_10027659C()
{
  result = qword_100450CD0;
  if (!qword_100450CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450CD0);
  }

  return result;
}

unint64_t sub_1002765F4()
{
  result = qword_100450CD8;
  if (!qword_100450CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450CD8);
  }

  return result;
}

uint64_t sub_100276648()
{
  v0 = qword_1004475D8;

  return v0;
}

unint64_t sub_100276684()
{
  result = qword_100450CE0;
  if (!qword_100450CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450CE0);
  }

  return result;
}

uint64_t sub_1002766D8()
{
  v0 = sub_10000321C(&qword_100452E70, &qword_10034E9B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452E78, &qword_10034E9C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100276188();
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

unint64_t sub_1002768A0()
{
  result = qword_100450CE8;
  if (!qword_100450CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450CE8);
  }

  return result;
}

unint64_t sub_1002768F8()
{
  result = qword_100450CF0;
  if (!qword_100450CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450CF0);
  }

  return result;
}

unint64_t sub_100276950()
{
  result = qword_100450CF8;
  if (!qword_100450CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450CF8);
  }

  return result;
}

uint64_t sub_1002769A4()
{
  sub_1002D2E34();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100276A8C(uint64_t a1)
{
  v2 = sub_100276188();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100276ADC()
{
  result = qword_100450D10;
  if (!qword_100450D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450D10);
  }

  return result;
}

uint64_t sub_100276B34(uint64_t a1)
{
  v2 = sub_100276950();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100276B84()
{
  result = qword_100450D18;
  if (!qword_100450D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450D18);
  }

  return result;
}

uint64_t sub_100276C1C()
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
  sub_10001EDF0(v7, qword_1005200E8);
  sub_10001EDB8(v7, qword_1005200E8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100276D8C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1002770FC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_100520100);
  sub_10001EDB8(v0, qword_100520100);
  return sub_1002D88F0();
}

uint64_t sub_100277160()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_100520118);
  v1 = sub_10001EDB8(v0, qword_100520118);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100277220()
{
  result = swift_getKeyPath();
  qword_100520130 = result;
  return result;
}

uint64_t sub_100277248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452E48, &qword_10034E978) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452E50, &qword_10034E980);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100277428, 0, 0);
}

uint64_t sub_100277428()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1002785E4();
  *v4 = v0;
  v4[1] = sub_10027750C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70FC, 0, &type metadata for AccessibilityZoomTrackpadGestureEnabledEntity, v5);
}

uint64_t sub_10027750C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100277608, 0, 0);
}

uint64_t sub_100277608()
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
  if (qword_10043B800 != -1)
  {
    swift_once();
  }

  v5 = qword_100520130;
  *(v0 + 288) = qword_100520130;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100452E30, &qword_100452E38, &qword_10034E960);
  *v7 = v0;
  v7[1] = sub_10027776C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10027776C()
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
    v6 = sub_1002778DC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002778DC()
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
  sub_100276B84();
  sub_1002787F8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100277B54()
{
  v0 = sub_10000321C(&qword_100452E58, &qword_10034E988);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B800 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1002787F8();
  sub_10002B6E4(&qword_100452E60, &qword_100452E58, &qword_10034E988);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100277CC8(uint64_t *a1))(void *)
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

void (*sub_100277D3C(uint64_t *a1))(void *)
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

unint64_t sub_100277DD8()
{
  result = qword_100450D30;
  if (!qword_100450D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450D30);
  }

  return result;
}

unint64_t sub_100277E30()
{
  result = qword_100450D38;
  if (!qword_100450D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450D38);
  }

  return result;
}

uint64_t sub_100277F2C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100277248(a1, v5, v4);
}

uint64_t sub_100277FD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CF474();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100278020()
{
  result = qword_100450D40;
  if (!qword_100450D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450D40);
  }

  return result;
}

unint64_t sub_100278078()
{
  result = qword_100450D48;
  if (!qword_100450D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450D48);
  }

  return result;
}

uint64_t sub_1002780EC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomTrackpadGestureEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002781B4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomTrackpadGestureEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10027824C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002782DC, 0, 0);
}

uint64_t sub_1002782DC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450D28, qword_10033FC00);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452E30, &qword_100452E38, &qword_10034E960);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001BLL;
  v2[1] = 0x80000001003597F0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10027842C()
{
  result = qword_100450D50;
  if (!qword_100450D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450D50);
  }

  return result;
}

uint64_t sub_100278480(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100278A50();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100278534()
{
  result = qword_100450D58;
  if (!qword_100450D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450D58);
  }

  return result;
}

unint64_t sub_10027858C()
{
  result = qword_100450D60;
  if (!qword_100450D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450D60);
  }

  return result;
}

unint64_t sub_1002785E4()
{
  result = qword_100450D68;
  if (!qword_100450D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450D68);
  }

  return result;
}

uint64_t sub_100278638(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100278A50();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1002786EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100278A50();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1002787A0()
{
  result = qword_100450D70;
  if (!qword_100450D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450D70);
  }

  return result;
}

unint64_t sub_1002787F8()
{
  result = qword_100450D78;
  if (!qword_100450D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450D78);
  }

  return result;
}

uint64_t sub_100278890(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10027842C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100278948()
{
  result = qword_100450D90;
  if (!qword_100450D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450D90);
  }

  return result;
}

unint64_t sub_1002789A0()
{
  result = qword_100450D98;
  if (!qword_100450D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450D98);
  }

  return result;
}

unint64_t sub_1002789F8()
{
  result = qword_100450DA0;
  if (!qword_100450DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450DA0);
  }

  return result;
}

unint64_t sub_100278A50()
{
  result = qword_100450DA8;
  if (!qword_100450DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450DA8);
  }

  return result;
}

uint64_t sub_100278AA4()
{
  v0 = qword_1004475E8;

  return v0;
}

unint64_t sub_100278AE0()
{
  result = qword_100450DB0;
  if (!qword_100450DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450DB0);
  }

  return result;
}

uint64_t sub_100278B34()
{
  v0 = sub_10000321C(&qword_100452E20, &qword_10034E940);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452E28, &qword_10034E948);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1002785E4();
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

unint64_t sub_100278CFC()
{
  result = qword_100450DB8;
  if (!qword_100450DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450DB8);
  }

  return result;
}

unint64_t sub_100278D54()
{
  result = qword_100450DC0;
  if (!qword_100450DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450DC0);
  }

  return result;
}

unint64_t sub_100278DAC()
{
  result = qword_100450DC8;
  if (!qword_100450DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450DC8);
  }

  return result;
}

uint64_t sub_100278E00()
{
  sub_1002D2DE0();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100278EE8(uint64_t a1)
{
  v2 = sub_1002785E4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100278F38()
{
  result = qword_100450DE0;
  if (!qword_100450DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450DE0);
  }

  return result;
}

uint64_t sub_100278F90(uint64_t a1)
{
  v2 = sub_100278DAC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100278FE0()
{
  result = qword_100450DE8;
  if (!qword_100450DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450DE8);
  }

  return result;
}

uint64_t sub_1002790A4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100279420()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_100520150);
  sub_10001EDB8(v0, qword_100520150);
  return sub_1002D88F0();
}

uint64_t sub_100279484()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_100520168);
  v1 = sub_10001EDB8(v0, qword_100520168);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100279544()
{
  result = swift_getKeyPath();
  qword_100520180 = result;
  return result;
}

uint64_t sub_10027956C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452DF8, &qword_10034E900) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452E00, &qword_10034E908);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10027974C, 0, 0);
}

uint64_t sub_10027974C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10027A8CC();
  *v4 = v0;
  v4[1] = sub_100279830;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7100, 0, &type metadata for AccessibilityZoomPanningStyleEntity, v5);
}

uint64_t sub_100279830()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10027992C, 0, 0);
}

uint64_t sub_10027992C()
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
  if (qword_10043B820 != -1)
  {
    swift_once();
  }

  v5 = qword_100520180;
  v0[36] = qword_100520180;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100452DD8, &qword_100452DE0, &qword_10034E8E0);
  *v7 = v0;
  v7[1] = sub_100279A88;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXZoomPanStyleAppEnum, v8);
}

uint64_t sub_100279A88()
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
    v6 = sub_100279BF8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100279BF8()
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
  sub_100278FE0();
  sub_10027AAE0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100279E70()
{
  v0 = sub_10000321C(&qword_100452E08, &qword_10034E910);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B820 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10027AAE0();
  sub_10002B6E4(&qword_100452E10, &qword_100452E08, &qword_10034E910);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100279FE4(uint64_t *a1))(void *)
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

void (*sub_10027A058(uint64_t *a1))(void *)
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

unint64_t sub_10027A0F4()
{
  result = qword_100450E00;
  if (!qword_100450E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E00);
  }

  return result;
}

unint64_t sub_10027A14C()
{
  result = qword_100450E08;
  if (!qword_100450E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E08);
  }

  return result;
}

uint64_t sub_10027A248(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10027956C(a1, v5, v4);
}

uint64_t sub_10027A2F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CF8DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10027A33C()
{
  result = qword_100450E10;
  if (!qword_100450E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E10);
  }

  return result;
}

uint64_t sub_10027A3B4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 laserZoomPanningStyle];

  if (v3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 1;
  }

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10027A490()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setLaserZoomPanningStyle:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10027A528(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10027A5B8, 0, 0);
}

uint64_t sub_10027A5B8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450DF8, &qword_100340238);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452DD8, &qword_100452DE0, &qword_10034E8E0);
  sub_10000A6CC();
  v3 = sub_1002D8890();
  *v2 = 0xD00000000000001BLL;
  v2[1] = 0x80000001003747E0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10027A714()
{
  result = qword_100450E18;
  if (!qword_100450E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E18);
  }

  return result;
}

uint64_t sub_10027A768(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10027AD38();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10027A81C()
{
  result = qword_100450E20;
  if (!qword_100450E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E20);
  }

  return result;
}

unint64_t sub_10027A874()
{
  result = qword_100450E28;
  if (!qword_100450E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E28);
  }

  return result;
}

unint64_t sub_10027A8CC()
{
  result = qword_100450E30;
  if (!qword_100450E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E30);
  }

  return result;
}

uint64_t sub_10027A920(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10027AD38();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10027A9D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10027AD38();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10027AA88()
{
  result = qword_100450E38;
  if (!qword_100450E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E38);
  }

  return result;
}

unint64_t sub_10027AAE0()
{
  result = qword_100450E40;
  if (!qword_100450E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E40);
  }

  return result;
}

uint64_t sub_10027AB78(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10027A714();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10027AC30()
{
  result = qword_100450E58;
  if (!qword_100450E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E58);
  }

  return result;
}

unint64_t sub_10027AC88()
{
  result = qword_100450E60;
  if (!qword_100450E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E60);
  }

  return result;
}

unint64_t sub_10027ACE0()
{
  result = qword_100450E68;
  if (!qword_100450E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E68);
  }

  return result;
}

unint64_t sub_10027AD38()
{
  result = qword_100450E70;
  if (!qword_100450E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E70);
  }

  return result;
}

uint64_t sub_10027AD8C()
{
  v0 = qword_1004475F8;

  return v0;
}

unint64_t sub_10027ADC8()
{
  result = qword_100450E78;
  if (!qword_100450E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E78);
  }

  return result;
}

uint64_t sub_10027AE1C()
{
  v0 = sub_10000321C(&qword_100452DC8, &qword_10034E8C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452DD0, &qword_10034E8C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10027A8CC();
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

unint64_t sub_10027AFE4()
{
  result = qword_100450E80;
  if (!qword_100450E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E80);
  }

  return result;
}

unint64_t sub_10027B03C()
{
  result = qword_100450E88;
  if (!qword_100450E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E88);
  }

  return result;
}

unint64_t sub_10027B094()
{
  result = qword_100450E90;
  if (!qword_100450E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450E90);
  }

  return result;
}

uint64_t sub_10027B0E8()
{
  sub_1002D2D8C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10027B1D0(uint64_t a1)
{
  v2 = sub_10027A8CC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10027B220()
{
  result = qword_100450EA8;
  if (!qword_100450EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450EA8);
  }

  return result;
}

uint64_t sub_10027B278(uint64_t a1)
{
  v2 = sub_10027B094();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10027B2C8()
{
  result = qword_100450EB0;
  if (!qword_100450EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450EB0);
  }

  return result;
}

uint64_t sub_10027B360()
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
  sub_10001EDF0(v7, qword_100520188);
  sub_10001EDB8(v7, qword_100520188);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10027B4D0()
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

uint64_t sub_10027B844()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_1005201A0);
  sub_10001EDB8(v0, qword_1005201A0);
  return sub_1002D88F0();
}

uint64_t sub_10027B8A8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_1005201B8);
  v1 = sub_10001EDB8(v0, qword_1005201B8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10027B968()
{
  result = swift_getKeyPath();
  qword_1005201D0 = result;
  return result;
}

uint64_t sub_10027B990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452DA0, &qword_10034E880) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452DA8, &qword_10034E888);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10027BB70, 0, 0);
}

uint64_t sub_10027BB70()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10027CCC0();
  *v4 = v0;
  v4[1] = sub_10027BC54;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7104, 0, &type metadata for AccessibilityZoomAdjustsPointerSizeEnabledEntity, v5);
}

uint64_t sub_10027BC54()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10027BD50, 0, 0);
}

uint64_t sub_10027BD50()
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
  if (qword_10043B840 != -1)
  {
    swift_once();
  }

  v5 = qword_1005201D0;
  *(v0 + 288) = qword_1005201D0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100452D88, &qword_100452D90, &qword_10034E868);
  *v7 = v0;
  v7[1] = sub_10027BEB4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10027BEB4()
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
    v6 = sub_10027C024;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10027C024()
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
  sub_10027B2C8();
  sub_10027CED4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10027C29C()
{
  v0 = sub_10000321C(&qword_100452DB0, &qword_10034E890);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B840 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10027CED4();
  sub_10002B6E4(&qword_100452DB8, &qword_100452DB0, &qword_10034E890);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10027C410(uint64_t *a1))(void *)
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

void (*sub_10027C484(uint64_t *a1))(void *)
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