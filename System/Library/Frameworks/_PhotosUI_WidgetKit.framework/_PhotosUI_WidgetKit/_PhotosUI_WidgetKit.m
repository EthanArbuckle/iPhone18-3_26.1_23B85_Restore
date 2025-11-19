unint64_t sub_1D8C0BF4C()
{
  result = qword_1EDEF51E8;
  if (!qword_1EDEF51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF51E8);
  }

  return result;
}

unint64_t sub_1D8C0BFA4()
{
  result = qword_1EDEF51D0;
  if (!qword_1EDEF51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF51D0);
  }

  return result;
}

unint64_t sub_1D8C0BFFC()
{
  result = qword_1EDEF51D8;
  if (!qword_1EDEF51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF51D8);
  }

  return result;
}

unint64_t sub_1D8C0C054()
{
  result = qword_1EDEF51E0;
  if (!qword_1EDEF51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF51E0);
  }

  return result;
}

uint64_t sub_1D8C0C0A8(uint64_t *a1)
{
  v1 = *a1;
  if (OUTLINED_FUNCTION_1())
  {
    sub_1D8C1FAC0();
  }

  else
  {
    sub_1D8C1FAA0();
  }

  return sub_1D8C1FAF0();
}

uint64_t sub_1D8C0C100(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (OUTLINED_FUNCTION_1())
  {
    sub_1D8C1FAC0();
    sub_1D8C1FAF0();
    sub_1D8C0D2C8();
  }

  else
  {
    sub_1D8C1FAA0();
    sub_1D8C1FAF0();
    sub_1D8C0D314();
  }

  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_1D8C0C194()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D8C0C1D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D8C0C220()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D8C0C258()
{
  v1 = sub_1D8C1F7D0();
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D8C0C2F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D8C0E9A8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D8C0C348@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D8C0E994();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D8C0C3A0()
{
  v1 = sub_1D8C1F7D0();
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  if (*(v0 + 4))
  {
    v8 = *(v0 + 5);
  }

  v9 = (v4 + 56) & ~v4;
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 6);

  (*(v3 + 8))(&v0[v9], v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_1D8C0C4A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8C1FB20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D8C0C4F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8C1FB40();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D8C0C528@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8C1FB60();
  *a1 = result;
  return result;
}

uint64_t sub_1D8C0C59C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D8C1FAF0();
  sub_1D8C1FBD0();
  sub_1D8C0C054();
  OUTLINED_FUNCTION_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_0();
  return swift_getWitnessTable();
}

uint64_t sub_1D8C0C674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8C1F7B0();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D8C0C6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8C1F7B0();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D8C0C750(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAAA18, &qword_1D8C21930);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D8C0C7E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAAA18, &qword_1D8C21930);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8C0C8B0()
{
  v4 = v1[4];
  v3 = v1[5];
  v5 = type metadata accessor for SpatialPhotoContentView();
  OUTLINED_FUNCTION_5_1(v5);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = v1[2];
  swift_unknownObjectRelease();
  v11 = OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_21_0(v11);
  (*(v12 + 8))(v2 + v13, v4);
  v14 = (v2 + *(v0 + 56));
  v15 = *v14;

  v16 = v14[1];

  v17 = v2 + *(v0 + 60);
  v18 = sub_1D8C1F7B0();
  if (!OUTLINED_FUNCTION_24_0(v18))
  {
    (*(*(v14 - 1) + 8))(v17, v14);
  }

  v19 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA98, &qword_1D8C21AE8) + 28));

  v20 = OUTLINED_FUNCTION_8_0();

  return MEMORY[0x1EEE6BDD0](v20, v21, v22);
}

uint64_t sub_1D8C0CA00()
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for SpatialPhotoContentView();
  OUTLINED_FUNCTION_5_1(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_21_0(v10);
  (*(v11 + 8))(v2 + v12, v4);
  v13 = (v2 + *(v0 + 56));
  v14 = *v13;

  v15 = v13[1];

  v16 = v2 + *(v0 + 60);
  v17 = sub_1D8C1F7B0();
  if (!OUTLINED_FUNCTION_24_0(v17))
  {
    (*(*(v13 - 1) + 8))(v16, v13);
  }

  v18 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA98, &qword_1D8C21AE8) + 28));

  v19 = OUTLINED_FUNCTION_8_0();

  return MEMORY[0x1EEE6BDD0](v19, v20, v21);
}

uint64_t sub_1D8C0CB48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAB8, &qword_1D8C21B10);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D8C0CBE4()
{
  v2 = type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView(0);
  OUTLINED_FUNCTION_5_1(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_1();

  v7 = v1 + *(v0 + 32);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAB10, &qword_1D8C21B38);
  OUTLINED_FUNCTION_10(v8);
  (*(v9 + 8))(v7);
  v10 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAB18, &qword_1D8C21B40) + 28));

  OUTLINED_FUNCTION_20_0();
  v11 = *(v7 + 8);

  sub_1D8C0D2B8(*(v1 + *(v0 + 40)), *(v1 + *(v0 + 40) + 8));
  v12 = OUTLINED_FUNCTION_8_0();

  return MEMORY[0x1EEE6BDD0](v12, v13, v14);
}

uint64_t sub_1D8C0CD00()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D8C0CD38()
{
  v3 = type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView(0);
  OUTLINED_FUNCTION_5_1(v3);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);

  v9 = *(v1 + 24);

  OUTLINED_FUNCTION_6_1();

  v10 = v2 + *(v0 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAB10, &qword_1D8C21B38);
  OUTLINED_FUNCTION_10(v11);
  (*(v12 + 8))(v10);
  v13 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAB18, &qword_1D8C21B40) + 28));

  OUTLINED_FUNCTION_20_0();
  v14 = *(v10 + 8);

  sub_1D8C0D2B8(*(v2 + *(v0 + 40)), *(v2 + *(v0 + 40) + 8));
  v15 = OUTLINED_FUNCTION_8_0();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1D8C0CE64()
{
  v3 = type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView(0);
  OUTLINED_FUNCTION_5_1(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);

  OUTLINED_FUNCTION_6_1();

  v9 = v2 + *(v0 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAB10, &qword_1D8C21B38);
  OUTLINED_FUNCTION_10(v10);
  (*(v11 + 8))(v9);
  v12 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAB18, &qword_1D8C21B40) + 28));

  OUTLINED_FUNCTION_20_0();
  v13 = *(v9 + 8);

  sub_1D8C0D2B8(*(v2 + *(v0 + 40)), *(v2 + *(v0 + 40) + 8));
  v14 = OUTLINED_FUNCTION_8_0();

  return MEMORY[0x1EEE6BDD0](v14, v15, v16);
}

uint64_t sub_1D8C0CF88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D8C1CA58();
  *a2 = result;
  return result;
}

uint64_t sub_1D8C0CFDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8C1FB50();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D8C0D00C@<X0>(void *a1@<X8>)
{
  result = sub_1D8C1FB00();
  *a1 = v3;
  return result;
}

uint64_t sub_1D8C0D060(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAAA88, &qword_1D8C21AD0);
  sub_1D8C1FAF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAAA90, &qword_1D8C21AD8);
  OUTLINED_FUNCTION_18_0();
  sub_1D8C1FAF0();
  swift_getTupleTypeMetadata2();
  sub_1D8C1FD60();
  OUTLINED_FUNCTION_10_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_0();
  sub_1D8C1FD30();
  OUTLINED_FUNCTION_12_0();
  swift_getOpaqueTypeMetadata2();
  sub_1D8C1FAF0();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t sub_1D8C0D198()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAAB20, &qword_1D8C21B48);
  OUTLINED_FUNCTION_11_1();
  sub_1D8C137D4(v0, &qword_1ECAAAB20, &qword_1D8C21B48);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D8C0D234()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D8C0D274()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D8C0D2B8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1D8C0D2C8()
{
  result = qword_1ECAAA848;
  if (!qword_1ECAAA848)
  {
    sub_1D8C1FAC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAA848);
  }

  return result;
}

unint64_t sub_1D8C0D314()
{
  result = qword_1EDEF4D60;
  if (!qword_1EDEF4D60)
  {
    sub_1D8C1FAA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF4D60);
  }

  return result;
}

uint64_t sub_1D8C0D36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (OUTLINED_FUNCTION_1())
  {
    v14 = sub_1D8C1FAC0();
    v15 = OUTLINED_FUNCTION_3(v14);
    v17 = v16;
    v19 = *(v18 + 64);
    MEMORY[0x1EEE9AC00](v15);
    OUTLINED_FUNCTION_2();
    v22 = v21 - v20;
    if (!a2)
    {
      sub_1D8C20050();

      MEMORY[0x1DA724280](a4, a5);
      MEMORY[0x1DA724280](58, 0xE100000000000000);
      v32 = sub_1D8C20120();
      MEMORY[0x1DA724280](v32);
    }

    v33 = sub_1D8C1FF60();
    v34 = OUTLINED_FUNCTION_3(v33);
    v36 = *(v35 + 64);
    MEMORY[0x1EEE9AC00](v34);
    OUTLINED_FUNCTION_2();
    (*(v39 + 16))(v38 - v37, a3);

    sub_1D8C1FAB0();
    MEMORY[0x1DA724090](v22, a9, v14, a10);

    return (*(v17 + 8))(v22, v14);
  }

  else
  {
    v23 = sub_1D8C1FAA0();
    v24 = *(*(v23 - 8) + 64);
    MEMORY[0x1EEE9AC00](v23);
    OUTLINED_FUNCTION_2();
    v27 = (v26 - v25);
    v29 = *(v28 + 20);
    v30 = sub_1D8C1FF60();
    (*(*(v30 - 8) + 16))(&v27[v29], a3, v30);
    *v27 = a7;
    *(v27 + 1) = a8;
    MEMORY[0x1DA724090](v27, a9, v23, a10);
    return sub_1D8C0D688(v27);
  }
}

uint64_t sub_1D8C0D688(uint64_t a1)
{
  v2 = sub_1D8C1FAA0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D8C0D6F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8C0D714(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_1D8C0D750(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1D8C0D784();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1D8C0D78C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

void sub_1D8C0D7E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1()
{

  return __isPlatformVersionAtLeast(2, 26, 4, 0);
}

uint64_t sub_1D8C0D888(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_memoryAssertion) = 0;
  v5 = (v2 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_onDeinit);
  *v5 = 0;
  v5[1] = 0;
  *(v2 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel___allowPlayback) = 0;
  *(v2 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel__readyForPlayback) = 0;
  sub_1D8C1F820();
  v6 = OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_id;
  v7 = sub_1D8C1F7D0();
  (*(*(v7 - 8) + 32))(v2 + v6, a1, v7);
  *(v2 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget) = a2;
  return v2;
}

uint64_t sub_1D8C0D99C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1D8C0FB2C();
  }

  return result;
}

void sub_1D8C0DA40()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v34 = *v0;
  v2 = sub_1D8C1F7D0();
  v28 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA8D8, &qword_1D8C21230) - 8) + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00]();
  v7 = &v25 - v6;
  v32 = &v25 - v6;
  v8 = sub_1D8C1FF60();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_onDeinit);
  v11 = *(v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_onDeinit + 8);
  v27 = *(v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_onDeinit);
  v10 = v27;
  v33 = OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_memoryAssertion;
  v12 = *(v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_memoryAssertion);
  v30 = OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_id;
  v31 = OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget;
  v13 = *(v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget);
  (*(v3 + 16))(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_id, v2);
  sub_1D8C1FF30();
  sub_1D8C13D90(v10);

  v26 = v13;
  v14 = sub_1D8C1FF20();
  v15 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v16 = (v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 2) = v14;
  *(v17 + 3) = v18;
  v19 = v28;
  *(v17 + 4) = v27;
  *(v17 + 5) = v11;
  *(v17 + 6) = v12;
  (*(v3 + 32))(&v17[v15], v29, v19);
  *&v17[v16] = v26;
  *&v17[(v16 + 15) & 0xFFFFFFFFFFFFFFF8] = v34;
  sub_1D8C0E5BC(0, 0, v32, &unk_1D8C212B8, v17);

  (*(v3 + 8))(v1 + v30, v19);

  v20 = *(v1 + v33);

  v21 = v9[1];
  sub_1D8C13760(*v9);
  v22 = OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel___observationRegistrar;
  v23 = sub_1D8C1F830();
  OUTLINED_FUNCTION_10(v23);
  (*(v24 + 8))(v1 + v22);
  OUTLINED_FUNCTION_20();
}

uint64_t sub_1D8C0DD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v16;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_1D8C1F7D0();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  sub_1D8C1FF30();
  v8[11] = sub_1D8C1FF20();
  v13 = sub_1D8C1FEF0();

  return MEMORY[0x1EEE6DFA0](sub_1D8C0DE38, v13, v12);
}

uint64_t sub_1D8C0DE38()
{
  v45 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);

  if (v2)
  {
    v4 = *(v0 + 24);
    (*(v0 + 16))(v3);
  }

  v5 = *(v0 + 32);
  if (v5)
  {
    v6 = qword_1EDEF4FE8;
    v7 = *(v0 + 32);

    if (v6 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 64);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    v13 = sub_1D8C1FA30();
    __swift_project_value_buffer(v13, qword_1EDEF5208);
    (*(v9 + 16))(v8, v11, v10);
    v14 = v12;
    v15 = sub_1D8C1FA20();
    v16 = sub_1D8C1FF90();

    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 64);
    if (v17)
    {
      v43 = *(v0 + 48);
      v21 = swift_slowAlloc();
      v44 = OUTLINED_FUNCTION_25();
      *v21 = 136315394;
      OUTLINED_FUNCTION_0_0();
      sub_1D8C1362C(v22, v23);
      v24 = sub_1D8C20120();
      v26 = v25;
      v27 = *(v19 + 8);
      v28 = OUTLINED_FUNCTION_23();
      v29(v28);
      v30 = sub_1D8C1E1E4(v24, v26, &v44);

      *(v21 + 4) = v30;
      *(v21 + 12) = 2080;
      v31 = MEMORY[0x1DA7245C0]([v43 family]);
      v32 = sub_1D8C1FE70();
      v34 = v33;

      v35 = sub_1D8C1E1E4(v32, v34, &v44);

      *(v21 + 14) = v35;
      _os_log_impl(&dword_1D8C0A000, v15, v16, "releasing memory assertion on deinit for playback model %s size: %s)", v21, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    else
    {

      v36 = *(v19 + 8);
      v37 = OUTLINED_FUNCTION_23();
      v38(v37);
    }

    v39 = *(v0 + 56);
    sub_1D8C0E10C(v5, *(v0 + 40), [*(v0 + 48) family]);
    sub_1D8C1FE00();
  }

  v40 = *(v0 + 80);

  OUTLINED_FUNCTION_18();

  return v41();
}

uint64_t sub_1D8C0E10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a3;
  v30 = a2;
  v37 = sub_1D8C1FD90();
  v40 = *(v37 - 8);
  v3 = *(v40 + 64);
  (MEMORY[0x1EEE9AC00])();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D8C1FDB0();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  (MEMORY[0x1EEE9AC00])();
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8C1F7D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  (MEMORY[0x1EEE9AC00])();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8C1FDD0();
  v33 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = (MEMORY[0x1EEE9AC00])();
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  sub_1D8C13770();
  v31 = sub_1D8C1FFD0();
  sub_1D8C1FDC0();
  sub_1D8C1FDF0();
  v32 = *(v14 + 8);
  v32(v18, v13);
  (*(v10 + 16))(v12, v30, v9);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v10 + 32))(v23 + v21, v12, v9);
  v24 = v34;
  *(v23 + v22) = v35;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  aBlock[4] = sub_1D8C13CC0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8C0F564;
  aBlock[3] = &block_descriptor_77;
  v25 = _Block_copy(aBlock);

  sub_1D8C1FDA0();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1D8C1362C(&qword_1ECAAA8C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA8C8, &qword_1D8C21228);
  sub_1D8C137D4(&qword_1ECAAA8D0, &qword_1ECAAA8C8, &qword_1D8C21228);
  v27 = v36;
  v26 = v37;
  sub_1D8C20000();
  v28 = v31;
  MEMORY[0x1DA7243A0](v20, v8, v27, v25);
  _Block_release(v25);

  (*(v40 + 8))(v27, v26);
  (*(v38 + 8))(v8, v39);
  v32(v20, v33);
}

