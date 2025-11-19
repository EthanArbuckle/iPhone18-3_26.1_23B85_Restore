uint64_t sub_1000FA1C8()
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
    v6 = sub_1000FA338;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000FA338()
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
  sub_1000F970C();
  sub_1000FB24C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000FA5B0()
{
  v0 = sub_10000321C(&qword_1004564F0, &qword_100353B28);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A280 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000FB24C();
  sub_10002B6E4(&qword_1004564F8, &qword_1004564F0, &qword_100353B28);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000FA724(uint64_t *a1))(void *)
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

void (*sub_1000FA798(uint64_t *a1))(void *)
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

unint64_t sub_1000FA834()
{
  result = qword_100448230;
  if (!qword_100448230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448230);
  }

  return result;
}

unint64_t sub_1000FA88C()
{
  result = qword_100448238;
  if (!qword_100448238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448238);
  }

  return result;
}

uint64_t sub_1000FA988(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000F9CA4(a1, v5, v4);
}

uint64_t sub_1000FAA34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A0ED8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000FAA7C()
{
  result = qword_100448240;
  if (!qword_100448240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448240);
  }

  return result;
}

unint64_t sub_1000FAAD4()
{
  result = qword_100448248;
  if (!qword_100448248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448248);
  }

  return result;
}

uint64_t sub_1000FAB48()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 comfortSoundsEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000FAC10()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setComfortSoundsEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000FACA8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000FAD38, 0, 0);
}

uint64_t sub_1000FAD38()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448228, qword_1002FCE60);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004564C8, &qword_1004564D0, &qword_100353B00);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000039;
  v2[1] = 0x80000001003604E0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000FAE80()
{
  result = qword_100448250;
  if (!qword_100448250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448250);
  }

  return result;
}

uint64_t sub_1000FAED4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000FB4A4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000FAF88()
{
  result = qword_100448258;
  if (!qword_100448258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448258);
  }

  return result;
}

unint64_t sub_1000FAFE0()
{
  result = qword_100448260;
  if (!qword_100448260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448260);
  }

  return result;
}

unint64_t sub_1000FB038()
{
  result = qword_100448268;
  if (!qword_100448268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448268);
  }

  return result;
}

uint64_t sub_1000FB08C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000FB4A4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000FB140(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000FB4A4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000FB1F4()
{
  result = qword_100448270;
  if (!qword_100448270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448270);
  }

  return result;
}

unint64_t sub_1000FB24C()
{
  result = qword_100448278;
  if (!qword_100448278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448278);
  }

  return result;
}

uint64_t sub_1000FB2E4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000FAE80();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000FB39C()
{
  result = qword_100448290;
  if (!qword_100448290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448290);
  }

  return result;
}

unint64_t sub_1000FB3F4()
{
  result = qword_100448298;
  if (!qword_100448298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448298);
  }

  return result;
}

unint64_t sub_1000FB44C()
{
  result = qword_1004482A0;
  if (!qword_1004482A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482A0);
  }

  return result;
}

unint64_t sub_1000FB4A4()
{
  result = qword_1004482A8;
  if (!qword_1004482A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482A8);
  }

  return result;
}

uint64_t sub_1000FB4F8()
{
  v0 = qword_100446B28;

  return v0;
}

unint64_t sub_1000FB534()
{
  result = qword_1004482B0;
  if (!qword_1004482B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482B0);
  }

  return result;
}

uint64_t sub_1000FB588()
{
  v0 = sub_10000321C(&qword_1004564B8, &qword_100353AE0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004564C0, &qword_100353AE8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000FB038();
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

unint64_t sub_1000FB750()
{
  result = qword_1004482B8;
  if (!qword_1004482B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482B8);
  }

  return result;
}

unint64_t sub_1000FB7A8()
{
  result = qword_1004482C0;
  if (!qword_1004482C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482C0);
  }

  return result;
}

unint64_t sub_1000FB800()
{
  result = qword_1004482C8;
  if (!qword_1004482C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482C8);
  }

  return result;
}

uint64_t sub_1000FB854()
{
  sub_1002D6898();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000FB93C(uint64_t a1)
{
  v2 = sub_1000FB038();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000FB98C()
{
  result = qword_1004482E0;
  if (!qword_1004482E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482E0);
  }

  return result;
}

uint64_t sub_1000FB9E4(uint64_t a1)
{
  v2 = sub_1000FB800();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000FBA34()
{
  result = qword_1004482E8;
  if (!qword_1004482E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004482E8);
  }

  return result;
}

uint64_t sub_1000FBACC()
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
  sub_10001EDF0(v7, qword_10051CB78);
  sub_10001EDB8(v7, qword_10051CB78);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1000FBC3C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000FBFAC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CB90);
  sub_10001EDB8(v0, qword_10051CB90);
  return sub_1002D88F0();
}

uint64_t sub_1000FC010()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CBA8);
  v1 = sub_10001EDB8(v0, qword_10051CBA8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000FC0D0()
{
  result = swift_getKeyPath();
  qword_10051CBC0 = result;
  return result;
}

uint64_t sub_1000FC0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456490, &qword_100353AA0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456498, &qword_100353AA8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000FC2D8, 0, 0);
}

uint64_t sub_1000FC2D8()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000FD464();
  *v4 = v0;
  v4[1] = sub_1000FC3BC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E50, 0, &type metadata for AccessibilityBackgroundSoundsSoundSelectorEntity, v5);
}

uint64_t sub_1000FC3BC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000FC4B8, 0, 0);
}

uint64_t sub_1000FC4B8()
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
  if (qword_10043A2A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CBC0;
  v0[36] = qword_10051CBC0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100456470, &qword_100456478, &qword_100353A80);
  *v7 = v0;
  v7[1] = sub_1000FC614;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for HUBackgroundSoundsSoundSelectionAppEnum, v8);
}

uint64_t sub_1000FC614()
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
    v6 = sub_1000FC784;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000FC784()
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
  sub_1000FBA34();
  sub_1000FD678();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000FC9FC()
{
  v0 = sub_10000321C(&qword_1004564A0, &qword_100353AB0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A2A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000FD678();
  sub_10002B6E4(&qword_1004564A8, &qword_1004564A0, &qword_100353AB0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000FCB70(uint64_t *a1))(void *)
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

void (*sub_1000FCBE4(uint64_t *a1))(void *)
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

unint64_t sub_1000FCC80()
{
  result = qword_100448300;
  if (!qword_100448300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448300);
  }

  return result;
}

unint64_t sub_1000FCCD8()
{
  result = qword_100448308;
  if (!qword_100448308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448308);
  }

  return result;
}

uint64_t sub_1000FCDD4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000FC0F8(a1, v5, v4);
}

uint64_t sub_1000FCE80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A1340();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000FCEC8()
{
  result = qword_100448310;
  if (!qword_100448310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448310);
  }

  return result;
}

uint64_t sub_1000FCF40()
{
  v1 = *(v0 + 16);
  *v1 = sub_1000032E0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000FCFCC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [objc_opt_self() defaultComfortSoundForGroup:v1 + 1];
  [v2 setSelectedComfortSound:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000FD0C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000FD154, 0, 0);
}

uint64_t sub_1000FD154()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004482F8, &qword_1002FD498);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456470, &qword_100456478, &qword_100353A80);
  sub_100017718();
  v3 = sub_1002D8890();
  *v2 = 0xD00000000000003ALL;
  v2[1] = 0x800000010037F8B0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000FD2AC()
{
  result = qword_100448318;
  if (!qword_100448318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448318);
  }

  return result;
}

uint64_t sub_1000FD300(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000FD8D0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000FD3B4()
{
  result = qword_100448320;
  if (!qword_100448320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448320);
  }

  return result;
}

unint64_t sub_1000FD40C()
{
  result = qword_100448328;
  if (!qword_100448328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448328);
  }

  return result;
}

unint64_t sub_1000FD464()
{
  result = qword_100448330;
  if (!qword_100448330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448330);
  }

  return result;
}

uint64_t sub_1000FD4B8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000FD8D0();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000FD56C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000FD8D0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000FD620()
{
  result = qword_100448338;
  if (!qword_100448338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448338);
  }

  return result;
}

unint64_t sub_1000FD678()
{
  result = qword_100448340;
  if (!qword_100448340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448340);
  }

  return result;
}

uint64_t sub_1000FD710(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000FD2AC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000FD7C8()
{
  result = qword_100448358;
  if (!qword_100448358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448358);
  }

  return result;
}

unint64_t sub_1000FD820()
{
  result = qword_100448360;
  if (!qword_100448360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448360);
  }

  return result;
}

unint64_t sub_1000FD878()
{
  result = qword_100448368;
  if (!qword_100448368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448368);
  }

  return result;
}

unint64_t sub_1000FD8D0()
{
  result = qword_100448370;
  if (!qword_100448370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448370);
  }

  return result;
}

uint64_t sub_1000FD924()
{
  v0 = qword_100446B38;

  return v0;
}

unint64_t sub_1000FD960()
{
  result = qword_100448378;
  if (!qword_100448378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448378);
  }

  return result;
}

uint64_t sub_1000FD9B4()
{
  v0 = sub_10000321C(&qword_100456460, &qword_100353A60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456468, &qword_100353A68);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000FD464();
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

unint64_t sub_1000FDB7C()
{
  result = qword_100448380;
  if (!qword_100448380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448380);
  }

  return result;
}

unint64_t sub_1000FDBD4()
{
  result = qword_100448388;
  if (!qword_100448388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448388);
  }

  return result;
}

unint64_t sub_1000FDC2C()
{
  result = qword_100448390;
  if (!qword_100448390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448390);
  }

  return result;
}

