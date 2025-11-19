uint64_t sub_10001C95C()
{
  sub_1000D154C();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  sub_1000D154C();
  *(v0 + 225) = *(v0 + 224);
  if (qword_100121FA8 != -1)
  {
    swift_once();
  }

  v3 = qword_10013C068;
  *(v0 + 152) = qword_10013C068;

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  v5 = sub_10000FC38(&qword_100123468, &qword_100123470);
  *(v0 + 168) = v5;
  *v4 = v0;
  v4[1] = sub_10001CAC8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 225, v3, &type metadata for Bool, v5);
}

uint64_t sub_10001CAC8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_10001CC38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001CC38()
{
  sub_1000D154C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v0[23] = v2;
  v0[24] = v3;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v3;
  v4 = qword_10013C068;
  v0[25] = qword_10013C068;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100014DE4;
  v6 = v0[21];

  return AppEntity._value<A, B>(for:)(v0 + 226, v4, v6);
}

uint64_t (*sub_10001CD1C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_10001CD90(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

uint64_t sub_10001CE04()
{
  if (qword_100121FA8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10001CE64()
{
  result = qword_100123310;
  if (!qword_100123310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123310);
  }

  return result;
}

unint64_t sub_10001CEBC()
{
  result = qword_100123318;
  if (!qword_100123318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123318);
  }

  return result;
}

uint64_t sub_10001CFCC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100121FA0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908);
  v3 = sub_100006610(v2, qword_10013C050);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_10001D050(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013B8C;

  return sub_10001C938(a1, v5, v4);
}

uint64_t sub_10001D0FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001E7E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10001D144()
{
  result = qword_100123320;
  if (!qword_100123320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123320);
  }

  return result;
}

unint64_t sub_10001D19C()
{
  result = qword_100123328;
  if (!qword_100123328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123328);
  }

  return result;
}

uint64_t sub_10001D210()
{
  if (qword_100122140 != -1)
  {
    swift_once();
  }

  v1 = sub_10001DF8C();
  v2 = (*(v1 + 48))(&type metadata for TVSettingsShowSportsScoresEntity, v1);
  v4 = v3;
  if (qword_100122148 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = off_1001260A0;
  if (*(off_1001260A0 + 2) && (v6 = sub_1000232F8(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();

  **(v0 + 40) = sub_1000B8110(v8) & 1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10001D3C0()
{
  sub_10006F124(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001D45C()
{
  v1 = *(v0 + 16);
  *v1 = sub_10001EC48();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_10001D4CC()
{
  result = qword_100123330;
  if (!qword_100123330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123330);
  }

  return result;
}

uint64_t sub_10001D520(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10001E130();
  *v4 = v2;
  v4[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10001D5D4()
{
  result = qword_100123338;
  if (!qword_100123338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123338);
  }

  return result;
}

unint64_t sub_10001D62C()
{
  result = qword_100123340;
  if (!qword_100123340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123340);
  }

  return result;
}

unint64_t sub_10001D684()
{
  result = qword_100123348;
  if (!qword_100123348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123348);
  }

  return result;
}

uint64_t sub_10001D6D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001E130();
  *v5 = v2;
  v5[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10001D78C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10001E130();
  *v4 = v2;
  v4[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10001D840()
{
  result = qword_100123350;
  if (!qword_100123350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123350);
  }

  return result;
}

unint64_t sub_10001D898()
{
  result = qword_100123358;
  if (!qword_100123358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123358);
  }

  return result;
}

unint64_t sub_10001D8F0()
{
  result = qword_100123360;
  if (!qword_100123360)
  {
    sub_10000637C(&qword_100123368);
    sub_10001D898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123360);
  }

  return result;
}

uint64_t sub_10001D974(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001D4CC();
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10001DA9C(uint64_t a1)
{
  v2 = sub_10001DF8C();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_10001D684();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_10001DB44()
{
  sub_10001DF10();
  v1 = sub_1000D169C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10001DBE8(uint64_t a1)
{
  v2 = sub_10001D684();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001DC34(uint64_t a1)
{
  v2 = sub_10001D19C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_10001DC80(uint64_t a1)
{
  v2 = sub_10001DD28();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10001DCD0()
{
  result = qword_100123370;
  if (!qword_100123370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123370);
  }

  return result;
}

unint64_t sub_10001DD28()
{
  result = qword_100123378;
  if (!qword_100123378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123378);
  }

  return result;
}

unint64_t sub_10001DD7C()
{
  result = qword_100123380;
  if (!qword_100123380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123380);
  }

  return result;
}

unint64_t sub_10001DDD4()
{
  result = qword_100123388;
  if (!qword_100123388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123388);
  }

  return result;
}

unint64_t sub_10001DE30()
{
  result = qword_100123390;
  if (!qword_100123390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123390);
  }

  return result;
}

unint64_t sub_10001DE84(void *a1)
{
  a1[1] = sub_10001DEBC();
  a1[2] = sub_10001DF10();
  result = sub_10001D19C();
  a1[3] = result;
  return result;
}

unint64_t sub_10001DEBC()
{
  result = qword_1001233E0;
  if (!qword_1001233E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001233E0);
  }

  return result;
}

unint64_t sub_10001DF10()
{
  result = qword_1001233E8;
  if (!qword_1001233E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001233E8);
  }

  return result;
}

unint64_t sub_10001DF64(uint64_t a1)
{
  result = sub_10001DF8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001DF8C()
{
  result = qword_100123430;
  if (!qword_100123430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123430);
  }

  return result;
}

unint64_t sub_10001E028()
{
  result = qword_100123448;
  if (!qword_100123448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123448);
  }

  return result;
}

unint64_t sub_10001E080()
{
  result = qword_100123450;
  if (!qword_100123450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123450);
  }

  return result;
}

unint64_t sub_10001E0D8()
{
  result = qword_100123458;
  if (!qword_100123458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123458);
  }

  return result;
}

unint64_t sub_10001E130()
{
  result = qword_100123460;
  if (!qword_100123460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123460);
  }

  return result;
}

uint64_t sub_10001E184@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_100006334(&qword_100122BC8);
  v2 = *(v1 - 8);
  v36 = v1;
  v37 = v2;
  __chkstk_darwin(v1);
  v32 = &v32 - v3;
  v4 = sub_100006334(&qword_100122BD0);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v33 = &v32 - v6;
  v7 = sub_100006334(&qword_100122BD8);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  __chkstk_darwin(v7);
  v34 = &v32 - v9;
  v10 = sub_100006334(&qword_100122BE0);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  __chkstk_darwin(v10);
  v35 = &v32 - v12;
  strcpy(v45, "com.apple.tv.");
  HIWORD(v45[1]) = -4864;
  v13 = sub_10001F000();
  v14 = *(v13 + 40);
  v52._countAndFlagsBits = (v14)(&type metadata for TVSettingsShowSportsScoresWidget, v13);
  sub_1000D366C(v52);

  swift_getKeyPath();
  sub_100006334(&qword_100122BE8);
  sub_10001D19C();
  sub_10000FC38(&qword_100122BF0, &qword_100122BE8);
  v15 = v32;
  sub_1000D32DC();
  v45[0] = v14();
  v45[1] = v16;
  v50 = 0x746567646957;
  v51 = 0xE600000000000000;
  v48 = 0x656C67676F54;
  v49 = 0xE600000000000000;
  v31 = sub_10000F320();
  v17 = sub_1000D387C();
  v19 = v18;

  v45[0] = v17;
  v45[1] = v19;
  v20 = sub_10000FC38(&qword_100122BF8, &qword_100122BC8);
  v21 = v33;
  v22 = v36;
  sub_1000D223C();

  (*(v37 + 8))(v15, v22);
  v50 = 0xD00000000000002DLL;
  v51 = 0x80000001000D7040;
  v45[0] = v22;
  v45[1] = &type metadata for String;
  v46 = v20;
  v47 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v34;
  v25 = v38;
  sub_1000D21FC();
  (*(v39 + 8))(v21, v25);
  v45[0] = v25;
  v45[1] = &type metadata for String;
  v46 = OpaqueTypeConformance2;
  v47 = v31;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v35;
  v28 = v40;
  sub_1000D224C();
  (*(v41 + 8))(v24, v28);
  v45[0] = v28;
  v45[1] = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v42;
  sub_1000D227C();
  return (*(v43 + 8))(v27, v29);
}

uint64_t sub_10001E7E0()
{
  v0 = sub_100006334(&qword_100122B50);
  __chkstk_darwin(v0 - 8);
  v28 = v22 - v1;
  v29 = sub_1000D168C();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006334(&qword_1001228E8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  v11 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = sub_1000D18BC();
  v27 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[0] = sub_100006334(&qword_100123478);
  sub_1000D188C();
  v16 = *(v15 + 56);
  v25 = v15 + 56;
  v26 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_1000D150C();
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v24 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v22[1] = v2 + 104;
  v23 = v19;
  v19(v4);
  sub_10001D684();
  v22[0] = sub_1000D157C();
  sub_100006334(&qword_100122B60);
  sub_1000D188C();
  v26(v13, 1, 1, v27);
  LOBYTE(v30) = 2;
  v20 = sub_1000D36FC();
  (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v23(v4, v24, v29);
  sub_1000D158C();
  return v22[0];
}

uint64_t sub_10001EC48()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsShowSportsScoresEntity;
  sub_100006334(&qword_100122DB0);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100123308);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100123468, &qword_100123470);
  sub_1000D179C();
  return v7;
}

unint64_t sub_10001EF5C(uint64_t a1)
{
  result = sub_10001EF84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001EF84()
{
  result = qword_1001234C8;
  if (!qword_1001234C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001234C8);
  }

  return result;
}

unint64_t sub_10001EFD8(uint64_t a1)
{
  result = sub_10001F000();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001F000()
{
  result = qword_1001234D0;
  if (!qword_1001234D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001234D0);
  }

  return result;
}

uint64_t sub_10001F054()
{
  sub_10000637C(&qword_100122BE0);
  sub_10000637C(&qword_100122BD8);
  sub_10000637C(&qword_100122BD0);
  sub_10000637C(&qword_100122BC8);
  sub_10000FC38(&qword_100122BF8, &qword_100122BC8);
  sub_10000F320();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10001F1E0()
{
  result = qword_1001234E0;
  if (!qword_1001234E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001234E0);
  }

  return result;
}

uint64_t sub_10001F278()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C070);
  sub_100006610(v10, qword_10013C070);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_10001F564()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C088);
  sub_100006610(v0, qword_10013C088);
  return sub_1000D188C();
}

uint64_t sub_10001F5C8()
{
  v0 = sub_100006334(&qword_100122908);
  sub_1000065AC(v0, qword_10013C0A0);
  v1 = sub_100006610(v0, qword_10013C0A0);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10001F688()
{
  result = swift_getKeyPath();
  qword_10013C0B8 = result;
  return result;
}

uint64_t sub_10001F6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_10001F6D4, 0, 0);
}

uint64_t sub_10001F6D4()
{
  sub_1000D154C();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  sub_1000D154C();
  *(v0 + 225) = *(v0 + 224);
  if (qword_100121FC8 != -1)
  {
    swift_once();
  }

  v3 = qword_10013C0B8;
  *(v0 + 152) = qword_10013C0B8;

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  v5 = sub_10000FC38(&qword_100123650, &qword_100123658);
  *(v0 + 168) = v5;
  *v4 = v0;
  v4[1] = sub_10001F840;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 225, v3, &type metadata for Bool, v5);
}

uint64_t sub_10001F840()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_10001F9B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001F9B0()
{
  sub_1000D154C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v0[23] = v2;
  v0[24] = v3;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v3;
  v4 = qword_10013C0B8;
  v0[25] = qword_10013C0B8;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100014DE4;
  v6 = v0[21];

  return AppEntity._value<A, B>(for:)(v0 + 226, v4, v6);
}

