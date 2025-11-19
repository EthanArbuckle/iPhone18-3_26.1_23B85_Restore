uint64_t sub_10021B5F8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F430);
  sub_10001EDB8(v0, qword_10051F430);
  return sub_1002D88F0();
}

uint64_t sub_10021B65C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F448);
  v1 = sub_10001EDB8(v0, qword_10051F448);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10021B71C()
{
  result = swift_getKeyPath();
  qword_10051F460 = result;
  return result;
}

uint64_t sub_10021B744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453B70, &qword_10034FD08) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453B78, &qword_10034FD10);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10021B924, 0, 0);
}

uint64_t sub_10021B924()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10021CA68();
  *v4 = v0;
  v4[1] = sub_10021BA08;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7058, 0, &type metadata for AccessibilityVoiceOverEnabledEntity, v5);
}

uint64_t sub_10021BA08()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10021BB04, 0, 0);
}

uint64_t sub_10021BB04()
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
  if (qword_10043B2E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F460;
  *(v0 + 288) = qword_10051F460;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453B58, &qword_100453B60, &qword_10034FCF0);
  *v7 = v0;
  v7[1] = sub_10021BC68;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10021BC68()
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
    v6 = sub_10021BDD8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10021BDD8()
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
  sub_10021B1BC();
  sub_10021CC7C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10021C050()
{
  v0 = sub_10000321C(&qword_100453B80, &qword_10034FD18);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B2E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10021CC7C();
  sub_10002B6E4(&qword_100453B88, &qword_100453B80, &qword_10034FD18);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10021C1C4(uint64_t *a1))(void *)
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

void (*sub_10021C238(uint64_t *a1))(void *)
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

unint64_t sub_10021C2D4()
{
  result = qword_10044EC28;
  if (!qword_10044EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EC28);
  }

  return result;
}

unint64_t sub_10021C32C()
{
  result = qword_10044EC30;
  if (!qword_10044EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EC30);
  }

  return result;
}

uint64_t sub_10021C428(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10021B744(a1, v5, v4);
}

uint64_t sub_10021C4D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C42EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10021C51C()
{
  result = qword_10044EC38;
  if (!qword_10044EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EC38);
  }

  return result;
}

unint64_t sub_10021C574()
{
  result = qword_10044EC40;
  if (!qword_10044EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EC40);
  }

  return result;
}

uint64_t sub_10021C5E8()
{
  v1 = *(v0 + 16);
  *v1 = _AXSVoiceOverTouchEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10021C67C()
{
  v1 = *(v0 + 16);
  _AXSVoiceOverTouchSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10021C6E0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10021C770, 0, 0);
}

uint64_t sub_10021C770()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044EC20, qword_10032FD08);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453B58, &qword_100453B60, &qword_10034FCF0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000025;
  v2[1] = 0x80000001003772F0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10021C8B0()
{
  result = qword_10044EC48;
  if (!qword_10044EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EC48);
  }

  return result;
}

uint64_t sub_10021C904(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10021CED4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10021C9B8()
{
  result = qword_10044EC50;
  if (!qword_10044EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EC50);
  }

  return result;
}

unint64_t sub_10021CA10()
{
  result = qword_10044EC58;
  if (!qword_10044EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EC58);
  }

  return result;
}

unint64_t sub_10021CA68()
{
  result = qword_10044EC60;
  if (!qword_10044EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EC60);
  }

  return result;
}

uint64_t sub_10021CABC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10021CED4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10021CB70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10021CED4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10021CC24()
{
  result = qword_10044EC68;
  if (!qword_10044EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EC68);
  }

  return result;
}

unint64_t sub_10021CC7C()
{
  result = qword_10044EC70;
  if (!qword_10044EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EC70);
  }

  return result;
}

uint64_t sub_10021CD14(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10021C8B0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10021CDCC()
{
  result = qword_10044EC88;
  if (!qword_10044EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EC88);
  }

  return result;
}

unint64_t sub_10021CE24()
{
  result = qword_10044EC90;
  if (!qword_10044EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EC90);
  }

  return result;
}

unint64_t sub_10021CE7C()
{
  result = qword_10044EC98;
  if (!qword_10044EC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EC98);
  }

  return result;
}

unint64_t sub_10021CED4()
{
  result = qword_10044ECA0;
  if (!qword_10044ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ECA0);
  }

  return result;
}

uint64_t sub_10021CF28()
{
  v0 = qword_100447358;

  return v0;
}

unint64_t sub_10021CF64()
{
  result = qword_10044ECA8;
  if (!qword_10044ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ECA8);
  }

  return result;
}

uint64_t sub_10021CFB8()
{
  v0 = sub_10000321C(&qword_100453B48, &qword_10034FCD0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453B50, &qword_10034FCD8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10021CA68();
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

unint64_t sub_10021D180()
{
  result = qword_10044ECB0;
  if (!qword_10044ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ECB0);
  }

  return result;
}

unint64_t sub_10021D1D8()
{
  result = qword_10044ECB8;
  if (!qword_10044ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ECB8);
  }

  return result;
}

unint64_t sub_10021D230()
{
  result = qword_10044ECC0;
  if (!qword_10044ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ECC0);
  }

  return result;
}

uint64_t sub_10021D284()
{
  sub_1002D3B54();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10021D36C(uint64_t a1)
{
  v2 = sub_10021CA68();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10021D3BC()
{
  result = qword_10044ECD8;
  if (!qword_10044ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ECD8);
  }

  return result;
}

uint64_t sub_10021D414(uint64_t a1)
{
  v2 = sub_10021D230();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10021D464()
{
  result = qword_10044ECE0;
  if (!qword_10044ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ECE0);
  }

  return result;
}

uint64_t sub_10021D518@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10021D8B0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F498);
  v1 = sub_10001EDB8(v0, qword_10051F498);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10021D970()
{
  result = swift_getKeyPath();
  qword_10051F4B0 = result;
  return result;
}

uint64_t sub_10021D998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453B20, &qword_10034FC90) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453B28, &qword_10034FC98);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10021DB78, 0, 0);
}

uint64_t sub_10021DB78()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10021ED1C();
  *v4 = v0;
  v4[1] = sub_10021DC5C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D705C, 0, &type metadata for AccessibilityVoiceOverTextRecognitionEnabledEntity, v5);
}

uint64_t sub_10021DC5C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10021DD58, 0, 0);
}

uint64_t sub_10021DD58()
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
  if (qword_10043B300 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F4B0;
  *(v0 + 288) = qword_10051F4B0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453B08, &qword_100453B10, &qword_10034FC78);
  *v7 = v0;
  v7[1] = sub_10021DEBC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10021DEBC()
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
    v6 = sub_10021E02C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10021E02C()
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
  sub_10021D464();
  sub_10021EF30();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10021E2A4()
{
  v0 = sub_10000321C(&qword_100453B30, &qword_10034FCA0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B300 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10021EF30();
  sub_10002B6E4(&qword_100453B38, &qword_100453B30, &qword_10034FCA0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10021E418(uint64_t *a1))(void *)
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

void (*sub_10021E48C(uint64_t *a1))(void *)
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

unint64_t sub_10021E528()
{
  result = qword_10044ECF8;
  if (!qword_10044ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ECF8);
  }

  return result;
}

unint64_t sub_10021E580()
{
  result = qword_10044ED00;
  if (!qword_10044ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED00);
  }

  return result;
}

uint64_t sub_10021E67C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10021D998(a1, v5, v4);
}

uint64_t sub_10021E728@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C4754();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10021E770()
{
  result = qword_10044ED08;
  if (!qword_10044ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED08);
  }

  return result;
}

unint64_t sub_10021E7C8()
{
  result = qword_10044ED10;
  if (!qword_10044ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED10);
  }

  return result;
}

uint64_t sub_10021E83C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverShouldSpeakDiscoveredText];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10021E904()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverShouldSpeakDiscoveredText:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10021E99C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10021EA2C, 0, 0);
}

uint64_t sub_10021EA2C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044ECF0, qword_100330340);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453B08, &qword_100453B10, &qword_10034FC78);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000026;
  v2[1] = 0x8000000100359B40;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10021EB64()
{
  result = qword_10044ED18;
  if (!qword_10044ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED18);
  }

  return result;
}

uint64_t sub_10021EBB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10021F188();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10021EC6C()
{
  result = qword_10044ED20;
  if (!qword_10044ED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED20);
  }

  return result;
}

unint64_t sub_10021ECC4()
{
  result = qword_10044ED28;
  if (!qword_10044ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED28);
  }

  return result;
}

unint64_t sub_10021ED1C()
{
  result = qword_10044ED30;
  if (!qword_10044ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED30);
  }

  return result;
}

uint64_t sub_10021ED70(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10021F188();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10021EE24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10021F188();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10021EED8()
{
  result = qword_10044ED38;
  if (!qword_10044ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED38);
  }

  return result;
}

unint64_t sub_10021EF30()
{
  result = qword_10044ED40;
  if (!qword_10044ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED40);
  }

  return result;
}

uint64_t sub_10021EFC8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10021EB64();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10021F080()
{
  result = qword_10044ED58;
  if (!qword_10044ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED58);
  }

  return result;
}

unint64_t sub_10021F0D8()
{
  result = qword_10044ED60;
  if (!qword_10044ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED60);
  }

  return result;
}

unint64_t sub_10021F130()
{
  result = qword_10044ED68;
  if (!qword_10044ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED68);
  }

  return result;
}

unint64_t sub_10021F188()
{
  result = qword_10044ED70;
  if (!qword_10044ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED70);
  }

  return result;
}

uint64_t sub_10021F1DC()
{
  v0 = qword_100447368;

  return v0;
}

unint64_t sub_10021F218()
{
  result = qword_10044ED78;
  if (!qword_10044ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED78);
  }

  return result;
}

