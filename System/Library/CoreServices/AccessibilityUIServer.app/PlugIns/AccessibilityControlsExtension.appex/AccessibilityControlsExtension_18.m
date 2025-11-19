unint64_t sub_10023BAD4()
{
  result = qword_10044F770;
  if (!qword_10044F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F770);
  }

  return result;
}

uint64_t sub_10023BB48()
{
  v1 = *(v0 + 16);
  *v1 = _AXSVoiceOverTouchShouldRouteToSpeakerWithProximity() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10023BBDC()
{
  v1 = *(v0 + 16);
  _AXSVoiceOverTouchSetShouldRouteToSpeakerWithProximity();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10023BC40(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10023BCD0, 0, 0);
}

uint64_t sub_10023BCD0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044F750, qword_100335418);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004536C8, &qword_1004536D0, &qword_10034F630);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000026;
  v2[1] = 0x8000000100361420;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10023BE1C()
{
  result = qword_10044F778;
  if (!qword_10044F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F778);
  }

  return result;
}

uint64_t sub_10023BE70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10023C440();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10023BF24()
{
  result = qword_10044F780;
  if (!qword_10044F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F780);
  }

  return result;
}

unint64_t sub_10023BF7C()
{
  result = qword_10044F788;
  if (!qword_10044F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F788);
  }

  return result;
}

unint64_t sub_10023BFD4()
{
  result = qword_10044F790;
  if (!qword_10044F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F790);
  }

  return result;
}

uint64_t sub_10023C028(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10023C440();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10023C0DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10023C440();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10023C190()
{
  result = qword_10044F798;
  if (!qword_10044F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F798);
  }

  return result;
}

unint64_t sub_10023C1E8()
{
  result = qword_10044F7A0;
  if (!qword_10044F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F7A0);
  }

  return result;
}

uint64_t sub_10023C280(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10023BE1C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10023C338()
{
  result = qword_10044F7B8;
  if (!qword_10044F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F7B8);
  }

  return result;
}

unint64_t sub_10023C390()
{
  result = qword_10044F7C0;
  if (!qword_10044F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F7C0);
  }

  return result;
}

unint64_t sub_10023C3E8()
{
  result = qword_10044F7C8;
  if (!qword_10044F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F7C8);
  }

  return result;
}

unint64_t sub_10023C440()
{
  result = qword_10044F7D0;
  if (!qword_10044F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F7D0);
  }

  return result;
}

uint64_t sub_10023C494()
{
  v0 = qword_100447438;

  return v0;
}

unint64_t sub_10023C4D0()
{
  result = qword_10044F7D8;
  if (!qword_10044F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F7D8);
  }

  return result;
}

uint64_t sub_10023C524()
{
  v0 = sub_10000321C(&qword_1004536B8, &qword_10034F610);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004536C0, &qword_10034F618);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10023BFD4();
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

unint64_t sub_10023C6EC()
{
  result = qword_10044F7E0;
  if (!qword_10044F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F7E0);
  }

  return result;
}

unint64_t sub_10023C744()
{
  result = qword_10044F7E8;
  if (!qword_10044F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F7E8);
  }

  return result;
}

unint64_t sub_10023C79C()
{
  result = qword_10044F7F0;
  if (!qword_10044F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F7F0);
  }

  return result;
}

uint64_t sub_10023C7F0()
{
  sub_1002D36BC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10023C8D8(uint64_t a1)
{
  v2 = sub_10023BFD4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10023C928()
{
  result = qword_10044F808;
  if (!qword_10044F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F808);
  }

  return result;
}

uint64_t sub_10023C980(uint64_t a1)
{
  v2 = sub_10023C79C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10023C9D0()
{
  result = qword_10044F810;
  if (!qword_10044F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F810);
  }

  return result;
}

uint64_t sub_10023CA94@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10023CE10()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F8E0);
  sub_10001EDB8(v0, qword_10051F8E0);
  return sub_1002D88F0();
}

uint64_t sub_10023CE74()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F8F8);
  v1 = sub_10001EDB8(v0, qword_10051F8F8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10023CF34()
{
  result = swift_getKeyPath();
  qword_10051F910 = result;
  return result;
}

uint64_t sub_10023CF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453690, &qword_10034F5D0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453698, &qword_10034F5D8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10023D13C, 0, 0);
}

uint64_t sub_10023D13C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10023E2F0();
  *v4 = v0;
  v4[1] = sub_10023D220;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7094, 0, &type metadata for AccessibilityVoiceOverCaptionPanelEntity, v5);
}

uint64_t sub_10023D220()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10023D31C, 0, 0);
}

uint64_t sub_10023D31C()
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
  if (qword_10043B4C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F910;
  *(v0 + 288) = qword_10051F910;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453678, &qword_100453680, &qword_10034F5B8);
  *v7 = v0;
  v7[1] = sub_10023D480;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10023D480()
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
    v6 = sub_10023D5F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10023D5F0()
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
  sub_10023C9D0();
  sub_10023E504();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10023D868()
{
  v0 = sub_10000321C(&qword_1004536A0, &qword_10034F5E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B4C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10023E504();
  sub_10002B6E4(&qword_1004536A8, &qword_1004536A0, &qword_10034F5E0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10023D9DC(uint64_t *a1))(void *)
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

void (*sub_10023DA50(uint64_t *a1))(void *)
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

unint64_t sub_10023DAEC()
{
  result = qword_10044F828;
  if (!qword_10044F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F828);
  }

  return result;
}

unint64_t sub_10023DB44()
{
  result = qword_10044F830;
  if (!qword_10044F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F830);
  }

  return result;
}

uint64_t sub_10023DC40(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10023CF5C(a1, v5, v4);
}

uint64_t sub_10023DCEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C82BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10023DD34()
{
  result = qword_10044F838;
  if (!qword_10044F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F838);
  }

  return result;
}

unint64_t sub_10023DD8C()
{
  result = qword_10044F840;
  if (!qword_10044F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F840);
  }

  return result;
}

uint64_t sub_10023DE00()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 enableVoiceOverCaptions];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10023DEC8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setEnableVoiceOverCaptions:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10023DF60(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10023DFF0, 0, 0);
}

uint64_t sub_10023DFF0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044F820, qword_100335A50);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453678, &qword_100453680, &qword_10034F5B8);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001CLL;
  v2[1] = 0x8000000100360850;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10023E138()
{
  result = qword_10044F848;
  if (!qword_10044F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F848);
  }

  return result;
}

uint64_t sub_10023E18C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10023E75C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10023E240()
{
  result = qword_10044F850;
  if (!qword_10044F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F850);
  }

  return result;
}

unint64_t sub_10023E298()
{
  result = qword_10044F858;
  if (!qword_10044F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F858);
  }

  return result;
}

unint64_t sub_10023E2F0()
{
  result = qword_10044F860;
  if (!qword_10044F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F860);
  }

  return result;
}

uint64_t sub_10023E344(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10023E75C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10023E3F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10023E75C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10023E4AC()
{
  result = qword_10044F868;
  if (!qword_10044F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F868);
  }

  return result;
}

unint64_t sub_10023E504()
{
  result = qword_10044F870;
  if (!qword_10044F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F870);
  }

  return result;
}

uint64_t sub_10023E59C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10023E138();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10023E654()
{
  result = qword_10044F888;
  if (!qword_10044F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F888);
  }

  return result;
}

unint64_t sub_10023E6AC()
{
  result = qword_10044F890;
  if (!qword_10044F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F890);
  }

  return result;
}

unint64_t sub_10023E704()
{
  result = qword_10044F898;
  if (!qword_10044F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F898);
  }

  return result;
}

unint64_t sub_10023E75C()
{
  result = qword_10044F8A0;
  if (!qword_10044F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F8A0);
  }

  return result;
}

uint64_t sub_10023E7B0()
{
  v0 = qword_100447448;

  return v0;
}

unint64_t sub_10023E7EC()
{
  result = qword_10044F8A8;
  if (!qword_10044F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F8A8);
  }

  return result;
}

uint64_t sub_10023E840()
{
  v0 = sub_10000321C(&qword_100453668, &qword_10034F598);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453670, &qword_10034F5A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10023E2F0();
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

unint64_t sub_10023EA08()
{
  result = qword_10044F8B0;
  if (!qword_10044F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F8B0);
  }

  return result;
}

unint64_t sub_10023EA60()
{
  result = qword_10044F8B8;
  if (!qword_10044F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F8B8);
  }

  return result;
}

unint64_t sub_10023EAB8()
{
  result = qword_10044F8C0;
  if (!qword_10044F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F8C0);
  }

  return result;
}

uint64_t sub_10023EB0C()
{
  sub_1002D3668();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10023EBF4(uint64_t a1)
{
  v2 = sub_10023E2F0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10023EC44()
{
  result = qword_10044F8D8;
  if (!qword_10044F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F8D8);
  }

  return result;
}

uint64_t sub_10023EC9C(uint64_t a1)
{
  v2 = sub_10023EAB8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10023ECEC()
{
  result = qword_10044F8E0;
  if (!qword_10044F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F8E0);
  }

  return result;
}

uint64_t sub_10023EDAC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10023F124()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F930);
  sub_10001EDB8(v0, qword_10051F930);
  return sub_1002D88F0();
}

uint64_t sub_10023F188()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F948);
  v1 = sub_10001EDB8(v0, qword_10051F948);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10023F248()
{
  result = swift_getKeyPath();
  qword_10051F960 = result;
  return result;
}

uint64_t sub_10023F270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453640, &qword_10034F558) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453648, &qword_10034F560);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10023F450, 0, 0);
}

uint64_t sub_10023F450()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100240600();
  *v4 = v0;
  v4[1] = sub_10023F534;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7098, 0, &type metadata for AccessibilityVoiceOverLargeCursorEntity, v5);
}

uint64_t sub_10023F534()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10023F630, 0, 0);
}

