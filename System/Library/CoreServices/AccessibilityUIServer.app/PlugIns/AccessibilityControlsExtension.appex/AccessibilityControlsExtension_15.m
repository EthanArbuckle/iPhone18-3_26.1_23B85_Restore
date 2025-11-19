uint64_t sub_1001DB528(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001DB88C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001DB5DC()
{
  result = qword_10044D440;
  if (!qword_10044D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D440);
  }

  return result;
}

unint64_t sub_1001DB634()
{
  result = qword_10044D448;
  if (!qword_10044D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D448);
  }

  return result;
}

uint64_t sub_1001DB6CC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001DB268();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001DB784()
{
  result = qword_10044D460;
  if (!qword_10044D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D460);
  }

  return result;
}

unint64_t sub_1001DB7DC()
{
  result = qword_10044D468;
  if (!qword_10044D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D468);
  }

  return result;
}

unint64_t sub_1001DB834()
{
  result = qword_10044D470;
  if (!qword_10044D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D470);
  }

  return result;
}

unint64_t sub_1001DB88C()
{
  result = qword_10044D478;
  if (!qword_10044D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D478);
  }

  return result;
}

uint64_t sub_1001DB8E0()
{
  v0 = qword_100447178;

  return v0;
}

unint64_t sub_1001DB91C()
{
  result = qword_10044D480;
  if (!qword_10044D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D480);
  }

  return result;
}

uint64_t sub_1001DB970()
{
  v0 = sub_10000321C(&qword_1004544E0, &qword_100350B18);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004544E8, &qword_100350B20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001DB420();
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

unint64_t sub_1001DBB38()
{
  result = qword_10044D488;
  if (!qword_10044D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D488);
  }

  return result;
}

unint64_t sub_1001DBB90()
{
  result = qword_10044D490;
  if (!qword_10044D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D490);
  }

  return result;
}

unint64_t sub_1001DBBE8()
{
  result = qword_10044D498;
  if (!qword_10044D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D498);
  }

  return result;
}

uint64_t sub_1001DBC3C()
{
  sub_1002D452C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001DBD24(uint64_t a1)
{
  v2 = sub_1001DB420();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001DBD74()
{
  result = qword_10044D4B0;
  if (!qword_10044D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D4B0);
  }

  return result;
}

uint64_t sub_1001DBDCC(uint64_t a1)
{
  v2 = sub_1001DBBE8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001DBE1C()
{
  result = qword_10044D4B8;
  if (!qword_10044D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D4B8);
  }

  return result;
}

uint64_t sub_1001DBEB4()
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
  sub_10001EDF0(v7, qword_10051EB08);
  sub_10001EDB8(v7, qword_10051EB08);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001DC024@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001DC394()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EB20);
  sub_10001EDB8(v0, qword_10051EB20);
  return sub_1002D88F0();
}

uint64_t sub_1001DC3F8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EB38);
  v1 = sub_10001EDB8(v0, qword_10051EB38);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001DC4B8()
{
  result = swift_getKeyPath();
  qword_10051EB50 = result;
  return result;
}

uint64_t sub_1001DC4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004544B8, &qword_100350AD8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004544C0, &qword_100350AE0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001DC6C0, 0, 0);
}

uint64_t sub_1001DC6C0()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001DD810();
  *v4 = v0;
  v4[1] = sub_1001DC7A4;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FE4, 0, &type metadata for AXSubtitlesShowOnSkipBackEntity, v5);
}

uint64_t sub_1001DC7A4()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001DC8A0, 0, 0);
}

uint64_t sub_1001DC8A0()
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
  if (qword_10043AF40 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EB50;
  *(v0 + 288) = qword_10051EB50;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004544A0, &qword_1004544A8, &qword_100350AC0);
  *v7 = v0;
  v7[1] = sub_1001DCA04;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001DCA04()
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
    v6 = sub_1001DCB74;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001DCB74()
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
  sub_1001DBE1C();
  sub_1001DDA24();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001DCDEC()
{
  v0 = sub_10000321C(&qword_1004544C8, &qword_100350AE8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AF40 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001DDA24();
  sub_10002B6E4(&qword_1004544D0, &qword_1004544C8, &qword_100350AE8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001DCF60(uint64_t *a1))(void *)
{
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

void (*sub_1001DCFD4(uint64_t *a1))(void *)
{
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

unint64_t sub_1001DD070()
{
  result = qword_10044D4D0;
  if (!qword_10044D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D4D0);
  }

  return result;
}

unint64_t sub_1001DD0C8()
{
  result = qword_10044D4D8;
  if (!qword_10044D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D4D8);
  }

  return result;
}

uint64_t sub_1001DD1C4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001DC4E0(a1, v5, v4);
}

uint64_t sub_1001DD270@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BC550();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001DD2B8()
{
  result = qword_10044D4E0;
  if (!qword_10044D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D4E0);
  }

  return result;
}

unint64_t sub_1001DD310()
{
  result = qword_10044D4E8;
  if (!qword_10044D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D4E8);
  }

  return result;
}

uint64_t sub_1001DD384()
{
  v1 = *(v0 + 16);
  *v1 = _AXSAutomaticSubtitlesShowOnSkipBack() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DD418()
{
  v1 = *(v0 + 16);
  _AXSSetAutomaticSubtitlesShowOnSkipBack();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DD47C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001DD50C, 0, 0);
}

uint64_t sub_1001DD50C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044D4C8, qword_1003248B0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004544A0, &qword_1004544A8, &qword_100350AC0);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000026;
  v2[1] = 0x800000010035BCE0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001DD658()
{
  result = qword_10044D4F0;
  if (!qword_10044D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D4F0);
  }

  return result;
}

uint64_t sub_1001DD6AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001DDC7C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001DD760()
{
  result = qword_10044D4F8;
  if (!qword_10044D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D4F8);
  }

  return result;
}

unint64_t sub_1001DD7B8()
{
  result = qword_10044D500;
  if (!qword_10044D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D500);
  }

  return result;
}

unint64_t sub_1001DD810()
{
  result = qword_10044D508;
  if (!qword_10044D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D508);
  }

  return result;
}

uint64_t sub_1001DD864(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001DDC7C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001DD918(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001DDC7C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001DD9CC()
{
  result = qword_10044D510;
  if (!qword_10044D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D510);
  }

  return result;
}

unint64_t sub_1001DDA24()
{
  result = qword_10044D518;
  if (!qword_10044D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D518);
  }

  return result;
}

uint64_t sub_1001DDABC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001DD658();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001DDB74()
{
  result = qword_10044D530;
  if (!qword_10044D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D530);
  }

  return result;
}

unint64_t sub_1001DDBCC()
{
  result = qword_10044D538;
  if (!qword_10044D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D538);
  }

  return result;
}

unint64_t sub_1001DDC24()
{
  result = qword_10044D540;
  if (!qword_10044D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D540);
  }

  return result;
}

unint64_t sub_1001DDC7C()
{
  result = qword_10044D548;
  if (!qword_10044D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D548);
  }

  return result;
}

uint64_t sub_1001DDCD0()
{
  v0 = qword_100447188;

  return v0;
}

unint64_t sub_1001DDD0C()
{
  result = qword_10044D550;
  if (!qword_10044D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D550);
  }

  return result;
}

uint64_t sub_1001DDD60()
{
  v0 = sub_10000321C(&qword_100454490, &qword_100350AA0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454498, &qword_100350AA8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001DD810();
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

unint64_t sub_1001DDF28()
{
  result = qword_10044D558;
  if (!qword_10044D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D558);
  }

  return result;
}

unint64_t sub_1001DDF80()
{
  result = qword_10044D560;
  if (!qword_10044D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D560);
  }

  return result;
}

unint64_t sub_1001DDFD8()
{
  result = qword_10044D568;
  if (!qword_10044D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D568);
  }

  return result;
}

uint64_t sub_1001DE02C()
{
  sub_1002D44D8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001DE114(uint64_t a1)
{
  v2 = sub_1001DD810();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001DE164()
{
  result = qword_10044D580;
  if (!qword_10044D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D580);
  }

  return result;
}

uint64_t sub_1001DE1BC(uint64_t a1)
{
  v2 = sub_1001DDFD8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001DE20C()
{
  result = qword_10044D588;
  if (!qword_10044D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D588);
  }

  return result;
}

uint64_t sub_1001DE2D0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001DE658()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EB70);
  sub_10001EDB8(v0, qword_10051EB70);
  return sub_1002D88F0();
}

uint64_t sub_1001DE6BC()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EB88);
  v1 = sub_10001EDB8(v0, qword_10051EB88);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001DE77C()
{
  result = swift_getKeyPath();
  qword_10051EBA0 = result;
  return result;
}

uint64_t sub_1001DE7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454468, &qword_100350A60) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454470, &qword_100350A68);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001DE984, 0, 0);
}

uint64_t sub_1001DE984()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001DFAD0();
  *v4 = v0;
  v4[1] = sub_1001DEA68;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FE8, 0, &type metadata for AccessibilitySwitchControlEnabledEntity, v5);
}

uint64_t sub_1001DEA68()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001DEB64, 0, 0);
}

uint64_t sub_1001DEB64()
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
  if (qword_10043AF60 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EBA0;
  *(v0 + 288) = qword_10051EBA0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454450, &qword_100454458, &qword_100350A48);
  *v7 = v0;
  v7[1] = sub_1001DECC8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001DECC8()
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
    v6 = sub_1001DEE38;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001DEE38()
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
  sub_1001DE20C();
  sub_1001DFCE4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001DF0B0()
{
  v0 = sub_10000321C(&qword_100454478, &qword_100350A70);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AF60 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001DFCE4();
  sub_10002B6E4(&qword_100454480, &qword_100454478, &qword_100350A70);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001DF224(uint64_t *a1))(void *)
{
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

void (*sub_1001DF298(uint64_t *a1))(void *)
{
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

unint64_t sub_1001DF334()
{
  result = qword_10044D5A0;
  if (!qword_10044D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D5A0);
  }

  return result;
}

unint64_t sub_1001DF38C()
{
  result = qword_10044D5A8;
  if (!qword_10044D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D5A8);
  }

  return result;
}

uint64_t sub_1001DF488(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001DE7A4(a1, v5, v4);
}

uint64_t sub_1001DF534@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BC9B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001DF57C()
{
  result = qword_10044D5B0;
  if (!qword_10044D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D5B0);
  }

  return result;
}

unint64_t sub_1001DF5D4()
{
  result = qword_10044D5B8;
  if (!qword_10044D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D5B8);
  }

  return result;
}

