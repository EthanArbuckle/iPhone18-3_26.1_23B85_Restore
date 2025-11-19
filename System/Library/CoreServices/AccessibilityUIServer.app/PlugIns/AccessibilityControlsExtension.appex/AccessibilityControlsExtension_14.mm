uint64_t sub_1001BB220()
{
  result = swift_getKeyPath();
  qword_10051E6A0 = result;
  return result;
}

uint64_t sub_1001BB248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454978, &qword_1003511F0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454980, &qword_1003511F8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001BB428, 0, 0);
}

uint64_t sub_1001BB428()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001BC5E0();
  *v4 = v0;
  v4[1] = sub_1001BB50C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FA8, 0, &type metadata for AccessibilitySiriListenForAtypicalSpeechEntity, v5);
}

uint64_t sub_1001BB50C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001BB608, 0, 0);
}

uint64_t sub_1001BB608()
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
  if (qword_10043AD60 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E6A0;
  *(v0 + 288) = qword_10051E6A0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454960, &qword_100454968, &qword_1003511D8);
  *v7 = v0;
  v7[1] = sub_1001BB76C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001BB76C()
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
    v6 = sub_1001BB8DC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001BB8DC()
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
  sub_1001BAB84();
  sub_1001BC7F4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001BBB54()
{
  v0 = sub_10000321C(&qword_100454988, &qword_100351200);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AD60 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001BC7F4();
  sub_10002B6E4(&qword_100454990, &qword_100454988, &qword_100351200);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001BBCC8(uint64_t *a1))(void *)
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

void (*sub_1001BBD3C(uint64_t *a1))(void *)
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

unint64_t sub_1001BBDD8()
{
  result = qword_10044C8B0;
  if (!qword_10044C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8B0);
  }

  return result;
}

unint64_t sub_1001BBE30()
{
  result = qword_10044C8B8;
  if (!qword_10044C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8B8);
  }

  return result;
}

uint64_t sub_1001BBF2C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001BB248(a1, v5, v4);
}

uint64_t sub_1001BBFD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B8844();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001BC020()
{
  result = qword_10044C8C0;
  if (!qword_10044C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8C0);
  }

  return result;
}

unint64_t sub_1001BC078()
{
  result = qword_10044C8C8;
  if (!qword_10044C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8C8);
  }

  return result;
}

uint64_t sub_1001BC0EC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 useAtypicalSpeechModel];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001BC1B4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setUseAtypicalSpeechModel:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001BC24C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001BC2DC, 0, 0);
}

uint64_t sub_1001BC2DC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044C8A8, qword_10031EB68);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454960, &qword_100454968, &qword_1003511D8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000028;
  v2[1] = 0x800000010035B2B0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001BC428()
{
  result = qword_10044C8D0;
  if (!qword_10044C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8D0);
  }

  return result;
}

uint64_t sub_1001BC47C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001BCA4C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001BC530()
{
  result = qword_10044C8D8;
  if (!qword_10044C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8D8);
  }

  return result;
}

unint64_t sub_1001BC588()
{
  result = qword_10044C8E0;
  if (!qword_10044C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8E0);
  }

  return result;
}

unint64_t sub_1001BC5E0()
{
  result = qword_10044C8E8;
  if (!qword_10044C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8E8);
  }

  return result;
}

uint64_t sub_1001BC634(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001BCA4C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001BC6E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001BCA4C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001BC79C()
{
  result = qword_10044C8F0;
  if (!qword_10044C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8F0);
  }

  return result;
}

unint64_t sub_1001BC7F4()
{
  result = qword_10044C8F8;
  if (!qword_10044C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C8F8);
  }

  return result;
}

uint64_t sub_1001BC88C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001BC428();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001BC944()
{
  result = qword_10044C910;
  if (!qword_10044C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C910);
  }

  return result;
}

unint64_t sub_1001BC99C()
{
  result = qword_10044C918;
  if (!qword_10044C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C918);
  }

  return result;
}

unint64_t sub_1001BC9F4()
{
  result = qword_10044C920;
  if (!qword_10044C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C920);
  }

  return result;
}

unint64_t sub_1001BCA4C()
{
  result = qword_10044C928;
  if (!qword_10044C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C928);
  }

  return result;
}

uint64_t sub_1001BCAA0()
{
  v0 = qword_100447098;

  return v0;
}

unint64_t sub_1001BCADC()
{
  result = qword_10044C930;
  if (!qword_10044C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C930);
  }

  return result;
}

uint64_t sub_1001BCB30()
{
  v0 = sub_10000321C(&qword_100454950, &qword_1003511B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454958, &qword_1003511C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001BC5E0();
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

unint64_t sub_1001BCCF8()
{
  result = qword_10044C938;
  if (!qword_10044C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C938);
  }

  return result;
}

unint64_t sub_1001BCD50()
{
  result = qword_10044C940;
  if (!qword_10044C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C940);
  }

  return result;
}

unint64_t sub_1001BCDA8()
{
  result = qword_10044C948;
  if (!qword_10044C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C948);
  }

  return result;
}

uint64_t sub_1001BCDFC()
{
  sub_1002D49C4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001BCEE4(uint64_t a1)
{
  v2 = sub_1001BC5E0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001BCF34()
{
  result = qword_10044C960;
  if (!qword_10044C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C960);
  }

  return result;
}

uint64_t sub_1001BCF8C(uint64_t a1)
{
  v2 = sub_1001BCDA8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001BCFDC()
{
  result = qword_10044C968;
  if (!qword_10044C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C968);
  }

  return result;
}

uint64_t sub_1001BD074()
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
  sub_10001EDF0(v7, qword_10051E6A8);
  sub_10001EDB8(v7, qword_10051E6A8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001BD1E4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001BD554()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E6C0);
  sub_10001EDB8(v0, qword_10051E6C0);
  return sub_1002D88F0();
}

uint64_t sub_1001BD5B8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E6D8);
  v1 = sub_10001EDB8(v0, qword_10051E6D8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001BD678()
{
  result = swift_getKeyPath();
  qword_10051E6F0 = result;
  return result;
}

uint64_t sub_1001BD6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454928, &qword_100351178) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454930, &qword_100351180);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001BD880, 0, 0);
}

uint64_t sub_1001BD880()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001BE9C8();
  *v4 = v0;
  v4[1] = sub_1001BD964;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FAC, 0, &type metadata for AccessibilitySiriListenForInterruptionsEntity, v5);
}

uint64_t sub_1001BD964()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001BDA60, 0, 0);
}

uint64_t sub_1001BDA60()
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
  if (qword_10043AD80 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E6F0;
  *(v0 + 288) = qword_10051E6F0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454910, &qword_100454918, &qword_100351160);
  *v7 = v0;
  v7[1] = sub_1001BDBC4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001BDBC4()
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
    v6 = sub_1001BDD34;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001BDD34()
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
  sub_1001BCFDC();
  sub_1001BEBDC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001BDFAC()
{
  v0 = sub_10000321C(&qword_100454938, &qword_100351188);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AD80 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001BEBDC();
  sub_10002B6E4(&qword_100454940, &qword_100454938, &qword_100351188);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001BE120(uint64_t *a1))(void *)
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

void (*sub_1001BE194(uint64_t *a1))(void *)
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

unint64_t sub_1001BE230()
{
  result = qword_10044C980;
  if (!qword_10044C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C980);
  }

  return result;
}

unint64_t sub_1001BE288()
{
  result = qword_10044C988;
  if (!qword_10044C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C988);
  }

  return result;
}

uint64_t sub_1001BE384(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001BD6A0(a1, v5, v4);
}

uint64_t sub_1001BE430@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B8CAC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001BE478()
{
  result = qword_10044C990;
  if (!qword_10044C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C990);
  }

  return result;
}

unint64_t sub_1001BE4D0()
{
  result = qword_10044C998;
  if (!qword_10044C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C998);
  }

  return result;
}

uint64_t sub_1001BE544()
{
  v1 = *(v0 + 16);
  *v1 = AXGetSiriRequireSiriForInterruptionsInValue();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001BE5D0()
{
  v1 = *(v0 + 16);
  AXSetSiriRequireSiriForInterruptionsInValue();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001BE634(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001BE6C4, 0, 0);
}

uint64_t sub_1001BE6C4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044C978, qword_10031F1A0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454910, &qword_100454918, &qword_100351160);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001ELL;
  v2[1] = 0x800000010035BB90;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001BE810()
{
  result = qword_10044C9A0;
  if (!qword_10044C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9A0);
  }

  return result;
}

uint64_t sub_1001BE864(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001BEE34();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001BE918()
{
  result = qword_10044C9A8;
  if (!qword_10044C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9A8);
  }

  return result;
}

unint64_t sub_1001BE970()
{
  result = qword_10044C9B0;
  if (!qword_10044C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9B0);
  }

  return result;
}

unint64_t sub_1001BE9C8()
{
  result = qword_10044C9B8;
  if (!qword_10044C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9B8);
  }

  return result;
}

uint64_t sub_1001BEA1C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001BEE34();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001BEAD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001BEE34();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001BEB84()
{
  result = qword_10044C9C0;
  if (!qword_10044C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9C0);
  }

  return result;
}

unint64_t sub_1001BEBDC()
{
  result = qword_10044C9C8;
  if (!qword_10044C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9C8);
  }

  return result;
}

uint64_t sub_1001BEC74(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001BE810();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001BED2C()
{
  result = qword_10044C9E0;
  if (!qword_10044C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9E0);
  }

  return result;
}

unint64_t sub_1001BED84()
{
  result = qword_10044C9E8;
  if (!qword_10044C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9E8);
  }

  return result;
}

unint64_t sub_1001BEDDC()
{
  result = qword_10044C9F0;
  if (!qword_10044C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9F0);
  }

  return result;
}

unint64_t sub_1001BEE34()
{
  result = qword_10044C9F8;
  if (!qword_10044C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044C9F8);
  }

  return result;
}

uint64_t sub_1001BEE88()
{
  v0 = qword_1004470A8;

  return v0;
}

unint64_t sub_1001BEEC4()
{
  result = qword_10044CA00;
  if (!qword_10044CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA00);
  }

  return result;
}

uint64_t sub_1001BEF18()
{
  v0 = sub_10000321C(&qword_100454900, &qword_100351140);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454908, &qword_100351148);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001BE9C8();
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

