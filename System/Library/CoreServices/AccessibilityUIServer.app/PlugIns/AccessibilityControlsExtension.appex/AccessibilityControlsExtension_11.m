uint64_t sub_10015AC64()
{
  v1 = *(v0 + 16);
  *v1 = _AXSHapticMusicEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015ACF8()
{
  v1 = *(v0 + 16);
  _AXSSetHapticMusicEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015AD5C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10015ADEC, 0, 0);
}

uint64_t sub_10015ADEC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044A4F8, qword_10030D9C8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455738, &qword_100455740, &qword_100352690);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000018;
  v2[1] = 0x800000010037C950;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10015AF34()
{
  result = qword_10044A520;
  if (!qword_10044A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A520);
  }

  return result;
}

uint64_t sub_10015AF88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10015B558();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10015B03C()
{
  result = qword_10044A528;
  if (!qword_10044A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A528);
  }

  return result;
}

unint64_t sub_10015B094()
{
  result = qword_10044A530;
  if (!qword_10044A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A530);
  }

  return result;
}

unint64_t sub_10015B0EC()
{
  result = qword_10044A538;
  if (!qword_10044A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A538);
  }

  return result;
}

uint64_t sub_10015B140(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10015B558();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10015B1F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10015B558();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10015B2A8()
{
  result = qword_10044A540;
  if (!qword_10044A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A540);
  }

  return result;
}

unint64_t sub_10015B300()
{
  result = qword_10044A548;
  if (!qword_10044A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A548);
  }

  return result;
}

uint64_t sub_10015B398(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10015AF34();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10015B450()
{
  result = qword_10044A560;
  if (!qword_10044A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A560);
  }

  return result;
}

unint64_t sub_10015B4A8()
{
  result = qword_10044A568;
  if (!qword_10044A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A568);
  }

  return result;
}

unint64_t sub_10015B500()
{
  result = qword_10044A570;
  if (!qword_10044A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A570);
  }

  return result;
}

unint64_t sub_10015B558()
{
  result = qword_10044A578;
  if (!qword_10044A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A578);
  }

  return result;
}

uint64_t sub_10015B5AC()
{
  v0 = qword_100446DD8;

  return v0;
}

unint64_t sub_10015B5E8()
{
  result = qword_10044A580;
  if (!qword_10044A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A580);
  }

  return result;
}

uint64_t sub_10015B63C()
{
  v0 = sub_10000321C(&qword_100455728, &qword_100352670);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455730, &qword_100352678);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10015B0EC();
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

unint64_t sub_10015B804()
{
  result = qword_10044A588;
  if (!qword_10044A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A588);
  }

  return result;
}

unint64_t sub_10015B85C()
{
  result = qword_10044A590;
  if (!qword_10044A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A590);
  }

  return result;
}

unint64_t sub_10015B8B4()
{
  result = qword_10044A598;
  if (!qword_10044A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A598);
  }

  return result;
}

uint64_t sub_10015B908()
{
  sub_1002D5834();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10015B9F0(uint64_t a1)
{
  v2 = sub_10015B0EC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10015BA40()
{
  result = qword_10044A5B0;
  if (!qword_10044A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5B0);
  }

  return result;
}

uint64_t sub_10015BA98(uint64_t a1)
{
  v2 = sub_10015B8B4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10015BAE8()
{
  result = qword_10044A5B8;
  if (!qword_10044A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5B8);
  }

  return result;
}

uint64_t sub_10015BBA4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10015BF18()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D900);
  sub_10001EDB8(v0, qword_10051D900);
  return sub_1002D88F0();
}

uint64_t sub_10015BF7C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D918);
  v1 = sub_10001EDB8(v0, qword_10051D918);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10015C03C()
{
  result = swift_getKeyPath();
  qword_10051D930 = result;
  return result;
}

uint64_t sub_10015C064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455700, &qword_100352630) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455708, &qword_100352638);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10015C244, 0, 0);
}

uint64_t sub_10015C244()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10015D388();
  *v4 = v0;
  v4[1] = sub_10015C328;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6EFC, 0, &type metadata for MonoAudioEnabledEntity, v5);
}

uint64_t sub_10015C328()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10015C424, 0, 0);
}

uint64_t sub_10015C424()
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
  if (qword_10043A800 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D930;
  *(v0 + 288) = qword_10051D930;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004556E8, &qword_1004556F0, &qword_100352618);
  *v7 = v0;
  v7[1] = sub_10015C588;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10015C588()
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
    v6 = sub_10015C6F8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10015C6F8()
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
  sub_10015BAE8();
  sub_10015D59C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10015C970()
{
  v0 = sub_10000321C(&qword_100455710, &qword_100352640);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A800 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10015D59C();
  sub_10002B6E4(&qword_100455718, &qword_100455710, &qword_100352640);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10015CAE4(uint64_t *a1))(void *)
{
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

void (*sub_10015CB58(uint64_t *a1))(void *)
{
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

unint64_t sub_10015CBF4()
{
  result = qword_10044A5D0;
  if (!qword_10044A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5D0);
  }

  return result;
}

unint64_t sub_10015CC4C()
{
  result = qword_10044A5D8;
  if (!qword_10044A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5D8);
  }

  return result;
}

uint64_t sub_10015CD48(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10015C064(a1, v5, v4);
}

uint64_t sub_10015CDF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002ACB24();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10015CE3C()
{
  result = qword_10044A5E0;
  if (!qword_10044A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5E0);
  }

  return result;
}

unint64_t sub_10015CE94()
{
  result = qword_10044A5E8;
  if (!qword_10044A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5E8);
  }

  return result;
}

uint64_t sub_10015CF08()
{
  v1 = *(v0 + 16);
  *v1 = _AXSMonoAudioEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015CF9C()
{
  v1 = *(v0 + 16);
  _AXSMonoAudioSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015D000(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10015D090, 0, 0);
}

uint64_t sub_10015D090()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044A5C8, qword_10030E000);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004556E8, &qword_1004556F0, &qword_100352618);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000021;
  v2[1] = 0x800000010035D730;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10015D1D0()
{
  result = qword_10044A5F0;
  if (!qword_10044A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5F0);
  }

  return result;
}

uint64_t sub_10015D224(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10015D7F4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10015D2D8()
{
  result = qword_10044A5F8;
  if (!qword_10044A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A5F8);
  }

  return result;
}

unint64_t sub_10015D330()
{
  result = qword_10044A600;
  if (!qword_10044A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A600);
  }

  return result;
}

unint64_t sub_10015D388()
{
  result = qword_10044A608;
  if (!qword_10044A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A608);
  }

  return result;
}

uint64_t sub_10015D3DC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10015D7F4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10015D490(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10015D7F4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10015D544()
{
  result = qword_10044A610;
  if (!qword_10044A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A610);
  }

  return result;
}

unint64_t sub_10015D59C()
{
  result = qword_10044A618;
  if (!qword_10044A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A618);
  }

  return result;
}

uint64_t sub_10015D634(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10015D1D0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10015D6EC()
{
  result = qword_10044A630;
  if (!qword_10044A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A630);
  }

  return result;
}

unint64_t sub_10015D744()
{
  result = qword_10044A638;
  if (!qword_10044A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A638);
  }

  return result;
}

unint64_t sub_10015D79C()
{
  result = qword_10044A640;
  if (!qword_10044A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A640);
  }

  return result;
}

unint64_t sub_10015D7F4()
{
  result = qword_10044A648;
  if (!qword_10044A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A648);
  }

  return result;
}

uint64_t sub_10015D848()
{
  v0 = qword_100446DE8;

  return v0;
}

unint64_t sub_10015D884()
{
  result = qword_10044A650;
  if (!qword_10044A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A650);
  }

  return result;
}

uint64_t sub_10015D8D8()
{
  v0 = sub_10000321C(&qword_1004556D8, &qword_1003525F8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004556E0, &qword_100352600);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10015D388();
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

unint64_t sub_10015DAA0()
{
  result = qword_10044A658;
  if (!qword_10044A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A658);
  }

  return result;
}

unint64_t sub_10015DAF8()
{
  result = qword_10044A660;
  if (!qword_10044A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A660);
  }

  return result;
}

unint64_t sub_10015DB50()
{
  result = qword_10044A668;
  if (!qword_10044A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A668);
  }

  return result;
}

uint64_t sub_10015DBA4()
{
  sub_1002D57E0();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10015DC8C(uint64_t a1)
{
  v2 = sub_10015D388();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10015DCDC()
{
  result = qword_10044A680;
  if (!qword_10044A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A680);
  }

  return result;
}

uint64_t sub_10015DD34(uint64_t a1)
{
  v2 = sub_10015DB50();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10015DD84()
{
  result = qword_10044A688;
  if (!qword_10044A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A688);
  }

  return result;
}

uint64_t sub_10015DE1C()
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
  sub_10001EDF0(v7, qword_10051D938);
  sub_10001EDB8(v7, qword_10051D938);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10015DF8C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10015E2FC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D950);
  sub_10001EDB8(v0, qword_10051D950);
  return sub_1002D88F0();
}

uint64_t sub_10015E360()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D968);
  v1 = sub_10001EDB8(v0, qword_10051D968);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10015E420()
{
  result = swift_getKeyPath();
  qword_10051D980 = result;
  return result;
}

uint64_t sub_10015E448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004556B0, &qword_1003525B8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004556B8, &qword_1003525C0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10015E628, 0, 0);
}

uint64_t sub_10015E628()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10015F778();
  *v4 = v0;
  v4[1] = sub_10015E70C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F00, 0, &type metadata for AlwaysShowVolumeControlEntity, v5);
}

uint64_t sub_10015E70C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10015E808, 0, 0);
}

