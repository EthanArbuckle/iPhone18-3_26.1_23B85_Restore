uint64_t sub_10011A6B8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10011A748, 0, 0);
}

uint64_t sub_10011A748()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448D78, qword_100302570);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456058, &qword_100456060, &qword_100353460);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000025;
  v2[1] = 0x800000010035B8B0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10011A890()
{
  result = qword_100448DA0;
  if (!qword_100448DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DA0);
  }

  return result;
}

uint64_t sub_10011A8E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10011AEB4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10011A998()
{
  result = qword_100448DA8;
  if (!qword_100448DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DA8);
  }

  return result;
}

unint64_t sub_10011A9F0()
{
  result = qword_100448DB0;
  if (!qword_100448DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DB0);
  }

  return result;
}

unint64_t sub_10011AA48()
{
  result = qword_100448DB8;
  if (!qword_100448DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DB8);
  }

  return result;
}

uint64_t sub_10011AA9C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10011AEB4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10011AB50(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10011AEB4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10011AC04()
{
  result = qword_100448DC0;
  if (!qword_100448DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DC0);
  }

  return result;
}

unint64_t sub_10011AC5C()
{
  result = qword_100448DC8;
  if (!qword_100448DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DC8);
  }

  return result;
}

uint64_t sub_10011ACF4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10011A890();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10011ADAC()
{
  result = qword_100448DE0;
  if (!qword_100448DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DE0);
  }

  return result;
}

unint64_t sub_10011AE04()
{
  result = qword_100448DE8;
  if (!qword_100448DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DE8);
  }

  return result;
}

unint64_t sub_10011AE5C()
{
  result = qword_100448DF0;
  if (!qword_100448DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DF0);
  }

  return result;
}

unint64_t sub_10011AEB4()
{
  result = qword_100448DF8;
  if (!qword_100448DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448DF8);
  }

  return result;
}

uint64_t sub_10011AF08()
{
  v0 = qword_100446C08;

  return v0;
}

unint64_t sub_10011AF44()
{
  result = qword_100448E00;
  if (!qword_100448E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E00);
  }

  return result;
}

uint64_t sub_10011AF98()
{
  v0 = sub_10000321C(&qword_100456048, &qword_100353440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456050, &qword_100353448);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10011AA48();
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

unint64_t sub_10011B160()
{
  result = qword_100448E08;
  if (!qword_100448E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E08);
  }

  return result;
}

unint64_t sub_10011B1B8()
{
  result = qword_100448E10;
  if (!qword_100448E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E10);
  }

  return result;
}

unint64_t sub_10011B210()
{
  result = qword_100448E18;
  if (!qword_100448E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E18);
  }

  return result;
}

uint64_t sub_10011B264()
{
  sub_1002D6400();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10011B34C(uint64_t a1)
{
  v2 = sub_10011AA48();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10011B39C()
{
  result = qword_100448E30;
  if (!qword_100448E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E30);
  }

  return result;
}

uint64_t sub_10011B3F4(uint64_t a1)
{
  v2 = sub_10011B210();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10011B444()
{
  result = qword_100448E38;
  if (!qword_100448E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E38);
  }

  return result;
}

uint64_t sub_10011B4DC()
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
  sub_10001EDF0(v7, qword_10051CFD8);
  sub_10001EDB8(v7, qword_10051CFD8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10011B64C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10011B9BC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051CFF0);
  sub_10001EDB8(v0, qword_10051CFF0);
  return sub_1002D88F0();
}

uint64_t sub_10011BA20()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D008);
  v1 = sub_10001EDB8(v0, qword_10051D008);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10011BAE0()
{
  result = swift_getKeyPath();
  qword_10051D020 = result;
  return result;
}

uint64_t sub_10011BB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100456020, &qword_100353400) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100456028, &qword_100353408);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10011BCE8, 0, 0);
}

uint64_t sub_10011BCE8()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10011CEA0();
  *v4 = v0;
  v4[1] = sub_10011BDCC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E88, 0, &type metadata for AccessibilityVoiceOverBrailleEnableBluetoothOnStartEntity, v5);
}

uint64_t sub_10011BDCC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10011BEC8, 0, 0);
}

uint64_t sub_10011BEC8()
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
  if (qword_10043A460 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D020;
  *(v0 + 288) = qword_10051D020;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100456008, &qword_100456010, &qword_1003533E8);
  *v7 = v0;
  v7[1] = sub_10011C02C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10011C02C()
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
    v6 = sub_10011C19C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10011C19C()
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
  sub_10011B444();
  sub_10011D0B4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10011C414()
{
  v0 = sub_10000321C(&qword_100456030, &qword_100353410);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A460 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10011D0B4();
  sub_10002B6E4(&qword_100456038, &qword_100456030, &qword_100353410);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10011C588(uint64_t *a1))(void *)
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

void (*sub_10011C5FC(uint64_t *a1))(void *)
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

unint64_t sub_10011C698()
{
  result = qword_100448E50;
  if (!qword_100448E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E50);
  }

  return result;
}

unint64_t sub_10011C6F0()
{
  result = qword_100448E58;
  if (!qword_100448E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E58);
  }

  return result;
}

uint64_t sub_10011C7EC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10011BB08(a1, v5, v4);
}

uint64_t sub_10011C898@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A505C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10011C8E0()
{
  result = qword_100448E60;
  if (!qword_100448E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E60);
  }

  return result;
}

unint64_t sub_10011C938()
{
  result = qword_100448E68;
  if (!qword_100448E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E68);
  }

  return result;
}

uint64_t sub_10011C9AC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverAlwaysTurnOnBluetooth];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10011CA74()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverAlwaysTurnOnBluetooth:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10011CB0C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10011CB9C, 0, 0);
}

uint64_t sub_10011CB9C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448E48, qword_100302BA8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100456008, &qword_100456010, &qword_1003533E8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000036;
  v2[1] = 0x800000010035F720;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10011CCE8()
{
  result = qword_100448E70;
  if (!qword_100448E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E70);
  }

  return result;
}

uint64_t sub_10011CD3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10011D30C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10011CDF0()
{
  result = qword_100448E78;
  if (!qword_100448E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E78);
  }

  return result;
}

unint64_t sub_10011CE48()
{
  result = qword_100448E80;
  if (!qword_100448E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E80);
  }

  return result;
}

unint64_t sub_10011CEA0()
{
  result = qword_100448E88;
  if (!qword_100448E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E88);
  }

  return result;
}

uint64_t sub_10011CEF4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10011D30C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10011CFA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10011D30C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10011D05C()
{
  result = qword_100448E90;
  if (!qword_100448E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E90);
  }

  return result;
}

unint64_t sub_10011D0B4()
{
  result = qword_100448E98;
  if (!qword_100448E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448E98);
  }

  return result;
}

uint64_t sub_10011D14C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10011CCE8();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10011D204()
{
  result = qword_100448EB0;
  if (!qword_100448EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448EB0);
  }

  return result;
}

unint64_t sub_10011D25C()
{
  result = qword_100448EB8;
  if (!qword_100448EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448EB8);
  }

  return result;
}

unint64_t sub_10011D2B4()
{
  result = qword_100448EC0;
  if (!qword_100448EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448EC0);
  }

  return result;
}

unint64_t sub_10011D30C()
{
  result = qword_100448EC8;
  if (!qword_100448EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448EC8);
  }

  return result;
}

uint64_t sub_10011D360()
{
  v0 = qword_100446C18;

  return v0;
}

unint64_t sub_10011D39C()
{
  result = qword_100448ED0;
  if (!qword_100448ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448ED0);
  }

  return result;
}

uint64_t sub_10011D3F0()
{
  v0 = sub_10000321C(&qword_100455FF8, &qword_1003533C8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100456000, &qword_1003533D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10011CEA0();
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

unint64_t sub_10011D5B8()
{
  result = qword_100448ED8;
  if (!qword_100448ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448ED8);
  }

  return result;
}

unint64_t sub_10011D610()
{
  result = qword_100448EE0;
  if (!qword_100448EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448EE0);
  }

  return result;
}

unint64_t sub_10011D668()
{
  result = qword_100448EE8;
  if (!qword_100448EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448EE8);
  }

  return result;
}

uint64_t sub_10011D6BC()
{
  sub_1002D63AC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10011D7A4(uint64_t a1)
{
  v2 = sub_10011CEA0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10011D7F4()
{
  result = qword_100448F00;
  if (!qword_100448F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F00);
  }

  return result;
}

uint64_t sub_10011D84C(uint64_t a1)
{
  v2 = sub_10011D668();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10011D89C()
{
  result = qword_100448F08;
  if (!qword_100448F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F08);
  }

  return result;
}

uint64_t sub_10011D934()
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
  sub_10001EDF0(v7, qword_10051D028);
  sub_10001EDB8(v7, qword_10051D028);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10011DAA4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10011DE14()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D040);
  sub_10001EDB8(v0, qword_10051D040);
  return sub_1002D88F0();
}

uint64_t sub_10011DE78()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D058);
  v1 = sub_10001EDB8(v0, qword_10051D058);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10011DF38()
{
  result = swift_getKeyPath();
  qword_10051D070 = result;
  return result;
}

uint64_t sub_10011DF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455FD0, &qword_100353388) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455FD8, &qword_100353390);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10011E140, 0, 0);
}

uint64_t sub_10011E140()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10011F2F8();
  *v4 = v0;
  v4[1] = sub_10011E224;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E8C, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputReverseDotPositionsEntity, v5);
}

uint64_t sub_10011E224()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10011E320, 0, 0);
}