uint64_t sub_1000FDC80()
{
  sub_1002D6844();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000FDD68(uint64_t a1)
{
  v2 = sub_1000FD464();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000FDDB8()
{
  result = qword_1004483A8;
  if (!qword_1004483A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483A8);
  }

  return result;
}

uint64_t sub_1000FDE10(uint64_t a1)
{
  v2 = sub_1000FDC2C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000FDE60()
{
  result = qword_1004483B0;
  if (!qword_1004483B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483B0);
  }

  return result;
}

uint64_t sub_1000FDEF8()
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
  sub_10001EDF0(v7, qword_10051CBC8);
  sub_10001EDB8(v7, qword_10051CBC8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1000FE068@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1000FE3D8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CBE0);
  sub_10001EDB8(v0, qword_10051CBE0);
  return sub_1002D88F0();
}

uint64_t sub_1000FE43C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CBF8);
  v1 = sub_10001EDB8(v0, qword_10051CBF8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000FE4FC()
{
  result = swift_getKeyPath();
  qword_10051CC10 = result;
  return result;
}

uint64_t sub_1000FE524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456438, &qword_100353A20) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456440, &qword_100353A28);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000FE704, 0, 0);
}

uint64_t sub_1000FE704()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1000FF8BC();
  *v4 = v0;
  v4[1] = sub_1000FE7E8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E54, 0, &type metadata for AccessibilityBackgroundSoundsUseWhenMediaIsPlayingEnabledEntity, v5);
}

uint64_t sub_1000FE7E8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1000FE8E4, 0, 0);
}

uint64_t sub_1000FE8E4()
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
  if (qword_10043A2C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CC10;
  *(v0 + 288) = qword_10051CC10;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456420, &qword_100456428, &qword_100353A08);
  *v7 = v0;
  v7[1] = sub_1000FEA48;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000FEA48()
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
    v6 = sub_1000FEBB8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000FEBB8()
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
  sub_1000FDE60();
  sub_1000FFAD0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000FEE30()
{
  v0 = sub_10000321C(&qword_100456448, &qword_100353A30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A2C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1000FFAD0();
  sub_10002B6E4(&qword_100456450, &qword_100456448, &qword_100353A30);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1000FEFA4(uint64_t *a1))(void *)
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

void (*sub_1000FF018(uint64_t *a1))(void *)
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

unint64_t sub_1000FF0B4()
{
  result = qword_1004483C8;
  if (!qword_1004483C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483C8);
  }

  return result;
}

unint64_t sub_1000FF10C()
{
  result = qword_1004483D0;
  if (!qword_1004483D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483D0);
  }

  return result;
}

uint64_t sub_1000FF208(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1000FE524(a1, v5, v4);
}

uint64_t sub_1000FF2B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A1744();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000FF2FC()
{
  result = qword_1004483D8;
  if (!qword_1004483D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483D8);
  }

  return result;
}

unint64_t sub_1000FF354()
{
  result = qword_1004483E0;
  if (!qword_1004483E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483E0);
  }

  return result;
}

uint64_t sub_1000FF3C8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 mixesWithMedia];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000FF490()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setMixesWithMedia:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000FF528(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000FF5B8, 0, 0);
}

uint64_t sub_1000FF5B8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004483C0, qword_1002FDAD0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456420, &qword_100456428, &qword_100353A08);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000040;
  v2[1] = 0x800000010037F740;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1000FF704()
{
  result = qword_1004483E8;
  if (!qword_1004483E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483E8);
  }

  return result;
}

uint64_t sub_1000FF758(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000FFD28();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1000FF80C()
{
  result = qword_1004483F0;
  if (!qword_1004483F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483F0);
  }

  return result;
}

unint64_t sub_1000FF864()
{
  result = qword_1004483F8;
  if (!qword_1004483F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004483F8);
  }

  return result;
}

unint64_t sub_1000FF8BC()
{
  result = qword_100448400;
  if (!qword_100448400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448400);
  }

  return result;
}

uint64_t sub_1000FF910(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000FFD28();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1000FF9C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1000FFD28();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1000FFA78()
{
  result = qword_100448408;
  if (!qword_100448408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448408);
  }

  return result;
}

unint64_t sub_1000FFAD0()
{
  result = qword_100448410;
  if (!qword_100448410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448410);
  }

  return result;
}

uint64_t sub_1000FFB68(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000FF704();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1000FFC20()
{
  result = qword_100448428;
  if (!qword_100448428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448428);
  }

  return result;
}

unint64_t sub_1000FFC78()
{
  result = qword_100448430;
  if (!qword_100448430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448430);
  }

  return result;
}

unint64_t sub_1000FFCD0()
{
  result = qword_100448438;
  if (!qword_100448438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448438);
  }

  return result;
}

unint64_t sub_1000FFD28()
{
  result = qword_100448440;
  if (!qword_100448440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448440);
  }

  return result;
}

uint64_t sub_1000FFD7C()
{
  v0 = qword_100446B48;

  return v0;
}

unint64_t sub_1000FFDB8()
{
  result = qword_100448448;
  if (!qword_100448448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448448);
  }

  return result;
}

uint64_t sub_1000FFE0C()
{
  v0 = sub_10000321C(&qword_100456410, &qword_1003539E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456418, &qword_1003539F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000FF8BC();
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

unint64_t sub_1000FFFD4()
{
  result = qword_100448450;
  if (!qword_100448450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448450);
  }

  return result;
}

unint64_t sub_10010002C()
{
  result = qword_100448458;
  if (!qword_100448458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448458);
  }

  return result;
}

unint64_t sub_100100084()
{
  result = qword_100448460;
  if (!qword_100448460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448460);
  }

  return result;
}

uint64_t sub_1001000D8()
{
  sub_1002D67F0();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001001C0(uint64_t a1)
{
  v2 = sub_1000FF8BC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100100210()
{
  result = qword_100448478;
  if (!qword_100448478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448478);
  }

  return result;
}

uint64_t sub_100100268(uint64_t a1)
{
  v2 = sub_100100084();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001002B8()
{
  result = qword_100448480;
  if (!qword_100448480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448480);
  }

  return result;
}

uint64_t sub_100100350()
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
  sub_10001EDF0(v7, qword_10051CC18);
  sub_10001EDB8(v7, qword_10051CC18);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001004C0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100100830()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CC30);
  sub_10001EDB8(v0, qword_10051CC30);
  return sub_1002D88F0();
}

uint64_t sub_100100894()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CC48);
  v1 = sub_10001EDB8(v0, qword_10051CC48);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100100954()
{
  result = swift_getKeyPath();
  qword_10051CC60 = result;
  return result;
}

uint64_t sub_10010097C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004563E8, &qword_1003539A8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004563F0, &qword_1003539B0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100100B5C, 0, 0);
}

uint64_t sub_100100B5C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100101D14();
  *v4 = v0;
  v4[1] = sub_100100C40;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E58, 0, &type metadata for AccessibilityBackgroundSoundsStopSoundsWhenLockedEnabledEntity, v5);
}

uint64_t sub_100100C40()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100100D3C, 0, 0);
}

uint64_t sub_100100D3C()
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
  if (qword_10043A2E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CC60;
  *(v0 + 288) = qword_10051CC60;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004563D0, &qword_1004563D8, &qword_100353990);
  *v7 = v0;
  v7[1] = sub_100100EA0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100100EA0()
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
    v6 = sub_100101010;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100101010()
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
  sub_1001002B8();
  sub_100101F28();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100101288()
{
  v0 = sub_10000321C(&qword_1004563F8, &qword_1003539B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A2E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100101F28();
  sub_10002B6E4(&qword_100456400, &qword_1004563F8, &qword_1003539B8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001013FC(uint64_t *a1))(void *)
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

void (*sub_100101470(uint64_t *a1))(void *)
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

unint64_t sub_10010150C()
{
  result = qword_100448498;
  if (!qword_100448498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448498);
  }

  return result;
}

unint64_t sub_100101564()
{
  result = qword_1004484A0;
  if (!qword_1004484A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484A0);
  }

  return result;
}

uint64_t sub_100101660(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10010097C(a1, v5, v4);
}

uint64_t sub_10010170C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A1BAC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100101754()
{
  result = qword_1004484A8;
  if (!qword_1004484A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484A8);
  }

  return result;
}

unint64_t sub_1001017AC()
{
  result = qword_1004484B0;
  if (!qword_1004484B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484B0);
  }

  return result;
}

uint64_t sub_100101820()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 stopsOnLock];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001018E8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setStopsOnLock:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100101980(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100101A10, 0, 0);
}

uint64_t sub_100101A10()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448490, qword_1002FE108);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004563D0, &qword_1004563D8, &qword_100353990);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000044;
  v2[1] = 0x800000010037F5E0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100101B5C()
{
  result = qword_1004484B8;
  if (!qword_1004484B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484B8);
  }

  return result;
}

uint64_t sub_100101BB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100102180();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100101C64()
{
  result = qword_1004484C0;
  if (!qword_1004484C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484C0);
  }

  return result;
}

unint64_t sub_100101CBC()
{
  result = qword_1004484C8;
  if (!qword_1004484C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484C8);
  }

  return result;
}

unint64_t sub_100101D14()
{
  result = qword_1004484D0;
  if (!qword_1004484D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484D0);
  }

  return result;
}

uint64_t sub_100101D68(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100102180();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100101E1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100102180();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100101ED0()
{
  result = qword_1004484D8;
  if (!qword_1004484D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484D8);
  }

  return result;
}

unint64_t sub_100101F28()
{
  result = qword_1004484E0;
  if (!qword_1004484E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484E0);
  }

  return result;
}

uint64_t sub_100101FC0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100101B5C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100102078()
{
  result = qword_1004484F8;
  if (!qword_1004484F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004484F8);
  }

  return result;
}

unint64_t sub_1001020D0()
{
  result = qword_100448500;
  if (!qword_100448500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448500);
  }

  return result;
}