uint64_t sub_10015E808()
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
  if (qword_10043A820 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D980;
  *(v0 + 288) = qword_10051D980;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455698, &qword_1004556A0, &qword_1003525A0);
  *v7 = v0;
  v7[1] = sub_10015E96C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10015E96C()
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
    v6 = sub_10015EADC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10015EADC()
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
  sub_10015DD84();
  sub_10015F98C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10015ED54()
{
  v0 = sub_10000321C(&qword_1004556C0, &qword_1003525C8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A820 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10015F98C();
  sub_10002B6E4(&qword_1004556C8, &qword_1004556C0, &qword_1003525C8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10015EEC8(uint64_t *a1))(void *)
{
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

void (*sub_10015EF3C(uint64_t *a1))(void *)
{
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

unint64_t sub_10015EFD8()
{
  result = qword_10044A6A0;
  if (!qword_10044A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6A0);
  }

  return result;
}

unint64_t sub_10015F030()
{
  result = qword_10044A6A8;
  if (!qword_10044A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6A8);
  }

  return result;
}

uint64_t sub_10015F12C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10015E448(a1, v5, v4);
}

uint64_t sub_10015F1D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002ACF8C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10015F220()
{
  result = qword_10044A6B0;
  if (!qword_10044A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6B0);
  }

  return result;
}

unint64_t sub_10015F278()
{
  result = qword_10044A6B8;
  if (!qword_10044A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6B8);
  }

  return result;
}

uint64_t sub_10015F2EC()
{
  v1 = *(v0 + 16);
  *v1 = _AXSAlwaysShowVolumeControlEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015F380()
{
  v1 = *(v0 + 16);
  _AXSAlwaysShowVolumeControlSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015F3E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10015F474, 0, 0);
}

uint64_t sub_10015F474()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044A698, qword_10030E638);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455698, &qword_1004556A0, &qword_1003525A0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000034;
  v2[1] = 0x8000000100361CF0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10015F5C0()
{
  result = qword_10044A6C0;
  if (!qword_10044A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6C0);
  }

  return result;
}

uint64_t sub_10015F614(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10015FBE4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10015F6C8()
{
  result = qword_10044A6C8;
  if (!qword_10044A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6C8);
  }

  return result;
}

unint64_t sub_10015F720()
{
  result = qword_10044A6D0;
  if (!qword_10044A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6D0);
  }

  return result;
}

unint64_t sub_10015F778()
{
  result = qword_10044A6D8;
  if (!qword_10044A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6D8);
  }

  return result;
}

uint64_t sub_10015F7CC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10015FBE4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10015F880(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10015FBE4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10015F934()
{
  result = qword_10044A6E0;
  if (!qword_10044A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6E0);
  }

  return result;
}

unint64_t sub_10015F98C()
{
  result = qword_10044A6E8;
  if (!qword_10044A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A6E8);
  }

  return result;
}

uint64_t sub_10015FA24(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10015F5C0();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10015FADC()
{
  result = qword_10044A700;
  if (!qword_10044A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A700);
  }

  return result;
}

unint64_t sub_10015FB34()
{
  result = qword_10044A708;
  if (!qword_10044A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A708);
  }

  return result;
}

unint64_t sub_10015FB8C()
{
  result = qword_10044A710;
  if (!qword_10044A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A710);
  }

  return result;
}

unint64_t sub_10015FBE4()
{
  result = qword_10044A718;
  if (!qword_10044A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A718);
  }

  return result;
}

uint64_t sub_10015FC38()
{
  v0 = qword_100446DF8;

  return v0;
}

unint64_t sub_10015FC74()
{
  result = qword_10044A720;
  if (!qword_10044A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A720);
  }

  return result;
}

uint64_t sub_10015FCC8()
{
  v0 = sub_10000321C(&qword_100455688, &qword_100352580);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455690, &qword_100352588);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10015F778();
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

unint64_t sub_10015FE90()
{
  result = qword_10044A728;
  if (!qword_10044A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A728);
  }

  return result;
}

unint64_t sub_10015FEE8()
{
  result = qword_10044A730;
  if (!qword_10044A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A730);
  }

  return result;
}

unint64_t sub_10015FF40()
{
  result = qword_10044A738;
  if (!qword_10044A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A738);
  }

  return result;
}

uint64_t sub_10015FF94()
{
  sub_1002D578C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10016007C(uint64_t a1)
{
  v2 = sub_10015F778();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001600CC()
{
  result = qword_10044A750;
  if (!qword_10044A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A750);
  }

  return result;
}

uint64_t sub_100160124(uint64_t a1)
{
  v2 = sub_10015FF40();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100160174()
{
  result = qword_10044A758;
  if (!qword_10044A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A758);
  }

  return result;
}

uint64_t sub_100160238@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001605B4()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D9A0);
  sub_10001EDB8(v0, qword_10051D9A0);
  return sub_1002D88F0();
}

uint64_t sub_100160618()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051D9B8);
  v1 = sub_10001EDB8(v0, qword_10051D9B8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001606D8()
{
  result = swift_getKeyPath();
  qword_10051D9D0 = result;
  return result;
}

uint64_t sub_100160700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455660, &qword_100352540) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455668, &qword_100352548);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001608E0, 0, 0);
}

uint64_t sub_1001608E0()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100161A94();
  *v4 = v0;
  v4[1] = sub_1001609C4;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F04, 0, &type metadata for StartupSoundsEnabledEntity, v5);
}

uint64_t sub_1001609C4()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100160AC0, 0, 0);
}

uint64_t sub_100160AC0()
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
  if (qword_10043A840 != -1)
  {
    swift_once();
  }

  v5 = qword_10051D9D0;
  *(v0 + 288) = qword_10051D9D0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455648, &qword_100455650, &qword_100352528);
  *v7 = v0;
  v7[1] = sub_100160C24;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100160C24()
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
    v6 = sub_100160D94;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100160D94()
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
  sub_100160174();
  sub_100161CA8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10016100C()
{
  v0 = sub_10000321C(&qword_100455670, &qword_100352550);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A840 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100161CA8();
  sub_10002B6E4(&qword_100455678, &qword_100455670, &qword_100352550);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100161180(uint64_t *a1))(void *)
{
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

void (*sub_1001611F4(uint64_t *a1))(void *)
{
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

unint64_t sub_100161290()
{
  result = qword_10044A770;
  if (!qword_10044A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A770);
  }

  return result;
}

unint64_t sub_1001612E8()
{
  result = qword_10044A778;
  if (!qword_10044A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A778);
  }

  return result;
}

uint64_t sub_1001613E4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100160700(a1, v5, v4);
}

uint64_t sub_100161490@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AD3F4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001614D8()
{
  result = qword_10044A780;
  if (!qword_10044A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A780);
  }

  return result;
}

unint64_t sub_100161530()
{
  result = qword_10044A788;
  if (!qword_10044A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A788);
  }

  return result;
}

uint64_t sub_1001615A4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 startupSoundEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10016166C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setStartupSoundEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100161704(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100161794, 0, 0);
}

uint64_t sub_100161794()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044A768, qword_10030EC70);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455648, &qword_100455650, &qword_100352528);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001FLL;
  v2[1] = 0x800000010035B220;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001618DC()
{
  result = qword_10044A790;
  if (!qword_10044A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A790);
  }

  return result;
}

uint64_t sub_100161930(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100161F00();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001619E4()
{
  result = qword_10044A798;
  if (!qword_10044A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A798);
  }

  return result;
}

unint64_t sub_100161A3C()
{
  result = qword_10044A7A0;
  if (!qword_10044A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7A0);
  }

  return result;
}

unint64_t sub_100161A94()
{
  result = qword_10044A7A8;
  if (!qword_10044A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7A8);
  }

  return result;
}

uint64_t sub_100161AE8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100161F00();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100161B9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100161F00();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100161C50()
{
  result = qword_10044A7B0;
  if (!qword_10044A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7B0);
  }

  return result;
}

unint64_t sub_100161CA8()
{
  result = qword_10044A7B8;
  if (!qword_10044A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7B8);
  }

  return result;
}

uint64_t sub_100161D40(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001618DC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100161DF8()
{
  result = qword_10044A7D0;
  if (!qword_10044A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7D0);
  }

  return result;
}

unint64_t sub_100161E50()
{
  result = qword_10044A7D8;
  if (!qword_10044A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7D8);
  }

  return result;
}

unint64_t sub_100161EA8()
{
  result = qword_10044A7E0;
  if (!qword_10044A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7E0);
  }

  return result;
}

unint64_t sub_100161F00()
{
  result = qword_10044A7E8;
  if (!qword_10044A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7E8);
  }

  return result;
}

uint64_t sub_100161F54()
{
  v0 = qword_100446E08;

  return v0;
}

unint64_t sub_100161F90()
{
  result = qword_10044A7F0;
  if (!qword_10044A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7F0);
  }

  return result;
}

uint64_t sub_100161FE4()
{
  v0 = sub_10000321C(&qword_100455638, &qword_100352508);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455640, &qword_100352510);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100161A94();
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

unint64_t sub_1001621AC()
{
  result = qword_10044A7F8;
  if (!qword_10044A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A7F8);
  }

  return result;
}

unint64_t sub_100162204()
{
  result = qword_10044A800;
  if (!qword_10044A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A800);
  }

  return result;
}

unint64_t sub_10016225C()
{
  result = qword_10044A808;
  if (!qword_10044A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A808);
  }

  return result;
}

uint64_t sub_1001622B0()
{
  sub_1002D5738();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100162398(uint64_t a1)
{
  v2 = sub_100161A94();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001623E8()
{
  result = qword_10044A820;
  if (!qword_10044A820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A820);
  }

  return result;
}

uint64_t sub_100162440(uint64_t a1)
{
  v2 = sub_10016225C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100162490()
{
  result = qword_10044A828;
  if (!qword_10044A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A828);
  }

  return result;
}

uint64_t sub_100162550()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051D9F0);
  sub_10001EDB8(v0, qword_10051D9F0);
  return sub_1002D88F0();
}

uint64_t sub_1001625B4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DA08);
  v1 = sub_10001EDB8(v0, qword_10051DA08);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100162674()
{
  result = swift_getKeyPath();
  qword_10051DA20 = result;
  return result;
}

uint64_t sub_10016269C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455610, &qword_1003524C8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455618, &qword_1003524D0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10016287C, 0, 0);
}