uint64_t sub_10011E320()
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
  if (qword_10043A480 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D070;
  *(v0 + 288) = qword_10051D070;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455FB8, &qword_100455FC0, &qword_100353370);
  *v7 = v0;
  v7[1] = sub_10011E484;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10011E484()
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
    v6 = sub_10011E5F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10011E5F4()
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
  sub_10011D89C();
  sub_10011F50C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10011E86C()
{
  v0 = sub_10000321C(&qword_100455FE0, &qword_100353398);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A480 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10011F50C();
  sub_10002B6E4(&qword_100455FE8, &qword_100455FE0, &qword_100353398);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10011E9E0(uint64_t *a1))(void *)
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

void (*sub_10011EA54(uint64_t *a1))(void *)
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

unint64_t sub_10011EAF0()
{
  result = qword_100448F20;
  if (!qword_100448F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F20);
  }

  return result;
}

unint64_t sub_10011EB48()
{
  result = qword_100448F28;
  if (!qword_100448F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F28);
  }

  return result;
}

uint64_t sub_10011EC44(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10011DF60(a1, v5, v4);
}

uint64_t sub_10011ECF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A54C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10011ED38()
{
  result = qword_100448F30;
  if (!qword_100448F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F30);
  }

  return result;
}

unint64_t sub_10011ED90()
{
  result = qword_100448F38;
  if (!qword_100448F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F38);
  }

  return result;
}

uint64_t sub_10011EE04()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleShouldReverseDots];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10011EECC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleShouldReverseDots:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10011EF64(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10011EFF4, 0, 0);
}

uint64_t sub_10011EFF4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448F18, qword_1003031E0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455FB8, &qword_100455FC0, &qword_100353370);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000040;
  v2[1] = 0x800000010035C350;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10011F140()
{
  result = qword_100448F40;
  if (!qword_100448F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F40);
  }

  return result;
}

uint64_t sub_10011F194(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10011F764();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10011F248()
{
  result = qword_100448F48;
  if (!qword_100448F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F48);
  }

  return result;
}

unint64_t sub_10011F2A0()
{
  result = qword_100448F50;
  if (!qword_100448F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F50);
  }

  return result;
}

unint64_t sub_10011F2F8()
{
  result = qword_100448F58;
  if (!qword_100448F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F58);
  }

  return result;
}

uint64_t sub_10011F34C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10011F764();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10011F400(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10011F764();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10011F4B4()
{
  result = qword_100448F60;
  if (!qword_100448F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F60);
  }

  return result;
}

unint64_t sub_10011F50C()
{
  result = qword_100448F68;
  if (!qword_100448F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F68);
  }

  return result;
}

uint64_t sub_10011F5A4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10011F140();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10011F65C()
{
  result = qword_100448F80;
  if (!qword_100448F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F80);
  }

  return result;
}

unint64_t sub_10011F6B4()
{
  result = qword_100448F88;
  if (!qword_100448F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F88);
  }

  return result;
}

unint64_t sub_10011F70C()
{
  result = qword_100448F90;
  if (!qword_100448F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F90);
  }

  return result;
}

unint64_t sub_10011F764()
{
  result = qword_100448F98;
  if (!qword_100448F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448F98);
  }

  return result;
}

uint64_t sub_10011F7B8()
{
  v0 = qword_100446C28;

  return v0;
}

unint64_t sub_10011F7F4()
{
  result = qword_100448FA0;
  if (!qword_100448FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FA0);
  }

  return result;
}

uint64_t sub_10011F848()
{
  v0 = sub_10000321C(&qword_100455FA8, &qword_100353350);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455FB0, &qword_100353358);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10011F2F8();
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

unint64_t sub_10011FA10()
{
  result = qword_100448FA8;
  if (!qword_100448FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FA8);
  }

  return result;
}

unint64_t sub_10011FA68()
{
  result = qword_100448FB0;
  if (!qword_100448FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FB0);
  }

  return result;
}

unint64_t sub_10011FAC0()
{
  result = qword_100448FB8;
  if (!qword_100448FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FB8);
  }

  return result;
}

uint64_t sub_10011FB14()
{
  sub_1002D6358();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10011FBFC(uint64_t a1)
{
  v2 = sub_10011F2F8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10011FC4C()
{
  result = qword_100448FD0;
  if (!qword_100448FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FD0);
  }

  return result;
}

uint64_t sub_10011FCA4(uint64_t a1)
{
  v2 = sub_10011FAC0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10011FCF4()
{
  result = qword_100448FD8;
  if (!qword_100448FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FD8);
  }

  return result;
}

uint64_t sub_10011FD8C()
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
  sub_10001EDF0(v7, qword_10051D078);
  sub_10001EDB8(v7, qword_10051D078);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10011FEFC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100120270()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D090);
  sub_10001EDB8(v0, qword_10051D090);
  return sub_1002D88F0();
}

uint64_t sub_1001202D4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D0A8);
  v1 = sub_10001EDB8(v0, qword_10051D0A8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100120394()
{
  result = swift_getKeyPath();
  qword_10051D0C0 = result;
  return result;
}

uint64_t sub_1001203BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455F80, &qword_100353310) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455F88, &qword_100353318);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10012059C, 0, 0);
}

uint64_t sub_10012059C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100121754();
  *v4 = v0;
  v4[1] = sub_100120680;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E90, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputStartAutomaticallyWhenEditingTextEntity, v5);
}

uint64_t sub_100120680()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10012077C, 0, 0);
}

uint64_t sub_10012077C()
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
  if (qword_10043A4A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D0C0;
  *(v0 + 288) = qword_10051D0C0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455F68, &qword_100455F70, &qword_1003532F8);
  *v7 = v0;
  v7[1] = sub_1001208E0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001208E0()
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
    v6 = sub_100120A50;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100120A50()
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
  sub_10011FCF4();
  sub_100121968();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100120CC8()
{
  v0 = sub_10000321C(&qword_100455F90, &qword_100353320);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A4A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100121968();
  sub_10002B6E4(&qword_100455F98, &qword_100455F90, &qword_100353320);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100120E3C(uint64_t *a1))(void *)
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

void (*sub_100120EB0(uint64_t *a1))(void *)
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

unint64_t sub_100120F4C()
{
  result = qword_100448FF0;
  if (!qword_100448FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FF0);
  }

  return result;
}

unint64_t sub_100120FA4()
{
  result = qword_100448FF8;
  if (!qword_100448FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100448FF8);
  }

  return result;
}

uint64_t sub_1001210A0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001203BC(a1, v5, v4);
}

uint64_t sub_10012114C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A592C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100121194()
{
  result = qword_100449000;
  if (!qword_100449000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449000);
  }

  return result;
}

unint64_t sub_1001211EC()
{
  result = qword_100449008;
  if (!qword_100449008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449008);
  }

  return result;
}

uint64_t sub_100121260()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleGesturesAutoActivateOnTextFields];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100121328()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleGesturesAutoActivateOnTextFields:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001213C0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100121450, 0, 0);
}

uint64_t sub_100121450()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100448FE8, qword_100303818);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455F68, &qword_100455F70, &qword_1003532F8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000049;
  v2[1] = 0x8000000100360DE0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10012159C()
{
  result = qword_100449010;
  if (!qword_100449010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449010);
  }

  return result;
}

uint64_t sub_1001215F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100121BC0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001216A4()
{
  result = qword_100449018;
  if (!qword_100449018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449018);
  }

  return result;
}

unint64_t sub_1001216FC()
{
  result = qword_100449020;
  if (!qword_100449020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449020);
  }

  return result;
}

unint64_t sub_100121754()
{
  result = qword_100449028;
  if (!qword_100449028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449028);
  }

  return result;
}

uint64_t sub_1001217A8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100121BC0();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10012185C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100121BC0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100121910()
{
  result = qword_100449030;
  if (!qword_100449030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449030);
  }

  return result;
}

unint64_t sub_100121968()
{
  result = qword_100449038;
  if (!qword_100449038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449038);
  }

  return result;
}

uint64_t sub_100121A00(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10012159C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100121AB8()
{
  result = qword_100449050;
  if (!qword_100449050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449050);
  }

  return result;
}

unint64_t sub_100121B10()
{
  result = qword_100449058;
  if (!qword_100449058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449058);
  }

  return result;
}

unint64_t sub_100121B68()
{
  result = qword_100449060;
  if (!qword_100449060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449060);
  }

  return result;
}

unint64_t sub_100121BC0()
{
  result = qword_100449068;
  if (!qword_100449068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449068);
  }

  return result;
}

uint64_t sub_100121C14()
{
  v0 = qword_100446C38;

  return v0;
}

unint64_t sub_100121C50()
{
  result = qword_100449070;
  if (!qword_100449070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449070);
  }

  return result;
}

uint64_t sub_100121CA4()
{
  v0 = sub_10000321C(&qword_100455F58, &qword_1003532D8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455F60, &qword_1003532E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100121754();
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

unint64_t sub_100121E6C()
{
  result = qword_100449078;
  if (!qword_100449078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449078);
  }

  return result;
}

unint64_t sub_100121EC4()
{
  result = qword_100449080;
  if (!qword_100449080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449080);
  }

  return result;
}

unint64_t sub_100121F1C()
{
  result = qword_100449088;
  if (!qword_100449088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449088);
  }

  return result;
}

uint64_t sub_100121F70()
{
  sub_1002D6304();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100122058(uint64_t a1)
{
  v2 = sub_100121754();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001220A8()
{
  result = qword_1004490A0;
  if (!qword_1004490A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490A0);
  }

  return result;
}

uint64_t sub_100122100(uint64_t a1)
{
  v2 = sub_100121F1C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100122150()
{
  result = qword_1004490A8;
  if (!qword_1004490A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490A8);
  }

  return result;
}

uint64_t sub_1001221E8()
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
  sub_10001EDF0(v7, qword_10051D0C8);
  sub_10001EDB8(v7, qword_10051D0C8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100122358@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001226C8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D0E0);
  sub_10001EDB8(v0, qword_10051D0E0);
  return sub_1002D88F0();
}

