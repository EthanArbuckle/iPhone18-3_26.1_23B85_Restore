uint64_t sub_15C0D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_15CB48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_15C0F8(uint64_t a1)
{
  v2 = sub_15C354();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15C134(uint64_t a1)
{
  v2 = sub_15C354();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HighlightResource.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4368);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_15C354();
  sub_3EEA14();
  v12 = 0;
  sub_3EE734();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    sub_10F450();
    sub_3EE764();
    type metadata accessor for HighlightResource();
    v10[14] = 2;
    sub_3E5DC4();
    sub_15C6CC(&qword_4F0118);
    sub_3EE724();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_15C354()
{
  result = qword_4F4370;
  if (!qword_4F4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4370);
  }

  return result;
}

uint64_t HighlightResource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4378);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for HighlightResource();
  __chkstk_darwin(v10);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_15C354();
  sub_3EE9F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = v10;
  v19 = v6;
  v13 = v21;
  v26 = 0;
  v14 = v12;
  *v12 = sub_3EE694();
  v12[1] = v15;
  v25 = 1;
  sub_10F610();
  sub_3EE6C4();
  v12[2] = v23;
  sub_3E5DC4();
  v24 = 2;
  sub_15C6CC(&qword_4F0178);
  v16 = v19;
  sub_3EE684();
  (*(v13 + 8))(v9, v22);
  sub_1893C(v16, v14 + *(v18 + 24));
  sub_15C710(v14, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_15C774(v14);
}

uint64_t sub_15C6CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_3E5DC4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_15C710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightResource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15C774(uint64_t a1)
{
  v2 = type metadata accessor for HighlightResource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15C82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_15C8FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_15C9AC()
{
  sub_1F630();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_15CA44()
{
  result = qword_4F4418;
  if (!qword_4F4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4418);
  }

  return result;
}

unint64_t sub_15CA9C()
{
  result = qword_4F4420;
  if (!qword_4F4420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4420);
  }

  return result;
}

unint64_t sub_15CAF4()
{
  result = qword_4F4428;
  if (!qword_4F4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4428);
  }

  return result;
}

uint64_t sub_15CB48(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B1C70;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t ManageCategoriesPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ManageCategoriesPage() + 20);
  v4 = sub_3EC164();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ManageCategoriesPage()
{
  result = qword_4F44D8;
  if (!qword_4F44D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ManageCategoriesPage.init(sections:pageMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for ManageCategoriesPage() + 20);
  v6 = sub_3EC164();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_15CCE0()
{
  if (*v0)
  {
    return 0x7274654D65676170;
  }

  else
  {
    return 0x736E6F6974636573;
  }
}

uint64_t sub_15CD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000;
  if (v6 || (sub_3EE804() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_3EE804();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_15CE04(uint64_t a1)
{
  v2 = sub_15D10C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_15CE40(uint64_t a1)
{
  v2 = sub_15D10C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_15CE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_3EC164();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ManageCategoriesPage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4430);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_15D10C();
  sub_3EEA14();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4440);
  sub_15D4DC(&qword_4F4448, &qword_4F4450);
  sub_3EE764();
  if (!v2)
  {
    type metadata accessor for ManageCategoriesPage();
    v10[6] = 1;
    sub_3EC164();
    sub_15D578(&qword_4F4458, &type metadata accessor for PageMetrics);
    sub_3EE764();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_15D10C()
{
  result = qword_4F4438;
  if (!qword_4F4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4438);
  }

  return result;
}

uint64_t ManageCategoriesPage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_3EC164();
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4460);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ManageCategoriesPage();
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_15D10C();
  sub_3EE9F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = a1;
  v11 = v10;
  v13 = v24;
  v12 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4440);
  v28 = 0;
  sub_15D4DC(&qword_4F4468, &qword_4F4470);
  v14 = v26;
  sub_3EE6C4();
  v19 = v11;
  v20 = v29;
  *v11 = v29;
  v27 = 1;
  sub_15D578(&qword_4F4478, &type metadata accessor for PageMetrics);
  sub_3EE6C4();
  (*(v13 + 8))(v7, v14);
  v15 = *(v8 + 20);
  v16 = v19;
  (*(v22 + 32))(&v19[v15], v5, v12);
  sub_15D5C0(v16, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return sub_15D624(v16);
}

uint64_t sub_15D4DC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F4440);
    sub_15D578(a2, type metadata accessor for CategorySection);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_15D578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_15D5C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageCategoriesPage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15D624(uint64_t a1)
{
  v2 = type metadata accessor for ManageCategoriesPage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15D6DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_3EC164();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_15D79C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_3EC164();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_15D840()
{
  sub_15D8C4();
  if (v0 <= 0x3F)
  {
    sub_3EC164();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_15D8C4()
{
  if (!qword_4F44E8)
  {
    type metadata accessor for CategorySection();
    v0 = sub_3ED674();
    if (!v1)
    {
      atomic_store(v0, &qword_4F44E8);
    }
  }
}

unint64_t sub_15D930()
{
  result = qword_4F4518;
  if (!qword_4F4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4518);
  }

  return result;
}

unint64_t sub_15D988()
{
  result = qword_4F4520;
  if (!qword_4F4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4520);
  }

  return result;
}

unint64_t sub_15D9E0()
{
  result = qword_4F4528;
  if (!qword_4F4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4528);
  }

  return result;
}

unint64_t PlayButtonState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_15DA44()
{
  v1 = *v0;
  sub_3EE954();
  sub_3EE964(v1);
  return sub_3EE9A4();
}

Swift::Int sub_15DAB8()
{
  v1 = *v0;
  sub_3EE954();
  sub_3EE964(v1);
  return sub_3EE9A4();
}

uint64_t *sub_15DAFC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t PlayButtonState.metricsActionType.getter(uint64_t a1)
{
  if (a1 == 2)
  {

    return static MetricsActionType.openDocument.getter();
  }

  if (a1 == 1)
  {

    return static MetricsActionType.pause.getter();
  }

  if (a1)
  {
    sub_3EE854();
    __break(1u);
    return static MetricsActionType.openDocument.getter();
  }

  return sub_3E8474();
}

unint64_t sub_15DB94()
{
  result = qword_4F4530;
  if (!qword_4F4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4530);
  }

  return result;
}

uint64_t sub_15E288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TranscriptRequestInformation.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v56 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4580);
  v5 = __chkstk_darwin(v4 - 8);
  v55 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = v46 - v7;
  v8 = sub_3EBDF4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v46 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v46 - v17;
  __chkstk_darwin(v16);
  v20 = v46 - v19;
  v21 = 0xED000064496D6164;
  sub_3EBE04();
  v54 = sub_3EBDC4();
  v23 = v22;
  v24 = v20;
  v25 = *(v9 + 8);
  v25(v24, v8);
  if (!v23)
  {
    v37 = 0x4165646F73697065;
    v58 = v25;
    v31 = a1;
LABEL_12:
    v38 = sub_3ECEE4();
    sub_15E950(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v40 = v39;
    v41 = sub_3E9354();
    *v40 = v37;
    v40[1] = v21;
    v40[2] = v41;
    (*(*(v38 - 8) + 104))(v40, enum case for JSONError.missingProperty(_:), v38);
    swift_willThrow();
    v42 = sub_3EBF94();
    (*(*(v42 - 8) + 8))(v63, v42);
    return v58(v31, v8);
  }

  v49 = v12;
  v53 = v23;
  v21 = 0xEE00726569666974;
  sub_3EBE04();
  v51 = sub_3EBDC4();
  v52 = v26;
  v25(v18, v8);
  sub_3EBE04();
  v27 = sub_3EBDC4();
  v29 = v28;
  v25(v15, v8);
  v30 = v25;
  v31 = a1;
  v50 = v29;
  if (!v29)
  {
    v37 = 0x6E6564496C6D7474;
    v58 = v30;

    goto LABEL_12;
  }

  v48 = v27;
  v32 = v49;
  sub_3EBE04();
  sub_3EBDD4();
  v30(v32, v8);
  if (v62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4590);
    v33 = swift_dynamicCast();
    v34 = v59;
    if (!v33)
    {
      v34 = 0;
    }

    v49 = v34;
    if (v33)
    {
      v35 = v60;
    }

    else
    {
      v35 = 0;
    }

    v47 = v35;
    v36 = v33 ^ 1;
  }

  else
  {
    sub_FCF8(v61, &unk_501090);
    v49 = 0;
    v47 = 0;
    v36 = 1;
  }

  v46[3] = v36;
  sub_3EBE04();
  sub_3EBDC4();
  v30(v18, v8);
  sub_3EBE04();
  sub_3E7D54();
  sub_15E950(&qword_4F4588, &type metadata accessor for MetadataSource);
  v44 = v57;
  sub_3EBCF4();
  v30(v18, v8);
  sub_15E998(v44, v55);
  sub_3E9324();
  v45 = sub_3EBF94();
  (*(*(v45 - 8) + 8))(v63, v45);
  v30(a1, v8);
  return sub_FCF8(v44, &qword_4F4580);
}

uint64_t sub_15E950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_15E998(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EpisodeUpsellBannerModel.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_impressionMetrics;
  swift_beginAccess();
  return sub_7EA24(v1 + v3, a1);
}

uint64_t EpisodeUpsellBannerModel.impressionMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_impressionMetrics;
  swift_beginAccess();
  sub_13E434(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t EpisodeUpsellBannerModel.shelfUniqueId.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_shelfUniqueId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t EpisodeUpsellBannerModel.shelfUniqueId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_shelfUniqueId);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t EpisodeUpsellBannerModel.subscriptionTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_subscriptionTitle);

  return v1;
}

uint64_t EpisodeUpsellBannerModel.showSpecificUpsellCopy.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_showSpecificUpsellCopy);

  return v1;
}

uint64_t EpisodeUpsellBannerModel.genericUpsellCopy.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_genericUpsellCopy);

  return v1;
}

uint64_t EpisodeUpsellBannerModel.macUpsellSubtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_macUpsellSubtitle);

  return v1;
}

uint64_t EpisodeUpsellBannerModel.channelAdamId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_channelAdamId);

  return v1;
}

uint64_t EpisodeUpsellBannerModel.eligibilityType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_eligibilityType);

  return v1;
}

uint64_t EpisodeUpsellBannerModel.artworkURL.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_artworkURL);

  return v1;
}