uint64_t sub_10016287C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100163A38();
  *v4 = v0;
  v4[1] = sub_100162960;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F08, 0, &type metadata for SoftwareRTTEnabledEntity, v5);
}

uint64_t sub_100162960()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100162A5C, 0, 0);
}

uint64_t sub_100162A5C()
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
  if (qword_10043A860 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DA20;
  *(v0 + 288) = qword_10051DA20;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004555F8, &qword_100455600, &qword_1003524B0);
  *v7 = v0;
  v7[1] = sub_100162BC0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100162BC0()
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
    v6 = sub_100162D30;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100162D30()
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
  sub_100162490();
  sub_100163C4C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100162FA8()
{
  v0 = sub_10000321C(&qword_100455620, &qword_1003524D8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A860 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100163C4C();
  sub_10002B6E4(&qword_100455628, &qword_100455620, &qword_1003524D8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10016311C(uint64_t *a1))(void *)
{
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

void (*sub_100163190(uint64_t *a1))(void *)
{
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

unint64_t sub_10016322C()
{
  result = qword_10044A840;
  if (!qword_10044A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A840);
  }

  return result;
}

unint64_t sub_100163284()
{
  result = qword_10044A848;
  if (!qword_10044A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A848);
  }

  return result;
}

uint64_t sub_100163380(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10016269C(a1, v5, v4);
}

uint64_t sub_10016342C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AD85C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100163474()
{
  result = qword_10044A850;
  if (!qword_10044A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A850);
  }

  return result;
}

unint64_t sub_1001634CC()
{
  result = qword_10044A858;
  if (!qword_10044A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A858);
  }

  return result;
}

id sub_100163540()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result TTYSoftwareEnabled];

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

id sub_100163610()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    [result setTTYSoftwareEnabled:*(v0 + 16)];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001636AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10016373C, 0, 0);
}

uint64_t sub_10016373C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044A838, qword_10030F2A8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004555F8, &qword_100455600, &qword_1003524B0);
  v3 = sub_1002D88A0();
  *v2 = 0x545F575323545452;
  v2[1] = 0xEA00000000005954;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100163880()
{
  result = qword_10044A860;
  if (!qword_10044A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A860);
  }

  return result;
}

uint64_t sub_1001638D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100163EA4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100163988()
{
  result = qword_10044A868;
  if (!qword_10044A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A868);
  }

  return result;
}

unint64_t sub_1001639E0()
{
  result = qword_10044A870;
  if (!qword_10044A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A870);
  }

  return result;
}

unint64_t sub_100163A38()
{
  result = qword_10044A878;
  if (!qword_10044A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A878);
  }

  return result;
}

uint64_t sub_100163A8C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100163EA4();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100163B40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100163EA4();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100163BF4()
{
  result = qword_10044A880;
  if (!qword_10044A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A880);
  }

  return result;
}

unint64_t sub_100163C4C()
{
  result = qword_10044A888;
  if (!qword_10044A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A888);
  }

  return result;
}

uint64_t sub_100163CE4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100163880();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100163D9C()
{
  result = qword_10044A8A0;
  if (!qword_10044A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8A0);
  }

  return result;
}

unint64_t sub_100163DF4()
{
  result = qword_10044A8A8;
  if (!qword_10044A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8A8);
  }

  return result;
}

unint64_t sub_100163E4C()
{
  result = qword_10044A8B0;
  if (!qword_10044A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8B0);
  }

  return result;
}

unint64_t sub_100163EA4()
{
  result = qword_10044A8B8;
  if (!qword_10044A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8B8);
  }

  return result;
}

uint64_t sub_100163EF8()
{
  v0 = qword_100446E18;

  return v0;
}

unint64_t sub_100163F34()
{
  result = qword_10044A8C0;
  if (!qword_10044A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8C0);
  }

  return result;
}

uint64_t sub_100163F88()
{
  v0 = sub_10000321C(&qword_1004555E8, &qword_100352490);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004555F0, &qword_100352498);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100163A38();
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

unint64_t sub_100164150()
{
  result = qword_10044A8C8;
  if (!qword_10044A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8C8);
  }

  return result;
}

unint64_t sub_1001641A8()
{
  result = qword_10044A8D0;
  if (!qword_10044A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8D0);
  }

  return result;
}

unint64_t sub_100164200()
{
  result = qword_10044A8D8;
  if (!qword_10044A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8D8);
  }

  return result;
}

uint64_t sub_100164254()
{
  sub_1002D56E4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10016433C(uint64_t a1)
{
  v2 = sub_100163A38();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10016438C()
{
  result = qword_10044A8F0;
  if (!qword_10044A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8F0);
  }

  return result;
}

uint64_t sub_100164424(uint64_t a1)
{
  v2 = sub_100164200();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100164474()
{
  result = qword_10044A8F8;
  if (!qword_10044A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A8F8);
  }

  return result;
}

uint64_t sub_100164534@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v25[0] = a1;
  v25[1] = a2;
  v25[2] = a3;
  v3 = sub_1002D8990();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1002D8900();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1002D8CF0();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10000321C(&qword_10043CA30, &unk_1002F76C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v25 - v13;
  v15 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v25 - v17;
  v19 = sub_1002D8910();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  __chkstk_darwin(v22);
  sub_1002D88F0();
  sub_1002D88F0();
  (*(v20 + 56))(v18, 0, 1, v19);
  sub_1002D8690();
  v23 = sub_1002D86B0();
  (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
  sub_1002D8CE0();
  sub_1000B4F14(v8);
  sub_1002D8980();
  sub_1002D8920();
  return sub_1002D86D0();
}

uint64_t sub_100164898()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DA40);
  sub_10001EDB8(v0, qword_10051DA40);
  return sub_1002D88F0();
}

uint64_t sub_1001648FC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DA58);
  v1 = sub_10001EDB8(v0, qword_10051DA58);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001649BC()
{
  result = swift_getKeyPath();
  qword_10051DA70 = result;
  return result;
}

uint64_t sub_1001649E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004555C0, &qword_100352450) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004555C8, &qword_100352458);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100164BC4, 0, 0);
}

uint64_t sub_100164BC4()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100165D80();
  *v4 = v0;
  v4[1] = sub_100164CA8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F0C, 0, &type metadata for HardwareTTYEnabledEntity, v5);
}

uint64_t sub_100164CA8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100164DA4, 0, 0);
}

uint64_t sub_100164DA4()
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
  if (qword_10043A880 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DA70;
  *(v0 + 288) = qword_10051DA70;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004555A8, &qword_1004555B0, &qword_100352438);
  *v7 = v0;
  v7[1] = sub_100164F08;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100164F08()
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
    v6 = sub_100165078;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100165078()
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
  sub_100164474();
  sub_100165F94();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001652F0()
{
  v0 = sub_10000321C(&qword_1004555D0, &qword_100352460);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A880 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100165F94();
  sub_10002B6E4(&qword_1004555D8, &qword_1004555D0, &qword_100352460);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100165464(uint64_t *a1))(void *)
{
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

void (*sub_1001654D8(uint64_t *a1))(void *)
{
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

unint64_t sub_100165574()
{
  result = qword_10044A910;
  if (!qword_10044A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A910);
  }

  return result;
}

unint64_t sub_1001655CC()
{
  result = qword_10044A918;
  if (!qword_10044A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A918);
  }

  return result;
}

uint64_t sub_1001656C8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001649E4(a1, v5, v4);
}

uint64_t sub_100165774@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002ADCC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001657BC()
{
  result = qword_10044A920;
  if (!qword_10044A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A920);
  }

  return result;
}

unint64_t sub_100165814()
{
  result = qword_10044A928;
  if (!qword_10044A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A928);
  }

  return result;
}

id sub_100165888()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result TTYHardwareEnabled];

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

id sub_100165958()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    [result setTTYHardwareEnabled:*(v0 + 16)];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001659F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100165A84, 0, 0);
}

uint64_t sub_100165A84()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044A908, qword_10030F8E0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004555A8, &qword_1004555B0, &qword_100352438);
  v3 = sub_1002D88A0();
  *v2 = 0x545F574823545452;
  v2[1] = 0xEA00000000005954;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100165BC8()
{
  result = qword_10044A930;
  if (!qword_10044A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A930);
  }

  return result;
}

uint64_t sub_100165C1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001661EC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100165CD0()
{
  result = qword_10044A938;
  if (!qword_10044A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A938);
  }

  return result;
}

unint64_t sub_100165D28()
{
  result = qword_10044A940;
  if (!qword_10044A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A940);
  }

  return result;
}

unint64_t sub_100165D80()
{
  result = qword_10044A948;
  if (!qword_10044A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A948);
  }

  return result;
}

uint64_t sub_100165DD4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001661EC();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100165E88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001661EC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100165F3C()
{
  result = qword_10044A950;
  if (!qword_10044A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A950);
  }

  return result;
}

unint64_t sub_100165F94()
{
  result = qword_10044A958;
  if (!qword_10044A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A958);
  }

  return result;
}

uint64_t sub_10016602C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100165BC8();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001660E4()
{
  result = qword_10044A970;
  if (!qword_10044A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A970);
  }

  return result;
}

unint64_t sub_10016613C()
{
  result = qword_10044A978;
  if (!qword_10044A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A978);
  }

  return result;
}

unint64_t sub_100166194()
{
  result = qword_10044A980;
  if (!qword_10044A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A980);
  }

  return result;
}

unint64_t sub_1001661EC()
{
  result = qword_10044A988;
  if (!qword_10044A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A988);
  }

  return result;
}

uint64_t sub_100166240()
{
  v0 = qword_100446E28;

  return v0;
}

unint64_t sub_10016627C()
{
  result = qword_10044A990;
  if (!qword_10044A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A990);
  }

  return result;
}

uint64_t sub_1001662D0()
{
  v0 = sub_10000321C(&qword_100455598, &qword_100352418);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004555A0, &qword_100352420);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100165D80();
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

unint64_t sub_100166498()
{
  result = qword_10044A998;
  if (!qword_10044A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A998);
  }

  return result;
}