uint64_t sub_10012272C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D0F8);
  v1 = sub_10001EDB8(v0, qword_10051D0F8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001227EC()
{
  result = swift_getKeyPath();
  qword_10051D110 = result;
  return result;
}

uint64_t sub_100122814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455F30, &qword_100353298) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455F38, &qword_1003532A0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001229F4, 0, 0);
}

uint64_t sub_1001229F4()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100123BAC();
  *v4 = v0;
  v4[1] = sub_100122AD8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E94, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputVisualTextFeedbackEntity, v5);
}

uint64_t sub_100122AD8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100122BD4, 0, 0);
}

uint64_t sub_100122BD4()
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
  if (qword_10043A4C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D110;
  *(v0 + 288) = qword_10051D110;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455F18, &qword_100455F20, &qword_100353280);
  *v7 = v0;
  v7[1] = sub_100122D38;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100122D38()
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
    v6 = sub_100122EA8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100122EA8()
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
  sub_100122150();
  sub_100123DC0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100123120()
{
  v0 = sub_10000321C(&qword_100455F40, &qword_1003532A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A4C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100123DC0();
  sub_10002B6E4(&qword_100455F48, &qword_100455F40, &qword_1003532A8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100123294(uint64_t *a1))(void *)
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

void (*sub_100123308(uint64_t *a1))(void *)
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

unint64_t sub_1001233A4()
{
  result = qword_1004490C0;
  if (!qword_1004490C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490C0);
  }

  return result;
}

unint64_t sub_1001233FC()
{
  result = qword_1004490C8;
  if (!qword_1004490C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490C8);
  }

  return result;
}

uint64_t sub_1001234F8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100122814(a1, v5, v4);
}

uint64_t sub_1001235A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A5D94();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001235EC()
{
  result = qword_1004490D0;
  if (!qword_1004490D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490D0);
  }

  return result;
}

unint64_t sub_100123644()
{
  result = qword_1004490D8;
  if (!qword_1004490D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490D8);
  }

  return result;
}

uint64_t sub_1001236B8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleGesturesDisplaysEnteredText];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100123780()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleGesturesDisplaysEnteredText:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100123818(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001238A8, 0, 0);
}

uint64_t sub_1001238A8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004490B8, qword_100303E50);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455F18, &qword_100455F20, &qword_100353280);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000041;
  v2[1] = 0x8000000100360D50;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001239F4()
{
  result = qword_1004490E0;
  if (!qword_1004490E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490E0);
  }

  return result;
}

uint64_t sub_100123A48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100124018();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100123AFC()
{
  result = qword_1004490E8;
  if (!qword_1004490E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490E8);
  }

  return result;
}

unint64_t sub_100123B54()
{
  result = qword_1004490F0;
  if (!qword_1004490F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490F0);
  }

  return result;
}

unint64_t sub_100123BAC()
{
  result = qword_1004490F8;
  if (!qword_1004490F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004490F8);
  }

  return result;
}

uint64_t sub_100123C00(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100124018();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100123CB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100124018();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100123D68()
{
  result = qword_100449100;
  if (!qword_100449100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449100);
  }

  return result;
}

unint64_t sub_100123DC0()
{
  result = qword_100449108;
  if (!qword_100449108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449108);
  }

  return result;
}

uint64_t sub_100123E58(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001239F4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100123F10()
{
  result = qword_100449120;
  if (!qword_100449120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449120);
  }

  return result;
}

unint64_t sub_100123F68()
{
  result = qword_100449128;
  if (!qword_100449128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449128);
  }

  return result;
}

unint64_t sub_100123FC0()
{
  result = qword_100449130;
  if (!qword_100449130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449130);
  }

  return result;
}

unint64_t sub_100124018()
{
  result = qword_100449138;
  if (!qword_100449138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449138);
  }

  return result;
}

uint64_t sub_10012406C()
{
  v0 = qword_100446C48;

  return v0;
}

unint64_t sub_1001240A8()
{
  result = qword_100449140;
  if (!qword_100449140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449140);
  }

  return result;
}

uint64_t sub_1001240FC()
{
  v0 = sub_10000321C(&qword_100455F08, &qword_100353260);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455F10, &qword_100353268);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100123BAC();
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

unint64_t sub_1001242C4()
{
  result = qword_100449148;
  if (!qword_100449148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449148);
  }

  return result;
}

unint64_t sub_10012431C()
{
  result = qword_100449150;
  if (!qword_100449150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449150);
  }

  return result;
}

unint64_t sub_100124374()
{
  result = qword_100449158;
  if (!qword_100449158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449158);
  }

  return result;
}

uint64_t sub_1001243C8()
{
  sub_1002D62B0();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001244B0(uint64_t a1)
{
  v2 = sub_100123BAC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100124500()
{
  result = qword_100449170;
  if (!qword_100449170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449170);
  }

  return result;
}

uint64_t sub_100124558(uint64_t a1)
{
  v2 = sub_100124374();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001245A8()
{
  result = qword_100449178;
  if (!qword_100449178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449178);
  }

  return result;
}

uint64_t sub_100124640()
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
  sub_10001EDF0(v7, qword_10051D118);
  sub_10001EDB8(v7, qword_10051D118);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001247B0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100124B20()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D130);
  sub_10001EDB8(v0, qword_10051D130);
  return sub_1002D88F0();
}

uint64_t sub_100124B84()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D148);
  v1 = sub_10001EDB8(v0, qword_10051D148);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100124C44()
{
  result = swift_getKeyPath();
  qword_10051D160 = result;
  return result;
}

uint64_t sub_100124C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455EE0, &qword_100353220) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455EE8, &qword_100353228);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100124E4C, 0, 0);
}

uint64_t sub_100124E4C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100126004();
  *v4 = v0;
  v4[1] = sub_100124F30;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E98, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputTypingSoundFeedbackEntity, v5);
}

uint64_t sub_100124F30()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10012502C, 0, 0);
}

uint64_t sub_10012502C()
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
  if (qword_10043A4E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D160;
  *(v0 + 288) = qword_10051D160;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455EC8, &qword_100455ED0, &qword_100353208);
  *v7 = v0;
  v7[1] = sub_100125190;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100125190()
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
    v6 = sub_100125300;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100125300()
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
  sub_1001245A8();
  sub_100126218();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100125578()
{
  v0 = sub_10000321C(&qword_100455EF0, &qword_100353230);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A4E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100126218();
  sub_10002B6E4(&qword_100455EF8, &qword_100455EF0, &qword_100353230);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001256EC(uint64_t *a1))(void *)
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

void (*sub_100125760(uint64_t *a1))(void *)
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

unint64_t sub_1001257FC()
{
  result = qword_100449190;
  if (!qword_100449190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449190);
  }

  return result;
}

unint64_t sub_100125854()
{
  result = qword_100449198;
  if (!qword_100449198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449198);
  }

  return result;
}

uint64_t sub_100125950(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100124C6C(a1, v5, v4);
}

uint64_t sub_1001259FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A61FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100125A44()
{
  result = qword_1004491A0;
  if (!qword_1004491A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491A0);
  }

  return result;
}

unint64_t sub_100125A9C()
{
  result = qword_1004491A8;
  if (!qword_1004491A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491A8);
  }

  return result;
}

uint64_t sub_100125B10()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleGesturesUsesTypingSoundFeedback];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100125BD8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleGesturesUsesTypingSoundFeedback:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100125C70(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100125D00, 0, 0);
}

uint64_t sub_100125D00()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100449188, qword_100304488);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455EC8, &qword_100455ED0, &qword_100353208);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000046;
  v2[1] = 0x8000000100360C30;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100125E4C()
{
  result = qword_1004491B0;
  if (!qword_1004491B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491B0);
  }

  return result;
}

uint64_t sub_100125EA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100126470();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100125F54()
{
  result = qword_1004491B8;
  if (!qword_1004491B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491B8);
  }

  return result;
}

unint64_t sub_100125FAC()
{
  result = qword_1004491C0;
  if (!qword_1004491C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491C0);
  }

  return result;
}

unint64_t sub_100126004()
{
  result = qword_1004491C8;
  if (!qword_1004491C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491C8);
  }

  return result;
}

uint64_t sub_100126058(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100126470();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10012610C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100126470();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001261C0()
{
  result = qword_1004491D0;
  if (!qword_1004491D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491D0);
  }

  return result;
}

unint64_t sub_100126218()
{
  result = qword_1004491D8;
  if (!qword_1004491D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491D8);
  }

  return result;
}

uint64_t sub_1001262B0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100125E4C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100126368()
{
  result = qword_1004491F0;
  if (!qword_1004491F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491F0);
  }

  return result;
}

unint64_t sub_1001263C0()
{
  result = qword_1004491F8;
  if (!qword_1004491F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004491F8);
  }

  return result;
}

unint64_t sub_100126418()
{
  result = qword_100449200;
  if (!qword_100449200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449200);
  }

  return result;
}

unint64_t sub_100126470()
{
  result = qword_100449208;
  if (!qword_100449208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449208);
  }

  return result;
}

uint64_t sub_1001264C4()
{
  v0 = qword_100446C58;

  return v0;
}

unint64_t sub_100126500()
{
  result = qword_100449210;
  if (!qword_100449210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449210);
  }

  return result;
}

uint64_t sub_100126554()
{
  v0 = sub_10000321C(&qword_100455EB8, &qword_1003531E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455EC0, &qword_1003531F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100126004();
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

unint64_t sub_10012671C()
{
  result = qword_100449218;
  if (!qword_100449218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449218);
  }

  return result;
}

unint64_t sub_100126774()
{
  result = qword_100449220;
  if (!qword_100449220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449220);
  }

  return result;
}

