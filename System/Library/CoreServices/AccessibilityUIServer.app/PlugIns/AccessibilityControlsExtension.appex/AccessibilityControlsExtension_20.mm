unint64_t sub_10027C520()
{
  result = qword_100450EC8;
  if (!qword_100450EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450EC8);
  }

  return result;
}

unint64_t sub_10027C578()
{
  result = qword_100450ED0;
  if (!qword_100450ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450ED0);
  }

  return result;
}

uint64_t sub_10027C674(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10027B990(a1, v5, v4);
}

uint64_t sub_10027C720@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002CFCE0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10027C768()
{
  result = qword_100450ED8;
  if (!qword_100450ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450ED8);
  }

  return result;
}

unint64_t sub_10027C7C0()
{
  result = qword_100450EE0;
  if (!qword_100450EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450EE0);
  }

  return result;
}

uint64_t sub_10027C834()
{
  v1 = *(v0 + 16);
  *v1 = _AXSPointerScaleWithZoomLevelEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10027C8C8()
{
  v1 = *(v0 + 16);
  _AXSPointerScaleWithZoomLevelSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10027C92C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10027C9BC, 0, 0);
}

uint64_t sub_10027C9BC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450EC0, qword_100340870);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452D88, &qword_100452D90, &qword_10034E868);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000020;
  v2[1] = 0x8000000100374660;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10027CB08()
{
  result = qword_100450EE8;
  if (!qword_100450EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450EE8);
  }

  return result;
}

uint64_t sub_10027CB5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10027D12C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10027CC10()
{
  result = qword_100450EF0;
  if (!qword_100450EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450EF0);
  }

  return result;
}

unint64_t sub_10027CC68()
{
  result = qword_100450EF8;
  if (!qword_100450EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450EF8);
  }

  return result;
}

unint64_t sub_10027CCC0()
{
  result = qword_100450F00;
  if (!qword_100450F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450F00);
  }

  return result;
}

uint64_t sub_10027CD14(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10027D12C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10027CDC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10027D12C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10027CE7C()
{
  result = qword_100450F08;
  if (!qword_100450F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450F08);
  }

  return result;
}

unint64_t sub_10027CED4()
{
  result = qword_100450F10;
  if (!qword_100450F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450F10);
  }

  return result;
}

uint64_t sub_10027CF6C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10027CB08();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10027D024()
{
  result = qword_100450F28;
  if (!qword_100450F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450F28);
  }

  return result;
}

unint64_t sub_10027D07C()
{
  result = qword_100450F30;
  if (!qword_100450F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450F30);
  }

  return result;
}

unint64_t sub_10027D0D4()
{
  result = qword_100450F38;
  if (!qword_100450F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450F38);
  }

  return result;
}

unint64_t sub_10027D12C()
{
  result = qword_100450F40;
  if (!qword_100450F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450F40);
  }

  return result;
}

uint64_t sub_10027D180()
{
  v0 = qword_100447608;

  return v0;
}

unint64_t sub_10027D1BC()
{
  result = qword_100450F48;
  if (!qword_100450F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450F48);
  }

  return result;
}

uint64_t sub_10027D210()
{
  v0 = sub_10000321C(&qword_100452D78, &qword_10034E848);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452D80, &qword_10034E850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10027CCC0();
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

unint64_t sub_10027D3D8()
{
  result = qword_100450F50;
  if (!qword_100450F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450F50);
  }

  return result;
}

unint64_t sub_10027D430()
{
  result = qword_100450F58;
  if (!qword_100450F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450F58);
  }

  return result;
}

unint64_t sub_10027D488()
{
  result = qword_100450F60;
  if (!qword_100450F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450F60);
  }

  return result;
}

uint64_t sub_10027D4DC()
{
  sub_1002D2D38();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10027D5C4(uint64_t a1)
{
  v2 = sub_10027CCC0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10027D614()
{
  result = qword_100450F78;
  if (!qword_100450F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450F78);
  }

  return result;
}

uint64_t sub_10027D66C(uint64_t a1)
{
  v2 = sub_10027D488();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10027D6BC()
{
  result = qword_100450F80;
  if (!qword_100450F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450F80);
  }

  return result;
}

uint64_t sub_10027D780@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10027DAFC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_1005201F0);
  sub_10001EDB8(v0, qword_1005201F0);
  return sub_1002D88F0();
}

uint64_t sub_10027DB60()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_100520208);
  v1 = sub_10001EDB8(v0, qword_100520208);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10027DC20()
{
  result = swift_getKeyPath();
  qword_100520220 = result;
  return result;
}

uint64_t sub_10027DC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452D50, &qword_10034E808) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452D58, &qword_10034E810);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10027DE28, 0, 0);
}

uint64_t sub_10027DE28()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10027EFDC();
  *v4 = v0;
  v4[1] = sub_10027DF0C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7108, 0, &type metadata for AccessibilityZoomShowControllerEnabledEntity, v5);
}

uint64_t sub_10027DF0C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10027E008, 0, 0);
}

uint64_t sub_10027E008()
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
  if (qword_10043B860 != -1)
  {
    swift_once();
  }

  v5 = qword_100520220;
  *(v0 + 288) = qword_100520220;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100452D38, &qword_100452D40, &qword_10034E7F0);
  *v7 = v0;
  v7[1] = sub_10027E16C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10027E16C()
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
    v6 = sub_10027E2DC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10027E2DC()
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
  sub_10027D6BC();
  sub_10027F1F0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10027E554()
{
  v0 = sub_10000321C(&qword_100452D60, &qword_10034E818);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B860 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10027F1F0();
  sub_10002B6E4(&qword_100452D68, &qword_100452D60, &qword_10034E818);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10027E6C8(uint64_t *a1))(void *)
{
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

void (*sub_10027E73C(uint64_t *a1))(void *)
{
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

unint64_t sub_10027E7D8()
{
  result = qword_100450F98;
  if (!qword_100450F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450F98);
  }

  return result;
}

unint64_t sub_10027E830()
{
  result = qword_100450FA0;
  if (!qword_100450FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450FA0);
  }

  return result;
}

uint64_t sub_10027E92C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10027DC48(a1, v5, v4);
}

uint64_t sub_10027E9D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002D0148();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10027EA20()
{
  result = qword_100450FA8;
  if (!qword_100450FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450FA8);
  }

  return result;
}

unint64_t sub_10027EA78()
{
  result = qword_100450FB0;
  if (!qword_100450FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450FB0);
  }

  return result;
}

uint64_t sub_10027EAEC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomShouldShowSlug];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10027EBB4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomShouldShowSlug:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10027EC4C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10027ECDC, 0, 0);
}

uint64_t sub_10027ECDC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100450F90, qword_100340EA8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452D38, &qword_100452D40, &qword_10034E7F0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000028;
  v2[1] = 0x800000010035BDE0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10027EE24()
{
  result = qword_100450FB8;
  if (!qword_100450FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450FB8);
  }

  return result;
}

uint64_t sub_10027EE78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10027F448();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10027EF2C()
{
  result = qword_100450FC0;
  if (!qword_100450FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450FC0);
  }

  return result;
}

unint64_t sub_10027EF84()
{
  result = qword_100450FC8;
  if (!qword_100450FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450FC8);
  }

  return result;
}

unint64_t sub_10027EFDC()
{
  result = qword_100450FD0;
  if (!qword_100450FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450FD0);
  }

  return result;
}

uint64_t sub_10027F030(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10027F448();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10027F0E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10027F448();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10027F198()
{
  result = qword_100450FD8;
  if (!qword_100450FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450FD8);
  }

  return result;
}

unint64_t sub_10027F1F0()
{
  result = qword_100450FE0;
  if (!qword_100450FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450FE0);
  }

  return result;
}

uint64_t sub_10027F288(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10027EE24();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10027F340()
{
  result = qword_100450FF8;
  if (!qword_100450FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100450FF8);
  }

  return result;
}

unint64_t sub_10027F398()
{
  result = qword_100451000;
  if (!qword_100451000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451000);
  }

  return result;
}

unint64_t sub_10027F3F0()
{
  result = qword_100451008;
  if (!qword_100451008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451008);
  }

  return result;
}

unint64_t sub_10027F448()
{
  result = qword_100451010;
  if (!qword_100451010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451010);
  }

  return result;
}

uint64_t sub_10027F49C()
{
  v0 = qword_100447618;

  return v0;
}

unint64_t sub_10027F4D8()
{
  result = qword_100451018;
  if (!qword_100451018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451018);
  }

  return result;
}

uint64_t sub_10027F52C()
{
  v0 = sub_10000321C(&qword_100452D28, &qword_10034E7D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452D30, &qword_10034E7D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10027EFDC();
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

unint64_t sub_10027F6F4()
{
  result = qword_100451020;
  if (!qword_100451020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451020);
  }

  return result;
}

unint64_t sub_10027F74C()
{
  result = qword_100451028;
  if (!qword_100451028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451028);
  }

  return result;
}

unint64_t sub_10027F7A4()
{
  result = qword_100451030;
  if (!qword_100451030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451030);
  }

  return result;
}

uint64_t sub_10027F7F8()
{
  sub_1002D2CE4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10027F8E0(uint64_t a1)
{
  v2 = sub_10027EFDC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10027F930()
{
  result = qword_100451048;
  if (!qword_100451048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451048);
  }

  return result;
}

uint64_t sub_10027F988(uint64_t a1)
{
  v2 = sub_10027F7A4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10027F9D8()
{
  result = qword_100451050;
  if (!qword_100451050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451050);
  }

  return result;
}

uint64_t sub_10027FA70()
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
  sub_10001EDF0(v7, qword_100520228);
  sub_10001EDB8(v7, qword_100520228);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10027FBE0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10027FF50()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_100520240);
  sub_10001EDB8(v0, qword_100520240);
  return sub_1002D88F0();
}

uint64_t sub_10027FFB4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_100520258);
  v1 = sub_10001EDB8(v0, qword_100520258);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100280074()
{
  result = swift_getKeyPath();
  qword_100520270 = result;
  return result;
}

uint64_t sub_10028009C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452D00, &qword_10034E790) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452D08, &qword_10034E798);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10028027C, 0, 0);
}

uint64_t sub_10028027C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100281434();
  *v4 = v0;
  v4[1] = sub_100280360;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D710C, 0, &type metadata for AccessibilityZoomAdjustZoomLevelWithControllerEnabledEntity, v5);
}

uint64_t sub_100280360()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10028045C, 0, 0);
}

uint64_t sub_10028045C()
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
  if (qword_10043B880 != -1)
  {
    swift_once();
  }

  v5 = qword_100520270;
  *(v0 + 288) = qword_100520270;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100452CE8, &qword_100452CF0, &unk_10034E768);
  *v7 = v0;
  v7[1] = sub_1002805C0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1002805C0()
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
    v6 = sub_100280730;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100280730()
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
  sub_10027F9D8();
  sub_100281648();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002809A8()
{
  v0 = sub_10000321C(&qword_100452D10, &qword_10034E7A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B880 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100281648();
  sub_10002B6E4(&qword_100452D18, &qword_100452D10, &qword_10034E7A0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100280B1C(uint64_t *a1))(void *)
{
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

void (*sub_100280B90(uint64_t *a1))(void *)
{
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

unint64_t sub_100280C2C()
{
  result = qword_100451068;
  if (!qword_100451068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451068);
  }

  return result;
}

unint64_t sub_100280C84()
{
  result = qword_100451070;
  if (!qword_100451070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451070);
  }

  return result;
}

uint64_t sub_100280D80(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10028009C(a1, v5, v4);
}

uint64_t sub_100280E2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002D05B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100280E74()
{
  result = qword_100451078;
  if (!qword_100451078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451078);
  }

  return result;
}

unint64_t sub_100280ECC()
{
  result = qword_100451080;
  if (!qword_100451080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451080);
  }

  return result;
}

uint64_t sub_100280F40()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomSlugTapAndSlideToAdjustZoomLevelEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100281008()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomSlugTapAndSlideToAdjustZoomLevelEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002810A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100281130, 0, 0);
}

uint64_t sub_100281130()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100451060, qword_1003414E0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452CE8, &qword_100452CF0, &unk_10034E768);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003BLL;
  v2[1] = 0x8000000100359860;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10028127C()
{
  result = qword_100451088;
  if (!qword_100451088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451088);
  }

  return result;
}

uint64_t sub_1002812D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002818A0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100281384()
{
  result = qword_100451090;
  if (!qword_100451090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451090);
  }

  return result;
}

unint64_t sub_1002813DC()
{
  result = qword_100451098;
  if (!qword_100451098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451098);
  }

  return result;
}

unint64_t sub_100281434()
{
  result = qword_1004510A0;
  if (!qword_1004510A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004510A0);
  }

  return result;
}

uint64_t sub_100281488(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002818A0();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10028153C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002818A0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1002815F0()
{
  result = qword_1004510A8;
  if (!qword_1004510A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004510A8);
  }

  return result;
}

unint64_t sub_100281648()
{
  result = qword_1004510B0;
  if (!qword_1004510B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004510B0);
  }

  return result;
}

uint64_t sub_1002816E0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10028127C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100281798()
{
  result = qword_1004510C8;
  if (!qword_1004510C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004510C8);
  }

  return result;
}

unint64_t sub_1002817F0()
{
  result = qword_1004510D0;
  if (!qword_1004510D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004510D0);
  }

  return result;
}

unint64_t sub_100281848()
{
  result = qword_1004510D8;
  if (!qword_1004510D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004510D8);
  }

  return result;
}

unint64_t sub_1002818A0()
{
  result = qword_1004510E0;
  if (!qword_1004510E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004510E0);
  }

  return result;
}

uint64_t sub_1002818F4()
{
  v0 = qword_100447628;

  return v0;
}

unint64_t sub_100281930()
{
  result = qword_1004510E8;
  if (!qword_1004510E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004510E8);
  }

  return result;
}

uint64_t sub_100281984()
{
  v0 = sub_10000321C(&qword_100452CD8, &qword_10034E748);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452CE0, &qword_10034E750);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100281434();
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

unint64_t sub_100281B4C()
{
  result = qword_1004510F0;
  if (!qword_1004510F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004510F0);
  }

  return result;
}

unint64_t sub_100281BA4()
{
  result = qword_1004510F8;
  if (!qword_1004510F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004510F8);
  }

  return result;
}

unint64_t sub_100281BFC()
{
  result = qword_100451100;
  if (!qword_100451100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451100);
  }

  return result;
}

uint64_t sub_100281C50()
{
  sub_1002D2C90();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100281D38(uint64_t a1)
{
  v2 = sub_100281434();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100281D88()
{
  result = qword_100451118;
  if (!qword_100451118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451118);
  }

  return result;
}

uint64_t sub_100281DE0(uint64_t a1)
{
  v2 = sub_100281BFC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100281E30()
{
  result = qword_100451120;
  if (!qword_100451120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451120);
  }

  return result;
}

uint64_t sub_100281EC8()
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
  sub_10001EDF0(v7, qword_100520278);
  sub_10001EDB8(v7, qword_100520278);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100282038@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1002823A8()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_100520290);
  sub_10001EDB8(v0, qword_100520290);
  return sub_1002D88F0();
}

