uint64_t sub_1000016A8()
{
  v0 = sub_100001D3C(&qword_100010148, &qword_100008938);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v11 - v3;
  sub_100001C94();
  sub_100008378();
  v5 = sub_100008358();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100008378();
  v7 = sub_100008358();
  v6(v4, v0);
  sub_100001D3C(&qword_100010150, &unk_100008940);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100008890;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_100008348();

  return v9;
}

uint64_t sub_10000186C()
{
  v0 = sub_100001D3C(&qword_100010138, &qword_100008928);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v11 - v3;
  sub_100001CE8();
  sub_100008378();
  v5 = sub_100008358();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100008378();
  v7 = sub_100008358();
  v6(v4, v0);
  sub_100001D3C(&qword_100010140, &qword_100008930);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100008890;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_100008348();

  return v9;
}

uint64_t sub_100001A48()
{
  if (qword_1000100D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100001AB4()
{
  v0 = sub_1000083A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000409C();
  sub_100001C94();
  sub_1000083B8();
  v5 = sub_100008398();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v12 = sub_100006054();
  sub_100001CE8();
  sub_1000083B8();
  v7 = sub_100008398();
  v6(v4, v0);
  sub_100001D3C(&qword_100010130, &qword_100008920);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100008890;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_100008388();

  return v9;
}

unint64_t sub_100001C94()
{
  result = qword_100010120;
  if (!qword_100010120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010120);
  }

  return result;
}

unint64_t sub_100001CE8()
{
  result = qword_100010128;
  if (!qword_100010128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010128);
  }

  return result;
}

uint64_t sub_100001D3C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001D8C()
{
  result = qword_100010190;
  if (!qword_100010190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010190);
  }

  return result;
}

unint64_t sub_100001DE4()
{
  result = qword_100010198;
  if (!qword_100010198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010198);
  }

  return result;
}

uint64_t sub_100001E38()
{
  v0 = sub_100008548();
  sub_1000044C8(v0, qword_100010158);
  sub_100004490(v0, qword_100010158);
  return sub_100008538();
}

uint64_t sub_100001EB8()
{
  v0 = sub_100001D3C(&qword_100010288, &qword_1000090C8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_100001D3C(&qword_100010260, &qword_1000090B8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_100008508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  sub_1000084F8();
  sub_1000084F8();
  v12 = *(v9 + 56);
  v9 += 56;
  v12(v7, 0, 1, v8);
  sub_1000083F8();
  v13 = sub_100008408();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  sub_100001D3C(&qword_100010290, &qword_1000090D0);
  v14 = *(v9 + 16);
  v15 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_100008950;
  sub_1000084F8();
  sub_1000084F8();
  return sub_100008418();
}

uint64_t sub_10000217C()
{
  v0 = sub_100001D3C(&qword_100010260, &qword_1000090B8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100008508();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000084C8();
  sub_1000044C8(v7, qword_100010500);
  sub_100004490(v7, qword_100010500);
  sub_1000084F8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000084B8();
}

uint64_t sub_1000022EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_100008508() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000237C, 0, 0);
}

uint64_t sub_10000237C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100001D3C(&qword_100010298, &qword_1000090D8);
  sub_1000084F8();
  sub_10000452C(&qword_1000102A0, &qword_1000102A8, qword_1000090E8);
  *v2 = sub_1000082F8();

  v3 = v0[1];

  return v3();
}

unint64_t sub_10000247C()
{
  result = qword_1000101A0;
  if (!qword_1000101A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101A0);
  }

  return result;
}

uint64_t sub_1000024D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100002EA4();
  *v5 = v2;
  v5[1] = sub_100002580;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_100002580(uint64_t a1)
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

unint64_t sub_100002698()
{
  result = qword_1000101A8;
  if (!qword_1000101A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101A8);
  }

  return result;
}

unint64_t sub_1000026F0()
{
  result = qword_1000101B0;
  if (!qword_1000101B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101B0);
  }

  return result;
}

unint64_t sub_100002744()
{
  result = qword_1000101B8;
  if (!qword_1000101B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101B8);
  }

  return result;
}