uint64_t sub_1D8C0E5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA8D8, &qword_1D8C21230) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v25 - v10;
  sub_1D8C13A90(a3, v25 - v10);
  v12 = sub_1D8C1FF60();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D8C13B28(v11);
  }

  else
  {
    sub_1D8C1FF50();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D8C1FEF0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D8C1FE90() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1D8C13B28(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D8C13B28(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D8C0E8A0()
{
  result = sub_1D8C1F7D0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1D8C1F830();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D8C0E9BC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D8C1362C(&qword_1ECAAA8E8, type metadata accessor for SpatialPhotoViewPlaybackModel);
  sub_1D8C1F7F0();

  return *(v2 + *a2);
}

void sub_1D8C0EA5C(char a1)
{
  if ((sub_1D8C0E994() & 1) == (a1 & 1))
  {
    OUTLINED_FUNCTION_12();
  }

  else
  {
    if (qword_1EDEF4FE8 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v3 = sub_1D8C1FA30();
    __swift_project_value_buffer(v3, qword_1EDEF5208);

    v4 = sub_1D8C1FA20();
    v5 = sub_1D8C1FF90();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v19 = OUTLINED_FUNCTION_25();
      *v6 = 67109634;
      *(v6 + 4) = a1 & 1;
      *(v6 + 8) = 2080;
      sub_1D8C1F7D0();
      OUTLINED_FUNCTION_0_0();
      sub_1D8C1362C(v7, v8);
      v9 = sub_1D8C20120();
      v11 = sub_1D8C1E1E4(v9, v10, &v19);

      *(v6 + 10) = v11;
      *(v6 + 18) = 2080;
      v12 = MEMORY[0x1DA7245C0]([*(v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget) family]);
      v13 = sub_1D8C1FE70();
      v15 = v14;

      v16 = sub_1D8C1E1E4(v13, v15, &v19);

      *(v6 + 20) = v16;
      _os_log_impl(&dword_1D8C0A000, v4, v5, "setting playback to %{BOOL}d for playback model %s size: %s", v6, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    sub_1D8C0D94C(a1 & 1);
    if (a1)
    {
      OUTLINED_FUNCTION_12();

      sub_1D8C0ECB8();
    }

    else
    {
      OUTLINED_FUNCTION_12();

      sub_1D8C0F5A8();
    }
  }
}

void sub_1D8C0ECB8()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v2 = sub_1D8C1FD90();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = sub_1D8C1FDB0();
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  v20 = sub_1D8C1FDD0();
  v21 = OUTLINED_FUNCTION_3(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v28 = v26 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_memoryAssertion;
  if (!*(v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_memoryAssertion))
  {
    v71 = &v62 - v31;
    v72 = v30;
    v65 = v23;
    v66 = v19;
    v69 = v5;
    v70 = v2;
    sub_1D8C1FE30();
    v33 = *(v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget);
    v64 = sub_1D8C1FE10();
    if (qword_1EDEF4FE8 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v67 = v14;
    v68 = v11;
    v63 = v10;
    v34 = sub_1D8C1FA30();
    __swift_project_value_buffer(v34, qword_1EDEF5208);

    v35 = sub_1D8C1FA20();
    v36 = sub_1D8C1FF90();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v74[0] = OUTLINED_FUNCTION_25();
      *v37 = 136315394;
      sub_1D8C1F7D0();
      OUTLINED_FUNCTION_0_0();
      sub_1D8C1362C(v38, v39);
      LODWORD(v62) = v36;
      v40 = sub_1D8C20120();
      v42 = sub_1D8C1E1E4(v40, v41, v74);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      v43 = MEMORY[0x1DA7245C0]([v33 family]);
      v44 = sub_1D8C1FE70();
      v46 = v45;

      v47 = sub_1D8C1E1E4(v44, v46, v74);

      *(v37 + 14) = v47;
      _os_log_impl(&dword_1D8C0A000, v35, v62, "requested higher memory for playback model %s size: %s", v37, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    v48 = v64;
    sub_1D8C1FE20();
    v49 = *(v1 + v32);
    *(v1 + v32) = v48;

    sub_1D8C13770();
    v62 = sub_1D8C1FFD0();
    sub_1D8C1FDC0();
    sub_1D8C1FDF0();
    v65 = *(v65 + 8);
    (v65)(v28, v72);
    OUTLINED_FUNCTION_13();
    v50 = swift_allocObject();
    swift_weakInit();
    v74[4] = sub_1D8C13D58;
    v74[5] = v50;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5(COERCE_DOUBLE(1107296256));
    v74[2] = v51;
    v74[3] = &block_descriptor_83;
    v52 = _Block_copy(v74);

    v53 = v66;
    sub_1D8C1FDA0();
    v73 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_8();
    sub_1D8C1362C(v54, v55);
    v56 = OUTLINED_FUNCTION_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
    OUTLINED_FUNCTION_9(&qword_1ECAAA8D0);
    v58 = v63;
    v59 = v70;
    sub_1D8C20000();
    v60 = v71;
    v61 = v62;
    MEMORY[0x1DA7243A0](v71, v53, v58, v52);
    _Block_release(v52);

    (*(v69 + 8))(v58, v59);
    (*(v67 + 8))(v53, v68);
    (v65)(v60, v72);
  }

  OUTLINED_FUNCTION_20();
}

void sub_1D8C0F240()
{
  v0 = sub_1D8C1F7D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (sub_1D8C0E994())
    {
      sub_1D8C0D974(1);
      if (qword_1EDEF4FE8 != -1)
      {
        swift_once();
      }

      v7 = sub_1D8C1FA30();
      __swift_project_value_buffer(v7, qword_1EDEF5208);

      v8 = sub_1D8C1FA20();
      v9 = sub_1D8C1FF90();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v21 = v11;
        *v10 = 136315394;
        (*(v1 + 16))(v4, v6 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_id, v0);
        sub_1D8C1362C(&qword_1ECAAA8E0, MEMORY[0x1E69695A8]);
        v12 = sub_1D8C20120();
        v14 = v13;
        (*(v1 + 8))(v4, v0);
        v15 = sub_1D8C1E1E4(v12, v14, &v21);

        *(v10 + 4) = v15;
        *(v10 + 12) = 2080;
        v16 = MEMORY[0x1DA7245C0]([*(v6 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget) family]);
        v17 = sub_1D8C1FE70();
        v19 = v18;

        v20 = sub_1D8C1E1E4(v17, v19, &v21);

        *(v10 + 14) = v20;
        _os_log_impl(&dword_1D8C0A000, v8, v9, "ready for playback %s size: %s", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA724BB0](v11, -1, -1);
        MEMORY[0x1DA724BB0](v10, -1, -1);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1D8C0F564(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1D8C0F5A8()
{
  v1 = v0;
  v2 = *v0;
  sub_1D8C0D974(0);
  v3 = OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_memoryAssertion;
  v4 = *(v0 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_memoryAssertion);
  if (v4)
  {
    v5 = qword_1EDEF4FE8;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v6 = sub_1D8C1FA30();
    __swift_project_value_buffer(v6, qword_1EDEF5208);

    v7 = sub_1D8C1FA20();
    v8 = sub_1D8C1FF90();

    v9 = &unk_1EDEF5000;
    v10 = &unk_1EDEF5000;
    if (os_log_type_enabled(v7, v8))
    {
      v11 = swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_25();
      *v11 = 136315394;
      sub_1D8C1F7D0();
      OUTLINED_FUNCTION_0_0();
      sub_1D8C1362C(v12, v13);
      v14 = sub_1D8C20120();
      v16 = sub_1D8C1E1E4(v14, v15, &v24);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v17 = MEMORY[0x1DA7245C0]([*(v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget) family]);
      v18 = sub_1D8C1FE70();
      v20 = v19;

      v21 = sub_1D8C1E1E4(v18, v20, &v24);

      *(v11 + 14) = v21;
      v9 = &unk_1EDEF5000;
      _os_log_impl(&dword_1D8C0A000, v7, v8, "releasing higher memory for playback model %s size: %s", v11, 0x16u);
      swift_arrayDestroy();
      v10 = &unk_1EDEF5000;
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

    sub_1D8C0E10C(v4, v1 + v9[64], [*(v1 + v10[63]) family]);

    v22 = *(v1 + v3);
    *(v1 + v3) = 0;
    OUTLINED_FUNCTION_12();
  }

  else
  {
    OUTLINED_FUNCTION_12();
  }
}

uint64_t sub_1D8C0F848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8C1F7D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF4FE8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D8C1FA30();
  __swift_project_value_buffer(v11, qword_1EDEF5208);
  (*(v7 + 16))(v10, a1, v6);
  v12 = sub_1D8C1FA20();
  v13 = sub_1D8C1FF90();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315394;
    sub_1D8C1362C(&qword_1ECAAA8E0, MEMORY[0x1E69695A8]);
    v17 = sub_1D8C20120();
    v19 = v18;
    (*(v7 + 8))(v10, v6);
    v20 = sub_1D8C1E1E4(v17, v19, &v28);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = MEMORY[0x1DA7245C0](a2);
    v22 = sub_1D8C1FE70();
    v24 = v23;

    v25 = sub_1D8C1E1E4(v22, v24, &v28);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_1D8C0A000, v12, v13, "invalidated memory assertion playback model %s size: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA724BB0](v16, -1, -1);
    MEMORY[0x1DA724BB0](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return sub_1D8C1FE00();
}

uint64_t sub_1D8C0FBE4()
{
  v0 = type metadata accessor for SpatialPhotosViewPlaybackCoodinator(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_1D8C0FC24();
  qword_1ECAAAFC8 = v3;
  return result;
}

uint64_t sub_1D8C0FC24()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  type metadata accessor for SpatialPhotoViewPlaybackModel(0);
  sub_1D8C1F860();
  sub_1D8C100FC();
  sub_1D8C104F0();
  sub_1D8C106A4();
  return v0;
}

uint64_t sub_1D8C0FC70()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA8D8, &qword_1D8C21230) - 8) + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00]();
  v4 = &v17 - v3;
  v5 = sub_1D8C1FF60();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  sub_1D8C1FF30();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = sub_1D8C1FF20();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;
  v9[5] = v7;
  sub_1D8C0E5BC(0, 0, v4, &unk_1D8C21240, v9);

  v11 = *(v1 + 16);
  swift_unknownObjectRelease();
  v12 = *(v1 + 24);
  swift_unknownObjectRelease();
  v13 = OBJC_IVAR____TtC19_PhotosUI_WidgetKit35SpatialPhotosViewPlaybackCoodinator_players;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA880, &qword_1D8C21200);
  OUTLINED_FUNCTION_10(v14);
  (*(v15 + 8))(v1 + v13);
  return v1;
}

uint64_t sub_1D8C0FDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D8C1FF30();
  v5[4] = sub_1D8C1FF20();
  v7 = sub_1D8C1FEF0();

  return MEMORY[0x1EEE6DFA0](sub_1D8C0FE6C, v7, v6);
}

uint64_t sub_1D8C0FE6C()
{
  v1 = v0[4];
  v2 = v0[2];

  if (v2)
  {
    v3 = v0[2];
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultCenter];
    [v5 removeObserver_];

    swift_unknownObjectRelease();
  }

  v6 = v0[3];
  if (v6)
  {
    v7 = objc_opt_self();
    swift_unknownObjectRetain();
    v8 = [v7 defaultCenter];
    [v8 removeObserver_];

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_18();

  return v9();
}

uint64_t sub_1D8C0FF98(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1D8C1001C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8C10054()
{
  sub_1D8C11444();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D8C100FC()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x1E696A7D8];
  v3 = [objc_opt_self() mainQueue];
  OUTLINED_FUNCTION_13();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  v10[2] = v4;
  v10[3] = &block_descriptor_57;
  v5 = _Block_copy(v10);

  v7 = OUTLINED_FUNCTION_19(v6, sel_addObserverForName_object_queue_usingBlock_);
  _Block_release(v5);

  v8 = *(v0 + 16);
  *(v0 + 16) = v7;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8C10218(uint64_t a1, uint64_t a2)
{
  sub_1D8C1FF20();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1D8C13850();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D8C20050();
    MEMORY[0x1DA724280](0xD00000000000003FLL, 0x80000001D8C233F0);
    v8 = sub_1D8C201D0();
    MEMORY[0x1DA724280](v8);

    MEMORY[0x1DA724280](46, 0xE100000000000000);
    result = sub_1D8C200C0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8C103A4(uint64_t a1)
{
  v2 = sub_1D8C1F770();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1D8C1F760();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

id sub_1D8C10498()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 isLowPowerModeEnabled];

  return v1;
}

uint64_t sub_1D8C104F0()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x1E69DD918];
  v3 = [objc_opt_self() mainQueue];
  OUTLINED_FUNCTION_13();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  v10[2] = v4;
  v10[3] = &block_descriptor_50;
  v5 = _Block_copy(v10);

  v7 = OUTLINED_FUNCTION_19(v6, sel_addObserverForName_object_queue_usingBlock_);
  _Block_release(v5);

  v8 = *(v0 + 24);
  *(v0 + 24) = v7;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8C1060C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1D8C1FF30();
    sub_1D8C10218(a3, v5);
  }

  return result;
}

void sub_1D8C106A4()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v2 = sub_1D8C1FD90();
  v3 = OUTLINED_FUNCTION_3(v2);
  v53 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v51 = v8 - v7;
  v52 = sub_1D8C1FDB0();
  v9 = OUTLINED_FUNCTION_3(v52);
  v50 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = sub_1D8C1FD80();
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v24 = (v23 - v22);
  v25 = sub_1D8C1FDD0();
  v26 = OUTLINED_FUNCTION_3(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v47 - v35;
  if ((*(v1 + 32) & 1) == 0)
  {
    *(v1 + 32) = 1;
    sub_1D8C13770();
    v48 = v2;
    v49 = sub_1D8C1FFD0();
    sub_1D8C1FDC0();
    *v24 = 100;
    (*(v19 + 104))(v24, *MEMORY[0x1E69E7F38], v16);
    MEMORY[0x1DA7241C0](v33, v24);
    (*(v19 + 8))(v24, v16);
    v47 = *(v28 + 8);
    v47(v33, v25);
    OUTLINED_FUNCTION_13();
    v37 = swift_allocObject();
    swift_weakInit();
    v55[4] = sub_1D8C137B4;
    v55[5] = v37;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5(COERCE_DOUBLE(1107296256));
    v55[2] = v38;
    v55[3] = &block_descriptor;
    v39 = _Block_copy(v55);

    sub_1D8C1FDA0();
    v54 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_8();
    sub_1D8C1362C(v40, v41);
    v42 = OUTLINED_FUNCTION_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
    OUTLINED_FUNCTION_9(&qword_1ECAAA8D0);
    v44 = v51;
    v45 = v48;
    sub_1D8C20000();
    v46 = v49;
    MEMORY[0x1DA7243A0](v36, v15, v44, v39);
    _Block_release(v39);

    (*(v53 + 8))(v44, v45);
    (*(v50 + 8))(v15, v52);
    v47(v36, v25);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_1D8C10AAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 32) = 0;
    sub_1D8C10CFC();
  }

  return result;
}

uint64_t sub_1D8C10B08(uint64_t a1, void *a2)
{
  v4 = sub_1D8C1F7D0();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8, a1);
  v12 = type metadata accessor for SpatialPhotoViewPlaybackModel(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  sub_1D8C0D888(v10, a2);
  OUTLINED_FUNCTION_13();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = (v15 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_onDeinit);
  v18 = *(v15 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_onDeinit);
  v19 = *(v15 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_onDeinit + 8);
  *v17 = sub_1D8C13758;
  v17[1] = v16;

  sub_1D8C13760(v18);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA880, &qword_1D8C21200);
  sub_1D8C1F840();
  swift_endAccess();
  sub_1D8C106A4();
  return v15;
}

uint64_t sub_1D8C10CA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8C106A4();
  }

  return result;
}

