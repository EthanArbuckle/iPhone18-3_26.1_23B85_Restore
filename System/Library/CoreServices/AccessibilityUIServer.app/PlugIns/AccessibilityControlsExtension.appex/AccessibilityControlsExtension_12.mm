uint64_t sub_10017ABAC()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10017BD5C();
  *v4 = v0;
  v4[1] = sub_10017AC90;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F34, 0, &type metadata for AccessibilityStickyKeysEnabledEntity, v5);
}

uint64_t sub_10017AC90()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10017AD8C, 0, 0);
}

uint64_t sub_10017AD8C()
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
  if (qword_10043A9C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DD90;
  *(v0 + 288) = qword_10051DD90;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455288, &qword_100455290, &qword_100351F88);
  *v7 = v0;
  v7[1] = sub_10017AEF0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10017AEF0()
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
    v6 = sub_10017B060;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10017B060()
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
  sub_10017A448();
  sub_10017BF70();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10017B2D8()
{
  v0 = sub_10000321C(&qword_1004552B0, &qword_100351FB0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A9C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10017BF70();
  sub_10002B6E4(&qword_1004552B8, &qword_1004552B0, &qword_100351FB0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10017B44C(uint64_t *a1))(void *)
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

void (*sub_10017B4C0(uint64_t *a1))(void *)
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

unint64_t sub_10017B55C()
{
  result = qword_10044B128;
  if (!qword_10044B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B128);
  }

  return result;
}

unint64_t sub_10017B5B4()
{
  result = qword_10044B130;
  if (!qword_10044B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B130);
  }

  return result;
}

uint64_t sub_10017B6B0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10017A9CC(a1, v5, v4);
}

uint64_t sub_10017B75C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B0894();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10017B7A4()
{
  result = qword_10044B138;
  if (!qword_10044B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B138);
  }

  return result;
}

unint64_t sub_10017B7FC()
{
  result = qword_10044B140;
  if (!qword_10044B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B140);
  }

  return result;
}

uint64_t sub_10017B870()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 stickyKeysEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10017B938()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setStickyKeysEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10017B9D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10017BA60, 0, 0);
}

uint64_t sub_10017BA60()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044B120, qword_100313710);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455288, &qword_100455290, &qword_100351F88);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001DLL;
  v2[1] = 0x800000010037BB30;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10017BBA4()
{
  result = qword_10044B148;
  if (!qword_10044B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B148);
  }

  return result;
}

uint64_t sub_10017BBF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10017C1C8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10017BCAC()
{
  result = qword_10044B150;
  if (!qword_10044B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B150);
  }

  return result;
}

unint64_t sub_10017BD04()
{
  result = qword_10044B158;
  if (!qword_10044B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B158);
  }

  return result;
}

unint64_t sub_10017BD5C()
{
  result = qword_10044B160;
  if (!qword_10044B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B160);
  }

  return result;
}

uint64_t sub_10017BDB0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10017C1C8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10017BE64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10017C1C8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10017BF18()
{
  result = qword_10044B168;
  if (!qword_10044B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B168);
  }

  return result;
}

unint64_t sub_10017BF70()
{
  result = qword_10044B170;
  if (!qword_10044B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B170);
  }

  return result;
}

uint64_t sub_10017C008(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10017BBA4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10017C0C0()
{
  result = qword_10044B188;
  if (!qword_10044B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B188);
  }

  return result;
}

unint64_t sub_10017C118()
{
  result = qword_10044B190;
  if (!qword_10044B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B190);
  }

  return result;
}

unint64_t sub_10017C170()
{
  result = qword_10044B198;
  if (!qword_10044B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B198);
  }

  return result;
}

unint64_t sub_10017C1C8()
{
  result = qword_10044B1A0;
  if (!qword_10044B1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1A0);
  }

  return result;
}

uint64_t sub_10017C21C()
{
  v0 = qword_100446EC8;

  return v0;
}

unint64_t sub_10017C258()
{
  result = qword_10044B1A8;
  if (!qword_10044B1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1A8);
  }

  return result;
}

uint64_t sub_10017C2AC()
{
  v0 = sub_10000321C(&qword_100455278, &qword_100351F68);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455280, &qword_100351F70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10017BD5C();
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

unint64_t sub_10017C474()
{
  result = qword_10044B1B0;
  if (!qword_10044B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1B0);
  }

  return result;
}

unint64_t sub_10017C4CC()
{
  result = qword_10044B1B8;
  if (!qword_10044B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1B8);
  }

  return result;
}

unint64_t sub_10017C524()
{
  result = qword_10044B1C0;
  if (!qword_10044B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1C0);
  }

  return result;
}

uint64_t sub_10017C578()
{
  sub_1002D5348();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10017C660(uint64_t a1)
{
  v2 = sub_10017BD5C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10017C6B0()
{
  result = qword_10044B1D8;
  if (!qword_10044B1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1D8);
  }

  return result;
}

uint64_t sub_10017C708(uint64_t a1)
{
  v2 = sub_10017C524();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10017C758()
{
  result = qword_10044B1E0;
  if (!qword_10044B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1E0);
  }

  return result;
}

uint64_t sub_10017C7F0()
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
  sub_10001EDF0(v7, qword_10051DD98);
  sub_10001EDB8(v7, qword_10051DD98);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10017C960@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10017CCD0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DDB0);
  sub_10001EDB8(v0, qword_10051DDB0);
  return sub_1002D88F0();
}

uint64_t sub_10017CD34()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DDC8);
  v1 = sub_10001EDB8(v0, qword_10051DDC8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10017CDF4()
{
  result = swift_getKeyPath();
  qword_10051DDE0 = result;
  return result;
}

uint64_t sub_10017CE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455250, &qword_100351F28) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455258, &qword_100351F30);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10017CFFC, 0, 0);
}

uint64_t sub_10017CFFC()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10017E1B4();
  *v4 = v0;
  v4[1] = sub_10017D0E0;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F38, 0, &type metadata for AXStickyKeysShiftToggleEnabledEntity, v5);
}

uint64_t sub_10017D0E0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10017D1DC, 0, 0);
}

uint64_t sub_10017D1DC()
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
  if (qword_10043A9E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DDE0;
  *(v0 + 288) = qword_10051DDE0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455238, &qword_100455240, &qword_100351F10);
  *v7 = v0;
  v7[1] = sub_10017D340;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10017D340()
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
    v6 = sub_10017D4B0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10017D4B0()
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
  sub_10017C758();
  sub_10017E3C8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10017D728()
{
  v0 = sub_10000321C(&qword_100455260, &qword_100351F38);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A9E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10017E3C8();
  sub_10002B6E4(&qword_100455268, &qword_100455260, &qword_100351F38);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10017D89C(uint64_t *a1))(void *)
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

void (*sub_10017D910(uint64_t *a1))(void *)
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

unint64_t sub_10017D9AC()
{
  result = qword_10044B1F8;
  if (!qword_10044B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B1F8);
  }

  return result;
}

unint64_t sub_10017DA04()
{
  result = qword_10044B200;
  if (!qword_10044B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B200);
  }

  return result;
}

uint64_t sub_10017DB00(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10017CE1C(a1, v5, v4);
}

uint64_t sub_10017DBAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B0CFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10017DBF4()
{
  result = qword_10044B208;
  if (!qword_10044B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B208);
  }

  return result;
}

unint64_t sub_10017DC4C()
{
  result = qword_10044B210;
  if (!qword_10044B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B210);
  }

  return result;
}

uint64_t sub_10017DCC0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 stickyKeysShiftToggleEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10017DD88()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setStickyKeysShiftToggleEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10017DE20(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10017DEB0, 0, 0);
}

uint64_t sub_10017DEB0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044B1F0, qword_100313D48);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455238, &qword_100455240, &qword_100351F10);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000021;
  v2[1] = 0x800000010037BA00;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10017DFFC()
{
  result = qword_10044B218;
  if (!qword_10044B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B218);
  }

  return result;
}

uint64_t sub_10017E050(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10017E620();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10017E104()
{
  result = qword_10044B220;
  if (!qword_10044B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B220);
  }

  return result;
}

unint64_t sub_10017E15C()
{
  result = qword_10044B228;
  if (!qword_10044B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B228);
  }

  return result;
}

unint64_t sub_10017E1B4()
{
  result = qword_10044B230;
  if (!qword_10044B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B230);
  }

  return result;
}

uint64_t sub_10017E208(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10017E620();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10017E2BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10017E620();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10017E370()
{
  result = qword_10044B238;
  if (!qword_10044B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B238);
  }

  return result;
}

unint64_t sub_10017E3C8()
{
  result = qword_10044B240;
  if (!qword_10044B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B240);
  }

  return result;
}

uint64_t sub_10017E460(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10017DFFC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10017E518()
{
  result = qword_10044B258;
  if (!qword_10044B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B258);
  }

  return result;
}

unint64_t sub_10017E570()
{
  result = qword_10044B260;
  if (!qword_10044B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B260);
  }

  return result;
}

unint64_t sub_10017E5C8()
{
  result = qword_10044B268;
  if (!qword_10044B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B268);
  }

  return result;
}

unint64_t sub_10017E620()
{
  result = qword_10044B270;
  if (!qword_10044B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B270);
  }

  return result;
}

uint64_t sub_10017E674()
{
  v0 = qword_100446ED8;

  return v0;
}

unint64_t sub_10017E6B0()
{
  result = qword_10044B278;
  if (!qword_10044B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B278);
  }

  return result;
}

uint64_t sub_10017E704()
{
  v0 = sub_10000321C(&qword_100455228, &qword_100351EF0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455230, &qword_100351EF8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10017E1B4();
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

unint64_t sub_10017E8CC()
{
  result = qword_10044B280;
  if (!qword_10044B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B280);
  }

  return result;
}

unint64_t sub_10017E924()
{
  result = qword_10044B288;
  if (!qword_10044B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B288);
  }

  return result;
}