uint64_t sub_10023F630()
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
  if (qword_10043B4E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F960;
  *(v0 + 288) = qword_10051F960;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453628, &qword_100453630, &qword_10034F540);
  *v7 = v0;
  v7[1] = sub_10023F794;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10023F794()
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
    v6 = sub_10023F904;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10023F904()
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
  sub_10023ECEC();
  sub_100240814();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10023FB7C()
{
  v0 = sub_10000321C(&qword_100453650, &qword_10034F568);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B4E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100240814();
  sub_10002B6E4(&qword_100453658, &qword_100453650, &qword_10034F568);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10023FCF0(uint64_t *a1))(void *)
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

void (*sub_10023FD64(uint64_t *a1))(void *)
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

unint64_t sub_10023FE00()
{
  result = qword_10044F8F8;
  if (!qword_10044F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F8F8);
  }

  return result;
}

unint64_t sub_10023FE58()
{
  result = qword_10044F900;
  if (!qword_10044F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F900);
  }

  return result;
}

uint64_t sub_10023FF54(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10023F270(a1, v5, v4);
}

uint64_t sub_100240000@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C8724();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100240048()
{
  result = qword_10044F908;
  if (!qword_10044F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F908);
  }

  return result;
}

unint64_t sub_1002400A0()
{
  result = qword_10044F910;
  if (!qword_10044F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F910);
  }

  return result;
}

uint64_t sub_100240114()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverLargeCursorEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002401DC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverLargeCursorEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100240274(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100240304, 0, 0);
}

uint64_t sub_100240304()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044F8F0, qword_100336088);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453628, &qword_100453630, &qword_10034F540);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001BLL;
  v2[1] = 0x800000010035E110;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100240448()
{
  result = qword_10044F918;
  if (!qword_10044F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F918);
  }

  return result;
}

uint64_t sub_10024049C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100240A6C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100240550()
{
  result = qword_10044F920;
  if (!qword_10044F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F920);
  }

  return result;
}

unint64_t sub_1002405A8()
{
  result = qword_10044F928;
  if (!qword_10044F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F928);
  }

  return result;
}

unint64_t sub_100240600()
{
  result = qword_10044F930;
  if (!qword_10044F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F930);
  }

  return result;
}

uint64_t sub_100240654(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100240A6C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100240708(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100240A6C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1002407BC()
{
  result = qword_10044F938;
  if (!qword_10044F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F938);
  }

  return result;
}

unint64_t sub_100240814()
{
  result = qword_10044F940;
  if (!qword_10044F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F940);
  }

  return result;
}

uint64_t sub_1002408AC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100240448();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100240964()
{
  result = qword_10044F958;
  if (!qword_10044F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F958);
  }

  return result;
}

unint64_t sub_1002409BC()
{
  result = qword_10044F960;
  if (!qword_10044F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F960);
  }

  return result;
}

unint64_t sub_100240A14()
{
  result = qword_10044F968;
  if (!qword_10044F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F968);
  }

  return result;
}

unint64_t sub_100240A6C()
{
  result = qword_10044F970;
  if (!qword_10044F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F970);
  }

  return result;
}

uint64_t sub_100240AC0()
{
  v0 = qword_100447458;

  return v0;
}

unint64_t sub_100240AFC()
{
  result = qword_10044F978;
  if (!qword_10044F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F978);
  }

  return result;
}

uint64_t sub_100240B50()
{
  v0 = sub_10000321C(&qword_100453618, &qword_10034F520);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453620, &qword_10034F528);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100240600();
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

unint64_t sub_100240D18()
{
  result = qword_10044F980;
  if (!qword_10044F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F980);
  }

  return result;
}

unint64_t sub_100240D70()
{
  result = qword_10044F988;
  if (!qword_10044F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F988);
  }

  return result;
}

unint64_t sub_100240DC8()
{
  result = qword_10044F990;
  if (!qword_10044F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F990);
  }

  return result;
}

uint64_t sub_100240E1C()
{
  sub_1002D3614();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100240F04(uint64_t a1)
{
  v2 = sub_100240600();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100240F54()
{
  result = qword_10044F9A8;
  if (!qword_10044F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F9A8);
  }

  return result;
}

uint64_t sub_100240FAC(uint64_t a1)
{
  v2 = sub_100240DC8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100240FFC()
{
  result = qword_10044F9B0;
  if (!qword_10044F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F9B0);
  }

  return result;
}

uint64_t sub_1002410C0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10024143C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F980);
  sub_10001EDB8(v0, qword_10051F980);
  return sub_1002D88F0();
}

uint64_t sub_1002414A0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F998);
  v1 = sub_10001EDB8(v0, qword_10051F998);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100241560()
{
  result = swift_getKeyPath();
  qword_10051F9B0 = result;
  return result;
}

uint64_t sub_100241588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004535F0, &qword_10034F4E0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004535F8, &qword_10034F4E8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100241768, 0, 0);
}

uint64_t sub_100241768()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100242948();
  *v4 = v0;
  v4[1] = sub_10024184C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D709C, 0, &type metadata for AccessibilityVoiceOverAudioDuckingModeEntity, v5);
}

uint64_t sub_10024184C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100241948, 0, 0);
}

uint64_t sub_100241948()
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
  if (qword_10043B500 != -1)
  {
    swift_once();
  }

  v5 = qword_10051F9B0;
  v0[36] = qword_10051F9B0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_1004535D0, &qword_1004535D8, &qword_10034F4C0);
  *v7 = v0;
  v7[1] = sub_100241AA4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXSVoiceOverAudioDuckingModeAppEnum, v8);
}

uint64_t sub_100241AA4()
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
    v6 = sub_100241C14;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100241C14()
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
  sub_100240FFC();
  sub_100242B5C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100241E8C()
{
  v0 = sub_10000321C(&qword_100453600, &qword_10034F4F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B500 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100242B5C();
  sub_10002B6E4(&qword_100453608, &qword_100453600, &qword_10034F4F0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100242000(uint64_t *a1))(void *)
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

void (*sub_100242074(uint64_t *a1))(void *)
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

unint64_t sub_100242110()
{
  result = qword_10044F9C8;
  if (!qword_10044F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F9C8);
  }

  return result;
}

unint64_t sub_100242168()
{
  result = qword_10044F9D0;
  if (!qword_10044F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F9D0);
  }

  return result;
}

uint64_t sub_100242264(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100241588(a1, v5, v4);
}

uint64_t sub_100242310@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C8B8C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100242358()
{
  result = qword_10044F9D8;
  if (!qword_10044F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F9D8);
  }

  return result;
}

uint64_t sub_1002423D0()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverMediaDuckingMode];

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

uint64_t sub_1002424DC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverMediaDuckingMode:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002425A4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100242634, 0, 0);
}

uint64_t sub_100242634()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044F9C0, &qword_1003366C0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004535D0, &qword_1004535D8, &qword_10034F4C0);
  sub_100013C8C();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000023;
  v2[1] = 0x80000001003616A0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100242790()
{
  result = qword_10044F9E0;
  if (!qword_10044F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F9E0);
  }

  return result;
}

uint64_t sub_1002427E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100242DB4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100242898()
{
  result = qword_10044F9E8;
  if (!qword_10044F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F9E8);
  }

  return result;
}

unint64_t sub_1002428F0()
{
  result = qword_10044F9F0;
  if (!qword_10044F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F9F0);
  }

  return result;
}

unint64_t sub_100242948()
{
  result = qword_10044F9F8;
  if (!qword_10044F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044F9F8);
  }

  return result;
}

uint64_t sub_10024299C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100242DB4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100242A50(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100242DB4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100242B04()
{
  result = qword_10044FA00;
  if (!qword_10044FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FA00);
  }

  return result;
}

unint64_t sub_100242B5C()
{
  result = qword_10044FA08;
  if (!qword_10044FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FA08);
  }

  return result;
}

uint64_t sub_100242BF4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100242790();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100242CAC()
{
  result = qword_10044FA20;
  if (!qword_10044FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FA20);
  }

  return result;
}

unint64_t sub_100242D04()
{
  result = qword_10044FA28;
  if (!qword_10044FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FA28);
  }

  return result;
}

unint64_t sub_100242D5C()
{
  result = qword_10044FA30;
  if (!qword_10044FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FA30);
  }

  return result;
}

unint64_t sub_100242DB4()
{
  result = qword_10044FA38;
  if (!qword_10044FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FA38);
  }

  return result;
}

uint64_t sub_100242E08()
{
  v0 = qword_100447468;

  return v0;
}

unint64_t sub_100242E44()
{
  result = qword_10044FA40;
  if (!qword_10044FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FA40);
  }

  return result;
}

uint64_t sub_100242E98()
{
  v0 = sub_10000321C(&qword_1004535C0, &qword_10034F4A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004535C8, &qword_10034F4A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100242948();
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

unint64_t sub_100243060()
{
  result = qword_10044FA48;
  if (!qword_10044FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FA48);
  }

  return result;
}

unint64_t sub_1002430B8()
{
  result = qword_10044FA50;
  if (!qword_10044FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FA50);
  }

  return result;
}

unint64_t sub_100243110()
{
  result = qword_10044FA58;
  if (!qword_10044FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FA58);
  }

  return result;
}

uint64_t sub_100243164()
{
  sub_1002D35C0();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10024324C(uint64_t a1)
{
  v2 = sub_100242948();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10024329C()
{
  result = qword_10044FA70;
  if (!qword_10044FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FA70);
  }

  return result;
}

uint64_t sub_1002432F4(uint64_t a1)
{
  v2 = sub_100243110();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100243344()
{
  result = qword_10044FA78;
  if (!qword_10044FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FA78);
  }

  return result;
}

uint64_t sub_1002433DC()
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
  sub_10001EDF0(v7, qword_10051F9B8);
  sub_10001EDB8(v7, qword_10051F9B8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10024354C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1002438BC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051F9D0);
  sub_10001EDB8(v0, qword_10051F9D0);
  return sub_1002D88F0();
}

