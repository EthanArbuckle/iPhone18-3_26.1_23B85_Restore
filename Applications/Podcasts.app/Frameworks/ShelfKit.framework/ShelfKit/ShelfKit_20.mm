void (*ModernStationDetailPresenter.reorderingExtension.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  ModernStationDetailPresenter.reorderingExtension.getter(v3);
  return sub_21E46C;
}

void sub_21E46C(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v5 = (*a1)[6];
  v6 = **a1;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v5[3];
  v5[3] = v6;
  v5[4] = v7;
  v5[5] = v8;
  v5[6] = v9;
  v5[7] = v10;
  v5[8] = v4;
  if (a2)
  {
    sub_1FA524(v6);
    sub_1FA4B4(v11);
    sub_1FA4C4(*v3);
  }

  else
  {
    sub_1FA4B4(v11);
  }

  free(v3);
}

uint64_t ModernStationDetailPresenter.headerButtonItems.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t ModernStationDetailPresenter.pageHeader.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
}

uint64_t ModernStationDetailPresenter.dismiss.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t ModernStationDetailPresenter.paginatedPublisher.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;
}

uint64_t ModernStationDetailPresenter.interactionContextPage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_interactionContextPage;
  swift_beginAccess();
  return sub_223718(v1 + v3, a1, &type metadata accessor for InteractionContext.Page);
}

uint64_t ModernStationDetailPresenter.interactionContextPage.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_interactionContextPage;
  swift_beginAccess();
  sub_21E99C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_21E99C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E63E4();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ModernStationDetailPresenter.__allocating_init(asPartOf:with:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ModernStationDetailPresenter.init(asPartOf:with:)(a1, a2);
  return v4;
}

uint64_t ModernStationDetailPresenter.init(asPartOf:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  __chkstk_darwin(v6 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for PageContent();
  __chkstk_darwin(v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(a2 + 8);
  LOBYTE(v22[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  swift_allocObject();
  *(v3 + 16) = sub_3E9D94();
  *(v3 + 24) = 1;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *v11 = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  *(v3 + 72) = sub_3E9D94();
  *&v22[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A90);
  swift_allocObject();
  *(v3 + 80) = sub_3E9D94();
  v14 = sub_3E5764();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5558);
  swift_allocObject();
  *(v3 + 88) = sub_3E9D94();
  *&v22[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5580);
  swift_allocObject();
  *(v3 + 96) = sub_3E9D94();
  memset(v22, 0, 21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  *(v3 + 104) = sub_3E9D94();
  LOBYTE(v22[0]) = 0;
  swift_allocObject();
  *(v3 + 112) = sub_3E9D94();
  LOBYTE(v22[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F94C0);
  swift_allocObject();
  *(v3 + 128) = sub_3E9D94();
  *(v3 + 136) = 0;
  *(v3 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_interactionContextPage) = 2;
  sub_3E63E4();
  swift_storeEnumTagMultiPayload();
  *(v3 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_subscriptions) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_objectGraph) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);

  sub_3EC394();
  *(v3 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_libraryDataProvider) = v22[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();
  sub_1D4F0(v22, v3 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_libraryActionController);
  v15 = v12[3];
  v16 = (v3 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_stationUuid);
  *v16 = v12[2];
  v16[1] = v15;
  *(v3 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_station) = v12;
  swift_beginAccess();
  v17 = v12[5];
  v19[1] = v12[4];
  v19[2] = v17;
  v21 = -96;
  v20 = 0;

  sub_3E9D74();

  *(v3 + 120) = v13;
  return v3;
}

uint64_t sub_21EEFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA4B0);
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v32 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA4B8);
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v35 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA4C0);
  v7 = *(v6 - 8);
  v28 = v6;
  v29 = v7;
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = v0 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_libraryDataProvider;
  v11 = *(v0 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_libraryDataProvider);
  v12 = *(v10 + 8);
  ObjectType = swift_getObjectType();
  v14 = *(v1 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_stationUuid);
  v15 = *(v1 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_stationUuid + 8);
  v16 = *(v12 + 416);
  v30 = ObjectType;
  v31 = v11;
  v41 = v16(v14, v15);
  swift_allocObject();
  v38 = v1;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA4C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA4D0);
  v27 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_886BC(&qword_4FA4D8, &qword_4FA4C8);
  sub_886BC(&qword_4FA4E0, &qword_4FA4D0);
  sub_3EA054();

  sub_886BC(&qword_4FA4E8, &qword_4FA4C0);
  v17 = v28;
  v18 = sub_3E9F34();
  (*(v29 + 8))(v9, v17);
  v41 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA4F0);
  sub_886BC(&qword_4FA4F8, &qword_4FA4F0);
  v19 = sub_3E9F94();

  if (qword_4E89E8 != -1)
  {
    swift_once();
  }

  v20 = (*(v12 + 424))(v19, qword_4F5AA0, v30, v12);
  v21 = v38;
  swift_beginAccess();
  *(v21 + 136) = v20;

  v40 = v19;
  swift_allocObject();
  swift_weakInit();
  sub_3EA1A4();

  swift_beginAccess();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();

  v39 = v19;
  v40 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59A0);
  sub_886BC(&qword_4F59B0, &qword_4F59A0);
  v22 = v32;
  sub_3E9B54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5748);
  sub_886BC(&qword_4FA500, &qword_4FA4B0);
  v23 = v34;
  v24 = v35;
  sub_3EA024();
  (*(v33 + 8))(v22, v23);
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4FA508, &qword_4FA4B8);
  v25 = v37;
  sub_3EA1A4();

  (*(v36 + 8))(v24, v25);
  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();
}

uint64_t sub_21F648()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();

    sub_3E9D44();
  }

  type metadata accessor for StationDetail();
  return sub_3E9E04();
}

uint64_t sub_21F708(uint64_t *a1)
{
  v2 = sub_3E63E4();
  __chkstk_darwin(v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    *(result + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_station) = v5;
    swift_retain_n();

    sub_220334();

    v8 = *(v5 + OBJC_IVAR____TtC8ShelfKit13StationDetail_hidePlayedEpisodes);

    *v4 = v8;
    swift_storeEnumTagMultiPayload();
    v9 = OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_interactionContextPage;
    swift_beginAccess();
    sub_21E99C(v4, v7 + v9);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_21F84C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v48 = a1;
  v3 = type metadata accessor for ContentUnavailablePage();
  __chkstk_darwin(v3 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_3EC544();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v45 - v8;
  v53 = type metadata accessor for ModernPage();
  __chkstk_darwin(v53);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModernShelf();
  v45 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v12);
  v46 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5988);
  sub_3E95D4();
  v17 = sub_3E9544();
  sub_FCF8(v16, &qword_4F5978);
  if (v17)
  {
    *a2 = 1;
    v18 = type metadata accessor for PageContent();
  }

  else if (sub_3E95A4() < 1)
  {
    if (*(v48 + OBJC_IVAR____TtC8ShelfKit13StationDetail_showCount))
    {
      static ContentUnavailablePage.emptyStation.getter(v5);
    }

    else
    {
      static ContentUnavailablePage.emptyUnconfiguredStation(uuid:)(*(v48 + 16), *(v48 + 24), v5);
    }

    sub_223580(v5, a2, type metadata accessor for ContentUnavailablePage);
    v18 = type metadata accessor for PageContent();
  }

  else
  {
    v61 = 0;
    *&v62 = _swiftEmptyArrayStorage;
    *(&v62 + 1) = _swiftEmptyArrayStorage;
    sub_3E95D4();
    ModernShelfListBuilder.addImportantShelf(_:)();
    sub_FCF8(v16, &qword_4F5978);
    if (sub_3E95E4())
    {
      v19 = v47;
      static ModernShelf.loadingShelf(id:)(0x5365726F4D736168, 0xEC000000666C6568, v47);
      v20 = v46;
      sub_223718(v19, v46, type metadata accessor for ModernShelf);
      (*(v45 + 56))(v20, 0, 2, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
      sub_3E9504();
      v21 = v55;
      v22 = *(&v62 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_E02FC(0, v22[2] + 1, 1, v22);
      }

      v24 = v22[2];
      v23 = v22[3];
      if (v24 >= v23 >> 1)
      {
        v22 = sub_E02FC((v23 > 1), v24 + 1, 1, v22);
      }

      sub_FCF8(v20, &qword_4F5978);
      sub_223780(v19, type metadata accessor for ModernShelf);
      v22[2] = v24 + 1;
      v22[v24 + 4] = v21;
      *(&v62 + 1) = v22;
    }

    v25 = sub_3E8024();
    v27 = v26;
    v28 = sub_3E7B14();
    v30 = v29;
    v55 = v25;
    *&v56 = v27;
    v70._countAndFlagsBits = 95;
    v70._object = 0xE100000000000000;
    sub_3ED3D4(v70);
    v71._countAndFlagsBits = v28;
    v71._object = v30;
    sub_3ED3D4(v71);

    v31 = v54;
    sub_3ECCE4();
    v32 = sub_3E7B14();
    v34 = v33;
    v35 = sub_3E8024();
    v55 = v32;
    *&v56 = v34;
    *(&v56 + 1) = v35;
    v57 = v36;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v37 = v50;
    sub_3EC534();
    sub_3E67A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
    sub_3EC0B4();
    *(swift_allocObject() + 16) = xmmword_3F5310;
    sub_3EC084();
    sub_3EC074();
    MetricsPageFields.metricsFields.getter();
    v38 = v51;
    v39 = v52;
    (*(v51 + 16))(v49, v37, v52);
    v40 = v53;
    sub_3EC0C4();
    v69 = v63;
    sub_FCF8(&v69, &unk_4F8A10);
    v68 = v64;
    sub_FCF8(&v68, &qword_4E94E0);
    v67 = v65;
    sub_FCF8(&v67, &unk_4F8A20);
    sub_16AC0(v66);
    (*(v38 + 8))(v37, v39);

    LOBYTE(v55) = v61;
    v56 = v62;
    ModernShelfListBuilder.buildList()();
    v42 = v41;

    *(v31 + *(v40 + 24)) = v42;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
    sub_223718(v31, a2, type metadata accessor for ModernPage);
    LOBYTE(v42) = sub_3E66E4();
    sub_223780(v31, type metadata accessor for ModernPage);
    a2[v43] = v42;
    v18 = type metadata accessor for PageContent();
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
}

uint64_t sub_2200E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA510) + 48));

  return sub_21F84C(v3, a2);
}

uint64_t sub_220138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5748);
  __chkstk_darwin(v2 - 8);
  v4 = &v10[-v3];
  v5 = type metadata accessor for PageContent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_FBD0(a1, v4, &qword_4F5748);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_FCF8(v4, &qword_4F5748);
  }

  sub_223580(v4, v8, type metadata accessor for PageContent);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();

    sub_3E9D44();
  }

  return sub_223780(v8, type metadata accessor for PageContent);
}

uint64_t sub_220334()
{
  v1 = v0;
  v2 = sub_3E5DC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v20 = OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_station;
  v9 = *(v1 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_station);
  v10 = *(v9 + 40);
  v21 = *(v9 + 32);
  sub_3E6F24();
  v11 = *(v9 + OBJC_IVAR____TtC8ShelfKit13StationDetail_objectID);

  v12 = [v11 URIRepresentation];
  sub_3E5D44();

  v13 = sub_3E5CD4();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  v26 = v13;
  v27 = v15;
  sub_2237E0(&qword_4F1638, &type metadata accessor for StationEntity);
  sub_3E5754();
  v16 = sub_3E5764();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  sub_3E9D44();
  sub_FCF8(v8, &qword_4F09A0);
  swift_beginAccess();
  v22 = v21;
  v23 = v10;
  v25 = -96;
  v24 = 0;

  sub_3E9D44();

  sub_220630();
  sub_3E9D64();
  v17 = v22;
  if (v22)
  {

    v18 = sub_3ED204();

    [v17 setTitle:v18];
  }
}

uint64_t sub_220630()
{
  v0 = type metadata accessor for HeaderButtonItem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();

  sub_3E9D64();

  if (v18 == 1)
  {
    v4 = swift_allocObject();
    swift_weakInit();
    *v3 = sub_223560;
    v3[1] = v4;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1450);
    v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_3F5630;
    sub_223718(v3, v6 + v5, type metadata accessor for HeaderButtonItem);
    v17 = v6;

    sub_3E9D44();

    return sub_223780(v3, type metadata accessor for HeaderButtonItem);
  }

  else
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1450);
    v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_3F5630;
    v10 = v9 + v8;

    sub_220940((v9 + v8));
    if (_UISolariumEnabled())
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5380);
    v13 = v12[16];
    v14 = v12[20];
    *(v10 + v12[12]) = v11;
    v15 = sub_3E6AC4();
    (*(*(v15 - 8) + 56))(v10 + v13, 1, 1, v15);
    *(v10 + v14) = 0;
    swift_storeEnumTagMultiPayload();
    v17 = v9;
    sub_3E9D44();
  }
}

uint64_t sub_220940@<X0>(unint64_t *a1@<X8>)
{
  v69 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v2 - 8);
  v79 = &v64 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7C8);
  __chkstk_darwin(v4 - 8);
  v6 = (&v64 - v5);
  v7 = type metadata accessor for ActionMenu.Child(0);
  v8 = *(v7 - 8);
  v9 = v8;
  __chkstk_darwin(v7);
  v71 = (&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v64 - v12);
  __chkstk_darwin(v14);
  v16 = &v64 - v15;
  __chkstk_darwin(v17);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA828);
  v21 = *(v8 + 80);
  v22 = (v21 + 32) & ~v21;
  v78 = *(v8 + 72);
  v67 = v21;
  v68 = v20;
  v23 = swift_allocObject();
  v66 = xmmword_3F5630;
  *(v23 + 16) = xmmword_3F5630;
  v77 = v22;
  sub_220F90((v23 + v22));
  v74 = v1;
  sub_221650(v6);
  v24 = *(v9 + 48);
  v76 = v7;
  if (v24(v6, 1, v7) == 1)
  {
    sub_FCF8(v6, &qword_4EA7C8);
  }

  else
  {
    sub_223580(v6, v19, type metadata accessor for ActionMenu.Child);
    sub_223718(v19, v16, type metadata accessor for ActionMenu.Child);
    v26 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v26 >= v25 >> 1)
    {
      v23 = sub_E0140(v25 > 1, v26 + 1, 1, v23);
    }

    sub_223780(v19, type metadata accessor for ActionMenu.Child);
    *(v23 + 16) = v26 + 1;
    sub_223580(v16, v23 + v77 + v26 * v78, type metadata accessor for ActionMenu.Child);
  }

  v27 = sub_3E7784();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v30 = v28 + 56;
  v31 = v79;
  v29(v79, 1, 1, v27);
  v65 = sub_221D50();
  v32 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v34 = v33;
  v35 = type metadata accessor for ActionMenu(0);
  v36 = *(v35 + 28);
  v72 = v27;
  v73 = v30;
  v75 = v29;
  v29(v13 + v36, 1, 1, v27);
  *v13 = v32;
  v13[1] = v34;
  v13[2] = 0;
  v13[3] = 0xE000000000000000;
  v13[4] = 0;
  v13[5] = 0;
  sub_51F9C(v31, v13 + v36, &qword_4F1D50);
  v70 = v35;
  *(v13 + *(v35 + 32)) = v65;
  swift_storeEnumTagMultiPayload();
  v38 = *(v23 + 16);
  v37 = *(v23 + 24);
  if (v38 >= v37 >> 1)
  {
    v23 = sub_E0140(v37 > 1, v38 + 1, 1, v23);
  }

  v65 = v23;
  *(v23 + 16) = v38 + 1;
  v39 = v77;
  sub_223580(v13, v23 + v77 + v38 * v78, type metadata accessor for ActionMenu.Child);
  v40 = v79;
  v41 = v72;
  v42 = v75;
  v75(v79, 1, 1, v72);
  v43 = swift_allocObject();
  *(v43 + 16) = v66;
  sub_222180((v43 + v39));
  v44 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v46 = v45;
  v47 = v70;
  v48 = v71;
  v49 = *(v70 + 28);
  v42(v71 + v49, 1, 1, v41);
  *v48 = v44;
  v48[1] = v46;
  v48[2] = 0;
  v48[3] = 0xE000000000000000;
  v48[4] = 0;
  v48[5] = 0;
  sub_51F9C(v40, v48 + v49, &qword_4F1D50);
  v50 = v65;
  *(v48 + *(v47 + 32)) = v43;
  swift_storeEnumTagMultiPayload();
  v52 = v50[2];
  v51 = v50[3];
  if (v52 >= v51 >> 1)
  {
    v50 = sub_E0140(v51 > 1, v52 + 1, 1, v50);
  }

  v50[2] = v52 + 1;
  sub_223580(v71, v50 + v77 + v52 * v78, type metadata accessor for ActionMenu.Child);
  v53 = v79;
  sub_3E7774();
  v54 = v72;
  v55 = v75;
  v75(v53, 0, 1, v72);
  v56 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v58 = v57;
  v59 = v50;
  v61 = v69;
  v60 = v70;
  v62 = *(v70 + 28);
  v55(v69 + v62, 1, 1, v54);
  *v61 = v56;
  v61[1] = v58;
  v61[2] = 0;
  v61[3] = 0xE000000000000000;
  v61[4] = 0;
  v61[5] = 0;
  result = sub_51F9C(v53, v61 + v62, &qword_4F1D50);
  *(v61 + *(v60 + 32)) = v59;
  return result;
}