unint64_t sub_1001267CC()
{
  result = qword_100449228;
  if (!qword_100449228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449228);
  }

  return result;
}

uint64_t sub_100126820()
{
  sub_1002D625C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100126908(uint64_t a1)
{
  v2 = sub_100126004();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100126958()
{
  result = qword_100449240;
  if (!qword_100449240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449240);
  }

  return result;
}

uint64_t sub_1001269B0(uint64_t a1)
{
  v2 = sub_1001267CC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100126A00()
{
  result = qword_100449248;
  if (!qword_100449248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449248);
  }

  return result;
}

uint64_t sub_100126A98()
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
  sub_10001EDF0(v7, qword_10051D168);
  sub_10001EDB8(v7, qword_10051D168);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100126C08@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100126F78()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D180);
  sub_10001EDB8(v0, qword_10051D180);
  return sub_1002D88F0();
}

uint64_t sub_100126FDC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D198);
  v1 = sub_10001EDB8(v0, qword_10051D198);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10012709C()
{
  result = swift_getKeyPath();
  qword_10051D1B0 = result;
  return result;
}

uint64_t sub_1001270C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455E90, &qword_1003531A8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455E98, &qword_1003531B0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001272A4, 0, 0);
}

uint64_t sub_1001272A4()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10012845C();
  *v4 = v0;
  v4[1] = sub_100127388;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6E9C, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputHapticFeedbackEntity, v5);
}

uint64_t sub_100127388()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100127484, 0, 0);
}

uint64_t sub_100127484()
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
  if (qword_10043A500 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D1B0;
  *(v0 + 288) = qword_10051D1B0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455E78, &qword_100455E80, &qword_100353190);
  *v7 = v0;
  v7[1] = sub_1001275E8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001275E8()
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
    v6 = sub_100127758;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100127758()
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
  sub_100126A00();
  sub_100128670();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001279D0()
{
  v0 = sub_10000321C(&qword_100455EA0, &qword_1003531B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A500 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100128670();
  sub_10002B6E4(&qword_100455EA8, &qword_100455EA0, &qword_1003531B8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100127B44(uint64_t *a1))(void *)
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

void (*sub_100127BB8(uint64_t *a1))(void *)
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

unint64_t sub_100127C54()
{
  result = qword_100449260;
  if (!qword_100449260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449260);
  }

  return result;
}

unint64_t sub_100127CAC()
{
  result = qword_100449268;
  if (!qword_100449268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449268);
  }

  return result;
}

uint64_t sub_100127DA8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001270C4(a1, v5, v4);
}

uint64_t sub_100127E54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A6664();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100127E9C()
{
  result = qword_100449270;
  if (!qword_100449270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449270);
  }

  return result;
}

unint64_t sub_100127EF4()
{
  result = qword_100449278;
  if (!qword_100449278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449278);
  }

  return result;
}

uint64_t sub_100127F68()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleGesturesUsesHapticFeedback];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100128030()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleGesturesUsesHapticFeedback:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001280C8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100128158, 0, 0);
}

uint64_t sub_100128158()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100449258, qword_100304AC0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455E78, &qword_100455E80, &qword_100353190);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000040;
  v2[1] = 0x8000000100360C80;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001282A4()
{
  result = qword_100449280;
  if (!qword_100449280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449280);
  }

  return result;
}

uint64_t sub_1001282F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001288C8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001283AC()
{
  result = qword_100449288;
  if (!qword_100449288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449288);
  }

  return result;
}

unint64_t sub_100128404()
{
  result = qword_100449290;
  if (!qword_100449290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449290);
  }

  return result;
}

unint64_t sub_10012845C()
{
  result = qword_100449298;
  if (!qword_100449298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449298);
  }

  return result;
}

uint64_t sub_1001284B0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001288C8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100128564(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001288C8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100128618()
{
  result = qword_1004492A0;
  if (!qword_1004492A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492A0);
  }

  return result;
}

unint64_t sub_100128670()
{
  result = qword_1004492A8;
  if (!qword_1004492A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492A8);
  }

  return result;
}

uint64_t sub_100128708(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001282A4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001287C0()
{
  result = qword_1004492C0;
  if (!qword_1004492C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492C0);
  }

  return result;
}

unint64_t sub_100128818()
{
  result = qword_1004492C8;
  if (!qword_1004492C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492C8);
  }

  return result;
}

unint64_t sub_100128870()
{
  result = qword_1004492D0;
  if (!qword_1004492D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492D0);
  }

  return result;
}

unint64_t sub_1001288C8()
{
  result = qword_1004492D8;
  if (!qword_1004492D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492D8);
  }

  return result;
}

uint64_t sub_10012891C()
{
  v0 = qword_100446C68;

  return v0;
}

unint64_t sub_100128958()
{
  result = qword_1004492E0;
  if (!qword_1004492E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492E0);
  }

  return result;
}

uint64_t sub_1001289AC()
{
  v0 = sub_10000321C(&qword_100455E68, &qword_100353170);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455E70, &qword_100353178);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10012845C();
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

unint64_t sub_100128B74()
{
  result = qword_1004492E8;
  if (!qword_1004492E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492E8);
  }

  return result;
}

unint64_t sub_100128BCC()
{
  result = qword_1004492F0;
  if (!qword_1004492F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492F0);
  }

  return result;
}

unint64_t sub_100128C24()
{
  result = qword_1004492F8;
  if (!qword_1004492F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004492F8);
  }

  return result;
}

uint64_t sub_100128C78()
{
  sub_1002D6208();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100128D60(uint64_t a1)
{
  v2 = sub_10012845C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100128DB0()
{
  result = qword_100449310;
  if (!qword_100449310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449310);
  }

  return result;
}

uint64_t sub_100128E08(uint64_t a1)
{
  v2 = sub_100128C24();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100128E58()
{
  result = qword_100449318;
  if (!qword_100449318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449318);
  }

  return result;
}

uint64_t sub_100128EF0()
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
  sub_10001EDF0(v7, qword_10051D1B8);
  sub_10001EDB8(v7, qword_10051D1B8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100129060@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001293D0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D1D0);
  sub_10001EDB8(v0, qword_10051D1D0);
  return sub_1002D88F0();
}

uint64_t sub_100129434()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D1E8);
  v1 = sub_10001EDB8(v0, qword_10051D1E8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001294F4()
{
  result = swift_getKeyPath();
  qword_10051D200 = result;
  return result;
}

uint64_t sub_10012951C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455E40, &qword_100353130) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455E48, &qword_100353138);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001296FC, 0, 0);
}

uint64_t sub_1001296FC()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10012A870();
  *v4 = v0;
  v4[1] = sub_1001297E0;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EA0, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputModeAnnouncementsEntity, v5);
}

uint64_t sub_1001297E0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001298DC, 0, 0);
}

uint64_t sub_1001298DC()
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
  if (qword_10043A520 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D200;
  v0[36] = qword_10051D200;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100455E20, &qword_100455E28, &qword_100353110);
  *v7 = v0;
  v7[1] = sub_100129A38;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXSVoiceOverBrailleBrailleScreenInputModeAnnouncementsAppEnum, v8);
}

uint64_t sub_100129A38()
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
    v6 = sub_100129BA8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100129BA8()
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
  sub_100128E58();
  sub_10012AA84();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100129E20()
{
  v0 = sub_10000321C(&qword_100455E50, &qword_100353140);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A520 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10012AA84();
  sub_10002B6E4(&qword_100455E58, &qword_100455E50, &qword_100353140);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100129F94(uint64_t *a1))(void *)
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

void (*sub_10012A008(uint64_t *a1))(void *)
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

unint64_t sub_10012A0A4()
{
  result = qword_100449330;
  if (!qword_100449330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449330);
  }

  return result;
}

unint64_t sub_10012A0FC()
{
  result = qword_100449338;
  if (!qword_100449338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449338);
  }

  return result;
}

uint64_t sub_10012A1F8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10012951C(a1, v5, v4);
}

uint64_t sub_10012A2A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A6ACC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10012A2EC()
{
  result = qword_100449340;
  if (!qword_100449340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449340);
  }

  return result;
}

uint64_t sub_10012A364()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 voiceOverTouchBrailleGesturesSoundOption];

  v3 = 0x201u >> (8 * v2);
  if (v2 >= 3)
  {
    LOBYTE(v3) = 0;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10012A46C()
{
  sub_100003264(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012A4D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10012A560, 0, 0);
}

uint64_t sub_10012A560()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100449328, &qword_1003050F8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455E20, &qword_100455E28, &qword_100353110);
  sub_100015874();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000039;
  v2[1] = 0x8000000100360D10;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10012A6B8()
{
  result = qword_100449348;
  if (!qword_100449348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449348);
  }

  return result;
}

uint64_t sub_10012A70C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10012ACDC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10012A7C0()
{
  result = qword_100449350;
  if (!qword_100449350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449350);
  }

  return result;
}

unint64_t sub_10012A818()
{
  result = qword_100449358;
  if (!qword_100449358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449358);
  }

  return result;
}

unint64_t sub_10012A870()
{
  result = qword_100449360;
  if (!qword_100449360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449360);
  }

  return result;
}

uint64_t sub_10012A8C4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10012ACDC();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10012A978(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10012ACDC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10012AA2C()
{
  result = qword_100449368;
  if (!qword_100449368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449368);
  }

  return result;
}

unint64_t sub_10012AA84()
{
  result = qword_100449370;
  if (!qword_100449370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449370);
  }

  return result;
}