unint64_t sub_100102128()
{
  result = qword_100448508;
  if (!qword_100448508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448508);
  }

  return result;
}

unint64_t sub_100102180()
{
  result = qword_100448510;
  if (!qword_100448510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448510);
  }

  return result;
}

uint64_t sub_1001021D4()
{
  v0 = qword_100446B58;

  return v0;
}

unint64_t sub_100102210()
{
  result = qword_100448518;
  if (!qword_100448518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448518);
  }

  return result;
}

uint64_t sub_100102264()
{
  v0 = sub_10000321C(&qword_1004563C0, &qword_100353970);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004563C8, &qword_100353978);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100101D14();
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

unint64_t sub_10010242C()
{
  result = qword_100448520;
  if (!qword_100448520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448520);
  }

  return result;
}

unint64_t sub_100102484()
{
  result = qword_100448528;
  if (!qword_100448528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448528);
  }

  return result;
}

unint64_t sub_1001024DC()
{
  result = qword_100448530;
  if (!qword_100448530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448530);
  }

  return result;
}

uint64_t sub_100102530()
{
  sub_1002D679C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100102618(uint64_t a1)
{
  v2 = sub_100101D14();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100102668()
{
  result = qword_100448548;
  if (!qword_100448548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448548);
  }

  return result;
}

uint64_t sub_1001026C0(uint64_t a1)
{
  v2 = sub_1001024DC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100102710()
{
  result = qword_100448550;
  if (!qword_100448550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448550);
  }

  return result;
}

uint64_t sub_1001027A8()
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
  sub_10001EDF0(v7, qword_10051CC68);
  sub_10001EDB8(v7, qword_10051CC68);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100102918@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100102C88()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CC80);
  sub_10001EDB8(v0, qword_10051CC80);
  return sub_1002D88F0();
}

uint64_t sub_100102CEC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CC98);
  v1 = sub_10001EDB8(v0, qword_10051CC98);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100102DAC()
{
  result = swift_getKeyPath();
  qword_10051CCB0 = result;
  return result;
}

uint64_t sub_100102DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456398, &qword_100353930) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v9 = *(v8 + 64) + 15;
  v3[29] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004563A0, &qword_100353938);
  v3[30] = v10;
  v11 = *(v10 - 8);
  v3[31] = v11;
  v12 = *(v11 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_100102FB4, 0, 0);
}

uint64_t sub_100102FB4()
{
  v1 = *(v0 + 176);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  v5 = sub_100104164();
  *v4 = v0;
  v4[1] = sub_100103098;
  v6 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E5C, 0, &type metadata for AccessibilityBackgroundSoundsVolumeEntity, v5);
}

uint64_t sub_100103098()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_100103194, 0, 0);
}

uint64_t sub_100103194()
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
  if (qword_10043A300 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CCB0;
  v0[37] = qword_10051CCB0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[38] = v7;
  v8 = sub_10002B6E4(&qword_100456380, &qword_100456388, &qword_100353918);
  *v7 = v0;
  v7[1] = sub_1001032F0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v5, &type metadata for Double, v8);
}

uint64_t sub_1001032F0()
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
    v6 = sub_100103460;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100103460()
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
  sub_100102710();
  sub_100104378();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001036D8()
{
  v0 = sub_10000321C(&qword_1004563A8, &qword_100353940);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A300 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100104378();
  sub_10002B6E4(&qword_1004563B0, &qword_1004563A8, &qword_100353940);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10010384C(uint64_t *a1))(void *)
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

void (*sub_1001038C0(uint64_t *a1))(void *)
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

unint64_t sub_10010395C()
{
  result = qword_100448568;
  if (!qword_100448568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448568);
  }

  return result;
}

unint64_t sub_1001039B4()
{
  result = qword_100448570;
  if (!qword_100448570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448570);
  }

  return result;
}

uint64_t sub_100103AB0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100102DD4(a1, v5, v4);
}

uint64_t sub_100103B5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A2014();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100103BA4()
{
  result = qword_100448578;
  if (!qword_100448578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448578);
  }

  return result;
}

unint64_t sub_100103BFC()
{
  result = qword_100448580;
  if (!qword_100448580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448580);
  }

  return result;
}

uint64_t sub_100103C70()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 relativeVolume];
  v4 = v3;

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100103D38()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setRelativeVolume:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100103DD0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100103E60, 0, 0);
}

uint64_t sub_100103E60()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448560, qword_1002FE740);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456380, &qword_100456388, &qword_100353918);
  v3 = sub_1002D88B0();
  *v2 = 0xD00000000000003ALL;
  v2[1] = 0x800000010037F4A0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100103FAC()
{
  result = qword_100448588;
  if (!qword_100448588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448588);
  }

  return result;
}

uint64_t sub_100104000(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001045D0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001040B4()
{
  result = qword_100448590;
  if (!qword_100448590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448590);
  }

  return result;
}

unint64_t sub_10010410C()
{
  result = qword_100448598;
  if (!qword_100448598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448598);
  }

  return result;
}

unint64_t sub_100104164()
{
  result = qword_1004485A0;
  if (!qword_1004485A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485A0);
  }

  return result;
}

uint64_t sub_1001041B8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001045D0();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10010426C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001045D0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100104320()
{
  result = qword_1004485A8;
  if (!qword_1004485A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485A8);
  }

  return result;
}

unint64_t sub_100104378()
{
  result = qword_1004485B0;
  if (!qword_1004485B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485B0);
  }

  return result;
}

uint64_t sub_100104410(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100103FAC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001044C8()
{
  result = qword_1004485C8;
  if (!qword_1004485C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485C8);
  }

  return result;
}

unint64_t sub_100104520()
{
  result = qword_1004485D0;
  if (!qword_1004485D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485D0);
  }

  return result;
}

unint64_t sub_100104578()
{
  result = qword_1004485D8;
  if (!qword_1004485D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485D8);
  }

  return result;
}

unint64_t sub_1001045D0()
{
  result = qword_1004485E0;
  if (!qword_1004485E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485E0);
  }

  return result;
}

uint64_t sub_100104624()
{
  v0 = qword_100446B68;

  return v0;
}

unint64_t sub_100104660()
{
  result = qword_1004485E8;
  if (!qword_1004485E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485E8);
  }

  return result;
}

uint64_t sub_1001046B4()
{
  v0 = sub_10000321C(&qword_100456370, &qword_1003538F8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456378, &qword_100353900);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100104164();
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

unint64_t sub_10010487C()
{
  result = qword_1004485F0;
  if (!qword_1004485F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485F0);
  }

  return result;
}

unint64_t sub_1001048D4()
{
  result = qword_1004485F8;
  if (!qword_1004485F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004485F8);
  }

  return result;
}

unint64_t sub_10010492C()
{
  result = qword_100448600;
  if (!qword_100448600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448600);
  }

  return result;
}

uint64_t sub_100104980()
{
  sub_1002D6748();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100104A68(uint64_t a1)
{
  v2 = sub_100104164();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100104AB8()
{
  result = qword_100448618;
  if (!qword_100448618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448618);
  }

  return result;
}

uint64_t sub_100104B10(uint64_t a1)
{
  v2 = sub_10010492C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100104B60()
{
  result = qword_100448620;
  if (!qword_100448620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448620);
  }

  return result;
}

uint64_t sub_100104BF8()
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
  sub_10001EDF0(v7, qword_10051CCB8);
  sub_10001EDB8(v7, qword_10051CCB8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100104D68@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001050D8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CCD0);
  sub_10001EDB8(v0, qword_10051CCD0);
  return sub_1002D88F0();
}

uint64_t sub_10010513C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CCE8);
  v1 = sub_10001EDB8(v0, qword_10051CCE8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001051FC()
{
  result = swift_getKeyPath();
  qword_10051CD00 = result;
  return result;
}

uint64_t sub_100105224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456348, &qword_1003538B8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456350, &qword_1003538C0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100105404, 0, 0);
}

uint64_t sub_100105404()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001065BC();
  *v4 = v0;
  v4[1] = sub_1001054E8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E60, 0, &type metadata for AccessibilityVoiceOverBrailleAutomaticTranslationEntity, v5);
}

uint64_t sub_1001054E8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001055E4, 0, 0);
}

uint64_t sub_1001055E4()
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
  if (qword_10043A320 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CD00;
  *(v0 + 288) = qword_10051CD00;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456330, &qword_100456338, &qword_1003538A0);
  *v7 = v0;
  v7[1] = sub_100105748;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100105748()
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
    v6 = sub_1001058B8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001058B8()
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
  sub_100104B60();
  sub_1001067D0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100105B30()
{
  v0 = sub_10000321C(&qword_100456358, &qword_1003538C8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A320 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001067D0();
  sub_10002B6E4(&qword_100456360, &qword_100456358, &qword_1003538C8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100105CA4(uint64_t *a1))(void *)
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

void (*sub_100105D18(uint64_t *a1))(void *)
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

unint64_t sub_100105DB4()
{
  result = qword_100448638;
  if (!qword_100448638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448638);
  }

  return result;
}

unint64_t sub_100105E0C()
{
  result = qword_100448640;
  if (!qword_100448640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448640);
  }

  return result;
}

uint64_t sub_100105F08(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100105224(a1, v5, v4);
}

uint64_t sub_100105FB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A24A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100105FFC()
{
  result = qword_100448648;
  if (!qword_100448648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448648);
  }

  return result;
}

unint64_t sub_100106054()
{
  result = qword_100448650;
  if (!qword_100448650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448650);
  }

  return result;
}

uint64_t sub_1001060C8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverBrailleGradeTwoAutoTranslateEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100106190()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverBrailleGradeTwoAutoTranslateEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100106228(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001062B8, 0, 0);
}