uint64_t sub_10028240C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_1005202A8);
  v1 = sub_10001EDB8(v0, qword_1005202A8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1002824CC()
{
  result = swift_getKeyPath();
  qword_1005202C0 = result;
  return result;
}

uint64_t sub_1002824F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452CB0, &qword_10034E708) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452CB8, &qword_10034E710);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1002826D4, 0, 0);
}

uint64_t sub_1002826D4()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100283850();
  *v4 = v0;
  v4[1] = sub_1002827B8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7110, 0, &type metadata for AccessibilityZoomControllerSingleTapActionEntity, v5);
}

uint64_t sub_1002827B8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1002828B4, 0, 0);
}

uint64_t sub_1002828B4()
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
  if (qword_10043B8A0 != -1)
  {
    swift_once();
  }

  v5 = qword_1005202C0;
  v0[36] = qword_1005202C0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100452C98, &qword_100452CA0, &qword_10034E6F0);
  *v7 = v0;
  v7[1] = sub_100282A10;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXZoomControllerTapActionAppEnum, v8);
}

uint64_t sub_100282A10()
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
    v6 = sub_100282B80;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100282B80()
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
  sub_100281E30();
  sub_100283A64();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100282DF8()
{
  v0 = sub_10000321C(&qword_100452CC0, &qword_10034E718);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B8A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100283A64();
  sub_10002B6E4(&qword_100452CC8, &qword_100452CC0, &qword_10034E718);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100282F6C(uint64_t *a1))(void *)
{
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

void (*sub_100282FE0(uint64_t *a1))(void *)
{
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

unint64_t sub_10028307C()
{
  result = qword_100451138;
  if (!qword_100451138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451138);
  }

  return result;
}

unint64_t sub_1002830D4()
{
  result = qword_100451140;
  if (!qword_100451140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451140);
  }

  return result;
}

uint64_t sub_1002831D0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1002824F4(a1, v5, v4);
}

uint64_t sub_10028327C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002D0A18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1002832C4()
{
  result = qword_100451148;
  if (!qword_100451148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451148);
  }

  return result;
}

uint64_t sub_10028333C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomSlugSingleTapAction];

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

uint64_t sub_100283418()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomSlugSingleTapAction:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002834B0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100283540, 0, 0);
}

uint64_t sub_100283540()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100451130, &qword_100341B18);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452C98, &qword_100452CA0, &qword_10034E6F0);
  sub_1000042EC();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000057;
  v2[1] = 0x80000001003599D0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100283698()
{
  result = qword_100451150;
  if (!qword_100451150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451150);
  }

  return result;
}

uint64_t sub_1002836EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100283CBC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1002837A0()
{
  result = qword_100451158;
  if (!qword_100451158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451158);
  }

  return result;
}

unint64_t sub_1002837F8()
{
  result = qword_100451160;
  if (!qword_100451160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451160);
  }

  return result;
}

unint64_t sub_100283850()
{
  result = qword_100451168;
  if (!qword_100451168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451168);
  }

  return result;
}

uint64_t sub_1002838A4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100283CBC();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100283958(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100283CBC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100283A0C()
{
  result = qword_100451170;
  if (!qword_100451170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451170);
  }

  return result;
}

unint64_t sub_100283A64()
{
  result = qword_100451178;
  if (!qword_100451178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451178);
  }

  return result;
}

uint64_t sub_100283AFC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100283698();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100283BB4()
{
  result = qword_100451190;
  if (!qword_100451190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451190);
  }

  return result;
}

unint64_t sub_100283C0C()
{
  result = qword_100451198;
  if (!qword_100451198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451198);
  }

  return result;
}

unint64_t sub_100283C64()
{
  result = qword_1004511A0;
  if (!qword_1004511A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004511A0);
  }

  return result;
}

unint64_t sub_100283CBC()
{
  result = qword_1004511A8;
  if (!qword_1004511A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004511A8);
  }

  return result;
}

uint64_t sub_100283D10()
{
  v0 = qword_100447638;

  return v0;
}

unint64_t sub_100283D4C()
{
  result = qword_1004511B0;
  if (!qword_1004511B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004511B0);
  }

  return result;
}

uint64_t sub_100283DA0()
{
  v0 = sub_10000321C(&qword_100452C88, &qword_10034E6D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452C90, &qword_10034E6D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100283850();
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

unint64_t sub_100283F68()
{
  result = qword_1004511B8;
  if (!qword_1004511B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004511B8);
  }

  return result;
}

unint64_t sub_100283FC0()
{
  result = qword_1004511C0;
  if (!qword_1004511C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004511C0);
  }

  return result;
}

unint64_t sub_100284018()
{
  result = qword_1004511C8;
  if (!qword_1004511C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004511C8);
  }

  return result;
}

uint64_t sub_10028406C()
{
  sub_1002D2C3C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100284154(uint64_t a1)
{
  v2 = sub_100283850();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002841A4()
{
  result = qword_1004511E0;
  if (!qword_1004511E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004511E0);
  }

  return result;
}

uint64_t sub_1002841FC(uint64_t a1)
{
  v2 = sub_100284018();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10028424C()
{
  result = qword_1004511E8;
  if (!qword_1004511E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004511E8);
  }

  return result;
}

uint64_t sub_1002842E4()
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
  sub_10001EDF0(v7, qword_1005202C8);
  sub_10001EDB8(v7, qword_1005202C8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100284454@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1002847C4()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_1005202E0);
  sub_10001EDB8(v0, qword_1005202E0);
  return sub_1002D88F0();
}

uint64_t sub_100284828()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_1005202F8);
  v1 = sub_10001EDB8(v0, qword_1005202F8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1002848E8()
{
  result = swift_getKeyPath();
  qword_100520310 = result;
  return result;
}

uint64_t sub_100284910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452C60, &qword_10034E690) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452C68, &qword_10034E698);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100284AF0, 0, 0);
}

uint64_t sub_100284AF0()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100285C6C();
  *v4 = v0;
  v4[1] = sub_100284BD4;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7114, 0, &type metadata for AccessibilityZoomControllerDoubleTapActionEntity, v5);
}

uint64_t sub_100284BD4()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100284CD0, 0, 0);
}

uint64_t sub_100284CD0()
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
  if (qword_10043B8C0 != -1)
  {
    swift_once();
  }

  v5 = qword_100520310;
  v0[36] = qword_100520310;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100452C48, &qword_100452C50, &qword_10034E678);
  *v7 = v0;
  v7[1] = sub_100284E2C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXZoomControllerTapActionAppEnum, v8);
}

uint64_t sub_100284E2C()
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
    v6 = sub_100284F9C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100284F9C()
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
  sub_10028424C();
  sub_100285E80();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100285214()
{
  v0 = sub_10000321C(&qword_100452C70, &qword_10034E6A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B8C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100285E80();
  sub_10002B6E4(&qword_100452C78, &qword_100452C70, &qword_10034E6A0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100285388(uint64_t *a1))(void *)
{
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

void (*sub_1002853FC(uint64_t *a1))(void *)
{
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

unint64_t sub_100285498()
{
  result = qword_100451200;
  if (!qword_100451200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451200);
  }

  return result;
}

unint64_t sub_1002854F0()
{
  result = qword_100451208;
  if (!qword_100451208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451208);
  }

  return result;
}

uint64_t sub_1002855EC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100284910(a1, v5, v4);
}

uint64_t sub_100285698@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002D0E1C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1002856E0()
{
  result = qword_100451210;
  if (!qword_100451210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451210);
  }

  return result;
}

uint64_t sub_100285758()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomSlugDoubleTapAction];

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

uint64_t sub_100285834()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomSlugDoubleTapAction:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002858CC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10028595C, 0, 0);
}

uint64_t sub_10028595C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004511F8, &qword_100342150);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452C48, &qword_100452C50, &qword_10034E678);
  sub_1000042EC();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000057;
  v2[1] = 0x8000000100359A30;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100285AB4()
{
  result = qword_100451218;
  if (!qword_100451218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451218);
  }

  return result;
}

uint64_t sub_100285B08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002860D8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100285BBC()
{
  result = qword_100451220;
  if (!qword_100451220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451220);
  }

  return result;
}

unint64_t sub_100285C14()
{
  result = qword_100451228;
  if (!qword_100451228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451228);
  }

  return result;
}

unint64_t sub_100285C6C()
{
  result = qword_100451230;
  if (!qword_100451230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451230);
  }

  return result;
}

uint64_t sub_100285CC0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002860D8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100285D74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002860D8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100285E28()
{
  result = qword_100451238;
  if (!qword_100451238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451238);
  }

  return result;
}

unint64_t sub_100285E80()
{
  result = qword_100451240;
  if (!qword_100451240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451240);
  }

  return result;
}

uint64_t sub_100285F18(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100285AB4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100285FD0()
{
  result = qword_100451258;
  if (!qword_100451258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451258);
  }

  return result;
}

unint64_t sub_100286028()
{
  result = qword_100451260;
  if (!qword_100451260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451260);
  }

  return result;
}

unint64_t sub_100286080()
{
  result = qword_100451268;
  if (!qword_100451268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451268);
  }

  return result;
}

unint64_t sub_1002860D8()
{
  result = qword_100451270;
  if (!qword_100451270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451270);
  }

  return result;
}

uint64_t sub_10028612C()
{
  v0 = qword_100447648;

  return v0;
}

unint64_t sub_100286168()
{
  result = qword_100451278;
  if (!qword_100451278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451278);
  }

  return result;
}

uint64_t sub_1002861BC()
{
  v0 = sub_10000321C(&qword_100452C38, &qword_10034E658);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452C40, &qword_10034E660);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100285C6C();
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

unint64_t sub_100286384()
{
  result = qword_100451280;
  if (!qword_100451280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451280);
  }

  return result;
}

unint64_t sub_1002863DC()
{
  result = qword_100451288;
  if (!qword_100451288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451288);
  }

  return result;
}

unint64_t sub_100286434()
{
  result = qword_100451290;
  if (!qword_100451290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451290);
  }

  return result;
}

uint64_t sub_100286488()
{
  sub_1002D2BE8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100286570(uint64_t a1)
{
  v2 = sub_100285C6C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002865C0()
{
  result = qword_1004512A8;
  if (!qword_1004512A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004512A8);
  }

  return result;
}

uint64_t sub_100286618(uint64_t a1)
{
  v2 = sub_100286434();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100286668()
{
  result = qword_1004512B0;
  if (!qword_1004512B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004512B0);
  }

  return result;
}

uint64_t sub_100286700()
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
  sub_10001EDF0(v7, qword_100520318);
  sub_10001EDB8(v7, qword_100520318);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100286870@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100286BE0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_100520330);
  sub_10001EDB8(v0, qword_100520330);
  return sub_1002D88F0();
}

uint64_t sub_100286C44()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_100520348);
  v1 = sub_10001EDB8(v0, qword_100520348);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100286D04()
{
  result = swift_getKeyPath();
  qword_100520360 = result;
  return result;
}

uint64_t sub_100286D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452C10, &qword_10034E618) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452C18, &qword_10034E620);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100286F0C, 0, 0);
}

uint64_t sub_100286F0C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100288088();
  *v4 = v0;
  v4[1] = sub_100286FF0;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7118, 0, &type metadata for AccessibilityZoomControllerTripleTapActionEntity, v5);
}

uint64_t sub_100286FF0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1002870EC, 0, 0);
}

uint64_t sub_1002870EC()
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
  if (qword_10043B8E0 != -1)
  {
    swift_once();
  }

  v5 = qword_100520360;
  v0[36] = qword_100520360;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100452BF0, &qword_100452BF8, &qword_10034E5F8);
  *v7 = v0;
  v7[1] = sub_100287248;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXZoomControllerTapActionAppEnum, v8);
}

uint64_t sub_100287248()
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
    v6 = sub_1002873B8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002873B8()
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
  sub_100286668();
  sub_10028829C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100287630()
{
  v0 = sub_10000321C(&qword_100452C20, &qword_10034E628);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B8E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10028829C();
  sub_10002B6E4(&qword_100452C28, &qword_100452C20, &qword_10034E628);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1002877A4(uint64_t *a1))(void *)
{
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

void (*sub_100287818(uint64_t *a1))(void *)
{
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

unint64_t sub_1002878B4()
{
  result = qword_1004512C8;
  if (!qword_1004512C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004512C8);
  }

  return result;
}

unint64_t sub_10028790C()
{
  result = qword_1004512D0;
  if (!qword_1004512D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004512D0);
  }

  return result;
}

uint64_t sub_100287A08(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100286D2C(a1, v5, v4);
}

uint64_t sub_100287AB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002D1220();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100287AFC()
{
  result = qword_1004512D8;
  if (!qword_1004512D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004512D8);
  }

  return result;
}

uint64_t sub_100287B74()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomSlugTripleTapAction];

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

uint64_t sub_100287C50()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomSlugTripleTapAction:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100287CE8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100287D78, 0, 0);
}

uint64_t sub_100287D78()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004512C0, &qword_100342788);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452BF0, &qword_100452BF8, &qword_10034E5F8);
  sub_1000042EC();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000057;
  v2[1] = 0x8000000100359970;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100287ED0()
{
  result = qword_1004512E0;
  if (!qword_1004512E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004512E0);
  }

  return result;
}

uint64_t sub_100287F24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002884F4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100287FD8()
{
  result = qword_1004512E8;
  if (!qword_1004512E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004512E8);
  }

  return result;
}

unint64_t sub_100288030()
{
  result = qword_1004512F0;
  if (!qword_1004512F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004512F0);
  }

  return result;
}

unint64_t sub_100288088()
{
  result = qword_1004512F8;
  if (!qword_1004512F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004512F8);
  }

  return result;
}

uint64_t sub_1002880DC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002884F4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100288190(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002884F4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100288244()
{
  result = qword_100451300;
  if (!qword_100451300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451300);
  }

  return result;
}

unint64_t sub_10028829C()
{
  result = qword_100451308;
  if (!qword_100451308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451308);
  }

  return result;
}

uint64_t sub_100288334(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100287ED0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1002883EC()
{
  result = qword_100451320;
  if (!qword_100451320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451320);
  }

  return result;
}

unint64_t sub_100288444()
{
  result = qword_100451328;
  if (!qword_100451328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451328);
  }

  return result;
}

unint64_t sub_10028849C()
{
  result = qword_100451330;
  if (!qword_100451330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451330);
  }

  return result;
}

unint64_t sub_1002884F4()
{
  result = qword_100451338;
  if (!qword_100451338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451338);
  }

  return result;
}

uint64_t sub_100288548()
{
  v0 = qword_100447658;

  return v0;
}

unint64_t sub_100288584()
{
  result = qword_100451340;
  if (!qword_100451340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451340);
  }

  return result;
}

uint64_t sub_1002885D8()
{
  v0 = sub_10000321C(&qword_100452BE0, &qword_10034E5D8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452BE8, &qword_10034E5E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100288088();
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

unint64_t sub_1002887A0()
{
  result = qword_100451348;
  if (!qword_100451348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451348);
  }

  return result;
}

unint64_t sub_1002887F8()
{
  result = qword_100451350;
  if (!qword_100451350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451350);
  }

  return result;
}