uint64_t sub_10012AB1C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10012A6B8();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10012ABD4()
{
  result = qword_100449388;
  if (!qword_100449388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449388);
  }

  return result;
}

unint64_t sub_10012AC2C()
{
  result = qword_100449390;
  if (!qword_100449390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449390);
  }

  return result;
}

unint64_t sub_10012AC84()
{
  result = qword_100449398;
  if (!qword_100449398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449398);
  }

  return result;
}

unint64_t sub_10012ACDC()
{
  result = qword_1004493A0;
  if (!qword_1004493A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493A0);
  }

  return result;
}

uint64_t sub_10012AD30()
{
  v0 = qword_100446C78;

  return v0;
}

unint64_t sub_10012AD6C()
{
  result = qword_1004493A8;
  if (!qword_1004493A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493A8);
  }

  return result;
}

uint64_t sub_10012ADC0()
{
  v0 = sub_10000321C(&qword_100455E10, &qword_1003530F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455E18, &qword_1003530F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10012A870();
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

unint64_t sub_10012AF88()
{
  result = qword_1004493B0;
  if (!qword_1004493B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493B0);
  }

  return result;
}

unint64_t sub_10012AFE0()
{
  result = qword_1004493B8;
  if (!qword_1004493B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493B8);
  }

  return result;
}

unint64_t sub_10012B038()
{
  result = qword_1004493C0;
  if (!qword_1004493C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493C0);
  }

  return result;
}

uint64_t sub_10012B08C()
{
  sub_1002D61B4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10012B174(uint64_t a1)
{
  v2 = sub_10012A870();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10012B1C4()
{
  result = qword_1004493D8;
  if (!qword_1004493D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493D8);
  }

  return result;
}

uint64_t sub_10012B21C(uint64_t a1)
{
  v2 = sub_10012B038();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10012B26C()
{
  result = qword_1004493E0;
  if (!qword_1004493E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493E0);
  }

  return result;
}

uint64_t sub_10012B304()
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
  sub_10001EDF0(v7, qword_10051D208);
  sub_10001EDB8(v7, qword_10051D208);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10012B474@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10012B7E8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D220);
  sub_10001EDB8(v0, qword_10051D220);
  return sub_1002D88F0();
}

uint64_t sub_10012B84C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D238);
  v1 = sub_10001EDB8(v0, qword_10051D238);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10012B90C()
{
  result = swift_getKeyPath();
  qword_10051D250 = result;
  return result;
}

uint64_t sub_10012B934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455DE8, &qword_1003530B0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455DF0, &qword_1003530B8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10012BB14, 0, 0);
}

uint64_t sub_10012BB14()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10012CCCC();
  *v4 = v0;
  v4[1] = sub_10012BBF8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EA4, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleScreenInputKeepActiveAfterSelectionEntity, v5);
}

uint64_t sub_10012BBF8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10012BCF4, 0, 0);
}

uint64_t sub_10012BCF4()
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
  if (qword_10043A540 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D250;
  *(v0 + 288) = qword_10051D250;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455DD0, &qword_100455DD8, &qword_100353098);
  *v7 = v0;
  v7[1] = sub_10012BE58;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10012BE58()
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
    v6 = sub_10012BFC8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10012BFC8()
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
  sub_10012B26C();
  sub_10012CEE0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10012C240()
{
  v0 = sub_10000321C(&qword_100455DF8, &qword_1003530C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A540 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10012CEE0();
  sub_10002B6E4(&qword_100455E00, &qword_100455DF8, &qword_1003530C0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10012C3B4(uint64_t *a1))(void *)
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

void (*sub_10012C428(uint64_t *a1))(void *)
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

unint64_t sub_10012C4C4()
{
  result = qword_1004493F8;
  if (!qword_1004493F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004493F8);
  }

  return result;
}

unint64_t sub_10012C51C()
{
  result = qword_100449400;
  if (!qword_100449400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449400);
  }

  return result;
}

uint64_t sub_10012C618(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10012B934(a1, v5, v4);
}

uint64_t sub_10012C6C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A6ED0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10012C70C()
{
  result = qword_100449408;
  if (!qword_100449408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449408);
  }

  return result;
}

unint64_t sub_10012C764()
{
  result = qword_100449410;
  if (!qword_100449410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449410);
  }

  return result;
}

uint64_t sub_10012C7D8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleGestureControl];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10012C8A0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTouchBrailleGestureControl:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10012C938(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10012C9C8, 0, 0);
}

uint64_t sub_10012C9C8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004493F0, qword_100305730);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455DD0, &qword_100455DD8, &qword_100353098);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000051;
  v2[1] = 0x8000000100360180;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10012CB14()
{
  result = qword_100449418;
  if (!qword_100449418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449418);
  }

  return result;
}

uint64_t sub_10012CB68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10012D138();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10012CC1C()
{
  result = qword_100449420;
  if (!qword_100449420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449420);
  }

  return result;
}

unint64_t sub_10012CC74()
{
  result = qword_100449428;
  if (!qword_100449428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449428);
  }

  return result;
}

unint64_t sub_10012CCCC()
{
  result = qword_100449430;
  if (!qword_100449430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449430);
  }

  return result;
}

uint64_t sub_10012CD20(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10012D138();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10012CDD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10012D138();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10012CE88()
{
  result = qword_100449438;
  if (!qword_100449438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449438);
  }

  return result;
}

unint64_t sub_10012CEE0()
{
  result = qword_100449440;
  if (!qword_100449440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449440);
  }

  return result;
}

uint64_t sub_10012CF78(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10012CB14();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10012D030()
{
  result = qword_100449458;
  if (!qword_100449458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449458);
  }

  return result;
}

unint64_t sub_10012D088()
{
  result = qword_100449460;
  if (!qword_100449460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449460);
  }

  return result;
}

unint64_t sub_10012D0E0()
{
  result = qword_100449468;
  if (!qword_100449468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449468);
  }

  return result;
}

unint64_t sub_10012D138()
{
  result = qword_100449470;
  if (!qword_100449470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449470);
  }

  return result;
}

uint64_t sub_10012D18C()
{
  v0 = qword_100446C88;

  return v0;
}

unint64_t sub_10012D1C8()
{
  result = qword_100449478;
  if (!qword_100449478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449478);
  }

  return result;
}

uint64_t sub_10012D21C()
{
  v0 = sub_10000321C(&qword_100455DC0, &qword_100353078);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455DC8, &qword_100353080);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10012CCCC();
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

unint64_t sub_10012D3E4()
{
  result = qword_100449480;
  if (!qword_100449480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449480);
  }

  return result;
}

unint64_t sub_10012D43C()
{
  result = qword_100449488;
  if (!qword_100449488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449488);
  }

  return result;
}

unint64_t sub_10012D494()
{
  result = qword_100449490;
  if (!qword_100449490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449490);
  }

  return result;
}

uint64_t sub_10012D4E8()
{
  sub_1002D6160();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10012D5D0(uint64_t a1)
{
  v2 = sub_10012CCCC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10012D620()
{
  result = qword_1004494A8;
  if (!qword_1004494A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494A8);
  }

  return result;
}

uint64_t sub_10012D678(uint64_t a1)
{
  v2 = sub_10012D494();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10012D6C8()
{
  result = qword_1004494B0;
  if (!qword_1004494B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494B0);
  }

  return result;
}

uint64_t sub_10012D784()
{
  result = swift_getKeyPath();
  qword_10051D2A0 = result;
  return result;
}

uint64_t sub_10012D7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455D98, &qword_100353038) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455DA0, &qword_100353040);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10012D98C, 0, 0);
}

uint64_t sub_10012D98C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10012EB68();
  *v4 = v0;
  v4[1] = sub_10012DA70;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EA8, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleAlertMessagesEntity, v5);
}

uint64_t sub_10012DA70()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10012DB6C, 0, 0);
}

uint64_t sub_10012DB6C()
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
  if (qword_10043A560 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D2A0;
  *(v0 + 288) = qword_10051D2A0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455D80, &qword_100455D88, &qword_100353020);
  *v7 = v0;
  v7[1] = sub_10012DCD0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10012DCD0()
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
    v6 = sub_10012DE40;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10012DE40()
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
  sub_10012D6C8();
  sub_10012ED7C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10012E0B8()
{
  v0 = sub_10000321C(&qword_100455DA8, &qword_100353048);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A560 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10012ED7C();
  sub_10002B6E4(&qword_100455DB0, &qword_100455DA8, &qword_100353048);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10012E22C(uint64_t *a1))(void *)
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

void (*sub_10012E2A0(uint64_t *a1))(void *)
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

unint64_t sub_10012E33C()
{
  result = qword_1004494C8;
  if (!qword_1004494C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494C8);
  }

  return result;
}

unint64_t sub_10012E394()
{
  result = qword_1004494D0;
  if (!qword_1004494D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494D0);
  }

  return result;
}

uint64_t sub_10012E490(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10012D7AC(a1, v5, v4);
}

uint64_t sub_10012E53C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A7338(&qword_100455D90, &qword_100353028, sub_10012EB68);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10012E5A8()
{
  result = qword_1004494D8;
  if (!qword_1004494D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494D8);
  }

  return result;
}

unint64_t sub_10012E600()
{
  result = qword_1004494E0;
  if (!qword_1004494E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494E0);
  }

  return result;
}

uint64_t sub_10012E674()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverBrailleAlertsEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10012E73C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverBrailleAlertsEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10012E7D4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10012E864, 0, 0);
}

uint64_t sub_10012E864()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004494C0, qword_100305D68);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455D80, &qword_100455D88, &qword_100353020);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000061;
  v2[1] = 0x8000000100360F90;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10012E9B0()
{
  result = qword_1004494E8;
  if (!qword_1004494E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494E8);
  }

  return result;
}