uint64_t sub_100243920()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051F9E8);
  v1 = sub_10001EDB8(v0, qword_10051F9E8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1002439E0()
{
  result = swift_getKeyPath();
  qword_10051FA00 = result;
  return result;
}

uint64_t sub_100243A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453598, &qword_10034F460) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004535A0, &qword_10034F468);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100243BE8, 0, 0);
}

uint64_t sub_100243BE8()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100244DC8();
  *v4 = v0;
  v4[1] = sub_100243CCC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70A0, 0, &type metadata for AXTypingPhoneticFeedbackEntity, v5);
}

uint64_t sub_100243CCC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100243DC8, 0, 0);
}

uint64_t sub_100243DC8()
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
  if (qword_10043B520 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FA00;
  v0[36] = qword_10051FA00;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100453578, &qword_100453580, &qword_10034F440);
  *v7 = v0;
  v7[1] = sub_100243F24;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXSVoiceOverPhoneticFeedbackAppEnum, v8);
}

uint64_t sub_100243F24()
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
    v6 = sub_100244094;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100244094()
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
  sub_100243344();
  sub_100244FDC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10024430C()
{
  v0 = sub_10000321C(&qword_1004535A8, &qword_10034F470);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B520 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100244FDC();
  sub_10002B6E4(&qword_1004535B0, &qword_1004535A8, &qword_10034F470);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100244480(uint64_t *a1))(void *)
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

void (*sub_1002444F4(uint64_t *a1))(void *)
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

unint64_t sub_100244590()
{
  result = qword_10044FA90;
  if (!qword_10044FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FA90);
  }

  return result;
}

unint64_t sub_1002445E8()
{
  result = qword_10044FA98;
  if (!qword_10044FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FA98);
  }

  return result;
}

uint64_t sub_1002446E4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100243A08(a1, v5, v4);
}

uint64_t sub_100244790@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C8F90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1002447D8()
{
  result = qword_10044FAA0;
  if (!qword_10044FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FAA0);
  }

  return result;
}

uint64_t sub_100244850()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverPhoneticsFeedback];

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

uint64_t sub_10024495C()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverPhoneticsFeedback:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100244A24(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100244AB4, 0, 0);
}

uint64_t sub_100244AB4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044FA88, &qword_100336CF8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453578, &qword_100453580, &qword_10034F440);
  sub_100012314();
  v3 = sub_1002D8890();
  *v2 = 0xD00000000000003DLL;
  v2[1] = 0x800000010035CE20;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100244C10()
{
  result = qword_10044FAA8;
  if (!qword_10044FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FAA8);
  }

  return result;
}

uint64_t sub_100244C64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100245234();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100244D18()
{
  result = qword_10044FAB0;
  if (!qword_10044FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FAB0);
  }

  return result;
}

unint64_t sub_100244D70()
{
  result = qword_10044FAB8;
  if (!qword_10044FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FAB8);
  }

  return result;
}

unint64_t sub_100244DC8()
{
  result = qword_10044FAC0;
  if (!qword_10044FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FAC0);
  }

  return result;
}

uint64_t sub_100244E1C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100245234();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100244ED0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100245234();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100244F84()
{
  result = qword_10044FAC8;
  if (!qword_10044FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FAC8);
  }

  return result;
}

unint64_t sub_100244FDC()
{
  result = qword_10044FAD0;
  if (!qword_10044FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FAD0);
  }

  return result;
}

uint64_t sub_100245074(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100244C10();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10024512C()
{
  result = qword_10044FAE8;
  if (!qword_10044FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FAE8);
  }

  return result;
}

unint64_t sub_100245184()
{
  result = qword_10044FAF0;
  if (!qword_10044FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FAF0);
  }

  return result;
}

unint64_t sub_1002451DC()
{
  result = qword_10044FAF8;
  if (!qword_10044FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FAF8);
  }

  return result;
}

unint64_t sub_100245234()
{
  result = qword_10044FB00;
  if (!qword_10044FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB00);
  }

  return result;
}

uint64_t sub_100245288()
{
  v0 = qword_100447478;

  return v0;
}

unint64_t sub_1002452C4()
{
  result = qword_10044FB08;
  if (!qword_10044FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB08);
  }

  return result;
}

uint64_t sub_100245318()
{
  v0 = sub_10000321C(&qword_100453568, &qword_10034F420);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453570, &qword_10034F428);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100244DC8();
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

unint64_t sub_1002454E0()
{
  result = qword_10044FB10;
  if (!qword_10044FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB10);
  }

  return result;
}

unint64_t sub_100245538()
{
  result = qword_10044FB18;
  if (!qword_10044FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB18);
  }

  return result;
}

unint64_t sub_100245590()
{
  result = qword_10044FB20;
  if (!qword_10044FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB20);
  }

  return result;
}

uint64_t sub_1002455E4()
{
  sub_1002D356C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002456CC(uint64_t a1)
{
  v2 = sub_100244DC8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10024571C()
{
  result = qword_10044FB38;
  if (!qword_10044FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB38);
  }

  return result;
}

uint64_t sub_100245774(uint64_t a1)
{
  v2 = sub_100245590();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002457C4()
{
  result = qword_10044FB40;
  if (!qword_10044FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB40);
  }

  return result;
}

uint64_t sub_100245884@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100245BFC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FA20);
  sub_10001EDB8(v0, qword_10051FA20);
  return sub_1002D88F0();
}

uint64_t sub_100245C60()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FA38);
  v1 = sub_10001EDB8(v0, qword_10051FA38);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100245D20()
{
  result = swift_getKeyPath();
  qword_10051FA50 = result;
  return result;
}

uint64_t sub_100245D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453540, &qword_10034F3E0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453548, &qword_10034F3E8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100245F28, 0, 0);
}

uint64_t sub_100245F28()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100247104();
  *v4 = v0;
  v4[1] = sub_10024600C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70A4, 0, &type metadata for AXTypingStyleEntity, v5);
}

uint64_t sub_10024600C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100246108, 0, 0);
}

uint64_t sub_100246108()
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
  if (qword_10043B540 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FA50;
  v0[36] = qword_10051FA50;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100453520, &qword_100453528, &qword_10034F3C0);
  *v7 = v0;
  v7[1] = sub_100246264;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXSVoiceOverTypingStyleAppEnum, v8);
}

uint64_t sub_100246264()
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
    v6 = sub_1002463D4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002463D4()
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
  sub_1002457C4();
  sub_100247318();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10024664C()
{
  v0 = sub_10000321C(&qword_100453550, &qword_10034F3F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B540 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100247318();
  sub_10002B6E4(&qword_100453558, &qword_100453550, &qword_10034F3F0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1002467C0(uint64_t *a1))(void *)
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

void (*sub_100246834(uint64_t *a1))(void *)
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

unint64_t sub_1002468D0()
{
  result = qword_10044FB58;
  if (!qword_10044FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB58);
  }

  return result;
}

unint64_t sub_100246928()
{
  result = qword_10044FB60;
  if (!qword_10044FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB60);
  }

  return result;
}

uint64_t sub_100246A24(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100245D48(a1, v5, v4);
}

uint64_t sub_100246AD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C9394();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100246B18()
{
  result = qword_10044FB68;
  if (!qword_10044FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB68);
  }

  return result;
}

uint64_t sub_100246B90()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverTypingMode];

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

uint64_t sub_100246C9C()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverTypingMode:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100246D64(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100246DF4, 0, 0);
}

uint64_t sub_100246DF4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044FB50, &qword_100337330);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453520, &qword_100453528, &qword_10034F3C0);
  sub_100011788();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000041;
  v2[1] = 0x800000010035A630;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100246F4C()
{
  result = qword_10044FB70;
  if (!qword_10044FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB70);
  }

  return result;
}

uint64_t sub_100246FA0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100247570();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100247054()
{
  result = qword_10044FB78;
  if (!qword_10044FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB78);
  }

  return result;
}

unint64_t sub_1002470AC()
{
  result = qword_10044FB80;
  if (!qword_10044FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB80);
  }

  return result;
}

unint64_t sub_100247104()
{
  result = qword_10044FB88;
  if (!qword_10044FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB88);
  }

  return result;
}

uint64_t sub_100247158(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100247570();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10024720C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100247570();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1002472C0()
{
  result = qword_10044FB90;
  if (!qword_10044FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB90);
  }

  return result;
}

unint64_t sub_100247318()
{
  result = qword_10044FB98;
  if (!qword_10044FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FB98);
  }

  return result;
}

uint64_t sub_1002473B0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100246F4C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100247468()
{
  result = qword_10044FBB0;
  if (!qword_10044FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FBB0);
  }

  return result;
}

unint64_t sub_1002474C0()
{
  result = qword_10044FBB8;
  if (!qword_10044FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FBB8);
  }

  return result;
}

unint64_t sub_100247518()
{
  result = qword_10044FBC0;
  if (!qword_10044FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FBC0);
  }

  return result;
}

unint64_t sub_100247570()
{
  result = qword_10044FBC8;
  if (!qword_10044FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FBC8);
  }

  return result;
}

uint64_t sub_1002475C4()
{
  v0 = qword_100447488;

  return v0;
}

unint64_t sub_100247600()
{
  result = qword_10044FBD0;
  if (!qword_10044FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FBD0);
  }

  return result;
}

uint64_t sub_100247654()
{
  v0 = sub_10000321C(&qword_100453510, &qword_10034F3A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453518, &qword_10034F3A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100247104();
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

unint64_t sub_10024781C()
{
  result = qword_10044FBD8;
  if (!qword_10044FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FBD8);
  }

  return result;
}

unint64_t sub_100247874()
{
  result = qword_10044FBE0;
  if (!qword_10044FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FBE0);
  }

  return result;
}