uint64_t sub_10000279C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100002EA4();
  *v6 = v2;
  v6[1] = sub_1000045E8;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100002850(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100002EA4();
  *v5 = v2;
  v5[1] = sub_1000045C4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_100002900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000029C0;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000029C0(uint64_t a1)
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

unint64_t sub_100002AC4()
{
  result = qword_1000101C0;
  if (!qword_1000101C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101C0);
  }

  return result;
}

unint64_t sub_100002B18()
{
  result = qword_1000101C8;
  if (!qword_1000101C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101C8);
  }

  return result;
}

unint64_t sub_100002B70()
{
  result = qword_1000101D0;
  if (!qword_1000101D0)
  {
    sub_100002BF4(&qword_1000101D8, qword_100008A70);
    sub_100002B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101D0);
  }

  return result;
}

uint64_t sub_100002BF4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002C3C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000247C();
  *v6 = v2;
  v6[1] = sub_100002CF0;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100002CF0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000045C0;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100002EA4()
{
  result = qword_1000101E0;
  if (!qword_1000101E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101E0);
  }

  return result;
}

uint64_t sub_100002EF8()
{
  v0 = qword_100010170;

  return v0;
}

unint64_t sub_100002F34()
{
  result = qword_1000101E8;
  if (!qword_1000101E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101E8);
  }

  return result;
}

uint64_t sub_100002F88(uint64_t a1)
{
  v2 = sub_100002744();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD000000000000042, 0x800000010000A610, a1, v2);
}

unint64_t sub_100002FEC()
{
  result = qword_1000101F0;
  if (!qword_1000101F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101F0);
  }

  return result;
}

unint64_t sub_100003044()
{
  result = qword_1000101F8;
  if (!qword_1000101F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000101F8);
  }

  return result;
}

unint64_t sub_10000309C()
{
  result = qword_100010200;
  if (!qword_100010200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010200);
  }

  return result;
}

uint64_t sub_100003100()
{
  sub_10000443C();
  v1 = sub_100008468();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100003170()
{
  result = qword_100010208;
  if (!qword_100010208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010208);
  }

  return result;
}

unint64_t sub_1000031C8()
{
  result = qword_100010210;
  if (!qword_100010210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010210);
  }

  return result;
}

unint64_t sub_100003224()
{
  result = qword_100010218;
  if (!qword_100010218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010218);
  }

  return result;
}

uint64_t sub_100003284@<X0>(uint64_t *a1@<X8>)
{
  sub_100001DE4();
  result = sub_1000082E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003344(uint64_t a1)
{
  v2 = sub_100002744();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003394()
{
  result = qword_100010230;
  if (!qword_100010230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010230);
  }

  return result;
}

uint64_t sub_1000033EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002CF0;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000034B0(uint64_t a1)
{
  v2 = sub_100003224();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100003500()
{
  result = qword_100010238;
  if (!qword_100010238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010238);
  }

  return result;
}

uint64_t sub_100003558()
{
  v0 = sub_100008508();
  sub_1000044C8(v0, qword_100010518);
  sub_100004490(v0, qword_100010518);
  return sub_1000084F8();
}

uint64_t sub_1000035BC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_100008318();
  *a1 = v5;
  return result;
}

uint64_t sub_1000035F8(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;

  sub_100008328();
}

void (*sub_100003640(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = sub_100008308();
  return sub_1000036B4;
}

void sub_1000036B4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100003700()
{
  result = qword_100010240;
  if (!qword_100010240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010240);
  }

  return result;
}

uint64_t sub_100003754(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004394();
  v5 = sub_10000443C();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000037C4()
{
  v0 = qword_100010180;

  return v0;
}

unint64_t sub_100003804()
{
  result = qword_100010248;
  if (!qword_100010248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010248);
  }

  return result;
}

unint64_t sub_10000385C()
{
  result = qword_100010250;
  if (!qword_100010250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010250);
  }

  return result;
}

