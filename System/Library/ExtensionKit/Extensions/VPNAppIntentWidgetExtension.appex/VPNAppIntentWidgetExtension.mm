uint64_t sub_100001430@<X0>(uint64_t a1@<X8>)
{
  sub_100009FEC();
  result = sub_10000A00C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10000149C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  sub_10000180C();

  result = sub_10000A01C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100001508(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_10000180C();

  sub_10000A01C();
  return sub_10000A05C();
}

uint64_t sub_1000015A0()
{
  v0 = *(*(sub_10000A03C() - 8) + 64);
  __chkstk_darwin();
  swift_getKeyPath();
  sub_10000A02C();
  sub_100001710();
  sub_100001764();
  sub_1000017B8();
  return sub_10000A04C();
}

unint64_t sub_100001710()
{
  result = qword_100014128;
  if (!qword_100014128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014128);
  }

  return result;
}

unint64_t sub_100001764()
{
  result = qword_100014130;
  if (!qword_100014130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014130);
  }

  return result;
}

unint64_t sub_1000017B8()
{
  result = qword_100014138;
  if (!qword_100014138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014138);
  }

  return result;
}

unint64_t sub_10000180C()
{
  result = qword_100014140;
  if (!qword_100014140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014140);
  }

  return result;
}

unint64_t sub_100001864()
{
  result = qword_100014148;
  if (!qword_100014148)
  {
    sub_1000018C8(&qword_100014150, &unk_10000A460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014148);
  }

  return result;
}

uint64_t sub_1000018C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001914()
{
  result = qword_100014168;
  if (!qword_100014168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014168);
  }

  return result;
}

uint64_t sub_1000019BC()
{
  v0 = sub_1000095B4(&qword_100014330, &qword_10000B148);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_1000095B4(&qword_100014308, &qword_10000B138);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_100009FCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);

  sub_100009FBC();
  sub_100009FBC();
  v12 = *(v9 + 56);
  v9 += 56;
  v12(v7, 0, 1, v8);
  sub_100009E6C();
  v13 = sub_100009E7C();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  sub_1000095B4(&qword_100014338, &qword_10000B150);
  v14 = *(v9 + 16);
  v15 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_10000A470;
  sub_100009FBC();
  sub_100009FBC();
  return sub_100009E8C();
}

uint64_t sub_100001C94()
{
  v0 = sub_1000095B4(&qword_100014308, &qword_10000B138);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100009FCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100009F5C();
  sub_100009730(v7, qword_100015B00);
  sub_1000096F8(v7, qword_100015B00);
  sub_100009FBC();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100009F4C();
}

uint64_t sub_100001E04()
{
  v0 = sub_100009FCC();
  sub_100009730(v0, qword_100015B18);
  sub_1000096F8(v0, qword_100015B18);
  return sub_100009FBC();
}

uint64_t sub_100001E68()
{
  v0 = sub_1000095B4(&qword_100014390, &qword_10000B1F0);
  sub_100009730(v0, qword_100015B30);
  v1 = sub_1000096F8(v0, qword_100015B30);
  sub_100009E4C();
  v2 = sub_100009E5C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100001F28()
{
  result = swift_getKeyPath();
  qword_100015B48 = result;
  return result;
}

uint64_t sub_100001F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_100001F7C, 0, 0);
}

uint64_t sub_100001F7C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  sub_100009E0C();
  v3 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  v4 = *(v0 + 32);
  *(v0 + 136) = v3;
  *(v0 + 144) = v4;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  sub_100009E0C();
  *(v0 + 225) = *(v0 + 224);
  if (qword_1000140F0 != -1)
  {
    swift_once();
  }

  v5 = qword_100015B48;
  *(v0 + 152) = qword_100015B48;
  v6 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  v8 = sub_100009938(&qword_100014370, &qword_100014378, &qword_10000B1A8);
  *(v0 + 168) = v8;
  *v7 = v0;
  v7[1] = sub_1000020E8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 225, v5, &type metadata for Bool, v8);
}