uint64_t sub_10021F26C()
{
  v0 = sub_10000321C(&qword_100453AF8, &qword_10034FC58);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453B00, &qword_10034FC60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10021ED1C();
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

unint64_t sub_10021F434()
{
  result = qword_10044ED80;
  if (!qword_10044ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED80);
  }

  return result;
}

unint64_t sub_10021F48C()
{
  result = qword_10044ED88;
  if (!qword_10044ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED88);
  }

  return result;
}

unint64_t sub_10021F4E4()
{
  result = qword_10044ED90;
  if (!qword_10044ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ED90);
  }

  return result;
}

uint64_t sub_10021F538()
{
  sub_1002D3B00();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10021F620(uint64_t a1)
{
  v2 = sub_10021ED1C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10021F670()
{
  result = qword_10044EDA8;
  if (!qword_10044EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EDA8);
  }

  return result;
}

uint64_t sub_10021F6C8(uint64_t a1)
{
  v2 = sub_10021F4E4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10021F718()
{
  result = qword_10044EDB0;
  if (!qword_10044EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EDB0);
  }

  return result;
}

uint64_t sub_10021F7D8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10021FB50()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F4D0);
  sub_10001EDB8(v0, qword_10051F4D0);
  return sub_1002D88F0();
}

uint64_t sub_10021FBB4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F4E8);
  v1 = sub_10001EDB8(v0, qword_10051F4E8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10021FC74()
{
  result = swift_getKeyPath();
  qword_10051F500 = result;
  return result;
}

uint64_t sub_10021FC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453AD0, &qword_10034FC18) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453AD8, &qword_10034FC20);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10021FE7C, 0, 0);
}

uint64_t sub_10021FE7C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100221058();
  *v4 = v0;
  v4[1] = sub_10021FF60;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7060, 0, &type metadata for AccessibilityVoiceOverNeuralFeedbackStyleEntity, v5);
}

uint64_t sub_10021FF60()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10022005C, 0, 0);
}

uint64_t sub_10022005C()
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
  if (qword_10043B320 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F500;
  v0[36] = qword_10051F500;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100453AB0, &qword_100453AB8, &qword_10034FBF8);
  *v7 = v0;
  v7[1] = sub_1002201B8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXSVoiceOverDiscoveredMLContentFeedbackAppEnum, v8);
}

uint64_t sub_1002201B8()
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
    v6 = sub_100220328;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100220328()
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
  sub_10021F718();
  sub_10022126C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002205A0()
{
  v0 = sub_10000321C(&qword_100453AE0, &qword_10034FC28);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B320 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10022126C();
  sub_10002B6E4(&qword_100453AE8, &qword_100453AE0, &qword_10034FC28);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100220714(uint64_t *a1))(void *)
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

void (*sub_100220788(uint64_t *a1))(void *)
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

unint64_t sub_100220824()
{
  result = qword_10044EDC8;
  if (!qword_10044EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EDC8);
  }

  return result;
}

unint64_t sub_10022087C()
{
  result = qword_10044EDD0;
  if (!qword_10044EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EDD0);
  }

  return result;
}

uint64_t sub_100220978(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10021FC9C(a1, v5, v4);
}

uint64_t sub_100220A24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C4BCC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100220A6C()
{
  result = qword_10044EDD8;
  if (!qword_10044EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EDD8);
  }

  return result;
}

uint64_t sub_100220AE4()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverNeuralElementFeedback];

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

uint64_t sub_100220BF0()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverNeuralElementFeedback:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100220CB8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100220D48, 0, 0);
}

uint64_t sub_100220D48()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044EDC0, &qword_100330978);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453AB0, &qword_100453AB8, &qword_10034FBF8);
  sub_10000D418();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000037;
  v2[1] = 0x8000000100359C90;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100220EA0()
{
  result = qword_10044EDE0;
  if (!qword_10044EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EDE0);
  }

  return result;
}

uint64_t sub_100220EF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002214C4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100220FA8()
{
  result = qword_10044EDE8;
  if (!qword_10044EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EDE8);
  }

  return result;
}

unint64_t sub_100221000()
{
  result = qword_10044EDF0;
  if (!qword_10044EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EDF0);
  }

  return result;
}

unint64_t sub_100221058()
{
  result = qword_10044EDF8;
  if (!qword_10044EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EDF8);
  }

  return result;
}

uint64_t sub_1002210AC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002214C4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100221160(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002214C4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100221214()
{
  result = qword_10044EE00;
  if (!qword_10044EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EE00);
  }

  return result;
}

unint64_t sub_10022126C()
{
  result = qword_10044EE08;
  if (!qword_10044EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EE08);
  }

  return result;
}

uint64_t sub_100221304(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100220EA0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1002213BC()
{
  result = qword_10044EE20;
  if (!qword_10044EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EE20);
  }

  return result;
}

unint64_t sub_100221414()
{
  result = qword_10044EE28;
  if (!qword_10044EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EE28);
  }

  return result;
}

unint64_t sub_10022146C()
{
  result = qword_10044EE30;
  if (!qword_10044EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EE30);
  }

  return result;
}

unint64_t sub_1002214C4()
{
  result = qword_10044EE38;
  if (!qword_10044EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EE38);
  }

  return result;
}

uint64_t sub_100221518()
{
  v0 = qword_100447378;

  return v0;
}

unint64_t sub_100221554()
{
  result = qword_10044EE40;
  if (!qword_10044EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EE40);
  }

  return result;
}

uint64_t sub_1002215A8()
{
  v0 = sub_10000321C(&qword_100453AA0, &qword_10034FBD8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453AA8, &qword_10034FBE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100221058();
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

unint64_t sub_100221770()
{
  result = qword_10044EE48;
  if (!qword_10044EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EE48);
  }

  return result;
}

unint64_t sub_1002217C8()
{
  result = qword_10044EE50;
  if (!qword_10044EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EE50);
  }

  return result;
}

unint64_t sub_100221820()
{
  result = qword_10044EE58;
  if (!qword_10044EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EE58);
  }

  return result;
}

uint64_t sub_100221874()
{
  sub_1002D3AAC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10022195C(uint64_t a1)
{
  v2 = sub_100221058();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002219AC()
{
  result = qword_10044EE70;
  if (!qword_10044EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EE70);
  }

  return result;
}

uint64_t sub_100221A04(uint64_t a1)
{
  v2 = sub_100221820();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100221A54()
{
  result = qword_10044EE78;
  if (!qword_10044EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EE78);
  }

  return result;
}

uint64_t sub_100221AEC()
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
  sub_10001EDF0(v7, qword_10051F508);
  sub_10001EDB8(v7, qword_10051F508);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100221C5C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100221FCC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F520);
  sub_10001EDB8(v0, qword_10051F520);
  return sub_1002D88F0();
}

uint64_t sub_100222030()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F538);
  v1 = sub_10001EDB8(v0, qword_10051F538);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1002220F0()
{
  result = swift_getKeyPath();
  qword_10051F550 = result;
  return result;
}

uint64_t sub_100222118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453A78, &qword_10034FB98) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453A80, &qword_10034FBA0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002222F8, 0, 0);
}

uint64_t sub_1002222F8()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1002234B0();
  *v4 = v0;
  v4[1] = sub_1002223DC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7064, 0, &type metadata for AccessibilityVoiceOverScreenRecognitionEnabledEntity, v5);
}

uint64_t sub_1002223DC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1002224D8, 0, 0);
}

uint64_t sub_1002224D8()
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
  if (qword_10043B340 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F550;
  *(v0 + 288) = qword_10051F550;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453A60, &qword_100453A68, &qword_10034FB80);
  *v7 = v0;
  v7[1] = sub_10022263C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10022263C()
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
    v6 = sub_1002227AC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002227AC()
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
  sub_100221A54();
  sub_1002236C4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100222A24()
{
  v0 = sub_10000321C(&qword_100453A88, &qword_10034FBA8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B340 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1002236C4();
  sub_10002B6E4(&qword_100453A90, &qword_100453A88, &qword_10034FBA8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100222B98(uint64_t *a1))(void *)
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

void (*sub_100222C0C(uint64_t *a1))(void *)
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

unint64_t sub_100222CA8()
{
  result = qword_10044EE90;
  if (!qword_10044EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EE90);
  }

  return result;
}

unint64_t sub_100222D00()
{
  result = qword_10044EE98;
  if (!qword_10044EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EE98);
  }

  return result;
}

uint64_t sub_100222DFC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100222118(a1, v5, v4);
}

uint64_t sub_100222EA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C4FD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100222EF0()
{
  result = qword_10044EEA0;
  if (!qword_10044EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EEA0);
  }

  return result;
}

unint64_t sub_100222F48()
{
  result = qword_10044EEA8;
  if (!qword_10044EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EEA8);
  }

  return result;
}

uint64_t sub_100222FBC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 automaticAccessibilityEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100223084()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAutomaticAccessibilityEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10022311C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002231AC, 0, 0);
}

uint64_t sub_1002231AC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044EE88, qword_100330FB0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453A60, &qword_100453A68, &qword_10034FB80);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000004BLL;
  v2[1] = 0x8000000100359F20;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1002232F8()
{
  result = qword_10044EEB0;
  if (!qword_10044EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EEB0);
  }

  return result;
}

uint64_t sub_10022334C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10022391C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100223400()
{
  result = qword_10044EEB8;
  if (!qword_10044EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EEB8);
  }

  return result;
}

unint64_t sub_100223458()
{
  result = qword_10044EEC0;
  if (!qword_10044EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EEC0);
  }

  return result;
}

unint64_t sub_1002234B0()
{
  result = qword_10044EEC8;
  if (!qword_10044EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EEC8);
  }

  return result;
}