unint64_t sub_100288850()
{
  result = qword_100451358;
  if (!qword_100451358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451358);
  }

  return result;
}

uint64_t sub_1002888A4()
{
  sub_1002D2B94();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10028898C(uint64_t a1)
{
  v2 = sub_100288088();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002889DC()
{
  result = qword_100451370;
  if (!qword_100451370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451370);
  }

  return result;
}

uint64_t sub_100288A34(uint64_t a1)
{
  v2 = sub_100288850();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100288A84()
{
  result = qword_100451378;
  if (!qword_100451378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451378);
  }

  return result;
}

uint64_t sub_100288B1C()
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
  sub_10001EDF0(v7, qword_100520368);
  sub_10001EDB8(v7, qword_100520368);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100288C8C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100288FFC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_100520380);
  sub_10001EDB8(v0, qword_100520380);
  return sub_1002D88F0();
}

uint64_t sub_100289060()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_100520398);
  v1 = sub_10001EDB8(v0, qword_100520398);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100289120()
{
  result = swift_getKeyPath();
  qword_1005203B0 = result;
  return result;
}

uint64_t sub_100289148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452BB8, &qword_10034E598) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452BC0, &qword_10034E5A0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100289328, 0, 0);
}

uint64_t sub_100289328()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10028A4A8();
  *v4 = v0;
  v4[1] = sub_10028940C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D711C, 0, &type metadata for AccessibilityZoomControllerColorEntity, v5);
}

uint64_t sub_10028940C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100289508, 0, 0);
}

uint64_t sub_100289508()
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
  if (qword_10043B900 != -1)
  {
    swift_once();
  }

  v5 = qword_1005203B0;
  v0[36] = qword_1005203B0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100452B98, &qword_100452BA0, &qword_10034E578);
  *v7 = v0;
  v7[1] = sub_100289664;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXZoomControllerColorAppEnum, v8);
}

uint64_t sub_100289664()
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
    v6 = sub_1002897D4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002897D4()
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
  sub_100288A84();
  sub_10028A6BC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100289A4C()
{
  v0 = sub_10000321C(&qword_100452BC8, &qword_10034E5A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B900 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10028A6BC();
  sub_10002B6E4(&qword_100452BD0, &qword_100452BC8, &qword_10034E5A8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100289BC0(uint64_t *a1))(void *)
{
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

void (*sub_100289C34(uint64_t *a1))(void *)
{
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

unint64_t sub_100289CD0()
{
  result = qword_100451390;
  if (!qword_100451390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451390);
  }

  return result;
}

unint64_t sub_100289D28()
{
  result = qword_100451398;
  if (!qword_100451398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451398);
  }

  return result;
}

uint64_t sub_100289E24(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100289148(a1, v5, v4);
}

uint64_t sub_100289ED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002D1624();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100289F18()
{
  result = qword_1004513A0;
  if (!qword_1004513A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004513A0);
  }

  return result;
}

uint64_t sub_100289F90()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomControllerColor];

  v4 = sub_10001EE80(v3);
  if (v4 == 6)
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

uint64_t sub_10028A06C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setZoomControllerColor:v1 + 1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10028A104(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10028A194, 0, 0);
}

uint64_t sub_10028A194()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100451388, &qword_100342DC0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452B98, &qword_100452BA0, &qword_10034E578);
  sub_1000054D8();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000035;
  v2[1] = 0x80000001003601E0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10028A2F0()
{
  result = qword_1004513A8;
  if (!qword_1004513A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004513A8);
  }

  return result;
}

uint64_t sub_10028A344(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10028A914();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10028A3F8()
{
  result = qword_1004513B0;
  if (!qword_1004513B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004513B0);
  }

  return result;
}

unint64_t sub_10028A450()
{
  result = qword_1004513B8;
  if (!qword_1004513B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004513B8);
  }

  return result;
}

unint64_t sub_10028A4A8()
{
  result = qword_1004513C0;
  if (!qword_1004513C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004513C0);
  }

  return result;
}

uint64_t sub_10028A4FC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10028A914();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10028A5B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10028A914();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10028A664()
{
  result = qword_1004513C8;
  if (!qword_1004513C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004513C8);
  }

  return result;
}

unint64_t sub_10028A6BC()
{
  result = qword_1004513D0;
  if (!qword_1004513D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004513D0);
  }

  return result;
}

uint64_t sub_10028A754(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10028A2F0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10028A80C()
{
  result = qword_1004513E8;
  if (!qword_1004513E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004513E8);
  }

  return result;
}

unint64_t sub_10028A864()
{
  result = qword_1004513F0;
  if (!qword_1004513F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004513F0);
  }

  return result;
}

unint64_t sub_10028A8BC()
{
  result = qword_1004513F8;
  if (!qword_1004513F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004513F8);
  }

  return result;
}

unint64_t sub_10028A914()
{
  result = qword_100451400;
  if (!qword_100451400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451400);
  }

  return result;
}

uint64_t sub_10028A968()
{
  v0 = qword_100447668;

  return v0;
}

unint64_t sub_10028A9A4()
{
  result = qword_100451408;
  if (!qword_100451408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451408);
  }

  return result;
}

uint64_t sub_10028A9F8()
{
  v0 = sub_10000321C(&qword_100452B88, &qword_10034E558);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452B90, &qword_10034E560);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10028A4A8();
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

unint64_t sub_10028ABC0()
{
  result = qword_100451410;
  if (!qword_100451410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451410);
  }

  return result;
}

unint64_t sub_10028AC18()
{
  result = qword_100451418;
  if (!qword_100451418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451418);
  }

  return result;
}

unint64_t sub_10028AC70()
{
  result = qword_100451420;
  if (!qword_100451420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451420);
  }

  return result;
}

uint64_t sub_10028ACC4()
{
  sub_1002D2B40();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10028ADAC(uint64_t a1)
{
  v2 = sub_10028A4A8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10028ADFC()
{
  result = qword_100451438;
  if (!qword_100451438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451438);
  }

  return result;
}

uint64_t sub_10028AE54(uint64_t a1)
{
  v2 = sub_10028AC70();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10028AEA4()
{
  result = qword_100451440;
  if (!qword_100451440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451440);
  }

  return result;
}

uint64_t sub_10028AF7C()
{
  result = swift_getKeyPath();
  qword_100520400 = result;
  return result;
}

uint64_t sub_10028AFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452B60, &qword_10034E518) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452B68, &qword_10034E520);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10028B184, 0, 0);
}

uint64_t sub_10028B184()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10028C404();
  *v4 = v0;
  v4[1] = sub_10028B268;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7120, 0, &type metadata for AccessibilityZoomLensModeEntity, v5);
}

uint64_t sub_10028B268()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10028B364, 0, 0);
}

uint64_t sub_10028B364()
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
  if (qword_10043B920 != -1)
  {
    swift_once();
  }

  v5 = qword_100520400;
  *(v0 + 288) = qword_100520400;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100452B40, &qword_100452B48, &qword_10034E4F8);
  *v7 = v0;
  v7[1] = sub_10028B4C8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for AXZoomLensModeAppEnum, v8);
}

uint64_t sub_10028B4C8()
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
    v6 = sub_10028B638;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10028B638()
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
  sub_10028AEA4();
  sub_10028C618();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10028B8B0()
{
  v0 = sub_10000321C(&qword_100452B70, &qword_10034E528);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B920 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10028C618();
  sub_10002B6E4(&qword_100452B78, &qword_100452B70, &qword_10034E528);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10028BA24(uint64_t *a1))(void *)
{
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

void (*sub_10028BA98(uint64_t *a1))(void *)
{
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

unint64_t sub_10028BB34()
{
  result = qword_100451458;
  if (!qword_100451458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451458);
  }

  return result;
}

unint64_t sub_10028BB8C()
{
  result = qword_100451460;
  if (!qword_100451460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451460);
  }

  return result;
}

uint64_t sub_10028BC88(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10028AFA4(a1, v5, v4);
}

uint64_t sub_10028BD34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002D1A28();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10028BD7C()
{
  result = qword_100451468;
  if (!qword_100451468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451468);
  }

  return result;
}

uint64_t sub_10028BDF4()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 zoomPreferredCurrentLensMode];

  v3 = sub_1002D8D10();
  v5 = v4;

  v6._rawValue = &off_10041E380;
  v12._countAndFlagsBits = v3;
  v12._object = v5;
  v7 = sub_1002D8E30(v6, v12);

  v8 = 0;
  if (v7)
  {
    v8 = v7 == 1;
  }

  **(v0 + 16) = v8;
  v9 = *(v0 + 8);

  return v9();
}

id sub_10028BF0C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_1002D8D00();

  [v2 setZoomPreferredCurrentLensMode:v3];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = sub_1002D8D00();

    [v5 notifyZoomLensModeWasChangedInSettingsTo:v6];

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10028C064(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10028C0F4, 0, 0);
}

uint64_t sub_10028C0F4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100451450, &qword_1003433F8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452B40, &qword_100452B48, &qword_10034E4F8);
  sub_100006224();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000024;
  v2[1] = 0x80000001003598A0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10028C24C()
{
  result = qword_100451470;
  if (!qword_100451470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451470);
  }

  return result;
}

uint64_t sub_10028C2A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10028C870();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10028C354()
{
  result = qword_100451478;
  if (!qword_100451478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451478);
  }

  return result;
}

unint64_t sub_10028C3AC()
{
  result = qword_100451480;
  if (!qword_100451480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451480);
  }

  return result;
}

unint64_t sub_10028C404()
{
  result = qword_100451488;
  if (!qword_100451488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451488);
  }

  return result;
}

uint64_t sub_10028C458(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10028C870();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10028C50C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10028C870();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10028C5C0()
{
  result = qword_100451490;
  if (!qword_100451490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451490);
  }

  return result;
}

unint64_t sub_10028C618()
{
  result = qword_100451498;
  if (!qword_100451498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451498);
  }

  return result;
}

uint64_t sub_10028C6B0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10028C24C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10028C768()
{
  result = qword_1004514B0;
  if (!qword_1004514B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004514B0);
  }

  return result;
}

unint64_t sub_10028C7C0()
{
  result = qword_1004514B8;
  if (!qword_1004514B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004514B8);
  }

  return result;
}

unint64_t sub_10028C818()
{
  result = qword_1004514C0;
  if (!qword_1004514C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004514C0);
  }

  return result;
}

unint64_t sub_10028C870()
{
  result = qword_1004514C8;
  if (!qword_1004514C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004514C8);
  }

  return result;
}

uint64_t sub_10028C8C4()
{
  v0 = qword_100447678;

  return v0;
}

unint64_t sub_10028C900()
{
  result = qword_1004514D0;
  if (!qword_1004514D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004514D0);
  }

  return result;
}

uint64_t sub_10028C954()
{
  v0 = sub_10000321C(&qword_100452B30, &qword_10034E4D8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452B38, &qword_10034E4E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10028C404();
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

unint64_t sub_10028CB1C()
{
  result = qword_1004514D8;
  if (!qword_1004514D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004514D8);
  }

  return result;
}

unint64_t sub_10028CB74()
{
  result = qword_1004514E0;
  if (!qword_1004514E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004514E0);
  }

  return result;
}

unint64_t sub_10028CBCC()
{
  result = qword_1004514E8;
  if (!qword_1004514E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004514E8);
  }

  return result;
}

uint64_t sub_10028CC20()
{
  sub_1002D2AEC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10028CD08(uint64_t a1)
{
  v2 = sub_10028C404();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10028CD58()
{
  result = qword_100451500;
  if (!qword_100451500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451500);
  }

  return result;
}

uint64_t sub_10028CDC4(uint64_t a1)
{
  v2 = sub_10028CBCC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10028CE14()
{
  result = qword_100451508;
  if (!qword_100451508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451508);
  }

  return result;
}

uint64_t sub_10028CED4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10028D258(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

uint64_t sub_10028D2C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v3, a2);
  v4 = sub_10001EDB8(v3, a2);
  sub_1002D8620();
  v5 = sub_1002D8630();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_10028D380()
{
  result = swift_getKeyPath();
  qword_100520450 = result;
  return result;
}

uint64_t sub_10028D3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452B08, &qword_10034E498) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452B10, &qword_10034E4A0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10028D588, 0, 0);
}

uint64_t sub_10028D588()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10028E844();
  *v4 = v0;
  v4[1] = sub_10028D66C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7124, 0, &type metadata for AccessibilityZoomLensModeiPadEntity, v5);
}

uint64_t sub_10028D66C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10028D768, 0, 0);
}

uint64_t sub_10028D768()
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
  if (qword_10043B940 != -1)
  {
    swift_once();
  }

  v5 = qword_100520450;
  v0[36] = qword_100520450;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100452AE8, &qword_100452AF0, &qword_10034E478);
  *v7 = v0;
  v7[1] = sub_10028D8C4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXZoomLensModeiPadAppEnum, v8);
}

uint64_t sub_10028D8C4()
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
    v6 = sub_10028DA34;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10028DA34()
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
  sub_10028CE14();
  sub_10028EA58();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10028DCAC()
{
  v0 = sub_10000321C(&qword_100452B18, &qword_10034E4A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B940 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10028EA58();
  sub_10002B6E4(&qword_100452B20, &qword_100452B18, &qword_10034E4A8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10028DE20(uint64_t *a1))(void *)
{
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

void (*sub_10028DE94(uint64_t *a1))(void *)
{
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

unint64_t sub_10028DF30()
{
  result = qword_100451520;
  if (!qword_100451520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451520);
  }

  return result;
}

unint64_t sub_10028DF88()
{
  result = qword_100451528;
  if (!qword_100451528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451528);
  }

  return result;
}

uint64_t sub_10028E084(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10028D3A8(a1, v5, v4);
}

uint64_t sub_10028E130@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002D1E2C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10028E178()
{
  result = qword_100451530;
  if (!qword_100451530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451530);
  }

  return result;
}

uint64_t sub_10028E1F0()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 zoomPreferredCurrentLensMode];

  v3 = sub_1002D8D10();
  v5 = v4;

  v6._rawValue = &off_10041E3F8;
  v12._countAndFlagsBits = v3;
  v12._object = v5;
  v7 = sub_1002D8E30(v6, v12);

  if (v7 >= 3)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  **(v0 + 16) = v8;
  v9 = *(v0 + 8);

  return v9();
}

id sub_10028E2FC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_1002D8D00();

  [v2 setZoomPreferredCurrentLensMode:v3];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    *(v0 + 16);
    v6 = sub_1002D8D00();

    [v5 notifyZoomLensModeWasChangedInSettingsTo:v6];

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10028E4A4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10028E534, 0, 0);
}

uint64_t sub_10028E534()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_100451518, &qword_100343A30);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452AE8, &qword_100452AF0, &qword_10034E478);
  sub_10000738C();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000024;
  v2[1] = 0x80000001003598A0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10028E68C()
{
  result = qword_100451538;
  if (!qword_100451538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451538);
  }

  return result;
}

uint64_t sub_10028E6E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10028ECB0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10028E794()
{
  result = qword_100451540;
  if (!qword_100451540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451540);
  }

  return result;
}