unint64_t sub_10017E97C()
{
  result = qword_10044B290;
  if (!qword_10044B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B290);
  }

  return result;
}

uint64_t sub_10017E9D0()
{
  sub_1002D52F4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10017EAB8(uint64_t a1)
{
  v2 = sub_10017E1B4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10017EB08()
{
  result = qword_10044B2A8;
  if (!qword_10044B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2A8);
  }

  return result;
}

uint64_t sub_10017EB60(uint64_t a1)
{
  v2 = sub_10017E97C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10017EBB0()
{
  result = qword_10044B2B0;
  if (!qword_10044B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2B0);
  }

  return result;
}

uint64_t sub_10017EC64@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10017EFF8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DE18);
  v1 = sub_10001EDB8(v0, qword_10051DE18);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10017F0B8()
{
  result = swift_getKeyPath();
  qword_10051DE30 = result;
  return result;
}

uint64_t sub_10017F0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455200, &qword_100351EB0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455208, &qword_100351EB8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10017F2C0, 0, 0);
}

uint64_t sub_10017F2C0()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100180464();
  *v4 = v0;
  v4[1] = sub_10017F3A4;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F3C, 0, &type metadata for AXStickyKeysBeepEnabledEntity, v5);
}

uint64_t sub_10017F3A4()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10017F4A0, 0, 0);
}

uint64_t sub_10017F4A0()
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
  if (qword_10043AA00 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DE30;
  *(v0 + 288) = qword_10051DE30;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004551E8, &qword_1004551F0, &qword_100351E98);
  *v7 = v0;
  v7[1] = sub_10017F604;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10017F604()
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
    v6 = sub_10017F774;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10017F774()
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
  sub_10017EBB0();
  sub_100180678();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10017F9EC()
{
  v0 = sub_10000321C(&qword_100455210, &qword_100351EC0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AA00 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100180678();
  sub_10002B6E4(&qword_100455218, &qword_100455210, &qword_100351EC0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10017FB60(uint64_t *a1))(void *)
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

void (*sub_10017FBD4(uint64_t *a1))(void *)
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

unint64_t sub_10017FC70()
{
  result = qword_10044B2C8;
  if (!qword_10044B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2C8);
  }

  return result;
}

unint64_t sub_10017FCC8()
{
  result = qword_10044B2D0;
  if (!qword_10044B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2D0);
  }

  return result;
}

uint64_t sub_10017FDC4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10017F0E0(a1, v5, v4);
}

uint64_t sub_10017FE70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B1164();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10017FEB8()
{
  result = qword_10044B2D8;
  if (!qword_10044B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2D8);
  }

  return result;
}

unint64_t sub_10017FF10()
{
  result = qword_10044B2E0;
  if (!qword_10044B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2E0);
  }

  return result;
}

uint64_t sub_10017FF84()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 stickyKeysBeepEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10018004C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setStickyKeysBeepEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001800E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100180174, 0, 0);
}

uint64_t sub_100180174()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044B2C0, qword_100314380);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004551E8, &qword_1004551F0, &qword_100351E98);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001BLL;
  v2[1] = 0x800000010037B970;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001802AC()
{
  result = qword_10044B2E8;
  if (!qword_10044B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2E8);
  }

  return result;
}

uint64_t sub_100180300(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001808D0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001803B4()
{
  result = qword_10044B2F0;
  if (!qword_10044B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2F0);
  }

  return result;
}

unint64_t sub_10018040C()
{
  result = qword_10044B2F8;
  if (!qword_10044B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B2F8);
  }

  return result;
}

unint64_t sub_100180464()
{
  result = qword_10044B300;
  if (!qword_10044B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B300);
  }

  return result;
}

uint64_t sub_1001804B8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001808D0();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10018056C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001808D0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100180620()
{
  result = qword_10044B308;
  if (!qword_10044B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B308);
  }

  return result;
}

unint64_t sub_100180678()
{
  result = qword_10044B310;
  if (!qword_10044B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B310);
  }

  return result;
}

uint64_t sub_100180710(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001802AC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001807C8()
{
  result = qword_10044B328;
  if (!qword_10044B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B328);
  }

  return result;
}

unint64_t sub_100180820()
{
  result = qword_10044B330;
  if (!qword_10044B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B330);
  }

  return result;
}

unint64_t sub_100180878()
{
  result = qword_10044B338;
  if (!qword_10044B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B338);
  }

  return result;
}

unint64_t sub_1001808D0()
{
  result = qword_10044B340;
  if (!qword_10044B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B340);
  }

  return result;
}

uint64_t sub_100180924()
{
  v0 = qword_100446EE8;

  return v0;
}

unint64_t sub_100180960()
{
  result = qword_10044B348;
  if (!qword_10044B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B348);
  }

  return result;
}

uint64_t sub_1001809B4()
{
  v0 = sub_10000321C(&qword_1004551D8, &qword_100351E78);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004551E0, &qword_100351E80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100180464();
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

unint64_t sub_100180B7C()
{
  result = qword_10044B350;
  if (!qword_10044B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B350);
  }

  return result;
}

unint64_t sub_100180BD4()
{
  result = qword_10044B358;
  if (!qword_10044B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B358);
  }

  return result;
}

unint64_t sub_100180C2C()
{
  result = qword_10044B360;
  if (!qword_10044B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B360);
  }

  return result;
}

uint64_t sub_100180C80()
{
  sub_1002D52A0();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100180D68(uint64_t a1)
{
  v2 = sub_100180464();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100180DB8()
{
  result = qword_10044B378;
  if (!qword_10044B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B378);
  }

  return result;
}

uint64_t sub_100180E10(uint64_t a1)
{
  v2 = sub_100180C2C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100180E60()
{
  result = qword_10044B380;
  if (!qword_10044B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B380);
  }

  return result;
}

uint64_t sub_100180F1C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100181290()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DE50);
  sub_10001EDB8(v0, qword_10051DE50);
  return sub_1002D88F0();
}

uint64_t sub_1001812F4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DE68);
  v1 = sub_10001EDB8(v0, qword_10051DE68);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001813B4()
{
  result = swift_getKeyPath();
  qword_10051DE80 = result;
  return result;
}

uint64_t sub_1001813DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004551B0, &qword_100351E38) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004551B8, &qword_100351E40);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001815BC, 0, 0);
}

uint64_t sub_1001815BC()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100182700();
  *v4 = v0;
  v4[1] = sub_1001816A0;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F40, 0, &type metadata for AccessibilityKeyRepeatEnabledEntity, v5);
}

uint64_t sub_1001816A0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10018179C, 0, 0);
}

uint64_t sub_10018179C()
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
  if (qword_10043AA20 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DE80;
  *(v0 + 288) = qword_10051DE80;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455198, &qword_1004551A0, &qword_100351E20);
  *v7 = v0;
  v7[1] = sub_100181900;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100181900()
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
    v6 = sub_100181A70;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100181A70()
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
  sub_100180E60();
  sub_100182914();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100181CE8()
{
  v0 = sub_10000321C(&qword_1004551C0, &qword_100351E48);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AA20 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100182914();
  sub_10002B6E4(&qword_1004551C8, &qword_1004551C0, &qword_100351E48);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100181E5C(uint64_t *a1))(void *)
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

void (*sub_100181ED0(uint64_t *a1))(void *)
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

unint64_t sub_100181F6C()
{
  result = qword_10044B398;
  if (!qword_10044B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B398);
  }

  return result;
}

unint64_t sub_100181FC4()
{
  result = qword_10044B3A0;
  if (!qword_10044B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3A0);
  }

  return result;
}

uint64_t sub_1001820C0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001813DC(a1, v5, v4);
}

uint64_t sub_10018216C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B15D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001821B4()
{
  result = qword_10044B3A8;
  if (!qword_10044B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3A8);
  }

  return result;
}

unint64_t sub_10018220C()
{
  result = qword_10044B3B0;
  if (!qword_10044B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3B0);
  }

  return result;
}

uint64_t sub_100182280()
{
  v1 = *(v0 + 16);
  *v1 = _AXSKeyRepeatEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100182314()
{
  v1 = *(v0 + 16);
  _AXSSetKeyRepeatEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100182378(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100182408, 0, 0);
}

uint64_t sub_100182408()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044B390, qword_1003149B8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455198, &qword_1004551A0, &qword_100351E20);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000025;
  v2[1] = 0x800000010035E230;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100182548()
{
  result = qword_10044B3B8;
  if (!qword_10044B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3B8);
  }

  return result;
}

uint64_t sub_10018259C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100182B6C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100182650()
{
  result = qword_10044B3C0;
  if (!qword_10044B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3C0);
  }

  return result;
}

unint64_t sub_1001826A8()
{
  result = qword_10044B3C8;
  if (!qword_10044B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3C8);
  }

  return result;
}

unint64_t sub_100182700()
{
  result = qword_10044B3D0;
  if (!qword_10044B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3D0);
  }

  return result;
}

uint64_t sub_100182754(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100182B6C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100182808(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100182B6C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001828BC()
{
  result = qword_10044B3D8;
  if (!qword_10044B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3D8);
  }

  return result;
}

unint64_t sub_100182914()
{
  result = qword_10044B3E0;
  if (!qword_10044B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3E0);
  }

  return result;
}

uint64_t sub_1001829AC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100182548();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100182A64()
{
  result = qword_10044B3F8;
  if (!qword_10044B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B3F8);
  }

  return result;
}

unint64_t sub_100182ABC()
{
  result = qword_10044B400;
  if (!qword_10044B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B400);
  }

  return result;
}

unint64_t sub_100182B14()
{
  result = qword_10044B408;
  if (!qword_10044B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B408);
  }

  return result;
}