uint64_t sub_220F90@<X0>(unint64_t *a1@<X8>)
{
  v57 = a1;
  v1 = sub_3E5FC4();
  v61 = *(v1 - 8);
  v62 = v1;
  __chkstk_darwin(v1);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v56 = &v50 - v5;
  v6 = sub_3EC1F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  v13 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v13);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v16 - 8);
  v60 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  v21 = [objc_opt_self() mainBundle];
  v49._countAndFlagsBits = 0xE000000000000000;
  v65._object = 0x800000000042B2B0;
  v65._countAndFlagsBits = 0xD00000000000001DLL;
  v66.value._countAndFlagsBits = 0;
  v66.value._object = 0;
  v22.super.isa = v21;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  v23 = sub_3E5A74(v65, v66, v22, v67, v49);
  v58 = v24;
  v59 = v23;

  v51 = v20;
  sub_3E7774();
  v54 = sub_3E7784();
  v25 = *(v54 - 8);
  v53 = *(v25 + 56);
  v55 = v25 + 56;
  v53(v20, 0, 1, v54);
  v26 = *(v52 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_station);
  v27 = *(v26 + 24);
  *v15 = *(v26 + 16);
  v15[1] = v27;
  v50 = v15;
  swift_storeEnumTagMultiPayload();

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v28 = type metadata accessor for FlowAction(0);
  v29 = swift_allocObject();
  sub_223718(v15, v29 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v30 = (v29 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v30 = 0;
  v30[1] = 0;
  *(v29 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v29 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v29 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v31 = v9;
  v32 = v12;
  (*(v7 + 16))(v9, v12, v6);
  v33 = sub_3EC634();
  v34 = v56;
  (*(*(v33 - 8) + 56))(v56, 1, 1, v33);
  sub_3E5FB4();
  v35 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v37 = v36;
  (*(v61 + 8))(v3, v62);
  (*(v7 + 8))(v32, v6);
  sub_223780(v50, type metadata accessor for FlowDestination);
  *(v29 + 16) = v35;
  *(v29 + 24) = v37;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  *(v29 + 48) = 48;
  (*(v7 + 32))(v29 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v31, v6);
  sub_FACC(v34, v29 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v64[3] = v28;
  v64[4] = sub_2237E0(&qword_4F8A40, type metadata accessor for FlowAction);
  v64[0] = v29;
  v38 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v40 = v39;
  v41 = v60;
  sub_FACC(v51, v60, &qword_4F1D50);
  sub_FBD0(v64, v63, &qword_4EDE00);
  v42 = type metadata accessor for ActionMenu.Item(0);
  v43 = v42[7];
  v44 = v57;
  v53(v57 + v43, 1, 1, v54);
  v45 = v42[8];
  v46 = v44 + v42[10];
  *(v46 + 32) = 0;
  *v46 = 0u;
  *(v46 + 16) = 0u;
  *v44 = v38;
  v44[1] = v40;
  v47 = v58;
  v44[2] = v59;
  v44[3] = v47;
  v44[4] = 0;
  v44[5] = 0;
  sub_51F9C(v41, v44 + v43, &qword_4F1D50);
  *(v44 + v45) = 2;
  *(v44 + v42[9]) = 1;
  sub_51F9C(v63, v46, &qword_4EDE00);
  type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
  return sub_FCF8(v64, &qword_4EDE00);
}

uint64_t sub_221650@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_3E5FC4();
  v66 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - v8;
  v10 = sub_3EC1F4();
  v64 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v16 - 8);
  __chkstk_darwin(v17);
  v20 = &v54 - v19;
  if (*(*(v2 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_station) + OBJC_IVAR____TtC8ShelfKit13StationDetail_sortOrder) == 2)
  {
    v65 = v12;
    v61 = v18;
    v21 = [objc_opt_self() mainBundle];
    v57 = v4;
    v22 = v21;
    v53._countAndFlagsBits = 0x800000000042B260;
    v70._object = 0x800000000042B240;
    v70._countAndFlagsBits = 0xD000000000000010;
    v71.value._countAndFlagsBits = 0;
    v71.value._object = 0;
    v23.super.isa = v22;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    v24 = sub_3E5A74(v70, v71, v23, v72, v53);
    v62 = v25;
    v63 = v24;

    sub_3E7774();
    v59 = sub_3E7784();
    v26 = *(v59 - 8);
    v58 = *(v26 + 56);
    v60 = v26 + 56;
    v58(v20, 0, 1, v59);
    v27 = swift_allocObject();
    swift_weakInit();

    v28 = v15;
    v55 = v15;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v29 = type metadata accessor for ClosureAction();
    v30 = swift_allocObject();
    v31 = (v30 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v31 = sub_2236F8;
    v31[1] = v27;
    v32 = v64;
    (*(v64 + 16))(v65, v28, v10);
    v33 = sub_3EC634();
    (*(*(v33 - 8) + 56))(v9, 1, 1, v33);

    sub_3E5FB4();
    v56 = v20;
    v34 = v10;
    v35 = v6;
    v36 = v66;
    v37 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v54 = v9;
    v39 = v38;

    (*(v36 + 8))(v35, v57);
    (*(v32 + 8))(v55, v34);
    *(v30 + 16) = v37;
    *(v30 + 24) = v39;
    *(v30 + 32) = 0;
    *(v30 + 40) = 0;
    *(v30 + 48) = 32;
    (*(v32 + 32))(v30 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v65, v34);
    sub_FACC(v54, v30 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);

    v68[3] = v29;
    v68[4] = sub_2237E0(&qword_4F13D8, type metadata accessor for ClosureAction);
    v68[0] = v30;
    v40 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v42 = v41;
    v43 = v61;
    sub_FACC(v56, v61, &qword_4F1D50);
    sub_FBD0(v68, v67, &qword_4EDE00);
    v44 = type metadata accessor for ActionMenu.Item(0);
    v45 = v44[7];
    v58(a1 + v45, 1, 1, v59);
    v46 = v44[8];
    v47 = a1 + v44[10];
    *(v47 + 32) = 0;
    *v47 = 0u;
    *(v47 + 16) = 0u;
    *a1 = v40;
    a1[1] = v42;
    v48 = v62;
    a1[2] = v63;
    a1[3] = v48;
    a1[4] = 0;
    a1[5] = 0;
    sub_51F9C(v43, a1 + v45, &qword_4F1D50);
    *(a1 + v46) = 2;
    *(a1 + v44[9]) = 1;
    sub_51F9C(v67, v47, &qword_4EDE00);
    v49 = type metadata accessor for ActionMenu.Child(0);
    swift_storeEnumTagMultiPayload();
    sub_FCF8(v68, &qword_4EDE00);
    return (*(*(v49 - 8) + 56))(a1, 0, 1, v49);
  }

  else
  {
    v51 = type metadata accessor for ActionMenu.Child(0);
    v52 = *(*(v51 - 8) + 56);

    return v52(a1, 1, 1, v51);
  }
}

void *sub_221D50()
{
  v1 = type metadata accessor for ActionMenu.Child(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_station);
  v6 = *(v5 + OBJC_IVAR____TtC8ShelfKit13StationDetail_sortOrder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5300;
  *(inited + 32) = 256;
  *(inited + 34) = 4;
  HIDWORD(v30) = *(v5 + OBJC_IVAR____TtC8ShelfKit13StationDetail_grouped);
  if ((v30 & 0x100000000) != 0)
  {
    v8 = 3;
  }

  else
  {
    v9 = sub_E0924(&dword_0 + 1, 4, 1, inited);
    v8 = 4;
    inited = v9;
    *(v9 + 2) = 4;
    v9[35] = 2;
  }

  v33 = _swiftEmptyArrayStorage;
  sub_41E4C(0, v8, 0);
  v10 = v33;
  v11 = *(inited + 32);
  if (v11 == v6)
  {
    if (v6 == 4)
    {
      LOBYTE(v11) = 5;
    }

    else if (v6 == 1)
    {
      LOBYTE(v11) = 3;
    }

    else
    {
      LOBYTE(v11) = v6;
    }
  }

  v13 = v33[2];
  v12 = v33[3];
  if (v13 >= v12 >> 1)
  {
    sub_41E4C((v12 > 1), v13 + 1, 1);
    v10 = v33;
  }

  v10[2] = v13 + 1;
  *(v10 + v13 + 32) = v11;
  v14 = *(inited + 33);
  if (v14 == v6)
  {
    if (v6 == 4)
    {
      LOBYTE(v14) = 5;
    }

    else if (v6 == 1)
    {
      LOBYTE(v14) = 3;
    }

    else
    {
      LOBYTE(v14) = v6;
    }
  }

  v33 = v10;
  v16 = v10[2];
  v15 = v10[3];
  if (v16 >= v15 >> 1)
  {
    sub_41E4C((v15 > 1), v16 + 1, 1);
    v10 = v33;
  }

  v10[2] = v16 + 1;
  *(v10 + v16 + 32) = v14;
  v17 = *(inited + 34);
  if (v17 == v6)
  {
    if (v6 == 4)
    {
      LOBYTE(v17) = 5;
    }

    else if (v6 == 1)
    {
      LOBYTE(v17) = 3;
    }

    else
    {
      LOBYTE(v17) = v6;
    }
  }

  v31 = inited;
  v33 = v10;
  v19 = v10[2];
  v18 = v10[3];
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    sub_41E4C((v18 > 1), v20, 1);
    v20 = v19 + 1;
    v10 = v33;
  }

  v10[2] = v20;
  v21 = (v10 + 4);
  *(v10 + v19 + 32) = v17;
  if ((v30 & 0x100000000) == 0)
  {
    v22 = *(v31 + 35);
    if (v22 == v6)
    {
      if (v6 == 4)
      {
        LOBYTE(v22) = 5;
      }

      else if (v6 == 1)
      {
        LOBYTE(v22) = 3;
      }

      else
      {
        LOBYTE(v22) = v6;
      }
    }

    v33 = v10;
    v19 = v10[2];
    v23 = v10[3];
    v20 = v19 + 1;
    if (v19 >= v23 >> 1)
    {
      sub_41E4C((v23 > 1), v20, 1);
      v20 = v19 + 1;
      v10 = v33;
    }

    v10[2] = v20;
    v21 = (v10 + 4);
    *(v10 + v19 + 32) = v22;
  }

  v33 = _swiftEmptyArrayStorage;
  sub_41A30(0, v20, 0);
  v24 = v33;
  v25 = v19 + 1;
  do
  {
    v26 = *v21++;
    v32 = v26;
    sub_2228C4(&v32, v4);
    v33 = v24;
    v28 = v24[2];
    v27 = v24[3];
    if (v28 >= v27 >> 1)
    {
      sub_41A30(v27 > 1, v28 + 1, 1);
      v24 = v33;
    }

    v24[2] = v28 + 1;
    sub_223580(v4, v24 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v28, type metadata accessor for ActionMenu.Child);
    --v25;
  }

  while (v25);

  return v24;
}

uint64_t sub_222180@<X0>(unint64_t *a1@<X8>)
{
  v3 = sub_3E5FC4();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v59 = &v52 - v6;
  v58 = sub_3EC1F4();
  v52 = *(v58 - 8);
  v7 = v52;
  __chkstk_darwin(v58);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v9;
  __chkstk_darwin(v10);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v13 - 8);
  v64 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v18 = *(*(v1 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_station) + OBJC_IVAR____TtC8ShelfKit13StationDetail_hidePlayedEpisodes);
  v19 = [objc_opt_self() mainBundle];
  v51._countAndFlagsBits = 0xE000000000000000;
  v71._object = 0x800000000042B220;
  v71._countAndFlagsBits = 0xD000000000000014;
  v72.value._countAndFlagsBits = 0;
  v72.value._object = 0;
  v20.super.isa = v19;
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  v21 = sub_3E5A74(v71, v72, v20, v73, v51);
  v62 = v22;
  v63 = v21;

  v54 = v17;
  sub_3E7774();
  v56 = sub_3E7784();
  v23 = *(v56 - 8);
  v55 = *(v23 + 56);
  v57 = v23 + 56;
  v55(v17, 0, 1, v56);
  v60 = v18 ^ 1;
  v25 = *(v1 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_stationUuid);
  v24 = *(v1 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_stationUuid + 8);
  sub_1F958(v1 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_libraryActionController, &v68);
  v26 = swift_allocObject();
  sub_1D4F0(&v68, v26 + 16);
  *(v26 + 56) = v25;
  *(v26 + 64) = v24;
  *(v26 + 72) = v18;

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v27 = type metadata accessor for ClosureAction();
  v28 = swift_allocObject();
  v29 = (v28 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v29 = sub_223628;
  v29[1] = v26;
  v30 = *(v7 + 16);
  v31 = v9;
  v32 = v12;
  v33 = v58;
  v30(v31, v12, v58);
  v34 = sub_3EC634();
  v35 = v59;
  (*(*(v34 - 8) + 56))(v59, 1, 1, v34);

  v36 = v61;
  sub_3E5FB4();
  v37 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v39 = v38;

  (*(v65 + 8))(v36, v66);
  v40 = v52;
  (*(v52 + 8))(v32, v33);
  *(v28 + 16) = v37;
  *(v28 + 24) = v39;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  *(v28 + 48) = 32;
  (*(v40 + 32))(v28 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v53, v33);
  sub_FACC(v35, v28 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v69 = v27;
  v70 = sub_2237E0(&qword_4F13D8, type metadata accessor for ClosureAction);
  *&v68 = v28;
  v41 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v43 = v42;
  v44 = v64;
  sub_FACC(v54, v64, &qword_4F1D50);
  sub_FBD0(&v68, v67, &qword_4EDE00);
  v45 = type metadata accessor for ActionMenu.Item(0);
  v46 = v45[7];
  v55(a1 + v46, 1, 1, v56);
  v47 = v45[8];
  v48 = a1 + v45[10];
  *(v48 + 32) = 0;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  *a1 = v41;
  a1[1] = v43;
  v49 = v62;
  a1[2] = v63;
  a1[3] = v49;
  a1[4] = 0;
  a1[5] = 0;
  sub_51F9C(v44, a1 + v46, &qword_4F1D50);
  *(a1 + v47) = 2;
  *(a1 + v45[9]) = v60;
  sub_51F9C(v67, v48, &qword_4EDE00);
  type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
  return sub_FCF8(&v68, &qword_4EDE00);
}

uint64_t sub_2227FC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();

    sub_3E9D44();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220630();
  }

  return result;
}

uint64_t sub_2228C4@<X0>(unsigned __int8 *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v60 = a2;
  v65 = sub_3E5FC4();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v6 - 8);
  v64 = &v51 - v7;
  v55 = sub_3EC1F4();
  v8 = *(v55 - 8);
  __chkstk_darwin(v55);
  v67 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v13 - 8);
  v15 = &v51 - v14;
  v16 = *a1;
  v17 = *(v3 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_station);
  v18 = *(v17 + 16);
  v19 = *(v17 + 24);
  v20 = *(v17 + OBJC_IVAR____TtC8ShelfKit13StationDetail_sortOrder);
  swift_beginAccess();
  v21 = *(v3 + 16);
  v72 = v16;

  v22 = StationSortOrder.displayTitle.getter();
  v61 = v23;
  v62 = v22;
  LOBYTE(v69) = v16;
  v68[0] = v20;
  v24 = StationSortOrder.displaySubtitle(currentSortOrder:)(v68);
  object = v24.value._object;
  v25 = sub_3E7784();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v66 = v15;
  v56 = v25;
  v54 = v27;
  v53 = v26 + 56;
  (v27)(v15, 1, 1);
  if (v16 == 5)
  {
    v28 = 4;
  }

  else if (v16 == 3)
  {
    v28 = 1;
  }

  else
  {
    v28 = v16;
  }

  countAndFlagsBits = v24.value._countAndFlagsBits;
  if (v20 == 3)
  {
    if (v28 == 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    v52 = 1;
    goto LABEL_12;
  }

  if (v20 != 5)
  {
    if (v28 == v20)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v28 != 4)
  {
    goto LABEL_11;
  }

LABEL_9:
  v52 = 0;
LABEL_12:
  sub_1F958(v3 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_libraryActionController, &v69);
  v29 = swift_allocObject();
  *(v29 + 16) = v16;
  *(v29 + 24) = v21;
  v51 = v21;
  sub_1D4F0(&v69, v29 + 32);
  *(v29 + 72) = v18;
  *(v29 + 80) = v19;

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v30 = type metadata accessor for ClosureAction();
  v31 = swift_allocObject();
  v32 = (v31 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v32 = sub_2236E4;
  v32[1] = v29;
  v33 = v55;
  (*(v8 + 16))(v67, v12, v55);
  v34 = sub_3EC634();
  v35 = v64;
  (*(*(v34 - 8) + 56))(v64, 1, 1, v34);

  v36 = v57;
  sub_3E5FB4();
  v37 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v39 = v38;

  (*(v63 + 8))(v36, v65);
  (*(v8 + 8))(v12, v33);
  *(v31 + 16) = v37;
  *(v31 + 24) = v39;
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  *(v31 + 48) = 32;
  (*(v8 + 32))(v31 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v67, v33);
  sub_FACC(v35, v31 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v70 = v30;
  v71 = sub_2237E0(&qword_4F13D8, type metadata accessor for ClosureAction);
  *&v69 = v31;
  v40 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v42 = v41;

  sub_FBD0(&v69, v68, &qword_4EDE00);
  v43 = type metadata accessor for ActionMenu.Item(0);
  v44 = v43[7];
  v45 = v60;
  v54(v60 + v44, 1, 1, v56);
  v46 = v43[8];
  v47 = v45 + v43[10];
  *(v47 + 32) = 0;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  *v45 = v40;
  v45[1] = v42;
  v48 = v61;
  v45[2] = v62;
  v45[3] = v48;
  v49 = object;
  v45[4] = countAndFlagsBits;
  v45[5] = v49;
  sub_51F9C(v66, v45 + v44, &qword_4F1D50);
  *(v45 + v46) = 2;
  *(v45 + v43[9]) = v52;
  sub_51F9C(v68, v47, &qword_4EDE00);
  type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
  return sub_FCF8(&v69, &qword_4EDE00);
}

uint64_t sub_222F5C(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 2)
  {
    sub_3E9D44();
  }

  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  v12 = a1;
  return (*(v10 + 232))(a4, a5, &v12, v9, v10);
}

uint64_t ModernStationDetailPresenter.deinit()
{

  sub_1FA4B4(*(v0 + 24));

  sub_223780(v0 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_interactionContextPage, &type metadata accessor for InteractionContext.Page);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_libraryActionController);

  return v0;
}

uint64_t ModernStationDetailPresenter.__deallocating_deinit()
{
  ModernStationDetailPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22315C(uint64_t a1)
{
  result = sub_2237E0(&qword_4FA340, type metadata accessor for ModernStationDetailPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ModernStationDetailPresenter()
{
  result = qword_4FA3A0;
  if (!qword_4FA3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223200@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8ShelfKit28ModernStationDetailPresenter_interactionContextPage;
  swift_beginAccess();
  return sub_223718(v3 + v4, a1, &type metadata accessor for InteractionContext.Page);
}

uint64_t sub_2232B4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 136);
}

double sub_223344@<D0>(_OWORD *a1@<X8>)
{
  ModernStationDetailPresenter.reorderingExtension.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_223394()
{
  result = sub_3E63E4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2234B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_2234F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_223580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2235E8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_223628()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  return (*(v5 + 240))(v1, v2, (v3 & 1) == 0, v4, v5);
}

uint64_t sub_22369C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_223718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_223780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2237E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SeeAllEpisodesPresenter.dismiss.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t sub_2238F8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 104);
  v4 = *(v3 + 112);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_FE5AC;
  a2[1] = v6;
}

uint64_t sub_223978(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 104) = sub_199400;
  *(v6 + 112) = v5;
}

uint64_t SeeAllEpisodesPresenter.rebuildMenuBar.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 104);

  return v1;
}

uint64_t SeeAllEpisodesPresenter.rebuildMenuBar.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t SeeAllEpisodesPresenter.refreshControls.getter()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F94C0);
    swift_allocObject();
    v1 = sub_3E9D94();
    *(v2 + 120) = v1;
  }

  return v1;
}

uint64_t (*SeeAllEpisodesPresenter.refreshControls.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = SeeAllEpisodesPresenter.refreshControls.getter();
  return sub_223B98;
}

uint64_t SeeAllEpisodesPresenter.paginatedPublisher.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
}

uint64_t SeeAllEpisodesPresenter.filteringEnabled.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_filteringEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SeeAllEpisodesPresenter.Configuration.showAdamID.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t SeeAllEpisodesPresenter.Configuration.filter.getter()
{
  v1 = *(v0 + 32);
  sub_1748BC(v1, *(v0 + 40));
  return v1;
}

uint64_t SeeAllEpisodesPresenter.Configuration.filter.setter(uint64_t a1, char a2)
{
  result = sub_6BF60(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SeeAllEpisodesPresenter.Configuration.init(showUUID:showAdamID:filter:showsPageHeader:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 41) = a7;
  return result;
}

uint64_t SeeAllEpisodesPresenter.__allocating_init(asPartOf:with:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  SeeAllEpisodesPresenter.init(asPartOf:with:)(a1, a2);
  return v4;
}

uint64_t SeeAllEpisodesPresenter.init(asPartOf:with:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v66 = a1;
  v59 = sub_3EC544();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = &v54 - v7;
  v8 = sub_3EC164();
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin(v8);
  v72 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_3ECCF4();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA518);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v54 - v11;
  v12 = sub_3E63E4();
  __chkstk_darwin(v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v18 = type metadata accessor for PageContent();
  __chkstk_darwin(v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2[1];
  v63 = *a2;
  v61 = v21;
  v55 = a2[2];
  v68 = *(a2 + 24);
  v22 = a2[4];
  v60 = *(a2 + 40);
  v67 = *(a2 + 41);
  memset(v75, 0, 21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  *(v3 + 72) = sub_3E9D94();
  *(v3 + 80) = 1;
  v75[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  swift_allocObject();
  *(v3 + 88) = sub_3E9D94();
  *v75 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A90);
  swift_allocObject();
  v23 = sub_3E9D94();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 96) = v23;
  *(v3 + 104) = FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.init();
  *v20 = 0;
  v24 = v22;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  swift_allocObject();
  *(v3 + 128) = sub_3E9D94();
  *(v3 + 136) = _swiftEmptyArrayStorage;
  *(v3 + 144) = 0;
  v25 = OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_filters;
  *v75 = _swiftEmptyArrayStorage;
  v26 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA520);
  swift_allocObject();
  *(v3 + v25) = sub_3E9D94();
  v27 = OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_filteringEnabled;
  v75[0] = 1;
  swift_allocObject();
  *(v3 + v27) = sub_3E9D94();
  v28 = OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter__interactionContextPage;
  v29 = sub_3E8944();
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
  swift_storeEnumTagMultiPayload();
  sub_228D28(v17, v14, &type metadata accessor for InteractionContext.Page);
  v30 = v62;
  v31 = v61;
  sub_3E9E64();
  sub_228D90(v17, &type metadata accessor for InteractionContext.Page);
  (*(v64 + 32))(v3 + v28, v30, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0);
  sub_3EC394();
  *(v3 + 16) = *v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);
  sub_3EC394();
  sub_1D4F0(v75, v3 + 32);
  v32 = (v3 + OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_uuid);
  *v32 = v63;
  v32[1] = v31;
  *v75 = v24;
  v75[8] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA538);
  swift_allocObject();

  sub_1748BC(v24, v26);
  *(v3 + OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_selectedFilter) = sub_3E9D94();
  v33 = objc_opt_self();

  v34 = [v33 mainBundle];
  v53._countAndFlagsBits = 0xE000000000000000;
  v87._countAndFlagsBits = 0x5345444F53495045;
  v87._object = 0xE800000000000000;
  v92.value._countAndFlagsBits = 0;
  v92.value._object = 0;
  v35.super.isa = v34;
  v93._countAndFlagsBits = 0;
  v93._object = 0xE000000000000000;
  v36 = sub_3E5A74(v87, v92, v35, v93, v53);
  v38 = v37;

  if (v67 != 1)
  {
    *v75 = v36;
    *&v75[8] = v38;
    v75[20] = 0;
    *&v75[16] = 0;
    sub_3E9D74();

    sub_6BF60(v24, v26);
    if (!v68)
    {
      goto LABEL_3;
    }

LABEL_5:
    *v75 = sub_3E8024();
    *&v75[8] = v50;
    v90._countAndFlagsBits = 95;
    v90._object = 0xE100000000000000;
    sub_3ED3D4(v90);
    v91._countAndFlagsBits = 0x70456C6C41656553;
    v91._object = 0xEE007365646F7369;
    sub_3ED3D4(v91);
    v51 = v69;
    sub_3ECCE4();
    (*(v70 + 32))(v3 + OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_pageID, v51, v71);
    v49 = v72;
    sub_3EC154();

    goto LABEL_6;
  }

  *v75 = v36;
  *&v75[8] = v38;
  *&v75[16] = 0;
  v75[20] = 32;
  sub_3E9D74();

  sub_6BF60(v24, v26);
  if (v68)
  {
    goto LABEL_5;
  }

LABEL_3:
  *v75 = sub_3E8024();
  *&v75[8] = v39;
  v88._countAndFlagsBits = 95;
  v88._object = 0xE100000000000000;
  sub_3ED3D4(v88);
  v40 = v55;
  *&v80 = v55;
  sub_C2A70();
  v89._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v89);

  v41 = v69;
  sub_3ECCE4();
  (*(v70 + 32))(v3 + OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_pageID, v41, v71);
  v42 = sub_3E8024();
  v44 = v43;
  *v75 = v40;
  sub_17A28();
  *v75 = sub_3EE1F4();
  *&v75[8] = v45;
  *&v75[16] = v42;
  v76 = v44;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v46 = v57;
  sub_3EC534();
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
  sub_3EC0B4();
  *(swift_allocObject() + 16) = xmmword_3F5310;
  sub_3EC084();
  sub_3EC074();
  MetricsPageFields.metricsFields.getter();
  v47 = v58;
  v48 = v59;
  (*(v58 + 16))(v56, v46, v59);
  v49 = v72;
  sub_3EC0C4();
  v86 = v80;
  sub_FCF8(&v86, &unk_4F8A10);
  v85 = v81;
  sub_FCF8(&v85, &qword_4E94E0);
  v84 = v82;
  sub_FCF8(&v84, &unk_4F8A20);
  sub_16AC0(v83);

  (*(v47 + 8))(v46, v48);

LABEL_6:
  (*(v73 + 32))(v3 + OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_pageMetrics, v49, v74);
  return v3;
}

uint64_t SeeAllEpisodesPresenter.interactionContextPage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();
}

uint64_t sub_224A78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();
}

uint64_t sub_224AF8(uint64_t a1)
{
  v2 = sub_3E63E4();
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_228D28(a1, &v9 - v6, &type metadata accessor for InteractionContext.Page);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228D28(v7, v4, &type metadata accessor for InteractionContext.Page);

  sub_3E9EB4();
  return sub_228D90(v7, &type metadata accessor for InteractionContext.Page);
}

uint64_t SeeAllEpisodesPresenter.interactionContextPage.setter(uint64_t a1)
{
  v2 = sub_3E63E4();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_228D28(a1, v4, &type metadata accessor for InteractionContext.Page);

  sub_3E9EB4();
  return sub_228D90(a1, &type metadata accessor for InteractionContext.Page);
}

void (*SeeAllEpisodesPresenter.interactionContextPage.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_3E9E94();
  return sub_17FA18;
}

uint64_t SeeAllEpisodesPresenter.$interactionContextPage.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA518);
  sub_3E9E74();
  return swift_endAccess();
}