unint64_t sub_1002478CC()
{
  result = qword_10044FBE8;
  if (!qword_10044FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FBE8);
  }

  return result;
}

uint64_t sub_100247920()
{
  sub_1002D3518();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100247A08(uint64_t a1)
{
  v2 = sub_100247104();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100247A58()
{
  result = qword_10044FC00;
  if (!qword_10044FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC00);
  }

  return result;
}

uint64_t sub_100247AB0(uint64_t a1)
{
  v2 = sub_1002478CC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100247B00()
{
  result = qword_10044FC08;
  if (!qword_10044FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC08);
  }

  return result;
}

uint64_t sub_100247B98()
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
  sub_10001EDF0(v7, qword_10051FA58);
  sub_10001EDB8(v7, qword_10051FA58);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100247D08()
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

uint64_t sub_10024807C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FA70);
  sub_10001EDB8(v0, qword_10051FA70);
  return sub_1002D88F0();
}

uint64_t sub_1002480E0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FA88);
  v1 = sub_10001EDB8(v0, qword_10051FA88);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1002481A0()
{
  result = swift_getKeyPath();
  qword_10051FAA0 = result;
  return result;
}

uint64_t sub_1002481C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004534E8, &qword_10034F360) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004534F0, &qword_10034F368);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002483A8, 0, 0);
}

uint64_t sub_1002483A8()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100249560();
  *v4 = v0;
  v4[1] = sub_10024848C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70A8, 0, &type metadata for AccessibilityVoiceOverFlashlightNotificationsEnabledEntity, v5);
}

uint64_t sub_10024848C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100248588, 0, 0);
}

uint64_t sub_100248588()
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
  if (qword_10043B560 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FAA0;
  *(v0 + 288) = qword_10051FAA0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004534D0, &qword_1004534D8, &qword_10034F348);
  *v7 = v0;
  v7[1] = sub_1002486EC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1002486EC()
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
    v6 = sub_10024885C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10024885C()
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
  sub_100247B00();
  sub_100249774();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100248AD4()
{
  v0 = sub_10000321C(&qword_1004534F8, &qword_10034F370);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B560 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100249774();
  sub_10002B6E4(&qword_100453500, &qword_1004534F8, &qword_10034F370);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100248C48(uint64_t *a1))(void *)
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

void (*sub_100248CBC(uint64_t *a1))(void *)
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

unint64_t sub_100248D58()
{
  result = qword_10044FC20;
  if (!qword_10044FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC20);
  }

  return result;
}

unint64_t sub_100248DB0()
{
  result = qword_10044FC28;
  if (!qword_10044FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC28);
  }

  return result;
}

uint64_t sub_100248EAC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1002481C8(a1, v5, v4);
}

uint64_t sub_100248F58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C9798();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100248FA0()
{
  result = qword_10044FC30;
  if (!qword_10044FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC30);
  }

  return result;
}

unint64_t sub_100248FF8()
{
  result = qword_10044FC38;
  if (!qword_10044FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC38);
  }

  return result;
}

uint64_t sub_10024906C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverFlashlightNotificationsEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100249134()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverFlashlightNotificationsEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002491CC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10024925C, 0, 0);
}

uint64_t sub_10024925C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044FC18, qword_100337968);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004534D0, &qword_1004534D8, &qword_10034F348);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000069;
  v2[1] = 0x800000010035F310;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1002493A8()
{
  result = qword_10044FC40;
  if (!qword_10044FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC40);
  }

  return result;
}

uint64_t sub_1002493FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002499CC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1002494B0()
{
  result = qword_10044FC48;
  if (!qword_10044FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC48);
  }

  return result;
}

unint64_t sub_100249508()
{
  result = qword_10044FC50;
  if (!qword_10044FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC50);
  }

  return result;
}

unint64_t sub_100249560()
{
  result = qword_10044FC58;
  if (!qword_10044FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC58);
  }

  return result;
}

uint64_t sub_1002495B4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002499CC();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100249668(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002499CC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10024971C()
{
  result = qword_10044FC60;
  if (!qword_10044FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC60);
  }

  return result;
}

unint64_t sub_100249774()
{
  result = qword_10044FC68;
  if (!qword_10044FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC68);
  }

  return result;
}

uint64_t sub_10024980C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002493A8();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1002498C4()
{
  result = qword_10044FC80;
  if (!qword_10044FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC80);
  }

  return result;
}

unint64_t sub_10024991C()
{
  result = qword_10044FC88;
  if (!qword_10044FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC88);
  }

  return result;
}

unint64_t sub_100249974()
{
  result = qword_10044FC90;
  if (!qword_10044FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC90);
  }

  return result;
}

unint64_t sub_1002499CC()
{
  result = qword_10044FC98;
  if (!qword_10044FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FC98);
  }

  return result;
}

uint64_t sub_100249A20()
{
  v0 = qword_100447498;

  return v0;
}

unint64_t sub_100249A5C()
{
  result = qword_10044FCA0;
  if (!qword_10044FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FCA0);
  }

  return result;
}

uint64_t sub_100249AB0()
{
  v0 = sub_10000321C(&qword_1004534C0, &qword_10034F328);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004534C8, &qword_10034F330);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100249560();
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

unint64_t sub_100249C78()
{
  result = qword_10044FCA8;
  if (!qword_10044FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FCA8);
  }

  return result;
}

unint64_t sub_100249CD0()
{
  result = qword_10044FCB0;
  if (!qword_10044FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FCB0);
  }

  return result;
}

unint64_t sub_100249D28()
{
  result = qword_10044FCB8;
  if (!qword_10044FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FCB8);
  }

  return result;
}

uint64_t sub_100249D7C()
{
  sub_1002D34C4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100249E64(uint64_t a1)
{
  v2 = sub_100249560();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100249EB4()
{
  result = qword_10044FCD0;
  if (!qword_10044FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FCD0);
  }

  return result;
}

uint64_t sub_100249F0C(uint64_t a1)
{
  v2 = sub_100249D28();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100249F5C()
{
  result = qword_10044FCD8;
  if (!qword_10044FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FCD8);
  }

  return result;
}

uint64_t sub_10024A020@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10024A39C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FAC0);
  sub_10001EDB8(v0, qword_10051FAC0);
  return sub_1002D88F0();
}

uint64_t sub_10024A400()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FAD8);
  v1 = sub_10001EDB8(v0, qword_10051FAD8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10024A4C0()
{
  result = swift_getKeyPath();
  qword_10051FAF0 = result;
  return result;
}

uint64_t sub_10024A4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453498, &qword_10034F2E8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004534A0, &qword_10034F2F0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10024A6C8, 0, 0);
}

uint64_t sub_10024A6C8()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10024B87C();
  *v4 = v0;
  v4[1] = sub_10024A7AC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70AC, 0, &type metadata for AccessibilityVoiceOverTableHeadersEnabledEntity, v5);
}

uint64_t sub_10024A7AC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10024A8A8, 0, 0);
}

uint64_t sub_10024A8A8()
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
  if (qword_10043B580 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FAF0;
  *(v0 + 288) = qword_10051FAF0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453480, &qword_100453488, &qword_10034F2D0);
  *v7 = v0;
  v7[1] = sub_10024AA0C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10024AA0C()
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
    v6 = sub_10024AB7C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10024AB7C()
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
  sub_100249F5C();
  sub_10024BA90();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10024ADF4()
{
  v0 = sub_10000321C(&qword_1004534A8, &qword_10034F2F8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B580 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10024BA90();
  sub_10002B6E4(&qword_1004534B0, &qword_1004534A8, &qword_10034F2F8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10024AF68(uint64_t *a1))(void *)
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

void (*sub_10024AFDC(uint64_t *a1))(void *)
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

unint64_t sub_10024B078()
{
  result = qword_10044FCF0;
  if (!qword_10044FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FCF0);
  }

  return result;
}

unint64_t sub_10024B0D0()
{
  result = qword_10044FCF8;
  if (!qword_10044FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FCF8);
  }

  return result;
}

uint64_t sub_10024B1CC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10024A4E8(a1, v5, v4);
}

uint64_t sub_10024B278@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C9C00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10024B2C0()
{
  result = qword_10044FD00;
  if (!qword_10044FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD00);
  }

  return result;
}

unint64_t sub_10024B318()
{
  result = qword_10044FD08;
  if (!qword_10044FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD08);
  }

  return result;
}

uint64_t sub_10024B38C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverSpeakTableHeaders];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10024B454()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverSpeakTableHeaders:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10024B4EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10024B57C, 0, 0);
}

uint64_t sub_10024B57C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044FCE8, qword_100337FA0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453480, &qword_100453488, &qword_10034F2D0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000027;
  v2[1] = 0x8000000100375D00;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10024B6C4()
{
  result = qword_10044FD10;
  if (!qword_10044FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD10);
  }

  return result;
}

uint64_t sub_10024B718(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10024BCE8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10024B7CC()
{
  result = qword_10044FD18;
  if (!qword_10044FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD18);
  }

  return result;
}

unint64_t sub_10024B824()
{
  result = qword_10044FD20;
  if (!qword_10044FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD20);
  }

  return result;
}

unint64_t sub_10024B87C()
{
  result = qword_10044FD28;
  if (!qword_10044FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD28);
  }

  return result;
}

uint64_t sub_10024B8D0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10024BCE8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10024B984(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10024BCE8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10024BA38()
{
  result = qword_10044FD30;
  if (!qword_10044FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD30);
  }

  return result;
}

unint64_t sub_10024BA90()
{
  result = qword_10044FD38;
  if (!qword_10044FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD38);
  }

  return result;
}

uint64_t sub_10024BB28(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10024B6C4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10024BBE0()
{
  result = qword_10044FD50;
  if (!qword_10044FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD50);
  }

  return result;
}