unint64_t sub_100182B6C()
{
  result = qword_10044B410;
  if (!qword_10044B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B410);
  }

  return result;
}

uint64_t sub_100182BC0()
{
  v0 = qword_100446EF8;

  return v0;
}

unint64_t sub_100182BFC()
{
  result = qword_10044B418;
  if (!qword_10044B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B418);
  }

  return result;
}

uint64_t sub_100182C50()
{
  v0 = sub_10000321C(&qword_100455188, &qword_100351E00);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455190, &qword_100351E08);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100182700();
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

unint64_t sub_100182E18()
{
  result = qword_10044B420;
  if (!qword_10044B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B420);
  }

  return result;
}

unint64_t sub_100182E70()
{
  result = qword_10044B428;
  if (!qword_10044B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B428);
  }

  return result;
}

unint64_t sub_100182EC8()
{
  result = qword_10044B430;
  if (!qword_10044B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B430);
  }

  return result;
}

uint64_t sub_100182F1C()
{
  sub_1002D524C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100183004(uint64_t a1)
{
  v2 = sub_100182700();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100183054()
{
  result = qword_10044B448;
  if (!qword_10044B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B448);
  }

  return result;
}

uint64_t sub_1001830AC(uint64_t a1)
{
  v2 = sub_100182EC8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001830FC()
{
  result = qword_10044B450;
  if (!qword_10044B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B450);
  }

  return result;
}

uint64_t sub_1001831B8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10018352C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DEA0);
  sub_10001EDB8(v0, qword_10051DEA0);
  return sub_1002D88F0();
}

uint64_t sub_100183590()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DEB8);
  v1 = sub_10001EDB8(v0, qword_10051DEB8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100183650()
{
  result = swift_getKeyPath();
  qword_10051DED0 = result;
  return result;
}

uint64_t sub_100183678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455160, &qword_100351DC0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455168, &qword_100351DC8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100183858, 0, 0);
}

uint64_t sub_100183858()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10018499C();
  *v4 = v0;
  v4[1] = sub_10018393C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F44, 0, &type metadata for AccessibilitySlowKeysEnabledEntity, v5);
}

uint64_t sub_10018393C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100183A38, 0, 0);
}

uint64_t sub_100183A38()
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
  if (qword_10043AA40 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DED0;
  *(v0 + 288) = qword_10051DED0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455148, &qword_100455150, &qword_100351DA8);
  *v7 = v0;
  v7[1] = sub_100183B9C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100183B9C()
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
    v6 = sub_100183D0C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100183D0C()
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
  sub_1001830FC();
  sub_100184BB0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100183F84()
{
  v0 = sub_10000321C(&qword_100455170, &qword_100351DD0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AA40 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100184BB0();
  sub_10002B6E4(&qword_100455178, &qword_100455170, &qword_100351DD0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001840F8(uint64_t *a1))(void *)
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

void (*sub_10018416C(uint64_t *a1))(void *)
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

unint64_t sub_100184208()
{
  result = qword_10044B468;
  if (!qword_10044B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B468);
  }

  return result;
}

unint64_t sub_100184260()
{
  result = qword_10044B470;
  if (!qword_10044B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B470);
  }

  return result;
}

uint64_t sub_10018435C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100183678(a1, v5, v4);
}

uint64_t sub_100184408@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B1A38();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100184450()
{
  result = qword_10044B478;
  if (!qword_10044B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B478);
  }

  return result;
}

unint64_t sub_1001844A8()
{
  result = qword_10044B480;
  if (!qword_10044B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B480);
  }

  return result;
}

uint64_t sub_10018451C()
{
  v1 = *(v0 + 16);
  *v1 = _AXSSlowKeysEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001845B0()
{
  v1 = *(v0 + 16);
  _AXSSetSlowKeysEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100184614(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001846A4, 0, 0);
}

uint64_t sub_1001846A4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044B460, qword_100314FF0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455148, &qword_100455150, &qword_100351DA8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000039;
  v2[1] = 0x800000010035BAF0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001847E4()
{
  result = qword_10044B488;
  if (!qword_10044B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B488);
  }

  return result;
}

uint64_t sub_100184838(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100184E08();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001848EC()
{
  result = qword_10044B490;
  if (!qword_10044B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B490);
  }

  return result;
}

unint64_t sub_100184944()
{
  result = qword_10044B498;
  if (!qword_10044B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B498);
  }

  return result;
}

unint64_t sub_10018499C()
{
  result = qword_10044B4A0;
  if (!qword_10044B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4A0);
  }

  return result;
}

uint64_t sub_1001849F0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100184E08();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100184AA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100184E08();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100184B58()
{
  result = qword_10044B4A8;
  if (!qword_10044B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4A8);
  }

  return result;
}

unint64_t sub_100184BB0()
{
  result = qword_10044B4B0;
  if (!qword_10044B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4B0);
  }

  return result;
}

uint64_t sub_100184C48(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001847E4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100184D00()
{
  result = qword_10044B4C8;
  if (!qword_10044B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4C8);
  }

  return result;
}

unint64_t sub_100184D58()
{
  result = qword_10044B4D0;
  if (!qword_10044B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4D0);
  }

  return result;
}

unint64_t sub_100184DB0()
{
  result = qword_10044B4D8;
  if (!qword_10044B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4D8);
  }

  return result;
}

unint64_t sub_100184E08()
{
  result = qword_10044B4E0;
  if (!qword_10044B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4E0);
  }

  return result;
}

uint64_t sub_100184E5C()
{
  v0 = qword_100446F08;

  return v0;
}

unint64_t sub_100184E98()
{
  result = qword_10044B4E8;
  if (!qword_10044B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4E8);
  }

  return result;
}

uint64_t sub_100184EEC()
{
  v0 = sub_10000321C(&qword_100455138, &qword_100351D88);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455140, &qword_100351D90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10018499C();
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

unint64_t sub_1001850B4()
{
  result = qword_10044B4F0;
  if (!qword_10044B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4F0);
  }

  return result;
}

unint64_t sub_10018510C()
{
  result = qword_10044B4F8;
  if (!qword_10044B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B4F8);
  }

  return result;
}

unint64_t sub_100185164()
{
  result = qword_10044B500;
  if (!qword_10044B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B500);
  }

  return result;
}

uint64_t sub_1001851B8()
{
  sub_1002D51F8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001852A0(uint64_t a1)
{
  v2 = sub_10018499C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001852F0()
{
  result = qword_10044B518;
  if (!qword_10044B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B518);
  }

  return result;
}

uint64_t sub_100185348(uint64_t a1)
{
  v2 = sub_100185164();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100185398()
{
  result = qword_10044B520;
  if (!qword_10044B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B520);
  }

  return result;
}

uint64_t sub_100185430()
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
  sub_10001EDF0(v7, qword_10051DED8);
  sub_10001EDB8(v7, qword_10051DED8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001855A0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100185910()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DEF0);
  sub_10001EDB8(v0, qword_10051DEF0);
  return sub_1002D88F0();
}

uint64_t sub_100185974()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DF08);
  v1 = sub_10001EDB8(v0, qword_10051DF08);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100185A34()
{
  result = swift_getKeyPath();
  qword_10051DF20 = result;
  return result;
}

uint64_t sub_100185A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455110, &qword_100351D48) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455118, &qword_100351D50);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100185C3C, 0, 0);
}

uint64_t sub_100185C3C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100186D8C();
  *v4 = v0;
  v4[1] = sub_100185D20;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F48, 0, &type metadata for AccessibilityLowercaseKeyboardDisplayEnabledEntity, v5);
}

uint64_t sub_100185D20()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100185E1C, 0, 0);
}

uint64_t sub_100185E1C()
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
  if (qword_10043AA60 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DF20;
  *(v0 + 288) = qword_10051DF20;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004550F8, &qword_100455100, &qword_100351D30);
  *v7 = v0;
  v7[1] = sub_100185F80;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100185F80()
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
    v6 = sub_1001860F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001860F0()
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
  sub_100185398();
  sub_100186FA0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100186368()
{
  v0 = sub_10000321C(&qword_100455120, &qword_100351D58);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AA60 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100186FA0();
  sub_10002B6E4(&qword_100455128, &qword_100455120, &qword_100351D58);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001864DC(uint64_t *a1))(void *)
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

void (*sub_100186550(uint64_t *a1))(void *)
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

unint64_t sub_1001865EC()
{
  result = qword_10044B538;
  if (!qword_10044B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B538);
  }

  return result;
}

unint64_t sub_100186644()
{
  result = qword_10044B540;
  if (!qword_10044B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B540);
  }

  return result;
}

uint64_t sub_100186740(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100185A5C(a1, v5, v4);
}

uint64_t sub_1001867EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B1EA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100186834()
{
  result = qword_10044B548;
  if (!qword_10044B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B548);
  }

  return result;
}

unint64_t sub_10018688C()
{
  result = qword_10044B550;
  if (!qword_10044B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B550);
  }

  return result;
}

uint64_t sub_100186900()
{
  v1 = *(v0 + 16);
  *v1 = _AXSLowercaseKeyboardDisplayEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100186994()
{
  v1 = *(v0 + 16);
  _AXSSetLowercaseKeyboardDisplayEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001869F8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100186A88, 0, 0);
}

uint64_t sub_100186A88()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044B530, qword_100315628);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004550F8, &qword_100455100, &qword_100351D30);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001CLL;
  v2[1] = 0x800000010035BD40;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100186BD4()
{
  result = qword_10044B558;
  if (!qword_10044B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B558);
  }

  return result;
}

uint64_t sub_100186C28(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001871F8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100186CDC()
{
  result = qword_10044B560;
  if (!qword_10044B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B560);
  }

  return result;
}

unint64_t sub_100186D34()
{
  result = qword_10044B568;
  if (!qword_10044B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B568);
  }

  return result;
}