unint64_t sub_10028E7EC()
{
  result = qword_100451548;
  if (!qword_100451548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451548);
  }

  return result;
}

unint64_t sub_10028E844()
{
  result = qword_100451550;
  if (!qword_100451550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451550);
  }

  return result;
}

uint64_t sub_10028E898(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10028ECB0();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10028E94C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10028ECB0();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10028EA00()
{
  result = qword_100451558;
  if (!qword_100451558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451558);
  }

  return result;
}

unint64_t sub_10028EA58()
{
  result = qword_100451560;
  if (!qword_100451560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451560);
  }

  return result;
}

uint64_t sub_10028EAF0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10028E68C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10028EBA8()
{
  result = qword_100451578;
  if (!qword_100451578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451578);
  }

  return result;
}

unint64_t sub_10028EC00()
{
  result = qword_100451580;
  if (!qword_100451580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451580);
  }

  return result;
}

unint64_t sub_10028EC58()
{
  result = qword_100451588;
  if (!qword_100451588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451588);
  }

  return result;
}

unint64_t sub_10028ECB0()
{
  result = qword_100451590;
  if (!qword_100451590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451590);
  }

  return result;
}

uint64_t sub_10028ED04()
{
  v0 = qword_100447688;

  return v0;
}

unint64_t sub_10028ED40()
{
  result = qword_100451598;
  if (!qword_100451598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451598);
  }

  return result;
}

uint64_t sub_10028ED94()
{
  v0 = sub_10000321C(&qword_100452AD8, &qword_10034E458);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452AE0, &qword_10034E460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10028E844();
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

unint64_t sub_10028EF5C()
{
  result = qword_1004515A0;
  if (!qword_1004515A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004515A0);
  }

  return result;
}

unint64_t sub_10028EFB4()
{
  result = qword_1004515A8;
  if (!qword_1004515A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004515A8);
  }

  return result;
}

unint64_t sub_10028F00C()
{
  result = qword_1004515B0;
  if (!qword_1004515B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004515B0);
  }

  return result;
}

uint64_t sub_10028F060()
{
  sub_1002D2A98();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10028F148(uint64_t a1)
{
  v2 = sub_10028E844();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10028F198()
{
  result = qword_1004515C8;
  if (!qword_1004515C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004515C8);
  }

  return result;
}

uint64_t sub_10028F1EC(uint64_t a1)
{
  v2 = sub_10028F00C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10028F23C()
{
  result = qword_1004515D0;
  if (!qword_1004515D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004515D0);
  }

  return result;
}

uint64_t sub_10028F300@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10028F67C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_100520470);
  sub_10001EDB8(v0, qword_100520470);
  return sub_1002D88F0();
}

uint64_t sub_10028F6E0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_100520488);
  v1 = sub_10001EDB8(v0, qword_100520488);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10028F7A0()
{
  result = swift_getKeyPath();
  qword_1005204A0 = result;
  return result;
}

uint64_t sub_10028F7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452AB0, &qword_10034E418) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452AB8, &qword_10034E420);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10028F9A8, 0, 0);
}

uint64_t sub_10028F9A8()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100290C80();
  *v4 = v0;
  v4[1] = sub_10028FA8C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7128, 0, &type metadata for AccessibilityZoomDockPositionEntity, v5);
}

uint64_t sub_10028FA8C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10028FB88, 0, 0);
}

uint64_t sub_10028FB88()
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
  if (qword_10043B960 != -1)
  {
    swift_once();
  }

  v5 = qword_1005204A0;
  v0[36] = qword_1005204A0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100452A90, &qword_100452A98, &qword_10034E3F8);
  *v7 = v0;
  v7[1] = sub_10028FCE4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXZoomDockPositionAppEnum, v8);
}

uint64_t sub_10028FCE4()
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
    v6 = sub_10028FE54;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10028FE54()
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
  sub_10028F23C();
  sub_100290E94();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002900CC()
{
  v0 = sub_10000321C(&qword_100452AC0, &qword_10034E428);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B960 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100290E94();
  sub_10002B6E4(&qword_100452AC8, &qword_100452AC0, &qword_10034E428);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100290240(uint64_t *a1))(void *)
{
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

void (*sub_1002902B4(uint64_t *a1))(void *)
{
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

unint64_t sub_100290350()
{
  result = qword_1004515E8;
  if (!qword_1004515E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004515E8);
  }

  return result;
}

unint64_t sub_1002903A8()
{
  result = qword_1004515F0;
  if (!qword_1004515F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004515F0);
  }

  return result;
}

uint64_t sub_1002904A4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10028F7C8(a1, v5, v4);
}

uint64_t sub_100290550@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002D2230();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100290598()
{
  result = qword_1004515F8;
  if (!qword_1004515F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004515F8);
  }

  return result;
}

uint64_t sub_100290610()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomPreferredCurrentDockPosition];

  v4 = sub_1002D8D10();
  v6 = v5;

  v7 = sub_10001EB38(v4, v6);
  if (v7 == 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  *v1 = v8;
  v9 = *(v0 + 8);

  return v9();
}

id sub_10029070C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_1002D8D00();

  [v2 setZoomPreferredCurrentDockPosition:v3];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    *(v0 + 16);
    *(v0 + 16);
    v6 = sub_1002D8D00();

    [v5 notifyZoomDockPositionWasChangedInSettingsTo:v6];

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002908DC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10029096C, 0, 0);
}

uint64_t sub_10029096C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004515E0, &qword_100344068);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452A90, &qword_100452A98, &qword_10034E3F8);
  sub_100008538();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000024;
  v2[1] = 0x80000001003598A0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100290AC8()
{
  result = qword_100451600;
  if (!qword_100451600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451600);
  }

  return result;
}

uint64_t sub_100290B1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002910EC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100290BD0()
{
  result = qword_100451608;
  if (!qword_100451608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451608);
  }

  return result;
}

unint64_t sub_100290C28()
{
  result = qword_100451610;
  if (!qword_100451610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451610);
  }

  return result;
}

unint64_t sub_100290C80()
{
  result = qword_100451618;
  if (!qword_100451618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451618);
  }

  return result;
}

uint64_t sub_100290CD4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1002910EC();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100290D88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1002910EC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100290E3C()
{
  result = qword_100451620;
  if (!qword_100451620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451620);
  }

  return result;
}

unint64_t sub_100290E94()
{
  result = qword_100451628;
  if (!qword_100451628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451628);
  }

  return result;
}

uint64_t sub_100290F2C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100290AC8();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100290FE4()
{
  result = qword_100451640;
  if (!qword_100451640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451640);
  }

  return result;
}

unint64_t sub_10029103C()
{
  result = qword_100451648;
  if (!qword_100451648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451648);
  }

  return result;
}

unint64_t sub_100291094()
{
  result = qword_100451650;
  if (!qword_100451650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451650);
  }

  return result;
}

unint64_t sub_1002910EC()
{
  result = qword_100451658;
  if (!qword_100451658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451658);
  }

  return result;
}

uint64_t sub_100291140()
{
  v0 = qword_100447698;

  return v0;
}

unint64_t sub_10029117C()
{
  result = qword_100451660;
  if (!qword_100451660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451660);
  }

  return result;
}

uint64_t sub_1002911D0()
{
  v0 = sub_10000321C(&qword_100452A80, &qword_10034E3D8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452A88, &qword_10034E3E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100290C80();
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

unint64_t sub_100291398()
{
  result = qword_100451668;
  if (!qword_100451668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451668);
  }

  return result;
}

unint64_t sub_1002913F0()
{
  result = qword_100451670;
  if (!qword_100451670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451670);
  }

  return result;
}

unint64_t sub_100291448()
{
  result = qword_100451678;
  if (!qword_100451678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451678);
  }

  return result;
}

uint64_t sub_10029149C()
{
  sub_1002D2A44();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100291584(uint64_t a1)
{
  v2 = sub_100290C80();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1002915D4()
{
  result = qword_100451690;
  if (!qword_100451690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451690);
  }

  return result;
}

uint64_t sub_10029162C(uint64_t a1)
{
  v2 = sub_100291448();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10029167C()
{
  result = qword_100451698;
  if (!qword_100451698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451698);
  }

  return result;
}

uint64_t sub_10029173C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1002918A8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100291C20()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_1005204C0);
  sub_10001EDB8(v0, qword_1005204C0);
  return sub_1002D88F0();
}

uint64_t sub_100291C84()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_1005204D8);
  v1 = sub_10001EDB8(v0, qword_1005204D8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100291D44()
{
  result = swift_getKeyPath();
  qword_1005204F0 = result;
  return result;
}

uint64_t sub_100291D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100452A50, &qword_10034E390) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100452A58, &qword_10034E398);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100291F4C, 0, 0);
}

uint64_t sub_100291F4C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100293338();
  *v4 = v0;
  v4[1] = sub_100292030;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D712C, 0, &type metadata for AccessibilityZoomLensEffectEntity, v5);
}

uint64_t sub_100292030()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10029212C, 0, 0);
}

uint64_t sub_10029212C()
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
  if (qword_10043B980 != -1)
  {
    swift_once();
  }

  v5 = qword_1005204F0;
  v0[36] = qword_1005204F0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100452A20, &qword_100452A28, &unk_10034E358);
  *v7 = v0;
  v7[1] = sub_100292288;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXZoomFilterAppEnum, v8);
}

uint64_t sub_100292288()
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
    v6 = sub_1002923F8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002923F8()
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
  sub_10029167C();
  sub_10029354C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100292670()
{
  v0 = sub_10000321C(&qword_100452A60, &qword_10034E3A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B980 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10029354C();
  sub_10002B6E4(&qword_100452A68, &qword_100452A60, &qword_10034E3A0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

__n128 sub_1002927E4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1002D85B0();
  result = v6;
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_100292828(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];

  sub_1002D85C0();
}

void (*sub_100292890(uint64_t *a1))(void *)
{
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

void (*sub_100292904(uint64_t *a1))(void *)
{
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

uint64_t sub_10029299C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

unint64_t sub_100292A04()
{
  result = qword_1004516B0;
  if (!qword_1004516B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004516B0);
  }

  return result;
}

unint64_t sub_100292A5C()
{
  result = qword_1004516B8;
  if (!qword_1004516B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004516B8);
  }

  return result;
}

uint64_t sub_100292BAC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100291D6C(a1, v5, v4);
}

uint64_t sub_100292C58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002D2634();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100292CA0()
{
  result = qword_1004516C0;
  if (!qword_1004516C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004516C0);
  }

  return result;
}

uint64_t sub_100292D18()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 zoomCurrentLensEffect];

  v4 = sub_1002D8D10();
  v6 = v5;

  v7 = sub_10001EB84(v4, v6);
  if (v7 == 6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  *v1 = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100292E14()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_1002D8D00();

  [v2 setZoomCurrentLensEffect:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100292F98(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100293028, 0, 0);
}

uint64_t sub_100293028()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_1004516A8, &qword_1003446A0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100452A20, &qword_100452A28, &unk_10034E358);
  sub_100009858();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000020;
  v2[1] = 0x8000000100359920;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100293180()
{
  result = qword_1004516C8;
  if (!qword_1004516C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004516C8);
  }

  return result;
}

uint64_t sub_1002931D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100293820();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100293288()
{
  result = qword_1004516D0;
  if (!qword_1004516D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004516D0);
  }

  return result;
}

unint64_t sub_1002932E0()
{
  result = qword_1004516D8;
  if (!qword_1004516D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004516D8);
  }

  return result;
}

unint64_t sub_100293338()
{
  result = qword_1004516E0;
  if (!qword_1004516E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004516E0);
  }

  return result;
}

uint64_t sub_10029338C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100293820();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100293440(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100293820();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1002934F4()
{
  result = qword_1004516E8;
  if (!qword_1004516E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004516E8);
  }

  return result;
}

unint64_t sub_10029354C()
{
  result = qword_1004516F0;
  if (!qword_1004516F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004516F0);
  }

  return result;
}

uint64_t sub_1002935E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000044E0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100293660(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100293180();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100293718()
{
  result = qword_100451708;
  if (!qword_100451708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451708);
  }

  return result;
}

unint64_t sub_100293770()
{
  result = qword_100451710;
  if (!qword_100451710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451710);
  }

  return result;
}

unint64_t sub_1002937C8()
{
  result = qword_100451718;
  if (!qword_100451718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451718);
  }

  return result;
}

unint64_t sub_100293820()
{
  result = qword_100451720;
  if (!qword_100451720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451720);
  }

  return result;
}

uint64_t sub_100293874()
{
  v0 = qword_1004476A8;

  return v0;
}

unint64_t sub_1002938B0()
{
  result = qword_100451728;
  if (!qword_100451728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451728);
  }

  return result;
}

uint64_t sub_100293904()
{
  v0 = sub_10000321C(&qword_100452A10, &qword_10034E338);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100452A18, &qword_10034E340);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100293338();
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

unint64_t sub_100293ACC()
{
  result = qword_100451730;
  if (!qword_100451730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451730);
  }

  return result;
}

unint64_t sub_100293B24()
{
  result = qword_100451738;
  if (!qword_100451738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451738);
  }

  return result;
}

unint64_t sub_100293B7C()
{
  result = qword_100451740;
  if (!qword_100451740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451740);
  }

  return result;
}

