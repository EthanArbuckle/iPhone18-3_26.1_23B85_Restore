unint64_t sub_1000394DC()
{
  result = qword_1000862E8;
  if (!qword_1000862E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862E8);
  }

  return result;
}

unint64_t sub_100039534()
{
  result = qword_1000862F0;
  if (!qword_1000862F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862F0);
  }

  return result;
}

unint64_t sub_10003958C()
{
  result = qword_1000862F8;
  if (!qword_1000862F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000862F8);
  }

  return result;
}

uint64_t sub_1000395E0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100039A3C();
  *v6 = v2;
  v6[1] = sub_10000A0B4;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100039694(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100039A3C();
  *v5 = v2;
  v5[1] = sub_10000A088;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_100039748()
{
  result = qword_100086300;
  if (!qword_100086300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086300);
  }

  return result;
}

unint64_t sub_1000397A0()
{
  result = qword_100086308;
  if (!qword_100086308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086308);
  }

  return result;
}

unint64_t sub_1000397F8()
{
  result = qword_100086310;
  if (!qword_100086310)
  {
    sub_10000221C(&qword_100086318, qword_1000692A0);
    sub_1000397A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086310);
  }

  return result;
}

uint64_t sub_10003987C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000393D4();
  *v6 = v2;
  v6[1] = sub_100002CE4;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_100039934()
{
  result = qword_100086320;
  if (!qword_100086320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086320);
  }

  return result;
}

unint64_t sub_10003998C()
{
  result = qword_100086328;
  if (!qword_100086328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086328);
  }

  return result;
}

unint64_t sub_1000399E4()
{
  result = qword_100086330;
  if (!qword_100086330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086330);
  }

  return result;
}

unint64_t sub_100039A3C()
{
  result = qword_100086338;
  if (!qword_100086338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086338);
  }

  return result;
}

unint64_t sub_100039A94()
{
  result = qword_100086340;
  if (!qword_100086340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086340);
  }

  return result;
}

uint64_t sub_100039AE8(uint64_t a1)
{
  v2 = sub_10003958C();

  return EntityURLRepresentation.init(_:)(0xD00000000000004FLL, 0x8000000100073100, a1, v2);
}

unint64_t sub_100039B50()
{
  result = qword_100086348;
  if (!qword_100086348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086348);
  }

  return result;
}

unint64_t sub_100039BA8()
{
  result = qword_100086350;
  if (!qword_100086350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086350);
  }

  return result;
}

unint64_t sub_100039C00()
{
  result = qword_100086358;
  if (!qword_100086358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086358);
  }

  return result;
}

uint64_t sub_100039C54@<X0>(uint64_t *a1@<X8>)
{
  sub_100038EF0();
  result = sub_100062E64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100039C94()
{
  sub_10003BBFC();
  v1 = sub_100063194();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100039D7C(uint64_t a1)
{
  v2 = sub_10003958C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100039DCC()
{
  result = qword_100086370;
  if (!qword_100086370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086370);
  }

  return result;
}

uint64_t sub_100039E24(uint64_t a1)
{
  v2 = sub_100039C00();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100039E74()
{
  result = qword_100086378;
  if (!qword_100086378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086378);
  }

  return result;
}

uint64_t sub_100039EC8()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090D88);
  sub_1000049B4(v0, qword_100090D88);
  return sub_1000633E4();
}

uint64_t sub_100039F2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_1000633F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000635E4();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_100064294();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100063404();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100064284();
  sub_1000635D4();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_100063414();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_100063084();
  v18 = sub_100063074();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t (*sub_10003A228(uint64_t *a1))()
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
  *(v3 + 32) = sub_100062E74();
  return sub_10000A08C;
}

unint64_t sub_10003A2A0()
{
  result = qword_100086380;
  if (!qword_100086380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086380);
  }

  return result;
}

uint64_t sub_10003A2F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003BB54();
  v5 = sub_10003BBFC();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10003A35C()
{
  v0 = qword_1000862A0;

  return v0;
}

unint64_t sub_10003A398()
{
  result = qword_100086388;
  if (!qword_100086388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086388);
  }

  return result;
}

unint64_t sub_10003A3F0()
{
  result = qword_100086390;
  if (!qword_100086390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086390);
  }

  return result;
}

uint64_t sub_10003A4EC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10003BB54();
  v7 = sub_10003BBA8();
  v8 = sub_10003BBFC();
  *v5 = v2;
  v5[1] = sub_10000858C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10003A5B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003B6F8();
  *a1 = result;
  return result;
}

uint64_t sub_10003A5E0(uint64_t a1)
{
  v2 = sub_10003A2A0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10003A6E4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_1000021D4(&qword_100084E18, &unk_100067D70);
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = sub_1000021D4(&qword_100084E20, &unk_100065AB0);
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  v9 = sub_1000021D4(&qword_100084E28, &unk_100067D80);
  v10 = *(v9 - 8);
  v21 = v9;
  v22 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  swift_getKeyPath();
  sub_100038EF0();
  sub_100064184();
  sub_100063A34();
  v14 = sub_100009F14(&qword_100084E30, &qword_100084E18, &unk_100067D70);
  sub_100063B04();

  (*(v19 + 8))(v4, v1);
  sub_100063A34();
  v24 = v1;
  v25 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100063AB4();

  (*(v20 + 8))(v8, v5);
  v24 = v5;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = v21;
  sub_100063B24();
  return (*(v22 + 8))(v13, v16);
}

uint64_t sub_10003AAE0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000633F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000635E4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100064294();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100063404();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100063414();
  result = sub_100063E04();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_10003ACF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000633F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000635E4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100064294();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100063404();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100064284();
  sub_1000635D4();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100063414();
  result = sub_100063E04();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_10003AF6C()
{
  v0 = sub_1000021D4(&qword_100084D78, &unk_100065980);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000631F4();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v27 = &v27 - v16;
  v18 = sub_100063404();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v29 = sub_1000021D4(&qword_1000863B0, &qword_1000698D0);
  sub_1000633E4();
  v33 = *(v19 + 56);
  v33(v17, 1, 1, v18);
  v38 = 0;
  v21 = sub_100062E34();
  v22 = *(*(v21 - 8) + 56);
  v28 = v13;
  v22(v13, 1, 1, v21);
  v22(v11, 1, 1, v21);
  v32 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v3 + 104);
  v30 = v3 + 104;
  v31 = v23;
  v23(v6);
  sub_10003958C();
  v24 = v27;
  v29 = sub_100062EB4();
  sub_1000021D4(&qword_100084D98, &unk_1000659A0);
  sub_1000633E4();
  v33(v24, 1, 1, v34);
  v37 = 2;
  v25 = sub_100064314();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v22(v28, 1, 1, v21);
  v31(v6, v32, v36);
  sub_100062EC4();
  return v29;
}