uint64_t sub_1001DF648()
{
  v1 = *(v0 + 16);
  *v1 = _AXSAssistiveTouchScannerEnabled() != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DF6DC()
{
  v1 = *(v0 + 16);
  _AXSAssistiveTouchScannerSetEnabled();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DF740(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001DF7D0, 0, 0);
}

uint64_t sub_1001DF7D0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044D598, qword_100324EE8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454450, &qword_100454458, &qword_100350A48);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000001FLL;
  v2[1] = 0x8000000100378C50;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001DF918()
{
  result = qword_10044D5C0;
  if (!qword_10044D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D5C0);
  }

  return result;
}

uint64_t sub_1001DF96C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001DFF3C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001DFA20()
{
  result = qword_10044D5C8;
  if (!qword_10044D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D5C8);
  }

  return result;
}

unint64_t sub_1001DFA78()
{
  result = qword_10044D5D0;
  if (!qword_10044D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D5D0);
  }

  return result;
}

unint64_t sub_1001DFAD0()
{
  result = qword_10044D5D8;
  if (!qword_10044D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D5D8);
  }

  return result;
}

uint64_t sub_1001DFB24(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001DFF3C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001DFBD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001DFF3C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001DFC8C()
{
  result = qword_10044D5E0;
  if (!qword_10044D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D5E0);
  }

  return result;
}

unint64_t sub_1001DFCE4()
{
  result = qword_10044D5E8;
  if (!qword_10044D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D5E8);
  }

  return result;
}

uint64_t sub_1001DFD7C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001DF918();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001DFE34()
{
  result = qword_10044D600;
  if (!qword_10044D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D600);
  }

  return result;
}

unint64_t sub_1001DFE8C()
{
  result = qword_10044D608;
  if (!qword_10044D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D608);
  }

  return result;
}

unint64_t sub_1001DFEE4()
{
  result = qword_10044D610;
  if (!qword_10044D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D610);
  }

  return result;
}

unint64_t sub_1001DFF3C()
{
  result = qword_10044D618;
  if (!qword_10044D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D618);
  }

  return result;
}

uint64_t sub_1001DFF90()
{
  v0 = qword_100447198;

  return v0;
}

unint64_t sub_1001DFFCC()
{
  result = qword_10044D620;
  if (!qword_10044D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D620);
  }

  return result;
}

uint64_t sub_1001E0020()
{
  v0 = sub_10000321C(&qword_100454440, &qword_100350A28);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454448, &qword_100350A30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001DFAD0();
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

unint64_t sub_1001E01E8()
{
  result = qword_10044D628;
  if (!qword_10044D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D628);
  }

  return result;
}

unint64_t sub_1001E0240()
{
  result = qword_10044D630;
  if (!qword_10044D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D630);
  }

  return result;
}

unint64_t sub_1001E0298()
{
  result = qword_10044D638;
  if (!qword_10044D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D638);
  }

  return result;
}

uint64_t sub_1001E02EC()
{
  sub_1002D4484();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001E03D4(uint64_t a1)
{
  v2 = sub_1001DFAD0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001E0424()
{
  result = qword_10044D650;
  if (!qword_10044D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D650);
  }

  return result;
}

uint64_t sub_1001E047C(uint64_t a1)
{
  v2 = sub_1001E0298();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001E04CC()
{
  result = qword_10044D658;
  if (!qword_10044D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D658);
  }

  return result;
}

uint64_t sub_1001E0564()
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
  sub_10001EDF0(v7, qword_10051EBA8);
  sub_10001EDB8(v7, qword_10051EBA8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001E06D4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001E0A44()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EBC0);
  sub_10001EDB8(v0, qword_10051EBC0);
  return sub_1002D88F0();
}

uint64_t sub_1001E0AA8()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EBD8);
  v1 = sub_10001EDB8(v0, qword_10051EBD8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001E0B68()
{
  result = swift_getKeyPath();
  qword_10051EBF0 = result;
  return result;
}

uint64_t sub_1001E0B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454418, &qword_1003509E8) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v9 = *(v8 + 64) + 15;
  v3[29] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454420, &qword_1003509F0);
  v3[30] = v10;
  v11 = *(v10 - 8);
  v3[31] = v11;
  v12 = *(v11 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001E0D70, 0, 0);
}

uint64_t sub_1001E0D70()
{
  v1 = *(v0 + 176);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  v5 = sub_1001E1F24();
  *v4 = v0;
  v4[1] = sub_1001E0E54;
  v6 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FEC, 0, &type metadata for AccessibilitySwitchControlAutoScanningTimeEntity, v5);
}

uint64_t sub_1001E0E54()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_1001E0F50, 0, 0);
}

uint64_t sub_1001E0F50()
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
  if (qword_10043AF80 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EBF0;
  v0[37] = qword_10051EBF0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[38] = v7;
  v8 = sub_10002B6E4(&qword_100454400, &qword_100454408, &qword_1003509D0);
  *v7 = v0;
  v7[1] = sub_1001E10AC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v5, &type metadata for Double, v8);
}

uint64_t sub_1001E10AC()
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
    v6 = sub_1001E121C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001E121C()
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
  sub_1001E04CC();
  sub_1001E2138();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001E1494()
{
  v0 = sub_10000321C(&qword_100454428, &qword_1003509F8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AF80 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001E2138();
  sub_10002B6E4(&qword_100454430, &qword_100454428, &qword_1003509F8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001E1608(uint64_t *a1))(void *)
{
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

void (*sub_1001E167C(uint64_t *a1))(void *)
{
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

unint64_t sub_1001E1718()
{
  result = qword_10044D670;
  if (!qword_10044D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D670);
  }

  return result;
}

unint64_t sub_1001E1770()
{
  result = qword_10044D678;
  if (!qword_10044D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D678);
  }

  return result;
}

uint64_t sub_1001E186C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001E0B90(a1, v5, v4);
}

uint64_t sub_1001E1918@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BCE20();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001E1960()
{
  result = qword_10044D680;
  if (!qword_10044D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D680);
  }

  return result;
}

unint64_t sub_1001E19B8()
{
  result = qword_10044D688;
  if (!qword_10044D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D688);
  }

  return result;
}

uint64_t sub_1001E1A2C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 assistiveTouchStepInterval];
  v4 = v3;

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001E1AF4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchStepInterval:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001E1B8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001E1C1C, 0, 0);
}

uint64_t sub_1001E1C1C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044D668, qword_100325520);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454400, &qword_100454408, &qword_1003509D0);
  v3 = sub_1002D88B0();
  *v2 = 0xD000000000000053;
  v2[1] = 0x8000000100361370;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001E1D6C()
{
  result = qword_10044D690;
  if (!qword_10044D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D690);
  }

  return result;
}

uint64_t sub_1001E1DC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001E2390();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001E1E74()
{
  result = qword_10044D698;
  if (!qword_10044D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D698);
  }

  return result;
}

unint64_t sub_1001E1ECC()
{
  result = qword_10044D6A0;
  if (!qword_10044D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D6A0);
  }

  return result;
}

unint64_t sub_1001E1F24()
{
  result = qword_10044D6A8;
  if (!qword_10044D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D6A8);
  }

  return result;
}

uint64_t sub_1001E1F78(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001E2390();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001E202C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001E2390();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001E20E0()
{
  result = qword_10044D6B0;
  if (!qword_10044D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D6B0);
  }

  return result;
}

unint64_t sub_1001E2138()
{
  result = qword_10044D6B8;
  if (!qword_10044D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D6B8);
  }

  return result;
}

uint64_t sub_1001E21D0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001E1D6C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001E2288()
{
  result = qword_10044D6D0;
  if (!qword_10044D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D6D0);
  }

  return result;
}

unint64_t sub_1001E22E0()
{
  result = qword_10044D6D8;
  if (!qword_10044D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D6D8);
  }

  return result;
}

unint64_t sub_1001E2338()
{
  result = qword_10044D6E0;
  if (!qword_10044D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D6E0);
  }

  return result;
}

unint64_t sub_1001E2390()
{
  result = qword_10044D6E8;
  if (!qword_10044D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D6E8);
  }

  return result;
}

uint64_t sub_1001E23E4()
{
  v0 = qword_1004471A8;

  return v0;
}

unint64_t sub_1001E2420()
{
  result = qword_10044D6F0;
  if (!qword_10044D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D6F0);
  }

  return result;
}

uint64_t sub_1001E2474()
{
  v0 = sub_10000321C(&qword_1004543F0, &qword_1003509B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004543F8, &qword_1003509B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001E1F24();
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

unint64_t sub_1001E263C()
{
  result = qword_10044D6F8;
  if (!qword_10044D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D6F8);
  }

  return result;
}

unint64_t sub_1001E2694()
{
  result = qword_10044D700;
  if (!qword_10044D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D700);
  }

  return result;
}

unint64_t sub_1001E26EC()
{
  result = qword_10044D708;
  if (!qword_10044D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D708);
  }

  return result;
}

uint64_t sub_1001E2740()
{
  sub_1002D4430();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001E2828(uint64_t a1)
{
  v2 = sub_1001E1F24();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001E2878()
{
  result = qword_10044D720;
  if (!qword_10044D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D720);
  }

  return result;
}

uint64_t sub_1001E28D0(uint64_t a1)
{
  v2 = sub_1001E26EC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001E2920()
{
  result = qword_10044D728;
  if (!qword_10044D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D728);
  }

  return result;
}

uint64_t sub_1001E29DC()
{
  result = swift_getKeyPath();
  qword_10051EC40 = result;
  return result;
}

uint64_t sub_1001E2A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004543C8, &qword_100350970) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004543D0, &qword_100350978);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001E2BE4, 0, 0);
}

uint64_t sub_1001E2BE4()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001E3D9C();
  *v4 = v0;
  v4[1] = sub_1001E2CC8;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FF0, 0, &type metadata for AccessibilitySwitchControlPauseOnFirstItemEntity, v5);
}

uint64_t sub_1001E2CC8()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001E2DC4, 0, 0);
}

uint64_t sub_1001E2DC4()
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
  if (qword_10043AFA0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EC40;
  *(v0 + 288) = qword_10051EC40;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004543B0, &qword_1004543B8, &qword_100350958);
  *v7 = v0;
  v7[1] = sub_1001E2F28;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001E2F28()
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
    v6 = sub_1001E3098;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001E3098()
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
  sub_1001E2920();
  sub_1001E3FB0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001E3310()
{
  v0 = sub_10000321C(&qword_1004543D8, &qword_100350980);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AFA0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001E3FB0();
  sub_10002B6E4(&qword_1004543E0, &qword_1004543D8, &qword_100350980);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001E3484(uint64_t *a1))(void *)
{
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

void (*sub_1001E34F8(uint64_t *a1))(void *)
{
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

unint64_t sub_1001E3594()
{
  result = qword_10044D740;
  if (!qword_10044D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D740);
  }

  return result;
}

unint64_t sub_1001E35EC()
{
  result = qword_10044D748;
  if (!qword_10044D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D748);
  }

  return result;
}