unint64_t sub_100186D8C()
{
  result = qword_10044B570;
  if (!qword_10044B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B570);
  }

  return result;
}

uint64_t sub_100186DE0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001871F8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100186E94(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001871F8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100186F48()
{
  result = qword_10044B578;
  if (!qword_10044B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B578);
  }

  return result;
}

unint64_t sub_100186FA0()
{
  result = qword_10044B580;
  if (!qword_10044B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B580);
  }

  return result;
}

uint64_t sub_100187038(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100186BD4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001870F0()
{
  result = qword_10044B598;
  if (!qword_10044B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B598);
  }

  return result;
}

unint64_t sub_100187148()
{
  result = qword_10044B5A0;
  if (!qword_10044B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5A0);
  }

  return result;
}

unint64_t sub_1001871A0()
{
  result = qword_10044B5A8;
  if (!qword_10044B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5A8);
  }

  return result;
}

unint64_t sub_1001871F8()
{
  result = qword_10044B5B0;
  if (!qword_10044B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5B0);
  }

  return result;
}

uint64_t sub_10018724C()
{
  v0 = qword_100446F18;

  return v0;
}

unint64_t sub_100187288()
{
  result = qword_10044B5B8;
  if (!qword_10044B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5B8);
  }

  return result;
}

uint64_t sub_1001872DC()
{
  v0 = sub_10000321C(&qword_1004550E8, &qword_100351D10);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004550F0, &qword_100351D18);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100186D8C();
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

unint64_t sub_1001874A4()
{
  result = qword_10044B5C0;
  if (!qword_10044B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5C0);
  }

  return result;
}

unint64_t sub_1001874F8()
{
  result = qword_10044B5C8;
  if (!qword_10044B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5C8);
  }

  return result;
}

unint64_t sub_100187550()
{
  result = qword_10044B5D0;
  if (!qword_10044B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5D0);
  }

  return result;
}

uint64_t sub_1001875A8()
{
  sub_1002D51A4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100187690(uint64_t a1)
{
  v2 = sub_100186D8C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001876E0()
{
  result = qword_10044B5E8;
  if (!qword_10044B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5E8);
  }

  return result;
}

uint64_t sub_100187738(uint64_t a1)
{
  v2 = sub_100187550();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100187788()
{
  result = qword_10044B5F0;
  if (!qword_10044B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B5F0);
  }

  return result;
}

uint64_t sub_100187848@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100187BC0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DF40);
  sub_10001EDB8(v0, qword_10051DF40);
  return sub_1002D88F0();
}

uint64_t sub_100187C24()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DF58);
  v1 = sub_10001EDB8(v0, qword_10051DF58);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100187CE4()
{
  result = swift_getKeyPath();
  qword_10051DF70 = result;
  return result;
}

uint64_t sub_100187D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004550C0, &qword_100351CD0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004550C8, &qword_100351CD8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100187EEC, 0, 0);
}

uint64_t sub_100187EEC()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10018909C();
  *v4 = v0;
  v4[1] = sub_100187FD0;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F4C, 0, &type metadata for AccessibilityHoverTypingEntity, v5);
}

uint64_t sub_100187FD0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001880CC, 0, 0);
}

uint64_t sub_1001880CC()
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
  if (qword_10043AA80 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DF70;
  *(v0 + 288) = qword_10051DF70;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004550A8, &qword_1004550B0, &qword_100351CB8);
  *v7 = v0;
  v7[1] = sub_100188230;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100188230()
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
    v6 = sub_1001883A0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001883A0()
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
  sub_100187788();
  sub_1001892B0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100188618()
{
  v0 = sub_10000321C(&qword_1004550D0, &qword_100351CE0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AA80 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001892B0();
  sub_10002B6E4(&qword_1004550D8, &qword_1004550D0, &qword_100351CE0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10018878C(uint64_t *a1))(void *)
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

void (*sub_100188800(uint64_t *a1))(void *)
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

unint64_t sub_10018889C()
{
  result = qword_10044B608;
  if (!qword_10044B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B608);
  }

  return result;
}

unint64_t sub_1001888F4()
{
  result = qword_10044B610;
  if (!qword_10044B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B610);
  }

  return result;
}

uint64_t sub_1001889F0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100187D0C(a1, v5, v4);
}

uint64_t sub_100188A9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B2308();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100188AE4()
{
  result = qword_10044B618;
  if (!qword_10044B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B618);
  }

  return result;
}

unint64_t sub_100188B3C()
{
  result = qword_10044B620;
  if (!qword_10044B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B620);
  }

  return result;
}

uint64_t sub_100188BB0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 hoverTextTypingEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100188C78()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setHoverTextTypingEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100188D10(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100188DA0, 0, 0);
}

uint64_t sub_100188DA0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044B600, qword_100315C60);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004550A8, &qword_1004550B0, &qword_100351CB8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000016;
  v2[1] = 0x800000010035ECE0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100188EE4()
{
  result = qword_10044B628;
  if (!qword_10044B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B628);
  }

  return result;
}

uint64_t sub_100188F38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100189508();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100188FEC()
{
  result = qword_10044B630;
  if (!qword_10044B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B630);
  }

  return result;
}

unint64_t sub_100189044()
{
  result = qword_10044B638;
  if (!qword_10044B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B638);
  }

  return result;
}

unint64_t sub_10018909C()
{
  result = qword_10044B640;
  if (!qword_10044B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B640);
  }

  return result;
}

uint64_t sub_1001890F0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100189508();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001891A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100189508();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100189258()
{
  result = qword_10044B648;
  if (!qword_10044B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B648);
  }

  return result;
}

unint64_t sub_1001892B0()
{
  result = qword_10044B650;
  if (!qword_10044B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B650);
  }

  return result;
}

uint64_t sub_100189348(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100188EE4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100189400()
{
  result = qword_10044B668;
  if (!qword_10044B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B668);
  }

  return result;
}

unint64_t sub_100189458()
{
  result = qword_10044B670;
  if (!qword_10044B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B670);
  }

  return result;
}

unint64_t sub_1001894B0()
{
  result = qword_10044B678;
  if (!qword_10044B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B678);
  }

  return result;
}

unint64_t sub_100189508()
{
  result = qword_10044B680;
  if (!qword_10044B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B680);
  }

  return result;
}

uint64_t sub_10018955C()
{
  v0 = qword_100446F28;

  return v0;
}

unint64_t sub_100189598()
{
  result = qword_10044B688;
  if (!qword_10044B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B688);
  }

  return result;
}

uint64_t sub_1001895EC()
{
  v0 = sub_10000321C(&qword_100455098, &qword_100351C98);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004550A0, &qword_100351CA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10018909C();
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

unint64_t sub_1001897B4()
{
  result = qword_10044B690;
  if (!qword_10044B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B690);
  }

  return result;
}

unint64_t sub_10018980C()
{
  result = qword_10044B698;
  if (!qword_10044B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B698);
  }

  return result;
}

unint64_t sub_100189864()
{
  result = qword_10044B6A0;
  if (!qword_10044B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6A0);
  }

  return result;
}

uint64_t sub_1001898B8()
{
  sub_1002D5150();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001899A0(uint64_t a1)
{
  v2 = sub_10018909C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001899F0()
{
  result = qword_10044B6B8;
  if (!qword_10044B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6B8);
  }

  return result;
}

uint64_t sub_100189A48(uint64_t a1)
{
  v2 = sub_100189864();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100189A98()
{
  result = qword_10044B6C0;
  if (!qword_10044B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6C0);
  }

  return result;
}

uint64_t sub_100189B30()
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
  sub_10001EDF0(v7, qword_10051DF78);
  sub_10001EDB8(v7, qword_10051DF78);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100189CA0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10018A010()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DF90);
  sub_10001EDB8(v0, qword_10051DF90);
  return sub_1002D88F0();
}

uint64_t sub_10018A074()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DFA8);
  v1 = sub_10001EDB8(v0, qword_10051DFA8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10018A134()
{
  result = swift_getKeyPath();
  qword_10051DFC0 = result;
  return result;
}

uint64_t sub_10018A15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455070, &qword_100351C58) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455078, &qword_100351C60);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10018A33C, 0, 0);
}

uint64_t sub_10018A33C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10018B48C();
  *v4 = v0;
  v4[1] = sub_10018A420;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F50, 0, &type metadata for AccessibilityLEDFlashForAlertsEnabledEntity, v5);
}

uint64_t sub_10018A420()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10018A51C, 0, 0);
}

uint64_t sub_10018A51C()
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
  if (qword_10043AAA0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DFC0;
  *(v0 + 288) = qword_10051DFC0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455058, &qword_100455060, &qword_100351C40);
  *v7 = v0;
  v7[1] = sub_10018A680;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10018A680()
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
    v6 = sub_10018A7F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10018A7F0()
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
  sub_100189A98();
  sub_10018B6A0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10018AA68()
{
  v0 = sub_10000321C(&qword_100455080, &qword_100351C68);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AAA0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10018B6A0();
  sub_10002B6E4(&qword_100455088, &qword_100455080, &qword_100351C68);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10018ABDC(uint64_t *a1))(void *)
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

void (*sub_10018AC50(uint64_t *a1))(void *)
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

unint64_t sub_10018ACEC()
{
  result = qword_10044B6D8;
  if (!qword_10044B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6D8);
  }

  return result;
}

unint64_t sub_10018AD44()
{
  result = qword_10044B6E0;
  if (!qword_10044B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6E0);
  }

  return result;
}

uint64_t sub_10018AE40(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10018A15C(a1, v5, v4);
}

uint64_t sub_10018AEEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B2770();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10018AF34()
{
  result = qword_10044B6E8;
  if (!qword_10044B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6E8);
  }

  return result;
}

unint64_t sub_10018AF8C()
{
  result = qword_10044B6F0;
  if (!qword_10044B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6F0);
  }

  return result;
}