void sub_1D8C10CFC()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v2 = sub_1D8C1F7D0();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA880, &qword_1D8C21200);
  OUTLINED_FUNCTION_3(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  if (sub_1D8C10498())
  {
    v22 = "lowPowerMode enabled";
  }

  else
  {
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v30 = OBJC_IVAR____TtC19_PhotosUI_WidgetKit35SpatialPhotosViewPlaybackCoodinator_players;
      swift_beginAccess();
      (*(v16 + 16))(v21, v1 + v30, v14);
      v31 = sub_1D8C1F850();
      (*(v16 + 8))(v21, v14);

      v50 = v31;
      v57 = sub_1D8C13334(v32);
      sub_1D8C11880(&v57);
      v33 = v57;
      v57 = MEMORY[0x1E69E7CD0];
      if (sub_1D8C1E1E0(v33))
      {
        sub_1D8C1E7B0(0, (v33 & 0xC000000000000001) == 0, v33);
        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x1DA724440](0, v33);
        }

        else
        {
          v34 = *(v33 + 32);
        }

        (*(v5 + 16))(v10, v34 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_id, v2);
        sub_1D8C118FC(v13, v10);

        (*(v5 + 8))(v13, v2);
      }

      else
      {
      }

      v52 = sub_1D8C1E1E0(v50);
      if (!v52)
      {
LABEL_31:

        OUTLINED_FUNCTION_20();
        return;
      }

      v35 = 0;
      v51 = v50 & 0xC000000000000001;
      v36 = v57;
      v48 = v50 + 32;
      v49 = v50 & 0xFFFFFFFFFFFFFF8;
      v55 = v5 + 16;
      v56 = v57 + 56;
      v54 = v5 + 8;
      while (1)
      {
        if (v51)
        {
          MEMORY[0x1DA724440](v35, v50);
        }

        else
        {
          if (v35 >= *(v49 + 16))
          {
            goto LABEL_33;
          }

          v37 = *(v48 + 8 * v35);
        }

        v38 = __OFADD__(v35, 1);
        v39 = v35 + 1;
        if (v38)
        {
          break;
        }

        v53 = v39;
        if (*(v36 + 16))
        {
          v40 = *(v36 + 40);
          OUTLINED_FUNCTION_0_0();
          sub_1D8C1362C(&qword_1ECAAA888, v41);
          v42 = sub_1D8C1FE40();
          v10 = ~(-1 << *(v36 + 32));
          do
          {
            v43 = v42 & v10;
            v44 = (1 << (v42 & v10)) & *(v56 + (((v42 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
            v45 = v44 != 0;
            if (!v44)
            {
              break;
            }

            (*(v5 + 16))(v13, *(v36 + 48) + *(v5 + 72) * v43, v2);
            OUTLINED_FUNCTION_0_0();
            sub_1D8C1362C(&qword_1ECAAA890, v46);
            v47 = sub_1D8C1FE50();
            (*(v5 + 8))(v13, v2);
            v42 = v43 + 1;
          }

          while ((v47 & 1) == 0);
        }

        else
        {
          v45 = 0;
        }

        sub_1D8C0EA5C(v45);

        v35 = v53;
        if (v53 == v52)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v22 = "reduceMotion enabled";
  }

  v10 = (v22 - 32);
  if (qword_1EDEF4FE8 != -1)
  {
LABEL_34:
    OUTLINED_FUNCTION_2_0();
  }

  v23 = sub_1D8C1FA30();
  __swift_project_value_buffer(v23, qword_1EDEF5208);

  v24 = sub_1D8C1FA20();
  v25 = sub_1D8C1FF90();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v58 = v27;
    *v26 = 136315138;
    v28 = sub_1D8C1E1E4(0xD000000000000014, v10 | 0x8000000000000000, &v58);

    *(v26 + 4) = v28;
    _os_log_impl(&dword_1D8C0A000, v24, v25, "playback disabled due to %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_14();
  }

  else
  {
  }

  OUTLINED_FUNCTION_20();

  sub_1D8C112B8();
}

uint64_t sub_1D8C112B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA880, &qword_1D8C21200);
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC19_PhotosUI_WidgetKit35SpatialPhotosViewPlaybackCoodinator_players;
  swift_beginAccess();
  (*(v3 + 16))(v8, v0 + v9, v1);
  v10 = sub_1D8C1F850();
  (*(v3 + 8))(v8, v1);
  result = sub_1D8C1E1E0(v10);
  v12 = result;
  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA724440](i, v10);
    }

    else
    {
      if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v14 = *(v10 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1D8C0EA5C(0);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void sub_1D8C11444()
{
  if (!qword_1ECAAA878)
  {
    type metadata accessor for SpatialPhotoViewPlaybackModel(255);
    v0 = sub_1D8C1F870();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAAA878);
    }
  }
}

uint64_t sub_1D8C1149C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8C11594;

  return v7(a1);
}

uint64_t sub_1D8C11594()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_16();
  *v3 = v2;

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_1D8C11680(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for SpatialPhotoViewPlaybackModel(0);
      result = sub_1D8C1FEE0();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1D8C116DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1D8C200D0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

char *sub_1D8C11700(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA8B0, &qword_1D8C21220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_1D8C11800(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAE0, &qword_1D8C21B20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t sub_1D8C11880(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D8C13744(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D8C12764(v6);
  return sub_1D8C20090();
}

BOOL sub_1D8C118FC(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_1D8C1F7D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1D8C1362C(&qword_1ECAAA888, MEMORY[0x1E69695A8]);
  v30 = a2;
  v11 = sub_1D8C1FE40();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_1D8C11F1C(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_1D8C1362C(&qword_1ECAAA890, MEMORY[0x1E69695A8]);
    v17 = sub_1D8C1FE50();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_1D8C11BC4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1D8C1F7D0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA898, &qword_1D8C21208);
  result = sub_1D8C20030();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1D8C121A8(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1D8C1362C(&qword_1ECAAA888, MEMORY[0x1E69695A8]);
    result = sub_1D8C1FE40();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D8C11F1C(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1D8C1F7D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D8C11BC4(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1D8C12440(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1D8C1362C(&qword_1ECAAA888, MEMORY[0x1E69695A8]);
      v15 = sub_1D8C1FE40();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1D8C1362C(&qword_1ECAAA890, MEMORY[0x1E69695A8]);
        v17 = sub_1D8C1FE50();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1D8C1220C();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1D8C20150();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1D8C121A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1D8C21100;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_1D8C1220C()
{
  v1 = v0;
  v2 = sub_1D8C1F7D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA898, &qword_1D8C21208);
  v7 = *v0;
  v8 = sub_1D8C20020();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1D8C12440(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1D8C1F7D0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA898, &qword_1D8C21208);
  v10 = sub_1D8C20030();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1D8C1362C(&qword_1ECAAA888, MEMORY[0x1E69695A8]);
        result = sub_1D8C1FE40();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1D8C12764(uint64_t *a1)
{
  v3 = a1[1];
  result = sub_1D8C20110();
  if (result < v3)
  {
    v5 = result;
    v6 = sub_1D8C11680(v3 / 2);
    v8[0] = v7;
    v8[1] = v3 / 2;
    result = sub_1D8C12968(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    return sub_1D8C12844(0, v3, 1, a1);
  }

  return result;
}

uint64_t sub_1D8C12844(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v21 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = result - a3;
    while (2)
    {
      v19 = v4;
      v20 = a3;
      v6 = *(v21 + 8 * a3);
      v18 = v5;
      do
      {
        v7 = *v4;
        v8 = *(v6 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget);

        v9 = [v8 family];
        v10 = (v9 - 2);
        v11 = v9 - 1;
        v12 = [*(v7 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget) family];
        if ((v12 - 2) >= 3)
        {
          v13 = 0;
        }

        else
        {
          v13 = v12 - 1;
        }

        if (v10 > 2 || v11 <= v13)
        {
          break;
        }

        if (!v21)
        {
          __break(1u);
          return result;
        }

        v15 = *v4;
        v6 = v4[1];
        *v4 = v6;
        v4[1] = v15;
        --v4;
      }

      while (!__CFADD__(v5++, 1));
      a3 = v20 + 1;
      v4 = v19 + 1;
      v5 = v18 - 1;
      if (v20 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1D8C12968(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v105 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v116 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v8 = *v105;
    if (!*v105)
    {
      goto LABEL_153;
    }

    v5 = v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_113:
      v93 = (v116 + 16);
      for (i = *(v116 + 16); i >= 2; *v93 = i)
      {
        if (!*a3)
        {
          goto LABEL_150;
        }

        v95 = (v116 + 16 * i);
        v96 = *v95;
        v97 = &v93[2 * i];
        v98 = v97[1];
        sub_1D8C13058((*a3 + 8 * *v95), (*a3 + 8 * *v97), (*a3 + 8 * v98), v8);
        if (v5)
        {
          break;
        }

        if (v98 < v96)
        {
          goto LABEL_138;
        }

        if (i - 2 >= *v93)
        {
          goto LABEL_139;
        }

        *v95 = v96;
        v95[1] = v98;
        v99 = *v93 - i;
        if (*v93 < i)
        {
          goto LABEL_140;
        }

        i = *v93 - 1;
        result = memmove(v97, v97 + 2, 16 * v99);
      }
    }

LABEL_147:
    result = sub_1D8C13320(v116);
    v116 = result;
    goto LABEL_113;
  }

  v8 = 0;
  v116 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v8++;
    if (v8 < v7)
    {
      v106 = v7;
      v101 = v6;
      v103 = v9;
      v10 = (*a3 + 8 * v9);
      v11 = 8 * v9;
      v13 = *v10;
      v12 = v10 + 2;
      v14 = *(*(*a3 + 8 * v8) + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget);

      v15 = [v14 family];
      v16 = (v15 - 2);
      v17 = v15 - 1;
      v18 = [*(v13 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget) family];
      if ((v18 - 2) >= 3)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18 - 1;
      }

      v20 = v16 < 3 && v17 > v19;
      v21 = v20;
      v108 = v21;
      v110 = v11;
      v22 = v11 + 8;
      do
      {
        v5 = v8;
        v23 = v22;
        if (++v8 >= v106)
        {
          break;
        }

        v24 = *(v12 - 1);
        v25 = *(*v12 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget);

        v26 = [v25 family];
        v27 = (v26 - 5);
        v113 = v8;
        v28 = v26 - 1;
        v29 = [*(v24 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget) family];
        v30 = (v29 - 2) >= 3 ? 0 : (v29 - 1);

        v31 = v27 >= 0xFFFFFFFFFFFFFFFDLL && v28 > v30;
        v8 = v113;
        v32 = !v31;
        ++v12;
        v22 = v23 + 8;
      }

      while (v108 != v32);
      if (v108)
      {
        v9 = v103;
        if (v8 < v103)
        {
          goto LABEL_144;
        }

        if (v103 >= v8)
        {
          v6 = v101;
        }

        else
        {
          v33 = v103;
          v6 = v101;
          do
          {
            if (v33 != v5)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_151;
              }

              v35 = *(v34 + v110);
              *(v34 + v110) = *(v34 + v23);
              *(v34 + v23) = v35;
            }

            ++v33;
            v23 -= 8;
            v110 += 8;
            v20 = v33 < v5--;
          }

          while (v20);
        }
      }

      else
      {
        v6 = v101;
        v9 = v103;
      }
    }

    v36 = a3[1];
    if (v8 < v36)
    {
      if (__OFSUB__(v8, v9))
      {
        goto LABEL_143;
      }

      if (v8 - v9 < a4)
      {
        break;
      }
    }

LABEL_59:
    if (v8 < v9)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D8C11700(0, *(v116 + 16) + 1, 1, v116);
      v116 = result;
    }

    v53 = *(v116 + 16);
    v52 = *(v116 + 24);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      result = sub_1D8C11700((v52 > 1), v53 + 1, 1, v116);
      v116 = result;
    }

    *(v116 + 16) = v54;
    v55 = v116 + 32;
    v56 = (v116 + 32 + 16 * v53);
    *v56 = v9;
    v56[1] = v8;
    v115 = *v105;
    if (!*v105)
    {
      goto LABEL_152;
    }

    if (v53)
    {
      while (1)
      {
        v57 = v54 - 1;
        v58 = (v55 + 16 * (v54 - 1));
        v59 = (v116 + 16 * v54);
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v60 = *(v116 + 32);
          v61 = *(v116 + 40);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_79:
          if (v63)
          {
            goto LABEL_129;
          }

          v75 = *v59;
          v74 = v59[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_132;
          }

          v79 = v58[1];
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_135;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_137;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v54 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v54 < 2)
        {
          goto LABEL_131;
        }

        v82 = *v59;
        v81 = v59[1];
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_94:
        if (v78)
        {
          goto LABEL_134;
        }

        v84 = *v58;
        v83 = v58[1];
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_136;
        }

        if (v85 < v77)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v57 - 1 >= v54)
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (!*a3)
        {
          goto LABEL_149;
        }

        v89 = (v55 + 16 * (v57 - 1));
        v90 = *v89;
        v91 = (v55 + 16 * v57);
        v5 = v91[1];
        sub_1D8C13058((*a3 + 8 * *v89), (*a3 + 8 * *v91), (*a3 + 8 * v5), v115);
        if (v6)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_124;
        }

        v92 = *(v116 + 16);
        if (v57 > v92)
        {
          goto LABEL_125;
        }

        *v89 = v90;
        v89[1] = v5;
        if (v57 >= v92)
        {
          goto LABEL_126;
        }

        v54 = v92 - 1;
        result = memmove((v55 + 16 * v57), v91 + 2, 16 * (v92 - 1 - v57));
        *(v116 + 16) = v92 - 1;
        if (v92 <= 2)
        {
          goto LABEL_108;
        }
      }

      v64 = v55 + 16 * v54;
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_127;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_128;
      }

      v71 = v59[1];
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_130;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_133;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = v58[1];
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_141;
        }

        if (v62 < v88)
        {
          v57 = v54 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_111;
    }
  }

  v37 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_145;
  }

  if (v37 >= v36)
  {
    v37 = a3[1];
  }

  if (v37 < v9)
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (v8 == v37)
  {
    goto LABEL_59;
  }

  v102 = v6;
  v104 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v8 - 8;
  v5 = v9 - v8;
  v107 = v37;
LABEL_45:
  v114 = v8;
  v40 = *(v38 + 8 * v8);
  v109 = v5;
  v111 = v39;
  v41 = v39;
  while (1)
  {
    v42 = *v41;
    v43 = *(v40 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget);

    v44 = [v43 family];
    v45 = (v44 - 2);
    v46 = v44 - 1;
    v47 = [*(v42 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget) family];
    if ((v47 - 2) >= 3)
    {
      v48 = 0;
    }

    else
    {
      v48 = v47 - 1;
    }

    if (v45 > 2 || v46 <= v48)
    {
LABEL_57:
      v8 = (v114 + 1);
      v39 = v111 + 8;
      v5 = v109 - 1;
      if (v114 + 1 == v107)
      {
        v8 = v107;
        v6 = v102;
        v9 = v104;
        goto LABEL_59;
      }

      goto LABEL_45;
    }

    if (!v38)
    {
      break;
    }

    v50 = *v41;
    v40 = v41[1];
    *v41 = v40;
    v41[1] = v50;
    --v41;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
  return result;
}