uint64_t (*sub_10001FA94(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_10001FB08(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

uint64_t sub_10001FB7C()
{
  if (qword_100121FC8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10001FBDC()
{
  result = qword_1001234F8;
  if (!qword_1001234F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001234F8);
  }

  return result;
}

unint64_t sub_10001FC34()
{
  result = qword_100123500;
  if (!qword_100123500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123500);
  }

  return result;
}

uint64_t sub_10001FD44@<X0>(uint64_t a1@<X8>)
{
  if (qword_100121FC0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908);
  v3 = sub_100006610(v2, qword_10013C0A0);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_10001FDC8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013B8C;

  return sub_10001F6B0(a1, v5, v4);
}

uint64_t sub_10001FE74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100021514();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10001FEBC()
{
  result = qword_100123508;
  if (!qword_100123508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123508);
  }

  return result;
}

unint64_t sub_10001FF14()
{
  result = qword_100123510;
  if (!qword_100123510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123510);
  }

  return result;
}

uint64_t sub_10001FF88()
{
  if (qword_100122140 != -1)
  {
    swift_once();
  }

  v1 = sub_100020CC0();
  v2 = (*(v1 + 48))(&type metadata for TVSettingsUseDownloadAVAdapterEntity, v1);
  v4 = v3;
  if (qword_100122148 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = off_1001260A0;
  if (*(off_1001260A0 + 2) && (v6 = sub_1000232F8(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();

  **(v0 + 40) = sub_1000B8110(v8) & 1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100020138()
{
  sub_10006F320(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000201D4()
{
  v1 = *(v0 + 16);
  *v1 = sub_10002197C();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_100020244()
{
  result = qword_100123518;
  if (!qword_100123518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123518);
  }

  return result;
}

uint64_t sub_100020298(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100020E64();
  *v4 = v2;
  v4[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10002034C()
{
  result = qword_100123520;
  if (!qword_100123520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123520);
  }

  return result;
}

unint64_t sub_1000203A4()
{
  result = qword_100123528;
  if (!qword_100123528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123528);
  }

  return result;
}

unint64_t sub_1000203FC()
{
  result = qword_100123530;
  if (!qword_100123530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123530);
  }

  return result;
}

uint64_t sub_100020450(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100020E64();
  *v5 = v2;
  v5[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100020504(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100020E64();
  *v4 = v2;
  v4[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000205B8()
{
  result = qword_100123538;
  if (!qword_100123538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123538);
  }

  return result;
}

unint64_t sub_100020610()
{
  result = qword_100123540;
  if (!qword_100123540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123540);
  }

  return result;
}

unint64_t sub_100020668()
{
  result = qword_100123548;
  if (!qword_100123548)
  {
    sub_10000637C(&qword_100123550);
    sub_100020610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123548);
  }

  return result;
}

uint64_t sub_1000206EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100020244();
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000207D0(uint64_t a1)
{
  v2 = sub_100020CC0();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_1000203FC();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_100020878()
{
  sub_100020C44();
  v1 = sub_1000D169C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10002091C(uint64_t a1)
{
  v2 = sub_1000203FC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100020968(uint64_t a1)
{
  v2 = sub_10001FF14();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_1000209B4(uint64_t a1)
{
  v2 = sub_100020A5C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100020A04()
{
  result = qword_100123558;
  if (!qword_100123558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123558);
  }

  return result;
}

unint64_t sub_100020A5C()
{
  result = qword_100123560;
  if (!qword_100123560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123560);
  }

  return result;
}

unint64_t sub_100020AB0()
{
  result = qword_100123568;
  if (!qword_100123568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123568);
  }

  return result;
}

unint64_t sub_100020B08()
{
  result = qword_100123570;
  if (!qword_100123570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123570);
  }

  return result;
}

unint64_t sub_100020B64()
{
  result = qword_100123578;
  if (!qword_100123578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123578);
  }

  return result;
}

unint64_t sub_100020BB8(void *a1)
{
  a1[1] = sub_100020BF0();
  a1[2] = sub_100020C44();
  result = sub_10001FF14();
  a1[3] = result;
  return result;
}

unint64_t sub_100020BF0()
{
  result = qword_1001235C8;
  if (!qword_1001235C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001235C8);
  }

  return result;
}

unint64_t sub_100020C44()
{
  result = qword_1001235D0;
  if (!qword_1001235D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001235D0);
  }

  return result;
}

unint64_t sub_100020C98(uint64_t a1)
{
  result = sub_100020CC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100020CC0()
{
  result = qword_100123618;
  if (!qword_100123618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123618);
  }

  return result;
}

unint64_t sub_100020D5C()
{
  result = qword_100123630;
  if (!qword_100123630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123630);
  }

  return result;
}

unint64_t sub_100020DB4()
{
  result = qword_100123638;
  if (!qword_100123638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123638);
  }

  return result;
}

unint64_t sub_100020E0C()
{
  result = qword_100123640;
  if (!qword_100123640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123640);
  }

  return result;
}

unint64_t sub_100020E64()
{
  result = qword_100123648;
  if (!qword_100123648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123648);
  }

  return result;
}

uint64_t sub_100020EB8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_100006334(&qword_100122BC8);
  v2 = *(v1 - 8);
  v36 = v1;
  v37 = v2;
  __chkstk_darwin(v1);
  v32 = &v32 - v3;
  v4 = sub_100006334(&qword_100122BD0);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v33 = &v32 - v6;
  v7 = sub_100006334(&qword_100122BD8);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  __chkstk_darwin(v7);
  v34 = &v32 - v9;
  v10 = sub_100006334(&qword_100122BE0);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  __chkstk_darwin(v10);
  v35 = &v32 - v12;
  strcpy(v45, "com.apple.tv.");
  HIWORD(v45[1]) = -4864;
  v13 = sub_100021D38();
  v14 = *(v13 + 40);
  v52._countAndFlagsBits = (v14)(&type metadata for TVSettingsDownloadAVAdapterWidget, v13);
  sub_1000D366C(v52);

  swift_getKeyPath();
  sub_100006334(&qword_100122BE8);
  sub_10001FF14();
  sub_10000FC38(&qword_100122BF0, &qword_100122BE8);
  v15 = v32;
  sub_1000D32DC();
  v45[0] = v14();
  v45[1] = v16;
  v50 = 0x746567646957;
  v51 = 0xE600000000000000;
  v48 = 0x656C67676F54;
  v49 = 0xE600000000000000;
  v31 = sub_10000F320();
  v17 = sub_1000D387C();
  v19 = v18;

  v45[0] = v17;
  v45[1] = v19;
  v20 = sub_10000FC38(&qword_100122BF8, &qword_100122BC8);
  v21 = v33;
  v22 = v36;
  sub_1000D223C();

  (*(v37 + 8))(v15, v22);
  v50 = 0xD00000000000002CLL;
  v51 = 0x80000001000D71D0;
  v45[0] = v22;
  v45[1] = &type metadata for String;
  v46 = v20;
  v47 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v34;
  v25 = v38;
  sub_1000D21FC();
  (*(v39 + 8))(v21, v25);
  v45[0] = v25;
  v45[1] = &type metadata for String;
  v46 = OpaqueTypeConformance2;
  v47 = v31;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v35;
  v28 = v40;
  sub_1000D224C();
  (*(v41 + 8))(v24, v28);
  v45[0] = v28;
  v45[1] = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v42;
  sub_1000D227C();
  return (*(v43 + 8))(v27, v29);
}

uint64_t sub_100021514()
{
  v0 = sub_100006334(&qword_100122B50);
  __chkstk_darwin(v0 - 8);
  v28 = v22 - v1;
  v29 = sub_1000D168C();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006334(&qword_1001228E8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  v11 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = sub_1000D18BC();
  v27 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[0] = sub_100006334(&qword_100123660);
  sub_1000D188C();
  v16 = *(v15 + 56);
  v25 = v15 + 56;
  v26 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_1000D150C();
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v24 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v22[1] = v2 + 104;
  v23 = v19;
  v19(v4);
  sub_1000203FC();
  v22[0] = sub_1000D157C();
  sub_100006334(&qword_100122B60);
  sub_1000D188C();
  v26(v13, 1, 1, v27);
  LOBYTE(v30) = 2;
  v20 = sub_1000D36FC();
  (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v23(v4, v24, v29);
  sub_1000D158C();
  return v22[0];
}

uint64_t sub_10002197C()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsUseDownloadAVAdapterEntity;
  sub_100006334(&qword_100122DA8);
  v7 = sub_1000D361C();
  sub_100006334(&qword_1001234F0);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100123650, &qword_100123658);
  sub_1000D179C();
  return v7;
}

unint64_t sub_100021C94(uint64_t a1)
{
  result = sub_100021CBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100021CBC()
{
  result = qword_1001236B0;
  if (!qword_1001236B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001236B0);
  }

  return result;
}

unint64_t sub_100021D10(uint64_t a1)
{
  result = sub_100021D38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100021D38()
{
  result = qword_1001236B8;
  if (!qword_1001236B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001236B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpNextDisplayType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UpNextDisplayType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100021EF8()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C0C0);
  sub_100006610(v10, qword_10013C0C0);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_1000221E4()
{
  v0 = sub_100006334(&qword_100123738);
  __chkstk_darwin(v0 - 8);
  v53 = &v32 - v1;
  v2 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v2 - 8);
  v56 = &v32 - v3;
  v4 = sub_1000D189C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D1A2C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000D35EC();
  __chkstk_darwin(v9 - 8);
  v52 = sub_1000D18BC();
  v55 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006334(&qword_100123740);
  v11 = sub_100006334(&qword_100123748);
  v54 = v11;
  v12 = *(v11 - 8);
  v47 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v48 = v14;
  *(v14 + 16) = xmmword_1000E2080;
  v51 = v14 + v13;
  v46 = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_1000D358C();
  sub_1000D1A1C();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = v5 + 104;
  v17 = *(v5 + 104);
  v35 = v4;
  v17(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  v36 = "com.apple.Preferences";
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v17(v7, v15, v4);
  v49 = v16;
  v18 = v17;
  v33 = v17;
  v19 = v56;
  sub_1000D18CC();
  v20 = v55 + 56;
  v45 = *(v55 + 56);
  v45(v19, 0, 1, v52);
  v43 = sub_1000D15FC();
  v21 = *(v43 - 8);
  v42 = *(v21 + 56);
  v44 = v21 + 56;
  v42(v53, 1, 1, v43);
  v22 = sub_100006334(&qword_100123750);
  v55 = v20;
  v23 = *(v20 + 16);
  v40 = v22;
  v41 = v23;
  v39 = *(v20 + 24);
  v37 = (v39 + 32) & ~v39;
  v24 = swift_allocObject();
  v38 = xmmword_1000E0440;
  *(v24 + 16) = xmmword_1000E0440;
  sub_1000D358C();
  sub_1000D1A1C();
  v25 = v35;
  v18(v7, v15, v35);
  sub_1000D18CC();
  v26 = v51;
  sub_1000D162C();
  v27 = *(v54 + 48);
  v46 = (v26 + v47);
  v47 = v27;
  *v46 = 1;
  sub_1000D358C();
  sub_1000D1A1C();
  v34 = v15;
  v28 = v33;
  v33(v7, v15, v25);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v28(v7, v15, v25);
  v29 = v56;
  sub_1000D18CC();
  v45(v29, 0, 1, v52);
  v42(v53, 1, 1, v43);
  *(swift_allocObject() + 16) = v38;
  sub_1000D358C();
  sub_1000D1A1C();
  v28(v7, v34, v25);
  sub_1000D18CC();
  sub_1000D162C();
  v30 = sub_10002437C(v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10013C0D8 = v30;
  return result;
}

uint64_t sub_100022A00(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 49;
  }

  else
  {
    v2 = 48;
  }

  if (*a2)
  {
    v3 = 49;
  }

  else
  {
    v3 = 48;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1000D39CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_100022A6C()
{
  sub_1000D3A4C();
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_100022AC8()
{
  sub_1000D364C();
}

Swift::Int sub_100022B08()
{
  sub_1000D3A4C();
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_100022B60@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100118DF8;
  v8._object = v3;
  v5 = sub_1000D39AC(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100022BC0(uint64_t *a1@<X8>)
{
  v2 = 48;
  if (*v1)
  {
    v2 = 49;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_100022BF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100121FD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000D174C();
  v3 = sub_100006610(v2, qword_10013C0C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100022CA0(uint64_t a1)
{
  v2 = sub_100022EEC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100022CEC()
{
  if (qword_100121FD8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100022D48(uint64_t a1)
{
  v2 = sub_100022F9C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100022D98()
{
  result = qword_1001236C0;
  if (!qword_1001236C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001236C0);
  }

  return result;
}

unint64_t sub_100022DF0()
{
  result = qword_1001236C8;
  if (!qword_1001236C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001236C8);
  }

  return result;
}

unint64_t sub_100022E48()
{
  result = qword_1001236D0;
  if (!qword_1001236D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001236D0);
  }

  return result;
}

unint64_t sub_100022EEC()
{
  result = qword_1001236D8;
  if (!qword_1001236D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001236D8);
  }

  return result;
}

unint64_t sub_100022F44()
{
  result = qword_1001236E0;
  if (!qword_1001236E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001236E0);
  }

  return result;
}

unint64_t sub_100022F9C()
{
  result = qword_1001236E8;
  if (!qword_1001236E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001236E8);
  }

  return result;
}

unint64_t sub_100022FF4()
{
  result = qword_1001236F0;
  if (!qword_1001236F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001236F0);
  }

  return result;
}

unint64_t sub_10002304C()
{
  result = qword_1001236F8;
  if (!qword_1001236F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001236F8);
  }

  return result;
}

unint64_t sub_1000230A4()
{
  result = qword_100123700;
  if (!qword_100123700)
  {
    sub_10000637C(&qword_100123708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123700);
  }

  return result;
}

unint64_t sub_10002310C()
{
  result = qword_100123710;
  if (!qword_100123710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123710);
  }

  return result;
}

unint64_t sub_100023164()
{
  result = qword_100123718;
  if (!qword_100123718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123718);
  }

  return result;
}

unint64_t sub_1000231BC()
{
  result = qword_100123720;
  if (!qword_100123720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123720);
  }

  return result;
}

unint64_t sub_10002321C(uint64_t a1)
{
  *(a1 + 8) = sub_100022EEC();
  result = sub_10002324C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10002324C()
{
  result = qword_100123728;
  if (!qword_100123728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123728);
  }

  return result;
}

unint64_t sub_1000232A4()
{
  result = qword_100123730;
  if (!qword_100123730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123730);
  }

  return result;
}

unint64_t sub_1000232F8(uint64_t a1, uint64_t a2)
{
  sub_1000D3A4C();
  sub_1000D364C();
  v4 = sub_1000D3A6C();

  return sub_10002377C(a1, a2, v4);
}

unint64_t sub_100023370(char a1)
{
  sub_1000D3A4C();
  sub_10005F6D4(a1);
  sub_1000D364C();

  v2 = sub_1000D3A6C();

  return sub_100023834(a1, v2);
}

unint64_t sub_1000233F8(char a1)
{
  sub_1000D3A4C();
  sub_1000D364C();

  v2 = sub_1000D3A6C();

  return sub_100023938(a1 & 1, v2);
}

unint64_t sub_10002347C(char a1)
{
  sub_1000D3A4C();
  sub_1000D364C();

  v2 = sub_1000D3A6C();
  return sub_100023A24(a1 & 1, v2);
}

unint64_t sub_100023520(char a1)
{
  sub_1000D3A4C();
  sub_1000D364C();

  v2 = sub_1000D3A6C();

  return sub_100023B40(a1, v2);
}

unint64_t sub_1000235E4(char a1)
{
  sub_1000D3A4C();
  sub_1000D364C();

  v2 = sub_1000D3A6C();
  return sub_100023CBC(a1 & 1, v2);
}

unint64_t sub_100023678(uint64_t a1)
{
  sub_1000D318C();
  sub_1000250D4(&qword_1001237E0);
  v2 = sub_1000D352C();

  return sub_100023DE0(a1, v2);
}

unint64_t sub_1000236FC(char a1)
{
  sub_1000D3A4C();
  sub_1000D364C();

  v2 = sub_1000D3A6C();

  return sub_100023F8C(a1 & 1, v2);
}

unint64_t sub_10002377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000D39CC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100023834(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = sub_10005F6D4(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == sub_10005F6D4(a1) && v9 == v10)
      {
        break;
      }

      v12 = sub_1000D39CC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100023938(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 49;
    }

    else
    {
      v6 = 48;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 49 : 48;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_1000D39CC();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_100023A24(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6C61755174736542;
    }

    else
    {
      v6 = 0x6C617551646F6F47;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x6C61755174736542 : 0x6C617551646F6F47;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_1000D39CC();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_100023B40(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000016;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v5 = 0xD000000000000015;
        v6 = "DarkAppearanceOption";
      }

      else
      {
        v6 = "LightAppearanceOption";
      }

      v7 = *(*(v2 + 48) + v4) ? v5 : 0xD000000000000014;
      v8 = *(*(v2 + 48) + v4) ? v6 : "BestQualityDownload";
      if (a1)
      {
        v9 = a1 == 1 ? 0xD000000000000015 : 0xD000000000000016;
        v10 = a1 == 1 ? "DarkAppearanceOption" : "LightAppearanceOption";
      }

      else
      {
        v9 = 0xD000000000000014;
        v10 = "BestQualityDownload";
      }

      if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v11 = sub_1000D39CC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100023CBC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = "BestQualityDownload";
    }

    else
    {
      v6 = "GoodQualityDownload";
    }

    v7 = (v6 - 32) | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? "BestQualityDownload" : "GoodQualityDownload";
      if (((v8 - 32) | 0x8000000000000000) == v7)
      {
        break;
      }

      v9 = sub_1000D39CC();

      if ((v9 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100023DE0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1000D318C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1000250D4(&qword_1001237E8);
      v15 = sub_1000D357C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100023F8C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 48;
    }

    else
    {
      v6 = 49;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 48 : 49;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_1000D39CC();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_1000240A0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100006334(a2);
    v4 = sub_1000D399C();

    for (i = (a1 + 48); ; i += 24)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1000232F8(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100024194(uint64_t a1)
{
  v2 = sub_100006334(&qword_1001237C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100006334(&qword_1001237D0);
    v7 = sub_1000D399C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000F8D0(v9, v5, &qword_1001237C8);
      v11 = *v5;
      result = sub_100023370(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000D164C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10002437C(uint64_t a1)
{
  v2 = sub_100006334(&qword_100123748);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100006334(&qword_100123758);
    v7 = sub_1000D399C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000F8D0(v9, v5, &qword_100123748);
      v11 = *v5;
      result = sub_1000233F8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000D164C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100024564(uint64_t a1)
{
  v2 = sub_100006334(&qword_1001237A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100006334(&qword_1001237B0);
    v7 = sub_1000D399C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000F8D0(v9, v5, &qword_1001237A8);
      v11 = *v5;
      result = sub_10002347C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000D164C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10002474C(uint64_t a1)
{
  v2 = sub_100006334(&qword_1001237B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100006334(&qword_1001237C0);
    v7 = sub_1000D399C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000F8D0(v9, v5, &qword_1001237B8);
      v11 = *v5;
      result = sub_10002347C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000D164C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100024934(uint64_t a1)
{
  v2 = sub_100006334(&qword_100123788);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100006334(&qword_100123790);
    v7 = sub_1000D399C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000F8D0(v9, v5, &qword_100123788);
      v11 = *v5;
      result = sub_100023520(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000D164C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100024B1C(uint64_t a1)
{
  v2 = sub_100006334(&qword_100123778);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100006334(&qword_100123780);
    v7 = sub_1000D399C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000F8D0(v9, v5, &qword_100123778);
      v11 = *v5;
      result = sub_1000235E4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000D164C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100024D04(uint64_t a1)
{
  v2 = sub_100006334(&qword_100123798);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100006334(&qword_1001237A0);
    v7 = sub_1000D399C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000F8D0(v9, v5, &qword_100123798);
      v11 = *v5;
      result = sub_1000235E4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000D164C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100024EEC(uint64_t a1)
{
  v2 = sub_100006334(&qword_100123768);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100006334(&qword_100123770);
    v7 = sub_1000D399C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000F8D0(v9, v5, &qword_100123768);
      v11 = *v5;
      result = sub_1000236FC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1000D164C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000250D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000D318C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_10002512C()
{
  v1 = (v0 + *(type metadata accessor for SportsWidgetDynamicIslandExpanded(0) + 20));
  v2 = v1[9];
  v3 = v1[11];
  if (v3)
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v4 = v1[10] & 0xFFFFFFFFFFFFLL;
    }

    if (!(v4 | v2))
    {
      return 0;
    }
  }

  else if (!v2)
  {
    return 0;
  }

  v6 = v1[24];
  v7 = v1[26];
  if (!v7)
  {
    return v6 != 0;
  }

  v8 = v1[25] & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  return v8 || v6 != 0;
}

uint64_t sub_1000251C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_100006334(&qword_100123848);
  __chkstk_darwin(v3 - 8);
  v78 = (&v74 - v4);
  v76 = sub_100006334(&qword_100123850);
  v5 = __chkstk_darwin(v76);
  v80 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v77 = &v74 - v8;
  __chkstk_darwin(v7);
  v79 = &v74 - v9;
  if (sub_10002512C())
  {
    v75 = type metadata accessor for SportsWidgetDynamicIslandExpanded(0);
    v10 = (a1 + *(v75 + 20));
    v11 = v10[6];
    v12 = v10[7];
    v13 = v10[8];
    v14 = v10[9];
    v16 = v10[10];
    v15 = v10[11];
    v17 = objc_opt_self();

    v18 = [v17 labelColor];
    v19 = sub_1000D27DC();
    LOBYTE(v91) = 0;
    *&v98 = 0x4049000000000000;
    *(&v98 + 1) = v19;
    *&v99 = v11;
    *(&v99 + 1) = v12;
    *&v100 = v13;
    *(&v100 + 1) = v14;
    *&v101 = v16;
    *(&v101 + 1) = v15;
    BYTE8(v103) = 0;
  }

  else
  {
    v20 = type metadata accessor for SportsWidgetDynamicIslandExpanded(0);
    v21 = a1 + *(v20 + 20);
    v22 = *(v21 + 32);
    v23 = *(v21 + 40);
    v74 = *(a1 + 96);
    v75 = v20;
    *&v98 = v22;
    *(&v98 + 1) = v23;
    sub_10000F320();

    v24 = sub_1000D260C();
    v26 = v25;
    v28 = v27;
    v29 = sub_1000D254C();
    v31 = v30;
    v33 = v32;
    sub_10000F374(v24, v26, v28 & 1);

    v34 = sub_1000D257C();
    v36 = v35;
    v38 = v37;
    sub_10000F374(v29, v31, v33 & 1);

    v39 = sub_1000D252C();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    sub_10000F374(v34, v36, v38 & 1);

    v46 = *(a1 + 112);
    KeyPath = swift_getKeyPath();
    v48 = *(a1 + 120);
    v49 = swift_getKeyPath();
    v43 &= 1u;
    LOBYTE(v98) = v43;
    LOBYTE(v91) = 0;
    v50 = *(a1 + 128);
    v51 = swift_getKeyPath();
    LOBYTE(v91) = 1;
    *&v98 = v39;
    *(&v98 + 1) = v41;
    LOBYTE(v99) = v43;
    *(&v99 + 1) = v45;
    *&v100 = KeyPath;
    *(&v100 + 1) = v46;
    LOBYTE(v101) = 0;
    *(&v101 + 1) = v49;
    LOBYTE(v102) = v48;
    *(&v102 + 1) = v51;
    *&v103 = v50;
    BYTE8(v103) = 1;
  }

  sub_100006334(&qword_1001225C0);
  sub_10000F670();
  sub_10000F720();
  sub_1000D229C();
  type metadata accessor for SportsWidgetDynamicIslandExpanded(0);
  v52 = a1 + *(v75 + 20);
  v53 = *(v52 + 80);
  v102 = *(v52 + 64);
  v103 = v53;
  v104 = *(v52 + 96);
  v105 = *(v52 + 112);
  v54 = *(v52 + 48);
  v100 = *(v52 + 32);
  v101 = v54;
  v55 = *(v52 + 16);
  v98 = *v52;
  v99 = v55;
  v56 = v78;
  *v78 = *(a1 + 64);
  *(v56 + 16) = 0;
  v57 = sub_100006334(&qword_100123858);
  sub_100026F2C(a1, &v98, v56 + *(v57 + 44));
  sub_1000D2B5C();
  sub_1000D1E2C();
  v58 = v56;
  v59 = v77;
  sub_10000F998(v58, v77, &qword_100123848);
  v60 = (v59 + *(v76 + 36));
  v61 = v96;
  v60[4] = v95;
  v60[5] = v61;
  v60[6] = v97;
  v62 = v92;
  *v60 = v91;
  v60[1] = v62;
  v63 = v94;
  v60[2] = v93;
  v60[3] = v63;
  v64 = v79;
  sub_10000F998(v59, v79, &qword_100123850);
  v84 = v108;
  v85 = v109;
  v86[0] = v110[0];
  *(v86 + 9) = *(v110 + 9);
  v82 = v106;
  v83 = v107;
  v65 = v80;
  sub_10000F8D0(v64, v80, &qword_100123850);
  v66 = v85;
  v87[2] = v84;
  v87[3] = v85;
  v67 = v86[0];
  v88[0] = v86[0];
  v68 = *(v86 + 9);
  *(v88 + 9) = *(v86 + 9);
  v69 = v82;
  v70 = v83;
  v87[0] = v82;
  v87[1] = v83;
  v71 = v81;
  *(v81 + 32) = v84;
  *(v71 + 48) = v66;
  *(v71 + 64) = v67;
  *(v71 + 73) = v68;
  *v71 = v69;
  *(v71 + 16) = v70;
  *(v71 + 96) = 0;
  *(v71 + 104) = 1;
  v72 = sub_100006334(&qword_100123898);
  sub_10000F8D0(v65, v71 + *(v72 + 64), &qword_100123850);
  sub_10000F8D0(v87, v89, &qword_100123868);
  sub_10000F938(v64, &qword_100123850);
  sub_10000F938(v65, &qword_100123850);
  v89[2] = v84;
  v89[3] = v85;
  v90[0] = v86[0];
  *(v90 + 9) = *(v86 + 9);
  v89[0] = v82;
  v89[1] = v83;
  return sub_10000F938(v89, &qword_100123868);
}

uint64_t sub_100025808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_100006334(&qword_100123848);
  __chkstk_darwin(v3 - 8);
  v5 = &v70 - v4;
  v6 = sub_100006334(&qword_100123850);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v73 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v70 - v11;
  __chkstk_darwin(v10);
  v14 = &v70 - v13;
  v15 = a1 + *(type metadata accessor for SportsWidgetDynamicIslandExpanded(0) + 20);
  v16 = *(v15 + 200);
  v94 = *(v15 + 184);
  v95 = v16;
  v96 = *(v15 + 216);
  v97 = *(v15 + 232);
  v17 = *(v15 + 136);
  v18 = *(v15 + 168);
  v92 = *(v15 + 152);
  v93 = v18;
  v91[0] = *(v15 + 120);
  v91[1] = v17;
  *v5 = *(a1 + 64);
  v5[16] = 0;
  v19 = sub_100006334(&qword_100123858);
  sub_100026F2C(a1, v91, &v5[*(v19 + 44)]);
  sub_1000D2B5C();
  sub_1000D1E2C();
  sub_10000F998(v5, v12, &qword_100123848);
  v20 = &v12[*(v7 + 44)];
  v21 = v90[7];
  *(v20 + 4) = v90[6];
  *(v20 + 5) = v21;
  *(v20 + 6) = v90[8];
  v22 = v90[3];
  *v20 = v90[2];
  *(v20 + 1) = v22;
  v23 = v90[5];
  *(v20 + 2) = v90[4];
  *(v20 + 3) = v23;
  v71 = v14;
  sub_10000F998(v12, v14, &qword_100123850);
  if (sub_10002512C())
  {
    v24 = v93;
    v25 = v94;
    v26 = v95;
    v27 = objc_opt_self();

    v28 = [v27 labelColor];
    v29 = sub_1000D27DC();
    LOBYTE(v79[0]) = 0;
    *&v81 = 0x4049000000000000;
    *(&v81 + 1) = v29;
    v82 = v24;
    v83 = v25;
    v84 = v26;
    BYTE8(v85[1]) = 0;
  }

  else
  {
    v70 = *(a1 + 96);
    v86 = v92;
    sub_10000F320();

    v30 = sub_1000D260C();
    v32 = v31;
    v34 = v33;
    v35 = sub_1000D254C();
    v37 = v36;
    v39 = v38;
    sub_10000F374(v30, v32, v34 & 1);

    v40 = sub_1000D257C();
    v42 = v41;
    v44 = v43;
    sub_10000F374(v35, v37, v39 & 1);

    v45 = sub_1000D252C();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    sub_10000F374(v40, v42, v44 & 1);

    v52 = *(a1 + 112);
    KeyPath = swift_getKeyPath();
    v54 = *(a1 + 120);
    v55 = swift_getKeyPath();
    v49 &= 1u;
    LOBYTE(v86) = v49;
    LOBYTE(v81) = 0;
    v56 = *(a1 + 128);
    v57 = swift_getKeyPath();
    LOBYTE(v79[0]) = 1;
    *&v81 = v45;
    *(&v81 + 1) = v47;
    LOBYTE(v82) = v49;
    *(&v82 + 1) = v51;
    *&v83 = KeyPath;
    *(&v83 + 1) = v52;
    LOBYTE(v84) = 0;
    *(&v84 + 1) = v55;
    LOBYTE(v85[0]) = v54;
    *(&v85[0] + 1) = v57;
    *&v85[1] = v56;
    BYTE8(v85[1]) = 1;
  }

  sub_100006334(&qword_1001225C0);
  sub_10000F670();
  sub_10000F720();
  sub_1000D229C();
  v58 = v71;
  v59 = v73;
  sub_10000F8D0(v71, v73, &qword_100123850);
  v76 = v88;
  v77 = v89;
  v78[0] = v90[0];
  *(v78 + 9) = *(v90 + 9);
  v74 = v86;
  v75 = v87;
  v60 = v72;
  sub_10000F8D0(v59, v72, &qword_100123850);
  v61 = sub_100006334(&qword_100123860);
  v62 = v60 + *(v61 + 48);
  *v62 = 0;
  *(v62 + 8) = 1;
  v63 = (v60 + *(v61 + 64));
  v65 = v76;
  v64 = v77;
  v79[2] = v76;
  v79[3] = v77;
  v66 = v74;
  v67 = v75;
  v79[0] = v74;
  v79[1] = v75;
  v68 = v78[0];
  v80[0] = v78[0];
  *(v80 + 9) = *(v78 + 9);
  *(v63 + 73) = *(v78 + 9);
  v63[2] = v65;
  v63[3] = v64;
  v63[4] = v68;
  *v63 = v66;
  v63[1] = v67;
  sub_10000F8D0(v79, &v81, &qword_100123868);
  sub_10000F938(v58, &qword_100123850);
  v83 = v76;
  v84 = v77;
  v85[0] = v78[0];
  *(v85 + 9) = *(v78 + 9);
  v81 = v74;
  v82 = v75;
  sub_10000F938(&v81, &qword_100123868);
  return sub_10000F938(v59, &qword_100123850);
}

uint64_t sub_100025E28@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = sub_100006334(&qword_1001237F0);
  __chkstk_darwin(v2);
  v4 = (&v50 - v3);
  v5 = sub_100006334(&qword_1001237F8);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  v8 = sub_100006334(&qword_100123800);
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v54 = sub_100006334(&qword_100123808);
  __chkstk_darwin(v54);
  v12 = &v50 - v11;
  v13 = v1 + *(type metadata accessor for SportsWidgetDynamicIslandExpanded(0) + 20);
  v14 = type metadata accessor for SportsWidgetDynamicIslandExpandedViewModel(0);
  if (*(v13 + v14[12]) == 1)
  {
    sub_10002F270(&v70);
    *(v81 + 7) = v70;
    *(&v81[1] + 7) = v71;
    *(&v81[2] + 7) = v72;
    *(&v81[5] + 7) = v75;
    *(&v81[4] + 7) = v74;
    *(&v81[3] + 7) = v73;
    *v10 = 1;
    v15 = v81[3];
    *(v10 + 33) = v81[2];
    v16 = v81[0];
    *(v10 + 17) = v81[1];
    *(v10 + 1) = v16;
    v17 = v81[4];
    v18 = v81[5];
    *(v10 + 12) = *(&v81[5] + 15);
    *(v10 + 81) = v18;
    *(v10 + 65) = v17;
    *(v10 + 49) = v15;
    swift_storeEnumTagMultiPayload();
    sub_10000F5C0(&v70, &v57);
    sub_10000F204();
    sub_100026CFC();
    sub_1000D229C();
    sub_10000F8D0(v12, v7, &qword_100123808);
    swift_storeEnumTagMultiPayload();
    v19 = v55;
    sub_100006334(&qword_100123820);
    sub_100026C70();
    sub_10000FC38(&qword_100123838, &qword_100123820);
    sub_1000D229C();
    sub_10000F61C(&v70);
    sub_10000F938(v12, &qword_100123808);
    v20 = sub_100006334(&qword_100123810);
    return (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  }

  else
  {
    v52 = v12;
    v53 = v5;
    if (*(v13 + v14[9]) == 1)
    {
      v22 = v14[6];
      v23 = type metadata accessor for SportsWidgetClockView();
      sub_100029F24(v13 + v22, v4 + *(v23 + 20), type metadata accessor for SportsWidgetClock);
      v51 = sub_1000D24AC();
      v24 = [objc_opt_self() labelColor];
      v25 = sub_1000D27DC();
      v26 = sub_1000D24AC();
      *v4 = swift_getKeyPath();
      sub_100006334(&qword_100122410);
      swift_storeEnumTagMultiPayload();
      v27 = v4 + *(v23 + 24);
      *v27 = 0;
      *(v27 + 1) = v51;
      *(v27 + 2) = v25;
      *(v27 + 3) = v26;
      LOBYTE(v26) = sub_1000D236C();
      sub_1000D1B9C();
      v28 = v4 + *(v2 + 36);
      *v28 = v26;
      *(v28 + 1) = v29;
      *(v28 + 2) = v30;
      *(v28 + 3) = v31;
      *(v28 + 4) = v32;
      v28[40] = 0;
      sub_10000F8D0(v4, v10, &qword_1001237F0);
      swift_storeEnumTagMultiPayload();
      sub_10000F204();
      sub_100026CFC();
      v33 = v52;
      sub_1000D229C();
      sub_10000F8D0(v33, v7, &qword_100123808);
      swift_storeEnumTagMultiPayload();
      sub_100006334(&qword_100123820);
      sub_100026C70();
      sub_10000FC38(&qword_100123838, &qword_100123820);
      v34 = v55;
      sub_1000D229C();
      sub_10000F938(v33, &qword_100123808);
      sub_10000F938(v4, &qword_1001237F0);
      v35 = sub_100006334(&qword_100123810);
      return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    }

    else if (*(v13 + v14[10]) == 1)
    {
      v36 = v7;
      v37 = v55;
      v38 = sub_1000D21BC();
      v69 = 1;
      sub_100026A00(v1, &v57);
      v78 = v65;
      v79 = v66;
      v80 = v67;
      v74 = v61;
      v75 = v62;
      v76 = v63;
      v77 = v64;
      v70 = v57;
      v71 = v58;
      v72 = v59;
      v73 = v60;
      v81[8] = v65;
      v81[9] = v66;
      v81[10] = v67;
      v81[4] = v61;
      v81[5] = v62;
      v81[6] = v63;
      v81[7] = v64;
      v81[0] = v57;
      v81[1] = v58;
      v81[2] = v59;
      v81[3] = v60;
      sub_10000F8D0(&v70, &v56, &qword_100123818);
      sub_10000F938(v81, &qword_100123818);
      *&v68[119] = v77;
      *&v68[135] = v78;
      *&v68[151] = v79;
      *&v68[167] = v80;
      *&v68[55] = v73;
      *&v68[71] = v74;
      *&v68[87] = v75;
      *&v68[103] = v76;
      *&v68[7] = v70;
      *&v68[23] = v71;
      *&v68[39] = v72;
      v39 = *&v68[144];
      *(v36 + 145) = *&v68[128];
      *(v36 + 161) = v39;
      *(v36 + 177) = *&v68[160];
      v40 = *&v68[80];
      *(v36 + 81) = *&v68[64];
      *(v36 + 97) = v40;
      v41 = *&v68[112];
      *(v36 + 113) = *&v68[96];
      *(v36 + 129) = v41;
      v42 = *&v68[16];
      *(v36 + 17) = *v68;
      *(v36 + 33) = v42;
      v43 = *&v68[48];
      *(v36 + 49) = *&v68[32];
      v44 = v69;
      *v36 = v38;
      *(v36 + 1) = 0;
      v36[16] = v44;
      *(v36 + 24) = *&v68[175];
      *(v36 + 65) = v43;
      swift_storeEnumTagMultiPayload();
      sub_100006334(&qword_100123820);
      sub_100026C70();
      sub_10000FC38(&qword_100123838, &qword_100123820);
      sub_1000D229C();
      v45 = sub_100006334(&qword_100123810);
      return (*(*(v45 - 8) + 56))(v37, 0, 1, v45);
    }

    else
    {
      v46 = sub_100006334(&qword_100123810);
      v47 = *(*(v46 - 8) + 56);
      v48 = v46;
      v49 = v55;

      return v47(v49, 1, 1, v48);
    }
  }
}

uint64_t sub_1000266B0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SportsWidgetPlayByPlayView();
  __chkstk_darwin(v3);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100006334(&qword_100122408);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = v1 + *(type metadata accessor for SportsWidgetDynamicIslandExpanded(0) + 20);
  v10 = type metadata accessor for SportsWidgetDynamicIslandExpandedViewModel(0);
  if (*(v9 + *(v10 + 48)) == 1)
  {
    sub_10002F270(v27);
    *&v28[7] = v27[0];
    *&v28[23] = v27[1];
    *&v28[39] = v27[2];
    *&v28[87] = v27[5];
    *&v28[71] = v27[4];
    *&v28[55] = v27[3];
    *v8 = 2;
    v11 = *&v28[48];
    *(v8 + 33) = *&v28[32];
    v12 = *v28;
    *(v8 + 17) = *&v28[16];
    *(v8 + 1) = v12;
    v13 = *&v28[64];
    v14 = *&v28[80];
    *(v8 + 12) = *&v28[95];
    *(v8 + 81) = v14;
    *(v8 + 65) = v13;
    *(v8 + 49) = v11;
    swift_storeEnumTagMultiPayload();
    sub_10000F204();
    sub_10002A8FC(&qword_100122420, type metadata accessor for SportsWidgetPlayByPlayView);
    return sub_1000D229C();
  }

  else
  {
    v16 = (v9 + *(v10 + 28));
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v16 + 16);
    v20 = v16[3];
    v25 = *(v16 + 32);
    v21 = v16[5];
    v24 = *(v16 + 48);
    v26 = a1;
    v22 = *(v3 + 24);

    sub_1000B6240(v5 + v22, 14.0, 0.0);
    *v5 = swift_getKeyPath();
    sub_100006334(&qword_100122410);
    swift_storeEnumTagMultiPayload();
    v23 = v5 + *(v3 + 20);
    *v23 = v18;
    *(v23 + 1) = v17;
    v23[16] = v19;
    *(v23 + 3) = v20;
    v23[32] = v25;
    *(v23 + 5) = v21;
    v23[48] = v24;
    sub_100029F24(v5, v8, type metadata accessor for SportsWidgetPlayByPlayView);
    swift_storeEnumTagMultiPayload();
    sub_10000F204();
    sub_10002A8FC(&qword_100122420, type metadata accessor for SportsWidgetPlayByPlayView);
    sub_1000D229C();
    return sub_100029F8C(v5);
  }
}

uint64_t sub_100026A00@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for SportsWidgetDynamicIslandExpanded(0) + 20);
  v4 = v3 + *(type metadata accessor for SportsWidgetDynamicIslandExpandedViewModel(0) + 32);
  if (*(v4 + 8))
  {
    sub_100026DB8(&v46);
    v5 = v46;
    v6 = v47;
    v8 = v48;
    v7 = v49;
    v9 = v50;
    v24 = v53;
    v25 = v51;
    v27 = v54;
    v28 = v52;
    v26 = v55;
    v10 = v56;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v8 = 0;
    v7 = 0;
    v9 = 0;
    v24 = 0;
    v25 = 0;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v10 = 0;
  }

  if (*(v4 + 24))
  {
    sub_100026DB8(&v46);
    v12 = v46;
    v11 = v47;
    v14 = v48;
    v13 = v49;
    v16 = v50;
    v15 = v51;
    v18 = v52;
    v17 = v53;
    v19 = v54;
    v20 = v55;
    v21 = v56;
  }

  else
  {
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v16 = 0;
    v13 = 0;
    v14 = 0;
    v11 = 0;
    v12 = 0;
    v20 = 0;
    v21 = 0;
  }

  *&v33 = v5;
  *(&v33 + 1) = v6;
  *&v34 = v8;
  *(&v34 + 1) = v7;
  *&v35 = v9;
  *(&v35 + 1) = v25;
  *&v36 = v28;
  *(&v36 + 1) = v24;
  *&v37 = v27;
  *(&v37 + 1) = v26;
  v38 = v10;
  *&v39 = v12;
  *v32 = v10;
  v30 = v36;
  v31 = v37;
  v29 = v35;
  *(&v39 + 1) = v11;
  *&v40 = v14;
  *(&v40 + 1) = v13;
  *&v41 = v16;
  *(&v41 + 1) = v15;
  *&v42 = v18;
  *(&v42 + 1) = v17;
  *&v43 = v19;
  *(&v43 + 1) = v20;
  v44 = v21;
  *&v32[24] = v40;
  *&v32[8] = v39;
  *&v32[88] = v21;
  *&v32[72] = v43;
  *&v32[56] = v42;
  *&v32[40] = v41;
  v22 = v34;
  *a2 = v33;
  a2[1] = v22;
  a2[4] = v31;
  a2[5] = *v32;
  a2[2] = v29;
  a2[3] = v30;
  a2[9] = *&v32[64];
  a2[10] = *&v32[80];
  a2[7] = *&v32[32];
  a2[8] = *&v32[48];
  a2[6] = *&v32[16];
  v45[0] = v12;
  v45[1] = v11;
  v45[2] = v14;
  v45[3] = v13;
  v45[4] = v16;
  v45[5] = v15;
  v45[6] = v18;
  v45[7] = v17;
  v45[8] = v19;
  v45[9] = v20;
  v45[10] = v21;
  sub_10000F8D0(&v33, &v46, &qword_100123840);
  sub_10000F8D0(&v39, &v46, &qword_100123840);
  sub_10000F938(v45, &qword_100123840);
  v46 = v5;
  v47 = v6;
  v48 = v8;
  v49 = v7;
  v50 = v9;
  v51 = v25;
  v52 = v28;
  v53 = v24;
  v54 = v27;
  v55 = v26;
  v56 = v10;
  return sub_10000F938(&v46, &qword_100123840);
}

unint64_t sub_100026C70()
{
  result = qword_100123828;
  if (!qword_100123828)
  {
    sub_10000637C(&qword_100123808);
    sub_10000F204();
    sub_100026CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123828);
  }

  return result;
}

unint64_t sub_100026CFC()
{
  result = qword_100123830;
  if (!qword_100123830)
  {
    sub_10000637C(&qword_1001237F0);
    sub_10002A8FC(&qword_100122488, type metadata accessor for SportsWidgetClockView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123830);
  }

  return result;
}

uint64_t sub_100026DB8@<X0>(uint64_t a1@<X8>)
{
  sub_10000F320();

  v3 = sub_1000D260C();
  v5 = v4;
  v7 = v6;
  v8 = sub_1000D254C();
  v10 = v9;
  v12 = v11;
  sub_10000F374(v3, v5, v7 & 1);

  v13 = sub_1000D257C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10000F374(v8, v10, v12 & 1);

  v20 = *(v1 + 16);
  KeyPath = swift_getKeyPath();
  v22 = *(v1 + 24);
  v23 = swift_getKeyPath();
  v24 = *(v1 + 32);
  result = swift_getKeyPath();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v20;
  *(a1 + 48) = 0;
  *(a1 + 56) = v23;
  *(a1 + 64) = v22;
  *(a1 + 72) = result;
  *(a1 + 80) = v24;
  return result;
}

uint64_t sub_100026F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = sub_100006334(&qword_100123870);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = (&v56 - v7);
  v8 = sub_100006334(&qword_100123878);
  v9 = __chkstk_darwin(v8 - 8);
  v69 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v56 - v11;
  v13 = sub_10002512C();
  v70 = v12;
  v60 = a2;
  if (v13)
  {
    v57 = v6;
    v58 = v5;
    v71 = *(a1 + 88);
    v14 = a1 + *(type metadata accessor for SportsWidgetDynamicIslandExpanded(0) + 20);
    v15 = type metadata accessor for SportsWidgetDynamicIslandExpandedViewModel(0);
    v16 = 0;
    if ((*(v14 + *(v15 + 44)) & 1) == 0)
    {
      v16 = *(a1 + 104);
    }

    v68 = v16;
    v17 = *(a2 + 40);
    v78 = *(a2 + 32);
    v79 = v17;
    sub_10000F320();

    v18 = sub_1000D260C();
    v20 = v19;
    v22 = v21;
    v23 = sub_1000D254C();
    v25 = v24;
    v27 = v26;
    sub_10000F374(v18, v20, v22 & 1);

    v28 = sub_1000D257C();
    v30 = v29;
    LOBYTE(v20) = v31;
    sub_10000F374(v23, v25, v27 & 1);

    v68 = sub_1000D252C();
    v67 = v32;
    v34 = v33;
    v66 = v35;
    sub_10000F374(v28, v30, v20 & 1);

    v65 = *(a1 + 112);
    KeyPath = swift_getKeyPath();
    v64 = *(a1 + 120);
    v71 = swift_getKeyPath();
    LOBYTE(v78) = v34 & 1;
    LOBYTE(v72) = 0;
    v37 = v34 & 1;
    v62 = *(a1 + 128);
    v61 = swift_getKeyPath();
    v12 = v70;
    v5 = v58;
    v6 = v57;
  }

  else
  {
    v68 = 0;
    v67 = 0;
    v66 = 0;
    KeyPath = 0;
    v65 = 0;
    v71 = 0;
    v61 = 0;
    v62 = 0;
    v64 = 0;
    v37 = 0;
  }

  v38 = a1 + *(type metadata accessor for SportsWidgetDynamicIslandExpanded(0) + 20);
  if (*(v38 + *(type metadata accessor for SportsWidgetDynamicIslandExpandedViewModel(0) + 44)) == 1)
  {
    v39 = v59;
    *v59 = *(a1 + 48);
    v40 = sub_100006334(&qword_100123888);
    sub_100027514(a1, v60, (v39 + *(v40 + 44)));
    sub_10000F998(v39, v12, &qword_100123870);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  (*(v6 + 56))(v12, v41, 1, v5);
  v42 = v12;
  v43 = v69;
  sub_10000F8D0(v42, v69, &qword_100123878);
  v44 = v68;
  *&v72 = v68;
  v45 = v67;
  *(&v72 + 1) = v67;
  *&v73 = v37;
  v58 = v37;
  v46 = v66;
  *(&v73 + 1) = v66;
  *&v74 = KeyPath;
  v60 = KeyPath;
  v47 = v65;
  *(&v74 + 1) = v65;
  *&v75 = 0;
  v59 = 0;
  v48 = v64;
  *(&v75 + 1) = v71;
  *&v76 = v64;
  v49 = v61;
  v50 = v62;
  *(&v76 + 1) = v61;
  v77 = v62;
  v51 = v63;
  *(v63 + 80) = v62;
  v52 = v75;
  v51[2] = v74;
  v51[3] = v52;
  v51[4] = v76;
  v53 = v73;
  *v51 = v72;
  v51[1] = v53;
  v54 = sub_100006334(&qword_100123880);
  sub_10000F8D0(v43, v51 + *(v54 + 48), &qword_100123878);
  sub_10000F8D0(&v72, &v78, &qword_100123840);
  sub_10000F938(v70, &qword_100123878);
  sub_10000F938(v43, &qword_100123878);
  v78 = v44;
  v79 = v45;
  v80 = v58;
  v81 = v46;
  v82 = v60;
  v83 = v47;
  v84 = v59;
  v85 = v71;
  v86 = v48;
  v87 = v49;
  v88 = v50;
  return sub_10000F938(&v78, &qword_100123840);
}

uint64_t sub_100027514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v60 = a3;
  v57 = sub_100006334(&qword_1001226C0);
  __chkstk_darwin(v57);
  v6 = &v50 - v5;
  v56 = sub_100006334(&qword_1001226C8);
  v7 = __chkstk_darwin(v56);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v55 = &v50 - v10;
  __chkstk_darwin(v9);
  v58 = &v50 - v11;
  v12 = a1 + *(type metadata accessor for SportsWidgetDynamicIslandExpanded(0) + 20);
  v13 = *(v12 + *(type metadata accessor for SportsWidgetDynamicIslandExpandedViewModel(0) + 48));
  v54 = a2;
  if (v13 == 1)
  {
    sub_10002F270(&v68);
    *&v61[87] = v73[0];
    *&v61[71] = v72;
    *&v61[55] = v71;
    *&v61[39] = v70;
    *&v61[23] = v69;
    *&v61[7] = v68;
    *&v74[49] = *&v61[48];
    *&v74[65] = *&v61[64];
    *&v74[81] = *&v61[80];
    *&v74[1] = *v61;
    *&v74[17] = *&v61[16];
    LOBYTE(v62) = 0;
    v74[0] = 0;
    *&v74[96] = *(&v73[0] + 1);
    *&v74[33] = *&v61[32];
    v74[104] = 0;
  }

  else
  {
    v14 = *(a2 + 16);
    v15 = *(a2 + 24);

    v16 = sub_1000D23BC();
    v17 = [objc_opt_self() labelColor];
    v18 = sub_1000D27DC();
    LOBYTE(v68) = 1;
    *v74 = v14;
    *&v74[8] = v15;
    *&v74[16] = v16;
    *&v74[24] = v18;
    *&v74[32] = 1;
    v74[40] = 1;
    *&v74[48] = xmmword_1000DED50;
    v74[104] = 1;
  }

  sub_10000F204();
  sub_10000F7F0();
  sub_1000D229C();

  v19 = sub_1000D28DC();
  v20 = *(a1 + 160);
  v52 = v19;
  v53 = v20;
  KeyPath = swift_getKeyPath();
  v21 = *(a1 + 152);
  v50 = swift_getKeyPath();
  v22 = type metadata accessor for SportsWidgetDynamicIslandExpandedViewLayout();
  v23 = *(v22 + 92);
  v24 = swift_getKeyPath();
  v25 = &v6[*(sub_100006334(&qword_100122598) + 36)];
  v26 = v6;
  v27 = *(sub_100006334(&qword_1001225E8) + 28);
  v28 = sub_1000D28FC();
  (*(*(v28 - 8) + 16))(v25 + v27, a1 + v23, v28);
  *v25 = v24;
  v29 = KeyPath;
  *v26 = v52;
  v26[1] = v29;
  v30 = v50;
  v26[2] = v53;
  v26[3] = v30;
  v26[4] = v21;
  v31 = *(a1 + *(v22 + 96));
  v32 = objc_opt_self();

  v33 = [v32 preferredFontForTextStyle:UIFontTextStyleCaption2];
  [v33 pointSize];
  v35 = v34;

  v36 = (v26 + *(v57 + 36));
  *v36 = v31;
  v36[1] = v35 + -3.0;
  v37 = v55;
  if (*(v54 + 112))
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  sub_10000F998(v26, v55, &qword_1001226C0);
  *(v37 + *(v56 + 36)) = v38;
  v39 = v58;
  sub_10000F998(v37, v58, &qword_1001226C8);
  v66 = v79;
  v67[0] = v80[0];
  *(v67 + 9) = *(v80 + 9);
  v62 = v75;
  v63 = v76;
  v64 = v77;
  v65 = v78;
  v40 = v59;
  sub_10000F8D0(v39, v59, &qword_1001226C8);
  v41 = v66;
  v42 = v67[0];
  v72 = v66;
  v73[0] = v67[0];
  v43 = *(v67 + 9);
  *(v73 + 9) = *(v67 + 9);
  v44 = v63;
  v68 = v62;
  v69 = v63;
  v46 = v64;
  v45 = v65;
  v70 = v64;
  v71 = v65;
  v47 = v60;
  *v60 = v62;
  v47[1] = v44;
  *(v47 + 89) = v43;
  v47[2] = v46;
  v47[3] = v45;
  v47[4] = v41;
  v47[5] = v42;
  v48 = sub_100006334(&qword_100123890);
  sub_10000F8D0(v40, v47 + *(v48 + 48), &qword_1001226C8);
  sub_10000F8D0(&v68, v74, &qword_1001225F8);
  sub_10000F938(v39, &qword_1001226C8);
  sub_10000F938(v40, &qword_1001226C8);
  *&v74[64] = v66;
  *&v74[80] = v67[0];
  *&v74[89] = *(v67 + 9);
  *v74 = v62;
  *&v74[16] = v63;
  *&v74[32] = v64;
  *&v74[48] = v65;
  return sub_10000F938(v74, &qword_1001225F8);
}

uint64_t sub_100027AB0()
{
  v1 = sub_100006334(&qword_1001239D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = sub_100006334(&qword_1001239D8);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = sub_100006334(&qword_1001239E0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  if (*v0)
  {
    sub_1000280C8();
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    sub_10002A74C();
    v11 = sub_10000637C(&qword_100123A10);
    v12 = sub_10002A944();
    v16 = v11;
    v17 = v12;
    swift_getOpaqueTypeConformance2();
    sub_1000D229C();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_100027D90(&v16 - v9);
    sub_10000F8D0(v10, v7, &qword_1001239E0);
    swift_storeEnumTagMultiPayload();
    sub_10002A74C();
    v14 = sub_10000637C(&qword_100123A10);
    v15 = sub_10002A944();
    v16 = v14;
    v17 = v15;
    swift_getOpaqueTypeConformance2();
    sub_1000D229C();
    return sub_10000F938(v10, &qword_1001239E0);
  }
}

uint64_t sub_100027D90@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v22 = sub_100006334(&qword_100123A30);
  v2 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v21 - v3;
  v5 = sub_1000D210C();
  v26 = 1;
  sub_100028290(v1, v24);
  memcpy(v29, v24, 0x109uLL);
  memcpy(v30, v24, 0x109uLL);
  sub_10000F8D0(v29, v23, &qword_100123A38);
  sub_10000F938(v30, &qword_100123A38);
  memcpy(&v25[7], v29, 0x109uLL);
  v6 = v26;
  if (*v1)
  {
    sub_1000D2B7C();
  }

  else
  {
    sub_1000D2B6C();
  }

  sub_1000D1C8C();
  *(v27 + 7) = *&v27[7];
  *(&v27[2] + 7) = *&v27[9];
  *(&v27[4] + 7) = v28;
  v23[0] = v5;
  v23[1] = 0;
  LOBYTE(v23[2]) = v6;
  memcpy(&v23[2] + 1, v25, 0x110uLL);
  *(&v23[36] + 1) = *v27;
  *(&v23[38] + 1) = *&v27[2];
  *(&v23[40] + 1) = *&v27[4];
  v23[42] = *(&v28 + 1);
  v7 = &v1[*(type metadata accessor for SportsWidgetDynamicIslandCompactView(0) + 24)];
  v8 = type metadata accessor for SportsWidgetDynamicIslandCompactViewModel(0);
  v9 = sub_100006334(&qword_1001239F0);
  v10 = sub_10002A844();
  sub_1000D267C();
  memcpy(v24, v23, sizeof(v24));
  sub_10000F938(v24, &qword_1001239F0);
  v11 = &v7[*(v8 + 32)];
  if (v11[1])
  {
    v12 = *v11;
    v13 = v11[1];
  }

  else
  {
    v12 = *&v7[*(v8 + 28)];
  }

  v23[0] = v12;
  v23[1] = v13;
  sub_10000F320();

  v14 = sub_1000D260C();
  v16 = v15;
  v18 = v17;
  v23[0] = v9;
  v23[1] = v10;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  sub_1000D26EC();
  sub_10000F374(v14, v16, v18 & 1);

  return (*(v2 + 8))(v4, v19);
}

uint64_t sub_1000280C8()
{
  v1 = sub_1000D210C();
  v7 = 1;
  sub_1000289C8(v0, __src);
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v11, __src, 0x109uLL);
  sub_10000F8D0(__dst, v4, &qword_100123A48);
  sub_10000F938(v11, &qword_100123A48);
  memcpy(&v6[7], __dst, 0x109uLL);
  v2 = v7;
  if (*v0)
  {
    sub_1000D2B7C();
  }

  else
  {
    sub_1000D2B6C();
  }

  sub_1000D1C8C();
  *(v8 + 7) = *&v8[7];
  *(&v8[2] + 7) = *&v8[9];
  *(&v8[4] + 7) = v9;
  v4[0] = v1;
  v4[1] = 0;
  LOBYTE(v4[2]) = v2;
  memcpy(&v4[2] + 1, v6, 0x110uLL);
  *(&v4[36] + 1) = *v8;
  *(&v4[38] + 1) = *&v8[2];
  *(&v4[40] + 1) = *&v8[4];
  v4[42] = *(&v9 + 1);
  type metadata accessor for SportsWidgetDynamicIslandCompactView(0);
  type metadata accessor for SportsWidgetDynamicIslandCompactViewModel(0);
  sub_100006334(&qword_100123A10);
  sub_10002A944();
  sub_1000D267C();
  memcpy(__src, v4, sizeof(__src));
  return sub_10000F938(__src, &qword_100123A10);
}

uint64_t sub_100028290@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SportsWidgetDynamicIslandCompactView(0) + 24));
  v4 = v3[2];
  v5 = v3[3];
  v7 = v3[4];
  v6 = v3[5];
  if (v6)
  {
    v8 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v8 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (!(v8 | v5))
    {
      goto LABEL_5;
    }
  }

  else if (!v5)
  {
LABEL_5:
    type metadata accessor for SportsWidgetDynamicIslandCompactViewModel(0);
    sub_100028854(v67);
    LOBYTE(v57) = 1;
    v67[88] = 1;
    goto LABEL_8;
  }

  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v57) = 0;
  *v67 = v9;
  *&v67[8] = v10;
  *&v67[16] = v11;
  *&v67[24] = v12;
  *&v67[32] = v4;
  *&v67[40] = v5;
  *&v67[48] = v7;
  *&v67[56] = v6;
  v67[88] = 0;

LABEL_8:
  sub_100006334(&qword_1001225C0);
  sub_10000F670();
  sub_10000F720();
  sub_1000D229C();
  v13 = type metadata accessor for SportsWidgetDynamicIslandCompactViewModel(0);
  if (*(v3 + *(v13 + 36)) == 1)
  {
    v14 = v13;
    sub_1000D2B5C();
    sub_1000D1C8C();
    v27 = v73;
    v28 = v71;
    v26 = v75;
    v25 = v76;
    v43 = 1;
    v42 = v72;
    v41 = v74;
    if (*(v3 + *(v14 + 40)) == 1)
    {
      sub_10002F270(&v57);
      *&v30[87] = v62;
      *&v30[71] = v61;
      *&v30[55] = v60;
      *&v30[39] = v59;
      *&v30[23] = v58;
      *&v30[7] = v57;
      *&v67[49] = *&v30[48];
      *&v67[65] = *&v30[64];
      *&v67[81] = *&v30[80];
      *&v67[1] = *v30;
      *&v67[17] = *&v30[16];
      LOBYTE(v44) = 0;
      v67[0] = 3;
      *&v67[96] = *(&v62 + 1);
      *&v67[33] = *&v30[32];
      v67[104] = 0;
      sub_10000F204();
      sub_10000F7F0();
    }

    else
    {
      v15 = v3[6];
      v16 = v3[7];
      v17 = *(a1 + 16);
      v18 = *(a1 + 24);
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      LOBYTE(v57) = 1;
      *v67 = v15;
      *&v67[8] = v16;
      *&v67[16] = v17;
      *&v67[24] = v18;
      *&v67[32] = v19;
      v67[40] = v20;
      *&v67[48] = *(a1 + 48);
      v67[104] = 1;
      sub_10000F204();
      sub_10000F7F0();
    }

    sub_1000D229C();
    v21 = v43;
    v22 = v42;
    v23 = v41;
    v47 = v53;
    v48[0] = v54;
    v48[1] = v55[0];
    *(&v48[1] + 9) = *(v55 + 9);
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v35[0] = v54;
    v35[1] = v55[0];
    *(&v35[1] + 9) = *(v55 + 9);
    v31 = v50;
    v32 = v51;
    v33 = v52;
    v34 = v53;
    v36 = v50;
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v40[0] = v54;
    v40[1] = v55[0];
    *(&v40[1] + 9) = *(v55 + 9);
    sub_10000F8D0(&v31, v67, &qword_1001225F8);
    sub_10000F938(&v44, &qword_1001225F8);
    v64 = v39;
    v65 = v40[0];
    v66[0] = v40[1];
    *(v66 + 9) = *(&v40[1] + 9);
    v61 = v36;
    v62 = v37;
    *&v57 = 0;
    BYTE8(v57) = v21;
    *&v58 = v28;
    BYTE8(v58) = v22;
    *&v59 = v27;
    BYTE8(v59) = v23;
    *&v60 = v26;
    *(&v60 + 1) = v25;
    v63 = v38;
    nullsub_1(&v57);
    v69 = v65;
    v70[0] = v66[0];
    *(v70 + 9) = *(v66 + 9);
    *&v67[64] = v61;
    *&v67[80] = v62;
    *&v67[96] = v63;
    v68 = v64;
    *v67 = v57;
    *&v67[16] = v58;
    *&v67[32] = v59;
    *&v67[48] = v60;
  }

  else
  {
    sub_10002A9FC(v67);
  }

  v33 = v79;
  v34 = v80;
  v35[0] = v81[0];
  *(v35 + 9) = *(v81 + 9);
  v31 = v77;
  v32 = v78;
  v57 = *v67;
  v58 = *&v67[16];
  v61 = *&v67[64];
  v62 = *&v67[80];
  v59 = *&v67[32];
  v60 = *&v67[48];
  *(v66 + 9) = *(v70 + 9);
  v65 = v69;
  v66[0] = v70[0];
  v63 = *&v67[96];
  v64 = v68;
  v39 = v80;
  v40[0] = v81[0];
  *(v40 + 9) = *(v81 + 9);
  *(&__src[4] + 9) = *(v81 + 9);
  v37 = v78;
  v38 = v79;
  __src[2] = v79;
  __src[3] = v80;
  __src[4] = v81[0];
  v36 = v77;
  __src[0] = v77;
  __src[1] = v78;
  *(v56 + 9) = *(v70 + 9);
  v55[3] = v69;
  v56[0] = v70[0];
  v55[1] = *&v67[96];
  v55[2] = v68;
  v54 = *&v67[64];
  v55[0] = *&v67[80];
  v52 = *&v67[32];
  v53 = *&v67[48];
  v50 = *v67;
  v51 = *&v67[16];
  __src[13] = v68;
  __src[14] = v69;
  __src[15] = v70[0];
  *(&__src[15] + 9) = *(v70 + 9);
  __src[10] = *&v67[64];
  __src[11] = *&v67[80];
  __src[12] = *&v67[96];
  __src[6] = *v67;
  __src[7] = *&v67[16];
  __src[8] = *&v67[32];
  __src[9] = *&v67[48];
  memcpy(a2, __src, 0x109uLL);
  sub_10000F8D0(&v36, &v44, &qword_100123868);
  sub_10000F8D0(&v50, &v44, &qword_100123A40);
  sub_10000F938(&v57, &qword_100123A40);
  v46 = v33;
  v47 = v34;
  v48[0] = v35[0];
  *(v48 + 9) = *(v35 + 9);
  v44 = v31;
  v45 = v32;
  return sub_10000F938(&v44, &qword_100123868);
}

uint64_t sub_100028854@<X0>(uint64_t a1@<X8>)
{
  sub_10000F320();

  v3 = sub_1000D260C();
  v5 = v4;
  v7 = v6;
  v8 = sub_1000D254C();
  v10 = v9;
  v12 = v11;
  sub_10000F374(v3, v5, v7 & 1);

  v13 = sub_1000D257C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10000F374(v8, v10, v12 & 1);

  v20 = *(v1 + 96);
  KeyPath = swift_getKeyPath();
  v22 = *(v1 + 104);
  v23 = swift_getKeyPath();
  v24 = *(v1 + 112);
  result = swift_getKeyPath();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v20;
  *(a1 + 48) = 0;
  *(a1 + 56) = v23;
  *(a1 + 64) = v22;
  *(a1 + 72) = result;
  *(a1 + 80) = v24;
  return result;
}

uint64_t sub_1000289C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a1 + *(type metadata accessor for SportsWidgetDynamicIslandCompactView(0) + 24));
  v5 = type metadata accessor for SportsWidgetDynamicIslandCompactViewModel(0);
  if (*(v4 + *(v5 + 36)) == 1)
  {
    v28 = a2;
    if (*(v4 + *(v5 + 40)) == 1)
    {
      sub_10002F270(&v59);
      *&v29[87] = v64;
      *&v29[71] = v63;
      *&v29[55] = v62;
      *&v29[39] = v61;
      *&v29[23] = v60;
      *&v29[7] = v59;
      *&v76[49] = *&v29[48];
      *&v76[65] = *&v29[64];
      *&v76[81] = *&v29[80];
      *&v76[1] = *v29;
      *&v76[17] = *&v29[16];
      LOBYTE(v51) = 0;
      v76[0] = 3;
      *&v76[96] = *(&v64 + 1);
      *&v76[33] = *&v29[32];
      v76[104] = 0;
      sub_10000F204();
      sub_10000F7F0();
    }

    else
    {
      v6 = v4[6];
      v7 = v4[7];
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      LOBYTE(v59) = 1;
      *v76 = v6;
      *&v76[8] = v7;
      *&v76[16] = v8;
      *&v76[24] = v9;
      *&v76[32] = v10;
      v76[40] = v11;
      *&v76[48] = *(a1 + 48);
      v76[104] = 1;
      sub_10000F204();
      sub_10000F7F0();
    }

    sub_1000D229C();
    sub_1000D2B5C();
    sub_1000D1C8C();
    v12 = v71;
    v26 = v72;
    v27 = v70;
    v13 = v73;
    v24 = v75;
    v25 = v74;
    LOBYTE(v57[0]) = 1;
    v39[0] = v45;
    v39[1] = v46[0];
    *(&v39[1] + 9) = *(v46 + 9);
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v38 = v44;
    v33 = v44;
    v34[0] = v45;
    v34[1] = v46[0];
    *(&v34[1] + 9) = *(v46 + 9);
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v51 = v41;
    v52 = v42;
    v53 = v43;
    v54 = v44;
    v55 = v45;
    v56[0] = v46[0];
    *(v56 + 9) = *(v46 + 9);
    sub_10000F8D0(&v30, v76, &qword_1001225F8);
    sub_10000F938(&v35, &qword_1001225F8);
    v63 = v55;
    v64 = v56[0];
    v65 = v56[1];
    v59 = v51;
    v60 = v52;
    v61 = v53;
    v62 = v54;
    *&v66 = 0;
    BYTE8(v66) = 1;
    *&v67 = v27;
    BYTE8(v67) = v12;
    *&v68 = v26;
    BYTE8(v68) = v13;
    *&v69 = v25;
    *(&v69 + 1) = v24;
    nullsub_1(&v59);
    v78 = v67;
    v79 = v68;
    v80 = v69;
    *&v76[64] = v63;
    *&v76[80] = v64;
    *&v76[96] = v65;
    v77 = v66;
    *v76 = v59;
    *&v76[16] = v60;
    *&v76[32] = v61;
    *&v76[48] = v62;
    a2 = v28;
  }

  else
  {
    sub_10002AA24(v76);
  }

  v14 = v4[2];
  v15 = v4[3];
  v17 = v4[4];
  v16 = v4[5];
  if (v16)
  {
    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (!(v18 | v15))
    {
      goto LABEL_11;
    }

LABEL_13:
    v19 = *(a1 + 64);
    v20 = *(a1 + 72);
    v21 = *v4;
    v22 = v4[1];
    LOBYTE(v51) = 0;
    *&v59 = v19;
    *(&v59 + 1) = v20;
    *&v60 = v21;
    *(&v60 + 1) = v22;
    *&v61 = v14;
    *(&v61 + 1) = v15;
    *&v62 = v17;
    *(&v62 + 1) = v16;
    BYTE8(v64) = 0;

    goto LABEL_14;
  }

  if (v15)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_100028854(&v59);
  LOBYTE(v51) = 1;
  BYTE8(v64) = 1;
LABEL_14:
  sub_100006334(&qword_1001225C0);
  sub_10000F670();
  sub_10000F720();
  sub_1000D229C();
  v48 = v78;
  v49 = v79;
  v50 = v80;
  v45 = *&v76[64];
  v46[0] = *&v76[80];
  v46[1] = *&v76[96];
  v47 = v77;
  v41 = *v76;
  v42 = *&v76[16];
  v43 = *&v76[32];
  v44 = *&v76[48];
  v33 = v38;
  v34[0] = v39[0];
  *(v34 + 9) = *(v39 + 9);
  v30 = v35;
  v31 = v36;
  v32 = v37;
  v56[3] = v78;
  v56[4] = v79;
  v56[1] = *&v76[96];
  v56[2] = v77;
  v55 = *&v76[64];
  v56[0] = *&v76[80];
  v51 = *v76;
  v52 = *&v76[16];
  v53 = *&v76[32];
  v54 = *&v76[48];
  __src[8] = v78;
  __src[9] = v79;
  __src[10] = v80;
  __src[4] = *&v76[64];
  __src[5] = *&v76[80];
  __src[6] = *&v76[96];
  __src[7] = v77;
  __src[0] = *v76;
  __src[1] = *&v76[16];
  __src[2] = *&v76[32];
  __src[3] = *&v76[48];
  v57[3] = v38;
  v58[0] = v39[0];
  *(v58 + 9) = *(v39 + 9);
  v56[5] = v80;
  v57[0] = v35;
  v57[1] = v36;
  v57[2] = v37;
  *(&__src[15] + 9) = *(v39 + 9);
  __src[13] = v37;
  __src[14] = v38;
  __src[15] = v39[0];
  __src[11] = v35;
  __src[12] = v36;
  memcpy(a2, __src, 0x109uLL);
  sub_10000F8D0(&v51, &v59, &qword_100123A50);
  sub_10000F8D0(v57, &v59, &qword_100123868);
  sub_10000F938(&v30, &qword_100123868);
  v67 = v48;
  v68 = v49;
  v69 = v50;
  v63 = v45;
  v64 = v46[0];
  v65 = v46[1];
  v66 = v47;
  v59 = v41;
  v60 = v42;
  v61 = v43;
  v62 = v44;
  return sub_10000F938(&v59, &qword_100123A50);
}

uint64_t sub_100028F7C()
{
  v1 = sub_1000D2B5C();
  v3 = v2;
  sub_100029144(v0, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v16, __src, sizeof(v16));
  sub_10000F8D0(__dst, v13, &qword_100123A58);
  sub_10000F938(v16, &qword_100123A58);
  memcpy(&__src[2], __dst, 0x220uLL);
  __src[0] = v1;
  __src[1] = v3;
  v4 = v0[44];
  if (v4)
  {
    v5 = v0[43];
    v6 = v4;
  }

  else
  {
    v5 = v0[13];
  }

  v13[0] = v5;
  v13[1] = v6;
  sub_10000F320();

  v7 = sub_1000D260C();
  v9 = v8;
  v11 = v10;
  sub_100006334(&qword_100123A60);
  sub_10000FC38(&qword_100123A68, &qword_100123A60);
  sub_1000D26EC();
  sub_10000F374(v7, v9, v11 & 1);

  memcpy(v13, __src, sizeof(v13));
  return sub_10000F938(v13, &qword_100123A60);
}

uint64_t sub_100029144@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 248);
  v5 = *(a1 + 280);
  *&v68[80] = *(a1 + 264);
  *&v68[96] = v5;
  *&v68[112] = *(a1 + 296);
  v6 = *(a1 + 184);
  v7 = *(a1 + 216);
  *&v68[16] = *(a1 + 200);
  *&v68[32] = v7;
  v8 = *(a1 + 232);
  *&v68[64] = v4;
  *&v68[48] = v8;
  v9 = *(a1 + 120);
  v10 = *(a1 + 152);
  v65 = *(a1 + 136);
  v66 = v10;
  v11 = *(a1 + 168);
  *v68 = v6;
  v67 = v11;
  v12 = *(a1 + 88);
  v61 = *(a1 + 72);
  v62 = v12;
  v13 = *(a1 + 104);
  v64 = v9;
  v63 = v13;
  v14 = *(a1 + 312);
  v15 = *(a1 + 320);
  v16 = *(a1 + 328);
  v17 = *(a1 + 336);
  v18 = *(a1 + 152);
  v71[4] = *(a1 + 136);
  v71[5] = v18;
  v71[6] = *(a1 + 168);
  v72 = *(a1 + 184);
  v19 = *(a1 + 88);
  v71[0] = *(a1 + 72);
  v71[1] = v19;
  v20 = *(a1 + 120);
  v71[2] = *(a1 + 104);
  v71[3] = v20;
  v21 = sub_1000D2B5C();
  v23 = v22;
  sub_1000297C8(a1, v71, &v118);
  v81 = v126;
  v82 = v127;
  v83 = v128;
  v77 = v122;
  v78 = v123;
  v80 = v125;
  v79 = v124;
  v73 = v118;
  v74 = v119;
  v76 = v121;
  v75 = v120;
  v84[8] = v126;
  v84[9] = v127;
  v84[10] = v128;
  v84[4] = v122;
  v84[5] = v123;
  v84[7] = v125;
  v84[6] = v124;
  v84[0] = v118;
  v84[1] = v119;
  v84[3] = v121;
  v84[2] = v120;
  sub_10000F8D0(&v73, v99, &qword_100123A70);
  sub_10000F938(v84, &qword_100123A70);
  v58 = v81;
  v59 = v82;
  v60 = v83;
  v54 = v77;
  v55 = v78;
  v56 = v79;
  v57 = v80;
  v50 = v73;
  v51 = v74;
  v52 = v75;
  v53 = v76;
  v24 = *(a1 + 24);
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v69[4] = *&v68[72];
  v69[5] = *&v68[88];
  v69[6] = *&v68[104];
  v70 = v68[120];
  v69[0] = *&v68[8];
  v69[1] = *&v68[24];
  v69[2] = *&v68[40];
  v69[3] = *&v68[56];
  v28 = sub_1000D2B5C();
  v30 = v29;
  sub_1000297C8(a1, v69, &v118);
  v93 = v126;
  v94 = v127;
  v95 = v128;
  v89 = v122;
  v90 = v123;
  v92 = v125;
  v91 = v124;
  v85 = v118;
  v86 = v119;
  v88 = v121;
  v87 = v120;
  v96[8] = v126;
  v96[9] = v127;
  v96[10] = v128;
  v96[4] = v122;
  v96[5] = v123;
  v96[7] = v125;
  v96[6] = v124;
  v96[0] = v118;
  v96[1] = v119;
  v96[3] = v121;
  v96[2] = v120;
  sub_10000F8D0(&v85, v99, &qword_100123A70);
  sub_10000F938(v96, &qword_100123A70);
  v44 = v93;
  v45 = v94;
  v46 = v95;
  v40 = v89;
  v41 = v90;
  v42 = v91;
  v43 = v92;
  v36 = v85;
  v37 = v86;
  v38 = v87;
  v39 = v88;
  sub_1000D2B5C();
  sub_1000D1C8C();
  *&__src[0] = v21;
  *(&__src[0] + 1) = v23;
  __src[9] = v58;
  __src[10] = v59;
  __src[5] = v54;
  __src[6] = v55;
  __src[8] = v57;
  __src[7] = v56;
  __src[1] = v50;
  __src[2] = v51;
  __src[4] = v53;
  __src[3] = v52;
  __src[11] = v60;
  __src[12] = v47;
  __src[13] = v48;
  __src[14] = v49;
  *&__src[15] = v14;
  *(&__src[15] + 1) = v24;
  *&__src[16] = v25;
  *(&__src[16] + 1) = v16;
  memcpy(v32, __src, 0x110uLL);
  *&v98[0] = v28;
  *(&v98[0] + 1) = v30;
  v98[9] = v44;
  v98[10] = v45;
  v98[5] = v40;
  v98[6] = v41;
  v98[8] = v43;
  v98[7] = v42;
  v98[1] = v36;
  v98[2] = v37;
  v98[4] = v39;
  v98[3] = v38;
  v98[11] = v46;
  v98[12] = v33;
  v98[13] = v34;
  v98[14] = v35;
  *&v98[15] = v15;
  *(&v98[15] + 1) = v26;
  *&v98[16] = v27;
  *(&v98[16] + 1) = v17;
  memcpy(&v32[272], v98, 0x110uLL);
  memcpy(a2, v32, 0x220uLL);
  v99[0] = v28;
  v99[1] = v30;
  v108 = v44;
  v109 = v45;
  v104 = v40;
  v105 = v41;
  v107 = v43;
  v106 = v42;
  v100 = v36;
  v101 = v37;
  v103 = v39;
  v102 = v38;
  v110 = v46;
  v111 = v33;
  v112 = v34;
  v113 = v35;
  v114 = v15;
  v115 = v26;
  v116 = v27;
  v117 = v17;
  sub_10000F8D0(__src, &v118, &qword_100123A78);
  sub_10000F8D0(v98, &v118, &qword_100123A78);
  sub_10000F938(v99, &qword_100123A78);
  *&v118 = v21;
  *(&v118 + 1) = v23;
  v127 = v58;
  v128 = v59;
  v123 = v54;
  v124 = v55;
  v126 = v57;
  v125 = v56;
  v119 = v50;
  v120 = v51;
  v122 = v53;
  v121 = v52;
  v129 = v60;
  v130 = v47;
  v131 = v48;
  v132 = v49;
  v133 = v14;
  v134 = v24;
  v135 = v25;
  v136 = v16;
  return sub_10000F938(&v118, &qword_100123A78);
}

uint64_t sub_1000297C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_100029954(a2[13], &v25);
  v32[4] = v29;
  v32[5] = v30;
  v32[6] = v31;
  v32[0] = v25;
  v32[1] = v26;
  v32[2] = v27;
  v32[3] = v28;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v13 = a2[10];
  v12 = a2[11];
  v18 = v29;
  v19 = v30;
  v16 = v27;
  v17 = v28;
  *&v33 = v6;
  *(&v33 + 1) = v7;
  *&v34 = v8;
  *(&v34 + 1) = v9;
  *&v35 = v10;
  *(&v35 + 1) = v11;
  *&v36 = v13;
  *(&v36 + 1) = v12;
  v23 = v35;
  v24 = v36;
  v21 = v33;
  v22 = v34;
  v20 = v31;
  v14 = v26;
  *a3 = v25;
  a3[1] = v14;
  a3[4] = v18;
  a3[5] = v19;
  a3[2] = v16;
  a3[3] = v17;
  a3[9] = v23;
  a3[10] = v24;
  a3[7] = v21;
  a3[8] = v22;
  a3[6] = v20;
  v37[0] = v6;
  v37[1] = v7;
  v37[2] = v8;
  v37[3] = v9;
  v37[4] = v10;
  v37[5] = v11;
  v37[6] = v13;
  v37[7] = v12;

  sub_10000F8D0(v32, v38, &qword_100123A80);
  sub_10002AA48(&v33, v38);
  sub_10000F6C4(v37);
  v38[4] = v29;
  v38[5] = v30;
  v38[6] = v31;
  v38[0] = v25;
  v38[1] = v26;
  v38[2] = v27;
  v38[3] = v28;
  return sub_10000F938(v38, &qword_100123A80);
}

uint64_t sub_100029954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 56);
  sub_1000D1BEC();

  v6 = sub_1000D2B5C();
  v8 = v7;
  v9 = sub_1000D2B5C();
  *a2 = v12 * 0.5;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v5;
  *(a2 + 56) = 256;
  *(a2 + 64) = v6;
  *(a2 + 72) = v8;
  *(a2 + 80) = a1;
  *(a2 + 88) = 256;
  *(a2 + 96) = v9;
  *(a2 + 104) = v10;
}