uint64_t sub_1001E36E8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001E2A04(a1, v5, v4);
}

uint64_t sub_1001E3794@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BD2AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001E37DC()
{
  result = qword_10044D750;
  if (!qword_10044D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D750);
  }

  return result;
}

unint64_t sub_1001E3834()
{
  result = qword_10044D758;
  if (!qword_10044D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D758);
  }

  return result;
}

uint64_t sub_1001E38A8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchDelayAfterInputEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001E3970()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchDelayAfterInputEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001E3A08(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001E3A98, 0, 0);
}

uint64_t sub_1001E3A98()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044D738, qword_100325B58);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004543B0, &qword_1004543B8, &qword_100350958);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000046;
  v2[1] = 0x8000000100378AA0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001E3BE4()
{
  result = qword_10044D760;
  if (!qword_10044D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D760);
  }

  return result;
}

uint64_t sub_1001E3C38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001E4208();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001E3CEC()
{
  result = qword_10044D768;
  if (!qword_10044D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D768);
  }

  return result;
}

unint64_t sub_1001E3D44()
{
  result = qword_10044D770;
  if (!qword_10044D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D770);
  }

  return result;
}

unint64_t sub_1001E3D9C()
{
  result = qword_10044D778;
  if (!qword_10044D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D778);
  }

  return result;
}

uint64_t sub_1001E3DF0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001E4208();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001E3EA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001E4208();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001E3F58()
{
  result = qword_10044D780;
  if (!qword_10044D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D780);
  }

  return result;
}

unint64_t sub_1001E3FB0()
{
  result = qword_10044D788;
  if (!qword_10044D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D788);
  }

  return result;
}

uint64_t sub_1001E4048(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001E3BE4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001E4100()
{
  result = qword_10044D7A0;
  if (!qword_10044D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D7A0);
  }

  return result;
}

unint64_t sub_1001E4158()
{
  result = qword_10044D7A8;
  if (!qword_10044D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D7A8);
  }

  return result;
}

unint64_t sub_1001E41B0()
{
  result = qword_10044D7B0;
  if (!qword_10044D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D7B0);
  }

  return result;
}

unint64_t sub_1001E4208()
{
  result = qword_10044D7B8;
  if (!qword_10044D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D7B8);
  }

  return result;
}

uint64_t sub_1001E425C()
{
  v0 = qword_1004471B8;

  return v0;
}

unint64_t sub_1001E4298()
{
  result = qword_10044D7C0;
  if (!qword_10044D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D7C0);
  }

  return result;
}

uint64_t sub_1001E42EC()
{
  v0 = sub_10000321C(&qword_1004543A0, &qword_100350938);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004543A8, &qword_100350940);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001E3D9C();
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

unint64_t sub_1001E44B4()
{
  result = qword_10044D7C8;
  if (!qword_10044D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D7C8);
  }

  return result;
}

unint64_t sub_1001E450C()
{
  result = qword_10044D7D0;
  if (!qword_10044D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D7D0);
  }

  return result;
}

unint64_t sub_1001E4564()
{
  result = qword_10044D7D8;
  if (!qword_10044D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D7D8);
  }

  return result;
}

uint64_t sub_1001E45B8()
{
  sub_1002D43DC();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001E46A0(uint64_t a1)
{
  v2 = sub_1001E3D9C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001E46F0()
{
  result = qword_10044D7F0;
  if (!qword_10044D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D7F0);
  }

  return result;
}

uint64_t sub_1001E475C(uint64_t a1)
{
  v2 = sub_1001E4564();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001E47AC()
{
  result = qword_10044D7F8;
  if (!qword_10044D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D7F8);
  }

  return result;
}

uint64_t sub_1001E4850(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1001E49BC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001E4D38(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

uint64_t sub_1001E4DA4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v3, a2);
  v4 = sub_10001EDB8(v3, a2);
  sub_1002D8620();
  v5 = sub_1002D8630();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_1001E4E60()
{
  result = swift_getKeyPath();
  qword_10051EC90 = result;
  return result;
}

uint64_t sub_1001E4E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454378, &qword_1003508F8) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v9 = *(v8 + 64) + 15;
  v3[29] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454380, &qword_100350900);
  v3[30] = v10;
  v11 = *(v10 - 8);
  v3[31] = v11;
  v12 = *(v11 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001E5068, 0, 0);
}

uint64_t sub_1001E5068()
{
  v1 = *(v0 + 176);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  v5 = sub_1001E6218();
  *v4 = v0;
  v4[1] = sub_1001E514C;
  v6 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FF4, 0, &type metadata for AccessibilitySwitchControlPauseOnFirstItemIntervalEntity, v5);
}

uint64_t sub_1001E514C()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_1001E5248, 0, 0);
}

uint64_t sub_1001E5248()
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
  if (qword_10043AFC0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EC90;
  v0[37] = qword_10051EC90;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[38] = v7;
  v8 = sub_10002B6E4(&qword_100454360, &qword_100454368, &qword_1003508E0);
  *v7 = v0;
  v7[1] = sub_1001E53A4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v5, &type metadata for Double, v8);
}

uint64_t sub_1001E53A4()
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
    v6 = sub_1001E5514;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001E5514()
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
  sub_1001E47AC();
  sub_1001E642C();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001E578C()
{
  v0 = sub_10000321C(&qword_100454388, &qword_100350908);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AFC0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001E642C();
  sub_10002B6E4(&qword_100454390, &qword_100454388, &qword_100350908);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001E5900(uint64_t *a1))(void *)
{
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

void (*sub_1001E5974(uint64_t *a1))(void *)
{
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

unint64_t sub_1001E5A10()
{
  result = qword_10044D810;
  if (!qword_10044D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D810);
  }

  return result;
}

unint64_t sub_1001E5A68()
{
  result = qword_10044D818;
  if (!qword_10044D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D818);
  }

  return result;
}

uint64_t sub_1001E5B64(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001E4E88(a1, v5, v4);
}

uint64_t sub_1001E5C10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BD714();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001E5C58()
{
  result = qword_10044D820;
  if (!qword_10044D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D820);
  }

  return result;
}

unint64_t sub_1001E5CB0()
{
  result = qword_10044D828;
  if (!qword_10044D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D828);
  }

  return result;
}

uint64_t sub_1001E5D24()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 assistiveTouchDelayAfterInput];
  v4 = v3;

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001E5DEC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchDelayAfterInput:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001E5E84(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001E5F14, 0, 0);
}

uint64_t sub_1001E5F14()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044D808, qword_100326190);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454360, &qword_100454368, &qword_1003508E0);
  v3 = sub_1002D88B0();
  *v2 = 0xD000000000000052;
  v2[1] = 0x800000010035CFE0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001E6060()
{
  result = qword_10044D830;
  if (!qword_10044D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D830);
  }

  return result;
}

uint64_t sub_1001E60B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001E6684();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001E6168()
{
  result = qword_10044D838;
  if (!qword_10044D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D838);
  }

  return result;
}

unint64_t sub_1001E61C0()
{
  result = qword_10044D840;
  if (!qword_10044D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D840);
  }

  return result;
}

unint64_t sub_1001E6218()
{
  result = qword_10044D848;
  if (!qword_10044D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D848);
  }

  return result;
}

uint64_t sub_1001E626C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001E6684();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001E6320(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001E6684();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001E63D4()
{
  result = qword_10044D850;
  if (!qword_10044D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D850);
  }

  return result;
}

unint64_t sub_1001E642C()
{
  result = qword_10044D858;
  if (!qword_10044D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D858);
  }

  return result;
}

uint64_t sub_1001E64C4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001E6060();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001E657C()
{
  result = qword_10044D870;
  if (!qword_10044D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D870);
  }

  return result;
}

unint64_t sub_1001E65D4()
{
  result = qword_10044D878;
  if (!qword_10044D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D878);
  }

  return result;
}

unint64_t sub_1001E662C()
{
  result = qword_10044D880;
  if (!qword_10044D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D880);
  }

  return result;
}

unint64_t sub_1001E6684()
{
  result = qword_10044D888;
  if (!qword_10044D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D888);
  }

  return result;
}

uint64_t sub_1001E66D8()
{
  v0 = qword_1004471C8;

  return v0;
}

unint64_t sub_1001E6714()
{
  result = qword_10044D890;
  if (!qword_10044D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D890);
  }

  return result;
}

uint64_t sub_1001E6768()
{
  v0 = sub_10000321C(&qword_100454350, &qword_1003508C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454358, &qword_1003508C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001E6218();
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

unint64_t sub_1001E6930()
{
  result = qword_10044D898;
  if (!qword_10044D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D898);
  }

  return result;
}

unint64_t sub_1001E6988()
{
  result = qword_10044D8A0;
  if (!qword_10044D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D8A0);
  }

  return result;
}

unint64_t sub_1001E69E0()
{
  result = qword_10044D8A8;
  if (!qword_10044D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D8A8);
  }

  return result;
}

uint64_t sub_1001E6A34()
{
  sub_1002D4388();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001E6B1C(uint64_t a1)
{
  v2 = sub_1001E6218();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001E6B6C()
{
  result = qword_10044D8C0;
  if (!qword_10044D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D8C0);
  }

  return result;
}

uint64_t sub_1001E6BC0(uint64_t a1)
{
  v2 = sub_1001E69E0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001E6C10()
{
  result = qword_10044D8C8;
  if (!qword_10044D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D8C8);
  }

  return result;
}

uint64_t sub_1001E6CE8()
{
  result = swift_getKeyPath();
  qword_10051ECE0 = result;
  return result;
}

uint64_t sub_1001E6D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454328, &qword_100350880) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454330, &qword_100350888);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001E6EF0, 0, 0);
}

uint64_t sub_1001E6EF0()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001E80A0();
  *v4 = v0;
  v4[1] = sub_1001E6FD4;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FF8, 0, &type metadata for AccessibilitySwitchControlMoveRepeatEntity, v5);
}

uint64_t sub_1001E6FD4()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001E70D0, 0, 0);
}

uint64_t sub_1001E70D0()
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
  if (qword_10043AFE0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051ECE0;
  *(v0 + 288) = qword_10051ECE0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454310, &qword_100454318, &qword_100350868);
  *v7 = v0;
  v7[1] = sub_1001E7234;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001E7234()
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
    v6 = sub_1001E73A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001E73A4()
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
  sub_1001E6C10();
  sub_1001E82B4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001E761C()
{
  v0 = sub_10000321C(&qword_100454338, &qword_100350890);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043AFE0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001E82B4();
  sub_10002B6E4(&qword_100454340, &qword_100454338, &qword_100350890);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001E7790(uint64_t *a1))(void *)
{
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

void (*sub_1001E7804(uint64_t *a1))(void *)
{
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

unint64_t sub_1001E78A0()
{
  result = qword_10044D8E0;
  if (!qword_10044D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D8E0);
  }

  return result;
}

unint64_t sub_1001E78F8()
{
  result = qword_10044D8E8;
  if (!qword_10044D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D8E8);
  }

  return result;
}