uint64_t sub_100223504(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10022391C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1002235B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10022391C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10022366C()
{
  result = qword_10044EED0;
  if (!qword_10044EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EED0);
  }

  return result;
}

unint64_t sub_1002236C4()
{
  result = qword_10044EED8;
  if (!qword_10044EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EED8);
  }

  return result;
}

uint64_t sub_10022375C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002232F8();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100223814()
{
  result = qword_10044EEF0;
  if (!qword_10044EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EEF0);
  }

  return result;
}

unint64_t sub_10022386C()
{
  result = qword_10044EEF8;
  if (!qword_10044EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EEF8);
  }

  return result;
}

unint64_t sub_1002238C4()
{
  result = qword_10044EF00;
  if (!qword_10044EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF00);
  }

  return result;
}

unint64_t sub_10022391C()
{
  result = qword_10044EF08;
  if (!qword_10044EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF08);
  }

  return result;
}

uint64_t sub_100223970()
{
  v0 = qword_100447388;

  return v0;
}

unint64_t sub_1002239AC()
{
  result = qword_10044EF10;
  if (!qword_10044EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF10);
  }

  return result;
}

uint64_t sub_100223A00()
{
  v0 = sub_10000321C(&qword_100453A50, &qword_10034FB60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453A58, &qword_10034FB68);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1002234B0();
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

unint64_t sub_100223BC8()
{
  result = qword_10044EF18;
  if (!qword_10044EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF18);
  }

  return result;
}

unint64_t sub_100223C20()
{
  result = qword_10044EF20;
  if (!qword_10044EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF20);
  }

  return result;
}

unint64_t sub_100223C78()
{
  result = qword_10044EF28;
  if (!qword_10044EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF28);
  }

  return result;
}

uint64_t sub_100223CCC()
{
  sub_1002D3A58();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100223DB4(uint64_t a1)
{
  v2 = sub_1002234B0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100223E04()
{
  result = qword_10044EF40;
  if (!qword_10044EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF40);
  }

  return result;
}

uint64_t sub_100223E5C(uint64_t a1)
{
  v2 = sub_100223C78();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100223EAC()
{
  result = qword_10044EF48;
  if (!qword_10044EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF48);
  }

  return result;
}

uint64_t sub_100223F70@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1002242EC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F570);
  sub_10001EDB8(v0, qword_10051F570);
  return sub_1002D88F0();
}

uint64_t sub_100224350()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F588);
  v1 = sub_10001EDB8(v0, qword_10051F588);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100224410()
{
  result = swift_getKeyPath();
  qword_10051F5A0 = result;
  return result;
}

uint64_t sub_100224438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453A28, &qword_10034FB20) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453A30, &qword_10034FB28);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100224618, 0, 0);
}

uint64_t sub_100224618()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1002257F8();
  *v4 = v0;
  v4[1] = sub_1002246FC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7068, 0, &type metadata for AXVerbosityCapitalLettersEntity, v5);
}

uint64_t sub_1002246FC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1002247F8, 0, 0);
}

uint64_t sub_1002247F8()
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
  if (qword_10043B360 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F5A0;
  v0[36] = qword_10051F5A0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100453A08, &qword_100453A10, &qword_10034FB00);
  *v7 = v0;
  v7[1] = sub_100224954;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXSVoiceOverCapitalLetterFeedbackAppEnum, v8);
}

uint64_t sub_100224954()
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
    v6 = sub_100224AC4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100224AC4()
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
  sub_100223EAC();
  sub_100225A0C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100224D3C()
{
  v0 = sub_10000321C(&qword_100453A38, &qword_10034FB30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B360 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100225A0C();
  sub_10002B6E4(&qword_100453A40, &qword_100453A38, &qword_10034FB30);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100224EB0(uint64_t *a1))(void *)
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

void (*sub_100224F24(uint64_t *a1))(void *)
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

unint64_t sub_100224FC0()
{
  result = qword_10044EF60;
  if (!qword_10044EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF60);
  }

  return result;
}

unint64_t sub_100225018()
{
  result = qword_10044EF68;
  if (!qword_10044EF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF68);
  }

  return result;
}

uint64_t sub_100225114(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100224438(a1, v5, v4);
}

uint64_t sub_1002251C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C5438();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100225208()
{
  result = qword_10044EF70;
  if (!qword_10044EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF70);
  }

  return result;
}

uint64_t sub_100225280()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverCapitalLetterFeedback];

  v4 = sub_10001EE94(v3);
  if (v4 == 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  *v1 = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10022538C()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverCapitalLetterFeedback:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100225454(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002254E4, 0, 0);
}

uint64_t sub_1002254E4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044EF58, &qword_1003315E8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453A08, &qword_100453A10, &qword_10034FB00);
  sub_10000E0B0();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000057;
  v2[1] = 0x8000000100360870;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100225640()
{
  result = qword_10044EF78;
  if (!qword_10044EF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF78);
  }

  return result;
}

uint64_t sub_100225694(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100225C64();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100225748()
{
  result = qword_10044EF80;
  if (!qword_10044EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF80);
  }

  return result;
}

unint64_t sub_1002257A0()
{
  result = qword_10044EF88;
  if (!qword_10044EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF88);
  }

  return result;
}

unint64_t sub_1002257F8()
{
  result = qword_10044EF90;
  if (!qword_10044EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF90);
  }

  return result;
}

uint64_t sub_10022584C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100225C64();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100225900(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100225C64();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1002259B4()
{
  result = qword_10044EF98;
  if (!qword_10044EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EF98);
  }

  return result;
}

unint64_t sub_100225A0C()
{
  result = qword_10044EFA0;
  if (!qword_10044EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EFA0);
  }

  return result;
}

uint64_t sub_100225AA4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100225640();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100225B5C()
{
  result = qword_10044EFB8;
  if (!qword_10044EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EFB8);
  }

  return result;
}

unint64_t sub_100225BB4()
{
  result = qword_10044EFC0;
  if (!qword_10044EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EFC0);
  }

  return result;
}

unint64_t sub_100225C0C()
{
  result = qword_10044EFC8;
  if (!qword_10044EFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EFC8);
  }

  return result;
}

unint64_t sub_100225C64()
{
  result = qword_10044EFD0;
  if (!qword_10044EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EFD0);
  }

  return result;
}

uint64_t sub_100225CB8()
{
  v0 = qword_100447398;

  return v0;
}

unint64_t sub_100225CF4()
{
  result = qword_10044EFD8;
  if (!qword_10044EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EFD8);
  }

  return result;
}

uint64_t sub_100225D48()
{
  v0 = sub_10000321C(&qword_1004539F8, &qword_10034FAE0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453A00, &qword_10034FAE8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1002257F8();
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

unint64_t sub_100225F10()
{
  result = qword_10044EFE0;
  if (!qword_10044EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EFE0);
  }

  return result;
}

unint64_t sub_100225F68()
{
  result = qword_10044EFE8;
  if (!qword_10044EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EFE8);
  }

  return result;
}

unint64_t sub_100225FC0()
{
  result = qword_10044EFF0;
  if (!qword_10044EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044EFF0);
  }

  return result;
}

uint64_t sub_100226014()
{
  sub_1002D3A04();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002260FC(uint64_t a1)
{
  v2 = sub_1002257F8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10022614C()
{
  result = qword_10044F008;
  if (!qword_10044F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F008);
  }

  return result;
}

uint64_t sub_1002261A4(uint64_t a1)
{
  v2 = sub_100225FC0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002261F4()
{
  result = qword_10044F010;
  if (!qword_10044F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F010);
  }

  return result;
}

uint64_t sub_10022628C()
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
  sub_10001EDF0(v7, qword_10051F5A8);
  sub_10001EDB8(v7, qword_10051F5A8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1002263FC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10022676C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F5C0);
  sub_10001EDB8(v0, qword_10051F5C0);
  return sub_1002D88F0();
}

uint64_t sub_1002267D0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F5D8);
  v1 = sub_10001EDB8(v0, qword_10051F5D8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100226890()
{
  result = swift_getKeyPath();
  qword_10051F5F0 = result;
  return result;
}

uint64_t sub_1002268B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004539D0, &qword_10034FAA0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004539D8, &qword_10034FAA8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100226A98, 0, 0);
}

uint64_t sub_100226A98()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100227C74();
  *v4 = v0;
  v4[1] = sub_100226B7C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D706C, 0, &type metadata for AXVerbosityDeletingTextEntity, v5);
}

uint64_t sub_100226B7C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100226C78, 0, 0);
}

uint64_t sub_100226C78()
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
  if (qword_10043B380 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F5F0;
  v0[36] = qword_10051F5F0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_1004539B0, &qword_1004539B8, &qword_10034FA80);
  *v7 = v0;
  v7[1] = sub_100226DD4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXSVoiceOverDeletionFeedbackAppEnum, v8);
}

uint64_t sub_100226DD4()
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
    v6 = sub_100226F44;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100226F44()
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
  sub_1002261F4();
  sub_100227E88();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002271BC()
{
  v0 = sub_10000321C(&qword_1004539E0, &qword_10034FAB0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B380 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100227E88();
  sub_10002B6E4(&qword_1004539E8, &qword_1004539E0, &qword_10034FAB0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100227330(uint64_t *a1))(void *)
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

void (*sub_1002273A4(uint64_t *a1))(void *)
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

unint64_t sub_100227440()
{
  result = qword_10044F028;
  if (!qword_10044F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F028);
  }

  return result;
}

unint64_t sub_100227498()
{
  result = qword_10044F030;
  if (!qword_10044F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F030);
  }

  return result;
}

uint64_t sub_100227594(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1002268B8(a1, v5, v4);
}

uint64_t sub_100227640@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C583C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100227688()
{
  result = qword_10044F038;
  if (!qword_10044F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F038);
  }

  return result;
}