uint64_t sub_100029B3C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000D20BC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100029BA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000D200C();
  *a1 = result;
  return result;
}

uint64_t sub_100029BF4@<X0>(void *a1@<X8>)
{
  result = sub_1000D1FEC();
  *a1 = v3;
  return result;
}

uint64_t sub_100029C48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D1F8C();
  *a1 = result;
  return result;
}

uint64_t sub_100029CA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D202C();
  *a1 = result;
  return result;
}

uint64_t sub_100029D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_100029E18@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000D20BC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100029E7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000D200C();
  *a1 = result;
  return result;
}

uint64_t sub_100029ED0@<X0>(void *a1@<X8>)
{
  result = sub_1000D1FEC();
  *a1 = v3;
  return result;
}

uint64_t sub_100029F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100029F8C(uint64_t a1)
{
  v2 = type metadata accessor for SportsWidgetPlayByPlayView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029FE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D1F8C();
  *a1 = result;
  return result;
}

uint64_t sub_10002A040@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D202C();
  *a1 = result;
  return result;
}

uint64_t sub_10002A110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsWidgetDynamicIslandExpandedViewLayout();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SportsWidgetDynamicIslandExpandedViewModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002A214(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SportsWidgetDynamicIslandExpandedViewLayout();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SportsWidgetDynamicIslandExpandedViewModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10002A310()
{
  result = type metadata accessor for SportsWidgetDynamicIslandExpandedViewLayout();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SportsWidgetDynamicIslandExpandedViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002A39C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 360))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002A3E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002A4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SportsWidgetDynamicIslandCompactViewModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002A564(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SportsWidgetDynamicIslandCompactViewModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002A628()
{
  result = type metadata accessor for SportsWidgetDynamicIslandCompactViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10002A6C0()
{
  result = qword_1001239C8;
  if (!qword_1001239C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001239C8);
  }

  return result;
}

unint64_t sub_10002A74C()
{
  result = qword_1001239E8;
  if (!qword_1001239E8)
  {
    sub_10000637C(&qword_1001239E0);
    sub_10000637C(&qword_1001239F0);
    sub_10002A844();
    swift_getOpaqueTypeConformance2();
    sub_10002A8FC(&qword_100122720, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001239E8);
  }

  return result;
}

unint64_t sub_10002A844()
{
  result = qword_1001239F8;
  if (!qword_1001239F8)
  {
    sub_10000637C(&qword_1001239F0);
    sub_10000FC38(&qword_100123A00, &qword_100123A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001239F8);
  }

  return result;
}

uint64_t sub_10002A8FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002A944()
{
  result = qword_100123A18;
  if (!qword_100123A18)
  {
    sub_10000637C(&qword_100123A10);
    sub_10000FC38(&qword_100123A20, &qword_100123A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123A18);
  }

  return result;
}

double sub_10002A9FC(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 168) = -1;
  return result;
}