uint64_t sub_1001E79F4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001E6D10(a1, v5, v4);
}

uint64_t sub_1001E7AA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BDBA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001E7AE8()
{
  result = qword_10044D8F0;
  if (!qword_10044D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D8F0);
  }

  return result;
}

unint64_t sub_1001E7B40()
{
  result = qword_10044D8F8;
  if (!qword_10044D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D8F8);
  }

  return result;
}

uint64_t sub_1001E7BB4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchActionRepeatEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001E7C7C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchActionRepeatEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001E7D14(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001E7DA4, 0, 0);
}

uint64_t sub_1001E7DA4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044D8D8, qword_1003267C8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454310, &qword_100454318, &qword_100350868);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000040;
  v2[1] = 0x8000000100378900;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001E7EE8()
{
  result = qword_10044D900;
  if (!qword_10044D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D900);
  }

  return result;
}

uint64_t sub_1001E7F3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001E850C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001E7FF0()
{
  result = qword_10044D908;
  if (!qword_10044D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D908);
  }

  return result;
}

unint64_t sub_1001E8048()
{
  result = qword_10044D910;
  if (!qword_10044D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D910);
  }

  return result;
}

unint64_t sub_1001E80A0()
{
  result = qword_10044D918;
  if (!qword_10044D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D918);
  }

  return result;
}

uint64_t sub_1001E80F4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001E850C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001E81A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001E850C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001E825C()
{
  result = qword_10044D920;
  if (!qword_10044D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D920);
  }

  return result;
}

unint64_t sub_1001E82B4()
{
  result = qword_10044D928;
  if (!qword_10044D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D928);
  }

  return result;
}

uint64_t sub_1001E834C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001E7EE8();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001E8404()
{
  result = qword_10044D940;
  if (!qword_10044D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D940);
  }

  return result;
}

unint64_t sub_1001E845C()
{
  result = qword_10044D948;
  if (!qword_10044D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D948);
  }

  return result;
}

unint64_t sub_1001E84B4()
{
  result = qword_10044D950;
  if (!qword_10044D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D950);
  }

  return result;
}

unint64_t sub_1001E850C()
{
  result = qword_10044D958;
  if (!qword_10044D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D958);
  }

  return result;
}

uint64_t sub_1001E8560()
{
  v0 = qword_1004471D8;

  return v0;
}

unint64_t sub_1001E859C()
{
  result = qword_10044D960;
  if (!qword_10044D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D960);
  }

  return result;
}

uint64_t sub_1001E85F0()
{
  v0 = sub_10000321C(&qword_100454300, &qword_100350848);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454308, &qword_100350850);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001E80A0();
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

unint64_t sub_1001E87B8()
{
  result = qword_10044D968;
  if (!qword_10044D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D968);
  }

  return result;
}

unint64_t sub_1001E8810()
{
  result = qword_10044D970;
  if (!qword_10044D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D970);
  }

  return result;
}

unint64_t sub_1001E8868()
{
  result = qword_10044D978;
  if (!qword_10044D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D978);
  }

  return result;
}

uint64_t sub_1001E88BC()
{
  sub_1002D4334();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001E89A4(uint64_t a1)
{
  v2 = sub_1001E80A0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001E89F4()
{
  result = qword_10044D990;
  if (!qword_10044D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D990);
  }

  return result;
}

uint64_t sub_1001E8A60(uint64_t a1)
{
  v2 = sub_1001E8868();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001E8AB0()
{
  result = qword_10044D998;
  if (!qword_10044D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D998);
  }

  return result;
}

uint64_t sub_1001E8B70@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001E8EF4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

uint64_t sub_1001E8F60(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v3, a2);
  v4 = sub_10001EDB8(v3, a2);
  sub_1002D8620();
  v5 = sub_1002D8630();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_1001E901C()
{
  result = swift_getKeyPath();
  qword_10051ED30 = result;
  return result;
}

uint64_t sub_1001E9044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004542D8, &qword_100350808) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v9 = *(v8 + 64) + 15;
  v3[29] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004542E0, &qword_100350810);
  v3[30] = v10;
  v11 = *(v10 - 8);
  v3[31] = v11;
  v12 = *(v11 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001E9224, 0, 0);
}

uint64_t sub_1001E9224()
{
  v1 = *(v0 + 176);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  v5 = sub_1001EA3CC();
  *v4 = v0;
  v4[1] = sub_1001E9308;
  v6 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D6FFC, 0, &type metadata for AccessibilitySwitchControlMoveRepeatIntervalEntity, v5);
}

uint64_t sub_1001E9308()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_1001E9404, 0, 0);
}

uint64_t sub_1001E9404()
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
  if (qword_10043B000 != -1)
  {
    swift_once();
  }

  v5 = qword_10051ED30;
  v0[37] = qword_10051ED30;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[38] = v7;
  v8 = sub_10002B6E4(&qword_1004542C0, &qword_1004542C8, &qword_1003507F0);
  *v7 = v0;
  v7[1] = sub_1001E9560;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v5, &type metadata for Double, v8);
}

uint64_t sub_1001E9560()
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
    v6 = sub_1001E96D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001E96D0()
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
  sub_1001E8AB0();
  sub_1001EA5E0();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001E9948()
{
  v0 = sub_10000321C(&qword_1004542E8, &qword_100350818);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B000 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001EA5E0();
  sub_10002B6E4(&qword_1004542F0, &qword_1004542E8, &qword_100350818);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001E9ABC(uint64_t *a1))(void *)
{
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

void (*sub_1001E9B30(uint64_t *a1))(void *)
{
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

unint64_t sub_1001E9BCC()
{
  result = qword_10044D9B0;
  if (!qword_10044D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D9B0);
  }

  return result;
}

unint64_t sub_1001E9C24()
{
  result = qword_10044D9B8;
  if (!qword_10044D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D9B8);
  }

  return result;
}

uint64_t sub_1001E9D20(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001E9044(a1, v5, v4);
}

uint64_t sub_1001E9DCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BE008();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001E9E14()
{
  result = qword_10044D9C0;
  if (!qword_10044D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D9C0);
  }

  return result;
}

unint64_t sub_1001E9E6C()
{
  result = qword_10044D9C8;
  if (!qword_10044D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D9C8);
  }

  return result;
}

uint64_t sub_1001E9EE0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 assistiveTouchActionRepeatInterval];
  v4 = v3;

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001E9FA8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchActionRepeatInterval:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001EA040(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001EA0D0, 0, 0);
}

uint64_t sub_1001EA0D0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044D9A8, qword_100326E00);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004542C0, &qword_1004542C8, &qword_1003507F0);
  v3 = sub_1002D88B0();
  *v2 = 0xD00000000000004FLL;
  v2[1] = 0x800000010035D440;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001EA214()
{
  result = qword_10044D9D0;
  if (!qword_10044D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D9D0);
  }

  return result;
}

uint64_t sub_1001EA268(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001EA838();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001EA31C()
{
  result = qword_10044D9D8;
  if (!qword_10044D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D9D8);
  }

  return result;
}

unint64_t sub_1001EA374()
{
  result = qword_10044D9E0;
  if (!qword_10044D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D9E0);
  }

  return result;
}

unint64_t sub_1001EA3CC()
{
  result = qword_10044D9E8;
  if (!qword_10044D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D9E8);
  }

  return result;
}

uint64_t sub_1001EA420(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001EA838();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001EA4D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001EA838();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001EA588()
{
  result = qword_10044D9F0;
  if (!qword_10044D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D9F0);
  }

  return result;
}

unint64_t sub_1001EA5E0()
{
  result = qword_10044D9F8;
  if (!qword_10044D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044D9F8);
  }

  return result;
}

uint64_t sub_1001EA678(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001EA214();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001EA730()
{
  result = qword_10044DA10;
  if (!qword_10044DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DA10);
  }

  return result;
}

unint64_t sub_1001EA788()
{
  result = qword_10044DA18;
  if (!qword_10044DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DA18);
  }

  return result;
}

unint64_t sub_1001EA7E0()
{
  result = qword_10044DA20;
  if (!qword_10044DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DA20);
  }

  return result;
}

unint64_t sub_1001EA838()
{
  result = qword_10044DA28;
  if (!qword_10044DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DA28);
  }

  return result;
}

uint64_t sub_1001EA88C()
{
  v0 = qword_1004471E8;

  return v0;
}

unint64_t sub_1001EA8C8()
{
  result = qword_10044DA30;
  if (!qword_10044DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DA30);
  }

  return result;
}

uint64_t sub_1001EA91C()
{
  v0 = sub_10000321C(&qword_1004542B0, &qword_1003507D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004542B8, &qword_1003507D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001EA3CC();
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

unint64_t sub_1001EAAE4()
{
  result = qword_10044DA38;
  if (!qword_10044DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DA38);
  }

  return result;
}

unint64_t sub_1001EAB3C()
{
  result = qword_10044DA40;
  if (!qword_10044DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DA40);
  }

  return result;
}

unint64_t sub_1001EAB94()
{
  result = qword_10044DA48;
  if (!qword_10044DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DA48);
  }

  return result;
}

uint64_t sub_1001EABE8()
{
  sub_1002D42E0();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001EACD0(uint64_t a1)
{
  v2 = sub_1001EA3CC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001EAD20()
{
  result = qword_10044DA60;
  if (!qword_10044DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DA60);
  }

  return result;
}

uint64_t sub_1001EAD74(uint64_t a1)
{
  v2 = sub_1001EAB94();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001EADC4()
{
  result = qword_10044DA68;
  if (!qword_10044DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DA68);
  }

  return result;
}

uint64_t sub_1001EAE98()
{
  result = swift_getKeyPath();
  qword_10051ED80 = result;
  return result;
}

uint64_t sub_1001EAEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454288, &qword_100350790) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454290, &qword_100350798);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001EB0A0, 0, 0);
}

uint64_t sub_1001EB0A0()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001EC24C();
  *v4 = v0;
  v4[1] = sub_1001EB184;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7000, 0, &type metadata for AccessibilitySwitchControlLongPressEntity, v5);
}

uint64_t sub_1001EB184()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001EB280, 0, 0);
}