uint64_t sub_1000020E8()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v6 = sub_100002534;
  }

  else
  {
    v6 = sub_100002258;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100002258()
{
  v1 = v0[15];
  sub_100009E0C();
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[10];
  v0[23] = v3;
  v0[24] = v4;
  v0[11] = v2;
  v0[12] = v3;
  v0[13] = v4;
  v5 = qword_100015B48;
  v0[25] = qword_100015B48;
  v6 = async function pointer to AppEntity._value<A, B>(for:)[1];

  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_10000233C;
  v8 = v0[21];

  return AppEntity._value<A, B>(for:)(v0 + 226, v5, v8);
}

uint64_t sub_10000233C()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v6 = sub_10000254C;
  }

  else
  {
    v6 = sub_1000024AC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000024AC()
{
  v1 = *(v0 + 112);
  *(v0 + 227) = *(v0 + 226);
  sub_100009A58();
  sub_100009DEC();
  v2 = *(v0 + 8);

  return v2();
}

__n128 sub_100002564@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_100009E0C();
  result = v6;
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1000025A8(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];

  sub_100009E1C();
}

uint64_t (*sub_100002610(uint64_t *a1))()
{
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
  *(v3 + 32) = sub_100009DFC();
  return sub_100009AEC;
}

uint64_t sub_100002684@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_100009E0C();
  *a1 = v5;
  return result;
}

uint64_t sub_1000026C0(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_100009E1C();
}

uint64_t (*sub_1000026F8(uint64_t *a1))()
{
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
  *(v3 + 32) = sub_100009DFC();
  return sub_100009AEC;
}

unint64_t sub_100002794()
{
  result = qword_100014180;
  if (!qword_100014180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014180);
  }

  return result;
}

unint64_t sub_1000027EC()
{
  result = qword_100014188;
  if (!qword_100014188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014188);
  }

  return result;
}

uint64_t sub_1000028E8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009AD8;

  return sub_100001F58(a1, v5, v4);
}

uint64_t sub_100002994@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007468();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000029D8()
{
  result = qword_100014190;
  if (!qword_100014190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014190);
  }

  return result;
}

uint64_t sub_100002A2C(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v4 = *a2;
  v3 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_100002AE0;

  return (sub_1000078D0)(v4, v3);
}

uint64_t sub_100002AE0(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_100002C14, 0, 0);
  }
}

uint64_t sub_100002C14()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = [*(v0 + 32) isOnDemandEnabled];
  }

  else
  {
    v2 = 0;
  }

  **(v0 + 16) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100002CA0(uint64_t *a1, _BYTE *a2)
{
  v4 = *a1;
  v3 = a1[1];
  *(v2 + 168) = *a2;
  v5 = swift_task_alloc();
  *(v2 + 144) = v5;
  *v5 = v2;
  v5[1] = sub_100002D58;

  return (sub_1000078D0)(v4, v3);
}

uint64_t sub_100002D58(uint64_t a1)
{
  v3 = *(*v2 + 144);
  v4 = *v2;
  *(v4 + 152) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_100002E8C, 0, 0);
  }
}

uint64_t sub_100002E8C()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    [*(v0 + 152) setOnDemandEnabled:*(v0 + 168)];
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100002FEC;
    v2 = swift_continuation_init();
    *(v0 + 136) = sub_1000095B4(&qword_100014380, &qword_10000B1B0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000031D0;
    *(v0 + 104) = &unk_100010C58;
    *(v0 + 112) = v2;
    [v1 saveToPreferencesWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100002FEC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_100003160;
  }

  else
  {
    v3 = sub_1000030FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000030FC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003160()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[20];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000031D0(uint64_t a1, void *a2)
{
  v3 = sub_1000098A8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000095B4(&qword_100014368, &qword_10000B190);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10000327C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000098A8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000095B4(&qword_100014368, &qword_10000B190);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_1000098EC();
    **(*(v4 + 64) + 40) = sub_10000A07C();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10000335C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003400;

  return sub_100008168();
}

uint64_t sub_100003400(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_100003518()
{
  result = qword_100014198;
  if (!qword_100014198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014198);
  }

  return result;
}

unint64_t sub_100003570()
{
  result = qword_1000141A0;
  if (!qword_1000141A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141A0);
  }

  return result;
}

uint64_t sub_1000035C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009B28;

  return sub_100008824(a1);
}

uint64_t sub_10000366C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EnumerableEntityQuery.suggestedEntities()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000017B8();
  *v6 = v2;
  v6[1] = sub_100009AD8;

  return EnumerableEntityQuery.suggestedEntities()(a1, a2, v7);
}

uint64_t sub_100003720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000037E0;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000037E0(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_1000038E4()
{
  result = qword_1000141A8;
  if (!qword_1000141A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141A8);
  }

  return result;
}