uint64_t sub_1001062B8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448630, qword_1002FED78);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456330, &qword_100456338, &qword_1003538A0);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000002DLL;
  v2[1] = 0x8000000100360E80;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100106404()
{
  result = qword_100448658;
  if (!qword_100448658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448658);
  }

  return result;
}

uint64_t sub_100106458(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100106A28();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10010650C()
{
  result = qword_100448660;
  if (!qword_100448660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448660);
  }

  return result;
}

unint64_t sub_100106564()
{
  result = qword_100448668;
  if (!qword_100448668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448668);
  }

  return result;
}

unint64_t sub_1001065BC()
{
  result = qword_100448670;
  if (!qword_100448670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448670);
  }

  return result;
}

uint64_t sub_100106610(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100106A28();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001066C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100106A28();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100106778()
{
  result = qword_100448678;
  if (!qword_100448678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448678);
  }

  return result;
}

unint64_t sub_1001067D0()
{
  result = qword_100448680;
  if (!qword_100448680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448680);
  }

  return result;
}

uint64_t sub_100106868(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100106404();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100106920()
{
  result = qword_100448698;
  if (!qword_100448698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448698);
  }

  return result;
}

unint64_t sub_100106978()
{
  result = qword_1004486A0;
  if (!qword_1004486A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486A0);
  }

  return result;
}

unint64_t sub_1001069D0()
{
  result = qword_1004486A8;
  if (!qword_1004486A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486A8);
  }

  return result;
}

unint64_t sub_100106A28()
{
  result = qword_1004486B0;
  if (!qword_1004486B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486B0);
  }

  return result;
}

uint64_t sub_100106A7C()
{
  v0 = qword_100446B78;

  return v0;
}

unint64_t sub_100106AB8()
{
  result = qword_1004486B8;
  if (!qword_1004486B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486B8);
  }

  return result;
}

uint64_t sub_100106B0C()
{
  v0 = sub_10000321C(&qword_100456320, &qword_100353880);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456328, &qword_100353888);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001065BC();
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

unint64_t sub_100106CD4()
{
  result = qword_1004486C0;
  if (!qword_1004486C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486C0);
  }

  return result;
}

unint64_t sub_100106D2C()
{
  result = qword_1004486C8;
  if (!qword_1004486C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486C8);
  }

  return result;
}

unint64_t sub_100106D84()
{
  result = qword_1004486D0;
  if (!qword_1004486D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486D0);
  }

  return result;
}

uint64_t sub_100106DD8()
{
  sub_1002D66F4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100106EC0(uint64_t a1)
{
  v2 = sub_1001065BC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100106F10()
{
  result = qword_1004486E8;
  if (!qword_1004486E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486E8);
  }

  return result;
}

uint64_t sub_100106F68(uint64_t a1)
{
  v2 = sub_100106D84();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100106FB8()
{
  result = qword_1004486F0;
  if (!qword_1004486F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004486F0);
  }

  return result;
}

uint64_t sub_100107050()
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
  sub_10001EDF0(v7, qword_10051CD08);
  sub_10001EDB8(v7, qword_10051CD08);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001071C0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100107530()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CD20);
  sub_10001EDB8(v0, qword_10051CD20);
  return sub_1002D88F0();
}

uint64_t sub_100107594()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CD38);
  v1 = sub_10001EDB8(v0, qword_10051CD38);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100107654()
{
  result = swift_getKeyPath();
  qword_10051CD50 = result;
  return result;
}

uint64_t sub_10010767C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004562F8, &qword_100353840) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456300, &qword_100353848);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10010785C, 0, 0);
}

uint64_t sub_10010785C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100108A14();
  *v4 = v0;
  v4[1] = sub_100107940;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E64, 0, &type metadata for AccessibilityVoiceOverBrailleStatusCellsPositionEntity, v5);
}

uint64_t sub_100107940()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100107A3C, 0, 0);
}

uint64_t sub_100107A3C()
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
  if (qword_10043A340 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CD50;
  v0[36] = qword_10051CD50;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_1004562D8, &qword_1004562E0, &qword_100353820);
  *v7 = v0;
  v7[1] = sub_100107B98;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXSVoiceOverBrailleStatusCellsPositionAppEnum, v8);
}

uint64_t sub_100107B98()
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
    v6 = sub_100107D08;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100107D08()
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
  sub_100106FB8();
  sub_100108C28();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100107F80()
{
  v0 = sub_10000321C(&qword_100456308, &qword_100353850);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A340 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100108C28();
  sub_10002B6E4(&qword_100456310, &qword_100456308, &qword_100353850);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001080F4(uint64_t *a1))(void *)
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

void (*sub_100108168(uint64_t *a1))(void *)
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

unint64_t sub_100108204()
{
  result = qword_100448708;
  if (!qword_100448708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448708);
  }

  return result;
}

unint64_t sub_10010825C()
{
  result = qword_100448710;
  if (!qword_100448710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448710);
  }

  return result;
}

uint64_t sub_100108358(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10010767C(a1, v5, v4);
}

uint64_t sub_100108404@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A2908();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10010844C()
{
  result = qword_100448718;
  if (!qword_100448718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448718);
  }

  return result;
}

unint64_t sub_1001084C4()
{
  if (qword_100438D20 == -1)
  {
    result = _AXSVoiceOverTouchBrailleVirtualStatusAlignment();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  swift_once();
  result = _AXSVoiceOverTouchBrailleVirtualStatusAlignment();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  v2 = result;
  if (HIDWORD(result))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v3 = *(v0 + 16);
  v4 = _AXSVoiceOverTouchBrailleMasterStatusCellIndex();
  v5 = 2 * (v2 == 1);
  if (!v2)
  {
    v5 = 1;
  }

  if (v4 < 0)
  {
    v5 = 0;
  }

  *v3 = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001085BC()
{
  if (qword_100438D20 == -1)
  {
    if (!*(v0 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  swift_once();
  if (*(v0 + 16))
  {
LABEL_3:
    _AXSVoiceOverTouchSetBrailleVirtualStatusAlignment();
  }

LABEL_5:
  _AXSVoiceOverTouchSetBrailleMasterStatusCellIndex();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100108674(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100108704, 0, 0);
}

uint64_t sub_100108704()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448700, &qword_1002FF3B0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004562D8, &qword_1004562E0, &qword_100353820);
  sub_100014A98();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000038;
  v2[1] = 0x800000010035B1E0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10010885C()
{
  result = qword_100448720;
  if (!qword_100448720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448720);
  }

  return result;
}

uint64_t sub_1001088B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100108E80();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100108964()
{
  result = qword_100448728;
  if (!qword_100448728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448728);
  }

  return result;
}

unint64_t sub_1001089BC()
{
  result = qword_100448730;
  if (!qword_100448730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448730);
  }

  return result;
}

unint64_t sub_100108A14()
{
  result = qword_100448738;
  if (!qword_100448738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448738);
  }

  return result;
}

uint64_t sub_100108A68(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100108E80();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100108B1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100108E80();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100108BD0()
{
  result = qword_100448740;
  if (!qword_100448740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448740);
  }

  return result;
}

unint64_t sub_100108C28()
{
  result = qword_100448748;
  if (!qword_100448748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448748);
  }

  return result;
}

uint64_t sub_100108CC0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10010885C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100108D78()
{
  result = qword_100448760;
  if (!qword_100448760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448760);
  }

  return result;
}

unint64_t sub_100108DD0()
{
  result = qword_100448768;
  if (!qword_100448768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448768);
  }

  return result;
}

unint64_t sub_100108E28()
{
  result = qword_100448770;
  if (!qword_100448770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448770);
  }

  return result;
}

unint64_t sub_100108E80()
{
  result = qword_100448778;
  if (!qword_100448778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448778);
  }

  return result;
}

uint64_t sub_100108ED4()
{
  v0 = qword_100446B88;

  return v0;
}

unint64_t sub_100108F10()
{
  result = qword_100448780;
  if (!qword_100448780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448780);
  }

  return result;
}

uint64_t sub_100108F64()
{
  v0 = sub_10000321C(&qword_1004562C8, &qword_100353800);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004562D0, &qword_100353808);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100108A14();
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

unint64_t sub_10010912C()
{
  result = qword_100448788;
  if (!qword_100448788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448788);
  }

  return result;
}

unint64_t sub_100109184()
{
  result = qword_100448790;
  if (!qword_100448790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448790);
  }

  return result;
}

unint64_t sub_1001091DC()
{
  result = qword_100448798;
  if (!qword_100448798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448798);
  }

  return result;
}

uint64_t sub_100109230()
{
  sub_1002D66A0();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100109318(uint64_t a1)
{
  v2 = sub_100108A14();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100109368()
{
  result = qword_1004487B0;
  if (!qword_1004487B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487B0);
  }

  return result;
}

uint64_t sub_1001093C0(uint64_t a1)
{
  v2 = sub_1001091DC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100109410()
{
  result = qword_1004487B8;
  if (!qword_1004487B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487B8);
  }

  return result;
}

uint64_t sub_1001094A8()
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
  sub_10001EDF0(v7, qword_10051CD58);
  sub_10001EDB8(v7, qword_10051CD58);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100109618@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100109988()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CD70);
  sub_10001EDB8(v0, qword_10051CD70);
  return sub_1002D88F0();
}

uint64_t sub_1001099EC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CD88);
  v1 = sub_10001EDB8(v0, qword_10051CD88);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100109AAC()
{
  result = swift_getKeyPath();
  qword_10051CDA0 = result;
  return result;
}

uint64_t sub_100109AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004562A0, &qword_1003537C0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004562A8, &qword_1003537C8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100109CB4, 0, 0);
}

uint64_t sub_100109CB4()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10010AE6C();
  *v4 = v0;
  v4[1] = sub_100109D98;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E68, 0, &type metadata for AccessibilityVoiceOverBrailleStatusCellsShowGeneralStatusEntity, v5);
}