unint64_t sub_1001664F0()
{
  result = qword_10044A9A0;
  if (!qword_10044A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9A0);
  }

  return result;
}

unint64_t sub_100166548()
{
  result = qword_10044A9A8;
  if (!qword_10044A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9A8);
  }

  return result;
}

uint64_t sub_10016659C()
{
  sub_1002D5690();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100166684(uint64_t a1)
{
  v2 = sub_100165D80();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001666D4()
{
  result = qword_10044A9C0;
  if (!qword_10044A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9C0);
  }

  return result;
}

uint64_t sub_10016676C(uint64_t a1)
{
  v2 = sub_100166548();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001667BC()
{
  result = qword_10044A9C8;
  if (!qword_10044A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9C8);
  }

  return result;
}

uint64_t sub_100166854()
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
  sub_10001EDF0(v7, qword_10051DA78);
  sub_10001EDB8(v7, qword_10051DA78);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001669C4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100166D34()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DA90);
  sub_10001EDB8(v0, qword_10051DA90);
  return sub_1002D88F0();
}

uint64_t sub_100166D98()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DAA8);
  v1 = sub_10001EDB8(v0, qword_10051DAA8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100166E58()
{
  result = swift_getKeyPath();
  qword_10051DAC0 = result;
  return result;
}

uint64_t sub_100166E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455570, &qword_1003523D8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455578, &qword_1003523E0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100167060, 0, 0);
}

uint64_t sub_100167060()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001681B0();
  *v4 = v0;
  v4[1] = sub_100167144;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F10, 0, &type metadata for AccessibilityHearingAidCompatibilityEnabledEntity, v5);
}

uint64_t sub_100167144()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100167240, 0, 0);
}

uint64_t sub_100167240()
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
  if (qword_10043A8A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DAC0;
  *(v0 + 288) = qword_10051DAC0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455558, &qword_100455560, &qword_1003523C0);
  *v7 = v0;
  v7[1] = sub_1001673A4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001673A4()
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
    v6 = sub_100167514;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100167514()
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
  sub_1001667BC();
  sub_1001683C4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10016778C()
{
  v0 = sub_10000321C(&qword_100455580, &qword_1003523E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A8A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001683C4();
  sub_10002B6E4(&qword_100455588, &qword_100455580, &qword_1003523E8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100167900(uint64_t *a1))(void *)
{
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

void (*sub_100167974(uint64_t *a1))(void *)
{
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

unint64_t sub_100167A10()
{
  result = qword_10044A9E0;
  if (!qword_10044A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9E0);
  }

  return result;
}

unint64_t sub_100167A68()
{
  result = qword_10044A9E8;
  if (!qword_10044A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9E8);
  }

  return result;
}

uint64_t sub_100167B64(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100166E80(a1, v5, v4);
}

uint64_t sub_100167C10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AE12C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100167C58()
{
  result = qword_10044A9F0;
  if (!qword_10044A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9F0);
  }

  return result;
}

unint64_t sub_100167CB0()
{
  result = qword_10044A9F8;
  if (!qword_10044A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044A9F8);
  }

  return result;
}

uint64_t sub_100167D24()
{
  v1 = *(v0 + 16);
  *v1 = AXHACHearingAidComplianceEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100167DB8()
{
  v1 = *(v0 + 16);
  AXHACHearingAidComplianceSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100167E1C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100167EAC, 0, 0);
}

uint64_t sub_100167EAC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044A9D8, qword_10030FF18);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455558, &qword_100455560, &qword_1003523C0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000028;
  v2[1] = 0x800000010035EF20;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100167FF8()
{
  result = qword_10044AA00;
  if (!qword_10044AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA00);
  }

  return result;
}

uint64_t sub_10016804C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10016861C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100168100()
{
  result = qword_10044AA08;
  if (!qword_10044AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA08);
  }

  return result;
}

unint64_t sub_100168158()
{
  result = qword_10044AA10;
  if (!qword_10044AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA10);
  }

  return result;
}

unint64_t sub_1001681B0()
{
  result = qword_10044AA18;
  if (!qword_10044AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA18);
  }

  return result;
}

uint64_t sub_100168204(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10016861C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001682B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10016861C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10016836C()
{
  result = qword_10044AA20;
  if (!qword_10044AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA20);
  }

  return result;
}

unint64_t sub_1001683C4()
{
  result = qword_10044AA28;
  if (!qword_10044AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA28);
  }

  return result;
}

uint64_t sub_10016845C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100167FF8();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100168514()
{
  result = qword_10044AA40;
  if (!qword_10044AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA40);
  }

  return result;
}

unint64_t sub_10016856C()
{
  result = qword_10044AA48;
  if (!qword_10044AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA48);
  }

  return result;
}

unint64_t sub_1001685C4()
{
  result = qword_10044AA50;
  if (!qword_10044AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA50);
  }

  return result;
}

unint64_t sub_10016861C()
{
  result = qword_10044AA58;
  if (!qword_10044AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA58);
  }

  return result;
}

uint64_t sub_100168670()
{
  v0 = qword_100446E38;

  return v0;
}

unint64_t sub_1001686AC()
{
  result = qword_10044AA60;
  if (!qword_10044AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA60);
  }

  return result;
}

uint64_t sub_100168700()
{
  v0 = sub_10000321C(&qword_100455548, &qword_1003523A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455550, &qword_1003523A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001681B0();
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

unint64_t sub_1001688C8()
{
  result = qword_10044AA68;
  if (!qword_10044AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA68);
  }

  return result;
}

unint64_t sub_100168920()
{
  result = qword_10044AA70;
  if (!qword_10044AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA70);
  }

  return result;
}

unint64_t sub_100168978()
{
  result = qword_10044AA78;
  if (!qword_10044AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA78);
  }

  return result;
}

uint64_t sub_1001689CC()
{
  sub_1002D563C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100168AB4(uint64_t a1)
{
  v2 = sub_1001681B0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100168B04()
{
  result = qword_10044AA90;
  if (!qword_10044AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA90);
  }

  return result;
}

uint64_t sub_100168B5C(uint64_t a1)
{
  v2 = sub_100168978();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100168BAC()
{
  result = qword_10044AA98;
  if (!qword_10044AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AA98);
  }

  return result;
}

uint64_t sub_100168C44()
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
  sub_10001EDF0(v7, qword_10051DAC8);
  sub_10001EDB8(v7, qword_10051DAC8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100168DB4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100169130()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DAE0);
  sub_10001EDB8(v0, qword_10051DAE0);
  return sub_1002D88F0();
}

uint64_t sub_100169194()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DAF8);
  v1 = sub_10001EDB8(v0, qword_10051DAF8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100169254()
{
  result = swift_getKeyPath();
  qword_10051DB10 = result;
  return result;
}

uint64_t sub_10016927C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455520, &qword_100352360) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455528, &qword_100352368);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10016945C, 0, 0);
}

uint64_t sub_10016945C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10016A614();
  *v4 = v0;
  v4[1] = sub_100169540;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F14, 0, &type metadata for AccessibilityLeftRightBalanceEnabledEntity, v5);
}

uint64_t sub_100169540()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10016963C, 0, 0);
}

uint64_t sub_10016963C()
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
  if (qword_10043A8C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DB10;
  *(v0 + 288) = qword_10051DB10;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455508, &qword_100455510, &qword_100352348);
  *v7 = v0;
  v7[1] = sub_1001697A0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001697A0()
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
    v6 = sub_100169910;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100169910()
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
  sub_100168BAC();
  sub_10016A828();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100169B88()
{
  v0 = sub_10000321C(&qword_100455530, &qword_100352370);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A8C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10016A828();
  sub_10002B6E4(&qword_100455538, &qword_100455530, &qword_100352370);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100169CFC(uint64_t *a1))(void *)
{
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

void (*sub_100169D70(uint64_t *a1))(void *)
{
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

unint64_t sub_100169E0C()
{
  result = qword_10044AAB0;
  if (!qword_10044AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAB0);
  }

  return result;
}

unint64_t sub_100169E64()
{
  result = qword_10044AAB8;
  if (!qword_10044AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAB8);
  }

  return result;
}

uint64_t sub_100169F60(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10016927C(a1, v5, v4);
}

uint64_t sub_10016A00C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AE594();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10016A054()
{
  result = qword_10044AAC0;
  if (!qword_10044AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAC0);
  }

  return result;
}

unint64_t sub_10016A0AC()
{
  result = qword_10044AAC8;
  if (!qword_10044AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAC8);
  }

  return result;
}

uint64_t sub_10016A120()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 leftRightBalanceEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10016A1E8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setLeftRightBalanceEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10016A280(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10016A310, 0, 0);
}

uint64_t sub_10016A310()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044AAA8, qword_100310550);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455508, &qword_100455510, &qword_100352348);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000023;
  v2[1] = 0x800000010035DF80;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10016A45C()
{
  result = qword_10044AAD0;
  if (!qword_10044AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAD0);
  }

  return result;
}

uint64_t sub_10016A4B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10016AA80();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10016A564()
{
  result = qword_10044AAD8;
  if (!qword_10044AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAD8);
  }

  return result;
}

unint64_t sub_10016A5BC()
{
  result = qword_10044AAE0;
  if (!qword_10044AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAE0);
  }

  return result;
}

unint64_t sub_10016A614()
{
  result = qword_10044AAE8;
  if (!qword_10044AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAE8);
  }

  return result;
}

uint64_t sub_10016A668(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10016AA80();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10016A71C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10016AA80();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10016A7D0()
{
  result = qword_10044AAF0;
  if (!qword_10044AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAF0);
  }

  return result;
}

unint64_t sub_10016A828()
{
  result = qword_10044AAF8;
  if (!qword_10044AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AAF8);
  }

  return result;
}

uint64_t sub_10016A8C0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10016A45C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10016A978()
{
  result = qword_10044AB10;
  if (!qword_10044AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB10);
  }

  return result;
}

unint64_t sub_10016A9D0()
{
  result = qword_10044AB18;
  if (!qword_10044AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB18);
  }

  return result;
}