uint64_t sub_10018B000()
{
  v1 = *(v0 + 16);
  *v1 = _AXSVisualAlertEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10018B094()
{
  v1 = *(v0 + 16);
  _AXSVisualAlertSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10018B0F8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10018B188, 0, 0);
}

uint64_t sub_10018B188()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044B6D0, qword_100316298);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455058, &qword_100455060, &qword_100351C40);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000026;
  v2[1] = 0x800000010037B4A0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10018B2D4()
{
  result = qword_10044B6F8;
  if (!qword_10044B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B6F8);
  }

  return result;
}

uint64_t sub_10018B328(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10018B8F8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10018B3DC()
{
  result = qword_10044B700;
  if (!qword_10044B700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B700);
  }

  return result;
}

unint64_t sub_10018B434()
{
  result = qword_10044B708;
  if (!qword_10044B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B708);
  }

  return result;
}

unint64_t sub_10018B48C()
{
  result = qword_10044B710;
  if (!qword_10044B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B710);
  }

  return result;
}

uint64_t sub_10018B4E0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10018B8F8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10018B594(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10018B8F8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10018B648()
{
  result = qword_10044B718;
  if (!qword_10044B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B718);
  }

  return result;
}

unint64_t sub_10018B6A0()
{
  result = qword_10044B720;
  if (!qword_10044B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B720);
  }

  return result;
}

uint64_t sub_10018B738(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10018B2D4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10018B7F0()
{
  result = qword_10044B738;
  if (!qword_10044B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B738);
  }

  return result;
}

unint64_t sub_10018B848()
{
  result = qword_10044B740;
  if (!qword_10044B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B740);
  }

  return result;
}

unint64_t sub_10018B8A0()
{
  result = qword_10044B748;
  if (!qword_10044B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B748);
  }

  return result;
}

unint64_t sub_10018B8F8()
{
  result = qword_10044B750;
  if (!qword_10044B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B750);
  }

  return result;
}

uint64_t sub_10018B94C()
{
  v0 = qword_100446F38;

  return v0;
}

unint64_t sub_10018B988()
{
  result = qword_10044B758;
  if (!qword_10044B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B758);
  }

  return result;
}

uint64_t sub_10018B9DC()
{
  v0 = sub_10000321C(&qword_100455048, &qword_100351C20);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455050, &qword_100351C28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10018B48C();
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

unint64_t sub_10018BBA4()
{
  result = qword_10044B760;
  if (!qword_10044B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B760);
  }

  return result;
}

unint64_t sub_10018BBFC()
{
  result = qword_10044B768;
  if (!qword_10044B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B768);
  }

  return result;
}

unint64_t sub_10018BC54()
{
  result = qword_10044B770;
  if (!qword_10044B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B770);
  }

  return result;
}

uint64_t sub_10018BCA8()
{
  sub_1002D50FC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10018BD90(uint64_t a1)
{
  v2 = sub_10018B48C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10018BDE0()
{
  result = qword_10044B788;
  if (!qword_10044B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B788);
  }

  return result;
}

uint64_t sub_10018BE38(uint64_t a1)
{
  v2 = sub_10018BC54();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10018BE88()
{
  result = qword_10044B790;
  if (!qword_10044B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B790);
  }

  return result;
}

uint64_t sub_10018BF20()
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
  sub_10001EDF0(v7, qword_10051DFC8);
  sub_10001EDB8(v7, qword_10051DFC8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10018C090()
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

uint64_t sub_10018C404()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DFE0);
  sub_10001EDB8(v0, qword_10051DFE0);
  return sub_1002D88F0();
}

uint64_t sub_10018C468()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DFF8);
  v1 = sub_10001EDB8(v0, qword_10051DFF8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10018C528()
{
  result = swift_getKeyPath();
  qword_10051E010 = result;
  return result;
}

uint64_t sub_10018C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455020, &qword_100351BE0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455028, &qword_100351BE8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10018C730, 0, 0);
}

uint64_t sub_10018C730()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10018D8E8();
  *v4 = v0;
  v4[1] = sub_10018C814;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F54, 0, &type metadata for AccessibilityLEDFlashForAlertsFlashWhileUnlockedEnabledEntity, v5);
}

uint64_t sub_10018C814()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10018C910, 0, 0);
}

uint64_t sub_10018C910()
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
  if (qword_10043AAC0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E010;
  *(v0 + 288) = qword_10051E010;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455008, &qword_100455010, &qword_100351BC8);
  *v7 = v0;
  v7[1] = sub_10018CA74;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10018CA74()
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
    v6 = sub_10018CBE4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10018CBE4()
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
  sub_10018BE88();
  sub_10018DAFC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10018CE5C()
{
  v0 = sub_10000321C(&qword_100455030, &qword_100351BF0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AAC0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10018DAFC();
  sub_10002B6E4(&qword_100455038, &qword_100455030, &qword_100351BF0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10018CFD0(uint64_t *a1))(void *)
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

void (*sub_10018D044(uint64_t *a1))(void *)
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

unint64_t sub_10018D0E0()
{
  result = qword_10044B7A8;
  if (!qword_10044B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7A8);
  }

  return result;
}

unint64_t sub_10018D138()
{
  result = qword_10044B7B0;
  if (!qword_10044B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7B0);
  }

  return result;
}

uint64_t sub_10018D234(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10018C550(a1, v5, v4);
}

uint64_t sub_10018D2E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B2BD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10018D328()
{
  result = qword_10044B7B8;
  if (!qword_10044B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7B8);
  }

  return result;
}

unint64_t sub_10018D380()
{
  result = qword_10044B7C0;
  if (!qword_10044B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7C0);
  }

  return result;
}

uint64_t sub_10018D3F4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 shouldFlashWhileUnlocked];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10018D4BC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setShouldFlashWhileUnlocked:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10018D554(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10018D5E4, 0, 0);
}

uint64_t sub_10018D5E4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044B7A0, qword_1003168D0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455008, &qword_100455010, &qword_100351BC8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000035;
  v2[1] = 0x800000010037B330;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10018D730()
{
  result = qword_10044B7C8;
  if (!qword_10044B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7C8);
  }

  return result;
}

uint64_t sub_10018D784(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10018DD54();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10018D838()
{
  result = qword_10044B7D0;
  if (!qword_10044B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7D0);
  }

  return result;
}

unint64_t sub_10018D890()
{
  result = qword_10044B7D8;
  if (!qword_10044B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7D8);
  }

  return result;
}

unint64_t sub_10018D8E8()
{
  result = qword_10044B7E0;
  if (!qword_10044B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7E0);
  }

  return result;
}

uint64_t sub_10018D93C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10018DD54();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10018D9F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10018DD54();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10018DAA4()
{
  result = qword_10044B7E8;
  if (!qword_10044B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7E8);
  }

  return result;
}

unint64_t sub_10018DAFC()
{
  result = qword_10044B7F0;
  if (!qword_10044B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B7F0);
  }

  return result;
}

uint64_t sub_10018DB94(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10018D730();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10018DC4C()
{
  result = qword_10044B808;
  if (!qword_10044B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B808);
  }

  return result;
}

unint64_t sub_10018DCA4()
{
  result = qword_10044B810;
  if (!qword_10044B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B810);
  }

  return result;
}

unint64_t sub_10018DCFC()
{
  result = qword_10044B818;
  if (!qword_10044B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B818);
  }

  return result;
}

unint64_t sub_10018DD54()
{
  result = qword_10044B820;
  if (!qword_10044B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B820);
  }

  return result;
}

uint64_t sub_10018DDA8()
{
  v0 = qword_100446F48;

  return v0;
}

unint64_t sub_10018DDE4()
{
  result = qword_10044B828;
  if (!qword_10044B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B828);
  }

  return result;
}

uint64_t sub_10018DE38()
{
  v0 = sub_10000321C(&qword_100454FF8, &qword_100351BA8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455000, &qword_100351BB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10018D8E8();
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

unint64_t sub_10018E000()
{
  result = qword_10044B830;
  if (!qword_10044B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B830);
  }

  return result;
}

unint64_t sub_10018E058()
{
  result = qword_10044B838;
  if (!qword_10044B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B838);
  }

  return result;
}

unint64_t sub_10018E0B0()
{
  result = qword_10044B840;
  if (!qword_10044B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B840);
  }

  return result;
}

uint64_t sub_10018E104()
{
  sub_1002D50A8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10018E1EC(uint64_t a1)
{
  v2 = sub_10018D8E8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10018E23C()
{
  result = qword_10044B858;
  if (!qword_10044B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B858);
  }

  return result;
}

uint64_t sub_10018E294(uint64_t a1)
{
  v2 = sub_10018E0B0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10018E2E4()
{
  result = qword_10044B860;
  if (!qword_10044B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B860);
  }

  return result;
}

uint64_t sub_10018E37C()
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
  sub_10001EDF0(v7, qword_10051E018);
  sub_10001EDB8(v7, qword_10051E018);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10018E4EC()
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

uint64_t sub_10018E860()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E030);
  sub_10001EDB8(v0, qword_10051E030);
  return sub_1002D88F0();
}

uint64_t sub_10018E8C4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E048);
  v1 = sub_10001EDB8(v0, qword_10051E048);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10018E984()
{
  result = swift_getKeyPath();
  qword_10051E060 = result;
  return result;
}

uint64_t sub_10018E9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454FD0, &qword_100351B68) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454FD8, &qword_100351B70);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10018EB8C, 0, 0);
}

uint64_t sub_10018EB8C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10018FD44();
  *v4 = v0;
  v4[1] = sub_10018EC70;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F58, 0, &type metadata for AccessibilityLEDFlashForAlertsFlashInSilentModeEnabledEntity, v5);
}

uint64_t sub_10018EC70()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10018ED6C, 0, 0);
}