uint64_t sub_224E14()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA518);
  sub_3E9E74();
  return swift_endAccess();
}

uint64_t sub_224E8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA550);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA518);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

uint64_t SeeAllEpisodesPresenter.$interactionContextPage.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA550);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA518);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*SeeAllEpisodesPresenter.$interactionContextPage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA550);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter__interactionContextPage;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA518);
  sub_3E9E74();
  swift_endAccess();
  return sub_17FF98;
}

Swift::Void __swiftcall SeeAllEpisodesPresenter.viewDidLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA550);
  v55 = *(v2 - 8);
  v56 = v2;
  __chkstk_darwin(v2);
  v54 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA558);
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  __chkstk_darwin(v6);
  v50 = v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA560);
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  __chkstk_darwin(v9);
  v43 = v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA568);
  v13 = *(v12 - 8);
  v46 = v12;
  v47 = v13;
  __chkstk_darwin(v12);
  v42 = v41 - v14;
  v15 = *(v0 + 24);
  v49 = *(v0 + 16);
  ObjectType = swift_getObjectType();
  v57 = v15;
  v58 = ObjectType;
  v17 = (v0 + OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_uuid);
  v19 = *(v0 + OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_uuid);
  v18 = *(v0 + OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_uuid + 8);
  v20 = *(v15 + 344);

  v21 = v20(v19, v18, ObjectType, v15);

  *&v60[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA520);
  v48 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_886BC(&qword_4F6C88, &qword_4F6C80);
  sub_886BC(&qword_4FA570, &qword_4FA520);
  sub_3EA164();

  swift_beginAccess();
  v41[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  v41[0] = sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();

  *&v60[0] = *(v0 + OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_selectedFilter);
  v22 = *&v60[0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA538);
  sub_886BC(&qword_4FA578, &qword_4FA538);
  sub_1A1158();
  v23 = v43;
  sub_3EA174();
  sub_886BC(&qword_4FA580, &qword_4FA560);
  v24 = v42;
  v25 = v44;
  sub_3EA144();
  (*(v45 + 8))(v23, v25);
  v27 = *v17;
  v26 = v17[1];
  sub_1F958(v1 + 32, v60);
  v28 = swift_allocObject();
  sub_1D4F0(v60, v28 + 16);
  *(v28 + 56) = v27;
  *(v28 + 64) = v26;
  sub_886BC(&qword_4FA588, &qword_4FA568);

  v29 = v46;
  sub_3EA1A4();

  (*(v47 + 8))(v24, v29);
  swift_beginAccess();
  sub_3E9C94();
  swift_endAccess();

  v30 = *v17;
  v31 = v17[1];
  *&v60[0] = v22;

  v32 = sub_3E9F94();

  v33 = (*(v57 + 368))(v30, v31, v32, v58);

  *&v60[0] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9EE8);
  sub_3E63E4();
  sub_886BC(&qword_4F9EF0, &qword_4F9EE8);
  v34 = v50;
  sub_3EA024();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA518);
  v35 = v51;
  sub_3E9E74();
  swift_endAccess();
  sub_886BC(&qword_4FA590, &qword_4FA558);
  v36 = v52;
  sub_3EA1B4();
  (*(v53 + 8))(v34, v36);
  v37 = v55;
  v38 = v56;
  (*(v55 + 16))(v54, v35, v56);
  swift_beginAccess();
  sub_3E9E84();
  swift_endAccess();
  (*(v37 + 8))(v35, v38);
  v39 = (*(v57 + 376))(v33, 50, v58);
  swift_beginAccess();
  *(v1 + 144) = v39;

  v59 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9E78);
  sub_886BC(&qword_4F9E80, &qword_4F9E78);
  v40 = sub_3E9F94();
  sub_225D64(v40);

  sub_2261FC();
}

uint64_t sub_225BC8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_225C08(uint64_t *a1)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = *a1;
  v5 = v1[5];
  v6 = v1[6];
  v7 = *(a1 + 8);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return (*(v6 + 192))(v2, v3, v4, v7, v5, v6);
}

uint64_t sub_225C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3E8944();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
  sub_3E63E4();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_225D64(uint64_t a1)
{
  v2 = v1;
  v25 = sub_3EC164();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v25);
  v6 = sub_3ECCF4();
  v23 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA830);
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  __chkstk_darwin(v10);
  v26 = &v22 - v12;
  v29 = a1;
  v13 = swift_allocObject();
  v24 = v1;
  swift_weakInit();
  v14 = OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_pageMetrics;
  (*(v7 + 16))(v9, v2 + OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_pageID, v6);
  v15 = v25;
  (*(v4 + 16))(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + v14, v25);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + *(v4 + 80) + v16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v9, v23);
  (*(v4 + 32))(v18 + v17, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  *(v18 + ((v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9EB8);
  type metadata accessor for PageContent();
  sub_886BC(&qword_4F9EC8, &qword_4F9EB8);
  v19 = v26;
  sub_3E9FA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  sub_886BC(&qword_4FA838, &qword_4FA830);
  sub_886BC(&unk_4F8840, &qword_4F8830);
  v20 = v27;
  sub_3EA164();
  (*(v28 + 8))(v19, v20);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();
}

uint64_t sub_2261FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5388);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - v2;
  v42 = &v36 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v46 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1450);
  v45 = type metadata accessor for HeaderButtonItem();
  v10 = (*(*(v45 - 8) + 80) + 32) & ~*(*(v45 - 8) + 80);
  v11 = swift_allocObject();
  v44 = v11;
  *(v11 + 16) = xmmword_3F5630;
  v12 = (v11 + v10);
  v13 = v9;
  sub_3E7774();
  v40 = sub_3E7784();
  v14 = *(v40 - 8);
  v15 = *(v14 + 56);
  v38 = v9;
  v39 = v15;
  v41 = v14 + 56;
  v15(v9, 0, 1, v40);
  if (_UISolariumEnabled())
  {
    v16 = 0;
  }

  else
  {
    v16 = 2;
  }

  v43 = v16;
  v17 = sub_3E6AC4();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA828);
  v18 = *(type metadata accessor for ActionMenu.Child(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_3F5310;
  v22 = (v21 + v20);

  *v22 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v22[1] = v23;
  v22[2] = sub_226E08;
  v22[3] = v0;
  swift_storeEnumTagMultiPayload();
  v24 = (v22 + v19);

  *v24 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v24[1] = v25;
  v24[2] = sub_228970;
  v24[3] = v0;
  swift_storeEnumTagMultiPayload();
  v26 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5380);
  v30 = v29[12];
  v31 = v29[16];
  v37 = v29[20];
  sub_FBD0(v13, v6, &qword_4F1D50);
  v32 = type metadata accessor for ActionMenu(0);
  v33 = *(v32 + 28);
  v39(v12 + v33, 1, 1, v40);
  *v12 = v26;
  v12[1] = v28;
  v12[2] = 0;
  v12[3] = 0xE000000000000000;
  v12[4] = 0;
  v12[5] = 0;
  sub_51F9C(v6, v12 + v33, &qword_4F1D50);
  *(v12 + *(v32 + 32)) = v21;
  *(v12 + v30) = v43;
  v34 = v42;
  sub_FBD0(v42, v12 + v31, &qword_4F5388);
  *(v12 + v37) = 0;
  swift_storeEnumTagMultiPayload();
  sub_FCF8(v34, &qword_4F5388);
  sub_FCF8(v38, &qword_4F1D50);
  v47 = v44;
  sub_3E9D44();
}

uint64_t SeeAllEpisodesPresenter.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  v1 = OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_pageID;
  v2 = sub_3ECCF4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter_pageMetrics;
  v4 = sub_3EC164();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC8ShelfKit23SeeAllEpisodesPresenter__interactionContextPage;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA518);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t SeeAllEpisodesPresenter.__deallocating_deinit()
{
  SeeAllEpisodesPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22688C(uint64_t a1)
{
  result = sub_228CE0(&qword_4FA678, type metadata accessor for SeeAllEpisodesPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for SeeAllEpisodesPresenter()
{
  result = qword_4FA718;
  if (!qword_4FA718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226930()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();
}

unint64_t sub_2269B0()
{
  result = qword_4FA680;
  if (!qword_4FA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FA680);
  }

  return result;
}

uint64_t sub_226A04@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 144);
}

uint64_t sub_226AA0@<X0>(uint64_t *a1@<X8>)
{
  result = SeeAllEpisodesPresenter.refreshControls.getter();
  *a1 = result;
  return result;
}

uint64_t sub_226ACC(void *a1, uint64_t a2)
{
  *(*a2 + 120) = *a1;
}

void sub_226B20()
{
  sub_3ECCF4();
  if (v0 <= 0x3F)
  {
    sub_3EC164();
    if (v1 <= 0x3F)
    {
      sub_226CC0();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_226CC0()
{
  if (!qword_4FA728)
  {
    sub_3E63E4();
    v0 = sub_3E9EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_4FA728);
    }
  }
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_226D2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_226D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226DD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_226E0C@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v4 - 8);
  v57 = &v53 - v5;
  v6 = sub_3E5FC4();
  v56 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EC1F4();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();

  v13 = sub_3ED204();

  v14 = [v12 predicateForAllEpisodesOnPodcastUuid:v13];

  sub_3E9D64();
  v15 = v60;
  LOBYTE(v13) = BYTE8(v60);
  v16 = sub_3E83B4();
  sub_6BF60(v15, v13);
  v17 = [v14 AND:v16];

  v18 = v2[7];
  v19 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v18);
  v20 = (*(v19 + 448))(0, v17, v18, v19);
  v21 = 0;
  if (v20)
  {
    sub_3E9D64();
    if (v59 != 2 || v58)
    {
      sub_6BF60(v58, v59);
      sub_1F958((v2 + 4), &v60);
      v24 = swift_allocObject();
      sub_1D4F0(&v60, v24 + 16);
      *(v24 + 56) = v17;
      v25 = v17;
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      type metadata accessor for ClosureAction();
      v21 = swift_allocObject();
      v26 = (v21 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
      *v26 = sub_2289C0;
      v26[1] = v24;
      v28 = v54;
      v27 = v55;
      (*(v54 + 16))(v21 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v11, v55);
      v29 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
      v30 = sub_3EC634();
      (*(*(v30 - 8) + 56))(v21 + v29, 1, 1, v30);
      sub_3E5FB4();
      v31 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v33 = v32;
      (*(v56 + 8))(v8, v6);
      (*(v28 + 8))(v11, v27);
      *(v21 + 16) = v31;
      *(v21 + 24) = v33;
      *(v21 + 32) = 0;
      *(v21 + 40) = 0;
      *(v21 + 48) = 32;
    }

    else
    {
      v22 = v2[7];
      v23 = v2[8];
      __swift_project_boxed_opaque_existential_1(v2 + 4, v22);
      v21 = (*(v23 + 472))(v17, v22, v23);
    }
  }

  v34 = [objc_opt_self() mainBundle];
  v52._countAndFlagsBits = 0xE000000000000000;
  v64._countAndFlagsBits = 0xD000000000000017;
  v64._object = 0x800000000042B340;
  v65.value._countAndFlagsBits = 0;
  v65.value._object = 0;
  v35.super.isa = v34;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  v56 = sub_3E5A74(v64, v65, v35, v66, v52);
  v37 = v36;

  v38 = v57;
  sub_3E7774();
  v39 = sub_3E7784();
  v40 = *(*(v39 - 8) + 56);
  v40(v38, 0, 1, v39);
  if (v21)
  {
    v41 = type metadata accessor for Action();
    v42 = sub_228CE0(&qword_4EDDF8, type metadata accessor for Action);
  }

  else
  {
    v41 = 0;
    v42 = 0;
    *(&v60 + 1) = 0;
    v61 = 0;
  }

  *&v60 = v21;
  v62 = v41;
  v63 = v42;

  v43 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v45 = v44;

  v46 = type metadata accessor for ActionMenu.Item(0);
  v47 = v46[7];
  v40(a1 + v47, 1, 1, v39);
  v48 = v46[8];
  v49 = a1 + v46[10];
  *(v49 + 32) = 0;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *a1 = v43;
  a1[1] = v45;
  v50 = v57;
  a1[2] = v56;
  a1[3] = v37;
  a1[4] = 0;
  a1[5] = 0;
  sub_51F9C(v50, a1 + v47, &qword_4F1D50);
  *(a1 + v48) = 2;
  *(a1 + v46[9]) = 1;
  return sub_51F9C(&v60, v49, &qword_4EDE00);
}

uint64_t sub_227454@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v4 - 8);
  v57 = &v53 - v5;
  v6 = sub_3E5FC4();
  v56 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EC1F4();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();

  v13 = sub_3ED204();

  v14 = [v12 predicateForAllEpisodesOnPodcastUuid:v13];

  sub_3E9D64();
  v15 = v60;
  LOBYTE(v13) = BYTE8(v60);
  v16 = sub_3E83B4();
  sub_6BF60(v15, v13);
  v17 = [v14 AND:v16];

  v18 = v2[7];
  v19 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v18);
  v20 = (*(v19 + 448))(1, v17, v18, v19);
  v21 = 0;
  if (v20)
  {
    sub_3E9D64();
    if (v59 != 2 || v58)
    {
      sub_6BF60(v58, v59);
      sub_1F958((v2 + 4), &v60);
      v24 = swift_allocObject();
      sub_1D4F0(&v60, v24 + 16);
      *(v24 + 56) = v17;
      v25 = v17;
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      type metadata accessor for ClosureAction();
      v21 = swift_allocObject();
      v26 = (v21 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
      *v26 = sub_228978;
      v26[1] = v24;
      v28 = v54;
      v27 = v55;
      (*(v54 + 16))(v21 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v11, v55);
      v29 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
      v30 = sub_3EC634();
      (*(*(v30 - 8) + 56))(v21 + v29, 1, 1, v30);
      sub_3E5FB4();
      v31 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v33 = v32;
      (*(v56 + 8))(v8, v6);
      (*(v28 + 8))(v11, v27);
      *(v21 + 16) = v31;
      *(v21 + 24) = v33;
      *(v21 + 32) = 0;
      *(v21 + 40) = 0;
      *(v21 + 48) = 32;
    }

    else
    {
      v22 = v2[7];
      v23 = v2[8];
      __swift_project_boxed_opaque_existential_1(v2 + 4, v22);
      v21 = (*(v23 + 480))(v17, v22, v23);
    }
  }

  v34 = [objc_opt_self() mainBundle];
  v52._countAndFlagsBits = 0xE000000000000000;
  v64._object = 0x800000000042B320;
  v64._countAndFlagsBits = 0xD000000000000019;
  v65.value._countAndFlagsBits = 0;
  v65.value._object = 0;
  v35.super.isa = v34;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  v56 = sub_3E5A74(v64, v65, v35, v66, v52);
  v37 = v36;

  v38 = v57;
  sub_3E7774();
  v39 = sub_3E7784();
  v40 = *(*(v39 - 8) + 56);
  v40(v38, 0, 1, v39);
  if (v21)
  {
    v41 = type metadata accessor for Action();
    v42 = sub_228CE0(&qword_4EDDF8, type metadata accessor for Action);
  }

  else
  {
    v41 = 0;
    v42 = 0;
    *(&v60 + 1) = 0;
    v61 = 0;
  }

  *&v60 = v21;
  v62 = v41;
  v63 = v42;

  v43 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v45 = v44;

  v46 = type metadata accessor for ActionMenu.Item(0);
  v47 = v46[7];
  v40(a1 + v47, 1, 1, v39);
  v48 = v46[8];
  v49 = a1 + v46[10];
  *(v49 + 32) = 0;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *a1 = v43;
  a1[1] = v45;
  v50 = v57;
  a1[2] = v56;
  a1[3] = v37;
  a1[4] = 0;
  a1[5] = 0;
  sub_51F9C(v50, a1 + v47, &qword_4F1D50);
  *(a1 + v48) = 2;
  *(a1 + v46[9]) = 1;
  return sub_51F9C(&v60, v49, &qword_4EDE00);
}

uint64_t sub_227A9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v107 = a3;
  v97 = a2;
  v105 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v5 - 8);
  v7 = &v91 - v6;
  v104 = sub_3E5FC4();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v9 - 8);
  v106 = &v91 - v10;
  v101 = sub_3EC1F4();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v98 = &v91 - v13;
  v95 = type metadata accessor for ModernPage();
  __chkstk_darwin(v95);
  v96 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v15);
  v17 = &v91 - v16;
  v18 = type metadata accessor for ModernShelf();
  v94 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA1C8);
  sub_3E95D4();
  v21 = v110;
  v22 = sub_3E95E4();
  v110 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8);
  if (sub_3E9544())
  {
    sub_192858(v21);
    *a4 = 1;
    v23 = type metadata accessor for PageContent();
    swift_storeEnumTagMultiPayload();
    v24 = *(*(v23 - 8) + 56);
    v25 = a4;
    return v24(v25, 0, 1, v23);
  }

  v92 = v7;
  v115 = 0;
  sub_192B2C(v21);
  v26 = sub_E02FC(0, 1, 1, _swiftEmptyArrayStorage);
  v28 = v26[2];
  v27 = v26[3];
  v93 = a4;
  if (v28 >= v27 >> 1)
  {
    v26 = sub_E02FC((v27 > 1), v28 + 1, 1, v26);
  }

  v26[2] = v28 + 1;
  v26[v28 + 4] = v21;
  v29 = sub_E02FC(0, 1, 1, _swiftEmptyArrayStorage);
  v31 = v29[2];
  v30 = v29[3];
  if (v31 >= v30 >> 1)
  {
    v29 = sub_E02FC((v30 > 1), v31 + 1, 1, v29);
  }

  v29[2] = v31 + 1;
  v29[v31 + 4] = v21;
  if (v22)
  {
    static ModernShelf.loadingShelf(id:)(0x5365726F4D736168, 0xEC000000666C6568, v20);
    sub_228D28(v20, v17, type metadata accessor for ModernShelf);
    (*(v94 + 56))(v17, 0, 2, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70);
    sub_3E9504();
    v32 = v110;
    v34 = v29[2];
    v33 = v29[3];
    if (v34 >= v33 >> 1)
    {
      v29 = sub_E02FC((v33 > 1), v34 + 1, 1, v29);
    }

    sub_FCF8(v17, &qword_4F5978);
    sub_228D90(v20, type metadata accessor for ModernShelf);
    v29[2] = v34 + 1;
    v29[v34 + 4] = v32;
    v35 = v115;
  }

  else
  {
    v35 = 0;
  }

  LOBYTE(v110) = v35;
  v111 = v26;
  v112 = v29;
  ModernShelfListBuilder.hasImportantContent.getter();
  if (v36)
  {
    v37 = sub_3ECCF4();
    v38 = v96;
    (*(*(v37 - 8) + 16))(v96, v105, v37);
    v39 = v95;
    v40 = *(v95 + 20);
    v41 = sub_3EC164();
    (*(*(v41 - 8) + 16))(v38 + v40, v97, v41);
    LOBYTE(v110) = v115;
    v111 = v26;
    v112 = v29;
    ModernShelfListBuilder.buildList()();
    v43 = v42;

    *(v38 + *(v39 + 24)) = v43;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668) + 48);
    v45 = v93;
    sub_228D28(v38, v93, type metadata accessor for ModernPage);
    v46 = sub_3E66E4();
    sub_228D90(v38, type metadata accessor for ModernPage);
    *(v45 + v44) = v46;
    v23 = type metadata accessor for PageContent();
    swift_storeEnumTagMultiPayload();
    v24 = *(*(v23 - 8) + 56);
    v25 = v45;
    return v24(v25, 0, 1, v23);
  }

  v47 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v48 = v98;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v94 = type metadata accessor for ClosureAction();
  v49 = swift_allocObject();
  v50 = (v49 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v50 = sub_228CD8;
  v50[1] = v47;
  v51 = v100;
  v52 = v99;
  v53 = v101;
  v100[2](v99, v48, v101);
  v54 = sub_3EC634();
  v55 = *(v54 - 8);
  v56 = *(v55 + 56);
  v57 = v106;
  v97 = v54;
  v96 = v56;
  v95 = v55 + 56;
  (v56)(v106, 1, 1);

  v58 = v102;
  sub_3E5FB4();
  v59 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v61 = v60;

  (*(v103 + 8))(v58, v104);
  (v51[1])(v48, v53);
  *(v49 + 16) = v59;
  *(v49 + 24) = v61;
  *(v49 + 32) = 0;
  *(v49 + 40) = 0;
  *(v49 + 48) = 32;
  v51[4]((v49 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics), v52, v53);
  sub_14A10(v57, v49 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_3E9D64();

    v104 = v110;
    LODWORD(v103) = v111;
    v113 = v94;
    v114 = sub_228CE0(&qword_4F13D8, type metadata accessor for ClosureAction);
    v110 = v49;
    v62 = sub_3ECCF4();
    v63 = v57;
    (*(*(v62 - 8) + 16))(v93, v105, v62);
    v107 = sub_3E83A4();
    v105 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14D8);
    v65 = (type metadata accessor for ActionButton() - 8);
    v66 = (*(*v65 + 80) + 32) & ~*(*v65 + 80);
    v67 = swift_allocObject();
    v102 = v67;
    *(v67 + 16) = xmmword_3F5630;
    v68 = (v67 + v66);
    v69 = [objc_opt_self() mainBundle];
    v90._countAndFlagsBits = 0xE000000000000000;
    v116._object = 0x800000000042B380;
    v116._countAndFlagsBits = 0xD000000000000011;
    v117.value._countAndFlagsBits = 0;
    v117.value._object = 0;
    v70.super.isa = v69;
    v118._countAndFlagsBits = 0;
    v118._object = 0xE000000000000000;
    v101 = sub_3E5A74(v116, v117, v70, v118, v90);
    v100 = v71;

    v72 = sub_3E7784();
    v73 = *(*(v72 - 8) + 56);
    v73(v92, 1, 1, v72);
    sub_1F958(&v110, v109);
    v74 = v97;
    v75 = v96;
    (v96)(v63, 1, 1, v97);
    v99 = _s8ShelfKit12ActionButtonV2IDVAEycfC_0();
    v77 = v76;
    v78 = v65[8];
    v73(v68 + v78, 1, 1, v72);
    v79 = v65[9];
    *(v68 + v79) = 2;
    v80 = v65[11];
    (v75)(v68 + v80, 1, 1, v74);
    *v68 = v99;
    v68[1] = v77;
    v81 = v100;
    v68[2] = v101;
    v68[3] = v81;
    sub_51F9C(v92, v68 + v78, &qword_4F1D50);
    *(v68 + v79) = 2;
    sub_1D4F0(v109, v68 + v65[10]);
    sub_51F9C(v106, v68 + v80, &unk_4E9170);
    v82 = type metadata accessor for ContentUnavailablePage();
    v83 = v93;
    sub_3EC154();
    sub_6BF60(v104, v103);
    v84 = (v83 + *(v82 + 20));
    *v84 = 0;
    v84[1] = 0;
    v85 = v105;
    v84[2] = v107;
    v84[3] = v85;
    v84[4] = 0;
    v84[5] = 0;
    v84[6] = v102;
    __swift_destroy_boxed_opaque_existential_1Tm(&v110);
    v23 = type metadata accessor for PageContent();
    swift_storeEnumTagMultiPayload();
    v24 = *(*(v23 - 8) + 56);
    v25 = v83;
    return v24(v25, 0, 1, v23);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v88 = v93;
  if (Strong)
  {
    swift_beginAccess();

    v108 = 1;
    sub_3E9D44();
  }

  v89 = type metadata accessor for PageContent();
  return (*(*(v89 - 8) + 56))(v88, 1, 1, v89);
}