unint64_t sub_10016AA28()
{
  result = qword_10044AB20;
  if (!qword_10044AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB20);
  }

  return result;
}

unint64_t sub_10016AA80()
{
  result = qword_10044AB28;
  if (!qword_10044AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB28);
  }

  return result;
}

uint64_t sub_10016AAD4()
{
  v0 = qword_100446E48;

  return v0;
}

unint64_t sub_10016AB10()
{
  result = qword_10044AB30;
  if (!qword_10044AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB30);
  }

  return result;
}

uint64_t sub_10016AB64()
{
  v0 = sub_10000321C(&qword_1004554F8, &qword_100352328);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455500, &qword_100352330);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10016A614();
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

unint64_t sub_10016AD2C()
{
  result = qword_10044AB38;
  if (!qword_10044AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB38);
  }

  return result;
}

unint64_t sub_10016AD84()
{
  result = qword_10044AB40;
  if (!qword_10044AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB40);
  }

  return result;
}

unint64_t sub_10016ADDC()
{
  result = qword_10044AB48;
  if (!qword_10044AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB48);
  }

  return result;
}

uint64_t sub_10016AE30()
{
  sub_1002D55E8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10016AF18(uint64_t a1)
{
  v2 = sub_10016A614();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10016AF68()
{
  result = qword_10044AB60;
  if (!qword_10044AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB60);
  }

  return result;
}

uint64_t sub_10016AFC0(uint64_t a1)
{
  v2 = sub_10016ADDC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10016B010()
{
  result = qword_10044AB68;
  if (!qword_10044AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB68);
  }

  return result;
}

uint64_t sub_10016B0CC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10016B440()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DB30);
  sub_10001EDB8(v0, qword_10051DB30);
  return sub_1002D88F0();
}

uint64_t sub_10016B4A4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DB48);
  v1 = sub_10001EDB8(v0, qword_10051DB48);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10016B564()
{
  result = swift_getKeyPath();
  qword_10051DB60 = result;
  return result;
}

uint64_t sub_10016B58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004554D0, &qword_1003522E8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004554D8, &qword_1003522F0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10016B76C, 0, 0);
}

uint64_t sub_10016B76C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10016C8AC();
  *v4 = v0;
  v4[1] = sub_10016B850;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F18, 0, &type metadata for AccessibilityHoverTextEnabledEntity, v5);
}

uint64_t sub_10016B850()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10016B94C, 0, 0);
}

uint64_t sub_10016B94C()
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
  if (qword_10043A8E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DB60;
  *(v0 + 288) = qword_10051DB60;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004554B8, &qword_1004554C0, &qword_1003522D0);
  *v7 = v0;
  v7[1] = sub_10016BAB0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10016BAB0()
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
    v6 = sub_10016BC20;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10016BC20()
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
  sub_10016B010();
  sub_10016CAC0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10016BE98()
{
  v0 = sub_10000321C(&qword_1004554E0, &qword_1003522F8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A8E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10016CAC0();
  sub_10002B6E4(&qword_1004554E8, &qword_1004554E0, &qword_1003522F8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10016C00C(uint64_t *a1))(void *)
{
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

void (*sub_10016C080(uint64_t *a1))(void *)
{
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

unint64_t sub_10016C11C()
{
  result = qword_10044AB80;
  if (!qword_10044AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB80);
  }

  return result;
}

unint64_t sub_10016C174()
{
  result = qword_10044AB88;
  if (!qword_10044AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB88);
  }

  return result;
}

uint64_t sub_10016C270(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10016B58C(a1, v5, v4);
}

uint64_t sub_10016C31C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AE9FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10016C364()
{
  result = qword_10044AB90;
  if (!qword_10044AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB90);
  }

  return result;
}

unint64_t sub_10016C3BC()
{
  result = qword_10044AB98;
  if (!qword_10044AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AB98);
  }

  return result;
}

uint64_t sub_10016C430()
{
  v1 = *(v0 + 16);
  *v1 = _AXSHoverTextEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016C4C4()
{
  v1 = *(v0 + 16);
  _AXSHoverTextSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016C528(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10016C5B8, 0, 0);
}

uint64_t sub_10016C5B8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044AB78, qword_100310B88);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004554B8, &qword_1004554C0, &qword_1003522D0);
  v3 = sub_1002D88A0();
  *v2 = 0x5845545245564F48;
  v2[1] = 0xEF454C5449545F54;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10016C6F4()
{
  result = qword_10044ABA0;
  if (!qword_10044ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABA0);
  }

  return result;
}

uint64_t sub_10016C748(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10016CD18();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10016C7FC()
{
  result = qword_10044ABA8;
  if (!qword_10044ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABA8);
  }

  return result;
}

unint64_t sub_10016C854()
{
  result = qword_10044ABB0;
  if (!qword_10044ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABB0);
  }

  return result;
}

unint64_t sub_10016C8AC()
{
  result = qword_10044ABB8;
  if (!qword_10044ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABB8);
  }

  return result;
}

uint64_t sub_10016C900(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10016CD18();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10016C9B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10016CD18();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10016CA68()
{
  result = qword_10044ABC0;
  if (!qword_10044ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABC0);
  }

  return result;
}

unint64_t sub_10016CAC0()
{
  result = qword_10044ABC8;
  if (!qword_10044ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABC8);
  }

  return result;
}

uint64_t sub_10016CB58(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10016C6F4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10016CC10()
{
  result = qword_10044ABE0;
  if (!qword_10044ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABE0);
  }

  return result;
}

unint64_t sub_10016CC68()
{
  result = qword_10044ABE8;
  if (!qword_10044ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABE8);
  }

  return result;
}

unint64_t sub_10016CCC0()
{
  result = qword_10044ABF0;
  if (!qword_10044ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABF0);
  }

  return result;
}

unint64_t sub_10016CD18()
{
  result = qword_10044ABF8;
  if (!qword_10044ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ABF8);
  }

  return result;
}

uint64_t sub_10016CD6C()
{
  v0 = qword_100446E58;

  return v0;
}

unint64_t sub_10016CDA8()
{
  result = qword_10044AC00;
  if (!qword_10044AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC00);
  }

  return result;
}

uint64_t sub_10016CDFC()
{
  v0 = sub_10000321C(&qword_1004554A8, &qword_1003522B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004554B0, &qword_1003522B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10016C8AC();
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

unint64_t sub_10016CFC4()
{
  result = qword_10044AC08;
  if (!qword_10044AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC08);
  }

  return result;
}

unint64_t sub_10016D01C()
{
  result = qword_10044AC10;
  if (!qword_10044AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC10);
  }

  return result;
}

unint64_t sub_10016D074()
{
  result = qword_10044AC18;
  if (!qword_10044AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC18);
  }

  return result;
}

uint64_t sub_10016D0C8()
{
  sub_1002D5594();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10016D1B0(uint64_t a1)
{
  v2 = sub_10016C8AC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10016D200()
{
  result = qword_10044AC30;
  if (!qword_10044AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC30);
  }

  return result;
}

uint64_t sub_10016D258(uint64_t a1)
{
  v2 = sub_10016D074();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10016D2A8()
{
  result = qword_10044AC38;
  if (!qword_10044AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC38);
  }

  return result;
}

uint64_t sub_10016D340()
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
  sub_10001EDF0(v7, qword_10051DB68);
  sub_10001EDB8(v7, qword_10051DB68);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_10016D4B0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10016D838()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DB80);
  sub_10001EDB8(v0, qword_10051DB80);
  return sub_1002D88F0();
}

uint64_t sub_10016D89C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DB98);
  v1 = sub_10001EDB8(v0, qword_10051DB98);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10016D95C()
{
  result = swift_getKeyPath();
  qword_10051DBB0 = result;
  return result;
}

uint64_t sub_10016D984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455480, &qword_100352270) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455488, &qword_100352278);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10016DB64, 0, 0);
}

uint64_t sub_10016DB64()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10016ECB4();
  *v4 = v0;
  v4[1] = sub_10016DC48;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F1C, 0, &type metadata for AccessibilityFullKeyboardAccessEnabledEntity, v5);
}

uint64_t sub_10016DC48()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10016DD44, 0, 0);
}

uint64_t sub_10016DD44()
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
  if (qword_10043A900 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DBB0;
  *(v0 + 288) = qword_10051DBB0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455468, &qword_100455470, &qword_100352258);
  *v7 = v0;
  v7[1] = sub_10016DEA8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10016DEA8()
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
    v6 = sub_10016E018;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10016E018()
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
  sub_10016D2A8();
  sub_10016EEC8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10016E290()
{
  v0 = sub_10000321C(&qword_100455490, &qword_100352280);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A900 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_10016EEC8();
  sub_10002B6E4(&qword_100455498, &qword_100455490, &qword_100352280);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10016E404(uint64_t *a1))(void *)
{
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

void (*sub_10016E478(uint64_t *a1))(void *)
{
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

unint64_t sub_10016E514()
{
  result = qword_10044AC50;
  if (!qword_10044AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC50);
  }

  return result;
}

unint64_t sub_10016E56C()
{
  result = qword_10044AC58;
  if (!qword_10044AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC58);
  }

  return result;
}

uint64_t sub_10016E668(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10016D984(a1, v5, v4);
}

uint64_t sub_10016E714@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AEE64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10016E75C()
{
  result = qword_10044AC60;
  if (!qword_10044AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC60);
  }

  return result;
}

unint64_t sub_10016E7B4()
{
  result = qword_10044AC68;
  if (!qword_10044AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC68);
  }

  return result;
}

uint64_t sub_10016E828()
{
  v1 = *(v0 + 16);
  *v1 = _AXSFullKeyboardAccessEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016E8BC()
{
  v1 = *(v0 + 16);
  _AXSFullKeyboardAccessSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016E920(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10016E9B0, 0, 0);
}

uint64_t sub_10016E9B0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044AC48, qword_1003111C0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455468, &qword_100455470, &qword_100352258);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000002FLL;
  v2[1] = 0x800000010035F260;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_10016EAFC()
{
  result = qword_10044AC70;
  if (!qword_10044AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC70);
  }

  return result;
}