uint64_t sub_1001EB280()
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
  if (qword_10043B020 != -1)
  {
    swift_once();
  }

  v5 = qword_10051ED80;
  *(v0 + 288) = qword_10051ED80;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454270, &qword_100454278, &qword_100350778);
  *v7 = v0;
  v7[1] = sub_1001EB3E4;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001EB3E4()
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
    v6 = sub_1001EB554;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001EB554()
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
  sub_1001EADC4();
  sub_1001EC460();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001EB7CC()
{
  v0 = sub_10000321C(&qword_100454298, &qword_1003507A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B020 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001EC460();
  sub_10002B6E4(&qword_1004542A0, &qword_100454298, &qword_1003507A0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001EB940(uint64_t *a1))(void *)
{
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

void (*sub_1001EB9B4(uint64_t *a1))(void *)
{
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

unint64_t sub_1001EBA50()
{
  result = qword_10044DA80;
  if (!qword_10044DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DA80);
  }

  return result;
}

unint64_t sub_1001EBAA8()
{
  result = qword_10044DA88;
  if (!qword_10044DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DA88);
  }

  return result;
}

uint64_t sub_1001EBBA4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001EAEC0(a1, v5, v4);
}

uint64_t sub_1001EBC50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BE494();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001EBC98()
{
  result = qword_10044DA90;
  if (!qword_10044DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DA90);
  }

  return result;
}

unint64_t sub_1001EBCF0()
{
  result = qword_10044DA98;
  if (!qword_10044DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DA98);
  }

  return result;
}

uint64_t sub_1001EBD64()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchLongPressEnabled];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001EBE2C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchLongPressEnabled:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001EBEC4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001EBF54, 0, 0);
}

uint64_t sub_1001EBF54()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044DA78, qword_100327438);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454270, &qword_100454278, &qword_100350778);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003ALL;
  v2[1] = 0x8000000100378790;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001EC094()
{
  result = qword_10044DAA0;
  if (!qword_10044DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DAA0);
  }

  return result;
}

uint64_t sub_1001EC0E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001EC6B8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001EC19C()
{
  result = qword_10044DAA8;
  if (!qword_10044DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DAA8);
  }

  return result;
}

unint64_t sub_1001EC1F4()
{
  result = qword_10044DAB0;
  if (!qword_10044DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DAB0);
  }

  return result;
}

unint64_t sub_1001EC24C()
{
  result = qword_10044DAB8;
  if (!qword_10044DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DAB8);
  }

  return result;
}

uint64_t sub_1001EC2A0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001EC6B8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001EC354(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001EC6B8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001EC408()
{
  result = qword_10044DAC0;
  if (!qword_10044DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DAC0);
  }

  return result;
}

unint64_t sub_1001EC460()
{
  result = qword_10044DAC8;
  if (!qword_10044DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DAC8);
  }

  return result;
}

uint64_t sub_1001EC4F8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001EC094();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001EC5B0()
{
  result = qword_10044DAE0;
  if (!qword_10044DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DAE0);
  }

  return result;
}

unint64_t sub_1001EC608()
{
  result = qword_10044DAE8;
  if (!qword_10044DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DAE8);
  }

  return result;
}

unint64_t sub_1001EC660()
{
  result = qword_10044DAF0;
  if (!qword_10044DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DAF0);
  }

  return result;
}

unint64_t sub_1001EC6B8()
{
  result = qword_10044DAF8;
  if (!qword_10044DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DAF8);
  }

  return result;
}

uint64_t sub_1001EC70C()
{
  v0 = qword_1004471F8;

  return v0;
}

unint64_t sub_1001EC748()
{
  result = qword_10044DB00;
  if (!qword_10044DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB00);
  }

  return result;
}

uint64_t sub_1001EC79C()
{
  v0 = sub_10000321C(&qword_100454260, &qword_100350758);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454268, &qword_100350760);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001EC24C();
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

unint64_t sub_1001EC964()
{
  result = qword_10044DB08;
  if (!qword_10044DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB08);
  }

  return result;
}

unint64_t sub_1001EC9BC()
{
  result = qword_10044DB10;
  if (!qword_10044DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB10);
  }

  return result;
}

unint64_t sub_1001ECA14()
{
  result = qword_10044DB18;
  if (!qword_10044DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB18);
  }

  return result;
}

uint64_t sub_1001ECA68()
{
  sub_1002D428C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001ECB50(uint64_t a1)
{
  v2 = sub_1001EC24C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001ECBA0()
{
  result = qword_10044DB30;
  if (!qword_10044DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB30);
  }

  return result;
}

uint64_t sub_1001ECC0C(uint64_t a1)
{
  v2 = sub_1001ECA14();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001ECC5C()
{
  result = qword_10044DB38;
  if (!qword_10044DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB38);
  }

  return result;
}

uint64_t sub_1001ECD18@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001ED098(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

uint64_t sub_1001ED104(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v3, a2);
  v4 = sub_10001EDB8(v3, a2);
  sub_1002D8620();
  v5 = sub_1002D8630();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_1001ED1C0()
{
  result = swift_getKeyPath();
  qword_10051EDD0 = result;
  return result;
}

uint64_t sub_1001ED1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454238, &qword_100350718) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v9 = *(v8 + 64) + 15;
  v3[29] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454240, &qword_100350720);
  v3[30] = v10;
  v11 = *(v10 - 8);
  v3[31] = v11;
  v12 = *(v11 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001ED3C8, 0, 0);
}

uint64_t sub_1001ED3C8()
{
  v1 = *(v0 + 176);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 272) = v4;
  v5 = sub_1001EE56C();
  *v4 = v0;
  v4[1] = sub_1001ED4AC;
  v6 = *(v0 + 264);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7004, 0, &type metadata for AccessibilitySwitchControlLongPressIntervalEntity, v5);
}

uint64_t sub_1001ED4AC()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_1001ED5A8, 0, 0);
}

uint64_t sub_1001ED5A8()
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
  if (qword_10043B040 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EDD0;
  v0[37] = qword_10051EDD0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[38] = v7;
  v8 = sub_10002B6E4(&qword_100454220, &qword_100454228, &qword_100350700);
  *v7 = v0;
  v7[1] = sub_1001ED704;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 20, v5, &type metadata for Double, v8);
}

uint64_t sub_1001ED704()
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
    v6 = sub_1001ED874;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001ED874()
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
  sub_1001ECC5C();
  sub_1001EE780();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001EDAEC()
{
  v0 = sub_10000321C(&qword_100454248, &qword_100350728);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B040 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001EE780();
  sub_10002B6E4(&qword_100454250, &qword_100454248, &qword_100350728);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001EDC60(uint64_t *a1))(void *)
{
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

void (*sub_1001EDCD4(uint64_t *a1))(void *)
{
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

unint64_t sub_1001EDD70()
{
  result = qword_10044DB50;
  if (!qword_10044DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB50);
  }

  return result;
}

unint64_t sub_1001EDDC8()
{
  result = qword_10044DB58;
  if (!qword_10044DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB58);
  }

  return result;
}

uint64_t sub_1001EDEC4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001ED1E8(a1, v5, v4);
}

uint64_t sub_1001EDF70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BE8FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001EDFB8()
{
  result = qword_10044DB60;
  if (!qword_10044DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB60);
  }

  return result;
}

unint64_t sub_1001EE010()
{
  result = qword_10044DB68;
  if (!qword_10044DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB68);
  }

  return result;
}

uint64_t sub_1001EE084()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 assistiveTouchLongPressDuration];
  v4 = v3;

  *v1 = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001EE14C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAssistiveTouchLongPressDuration:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001EE1E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001EE274, 0, 0);
}

uint64_t sub_1001EE274()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044DB48, qword_100327A70);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454220, &qword_100454228, &qword_100350700);
  v3 = sub_1002D88B0();
  *v2 = 0xD00000000000004CLL;
  v2[1] = 0x800000010035D950;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001EE3B4()
{
  result = qword_10044DB70;
  if (!qword_10044DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB70);
  }

  return result;
}

uint64_t sub_1001EE408(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001EE9D8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001EE4BC()
{
  result = qword_10044DB78;
  if (!qword_10044DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB78);
  }

  return result;
}

unint64_t sub_1001EE514()
{
  result = qword_10044DB80;
  if (!qword_10044DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB80);
  }

  return result;
}

unint64_t sub_1001EE56C()
{
  result = qword_10044DB88;
  if (!qword_10044DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB88);
  }

  return result;
}

uint64_t sub_1001EE5C0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001EE9D8();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001EE674(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001EE9D8();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001EE728()
{
  result = qword_10044DB90;
  if (!qword_10044DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB90);
  }

  return result;
}

unint64_t sub_1001EE780()
{
  result = qword_10044DB98;
  if (!qword_10044DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DB98);
  }

  return result;
}

uint64_t sub_1001EE818(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001EE3B4();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001EE8D0()
{
  result = qword_10044DBB0;
  if (!qword_10044DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DBB0);
  }

  return result;
}

unint64_t sub_1001EE928()
{
  result = qword_10044DBB8;
  if (!qword_10044DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DBB8);
  }

  return result;
}

unint64_t sub_1001EE980()
{
  result = qword_10044DBC0;
  if (!qword_10044DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DBC0);
  }

  return result;
}

unint64_t sub_1001EE9D8()
{
  result = qword_10044DBC8;
  if (!qword_10044DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DBC8);
  }

  return result;
}

uint64_t sub_1001EEA2C()
{
  v0 = qword_100447208;

  return v0;
}

unint64_t sub_1001EEA68()
{
  result = qword_10044DBD0;
  if (!qword_10044DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DBD0);
  }

  return result;
}

uint64_t sub_1001EEABC()
{
  v0 = sub_10000321C(&qword_100454210, &qword_1003506E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454218, &qword_1003506E8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001EE56C();
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

unint64_t sub_1001EEC84()
{
  result = qword_10044DBD8;
  if (!qword_10044DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DBD8);
  }

  return result;
}

unint64_t sub_1001EECDC()
{
  result = qword_10044DBE0;
  if (!qword_10044DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DBE0);
  }

  return result;
}

unint64_t sub_1001EED34()
{
  result = qword_10044DBE8;
  if (!qword_10044DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DBE8);
  }

  return result;
}

uint64_t sub_1001EED88()
{
  sub_1002D4238();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001EEE70(uint64_t a1)
{
  v2 = sub_1001EE56C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001EEEC0()
{
  result = qword_10044DC00;
  if (!qword_10044DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC00);
  }

  return result;
}

uint64_t sub_1001EEF14(uint64_t a1)
{
  v2 = sub_1001EED34();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001EEF64()
{
  result = qword_10044DC08;
  if (!qword_10044DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC08);
  }

  return result;
}

uint64_t sub_1001EEFFC()
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
  sub_10001EDF0(v7, qword_10051EDD8);
  sub_10001EDB8(v7, qword_10051EDD8);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001EF16C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001EF4DC()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EDF0);
  sub_10001EDB8(v0, qword_10051EDF0);
  return sub_1002D88F0();
}