double sub_10002AA24(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 255;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  return result;
}

unint64_t sub_10002AAA8()
{
  result = qword_100123A88;
  if (!qword_100123A88)
  {
    sub_10000637C(&qword_100123A90);
    sub_10002A74C();
    sub_10000637C(&qword_100123A10);
    sub_10002A944();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123A88);
  }

  return result;
}

unint64_t sub_10002AB7C()
{
  result = qword_100123A98;
  if (!qword_100123A98)
  {
    sub_10000637C(&qword_100123AA0);
    sub_10000FC38(&qword_100123A68, &qword_100123A60);
    sub_10002A8FC(&qword_100122720, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123A98);
  }

  return result;
}

uint64_t sub_10002AC98()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C0E0);
  sub_100006610(v10, qword_10013C0E0);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_10002AF88()
{
  v0 = sub_100006334(&qword_100123738);
  __chkstk_darwin(v0 - 8);
  v57 = &v35 - v1;
  v2 = sub_1000D35CC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v3 - 8);
  v58 = &v35 - v4;
  v5 = sub_1000D189C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D1A2C();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000D35EC();
  __chkstk_darwin(v10 - 8);
  v54 = sub_1000D18BC();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006334(&qword_100123B98);
  v12 = sub_100006334(&qword_1001237A8);
  v55 = v12;
  v13 = *(v12 - 8);
  v46 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v53 = xmmword_1000E2080;
  v47 = v15;
  *(v15 + 16) = xmmword_1000E2080;
  v52 = v15 + v14;
  v45 = *(v12 + 48);
  *(v15 + v14) = 0;
  sub_1000D358C();
  sub_1000D1A1C();
  v16 = v6 + 104;
  v17 = *(v6 + 104);
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17(v8);
  v48 = "com.apple.Preferences";
  v49 = v17;
  sub_1000D18CC();
  sub_1000D35BC();
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  sub_1000D35AC(v59);
  v60._object = 0x80000001000D72D0;
  v60._countAndFlagsBits = 0x1000000000000031;
  sub_1000D359C(v60);
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  sub_1000D35AC(v61);
  sub_1000D35DC();
  sub_1000D1A1C();
  v19 = v5;
  (v17)(v8, v18, v5);
  v20 = v16;
  v21 = v58;
  sub_1000D18CC();
  v22 = v56 + 56;
  v44 = *(v56 + 56);
  v44(v21, 0, 1, v54);
  v42 = sub_1000D15FC();
  v23 = *(v42 - 8);
  v41 = *(v23 + 56);
  v43 = v23 + 56;
  v41(v57, 1, 1, v42);
  v40 = sub_100006334(&qword_100123750);
  v56 = v22;
  v50 = *(v22 + 16);
  v38 = *(v22 + 24);
  v37 = ((v38 + 32) & ~v38) + 2 * v50;
  v39 = (v38 + 32) & ~v38;
  *(swift_allocObject() + 16) = v53;
  sub_1000D358C();
  sub_1000D1A1C();
  v35 = v20;
  v24 = v49;
  (v49)(v8, v18, v5);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v24(v8, v18, v5);
  sub_1000D18CC();
  v25 = v52;
  v26 = v57;
  sub_1000D162C();
  v27 = *(v55 + 48);
  v45 = (v25 + v46);
  v46 = v27;
  *v45 = 1;
  sub_1000D358C();
  sub_1000D1A1C();
  v28 = v18;
  v29 = v18;
  v36 = v19;
  v30 = v49;
  (v49)(v8, v29, v19);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v30(v8, v28, v19);
  v31 = v58;
  sub_1000D18CC();
  v44(v31, 0, 1, v54);
  v41(v26, 1, 1, v42);
  *(swift_allocObject() + 16) = v53;
  sub_1000D358C();
  sub_1000D1A1C();
  v32 = v36;
  v30(v8, v28, v36);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v30(v8, v28, v32);
  sub_1000D18CC();
  sub_1000D162C();
  v33 = sub_100024564(v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10013C0F8 = v33;
  return result;
}