unint64_t sub_100003938()
{
  result = qword_1000141B0;
  if (!qword_1000141B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141B0);
  }

  return result;
}

unint64_t sub_100003990()
{
  result = qword_1000141B8;
  if (!qword_1000141B8)
  {
    sub_1000018C8(&qword_1000141C0, qword_10000A6A8);
    sub_100003938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141B8);
  }

  return result;
}

uint64_t sub_100003A14(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000029D8();
  *v6 = v2;
  v6[1] = sub_100009AD8;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100003AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100009AD8;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100003B80()
{
  result = qword_1000141C8;
  if (!qword_1000141C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141C8);
  }

  return result;
}

unint64_t sub_100003BD8()
{
  result = qword_1000141D0;
  if (!qword_1000141D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141D0);
  }

  return result;
}

unint64_t sub_100003C30()
{
  result = qword_1000141D8;
  if (!qword_1000141D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141D8);
  }

  return result;
}

unint64_t sub_100003C9C()
{
  result = qword_1000141E0;
  if (!qword_1000141E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141E0);
  }

  return result;
}

uint64_t sub_100003CF0(uint64_t a1)
{
  v2 = sub_100001710();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004DLL, 0x800000010000BF70, a1, v2);
}

unint64_t sub_100003D58()
{
  result = qword_1000141E8;
  if (!qword_1000141E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141E8);
  }

  return result;
}

unint64_t sub_100003DB0()
{
  result = qword_1000141F0;
  if (!qword_1000141F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141F0);
  }

  return result;
}

unint64_t sub_100003E0C()
{
  result = qword_1000141F8;
  if (!qword_1000141F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141F8);
  }

  return result;
}

uint64_t sub_100003E6C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_100003E78()
{
  sub_1000096A4();
  v1 = sub_100009EFC();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100003F64(uint64_t a1)
{
  v2 = sub_100001710();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003FB4()
{
  result = qword_100014210;
  if (!qword_100014210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014210);
  }

  return result;
}

uint64_t sub_100004008()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1000019BC();
}

uint64_t sub_100004010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100009AD8;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000040D4(uint64_t a1)
{
  v2 = sub_100003E0C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100004124()
{
  result = qword_100014218;
  if (!qword_100014218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014218);
  }

  return result;
}

uint64_t sub_1000041BC()
{
  v0 = sub_1000095B4(&qword_100014308, &qword_10000B138);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100009FCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100009F5C();
  sub_100009730(v7, qword_100015B50);
  sub_1000096F8(v7, qword_100015B50);
  sub_100009FBC();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100009F4C();
}

uint64_t sub_100004330()
{
  v0 = sub_1000095B4(&qword_100014330, &qword_10000B148);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_1000095B4(&qword_100014308, &qword_10000B138);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_100009FCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  sub_100009FBC();
  sub_100009FBC();
  v12 = *(v9 + 56);
  v9 += 56;
  v12(v7, 0, 1, v8);
  sub_100009E6C();
  v13 = sub_100009E7C();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  sub_1000095B4(&qword_100014338, &qword_10000B150);
  v14 = *(v9 + 16);
  v15 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_10000A470;
  sub_100009FBC();
  sub_100009FBC();
  return sub_100009E8C();
}

uint64_t sub_1000045F0()
{
  v0 = sub_100009FCC();
  sub_100009730(v0, qword_100015B68);
  sub_1000096F8(v0, qword_100015B68);
  return sub_100009FBC();
}

uint64_t sub_100004654()
{
  v0 = sub_1000095B4(&qword_100014390, &qword_10000B1F0);
  sub_100009730(v0, qword_100015B80);
  v1 = sub_1000096F8(v0, qword_100015B80);
  sub_100009E4C();
  v2 = sub_100009E5C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100004714()
{
  result = swift_getKeyPath();
  qword_100015B98 = result;
  return result;
}

uint64_t sub_10000473C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return _swift_task_switch(sub_100004760, 0, 0);
}