unint64_t sub_10024BC38()
{
  result = qword_10044FD58;
  if (!qword_10044FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD58);
  }

  return result;
}

unint64_t sub_10024BC90()
{
  result = qword_10044FD60;
  if (!qword_10044FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD60);
  }

  return result;
}

unint64_t sub_10024BCE8()
{
  result = qword_10044FD68;
  if (!qword_10044FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD68);
  }

  return result;
}

uint64_t sub_10024BD3C()
{
  v0 = qword_1004474A8;

  return v0;
}

unint64_t sub_10024BD78()
{
  result = qword_10044FD70;
  if (!qword_10044FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD70);
  }

  return result;
}

uint64_t sub_10024BDCC()
{
  v0 = sub_10000321C(&qword_100453470, &qword_10034F2B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453478, &qword_10034F2B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10024B87C();
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

unint64_t sub_10024BF94()
{
  result = qword_10044FD78;
  if (!qword_10044FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD78);
  }

  return result;
}

unint64_t sub_10024BFEC()
{
  result = qword_10044FD80;
  if (!qword_10044FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD80);
  }

  return result;
}

unint64_t sub_10024C044()
{
  result = qword_10044FD88;
  if (!qword_10044FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FD88);
  }

  return result;
}

uint64_t sub_10024C098()
{
  sub_1002D3470();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10024C180(uint64_t a1)
{
  v2 = sub_10024B87C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10024C1D0()
{
  result = qword_10044FDA0;
  if (!qword_10044FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FDA0);
  }

  return result;
}

uint64_t sub_10024C228(uint64_t a1)
{
  v2 = sub_10024C044();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10024C278()
{
  result = qword_10044FDA8;
  if (!qword_10044FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FDA8);
  }

  return result;
}

uint64_t sub_10024C310()
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
  sub_10001EDF0(v7, qword_10051FAF8);
  sub_10001EDB8(v7, qword_10051FAF8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10024C480@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10024C7F0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FB10);
  sub_10001EDB8(v0, qword_10051FB10);
  return sub_1002D88F0();
}

uint64_t sub_10024C854()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FB28);
  v1 = sub_10001EDB8(v0, qword_10051FB28);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10024C914()
{
  result = swift_getKeyPath();
  qword_10051FB40 = result;
  return result;
}

uint64_t sub_10024C93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453448, &qword_10034F270) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453450, &qword_10034F278);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10024CB1C, 0, 0);
}

uint64_t sub_10024CB1C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10024DCD4();
  *v4 = v0;
  v4[1] = sub_10024CC00;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70B0, 0, &type metadata for AccessibilityVoiceOverRowColumnEnabledEntity, v5);
}

uint64_t sub_10024CC00()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10024CCFC, 0, 0);
}

uint64_t sub_10024CCFC()
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
  if (qword_10043B5A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FB40;
  *(v0 + 288) = qword_10051FB40;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453430, &qword_100453438, &qword_10034F258);
  *v7 = v0;
  v7[1] = sub_10024CE60;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10024CE60()
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
    v6 = sub_10024CFD0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10024CFD0()
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
  sub_10024C278();
  sub_10024DEE8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10024D248()
{
  v0 = sub_10000321C(&qword_100453458, &qword_10034F280);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B5A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10024DEE8();
  sub_10002B6E4(&qword_100453460, &qword_100453458, &qword_10034F280);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10024D3BC(uint64_t *a1))(void *)
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

void (*sub_10024D430(uint64_t *a1))(void *)
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

unint64_t sub_10024D4CC()
{
  result = qword_10044FDC0;
  if (!qword_10044FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FDC0);
  }

  return result;
}

unint64_t sub_10024D524()
{
  result = qword_10044FDC8;
  if (!qword_10044FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FDC8);
  }

  return result;
}

uint64_t sub_10024D620(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10024C93C(a1, v5, v4);
}

uint64_t sub_10024D6CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CA068();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10024D714()
{
  result = qword_10044FDD0;
  if (!qword_10044FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FDD0);
  }

  return result;
}

unint64_t sub_10024D76C()
{
  result = qword_10044FDD8;
  if (!qword_10044FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FDD8);
  }

  return result;
}

uint64_t sub_10024D7E0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverSpeakTableColumnRowInformation];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10024D8A8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverSpeakTableColumnRowInformation:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10024D940(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10024D9D0, 0, 0);
}

uint64_t sub_10024D9D0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044FDB8, qword_1003385D8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453430, &qword_100453438, &qword_10034F258);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000002ALL;
  v2[1] = 0x8000000100375BE0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10024DB1C()
{
  result = qword_10044FDE0;
  if (!qword_10044FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FDE0);
  }

  return result;
}

uint64_t sub_10024DB70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10024E140();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10024DC24()
{
  result = qword_10044FDE8;
  if (!qword_10044FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FDE8);
  }

  return result;
}

unint64_t sub_10024DC7C()
{
  result = qword_10044FDF0;
  if (!qword_10044FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FDF0);
  }

  return result;
}

unint64_t sub_10024DCD4()
{
  result = qword_10044FDF8;
  if (!qword_10044FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FDF8);
  }

  return result;
}

uint64_t sub_10024DD28(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10024E140();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10024DDDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10024E140();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10024DE90()
{
  result = qword_10044FE00;
  if (!qword_10044FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FE00);
  }

  return result;
}

unint64_t sub_10024DEE8()
{
  result = qword_10044FE08;
  if (!qword_10044FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FE08);
  }

  return result;
}

uint64_t sub_10024DF80(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10024DB1C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10024E038()
{
  result = qword_10044FE20;
  if (!qword_10044FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FE20);
  }

  return result;
}

unint64_t sub_10024E090()
{
  result = qword_10044FE28;
  if (!qword_10044FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FE28);
  }

  return result;
}

unint64_t sub_10024E0E8()
{
  result = qword_10044FE30;
  if (!qword_10044FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FE30);
  }

  return result;
}

unint64_t sub_10024E140()
{
  result = qword_10044FE38;
  if (!qword_10044FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FE38);
  }

  return result;
}

uint64_t sub_10024E194()
{
  v0 = qword_1004474B8;

  return v0;
}

unint64_t sub_10024E1D0()
{
  result = qword_10044FE40;
  if (!qword_10044FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FE40);
  }

  return result;
}

uint64_t sub_10024E224()
{
  v0 = sub_10000321C(&qword_100453420, &qword_10034F238);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453428, &qword_10034F240);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10024DCD4();
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

unint64_t sub_10024E3EC()
{
  result = qword_10044FE48;
  if (!qword_10044FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FE48);
  }

  return result;
}

unint64_t sub_10024E444()
{
  result = qword_10044FE50;
  if (!qword_10044FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FE50);
  }

  return result;
}

unint64_t sub_10024E49C()
{
  result = qword_10044FE58;
  if (!qword_10044FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FE58);
  }

  return result;
}

uint64_t sub_10024E4F0()
{
  sub_1002D341C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10024E5D8(uint64_t a1)
{
  v2 = sub_10024DCD4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10024E628()
{
  result = qword_10044FE70;
  if (!qword_10044FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FE70);
  }

  return result;
}

uint64_t sub_10024E680(uint64_t a1)
{
  v2 = sub_10024E49C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10024E6D0()
{
  result = qword_10044FE78;
  if (!qword_10044FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FE78);
  }

  return result;
}

uint64_t sub_10024E768()
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
  sub_10001EDF0(v7, qword_10051FB48);
  sub_10001EDB8(v7, qword_10051FB48);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10024E8D8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10024EC48()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FB60);
  sub_10001EDB8(v0, qword_10051FB60);
  return sub_1002D88F0();
}

uint64_t sub_10024ECAC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FB78);
  v1 = sub_10001EDB8(v0, qword_10051FB78);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10024ED6C()
{
  result = swift_getKeyPath();
  qword_10051FB90 = result;
  return result;
}

uint64_t sub_10024ED94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004533F8, &qword_10034F1F8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453400, &qword_10034F200);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10024EF74, 0, 0);
}

uint64_t sub_10024EF74()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10025012C();
  *v4 = v0;
  v4[1] = sub_10024F058;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70B4, 0, &type metadata for AccessibilityVoiceOverSpeakConfirmationEnabledEntity, v5);
}

uint64_t sub_10024F058()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10024F154, 0, 0);
}

uint64_t sub_10024F154()
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
  if (qword_10043B5C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FB90;
  *(v0 + 288) = qword_10051FB90;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004533E0, &qword_1004533E8, &qword_10034F1E0);
  *v7 = v0;
  v7[1] = sub_10024F2B8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10024F2B8()
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
    v6 = sub_10024F428;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10024F428()
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
  sub_10024E6D0();
  sub_100250340();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10024F6A0()
{
  v0 = sub_10000321C(&qword_100453408, &qword_10034F208);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B5C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100250340();
  sub_10002B6E4(&qword_100453410, &qword_100453408, &qword_10034F208);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10024F814(uint64_t *a1))(void *)
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

void (*sub_10024F888(uint64_t *a1))(void *)
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

unint64_t sub_10024F924()
{
  result = qword_10044FE90;
  if (!qword_10044FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FE90);
  }

  return result;
}

unint64_t sub_10024F97C()
{
  result = qword_10044FE98;
  if (!qword_10044FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FE98);
  }

  return result;
}

uint64_t sub_10024FA78(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10024ED94(a1, v5, v4);
}

uint64_t sub_10024FB24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CA4D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10024FB6C()
{
  result = qword_10044FEA0;
  if (!qword_10044FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FEA0);
  }

  return result;
}

unint64_t sub_10024FBC4()
{
  result = qword_10044FEA8;
  if (!qword_10044FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FEA8);
  }

  return result;
}

uint64_t sub_10024FC38()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverSpeakActionConfirmation];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10024FD00()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverSpeakActionConfirmation:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10024FD98(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10024FE28, 0, 0);
}