uint64_t sub_10002B900()
{
  sub_1000D364C();
}

void sub_10002B980(uint64_t *a1@<X8>)
{
  v2 = 0x6C617551646F6F47;
  if (*v1)
  {
    v2 = 0x6C61755174736542;
  }

  *a1 = v2;
  a1[1] = 0xEB00000000797469;
}

uint64_t sub_10002B9F4(uint64_t a1)
{
  v2 = sub_10002CFF4();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10002BA64(uint64_t a1)
{
  v2 = sub_10002D0A4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10002BAB0()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C100);
  sub_100006610(v10, qword_10013C100);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_10002BD9C()
{
  v0 = sub_100006334(&qword_100123738);
  __chkstk_darwin(v0 - 8);
  v58 = &v35 - v1;
  v2 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v2 - 8);
  v59 = &v35 - v3;
  v4 = sub_1000D189C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D1A2C();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000D35EC();
  __chkstk_darwin(v9 - 8);
  v56 = sub_1000D18BC();
  v10 = *(v56 - 8);
  __chkstk_darwin(v56);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006334(&qword_100123BA0);
  v12 = sub_100006334(&qword_1001237B8);
  v57 = v12;
  v13 = *(v12 - 8);
  v51 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v52 = v15;
  *(v15 + 16) = xmmword_1000E2080;
  v55 = v15 + v14;
  v50 = *(v12 + 48);
  *(v15 + v14) = 0;
  sub_1000D358C();
  sub_1000D1A1C();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = v5 + 104;
  v18 = *(v5 + 104);
  v54 = v4;
  v18(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  v36 = v18;
  v37 = v17;
  v38 = "com.apple.Preferences";
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v19 = v16;
  v53 = v16;
  v18(v7, v16, v4);
  v20 = v59;
  sub_1000D18CC();
  v49 = *(v10 + 56);
  v49(v20, 0, 1, v56);
  v47 = sub_1000D15FC();
  v21 = *(v47 - 8);
  v46 = *(v21 + 56);
  v48 = v21 + 56;
  v46(v58, 1, 1, v47);
  v22 = sub_100006334(&qword_100123750);
  v41 = v10 + 56;
  v23 = *(v10 + 72);
  v44 = v22;
  v45 = v23;
  v40 = *(v10 + 80);
  v39 = (v40 + 32) & ~v40;
  v24 = swift_allocObject();
  v43 = xmmword_1000E0440;
  *(v24 + 16) = xmmword_1000E0440;
  sub_1000D358C();
  sub_1000D1A1C();
  v25 = v7;
  v26 = v7;
  v27 = v54;
  v28 = v36;
  v36(v26, v19, v54);
  sub_1000D18CC();
  v29 = v55;
  sub_1000D162C();
  v30 = *(v57 + 48);
  v50 = (v29 + v51);
  v51 = v30;
  *v50 = 1;
  sub_1000D358C();
  sub_1000D1A1C();
  v31 = v53;
  v28(v25, v53, v27);
  sub_1000D18CC();
  sub_1000D358C();
  sub_1000D1A1C();
  v28(v25, v31, v27);
  v32 = v59;
  sub_1000D18CC();
  v49(v32, 0, 1, v56);
  v46(v58, 1, 1, v47);
  *(swift_allocObject() + 16) = v43;
  sub_1000D358C();
  sub_1000D1A1C();
  v28(v25, v53, v54);
  sub_1000D18CC();
  sub_1000D162C();
  v33 = sub_10002474C(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10013C118 = v33;
  return result;
}

uint64_t sub_10002C5AC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6C61755174736542;
  }

  else
  {
    v2 = 0x6C617551646F6F47;
  }

  if (*a2)
  {
    v3 = 0x6C61755174736542;
  }

  else
  {
    v3 = 0x6C617551646F6F47;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1000D39CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10002C640()
{
  sub_1000D3A4C();
  sub_1000D364C();

  return sub_1000D3A6C();
}

Swift::Int sub_10002C6C4()
{
  sub_1000D3A4C();
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_10002C750@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_1000D39AC(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10002C7E0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1000D174C();
  v6 = sub_100006610(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_10002C87C(uint64_t a1)
{
  v2 = sub_10002CABC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10002C8EC(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_10002C950(uint64_t a1)
{
  v2 = sub_10002CB6C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10002C9A0()
{
  result = qword_100123AA8;
  if (!qword_100123AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AA8);
  }

  return result;
}

unint64_t sub_10002C9F8()
{
  result = qword_100123AB0;
  if (!qword_100123AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AB0);
  }

  return result;
}

unint64_t sub_10002CA50()
{
  result = qword_100123AB8;
  if (!qword_100123AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AB8);
  }

  return result;
}

unint64_t sub_10002CABC()
{
  result = qword_100123AC0;
  if (!qword_100123AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AC0);
  }

  return result;
}

unint64_t sub_10002CB10()
{
  result = qword_100123AC8;
  if (!qword_100123AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AC8);
  }

  return result;
}

unint64_t sub_10002CB6C()
{
  result = qword_100123AD0;
  if (!qword_100123AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AD0);
  }

  return result;
}

unint64_t sub_10002CBC0()
{
  result = qword_100123AD8;
  if (!qword_100123AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AD8);
  }

  return result;
}

unint64_t sub_10002CC18()
{
  result = qword_100123AE0;
  if (!qword_100123AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AE0);
  }

  return result;
}

unint64_t sub_10002CCA4()
{
  result = qword_100123AF8;
  if (!qword_100123AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123AF8);
  }

  return result;
}

unint64_t sub_10002CCFC()
{
  result = qword_100123B00;
  if (!qword_100123B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B00);
  }

  return result;
}

unint64_t sub_10002CD54()
{
  result = qword_100123B08;
  if (!qword_100123B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B08);
  }

  return result;
}

unint64_t sub_10002CDD4()
{
  result = qword_100123B10;
  if (!qword_100123B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B10);
  }

  return result;
}

unint64_t sub_10002CE2C()
{
  result = qword_100123B18;
  if (!qword_100123B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B18);
  }

  return result;
}

unint64_t sub_10002CE84()
{
  result = qword_100123B20;
  if (!qword_100123B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B20);
  }

  return result;
}

unint64_t sub_10002CEDC()
{
  result = qword_100123B28;
  if (!qword_100123B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B28);
  }

  return result;
}

unint64_t sub_10002CF34()
{
  result = qword_100123B30;
  if (!qword_100123B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B30);
  }

  return result;
}

unint64_t sub_10002CFF4()
{
  result = qword_100123B38;
  if (!qword_100123B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B38);
  }

  return result;
}

unint64_t sub_10002D048()
{
  result = qword_100123B40;
  if (!qword_100123B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B40);
  }

  return result;
}

unint64_t sub_10002D0A4()
{
  result = qword_100123B48;
  if (!qword_100123B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B48);
  }

  return result;
}

unint64_t sub_10002D0F8()
{
  result = qword_100123B50;
  if (!qword_100123B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B50);
  }

  return result;
}

unint64_t sub_10002D150()
{
  result = qword_100123B58;
  if (!qword_100123B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B58);
  }

  return result;
}

uint64_t sub_10002D1D8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000637C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002D230()
{
  result = qword_100123B70;
  if (!qword_100123B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B70);
  }

  return result;
}

unint64_t sub_10002D288()
{
  result = qword_100123B78;
  if (!qword_100123B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B78);
  }

  return result;
}

unint64_t sub_10002D2E0()
{
  result = qword_100123B80;
  if (!qword_100123B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B80);
  }

  return result;
}

uint64_t sub_10002D360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10002D39C()
{
  result = qword_100123B88;
  if (!qword_100123B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B88);
  }

  return result;
}

unint64_t sub_10002D3F4()
{
  result = qword_100123B90;
  if (!qword_100123B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123B90);
  }

  return result;
}

uint64_t sub_10002D49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006334(&qword_1001222B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SportsWidgetSoccerClockViewModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10002D5CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100006334(&qword_1001222B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SportsWidgetSoccerClockViewModel(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10002D704()
{
  sub_100006E68();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsWidgetSoccerClockViewModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10002D7AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SportsWidgetGenericClockViewModel(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SportsWidgetSoccerClockView(0);
  sub_10002EC88(v1 + *(v6 + 20), v5, type metadata accessor for SportsWidgetGenericClockViewModel);
  v7 = (v1 + *(v6 + 24));
  v8 = v7[3];
  v23 = v7[2];
  v24 = v8;
  v25 = v7[4];
  v9 = v7[1];
  v21 = *v7;
  v22 = v9;
  *a1 = swift_getKeyPath();
  sub_100006334(&qword_100122410);
  swift_storeEnumTagMultiPayload();
  v10 = sub_100006334(&qword_100123C40);
  v11 = v10[9];
  *(a1 + v11) = swift_getKeyPath();
  sub_100006334(&qword_100123C48);
  swift_storeEnumTagMultiPayload();
  sub_10002EC88(v5, a1 + v10[11], type metadata accessor for SportsWidgetGenericClockViewModel);
  v12 = (a1 + v10[10]);
  v13 = v24;
  v12[2] = v23;
  v12[3] = v13;
  v12[4] = v25;
  v14 = v22;
  *v12 = v21;
  v12[1] = v14;
  v15 = v10[12];
  sub_10002E7F8(&v21, v20);
  sub_10002D9DC(v1, a1 + v15);
  v16 = sub_100006334(&qword_100123C50);
  v17 = *(*(v16 - 8) + 56);
  v17(a1 + v15, 0, 1, v16);
  v18 = v10[13];
  sub_10002DCE8(v1, a1 + v18);
  sub_10002E854(v5);
  return (v17)(a1 + v18, 0, 1, v16);
}

uint64_t sub_10002D9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000D24BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CompetitorShootoutsView(0);
  v27 = *(v8 - 1);
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SportsWidgetSoccerClockView(0);
  v12 = a1 + *(v11 + 20);
  v13 = *(v12 + *(type metadata accessor for SportsWidgetSoccerClockViewModel(0) + 20));
  if (v13 && *(v13 + 16) == 2)
  {
    v14 = *(v13 + 32);
    v15 = (a1 + *(v11 + 24));
    v16 = v15[3];
    v30 = v15[2];
    v31 = v16;
    v17 = v15[4];
    v18 = v15[1];
    v29[0] = *v15;
    v29[1] = v18;
    v35 = v30;
    v36 = v16;
    v37 = v17;
    v34 = v18;
    v32 = v17;
    v33 = v29[0];

    sub_10002E7F8(v29, v28);
    v19 = sub_1000D22BC();
    v20 = sub_1000D22CC();
    v28[0] = 0x4014000000000000;
    (*(v5 + 104))(v7, enum case for Font.TextStyle.footnote(_:), v4);
    sub_10002E8D0();
    sub_1000D1C0C();
    v28[0] = 0x4010000000000000;
    sub_1000D1C1C();
    *&v10[v8[6]] = v14;
    v21 = &v10[v8[7]];
    v22 = v36;
    *(v21 + 2) = v35;
    *(v21 + 3) = v22;
    *(v21 + 4) = v37;
    v23 = v34;
    *v21 = v33;
    *(v21 + 1) = v23;
    *(v21 + 10) = 0x3FF0000000000000;
    *&v10[v8[8]] = v19;
    *&v10[v8[9]] = v20;
    sub_10002E924(v10, a2);
    return (*(v27 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v25 = *(v27 + 56);

    return v25(a2, 1, 1, v8);
  }
}

uint64_t sub_10002DCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000D24BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CompetitorShootoutsView(0);
  v27 = *(v8 - 1);
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SportsWidgetSoccerClockView(0);
  v12 = a1 + *(v11 + 20);
  v13 = *(v12 + *(type metadata accessor for SportsWidgetSoccerClockViewModel(0) + 20));
  if (v13 && *(v13 + 16) == 2)
  {
    v14 = *(v13 + 40);
    v15 = (a1 + *(v11 + 24));
    v16 = v15[3];
    v30 = v15[2];
    v31 = v16;
    v17 = v15[4];
    v18 = v15[1];
    v29[0] = *v15;
    v29[1] = v18;
    v35 = v30;
    v36 = v16;
    v37 = v17;
    v34 = v18;
    v32 = v17;
    v33 = v29[0];

    sub_10002E7F8(v29, v28);
    v19 = sub_1000D22BC();
    v20 = sub_1000D22CC();
    v28[0] = 0x4014000000000000;
    (*(v5 + 104))(v7, enum case for Font.TextStyle.footnote(_:), v4);
    sub_10002E8D0();
    sub_1000D1C0C();
    v28[0] = 0x4010000000000000;
    sub_1000D1C1C();
    *&v10[v8[6]] = v14;
    v21 = &v10[v8[7]];
    v22 = v36;
    *(v21 + 2) = v35;
    *(v21 + 3) = v22;
    *(v21 + 4) = v37;
    v23 = v34;
    *v21 = v33;
    *(v21 + 1) = v23;
    *(v21 + 10) = 0x3FF0000000000000;
    *&v10[v8[8]] = v19;
    *&v10[v8[9]] = v20;
    sub_10002E924(v10, a2);
    return (*(v27 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v25 = *(v27 + 56);

    return v25(a2, 1, 1, v8);
  }
}

uint64_t sub_10002DFF8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  result = type metadata accessor for CompetitorShootoutsView(0);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + *(result + 24));
    if (v5 < *(v7 + 16))
    {
      v8 = *(v7 + v5 + 32);
      if (v8)
      {
        if (v8 == 1)
        {
          sub_10002E47C(&v24);
          v31 = v26[2];
          v32 = v26[3];
          *v33 = v26[4];
          *&v33[16] = v27;
          v28 = v24;
          v29 = v25;
          *v30 = v26[0];
          *&v30[16] = v26[1];
          sub_10002F218(&v28);
LABEL_9:
          v21 = v31;
          v22 = v32;
          v23[0] = *v33;
          *(v23 + 9) = *&v33[9];
          v17 = v28;
          v18 = v29;
          v19 = *v30;
          v20 = *&v30[16];
          sub_100006334(&qword_100123D50);
          sub_100006334(&qword_100123D80);
          sub_10002F024();
          sub_10002F160();
          result = sub_1000D229C();
          v9 = v39;
          a3[4] = v38;
          a3[5] = v9;
          a3[6] = v40[0];
          *(a3 + 105) = *(v40 + 9);
          v10 = v35;
          *a3 = v34;
          a3[1] = v10;
          v11 = v37;
          a3[2] = v36;
          a3[3] = v11;
          return result;
        }

        sub_10002E350(&v12);
        v34 = v12;
        v35 = v13;
        v36 = v14;
        *&v37 = v15;
        v16 = 1;
        BYTE8(v37) = 1;
      }

      else
      {
        sub_10002E220(&v12);
        v34 = v12;
        v35 = v13;
        v36 = v14;
        *&v37 = v15;
        v16 = 0;
        BYTE8(v37) = 0;
      }

      sub_100006334(&qword_100123D60);
      sub_10002F0A8();
      sub_1000D229C();
      v28 = v24;
      v29 = v25;
      *v30 = v26[0];
      *&v30[9] = *(v26 + 9);
      sub_10002F224(&v28);
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_10002E220@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for CompetitorShootoutsView(0) + 36));
  sub_100006334(&qword_100123C60);
  sub_1000D1C2C();
  sub_1000D1C2C();
  sub_1000D2B5C();
  sub_1000D1C8C();
  *&v5[2] = v6;
  *&v5[18] = v7;
  *&v5[34] = v8;
  *(a1 + 6) = *v5;
  *a1 = v3;
  *(a1 + 4) = 256;
  *(a1 + 22) = *&v5[16];
  result = *&v5[32];
  *(a1 + 38) = *&v5[32];
  *(a1 + 54) = HIWORD(v8);
  return result;
}

__n128 sub_10002E350@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for CompetitorShootoutsView(0) + 32));
  sub_100006334(&qword_100123C60);
  sub_1000D1C2C();
  sub_1000D1C2C();
  sub_1000D2B5C();
  sub_1000D1C8C();
  *&v5[2] = v6;
  *&v5[18] = v7;
  *&v5[34] = v8;
  *(a1 + 6) = *v5;
  *a1 = v3;
  *(a1 + 4) = 256;
  *(a1 + 22) = *&v5[16];
  result = *&v5[32];
  *(a1 + 38) = *&v5[32];
  *(a1 + 54) = HIWORD(v8);
  return result;
}