uint64_t sub_100004760()
{
  v1 = v0[19];
  v2 = v0[20];
  sub_100009E0C();
  v3 = v0[14];
  v0[21] = v3;
  v0[15] = v3;
  sub_100009E0C();
  v0[5] = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v0[22] = v4;
  v0[23] = v5;
  v0[6] = v4;
  v0[7] = v5;
  if (qword_100014110 != -1)
  {
    swift_once();
  }

  v6 = qword_100015B98;
  v0[24] = qword_100015B98;
  v7 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v8 = swift_task_alloc();
  v0[25] = v8;
  v9 = sub_100009938(&qword_100014348, &qword_100014350, &qword_10000B170);
  v0[26] = v9;
  *v8 = v0;
  v8[1] = sub_1000048D0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 5, v6, &type metadata for VPNConfigurationEntity, v9);
}

uint64_t sub_1000048D0()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v6 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v7 = sub_10000254C;
  }

  else
  {
    v7 = sub_100004A64;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100004A64()
{
  v1 = v0[19];
  sub_100009E0C();
  v2 = v0[16];
  v0[17] = v2;
  v3 = qword_100015B98;
  v0[28] = v2;
  v0[29] = v3;
  v4 = async function pointer to AppEntity._value<A, B>(for:)[1];

  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_100004B3C;
  v6 = v0[26];

  return AppEntity._value<A, B>(for:)(v0 + 8, v3, v6);
}

uint64_t sub_100004B3C()
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v5 = sub_100004D38;
  }

  else
  {
    v5 = sub_100004C90;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100004C90()
{
  v1 = v0[18];
  v2 = v0[9];
  v3 = v0[10];
  v0[11] = v0[8];
  v0[12] = v2;
  v0[13] = v3;
  sub_100003938();
  sub_100009DEC();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100004D50@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_100009E0C();
  *a1 = v5;
  return result;
}

uint64_t sub_100004D8C(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;

  sub_100009E1C();
}

uint64_t (*sub_100004DD4(uint64_t *a1))()
{
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
  *(v3 + 32) = sub_100009DFC();
  return sub_100009AEC;
}

__n128 sub_100004E48@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  sub_100009E0C();
  result = v6;
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_100004E8C(uint64_t *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];

  sub_100009E1C();
}

uint64_t (*sub_100004EF4(uint64_t *a1))()
{
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
  *(v3 + 32) = sub_100009DFC();
  return sub_100009AEC;
}

uint64_t sub_100004F8C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

unint64_t sub_100004FF4()
{
  result = qword_100014230;
  if (!qword_100014230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014230);
  }

  return result;
}

unint64_t sub_10000504C()
{
  result = qword_100014238;
  if (!qword_100014238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014238);
  }

  return result;
}

uint64_t sub_10000515C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1000095B4(&qword_100014390, &qword_10000B1F0);
  v6 = sub_1000096F8(v5, a2);

  return sub_10000998C(v6, a3);
}

uint64_t sub_1000051CC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005278;

  return sub_10000473C(a1, v5, v4);
}

uint64_t sub_100005278()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000536C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008EB8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000053B4()
{
  result = qword_100014240;
  if (!qword_100014240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014240);
  }

  return result;
}

unint64_t sub_100005450()
{
  result = qword_100014258;
  if (!qword_100014258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014258);
  }

  return result;
}

uint64_t sub_1000054A4(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_100009FCC() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_100005574;

  return sub_100007D40();
}

uint64_t sub_100005574(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {
    v6 = *(v3 + 24);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_1000056C4, 0, 0);
  }
}

uint64_t sub_1000056C4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = [*(v0 + 40) localizedDescription];
    if (v2)
    {
      v3 = *(v0 + 24);
      v4 = v2;
      v5 = sub_10000A06C();
      v7 = v6;

      sub_1000095B4(&qword_100014178, qword_10000A490);
      sub_100009FBC();
      sub_100009938(&qword_100014370, &qword_100014378, &qword_10000B1A8);
      v8 = sub_100009F9C();

      goto LABEL_6;
    }
  }

  v9 = *(v0 + 24);
  sub_1000095B4(&qword_100014178, qword_10000A490);
  sub_100009FBC();
  sub_100009938(&qword_100014370, &qword_100014378, &qword_10000B1A8);
  v8 = sub_100009F9C();
  v7 = 0xEC00000064657463;
  v5 = 0x656E6E6F63736944;
LABEL_6:
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  *v11 = v5;
  v11[1] = v7;
  v11[2] = v8;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100005910(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v2[3] = *a2;
  v2[4] = v3;
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_1000059E4;

  return sub_100007D40();
}

uint64_t sub_1000059E4(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_100005B5C, 0, 0);
  }
}