uint64_t sub_10018ED6C()
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
  if (qword_10043AAE0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E060;
  *(v0 + 288) = qword_10051E060;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454FB8, &qword_100454FC0, &qword_100351B50);
  *v7 = v0;
  v7[1] = sub_10018EED0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10018EED0()
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
    v6 = sub_10018F040;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10018F040()
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
  sub_10018E2E4();
  sub_10018FF58();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10018F2B8()
{
  v0 = sub_10000321C(&qword_100454FE0, &qword_100351B78);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AAE0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10018FF58();
  sub_10002B6E4(&qword_100454FE8, &qword_100454FE0, &qword_100351B78);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10018F42C(uint64_t *a1))(void *)
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

void (*sub_10018F4A0(uint64_t *a1))(void *)
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

unint64_t sub_10018F53C()
{
  result = qword_10044B878;
  if (!qword_10044B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B878);
  }

  return result;
}

unint64_t sub_10018F594()
{
  result = qword_10044B880;
  if (!qword_10044B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B880);
  }

  return result;
}

uint64_t sub_10018F690(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10018E9AC(a1, v5, v4);
}

uint64_t sub_10018F73C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B3040();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10018F784()
{
  result = qword_10044B888;
  if (!qword_10044B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B888);
  }

  return result;
}

unint64_t sub_10018F7DC()
{
  result = qword_10044B890;
  if (!qword_10044B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B890);
  }

  return result;
}

uint64_t sub_10018F850()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 shouldFlashForAlertInSilentMode];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10018F918()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setShouldFlashForAlertInSilentMode:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10018F9B0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10018FA40, 0, 0);
}

uint64_t sub_10018FA40()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044B870, qword_100316F08);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454FB8, &qword_100454FC0, &qword_100351B50);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000036;
  v2[1] = 0x800000010037B1C0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10018FB8C()
{
  result = qword_10044B898;
  if (!qword_10044B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B898);
  }

  return result;
}

uint64_t sub_10018FBE0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001901B0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10018FC94()
{
  result = qword_10044B8A0;
  if (!qword_10044B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8A0);
  }

  return result;
}

unint64_t sub_10018FCEC()
{
  result = qword_10044B8A8;
  if (!qword_10044B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8A8);
  }

  return result;
}

unint64_t sub_10018FD44()
{
  result = qword_10044B8B0;
  if (!qword_10044B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8B0);
  }

  return result;
}

uint64_t sub_10018FD98(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001901B0();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10018FE4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001901B0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10018FF00()
{
  result = qword_10044B8B8;
  if (!qword_10044B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8B8);
  }

  return result;
}

unint64_t sub_10018FF58()
{
  result = qword_10044B8C0;
  if (!qword_10044B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8C0);
  }

  return result;
}

uint64_t sub_10018FFF0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10018FB8C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001900A8()
{
  result = qword_10044B8D8;
  if (!qword_10044B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8D8);
  }

  return result;
}

unint64_t sub_100190100()
{
  result = qword_10044B8E0;
  if (!qword_10044B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8E0);
  }

  return result;
}

unint64_t sub_100190158()
{
  result = qword_10044B8E8;
  if (!qword_10044B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8E8);
  }

  return result;
}

unint64_t sub_1001901B0()
{
  result = qword_10044B8F0;
  if (!qword_10044B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8F0);
  }

  return result;
}

uint64_t sub_100190204()
{
  v0 = qword_100446F58;

  return v0;
}

unint64_t sub_100190240()
{
  result = qword_10044B8F8;
  if (!qword_10044B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B8F8);
  }

  return result;
}

uint64_t sub_100190294()
{
  v0 = sub_10000321C(&qword_100454FA8, &qword_100351B30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454FB0, &qword_100351B38);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10018FD44();
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

unint64_t sub_10019045C()
{
  result = qword_10044B900;
  if (!qword_10044B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B900);
  }

  return result;
}

unint64_t sub_1001904B4()
{
  result = qword_10044B908;
  if (!qword_10044B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B908);
  }

  return result;
}

unint64_t sub_10019050C()
{
  result = qword_10044B910;
  if (!qword_10044B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B910);
  }

  return result;
}

uint64_t sub_100190560()
{
  sub_1002D5054();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100190648(uint64_t a1)
{
  v2 = sub_10018FD44();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100190698()
{
  result = qword_10044B928;
  if (!qword_10044B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B928);
  }

  return result;
}

uint64_t sub_1001906F0(uint64_t a1)
{
  v2 = sub_10019050C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100190740()
{
  result = qword_10044B930;
  if (!qword_10044B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B930);
  }

  return result;
}

uint64_t sub_1001907D8()
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
  sub_10001EDF0(v7, qword_10051E068);
  sub_10001EDB8(v7, qword_10051E068);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100190948@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100190CC4()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E080);
  sub_10001EDB8(v0, qword_10051E080);
  return sub_1002D88F0();
}

uint64_t sub_100190D28()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E098);
  v1 = sub_10001EDB8(v0, qword_10051E098);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100190DE8()
{
  result = swift_getKeyPath();
  qword_10051E0B0 = result;
  return result;
}

uint64_t sub_100190E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454F80, &qword_100351AF0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454F88, &qword_100351AF8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100190FF0, 0, 0);
}

uint64_t sub_100190FF0()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100192140();
  *v4 = v0;
  v4[1] = sub_1001910D4;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F5C, 0, &type metadata for AccessibilityLiveCaptionsEnabledEntity, v5);
}

uint64_t sub_1001910D4()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001911D0, 0, 0);
}

uint64_t sub_1001911D0()
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
  if (qword_10043AB00 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E0B0;
  *(v0 + 288) = qword_10051E0B0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454F68, &qword_100454F70, &qword_100351AD8);
  *v7 = v0;
  v7[1] = sub_100191334;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100191334()
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
    v6 = sub_1001914A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001914A4()
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
  sub_100190740();
  sub_100192354();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10019171C()
{
  v0 = sub_10000321C(&qword_100454F90, &qword_100351B00);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AB00 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100192354();
  sub_10002B6E4(&qword_100454F98, &qword_100454F90, &qword_100351B00);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100191890(uint64_t *a1))(void *)
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

void (*sub_100191904(uint64_t *a1))(void *)
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

unint64_t sub_1001919A0()
{
  result = qword_10044B948;
  if (!qword_10044B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B948);
  }

  return result;
}

unint64_t sub_1001919F8()
{
  result = qword_10044B950;
  if (!qword_10044B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B950);
  }

  return result;
}

uint64_t sub_100191AF4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100190E10(a1, v5, v4);
}

uint64_t sub_100191BA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B34A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100191BE8()
{
  result = qword_10044B958;
  if (!qword_10044B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B958);
  }

  return result;
}

unint64_t sub_100191C40()
{
  result = qword_10044B960;
  if (!qword_10044B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B960);
  }

  return result;
}

uint64_t sub_100191CB4()
{
  v1 = *(v0 + 16);
  *v1 = _AXSLiveTranscriptionEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100191D48()
{
  v1 = *(v0 + 16);
  _AXSLiveTranscriptionSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100191DAC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100191E3C, 0, 0);
}

uint64_t sub_100191E3C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044B940, qword_100317540);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454F68, &qword_100454F70, &qword_100351AD8);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000002BLL;
  v2[1] = 0x800000010035DC70;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100191F88()
{
  result = qword_10044B968;
  if (!qword_10044B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B968);
  }

  return result;
}

uint64_t sub_100191FDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001925AC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100192090()
{
  result = qword_10044B970;
  if (!qword_10044B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B970);
  }

  return result;
}

unint64_t sub_1001920E8()
{
  result = qword_10044B978;
  if (!qword_10044B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B978);
  }

  return result;
}

unint64_t sub_100192140()
{
  result = qword_10044B980;
  if (!qword_10044B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B980);
  }

  return result;
}

uint64_t sub_100192194(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001925AC();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100192248(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001925AC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001922FC()
{
  result = qword_10044B988;
  if (!qword_10044B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B988);
  }

  return result;
}

unint64_t sub_100192354()
{
  result = qword_10044B990;
  if (!qword_10044B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B990);
  }

  return result;
}

uint64_t sub_1001923EC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100191F88();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001924A4()
{
  result = qword_10044B9A8;
  if (!qword_10044B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9A8);
  }

  return result;
}

unint64_t sub_1001924FC()
{
  result = qword_10044B9B0;
  if (!qword_10044B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9B0);
  }

  return result;
}

unint64_t sub_100192554()
{
  result = qword_10044B9B8;
  if (!qword_10044B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9B8);
  }

  return result;
}

unint64_t sub_1001925AC()
{
  result = qword_10044B9C0;
  if (!qword_10044B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9C0);
  }

  return result;
}

uint64_t sub_100192600()
{
  v0 = qword_100446F68;

  return v0;
}

unint64_t sub_10019263C()
{
  result = qword_10044B9C8;
  if (!qword_10044B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9C8);
  }

  return result;
}

uint64_t sub_100192690()
{
  v0 = sub_10000321C(&qword_100454F58, &qword_100351AB8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454F60, &qword_100351AC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100192140();
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

unint64_t sub_100192858()
{
  result = qword_10044B9D0;
  if (!qword_10044B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9D0);
  }

  return result;
}

unint64_t sub_1001928B0()
{
  result = qword_10044B9D8;
  if (!qword_10044B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9D8);
  }

  return result;
}

unint64_t sub_100192908()
{
  result = qword_10044B9E0;
  if (!qword_10044B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9E0);
  }

  return result;
}