uint64_t sub_2288EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_3E9D74();
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2289C8(uint64_t a1)
{
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return (*(v4 + 488))(a1, v3, v5, v4);
}

uint64_t sub_228A34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_228A6C()
{
  v1 = sub_3ECCF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_3EC164();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_228BC8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(sub_3ECCF4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_3EC164() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_227A9C(v1 + v4, v1 + v7, v8, a1);
}

uint64_t sub_228CE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228D90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228DFC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 8)
  {
    return v3 == 8;
  }

  if (v2 == 7)
  {
    return v3 == 7;
  }

  if ((v3 - 7) < 2u)
  {
    return 0;
  }

  v5 = sub_3E7B74();
  v7 = v6;
  if (v5 != sub_3E7B74() || v7 != v8)
  {
    v10 = sub_3EE804();

    return v10 & 1;
  }

  return 1;
}

uint64_t sub_228ED4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  if (v3 == 8)
  {
    if (v5 == 8)
    {
      return v4 ^ v6 ^ 1u;
    }

    return 0;
  }

  if (v3 != 7)
  {
    if ((v5 - 7) >= 2u)
    {
      v8 = sub_3E7B74();
      v10 = v9;
      if (v8 == sub_3E7B74() && v10 == v11)
      {

        return v4 ^ v6 ^ 1u;
      }

      v13 = sub_3EE804();

      if (v13)
      {
        return v4 ^ v6 ^ 1u;
      }
    }

    return 0;
  }

  if (v5 != 7)
  {
    return 0;
  }

  return v4 ^ v6 ^ 1u;
}

uint64_t ShowListPresenter.interactionContextPage.getter()
{
  sub_3E63E4();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_229034()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  return v1;
}

uint64_t sub_2290F8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_rebuildMenuBar);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_FE5AC;
  a2[1] = v6;
}

uint64_t sub_229184(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_rebuildMenuBar);
  swift_beginAccess();
  *v6 = sub_199400;
  v6[1] = v5;
}

uint64_t ShowListPresenter.rebuildMenuBar.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_rebuildMenuBar);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ShowListPresenter.rebuildMenuBar.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_rebuildMenuBar);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ShowListPresenter.dismiss.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_dismiss;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ShowListPresenter.reorderingExtension.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___reorderingExtension);
  v4 = *(v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___reorderingExtension);
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___reorderingExtension + 8);
  v7 = *(v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___reorderingExtension + 16);
  v8 = *(v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___reorderingExtension + 24);
  v9 = *(v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___reorderingExtension + 32);
  v10 = *(v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___reorderingExtension + 40);
  if (v4 == 1)
  {
    v6 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = *v3;
    v5 = sub_22D4A8;
    *v3 = sub_22D4A8;
    v3[1] = v6;
    v7 = FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.init();
    v3[2] = FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.init();
    v3[3] = 0;
    v9 = sub_22D4B0;
    v3[4] = sub_22D4B0;
    v3[5] = v10;

    sub_1FA4B4(v11);
    v8 = 0;
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = v10;

  return sub_1FA514(v4);
}

uint64_t sub_2295DC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = (*a2 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___reorderingExtension);
  v9 = *v8;
  *v8 = *a1;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  sub_1FA524(v2);

  return sub_1FA4B4(v9);
}

uint64_t ShowListPresenter.reorderingExtension.setter(_OWORD *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___reorderingExtension);
  v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___reorderingExtension);
  v4 = a1[1];
  *v2 = *a1;
  v2[1] = v4;
  v2[2] = a1[2];
  return sub_1FA4B4(v3);
}

uint64_t sub_2296A0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = sub_229710(a2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_229710(void *a1)
{
  v1 = *a1 == 0xD00000000000001ELL && 0x8000000000429D00 == a1[1];
  if (v1 || (v2 = 0, (sub_3EE804() & 1) != 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3E9EA4();

    v3 = sub_3E7B74();
    v5 = v4;
    if (v3 == sub_3E7B74() && v5 == v6)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_3EE804();
    }
  }

  return v2 & 1;
}

uint64_t sub_229848(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2298A8(a2);
  }

  return result;
}

uint64_t sub_2298A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = _swiftEmptyArrayStorage;
    do
    {
      sub_1F958(v2, v15);
      sub_1D4F0(v15, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
      type metadata accessor for LibraryShowLockup();
      if (swift_dynamicCast())
      {
        v6 = *(v13 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid);
        v5 = *(v13 + OBJC_IVAR____TtC8ShelfKit17LibraryShowLockup_uuid + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_DFAE8(0, *(v3 + 2) + 1, 1, v3);
        }

        v8 = *(v3 + 2);
        v7 = *(v3 + 3);
        if (v8 >= v7 >> 1)
        {
          v3 = sub_DFAE8((v7 > 1), v8 + 1, 1, v3);
        }

        *(v3 + 2) = v8 + 1;
        v4 = &v3[16 * v8];
        *(v4 + 4) = v6;
        *(v4 + 5) = v5;
      }

      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = v12[6];
  v10 = v12[7];
  __swift_project_boxed_opaque_existential_1(v12 + 3, v9);
  (*(v10 + 168))(v3, v9, v10);
}

void (*ShowListPresenter.reorderingExtension.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v3[6] = v1;
  ShowListPresenter.reorderingExtension.getter(v3);
  return sub_229AC0;
}

void sub_229AC0(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v5 = (*a1)[6];
  v6 = **a1;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = (v5 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___reorderingExtension);
  v12 = *v11;
  *v11 = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v10;
  v11[5] = v4;
  if (a2)
  {
    sub_1FA524(v6);
    sub_1FA4B4(v12);
    sub_1FA4C4(*v3);
  }

  else
  {
    sub_1FA4B4(v12);
  }

  free(v3);
}

uint64_t ShowListPresenter.deletableExtension.getter@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___deletableExtension);
  v4 = *(v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___deletableExtension);
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___deletableExtension + 8);
  v7 = *(v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___deletableExtension + 16);
  v8 = *(v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___deletableExtension + 24);
  if (v4 == 1)
  {
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = *v3;
    v5 = Paragraph.reloadOnClick.getter;
    *v3 = Paragraph.reloadOnClick.getter;
    v3[1] = 0;
    v7 = sub_22D4B8;
    v3[2] = sub_22D4B8;
    v3[3] = v8;

    sub_1FB670(v9);
    v6 = 0;
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;

  return sub_1FB6C4(v4);
}

uint64_t sub_229CB4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___deletableExtension);
  v7 = *v6;
  *v6 = *a1;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  sub_1FB6D4(v2);

  return sub_1FB670(v7);
}

uint64_t ShowListPresenter.deletableExtension.setter(_OWORD *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___deletableExtension);
  v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___deletableExtension);
  v4 = a1[1];
  *v2 = *a1;
  v2[1] = v4;
  return sub_1FB670(v3);
}

uint64_t sub_229D50(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_1F958(a1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
    type metadata accessor for LibraryShowLockup();
    if (swift_dynamicCast())
    {
      v7 = v6[11];
      v8 = v6[12];
      __swift_project_boxed_opaque_existential_1(v6 + 8, v7);
      v9 = (*(v8 + 24))(v12, v7, v8);
      v13[3] = sub_EF15C();
      v13[0] = a3;

      v10 = a3;
      v11 = sub_3ED954();
      sub_22D094(v9, v13, v11);

      sub_FCF8(v13, &unk_501090);
    }
  }

  return result;
}

void (*ShowListPresenter.deletableExtension.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  ShowListPresenter.deletableExtension.getter(v3);
  return sub_229F3C;
}

void sub_229F3C(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = **a1;
  v7 = v3[1];
  v8 = v3[2];
  v9 = (v5 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___deletableExtension);
  v10 = *v9;
  *v9 = v6;
  v9[1] = v7;
  v9[2] = v8;
  v9[3] = v4;
  if (a2)
  {
    sub_1FB6D4(v6);
    sub_1FB670(v10);
    sub_1FB680(*v3);
  }

  else
  {
    sub_1FB670(v10);
  }

  free(v3);
}

uint64_t ShowListPresenter.Configuration.init(kind:showsPageHeader:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

char *ShowListPresenter.__allocating_init(asPartOf:with:)(uint64_t a1, char *a2)
{
  swift_allocObject();
  v4 = sub_22D604(a1, a2);

  return v4;
}

char *ShowListPresenter.init(asPartOf:with:)(uint64_t a1, char *a2)
{
  v2 = sub_22D604(a1, a2);

  return v2;
}

uint64_t sub_22A0B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAAB0);
  v2 = *(v1 - 8);
  v41 = v1;
  v42 = v2;
  __chkstk_darwin(v1);
  v40 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAAB8);
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD8);
  __chkstk_darwin(v31);
  v28 = &v28 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAAC0);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAAC8);
  v15 = *(v14 - 8);
  v35 = v14;
  v36 = v15;
  __chkstk_darwin(v14);
  v29 = v0;
  v30 = &v28 - v16;
  v17 = *(v0 + 120);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0);
  sub_3E9E74();
  swift_endAccess();
  v44 = *(v0 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_isEditing);
  v43 = *(v17 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_pageContent);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830);
  v34 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_886BC(&qword_4F7080, &qword_4F6FD8);
  sub_886BC(&qword_4F7F38, &qword_4F5578);
  sub_886BC(&qword_4F7F60, &qword_4F8830);
  sub_3E9B64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4FA9C0);
  sub_886BC(&qword_4FAAD0, &qword_4FAAC0);
  v18 = v30;
  v19 = v32;
  sub_3EA024();
  (*(v33 + 8))(v13, v19);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA858);
  sub_3E9E74();
  swift_endAccess();
  sub_886BC(&qword_4FAAD8, &qword_4FAAC8);
  v20 = v35;
  sub_3EA1B4();
  (*(v36 + 8))(v18, v20);
  v21 = v38;
  v22 = v39;
  (*(v38 + 16))(v37, v8, v39);
  swift_beginAccess();
  sub_3E9E84();
  swift_endAccess();
  v23 = *(v21 + 8);
  v24 = v22;
  v23(v8, v22);
  swift_beginAccess();
  sub_3E9E74();
  swift_endAccess();
  sub_886BC(&qword_4FAAE0, &qword_4FAAB8);
  sub_22E12C();
  v25 = v40;
  sub_3EA174();
  v23(v8, v24);
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4FAAF8, &qword_4FAAB0);
  v26 = v41;
  sub_3EA1A4();

  (*(v42 + 8))(v25, v26);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();
}

uint64_t sub_22A854(unsigned __int8 *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for PageContent();
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = *a1;
  sub_22E24C(a3, &v23 - v10, type metadata accessor for PageContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = type metadata accessor for PageContent;
  if (EnumCaseMultiPayload > 1)
  {
    v15 = 0;
    if (EnumCaseMultiPayload != 2)
    {
      v14 = type metadata accessor for ModernPage;
    }
  }

  else
  {
    v15 = 1;
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_7;
    }

    v14 = type metadata accessor for PageContent;
  }

  sub_22E2B4(v11, v14);
LABEL_7:
  sub_22E24C(a3, v8, type metadata accessor for PageContent);
  v16 = swift_getEnumCaseMultiPayload();
  v17 = type metadata accessor for PageContent;
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v18 = 1;
    }

    else
    {
      v18 = 0;
      v17 = type metadata accessor for ModernPage;
    }
  }

  else
  {
    v18 = 0;
    if (!v16)
    {
      goto LABEL_14;
    }

    v17 = type metadata accessor for PageContent;
  }

  sub_22E2B4(v8, v17);
LABEL_14:
  v19 = v12 >> 6;
  if (v12 >> 6 == 2)
  {
    return 512;
  }

  if (v15)
  {
    v21 = 7;
  }

  else
  {
    v21 = 8;
  }

  if (((v15 | v18) & 1) == 0)
  {
    if (v19)
    {
      if (v19 == 1)
      {
        v21 = v12 & 0x3F;
      }

      else
      {
        v21 = 7;
      }
    }

    else
    {
      v21 = v12;
    }
  }

  if (a2)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  return v22 & 0xFFFFFF00 | v21;
}

uint64_t sub_22AA80@<X0>(unsigned __int8 *a1@<X0>, _WORD *a2@<X8>)
{
  v4 = a1[1];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAB00);
  result = sub_22A854(a1, v4, &a1[*(v5 + 64)]);
  *a2 = result;
  return result;
}

uint64_t sub_22AADC(unsigned __int16 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = (result + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_rebuildMenuBar);
    swift_beginAccess();
    v4 = *v3;

    v4(v5);

    if (sub_3E7414())
    {
      sub_22ABB0(v1);
    }
  }

  return result;
}

uint64_t sub_22ABB0(int a1)
{
  v3 = sub_3E5FC4();
  v157 = *(v3 - 8);
  v158 = v3;
  __chkstk_darwin(v3);
  v156 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v160 = (&v135 - v6);
  v7 = sub_3EC1F4();
  v154 = *(v7 - 8);
  v155 = v7;
  __chkstk_darwin(v7);
  v159 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v153 = &v135 - v10;
  v161 = type metadata accessor for ActionMenu.Child(0);
  v152 = *(v161 - 8);
  __chkstk_darwin(v161);
  v151 = (&v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = (&v135 - v13);
  __chkstk_darwin(v15);
  v17 = (&v135 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5388);
  __chkstk_darwin(v18 - 8);
  v20 = &v135 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v21 - 8);
  v23 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v135 - v25;
  __chkstk_darwin(v27);
  v29 = &v135 - v28;
  v30 = type metadata accessor for HeaderButtonItem();
  __chkstk_darwin(v30);
  v34 = (&v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a1 & 0xFF00) == 0x200)
  {
    swift_beginAccess();
    v162[0] = _swiftEmptyArrayStorage;

    sub_3E9D44();
  }

  else
  {
    if ((a1 & 0x100) != 0)
    {
      v51 = v32;
      v52 = swift_allocObject();
      swift_weakInit();
      *v34 = sub_22E22C;
      v34[1] = v52;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1450);
      v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_3F5630;
      sub_22E24C(v34, v54 + v53, type metadata accessor for HeaderButtonItem);
      v162[0] = v54;

      sub_3E9D44();

      return sub_22E2B4(v34, type metadata accessor for HeaderButtonItem);
    }

    v145 = v32;
    v146 = v31;
    if (a1 == 7)
    {
      swift_beginAccess();
      v161 = *(v1 + 112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1450);
      v35 = (*(v145 + 80) + 32) & ~*(v145 + 80);
      v36 = swift_allocObject();
      v160 = v36;
      *(v36 + 1) = xmmword_3F5630;
      v37 = (v36 + v35);

      sub_3E7774();
      v38 = sub_3E7784();
      v158 = *(*(v38 - 8) + 56);
      (v158)(v29, 0, 1, v38);
      if (_UISolariumEnabled())
      {
        v39 = 0;
      }

      else
      {
        v39 = 2;
      }

      LODWORD(v159) = v39;
      v40 = sub_3E6AC4();
      (*(*(v40 - 8) + 56))(v20, 1, 1, v40);
      v41 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
      v43 = v42;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5380);
      v45 = v44[16];
      v155 = v44[12];
      v156 = v45;
      v157 = v44[20];
      sub_FBD0(v29, v26, &qword_4F1D50);
      v46 = v26;
      v47 = type metadata accessor for ActionMenu(0);
      v48 = v20;
      v49 = *(v47 + 28);
      (v158)(v37 + v49, 1, 1, v38);
      *v37 = v41;
      v37[1] = v43;
      v37[2] = 0;
      v37[3] = 0xE000000000000000;
      v37[4] = 0;
      v37[5] = 0;
      sub_51F9C(v46, v37 + v49, &qword_4F1D50);
      *(v37 + *(v47 + 32)) = _swiftEmptyArrayStorage;
      *(v37 + v155) = v159;
      sub_FBD0(v48, &v156[v37], &qword_4F5388);
      *(v37 + v157) = 0;
      swift_storeEnumTagMultiPayload();
      sub_FCF8(v48, &qword_4F5388);
      v50 = v29;
    }

    else
    {
      v139 = a1;
      v143 = v23;
      v140 = v20;
      v137 = objc_opt_self();
      v56 = [v137 mainBundle];
      v133._countAndFlagsBits = 0xE000000000000000;
      v166._object = 0x800000000042AD70;
      v166._countAndFlagsBits = 0xD000000000000011;
      v168.value._countAndFlagsBits = 0;
      v168.value._object = 0;
      v57.super.isa = v56;
      v170._countAndFlagsBits = 0;
      v170._object = 0xE000000000000000;
      v144 = sub_3E5A74(v166, v168, v57, v170, v133);
      v142 = v58;

      v59 = sub_3E7784();
      v60 = *(v59 - 8);
      v61 = *(v60 + 56);
      v62 = v60 + 56;
      v61(v26, 1, 1, v59);
      v164 = type metadata accessor for TextFieldAlertAction();
      v165 = sub_22E314(&qword_501120, type metadata accessor for TextFieldAlertAction);
      v63 = __swift_allocate_boxed_opaque_existential_0Tm(&v163);
      static TextFieldAlertAction.followShowByURL(initialText:then:)(0, 0, 0, 0, v63);
      v64 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
      v66 = v65;
      sub_FBD0(&v163, v162, &qword_4EDE00);
      v67 = type metadata accessor for ActionMenu.Item(0);
      v150 = v26;
      v68 = v67[7];
      v149 = v59;
      v148 = v61;
      v147 = v62;
      v61(v17 + v68, 1, 1, v59);
      v69 = v67[8];
      v70 = v17 + v67[10];
      *(v70 + 32) = 0;
      *v70 = 0u;
      *(v70 + 16) = 0u;
      *v17 = v64;
      v17[1] = v66;
      v71 = v142;
      v17[2] = v144;
      v17[3] = v71;
      v17[4] = 0;
      v17[5] = 0;
      sub_51F9C(v150, v17 + v68, &qword_4F1D50);
      *(v17 + v69) = 2;
      v138 = v67;
      *(v17 + v67[9]) = 1;
      sub_51F9C(v162, v70, &qword_4EDE00);
      swift_storeEnumTagMultiPayload();
      sub_FCF8(&v163, &qword_4EDE00);
      v72 = sub_E0140(0, 1, 1, _swiftEmptyArrayStorage);
      v74 = v72[2];
      v73 = v72[3];
      if (v74 >= v73 >> 1)
      {
        v72 = sub_E0140(v73 > 1, v74 + 1, 1, v72);
      }

      v144 = v72;
      v72[2] = v74 + 1;
      v142 = (*(v152 + 80) + 32) & ~*(v152 + 80);
      v141 = *(v152 + 72);
      sub_14AD98(v17, v72 + v142 + v141 * v74);
      v75 = [v137 mainBundle];
      v134._countAndFlagsBits = 0xEA00000000007377;
      v167._countAndFlagsBits = 0x4F48535F54494445;
      v167._object = 0xEA00000000005357;
      v169.value._countAndFlagsBits = 0;
      v169.value._object = 0;
      v76.super.isa = v75;
      v171._countAndFlagsBits = 0;
      v171._object = 0xE000000000000000;
      v137 = sub_3E5A74(v167, v169, v76, v171, v134);
      v136 = v77;

      v148(v150, 1, 1, v149);
      v78 = swift_allocObject();
      v152 = v1;
      swift_weakInit();

      v79 = v153;
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      v80 = type metadata accessor for ClosureAction();
      v81 = swift_allocObject();
      v82 = (v81 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
      *v82 = sub_22E20C;
      v82[1] = v78;
      v83 = v154;
      v84 = v155;
      (*(v154 + 16))(v159, v79, v155);
      v85 = sub_3EC634();
      (*(*(v85 - 8) + 56))(v160, 1, 1, v85);

      v86 = v156;
      sub_3E5FB4();
      v87 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v89 = v88;

      (*(v157 + 8))(v86, v158);
      (*(v83 + 8))(v79, v84);
      *(v81 + 16) = v87;
      *(v81 + 24) = v89;
      *(v81 + 32) = 0;
      *(v81 + 40) = 0;
      *(v81 + 48) = 32;
      (*(v83 + 32))(v81 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v159, v84);
      sub_14A10(v160, v81 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);

      v164 = v80;
      v165 = sub_22E314(&qword_4F13D8, type metadata accessor for ClosureAction);
      v163 = v81;
      v90 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
      v92 = v91;
      sub_FBD0(&v163, v162, &qword_4EDE00);
      v93 = v138;
      v94 = v138[7];
      v148(v14 + v94, 1, 1, v149);
      v95 = v93[8];
      v96 = v14 + v93[10];
      *(v96 + 32) = 0;
      *v96 = 0u;
      *(v96 + 16) = 0u;
      *v14 = v90;
      v14[1] = v92;
      v97 = v136;
      v14[2] = v137;
      v14[3] = v97;
      v14[4] = 0;
      v14[5] = 0;
      sub_51F9C(v150, v14 + v94, &qword_4F1D50);
      *(v14 + v95) = 2;
      *(v14 + v93[9]) = 1;
      sub_51F9C(v162, v96, &qword_4EDE00);
      swift_storeEnumTagMultiPayload();
      sub_FCF8(&v163, &qword_4EDE00);
      v98 = v144;
      v100 = v144[2];
      v99 = v144[3];
      if (v100 >= v99 >> 1)
      {
        v98 = sub_E0140(v99 > 1, v100 + 1, 1, v144);
      }

      v101 = v143;
      v98[2] = v100 + 1;
      sub_14AD98(v14, v98 + v142 + v100 * v141);
      v102 = v139;
      v103 = v152;
      if ((v139 - 7) >= 2u)
      {
        v104 = v150;
        v105 = v149;
        v106 = v148;
        v148(v150, 1, 1, v149);
        v160 = sub_22C040(v102);
        v107 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
        v109 = v108;
        v110 = type metadata accessor for ActionMenu(0);
        v111 = *(v110 + 28);
        v112 = v151;
        v106(v151 + v111, 1, 1, v105);
        *v112 = v107;
        v112[1] = v109;
        v112[2] = 0;
        v112[3] = 0xE000000000000000;
        v112[4] = 0;
        v112[5] = 0;
        sub_51F9C(v104, v112 + v111, &qword_4F1D50);
        *(v112 + *(v110 + 32)) = v160;
        swift_storeEnumTagMultiPayload();
        v114 = v98[2];
        v113 = v98[3];
        if (v114 >= v113 >> 1)
        {
          v98 = sub_E0140(v113 > 1, v114 + 1, 1, v98);
        }

        v101 = v143;
        v144 = v98;
        v98[2] = v114 + 1;
        sub_14AD98(v112, v98 + v142 + v114 * v141);
        v103 = v152;
      }

      else
      {
        v144 = v98;
      }

      swift_beginAccess();
      v161 = *(v103 + 112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1450);
      v115 = (*(v145 + 80) + 32) & ~*(v145 + 80);
      v116 = swift_allocObject();
      v160 = v116;
      *(v116 + 1) = xmmword_3F5630;
      v117 = v116 + v115;

      sub_3E7774();
      v118 = v149;
      v119 = v148;
      v148(v101, 0, 1, v149);
      if (_UISolariumEnabled())
      {
        v120 = 0;
      }

      else
      {
        v120 = 2;
      }

      LODWORD(v159) = v120;
      v121 = sub_3E6AC4();
      v122 = v140;
      (*(*(v121 - 8) + 56))(v140, 1, 1, v121);
      v123 = v101;
      v124 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
      v126 = v125;
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5380);
      v128 = v127[16];
      v156 = v127[12];
      v157 = v128;
      v158 = v127[20];
      v129 = v123;
      v130 = v150;
      sub_FBD0(v129, v150, &qword_4F1D50);
      v131 = type metadata accessor for ActionMenu(0);
      v132 = *(v131 + 28);
      v119(&v117[v132], 1, 1, v118);
      *v117 = v124;
      *(v117 + 1) = v126;
      *(v117 + 2) = 0;
      *(v117 + 3) = 0xE000000000000000;
      *(v117 + 4) = 0;
      *(v117 + 5) = 0;
      sub_51F9C(v130, &v117[v132], &qword_4F1D50);
      *&v117[*(v131 + 32)] = v144;
      v156[v117] = v159;
      sub_FBD0(v122, &v117[v157], &qword_4F5388);
      v117[v158] = 0;
      swift_storeEnumTagMultiPayload();
      sub_FCF8(v122, &qword_4F5388);
      v50 = v143;
    }

    sub_FCF8(v50, &qword_4F1D50);
    v162[0] = v160;
    sub_3E9D44();
  }
}