uint64_t sub_100005B5C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = [*(v0 + 48) connection];
    [v2 stopVPNTunnel];
  }

  v3 = *(v0 + 24) == 0x656E6E6F63736944 && *(v0 + 32) == 0xEC00000064657463;
  if (v3 || (sub_10000A0BC() & 1) != 0)
  {
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_100005CF0;
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);

    return sub_1000078D0(v8, v7);
  }
}

uint64_t sub_100005CF0(uint64_t a1)
{
  v3 = *(*v2 + 56);
  v4 = *v2;
  *(v4 + 64) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_100005E68, 0, 0);
  }
}

uint64_t sub_100005E68()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = [*(v0 + 64) connection];
  *(v0 + 16) = 0;
  v3 = [v2 startVPNTunnelAndReturnError:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = v4;

LABEL_4:
    v6 = *(v0 + 8);
    goto LABEL_6;
  }

  v7 = v4;
  sub_100009FAC();

  swift_willThrow();
  v6 = *(v0 + 8);
LABEL_6:

  return v6();
}

uint64_t sub_100005FA0()
{
  v0 = sub_1000095B4(&qword_100014250, &qword_10000AB40);
  sub_100009730(v0, qword_100015BA0);
  sub_1000096F8(v0, qword_100015BA0);
  sub_100001764();
  return sub_100009EBC();
}

uint64_t sub_100006024(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_100009FCC() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000060B4, 0, 0);
}

uint64_t sub_1000060B4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1000095B4(&qword_100014228, qword_10000A9E0);
  sub_100009FBC();
  sub_100009938(&qword_100014348, &qword_100014350, &qword_10000B170);
  sub_100001710();
  *v2 = sub_100009F8C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000061E8(uint64_t a1)
{
  v2 = sub_1000053B4();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004DLL, 0x800000010000BF70, a1, v2);
}

unint64_t sub_100006250()
{
  result = qword_100014260;
  if (!qword_100014260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014260);
  }

  return result;
}

unint64_t sub_1000062A8()
{
  result = qword_100014268;
  if (!qword_100014268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014268);
  }

  return result;
}

unint64_t sub_100006300()
{
  result = qword_100014270;
  if (!qword_100014270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014270);
  }

  return result;
}

uint64_t sub_100006398@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014118 != -1)
  {
    swift_once();
  }

  v2 = sub_1000095B4(&qword_100014250, &qword_10000AB40);
  v3 = sub_1000096F8(v2, qword_100015BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000644C()
{
  sub_100009794();
  v1 = sub_100009EFC();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000064BC()
{
  result = qword_100014280;
  if (!qword_100014280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014280);
  }

  return result;
}

unint64_t sub_100006514()
{
  result = qword_100014288;
  if (!qword_100014288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014288);
  }

  return result;
}

unint64_t sub_100006568()
{
  result = qword_100014290;
  if (!qword_100014290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014290);
  }

  return result;
}

unint64_t sub_1000065C0()
{
  result = qword_100014298;
  if (!qword_100014298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014298);
  }

  return result;
}

uint64_t sub_1000066A4(uint64_t a1)
{
  v2 = sub_1000053B4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000066F4()
{
  result = qword_1000142B0;
  if (!qword_1000142B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142B0);
  }

  return result;
}

uint64_t sub_10000674C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005278;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100006810(uint64_t a1)
{
  v2 = sub_1000065C0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100006860()
{
  result = qword_1000142B8;
  if (!qword_1000142B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142B8);
  }

  return result;
}

uint64_t sub_1000068B8()
{
  v0 = sub_100009FCC();
  sub_100009730(v0, qword_100015BB8);
  sub_1000096F8(v0, qword_100015BB8);
  return sub_100009FBC();
}

uint64_t (*sub_10000691C(uint64_t *a1))()
{
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
  *(v3 + 32) = sub_100009DFC();
  return sub_100006990;
}

void sub_100006994(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000069E4()
{
  result = qword_1000142C0;
  if (!qword_1000142C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142C0);
  }

  return result;
}

unint64_t sub_100006A3C()
{
  result = qword_1000142C8;
  if (!qword_1000142C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142C8);
  }

  return result;
}

uint64_t sub_100006A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000095FC();
  v5 = sub_1000096A4();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100006AFC()
{
  v0 = qword_100014158;

  return v0;
}

unint64_t sub_100006B3C()
{
  result = qword_1000142D0;
  if (!qword_1000142D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142D0);
  }

  return result;
}