uint64_t sub_100293BD0()
{
  sub_10029CE8C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100293C74@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_10001EDB8(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100293D60(uint64_t a1)
{
  v2 = sub_100293338();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100293DB0()
{
  result = qword_100451758;
  if (!qword_100451758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100451758);
  }

  return result;
}

uint64_t sub_100293E08(uint64_t a1)
{
  v2 = sub_100293B7C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_100293E64(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1002963A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002963F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100296440(uint64_t *a1, int a2)
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

uint64_t sub_100296488(uint64_t result, int a2, int a3)
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

unint64_t sub_10029CE8C()
{
  result = qword_100452A08;
  if (!qword_100452A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452A08);
  }

  return result;
}

uint64_t sub_10029CEE0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10029CFD8;

  return v7(a1);
}

uint64_t sub_10029CFD8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10029D0D0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456938, &qword_1003541A0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1000DB730();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_10029D538()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004568E8, &qword_100354120);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1000DDDF8();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_10029D9A0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456898, &qword_1003540A8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1000E00AC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_10029DE08()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456848, &qword_100354030);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1000E2498();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_10029E270()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004567F8, &qword_100353FB8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1000E47D0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_10029E6D8()
{
  v0 = sub_10000321C(&qword_100453340, &qword_10034F0E8);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = v26 - v2;
  v35 = sub_1002D87A0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v26 - v16;
  v18 = sub_1002D8910();
  v31 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v29 = sub_10000321C(&qword_1004567A8, &qword_100353F40);
  sub_1002D88F0();
  v30 = *(v19 + 56);
  v30(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v22 = *(*(v21 - 8) + 56);
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v28 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v26[1] = v3 + 104;
  v27 = v23;
  v23(v6);
  sub_1000E6B4C();
  v24 = sub_1002D85E0();
  sub_10000321C(&qword_100453350, &qword_10034F0F8);
  sub_1002D88F0();
  v30(v17, 1, 1, v31);
  v36 = 0;
  LOBYTE(v37) = 1;
  v22(v13, 1, 1, v21);
  (*(v33 + 104))(v32, enum case for IntentParameter.DoubleControlStyle.stepper<A>(_:), v34);
  v27(v6, v28, v35);
  sub_1002D8600();
  return v24;
}

uint64_t sub_10029EB64()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456758, &qword_100353EC8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1000E8FA4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_10029EFCC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v36 = &v27 - v2;
  v37 = sub_1002D87A0();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v28 = &v27 - v16;
  v18 = sub_1002D8910();
  v35 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v30 = sub_10000321C(&qword_100456708, &qword_100353E50);
  sub_1002D88F0();
  v34 = *(v19 + 56);
  v34(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v22 = *(*(v21 - 8) + 56);
  v29 = v13;
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v33 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v31 = v3 + 104;
  v32 = v23;
  v23(v6);
  sub_1000EB400();
  v24 = v28;
  v30 = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v34(v24, 1, 1, v35);
  LOBYTE(v38) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  v22(v29, 1, 1, v21);
  v32(v6, v33, v37);
  sub_1002D85F0();
  return v30;
}

uint64_t sub_10029F444()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004566B8, &qword_100353DD8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1000ED858();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_10029F8AC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456668, &qword_100353D60);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1000EFB74();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_10029FD14()
{
  v0 = sub_10000321C(&qword_100453340, &qword_10034F0E8);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = v26 - v2;
  v35 = sub_1002D87A0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v26 - v16;
  v18 = sub_1002D8910();
  v31 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v29 = sub_10000321C(&qword_100456618, &qword_100353CE8);
  sub_1002D88F0();
  v30 = *(v19 + 56);
  v30(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v22 = *(*(v21 - 8) + 56);
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v28 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v26[1] = v3 + 104;
  v27 = v23;
  v23(v6);
  sub_1000F1FC4();
  v24 = sub_1002D85E0();
  sub_10000321C(&qword_100453350, &qword_10034F0F8);
  sub_1002D88F0();
  v30(v17, 1, 1, v31);
  v36 = 0;
  LOBYTE(v37) = 1;
  v22(v13, 1, 1, v21);
  (*(v33 + 104))(v32, enum case for IntentParameter.DoubleControlStyle.stepper<A>(_:), v34);
  v27(v6, v28, v35);
  sub_1002D8600();
  return v24;
}

uint64_t sub_1002A01A0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004565C8, &qword_100353C70);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1000F441C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A0608()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456578, &qword_100353BF8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1000F6878();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A0A70()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456528, &qword_100353B80);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1000F8D10();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A0ED8()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004564D8, &qword_100353B08);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1000FB038();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A1340()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100456480, &qword_100353A88);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_1000FD464();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100456488, &qword_100353A90);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 6;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100017718();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002A1744()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456430, &qword_100353A10);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1000FF8BC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A1BAC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004563E0, &qword_100353998);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100101D14();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A2014()
{
  v0 = sub_10000321C(&qword_100453340, &qword_10034F0E8);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = v26 - v2;
  v35 = sub_1002D87A0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v26 - v16;
  v18 = sub_1002D8910();
  v31 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v29 = sub_10000321C(&qword_100456390, &qword_100353920);
  sub_1002D88F0();
  v30 = *(v19 + 56);
  v30(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v22 = *(*(v21 - 8) + 56);
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v28 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v26[1] = v3 + 104;
  v27 = v23;
  v23(v6);
  sub_100104164();
  v24 = sub_1002D85E0();
  sub_10000321C(&qword_100453350, &qword_10034F0F8);
  sub_1002D88F0();
  v30(v17, 1, 1, v31);
  v36 = 0;
  LOBYTE(v37) = 1;
  v22(v13, 1, 1, v21);
  (*(v33 + 104))(v32, enum case for IntentParameter.DoubleControlStyle.stepper<A>(_:), v34);
  v27(v6, v28, v35);
  sub_1002D8600();
  return v24;
}

uint64_t sub_1002A24A0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456340, &qword_1003538A8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001065BC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A2908()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_1004562E8, &qword_100353828);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100108A14();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_1004562F0, &qword_100353830);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100014A98();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002A2D0C()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456298, &qword_1003537B0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10010AE6C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A3174()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456248, &qword_100353738);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10010D2C8();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A35DC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004561F8, &qword_1003536C0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10010F720();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A3A44()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v36 = &v27 - v2;
  v37 = sub_1002D87A0();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v28 = &v27 - v16;
  v18 = sub_1002D8910();
  v35 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v30 = sub_10000321C(&qword_1004561A8, &qword_100353648);
  sub_1002D88F0();
  v34 = *(v19 + 56);
  v34(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v22 = *(*(v21 - 8) + 56);
  v29 = v13;
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v33 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v31 = v3 + 104;
  v32 = v23;
  v23(v6);
  sub_100111B78();
  v24 = v28;
  v30 = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v34(v24, 1, 1, v35);
  LOBYTE(v38) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  v22(v29, 1, 1, v21);
  v32(v6, v33, v37);
  sub_1002D85F0();
  return v30;
}

uint64_t sub_1002A3EBC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456158, &qword_1003535D0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100113FD0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A4324()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456108, &qword_100353558);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001162D4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A478C()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004560B8, &qword_1003534E0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10011872C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A4BF4()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456068, &qword_100353468);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10011AA48();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A505C()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100456018, &qword_1003533F0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10011CEA0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A54C4()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455FC8, &qword_100353378);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10011F2F8();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A592C()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455F78, &qword_100353300);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100121754();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A5D94()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455F28, &qword_100353288);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100123BAC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A61FC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455ED8, &qword_100353210);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100126004();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A6664()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455E88, &qword_100353198);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10012845C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A6ACC()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100455E30, &qword_100353118);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_10012A870();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100455E38, &qword_100353120);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100015874();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002A6ED0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455DE0, &qword_1003530A0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10012CCCC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A7338(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v39 = a3;
  v5 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v40 = v33 - v7;
  v41 = sub_1002D87A0();
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v41);
  v38 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000321C(&qword_10043CF38, "f'\n");
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v33 - v16;
  v18 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v33 - v20;
  v22 = sub_1002D8910();
  v37 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v33[1] = sub_10000321C(a1, a2);
  sub_1002D88F0();
  v36 = *(v23 + 56);
  v36(v21, 1, 1, v22);
  v25 = sub_1002D8570();
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v26 = *(*(v25 - 8) + 56);
  v33[0] = v17;
  v26(v17, 1, 1, v25);
  v26(v15, 1, 1, v25);
  v35 = enum case for InputConnectionBehavior.default(_:);
  v27 = *(v8 + 104);
  v33[2] = v8 + 104;
  v34 = v27;
  v28 = v38;
  v29 = v27(v38);
  v39(v29);
  v30 = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v36(v21, 1, 1, v37);
  LOBYTE(v42) = 2;
  v31 = sub_1002D8D60();
  (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
  v26(v33[0], 1, 1, v25);
  v34(v28, v35, v41);
  sub_1002D85F0();
  return v30;
}

uint64_t sub_1002A77C0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455CF0, &qword_100352F38);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100133310();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A7C28()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455CA0, &qword_100352EC0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10013562C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A8090()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455C50, &qword_100352E48);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10013793C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A84F8()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455C00, &qword_100352DD0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100139DA0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A8960()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455BB0, &qword_100352D58);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10013C19C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A8DC8()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455B60, &qword_100352CE0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10013E58C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A9230()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v36 = &v27 - v2;
  v37 = sub_1002D87A0();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v28 = &v27 - v16;
  v18 = sub_1002D8910();
  v35 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v30 = sub_10000321C(&qword_100455B10, &qword_100352C68);
  sub_1002D88F0();
  v34 = *(v19 + 56);
  v34(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v22 = *(*(v21 - 8) + 56);
  v29 = v13;
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v33 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v31 = v3 + 104;
  v32 = v23;
  v23(v6);
  sub_10014097C();
  v24 = v28;
  v30 = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v34(v24, 1, 1, v35);
  LOBYTE(v38) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  v22(v29, 1, 1, v21);
  v32(v6, v33, v37);
  sub_1002D85F0();
  return v30;
}