double sub_10002E47C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CompetitorShootoutsView(0);
  sub_1000D1BEC();
  v2 = sub_1000D2B5C();
  v4 = v3;
  sub_100006334(&qword_100123C60);
  sub_1000D1C2C();
  sub_1000D1C2C();
  sub_1000D2B5C();
  sub_1000D1C8C();
  *a1 = v9 * 0.5;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = 256;
  *(a1 + 56) = v2;
  *(a1 + 64) = v4;
  *(a1 + 72) = v6;
  *(a1 + 88) = v7;
  result = *&v8;
  *(a1 + 104) = v8;
  return result;
}

uint64_t sub_10002E60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1 - 8;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  if (*(v2 + *(v5 + 36)) == 2)
  {
    v8 = 0x4004000000000000;
  }

  else
  {
    v8 = 0x4010000000000000;
  }

  *a2 = sub_1000D210C();
  *(a2 + 8) = v8;
  *(a2 + 16) = 0;
  sub_100006334(&qword_100123D18);
  v9 = *(*(v3 + *(v5 + 32)) + 16);
  v13[0] = 0;
  v13[1] = v9;
  swift_getKeyPath();
  sub_10002EC88(v3, v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CompetitorShootoutsView);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_10002E924(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_100006334(&qword_100123D20);
  sub_100006334(&qword_100123D28);
  sub_10002EEB8();
  sub_10002EF98();
  return sub_1000D2ABC();
}

uint64_t sub_10002E854(uint64_t a1)
{
  v2 = type metadata accessor for SportsWidgetGenericClockViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002E8D0()
{
  result = qword_100123C58;
  if (!qword_100123C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123C58);
  }

  return result;
}

uint64_t sub_10002E924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompetitorShootoutsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006334(&qword_100123C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002EA78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100006334(&qword_100123C60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10002EB3C()
{
  sub_10002EBCC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10002EBCC()
{
  if (!qword_100123CD0)
  {
    sub_10002E8D0();
    v0 = sub_1000D1C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_100123CD0);
    }
  }
}

uint64_t sub_10002EC88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002ECF0()
{
  v1 = (type metadata accessor for CompetitorShootoutsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_100006334(&qword_100123C60);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002EE38@<X0>(unint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for CompetitorShootoutsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10002DFF8(a1, v6, a2);
}

unint64_t sub_10002EEB8()
{
  result = qword_100123D30;
  if (!qword_100123D30)
  {
    sub_10000637C(&qword_100123D20);
    sub_10002EF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123D30);
  }

  return result;
}

unint64_t sub_10002EF44()
{
  result = qword_100123D38;
  if (!qword_100123D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123D38);
  }

  return result;
}

unint64_t sub_10002EF98()
{
  result = qword_100123D40;
  if (!qword_100123D40)
  {
    sub_10000637C(&qword_100123D28);
    sub_10002F024();
    sub_10002F160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123D40);
  }

  return result;
}

unint64_t sub_10002F024()
{
  result = qword_100123D48;
  if (!qword_100123D48)
  {
    sub_10000637C(&qword_100123D50);
    sub_10002F0A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123D48);
  }

  return result;
}

unint64_t sub_10002F0A8()
{
  result = qword_100123D58;
  if (!qword_100123D58)
  {
    sub_10000637C(&qword_100123D60);
    sub_10000FC38(&qword_100123D68, &qword_100123D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123D58);
  }

  return result;
}

unint64_t sub_10002F160()
{
  result = qword_100123D78;
  if (!qword_100123D78)
  {
    sub_10000637C(&qword_100123D80);
    sub_10000FC38(&qword_100123D88, &qword_100123D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123D78);
  }

  return result;
}

double sub_10002F270@<D0>(uint64_t a1@<X8>)
{
  v2 = Color.init(hex:)(0x334133413341, 0xE600000000000000);
  if (!v2)
  {
    v2 = sub_1000D281C();
  }

  v3 = v2;
  v4 = Color.init(hex:)(0x433341334133, 0xE600000000000000);
  if (!v4)
  {
    v4 = sub_1000D281C();
  }

  v5 = v4;
  v6 = Color.init(hex:)(0x413141314131, 0xE600000000000000);
  *a1 = xmmword_1000E31A0;
  *(a1 + 16) = xmmword_1000E31B0;
  result = 2.0;
  *(a1 + 32) = xmmword_1000E31C0;
  *(a1 + 48) = xmmword_1000E31D0;
  *(a1 + 64) = 0x4008000000000000;
  *(a1 + 72) = v3;
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  return result;
}

uint64_t sub_10002F320(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002F368(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10002F3D4()
{
  result = qword_100123DB0;
  if (!qword_100123DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DB0);
  }

  return result;
}

uint64_t sub_10002F46C()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C120);
  sub_100006610(v10, qword_10013C120);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_10002F75C()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C138);
  sub_100006610(v0, qword_10013C138);
  return sub_1000D188C();
}

uint64_t sub_10002F7C0()
{
  v0 = sub_100006334(&qword_100122908);
  sub_1000065AC(v0, qword_10013C150);
  v1 = sub_100006610(v0, qword_10013C150);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10002F880()
{
  result = swift_getKeyPath();
  qword_10013C168 = result;
  return result;
}

uint64_t sub_10002F8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_10002F8CC, 0, 0);
}

uint64_t sub_10002F8CC()
{
  sub_1000D154C();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  sub_1000D154C();
  *(v0 + 225) = *(v0 + 224);
  if (qword_100122018 != -1)
  {
    swift_once();
  }

  v3 = qword_10013C168;
  *(v0 + 152) = qword_10013C168;

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  v5 = sub_10000FC38(&qword_100123F20, &qword_100123F28);
  *(v0 + 168) = v5;
  *v4 = v0;
  v4[1] = sub_10002FA38;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 225, v3, &type metadata for Bool, v5);
}

uint64_t sub_10002FA38()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_10002FBA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002FBA8()
{
  sub_1000D154C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v0[23] = v2;
  v0[24] = v3;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v3;
  v4 = qword_10013C168;
  v0[25] = qword_10013C168;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100014DE4;
  v6 = v0[21];

  return AppEntity._value<A, B>(for:)(v0 + 226, v4, v6);
}

uint64_t (*sub_10002FC8C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_10002FD00(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

uint64_t sub_10002FD74()
{
  if (qword_100122018 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10002FDD4()
{
  result = qword_100123DC8;
  if (!qword_100123DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DC8);
  }

  return result;
}

unint64_t sub_10002FE2C()
{
  result = qword_100123DD0;
  if (!qword_100123DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DD0);
  }

  return result;
}

uint64_t sub_10002FF3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100122010 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908);
  v3 = sub_100006610(v2, qword_10013C150);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_10002FFC0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013B8C;

  return sub_10002F8A8(a1, v5, v4);
}

uint64_t sub_10003006C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003170C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000300B4()
{
  result = qword_100123DD8;
  if (!qword_100123DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DD8);
  }

  return result;
}

unint64_t sub_10003010C()
{
  result = qword_100123DE0;
  if (!qword_100123DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DE0);
  }

  return result;
}

uint64_t sub_100030180()
{
  if (qword_100122140 != -1)
  {
    swift_once();
  }

  v1 = sub_100030EB8();
  v2 = (*(v1 + 48))(&type metadata for TVSettingsDownloadUseDefaultSubtitleLanguagesEntity, v1);
  v4 = v3;
  if (qword_100122148 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = off_1001260A0;
  if (*(off_1001260A0 + 2) && (v6 = sub_1000232F8(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();

  **(v0 + 40) = sub_1000B8110(v8) & 1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100030330()
{
  sub_10006F51C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000303CC()
{
  v1 = *(v0 + 16);
  *v1 = sub_100031B74();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_10003043C()
{
  result = qword_100123DE8;
  if (!qword_100123DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DE8);
  }

  return result;
}

uint64_t sub_100030490(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10003105C();
  *v4 = v2;
  v4[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100030544()
{
  result = qword_100123DF0;
  if (!qword_100123DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DF0);
  }

  return result;
}

unint64_t sub_10003059C()
{
  result = qword_100123DF8;
  if (!qword_100123DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123DF8);
  }

  return result;
}

unint64_t sub_1000305F4()
{
  result = qword_100123E00;
  if (!qword_100123E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123E00);
  }

  return result;
}

uint64_t sub_100030648(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10003105C();
  *v5 = v2;
  v5[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000306FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10003105C();
  *v4 = v2;
  v4[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000307B0()
{
  result = qword_100123E08;
  if (!qword_100123E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123E08);
  }

  return result;
}

unint64_t sub_100030808()
{
  result = qword_100123E10;
  if (!qword_100123E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123E10);
  }

  return result;
}

unint64_t sub_100030860()
{
  result = qword_100123E18;
  if (!qword_100123E18)
  {
    sub_10000637C(&qword_100123E20);
    sub_100030808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123E18);
  }

  return result;
}

uint64_t sub_1000308E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10003043C();
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000309C8(uint64_t a1)
{
  v2 = sub_100030EB8();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_1000305F4();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_100030A70()
{
  sub_100030E3C();
  v1 = sub_1000D169C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100030B14(uint64_t a1)
{
  v2 = sub_1000305F4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100030B60(uint64_t a1)
{
  v2 = sub_10003010C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100030BAC(uint64_t a1)
{
  v2 = sub_100030C54();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100030BFC()
{
  result = qword_100123E28;
  if (!qword_100123E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123E28);
  }

  return result;
}

unint64_t sub_100030C54()
{
  result = qword_100123E30;
  if (!qword_100123E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123E30);
  }

  return result;
}

unint64_t sub_100030CA8()
{
  result = qword_100123E38;
  if (!qword_100123E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123E38);
  }

  return result;
}

unint64_t sub_100030D00()
{
  result = qword_100123E40;
  if (!qword_100123E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123E40);
  }

  return result;
}

unint64_t sub_100030D5C()
{
  result = qword_100123E48;
  if (!qword_100123E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123E48);
  }

  return result;
}

unint64_t sub_100030DB0(void *a1)
{
  a1[1] = sub_100030DE8();
  a1[2] = sub_100030E3C();
  result = sub_10003010C();
  a1[3] = result;
  return result;
}

unint64_t sub_100030DE8()
{
  result = qword_100123E98;
  if (!qword_100123E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123E98);
  }

  return result;
}

unint64_t sub_100030E3C()
{
  result = qword_100123EA0;
  if (!qword_100123EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123EA0);
  }

  return result;
}

unint64_t sub_100030E90(uint64_t a1)
{
  result = sub_100030EB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100030EB8()
{
  result = qword_100123EE8;
  if (!qword_100123EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123EE8);
  }

  return result;
}

unint64_t sub_100030F54()
{
  result = qword_100123F00;
  if (!qword_100123F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123F00);
  }

  return result;
}

unint64_t sub_100030FAC()
{
  result = qword_100123F08;
  if (!qword_100123F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123F08);
  }

  return result;
}

unint64_t sub_100031004()
{
  result = qword_100123F10;
  if (!qword_100123F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123F10);
  }

  return result;
}

unint64_t sub_10003105C()
{
  result = qword_100123F18;
  if (!qword_100123F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123F18);
  }

  return result;
}

uint64_t sub_1000310B0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_100006334(&qword_100122BC8);
  v2 = *(v1 - 8);
  v36 = v1;
  v37 = v2;
  __chkstk_darwin(v1);
  v32 = &v32 - v3;
  v4 = sub_100006334(&qword_100122BD0);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v33 = &v32 - v6;
  v7 = sub_100006334(&qword_100122BD8);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  __chkstk_darwin(v7);
  v34 = &v32 - v9;
  v10 = sub_100006334(&qword_100122BE0);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  __chkstk_darwin(v10);
  v35 = &v32 - v12;
  strcpy(v45, "com.apple.tv.");
  HIWORD(v45[1]) = -4864;
  v13 = sub_100031F34();
  v14 = *(v13 + 40);
  v52._countAndFlagsBits = (v14)(&type metadata for TVSettingsDownloadUseDefaultSubtitleLanguagesWidget, v13);
  sub_1000D366C(v52);

  swift_getKeyPath();
  sub_100006334(&qword_100122BE8);
  sub_10003010C();
  sub_10000FC38(&qword_100122BF0, &qword_100122BE8);
  v15 = v32;
  sub_1000D32DC();
  v45[0] = v14();
  v45[1] = v16;
  v50 = 0x746567646957;
  v51 = 0xE600000000000000;
  v48 = 0x656C67676F54;
  v49 = 0xE600000000000000;
  v31 = sub_10000F320();
  v17 = sub_1000D387C();
  v19 = v18;

  v45[0] = v17;
  v45[1] = v19;
  v20 = sub_10000FC38(&qword_100122BF8, &qword_100122BC8);
  v21 = v33;
  v22 = v36;
  sub_1000D223C();

  (*(v37 + 8))(v15, v22);
  v50 = 0xD000000000000040;
  v51 = 0x80000001000D7570;
  v45[0] = v22;
  v45[1] = &type metadata for String;
  v46 = v20;
  v47 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v34;
  v25 = v38;
  sub_1000D21FC();
  (*(v39 + 8))(v21, v25);
  v45[0] = v25;
  v45[1] = &type metadata for String;
  v46 = OpaqueTypeConformance2;
  v47 = v31;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v35;
  v28 = v40;
  sub_1000D224C();
  (*(v41 + 8))(v24, v28);
  v45[0] = v28;
  v45[1] = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v42;
  sub_1000D227C();
  return (*(v43 + 8))(v27, v29);
}

uint64_t sub_10003170C()
{
  v0 = sub_100006334(&qword_100122B50);
  __chkstk_darwin(v0 - 8);
  v28 = v22 - v1;
  v29 = sub_1000D168C();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006334(&qword_1001228E8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  v11 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = sub_1000D18BC();
  v27 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[0] = sub_100006334(&qword_100123F30);
  sub_1000D188C();
  v16 = *(v15 + 56);
  v25 = v15 + 56;
  v26 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_1000D150C();
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v24 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v22[1] = v2 + 104;
  v23 = v19;
  v19(v4);
  sub_1000305F4();
  v22[0] = sub_1000D157C();
  sub_100006334(&qword_100122B60);
  sub_1000D188C();
  v26(v13, 1, 1, v27);
  LOBYTE(v30) = 2;
  v20 = sub_1000D36FC();
  (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v23(v4, v24, v29);
  sub_1000D158C();
  return v22[0];
}

uint64_t sub_100031B74()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsDownloadUseDefaultSubtitleLanguagesEntity;
  sub_100006334(&qword_100122DA0);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100123DC0);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100123F20, &qword_100123F28);
  sub_1000D179C();
  return v7;
}

unint64_t sub_100031E90(uint64_t a1)
{
  result = sub_100031EB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100031EB8()
{
  result = qword_100123F80;
  if (!qword_100123F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123F80);
  }

  return result;
}

unint64_t sub_100031F0C(uint64_t a1)
{
  result = sub_100031F34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100031F34()
{
  result = qword_100123F88;
  if (!qword_100123F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100123F88);
  }

  return result;
}