unint64_t sub_100006B94()
{
  result = qword_1000142D8;
  if (!qword_1000142D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142D8);
  }

  return result;
}

uint64_t sub_100006C8C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_1000096F8(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100006D48(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000095FC();
  v8 = sub_100009650();
  v9 = sub_1000096A4();
  *v6 = v2;
  v6[1] = sub_100006E1C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100006E1C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_100006F24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000092B0();
  *a1 = result;
  return result;
}

uint64_t sub_100006F4C(uint64_t a1)
{
  v2 = sub_1000069E4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100006FA8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_100006FDC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100006FF0(uint64_t a1, int a2)
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

uint64_t sub_100007038(uint64_t result, int a2, int a3)
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

uint64_t sub_100007088(uint64_t *a1, int a2)
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

uint64_t sub_1000070D0(uint64_t result, int a2, int a3)
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

uint64_t sub_1000071A4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000729C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10000729C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000095B4(&qword_100014398, &qword_10000B200);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000073BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100007468()
{
  v0 = (*(*(sub_1000095B4(&qword_1000143A0, &qword_10000B210) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v31 = v25 - v1;
  v32 = sub_100009EEC();
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  (__chkstk_darwin)();
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_1000095B4(&qword_100014300, &qword_10000B130) - 8) + 64);
  v7 = (__chkstk_darwin)();
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v25 - v10;
  v12 = sub_1000095B4(&qword_100014308, &qword_10000B138);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - 8);
  v15 = v25 - v14;
  v16 = sub_100009FCC();
  v30 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v25[0] = sub_1000095B4(&qword_100014310, &qword_10000B140);
  sub_100009FBC();
  v19 = *(v17 + 56);
  v28 = v17 + 56;
  v29 = v19;
  v19(v15, 1, 1, v16);
  v20 = sub_100009DDC();
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v21 = *(*(v20 - 8) + 56);
  v21(v11, 1, 1, v20);
  v21(v9, 1, 1, v20);
  v27 = enum case for InputConnectionBehavior.default(_:);
  v22 = *(v2 + 104);
  v25[1] = v2 + 104;
  v26 = v22;
  v22(v5);
  sub_100001710();
  v25[0] = sub_100009E2C();
  sub_1000095B4(&qword_1000143A8, &qword_10000B218);
  sub_100009FBC();
  v29(v15, 1, 1, v30);
  LOBYTE(v33) = 2;
  v23 = sub_10000A08C();
  (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
  v21(v11, 1, 1, v20);
  v26(v5, v27, v32);
  sub_100009E3C();
  return v25[0];
}

uint64_t sub_1000078D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_1000078F0, 0, 0);
}

uint64_t sub_1000078F0()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100007A18;
  v2 = swift_continuation_init();
  v0[17] = sub_1000095B4(&qword_100014358, &qword_10000B188);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000327C;
  v0[13] = &unk_100010C08;
  v0[14] = v2;
  [v1 loadAllFromPreferencesWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100007A18()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_100007CD4;
  }

  else
  {
    v3 = sub_100007B28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100007B28()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10000A0AC())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_10000A09C();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 localizedDescription];
      if (v7)
      {
        v8 = v0[19];
        v19 = v0[20];
        v9 = v7;
        v10 = sub_10000A06C();
        v12 = v11;

        if (v10 == v8 && v12 == v19)
        {

LABEL_18:

          goto LABEL_23;
        }

        v14 = v0[19];
        v15 = v0[20];
        v16 = sub_10000A0BC();

        if (v16)
        {
          goto LABEL_18;
        }
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v5 = 0;
LABEL_23:
  v17 = v0[1];

  return v17(v5);
}

uint64_t sub_100007CD4()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t sub_100007D5C()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100007E84;
  v2 = swift_continuation_init();
  v0[17] = sub_1000095B4(&qword_100014358, &qword_10000B188);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000327C;
  v0[13] = &unk_100010C30;
  v0[14] = v2;
  [v1 loadAllFromPreferencesWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100007E84()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_1000080FC;
  }

  else
  {
    v3 = sub_100007F94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100007F94()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10000A0AC())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_10000A09C();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 connection];
      v8 = [v7 status];

      if (v8 == 3)
      {

        goto LABEL_17;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v5 = 0;
LABEL_17:
  v9 = *(v11 + 8);

  return v9(v5);
}

uint64_t sub_1000080FC()
{
  v1 = *(v0 + 152);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 152);

  return v2();
}