uint64_t sub_1D8C13058(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 8;
  v9 = (a3 - __dst) / 8;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[8 * v8];
    v40 = v11;
    v38 = v5;
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_50;
      }

      v13 = *v4;
      v14 = *(*v6 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget);

      v15 = [v14 family];
      v16 = (v15 - 2);
      v17 = v15 - 1;
      v18 = [*(v13 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget) family];
      v19 = (v18 - 2) >= 3 ? 0 : (v18 - 1);

      if (v16 > 2 || v17 <= v19)
      {
        break;
      }

      v21 = v6;
      v22 = v7 == v6;
      v6 += 8;
      if (!v22)
      {
        goto LABEL_20;
      }

LABEL_21:
      v7 += 8;
      v5 = v38;
      v11 = v40;
    }

    v21 = v4;
    v22 = v7 == v4;
    v4 += 8;
    if (v22)
    {
      goto LABEL_21;
    }

LABEL_20:
    *v7 = *v21;
    goto LABEL_21;
  }

  if (a4 != __dst || &__dst[8 * v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[8 * v9];
  v37 = v4;
LABEL_31:
  v24 = v6 - 8;
  v5 -= 8;
  while (v11 > v4 && v6 > v7)
  {
    v26 = v7;
    v27 = v24;
    v28 = *v24;
    v29 = *(*(v11 - 1) + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget);

    v30 = [v29 family];
    v41 = (v30 - 2);
    v39 = v30 - 1;
    v31 = [*(v28 + OBJC_IVAR____TtC19_PhotosUI_WidgetKit29SpatialPhotoViewPlaybackModel_widget) family];
    if ((v31 - 2) >= 3)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31 - 1;
    }

    if (v41 <= 2 && v39 > v32)
    {
      v22 = v5 + 8 == v6;
      v6 = v27;
      v7 = v26;
      v4 = v37;
      if (!v22)
      {
        *v5 = *v27;
        v6 = v27;
      }

      goto LABEL_31;
    }

    if (v11 != v5 + 8)
    {
      *v5 = *(v11 - 1);
    }

    v5 -= 8;
    v11 -= 8;
    v7 = v26;
    v4 = v37;
    v24 = v27;
  }

LABEL_50:
  v34 = (v11 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v34])
  {
    memmove(v6, v4, 8 * v34);
  }

  return 1;
}

uint64_t sub_1D8C13334(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1D8C200D0();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1D8C11800(v4, 0);
      sub_1D8C133C8((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1D8C133C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1D8C200D0();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1D8C116DC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for SpatialPhotoViewPlaybackModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1D8C137D4(&qword_1ECAAA8A8, &qword_1ECAAA8A0, &unk_1D8C21210);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA8A0, &unk_1D8C21210);
          v9 = sub_1D8C13550(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D8C13550(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v6 = sub_1D8C12758(a3);
  sub_1D8C1E7B0(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = MEMORY[0x1DA724440](a2, a3);
  }

  *a1 = v8;
  return sub_1D8C135DC;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1D8C1362C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1D8C13760(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D8C13770()
{
  result = qword_1ECAAA8B8;
  if (!qword_1ECAAA8B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAAA8B8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D8C137D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8C13850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D8C138FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_17(v5);
  *v6 = v7;
  v6[1] = sub_1D8C139A8;
  OUTLINED_FUNCTION_22();

  return sub_1D8C0FDD4(v8, v9, v10, v11, v3);
}

uint64_t sub_1D8C139A8()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_16();
  *v3 = v2;

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_1D8C13A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA8D8, &qword_1D8C21230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8C13B28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA8D8, &qword_1D8C21230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8C13B90()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11(v4);

  return v7(v6);
}

uint64_t sub_1D8C13C28()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11(v4);

  return v7(v6);
}

uint64_t sub_1D8C13CC0()
{
  v1 = *(sub_1D8C1F7D0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8C0F848(v0 + v2, v4, v5);
}

uint64_t sub_1D8C13D90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D8C13DA0()
{
  v2 = v1;
  v3 = *(sub_1D8C1F7D0() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 56) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = *(v0 + v4);
  v11 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D8C13F00;
  OUTLINED_FUNCTION_22();

  return sub_1D8C0DD34(v13, v14, v15, v16, v8, v9, v17, v10);
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9(unint64_t *a1)
{

  return sub_1D8C137D4(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_14()
{

  JUMPOUT(0x1DA724BB0);
}

uint64_t OUTLINED_FUNCTION_18()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

id OUTLINED_FUNCTION_19(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_25()
{

  return swift_slowAlloc();
}

uint64_t sub_1D8C14164(uint64_t a1)
{
  result = sub_1D8C16704(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1D8C16744(&v5, result, v3, 0, a1);
  }
}

void *sub_1D8C141F8(uint64_t a1)
{
  result = sub_1D8C16704(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_1D8C167E8(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_1D8C1428C(uint64_t a1)
{
  v4 = sub_1D8C1FB90();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v10 = v1 + *(a1 + 40);
  v11 = *v10;
  if (*(v10 + 8) != 1)
  {

    sub_1D8C1FF80();
    v12 = sub_1D8C1FC50();
    sub_1D8C1F9B0();

    sub_1D8C1FB80();
    swift_getAtKeyPath();
    sub_1D8C0D2B8(v11, 0);
    (*(v7 + 8))(v2, v4);
    LOBYTE(v11) = v14;
  }

  return v11 & 1;
}

uint64_t SpatialPhotoView.init(asset:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for SpatialPhotoView();
  v9 = a4 + *(v8 + 40);
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  *a4 = a1;
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v8 + 36);

  return v10(v11, a2, a3);
}

uint64_t SpatialPhotoView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_9_0();
  v9 = *(v6 + 16);
  v9(v3, v2 + *(v8 + 36), v5);
  v9(a2, v3, v5);
  return (*(v6 + 8))(v3, v5);
}

uint64_t sub_1D8C145B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE2370](a1, a2, a3, WitnessTable);
}

uint64_t sub_1D8C14634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE2378](a1, a2, a3, WitnessTable);
}

uint64_t SpatialPhotoView.archivedBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v5 = *(a1 + 16);
  v6 = sub_1D8C1FAF0();
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v47 = v46 - v14;
  v15 = *(v5 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v46 - v20;
  v22 = sub_1D8C1FBD0();
  v23 = OUTLINED_FUNCTION_3(v22);
  v49 = v24;
  v50 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  v48 = v46 - v28;
  v29 = sub_1D8C1428C(a1);
  v30 = *(a1 + 36);
  if (v29)
  {
    v31 = *(a1 + 24);
    v32 = v15[2];
    v32(v21, v2 + v30, v5);
    v32(v19, v21, v5);
    v33 = sub_1D8C0C054();
    v52 = v31;
    v53 = v33;
    OUTLINED_FUNCTION_0();
    swift_getWitnessTable();
    v34 = v48;
    sub_1D8C14AF8(v19, v5);
    v35 = v15[1];
    v35(v19, v5);
    v35(v21, v5);
  }

  else
  {
    v60 = *v2;
    v61 = 0;
    v62 = 0;
    v31 = *(a1 + 24);
    v36 = v60;
    MEMORY[0x1DA724090](&v60, v5, &type metadata for SpatialPhotoViewModifier, v31);
    sub_1D8C15AA0(v60, v61, v62);
    v37 = sub_1D8C0C054();
    v58 = v31;
    v59 = v37;
    OUTLINED_FUNCTION_0();
    v46[1] = swift_getWitnessTable();
    v38 = *(v9 + 16);
    v39 = v47;
    v38(v47, v3, v6);
    v40 = *(v9 + 8);
    v40(v3, v6);
    v38(v3, v39, v6);
    v34 = v48;
    sub_1D8C14BF0(v3, v5, v6);
    v40(v3, v6);
    v40(v39, v6);
  }

  v41 = sub_1D8C0C054();
  v56 = v31;
  v57 = v41;
  OUTLINED_FUNCTION_0();
  WitnessTable = swift_getWitnessTable();
  v54 = v31;
  v55 = WitnessTable;
  OUTLINED_FUNCTION_5_0();
  v43 = v50;
  swift_getWitnessTable();
  v44 = v49;
  (*(v49 + 16))(v51, v34, v43);
  return (*(v44 + 8))(v34, v43);
}

uint64_t sub_1D8C14AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8C1FBB0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1D8C1FBC0();
}

uint64_t sub_1D8C14BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D8C1FBB0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1D8C1FBC0();
}

uint64_t sub_1D8C14CEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564497465737361 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1D8C20130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D8C23430 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D8C20130();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D8C14DFC(char a1)
{
  sub_1D8C20160();
  MEMORY[0x1DA724550](a1 & 1);
  return sub_1D8C20180();
}

uint64_t sub_1D8C14E44(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6564497465737361;
  }
}

uint64_t sub_1D8C14EA8()
{
  v1 = *v0;
  sub_1D8C20160();
  MEMORY[0x1DA724550](v1);
  return sub_1D8C20180();
}

uint64_t sub_1D8C14EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8C14CEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8C14F34(uint64_t a1)
{
  v2 = sub_1D8C15B0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8C14F70(uint64_t a1)
{
  v2 = sub_1D8C15B0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpatialPhotoViewModifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA8F0, &qword_1D8C21310);
  OUTLINED_FUNCTION_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8C15B0C();
  sub_1D8C20190();
  if (!v2)
  {
    v21 = 0;
    v14 = sub_1D8C200E0();
    v16 = v15;
    (*(v7 + 8))(v12, v5);
    if (v16)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    *a2 = v17;
    *(a2 + 8) = v16;
    *(a2 + 16) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t SpatialPhotoViewModifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA8F8, &qword_1D8C21318);
  OUTLINED_FUNCTION_3(v3);
  v55 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v54 - v8;
  v11 = *v1;
  v10 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = OUTLINED_FUNCTION_7_0();
  sub_1D8C15B60(v14, v15, v16);
  sub_1D8C15B0C();
  v56 = v9;
  sub_1D8C201A0();
  if (v12 == 255)
  {
    goto LABEL_14;
  }

  if (v12)
  {
    sub_1D8C16194(0, &unk_1EDEF4D10, 0x1E6978738);
    v17 = sub_1D8C154C0();
    v18 = 0;
    goto LABEL_10;
  }

  v19 = [v11 photoLibrary];
  if (!v19)
  {
    v42 = OUTLINED_FUNCTION_7_0();
    sub_1D8C15AA0(v42, v43, v44);
LABEL_14:
    v39 = 0;
    v41 = 0;
    v18 = 0;
    v17 = 0;
    v37 = v56;
    goto LABEL_15;
  }

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAF0, &qword_1D8C21B30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D8C212D0;
  v22 = v20;
  v23 = [v11 localIdentifier];
  v24 = sub_1D8C1FE70();
  v26 = v25;

  *(v21 + 32) = v24;
  *(v21 + 40) = v26;
  v27 = sub_1D8C1FFA0();

  sub_1D8C14164(v27);
  v29 = v28;
  v17 = v30;
  v32 = v31;

  if (!v29)
  {
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  if (v32)
  {
    sub_1D8C15C04(v17);
    goto LABEL_8;
  }

LABEL_9:
  v33 = v22;
  v18 = [v22 photoLibraryIdentifier];
  v34 = OUTLINED_FUNCTION_7_0();
  sub_1D8C15AA0(v34, v35, v36);

LABEL_10:
  v37 = v56;
  if (v17)
  {
    v38 = [v17 stringValue];
    v39 = sub_1D8C1FE70();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

LABEL_15:
  v57 = v39;
  v58 = v41;
  v59 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA900, &unk_1D8C21320);
  sub_1D8C15B88();
  OUTLINED_FUNCTION_10_0();
  v45 = v54[1];
  sub_1D8C200F0();
  if (!v45)
  {

    if (v18)
    {
      v46 = [v18 archivalStringRepresentation];
      v47 = v18;
      v48 = v3;
      v49 = v46;
      v50 = sub_1D8C1FE70();
      v52 = v51;

      v3 = v48;
      v18 = v47;
      v37 = v56;
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    v57 = v50;
    v58 = v52;
    v59 = 1;
    OUTLINED_FUNCTION_10_0();
    sub_1D8C200F0();
  }

  return (*(v55 + 8))(v37, v3);
}

id sub_1D8C154C0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1D8C1FE60();

  v2 = [v0 initWithStringValue_];

  return v2;
}

uint64_t SpatialPhotoViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA908, &qword_1D8C21330);
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA80, &qword_1D8C21338);
  v12 = OUTLINED_FUNCTION_2_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA910, &qword_1D8C21340);
  OUTLINED_FUNCTION_2_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v54 - v22;
  v24 = *(v2 + 16);
  if (v24 == 255)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA918, &qword_1D8C21348);
    OUTLINED_FUNCTION_2_1(v46);
    (*(v47 + 16))(v10, v55, v46);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_0();
    sub_1D8C137D4(v48, v49, v50);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_11_0();
    sub_1D8C137D4(v51, v52, v53);
    return sub_1D8C1FBC0();
  }

  else
  {
    v54[1] = v11;
    v54[2] = v5;
    v27 = v2;
    v25 = *v2;
    v26 = *(v27 + 8);
    v28 = v18[11];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAA918, &qword_1D8C21348);
    v54[3] = a2;
    v30 = v29;
    OUTLINED_FUNCTION_2_1(v29);
    (*(v31 + 16))(&v23[v28], v55, v30);
    *v23 = swift_getKeyPath();
    v23[8] = 0;
    *(v23 + 2) = swift_getKeyPath();
    v23[24] = 0;
    *(v23 + 4) = v25;
    *(v23 + 5) = v26;
    v23[48] = v24 & 1;
    v32 = v18[12];
    v56 = 0;
    sub_1D8C15B78(v25, v26, v24 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAAA70, &qword_1D8C213B0);
    sub_1D8C1FCE0();
    *&v23[v32] = v57;
    v33 = v18[13];
    v34 = sub_1D8C1F7B0();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v34);
    sub_1D8C15C10(v17, v3, &qword_1ECAAAA80, &qword_1D8C21338);
    sub_1D8C1FCE0();
    OUTLINED_FUNCTION_11_0();
    sub_1D8C15C70(v35, v36, v37);
    sub_1D8C15C10(v23, v10, &qword_1ECAAA910, &qword_1D8C21340);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_11_0();
    sub_1D8C137D4(v38, v39, v40);
    OUTLINED_FUNCTION_3_0();
    sub_1D8C137D4(v41, &qword_1ECAAA918, &qword_1D8C21348);
    sub_1D8C1FBC0();
    OUTLINED_FUNCTION_11_0();
    return sub_1D8C15C70(v42, v43, v44);
  }
}

uint64_t sub_1D8C15918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D8C0BF4C();

  return MEMORY[0x1EEDDB138](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1D8C15994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D8C0BF4C();

  return MEMORY[0x1EEDDB140](a1, a2, a3, a4, a5, v10);
}

void sub_1D8C15AA0(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_1D8C15AB8(a1, a2, a3 & 1);
  }
}

void sub_1D8C15AB8(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D8C15B0C()
{
  result = qword_1EDEF5130;
  if (!qword_1EDEF5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF5130);
  }

  return result;
}

id sub_1D8C15B60(id result, void *a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D8C15B78(result, a2, a3 & 1);
  }

  return result;
}

id sub_1D8C15B78(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return a1;
  }
}

unint64_t sub_1D8C15B88()
{
  result = qword_1EDEF4D28;
  if (!qword_1EDEF4D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAA900, &unk_1D8C21320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF4D28);
  }

  return result;
}