uint64_t sub_100031FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D323C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100032080(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000D323C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003215C()
{
  result = sub_1000D323C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TVWidgetContentViewModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10003220C()
{
  result = qword_100124028;
  if (!qword_100124028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124028);
  }

  return result;
}

uint64_t sub_10003227C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v303 = a1;
  v278 = type metadata accessor for TVWidgetLockscreenCell();
  __chkstk_darwin(v278);
  v256 = &v228 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_100006334(&qword_100124030);
  __chkstk_darwin(v271);
  v274 = &v228 - v4;
  v275 = sub_100006334(&qword_100124038);
  v253 = *(v275 - 8);
  __chkstk_darwin(v275);
  v252 = &v228 - v5;
  v294 = sub_100006334(&qword_100124040);
  __chkstk_darwin(v294);
  v279 = &v228 - v6;
  v292 = sub_100006334(&qword_100124048);
  __chkstk_darwin(v292);
  v293 = &v228 - v7;
  v302 = sub_100006334(&qword_100124050);
  __chkstk_darwin(v302);
  v295 = &v228 - v8;
  v282 = sub_100006334(&qword_100124058);
  __chkstk_darwin(v282);
  v284 = &v228 - v9;
  v259 = sub_100006334(&qword_100124060);
  v238 = *(v259 - 8);
  __chkstk_darwin(v259);
  v237 = &v228 - v10;
  v254 = sub_100006334(&qword_100124068);
  __chkstk_darwin(v254);
  v257 = &v228 - v11;
  v281 = type metadata accessor for TVWidgetFeatured(0);
  __chkstk_darwin(v281);
  v264 = (&v228 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v255 = sub_100006334(&qword_100124070);
  v240 = *(v255 - 8);
  __chkstk_darwin(v255);
  v239 = &v228 - v13;
  v280 = sub_100006334(&qword_100124078);
  __chkstk_darwin(v280);
  v258 = &v228 - v14;
  v287 = sub_100006334(&qword_100124080);
  __chkstk_darwin(v287);
  v283 = &v228 - v15;
  v273 = sub_100006334(&qword_100124088);
  __chkstk_darwin(v273);
  v277 = &v228 - v16;
  v251 = sub_100006334(&qword_100124090);
  v234 = *(v251 - 8);
  __chkstk_darwin(v251);
  v233 = &v228 - v17;
  v247 = sub_100006334(&qword_100124098);
  __chkstk_darwin(v247);
  v249 = &v228 - v18;
  v272 = type metadata accessor for TVWidgetCell(0);
  __chkstk_darwin(v272);
  v263 = (&v228 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v248 = sub_100006334(&qword_1001240A0);
  v236 = *(v248 - 8);
  __chkstk_darwin(v248);
  v235 = &v228 - v20;
  v270 = sub_100006334(&qword_1001240A8);
  __chkstk_darwin(v270);
  v250 = &v228 - v21;
  v291 = sub_100006334(&qword_1001240B0);
  __chkstk_darwin(v291);
  v276 = &v228 - v22;
  v299 = sub_100006334(&qword_1001240B8);
  __chkstk_darwin(v299);
  v301 = &v228 - v23;
  v288 = sub_100006334(&qword_1001240C0);
  __chkstk_darwin(v288);
  v289 = &v228 - v24;
  v300 = sub_100006334(&qword_1001240C8);
  __chkstk_darwin(v300);
  v290 = &v228 - v25;
  v268 = sub_100006334(&qword_1001240D0);
  __chkstk_darwin(v268);
  v269 = &v228 - v26;
  v246 = sub_100006334(&qword_1001240D8);
  v230 = *(v246 - 8);
  __chkstk_darwin(v246);
  v229 = &v228 - v27;
  v242 = sub_100006334(&qword_1001240E0);
  __chkstk_darwin(v242);
  v244 = &v228 - v28;
  v267 = type metadata accessor for TVWidgetLockup(0);
  __chkstk_darwin(v267);
  v261 = (&v228 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v243 = sub_100006334(&qword_1001240E8);
  v232 = *(v243 - 8);
  __chkstk_darwin(v243);
  v231 = &v228 - v30;
  v266 = sub_100006334(&qword_1001240F0);
  __chkstk_darwin(v266);
  v245 = &v228 - v31;
  v32 = sub_100006334(&qword_100122DB8);
  v33 = __chkstk_darwin(v32 - 8);
  v35 = &v228 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v33);
  v38 = &v228 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v228 - v40;
  v42 = __chkstk_darwin(v39);
  v262 = &v228 - v43;
  __chkstk_darwin(v42);
  v45 = &v228 - v44;
  v298 = sub_1000D191C();
  v46 = *(v298 - 8);
  v47 = __chkstk_darwin(v298);
  v49 = &v228 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v47);
  v260 = &v228 - v51;
  v52 = __chkstk_darwin(v50);
  v241 = &v228 - v53;
  v54 = __chkstk_darwin(v52);
  v285 = &v228 - v55;
  __chkstk_darwin(v54);
  v57 = &v228 - v56;
  v286 = sub_100006334(&qword_1001240F8);
  __chkstk_darwin(v286);
  v265 = &v228 - v58;
  v59 = *v2;
  v60 = type metadata accessor for TVWidgetContentView(0);
  v61 = v60[6];
  v297 = v2;
  v62 = *&v2[v61];
  v63 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_actionURL;
  v296 = v46;
  v64 = (v46 + 48);
  if (v59 <= 1)
  {
    if (v59)
    {
      v99 = v62;
      swift_beginAccess();
      sub_10000F8D0(v99 + v63, v41, &qword_100122DB8);
      v100 = v298;
      if ((*v64)(v41, 1, v298) == 1)
      {
        sub_10000F938(v41, &qword_100122DB8);
        v101 = v297;
        v102 = &v297[v60[7]];
        v103 = *(v102 + 3);
        v308 = *(v102 + 2);
        v309 = v103;
        v104 = *(v102 + 5);
        v310 = *(v102 + 4);
        v311 = v104;
        v105 = *(v102 + 1);
        v306 = *v102;
        v307 = v105;
        v106 = v60[5];
        v107 = v272;
        v108 = *(v272 + 24);
        v109 = sub_1000D323C();
        v110 = v263;
        (*(*(v109 - 8) + 16))(v263 + v108, &v101[v106], v109);
        *v110 = swift_getKeyPath();
        sub_100006334(&qword_100122410);
        swift_storeEnumTagMultiPayload();
        v111 = (v110 + *(v107 + 20));
        v112 = v309;
        v111[2] = v308;
        v111[3] = v112;
        v113 = v311;
        v111[4] = v310;
        v111[5] = v113;
        v114 = v307;
        *v111 = v306;
        v111[1] = v114;
        *(v110 + *(v107 + 28)) = v99;
        sub_10003A0A8(v110, v277, type metadata accessor for TVWidgetCell);
        swift_storeEnumTagMultiPayload();

        sub_1000351B4(&v306, &v304);
        sub_100035830();
        sub_1000353E4(&qword_100124170, type metadata accessor for TVWidgetCell);
        v81 = v276;
        sub_1000D229C();
        sub_10003A110(v110, type metadata accessor for TVWidgetCell);
      }

      else
      {
        v174 = v296;
        v175 = v241;
        (*(v296 + 32))(v241, v41, v100);
        v176 = v297;
        v177 = &v297[v60[7]];
        if (v177[32] == 1)
        {
          v178 = *(v177 + 3);
          v308 = *(v177 + 2);
          v309 = v178;
          v179 = *(v177 + 5);
          v310 = *(v177 + 4);
          v311 = v179;
          v180 = *(v177 + 1);
          v306 = *v177;
          v307 = v180;
          v181 = v60[5];
          v182 = v272;
          v183 = *(v272 + 24);
          v184 = sub_1000D323C();
          v185 = v263;
          (*(*(v184 - 8) + 16))(v263 + v183, &v176[v181], v184);
          *v185 = swift_getKeyPath();
          sub_100006334(&qword_100122410);
          swift_storeEnumTagMultiPayload();
          v186 = (v185 + *(v182 + 20));
          v187 = v309;
          v186[2] = v308;
          v186[3] = v187;
          v188 = v311;
          v186[4] = v310;
          v186[5] = v188;
          v189 = v307;
          *v186 = v306;
          v186[1] = v189;
          *(v185 + *(v182 + 28)) = v99;
          v190 = v262;
          (*(v174 + 16))(v262, v175, v100);
          (*(v174 + 56))(v190, 0, 1, v100);
          sub_1000351B4(&v306, &v304);
          v191 = sub_1000353E4(&qword_100124170, type metadata accessor for TVWidgetCell);

          v192 = v235;
          sub_1000D267C();
          sub_10000F938(v190, &qword_100122DB8);
          sub_10003A110(v185, type metadata accessor for TVWidgetCell);
          v193 = v236;
          v194 = v248;
          (*(v236 + 16))(v249, v192, v248);
          swift_storeEnumTagMultiPayload();
          v304 = v182;
          v305 = v191;
          swift_getOpaqueTypeConformance2();
          sub_10000FC38(&qword_100124178, &qword_100124090);
          v195 = v175;
          v196 = v250;
          sub_1000D229C();
          (*(v193 + 8))(v192, v194);
        }

        else
        {
          v222 = (*(v174 + 16))(v285, v175, v100);
          __chkstk_darwin(v222);
          *(&v228 - 2) = v176;
          v223 = sub_1000353E4(&qword_100124170, type metadata accessor for TVWidgetCell);
          v224 = v233;
          v225 = v272;
          sub_1000D24DC();
          v226 = v234;
          v227 = v251;
          (*(v234 + 16))(v249, v224, v251);
          swift_storeEnumTagMultiPayload();
          *&v306 = v225;
          *(&v306 + 1) = v223;
          swift_getOpaqueTypeConformance2();
          sub_10000FC38(&qword_100124178, &qword_100124090);
          v195 = v175;
          v196 = v250;
          sub_1000D229C();
          (*(v226 + 8))(v224, v227);
        }

        v81 = v276;
        sub_10000F8D0(v196, v277, &qword_1001240A8);
        swift_storeEnumTagMultiPayload();
        sub_100035830();
        sub_1000353E4(&qword_100124170, type metadata accessor for TVWidgetCell);
        sub_1000D229C();
        sub_10000F938(v196, &qword_1001240A8);
        (*(v296 + 8))(v195, v100);
      }

      v211 = &qword_1001240B0;
      sub_10000F8D0(v81, v289, &qword_1001240B0);
    }

    else
    {
      v65 = v62;
      swift_beginAccess();
      sub_10000F8D0(v65 + v63, v45, &qword_100122DB8);
      v66 = v298;
      if ((*v64)(v45, 1, v298) == 1)
      {
        sub_10000F938(v45, &qword_100122DB8);
        v67 = v297;
        v68 = &v297[v60[7]];
        v69 = *(v68 + 3);
        v308 = *(v68 + 2);
        v309 = v69;
        v70 = *(v68 + 5);
        v310 = *(v68 + 4);
        v311 = v70;
        v71 = *(v68 + 1);
        v306 = *v68;
        v307 = v71;
        v72 = v60[5];
        v73 = v267;
        v74 = *(v267 + 24);
        v75 = sub_1000D323C();
        v76 = v261;
        (*(*(v75 - 8) + 16))(v261 + v74, &v67[v72], v75);
        *v76 = swift_getKeyPath();
        sub_100006334(&qword_100122410);
        swift_storeEnumTagMultiPayload();
        v77 = (v76 + *(v73 + 20));
        v78 = v309;
        v77[2] = v308;
        v77[3] = v78;
        v79 = v311;
        v77[4] = v310;
        v77[5] = v79;
        v80 = v307;
        *v77 = v306;
        v77[1] = v80;
        *(v76 + *(v73 + 28)) = v65;
        sub_10003A0A8(v76, v269, type metadata accessor for TVWidgetLockup);
        swift_storeEnumTagMultiPayload();

        sub_1000351B4(&v306, &v304);
        sub_10003565C();
        sub_1000353E4(&qword_100124150, type metadata accessor for TVWidgetLockup);
        v81 = v265;
        sub_1000D229C();
        sub_10003A110(v76, type metadata accessor for TVWidgetLockup);
      }

      else
      {
        v132 = v296;
        v133 = v57;
        (*(v296 + 32))(v57, v45, v66);
        v134 = v297;
        v135 = &v297[v60[7]];
        if (v135[32] == 1)
        {
          v136 = *(v135 + 3);
          v308 = *(v135 + 2);
          v309 = v136;
          v137 = *(v135 + 5);
          v310 = *(v135 + 4);
          v311 = v137;
          v138 = *(v135 + 1);
          v306 = *v135;
          v307 = v138;
          v139 = v60[5];
          v140 = v267;
          v141 = *(v267 + 24);
          v142 = sub_1000D323C();
          v143 = v261;
          (*(*(v142 - 8) + 16))(v261 + v141, &v134[v139], v142);
          *v143 = swift_getKeyPath();
          sub_100006334(&qword_100122410);
          swift_storeEnumTagMultiPayload();
          v144 = (v143 + *(v140 + 20));
          v145 = v309;
          v144[2] = v308;
          v144[3] = v145;
          v146 = v311;
          v144[4] = v310;
          v144[5] = v146;
          v147 = v307;
          *v144 = v306;
          v144[1] = v147;
          *(v143 + *(v140 + 28)) = v65;
          v148 = v262;
          (*(v132 + 16))(v262, v133, v66);
          (*(v132 + 56))(v148, 0, 1, v66);
          sub_1000351B4(&v306, &v304);
          v149 = sub_1000353E4(&qword_100124150, type metadata accessor for TVWidgetLockup);

          v150 = v231;
          sub_1000D267C();
          sub_10000F938(v148, &qword_100122DB8);
          sub_10003A110(v143, type metadata accessor for TVWidgetLockup);
          v151 = v232;
          v152 = v243;
          (*(v232 + 16))(v244, v150, v243);
          swift_storeEnumTagMultiPayload();
          v304 = v140;
          v305 = v149;
          swift_getOpaqueTypeConformance2();
          sub_10000FC38(&qword_100124158, &qword_1001240D8);
          v153 = v245;
          sub_1000D229C();
          (*(v151 + 8))(v150, v152);
        }

        else
        {
          v204 = (*(v132 + 16))(v285, v57, v66);
          __chkstk_darwin(v204);
          *(&v228 - 2) = v134;
          v205 = sub_1000353E4(&qword_100124150, type metadata accessor for TVWidgetLockup);
          v297 = v57;
          v206 = v229;
          v207 = v267;
          sub_1000D24DC();
          v208 = v230;
          v209 = v246;
          (*(v230 + 16))(v244, v206, v246);
          swift_storeEnumTagMultiPayload();
          *&v306 = v207;
          *(&v306 + 1) = v205;
          swift_getOpaqueTypeConformance2();
          sub_10000FC38(&qword_100124158, &qword_1001240D8);
          v153 = v245;
          sub_1000D229C();
          v210 = v206;
          v133 = v297;
          (*(v208 + 8))(v210, v209);
        }

        sub_10000F8D0(v153, v269, &qword_1001240F0);
        swift_storeEnumTagMultiPayload();
        sub_10003565C();
        sub_1000353E4(&qword_100124150, type metadata accessor for TVWidgetLockup);
        v81 = v265;
        sub_1000D229C();
        sub_10000F938(v153, &qword_1001240F0);
        (*(v132 + 8))(v133, v66);
      }

      v211 = &qword_1001240F8;
      sub_10000F8D0(v81, v289, &qword_1001240F8);
    }

    swift_storeEnumTagMultiPayload();
    sub_1000355A0();
    sub_100035774();
    v220 = v290;
    sub_1000D229C();
    v221 = &qword_1001240C8;
    sub_10000F8D0(v220, v301, &qword_1001240C8);
    goto LABEL_30;
  }

  if (v59 == 2)
  {
    v82 = v62;
    swift_beginAccess();
    sub_10000F8D0(v82 + v63, v38, &qword_100122DB8);
    v83 = v298;
    v84 = (*v64)(v38, 1, v298);
    v85 = v297;
    if (v84 == 1)
    {
      sub_10000F938(v38, &qword_100122DB8);
      v86 = &v85[v60[7]];
      v87 = *(v86 + 3);
      v308 = *(v86 + 2);
      v309 = v87;
      v88 = *(v86 + 5);
      v310 = *(v86 + 4);
      v311 = v88;
      v89 = *(v86 + 1);
      v306 = *v86;
      v307 = v89;
      v90 = v60[5];
      v91 = v281;
      v92 = *(v281 + 24);
      v93 = sub_1000D323C();
      v94 = v264;
      (*(*(v93 - 8) + 16))(v264 + v92, &v85[v90], v93);
      *v94 = swift_getKeyPath();
      sub_100006334(&qword_100122410);
      swift_storeEnumTagMultiPayload();
      v95 = (v94 + *(v91 + 20));
      v96 = v309;
      v95[2] = v308;
      v95[3] = v96;
      v97 = v311;
      v95[4] = v310;
      v95[5] = v97;
      v98 = v307;
      *v95 = v306;
      v95[1] = v98;
      *(v94 + *(v91 + 28)) = v82;
      sub_10003A0A8(v94, v284, type metadata accessor for TVWidgetFeatured);
      swift_storeEnumTagMultiPayload();

      sub_1000351B4(&v306, &v304);
      sub_1000352CC();
      sub_1000353E4(&qword_100124120, type metadata accessor for TVWidgetFeatured);
      v81 = v283;
      sub_1000D229C();
      sub_10003A110(v94, type metadata accessor for TVWidgetFeatured);
    }

    else
    {
      v154 = v296;
      v155 = v260;
      (*(v296 + 32))(v260, v38, v83);
      v156 = &v85[v60[7]];
      v81 = v283;
      if (v156[32] == 1)
      {
        v157 = *(v156 + 3);
        v308 = *(v156 + 2);
        v309 = v157;
        v158 = *(v156 + 5);
        v310 = *(v156 + 4);
        v311 = v158;
        v159 = *(v156 + 1);
        v306 = *v156;
        v307 = v159;
        v160 = v60[5];
        v161 = v281;
        v162 = *(v281 + 24);
        v163 = sub_1000D323C();
        v164 = v264;
        (*(*(v163 - 8) + 16))(v264 + v162, &v85[v160], v163);
        *v164 = swift_getKeyPath();
        sub_100006334(&qword_100122410);
        swift_storeEnumTagMultiPayload();
        v165 = (v164 + *(v161 + 20));
        v166 = v309;
        v165[2] = v308;
        v165[3] = v166;
        v167 = v311;
        v165[4] = v310;
        v165[5] = v167;
        v168 = v307;
        *v165 = v306;
        v165[1] = v168;
        *(v164 + *(v161 + 28)) = v82;
        v169 = v262;
        (*(v154 + 16))(v262, v155, v83);
        (*(v154 + 56))(v169, 0, 1, v83);
        sub_1000351B4(&v306, &v304);
        v170 = sub_1000353E4(&qword_100124120, type metadata accessor for TVWidgetFeatured);

        v171 = v239;
        sub_1000D267C();
        sub_10000F938(v169, &qword_100122DB8);
        sub_10003A110(v164, type metadata accessor for TVWidgetFeatured);
        v172 = v240;
        v173 = v255;
        (*(v240 + 16))(v257, v171, v255);
        swift_storeEnumTagMultiPayload();
        v304 = v161;
        v305 = v170;
        swift_getOpaqueTypeConformance2();
        sub_10000FC38(&qword_100124128, &qword_100124060);
        v218 = v258;
        sub_1000D229C();
        (*(v172 + 8))(v171, v173);
      }

      else
      {
        v212 = (*(v154 + 16))(v285, v155, v83);
        __chkstk_darwin(v212);
        *(&v228 - 2) = v85;
        v213 = sub_1000353E4(&qword_100124120, type metadata accessor for TVWidgetFeatured);
        v214 = v237;
        v215 = v281;
        sub_1000D24DC();
        v216 = v238;
        v217 = v259;
        (*(v238 + 16))(v257, v214, v259);
        swift_storeEnumTagMultiPayload();
        *&v306 = v215;
        *(&v306 + 1) = v213;
        swift_getOpaqueTypeConformance2();
        sub_10000FC38(&qword_100124128, &qword_100124060);
        v218 = v258;
        sub_1000D229C();
        v219 = v214;
        v155 = v260;
        (*(v216 + 8))(v219, v217);
      }

      sub_10000F8D0(v218, v284, &qword_100124078);
      swift_storeEnumTagMultiPayload();
      sub_1000352CC();
      sub_1000353E4(&qword_100124120, type metadata accessor for TVWidgetFeatured);
      sub_1000D229C();
      sub_10000F938(v218, &qword_100124078);
      (*(v296 + 8))(v155, v83);
    }

    v211 = &qword_100124080;
    sub_10000F8D0(v81, v293, &qword_100124080);
    swift_storeEnumTagMultiPayload();
    sub_100035210();
    sub_10003542C();
    v220 = v295;
    sub_1000D229C();
    v221 = &qword_100124050;
    sub_10000F8D0(v220, v301, &qword_100124050);
LABEL_30:
    swift_storeEnumTagMultiPayload();
    sub_100035514();
    sub_100035948();
    sub_1000D229C();
    sub_10000F938(v220, v221);
    return sub_10000F938(v81, v211);
  }

  v115 = v62;
  swift_beginAccess();
  sub_10000F8D0(v115 + v63, v35, &qword_100122DB8);
  v116 = v298;
  v117 = (*v64)(v35, 1, v298);
  v118 = v297;
  if (v117 == 1)
  {
    sub_10000F938(v35, &qword_100122DB8);
    v119 = &v118[v60[7]];
    v120 = *(v119 + 3);
    v308 = *(v119 + 2);
    v309 = v120;
    v121 = *(v119 + 5);
    v310 = *(v119 + 4);
    v311 = v121;
    v122 = *(v119 + 1);
    v306 = *v119;
    v307 = v122;
    v123 = v278;
    v124 = *(v278 + 20);
    v125 = enum case for WidgetFamily.systemSmall(_:);
    v126 = sub_1000D323C();
    v127 = v256;
    (*(*(v126 - 8) + 104))(&v256[v124], v125, v126);
    v128 = v309;
    v127[2] = v308;
    v127[3] = v128;
    v129 = v311;
    v127[4] = v310;
    v127[5] = v129;
    v130 = v307;
    *v127 = v306;
    v127[1] = v130;
    *(v127 + *(v123 + 24)) = v115;
    sub_10003A0A8(v127, v274, type metadata accessor for TVWidgetLockscreenCell);
    swift_storeEnumTagMultiPayload();
    sub_1000351B4(&v306, &v304);
    sub_10000FC38(&qword_100124100, &qword_100124038);
    sub_1000353E4(&qword_100124108, type metadata accessor for TVWidgetLockscreenCell);

    v131 = v279;
    sub_1000D229C();
    sub_10003A110(v127, type metadata accessor for TVWidgetLockscreenCell);
  }

  else
  {
    v197 = v296;
    (*(v296 + 32))(v49, v35, v116);
    v198 = (*(v197 + 16))(v285, v49, v116);
    __chkstk_darwin(v198);
    *(&v228 - 2) = v118;
    sub_1000353E4(&qword_100124108, type metadata accessor for TVWidgetLockscreenCell);
    v199 = v252;
    sub_1000D24DC();
    v200 = v253;
    v201 = v275;
    (*(v253 + 16))(v274, v199, v275);
    swift_storeEnumTagMultiPayload();
    sub_10000FC38(&qword_100124100, &qword_100124038);
    v131 = v279;
    sub_1000D229C();
    (*(v200 + 8))(v199, v201);
    (*(v197 + 8))(v49, v116);
  }

  sub_10000F8D0(v131, v293, &qword_100124040);
  swift_storeEnumTagMultiPayload();
  sub_100035210();
  sub_10003542C();
  v202 = v295;
  sub_1000D229C();
  sub_10000F8D0(v202, v301, &qword_100124050);
  swift_storeEnumTagMultiPayload();
  sub_100035514();
  sub_100035948();
  sub_1000D229C();
  sub_10000F938(v202, &qword_100124050);
  return sub_10000F938(v131, &qword_100124040);
}

uint64_t sub_100034F0C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for TVWidgetContentView(0);
  v7 = (a1 + v6[7]);
  v8 = v7[3];
  v24 = v7[2];
  v25 = v8;
  v9 = v7[5];
  v26 = v7[4];
  v27 = v9;
  v10 = v7[1];
  v22 = *v7;
  v23 = v10;
  v11 = v6[5];
  v12 = a2(0);
  v13 = v12[6];
  v14 = sub_1000D323C();
  (*(*(v14 - 8) + 16))(a3 + v13, a1 + v11, v14);
  v15 = *(a1 + v6[6]);
  *a3 = swift_getKeyPath();
  sub_100006334(&qword_100122410);
  swift_storeEnumTagMultiPayload();
  v16 = (a3 + v12[5]);
  v17 = v25;
  v16[2] = v24;
  v16[3] = v17;
  v18 = v27;
  v16[4] = v26;
  v16[5] = v18;
  v19 = v23;
  *v16 = v22;
  v16[1] = v19;
  *(a3 + v12[7]) = v15;
  sub_1000351B4(&v22, &v21);
}

uint64_t sub_10003504C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for TVWidgetContentView(0);
  v5 = (a1 + *(v4 + 28));
  v6 = v5[3];
  v21 = v5[2];
  v22 = v6;
  v7 = v5[5];
  v23 = v5[4];
  v24 = v7;
  v8 = v5[1];
  v19 = *v5;
  v20 = v8;
  v9 = type metadata accessor for TVWidgetLockscreenCell();
  v10 = *(v9 + 20);
  v11 = enum case for WidgetFamily.systemSmall(_:);
  v12 = sub_1000D323C();
  (*(*(v12 - 8) + 104))(&a2[v10], v11, v12);
  v13 = *(a1 + *(v4 + 24));
  v14 = v22;
  *(a2 + 2) = v21;
  *(a2 + 3) = v14;
  v15 = v24;
  *(a2 + 4) = v23;
  *(a2 + 5) = v15;
  v16 = v20;
  *a2 = v19;
  *(a2 + 1) = v16;
  *&a2[*(v9 + 24)] = v13;
  sub_1000351B4(&v19, &v18);
}

unint64_t sub_100035210()
{
  result = qword_100124110;
  if (!qword_100124110)
  {
    sub_10000637C(&qword_100124080);
    sub_1000352CC();
    sub_1000353E4(&qword_100124120, type metadata accessor for TVWidgetFeatured);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124110);
  }

  return result;
}

unint64_t sub_1000352CC()
{
  result = qword_100124118;
  if (!qword_100124118)
  {
    sub_10000637C(&qword_100124078);
    type metadata accessor for TVWidgetFeatured(255);
    sub_1000353E4(&qword_100124120, type metadata accessor for TVWidgetFeatured);
    swift_getOpaqueTypeConformance2();
    sub_10000FC38(&qword_100124128, &qword_100124060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124118);
  }

  return result;
}

uint64_t sub_1000353E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003542C()
{
  result = qword_100124130;
  if (!qword_100124130)
  {
    sub_10000637C(&qword_100124040);
    sub_10000FC38(&qword_100124100, &qword_100124038);
    sub_1000353E4(&qword_100124108, type metadata accessor for TVWidgetLockscreenCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124130);
  }

  return result;
}

unint64_t sub_100035514()
{
  result = qword_100124138;
  if (!qword_100124138)
  {
    sub_10000637C(&qword_1001240C8);
    sub_1000355A0();
    sub_100035774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124138);
  }

  return result;
}

unint64_t sub_1000355A0()
{
  result = qword_100124140;
  if (!qword_100124140)
  {
    sub_10000637C(&qword_1001240F8);
    sub_10003565C();
    sub_1000353E4(&qword_100124150, type metadata accessor for TVWidgetLockup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124140);
  }

  return result;
}

unint64_t sub_10003565C()
{
  result = qword_100124148;
  if (!qword_100124148)
  {
    sub_10000637C(&qword_1001240F0);
    type metadata accessor for TVWidgetLockup(255);
    sub_1000353E4(&qword_100124150, type metadata accessor for TVWidgetLockup);
    swift_getOpaqueTypeConformance2();
    sub_10000FC38(&qword_100124158, &qword_1001240D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124148);
  }

  return result;
}

unint64_t sub_100035774()
{
  result = qword_100124160;
  if (!qword_100124160)
  {
    sub_10000637C(&qword_1001240B0);
    sub_100035830();
    sub_1000353E4(&qword_100124170, type metadata accessor for TVWidgetCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124160);
  }

  return result;
}

unint64_t sub_100035830()
{
  result = qword_100124168;
  if (!qword_100124168)
  {
    sub_10000637C(&qword_1001240A8);
    type metadata accessor for TVWidgetCell(255);
    sub_1000353E4(&qword_100124170, type metadata accessor for TVWidgetCell);
    swift_getOpaqueTypeConformance2();
    sub_10000FC38(&qword_100124178, &qword_100124090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124168);
  }

  return result;
}

unint64_t sub_100035948()
{
  result = qword_100124180;
  if (!qword_100124180)
  {
    sub_10000637C(&qword_100124050);
    sub_100035210();
    sub_10003542C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124180);
  }

  return result;
}

uint64_t sub_1000359DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v28 = a1;
  v30 = a3;
  v31 = sub_1000D219C();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000D22FC();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006334(&qword_100124418);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_100006334(&qword_100124420);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  *v10 = sub_1000D21CC();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v15 = sub_100006334(&qword_100124428);
  sub_100035D88(a2, v28, &v10[*(v15 + 44)]);
  sub_1000D22DC();
  v16 = sub_10000FC38(&qword_100124430, &qword_100124418);
  sub_1000D276C();
  (*(v5 + 8))(v7, v26);
  sub_10000F938(v10, &qword_100124418);
  v17 = v25;
  sub_1000D218C();
  v32 = v8;
  v33 = v16;
  swift_getOpaqueTypeConformance2();
  v18 = v30;
  sub_1000D26DC();
  (*(v29 + 8))(v17, v31);
  (*(v12 + 8))(v14, v11);
  v19 = v18 + *(sub_100006334(&qword_100124438) + 36);
  sub_1000D1EEC();
  v20 = v27 + *(type metadata accessor for TVWidgetLockup(0) + 20);
  v21 = *(v20 + 40);
  LODWORD(v14) = *(v20 + 36);
  v22 = sub_1000D230C();
  *(v19 + *(v22 + 20)) = v21;
  *(v19 + *(v22 + 24)) = v14;
}