uint64_t sub_100109D98()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100109E94, 0, 0);
}

uint64_t sub_100109E94()
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
  if (qword_10043A360 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CDA0;
  *(v0 + 288) = qword_10051CDA0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456288, &qword_100456290, &qword_1003537A8);
  *v7 = v0;
  v7[1] = sub_100109FF8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100109FF8()
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
    v6 = sub_10010A168;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10010A168()
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
  sub_100109410();
  sub_10010B080();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10010A3E0()
{
  v0 = sub_10000321C(&qword_1004562B0, &qword_1003537D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A360 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10010B080();
  sub_10002B6E4(&qword_1004562B8, &qword_1004562B0, &qword_1003537D0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10010A554(uint64_t *a1))(void *)
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

void (*sub_10010A5C8(uint64_t *a1))(void *)
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

unint64_t sub_10010A664()
{
  result = qword_1004487D0;
  if (!qword_1004487D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487D0);
  }

  return result;
}

unint64_t sub_10010A6BC()
{
  result = qword_1004487D8;
  if (!qword_1004487D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487D8);
  }

  return result;
}

uint64_t sub_10010A7B8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100109AD4(a1, v5, v4);
}

uint64_t sub_10010A864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A2D0C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10010A8AC()
{
  result = qword_1004487E0;
  if (!qword_1004487E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487E0);
  }

  return result;
}

unint64_t sub_10010A904()
{
  result = qword_1004487E8;
  if (!qword_1004487E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487E8);
  }

  return result;
}

uint64_t sub_10010A978()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleShowGeneralStatus];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10010AA40()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleShowGeneralStatus:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10010AAD8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10010AB68, 0, 0);
}

uint64_t sub_10010AB68()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004487C8, qword_1002FF9E8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456288, &qword_100456290, &qword_1003537A8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000035;
  v2[1] = 0x800000010035BDA0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10010ACB4()
{
  result = qword_1004487F0;
  if (!qword_1004487F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487F0);
  }

  return result;
}

uint64_t sub_10010AD08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10010B2D8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10010ADBC()
{
  result = qword_1004487F8;
  if (!qword_1004487F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004487F8);
  }

  return result;
}

unint64_t sub_10010AE14()
{
  result = qword_100448800;
  if (!qword_100448800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448800);
  }

  return result;
}

unint64_t sub_10010AE6C()
{
  result = qword_100448808;
  if (!qword_100448808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448808);
  }

  return result;
}

uint64_t sub_10010AEC0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10010B2D8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10010AF74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10010B2D8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10010B028()
{
  result = qword_100448810;
  if (!qword_100448810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448810);
  }

  return result;
}

unint64_t sub_10010B080()
{
  result = qword_100448818;
  if (!qword_100448818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448818);
  }

  return result;
}

uint64_t sub_10010B118(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10010ACB4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10010B1D0()
{
  result = qword_100448830;
  if (!qword_100448830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448830);
  }

  return result;
}

unint64_t sub_10010B228()
{
  result = qword_100448838;
  if (!qword_100448838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448838);
  }

  return result;
}

unint64_t sub_10010B280()
{
  result = qword_100448840;
  if (!qword_100448840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448840);
  }

  return result;
}

unint64_t sub_10010B2D8()
{
  result = qword_100448848;
  if (!qword_100448848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448848);
  }

  return result;
}

uint64_t sub_10010B32C()
{
  v0 = qword_100446B98;

  return v0;
}

unint64_t sub_10010B368()
{
  result = qword_100448850;
  if (!qword_100448850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448850);
  }

  return result;
}

uint64_t sub_10010B3BC()
{
  v0 = sub_10000321C(&qword_100456278, &qword_100353788);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456280, &qword_100353790);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10010AE6C();
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

unint64_t sub_10010B584()
{
  result = qword_100448858;
  if (!qword_100448858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448858);
  }

  return result;
}

unint64_t sub_10010B5DC()
{
  result = qword_100448860;
  if (!qword_100448860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448860);
  }

  return result;
}

unint64_t sub_10010B634()
{
  result = qword_100448868;
  if (!qword_100448868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448868);
  }

  return result;
}

uint64_t sub_10010B688()
{
  sub_1002D664C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10010B770(uint64_t a1)
{
  v2 = sub_10010AE6C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10010B7C0()
{
  result = qword_100448880;
  if (!qword_100448880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448880);
  }

  return result;
}

uint64_t sub_10010B818(uint64_t a1)
{
  v2 = sub_10010B634();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10010B868()
{
  result = qword_100448888;
  if (!qword_100448888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448888);
  }

  return result;
}

uint64_t sub_10010B900()
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
  sub_10001EDF0(v7, qword_10051CDA8);
  sub_10001EDB8(v7, qword_10051CDA8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10010BA70@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10010BDE0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CDC0);
  sub_10001EDB8(v0, qword_10051CDC0);
  return sub_1002D88F0();
}

uint64_t sub_10010BE44()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CDD8);
  v1 = sub_10001EDB8(v0, qword_10051CDD8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10010BF04()
{
  result = swift_getKeyPath();
  qword_10051CDF0 = result;
  return result;
}

uint64_t sub_10010BF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456250, &qword_100353748) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456258, &qword_100353750);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10010C10C, 0, 0);
}

uint64_t sub_10010C10C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10010D2C8();
  *v4 = v0;
  v4[1] = sub_10010C1F0;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E6C, 0, &type metadata for AccessibilityVoiceOverBrailleStatusCellsShowTextStatusEntity, v5);
}

uint64_t sub_10010C1F0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10010C2EC, 0, 0);
}

uint64_t sub_10010C2EC()
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
  if (qword_10043A380 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CDF0;
  *(v0 + 288) = qword_10051CDF0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456238, &qword_100456240, &qword_100353730);
  *v7 = v0;
  v7[1] = sub_10010C450;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10010C450()
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
    v6 = sub_10010C5C0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10010C5C0()
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
  sub_10010B868();
  sub_10010D4DC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10010C838()
{
  v0 = sub_10000321C(&qword_100456260, &qword_100353758);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A380 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10010D4DC();
  sub_10002B6E4(&qword_100456268, &qword_100456260, &qword_100353758);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10010C9AC(uint64_t *a1))(void *)
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

void (*sub_10010CA20(uint64_t *a1))(void *)
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

unint64_t sub_10010CABC()
{
  result = qword_1004488A0;
  if (!qword_1004488A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488A0);
  }

  return result;
}

unint64_t sub_10010CB14()
{
  result = qword_1004488A8;
  if (!qword_1004488A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488A8);
  }

  return result;
}

uint64_t sub_10010CC10(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10010BF2C(a1, v5, v4);
}

uint64_t sub_10010CCBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A3174();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10010CD04()
{
  result = qword_1004488B0;
  if (!qword_1004488B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488B0);
  }

  return result;
}

unint64_t sub_10010CD5C()
{
  result = qword_1004488B8;
  if (!qword_1004488B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488B8);
  }

  return result;
}

uint64_t sub_10010CDD0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleShowTextStyleStatus];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10010CE98()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleShowTextStyleStatus:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10010CF30(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10010CFC0, 0, 0);
}

uint64_t sub_10010CFC0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448898, qword_100300020);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456238, &qword_100456240, &qword_100353730);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000037;
  v2[1] = 0x800000010035BC60;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10010D110()
{
  result = qword_1004488C0;
  if (!qword_1004488C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488C0);
  }

  return result;
}

uint64_t sub_10010D164(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10010D734();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10010D218()
{
  result = qword_1004488C8;
  if (!qword_1004488C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488C8);
  }

  return result;
}

unint64_t sub_10010D270()
{
  result = qword_1004488D0;
  if (!qword_1004488D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488D0);
  }

  return result;
}

unint64_t sub_10010D2C8()
{
  result = qword_1004488D8;
  if (!qword_1004488D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488D8);
  }

  return result;
}

uint64_t sub_10010D31C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10010D734();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10010D3D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10010D734();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10010D484()
{
  result = qword_1004488E0;
  if (!qword_1004488E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488E0);
  }

  return result;
}

unint64_t sub_10010D4DC()
{
  result = qword_1004488E8;
  if (!qword_1004488E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004488E8);
  }

  return result;
}

uint64_t sub_10010D574(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10010D110();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10010D62C()
{
  result = qword_100448900;
  if (!qword_100448900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448900);
  }

  return result;
}

unint64_t sub_10010D684()
{
  result = qword_100448908;
  if (!qword_100448908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448908);
  }

  return result;
}

unint64_t sub_10010D6DC()
{
  result = qword_100448910;
  if (!qword_100448910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448910);
  }

  return result;
}

unint64_t sub_10010D734()
{
  result = qword_100448918;
  if (!qword_100448918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448918);
  }

  return result;
}

uint64_t sub_10010D788()
{
  v0 = qword_100446BA8;

  return v0;
}

unint64_t sub_10010D7C4()
{
  result = qword_100448920;
  if (!qword_100448920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448920);
  }

  return result;
}

uint64_t sub_10010D818()
{
  v0 = sub_10000321C(&qword_100456228, &qword_100353710);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456230, &qword_100353718);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10010D2C8();
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

unint64_t sub_10010D9E0()
{
  result = qword_100448928;
  if (!qword_100448928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448928);
  }

  return result;
}

unint64_t sub_10010DA38()
{
  result = qword_100448930;
  if (!qword_100448930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448930);
  }

  return result;
}

unint64_t sub_10010DA90()
{
  result = qword_100448938;
  if (!qword_100448938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448938);
  }

  return result;
}