uint64_t sub_1D8C15C10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D8C15C70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1D8C15D90(uint64_t a1)
{
  sub_1D8C16194(319, &qword_1EDEF5110, 0x1E6978630);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_1D8C161D4();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D8C15E40(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = (v14 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v16 = *result;
        }

        else
        {
          v15 = 0;
          v16 = *result;
        }

        result = v8 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1D8C15FA0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D8C16194(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D8C161D4()
{
  if (!qword_1EDEF5118)
  {
    v0 = sub_1D8C1FA70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEF5118);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_19_PhotosUI_WidgetKit30SpatialPhotoViewAssetReferenceOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D8C16258(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8C1629C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = ~a2;
    }
  }

  return result;
}

unint64_t sub_1D8C162F0()
{
  result = qword_1EDEF4D58;
  if (!qword_1EDEF4D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAA920, &qword_1D8C21610);
    sub_1D8C137D4(qword_1EDEF4F60, &qword_1ECAAA910, &qword_1D8C21340);
    sub_1D8C137D4(&qword_1EDEF4D50, &qword_1ECAAA918, &qword_1D8C21348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF4D58);
  }

  return result;
}

uint64_t sub_1D8C163D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8C16414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for SpatialPhotoViewModifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SpatialPhotoViewModifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D8C16600()
{
  result = qword_1ECAAA928;
  if (!qword_1ECAAA928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAA928);
  }

  return result;
}

unint64_t sub_1D8C16658()
{
  result = qword_1EDEF5120;
  if (!qword_1EDEF5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF5120);
  }

  return result;
}

unint64_t sub_1D8C166B0()
{
  result = qword_1EDEF5128;
  if (!qword_1EDEF5128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF5128);
  }

  return result;
}

uint64_t sub_1D8C16704(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1D8C20010();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1D8C16744(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(a5 + 56) + 16 * a2;
    v9 = *v8;
    v10 = *(v8 + 8);
    *result = *v8;
    *(result + 8) = v10;

    sub_1D8C1689C(v9);
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1D8C167E8(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    *result = *v6;
    result[1] = v8;
    *(result + 16) = v9;
    v10 = v5;
    sub_1D8C1688C(v7, v8, v9);
    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_1D8C1688C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1D8C1699C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v4 = sub_1D8C1FF60();
  v5 = OUTLINED_FUNCTION_3(v4);
  v83 = v6;
  v84 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v82 = v10 - v9;
  OUTLINED_FUNCTION_2_2();
  v12 = v11;
  v86 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAAA88, &qword_1D8C21AD0);
  v17 = *(a1 + 16);
  v18 = a1;
  sub_1D8C1FAF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAAA90, &qword_1D8C21AD8);
  sub_1D8C1FAF0();
  OUTLINED_FUNCTION_18_0();
  swift_getTupleTypeMetadata2();
  sub_1D8C1FD60();
  OUTLINED_FUNCTION_10_1();
  swift_getWitnessTable();
  v19 = sub_1D8C1FD30();
  v70 = v19;
  OUTLINED_FUNCTION_2_2();
  v77 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v64 - v24;
  v87 = OUTLINED_FUNCTION_12_0();
  v93 = v19;
  v94 = v87;
  v78 = &unk_1D8C21CF0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2_2();
  v80 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v73 = &v64 - v29;
  v79 = sub_1D8C1FAF0();
  v30 = OUTLINED_FUNCTION_3(v79);
  v81 = v31;
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v30);
  v74 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v76 = &v64 - v36;
  v37 = *(v18 + 24);
  v88 = v17;
  v89 = v37;
  v68 = v17;
  v38 = v37;
  v67 = v37;
  v72 = v2;
  v90 = v2;
  sub_1D8C1FD40();
  sub_1D8C1FD20();
  v65 = "enderer13ChangeTracker";
  v71 = *(v12 + 16);
  v39 = v18;
  v71(v16, v2, v18);
  sub_1D8C1FF30();
  v40 = sub_1D8C1FF20();
  v41 = *(v12 + 80);
  v42 = swift_allocObject();
  v43 = MEMORY[0x1E69E85E0];
  *(v42 + 2) = v40;
  *(v42 + 3) = v43;
  *(v42 + 4) = v17;
  *(v42 + 5) = v38;
  v66 = *(v12 + 32);
  v44 = v16;
  v45 = v39;
  v66(&v42[(v41 + 48) & ~v41], v16, v39);
  v46 = v82;
  v47 = v70;
  v48 = v87;
  sub_1D8C0D2C4();
  v62 = v47;
  v63 = v48;
  v49 = v47;
  v50 = v73;
  v51 = v69;
  sub_1D8C0D36C(0, 0, v46, 0xD000000000000035, v65 | 0x8000000000000000, 41, &unk_1D8C21AF0, v42, v62, v63);
  (*(v83 + 8))(v46, v84);
  (*(v77 + 8))(v51, v49);
  v71(v44, v72, v45);
  v52 = swift_allocObject();
  v53 = v67;
  *(v52 + 16) = v68;
  *(v52 + 24) = v53;
  v66((v52 + ((v41 + 32) & ~v41)), v44, v45);
  v93 = v49;
  v94 = v87;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v74;
  v56 = OpaqueTypeMetadata2;
  sub_1D8C1FC80();

  (*(v80 + 8))(v50, v56);
  v91 = OpaqueTypeConformance2;
  v92 = MEMORY[0x1E69805D0];
  OUTLINED_FUNCTION_0();
  v57 = v79;
  WitnessTable = swift_getWitnessTable();
  v59 = v76;
  sub_1D8C168D8(v55, v57, WitnessTable);
  v60 = *(v81 + 8);
  v60(v55, v57);
  sub_1D8C168D8(v59, v57, WitnessTable);
  return (v60)(v59, v57);
}

uint64_t sub_1D8C17048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a4;
  v59 = *(a2 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8C1FAF0();
  v64 = *(v9 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v56 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAAA90, &qword_1D8C21AD8);
  v65 = v9;
  v12 = sub_1D8C1FAF0();
  v66 = *(v12 - 8);
  v13 = *(v66 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v68 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v60 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v56 - v18;
  v19 = type metadata accessor for SpatialPhotoWidgetLiveRenderView(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v56 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA80, &qword_1D8C21338);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v56 - v24;
  v26 = sub_1D8C1F7B0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA88, &qword_1D8C21AD0);
  v31 = *(*(v58 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v58);
  v61 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v70 = &v56 - v34;
  v63 = a3;
  v35 = type metadata accessor for SpatialPhotoContentView();
  if ((sub_1D8C177A0(v35) & 1) == 0)
  {
    goto LABEL_4;
  }

  v36 = *(v35 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA98, &qword_1D8C21AE8);
  sub_1D8C1FCF0();
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_1D8C1EA84(v25, &qword_1ECAAAA80, &qword_1D8C21338);
LABEL_4:
    v37 = 1;
    goto LABEL_6;
  }

  v38 = *(v27 + 32);
  v38(v30, v25, v26);
  v39 = v56;
  v38(v56, v30, v26);
  sub_1D8C1EB3C(v39, v70, type metadata accessor for SpatialPhotoWidgetLiveRenderView);
  v37 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v70, v37, 1, v19);
  v40 = v59;
  v41 = v57;
  (*(v59 + 16))(v57, a1 + *(v35 + 44), a2);
  sub_1D8C177A0(v35);
  v43 = v62;
  v42 = v63;
  sub_1D8C1FCA0();
  (*(v40 + 8))(v41, a2);
  if (sub_1D8C177A0(v35))
  {
    MEMORY[0x1DA724130](0.5, 0.85, 0.0);
  }

  LOBYTE(v74[0]) = sub_1D8C177A0(v35) & 1;
  v74[4] = v42;
  v74[5] = MEMORY[0x1E697E5C0];
  v44 = v65;
  WitnessTable = swift_getWitnessTable();
  v46 = v60;
  sub_1D8C1FCD0();

  (*(v64 + 8))(v43, v44);
  v47 = sub_1D8C137D4(&qword_1ECAAAAF8, &qword_1ECAAAA90, &qword_1D8C21AD8);
  v74[2] = WitnessTable;
  v74[3] = v47;
  v48 = swift_getWitnessTable();
  v49 = v67;
  sub_1D8C168D8(v46, v12, v48);
  v50 = v66;
  v51 = *(v66 + 8);
  v51(v46, v12);
  v52 = v70;
  v53 = v61;
  sub_1D8C15C10(v70, v61, &qword_1ECAAAA88, &qword_1D8C21AD0);
  v74[0] = v53;
  v54 = v68;
  (*(v50 + 16))(v68, v49, v12);
  v74[1] = v54;
  v73[0] = v58;
  v73[1] = v12;
  v71 = sub_1D8C1E988();
  v72 = v48;
  sub_1D8C17A5C(v74, 2, v73);
  v51(v49, v12);
  sub_1D8C1EA84(v52, &qword_1ECAAAA88, &qword_1D8C21AD0);
  v51(v54, v12);
  return sub_1D8C1EA84(v53, &qword_1ECAAAA88, &qword_1D8C21AD0);
}

uint64_t sub_1D8C177A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D8C1FB90();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA80, &qword_1D8C21338);
  v14 = OUTLINED_FUNCTION_15_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v26 - v17;
  v19 = *(a1 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA98, &qword_1D8C21AE8);
  sub_1D8C1FCF0();
  v20 = sub_1D8C1F7B0();
  LODWORD(v19) = __swift_getEnumTagSinglePayload(v18, 1, v20);
  sub_1D8C1EA84(v18, &qword_1ECAAAA80, &qword_1D8C21338);
  if (v19 == 1)
  {
    goto LABEL_8;
  }

  v27 = *(v2 + *(a1 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAA0, &qword_1D8C21AF8);
  sub_1D8C1FCF0();
  if (!v26[1])
  {
    goto LABEL_8;
  }

  if ((sub_1D8C0E994() & 1) == 0 || (sub_1D8C0E9A8() & 1) == 0)
  {

LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  v21 = *v2;
  if (*(v2 + 8) == 1)
  {
  }

  else
  {
    v24 = *v2;

    sub_1D8C1FF80();
    v25 = sub_1D8C1FC50();
    OUTLINED_FUNCTION_28();

    sub_1D8C1FB80();
    swift_getAtKeyPath();
    sub_1D8C0D2B8(v21, 0);
    (*(v7 + 8))(v12, v4);

    LOBYTE(v21) = v27;
  }

  v22 = v21 ^ 1;
  return v22 & 1;
}

uint64_t SpatialPhotoWidgetLiveRenderView.init(spatialPhotoURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D8C1F7B0();
  v5 = OUTLINED_FUNCTION_2_1(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t sub_1D8C17A5C(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v10 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v14 = (v6 + 32);
    v15 = a2;
    do
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v14;
      }

      v18 = *v13++;
      v17 = v18;
      v19 = *v5++;
      (*(*(v17 - 8) + 16))(&v12[v16], v19);
      v14 += 4;
      --v15;
    }

    while (v15);
  }

  return sub_1D8C1FD70();
}

uint64_t sub_1D8C17BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v4 = sub_1D8C1F7D0();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA80, &qword_1D8C21338) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v8 = sub_1D8C1F7B0();
  v3[17] = v8;
  v9 = *(v8 - 8);
  v3[18] = v9;
  v10 = *(v9 + 64) + 15;
  v3[19] = swift_task_alloc();
  v11 = sub_1D8C1FB90();
  v3[20] = v11;
  v12 = *(v11 - 8);
  v3[21] = v12;
  v13 = *(v12 + 64) + 15;
  v3[22] = swift_task_alloc();
  v14 = type metadata accessor for SpatialPhotoContentView();
  v3[23] = v14;
  v15 = *(v14 - 8);
  v3[24] = v15;
  v16 = *(v15 + 64) + 15;
  v3[25] = swift_task_alloc();
  sub_1D8C1FF30();
  v3[26] = sub_1D8C1FF20();
  v18 = sub_1D8C1FEF0();
  v3[27] = v18;
  v3[28] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1D8C17E48, v18, v17);
}

uint64_t sub_1D8C17E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_23_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  if (qword_1EDEF4FE8 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v26 = v22[24];
  v25 = v22[25];
  v27 = v22[23];
  v28 = v22[10];
  v29 = sub_1D8C1FA30();
  __swift_project_value_buffer(v29, qword_1EDEF5208);
  (*(v26 + 16))(v25, v28, v27);
  v30 = sub_1D8C1FA20();
  LOBYTE(v27) = sub_1D8C1FF90();
  v31 = OUTLINED_FUNCTION_27(v27);
  v32 = v22[25];
  if (!v31)
  {
    v42 = v22[23];
    v43 = v22[24];

    (*(v43 + 8))(v32, v42);
    goto LABEL_11;
  }

  v33 = swift_slowAlloc();
  v34 = OUTLINED_FUNCTION_22_0();
  a11 = v34;
  *v33 = 136315138;
  v35 = *(v32 + 16);
  if (*(v32 + 24) != 1)
  {
    v45 = v22[21];
    v44 = v22[22];
    a10 = v22[20];

    sub_1D8C1FF80();
    v46 = sub_1D8C1FC50();
    OUTLINED_FUNCTION_28();

    sub_1D8C1FB80();
    swift_getAtKeyPath();
    sub_1D8C1E020(v35, 0);
    (*(v45 + 8))(v44, a10);
    v35 = v22[9];
    if (v35)
    {
      goto LABEL_6;
    }

LABEL_9:
    v41 = 0xE700000000000000;
    v39 = 0x6E776F6E6B6E75;
    goto LABEL_10;
  }

  v36 = v35;
  if (!v35)
  {
    goto LABEL_9;
  }

LABEL_6:
  v37 = [v35 family];

  v38 = MEMORY[0x1DA7245C0](v37);
  v39 = sub_1D8C1FE70();
  v41 = v40;

LABEL_10:
  (*(v22[24] + 8))(v22[25], v22[23]);
  v47 = sub_1D8C1E1E4(v39, v41, &a11);

  *(v33 + 4) = v47;
  OUTLINED_FUNCTION_25_0(&dword_1D8C0A000, v48, v49, "SpatialPhotoContentView onAppear for widget family %s");
  __swift_destroy_boxed_opaque_existential_0(v34);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_14();

LABEL_11:
  v50 = (v22[10] + *(v22[23] + 48));
  v51 = *v50;
  v22[29] = *v50;
  v52 = v50[1];
  v22[30] = v52;
  v22[2] = v51;
  v22[3] = v52;
  v22[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAA0, &qword_1D8C21AF8);
  sub_1D8C1FCF0();
  if (v22[6])
  {
    v53 = v22[26];

LABEL_13:

    OUTLINED_FUNCTION_19_0();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_13_0();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
  }

  v63 = v22[10];
  v64 = *(v63 + 16);
  if (*(v63 + 24) == 1)
  {
    v65 = v64;
  }

  else
  {
    v67 = v22[21];
    v66 = v22[22];
    v68 = v22[20];

    sub_1D8C1FF80();
    v69 = sub_1D8C1FC50();
    OUTLINED_FUNCTION_28();

    sub_1D8C1FB80();
    swift_getAtKeyPath();
    sub_1D8C1E020(v64, 0);
    (*(v67 + 8))(v66, v68);
    v64 = v22[7];
  }

  v22[32] = v64;
  if (!v64)
  {
    v78 = v22[26];
    goto LABEL_13;
  }

  v70 = swift_task_alloc();
  v22[33] = v70;
  *v70 = v22;
  v70[1] = sub_1D8C18298;
  v71 = v22[23];
  v72 = v22[16];
  v73 = v22[10];
  OUTLINED_FUNCTION_13_0();

  return sub_1D8C18630(v74, v75, v76);
}

uint64_t sub_1D8C18298()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v3 = *v0;
  OUTLINED_FUNCTION_16();
  *v4 = v3;

  v5 = *(v1 + 224);
  v6 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D8C183B0, v6, v5);
}