uint64_t sub_100008168()
{
  v1 = *(*(sub_100009FCC() - 8) + 64) + 15;
  *(v0 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_1000081F4, 0, 0);
}

uint64_t sub_1000081F4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000831C;
  v2 = swift_continuation_init();
  v0[17] = sub_1000095B4(&qword_100014358, &qword_10000B188);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000327C;
  v0[13] = &unk_100010CA8;
  v0[14] = v2;
  [v1 loadAllFromPreferencesWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000831C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1000087B0;
  }

  else
  {
    v3 = sub_10000842C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000842C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_1000095B4(&qword_100014398, &qword_10000B200);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10000A470;
  sub_1000095B4(&qword_100014178, qword_10000A490);
  sub_100009FBC();
  sub_100009938(&qword_100014370, &qword_100014378, &qword_10000B1A8);
  v4 = sub_100009F9C();
  strcpy((v3 + 32), "Disconnected");
  *(v3 + 45) = 0;
  *(v3 + 46) = -5120;
  *(v3 + 48) = v4;
  if (!(v1 >> 62))
  {
    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_22:
    v25 = &_swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  v5 = sub_10000A0AC();
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_3:
  v6 = 0;
  v25 = &_swiftEmptyArrayStorage;
  do
  {
    v7 = v6;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = sub_10000A09C();
      }

      else
      {
        if (v7 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v1 + 8 * v7 + 32);
      }

      v9 = v8;
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 localizedDescription];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v6 == v5)
      {
        goto LABEL_23;
      }
    }

    v11 = v10;
    v12 = *(v24 + 152);
    v13 = sub_10000A06C();
    v22 = v14;
    v23 = v13;

    sub_100009FBC();
    v15 = sub_100009F9C();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_10000729C(0, *(v25 + 2) + 1, 1, v25);
    }

    v17 = *(v25 + 2);
    v16 = *(v25 + 3);
    if (v17 >= v16 >> 1)
    {
      v25 = sub_10000729C((v16 > 1), v17 + 1, 1, v25);
    }

    *(v25 + 2) = v17 + 1;
    v18 = &v25[24 * v17];
    *(v18 + 4) = v23;
    *(v18 + 5) = v22;
    *(v18 + 6) = v15;
  }

  while (v6 != v5);
LABEL_23:
  v19 = *(v24 + 152);

  sub_1000071A4(v25);

  v20 = *(v24 + 8);

  return v20(v3);
}

uint64_t sub_1000087B0()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_100008824(uint64_t a1)
{
  *(v1 + 168) = a1;
  v2 = *(*(sub_100009FCC() - 8) + 64) + 15;
  *(v1 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1000088B4, 0, 0);
}

uint64_t sub_1000088B4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1000089DC;
  v2 = swift_continuation_init();
  v0[17] = sub_1000095B4(&qword_100014358, &qword_10000B188);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000327C;
  v0[13] = &unk_100010C80;
  v0[14] = v2;
  [v1 loadAllFromPreferencesWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000089DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_100008E44;
  }

  else
  {
    v3 = sub_100008AEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100008AEC()
{
  v1 = *(v0 + 160);
  if (v1 >> 62)
  {
LABEL_24:
    v29 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_10000A0AC();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v28 = v1 & 0xC000000000000001;
      v25 = &_swiftEmptyArrayStorage;
      v26 = v1;
      while (1)
      {
        v4 = v3;
        while (1)
        {
          if (v28)
          {
            v5 = sub_10000A09C();
          }

          else
          {
            if (v4 >= *(v29 + 16))
            {
              goto LABEL_23;
            }

            v5 = *(v1 + 8 * v4 + 32);
          }

          v6 = v5;
          v3 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          v7 = [v5 localizedDescription];
          if (v7)
          {
            break;
          }

LABEL_6:

          ++v4;
          if (v3 == v2)
          {
            goto LABEL_26;
          }
        }

        v8 = v7;
        v9 = v2;
        v10 = v27[21];
        v11 = sub_10000A06C();
        v13 = v12;

        v27[18] = v11;
        v27[19] = v13;
        v14 = swift_task_alloc();
        *(v14 + 16) = v27 + 18;
        LOBYTE(v10) = sub_1000073BC(sub_1000099FC, v14, v10);

        if ((v10 & 1) == 0)
        {
          break;
        }

        v15 = v27[22];
        sub_1000095B4(&qword_100014178, qword_10000A490);
        sub_100009FBC();
        sub_100009938(&qword_100014370, &qword_100014378, &qword_10000B1A8);
        v16 = sub_100009F9C();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = sub_10000729C(0, *(v25 + 2) + 1, 1, v25);
        }

        v19 = *(v25 + 2);
        v18 = *(v25 + 3);
        if (v19 >= v18 >> 1)
        {
          v25 = sub_10000729C((v18 > 1), v19 + 1, 1, v25);
        }

        *(v25 + 2) = v19 + 1;
        v20 = &v25[24 * v19];
        *(v20 + 4) = v11;
        *(v20 + 5) = v13;
        *(v20 + 6) = v16;
        v2 = v9;
        v21 = v3 == v9;
        v1 = v26;
        if (v21)
        {
          goto LABEL_26;
        }
      }

      v2 = v9;
      v1 = v26;
      goto LABEL_6;
    }
  }

  v25 = &_swiftEmptyArrayStorage;