uint64_t sub_10024FE28()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044FE88, qword_100338C10);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004533E0, &qword_1004533E8, &qword_10034F1E0);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000002DLL;
  v2[1] = 0x8000000100362240;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10024FF74()
{
  result = qword_10044FEB0;
  if (!qword_10044FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FEB0);
  }

  return result;
}

uint64_t sub_10024FFC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100250598();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10025007C()
{
  result = qword_10044FEB8;
  if (!qword_10044FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FEB8);
  }

  return result;
}

unint64_t sub_1002500D4()
{
  result = qword_10044FEC0;
  if (!qword_10044FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FEC0);
  }

  return result;
}

unint64_t sub_10025012C()
{
  result = qword_10044FEC8;
  if (!qword_10044FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FEC8);
  }

  return result;
}

uint64_t sub_100250180(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100250598();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100250234(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100250598();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1002502E8()
{
  result = qword_10044FED0;
  if (!qword_10044FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FED0);
  }

  return result;
}

unint64_t sub_100250340()
{
  result = qword_10044FED8;
  if (!qword_10044FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FED8);
  }

  return result;
}

uint64_t sub_1002503D8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10024FF74();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100250490()
{
  result = qword_10044FEF0;
  if (!qword_10044FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FEF0);
  }

  return result;
}

unint64_t sub_1002504E8()
{
  result = qword_10044FEF8;
  if (!qword_10044FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FEF8);
  }

  return result;
}

unint64_t sub_100250540()
{
  result = qword_10044FF00;
  if (!qword_10044FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF00);
  }

  return result;
}

unint64_t sub_100250598()
{
  result = qword_10044FF08;
  if (!qword_10044FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF08);
  }

  return result;
}

uint64_t sub_1002505EC()
{
  v0 = qword_1004474C8;

  return v0;
}

unint64_t sub_100250628()
{
  result = qword_10044FF10;
  if (!qword_10044FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF10);
  }

  return result;
}

uint64_t sub_10025067C()
{
  v0 = sub_10000321C(&qword_1004533D0, &qword_10034F1C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004533D8, &qword_10034F1C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10025012C();
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

unint64_t sub_100250844()
{
  result = qword_10044FF18;
  if (!qword_10044FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF18);
  }

  return result;
}

unint64_t sub_10025089C()
{
  result = qword_10044FF20;
  if (!qword_10044FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF20);
  }

  return result;
}

unint64_t sub_1002508F4()
{
  result = qword_10044FF28;
  if (!qword_10044FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF28);
  }

  return result;
}

uint64_t sub_100250948()
{
  sub_1002D33C8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100250A30(uint64_t a1)
{
  v2 = sub_10025012C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100250A80()
{
  result = qword_10044FF40;
  if (!qword_10044FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF40);
  }

  return result;
}

uint64_t sub_100250AD8(uint64_t a1)
{
  v2 = sub_1002508F4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100250B28()
{
  result = qword_10044FF48;
  if (!qword_10044FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF48);
  }

  return result;
}

uint64_t sub_100250BC0()
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
  sub_10001EDF0(v7, qword_10051FB98);
  sub_10001EDB8(v7, qword_10051FB98);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100250D30@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1002510A0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FBB0);
  sub_10001EDB8(v0, qword_10051FBB0);
  return sub_1002D88F0();
}

uint64_t sub_100251104()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FBC8);
  v1 = sub_10001EDB8(v0, qword_10051FBC8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1002511C4()
{
  result = swift_getKeyPath();
  qword_10051FBE0 = result;
  return result;
}

uint64_t sub_1002511EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004533A8, &qword_10034F180) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004533B0, &qword_10034F188);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002513CC, 0, 0);
}

uint64_t sub_1002513CC()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100252584();
  *v4 = v0;
  v4[1] = sub_1002514B0;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70B8, 0, &type metadata for AccessibilityVoiceOverUseRingerSwitchEntity, v5);
}

uint64_t sub_1002514B0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1002515AC, 0, 0);
}

uint64_t sub_1002515AC()
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
  if (qword_10043B5E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FBE0;
  *(v0 + 288) = qword_10051FBE0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453390, &qword_100453398, &qword_10034F168);
  *v7 = v0;
  v7[1] = sub_100251710;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100251710()
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
    v6 = sub_100251880;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100251880()
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
  sub_100250B28();
  sub_100252798();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100251AF8()
{
  v0 = sub_10000321C(&qword_1004533B8, &qword_10034F190);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B5E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100252798();
  sub_10002B6E4(&qword_1004533C0, &qword_1004533B8, &qword_10034F190);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100251C6C(uint64_t *a1))(void *)
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

void (*sub_100251CE0(uint64_t *a1))(void *)
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

unint64_t sub_100251D7C()
{
  result = qword_10044FF60;
  if (!qword_10044FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF60);
  }

  return result;
}

unint64_t sub_100251DD4()
{
  result = qword_10044FF68;
  if (!qword_10044FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF68);
  }

  return result;
}

uint64_t sub_100251ED0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1002511EC(a1, v5, v4);
}

uint64_t sub_100251F7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CA938();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100251FC4()
{
  result = qword_10044FF70;
  if (!qword_10044FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF70);
  }

  return result;
}

unint64_t sub_10025201C()
{
  result = qword_10044FF78;
  if (!qword_10044FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF78);
  }

  return result;
}

uint64_t sub_100252090()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverUseRingerSwitchToControlNotificationOutput];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100252158()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverUseRingerSwitchToControlNotificationOutput:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002521F0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100252280, 0, 0);
}

uint64_t sub_100252280()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044FF58, qword_100339248);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453390, &qword_100453398, &qword_10034F168);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000004CLL;
  v2[1] = 0x800000010035D280;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1002523CC()
{
  result = qword_10044FF80;
  if (!qword_10044FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF80);
  }

  return result;
}

uint64_t sub_100252420(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002529F0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1002524D4()
{
  result = qword_10044FF88;
  if (!qword_10044FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF88);
  }

  return result;
}

unint64_t sub_10025252C()
{
  result = qword_10044FF90;
  if (!qword_10044FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF90);
  }

  return result;
}

unint64_t sub_100252584()
{
  result = qword_10044FF98;
  if (!qword_10044FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FF98);
  }

  return result;
}

uint64_t sub_1002525D8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002529F0();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10025268C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002529F0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100252740()
{
  result = qword_10044FFA0;
  if (!qword_10044FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FFA0);
  }

  return result;
}

unint64_t sub_100252798()
{
  result = qword_10044FFA8;
  if (!qword_10044FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FFA8);
  }

  return result;
}

uint64_t sub_100252830(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002523CC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1002528E8()
{
  result = qword_10044FFC0;
  if (!qword_10044FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FFC0);
  }

  return result;
}

unint64_t sub_100252940()
{
  result = qword_10044FFC8;
  if (!qword_10044FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FFC8);
  }

  return result;
}

unint64_t sub_100252998()
{
  result = qword_10044FFD0;
  if (!qword_10044FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FFD0);
  }

  return result;
}

unint64_t sub_1002529F0()
{
  result = qword_10044FFD8;
  if (!qword_10044FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FFD8);
  }

  return result;
}

uint64_t sub_100252A44()
{
  v0 = qword_1004474D8;

  return v0;
}

unint64_t sub_100252A80()
{
  result = qword_10044FFE0;
  if (!qword_10044FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FFE0);
  }

  return result;
}

uint64_t sub_100252AD4()
{
  v0 = sub_10000321C(&qword_100453380, &qword_10034F148);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453388, &qword_10034F150);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100252584();
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

unint64_t sub_100252C9C()
{
  result = qword_10044FFE8;
  if (!qword_10044FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FFE8);
  }

  return result;
}

unint64_t sub_100252CF4()
{
  result = qword_10044FFF0;
  if (!qword_10044FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FFF0);
  }

  return result;
}

unint64_t sub_100252D4C()
{
  result = qword_10044FFF8;
  if (!qword_10044FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044FFF8);
  }

  return result;
}

uint64_t sub_100252DA0()
{
  sub_1002D3374();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100252E88(uint64_t a1)
{
  v2 = sub_100252584();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100252ED8()
{
  result = qword_100450010;
  if (!qword_100450010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450010);
  }

  return result;
}

uint64_t sub_100252F30(uint64_t a1)
{
  v2 = sub_100252D4C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100252F80()
{
  result = qword_100450018;
  if (!qword_100450018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450018);
  }

  return result;
}

uint64_t sub_100253044@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1002533C0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FC00);
  sub_10001EDB8(v0, qword_10051FC00);
  return sub_1002D88F0();
}

uint64_t sub_100253424()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FC18);
  v1 = sub_10001EDB8(v0, qword_10051FC18);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1002534E4()
{
  result = swift_getKeyPath();
  qword_10051FC30 = result;
  return result;
}

uint64_t sub_10025350C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453358, &qword_10034F108) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v9 = *(v8 + 64) + 15;
  v3[29] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453360, &qword_10034F110);
  v3[30] = v10;
  v11 = *(v10 - 8);
  v3[31] = v11;
  v12 = *(v11 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1002536EC, 0, 0);
}

uint64_t sub_1002536EC()
{
  v1 = *(v0 + 176);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  v5 = sub_10025489C();
  *v4 = v0;
  v4[1] = sub_1002537D0;
  v6 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70BC, 0, &type metadata for AccessibilityVoiceOverSpeakingRateEntity, v5);
}

uint64_t sub_1002537D0()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_1002538CC, 0, 0);
}

uint64_t sub_1002538CC()
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
  if (qword_10043B600 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FC30;
  v0[37] = qword_10051FC30;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[38] = v7;
  v8 = sub_10002B6E4(&qword_100453330, &qword_100453338, &qword_10034F0E0);
  *v7 = v0;
  v7[1] = sub_100253A28;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v5, &type metadata for Double, v8);
}