uint64_t sub_1D8C183B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_23_0();
  v15 = *(v14 + 208);
  v16 = *(v14 + 128);
  v17 = *(v14 + 136);

  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    v18 = *(v14 + 128);

    sub_1D8C1EA84(v18, &qword_1ECAAAA80, &qword_1D8C21338);
  }

  else
  {
    v19 = *(v14 + 184);
    v21 = *(v14 + 144);
    v20 = *(v14 + 152);
    v22 = *(v14 + 136);
    v24 = *(v14 + 112);
    v23 = *(v14 + 120);
    v25 = *(v14 + 80);
    (*(v21 + 32))(v20, *(v14 + 128), v22);
    (*(v21 + 16))(v23, v20, v22);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
    v26 = *(v19 + 52);
    sub_1D8C15C10(v23, v24, &qword_1ECAAAA80, &qword_1D8C21338);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA98, &qword_1D8C21AE8);
    sub_1D8C1FD00();
    sub_1D8C1EA84(v23, &qword_1ECAAAA80, &qword_1D8C21338);
    if (qword_1ECAAA840 != -1)
    {
      swift_once();
    }

    v27 = *(v14 + 256);
    v29 = *(v14 + 232);
    v28 = *(v14 + 240);
    v30 = *(v14 + 144);
    a11 = *(v14 + 152);
    a9 = *(v14 + 248);
    a10 = *(v14 + 136);
    v31 = *(v14 + 96);
    v32 = *(v14 + 104);
    v33 = *(v14 + 88);
    sub_1D8C1F7C0();
    v34 = sub_1D8C10B08(v32, v27);
    (*(v31 + 8))(v32, v33);
    *(v14 + 32) = v29;
    *(v14 + 40) = v28;
    *(v14 + 64) = v34;

    sub_1D8C1FD00();

    (*(v30 + 8))(a11, a10);
  }

  OUTLINED_FUNCTION_19_0();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D8C18630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8C18654, 0, 0);
}

uint64_t sub_1D8C18654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_23_0();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  v26 = v22[7];
  v27 = v22[8];
  v28 = sub_1D8C19680();
  v22[9] = v28;
  v29 = 0x1E8565000;
  if (!v28)
  {
    if (qword_1EDEF4FE8 != -1)
    {
LABEL_46:
      OUTLINED_FUNCTION_2_0();
    }

    v73 = v22[6];
    v74 = sub_1D8C1FA30();
    __swift_project_value_buffer(v74, qword_1EDEF5208);
    v75 = v73;
    v76 = sub_1D8C1FA20();
    LOBYTE(v73) = sub_1D8C1FF90();

    if (os_log_type_enabled(v76, v73))
    {
      v77 = v22[6];
      v78 = swift_slowAlloc();
      v79 = OUTLINED_FUNCTION_22_0();
      a11 = v79;
      *v78 = 136315138;
      v80 = MEMORY[0x1DA7245C0]([v77 v29[480]]);
      v81 = sub_1D8C1FE70();
      v83 = v82;

      v84 = sub_1D8C1E1E4(v81, v83, &a11);

      *(v78 + 4) = v84;
      OUTLINED_FUNCTION_25_0(&dword_1D8C0A000, v85, v86, "could not resolve asset for widget family %s");
      __swift_destroy_boxed_opaque_existential_0(v79);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();
    }

LABEL_39:
    v113 = v22[5];
    v114 = sub_1D8C1F7B0();
    __swift_storeEnumTagSinglePayload(v113, 1, 1, v114);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_13_0();

    return v116(v115, v116, v117, v118, v119, v120, v121, v122, a9, a10, a11, a12, a13, a14);
  }

  v30 = v22[6];
  a9 = v28;
  v31 = [objc_opt_self() assetResourcesForAsset:v28 includeDerivatives:1];
  sub_1D8C16194(0, &qword_1EDEF4D20, 0x1E69786D8);
  v32 = sub_1D8C1FED0();

  v33 = [v30 family];
  a10 = v22;
  v22[10] = v33;
  if (((v33 - 2) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v34 = 117;
  }

  else
  {
    v34 = 118;
  }

  a11 = MEMORY[0x1E69E7CC0];
  v35 = sub_1D8C116DC(v32);
  v36 = 0;
  v37 = (v32 & 0xC000000000000001);
  v22 = 0x1E8565000;
  while (v35 != v36)
  {
    if (v37)
    {
      v38 = MEMORY[0x1DA724440](v36, v32);
    }

    else
    {
      if (v36 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v38 = *(v32 + 8 * v36 + 32);
    }

    v29 = v38;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v39 = MEMORY[0x1DA724440](0, v30);
      goto LABEL_20;
    }

    if ([(SEL *)v38 type]== v34)
    {
      sub_1D8C20080();
      v23 = *(a11 + 16);
      sub_1D8C200A0();
      sub_1D8C200B0();
      v30 = &a11;
      sub_1D8C20090();
    }

    else
    {
    }

    ++v36;
  }

  v30 = a11;
  if (!sub_1D8C116DC(a11))
  {

    v22 = a10;
    if (qword_1EDEF4FE8 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v87 = a10[6];
    v88 = sub_1D8C1FA30();
    __swift_project_value_buffer(v88, qword_1EDEF5208);
    v89 = a9;
    v90 = v87;
    v91 = sub_1D8C1FA20();
    v92 = sub_1D8C1FF90();
    v93 = OUTLINED_FUNCTION_27(v92);
    v94 = a10[6];
    if (!v93)
    {

      goto LABEL_39;
    }

    v95 = OUTLINED_FUNCTION_22_0();
    a11 = swift_slowAlloc();
    *v95 = 136315650;
    a10[4] = v34;
    type metadata accessor for PHAssetResourceType(0);
    v96 = sub_1D8C1FE80();
    sub_1D8C1E1E4(v96, v97, &a11);
    OUTLINED_FUNCTION_26();
    *(v95 + 4) = v23;
    *(v95 + 12) = 2080;
    v98 = sub_1D8C1E7DC(v89);
    v100 = v99;

    if (v100)
    {
      v101 = a10[6];
      sub_1D8C1E1E4(v98, v100, &a11);
      OUTLINED_FUNCTION_26();
      *(v95 + 14) = v98;
      *(v95 + 22) = 2080;
      v102 = MEMORY[0x1DA7245C0]([v101 family]);
      v103 = sub_1D8C1FE70();
      v105 = v104;

      v106 = sub_1D8C1E1E4(v103, v105, &a11);

      *(v95 + 24) = v106;
      _os_log_impl(&dword_1D8C0A000, v91, v92, "resource type %s not found for asset uuid: %s for widget family %s", v95, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_14();

      v22 = a10;
      goto LABEL_39;
    }

    goto LABEL_48;
  }

  v37 = a10;
  if ((v30 & 0xC000000000000001) != 0)
  {
    goto LABEL_44;
  }

  if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_46;
  }

  v39 = *(v30 + 32);
LABEL_20:
  v40 = v39;
  v37[11] = v39;

  v41 = qword_1EDEF4FE8;
  v42 = v40;
  if (v41 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v43 = v37[6];
  v44 = sub_1D8C1FA30();
  v37[12] = __swift_project_value_buffer(v44, qword_1EDEF5208);
  v45 = a9;
  v46 = v43;
  v47 = sub_1D8C1FA20();
  v48 = sub_1D8C1FF90();
  v49 = OUTLINED_FUNCTION_27(v48);
  v50 = v37[6];
  if (!v49)
  {

    goto LABEL_35;
  }

  a9 = v42;
  v51 = OUTLINED_FUNCTION_22_0();
  a11 = swift_slowAlloc();
  *v51 = 136315650;
  v37[3] = v34;
  type metadata accessor for PHAssetResourceType(0);
  v52 = sub_1D8C1FE80();
  v54 = sub_1D8C1E1E4(v52, v53, &a11);

  *(v51 + 4) = v54;
  *(v51 + 12) = 2080;
  v55 = sub_1D8C1E7DC(v45);
  v57 = v56;

  if (!v57)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    return MEMORY[0x1EEE6DE38](v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14);
  }

  v66 = v37[6];
  v67 = sub_1D8C1E1E4(v55, v57, &a11);

  *(v51 + 14) = v67;
  *(v51 + 22) = 2080;
  v68 = MEMORY[0x1DA7245C0]([v66 family]);
  v69 = sub_1D8C1FE70();
  v71 = v70;

  v72 = sub_1D8C1E1E4(v69, v71, &a11);

  *(v51 + 24) = v72;
  _os_log_impl(&dword_1D8C0A000, v47, v48, "resource type %s for asset uuid: %s for widget family %s", v51, 0x20u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_14();

LABEL_35:
  v107 = [objc_allocWithZone(MEMORY[0x1E6978708]) init];
  v37[13] = v107;
  [v107 setNetworkAccessAllowed_];
  v108 = swift_task_alloc();
  v37[14] = v108;
  *(v108 + 16) = v42;
  *(v108 + 24) = v107;
  v109 = *(MEMORY[0x1E69E8920] + 4);
  v110 = swift_task_alloc();
  v37[15] = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA80, &qword_1D8C21338);
  *v110 = v37;
  v110[1] = sub_1D8C18E60;
  v111 = v37[5];
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DE38](v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D8C18E60()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v5 = *(v2 + 120);
  *v4 = *v1;
  *(v3 + 128) = v0;

  v6 = *(v2 + 112);
  if (v0)
  {

    v7 = sub_1D8C19010;
  }

  else
  {

    v7 = sub_1D8C18FA0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D8C18FA0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  OUTLINED_FUNCTION_18();

  return v3();
}

void sub_1D8C19010()
{
  v34 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v3 = *(v0 + 72);
  v4 = v2;
  v5 = sub_1D8C1FA20();
  v6 = sub_1D8C1FF70();
  if (OUTLINED_FUNCTION_27(v6))
  {
    v7 = *(v0 + 72);
    v8 = *(v0 + 48);
    if (((*(v0 + 80) - 2) & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v9 = 117;
    }

    else
    {
      v9 = 118;
    }

    v10 = OUTLINED_FUNCTION_22_0();
    v33 = swift_slowAlloc();
    *v10 = 136315650;
    *(v0 + 16) = v9;
    type metadata accessor for PHAssetResourceType(0);
    v11 = sub_1D8C1FE80();
    sub_1D8C1E1E4(v11, v12, &v33);
    OUTLINED_FUNCTION_26();
    *(v10 + 4) = v9;
    *(v10 + 12) = 2080;
    v13 = sub_1D8C1E7DC(v7);
    v15 = v14;

    if (!v15)
    {
      __break(1u);
      return;
    }

    v31 = *(v0 + 104);
    v32 = *(v0 + 128);
    v30 = *(v0 + 88);
    v16 = *(v0 + 72);
    v17 = *(v0 + 48);
    sub_1D8C1E1E4(v13, v15, &v33);
    OUTLINED_FUNCTION_26();
    *(v10 + 14) = v13;
    *(v10 + 22) = 2080;
    v18 = MEMORY[0x1DA7245C0]([v17 family]);
    v19 = sub_1D8C1FE70();
    v21 = v20;

    v22 = sub_1D8C1E1E4(v19, v21, &v33);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_1D8C0A000, v5, v6, "Error downloading Spatial photo resource type %s for asset uuid: %s for widget family %s", v10, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v23 = *(v0 + 128);
    v24 = *(v0 + 104);
    v25 = *(v0 + 72);
    v26 = *(v0 + 48);
  }

  v27 = *(v0 + 40);
  v28 = sub_1D8C1F7B0();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
  OUTLINED_FUNCTION_18();

  v29();
}

uint64_t sub_1D8C19294(uint64_t a1)
{
  v2 = sub_1D8C1FB90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SpatialPhotoContentView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  if (qword_1EDEF4FE8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D8C1FA30();
  __swift_project_value_buffer(v12, qword_1EDEF5208);
  (*(v8 + 16))(v11, a1, v7);
  v13 = sub_1D8C1FA20();
  v14 = sub_1D8C1FF90();
  if (os_log_type_enabled(v13, v14))
  {
    v33 = v3;
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v37 = v34;
    v35 = v15;
    *v15 = 136315138;
    v16 = *(v11 + 2);
    if (v11[24] == 1)
    {
      v17 = v16;
      if (v16)
      {
LABEL_6:
        v18 = [v16 family];

        v19 = MEMORY[0x1DA7245C0](v18);
        v20 = sub_1D8C1FE70();
        v22 = v21;

LABEL_10:
        (*(v8 + 8))(v11, v7);
        v27 = sub_1D8C1E1E4(v20, v22, &v37);

        v28 = v35;
        *(v35 + 1) = v27;
        _os_log_impl(&dword_1D8C0A000, v13, v14, "SpatialPhotoContentView onDisappear for widget family %s", v28, 0xCu);
        v29 = v34;
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x1DA724BB0](v29, -1, -1);
        MEMORY[0x1DA724BB0](v28, -1, -1);

        goto LABEL_11;
      }
    }

    else
    {
      v23 = *(v11 + 2);

      sub_1D8C1FF80();
      v24 = sub_1D8C1FC50();
      v32 = v2;
      v25 = a1;
      v26 = v24;
      sub_1D8C1F9B0();

      a1 = v25;
      sub_1D8C1FB80();
      swift_getAtKeyPath();
      sub_1D8C1E020(v16, 0);
      (*(v33 + 8))(v6, v32);
      v16 = v36;
      if (v36)
      {
        goto LABEL_6;
      }
    }

    v22 = 0xE700000000000000;
    v20 = 0x6E776F6E6B6E75;
    goto LABEL_10;
  }

  (*(v8 + 8))(v11, v7);
LABEL_11:
  v37 = *(a1 + *(v7 + 48));
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAA0, &qword_1D8C21AF8);
  return sub_1D8C1FD00();
}

id sub_1D8C19680()
{
  v64[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1D8C1F7B0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  if (*(v0 + 48))
  {
    v6 = *(v0 + 40);
    v7 = objc_opt_self();

    if ([v7 systemPhotoLibraryIsObtainable])
    {
      sub_1D8C16194(0, &unk_1EDEF4D10, 0x1E6978738);

      v8 = sub_1D8C154C0();
      if (qword_1EDEF4FE8 != -1)
      {
        swift_once();
      }

      v9 = sub_1D8C1FA30();
      __swift_project_value_buffer(v9, qword_1EDEF5208);

      v10 = sub_1D8C1FA20();
      v11 = sub_1D8C1FF90();
      sub_1D8C15AB8(v5, v6, 1);
      v12 = &off_1D8C21000;
      if (os_log_type_enabled(v10, v11))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v64[0] = v14;
        *v13 = 136315138;
        v15 = sub_1D8C1E1E4(v5, v6, v64);
        sub_1D8C15AB8(v5, v6, 1);
        *(v13 + 4) = v15;
        v12 = &off_1D8C21000;
        _os_log_impl(&dword_1D8C0A000, v10, v11, "fetching asset for %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x1DA724BB0](v14, -1, -1);
        MEMORY[0x1DA724BB0](v13, -1, -1);
      }

      else
      {

        sub_1D8C15AB8(v5, v6, 1);
      }

      sub_1D8C16194(0, &qword_1ECAAAAD8, 0x1E69789A8);
      v21 = [objc_opt_self() systemPhotoLibraryURL];
      sub_1D8C1F7A0();

      v18 = sub_1D8C1A518(v4);
      v64[0] = 0;
      v22 = [v18 openAndWaitWithUpgrade:0 error:v64];
      v23 = v64[0];
      if (v22)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAE0, &qword_1D8C21B20);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1D8C217F0;
        *(v24 + 32) = v8;
        v25 = v8;
        v26 = v23;
        v27 = sub_1D8C1FFB0();

        v28 = sub_1D8C141F8(v27);
        v30 = v29;
        v32 = v31;
        v34 = v33;

        if (v28)
        {

          if ((v34 & 1) == 0)
          {

            v56 = [v18 librarySpecificFetchOptions];
            [v56 setIncludeGuestAssets_];
            v57 = objc_opt_self();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAF0, &qword_1D8C21B30);
            v58 = swift_allocObject();
            *(v58 + 16) = xmmword_1D8C212D0;
            *(v58 + 32) = v30;
            *(v58 + 40) = v32;
            v59 = sub_1D8C1FEC0();

            v60 = [v57 fetchAssetsWithLocalIdentifiers:v59 options:v56];

            v5 = [v60 firstObject];
            sub_1D8C1E978(v30, v32, 0);

            goto LABEL_24;
          }

          v35 = v25;
          sub_1D8C1688C(v30, v32, 1);
          v36 = sub_1D8C1FA20();
          v37 = sub_1D8C1FF90();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v64[0] = v40;
            *v38 = 138412546;
            *(v38 + 4) = v35;
            *v39 = v35;
            *(v38 + 12) = 2080;
            v63 = v30;
            v62 = v35;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAC0, &qword_1D8C21B18);
            v41 = sub_1D8C1FE80();
            v43 = sub_1D8C1E1E4(v41, v42, v64);

            *(v38 + 14) = v43;
            _os_log_impl(&dword_1D8C0A000, v36, v37, "Could not find asset for cloud identifier %@. Error %s", v38, 0x16u);
            sub_1D8C1EA84(v39, &qword_1ECAAAAE8, &qword_1D8C21B28);
            MEMORY[0x1DA724BB0](v39, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v40);
            MEMORY[0x1DA724BB0](v40, -1, -1);
            MEMORY[0x1DA724BB0](v38, -1, -1);
          }

          else
          {

            sub_1D8C1E978(v30, v32, 1);
          }

          sub_1D8C1E978(v30, v32, 1);
          goto LABEL_23;
        }
      }

      else
      {
        v44 = v64[0];
        v45 = sub_1D8C1F780();

        swift_willThrow();
        v46 = v45;
        v18 = sub_1D8C1FA20();
        v47 = sub_1D8C1FF90();

        if (!os_log_type_enabled(v18, v47))
        {

LABEL_23:
          v5 = 0;
          goto LABEL_24;
        }

        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v64[0] = v49;
        *v48 = *(v12 + 31);
        v63 = v45;
        v50 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAC0, &qword_1D8C21B18);
        v51 = sub_1D8C1FE80();
        v53 = sub_1D8C1E1E4(v51, v52, v64);

        *(v48 + 4) = v53;
        _os_log_impl(&dword_1D8C0A000, v18, v47, "Could not open photo library with system identifier. Error %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x1DA724BB0](v49, -1, -1);
        MEMORY[0x1DA724BB0](v48, -1, -1);
      }
    }

    else
    {
      sub_1D8C15AB8(v5, v6, 1);
      if (qword_1EDEF4FE8 != -1)
      {
        swift_once();
      }

      v17 = sub_1D8C1FA30();
      __swift_project_value_buffer(v17, qword_1EDEF5208);
      v18 = sub_1D8C1FA20();
      v19 = sub_1D8C1FF90();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1D8C0A000, v18, v19, "Photo library is not obtainable", v20, 2u);
        MEMORY[0x1DA724BB0](v20, -1, -1);
      }
    }

    goto LABEL_23;
  }

  v16 = v5;