uint64_t ShowListPresenter.buildMenuBar(with:)(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  result = LOWORD(v10[0]);
  if ((v10[0] & 0xFF00) != 0x200 && (LOBYTE(v10[0]) - 7) >= 2u)
  {
    v4 = sub_22C040(LOWORD(v10[0]));
    if (!v4[2])
    {
    }

    if (qword_4E8BB0 != -1)
    {
      swift_once();
    }

    v5 = qword_504288;
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_22DA3C;
    *(v7 + 24) = v6;
    v10[4] = sub_22DA54;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_21C7E8;
    v10[3] = &block_descriptor_18;
    v8 = _Block_copy(v10);

    [a1 replaceChildrenOfMenuForIdentifier:v5 fromChildrenBlock:v8];
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_22C040(int a1)
{
  v110 = sub_3E5FC4();
  v2 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v108 = &v94 - v5;
  v107 = sub_3EC1F4();
  v6 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = &v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v10 - 8);
  v12 = &v94 - v11;
  v104 = type metadata accessor for ActionMenu.Child(0);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v127 = _swiftEmptyArrayStorage;
  sub_41E7C(0, 4, 0);
  v15 = v127;
  v16 = sub_3E7B74();
  v18 = v17;
  v112 = a1;
  if (v16 == sub_3E7B74() && v18 == v19)
  {
  }

  else
  {
    v20 = sub_3EE804();

    v21 = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v21 = sub_3E7B64();
LABEL_6:
  v23 = *(v15 + 16);
  v22 = *(v15 + 24);
  if (v23 >= v22 >> 1)
  {
    v86 = v14;
    v87 = v21;
    sub_41E7C((v22 > 1), v23 + 1, 1);
    v21 = v87;
    v14 = v86;
    v15 = v127;
  }

  *(v15 + 16) = v23 + 1;
  *(v15 + v23 + 32) = v21;
  v24 = sub_3E7B74();
  v26 = v25;
  if (v24 == sub_3E7B74() && v26 == v27)
  {

LABEL_12:
    v29 = sub_3E7B64();
    goto LABEL_14;
  }

  v28 = sub_3EE804();

  if (v28)
  {
    goto LABEL_12;
  }

  v29 = 4;
LABEL_14:
  *&v127 = v15;
  v31 = *(v15 + 16);
  v30 = *(v15 + 24);
  if (v31 >= v30 >> 1)
  {
    v88 = v14;
    v89 = v29;
    sub_41E7C((v30 > 1), v31 + 1, 1);
    v29 = v89;
    v14 = v88;
    v15 = v127;
  }

  *(v15 + 16) = v31 + 1;
  *(v15 + v31 + 32) = v29;
  v32 = sub_3E7B74();
  v34 = v33;
  if (v32 == sub_3E7B74() && v34 == v35)
  {

LABEL_20:
    v37 = sub_3E7B64();
    goto LABEL_22;
  }

  v36 = sub_3EE804();

  if (v36)
  {
    goto LABEL_20;
  }

  v37 = 2;
LABEL_22:
  *&v127 = v15;
  v39 = *(v15 + 16);
  v38 = *(v15 + 24);
  if (v39 >= v38 >> 1)
  {
    v90 = v14;
    v91 = v37;
    sub_41E7C((v38 > 1), v39 + 1, 1);
    v37 = v91;
    v14 = v90;
    v15 = v127;
  }

  *(v15 + 16) = v39 + 1;
  *(v15 + v39 + 32) = v37;
  v40 = sub_3E7B74();
  v42 = v41;
  if (v40 == sub_3E7B74() && v42 == v43)
  {

LABEL_28:
    v45 = sub_3E7B64();
    goto LABEL_30;
  }

  v44 = sub_3EE804();

  if (v44)
  {
    goto LABEL_28;
  }

  v45 = 6;
LABEL_30:
  *&v127 = v15;
  v47 = *(v15 + 16);
  v46 = *(v15 + 24);
  v48 = v47 + 1;
  if (v47 >= v46 >> 1)
  {
    v92 = v14;
    v93 = v45;
    sub_41E7C((v46 > 1), v47 + 1, 1);
    v45 = v93;
    v14 = v92;
    v15 = v127;
  }

  *(v15 + 16) = v48;
  *(v15 + v47 + 32) = v45;
  v130 = _swiftEmptyArrayStorage;
  sub_41A30(0, v47 + 1, 0);
  v49 = v130;
  v100 = 0x8000000000428380;
  v99 = (v6 + 16);
  v98 = (v2 + 8);
  v97 = (v6 + 8);
  v96 = (v6 + 32);
  v50 = 32;
  v102 = v14;
  v101 = v15;
  v95 = v12;
  do
  {
    v122 = v49;
    v123 = v48;
    v121 = v50;
    v51 = *(v15 + v50);
    v52 = ShowsSortType.displayTitle.getter(v51);
    v119 = v53;
    v120 = v52;
    v54 = ShowsSortType.displaySubtitle(currentSort:)(v112);
    v117 = v55;
    v118 = v54;
    v56 = sub_3E7784();
    v57 = *(v56 - 8);
    v115 = *(v57 + 56);
    v116 = v56;
    v114 = v57 + 56;
    v115(v12, 1, 1);
    v113 = sub_3E7B54();
    sub_1F958(v111 + 24, &v127);
    v58 = swift_allocObject();
    sub_1D4F0(&v127, v58 + 16);
    *(v58 + 56) = v51;
    v59 = v105;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v60 = type metadata accessor for ClosureAction();
    v61 = swift_allocObject();
    v62 = (v61 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v62 = sub_22E0D0;
    v62[1] = v58;
    v63 = v106;
    v64 = v107;
    (*v99)(v106, v59, v107);
    v65 = sub_3EC634();
    v66 = v108;
    (*(*(v65 - 8) + 56))(v108, 1, 1, v65);

    v67 = v109;
    sub_3E5FB4();
    v68 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v70 = v69;

    (*v98)(v67, v110);
    (*v97)(v59, v64);
    *(v61 + 16) = v68;
    *(v61 + 24) = v70;
    *(v61 + 32) = 0;
    *(v61 + 40) = 0;
    *(v61 + 48) = 32;
    (*v96)(v61 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v63, v64);
    sub_14A10(v66, v61 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
    v128 = v60;
    v129 = sub_22E314(&qword_4F13D8, type metadata accessor for ClosureAction);
    *&v127 = v61;
    if (qword_4E89C8 != -1)
    {
      swift_once();
    }

    v71 = v113 ^ 1;
    add = atomic_fetch_add((*(*off_4F3A90[0] + 136))(), 1uLL);
    v124 = 0;
    v125 = 0xE000000000000000;
    sub_3EE3C4(38);

    v124 = 0xD000000000000024;
    v125 = v100;
    v126 = add;
    v131._countAndFlagsBits = sub_3EE7A4();
    sub_3ED3D4(v131);

    v73 = v124;
    v74 = v125;
    sub_FBD0(&v127, &v124, &qword_4EDE00);
    v75 = type metadata accessor for ActionMenu.Item(0);
    v76 = v75[7];
    v77 = v102;
    (v115)(v102 + v76, 1, 1, v116);
    v78 = v75[8];
    v79 = v77 + v75[10];
    *(v79 + 32) = 0;
    *v79 = 0u;
    *(v79 + 16) = 0u;
    *v77 = v73;
    v77[1] = v74;
    v80 = v119;
    v77[2] = v120;
    v77[3] = v80;
    v81 = v117;
    v77[4] = v118;
    v77[5] = v81;
    v82 = v95;
    sub_51F9C(v95, v77 + v76, &qword_4F1D50);
    *(v77 + v78) = 2;
    *(v77 + v75[9]) = v71 & 1;
    sub_51F9C(&v124, v79, &qword_4EDE00);
    swift_storeEnumTagMultiPayload();
    sub_FCF8(&v127, &qword_4EDE00);
    v49 = v122;
    v130 = v122;
    v84 = v122[2];
    v83 = v122[3];
    v12 = v82;
    if (v84 >= v83 >> 1)
    {
      sub_41A30(v83 > 1, v84 + 1, 1);
      v49 = v130;
    }

    v49[2] = v84 + 1;
    sub_14AD98(v77, v49 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v84);
    v50 = v121 + 1;
    v48 = v123 - 1;
    v15 = v101;
  }

  while (v123 != 1);

  return v49;
}

void *sub_22CBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_625AC(_swiftEmptyArrayStorage);
  v5 = ActionMenuBuilder.buildMenuElements(for:asPartOf:)(a2, *(a3 + 16));

  return v5;
}

uint64_t ShowListPresenter.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);

  v1 = OBJC_IVAR____TtC8ShelfKit17ShowListPresenter__headerButtonState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA858);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1CE068(*(v0 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_libraryRefreshType), *(v0 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_libraryRefreshType + 8), *(v0 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_libraryRefreshType + 16));

  sub_1FA4B4(*(v0 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___reorderingExtension));
  sub_1FB670(*(v0 + OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___deletableExtension));
  return v0;
}

uint64_t ShowListPresenter.__deallocating_deinit()
{
  ShowListPresenter.deinit();

  return swift_deallocClassInstance();
}

char *sub_22CDEC(uint64_t a1, char *a2)
{
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  swift_allocObject();
  v4 = sub_22D604(a1, v6);

  return v4;
}

uint64_t sub_22CEB8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 120);
  v4 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider_paginatedPublisher;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

uint64_t sub_22CF18()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_3E9D44();
  }

  return result;
}

uint64_t sub_22CFA0@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_22D020()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

uint64_t sub_22D094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v24[3] = type metadata accessor for SheetAction();
  v24[4] = sub_22E314(&qword_4FA1A0, type metadata accessor for SheetAction);
  v24[0] = a1;
  type metadata accessor for ActionRunnerOptions();

  sub_3EC464();
  v12 = sub_3E6434();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v11, a2, a3);

  sub_FCF8(v11, &qword_5005B0);
  sub_1F958(v24, v22);
  v23 = v13;
  sub_E69A0(v22, v21);
  v14 = swift_allocObject();
  v15 = v21[1];
  v14[1] = v21[0];
  v14[2] = v15;
  v14[3] = v21[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v16 = sub_3ECE04();
  v17 = sub_3ED6F4();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_4072F0;
  v18[5] = v14;
  v18[6] = v16;

  sub_E8ECC(0, 0, v8, &unk_407300, v18);

  sub_E91B8(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return v16;
}

BOOL _s8ShelfKit17ShowListPresenterC4KindO2eeoiySbAE_AEtFZ_0(char a1, char a2)
{
  if (a1 == 7)
  {
    return a2 == 7;
  }

  if (a2 == 7)
  {
    return 0;
  }

  v3 = sub_3E7B74();
  v5 = v4;
  if (v3 == sub_3E7B74() && v5 == v6)
  {

    return 1;
  }

  else
  {
    v7 = sub_3EE804();

    return v7 & 1;
  }
}

uint64_t sub_22D470()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_22D4C0(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v9._countAndFlagsBits = 0xE500000000000000;
  v11._countAndFlagsBits = 0x48535F454C544954;
  v11._object = 0xEB0000000053574FLL;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v4.super.isa = v3;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v5 = sub_3E5A74(v11, v13, v4, v15, v9);

  if ((a1 & 0xFE) == 2)
  {

    v6 = [v2 mainBundle];
    v10._countAndFlagsBits = 0x800000000042B420;
    v12._object = 0x800000000042AE10;
    v12._countAndFlagsBits = 0xD000000000000010;
    v14.value._countAndFlagsBits = 0;
    v14.value._object = 0;
    v7.super.isa = v6;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v5 = sub_3E5A74(v12, v14, v7, v16, v10);
  }

  return v5;
}

char *sub_22D604(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FA858);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = *a2;
  v11 = a2[1];
  memset(v26, 0, 21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  *(v3 + 13) = sub_3E9D94();
  *&v26[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A90);
  swift_allocObject();
  *(v3 + 14) = sub_3E9D94();
  v12 = OBJC_IVAR____TtC8ShelfKit17ShowListPresenter__headerButtonState;
  LOWORD(v26[0]) = 512;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4FA9C0);
  sub_3E9E64();
  (*(v7 + 32))(&v3[v12], v9, v6);
  *&v3[OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_subscriptions] = _swiftEmptyArrayStorage;
  v13 = &v3[OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_rebuildMenuBar];
  *v13 = FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.init();
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_refreshControls;
  LOBYTE(v26[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F94C0);
  swift_allocObject();
  *&v3[v14] = sub_3E9D94();
  v15 = &v3[OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_libraryRefreshType];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 2;
  v16 = OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_isEditing;
  LOBYTE(v26[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  swift_allocObject();
  *&v3[v16] = sub_3E9D94();
  v17 = OBJC_IVAR____TtC8ShelfKit17ShowListPresenter_dismiss;
  LOBYTE(v26[0]) = 0;
  swift_allocObject();
  *&v3[v17] = sub_3E9D94();
  v18 = &v3[OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___reorderingExtension];
  *v18 = 1;
  *(v18 + 5) = 0;
  *(v18 + 24) = 0u;
  *(v18 + 8) = 0u;
  v19 = &v3[OBJC_IVAR____TtC8ShelfKit17ShowListPresenter____lazy_storage___deletableExtension];
  *v19 = 1;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v3 + 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50);

  sub_3EC394();
  sub_1D4F0(v26, (v3 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5358);
  sub_3EC394();
  sub_1D4F0(v26, (v3 + 64));
  v20 = qword_4E89F0;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_4F5AA8;
  type metadata accessor for ShowListProvider();
  swift_allocObject();
  v22 = sub_1ADAE4(a1, v10, v21);

  *(v3 + 15) = v22;
  *&v26[0] = sub_22D4C0(v10);
  *(&v26[0] + 1) = v23;
  if (v11)
  {
    LODWORD(v26[1]) = 0;
    BYTE4(v26[1]) = -96;
  }

  else
  {
    BYTE4(v26[1]) = 0;
    LODWORD(v26[1]) = 0;
  }

  sub_3E9D74();
  sub_22A0B8();
  return v3;
}

uint64_t sub_22D9FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DA74(uint64_t a1)
{
  result = sub_22E314(&qword_4FA948, type metadata accessor for ShowListPresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ShowListPresenter()
{
  result = qword_4FA9A8;
  if (!qword_4FA9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_22DB68@<D0>(_OWORD *a1@<X8>)
{
  ShowListPresenter.reorderingExtension.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_22DBB0@<D0>(_OWORD *a1@<X8>)
{
  ShowListPresenter.deletableExtension.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

void sub_22DBF8()
{
  sub_22DD10();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22DD10()
{
  if (!qword_4FA9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_4FA9C0);
    v0 = sub_3E9EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_4FA9B8);
    }
  }
}

uint64_t getEnumTagSinglePayload for ShowListPresenter.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 7;
  v9 = v7 - 7;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShowListPresenter.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryMenuAction(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryMenuAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22E060()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_22E098()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_22E0D0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return (*(v2 + 184))(v3, v1, v2);
}

unint64_t sub_22E12C()
{
  result = qword_4FAAE8;
  if (!qword_4FAAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_4FA9C0);
    sub_22E1B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FAAE8);
  }

  return result;
}

unint64_t sub_22E1B0()
{
  result = qword_4FAAF0;
  if (!qword_4FAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FAAF0);
  }

  return result;
}

uint64_t sub_22E24C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E2B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22E314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22E35C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_22E39C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t getEnumTagSinglePayload for HeaderButtonState.Children(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 7)
  {
    v8 = v7 - 6;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HeaderButtonState.Children(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_22E544(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 7)
  {
    return v1 - 6;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_22E558(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 6;
  }

  return result;
}

uint64_t StorePagePresenter.headerButtonItems.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t StorePagePresenter.interactionContextPage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3E63E4();
  __chkstk_darwin(v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 24);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    if (*(v6 + 24) != 1)
    {
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (!v7)
  {
    return swift_storeEnumTagMultiPayload();
  }

  sub_231D7C(v7 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, v5, &type metadata accessor for InteractionContext.Page);
  return sub_231D14(v5, a1, &type metadata accessor for InteractionContext.Page);
}

uint64_t StorePagePresenter.interactionContextOrigin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_interactionContextOrigin;
  v4 = sub_3E6424();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StorePagePresenter.refreshCommandTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_refreshCommandTitle);

  return v1;
}

uint64_t StorePagePresenter.Configuration.page.getter()
{
  type metadata accessor for StorePagePresenter.Configuration(0);
}

uint64_t StorePagePresenter.Configuration.page.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StorePagePresenter.Configuration(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t StorePagePresenter.Configuration.init(pageURL:page:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3E5DC4();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for StorePagePresenter.Configuration(0) + 20);
  result = sub_17F4C4(a1, a3);
  *(a3 + v7) = a2;
  return result;
}

uint64_t StorePagePresenter.__allocating_init(asPartOf:with:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  StorePagePresenter.init(asPartOf:with:)(a1, a2);
  return v4;
}

void *StorePagePresenter.init(asPartOf:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = a1;
  v71 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v72 = v63 - v5;
  v69 = sub_3E5FC4();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v7 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_3EC1F4();
  v8 = *(v68 - 8);
  __chkstk_darwin(v68);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v11 - 8);
  v13 = v63 - v12;
  v14 = sub_3E65B4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[4] = _swiftEmptyArrayStorage;
  v74 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8A90);
  swift_allocObject();
  v2[5] = sub_3E9D94();
  v74 = 0;
  memset(v75, 0, 13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7D40);
  swift_allocObject();
  v2[6] = sub_3E9D94();
  v18 = OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_interactionContextOrigin;
  v19 = enum case for InteractionContext.Origin.store(_:);
  v20 = sub_3E6424();
  (*(*(v20 - 8) + 104))(v3 + v18, v19, v20);
  v21 = OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_hasLoadedContent;
  v65 = v15;
  v66 = v14;
  v22 = *(v15 + 104);
  v63[1] = v15 + 104;
  v63[0] = v22;
  v22(v17, enum case for ExtendedLaunchStatus.loading(_:), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5598);
  swift_allocObject();
  v64 = v17;
  *(v3 + v21) = sub_3E9D94();
  v23 = OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_appEntityAnnotation;
  v74 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAB10);
  swift_allocObject();
  *(v3 + v23) = sub_3E9D94();
  v24 = OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_refreshControls;
  LOBYTE(v74) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F94C0);
  swift_allocObject();
  *(v3 + v24) = sub_3E9D94();
  v25 = (v3 + OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_refreshCommandTitle);
  v26 = [objc_opt_self() mainBundle];
  v62._countAndFlagsBits = 0xE000000000000000;
  v76._countAndFlagsBits = 0x68736572666552;
  v76._object = 0xE700000000000000;
  v77.value._countAndFlagsBits = 0;
  v77.value._object = 0;
  v27.super.isa = v26;
  v78._countAndFlagsBits = 0;
  v78._object = 0xE000000000000000;
  v28 = sub_3E5A74(v76, v77, v27, v78, v62);
  v30 = v29;

  *v25 = v28;
  v25[1] = v30;
  v31 = OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_filteringEnabled;
  LOBYTE(v74) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5578);
  swift_allocObject();
  *(v3 + v31) = sub_3E9D94();
  v32 = OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_filters;
  v74 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAB18);
  swift_allocObject();
  *(v3 + v32) = sub_3E9D94();
  v33 = OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_selectedFilter;
  v34 = sub_3EC634();
  (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  type metadata accessor for Action();
  v35 = swift_allocObject();
  sub_3E5FB4();
  v36 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v38 = v37;
  (*(v67 + 8))(v7, v69);
  *(v35 + 16) = v36;
  *(v35 + 24) = v38;
  *(v35 + 32) = xmmword_3F7510;
  *(v35 + 48) = 32;
  (*(v8 + 32))(v35 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v10, v68);
  v39 = v70;
  sub_14A10(v13, v35 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v74 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAB20);
  swift_allocObject();
  *(v3 + v33) = sub_3E9D94();
  v40 = v71;
  *(v3 + OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_updatingFilters) = 0;
  v3[2] = v39;
  v41 = *(v40 + *(type metadata accessor for StorePagePresenter.Configuration(0) + 20));

  if (v41)
  {
    v42 = sub_22F5BC();
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
  }

  v74 = v42;
  v75[0] = v43;
  LODWORD(v75[1]) = v44;
  BYTE4(v75[1]) = BYTE4(v44);
  sub_3E9D74();

  v45 = v72;
  sub_189AC(v40, v72);
  type metadata accessor for StorePageProvider();
  swift_allocObject();

  v46 = StorePageProvider.init(asPartOf:pageURL:page:)(v39, v45, v41);
  v3[3] = v46;
  v47 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v48 = *(v46 + 48);
  *(v46 + 48) = sub_231708;
  *(v46 + 56) = v47;

  sub_16AC0(v48);

  v49 = v3[3];
  v50 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v51 = *(v49 + 64);
  *(v49 + 64) = sub_231710;
  *(v49 + 72) = v50;

  sub_16AC0(v51);

  v52 = v3[3];
  swift_beginAccess();
  v53 = *(v52 + 16);
  v54 = *(v52 + 24);
  v55 = *(v52 + 32);
  if (v54 == 1)
  {
    if (v55 == 1)
    {
      v56 = 2;
    }

    else
    {
      v56 = 1;
    }

    if ((*(v53 + 80) & 8) != 0)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    v73 = v57;
    sub_1AE550(v53, 1u);
    sub_1AE564(v55);
    sub_3E9D44();
    swift_beginAccess();
    v58 = &enum case for ExtendedLaunchStatus.finishedLoading(_:);
    goto LABEL_14;
  }

  v73 = 0;
  sub_1AE550(v53, v54);
  sub_1AE564(v55);
  sub_3E9D44();
  if (v55 >= 2)
  {
    swift_beginAccess();
    v58 = &enum case for ExtendedLaunchStatus.contentError(_:);
LABEL_14:
    v59 = v64;
    v60 = v66;
    (v63[0])(v64, *v58, v66);

    sub_3E9D44();

    (*(v65 + 8))(v59, v60);
  }

  sub_1B78E4(v53, v54);
  sub_1B7940(v55);
  sub_231C68(v40, type metadata accessor for StorePagePresenter.Configuration);
  return v3;
}