unint64_t sub_1001BF0E0()
{
  result = qword_10044CA08;
  if (!qword_10044CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA08);
  }

  return result;
}

unint64_t sub_1001BF138()
{
  result = qword_10044CA10;
  if (!qword_10044CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA10);
  }

  return result;
}

unint64_t sub_1001BF190()
{
  result = qword_10044CA18;
  if (!qword_10044CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA18);
  }

  return result;
}

uint64_t sub_1001BF1E4()
{
  sub_1002D4970();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001BF2CC(uint64_t a1)
{
  v2 = sub_1001BE9C8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001BF31C()
{
  result = qword_10044CA30;
  if (!qword_10044CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA30);
  }

  return result;
}

uint64_t sub_1001BF374(uint64_t a1)
{
  v2 = sub_1001BF190();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001BF3C4()
{
  result = qword_10044CA38;
  if (!qword_10044CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA38);
  }

  return result;
}

uint64_t sub_1001BF488@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001BF804()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E710);
  sub_10001EDB8(v0, qword_10051E710);
  return sub_1002D88F0();
}

uint64_t sub_1001BF868()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E728);
  v1 = sub_10001EDB8(v0, qword_10051E728);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001BF928()
{
  result = swift_getKeyPath();
  qword_10051E740 = result;
  return result;
}

uint64_t sub_1001BF950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004548D8, &qword_100351100) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004548E0, &qword_100351108);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001BFB30, 0, 0);
}

uint64_t sub_1001BFB30()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001C0D74();
  *v4 = v0;
  v4[1] = sub_1001BFC14;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FB0, 0, &type metadata for AccessibilitySiriPauseTimeEntity, v5);
}

uint64_t sub_1001BFC14()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001BFD10, 0, 0);
}

uint64_t sub_1001BFD10()
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
  if (qword_10043ADA0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E740;
  v0[36] = qword_10051E740;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_1004548B8, &qword_1004548C0, &qword_1003510E0);
  *v7 = v0;
  v7[1] = sub_1001BFE6C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXSiriPauseTimeAppEnum, v8);
}

uint64_t sub_1001BFE6C()
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v6 = sub_1001C0254;
  }

  else
  {
    v6 = sub_1001BFFDC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001BFFDC()
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
  sub_1001BF3C4();
  sub_1001C0F88();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001C0254()
{
  v1 = v0[31];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  (*(v0[30] + 8))(v0[32], v0[29]);

  v6 = v0[1];
  v7 = v0[38];

  return v6();
}

uint64_t sub_1001C0318()
{
  v0 = sub_10000321C(&qword_1004548E8, &qword_100351110);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043ADA0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001C0F88();
  sub_10002B6E4(&qword_1004548F0, &qword_1004548E8, &qword_100351110);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001C048C(uint64_t *a1))(void *)
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

void (*sub_1001C0500(uint64_t *a1))(void *)
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

unint64_t sub_1001C059C()
{
  result = qword_10044CA50;
  if (!qword_10044CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA50);
  }

  return result;
}

unint64_t sub_1001C05F4()
{
  result = qword_10044CA58;
  if (!qword_10044CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA58);
  }

  return result;
}

uint64_t sub_1001C06F0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001BF950(a1, v5, v4);
}

uint64_t sub_1001C079C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B9114();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001C07E4()
{
  result = qword_10044CA60;
  if (!qword_10044CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA60);
  }

  return result;
}

uint64_t sub_1001C085C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 accessibleEndpointerThreshold];

  if (v3 == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 2;
  }

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001C0938()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setAccessibleEndpointerThreshold:v1 + 1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001C09D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001C0A60, 0, 0);
}

uint64_t sub_1001C0A60()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044CA48, &qword_10031F7D8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004548B8, &qword_1004548C0, &qword_1003510E0);
  sub_10001C314();
  v3 = sub_1002D8890();
  *v2 = 0xD00000000000001ELL;
  v2[1] = 0x800000010035BB70;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001C0BBC()
{
  result = qword_10044CA68;
  if (!qword_10044CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA68);
  }

  return result;
}

uint64_t sub_1001C0C10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001C11E0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001C0CC4()
{
  result = qword_10044CA70;
  if (!qword_10044CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA70);
  }

  return result;
}

unint64_t sub_1001C0D1C()
{
  result = qword_10044CA78;
  if (!qword_10044CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA78);
  }

  return result;
}

unint64_t sub_1001C0D74()
{
  result = qword_10044CA80;
  if (!qword_10044CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA80);
  }

  return result;
}

uint64_t sub_1001C0DC8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001C11E0();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001C0E7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001C11E0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001C0F30()
{
  result = qword_10044CA88;
  if (!qword_10044CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA88);
  }

  return result;
}

unint64_t sub_1001C0F88()
{
  result = qword_10044CA90;
  if (!qword_10044CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CA90);
  }

  return result;
}

uint64_t sub_1001C1020(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001C0BBC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001C10D8()
{
  result = qword_10044CAA8;
  if (!qword_10044CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAA8);
  }

  return result;
}

unint64_t sub_1001C1130()
{
  result = qword_10044CAB0;
  if (!qword_10044CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAB0);
  }

  return result;
}

unint64_t sub_1001C1188()
{
  result = qword_10044CAB8;
  if (!qword_10044CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAB8);
  }

  return result;
}

unint64_t sub_1001C11E0()
{
  result = qword_10044CAC0;
  if (!qword_10044CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAC0);
  }

  return result;
}

uint64_t sub_1001C1234()
{
  v0 = qword_1004470B8;

  return v0;
}

unint64_t sub_1001C1270()
{
  result = qword_10044CAC8;
  if (!qword_10044CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAC8);
  }

  return result;
}

uint64_t sub_1001C12C4()
{
  v0 = sub_10000321C(&qword_1004548A8, &qword_1003510C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004548B0, &qword_1003510C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001C0D74();
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

unint64_t sub_1001C148C()
{
  result = qword_10044CAD0;
  if (!qword_10044CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAD0);
  }

  return result;
}

unint64_t sub_1001C14E4()
{
  result = qword_10044CAD8;
  if (!qword_10044CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAD8);
  }

  return result;
}

unint64_t sub_1001C153C()
{
  result = qword_10044CAE0;
  if (!qword_10044CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAE0);
  }

  return result;
}

uint64_t sub_1001C1590()
{
  sub_1002D491C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001C1678(uint64_t a1)
{
  v2 = sub_1001C0D74();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001C16C8()
{
  result = qword_10044CAF8;
  if (!qword_10044CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CAF8);
  }

  return result;
}

uint64_t sub_1001C1720(uint64_t a1)
{
  v2 = sub_1001C153C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001C1770()
{
  result = qword_10044CB00;
  if (!qword_10044CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB00);
  }

  return result;
}

uint64_t sub_1001C1808()
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
  sub_10001EDF0(v7, qword_10051E748);
  sub_10001EDB8(v7, qword_10051E748);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001C1978@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001C1CE8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E760);
  sub_10001EDB8(v0, qword_10051E760);
  return sub_1002D88F0();
}

uint64_t sub_1001C1D4C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E778);
  v1 = sub_10001EDB8(v0, qword_10051E778);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001C1E0C()
{
  result = swift_getKeyPath();
  qword_10051E790 = result;
  return result;
}

uint64_t sub_1001C1E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454880, &qword_100351080) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v9 = *(v8 + 64) + 15;
  v3[29] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454888, &qword_100351088);
  v3[30] = v10;
  v11 = *(v10 - 8);
  v3[31] = v11;
  v12 = *(v11 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001C2014, 0, 0);
}

uint64_t sub_1001C2014()
{
  v1 = *(v0 + 176);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  v5 = sub_1001C32DC();
  *v4 = v0;
  v4[1] = sub_1001C20F8;
  v6 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FB4, 0, &type metadata for AccessibilitySiriSpeakingRateEntity, v5);
}

uint64_t sub_1001C20F8()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_1001C21F4, 0, 0);
}

uint64_t sub_1001C21F4()
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
  if (qword_10043ADC0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E790;
  v0[37] = qword_10051E790;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[38] = v7;
  v8 = sub_10002B6E4(&qword_100454868, &qword_100454870, &qword_100351068);
  *v7 = v0;
  v7[1] = sub_1001C2350;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v5, &type metadata for Double, v8);
}

uint64_t sub_1001C2350()
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 288);
  v5 = *(*v1 + 280);
  v8 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v6 = sub_1001C2738;
  }

  else
  {
    v6 = sub_1001C24C0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001C24C0()
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
  sub_1001C1770();
  sub_1001C34F0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001C2738()
{
  v1 = v0[32];
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  (*(v0[31] + 8))(v0[33], v0[30]);

  v6 = v0[1];
  v7 = v0[39];

  return v6();
}

uint64_t sub_1001C27FC()
{
  v0 = sub_10000321C(&qword_100454890, &qword_100351090);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043ADC0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001C34F0();
  sub_10002B6E4(&qword_100454898, &qword_100454890, &qword_100351090);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001C2970(uint64_t *a1))(void *)
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

void (*sub_1001C29E4(uint64_t *a1))(void *)
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

unint64_t sub_1001C2A80()
{
  result = qword_10044CB18;
  if (!qword_10044CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB18);
  }

  return result;
}

unint64_t sub_1001C2AD8()
{
  result = qword_10044CB20;
  if (!qword_10044CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB20);
  }

  return result;
}

uint64_t sub_1001C2BD4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001C1E34(a1, v5, v4);
}

uint64_t sub_1001C2C80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B9518();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001C2CC8()
{
  result = qword_10044CB28;
  if (!qword_10044CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB28);
  }

  return result;
}

unint64_t sub_1001C2D20()
{
  result = qword_10044CB30;
  if (!qword_10044CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB30);
  }

  return result;
}

uint64_t sub_1001C2D94()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 siriSpeechRate];

  [v3 doubleValue];
  v5 = v4;

  *v1 = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001C2E7C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [objc_allocWithZone(NSNumber) initWithDouble:v1];
  [v2 setSiriSpeechRate:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001C2F44(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001C2FD4, 0, 0);
}

uint64_t sub_1001C2FD4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044CB10, qword_10031FE10);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454868, &qword_100454870, &qword_100351068);
  v3 = sub_1002D88B0();
  *v2 = 0xD00000000000001FLL;
  v2[1] = 0x800000010035BB30;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001C3124()
{
  result = qword_10044CB38;
  if (!qword_10044CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB38);
  }

  return result;
}