uint64_t sub_10010DAE4()
{
  sub_1002D65F8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10010DBCC(uint64_t a1)
{
  v2 = sub_10010D2C8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10010DC1C()
{
  result = qword_100448950;
  if (!qword_100448950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448950);
  }

  return result;
}

uint64_t sub_10010DC74(uint64_t a1)
{
  v2 = sub_10010DA90();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10010DCC4()
{
  result = qword_100448958;
  if (!qword_100448958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448958);
  }

  return result;
}

uint64_t sub_10010DD5C()
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
  sub_10001EDF0(v7, qword_10051CDF8);
  sub_10001EDB8(v7, qword_10051CDF8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10010DECC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10010E23C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CE10);
  sub_10001EDB8(v0, qword_10051CE10);
  return sub_1002D88F0();
}

uint64_t sub_10010E2A0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CE28);
  v1 = sub_10001EDB8(v0, qword_10051CE28);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10010E360()
{
  result = swift_getKeyPath();
  qword_10051CE40 = result;
  return result;
}

uint64_t sub_10010E388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456200, &qword_1003536D0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456208, &qword_1003536D8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10010E568, 0, 0);
}

uint64_t sub_10010E568()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10010F720();
  *v4 = v0;
  v4[1] = sub_10010E64C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E70, 0, &type metadata for AccessibilityVoiceOverBrailleEquationsUseNemethCodeEntity, v5);
}

uint64_t sub_10010E64C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10010E748, 0, 0);
}

uint64_t sub_10010E748()
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
  if (qword_10043A3A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CE40;
  *(v0 + 288) = qword_10051CE40;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004561E8, &qword_1004561F0, &qword_1003536B8);
  *v7 = v0;
  v7[1] = sub_10010E8AC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10010E8AC()
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
    v6 = sub_10010EA1C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10010EA1C()
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
  sub_10010DCC4();
  sub_10010F934();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10010EC94()
{
  v0 = sub_10000321C(&qword_100456210, &qword_1003536E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A3A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10010F934();
  sub_10002B6E4(&qword_100456218, &qword_100456210, &qword_1003536E0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10010EE08(uint64_t *a1))(void *)
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

void (*sub_10010EE7C(uint64_t *a1))(void *)
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

unint64_t sub_10010EF18()
{
  result = qword_100448970;
  if (!qword_100448970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448970);
  }

  return result;
}

unint64_t sub_10010EF70()
{
  result = qword_100448978;
  if (!qword_100448978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448978);
  }

  return result;
}

uint64_t sub_10010F06C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10010E388(a1, v5, v4);
}

uint64_t sub_10010F118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A35DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10010F160()
{
  result = qword_100448980;
  if (!qword_100448980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448980);
  }

  return result;
}

unint64_t sub_10010F1B8()
{
  result = qword_100448988;
  if (!qword_100448988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448988);
  }

  return result;
}

uint64_t sub_10010F22C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverAlwaysUseNemethCodeForMathEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10010F2F4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverAlwaysUseNemethCodeForMathEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10010F38C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10010F41C, 0, 0);
}

uint64_t sub_10010F41C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448968, qword_100300658);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004561E8, &qword_1004561F0, &qword_1003536B8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000029;
  v2[1] = 0x800000010035F620;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10010F568()
{
  result = qword_100448990;
  if (!qword_100448990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448990);
  }

  return result;
}

uint64_t sub_10010F5BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10010FB8C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10010F670()
{
  result = qword_100448998;
  if (!qword_100448998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448998);
  }

  return result;
}

unint64_t sub_10010F6C8()
{
  result = qword_1004489A0;
  if (!qword_1004489A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489A0);
  }

  return result;
}

unint64_t sub_10010F720()
{
  result = qword_1004489A8;
  if (!qword_1004489A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489A8);
  }

  return result;
}

uint64_t sub_10010F774(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10010FB8C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10010F828(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10010FB8C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10010F8DC()
{
  result = qword_1004489B0;
  if (!qword_1004489B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489B0);
  }

  return result;
}

unint64_t sub_10010F934()
{
  result = qword_1004489B8;
  if (!qword_1004489B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489B8);
  }

  return result;
}

uint64_t sub_10010F9CC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10010F568();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10010FA84()
{
  result = qword_1004489D0;
  if (!qword_1004489D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489D0);
  }

  return result;
}

unint64_t sub_10010FADC()
{
  result = qword_1004489D8;
  if (!qword_1004489D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489D8);
  }

  return result;
}

unint64_t sub_10010FB34()
{
  result = qword_1004489E0;
  if (!qword_1004489E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489E0);
  }

  return result;
}

unint64_t sub_10010FB8C()
{
  result = qword_1004489E8;
  if (!qword_1004489E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489E8);
  }

  return result;
}

uint64_t sub_10010FBE0()
{
  v0 = qword_100446BB8;

  return v0;
}

unint64_t sub_10010FC1C()
{
  result = qword_1004489F0;
  if (!qword_1004489F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489F0);
  }

  return result;
}

uint64_t sub_10010FC70()
{
  v0 = sub_10000321C(&qword_1004561D8, &qword_100353698);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004561E0, &qword_1003536A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10010F720();
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

unint64_t sub_10010FE38()
{
  result = qword_1004489F8;
  if (!qword_1004489F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004489F8);
  }

  return result;
}

unint64_t sub_10010FE90()
{
  result = qword_100448A00;
  if (!qword_100448A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A00);
  }

  return result;
}

unint64_t sub_10010FEE8()
{
  result = qword_100448A08;
  if (!qword_100448A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A08);
  }

  return result;
}

uint64_t sub_10010FF3C()
{
  sub_1002D65A4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100110024(uint64_t a1)
{
  v2 = sub_10010F720();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100110074()
{
  result = qword_100448A20;
  if (!qword_100448A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A20);
  }

  return result;
}

uint64_t sub_1001100CC(uint64_t a1)
{
  v2 = sub_10010FEE8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10011011C()
{
  result = qword_100448A28;
  if (!qword_100448A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A28);
  }

  return result;
}

uint64_t sub_1001101B4()
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
  sub_10001EDF0(v7, qword_10051CE48);
  sub_10001EDB8(v7, qword_10051CE48);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100110324@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100110694()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CE60);
  sub_10001EDB8(v0, qword_10051CE60);
  return sub_1002D88F0();
}

uint64_t sub_1001106F8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CE78);
  v1 = sub_10001EDB8(v0, qword_10051CE78);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001107B8()
{
  result = swift_getKeyPath();
  qword_10051CE90 = result;
  return result;
}

uint64_t sub_1001107E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004561B0, &qword_100353658) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004561B8, &qword_100353660);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001109C0, 0, 0);
}

uint64_t sub_1001109C0()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100111B78();
  *v4 = v0;
  v4[1] = sub_100110AA4;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E74, 0, &type metadata for AccessibilityVoiceOverBrailleShowOnscreenKeyboardEntity, v5);
}

uint64_t sub_100110AA4()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100110BA0, 0, 0);
}

uint64_t sub_100110BA0()
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
  if (qword_10043A3C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CE90;
  *(v0 + 288) = qword_10051CE90;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456198, &qword_1004561A0, &qword_100353640);
  *v7 = v0;
  v7[1] = sub_100110D04;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100110D04()
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
    v6 = sub_100110E74;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100110E74()
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
  sub_10011011C();
  sub_100111D8C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001110EC()
{
  v0 = sub_10000321C(&qword_1004561C0, &qword_100353668);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A3C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100111D8C();
  sub_10002B6E4(&qword_1004561C8, &qword_1004561C0, &qword_100353668);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100111260(uint64_t *a1))(void *)
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

void (*sub_1001112D4(uint64_t *a1))(void *)
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

unint64_t sub_100111370()
{
  result = qword_100448A40;
  if (!qword_100448A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A40);
  }

  return result;
}

unint64_t sub_1001113C8()
{
  result = qword_100448A48;
  if (!qword_100448A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A48);
  }

  return result;
}

uint64_t sub_1001114C4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001107E0(a1, v5, v4);
}

uint64_t sub_100111570@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A3A44();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001115B8()
{
  result = qword_100448A50;
  if (!qword_100448A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A50);
  }

  return result;
}

unint64_t sub_100111610()
{
  result = qword_100448A58;
  if (!qword_100448A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A58);
  }

  return result;
}

uint64_t sub_100111684()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverShowSoftwareKeyboardWithBraille];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10011174C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverShowSoftwareKeyboardWithBraille:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001117E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100111874, 0, 0);
}

uint64_t sub_100111874()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448A38, qword_100300C90);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456198, &qword_1004561A0, &qword_100353640);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000028;
  v2[1] = 0x800000010035BD10;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001119C0()
{
  result = qword_100448A60;
  if (!qword_100448A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A60);
  }

  return result;
}

uint64_t sub_100111A14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100111FE4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100111AC8()
{
  result = qword_100448A68;
  if (!qword_100448A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A68);
  }

  return result;
}

unint64_t sub_100111B20()
{
  result = qword_100448A70;
  if (!qword_100448A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A70);
  }

  return result;
}

unint64_t sub_100111B78()
{
  result = qword_100448A78;
  if (!qword_100448A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A78);
  }

  return result;
}

uint64_t sub_100111BCC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100111FE4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100111C80(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100111FE4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100111D34()
{
  result = qword_100448A80;
  if (!qword_100448A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A80);
  }

  return result;
}

unint64_t sub_100111D8C()
{
  result = qword_100448A88;
  if (!qword_100448A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448A88);
  }

  return result;
}

uint64_t sub_100111E24(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001119C0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100111EDC()
{
  result = qword_100448AA0;
  if (!qword_100448AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AA0);
  }

  return result;
}

unint64_t sub_100111F34()
{
  result = qword_100448AA8;
  if (!qword_100448AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AA8);
  }

  return result;
}

unint64_t sub_100111F8C()
{
  result = qword_100448AB0;
  if (!qword_100448AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AB0);
  }

  return result;
}