uint64_t EpisodeUpsellBannerModel.dismissBannerAction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_dismissBannerAction;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t EpisodeUpsellBannerModel.__allocating_init(subscriptionTitle:showSpecificUpsellCopy:genericUpsellCopy:macUpsellSubtitle:channelAdamId:eligibilityType:artworkURL:primaryAction:dismissBannerAction:impressionMetrics:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v23 = a16;
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_impressionMetrics;
  v26 = sub_3EC634();
  (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_dismissBannerAction;
  *(v24 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_dismissBannerAction) = 0;
  v28 = (v24 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_subscriptionTitle);
  v51 = a1;
  *v28 = a1;
  v28[1] = a2;
  v29 = (v24 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_showSpecificUpsellCopy);
  v52 = a3;
  v53 = a4;
  *v29 = a3;
  v29[1] = a4;
  if (a6)
  {

    v50 = a6;
    v56 = a5;
    v30 = a6;
  }

  else
  {
    v48._object = a16;
    v31 = objc_opt_self();

    v32 = [v31 mainBundle];
    v50 = 0xE000000000000000;
    v48._countAndFlagsBits = 0xE000000000000000;
    v57._object = 0x8000000000428540;
    v57._countAndFlagsBits = 0xD000000000000019;
    v62.value._countAndFlagsBits = a5;
    v62.value._object = 0;
    v33.super.isa = v32;
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    a5 = sub_3E5A74(v57, v62, v33, v63, v48);
    v30 = v34;

    v23 = v49;
    v56 = 0;
  }

  v35 = (v24 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_genericUpsellCopy);
  *v35 = a5;
  v35[1] = v30;
  v36 = (v24 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_macUpsellSubtitle);
  *v36 = a7;
  v36[1] = a8;
  v37 = (v24 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_channelAdamId);
  *v37 = a9;
  v37[1] = a10;
  v38 = (v24 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_eligibilityType);
  *v38 = a11;
  v38[1] = a12;
  v39 = (v24 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_artworkURL);
  *v39 = a13;
  v39[1] = a14;
  *(v24 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_primaryAction) = a15;
  swift_beginAccess();
  *(v24 + v27) = v23;
  swift_beginAccess();

  sub_15F6C0(a17, v24 + v25);
  swift_endAccess();
  if (a2)
  {
    v40._countAndFlagsBits = v51;
  }

  else
  {
    v40._countAndFlagsBits = 0;
  }

  if (a2)
  {
    v41 = a2;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  v40._object = v41;
  sub_3ED3D4(v40);

  v58._countAndFlagsBits = 45;
  v58._object = 0xE100000000000000;
  sub_3ED3D4(v58);
  if (v53)
  {
    v42._countAndFlagsBits = v52;
  }

  else
  {
    v42._countAndFlagsBits = 0;
  }

  if (v53)
  {
    v43 = v53;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  v42._object = v43;
  sub_3ED3D4(v42);

  v59._countAndFlagsBits = 45;
  v59._object = 0xE100000000000000;
  sub_3ED3D4(v59);
  if (a8)
  {
    v44._countAndFlagsBits = a7;
  }

  else
  {
    v44._countAndFlagsBits = 0;
  }

  if (a8)
  {
    v45 = a8;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  v44._object = v45;
  sub_3ED3D4(v44);

  v60._countAndFlagsBits = 45;
  v60._object = 0xE100000000000000;
  sub_3ED3D4(v60);
  v61._countAndFlagsBits = v56;
  v61._object = v50;
  sub_3ED3D4(v61);

  sub_FCF8(a17, &unk_4E9170);
  v46 = (v24 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_shelfUniqueId);
  *v46 = 0;
  v46[1] = 0xE000000000000000;
  return v24;
}

uint64_t EpisodeUpsellBannerModel.init(subscriptionTitle:showSpecificUpsellCopy:genericUpsellCopy:macUpsellSubtitle:channelAdamId:eligibilityType:artworkURL:primaryAction:dismissBannerAction:impressionMetrics:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = v17;
  v27 = OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_impressionMetrics;
  v28 = sub_3EC634();
  v55 = v27;
  (*(*(v28 - 8) + 56))(v18 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_dismissBannerAction;
  *(v18 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_dismissBannerAction) = 0;
  v30 = (v18 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_subscriptionTitle);
  v56 = a1;
  v57 = a3;
  *v30 = a1;
  v30[1] = a2;
  v31 = (v18 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_showSpecificUpsellCopy);
  *v31 = a3;
  v31[1] = a4;
  v32 = a6;
  v60 = a7;
  v58 = a4;
  if (a6)
  {

    v33 = a2;

    v34 = v32;
    v59 = a5;
    v35 = v32;
  }

  else
  {
    v36 = a8;
    v37 = objc_opt_self();

    v33 = a2;

    v38 = [v37 mainBundle];
    v34 = 0xE000000000000000;
    v54._countAndFlagsBits = 0xE000000000000000;
    v61._object = 0x8000000000428540;
    v61._countAndFlagsBits = 0xD000000000000019;
    v66.value._countAndFlagsBits = a5;
    v66.value._object = 0;
    v39.super.isa = v38;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    a5 = sub_3E5A74(v61, v66, v39, v67, v54);
    v35 = v40;

    a8 = v36;
    a7 = v60;
    v59 = 0;
  }

  v41 = (v18 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_genericUpsellCopy);
  *v41 = a5;
  v41[1] = v35;
  v42 = (v18 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_macUpsellSubtitle);
  *v42 = a7;
  v42[1] = a8;
  v43 = (v18 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_channelAdamId);
  *v43 = a9;
  v43[1] = a10;
  v44 = (v18 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_eligibilityType);
  *v44 = a11;
  v44[1] = a12;
  v45 = (v18 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_artworkURL);
  *v45 = a13;
  v45[1] = a14;
  *(v18 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_primaryAction) = a15;
  swift_beginAccess();
  *(v18 + v29) = a16;

  swift_beginAccess();
  sub_15F6C0(a17, v18 + v55);
  swift_endAccess();
  if (v33)
  {
    v46._countAndFlagsBits = v56;
  }

  else
  {
    v46._countAndFlagsBits = 0;
  }

  if (v33)
  {
    v47 = v33;
  }

  else
  {
    v47 = 0xE000000000000000;
  }

  v46._object = v47;
  sub_3ED3D4(v46);

  v62._countAndFlagsBits = 45;
  v62._object = 0xE100000000000000;
  sub_3ED3D4(v62);
  if (v58)
  {
    v48._countAndFlagsBits = v57;
  }

  else
  {
    v48._countAndFlagsBits = 0;
  }

  if (v58)
  {
    v49 = v58;
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  v48._object = v49;
  sub_3ED3D4(v48);

  v63._countAndFlagsBits = 45;
  v63._object = 0xE100000000000000;
  sub_3ED3D4(v63);
  if (a8)
  {
    v50._countAndFlagsBits = v60;
  }

  else
  {
    v50._countAndFlagsBits = 0;
  }

  if (a8)
  {
    v51 = a8;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  v50._object = v51;
  sub_3ED3D4(v50);

  v64._countAndFlagsBits = 45;
  v64._object = 0xE100000000000000;
  sub_3ED3D4(v64);
  v65._countAndFlagsBits = v59;
  v65._object = v34;
  sub_3ED3D4(v65);

  sub_FCF8(a17, &unk_4E9170);
  v52 = (v18 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_shelfUniqueId);
  *v52 = 0;
  v52[1] = 0xE000000000000000;
  return v18;
}

uint64_t sub_15F6C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t EpisodeUpsellBannerModel.deinit()
{
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_impressionMetrics, &unk_4E9170);

  return v0;
}

uint64_t EpisodeUpsellBannerModel.__deallocating_deinit()
{
  EpisodeUpsellBannerModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_15F898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_160EA4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_15F8C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_impressionMetrics;
  swift_beginAccess();
  return sub_7EA24(v3 + v4, a1);
}

uint64_t sub_15F920()
{
  v1 = (*v0 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_shelfUniqueId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t EpisodeUpsellBannerView.apply(model:)(uint64_t a1)
{
  if (isMac() || !*(a1 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_showSpecificUpsellCopy + 8))
  {
    goto LABEL_5;
  }

  sub_138570();

  if ((sub_3ED894() & 1) == 0)
  {

LABEL_5:
  }

  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  swift_retain_n();

  sub_3E6744();
}

void sub_15FB9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(a2 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_primaryAction))
    {
      v11 = sub_3E6754();
      v10[0] = v4;
      v5 = v4;

      sub_160864(v6, v10, v4);

      sub_FCF8(v10, &unk_501090);
    }

    v7 = OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_dismissBannerAction;
    swift_beginAccess();
    if (*(a2 + v7))
    {
      v11 = sub_3E6754();
      v10[0] = v4;
      v8 = v4;

      sub_160224(v9, v10, v4);

      sub_FCF8(v10, &unk_501090);
    }

    else
    {
    }
  }
}

void sub_15FCFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_3E5FC4();
  v41 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_3EC544();
  __chkstk_darwin(v9 - 8);
  v10 = sub_3EC1F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v39 = v3;
    v19 = OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_dismissBannerAction;
    swift_beginAccess();
    v20 = *(a2 + v19);
    if (v20)
    {
      v21 = (v20 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
      v22 = v21[1];
      v37 = *v21;
      v40 = v22;
      v23 = a2 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_channelAdamId;
      v25 = *(a2 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_channelAdamId);
      v24 = *(v23 + 8);

      v26 = _s8ShelfKit17ClickMetricsEventC019upsellBannerDismisscE08targetId011channelAdamJ08pageTypeACSSSg_AHSStFZ_0(0x61426C6C65737075, 0xEC00000072656E6ELL, v25, v24, 0x4574736163646F50, 0xEE0065646F736970);
      v36 = v8;
      v38 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
      sub_3EC044();
      *(swift_allocObject() + 16) = xmmword_3F5630;
      sub_136A40();
      sub_3EC534();
      sub_3EC1C4();
      type metadata accessor for ClosureAction();
      v27 = swift_allocObject();
      v28 = (v27 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
      v29 = v40;
      *v28 = v37;
      v28[1] = v29;
      (*(v11 + 16))(v13, v16, v10);
      v30 = sub_3EC634();
      v31 = v36;
      (*(*(v30 - 8) + 56))(v36, 1, 1, v30);

      sub_3E5FB4();
      v32 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v34 = v33;
      (*(v41 + 8))(v5, v39);
      (*(v11 + 8))(v16, v10);
      *(v27 + 16) = v32;
      *(v27 + 24) = v34;
      *(v27 + 32) = 0;
      *(v27 + 40) = 0;
      *(v27 + 48) = 32;
      (*(v11 + 32))(v27 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v13, v10);
      sub_14A10(v31, v27 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
      v42[3] = sub_3E6754();
      v42[0] = v18;
      v35 = v18;
      sub_160224(v27, v42, v18);

      sub_FCF8(v42, &unk_501090);
    }

    else
    {
    }
  }
}

uint64_t sub_160224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v4 = sub_3EC204();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBE74();
  __chkstk_darwin(v7 - 8);
  v8 = sub_3ECE84();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v36 = type metadata accessor for ClosureAction();
  v37 = sub_161ABC(&qword_4F13D8, type metadata accessor for ClosureAction);
  v35[0] = a1;
  sub_3E6754();

  if (sub_3E6664())
  {
    type metadata accessor for ActionRunnerOptions();

    sub_3EC464();
    v18 = sub_3E6434();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v17, v31, v32);

    sub_FCF8(v17, &qword_5005B0);
    sub_1F958(v35, v34);
    v34[5] = v19;
    sub_E69A0(v34, v33);
    v20 = swift_allocObject();
    v21 = v33[1];
    v20[1] = v33[0];
    v20[2] = v21;
    v20[3] = v33[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
    v22 = sub_3ECE04();
    v23 = sub_3ED6F4();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = &unk_4072F0;
    v24[5] = v20;
    v24[6] = v22;

    sub_E8ECC(0, 0, v14, &unk_407300, v24);

    sub_E91B8(v34);
  }

  else
  {
    sub_3ECE34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
    sub_3EBE94();
    *(swift_allocObject() + 16) = xmmword_3F5630;
    sub_3EBE64();
    v38._object = 0x8000000000427600;
    v38._countAndFlagsBits = 0xD000000000000012;
    sub_3EBE54(v38);
    v25 = v36;
    v26 = __swift_project_boxed_opaque_existential_1(v35, v36);
    v34[3] = v25;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v34);
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_0Tm, v26, v25);
    sub_3EBE44();
    sub_FCF8(v34, &unk_501090);
    v39._countAndFlagsBits = 0xD000000000000019;
    v39._object = 0x8000000000427620;
    sub_3EBE54(v39);
    sub_3EBE84();
    sub_3ECB94();

    (*(v9 + 8))(v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
    (*(v29 + 104))(v6, enum case for ActionOutcome.unsupported(_:), v30);
    v22 = sub_3ECDB4();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  return v22;
}

uint64_t sub_160864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v4 = sub_3EC204();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBE74();
  __chkstk_darwin(v7 - 8);
  v8 = sub_3ECE84();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v36 = type metadata accessor for Action();
  v37 = sub_161ABC(&qword_4EDDF8, type metadata accessor for Action);
  v35[0] = a1;
  sub_3E6754();

  if (sub_3E6664())
  {
    type metadata accessor for ActionRunnerOptions();

    sub_3EC464();
    v18 = sub_3E6434();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v17, v31, v32);

    sub_FCF8(v17, &qword_5005B0);
    sub_1F958(v35, v34);
    v34[5] = v19;
    sub_E69A0(v34, v33);
    v20 = swift_allocObject();
    v21 = v33[1];
    v20[1] = v33[0];
    v20[2] = v21;
    v20[3] = v33[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
    v22 = sub_3ECE04();
    v23 = sub_3ED6F4();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = &unk_4088E8;
    v24[5] = v20;
    v24[6] = v22;

    sub_E8ECC(0, 0, v14, &unk_4088F0, v24);

    sub_E91B8(v34);
  }

  else
  {
    sub_3ECE34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
    sub_3EBE94();
    *(swift_allocObject() + 16) = xmmword_3F5630;
    sub_3EBE64();
    v38._object = 0x8000000000427600;
    v38._countAndFlagsBits = 0xD000000000000012;
    sub_3EBE54(v38);
    v25 = v36;
    v26 = __swift_project_boxed_opaque_existential_1(v35, v36);
    v34[3] = v25;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v34);
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_0Tm, v26, v25);
    sub_3EBE44();
    sub_FCF8(v34, &unk_501090);
    v39._countAndFlagsBits = 0xD000000000000019;
    v39._object = 0x8000000000427620;
    sub_3EBE54(v39);
    sub_3EBE84();
    sub_3ECB94();

    (*(v9 + 8))(v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
    (*(v29 + 104))(v6, enum case for ActionOutcome.unsupported(_:), v30);
    v22 = sub_3ECDB4();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  return v22;
}

uint64_t sub_160EA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EBF94();
  v78 = *(v4 - 8);
  v79 = v4;
  __chkstk_darwin(v4);
  v72 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v6 - 8);
  v77 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v61 - v9;
  v11 = sub_3EBDF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3EBE04();
  v76 = sub_3EBDC4();
  v84 = v15;
  v16 = *(v12 + 8);
  v16(v14, v11);
  sub_3EBE04();
  v75 = sub_3EBDC4();
  v81 = v17;
  v16(v14, v11);
  sub_3EBE04();
  v18 = sub_3EBDC4();
  v70 = v19;
  v71 = v18;
  v16(v14, v11);
  sub_3EBE04();
  v80._countAndFlagsBits = sub_3EBDC4();
  v80._object = v20;
  v16(v14, v11);
  sub_3EBE04();
  v68 = sub_3EBDC4();
  v67 = v21;
  v16(v14, v11);
  sub_3EBE04();
  v66 = sub_3EBDC4();
  v65 = v22;
  v16(v14, v11);
  sub_3EBE04();
  v64 = sub_3EBDC4();
  v63 = v23;
  v16(v14, v11);
  sub_3EBE04();
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v69 = v16;
  v16(v14, v11);
  v24 = sub_3EC634();
  v74 = a1;
  sub_3EBE04();
  v25 = *(v78 + 16);
  v73 = a2;
  v25(v72, a2, v79);
  sub_3EC574();
  v72 = v10;
  sub_7EA24(v10, v77);
  type metadata accessor for EpisodeUpsellBannerModel();
  v26 = swift_allocObject();
  v27 = v26 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_impressionMetrics;
  (*(*(v24 - 8) + 56))(v26 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_impressionMetrics, 1, 1, v24);
  v28 = (v26 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_dismissBannerAction);
  *(v26 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_dismissBannerAction) = 0;
  v29 = (v26 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_subscriptionTitle);
  v30 = v84;
  *v29 = v76;
  v29[1] = v30;
  v31 = (v26 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_showSpecificUpsellCopy);
  v32 = v81;
  *v31 = v75;
  v31[1] = v32;
  if (v80._object)
  {

    countAndFlagsBits = v80._countAndFlagsBits;
    object = v80._object;
  }

  else
  {
    v35 = objc_opt_self();

    v36 = [v35 mainBundle];
    v80._object = 0xE000000000000000;
    v60._countAndFlagsBits = 0xE000000000000000;
    v85._countAndFlagsBits = 0xD000000000000019;
    v85._object = 0x8000000000428540;
    v89.value._countAndFlagsBits = v80._countAndFlagsBits;
    v89.value._object = 0;
    v37.super.isa = v36;
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    countAndFlagsBits = sub_3E5A74(v85, v89, v37, v90, v60);
    object = v38;

    v80._countAndFlagsBits = 0;
  }

  v39 = (v26 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_genericUpsellCopy);
  *v39 = countAndFlagsBits;
  v39[1] = object;
  v40 = (v26 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_macUpsellSubtitle);
  v41 = v70;
  v42 = v71;
  *v40 = v71;
  v40[1] = v41;
  v43 = (v26 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_channelAdamId);
  v44 = v67;
  *v43 = v68;
  v43[1] = v44;
  v45 = (v26 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_eligibilityType);
  v46 = v65;
  *v45 = v66;
  v45[1] = v46;
  v47 = (v26 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_artworkURL);
  v48 = v63;
  *v47 = v64;
  v47[1] = v48;
  *(v26 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_primaryAction) = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  swift_beginAccess();
  *v28 = 0;
  swift_beginAccess();

  v49 = v77;
  sub_15F6C0(v77, v27);
  swift_endAccess();
  v82 = 0;
  v83 = 0xE000000000000000;
  if (v84)
  {
    v50._countAndFlagsBits = v76;
  }

  else
  {
    v50._countAndFlagsBits = 0;
  }

  if (v84)
  {
    v51 = v84;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  v50._object = v51;
  sub_3ED3D4(v50);

  v86._countAndFlagsBits = 45;
  v86._object = 0xE100000000000000;
  sub_3ED3D4(v86);
  if (v81)
  {
    v52._countAndFlagsBits = v75;
  }

  else
  {
    v52._countAndFlagsBits = 0;
  }

  if (v81)
  {
    v53 = v81;
  }

  else
  {
    v53 = 0xE000000000000000;
  }

  v52._object = v53;
  sub_3ED3D4(v52);

  v87._countAndFlagsBits = 45;
  v87._object = 0xE100000000000000;
  sub_3ED3D4(v87);
  if (v41)
  {
    v54._countAndFlagsBits = v42;
  }

  else
  {
    v54._countAndFlagsBits = 0;
  }

  if (v41)
  {
    v55 = v41;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

  v54._object = v55;
  sub_3ED3D4(v54);

  v88._countAndFlagsBits = 45;
  v88._object = 0xE100000000000000;
  sub_3ED3D4(v88);
  sub_3ED3D4(v80);

  v56 = v82;
  v57 = v83;
  (*(v78 + 8))(v73, v79);
  v69(v74, v11);
  sub_FCF8(v49, &unk_4E9170);
  sub_FCF8(v72, &unk_4E9170);
  v58 = (v26 + OBJC_IVAR____TtC8ShelfKit24EpisodeUpsellBannerModel_shelfUniqueId);
  *v58 = v56;
  v58[1] = v57;
  return v26;
}

uint64_t sub_1616C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroy_2Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_161750(uint64_t a1)
{
  result = sub_161ABC(&qword_4F4598, type metadata accessor for EpisodeUpsellBannerModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for EpisodeUpsellBannerModel()
{
  result = qword_4F45C8;
  if (!qword_4F45C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1617FC()
{
  sub_4D334();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_161940(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2400C;

  return sub_14E9AC(a1);
}

uint64_t sub_1619E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2400C;

  return sub_E6AD8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_161ABC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_11Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t objectdestroy_15Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t ShowEpisodeCountHeaderData.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShowEpisodeCountHeaderData(0) + 20);

  return sub_A18FC(v3, a1);
}

uint64_t ShowEpisodeCountHeaderData.action.getter()
{
  type metadata accessor for ShowEpisodeCountHeaderData(0);
}

uint64_t ShowEpisodeCountHeaderData.init(title:artwork:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for ShowEpisodeCountHeaderData(0);
  result = sub_83F9C(a3, a5 + *(v8 + 20));
  *(a5 + *(v8 + 24)) = a4;
  return result;
}

ShelfKit::ShowEpisodeCountHeader::Style_optional __swiftcall ShowEpisodeCountHeader.Style.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B1CD8;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ShowEpisodeCountHeader.Style.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7972617262696CLL;
  v3 = 0x6B72616D6B6F6F62;
  v4 = 0x6E6F6974617473;
  if (v1 != 3)
  {
    v4 = 1701736302;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64616F6C6E776F64;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_161D8C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_161E70()
{
  sub_3ED394();
}

Swift::Int sub_161F40()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

void sub_16202C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972617262696CLL;
  v5 = 0x6B72616D6B6F6F62;
  v6 = 0xE900000000000073;
  v7 = 0xE700000000000000;
  v8 = 0x6E6F6974617473;
  if (v2 != 3)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x64616F6C6E776F64;
    v3 = 0xE900000000000073;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t ShowEpisodeCountHeader.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShowEpisodeCountHeader(0) + 24);

  return sub_A18FC(v3, a1);
}

uint64_t ShowEpisodeCountHeader.action.getter()
{
  type metadata accessor for ShowEpisodeCountHeader(0);
}

uint64_t ShowEpisodeCountHeader.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ShowEpisodeCountHeader(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t ShowEpisodeCountHeader.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShowEpisodeCountHeader(0) + 40);

  return sub_7EA24(v3, a1);
}

uint64_t ShowEpisodeCountHeader.libraryEpisodesCountText.getter()
{
  v1 = 0xD000000000000038;
  v2 = type metadata accessor for ShowEpisodeCountHeader(0);
  v3 = *(v0 + *(v2 + 36));
  if (v3 <= 1)
  {
    if (*(v0 + *(v2 + 36)))
    {
      v5 = "ED_EPISODES_COUNT_FORMAT";
    }

    else
    {
      v5 = "ED_EPISODES_COUNT_FORMAT";
    }

    if (!*(v0 + *(v2 + 36)))
    {
      v1 = 0xD000000000000035;
    }

    goto LABEL_12;
  }

  if (v3 == 2)
  {
    v5 = "dismissBannerAction";
    goto LABEL_12;
  }

  v4 = 0;
  if (v3 == 3)
  {
    v5 = "ShowLockup.swift";
    v1 = 0xD000000000000015;
LABEL_12:
    v6 = [objc_opt_self() mainBundle];
    v11._countAndFlagsBits = 0xE000000000000000;
    v12._object = (v5 | 0x8000000000000000);
    v12._countAndFlagsBits = v1;
    v13.value._countAndFlagsBits = 0;
    v13.value._object = 0;
    v7.super.isa = v6;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    sub_3E5A74(v12, v13, v7, v14, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_3F5630;
    v9 = *(v0 + *(v2 + 32));
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v9;
    v4 = sub_3ED214();
  }

  return v4;
}

uint64_t ShowEpisodeCountHeader.init(id:title:artwork:action:libraryEpisodesCount:style:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 *a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v16 = *a8;
  if (!a2)
  {

    v29._countAndFlagsBits = 45;
    v29._object = 0xE100000000000000;
    sub_3ED3D4(v29);
    v30._countAndFlagsBits = sub_3EE7A4();
    sub_3ED3D4(v30);

    v31._countAndFlagsBits = 45;
    v31._object = 0xE100000000000000;
    sub_3ED3D4(v31);
    v17 = 0xE700000000000000;
    v18 = 0x7972617262696CLL;
    v19 = 0x6B72616D6B6F6F62;
    v20 = 0xE900000000000073;
    v21 = 0xE700000000000000;
    v22 = 0x6E6F6974617473;
    if (v16 != 3)
    {
      v22 = 1701736302;
      v21 = 0xE400000000000000;
    }

    if (v16 != 2)
    {
      v19 = v22;
      v20 = v21;
    }

    if (v16)
    {
      v18 = 0x64616F6C6E776F64;
      v17 = 0xE900000000000073;
    }

    if (v16 <= 1)
    {
      v23._countAndFlagsBits = v18;
    }

    else
    {
      v23._countAndFlagsBits = v19;
    }

    if (v16 <= 1)
    {
      v24 = v17;
    }

    else
    {
      v24 = v20;
    }

    v23._object = v24;
    sub_3ED3D4(v23);

    a1 = a3;
    a2 = a4;
  }

  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v25 = type metadata accessor for ShowEpisodeCountHeader(0);
  sub_83F9C(a5, a9 + v25[6]);
  *(a9 + v25[7]) = a6;
  *(a9 + v25[8]) = a7;
  *(a9 + v25[9]) = v16;
  return sub_14A10(a10, a9 + v25[10]);
}

unint64_t sub_162570()
{
  result = qword_4F46A8;
  if (!qword_4F46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F46A8);
  }

  return result;
}

unint64_t sub_1625C4(uint64_t a1)
{
  result = sub_1625EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1625EC()
{
  result = qword_4F46B0;
  if (!qword_4F46B0)
  {
    type metadata accessor for ShowEpisodeCountHeader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F46B0);
  }

  return result;
}

uint64_t sub_16265C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_3E7784();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_16271C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_3E7784();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1627C0()
{
  result = sub_3E7784();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Action();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_162868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_3E7784();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1629AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_3E7784();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_162ADC()
{
  sub_3E7784();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Action();
    if (v1 <= 0x3F)
    {
      sub_4D334();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t ToggleCellModel.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ToggleCellModel() + 32);

  return sub_7EA24(v3, a1);
}

uint64_t type metadata accessor for ToggleCellModel()
{
  result = qword_4F4860;
  if (!qword_4F4860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ToggleCellModel.init(id:keyPath:offName:onName:impressionMetrics:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F47F8);
    sub_3EE554();
    v18._countAndFlagsBits = 45;
    v18._object = 0xE100000000000000;
    sub_3ED3D4(v18);
    v19._countAndFlagsBits = a4;
    v19._object = a5;
    sub_3ED3D4(v19);
    v20._countAndFlagsBits = 45;
    v20._object = 0xE100000000000000;
    sub_3ED3D4(v20);
    v21._countAndFlagsBits = a6;
    v21._object = a7;
    sub_3ED3D4(v21);
    a1 = 0;
    a2 = 0xE000000000000000;
  }

  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  v16 = type metadata accessor for ToggleCellModel();
  return sub_14A10(a8, a9 + *(v16 + 32));
}

BOOL _s8ShelfKit15ToggleCellModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_3EC634();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F48B0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_3EE804() & 1) == 0)
  {
    return 0;
  }

  sub_3EE224();
  if ((sub_3EE214() & 1) == 0 || (a1[3] != a2[3] || a1[4] != a2[4]) && (sub_3EE804() & 1) == 0)
  {
    return 0;
  }

  if ((a1[5] != a2[5] || a1[6] != a2[6]) && (sub_3EE804() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for ToggleCellModel() + 32);
  v15 = *(v11 + 48);
  sub_7EA24(a1 + v14, v13);
  sub_7EA24(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_FCF8(v13, &unk_4E9170);
      return 1;
    }

    goto LABEL_16;
  }

  sub_7EA24(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_16:
    sub_FCF8(v13, &qword_4F48B0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_16346C(&qword_4F1730, &type metadata accessor for ImpressionMetrics);
  v18 = sub_3ED174();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_FCF8(v13, &unk_4E9170);
  return (v18 & 1) != 0;
}

uint64_t sub_1630F0(uint64_t a1)
{
  result = sub_16346C(&qword_4F4800, type metadata accessor for ToggleCellModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1631A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_163274(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_163324()
{
  sub_1633C0();
  if (v0 <= 0x3F)
  {
    sub_4D334();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1633C0()
{
  if (!qword_4F4870)
  {
    sub_163420();
    v0 = sub_3EE7B4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F4870);
    }
  }
}

unint64_t sub_163420()
{
  result = qword_4F10B8;
  if (!qword_4F10B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F10B8);
  }

  return result;
}

uint64_t sub_16346C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1634B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BookmarkButtonPresenter.Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    if (a3 == 1)
    {
      v12 = [objc_opt_self() sharedInstance];
      v13 = [v12 mainQueueContext];

      v27 = 0;
      v14 = [v13 existingObjectWithID:a1 error:&v27];

      v15 = v27;
      if (!v14)
      {
        v25 = v27;
        sub_3E5B84();

        swift_willThrow();
        sub_3DEF8(a1, a2, 1);

        v23 = 1;
        return (*(v9 + 56))(a4, v23, 1, v8);
      }

      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      v17 = v15;
      if (!v16 || (v18 = [v16 uuid]) == 0)
      {

        sub_3DEF8(a1, a2, 1);
        v23 = 1;
        return (*(v9 + 56))(a4, v23, 1, v8);
      }

      v19 = v18;
      v20 = sub_3ED244();
      v22 = v21;

      sub_3DEF8(a1, a2, 1);
      *v11 = v20;
      v11[1] = v22;
    }

    else
    {
      *v11 = a1;
      v11[1] = a2;
    }
  }

  else
  {
    *v11 = a1;
  }

  swift_storeEnumTagMultiPayload();
  sub_1659B4(v11, a4, type metadata accessor for BookmarkButtonPresenter.Data);
  v23 = 0;
  return (*(v9 + 56))(a4, v23, 1, v8);
}

uint64_t sub_163760@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EpisodeOffer();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BookmarkButtonPresenter.Data(0);
  __chkstk_darwin(v8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_165950(v2, v10);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v15 = *v10;
    v16 = v10[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
    result = swift_allocObject();
    v14 = 0;
    *(result + 16) = xmmword_3F5630;
    *(result + 32) = v15;
    *(result + 40) = v16;
    goto LABEL_7;
  }

  if (result == 1)
  {
    sub_1659B4(v10, v7, type metadata accessor for EpisodeOffer);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4B50);
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_3F5630;
    sub_1659B4(v7, v13 + v12, type metadata accessor for EpisodeOffer);
    result = v13;
    v14 = 1;
LABEL_7:
    *a1 = result;
    *(a1 + 8) = v14;
    return result;
  }

  v17 = *v10;
  if ((*v10 & 0x8000000000000000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA838);
    result = swift_allocObject();
    *(result + 16) = xmmword_3F5630;
    *(result + 32) = v17;
    v14 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_16397C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  swift_unknownObjectWeakAssign();
  return sub_1639D8();
}

uint64_t sub_1639D8()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    sub_164190();
    sub_3E6BC4();

    (*(v1 + 8))(*(v0 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter__currentState), ObjectType, v1);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v0 + 40);
    v5 = swift_getObjectType();
    swift_getKeyPath();
    sub_164190();
    sub_3E6BC4();

    (*(v4 + 16))(v0, *(v0 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter__currentState), v5, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_163B90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_1639D8();
  return swift_unknownObjectRelease();
}

void (*sub_163BF4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_163C88;
}

void sub_163C88(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1639D8();
  }

  free(v3);
}

uint64_t sub_163D50(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_163DB0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_163E44;
}

void sub_163E44(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
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

uint64_t sub_163EC8()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    sub_164190();
    sub_3E6BC4();

    (*(v1 + 8))(*(v0 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter__currentState), ObjectType, v1);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v0 + 40);
    v5 = swift_getObjectType();
    swift_getKeyPath();
    sub_164190();
    sub_3E6BC4();

    (*(v4 + 8))(v0, *(v0 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter__currentState), v5, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_164044@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_164190();
  sub_3E6BC4();

  *a2 = *(v3 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter__currentState);
  return result;
}

uint64_t sub_1640EC()
{
  swift_getKeyPath();
  sub_164190();
  sub_3E6BC4();

  return *(v0 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter__currentState);
}

unint64_t sub_164190()
{
  result = qword_4F48C0;
  if (!qword_4F48C0)
  {
    type metadata accessor for BookmarkButtonPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F48C0);
  }

  return result;
}

uint64_t sub_164208(char a1)
{
  v2 = OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter__currentState;
  v3 = a1 & 1;
  if (sub_3E8AA4())
  {
    *(v1 + v2) = v3;

    return sub_163EC8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_164190();
    sub_3E6BB4();
  }
}

uint64_t sub_16431C()
{
  swift_getKeyPath();
  sub_164190();
  sub_3E6BC4();
}

uint64_t sub_164398@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_164190();
  sub_3E6BC4();

  *a2 = *(v3 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter__metricsController);
}

uint64_t sub_16441C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter__metricsController) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_164190();
    sub_3E6BB4();
  }
}

void *BookmarkButtonPresenter.__allocating_init(data:graph:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_165000(a1);

  return v2;
}

void *BookmarkButtonPresenter.init(data:graph:)(uint64_t a1)
{
  v1 = sub_165000(a1);

  return v1;
}