uint64_t sub_100253A28()
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
    v6 = sub_100253B98;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100253B98()
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
  sub_100252F80();
  sub_100254AB0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100253E10()
{
  v0 = sub_10000321C(&qword_100453368, &qword_10034F118);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B600 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100254AB0();
  sub_10002B6E4(&qword_100453370, &qword_100453368, &qword_10034F118);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100253F84(uint64_t *a1))(void *)
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

void (*sub_100253FF8(uint64_t *a1))(void *)
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

unint64_t sub_100254094()
{
  result = qword_100450030;
  if (!qword_100450030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450030);
  }

  return result;
}

unint64_t sub_1002540EC()
{
  result = qword_100450038;
  if (!qword_100450038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450038);
  }

  return result;
}

uint64_t sub_1002541E8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10025350C(a1, v5, v4);
}

uint64_t sub_100254294@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CADA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1002542DC()
{
  result = qword_100450040;
  if (!qword_100450040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450040);
  }

  return result;
}

unint64_t sub_100254334()
{
  result = qword_100450048;
  if (!qword_100450048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450048);
  }

  return result;
}

uint64_t sub_1002543A8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 voiceOverSpeakingRate];
  v4 = v3;

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100254474()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  *&v3 = v1;
  [v2 setVoiceOverSpeakingRate:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10025450C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10025459C, 0, 0);
}

uint64_t sub_10025459C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450028, qword_100339880);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453330, &qword_100453338, &qword_10034F0E0);
  v3 = sub_1002D88B0();
  *v2 = 0xD000000000000022;
  v2[1] = 0x800000010035B630;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1002546E4()
{
  result = qword_100450050;
  if (!qword_100450050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450050);
  }

  return result;
}

uint64_t sub_100254738(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100254D08();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1002547EC()
{
  result = qword_100450058;
  if (!qword_100450058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450058);
  }

  return result;
}

unint64_t sub_100254844()
{
  result = qword_100450060;
  if (!qword_100450060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450060);
  }

  return result;
}

unint64_t sub_10025489C()
{
  result = qword_100450068;
  if (!qword_100450068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450068);
  }

  return result;
}

uint64_t sub_1002548F0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100254D08();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1002549A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100254D08();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100254A58()
{
  result = qword_100450070;
  if (!qword_100450070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450070);
  }

  return result;
}

unint64_t sub_100254AB0()
{
  result = qword_100450078;
  if (!qword_100450078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450078);
  }

  return result;
}

uint64_t sub_100254B48(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002546E4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100254C00()
{
  result = qword_100450090;
  if (!qword_100450090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450090);
  }

  return result;
}

unint64_t sub_100254C58()
{
  result = qword_100450098;
  if (!qword_100450098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450098);
  }

  return result;
}

unint64_t sub_100254CB0()
{
  result = qword_1004500A0;
  if (!qword_1004500A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004500A0);
  }

  return result;
}

unint64_t sub_100254D08()
{
  result = qword_1004500A8;
  if (!qword_1004500A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004500A8);
  }

  return result;
}

uint64_t sub_100254D5C()
{
  v0 = qword_1004474E8;

  return v0;
}

unint64_t sub_100254D98()
{
  result = qword_1004500B0;
  if (!qword_1004500B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004500B0);
  }

  return result;
}

uint64_t sub_100254DEC()
{
  v0 = sub_10000321C(&qword_100453320, &qword_10034F0C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453328, &qword_10034F0C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10025489C();
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

unint64_t sub_100254FB4()
{
  result = qword_1004500B8;
  if (!qword_1004500B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004500B8);
  }

  return result;
}

unint64_t sub_10025500C()
{
  result = qword_1004500C0;
  if (!qword_1004500C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004500C0);
  }

  return result;
}

unint64_t sub_100255064()
{
  result = qword_1004500C8;
  if (!qword_1004500C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004500C8);
  }

  return result;
}

uint64_t sub_1002550B8()
{
  sub_1002D3320();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002551A0(uint64_t a1)
{
  v2 = sub_10025489C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002551F0()
{
  result = qword_1004500E0;
  if (!qword_1004500E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004500E0);
  }

  return result;
}

uint64_t sub_100255248(uint64_t a1)
{
  v2 = sub_100255064();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100255298()
{
  result = qword_1004500E8;
  if (!qword_1004500E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004500E8);
  }

  return result;
}

uint64_t sub_100255358@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1002556D0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FC50);
  sub_10001EDB8(v0, qword_10051FC50);
  return sub_1002D88F0();
}

uint64_t sub_100255734()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FC68);
  v1 = sub_10001EDB8(v0, qword_10051FC68);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1002557F4()
{
  result = swift_getKeyPath();
  qword_10051FC80 = result;
  return result;
}

uint64_t sub_10025581C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004532F8, &qword_10034F080) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453300, &qword_10034F088);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002559FC, 0, 0);
}

uint64_t sub_1002559FC()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100256BAC();
  *v4 = v0;
  v4[1] = sub_100255AE0;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70C0, 0, &type metadata for AccessibilityVoiceOverPitchChangeEnabledEntity, v5);
}

uint64_t sub_100255AE0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100255BDC, 0, 0);
}

uint64_t sub_100255BDC()
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
  if (qword_10043B620 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FC80;
  *(v0 + 288) = qword_10051FC80;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004532E0, &qword_1004532E8, &qword_10034F068);
  *v7 = v0;
  v7[1] = sub_100255D40;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100255D40()
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
    v6 = sub_100255EB0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100255EB0()
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
  sub_100255298();
  sub_100256DC0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100256128()
{
  v0 = sub_10000321C(&qword_100453308, &qword_10034F090);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B620 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100256DC0();
  sub_10002B6E4(&qword_100453310, &qword_100453308, &qword_10034F090);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10025629C(uint64_t *a1))(void *)
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

void (*sub_100256310(uint64_t *a1))(void *)
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

unint64_t sub_1002563AC()
{
  result = qword_100450100;
  if (!qword_100450100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450100);
  }

  return result;
}

unint64_t sub_100256404()
{
  result = qword_100450108;
  if (!qword_100450108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450108);
  }

  return result;
}

uint64_t sub_100256500(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10025581C(a1, v5, v4);
}

uint64_t sub_1002565AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CB22C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1002565F4()
{
  result = qword_100450110;
  if (!qword_100450110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450110);
  }

  return result;
}

unint64_t sub_10025664C()
{
  result = qword_100450118;
  if (!qword_100450118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450118);
  }

  return result;
}

uint64_t sub_1002566C0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverPitchChangeEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100256788()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverPitchChangeEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100256820(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002568B0, 0, 0);
}

uint64_t sub_1002568B0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004500F8, qword_100339EB8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004532E0, &qword_1004532E8, &qword_10034F068);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000002ALL;
  v2[1] = 0x800000010035CDC0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1002569F4()
{
  result = qword_100450120;
  if (!qword_100450120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450120);
  }

  return result;
}

uint64_t sub_100256A48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100257018();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100256AFC()
{
  result = qword_100450128;
  if (!qword_100450128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450128);
  }

  return result;
}

unint64_t sub_100256B54()
{
  result = qword_100450130;
  if (!qword_100450130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450130);
  }

  return result;
}

unint64_t sub_100256BAC()
{
  result = qword_100450138;
  if (!qword_100450138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450138);
  }

  return result;
}

uint64_t sub_100256C00(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100257018();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100256CB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100257018();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100256D68()
{
  result = qword_100450140;
  if (!qword_100450140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450140);
  }

  return result;
}

unint64_t sub_100256DC0()
{
  result = qword_100450148;
  if (!qword_100450148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450148);
  }

  return result;
}

uint64_t sub_100256E58(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002569F4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100256F10()
{
  result = qword_100450160;
  if (!qword_100450160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450160);
  }

  return result;
}

unint64_t sub_100256F68()
{
  result = qword_100450168;
  if (!qword_100450168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450168);
  }

  return result;
}

unint64_t sub_100256FC0()
{
  result = qword_100450170;
  if (!qword_100450170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450170);
  }

  return result;
}

unint64_t sub_100257018()
{
  result = qword_100450178;
  if (!qword_100450178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450178);
  }

  return result;
}

uint64_t sub_10025706C()
{
  v0 = qword_1004474F8;

  return v0;
}

unint64_t sub_1002570A8()
{
  result = qword_100450180;
  if (!qword_100450180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450180);
  }

  return result;
}

uint64_t sub_1002570FC()
{
  v0 = sub_10000321C(&qword_1004532D0, &qword_10034F048);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004532D8, &qword_10034F050);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100256BAC();
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

unint64_t sub_1002572C4()
{
  result = qword_100450188;
  if (!qword_100450188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450188);
  }

  return result;
}

unint64_t sub_10025731C()
{
  result = qword_100450190;
  if (!qword_100450190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450190);
  }

  return result;
}

unint64_t sub_100257374()
{
  result = qword_100450198;
  if (!qword_100450198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450198);
  }

  return result;
}

uint64_t sub_1002573C8()
{
  sub_1002D32CC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002574B0(uint64_t a1)
{
  v2 = sub_100256BAC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100257500()
{
  result = qword_1004501B0;
  if (!qword_1004501B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004501B0);
  }

  return result;
}

uint64_t sub_100257558(uint64_t a1)
{
  v2 = sub_100257374();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1002575A8()
{
  result = qword_1004501B8;
  if (!qword_1004501B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004501B8);
  }

  return result;
}

uint64_t sub_10025764C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1002577B8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100257B34(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

uint64_t sub_100257BA0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v3, a2);
  v4 = sub_10001EDB8(v3, a2);
  sub_1002D8620();
  v5 = sub_1002D8630();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_100257C5C()
{
  result = swift_getKeyPath();
  qword_10051FCD0 = result;
  return result;
}

uint64_t sub_100257C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004532A8, &qword_10034F008) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004532B0, &qword_10034F010);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100257E64, 0, 0);
}