uint64_t sub_10016EB50(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10016F120();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10016EC04()
{
  result = qword_10044AC78;
  if (!qword_10044AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC78);
  }

  return result;
}

unint64_t sub_10016EC5C()
{
  result = qword_10044AC80;
  if (!qword_10044AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC80);
  }

  return result;
}

unint64_t sub_10016ECB4()
{
  result = qword_10044AC88;
  if (!qword_10044AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC88);
  }

  return result;
}

uint64_t sub_10016ED08(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10016F120();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10016EDBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10016F120();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10016EE70()
{
  result = qword_10044AC90;
  if (!qword_10044AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC90);
  }

  return result;
}

unint64_t sub_10016EEC8()
{
  result = qword_10044AC98;
  if (!qword_10044AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AC98);
  }

  return result;
}

uint64_t sub_10016EF60(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10016EAFC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10016F018()
{
  result = qword_10044ACB0;
  if (!qword_10044ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACB0);
  }

  return result;
}

unint64_t sub_10016F070()
{
  result = qword_10044ACB8;
  if (!qword_10044ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACB8);
  }

  return result;
}

unint64_t sub_10016F0C8()
{
  result = qword_10044ACC0;
  if (!qword_10044ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACC0);
  }

  return result;
}

unint64_t sub_10016F120()
{
  result = qword_10044ACC8;
  if (!qword_10044ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACC8);
  }

  return result;
}

uint64_t sub_10016F174()
{
  v0 = qword_100446E68;

  return v0;
}

unint64_t sub_10016F1B0()
{
  result = qword_10044ACD0;
  if (!qword_10044ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACD0);
  }

  return result;
}

uint64_t sub_10016F204()
{
  v0 = sub_10000321C(&qword_100455458, &qword_100352238);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455460, &qword_100352240);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10016ECB4();
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

unint64_t sub_10016F3CC()
{
  result = qword_10044ACD8;
  if (!qword_10044ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACD8);
  }

  return result;
}

unint64_t sub_10016F424()
{
  result = qword_10044ACE0;
  if (!qword_10044ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACE0);
  }

  return result;
}

unint64_t sub_10016F47C()
{
  result = qword_10044ACE8;
  if (!qword_10044ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ACE8);
  }

  return result;
}

uint64_t sub_10016F4D0()
{
  sub_1002D5540();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10016F5B8(uint64_t a1)
{
  v2 = sub_10016ECB4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10016F608()
{
  result = qword_10044AD00;
  if (!qword_10044AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD00);
  }

  return result;
}

uint64_t sub_10016F660(uint64_t a1)
{
  v2 = sub_10016F47C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10016F6B0()
{
  result = qword_10044AD08;
  if (!qword_10044AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD08);
  }

  return result;
}

uint64_t sub_10016F76C()
{
  result = swift_getKeyPath();
  qword_10051DC00 = result;
  return result;
}

uint64_t sub_10016F794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455430, &qword_1003521F8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455438, &qword_100352200);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10016F974, 0, 0);
}

uint64_t sub_10016F974()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100170B2C();
  *v4 = v0;
  v4[1] = sub_10016FA58;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F20, 0, &type metadata for AXFullKeyboardAccessFocusRingTimeoutEnabledEntity, v5);
}

uint64_t sub_10016FA58()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10016FB54, 0, 0);
}

uint64_t sub_10016FB54()
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
  if (qword_10043A920 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DC00;
  *(v0 + 288) = qword_10051DC00;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455418, &qword_100455420, &qword_1003521E0);
  *v7 = v0;
  v7[1] = sub_10016FCB8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_10016FCB8()
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
    v6 = sub_10016FE28;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10016FE28()
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
  sub_10016F6B0();
  sub_100170D40();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001700A0()
{
  v0 = sub_10000321C(&qword_100455440, &qword_100352208);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A920 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100170D40();
  sub_10002B6E4(&qword_100455448, &qword_100455440, &qword_100352208);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100170214(uint64_t *a1))(void *)
{
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

void (*sub_100170288(uint64_t *a1))(void *)
{
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

unint64_t sub_100170324()
{
  result = qword_10044AD20;
  if (!qword_10044AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD20);
  }

  return result;
}

unint64_t sub_10017037C()
{
  result = qword_10044AD28;
  if (!qword_10044AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD28);
  }

  return result;
}

uint64_t sub_100170478(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_10016F794(a1, v5, v4);
}

uint64_t sub_100170524@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AF2CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10017056C()
{
  result = qword_10044AD30;
  if (!qword_10044AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD30);
  }

  return result;
}

unint64_t sub_1001705C4()
{
  result = qword_10044AD38;
  if (!qword_10044AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD38);
  }

  return result;
}

uint64_t sub_100170638()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 fullKeyboardAccessFocusRingTimeoutEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100170700()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setFullKeyboardAccessFocusRingTimeoutEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100170798(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100170828, 0, 0);
}

uint64_t sub_100170828()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044AD18, qword_1003117F8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455418, &qword_100455420, &qword_1003521E0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000046;
  v2[1] = 0x8000000100361550;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100170974()
{
  result = qword_10044AD40;
  if (!qword_10044AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD40);
  }

  return result;
}

uint64_t sub_1001709C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100170F98();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100170A7C()
{
  result = qword_10044AD48;
  if (!qword_10044AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD48);
  }

  return result;
}

unint64_t sub_100170AD4()
{
  result = qword_10044AD50;
  if (!qword_10044AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD50);
  }

  return result;
}

unint64_t sub_100170B2C()
{
  result = qword_10044AD58;
  if (!qword_10044AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD58);
  }

  return result;
}

uint64_t sub_100170B80(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100170F98();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100170C34(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100170F98();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100170CE8()
{
  result = qword_10044AD60;
  if (!qword_10044AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD60);
  }

  return result;
}

unint64_t sub_100170D40()
{
  result = qword_10044AD68;
  if (!qword_10044AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD68);
  }

  return result;
}

uint64_t sub_100170DD8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100170974();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100170E90()
{
  result = qword_10044AD80;
  if (!qword_10044AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD80);
  }

  return result;
}

unint64_t sub_100170EE8()
{
  result = qword_10044AD88;
  if (!qword_10044AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD88);
  }

  return result;
}

unint64_t sub_100170F40()
{
  result = qword_10044AD90;
  if (!qword_10044AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD90);
  }

  return result;
}

unint64_t sub_100170F98()
{
  result = qword_10044AD98;
  if (!qword_10044AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AD98);
  }

  return result;
}

uint64_t sub_100170FEC()
{
  v0 = qword_100446E78;

  return v0;
}

unint64_t sub_100171028()
{
  result = qword_10044ADA0;
  if (!qword_10044ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADA0);
  }

  return result;
}

uint64_t sub_10017107C()
{
  v0 = sub_10000321C(&qword_100455408, &qword_1003521C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455410, &qword_1003521C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100170B2C();
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

unint64_t sub_100171244()
{
  result = qword_10044ADA8;
  if (!qword_10044ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADA8);
  }

  return result;
}

unint64_t sub_10017129C()
{
  result = qword_10044ADB0;
  if (!qword_10044ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADB0);
  }

  return result;
}

unint64_t sub_1001712F4()
{
  result = qword_10044ADB8;
  if (!qword_10044ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADB8);
  }

  return result;
}

uint64_t sub_100171348()
{
  sub_1002D54EC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100171430(uint64_t a1)
{
  v2 = sub_100170B2C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100171480()
{
  result = qword_10044ADD0;
  if (!qword_10044ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADD0);
  }

  return result;
}

uint64_t sub_1001714D4(uint64_t a1)
{
  v2 = sub_1001712F4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100171524()
{
  result = qword_10044ADD8;
  if (!qword_10044ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADD8);
  }

  return result;
}

uint64_t sub_1001715C8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100171734@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100171AB0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

uint64_t sub_100171B1C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v3, a2);
  v4 = sub_10001EDB8(v3, a2);
  sub_1002D8620();
  v5 = sub_1002D8630();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_100171BD8()
{
  result = swift_getKeyPath();
  qword_10051DC50 = result;
  return result;
}

uint64_t sub_100171C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004553E0, &qword_100352180) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v9 = *(v8 + 64) + 15;
  v3[29] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004553E8, &qword_100352188);
  v3[30] = v10;
  v11 = *(v10 - 8);
  v3[31] = v11;
  v12 = *(v11 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_100171DE0, 0, 0);
}

uint64_t sub_100171DE0()
{
  v1 = *(v0 + 176);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  v5 = sub_100172F90();
  *v4 = v0;
  v4[1] = sub_100171EC4;
  v6 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F24, 0, &type metadata for AXFullKeyboardAccessFocusRingTimeoutEntity, v5);
}

uint64_t sub_100171EC4()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_100171FC0, 0, 0);
}

uint64_t sub_100171FC0()
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
  if (qword_10043A940 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DC50;
  v0[37] = qword_10051DC50;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[38] = v7;
  v8 = sub_10002B6E4(&qword_1004553C8, &qword_1004553D0, &qword_100352168);
  *v7 = v0;
  v7[1] = sub_10017211C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v5, &type metadata for Double, v8);
}

uint64_t sub_10017211C()
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
    v6 = sub_10017228C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10017228C()
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
  sub_100171524();
  sub_1001731A4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100172504()
{
  v0 = sub_10000321C(&qword_1004553F0, &qword_100352190);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A940 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001731A4();
  sub_10002B6E4(&qword_1004553F8, &qword_1004553F0, &qword_100352190);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100172678(uint64_t *a1))(void *)
{
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

void (*sub_1001726EC(uint64_t *a1))(void *)
{
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

unint64_t sub_100172788()
{
  result = qword_10044ADF0;
  if (!qword_10044ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADF0);
  }

  return result;
}

unint64_t sub_1001727E0()
{
  result = qword_10044ADF8;
  if (!qword_10044ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044ADF8);
  }

  return result;
}

uint64_t sub_1001728DC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100171C00(a1, v5, v4);
}