unint64_t sub_100111FE4()
{
  result = qword_100448AB8;
  if (!qword_100448AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AB8);
  }

  return result;
}

uint64_t sub_100112038()
{
  v0 = qword_100446BC8;

  return v0;
}

unint64_t sub_100112074()
{
  result = qword_100448AC0;
  if (!qword_100448AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AC0);
  }

  return result;
}

uint64_t sub_1001120C8()
{
  v0 = sub_10000321C(&qword_100456188, &qword_100353620);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456190, &qword_100353628);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100111B78();
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

unint64_t sub_100112290()
{
  result = qword_100448AC8;
  if (!qword_100448AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AC8);
  }

  return result;
}

unint64_t sub_1001122E8()
{
  result = qword_100448AD0;
  if (!qword_100448AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AD0);
  }

  return result;
}

unint64_t sub_100112340()
{
  result = qword_100448AD8;
  if (!qword_100448AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AD8);
  }

  return result;
}

uint64_t sub_100112394()
{
  sub_1002D6550();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10011247C(uint64_t a1)
{
  v2 = sub_100111B78();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001124CC()
{
  result = qword_100448AF0;
  if (!qword_100448AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AF0);
  }

  return result;
}

uint64_t sub_100112524(uint64_t a1)
{
  v2 = sub_100112340();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100112574()
{
  result = qword_100448AF8;
  if (!qword_100448AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448AF8);
  }

  return result;
}

uint64_t sub_10011260C()
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
  sub_10001EDF0(v7, qword_10051CE98);
  sub_10001EDB8(v7, qword_10051CE98);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10011277C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100112AEC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CEB0);
  sub_10001EDB8(v0, qword_10051CEB0);
  return sub_1002D88F0();
}

uint64_t sub_100112B50()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CEC8);
  v1 = sub_10001EDB8(v0, qword_10051CEC8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100112C10()
{
  result = swift_getKeyPath();
  qword_10051CEE0 = result;
  return result;
}

uint64_t sub_100112C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456160, &qword_1003535E0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456168, &qword_1003535E8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100112E18, 0, 0);
}

uint64_t sub_100112E18()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100113FD0();
  *v4 = v0;
  v4[1] = sub_100112EFC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E78, 0, &type metadata for AccessibilityVoiceOverBrailleTurnPagesWhenPanningEntity, v5);
}

uint64_t sub_100112EFC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100112FF8, 0, 0);
}

uint64_t sub_100112FF8()
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
  if (qword_10043A3E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CEE0;
  *(v0 + 288) = qword_10051CEE0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456148, &qword_100456150, &qword_1003535C8);
  *v7 = v0;
  v7[1] = sub_10011315C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10011315C()
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
    v6 = sub_1001132CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001132CC()
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
  sub_100112574();
  sub_1001141E4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100113544()
{
  v0 = sub_10000321C(&qword_100456170, &qword_1003535F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A3E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001141E4();
  sub_10002B6E4(&qword_100456178, &qword_100456170, &qword_1003535F0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001136B8(uint64_t *a1))(void *)
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

void (*sub_10011372C(uint64_t *a1))(void *)
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

unint64_t sub_1001137C8()
{
  result = qword_100448B10;
  if (!qword_100448B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B10);
  }

  return result;
}

unint64_t sub_100113820()
{
  result = qword_100448B18;
  if (!qword_100448B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B18);
  }

  return result;
}

uint64_t sub_10011391C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100112C38(a1, v5, v4);
}

uint64_t sub_1001139C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A3EBC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100113A10()
{
  result = qword_100448B20;
  if (!qword_100448B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B20);
  }

  return result;
}

unint64_t sub_100113A68()
{
  result = qword_100448B28;
  if (!qword_100448B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B28);
  }

  return result;
}

uint64_t sub_100113ADC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBraillePanningAutoTurnsReadingContent];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100113BA4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBraillePanningAutoTurnsReadingContent:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100113C3C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100113CCC, 0, 0);
}

uint64_t sub_100113CCC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448B08, qword_1003012C8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456148, &qword_100456150, &qword_1003535C8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000027;
  v2[1] = 0x800000010035A710;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100113E18()
{
  result = qword_100448B30;
  if (!qword_100448B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B30);
  }

  return result;
}

uint64_t sub_100113E6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10011443C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100113F20()
{
  result = qword_100448B38;
  if (!qword_100448B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B38);
  }

  return result;
}

unint64_t sub_100113F78()
{
  result = qword_100448B40;
  if (!qword_100448B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B40);
  }

  return result;
}

unint64_t sub_100113FD0()
{
  result = qword_100448B48;
  if (!qword_100448B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B48);
  }

  return result;
}

uint64_t sub_100114024(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10011443C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001140D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10011443C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10011418C()
{
  result = qword_100448B50;
  if (!qword_100448B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B50);
  }

  return result;
}

unint64_t sub_1001141E4()
{
  result = qword_100448B58;
  if (!qword_100448B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B58);
  }

  return result;
}

uint64_t sub_10011427C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100113E18();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100114334()
{
  result = qword_100448B70;
  if (!qword_100448B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B70);
  }

  return result;
}

unint64_t sub_10011438C()
{
  result = qword_100448B78;
  if (!qword_100448B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B78);
  }

  return result;
}

unint64_t sub_1001143E4()
{
  result = qword_100448B80;
  if (!qword_100448B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B80);
  }

  return result;
}

unint64_t sub_10011443C()
{
  result = qword_100448B88;
  if (!qword_100448B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B88);
  }

  return result;
}

uint64_t sub_100114490()
{
  v0 = qword_100446BD8;

  return v0;
}

unint64_t sub_1001144CC()
{
  result = qword_100448B90;
  if (!qword_100448B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B90);
  }

  return result;
}

uint64_t sub_100114520()
{
  v0 = sub_10000321C(&qword_100456138, &qword_1003535A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456140, &qword_1003535B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100113FD0();
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

unint64_t sub_1001146E8()
{
  result = qword_100448B98;
  if (!qword_100448B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448B98);
  }

  return result;
}

unint64_t sub_100114740()
{
  result = qword_100448BA0;
  if (!qword_100448BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BA0);
  }

  return result;
}

unint64_t sub_100114798()
{
  result = qword_100448BA8;
  if (!qword_100448BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BA8);
  }

  return result;
}

uint64_t sub_1001147EC()
{
  sub_1002D64FC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001148D4(uint64_t a1)
{
  v2 = sub_100113FD0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100114924()
{
  result = qword_100448BC0;
  if (!qword_100448BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BC0);
  }

  return result;
}

uint64_t sub_10011497C(uint64_t a1)
{
  v2 = sub_100114798();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001149CC()
{
  result = qword_100448BC8;
  if (!qword_100448BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BC8);
  }

  return result;
}

uint64_t sub_100114A88@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100114DFC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CF00);
  sub_10001EDB8(v0, qword_10051CF00);
  return sub_1002D88F0();
}

uint64_t sub_100114E60()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CF18);
  v1 = sub_10001EDB8(v0, qword_10051CF18);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100114F20()
{
  result = swift_getKeyPath();
  qword_10051CF30 = result;
  return result;
}

uint64_t sub_100114F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456110, &qword_100353568) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456118, &qword_100353570);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100115128, 0, 0);
}

uint64_t sub_100115128()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001162D4();
  *v4 = v0;
  v4[1] = sub_10011520C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E7C, 0, &type metadata for AccessibilityVoiceOverBrailleWordWrapEntity, v5);
}

uint64_t sub_10011520C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100115308, 0, 0);
}

uint64_t sub_100115308()
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
  if (qword_10043A400 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CF30;
  *(v0 + 288) = qword_10051CF30;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004560F8, &qword_100456100, &qword_100353550);
  *v7 = v0;
  v7[1] = sub_10011546C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10011546C()
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
    v6 = sub_1001155DC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001155DC()
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
  sub_1001149CC();
  sub_1001164E8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100115854()
{
  v0 = sub_10000321C(&qword_100456120, &qword_100353578);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A400 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001164E8();
  sub_10002B6E4(&qword_100456128, &qword_100456120, &qword_100353578);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001159C8(uint64_t *a1))(void *)
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

void (*sub_100115A3C(uint64_t *a1))(void *)
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

unint64_t sub_100115AD8()
{
  result = qword_100448BE0;
  if (!qword_100448BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BE0);
  }

  return result;
}

unint64_t sub_100115B30()
{
  result = qword_100448BE8;
  if (!qword_100448BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BE8);
  }

  return result;
}

uint64_t sub_100115C2C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100114F48(a1, v5, v4);
}

uint64_t sub_100115CD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A4324();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100115D20()
{
  result = qword_100448BF0;
  if (!qword_100448BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BF0);
  }

  return result;
}

unint64_t sub_100115D78()
{
  result = qword_100448BF8;
  if (!qword_100448BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448BF8);
  }

  return result;
}

uint64_t sub_100115DEC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverBrailleWordWrapEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100115EB4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverBrailleWordWrapEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100115F4C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100115FDC, 0, 0);
}

uint64_t sub_100115FDC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448BD8, qword_100301900);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004560F8, &qword_100456100, &qword_100353550);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000021;
  v2[1] = 0x8000000100359B10;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10011611C()
{
  result = qword_100448C00;
  if (!qword_100448C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C00);
  }

  return result;
}

uint64_t sub_100116170(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100116740();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100116224()
{
  result = qword_100448C08;
  if (!qword_100448C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C08);
  }

  return result;
}

unint64_t sub_10011627C()
{
  result = qword_100448C10;
  if (!qword_100448C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C10);
  }

  return result;
}

unint64_t sub_1001162D4()
{
  result = qword_100448C18;
  if (!qword_100448C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C18);
  }

  return result;
}