uint64_t sub_10000393C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100004490(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100003A04(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100004394();
  v8 = sub_1000043E8();
  v9 = sub_10000443C();
  *v6 = v2;
  v6[1] = sub_100003AD8;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100003AD8()
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

uint64_t sub_100003BE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000409C();
  *a1 = result;
  return result;
}

uint64_t sub_100003C08(uint64_t a1)
{
  v2 = sub_100001C94();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100003C94()
{
  if (qword_1000100D8 != -1)
  {
    swift_once();
  }

  v1 = sub_100008548();
  *(v0 + 24) = sub_100004490(v1, qword_100010158);
  v2 = sub_100008528();
  v3 = sub_100008588();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getting Contact Key Verification Status...", v4, 2u);
  }

  if (qword_100010110 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_100003E18;

  return sub_100006618();
}

uint64_t sub_100003E18(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 32);
  v5 = *v3;
  v5[5] = a1;
  v5[6] = a2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100003F4C, 0, 0);
  }
}

uint64_t sub_100003F4C()
{
  v14 = v0;
  v1 = v0[6];
  v2 = v0[3];

  v3 = sub_100008528();
  v4 = sub_100008588();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000074A4(v6, v5, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "returning Contact Key Verification Status: %s", v7, 0xCu);
    sub_100004574(v8);
  }

  v9 = v0[6];
  v10 = v0[2];
  *v10 = v0[5];
  v10[1] = v9;
  v11 = v0[1];

  return v11();
}

uint64_t sub_10000409C()
{
  v20[0] = sub_100008458();
  v0 = *(v20[0] - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100001D3C(&qword_100010258, &qword_1000090B0) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v20 - v8;
  v10 = sub_100001D3C(&qword_100010260, &qword_1000090B8);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = v20 - v12;
  v14 = sub_100008508();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100001D3C(&qword_100010268, &qword_1000090C0);
  sub_1000084F8();
  (*(v15 + 56))(v13, 1, 1, v14);
  v20[1] = 0;
  v17 = sub_1000082C8();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20[0]);
  sub_100002744();
  return sub_100008338();
}

unint64_t sub_100004394()
{
  result = qword_100010270;
  if (!qword_100010270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010270);
  }

  return result;
}

unint64_t sub_1000043E8()
{
  result = qword_100010278;
  if (!qword_100010278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010278);
  }

  return result;
}

unint64_t sub_10000443C()
{
  result = qword_100010280;
  if (!qword_100010280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010280);
  }

  return result;
}

uint64_t sub_100004490(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000044C8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000452C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002BF4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004574(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000045F0()
{
  result = qword_1000102E8;
  if (!qword_1000102E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102E8);
  }

  return result;
}

unint64_t sub_100004648()
{
  result = qword_1000102F0;
  if (!qword_1000102F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102F0);
  }

  return result;
}

uint64_t sub_10000469C()
{
  v0 = sub_100008548();
  sub_1000044C8(v0, qword_1000102B0);
  sub_100004490(v0, qword_1000102B0);
  return sub_100008538();
}

uint64_t sub_10000471C()
{
  v0 = sub_100001D3C(&qword_100010288, &qword_1000090C8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_100001D3C(&qword_100010260, &qword_1000090B8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_100008508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  sub_1000084F8();
  sub_1000084F8();
  v12 = *(v9 + 56);
  v9 += 56;
  v12(v7, 0, 1, v8);
  sub_1000083F8();
  v13 = sub_100008408();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  sub_100001D3C(&qword_100010290, &qword_1000090D0);
  v14 = *(v9 + 16);
  v15 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_100008950;
  sub_1000084F8();
  sub_1000084F8();
  return sub_100008418();
}

uint64_t sub_1000049E0()
{
  v0 = sub_100001D3C(&qword_100010260, &qword_1000090B8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100008508();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000084C8();
  sub_1000044C8(v7, qword_100010530);
  sub_100004490(v7, qword_100010530);
  sub_1000084F8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000084B8();
}

uint64_t sub_100004B50(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_100008508() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100004BE0, 0, 0);
}

uint64_t sub_100004BE0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100001D3C(&qword_1000103C8, &qword_100009878);
  sub_1000084F8();
  sub_10000452C(&qword_1000103D0, &qword_1000103D8, &qword_100009888);
  *v2 = sub_1000082F8();

  v3 = v0[1];

  return v3();
}

unint64_t sub_100004CE0()
{
  result = qword_1000102F8;
  if (!qword_1000102F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102F8);
  }

  return result;
}