uint64_t sub_100172988@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AF734();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001729D0()
{
  result = qword_10044AE00;
  if (!qword_10044AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE00);
  }

  return result;
}

unint64_t sub_100172A28()
{
  result = qword_10044AE08;
  if (!qword_10044AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE08);
  }

  return result;
}

uint64_t sub_100172A9C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 fullKeyboardAccessFocusRingTimeout];
  v4 = v3;

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100172B64()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setFullKeyboardAccessFocusRingTimeout:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100172BFC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100172C8C, 0, 0);
}

uint64_t sub_100172C8C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044ADE8, qword_100311E30);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004553C8, &qword_1004553D0, &qword_100352168);
  v3 = sub_1002D88B0();
  *v2 = 0xD000000000000046;
  v2[1] = 0x8000000100361550;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100172DD8()
{
  result = qword_10044AE10;
  if (!qword_10044AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE10);
  }

  return result;
}

uint64_t sub_100172E2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001733FC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100172EE0()
{
  result = qword_10044AE18;
  if (!qword_10044AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE18);
  }

  return result;
}

unint64_t sub_100172F38()
{
  result = qword_10044AE20;
  if (!qword_10044AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE20);
  }

  return result;
}

unint64_t sub_100172F90()
{
  result = qword_10044AE28;
  if (!qword_10044AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE28);
  }

  return result;
}

uint64_t sub_100172FE4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001733FC();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100173098(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001733FC();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10017314C()
{
  result = qword_10044AE30;
  if (!qword_10044AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE30);
  }

  return result;
}

unint64_t sub_1001731A4()
{
  result = qword_10044AE38;
  if (!qword_10044AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE38);
  }

  return result;
}

uint64_t sub_10017323C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100172DD8();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001732F4()
{
  result = qword_10044AE50;
  if (!qword_10044AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE50);
  }

  return result;
}

unint64_t sub_10017334C()
{
  result = qword_10044AE58;
  if (!qword_10044AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE58);
  }

  return result;
}

unint64_t sub_1001733A4()
{
  result = qword_10044AE60;
  if (!qword_10044AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE60);
  }

  return result;
}

unint64_t sub_1001733FC()
{
  result = qword_10044AE68;
  if (!qword_10044AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE68);
  }

  return result;
}

uint64_t sub_100173450()
{
  v0 = qword_100446E88;

  return v0;
}

unint64_t sub_10017348C()
{
  result = qword_10044AE70;
  if (!qword_10044AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE70);
  }

  return result;
}

uint64_t sub_1001734E0()
{
  v0 = sub_10000321C(&qword_1004553B8, &qword_100352148);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004553C0, &qword_100352150);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100172F90();
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

unint64_t sub_1001736A8()
{
  result = qword_10044AE78;
  if (!qword_10044AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE78);
  }

  return result;
}

unint64_t sub_100173700()
{
  result = qword_10044AE80;
  if (!qword_10044AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE80);
  }

  return result;
}

unint64_t sub_100173758()
{
  result = qword_10044AE88;
  if (!qword_10044AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AE88);
  }

  return result;
}

uint64_t sub_1001737AC()
{
  sub_1002D5498();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100173894(uint64_t a1)
{
  v2 = sub_100172F90();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001738E4()
{
  result = qword_10044AEA0;
  if (!qword_10044AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEA0);
  }

  return result;
}

uint64_t sub_100173950(uint64_t a1)
{
  v2 = sub_100173758();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001739A0()
{
  result = qword_10044AEA8;
  if (!qword_10044AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEA8);
  }

  return result;
}

uint64_t sub_100173A38()
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
  sub_10001EDF0(v7, qword_10051DC58);
  sub_10001EDB8(v7, qword_10051DC58);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_100173BA8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100173F18()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DC70);
  sub_10001EDB8(v0, qword_10051DC70);
  return sub_1002D88F0();
}

uint64_t sub_100173F7C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DC88);
  v1 = sub_10001EDB8(v0, qword_10051DC88);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10017403C()
{
  result = swift_getKeyPath();
  qword_10051DCA0 = result;
  return result;
}

uint64_t sub_100174064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455390, &qword_100352108) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455398, &qword_100352110);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100174244, 0, 0);
}

uint64_t sub_100174244()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100175400();
  *v4 = v0;
  v4[1] = sub_100174328;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F28, 0, &type metadata for AXFullKeyboardAccessLargeFocusRingEnabledEntity, v5);
}

uint64_t sub_100174328()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100174424, 0, 0);
}

uint64_t sub_100174424()
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
  if (qword_10043A960 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DCA0;
  *(v0 + 288) = qword_10051DCA0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455378, &qword_100455380, &qword_1003520F0);
  *v7 = v0;
  v7[1] = sub_100174588;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_100174588()
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
    v6 = sub_1001746F8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001746F8()
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
  sub_1001739A0();
  sub_100175614();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100174970()
{
  v0 = sub_10000321C(&qword_1004553A0, &qword_100352118);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A960 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100175614();
  sub_10002B6E4(&qword_1004553A8, &qword_1004553A0, &qword_100352118);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100174AE4(uint64_t *a1))(void *)
{
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

void (*sub_100174B58(uint64_t *a1))(void *)
{
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

unint64_t sub_100174BF4()
{
  result = qword_10044AEC0;
  if (!qword_10044AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEC0);
  }

  return result;
}

unint64_t sub_100174C4C()
{
  result = qword_10044AEC8;
  if (!qword_10044AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEC8);
  }

  return result;
}

uint64_t sub_100174D48(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100174064(a1, v5, v4);
}

uint64_t sub_100174DF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002AFBC0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100174E3C()
{
  result = qword_10044AED0;
  if (!qword_10044AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AED0);
  }

  return result;
}

unint64_t sub_100174E94()
{
  result = qword_10044AED8;
  if (!qword_10044AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AED8);
  }

  return result;
}

uint64_t sub_100174F08()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 fullKeyboardAccessLargeFocusRingEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100174FD0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setFullKeyboardAccessLargeFocusRingEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100175068(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001750F8, 0, 0);
}

uint64_t sub_1001750F8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044AEB8, qword_100312468);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455378, &qword_100455380, &qword_1003520F0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000037;
  v2[1] = 0x800000010035E0A0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100175248()
{
  result = qword_10044AEE0;
  if (!qword_10044AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEE0);
  }

  return result;
}

uint64_t sub_10017529C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10017586C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100175350()
{
  result = qword_10044AEE8;
  if (!qword_10044AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEE8);
  }

  return result;
}

unint64_t sub_1001753A8()
{
  result = qword_10044AEF0;
  if (!qword_10044AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEF0);
  }

  return result;
}

unint64_t sub_100175400()
{
  result = qword_10044AEF8;
  if (!qword_10044AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AEF8);
  }

  return result;
}

uint64_t sub_100175454(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10017586C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100175508(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10017586C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001755BC()
{
  result = qword_10044AF00;
  if (!qword_10044AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF00);
  }

  return result;
}

unint64_t sub_100175614()
{
  result = qword_10044AF08;
  if (!qword_10044AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF08);
  }

  return result;
}

uint64_t sub_1001756AC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100175248();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100175764()
{
  result = qword_10044AF20;
  if (!qword_10044AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF20);
  }

  return result;
}

unint64_t sub_1001757BC()
{
  result = qword_10044AF28;
  if (!qword_10044AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF28);
  }

  return result;
}

unint64_t sub_100175814()
{
  result = qword_10044AF30;
  if (!qword_10044AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF30);
  }

  return result;
}

unint64_t sub_10017586C()
{
  result = qword_10044AF38;
  if (!qword_10044AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF38);
  }

  return result;
}

uint64_t sub_1001758C0()
{
  v0 = qword_100446E98;

  return v0;
}

unint64_t sub_1001758FC()
{
  result = qword_10044AF40;
  if (!qword_10044AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF40);
  }

  return result;
}

uint64_t sub_100175950()
{
  v0 = sub_10000321C(&qword_100455368, &qword_1003520D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455370, &qword_1003520D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100175400();
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

unint64_t sub_100175B18()
{
  result = qword_10044AF48;
  if (!qword_10044AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF48);
  }

  return result;
}

unint64_t sub_100175B70()
{
  result = qword_10044AF50;
  if (!qword_10044AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF50);
  }

  return result;
}

unint64_t sub_100175BC8()
{
  result = qword_10044AF58;
  if (!qword_10044AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF58);
  }

  return result;
}

uint64_t sub_100175C1C()
{
  sub_1002D5444();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100175D04(uint64_t a1)
{
  v2 = sub_100175400();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100175D54()
{
  result = qword_10044AF70;
  if (!qword_10044AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF70);
  }

  return result;
}

uint64_t sub_100175DAC(uint64_t a1)
{
  v2 = sub_100175BC8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100175DFC()
{
  result = qword_10044AF78;
  if (!qword_10044AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF78);
  }

  return result;
}

uint64_t sub_100175EC0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10017623C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DCC0);
  sub_10001EDB8(v0, qword_10051DCC0);
  return sub_1002D88F0();
}

uint64_t sub_1001762A0()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DCD8);
  v1 = sub_10001EDB8(v0, qword_10051DCD8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100176360()
{
  result = swift_getKeyPath();
  qword_10051DCF0 = result;
  return result;
}

uint64_t sub_100176388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100455340, &qword_100352090) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100455348, &qword_100352098);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100176568, 0, 0);
}

uint64_t sub_100176568()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_10017771C();
  *v4 = v0;
  v4[1] = sub_10017664C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F2C, 0, &type metadata for AXFullKeyboardAccessFocusRingHighContrastEnabledEntity, v5);
}

uint64_t sub_10017664C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100176748, 0, 0);
}