uint64_t sub_1645B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_3E8984();
    v2 = OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter__currentState;
    if (sub_3E8AA4())
    {
      *(v1 + v2) = v4;
      sub_163EC8();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_164190();
      sub_3E6BB4();
    }
  }

  return result;
}

uint64_t sub_1646F0()
{
  v1 = sub_3E9A04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  swift_getKeyPath();
  v33 = v0;
  sub_164190();
  sub_3E6BC4();

  if (*(v0 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter__currentState))
  {
    v8 = sub_3E84D4();
    sub_164B30(v8, v9);

    sub_3E9924();

    v10 = sub_3E99F4();
    v11 = sub_3ED9F4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v12 = 136315394;
      sub_163760(&v33);
      v31 = v33;
      v32 = v34;
      v13 = sub_3ED2B4();
      v15 = sub_2EDD0(v13, v14, &v30);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = [objc_opt_self() callStackSymbols];
      sub_3ED584();

      v17 = sub_3ED594();
      v19 = v18;

      v20 = sub_2EDD0(v17, v19, &v30);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_0, v10, v11, "BookmarkButtonPresenter.performPrimaryAction() - Unbookmarking episodes %s %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    (*(v2 + 8))(v4, v1);
    sub_163760(&v33);
    v31 = v33;
    v32 = v34;
    BookmarksController.removeEpisodesFromBookmarks(with:showHUDConfirmation:)(&v31, 0);
  }

  else
  {
    v22 = sub_3E8484();
    sub_164B30(v22, v23);

    v24 = *(v0 + 48);
    sub_163760(&v33);
    v25 = v33;
    v26 = v34;
    v27 = sub_3ED6F4();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = v25;
    *(v28 + 40) = v26;
    *(v28 + 48) = v24;
    *(v28 + 56) = 0;

    sub_8FEE4(0, 0, v7, &unk_408C00, v28);
  }
}

uint64_t sub_164B30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v39 = a2;
  v4 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v4 - 8);
  v37 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for BookmarkButtonPresenter.Data(0);
  __chkstk_darwin(v6);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v2[10];
  v10 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v9);
  swift_getKeyPath();
  v40 = v2;
  sub_164190();
  sub_3E6BC4();

  v11 = *(v10 + 280);

  v11(v12, v9, v10);

  sub_165950(v2 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter_data, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = v37;
      sub_1659B4(v8, v37, type metadata accessor for EpisodeOffer);
      v15 = v2[10];
      v16 = v2[11];
      __swift_project_boxed_opaque_existential_1(v2 + 7, v15);
      v40 = *v14;
      sub_17A28();
      v17 = sub_3EE1F4();
      v19 = v18;
      v20 = sub_3E8074();
      LibraryActionControllerProtocol.makeAndSendMetricsEvent(adamId:actionType:pageType:)(v17, v19, v38, v39, v20, v21, v15, v16);

      return sub_165A1C(v14, type metadata accessor for EpisodeOffer);
    }

    v29 = *v8;
    v30 = v3[10];
    v31 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v30);
    v40 = v29;
    sub_17A28();
    v32 = sub_3EE1F4();
    v34 = v33;
    v35 = sub_3E8074();
    LibraryActionControllerProtocol.makeAndSendMetricsEvent(adamId:actionType:pageType:)(v32, v34, v38, v39, v35, v36, v30, v31);
  }

  else
  {
    v23 = *v8;
    v24 = v8[1];
    v25 = v2[10];
    v26 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
    v27 = sub_3E8074();
    LibraryActionControllerProtocol.makeAndSendMetricsEvent(episodeUuid:actionType:pageType:)(v23, v24, v38, v39, v27, v28, v25, v26);
  }
}

uint64_t BookmarkButtonPresenter.deinit()
{
  sub_13A0E0(v0 + 16);
  sub_13A0E0(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  sub_165A1C(v0 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter_data, type metadata accessor for BookmarkButtonPresenter.Data);

  v1 = OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter___observationRegistrar;
  v2 = sub_3E6C04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BookmarkButtonPresenter.__deallocating_deinit()
{
  sub_13A0E0(v0 + 16);
  sub_13A0E0(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  sub_165A1C(v0 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter_data, type metadata accessor for BookmarkButtonPresenter.Data);

  v1 = OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter___observationRegistrar;
  v2 = sub_3E6C04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_165000(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BookmarkButtonPresenter.Data(0);
  __chkstk_darwin(v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  sub_3E6BF4();
  sub_165950(a1, v1 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter_data);
  type metadata accessor for BookmarksController();
  sub_3EC444();
  sub_3ECD14();
  v1[6] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3ECD14();
  sub_1FE90(&v14, (v1 + 7));
  type metadata accessor for MetricsController();
  swift_allocObject();

  *(v1 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter__metricsController) = MetricsController.init(asPartOf:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4B58);
  sub_3ECD14();
  sub_165950(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1659B4(v9, v6, type metadata accessor for EpisodeOffer);
      v11 = sub_3E8D44();
      sub_165A1C(v6, type metadata accessor for EpisodeOffer);
    }

    else
    {
      v11 = sub_3E8D44();
    }
  }

  else
  {
    v11 = sub_3E8D54();
  }

  *(v2 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter_stateMachine) = v11;
  sub_3E8984();
  *(v2 + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter__currentState) = v14;
  swift_allocObject();
  swift_weakInit();

  sub_3E8964();

  sub_165A1C(a1, type metadata accessor for BookmarkButtonPresenter.Data);
  return v2;
}

uint64_t sub_16532C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_165374(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2368C;

  return sub_8F878(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_165470@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1654C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_165514(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1655BC()
{
  result = type metadata accessor for BookmarkButtonPresenter.Data(319);
  if (v1 <= 0x3F)
  {
    result = sub_3E6C04();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_165828()
{
  result = type metadata accessor for EpisodeOffer();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1658CC()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC8ShelfKit23BookmarkButtonPresenter__metricsController) = *(v0 + 24);
}

uint64_t sub_165950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookmarkButtonPresenter.Data(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1659B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_165A1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_165A7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_165AD8()
{
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    sub_3E6BC4();

    swift_beginAccess();
    (*(v1 + 16))(*(v0 + 48), *(v0 + 56), ObjectType, v1);
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  sub_3E6BC4();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v0 + 40);
    v5 = swift_getObjectType();
    swift_getKeyPath();
    sub_3E6BC4();

    swift_beginAccess();
    (*(v4 + 16))(v0, *(v0 + 48), *(v0 + 56), v5, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*sub_165D04(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_165D98;
}

void sub_165D98(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_165AD8();
  }

  free(v3);
}

uint64_t sub_165E24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_165F08()
{
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_16600C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 24) = a3;
  swift_unknownObjectWeakAssign();
  return sub_165AD8();
}

void (*sub_166098(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  *v4 = v1;
  swift_getKeyPath();
  sub_3E6BE4();

  v4[7] = sub_165D04(v4);
  return sub_1661D0;
}

void (*sub_1661DC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_163E44;
}

uint64_t sub_166270@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_166354()
{
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BB4();
}

uint64_t sub_16641C()
{
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_166500()
{
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BB4();

  return swift_unknownObjectRelease();
}

void (*sub_1665E8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  *v4 = v1;
  swift_getKeyPath();
  sub_3E6BE4();

  v4[7] = sub_1661DC(v4);
  return sub_166720;
}

uint64_t sub_16672C()
{
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    sub_3E6BC4();

    swift_beginAccess();
    (*(v1 + 16))(*(v0 + 48), *(v0 + 56), ObjectType, v1);
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  sub_3E6BC4();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v0 + 40);
    v5 = swift_getObjectType();
    swift_getKeyPath();
    sub_3E6BC4();

    swift_beginAccess();
    (*(v4 + 8))(v0, *(v0 + 48), *(v0 + 56), v5, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_166958(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1669AC;
}

uint64_t sub_1669AC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_16672C();
  }

  return result;
}

uint64_t sub_1669E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  result = swift_beginAccess();
  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_166AA4()
{
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BB4();
}

uint64_t sub_166B78()
{
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  swift_beginAccess();
  return *(v0 + 48);
}

uint64_t sub_166C38()
{
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BB4();
}

void (*sub_166D24(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  *v4 = v1;
  swift_getKeyPath();
  sub_3E6BE4();

  v4[7] = sub_166958(v4);
  return sub_166E5C;
}

void sub_166E68(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_3E6BD4();

  free(v1);
}

uint64_t sub_166EFC()
{
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();
}

uint64_t sub_166FA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  *a2 = *(v3 + 64);
}

uint64_t sub_16704C(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 64))
  {
    if (a1)
    {
      sub_3E9CB4();
      sub_16A6D8(&qword_4EA130, &type metadata accessor for AnyCancellable);

      v4 = sub_3ED174();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
    sub_3E6BB4();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 64) = a1;
}

uint64_t sub_1671F4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  v3 = OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter__data;
  swift_beginAccess();
  return sub_16A7C0(v5 + v3, a1, type metadata accessor for DownloadButtonPresenter.Data);
}

uint64_t sub_1672D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  v4 = OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter__data;
  swift_beginAccess();
  return sub_16A7C0(v3 + v4, a2, type metadata accessor for DownloadButtonPresenter.Data);
}

uint64_t sub_1673AC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for DownloadButtonPresenter.Data(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_16A7C0(a1, v6, type metadata accessor for DownloadButtonPresenter.Data);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BB4();

  return sub_16A760(v6, type metadata accessor for DownloadButtonPresenter.Data);
}

uint64_t sub_1674F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadButtonPresenter.Data(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16A7C0(a2, v6, type metadata accessor for DownloadButtonPresenter.Data);
  v7 = OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter__data;
  swift_beginAccess();
  sub_16B00C(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_1675C8()
{
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();
}

uint64_t sub_167674@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  *a2 = *(v3 + OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter__metricsController);
}

uint64_t sub_167728(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter__metricsController) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
    sub_3E6BB4();
  }
}

uint64_t DownloadButtonPresenter.__allocating_init(data:graph:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_169D10(a1);

  return v2;
}

uint64_t DownloadButtonPresenter.init(data:graph:)(uint64_t a1)
{
  v1 = sub_169D10(a1);

  return v1;
}

uint64_t sub_1678F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
    sub_3E6BB4();
  }

  return result;
}

uint64_t sub_167A54()
{
  v1 = v0;
  v2 = type metadata accessor for DownloadButtonPresenter.Data(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v9 = v0;
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  v5 = OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter__data;
  swift_beginAccess();
  sub_16A7C0(v1 + v5, v4, type metadata accessor for DownloadButtonPresenter.Data);
  swift_getKeyPath();
  v8 = v1;
  sub_3E6BC4();

  swift_beginAccess();
  if (*(v1 + 56) == 1)
  {
    v6 = *(v1 + 48);
    if (!v6)
    {
      sub_167D50(v4);
      return sub_16A760(v4, type metadata accessor for DownloadButtonPresenter.Data);
    }

    if (v6 != 1)
    {
      sub_168154(v4);
      return sub_16A760(v4, type metadata accessor for DownloadButtonPresenter.Data);
    }
  }

  sub_16869C(v4);
  return sub_16A760(v4, type metadata accessor for DownloadButtonPresenter.Data);
}

uint64_t DownloadButtonPresenter.deinit()
{
  sub_13A0E0(v0 + 16);
  sub_13A0E0(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 120);
  sub_16A760(v0 + OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter__data, type metadata accessor for DownloadButtonPresenter.Data);

  v1 = OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter___observationRegistrar;
  v2 = sub_3E6C04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DownloadButtonPresenter.__deallocating_deinit()
{
  DownloadButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_167D50(uint64_t a1)
{
  v3 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DownloadButtonPresenter.Data(0);
  __chkstk_darwin(v6);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_16A7C0(a1, v8, type metadata accessor for DownloadButtonPresenter.Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_16ADFC(v8, v5, type metadata accessor for EpisodeOffer);
      sub_168C9C(v5);
      return sub_16A760(v5, type metadata accessor for EpisodeOffer);
    }

    else
    {
      v26 = *v8;
      v27 = v1[19];
      __swift_project_boxed_opaque_existential_1(v1 + 15, v1[18]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CF0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_3F5630;
      *(v28 + 32) = *(v26 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
      (*(v27 + 48))();

      swift_allocObject();
      swift_weakInit();
      v29 = sub_36174(0, &qword_4F10B0);
      v30 = sub_3EDBC4();
      v34[3] = v29;
      v34[4] = &protocol witness table for OS_dispatch_queue;
      v34[0] = v30;
      sub_3ECD94();

      return __swift_destroy_boxed_opaque_existential_1Tm(v34);
    }
  }

  else
  {
    v11 = v8[1];
    v33 = *v8;
    v32 = sub_3E84F4();
    v13 = v12;
    v14 = v1[13];
    v15 = v1[14];
    __swift_project_boxed_opaque_existential_1(v1 + 10, v14);
    swift_getKeyPath();
    v34[0] = v1;
    sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
    v16 = v1;
    sub_3E6BC4();

    v17 = *(v15 + 280);

    v17(v18, v14, v15);

    v19 = v1[13];
    v20 = v16[14];
    __swift_project_boxed_opaque_existential_1(v16 + 10, v16[13]);
    v21 = sub_3E8074();
    v22 = v33;
    LibraryActionControllerProtocol.makeAndSendMetricsEvent(episodeUuid:actionType:pageType:)(v33, v11, v32, v13, v21, v23, v19, v20);

    v24 = v16[13];
    v25 = v16[14];
    __swift_project_boxed_opaque_existential_1(v16 + 10, v24);
    (*(v25 + 296))(v22, v11, 0, v24, v25);
  }
}

void sub_168154(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v4 - 8);
  v6 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DownloadButtonPresenter.Data(0);
  __chkstk_darwin(v7);
  v9 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = a1;
  sub_16A7C0(a1, v9, type metadata accessor for DownloadButtonPresenter.Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v25 = v9[1];
    v51 = *v9;
    v50 = sub_3E8434();
    v27 = v26;
    v28 = v2[13];
    v29 = v2[14];
    __swift_project_boxed_opaque_existential_1(v2 + 10, v28);
    swift_getKeyPath();
    v53 = v2;
    sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
    sub_3E6BC4();

    v30 = *(v29 + 280);

    v30(v31, v28, v29);

    v32 = v2[13];
    v33 = v2[14];
    __swift_project_boxed_opaque_existential_1(v2 + 10, v32);
    v34 = sub_3E8074();
    LibraryActionControllerProtocol.makeAndSendMetricsEvent(episodeUuid:actionType:pageType:)(v51, v25, v50, v27, v34, v35, v32, v33);

LABEL_6:

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v36 = *v9;
    v51 = sub_3E8434();
    v38 = v37;
    v50 = *(v36 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
    v39 = v2[13];
    v40 = v2[14];
    __swift_project_boxed_opaque_existential_1(v2 + 10, v39);
    swift_getKeyPath();
    v53 = v2;
    sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
    sub_3E6BC4();

    v41 = *(v40 + 280);

    v41(v42, v39, v40);

    v43 = v2[13];
    v44 = v2[14];
    __swift_project_boxed_opaque_existential_1(v2 + 10, v43);
    v53 = v50;
    sub_17A28();
    v45 = sub_3EE1F4();
    v47 = v46;
    v48 = sub_3E8074();
    LibraryActionControllerProtocol.makeAndSendMetricsEvent(adamId:actionType:pageType:)(v45, v47, v51, v38, v48, v49, v43, v44);

    goto LABEL_6;
  }

  sub_16ADFC(v9, v6, type metadata accessor for EpisodeOffer);
  v11 = sub_3E8434();
  v13 = v12;
  v50 = *v6;
  v51 = v11;
  v14 = v2[13];
  v15 = v2[14];
  __swift_project_boxed_opaque_existential_1(v2 + 10, v14);
  swift_getKeyPath();
  v53 = v2;
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  v16 = *(v15 + 280);

  v16(v17, v14, v15);

  v18 = v2[13];
  v19 = v2[14];
  __swift_project_boxed_opaque_existential_1(v2 + 10, v18);
  v53 = v50;
  sub_17A28();
  v20 = sub_3EE1F4();
  v22 = v21;
  v23 = sub_3E8074();
  LibraryActionControllerProtocol.makeAndSendMetricsEvent(adamId:actionType:pageType:)(v20, v22, v51, v13, v23, v24, v18, v19);

  sub_16A760(v6, type metadata accessor for EpisodeOffer);
LABEL_7:
  sub_169048(v52);
}

uint64_t sub_16869C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v4 - 8);
  v6 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DownloadButtonPresenter.Data(0);
  __chkstk_darwin(v7);
  v9 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_16A7C0(a1, v9, type metadata accessor for DownloadButtonPresenter.Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_16ADFC(v9, v6, type metadata accessor for EpisodeOffer);
      v11 = sub_3E8424();
      v13 = v12;
      v61 = *v6;
      v62 = v11;
      v14 = v2[13];
      v15 = v2[14];
      __swift_project_boxed_opaque_existential_1(v2 + 10, v14);
      swift_getKeyPath();
      v63 = v2;
      sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
      sub_3E6BC4();

      v16 = *(v15 + 280);

      v16(v17, v14, v15);

      v18 = v2[13];
      v19 = v2[14];
      __swift_project_boxed_opaque_existential_1(v2 + 10, v18);
      v20 = v61;
      v63 = v61;
      sub_17A28();
      v21 = sub_3EE1F4();
      v23 = v22;
      v24 = sub_3E8074();
      LibraryActionControllerProtocol.makeAndSendMetricsEvent(adamId:actionType:pageType:)(v21, v23, v62, v13, v24, v25, v18, v19);

      v26 = v2[13];
      v27 = v2[14];
      __swift_project_boxed_opaque_existential_1(v2 + 10, v26);
      (*(v27 + 336))(v20, v26, v27);
      return sub_16A760(v6, type metadata accessor for EpisodeOffer);
    }

    else
    {
      v43 = *v9;
      v61 = sub_3E8424();
      v45 = v44;
      v62 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId;
      v60 = *(v43 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);
      v46 = v2[13];
      v47 = v2[14];
      __swift_project_boxed_opaque_existential_1(v2 + 10, v46);
      swift_getKeyPath();
      v63 = v2;
      sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);

      sub_3E6BC4();

      v48 = *(v47 + 280);

      v48(v49, v46, v47);

      v50 = v2[13];
      v51 = v2[14];
      __swift_project_boxed_opaque_existential_1(v2 + 10, v50);
      v63 = v60;
      sub_17A28();
      v52 = sub_3EE1F4();
      v54 = v53;
      v55 = sub_3E8074();
      LibraryActionControllerProtocol.makeAndSendMetricsEvent(adamId:actionType:pageType:)(v52, v54, v61, v45, v55, v56, v50, v51);

      v57 = v2[13];
      v58 = v2[14];
      __swift_project_boxed_opaque_existential_1(v2 + 10, v57);
      v59 = *(v43 + v62);

      (*(v58 + 336))(v59, v57, v58);
    }
  }

  else
  {
    v29 = v9[1];
    v62 = *v9;
    v61 = sub_3E8424();
    v31 = v30;
    v32 = v2[13];
    v33 = v2[14];
    __swift_project_boxed_opaque_existential_1(v2 + 10, v32);
    swift_getKeyPath();
    v63 = v2;
    sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
    sub_3E6BC4();

    v34 = *(v33 + 280);

    v34(v35, v32, v33);

    v36 = v2[13];
    v37 = v2[14];
    __swift_project_boxed_opaque_existential_1(v2 + 10, v36);
    v38 = sub_3E8074();
    v39 = v62;
    LibraryActionControllerProtocol.makeAndSendMetricsEvent(episodeUuid:actionType:pageType:)(v62, v29, v61, v31, v38, v40, v36, v37);

    v41 = v2[13];
    v42 = v2[14];
    __swift_project_boxed_opaque_existential_1(v2 + 10, v41);
    (*(v42 + 328))(v39, v29, v41, v42);
  }
}

uint64_t sub_168C9C(uint64_t a1)
{
  v2 = v1;
  v22 = sub_3E84F4();
  v4 = v3;
  v5 = v1[13];
  v6 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v5);
  swift_getKeyPath();
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  v7 = *(v6 + 280);

  v7(v8, v5, v6);

  v9 = v1[13];
  v10 = v1[14];
  __swift_project_boxed_opaque_existential_1(v2 + 10, v2[13]);
  sub_17A28();
  v11 = sub_3EE1F4();
  v13 = v12;
  v14 = sub_3E8074();
  LibraryActionControllerProtocol.makeAndSendMetricsEvent(adamId:actionType:pageType:)(v11, v13, v22, v4, v14, v15, v9, v10);

  v16 = v2[13];
  v17 = v2[14];
  __swift_project_boxed_opaque_existential_1(v2 + 10, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4B50);
  v18 = *(type metadata accessor for EpisodeOffer() - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_3F5630;
  sub_16A7C0(a1, v20 + v19, type metadata accessor for EpisodeOffer);
  (*(v17 + 312))(v20, v16, v17);
}

uint64_t sub_168F20(uint64_t *a1)
{
  v2 = type metadata accessor for EpisodeOffer();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(v6 + 16))
    {
      sub_16A7C0(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v5, type metadata accessor for EpisodeOffer);
      sub_168C9C(v5);

      return sub_16A760(v5, type metadata accessor for EpisodeOffer);
    }

    else
    {
    }
  }

  return result;
}

void sub_169048(void *a1)
{
  v60 = a1;
  v58 = sub_3E64E4();
  v61 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4E88);
  __chkstk_darwin(v2 - 8);
  v54 = (&v54 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8);
  __chkstk_darwin(v4 - 8);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = &v54 - v7;
  v8 = type metadata accessor for DownloadButtonPresenter.Data(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  v51._countAndFlagsBits = 0x8000000000428850;
  v65._object = 0x8000000000428830;
  v65._countAndFlagsBits = 0xD000000000000017;
  v68.value._countAndFlagsBits = 0;
  v68.value._object = 0;
  v13.super.isa = v12;
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  sub_3E5A74(v65, v68, v13, v71, v51);

  v14 = sub_3ED204();

  v15 = [objc_opt_self() alertControllerWithTitle:v14 message:0 preferredStyle:0];

  v16 = v59;
  v17 = [v11 mainBundle];
  v52._countAndFlagsBits = 0xE000000000000000;
  v66._countAndFlagsBits = 0x442065766F6D6552;
  v66._object = 0xEF64616F6C6E776FLL;
  v69.value._countAndFlagsBits = 0;
  v69.value._object = 0;
  v18.super.isa = v17;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  sub_3E5A74(v66, v69, v18, v72, v52);

  v19 = swift_allocObject();
  swift_weakInit();
  sub_16A7C0(v60, &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DownloadButtonPresenter.Data);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_16ADFC(&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for DownloadButtonPresenter.Data);
  *(v21 + ((v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;

  v22 = sub_3ED204();

  aBlock[4] = sub_16AE64;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_38C018;
  aBlock[3] = &block_descriptor_11;
  v23 = _Block_copy(aBlock);

  v24 = objc_opt_self();
  v25 = [v24 actionWithTitle:v22 style:2 handler:v23];
  _Block_release(v23);

  v60 = v25;
  [v15 addAction:v25];
  v26 = [v15 actions];
  sub_36174(0, &qword_4F1840);
  v27 = sub_3ED584();

  if (v27 >> 62)
  {
    v28 = sub_3EE5A4();
  }

  else
  {
    v28 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
  }

  v29 = v61;
  if (!v28)
  {

    return;
  }

  v30 = [v11 mainBundle];
  v53._countAndFlagsBits = 0xE000000000000000;
  v67._countAndFlagsBits = 0x6C65636E6143;
  v67._object = 0xE600000000000000;
  v70.value._countAndFlagsBits = 0;
  v70.value._object = 0;
  v31.super.isa = v30;
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  sub_3E5A74(v67, v70, v31, v73, v53);

  v32 = sub_3ED204();

  v33 = [v24 actionWithTitle:v32 style:1 handler:0];

  v57 = v15;
  [v15 addAction:v33];

  v34 = *(v29 + 56);
  v35 = v62;
  v36 = v58;
  v34(v62, 1, 1, v58);
  swift_getKeyPath();
  aBlock[0] = v16;
  sub_16A6D8(&qword_4F4B68, type metadata accessor for DownloadButtonPresenter);
  sub_3E6BC4();

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_10;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || !sub_3EDE24())
  {
    swift_unknownObjectRelease();
LABEL_10:
    swift_getKeyPath();
    v63 = v16;
    sub_3E6BC4();

    if (swift_unknownObjectWeakLoadStrong())
    {
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        v39 = v38;
        swift_getKeyPath();
        v63 = v16;
        sub_3E6BC4();

        if (swift_unknownObjectWeakLoadStrong() && (v40 = *(v16 + 24), ObjectType = swift_getObjectType(), v42 = (*(v40 + 8))(ObjectType, v40), swift_unknownObjectRelease(), v42))
        {
          v43 = v54;
          *v54 = v39;
          v44 = enum case for PresentationSource.Position.sourceItem(_:);
          v45 = sub_3E64D4();
          v46 = *(v45 - 8);
          (*(v46 + 104))(v43, v44, v45);
          (*(v46 + 56))(v43, 0, 1, v45);
          v47 = v55;
          sub_3E6494();
          v36 = v58;
          v34(v47, 0, 1, v58);
          sub_16AF80(v47, v62);
        }

        else
        {
          swift_unknownObjectRelease();
          v36 = v58;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_17;
  }

  v37 = v55;
  sub_3E6484();
  v34(v37, 0, 1, v36);
  sub_16AF80(v37, v35);
LABEL_17:
  v48 = v62;
  if ((*(v29 + 48))(v62, 1, v36))
  {
  }

  else
  {
    v49 = v56;
    (*(v29 + 16))(v56, v48, v36);
    v50 = v57;
    sub_3E64C4();

    (*(v29 + 8))(v49, v36);
  }

  sub_16AF18(v48);
}

uint64_t sub_169A14(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v3 - 8);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DownloadButtonPresenter.Data(0);
  __chkstk_darwin(v6);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_16A7C0(a2, v8, type metadata accessor for DownloadButtonPresenter.Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_16ADFC(v8, v5, type metadata accessor for EpisodeOffer);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        return sub_16A760(v5, type metadata accessor for EpisodeOffer);
      }

      sub_1F958(Strong + 80, v23);

      v11 = v24;
      v12 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v12 + 360))(*v5, v11, v12);
      sub_16A760(v5, type metadata accessor for EpisodeOffer);
    }

    else
    {
      v18 = *v8;
      swift_beginAccess();
      v19 = swift_weakLoadStrong();
      if (!v19)
      {
      }

      sub_1F958(v19 + 80, v23);

      v20 = v24;
      v21 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v21 + 360))(*(v18 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId), v20, v21);
    }
  }

  else
  {
    v13 = *v8;
    v14 = v8[1];
    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (!v15)
    {
    }

    sub_1F958(v15 + 80, v23);

    v16 = v24;
    v17 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v17 + 352))(v13, v14, 0, v16, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

uint64_t sub_169D10(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DownloadButtonPresenter.Data(0);
  __chkstk_darwin(v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  sub_3E6BF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4E90);
  sub_3EC444();
  sub_3ECD14();
  *(v1 + 72) = *&v15[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3ECD14();
  sub_1D4F0(v15, v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28);
  sub_3ECD14();
  sub_1D4F0(v15, v1 + 120);
  type metadata accessor for MetricsController();
  swift_allocObject();

  *(v1 + OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter__metricsController) = MetricsController.init(asPartOf:)();
  sub_16A7C0(a1, v1 + OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter__data, type metadata accessor for DownloadButtonPresenter.Data);
  sub_16A7C0(a1, v9, type metadata accessor for DownloadButtonPresenter.Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_16ADFC(v9, v6, type metadata accessor for EpisodeOffer);

      v11 = sub_3E8D64();

      sub_16A760(v6, type metadata accessor for EpisodeOffer);
    }

    else
    {
      type metadata accessor for LibraryEpisodeLockup();
      if (swift_dynamicCastClass())
      {

        v11 = sub_3E8D74();
      }

      else
      {

        v11 = sub_3E8D64();
      }
    }
  }

  else
  {

    v11 = sub_3E8D74();
  }

  *(v2 + OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter_stateMachine) = v11;
  *&v15[0] = sub_3E9434();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4E98);
  sub_16B078();
  v12 = sub_3EA1A4();

  sub_16704C(v12);
  sub_16A760(a1, type metadata accessor for DownloadButtonPresenter.Data);
  return v2;
}