uint64_t sub_100257E64()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100259040();
  *v4 = v0;
  v4[1] = sub_100257F48;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70C4, 0, &type metadata for AccessibilityVoiceOverDetectLanguagesEnabledEntity, v5);
}

uint64_t sub_100257F48()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100258044, 0, 0);
}

uint64_t sub_100258044()
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
  if (qword_10043B640 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FCD0;
  *(v0 + 288) = qword_10051FCD0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453290, &qword_100453298, &qword_10034EFF0);
  *v7 = v0;
  v7[1] = sub_1002581A8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1002581A8()
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
    v6 = sub_100258318;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100258318()
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
  sub_1002575A8();
  sub_100259254();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100258590()
{
  v0 = sub_10000321C(&qword_1004532B8, &qword_10034F018);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B640 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100259254();
  sub_10002B6E4(&qword_1004532C0, &qword_1004532B8, &qword_10034F018);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100258704(uint64_t *a1))(void *)
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

void (*sub_100258778(uint64_t *a1))(void *)
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

unint64_t sub_100258814()
{
  result = qword_1004501D0;
  if (!qword_1004501D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004501D0);
  }

  return result;
}

unint64_t sub_10025886C()
{
  result = qword_1004501D8;
  if (!qword_1004501D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004501D8);
  }

  return result;
}

uint64_t sub_100258968(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100257C84(a1, v5, v4);
}

uint64_t sub_100258A14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CB694(&qword_1004532A0, &qword_10034EFF8, sub_100259040);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100258A80()
{
  result = qword_1004501E0;
  if (!qword_1004501E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004501E0);
  }

  return result;
}

unint64_t sub_100258AD8()
{
  result = qword_1004501E8;
  if (!qword_1004501E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004501E8);
  }

  return result;
}

uint64_t sub_100258B4C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverLanguageDetectionEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100258C14()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverLanguageDetectionEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100258CAC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100258D3C, 0, 0);
}

uint64_t sub_100258D3C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004501C8, qword_10033A4F0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453290, &qword_100453298, &qword_10034EFF0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000029;
  v2[1] = 0x800000010035E200;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100258E88()
{
  result = qword_1004501F0;
  if (!qword_1004501F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004501F0);
  }

  return result;
}

uint64_t sub_100258EDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002594AC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100258F90()
{
  result = qword_1004501F8;
  if (!qword_1004501F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004501F8);
  }

  return result;
}

unint64_t sub_100258FE8()
{
  result = qword_100450200;
  if (!qword_100450200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450200);
  }

  return result;
}

unint64_t sub_100259040()
{
  result = qword_100450208;
  if (!qword_100450208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450208);
  }

  return result;
}

uint64_t sub_100259094(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002594AC();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100259148(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002594AC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1002591FC()
{
  result = qword_100450210;
  if (!qword_100450210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450210);
  }

  return result;
}

unint64_t sub_100259254()
{
  result = qword_100450218;
  if (!qword_100450218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450218);
  }

  return result;
}

uint64_t sub_1002592EC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100258E88();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1002593A4()
{
  result = qword_100450230;
  if (!qword_100450230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450230);
  }

  return result;
}

unint64_t sub_1002593FC()
{
  result = qword_100450238;
  if (!qword_100450238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450238);
  }

  return result;
}

unint64_t sub_100259454()
{
  result = qword_100450240;
  if (!qword_100450240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450240);
  }

  return result;
}

unint64_t sub_1002594AC()
{
  result = qword_100450248;
  if (!qword_100450248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450248);
  }

  return result;
}

uint64_t sub_100259500()
{
  v0 = qword_100447508;

  return v0;
}

unint64_t sub_10025953C()
{
  result = qword_100450250;
  if (!qword_100450250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450250);
  }

  return result;
}

uint64_t sub_100259590()
{
  v0 = sub_10000321C(&qword_100453280, &qword_10034EFD0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453288, &qword_10034EFD8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100259040();
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

unint64_t sub_100259758()
{
  result = qword_100450258;
  if (!qword_100450258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450258);
  }

  return result;
}

unint64_t sub_1002597B0()
{
  result = qword_100450260;
  if (!qword_100450260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450260);
  }

  return result;
}

unint64_t sub_100259808()
{
  result = qword_100450268;
  if (!qword_100450268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450268);
  }

  return result;
}

uint64_t sub_10025985C()
{
  sub_1002D3278();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100259944(uint64_t a1)
{
  v2 = sub_100259040();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100259994()
{
  result = qword_100450280;
  if (!qword_100450280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450280);
  }

  return result;
}

uint64_t sub_1002599E8(uint64_t a1)
{
  v2 = sub_100259808();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100259A38()
{
  result = qword_100450288;
  if (!qword_100450288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450288);
  }

  return result;
}

uint64_t sub_100259AF8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100259E70()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051FCF0);
  sub_10001EDB8(v0, qword_10051FCF0);
  return sub_1002D88F0();
}

uint64_t sub_100259ED4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051FD08);
  v1 = sub_10001EDB8(v0, qword_10051FD08);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100259F94()
{
  result = swift_getKeyPath();
  qword_10051FD20 = result;
  return result;
}

uint64_t sub_100259FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100453258, &qword_10034EF90) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100453260, &qword_10034EF98);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10025A19C, 0, 0);
}

uint64_t sub_10025A19C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10025B34C();
  *v4 = v0;
  v4[1] = sub_10025A280;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D70C8, 0, &type metadata for AXSpeakHintsEnabledEntity, v5);
}

uint64_t sub_10025A280()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10025A37C, 0, 0);
}

uint64_t sub_10025A37C()
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
  if (qword_10043B660 != -1)
  {
    swift_once();
  }

  v5 = qword_10051FD20;
  *(v0 + 288) = qword_10051FD20;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100453240, &qword_100453248, &qword_10034EF78);
  *v7 = v0;
  v7[1] = sub_10025A4E0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10025A4E0()
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
    v6 = sub_10025A650;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10025A650()
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
  sub_100259A38();
  sub_10025B560();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10025A8C8()
{
  v0 = sub_10000321C(&qword_100453268, &qword_10034EFA0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B660 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10025B560();
  sub_10002B6E4(&qword_100453270, &qword_100453268, &qword_10034EFA0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10025AA3C(uint64_t *a1))(void *)
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

void (*sub_10025AAB0(uint64_t *a1))(void *)
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

unint64_t sub_10025AB4C()
{
  result = qword_1004502A0;
  if (!qword_1004502A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004502A0);
  }

  return result;
}

unint64_t sub_10025ABA4()
{
  result = qword_1004502A8;
  if (!qword_1004502A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004502A8);
  }

  return result;
}

uint64_t sub_10025ACA0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100259FBC(a1, v5, v4);
}

uint64_t sub_10025AD4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CBB18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10025AD94()
{
  result = qword_1004502B0;
  if (!qword_1004502B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004502B0);
  }

  return result;
}

unint64_t sub_10025ADEC()
{
  result = qword_1004502B8;
  if (!qword_1004502B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004502B8);
  }

  return result;
}

uint64_t sub_10025AE60()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 voiceOverHintsEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10025AF28()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverHintsEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10025AFC0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10025B050, 0, 0);
}

uint64_t sub_10025B050()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450298, qword_10033AB28);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100453240, &qword_100453248, &qword_10034EF78);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000025;
  v2[1] = 0x800000010035ED60;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10025B194()
{
  result = qword_1004502C0;
  if (!qword_1004502C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004502C0);
  }

  return result;
}

uint64_t sub_10025B1E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10025B7B8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10025B29C()
{
  result = qword_1004502C8;
  if (!qword_1004502C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004502C8);
  }

  return result;
}

unint64_t sub_10025B2F4()
{
  result = qword_1004502D0;
  if (!qword_1004502D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004502D0);
  }

  return result;
}

unint64_t sub_10025B34C()
{
  result = qword_1004502D8;
  if (!qword_1004502D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004502D8);
  }

  return result;
}

uint64_t sub_10025B3A0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10025B7B8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10025B454(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10025B7B8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10025B508()
{
  result = qword_1004502E0;
  if (!qword_1004502E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004502E0);
  }

  return result;
}

unint64_t sub_10025B560()
{
  result = qword_1004502E8;
  if (!qword_1004502E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004502E8);
  }

  return result;
}

uint64_t sub_10025B5F8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10025B194();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10025B6B0()
{
  result = qword_100450300;
  if (!qword_100450300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450300);
  }

  return result;
}

unint64_t sub_10025B708()
{
  result = qword_100450308;
  if (!qword_100450308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450308);
  }

  return result;
}

unint64_t sub_10025B760()
{
  result = qword_100450310;
  if (!qword_100450310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450310);
  }

  return result;
}

unint64_t sub_10025B7B8()
{
  result = qword_100450318;
  if (!qword_100450318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450318);
  }

  return result;
}

uint64_t sub_10025B80C()
{
  v0 = qword_100447518;

  return v0;
}

unint64_t sub_10025B848()
{
  result = qword_100450320;
  if (!qword_100450320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450320);
  }

  return result;
}

uint64_t sub_10025B89C()
{
  v0 = sub_10000321C(&qword_100453230, &qword_10034EF58);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100453238, &qword_10034EF60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10025B34C();
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

unint64_t sub_10025BA64()
{
  result = qword_100450328;
  if (!qword_100450328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450328);
  }

  return result;
}

unint64_t sub_10025BABC()
{
  result = qword_100450330;
  if (!qword_100450330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450330);
  }

  return result;
}

unint64_t sub_10025BB14()
{
  result = qword_100450338;
  if (!qword_100450338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450338);
  }

  return result;
}

uint64_t sub_10025BB68()
{
  sub_1002D3224();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10025BC50(uint64_t a1)
{
  v2 = sub_10025B34C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}