uint64_t sub_100227700()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverDeletionFeedback];

  v4 = sub_10001EE94(v3);
  if (v4 == 4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  *v1 = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10022780C()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverDeletionFeedback:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002278D4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100227964, 0, 0);
}

uint64_t sub_100227964()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044F020, &qword_100331C20);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004539B0, &qword_1004539B8, &qword_10034FA80);
  sub_10000EFB0();
  v3 = sub_1002D8890();
  *v2 = 0xD00000000000004DLL;
  v2[1] = 0x800000010035FC00;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100227ABC()
{
  result = qword_10044F040;
  if (!qword_10044F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F040);
  }

  return result;
}

uint64_t sub_100227B10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002280E0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100227BC4()
{
  result = qword_10044F048;
  if (!qword_10044F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F048);
  }

  return result;
}

unint64_t sub_100227C1C()
{
  result = qword_10044F050;
  if (!qword_10044F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F050);
  }

  return result;
}

unint64_t sub_100227C74()
{
  result = qword_10044F058;
  if (!qword_10044F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F058);
  }

  return result;
}

uint64_t sub_100227CC8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002280E0();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100227D7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002280E0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100227E30()
{
  result = qword_10044F060;
  if (!qword_10044F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F060);
  }

  return result;
}

unint64_t sub_100227E88()
{
  result = qword_10044F068;
  if (!qword_10044F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F068);
  }

  return result;
}

uint64_t sub_100227F20(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100227ABC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100227FD8()
{
  result = qword_10044F080;
  if (!qword_10044F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F080);
  }

  return result;
}

unint64_t sub_100228030()
{
  result = qword_10044F088;
  if (!qword_10044F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F088);
  }

  return result;
}

unint64_t sub_100228088()
{
  result = qword_10044F090;
  if (!qword_10044F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F090);
  }

  return result;
}

unint64_t sub_1002280E0()
{
  result = qword_10044F098;
  if (!qword_10044F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F098);
  }

  return result;
}

uint64_t sub_100228134()
{
  v0 = qword_1004473A8;

  return v0;
}

unint64_t sub_100228170()
{
  result = qword_10044F0A0;
  if (!qword_10044F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F0A0);
  }

  return result;
}

uint64_t sub_1002281C4()
{
  v0 = sub_10000321C(&qword_1004539A0, &qword_10034FA60);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004539A8, &qword_10034FA68);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100227C74();
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

unint64_t sub_10022838C()
{
  result = qword_10044F0A8;
  if (!qword_10044F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F0A8);
  }

  return result;
}

unint64_t sub_1002283E4()
{
  result = qword_10044F0B0;
  if (!qword_10044F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F0B0);
  }

  return result;
}

unint64_t sub_10022843C()
{
  result = qword_10044F0B8;
  if (!qword_10044F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F0B8);
  }

  return result;
}

uint64_t sub_100228490()
{
  sub_1002D39B0();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100228578(uint64_t a1)
{
  v2 = sub_100227C74();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002285C8()
{
  result = qword_10044F0D0;
  if (!qword_10044F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F0D0);
  }

  return result;
}

uint64_t sub_100228620(uint64_t a1)
{
  v2 = sub_10022843C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100228670()
{
  result = qword_10044F0D8;
  if (!qword_10044F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F0D8);
  }

  return result;
}

uint64_t sub_100228708()
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
  sub_10001EDF0(v7, qword_10051F5F8);
  sub_10001EDB8(v7, qword_10051F5F8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100228878@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100228BE8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F610);
  sub_10001EDB8(v0, qword_10051F610);
  return sub_1002D88F0();
}

uint64_t sub_100228C4C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F628);
  v1 = sub_10001EDB8(v0, qword_10051F628);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100228D0C()
{
  result = swift_getKeyPath();
  qword_10051F640 = result;
  return result;
}

uint64_t sub_100228D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453978, &qword_10034FA20) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453980, &qword_10034FA28);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100228F14, 0, 0);
}

uint64_t sub_100228F14()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10022A0CC();
  *v4 = v0;
  v4[1] = sub_100228FF8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7070, 0, &type metadata for AccessibilityVoiceOverImageDescriptionsEnabledEntity, v5);
}

uint64_t sub_100228FF8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1002290F4, 0, 0);
}

uint64_t sub_1002290F4()
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
  if (qword_10043B3A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F640;
  *(v0 + 288) = qword_10051F640;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453960, &qword_100453968, &qword_10034FA08);
  *v7 = v0;
  v7[1] = sub_100229258;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100229258()
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
    v6 = sub_1002293C8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002293C8()
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
  sub_100228670();
  sub_10022A2E0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100229640()
{
  v0 = sub_10000321C(&qword_100453988, &qword_10034FA30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B3A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10022A2E0();
  sub_10002B6E4(&qword_100453990, &qword_100453988, &qword_10034FA30);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1002297B4(uint64_t *a1))(void *)
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

void (*sub_100229828(uint64_t *a1))(void *)
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

unint64_t sub_1002298C4()
{
  result = qword_10044F0F0;
  if (!qword_10044F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F0F0);
  }

  return result;
}

unint64_t sub_10022991C()
{
  result = qword_10044F0F8;
  if (!qword_10044F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F0F8);
  }

  return result;
}

uint64_t sub_100229A18(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100228D34(a1, v5, v4);
}

uint64_t sub_100229AC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C5C40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100229B0C()
{
  result = qword_10044F100;
  if (!qword_10044F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F100);
  }

  return result;
}

unint64_t sub_100229B64()
{
  result = qword_10044F108;
  if (!qword_10044F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F108);
  }

  return result;
}

uint64_t sub_100229BD8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverImageCaptionsEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100229CA0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverImageCaptionsEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100229D38(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100229DC8, 0, 0);
}

uint64_t sub_100229DC8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044F0E8, qword_100332258);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453960, &qword_100453968, &qword_10034FA08);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000004BLL;
  v2[1] = 0x8000000100359FA0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100229F14()
{
  result = qword_10044F110;
  if (!qword_10044F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F110);
  }

  return result;
}

uint64_t sub_100229F68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10022A538();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10022A01C()
{
  result = qword_10044F118;
  if (!qword_10044F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F118);
  }

  return result;
}

unint64_t sub_10022A074()
{
  result = qword_10044F120;
  if (!qword_10044F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F120);
  }

  return result;
}

unint64_t sub_10022A0CC()
{
  result = qword_10044F128;
  if (!qword_10044F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F128);
  }

  return result;
}

uint64_t sub_10022A120(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10022A538();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10022A1D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10022A538();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10022A288()
{
  result = qword_10044F130;
  if (!qword_10044F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F130);
  }

  return result;
}

unint64_t sub_10022A2E0()
{
  result = qword_10044F138;
  if (!qword_10044F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F138);
  }

  return result;
}

uint64_t sub_10022A378(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100229F14();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10022A430()
{
  result = qword_10044F150;
  if (!qword_10044F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F150);
  }

  return result;
}

unint64_t sub_10022A488()
{
  result = qword_10044F158;
  if (!qword_10044F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F158);
  }

  return result;
}

unint64_t sub_10022A4E0()
{
  result = qword_10044F160;
  if (!qword_10044F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F160);
  }

  return result;
}

unint64_t sub_10022A538()
{
  result = qword_10044F168;
  if (!qword_10044F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F168);
  }

  return result;
}

uint64_t sub_10022A58C()
{
  v0 = qword_1004473B8;

  return v0;
}

unint64_t sub_10022A5C8()
{
  result = qword_10044F170;
  if (!qword_10044F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F170);
  }

  return result;
}

uint64_t sub_10022A61C()
{
  v0 = sub_10000321C(&qword_100453950, &qword_10034F9E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453958, &qword_10034F9F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10022A0CC();
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

unint64_t sub_10022A7E4()
{
  result = qword_10044F178;
  if (!qword_10044F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F178);
  }

  return result;
}

unint64_t sub_10022A83C()
{
  result = qword_10044F180;
  if (!qword_10044F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F180);
  }

  return result;
}

unint64_t sub_10022A894()
{
  result = qword_10044F188;
  if (!qword_10044F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F188);
  }

  return result;
}

uint64_t sub_10022A8E8()
{
  sub_1002D395C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10022A9D0(uint64_t a1)
{
  v2 = sub_10022A0CC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10022AA20()
{
  result = qword_10044F1A0;
  if (!qword_10044F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F1A0);
  }

  return result;
}

uint64_t sub_10022AA78(uint64_t a1)
{
  v2 = sub_10022A894();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10022AAC8()
{
  result = qword_10044F1A8;
  if (!qword_10044F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F1A8);
  }

  return result;
}

uint64_t sub_10022AB60()
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
  sub_10001EDF0(v7, qword_10051F648);
  sub_10001EDB8(v7, qword_10051F648);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10022ACD0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10022B044()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F660);
  sub_10001EDB8(v0, qword_10051F660);
  return sub_1002D88F0();
}

uint64_t sub_10022B0A8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F678);
  v1 = sub_10001EDB8(v0, qword_10051F678);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10022B168()
{
  result = swift_getKeyPath();
  qword_10051F690 = result;
  return result;
}

uint64_t sub_10022B190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453928, &qword_10034F9A8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453930, &qword_10034F9B0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10022B370, 0, 0);
}

uint64_t sub_10022B370()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10022C54C();
  *v4 = v0;
  v4[1] = sub_10022B454;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7074, 0, &type metadata for AccessibilityVoiceOverImageDescriptionsSensitiveContentOutputEntity, v5);
}

uint64_t sub_10022B454()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10022B550, 0, 0);
}