uint64_t sub_1001C3178(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001C3748();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001C322C()
{
  result = qword_10044CB40;
  if (!qword_10044CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB40);
  }

  return result;
}

unint64_t sub_1001C3284()
{
  result = qword_10044CB48;
  if (!qword_10044CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB48);
  }

  return result;
}

unint64_t sub_1001C32DC()
{
  result = qword_10044CB50;
  if (!qword_10044CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB50);
  }

  return result;
}

uint64_t sub_1001C3330(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001C3748();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001C33E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001C3748();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001C3498()
{
  result = qword_10044CB58;
  if (!qword_10044CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB58);
  }

  return result;
}

unint64_t sub_1001C34F0()
{
  result = qword_10044CB60;
  if (!qword_10044CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB60);
  }

  return result;
}

uint64_t sub_1001C3588(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001C3124();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001C3640()
{
  result = qword_10044CB78;
  if (!qword_10044CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB78);
  }

  return result;
}

unint64_t sub_1001C3698()
{
  result = qword_10044CB80;
  if (!qword_10044CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB80);
  }

  return result;
}

unint64_t sub_1001C36F0()
{
  result = qword_10044CB88;
  if (!qword_10044CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB88);
  }

  return result;
}

unint64_t sub_1001C3748()
{
  result = qword_10044CB90;
  if (!qword_10044CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB90);
  }

  return result;
}

uint64_t sub_1001C379C()
{
  v0 = qword_1004470C8;

  return v0;
}

unint64_t sub_1001C37D8()
{
  result = qword_10044CB98;
  if (!qword_10044CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CB98);
  }

  return result;
}

uint64_t sub_1001C382C()
{
  v0 = sub_10000321C(&qword_100454858, &qword_100351048);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454860, &qword_100351050);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001C32DC();
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

unint64_t sub_1001C39F4()
{
  result = qword_10044CBA0;
  if (!qword_10044CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBA0);
  }

  return result;
}

unint64_t sub_1001C3A4C()
{
  result = qword_10044CBA8;
  if (!qword_10044CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBA8);
  }

  return result;
}

unint64_t sub_1001C3AA4()
{
  result = qword_10044CBB0;
  if (!qword_10044CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBB0);
  }

  return result;
}

uint64_t sub_1001C3AF8()
{
  sub_1002D48C8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001C3BE0(uint64_t a1)
{
  v2 = sub_1001C32DC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001C3C30()
{
  result = qword_10044CBC8;
  if (!qword_10044CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBC8);
  }

  return result;
}

uint64_t sub_1001C3C88(uint64_t a1)
{
  v2 = sub_1001C3AA4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001C3CD8()
{
  result = qword_10044CBD0;
  if (!qword_10044CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBD0);
  }

  return result;
}

uint64_t sub_1001C3D70()
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
  sub_10001EDF0(v7, qword_10051E798);
  sub_10001EDB8(v7, qword_10051E798);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001C3EE0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001C4250()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E7B0);
  sub_10001EDB8(v0, qword_10051E7B0);
  return sub_1002D88F0();
}

uint64_t sub_1001C42B4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E7C8);
  v1 = sub_10001EDB8(v0, qword_10051E7C8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001C4374()
{
  result = swift_getKeyPath();
  qword_10051E7E0 = result;
  return result;
}

uint64_t sub_1001C439C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454830, &qword_100351008) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454838, &qword_100351010);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001C457C, 0, 0);
}

uint64_t sub_1001C457C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001C5738();
  *v4 = v0;
  v4[1] = sub_1001C4660;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FB8, 0, &type metadata for AccessibilitySiriAlwaysListenForEntity, v5);
}

uint64_t sub_1001C4660()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001C475C, 0, 0);
}

uint64_t sub_1001C475C()
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
  if (qword_10043ADE0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E7E0;
  *(v0 + 288) = qword_10051E7E0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454818, &qword_100454820, &qword_100350FF0);
  *v7 = v0;
  v7[1] = sub_1001C48C0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001C48C0()
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
    v6 = sub_1001C4A30;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001C4A30()
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
  sub_1001C3CD8();
  sub_1001C594C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001C4CA8()
{
  v0 = sub_10000321C(&qword_100454840, &qword_100351018);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043ADE0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001C594C();
  sub_10002B6E4(&qword_100454848, &qword_100454840, &qword_100351018);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001C4E1C(uint64_t *a1))(void *)
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

void (*sub_1001C4E90(uint64_t *a1))(void *)
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

unint64_t sub_1001C4F2C()
{
  result = qword_10044CBE8;
  if (!qword_10044CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBE8);
  }

  return result;
}

unint64_t sub_1001C4F84()
{
  result = qword_10044CBF0;
  if (!qword_10044CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBF0);
  }

  return result;
}

uint64_t sub_1001C5080(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001C439C(a1, v5, v4);
}

uint64_t sub_1001C512C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B99A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001C5174()
{
  result = qword_10044CBF8;
  if (!qword_10044CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CBF8);
  }

  return result;
}

unint64_t sub_1001C51CC()
{
  result = qword_10044CC00;
  if (!qword_10044CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC00);
  }

  return result;
}

uint64_t sub_1001C5240()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 alwaysAllowVoiceActivation];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001C5308()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setAlwaysAllowVoiceActivation:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001C53A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001C5430, 0, 0);
}

uint64_t sub_1001C5430()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044CBE0, qword_100320448);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454818, &qword_100454820, &qword_100350FF0);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003FLL;
  v2[1] = 0x8000000100361DA0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001C5580()
{
  result = qword_10044CC08;
  if (!qword_10044CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC08);
  }

  return result;
}

uint64_t sub_1001C55D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001C5BA4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001C5688()
{
  result = qword_10044CC10;
  if (!qword_10044CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC10);
  }

  return result;
}

unint64_t sub_1001C56E0()
{
  result = qword_10044CC18;
  if (!qword_10044CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC18);
  }

  return result;
}

unint64_t sub_1001C5738()
{
  result = qword_10044CC20;
  if (!qword_10044CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC20);
  }

  return result;
}

uint64_t sub_1001C578C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001C5BA4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001C5840(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001C5BA4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001C58F4()
{
  result = qword_10044CC28;
  if (!qword_10044CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC28);
  }

  return result;
}

unint64_t sub_1001C594C()
{
  result = qword_10044CC30;
  if (!qword_10044CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC30);
  }

  return result;
}

uint64_t sub_1001C59E4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001C5580();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001C5A9C()
{
  result = qword_10044CC48;
  if (!qword_10044CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC48);
  }

  return result;
}

unint64_t sub_1001C5AF4()
{
  result = qword_10044CC50;
  if (!qword_10044CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC50);
  }

  return result;
}

unint64_t sub_1001C5B4C()
{
  result = qword_10044CC58;
  if (!qword_10044CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC58);
  }

  return result;
}

unint64_t sub_1001C5BA4()
{
  result = qword_10044CC60;
  if (!qword_10044CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC60);
  }

  return result;
}

uint64_t sub_1001C5BF8()
{
  v0 = qword_1004470D8;

  return v0;
}

unint64_t sub_1001C5C34()
{
  result = qword_10044CC68;
  if (!qword_10044CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC68);
  }

  return result;
}

uint64_t sub_1001C5C88()
{
  v0 = sub_10000321C(&qword_100454808, &qword_100350FD0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454810, &qword_100350FD8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001C5738();
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

unint64_t sub_1001C5E50()
{
  result = qword_10044CC70;
  if (!qword_10044CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC70);
  }

  return result;
}

unint64_t sub_1001C5EA8()
{
  result = qword_10044CC78;
  if (!qword_10044CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC78);
  }

  return result;
}

unint64_t sub_1001C5F00()
{
  result = qword_10044CC80;
  if (!qword_10044CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC80);
  }

  return result;
}

uint64_t sub_1001C5F54()
{
  sub_1002D4874();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001C603C(uint64_t a1)
{
  v2 = sub_1001C5738();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001C608C()
{
  result = qword_10044CC98;
  if (!qword_10044CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CC98);
  }

  return result;
}

uint64_t sub_1001C60E4(uint64_t a1)
{
  v2 = sub_1001C5F00();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001C6134()
{
  result = qword_10044CCA0;
  if (!qword_10044CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCA0);
  }

  return result;
}

uint64_t sub_1001C61CC()
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
  sub_10001EDF0(v7, qword_10051E7E8);
  sub_10001EDB8(v7, qword_10051E7E8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001C633C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001C66AC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E800);
  sub_10001EDB8(v0, qword_10051E800);
  return sub_1002D88F0();
}

uint64_t sub_1001C6710()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E818);
  v1 = sub_10001EDB8(v0, qword_10051E818);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001C67D0()
{
  result = swift_getKeyPath();
  qword_10051E830 = result;
  return result;
}

uint64_t sub_1001C67F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004547E0, &qword_100350F90) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004547E8, &qword_100350F98);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001C69D8, 0, 0);
}

uint64_t sub_1001C69D8()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001C7B94();
  *v4 = v0;
  v4[1] = sub_1001C6ABC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FBC, 0, &type metadata for AccessibilitySiriShowAppsBehindSiriEntity, v5);
}

uint64_t sub_1001C6ABC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001C6BB8, 0, 0);
}

uint64_t sub_1001C6BB8()
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
  if (qword_10043AE00 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E830;
  *(v0 + 288) = qword_10051E830;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004547C8, &qword_1004547D0, &qword_100350F78);
  *v7 = v0;
  v7[1] = sub_1001C6D1C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001C6D1C()
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
    v6 = sub_1001C6E8C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001C6E8C()
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
  sub_1001C6134();
  sub_1001C7DA8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001C7104()
{
  v0 = sub_10000321C(&qword_1004547F0, &qword_100350FA0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AE00 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001C7DA8();
  sub_10002B6E4(&qword_1004547F8, &qword_1004547F0, &qword_100350FA0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001C7278(uint64_t *a1))(void *)
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

void (*sub_1001C72EC(uint64_t *a1))(void *)
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

unint64_t sub_1001C7388()
{
  result = qword_10044CCB8;
  if (!qword_10044CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCB8);
  }

  return result;
}

unint64_t sub_1001C73E0()
{
  result = qword_10044CCC0;
  if (!qword_10044CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCC0);
  }

  return result;
}