uint64_t sub_1002A96A8()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455AC0, &qword_100352BF0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100142C60();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A9B10()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455A70, &qword_100352B78);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100144F88();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002A9F78()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455A20, &qword_100352B00);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001472E8();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AA3E0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004559D0, &qword_100352A88);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001496E4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AA848()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455980, &qword_100352A10);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10014B898();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AACB0()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100455928, &qword_100352990);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_10014DB30();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100455930, &qword_100352998);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 5;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_1000168A0();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002AB0B4()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004558D8, &qword_100352918);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10014FEE8();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AB51C()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455888, &qword_1003528A0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001522D0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AB984()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455838, &qword_100352828);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100154710();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002ABDEC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004557E8, &qword_100352788);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001569D0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AC254()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455798, &qword_100352710);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100158E38();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AC6BC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455748, &qword_100352698);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10015B0EC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002ACB24()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004556F8, &qword_100352620);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10015D388();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002ACF8C()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004556A8, &qword_1003525A8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10015F778();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AD3F4()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455658, &qword_100352530);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100161A94();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AD85C()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455608, &qword_1003524B8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100163A38();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002ADCC4()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004555B8, &qword_100352440);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100165D80();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AE12C()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455568, &qword_1003523C8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001681B0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AE594()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455518, &qword_100352350);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10016A614();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AE9FC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004554C8, &qword_1003522D8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10016C8AC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AEE64()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455478, &qword_100352260);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10016ECB4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AF2CC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455428, &qword_1003521E8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100170B2C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002AF734()
{
  v0 = sub_10000321C(&qword_100453340, &qword_10034F0E8);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = v26 - v2;
  v35 = sub_1002D87A0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v26 - v16;
  v18 = sub_1002D8910();
  v31 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v29 = sub_10000321C(&qword_1004553D8, &qword_100352170);
  sub_1002D88F0();
  v30 = *(v19 + 56);
  v30(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v22 = *(*(v21 - 8) + 56);
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v28 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v26[1] = v3 + 104;
  v27 = v23;
  v23(v6);
  sub_100172F90();
  v24 = sub_1002D85E0();
  sub_10000321C(&qword_100453350, &qword_10034F0F8);
  sub_1002D88F0();
  v30(v17, 1, 1, v31);
  v36 = 0;
  LOBYTE(v37) = 1;
  v22(v13, 1, 1, v21);
  (*(v33 + 104))(v32, enum case for IntentParameter.DoubleControlStyle.stepper<A>(_:), v34);
  v27(v6, v28, v35);
  sub_1002D8600();
  return v24;
}

uint64_t sub_1002AFBC0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455388, &qword_1003520F8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100175400();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B0028()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455338, &qword_100352080);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10017771C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B0490()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_1004552E8, &qword_100352008);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100179A4C();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100454038, &qword_100350420);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 8;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10000BA70();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002B0894()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455298, &qword_100351F90);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10017BD5C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B0CFC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455248, &qword_100351F18);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10017E1B4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B1164()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004551F8, &qword_100351EA0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100180464();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B15D0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004551A8, &qword_100351E28);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100182700();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B1A38()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455158, &qword_100351DB0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10018499C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B1EA0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455108, &qword_100351D38);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100186D8C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B2308()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004550B8, &qword_100351CC0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10018909C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B2770()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455068, &qword_100351C48);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10018B48C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B2BD8()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100455018, &qword_100351BD0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10018D8E8();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B3040()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454FC8, &qword_100351B58);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10018FD44();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B34A8()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454F78, &qword_100351AE0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100192140();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B3910()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454F28, &qword_100351A68);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100194534();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B3D78()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454ED8, &qword_1003519F0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100196898();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B41E0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454E88, &qword_100351978);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100198BC0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B4648()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454E38, &qword_100351900);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10019AE80();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B4AB0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454DE8, &qword_100351888);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10019D274();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B4F18()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454D98, &qword_100351810);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10019F668();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B5380()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454D48, &qword_100351798);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001A1A58();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B57E8()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454CF8, &qword_100351720);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001A3E48();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B5C50()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454CA8, &qword_1003516A8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001A6238();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B60B8()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454C58, &qword_100351630);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001A8548();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B6520()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454C08, &qword_1003515B8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001AA84C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B6988()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454BB8, &qword_100351540);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001ACCA4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B6DF0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454B68, &qword_1003514C8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001AF0FC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B7258()
{
  v0 = sub_10000321C(&qword_100454AB8, &qword_1003513C8);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = v26 - v2;
  v35 = sub_1002D87A0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v26 - v16;
  v18 = sub_1002D8910();
  v31 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v29 = sub_10000321C(&qword_100454B18, &qword_100351450);
  sub_1002D88F0();
  v30 = *(v19 + 56);
  v30(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v22 = *(*(v21 - 8) + 56);
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v28 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v26[1] = v3 + 104;
  v27 = v23;
  v23(v6);
  sub_1001B1484();
  v24 = sub_1002D85E0();
  sub_10000321C(&qword_100454AC8, &qword_1003513D8);
  sub_1002D88F0();
  v30(v17, 1, 1, v31);
  v36 = 0;
  LOBYTE(v37) = 1;
  v22(v13, 1, 1, v21);
  (*(v33 + 104))(v32, enum case for IntentParameter.IntControlStyle.stepper<A>(_:), v34);
  v27(v6, v28, v35);
  sub_1002D8610();
  return v24;
}

uint64_t sub_1002B76E4()
{
  v0 = sub_10000321C(&qword_100454AB8, &qword_1003513C8);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = v26 - v2;
  v35 = sub_1002D87A0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v26 - v16;
  v18 = sub_1002D8910();
  v31 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v29 = sub_10000321C(&qword_100454AC0, &qword_1003513D0);
  sub_1002D88F0();
  v30 = *(v19 + 56);
  v30(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v22 = *(*(v21 - 8) + 56);
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v28 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v26[1] = v3 + 104;
  v27 = v23;
  v23(v6);
  sub_1001B3798();
  v24 = sub_1002D85E0();
  sub_10000321C(&qword_100454AC8, &qword_1003513D8);
  sub_1002D88F0();
  v30(v17, 1, 1, v31);
  v36 = 0;
  LOBYTE(v37) = 1;
  v22(v13, 1, 1, v21);
  (*(v33 + 104))(v32, enum case for IntentParameter.IntControlStyle.stepper<A>(_:), v34);
  v27(v6, v28, v35);
  sub_1002D8610();
  return v24;
}

uint64_t sub_1002B7B70()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454A68, &qword_100351350);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001B5BDC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B7FD8()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100454A10, &qword_1003512D0);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_1001B7EE8();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100454A18, &qword_1003512D8);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_1000182AC();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002B83DC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004549C0, &qword_100351258);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001BA188();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B8844()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454970, &qword_1003511E0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001BC5E0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B8CAC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454920, &qword_100351168);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001BE9C8();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B9114()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_1004548C8, &qword_1003510E8);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_1001C0D74();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_1004548D0, &qword_1003510F0);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10001C314();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002B9518()
{
  v0 = sub_10000321C(&qword_100453340, &qword_10034F0E8);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = v26 - v2;
  v35 = sub_1002D87A0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v26 - v16;
  v18 = sub_1002D8910();
  v31 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v29 = sub_10000321C(&qword_100454878, &qword_100351070);
  sub_1002D88F0();
  v30 = *(v19 + 56);
  v30(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v22 = *(*(v21 - 8) + 56);
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v28 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v26[1] = v3 + 104;
  v27 = v23;
  v23(v6);
  sub_1001C32DC();
  v24 = sub_1002D85E0();
  sub_10000321C(&qword_100453350, &qword_10034F0F8);
  sub_1002D88F0();
  v30(v17, 1, 1, v31);
  v36 = 0;
  LOBYTE(v37) = 1;
  v22(v13, 1, 1, v21);
  (*(v33 + 104))(v32, enum case for IntentParameter.DoubleControlStyle.stepper<A>(_:), v34);
  v27(v6, v28, v35);
  sub_1002D8600();
  return v24;
}

uint64_t sub_1002B99A4()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454828, &qword_100350FF8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001C5738();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002B9E0C()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004547D8, &qword_100350F80);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001C7B94();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002BA274()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454788, &qword_100350F08);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001C9FEC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002BA6DC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454738, &qword_100350E90);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001CC28C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002BAB44()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_1004546E0, &qword_100350E10);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_1001CE574();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_1004546E8, &qword_100350E18);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10001CF4C();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002BAF48()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454690, &qword_100350D98);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001D0828();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002BB3B0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454640, &qword_100350D20);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001D2ADC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002BB818()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004545A0, &qword_100350C30);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001D6D7C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002BBC80()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454550, &qword_100350BB8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001D916C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002BC0E8()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454500, &qword_100350B40);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001DB420();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002BC550()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004544B0, &qword_100350AC8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001DD810();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002BC9B8()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454460, &qword_100350A50);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001DFAD0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002BCE20()
{
  v0 = sub_10000321C(&qword_100453340, &qword_10034F0E8);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = v26 - v2;
  v35 = sub_1002D87A0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v26 - v16;
  v18 = sub_1002D8910();
  v31 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v29 = sub_10000321C(&qword_100454410, &qword_1003509D8);
  sub_1002D88F0();
  v30 = *(v19 + 56);
  v30(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v22 = *(*(v21 - 8) + 56);
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v28 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v26[1] = v3 + 104;
  v27 = v23;
  v23(v6);
  sub_1001E1F24();
  v24 = sub_1002D85E0();
  sub_10000321C(&qword_100453350, &qword_10034F0F8);
  sub_1002D88F0();
  v30(v17, 1, 1, v31);
  v36 = 0;
  LOBYTE(v37) = 1;
  v22(v13, 1, 1, v21);
  (*(v33 + 104))(v32, enum case for IntentParameter.DoubleControlStyle.stepper<A>(_:), v34);
  v27(v6, v28, v35);
  sub_1002D8600();
  return v24;
}

uint64_t sub_1002BD2AC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004543C0, &qword_100350960);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001E3D9C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002BD714()
{
  v0 = sub_10000321C(&qword_100453340, &qword_10034F0E8);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = v26 - v2;
  v35 = sub_1002D87A0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v26 - v16;
  v18 = sub_1002D8910();
  v31 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v29 = sub_10000321C(&qword_100454370, &qword_1003508E8);
  sub_1002D88F0();
  v30 = *(v19 + 56);
  v30(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v22 = *(*(v21 - 8) + 56);
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v28 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v26[1] = v3 + 104;
  v27 = v23;
  v23(v6);
  sub_1001E6218();
  v24 = sub_1002D85E0();
  sub_10000321C(&qword_100453350, &qword_10034F0F8);
  sub_1002D88F0();
  v30(v17, 1, 1, v31);
  v36 = 0;
  LOBYTE(v37) = 1;
  v22(v13, 1, 1, v21);
  (*(v33 + 104))(v32, enum case for IntentParameter.DoubleControlStyle.stepper<A>(_:), v34);
  v27(v6, v28, v35);
  sub_1002D8600();
  return v24;
}

uint64_t sub_1002BDBA0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454320, &qword_100350870);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001E80A0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002BE008()
{
  v0 = sub_10000321C(&qword_100453340, &qword_10034F0E8);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = v26 - v2;
  v35 = sub_1002D87A0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v26 - v16;
  v18 = sub_1002D8910();
  v31 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v29 = sub_10000321C(&qword_1004542D0, &qword_1003507F8);
  sub_1002D88F0();
  v30 = *(v19 + 56);
  v30(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v22 = *(*(v21 - 8) + 56);
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v28 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v26[1] = v3 + 104;
  v27 = v23;
  v23(v6);
  sub_1001EA3CC();
  v24 = sub_1002D85E0();
  sub_10000321C(&qword_100453350, &qword_10034F0F8);
  sub_1002D88F0();
  v30(v17, 1, 1, v31);
  v36 = 0;
  LOBYTE(v37) = 1;
  v22(v13, 1, 1, v21);
  (*(v33 + 104))(v32, enum case for IntentParameter.DoubleControlStyle.stepper<A>(_:), v34);
  v27(v6, v28, v35);
  sub_1002D8600();
  return v24;
}

uint64_t sub_1002BE494()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454280, &qword_100350780);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001EC24C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002BE8FC()
{
  v0 = sub_10000321C(&qword_100453340, &qword_10034F0E8);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = v26 - v2;
  v35 = sub_1002D87A0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v26 - v16;
  v18 = sub_1002D8910();
  v31 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v29 = sub_10000321C(&qword_100454230, &qword_100350708);
  sub_1002D88F0();
  v30 = *(v19 + 56);
  v30(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v22 = *(*(v21 - 8) + 56);
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v28 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v26[1] = v3 + 104;
  v27 = v23;
  v23(v6);
  sub_1001EE56C();
  v24 = sub_1002D85E0();
  sub_10000321C(&qword_100453350, &qword_10034F0F8);
  sub_1002D88F0();
  v30(v17, 1, 1, v31);
  v36 = 0;
  LOBYTE(v37) = 1;
  v22(v13, 1, 1, v21);
  (*(v33 + 104))(v32, enum case for IntentParameter.DoubleControlStyle.stepper<A>(_:), v34);
  v27(v6, v28, v35);
  sub_1002D8600();
  return v24;
}

uint64_t sub_1002BED88()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004541E0, &qword_100350690);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001F09C4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002BF1F0()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100454188, &qword_100350610);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_1001F2DE8();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100454190, &qword_100350618);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_1000190CC();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002BF5F4()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100454130, &qword_100350590);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_1001F50C4();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100454138, &qword_100350598);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100019C60();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002BF9F8()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_1004540D8, &qword_100350510);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_1001F73B4();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_1004540E0, &qword_100350518);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10001ABB4();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002BFDFC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100454088, &qword_100350498);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001F96D0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C0264()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100454030, &qword_100350418);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_1001FBA0C();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100454038, &qword_100350420);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 8;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10000BA70();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002C0668()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100453FD8, &qword_100350398);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_1001FDCF4();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100453FE0, &qword_1003503A0);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10001B758();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002C0A6C()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453F88, &qword_100350320);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1001FFF54();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C0ED4()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453F38, &qword_1003502A8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100202318();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C133C()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100453EE0, &qword_100350228);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_1002045E4();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100453EE8, &qword_100350230);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10000C888();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002C1740()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453E90, &qword_1003501B0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1002069D4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C1BA8()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453E40, &qword_100350138);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100208C90();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C2010()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453DF0, &qword_1003500C0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10020AF34();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C2478()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453DA0, &qword_100350048);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10020D32C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C28E0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453D50, &qword_10034FFD0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10020F5EC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C2D48()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453D00, &qword_10034FF58);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100211AA4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C31B0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453CB0, &qword_10034FEE0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100213E08();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C3618()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453C60, &qword_10034FE68);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10021616C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C3A80()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100453C08, &qword_10034FDE8);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100218444();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100453C10, &qword_10034FDF0);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 4;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10001DE2C();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002C3E84()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453BB8, &qword_10034FD70);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10021A7C0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C42EC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453B68, &qword_10034FCF8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10021CA68();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C4754()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v36 = &v27 - v2;
  v37 = sub_1002D87A0();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v28 = &v27 - v16;
  v18 = sub_1002D8910();
  v35 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v30 = sub_10000321C(&qword_100453B18, &qword_10034FC80);
  sub_1002D88F0();
  v34 = *(v19 + 56);
  v34(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v22 = *(*(v21 - 8) + 56);
  v29 = v13;
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v33 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v31 = v3 + 104;
  v32 = v23;
  v23(v6);
  sub_10021ED1C();
  v24 = v28;
  v30 = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v34(v24, 1, 1, v35);
  LOBYTE(v38) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  v22(v29, 1, 1, v21);
  v32(v6, v33, v37);
  sub_1002D85F0();
  return v30;
}

uint64_t sub_1002C4BCC()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100453AC0, &qword_10034FC00);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100221058();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100453AC8, &qword_10034FC08);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10000D418();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002C4FD0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453A70, &qword_10034FB88);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1002234B0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C5438()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100453A18, &qword_10034FB08);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_1002257F8();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100453A20, &qword_10034FB10);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 4;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10000E0B0();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002C583C()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_1004539C0, &qword_10034FA88);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100227C74();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_1004539C8, &qword_10034FA90);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 4;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10000EFB0();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002C5C40()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453970, &qword_10034FA10);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10022A0CC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C60A8()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100453918, &qword_10034F990);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_10022C54C();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100453920, &qword_10034F998);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10000FDB8();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002C64AC()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_1004538C0, &qword_10034F910);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_10022E898();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_1004538C8, &qword_10034F918);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 2;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100010980();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002C68B0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453870, &qword_10034F898);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100230BA8();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C6D18()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453820, &qword_10034F820);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100233000();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C7180()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004537D0, &qword_10034F7A8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10023545C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C75E8()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100453778, &qword_10034F728);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_1002378D4();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100453780, &qword_10034F730);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 2;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100012E64();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002C79EC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453728, &qword_10034F6B0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100239BE4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C7E54()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004536D8, &qword_10034F638);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10023BFD4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C82BC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453688, &qword_10034F5C0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10023E2F0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C8724()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453638, &qword_10034F548);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100240600();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C8B8C()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_1004535E0, &qword_10034F4C8);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100242948();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_1004535E8, &qword_10034F4D0);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100013C8C();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002C8F90()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100453588, &qword_10034F448);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100244DC8();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100453590, &qword_10034F450);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100012314();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002C9394()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100453530, &qword_10034F3C8);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100247104();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100453538, &qword_10034F3D0);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100011788();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002C9798()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004534E0, &qword_10034F350);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100249560();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002C9C00()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453490, &qword_10034F2D8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10024B87C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CA068()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453440, &qword_10034F260);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10024DCD4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CA4D0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004533F0, &qword_10034F1E8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10025012C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CA938()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004533A0, &qword_10034F170);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100252584();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CADA0()
{
  v0 = sub_10000321C(&qword_100453340, &qword_10034F0E8);
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v32 = v26 - v2;
  v35 = sub_1002D87A0();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v26 - v16;
  v18 = sub_1002D8910();
  v31 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v29 = sub_10000321C(&qword_100453348, &qword_10034F0F0);
  sub_1002D88F0();
  v30 = *(v19 + 56);
  v30(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v22 = *(*(v21 - 8) + 56);
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v28 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v26[1] = v3 + 104;
  v27 = v23;
  v23(v6);
  sub_10025489C();
  v24 = sub_1002D85E0();
  sub_10000321C(&qword_100453350, &qword_10034F0F8);
  sub_1002D88F0();
  v30(v17, 1, 1, v31);
  v36 = 0;
  LOBYTE(v37) = 1;
  v22(v13, 1, 1, v21);
  (*(v33 + 104))(v32, enum case for IntentParameter.DoubleControlStyle.stepper<A>(_:), v34);
  v27(v6, v28, v35);
  sub_1002D8600();
  return v24;
}

uint64_t sub_1002CB22C()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004532F0, &qword_10034F070);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100256BAC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CB694(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v39 = a3;
  v5 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v40 = v33 - v7;
  v41 = sub_1002D87A0();
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v41);
  v38 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000321C(&qword_10043CF38, "f'\n");
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v33 - v16;
  v18 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v33 - v20;
  v22 = sub_1002D8910();
  v37 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v33[1] = sub_10000321C(a1, a2);
  sub_1002D88F0();
  v36 = *(v23 + 56);
  v36(v21, 1, 1, v22);
  v25 = sub_1002D8570();
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v26 = *(*(v25 - 8) + 56);
  v33[0] = v17;
  v26(v17, 1, 1, v25);
  v26(v15, 1, 1, v25);
  v35 = enum case for InputConnectionBehavior.default(_:);
  v27 = *(v8 + 104);
  v33[2] = v8 + 104;
  v34 = v27;
  v28 = v38;
  v29 = v27(v38);
  v39(v29);
  v30 = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v36(v21, 1, 1, v37);
  LOBYTE(v42) = 2;
  v31 = sub_1002D8D60();
  (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
  v26(v33[0], 1, 1, v25);
  v34(v28, v35, v41);
  sub_1002D85F0();
  return v30;
}

uint64_t sub_1002CBB18()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453250, &qword_10034EF80);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10025B34C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CBF80()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453200, &qword_10034EF08);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10025D594();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CC3EC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004531B0, &qword_10034EE90);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10025F8A4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CC854()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453160, &qword_10034EE18);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100261BB4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CCCBC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453110, &qword_10034EDA0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10026400C();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CD124()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_1004530C0, &qword_10034ED28);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100266464();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CD58C()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453070, &qword_10034ECB0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1002688BC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CD9F4()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100453020, &qword_10034EC38);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10026ABCC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CDE5C()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100452FD0, &qword_10034EBC0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10026D028();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CE2C4()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100452F80, &qword_10034EB48);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10026F480();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CE72C()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100452F30, &qword_10034EAD0);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1002718D8();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CEB94()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100452EE0, &qword_10034EA58);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100273D30();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CEFFC()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v36 = &v27 - v2;
  v37 = sub_1002D87A0();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v28 = &v27 - v16;
  v18 = sub_1002D8910();
  v35 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v30 = sub_10000321C(&qword_100452E90, &qword_10034E9E0);
  sub_1002D88F0();
  v34 = *(v19 + 56);
  v34(v17, 1, 1, v18);
  v21 = sub_1002D8570();
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v22 = *(*(v21 - 8) + 56);
  v29 = v13;
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v33 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v31 = v3 + 104;
  v32 = v23;
  v23(v6);
  sub_100276188();
  v24 = v28;
  v30 = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v34(v24, 1, 1, v35);
  LOBYTE(v38) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  v22(v29, 1, 1, v21);
  v32(v6, v33, v37);
  sub_1002D85F0();
  return v30;
}