uint64_t sub_1001EF540()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EE08);
  v1 = sub_10001EDB8(v0, qword_10051EE08);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001EF600()
{
  result = swift_getKeyPath();
  qword_10051EE20 = result;
  return result;
}

uint64_t sub_1001EF628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004541E8, &qword_1003506A0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004541F0, &qword_1003506A8);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001EF808, 0, 0);
}

uint64_t sub_1001EF808()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001F09C4();
  *v4 = v0;
  v4[1] = sub_1001EF8EC;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7008, 0, &type metadata for AccessibilitySwitchControlIgnoreInvalidSwitchesEntity, v5);
}

uint64_t sub_1001EF8EC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001EF9E8, 0, 0);
}

uint64_t sub_1001EF9E8()
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
  if (qword_10043B060 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EE20;
  *(v0 + 288) = qword_10051EE20;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_1004541D0, &qword_1004541D8, &qword_100350688);
  *v7 = v0;
  v7[1] = sub_1001EFB4C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001EFB4C()
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
    v6 = sub_1001EFCBC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001EFCBC()
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
  sub_1001EEF64();
  sub_1001F0BD8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001EFF34()
{
  v0 = sub_10000321C(&qword_1004541F8, &qword_1003506B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B060 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001F0BD8();
  sub_10002B6E4(&qword_100454200, &qword_1004541F8, &qword_1003506B0);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001F00A8(uint64_t *a1))(void *)
{
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

void (*sub_1001F011C(uint64_t *a1))(void *)
{
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

unint64_t sub_1001F01B8()
{
  result = qword_10044DC20;
  if (!qword_10044DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC20);
  }

  return result;
}

unint64_t sub_1001F0210()
{
  result = qword_10044DC28;
  if (!qword_10044DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC28);
  }

  return result;
}

uint64_t sub_1001F030C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001EF628(a1, v5, v4);
}

uint64_t sub_1001F03B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BED88();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001F0400()
{
  result = qword_10044DC30;
  if (!qword_10044DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC30);
  }

  return result;
}

unint64_t sub_1001F0458()
{
  result = qword_10044DC38;
  if (!qword_10044DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC38);
  }

  return result;
}

uint64_t sub_1001F04CC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 switchControlIgnoreInvalidSwitchConfiguration];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001F0594()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setSwitchControlIgnoreInvalidSwitchConfiguration:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001F062C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001F06BC, 0, 0);
}

uint64_t sub_1001F06BC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044DC18, qword_1003280A8);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004541D0, &qword_1004541D8, &qword_100350688);
  v3 = sub_1002D88A0();
  *v2 = 0xD00000000000003FLL;
  v2[1] = 0x800000010035E630;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001F080C()
{
  result = qword_10044DC40;
  if (!qword_10044DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC40);
  }

  return result;
}

uint64_t sub_1001F0860(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001F0E30();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001F0914()
{
  result = qword_10044DC48;
  if (!qword_10044DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC48);
  }

  return result;
}

unint64_t sub_1001F096C()
{
  result = qword_10044DC50;
  if (!qword_10044DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC50);
  }

  return result;
}

unint64_t sub_1001F09C4()
{
  result = qword_10044DC58;
  if (!qword_10044DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC58);
  }

  return result;
}

uint64_t sub_1001F0A18(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001F0E30();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001F0ACC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001F0E30();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001F0B80()
{
  result = qword_10044DC60;
  if (!qword_10044DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC60);
  }

  return result;
}

unint64_t sub_1001F0BD8()
{
  result = qword_10044DC68;
  if (!qword_10044DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC68);
  }

  return result;
}

uint64_t sub_1001F0C70(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001F080C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001F0D28()
{
  result = qword_10044DC80;
  if (!qword_10044DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC80);
  }

  return result;
}

unint64_t sub_1001F0D80()
{
  result = qword_10044DC88;
  if (!qword_10044DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC88);
  }

  return result;
}

unint64_t sub_1001F0DD8()
{
  result = qword_10044DC90;
  if (!qword_10044DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC90);
  }

  return result;
}

unint64_t sub_1001F0E30()
{
  result = qword_10044DC98;
  if (!qword_10044DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DC98);
  }

  return result;
}

uint64_t sub_1001F0E84()
{
  v0 = qword_100447218;

  return v0;
}

unint64_t sub_1001F0EC0()
{
  result = qword_10044DCA0;
  if (!qword_10044DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DCA0);
  }

  return result;
}

uint64_t sub_1001F0F14()
{
  v0 = sub_10000321C(&qword_1004541C0, &qword_100350668);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004541C8, &qword_100350670);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001F09C4();
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

unint64_t sub_1001F10DC()
{
  result = qword_10044DCA8;
  if (!qword_10044DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DCA8);
  }

  return result;
}

unint64_t sub_1001F1134()
{
  result = qword_10044DCB0;
  if (!qword_10044DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DCB0);
  }

  return result;
}

unint64_t sub_1001F118C()
{
  result = qword_10044DCB8;
  if (!qword_10044DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DCB8);
  }

  return result;
}

uint64_t sub_1001F11E0()
{
  sub_1002D41E4();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001F12C8(uint64_t a1)
{
  v2 = sub_1001F09C4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001F1318()
{
  result = qword_10044DCD0;
  if (!qword_10044DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DCD0);
  }

  return result;
}

uint64_t sub_1001F1370(uint64_t a1)
{
  v2 = sub_1001F118C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001F13C0()
{
  result = qword_10044DCD8;
  if (!qword_10044DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DCD8);
  }

  return result;
}

uint64_t sub_1001F1458()
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
  sub_10001EDF0(v7, qword_10051EE28);
  sub_10001EDB8(v7, qword_10051EE28);
  sub_1002D88F0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1002D8830();
}

uint64_t sub_1001F15C8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001F1938()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EE40);
  sub_10001EDB8(v0, qword_10051EE40);
  return sub_1002D88F0();
}

uint64_t sub_1001F199C()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EE58);
  v1 = sub_10001EDB8(v0, qword_10051EE58);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001F1A5C()
{
  result = swift_getKeyPath();
  qword_10051EE70 = result;
  return result;
}

uint64_t sub_1001F1A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454198, &qword_100350628) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004541A0, &qword_100350630);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001F1C64, 0, 0);
}

uint64_t sub_1001F1C64()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001F2DE8();
  *v4 = v0;
  v4[1] = sub_1001F1D48;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D700C, 0, &type metadata for AccessibilitySwitchControlModeEntity, v5);
}

uint64_t sub_1001F1D48()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001F1E44, 0, 0);
}

uint64_t sub_1001F1E44()
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
  if (qword_10043B080 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EE70;
  v0[36] = qword_10051EE70;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100454178, &qword_100454180, &qword_100350608);
  *v7 = v0;
  v7[1] = sub_1001F1FA0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXSwitchControlModeAppEnum, v8);
}

uint64_t sub_1001F1FA0()
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
    v6 = sub_1001F2110;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001F2110()
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
  sub_1001F13C0();
  sub_1001F2FFC();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001F2388()
{
  v0 = sub_10000321C(&qword_1004541A8, &qword_100350638);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B080 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001F2FFC();
  sub_10002B6E4(&qword_1004541B0, &qword_1004541A8, &qword_100350638);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001F24FC(uint64_t *a1))(void *)
{
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

void (*sub_1001F2570(uint64_t *a1))(void *)
{
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

unint64_t sub_1001F260C()
{
  result = qword_10044DCF0;
  if (!qword_10044DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DCF0);
  }

  return result;
}

unint64_t sub_1001F2664()
{
  result = qword_10044DCF8;
  if (!qword_10044DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DCF8);
  }

  return result;
}

uint64_t sub_1001F2760(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001F1A84(a1, v5, v4);
}

uint64_t sub_1001F280C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BF1F0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001F2854()
{
  result = qword_10044DD00;
  if (!qword_10044DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD00);
  }

  return result;
}

uint64_t sub_1001F28CC()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 switchControlFirstLaunchScanningMode];

  if (v3 == 3)
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

uint64_t sub_1001F29A8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setSwitchControlFirstLaunchScanningMode:qword_100354200[v1]];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001F2A48(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001F2AD8, 0, 0);
}

uint64_t sub_1001F2AD8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044DCE8, &qword_1003286E0);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454178, &qword_100454180, &qword_100350608);
  sub_1000190CC();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000034;
  v2[1] = 0x8000000100378450;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001F2C30()
{
  result = qword_10044DD08;
  if (!qword_10044DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD08);
  }

  return result;
}

uint64_t sub_1001F2C84(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001F3254();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001F2D38()
{
  result = qword_10044DD10;
  if (!qword_10044DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD10);
  }

  return result;
}

unint64_t sub_1001F2D90()
{
  result = qword_10044DD18;
  if (!qword_10044DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD18);
  }

  return result;
}

unint64_t sub_1001F2DE8()
{
  result = qword_10044DD20;
  if (!qword_10044DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD20);
  }

  return result;
}

uint64_t sub_1001F2E3C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001F3254();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001F2EF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001F3254();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001F2FA4()
{
  result = qword_10044DD28;
  if (!qword_10044DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD28);
  }

  return result;
}

unint64_t sub_1001F2FFC()
{
  result = qword_10044DD30;
  if (!qword_10044DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD30);
  }

  return result;
}

uint64_t sub_1001F3094(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001F2C30();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001F314C()
{
  result = qword_10044DD48;
  if (!qword_10044DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD48);
  }

  return result;
}

unint64_t sub_1001F31A4()
{
  result = qword_10044DD50;
  if (!qword_10044DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD50);
  }

  return result;
}

unint64_t sub_1001F31FC()
{
  result = qword_10044DD58;
  if (!qword_10044DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD58);
  }

  return result;
}

unint64_t sub_1001F3254()
{
  result = qword_10044DD60;
  if (!qword_10044DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD60);
  }

  return result;
}

uint64_t sub_1001F32A8()
{
  v0 = qword_100447228;

  return v0;
}

unint64_t sub_1001F32E4()
{
  result = qword_10044DD68;
  if (!qword_10044DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD68);
  }

  return result;
}

uint64_t sub_1001F3338()
{
  v0 = sub_10000321C(&qword_100454168, &qword_1003505E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454170, &qword_1003505F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001F2DE8();
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

unint64_t sub_1001F3500()
{
  result = qword_10044DD70;
  if (!qword_10044DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD70);
  }

  return result;
}

unint64_t sub_1001F3558()
{
  result = qword_10044DD78;
  if (!qword_10044DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD78);
  }

  return result;
}

unint64_t sub_1001F35B0()
{
  result = qword_10044DD80;
  if (!qword_10044DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD80);
  }

  return result;
}