uint64_t sub_16A1F4()
{
  result = type metadata accessor for DownloadButtonPresenter.Data(319);
  if (v1 <= 0x3F)
  {
    result = sub_3E6C04();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_16A4DC()
{
  result = type metadata accessor for EpisodeOffer();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LegacyEpisodeLockup();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DownloadButtonPresenter.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DownloadButtonPresenter.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_16A5AC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_16A5C8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_16A628()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC8ShelfKit23DownloadButtonPresenter__metricsController) = *(v0 + 24);
}

uint64_t sub_16A69C()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_16A6D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_16A720()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_16A760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_16A7C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_16A828()
{
  v1 = *(type metadata accessor for DownloadButtonPresenter.Data(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:

      v42 = type metadata accessor for EpisodeOffer();
      v7 = v5 + v42[6];

      v8 = type metadata accessor for ShowOffer();
      v9 = v7 + v8[7];
      v10 = sub_3E7784();
      v41 = *(*(v10 - 8) + 48);
      if (!v41(v9, 1, v10))
      {

        v11 = *(v9 + 32);
        if (v11 != 255)
        {
          sub_F2248(*(v9 + 16), *(v9 + 24), v11);
        }

        v12 = *(v9 + 64);
        if (v12 != 255)
        {
          sub_F2260(*(v9 + 56), v12);
        }

        v13 = *(v9 + 80);
        if (v13 != 255)
        {
          sub_F2260(*(v9 + 72), v13);
        }

        v14 = *(v9 + 96);
        if (v14 != 255)
        {
          sub_F2260(*(v9 + 88), v14);
        }

        v15 = *(v9 + 112);
        if (v15 != 255)
        {
          sub_F2260(*(v9 + 104), v15);
        }

        v16 = *(v9 + 128);
        if (v16 != 255)
        {
          sub_F2260(*(v9 + 120), v16);
        }

        v17 = *(v10 + 44);
        v18 = sub_3E7624();
        (*(*(v18 - 8) + 8))(v9 + v17, v18);
      }

      v43 = v4;

      v19 = v8[13];
      v20 = sub_3E5DC4();
      v21 = *(v20 - 8);
      v22 = *(v21 + 48);
      if (!v22(v7 + v19, 1, v20))
      {
        (*(v21 + 8))(v7 + v19, v20);
      }

      v23 = v8[16];
      if (!v22(v7 + v23, 1, v20))
      {
        (*(v21 + 8))(v7 + v23, v20);
      }

      v24 = v8[17];
      if (!v22(v7 + v24, 1, v20))
      {
        (*(v21 + 8))(v7 + v24, v20);
      }

      v25 = v42[7];
      v26 = v22(v5 + v25, 1, v20);
      v27 = *(v21 + 8);
      v4 = v43;
      if (!v26)
      {
        v27(v5 + v25, v20);
      }

      v27(v5 + v42[8], v20);

      v28 = v5 + v42[16];
      v3 = (v2 + 16) & ~v2;
      if (!v41(v28, 1, v10))
      {

        v29 = *(v28 + 32);
        if (v29 != 255)
        {
          sub_F2248(*(v28 + 16), *(v28 + 24), v29);
        }

        v30 = *(v28 + 64);
        if (v30 != 255)
        {
          sub_F2260(*(v28 + 56), v30);
        }

        v31 = *(v28 + 80);
        if (v31 != 255)
        {
          sub_F2260(*(v28 + 72), v31);
        }

        v32 = *(v28 + 96);
        if (v32 != 255)
        {
          sub_F2260(*(v28 + 88), v32);
        }

        v33 = *(v28 + 112);
        if (v33 != 255)
        {
          sub_F2260(*(v28 + 104), v33);
        }

        v34 = *(v28 + 128);
        if (v34 != 255)
        {
          sub_F2260(*(v28 + 120), v34);
        }

        v35 = *(v10 + 44);
        v36 = sub_3E7624();
        (*(*(v36 - 8) + 8))(v28 + v35, v36);
      }

      v37 = v42[22];
      v38 = sub_3E9354();
      v39 = *(v38 - 8);
      if (!(*(v39 + 48))(v5 + v37, 1, v38))
      {
        (*(v39 + 8))(v5 + v37, v38);
      }

      break;
    case 0:

      break;
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_16ADFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_16AE64(uint64_t a1)
{
  v3 = *(type metadata accessor for DownloadButtonPresenter.Data(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_169A14(a1, v4);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_16AF18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_16AF80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_16B00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadButtonPresenter.Data(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_16B078()
{
  result = qword_4F4EA0;
  if (!qword_4F4EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F4E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4EA0);
  }

  return result;
}

uint64_t sub_16B0DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  swift_beginAccess();
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return sub_16672C();
}

uint64_t sub_16B13C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  *(v1 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

void *FollowButtonPresenter.__allocating_init(data:displaySuccessHUD:asPartOf:)(uint64_t a1, char a2)
{
  swift_allocObject();
  v4 = sub_172674(a1, a2);

  return v4;
}

uint64_t sub_16B248()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_3E5DC4();
  __swift_allocate_value_buffer(v3, qword_4F4EA8);
  v4 = __swift_project_value_buffer(v3, qword_4F4EA8);
  sub_3E5D94();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t FollowButtonPresenter.Data.init(_:isExplicit:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for FollowButtonPresenter.Data(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    if (a3 == 1)
    {
      v14 = [objc_opt_self() sharedInstance];
      v15 = [v14 mainQueueContext];

      v29 = 0;
      v16 = [v15 existingObjectWithID:a1 error:&v29];

      v17 = v29;
      if (!v16)
      {
        v27 = v29;
        sub_3E5B84();

        swift_willThrow();
        sub_3DEF8(a1, a2, 1);

        v25 = 1;
        return (*(v11 + 56))(a5, v25, 1, v10);
      }

      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      v19 = v17;
      if (!v18 || (v20 = [v18 uuid]) == 0)
      {

        sub_3DEF8(a1, a2, 1);
        v25 = 1;
        return (*(v11 + 56))(a5, v25, 1, v10);
      }

      v21 = v20;
      v22 = sub_3ED244();
      v24 = v23;

      sub_3DEF8(a1, a2, 1);
      *v13 = v22;
      v13[1] = v24;
    }

    else
    {
      *v13 = a1;
      v13[1] = a2;
    }
  }

  else
  {
    *v13 = a1;
    *(v13 + 8) = a4 & 1;
  }

  swift_storeEnumTagMultiPayload();
  sub_1731B4(v13, a5, type metadata accessor for FollowButtonPresenter.Data);
  v25 = 0;
  return (*(v11 + 56))(a5, v25, 1, v10);
}

uint64_t FollowButtonPresenter.State.autoDownloadsLimit.getter(char a1, uint64_t a2)
{
  if ((a1 & 0xFE) == 2)
  {
    return 0x100000000;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_16B688(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[3] = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = v2[3];
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    sub_172E7C();
    sub_3E6BC4();

    (*(v4 + 8))(v2[4], v2[5], v2[6], ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*sub_16B784(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_16B818;
}

void sub_16B818(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = v4[3];
      ObjectType = swift_getObjectType();
      swift_getKeyPath();
      *v3 = v4;
      sub_172E7C();
      sub_3E6BC4();

      (*(v5 + 8))(v4[4], v4[5], v4[6], ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

void sub_16B93C(int a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  sub_172E7C();
  sub_3E6BC4();

  v6 = v2[4];
  if (v6 == 2)
  {
    if (a1 == 2)
    {
      return;
    }
  }

  else if (v6 == 3)
  {
    if (a1 == 3)
    {
      return;
    }
  }

  else if ((a1 & 0xFE) != 2 && ((v6 ^ a1) & 1) == 0 && v2[5] == a2)
  {
    v7 = sub_3E8C34();
    if (v7 == sub_3E8C34())
    {
      return;
    }
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = v3[3];
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    sub_3E6BC4();

    (*(v8 + 8))(v3[4], v3[5], v3[6], ObjectType, v8);
    swift_unknownObjectRelease();
  }

  v10 = *(v3 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_signposter);
  swift_getKeyPath();
  sub_3E6BC4();

  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v14 = (v10 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_state);
  v15 = *(v10 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_state);
  v16 = *(v10 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_state + 8);
  v17 = *(v10 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_state + 16);
  *v14 = v11;
  v14[1] = v12;
  v14[2] = v13;
  sub_170A54(v15, v16, v17, v11, v12, v13);
}

__n128 sub_16BB34@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_172E7C();
  sub_3E6BC4();

  v4 = v3[3].n128_u64[0];
  result = v3[2];
  *a2 = result;
  a2[1].n128_u64[0] = v4;
  return result;
}

uint64_t sub_16BBE8()
{
  swift_getKeyPath();
  sub_172E7C();
  sub_3E6BC4();

  return *(v0 + 32);
}

void sub_16BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[4];
  if (v7 == 2)
  {
    if (a1 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v7 == 3)
  {
    if (a1 != 3)
    {
LABEL_15:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_172E7C();
      sub_3E6BB4();

      return;
    }
  }

  else
  {
    if ((a1 & 0xFE) == 2)
    {
      goto LABEL_15;
    }

    if ((v7 ^ a1))
    {
      goto LABEL_15;
    }

    if (v3[5] != a2)
    {
      goto LABEL_15;
    }

    v8 = sub_3E8C34();
    if (v8 != sub_3E8C34())
    {
      goto LABEL_15;
    }

    v7 = v3[4];
  }

  v9 = v3[5];
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;

  sub_16B93C(v7, v9);
}

uint64_t sub_16BDF0()
{
  swift_getKeyPath();
  sub_172E7C();
  sub_3E6BC4();

  return *(v0 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityLevel);
}

uint64_t sub_16BE68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_172E7C();
  sub_3E6BC4();

  *a2 = *(v3 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityLevel);
  return result;
}

uint64_t sub_16BEE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityLevel;
  v4 = sub_3E8C34();
  result = sub_3E8C34();
  if (v4 == result)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_172E7C();
    sub_3E6BB4();
  }

  return result;
}

uint64_t sub_16BFDC()
{
  swift_getKeyPath();
  sub_172E7C();
  sub_3E6BC4();

  return *(v0 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityObserverToken);
}

uint64_t sub_16C05C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_172E7C();
  sub_3E6BC4();

  v5 = *(v3 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityObserverToken + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityObserverToken);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_16C0E8(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityObserverToken;
  if ((*(v2 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityObserverToken + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_172E7C();
  sub_3E6BB4();
}

uint64_t sub_16C1F8()
{
  swift_getKeyPath();
  sub_172E7C();
  sub_3E6BC4();
}

uint64_t sub_16C274@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_172E7C();
  sub_3E6BC4();

  *a2 = *(v3 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__metricsController);
}

uint64_t sub_16C2F8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__metricsController) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_172E7C();
    sub_3E6BB4();
  }
}

void *FollowButtonPresenter.init(data:displaySuccessHUD:asPartOf:)(uint64_t a1, char a2)
{
  v2 = sub_172674(a1, a2);

  return v2;
}

uint64_t sub_16C438()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_3E8A34();
      if (v8 >= 3)
      {
        v5 = v9;
        v2 = v10;
        v6 = v7[0];
        sub_F3B84(v7);
        if (v6)
        {
          swift_getKeyPath();
          sub_172E7C();
          sub_3E6BC4();

          v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityLevel);
          v4 = v5 & 1;
        }

        else
        {
          v2 = 0;
          v3 = 0;
          v4 = 2;
        }
      }

      else
      {
        v2 = 0;
        v3 = 0;
        v4 = qword_409220[v8];
      }

      sub_16BC5C(v4, v2, v3);
    }
  }

  return result;
}

uint64_t sub_16C578(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityLevel;
    v5 = sub_3E8C34();
    if (v5 == sub_3E8C34())
    {
      *(v3 + v4) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v12 = v3;
      sub_172E7C();
      sub_3E6BB4();
    }

    sub_3E8A34();
    if (v13 >= 3)
    {
      v10 = v14;
      v7 = v15;
      v11 = v12;
      sub_F3B84(&v12);
      if (v11)
      {
        swift_getKeyPath();
        sub_172E7C();
        sub_3E6BC4();

        v8 = *(v3 + v4);
        v9 = v10 & 1;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 2;
      }
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = qword_409220[v13];
    }

    sub_16BC5C(v9, v7, v8);
  }

  return result;
}

uint64_t FollowButtonPresenter.deinit()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter___observationRegistrar;
  sub_172E7C();
  sub_3E6BC4();

  if ((*(v0 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityObserverToken + 8) & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityObserverToken);
    sub_3E8C54();
    v4 = sub_3E8C44();
    sub_3E8C24(v3);
  }

  sub_13A0E0(v1 + 16);
  sub_173154(v1 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_data, type metadata accessor for FollowButtonPresenter.Data);

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryRemovalController);
  swift_unknownObjectRelease();

  v5 = sub_3E6C04();
  (*(*(v5 - 8) + 8))(v1 + v2, v5);
  return v1;
}

uint64_t FollowButtonPresenter.__deallocating_deinit()
{
  FollowButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_16C900(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v141 = a2;
  v149 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8);
  v139 = *(v6 - 8);
  v140 = *(v139 + 64);
  __chkstk_darwin(v6 - 8);
  v142 = v132 - v7;
  v8 = sub_3E63E4();
  __chkstk_darwin(v8 - 8);
  v147 = v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v10 - 8);
  v144 = v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v143 = v132 - v13;
  __chkstk_darwin(v14);
  v16 = v132 - v15;
  __chkstk_darwin(v17);
  v138 = v132 - v18;
  __chkstk_darwin(v19);
  v137 = v132 - v20;
  __chkstk_darwin(v21);
  v23 = v132 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v24 - 8);
  v145 = v132 - v25;
  v26 = type metadata accessor for ShowOffer();
  __chkstk_darwin(v26 - 8);
  v28 = (v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for FollowButtonPresenter.Data(0);
  __chkstk_darwin(v29);
  v31 = (v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a3[7];
  v172 = a3[6];
  v173 = v32;
  v174 = a3[8];
  v33 = a3[3];
  v168 = a3[2];
  v169 = v33;
  v34 = a3[5];
  v170 = a3[4];
  v171 = v34;
  v35 = a3[1];
  v166 = *a3;
  v167 = v35;
  swift_getKeyPath();
  v36 = OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter___observationRegistrar;
  *&v150 = v4;
  v37 = sub_172E7C();
  v148 = v36;
  v146 = v37;
  sub_3E6BC4();

  v39 = *(v4 + 32);
  if (v39 == 3)
  {
    return result;
  }

  if (v39 != 2)
  {
    sub_3E8A34();
    v42 = v163;
    if (v163 <= 2)
    {
      return sub_F3B84(v162);
    }

    v43 = v162[1];
    v44 = v149;
    sub_FBD0(v149, v16, &qword_5005B0);
    v45 = sub_3E6434();
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    v48 = v47(v16, 1, v45);
    v145 = v42;
    v138 = v43;
    if (v48 == 1)
    {
      sub_FCF8(v16, &qword_5005B0);
    }

    else
    {
      v56 = v147;
      sub_3E6404();
      (*(v46 + 8))(v16, v45);
      v57 = sub_126A3C();
      v59 = v58;
      sub_173154(v56, &type metadata accessor for InteractionContext.Page);
      if (v59)
      {
        v137 = v57;
        goto LABEL_17;
      }
    }

    v137 = sub_3E8034();
    v59 = v60;

LABEL_17:
    v61 = v143;
    sub_FBD0(v44, v143, &qword_5005B0);
    v62 = v47(v61, 1, v45);
    v143 = v59;
    if (v62 == 1)
    {
      sub_FCF8(v61, &qword_5005B0);
      v134 = 0;
      v135 = 0;
    }

    else
    {
      v63 = v61;
      v64 = v147;
      sub_3E6404();
      (*(v46 + 8))(v63, v45);
      v134 = sub_126D9C();
      v135 = v65;
      sub_173154(v64, &type metadata accessor for InteractionContext.Page);
    }

    v66 = v144;
    sub_FBD0(v44, v144, &qword_5005B0);
    if (v47(v66, 1, v45) == 1)
    {
      sub_FCF8(v66, &qword_5005B0);
LABEL_22:
      v67 = sub_3E8594();
LABEL_43:
      v147 = v67;
      v144 = v68;
      v84 = *(v4 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider);
      v85 = *(v4 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider + 8);
      ObjectType = swift_getObjectType();
      v87 = *(v85 + 16);
      v132[1] = v85 + 16;
      v132[2] = v84;
      v148 = v87;
      v149 = ObjectType;
      v133 = v85;
      v87(&v150, ObjectType, v85);
      v88 = *(&v151 + 1);
      v89 = v152;
      __swift_project_boxed_opaque_existential_1(&v150, *(&v151 + 1));
      swift_getKeyPath();
      v159[0] = v4;
      v136 = v4;
      sub_3E6BC4();

      v90 = *(v89 + 280);

      v90(v91, v88, v89);

      __swift_destroy_boxed_opaque_existential_1Tm(&v150);
      v148(v159, v149, v85);
      v92 = v160;
      v93 = v161;
      __swift_project_boxed_opaque_existential_1(v159, v160);
      v94 = sub_3E8514();
      v156 = v172;
      v157 = v173;
      v158 = v174;
      v152 = v168;
      v153 = v169;
      v154 = v170;
      v155 = v171;
      v150 = v166;
      v151 = v167;
      v95 = v138;
      v96 = v145;
      v93[34](v138, v145, v94, v97, v137, v143, v134, v135, v147, v144, &v150, v92, v93);

      __swift_destroy_boxed_opaque_existential_1Tm(v159);
      v148(&v150, v149, v133);
      v98 = *(&v151 + 1);
      v99 = v152;
      __swift_project_boxed_opaque_existential_1(&v150, *(&v151 + 1));
      v149 = (*(v99 + 48))(v95, v96, v98, v99);
      v100 = v142;
      sub_FBD0(v141, v142, &qword_4EB5B8);
      v101 = (*(v139 + 80) + 16) & ~*(v139 + 80);
      v102 = (v140 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
      v103 = swift_allocObject();
      sub_FACC(v100, v103 + v101, &qword_4EB5B8);
      *(v103 + v102) = v136;
      v104 = (v103 + ((v102 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v104 = v95;
      v104[1] = v96;
      v105 = sub_36174(0, &qword_4F10B0);

      v106 = sub_3EDBC4();
      v160 = v105;
      v161 = &protocol witness table for OS_dispatch_queue;
      v159[0] = v106;
      sub_3ECD94();

      v107 = v159;
LABEL_49:
      __swift_destroy_boxed_opaque_existential_1Tm(v107);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v150);
    }

    v69 = sub_3E6414();
    (*(v46 + 8))(v66, v45);
    if (v69 > 4u)
    {
      if (v69 != 5 && (v69 == 7 || v69 == 6))
      {
        goto LABEL_22;
      }
    }

    else if (v69 - 2 < 3)
    {
      v67 = sub_3E85B4();
      goto LABEL_43;
    }

    v67 = sub_3E8554();
    goto LABEL_43;
  }

  sub_173B40(v4 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_data, v31, type metadata accessor for FollowButtonPresenter.Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_16E650(*v31, v31[1], v149, a3);
  }

  v41 = v149;
  if (EnumCaseMultiPayload != 1)
  {
    v144 = *v31;
    v49 = *(v31 + 8);
    v50 = sub_3E5DC4();
    (*(*(v50 - 8) + 56))(v145, 1, 1, v50);
    sub_FBD0(v41, v23, &qword_5005B0);
    v51 = sub_3E6434();
    v52 = *(v51 - 8);
    v53 = *(v52 + 48);
    v54 = v53(v23, 1, v51);
    LODWORD(v143) = v49;
    if (v54 == 1)
    {
      sub_FCF8(v23, &qword_5005B0);
      v55 = v137;
    }

    else
    {
      v70 = v147;
      sub_3E6404();
      (*(v52 + 8))(v23, v51);
      v71 = sub_126A3C();
      v73 = v72;
      sub_173154(v70, &type metadata accessor for InteractionContext.Page);
      v55 = v137;
      if (v73)
      {
        goto LABEL_30;
      }
    }

    v71 = sub_3E8034();
    v73 = v74;

LABEL_30:
    v141 = v71;
    sub_FBD0(v41, v55, &qword_5005B0);
    v75 = v53(v55, 1, v51);
    v142 = v73;
    if (v75 == 1)
    {
      sub_FCF8(v55, &qword_5005B0);
      v140 = 0;
      v76 = 0;
    }

    else
    {
      v77 = v147;
      sub_3E6404();
      (*(v52 + 8))(v55, v51);
      v140 = sub_126D9C();
      v76 = v78;
      sub_173154(v77, &type metadata accessor for InteractionContext.Page);
    }

    v79 = v138;
    sub_FBD0(v41, v138, &qword_5005B0);
    v80 = v53(v79, 1, v51);
    v147 = v76;
    if (v80 == 1)
    {
      sub_FCF8(v79, &qword_5005B0);
LABEL_35:
      v81 = sub_3E8594();
LABEL_48:
      v138 = v81;
      v139 = v82;
      v108 = *(v4 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider);
      v109 = *(v4 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider + 8);
      v110 = swift_getObjectType();
      v148 = v109;
      v149 = v110;
      v111 = *(v109 + 16);
      v135 = v109 + 16;
      v137 = v111;
      v146 = v108;
      (v111)(&v150, v110, v109);
      v112 = *(&v151 + 1);
      v113 = v152;
      __swift_project_boxed_opaque_existential_1(&v150, *(&v151 + 1));
      swift_getKeyPath();
      v162[0] = v4;
      v136 = v4;
      sub_3E6BC4();

      v114 = *(v113 + 280);

      v114(v115, v112, v113);

      __swift_destroy_boxed_opaque_existential_1Tm(&v150);
      v116 = v109;
      v117 = v137;
      (v137)(v162, v149, v116);
      v118 = v164;
      v119 = v165;
      __swift_project_boxed_opaque_existential_1(v162, v164);
      *&v150 = v144;
      sub_17A28();
      v120 = sub_3EE1F4();
      v122 = v121;
      v123 = sub_3E84B4();
      v156 = v172;
      v157 = v173;
      v158 = v174;
      v152 = v168;
      v153 = v169;
      v154 = v170;
      v155 = v171;
      v150 = v166;
      v151 = v167;
      v119[32](v120, v122, v123, v124, v141, v142, v140, v147, v138, v139, &v150, v118, v119);

      __swift_destroy_boxed_opaque_existential_1Tm(v162);
      (v117)(&v150, v149, v148);
      v125 = *(&v151 + 1);
      v126 = v152;
      __swift_project_boxed_opaque_existential_1(&v150, *(&v151 + 1));
      v127 = *(v126 + 40);
      v131 = v126;
      v128 = v145;
      v127(v145, v144, 0, 0, 0, v143, *(v136 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_displaySuccessHUD), v125, v131);
      v129 = sub_36174(0, &qword_4F10B0);
      v130 = sub_3EDBC4();
      v164 = v129;
      v165 = &protocol witness table for OS_dispatch_queue;
      v162[0] = v130;
      sub_3ECD94();

      sub_FCF8(v128, &unk_4E9EE0);
      v107 = v162;
      goto LABEL_49;
    }

    v83 = sub_3E6414();
    (*(v52 + 8))(v79, v51);
    if (v83 > 4u)
    {
      if (v83 != 5 && (v83 == 6 || v83 == 7))
      {
        goto LABEL_35;
      }
    }

    else if (v83 - 2 < 3)
    {
      v81 = sub_3E85B4();
      goto LABEL_48;
    }

    v81 = sub_3E8554();
    goto LABEL_48;
  }

  sub_1731B4(v31, v28, type metadata accessor for ShowOffer);
  sub_3E8A34();
  if (v151 >= 3)
  {
    sub_16E650(*(&v150 + 1), v151, v41, a3);
    sub_F3B84(&v150);
  }

  else
  {
    sub_F3B84(&v150);
    sub_16EF28(v28, v41, a3);
  }

  return sub_173154(v28, type metadata accessor for ShowOffer);
}

uint64_t sub_16D988(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_3E64E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3E9A04();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v29 = a2;
    sub_3E99C4();
    v19 = sub_3E99F4();
    v20 = sub_3ED9D4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = a3;
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "Unsubscribe unsuccessful", v21, 2u);
      a3 = v28;
    }

    (*(v16 + 8))(v18, v15);
    a2 = v29;
  }

  sub_FBD0(a2, v10, &qword_4EB5B8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_FCF8(v10, &qword_4EB5B8);
  }

  (*(v12 + 32))(v14, v10, v11);
  v23 = (a3 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryRemovalController);
  v24 = *(a3 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryRemovalController + 24);
  v25 = *(a3 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryRemovalController + 32);
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v26 = (*(v25 + 8))(v30, v31, v24, v25);
  if (v26)
  {
    v27 = v26;
    sub_3E64C4();
  }

  return (*(v12 + 8))(v14, v11);
}

Class sub_16DCBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v72 = a1;
  v5 = sub_3ECB64();
  v68 = *(v5 - 8);
  v69 = v5;
  __chkstk_darwin(v5);
  v67 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8);
  v71 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  v70 = *(v10 - 8);
  v11 = *(v70 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v66 - v12;
  v14 = _swiftEmptyArrayStorage;
  v77 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter___observationRegistrar;
  v75 = v2;
  v73 = sub_172E7C();
  v74 = v15;
  sub_3E6BC4();

  if ((*(v2 + 32) & 0xFELL) != 2)
  {
    v66[4] = sub_36174(0, &qword_4EA880);
    v16 = [objc_opt_self() mainBundle];
    v65._countAndFlagsBits = 0xE000000000000000;
    v79._countAndFlagsBits = 0x574F4C4C4F464E55;
    v79._object = 0xED0000574F48535FLL;
    v85.value._countAndFlagsBits = 0;
    v85.value._object = 0;
    v17.super.isa = v16;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    v18 = sub_3E5A74(v79, v85, v17, v89, v65);
    v66[2] = v19;
    v66[3] = v18;

    v20 = sub_3ED204();
    v66[1] = [objc_opt_self() systemImageNamed:v20];

    v21 = swift_allocObject();
    swift_weakInit();
    sub_FBD0(v72, v13, &qword_5005B0);
    v72 = a2;
    sub_FBD0(a2, v9, &qword_4EB5B8);
    v22 = (*(v70 + 80) + 24) & ~*(v70 + 80);
    v23 = (v11 + *(v71 + 80) + v22) & ~*(v71 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    sub_FACC(v13, v24 + v22, &qword_5005B0);
    sub_FACC(v9, v24 + v23, &qword_4EB5B8);
    v25 = sub_3EDEF4();
    v75 = 0;
    v76 = 0xE000000000000000;
    v26 = v25;
    sub_3EE3C4(23);

    v75 = 0xD000000000000015;
    v76 = 0x8000000000428930;
    v27 = [v26 title];
    v28 = sub_3ED244();
    v30 = v29;

    v80._countAndFlagsBits = v28;
    v80._object = v30;
    sub_3ED3D4(v80);

    v31 = sub_3ED204();

    [v26 setAccessibilityIdentifier:v31];

    v32 = v26;
    sub_3ED564();
    if (*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v77 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_3ED5A4();
    }

    sub_3ED604();

    v14 = v77;
    a2 = v72;
  }

  v33 = sub_170390(a2);
  if (v33)
  {
    v75 = 0;
    v76 = 0xE000000000000000;
    v34 = v33;
    sub_3EE3C4(23);

    v75 = 0xD000000000000015;
    v76 = 0x8000000000428930;
    v35 = [v34 title];
    v36 = sub_3ED244();
    v38 = v37;

    v81._countAndFlagsBits = v36;
    v81._object = v38;
    sub_3ED3D4(v81);

    v39 = sub_3ED204();

    [v34 setAccessibilityIdentifier:v39];

    v40 = v34;
    sub_3ED564();
    if (*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v77 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_3ED5A4();
    }

    sub_3ED604();

    v14 = v77;
  }

  if (v14 >> 62)
  {
    v41 = sub_3EE5A4();
  }

  else
  {
    v41 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
  }

  if (v41 < 1)
  {

    return 0;
  }

  else
  {
    swift_getKeyPath();
    v75 = v3;
    sub_3E6BC4();

    v42 = OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityLevel;
    v43 = sub_3E8C34();
    if (v43 == sub_3E8C34())
    {
      swift_getKeyPath();
      v75 = v3;
      sub_3E6BC4();

      v44 = *(v3 + 32);
      if ((v44 & 0xFE) == 2 || (v44 & 1) == 0)
      {
        v47 = 0;
        v49 = 0xE000000000000000;
      }

      else
      {
        v45 = [objc_opt_self() mainBundle];
        v65._countAndFlagsBits = 0x8000000000428910;
        v82._object = 0x80000000004288F0;
        v82._countAndFlagsBits = 0xD000000000000015;
        v86.value._countAndFlagsBits = 0;
        v86.value._object = 0;
        v46.super.isa = v45;
        v90._countAndFlagsBits = 0;
        v90._object = 0xE000000000000000;
        v47 = sub_3E5A74(v82, v86, v46, v90, v65);
        v49 = v48;
      }
    }

    else
    {
      swift_getKeyPath();
      v75 = v3;
      sub_3E6BC4();

      v51 = *(v3 + v42);
      v52 = 0x80000000004288C0;
      v53 = 0xD000000000000021;
      if (v51 != 1)
      {
        v53 = 0;
        v52 = 0xE000000000000000;
      }

      if (v51 == 2)
      {
        v54 = 0xD000000000000022;
      }

      else
      {
        v54 = v53;
      }

      if (v51 == 2)
      {
        v55 = 0x8000000000428890;
      }

      else
      {
        v55 = v52;
      }

      v56 = [objc_opt_self() mainBundle];
      v65._countAndFlagsBits = 0xE000000000000000;
      v83._countAndFlagsBits = v54;
      v83._object = v55;
      v87.value._countAndFlagsBits = 0;
      v87.value._object = 0;
      v57.super.isa = v56;
      v91._countAndFlagsBits = 0;
      v91._object = 0xE000000000000000;
      sub_3E5A74(v83, v87, v57, v91, v65);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_3F5630;
      v59 = v67;
      sub_3ECB54();
      v60 = sub_3ECB44();
      v62 = v61;
      (*(v68 + 8))(v59, v69);
      *(v58 + 56) = &type metadata for String;
      *(v58 + 64) = sub_4F39C();
      *(v58 + 32) = v60;
      *(v58 + 40) = v62;
      v47 = sub_3ED214();
      v49 = v63;
    }

    sub_36174(0, &qword_4EB5D0);
    v84._countAndFlagsBits = v47;
    v84._object = v49;
    v88.value._countAndFlagsBits = 0;
    v88.value._object = 0;
    v78.value.super.isa = 0;
    v78.is_nil = 0;
    v64.value = 0;
    return sub_3EDE14(v84, v88, v78, v64, 0xFFFFFFFFFFFFFFFFLL, v14, v65._object).super.super.isa;
  }
}

uint64_t sub_16E650(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v65 = a2;
  v64 = a1;
  v6 = sub_3E63E4();
  __chkstk_darwin(v6 - 8);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v9 - 8);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v56 - v13;
  __chkstk_darwin(v15);
  v17 = v56 - v16;
  v18 = a4[7];
  v72[6] = a4[6];
  v72[7] = v18;
  v72[8] = a4[8];
  v19 = a4[3];
  v72[2] = a4[2];
  v72[3] = v19;
  v20 = a4[5];
  v72[4] = a4[4];
  v72[5] = v20;
  v21 = a4[1];
  v72[0] = *a4;
  v72[1] = v21;
  sub_FBD0(a3, v56 - v16, &qword_5005B0);
  v22 = sub_3E6434();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v17, 1, v22) == 1)
  {
    sub_FCF8(v17, &qword_5005B0);
  }

  else
  {
    sub_3E6404();
    (*(v23 + 8))(v17, v22);
    v25 = sub_126A3C();
    v27 = v26;
    sub_173154(v8, &type metadata accessor for InteractionContext.Page);
    if (v27)
    {
      goto LABEL_5;
    }
  }

  v25 = sub_3E8034();
  v27 = v28;