uint64_t sub_10022B550()
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
  if (qword_10043B3C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F690;
  v0[36] = qword_10051F690;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100453908, &qword_100453910, &qword_10034F988);
  *v7 = v0;
  v7[1] = sub_10022B6AC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXSVoiceOverDiscoveredSensitiveContentFeedbackAppEnum, v8);
}

uint64_t sub_10022B6AC()
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
    v6 = sub_10022B81C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10022B81C()
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
  sub_10022AAC8();
  sub_10022C760();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10022BA94()
{
  v0 = sub_10000321C(&qword_100453938, &qword_10034F9B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B3C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10022C760();
  sub_10002B6E4(&qword_100453940, &qword_100453938, &qword_10034F9B8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10022BC08(uint64_t *a1))(void *)
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

void (*sub_10022BC7C(uint64_t *a1))(void *)
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

unint64_t sub_10022BD18()
{
  result = qword_10044F1C0;
  if (!qword_10044F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F1C0);
  }

  return result;
}

unint64_t sub_10022BD70()
{
  result = qword_10044F1C8;
  if (!qword_10044F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F1C8);
  }

  return result;
}

uint64_t sub_10022BE6C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10022B190(a1, v5, v4);
}

uint64_t sub_10022BF18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C60A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10022BF60()
{
  result = qword_10044F1D0;
  if (!qword_10044F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F1D0);
  }

  return result;
}

uint64_t sub_10022BFD8()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverDiscoveredSensitiveContentFeedback];

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

uint64_t sub_10022C0E4()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverDiscoveredSensitiveContentFeedback:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10022C1AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10022C23C, 0, 0);
}

uint64_t sub_10022C23C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044F1B8, &qword_100332890);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453908, &qword_100453910, &qword_10034F988);
  sub_10000FDB8();
  v3 = sub_1002D8890();
  *v2 = 0xD00000000000004BLL;
  v2[1] = 0x8000000100359BE0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10022C394()
{
  result = qword_10044F1D8;
  if (!qword_10044F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F1D8);
  }

  return result;
}

uint64_t sub_10022C3E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10022C9B8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10022C49C()
{
  result = qword_10044F1E0;
  if (!qword_10044F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F1E0);
  }

  return result;
}

unint64_t sub_10022C4F4()
{
  result = qword_10044F1E8;
  if (!qword_10044F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F1E8);
  }

  return result;
}

unint64_t sub_10022C54C()
{
  result = qword_10044F1F0;
  if (!qword_10044F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F1F0);
  }

  return result;
}

uint64_t sub_10022C5A0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10022C9B8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10022C654(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10022C9B8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10022C708()
{
  result = qword_10044F1F8;
  if (!qword_10044F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F1F8);
  }

  return result;
}

unint64_t sub_10022C760()
{
  result = qword_10044F200;
  if (!qword_10044F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F200);
  }

  return result;
}

uint64_t sub_10022C7F8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10022C394();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10022C8B0()
{
  result = qword_10044F218;
  if (!qword_10044F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F218);
  }

  return result;
}

unint64_t sub_10022C908()
{
  result = qword_10044F220;
  if (!qword_10044F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F220);
  }

  return result;
}

unint64_t sub_10022C960()
{
  result = qword_10044F228;
  if (!qword_10044F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F228);
  }

  return result;
}

unint64_t sub_10022C9B8()
{
  result = qword_10044F230;
  if (!qword_10044F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F230);
  }

  return result;
}

uint64_t sub_10022CA0C()
{
  v0 = qword_1004473C8;

  return v0;
}

unint64_t sub_10022CA48()
{
  result = qword_10044F238;
  if (!qword_10044F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F238);
  }

  return result;
}

uint64_t sub_10022CA9C()
{
  v0 = sub_10000321C(&qword_1004538F8, &qword_10034F968);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453900, &qword_10034F970);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10022C54C();
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

unint64_t sub_10022CC64()
{
  result = qword_10044F240;
  if (!qword_10044F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F240);
  }

  return result;
}

unint64_t sub_10022CCBC()
{
  result = qword_10044F248;
  if (!qword_10044F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F248);
  }

  return result;
}

unint64_t sub_10022CD14()
{
  result = qword_10044F250;
  if (!qword_10044F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F250);
  }

  return result;
}

uint64_t sub_10022CD68()
{
  sub_1002D3908();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10022CE50(uint64_t a1)
{
  v2 = sub_10022C54C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10022CEA0()
{
  result = qword_10044F268;
  if (!qword_10044F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F268);
  }

  return result;
}

uint64_t sub_10022CEF8(uint64_t a1)
{
  v2 = sub_10022CD14();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10022CF48()
{
  result = qword_10044F270;
  if (!qword_10044F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F270);
  }

  return result;
}

uint64_t sub_10022D00C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10022D388()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F6B0);
  sub_10001EDB8(v0, qword_10051F6B0);
  return sub_1002D88F0();
}

uint64_t sub_10022D3EC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F6C8);
  v1 = sub_10001EDB8(v0, qword_10051F6C8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10022D4AC()
{
  result = swift_getKeyPath();
  qword_10051F6E0 = result;
  return result;
}

uint64_t sub_10022D4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004538D0, &qword_10034F928) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004538D8, &qword_10034F930);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10022D6B4, 0, 0);
}

uint64_t sub_10022D6B4()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10022E898();
  *v4 = v0;
  v4[1] = sub_10022D798;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7078, 0, &type metadata for AXVerbosityNumberFeedbackEntity, v5);
}

uint64_t sub_10022D798()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10022D894, 0, 0);
}

uint64_t sub_10022D894()
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
  if (qword_10043B3E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F6E0;
  *(v0 + 288) = qword_10051F6E0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004538B0, &qword_1004538B8, &qword_10034F908);
  *v7 = v0;
  v7[1] = sub_10022D9F8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for AXSVoiceOverNumberFeedbackAppEnum, v8);
}

uint64_t sub_10022D9F8()
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
    v6 = sub_10022DB68;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10022DB68()
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
  sub_10022CF48();
  sub_10022EAAC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10022DDE0()
{
  v0 = sub_10000321C(&qword_1004538E0, &qword_10034F938);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B3E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10022EAAC();
  sub_10002B6E4(&qword_1004538E8, &qword_1004538E0, &qword_10034F938);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10022DF54(uint64_t *a1))(void *)
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

void (*sub_10022DFC8(uint64_t *a1))(void *)
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

unint64_t sub_10022E064()
{
  result = qword_10044F288;
  if (!qword_10044F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F288);
  }

  return result;
}

unint64_t sub_10022E0BC()
{
  result = qword_10044F290;
  if (!qword_10044F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F290);
  }

  return result;
}

uint64_t sub_10022E1B8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10022D4D4(a1, v5, v4);
}

uint64_t sub_10022E264@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C64AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10022E2AC()
{
  result = qword_10044F298;
  if (!qword_10044F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F298);
  }

  return result;
}

uint64_t sub_10022E324()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverNumberFeedback];

  *v1 = v3 == 2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10022E424()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = v2;
  if (v1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v2 setVoiceOverNumberFeedback:v4];

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10022E4F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10022E584, 0, 0);
}

uint64_t sub_10022E584()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044F280, &qword_100332EC8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004538B0, &qword_1004538B8, &qword_10034F908);
  sub_100010980();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000049;
  v2[1] = 0x800000010035D230;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10022E6E0()
{
  result = qword_10044F2A0;
  if (!qword_10044F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F2A0);
  }

  return result;
}

uint64_t sub_10022E734(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10022ED04();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10022E7E8()
{
  result = qword_10044F2A8;
  if (!qword_10044F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F2A8);
  }

  return result;
}

unint64_t sub_10022E840()
{
  result = qword_10044F2B0;
  if (!qword_10044F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F2B0);
  }

  return result;
}

unint64_t sub_10022E898()
{
  result = qword_10044F2B8;
  if (!qword_10044F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F2B8);
  }

  return result;
}

uint64_t sub_10022E8EC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10022ED04();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10022E9A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10022ED04();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10022EA54()
{
  result = qword_10044F2C0;
  if (!qword_10044F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F2C0);
  }

  return result;
}

unint64_t sub_10022EAAC()
{
  result = qword_10044F2C8;
  if (!qword_10044F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F2C8);
  }

  return result;
}

uint64_t sub_10022EB44(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10022E6E0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10022EBFC()
{
  result = qword_10044F2E0;
  if (!qword_10044F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F2E0);
  }

  return result;
}

unint64_t sub_10022EC54()
{
  result = qword_10044F2E8;
  if (!qword_10044F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F2E8);
  }

  return result;
}

unint64_t sub_10022ECAC()
{
  result = qword_10044F2F0;
  if (!qword_10044F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F2F0);
  }

  return result;
}

unint64_t sub_10022ED04()
{
  result = qword_10044F2F8;
  if (!qword_10044F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F2F8);
  }

  return result;
}

uint64_t sub_10022ED58()
{
  v0 = qword_1004473D8;

  return v0;
}

unint64_t sub_10022ED94()
{
  result = qword_10044F300;
  if (!qword_10044F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F300);
  }

  return result;
}

uint64_t sub_10022EDE8()
{
  v0 = sub_10000321C(&qword_1004538A0, &qword_10034F8E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004538A8, &qword_10034F8F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10022E898();
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

unint64_t sub_10022EFB0()
{
  result = qword_10044F308;
  if (!qword_10044F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F308);
  }

  return result;
}

unint64_t sub_10022F008()
{
  result = qword_10044F310;
  if (!qword_10044F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F310);
  }

  return result;
}

unint64_t sub_10022F060()
{
  result = qword_10044F318;
  if (!qword_10044F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F318);
  }

  return result;
}