uint64_t sub_1001F3604()
{
  sub_1002D4190();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001F36EC(uint64_t a1)
{
  v2 = sub_1001F2DE8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001F373C()
{
  result = qword_10044DD98;
  if (!qword_10044DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DD98);
  }

  return result;
}

uint64_t sub_1001F3794(uint64_t a1)
{
  v2 = sub_1001F35B0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001F37E4()
{
  result = qword_10044DDA0;
  if (!qword_10044DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DDA0);
  }

  return result;
}

uint64_t sub_1001F38A4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001F3C1C()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EE90);
  sub_10001EDB8(v0, qword_10051EE90);
  return sub_1002D88F0();
}

uint64_t sub_1001F3C80()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EEA8);
  v1 = sub_10001EDB8(v0, qword_10051EEA8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001F3D40()
{
  result = swift_getKeyPath();
  qword_10051EEC0 = result;
  return result;
}

uint64_t sub_1001F3D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454140, &qword_1003505A8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454148, &qword_1003505B0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001F3F48, 0, 0);
}

uint64_t sub_1001F3F48()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001F50C4();
  *v4 = v0;
  v4[1] = sub_1001F402C;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7010, 0, &type metadata for AccessibilitySwitchControlTapBehaviorEntity, v5);
}

uint64_t sub_1001F402C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001F4128, 0, 0);
}

uint64_t sub_1001F4128()
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
  if (qword_10043B0A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EEC0;
  v0[36] = qword_10051EEC0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100454120, &qword_100454128, &qword_100350588);
  *v7 = v0;
  v7[1] = sub_1001F4284;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXSwitchControlTapBehaviorAppEnum, v8);
}

uint64_t sub_1001F4284()
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
    v6 = sub_1001F43F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001F43F4()
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
  sub_1001F37E4();
  sub_1001F52D8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001F466C()
{
  v0 = sub_10000321C(&qword_100454150, &qword_1003505B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B0A0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001F52D8();
  sub_10002B6E4(&qword_100454158, &qword_100454150, &qword_1003505B8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001F47E0(uint64_t *a1))(void *)
{
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

void (*sub_1001F4854(uint64_t *a1))(void *)
{
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

unint64_t sub_1001F48F0()
{
  result = qword_10044DDB8;
  if (!qword_10044DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DDB8);
  }

  return result;
}

unint64_t sub_1001F4948()
{
  result = qword_10044DDC0;
  if (!qword_10044DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DDC0);
  }

  return result;
}

uint64_t sub_1001F4A44(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001F3D68(a1, v5, v4);
}

uint64_t sub_1001F4AF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BF5F4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001F4B38()
{
  result = qword_10044DDC8;
  if (!qword_10044DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DDC8);
  }

  return result;
}

uint64_t sub_1001F4BB0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 switchControlTapBehavior];

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

uint64_t sub_1001F4C8C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setSwitchControlTapBehavior:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001F4D24(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001F4DB4, 0, 0);
}

uint64_t sub_1001F4DB4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044DDB0, &qword_100328D18);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454120, &qword_100454128, &qword_100350588);
  sub_100019C60();
  v3 = sub_1002D8890();
  *v2 = 0xD000000000000028;
  v2[1] = 0x8000000100378340;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001F4F0C()
{
  result = qword_10044DDD0;
  if (!qword_10044DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DDD0);
  }

  return result;
}

uint64_t sub_1001F4F60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001F5530();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001F5014()
{
  result = qword_10044DDD8;
  if (!qword_10044DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DDD8);
  }

  return result;
}

unint64_t sub_1001F506C()
{
  result = qword_10044DDE0;
  if (!qword_10044DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DDE0);
  }

  return result;
}

unint64_t sub_1001F50C4()
{
  result = qword_10044DDE8;
  if (!qword_10044DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DDE8);
  }

  return result;
}

uint64_t sub_1001F5118(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001F5530();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001F51CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001F5530();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001F5280()
{
  result = qword_10044DDF0;
  if (!qword_10044DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DDF0);
  }

  return result;
}

unint64_t sub_1001F52D8()
{
  result = qword_10044DDF8;
  if (!qword_10044DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DDF8);
  }

  return result;
}

uint64_t sub_1001F5370(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001F4F0C();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001F5428()
{
  result = qword_10044DE10;
  if (!qword_10044DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE10);
  }

  return result;
}

unint64_t sub_1001F5480()
{
  result = qword_10044DE18;
  if (!qword_10044DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE18);
  }

  return result;
}

unint64_t sub_1001F54D8()
{
  result = qword_10044DE20;
  if (!qword_10044DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE20);
  }

  return result;
}

unint64_t sub_1001F5530()
{
  result = qword_10044DE28;
  if (!qword_10044DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE28);
  }

  return result;
}

uint64_t sub_1001F5584()
{
  v0 = qword_100447238;

  return v0;
}

unint64_t sub_1001F55C0()
{
  result = qword_10044DE30;
  if (!qword_10044DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE30);
  }

  return result;
}

uint64_t sub_1001F5614()
{
  v0 = sub_10000321C(&qword_100454110, &qword_100350568);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454118, &qword_100350570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001F50C4();
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

unint64_t sub_1001F57DC()
{
  result = qword_10044DE38;
  if (!qword_10044DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE38);
  }

  return result;
}

unint64_t sub_1001F5834()
{
  result = qword_10044DE40;
  if (!qword_10044DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE40);
  }

  return result;
}

unint64_t sub_1001F588C()
{
  result = qword_10044DE48;
  if (!qword_10044DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE48);
  }

  return result;
}

uint64_t sub_1001F58E0()
{
  sub_1002D413C();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001F59C8(uint64_t a1)
{
  v2 = sub_1001F50C4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001F5A18()
{
  result = qword_10044DE60;
  if (!qword_10044DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE60);
  }

  return result;
}

uint64_t sub_1001F5A70(uint64_t a1)
{
  v2 = sub_1001F588C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001F5AC0()
{
  result = qword_10044DE68;
  if (!qword_10044DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE68);
  }

  return result;
}

uint64_t sub_1001F5B84@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001F5F00()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EEE0);
  sub_10001EDB8(v0, qword_10051EEE0);
  return sub_1002D88F0();
}

uint64_t sub_1001F5F64()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EEF8);
  v1 = sub_10001EDB8(v0, qword_10051EEF8);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001F6024()
{
  result = swift_getKeyPath();
  qword_10051EF10 = result;
  return result;
}

uint64_t sub_1001F604C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_1004540E8, &qword_100350528) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_1004540F0, &qword_100350530);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001F622C, 0, 0);
}

uint64_t sub_1001F622C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001F73B4();
  *v4 = v0;
  v4[1] = sub_1001F6310;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7014, 0, &type metadata for AccessibilitySwitchControlGlidingCursorSelectionModeEntity, v5);
}

uint64_t sub_1001F6310()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001F640C, 0, 0);
}

uint64_t sub_1001F640C()
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
  if (qword_10043B0C0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EF10;
  v0[36] = qword_10051EF10;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_1004540C8, &qword_1004540D0, &qword_100350508);
  *v7 = v0;
  v7[1] = sub_1001F6568;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXSwitchControlGlidingCursorSelectionModeAppEnum, v8);
}

uint64_t sub_1001F6568()
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
    v6 = sub_1001F66D8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001F66D8()
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
  sub_1001F5AC0();
  sub_1001F75C8();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001F6950()
{
  v0 = sub_10000321C(&qword_1004540F8, &qword_100350538);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B0C0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001F75C8();
  sub_10002B6E4(&qword_100454100, &qword_1004540F8, &qword_100350538);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001F6AC4(uint64_t *a1))(void *)
{
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

void (*sub_1001F6B38(uint64_t *a1))(void *)
{
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

unint64_t sub_1001F6BD4()
{
  result = qword_10044DE80;
  if (!qword_10044DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE80);
  }

  return result;
}

unint64_t sub_1001F6C2C()
{
  result = qword_10044DE88;
  if (!qword_10044DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE88);
  }

  return result;
}

uint64_t sub_1001F6D28(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001F604C(a1, v5, v4);
}

uint64_t sub_1001F6DD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BF9F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001F6E1C()
{
  result = qword_10044DE90;
  if (!qword_10044DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE90);
  }

  return result;
}

uint64_t sub_1001F6E94()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 switchControlPointPickerSelectionStyle];

  v3 = 0x20001u >> (8 * v2);
  if (v2 >= 3)
  {
    LOBYTE(v3) = 1;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001F6F70()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setSwitchControlPointPickerSelectionStyle:qword_100354218[v1]];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001F7010(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001F70A0, 0, 0);
}

uint64_t sub_1001F70A0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044DE78, &qword_100329350);
  sub_1002D88F0();
  sub_10002B6E4(&qword_1004540C8, &qword_1004540D0, &qword_100350508);
  sub_10001ABB4();
  v3 = sub_1002D8890();
  *v2 = 0xD00000000000003ALL;
  v2[1] = 0x800000010035BFD0;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001F71FC()
{
  result = qword_10044DE98;
  if (!qword_10044DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DE98);
  }

  return result;
}

uint64_t sub_1001F7250(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001F7820();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001F7304()
{
  result = qword_10044DEA0;
  if (!qword_10044DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEA0);
  }

  return result;
}

unint64_t sub_1001F735C()
{
  result = qword_10044DEA8;
  if (!qword_10044DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEA8);
  }

  return result;
}

unint64_t sub_1001F73B4()
{
  result = qword_10044DEB0;
  if (!qword_10044DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEB0);
  }

  return result;
}

uint64_t sub_1001F7408(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001F7820();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001F74BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001F7820();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001F7570()
{
  result = qword_10044DEB8;
  if (!qword_10044DEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEB8);
  }

  return result;
}

unint64_t sub_1001F75C8()
{
  result = qword_10044DEC0;
  if (!qword_10044DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEC0);
  }

  return result;
}

uint64_t sub_1001F7660(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001F71FC();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001F7718()
{
  result = qword_10044DED8;
  if (!qword_10044DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DED8);
  }

  return result;
}

unint64_t sub_1001F7770()
{
  result = qword_10044DEE0;
  if (!qword_10044DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEE0);
  }

  return result;
}

unint64_t sub_1001F77C8()
{
  result = qword_10044DEE8;
  if (!qword_10044DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEE8);
  }

  return result;
}

unint64_t sub_1001F7820()
{
  result = qword_10044DEF0;
  if (!qword_10044DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEF0);
  }

  return result;
}

uint64_t sub_1001F7874()
{
  v0 = qword_100447248;

  return v0;
}

unint64_t sub_1001F78B0()
{
  result = qword_10044DEF8;
  if (!qword_10044DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DEF8);
  }

  return result;
}