LABEL_5:
  sub_FBD0(a3, v14, &qword_5005B0);
  v29 = v24(v14, 1, v22);
  v62 = v25;
  if (v29 == 1)
  {
    sub_FCF8(v14, &qword_5005B0);
    v60 = 0;
    v30 = 0;
  }

  else
  {
    sub_3E6404();
    (*(v23 + 8))(v14, v22);
    v60 = sub_126D9C();
    v30 = v31;
    sub_173154(v8, &type metadata accessor for InteractionContext.Page);
  }

  sub_FBD0(a3, v11, &qword_5005B0);
  v32 = v24(v11, 1, v22);
  v63 = v27;
  v61 = v30;
  if (v32 != 1)
  {
    v35 = sub_3E6414();
    (*(v23 + 8))(v11, v22);
    if (v35 > 4u)
    {
      if (v35 != 5 && (v35 == 7 || v35 == 6))
      {
        goto LABEL_10;
      }
    }

    else if (v35 - 2 < 3)
    {
      v33 = sub_3E85B4();
      goto LABEL_18;
    }

    v33 = sub_3E8554();
    goto LABEL_18;
  }

  sub_FCF8(v11, &qword_5005B0);
LABEL_10:
  v33 = sub_3E8594();
LABEL_18:
  v58 = v33;
  v59 = v34;
  v36 = v67;
  v38 = *(v67 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider);
  v37 = *(v67 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider + 8);
  ObjectType = swift_getObjectType();
  v66 = *(v37 + 16);
  v56[2] = v38;
  v40 = ObjectType;
  v57 = v37;
  v66(v69, ObjectType, v37);
  v42 = v70;
  v41 = v71;
  v56[1] = __swift_project_boxed_opaque_existential_1(v69, v70);
  swift_getKeyPath();
  v68[0] = v36;
  sub_172E7C();
  sub_3E6BC4();

  v43 = *(v41 + 280);

  v43(v44, v42, v41);

  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  v66(v69, v40, v37);
  v46 = v70;
  v45 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  v47 = sub_3E84B4();
  v48 = v64;
  v49 = v65;
  (*(v45 + 272))(v64, v65, v47, v50, v62, v63, v60, v61, v58, v59, v72, v46, v45);

  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  v66(v69, v40, v57);
  v51 = v70;
  v52 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  (*(v52 + 56))(v48, v49, *(v67 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_displaySuccessHUD), v51, v52);
  v53 = sub_36174(0, &qword_4F10B0);
  v54 = sub_3EDBC4();
  v68[4] = &protocol witness table for OS_dispatch_queue;
  v68[3] = v53;
  v68[0] = v54;
  sub_3ECD94();

  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  return __swift_destroy_boxed_opaque_existential_1Tm(v69);
}