uint64_t sub_10022F0B4()
{
  sub_1002D38B4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10022F19C(uint64_t a1)
{
  v2 = sub_10022E898();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10022F1EC()
{
  result = qword_10044F330;
  if (!qword_10044F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F330);
  }

  return result;
}

uint64_t sub_10022F244(uint64_t a1)
{
  v2 = sub_10022F060();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10022F294()
{
  result = qword_10044F338;
  if (!qword_10044F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F338);
  }

  return result;
}

uint64_t sub_10022F354@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10022F6CC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F700);
  sub_10001EDB8(v0, qword_10051F700);
  return sub_1002D88F0();
}

uint64_t sub_10022F730()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F718);
  v1 = sub_10001EDB8(v0, qword_10051F718);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10022F7F0()
{
  result = swift_getKeyPath();
  qword_10051F730 = result;
  return result;
}

uint64_t sub_10022F818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453878, &qword_10034F8A8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453880, &qword_10034F8B0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10022F9F8, 0, 0);
}

uint64_t sub_10022F9F8()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100230BA8();
  *v4 = v0;
  v4[1] = sub_10022FADC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D707C, 0, &type metadata for AXVerbosityEmojiSuffixEnabledEntity, v5);
}

uint64_t sub_10022FADC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10022FBD8, 0, 0);
}

uint64_t sub_10022FBD8()
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
  if (qword_10043B400 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F730;
  *(v0 + 288) = qword_10051F730;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453860, &qword_100453868, &qword_10034F890);
  *v7 = v0;
  v7[1] = sub_10022FD3C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10022FD3C()
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
    v6 = sub_10022FEAC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10022FEAC()
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
  sub_10022F294();
  sub_100230DBC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100230124()
{
  v0 = sub_10000321C(&qword_100453888, &qword_10034F8B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B400 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100230DBC();
  sub_10002B6E4(&qword_100453890, &qword_100453888, &qword_10034F8B8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100230298(uint64_t *a1))(void *)
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

void (*sub_10023030C(uint64_t *a1))(void *)
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

unint64_t sub_1002303A8()
{
  result = qword_10044F350;
  if (!qword_10044F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F350);
  }

  return result;
}

unint64_t sub_100230400()
{
  result = qword_10044F358;
  if (!qword_10044F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F358);
  }

  return result;
}

uint64_t sub_1002304FC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10022F818(a1, v5, v4);
}

uint64_t sub_1002305A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C68B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1002305F0()
{
  result = qword_10044F360;
  if (!qword_10044F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F360);
  }

  return result;
}

unint64_t sub_100230648()
{
  result = qword_10044F368;
  if (!qword_10044F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F368);
  }

  return result;
}

uint64_t sub_1002306BC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverVerbosityEmojiSuffixEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100230784()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverVerbosityEmojiSuffixEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10023081C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002308AC, 0, 0);
}

uint64_t sub_1002308AC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044F348, qword_100333500);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453860, &qword_100453868, &qword_10034F890);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000026;
  v2[1] = 0x800000010035F760;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1002309F0()
{
  result = qword_10044F370;
  if (!qword_10044F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F370);
  }

  return result;
}

uint64_t sub_100230A44(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100231014();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100230AF8()
{
  result = qword_10044F378;
  if (!qword_10044F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F378);
  }

  return result;
}

unint64_t sub_100230B50()
{
  result = qword_10044F380;
  if (!qword_10044F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F380);
  }

  return result;
}

unint64_t sub_100230BA8()
{
  result = qword_10044F388;
  if (!qword_10044F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F388);
  }

  return result;
}

uint64_t sub_100230BFC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100231014();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100230CB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100231014();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100230D64()
{
  result = qword_10044F390;
  if (!qword_10044F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F390);
  }

  return result;
}

unint64_t sub_100230DBC()
{
  result = qword_10044F398;
  if (!qword_10044F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F398);
  }

  return result;
}

uint64_t sub_100230E54(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002309F0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100230F0C()
{
  result = qword_10044F3B0;
  if (!qword_10044F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F3B0);
  }

  return result;
}

unint64_t sub_100230F64()
{
  result = qword_10044F3B8;
  if (!qword_10044F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F3B8);
  }

  return result;
}

unint64_t sub_100230FBC()
{
  result = qword_10044F3C0;
  if (!qword_10044F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F3C0);
  }

  return result;
}

unint64_t sub_100231014()
{
  result = qword_10044F3C8;
  if (!qword_10044F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F3C8);
  }

  return result;
}

uint64_t sub_100231068()
{
  v0 = qword_1004473E8;

  return v0;
}

unint64_t sub_1002310A4()
{
  result = qword_10044F3D0;
  if (!qword_10044F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F3D0);
  }

  return result;
}

uint64_t sub_1002310F8()
{
  v0 = sub_10000321C(&qword_100453850, &qword_10034F870);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453858, &qword_10034F878);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100230BA8();
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

unint64_t sub_1002312C0()
{
  result = qword_10044F3D8;
  if (!qword_10044F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F3D8);
  }

  return result;
}

unint64_t sub_100231318()
{
  result = qword_10044F3E0;
  if (!qword_10044F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F3E0);
  }

  return result;
}

unint64_t sub_100231370()
{
  result = qword_10044F3E8;
  if (!qword_10044F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F3E8);
  }

  return result;
}

uint64_t sub_1002313C4()
{
  sub_1002D3860();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002314AC(uint64_t a1)
{
  v2 = sub_100230BA8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002314FC()
{
  result = qword_10044F400;
  if (!qword_10044F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F400);
  }

  return result;
}

uint64_t sub_100231554(uint64_t a1)
{
  v2 = sub_100231370();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002315A4()
{
  result = qword_10044F408;
  if (!qword_10044F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F408);
  }

  return result;
}

uint64_t sub_10023163C()
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
  sub_10001EDF0(v7, qword_10051F738);
  sub_10001EDB8(v7, qword_10051F738);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1002317AC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100231B1C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F750);
  sub_10001EDB8(v0, qword_10051F750);
  return sub_1002D88F0();
}

uint64_t sub_100231B80()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F768);
  v1 = sub_10001EDB8(v0, qword_10051F768);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100231C40()
{
  result = swift_getKeyPath();
  qword_10051F780 = result;
  return result;
}

uint64_t sub_100231C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453828, &qword_10034F830) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453830, &qword_10034F838);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100231E48, 0, 0);
}

uint64_t sub_100231E48()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100233000();
  *v4 = v0;
  v4[1] = sub_100231F2C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7080, 0, &type metadata for AccessibilityVoiceOverRotorChangeRotorWithItemEntity, v5);
}

uint64_t sub_100231F2C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100232028, 0, 0);
}

uint64_t sub_100232028()
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
  if (qword_10043B420 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F780;
  *(v0 + 288) = qword_10051F780;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453810, &qword_100453818, &qword_10034F818);
  *v7 = v0;
  v7[1] = sub_10023218C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10023218C()
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
    v6 = sub_1002322FC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002322FC()
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
  sub_1002315A4();
  sub_100233214();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100232574()
{
  v0 = sub_10000321C(&qword_100453838, &qword_10034F840);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B420 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100233214();
  sub_10002B6E4(&qword_100453840, &qword_100453838, &qword_10034F840);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1002326E8(uint64_t *a1))(void *)
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

void (*sub_10023275C(uint64_t *a1))(void *)
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

unint64_t sub_1002327F8()
{
  result = qword_10044F420;
  if (!qword_10044F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F420);
  }

  return result;
}

unint64_t sub_100232850()
{
  result = qword_10044F428;
  if (!qword_10044F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F428);
  }

  return result;
}

uint64_t sub_10023294C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100231C68(a1, v5, v4);
}

uint64_t sub_1002329F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C6D18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100232A40()
{
  result = qword_10044F430;
  if (!qword_10044F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F430);
  }

  return result;
}

unint64_t sub_100232A98()
{
  result = qword_10044F438;
  if (!qword_10044F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F438);
  }

  return result;
}

uint64_t sub_100232B0C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverRotorUpdatesWithElement];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100232BD4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverRotorUpdatesWithElement:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100232C6C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100232CFC, 0, 0);
}

uint64_t sub_100232CFC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044F418, qword_100333B38);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453810, &qword_100453818, &qword_10034F818);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000002FLL;
  v2[1] = 0x800000010035B150;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100232E48()
{
  result = qword_10044F440;
  if (!qword_10044F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F440);
  }

  return result;
}

uint64_t sub_100232E9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10023346C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100232F50()
{
  result = qword_10044F448;
  if (!qword_10044F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F448);
  }

  return result;
}

unint64_t sub_100232FA8()
{
  result = qword_10044F450;
  if (!qword_10044F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F450);
  }

  return result;
}

unint64_t sub_100233000()
{
  result = qword_10044F458;
  if (!qword_10044F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F458);
  }

  return result;
}

uint64_t sub_100233054(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10023346C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100233108(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10023346C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1002331BC()
{
  result = qword_10044F460;
  if (!qword_10044F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F460);
  }

  return result;
}

unint64_t sub_100233214()
{
  result = qword_10044F468;
  if (!qword_10044F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F468);
  }

  return result;
}

uint64_t sub_1002332AC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100232E48();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100233364()
{
  result = qword_10044F480;
  if (!qword_10044F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F480);
  }

  return result;
}

unint64_t sub_1002333BC()
{
  result = qword_10044F488;
  if (!qword_10044F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F488);
  }

  return result;
}

unint64_t sub_100233414()
{
  result = qword_10044F490;
  if (!qword_10044F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F490);
  }

  return result;
}

unint64_t sub_10023346C()
{
  result = qword_10044F498;
  if (!qword_10044F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F498);
  }

  return result;
}

uint64_t sub_1002334C0()
{
  v0 = qword_1004473F8;

  return v0;
}

unint64_t sub_1002334FC()
{
  result = qword_10044F4A0;
  if (!qword_10044F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F4A0);
  }

  return result;
}