LABEL_24:
  v54 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1D8C19E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAB8, &qword_1D8C21B10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA80, &qword_1D8C21338);
  v9 = swift_allocBox();
  v11 = v10;
  v12 = sub_1D8C1F7B0();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v19 = [objc_opt_self() defaultManager];
  v26 = sub_1D8C1E840;
  v27 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1D8C1A250;
  v25 = &block_descriptor_0;
  v13 = _Block_copy(&aBlock);

  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v26 = sub_1D8C1E860;
  v27 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1D8C1A4AC;
  v25 = &block_descriptor_67;
  v16 = _Block_copy(&aBlock);

  v17 = v19;
  [v19 requestFileURLForAssetResource:v20 options:v21 urlReceivedHandler:v13 completionHandler:v16];
  _Block_release(v16);
  _Block_release(v13);
}

uint64_t sub_1D8C1A150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA80, &qword_1D8C21338);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = swift_projectBox();
  v7 = sub_1D8C1F7B0();
  (*(*(v7 - 8) + 16))(v5, a1, v7);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
  swift_beginAccess();
  return sub_1D8C1E908(v5, v6);
}

uint64_t sub_1D8C1A250(uint64_t a1)
{
  v2 = sub_1D8C1F7B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1D8C1F7A0();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D8C1A344(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA80, &qword_1D8C21338);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = swift_projectBox();
  if (a1 && (v10 = a1, v7 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAC0, &qword_1D8C21B18), sub_1D8C16194(0, &unk_1ECAAAAC8, 0x1E696ABC0), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAB8, &qword_1D8C21B10);
    return sub_1D8C1FF00();
  }

  else
  {
    swift_beginAccess();
    sub_1D8C15C10(v6, v5, &qword_1ECAAAA80, &qword_1D8C21338);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAB8, &qword_1D8C21B10);
    return sub_1D8C1FF10();
  }
}

void sub_1D8C1A4AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_1D8C1A518(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1D8C1F790();
  v4 = [v2 initWithPhotoLibraryURL_];

  v5 = sub_1D8C1F7B0();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t SpatialPhotoWidgetLiveRenderView.body.getter()
{
  v1 = v0;
  v2 = sub_1D8C1F960();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = sub_1D8C1F7B0();
  v12 = OUTLINED_FUNCTION_3(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  (*(v17 + 16))(v16 - v15, v1);
  (*(v5 + 104))(v10, *MEMORY[0x1E69C1C10], v2);
  type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView(0);
  sub_1D8C1EA3C(&qword_1ECAAA930, type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView);
  return sub_1D8C1F880();
}

uint64_t sub_1D8C1A768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  v4 = type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView(0);
  v5 = v4[6];
  type metadata accessor for Renderer(0);

  sub_1D8C1FA40();
  v6 = v4[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA50, &qword_1D8C21948);
  sub_1D8C1FCE0();
  *(a2 + v6) = v9;
  v7 = a2 + v4[8];
  result = swift_getKeyPath();
  *v7 = result;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_1D8C1A890()
{
  v1 = sub_1D8C1FB90();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView(0);
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1D8C1EAD8(v0, &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  sub_1D8C1EB3C(&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView);
  v26 = sub_1D8C1EB9C;
  v27 = v17;
  v18 = *v0;
  if (*(v0 + 8) != 1)
  {
    v19 = *v0;

    sub_1D8C1FF80();
    v20 = sub_1D8C1FC50();
    OUTLINED_FUNCTION_28();

    sub_1D8C1FB80();
    swift_getAtKeyPath();
    sub_1D8C0D2B8(v18, 0);
    (*(v4 + 8))(v9, v1);
    LOBYTE(v18) = v24;
  }

  v25 = v18 & 1;
  swift_allocObject();
  v21 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAAA18, &qword_1D8C21930);
  sub_1D8C1FA50();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAB20, &qword_1D8C21B48);
  OUTLINED_FUNCTION_11_1();
  sub_1D8C137D4(v22, &qword_1ECAAAB20, &qword_1D8C21B48);
  sub_1D8C1FCC0();
}

double sub_1D8C1AB84@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView(0);
  v5 = v4 - 8;
  v25 = *(v4 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8C1FA90();
  v9 = v8;
  v11 = v10;
  v12 = *(v5 + 32);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAAA18, &qword_1D8C21930);
  v27 = v12;
  sub_1D8C1FA50();
  v28 = v29;
  v13 = *(a1 + 16);
  v23 = a1;
  v24 = sub_1D8C1F990();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  sub_1D8C1FA50();
  swift_weakInit();

  sub_1D8C1EAD8(a1, v7);
  v16 = *(v25 + 80);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v14;
  v17[4] = v9;
  v17[5] = v11;
  sub_1D8C1EB3C(v7, v17 + ((v16 + 48) & ~v16), type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView);
  LODWORD(v25) = v24 & 1;
  v18 = swift_allocObject();
  swift_weakInit();
  sub_1D8C1EAD8(v23, v7);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  sub_1D8C1EB3C(v7, v19 + ((v16 + 24) & ~v16), type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView);
  v20 = swift_allocObject();
  sub_1D8C1FA50();
  swift_weakInit();

  *a2 = v28;
  *(a2 + 8) = v25;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = sub_1D8C1EC20;
  *(a2 + 40) = v17;
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = sub_1D8C1EC84;
  *(a2 + 88) = v19;
  *(a2 + 96) = sub_1D8C1B448;
  *(a2 + 104) = 0;
  *(a2 + 112) = sub_1D8C1ECE4;
  *(a2 + 120) = v20;
  return result;
}

uint64_t sub_1D8C1AE8C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D8C1F8D0();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8C1FB90();
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF4FE8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D8C1FA30();
  __swift_project_value_buffer(v16, qword_1EDEF5208);
  v17 = sub_1D8C1FA20();
  v18 = sub_1D8C1FF90();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D8C0A000, v17, v18, "Begin Widget Rendering", v19, 2u);
    MEMORY[0x1DA724BB0](v19, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D8C1C818(a1, a2);
      v21 = type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView(0);
      v22 = *(v21 + 32);
      v32 = a5;
      v23 = a5 + v22;
      v24 = *v23;
      if (*(v23 + 8))
      {
        v25 = *v23;
      }

      else
      {

        sub_1D8C1FF80();
        v26 = sub_1D8C1FC50();
        sub_1D8C1F9B0();

        sub_1D8C1FB80();
        swift_getAtKeyPath();
        sub_1D8C0D2B8(v24, 0);
        (*(v33 + 8))(v15, v12);
        v25 = v36;
      }

      sub_1D8C1C908(v25);
      sub_1D8C1EA3C(&qword_1ECAAAB38, type metadata accessor for Renderer);

      sub_1D8C1F980();
      v27 = PFPosterDeviceSupportsSpatialPhotoWidgetOptimizations();
      v28 = MEMORY[0x1E69C1BE8];
      if (!v27)
      {
        v28 = MEMORY[0x1E69C1BE0];
      }

      (*(v34 + 104))(v11, *v28, v8);
      sub_1D8C1F970();

      v29 = sub_1D8C1F940();

      v30 = (v32 + *(v21 + 28));
      v31 = *(v30 + 1);
      v36 = *v30;
      v37 = v31;
      v35 = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAB30, &qword_1D8C21B50);
      sub_1D8C1FD00();
    }
  }

  return result;
}

uint64_t sub_1D8C1B2D4(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEF4FE8 != -1)
  {
    swift_once();
  }

  v3 = sub_1D8C1FA30();
  __swift_project_value_buffer(v3, qword_1EDEF5208);
  v4 = sub_1D8C1FA20();
  v5 = sub_1D8C1FF90();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D8C0A000, v4, v5, "End Widget Rendering", v6, 2u);
    MEMORY[0x1DA724BB0](v6, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D8C1F980();
  }

  v9 = *(a2 + *(type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView(0) + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAB30, &qword_1D8C21B50);
  result = sub_1D8C1FCF0();
  if (v8)
  {
    sub_1D8C1F930();
  }

  return result;
}

uint64_t sub_1D8C1B448@<X0>(void *a1@<X8>)
{
  result = sub_1D8C1FA90();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D8C1B474(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8C1C818(v1, v2);
  }

  return result;
}

uint64_t sub_1D8C1B4E0(uint64_t a1, char *a2)
{
  v2 = *a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8C1BDE4(v2);
  }

  return result;
}

double sub_1D8C1B544@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_1D8C1FBA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  (*(v11 + 104))(v14, *MEMORY[0x1E697F3A0], v10);

  sub_1D8C1FD10();
  sub_1D8C1FD40();
  sub_1D8C1FA80();
  v17 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAB48, &qword_1D8C21C60) + 36));
  v18 = v20[1];
  *v17 = v20[0];
  v17[1] = v18;
  result = *&v21;
  v17[2] = v21;
  return result;
}

uint64_t sub_1D8C1B70C(uint64_t *a1, uint64_t a2, double a3, double a4, uint64_t a5, int a6)
{
  LODWORD(v6) = a6;
  v33 = a1;
  v34 = a2;
  v9 = sub_1D8C1F9E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1D8C1FA00();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8C1F890();
  sub_1D8C1F9D0();
  v19 = sub_1D8C1F9F0();
  v20 = sub_1D8C1FFE0();
  if (sub_1D8C1FFF0())
  {
    v21 = swift_slowAlloc();
    v32 = v6;
    v6 = v21;
    *v21 = 0;
    v22 = sub_1D8C1F9C0();
    _os_signpost_emit_with_name_impl(&dword_1D8C0A000, v19, v20, v22, "SpatialPhotoWidgetTimelineView", "Canvas Closure", v6, 2u);
    v23 = v6;
    LOBYTE(v6) = v32;
    MEMORY[0x1DA724BB0](v23, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  (*(v15 + 8))(v18, v14);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    v26 = sub_1D8C1C97C();
    if (v6)
    {
      sub_1D8C1FAD0();
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = 1;
      aBlock[4] = sub_1D8C1EE3C;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8C1BC50;
      aBlock[3] = &block_descriptor_111;
      v29 = _Block_copy(aBlock);

      RBDrawingStateDrawMetal();
      _Block_release(v29);
    }

    else
    {
      v30 = *v33;
      MEMORY[0x1EEE9AC00](v26);
      *&v31[-32] = a3;
      *&v31[-24] = a4;
      *&v31[-16] = v25;
      sub_1D8C1FAE0();
    }
  }

  return result;
}

void sub_1D8C1BAAC()
{
  sub_1D8C1FAD0();
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;
  v3[4] = sub_1D8C1EF28;
  v3[5] = v1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1D8C1BC50;
  v3[3] = &block_descriptor_119;
  v2 = _Block_copy(v3);

  RBDrawingStateDrawMetal();
  _Block_release(v2);
}

uint64_t sub_1D8C1BBDC(void *a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8C1BDF4(a1, a3 & 1);
  }

  return result;
}

void sub_1D8C1BC50(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1D8C1BD14()
{
  result = sub_1D8C1F7B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8C1BD80(uint64_t result)
{
  if (*(v1 + 16) != (result & 1))
  {
    v2 = *(v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_changeTracker);

    sub_1D8C1CB9C();
  }

  return result;
}

uint64_t sub_1D8C1BDE4(char a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return sub_1D8C1BD80(v2);
}

void sub_1D8C1BDF4(void *a1, int a2)
{
  v26 = a2;
  v4 = sub_1D8C1F8F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8C1F8A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = v10;
    v23 = v9;
    v24 = *(v14 + 8);
    v25 = v4;
    [a1 encoder];
    swift_getObjectType();
    sub_1D8C1EA3C(&qword_1ECAAAB38, type metadata accessor for Renderer);
    v15 = [a1 descriptor];
    v16 = [a1 commandBuffer];
    swift_unknownObjectRetain();
    sub_1D8C1F8E0();
    sub_1D8C1F910();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v5 + 8))(v8, v25);
    (*(v22 + 8))(v13, v23);
  }

  else
  {
    if (qword_1EDEF4FE8 != -1)
    {
      swift_once();
    }

    v17 = sub_1D8C1FA30();
    __swift_project_value_buffer(v17, qword_1EDEF5208);
    v18 = sub_1D8C1FA20();
    v19 = sub_1D8C1FF70();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D8C0A000, v18, v19, "Unable to draw, nil delegate", v20, 2u);
      MEMORY[0x1DA724BB0](v20, -1, -1);
    }
  }
}