uint64_t sub_1001C74DC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001C67F8(a1, v5, v4);
}

uint64_t sub_1001C7588@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B9E0C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001C75D0()
{
  result = qword_10044CCC8;
  if (!qword_10044CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCC8);
  }

  return result;
}

unint64_t sub_1001C7628()
{
  result = qword_10044CCD0;
  if (!qword_10044CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCD0);
  }

  return result;
}

uint64_t sub_1001C769C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 alwaysObscureBackgroundContentWhenActive];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001C7764()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setAlwaysObscureBackgroundContentWhenActive:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001C77FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001C788C, 0, 0);
}

uint64_t sub_1001C788C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044CCB0, qword_100320A80);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004547C8, &qword_1004547D0, &qword_100350F78);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003FLL;
  v2[1] = 0x8000000100361DA0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001C79DC()
{
  result = qword_10044CCD8;
  if (!qword_10044CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCD8);
  }

  return result;
}

uint64_t sub_1001C7A30(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001C8000();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001C7AE4()
{
  result = qword_10044CCE0;
  if (!qword_10044CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCE0);
  }

  return result;
}

unint64_t sub_1001C7B3C()
{
  result = qword_10044CCE8;
  if (!qword_10044CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCE8);
  }

  return result;
}

unint64_t sub_1001C7B94()
{
  result = qword_10044CCF0;
  if (!qword_10044CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCF0);
  }

  return result;
}

uint64_t sub_1001C7BE8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001C8000();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001C7C9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001C8000();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001C7D50()
{
  result = qword_10044CCF8;
  if (!qword_10044CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CCF8);
  }

  return result;
}

unint64_t sub_1001C7DA8()
{
  result = qword_10044CD00;
  if (!qword_10044CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD00);
  }

  return result;
}

uint64_t sub_1001C7E40(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001C79DC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001C7EF8()
{
  result = qword_10044CD18;
  if (!qword_10044CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD18);
  }

  return result;
}

unint64_t sub_1001C7F50()
{
  result = qword_10044CD20;
  if (!qword_10044CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD20);
  }

  return result;
}

unint64_t sub_1001C7FA8()
{
  result = qword_10044CD28;
  if (!qword_10044CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD28);
  }

  return result;
}

unint64_t sub_1001C8000()
{
  result = qword_10044CD30;
  if (!qword_10044CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD30);
  }

  return result;
}

uint64_t sub_1001C8054()
{
  v0 = qword_1004470E8;

  return v0;
}

unint64_t sub_1001C8090()
{
  result = qword_10044CD38;
  if (!qword_10044CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD38);
  }

  return result;
}

uint64_t sub_1001C80E4()
{
  v0 = sub_10000321C(&qword_1004547B8, &qword_100350F58);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004547C0, &qword_100350F60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001C7B94();
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

unint64_t sub_1001C82AC()
{
  result = qword_10044CD40;
  if (!qword_10044CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD40);
  }

  return result;
}

unint64_t sub_1001C8304()
{
  result = qword_10044CD48;
  if (!qword_10044CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD48);
  }

  return result;
}

unint64_t sub_1001C835C()
{
  result = qword_10044CD50;
  if (!qword_10044CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD50);
  }

  return result;
}

uint64_t sub_1001C83B0()
{
  sub_1002D4820();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001C8498(uint64_t a1)
{
  v2 = sub_1001C7B94();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001C84E8()
{
  result = qword_10044CD68;
  if (!qword_10044CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD68);
  }

  return result;
}

uint64_t sub_1001C8540(uint64_t a1)
{
  v2 = sub_1001C835C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001C8590()
{
  result = qword_10044CD70;
  if (!qword_10044CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD70);
  }

  return result;
}

uint64_t sub_1001C8628()
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
  sub_10001EDF0(v7, qword_10051E838);
  sub_10001EDB8(v7, qword_10051E838);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001C8798@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001C8B08()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E850);
  sub_10001EDB8(v0, qword_10051E850);
  return sub_1002D88F0();
}

uint64_t sub_1001C8B6C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E868);
  v1 = sub_10001EDB8(v0, qword_10051E868);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001C8C2C()
{
  result = swift_getKeyPath();
  qword_10051E880 = result;
  return result;
}

uint64_t sub_1001C8C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454790, &qword_100350F18) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454798, &qword_100350F20);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001C8E34, 0, 0);
}

uint64_t sub_1001C8E34()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001C9FEC();
  *v4 = v0;
  v4[1] = sub_1001C8F18;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FC0, 0, &type metadata for AccessibilitySiriAnnounceNotificationsOnSpeakerEntity, v5);
}

uint64_t sub_1001C8F18()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001C9014, 0, 0);
}

uint64_t sub_1001C9014()
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
  if (qword_10043AE20 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E880;
  *(v0 + 288) = qword_10051E880;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454778, &qword_100454780, &qword_100350F00);
  *v7 = v0;
  v7[1] = sub_1001C9178;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001C9178()
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
    v6 = sub_1001C92E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001C92E8()
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
  sub_1001C8590();
  sub_1001CA200();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001C9560()
{
  v0 = sub_10000321C(&qword_1004547A0, &qword_100350F28);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AE20 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001CA200();
  sub_10002B6E4(&qword_1004547A8, &qword_1004547A0, &qword_100350F28);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001C96D4(uint64_t *a1))(void *)
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

void (*sub_1001C9748(uint64_t *a1))(void *)
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

unint64_t sub_1001C97E4()
{
  result = qword_10044CD88;
  if (!qword_10044CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD88);
  }

  return result;
}

unint64_t sub_1001C983C()
{
  result = qword_10044CD90;
  if (!qword_10044CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD90);
  }

  return result;
}

uint64_t sub_1001C9938(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001C8C54(a1, v5, v4);
}

uint64_t sub_1001C99E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BA274();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001C9A2C()
{
  result = qword_10044CD98;
  if (!qword_10044CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CD98);
  }

  return result;
}

unint64_t sub_1001C9A84()
{
  result = qword_10044CDA0;
  if (!qword_10044CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDA0);
  }

  return result;
}

uint64_t sub_1001C9AF8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 announceNotificationsOnBuiltInSpeakerEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001C9BC0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setAnnounceNotificationsOnBuiltInSpeakerEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001C9C58(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001C9CE8, 0, 0);
}

uint64_t sub_1001C9CE8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044CD80, qword_1003210B8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454778, &qword_100454780, &qword_100350F00);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003ELL;
  v2[1] = 0x8000000100361C30;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001C9E34()
{
  result = qword_10044CDA8;
  if (!qword_10044CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDA8);
  }

  return result;
}

uint64_t sub_1001C9E88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001CA458();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001C9F3C()
{
  result = qword_10044CDB0;
  if (!qword_10044CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDB0);
  }

  return result;
}

unint64_t sub_1001C9F94()
{
  result = qword_10044CDB8;
  if (!qword_10044CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDB8);
  }

  return result;
}

unint64_t sub_1001C9FEC()
{
  result = qword_10044CDC0;
  if (!qword_10044CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDC0);
  }

  return result;
}

uint64_t sub_1001CA040(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001CA458();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001CA0F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001CA458();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001CA1A8()
{
  result = qword_10044CDC8;
  if (!qword_10044CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDC8);
  }

  return result;
}

unint64_t sub_1001CA200()
{
  result = qword_10044CDD0;
  if (!qword_10044CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDD0);
  }

  return result;
}

uint64_t sub_1001CA298(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001C9E34();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001CA350()
{
  result = qword_10044CDE8;
  if (!qword_10044CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDE8);
  }

  return result;
}

unint64_t sub_1001CA3A8()
{
  result = qword_10044CDF0;
  if (!qword_10044CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDF0);
  }

  return result;
}

unint64_t sub_1001CA400()
{
  result = qword_10044CDF8;
  if (!qword_10044CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CDF8);
  }

  return result;
}

unint64_t sub_1001CA458()
{
  result = qword_10044CE00;
  if (!qword_10044CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE00);
  }

  return result;
}

uint64_t sub_1001CA4AC()
{
  v0 = qword_1004470F8;

  return v0;
}

unint64_t sub_1001CA4E8()
{
  result = qword_10044CE08;
  if (!qword_10044CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE08);
  }

  return result;
}

uint64_t sub_1001CA53C()
{
  v0 = sub_10000321C(&qword_100454768, &qword_100350EE0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454770, &qword_100350EE8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001C9FEC();
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

unint64_t sub_1001CA704()
{
  result = qword_10044CE10;
  if (!qword_10044CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE10);
  }

  return result;
}

unint64_t sub_1001CA75C()
{
  result = qword_10044CE18;
  if (!qword_10044CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE18);
  }

  return result;
}

unint64_t sub_1001CA7B4()
{
  result = qword_10044CE20;
  if (!qword_10044CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE20);
  }

  return result;
}

uint64_t sub_1001CA808()
{
  sub_1002D47CC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001CA8F0(uint64_t a1)
{
  v2 = sub_1001C9FEC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001CA940()
{
  result = qword_10044CE38;
  if (!qword_10044CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE38);
  }

  return result;
}

uint64_t sub_1001CA998(uint64_t a1)
{
  v2 = sub_1001CA7B4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001CA9E8()
{
  result = qword_10044CE40;
  if (!qword_10044CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE40);
  }

  return result;
}

uint64_t sub_1001CAAA8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001CAE20()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E8A0);
  sub_10001EDB8(v0, qword_10051E8A0);
  return sub_1002D88F0();
}

uint64_t sub_1001CAE84()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E8B8);
  v1 = sub_10001EDB8(v0, qword_10051E8B8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001CAF44()
{
  result = swift_getKeyPath();
  qword_10051E8D0 = result;
  return result;
}

uint64_t sub_1001CAF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454740, &qword_100350EA0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454748, &qword_100350EA8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001CB14C, 0, 0);
}

uint64_t sub_1001CB14C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001CC28C();
  *v4 = v0;
  v4[1] = sub_1001CB230;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FC4, 0, &type metadata for AccessibilitySiriCallHangUpEntity, v5);
}

uint64_t sub_1001CB230()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001CB32C, 0, 0);
}