uint64_t sub_100035D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v116 = a2;
  v110 = a3;
  v4 = sub_100006334(&qword_100124440);
  v115 = *(v4 - 8);
  __chkstk_darwin(v4);
  v108 = (&v89 - v5);
  v105 = sub_100006334(&qword_100124448);
  __chkstk_darwin(v105);
  v107 = &v89 - v6;
  v99 = sub_100006334(&qword_100124450);
  __chkstk_darwin(v99);
  v100 = &v89 - v7;
  v106 = sub_100006334(&qword_100124458);
  __chkstk_darwin(v106);
  v101 = &v89 - v8;
  v9 = sub_100006334(&qword_100122E90);
  v10 = __chkstk_darwin(v9 - 8);
  v102 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v89 - v12;
  v109 = type metadata accessor for TVWidgetMetadataView();
  __chkstk_darwin(v109);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100006334(&qword_100124460);
  v17 = __chkstk_darwin(v16 - 8);
  v104 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v103 = &v89 - v19;
  v20 = sub_100006334(&qword_100124468);
  v21 = __chkstk_darwin(v20 - 8);
  v112 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v111 = &v89 - v23;
  v24 = type metadata accessor for TVWidgetLockup(0);
  v25 = v24[7];
  v117 = a1;
  v26 = *(a1 + v25);
  v27 = *(v26 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image);
  v113 = *(v26 + 73);
  v114 = v27;
  v28 = v27;
  sub_10001C178(v141);
  *(&v142[7] + 7) = v141[7];
  *(&v142[8] + 7) = v141[8];
  *(&v142[9] + 7) = v141[9];
  *(&v142[10] + 7) = v141[10];
  *(&v142[3] + 7) = v141[3];
  *(&v142[4] + 7) = v141[4];
  *(&v142[5] + 7) = v141[5];
  *(&v142[6] + 7) = v141[6];
  *(v142 + 7) = v141[0];
  *(&v142[1] + 7) = v141[1];
  *(&v142[2] + 7) = v141[2];
  v29 = *(v26 + 24);
  if (v29 && ((v29 & 0x2000000000000000) != 0 ? (v30 = HIBYTE(v29) & 0xF) : (v30 = *(v26 + 16) & 0xFFFFFFFFFFFFLL), v30) || (v31 = *(v26 + 40)) != 0 && ((v31 & 0x2000000000000000) != 0 ? (v32 = HIBYTE(v31) & 0xF) : (v32 = *(v26 + 32) & 0xFFFFFFFFFFFFLL), v32))
  {
    v98 = v4;
    sub_1000D1CDC();
    sub_1000D1CDC();
    v33 = v24[6];
    v90 = v117 + v24[5];
    v34 = *v90;
    sub_10001BFBC();
    v35 = v15;
    v93 = v33;
    sub_10001BC60();
    sub_1000D2B5C();
    sub_1000D1C8C();
    v96 = v135;
    v97 = v133;
    v94 = v138;
    v95 = v137;
    LOBYTE(v120) = 1;
    LOBYTE(v119[0]) = v134;
    v118 = v136;
    v36 = *(v26 + 16);
    v37 = *(v26 + 24);
    v38 = *(v26 + 40);
    v91 = *(v26 + 32);
    v92 = v36;
    if (*(v26 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_isExpiring) == 1)
    {
      v39 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_rentalExpirationDate;
      swift_beginAccess();
      sub_10000F8D0(v26 + v39, v13, &qword_100122E90);
    }

    else
    {
      v41 = sub_1000D19FC();
      (*(*(v41 - 8) + 56))(v13, 1, 1, v41);
    }

    v42 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_rentalExpirationDate;
    swift_beginAccess();
    v43 = v102;
    sub_10000F8D0(v26 + v42, v102, &qword_100122E90);

    sub_1000369C0(v43, v139);
    sub_10000F938(v43, &qword_100122E90);
    v44 = v91;
    *v35 = v92;
    v35[1] = v37;
    v35[2] = v44;
    v35[3] = v38;
    v45 = v109;
    sub_10000F998(v13, v35 + *(v109 + 24), &qword_100122E90);
    v46 = (v35 + *(v45 + 28));
    v47 = v139[1];
    v48 = v140[0];
    v46[2] = v139[2];
    v46[3] = v48;
    *(v46 + 57) = *(v140 + 9);
    *v46 = v139[0];
    v46[1] = v47;
    sub_1000D1CDC();
    v50 = v49;
    sub_1000D1CDC();
    v52 = v50 - v51 / v34;
    v53 = sub_10001BFBC();
    if (v52 >= v53 || v52 / v53 >= 1.0)
    {
      sub_10003A0A8(v35, v107, type metadata accessor for TVWidgetMetadataView);
      swift_storeEnumTagMultiPayload();
      sub_10003ABDC();
      sub_1000353E4(&qword_100124488, type metadata accessor for TVWidgetMetadataView);
      v54 = v103;
      sub_1000D229C();
    }

    else
    {
      sub_100036F04();
      sub_1000D2B5C();
      v54 = v103;
      sub_1000D1E2C();
      v55 = v100;
      sub_10003A0A8(v35, v100, type metadata accessor for TVWidgetMetadataView);
      v56 = (v55 + *(v99 + 36));
      v57 = v140[7];
      v56[4] = v140[6];
      v56[5] = v57;
      v56[6] = v140[8];
      v58 = v140[3];
      *v56 = v140[2];
      v56[1] = v58;
      v59 = v140[5];
      v56[2] = v140[4];
      v56[3] = v59;
      v60 = *(v90 + 48);
      KeyPath = swift_getKeyPath();
      v62 = v101;
      sub_10000F998(v55, v101, &qword_100124450);
      v63 = v107;
      v64 = (v62 + *(v106 + 36));
      *v64 = KeyPath;
      v64[1] = v60;
      sub_10000F8D0(v62, v63, &qword_100124458);
      swift_storeEnumTagMultiPayload();
      sub_10003ABDC();
      sub_1000353E4(&qword_100124488, type metadata accessor for TVWidgetMetadataView);
      sub_1000D229C();
      sub_10000F938(v62, &qword_100124458);
    }

    sub_10003A110(v35, type metadata accessor for TVWidgetMetadataView);
    v65 = v120;
    v66 = v119[0];
    v67 = v118;
    v68 = v104;
    sub_10000F8D0(v54, v104, &qword_100124460);
    v69 = v54;
    v70 = v108;
    *v108 = 0;
    *(v70 + 8) = v65;
    v71 = v96;
    *(v70 + 16) = v97;
    *(v70 + 24) = v66;
    *(v70 + 32) = v71;
    *(v70 + 40) = v67;
    v72 = v94;
    *(v70 + 48) = v95;
    *(v70 + 56) = v72;
    v73 = sub_100006334(&qword_100124490);
    sub_10000F8D0(v68, v70 + *(v73 + 48), &qword_100124460);
    sub_10000F938(v69, &qword_100124460);
    sub_10000F938(v68, &qword_100124460);
    v40 = v111;
    sub_10000F998(v70, v111, &qword_100124440);
    (*(v115 + 56))(v40, 0, 1, v98);
  }

  else
  {
    v40 = v111;
    (*(v115 + 56))(v111, 1, 1, v4);
  }

  v74 = v112;
  sub_10000F8D0(v40, v112, &qword_100124468);
  v75 = v113;
  BYTE8(v119[0]) = v113;
  *(&v119[8] + 9) = v142[8];
  *(&v119[9] + 9) = v142[9];
  *(&v119[10] + 9) = v142[10];
  *(&v119[11] + 1) = *(&v142[10] + 15);
  *(&v119[4] + 9) = v142[4];
  *(&v119[5] + 9) = v142[5];
  *(&v119[6] + 9) = v142[6];
  *(&v119[7] + 9) = v142[7];
  *(v119 + 9) = v142[0];
  *(&v119[1] + 9) = v142[1];
  *(&v119[2] + 9) = v142[2];
  *(&v119[3] + 9) = v142[3];
  v76 = v119[9];
  v77 = v119[10];
  v78 = v119[7];
  v79 = v110;
  v110[8] = v119[8];
  v79[9] = v76;
  v80 = v119[11];
  v79[10] = v77;
  v79[11] = v80;
  v81 = v119[5];
  v82 = v119[6];
  v79[4] = v119[4];
  v79[5] = v81;
  v83 = v40;
  v84 = v114;
  *&v119[0] = v114;
  v79[6] = v82;
  v79[7] = v78;
  v85 = v119[1];
  *v79 = v119[0];
  v79[1] = v85;
  v86 = v119[3];
  v79[2] = v119[2];
  v79[3] = v86;
  v87 = sub_100006334(&qword_100124470);
  sub_10000F8D0(v74, v79 + *(v87 + 48), &qword_100124468);
  sub_10003A870(v119, &v120);
  sub_10000F938(v83, &qword_100124468);
  sub_10000F938(v74, &qword_100124468);
  v130 = v142[8];
  v131 = v142[9];
  *v132 = v142[10];
  v126 = v142[4];
  v127 = v142[5];
  v128 = v142[6];
  v129 = v142[7];
  v122 = v142[0];
  v123 = v142[1];
  v124 = v142[2];
  v120 = v84;
  v121 = v75;
  *&v132[15] = *(&v142[10] + 15);
  v125 = v142[3];
  return sub_10003A8D4(&v120);
}

__n128 sub_1000369C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v40 = a2;
  v3 = sub_100006334(&qword_100122E90);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  v37 = sub_1000D19FC();
  v6 = *(v37 - 8);
  v7 = __chkstk_darwin(v37);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - v11;
  __chkstk_darwin(v10);
  v34 = &v33 - v13;
  v14 = sub_1000D1DBC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088034(&v60);
  v57 = v63;
  v58 = v60;
  v59 = v61;
  v56 = v65;
  v55[0] = *v66;
  *(v55 + 3) = *&v66[3];
  v69 = v60;
  v70 = v61;
  v71 = v62;
  v35 = v64;
  v36 = v62;
  v72 = v63;
  v73 = v64;
  v74 = v65;
  *v75 = *v66;
  *&v75[3] = *&v66[3];
  v76 = v67;
  v39 = v68;
  v77 = v68;
  v18 = *(type metadata accessor for TVWidgetLockup(0) + 24);
  sub_1000B2124(v17);
  v19 = v2 + v18;
  v20 = v37;
  v21 = sub_100087DDC(v19, v17);
  (*(v15 + 8))(v17, v14);
  sub_10000F8D0(v38, v5, &qword_100122E90);
  if ((*(v6 + 48))(v5, 1, v20) == 1)
  {
    sub_10000F938(v5, &qword_100122E90);
    v23 = v35;
    v22 = v36;
  }

  else
  {
    v24 = v34;
    (*(v6 + 32))(v34, v5, v20);
    sub_1000D19EC();
    sub_1000D19DC();
    v25 = *(v6 + 8);
    v25(v9, v20);
    v26 = sub_1000D199C();
    v25(v12, v20);
    v27 = v24;
    if (v26)
    {
      sub_1000D19EC();
      sub_1000D19DC();
      v25(v9, v20);
      v28 = sub_1000D199C();
      v25(v12, v20);
      if (v28)
      {
        v23 = 64;
      }

      else
      {
        v23 = 32;
      }
    }

    else
    {
      v23 = 16;
    }

    v56 = 0;
    sub_1000D19EC();
    sub_1000D19DC();
    v25(v9, v20);
    v29 = sub_1000D199C();
    v25(v12, v20);
    if (v29)
    {
      v78[0] = v71;
      v22 = sub_1000D280C();
      v25(v27, v20);
      sub_10003AA2C(v78);
    }

    else
    {
      v25(v24, v20);
      v22 = v36;
    }
  }

  v42 = v58;
  v44 = v57;
  v46 = v58;
  v43.n128_u64[0] = v59;
  v43.n128_u64[1] = v22;
  *&v45[0] = v23;
  *(v45 + 9) = v55[0];
  HIDWORD(v45[0]) = *(v55 + 3);
  BYTE8(v45[0]) = v56;
  *&v45[1] = v21;
  BYTE8(v45[1]) = v39;
  v47 = v59;
  v48 = v22;
  v49 = v57;
  v50 = v23;
  v51 = v56;
  *&v52[3] = *(v55 + 3);
  *v52 = v55[0];
  v53 = v21;
  v54 = v39;
  sub_10003A97C(&v42, &v41);
  sub_10003A9D8(&v46);
  v30 = v45[0];
  v31 = v40;
  *(v40 + 32) = v44;
  *(v31 + 48) = v30;
  *(v31 + 57) = *(v45 + 9);
  result = v43;
  *v31 = v42;
  *(v31 + 16) = result;
  return result;
}

double sub_100036F04()
{
  sub_1000D1CDC();
  v2 = v1;
  sub_1000D1CDC();
  v4 = v3;
  v5 = *(v0 + *(type metadata accessor for TVWidgetLockup(0) + 20));
  sub_1000D1CDC();
  v7 = v6;
  sub_1000D1CDC();
  v9 = v7 - v8 / v5;
  v10 = sub_10001BFBC();
  v11 = 1.0;
  if (v9 < v10)
  {
    v11 = v9 / v10;
    if (v9 / v10 < 1.0)
    {
      v11 = v11 / 3.0;
    }
  }

  return v2 - v4 / v5 - v11 * sub_10001BC60();
}

uint64_t sub_100036FC8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10003A0A8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TVWidgetLockup);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10003AB48(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TVWidgetLockup);
  *a2 = sub_10003ABB0;
  a2[1] = v7;
  return result;
}

uint64_t sub_1000370DC@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v23 = sub_1000D219C();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000D22FC();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TVWidgetCell(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100006334(&qword_100124498);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  sub_10003A0A8(v1, v10, type metadata accessor for TVWidgetCell);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_10003AB48(v10, v16 + v15, type metadata accessor for TVWidgetCell);
  v24 = sub_10003AEEC;
  v25 = v16;
  sub_1000D22DC();
  v17 = sub_100006334(&qword_1001244A0);
  v18 = sub_10000FC38(&qword_1001244A8, &qword_1001244A0);
  sub_1000D276C();
  (*(v4 + 8))(v6, v20);

  sub_1000D218C();
  v24 = v17;
  v25 = v18;
  swift_getOpaqueTypeConformance2();
  sub_1000D26DC();
  (*(v21 + 8))(v3, v23);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100037480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_100122020 != -1)
  {
    swift_once();
  }

  v6 = qword_10013C170;
  v7 = *(a2 + *(type metadata accessor for TVWidgetCell(0) + 20) + 72);
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  v8 = sub_100006334(&qword_1001244B0);
  return sub_10003752C(a2, a1, a3 + *(v8 + 44));
}

uint64_t sub_10003752C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46[1] = a2;
  v50 = a3;
  v46[0] = sub_100006334(&qword_1001244B8);
  __chkstk_darwin(v46[0]);
  v5 = v46 - v4;
  v6 = sub_100006334(&qword_1001244C0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v47 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v48 = v46 - v10;
  v11 = sub_100006334(&qword_1001244C8);
  v12 = __chkstk_darwin(v11 - 8);
  v49 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v46 - v14;
  v16 = sub_100006334(&qword_1001244D0);
  v17 = v16 - 8;
  v18 = __chkstk_darwin(v16);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v46 - v21;
  v23 = sub_1000D210C();
  v24 = a1 + *(type metadata accessor for TVWidgetCell(0) + 20);
  v25 = *(v24 + 56);
  *v22 = v23;
  *(v22 + 1) = v25;
  v22[16] = 0;
  v26 = &v22[*(sub_100006334(&qword_1001244D8) + 44)];
  v46[2] = a1;
  sub_100037B48(a1, v26);
  v27 = &v22[*(v17 + 44)];
  sub_1000D1EEC();
  v28 = *(v24 + 40);
  LODWORD(a1) = *(v24 + 36);
  v29 = sub_1000D230C();
  *&v27[*(v29 + 20)] = v28;
  *&v27[*(v29 + 24)] = a1;
  if (*(v24 + 64) == 1)
  {

    sub_1000D2A9C();
    if (qword_100122020 != -1)
    {
      swift_once();
    }

    v30 = qword_10013C170;
    v31 = &v5[*(sub_100006334(&qword_1001244E8) + 36)];
    *v31 = v30;
    v31[1] = sub_10003B3B8;
    v31[2] = 0;
    type metadata accessor for CGColor(0);
    sub_1000D1A3C();
    v32 = sub_1000D289C();
    v33 = sub_1000D235C();
    v34 = &v5[*(v46[0] + 36)];
    *v34 = v32;
    v34[8] = v33;
    sub_10003812C();
    sub_1000D2B5C();
    sub_1000D1E2C();
    v35 = v47;
    sub_10000F998(v5, v47, &qword_1001244B8);
    v36 = (v35 + *(v6 + 36));
    v37 = v56;
    v36[4] = v55;
    v36[5] = v37;
    v36[6] = v57;
    v38 = v52;
    *v36 = v51;
    v36[1] = v38;
    v39 = v54;
    v36[2] = v53;
    v36[3] = v39;
    v40 = v35;
    v41 = v48;
    sub_10000F998(v40, v48, &qword_1001244C0);
    sub_10000F998(v41, v15, &qword_1001244C0);
    (*(v7 + 56))(v15, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v15, 1, 1, v6);
  }

  sub_10000F8D0(v22, v20, &qword_1001244D0);
  v42 = v49;
  sub_10000F8D0(v15, v49, &qword_1001244C8);
  v43 = v50;
  sub_10000F8D0(v20, v50, &qword_1001244D0);
  v44 = sub_100006334(&qword_1001244E0);
  sub_10000F8D0(v42, v43 + *(v44 + 48), &qword_1001244C8);
  sub_10000F938(v15, &qword_1001244C8);
  sub_10000F938(v22, &qword_1001244D0);
  sub_10000F938(v42, &qword_1001244C8);
  return sub_10000F938(v20, &qword_1001244D0);
}

uint64_t sub_100037B48@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100006334(&qword_100122E90);
  v5 = __chkstk_darwin(v4 - 8);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v54 - v7;
  v58 = type metadata accessor for TVWidgetMetadataView();
  __chkstk_darwin(v58);
  v10 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v62 = sub_100006334(&qword_100124500);
  v11 = __chkstk_darwin(v62);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v60 = &v54 - v14;
  __chkstk_darwin(v13);
  v65 = &v54 - v15;
  v16 = *(type metadata accessor for TVWidgetCell(0) + 28);
  v61 = a1;
  v17 = *(a1 + v16);
  v18 = *(v17 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_image);
  v63 = *(v17 + 73);
  v64 = v18;
  v19 = v18;
  sub_10001C178(v84);
  v87 = v84[10];
  *(&v88[4] + 7) = v84[4];
  *(&v88[5] + 7) = v84[5];
  *(&v88[6] + 7) = v84[6];
  *(&v88[7] + 7) = v84[7];
  *(v88 + 7) = v84[0];
  *(&v88[1] + 7) = v84[1];
  *(&v88[2] + 7) = v84[2];
  *(&v88[3] + 7) = v84[3];
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  v22 = *(v17 + 40);
  v55 = *(v17 + 32);
  v56 = v20;
  v23 = *(v17 + OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_isExpiring);
  v59 = v8;
  if (v23 == 1)
  {
    v24 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_rentalExpirationDate;
    swift_beginAccess();
    sub_10000F8D0(v17 + v24, v8, &qword_100122E90);
  }

  else
  {
    v25 = sub_1000D19FC();
    (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  }

  v26 = OBJC_IVAR____TtC17TVWidgetExtension24TVWidgetContentViewModel_rentalExpirationDate;
  swift_beginAccess();
  v27 = v17 + v26;
  v28 = v57;
  sub_10000F8D0(v27, v57, &qword_100122E90);

  sub_100039B04(v28, type metadata accessor for TVWidgetCell, v85);
  sub_10000F938(v28, &qword_100122E90);
  v29 = v55;
  *v10 = v56;
  v10[1] = v21;
  v10[2] = v29;
  v10[3] = v22;
  v30 = v58;
  sub_10000F998(v59, v10 + *(v58 + 24), &qword_100122E90);
  v31 = (v10 + *(v30 + 28));
  v32 = v86[0];
  v31[2] = v85[2];
  v31[3] = v32;
  *(v31 + 57) = *(v86 + 9);
  v33 = v85[1];
  *v31 = v85[0];
  v31[1] = v33;
  if (qword_100122020 != -1)
  {
    swift_once();
  }

  v34 = qword_10013C170;
  v35 = v60;
  sub_10003AB48(v10, v60, type metadata accessor for TVWidgetMetadataView);
  v36 = (v35 + *(v62 + 36));
  *v36 = v34;
  v36[1] = sub_10003B3B8;
  v36[2] = 0;
  v37 = v65;
  sub_10000F998(v35, v65, &qword_100124500);
  v38 = v66;
  sub_10000F8D0(v37, v66, &qword_100124500);
  v39 = v64;
  *&v67[0] = v64;
  v40 = v63;
  BYTE8(v67[0]) = v63;
  *(&v67[6] + 9) = v88[6];
  *(&v67[5] + 9) = v88[5];
  *(&v67[2] + 9) = v88[2];
  *(&v67[1] + 9) = v88[1];
  *(&v67[7] + 9) = v88[7];
  *(&v67[8] + 1) = *(&v88[7] + 15);
  *(&v67[3] + 9) = v88[3];
  *(&v67[4] + 9) = v88[4];
  *(v67 + 9) = v88[0];
  __asm { FMOV            V0.2D, #6.0 }

  v62 = _Q0;
  v68 = _Q0;
  v69 = 0uLL;
  v46 = v87;
  v70 = v87;
  v47 = v67[5];
  a2[4] = v67[4];
  a2[5] = v47;
  v48 = v67[7];
  a2[6] = v67[6];
  a2[7] = v48;
  v49 = v67[1];
  *a2 = v67[0];
  a2[1] = v49;
  v50 = v67[3];
  a2[2] = v67[2];
  a2[3] = v50;
  v51 = v68;
  a2[8] = v67[8];
  a2[9] = v51;
  a2[10] = v69;
  a2[11] = v46;
  v52 = sub_100006334(&qword_100124508);
  sub_10000F8D0(v38, a2 + *(v52 + 48), &qword_100124500);
  sub_10003A870(v67, &v71);
  sub_10000F938(v37, &qword_100124500);
  sub_10000F938(v38, &qword_100124500);
  v71 = v39;
  v72 = v40;
  v78 = v88[5];
  v79 = v88[6];
  *v80 = v88[7];
  *&v80[15] = *(&v88[7] + 15);
  v74 = v88[1];
  v75 = v88[2];
  v76 = v88[3];
  v77 = v88[4];
  v73 = v88[0];
  *&v80[23] = v62;
  v82 = 0;
  v81 = 0;
  v83 = v87;
  return sub_10003A8D4(&v71);
}