uint64_t sub_16ED5C()
{
  v0 = sub_3E9A04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99C4();
  swift_errorRetain();
  v4 = sub_3E99F4();
  v5 = sub_3ED9D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_3EE8F4();
    v10 = sub_2EDD0(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_16EF28(void *a1, uint64_t a2, _OWORD *a3)
{
  v6 = sub_3E63E4();
  __chkstk_darwin(v6 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v68 - v13;
  __chkstk_darwin(v15);
  v17 = &v68 - v16;
  v18 = a3[7];
  v90[6] = a3[6];
  v90[7] = v18;
  v90[8] = a3[8];
  v19 = a3[3];
  v90[2] = a3[2];
  v90[3] = v19;
  v20 = a3[5];
  v90[4] = a3[4];
  v90[5] = v20;
  v21 = a3[1];
  v90[0] = *a3;
  v90[1] = v21;
  v81 = *a1;
  v22 = type metadata accessor for ShowOffer();
  if (*(a1 + v22[10]) == 2)
  {
    v84 = 0;
  }

  else
  {
    v23 = sub_3E79D4();
    v25 = v24;
    v84 = 1;
    if (v23 != sub_3E79D4() || v25 != v26)
    {
      v84 = sub_3EE804();
    }
  }

  v28 = v22[12];
  v78 = v22[13];
  v82 = a1;
  v29 = (a1 + v28);
  v30 = *v29;
  v79 = v29[1];
  sub_FBD0(a2, v17, &qword_5005B0);
  v31 = sub_3E6434();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v17, 1, v31) == 1)
  {
    sub_FCF8(v17, &qword_5005B0);
  }

  else
  {
    sub_3E6404();
    (*(v32 + 8))(v17, v31);
    v83 = sub_126A3C();
    v35 = v34;
    sub_173154(v8, &type metadata accessor for InteractionContext.Page);
    if (v35)
    {
      goto LABEL_13;
    }
  }

  v83 = sub_3E8034();
  v35 = v36;

LABEL_13:
  sub_FBD0(a2, v14, &qword_5005B0);
  v37 = v33(v14, 1, v31);
  v77 = v35;
  if (v37 == 1)
  {
    sub_FCF8(v14, &qword_5005B0);
    v75 = 0;
    v38 = 0;
  }

  else
  {
    sub_3E6404();
    (*(v32 + 8))(v14, v31);
    v75 = sub_126D9C();
    v38 = v39;
    sub_173154(v8, &type metadata accessor for InteractionContext.Page);
  }

  sub_FBD0(a2, v11, &qword_5005B0);
  v40 = v33(v11, 1, v31);
  v80 = v30;
  v76 = v38;
  if (v40 != 1)
  {
    v43 = sub_3E6414();
    (*(v32 + 8))(v11, v31);
    if (v43 > 4u)
    {
      if (v43 != 5 && (v43 == 6 || v43 == 7))
      {
        goto LABEL_18;
      }
    }

    else if (v43 - 2 < 3)
    {
      v41 = sub_3E85B4();
      goto LABEL_26;
    }

    v41 = sub_3E8554();
    goto LABEL_26;
  }

  sub_FCF8(v11, &qword_5005B0);
LABEL_18:
  v41 = sub_3E8594();
LABEL_26:
  v73 = v41;
  v74 = v42;
  v44 = v85;
  v45 = *(v85 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider);
  v46 = *(v85 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider + 8);
  ObjectType = swift_getObjectType();
  v69 = *(v46 + 16);
  v70 = v45;
  v48 = ObjectType;
  v71 = ObjectType;
  v72 = v46;
  v69(v87);
  v49 = v88;
  v50 = v89;
  v68 = __swift_project_boxed_opaque_existential_1(v87, v88);
  swift_getKeyPath();
  v86[0] = v44;
  sub_172E7C();
  sub_3E6BC4();

  v51 = *(v50 + 280);

  v51(v52, v49, v50);

  __swift_destroy_boxed_opaque_existential_1Tm(v87);
  v53 = v48;
  v54 = v69;
  (v69)(v87, v53, v46);
  v55 = v88;
  v56 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  v57 = v81;
  v86[0] = v81;
  sub_17A28();
  v58 = sub_3EE1F4();
  v60 = v59;
  v61 = sub_3E84B4();
  (*(v56 + 256))(v58, v60, v61, v62, v83, v77, v75, v76, v73, v74, v90, v55, v56);

  __swift_destroy_boxed_opaque_existential_1Tm(v87);
  v54(v87, v71, v72);
  v63 = v88;
  v64 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  (*(v64 + 40))(&v82[v78], v57, 0, v80, v79, v84 & 1, *(v85 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_displaySuccessHUD), v63, v64);
  v65 = sub_36174(0, &qword_4F10B0);
  v66 = sub_3EDBC4();
  v86[4] = &protocol witness table for OS_dispatch_queue;
  v86[3] = v65;
  v86[0] = v66;
  sub_3ECD94();

  __swift_destroy_boxed_opaque_existential_1Tm(v86);
  return __swift_destroy_boxed_opaque_existential_1Tm(v87);
}

void sub_16F740(_BYTE *a1)
{
  v2 = sub_3E9A04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    sub_3E99C4();
    v6 = sub_3E99F4();
    v7 = sub_3ED9D4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Subscribe unsuccessful", v8, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_16F880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_F3BD8(v8);
    v7[6] = v8[6];
    v7[7] = v8[7];
    v7[8] = v8[8];
    v7[2] = v8[2];
    v7[3] = v8[3];
    v7[4] = v8[4];
    v7[5] = v8[5];
    v7[0] = v8[0];
    v7[1] = v8[1];
    sub_16C900(a3, a4, v7);
  }

  return result;
}

uint64_t sub_16F934(int a1, uint64_t a2)
{
  v19 = a2;
  v18 = a1;
  v3 = type metadata accessor for ShowOffer();
  __chkstk_darwin(v3 - 8);
  v17 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FollowButtonPresenter.Data(0);
  __chkstk_darwin(v5);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider + 8);
  ObjectType = swift_getObjectType();
  (*(v8 + 16))(v21, ObjectType, v8);
  v10 = v22;
  v11 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  swift_getKeyPath();
  v20 = v2;
  sub_172E7C();
  sub_3E6BC4();

  v12 = *(v11 + 280);

  v12(v13, v10, v11);

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  sub_173B40(v2 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_data, v7, type metadata accessor for FollowButtonPresenter.Data);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v15 = v17;
      sub_1731B4(v7, v17, type metadata accessor for ShowOffer);
      sub_16FBA0(v15, v18 & 1, v19);
      return sub_173154(v15, type metadata accessor for ShowOffer);
    }
  }

  else
  {
    sub_16FE60(*v7, v7[1], v18 & 1, v19);
  }

  return result;
}

uint64_t sub_16FBA0(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if ((a2 & 1) == 0)
  {
    v11 = *(v3 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider + 8);
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 16);
    v13(v31, ObjectType, v11);
    v19 = v32;
    v20 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v20 + 88))(a1, v19, v20);

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v16 = sub_3E8454();
LABEL_6:
    v21 = v16;
    v22 = v17;
    v23 = swift_getObjectType();
    v13(v31, v23, v11);
    v24 = v32;
    v25 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    sub_17A28();
    v26 = sub_3EE1F4();
    v28 = v27;
    v29 = sub_3E8034();
    LibraryActionControllerProtocol.makeAndSendMetricsEvent(adamId:actionType:pageType:)(v26, v28, v21, v22, v29, v30, v24, v25);

    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  v7 = sub_1700FC();
  swift_getKeyPath();
  v31[0] = v3;
  sub_172E7C();
  sub_3E6BC4();

  v8 = OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityLevel;
  v9 = sub_3E8C34();
  result = sub_3E8C34();
  if (v9 == result)
  {
    if (v7)
    {
      return result;
    }

    v11 = *(v4 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider + 8);
    v12 = swift_getObjectType();
    v13 = *(v11 + 16);
    v13(v31, v12, v11);
    v14 = v32;
    v15 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v15 + 72))(a1, v14, v15);

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v16 = sub_3E8444();
    goto LABEL_6;
  }

  swift_getKeyPath();
  v31[0] = v4;
  sub_3E6BC4();

  return sub_173BA8(a3, *(v4 + v8));
}

uint64_t sub_16FE60(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  if ((a3 & 1) == 0)
  {
    v13 = *(v4 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider + 8);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 16);
    v15(v30, ObjectType, v13);
    v21 = v31;
    v22 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v22 + 80))(a1, a2, v21, v22);

    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v18 = sub_3E8454();
LABEL_6:
    v23 = v18;
    v24 = v19;
    v25 = swift_getObjectType();
    v15(v30, v25, v13);
    v26 = v31;
    v27 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v28 = sub_3E8034();
    LibraryActionControllerProtocol.makeAndSendMetricsEvent(podcastUuid:actionType:pageType:)(a1, a2, v23, v24, v28, v29, v26, v27);

    return __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  v9 = sub_1700FC();
  swift_getKeyPath();
  v30[0] = v4;
  sub_172E7C();
  sub_3E6BC4();

  v10 = OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityLevel;
  v11 = sub_3E8C34();
  result = sub_3E8C34();
  if (v11 == result)
  {
    if (v9)
    {
      return result;
    }

    v13 = *(v5 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider + 8);
    v14 = swift_getObjectType();
    v15 = *(v13 + 16);
    v15(v30, v14, v13);
    v16 = v31;
    v17 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v17 + 64))(a1, a2, v16, v17);

    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v18 = sub_3E8444();
    goto LABEL_6;
  }

  swift_getKeyPath();
  v30[0] = v5;
  sub_3E6BC4();

  return sub_173BA8(a4, *(v5 + v10));
}

uint64_t sub_1700FC()
{
  v1 = type metadata accessor for ShowOffer();
  __chkstk_darwin(v1 - 8);
  v3 = &v21[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FollowButtonPresenter.Data(0);
  __chkstk_darwin(v4);
  v6 = (&v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v21[0] = v0;
  sub_172E7C();
  sub_3E6BC4();

  v7 = *(v0 + 32);
  if (v7 & 0xFE) != 2 && (v7)
  {
    sub_173B40(v0 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_data, v6, type metadata accessor for FollowButtonPresenter.Data);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v14 = *v6;
      v15 = v6[1];
      v16 = *(v0 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 16))(v21, ObjectType, v16);
      v18 = v22;
      v19 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v19 + 112))(v14, v15, v18, v19);

      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1731B4(v6, v3, type metadata accessor for ShowOffer);
      v9 = *(v0 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider + 8);
      v10 = swift_getObjectType();
      (*(v9 + 16))(v21, v10, v9);
      v11 = v22;
      v12 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v12 + 120))(v3, v11, v12);

      sub_173154(v3, type metadata accessor for ShowOffer);
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      return 1;
    }
  }

  return 0;
}

uint64_t sub_170390(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  swift_getKeyPath();
  v23 = v1;
  sub_172E7C();
  sub_3E6BC4();

  if ((*(v1 + 32) & 0xFELL) == 2)
  {
    return 0;
  }

  v21 = v4;
  v22 = a1;
  swift_getKeyPath();
  v23 = v1;
  sub_3E6BC4();

  if ((sub_3EDCE4() & 1) != 0 && ((swift_getKeyPath(), v23 = v1, sub_3E6BC4(), , v8 = *(v1 + 32), (v8 & 0xFE) == 2) || (v8 & 1) == 0) && (swift_getKeyPath(), v23 = v1, sub_3E6BC4(), , v9 = sub_3E8C34(), v9 == sub_3E8C34()))
  {
    v10 = [objc_opt_self() mainBundle];
    v19._countAndFlagsBits = 0x8000000000428C30;
    v24._countAndFlagsBits = 0xD000000000000017;
    v24._object = 0x8000000000428C10;
    v26.value._countAndFlagsBits = 0;
    v26.value._object = 0;
    v11.super.isa = v10;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v20 = sub_3E5A74(v24, v26, v11, v28, v19);
    v12 = 1;
  }

  else
  {
    v10 = [objc_opt_self() mainBundle];
    v19._countAndFlagsBits = 0x8000000000428BD0;
    v25._countAndFlagsBits = 0xD000000000000016;
    v25._object = 0x8000000000428BB0;
    v27.value._countAndFlagsBits = 0;
    v27.value._object = 0;
    v13.super.isa = v10;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v20 = sub_3E5A74(v25, v27, v13, v29, v19);
    v12 = 0;
  }

  v14 = sub_3ED204();
  v15 = [objc_opt_self() systemImageNamed:{v14, v20}];

  sub_36174(0, &qword_4EA880);
  v16 = swift_allocObject();
  swift_weakInit();
  sub_FBD0(v22, v6, &qword_4EB5B8);
  v17 = (*(v21 + 80) + 25) & ~*(v21 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v12;
  sub_FACC(v6, v18 + v17, &qword_4EB5B8);
  return sub_3EDEF4();
}

uint64_t sub_1707E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_16F934((a3 & 1) == 0, a4);
  }

  return result;
}

void sub_170858()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    if (qword_4E89D0 != -1)
    {
      swift_once();
    }

    v2 = sub_3E5DC4();
    __swift_project_value_buffer(v2, qword_4F4EA8);
    sub_3E5D14(v3);
    v5 = v4;
    sub_61EB0(_swiftEmptyArrayStorage);
    isa = sub_3ED084().super.isa;

    [v1 openSensitiveURL:v5 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_170970()
{
  sub_170A54(*(v0 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_state), *(v0 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_state + 8), *(v0 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_state + 16), 4, 0, 0);
  v1 = OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_signpostID;
  v2 = sub_3E97B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_173154(v0 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_data, type metadata accessor for FollowButtonPresenter.Data);

  return swift_deallocClassInstance();
}

void sub_170A54(int a1, NSObject *a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6)
{
  v217[2] = a6;
  v219 = a5;
  v217[1] = a3;
  v218 = a2;
  v8 = type metadata accessor for ShowOffer();
  __chkstk_darwin(v8 - 8);
  v228 = (v217 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v227 = (v217 - v11);
  __chkstk_darwin(v12);
  v226 = (v217 - v13);
  __chkstk_darwin(v14);
  v242 = v217 - v15;
  v245 = type metadata accessor for FollowButtonPresenter.Data(0);
  __chkstk_darwin(v245);
  v246 = (v217 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_3E9864();
  v243 = *(v17 - 8);
  v244 = v17;
  __chkstk_darwin(v17);
  v229 = v217 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v217 - v20;
  __chkstk_darwin(v22);
  v24 = v217 - v23;
  v25 = sub_3E9854();
  v26 = *(v25 - 8);
  v250 = v25;
  v251 = v26;
  __chkstk_darwin(v25);
  v225 = v217 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v224 = v217 - v29;
  __chkstk_darwin(v30);
  v223 = v217 - v31;
  __chkstk_darwin(v32);
  v232 = v217 - v33;
  __chkstk_darwin(v34);
  v235 = v217 - v35;
  __chkstk_darwin(v36);
  v231 = v217 - v37;
  __chkstk_darwin(v38);
  v230 = v217 - v39;
  __chkstk_darwin(v40);
  v234 = v217 - v41;
  __chkstk_darwin(v42);
  v233 = v217 - v43;
  __chkstk_darwin(v44);
  v46 = v217 - v45;
  __chkstk_darwin(v47);
  v49 = v217 - v48;
  __chkstk_darwin(v50);
  v52 = v217 - v51;
  v53 = sub_3E97B4();
  v252 = *(v53 - 8);
  v253 = v53;
  __chkstk_darwin(v53);
  v240 = v217 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v239 = v217 - v56;
  __chkstk_darwin(v57);
  v238 = v217 - v58;
  __chkstk_darwin(v59);
  v222 = v217 - v60;
  __chkstk_darwin(v61);
  v241 = v217 - v62;
  __chkstk_darwin(v63);
  v221 = v217 - v64;
  __chkstk_darwin(v65);
  v220 = v217 - v66;
  __chkstk_darwin(v67);
  v237 = v217 - v68;
  __chkstk_darwin(v69);
  v236 = v217 - v70;
  __chkstk_darwin(v71);
  v73 = v217 - v72;
  __chkstk_darwin(v74);
  v76 = v217 - v75;
  __chkstk_darwin(v77);
  v79 = v217 - v78;
  __chkstk_darwin(v80);
  v247 = a4;
  v248 = v217 - v81;
  if (a1 == 4)
  {
    goto LABEL_34;
  }

  if (a4 != 4)
  {
    if (a1 == 2)
    {
      if (a4 == 2)
      {
        return;
      }

      goto LABEL_13;
    }

    if (a1 == 3)
    {
      if (a4 == 3)
      {
        return;
      }

      goto LABEL_9;
    }

    if ((v247 & 0xFE) == 2)
    {
LABEL_17:
      v82 = v252;
      (*(v252 + 16))(v248, v249 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_signpostID, v253);
      sub_3E98A4();
      swift_allocObject();
      v93 = sub_3E9894();
      sub_3E9814();
      v94 = sub_3E9834();
      sub_3E9884();
      v95 = sub_3EDC74();
      v219 = v94;
      if (sub_3EE014())
      {

        v96 = v229;
        sub_3E98B4();
        v218 = v93;

        v98 = v243;
        v97 = v244;
        if ((*(v243 + 88))(v96, v244) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v99 = "[Error] Interval already ended";
        }

        else
        {
          (*(v98 + 8))(v96, v97);
          v99 = "";
        }

        v105 = swift_slowAlloc();
        *v105 = 0;
        v106 = sub_3E9794();
        v107 = v95;
        v108 = v219;
        _os_signpost_emit_with_name_impl(&dword_0, v219, v107, v106, "Follow Button ✅", v99, v105, 2u);
        v79 = v73;
        v83 = v108;
        v52 = v46;
LABEL_32:

        goto LABEL_33;
      }

      v79 = v73;
      v52 = v46;
      v83 = v219;
      goto LABEL_33;
    }

    if (((v247 ^ a1) & 1) == 0 && v218 == v219)
    {
      v219 = sub_3E8C34();
      if (v219 == sub_3E8C34())
      {
        return;
      }
    }
  }

  if (a1 == 2)
  {
LABEL_13:
    (*(v252 + 16))(v248, v249 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_signpostID, v253);
    sub_3E98A4();
    swift_allocObject();
    sub_3E9894();
    sub_3E9814();
    v83 = sub_3E9834();
    sub_3E9884();
    v88 = sub_3EDC74();
    if (sub_3EE014())
    {
      v89 = v83;

      sub_3E98B4();

      v91 = v243;
      v90 = v244;
      if ((*(v243 + 88))(v21, v244) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v92 = "[Error] Interval already ended";
      }

      else
      {
        (*(v91 + 8))(v21, v90);
        v92 = "";
      }

      v82 = v252;
      v102 = swift_slowAlloc();
      *v102 = 0;
      v103 = sub_3E9794();
      v104 = v92;
      v83 = v89;
      _os_signpost_emit_with_name_impl(&dword_0, v89, v88, v103, "Follow Button +", v104, v102, 2u);
      v79 = v76;
      v52 = v49;
      goto LABEL_32;
    }

    v79 = v76;
    v52 = v49;
    v82 = v252;
    goto LABEL_33;
  }

  if (a1 != 3)
  {
    goto LABEL_17;
  }

LABEL_9:
  v82 = v252;
  (*(v252 + 16))(v248, v249 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_signpostID, v253);
  sub_3E98A4();
  swift_allocObject();
  sub_3E9894();
  sub_3E9814();
  v83 = sub_3E9834();
  sub_3E9884();
  v84 = sub_3EDC74();
  if (sub_3EE014())
  {

    sub_3E98B4();

    v86 = v243;
    v85 = v244;
    if ((*(v243 + 88))(v24, v244) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v87 = "[Error] Interval already ended";
    }

    else
    {
      (*(v86 + 8))(v24, v85);
      v87 = "";
    }

    v100 = swift_slowAlloc();
    *v100 = 0;
    v101 = sub_3E9794();
    _os_signpost_emit_with_name_impl(&dword_0, v83, v84, v101, "Follow Button Spinner", v87, v100, 2u);
    goto LABEL_32;
  }

LABEL_33:

  (*(v82 + 8))(v79, v253);
  (*(v251 + 8))(v52, v250);
LABEL_34:
  if (a4 == 4)
  {
    return;
  }

  v109 = v249;
  v110 = v246;
  sub_173B40(v249 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_data, v246, type metadata accessor for FollowButtonPresenter.Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v112 = v252;
    if (EnumCaseMultiPayload == 1)
    {
      v113 = v242;
      sub_1731B4(v110, v242, type metadata accessor for ShowOffer);
      v114 = (v112 + 16);
      if (v247 == 2)
      {
        sub_3E9814();
        v156 = *v114;
        v157 = v241;
        (*v114)(v241, v109 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_signpostID, v253);
        v158 = v227;
        sub_173B40(v113, v227, type metadata accessor for ShowOffer);
        v159 = sub_3E9834();
        v160 = sub_3EDC84();
        if (sub_3EE014())
        {
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          *v161 = 141558275;
          *(v161 + 4) = 1752392040;
          *(v161 + 12) = 2085;
          v254 = *v158;
          v255 = v162;
          sub_C2A70();
          v163 = sub_3EE7A4();
          v164 = v158;
          v166 = v165;
          sub_173154(v164, type metadata accessor for ShowOffer);
          v167 = sub_2EDD0(v163, v166, &v255);

          *(v161 + 14) = v167;
          v168 = sub_3E9794();
          _os_signpost_emit_with_name_impl(&dword_0, v159, v160, v168, "Follow Button +", "AdamID: %{sensitive,mask.hash}s", v161, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v162);
          v157 = v241;
        }

        else
        {

          sub_173154(v158, type metadata accessor for ShowOffer);
        }

        v214 = v253;
        v156(v248, v157, v253);
        sub_3E98A4();
        swift_allocObject();
        sub_3E9894();

        (*(v112 + 8))(v157, v214);
        (*(v251 + 8))(v235, v250);
        goto LABEL_70;
      }

      if (v247 == 3)
      {
        v115 = v231;
        sub_3E9814();
        v116 = *v114;
        v117 = v221;
        (*v114)(v221, v109 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_signpostID, v253);
        v118 = v226;
        sub_173B40(v113, v226, type metadata accessor for ShowOffer);
        v119 = sub_3E9834();
        v120 = sub_3EDC84();
        if (sub_3EE014())
        {
          v121 = swift_slowAlloc();
          LODWORD(v249) = v120;
          v122 = v121;
          v123 = swift_slowAlloc();
          *v122 = 141558275;
          *(v122 + 4) = 1752392040;
          *(v122 + 12) = 2085;
          v254 = *v118;
          v255 = v123;
          sub_C2A70();
          v124 = sub_3EE7A4();
          v125 = v118;
          v127 = v126;
          sub_173154(v125, type metadata accessor for ShowOffer);
          v128 = sub_2EDD0(v124, v127, &v255);

          *(v122 + 14) = v128;
          v129 = sub_3E9794();
          _os_signpost_emit_with_name_impl(&dword_0, v119, v249, v129, "Follow Button Spinner", "AdamID: %{sensitive,mask.hash}s", v122, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v123);
          v130 = &v256;
LABEL_55:
          v115 = *(v130 - 32);

LABEL_57:
          v187 = v253;
          v116(v248, v117, v253);
          sub_3E98A4();
          swift_allocObject();
          sub_3E9894();

          (*(v112 + 8))(v117, v187);
          (*(v251 + 8))(v115, v250);
LABEL_70:
          sub_173154(v113, type metadata accessor for ShowOffer);
          return;
        }
      }

      else
      {
        v115 = v232;
        sub_3E9814();
        v116 = *v114;
        v117 = v222;
        (*v114)(v222, v109 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_signpostID, v253);
        v118 = v228;
        sub_173B40(v113, v228, type metadata accessor for ShowOffer);
        v119 = sub_3E9834();
        v177 = sub_3EDC84();
        if (sub_3EE014())
        {
          v178 = swift_slowAlloc();
          LODWORD(v249) = v177;
          v179 = v178;
          v180 = swift_slowAlloc();
          *v179 = 141558275;
          *(v179 + 4) = 1752392040;
          *(v179 + 12) = 2085;
          v254 = *v118;
          v255 = v180;
          sub_C2A70();
          v181 = sub_3EE7A4();
          v182 = v118;
          v184 = v183;
          sub_173154(v182, type metadata accessor for ShowOffer);
          v185 = sub_2EDD0(v181, v184, &v255);

          *(v179 + 14) = v185;
          v186 = sub_3E9794();
          _os_signpost_emit_with_name_impl(&dword_0, v119, v249, v186, "Follow Button ✅", "AdamID: %{sensitive,mask.hash}s", v179, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v180);
          v130 = &v257;
          goto LABEL_55;
        }
      }

      sub_173154(v118, type metadata accessor for ShowOffer);
      goto LABEL_57;
    }

    v143 = *v110;
    v144 = (v252 + 16);
    if (v247 == 2)
    {
      v145 = v224;
      sub_3E9814();
      v146 = *v144;
      v147 = v239;
      (*v144)(v239, v109 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_signpostID, v253);
      v148 = sub_3E9834();
      v198 = sub_3EDC84();
      if (sub_3EE014())
      {
        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v254 = v143;
        v255 = v200;
        *v199 = 141558275;
        *(v199 + 4) = 1752392040;
        *(v199 + 12) = 2085;
        sub_C2A70();
        v201 = sub_3EE7A4();
        v203 = sub_2EDD0(v201, v202, &v255);

        *(v199 + 14) = v203;
        v204 = sub_3E9794();
        _os_signpost_emit_with_name_impl(&dword_0, v148, v198, v204, "Follow Button +", "AdamID: %{sensitive,mask.hash}s", v199, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v200);
        v147 = v239;
        goto LABEL_64;
      }
    }

    else if (v247 == 3)
    {
      v145 = v223;
      sub_3E9814();
      v146 = *v144;
      v147 = v238;
      (*v144)(v238, v109 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_signpostID, v253);
      v148 = sub_3E9834();
      v149 = sub_3EDC84();
      if (sub_3EE014())
      {
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v254 = v143;
        v255 = v151;
        *v150 = 141558275;
        *(v150 + 4) = 1752392040;
        *(v150 + 12) = 2085;
        sub_C2A70();
        v152 = sub_3EE7A4();
        v154 = sub_2EDD0(v152, v153, &v255);

        *(v150 + 14) = v154;
        v155 = sub_3E9794();
        _os_signpost_emit_with_name_impl(&dword_0, v148, v149, v155, "Follow Button Spinner", "AdamID: %{sensitive,mask.hash}s", v150, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v151);
        v147 = v238;
LABEL_64:
      }
    }

    else
    {
      v145 = v225;
      sub_3E9814();
      v146 = *v144;
      v147 = v240;
      (*v144)(v240, v109 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_signpostID, v253);
      v148 = sub_3E9834();
      v205 = sub_3EDC84();
      if (sub_3EE014())
      {
        v206 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        v254 = v143;
        v255 = v207;
        *v206 = 141558275;
        *(v206 + 4) = 1752392040;
        *(v206 + 12) = 2085;
        sub_C2A70();
        v208 = sub_3EE7A4();
        v210 = sub_2EDD0(v208, v209, &v255);

        *(v206 + 14) = v210;
        v211 = sub_3E9794();
        _os_signpost_emit_with_name_impl(&dword_0, v148, v205, v211, "Follow Button ✅", "AdamID: %{sensitive,mask.hash}s", v206, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v207);
        v147 = v240;
        goto LABEL_64;
      }
    }

    v212 = v253;
    v146(v248, v147, v253);
    sub_3E98A4();
    swift_allocObject();
    sub_3E9894();

    (*(v112 + 8))(v147, v212);
    (*(v251 + 8))(v145, v250);
    return;
  }

  v132 = *v110;
  v131 = v110[1];
  v133 = v252;
  v134 = (v252 + 16);
  if (v247 == 2)
  {
    sub_3E9814();
    v169 = *v134;
    v170 = v237;
    (*v134)(v237, v109 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_signpostID, v253);

    v171 = sub_3E9834();
    v172 = sub_3EDC84();

    if (sub_3EE014())
    {
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v255 = v174;
      *v173 = 136446210;
      v175 = sub_2EDD0(v132, v131, &v255);

      *(v173 + 4) = v175;
      v176 = sub_3E9794();
      _os_signpost_emit_with_name_impl(&dword_0, v171, v172, v176, "Follow Button +", "UUID: %{public}s", v173, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v174);

      v170 = v237;
    }

    else
    {
    }

    v215 = v253;
    v169(v248, v170, v253);
    sub_3E98A4();
    swift_allocObject();
    sub_3E9894();

    (*(v133 + 8))(v170, v215);
    (*(v251 + 8))(v234, v250);
  }

  else if (v247 == 3)
  {
    sub_3E9814();
    v135 = *v134;
    v136 = v236;
    (*v134)(v236, v109 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_signpostID, v253);

    v137 = sub_3E9834();
    v138 = sub_3EDC84();

    if (sub_3EE014())
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v255 = v140;
      *v139 = 136446210;
      v141 = sub_2EDD0(v132, v131, &v255);

      *(v139 + 4) = v141;
      v142 = sub_3E9794();
      _os_signpost_emit_with_name_impl(&dword_0, v137, v138, v142, "Follow Button Spinner", "UUID: %{public}s", v139, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v140);

      v136 = v236;
    }

    else
    {
    }

    v213 = v253;
    v135(v248, v136, v253);
    sub_3E98A4();
    swift_allocObject();
    sub_3E9894();

    (*(v133 + 8))(v136, v213);
    (*(v251 + 8))(v233, v250);
  }

  else
  {
    v188 = v230;
    sub_3E9814();
    v189 = *v134;
    v190 = v220;
    (*v134)(v220, v109 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_signpostID, v253);

    v191 = sub_3E9834();
    v192 = sub_3EDC84();

    if (sub_3EE014())
    {
      v193 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      LODWORD(v249) = v192;
      v195 = v194;
      v255 = v194;
      *v193 = 136446210;
      v196 = sub_2EDD0(v132, v131, &v255);

      *(v193 + 4) = v196;
      v197 = sub_3E9794();
      _os_signpost_emit_with_name_impl(&dword_0, v191, v249, v197, "Follow Button ✅", "UUID: %{public}s", v193, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v195);

      v188 = v230;
    }

    else
    {
    }

    v216 = v253;
    v189(v248, v190, v253);
    sub_3E98A4();
    swift_allocObject();
    sub_3E9894();

    (*(v133 + 8))(v190, v216);
    (*(v251 + 8))(v188, v250);
  }
}

BOOL _s8ShelfKit21FollowButtonPresenterC5StateO2eeoiySbAE_AEtFZ_0(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a1 == 2)
  {
    return a4 == 2;
  }

  if (a1 == 3)
  {
    return a4 == 3;
  }

  if ((a4 & 0xFE) == 2)
  {
    return 0;
  }

  result = 0;
  if (((a4 ^ a1) & 1) == 0 && a2 == a5)
  {
    v7 = sub_3E8C34();
    return v7 == sub_3E8C34();
  }

  return result;
}

void *sub_172674(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_3E9854();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShowOffer();
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FollowButtonPresenter.Data(0);
  __chkstk_darwin(v11);
  v52 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 2;
  *(v2 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityLevel) = 0;
  v16 = v2 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityObserverToken;
  *v16 = 0;
  v16[8] = 1;
  sub_3E6BF4();
  *(v2 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_displaySuccessHUD) = a2;
  sub_173B40(a1, v2 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_data, type metadata accessor for FollowButtonPresenter.Data);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);
  sub_3EC444();
  sub_3ECD14();
  v17 = v2 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider;
  *(v2 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryDataProvider) = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5358);
  sub_3ECD14();
  sub_1D4F0(&v62, v2 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_libraryRemovalController);
  type metadata accessor for MetricsController();
  swift_allocObject();

  *(v2 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__metricsController) = MetricsController.init(asPartOf:)();
  v56 = a1;
  sub_173B40(a1, v15, type metadata accessor for FollowButtonPresenter.Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1731B4(v15, v10, type metadata accessor for ShowOffer);
      v19 = *(v17 + 1);
      ObjectType = swift_getObjectType();
      v21 = *(v19 + 48);
      swift_unknownObjectRetain();
      v21(ObjectType, v19);
      swift_unknownObjectRelease();
      v62 = 0uLL;
      v64 = 0;
      v65 = 0;
      v63 = 2;
      v22 = sub_3E8D94();

      sub_173154(v10, type metadata accessor for ShowOffer);
    }

    else
    {
      v26 = *(v17 + 1);
      v27 = swift_getObjectType();
      v28 = *(v26 + 48);
      swift_unknownObjectRetain();
      v28(v27, v26);
      swift_unknownObjectRelease();
      v62 = 0uLL;
      v64 = 0;
      v65 = 0;
      v63 = 2;
      v22 = sub_3E8D94();
    }
  }

  else
  {
    v23 = *(v17 + 1);
    v24 = swift_getObjectType();
    v25 = *(v23 + 48);
    swift_unknownObjectRetain();
    v25(v24, v23);
    swift_unknownObjectRelease();
    v62 = 0uLL;
    v64 = 0;
    v65 = 0;
    v63 = 2;
    v22 = sub_3E8DA4();
  }

  v30 = v55;
  v29 = v56;
  *(v3 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_stateMachine) = v22;
  v31 = v52;
  sub_173B40(v29, v52, type metadata accessor for FollowButtonPresenter.Data);
  type metadata accessor for FollowButtonPresenter.Signposter(0);
  v32 = swift_allocObject();
  v33 = v53;
  sub_3E9814();
  sub_3E9834();
  sub_3E9784();
  (*(v54 + 8))(v33, v30);
  v34 = (v32 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_state);
  v34[1] = 0;
  v34[2] = 0;
  *v34 = 4;
  sub_1731B4(v31, v32 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_data, type metadata accessor for FollowButtonPresenter.Data);
  *(v3 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_signposter) = v32;
  sub_3E8A34();
  if (v59 >= 3)
  {
    v38 = v60;
    v35 = v61;
    v39 = v58[0];
    sub_F3B84(v58);
    if (v39)
    {
      swift_getKeyPath();
      v57 = v3;
      sub_172E7C();
      sub_3E6BC4();

      v36 = *(v3 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityLevel);
      v37 = v38 & 1;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v37 = 2;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v37 = qword_409220[v59];
  }

  sub_16BC5C(v37, v35, v36);
  v40 = *(v3 + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter_signposter);
  swift_getKeyPath();
  v57 = v3;
  sub_172E7C();

  sub_3E6BC4();

  v41 = v3[4];
  v42 = v3[5];
  v43 = v3[6];
  v44 = (v40 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_state);
  v45 = *(v40 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_state);
  v46 = *(v40 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_state + 8);
  v47 = *(v40 + OBJC_IVAR____TtCC8ShelfKit21FollowButtonPresenterP33_C4252E2551203B4F11834AE826498F8D10Signposter_state + 16);
  *v44 = v41;
  v44[1] = v42;
  v44[2] = v43;
  sub_170A54(v45, v46, v47, v41, v42, v43);

  swift_allocObject();
  swift_weakInit();
  swift_retain_n();

  sub_3E8A24();

  sub_3E8C54();
  v48 = sub_3E8C44();
  swift_allocObject();
  swift_weakInit();

  v49 = sub_3E8C14();

  sub_16C0E8(v49, 0);
  sub_173154(v56, type metadata accessor for FollowButtonPresenter.Data);
  return v3;
}