uint64_t sub_100233550()
{
  v0 = sub_10000321C(&qword_100453800, &qword_10034F7F8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453808, &qword_10034F800);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100233000();
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

unint64_t sub_100233718()
{
  result = qword_10044F4A8;
  if (!qword_10044F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F4A8);
  }

  return result;
}

unint64_t sub_100233770()
{
  result = qword_10044F4B0;
  if (!qword_10044F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F4B0);
  }

  return result;
}

unint64_t sub_1002337C8()
{
  result = qword_10044F4B8;
  if (!qword_10044F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F4B8);
  }

  return result;
}

uint64_t sub_10023381C()
{
  sub_1002D380C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100233904(uint64_t a1)
{
  v2 = sub_100233000();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100233954()
{
  result = qword_10044F4D0;
  if (!qword_10044F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F4D0);
  }

  return result;
}

uint64_t sub_1002339AC(uint64_t a1)
{
  v2 = sub_1002337C8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002339FC()
{
  result = qword_10044F4D8;
  if (!qword_10044F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F4D8);
  }

  return result;
}

uint64_t sub_100233A94()
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
  sub_10001EDF0(v7, qword_10051F788);
  sub_10001EDB8(v7, qword_10051F788);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100233C04()
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

uint64_t sub_100233F78()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F7A0);
  sub_10001EDB8(v0, qword_10051F7A0);
  return sub_1002D88F0();
}

uint64_t sub_100233FDC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F7B8);
  v1 = sub_10001EDB8(v0, qword_10051F7B8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10023409C()
{
  result = swift_getKeyPath();
  qword_10051F7D0 = result;
  return result;
}

uint64_t sub_1002340C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004537D8, &qword_10034F7B8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004537E0, &qword_10034F7C0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002342A4, 0, 0);
}

uint64_t sub_1002342A4()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10023545C();
  *v4 = v0;
  v4[1] = sub_100234388;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7084, 0, &type metadata for AccessibilityVoiceOverRotorEditAppsOnHomeScreenEntity, v5);
}

uint64_t sub_100234388()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100234484, 0, 0);
}

uint64_t sub_100234484()
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
  if (qword_10043B440 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F7D0;
  *(v0 + 288) = qword_10051F7D0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004537C0, &qword_1004537C8, &qword_10034F7A0);
  *v7 = v0;
  v7[1] = sub_1002345E8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1002345E8()
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
    v6 = sub_100234758;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100234758()
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
  sub_1002339FC();
  sub_100235670();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002349D0()
{
  v0 = sub_10000321C(&qword_1004537E8, &qword_10034F7C8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B440 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100235670();
  sub_10002B6E4(&qword_1004537F0, &qword_1004537E8, &qword_10034F7C8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100234B44(uint64_t *a1))(void *)
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

void (*sub_100234BB8(uint64_t *a1))(void *)
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

unint64_t sub_100234C54()
{
  result = qword_10044F4F0;
  if (!qword_10044F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F4F0);
  }

  return result;
}

unint64_t sub_100234CAC()
{
  result = qword_10044F4F8;
  if (!qword_10044F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F4F8);
  }

  return result;
}

uint64_t sub_100234DA8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1002340C4(a1, v5, v4);
}

uint64_t sub_100234E54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C7180();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100234E9C()
{
  result = qword_10044F500;
  if (!qword_10044F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F500);
  }

  return result;
}

unint64_t sub_100234EF4()
{
  result = qword_10044F508;
  if (!qword_10044F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F508);
  }

  return result;
}

uint64_t sub_100234F68()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverEditAppsActionEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100235030()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverEditAppsActionEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002350C8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100235158, 0, 0);
}

uint64_t sub_100235158()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044F4E8, qword_100334170);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004537C0, &qword_1004537C8, &qword_10034F7A0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000025;
  v2[1] = 0x800000010035F7E0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1002352A4()
{
  result = qword_10044F510;
  if (!qword_10044F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F510);
  }

  return result;
}

uint64_t sub_1002352F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002358C8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1002353AC()
{
  result = qword_10044F518;
  if (!qword_10044F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F518);
  }

  return result;
}

unint64_t sub_100235404()
{
  result = qword_10044F520;
  if (!qword_10044F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F520);
  }

  return result;
}

unint64_t sub_10023545C()
{
  result = qword_10044F528;
  if (!qword_10044F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F528);
  }

  return result;
}

uint64_t sub_1002354B0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002358C8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100235564(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002358C8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100235618()
{
  result = qword_10044F530;
  if (!qword_10044F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F530);
  }

  return result;
}

unint64_t sub_100235670()
{
  result = qword_10044F538;
  if (!qword_10044F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F538);
  }

  return result;
}

uint64_t sub_100235708(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002352A4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1002357C0()
{
  result = qword_10044F550;
  if (!qword_10044F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F550);
  }

  return result;
}

unint64_t sub_100235818()
{
  result = qword_10044F558;
  if (!qword_10044F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F558);
  }

  return result;
}

unint64_t sub_100235870()
{
  result = qword_10044F560;
  if (!qword_10044F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F560);
  }

  return result;
}

unint64_t sub_1002358C8()
{
  result = qword_10044F568;
  if (!qword_10044F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F568);
  }

  return result;
}

uint64_t sub_10023591C()
{
  v0 = qword_100447408;

  return v0;
}

unint64_t sub_100235958()
{
  result = qword_10044F570;
  if (!qword_10044F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F570);
  }

  return result;
}

uint64_t sub_1002359AC()
{
  v0 = sub_10000321C(&qword_1004537B0, &qword_10034F780);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004537B8, &qword_10034F788);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10023545C();
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

unint64_t sub_100235B74()
{
  result = qword_10044F578;
  if (!qword_10044F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F578);
  }

  return result;
}

unint64_t sub_100235BCC()
{
  result = qword_10044F580;
  if (!qword_10044F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F580);
  }

  return result;
}

unint64_t sub_100235C24()
{
  result = qword_10044F588;
  if (!qword_10044F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F588);
  }

  return result;
}

uint64_t sub_100235C78()
{
  sub_1002D37B8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100235D60(uint64_t a1)
{
  v2 = sub_10023545C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100235DB0()
{
  result = qword_10044F5A0;
  if (!qword_10044F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F5A0);
  }

  return result;
}

uint64_t sub_100235E08(uint64_t a1)
{
  v2 = sub_100235C24();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100235E58()
{
  result = qword_10044F5A8;
  if (!qword_10044F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F5A8);
  }

  return result;
}

uint64_t sub_100235EF0()
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
  sub_10001EDF0(v7, qword_10051F7D8);
  sub_10001EDB8(v7, qword_10051F7D8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100236060@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1002363D0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F7F0);
  sub_10001EDB8(v0, qword_10051F7F0);
  return sub_1002D88F0();
}

uint64_t sub_100236434()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F808);
  v1 = sub_10001EDB8(v0, qword_10051F808);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1002364F4()
{
  result = swift_getKeyPath();
  qword_10051F820 = result;
  return result;
}

uint64_t sub_10023651C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453788, &qword_10034F740) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453790, &qword_10034F748);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002366FC, 0, 0);
}

uint64_t sub_1002366FC()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1002378D4();
  *v4 = v0;
  v4[1] = sub_1002367E0;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7088, 0, &type metadata for AccessibilityVoiceOverNavigationStyleEntity, v5);
}

uint64_t sub_1002367E0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1002368DC, 0, 0);
}

uint64_t sub_1002368DC()
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
  if (qword_10043B460 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F820;
  *(v0 + 288) = qword_10051F820;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453768, &qword_100453770, &qword_10034F720);
  *v7 = v0;
  v7[1] = sub_100236A40;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for AXSVoiceOverNavigationStyleAppEnum, v8);
}

uint64_t sub_100236A40()
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
    v6 = sub_100236BB0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100236BB0()
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
  sub_100235E58();
  sub_100237AE8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100236E28()
{
  v0 = sub_10000321C(&qword_100453798, &qword_10034F750);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B460 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100237AE8();
  sub_10002B6E4(&qword_1004537A0, &qword_100453798, &qword_10034F750);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100236F9C(uint64_t *a1))(void *)
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

void (*sub_100237010(uint64_t *a1))(void *)
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

unint64_t sub_1002370AC()
{
  result = qword_10044F5C0;
  if (!qword_10044F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F5C0);
  }

  return result;
}

unint64_t sub_100237104()
{
  result = qword_10044F5C8;
  if (!qword_10044F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F5C8);
  }

  return result;
}

uint64_t sub_100237200(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10023651C(a1, v5, v4);
}

uint64_t sub_1002372AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C75E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1002372F4()
{
  result = qword_10044F5D0;
  if (!qword_10044F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F5D0);
  }

  return result;
}

uint64_t sub_10023736C()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverNavigationStyle];

  *v1 = v3 == 1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10023746C()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverNavigationStyle:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100237534(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002375C4, 0, 0);
}

uint64_t sub_1002375C4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044F5B8, &qword_1003347A8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453768, &qword_100453770, &qword_10034F720);
  sub_100012E64();
  v3 = sub_1002D8890();
  *v2 = 0xD00000000000002FLL;
  v2[1] = 0x8000000100359B70;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10023771C()
{
  result = qword_10044F5D8;
  if (!qword_10044F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F5D8);
  }

  return result;
}

uint64_t sub_100237770(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100237D40();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100237824()
{
  result = qword_10044F5E0;
  if (!qword_10044F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F5E0);
  }

  return result;
}

unint64_t sub_10023787C()
{
  result = qword_10044F5E8;
  if (!qword_10044F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F5E8);
  }

  return result;
}