uint64_t sub_1001CB32C()
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
  if (qword_10043AE40 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E8D0;
  *(v0 + 288) = qword_10051E8D0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454728, &qword_100454730, &qword_100350E88);
  *v7 = v0;
  v7[1] = sub_1001CB490;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001CB490()
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
    v6 = sub_1001CB600;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001CB600()
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
  sub_1001CA9E8();
  sub_1001CC4A0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001CB878()
{
  v0 = sub_10000321C(&qword_100454750, &qword_100350EB0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AE40 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001CC4A0();
  sub_10002B6E4(&qword_100454758, &qword_100454750, &qword_100350EB0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001CB9EC(uint64_t *a1))(void *)
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

void (*sub_1001CBA60(uint64_t *a1))(void *)
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

unint64_t sub_1001CBAFC()
{
  result = qword_10044CE58;
  if (!qword_10044CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE58);
  }

  return result;
}

unint64_t sub_1001CBB54()
{
  result = qword_10044CE60;
  if (!qword_10044CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE60);
  }

  return result;
}

uint64_t sub_1001CBC50(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001CAF6C(a1, v5, v4);
}

uint64_t sub_1001CBCFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BA6DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001CBD44()
{
  result = qword_10044CE68;
  if (!qword_10044CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE68);
  }

  return result;
}

unint64_t sub_1001CBD9C()
{
  result = qword_10044CE70;
  if (!qword_10044CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE70);
  }

  return result;
}

uint64_t sub_1001CBE10()
{
  v1 = *(v0 + 16);
  *v1 = AXGetSiriCallHangUpValue();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001CBE9C()
{
  v1 = *(v0 + 16);
  AXSetSiriCallHangUpValue();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001CBF00(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001CBF90, 0, 0);
}

uint64_t sub_1001CBF90()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044CE50, qword_1003216F0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454728, &qword_100454730, &qword_100350E88);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003ELL;
  v2[1] = 0x8000000100361C30;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001CC0D4()
{
  result = qword_10044CE78;
  if (!qword_10044CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE78);
  }

  return result;
}

uint64_t sub_1001CC128(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001CC6F8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001CC1DC()
{
  result = qword_10044CE80;
  if (!qword_10044CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE80);
  }

  return result;
}

unint64_t sub_1001CC234()
{
  result = qword_10044CE88;
  if (!qword_10044CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE88);
  }

  return result;
}

unint64_t sub_1001CC28C()
{
  result = qword_10044CE90;
  if (!qword_10044CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE90);
  }

  return result;
}

uint64_t sub_1001CC2E0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001CC6F8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001CC394(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001CC6F8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001CC448()
{
  result = qword_10044CE98;
  if (!qword_10044CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CE98);
  }

  return result;
}

unint64_t sub_1001CC4A0()
{
  result = qword_10044CEA0;
  if (!qword_10044CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CEA0);
  }

  return result;
}

uint64_t sub_1001CC538(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001CC0D4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001CC5F0()
{
  result = qword_10044CEB8;
  if (!qword_10044CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CEB8);
  }

  return result;
}

unint64_t sub_1001CC648()
{
  result = qword_10044CEC0;
  if (!qword_10044CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CEC0);
  }

  return result;
}

unint64_t sub_1001CC6A0()
{
  result = qword_10044CEC8;
  if (!qword_10044CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CEC8);
  }

  return result;
}

unint64_t sub_1001CC6F8()
{
  result = qword_10044CED0;
  if (!qword_10044CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CED0);
  }

  return result;
}

uint64_t sub_1001CC74C()
{
  v0 = qword_100447108;

  return v0;
}

unint64_t sub_1001CC788()
{
  result = qword_10044CED8;
  if (!qword_10044CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CED8);
  }

  return result;
}

uint64_t sub_1001CC7DC()
{
  v0 = sub_10000321C(&qword_100454718, &qword_100350E68);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454720, &qword_100350E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001CC28C();
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

unint64_t sub_1001CC9A4()
{
  result = qword_10044CEE0;
  if (!qword_10044CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CEE0);
  }

  return result;
}

unint64_t sub_1001CC9FC()
{
  result = qword_10044CEE8;
  if (!qword_10044CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CEE8);
  }

  return result;
}

unint64_t sub_1001CCA54()
{
  result = qword_10044CEF0;
  if (!qword_10044CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CEF0);
  }

  return result;
}

uint64_t sub_1001CCAA8()
{
  sub_1002D4778();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001CCB90(uint64_t a1)
{
  v2 = sub_1001CC28C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001CCBE0()
{
  result = qword_10044CF08;
  if (!qword_10044CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF08);
  }

  return result;
}

uint64_t sub_1001CCC38(uint64_t a1)
{
  v2 = sub_1001CCA54();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001CCC88()
{
  result = qword_10044CF10;
  if (!qword_10044CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF10);
  }

  return result;
}

uint64_t sub_1001CCD4C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001CD0C8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E8F0);
  sub_10001EDB8(v0, qword_10051E8F0);
  return sub_1002D88F0();
}

uint64_t sub_1001CD12C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E908);
  v1 = sub_10001EDB8(v0, qword_10051E908);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001CD1EC()
{
  result = swift_getKeyPath();
  qword_10051E920 = result;
  return result;
}

uint64_t sub_1001CD214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004546F0, &qword_100350E28) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004546F8, &qword_100350E30);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001CD3F4, 0, 0);
}

uint64_t sub_1001CD3F4()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001CE574();
  *v4 = v0;
  v4[1] = sub_1001CD4D8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FC8, 0, &type metadata for AccessibilitySiriSpokenResponsesEntity, v5);
}

uint64_t sub_1001CD4D8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001CD5D4, 0, 0);
}

uint64_t sub_1001CD5D4()
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
  if (qword_10043AE60 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E920;
  v0[36] = qword_10051E920;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_1004546D0, &qword_1004546D8, &qword_100350E08);
  *v7 = v0;
  v7[1] = sub_1001CD730;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXSiriSpokenResponsesAppEnum, v8);
}

uint64_t sub_1001CD730()
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
    v6 = sub_1001CD8A0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001CD8A0()
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
  sub_1001CCC88();
  sub_1001CE788();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001CDB18()
{
  v0 = sub_10000321C(&qword_100454700, &qword_100350E38);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AE60 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001CE788();
  sub_10002B6E4(&qword_100454708, &qword_100454700, &qword_100350E38);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001CDC8C(uint64_t *a1))(void *)
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

void (*sub_1001CDD00(uint64_t *a1))(void *)
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

unint64_t sub_1001CDD9C()
{
  result = qword_10044CF28;
  if (!qword_10044CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF28);
  }

  return result;
}

unint64_t sub_1001CDDF4()
{
  result = qword_10044CF30;
  if (!qword_10044CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF30);
  }

  return result;
}

uint64_t sub_1001CDEF0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001CD214(a1, v5, v4);
}

uint64_t sub_1001CDF9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BAB44();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001CDFE4()
{
  result = qword_10044CF38;
  if (!qword_10044CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF38);
  }

  return result;
}

uint64_t sub_1001CE05C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 useDeviceSpeakerForTTS];

  if (v3 == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 2;
  }

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001CE138()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedPreferences];
  [v2 setUseDeviceSpeakerForTTS:v1 + 1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001CE1D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001CE260, 0, 0);
}

uint64_t sub_1001CE260()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044CF20, &qword_100321D28);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004546D0, &qword_1004546D8, &qword_100350E08);
  sub_10001CF4C();
  v3 = sub_1002D8890();
  *v2 = 0xD00000000000002BLL;
  v2[1] = 0x80000001003793D0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001CE3BC()
{
  result = qword_10044CF40;
  if (!qword_10044CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF40);
  }

  return result;
}

uint64_t sub_1001CE410(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001CE9E0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001CE4C4()
{
  result = qword_10044CF48;
  if (!qword_10044CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF48);
  }

  return result;
}

unint64_t sub_1001CE51C()
{
  result = qword_10044CF50;
  if (!qword_10044CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF50);
  }

  return result;
}

unint64_t sub_1001CE574()
{
  result = qword_10044CF58;
  if (!qword_10044CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF58);
  }

  return result;
}

uint64_t sub_1001CE5C8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001CE9E0();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001CE67C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001CE9E0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001CE730()
{
  result = qword_10044CF60;
  if (!qword_10044CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF60);
  }

  return result;
}

unint64_t sub_1001CE788()
{
  result = qword_10044CF68;
  if (!qword_10044CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF68);
  }

  return result;
}

uint64_t sub_1001CE820(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001CE3BC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001CE8D8()
{
  result = qword_10044CF80;
  if (!qword_10044CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF80);
  }

  return result;
}

unint64_t sub_1001CE930()
{
  result = qword_10044CF88;
  if (!qword_10044CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF88);
  }

  return result;
}

unint64_t sub_1001CE988()
{
  result = qword_10044CF90;
  if (!qword_10044CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF90);
  }

  return result;
}

unint64_t sub_1001CE9E0()
{
  result = qword_10044CF98;
  if (!qword_10044CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CF98);
  }

  return result;
}

uint64_t sub_1001CEA34()
{
  v0 = qword_100447118;

  return v0;
}

unint64_t sub_1001CEA70()
{
  result = qword_10044CFA0;
  if (!qword_10044CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFA0);
  }

  return result;
}

uint64_t sub_1001CEAC4()
{
  v0 = sub_10000321C(&qword_1004546C0, &qword_100350DE8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004546C8, &qword_100350DF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001CE574();
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

unint64_t sub_1001CEC8C()
{
  result = qword_10044CFA8;
  if (!qword_10044CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFA8);
  }

  return result;
}

unint64_t sub_1001CECE4()
{
  result = qword_10044CFB0;
  if (!qword_10044CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFB0);
  }

  return result;
}

unint64_t sub_1001CED3C()
{
  result = qword_10044CFB8;
  if (!qword_10044CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFB8);
  }

  return result;
}

uint64_t sub_1001CED90()
{
  sub_1002D4724();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001CEE78(uint64_t a1)
{
  v2 = sub_1001CE574();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001CEEC8()
{
  result = qword_10044CFD0;
  if (!qword_10044CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFD0);
  }

  return result;
}

uint64_t sub_1001CEF20(uint64_t a1)
{
  v2 = sub_1001CED3C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001CEF70()
{
  result = qword_10044CFD8;
  if (!qword_10044CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFD8);
  }

  return result;
}

uint64_t sub_1001CF034@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001CF3B0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E940);
  sub_10001EDB8(v0, qword_10051E940);
  return sub_1002D88F0();
}