uint64_t sub_10019295C()
{
  sub_1002D5000();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100192A44(uint64_t a1)
{
  v2 = sub_100192140();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100192A94()
{
  result = qword_10044B9F8;
  if (!qword_10044B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B9F8);
  }

  return result;
}

uint64_t sub_100192AEC(uint64_t a1)
{
  v2 = sub_100192908();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100192B3C()
{
  result = qword_10044BA00;
  if (!qword_10044BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA00);
  }

  return result;
}

uint64_t sub_100192BD4()
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
  sub_10001EDF0(v7, qword_10051E0B8);
  sub_10001EDB8(v7, qword_10051E0B8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100192D44@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001930B8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E0D0);
  sub_10001EDB8(v0, qword_10051E0D0);
  return sub_1002D88F0();
}

uint64_t sub_10019311C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E0E8);
  v1 = sub_10001EDB8(v0, qword_10051E0E8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001931DC()
{
  result = swift_getKeyPath();
  qword_10051E100 = result;
  return result;
}

uint64_t sub_100193204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454F30, &qword_100351A78) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454F38, &qword_100351A80);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001933E4, 0, 0);
}

uint64_t sub_1001933E4()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100194534();
  *v4 = v0;
  v4[1] = sub_1001934C8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F60, 0, &type metadata for AccessibilityLiveCaptionsInFaceTimeEnabledEntity, v5);
}

uint64_t sub_1001934C8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001935C4, 0, 0);
}

uint64_t sub_1001935C4()
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
  if (qword_10043AB20 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E100;
  *(v0 + 288) = qword_10051E100;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454F18, &qword_100454F20, &qword_100351A60);
  *v7 = v0;
  v7[1] = sub_100193728;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100193728()
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
    v6 = sub_100193898;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100193898()
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
  sub_100192B3C();
  sub_100194748();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100193B10()
{
  v0 = sub_10000321C(&qword_100454F40, &qword_100351A88);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AB20 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100194748();
  sub_10002B6E4(&qword_100454F48, &qword_100454F40, &qword_100351A88);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100193C84(uint64_t *a1))(void *)
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

void (*sub_100193CF8(uint64_t *a1))(void *)
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

unint64_t sub_100193D94()
{
  result = qword_10044BA18;
  if (!qword_10044BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA18);
  }

  return result;
}

unint64_t sub_100193DEC()
{
  result = qword_10044BA20;
  if (!qword_10044BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA20);
  }

  return result;
}

uint64_t sub_100193EE8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100193204(a1, v5, v4);
}

uint64_t sub_100193F94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B3910();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100193FDC()
{
  result = qword_10044BA28;
  if (!qword_10044BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA28);
  }

  return result;
}

unint64_t sub_100194034()
{
  result = qword_10044BA30;
  if (!qword_10044BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA30);
  }

  return result;
}

uint64_t sub_1001940A8()
{
  v1 = *(v0 + 16);
  *v1 = _AXSFaceTimeCaptionsEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019413C()
{
  v1 = *(v0 + 16);
  _AXSSetFaceTimeCaptionsEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001941A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100194230, 0, 0);
}

uint64_t sub_100194230()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044BA10, qword_100317B78);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454F18, &qword_100454F20, &qword_100351A60);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000025;
  v2[1] = 0x800000010035F420;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10019437C()
{
  result = qword_10044BA38;
  if (!qword_10044BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA38);
  }

  return result;
}

uint64_t sub_1001943D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001949A0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100194484()
{
  result = qword_10044BA40;
  if (!qword_10044BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA40);
  }

  return result;
}

unint64_t sub_1001944DC()
{
  result = qword_10044BA48;
  if (!qword_10044BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA48);
  }

  return result;
}

unint64_t sub_100194534()
{
  result = qword_10044BA50;
  if (!qword_10044BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA50);
  }

  return result;
}

uint64_t sub_100194588(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001949A0();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10019463C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001949A0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001946F0()
{
  result = qword_10044BA58;
  if (!qword_10044BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA58);
  }

  return result;
}

unint64_t sub_100194748()
{
  result = qword_10044BA60;
  if (!qword_10044BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA60);
  }

  return result;
}

uint64_t sub_1001947E0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10019437C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100194898()
{
  result = qword_10044BA78;
  if (!qword_10044BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA78);
  }

  return result;
}

unint64_t sub_1001948F0()
{
  result = qword_10044BA80;
  if (!qword_10044BA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA80);
  }

  return result;
}

unint64_t sub_100194948()
{
  result = qword_10044BA88;
  if (!qword_10044BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA88);
  }

  return result;
}

unint64_t sub_1001949A0()
{
  result = qword_10044BA90;
  if (!qword_10044BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA90);
  }

  return result;
}

uint64_t sub_1001949F4()
{
  v0 = qword_100446F78;

  return v0;
}

unint64_t sub_100194A30()
{
  result = qword_10044BA98;
  if (!qword_10044BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BA98);
  }

  return result;
}

uint64_t sub_100194A84()
{
  v0 = sub_10000321C(&qword_100454F08, &qword_100351A40);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454F10, &qword_100351A48);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100194534();
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

unint64_t sub_100194C4C()
{
  result = qword_10044BAA0;
  if (!qword_10044BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAA0);
  }

  return result;
}

unint64_t sub_100194CA4()
{
  result = qword_10044BAA8;
  if (!qword_10044BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAA8);
  }

  return result;
}

unint64_t sub_100194CFC()
{
  result = qword_10044BAB0;
  if (!qword_10044BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAB0);
  }

  return result;
}

uint64_t sub_100194D50()
{
  sub_1002D4FAC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100194E38(uint64_t a1)
{
  v2 = sub_100194534();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100194E88()
{
  result = qword_10044BAC8;
  if (!qword_10044BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAC8);
  }

  return result;
}

uint64_t sub_100194EE0(uint64_t a1)
{
  v2 = sub_100194CFC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100194F30()
{
  result = qword_10044BAD0;
  if (!qword_10044BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAD0);
  }

  return result;
}

uint64_t sub_100194FF0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100195374()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E120);
  sub_10001EDB8(v0, qword_10051E120);
  return sub_1002D88F0();
}

uint64_t sub_1001953D8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E138);
  v1 = sub_10001EDB8(v0, qword_10051E138);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100195498()
{
  result = swift_getKeyPath();
  qword_10051E150 = result;
  return result;
}

uint64_t sub_1001954C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454EE0, &qword_100351A00) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454EE8, &qword_100351A08);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001956A0, 0, 0);
}

uint64_t sub_1001956A0()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100196898();
  *v4 = v0;
  v4[1] = sub_100195784;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F64, 0, &type metadata for AccessibilityLiveSpeechEnabledEntity, v5);
}

uint64_t sub_100195784()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100195880, 0, 0);
}

uint64_t sub_100195880()
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
  if (qword_10043AB40 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E150;
  *(v0 + 288) = qword_10051E150;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454EC8, &qword_100454ED0, &qword_1003519E8);
  *v7 = v0;
  v7[1] = sub_1001959E4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001959E4()
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
    v6 = sub_100195B54;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100195B54()
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
  sub_100194F30();
  sub_100196AAC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100195DCC()
{
  v0 = sub_10000321C(&qword_100454EF0, &qword_100351A10);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AB40 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100196AAC();
  sub_10002B6E4(&qword_100454EF8, &qword_100454EF0, &qword_100351A10);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100195F40(uint64_t *a1))(void *)
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

void (*sub_100195FB4(uint64_t *a1))(void *)
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

unint64_t sub_100196050()
{
  result = qword_10044BAE8;
  if (!qword_10044BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAE8);
  }

  return result;
}

unint64_t sub_1001960A8()
{
  result = qword_10044BAF0;
  if (!qword_10044BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAF0);
  }

  return result;
}

uint64_t sub_1001961A4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001954C0(a1, v5, v4);
}

uint64_t sub_100196250@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B3D78();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100196298()
{
  result = qword_10044BAF8;
  if (!qword_10044BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BAF8);
  }

  return result;
}

unint64_t sub_1001962F0()
{
  result = qword_10044BB00;
  if (!qword_10044BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB00);
  }

  return result;
}

uint64_t sub_100196364()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = _AXSTripleClickCopyOptions();
  v3 = _AXSTripleClickContainsOption();

  *v1 = v3 != 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100196444()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = _AXSTripleClickCopyOptions();
  v3 = _AXSTripleClickContainsOption();
  if (v1 == 1)
  {
    if (!v3)
    {
      _AXSTripleClickAddOption();
    }
  }

  else if (v3)
  {
    _AXSTripleClickRemoveOption();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10019650C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10019659C, 0, 0);
}

uint64_t sub_10019659C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044BAE0, qword_1003181B0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454EC8, &qword_100454ED0, &qword_1003519E8);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000011;
  v2[1] = 0x800000010035DDB0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001966E0()
{
  result = qword_10044BB08;
  if (!qword_10044BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB08);
  }

  return result;
}

uint64_t sub_100196734(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100196D04();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001967E8()
{
  result = qword_10044BB10;
  if (!qword_10044BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB10);
  }

  return result;
}

unint64_t sub_100196840()
{
  result = qword_10044BB18;
  if (!qword_10044BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB18);
  }

  return result;
}

unint64_t sub_100196898()
{
  result = qword_10044BB20;
  if (!qword_10044BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB20);
  }

  return result;
}

uint64_t sub_1001968EC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100196D04();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001969A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100196D04();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100196A54()
{
  result = qword_10044BB28;
  if (!qword_10044BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB28);
  }

  return result;
}

unint64_t sub_100196AAC()
{
  result = qword_10044BB30;
  if (!qword_10044BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB30);
  }

  return result;
}

uint64_t sub_100196B44(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001966E0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100196BFC()
{
  result = qword_10044BB48;
  if (!qword_10044BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB48);
  }

  return result;
}

unint64_t sub_100196C54()
{
  result = qword_10044BB50;
  if (!qword_10044BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB50);
  }

  return result;
}

unint64_t sub_100196CAC()
{
  result = qword_10044BB58;
  if (!qword_10044BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB58);
  }

  return result;
}

unint64_t sub_100196D04()
{
  result = qword_10044BB60;
  if (!qword_10044BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB60);
  }

  return result;
}