uint64_t sub_22F5BC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = 0;
  }

  Page.uberStyle.getter();
  return v1;
}

uint64_t sub_22F64C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22F6AC(a1);
  }

  return result;
}

void sub_22F6AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  __chkstk_darwin(v4 - 8);
  v59 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = &v52 - v7;
  __chkstk_darwin(v8);
  v63 = &v52 - v9;
  v10 = sub_3E5764();
  v67 = *(v10 - 8);
  v68 = v10;
  __chkstk_darwin(v10);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5740);
  __chkstk_darwin(v12 - 8);
  v55 = &v52 - v13;
  v54 = type metadata accessor for HeaderButtonItem();
  __chkstk_darwin(v54);
  v53 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3E63E4();
  __chkstk_darwin(v15);
  v52 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v56 = &v52 - v18;
  __chkstk_darwin(v19);
  v60 = &v52 - v20;
  __chkstk_darwin(v21);
  v62 = &v52 - v22;
  __chkstk_darwin(v23);
  v25 = &v52 - v24;
  v26 = sub_22F5BC();
  v28 = v27;
  v30 = v29;
  swift_storeEnumTagMultiPayload();
  v31 = sub_3E63C4();
  sub_231C68(v25, &type metadata accessor for InteractionContext.Page);
  v32 = 0xFFFFFFA000000000;
  if ((v31 & (((v30 >> 37) & 7) == 4)) == 0)
  {
    v32 = v30;
  }

  v70 = v26;
  v71 = v28;
  v73 = BYTE4(v32);
  v72 = v32;
  v64 = v26;
  v65 = v28;
  v66 = v30;
  sub_17AF44(v26, v28, v30);
  sub_3E9D74();
  v33 = v2;
  sub_23074C(a1);
  v34 = *(a1 + 72);
  v74 = v34;
  v61 = v15;
  swift_storeEnumTagMultiPayload();

  v35 = sub_3E63C4();
  sub_231C68(v25, &type metadata accessor for InteractionContext.Page);
  if (v35)
  {
    v36 = v53;
    *v53 = 1;
    swift_storeEnumTagMultiPayload();
    v37 = v55;
    sub_231D14(v36, v55, type metadata accessor for HeaderButtonItem);
    v38 = v34[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v34;
    if (!isUniquelyReferenced_nonNull_native || v38 >= v34[3] >> 1)
    {
      v34 = sub_E0860(isUniquelyReferenced_nonNull_native, v38 + 1, 1, v34);
      v74 = v34;
    }

    v41 = v67;
    v40 = v68;
    v42 = v62;
    v43 = v63;
    sub_17C7B8(0, 0, 1, v37);
    v74 = v34;
  }

  else
  {
    v41 = v67;
    v40 = v68;
    v42 = v62;
    v43 = v63;
  }

  v44 = *(v33 + 24);
  swift_beginAccess();
  v45 = *(v44 + 16);
  if (*(v44 + 24))
  {
    if (*(v44 + 24) != 1)
    {
LABEL_11:
      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    }
  }

  else if (!v45)
  {
    goto LABEL_11;
  }

  v46 = v60;
  sub_231D7C(v45 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, v60, &type metadata accessor for InteractionContext.Page);
  sub_231D14(v46, v42, &type metadata accessor for InteractionContext.Page);
LABEL_14:
  sub_3E6384();
  sub_231C68(v42, &type metadata accessor for InteractionContext.Page);
  if ((*(v41 + 48))(v43, 1, v40) == 1)
  {
    sub_FCF8(v43, &qword_4F09A0);
    goto LABEL_22;
  }

  v47 = v58;
  (*(v41 + 32))(v58, v43, v40);
  v48 = *(v44 + 16);
  if (!*(v44 + 24))
  {
    v49 = v56;
    if (!v48)
    {
      goto LABEL_18;
    }

LABEL_20:
    v50 = v52;
    sub_231D7C(v48 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, v52, &type metadata accessor for InteractionContext.Page);
    sub_231D14(v50, v49, &type metadata accessor for InteractionContext.Page);
    goto LABEL_21;
  }

  v49 = v56;
  if (*(v44 + 24) == 1)
  {
    goto LABEL_20;
  }

LABEL_18:
  swift_storeEnumTagMultiPayload();
LABEL_21:
  sub_3E6384();
  sub_231C68(v49, &type metadata accessor for InteractionContext.Page);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5558);
  swift_allocObject();
  sub_3E9D94();
  v51 = v59;
  (*(v41 + 16))(v59, v47, v40);
  (*(v41 + 56))(v51, 0, 1, v40);
  sub_3E9D44();

  sub_FCF8(v51, &qword_4F09A0);
  (*(v41 + 8))(v47, v40);
LABEL_22:
  if (sub_230AAC(v33, &v74))
  {

    sub_231CC8(v64, v65, v66);
  }

  else
  {
    swift_beginAccess();
    v69 = v34;

    sub_3E9D44();

    sub_231CC8(v64, v65, v66);
  }
}

uint64_t sub_22FE4C(uint64_t *a1)
{
  v2 = sub_3E65B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = a1[2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v7 == 1)
    {
      if (v8 == 1)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      if ((*(v6 + 80) & 8) != 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v13[0] = v11;
      sub_3E9D44();
      swift_beginAccess();
      v12 = &enum case for ExtendedLaunchStatus.finishedLoading(_:);
    }

    else
    {
      v13[0] = 0;
      sub_3E9D44();
      if (v8 < 2)
      {
      }

      swift_beginAccess();
      v12 = &enum case for ExtendedLaunchStatus.contentError(_:);
    }

    (*(v3 + 104))(v5, *v12, v2);

    sub_3E9D44();

    (*(v3 + 8))(v5, v2);
  }

  return result;
}

Swift::Void __swiftcall StorePagePresenter.viewDidLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAB30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAB38);
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAB40);
  v10 = *(v9 - 8);
  v21 = v9;
  v22 = v10;
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v19 = *(v0 + 24);
  StorePageProvider.viewDidLoad()();
  v13 = OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_selectedFilter;
  swift_beginAccess();
  v23 = *(v1 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAB20);
  sub_886BC(&qword_4FAB48, &qword_4FAB20);
  sub_5EF78();
  sub_3EA174();
  sub_886BC(&qword_4FAB50, &qword_4FAB30);
  sub_3EA144();
  (*(v3 + 8))(v5, v2);
  sub_3E5DC4();
  sub_886BC(&qword_4FAB58, &qword_4FAB38);
  v14 = v20;
  sub_3E9FA4();
  (*(v6 + 8))(v8, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = v19;
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  sub_886BC(&qword_4FAB60, &qword_4FAB40);

  v18 = v21;
  sub_3EA1A4();

  (*(v22 + 8))(v12, v18);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0);
  sub_886BC(&qword_4F59C8, &qword_4F59C0);
  sub_3E9C94();
  swift_endAccess();
}

uint64_t sub_2304C8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F9A50);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  type metadata accessor for FlowAction(0);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_4;
  }

  sub_15174(v4);

  v5 = type metadata accessor for FlowDestination();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {

    sub_FCF8(v4, &qword_4F9A50);
LABEL_4:
    v6 = sub_3E5DC4();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }

  FlowDestination.pageDestinationURL.getter(a1);

  return sub_231C68(v4, type metadata accessor for FlowDestination);
}

void sub_230660(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v3 = *(Strong + OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_updatingFilters), , (v3 & 1) == 0))
  {
    StorePageProvider.loadNewPageURL(_:)(a1);
  }
}

Swift::Void __swiftcall StorePagePresenter.viewDidDisappear()()
{
  if (*(*(v0 + 24) + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_inMemoryPageStateController))
  {

    sub_3E92F4();
  }
}

uint64_t sub_23074C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  if (v2 >> 62)
  {
LABEL_37:
    result = sub_3EE5A4();
    if (result < 2)
    {
      return result;
    }

    result = sub_3EE5A4();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v3 < 2)
    {
      return result;
    }
  }

  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = (v2 + 32);
  while (!v5)
  {
    if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_37;
    }

    v7 = *(v2 + 8 * v4 + 32);

    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_17;
    }

LABEL_8:
    v9 = *(v1 + 48);
    if (v9)
    {
      v10 = *(v7 + 16) == *(v1 + 40) && v9 == *(v7 + 24);
      if (v10 || (sub_3EE804() & 1) != 0)
      {
        goto LABEL_18;
      }
    }

    ++v4;
    if (v8 == v3)
    {
      return result;
    }
  }

  v7 = sub_3EE3F4();
  v8 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_8;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  v21 = OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_updatingFilters;
  *(v22 + OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_updatingFilters) = 1;
  swift_beginAccess();

  sub_3E9D44();

  swift_beginAccess();
  if (!(v2 >> 62))
  {
    v11 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_20;
    }

LABEL_28:

LABEL_29:
    sub_3E9D44();

    swift_beginAccess();

    sub_3E9D44();

    *(v22 + v21) = 0;
    return result;
  }

  v11 = sub_3EE5A4();
  if (!v11)
  {
    goto LABEL_28;
  }

LABEL_20:

  result = sub_41EAC(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = _swiftEmptyArrayStorage;
    if (v5)
    {
      for (i = 0; i != v11; ++i)
      {
        v14 = sub_3EE3F4();
        v23 = v12;
        v16 = v12[2];
        v15 = v12[3];
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          sub_41EAC((v15 > 1), v16 + 1, 1);
          v14 = v17;
          v12 = v23;
        }

        v12[2] = v16 + 1;
        v12[v16 + 4] = v14;
      }
    }

    else
    {
      v18 = _swiftEmptyArrayStorage[2];
      do
      {
        v19 = *v6;
        v20 = _swiftEmptyArrayStorage[3];

        if (v18 >= v20 >> 1)
        {
          sub_41EAC((v20 > 1), v18 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        _swiftEmptyArrayStorage[v18 + 4] = v19;
        ++v6;
        ++v18;
        --v11;
      }

      while (v11);
    }

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_230AAC(uint64_t a1, uint64_t *a2)
{
  v32 = a2;
  v3 = type metadata accessor for HeaderButtonItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v30 = &v29 - v8;
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  swift_beginAccess();
  v31 = a1;

  sub_3E9D64();

  v16 = v33;
  v17 = *(v33 + 16);
  if (v17)
  {
    v18 = 0;
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v20 = *(v4 + 72);
      sub_231D7C(v16 + v19 + v20 * v18, v14, type metadata accessor for HeaderButtonItem);
      sub_231D14(v14, v11, type metadata accessor for HeaderButtonItem);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        break;
      }

      ++v18;
      result = sub_231C68(v11, type metadata accessor for HeaderButtonItem);
      if (v17 == v18)
      {
        goto LABEL_6;
      }
    }

    sub_231C68(v11, type metadata accessor for HeaderButtonItem);
    v22 = v32;
    v23 = *v32;
    v24 = *(*v32 + 16);

    v25 = v30;
    if (!v24)
    {
LABEL_12:

      v21 = 0;
      goto LABEL_14;
    }

    v26 = 0;
    v27 = v23 + v19;
    while (v26 < *(v23 + 16))
    {
      sub_231D7C(v27, v25, type metadata accessor for HeaderButtonItem);
      sub_231D14(v25, v6, type metadata accessor for HeaderButtonItem);
      if (swift_getEnumCaseMultiPayload() == 3)
      {

        sub_231C68(v6, type metadata accessor for HeaderButtonItem);
        v21 = 1;
        goto LABEL_14;
      }

      ++v26;
      result = sub_231C68(v6, type metadata accessor for HeaderButtonItem);
      v27 += v20;
      if (v24 == v26)
      {
        goto LABEL_12;
      }
    }

LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_6:

    v21 = 0;
    v22 = v32;
LABEL_14:

    sub_3E9D64();

    v28 = *(v33 + 16);

    if (v28 == *(*v22 + 16))
    {
      return v21;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t StorePagePresenter.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_interactionContextOrigin;
  v2 = sub_3E6424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t StorePagePresenter.__deallocating_deinit()
{
  StorePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_230FA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8ShelfKit18StorePagePresenter_interactionContextOrigin;
  v5 = sub_3E6424();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t StorePagePresenter.isPreparingNextPage.getter()
{
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_isPreparingNextPage;
  swift_beginAccess();
  return *(v1 + v2);
}

Swift::Bool __swiftcall StorePagePresenter.shouldPrepareNextPage()()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent;
  swift_beginAccess();
  if (!*(v1 + 24))
  {
    v4 = *v1;
    v5 = *(v1 + 16);
    v8 = *(v1 + 32);
    v6 = v4;
    v7 = v5;
    v2 = *(&v5 + 1);
    if (!*(&v5 + 1))
    {
      return v2 != 0;
    }

    goto LABEL_3;
  }

  sub_1F958(v1, &v6);
  v2 = *(&v7 + 1);
  if (*(&v7 + 1))
  {
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1Tm(&v6);
  }

  return v2 != 0;
}

void *sub_2311B4()
{
  v0 = type metadata accessor for ModernShelf();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PageContent();
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModernPage();
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_3E9D64();

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v26 = type metadata accessor for PageContent;
    v27 = v6;
    return sub_231C68(v27, v26);
  }

  sub_231D14(v6, v9, type metadata accessor for ModernPage);
  v10 = *(v7 + 24);
  v39 = v9;
  v11 = *&v9[v10];
  v12 = *(v11 + 16);
  if (!v12)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_21:
    v28 = v15[2];
    if (v28)
    {
      v29 = (v15 + 4);
      v30 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_1F958(v29, &v44);
        sub_1D4F0(&v44, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1448);
        if (swift_dynamicCast())
        {
          if (*(&v41 + 1))
          {
            sub_1D4F0(&v40, v43);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_E0A18(0, v30[2] + 1, 1, v30);
            }

            v32 = v30[2];
            v31 = v30[3];
            if (v32 >= v31 >> 1)
            {
              v30 = sub_E0A18((v31 > 1), v32 + 1, 1, v30);
            }

            v30[2] = v32 + 1;
            sub_1D4F0(v43, &v30[5 * v32 + 4]);
            goto LABEL_25;
          }
        }

        else
        {
          v42 = 0;
          v40 = 0u;
          v41 = 0u;
        }

        sub_FCF8(&v40, &qword_4FAE48);
LABEL_25:
        v29 += 40;
        if (!--v28)
        {

          goto LABEL_35;
        }
      }
    }

    v30 = _swiftEmptyArrayStorage;
LABEL_35:
    v33 = v30[2];
    v34 = v39;
    if (v33)
    {
      v35 = (v30 + 4);
      do
      {
        sub_1F958(v35, &v44);
        v36 = v45;
        v37 = v46;
        __swift_project_boxed_opaque_existential_1(&v44, v45);
        (*(v37 + 40))(v36, v37);
        __swift_destroy_boxed_opaque_existential_1Tm(&v44);
        v35 += 40;
        --v33;
      }

      while (v33);
    }

    v26 = type metadata accessor for ModernPage;
    v27 = v34;
    return sub_231C68(v27, v26);
  }

  v13 = *(v0 + 28);
  v14 = v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v15 = _swiftEmptyArrayStorage;
  v16 = *(v1 + 72);
  while (1)
  {
    sub_231D7C(v14, v3, type metadata accessor for ModernShelf);
    v18 = *&v3[v13];

    result = sub_231C68(v3, type metadata accessor for ModernShelf);
    v19 = *(v18 + 16);
    v20 = v15[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v21 <= v15[3] >> 1)
    {
      if (!*(v18 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v22 = v20 + v19;
      }

      else
      {
        v22 = v20;
      }

      result = sub_E02D8(result, v22, 1, v15);
      v15 = result;
      if (!*(v18 + 16))
      {
LABEL_4:

        if (v19)
        {
          goto LABEL_41;
        }

        goto LABEL_5;
      }
    }

    if ((v15[3] >> 1) - v15[2] < v19)
    {
      goto LABEL_42;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
    swift_arrayInitWithCopy();

    if (v19)
    {
      v23 = v15[2];
      v24 = __OFADD__(v23, v19);
      v25 = v23 + v19;
      if (v24)
      {
        goto LABEL_43;
      }

      v15[2] = v25;
    }

LABEL_5:
    v14 += v16;
    if (!--v12)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_2316D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_231718()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_231760(uint64_t a1)
{
  result = sub_231850(&qword_4FAC48);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2317C8()
{
  result = qword_4FAC50;
  if (!qword_4FAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FAC50);
  }

  return result;
}

uint64_t sub_231850(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StorePagePresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23189C()
{
  result = sub_3E6424();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2319AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_231A94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_231B58()
{
  sub_231C14(319, &qword_4E9918, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    sub_231C14(319, &unk_4FAE18, type metadata accessor for Page);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_231C14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_231C68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_231CC8(void *a1, id a2, unint64_t a3)
{
  if (((a3 >> 37) & 7) > 5)
  {
    if (((a3 >> 37) & 7) == 6)
    {
    }
  }

  else
  {
  }
}

uint64_t sub_231D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_231D7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_231DEC()
{
  _s6LoaderCMa(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB108);
  sub_3E9E64();
  v1 = OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_loaderConfiguration;
  v2 = _s6LoaderC19LoaderConfigurationVMa(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_lastKnownProxySize;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v0 + OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_currentRequest) = 0;
  v4 = OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_animation;
  *(v0 + v4) = sub_3EBAA4();
  return v0;
}

uint64_t Artwork.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3EBA74();
  v5 = v4;
  sub_2320A8(v1, v18);
  v6 = v18[0];
  v7 = v18[1];
  v8 = v19;
  v9 = v20;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE50);
  sub_2333D8(v1, a1 + *(v10 + 36));
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 34) = v9;
  *(a1 + 35) = 1;
  type metadata accessor for Artwork(0);
  _s6LoaderCMa(0);
  sub_233AA0(&qword_4FAE58, _s6LoaderCMa);
  v11 = sub_3EA334();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE60) + 36));
  v13 = type metadata accessor for ArtworkLoaderModifier(0);
  sub_2333D8(v1, v12 + v13[5]);
  *v12 = v11;
  v14 = v12 + v13[6];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = v12 + v13[7];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v12 + v13[8];
  result = swift_getKeyPath();
  *v16 = result;
  v16[40] = 0;
  return result;
}

double sub_2320A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3EB844();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Artwork(0);
  _s6LoaderCMa(0);
  sub_233AA0(&qword_4FAE58, _s6LoaderCMa);
  sub_3EA334();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  if (v21)
  {
    v8 = v21;
    sub_3EB814();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v9 = sub_3EB894();

    (*(v5 + 8))(v7, v4);
    if (*(a1 + *(type metadata accessor for Artwork.Configuration(0) + 32)))
    {
      v10 = 257;
    }

    else
    {
      v10 = 1;
    }

    v17 = v9;
    v18 = 0;
    v19 = v10;
    v20 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB128);
    sub_234B04();
    sub_234B88();
    sub_3EADE4();
  }

  else
  {
    v11 = sub_2323F4();
    *&v21 = 0;
    v17 = 0x3FF0000000000000;
    sub_234AB0();
    v12 = sub_3EA454();
    v17 = v11;
    v18 = v12;
    v19 = 0;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB128);
    sub_234B04();
    sub_234B88();
    sub_3EADE4();
  }

  result = *&v21;
  v14 = v22;
  v15 = v23;
  *a2 = v21;
  *(a2 + 16) = v14;
  *(a2 + 18) = v15;
  return result;
}

uint64_t sub_2323F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = *(v0 + *(type metadata accessor for Artwork.Configuration(0) + 36));
  if (v4)
  {
    v13 = v4;
  }

  else
  {
    sub_FBD0(v0, v3, &qword_4F1D50);
    v5 = sub_3E7784();
    if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
    {
      sub_FCF8(v3, &qword_4F1D50);
    }

    else
    {
      v6 = *(v3 + 7);
      v7 = v3[64];
      sub_1F7418(v6, v3[64]);
      sub_86F48(v3);
      if (v7 != 255)
      {
        v8 = sub_3E9454();
        sub_234D4C(v6, v7);
        v9 = v8;
        v13 = sub_3EB734();
        v10 = sub_3EA444();

        return v10;
      }
    }

    LODWORD(v13) = sub_3EAED4();
  }

  return sub_3EA444();
}