uint64_t sub_1001F7904()
{
  v0 = sub_10000321C(&qword_1004540B8, &qword_1003504E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_1004540C0, &qword_1003504F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001F73B4();
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

unint64_t sub_1001F7ACC()
{
  result = qword_10044DF00;
  if (!qword_10044DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF00);
  }

  return result;
}

unint64_t sub_1001F7B24()
{
  result = qword_10044DF08;
  if (!qword_10044DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF08);
  }

  return result;
}

unint64_t sub_1001F7B7C()
{
  result = qword_10044DF10;
  if (!qword_10044DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF10);
  }

  return result;
}

uint64_t sub_1001F7BD0()
{
  sub_1002D40E8();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001F7CB8(uint64_t a1)
{
  v2 = sub_1001F73B4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001F7D08()
{
  result = qword_10044DF28;
  if (!qword_10044DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF28);
  }

  return result;
}

uint64_t sub_1001F7D60(uint64_t a1)
{
  v2 = sub_1001F7B7C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001F7DB0()
{
  result = qword_10044DF30;
  if (!qword_10044DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF30);
  }

  return result;
}

uint64_t sub_1001F7E74@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001F81F0()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EF30);
  sub_10001EDB8(v0, qword_10051EF30);
  return sub_1002D88F0();
}

uint64_t sub_1001F8254()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EF48);
  v1 = sub_10001EDB8(v0, qword_10051EF48);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001F8314()
{
  result = swift_getKeyPath();
  qword_10051EF60 = result;
  return result;
}

uint64_t sub_1001F833C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454090, &qword_1003504A8) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454098, &qword_1003504B0);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001F851C, 0, 0);
}

uint64_t sub_1001F851C()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001F96D0();
  *v4 = v0;
  v4[1] = sub_1001F8600;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D7018, 0, &type metadata for AccessibilitySwitchControlUseHeadTrackingEntity, v5);
}

uint64_t sub_1001F8600()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001F86FC, 0, 0);
}

uint64_t sub_1001F86FC()
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
  if (qword_10043B0E0 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EF60;
  *(v0 + 288) = qword_10051EF60;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  v8 = sub_10002B6E4(&qword_100454078, &qword_100454080, &qword_100350490);
  *v7 = v0;
  v7[1] = sub_1001F8860;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 313, v5, &type metadata for Bool, v8);
}

uint64_t sub_1001F8860()
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
    v6 = sub_1001F89D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001F89D0()
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
  sub_1001F7DB0();
  sub_1001F98E4();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001F8C48()
{
  v0 = sub_10000321C(&qword_1004540A0, &qword_1003504B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B0E0 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001F98E4();
  sub_10002B6E4(&qword_1004540A8, &qword_1004540A0, &qword_1003504B8);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001F8DBC(uint64_t *a1))(void *)
{
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

void (*sub_1001F8E30(uint64_t *a1))(void *)
{
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

unint64_t sub_1001F8ECC()
{
  result = qword_10044DF48;
  if (!qword_10044DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF48);
  }

  return result;
}

unint64_t sub_1001F8F24()
{
  result = qword_10044DF50;
  if (!qword_10044DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF50);
  }

  return result;
}

uint64_t sub_1001F9020(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001F833C(a1, v5, v4);
}

uint64_t sub_1001F90CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BFDFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001F9114()
{
  result = qword_10044DF58;
  if (!qword_10044DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF58);
  }

  return result;
}

unint64_t sub_1001F916C()
{
  result = qword_10044DF60;
  if (!qword_10044DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF60);
  }

  return result;
}

uint64_t sub_1001F91E0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 switchControlUseCameraForPointMode];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001F92A8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  [v2 setSwitchControlUseCameraForPointMode:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001F9340(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1002D8910() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1001F93D0, 0, 0);
}

uint64_t sub_1001F93D0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10000321C(&qword_10044DF40, qword_100329988);
  sub_1002D88F0();
  sub_10002B6E4(&qword_100454078, &qword_100454080, &qword_100350490);
  v3 = sub_1002D88A0();
  *v2 = 0xD000000000000044;
  v2[1] = 0x800000010035EF50;
  v2[2] = v3;

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001F9518()
{
  result = qword_10044DF68;
  if (!qword_10044DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF68);
  }

  return result;
}

uint64_t sub_1001F956C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001F9B3C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_1001F9620()
{
  result = qword_10044DF70;
  if (!qword_10044DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF70);
  }

  return result;
}

unint64_t sub_1001F9678()
{
  result = qword_10044DF78;
  if (!qword_10044DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF78);
  }

  return result;
}

unint64_t sub_1001F96D0()
{
  result = qword_10044DF80;
  if (!qword_10044DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF80);
  }

  return result;
}

uint64_t sub_1001F9724(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001F9B3C();
  *v6 = v2;
  v6[1] = sub_1000D9828;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_1001F97D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_1001F9B3C();
  *v5 = v2;
  v5[1] = sub_1000D980C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_1001F988C()
{
  result = qword_10044DF88;
  if (!qword_10044DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF88);
  }

  return result;
}

unint64_t sub_1001F98E4()
{
  result = qword_10044DF90;
  if (!qword_10044DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DF90);
  }

  return result;
}

uint64_t sub_1001F997C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1001F9518();
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_1001F9A34()
{
  result = qword_10044DFA8;
  if (!qword_10044DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFA8);
  }

  return result;
}

unint64_t sub_1001F9A8C()
{
  result = qword_10044DFB0;
  if (!qword_10044DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFB0);
  }

  return result;
}

unint64_t sub_1001F9AE4()
{
  result = qword_10044DFB8;
  if (!qword_10044DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFB8);
  }

  return result;
}

unint64_t sub_1001F9B3C()
{
  result = qword_10044DFC0;
  if (!qword_10044DFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFC0);
  }

  return result;
}

uint64_t sub_1001F9B90()
{
  v0 = qword_100447258;

  return v0;
}

unint64_t sub_1001F9BCC()
{
  result = qword_10044DFC8;
  if (!qword_10044DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFC8);
  }

  return result;
}

uint64_t sub_1001F9C20()
{
  v0 = sub_10000321C(&qword_100454068, &qword_100350470);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000321C(&qword_100454070, &qword_100350478);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1001F96D0();
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

unint64_t sub_1001F9DE8()
{
  result = qword_10044DFD0;
  if (!qword_10044DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFD0);
  }

  return result;
}

unint64_t sub_1001F9E40()
{
  result = qword_10044DFD8;
  if (!qword_10044DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFD8);
  }

  return result;
}

unint64_t sub_1001F9E98()
{
  result = qword_10044DFE0;
  if (!qword_10044DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFE0);
  }

  return result;
}

uint64_t sub_1001F9EEC()
{
  sub_1002D4094();
  v1 = sub_1002D87B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001F9FD4(uint64_t a1)
{
  v2 = sub_1001F96D0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1001FA024()
{
  result = qword_10044DFF8;
  if (!qword_10044DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044DFF8);
  }

  return result;
}

uint64_t sub_1001FA07C(uint64_t a1)
{
  v2 = sub_1001F9E98();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1001FA0CC()
{
  result = qword_10044E000;
  if (!qword_10044E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E000);
  }

  return result;
}

uint64_t sub_1001FA18C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001FA504()
{
  v0 = sub_1002D8910();
  sub_10001EDF0(v0, qword_10051EF80);
  sub_10001EDB8(v0, qword_10051EF80);
  return sub_1002D88F0();
}

uint64_t sub_1001FA568()
{
  v0 = sub_10000321C(&qword_100452A70, &qword_10034E3D0);
  sub_10001EDF0(v0, qword_10051EF98);
  v1 = sub_10001EDB8(v0, qword_10051EF98);
  sub_1002D8620();
  v2 = sub_1002D8630();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1001FA628()
{
  result = swift_getKeyPath();
  qword_10051EFB0 = result;
  return result;
}

uint64_t sub_1001FA650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = *(*(sub_10000321C(&qword_100452A40, &qword_10034E380) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v5 = *(*(sub_10000321C(&qword_100452A48, &qword_10034E388) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v6 = *(*(sub_10000321C(&qword_100454040, &qword_100350430) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_1002D8570();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = sub_10000321C(&qword_100454048, &qword_100350438);
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1001FA830, 0, 0);
}

uint64_t sub_1001FA830()
{
  v1 = *(v0 + 168);
  sub_1002D85B0();
  v2 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v2;
  v3 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = sub_1001FBA0C();
  *v4 = v0;
  v4[1] = sub_1001FA914;
  v6 = *(v0 + 256);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 40, sub_1002D701C, 0, &type metadata for AXSwitchControlCursorColorEntity, v5);
}

uint64_t sub_1001FA914()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_1001FAA10, 0, 0);
}

uint64_t sub_1001FAA10()
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
  if (qword_10043B100 != -1)
  {
    swift_once();
  }

  v5 = qword_10051EFB0;
  v0[36] = qword_10051EFB0;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  v0[37] = v7;
  v8 = sub_10002B6E4(&qword_100454020, &qword_100454028, &qword_100350410);
  *v7 = v0;
  v7[1] = sub_1001FAB6C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 39, v5, &type metadata for AXAssistiveTouchCursorColorAppEnum, v8);
}

uint64_t sub_1001FAB6C()
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
    v6 = sub_1001FACDC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001FACDC()
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
  sub_1001FA0CC();
  sub_1001FBC20();
  sub_1002D8540();
  (*(v3 + 16))(v1, v12, v2);
  sub_1002D8560();
  sub_1002D8580();
  (*(v17 + 8))(v13, v18);

  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001FAF54()
{
  v0 = sub_10000321C(&qword_100454050, &qword_100350440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_10043B100 != -1)
  {
    swift_once();
  }

  sub_1002D8680();

  sub_1001FBC20();
  sub_10002B6E4(&qword_100454058, &qword_100454050, &qword_100350440);
  sub_1002D8670();
  return (*(v1 + 8))(v4, v0);
}

void (*sub_1001FB0C8(uint64_t *a1))(void *)
{
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

void (*sub_1001FB13C(uint64_t *a1))(void *)
{
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

unint64_t sub_1001FB1D8()
{
  result = qword_10044E018;
  if (!qword_10044E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E018);
  }

  return result;
}

unint64_t sub_1001FB230()
{
  result = qword_10044E020;
  if (!qword_10044E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E020);
  }

  return result;
}

uint64_t sub_1001FB32C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B72C;

  return sub_1001FA650(a1, v5, v4);
}

uint64_t sub_1001FB3D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C0264();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1001FB420()
{
  result = qword_10044E028;
  if (!qword_10044E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10044E028);
  }

  return result;
}

uint64_t sub_1001FB498()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 assistiveTouchCursorColor];

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