uint64_t sub_100004D34(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000523C();
  *v5 = v2;
  v5[1] = sub_100002580;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_100004DE8()
{
  result = qword_100010300;
  if (!qword_100010300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010300);
  }

  return result;
}

unint64_t sub_100004E40()
{
  result = qword_100010308;
  if (!qword_100010308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010308);
  }

  return result;
}

unint64_t sub_100004E94()
{
  result = qword_100010310;
  if (!qword_100010310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010310);
  }

  return result;
}

uint64_t sub_100004EE8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000523C();
  *v6 = v2;
  v6[1] = sub_1000045E8;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100004F9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000523C();
  *v5 = v2;
  v5[1] = sub_1000045C4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100005050()
{
  result = qword_100010318;
  if (!qword_100010318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010318);
  }

  return result;
}

unint64_t sub_1000050A4()
{
  result = qword_100010320;
  if (!qword_100010320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010320);
  }

  return result;
}

unint64_t sub_1000050FC()
{
  result = qword_100010328;
  if (!qword_100010328)
  {
    sub_100002BF4(&qword_100010330, qword_100009200);
    sub_1000050A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010328);
  }

  return result;
}

uint64_t sub_100005180(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100004CE0();
  *v6 = v2;
  v6[1] = sub_100002CF0;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10000523C()
{
  result = qword_100010338;
  if (!qword_100010338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010338);
  }

  return result;
}

uint64_t sub_100005290()
{
  v0 = qword_1000102C8;

  return v0;
}

unint64_t sub_1000052CC()
{
  result = qword_100010340;
  if (!qword_100010340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010340);
  }

  return result;
}

uint64_t sub_100005320(uint64_t a1)
{
  v2 = sub_100004E94();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD000000000000042, 0x800000010000A610, a1, v2);
}

unint64_t sub_100005384()
{
  result = qword_100010348;
  if (!qword_100010348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010348);
  }

  return result;
}

unint64_t sub_1000053DC()
{
  result = qword_100010350;
  if (!qword_100010350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010350);
  }

  return result;
}

unint64_t sub_100005434()
{
  result = qword_100010358;
  if (!qword_100010358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010358);
  }

  return result;
}

uint64_t sub_10000548C()
{
  sub_1000063F4();
  v1 = sub_100008468();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000054FC()
{
  result = qword_100010360;
  if (!qword_100010360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010360);
  }

  return result;
}

unint64_t sub_100005554()
{
  result = qword_100010368;
  if (!qword_100010368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010368);
  }

  return result;
}

unint64_t sub_1000055B0()
{
  result = qword_100010370;
  if (!qword_100010370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010370);
  }

  return result;
}

uint64_t sub_100005604@<X0>(uint64_t *a1@<X8>)
{
  sub_100004648();
  result = sub_1000082E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000056C0(uint64_t a1)
{
  v2 = sub_100004E94();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100005710()
{
  result = qword_100010388;
  if (!qword_100010388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010388);
  }

  return result;
}

uint64_t sub_100005768(uint64_t a1)
{
  v2 = sub_1000055B0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000057B8()
{
  result = qword_100010390;
  if (!qword_100010390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010390);
  }

  return result;
}

uint64_t sub_100005810()
{
  v0 = sub_100008508();
  sub_1000044C8(v0, qword_100010548);
  sub_100004490(v0, qword_100010548);
  return sub_1000084F8();
}

void (*sub_100005874(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = sub_100008308();
  return sub_1000036B4;
}

uint64_t sub_1000058E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000634C();
  v5 = sub_1000063F4();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100005954()
{
  v0 = qword_1000102D8;

  return v0;
}

unint64_t sub_100005990()
{
  result = qword_100010398;
  if (!qword_100010398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010398);
  }

  return result;
}

unint64_t sub_1000059E8()
{
  result = qword_1000103A0;
  if (!qword_1000103A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103A0);
  }

  return result;
}

uint64_t sub_100005AC4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000634C();
  v8 = sub_1000063A0();
  v9 = sub_1000063F4();
  *v6 = v2;
  v6[1] = sub_100003AD8;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100005B98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006054();
  *a1 = result;
  return result;
}