uint64_t sub_1001CF414()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E958);
  v1 = sub_10001EDB8(v0, qword_10051E958);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001CF4D4()
{
  result = swift_getKeyPath();
  qword_10051E970 = result;
  return result;
}

uint64_t sub_1001CF4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454698, &qword_100350DA8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004546A0, &qword_100350DB0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001CF6DC, 0, 0);
}

uint64_t sub_1001CF6DC()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001D0828();
  *v4 = v0;
  v4[1] = sub_1001CF7C0;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FCC, 0, &type metadata for AccessibilitySpeakSelectionEnabledEntity, v5);
}

uint64_t sub_1001CF7C0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001CF8BC, 0, 0);
}

uint64_t sub_1001CF8BC()
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
  if (qword_10043AE80 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E970;
  *(v0 + 288) = qword_10051E970;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454680, &qword_100454688, &qword_100350D90);
  *v7 = v0;
  v7[1] = sub_1001CFA20;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001CFA20()
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
    v6 = sub_1001CFB90;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001CFB90()
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
  sub_1001CEF70();
  sub_1001D0A3C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001CFE08()
{
  v0 = sub_10000321C(&qword_1004546A8, &qword_100350DB8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AE80 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001D0A3C();
  sub_10002B6E4(&qword_1004546B0, &qword_1004546A8, &qword_100350DB8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001CFF7C(uint64_t *a1))(void *)
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

void (*sub_1001CFFF0(uint64_t *a1))(void *)
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

unint64_t sub_1001D008C()
{
  result = qword_10044CFF0;
  if (!qword_10044CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFF0);
  }

  return result;
}

unint64_t sub_1001D00E4()
{
  result = qword_10044CFF8;
  if (!qword_10044CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044CFF8);
  }

  return result;
}

uint64_t sub_1001D01E0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001CF4FC(a1, v5, v4);
}

uint64_t sub_1001D028C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BAF48();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001D02D4()
{
  result = qword_10044D000;
  if (!qword_10044D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D000);
  }

  return result;
}

unint64_t sub_1001D032C()
{
  result = qword_10044D008;
  if (!qword_10044D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D008);
  }

  return result;
}

uint64_t sub_1001D03A0()
{
  v1 = *(v0 + 16);
  *v1 = _AXSQuickSpeakEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D0434()
{
  v1 = *(v0 + 16);
  _AXSQuickSpeakSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D0498(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001D0528, 0, 0);
}

uint64_t sub_1001D0528()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044CFE8, qword_100322360);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454680, &qword_100454688, &qword_100350D90);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000002DLL;
  v2[1] = 0x800000010035B580;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001D0670()
{
  result = qword_10044D010;
  if (!qword_10044D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D010);
  }

  return result;
}

uint64_t sub_1001D06C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001D0C94();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001D0778()
{
  result = qword_10044D018;
  if (!qword_10044D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D018);
  }

  return result;
}

unint64_t sub_1001D07D0()
{
  result = qword_10044D020;
  if (!qword_10044D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D020);
  }

  return result;
}

unint64_t sub_1001D0828()
{
  result = qword_10044D028;
  if (!qword_10044D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D028);
  }

  return result;
}

uint64_t sub_1001D087C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001D0C94();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001D0930(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001D0C94();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001D09E4()
{
  result = qword_10044D030;
  if (!qword_10044D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D030);
  }

  return result;
}

unint64_t sub_1001D0A3C()
{
  result = qword_10044D038;
  if (!qword_10044D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D038);
  }

  return result;
}

uint64_t sub_1001D0AD4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001D0670();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001D0B8C()
{
  result = qword_10044D050;
  if (!qword_10044D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D050);
  }

  return result;
}

unint64_t sub_1001D0BE4()
{
  result = qword_10044D058;
  if (!qword_10044D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D058);
  }

  return result;
}

unint64_t sub_1001D0C3C()
{
  result = qword_10044D060;
  if (!qword_10044D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D060);
  }

  return result;
}

unint64_t sub_1001D0C94()
{
  result = qword_10044D068;
  if (!qword_10044D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D068);
  }

  return result;
}

uint64_t sub_1001D0CE8()
{
  v0 = qword_100447128;

  return v0;
}

unint64_t sub_1001D0D24()
{
  result = qword_10044D070;
  if (!qword_10044D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D070);
  }

  return result;
}

uint64_t sub_1001D0D78()
{
  v0 = sub_10000321C(&qword_100454670, &qword_100350D70);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454678, &qword_100350D78);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001D0828();
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

unint64_t sub_1001D0F40()
{
  result = qword_10044D078;
  if (!qword_10044D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D078);
  }

  return result;
}

unint64_t sub_1001D0F98()
{
  result = qword_10044D080;
  if (!qword_10044D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D080);
  }

  return result;
}

unint64_t sub_1001D0FF0()
{
  result = qword_10044D088;
  if (!qword_10044D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D088);
  }

  return result;
}

uint64_t sub_1001D1044()
{
  sub_1002D46D0();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001D112C(uint64_t a1)
{
  v2 = sub_1001D0828();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001D117C()
{
  result = qword_10044D0A0;
  if (!qword_10044D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0A0);
  }

  return result;
}

uint64_t sub_1001D11D4(uint64_t a1)
{
  v2 = sub_1001D0FF0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001D1224()
{
  result = qword_10044D0A8;
  if (!qword_10044D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0A8);
  }

  return result;
}

uint64_t sub_1001D12E4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001D1668()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E990);
  sub_10001EDB8(v0, qword_10051E990);
  return sub_1002D88F0();
}

uint64_t sub_1001D16CC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E9A8);
  v1 = sub_10001EDB8(v0, qword_10051E9A8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001D178C()
{
  result = swift_getKeyPath();
  qword_10051E9C0 = result;
  return result;
}

uint64_t sub_1001D17B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454648, &qword_100350D30) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454650, &qword_100350D38);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001D1994, 0, 0);
}

uint64_t sub_1001D1994()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001D2ADC();
  *v4 = v0;
  v4[1] = sub_1001D1A78;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FD0, 0, &type metadata for AccessibilitySpokenContentEnabledEntity, v5);
}

uint64_t sub_1001D1A78()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001D1B74, 0, 0);
}

uint64_t sub_1001D1B74()
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
  if (qword_10043AEA0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E9C0;
  *(v0 + 288) = qword_10051E9C0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454630, &qword_100454638, &qword_100350D18);
  *v7 = v0;
  v7[1] = sub_1001D1CD8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001D1CD8()
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
    v6 = sub_1001D1E48;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001D1E48()
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
  sub_1001D1224();
  sub_1001D2CF0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001D20C0()
{
  v0 = sub_10000321C(&qword_100454658, &qword_100350D40);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AEA0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001D2CF0();
  sub_10002B6E4(&qword_100454660, &qword_100454658, &qword_100350D40);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001D2234(uint64_t *a1))(void *)
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

void (*sub_1001D22A8(uint64_t *a1))(void *)
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

unint64_t sub_1001D2344()
{
  result = qword_10044D0C0;
  if (!qword_10044D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0C0);
  }

  return result;
}

unint64_t sub_1001D239C()
{
  result = qword_10044D0C8;
  if (!qword_10044D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0C8);
  }

  return result;
}

uint64_t sub_1001D2498(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001D17B4(a1, v5, v4);
}

uint64_t sub_1001D2544@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BB3B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001D258C()
{
  result = qword_10044D0D0;
  if (!qword_10044D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0D0);
  }

  return result;
}

unint64_t sub_1001D25E4()
{
  result = qword_10044D0D8;
  if (!qword_10044D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0D8);
  }

  return result;
}

uint64_t sub_1001D2658()
{
  v1 = *(v0 + 16);
  *v1 = _AXSSpeakThisEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D26EC()
{
  v1 = *(v0 + 16);
  _AXSSetSpeakThisEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D2750(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001D27E0, 0, 0);
}

uint64_t sub_1001D27E0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044D0B8, qword_100322998);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454630, &qword_100454638, &qword_100350D18);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000029;
  v2[1] = 0x800000010035B600;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001D2924()
{
  result = qword_10044D0E0;
  if (!qword_10044D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0E0);
  }

  return result;
}

uint64_t sub_1001D2978(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001D2F48();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001D2A2C()
{
  result = qword_10044D0E8;
  if (!qword_10044D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0E8);
  }

  return result;
}

unint64_t sub_1001D2A84()
{
  result = qword_10044D0F0;
  if (!qword_10044D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0F0);
  }

  return result;
}

unint64_t sub_1001D2ADC()
{
  result = qword_10044D0F8;
  if (!qword_10044D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D0F8);
  }

  return result;
}

uint64_t sub_1001D2B30(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001D2F48();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001D2BE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001D2F48();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001D2C98()
{
  result = qword_10044D100;
  if (!qword_10044D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D100);
  }

  return result;
}

unint64_t sub_1001D2CF0()
{
  result = qword_10044D108;
  if (!qword_10044D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D108);
  }

  return result;
}

uint64_t sub_1001D2D88(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001D2924();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001D2E40()
{
  result = qword_10044D120;
  if (!qword_10044D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D120);
  }

  return result;
}

unint64_t sub_1001D2E98()
{
  result = qword_10044D128;
  if (!qword_10044D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D128);
  }

  return result;
}

unint64_t sub_1001D2EF0()
{
  result = qword_10044D130;
  if (!qword_10044D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D130);
  }

  return result;
}

unint64_t sub_1001D2F48()
{
  result = qword_10044D138;
  if (!qword_10044D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D138);
  }

  return result;
}

uint64_t sub_1001D2F9C()
{
  v0 = qword_100447138;

  return v0;
}

unint64_t sub_1001D2FD8()
{
  result = qword_10044D140;
  if (!qword_10044D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D140);
  }

  return result;
}

uint64_t sub_1001D302C()
{
  v0 = sub_10000321C(&qword_100454620, &qword_100350CF8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454628, &qword_100350D00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001D2ADC();
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

unint64_t sub_1001D31F4()
{
  result = qword_10044D148;
  if (!qword_10044D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D148);
  }

  return result;
}

unint64_t sub_1001D324C()
{
  result = qword_10044D150;
  if (!qword_10044D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D150);
  }

  return result;
}