uint64_t sub_100116328(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100116740();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001163DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100116740();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100116490()
{
  result = qword_100448C20;
  if (!qword_100448C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C20);
  }

  return result;
}

unint64_t sub_1001164E8()
{
  result = qword_100448C28;
  if (!qword_100448C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C28);
  }

  return result;
}

uint64_t sub_100116580(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10011611C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100116638()
{
  result = qword_100448C40;
  if (!qword_100448C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C40);
  }

  return result;
}

unint64_t sub_100116690()
{
  result = qword_100448C48;
  if (!qword_100448C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C48);
  }

  return result;
}

unint64_t sub_1001166E8()
{
  result = qword_100448C50;
  if (!qword_100448C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C50);
  }

  return result;
}

unint64_t sub_100116740()
{
  result = qword_100448C58;
  if (!qword_100448C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C58);
  }

  return result;
}

uint64_t sub_100116794()
{
  v0 = qword_100446BE8;

  return v0;
}

unint64_t sub_1001167D0()
{
  result = qword_100448C60;
  if (!qword_100448C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C60);
  }

  return result;
}

uint64_t sub_100116824()
{
  v0 = sub_10000321C(&qword_1004560E8, &qword_100353530);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004560F0, &qword_100353538);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001162D4();
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

unint64_t sub_1001169EC()
{
  result = qword_100448C68;
  if (!qword_100448C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C68);
  }

  return result;
}

unint64_t sub_100116A44()
{
  result = qword_100448C70;
  if (!qword_100448C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C70);
  }

  return result;
}

unint64_t sub_100116A9C()
{
  result = qword_100448C78;
  if (!qword_100448C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C78);
  }

  return result;
}

uint64_t sub_100116AF0()
{
  sub_1002D64A8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100116BD8(uint64_t a1)
{
  v2 = sub_1001162D4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100116C28()
{
  result = qword_100448C90;
  if (!qword_100448C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C90);
  }

  return result;
}

uint64_t sub_100116C80(uint64_t a1)
{
  v2 = sub_100116A9C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100116CD0()
{
  result = qword_100448C98;
  if (!qword_100448C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448C98);
  }

  return result;
}

uint64_t sub_100116D68()
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
  sub_10001EDF0(v7, qword_10051CF38);
  sub_10001EDB8(v7, qword_10051CF38);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100116ED8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100117248()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CF50);
  sub_10001EDB8(v0, qword_10051CF50);
  return sub_1002D88F0();
}

uint64_t sub_1001172AC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CF68);
  v1 = sub_10001EDB8(v0, qword_10051CF68);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10011736C()
{
  result = swift_getKeyPath();
  qword_10051CF80 = result;
  return result;
}

uint64_t sub_100117394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004560C0, &qword_1003534F0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004560C8, &qword_1003534F8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100117574, 0, 0);
}

uint64_t sub_100117574()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10011872C();
  *v4 = v0;
  v4[1] = sub_100117658;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E80, 0, &type metadata for AccessibilityVoiceOverBrailleTextFormattingEntity, v5);
}

uint64_t sub_100117658()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100117754, 0, 0);
}

uint64_t sub_100117754()
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
  if (qword_10043A420 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CF80;
  *(v0 + 288) = qword_10051CF80;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004560A8, &qword_1004560B0, &qword_1003534D8);
  *v7 = v0;
  v7[1] = sub_1001178B8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001178B8()
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
    v6 = sub_100117A28;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100117A28()
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
  sub_100116CD0();
  sub_100118940();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100117CA0()
{
  v0 = sub_10000321C(&qword_1004560D0, &qword_100353500);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A420 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100118940();
  sub_10002B6E4(&qword_1004560D8, &qword_1004560D0, &qword_100353500);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100117E14(uint64_t *a1))(void *)
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

void (*sub_100117E88(uint64_t *a1))(void *)
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

unint64_t sub_100117F24()
{
  result = qword_100448CB0;
  if (!qword_100448CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CB0);
  }

  return result;
}

unint64_t sub_100117F7C()
{
  result = qword_100448CB8;
  if (!qword_100448CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CB8);
  }

  return result;
}

uint64_t sub_100118078(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100117394(a1, v5, v4);
}

uint64_t sub_100118124@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A478C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10011816C()
{
  result = qword_100448CC0;
  if (!qword_100448CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CC0);
  }

  return result;
}

unint64_t sub_1001181C4()
{
  result = qword_100448CC8;
  if (!qword_100448CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CC8);
  }

  return result;
}

uint64_t sub_100118238()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverBrailleFormattingEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100118300()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverBrailleFormattingEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100118398(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100118428, 0, 0);
}

uint64_t sub_100118428()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448CA8, qword_100301F38);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004560A8, &qword_1004560B0, &qword_1003534D8);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000002ALL;
  v2[1] = 0x8000000100360E30;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100118574()
{
  result = qword_100448CD0;
  if (!qword_100448CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CD0);
  }

  return result;
}

uint64_t sub_1001185C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100118B98();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10011867C()
{
  result = qword_100448CD8;
  if (!qword_100448CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CD8);
  }

  return result;
}

unint64_t sub_1001186D4()
{
  result = qword_100448CE0;
  if (!qword_100448CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CE0);
  }

  return result;
}

unint64_t sub_10011872C()
{
  result = qword_100448CE8;
  if (!qword_100448CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CE8);
  }

  return result;
}

uint64_t sub_100118780(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100118B98();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100118834(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100118B98();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001188E8()
{
  result = qword_100448CF0;
  if (!qword_100448CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CF0);
  }

  return result;
}

unint64_t sub_100118940()
{
  result = qword_100448CF8;
  if (!qword_100448CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448CF8);
  }

  return result;
}

uint64_t sub_1001189D8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100118574();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100118A90()
{
  result = qword_100448D10;
  if (!qword_100448D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D10);
  }

  return result;
}

unint64_t sub_100118AE8()
{
  result = qword_100448D18;
  if (!qword_100448D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D18);
  }

  return result;
}

unint64_t sub_100118B40()
{
  result = qword_100448D20;
  if (!qword_100448D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D20);
  }

  return result;
}

unint64_t sub_100118B98()
{
  result = qword_100448D28;
  if (!qword_100448D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D28);
  }

  return result;
}

uint64_t sub_100118BEC()
{
  v0 = qword_100446BF8;

  return v0;
}

unint64_t sub_100118C28()
{
  result = qword_100448D30;
  if (!qword_100448D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D30);
  }

  return result;
}

uint64_t sub_100118C7C()
{
  v0 = sub_10000321C(&qword_100456098, &qword_1003534B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004560A0, &qword_1003534C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10011872C();
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

unint64_t sub_100118E44()
{
  result = qword_100448D38;
  if (!qword_100448D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D38);
  }

  return result;
}

unint64_t sub_100118E9C()
{
  result = qword_100448D40;
  if (!qword_100448D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D40);
  }

  return result;
}

unint64_t sub_100118EF4()
{
  result = qword_100448D48;
  if (!qword_100448D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D48);
  }

  return result;
}

uint64_t sub_100118F48()
{
  sub_1002D6454();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100119030(uint64_t a1)
{
  v2 = sub_10011872C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100119080()
{
  result = qword_100448D60;
  if (!qword_100448D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D60);
  }

  return result;
}

uint64_t sub_1001190D8(uint64_t a1)
{
  v2 = sub_100118EF4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100119128()
{
  result = qword_100448D68;
  if (!qword_100448D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D68);
  }

  return result;
}

uint64_t sub_1001191EC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100119568()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CFA0);
  sub_10001EDB8(v0, qword_10051CFA0);
  return sub_1002D88F0();
}

uint64_t sub_1001195CC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051CFB8);
  v1 = sub_10001EDB8(v0, qword_10051CFB8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10011968C()
{
  result = swift_getKeyPath();
  qword_10051CFD0 = result;
  return result;
}

uint64_t sub_1001196B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456070, &qword_100353478) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456078, &qword_100353480);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100119894, 0, 0);
}

uint64_t sub_100119894()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10011AA48();
  *v4 = v0;
  v4[1] = sub_100119978;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E84, 0, &type metadata for AccessibilityVoiceOverBrailleSoundCurtainEntity, v5);
}

uint64_t sub_100119978()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100119A74, 0, 0);
}

uint64_t sub_100119A74()
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
  if (qword_10043A440 != -1)
  {
    swift_once();
  }

  v5 = qword_10051CFD0;
  *(v0 + 288) = qword_10051CFD0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456058, &qword_100456060, &qword_100353460);
  *v7 = v0;
  v7[1] = sub_100119BD8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100119BD8()
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
    v6 = sub_100119D48;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100119D48()
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
  sub_100119128();
  sub_10011AC5C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100119FC0()
{
  v0 = sub_10000321C(&qword_100456080, &qword_100353488);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A440 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10011AC5C();
  sub_10002B6E4(&qword_100456088, &qword_100456080, &qword_100353488);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10011A134(uint64_t *a1))(void *)
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

void (*sub_10011A1A8(uint64_t *a1))(void *)
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

unint64_t sub_10011A244()
{
  result = qword_100448D80;
  if (!qword_100448D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D80);
  }

  return result;
}

unint64_t sub_10011A29C()
{
  result = qword_100448D88;
  if (!qword_100448D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D88);
  }

  return result;
}

uint64_t sub_10011A398(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001196B4(a1, v5, v4);
}

uint64_t sub_10011A444@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A4BF4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10011A48C()
{
  result = qword_100448D90;
  if (!qword_100448D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D90);
  }

  return result;
}

unint64_t sub_10011A4E4()
{
  result = qword_100448D98;
  if (!qword_100448D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448D98);
  }

  return result;
}

uint64_t sub_10011A558()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverSoundCurtain];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10011A620()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverSoundCurtain:v1];

  v3 = *(v0 + 8);

  return v3();
}