uint64_t sub_100005BC0(uint64_t a1)
{
  v2 = sub_100001CE8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100005C4C()
{
  if (qword_1000100F0 != -1)
  {
    swift_once();
  }

  v1 = sub_100008548();
  *(v0 + 24) = sub_100004490(v1, qword_1000102B0);
  v2 = sub_100008528();
  v3 = sub_100008588();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getting Contact Key Verification public verification code...", v4, 2u);
  }

  if (qword_100010110 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_100005DD0;

  return sub_100006BE0();
}

uint64_t sub_100005DD0(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 32);
  v5 = *v3;
  v5[5] = a1;
  v5[6] = a2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100005F04, 0, 0);
  }
}

uint64_t sub_100005F04()
{
  v14 = v0;
  v1 = v0[6];
  v2 = v0[3];

  v3 = sub_100008528();
  v4 = sub_100008588();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000074A4(v6, v5, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "returning Contact Key Verification public verification code: %s", v7, 0xCu);
    sub_100004574(v8);
  }

  v9 = v0[6];
  v10 = v0[2];
  *v10 = v0[5];
  v10[1] = v9;
  v11 = v0[1];

  return v11();
}

uint64_t sub_100006054()
{
  v21[0] = sub_100008458();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001D3C(&qword_100010258, &qword_1000090B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_100001D3C(&qword_100010260, &qword_1000090B8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_100008508();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100001D3C(&qword_1000103A8, &qword_100009870);
  sub_1000084F8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_1000082C8();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_100004E94();
  return sub_100008338();
}

unint64_t sub_10000634C()
{
  result = qword_1000103B0;
  if (!qword_1000103B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103B0);
  }

  return result;
}

unint64_t sub_1000063A0()
{
  result = qword_1000103B8;
  if (!qword_1000103B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103B8);
  }

  return result;
}

unint64_t sub_1000063F4()
{
  result = qword_1000103C0;
  if (!qword_1000103C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103C0);
  }

  return result;
}

uint64_t sub_100006460()
{
  v0 = sub_100008548();
  sub_1000044C8(v0, qword_1000103E0);
  sub_100004490(v0, qword_1000103E0);
  return sub_100008538();
}

uint64_t sub_1000064E0()
{
  type metadata accessor for TransparencySettingsIntentsInterop();
  v0 = swift_allocObject();
  result = sub_10000651C();
  qword_100010560 = v0;
  return result;
}

uint64_t sub_10000651C()
{
  v1 = v0;
  if (qword_100010108 != -1)
  {
    swift_once();
  }

  v2 = sub_100008548();
  sub_100004490(v2, qword_1000103E0);
  v3 = sub_100008528();
  v4 = sub_1000085A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "init", v5, 2u);
  }

  *(v1 + 16) = [objc_allocWithZone(TUIKTAppIntentsData) init];
  return v1;
}

uint64_t sub_100006638()
{
  if (qword_100010108 != -1)
  {
    swift_once();
  }

  v1 = sub_100008548();
  sub_100004490(v1, qword_1000103E0);
  v2 = sub_100008528();
  v3 = sub_1000085A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "status", v4, 2u);
  }

  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1000067C8;
  v7 = *(v0 + 32);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x2928737574617473, 0xE800000000000000, sub_100007B24, v7, &type metadata for String);
}

uint64_t sub_1000067C8()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_100007C70;
  }

  else
  {
    v3 = sub_100007C6C;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1000068DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D3C(&qword_1000104A8, &qword_100009908);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  if (qword_100010108 != -1)
  {
    swift_once();
  }

  v9 = sub_100008548();
  sub_100004490(v9, qword_1000103E0);
  v10 = sub_100008528();
  v11 = sub_100008598();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "getting status...", v12, 2u);
  }

  v13 = *(a2 + 16);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  aBlock[4] = sub_100007BC0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006B4C;
  aBlock[3] = &unk_10000CB38;
  v16 = _Block_copy(aBlock);

  [v13 statusWithCompletion:v16];
  _Block_release(v16);
}