uint64_t sub_10012EA04(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10012EFD4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10012EAB8()
{
  result = qword_1004494F0;
  if (!qword_1004494F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494F0);
  }

  return result;
}

unint64_t sub_10012EB10()
{
  result = qword_1004494F8;
  if (!qword_1004494F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004494F8);
  }

  return result;
}

unint64_t sub_10012EB68()
{
  result = qword_100449500;
  if (!qword_100449500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449500);
  }

  return result;
}

uint64_t sub_10012EBBC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10012EFD4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10012EC70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10012EFD4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10012ED24()
{
  result = qword_100449508;
  if (!qword_100449508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449508);
  }

  return result;
}

unint64_t sub_10012ED7C()
{
  result = qword_100449510;
  if (!qword_100449510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449510);
  }

  return result;
}

uint64_t sub_10012EE14(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10012E9B0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10012EECC()
{
  result = qword_100449528;
  if (!qword_100449528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449528);
  }

  return result;
}

unint64_t sub_10012EF24()
{
  result = qword_100449530;
  if (!qword_100449530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449530);
  }

  return result;
}

unint64_t sub_10012EF7C()
{
  result = qword_100449538;
  if (!qword_100449538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449538);
  }

  return result;
}

unint64_t sub_10012EFD4()
{
  result = qword_100449540;
  if (!qword_100449540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449540);
  }

  return result;
}

uint64_t sub_10012F028()
{
  v0 = qword_100446C98;

  return v0;
}

unint64_t sub_10012F064()
{
  result = qword_100449548;
  if (!qword_100449548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449548);
  }

  return result;
}

uint64_t sub_10012F0B8()
{
  v0 = sub_10000321C(&qword_100455D70, &qword_100353000);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455D78, &qword_100353008);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10012EB68();
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

unint64_t sub_10012F280()
{
  result = qword_100449550;
  if (!qword_100449550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449550);
  }

  return result;
}

unint64_t sub_10012F2D8()
{
  result = qword_100449558;
  if (!qword_100449558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449558);
  }

  return result;
}

unint64_t sub_10012F330()
{
  result = qword_100449560;
  if (!qword_100449560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449560);
  }

  return result;
}

uint64_t sub_10012F384()
{
  sub_1002D610C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10012F46C(uint64_t a1)
{
  v2 = sub_10012EB68();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10012F4BC()
{
  result = qword_100449578;
  if (!qword_100449578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449578);
  }

  return result;
}

uint64_t sub_10012F528(uint64_t a1)
{
  v2 = sub_10012F330();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10012F578()
{
  result = qword_100449580;
  if (!qword_100449580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449580);
  }

  return result;
}

uint64_t sub_10012F61C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_1002D8910();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_1002D8840();
  sub_10001EDF0(v10, a2);
  sub_10001EDB8(v10, a2);
  sub_1002D88F0();
  (*(v8 + 56))(v6, 1, 1, v7);
  return sub_1002D8830();
}

uint64_t sub_10012F788@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10012FB04(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

uint64_t sub_10012FB70(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v3, a2);
  v4 = sub_10001EDB8(v3, a2);
  sub_1002D8620();
  v5 = sub_1002D8630();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_10012FC2C()
{
  result = swift_getKeyPath();
  qword_10051D2F0 = result;
  return result;
}

uint64_t sub_10012FC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455D48, &qword_100352FC0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455D50, &qword_100352FC8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10012FE34, 0, 0);
}

uint64_t sub_10012FE34()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100131010();
  *v4 = v0;
  v4[1] = sub_10012FF18;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EAC, 0, &type metadata for AccessibilityVoiceOverBrailleBrailleAlertMessagesShowUntilDismissedEntity, v5);
}

uint64_t sub_10012FF18()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100130014, 0, 0);
}

uint64_t sub_100130014()
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
  if (qword_10043A580 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D2F0;
  *(v0 + 288) = qword_10051D2F0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455D30, &qword_100455D38, &qword_100352FA8);
  *v7 = v0;
  v7[1] = sub_100130178;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100130178()
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
    v6 = sub_1001302E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001302E8()
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
  sub_10012F578();
  sub_100131224();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100130560()
{
  v0 = sub_10000321C(&qword_100455D58, &qword_100352FD0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A580 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100131224();
  sub_10002B6E4(&qword_100455D60, &qword_100455D58, &qword_100352FD0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001306D4(uint64_t *a1))(void *)
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

void (*sub_100130748(uint64_t *a1))(void *)
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

unint64_t sub_1001307E4()
{
  result = qword_100449598;
  if (!qword_100449598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449598);
  }

  return result;
}

unint64_t sub_10013083C()
{
  result = qword_1004495A0;
  if (!qword_1004495A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495A0);
  }

  return result;
}

uint64_t sub_100130938(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10012FC54(a1, v5, v4);
}

uint64_t sub_1001309E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A7338(&qword_100455D40, &qword_100352FB0, sub_100131010);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100130A50()
{
  result = qword_1004495A8;
  if (!qword_1004495A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495A8);
  }

  return result;
}

unint64_t sub_100130AA8()
{
  result = qword_1004495B0;
  if (!qword_1004495B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495B0);
  }

  return result;
}

uint64_t sub_100130B1C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverBrailleAlertShowUntilDismissed];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100130BE4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverBrailleAlertShowUntilDismissed:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100130C7C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100130D0C, 0, 0);
}

uint64_t sub_100130D0C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100449590, qword_1003063A0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455D30, &qword_100455D38, &qword_100352FA8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000061;
  v2[1] = 0x8000000100360F90;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100130E58()
{
  result = qword_1004495B8;
  if (!qword_1004495B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495B8);
  }

  return result;
}

uint64_t sub_100130EAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10013147C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100130F60()
{
  result = qword_1004495C0;
  if (!qword_1004495C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495C0);
  }

  return result;
}

unint64_t sub_100130FB8()
{
  result = qword_1004495C8;
  if (!qword_1004495C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495C8);
  }

  return result;
}

unint64_t sub_100131010()
{
  result = qword_1004495D0;
  if (!qword_1004495D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495D0);
  }

  return result;
}

uint64_t sub_100131064(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10013147C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100131118(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10013147C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001311CC()
{
  result = qword_1004495D8;
  if (!qword_1004495D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495D8);
  }

  return result;
}

unint64_t sub_100131224()
{
  result = qword_1004495E0;
  if (!qword_1004495E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495E0);
  }

  return result;
}

uint64_t sub_1001312BC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100130E58();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100131374()
{
  result = qword_1004495F8;
  if (!qword_1004495F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004495F8);
  }

  return result;
}

unint64_t sub_1001313CC()
{
  result = qword_100449600;
  if (!qword_100449600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449600);
  }

  return result;
}

unint64_t sub_100131424()
{
  result = qword_100449608;
  if (!qword_100449608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449608);
  }

  return result;
}

unint64_t sub_10013147C()
{
  result = qword_100449610;
  if (!qword_100449610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449610);
  }

  return result;
}

uint64_t sub_1001314D0()
{
  v0 = qword_100446CA8;

  return v0;
}

unint64_t sub_10013150C()
{
  result = qword_100449618;
  if (!qword_100449618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449618);
  }

  return result;
}

uint64_t sub_100131560()
{
  v0 = sub_10000321C(&qword_100455D20, &qword_100352F88);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455D28, &qword_100352F90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100131010();
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

unint64_t sub_100131728()
{
  result = qword_100449620;
  if (!qword_100449620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449620);
  }

  return result;
}

unint64_t sub_100131780()
{
  result = qword_100449628;
  if (!qword_100449628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449628);
  }

  return result;
}

unint64_t sub_1001317D8()
{
  result = qword_100449630;
  if (!qword_100449630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449630);
  }

  return result;
}

uint64_t sub_10013182C()
{
  sub_1002D60B8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100131914(uint64_t a1)
{
  v2 = sub_100131010();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100131964()
{
  result = qword_100449648;
  if (!qword_100449648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449648);
  }

  return result;
}

uint64_t sub_1001319B8(uint64_t a1)
{
  v2 = sub_1001317D8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100131A08()
{
  result = qword_100449650;
  if (!qword_100449650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449650);
  }

  return result;
}

uint64_t sub_100131AC4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100131E38()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D310);
  sub_10001EDB8(v0, qword_10051D310);
  return sub_1002D88F0();
}

uint64_t sub_100131E9C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D328);
  v1 = sub_10001EDB8(v0, qword_10051D328);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100131F5C()
{
  result = swift_getKeyPath();
  qword_10051D340 = result;
  return result;
}

uint64_t sub_100131F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455CF8, &qword_100352F48) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455D00, &qword_100352F50);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100132164, 0, 0);
}

uint64_t sub_100132164()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100133310();
  *v4 = v0;
  v4[1] = sub_100132248;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EB0, 0, &type metadata for AccessibilityBoldTextEnabledEntity, v5);
}

uint64_t sub_100132248()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100132344, 0, 0);
}

uint64_t sub_100132344()
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
  if (qword_10043A5A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D340;
  *(v0 + 288) = qword_10051D340;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455CE0, &qword_100455CE8, &qword_100352F30);
  *v7 = v0;
  v7[1] = sub_1001324A8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001324A8()
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
    v6 = sub_100132618;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100132618()
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
  sub_100131A08();
  sub_100133524();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100132890()
{
  v0 = sub_10000321C(&qword_100455D08, &qword_100352F58);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A5A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100133524();
  sub_10002B6E4(&qword_100455D10, &qword_100455D08, &qword_100352F58);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100132A04(uint64_t *a1))(void *)
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

void (*sub_100132A78(uint64_t *a1))(void *)
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