uint64_t sub_10003B3E0(uint64_t a1)
{
  v3 = sub_1000633F4();
  v1[2] = v3;
  v4 = *(v3 - 8);
  v1[3] = v4;
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = *(*(sub_1000635E4() - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v7 = *(*(sub_100064294() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v8 = *(*(sub_100063404() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_100064334();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  return _swift_task_switch(sub_10003B54C, v9, v11);
}

uint64_t sub_10003B54C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_1000021D4(&qword_1000862B8, qword_100069000);
  sub_100064284();
  sub_1000635D4();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_100063414();
  sub_100009F14(&qword_1000863D0, &qword_1000863D8, &qword_1000698F0);
  v7 = sub_100063284();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_10003B6F8()
{
  v0 = sub_1000631F4();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000021D4(&qword_100084D80, &unk_100065EE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v28 - v7;
  v9 = sub_1000021D4(&qword_100084D88, &qword_100065990);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = sub_1000633F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000635E4();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_100064294();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_100063404();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28[1] = sub_1000021D4(&qword_1000863B0, &qword_1000698D0);
  sub_100064284();
  sub_1000635D4();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_100063414();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 0;
  v25 = sub_100062E34();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_10003958C();
  return sub_100062EB4();
}

unint64_t sub_10003BB54()
{
  result = qword_1000863B8;
  if (!qword_1000863B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000863B8);
  }

  return result;
}

unint64_t sub_10003BBA8()
{
  result = qword_1000863C0;
  if (!qword_1000863C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000863C0);
  }

  return result;
}

unint64_t sub_10003BBFC()
{
  result = qword_1000863C8;
  if (!qword_1000863C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000863C8);
  }

  return result;
}

uint64_t sub_10003BCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *)@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v340 = a7;
  v341 = a6;
  v353 = a5;
  v354 = a3;
  v350 = a1;
  v351 = a4;
  v318 = a2;
  v342 = a8;
  v344 = 0;
  v327 = sub_1000021D4(&qword_1000864B0, &unk_10006A390);
  v8 = *(*(v327 - 8) + 64);
  v9 = __chkstk_darwin(v327);
  v326 = &v305 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v325 = &v305 - v11;
  v12 = sub_1000021D4(&qword_1000864B8, &qword_1000699F0);
  v337 = *(v12 - 8);
  v338 = v12;
  v13 = *(v337 + 64);
  __chkstk_darwin(v12);
  v328 = &v305 - v14;
  v15 = sub_1000021D4(&qword_1000864C0, &qword_1000699F8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v335 = &v305 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v334 = &v305 - v19;
  v20 = sub_1000021D4(&qword_1000864C8, &qword_100069A00);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v339 = &v305 - v22;
  v23 = sub_100063644();
  v320 = *(v23 - 8);
  v321 = v23;
  v24 = *(v320 + 64);
  v25 = __chkstk_darwin(v23);
  v313 = &v305 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v317 = &v305 - v27;
  v343 = sub_100063574();
  v329 = *(v343 - 8);
  v28 = *(v329 + 64);
  v29 = __chkstk_darwin(v343);
  v336 = &v305 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v312 = &v305 - v32;
  __chkstk_darwin(v31);
  v316 = &v305 - v33;
  v319 = sub_1000635E4();
  v322 = *(v319 - 8);
  v34 = *(v322 + 64);
  __chkstk_darwin(v319);
  v324 = &v305 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v345 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
  v333 = *(v345 - 8);
  v36 = *(v333 + 64);
  v37 = __chkstk_darwin(v345);
  v346 = &v305 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v347 = &v305 - v40;
  v41 = __chkstk_darwin(v39);
  v311 = &v305 - v42;
  v43 = __chkstk_darwin(v41);
  v315 = &v305 - v44;
  __chkstk_darwin(v43);
  v46 = &v305 - v45;
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  v48 = *(started - 8);
  v49 = *(v48 + 64);
  v50 = __chkstk_darwin(started);
  v310 = &v305 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v307 = &v305 - v53;
  v54 = __chkstk_darwin(v52);
  v314 = &v305 - v55;
  v56 = __chkstk_darwin(v54);
  v308 = &v305 - v57;
  v58 = __chkstk_darwin(v56);
  v309 = &v305 - v59;
  v60 = __chkstk_darwin(v58);
  v323 = &v305 - v61;
  __chkstk_darwin(v60);
  v63 = &v305 - v62;
  v64 = sub_1000021D4(&qword_100084E70, &unk_100065B90);
  v65 = *(*(v64 - 8) + 64);
  v66 = __chkstk_darwin(v64 - 8);
  v330 = &v305 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __chkstk_darwin(v66);
  v331 = &v305 - v69;
  v70 = __chkstk_darwin(v68);
  v332 = &v305 - v71;
  v72 = __chkstk_darwin(v70);
  v74 = &v305 - v73;
  v75 = __chkstk_darwin(v72);
  v77 = &v305 - v76;
  (v353)(v75);
  v352 = v77;
  sub_100016718(v77, v74, &qword_100084E70, &unk_100065B90);
  v78 = *(v48 + 48);
  v353 = started;
  v79 = v351;
  v348 = v78;
  v349 = v48 + 48;
  if (v78(v74, 1, started) == 1)
  {
    sub_10000494C(v74, &qword_100084E70, &unk_100065B90);
    v80 = v343;
    goto LABEL_9;
  }

  sub_1000481A0(v74, v63);
  sub_100016718(v63, v46, &qword_100084E60, &unk_100065B80);
  sub_1000483C8(&qword_1000864D0);
  v80 = v343;
  if (sub_100064264())
  {
    v81 = *(v345 + 36);
    v82 = sub_100064254();
    sub_10000494C(v46, &qword_100084E60, &unk_100065B80);
    if (v82)
    {
      v83 = v319;
      (*(v322 + 16))(v324, v318, v319);
      v84 = v353;
      v85 = &v63[*(v353 + 28)];
      v86 = *(v85 + 2);
      v396 = *(v85 + 1);
      v397 = v86;
      v398 = v85[48];
      v395 = *v85;
      sub_100048204(&v395, &v391);
      sub_100041194(&v395, v350, &v366);
      sub_100048260(&v395);
      v87 = v368;
      if (v368)
      {
        v88 = v370;
        v89 = v323;
        sub_10000C8CC(v63, v323);
        sub_100048100(v63);
        sub_100016718(v89, v63, &qword_100084E60, &unk_100065B80);
        v90 = v89 + v84[5];
        v91 = *(v90 + 16);
        v389 = *(v90 + 32);
        v390 = *(v90 + 48);
        v92 = *v90;
        v388 = v91;
        v387 = v92;
        v93 = v89 + v84[6];
        v94 = *(v93 + 32);
        v392 = *(v93 + 16);
        v393 = v94;
        v394 = *(v93 + 48);
        v391 = *v93;
        sub_100048204(&v387, &v379);
        sub_100048204(&v391, &v379);
        sub_100048100(v89);
        v95 = &v63[v84[5]];
        v96 = v388;
        *v95 = v387;
        *(v95 + 1) = v96;
        *(v95 + 2) = v389;
        v95[48] = v390;
        v97 = &v63[v84[6]];
        v98 = v392;
        *v97 = v391;
        *(v97 + 1) = v98;
        *(v97 + 2) = v393;
        v97[48] = v394;
        *v85 = v366;
        *(v85 + 2) = v367;
        *(v85 + 3) = v87;
        *(v85 + 2) = v369;
        v99 = v88;
        v85[48] = v88;
      }

      else
      {
        v99 = v398;
        v89 = v323;
      }

      v203 = &v63[v84[5]];
      v204 = *(v203 + 1);
      v391 = *v203;
      v392 = v204;
      v393 = *(v203 + 2);
      v394 = v203[48];
      sub_100048204(&v391, &v387);
      sub_100041194(&v391, v350, &v371);
      sub_100048260(&v391);
      v205 = *(&v372 + 1);
      if (*(&v372 + 1))
      {
        sub_1000481A0(v63, v89);
        sub_100016718(v89, v63, &qword_100084E60, &unk_100065B80);
        v206 = v89 + v84[6];
        v207 = *(v206 + 32);
        v380 = *(v206 + 16);
        v381 = v207;
        v382 = *(v206 + 48);
        v379 = *v206;
        v208 = v89 + v84[7];
        v209 = *(v208 + 16);
        v389 = *(v208 + 32);
        v390 = *(v208 + 48);
        v210 = *v208;
        v388 = v209;
        v387 = v210;
        sub_100048204(&v379, &v375);
        sub_100048204(&v387, &v375);
        sub_100048100(v89);
        *v203 = v371;
        *(v203 + 2) = v372;
        *(v203 + 3) = v205;
        *(v203 + 2) = v373;
        v203[48] = v374;
        v211 = &v63[v84[6]];
        v212 = v380;
        *v211 = v379;
        *(v211 + 1) = v212;
        *(v211 + 2) = v381;
        v211[48] = v382;
        v99 = v390;
        v213 = v388;
        *v85 = v387;
        *(v85 + 1) = v213;
        *(v85 + 2) = v389;
        v85[48] = v390;
      }

      v214 = &v63[v84[6]];
      v215 = *(v214 + 1);
      v387 = *v214;
      v388 = v215;
      v389 = *(v214 + 2);
      v390 = v214[48];
      sub_100048204(&v387, &v379);
      v216 = v324;
      sub_100041194(&v387, v350, &v375);
      sub_100048260(&v387);
      (*(v322 + 8))(v216, v83);
      v217 = *(&v376 + 1);
      if (*(&v376 + 1))
      {
        v218 = v323;
        sub_1000481A0(v63, v323);
        sub_100016718(v218, v63, &qword_100084E60, &unk_100065B80);
        v219 = v218 + v84[5];
        v220 = *(v219 + 32);
        v362 = *(v219 + 16);
        v363 = v220;
        v364 = *(v219 + 48);
        v361 = *v219;
        v221 = v218 + v84[7];
        v222 = *(v221 + 32);
        v380 = *(v221 + 16);
        v381 = v222;
        v382 = *(v221 + 48);
        v379 = *v221;
        sub_100048204(&v361, &v357);
        sub_100048204(&v379, &v357);
        sub_100048100(v218);
        v223 = v362;
        *v203 = v361;
        *(v203 + 1) = v223;
        *(v203 + 2) = v363;
        v203[48] = v364;
        v224 = v376;
        *v214 = v375;
        *(v214 + 2) = v224;
        *(v214 + 3) = v217;
        *(v214 + 2) = v377;
        v214[48] = v378;
        LOBYTE(v224) = v382;
        v85[48] = v382;
        v225 = v381;
        *(v85 + 1) = v380;
        *(v85 + 2) = v225;
        *v85 = v379;
        v227 = v320;
        v226 = v321;
        if ((v224 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v227 = v320;
        v226 = v321;
        v218 = v323;
        if ((v99 & 1) == 0)
        {
LABEL_57:
          swift_beginAccess();
          v240 = v63[v84[5] + 48];
          v306 = v63;
          if (v240 == 1)
          {
            v241 = v314;
            sub_10000C8CC(v63, v314);
            v242 = v316;
            (*(v329 + 16))(v316, v351, v80);
            v243 = v317;
            v244 = v226;
            (*(v227 + 16))(v317, v354, v226);
            sub_100016718(v241, v315, &qword_100084E60, &unk_100065B80);
            v245 = &v63[v84[5]];
            v246 = *(v245 + 1);
            v386[2] = *(v245 + 2);
            v386[0] = *v245;
            v386[1] = v246;
            v247 = v350;
            swift_bridgeObjectRetain_n();
            sub_10000B264(v386, &v361);
            v248 = sub_1000471A0(v247, v242, v243, 1);
            sub_10000B264(v386, &v361);
            v249 = v344;
            v250 = sub_10004686C(v248, v386);
            v344 = v249;
            sub_1000480AC(v386);
            if (!*(v250 + 16))
            {
              goto LABEL_75;
            }

            v251 = -1 << *(v250 + 32);
            v252 = sub_1000643E4();
            v253 = *(v250 + 16);
            if (!v253)
            {
LABEL_73:
              __break(1u);
              goto LABEL_74;
            }

            v254 = *(v250 + 36);
            v255 = sub_100040DB8(v253);
            v256 = sub_10003DE30(v252, v254, 0, v255, v250);
            v258 = v257;
            v260 = v259;
            sub_10003DF68(v256, v257, v250, &v383);
            sub_1000480AC(v386);
            sub_1000480A0(v256, v258, v260 & 1);

            v261 = v314;
            v262 = (v314 + v84[6]);
            v263 = v262[1];
            v357 = *v262;
            v358 = v263;
            v359 = v262[2];
            v360 = *(v262 + 48);
            sub_100048204(&v357, &v361);
            swift_bridgeObjectRelease_n();
            (*(v329 + 8))(v316, v80);
            (*(v227 + 8))(v317, v244);
            v264 = v261 + v84[7];
            v265 = *(v264 + 16);
            v361 = *v264;
            v362 = v265;
            v363 = *(v264 + 32);
            v364 = *(v264 + 48);
            sub_100048204(&v361, v355);
            sub_100048100(v261);
            v266 = v308;
            sub_100015F0C(v315, v308, &qword_100084E60, &unk_100065B80);
            v267 = v266 + v84[5];
            v268 = v384;
            *v267 = v383;
            *(v267 + 16) = v268;
            *(v267 + 32) = v385;
            *(v267 + 48) = 0;
            v269 = v266 + v84[6];
            *(v269 + 48) = v360;
            v270 = v359;
            *(v269 + 16) = v358;
            *(v269 + 32) = v270;
            *v269 = v357;
            v271 = v266 + v84[7];
            *(v271 + 48) = v364;
            v272 = v363;
            *(v271 + 16) = v362;
            *(v271 + 32) = v272;
            *v271 = v361;
            v63 = v306;
            sub_1000482B4(v266, v306);
            v273 = v351;
          }

          else
          {
            v273 = v351;
            v244 = v226;
          }

          if (v63[v84[6] + 48] == 1)
          {
            v274 = v310;
            sub_10000C8CC(v63, v310);
            v275 = v312;
            (*(v329 + 16))(v312, v273, v80);
            v276 = v313;
            (*(v227 + 16))(v313, v354, v244);
            sub_100016718(v274, v311, &qword_100084E60, &unk_100065B80);
            v277 = v274 + v84[5];
            v278 = *(v277 + 32);
            v362 = *(v277 + 16);
            v363 = v278;
            v364 = *(v277 + 48);
            v361 = *v277;
            v279 = &v63[v84[6]];
            v280 = *(v279 + 2);
            v384 = *(v279 + 1);
            v385 = v280;
            v383 = *v279;
            v281 = v350;
            swift_bridgeObjectRetain_n();
            sub_100048204(&v361, &v357);
            sub_10000B264(&v383, &v357);
            v282 = sub_1000471A0(v281, v275, v276, 0);
            sub_10000B264(&v383, &v357);
            v283 = sub_10004686C(v282, &v383);
            sub_1000480AC(&v383);
            if (!*(v283 + 16))
            {
              goto LABEL_75;
            }

            v284 = -1 << *(v283 + 32);
            v285 = sub_1000643E4();
            v286 = *(v283 + 16);
            if (!v286)
            {
LABEL_74:
              __break(1u);
              goto LABEL_75;
            }

            v287 = *(v283 + 36);
            v288 = sub_100040DB8(v286);
            v289 = sub_10003DE30(v285, v287, 0, v288, v283);
            v291 = v290;
            v293 = v292;
            sub_10003DF68(v289, v290, v283, v356);
            sub_1000480AC(&v383);
            sub_1000480A0(v289, v291, v293 & 1);
            swift_bridgeObjectRelease_n();

            (*(v329 + 8))(v312, v80);
            (*(v227 + 8))(v313, v244);
            v294 = v310;
            v295 = (v310 + v84[7]);
            v296 = v295[1];
            v357 = *v295;
            v358 = v296;
            v359 = v295[2];
            v360 = *(v295 + 48);
            sub_100048204(&v357, v355);
            sub_100048100(v294);
            v297 = v307;
            sub_100015F0C(v311, v307, &qword_100084E60, &unk_100065B80);
            v298 = v297 + v84[5];
            v299 = v362;
            *v298 = v361;
            *(v298 + 16) = v299;
            *(v298 + 32) = v363;
            *(v298 + 48) = v364;
            v300 = v297 + v84[6];
            v301 = v356[1];
            *v300 = v356[0];
            *(v300 + 16) = v301;
            v302 = v357;
            *(v300 + 32) = v356[2];
            *(v300 + 48) = 0;
            v303 = v297 + v84[7];
            v304 = v358;
            *v303 = v302;
            *(v303 + 16) = v304;
            *(v303 + 32) = v359;
            *(v303 + 48) = v360;
            v63 = v306;
            sub_1000482B4(v297, v306);
          }

          v341(v63);
          sub_10000494C(v352, &qword_100084E70, &unk_100065B90);
          sub_10000C8CC(v63, v342);
          return sub_100048100(v63);
        }
      }

      v228 = v309;
      sub_10000C8CC(v63, v309);
      sub_100016718(v228, v218, &qword_100084E60, &unk_100065B80);
      v229 = v228 + v84[5];
      v230 = *(v229 + 32);
      v358 = *(v229 + 16);
      v359 = v230;
      v360 = *(v229 + 48);
      v357 = *v229;
      v231 = v228 + v84[6];
      v232 = *(v231 + 32);
      v362 = *(v231 + 16);
      v363 = v232;
      v364 = *(v231 + 48);
      v361 = *v231;
      v233 = v350;
      swift_bridgeObjectRetain_n();
      sub_100048204(&v357, &v379);
      sub_100048204(&v361, &v379);
      sub_100046F40(v233, v351, v354, v63, &v379);
      swift_bridgeObjectRelease_n();
      sub_100048100(v228);
      v234 = v218 + v84[5];
      v235 = v358;
      *v234 = v357;
      *(v234 + 16) = v235;
      *(v234 + 32) = v359;
      *(v234 + 48) = v360;
      v236 = v218 + v84[6];
      v237 = v362;
      *v236 = v361;
      *(v236 + 16) = v237;
      *(v236 + 32) = v363;
      *(v236 + 48) = v364;
      v238 = v218 + v84[7];
      *(v238 + 48) = v382;
      v239 = v381;
      *(v238 + 16) = v380;
      *(v238 + 32) = v239;
      *v238 = v379;
      swift_beginAccess();
      sub_1000482B4(v218, v63);
      goto LABEL_57;
    }
  }

  else
  {
    sub_10000494C(v46, &qword_100084E60, &unk_100065B80);
  }

  sub_100048100(v63);
LABEL_9:
  v100 = sub_100041388(v354, v79);
  __chkstk_darwin(v100);
  v101 = v334;
  v102 = v344;
  sub_10003DBE4(sub_10004840C, v100, v334);
  v344 = v102;

  v103 = v335;
  sub_100015F0C(v101, v335, &qword_1000864C0, &qword_1000699F8);
  v104 = 1;
  v105 = (*(v337 + 48))(v103, 1, v338);
  v106 = v339;
  if (v105 != 1)
  {
    v107 = v328;
    sub_100015F0C(v103, v328, &qword_1000864B8, &qword_1000699F0);
    sub_100015F0C(v107, v106, &qword_100084E60, &unk_100065B80);
    v104 = 0;
  }

  v108 = v333;
  v109 = v104;
  v110 = v345;
  (*(v333 + 56))(v106, v109, 1, v345);
  v111 = (*(v108 + 48))(v106, 1, v110);
  v112 = v336;
  if (v111 == 1)
  {
    sub_10000494C(v106, &qword_1000864C8, &qword_100069A00);
    sub_100063544();
    sub_1000483C8(&qword_1000864D0);
    if ((sub_100064264() & 1) == 0)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v113 = v329;
    v114 = v325;
    (*(v329 + 16))(v325, v79, v80);
    v115 = v327;
    v116 = *(v113 + 32);
    v116(v114 + *(v327 + 48), v112, v80);
    v117 = v326;
    sub_100016718(v114, v326, &qword_1000864B0, &unk_10006A390);
    v343 = *(v115 + 48);
    v118 = v347;
    v116(v347, v117, v80);
    v119 = *(v113 + 8);
    v119(v117 + v343, v80);
    sub_100015F0C(v114, v117, &qword_1000864B0, &unk_10006A390);
    v116(v118 + *(v345 + 36), (v117 + *(v115 + 48)), v80);
    v79 = v351;
    v119(v117, v80);
  }

  else
  {
    v118 = v347;
    sub_100015F0C(v106, v347, &qword_100084E60, &unk_100065B80);
  }

  sub_100016718(v118, v346, &qword_100084E60, &unk_100065B80);
  v120 = v332;
  sub_100016718(v352, v332, &qword_100084E70, &unk_100065B90);
  v121 = v353;
  if (v348(v120, 1, v353) == 1)
  {
    sub_10000494C(v120, &qword_100084E70, &unk_100065B90);
    v122 = sub_1000471A0(v350, v79, v354, 1);
    v345 = 0;
    v123 = 0;
    v124 = 0;
    v125 = 0;
    v126 = 0;
  }

  else
  {
    v127 = (v120 + *(v121 + 20));
    v128 = v127[1];
    v395 = *v127;
    v396 = v128;
    v397 = v127[2];
    sub_10000B264(&v395, &v391);
    sub_100048100(v120);
    v125 = *(&v395 + 1);
    v126 = v395;
    v123 = *(&v396 + 1);
    v124 = v396;
    v345 = *(&v397 + 1);
    v129 = v397;
    v122 = sub_1000471A0(v350, v79, v354, 1);
    if (v123)
    {
      LOBYTE(v391) = v125 & 1;
      *&v395 = v126;
      WORD4(v395) = v125 & 0xFF01;
      BYTE10(v395) = BYTE2(v125);
      BYTE11(v395) = BYTE3(v125);
      v396 = __PAIR128__(v123, v124);
      *&v397 = v129;
      *(&v397 + 1) = v345;
      sub_10004815C(v126, v125, v124, v123);
      v130 = v344;
      v122 = sub_10004686C(v122, &v395);
      v344 = v130;
      sub_10004805C(v126, v125, v124, v123);
    }
  }

  if (!*(v122 + 16))
  {
    goto LABEL_75;
  }

  v131 = -1 << *(v122 + 32);
  v132 = sub_1000643E4();
  v133 = *(v122 + 16);
  if (!v133)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v134 = *(v122 + 36);
  v135 = sub_100040DB8(v133);
  v136 = sub_10003DE30(v132, v134, 0, v135, v122);
  v138 = v137;
  v140 = v139;
  sub_10003DF68(v136, v137, v122, &v379);
  sub_10004805C(v126, v125, v124, v123);
  sub_1000480A0(v136, v138, v140 & 1);

  v141 = v331;
  sub_100016718(v352, v331, &qword_100084E70, &unk_100065B90);
  v142 = v353;
  if (v348(v141, 1, v353) == 1)
  {
    sub_10000494C(v141, &qword_100084E70, &unk_100065B90);
    v143 = sub_1000471A0(v350, v351, v354, 0);
    v345 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
  }

  else
  {
    v148 = (v141 + *(v142 + 24));
    v149 = v148[1];
    v391 = *v148;
    v392 = v149;
    v393 = v148[2];
    sub_10000B264(&v391, &v387);
    sub_100048100(v141);
    v146 = *(&v391 + 1);
    v147 = v391;
    v144 = *(&v392 + 1);
    v145 = v392;
    v345 = *(&v393 + 1);
    v150 = v393;
    v143 = sub_1000471A0(v350, v351, v354, 0);
    if (v144)
    {
      LOBYTE(v387) = v146 & 1;
      *&v391 = v147;
      WORD4(v391) = v146 & 0xFF01;
      BYTE10(v391) = BYTE2(v146);
      BYTE11(v391) = BYTE3(v146);
      v392 = __PAIR128__(v144, v145);
      *&v393 = v150;
      *(&v393 + 1) = v345;
      sub_10004815C(v147, v146, v145, v144);
      v151 = v344;
      v143 = sub_10004686C(v143, &v391);
      v344 = v151;
      sub_10004805C(v147, v146, v145, v144);
    }
  }

  if (!*(v143 + 16))
  {
    goto LABEL_75;
  }

  v152 = -1 << *(v143 + 32);
  v153 = sub_1000643E4();
  v154 = *(v143 + 16);
  if (!v154)
  {
    goto LABEL_70;
  }

  v155 = *(v143 + 36);
  v156 = sub_100040DB8(v154);
  v157 = sub_10003DE30(v153, v155, 0, v156, v143);
  v159 = v158;
  v161 = v160;
  sub_10003DF68(v157, v158, v143, &v375);
  sub_10004805C(v147, v146, v145, v144);
  sub_1000480A0(v157, v159, v161 & 1);

  v162 = v330;
  sub_100016718(v352, v330, &qword_100084E70, &unk_100065B90);
  v163 = v353;
  if (v348(v162, 1, v353) == 1)
  {
    sub_10000494C(v162, &qword_100084E70, &unk_100065B90);
    v164 = sub_10004561C(v350, v351, v354);
    v166 = v165;
    v167 = 0;
    v168 = 0;
    v354 = 0;
    v169 = 0;
    v170 = 0;
    v171 = 0;
LABEL_34:
    v178 = 1;
LABEL_35:
    if (!sub_100040DB8(0xAuLL))
    {
      v166 = v164;
    }

    if (v178)
    {
      v179 = v171;
      goto LABEL_47;
    }

    v180 = v170 >> 16;
    goto LABEL_45;
  }

  v172 = (v162 + *(v163 + 28));
  v173 = v172[1];
  v387 = *v172;
  v388 = v173;
  v389 = v172[2];
  sub_10000B264(&v387, &v371);
  sub_100048100(v162);
  v170 = *(&v387 + 1);
  v171 = v387;
  v174 = *(&v388 + 1);
  v169 = v388;
  v167 = *(&v389 + 1);
  v168 = v389;
  v164 = sub_10004561C(v350, v351, v354);
  v166 = v175;
  v354 = v174;
  if (!v174)
  {
    v354 = 0;
    goto LABEL_34;
  }

  if (BYTE2(v170))
  {
    if (BYTE2(v170) != 1)
    {

      LOBYTE(v180) = 2;
LABEL_45:
      v182 = v167;
      goto LABEL_46;
    }

    v176 = v171;
    v177 = v169;
  }

  else
  {
    v176 = v171;
    v177 = v169;
  }

  v181 = sub_100064594();

  if ((v181 & 1) == 0)
  {
    v178 = 0;
    v169 = v177;
    v171 = v176;
    goto LABEL_35;
  }

  v180 = v170 >> 16;

  v182 = v167;
  v169 = v177;
  v171 = v176;
LABEL_46:
  v179 = v171;
  *&v371 = v171;
  WORD4(v371) = v170 & 0xFF01;
  BYTE10(v371) = v180;
  BYTE11(v371) = BYTE3(v170);
  *&v372 = v169;
  *(&v372 + 1) = v354;
  *&v373 = v168;
  *(&v373 + 1) = v182;
  v389 = v373;
  v388 = v372;
  v387 = v371;
  sub_10000B264(&v371, &v366);
  v166 = sub_10004686C(v166, &v387);
  sub_1000480AC(&v371);
LABEL_47:
  if (!*(v166 + 16))
  {
LABEL_75:
    result = sub_100064474();
    __break(1u);
    return result;
  }

  v183 = -1 << *(v166 + 32);
  v184 = sub_1000643E4();
  v185 = *(v166 + 16);
  if (!v185)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v186 = *(v166 + 36);
  v187 = sub_100040DB8(v185);
  v188 = sub_10003DE30(v184, v186, 0, v187, v166);
  v190 = v189;
  v191 = v169;
  v193 = v192;
  sub_10003DF68(v188, v189, v166, v365);
  sub_10004805C(v179, v170, v191, v354);
  sub_1000480A0(v188, v190, v193 & 1);

  v194 = v342;
  sub_100015F0C(v346, v342, &qword_100084E60, &unk_100065B80);
  v195 = v353;
  v196 = v194 + *(v353 + 20);
  v197 = v380;
  *v196 = v379;
  *(v196 + 16) = v197;
  *(v196 + 32) = v381;
  *(v196 + 48) = 0;
  v198 = v194 + *(v195 + 24);
  v199 = v377;
  *(v198 + 16) = v376;
  *(v198 + 32) = v199;
  *v198 = v375;
  *(v198 + 48) = 0;
  v200 = v194 + *(v195 + 28);
  v201 = v365[1];
  *v200 = v365[0];
  *(v200 + 16) = v201;
  *(v200 + 32) = v365[2];
  *(v200 + 48) = 0;
  v341(v194);
  sub_10000494C(v347, &qword_100084E60, &unk_100065B80);
  return sub_10000494C(v352, &qword_100084E70, &unk_100065B90);
}

uint64_t sub_10003DBE4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_1000021D4(&qword_1000864B8, &qword_1000699F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v12 = &v19 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v19 = v10;
    v20 = v9;
    v21 = a3;
    v14 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    while (1)
    {
      sub_100016718(v14, v12, &qword_1000864B8, &qword_1000699F0);
      v16 = a1(v12);
      if (v3)
      {
        return sub_10000494C(v12, &qword_1000864B8, &qword_1000699F0);
      }

      if (v16)
      {
        break;
      }

      sub_10000494C(v12, &qword_1000864B8, &qword_1000699F0);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        a3 = v21;
        goto LABEL_10;
      }
    }

    a3 = v21;
    sub_100015F0C(v12, v21, &qword_1000864B8, &qword_1000699F0);
    v17 = 0;
LABEL_10:
    v10 = v19;
    v9 = v20;
  }

  else
  {
    v17 = 1;
  }

  return (*(v10 + 56))(a3, v17, 1, v9);
}

uint64_t sub_10003DDB0()
{
  v0 = sub_100063704();
  sub_100009DBC(v0, qword_100086400);
  sub_1000049B4(v0, qword_100086400);
  return sub_1000636F4();
}

unint64_t sub_10003DE30(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v16 = result;
      sub_100048394(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    while ((a3 & 1) == 0)
    {
      if ((result & 0x8000000000000000) != 0 || (v7 = 1 << *(a5 + 32), result >= v7))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = result >> 6;
      v9 = *(a5 + 56 + 8 * (result >> 6));
      if (((v9 >> result) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(a5 + 36) != a2)
      {
        goto LABEL_21;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 64 + 8 * v8);
        while (v12 < (v7 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      a3 = 0;
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003DF68@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v12 = v4;
    v13 = v5;
    v6 = (*(a3 + 48) + 48 * result);
    v8 = v6[1];
    v7 = v6[2];
    v11[0] = *v6;
    v11[1] = v8;
    v11[2] = v7;
    v9 = v6[1];
    *a4 = *v6;
    a4[1] = v9;
    a4[2] = v6[2];
    return sub_10000B264(v11, &v10);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10003E000@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 0uLL;
  if ((v2[1] & 1) == 0)
  {
    v7 = result;
    v41 = a2;
    v40 = *v2;
    v8 = result + 56;
    v9 = 1 << *(result + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(result + 56);
    v12 = (v9 + 63) >> 6;
    v13 = *(v2 + 11);
    v42 = *(v2 + 9);

    for (i = 0; ; i = v15)
    {
      if (!v11)
      {
        while (1)
        {
          v15 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v15 >= v12)
          {

            v4 = 0;
            v5 = 0;
            v6 = 0uLL;
            a2 = v41;
            v3 = 0uLL;
            goto LABEL_79;
          }

          v11 = *(v8 + 8 * v15);
          ++i;
          if (v11)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v15 = i;
LABEL_12:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = (*(v7 + 48) + 48 * (v16 | (v15 << 6)));
      v19 = v17[1];
      v18 = v17[2];
      *v46 = *v17;
      *&v46[16] = v19;
      *&v46[32] = v18;
      v20 = 0xD000000000000010;
      if (v46[11] != 2)
      {
        v20 = 0x446C616963657073;
      }

      v21 = 0xEB00000000737961;
      if (v46[11] == 2)
      {
        v21 = 0x800000010006B460;
      }

      v22 = 0x6D6F4D6568546E69;
      if (!v46[11])
      {
        v22 = 0x616568416B6F6F6CLL;
      }

      v23 = 0xEB00000000746E65;
      if (!v46[11])
      {
        v23 = 0xE900000000000064;
      }

      if (v46[11] <= 1u)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      if (v46[11] <= 1u)
      {
        v25 = v23;
      }

      else
      {
        v25 = v21;
      }

      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v26 = 0xD000000000000010;
        }

        else
        {
          v26 = 0x446C616963657073;
        }

        if (v13 == 2)
        {
          v27 = 0x800000010006B460;
        }

        else
        {
          v27 = 0xEB00000000737961;
        }
      }

      else
      {
        v26 = 0x616568416B6F6F6CLL;
        v27 = 0xE900000000000064;
        if (v13)
        {
          v26 = 0x6D6F4D6568546E69;
          v27 = 0xEB00000000746E65;
        }
      }

      if (v24 == v26 && v25 == v27)
      {
        sub_10000B264(v46, v45);
      }

      else
      {
        v28 = sub_100064594();
        sub_10000B264(v46, v45);

        if ((v28 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (v46[9])
      {
        if (v46[9] == 1)
        {
          v29 = 0x746365526B636F6CLL;
        }

        else
        {
          v29 = 1701670760;
        }

        if (v46[9] == 1)
        {
          v30 = 0xEF72616C75676E61;
        }

        else
        {
          v30 = 0xE400000000000000;
        }

        v31 = v42;
        if (v42)
        {
LABEL_47:
          if (v31 == 1)
          {
            v32 = 0x746365526B636F6CLL;
          }

          else
          {
            v32 = 1701670760;
          }

          if (v31 == 1)
          {
            v33 = 0xEF72616C75676E61;
          }

          else
          {
            v33 = 0xE400000000000000;
          }

          if (v29 != v32)
          {
            goto LABEL_59;
          }

          goto LABEL_57;
        }
      }

      else
      {
        v29 = 0x696C6E496B636F6CLL;
        v30 = 0xEA0000000000656ELL;
        v31 = v42;
        if (v42)
        {
          goto LABEL_47;
        }
      }

      v33 = 0xEA0000000000656ELL;
      if (v29 != 0x696C6E496B636F6CLL)
      {
        goto LABEL_59;
      }

LABEL_57:
      if (v30 == v33)
      {

        goto LABEL_60;
      }

LABEL_59:
      v34 = sub_100064594();

      if ((v34 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_60:
      v35 = 0xE900000000000079;
      if (v46[10])
      {
        if (v46[10] == 1)
        {
          v36 = 0xEA00000000006B65;
          v37 = 0x6557664F656D6974;
          v38 = *(v2 + 10);
          if (*(v2 + 10))
          {
            goto LABEL_65;
          }
        }

        else
        {
          v36 = 0xE700000000000000;
          v37 = 0x656D6974796E61;
          v38 = *(v2 + 10);
          if (*(v2 + 10))
          {
LABEL_65:
            if (v38 == 1)
            {
              v35 = 0xEA00000000006B65;
              if (v37 != 0x6557664F656D6974)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v35 = 0xE700000000000000;
              if (v37 != 0x656D6974796E61)
              {
                goto LABEL_74;
              }
            }

            goto LABEL_72;
          }
        }
      }

      else
      {
        v37 = 0x6144664F656D6974;
        v36 = 0xE900000000000079;
        v38 = *(v2 + 10);
        if (*(v2 + 10))
        {
          goto LABEL_65;
        }
      }

      if (v37 != 0x6144664F656D6974)
      {
        goto LABEL_74;
      }

LABEL_72:
      if (v36 != v35)
      {
LABEL_74:
        v39 = sub_100064594();

        if ((v39 & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_75;
      }

LABEL_75:
      if ((v46[8] & 1) == 0 && *v46 == v40)
      {
        v5 = *&v46[40];
        v43 = *&v46[8];
        v44 = *&v46[24];

        v3 = v43;
        v6 = v44;
        v4 = v40;
        a2 = v41;
        goto LABEL_79;
      }

LABEL_6:
      result = sub_1000480AC(v46);
    }
  }

  v4 = 0;
  v5 = 0;
  v6 = 0uLL;
LABEL_79:
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 24) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t sub_10003E534()
{
  sub_100063574();
  sub_1000483C8(&qword_1000864D0);
  if ((sub_100064264() & 1) == 0)
  {
    return 0;
  }

  v0 = *(sub_1000021D4(&qword_100084E60, &unk_100065B80) + 36);
  return sub_100064254() & 1;
}

uint64_t sub_10003E5F0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_1000021D4(&qword_1000864B8, &qword_1000699F0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = &_swiftEmptyArrayStorage;
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_100016718(a3 + v16 + v17 * v14, v13, &qword_1000864B8, &qword_1000699F0);
      v18 = a1(v13);
      if (v3)
      {
        sub_10000494C(v13, &qword_1000864B8, &qword_1000699F0);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_100015F0C(v13, v25, &qword_1000864B8, &qword_1000699F0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100040E64(0, v15[2] + 1, 1);
          v15 = v27;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_100040E64(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        v15[2] = v21 + 1;
        result = sub_100015F0C(v25, v15 + v16 + v21 * v17, &qword_1000864B8, &qword_1000699F0);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_10000494C(v13, &qword_1000864B8, &qword_1000699F0);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_10003E874(_BYTE *a1, char a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v6 = a1[10];
  v7 = a1[11];
  if (a1[9])
  {
    if (a1[9] != 1)
    {
      goto LABEL_14;
    }

    v8 = 0x746365526B636F6CLL;
    v9 = 0xEF72616C75676E61;
  }

  else
  {
    v8 = 0x696C6E496B636F6CLL;
    v9 = 0xEA0000000000656ELL;
  }

  if (a2)
  {
    v10 = 0x696C6E496B636F6CLL;
  }

  else
  {
    v10 = 0x746365526B636F6CLL;
  }

  if (a2)
  {
    v11 = 0xEA0000000000656ELL;
  }

  else
  {
    v11 = 0xEF72616C75676E61;
  }

  if (v8 == v10 && v9 == v11)
  {

    goto LABEL_15;
  }

LABEL_14:
  v12 = sub_100064594();

  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if (v6 > 1)
  {

    return 1;
  }

  v13 = sub_100064594();

  if (v13)
  {
    return 1;
  }

  if (a3 == 4)
  {
    goto LABEL_25;
  }

  if (!v6)
  {

LABEL_24:
    if ((sub_10005D06C(v7, a3) & 1) == 0)
    {
      goto LABEL_25;
    }

    return 1;
  }

  v14 = sub_100064594();

  if (v14)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (a4 == 4)
  {
    return 0;
  }

  if (v6)
  {
  }

  else
  {
    v16 = sub_100064594();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_10005D06C(v7, a4) & 1;
}

uint64_t sub_10003EB20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003EBEC(v11, 0, 0, 1, a1, a2);
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
    sub_100048338(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000226EC(v11);
  return v7;
}

unint64_t sub_10003EBEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10003ECF8(a5, a6);
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
    result = sub_100064464();
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

char *sub_10003ECF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_10003ED44(a1, a2);
  sub_10003EE74(&off_100082418);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10003ED44(uint64_t a1, unint64_t a2)
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

  v6 = sub_10003EF60(v5, 0);
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

  result = sub_100064464();
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
        v10 = sub_1000642E4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10003EF60(v10, 0);
        result = sub_100064424();
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

uint64_t sub_10003EE74(uint64_t result)
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

  result = sub_10003EFD4(result, v12, 1, v3);
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

void *sub_10003EF60(uint64_t a1, uint64_t a2)
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

  sub_1000021D4(&qword_1000864E8, &qword_100069A10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003EFD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021D4(&qword_1000864E8, &qword_100069A10);
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

uint64_t sub_10003F0C8(__int128 *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1000645B4();
  sub_10005DCAC();
  v6 = sub_1000645E4();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_78:
    v37 = *v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v48[0] = *v45;
    sub_10000B264(a2, &v49);
    sub_10003FB14(a2, v8, isUniquelyReferenced_nonNull_native);
    *v45 = *&v48[0];
    v39 = *(a2 + 16);
    *a1 = *a2;
    a1[1] = v39;
    a1[2] = *(a2 + 32);
    return 1;
  }

  v9 = ~v7;
  v10 = *a2;
  v11 = *(a2 + 8);
  while (1)
  {
    v12 = (*(v4 + 48) + 48 * v8);
    v14 = v12[1];
    v13 = v12[2];
    v49 = *v12;
    v50 = v14;
    v51 = v13;
    if (BYTE8(v49))
    {
      if (!v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v49 == v10)
      {
        v15 = v11;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        goto LABEL_4;
      }
    }

    if (BYTE9(v49))
    {
      if (BYTE9(v49) == 1)
      {
        v16 = 0x746365526B636F6CLL;
      }

      else
      {
        v16 = 1701670760;
      }

      if (BYTE9(v49) == 1)
      {
        v17 = 0xEF72616C75676E61;
      }

      else
      {
        v17 = 0xE400000000000000;
      }

      v18 = *(a2 + 9);
      if (*(a2 + 9))
      {
LABEL_20:
        if (v18 == 1)
        {
          v19 = 0x746365526B636F6CLL;
        }

        else
        {
          v19 = 1701670760;
        }

        if (v18 == 1)
        {
          v20 = 0xEF72616C75676E61;
        }

        else
        {
          v20 = 0xE400000000000000;
        }

        if (v16 != v19)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v16 = 0x696C6E496B636F6CLL;
      v17 = 0xEA0000000000656ELL;
      v18 = *(a2 + 9);
      if (*(a2 + 9))
      {
        goto LABEL_20;
      }
    }

    v20 = 0xEA0000000000656ELL;
    if (v16 != 0x696C6E496B636F6CLL)
    {
      goto LABEL_32;
    }

LABEL_30:
    if (v17 == v20)
    {
      sub_10000B264(&v49, v48);

      goto LABEL_33;
    }

LABEL_32:
    v21 = sub_100064594();
    sub_10000B264(&v49, v48);

    if ((v21 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_33:
    v22 = 0xE900000000000079;
    if (BYTE10(v49))
    {
      if (BYTE10(v49) == 1)
      {
        v23 = 0x6557664F656D6974;
      }

      else
      {
        v23 = 0x656D6974796E61;
      }

      if (BYTE10(v49) == 1)
      {
        v24 = 0xEA00000000006B65;
      }

      else
      {
        v24 = 0xE700000000000000;
      }

      v25 = *(a2 + 10);
      if (*(a2 + 10))
      {
LABEL_41:
        if (v25 == 1)
        {
          v26 = 0x6557664F656D6974;
        }

        else
        {
          v26 = 0x656D6974796E61;
        }

        if (v25 == 1)
        {
          v22 = 0xEA00000000006B65;
        }

        else
        {
          v22 = 0xE700000000000000;
        }

        if (v23 != v26)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v23 = 0x6144664F656D6974;
      v24 = 0xE900000000000079;
      v25 = *(a2 + 10);
      if (*(a2 + 10))
      {
        goto LABEL_41;
      }
    }

    if (v23 != 0x6144664F656D6974)
    {
      goto LABEL_53;
    }

LABEL_51:
    if (v24 == v22)
    {

      goto LABEL_54;
    }

LABEL_53:
    v27 = sub_100064594();

    if ((v27 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_54:
    if (BYTE11(v49) > 1u)
    {
      if (BYTE11(v49) == 2)
      {
        v28 = 0xD000000000000010;
        v29 = 0x800000010006B460;
        goto LABEL_61;
      }

      v28 = 0x446C616963657073;
      v30 = 7567713;
    }

    else
    {
      v28 = 0x616568416B6F6F6CLL;
      v29 = 0xE900000000000064;
      if (!BYTE11(v49))
      {
        goto LABEL_61;
      }

      v28 = 0x6D6F4D6568546E69;
      v30 = 7630437;
    }

    v29 = v30 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_61:
    if (*(a2 + 11) > 1u)
    {
      if (*(a2 + 11) == 2)
      {
        v31 = 0xD000000000000010;
        v32 = 0x800000010006B460;
LABEL_66:
        if (v28 != v31)
        {
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      v33 = 0x446C616963657073;
      v34 = 7567713;
    }

    else
    {
      v31 = 0x616568416B6F6F6CLL;
      v32 = 0xE900000000000064;
      if (!*(a2 + 11))
      {
        goto LABEL_66;
      }

      v33 = 0x6D6F4D6568546E69;
      v34 = 7630437;
    }

    v32 = v34 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v28 != v33)
    {
      goto LABEL_72;
    }

LABEL_70:
    if (v29 == v32)
    {

      goto LABEL_73;
    }

LABEL_72:
    v35 = sub_100064594();

    if ((v35 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_73:
    if (v50 != *(a2 + 16) && (sub_100064594() & 1) == 0)
    {
LABEL_3:
      sub_1000480AC(&v49);
      goto LABEL_4;
    }

    if (v51 == *(a2 + 32))
    {
      break;
    }

    v36 = sub_100064594();
    sub_1000480AC(&v49);
    if (v36)
    {
      goto LABEL_80;
    }

LABEL_4:
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  sub_1000480AC(&v49);
LABEL_80:
  sub_1000480AC(a2);
  v41 = (*(v4 + 48) + 48 * v8);
  v42 = *v41;
  v43 = v41[2];
  v48[1] = v41[1];
  v48[2] = v43;
  v48[0] = v42;
  v44 = v41[1];
  *a1 = *v41;
  a1[1] = v44;
  a1[2] = v41[2];
  sub_10000B264(v48, v47);
  return 0;
}

uint64_t sub_10003F674(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000021D4(&qword_1000864D8, &qword_100069A08);
  result = sub_100064404();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v36 = result;
    v13 = result + 56;
    v35 = v3;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 48 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 9);
      v23 = *(v19 + 10);
      v24 = *(v19 + 11);
      v37 = *(v19 + 12);
      v39 = *(v19 + 16);
      v41 = *(v19 + 32);
      v42 = *(v19 + 24);
      v40 = *(v19 + 40);
      v25 = *(v6 + 40);
      sub_1000645B4();
      if (v21)
      {
        sub_1000645D4(0);
      }

      else
      {
        sub_1000645D4(1u);
        sub_1000645C4(v20);
      }

      sub_1000642C4();

      sub_1000642C4();

      v6 = v36;
      sub_1000642C4();

      sub_1000642C4();
      sub_1000642C4();
      result = sub_1000645E4();
      v26 = -1 << *(v36 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v36 + 48) + 48 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 9) = v22;
      *(v15 + 10) = v23;
      *(v15 + 11) = v24;
      *(v15 + 12) = v37;
      *(v15 + 16) = v39;
      *(v15 + 24) = v42;
      *(v15 + 32) = v41;
      *(v15 + 40) = v40;
      ++*(v36 + 16);
      v3 = v35;
      v11 = v38;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    v2 = v34;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10003FB14(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10003F674(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1000400CC();
        goto LABEL_85;
      }

      sub_100040254(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1000645B4();
    sub_10005DCAC();
    result = sub_1000645E4();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      v46 = *v5;
      v12 = *(v5 + 8);
      v13 = *(v5 + 9);
      v45 = *(v5 + 11);
      do
      {
        v14 = (*(v8 + 48) + 48 * a2);
        v16 = v14[1];
        v15 = v14[2];
        v48 = *v14;
        v49 = v16;
        v50 = v15;
        if (BYTE8(v48))
        {
          if (!v12)
          {
            goto LABEL_11;
          }
        }

        else
        {
          if (v48 == v46)
          {
            v17 = v12;
          }

          else
          {
            v17 = 1;
          }

          if (v17)
          {
            goto LABEL_11;
          }
        }

        if (BYTE9(v48))
        {
          if (BYTE9(v48) == 1)
          {
            v18 = 0x746365526B636F6CLL;
          }

          else
          {
            v18 = 1701670760;
          }

          if (BYTE9(v48) == 1)
          {
            v19 = 0xEF72616C75676E61;
          }

          else
          {
            v19 = 0xE400000000000000;
          }

          if (v13)
          {
LABEL_27:
            if (v13 == 1)
            {
              v20 = 0x746365526B636F6CLL;
            }

            else
            {
              v20 = 1701670760;
            }

            if (v13 == 1)
            {
              v21 = 0xEF72616C75676E61;
            }

            else
            {
              v21 = 0xE400000000000000;
            }

            if (v18 != v20)
            {
              goto LABEL_39;
            }

            goto LABEL_37;
          }
        }

        else
        {
          v18 = 0x696C6E496B636F6CLL;
          v19 = 0xEA0000000000656ELL;
          if (v13)
          {
            goto LABEL_27;
          }
        }

        v21 = 0xEA0000000000656ELL;
        if (v18 != 0x696C6E496B636F6CLL)
        {
          goto LABEL_39;
        }

LABEL_37:
        if (v19 == v21)
        {
          sub_10000B264(&v48, v47);

          goto LABEL_40;
        }

LABEL_39:
        v22 = sub_100064594();
        sub_10000B264(&v48, v47);

        if ((v22 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_40:
        v23 = 0xE900000000000079;
        if (BYTE10(v48))
        {
          if (BYTE10(v48) == 1)
          {
            v24 = 0x6557664F656D6974;
          }

          else
          {
            v24 = 0x656D6974796E61;
          }

          if (BYTE10(v48) == 1)
          {
            v25 = 0xEA00000000006B65;
          }

          else
          {
            v25 = 0xE700000000000000;
          }

          v26 = *(v5 + 10);
          if (*(v5 + 10))
          {
LABEL_48:
            if (v26 == 1)
            {
              v27 = 0x6557664F656D6974;
            }

            else
            {
              v27 = 0x656D6974796E61;
            }

            if (v26 == 1)
            {
              v23 = 0xEA00000000006B65;
            }

            else
            {
              v23 = 0xE700000000000000;
            }

            if (v24 != v27)
            {
              goto LABEL_60;
            }

            goto LABEL_58;
          }
        }

        else
        {
          v24 = 0x6144664F656D6974;
          v25 = 0xE900000000000079;
          v26 = *(v5 + 10);
          if (*(v5 + 10))
          {
            goto LABEL_48;
          }
        }

        if (v24 != 0x6144664F656D6974)
        {
          goto LABEL_60;
        }

LABEL_58:
        if (v25 == v23)
        {

          goto LABEL_61;
        }

LABEL_60:
        v28 = sub_100064594();

        if ((v28 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_61:
        if (BYTE11(v48) > 1u)
        {
          if (BYTE11(v48) == 2)
          {
            v29 = 0xD000000000000010;
            v30 = 0x800000010006B460;
            goto LABEL_68;
          }

          v29 = 0x446C616963657073;
          v31 = 7567713;
        }

        else
        {
          v29 = 0x616568416B6F6F6CLL;
          v30 = 0xE900000000000064;
          if (!BYTE11(v48))
          {
            goto LABEL_68;
          }

          v29 = 0x6D6F4D6568546E69;
          v31 = 7630437;
        }

        v30 = v31 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_68:
        if (v45 > 1)
        {
          if (v45 == 2)
          {
            v32 = 0xD000000000000010;
            v33 = 0x800000010006B460;
LABEL_73:
            if (v29 != v32)
            {
              goto LABEL_79;
            }

            goto LABEL_77;
          }

          v34 = 0x446C616963657073;
          v35 = 7567713;
        }

        else
        {
          v32 = 0x616568416B6F6F6CLL;
          v33 = 0xE900000000000064;
          if (!v45)
          {
            goto LABEL_73;
          }

          v34 = 0x6D6F4D6568546E69;
          v35 = 7630437;
        }

        v33 = v35 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v29 != v34)
        {
          goto LABEL_79;
        }

LABEL_77:
        if (v30 == v33)
        {

          goto LABEL_80;
        }

LABEL_79:
        v36 = sub_100064594();

        if ((v36 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_80:
        if (v49 != *(v5 + 16) && (sub_100064594() & 1) == 0)
        {
LABEL_10:
          result = sub_1000480AC(&v48);
          goto LABEL_11;
        }

        if (v50 == *(v5 + 32))
        {
          goto LABEL_88;
        }

        v37 = sub_100064594();
        result = sub_1000480AC(&v48);
        if (v37)
        {
          goto LABEL_89;
        }

LABEL_11:
        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_85:
  v38 = *v44;
  *(*v44 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v39 = (*(v38 + 48) + 48 * a2);
  v40 = *(v5 + 16);
  *v39 = *v5;
  v39[1] = v40;
  v39[2] = *(v5 + 32);
  v41 = *(v38 + 16);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
LABEL_88:
    sub_1000480AC(&v48);
LABEL_89:
    result = sub_1000645A4();
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v43;
  }

  return result;
}

void *sub_1000400CC()
{
  v1 = v0;
  sub_1000021D4(&qword_1000864D8, &qword_100069A08);
  v2 = *v0;
  v3 = sub_1000643F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v25[0] = *v18;
        v25[1] = v20;
        v25[2] = v19;
        v21 = (*(v4 + 48) + v17);
        v22 = *v18;
        v23 = v18[2];
        v21[1] = v18[1];
        v21[2] = v23;
        *v21 = v22;
        result = sub_10000B264(v25, &v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100040254(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000021D4(&qword_1000864D8, &qword_100069A08);
  result = sub_100064404();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v32 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v20 = (*(v3 + 48) + 48 * (v17 | (v7 << 6)));
      v21 = v20[1];
      v22 = v20[2];
      v34 = *v20;
      v35 = v21;
      v36 = v22;
      v23 = *(v6 + 40);
      sub_1000645B4();
      if (BYTE8(v34) == 1)
      {
        sub_1000645D4(0);
      }

      else
      {
        v24 = v34;
        sub_1000645D4(1u);
        sub_1000645C4(v24);
      }

      sub_10000B264(&v34, v33);
      sub_1000642C4();

      sub_1000642C4();

      sub_1000642C4();

      sub_1000642C4();
      sub_1000642C4();
      result = sub_1000645E4();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 48 * v13);
      v15 = v34;
      v16 = v36;
      v14[1] = v35;
      v14[2] = v16;
      *v14 = v15;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v32;
        goto LABEL_31;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10004068C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v33 = a4;
  v24 = result;
  v25 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 48 * v15);
    v18 = v16[1];
    v17 = v16[2];
    v32[0] = *v16;
    v32[1] = v18;
    v32[2] = v17;
    v19 = v16[1];
    v29 = *v16;
    v30 = v19;
    v31 = v16[2];
    sub_10000B264(v32, &v26);
    v20 = v33(&v29);
    if (v4)
    {
      v26 = v29;
      v27 = v30;
      v28 = v31;
      return sub_1000480AC(&v26);
    }

    v21 = v20;
    v26 = v29;
    v27 = v30;
    v28 = v31;
    result = sub_1000480AC(&v26);
    if (v21)
    {
      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_100040988(v24, a2, v25, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_10004084C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10000B264(a4, &v9);
    v8 = sub_1000462C8(v7, a2, a3, a4);

    sub_1000480AC(a4);
    sub_1000480AC(a4);
    return v8;
  }

  return result;
}

void *sub_1000408F8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10004068C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100040988(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000021D4(&qword_1000864D8, &qword_100069A08);
  result = sub_100064414();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = (*(a4 + 48) + 48 * (v13 | (v11 << 6)));
    v17 = v16[1];
    v18 = v16[2];
    v34 = *v16;
    v35 = v17;
    v36 = v18;
    v19 = *(v6 + 40);
    sub_1000645B4();
    if (BYTE8(v34) == 1)
    {
      sub_1000645D4(0);
    }

    else
    {
      v20 = v34;
      sub_1000645D4(1u);
      sub_1000645C4(v20);
    }

    sub_10000B264(&v34, v33);
    sub_1000642C4();

    sub_1000642C4();

    sub_1000642C4();

    sub_1000642C4();
    sub_1000642C4();
    result = sub_1000645E4();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 48 * v24);
    v30 = v34;
    v31 = v36;
    v29[1] = v35;
    v29[2] = v31;
    *v29 = v30;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    if (!v5)
    {
LABEL_31:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_31;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_100040DB8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100040E44(char *a1, int64_t a2, char a3)
{
  result = sub_100040E84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100040E64(size_t a1, int64_t a2, char a3)
{
  result = sub_100040FA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100040E84(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021D4(&qword_100084E68, &unk_100069A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100040FA4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000021D4(&qword_100086508, &qword_100069A38);
  v10 = *(sub_1000021D4(&qword_1000864B8, &qword_1000699F0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000021D4(&qword_1000864B8, &qword_1000699F0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_100041194(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v25 = *a1;
  v26 = v4;
  v27 = *(a1 + 32);
  v5 = 0uLL;
  if ((*(a1 + 48) & 1) == 0)
  {
    if (v27 == sub_1000635B4() && *(&v27 + 1) == v11)
    {
    }

    else
    {
      v13 = sub_100064594();

      if ((v13 & 1) == 0)
      {
        sub_10003E000(a2, &v21);
        v7 = v23;
        if (v23)
        {
          v8 = v24;
          v6 = v22;
          v5 = v21;
          goto LABEL_12;
        }

        if (qword_1000849B0 != -1)
        {
          swift_once();
        }

        v14 = sub_100063704();
        sub_1000049B4(v14, qword_100086400);
        sub_100048204(a1, v20);
        v15 = sub_1000636E4();
        v16 = sub_100064374();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = v17;
          *v17 = 134217984;
          v19 = v25;
          if (BYTE8(v25))
          {
            v19 = -1;
          }

          *(v17 + 4) = v19;
          sub_100048260(a1);
          _os_log_impl(&_mh_execute_header, v15, v16, "providePersistedPrompts: Failed to find localized counterpart for prompt with key, %ld.", v18, 0xCu);
        }

        else
        {
          sub_100048260(a1);
        }
      }
    }

    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
    v5 = 0uLL;
    goto LABEL_12;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0uLL;
LABEL_12:
  *a3 = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 48) = 0;
}

void *sub_100041388(char *a1, uint64_t a2)
{
  v338 = sub_1000021D4(&qword_1000864B0, &unk_10006A390);
  v4 = *(*(v338 - 8) + 64);
  v5 = __chkstk_darwin(v338);
  v337 = &v294 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v336 = &v294 - v7;
  v8 = sub_1000021D4(&qword_1000864F0, &qword_100069A18);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v335 = &v294 - v10;
  v11 = sub_1000021D4(&qword_1000864F8, &unk_100069A20);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v332 = &v294 - v13;
  v14 = sub_100063364();
  v333 = *(v14 - 8);
  v334 = v14;
  v15 = *(v333 + 64);
  __chkstk_darwin(v14);
  v331 = &v294 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000021D4(&qword_100084E50, &qword_100065B70);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v302 = &v294 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v310 = &v294 - v22;
  v23 = __chkstk_darwin(v21);
  v318 = &v294 - v24;
  __chkstk_darwin(v23);
  v323 = &v294 - v25;
  v26 = sub_1000021D4(&qword_1000864C0, &qword_1000699F8);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v306 = &v294 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v314 = &v294 - v31;
  v32 = __chkstk_darwin(v30);
  v321 = &v294 - v33;
  __chkstk_darwin(v32);
  v327 = &v294 - v34;
  v345 = sub_1000021D4(&qword_1000864B8, &qword_1000699F0);
  v330 = *(v345 - 8);
  v35 = *(v330 + 64);
  v36 = __chkstk_darwin(v345);
  v307 = &v294 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v305 = &v294 - v39;
  v40 = __chkstk_darwin(v38);
  v315 = &v294 - v41;
  v42 = __chkstk_darwin(v40);
  v313 = &v294 - v43;
  v44 = __chkstk_darwin(v42);
  v322 = &v294 - v45;
  v46 = __chkstk_darwin(v44);
  v320 = &v294 - v47;
  __chkstk_darwin(v46);
  v326 = &v294 - v48;
  v49 = sub_100063644();
  v342 = *(v49 - 8);
  v343 = v49;
  v50 = *(v342 + 64);
  __chkstk_darwin(v49);
  v344 = &v294 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100063574();
  v346 = *(v52 - 8);
  v347 = v52;
  v53 = *(v346 + 8);
  v54 = __chkstk_darwin(v52);
  v328 = &v294 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v301 = &v294 - v57;
  v58 = __chkstk_darwin(v56);
  v303 = &v294 - v59;
  v60 = __chkstk_darwin(v58);
  v308 = &v294 - v61;
  v62 = __chkstk_darwin(v60);
  v304 = &v294 - v63;
  v64 = __chkstk_darwin(v62);
  v309 = &v294 - v65;
  v66 = __chkstk_darwin(v64);
  v319 = &v294 - v67;
  v68 = __chkstk_darwin(v66);
  v311 = &v294 - v69;
  v70 = __chkstk_darwin(v68);
  v317 = &v294 - v71;
  v72 = __chkstk_darwin(v70);
  v325 = &v294 - v73;
  v74 = __chkstk_darwin(v72);
  v316 = &v294 - v75;
  v76 = __chkstk_darwin(v74);
  v324 = &v294 - v77;
  v78 = __chkstk_darwin(v76);
  v340 = &v294 - v79;
  v80 = __chkstk_darwin(v78);
  v341 = (&v294 - v81);
  v82 = __chkstk_darwin(v80);
  v339 = &v294 - v83;
  __chkstk_darwin(v82);
  v85 = &v294 - v84;
  v86 = sub_100063634();
  v87 = *(v86 - 8);
  v88 = *(v87 + 64);
  __chkstk_darwin(v86);
  v90 = &v294 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1000021D4(&qword_100086500, &qword_100069A30);
  v92 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91 - 8);
  v94 = &v294 - v93;
  v95 = sub_1000632B4();
  v96 = *(v95 - 8);
  v97 = *(v96 + 64);
  __chkstk_darwin(v95);
  v99 = &v294 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v87 + 104))(v90, enum case for Calendar.Component.day(_:), v86);
  v329 = a1;
  sub_1000635F4();
  v100 = v90;
  v101 = v346;
  (*(v87 + 8))(v100, v86);
  if ((*(v96 + 48))(v94, 1, v95) == 1)
  {
    v102 = v347;
    sub_10000494C(v94, &qword_100086500, &qword_100069A30);
    if (qword_1000849B0 != -1)
    {
      swift_once();
    }

    v103 = sub_100063704();
    sub_1000049B4(v103, qword_100086400);
    v104 = v346;
    v105 = v328;
    (*(v346 + 2))(v328, a2, v102);
    v106 = sub_1000636E4();
    v107 = sub_100064374();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v348 = v109;
      *v108 = 136315138;
      sub_1000483C8(&qword_1000864E0);
      v110 = sub_100064584();
      v112 = v111;
      v104[1](v105, v102);
      v113 = sub_10003EB20(v110, v112, &v348);

      *(v108 + 4) = v113;
      _os_log_impl(&_mh_execute_header, v106, v107, "calculateTimeOfDayRanges: Failed to calculate day interval for %s.", v108, 0xCu);
      sub_1000226EC(v109);
    }

    else
    {

      v104[1](v105, v102);
    }

    return &_swiftEmptyArrayStorage;
  }

  v299 = v96;
  v114 = *(v96 + 32);
  v300 = v95;
  v114(v99, v94, v95);
  v115 = v85;
  sub_1000632A4();
  v116 = v339;
  v298 = v99;
  sub_100063294();
  v117 = *(v101 + 2);
  v118 = v347;
  (v117)(v341, v85, v347);
  v119 = v340;
  (v117)(v340, v116, v118);
  v121 = v342;
  v120 = v343;
  (*(v342 + 16))(v344, v329, v343);
  v297 = sub_1000483C8(&qword_100085458);
  v122 = sub_100064274();
  v123 = v346;
  v328 = v101 + 16;
  v329 = v117;
  v312 = v85;
  if ((v122 & 1) == 0)
  {
    v145 = v324;
    (v117)(v324, v119, v347);
    v127 = v123;
LABEL_14:
    v146 = *(v345 + 48);
    sub_1000483C8(&qword_1000864D0);
    if ((sub_100064264() & 1) == 0)
    {
      __break(1u);
      goto LABEL_67;
    }

    v324 = v146;
    v147 = v336;
    v148 = v347;
    (v117)(v336, v115, v347);
    v149 = v338;
    v150 = v127[4];
    v150((v147 + *(v338 + 48)), v145, v148);
    v151 = v148;
    v152 = v337;
    sub_100016718(v147, v337, &qword_1000864B0, &unk_10006A390);
    v153 = *(v149 + 48);
    v154 = v327;
    v150(v327, v152, v151);
    v143 = v127[1];
    (v143)(v152 + v153, v151);
    sub_100015F0C(v147, v152, &qword_1000864B0, &unk_10006A390);
    v155 = *(v149 + 48);
    v156 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
    v150((v154 + *(v156 + 36)), v152 + v155, v151);
    v157 = v154;
    v115 = v312;
    (v143)(v152, v151);
    v158 = 0;
    v324[v154] = 2;
    goto LABEL_18;
  }

  (*(v121 + 56))(v332, 1, 1, v120);
  v124 = sub_100063664();
  (*(*(v124 - 8) + 56))(v335, 1, 1, v124);
  v125 = v331;
  sub_100063354();
  v126 = v323;
  sub_100063614();
  (*(v333 + 8))(v125, v334);
  v127 = v123;
  if ((v123[6])(v126, 1, v347) != 1)
  {
    v145 = v324;
    v123[4](v324, v126, v347);
    v117 = v329;
    goto LABEL_14;
  }

  sub_10000494C(v126, &qword_100084E50, &qword_100065B70);
  v123 = v329;
  if (qword_1000849B0 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v128 = sub_100063704();
    sub_1000049B4(v128, qword_100086400);
    v129 = v316;
    (v123)(v316, v115, v347);
    v130 = sub_1000636E4();
    v131 = sub_100064374();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v134 = v347;
      v135 = v115;
      v136 = v127;
      v137 = v133;
      v348 = v133;
      *v132 = 136315138;
      sub_1000483C8(&qword_1000864E0);
      v138 = sub_100064584();
      v140 = v139;
      v141 = v136;
      v142 = v135;
      v143 = v141[1];
      (v143)(v129, v134);
      v144 = sub_10003EB20(v138, v140, &v348);

      *(v132 + 4) = v144;
      _os_log_impl(&_mh_execute_header, v130, v131, "calculateTimeOfDayRanges: Failed to calculate range end using %s.", v132, 0xCu);
      sub_1000226EC(v137);
      v115 = v142;
    }

    else
    {

      v143 = v127[1];
      (v143)(v129, v347);
    }

    v158 = 1;
    v157 = v327;
LABEL_18:
    v159 = v330;
    v160 = (v330 + 56);
    v161 = *(v330 + 56);
    v162 = v345;
    v161(v157, v158, 1, v345);
    v165 = *(v159 + 48);
    v164 = v159 + 48;
    v163 = v165;
    if (v165(v157, 1, v162) == 1)
    {
      (*(v342 + 8))(v344, v343);
      v166 = v347;
      (v143)(v340, v347);
      (v143)(v341, v166);
      v167 = v298;
      goto LABEL_50;
    }

    v295 = v163;
    v296 = v164;
    v316 = v161;
    v323 = v160;
    v168 = v326;
    sub_100015F0C(v157, v326, &qword_1000864B8, &qword_1000699F0);
    v169 = v322;
    sub_100016718(v168, v322, &qword_1000864B8, &qword_1000699F0);
    v324 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
    v170 = v325;
    (v329)(v325, &v169[*(v324 + 9)], v347);
    sub_10000494C(v169, &qword_100084E60, &unk_100065B80);
    v322 = "a";
    v171 = sub_100064594();
    v115 = v346;
    v127 = v341;
    v327 = v143;
    if (v171 & 1) == 0 || (sub_100064274())
    {
      break;
    }

    v123 = v317;
    (v329)(v317, v340, v347);
LABEL_29:
    v318 = *(v345 + 48);
    sub_1000483C8(&qword_1000864D0);
    if (sub_100064264())
    {
      v187 = *(v115 + 4);
      v188 = v336;
      v189 = v347;
      v187(v336, v170, v347);
      v190 = v338;
      v187((v188 + *(v338 + 48)), v123, v189);
      v191 = v337;
      sub_100016718(v188, v337, &qword_1000864B0, &unk_10006A390);
      v192 = *(v190 + 48);
      v193 = v321;
      v187(v321, v191, v189);
      v194 = v191 + v192;
      v143 = v327;
      (v327)(v194, v189);
      sub_100015F0C(v188, v191, &qword_1000864B0, &unk_10006A390);
      v187((v193 + *(v324 + 9)), (v191 + *(v190 + 48)), v189);
      (v143)(v191, v189);
      v195 = 0;
      *(v193 + v318) = 0;
      v127 = v341;
      v196 = v316;
      v197 = v295;
      goto LABEL_33;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

  (*(v342 + 56))(v332, 1, 1, v343);
  v172 = sub_100063664();
  (*(*(v172 - 8) + 56))(v335, 1, 1, v172);
  v173 = v331;
  sub_100063354();
  v174 = v318;
  sub_100063614();
  (*(v333 + 8))(v173, v334);
  if ((*(v115 + 6))(v174, 1, v347) != 1)
  {
    v123 = v317;
    (*(v115 + 4))(v317, v174, v347);
    v170 = v325;
    goto LABEL_29;
  }

  sub_10000494C(v174, &qword_100084E50, &qword_100065B70);
  if (qword_1000849B0 != -1)
  {
    swift_once();
  }

  v175 = sub_100063704();
  sub_1000049B4(v175, qword_100086400);
  v176 = v311;
  v177 = v325;
  (v329)(v311, v325, v347);
  v178 = sub_1000636E4();
  v179 = sub_100064374();
  if (os_log_type_enabled(v178, v179))
  {
    v180 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v348 = v181;
    *v180 = 136315138;
    sub_1000483C8(&qword_1000864E0);
    v182 = v347;
    v183 = sub_100064584();
    v185 = v184;
    (v327)(v176, v182);
    v186 = sub_10003EB20(v183, v185, &v348);
    v143 = v327;

    *(v180 + 4) = v186;
    _os_log_impl(&_mh_execute_header, v178, v179, "calculateTimeOfDayRanges: Failed to calculate range end using %s.", v180, 0xCu);
    sub_1000226EC(v181);

    (v143)(v325, v182);
  }

  else
  {

    v198 = v347;
    (v143)(v176, v347);
    (v143)(v177, v198);
  }

  v195 = 1;
  v196 = v316;
  v197 = v295;
  v193 = v321;
LABEL_33:
  v199 = v345;
  v196(v193, v195, 1, v345);
  v200 = v197(v193, 1, v199);
  v201 = v344;
  if (v200 == 1)
  {
    sub_10000494C(v326, &qword_1000864B8, &qword_1000699F0);
    (*(v342 + 8))(v201, v343);
    v202 = v347;
    (v143)(v340, v347);
    (v143)(v127, v202);
    v157 = v193;
    goto LABEL_49;
  }

  v203 = v193;
  v204 = v320;
  sub_100015F0C(v203, v320, &qword_1000864B8, &qword_1000699F0);
  v205 = v315;
  sub_100016718(v204, v315, &qword_1000864B8, &qword_1000699F0);
  v206 = v319;
  (v329)(v319, v205 + *(v324 + 9), v347);
  sub_10000494C(v205, &qword_100084E60, &unk_100065B80);
  v207 = sub_100064594();
  v208 = v346;
  if ((v207 & 1) != 0 && (sub_100064274() & 1) == 0)
  {
    v143 = v309;
    (v329)(v309, v340, v347);
  }

  else
  {
    (*(v342 + 56))(v332, 1, 1, v343);
    v209 = sub_100063664();
    (*(*(v209 - 8) + 56))(v335, 1, 1, v209);
    v210 = v331;
    v206 = v319;
    sub_100063354();
    v211 = v310;
    sub_100063614();
    (*(v333 + 8))(v210, v334);
    if (v208[6](v211, 1, v347) == 1)
    {
      sub_10000494C(v211, &qword_100084E50, &qword_100065B70);
      if (qword_1000849B0 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_70;
    }

    v143 = v309;
    v208[4](v309, v211, v347);
  }

  v325 = *(v345 + 48);
  sub_1000483C8(&qword_1000864D0);
  if (sub_100064264())
  {
    v223 = v208[4];
    v224 = v336;
    v225 = v206;
    v226 = v347;
    v223(v336, v225, v347);
    v227 = v338;
    v223(v224 + *(v338 + 48), v143, v226);
    v228 = v337;
    sub_100016718(v224, v337, &qword_1000864B0, &unk_10006A390);
    v229 = *(v227 + 48);
    v230 = v314;
    v223(v314, v228, v226);
    v231 = v228 + v229;
    v143 = v327;
    (v327)(v231, v226);
    sub_100015F0C(v224, v228, &qword_1000864B0, &unk_10006A390);
    v232 = v230;
    v223(v230 + *(v324 + 9), v228 + *(v227 + 48), v226);
    (v143)(v228, v226);
    v233 = 0;
    v325[v230] = 1;
    v127 = v341;
  }

  else
  {
    __break(1u);
LABEL_70:
    swift_once();
LABEL_39:
    v212 = sub_100063704();
    sub_1000049B4(v212, qword_100086400);
    v213 = v304;
    (v329)(v304, v206, v347);
    v214 = sub_1000636E4();
    v215 = sub_100064374();
    if (os_log_type_enabled(v214, v215))
    {
      v216 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v348 = v217;
      *v216 = 136315138;
      sub_1000483C8(&qword_1000864E0);
      v218 = v347;
      v219 = sub_100064584();
      v221 = v220;
      (v327)(v213, v218);
      v222 = sub_10003EB20(v219, v221, &v348);
      v143 = v327;

      *(v216 + 4) = v222;
      _os_log_impl(&_mh_execute_header, v214, v215, "calculateTimeOfDayRanges: Failed to calculate range end using %s.", v216, 0xCu);
      sub_1000226EC(v217);

      (v143)(v319, v218);
    }

    else
    {

      v234 = v347;
      (v143)(v213, v347);
      (v143)(v206, v234);
    }

    v233 = 1;
    v232 = v314;
  }

  v235 = v295;
  v236 = v345;
  (v316)(v232, v233, 1, v345);
  v237 = v235(v232, 1, v236);
  v238 = v344;
  if (v237 == 1)
  {
    sub_10000494C(v320, &qword_1000864B8, &qword_1000699F0);
    sub_10000494C(v326, &qword_1000864B8, &qword_1000699F0);
    (*(v342 + 8))(v238, v343);
    v239 = v347;
    (v143)(v340, v347);
    (v143)(v127, v239);
    v157 = v232;
LABEL_49:
    v167 = v298;
    v115 = v312;
LABEL_50:
    sub_10000494C(v157, &qword_1000864C0, &qword_1000699F8);
    v240 = v347;
    (v143)(v339, v347);
    (v143)(v115, v240);
    (*(v299 + 8))(v167, v300);
    return &_swiftEmptyArrayStorage;
  }

  v242 = v313;
  sub_100015F0C(v232, v313, &qword_1000864B8, &qword_1000699F0);
  v243 = v307;
  sub_100016718(v242, v307, &qword_1000864B8, &qword_1000699F0);
  v244 = v308;
  v245 = v329;
  (v329)(v308, v243 + *(v324 + 9), v347);
  sub_10000494C(v243, &qword_100084E60, &unk_100065B80);
  v246 = sub_100064274();
  v247 = v346;
  if (v246)
  {
    (*(v342 + 56))(v332, 1, 1, v343);
    v248 = sub_100063664();
    (*(*(v248 - 8) + 56))(v335, 1, 1, v248);
    v249 = v331;
    sub_100063354();
    v250 = v302;
    sub_100063614();
    (*(v333 + 8))(v249, v334);
    if (v247[6](v250, 1, v347) == 1)
    {
      sub_10000494C(v250, &qword_100084E50, &qword_100065B70);
      if (qword_1000849B0 == -1)
      {
        goto LABEL_55;
      }

      goto LABEL_72;
    }

    v266 = v303;
    v247[4](v303, v250, v347);
    v267 = v340;
  }

  else
  {
    v266 = v303;
    v267 = v340;
    (v245)(v303, v340, v347);
  }

  v268 = v342;
  v342 = *(v345 + 48);
  sub_1000483C8(&qword_1000864D0);
  v269 = v347;
  v270 = sub_100064264();
  (*(v268 + 8))(v238, v343);
  v271 = v267;
  v272 = v327;
  (v327)(v271, v269);
  v272(v127, v269);
  if (v270)
  {
    v273 = v247[4];
    v274 = v336;
    v275 = v347;
    v273(v336, v244, v347);
    v276 = v338;
    v273(v274 + *(v338 + 48), v266, v275);
    v277 = v337;
    sub_100016718(v274, v337, &qword_1000864B0, &unk_10006A390);
    v278 = *(v276 + 48);
    v279 = v306;
    v273(v306, v277, v275);
    v272((v277 + v278), v275);
    sub_100015F0C(v274, v277, &qword_1000864B0, &unk_10006A390);
    v273(v279 + *(v324 + 9), v277 + *(v276 + 48), v275);
    v272(v277, v275);
    v280 = 0;
    *(v279 + v342) = 2;
  }

  else
  {
    __break(1u);
LABEL_72:
    swift_once();
LABEL_55:
    v251 = sub_100063704();
    sub_1000049B4(v251, qword_100086400);
    v252 = v301;
    (v329)(v301, v244, v347);
    v253 = sub_1000636E4();
    v254 = sub_100064374();
    if (os_log_type_enabled(v253, v254))
    {
      v255 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      v257 = v342;
      v258 = v256;
      v348 = v256;
      *v255 = 136315138;
      sub_1000483C8(&qword_1000864E0);
      v259 = v347;
      v260 = sub_100064584();
      v262 = v261;
      v263 = v252;
      v264 = v327;
      (v327)(v263, v259);
      v265 = sub_10003EB20(v260, v262, &v348);

      *(v255 + 4) = v265;
      _os_log_impl(&_mh_execute_header, v253, v254, "calculateTimeOfDayRanges: Failed to calculate range end using %s.", v255, 0xCu);
      sub_1000226EC(v258);

      v264(v308, v259);
      (*(v257 + 8))(v344, v343);
      v264(v340, v259);
      v264(v341, v259);
    }

    else
    {

      v281 = v252;
      v282 = v347;
      v283 = v327;
      (v327)(v281, v347);
      v283(v244, v282);
      (*(v342 + 8))(v344, v343);
      v283(v340, v282);
      v283(v127, v282);
    }

    v280 = 1;
    v279 = v306;
  }

  v284 = v345;
  (v316)(v279, v280, 1, v345);
  if (v295(v279, 1, v284) == 1)
  {
    sub_10000494C(v313, &qword_1000864B8, &qword_1000699F0);
    sub_10000494C(v320, &qword_1000864B8, &qword_1000699F0);
    sub_10000494C(v326, &qword_1000864B8, &qword_1000699F0);
    v157 = v279;
    v115 = v312;
    v167 = v298;
    v143 = v327;
    goto LABEL_50;
  }

  sub_100015F0C(v279, v305, &qword_1000864B8, &qword_1000699F0);
  sub_1000021D4(&qword_100086508, &qword_100069A38);
  v285 = *(v330 + 72);
  v286 = (*(v330 + 80) + 32) & ~*(v330 + 80);
  v287 = swift_allocObject();
  *(v287 + 16) = xmmword_100066C60;
  v288 = v287 + v286;
  v289 = v326;
  sub_100016718(v326, v288, &qword_1000864B8, &qword_1000699F0);
  v290 = v347;
  v291 = v320;
  sub_100016718(v320, v288 + v285, &qword_1000864B8, &qword_1000699F0);
  v292 = v313;
  sub_100016718(v313, v288 + 2 * v285, &qword_1000864B8, &qword_1000699F0);
  sub_100015F0C(v305, v288 + 3 * v285, &qword_1000864B8, &qword_1000699F0);
  sub_10000494C(v292, &qword_1000864B8, &qword_1000699F0);
  sub_10000494C(v291, &qword_1000864B8, &qword_1000699F0);
  sub_10000494C(v289, &qword_1000864B8, &qword_1000699F0);
  v293 = v327;
  (v327)(v339, v290);
  v293(v312, v290);
  (*(v299 + 8))(v298, v300);
  return v287;
}

uint64_t sub_100043DB8(uint64_t a1, uint64_t a2)
{
  v195 = sub_1000021D4(&qword_1000864B0, &unk_10006A390);
  v4 = *(*(v195 - 8) + 64);
  v5 = __chkstk_darwin(v195);
  v194 = &v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v193 = &v186 - v7;
  v8 = sub_1000021D4(&qword_1000864F0, &qword_100069A18);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v210 = &v186 - v10;
  v11 = sub_1000021D4(&qword_1000864F8, &unk_100069A20);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v208 = &v186 - v13;
  v209 = sub_100063364();
  v213 = *(v209 - 8);
  v14 = *(v213 + 64);
  __chkstk_darwin(v209);
  v207 = &v186 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000021D4(&qword_100084E50, &qword_100065B70);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v203 = (&v186 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v205 = &v186 - v20;
  v212 = sub_100063574();
  v215 = *(v212 - 8);
  v21 = *(v215 + 64);
  v22 = __chkstk_darwin(v212);
  v204 = &v186 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v202 = &v186 - v25;
  v26 = __chkstk_darwin(v24);
  v198 = &v186 - v27;
  v28 = __chkstk_darwin(v26);
  v200 = &v186 - v29;
  v30 = __chkstk_darwin(v28);
  v199 = &v186 - v31;
  v32 = __chkstk_darwin(v30);
  v197 = &v186 - v33;
  v34 = __chkstk_darwin(v32);
  v196 = &v186 - v35;
  v36 = __chkstk_darwin(v34);
  v201 = &v186 - v37;
  v38 = __chkstk_darwin(v36);
  v206 = &v186 - v39;
  v40 = __chkstk_darwin(v38);
  v214 = &v186 - v41;
  __chkstk_darwin(v40);
  v43 = &v186 - v42;
  v44 = sub_100063634();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v48 = &v186 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000021D4(&qword_100086500, &qword_100069A30);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v52 = &v186 - v51;
  v53 = sub_1000632B4();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  __chkstk_darwin(v53);
  v57 = &v186 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 104))(v48, enum case for Calendar.Component.weekOfYear(_:), v44);
  v211 = a1;
  sub_1000635F4();
  (*(v45 + 8))(v48, v44);
  if ((*(v54 + 48))(v52, 1, v53) == 1)
  {
    v58 = v212;
    v59 = v215;
    sub_10000494C(v52, &qword_100086500, &qword_100069A30);
    if (qword_1000849B0 != -1)
    {
      swift_once();
    }

    v60 = sub_100063704();
    sub_1000049B4(v60, qword_100086400);
    v61 = v59;
    v62 = v204;
    (*(v59 + 16))(v204, a2, v58);
    v63 = sub_1000636E4();
    v64 = sub_100064374();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v216[0] = v66;
      *v65 = 136315138;
      sub_1000483C8(&qword_1000864E0);
      v67 = sub_100064584();
      v69 = v68;
      (*(v61 + 8))(v62, v58);
      v70 = sub_10003EB20(v67, v69, v216);

      *(v65 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v63, v64, "calculateTimeOfWeekRanges: Failed to calculate week interval from %s.", v65, 0xCu);
      sub_1000226EC(v66);
    }

    else
    {

      (*(v59 + 8))(v62, v58);
    }

    return &_swiftEmptyArrayStorage;
  }

  v191 = v54;
  v71 = *(v54 + 32);
  v192 = v53;
  v71(v57, v52, v53);
  sub_1000632A4();
  v190 = v57;
  sub_100063294();
  v72 = sub_100063644();
  v73 = *(v72 - 8);
  v189 = *(v73 + 56);
  v188 = v73 + 56;
  v189(v208, 1, 1, v72);
  v74 = sub_100063664();
  v187 = *(*(v74 - 8) + 56);
  v187(v210, 1, 1, v74);
  v75 = v207;
  sub_100063354();
  v76 = v205;
  v204 = v43;
  sub_100063614();
  v77 = v212;
  v78 = v213 + 8;
  v79 = *(v213 + 8);
  v79(v75, v209);
  v80 = v215;
  v81 = *(v215 + 48);
  if (v81(v76, 1, v77) == 1)
  {
    sub_10000494C(v76, &qword_100084E50, &qword_100065B70);
    if (qword_1000849B0 != -1)
    {
      swift_once();
    }

    v82 = sub_100063704();
    sub_1000049B4(v82, qword_100086400);
    v83 = v202;
    (*(v80 + 16))(v202, v204, v77);
    v84 = sub_1000636E4();
    v85 = sub_100064374();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v216[0] = v87;
      *v86 = 136315138;
      sub_1000483C8(&qword_1000864E0);
      v88 = sub_100064584();
      v89 = v83;
      v91 = v90;
      v92 = *(v80 + 8);
      v92(v89, v77);
      v93 = sub_10003EB20(v88, v91, v216);

      *(v86 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v84, v85, "calculateTimeOfWeekRanges: Failed to calculate inTheMoment start from %s.", v86, 0xCu);
      sub_1000226EC(v87);
    }

    else
    {

      v92 = *(v80 + 8);
      v92(v83, v77);
    }

    v111 = v214;
    v112 = v192;
    v113 = v191;
    v114 = v190;
LABEL_32:
    v92(v111, v77);
    v92(v204, v77);
LABEL_35:
    (*(v113 + 8))(v114, v112);
    return &_swiftEmptyArrayStorage;
  }

  v95 = *(v80 + 32);
  v94 = v80 + 32;
  v202 = v95;
  (v95)(v206, v76, v77);
  v213 = v78;
  v189(v208, 1, 1, v72);
  v187(v210, 1, 1, v74);
  v96 = v207;
  sub_100063354();
  v97 = v203;
  v98 = v214;
  sub_100063614();
  v79(v96, v209);
  if (v81(v97, 1, v77) == 1)
  {
    sub_10000494C(v97, &qword_100084E50, &qword_100065B70);
    if (qword_1000849B0 != -1)
    {
      swift_once();
    }

    v99 = sub_100063704();
    sub_1000049B4(v99, qword_100086400);
    v100 = v215;
    v101 = v198;
    (*(v215 + 16))(v198, v98, v77);
    v102 = sub_1000636E4();
    v103 = sub_100064374();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v216[0] = v105;
      *v104 = 136315138;
      sub_1000483C8(&qword_1000864E0);
      v106 = sub_100064584();
      v107 = v101;
      v109 = v108;
      v92 = *(v100 + 8);
      v92(v107, v77);
      v110 = sub_10003EB20(v106, v109, v216);

      *(v104 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v102, v103, "calculateTimeOfWeekRanges: Failed to calculate recentPast start from %s.", v104, 0xCu);
      sub_1000226EC(v105);
      v98 = v214;
    }

    else
    {

      v92 = *(v100 + 8);
      v92(v101, v77);
    }

    v112 = v192;
    v113 = v191;
    v114 = v190;
    v92(v206, v77);
    v111 = v98;
    goto LABEL_32;
  }

  v115 = v201;
  (v202)(v201, v97, v77);
  v116 = v204;
  v117 = v206;
  if ((sub_100063554() & 1) == 0 || (v118 = v94, (sub_100063554() & 1) == 0) || (sub_100063554() & 1) == 0)
  {
    v157 = v215;
    if (qword_1000849B0 != -1)
    {
      swift_once();
    }

    v158 = sub_100063704();
    sub_1000049B4(v158, qword_100086400);
    v159 = *(v157 + 16);
    v160 = v196;
    v159(v196, v116, v77);
    v161 = v197;
    v159(v197, v117, v77);
    v159(v199, v115, v77);
    v159(v200, v98, v77);
    v162 = sub_1000636E4();
    v163 = sub_100064374();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v216[0] = v213;
      *v164 = 136315906;
      sub_1000483C8(&qword_1000864E0);
      LODWORD(v211) = v163;
      v165 = sub_100064584();
      v167 = v166;
      v168 = v160;
      v169 = *(v157 + 8);
      v169(v168, v77);
      v170 = sub_10003EB20(v165, v167, v216);

      *(v164 + 4) = v170;
      *(v164 + 12) = 2080;
      v171 = sub_100064584();
      v173 = v172;
      v169(v161, v77);
      v174 = sub_10003EB20(v171, v173, v216);

      *(v164 + 14) = v174;
      *(v164 + 22) = 2080;
      v175 = v199;
      v176 = sub_100064584();
      v178 = v177;
      v169(v175, v77);
      v179 = sub_10003EB20(v176, v178, v216);
      v117 = v206;

      *(v164 + 24) = v179;
      *(v164 + 32) = 2080;
      v180 = v200;
      v181 = sub_100064584();
      v183 = v182;
      v169(v180, v77);
      v184 = sub_10003EB20(v181, v183, v216);
      v115 = v201;

      *(v164 + 34) = v184;
      _os_log_impl(&_mh_execute_header, v162, v211, "calculateTimeOfWeekRanges: Invalid goalposts - %s, %s, %s, %s", v164, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v185 = v160;
      v169 = *(v157 + 8);
      v169(v200, v77);
      v169(v199, v77);
      v169(v161, v77);
      v169(v185, v77);
    }

    v112 = v192;
    v113 = v191;
    v114 = v190;
    v169(v115, v77);
    v169(v117, v77);
    v169(v214, v77);
    v169(v204, v77);
    goto LABEL_35;
  }

  sub_1000021D4(&qword_100086508, &qword_100069A38);
  v119 = sub_1000021D4(&qword_1000864B8, &qword_1000699F0);
  v120 = (*(*(v119 - 8) + 80) + 32) & ~*(*(v119 - 8) + 80);
  v208 = *(*(v119 - 8) + 72);
  v209 = swift_allocObject();
  *(v209 + 16) = xmmword_100066C80;
  v211 = v119;
  v199 = *(v119 + 48);
  v210 = sub_1000483C8(&qword_1000864D0);
  result = sub_100064264();
  v122 = v215;
  if (result)
  {
    v123 = v116;
    v124 = v209 + v120;
    v213 = v209 + v120;
    v125 = *(v215 + 16);
    v126 = v193;
    v125(v193, v123, v77);
    v127 = v195;
    v128 = v126 + *(v195 + 48);
    v205 = (v122 + 16);
    v203 = v125;
    v125(v128, v117, v77);
    v129 = v194;
    sub_100016718(v126, v194, &qword_1000864B0, &unk_10006A390);
    v130 = *(v127 + 48);
    v131 = v124;
    v132 = v202;
    (v202)(v131, v129, v77);
    v133 = *(v122 + 8);
    v134 = v129 + v130;
    v135 = v127;
    v133(v134, v77);
    v136 = v206;
    sub_100015F0C(v126, v129, &qword_1000864B0, &unk_10006A390);
    v137 = *(v135 + 48);
    v200 = sub_1000021D4(&qword_100084E60, &unk_100065B80);
    v138 = v213;
    v139 = v213 + *(v200 + 9);
    v215 = v118;
    (v132)(v139, v129 + v137, v77);
    v207 = v133;
    v133(v129, v77);
    v199[v138] = 0;
    v199 = *(v211 + 48);
    v140 = v201;
    result = sub_100064264();
    if (result)
    {
      v141 = &v208[v213];
      v142 = v203;
      v203(v126, v136, v77);
      v143 = v195;
      v142(v126 + *(v195 + 48), v140, v77);
      sub_100016718(v126, v129, &qword_1000864B0, &unk_10006A390);
      v144 = v143;
      v145 = *(v143 + 48);
      v146 = v202;
      (v202)(v141, v129, v77);
      v147 = v207;
      (v207)(v129 + v145, v77);
      v148 = v77;
      sub_100015F0C(v126, v129, &qword_1000864B0, &unk_10006A390);
      (v146)(&v141[*(v200 + 9)], v129 + *(v144 + 48), v77);
      v149 = v201;
      v147(v129, v77);
      v199[v141] = 1;
      v211 = *(v211 + 48);
      v150 = v214;
      result = sub_100064264();
      if (result)
      {
        v151 = v213 + 2 * v208;
        v152 = v203;
        v203(v126, v149, v148);
        v152(v126 + *(v144 + 48), v150, v148);
        sub_100016718(v126, v129, &qword_1000864B0, &unk_10006A390);
        v153 = *(v144 + 48);
        v154 = v202;
        (v202)(v151, v129, v148);
        v155 = v129 + v153;
        v156 = v207;
        (v207)(v155, v148);
        sub_100015F0C(v126, v129, &qword_1000864B0, &unk_10006A390);
        (v154)(v151 + *(v200 + 9), v129 + *(v144 + 48), v148);
        v156(v129, v148);
        *(v151 + v211) = 2;
        v156(v201, v148);
        v156(v206, v148);
        v156(v150, v148);
        v156(v204, v148);
        (*(v191 + 8))(v190, v192);
        return v209;
      }

      goto LABEL_39;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void *sub_10004561C(uint64_t a1, uint64_t a2, char *a3)
{
  v90 = a1;
  v5 = sub_100063574();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v87 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v83 - v10;
  v12 = sub_1000021D4(&qword_1000864B8, &qword_1000699F0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v83 - v18;
  v20 = sub_100041388(a3, a2);
  v92 = a2;
  v21 = 0;
  v22 = sub_10003E5F0(sub_10004840C, v91, v20);
  v23 = *(v22 + 16);
  v88 = v13;
  if (!v23)
  {

    if (qword_1000849B0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_85;
  }

  sub_100016718(v22 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v19, &qword_1000864B8, &qword_1000699F0);

  LODWORD(v89) = v19[*(v12 + 48)];
  sub_10000494C(v19, &qword_100084E60, &unk_100065B80);
  while (1)
  {
    v38 = sub_100043DB8(a3, a2);
    __chkstk_darwin(v38);
    *(&v83 - 2) = a2;
    v40 = sub_10003E5F0(sub_100048318, (&v83 - 4), v39);
    if (*(v40 + 16))
    {
      sub_100016718(v40 + ((*(v88 + 80) + 32) & ~*(v88 + 80)), v17, &qword_1000864B8, &qword_1000699F0);

      LODWORD(v88) = v17[*(v12 + 48)];
      sub_10000494C(v17, &qword_100084E60, &unk_100065B80);
    }

    else
    {

      if (qword_1000849B0 != -1)
      {
        swift_once();
      }

      v41 = sub_100063704();
      sub_1000049B4(v41, qword_100086400);
      v42 = v87;
      (*(v6 + 16))(v87, a2, v5);
      v43 = sub_1000636E4();
      v44 = v6;
      v45 = sub_100064374();
      if (os_log_type_enabled(v43, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *&v97[0] = v47;
        *v46 = 136315138;
        sub_1000483C8(&qword_1000864E0);
        v48 = sub_100064584();
        v50 = v49;
        v51 = *(v44 + 8);
        v12 = v44 + 8;
        v51(v42, v5);
        v52 = sub_10003EB20(v48, v50, v97);

        *(v46 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v43, v45, "provideHomePrompts: Failed to identify time of week type for %s.", v46, 0xCu);
        sub_1000226EC(v47);
      }

      else
      {

        v53 = *(v44 + 8);
        v12 = v44 + 8;
        v53(v42, v5);
      }

      LODWORD(v88) = 4;
    }

    a2 = v90;
    v95 = &_swiftEmptySetSingleton;
    v96 = &_swiftEmptySetSingleton;
    v17 = (v90 + 56);
    v54 = 1 << *(v90 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v6 = v55 & *(v90 + 56);
    a3 = ((v54 + 63) >> 6);
    v87 = 0x800000010006B460;

    v11 = 0;
    v21 = 48;
    v5 = 0xEA0000000000656ELL;
    if (v6)
    {
LABEL_22:
      while (1)
      {
        v57 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v58 = (*(a2 + 48) + 48 * (v57 | (v11 << 6)));
        v60 = v58[1];
        v59 = v58[2];
        v97[0] = *v58;
        v97[1] = v60;
        v97[2] = v59;
        if (BYTE9(v97[0]))
        {
          if (BYTE9(v97[0]) != 1)
          {
            break;
          }
        }

        v61 = sub_100064594();
        sub_10000B264(v97, v94);

        if (v61)
        {
          v12 = BYTE10(v97[0]);
          if (!BYTE10(v97[0]))
          {
            goto LABEL_29;
          }

LABEL_26:
          if (v12 != 1)
          {

            goto LABEL_35;
          }

LABEL_29:
          v62 = sub_100064594();

          if (v62)
          {
            goto LABEL_35;
          }

          if (v89 != 4)
          {
            if (v12)
            {
              v63 = sub_100064594();

              if ((v63 & 1) == 0)
              {
                goto LABEL_56;
              }
            }

            else
            {
            }

            v64 = 0xE900000000000064;
            if (BYTE11(v97[0]) > 1u)
            {
              if (BYTE11(v97[0]) == 2)
              {
                v65 = 0xD000000000000010;
                v66 = v87;
              }

              else
              {
                v65 = 0x446C616963657073;
                v67 = 7567713;
LABEL_44:
                v66 = v67 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              }
            }

            else
            {
              v65 = 0x616568416B6F6F6CLL;
              v66 = 0xE900000000000064;
              if (BYTE11(v97[0]))
              {
                v65 = 0x6D6F4D6568546E69;
                v67 = 7630437;
                goto LABEL_44;
              }
            }

            if (v89 > 1)
            {
              if (v89 == 2)
              {
                v68 = 0xD000000000000010;
                v64 = v87;
                goto LABEL_50;
              }

              v69 = 0x446C616963657073;
              v70 = 7567713;
LABEL_53:
              v64 = v70 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              if (v65 != v69)
              {
LABEL_55:
                v71 = sub_100064594();

                a2 = v90;
                if (v71)
                {
                  goto LABEL_35;
                }

                goto LABEL_56;
              }
            }

            else
            {
              v68 = 0x616568416B6F6F6CLL;
              if (v89)
              {
                v69 = 0x6D6F4D6568546E69;
                v70 = 7630437;
                goto LABEL_53;
              }

LABEL_50:
              if (v65 != v68)
              {
                goto LABEL_55;
              }
            }

            if (v66 == v64)
            {
              goto LABEL_79;
            }

            goto LABEL_55;
          }

LABEL_56:
          if (v88 == 4)
          {
            goto LABEL_57;
          }

          if (v12)
          {
          }

          else
          {
            v72 = sub_100064594();

            if ((v72 & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          v73 = 0xE900000000000064;
          if (BYTE11(v97[0]) > 1u)
          {
            v76 = v88;
            if (BYTE11(v97[0]) == 2)
            {
              v74 = 0xD000000000000010;
              v75 = v87;
LABEL_68:
              if (v76 <= 1)
              {
                goto LABEL_69;
              }

              goto LABEL_72;
            }

            v74 = 0x446C616963657073;
            v77 = 7567713;
          }

          else
          {
            v74 = 0x616568416B6F6F6CLL;
            v75 = 0xE900000000000064;
            v76 = v88;
            if (!BYTE11(v97[0]))
            {
              goto LABEL_68;
            }

            v74 = 0x6D6F4D6568546E69;
            v77 = 7630437;
          }

          v75 = v77 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v76 <= 1)
          {
LABEL_69:
            v78 = 0x616568416B6F6F6CLL;
            if (!v76)
            {
              goto LABEL_74;
            }

            v79 = 0x6D6F4D6568546E69;
            v80 = 7630437;
            goto LABEL_77;
          }

LABEL_72:
          if (v76 == 2)
          {
            v78 = 0xD000000000000010;
            v73 = v87;
LABEL_74:
            if (v74 == v78)
            {
              goto LABEL_78;
            }

            goto LABEL_81;
          }

          v79 = 0x446C616963657073;
          v80 = 7567713;
LABEL_77:
          v73 = v80 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v74 == v79)
          {
LABEL_78:
            if (v75 == v73)
            {
LABEL_79:

              a2 = v90;
              goto LABEL_35;
            }
          }

LABEL_81:
          v81 = sub_100064594();

          a2 = v90;
          if ((v81 & 1) == 0)
          {
            goto LABEL_57;
          }

LABEL_35:
          sub_10003F0C8(v93, v97);
          v94[0] = v93[0];
          v94[1] = v93[1];
          v94[2] = v93[2];
          sub_1000480AC(v94);
          if (!v6)
          {
            goto LABEL_18;
          }
        }

        else
        {
LABEL_57:
          sub_1000480AC(v97);
          if (!v6)
          {
            goto LABEL_18;
          }
        }
      }

      sub_10000B264(v97, v94);

      v12 = BYTE10(v97[0]);
      if (!BYTE10(v97[0]))
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

LABEL_18:
    v56 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      break;
    }

    __break(1u);
LABEL_85:
    swift_once();
LABEL_4:
    v24 = sub_100063704();
    sub_1000049B4(v24, qword_100086400);
    (*(v6 + 16))(v11, a2, v5);
    v25 = v5;
    v26 = sub_1000636E4();
    v27 = v6;
    v28 = sub_100064374();
    if (os_log_type_enabled(v26, v28))
    {
      v29 = swift_slowAlloc();
      v85 = a3;
      v30 = v25;
      v31 = v29;
      v83 = v29;
      v89 = swift_slowAlloc();
      *&v97[0] = v89;
      *v31 = 136315138;
      sub_1000483C8(&qword_1000864E0);
      v32 = v27;
      v84 = v27;
      v33 = sub_100064584();
      v86 = v21;
      v35 = v34;
      (*(v32 + 8))(v11, v30);
      v36 = sub_10003EB20(v33, v35, v97);

      v37 = v83;
      *(v83 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v26, v28, "provideHomePrompts: Failed to identify time of day type for %s.", v37, 0xCu);
      sub_1000226EC(v89);

      LODWORD(v89) = 4;
      v5 = v30;
      a3 = v85;
      v6 = v84;
    }

    else
    {

      (*(v27 + 8))(v11, v25);
      LODWORD(v89) = 4;
      v5 = v25;
      v6 = v27;
    }
  }

  if (v56 < a3)
  {
    v6 = *&v17[8 * v56];
    ++v11;
    if (v6)
    {
      v11 = v56;
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  return v96;
}

uint64_t sub_1000462C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = result;
  v40 = 0;
  v5 = 0;
  v47 = a3;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = *(a4 + 9);
  v42 = *(a4 + 11);
  while (v9)
  {
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v41 = v13 | (v5 << 6);
    v16 = (*(v47 + 48) + 48 * v41);
    v18 = v16[1];
    v17 = v16[2];
    v44 = *v16;
    v45 = v18;
    v46 = v17;
    v19 = *(a4 + 8);
    if (BYTE8(v44))
    {
      if (!*(a4 + 8))
      {
        goto LABEL_72;
      }

LABEL_18:
      if (BYTE9(v44))
      {
        if (BYTE9(v44) == 1)
        {
          v20 = 0x746365526B636F6CLL;
          v21 = 0xEF72616C75676E61;
          if (!v11)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v21 = 0xE400000000000000;
          v20 = 1701670760;
          if (!v11)
          {
LABEL_25:
            v22 = 0xEA0000000000656ELL;
            if (v20 != 0x696C6E496B636F6CLL)
            {
              goto LABEL_32;
            }

            goto LABEL_30;
          }
        }
      }

      else
      {
        v20 = 0x696C6E496B636F6CLL;
        v21 = 0xEA0000000000656ELL;
        if (!v11)
        {
          goto LABEL_25;
        }
      }

      if (v11 == 1)
      {
        v22 = 0xEF72616C75676E61;
        if (v20 != 0x746365526B636F6CLL)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v22 = 0xE400000000000000;
        if (v20 != 1701670760)
        {
          goto LABEL_32;
        }
      }

LABEL_30:
      if (v21 == v22)
      {
        sub_10000B264(&v44, v43);

        goto LABEL_33;
      }

LABEL_32:
      v23 = sub_100064594();
      sub_10000B264(&v44, v43);

      if ((v23 & 1) == 0)
      {
        goto LABEL_71;
      }

LABEL_33:
      v24 = 0xE900000000000079;
      if (BYTE10(v44))
      {
        if (BYTE10(v44) == 1)
        {
          v25 = 0xEA00000000006B65;
          v26 = 0x6557664F656D6974;
          v27 = *(a4 + 10);
          if (!*(a4 + 10))
          {
            goto LABEL_40;
          }
        }

        else
        {
          v25 = 0xE700000000000000;
          v26 = 0x656D6974796E61;
          v27 = *(a4 + 10);
          if (!*(a4 + 10))
          {
LABEL_40:
            if (v26 != 0x6144664F656D6974)
            {
              goto LABEL_47;
            }

            goto LABEL_45;
          }
        }
      }

      else
      {
        v26 = 0x6144664F656D6974;
        v25 = 0xE900000000000079;
        v27 = *(a4 + 10);
        if (!*(a4 + 10))
        {
          goto LABEL_40;
        }
      }

      if (v27 == 1)
      {
        v24 = 0xEA00000000006B65;
        if (v26 != 0x6557664F656D6974)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v24 = 0xE700000000000000;
        if (v26 != 0x656D6974796E61)
        {
          goto LABEL_47;
        }
      }

LABEL_45:
      if (v25 == v24)
      {

        goto LABEL_48;
      }

LABEL_47:
      v28 = sub_100064594();

      if ((v28 & 1) == 0)
      {
        goto LABEL_71;
      }

LABEL_48:
      if (BYTE11(v44) > 1u)
      {
        if (BYTE11(v44) == 2)
        {
          v29 = 0xD000000000000010;
          v30 = 0x800000010006B460;
          goto LABEL_55;
        }

        v29 = 0x446C616963657073;
        v31 = 7567713;
      }

      else
      {
        v29 = 0x616568416B6F6F6CLL;
        v30 = 0xE900000000000064;
        if (!BYTE11(v44))
        {
          goto LABEL_55;
        }

        v29 = 0x6D6F4D6568546E69;
        v31 = 7630437;
      }

      v30 = v31 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_55:
      if (v42 > 1)
      {
        if (v42 == 2)
        {
          v32 = 0xD000000000000010;
          v33 = 0x800000010006B460;
LABEL_60:
          if (v29 != v32)
          {
            goto LABEL_66;
          }

          goto LABEL_64;
        }

        v34 = 0x446C616963657073;
        v35 = 7567713;
      }

      else
      {
        v32 = 0x616568416B6F6F6CLL;
        v33 = 0xE900000000000064;
        if (!v42)
        {
          goto LABEL_60;
        }

        v34 = 0x6D6F4D6568546E69;
        v35 = 7630437;
      }

      v33 = v35 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v29 != v34)
      {
        goto LABEL_66;
      }

LABEL_64:
      if (v30 == v33)
      {

        goto LABEL_67;
      }

LABEL_66:
      v36 = sub_100064594();

      if ((v36 & 1) == 0)
      {
        goto LABEL_71;
      }

LABEL_67:
      if (v45 != *(a4 + 16) && (sub_100064594() & 1) == 0)
      {
LABEL_71:
        result = sub_1000480AC(&v44);
        goto LABEL_72;
      }

      if (v46 == *(a4 + 32))
      {
        result = sub_1000480AC(&v44);
      }

      else
      {
        v12 = sub_100064594();
        result = sub_1000480AC(&v44);
        if ((v12 & 1) == 0)
        {
          goto LABEL_72;
        }
      }
    }

    else
    {
      if (v44 != *a4)
      {
        v19 = 1;
      }

      if ((v19 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_72:
      *(v39 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_76;
      }

      ++v40;
    }
  }

  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      v37 = v47;

      return sub_100040988(v39, a2, v40, v37);
    }

    v15 = *(v6 + 8 * v5);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v9 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_10004686C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v6 = 8 * v5;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_79;
  }

  v7 = sub_10000B264(a2, &v48);
  while (2)
  {
    v42[1] = v42;
    __chkstk_darwin(v7);
    v43 = v42 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v6);
    v8 = 0;
    v5 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    v6 = (v9 + 63) >> 6;
    v44 = 0;
    v45 = 0x800000010006B460;
    v46 = v3;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = v13 | (v8 << 6);
      v17 = (*(v3 + 48) + 48 * v16);
      v19 = v17[1];
      v18 = v17[2];
      v48 = *v17;
      v49 = v19;
      v50 = v18;
      v20 = *(a2 + 8);
      if (BYTE8(v48))
      {
        if (!*(a2 + 8))
        {
          goto LABEL_74;
        }

LABEL_20:
        if (BYTE9(v48))
        {
          if (BYTE9(v48) == 1)
          {
            v21 = 0x746365526B636F6CLL;
            v22 = 0xEF72616C75676E61;
            v23 = *(a2 + 9);
            if (!*(a2 + 9))
            {
              goto LABEL_27;
            }
          }

          else
          {
            v22 = 0xE400000000000000;
            v21 = 1701670760;
            v23 = *(a2 + 9);
            if (!*(a2 + 9))
            {
LABEL_27:
              v24 = 0xEA0000000000656ELL;
              if (v21 != 0x696C6E496B636F6CLL)
              {
                goto LABEL_34;
              }

              goto LABEL_32;
            }
          }
        }

        else
        {
          v21 = 0x696C6E496B636F6CLL;
          v22 = 0xEA0000000000656ELL;
          v23 = *(a2 + 9);
          if (!*(a2 + 9))
          {
            goto LABEL_27;
          }
        }

        if (v23 == 1)
        {
          v24 = 0xEF72616C75676E61;
          if (v21 != 0x746365526B636F6CLL)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v24 = 0xE400000000000000;
          if (v21 != 1701670760)
          {
            goto LABEL_34;
          }
        }

LABEL_32:
        if (v22 == v24)
        {
          sub_10000B264(&v48, v47);

          goto LABEL_35;
        }

LABEL_34:
        v25 = sub_100064594();
        sub_10000B264(&v48, v47);

        if ((v25 & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_35:
        v26 = 0xE900000000000079;
        if (BYTE10(v48))
        {
          if (BYTE10(v48) == 1)
          {
            v27 = 0xEA00000000006B65;
            v28 = 0x6557664F656D6974;
            v29 = *(a2 + 10);
            if (!*(a2 + 10))
            {
              goto LABEL_42;
            }
          }

          else
          {
            v27 = 0xE700000000000000;
            v28 = 0x656D6974796E61;
            v29 = *(a2 + 10);
            if (!*(a2 + 10))
            {
LABEL_42:
              if (v28 != 0x6144664F656D6974)
              {
                goto LABEL_49;
              }

              goto LABEL_47;
            }
          }
        }

        else
        {
          v28 = 0x6144664F656D6974;
          v27 = 0xE900000000000079;
          v29 = *(a2 + 10);
          if (!*(a2 + 10))
          {
            goto LABEL_42;
          }
        }

        if (v29 == 1)
        {
          v26 = 0xEA00000000006B65;
          if (v28 != 0x6557664F656D6974)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v26 = 0xE700000000000000;
          if (v28 != 0x656D6974796E61)
          {
            goto LABEL_49;
          }
        }

LABEL_47:
        if (v27 == v26)
        {

          goto LABEL_50;
        }

LABEL_49:
        v30 = sub_100064594();

        if ((v30 & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_50:
        if (BYTE11(v48) > 1u)
        {
          if (BYTE11(v48) == 2)
          {
            v31 = 0xD000000000000010;
            v32 = v45;
            goto LABEL_57;
          }

          v31 = 0x446C616963657073;
          v33 = 7567713;
        }

        else
        {
          v31 = 0x616568416B6F6F6CLL;
          v32 = 0xE900000000000064;
          if (!BYTE11(v48))
          {
            goto LABEL_57;
          }

          v31 = 0x6D6F4D6568546E69;
          v33 = 7630437;
        }

        v32 = v33 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_57:
        if (*(a2 + 11) > 1u)
        {
          if (*(a2 + 11) == 2)
          {
            v34 = 0xD000000000000010;
            v35 = v45;
LABEL_62:
            if (v31 != v34)
            {
              goto LABEL_68;
            }

            goto LABEL_66;
          }

          v36 = 0x446C616963657073;
          v37 = 7567713;
        }

        else
        {
          v34 = 0x616568416B6F6F6CLL;
          v35 = 0xE900000000000064;
          if (!*(a2 + 11))
          {
            goto LABEL_62;
          }

          v36 = 0x6D6F4D6568546E69;
          v37 = 7630437;
        }

        v35 = v37 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v31 != v36)
        {
          goto LABEL_68;
        }

LABEL_66:
        if (v32 == v35)
        {

          goto LABEL_69;
        }

LABEL_68:
        v38 = sub_100064594();

        if ((v38 & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_69:
        if (v49 != *(a2 + 16) && (sub_100064594() & 1) == 0)
        {
LABEL_73:
          sub_1000480AC(&v48);
          v3 = v46;
          goto LABEL_74;
        }

        v3 = v46;
        if (v50 == *(a2 + 32))
        {
          sub_1000480AC(&v48);
        }

        else
        {
          v12 = sub_100064594();
          sub_1000480AC(&v48);
          if ((v12 & 1) == 0)
          {
            goto LABEL_74;
          }
        }
      }

      else
      {
        if (v48 != *a2)
        {
          v20 = 1;
        }

        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_74:
        *&v43[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v44, 1))
        {
          __break(1u);
        }

        ++v44;
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v6)
      {
        v39 = sub_100040988(v43, v42[2], v44, v3);
        goto LABEL_77;
      }

      v15 = *(v5 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_79:
    sub_10000B264(a2, &v48);

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v41 = swift_slowAlloc();
  sub_10000B264(a2, &v48);
  v39 = sub_10004084C(v41, v5, v3, a2);

LABEL_77:
  sub_1000480AC(a2);
  return v39;
}

uint64_t sub_100046F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v10 = (a4 + *(type metadata accessor for StartWritingWidgetPersistedPrompts() + 28));
  v11 = v10[2];
  v31[1] = v10[1];
  v31[2] = v11;
  v31[0] = *v10;
  sub_10000B264(v31, v30);
  v12 = sub_10004561C(a1, a2, a3);
  v14 = v13;
  if (BYTE10(v31[0]))
  {
    if (BYTE10(v31[0]) != 1)
    {

LABEL_9:

      goto LABEL_10;
    }

    v15 = v12;
  }

  else
  {
    v15 = v12;
  }

  v16 = sub_100064594();

  if ((v16 & 1) != 0 || sub_100040DB8(0xAuLL))
  {
    goto LABEL_9;
  }

  v14 = v15;
LABEL_10:
  sub_10000B264(v31, v30);
  v17 = sub_10004686C(v14, v31);
  sub_1000480AC(v31);
  if (*(v17 + 16))
  {
    v18 = -1 << *(v17 + 32);
    v19 = sub_1000643E4();
    v20 = *(v17 + 16);
    if (v20)
    {
      v21 = *(v17 + 36);
      v22 = sub_100040DB8(v20);
      v23 = sub_10003DE30(v19, v21, 0, v22, v17);
      v25 = v24;
      v27 = v26;
      sub_10003DF68(v23, v24, v17, v30);
      sub_1000480AC(v31);
      sub_1000480A0(v23, v25, v27 & 1);

      v29 = v30[1];
      *a5 = v30[0];
      *(a5 + 16) = v29;
      *(a5 + 32) = v30[2];
      *(a5 + 48) = 0;
      return result;
    }

    __break(1u);
  }

  result = sub_100064474();
  __break(1u);
  return result;
}

uint64_t sub_1000471A0(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  LODWORD(v111) = a4;
  v110 = a1;
  v6 = sub_100063574();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v107 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v100 - v11;
  v13 = sub_1000021D4(&qword_1000864B8, &qword_1000699F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v100 - v19;
  v21 = sub_100041388(a3, a2);
  v113 = a2;
  v22 = 0;
  v23 = sub_10003E5F0(sub_10004840C, v112, v21);
  v24 = *(v23 + 16);
  v108 = v14;
  if (v24)
  {
    sub_100016718(v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v20, &qword_1000864B8, &qword_1000699F0);

    LODWORD(v109) = v20[*(v13 + 48)];
    sub_10000494C(v20, &qword_100084E60, &unk_100065B80);
  }

  else
  {

    if (qword_1000849B0 != -1)
    {
      swift_once();
    }

    v25 = sub_100063704();
    sub_1000049B4(v25, qword_100086400);
    (v7[2])(v12, a2, v6);
    v26 = v6;
    v27 = sub_1000636E4();
    v28 = v7;
    v29 = sub_100064374();
    if (os_log_type_enabled(v27, v29))
    {
      v30 = swift_slowAlloc();
      v105 = a3;
      v31 = v26;
      v32 = v30;
      v103 = v30;
      v109 = swift_slowAlloc();
      *&v115[0] = v109;
      *v32 = 136315138;
      sub_1000483C8(&qword_1000864E0);
      v33 = v28;
      v104 = v28;
      v34 = sub_100064584();
      v106 = 0;
      v36 = v35;
      v33[1](v12, v31);
      v37 = sub_10003EB20(v34, v36, v115);
      v22 = v106;

      v38 = v103;
      *(v103 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v27, v29, "provideLockPrompts: Failed to identify time of day type for %s.", v38, 0xCu);
      sub_1000226EC(v109);

      LODWORD(v109) = 4;
      v6 = v31;
      a3 = v105;
      v7 = v104;
    }

    else
    {

      v28[1](v12, v26);
      LODWORD(v109) = 4;
      v6 = v26;
      v7 = v28;
    }
  }

  v39 = sub_100043DB8(a3, a2);
  __chkstk_darwin(v39);
  v100[-2] = a2;
  v41 = sub_10003E5F0(sub_10004840C, &v100[-4], v40);
  v106 = v22;
  if (*(v41 + 16))
  {
    sub_100016718(v41 + ((*(v108 + 80) + 32) & ~*(v108 + 80)), v18, &qword_1000864B8, &qword_1000699F0);

    v42 = v18[*(v13 + 48)];
    v43 = sub_10000494C(v18, &qword_100084E60, &unk_100065B80);
    v44 = v110;
    v45 = v111;
  }

  else
  {

    v45 = v111;
    if (qword_1000849B0 != -1)
    {
      swift_once();
    }

    v46 = sub_100063704();
    sub_1000049B4(v46, qword_100086400);
    v47 = v107;
    (v7[2])(v107, a2, v6);
    v48 = v6;
    v49 = sub_1000636E4();
    v50 = v7;
    v51 = sub_100064374();
    v52 = os_log_type_enabled(v49, v51);
    v44 = v110;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v115[0] = v54;
      *v53 = 136315138;
      sub_1000483C8(&qword_1000864E0);
      v55 = sub_100064584();
      v57 = v56;
      v50[1](v47, v48);
      v58 = sub_10003EB20(v55, v57, v115);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v49, v51, "provideLockPrompts: Failed to identify time of week type for %s.", v53, 0xCu);
      sub_1000226EC(v54);

      v45 = v111;
    }

    else
    {

      v43 = (v50[1])(v47, v48);
    }
  }

  v59 = v100;
  __chkstk_darwin(v43);
  LOBYTE(v100[-2]) = v45 & 1;
  BYTE1(v100[-2]) = v109;
  LODWORD(v107) = v60;
  BYTE2(v100[-2]) = v60;
  v61 = *(v44 + 32);
  v62 = v61 & 0x3F;
  v63 = ((1 << v61) + 63) >> 6;
  v64 = 8 * v63;

  if (v62 > 0xD)
  {
    goto LABEL_98;
  }

  do
  {
    v101 = v63;
    v102 = v59;
    v100[1] = v100;
    v66 = 0xEF72616C75676E61;
    __chkstk_darwin(isStackAllocationSafe);
    v104 = (v100 - ((v64 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v104, v64);
    v106 = 0;
    v67 = 0;
    v59 = (v44 + 56);
    v68 = 1 << *(v44 + 32);
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v63 = v69 & *(v44 + 56);
    v70 = (v68 + 63) >> 6;
    if (v45)
    {
      v71 = 0x696C6E496B636F6CLL;
    }

    else
    {
      v71 = 0x746365526B636F6CLL;
    }

    v111 = v71;
    v105 = 0xEA0000000000656ELL;
    if (v45)
    {
      v66 = 0xEA0000000000656ELL;
    }

    v103 = 0x800000010006B460;
    v108 = v66;
    while (v63)
    {
      v72 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
LABEL_32:
      v75 = v72 | (v67 << 6);
      v76 = (*(v44 + 48) + 48 * v75);
      v78 = v76[1];
      v77 = v76[2];
      v115[0] = *v76;
      v115[1] = v78;
      v115[2] = v77;
      if (BYTE9(v115[0]))
      {
        if (BYTE9(v115[0]) != 1)
        {
          v64 = 0xE400000000000000;
LABEL_40:
          v80 = sub_100064594();
          sub_10000B264(v115, v114);

          if ((v80 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

        v79 = 0x746365526B636F6CLL;
        v64 = 0xEF72616C75676E61;
      }

      else
      {
        v79 = 0x696C6E496B636F6CLL;
        v64 = v105;
      }

      if (v79 != v111 || v64 != v66)
      {
        goto LABEL_40;
      }

      sub_10000B264(v115, v114);

LABEL_41:
      v81 = BYTE10(v115[0]);
      v64 = 0xE900000000000079;
      if (BYTE10(v115[0]))
      {
        if (BYTE10(v115[0]) != 1)
        {
          goto LABEL_92;
        }

        v64 = 0xEA00000000006B65;
      }

      v82 = sub_100064594();

      if (v82)
      {
        goto LABEL_93;
      }

      v83 = BYTE11(v115[0]);
      if (v109 == 4)
      {
        goto LABEL_68;
      }

      if (v81)
      {
        v64 = sub_100064594();

        if (v64)
        {
          goto LABEL_50;
        }

LABEL_68:
        if (v107 == 4)
        {
          goto LABEL_24;
        }

        if (v81)
        {

          goto LABEL_72;
        }

        v64 = sub_100064594();

        if ((v64 & 1) == 0)
        {
LABEL_24:
          sub_1000480AC(v115);
          v66 = v108;
          v44 = v110;
        }

        else
        {
LABEL_72:
          v91 = 0xE900000000000064;
          if (v83 > 1)
          {
            if (v83 == 2)
            {
              v92 = 0xD000000000000010;
              v64 = v103;
            }

            else
            {
              v92 = 0x446C616963657073;
              v64 = 0xEB00000000737961;
            }

            v93 = v107;
            if (v107 <= 1)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v92 = 0x616568416B6F6F6CLL;
            v64 = 0xE900000000000064;
            v93 = v107;
            if (v83)
            {
              v92 = 0x6D6F4D6568546E69;
              v64 = 0xEB00000000746E65;
            }

            if (v107 <= 1)
            {
LABEL_76:
              v94 = 0x616568416B6F6F6CLL;
              v66 = v108;
              if (v93)
              {
                v95 = 0x6D6F4D6568546E69;
                v96 = 7630437;
                goto LABEL_87;
              }

              goto LABEL_85;
            }
          }

          v66 = v108;
          if (v93 != 2)
          {
            v95 = 0x446C616963657073;
            v96 = 7567713;
LABEL_87:
            v91 = v96 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v92 != v95)
            {
              goto LABEL_89;
            }

LABEL_88:
            if (v64 != v91)
            {
              goto LABEL_89;
            }

LABEL_91:

LABEL_92:

            goto LABEL_93;
          }

          v94 = 0xD000000000000010;
          v91 = v103;
LABEL_85:
          if (v92 == v94)
          {
            goto LABEL_88;
          }

LABEL_89:
          v45 = sub_100064594();

          sub_1000480AC(v115);
          if (v45)
          {
            goto LABEL_94;
          }

          v44 = v110;
        }
      }

      else
      {

LABEL_50:
        v84 = 0xE900000000000064;
        if (v83 > 1)
        {
          v86 = v109;
          if (v83 == 2)
          {
            v85 = 0xD000000000000010;
            v64 = v103;
LABEL_55:
            if (v86 <= 1)
            {
              goto LABEL_56;
            }

            goto LABEL_60;
          }

          v85 = 0x446C616963657073;
          v87 = 7567713;
        }

        else
        {
          v85 = 0x616568416B6F6F6CLL;
          v64 = 0xE900000000000064;
          v86 = v109;
          if (!v83)
          {
            goto LABEL_55;
          }

          v85 = 0x6D6F4D6568546E69;
          v87 = 7630437;
        }

        v64 = v87 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v86 <= 1)
        {
LABEL_56:
          v88 = 0x616568416B6F6F6CLL;
          if (!v86)
          {
            goto LABEL_62;
          }

          v89 = 0x6D6F4D6568546E69;
          v90 = 7630437;
          goto LABEL_65;
        }

LABEL_60:
        if (v86 == 2)
        {
          v88 = 0xD000000000000010;
          v84 = v103;
LABEL_62:
          if (v85 != v88)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        v89 = 0x446C616963657073;
        v90 = 7567713;
LABEL_65:
        v84 = v90 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v85 != v89)
        {
          goto LABEL_67;
        }

LABEL_66:
        if (v64 == v84)
        {
          goto LABEL_91;
        }

LABEL_67:
        v45 = sub_100064594();

        if ((v45 & 1) == 0)
        {
          goto LABEL_68;
        }

LABEL_93:
        sub_1000480AC(v115);
        v66 = v108;
LABEL_94:
        *(v104 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(v104 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << v75));
        v44 = v110;
        if (__OFADD__(v106, 1))
        {
          __break(1u);
        }

        ++v106;
      }
    }

    v73 = v67;
    while (1)
    {
      v67 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v67 >= v70)
      {
        return sub_100040988(v104, v101, v106, v44);
      }

      v74 = v59[v67];
      ++v73;
      if (v74)
      {
        v72 = __clz(__rbit64(v74));
        v63 = (v74 - 1) & v74;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_98:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v98 = swift_slowAlloc();
  v99 = sub_1000408F8(v98, v63, v44, sub_1000483A0);

  return v99;
}

uint64_t sub_10004805C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1000480A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100048100(uint64_t a1)
{
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_10004815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1000481A0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_1000482B4(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  (*(*(started - 8) + 40))(a2, a1, started);
  return a2;
}

uint64_t sub_100048338(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100048394(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000483C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100063574();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004842C()
{
  result = qword_100086510;
  if (!qword_100086510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086510);
  }

  return result;
}

unint64_t sub_100048484()
{
  result = qword_100086518;
  if (!qword_100086518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086518);
  }

  return result;
}

uint64_t sub_100048544@<X0>(uint64_t a1@<X8>)
{
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  sub_100009E20();
  v3 = sub_100064394();
  v4 = sub_1000642A4();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    sub_1000643B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (!*(&v16 + 1))
  {
    sub_10000494C(v17, &qword_100085060, &unk_100065F20);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v9 = sub_100064394();
    v10 = sub_1000642A4();
    [v9 removeObjectForKey:v10];

    v12 = 1;
    return (*(*(started - 8) + 56))(a1, v12, 1, started);
  }

  v6 = sub_1000633A4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_100063394();
  sub_10004A440(&qword_1000865D0);
  sub_100063384();
  sub_10004A3EC(v13, v14);

  v12 = 0;
  return (*(*(started - 8) + 56))(a1, v12, 1, started);
}

uint64_t sub_1000487B0(uint64_t a1)
{
  v2 = sub_1000021D4(&qword_100084E70, &unk_100065B90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23[-v4];
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  v7 = *(started - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(started);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100016718(a1, v5, &qword_100084E70, &unk_100065B90);
  if ((*(v7 + 48))(v5, 1, started) == 1)
  {
    sub_10000494C(v5, &qword_100084E70, &unk_100065B90);
    sub_100009E20();
    v11 = sub_100064394();
    v12 = sub_1000642A4();
    [v11 removeObjectForKey:v12];
  }

  else
  {
    sub_1000481A0(v5, v10);
    v13 = sub_1000633D4();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_1000633C4();
    sub_10004A440(&qword_1000865C8);
    v16 = sub_1000633B4();
    v18 = v17;

    sub_100009E20();
    v19 = sub_100064394();
    isa = sub_100063464().super.isa;
    v21 = sub_1000642A4();
    [v19 setObject:isa forKey:v21];
    sub_10004A3EC(v16, v18);

    sub_100048100(v10);
  }

  return 1;
}

__n128 sub_100048A64@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000636A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_100084A58 != -1)
      {
        swift_once();
      }

      v13 = sub_1000049B4(v4, qword_100090F58);
      v10 = *(v5 + 16);
      v10(v8, v13, v4);
      v11 = sub_100063F94();
      if (qword_100084A60 != -1)
      {
        swift_once();
      }

      v12 = qword_100090F70;
      goto LABEL_14;
    }

    if (qword_100084A80 != -1)
    {
      swift_once();
    }

    v28 = sub_1000049B4(v4, qword_100090FD0);
    v25 = *(v5 + 16);
    v25(v8, v28, v4);
    v26 = sub_100063F94();
    if (qword_100084A88 != -1)
    {
      swift_once();
    }

    v27 = qword_100090FE8;
LABEL_25:
    v29 = sub_1000049B4(v4, v27);
    v25(v8, v29, v4);
    v30 = sub_100063F94();
    sub_1000021D4(&qword_100085428, &unk_100069B90);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100065BA0;
    *(v31 + 32) = v26;
    *(v31 + 40) = v30;

    sub_1000640C4();
    sub_1000640D4();
    sub_100064054();
    sub_100063804();

    v32 = sub_1000021D4(&qword_100085408, &qword_100066C00);
    v33 = *(v32 + 36);
    v34 = enum case for BlendMode.plusDarker(_:);
    v20 = sub_100064094();
    v21 = *(*(v20 - 8) + 104);
    v21(a2 + v33, v34, v20);
    v23 = enum case for BlendMode.plusLighter(_:);
    v22 = a2 + *(v32 + 40);
    goto LABEL_26;
  }

  if (a1)
  {
    if (qword_100084A08 != -1)
    {
      swift_once();
    }

    v24 = sub_1000049B4(v4, qword_100090E68);
    v25 = *(v5 + 16);
    v25(v8, v24, v4);
    v26 = sub_100063F94();
    if (qword_100084A10 != -1)
    {
      swift_once();
    }

    v27 = qword_100090E80;
    goto LABEL_25;
  }

  if (qword_100084A30 != -1)
  {
    swift_once();
  }

  v9 = sub_1000049B4(v4, qword_100090EE0);
  v10 = *(v5 + 16);
  v10(v8, v9, v4);
  v11 = sub_100063F94();
  if (qword_100084A38 != -1)
  {
    swift_once();
  }

  v12 = qword_100090EF8;
LABEL_14:
  v14 = sub_1000049B4(v4, v12);
  v10(v8, v14, v4);
  v15 = sub_100063F94();
  sub_1000021D4(&qword_100085428, &unk_100069B90);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100065BA0;
  *(v16 + 32) = v11;
  *(v16 + 40) = v15;

  sub_1000640C4();
  sub_1000640D4();
  sub_100064054();
  sub_100063804();

  v17 = sub_1000021D4(&qword_100085408, &qword_100066C00);
  v18 = *(v17 + 36);
  v19 = enum case for BlendMode.normal(_:);
  v20 = sub_100064094();
  v21 = *(*(v20 - 8) + 104);
  v21(a2 + v18, v19, v20);
  v22 = a2 + *(v17 + 40);
  v23 = v19;
LABEL_26:
  v21(v22, v23, v20);
  result = v38;
  v36 = v39;
  *a2 = v38;
  *(a2 + 16) = v36;
  *(a2 + 32) = v40;
  return result;
}

__n128 sub_10004905C@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000636A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_100084A40 != -1)
      {
        swift_once();
      }

      v13 = sub_1000049B4(v4, qword_100090F10);
      v10 = *(v5 + 16);
      v10(v8, v13, v4);
      v11 = sub_100063F94();
      if (qword_100084A48 != -1)
      {
        swift_once();
      }

      v12 = qword_100090F28;
    }

    else
    {
      if (qword_100084A68 != -1)
      {
        swift_once();
      }

      v15 = sub_1000049B4(v4, qword_100090F88);
      v10 = *(v5 + 16);
      v10(v8, v15, v4);
      v11 = sub_100063F94();
      if (qword_100084A70 != -1)
      {
        swift_once();
      }

      v12 = qword_100090FA0;
    }
  }

  else if (a1)
  {
    if (qword_1000849F0 != -1)
    {
      swift_once();
    }

    v14 = sub_1000049B4(v4, qword_100090E20);
    v10 = *(v5 + 16);
    v10(v8, v14, v4);
    v11 = sub_100063F94();
    if (qword_1000849F8 != -1)
    {
      swift_once();
    }

    v12 = qword_100090E38;
  }

  else
  {
    if (qword_100084A18 != -1)
    {
      swift_once();
    }

    v9 = sub_1000049B4(v4, qword_100090E98);
    v10 = *(v5 + 16);
    v10(v8, v9, v4);
    v11 = sub_100063F94();
    if (qword_100084A20 != -1)
    {
      swift_once();
    }

    v12 = qword_100090EB0;
  }

  v16 = sub_1000049B4(v4, v12);
  v10(v8, v16, v4);
  v17 = sub_100063F94();
  sub_1000021D4(&qword_100085428, &unk_100069B90);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100065BA0;
  *(v18 + 32) = v11;
  *(v18 + 40) = v17;

  sub_1000640C4();
  sub_1000640D4();
  sub_100064054();
  sub_100063804();
  v19 = v23;
  v21 = v25;
  v22 = v24;

  *a2 = v19;
  result = v22;
  *(a2 + 24) = v21;
  *(a2 + 8) = result;
  return result;
}

__n128 sub_1000494A0@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000636A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_100084A40 != -1)
      {
        swift_once();
      }

      v13 = sub_1000049B4(v4, qword_100090F10);
      v10 = *(v5 + 16);
      v10(v8, v13, v4);
      v11 = sub_100063F94();
      if (qword_100084A50 != -1)
      {
        swift_once();
      }

      v12 = qword_100090F40;
    }

    else
    {
      if (qword_100084A68 != -1)
      {
        swift_once();
      }

      v15 = sub_1000049B4(v4, qword_100090F88);
      v10 = *(v5 + 16);
      v10(v8, v15, v4);
      v11 = sub_100063F94();
      if (qword_100084A78 != -1)
      {
        swift_once();
      }

      v12 = qword_100090FB8;
    }
  }

  else if (a1)
  {
    if (qword_1000849F8 != -1)
    {
      swift_once();
    }

    v14 = sub_1000049B4(v4, qword_100090E38);
    v10 = *(v5 + 16);
    v10(v8, v14, v4);
    v11 = sub_100063F94();
    if (qword_100084A00 != -1)
    {
      swift_once();
    }

    v12 = qword_100090E50;
  }

  else
  {
    if (qword_100084A18 != -1)
    {
      swift_once();
    }

    v9 = sub_1000049B4(v4, qword_100090E98);
    v10 = *(v5 + 16);
    v10(v8, v9, v4);
    v11 = sub_100063F94();
    if (qword_100084A28 != -1)
    {
      swift_once();
    }

    v12 = qword_100090EC8;
  }

  v16 = sub_1000049B4(v4, v12);
  v10(v8, v16, v4);
  v17 = sub_100063F94();
  sub_1000021D4(&qword_100085428, &unk_100069B90);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100065BA0;
  *(v18 + 32) = v11;
  *(v18 + 40) = v17;

  sub_1000640C4();
  sub_1000640D4();
  sub_100064054();
  sub_100063804();
  v19 = v23;
  v21 = v25;
  v22 = v24;

  *a2 = v19;
  result = v22;
  *(a2 + 24) = v21;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1000498E4()
{
  sub_1000021D4(&qword_100084BB8, &qword_100069BA0);
  v0 = sub_100064154();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100069A50;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for WidgetFamily.accessoryInline(_:), v0);
  v6(v5 + v2, enum case for WidgetFamily.accessoryCircular(_:), v0);
  v6(v5 + 2 * v2, enum case for WidgetFamily.accessoryRectangular(_:), v0);
  v6(v5 + 3 * v2, enum case for WidgetFamily.systemSmall(_:), v0);
  result = (v6)(v5 + 4 * v2, enum case for WidgetFamily.systemMedium(_:), v0);
  qword_100090DA0 = v4;
  return result;
}

double sub_100049A6C()
{
  v0 = sub_1000636A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000021D4(&qword_100085428, &unk_100069B90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100065BA0;
  if (qword_100084A98 != -1)
  {
    swift_once();
  }

  v6 = sub_1000049B4(v0, qword_100091018);
  v7 = *(v1 + 16);
  v7(v4, v6, v0);
  *(v5 + 32) = sub_100063F94();
  if (qword_100084A90 != -1)
  {
    swift_once();
  }

  v8 = sub_1000049B4(v0, qword_100091000);
  v7(v4, v8, v0);
  *(v5 + 40) = sub_100063F94();
  sub_1000640A4();
  sub_1000640B4();
  sub_100064054();
  sub_100063804();
  result = *&v11;
  xmmword_100090DA8 = v11;
  unk_100090DB8 = v12;
  qword_100090DC8 = v13;
  return result;
}

uint64_t sub_100049C78()
{
  v0 = sub_100063404();
  sub_100009DBC(v0, qword_100090DD0);
  sub_1000049B4(v0, qword_100090DD0);
  return sub_1000633E4();
}

uint64_t sub_100049CDC(uint64_t a1, uint64_t a2)
{
  v2[42] = a1;
  v4 = *(*(sub_1000021D4(&qword_100084E70, &unk_100065B90) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  v2[45] = started;
  v6 = *(started - 8);
  v2[46] = v6;
  v7 = *(v6 + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v8 = sub_100064334();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  return _swift_task_switch(sub_100049E20, v8, v10);
}

uint64_t sub_100049E20()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  sub_100048544(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000494C(*(v0 + 352), &qword_100084E70, &unk_100065B90);
  }

  else
  {
    v5 = *(v0 + 376);
    v4 = *(v0 + 384);
    v6 = *(v0 + 360);
    v7 = *(v0 + 368);
    v8 = *(v0 + 344);
    sub_1000481A0(*(v0 + 352), v4);
    sub_10000C8CC(v4, v5);
    sub_100016718(v4, v8, &qword_100084E60, &unk_100065B80);
    v9 = v4 + v6[5];
    v10 = *(v9 + 48);
    v12 = *(v9 + 16);
    v11 = *(v9 + 32);
    *(v0 + 72) = *v9;
    *(v0 + 88) = v12;
    *(v0 + 104) = v11;
    *(v0 + 120) = v10;
    v13 = v4 + v6[6];
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    *(v0 + 64) = *(v13 + 48);
    *(v0 + 32) = v15;
    *(v0 + 48) = v16;
    *(v0 + 16) = v14;
    v17 = (v5 + v6[7]);
    v19 = v17[1];
    v18 = v17[2];
    *(v0 + 240) = *v17;
    *(v0 + 256) = v19;
    *(v0 + 272) = v18;
    v37 = v17[1];
    v38 = v17[2];
    v36 = *v17;
    sub_100048204(v0 + 72, v0 + 128);
    sub_100048204(v0 + 16, v0 + 184);
    sub_10000B264(v0 + 240, v0 + 288);
    sub_100048100(v5);
    v20 = v8 + v6[5];
    v21 = *(v0 + 120);
    v22 = *(v0 + 104);
    v23 = *(v0 + 88);
    *v20 = *(v0 + 72);
    *(v20 + 16) = v23;
    *(v20 + 32) = v22;
    *(v20 + 48) = v21;
    v24 = v8 + v6[6];
    v25 = *(v0 + 16);
    v26 = *(v0 + 32);
    v27 = *(v0 + 48);
    *(v24 + 48) = *(v0 + 64);
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    *v24 = v25;
    v28 = v8 + v6[7];
    *(v28 + 16) = v37;
    *(v28 + 32) = v38;
    *v28 = v36;
    *(v28 + 48) = 1;
    (*(v7 + 56))(v8, 0, 1, v6);
    sub_1000487B0(v8);
    sub_10000494C(v8, &qword_100084E70, &unk_100065B90);
    sub_100048100(v4);
  }

  v29 = *(v0 + 376);
  v30 = *(v0 + 384);
  v32 = *(v0 + 344);
  v31 = *(v0 + 352);
  v33 = *(v0 + 336);
  sub_100062E54();

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_10004A0B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000849C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100063404();
  v3 = sub_1000049B4(v2, qword_100090DD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10004A184()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10004A220;
  v2 = *(v0 + 16);

  return sub_100049CDC(v2, 0);
}

uint64_t sub_10004A220()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10004A314(uint64_t a1)
{
  v2 = sub_100015F74();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10004A388()
{
  result = qword_1000865B8;
  if (!qword_1000865B8)
  {
    sub_10000221C(&qword_1000865C0, &qword_100069B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000865B8);
  }

  return result;
}

uint64_t sub_10004A3EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10004A440(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StartWritingWidgetPersistedPrompts();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004A484(uint64_t result, char a2)
{
  if (a2 != 2 && (a2 & 1) == 0)
  {
    v2 = result;
    v3 = sub_100063864();
    v4 = *(v3 - 8) + 8;
    (*v4)(v2, v3);
    sub_1000021D4(&qword_1000865D8, &qword_100069BA8);
    v5 = *(v4 + 64);
    v6 = (*(v4 + 72) + 32) & ~*(v4 + 72);
    *(swift_allocObject() + 16) = xmmword_100065BA0;
    sub_100063844();
    sub_100063854();
    sub_10004A5A8();
    sub_1000021D4(&qword_1000865E0, &unk_100069BB0);
    sub_10004A600();
    return sub_1000643D4();
  }

  return result;
}

unint64_t sub_10004A5A8()
{
  result = qword_100085340;
  if (!qword_100085340)
  {
    sub_100063864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100085340);
  }

  return result;
}

unint64_t sub_10004A600()
{
  result = qword_1000865E8;
  if (!qword_1000865E8)
  {
    sub_10000221C(&qword_1000865E0, &unk_100069BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000865E8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for WidgetLabelStyle.Appearance(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004A6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v28[0] = a2;
  v28[1] = a1;
  v31 = a5;
  v32 = sub_1000021D4(&qword_1000865F0, &qword_100069C30);
  v7 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v9 = v28 - v8;
  v30 = sub_1000021D4(&qword_1000865F8, &qword_100069C38);
  v10 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v12 = v28 - v11;
  v13 = sub_1000021D4(&qword_100086600, &qword_100069C40);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v28 - v15;
  v29 = sub_1000021D4(&qword_100086608, &qword_100069C48);
  v17 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v19 = v28 - v18;
  v20 = sub_100063BC4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    *v9 = v28[0];
    *(v9 + 1) = 0;
    v9[16] = 0;
    v26 = sub_1000021D4(&qword_100086610, &qword_100069C50);
    sub_10004ABD0(1, &v9[*(v26 + 44)], a3);
    sub_100016718(v9, v16, &qword_1000865F0, &qword_100069C30);
    swift_storeEnumTagMultiPayload();
    sub_10004B694(&qword_100086620, &type metadata accessor for LabelStyleConfiguration.Icon);
    sub_10004B630();
    sub_100063B44();
    sub_100016718(v19, v12, &qword_100086608, &qword_100069C48);
    swift_storeEnumTagMultiPayload();
    sub_10004B574();
    sub_100063B44();
    sub_10000494C(v19, &qword_100086608, &qword_100069C48);
    return sub_10000494C(v9, &qword_1000865F0, &qword_100069C30);
  }

  if (a4 == 1)
  {
    *v9 = v28[0];
    *(v9 + 1) = 0;
    v9[16] = 0;
    v25 = sub_1000021D4(&qword_100086610, &qword_100069C50);
    sub_10004ABD0(0, &v9[*(v25 + 44)], a3);
    sub_100016718(v9, v12, &qword_1000865F0, &qword_100069C30);
    swift_storeEnumTagMultiPayload();
    sub_10004B574();
    sub_10004B630();
    sub_100063B44();
    return sub_10000494C(v9, &qword_1000865F0, &qword_100069C30);
  }

  sub_100063BD4();
  (*(v21 + 16))(v16, v24, v20);
  swift_storeEnumTagMultiPayload();
  sub_10004B694(&qword_100086620, &type metadata accessor for LabelStyleConfiguration.Icon);
  sub_10004B630();
  sub_100063B44();
  sub_100016718(v19, v12, &qword_100086608, &qword_100069C48);
  swift_storeEnumTagMultiPayload();
  sub_10004B574();
  sub_100063B44();
  sub_10000494C(v19, &qword_100086608, &qword_100069C48);
  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_10004ABD0@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v62 = a2;
  v58 = sub_1000021D4(&qword_100086630, &qword_100069C58);
  v5 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v59 = &v49 - v6;
  v7 = sub_1000021D4(&qword_100086638, &qword_100069C60);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v61 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v49 - v11;
  v12 = sub_100063BE4();
  *&v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000021D4(&qword_100086640, &qword_100069C68);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v49 - v18;
  v20 = sub_100063BC4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000021D4(&qword_100086648, &unk_100069C70);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v56 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v49 - v29;
  v57 = a1;
  v50 = v15;
  if (a1)
  {
    sub_100063BD4();
    (*(v21 + 16))(v19, v24, v20);
    swift_storeEnumTagMultiPayload();
    sub_10004B694(&qword_100086620, &type metadata accessor for LabelStyleConfiguration.Icon);
    sub_10004B694(&qword_100086650, &type metadata accessor for LabelStyleConfiguration.Title);
    v31 = v30;
    sub_100063B44();
    v32 = *(v21 + 8);
    v33 = v21;
    v34 = v24;
    v32(v24, v20);
    v35 = v55;
  }

  else
  {
    v54 = v21;
    v34 = v24;
    sub_100063BF4();
    v35 = v55;
    (*(v55 + 16))(v19, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_10004B694(&qword_100086620, &type metadata accessor for LabelStyleConfiguration.Icon);
    sub_10004B694(&qword_100086650, &type metadata accessor for LabelStyleConfiguration.Title);
    v36 = v15;
    v31 = v30;
    sub_100063B44();
    (*(v35 + 8))(v36, v12);
    v33 = v54;
  }

  v37 = v12;
  v38 = v20;
  if (a3 == INFINITY)
  {
    LOBYTE(v80) = 1;
    v79 = 0;
    v63 = 0;
    v64 = 1;
    v70 = 0;
LABEL_6:
    sub_1000021D4(&qword_100085470, &unk_100066C50);
    sub_10001698C();
    sub_100063B44();
    v53 = v72;
    v55 = v71;
    v51 = v74;
    v52 = v73;
    LODWORD(v54) = v75;
    goto LABEL_9;
  }

  if (a3 != 0.0)
  {
    sub_100064084();
    sub_1000637E4();
    v78 = 1;
    v77 = v81;
    v76 = v83;
    v79 = 1;
    v63 = 0;
    v64 = 1;
    v65 = v80;
    v66 = v81;
    v67 = v82;
    v68 = v83;
    v69 = v84;
    v70 = 1;
    goto LABEL_6;
  }

  v55 = 0u;
  LODWORD(v54) = 255;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
LABEL_9:
  if (v57)
  {
    v39 = v50;
    sub_100063BF4();
    (*(v35 + 16))(v59, v39, v37);
    swift_storeEnumTagMultiPayload();
    sub_10004B694(&qword_100086650, &type metadata accessor for LabelStyleConfiguration.Title);
    sub_10004B694(&qword_100086620, &type metadata accessor for LabelStyleConfiguration.Icon);
    v40 = v60;
    sub_100063B44();
    (*(v35 + 8))(v39, v37);
  }

  else
  {
    sub_100063BD4();
    (*(v33 + 16))(v59, v34, v20);
    swift_storeEnumTagMultiPayload();
    sub_10004B694(&qword_100086650, &type metadata accessor for LabelStyleConfiguration.Title);
    sub_10004B694(&qword_100086620, &type metadata accessor for LabelStyleConfiguration.Icon);
    v40 = v60;
    sub_100063B44();
    (*(v33 + 8))(v34, v38);
  }

  v41 = v56;
  sub_100016718(v31, v56, &qword_100086648, &unk_100069C70);
  v42 = v61;
  sub_100016718(v40, v61, &qword_100086638, &qword_100069C60);
  v43 = v62;
  sub_100016718(v41, v62, &qword_100086648, &unk_100069C70);
  v44 = sub_1000021D4(&qword_100086658, &qword_100069C80);
  v45 = v43 + *(v44 + 48);
  v46 = v53;
  *v45 = v55;
  *(v45 + 16) = v46;
  v47 = v51;
  *(v45 + 32) = v52;
  *(v45 + 48) = v47;
  *(v45 + 64) = v54;
  sub_100016718(v42, v43 + *(v44 + 64), &qword_100086638, &qword_100069C60);
  sub_10000494C(v40, &qword_100086638, &qword_100069C60);
  sub_10000494C(v31, &qword_100086648, &unk_100069C70);
  sub_10000494C(v42, &qword_100086638, &qword_100069C60);
  return sub_10000494C(v41, &qword_100086648, &unk_100069C70);
}

unint64_t sub_10004B574()
{
  result = qword_100086618;
  if (!qword_100086618)
  {
    sub_10000221C(&qword_100086608, &qword_100069C48);
    sub_10004B694(&qword_100086620, &type metadata accessor for LabelStyleConfiguration.Icon);
    sub_10004B630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086618);
  }

  return result;
}

unint64_t sub_10004B630()
{
  result = qword_100086628;
  if (!qword_100086628)
  {
    sub_10000221C(&qword_1000865F0, &qword_100069C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086628);
  }

  return result;
}

uint64_t sub_10004B694(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004B6E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10004B72C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10004B770(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10004B788(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10004B7B4()
{
  result = qword_100086660;
  if (!qword_100086660)
  {
    sub_10000221C(&qword_100086668, &qword_100069C98);
    sub_10004B574();
    sub_10004B630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086660);
  }

  return result;
}

uint64_t sub_10004B85C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000021D4(&qword_100085CE0, &unk_100067D90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000021D4(&qword_1000851D8, &qword_100066898);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1000021D4(&qword_1000851D0, &qword_100066890);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_10004B9F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000021D4(&qword_100085CE0, &unk_100067D90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1000021D4(&qword_1000851D8, &qword_100066898);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1000021D4(&qword_1000851D0, &qword_100066890);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 24) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for WidgetHeaderView()
{
  result = qword_1000866C8;
  if (!qword_1000866C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004BBBC()
{
  sub_10004BCB4(319, &qword_100085D50, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_10004BCB4(319, &qword_100085258, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      sub_10004BCB4(319, &qword_100085250, &type metadata accessor for RedactionReasons);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10004BCB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100063784();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10004BD14(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10004BD2C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004BD38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004BD88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void *sub_10004BDE0(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10004BE14(uint64_t a1, uint64_t *a2)
{
  v2 = a2[3];
  if (*(a1 + 24))
  {
    if (v2)
    {
      v3 = *a2;
      v4 = a2[1];
      v5 = a2[2] & 1;
      return static Text.== infix(_:_:)(*a1, *(a1 + 8), *(a1 + 16) & 1);
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_10004BE8C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v44 = sub_1000021D4(&qword_100086708, &qword_100069DD8);
  v39 = *(v44 - 8);
  v1 = *(v39 + 64);
  __chkstk_darwin(v44);
  v38 = &v38 - v2;
  v43 = sub_1000021D4(&qword_100086710, &qword_100069DE0);
  v3 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v41 = &v38 - v4;
  v5 = sub_1000021D4(&qword_100086718, &qword_100069DE8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  v42 = sub_1000021D4(&qword_100086720, &qword_100069DF0);
  v9 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v11 = &v38 - v10;
  v40 = sub_1000021D4(&qword_100086728, &qword_100069DF8);
  v12 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v14 = &v38 - v13;
  v15 = sub_100064154();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v38 - v21;
  sub_100030A08(&v38 - v21);
  v23 = (*(v16 + 88))(v22, v15);
  if (v23 == enum case for WidgetFamily.systemSmall(_:) || v23 == enum case for WidgetFamily.systemMedium(_:))
  {
    v30 = v38;
    sub_10004CB14(v38);
    v31 = v39;
    v32 = v44;
    (*(v39 + 16))(v8, v30, v44);
    swift_storeEnumTagMultiPayload();
    sub_10004E180();
    v33 = sub_10000221C(&qword_100086770, &qword_100069E20);
    v34 = sub_10000221C(&qword_100086778, &qword_100069E28);
    v35 = sub_100009F14(&qword_100086780, &qword_100086778, &qword_100069E28);
    v36 = sub_10004E3B0();
    v46 = v34;
    v47 = &type metadata for WidgetLabelStyle;
    v48 = v35;
    v49 = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v33;
    v47 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_100063B44();
    sub_100016718(v11, v41, &qword_100086720, &qword_100069DF0);
    swift_storeEnumTagMultiPayload();
    sub_10004E404();
    sub_100063B44();
    sub_10000494C(v11, &qword_100086720, &qword_100069DF0);
    return (*(v31 + 8))(v30, v32);
  }

  else if (v23 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    sub_10004C5F4(v14);
    sub_100016718(v14, v8, &qword_100086728, &qword_100069DF8);
    swift_storeEnumTagMultiPayload();
    sub_10004E180();
    v24 = sub_10000221C(&qword_100086770, &qword_100069E20);
    v25 = sub_10000221C(&qword_100086778, &qword_100069E28);
    v26 = sub_100009F14(&qword_100086780, &qword_100086778, &qword_100069E28);
    v27 = sub_10004E3B0();
    v46 = v25;
    v47 = &type metadata for WidgetLabelStyle;
    v48 = v26;
    v49 = v27;
    v28 = swift_getOpaqueTypeConformance2();
    v46 = v24;
    v47 = v28;
    swift_getOpaqueTypeConformance2();
    sub_100063B44();
    sub_100016718(v11, v41, &qword_100086720, &qword_100069DF0);
    swift_storeEnumTagMultiPayload();
    sub_10004E404();
    sub_100063B44();
    sub_10000494C(v11, &qword_100086720, &qword_100069DF0);
    return sub_10000494C(v14, &qword_100086728, &qword_100069DF8);
  }

  else
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_100064434(39);

    v46 = 0xD000000000000025;
    v47 = 0x8000000100073580;
    sub_100030A08(v20);
    sub_10004E9B0(&qword_100085E30, &type metadata accessor for WidgetFamily);
    v50._countAndFlagsBits = sub_100064584();
    sub_1000642D4(v50);

    (*(v16 + 8))(v20, v15);
    result = sub_100064474();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004C5F4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = sub_100063D94();
  v2 = *(v39 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v39);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000021D4(&qword_100086748, &unk_100069E08);
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v33);
  v9 = &v31 - v8;
  v10 = sub_1000021D4(&qword_100086790, &qword_100069E30);
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v32 = &v31 - v12;
  v36 = sub_1000021D4(&qword_100086738, &qword_100069E00);
  v13 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v15 = &v31 - v14;
  v16 = sub_1000021D4(&qword_100086798, &qword_100069E38);
  v34 = *(v16 - 8);
  v35 = v16;
  v17 = *(v34 + 64);
  __chkstk_darwin(v16);
  v19 = &v31 - v18;
  v41 = v1;
  sub_1000021D4(&qword_1000867A0, &qword_100069E40);
  sub_1000021D4(&qword_1000867A8, &qword_100069E48);
  sub_10004E560();
  v42 = &type metadata for Image;
  v43 = &protocol witness table for Image;
  swift_getOpaqueTypeConformance2();
  sub_100064024();
  if (*(v1 + *(type metadata accessor for WidgetHeaderView() + 28) + 24))
  {
    v20 = 0x4010000000000000;
    v21 = sub_100063A04();
    v22 = 0;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v22 = 2;
  }

  v42 = v21;
  v43 = v20;
  v44 = v22;
  sub_100009F14(&qword_100086750, &qword_100086748, &unk_100069E08);
  sub_10004E3B0();
  v24 = v32;
  v23 = v33;
  sub_100063E94();
  (*(v6 + 8))(v9, v23);
  sub_100063D14();
  v25 = v39;
  (*(v2 + 104))(v5, enum case for Font.Leading.tight(_:), v39);
  v26 = sub_100063DA4();

  (*(v2 + 8))(v5, v25);
  KeyPath = swift_getKeyPath();
  (*(v37 + 32))(v15, v24, v38);
  v28 = &v15[*(v36 + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  sub_100063D54();
  sub_10004E274();
  sub_100063E84();
  sub_10000494C(v15, &qword_100086738, &qword_100069E00);
  LODWORD(KeyPath) = sub_100063BB4();
  v29 = v40;
  (*(v34 + 32))(v40, v19, v35);
  result = sub_1000021D4(&qword_100086728, &qword_100069DF8);
  *(v29 + *(result + 36)) = KeyPath;
  return result;
}

uint64_t sub_10004CB14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = sub_100063814();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  __chkstk_darwin(v3);
  v66 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000021D4(&qword_100086778, &qword_100069E28);
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  __chkstk_darwin(v6);
  v59 = &v53 - v8;
  v9 = sub_1000021D4(&qword_100086770, &qword_100069E20);
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  __chkstk_darwin(v9);
  v62 = &v53 - v11;
  v12 = sub_100063864();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v53 - v18;
  v20 = type metadata accessor for WidgetHeaderView();
  v21 = (v1 + *(v20 + 28));
  v22 = v21[3];
  if (v22)
  {
    v23 = *v21;
    v24 = v21[1];
    v25 = v21[2];
    v69 = v25 & 1;
    v26 = *(v20 + 24);
    sub_10004E5E4(v23, v24, v25 & 1);

    sub_1000307B8(v19);
    sub_100063844();
    sub_10004E9B0(&qword_100085340, &type metadata accessor for RedactionReasons);
    LOBYTE(v26) = sub_1000643C4();
    v27 = *(v13 + 8);
    v27(v17, v12);
    v27(v19, v12);
    if (v26)
    {
      v57 = v24;
      v58 = v23;
      v70 = 0xD00000000000007CLL;
      v71 = 0x800000010006C620;
      sub_100002264();
      v28 = sub_100063E14();
      v24 = v29;
      v31 = v30 & 1;
      goto LABEL_7;
    }

    v31 = v69;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v31 = 0;
  }

  sub_10004E5F4(v23, v24, v31, v22);
  v57 = v24;
  v58 = v23;
  v28 = v23;
  v69 = v31;
LABEL_7:
  v32 = __chkstk_darwin(v28);
  v55 = v24;
  v56 = v32;
  *(&v53 - 6) = v32;
  *(&v53 - 5) = v24;
  v53 = v31;
  v54 = v33;
  *(&v53 - 4) = v31;
  *(&v53 - 3) = v33;
  *(&v53 - 2) = v2;
  __chkstk_darwin(v32);
  *(&v53 - 2) = v2;
  sub_1000021D4(&qword_1000867B8, &qword_100069E80);
  sub_1000021D4(&qword_1000867C0, &qword_100069E88);
  v34 = sub_10000221C(&qword_1000867C8, &qword_100069E90);
  v35 = sub_10004E650();
  v70 = v34;
  v71 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = sub_10000221C(&qword_100086818, &qword_100069EB8);
  v37 = sub_10000221C(&qword_100086820, &qword_100069EC0);
  v38 = sub_10004E8B4();
  v70 = v37;
  v71 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = v36;
  v71 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v40 = v59;
  sub_100064024();
  if (v22)
  {
    v41 = 1;
    v42 = 0x7FF0000000000000;
    v43 = sub_100063A14();
  }

  else
  {
    v43 = 0;
    v42 = 0;
    v41 = 2;
  }

  v70 = v43;
  v71 = v42;
  LOBYTE(v72) = v41;
  v44 = sub_100009F14(&qword_100086780, &qword_100086778, &qword_100069E28);
  v45 = sub_10004E3B0();
  v47 = v61;
  v46 = v62;
  sub_100063E94();
  (*(v60 + 8))(v40, v47);
  v49 = v66;
  v48 = v67;
  v50 = v68;
  (*(v67 + 104))(v66, enum case for DynamicTypeSize.large(_:), v68);
  v70 = v47;
  v71 = &type metadata for WidgetLabelStyle;
  v72 = v44;
  v73 = v45;
  swift_getOpaqueTypeConformance2();
  v51 = v64;
  sub_100063ED4();
  sub_10004E96C(v56, v55, v53, v54);
  sub_10004E96C(v58, v57, v69, v22);
  (*(v48 + 8))(v49, v50);
  return (*(v63 + 8))(v46, v51);
}

uint64_t sub_10004D1BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for WidgetHeaderView() + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v6 & 1;
  if (v7)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  if (!v7)
  {
    v8 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v8;
  a2[3] = v7;
  return sub_10004E5F4(v4, v5, v6, v7);
}

uint64_t sub_10004D218()
{
  sub_100063FC4();
  sub_100063EA4();
}

uint64_t sub_10004D298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a5;
  v54 = a4;
  v49 = a2;
  v50 = a3;
  v48 = a1;
  v56 = a6;
  v47 = sub_1000021D4(&qword_100086898, &qword_100069F40);
  v6 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v46 = &v45 - v7;
  v8 = sub_100064134();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v45 - v13;
  v15 = sub_100063D94();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000021D4(&qword_1000867E0, &qword_100069E98);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v45 - v23;
  v55 = sub_1000021D4(&qword_1000867C8, &qword_100069E90);
  v25 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v27 = &v45 - v26;
  sub_100063DB4();
  (*(v16 + 104))(v19, enum case for Font.Leading.tight(_:), v15);
  v28 = sub_100063DA4();

  (*(v16 + 8))(v19, v15);
  KeyPath = swift_getKeyPath();
  v57 = v48;
  v58 = v49;
  v59 = v50;
  v60 = v54;
  v61 = KeyPath;
  v62 = v28;
  sub_1000021D4(&qword_1000867E8, &unk_100069EA0);
  sub_10004E7FC();
  sub_100063F34();

  v30 = swift_getKeyPath();
  v31 = *(v21 + 44);
  v54 = v24;
  v32 = &v24[v31];
  *v32 = v30;
  *(v32 + 1) = 1;
  v32[16] = 0;
  v33 = v53 + *(type metadata accessor for WidgetHeaderView() + 20);
  sub_1000309E0(v14);
  sub_100064124();
  LOBYTE(v33) = sub_100064104();
  v34 = v52;
  v35 = *(v51 + 8);
  v35(v12, v52);
  v35(v14, v34);
  if (v33)
  {
    LODWORD(v57) = sub_100063BA4();
  }

  else
  {
    v36 = sub_100063BB4();
    v37 = v47;
    v38 = *(v47 + 36);
    v39 = enum case for BlendMode.plusDarker(_:);
    v40 = sub_100064094();
    v41 = *(*(v40 - 8) + 104);
    v42 = v46;
    v41(&v46[v38], v39, v40);
    v41(&v42[*(v37 + 40)], enum case for BlendMode.plusLighter(_:), v40);
    *v42 = v36;
    sub_100009F14(&qword_1000868A0, &qword_100086898, &qword_100069F40);
  }

  v43 = sub_1000637F4();
  sub_10004EDE8(v54, v27);
  *&v27[*(v55 + 36)] = v43;
  sub_10004E650();
  sub_100063E24();
  return sub_10000494C(v27, &qword_1000867C8, &qword_100069E90);
}

uint64_t sub_10004D784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_1000021D4(&qword_100084BC0, qword_100064C60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v33 - v4;
  v34 = sub_100063344();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100063454();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000021D4(&qword_100086838, &unk_100069EC8);
  v35 = *(v15 - 8);
  v36 = v15;
  v16 = *(v35 + 64);
  __chkstk_darwin(v15);
  v18 = &v33 - v17;
  v19 = sub_1000021D4(&qword_100086820, &qword_100069EC0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v33 - v21;
  v23 = sub_1000021D4(&qword_100086818, &qword_100069EB8);
  v37 = *(v23 - 8);
  v38 = v23;
  v24 = *(v37 + 64);
  __chkstk_darwin(v23);
  v26 = &v33 - v25;
  sub_100063334();
  sub_100063324();
  sub_100063304();
  result = (*(v11 + 48))(v5, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v9, v34);
    v28 = (*(v11 + 32))(v14, v5, v10);
    __chkstk_darwin(v28);
    *(&v33 - 2) = v39;
    sub_1000021D4(&qword_100086840, &qword_100069ED8);
    sub_10004EA00();
    sub_100063DC4();
    sub_100064084();
    sub_1000637E4();
    (*(v35 + 32))(v22, v18, v36);
    v29 = &v22[*(v19 + 36)];
    v30 = v44;
    *v29 = v43;
    *(v29 + 1) = v30;
    *(v29 + 2) = v45;
    v31 = sub_10004E8B4();
    sub_100063E24();
    sub_10000494C(v22, &qword_100086820, &qword_100069EC0);
    v41 = v19;
    v42 = v31;
    swift_getOpaqueTypeConformance2();
    v32 = v38;
    sub_100063EA4();
    return (*(v37 + 8))(v26, v32);
  }

  return result;
}

uint64_t sub_10004DC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_100063FB4();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000021D4(&qword_100086890, &unk_100069F00);
  v7 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v9 = &v39 - v8;
  v10 = sub_1000021D4(&qword_100084C30, &qword_100064EE8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v39 - v12;
  v43 = sub_1000021D4(&qword_100086858, &qword_100069EE0);
  v14 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v16 = (&v39 - v15);
  v17 = sub_100064134();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v39 - v23;
  v25 = a1 + *(type metadata accessor for WidgetHeaderView() + 20);
  sub_1000309E0(v24);
  sub_100064124();
  LOBYTE(v25) = sub_100064104();
  v26 = *(v18 + 8);
  v26(v22, v17);
  v26(v24, v17);
  if (v25)
  {
    v27 = sub_100063FC4();
    v28 = sub_100063D34();
    (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
    v29 = sub_100063D74();
    sub_10000494C(v13, &qword_100084C30, &qword_100064EE8);
    KeyPath = swift_getKeyPath();
    v31 = (v16 + *(v43 + 36));
    v32 = *(sub_1000021D4(&qword_100086878, &qword_100069EF0) + 28);
    v33 = enum case for Image.Scale.large(_:);
    v34 = sub_100063FE4();
    (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
    *v31 = swift_getKeyPath();
    *v16 = v27;
    v16[1] = KeyPath;
    v16[2] = v29;
    sub_10004ED70(v16, v9);
    swift_storeEnumTagMultiPayload();
    sub_1000021D4(&qword_100086888, &qword_100069EF8);
    sub_10004EA8C();
    sub_10004EBFC();
    sub_100063B44();
    return sub_10000494C(v16, &qword_100086858, &qword_100069EE0);
  }

  else
  {
    sub_100064004();
    v37 = v40;
    v36 = v41;
    (*(v40 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v41);
    v38 = sub_100063FF4();

    (*(v37 + 8))(v6, v36);
    *v9 = v38;
    *(v9 + 1) = 0;
    *(v9 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000021D4(&qword_100086888, &qword_100069EF8);
    sub_10004EA8C();
    sub_10004EBFC();
    return sub_100063B44();
  }
}

unint64_t sub_10004E180()
{
  result = qword_100086730;
  if (!qword_100086730)
  {
    sub_10000221C(&qword_100086728, &qword_100069DF8);
    sub_10000221C(&qword_100086738, &qword_100069E00);
    sub_10004E274();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_100086760, &qword_100086768, &qword_100069E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086730);
  }

  return result;
}

unint64_t sub_10004E274()
{
  result = qword_100086740;
  if (!qword_100086740)
  {
    sub_10000221C(&qword_100086738, &qword_100069E00);
    sub_10000221C(&qword_100086748, &unk_100069E08);
    sub_100009F14(&qword_100086750, &qword_100086748, &unk_100069E08);
    sub_10004E3B0();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_100085398, &qword_1000853A0, &qword_100066A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086740);
  }

  return result;
}

unint64_t sub_10004E3B0()
{
  result = qword_100086758;
  if (!qword_100086758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086758);
  }

  return result;
}

unint64_t sub_10004E404()
{
  result = qword_100086788;
  if (!qword_100086788)
  {
    sub_10000221C(&qword_100086720, &qword_100069DF0);
    sub_10004E180();
    sub_10000221C(&qword_100086770, &qword_100069E20);
    sub_10000221C(&qword_100086778, &qword_100069E28);
    sub_100009F14(&qword_100086780, &qword_100086778, &qword_100069E28);
    sub_10004E3B0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086788);
  }

  return result;
}

unint64_t sub_10004E560()
{
  result = qword_1000867B0;
  if (!qword_1000867B0)
  {
    sub_10000221C(&qword_1000867A0, &qword_100069E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000867B0);
  }

  return result;
}

uint64_t sub_10004E5E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10004E5F4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10004E5E4(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10004E650()
{
  result = qword_1000867D0;
  if (!qword_1000867D0)
  {
    sub_10000221C(&qword_1000867C8, &qword_100069E90);
    sub_10004E708();
    sub_100009F14(&qword_100086808, &qword_100086810, &qword_100069EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000867D0);
  }

  return result;
}

unint64_t sub_10004E708()
{
  result = qword_1000867D8;
  if (!qword_1000867D8)
  {
    sub_10000221C(&qword_1000867E0, &qword_100069E98);
    sub_10000221C(&qword_1000867E8, &unk_100069EA0);
    sub_10004E7FC();
    swift_getOpaqueTypeConformance2();
    sub_100009F14(&qword_1000867F8, &qword_100086800, &unk_10006A620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000867D8);
  }

  return result;
}

unint64_t sub_10004E7FC()
{
  result = qword_1000867F0;
  if (!qword_1000867F0)
  {
    sub_10000221C(&qword_1000867E8, &unk_100069EA0);
    sub_10004E560();
    sub_100009F14(&qword_100085398, &qword_1000853A0, &qword_100066A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000867F0);
  }

  return result;
}

unint64_t sub_10004E8B4()
{
  result = qword_100086828;
  if (!qword_100086828)
  {
    sub_10000221C(&qword_100086820, &qword_100069EC0);
    sub_100009F14(&qword_100086830, &qword_100086838, &unk_100069EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086828);
  }

  return result;
}

uint64_t sub_10004E96C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100016708(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10004E9B0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004EA00()
{
  result = qword_100086848;
  if (!qword_100086848)
  {
    sub_10000221C(&qword_100086840, &qword_100069ED8);
    sub_10004EA8C();
    sub_10004EBFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086848);
  }

  return result;
}

unint64_t sub_10004EA8C()
{
  result = qword_100086850;
  if (!qword_100086850)
  {
    sub_10000221C(&qword_100086858, &qword_100069EE0);
    sub_10004EB44();
    sub_100009F14(&qword_100086870, &qword_100086878, &qword_100069EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100086850);
  }

  return result;
}