uint64_t Artwork.init(artwork:sizing:alignment:cropCodeOverride:contentMode:placeholder:trace:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a2 + 16);
  sub_FBD0(a1, a9, &qword_4F1D50);
  v16 = type metadata accessor for Artwork.Configuration(0);
  sub_FBD0(a5, a9 + v16[7], &qword_4FAE68);
  sub_FBD0(a8, v26, &qword_4EE870);
  v17 = a9 + v16[5];
  *v17 = v13;
  *(v17 + 8) = v14;
  *(v17 + 16) = v15;
  v18 = (a9 + v16[6]);
  *v18 = a3;
  v18[1] = a4;
  *(a9 + v16[8]) = a6 & 1;
  *(a9 + v16[9]) = a7;
  sub_FBD0(v26, v25, &qword_4EE870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE870);
  sub_3E8314();
  sub_FCF8(a8, &qword_4EE870);
  sub_FCF8(a5, &qword_4FAE68);
  sub_FCF8(a1, &qword_4F1D50);
  sub_FCF8(v26, &qword_4EE870);
  result = type metadata accessor for Artwork(0);
  v20 = a9 + *(result + 20);
  *v20 = sub_231DEC;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  return result;
}

uint64_t Artwork.init(artwork:fittingImageSize:isResizable:alignment:cropCodeOverride:contentMode:placeholder:trace:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v29 = a8;
  v36 = a7;
  v35 = a6;
  v30 = a5;
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v31 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE68);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v20 - 8);
  v22 = &v29 - v21;
  sub_FBD0(a1, &v29 - v21, &qword_4F1D50);
  sub_FBD0(a5, v19, &qword_4FAE68);
  sub_FBD0(a8, v39, &qword_4EE870);
  sub_FBD0(v22, a9, &qword_4F1D50);
  v23 = type metadata accessor for Artwork.Configuration(0);
  sub_FBD0(v19, a9 + v23[7], &qword_4FAE68);
  sub_FBD0(v39, v38, &qword_4EE870);
  v24 = a9 + v23[5];
  *v24 = a10;
  *(v24 + 8) = a11;
  *(v24 + 16) = v32;
  v25 = (a9 + v23[6]);
  v26 = v34;
  *v25 = v33;
  v25[1] = v26;
  *(a9 + v23[8]) = v35 & 1;
  *(a9 + v23[9]) = v36;
  sub_FBD0(v38, v37, &qword_4EE870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE870);
  sub_3E8314();
  sub_FCF8(v29, &qword_4EE870);
  sub_FCF8(v30, &qword_4FAE68);
  sub_FCF8(v31, &qword_4F1D50);
  sub_FCF8(v38, &qword_4EE870);
  sub_FCF8(v39, &qword_4EE870);
  sub_FCF8(v19, &qword_4FAE68);
  sub_FCF8(v22, &qword_4F1D50);
  result = type metadata accessor for Artwork(0);
  v28 = a9 + *(result + 20);
  *v28 = sub_231DEC;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  return result;
}

uint64_t sub_232A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB0A8);
  __chkstk_darwin(v34);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB0B0);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB0B8);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB0C0);
  __chkstk_darwin(v32);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB0C8);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v17 = v2 + *(type metadata accessor for Artwork.Configuration(0) + 20);
  if (*(v17 + 16))
  {
    if (*(v17 + 16) != 1)
    {
      sub_3EA804();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB0D0);
      (*(*(v25 - 8) + 16))(v16, a1, v25);
      v26 = &v16[*(v14 + 36)];
      v27 = v40;
      *(v26 + 4) = v39;
      *(v26 + 5) = v27;
      *(v26 + 6) = v41;
      v28 = v36;
      *v26 = v35;
      *(v26 + 1) = v28;
      v29 = v38;
      *(v26 + 2) = v37;
      *(v26 + 3) = v29;
      sub_FBD0(v16, v11, &qword_4FB0C8);
      swift_storeEnumTagMultiPayload();
      sub_2342E4(&qword_4FB0E0, &qword_4FB0C8);
      sub_886BC(&qword_4FB0E8, &qword_4FB0D0);
      sub_3EADE4();
      sub_FBD0(v13, v8, &qword_4FB0C0);
      swift_storeEnumTagMultiPayload();
      sub_23420C();
      sub_2342E4(&qword_4FB0F0, &qword_4FB0A8);
      sub_3EADE4();
      sub_FCF8(v13, &qword_4FB0C0);
      v20 = v16;
      v24 = &qword_4FB0C8;
      return sub_FCF8(v20, v24);
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB0D0);
    (*(*(v18 - 8) + 16))(v11, a1, v18);
    swift_storeEnumTagMultiPayload();
    sub_2342E4(&qword_4FB0E0, &qword_4FB0C8);
    sub_886BC(&qword_4FB0E8, &qword_4FB0D0);
    sub_3EADE4();
    v19 = &qword_4FB0C0;
    sub_FBD0(v13, v8, &qword_4FB0C0);
    swift_storeEnumTagMultiPayload();
    sub_23420C();
    sub_2342E4(&qword_4FB0F0, &qword_4FB0A8);
    sub_3EADE4();
    v20 = v13;
  }

  else
  {
    sub_3EA434();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB0D0);
    (*(*(v21 - 8) + 16))(v5, a1, v21);
    v22 = &v5[*(v34 + 36)];
    v23 = v36;
    *v22 = v35;
    *(v22 + 1) = v23;
    *(v22 + 2) = v37;
    v19 = &qword_4FB0A8;
    sub_FBD0(v5, v8, &qword_4FB0A8);
    swift_storeEnumTagMultiPayload();
    sub_23420C();
    sub_2342E4(&qword_4FB0F0, &qword_4FB0A8);
    sub_3EADE4();
    v20 = v5;
  }

  v24 = v19;
  return sub_FCF8(v20, v24);
}

double sub_2330E4(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_2330F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_234E94();

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_233178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_234E94();

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_2331FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB190);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_233274@<X0>(void *a1@<X8>)
{
  result = sub_3EA904();
  *a1 = v3;
  return result;
}

uint64_t sub_233308(uint64_t a1)
{
  sub_1F958(a1, v3);
  sub_1F958(v3, &v2);
  sub_234A54();
  sub_3EAB14();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

BOOL _s8ShelfKit7ArtworkV6SizingO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    return *(a1 + 8) == v3 && *a1 == v2;
  }

  if (*(a1 + 16) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return *(a1 + 8) == v3 && *a1 == v2;
  }

  return v4 == 2 && (*&v3 | *&v2) == 0;
}

uint64_t sub_2333D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23347C@<X0>(void *a1@<X8>)
{
  result = sub_3EA904();
  *a1 = v3;
  return result;
}

uint64_t sub_23354C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Artwork.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23361C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Artwork.Configuration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

void sub_2336D8()
{
  type metadata accessor for Artwork.Configuration(319);
  if (v0 <= 0x3F)
  {
    sub_23375C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23375C()
{
  if (!qword_4FAED8)
  {
    _s6LoaderCMa(255);
    sub_233AA0(&qword_4FAE58, _s6LoaderCMa);
    v0 = sub_3EA344();
    if (!v1)
    {
      atomic_store(v0, &qword_4FAED8);
    }
  }
}

uint64_t sub_2337F0(uint64_t a1)
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

unint64_t sub_23381C()
{
  result = qword_4FAF08;
  if (!qword_4FAF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FAE60);
    sub_2338D8();
    sub_233AA0(&qword_4FAF48, type metadata accessor for ArtworkLoaderModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FAF08);
  }

  return result;
}

unint64_t sub_2338D8()
{
  result = qword_4FAF10;
  if (!qword_4FAF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FAE50);
    sub_233994();
    sub_233AA0(&qword_4FAF40, type metadata accessor for FrameModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FAF10);
  }

  return result;
}

unint64_t sub_233994()
{
  result = qword_4FAF18;
  if (!qword_4FAF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FAF20);
    sub_886BC(&qword_4FAF28, &qword_4FAF30);
    sub_233A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FAF18);
  }

  return result;
}

unint64_t sub_233A4C()
{
  result = qword_4FAF38;
  if (!qword_4FAF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FAF38);
  }

  return result;
}

uint64_t sub_233AA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_233B1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE68);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[7];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[9]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAF50);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_233CD4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE68);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9]) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAF50);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_233E6C()
{
  sub_233F78(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v0 <= 0x3F)
  {
    sub_233F78(319, &qword_4FAFC0, &type metadata accessor for CropCode);
    if (v1 <= 0x3F)
    {
      sub_233FCC();
      if (v2 <= 0x3F)
      {
        sub_23401C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_233F78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3EE0F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_233FCC()
{
  if (!qword_4FAFC8)
  {
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4FAFC8);
    }
  }
}

void sub_23401C()
{
  if (!qword_4FAFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4EE870);
    v0 = sub_3E8344();
    if (!v1)
    {
      atomic_store(v0, &qword_4FAFD0);
    }
  }
}

uint64_t sub_234094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Configuration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_234114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_234184()
{
  result = type metadata accessor for Artwork.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23420C()
{
  result = qword_4FB0D8;
  if (!qword_4FB0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB0C0);
    sub_2342E4(&qword_4FB0E0, &qword_4FB0C8);
    sub_886BC(&qword_4FB0E8, &qword_4FB0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB0D8);
  }

  return result;
}

uint64_t sub_2342E4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_886BC(&qword_4FB0E8, &qword_4FB0D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_234388(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E94E4();
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  __chkstk_darwin(v4);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE68);
  __chkstk_darwin(v7 - 8);
  v58 = &v52 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB0F8);
  __chkstk_darwin(v54);
  v55 = &v52 - v9;
  v10 = sub_3E7784();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v14 - 8);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4208);
  __chkstk_darwin(v17 - 8);
  v19 = &v52 - v18;
  v21 = *(v20 + 56);
  v59 = a1;
  sub_FBD0(a1, &v52 - v18, &qword_4F1D50);
  sub_FBD0(a2, &v19[v21], &qword_4F1D50);
  v22 = *(v11 + 48);
  if (v22(v19, 1, v10) == 1)
  {
    if (v22(&v19[v21], 1, v10) == 1)
    {
      sub_FCF8(v19, &qword_4F1D50);
      goto LABEL_11;
    }

LABEL_6:
    v23 = &qword_4F4208;
    v24 = v19;
    goto LABEL_7;
  }

  sub_FBD0(v19, v16, &qword_4F1D50);
  if (v22(&v19[v21], 1, v10) == 1)
  {
    sub_86F48(v16);
    goto LABEL_6;
  }

  sub_83F9C(&v19[v21], v13);
  v27 = sub_3E7724();
  sub_86F48(v13);
  sub_86F48(v16);
  sub_FCF8(v19, &qword_4F1D50);
  if ((v27 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = type metadata accessor for Artwork.Configuration(0);
  v29 = v28[5];
  v30 = v59;
  v32 = *(v59 + v29);
  v31 = *(v59 + v29 + 8);
  v33 = *(v59 + v29 + 16);
  v34 = a2 + v29;
  v36 = *(a2 + v29);
  v35 = *(a2 + v29 + 8);
  v37 = *(v34 + 16);
  if (!v33)
  {
    v38 = v58;
    v25 = 0;
    if (v37)
    {
      return v25 & 1;
    }

LABEL_16:
    if (v32 != v36 || v31 != v35)
    {
      return v25 & 1;
    }

    goto LABEL_21;
  }

  v38 = v58;
  if (v33 == 1)
  {
    if (v37 != 1)
    {
      goto LABEL_8;
    }

    v25 = 0;
    goto LABEL_16;
  }

  v25 = 0;
  if (v37 == 2 && !(*&v35 | *&v36))
  {
LABEL_21:
    if ((sub_3EBA44() & 1) == 0)
    {
      goto LABEL_8;
    }

    v39 = v28[7];
    v40 = v55;
    v41 = *(v54 + 48);
    sub_FBD0(v30 + v39, v55, &qword_4FAE68);
    sub_FBD0(a2 + v39, v40 + v41, &qword_4FAE68);
    v42 = v56;
    v43 = *(v57 + 48);
    if (v43(v40, 1, v56) == 1)
    {
      if (v43(v40 + v41, 1, v42) == 1)
      {
        sub_FCF8(v40, &qword_4FAE68);
LABEL_29:
        if (sub_3EA314())
        {
          v49 = v28[9];
          v50 = *(a2 + v49);
          if (*(v30 + v49))
          {
            if (v50)
            {

              v51 = sub_3EB754();

              if (v51)
              {
                goto LABEL_35;
              }
            }
          }

          else if (!v50)
          {
LABEL_35:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE870);
            v25 = sub_3E8334();
            return v25 & 1;
          }
        }

LABEL_8:
        v25 = 0;
        return v25 & 1;
      }
    }

    else
    {
      sub_FBD0(v40, v38, &qword_4FAE68);
      if (v43(v40 + v41, 1, v42) != 1)
      {
        v44 = v57;
        v45 = v40 + v41;
        v46 = v53;
        (*(v57 + 32))(v53, v45, v42);
        sub_233AA0(&qword_4FB100, &type metadata accessor for CropCode);
        v47 = sub_3ED174();
        v48 = *(v44 + 8);
        v48(v46, v42);
        v48(v38, v42);
        sub_FCF8(v40, &qword_4FAE68);
        if ((v47 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_29;
      }

      (*(v57 + 8))(v38, v42);
    }

    v23 = &qword_4FB0F8;
    v24 = v40;
LABEL_7:
    sub_FCF8(v24, v23);
    goto LABEL_8;
  }

  return v25 & 1;
}

unint64_t sub_234A54()
{
  result = qword_4FB110;
  if (!qword_4FB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB110);
  }

  return result;
}

unint64_t sub_234AB0()
{
  result = qword_4FB118;
  if (!qword_4FB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB118);
  }

  return result;
}

unint64_t sub_234B04()
{
  result = qword_4FB130;
  if (!qword_4FB130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB130);
  }

  return result;
}

unint64_t sub_234B88()
{
  result = qword_4FB138;
  if (!qword_4FB138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB128);
    sub_234C40();
    sub_886BC(&qword_4FB168, &qword_4FB170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB138);
  }

  return result;
}

unint64_t sub_234C40()
{
  result = qword_4FB140;
  if (!qword_4FB140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB148);
    sub_234CF8();
    sub_886BC(&qword_4FB158, &qword_4FB160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB140);
  }

  return result;
}

unint64_t sub_234CF8()
{
  result = qword_4FB150;
  if (!qword_4FB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB150);
  }

  return result;
}

void sub_234D4C(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_F2260(a1, a2);
  }
}

unint64_t sub_234D74()
{
  result = qword_4FB178;
  if (!qword_4FB178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB180);
    sub_23420C();
    sub_2342E4(&qword_4FB0F0, &qword_4FB0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB178);
  }

  return result;
}

unint64_t sub_234E24()
{
  result = qword_4FB188;
  if (!qword_4FB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB188);
  }

  return result;
}

unint64_t sub_234E94()
{
  result = qword_4FB198;
  if (!qword_4FB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB198);
  }

  return result;
}

uint64_t sub_234F30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  return v1;
}

uint64_t sub_234FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = type metadata accessor for ArtworkLoaderModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB3F8);
  __chkstk_darwin(v22);
  v9 = &v20 - v8;
  sub_2352BC(v3, a1, &v20 - v8);
  v21 = type metadata accessor for ArtworkLoaderModifier;
  sub_239D58(v3, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkLoaderModifier);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v20 = type metadata accessor for ArtworkLoaderModifier;
  sub_239E38(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ArtworkLoaderModifier);
  type metadata accessor for Artwork.Configuration(0);
  sub_239718();
  sub_23A608(&qword_4FB448, type metadata accessor for Artwork.Configuration);
  v12 = v23;
  sub_3EB6F4();

  sub_FCF8(v9, &qword_4FB3F8);
  v13 = v21;
  sub_239D58(v3, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  v14 = swift_allocObject();
  v15 = v20;
  sub_239E38(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v10, v20);
  v16 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB450) + 36));
  *v16 = sub_239C44;
  v16[1] = v14;
  v16[2] = 0;
  v16[3] = 0;
  sub_239D58(v3, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v17 = swift_allocObject();
  sub_239E38(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v10, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB458);
  v19 = (v12 + *(result + 36));
  *v19 = 0;
  v19[1] = 0;
  v19[2] = sub_239C5C;
  v19[3] = v17;
  return result;
}

uint64_t sub_2352BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB4B8);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for ArtworkLoaderModifier(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB420);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v15 = *(v9 + 28);
  v16 = a1 + *(type metadata accessor for Artwork.Configuration(0) + 20) + v15;
  if (*(v16 + 16) == 2 && *v16 == 0)
  {
    v24 = type metadata accessor for ArtworkLoaderModifier;
    sub_239D58(a1, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArtworkLoaderModifier);
    v26 = a3;
    v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v25 = swift_allocObject();
    sub_239E38(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v19, type metadata accessor for ArtworkLoaderModifier);
    sub_239D58(a1, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    v20 = swift_allocObject();
    sub_239E38(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ArtworkLoaderModifier);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB430);
    (*(*(v21 - 8) + 16))(v14, v27, v21);
    v22 = &v14[*(v12 + 36)];
    v23 = v25;
    *v22 = sub_23A66C;
    *(v22 + 1) = v23;
    *(v22 + 2) = sub_23A6EC;
    *(v22 + 3) = v20;
    sub_FBD0(v14, v7, &qword_4FB420);
    swift_storeEnumTagMultiPayload();
    sub_239854();
    sub_886BC(&qword_4FB428, &qword_4FB430);
    sub_3EADE4();
    return sub_FCF8(v14, &qword_4FB420);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB430);
    (*(*(v17 - 8) + 16))(v7, v27, v17);
    swift_storeEnumTagMultiPayload();
    sub_239854();
    sub_886BC(&qword_4FB428, &qword_4FB430);
    return sub_3EADE4();
  }
}

uint64_t sub_2356CC@<X0>(void *a1@<X8>)
{
  type metadata accessor for ArtworkLoaderModifier(0);
  sub_282BBC(v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_3EA474();
  sub_3E92C4();
  *a1 = v2;
  a1[1] = v3;
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_23575C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_3EAAF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB468);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = *a1;
  v26 = a1[1];
  v12 = type metadata accessor for ArtworkLoaderModifier(0);
  sub_239D58(a2 + v12[5], v10, type metadata accessor for Artwork.Configuration);
  v13 = type metadata accessor for Artwork.Configuration(0);
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  v14 = a2 + v12[6];
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v16 = *v14;
  }

  else
  {

    sub_3ED9E4();
    v17 = sub_3EB034();
    v25 = a2;
    v18 = v17;
    sub_3E9754();

    a2 = v25;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v15, 0);
    (*(v5 + 8))(v7, v4);
    v16 = v27;
  }

  v19 = a2 + v12[7];
  v20 = *v19;
  v21 = *(v19 + 8);

  if ((v21 & 1) == 0)
  {
    sub_3ED9E4();
    v22 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v20 = *&v27;
  }

  sub_235A98(v10, v11, v26, 0, v20, v16);

  return sub_FCF8(v10, &qword_4FB468);
}

uint64_t sub_235A98(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, double a6)
{
  v7 = v6;
  v106 = a5;
  LODWORD(v115) = a4;
  v109 = a3;
  v108 = a2;
  v123 = a1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F4208);
  __chkstk_darwin(v111);
  v120 = &v101 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB470);
  __chkstk_darwin(v116);
  v11 = &v101 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v12 - 8);
  v104 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v119 = &v101 - v15;
  __chkstk_darwin(v16);
  v112 = &v101 - v17;
  __chkstk_darwin(v18);
  v20 = &v101 - v19;
  v121 = sub_3E7784();
  v117 = *(v121 - 1);
  __chkstk_darwin(v121);
  v101 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v102 = &v101 - v23;
  v24 = type metadata accessor for Artwork.Configuration(0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = _s6LoaderC19LoaderConfigurationVMa(0);
  v118 = *(v28 - 1);
  __chkstk_darwin(v28);
  v105 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v103 = &v101 - v31;
  __chkstk_darwin(v32);
  v34 = &v101 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB468);
  __chkstk_darwin(v35 - 8);
  v37 = &v101 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB460);
  __chkstk_darwin(v38 - 8);
  v113 = &v101 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v107 = &v101 - v41;
  __chkstk_darwin(v42);
  v114 = &v101 - v43;
  __chkstk_darwin(v44);
  v110 = &v101 - v45;
  __chkstk_darwin(v46);
  v122 = &v101 - v47;
  if ((v115 & 1) == 0)
  {
    v48 = v7 + OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_lastKnownProxySize;
    v49 = v109;
    *v48 = v108;
    *(v48 + 8) = v49;
    *(v48 + 16) = 0;
  }

  sub_FBD0(v123, v37, &qword_4FB468);
  v123 = v7;
  v115 = *(v7 + OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_lastKnownProxySize);
  v50 = *(v7 + OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_lastKnownProxySize + 16);
  if ((*(v25 + 48))(v37, 1, v24) == 1)
  {
    sub_FCF8(v37, &qword_4FB468);
    v51 = 1;
    v52 = v117;
    v53 = v118;
    v54 = v121;
    v55 = v122;
    goto LABEL_14;
  }

  sub_239E38(v37, v27, type metadata accessor for Artwork.Configuration);
  sub_FBD0(v27, v20, &qword_4F1D50);
  v52 = v117;
  v56 = (*(v117 + 6))(v20, 1, v121);
  v53 = v118;
  if (v56 != 1)
  {
    v57 = v102;
    sub_239E38(v20, v102, &type metadata accessor for ArtworkModel);
    v58 = &v27[*(v24 + 20)];
    if (v58[16] >= 2u)
    {
      v59 = v115;
      if (v50)
      {
        sub_239EA0(v57, &type metadata accessor for ArtworkModel);
        sub_239EA0(v27, type metadata accessor for Artwork.Configuration);
        goto LABEL_7;
      }
    }

    else
    {
      v59 = *v58;
    }

    *&v34[v28[7]] = v59;
    sub_239E38(v27, v34, type metadata accessor for Artwork.Configuration);
    *&v34[v28[5]] = a6;
    sub_239E38(v57, &v34[v28[6]], &type metadata accessor for ArtworkModel);
    v55 = v122;
    sub_239E38(v34, v122, _s6LoaderC19LoaderConfigurationVMa);
    v51 = 0;
    goto LABEL_13;
  }

  sub_239EA0(v27, type metadata accessor for Artwork.Configuration);
  sub_FCF8(v20, &qword_4F1D50);