unint64_t sub_1002378D4()
{
  result = qword_10044F5F0;
  if (!qword_10044F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F5F0);
  }

  return result;
}

uint64_t sub_100237928(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100237D40();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1002379DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100237D40();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100237A90()
{
  result = qword_10044F5F8;
  if (!qword_10044F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F5F8);
  }

  return result;
}

unint64_t sub_100237AE8()
{
  result = qword_10044F600;
  if (!qword_10044F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F600);
  }

  return result;
}

uint64_t sub_100237B80(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10023771C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100237C38()
{
  result = qword_10044F618;
  if (!qword_10044F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F618);
  }

  return result;
}

unint64_t sub_100237C90()
{
  result = qword_10044F620;
  if (!qword_10044F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F620);
  }

  return result;
}

unint64_t sub_100237CE8()
{
  result = qword_10044F628;
  if (!qword_10044F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F628);
  }

  return result;
}

unint64_t sub_100237D40()
{
  result = qword_10044F630;
  if (!qword_10044F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F630);
  }

  return result;
}

uint64_t sub_100237D94()
{
  v0 = qword_100447418;

  return v0;
}

unint64_t sub_100237DD0()
{
  result = qword_10044F638;
  if (!qword_10044F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F638);
  }

  return result;
}

uint64_t sub_100237E24()
{
  v0 = sub_10000321C(&qword_100453758, &qword_10034F700);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453760, &qword_10034F708);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1002378D4();
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

unint64_t sub_100237FEC()
{
  result = qword_10044F640;
  if (!qword_10044F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F640);
  }

  return result;
}

unint64_t sub_100238044()
{
  result = qword_10044F648;
  if (!qword_10044F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F648);
  }

  return result;
}

unint64_t sub_10023809C()
{
  result = qword_10044F650;
  if (!qword_10044F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F650);
  }

  return result;
}

uint64_t sub_1002380F0()
{
  sub_1002D3764();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002381D8(uint64_t a1)
{
  v2 = sub_1002378D4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100238228()
{
  result = qword_10044F668;
  if (!qword_10044F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F668);
  }

  return result;
}

uint64_t sub_100238280(uint64_t a1)
{
  v2 = sub_10023809C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002382D0()
{
  result = qword_10044F670;
  if (!qword_10044F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F670);
  }

  return result;
}

uint64_t sub_100238390@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100238708()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F840);
  sub_10001EDB8(v0, qword_10051F840);
  return sub_1002D88F0();
}

uint64_t sub_10023876C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F858);
  v1 = sub_10001EDB8(v0, qword_10051F858);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10023882C()
{
  result = swift_getKeyPath();
  qword_10051F870 = result;
  return result;
}

uint64_t sub_100238854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453730, &qword_10034F6C0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453738, &qword_10034F6C8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100238A34, 0, 0);
}

uint64_t sub_100238A34()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100239BE4();
  *v4 = v0;
  v4[1] = sub_100238B18;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D708C, 0, &type metadata for AccessibilityVoiceOverAudioSendToHDMIEntity, v5);
}

uint64_t sub_100238B18()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100238C14, 0, 0);
}

uint64_t sub_100238C14()
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
  if (qword_10043B480 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F870;
  *(v0 + 288) = qword_10051F870;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453718, &qword_100453720, &qword_10034F6A8);
  *v7 = v0;
  v7[1] = sub_100238D78;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100238D78()
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
    v6 = sub_100238EE8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100238EE8()
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
  sub_1002382D0();
  sub_100239DF8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100239160()
{
  v0 = sub_10000321C(&qword_100453740, &qword_10034F6D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B480 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100239DF8();
  sub_10002B6E4(&qword_100453748, &qword_100453740, &qword_10034F6D0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1002392D4(uint64_t *a1))(void *)
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

void (*sub_100239348(uint64_t *a1))(void *)
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

unint64_t sub_1002393E4()
{
  result = qword_10044F688;
  if (!qword_10044F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F688);
  }

  return result;
}

unint64_t sub_10023943C()
{
  result = qword_10044F690;
  if (!qword_10044F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F690);
  }

  return result;
}

uint64_t sub_100239538(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100238854(a1, v5, v4);
}

uint64_t sub_1002395E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C79EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10023962C()
{
  result = qword_10044F698;
  if (!qword_10044F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F698);
  }

  return result;
}

unint64_t sub_100239684()
{
  result = qword_10044F6A0;
  if (!qword_10044F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F6A0);
  }

  return result;
}

uint64_t sub_1002396F8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverAudioFollowsHDMIAudio];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002397C0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverAudioFollowsHDMIAudio:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100239858(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002398E8, 0, 0);
}

uint64_t sub_1002398E8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044F680, qword_100334DE0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453718, &qword_100453720, &qword_10034F6A8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000023;
  v2[1] = 0x800000010035BFA0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100239A2C()
{
  result = qword_10044F6A8;
  if (!qword_10044F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F6A8);
  }

  return result;
}

uint64_t sub_100239A80(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10023A050();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100239B34()
{
  result = qword_10044F6B0;
  if (!qword_10044F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F6B0);
  }

  return result;
}

unint64_t sub_100239B8C()
{
  result = qword_10044F6B8;
  if (!qword_10044F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F6B8);
  }

  return result;
}

unint64_t sub_100239BE4()
{
  result = qword_10044F6C0;
  if (!qword_10044F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F6C0);
  }

  return result;
}

uint64_t sub_100239C38(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10023A050();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100239CEC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10023A050();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100239DA0()
{
  result = qword_10044F6C8;
  if (!qword_10044F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F6C8);
  }

  return result;
}

unint64_t sub_100239DF8()
{
  result = qword_10044F6D0;
  if (!qword_10044F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F6D0);
  }

  return result;
}

uint64_t sub_100239E90(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100239A2C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100239F48()
{
  result = qword_10044F6E8;
  if (!qword_10044F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F6E8);
  }

  return result;
}

unint64_t sub_100239FA0()
{
  result = qword_10044F6F0;
  if (!qword_10044F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F6F0);
  }

  return result;
}

unint64_t sub_100239FF8()
{
  result = qword_10044F6F8;
  if (!qword_10044F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F6F8);
  }

  return result;
}

unint64_t sub_10023A050()
{
  result = qword_10044F700;
  if (!qword_10044F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F700);
  }

  return result;
}

uint64_t sub_10023A0A4()
{
  v0 = qword_100447428;

  return v0;
}

unint64_t sub_10023A0E0()
{
  result = qword_10044F708;
  if (!qword_10044F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F708);
  }

  return result;
}

uint64_t sub_10023A134()
{
  v0 = sub_10000321C(&qword_100453708, &qword_10034F688);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453710, &qword_10034F690);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100239BE4();
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

unint64_t sub_10023A2FC()
{
  result = qword_10044F710;
  if (!qword_10044F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F710);
  }

  return result;
}

unint64_t sub_10023A354()
{
  result = qword_10044F718;
  if (!qword_10044F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F718);
  }

  return result;
}

unint64_t sub_10023A3AC()
{
  result = qword_10044F720;
  if (!qword_10044F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F720);
  }

  return result;
}

uint64_t sub_10023A400()
{
  sub_1002D3710();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10023A4E8(uint64_t a1)
{
  v2 = sub_100239BE4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10023A538()
{
  result = qword_10044F738;
  if (!qword_10044F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F738);
  }

  return result;
}

uint64_t sub_10023A590(uint64_t a1)
{
  v2 = sub_10023A3AC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10023A5E0()
{
  result = qword_10044F740;
  if (!qword_10044F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F740);
  }

  return result;
}

uint64_t sub_10023A678()
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
  sub_10001EDF0(v7, qword_10051F878);
  sub_10001EDB8(v7, qword_10051F878);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10023A7E8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10023AB58()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F890);
  sub_10001EDB8(v0, qword_10051F890);
  return sub_1002D88F0();
}

uint64_t sub_10023ABBC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F8A8);
  v1 = sub_10001EDB8(v0, qword_10051F8A8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10023AC7C()
{
  result = swift_getKeyPath();
  qword_10051F8C0 = result;
  return result;
}

uint64_t sub_10023ACA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004536E0, &qword_10034F648) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004536E8, &qword_10034F650);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10023AE84, 0, 0);
}

uint64_t sub_10023AE84()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10023BFD4();
  *v4 = v0;
  v4[1] = sub_10023AF68;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7090, 0, &type metadata for AccessibilityVoiceOverAutoSelectSpeakerInCallEntity, v5);
}

uint64_t sub_10023AF68()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10023B064, 0, 0);
}

uint64_t sub_10023B064()
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
  if (qword_10043B4A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F8C0;
  *(v0 + 288) = qword_10051F8C0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004536C8, &qword_1004536D0, &qword_10034F630);
  *v7 = v0;
  v7[1] = sub_10023B1C8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10023B1C8()
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
    v6 = sub_10023B338;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10023B338()
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
  sub_10023A5E0();
  sub_10023C1E8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10023B5B0()
{
  v0 = sub_10000321C(&qword_1004536F0, &qword_10034F658);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B4A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10023C1E8();
  sub_10002B6E4(&qword_1004536F8, &qword_1004536F0, &qword_10034F658);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10023B724(uint64_t *a1))(void *)
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

void (*sub_10023B798(uint64_t *a1))(void *)
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

unint64_t sub_10023B834()
{
  result = qword_10044F758;
  if (!qword_10044F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F758);
  }

  return result;
}

unint64_t sub_10023B88C()
{
  result = qword_10044F760;
  if (!qword_10044F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F760);
  }

  return result;
}

uint64_t sub_10023B988(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10023ACA4(a1, v5, v4);
}

uint64_t sub_10023BA34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C7E54();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10023BA7C()
{
  result = qword_10044F768;
  if (!qword_10044F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F768);
  }

  return result;
}