unint64_t sub_100132B14()
{
  result = qword_100449668;
  if (!qword_100449668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449668);
  }

  return result;
}

unint64_t sub_100132B6C()
{
  result = qword_100449670;
  if (!qword_100449670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449670);
  }

  return result;
}

uint64_t sub_100132C68(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100131F84(a1, v5, v4);
}

uint64_t sub_100132D14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A77C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100132D5C()
{
  result = qword_100449678;
  if (!qword_100449678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449678);
  }

  return result;
}

unint64_t sub_100132DB4()
{
  result = qword_100449680;
  if (!qword_100449680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449680);
  }

  return result;
}

uint64_t sub_100132E28()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 enhanceTextLegibilityEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100132EF0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setEnhanceTextLegibilityEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100132F88(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100133018, 0, 0);
}

uint64_t sub_100133018()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100449660, qword_1003069D8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455CE0, &qword_100455CE8, &qword_100352F30);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000028;
  v2[1] = 0x80000001003610D0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100133158()
{
  result = qword_100449688;
  if (!qword_100449688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449688);
  }

  return result;
}

uint64_t sub_1001331AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10013377C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100133260()
{
  result = qword_100449690;
  if (!qword_100449690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449690);
  }

  return result;
}

unint64_t sub_1001332B8()
{
  result = qword_100449698;
  if (!qword_100449698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449698);
  }

  return result;
}

unint64_t sub_100133310()
{
  result = qword_1004496A0;
  if (!qword_1004496A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496A0);
  }

  return result;
}

uint64_t sub_100133364(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10013377C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100133418(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10013377C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001334CC()
{
  result = qword_1004496A8;
  if (!qword_1004496A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496A8);
  }

  return result;
}

unint64_t sub_100133524()
{
  result = qword_1004496B0;
  if (!qword_1004496B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496B0);
  }

  return result;
}

uint64_t sub_1001335BC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100133158();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100133674()
{
  result = qword_1004496C8;
  if (!qword_1004496C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496C8);
  }

  return result;
}

unint64_t sub_1001336CC()
{
  result = qword_1004496D0;
  if (!qword_1004496D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496D0);
  }

  return result;
}

unint64_t sub_100133724()
{
  result = qword_1004496D8;
  if (!qword_1004496D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496D8);
  }

  return result;
}

unint64_t sub_10013377C()
{
  result = qword_1004496E0;
  if (!qword_1004496E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496E0);
  }

  return result;
}

uint64_t sub_1001337D0()
{
  v0 = qword_100446CB8;

  return v0;
}

unint64_t sub_10013380C()
{
  result = qword_1004496E8;
  if (!qword_1004496E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496E8);
  }

  return result;
}

uint64_t sub_100133860()
{
  v0 = sub_10000321C(&qword_100455CD0, &qword_100352F10);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455CD8, &qword_100352F18);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100133310();
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

unint64_t sub_100133A28()
{
  result = qword_1004496F0;
  if (!qword_1004496F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496F0);
  }

  return result;
}

unint64_t sub_100133A80()
{
  result = qword_1004496F8;
  if (!qword_1004496F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004496F8);
  }

  return result;
}

unint64_t sub_100133AD8()
{
  result = qword_100449700;
  if (!qword_100449700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449700);
  }

  return result;
}

uint64_t sub_100133B2C()
{
  sub_1002D6064();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100133C14(uint64_t a1)
{
  v2 = sub_100133310();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100133C64()
{
  result = qword_100449718;
  if (!qword_100449718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449718);
  }

  return result;
}

uint64_t sub_100133CBC(uint64_t a1)
{
  v2 = sub_100133AD8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100133D0C()
{
  result = qword_100449720;
  if (!qword_100449720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449720);
  }

  return result;
}

uint64_t sub_100133DD0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10013414C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D360);
  sub_10001EDB8(v0, qword_10051D360);
  return sub_1002D88F0();
}

uint64_t sub_1001341B0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D378);
  v1 = sub_10001EDB8(v0, qword_10051D378);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100134270()
{
  result = swift_getKeyPath();
  qword_10051D390 = result;
  return result;
}

uint64_t sub_100134298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455CA8, &qword_100352ED0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455CB0, &qword_100352ED8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100134478, 0, 0);
}

uint64_t sub_100134478()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10013562C();
  *v4 = v0;
  v4[1] = sub_10013455C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EB4, 0, &type metadata for AccessibilityButtonShapesEnabledEntity, v5);
}

uint64_t sub_10013455C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100134658, 0, 0);
}

uint64_t sub_100134658()
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
  if (qword_10043A5C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D390;
  *(v0 + 288) = qword_10051D390;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455C90, &qword_100455C98, &qword_100352EB8);
  *v7 = v0;
  v7[1] = sub_1001347BC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001347BC()
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
    v6 = sub_10013492C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10013492C()
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
  sub_100133D0C();
  sub_100135840();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100134BA4()
{
  v0 = sub_10000321C(&qword_100455CB8, &qword_100352EE0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A5C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100135840();
  sub_10002B6E4(&qword_100455CC0, &qword_100455CB8, &qword_100352EE0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100134D18(uint64_t *a1))(void *)
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

void (*sub_100134D8C(uint64_t *a1))(void *)
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

unint64_t sub_100134E28()
{
  result = qword_100449738;
  if (!qword_100449738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449738);
  }

  return result;
}

unint64_t sub_100134E80()
{
  result = qword_100449740;
  if (!qword_100449740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449740);
  }

  return result;
}

uint64_t sub_100134F7C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100134298(a1, v5, v4);
}

uint64_t sub_100135028@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A7C28();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100135070()
{
  result = qword_100449748;
  if (!qword_100449748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449748);
  }

  return result;
}

unint64_t sub_1001350C8()
{
  result = qword_100449750;
  if (!qword_100449750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449750);
  }

  return result;
}

uint64_t sub_10013513C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 buttonShapesEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100135204()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setButtonShapesEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10013529C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10013532C, 0, 0);
}

uint64_t sub_10013532C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100449730, qword_100307010);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455C90, &qword_100455C98, &qword_100352EB8);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001ELL;
  v2[1] = 0x8000000100360A50;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100135474()
{
  result = qword_100449758;
  if (!qword_100449758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449758);
  }

  return result;
}

uint64_t sub_1001354C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100135A98();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10013557C()
{
  result = qword_100449760;
  if (!qword_100449760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449760);
  }

  return result;
}

unint64_t sub_1001355D4()
{
  result = qword_100449768;
  if (!qword_100449768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449768);
  }

  return result;
}

unint64_t sub_10013562C()
{
  result = qword_100449770;
  if (!qword_100449770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449770);
  }

  return result;
}

uint64_t sub_100135680(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100135A98();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100135734(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100135A98();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001357E8()
{
  result = qword_100449778;
  if (!qword_100449778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449778);
  }

  return result;
}

unint64_t sub_100135840()
{
  result = qword_100449780;
  if (!qword_100449780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449780);
  }

  return result;
}

uint64_t sub_1001358D8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100135474();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100135990()
{
  result = qword_100449798;
  if (!qword_100449798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449798);
  }

  return result;
}

unint64_t sub_1001359E8()
{
  result = qword_1004497A0;
  if (!qword_1004497A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497A0);
  }

  return result;
}

unint64_t sub_100135A40()
{
  result = qword_1004497A8;
  if (!qword_1004497A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497A8);
  }

  return result;
}

unint64_t sub_100135A98()
{
  result = qword_1004497B0;
  if (!qword_1004497B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497B0);
  }

  return result;
}

uint64_t sub_100135AEC()
{
  v0 = qword_100446CC8;

  return v0;
}

unint64_t sub_100135B28()
{
  result = qword_1004497B8;
  if (!qword_1004497B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497B8);
  }

  return result;
}

uint64_t sub_100135B7C()
{
  v0 = sub_10000321C(&qword_100455C80, &qword_100352E98);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455C88, &qword_100352EA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10013562C();
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

unint64_t sub_100135D44()
{
  result = qword_1004497C0;
  if (!qword_1004497C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497C0);
  }

  return result;
}

unint64_t sub_100135D9C()
{
  result = qword_1004497C8;
  if (!qword_1004497C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497C8);
  }

  return result;
}

unint64_t sub_100135DF4()
{
  result = qword_1004497D0;
  if (!qword_1004497D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497D0);
  }

  return result;
}

uint64_t sub_100135E48()
{
  sub_1002D6010();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100135F30(uint64_t a1)
{
  v2 = sub_10013562C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100135F80()
{
  result = qword_1004497E8;
  if (!qword_1004497E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497E8);
  }

  return result;
}

uint64_t sub_100135FD8(uint64_t a1)
{
  v2 = sub_100135DF4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100136028()
{
  result = qword_1004497F0;
  if (!qword_1004497F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004497F0);
  }

  return result;
}

uint64_t sub_1001360E8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100136460()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D3B0);
  sub_10001EDB8(v0, qword_10051D3B0);
  return sub_1002D88F0();
}

uint64_t sub_1001364C4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D3C8);
  v1 = sub_10001EDB8(v0, qword_10051D3C8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100136584()
{
  result = swift_getKeyPath();
  qword_10051D3E0 = result;
  return result;
}

uint64_t sub_1001365AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455C58, &qword_100352E58) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455C60, &qword_100352E60);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10013678C, 0, 0);
}

uint64_t sub_10013678C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10013793C();
  *v4 = v0;
  v4[1] = sub_100136870;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EB8, 0, &type metadata for AccessibilityOnOffLabelsEnabledEntity, v5);
}

uint64_t sub_100136870()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10013696C, 0, 0);
}