LABEL_7:
  v51 = 1;
  v55 = v122;
LABEL_13:
  v54 = v121;
LABEL_14:
  v60 = *(v53 + 7);
  v117 = v53 + 14;
  *&v115 = v60;
  v60(v55, v51, 1, v28);
  v61 = v123 + OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_loaderConfiguration;
  swift_beginAccess();
  v62 = *(v116 + 48);
  sub_FBD0(v55, v11, &qword_4FB460);
  sub_FBD0(v61, &v11[v62], &qword_4FB460);
  v63 = *(v53 + 6);
  if (v63(v11, 1, v28) == 1)
  {
    if (v63(&v11[v62], 1, v28) == 1)
    {
LABEL_16:
      v64 = v11;
LABEL_44:
      sub_FCF8(v64, &qword_4FB460);
      return sub_FCF8(v55, &qword_4FB460);
    }

    goto LABEL_19;
  }

  v65 = v110;
  sub_FBD0(v11, v110, &qword_4FB460);
  if (v63(&v11[v62], 1, v28) == 1)
  {
    sub_239EA0(v65, _s6LoaderC19LoaderConfigurationVMa);
LABEL_19:
    sub_FCF8(v11, &qword_4FB470);
    v66 = v114;
    goto LABEL_28;
  }

  v67 = &v11[v62];
  v68 = v103;
  sub_239E38(v67, v103, _s6LoaderC19LoaderConfigurationVMa);
  if (sub_234388(v65, v68) & 1) != 0 && *(v65 + v28[5]) == *(v68 + v28[5]) && (sub_3E7724())
  {
    v69 = v28[7];
    v71 = *(v65 + v69);
    v70 = *(v65 + v69 + 8);
    v72 = (v68 + v69);
    v74 = *v72;
    v73 = v72[1];
    sub_239EA0(v68, _s6LoaderC19LoaderConfigurationVMa);
    v66 = v114;
    if (v71 == v74 && v70 == v73)
    {
      sub_239EA0(v65, _s6LoaderC19LoaderConfigurationVMa);
      goto LABEL_16;
    }
  }

  else
  {
    sub_239EA0(v68, _s6LoaderC19LoaderConfigurationVMa);
    v66 = v114;
  }

  sub_239EA0(v65, _s6LoaderC19LoaderConfigurationVMa);
  sub_FCF8(v11, &qword_4FB460);
LABEL_28:
  sub_FBD0(v55, v66, &qword_4FB460);
  v75 = v63(v66, 1, v28);
  v76 = v119;
  v121 = v63;
  if (v75 == 1)
  {
    sub_FCF8(v66, &qword_4FB460);
    v77 = 1;
    v78 = v112;
  }

  else
  {
    v78 = v112;
    sub_239D58(v66 + v28[6], v112, &type metadata accessor for ArtworkModel);
    sub_239EA0(v66, _s6LoaderC19LoaderConfigurationVMa);
    v77 = 0;
  }

  v79 = *(v52 + 7);
  v80 = 1;
  v79(v78, v77, 1, v54);
  if (!(v121)(v61, 1, v28))
  {
    sub_239D58(v61 + v28[6], v76, &type metadata accessor for ArtworkModel);
    v80 = 0;
  }

  v118 = v28;
  v79(v76, v80, 1, v54);
  v81 = *(v111 + 48);
  v82 = v54;
  v83 = v76;
  v84 = v120;
  sub_FBD0(v78, v120, &qword_4F1D50);
  v85 = v84;
  sub_FBD0(v83, v84 + v81, &qword_4F1D50);
  v86 = *(v52 + 6);
  if (v86(v85, 1, v82) == 1)
  {
    sub_FCF8(v83, &qword_4F1D50);
    v87 = v120;
    sub_FCF8(v78, &qword_4F1D50);
    v88 = v86(v87 + v81, 1, v82);
    v89 = v123;
    v90 = v118;
    if (v88 == 1)
    {
      sub_FCF8(v87, &qword_4F1D50);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v91 = v104;
  sub_FBD0(v85, v104, &qword_4F1D50);
  if (v86(v85 + v81, 1, v82) == 1)
  {
    sub_FCF8(v119, &qword_4F1D50);
    v87 = v120;
    sub_FCF8(v78, &qword_4F1D50);
    sub_239EA0(v91, &type metadata accessor for ArtworkModel);
    v89 = v123;
    v90 = v118;
LABEL_38:
    sub_FCF8(v87, &qword_4F4208);
LABEL_39:
    swift_getKeyPath();
    swift_getKeyPath();
    v124 = 0;

    sub_3E9EB4();
    goto LABEL_40;
  }

  v98 = v85 + v81;
  v99 = v101;
  sub_239E38(v98, v101, &type metadata accessor for ArtworkModel);
  v100 = sub_3E7724();
  sub_239EA0(v99, &type metadata accessor for ArtworkModel);
  sub_FCF8(v119, &qword_4F1D50);
  sub_FCF8(v78, &qword_4F1D50);
  sub_239EA0(v91, &type metadata accessor for ArtworkModel);
  sub_FCF8(v85, &qword_4F1D50);
  v89 = v123;
  v90 = v118;
  if ((v100 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_40:
  v92 = OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_currentRequest;
  if (*(v89 + OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_currentRequest))
  {

    sub_3E9CA4();

    *(v89 + v92) = 0;

    v93 = v107;
    (v115)(v107, 1, 1, v90);
    swift_beginAccess();
    sub_239CE8(v93, v61);
    swift_endAccess();
  }

  swift_beginAccess();
  v94 = v122;
  sub_239DC8(v122, v61);
  swift_endAccess();
  v55 = v113;
  sub_FBD0(v94, v113, &qword_4FB460);
  if ((v121)(v55, 1, v90) == 1)
  {
    v64 = v94;
    goto LABEL_44;
  }

  v96 = v105;
  sub_239E38(v55, v105, _s6LoaderC19LoaderConfigurationVMa);
  v97 = sub_2372F4(v96, v106);
  sub_239EA0(v96, _s6LoaderC19LoaderConfigurationVMa);
  sub_FCF8(v94, &qword_4FB460);
  *(v89 + v92) = v97;
}

uint64_t sub_236A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3EAAF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB468);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  sub_239D58(a2, &v23 - v10, type metadata accessor for Artwork.Configuration);
  v12 = type metadata accessor for Artwork.Configuration(0);
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = type metadata accessor for ArtworkLoaderModifier(0);
  v14 = a3 + *(v13 + 24);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v16 = *v14;
  }

  else
  {

    sub_3ED9E4();
    v17 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v15, 0);
    (*(v6 + 8))(v8, v5);
    v16 = v24;
  }

  v18 = a3 + *(v13 + 28);
  v19 = *v18;
  v20 = *(v18 + 8);

  if ((v20 & 1) == 0)
  {
    sub_3ED9E4();
    v21 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v19 = *&v24;
  }

  sub_235A98(v11, 0, 0, 1, v19, v16);

  return sub_FCF8(v11, &qword_4FB468);
}

uint64_t sub_236D30(uint64_t a1)
{
  v2 = sub_3EAAF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB468);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ArtworkLoaderModifier(0);
  sub_239D58(a1 + v9[5], v8, type metadata accessor for Artwork.Configuration);
  v10 = type metadata accessor for Artwork.Configuration(0);
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = a1 + v9[6];
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v13 = *v11;
  }

  else
  {

    sub_3ED9E4();
    v14 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_23968C(v12, 0);
    (*(v3 + 8))(v5, v2);
    v13 = v21;
  }

  v15 = a1 + v9[7];
  v16 = *v15;
  v17 = *(v15 + 8);

  if ((v17 & 1) == 0)
  {
    sub_3ED9E4();
    v18 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v16 = *&v21;
  }

  sub_235A98(v8, 0, 0, 1, v16, v13);

  return sub_FCF8(v8, &qword_4FB468);
}

void sub_237038(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB460);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = *a1;
  v6 = OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_currentRequest;
  if (*(*a1 + OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_currentRequest))
  {

    sub_3E9CA4();

    *(v5 + v6) = 0;

    v7 = _s6LoaderC19LoaderConfigurationVMa(0);
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_loaderConfiguration;
    swift_beginAccess();
    sub_239CE8(v4, v5 + v8);
    swift_endAccess();
  }
}

uint64_t EnvironmentValues.artworkBucketingStrategy.getter()
{
  sub_234A54();

  return sub_3EAB04();
}

uint64_t EnvironmentValues.artworkBucketingStrategy.setter(uint64_t a1)
{
  sub_1F958(a1, v3);
  sub_234A54();
  sub_3EAB14();
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_2371FC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a1 = v3;
  return result;
}

uint64_t sub_23727C(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_3E9EB4();
}

uint64_t sub_2372F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE68);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_3E7784();
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_3E7CA4();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s6LoaderC19LoaderConfigurationVMa(0);
  sub_239D58(a1 + *(v13 + 24), v9, &type metadata accessor for ArtworkModel);
  v14 = type metadata accessor for Artwork.Configuration(0);
  sub_FBD0(a1 + *(v14 + 28), v6, &qword_4FAE68);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_3E7BD4();
  v15 = sub_239F94(a1, a2);
  if (v15)
  {
    v16 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3E9EA4();

    swift_getKeyPath();
    swift_getKeyPath();
    *&v21[0] = v16;

    sub_3E9EB4();
    (*(v10 + 8))(v12, v20);
    return 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAF50);
    sub_3E8324();
    v18 = sub_23777C(v12, v21);
    sub_FCF8(v21, &qword_4EE870);
    (*(v10 + 8))(v12, v20);
    return v18;
  }
}

uint64_t sub_237640(void *a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  if (v7)
  {
  }

  else if (a2)
  {
    __chkstk_darwin(*(v2 + OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_animation));
    return sub_3EA554();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v6 = a1;
  return sub_3E9EB4();
}

uint64_t sub_23777C(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB478);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v7 = &v35 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB480);
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB488);
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v45 = &v35 - v10;
  v11 = sub_3E7CA4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v41 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v13;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = sub_3E9A04();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBE0);
  sub_3EC394();
  sub_3E65F4();
  sub_3EC434();
  v38 = v52[0];
  sub_FBD0(v36, &v50, &qword_4EE870);
  if (v51)
  {
    sub_1D4F0(&v50, v52);
  }

  else
  {
    sub_3E9984();
    sub_3ED9B4();
    sub_3E8A54();
    (*(v18 + 8))(v20, v17);
    if (v51)
    {
      sub_FCF8(&v50, &qword_4EE870);
    }
  }

  sub_3E9614();
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  *&v50 = sub_3E62A4();
  sub_801B4();
  v35 = a1;
  v21 = sub_3EDBC4();
  v48 = v21;
  v22 = sub_3EDB64();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  v36 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE708);
  sub_886BC(&qword_4EE718, &qword_4EE708);
  sub_23A608(&qword_4F1D30, sub_801B4);
  sub_3EA114();
  sub_FCF8(v5, &qword_4F69E0);

  v23 = sub_886BC(&qword_4FB490, &qword_4FB478);
  v24 = v42;
  v25 = v40;
  sub_3E9ED4();
  (*(v37 + 8))(v7, v25);
  sub_1F958(v52, &v50);
  v48 = v25;
  v49 = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v44;
  sub_3E79E4();
  v27 = v45;
  sub_3E9F04();
  sub_FCF8(&v50, &qword_4EE870);
  (*(v43 + 8))(v24, v26);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v41;
  (*(v12 + 16))(v41, v35, v11);
  v30 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  (*(v12 + 32))(v31 + v30, v29, v11);
  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4FB498, &qword_4FB488);
  v32 = v47;
  v33 = sub_3EA044();

  (*(v46 + 8))(v27, v32);
  (*(v12 + 8))(v36, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  return v33;
}

uint64_t sub_23800C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_238080(a3, v4);
  }

  return result;
}

uint64_t sub_238080(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB460);
  __chkstk_darwin(v4 - 8);
  v66 = &v64 - v5;
  v6 = sub_3E9A04();
  v75 = *(v6 - 8);
  v76 = v6;
  __chkstk_darwin(v6);
  v74 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v65 = &v64 - v9;
  v10 = sub_3E7CA4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v67 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB4A0);
  __chkstk_darwin(v80);
  v79 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE68);
  __chkstk_darwin(v14 - 8);
  v69 = &v64 - v15;
  v16 = sub_3E7784();
  __chkstk_darwin(v16 - 8);
  v68 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s6LoaderC19LoaderConfigurationVMa(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB4A8);
  __chkstk_darwin(v22 - 8);
  v71 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v64 - v25;
  v28 = __chkstk_darwin(v27);
  v30 = &v64 - v29;
  (*(v11 + 16))(&v64 - v29, a1, v10, v28);
  v81 = v11;
  v31 = 1;
  v78 = *(v11 + 56);
  v78(v30, 0, 1, v10);
  v32 = OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_loaderConfiguration;
  swift_beginAccess();
  v64 = v19;
  v33 = *(v19 + 48);
  v77 = v2;
  v72 = v32;
  v34 = v2 + v32;
  v35 = v26;
  v73 = v18;
  if (!v33(v34, 1, v18))
  {
    sub_239D58(v77 + v72, v21, _s6LoaderC19LoaderConfigurationVMa);
    sub_239D58(&v21[*(v73 + 24)], v68, &type metadata accessor for ArtworkModel);
    v36 = type metadata accessor for Artwork.Configuration(0);
    sub_FBD0(&v21[*(v36 + 28)], v69, &qword_4FAE68);
    v83 = 0;
    memset(v82, 0, sizeof(v82));
    sub_3E7BD4();
    sub_239EA0(v21, _s6LoaderC19LoaderConfigurationVMa);
    v31 = 0;
  }

  v78(v26, v31, 1, v10);
  v37 = v79;
  v38 = *(v80 + 48);
  sub_FBD0(v30, v79, &qword_4FB4A8);
  sub_FBD0(v26, v37 + v38, &qword_4FB4A8);
  v39 = v81;
  v40 = *(v81 + 48);
  v41 = v10;
  if (v40(v37, 1, v10) == 1)
  {
    sub_FCF8(v35, &qword_4FB4A8);
    sub_FCF8(v30, &qword_4FB4A8);
    if (v40(v37 + v38, 1, v10) == 1)
    {
      sub_FCF8(v37, &qword_4FB4A8);
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v42 = v39;
  v80 = v35;
  v43 = v71;
  sub_FBD0(v37, v71, &qword_4FB4A8);
  if (v40(v37 + v38, 1, v41) == 1)
  {
    sub_FCF8(v80, &qword_4FB4A8);
    sub_FCF8(v30, &qword_4FB4A8);
    (*(v39 + 8))(v43, v41);
LABEL_8:
    sub_FCF8(v37, &qword_4FB4A0);
    goto LABEL_9;
  }

  v49 = v67;
  (*(v39 + 32))(v67, v37 + v38, v41);
  sub_23A608(&qword_4FB4B0, &type metadata accessor for ArtworkRequest);
  v50 = sub_3ED174();
  v51 = *(v42 + 8);
  v51(v49, v41);
  sub_FCF8(v80, &qword_4FB4A8);
  sub_FCF8(v30, &qword_4FB4A8);
  v51(v43, v41);
  sub_FCF8(v37, &qword_4FB4A8);
  if (v50)
  {
LABEL_13:
    *(v77 + OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_currentRequest) = 0;

    v52 = v70;
    if (v70)
    {
      v53 = v65;
      sub_3E9984();
      swift_errorRetain();
      v54 = sub_3E99F4();
      v55 = sub_3ED9D4();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v82[0] = v57;
        *v56 = 136315138;
        v84 = v52;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
        v58 = sub_3ED2B4();
        v60 = sub_2EDD0(v58, v59, v82);

        *(v56 + 4) = v60;
        _os_log_impl(&dword_0, v54, v55, "Failed to load artwork, error: %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
      }

      (*(v75 + 8))(v53, v76);
      v61 = v66;
      (*(v64 + 56))(v66, 1, 1, v73);
      v62 = v77;
      v63 = v72;
      swift_beginAccess();
      sub_239CE8(v61, v62 + v63);
      return swift_endAccess();
    }

    return result;
  }

LABEL_9:
  v44 = v74;
  sub_3E9984();
  v45 = sub_3E99F4();
  v46 = sub_3ED9F4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_0, v45, v46, "Received a completion for a previous request", v47, 2u);
  }

  return (*(v75 + 8))(v44, v76);
}

uint64_t sub_238AD0(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_237640(v1, 1);
  }

  return result;
}

uint64_t sub_238B34(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = a2;
  return sub_3E9EB4();
}

uint64_t sub_238BB4()
{
  v1 = OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB4C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtCV8ShelfKit7Artwork6Loader_loaderConfiguration, &qword_4FB460);

  return swift_deallocClassInstance();
}

uint64_t sub_238C9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3E9CE4();
  *a1 = result;
  return result;
}

void (*EnvironmentValues.artworkBucketingStrategy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_234A54();
  sub_3EAB04();
  return sub_238D7C;
}

void sub_238D7C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1F958(*a1, v2 + 40);
    sub_1F958(v2 + 40, v2 + 80);
    sub_3EAB14();
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 40);
  }

  else
  {
    sub_1F958(*a1, v2 + 40);
    sub_3EAB14();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);

  free(v2);
}

void sub_238E5C()
{
  sub_2395FC(319, &qword_4FB200, &qword_4FB108, &unk_40EAF8, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_239598(319, &unk_4FB208, _s6LoaderC19LoaderConfigurationVMa, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_238FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Artwork.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_3E7784();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2390D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Artwork.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_3E7784();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_2391D4()
{
  type metadata accessor for Artwork.Configuration(319);
  if (v0 <= 0x3F)
  {
    sub_3E7784();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23929C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Artwork.Configuration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23935C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Artwork.Configuration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_239420()
{
  _s6LoaderCMa(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Artwork.Configuration(319);
    if (v1 <= 0x3F)
    {
      sub_239548();
      if (v2 <= 0x3F)
      {
        sub_239598(319, &qword_4FB3B0, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_2395FC(319, &unk_4FB3B8, &qword_4EEBD8, &unk_3FA730, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_239548()
{
  if (!qword_4FB3A8)
  {
    v0 = sub_3EA324();
    if (!v1)
    {
      atomic_store(v0, &qword_4FB3A8);
    }
  }
}

void sub_239598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2395FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23968C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_239698(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ArtworkLoaderModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_236A28(a1, a2, v6);
}

unint64_t sub_239718()
{
  result = qword_4FB400;
  if (!qword_4FB400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB3F8);
    sub_23979C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB400);
  }

  return result;
}

unint64_t sub_23979C()
{
  result = qword_4FB408;
  if (!qword_4FB408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB410);
    sub_239854();
    sub_886BC(&qword_4FB428, &qword_4FB430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB408);
  }

  return result;
}

unint64_t sub_239854()
{
  result = qword_4FB418;
  if (!qword_4FB418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4FB420);
    sub_886BC(&qword_4FB428, &qword_4FB430);
    sub_886BC(&qword_4FB438, &qword_4FB440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB418);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for ArtworkLoaderModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v23 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v0 + v3 + v1[5];
  v6 = sub_3E7784();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = *(v5 + 32);
    if (v7 != 255)
    {
      sub_F2248(*(v5 + 16), *(v5 + 24), v7);
    }

    v8 = *(v5 + 64);
    if (v8 != 255)
    {
      sub_F2260(*(v5 + 56), v8);
    }

    v9 = *(v5 + 80);
    if (v9 != 255)
    {
      sub_F2260(*(v5 + 72), v9);
    }

    v10 = *(v5 + 96);
    if (v10 != 255)
    {
      sub_F2260(*(v5 + 88), v10);
    }

    v11 = *(v5 + 112);
    if (v11 != 255)
    {
      sub_F2260(*(v5 + 104), v11);
    }

    v12 = *(v5 + 128);
    if (v12 != 255)
    {
      sub_F2260(*(v5 + 120), v12);
    }

    v13 = *(v6 + 44);
    v14 = sub_3E7624();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  v15 = type metadata accessor for Artwork.Configuration(0);
  v16 = *(v15 + 28);
  v17 = sub_3E94E4();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v5 + v16, 1, v17))
  {
    (*(v18 + 8))(v5 + v16, v17);
  }

  v19 = *(v15 + 40);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAF50);
  (*(*(v20 - 8) + 8))(v5 + v19, v20);
  sub_23968C(*(v4 + v1[6]), *(v4 + v1[6] + 8));

  v21 = v4 + v1[8];
  if (*(v21 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v23, v2 | 7);
}

uint64_t sub_239C74(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ArtworkLoaderModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_239CE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB460);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_239D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_239DC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FB460);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_239E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_239EA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_239F00(uint64_t a1, uint64_t a2)
{
  if ((sub_231DE8(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = _s6LoaderC19LoaderConfigurationVMa(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  if ((sub_3E7724() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  v11 = v7 == *v9;
  return v8 == v10 && v11;
}

uint64_t sub_239F94(uint64_t a1, uint64_t a2)
{
  v31[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE750);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  __chkstk_darwin(v3);
  v34 = v31 - v5;
  v32 = sub_3E61F4();
  v36 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_3E6724();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FAE68);
  __chkstk_darwin(v10 - 8);
  v12 = v31 - v11;
  v13 = sub_3E7784();
  __chkstk_darwin(v13 - 8);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = sub_3E7CA4();
  v16 = *(v31[0] - 8);
  __chkstk_darwin(v31[0]);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v31 - v20;
  v22 = _s6LoaderC19LoaderConfigurationVMa(0);
  sub_239D58(a1 + *(v22 + 24), v15, &type metadata accessor for ArtworkModel);
  v23 = type metadata accessor for Artwork.Configuration(0);
  sub_FBD0(a1 + *(v23 + 28), v12, &qword_4FAE68);
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  sub_3E7BD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBD8);
  sub_3EC394();
  __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
  sub_3E7C14();
  sub_3E92C4();
  sub_3E7C74();
  sub_3E7BE4();
  v24 = v32;
  sub_3EC394();
  v25 = v34;
  sub_3E61D4();
  v26 = v37;
  sub_3E7664();
  (*(v38 + 8))(v25, v26);
  sub_3E8674();

  (*(v36 + 8))(v7, v24);
  (*(v33 + 8))(v9, v35);
  v27 = *(v16 + 8);
  v28 = v31[0];
  v27(v18, v31[0]);
  v27(v21, v28);
  v29 = v39;
  __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  return v29;
}