void sub_1D8C1C2EC()
{
  v1 = sub_1D8C1F8C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_depthBufferMode;
  swift_beginAccess();
  (*(v2 + 16))(v8, v0 + v9, v1);
  (*(v2 + 104))(v6, *MEMORY[0x1E69C1BC8], v1);
  v10 = sub_1D8C1F8B0();
  v11 = *(v2 + 8);
  v11(v6, v1);
  v11(v8, v1);
  if (v10)
  {
    if (qword_1EDEF4FE8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D8C1FA30();
    __swift_project_value_buffer(v12, qword_1EDEF5208);
    v13 = sub_1D8C1FA20();
    v14 = sub_1D8C1FF70();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D8C0A000, v13, v14, "Depth buffer mode required, this will result in spatial widget visual artifacts.", v15, 2u);
      MEMORY[0x1DA724BB0](v15, -1, -1);
    }
  }
}

uint64_t sub_1D8C1C510@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_depthBufferMode;
  swift_beginAccess();
  v4 = sub_1D8C1F8C0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D8C1C598(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_depthBufferMode;
  swift_beginAccess();
  v4 = sub_1D8C1F8C0();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_1D8C1C2EC();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_1D8C1C664()
{
  v1 = *(v0 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_screenScale);
  v2 = *(v0 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_size) * v1;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = v1 * *(v0 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_size + 8);
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 < 9.22337204e18)
  {
    return sub_1D8C1F950();
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1D8C1C740(double a1, double a2)
{
  if (*(v2 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_size) != a1 || *(v2 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_size + 8) != a2)
  {
    v4 = v2 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      swift_getObjectType();
      sub_1D8C1EA3C(&qword_1ECAAAB38, type metadata accessor for Renderer);
      sub_1D8C1F900();
      swift_unknownObjectRelease();
    }
  }
}

void sub_1D8C1C818(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_size);
  v4 = *(v2 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_size);
  v5 = *(v2 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_size + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_1D8C1C740(v4, v5);
}

void sub_1D8C1C838(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_screenScale) != a1)
  {
    v2 = v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      swift_getObjectType();
      sub_1D8C1EA3C(&qword_1ECAAAB38, type metadata accessor for Renderer);
      sub_1D8C1F900();
      swift_unknownObjectRelease();
    }
  }
}

void sub_1D8C1C908(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_screenScale);
  *(v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_screenScale) = a1;
  sub_1D8C1C838(v2);
}

uint64_t sub_1D8C1C920()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_changeTracker);

    sub_1D8C1CB9C();
  }

  return result;
}

uint64_t sub_1D8C1C97C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_changeTracker);

  sub_1D8C1CA58();

  v3 = v1 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    swift_getObjectType();
    sub_1D8C1EA3C(&qword_1ECAAAB38, type metadata accessor for Renderer);
    sub_1D8C1F920();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D8C1CA58()
{
  swift_getKeyPath();
  sub_1D8C1EA3C(&qword_1ECAAAB40, type metadata accessor for Renderer.ChangeTracker);
  sub_1D8C1F7F0();

  return *(v0 + 16);
}

uint64_t sub_1D8C1CAF8(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1D8C1CCB8();
  }

  return result;
}

uint64_t sub_1D8C1CB9C()
{
  swift_getKeyPath();
  sub_1D8C1EA3C(&qword_1ECAAAB40, type metadata accessor for Renderer.ChangeTracker);
  sub_1D8C1F7F0();

  swift_getKeyPath();
  sub_1D8C1F810();

  v2 = *(v0 + 16);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v4;
    swift_getKeyPath();
    sub_1D8C1F800();
  }

  return result;
}

uint64_t sub_1D8C1CD70()
{
  v1 = OBJC_IVAR____TtCC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer13ChangeTracker___observationRegistrar;
  v2 = sub_1D8C1F830();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1D8C1CE0C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_optimizationMode;
  v3 = sub_1D8C1F8D0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_depthBufferMode;
  v5 = sub_1D8C1F8C0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1D8C1ED2C(v0 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_delegate);
  v6 = *(v0 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_changeTracker);

  return v0;
}

uint64_t sub_1D8C1CED4()
{
  v0 = sub_1D8C1CE0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D8C1CF50()
{
  result = sub_1D8C1F8D0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1D8C1F8C0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D8C1D084()
{
  result = sub_1D8C1F830();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D8C1D14C()
{
  sub_1D8C1D2BC(319, &qword_1EDEF5118);
  if (v0 <= 0x3F)
  {
    sub_1D8C1F9A0();
    if (v1 <= 0x3F)
    {
      sub_1D8C1D264();
      if (v2 <= 0x3F)
      {
        sub_1D8C1DA0C(319, &qword_1ECAAAA48, &qword_1ECAAAA50, &qword_1D8C21948, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1D8C1D2BC(319, &qword_1ECAAAA58);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D8C1D264()
{
  if (!qword_1ECAAAA40)
  {
    type metadata accessor for Renderer(255);
    v0 = sub_1D8C1FA60();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAAAA40);
    }
  }
}

void sub_1D8C1D2BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D8C1FA70();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D8C1D310(uint64_t a1)
{
  sub_1D8C1D2BC(319, &qword_1EDEF5118);
  if (v2 <= 0x3F)
  {
    sub_1D8C1DA0C(319, qword_1EDEF4D68, &unk_1ECAAAA60, qword_1D8C21968, MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        sub_1D8C1DA0C(319, &qword_1EDEF4D48, &unk_1ECAAAA70, &qword_1D8C213B0, MEMORY[0x1E6981790]);
        if (v6 <= 0x3F)
        {
          sub_1D8C1DA0C(319, &unk_1EDEF4D38, &qword_1ECAAAA80, &qword_1D8C21338, MEMORY[0x1E6981790]);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D8C1D47C(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1D8C1F7B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  if (v10)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v8;
  v17 = *(v6 + 64) + 7;
  v18 = *(v9 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 23;
  if (v13 < a2)
  {
    v21 = ((v15 + *(*(v8 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v20 + ((v17 + ((v14 + 49) & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & v19) + 8;
    v22 = v21 & 0xFFFFFFF8;
    if ((v21 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = a2 - v13 + 1;
    }

    result = 4;
    if (v23 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v23 < 0x100)
    {
      v25 = 1;
    }

    if (v23 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    switch(v26)
    {
      case 1:
        v27 = *(a1 + v21);
        if (!v27)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      case 2:
        v27 = *(a1 + v21);
        if (!v27)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      case 3:
        __break(1u);
        return result;
      case 4:
        v27 = *(a1 + v21);
        if (!v27)
        {
          goto LABEL_33;
        }

LABEL_30:
        v28 = v27 - 1;
        if (v22)
        {
          v28 = 0;
          v29 = *a1;
        }

        else
        {
          v29 = 0;
        }

        v33 = v13 + (v29 | v28);
        break;
      default:
        goto LABEL_33;
    }

    return (v33 + 1);
  }

LABEL_33:
  v30 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v14 + 49) & ~v14;
  if (v7 == v13)
  {

    return __swift_getEnumTagSinglePayload(v30, v7, v5);
  }

  else
  {
    v31 = ((v17 + v30) & 0xFFFFFFFFFFFFFFF8);
    if (v12 <= 0x7FFFFFFE)
    {
      v32 = *v31;
      if (*v31 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      v33 = v32 - 1;
      if (v33 < 0)
      {
        v33 = -1;
      }

      return (v33 + 1);
    }

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v31 + v20) & v19, v10, v16);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1D8C1D708(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1D8C1F7B0();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  if (v9 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  v16 = *(v8 + 80);
  v17 = *(v8 + 64) + 7;
  v18 = *(v12 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 23;
  v21 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v21;
  }

  v22 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v20 + ((v17 + ((v16 + 49) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & v19) + 8;
  if (v15 < a3)
  {
    if (((v21 + 7) & 0xFFFFFFF8) + ((v20 + ((v17 + ((v16 + 49) & ~v16)) & 0xFFFFFFF8)) & v19) == -8)
    {
      v23 = a3 - v15 + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v11 = v24;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 <= v15)
  {
    switch(v11)
    {
      case 1:
        *(a1 + v22) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 2:
        *(a1 + v22) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 3:
LABEL_51:
        __break(1u);
        return;
      case 4:
        *(a1 + v22) = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (!a2)
        {
          return;
        }

LABEL_37:
        v27 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v16 + 49) & ~v16;
        if (v9 >= v14)
        {
          v29 = a2;
          v13 = v9;
          v10 = v7;
        }

        else
        {
          v28 = ((v17 + v27) & 0xFFFFFFFFFFFFFFF8);
          if (v15 <= 0x7FFFFFFE)
          {
            *v28 = a2;
            return;
          }

          v30 = ((v28 + v20) & v19);
          if (v14 < a2)
          {
            v31 = (v21 + 7) & 0xFFFFFFF8;
            if (v31 != -8)
            {
              v32 = ~v14 + a2;
              bzero(((v28 + v20) & v19), (v31 + 8));
              *v30 = v32;
            }

            return;
          }

          v29 = (a2 + 1);
          v27 = (v28 + v20) & v19;
        }

        __swift_storeEnumTagSinglePayload(v27, v29, v13, v10);
        break;
    }
  }

  else
  {
    if (((v21 + 7) & 0xFFFFFFF8) + ((v20 + ((v17 + ((v16 + 49) & ~v16)) & 0xFFFFFFF8)) & v19) == -8)
    {
      v25 = a2 - v15;
    }

    else
    {
      v25 = 1;
    }

    if (((v21 + 7) & 0xFFFFFFF8) + ((v20 + ((v17 + ((v16 + 49) & ~v16)) & 0xFFFFFFF8)) & v19) != -8)
    {
      v26 = ~v15 + a2;
      bzero(a1, v22);
      *a1 = v26;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v22) = v25;
        break;
      case 2:
        *(a1 + v22) = v25;
        break;
      case 3:
        goto LABEL_51;
      case 4:
        *(a1 + v22) = v25;
        break;
      default:
        return;
    }
  }
}

void sub_1D8C1DA0C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D8C1DA70()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = MTLCreateSystemDefaultDevice();
  v1 = OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_optimizationMode;
  v2 = *MEMORY[0x1E69C1BE8];
  v3 = sub_1D8C1F8D0();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_depthBufferMode;
  v5 = *MEMORY[0x1E69C1BC0];
  v6 = sub_1D8C1F8C0();
  (*(*(v6 - 8) + 104))(v0 + v4, v5, v6);
  *(v0 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_size) = vdupq_n_s64(0x4069000000000000uLL);
  *(v0 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_screenScale) = 0x4000000000000000;
  v7 = OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_changeTracker;
  v8 = type metadata accessor for Renderer.ChangeTracker(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  sub_1D8C1F820();
  *(v0 + v7) = v11;
  return v0;
}

uint64_t sub_1D8C1DBC8()
{
  v1 = v0 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1D8C1DC18(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D8C1DC84(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D8C1DD10;
}

void sub_1D8C1DD10(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1D8C1DD98@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_optimizationMode;
  swift_beginAccess();
  v4 = sub_1D8C1F8D0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D8C1DE20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19_PhotosUI_WidgetKitP33_34E7D226BC7973C529FC81053AA8D95C8Renderer_optimizationMode;
  swift_beginAccess();
  v4 = sub_1D8C1F8D0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void (*sub_1D8C1DF1C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D8C1DF80;
}

void sub_1D8C1DF80(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_1D8C1C2EC();
  }
}

void sub_1D8C1E020(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D8C1E02C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = type metadata accessor for SpatialPhotoContentView();
  OUTLINED_FUNCTION_15_0(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1D8C139A8;

  return sub_1D8C17BD8(v7, v8, v0 + v6);
}

uint64_t sub_1D8C1E120()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for SpatialPhotoContentView();
  OUTLINED_FUNCTION_15_0(v3);
  v5 = v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_1D8C19294(v5);
}

uint64_t sub_1D8C1E1A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Renderer(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1D8C1DA70();
  *a1 = result;
  return result;
}

uint64_t sub_1D8C1E1E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D8C1E2A8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1D8C1E754(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1D8C1E2A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D8C1E3A8(a5, a6);
    *a1 = v9;
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
    result = sub_1D8C20070();
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

uint64_t sub_1D8C1E3A8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D8C1E3F4(a1, a2);
  sub_1D8C1E50C(&unk_1F544DAB8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D8C1E3F4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1D8C1FEB0())
  {
    result = sub_1D8C1E5F0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1D8C20040();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1D8C20070();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D8C1E50C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1D8C1E660(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D8C1E5F0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAAAA8, &qword_1D8C21B00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1D8C1E660(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAAAA8, &qword_1D8C21B00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1D8C1E754(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D8C1E7B0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8C1E7DC(void *a1)
{
  v1 = [a1 uuid];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8C1FE70();

  return v3;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D8C1E860(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAAB8, &qword_1D8C21B10) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8C1A344(a1);
}

uint64_t sub_1D8C1E908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAAA80, &qword_1D8C21338);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D8C1E978(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1D8C1E988()
{
  result = qword_1ECAAAB00;
  if (!qword_1ECAAAB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAAA88, &qword_1D8C21AD0);
    sub_1D8C1EA3C(&qword_1EDEF5108, type metadata accessor for SpatialPhotoWidgetLiveRenderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAAB00);
  }

  return result;
}

uint64_t sub_1D8C1EA3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8C1EA84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1D8C1EAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8C1EB3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

double sub_1D8C1EB9C@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView(0);
  OUTLINED_FUNCTION_15_0(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1D8C1AB84(v5, a1);
}

uint64_t sub_1D8C1EC20()
{
  v1 = type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView(0);
  OUTLINED_FUNCTION_15_0(v1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  return sub_1D8C1AE8C(v5, v6, v3, v4, v7);
}

uint64_t sub_1D8C1EC84()
{
  v1 = type metadata accessor for SpatialPhotoWidgetLiveRenderView.RenderView(0);
  OUTLINED_FUNCTION_15_0(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1D8C1B2D4(v3, v4);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8C1ED60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8C1EDA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8C1EE0C(uint64_t *a1, double a2, double a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  return sub_1D8C1B70C(a1, *(v3 + 16), a2, a3, *(v3 + 24), *(v3 + 32));
}

double sub_1D8C1EE1C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1D8C1BAAC();
  return result;
}

unint64_t sub_1D8C1EE48()
{
  result = qword_1ECAAAB50;
  if (!qword_1ECAAAB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAAB48, &qword_1D8C21C60);
    sub_1D8C137D4(&qword_1ECAAAB58, &unk_1ECAAAB60, &qword_1D8C21C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAAB50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_19_0()
{
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
}

uint64_t OUTLINED_FUNCTION_20_0()
{
  v3 = *(v1 + *(v0 + 36));
}

void OUTLINED_FUNCTION_21_0(void *a1)
{
  sub_1D8C1E020(a1, *(v3 + 24));
  sub_1D8C15AB8(*(v3 + 32), *(v3 + 40), *(v3 + 48));
  v4 = *(v1 + 52);
  v5 = *(v2 - 8);
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_25_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_26()
{
}

BOOL OUTLINED_FUNCTION_27(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_28()
{

  return sub_1D8C1F9B0();
}

uint64_t sub_1D8C1F198()
{
  v0 = sub_1D8C1FA30();
  __swift_allocate_value_buffer(v0, qword_1EDEF5208);
  __swift_project_value_buffer(v0, qword_1EDEF5208);
  return sub_1D8C1FA10();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ECAAAFB8 == -1)
  {
    if (qword_1ECAAAFC0)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_1ECAAAFC0)
    {
      goto LABEL_3;
    }
  }

  if (qword_1ECAAAFB0 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_1ECAAAFA4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_1ECAAAFA4 >= a3)
      {
        result = dword_1ECAAAFA8 >= a4;
        v12 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = qword_1ECAAAFC0;
  if (qword_1ECAAAFC0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1ECAAAFC0 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1DA724700](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_1ECAAAFA4, &dword_1ECAAAFA8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}