uint64_t sub_10013696C()
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
  if (qword_10043A5E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D3E0;
  *(v0 + 288) = qword_10051D3E0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455C40, &qword_100455C48, &qword_100352E40);
  *v7 = v0;
  v7[1] = sub_100136AD0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100136AD0()
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
    v6 = sub_100136C40;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100136C40()
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
  sub_100136028();
  sub_100137B50();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100136EB8()
{
  v0 = sub_10000321C(&qword_100455C68, &qword_100352E68);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A5E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100137B50();
  sub_10002B6E4(&qword_100455C70, &qword_100455C68, &qword_100352E68);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10013702C(uint64_t *a1))(void *)
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

void (*sub_1001370A0(uint64_t *a1))(void *)
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

unint64_t sub_10013713C()
{
  result = qword_100449808;
  if (!qword_100449808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449808);
  }

  return result;
}

unint64_t sub_100137194()
{
  result = qword_100449810;
  if (!qword_100449810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449810);
  }

  return result;
}

uint64_t sub_100137290(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001365AC(a1, v5, v4);
}

uint64_t sub_10013733C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A8090();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100137384()
{
  result = qword_100449818;
  if (!qword_100449818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449818);
  }

  return result;
}

unint64_t sub_1001373DC()
{
  result = qword_100449820;
  if (!qword_100449820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449820);
  }

  return result;
}

uint64_t sub_100137450()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 increaseButtonLegibilityEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100137518()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setIncreaseButtonLegibilityEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001375B0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100137640, 0, 0);
}

uint64_t sub_100137640()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100449800, qword_100307648);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455C40, &qword_100455C48, &qword_100352E40);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001CLL;
  v2[1] = 0x800000010035D210;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100137784()
{
  result = qword_100449828;
  if (!qword_100449828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449828);
  }

  return result;
}

uint64_t sub_1001377D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100137DA8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10013788C()
{
  result = qword_100449830;
  if (!qword_100449830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449830);
  }

  return result;
}

unint64_t sub_1001378E4()
{
  result = qword_100449838;
  if (!qword_100449838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449838);
  }

  return result;
}

unint64_t sub_10013793C()
{
  result = qword_100449840;
  if (!qword_100449840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449840);
  }

  return result;
}

uint64_t sub_100137990(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100137DA8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100137A44(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100137DA8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100137AF8()
{
  result = qword_100449848;
  if (!qword_100449848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449848);
  }

  return result;
}

unint64_t sub_100137B50()
{
  result = qword_100449850;
  if (!qword_100449850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449850);
  }

  return result;
}

uint64_t sub_100137BE8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100137784();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100137CA0()
{
  result = qword_100449868;
  if (!qword_100449868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449868);
  }

  return result;
}

unint64_t sub_100137CF8()
{
  result = qword_100449870;
  if (!qword_100449870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449870);
  }

  return result;
}

unint64_t sub_100137D50()
{
  result = qword_100449878;
  if (!qword_100449878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449878);
  }

  return result;
}

unint64_t sub_100137DA8()
{
  result = qword_100449880;
  if (!qword_100449880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449880);
  }

  return result;
}

uint64_t sub_100137DFC()
{
  v0 = qword_100446CD8;

  return v0;
}

unint64_t sub_100137E38()
{
  result = qword_100449888;
  if (!qword_100449888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449888);
  }

  return result;
}

uint64_t sub_100137E8C()
{
  v0 = sub_10000321C(&qword_100455C30, &qword_100352E20);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455C38, &qword_100352E28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10013793C();
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

unint64_t sub_100138054()
{
  result = qword_100449890;
  if (!qword_100449890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449890);
  }

  return result;
}

unint64_t sub_1001380AC()
{
  result = qword_100449898;
  if (!qword_100449898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449898);
  }

  return result;
}

unint64_t sub_100138104()
{
  result = qword_1004498A0;
  if (!qword_1004498A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498A0);
  }

  return result;
}

uint64_t sub_100138158()
{
  sub_1002D5FBC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100138240(uint64_t a1)
{
  v2 = sub_10013793C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100138290()
{
  result = qword_1004498B8;
  if (!qword_1004498B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498B8);
  }

  return result;
}

uint64_t sub_1001382E8(uint64_t a1)
{
  v2 = sub_100138104();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100138338()
{
  result = qword_1004498C0;
  if (!qword_1004498C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498C0);
  }

  return result;
}

uint64_t sub_1001383D0()
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
  sub_10001EDF0(v7, qword_10051D3E8);
  sub_10001EDB8(v7, qword_10051D3E8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100138540@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001388BC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D400);
  sub_10001EDB8(v0, qword_10051D400);
  return sub_1002D88F0();
}

uint64_t sub_100138920()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D418);
  v1 = sub_10001EDB8(v0, qword_10051D418);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001389E0()
{
  result = swift_getKeyPath();
  qword_10051D430 = result;
  return result;
}

uint64_t sub_100138A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455C08, &qword_100352DE0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455C10, &qword_100352DE8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100138BE8, 0, 0);
}

uint64_t sub_100138BE8()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100139DA0();
  *v4 = v0;
  v4[1] = sub_100138CCC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EBC, 0, &type metadata for AccessibilityReduceTransparencyEnabledEntity, v5);
}

uint64_t sub_100138CCC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100138DC8, 0, 0);
}

uint64_t sub_100138DC8()
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
  if (qword_10043A600 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D430;
  *(v0 + 288) = qword_10051D430;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455BF0, &qword_100455BF8, &qword_100352DC8);
  *v7 = v0;
  v7[1] = sub_100138F2C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100138F2C()
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
    v6 = sub_10013909C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10013909C()
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
  sub_100138338();
  sub_100139FB4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100139314()
{
  v0 = sub_10000321C(&qword_100455C18, &qword_100352DF0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A600 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100139FB4();
  sub_10002B6E4(&qword_100455C20, &qword_100455C18, &qword_100352DF0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100139488(uint64_t *a1))(void *)
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

void (*sub_1001394FC(uint64_t *a1))(void *)
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

unint64_t sub_100139598()
{
  result = qword_1004498D8;
  if (!qword_1004498D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498D8);
  }

  return result;
}

unint64_t sub_1001395F0()
{
  result = qword_1004498E0;
  if (!qword_1004498E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498E0);
  }

  return result;
}

uint64_t sub_1001396EC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100138A08(a1, v5, v4);
}

uint64_t sub_100139798@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002A84F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001397E0()
{
  result = qword_1004498E8;
  if (!qword_1004498E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498E8);
  }

  return result;
}

unint64_t sub_100139838()
{
  result = qword_1004498F0;
  if (!qword_1004498F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498F0);
  }

  return result;
}

uint64_t sub_1001398AC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 enhanceBackgroundContrastEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100139974()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setEnhanceBackgroundContrastEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100139A0C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100139A9C, 0, 0);
}

uint64_t sub_100139A9C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004498D0, qword_100307C80);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455BF0, &qword_100455BF8, &qword_100352DC8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000024;
  v2[1] = 0x800000010035C500;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100139BE8()
{
  result = qword_1004498F8;
  if (!qword_1004498F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004498F8);
  }

  return result;
}

uint64_t sub_100139C3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10013A20C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100139CF0()
{
  result = qword_100449900;
  if (!qword_100449900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449900);
  }

  return result;
}

unint64_t sub_100139D48()
{
  result = qword_100449908;
  if (!qword_100449908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449908);
  }

  return result;
}

unint64_t sub_100139DA0()
{
  result = qword_100449910;
  if (!qword_100449910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449910);
  }

  return result;
}

uint64_t sub_100139DF4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10013A20C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100139EA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10013A20C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100139F5C()
{
  result = qword_100449918;
  if (!qword_100449918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449918);
  }

  return result;
}

unint64_t sub_100139FB4()
{
  result = qword_100449920;
  if (!qword_100449920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449920);
  }

  return result;
}

uint64_t sub_10013A04C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100139BE8();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10013A104()
{
  result = qword_100449938;
  if (!qword_100449938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449938);
  }

  return result;
}

unint64_t sub_10013A15C()
{
  result = qword_100449940;
  if (!qword_100449940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449940);
  }

  return result;
}

unint64_t sub_10013A1B4()
{
  result = qword_100449948;
  if (!qword_100449948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449948);
  }

  return result;
}

unint64_t sub_10013A20C()
{
  result = qword_100449950;
  if (!qword_100449950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449950);
  }

  return result;
}

uint64_t sub_10013A260()
{
  v0 = qword_100446CE8;

  return v0;
}

unint64_t sub_10013A29C()
{
  result = qword_100449958;
  if (!qword_100449958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449958);
  }

  return result;
}

uint64_t sub_10013A2F0()
{
  v0 = sub_10000321C(&qword_100455BE0, &qword_100352DA8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455BE8, &qword_100352DB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100139DA0();
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

unint64_t sub_10013A4B8()
{
  result = qword_100449960;
  if (!qword_100449960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449960);
  }

  return result;
}

unint64_t sub_10013A510()
{
  result = qword_100449968;
  if (!qword_100449968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449968);
  }

  return result;
}

unint64_t sub_10013A568()
{
  result = qword_100449970;
  if (!qword_100449970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449970);
  }

  return result;
}

uint64_t sub_10013A5BC()
{
  sub_1002D5F68();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10013A6A4(uint64_t a1)
{
  v2 = sub_100139DA0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10013A6F4()
{
  result = qword_100449988;
  if (!qword_100449988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449988);
  }

  return result;
}

uint64_t sub_10013A74C(uint64_t a1)
{
  v2 = sub_10013A568();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10013A79C()
{
  result = qword_100449990;
  if (!qword_100449990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100449990);
  }

  return result;
}

uint64_t sub_10013A834()
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
  sub_10001EDF0(v7, qword_10051D438);
  sub_10001EDB8(v7, qword_10051D438);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}