void sub_100006B4C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_100008558();
  v8 = v7;

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_100006C00()
{
  if (qword_100010108 != -1)
  {
    swift_once();
  }

  v1 = sub_100008548();
  sub_100004490(v1, qword_1000103E0);
  v2 = sub_100008528();
  v3 = sub_1000085A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "publicVerificationCode", v4, 2u);
  }

  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_100006D94;
  v7 = *(v0 + 32);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000018, 0x800000010000A7C0, sub_1000073A4, v7, &type metadata for String);
}

uint64_t sub_100006D94()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_100006EC4;
  }

  else
  {
    v3 = sub_100006EA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100006EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D3C(&qword_1000104A8, &qword_100009908);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  if (qword_100010108 != -1)
  {
    swift_once();
  }

  v9 = sub_100008548();
  sub_100004490(v9, qword_1000103E0);
  v10 = sub_100008528();
  v11 = sub_100008598();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "getting public verification code...", v12, 2u);
  }

  v13 = *(a2 + 16);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  aBlock[4] = sub_1000073FC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006B4C;
  aBlock[3] = &unk_10000CAE8;
  v16 = _Block_copy(aBlock);

  [v13 publicVerificationCodeWithCompletion:v16];
  _Block_release(v16);
}

uint64_t sub_10000714C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (qword_100010108 != -1)
  {
    swift_once();
  }

  v9 = sub_100008548();
  sub_100004490(v9, qword_1000103E0);

  swift_errorRetain();
  v10 = sub_100008528();
  v11 = sub_100008588();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_1000074A4(a1, a2, v18);
    *(v12 + 12) = 2112;
    if (a3)
    {
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v12 + 14) = v15;
    *v13 = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, a5, v12, 0x16u);
    sub_100007A5C(v13);

    sub_100004574(v14);
  }

  v18[0] = a1;
  v18[1] = a2;

  sub_100001D3C(&qword_1000104A8, &qword_100009908);
  return sub_100008578();
}

uint64_t sub_100007348()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_1000073AC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100007408(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007448(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000074A4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1000074A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007570(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100007AC4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004574(v11);
  return v7;
}

unint64_t sub_100007570(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000767C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000085C8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000767C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000076C8(a1, a2);
  sub_1000077F8(&off_10000C998);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000076C8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000078E4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000085C8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100008568();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000078E4(v10, 0);
        result = sub_1000085B8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000077F8(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100007958(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000078E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100001D3C(&qword_1000104B8, &unk_100009918);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007958(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001D3C(&qword_1000104B8, &unk_100009918);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100007A4C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100007A5C(uint64_t a1)
{
  v2 = sub_100001D3C(&qword_1000104B0, &qword_100009910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007AC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007B2C()
{
  v1 = sub_100001D3C(&qword_1000104A8, &qword_100009908);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_100007C7C()
{
  result = qword_1000104C0;
  if (!qword_1000104C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104C0);
  }

  return result;
}

unint64_t sub_100007CD4()
{
  result = qword_1000104C8;
  if (!qword_1000104C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104C8);
  }

  return result;
}

unint64_t sub_100007D94()
{
  result = qword_1000104D0;
  if (!qword_1000104D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104D0);
  }

  return result;
}

uint64_t sub_100007DE8()
{
  v0 = sub_100008508();
  sub_1000044C8(v0, qword_100010568);
  sub_100004490(v0, qword_100010568);
  return sub_1000084F8();
}

uint64_t sub_100007E4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010118 != -1)
  {
    swift_once();
  }

  v2 = sub_100008508();
  v3 = sub_100004490(v2, qword_100010568);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100007F1C()
{
  v1 = *(v0 + 16);
  sub_1000082D8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100007F80(uint64_t a1)
{
  v2 = sub_100007D94();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100007FD0()
{
  result = qword_1000104D8;
  if (!qword_1000104D8)
  {
    sub_100002BF4(&qword_1000104E0, &unk_100009A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104D8);
  }

  return result;
}

uint64_t sub_100008034(uint64_t a1)
{
  v2 = sub_100008184();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000080DC();
  sub_100008518();
  return 0;
}

unint64_t sub_1000080DC()
{
  result = qword_1000104E8;
  if (!qword_1000104E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104E8);
  }

  return result;
}

unint64_t sub_100008184()
{
  result = qword_1000104F0;
  if (!qword_1000104F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104F0);
  }

  return result;
}