uint64_t sub_1002CF474()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100452E40, &qword_10034E968);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_1002785E4();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002CF8DC()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100452DE8, &qword_10034E8E8);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_10027A8CC();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100452DF0, &qword_10034E8F0);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10000A6CC();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002CFCE0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100452D98, &qword_10034E870);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10027CCC0();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002D0148()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100452D48, &qword_10034E7F8);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_10027EFDC();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002D05B0()
{
  v0 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v33 = v27 - v2;
  v34 = sub_1002D87A0();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000321C(&qword_10043CF38, "f'\n");
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v27 - v12;
  v14 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v27 - v16;
  v18 = sub_1002D8910();
  v32 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v27[0] = sub_10000321C(&qword_100452CF8, &unk_10034E778);
  sub_1002D88F0();
  v21 = *(v19 + 56);
  v30 = v19 + 56;
  v31 = v21;
  v21(v17, 1, 1, v18);
  v22 = sub_1002D8570();
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v27[1] = v3 + 104;
  v28 = v24;
  v24(v6);
  sub_100281434();
  v27[0] = sub_1002D85E0();
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  v31(v17, 1, 1, v32);
  LOBYTE(v35) = 2;
  v25 = sub_1002D8D60();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v28(v6, v29, v34);
  sub_1002D85F0();
  return v27[0];
}

uint64_t sub_1002D0A18()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100452CA8, &qword_10034E6F8);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100283850();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100452C08, &qword_10034E608);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 4;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_1000042EC();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002D0E1C()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100452C58, &qword_10034E680);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100285C6C();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100452C08, &qword_10034E608);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 4;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_1000042EC();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002D1220()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100452C00, &qword_10034E600);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100288088();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100452C08, &qword_10034E608);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 4;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_1000042EC();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002D1624()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100452BA8, &qword_10034E580);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_10028A4A8();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100452BB0, &qword_10034E588);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 6;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_1000054D8();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002D1A28()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100452B50, &qword_10034E500);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_10028C404();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100452B58, &qword_10034E508);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 2;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100006224();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002D1E2C()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100452AF8, &qword_10034E480);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_10028E844();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100452B00, &qword_10034E488);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 3;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_10000738C();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002D2230()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100452AA0, &qword_10034E400);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100290C80();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100452AA8, &qword_10034E408);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 4;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100008538();
  sub_1002D85D0();
  return v26;
}

uint64_t sub_1002D2634()
{
  v31 = sub_1002D87A0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000321C(&qword_10043CF38, "f'\n");
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = sub_1002D8910();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_10000321C(&qword_100452A30, &qword_10034E368);
  sub_1002D88F0();
  v17 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v17;
  v17(v13, 1, 1, v14);
  v18 = sub_1002D8570();
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23 = v0 + 104;
  v24 = v20;
  v21 = v30;
  v20(v30);
  sub_100293338();
  v26 = sub_1002D85E0();
  sub_10000321C(&qword_100452A38, &qword_10034E370);
  sub_1002D88F0();
  v28(v13, 1, 1, v29);
  LOBYTE(v32) = 6;
  v19(v9, 1, 1, v18);
  v19(v7, 1, 1, v18);
  v24(v21, v25, v31);
  sub_100009858();
  sub_1002D85D0();
  return v26;
}

unint64_t sub_1002D2A44()
{
  result = qword_100452A78;
  if (!qword_100452A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452A78);
  }

  return result;
}

unint64_t sub_1002D2A98()
{
  result = qword_100452AD0;
  if (!qword_100452AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452AD0);
  }

  return result;
}

unint64_t sub_1002D2AEC()
{
  result = qword_100452B28;
  if (!qword_100452B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452B28);
  }

  return result;
}

unint64_t sub_1002D2B40()
{
  result = qword_100452B80;
  if (!qword_100452B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452B80);
  }

  return result;
}

unint64_t sub_1002D2B94()
{
  result = qword_100452BD8;
  if (!qword_100452BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452BD8);
  }

  return result;
}

unint64_t sub_1002D2BE8()
{
  result = qword_100452C30;
  if (!qword_100452C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452C30);
  }

  return result;
}

unint64_t sub_1002D2C3C()
{
  result = qword_100452C80;
  if (!qword_100452C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452C80);
  }

  return result;
}

unint64_t sub_1002D2C90()
{
  result = qword_100452CD0;
  if (!qword_100452CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452CD0);
  }

  return result;
}

unint64_t sub_1002D2CE4()
{
  result = qword_100452D20;
  if (!qword_100452D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452D20);
  }

  return result;
}

unint64_t sub_1002D2D38()
{
  result = qword_100452D70;
  if (!qword_100452D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452D70);
  }

  return result;
}

unint64_t sub_1002D2D8C()
{
  result = qword_100452DC0;
  if (!qword_100452DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452DC0);
  }

  return result;
}

unint64_t sub_1002D2DE0()
{
  result = qword_100452E18;
  if (!qword_100452E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452E18);
  }

  return result;
}

unint64_t sub_1002D2E34()
{
  result = qword_100452E68;
  if (!qword_100452E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452E68);
  }

  return result;
}

unint64_t sub_1002D2E88()
{
  result = qword_100452EB8;
  if (!qword_100452EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452EB8);
  }

  return result;
}

unint64_t sub_1002D2EDC()
{
  result = qword_100452F08;
  if (!qword_100452F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452F08);
  }

  return result;
}

unint64_t sub_1002D2F30()
{
  result = qword_100452F58;
  if (!qword_100452F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452F58);
  }

  return result;
}

unint64_t sub_1002D2F84()
{
  result = qword_100452FA8;
  if (!qword_100452FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452FA8);
  }

  return result;
}

unint64_t sub_1002D2FD8()
{
  result = qword_100452FF8;
  if (!qword_100452FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100452FF8);
  }

  return result;
}

unint64_t sub_1002D302C()
{
  result = qword_100453048;
  if (!qword_100453048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453048);
  }

  return result;
}

unint64_t sub_1002D3080()
{
  result = qword_100453098;
  if (!qword_100453098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453098);
  }

  return result;
}

unint64_t sub_1002D30D4()
{
  result = qword_1004530E8;
  if (!qword_1004530E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004530E8);
  }

  return result;
}

unint64_t sub_1002D3128()
{
  result = qword_100453138;
  if (!qword_100453138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453138);
  }

  return result;
}

unint64_t sub_1002D317C()
{
  result = qword_100453188;
  if (!qword_100453188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453188);
  }

  return result;
}

unint64_t sub_1002D31D0()
{
  result = qword_1004531D8;
  if (!qword_1004531D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004531D8);
  }

  return result;
}

unint64_t sub_1002D3224()
{
  result = qword_100453228;
  if (!qword_100453228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453228);
  }

  return result;
}

unint64_t sub_1002D3278()
{
  result = qword_100453278;
  if (!qword_100453278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453278);
  }

  return result;
}

unint64_t sub_1002D32CC()
{
  result = qword_1004532C8;
  if (!qword_1004532C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004532C8);
  }

  return result;
}

unint64_t sub_1002D3320()
{
  result = qword_100453318;
  if (!qword_100453318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453318);
  }

  return result;
}

unint64_t sub_1002D3374()
{
  result = qword_100453378;
  if (!qword_100453378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453378);
  }

  return result;
}

unint64_t sub_1002D33C8()
{
  result = qword_1004533C8;
  if (!qword_1004533C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004533C8);
  }

  return result;
}

unint64_t sub_1002D341C()
{
  result = qword_100453418;
  if (!qword_100453418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453418);
  }

  return result;
}

unint64_t sub_1002D3470()
{
  result = qword_100453468;
  if (!qword_100453468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453468);
  }

  return result;
}

unint64_t sub_1002D34C4()
{
  result = qword_1004534B8;
  if (!qword_1004534B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004534B8);
  }

  return result;
}

unint64_t sub_1002D3518()
{
  result = qword_100453508;
  if (!qword_100453508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453508);
  }

  return result;
}

unint64_t sub_1002D356C()
{
  result = qword_100453560;
  if (!qword_100453560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453560);
  }

  return result;
}

unint64_t sub_1002D35C0()
{
  result = qword_1004535B8;
  if (!qword_1004535B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004535B8);
  }

  return result;
}

unint64_t sub_1002D3614()
{
  result = qword_100453610;
  if (!qword_100453610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453610);
  }

  return result;
}

unint64_t sub_1002D3668()
{
  result = qword_100453660;
  if (!qword_100453660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453660);
  }

  return result;
}

unint64_t sub_1002D36BC()
{
  result = qword_1004536B0;
  if (!qword_1004536B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004536B0);
  }

  return result;
}

unint64_t sub_1002D3710()
{
  result = qword_100453700;
  if (!qword_100453700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453700);
  }

  return result;
}

unint64_t sub_1002D3764()
{
  result = qword_100453750;
  if (!qword_100453750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453750);
  }

  return result;
}

unint64_t sub_1002D37B8()
{
  result = qword_1004537A8;
  if (!qword_1004537A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004537A8);
  }

  return result;
}

unint64_t sub_1002D380C()
{
  result = qword_1004537F8;
  if (!qword_1004537F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004537F8);
  }

  return result;
}

unint64_t sub_1002D3860()
{
  result = qword_100453848;
  if (!qword_100453848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453848);
  }

  return result;
}

unint64_t sub_1002D38B4()
{
  result = qword_100453898;
  if (!qword_100453898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453898);
  }

  return result;
}

unint64_t sub_1002D3908()
{
  result = qword_1004538F0;
  if (!qword_1004538F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004538F0);
  }

  return result;
}

unint64_t sub_1002D395C()
{
  result = qword_100453948;
  if (!qword_100453948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453948);
  }

  return result;
}

unint64_t sub_1002D39B0()
{
  result = qword_100453998;
  if (!qword_100453998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453998);
  }

  return result;
}

unint64_t sub_1002D3A04()
{
  result = qword_1004539F0;
  if (!qword_1004539F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004539F0);
  }

  return result;
}

unint64_t sub_1002D3A58()
{
  result = qword_100453A48;
  if (!qword_100453A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453A48);
  }

  return result;
}

unint64_t sub_1002D3AAC()
{
  result = qword_100453A98;
  if (!qword_100453A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453A98);
  }

  return result;
}

unint64_t sub_1002D3B00()
{
  result = qword_100453AF0;
  if (!qword_100453AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453AF0);
  }

  return result;
}

unint64_t sub_1002D3B54()
{
  result = qword_100453B40;
  if (!qword_100453B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453B40);
  }

  return result;
}

unint64_t sub_1002D3BA8()
{
  result = qword_100453B90;
  if (!qword_100453B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453B90);
  }

  return result;
}

unint64_t sub_1002D3BFC()
{
  result = qword_100453BE0;
  if (!qword_100453BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453BE0);
  }

  return result;
}

unint64_t sub_1002D3C50()
{
  result = qword_100453C38;
  if (!qword_100453C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453C38);
  }

  return result;
}

unint64_t sub_1002D3CA4()
{
  result = qword_100453C88;
  if (!qword_100453C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453C88);
  }

  return result;
}

unint64_t sub_1002D3CF8()
{
  result = qword_100453CD8;
  if (!qword_100453CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453CD8);
  }

  return result;
}

unint64_t sub_1002D3D4C()
{
  result = qword_100453D28;
  if (!qword_100453D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453D28);
  }

  return result;
}

unint64_t sub_1002D3DA0()
{
  result = qword_100453D78;
  if (!qword_100453D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453D78);
  }

  return result;
}

unint64_t sub_1002D3DF4()
{
  result = qword_100453DC8;
  if (!qword_100453DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453DC8);
  }

  return result;
}

unint64_t sub_1002D3E48()
{
  result = qword_100453E18;
  if (!qword_100453E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453E18);
  }

  return result;
}

unint64_t sub_1002D3E9C()
{
  result = qword_100453E68;
  if (!qword_100453E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453E68);
  }

  return result;
}

unint64_t sub_1002D3EF0()
{
  result = qword_100453EB8;
  if (!qword_100453EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453EB8);
  }

  return result;
}

unint64_t sub_1002D3F44()
{
  result = qword_100453F10;
  if (!qword_100453F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453F10);
  }

  return result;
}

unint64_t sub_1002D3F98()
{
  result = qword_100453F60;
  if (!qword_100453F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453F60);
  }

  return result;
}

unint64_t sub_1002D3FEC()
{
  result = qword_100453FB0;
  if (!qword_100453FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100453FB0);
  }

  return result;
}

unint64_t sub_1002D4040()
{
  result = qword_100454008;
  if (!qword_100454008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454008);
  }

  return result;
}

unint64_t sub_1002D4094()
{
  result = qword_100454060;
  if (!qword_100454060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454060);
  }

  return result;
}

unint64_t sub_1002D40E8()
{
  result = qword_1004540B0;
  if (!qword_1004540B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004540B0);
  }

  return result;
}

unint64_t sub_1002D413C()
{
  result = qword_100454108;
  if (!qword_100454108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454108);
  }

  return result;
}

unint64_t sub_1002D4190()
{
  result = qword_100454160;
  if (!qword_100454160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454160);
  }

  return result;
}

unint64_t sub_1002D41E4()
{
  result = qword_1004541B8;
  if (!qword_1004541B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004541B8);
  }

  return result;
}

unint64_t sub_1002D4238()
{
  result = qword_100454208;
  if (!qword_100454208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454208);
  }

  return result;
}

unint64_t sub_1002D428C()
{
  result = qword_100454258;
  if (!qword_100454258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454258);
  }

  return result;
}

unint64_t sub_1002D42E0()
{
  result = qword_1004542A8;
  if (!qword_1004542A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004542A8);
  }

  return result;
}

unint64_t sub_1002D4334()
{
  result = qword_1004542F8;
  if (!qword_1004542F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004542F8);
  }

  return result;
}

unint64_t sub_1002D4388()
{
  result = qword_100454348;
  if (!qword_100454348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454348);
  }

  return result;
}

unint64_t sub_1002D43DC()
{
  result = qword_100454398;
  if (!qword_100454398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454398);
  }

  return result;
}

unint64_t sub_1002D4430()
{
  result = qword_1004543E8;
  if (!qword_1004543E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004543E8);
  }

  return result;
}

unint64_t sub_1002D4484()
{
  result = qword_100454438;
  if (!qword_100454438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454438);
  }

  return result;
}

unint64_t sub_1002D44D8()
{
  result = qword_100454488;
  if (!qword_100454488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454488);
  }

  return result;
}

unint64_t sub_1002D452C()
{
  result = qword_1004544D8;
  if (!qword_1004544D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004544D8);
  }

  return result;
}

unint64_t sub_1002D4580()
{
  result = qword_100454528;
  if (!qword_100454528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454528);
  }

  return result;
}

unint64_t sub_1002D45D4()
{
  result = qword_100454578;
  if (!qword_100454578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454578);
  }

  return result;
}

unint64_t sub_1002D4628()
{
  result = qword_1004545C8;
  if (!qword_1004545C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004545C8);
  }

  return result;
}

unint64_t sub_1002D467C()
{
  result = qword_100454618;
  if (!qword_100454618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454618);
  }

  return result;
}

unint64_t sub_1002D46D0()
{
  result = qword_100454668;
  if (!qword_100454668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454668);
  }

  return result;
}

unint64_t sub_1002D4724()
{
  result = qword_1004546B8;
  if (!qword_1004546B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004546B8);
  }

  return result;
}

unint64_t sub_1002D4778()
{
  result = qword_100454710;
  if (!qword_100454710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454710);
  }

  return result;
}