uint64_t sub_100176748()
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
  if (qword_10043A980 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DCF0;
  *(v0 + 288) = qword_10051DCF0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100455328, &qword_100455330, &qword_100352078);
  *v7 = v0;
  v7[1] = sub_1001768AC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001768AC()
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
    v6 = sub_100176A1C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100176A1C()
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
  sub_100175DFC();
  sub_100177930();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100176C94()
{
  v0 = sub_10000321C(&qword_100455350, &qword_1003520A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A980 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100177930();
  sub_10002B6E4(&qword_100455358, &qword_100455350, &qword_1003520A0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_100176E08(uint64_t *a1))(void *)
{
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

void (*sub_100176E7C(uint64_t *a1))(void *)
{
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

unint64_t sub_100176F18()
{
  result = qword_10044AF90;
  if (!qword_10044AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF90);
  }

  return result;
}

unint64_t sub_100176F70()
{
  result = qword_10044AF98;
  if (!qword_10044AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AF98);
  }

  return result;
}

uint64_t sub_10017706C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100176388(a1, v5, v4);
}

uint64_t sub_100177118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B0028();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100177160()
{
  result = qword_10044AFA0;
  if (!qword_10044AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFA0);
  }

  return result;
}

unint64_t sub_1001771B8()
{
  result = qword_10044AFA8;
  if (!qword_10044AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFA8);
  }

  return result;
}

uint64_t sub_10017722C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 fullKeyboardAccessFocusRingHighContrastEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001772F4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setFullKeyboardAccessFocusRingHighContrastEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10017738C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10017741C, 0, 0);
}

uint64_t sub_10017741C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044AF88, qword_100312AA0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100455328, &qword_100455330, &qword_100352078);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003ELL;
  v2[1] = 0x800000010035ED90;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100177564()
{
  result = qword_10044AFB0;
  if (!qword_10044AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFB0);
  }

  return result;
}

uint64_t sub_1001775B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100177B88();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10017766C()
{
  result = qword_10044AFB8;
  if (!qword_10044AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFB8);
  }

  return result;
}

unint64_t sub_1001776C4()
{
  result = qword_10044AFC0;
  if (!qword_10044AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFC0);
  }

  return result;
}

unint64_t sub_10017771C()
{
  result = qword_10044AFC8;
  if (!qword_10044AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFC8);
  }

  return result;
}

uint64_t sub_100177770(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100177B88();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100177824(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100177B88();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001778D8()
{
  result = qword_10044AFD0;
  if (!qword_10044AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFD0);
  }

  return result;
}

unint64_t sub_100177930()
{
  result = qword_10044AFD8;
  if (!qword_10044AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFD8);
  }

  return result;
}

uint64_t sub_1001779C8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100177564();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100177A80()
{
  result = qword_10044AFF0;
  if (!qword_10044AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFF0);
  }

  return result;
}

unint64_t sub_100177AD8()
{
  result = qword_10044AFF8;
  if (!qword_10044AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044AFF8);
  }

  return result;
}

unint64_t sub_100177B30()
{
  result = qword_10044B000;
  if (!qword_10044B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B000);
  }

  return result;
}

unint64_t sub_100177B88()
{
  result = qword_10044B008;
  if (!qword_10044B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B008);
  }

  return result;
}

uint64_t sub_100177BDC()
{
  v0 = qword_100446EA8;

  return v0;
}

unint64_t sub_100177C18()
{
  result = qword_10044B010;
  if (!qword_10044B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B010);
  }

  return result;
}

uint64_t sub_100177C6C()
{
  v0 = sub_10000321C(&qword_100455318, &qword_100352058);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100455320, &qword_100352060);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10017771C();
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

unint64_t sub_100177E34()
{
  result = qword_10044B018;
  if (!qword_10044B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B018);
  }

  return result;
}

unint64_t sub_100177E8C()
{
  result = qword_10044B020;
  if (!qword_10044B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B020);
  }

  return result;
}

unint64_t sub_100177EE4()
{
  result = qword_10044B028;
  if (!qword_10044B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B028);
  }

  return result;
}

uint64_t sub_100177F38()
{
  sub_1002D53F0();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100178020(uint64_t a1)
{
  v2 = sub_10017771C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100178070()
{
  result = qword_10044B040;
  if (!qword_10044B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B040);
  }

  return result;
}

uint64_t sub_1001780C8(uint64_t a1)
{
  v2 = sub_100177EE4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100178118()
{
  result = qword_10044B048;
  if (!qword_10044B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B048);
  }

  return result;
}

uint64_t sub_1001781D4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100178548()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DD10);
  sub_10001EDB8(v0, qword_10051DD10);
  return sub_1002D88F0();
}

uint64_t sub_1001785AC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DD28);
  v1 = sub_10001EDB8(v0, qword_10051DD28);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10017866C()
{
  result = swift_getKeyPath();
  qword_10051DD40 = result;
  return result;
}

uint64_t sub_100178694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004552F0, &qword_100352018) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004552F8, &qword_100352020);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100178874, 0, 0);
}

uint64_t sub_100178874()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_100179A4C();
  *v4 = v0;
  v4[1] = sub_100178958;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6F30, 0, &type metadata for AXFullKeyboardAccessFocusRingColorEntity, v5);
}

uint64_t sub_100178958()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100178A54, 0, 0);
}

uint64_t sub_100178A54()
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
  if (qword_10043A9A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051DD40;
  v0[36] = qword_10051DD40;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_1004552D8, &qword_1004552E0, &qword_100352000);
  *v7 = v0;
  v7[1] = sub_100178BB0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXAssistiveTouchCursorColorAppEnum, v8);
}

uint64_t sub_100178BB0()
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
    v6 = sub_100178D20;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100178D20()
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
  sub_100178118();
  sub_100179C60();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100178F98()
{
  v0 = sub_10000321C(&qword_100455300, &qword_100352028);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043A9A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_100179C60();
  sub_10002B6E4(&qword_100455308, &qword_100455300, &qword_100352028);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_10017910C(uint64_t *a1))(void *)
{
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

void (*sub_100179180(uint64_t *a1))(void *)
{
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

unint64_t sub_10017921C()
{
  result = qword_10044B060;
  if (!qword_10044B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B060);
  }

  return result;
}

unint64_t sub_100179274()
{
  result = qword_10044B068;
  if (!qword_10044B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B068);
  }

  return result;
}

uint64_t sub_100179370(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_100178694(a1, v5, v4);
}

uint64_t sub_10017941C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002B0490();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100179464()
{
  result = qword_10044B070;
  if (!qword_10044B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B070);
  }

  return result;
}

uint64_t sub_1001794DC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 fullKeyboardAccessFocusRingColor];

  v4 = sub_10001EAB4(v3);
  if (v4 == 8)
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

uint64_t sub_1001795E8()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setFullKeyboardAccessFocusRingColor:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001796B0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100179740, 0, 0);
}

uint64_t sub_100179740()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044B058, &qword_1003130D8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004552D8, &qword_1004552E0, &qword_100352000);
  sub_10000BA70();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000042;
  v2[1] = 0x8000000100360520;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_100179894()
{
  result = qword_10044B078;
  if (!qword_10044B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B078);
  }

  return result;
}

uint64_t sub_1001798E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100179EB8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10017999C()
{
  result = qword_10044B080;
  if (!qword_10044B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B080);
  }

  return result;
}

unint64_t sub_1001799F4()
{
  result = qword_10044B088;
  if (!qword_10044B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B088);
  }

  return result;
}

unint64_t sub_100179A4C()
{
  result = qword_10044B090;
  if (!qword_10044B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B090);
  }

  return result;
}

uint64_t sub_100179AA0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100179EB8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100179B54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100179EB8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100179C08()
{
  result = qword_10044B098;
  if (!qword_10044B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B098);
  }

  return result;
}

unint64_t sub_100179C60()
{
  result = qword_10044B0A0;
  if (!qword_10044B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0A0);
  }

  return result;
}

uint64_t sub_100179CF8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100179894();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100179DB0()
{
  result = qword_10044B0B8;
  if (!qword_10044B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0B8);
  }

  return result;
}

unint64_t sub_100179E08()
{
  result = qword_10044B0C0;
  if (!qword_10044B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0C0);
  }

  return result;
}

unint64_t sub_100179E60()
{
  result = qword_10044B0C8;
  if (!qword_10044B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0C8);
  }

  return result;
}

unint64_t sub_100179EB8()
{
  result = qword_10044B0D0;
  if (!qword_10044B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0D0);
  }

  return result;
}

uint64_t sub_100179F0C()
{
  v0 = qword_100446EB8;

  return v0;
}

unint64_t sub_100179F48()
{
  result = qword_10044B0D8;
  if (!qword_10044B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0D8);
  }

  return result;
}

uint64_t sub_100179F9C()
{
  v0 = sub_10000321C(&qword_1004552C8, &qword_100351FE0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004552D0, &qword_100351FE8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100179A4C();
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

unint64_t sub_10017A164()
{
  result = qword_10044B0E0;
  if (!qword_10044B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0E0);
  }

  return result;
}

unint64_t sub_10017A1BC()
{
  result = qword_10044B0E8;
  if (!qword_10044B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0E8);
  }

  return result;
}

unint64_t sub_10017A214()
{
  result = qword_10044B0F0;
  if (!qword_10044B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B0F0);
  }

  return result;
}

uint64_t sub_10017A268()
{
  sub_1002D539C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10017A350(uint64_t a1)
{
  v2 = sub_100179A4C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10017A3A0()
{
  result = qword_10044B108;
  if (!qword_10044B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B108);
  }

  return result;
}

uint64_t sub_10017A3F8(uint64_t a1)
{
  v2 = sub_10017A214();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10017A448()
{
  result = qword_10044B110;
  if (!qword_10044B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044B110);
  }

  return result;
}

uint64_t sub_10017A508@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_10017A880()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051DD60);
  sub_10001EDB8(v0, qword_10051DD60);
  return sub_1002D88F0();
}

uint64_t sub_10017A8E4()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051DD78);
  v1 = sub_10001EDB8(v0, qword_10051DD78);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10017A9A4()
{
  result = swift_getKeyPath();
  qword_10051DD90 = result;
  return result;
}

uint64_t sub_10017A9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004552A0, &qword_100351FA0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004552A8, &qword_100351FA8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_10017ABAC, 0, 0);
}