unint64_t sub_172E7C()
{
  result = qword_4F4EC8;
  if (!qword_4F4EC8)
  {
    type metadata accessor for FollowButtonPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F4EC8);
  }

  return result;
}

uint64_t sub_172F5C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_3E64E4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_17309C(_BYTE *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_16D988(a1, v1 + v4, v6, v8, v9);
}

uint64_t sub_173154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1731B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_173248()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_173280()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);

  v9 = sub_3E6434();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = sub_3E64E4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  return _swift_deallocObject(v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_173498(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_16F880(a1, v7, v1 + v4, v8);
}

uint64_t sub_173588@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1735D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_16B688(v2, v1);
}

uint64_t sub_173630()
{
  result = type metadata accessor for FollowButtonPresenter.Data(319);
  if (v1 <= 0x3F)
  {
    result = sub_3E6C04();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_173868()
{
  type metadata accessor for ShowOffer();
  if (v0 <= 0x3F)
  {
    sub_1738E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1738E8()
{
  if (!qword_4F5230)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_4F5230);
    }
  }
}

uint64_t getEnumTagSinglePayload for FollowButtonPresenter.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[24])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  if (*a1 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFE) != 0))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FollowButtonPresenter.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1739F0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

void *sub_173A0C(void *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_173A6C()
{
  result = sub_3E97B4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FollowButtonPresenter.Data(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_173B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_173BA8(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v56 = sub_3E9A04();
  *&v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_3ECB64();
  v5 = *(v54 - 8);
  __chkstk_darwin(v54);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8);
  __chkstk_darwin(v8 - 8);
  v10 = &v49 - v9;
  v11 = sub_3E64E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD0(a1, v10, &qword_4EB5B8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_FCF8(v10, &qword_4EB5B8);
    sub_3E99A4();
    v15 = sub_3E99F4();
    v16 = sub_3ED9D4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Missing presentation source, skipping storage settings dialog.", v17, 2u);
    }

    return (*(v55 + 8))(v4, v56);
  }

  else
  {
    v51 = v12;
    v52 = v14;
    v19 = *(v12 + 32);
    v53 = v11;
    v19(v14, v10, v11);
    sub_3ECB54();
    v20 = sub_3ECB44();
    v50 = v20;
    v22 = v21;
    (*(v5 + 8))(v7, v54);
    v23 = objc_opt_self();
    v24 = [v23 mainBundle];
    v46._countAndFlagsBits = 0xE000000000000000;
    v59._countAndFlagsBits = 0xD00000000000002DLL;
    v59._object = 0x8000000000428AF0;
    v62.value._countAndFlagsBits = 0;
    v62.value._object = 0;
    v25.super.isa = v24;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    sub_3E5A74(v59, v62, v25, v65, v46);

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
    v26 = swift_allocObject();
    v55 = xmmword_3F5630;
    *(v26 + 16) = xmmword_3F5630;
    *(v26 + 56) = &type metadata for String;
    v27 = sub_4F39C();
    *(v26 + 64) = v27;
    *(v26 + 32) = v20;
    *(v26 + 40) = v22;

    sub_3ED214();

    v28 = sub_3ED204();

    aBlock[4] = sub_170858;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_38C018;
    aBlock[3] = &block_descriptor_12;
    v29 = _Block_copy(aBlock);

    v30 = objc_opt_self();
    v31 = [v30 actionWithTitle:v28 style:0 handler:v29];
    _Block_release(v29);

    v32 = [v23 mainBundle];
    v47._countAndFlagsBits = 0xE000000000000000;
    v60._countAndFlagsBits = 0x435F4E4F49544341;
    v60._object = 0xED00004C45434E41;
    v63.value._countAndFlagsBits = 0;
    v63.value._object = 0;
    v33.super.isa = v32;
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    sub_3E5A74(v60, v63, v33, v66, v47);

    v34 = sub_3ED204();

    v35 = [v30 actionWithTitle:v34 style:1 handler:0];

    v36 = 0x8000000000428B50;
    if (v57 == 1)
    {
      v37 = 0xD00000000000002ALL;
    }

    else
    {
      v37 = 0;
    }

    if (v57 != 1)
    {
      v36 = 0xE000000000000000;
    }

    if (v57 == 2)
    {
      v38 = 0xD00000000000002BLL;
    }

    else
    {
      v38 = v37;
    }

    if (v57 == 2)
    {
      v39 = 0x8000000000428B20;
    }

    else
    {
      v39 = v36;
    }

    v40 = [v23 mainBundle];
    v48._countAndFlagsBits = 0xE000000000000000;
    v61._countAndFlagsBits = v38;
    v61._object = v39;
    v64.value._countAndFlagsBits = 0;
    v64.value._object = 0;
    v41.super.isa = v40;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    sub_3E5A74(v61, v64, v41, v67, v48);

    v42 = swift_allocObject();
    *(v42 + 16) = v55;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = v27;
    *(v42 + 32) = v50;
    *(v42 + 40) = v22;
    sub_3ED214();

    v43 = sub_3ED204();

    v44 = [objc_opt_self() alertControllerWithTitle:v43 message:0 preferredStyle:0];

    [v44 addAction:v31];
    [v44 addAction:v35];
    v45 = v52;
    sub_3E64C4();

    return (*(v51 + 8))(v45, v53);
  }
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_17432C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__metricsController) = *(v0 + 24);
}

void sub_174370()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC8ShelfKit21FollowButtonPresenter__deviceCapacityObserverToken;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

void sub_1743A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = v1[4];
  v4 = v1[5];
  *(v1 + 2) = *(v0 + 24);
  v1[6] = v2;
  sub_16B93C(v3, v4);
}

uint64_t sub_1743EC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_3E64E4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_17450C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 25) & ~*(v3 + 80));

  return sub_1707E0(a1, v4, v5, v6);
}

uint64_t ReorderingExtension.canReorder.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FilterablePresenterStyle.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v2 != 1)
    {
      goto LABEL_8;
    }

    v2 = 1;
  }

  if (!*a2)
  {
    return v2 == v3;
  }

  if (v3 == 1)
  {
    v3 = 1;
    return v2 == v3;
  }

LABEL_8:
  result = sub_3EE844();
  __break(1u);
  return result;
}

void FilterablePresenterStyle.hash(into:)()
{
  v1 = *v0;
  if (!*v0)
  {
    goto LABEL_4;
  }

  if (v1 == 1)
  {
    v1 = 1;
LABEL_4:
    sub_3EE964(v1);
    return;
  }

  sub_3EE844();
  __break(1u);
}

Swift::Int FilterablePresenterStyle.hashValue.getter()
{
  v1 = *v0;
  sub_3EE954();
  if (!v1)
  {
    goto LABEL_4;
  }

  if (v1 == 1)
  {
    v1 = 1;
LABEL_4:
    sub_3EE964(v1);
    return sub_3EE9A4();
  }

  result = sub_3EE844();
  __break(1u);
  return result;
}

Swift::Int sub_174704()
{
  v1 = *v0;
  sub_3EE954();
  if (!v1)
  {
    goto LABEL_4;
  }

  if (v1 == 1)
  {
    v1 = 1;
LABEL_4:
    sub_3EE964(v1);
    return sub_3EE9A4();
  }

  result = sub_3EE844();
  __break(1u);
  return result;
}

uint64_t sub_17479C@<X0>(uint64_t *a1@<X8>)
{
  sub_1748BC(*v1, *(v1 + 8));
  result = sub_3ED2B4();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s8ShelfKit19FilterablePresenterPAAE5style7Combine19CurrentValueSubjectCyAA0cD5StyleOs5NeverOGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5378);
  swift_allocObject();
  return sub_3E9D94();
}

uint64_t sub_1748BC(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

unint64_t sub_1748D4()
{
  result = qword_4F5360;
  if (!qword_4F5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F5360);
  }

  return result;
}

unint64_t sub_174928(uint64_t a1)
{
  *(a1 + 8) = sub_174958();
  result = sub_1749AC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_174958()
{
  result = qword_4F5368;
  if (!qword_4F5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F5368);
  }

  return result;
}

unint64_t sub_1749AC()
{
  result = qword_4F5370;
  if (!qword_4F5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F5370);
  }

  return result;
}

uint64_t HeaderButtonItem.ButtonStyle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_174B04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x8000000000422F90;
  if (v2 == 1)
  {
    v4 = 0x8000000000422F90;
  }

  else
  {
    v4 = 0x8000000000422FB0;
  }

  if (*a1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v3 = 0x8000000000422FB0;
  }

  if (*a2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_3EE804();
  }

  return v9 & 1;
}

Swift::Int sub_174BD8()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_174C84()
{
  sub_3ED394();
}

Swift::Int sub_174D1C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_174DC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8ShelfKit16HeaderButtonItemO0D5StyleO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_174DF4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000000422F90;
  if (v2 != 1)
  {
    v4 = 0x8000000000422FB0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

ShelfKit::HeaderButtonItem::ProfilePictureDisplayMode_optional __swiftcall HeaderButtonItem.ProfilePictureDisplayMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_4B1DD8;
  v6._object = object;
  v3 = sub_3EE624(v2, v6);

  if (v3 == 1)
  {
    v4.value = ShelfKit_HeaderButtonItem_ProfilePictureDisplayMode_onlyCompact;
  }

  else
  {
    v4.value = ShelfKit_HeaderButtonItem_ProfilePictureDisplayMode_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t HeaderButtonItem.ProfilePictureDisplayMode.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x706D6F43796C6E6FLL;
  }

  else
  {
    return 0x737961776C61;
  }
}

uint64_t sub_174F9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x706D6F43796C6E6FLL;
  }

  else
  {
    v3 = 0x737961776C61;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEB00000000746361;
  }

  if (*a2)
  {
    v5 = 0x706D6F43796C6E6FLL;
  }

  else
  {
    v5 = 0x737961776C61;
  }

  if (*a2)
  {
    v6 = 0xEB00000000746361;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3EE804();
  }

  return v8 & 1;
}

Swift::Int sub_175048()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_1750D0()
{
  sub_3ED394();
}

Swift::Int sub_175144()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_1751C8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B1DD8;
  v8._object = v3;
  v5 = sub_3EE624(v4, v8);

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

void sub_175228(uint64_t *a1@<X8>)
{
  v2 = 0x737961776C61;
  if (*v1)
  {
    v2 = 0x706D6F43796C6E6FLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000746361;
  }

  *a1 = v2;
  a1[1] = v3;
}

BOOL HeaderButtonItem.isFollow.getter()
{
  v1 = type metadata accessor for HeaderButtonItem();
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_178B28(v0, v3, type metadata accessor for HeaderButtonItem);
  v4 = swift_getEnumCaseMultiPayload() == 3;
  sub_178B90(v3, type metadata accessor for HeaderButtonItem);
  return v4;
}

BOOL HeaderButtonItem.isContextMenu.getter()
{
  v1 = type metadata accessor for HeaderButtonItem();
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_178B28(v0, v3, type metadata accessor for HeaderButtonItem);
  v4 = swift_getEnumCaseMultiPayload() == 5;
  sub_178B90(v3, type metadata accessor for HeaderButtonItem);
  return v4;
}