unint64_t sub_1002D47CC()
{
  result = qword_100454760;
  if (!qword_100454760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454760);
  }

  return result;
}

unint64_t sub_1002D4820()
{
  result = qword_1004547B0;
  if (!qword_1004547B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004547B0);
  }

  return result;
}

unint64_t sub_1002D4874()
{
  result = qword_100454800;
  if (!qword_100454800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454800);
  }

  return result;
}

unint64_t sub_1002D48C8()
{
  result = qword_100454850;
  if (!qword_100454850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454850);
  }

  return result;
}

unint64_t sub_1002D491C()
{
  result = qword_1004548A0;
  if (!qword_1004548A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004548A0);
  }

  return result;
}

unint64_t sub_1002D4970()
{
  result = qword_1004548F8;
  if (!qword_1004548F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004548F8);
  }

  return result;
}

unint64_t sub_1002D49C4()
{
  result = qword_100454948;
  if (!qword_100454948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454948);
  }

  return result;
}

unint64_t sub_1002D4A18()
{
  result = qword_100454998;
  if (!qword_100454998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454998);
  }

  return result;
}

unint64_t sub_1002D4A6C()
{
  result = qword_1004549E8;
  if (!qword_1004549E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004549E8);
  }

  return result;
}

unint64_t sub_1002D4AC0()
{
  result = qword_100454A40;
  if (!qword_100454A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454A40);
  }

  return result;
}

unint64_t sub_1002D4B14()
{
  result = qword_100454A90;
  if (!qword_100454A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454A90);
  }

  return result;
}

unint64_t sub_1002D4B68()
{
  result = qword_100454AF0;
  if (!qword_100454AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454AF0);
  }

  return result;
}

unint64_t sub_1002D4BBC()
{
  result = qword_100454B40;
  if (!qword_100454B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454B40);
  }

  return result;
}

unint64_t sub_1002D4C10()
{
  result = qword_100454B90;
  if (!qword_100454B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454B90);
  }

  return result;
}

unint64_t sub_1002D4C64()
{
  result = qword_100454BE0;
  if (!qword_100454BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454BE0);
  }

  return result;
}

unint64_t sub_1002D4CB8()
{
  result = qword_100454C30;
  if (!qword_100454C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454C30);
  }

  return result;
}

unint64_t sub_1002D4D0C()
{
  result = qword_100454C80;
  if (!qword_100454C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454C80);
  }

  return result;
}

unint64_t sub_1002D4D60()
{
  result = qword_100454CD0;
  if (!qword_100454CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454CD0);
  }

  return result;
}

unint64_t sub_1002D4DB4()
{
  result = qword_100454D20;
  if (!qword_100454D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454D20);
  }

  return result;
}

unint64_t sub_1002D4E08()
{
  result = qword_100454D70;
  if (!qword_100454D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454D70);
  }

  return result;
}

unint64_t sub_1002D4E5C()
{
  result = qword_100454DC0;
  if (!qword_100454DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454DC0);
  }

  return result;
}

unint64_t sub_1002D4EB0()
{
  result = qword_100454E10;
  if (!qword_100454E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454E10);
  }

  return result;
}

unint64_t sub_1002D4F04()
{
  result = qword_100454E60;
  if (!qword_100454E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454E60);
  }

  return result;
}

unint64_t sub_1002D4F58()
{
  result = qword_100454EB0;
  if (!qword_100454EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454EB0);
  }

  return result;
}

unint64_t sub_1002D4FAC()
{
  result = qword_100454F00;
  if (!qword_100454F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454F00);
  }

  return result;
}

unint64_t sub_1002D5000()
{
  result = qword_100454F50;
  if (!qword_100454F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454F50);
  }

  return result;
}

unint64_t sub_1002D5054()
{
  result = qword_100454FA0;
  if (!qword_100454FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454FA0);
  }

  return result;
}

unint64_t sub_1002D50A8()
{
  result = qword_100454FF0;
  if (!qword_100454FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100454FF0);
  }

  return result;
}

unint64_t sub_1002D50FC()
{
  result = qword_100455040;
  if (!qword_100455040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455040);
  }

  return result;
}

unint64_t sub_1002D5150()
{
  result = qword_100455090;
  if (!qword_100455090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455090);
  }

  return result;
}

unint64_t sub_1002D51A4()
{
  result = qword_1004550E0;
  if (!qword_1004550E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004550E0);
  }

  return result;
}

unint64_t sub_1002D51F8()
{
  result = qword_100455130;
  if (!qword_100455130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455130);
  }

  return result;
}

unint64_t sub_1002D524C()
{
  result = qword_100455180;
  if (!qword_100455180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455180);
  }

  return result;
}

unint64_t sub_1002D52A0()
{
  result = qword_1004551D0;
  if (!qword_1004551D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004551D0);
  }

  return result;
}

unint64_t sub_1002D52F4()
{
  result = qword_100455220;
  if (!qword_100455220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455220);
  }

  return result;
}

unint64_t sub_1002D5348()
{
  result = qword_100455270;
  if (!qword_100455270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455270);
  }

  return result;
}

unint64_t sub_1002D539C()
{
  result = qword_1004552C0;
  if (!qword_1004552C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004552C0);
  }

  return result;
}

unint64_t sub_1002D53F0()
{
  result = qword_100455310;
  if (!qword_100455310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455310);
  }

  return result;
}

unint64_t sub_1002D5444()
{
  result = qword_100455360;
  if (!qword_100455360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455360);
  }

  return result;
}

unint64_t sub_1002D5498()
{
  result = qword_1004553B0;
  if (!qword_1004553B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004553B0);
  }

  return result;
}

unint64_t sub_1002D54EC()
{
  result = qword_100455400;
  if (!qword_100455400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455400);
  }

  return result;
}

unint64_t sub_1002D5540()
{
  result = qword_100455450;
  if (!qword_100455450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455450);
  }

  return result;
}

unint64_t sub_1002D5594()
{
  result = qword_1004554A0;
  if (!qword_1004554A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004554A0);
  }

  return result;
}

unint64_t sub_1002D55E8()
{
  result = qword_1004554F0;
  if (!qword_1004554F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004554F0);
  }

  return result;
}

unint64_t sub_1002D563C()
{
  result = qword_100455540;
  if (!qword_100455540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455540);
  }

  return result;
}

unint64_t sub_1002D5690()
{
  result = qword_100455590;
  if (!qword_100455590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455590);
  }

  return result;
}

unint64_t sub_1002D56E4()
{
  result = qword_1004555E0;
  if (!qword_1004555E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004555E0);
  }

  return result;
}

unint64_t sub_1002D5738()
{
  result = qword_100455630;
  if (!qword_100455630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455630);
  }

  return result;
}

unint64_t sub_1002D578C()
{
  result = qword_100455680;
  if (!qword_100455680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455680);
  }

  return result;
}

unint64_t sub_1002D57E0()
{
  result = qword_1004556D0;
  if (!qword_1004556D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004556D0);
  }

  return result;
}

unint64_t sub_1002D5834()
{
  result = qword_100455720;
  if (!qword_100455720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455720);
  }

  return result;
}

unint64_t sub_1002D5888()
{
  result = qword_100455770;
  if (!qword_100455770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455770);
  }

  return result;
}

unint64_t sub_1002D58DC()
{
  result = qword_1004557C0;
  if (!qword_1004557C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004557C0);
  }

  return result;
}

unint64_t sub_1002D5930()
{
  result = qword_100455810;
  if (!qword_100455810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455810);
  }

  return result;
}

uint64_t sub_1002D5984()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1002D59BC(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043F808, &unk_100352800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002D5A24()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002D5A5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10029CEE0(a1, v5);
}

uint64_t sub_1002D5B14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100023140;

  return sub_10029CEE0(a1, v5);
}

unint64_t sub_1002D5BCC()
{
  result = qword_100455860;
  if (!qword_100455860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455860);
  }

  return result;
}

unint64_t sub_1002D5C20()
{
  result = qword_1004558B0;
  if (!qword_1004558B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004558B0);
  }

  return result;
}

unint64_t sub_1002D5C74()
{
  result = qword_100455900;
  if (!qword_100455900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455900);
  }

  return result;
}

unint64_t sub_1002D5CC8()
{
  result = qword_100455958;
  if (!qword_100455958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455958);
  }

  return result;
}

unint64_t sub_1002D5D1C()
{
  result = qword_1004559A8;
  if (!qword_1004559A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004559A8);
  }

  return result;
}

unint64_t sub_1002D5D70()
{
  result = qword_1004559F8;
  if (!qword_1004559F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004559F8);
  }

  return result;
}

unint64_t sub_1002D5DC4()
{
  result = qword_100455A48;
  if (!qword_100455A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455A48);
  }

  return result;
}

unint64_t sub_1002D5E18()
{
  result = qword_100455A98;
  if (!qword_100455A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455A98);
  }

  return result;
}

unint64_t sub_1002D5E6C()
{
  result = qword_100455AE8;
  if (!qword_100455AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455AE8);
  }

  return result;
}

unint64_t sub_1002D5EC0()
{
  result = qword_100455B38;
  if (!qword_100455B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455B38);
  }

  return result;
}

unint64_t sub_1002D5F14()
{
  result = qword_100455B88;
  if (!qword_100455B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455B88);
  }

  return result;
}

unint64_t sub_1002D5F68()
{
  result = qword_100455BD8;
  if (!qword_100455BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455BD8);
  }

  return result;
}

unint64_t sub_1002D5FBC()
{
  result = qword_100455C28;
  if (!qword_100455C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455C28);
  }

  return result;
}

unint64_t sub_1002D6010()
{
  result = qword_100455C78;
  if (!qword_100455C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455C78);
  }

  return result;
}

unint64_t sub_1002D6064()
{
  result = qword_100455CC8;
  if (!qword_100455CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455CC8);
  }

  return result;
}

unint64_t sub_1002D60B8()
{
  result = qword_100455D18;
  if (!qword_100455D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455D18);
  }

  return result;
}

unint64_t sub_1002D610C()
{
  result = qword_100455D68;
  if (!qword_100455D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455D68);
  }

  return result;
}

unint64_t sub_1002D6160()
{
  result = qword_100455DB8;
  if (!qword_100455DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455DB8);
  }

  return result;
}

unint64_t sub_1002D61B4()
{
  result = qword_100455E08;
  if (!qword_100455E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455E08);
  }

  return result;
}

unint64_t sub_1002D6208()
{
  result = qword_100455E60;
  if (!qword_100455E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455E60);
  }

  return result;
}

unint64_t sub_1002D625C()
{
  result = qword_100455EB0;
  if (!qword_100455EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455EB0);
  }

  return result;
}

unint64_t sub_1002D62B0()
{
  result = qword_100455F00;
  if (!qword_100455F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455F00);
  }

  return result;
}

unint64_t sub_1002D6304()
{
  result = qword_100455F50;
  if (!qword_100455F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455F50);
  }

  return result;
}

unint64_t sub_1002D6358()
{
  result = qword_100455FA0;
  if (!qword_100455FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455FA0);
  }

  return result;
}

unint64_t sub_1002D63AC()
{
  result = qword_100455FF0;
  if (!qword_100455FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100455FF0);
  }

  return result;
}

unint64_t sub_1002D6400()
{
  result = qword_100456040;
  if (!qword_100456040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456040);
  }

  return result;
}

unint64_t sub_1002D6454()
{
  result = qword_100456090;
  if (!qword_100456090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456090);
  }

  return result;
}

unint64_t sub_1002D64A8()
{
  result = qword_1004560E0;
  if (!qword_1004560E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004560E0);
  }

  return result;
}

unint64_t sub_1002D64FC()
{
  result = qword_100456130;
  if (!qword_100456130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456130);
  }

  return result;
}

unint64_t sub_1002D6550()
{
  result = qword_100456180;
  if (!qword_100456180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456180);
  }

  return result;
}

unint64_t sub_1002D65A4()
{
  result = qword_1004561D0;
  if (!qword_1004561D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004561D0);
  }

  return result;
}

unint64_t sub_1002D65F8()
{
  result = qword_100456220;
  if (!qword_100456220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456220);
  }

  return result;
}

unint64_t sub_1002D664C()
{
  result = qword_100456270;
  if (!qword_100456270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456270);
  }

  return result;
}

unint64_t sub_1002D66A0()
{
  result = qword_1004562C0;
  if (!qword_1004562C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004562C0);
  }

  return result;
}

unint64_t sub_1002D66F4()
{
  result = qword_100456318;
  if (!qword_100456318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456318);
  }

  return result;
}

unint64_t sub_1002D6748()
{
  result = qword_100456368;
  if (!qword_100456368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456368);
  }

  return result;
}

unint64_t sub_1002D679C()
{
  result = qword_1004563B8;
  if (!qword_1004563B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004563B8);
  }

  return result;
}

unint64_t sub_1002D67F0()
{
  result = qword_100456408;
  if (!qword_100456408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456408);
  }

  return result;
}

unint64_t sub_1002D6844()
{
  result = qword_100456458;
  if (!qword_100456458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456458);
  }

  return result;
}

unint64_t sub_1002D6898()
{
  result = qword_1004564B0;
  if (!qword_1004564B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004564B0);
  }

  return result;
}

unint64_t sub_1002D68EC()
{
  result = qword_100456500;
  if (!qword_100456500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456500);
  }

  return result;
}

unint64_t sub_1002D6940()
{
  result = qword_100456550;
  if (!qword_100456550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456550);
  }

  return result;
}

unint64_t sub_1002D6994()
{
  result = qword_1004565A0;
  if (!qword_1004565A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004565A0);
  }

  return result;
}

unint64_t sub_1002D69E8()
{
  result = qword_1004565F0;
  if (!qword_1004565F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004565F0);
  }

  return result;
}

unint64_t sub_1002D6A3C()
{
  result = qword_100456640;
  if (!qword_100456640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456640);
  }

  return result;
}

unint64_t sub_1002D6A90()
{
  result = qword_100456690;
  if (!qword_100456690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456690);
  }

  return result;
}

unint64_t sub_1002D6AE4()
{
  result = qword_1004566E0;
  if (!qword_1004566E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004566E0);
  }

  return result;
}

unint64_t sub_1002D6B38()
{
  result = qword_100456730;
  if (!qword_100456730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456730);
  }

  return result;
}

unint64_t sub_1002D6B8C()
{
  result = qword_100456780;
  if (!qword_100456780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456780);
  }

  return result;
}

unint64_t sub_1002D6BE0()
{
  result = qword_1004567D0;
  if (!qword_1004567D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004567D0);
  }

  return result;
}

unint64_t sub_1002D6C34()
{
  result = qword_100456820;
  if (!qword_100456820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456820);
  }

  return result;
}

unint64_t sub_1002D6C88()
{
  result = qword_100456870;
  if (!qword_100456870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456870);
  }

  return result;
}

unint64_t sub_1002D6CDC()
{
  result = qword_1004568C0;
  if (!qword_1004568C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004568C0);
  }

  return result;
}

unint64_t sub_1002D6D30()
{
  result = qword_100456910;
  if (!qword_100456910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100456910);
  }

  return result;
}

uint64_t sub_1002D6D84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}