uint64_t sub_100196D58()
{
  v0 = qword_100446F88;

  return v0;
}

unint64_t sub_100196D94()
{
  result = qword_10044BB68;
  if (!qword_10044BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB68);
  }

  return result;
}

uint64_t sub_100196DE8()
{
  v0 = sub_10000321C(&qword_100454EB8, &qword_1003519C8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454EC0, &qword_1003519D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100196898();
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

unint64_t sub_100196FB0()
{
  result = qword_10044BB70;
  if (!qword_10044BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB70);
  }

  return result;
}

unint64_t sub_100197008()
{
  result = qword_10044BB78;
  if (!qword_10044BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB78);
  }

  return result;
}

unint64_t sub_100197060()
{
  result = qword_10044BB80;
  if (!qword_10044BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB80);
  }

  return result;
}

uint64_t sub_1001970B4()
{
  sub_1002D4F58();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10019719C(uint64_t a1)
{
  v2 = sub_100196898();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001971EC()
{
  result = qword_10044BB98;
  if (!qword_10044BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BB98);
  }

  return result;
}

uint64_t sub_100197244(uint64_t a1)
{
  v2 = sub_100197060();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100197294()
{
  result = qword_10044BBA0;
  if (!qword_10044BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBA0);
  }

  return result;
}

uint64_t sub_100197354@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001976D8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E170);
  sub_10001EDB8(v0, qword_10051E170);
  return sub_1002D88F0();
}

uint64_t sub_10019773C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E188);
  v1 = sub_10001EDB8(v0, qword_10051E188);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001977FC()
{
  result = swift_getKeyPath();
  qword_10051E1A0 = result;
  return result;
}

uint64_t sub_100197824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454E90, &qword_100351988) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454E98, &qword_100351990);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100197A04, 0, 0);
}

uint64_t sub_100197A04()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100198BC0();
  *v4 = v0;
  v4[1] = sub_100197AE8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F68, 0, &type metadata for AccessibilityMotionCuesEnabledEntity, v5);
}

uint64_t sub_100197AE8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100197BE4, 0, 0);
}

uint64_t sub_100197BE4()
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
  if (qword_10043AB60 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E1A0;
  *(v0 + 288) = qword_10051E1A0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454E78, &qword_100454E80, &qword_100351970);
  *v7 = v0;
  v7[1] = sub_100197D48;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100197D48()
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
    v6 = sub_100197EB8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100197EB8()
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
  sub_100197294();
  sub_100198DD4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100198130()
{
  v0 = sub_10000321C(&qword_100454EA0, &qword_100351998);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AB60 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100198DD4();
  sub_10002B6E4(&qword_100454EA8, &qword_100454EA0, &qword_100351998);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001982A4(uint64_t *a1))(void *)
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

void (*sub_100198318(uint64_t *a1))(void *)
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

unint64_t sub_1001983B4()
{
  result = qword_10044BBB8;
  if (!qword_10044BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBB8);
  }

  return result;
}

unint64_t sub_10019840C()
{
  result = qword_10044BBC0;
  if (!qword_10044BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBC0);
  }

  return result;
}

uint64_t sub_100198508(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100197824(a1, v5, v4);
}

uint64_t sub_1001985B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B41E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001985FC()
{
  result = qword_10044BBC8;
  if (!qword_10044BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBC8);
  }

  return result;
}

unint64_t sub_100198654()
{
  result = qword_10044BBD0;
  if (!qword_10044BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBD0);
  }

  return result;
}

uint64_t sub_1001986C8()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = _AXSMotionCuesEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019878C()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  _AXSSetMotionCuesEnabled();
  if (v1 == 1)
  {
    AXDeviceIsPad();
    _AXSSetMotionCuesMode();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100198834(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001988C4, 0, 0);
}

uint64_t sub_1001988C4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044BBB0, qword_1003187E8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454E78, &qword_100454E80, &qword_100351970);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000017;
  v2[1] = 0x800000010037ADB0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100198A08()
{
  result = qword_10044BBD8;
  if (!qword_10044BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBD8);
  }

  return result;
}

uint64_t sub_100198A5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10019902C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100198B10()
{
  result = qword_10044BBE0;
  if (!qword_10044BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBE0);
  }

  return result;
}

unint64_t sub_100198B68()
{
  result = qword_10044BBE8;
  if (!qword_10044BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBE8);
  }

  return result;
}

unint64_t sub_100198BC0()
{
  result = qword_10044BBF0;
  if (!qword_10044BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBF0);
  }

  return result;
}

uint64_t sub_100198C14(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10019902C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100198CC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10019902C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100198D7C()
{
  result = qword_10044BBF8;
  if (!qword_10044BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BBF8);
  }

  return result;
}

unint64_t sub_100198DD4()
{
  result = qword_10044BC00;
  if (!qword_10044BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC00);
  }

  return result;
}

uint64_t sub_100198E6C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100198A08();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100198F24()
{
  result = qword_10044BC18;
  if (!qword_10044BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC18);
  }

  return result;
}

unint64_t sub_100198F7C()
{
  result = qword_10044BC20;
  if (!qword_10044BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC20);
  }

  return result;
}

unint64_t sub_100198FD4()
{
  result = qword_10044BC28;
  if (!qword_10044BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC28);
  }

  return result;
}

unint64_t sub_10019902C()
{
  result = qword_10044BC30;
  if (!qword_10044BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC30);
  }

  return result;
}

uint64_t sub_100199080()
{
  v0 = qword_100446F98;

  return v0;
}

unint64_t sub_1001990BC()
{
  result = qword_10044BC38;
  if (!qword_10044BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC38);
  }

  return result;
}

uint64_t sub_100199110()
{
  v0 = sub_10000321C(&qword_100454E68, &qword_100351950);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454E70, &qword_100351958);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100198BC0();
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

unint64_t sub_1001992D8()
{
  result = qword_10044BC40;
  if (!qword_10044BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC40);
  }

  return result;
}

unint64_t sub_100199330()
{
  result = qword_10044BC48;
  if (!qword_10044BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC48);
  }

  return result;
}

unint64_t sub_100199388()
{
  result = qword_10044BC50;
  if (!qword_10044BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC50);
  }

  return result;
}

uint64_t sub_1001993DC()
{
  sub_1002D4F04();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001994C4(uint64_t a1)
{
  v2 = sub_100198BC0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100199514()
{
  result = qword_10044BC68;
  if (!qword_10044BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC68);
  }

  return result;
}

uint64_t sub_10019956C(uint64_t a1)
{
  v2 = sub_100199388();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001995BC()
{
  result = qword_10044BC70;
  if (!qword_10044BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC70);
  }

  return result;
}

uint64_t sub_100199680@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100199A08()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051E1C0);
  sub_10001EDB8(v0, qword_10051E1C0);
  return sub_1002D88F0();
}

uint64_t sub_100199A6C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051E1D8);
  v1 = sub_10001EDB8(v0, qword_10051E1D8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100199B2C()
{
  result = swift_getKeyPath();
  qword_10051E1F0 = result;
  return result;
}

uint64_t sub_100199B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454E40, &qword_100351910) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454E48, &qword_100351918);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100199D34, 0, 0);
}

uint64_t sub_100199D34()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10019AE80();
  *v4 = v0;
  v4[1] = sub_100199E18;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F6C, 0, &type metadata for AccessibilityReduceMotionEnabledEntity, v5);
}

uint64_t sub_100199E18()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100199F14, 0, 0);
}

uint64_t sub_100199F14()
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
  if (qword_10043AB80 != -1)
  {
    swift_once();
  }

  v5 = qword_10051E1F0;
  *(v0 + 288) = qword_10051E1F0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454E28, &qword_100454E30, &qword_1003518F8);
  *v7 = v0;
  v7[1] = sub_10019A078;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10019A078()
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
    v6 = sub_10019A1E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10019A1E8()
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
  sub_1001995BC();
  sub_10019B094();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10019A460()
{
  v0 = sub_10000321C(&qword_100454E50, &qword_100351920);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AB80 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10019B094();
  sub_10002B6E4(&qword_100454E58, &qword_100454E50, &qword_100351920);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10019A5D4(uint64_t *a1))(void *)
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

void (*sub_10019A648(uint64_t *a1))(void *)
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

unint64_t sub_10019A6E4()
{
  result = qword_10044BC88;
  if (!qword_10044BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC88);
  }

  return result;
}

unint64_t sub_10019A73C()
{
  result = qword_10044BC90;
  if (!qword_10044BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC90);
  }

  return result;
}

uint64_t sub_10019A838(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100199B54(a1, v5, v4);
}

uint64_t sub_10019A8E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B4648();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10019A92C()
{
  result = qword_10044BC98;
  if (!qword_10044BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BC98);
  }

  return result;
}

unint64_t sub_10019A984()
{
  result = qword_10044BCA0;
  if (!qword_10044BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BCA0);
  }

  return result;
}

uint64_t sub_10019A9F8()
{
  v1 = *(v0 + 16);
  *v1 = _AXSReduceMotionEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019AA8C()
{
  v1 = *(v0 + 16);
  _AXSSetReduceMotionEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019AAF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10019AB80, 0, 0);
}

uint64_t sub_10019AB80()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044BC80, qword_100318E20);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454E28, &qword_100454E30, &qword_1003518F8);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001ALL;
  v2[1] = 0x800000010035C530;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10019ACC8()
{
  result = qword_10044BCA8;
  if (!qword_10044BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BCA8);
  }

  return result;
}

uint64_t sub_10019AD1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10019B2EC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10019ADD0()
{
  result = qword_10044BCB0;
  if (!qword_10044BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BCB0);
  }

  return result;
}

unint64_t sub_10019AE28()
{
  result = qword_10044BCB8;
  if (!qword_10044BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044BCB8);
  }

  return result;
}