unint64_t sub_1001D32A4()
{
  result = qword_10044D158;
  if (!qword_10044D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D158);
  }

  return result;
}

uint64_t sub_1001D32F8()
{
  sub_1002D467C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001D33E0(uint64_t a1)
{
  v2 = sub_1001D2ADC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001D3430()
{
  result = qword_10044D170;
  if (!qword_10044D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D170);
  }

  return result;
}

uint64_t sub_1001D3488(uint64_t a1)
{
  v2 = sub_1001D32A4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001D34D8()
{
  result = qword_10044D178;
  if (!qword_10044D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D178);
  }

  return result;
}

uint64_t sub_1001D3594()
{
  result = swift_getKeyPath();
  qword_10051EA10 = result;
  return result;
}

uint64_t sub_1001D35BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004545F8, &qword_100350CB8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454600, &qword_100350CC0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001D379C, 0, 0);
}

uint64_t sub_1001D379C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001D4978();
  *v4 = v0;
  v4[1] = sub_1001D3880;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FD4, 0, &type metadata for AccessibilityDetectLanguagesEnabledEntity, v5);
}

uint64_t sub_1001D3880()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001D397C, 0, 0);
}

uint64_t sub_1001D397C()
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
  if (qword_10043AEC0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EA10;
  *(v0 + 288) = qword_10051EA10;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004545E0, &qword_1004545E8, &qword_100350CA0);
  *v7 = v0;
  v7[1] = sub_1001D3AE0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001D3AE0()
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
    v6 = sub_1001D3C50;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001D3C50()
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
  sub_1001D34D8();
  sub_1001D4B8C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001D3EC8()
{
  v0 = sub_10000321C(&qword_100454608, &qword_100350CC8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AEC0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001D4B8C();
  sub_10002B6E4(&qword_100454610, &qword_100454608, &qword_100350CC8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001D403C(uint64_t *a1))(void *)
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

void (*sub_1001D40B0(uint64_t *a1))(void *)
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

unint64_t sub_1001D414C()
{
  result = qword_10044D190;
  if (!qword_10044D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D190);
  }

  return result;
}

unint64_t sub_1001D41A4()
{
  result = qword_10044D198;
  if (!qword_10044D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D198);
  }

  return result;
}

uint64_t sub_1001D42A0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001D35BC(a1, v5, v4);
}

uint64_t sub_1001D434C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CB694(&qword_1004545F0, &qword_100350CA8, sub_1001D4978);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001D43B8()
{
  result = qword_10044D1A0;
  if (!qword_10044D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1A0);
  }

  return result;
}

unint64_t sub_1001D4410()
{
  result = qword_10044D1A8;
  if (!qword_10044D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1A8);
  }

  return result;
}

uint64_t sub_1001D4484()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 spokenContentShouldUseLanguageDetection];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001D454C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setSpokenContentShouldUseLanguageDetection:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001D45E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001D4674, 0, 0);
}

uint64_t sub_1001D4674()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044D188, qword_100322FD0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004545E0, &qword_1004545E8, &qword_100350CA0);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003CLL;
  v2[1] = 0x8000000100379180;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001D47C0()
{
  result = qword_10044D1B0;
  if (!qword_10044D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1B0);
  }

  return result;
}

uint64_t sub_1001D4814(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001D4DE4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001D48C8()
{
  result = qword_10044D1B8;
  if (!qword_10044D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1B8);
  }

  return result;
}

unint64_t sub_1001D4920()
{
  result = qword_10044D1C0;
  if (!qword_10044D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1C0);
  }

  return result;
}

unint64_t sub_1001D4978()
{
  result = qword_10044D1C8;
  if (!qword_10044D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1C8);
  }

  return result;
}

uint64_t sub_1001D49CC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001D4DE4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001D4A80(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001D4DE4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001D4B34()
{
  result = qword_10044D1D0;
  if (!qword_10044D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1D0);
  }

  return result;
}

unint64_t sub_1001D4B8C()
{
  result = qword_10044D1D8;
  if (!qword_10044D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1D8);
  }

  return result;
}

uint64_t sub_1001D4C24(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001D47C0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001D4CDC()
{
  result = qword_10044D1F0;
  if (!qword_10044D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1F0);
  }

  return result;
}

unint64_t sub_1001D4D34()
{
  result = qword_10044D1F8;
  if (!qword_10044D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D1F8);
  }

  return result;
}

unint64_t sub_1001D4D8C()
{
  result = qword_10044D200;
  if (!qword_10044D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D200);
  }

  return result;
}

unint64_t sub_1001D4DE4()
{
  result = qword_10044D208;
  if (!qword_10044D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D208);
  }

  return result;
}

uint64_t sub_1001D4E38()
{
  v0 = qword_100447148;

  return v0;
}

unint64_t sub_1001D4E74()
{
  result = qword_10044D210;
  if (!qword_10044D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D210);
  }

  return result;
}

uint64_t sub_1001D4EC8()
{
  v0 = sub_10000321C(&qword_1004545D0, &qword_100350C80);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004545D8, &qword_100350C88);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001D4978();
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

unint64_t sub_1001D5090()
{
  result = qword_10044D218;
  if (!qword_10044D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D218);
  }

  return result;
}

unint64_t sub_1001D50E8()
{
  result = qword_10044D220;
  if (!qword_10044D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D220);
  }

  return result;
}

unint64_t sub_1001D5140()
{
  result = qword_10044D228;
  if (!qword_10044D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D228);
  }

  return result;
}

uint64_t sub_1001D5194()
{
  sub_1002D4628();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001D527C(uint64_t a1)
{
  v2 = sub_1001D4978();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001D52CC()
{
  result = qword_10044D240;
  if (!qword_10044D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D240);
  }

  return result;
}

uint64_t sub_1001D5338(uint64_t a1)
{
  v2 = sub_1001D5140();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001D5388()
{
  result = qword_10044D248;
  if (!qword_10044D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D248);
  }

  return result;
}

uint64_t sub_1001D5420()
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
  sub_10001EDF0(v7, qword_10051EA18);
  sub_10001EDB8(v7, qword_10051EA18);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001D5590@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001D5900()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EA30);
  sub_10001EDB8(v0, qword_10051EA30);
  return sub_1002D88F0();
}

uint64_t sub_1001D5964()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EA48);
  v1 = sub_10001EDB8(v0, qword_10051EA48);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001D5A24()
{
  result = swift_getKeyPath();
  qword_10051EA60 = result;
  return result;
}

uint64_t sub_1001D5A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004545A8, &qword_100350C40) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004545B0, &qword_100350C48);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001D5C2C, 0, 0);
}

uint64_t sub_1001D5C2C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001D6D7C();
  *v4 = v0;
  v4[1] = sub_1001D5D10;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FD8, 0, &type metadata for AccessibilityClosedCaptionsEnabledEntity, v5);
}

uint64_t sub_1001D5D10()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001D5E0C, 0, 0);
}

uint64_t sub_1001D5E0C()
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
  if (qword_10043AEE0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EA60;
  *(v0 + 288) = qword_10051EA60;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454590, &qword_100454598, &qword_100350C28);
  *v7 = v0;
  v7[1] = sub_1001D5F70;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001D5F70()
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
    v6 = sub_1001D60E0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001D60E0()
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
  sub_1001D5388();
  sub_1001D6F90();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001D6358()
{
  v0 = sub_10000321C(&qword_1004545B8, &qword_100350C50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AEE0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001D6F90();
  sub_10002B6E4(&qword_1004545C0, &qword_1004545B8, &qword_100350C50);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001D64CC(uint64_t *a1))(void *)
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

void (*sub_1001D6540(uint64_t *a1))(void *)
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

unint64_t sub_1001D65DC()
{
  result = qword_10044D260;
  if (!qword_10044D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D260);
  }

  return result;
}

unint64_t sub_1001D6634()
{
  result = qword_10044D268;
  if (!qword_10044D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D268);
  }

  return result;
}

uint64_t sub_1001D6730(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001D5A4C(a1, v5, v4);
}

uint64_t sub_1001D67DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BB818();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001D6824()
{
  result = qword_10044D270;
  if (!qword_10044D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D270);
  }

  return result;
}

unint64_t sub_1001D687C()
{
  result = qword_10044D278;
  if (!qword_10044D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D278);
  }

  return result;
}

uint64_t sub_1001D68F0()
{
  v1 = *(v0 + 16);
  *v1 = _AXSClosedCaptionsEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D6984()
{
  v1 = *(v0 + 16);
  _AXSClosedCaptionsSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D69E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001D6A78, 0, 0);
}

uint64_t sub_1001D6A78()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044D258, qword_100323608);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454590, &qword_100454598, &qword_100350C28);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001FLL;
  v2[1] = 0x80000001003605F0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001D6BC4()
{
  result = qword_10044D280;
  if (!qword_10044D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D280);
  }

  return result;
}

uint64_t sub_1001D6C18(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001D71E8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001D6CCC()
{
  result = qword_10044D288;
  if (!qword_10044D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D288);
  }

  return result;
}

unint64_t sub_1001D6D24()
{
  result = qword_10044D290;
  if (!qword_10044D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D290);
  }

  return result;
}

unint64_t sub_1001D6D7C()
{
  result = qword_10044D298;
  if (!qword_10044D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D298);
  }

  return result;
}

uint64_t sub_1001D6DD0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001D71E8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001D6E84(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001D71E8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001D6F38()
{
  result = qword_10044D2A0;
  if (!qword_10044D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D2A0);
  }

  return result;
}

unint64_t sub_1001D6F90()
{
  result = qword_10044D2A8;
  if (!qword_10044D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D2A8);
  }

  return result;
}

uint64_t sub_1001D7028(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001D6BC4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001D70E0()
{
  result = qword_10044D2C0;
  if (!qword_10044D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D2C0);
  }

  return result;
}

unint64_t sub_1001D7138()
{
  result = qword_10044D2C8;
  if (!qword_10044D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D2C8);
  }

  return result;
}

unint64_t sub_1001D7190()
{
  result = qword_10044D2D0;
  if (!qword_10044D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D2D0);
  }

  return result;
}

unint64_t sub_1001D71E8()
{
  result = qword_10044D2D8;
  if (!qword_10044D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D2D8);
  }

  return result;
}