BOOL sub_175498()
{
  v1 = type metadata accessor for HeaderButtonItem();
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_178B28(v0, v3, type metadata accessor for HeaderButtonItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_178B90(v3, type metadata accessor for HeaderButtonItem);
  }

  return EnumCaseMultiPayload == 8;
}

uint64_t static HeaderButtonItem.menu(id:title:subtitle:icon:style:glyph:active:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char *a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v29 = a1;
  v30 = a3;
  v34 = a8;
  v35 = a11;
  v32 = a5;
  v33 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v17 - 8);
  v19 = &v27 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5380);
  v21 = v20[12];
  v28 = v20[16];
  v31 = v20[20];
  sub_FBD0(a7, v19, &qword_4F1D50);
  v22 = type metadata accessor for ActionMenu(0);
  v23 = *(v22 + 28);
  v24 = sub_3E7784();
  (*(*(v24 - 8) + 56))(&a9[v23], 1, 1, v24);
  v25 = v30;
  *a9 = v29;
  *(a9 + 1) = a2;
  *(a9 + 2) = v25;
  *(a9 + 3) = a4;
  *(a9 + 4) = v32;
  *(a9 + 5) = a6;

  sub_F0030(v19, &a9[v23]);
  *&a9[*(v22 + 32)] = a12;
  a9[v21] = v34;
  sub_FBD0(v33, &a9[v28], &qword_4F5388);
  a9[v31] = v35;
  type metadata accessor for HeaderButtonItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_17574C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_3DF390(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t HeaderButtonItem.init(deserializing:using:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v261 = a2;
  v253 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5390);
  __chkstk_darwin(v4 - 8);
  v224 = &v217 - v5;
  v223 = type metadata accessor for ShowOffer();
  v222 = *(v223 - 8);
  __chkstk_darwin(v223);
  v221 = &v217 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDEA8);
  __chkstk_darwin(v7 - 8);
  v230 = &v217 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v235 = &v217 - v10;
  v237 = type metadata accessor for EpisodeOffer();
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v228 = &v217 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v233 = &v217 - v13;
  v254 = type metadata accessor for HeaderButtonItem();
  __chkstk_darwin(v254);
  v244 = &v217 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActionMenu(0);
  __chkstk_darwin(v15 - 8);
  v247 = &v217 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v252 = (&v217 - v18);
  v19 = sub_3EBF94();
  v262 = *(v19 - 8);
  v263 = v19;
  __chkstk_darwin(v19);
  v220 = &v217 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v227 = &v217 - v22;
  __chkstk_darwin(v23);
  v232 = &v217 - v24;
  __chkstk_darwin(v25);
  v239 = &v217 - v26;
  __chkstk_darwin(v27);
  v242 = &v217 - v28;
  __chkstk_darwin(v29);
  v243 = &v217 - v30;
  __chkstk_darwin(v31);
  v246 = &v217 - v32;
  __chkstk_darwin(v33);
  v250 = &v217 - v34;
  __chkstk_darwin(v35);
  v255 = &v217 - v36;
  v37 = type metadata accessor for LegacyActionMenu(0);
  __chkstk_darwin(v37 - 8);
  v251 = (&v217 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v39);
  v256 = (&v217 - v40);
  v41 = sub_3EBDF4();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v218 = &v217 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v219 = &v217 - v45;
  __chkstk_darwin(v46);
  v225 = &v217 - v47;
  __chkstk_darwin(v48);
  v226 = &v217 - v49;
  __chkstk_darwin(v50);
  v229 = &v217 - v51;
  __chkstk_darwin(v52);
  v231 = &v217 - v53;
  __chkstk_darwin(v54);
  v234 = &v217 - v55;
  __chkstk_darwin(v56);
  v238 = &v217 - v57;
  __chkstk_darwin(v58);
  v240 = &v217 - v59;
  __chkstk_darwin(v60);
  v241 = &v217 - v61;
  __chkstk_darwin(v62);
  v245 = &v217 - v63;
  __chkstk_darwin(v64);
  v248 = &v217 - v65;
  __chkstk_darwin(v66);
  v249 = &v217 - v67;
  __chkstk_darwin(v68);
  v70 = &v217 - v69;
  __chkstk_darwin(v71);
  v73 = &v217 - v72;
  __chkstk_darwin(v74);
  v76 = &v217 - v75;
  v77 = a1;
  sub_3EBE04();
  v78 = sub_3EBDC4();
  v80 = v79;
  v83 = *(v42 + 8);
  v81 = v42 + 8;
  v82 = v83;
  v83(v76, v41);
  if (!v80)
  {
    sub_3EBE04();
    v78 = sub_3EBDC4();
    v80 = v84;
    v82(v73, v41);
    if (!v80)
    {
      v111 = sub_3ECEE4();
      sub_1790DC(&qword_4E9AB8, &type metadata accessor for JSONError);
      swift_allocError();
      *v112 = 0x646E696B24;
      v112[1] = 0xE500000000000000;
      v112[2] = v254;
      (*(*(v111 - 8) + 104))(v112, enum case for JSONError.missingProperty(_:), v111);
      swift_willThrow();
      (*(v262 + 8))(v261, v263);
      return (v82)(v77, v41);
    }
  }

  v258 = v41;
  v259 = v82;
  v257 = v81;
  v85 = v77;
  v86 = 0x6E6F69746341;
  v87 = v262;
  if (v78 == 0x6E6F69746361 && v80 == 0xE600000000000000 || (sub_3EE804() & 1) != 0)
  {

    v88 = v77;
    sub_3EBE04();
    v89 = v255;
    v90 = v261;
    v91 = v263;
    (*(v87 + 16))(v255, v261, v263);
    v92 = v256;
    v93 = v260;
    LegacyActionMenu.init(deserializing:using:)(v70, v89, v256);
    if (v93)
    {
      (*(v87 + 8))(v90, v91);
      return v259(v88, v258);
    }

    else
    {
      v95 = v251;
      sub_178B28(v92, v251, type metadata accessor for LegacyActionMenu);
      v96 = v252;
      ActionMenu.init(from:)(v95, v252);
      (*(v87 + 8))(v90, v91);
      v259(v88, v258);
      sub_178B90(v92, type metadata accessor for LegacyActionMenu);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5380);
      v98 = v97[12];
      v99 = v97[16];
      v100 = v97[20];
      v101 = v253;
      sub_178AC0(v96, v253, type metadata accessor for ActionMenu);
      *(v101 + v98) = 0;
      v102 = sub_3E6AC4();
      (*(*(v102 - 8) + 56))(v101 + v99, 1, 1, v102);
      *(v101 + v100) = 0;
      return swift_storeEnumTagMultiPayload();
    }
  }

  if (v78 == 0x4D747865746E6F63 && v80 == 0xEB00000000756E65 || (sub_3EE804() & 1) != 0)
  {

    v103 = v249;
    v104 = v85;
    sub_3EBE04();
    v105 = v250;
    v106 = v261;
    v107 = v263;
    (*(v87 + 16))(v250, v261, v263);
    v108 = v260;
    v109 = sub_3DF3C4(v103, v105);
    v110 = v259;
    if (v108)
    {
      (*(v87 + 8))(v106, v107);
      return v110(v104, v258);
    }

    else
    {
      v113 = v109;
      v114 = v248;
      sub_3EBE04();
      sub_177D38(v114, v106, v113, &v265);
      v115 = v258;
      (*(v87 + 8))(v106, v107);
      v110(v104, v115);
      v110(v114, v115);
      sub_1D4F0(&v265, v253);
      return swift_storeEnumTagMultiPayload();
    }
  }

  v116 = v78;
  v117 = v78 == 1970169197;
  v118 = v259;
  if (v117 && v80 == 0xE400000000000000 || (sub_3EE804() & 1) != 0)
  {
    v259 = v118;

    v119 = v245;
    v256 = v77;
    sub_3EBE04();
    v120 = *(v87 + 16);
    v121 = v246;
    v122 = v261;
    v123 = v263;
    v120(v246, v261, v263);
    v124 = v247;
    v125 = v260;
    sub_3DDF80(v119, v121);
    v260 = v125;
    if (v125)
    {
      (*(v87 + 8))(v122, v123);
      return v259(v256, v258);
    }

    else
    {
      v126 = v124;
      v127 = v256;
      sub_3EBE04();
      v120(v243, v122, v123);
      sub_178A6C();
      sub_3EC574();
      (*(v87 + 8))(v122, v123);
      v259(v127, v258);
      v128 = v265;
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5380);
      v130 = v129[12];
      v131 = v244;
      sub_178AC0(v126, v244, type metadata accessor for ActionMenu);
      if (v128 == 3)
      {
        v132 = 0;
      }

      else
      {
        v132 = v128;
      }

      *(v131 + v130) = v132;
      v133 = v129[16];
      v134 = v129[20];
      v135 = sub_3E6AC4();
      (*(*(v135 - 8) + 56))(v131 + v133, 1, 1, v135);
      *(v131 + v134) = 0;
      swift_storeEnumTagMultiPayload();
      return sub_178AC0(v131, v253, type metadata accessor for HeaderButtonItem);
    }
  }

  if (v116 == 0x6B72616D6B6F6F62 && v80 == 0xE800000000000000 || (sub_3EE804() & 1) != 0)
  {

    v136 = v241;
    v137 = v77;
    sub_3EBE04();
    v138 = v242;
    v139 = v261;
    v140 = v263;
    (*(v87 + 16))(v242, v261, v263);
    v141 = v260;
    v142 = sub_3DF3C4(v136, v138);
    if (v141)
    {
      (*(v87 + 8))(v139, v140);
      return v118(v137, v258);
    }

    v143 = v142;
    v144 = v240;
    sub_3EBE04();
    sub_177D38(v144, v139, v143, &v265);
    v145 = v258;
    v260 = 0;
    v256 = v137;
    v118(v144, v258);
    sub_1F958(&v265, v264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5398);
    v152 = v235;
    v153 = v237;
    if (swift_dynamicCast())
    {
      (*(v87 + 8))(v139, v263);
      v118(v256, v145);
      __swift_destroy_boxed_opaque_existential_1Tm(&v265);
      (*(v236 + 56))(v152, 0, 1, v153);
      v154 = v233;
      sub_178AC0(v152, v233, type metadata accessor for EpisodeOffer);
      sub_178AC0(v154, v253, type metadata accessor for EpisodeOffer);
      type metadata accessor for BookmarkButtonPresenter.Data(0);
      swift_storeEnumTagMultiPayload();
      return swift_storeEnumTagMultiPayload();
    }

    v258 = v145;
    (*(v236 + 56))(v152, 1, 1, v153);
    sub_FCF8(v152, &qword_4EDEA8);
    v165 = sub_3ECEE4();
    sub_1790DC(&qword_4E9AB8, &type metadata accessor for JSONError);
    v260 = swift_allocError();
    v167 = v143;
    if (v143 > 3u)
    {
      if (v143 > 5u)
      {
        v168 = v258;
        if (v167 == 6)
        {
          v170 = 0x6566664F776F6853;
          v169 = 0xE900000000000072;
        }

        else
        {
          v169 = 0xE800000000000000;
          v170 = 0x79726F6765746143;
        }
      }

      else
      {
        v168 = v258;
        if (v167 == 4)
        {
          v170 = 0x4F65646F73697045;
        }

        else
        {
          v170 = 0x4F74736163646F50;
        }

        v169 = 0xEC00000072656666;
      }
    }

    else if (v143 > 1u)
    {
      v168 = v258;
      if (v167 == 2)
      {
        v170 = 0x4C6C656E6E616843;
      }

      else
      {
        v170 = 0x4C65646F73697045;
      }

      v169 = 0xED000070756B636FLL;
    }

    else
    {
      v168 = v258;
      if (v167)
      {
        v169 = 0xE600000000000000;
        v170 = 0x70756B636F4CLL;
      }

      else
      {
        v169 = 0xE600000000000000;
        v170 = 0x6E6F69746341;
      }
    }

    *v166 = v170;
    v166[1] = v169;
    v166[2] = v254;
    (*(*(v165 - 8) + 104))();
    swift_willThrow();
    (*(v87 + 8))(v139, v263);
    v118(v256, v168);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v265);
  }

  if (v116 == 0x64616F6C6E776F64 && v80 == 0xE800000000000000 || (sub_3EE804() & 1) != 0)
  {

    v146 = v238;
    v137 = v85;
    sub_3EBE04();
    v147 = v239;
    v148 = v261;
    v149 = v263;
    (*(v87 + 16))(v239, v261, v263);
    v150 = v260;
    v151 = sub_3DF3C4(v146, v147);
    if (v150)
    {
      (*(v87 + 8))(v148, v149);
      return v118(v137, v258);
    }

    v155 = v151;
    v156 = v234;
    sub_3EBE04();
    sub_177D38(v156, v148, v155, &v265);
    v157 = v258;
    v260 = 0;
    v256 = v137;
    v118(v156, v258);
    sub_1F958(&v265, v264);
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5398);
    v172 = v230;
    v255 = v171;
    v173 = v237;
    if (swift_dynamicCast())
    {
      (*(v87 + 8))(v148, v263);
      v118(v256, v157);
      __swift_destroy_boxed_opaque_existential_1Tm(&v265);
      (*(v236 + 56))(v172, 0, 1, v173);
      v174 = v172;
      v175 = v228;
      sub_178AC0(v174, v228, type metadata accessor for EpisodeOffer);
      sub_178AC0(v175, v253, type metadata accessor for EpisodeOffer);
      type metadata accessor for DownloadButtonPresenter.Data(0);
      swift_storeEnumTagMultiPayload();
      return swift_storeEnumTagMultiPayload();
    }

    (*(v236 + 56))(v172, 1, 1, v173);
    sub_FCF8(v172, &qword_4EDEA8);
    sub_1F958(&v265, v264);
    type metadata accessor for LegacyEpisodeLockup();
    if (swift_dynamicCast())
    {
      (*(v87 + 8))(v148, v263);
      v118(v256, v157);
      __swift_destroy_boxed_opaque_existential_1Tm(&v265);
      *v253 = v266;
      type metadata accessor for DownloadButtonPresenter.Data(0);
      swift_storeEnumTagMultiPayload();
      return swift_storeEnumTagMultiPayload();
    }

    v189 = v118;
    v190 = sub_3ECEE4();
    sub_1790DC(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    if (v155 > 3u)
    {
      if (v155 > 5u)
      {
        if (v155 == 6)
        {
          v193 = 0x6566664F776F6853;
          v192 = 0xE900000000000072;
        }

        else
        {
          v192 = 0xE800000000000000;
          v193 = 0x79726F6765746143;
        }
      }

      else
      {
        if (v155 == 4)
        {
          v193 = 0x4F65646F73697045;
        }

        else
        {
          v193 = 0x4F74736163646F50;
        }

        v192 = 0xEC00000072656666;
      }
    }

    else if (v155 > 1u)
    {
      if (v155 == 2)
      {
        v193 = 0x4C6C656E6E616843;
      }

      else
      {
        v193 = 0x4C65646F73697045;
      }

      v192 = 0xED000070756B636FLL;
    }

    else
    {
      v192 = 0xE600000000000000;
      if (v155)
      {
        v193 = 0x70756B636F4CLL;
      }

      else
      {
        v193 = 0x6E6F69746341;
      }
    }

    *v191 = v193;
    v191[1] = v192;
    v191[2] = v254;
    (*(*(v190 - 8) + 104))();
    swift_willThrow();
    (*(v262 + 8))(v261, v263);
    v189(v256, v157);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v265);
  }

  if (v116 == 0x776F6C6C6F66 && v80 == 0xE600000000000000 || (sub_3EE804() & 1) != 0)
  {
    v255 = 0x6E6F69746341;

    v158 = v231;
    v159 = v77;
    sub_3EBE04();
    v160 = v232;
    v161 = v261;
    v162 = v263;
    (*(v87 + 16))(v232, v261, v263);
    v163 = v260;
    v164 = sub_3DF3C4(v158, v160);
    if (v163)
    {
      (*(v87 + 8))(v161, v162);
      return v118(v159, v258);
    }

    v176 = v164;
    v177 = v229;
    sub_3EBE04();
    sub_177D38(v177, v161, v176, &v265);
    v178 = v258;
    v260 = 0;
    v256 = v159;
    v118(v177, v258);
    sub_1F958(&v265, v264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5398);
    v185 = v224;
    v186 = v223;
    if (swift_dynamicCast())
    {
      (*(v87 + 8))(v161, v162);
      v118(v256, v178);
      __swift_destroy_boxed_opaque_existential_1Tm(&v265);
      (*(v222 + 56))(v185, 0, 1, v186);
      v187 = v185;
      v188 = v221;
      sub_178AC0(v187, v221, type metadata accessor for ShowOffer);
      sub_178AC0(v188, v253, type metadata accessor for ShowOffer);
      type metadata accessor for FollowButtonPresenter.Data(0);
      swift_storeEnumTagMultiPayload();
      return swift_storeEnumTagMultiPayload();
    }

    (*(v222 + 56))(v185, 1, 1, v186);
    sub_FCF8(v185, &qword_4F5390);
    v202 = sub_3ECEE4();
    sub_1790DC(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    if (v176 > 3u)
    {
      if (v176 <= 5u)
      {
        if (v176 == 4)
        {
          v206 = 0x4F65646F73697045;
        }

        else
        {
          v206 = 0x4F74736163646F50;
        }

        v255 = v206;
        v204 = 0xEC00000072656666;
        goto LABEL_130;
      }

      if (v176 == 6)
      {
        v255 = 0x6566664F776F6853;
        v204 = 0xE900000000000072;
        goto LABEL_130;
      }

      v204 = 0xE800000000000000;
      v216 = 0x79726F6765746143;
    }

    else
    {
      if (v176 > 1u)
      {
        if (v176 == 2)
        {
          v211 = 0x4C6C656E6E616843;
        }

        else
        {
          v211 = 0x4C65646F73697045;
        }

        v255 = v211;
        v204 = 0xED000070756B636FLL;
        goto LABEL_130;
      }

      if (!v176)
      {
        v204 = 0xE600000000000000;
LABEL_130:
        *v203 = v255;
        v203[1] = v204;
        v203[2] = v254;
        (*(*(v202 - 8) + 104))();
        swift_willThrow();
        (*(v262 + 8))(v261, v263);
        v118(v256, v178);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v265);
      }

      v204 = 0xE600000000000000;
      v216 = 0x70756B636F4CLL;
    }

    v255 = v216;
    goto LABEL_130;
  }

  if (v116 == 0x657469726F766166 && v80 == 0xE800000000000000 || (sub_3EE804() & 1) != 0)
  {

    v179 = v226;
    v137 = v77;
    sub_3EBE04();
    v180 = v227;
    v181 = v261;
    v182 = v263;
    (*(v87 + 16))(v227, v261, v263);
    v183 = v260;
    v184 = sub_3DF3C4(v179, v180);
    if (v183)
    {
      (*(v87 + 8))(v181, v182);
      return v118(v137, v258);
    }

    v194 = v184;
    v195 = v225;
    sub_3EBE04();
    sub_177D38(v195, v181, v194, &v265);
    v118(v225, v258);
    sub_1F958(&v265, v264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5398);
    if (swift_dynamicCast())
    {
      (*(v262 + 8))(v261, v263);
      v118(v137, v258);
      __swift_destroy_boxed_opaque_existential_1Tm(&v265);
      v205 = v253;
      *v253 = v266;
      *(v205 + 8) = 0;
      return swift_storeEnumTagMultiPayload();
    }

    sub_1F958(&v265, v264);
    type metadata accessor for LegacyChannelLockup();
    if (swift_dynamicCast())
    {
      (*(v262 + 8))(v261, v263);
      v118(v137, v258);
      __swift_destroy_boxed_opaque_existential_1Tm(&v265);
      v209 = *(v266 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);

      v210 = v253;
      *v253 = v209;
      *(v210 + 8) = 1;
      return swift_storeEnumTagMultiPayload();
    }

    v213 = sub_3ECEE4();
    sub_1790DC(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    if (v194 > 3u)
    {
      if (v194 > 5u)
      {
        if (v194 == 6)
        {
          v86 = 0x6566664F776F6853;
          v215 = 0xE900000000000072;
        }

        else
        {
          v215 = 0xE800000000000000;
          v86 = 0x79726F6765746143;
        }
      }

      else
      {
        if (v194 == 4)
        {
          v86 = 0x4F65646F73697045;
        }

        else
        {
          v86 = 0x4F74736163646F50;
        }

        v215 = 0xEC00000072656666;
      }
    }

    else if (v194 > 1u)
    {
      if (v194 == 2)
      {
        v86 = 0x4C6C656E6E616843;
      }

      else
      {
        v86 = 0x4C65646F73697045;
      }

      v215 = 0xED000070756B636FLL;
    }

    else
    {
      v215 = 0xE600000000000000;
      if (v194)
      {
        v86 = 0x70756B636F4CLL;
      }
    }

    *v214 = v86;
    v214[1] = v215;
    v214[2] = v254;
    (*(*(v213 - 8) + 104))();
    swift_willThrow();
    (*(v262 + 8))(v261, v263);
    v118(v137, v258);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v265);
  }

  if (v116 == 0x6572616873 && v80 == 0xE500000000000000 || (sub_3EE804() & 1) != 0)
  {

    v196 = v219;
    sub_3EBE04();
    v197 = v220;
    (*(v262 + 16))(v220, v261, v263);
    v198 = v260;
    v199 = sub_3DF3C4(v196, v197);
    if (!v198)
    {
      v200 = v199;
      v201 = v218;
      sub_3EBE04();
      sub_177D38(v201, v261, v200, &v265);
      (*(v262 + 8))(v261, v263);
      v212 = v258;
      v118(v85, v258);
      v118(v218, v212);
      sub_1D4F0(&v265, v253);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v207 = sub_3ECEE4();
    sub_1790DC(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v208 = v116;
    v208[1] = v80;
    v208[2] = v254;
    (*(*(v207 - 8) + 104))(v208, enum case for JSONError.unknownCase(_:), v207);
    swift_willThrow();
  }

  (*(v262 + 8))(v261, v263);
  return v118(v85, v258);
}