LABEL_26:
  v22 = v27[22];

  v23 = v27[1];

  return v23(v25);
}

uint64_t sub_100008E44()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_100008EB8()
{
  v30 = sub_100009EEC();
  v0 = *(v30 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v30);
  v29 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000095B4(&qword_100014300, &qword_10000B130);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v23 - v8;
  v10 = sub_1000095B4(&qword_100014308, &qword_10000B138);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v23 - v12;
  v14 = sub_100009FCC();
  v28 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v26 = sub_1000095B4(&qword_100014388, &qword_10000B1B8);
  sub_100009FBC();
  v27 = *(v15 + 56);
  v27(v13, 1, 1, v14);
  v31 = 0;
  v17 = sub_100009DDC();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v19 = v7;
  v18(v7, 1, 1, v17);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v20 = *(v0 + 104);
  v23[1] = v0 + 104;
  v24 = v20;
  v21 = v29;
  v20(v29);
  sub_1000053B4();
  v26 = sub_100009E2C();
  sub_1000095B4(&qword_100014310, &qword_10000B140);
  sub_100009FBC();
  v27(v13, 1, 1, v28);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v18(v9, 1, 1, v17);
  v18(v19, 1, 1, v17);
  v24(v21, v25, v30);
  sub_100001710();
  sub_100009E2C();
  return v26;
}

uint64_t sub_1000092B0()
{
  v21[0] = sub_100009EEC();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000095B4(&qword_100014300, &qword_10000B130);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_1000095B4(&qword_100014308, &qword_10000B138);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_100009FCC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000095B4(&qword_100014310, &qword_10000B140);
  sub_100009FBC();
  (*(v16 + 56))(v14, 1, 1, v15);
  v18 = sub_100009DDC();
  memset(&v21[1], 0, 24);
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_100001710();
  return sub_100009E2C();
}

uint64_t sub_1000095B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000095FC()
{
  result = qword_100014318;
  if (!qword_100014318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014318);
  }

  return result;
}

unint64_t sub_100009650()
{
  result = qword_100014320;
  if (!qword_100014320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014320);
  }

  return result;
}

unint64_t sub_1000096A4()
{
  result = qword_100014328;
  if (!qword_100014328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014328);
  }

  return result;
}

uint64_t sub_1000096F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100009730(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_100009794()
{
  result = qword_100014340;
  if (!qword_100014340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014340);
  }

  return result;
}

uint64_t sub_1000097F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000985C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_1000098A8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000098EC()
{
  result = qword_100014360;
  if (!qword_100014360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014360);
  }

  return result;
}

uint64_t sub_100009938(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000018C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000998C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000095B4(&qword_100014390, &qword_10000B1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000099FC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10000A0BC() & 1;
  }
}

unint64_t sub_100009A58()
{
  result = qword_1000143B0;
  if (!qword_1000143B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143B0);
  }

  return result;
}

uint64_t sub_100009B2C()
{
  v0 = sub_100009C28();

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v0, &type metadata for VPNAppIntentWidget, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100009BA8();
  sub_100009FDC();
  return 0;
}

unint64_t sub_100009BA8()
{
  result = qword_1000143B8;
  if (!qword_1000143B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143B8);
  }

  return result;
}

unint64_t sub_100009C28()
{
  result = qword_1000143C0;
  if (!qword_1000143C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143C0);
  }

  return result;
}