uint64_t sub_1001D723C()
{
  v0 = qword_100447158;

  return v0;
}

unint64_t sub_1001D7278()
{
  result = qword_10044D2E0;
  if (!qword_10044D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D2E0);
  }

  return result;
}

uint64_t sub_1001D72CC()
{
  v0 = sub_10000321C(&qword_100454580, &qword_100350C08);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454588, &qword_100350C10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001D6D7C();
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

unint64_t sub_1001D7494()
{
  result = qword_10044D2E8;
  if (!qword_10044D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D2E8);
  }

  return result;
}

unint64_t sub_1001D74EC()
{
  result = qword_10044D2F0;
  if (!qword_10044D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D2F0);
  }

  return result;
}

unint64_t sub_1001D7544()
{
  result = qword_10044D2F8;
  if (!qword_10044D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D2F8);
  }

  return result;
}

uint64_t sub_1001D7598()
{
  sub_1002D45D4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001D7680(uint64_t a1)
{
  v2 = sub_1001D6D7C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001D76D0()
{
  result = qword_10044D310;
  if (!qword_10044D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D310);
  }

  return result;
}

uint64_t sub_1001D7728(uint64_t a1)
{
  v2 = sub_1001D7544();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001D7778()
{
  result = qword_10044D318;
  if (!qword_10044D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D318);
  }

  return result;
}

uint64_t sub_1001D7810()
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
  sub_10001EDF0(v7, qword_10051EA68);
  sub_10001EDB8(v7, qword_10051EA68);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001D7980@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001D7CF0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EA80);
  sub_10001EDB8(v0, qword_10051EA80);
  return sub_1002D88F0();
}

uint64_t sub_1001D7D54()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EA98);
  v1 = sub_10001EDB8(v0, qword_10051EA98);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001D7E14()
{
  result = swift_getKeyPath();
  qword_10051EAB0 = result;
  return result;
}

uint64_t sub_1001D7E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454558, &qword_100350BC8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454560, &qword_100350BD0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001D801C, 0, 0);
}

uint64_t sub_1001D801C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001D916C();
  *v4 = v0;
  v4[1] = sub_1001D8100;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FDC, 0, &type metadata for AXSubtitlesShowAudioTranscriptionsEntity, v5);
}

uint64_t sub_1001D8100()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001D81FC, 0, 0);
}

uint64_t sub_1001D81FC()
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
  if (qword_10043AF00 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EAB0;
  *(v0 + 288) = qword_10051EAB0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454540, &qword_100454548, &qword_100350BB0);
  *v7 = v0;
  v7[1] = sub_1001D8360;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001D8360()
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
    v6 = sub_1001D84D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001D84D0()
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
  sub_1001D7778();
  sub_1001D9380();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001D8748()
{
  v0 = sub_10000321C(&qword_100454568, &qword_100350BD8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AF00 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001D9380();
  sub_10002B6E4(&qword_100454570, &qword_100454568, &qword_100350BD8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001D88BC(uint64_t *a1))(void *)
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

void (*sub_1001D8930(uint64_t *a1))(void *)
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

unint64_t sub_1001D89CC()
{
  result = qword_10044D330;
  if (!qword_10044D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D330);
  }

  return result;
}

unint64_t sub_1001D8A24()
{
  result = qword_10044D338;
  if (!qword_10044D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D338);
  }

  return result;
}

uint64_t sub_1001D8B20(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001D7E3C(a1, v5, v4);
}

uint64_t sub_1001D8BCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BBC80();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001D8C14()
{
  result = qword_10044D340;
  if (!qword_10044D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D340);
  }

  return result;
}

unint64_t sub_1001D8C6C()
{
  result = qword_10044D348;
  if (!qword_10044D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D348);
  }

  return result;
}

uint64_t sub_1001D8CE0()
{
  v1 = *(v0 + 16);
  *v1 = _AXSShowAudioTranscriptions() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D8D74()
{
  v1 = *(v0 + 16);
  _AXSSetShowAudioTranscriptions();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D8DD8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001D8E68, 0, 0);
}

uint64_t sub_1001D8E68()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044D328, qword_100323C40);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454540, &qword_100454548, &qword_100350BB0);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000002ELL;
  v2[1] = 0x800000010035BE40;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001D8FB4()
{
  result = qword_10044D350;
  if (!qword_10044D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D350);
  }

  return result;
}

uint64_t sub_1001D9008(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001D95D8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001D90BC()
{
  result = qword_10044D358;
  if (!qword_10044D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D358);
  }

  return result;
}

unint64_t sub_1001D9114()
{
  result = qword_10044D360;
  if (!qword_10044D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D360);
  }

  return result;
}

unint64_t sub_1001D916C()
{
  result = qword_10044D368;
  if (!qword_10044D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D368);
  }

  return result;
}

uint64_t sub_1001D91C0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001D95D8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001D9274(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001D95D8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001D9328()
{
  result = qword_10044D370;
  if (!qword_10044D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D370);
  }

  return result;
}

unint64_t sub_1001D9380()
{
  result = qword_10044D378;
  if (!qword_10044D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D378);
  }

  return result;
}

uint64_t sub_1001D9418(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001D8FB4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001D94D0()
{
  result = qword_10044D390;
  if (!qword_10044D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D390);
  }

  return result;
}

unint64_t sub_1001D9528()
{
  result = qword_10044D398;
  if (!qword_10044D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D398);
  }

  return result;
}

unint64_t sub_1001D9580()
{
  result = qword_10044D3A0;
  if (!qword_10044D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D3A0);
  }

  return result;
}

unint64_t sub_1001D95D8()
{
  result = qword_10044D3A8;
  if (!qword_10044D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D3A8);
  }

  return result;
}

uint64_t sub_1001D962C()
{
  v0 = qword_100447168;

  return v0;
}

unint64_t sub_1001D9668()
{
  result = qword_10044D3B0;
  if (!qword_10044D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D3B0);
  }

  return result;
}

uint64_t sub_1001D96BC()
{
  v0 = sub_10000321C(&qword_100454530, &qword_100350B90);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454538, &qword_100350B98);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001D916C();
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

unint64_t sub_1001D9884()
{
  result = qword_10044D3B8;
  if (!qword_10044D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D3B8);
  }

  return result;
}

unint64_t sub_1001D98DC()
{
  result = qword_10044D3C0;
  if (!qword_10044D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D3C0);
  }

  return result;
}

unint64_t sub_1001D9934()
{
  result = qword_10044D3C8;
  if (!qword_10044D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D3C8);
  }

  return result;
}

uint64_t sub_1001D9988()
{
  sub_1002D4580();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001D9A70(uint64_t a1)
{
  v2 = sub_1001D916C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001D9AC0()
{
  result = qword_10044D3E0;
  if (!qword_10044D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D3E0);
  }

  return result;
}

uint64_t sub_1001D9B18(uint64_t a1)
{
  v2 = sub_1001D9934();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001D9B68()
{
  result = qword_10044D3E8;
  if (!qword_10044D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D3E8);
  }

  return result;
}

uint64_t sub_1001D9C2C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001D9FA8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EAD0);
  sub_10001EDB8(v0, qword_10051EAD0);
  return sub_1002D88F0();
}

uint64_t sub_1001DA00C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EAE8);
  v1 = sub_10001EDB8(v0, qword_10051EAE8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001DA0CC()
{
  result = swift_getKeyPath();
  qword_10051EB00 = result;
  return result;
}

uint64_t sub_1001DA0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454508, &qword_100350B50) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454510, &qword_100350B58);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001DA2D4, 0, 0);
}

uint64_t sub_1001DA2D4()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001DB420();
  *v4 = v0;
  v4[1] = sub_1001DA3B8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FE0, 0, &type metadata for AXSubtitlesShowWhenMutedEntity, v5);
}

uint64_t sub_1001DA3B8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001DA4B4, 0, 0);
}

uint64_t sub_1001DA4B4()
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
  if (qword_10043AF20 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EB00;
  *(v0 + 288) = qword_10051EB00;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004544F0, &qword_1004544F8, &qword_100350B38);
  *v7 = v0;
  v7[1] = sub_1001DA618;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001DA618()
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
    v6 = sub_1001DA788;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001DA788()
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
  sub_1001D9B68();
  sub_1001DB634();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001DAA00()
{
  v0 = sub_10000321C(&qword_100454518, &qword_100350B60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AF20 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001DB634();
  sub_10002B6E4(&qword_100454520, &qword_100454518, &qword_100350B60);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001DAB74(uint64_t *a1))(void *)
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

void (*sub_1001DABE8(uint64_t *a1))(void *)
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

unint64_t sub_1001DAC84()
{
  result = qword_10044D400;
  if (!qword_10044D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D400);
  }

  return result;
}

unint64_t sub_1001DACDC()
{
  result = qword_10044D408;
  if (!qword_10044D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D408);
  }

  return result;
}

uint64_t sub_1001DADD8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001DA0F4(a1, v5, v4);
}

uint64_t sub_1001DAE84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BC0E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001DAECC()
{
  result = qword_10044D410;
  if (!qword_10044D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D410);
  }

  return result;
}

unint64_t sub_1001DAF24()
{
  result = qword_10044D418;
  if (!qword_10044D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D418);
  }

  return result;
}

uint64_t sub_1001DAF98()
{
  v1 = *(v0 + 16);
  *v1 = _AXSAutomaticSubtitlesShowWhenMuted() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DB02C()
{
  v1 = *(v0 + 16);
  _AXSSetAutomaticSubtitlesShowWhenMuted();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DB090(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001DB120, 0, 0);
}

uint64_t sub_1001DB120()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044D3F8, qword_100324278);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004544F0, &qword_1004544F8, &qword_100350B38);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000024;
  v2[1] = 0x800000010035BC30;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001DB268()
{
  result = qword_10044D420;
  if (!qword_10044D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D420);
  }

  return result;
}

uint64_t sub_1001DB2BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001DB88C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001DB370()
{
  result = qword_10044D428;
  if (!qword_10044D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D428);
  }

  return result;
}

unint64_t sub_1001DB3C8()
{
  result = qword_10044D430;
  if (!qword_10044D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D430);
  }

  return result;
}

unint64_t sub_1001DB420()
{
  result = qword_10044D438;
  if (!qword_10044D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D438);
  }

  return result;
}

uint64_t sub_1001DB474(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001DB88C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}