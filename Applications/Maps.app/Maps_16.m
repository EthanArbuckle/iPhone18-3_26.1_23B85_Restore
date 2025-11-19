uint64_t sub_10021C924@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = *(v13 + 16);
  if (!v9)
  {

LABEL_6:
    v10 = 1;
    return (*(v3 + 56))(a1, v10, 1, v2);
  }

  sub_1002277A8(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * (v9 - 1), v5, type metadata accessor for PlaceSummaryViewModelLine);

  sub_100227870(v5, v8, type metadata accessor for PlaceSummaryViewModelLine);
  if ((sub_10021CB28() & 1) == 0)
  {
    sub_100227810(v8, type metadata accessor for PlaceSummaryViewModelLine);
    goto LABEL_6;
  }

  sub_100227870(v8, a1, type metadata accessor for PlaceSummaryViewModelLine);
  v10 = 0;
  return (*(v3 + 56))(a1, v10, 1, v2);
}

uint64_t sub_10021CB28()
{
  v1 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  result = type metadata accessor for PlaceSummaryViewModelLine(0);
  v9 = *(v0 + *(result + 20));
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  v12 = v10 - 1;
  while (v11 < *(v9 + 16))
  {
    sub_1002277A8(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11, v7, type metadata accessor for PlaceSummaryViewModelUnit);
    sub_100227870(v7, v4, type metadata accessor for PlaceSummaryViewModelUnit);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100227810(v4, type metadata accessor for PlaceSummaryViewModelUnit);
    result = EnumCaseMultiPayload == 14;
    if (EnumCaseMultiPayload != 14 && v12 != v11++)
    {
      continue;
    }

    return result;
  }

  __break(1u);
  return result;
}

void sub_10021CF24()
{
  sub_10017E020(319, &qword_101912AA0, &qword_10190BF10);
  if (v0 <= 0x3F)
  {
    sub_10017E020(319, &qword_101912AA8, &unk_1019189E0);
    if (v1 <= 0x3F)
    {
      sub_100225AC4(319, &qword_10190C1E8, &type metadata for Bool, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        sub_100225AC4(319, &qword_101912AB0, &type metadata for CGFloat, &type metadata accessor for Published);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10021D10C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id sub_10021D1EC(char a1, char a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  *&v10[OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_leadingMargin] = a3;
  *&v10[OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_trailingMargin] = a4;
  *&v10[OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_topMargin] = a5;
  *&v10[OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_bottomMargin] = a6;
  *&v10[OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_topLeadingCornerRadius] = a7;
  *&v10[OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_topTrailingCornerRadius] = a8;
  *&v10[OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_bottomLeadingCornerRadius] = a9;
  *&v10[OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_bottomTrailingCornerRadius] = a10;
  v10[OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_showsDivider] = a1;
  v10[OBJC_IVAR____TtC4Maps19PlaceSummaryMetrics_showPlatter] = a2;
  v12.receiver = v10;
  v12.super_class = type metadata accessor for PlaceSummaryMetrics();
  return objc_msgSendSuper2(&v12, "init");
}

id sub_10021D30C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10021D368()
{
  v1 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  result = type metadata accessor for PlaceSummaryViewModelLine(0);
  v11 = *(v0 + *(result + 20));
  v22 = *(v11 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    v21 = v1;
    while (v12 < *(v11 + 16))
    {
      v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v15 = *(v2 + 72);
      sub_1002277A8(v11 + v14 + v15 * v12, v9, type metadata accessor for PlaceSummaryViewModelUnit);
      sub_1002277A8(v9, v6, type metadata accessor for PlaceSummaryViewModelUnit);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_100227810(v6, type metadata accessor for PlaceSummaryViewModelUnit);
      if (EnumCaseMultiPayload < 0x11)
      {
        result = sub_100227810(v9, type metadata accessor for PlaceSummaryViewModelUnit);
      }

      else
      {
        sub_100227870(v9, v23, type metadata accessor for PlaceSummaryViewModelUnit);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1005117A8(0, v13[2] + 1, 1);
          v13 = v24;
        }

        v19 = v13[2];
        v18 = v13[3];
        if (v19 >= v18 >> 1)
        {
          sub_1005117A8(v18 > 1, v19 + 1, 1);
          v13 = v24;
        }

        v13[2] = v19 + 1;
        result = sub_100227870(v23, v13 + v14 + v19 * v15, type metadata accessor for PlaceSummaryViewModelUnit);
      }

      if (v22 == ++v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_13:
    v20 = v13[2];

    return v20 != 0;
  }

  return result;
}

uint64_t sub_10021D630()
{
  v1 = OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit17ContainmentParent_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit17ContainmentParent__mapItem;
  v4 = sub_1000CE6B8(&qword_101914250);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_10021D780@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaceSummaryViewModelUnit.ContainmentParent(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10021D7F8()
{
  v1 = OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit24RealTimeAvailableCharger_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10021D8D0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10021D97C(void *a1, char a2)
{
  v5 = sub_1000CE6B8(&unk_101918B30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - v7;
  UUID.init()();
  v9 = OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit11UserLibrary__isSavedInLibrary;
  LOBYTE(aBlock[0]) = 0;
  Published.init(initialValue:)();
  (*(v6 + 32))(v2 + v9, v8, v5);
  *(v2 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit11UserLibrary_mapItem) = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = a2;
  v10 = a1;

  static Published.subscript.setter();
  v11 = [v10 _hikeAssociatedInfo];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 encryptedTourMuid];

    v14 = objc_opt_self();
    aBlock[4] = sub_100227B30;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10021BDC0;
    aBlock[3] = &unk_10160B480;
    v15 = _Block_copy(aBlock);

    [v14 fetchSavedRoutesWithTourMuid:v13 completion:v15];

    _Block_release(v15);
  }

  else
  {
  }

  return v2;
}

uint64_t sub_10021DBCC(uint64_t result)
{
  if (result)
  {
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 1)
      {
        return result;
      }
    }

    else
    {
      result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result < 1)
      {
        return result;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10021DC94(uint64_t *a1, void *a2, uint64_t *a3)
{
  v6 = *a1;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  v8 = *a3;
  v9 = sub_1000CE6B8(&unk_101918B30);
  (*(*(v9 - 8) + 8))(v3 + v8, v9);

  return swift_deallocClassInstance();
}

uint64_t sub_10021DDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = type metadata accessor for UUID();
  if (v12 <= 0x3F)
  {
    result = a7(319, a4, a5, a6);
    if (v13 <= 0x3F)
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

uint64_t sub_10021DEC0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaceSummaryViewModelUnit.UserLibrary(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10021DF3C()
{
  v1 = OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit8UserNote_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10021E024()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10021E0CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaceSummaryViewModelUnit.UserNote(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10021E170()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10021E1E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaceSummaryViewModelUnit.VisitedPlace(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10021E280(char a1, uint64_t a2, int a3)
{
  v18 = a3;
  v6 = sub_1000CE6B8(&unk_101918B30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-v8];
  v10 = sub_1000CE6B8(&qword_101914220);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17[-v12];
  v14 = OBJC_IVAR____TtC4Maps18DirectionsETAModel__ETAString;
  v19 = 0;
  v20 = 0;
  sub_1000CE6B8(&unk_10190D010);
  Published.init(initialValue:)();
  (*(v11 + 32))(v3 + v14, v13, v10);
  v15 = OBJC_IVAR____TtC4Maps18DirectionsETAModel__isDriveable;
  LOBYTE(v19) = 1;
  Published.init(initialValue:)();
  (*(v7 + 32))(v3 + v15, v9, v6);
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC4Maps18DirectionsETAModel_showETA) = a1;
  *(v3 + OBJC_IVAR____TtC4Maps18DirectionsETAModel_mapItem) = a2;
  *(v3 + OBJC_IVAR____TtC4Maps18DirectionsETAModel_searchAlongRoute) = v18;
  return v3;
}

uint64_t sub_10021E498()
{
  v1 = OBJC_IVAR____TtC4Maps18DirectionsETAModel__ETAString;
  v2 = sub_1000CE6B8(&qword_101914220);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Maps18DirectionsETAModel__isDriveable;
  v4 = sub_1000CE6B8(&unk_101918B30);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC4Maps18DirectionsETAModel_id;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void sub_10021E604()
{
  sub_10017E020(319, &unk_101913010, &unk_10190D010);
  if (v0 <= 0x3F)
  {
    sub_100225AC4(319, &qword_10190C1E8, &type metadata for Bool, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10021E770@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DirectionsETAModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10021E7BC()
{
  v1 = OBJC_IVAR____TtC4Maps24AccessoryButtonViewModel__isDriveable;
  v2 = sub_1000CE6B8(&unk_101918B30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC4Maps24AccessoryButtonViewModel_id;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_10021E8DC()
{
  sub_100225AC4(319, &qword_10190C1E8, &type metadata for Bool, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10021E9EC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccessoryButtonViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10021EA4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10021EAB8(uint64_t a1)
{
  v3 = sub_1000CE6B8(&unk_101918B30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-v5];
  v7 = sub_1000CE6B8(&qword_101914228);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel__snapshotImage;
  v17 = 0;
  sub_1000CE6B8(&unk_101918A10);
  Published.init(initialValue:)();
  (*(v8 + 32))(v1 + v11, v10, v7);
  v12 = OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel__fallbackImage;
  v16[7] = 1;
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v12, v6, v3);
  v13 = OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel_uniqueID;
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  *(v1 + OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel_mapItem) = a1;
  return v1;
}

uint64_t sub_10021ECE4()
{
  v1 = OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel__snapshotImage;
  v2 = sub_1000CE6B8(&qword_101914228);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel__fallbackImage;
  v4 = sub_1000CE6B8(&unk_101918B30);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100024F64(v0 + OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel_uniqueID, &unk_101918E50);

  return swift_deallocClassInstance();
}

void sub_10021EE30()
{
  sub_10017E020(319, &qword_101913258, &unk_101918A10);
  if (v0 <= 0x3F)
  {
    sub_100225AC4(319, &qword_10190C1E8, &type metadata for Bool, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_100220FC0(319, &qword_10190D4A8, &type metadata accessor for UUID, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10021EFC0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HikeRouteSnapshotViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10021F038()
{
  v1 = OBJC_IVAR____TtC4Maps33PlaceSummaryStackedImageViewModel__images;
  v2 = sub_1000CE6B8(&qword_101914248);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_10021F118()
{
  sub_10017E020(319, &qword_1019133A8, &unk_1019133B0);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10021F1CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaceSummaryStackedImageViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10021F254(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v77 = type metadata accessor for Image.TemplateRenderingMode();
  v80 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v78 = &v69 - v5;
  v6 = type metadata accessor for URL();
  v79 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v9);
  v11 = (&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = (&v69 - v13);
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  v18 = sub_1000CE6B8(&qword_1019141F0);
  __chkstk_darwin(v18 - 8);
  v20 = &v69 - v19;
  v22 = *(v21 + 56);
  sub_1002277A8(a1, &v69 - v19, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
  sub_1002277A8(v81, &v20[v22], type metadata accessor for PlaceSummaryImageViewModel.ImageType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v27 = v79;
    sub_1002277A8(v20, v17, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v27 + 32))(v8, &v20[v22], v6);
      v26 = static URL.== infix(_:_:)();
      v52 = *(v27 + 8);
      v52(v8, v6);
      v52(v17, v6);
      goto LABEL_18;
    }

    (*(v27 + 8))(v17, v6);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1002277A8(v20, v14, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
    v24 = *v14;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = *&v20[v22];
      sub_100014C84(0, &qword_10190B2D0);
      v26 = static NSObject.== infix(_:_:)();

LABEL_18:
      v53 = v20;
LABEL_19:
      sub_100227810(v53, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
      return v26 & 1;
    }

    goto LABEL_15;
  }

  sub_1002277A8(v20, v11, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
  v28 = *v11;
  v29 = sub_1000CE6B8(&qword_1019141F8);
  v30 = swift_projectBox();
  v81 = *(v30 + 8);
  v31 = *(v30 + 16);
  v32 = *(v30 + 24);
  v33 = *(v30 + *(v29 + 112));
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v72 = v31;
    v69 = v33;
    v70 = v32;
    v79 = v28;
    v34 = *(v29 + 96);
    v35 = *&v20[v22];
    v74 = *v30;
    v75 = v35;
    v36 = swift_projectBox();
    v37 = *(v36 + 8);
    v73 = *v36;
    v71 = *(v36 + 16);
    v38 = *(v36 + 24);
    v39 = *(v80 + 16);
    v40 = v77;
    v39(v78, v30 + v34, v77);
    v41 = v36 + v34;
    v42 = v76;
    v39(v76, v41, v40);
    sub_100014C84(0, &qword_10190B2D0);

    v43 = v73;
    v73 = v37;
    v44 = v37;
    v45 = static NSObject.== infix(_:_:)();

    if ((v45 & 1) == 0)
    {

      v55 = *(v80 + 8);
      v55(v42, v40);
      v55(v78, v40);

      sub_100227810(v20, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
      goto LABEL_16;
    }

    v74 = v20;
    v46 = v81;
    if (v81)
    {
      v47 = v80;
      v48 = v76;
      if (!v73)
      {
LABEL_25:

        v56 = *(v47 + 8);
        v57 = v77;
        v56(v48, v77);
        v58 = v78;
        v59 = v57;
LABEL_26:
        v56(v58, v59);

        sub_100227810(v74, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
        goto LABEL_16;
      }

      sub_100014C84(0, &qword_10190AB90);
      v49 = v44;
      v50 = v46;
      v51 = static NSObject.== infix(_:_:)();

      if ((v51 & 1) == 0)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      v47 = v80;
      v48 = v76;
      if (v73)
      {
        goto LABEL_24;
      }
    }

    if (v72 != v71)
    {
      goto LABEL_24;
    }

    v60 = v77;
    if (v70)
    {
      if (!v38)
      {
LABEL_35:

        v67 = v78;
LABEL_42:

        v56 = *(v47 + 8);
        v56(v48, v60);
        v58 = v67;
        v59 = v60;
        goto LABEL_26;
      }

      v61 = OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type;

      v62 = v70;
      if ((sub_10021F254(v70 + v61, v38 + v61) & 1) == 0)
      {

        v60 = v77;
        v67 = v78;
        goto LABEL_42;
      }

      v63 = *(v62 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius);
      v64 = *(v62 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius + 8);
      v65 = *(v38 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius);
      v66 = *(v38 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius + 8);

      if (v64)
      {
        v60 = v77;
        if (v66)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v60 = v77;
        if ((v66 & 1) == 0 && v63 == v65)
        {
          goto LABEL_39;
        }
      }
    }

    else if (!v38)
    {
LABEL_39:
      v67 = v78;
      if (static Image.TemplateRenderingMode.== infix(_:_:)())
      {
        v26 = static Color.== infix(_:_:)();

        v68 = *(v47 + 8);
        v68(v48, v60);
        v68(v67, v60);

        v53 = v74;
        goto LABEL_19;
      }

      goto LABEL_42;
    }

    goto LABEL_35;
  }

LABEL_15:
  sub_100024F64(v20, &qword_1019141F0);
LABEL_16:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_10021FAB4()
{
  v1 = sub_1000CE6B8(&qword_1019141F8);
  __chkstk_darwin(v1);
  v3 = (&v12 - v2);
  v4 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002277A8(v0 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, v6, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = swift_projectBox();
    sub_1000D2DFC(v7, v3, &qword_1019141F8);

    v8 = *(v3 + 16);

    v9 = *(v1 + 96);

    v10 = type metadata accessor for Image.TemplateRenderingMode();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
    sub_100227810(v6, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
    return 0;
  }

  return v8;
}

id sub_10021FC78()
{
  v1 = sub_1000CE6B8(&qword_1019141F8);
  __chkstk_darwin(v1);
  v3 = (&v12 - v2);
  v4 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002277A8(v0 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, v6, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = swift_projectBox();
    sub_1000D2DFC(v7, v3, &qword_1019141F8);

    v8 = v3[3];
    v9 = *(v1 + 96);

    v10 = type metadata accessor for Image.TemplateRenderingMode();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
    sub_100227810(v6, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
    return 0;
  }

  return v8;
}

uint64_t sub_10021FE34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000CE6B8(&qword_1019141F8);
  __chkstk_darwin(v3);
  v5 = (&v15 - v4);
  v6 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002277A8(v1 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, v8, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v9 = swift_projectBox();
    sub_1000D2DFC(v9, v5, &qword_1019141F8);

    v10 = *(v3 + 96);

    v11 = type metadata accessor for Image.TemplateRenderingMode();
    (*(*(v11 - 8) + 32))(a1, v5 + v10, v11);
  }

  else
  {
    sub_100227810(v8, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
    v13 = enum case for Image.TemplateRenderingMode.original(_:);
    v14 = type metadata accessor for Image.TemplateRenderingMode();
    return (*(*(v14 - 8) + 104))(a1, v13, v14);
  }
}

uint64_t sub_10022003C()
{
  v1 = sub_1000CE6B8(&qword_1019141F8);
  __chkstk_darwin(v1);
  v3 = (&v12 - v2);
  v4 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002277A8(v0 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, v6, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = swift_projectBox();
    sub_1000D2DFC(v7, v3, &qword_1019141F8);

    v8 = *(v1 + 96);
    v9 = *(v3 + *(v1 + 112));
    v10 = type metadata accessor for Image.TemplateRenderingMode();
    (*(*(v10 - 8) + 8))(v3 + v8, v10);

    return v9;
  }

  else
  {
    sub_100227810(v6, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
    return static Color.clear.getter();
  }
}

uint64_t sub_1002201F8()
{
  v1 = OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel__image;
  v2 = sub_1000CE6B8(&qword_101914228);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100227810(v0 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
  v3 = OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_id;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_10022032C()
{
  sub_10017E020(319, &qword_101913258, &unk_101918A10);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlaceSummaryImageViewModel.ImageType(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100220484()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002204F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaceSummaryImageViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100220530(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_10021F254(*a1 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, *a2 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type) & 1) == 0)
  {
    return 0;
  }

  result = *(v3 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius + 8);
  if ((*(v2 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius + 8) & 1) == 0)
  {
    return (*(v2 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius) == *(v3 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius)) & ~result;
  }

  return result;
}

uint64_t sub_1002205A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100220620(uint64_t a1, char a2)
{
  v5 = sub_1000CE6B8(&unk_1019189D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = sub_1000CE6B8(&qword_101914218);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  v13 = OBJC_IVAR____TtC4Maps34PlaceSummaryPhotoCarouselViewModel__images;
  v17 = 0;
  sub_1000CE6B8(&unk_1019135D8);
  Published.init(initialValue:)();
  (*(v10 + 32))(v2 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC4Maps34PlaceSummaryPhotoCarouselViewModel__width;
  v17 = 0x4079000000000000;
  Published.init(initialValue:)();
  (*(v6 + 32))(v2 + v14, v8, v5);
  *(v2 + OBJC_IVAR____TtC4Maps34PlaceSummaryPhotoCarouselViewModel_mapItem) = a1;
  *(v2 + OBJC_IVAR____TtC4Maps34PlaceSummaryPhotoCarouselViewModel_searchAlongRoute) = a2;
  return v2;
}

uint64_t sub_100220814()
{
  v1 = OBJC_IVAR____TtC4Maps34PlaceSummaryPhotoCarouselViewModel__images;
  v2 = sub_1000CE6B8(&qword_101914218);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Maps34PlaceSummaryPhotoCarouselViewModel__width;
  v4 = sub_1000CE6B8(&unk_1019189D0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_100220940()
{
  sub_10017E020(319, &qword_1019135D0, &unk_1019135D8);
  if (v0 <= 0x3F)
  {
    sub_100225AC4(319, &qword_101912AB0, &type metadata for CGFloat, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100220A5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaceSummaryPhotoCarouselViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100220AE4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaceSummaryPhotoCarouselViewModel(0);
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100220B28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100220B9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100220C10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2 >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v0 = [objc_opt_self() *off_10160B4A8[v2]];
    return Color.init(_:)();
  }

  return result;
}

uint64_t sub_100220CF4()
{
  v1 = OBJC_IVAR____TtC4Maps30PlaceSummaryEVChargerViewModel__displayString;
  v2 = sub_1000CE6B8(&qword_101914238);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Maps30PlaceSummaryEVChargerViewModel__evChargerStatus;
  v4 = sub_1000CE6B8(&qword_101914240);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC4Maps30PlaceSummaryEVChargerViewModel_id;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void sub_100220E60()
{
  sub_100225AC4(319, &qword_101913720, &type metadata for String, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_100220FC0(319, &unk_101913728, type metadata accessor for GEOEVChargerAvailability_RealTimeStatus, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100220FC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100221024@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaceSummaryEVChargerViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100221080@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v1 = type metadata accessor for PlaceSummaryViewModelUnit.PhotoCarousel(0);
  __chkstk_darwin(v1 - 8);
  v64 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PlaceSummaryViewModelUnit.Hours(0);
  __chkstk_darwin(v3 - 8);
  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlaceSummaryViewModelUnit.Delimiter(0);
  __chkstk_darwin(v5 - 8);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0);
  __chkstk_darwin(v7 - 8);
  v61 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlaceSummaryViewModelUnit.TransitShields(0);
  __chkstk_darwin(v9 - 8);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlaceSummaryViewModelUnit.UGCUserRecommendations(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  PartyRatings = type metadata accessor for PlaceSummaryViewModelUnit.FirstPartyRatings(0);
  __chkstk_darwin(PartyRatings - 8);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
  __chkstk_darwin(v23 - 8);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);
  __chkstk_darwin(v26 - 8);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PlaceSummaryViewModelUnit.Distance(0);
  __chkstk_darwin(v29 - 8);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
  __chkstk_darwin(v32 - 8);
  v34 = &v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  __chkstk_darwin(v35);
  v37 = (&v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002277A8(v65, v37, type metadata accessor for PlaceSummaryViewModelUnit);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100227870(v37, v31, type metadata accessor for PlaceSummaryViewModelUnit.Distance);
      v53 = type metadata accessor for UUID();
      (*(*(v53 - 8) + 16))(v66, v31, v53);
      v39 = type metadata accessor for PlaceSummaryViewModelUnit.Distance;
      v40 = v31;
      goto LABEL_22;
    case 2u:
      sub_100227870(v37, v28, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
      v50 = type metadata accessor for UUID();
      (*(*(v50 - 8) + 16))(v66, v28, v50);
      v39 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides;
      v40 = v28;
      goto LABEL_22;
    case 3u:
      sub_100227870(v37, v25, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
      v51 = type metadata accessor for UUID();
      (*(*(v51 - 8) + 16))(v66, v25, v51);
      v39 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide;
      v40 = v25;
      goto LABEL_22;
    case 4u:
      sub_100227870(v37, v22, type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide);
      v48 = type metadata accessor for UUID();
      (*(*(v48 - 8) + 16))(v66, v22, v48);
      v44 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide;
      goto LABEL_21;
    case 5u:
      sub_100227870(v37, v19, type metadata accessor for PlaceSummaryViewModelUnit.FirstPartyRatings);
      v54 = type metadata accessor for UUID();
      (*(*(v54 - 8) + 16))(v66, v19, v54);
      v39 = type metadata accessor for PlaceSummaryViewModelUnit.FirstPartyRatings;
      v40 = v19;
      goto LABEL_22;
    case 6u:
      sub_100227870(v37, v16, type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings);
      v56 = type metadata accessor for UUID();
      (*(*(v56 - 8) + 16))(v66, v16, v56);
      v39 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings;
      v40 = v16;
      goto LABEL_22;
    case 7u:
      sub_100227870(v37, v13, type metadata accessor for PlaceSummaryViewModelUnit.UGCUserRecommendations);
      v52 = type metadata accessor for UUID();
      return (*(*(v52 - 8) + 32))(v66, v13, v52);
    case 8u:
      v22 = v60;
      sub_100227870(v37, v60, type metadata accessor for PlaceSummaryViewModelUnit.TransitShields);
      v58 = type metadata accessor for UUID();
      (*(*(v58 - 8) + 16))(v66, v22, v58);
      v44 = type metadata accessor for PlaceSummaryViewModelUnit.TransitShields;
      goto LABEL_21;
    case 9u:
      v41 = *v37;
      v42 = OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit17ContainmentParent_id;
      goto LABEL_17;
    case 0xAu:
      v22 = v61;
      sub_100227870(v37, v61, type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry);
      v57 = type metadata accessor for UUID();
      (*(*(v57 - 8) + 16))(v66, v22, v57);
      v44 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry;
      goto LABEL_21;
    case 0xBu:
      v45 = v62;
      sub_100227870(v37, v62, type metadata accessor for PlaceSummaryViewModelUnit.Delimiter);
      v46 = type metadata accessor for UUID();
      return (*(*(v46 - 8) + 32))(v66, v45, v46);
    case 0xCu:
      v22 = v63;
      sub_100227870(v37, v63, type metadata accessor for PlaceSummaryViewModelUnit.Hours);
      v49 = type metadata accessor for UUID();
      (*(*(v49 - 8) + 16))(v66, v22, v49);
      v44 = type metadata accessor for PlaceSummaryViewModelUnit.Hours;
      goto LABEL_21;
    case 0xDu:
      v41 = *v37;
      v42 = OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit24RealTimeAvailableCharger_id;
      goto LABEL_17;
    case 0xEu:
      v22 = v64;
      sub_100227870(v37, v64, type metadata accessor for PlaceSummaryViewModelUnit.PhotoCarousel);
      v43 = type metadata accessor for UUID();
      (*(*(v43 - 8) + 16))(v66, v22, v43);
      v44 = type metadata accessor for PlaceSummaryViewModelUnit.PhotoCarousel;
LABEL_21:
      v39 = v44;
      v40 = v22;
      goto LABEL_22;
    case 0xFu:
      v41 = *v37;
      v42 = OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit11UserLibrary_id;
      goto LABEL_17;
    case 0x10u:
      v41 = *v37;
      v42 = OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit8UserNote_id;
      goto LABEL_17;
    case 0x11u:
      v41 = *v37;
      v42 = OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit12VisitedPlace_id;
LABEL_17:
      v55 = type metadata accessor for UUID();
      (*(*(v55 - 8) + 16))(v66, v41 + v42, v55);

      break;
    default:
      sub_100227870(v37, v34, type metadata accessor for PlaceSummaryViewModelUnit.Label);
      v38 = type metadata accessor for UUID();
      (*(*(v38 - 8) + 16))(v66, v34, v38);
      v39 = type metadata accessor for PlaceSummaryViewModelUnit.Label;
      v40 = v34;
LABEL_22:
      result = sub_100227810(v40, v39);
      break;
  }

  return result;
}

uint64_t sub_100221B60()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_100221080(&v10 - v5);
  sub_100221080(v3);
  v7 = static UUID.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_100221C84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  __chkstk_darwin(v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002277A8(v2, v10, type metadata accessor for PlaceSummaryViewModelUnit);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v5 + 56))(a1, 1, 1, v4);
    return sub_100227810(v10, type metadata accessor for PlaceSummaryViewModelUnit);
  }

  else
  {
    sub_100227870(v10, v7, type metadata accessor for PlaceSummaryViewModelUnit.Label);
    if (*&v7[*(v4 + 24) + 8] || *&v7[*(v4 + 36)])
    {
      sub_100227810(v7, type metadata accessor for PlaceSummaryViewModelUnit.Label);
      return (*(v5 + 56))(a1, 1, 1, v4);
    }

    else
    {
      sub_100227870(v7, a1, type metadata accessor for PlaceSummaryViewModelUnit.Label);
      return (*(v5 + 56))(a1, 0, 1, v4);
    }
  }
}

unint64_t sub_100221EA0()
{
  v31 = sub_1000CE6B8(&qword_1019141F8);
  __chkstk_darwin(v31);
  v30 = &v29 - v0;
  v1 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
  __chkstk_darwin(v36);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = _swiftEmptyArrayStorage;
  v10 = v9 + 16;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v38;
  if ((~v38 & 0xF000000000000007) != 0)
  {
    if (!(v38 >> 61))
    {
      sub_10013BAE8(v38);
      sub_100222500(v11, v9);
      sub_10013BD74(v11);
    }

    sub_10013BD74(v11);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = v38;
  v13 = v34;
  if ((~v38 & 0xF000000000000007) != 0)
  {
    if (!(v38 >> 61))
    {
      sub_10013BAE8(v38);
      sub_100222500(v12, v9);
      sub_10013BD74(v12);
    }

    sub_10013BD74(v12);
  }

  v14 = sub_100222634(0);
  if (v14)
  {
    v15 = v14;
    v29 = v9;
    v16 = v14[2];
    v17 = v33;
    if (v16)
    {
      v18 = 0;
      v37 = v14 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v35 = v16;
      while (v18 < v15[2])
      {
        sub_1002277A8(&v37[*(v17 + 72) * v18], v7, type metadata accessor for PlaceSummaryViewModelUnit);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_100227810(v7, type metadata accessor for PlaceSummaryViewModelUnit);
        }

        else
        {
          sub_100227870(v7, v13, type metadata accessor for PlaceSummaryViewModelUnit.Label);
          v19 = *(v13 + *(v36 + 36));
          if (v19)
          {
            swift_beginAccess();

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            sub_1002277A8(v19 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, v3, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v20 = swift_projectBox();
              v21 = v3;
              v22 = v1;
              v23 = v30;
              sub_1000D2DFC(v20, v30, &qword_1019141F8);

              v24 = *(v23 + 24);
              v25 = *(v31 + 96);

              v26 = type metadata accessor for Image.TemplateRenderingMode();
              v27 = v23 + v25;
              v1 = v22;
              v3 = v21;
              (*(*(v26 - 8) + 8))(v27, v26);

              v13 = v34;
              if (v24)
              {
                swift_beginAccess();

                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v13 = v34;
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                swift_endAccess();
              }
            }

            else
            {
              sub_100227810(v3, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
              v13 = v34;
            }

            sub_100227810(v13, type metadata accessor for PlaceSummaryViewModelUnit.Label);
            v17 = v33;
          }

          else
          {
            sub_100227810(v13, type metadata accessor for PlaceSummaryViewModelUnit.Label);
          }

          v16 = v35;
        }

        if (v16 == ++v18)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_33:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }

LABEL_28:
  }

  swift_beginAccess();
  v10 = *v10;
  if (v10 >> 62)
  {
    goto LABEL_33;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_34:
    v10 = 0;
    goto LABEL_35;
  }

LABEL_31:

LABEL_35:

  return v10;
}

id sub_100222500(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  result = sub_10021FC78();
  if (result)
  {
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  return result;
}

void *sub_100222634(int a1)
{
  LODWORD(v1) = a1;
  v2 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v34 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v39;
  v33 = v39[2];
  if (v33)
  {
    v15 = 0;
    v16 = *(v11 + 20);
    v30 = v39 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v31 = v16;
    v17 = _swiftEmptyArrayStorage;
    v37 = v1;
    v28 = v12;
    v32 = v39;
    do
    {
      if (v15 >= result[2])
      {
        __break(1u);
        return result;
      }

      v18 = *(v12 + 72);
      v36 = v15;
      v19 = v34;
      sub_1002277A8(v30 + v18 * v15, v34, type metadata accessor for PlaceSummaryViewModelLine);
      v20 = *(v19 + v31);

      sub_100227810(v19, type metadata accessor for PlaceSummaryViewModelLine);
      v21 = v20;
      v22 = *(v20 + 16);
      if (v22)
      {
        v23 = *(v29 + 80);
        v35 = v21;
        v38 = (v23 + 32) & ~v23;
        v24 = v21 + v38;
        v25 = *(v29 + 72);
        while (2)
        {
          sub_1002277A8(v24, v10, type metadata accessor for PlaceSummaryViewModelUnit);
          sub_1002277A8(v10, v7, type metadata accessor for PlaceSummaryViewModelUnit);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          sub_100227810(v7, type metadata accessor for PlaceSummaryViewModelUnit);
          switch(EnumCaseMultiPayload)
          {
            case 1:
              if (v1 != 1)
              {
                goto LABEL_9;
              }

              goto LABEL_45;
            case 2:
              if (v1 == 2)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 3:
              if (v1 == 3)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 4:
              if (v1 == 4)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 5:
              if (v1 == 5)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 6:
              if (v1 == 6)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 7:
              if (v1 == 7)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 8:
              if (v1 == 8)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 9:
              if (v1 == 9)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 10:
              if (v1 == 10)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 11:
              if (v1 == 11)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 12:
              if (v1 == 12)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 13:
              if (v1 == 13)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 14:
              if (v1 == 14)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 15:
              if (v1 == 15)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 16:
              if (v1 == 16)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            case 17:
              if (v1 == 17)
              {
                goto LABEL_45;
              }

              goto LABEL_9;
            default:
              if (v1)
              {
LABEL_9:
                sub_100227810(v10, type metadata accessor for PlaceSummaryViewModelUnit);
              }

              else
              {
LABEL_45:
                sub_1002277A8(v10, v4, type metadata accessor for PlaceSummaryViewModelUnit);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v17 = sub_100356A5C(0, v17[2] + 1, 1, v17);
                }

                v1 = v17[2];
                v27 = v17[3];
                if (v1 >= v27 >> 1)
                {
                  v17 = sub_100356A5C(v27 > 1, v1 + 1, 1, v17);
                }

                sub_100227810(v10, type metadata accessor for PlaceSummaryViewModelUnit);
                v17[2] = v1 + 1;
                sub_100227870(v4, v17 + v38 + v1 * v25, type metadata accessor for PlaceSummaryViewModelUnit);
                LOBYTE(v1) = v37;
              }

              v24 += v25;
              if (--v22)
              {
                continue;
              }

              v12 = v28;
              break;
          }

          break;
        }
      }

      else
      {
      }

      v15 = v36 + 1;
      result = v32;
    }

    while (v36 + 1 != v33);

    if (v17[2])
    {
      return v17;
    }
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      return v17;
    }
  }

  return 0;
}

uint64_t sub_100222BC0()
{
  v0 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100222634(0);
  if (!result)
  {
    return 0;
  }

  v8 = result;
  v9 = *(result + 16);
  if (!v9)
  {
LABEL_10:

    return 0;
  }

  v10 = 0;
  v11 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  while (v10 < *(v8 + 16))
  {
    sub_1002277A8(v11 + *(v1 + 72) * v10, v3, type metadata accessor for PlaceSummaryViewModelUnit);
    if (swift_getEnumCaseMultiPayload())
    {
      result = sub_100227810(v3, type metadata accessor for PlaceSummaryViewModelUnit);
    }

    else
    {
      sub_100227870(v3, v6, type metadata accessor for PlaceSummaryViewModelUnit.Label);
      v12 = *&v6[*(v4 + 40)];

      result = sub_100227810(v6, type metadata accessor for PlaceSummaryViewModelUnit.Label);
      if (v12)
      {

        return v12;
      }
    }

    if (v9 == ++v10)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_100222DCC()
{
  v0 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((~v2 & 0xF000000000000007) != 0)
  {
    if (v2 >> 61 == 1)
    {
      sub_10013BAE8(v2);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10013BD74(v2);
      v0 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_10013BD74(v2);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((~v2 & 0xF000000000000007) != 0)
  {
    if (v2 >> 61 == 1)
    {
      sub_10013BAE8(v2);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10013BD74(v2);
      v0 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_10013BD74(v2);
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return v0;
    }

    goto LABEL_15;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:

    return 0;
  }

  return v0;
}

void *sub_100222FE8()
{
  v0 = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((~v2 & 0xF000000000000007) != 0)
  {
    if (v2 >> 61 == 3)
    {
      sub_10013BAE8(v2);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10013BD74(v2);
      v0 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_10013BD74(v2);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((~v2 & 0xF000000000000007) != 0)
  {
    if (v2 >> 61 == 3)
    {
      sub_10013BAE8(v2);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10013BD74(v2);
      v0 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_10013BD74(v2);
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return v0;
    }

    goto LABEL_15;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:

    return 0;
  }

  return v0;
}

unint64_t sub_100223204()
{
  v0 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100222634(9);
  if (!v4)
  {
    return 0;
  }

  v11 = _swiftEmptyArrayStorage;
  v5 = v4[2];
  if (!v5)
  {

    v8 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_11;
    }

LABEL_16:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return v8;
    }

    goto LABEL_12;
  }

  v6 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v7 = *(v1 + 72);
  v8 = _swiftEmptyArrayStorage;
  do
  {
    sub_1002277A8(v6, v3, type metadata accessor for PlaceSummaryViewModelUnit);
    if (swift_getEnumCaseMultiPayload() == 9)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v8 = v11;
    }

    else
    {
      sub_100227810(v3, type metadata accessor for PlaceSummaryViewModelUnit);
    }

    v6 += v7;
    --v5;
  }

  while (v5);

  if (v8 >> 62)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    return 0;
  }

  return v8;
}

uint64_t sub_10022341C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((~v3 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  v1 = v3 >> 61;
  if ((v3 >> 61) <= 1)
  {
    if (v1)
    {
      v2 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC4Maps18DirectionsETAModel_showETA);
      sub_10013BD74(v3);
      if (v2)
      {
        return 2;
      }

      else
      {
        return 9;
      }
    }

    else
    {
      sub_10013BD74(v3);
      return 1;
    }
  }

  else if (v1 == 2)
  {
    sub_10013BD74(v3);
    return 10;
  }

  else if (v1 == 3)
  {
    sub_10013BD74(v3);
    return 11;
  }

  else
  {
    return dword_1011F2DE4[__ROR8__(v3 ^ 0x8000000000000000, 3)];
  }
}

uint64_t sub_100223558()
{
  v83 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0);
  __chkstk_darwin(v83);
  v84 = &v82 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1000CE6B8(&qword_10190D5A0);
  __chkstk_darwin(v1 - 8);
  v86 = &v82 - v2;
  v87 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);
  __chkstk_darwin(v87);
  v88 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
  v85 = *(v96 - 8);
  __chkstk_darwin(v96);
  v82 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v91 = &v82 - v6;
  v93 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(0);
  __chkstk_darwin(v93);
  v94 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v8 - 8);
  v99 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v97 = &v82 - v11;
  __chkstk_darwin(v12);
  v100 = &v82 - v13;
  __chkstk_darwin(v14);
  v16 = &v82 - v15;
  __chkstk_darwin(v17);
  v19 = &v82 - v18;
  v20 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v89 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v90 = &v82 - v24;
  __chkstk_darwin(v25);
  v92 = (&v82 - v26);
  __chkstk_darwin(v27);
  v98 = &v82 - v28;
  __chkstk_darwin(v29);
  v95 = &v82 - v30;
  __chkstk_darwin(v31);
  v101 = &v82 - v32;
  __chkstk_darwin(v33);
  v35 = &v82 - v34;
  __chkstk_darwin(v36);
  v38 = &v82 - v37;
  __chkstk_darwin(v39);
  v41 = &v82 - v40;
  __chkstk_darwin(v42);
  v44 = &v82 - v43;
  sub_100217BE0(4, v19);
  v45 = *(v21 + 48);
  if (v45(v19, 1, v20) == 1)
  {
    sub_100024F64(v19, &qword_10190D6A8);
  }

  else
  {
    sub_100227870(v19, v44, type metadata accessor for PlaceSummaryViewModelUnit);
    sub_1002277A8(v44, v41, type metadata accessor for PlaceSummaryViewModelUnit);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v46 = v94;
      sub_100227870(v41, v94, type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide);
      v103[0] = 0;
      v103[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v103, "In your Guide ");
      HIBYTE(v103[1]) = -18;
      String.append(_:)(*(v46 + *(v93 + 20)));
      v47 = v103[0];
      v48 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide;
LABEL_27:
      sub_100227810(v46, v48);
      v70 = v44;
      goto LABEL_32;
    }

    sub_100227810(v44, type metadata accessor for PlaceSummaryViewModelUnit);
    sub_100227810(v41, type metadata accessor for PlaceSummaryViewModelUnit);
  }

  sub_100217BE0(3, v16);
  if (v45(v16, 1, v20) == 1)
  {
    sub_100024F64(v16, &qword_10190D6A8);
  }

  else
  {
    sub_100227870(v16, v38, type metadata accessor for PlaceSummaryViewModelUnit);
    sub_1002277A8(v38, v35, type metadata accessor for PlaceSummaryViewModelUnit);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v49 = v91;
      sub_100227870(v35, v91, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
      v50 = v96;
      v51 = (v49 + *(v96 + 24));
      v52 = v51[1];
      v103[0] = *v51;
      v103[1] = v52;

      v53._countAndFlagsBits = 8250;
      v53._object = 0xE200000000000000;
      String.append(_:)(v53);
      String.append(_:)(*(v49 + *(v50 + 28)));
      v47 = v103[0];
      sub_100227810(v49, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
LABEL_21:
      v70 = v38;
LABEL_32:
      sub_100227810(v70, type metadata accessor for PlaceSummaryViewModelUnit);
      return v47;
    }

    sub_100227810(v38, type metadata accessor for PlaceSummaryViewModelUnit);
    sub_100227810(v35, type metadata accessor for PlaceSummaryViewModelUnit);
  }

  v54 = v100;
  sub_100217BE0(2, v100);
  v55 = v45(v54, 1, v20);
  v56 = v101;
  if (v55 == 1)
  {
    sub_100024F64(v54, &qword_10190D6A8);
  }

  else
  {
    sub_100227870(v54, v101, type metadata accessor for PlaceSummaryViewModelUnit);
    v57 = v95;
    sub_1002277A8(v56, v95, type metadata accessor for PlaceSummaryViewModelUnit);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v58 = v88;
      sub_100227870(v57, v88, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
      v59 = v86;
      v60 = v87;
      sub_1000D2DFC(v58 + *(v87 + 28), v86, &qword_10190D5A0);
      v61 = v96;
      if ((*(v85 + 48))(v59, 1, v96) == 1)
      {
        sub_100024F64(v59, &qword_10190D5A0);
        v103[0] = 0;
        v103[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(21);

        strcpy(v103, "Featured in ");
        BYTE5(v103[1]) = 0;
        HIWORD(v103[1]) = -5120;
        v102 = *(v58 + *(v60 + 20));
        v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v62);

        v63._countAndFlagsBits = 0x73656469754720;
        v63._object = 0xE700000000000000;
        String.append(_:)(v63);
        v47 = v103[0];
      }

      else
      {
        v73 = v82;
        sub_100227870(v59, v82, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
        v103[0] = 0;
        v103[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(20);
        v74 = (v73 + *(v61 + 24));
        v76 = *v74;
        v75 = v74[1];

        v103[0] = v76;
        v103[1] = v75;
        v77._countAndFlagsBits = 8250;
        v77._object = 0xE200000000000000;
        String.append(_:)(v77);
        String.append(_:)(*(v73 + *(v61 + 28)));
        v78._countAndFlagsBits = 0x20646E6120;
        v78._object = 0xE500000000000000;
        String.append(_:)(v78);
        v102 = *(v58 + *(v60 + 20));
        v79._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v79);

        v80._countAndFlagsBits = 0x73656469754720;
        v80._object = 0xE700000000000000;
        String.append(_:)(v80);
        v47 = v103[0];
        sub_100227810(v73, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
      }

      sub_100227810(v58, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
      v70 = v56;
      goto LABEL_32;
    }

    sub_100227810(v56, type metadata accessor for PlaceSummaryViewModelUnit);
    sub_100227810(v57, type metadata accessor for PlaceSummaryViewModelUnit);
  }

  v64 = v97;
  sub_100217BE0(9, v97);
  v65 = v45(v64, 1, v20);
  v38 = v98;
  v66 = v99;
  if (v65 == 1)
  {
    sub_100024F64(v64, &qword_10190D6A8);
    goto LABEL_23;
  }

  sub_100227870(v64, v98, type metadata accessor for PlaceSummaryViewModelUnit);
  v67 = v92;
  sub_1002277A8(v38, v92, type metadata accessor for PlaceSummaryViewModelUnit);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v68 = *v67;
    strcpy(v103, "Location ");
    WORD1(v103[1]) = 0;
    HIDWORD(v103[1]) = -385875968;
    v102 = [*(v68 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit17ContainmentParent_parentIdentifier) muid];
    v69._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v69);

    v47 = v103[0];
    goto LABEL_21;
  }

  sub_100227810(v38, type metadata accessor for PlaceSummaryViewModelUnit);
  sub_100227810(v67, type metadata accessor for PlaceSummaryViewModelUnit);
LABEL_23:
  sub_100217BE0(10, v66);
  if (v45(v66, 1, v20) != 1)
  {
    v71 = v66;
    v44 = v90;
    sub_100227870(v71, v90, type metadata accessor for PlaceSummaryViewModelUnit);
    v72 = v89;
    sub_1002277A8(v44, v89, type metadata accessor for PlaceSummaryViewModelUnit);
    if (swift_getEnumCaseMultiPayload() != 10)
    {
      sub_100227810(v44, type metadata accessor for PlaceSummaryViewModelUnit);
      sub_100227810(v72, type metadata accessor for PlaceSummaryViewModelUnit);
      return 0;
    }

    v46 = v84;
    sub_100227870(v72, v84, type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry);
    type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
    type metadata accessor for AttributedString();
    sub_100225B14(&qword_101914230, &type metadata accessor for AttributedString);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry;
    goto LABEL_27;
  }

  sub_100024F64(v66, &qword_10190D6A8);
  return 0;
}

uint64_t sub_10022436C()
{
  v0 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v0 - 8);
  v24 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v23 - v3;
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  sub_100217BE0(4, &v23 - v12);
  v14 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = v15(v13, 1, v14);
  sub_100024F64(v13, &qword_10190D6A8);
  if (v16 != 1)
  {
    return 9;
  }

  sub_100217BE0(3, v10);
  v17 = v15(v10, 1, v14);
  sub_100024F64(v10, &qword_10190D6A8);
  if (v17 != 1)
  {
    return 10;
  }

  sub_100217BE0(2, v7);
  v18 = v15(v7, 1, v14);
  sub_100024F64(v7, &qword_10190D6A8);
  if (v18 != 1)
  {
    return 10;
  }

  sub_100217BE0(9, v4);
  v19 = v15(v4, 1, v14);
  sub_100024F64(v4, &qword_10190D6A8);
  if (v19 != 1)
  {
    return 15;
  }

  v20 = v24;
  sub_100217BE0(10, v24);
  v21 = v15(v20, 1, v14);
  sub_100024F64(v20, &qword_10190D6A8);
  if (v21 == 1)
  {
    return 0;
  }

  else
  {
    return 13;
  }
}

uint64_t sub_100224668()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = sub_100014C84(319, &qword_10190AB90);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100224718(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100224774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1002247D4(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  return result;
}

void sub_100224858()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100220FC0(319, &unk_101913938, type metadata accessor for PlaceSummaryViewModelUnit, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10022493C()
{
  result = type metadata accessor for PlaceSummaryViewModelUnit.Label(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PlaceSummaryViewModelUnit.Distance(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for PlaceSummaryViewModelUnit.FirstPartyRatings(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for PlaceSummaryViewModelUnit.UGCUserRecommendations(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for PlaceSummaryViewModelUnit.TransitShields(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for PlaceSummaryViewModelUnit.ContainmentParent(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for PlaceSummaryViewModelUnit.Delimiter(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for PlaceSummaryViewModelUnit.Hours(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for PlaceSummaryViewModelUnit.RealTimeAvailableCharger(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for PlaceSummaryViewModelUnit.PhotoCarousel(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for PlaceSummaryViewModelUnit.UserLibrary(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for PlaceSummaryViewModelUnit.UserNote(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for PlaceSummaryViewModelUnit.VisitedPlace(319);
                                    if (v18 <= 0x3F)
                                    {
                                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                      return 0;
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
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100224CD0()
{
  if (!qword_101913A80)
  {
    type metadata accessor for PlaceSummaryPhotoCarouselViewModel(255);
    sub_100225B14(&unk_10190F350, type metadata accessor for PlaceSummaryPhotoCarouselViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101913A80);
    }
  }
}

uint64_t sub_100224DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for UUID();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100224E9C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PlaceSummaryViewModelUnit.Label(319);
    if (v2 <= 0x3F)
    {
      result = sub_100014C84(319, &qword_101919ED0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100224F70()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_100014C84(319, &unk_101918390);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100225060()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100014C84(319, &qword_10190CA00);
    if (v1 <= 0x3F)
    {
      sub_100225AC4(319, &qword_10190FBF0, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10022515C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

uint64_t sub_10022522C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100225344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  result = type metadata accessor for UUID();
  if (v7 <= 0x3F)
  {
    result = sub_100014C84(319, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002253F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

    return (v10 + 1);
  }
}

uint64_t sub_1002254C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100225580()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_100014C84(319, &qword_10190AB90);
    if (v2 <= 0x3F)
    {
      result = sub_100014C84(319, &qword_10190D6B0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_100225674()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100225760(319, &qword_101914060, &qword_10190D6B0);
    if (v1 <= 0x3F)
    {
      sub_100220FC0(319, &unk_101914068, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100225760(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_100014C84(255, a3);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1002257EC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100225884()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttributedString();
    if (v1 <= 0x3F)
    {
      sub_100225AC4(319, &qword_10190FBF0, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100225AC4(319, &qword_10190FBF8, &type metadata for Color, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100220FC0(319, &qword_10190FC00, type metadata accessor for PlaceSummaryImageViewModel, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100220FC0(319, &qword_10190FC08, type metadata accessor for PlaceSummaryStackedImageViewModel, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_100225AC4(319, qword_10190FC10, &type metadata for Int, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_100220FC0(319, &unk_10190FCD0, &type metadata accessor for AttributedString, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_100225760(319, &unk_101914198, &unk_101918A40);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_100225AC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100225B14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100225B60()
{
  result = qword_1019141E8;
  if (!qword_1019141E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019141E8);
  }

  return result;
}

void sub_100225BB4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_14:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 56) + 8 * v12);
      v14 = sub_100298E64(*(*(a1 + 48) + 8 * v12));
      if ((v15 & 1) == 0)
      {
        return;
      }

      v16 = *(*(a2 + 56) + 8 * v14);
      if (v16)
      {
        if (!v13)
        {
          return;
        }

        sub_100014C84(0, &qword_10190AB90);
        v17 = v16;
        v18 = v13;
        v19 = static NSObject.== infix(_:_:)();

        if ((v19 & 1) == 0)
        {
          return;
        }
      }

      else if (v13)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100225D2C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v31 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v32 = (v4 + 63) >> 6;
  v33 = result;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v34 = (v6 - 1) & v6;
LABEL_13:
    v10 = 32 * (v7 | (v3 << 6));
    v11 = *(v2 + 48) + v10;
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v2 + 56) + v10;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 24);
    v37 = *(v15 + 16);
    v19 = *v11;
    sub_1000D2C54(v12, v13, v14);
    v35 = v19 == 0;
    v20 = v16;

    v36 = v18;

    if (!v19)
    {
      return 1;
    }

    v21 = sub_100296ED8(v19, v12, v13, v14);
    v23 = v22;

    sub_1001F12E8(v12, v13, v14);
    if ((v23 & 1) == 0)
    {
      goto LABEL_22;
    }

    v24 = *(a2 + 56) + 32 * v21;
    v26 = *v24;
    v25 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 24);
    sub_100014C84(0, &qword_10190B2D0);
    v29 = v26;

    if ((static NSObject.== infix(_:_:)() & 1) == 0 || (sub_1001EFBCC(v25, v17) & 1) == 0 || (sub_1001EFDC0(v27, v37) & 1) == 0)
    {

LABEL_22:

      return 0;
    }

    v30 = sub_100226008(v28, v36);

    v2 = v33;
    v6 = v34;
    result = v35;
    if ((v30 & 1) == 0)
    {
      return result;
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v32)
    {
      return 1;
    }

    v9 = *(v31 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v34 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100226008(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v26 = result;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v28 = (v7 - 1) & v7;
LABEL_12:
      v12 = v9 | (v3 << 6);
      v13 = *(v2 + 48) + 32 * v12;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      sub_1000D2DFC(*(v2 + 56) + 40 * v12, &v42, &unk_10190BB60);
      v29 = v42;
      v30 = v43;
      v18 = v44;
      v19 = v14;
      sub_1000D2C54(v15, v16, v17);
      if (!v19)
      {
        return 1;
      }

      v42 = v29;
      v43 = v30;
      v44 = v18;
      v20 = sub_100296ED8(v19, v15, v16, v17);
      v22 = v21;

      sub_1001F12E8(v15, v16, v17);
      if ((v22 & 1) == 0)
      {
        break;
      }

      sub_1000D2DFC(*(a2 + 56) + 40 * v20, v41, &unk_10190BB60);
      sub_10005EB40(v41, v37);
      sub_1000CE6B8(&qword_101924FD0);
      if (!swift_dynamicCast())
      {
        sub_100024F64(v41, &unk_10190BB60);
        sub_100024F64(&v42, &unk_10190BB60);
        v34 = 0u;
        v35 = 0u;
        v36 = 0;
        v24 = &qword_10191A570;
        v25 = &v34;
        goto LABEL_23;
      }

      v39[0] = v34;
      v39[1] = v35;
      v40 = v36;
      sub_10005EB40(&v42, &v34);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_10005BF8C(v39);
        sub_100024F64(v41, &unk_10190BB60);
        sub_100024F64(&v42, &unk_10190BB60);
        v31 = 0u;
        v32 = 0u;
        v33 = 0;
        v24 = &qword_10191A570;
        v25 = &v31;
        goto LABEL_23;
      }

      v37[0] = v31;
      v37[1] = v32;
      v38 = v33;
      v23 = static AnyHashable.== infix(_:_:)();
      sub_10005BF8C(v37);
      sub_10005BF8C(v39);
      sub_100024F64(v41, &unk_10190BB60);
      result = sub_100024F64(&v42, &unk_10190BB60);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      v2 = v26;
      v7 = v28;
      if (!v28)
      {
        goto LABEL_7;
      }
    }

    v24 = &unk_10190BB60;
    v25 = &v42;
LABEL_23:
    sub_100024F64(v25, v24);
    return 0;
  }

LABEL_7:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v28 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100226394(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_100296FD4(*(*(v3 + 48) + v12));
    if (v14)
    {
      v15 = *(*(a2 + 56) + 8 * result);
      if (v15[4] == v13[4] && v15[5] == v13[5] && v15[6] == v13[6])
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1002264EC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(a1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a1 + 64);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_13:
      v13 = v10 | (v5 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(a1 + 56) + 8 * v13);

      v18 = v17;
      v19 = sub_100297040(v15, v16);
      v21 = v20;

      if ((v21 & 1) == 0)
      {

        return;
      }

      sub_100014C84(0, a3);
      v22 = *(*(a2 + 56) + 8 * v19);
      v23 = static NSObject.== infix(_:_:)();

      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        return;
      }

      v12 = *(a1 + 64 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_10022666C(uint64_t a1, uint64_t a2)
{
  v59 = type metadata accessor for UUID();
  v54 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v46 - v6;
  v7 = sub_1000CE6B8(&qword_101914200);
  __chkstk_darwin(v7 - 8);
  v11.n128_f64[0] = __chkstk_darwin(v8);
  v12 = &v46 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v51 = a2;
    v52 = v10;
    v13 = 0;
    v49 = a1;
    v16 = *(a1 + 64);
    v15 = a1 + 64;
    v14 = v16;
    v17 = 1 << *(v15 - 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v14;
    v46 = (v17 + 63) >> 6;
    v47 = v15;
    v48 = v54 + 16;
    v56 = &v46 - v9;
    v57 = (v54 + 32);
    v50 = (v54 + 8);
    while (v19)
    {
      v58 = (v19 - 1) & v19;
      v20 = __clz(__rbit64(v19)) | (v13 << 6);
      v21 = v52;
LABEL_16:
      v26 = v49;
      v27 = v53;
      v28 = v54;
      v29 = v59;
      (*(v54 + 16))(v53, *(v49 + 48) + *(v54 + 72) * v20, v59, v11);
      v30 = *(*(v26 + 56) + 8 * v20);
      v31 = sub_1000CE6B8(&qword_101914208);
      v32 = *(v31 + 48);
      (*(v28 + 32))(v21, v27, v29);
      *(v21 + v32) = v30;
      (*(*(v31 - 8) + 56))(v21, 0, 1, v31);
      v33 = v30;
      v12 = v56;
LABEL_17:
      sub_1002278D8(v21, v12);
      v34 = sub_1000CE6B8(&qword_101914208);
      if ((*(*(v34 - 8) + 48))(v12, 1, v34) == 1)
      {
        return;
      }

      v35 = *(v34 + 48);
      v36 = v55;
      v37 = v59;
      (*v57)(v55, v12, v59);
      v38 = *&v12[v35];
      v39 = v51;
      v40 = sub_1002972F8(v36);
      v42 = v41;
      (*v50)(v36, v37);
      if ((v42 & 1) == 0)
      {

        return;
      }

      sub_100014C84(0, &qword_10190EC50);
      v43 = *(*(v39 + 56) + 8 * v40);
      v44 = static NSObject.== infix(_:_:)();

      v12 = v56;
      v19 = v58;
      if ((v44 & 1) == 0)
      {
        return;
      }
    }

    if (v46 <= v13 + 1)
    {
      v22 = v13 + 1;
    }

    else
    {
      v22 = v46;
    }

    v23 = v22 - 1;
    v21 = v52;
    while (1)
    {
      v24 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v24 >= v46)
      {
        v45 = sub_1000CE6B8(&qword_101914208);
        (*(*(v45 - 8) + 56))(v21, 1, 1, v45);
        v58 = 0;
        v13 = v23;
        goto LABEL_17;
      }

      v25 = *(v47 + 8 * v24);
      ++v13;
      if (v25)
      {
        v58 = (v25 - 1) & v25;
        v20 = __clz(__rbit64(v25)) | (v24 << 6);
        v13 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_100226AFC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_100297040(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      type metadata accessor for MapsFavoriteItem();
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = static NSObject.== infix(_:_:)();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100226C6C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100226CEC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100226DB4(unint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_10013C1B0(v2);
  return static Published.subscript.setter();
}

double sub_100226E7C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100226EFC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100226F94@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100227024()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002270D0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100227160()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002271D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC4Maps18DirectionsETAModel_showETA) == *(a2 + OBJC_IVAR____TtC4Maps18DirectionsETAModel_showETA) && [*(a1 + OBJC_IVAR____TtC4Maps18DirectionsETAModel_mapItem) isEqual:*(a2 + OBJC_IVAR____TtC4Maps18DirectionsETAModel_mapItem)])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v4)
    {

      v2 = 1;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_10022735C(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + OBJC_IVAR____TtC4Maps24AccessoryButtonViewModel_mapItem) isEqual:*(a2 + OBJC_IVAR____TtC4Maps24AccessoryButtonViewModel_mapItem)] && (static UUID.== infix(_:_:)() & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v2 = v5 ^ v4 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_100227474(uint64_t a1, uint64_t a2)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for PlaceSummaryViewModelLine(0), (sub_1001EFFD8(*(a1 + v4[5]), *(a2 + v4[5]))) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    v5 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1002274FC(uint64_t a1, uint64_t a2, void *a3)
{
  if ([*(a1 + *a3) isEqual:*(a2 + *a3)])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v3 = v6 ^ v5 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id sub_1002275F0(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit8UserNote_mapItem) isEqual:*(a2 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit8UserNote_mapItem)];
  if (result)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 isEqual:v4];

    return v5;
  }

  return result;
}

uint64_t sub_100227688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)())
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8)
  {
    v6 = a5();
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_1002277A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100227810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100227870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002278D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101914200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100227948(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (!v2)
    {
      if (a2 >> 61 || (sub_10021F254(a1 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, a2 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type) & 1) == 0)
      {
        return 0;
      }

      v6 = *(a2 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius + 8);
      if ((*(a1 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius + 8) & 1) == 0)
      {
        if (*(a1 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius) != *(a2 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius))
        {
          v6 = 1;
        }

        return (v6 & 1) == 0;
      }

      return (*(a2 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius + 8) & 1) != 0;
    }

    if (a2 >> 61 != 1)
    {
      return 0;
    }

    v10 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    v11 = a2 & 0x1FFFFFFFFFFFFFFFLL;

    return sub_1002271D8(v10, v11);
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        if (a2 >> 61 == 3)
        {
          return [*((a1 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel_mapItem) isEqual:*((a2 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC4Maps26HikeRouteSnapshotViewModel_mapItem)];
        }

        return 0;
      }

      v9 = __ROR8__(a1 ^ 0x8000000000000000, 3);
      if (v9 > 2)
      {
        if (v9 != 3)
        {
          if (v9 == 4)
          {
            if (a2 != 0x8000000000000020)
            {
              return 0;
            }
          }

          else if (a2 != 0x8000000000000028)
          {
            return 0;
          }

          return 1;
        }

        if (a2 == 0x8000000000000018)
        {
          return 1;
        }
      }

      else
      {
        if (v9)
        {
          if (v9 == 1)
          {
            if (a2 != 0x8000000000000008)
            {
              return 0;
            }
          }

          else if (a2 != 0x8000000000000010)
          {
            return 0;
          }

          return 1;
        }

        if (a2 == 0x8000000000000000)
        {
          return 1;
        }
      }

      return 0;
    }

    if (a2 >> 61 != 2)
    {
      return 0;
    }

    v7 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    v8 = a2 & 0x1FFFFFFFFFFFFFFFLL;

    return sub_10022735C(v7, v8);
  }
}

uint64_t sub_100227BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100227C74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100227D5C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100227ED4()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC4Maps17UserGuidesContext_containees;
    swift_beginAccess();
    v5 = sub_1003989D0();
    swift_endAccess();

    v6 = *(v1 + v4);
    if (v6 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      [v3 setNeedsUpdateComponent:@"cards" animated:1];
LABEL_7:

      return;
    }

    [v3 popContext:v1 animated:1 completion:0];
    goto LABEL_7;
  }
}

uint64_t sub_100228004@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100228578(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_1002280D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a2;
  v24 = a4;
  v23 = type metadata accessor for MapsDesignAccessibilityString();
  v6 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for GuideCell.GuideCellType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GuideCell();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for GuideCell.GuideCellType.mediumImageLeft(_:), v9, v15);
  v26 = type metadata accessor for GuidePickerRowViewModel();
  v27 = sub_100228578(&qword_101914398, type metadata accessor for GuidePickerRowViewModel);
  v25 = a1;
  v18 = swift_allocObject();
  v19 = v22;
  v18[2] = a1;
  v18[3] = v19;
  v18[4] = a3;
  swift_retain_n();

  GuideCell.init(_:model:leadingCellActions:trailingCellActions:tapHandler:)();
  *v8 = 0xD000000000000013;
  v8[1] = 0x8000000101225620;
  v20 = v23;
  (*(v6 + 104))(v8, enum case for MapsDesignAccessibilityString.cell(_:), v23);
  sub_100228578(&qword_101911FB0, &type metadata accessor for GuideCell);
  View.mapsDesignAXCombinedContainer(withID:)();
  (*(v6 + 8))(v8, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_10022842C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getKeyPath();
  sub_100228578(&qword_10190C908, type metadata accessor for GuidePickerRowViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4 = *(a1 + 104);
  *(a1 + 104) = v4 ^ 1;
  sub_100145534(v4);
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return a2(v5);
}

uint64_t sub_100228578(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100228654(char a1)
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  *(v1 + OBJC_IVAR____TtC4Maps33HomeListLibraryCountsDataProvider_active) = a1;
  if (a1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC4Maps33HomeListLibraryCountsDataProvider_countsManager);
    if ((v6[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching] & 1) == 0)
    {
      v6[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_isFetching] = 1;
      v7 = type metadata accessor for TaskPriority();
      (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v6;
      v9 = v6;
      sub_10020AAE4(0, 0, v5, &unk_10120A5E0, v8);
    }
  }
}

uint64_t sub_1002287D8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100109428();
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100228CA8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_10160B5B0;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DB364();
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100228A5C(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC4Maps33HomeListLibraryCountsDataProvider_active) == 1)
  {
    v10 = v1;
    v11 = v2;
    v3 = result;
    v4 = [*(result + OBJC_IVAR____TtC4Maps33HomeListLibraryCountsDataProvider_observers) allObservers];
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 32;
      do
      {
        sub_10004E374(v7, v9);
        sub_1000CE6B8(&qword_101909880);
        if (swift_dynamicCast())
        {
          if ([v8 respondsToSelector:"homeDataProvidingObjectDidUpdate:"])
          {
            [v8 homeDataProvidingObjectDidUpdate:v3];
          }

          swift_unknownObjectRelease();
        }

        v7 += 32;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

unint64_t sub_100228CC4()
{
  result = qword_1019143E8;
  if (!qword_1019143E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019143E8);
  }

  return result;
}

void sub_100228D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v11[4] = sub_1000D2C74;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001D3EC8;
  v11[3] = &unk_10160B6A8;
  v10 = _Block_copy(v11);

  [v6 collectionImageForSize:v10 onCompletion:{v7, v8}];
  _Block_release(v10);
}

BOOL sub_100228E10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  sub_10011A1CC();
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4)
  {
    return v3 == v5;
  }

  return 0;
}

Swift::Int sub_100228E84()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  sub_100228FF4(v1, v2);
  return Hasher._finalize()();
}

void sub_100228EE8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  NSObject.hash(into:)();

  sub_100228FF4(v1, v2);
}

Swift::Int sub_100228F3C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  sub_100228FF4(v1, v2);
  return Hasher._finalize()();
}

unint64_t sub_100228FA0()
{
  result = qword_1019143F0;
  if (!qword_1019143F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019143F0);
  }

  return result;
}

void sub_100228FF4(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  Hasher._combine(_:)(*&v3);
}

char *sub_100229170(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps16ParkedCarContext_configuration] = a1;
  v4 = objc_allocWithZone(ParkedCarInfoCardViewController);
  v5 = a1;
  v6 = [v4 initWithNibName:0 bundle:0];
  *&v1[OBJC_IVAR____TtC4Maps16ParkedCarContext_viewController] = v6;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v12, "init");
  v8 = OBJC_IVAR____TtC4Maps16ParkedCarContext_viewController;
  v9 = *&v7[OBJC_IVAR____TtC4Maps16ParkedCarContext_viewController];
  v10 = v7;
  [v9 setContaineeDelegate:v10];
  [*&v7[v8] setShareDelegate:v10];
  [*&v7[v8] setActionDelegate:v10];
  [*&v7[v8] setParkedCar:*&v5[OBJC_IVAR____TtC4Maps29ParkedCarContextConfiguration_parkedCar]];

  return v10;
}

uint64_t sub_100229470(void *a1)
{
  *&v1[OBJC_IVAR____TtC4Maps28NavigationWaypointController_displayedWaypoints] = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC4Maps28NavigationWaypointController_observers;
  *&v1[v3] = [objc_allocWithZone(GEOObserverHashTable) initWithProtocol:&OBJC_PROTOCOL____TtP4Maps36NavigationWaypointControllerObserver_ queue:0];
  *&v1[OBJC_IVAR____TtC4Maps28NavigationWaypointController_originWaypoint] = 0;
  *&v1[OBJC_IVAR____TtC4Maps28NavigationWaypointController_service] = a1;
  v4 = a1;
  result = NSNotFound.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *&v1[OBJC_IVAR____TtC4Maps28NavigationWaypointController_targetLegIndex] = result;
    v9.receiver = v1;
    v9.super_class = type metadata accessor for NavigationWaypointController();
    v6 = objc_msgSendSuper2(&v9, "init");
    v7 = *&v6[OBJC_IVAR____TtC4Maps28NavigationWaypointController_service];
    v8 = v6;
    [v7 registerObserver:v8];
    sub_10022A26C(v4, 0, 1);

    return v8;
  }

  return result;
}

void sub_1002295BC(void *a1)
{
  v2 = v1;
  if (qword_1019065D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_101914480);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315138;
    v10 = [v5 shortDescription];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10004DEB8(v11, v13, v17);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Will insert waypoint: %s", v8, 0xCu);
    sub_10004E3D0(v9);
  }

  v15 = OBJC_IVAR____TtC4Maps28NavigationWaypointController_displayedWaypoints;
  swift_beginAccess();
  if (*(v2 + v15) >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = v5;
    sub_10054E2B8(0, 0, v16);
    swift_endAccess();

    sub_100229E9C(1);
  }
}

void sub_100229828(void *a1, void *a2)
{
  v3 = v2;
  if (qword_1019065D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100021540(v6, qword_101914480);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = [v7 shortDescription];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10004DEB8(v13, v15, v29);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = [v8 shortDescription];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10004DEB8(v18, v20, v29);

    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Will replace waypoint: %s with: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v22 = OBJC_IVAR____TtC4Maps28NavigationWaypointController_displayedWaypoints;
  swift_beginAccess();
  v23 = *(v3 + v22);

  v24 = sub_1003CF570(v7, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    swift_beginAccess();
    v27 = sub_1003FA648(v24);
    swift_endAccess();
  }

  swift_beginAccess();
  if (*(v3 + v22) >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
  }

  else
  {
    v28 = v8;
    sub_10054E2B8(0, 0, v28);
    swift_endAccess();

    sub_100229E9C(1);
  }
}

void sub_100229B8C(int64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v3 = OBJC_IVAR____TtC4Maps28NavigationWaypointController_displayedWaypoints;
    swift_beginAccess();
    v4 = *&v1[v3];
    if (v4 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() > a1)
      {
        goto LABEL_4;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
LABEL_4:
      if (qword_1019065D0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100021540(v5, qword_101914480);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        *(v8 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v6, v7, "Will remove waypoint at index: %ld", v8, 0xCu);
      }

      swift_beginAccess();
      v9 = sub_1003FA648(a1);
      swift_endAccess();

      sub_100229E9C(1);
      return;
    }
  }

  if (qword_1019065D0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100021540(v10, qword_101914480);
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = a1;
    *(v14 + 12) = 2048;
    v15 = OBJC_IVAR____TtC4Maps28NavigationWaypointController_displayedWaypoints;
    swift_beginAccess();
    v16 = *&v11[v15];
    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 14) = v17;

    _os_log_impl(&_mh_execute_header, v12, v13, "Tried to remove at index: %ld which was out of bounds of displayedWaypoints.count: %ld", v14, 0x16u);
  }

  else
  {
  }
}

void sub_100229E9C(char a1)
{
  if (qword_1019065D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_101914480);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25[0] = v8;
    *v7 = 67109378;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 2080;
    swift_beginAccess();
    v9 = a1;

    sub_100193578(v10);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = sub_10099F8F0(isa);

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10004DEB8(v13, v15, v25);

    *(v7 + 10) = v16;
    a1 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "notifyObserversAndUpdateService:%{BOOL}d with currently displayed waypoints: %s", v7, 0x12u);
    sub_10004E3D0(v8);
  }

  v17 = [*&v4[OBJC_IVAR____TtC4Maps28NavigationWaypointController_observers] allObservers];
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = *(v18 + 16);
  if (!v19)
  {

    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  v20 = v18 + 32;
  swift_beginAccess();
  do
  {
    sub_10004E374(v20, v25);
    sub_1000CE6B8(&unk_101914510);
    if (swift_dynamicCast())
    {
      sub_100014C84(0, &qword_101914500);

      v21 = Array._bridgeToObjectiveC()().super.isa;

      [v24 navigationWaypointController:v4 didUpdateDisplayedWaypoints:v21];
      swift_unknownObjectRelease();
    }

    v20 += 32;
    --v19;
  }

  while (v19);

  if (a1)
  {
LABEL_11:
    v22 = *&v4[OBJC_IVAR____TtC4Maps28NavigationWaypointController_service];
    swift_beginAccess();
    sub_100014C84(0, &qword_101914500);

    v23 = Array._bridgeToObjectiveC()().super.isa;

    [v22 rerouteWithWaypoints:v23];
  }
}

void sub_10022A26C(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  if (![a1 isInNavigatingState])
  {
    goto LABEL_27;
  }

  v9 = [a1 route];
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = v9;
  v11 = [v9 steps];
  if (!v11)
  {

LABEL_27:
    v29 = 0;
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v12 = v11;
  sub_100014C84(0, &qword_1019144F8);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (a3)
  {
LABEL_15:
    v23 = [a1 stepIndex];
    goto LABEL_16;
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = &selRef_layoutDescriptionWithError_;
    v14 = [v10 legs];
    if (!v14)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v15 = v14;
    sub_100014C84(0, &qword_101914508);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_9;
    }
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
LABEL_9:

  if (v17 <= a2)
  {
    goto LABEL_15;
  }

  v18 = [v10 v4[113]];
  if (!v18)
  {
LABEL_66:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v20 & 0xC000000000000001) != 0)
  {
    goto LABEL_61;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
    __break(1u);
    goto LABEL_63;
  }

  for (i = *(v20 + 8 * a2 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v22 = i;

    v23 = [v22 startStepIndex];

LABEL_16:
    if (v13 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23 >= v24 || v24 <= 0)
    {
      v26 = 0;
    }

    else
    {
      v26 = v23;
    }

    v27 = [v10 waypointsAfterStepIndex:v26 legIndex:0];
    if (v27)
    {
      v28 = v27;
      sub_100014C84(0, &qword_101914500);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v13 = 0;
    }

    v60 = [v10 waypoints];
    if (!v60)
    {
      goto LABEL_55;
    }

    v61 = v60;
    sub_100014C84(0, &qword_101914500);
    v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v62 >> 62)
    {
      break;
    }

    if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

LABEL_48:
    if ((v62 & 0xC000000000000001) != 0)
    {
      v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_51;
    }

    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v63 = *(v62 + 32);
LABEL_51:
      v29 = v63;

      goto LABEL_56;
    }

    __break(1u);
LABEL_61:
    ;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_48;
  }

LABEL_54:

LABEL_55:

  v29 = 0;
LABEL_56:

  v64 = v29;
LABEL_28:
  v30 = *(v5 + OBJC_IVAR____TtC4Maps28NavigationWaypointController_originWaypoint);
  *(v5 + OBJC_IVAR____TtC4Maps28NavigationWaypointController_originWaypoint) = v29;

  v31 = OBJC_IVAR____TtC4Maps28NavigationWaypointController_targetLegIndex;
  v32 = *(v5 + OBJC_IVAR____TtC4Maps28NavigationWaypointController_targetLegIndex);
  v33 = [a1 targetLegIndex];
  *(v5 + v31) = [a1 targetLegIndex];
  v34 = OBJC_IVAR____TtC4Maps28NavigationWaypointController_displayedWaypoints;
  swift_beginAccess();
  if (!v13 || (v35 = *(v5 + v34), , v36 = sub_1001F089C(v13, v35), , , (v36 & 1) == 0) || v32 != v33)
  {
    if (qword_1019065D0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100021540(v48, qword_101914480);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v49, v50))
    {

      if (v13)
      {
        goto LABEL_41;
      }

      goto LABEL_64;
    }

    v65 = v29;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v66 = v52;
    *v51 = 136315138;
    if (v13)
    {
      v53 = v52;

      sub_100193578(v13);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v55 = sub_10099F8F0(isa);

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = sub_10004DEB8(v56, v58, &v66);

      *(v51 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v49, v50, "updateFromLatestServiceState, new upcoming waypoints: %s", v51, 0xCu);
      sub_10004E3D0(v53);

      v29 = v65;
LABEL_41:
      *(v5 + v34) = v13;

      sub_100229E9C(0);
      goto LABEL_42;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (qword_1019065D0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_100021540(v37, qword_101914480);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v66 = v41;
    *v40 = 136315138;

    sub_100193578(v13);
    v42 = Array._bridgeToObjectiveC()().super.isa;

    v43 = sub_10099F8F0(v42);

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = sub_10004DEB8(v44, v46, &v66);

    *(v40 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "updateFromLatestServiceState, new upcoming waypoints are same as displayed waypoints: %s", v40, 0xCu);
    sub_10004E3D0(v41);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

LABEL_42:
}

id sub_10022A9F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationWaypointController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10022AB64(void *a1, void *a2, unint64_t a3)
{
  if (qword_1019065D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100021540(v6, qword_101914480);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = a2;
    *(v10 + 12) = 2080;
    v13 = v7;
    if (a3 <= 0x10)
    {
      a2 = *(&off_10160B758 + a3);
      v14 = *(&off_10160B6D0 + a3);
    }

    v15 = a2;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10004DEB8(v16, v18, &v20);

    *(v10 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "navigationService:didReroute: %@ forReason: %s", v10, 0x16u);
    sub_1000DCD10(v11);

    sub_10004E3D0(v12);
  }

  if (a1)
  {

    sub_10022A26C(a1, 0, 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_10022AE04(void *a1, uint64_t a2)
{
  if (qword_1019065D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_101914480);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v5, v6, "navigationService:failedRerouteWithErrorCode: %ld", v7, 0xCu);
  }

  if (a1)
  {

    sub_10022A26C(a1, 0, 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_10022AF94(void *a1)
{
  if (MNNavigationServiceStateChangedToNavigating())
  {
    if (qword_1019065D0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_101914480);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "navigationService state changed to navigating", v5, 2u);
    }

    if (a1)
    {

      sub_10022A26C(a1, 0, 1);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10022B1D8(void *a1, void *a2, uint64_t a3)
{
  if (qword_1019065D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100021540(v6, qword_101914480);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    if (!a2)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v12 = v11;

    v13 = [v7 shortDescription];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10004DEB8(v14, v16, &v18);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v8, v9, "navigationService:didArriveAt:%s:endOfLegIndex:%lu", v10, 0x16u);
    sub_10004E3D0(v12);
  }

  else
  {
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_10022A26C(a1, 0, 1);
}

uint64_t sub_10022B43C()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_101914480);
  sub_100021540(v0, qword_101914480);
  type metadata accessor for NavigationWaypointController();
  sub_1000CE6B8(&qword_1019144E8);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

void sub_10022B5CC(void *a1, uint64_t a2)
{
  if (qword_1019065D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_101914480);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_23;
  }

  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v17 = v8;
  *v7 = 136315138;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v9 = @"AUTOMOBILE";
        goto LABEL_20;
      case 1:
        v9 = @"TRANSIT";
        goto LABEL_20;
      case 2:
        v9 = @"WALKING";
LABEL_20:
        v10 = v9;
        goto LABEL_21;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v9 = @"BICYCLE";
      }

      else
      {
        v9 = @"UNKNOWN_TRANSPORT_TYPE";
      }

      goto LABEL_20;
    }

    if (a2 == 5)
    {
      v9 = @"FERRY";
      goto LABEL_20;
    }

    if (a2 == 6)
    {
      v9 = @"RIDESHARE";
      goto LABEL_20;
    }
  }

  v9 = [NSString stringWithFormat:@"(unknown: %i)", a2, v17];
LABEL_21:
  v11 = v9;
  if (!v11)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = sub_10004DEB8(v13, v15, &v17);

  *(v7 + 4) = v16;
  _os_log_impl(&_mh_execute_header, v5, v6, "navigationService:didSwitchToNewTransportType: %s", v7, 0xCu);
  sub_10004E3D0(v8);

LABEL_23:

  if (!a1)
  {
    __break(1u);
    goto LABEL_28;
  }

  sub_10022A26C(a1, 0, 1);
}

void sub_10022B830(void *a1, void *a2, uint64_t a3)
{
  if (qword_1019065D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100021540(v6, qword_101914480);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    if (!a2)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v12 = v11;

    v13 = [v7 shortDescription];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10004DEB8(v14, v16, &v18);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v8, v9, "navigationService:didResumeNavigatingFrom:%s:endOfLegIndex:%lu", v10, 0x16u);
    sub_10004E3D0(v12);
  }

  else
  {
  }

  if (!a1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a3 == -1)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_10022A26C(a1, a3 + 1, 0);
}

id sub_10022BA3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceSummaryTemplateEntry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10022BBD0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines);
  v10 = *(v2 + 16);
  if (!v10)
  {
    return 0;
  }

  v3 = result;
  v4 = 0;
  v5 = v2 + 32;
  while (2)
  {
    if (v4 < *(v2 + 16))
    {
      v6 = *(v5 + 16 * v4);
      if (v6 >> 62)
      {
        v7 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v4;

      for (i = 0; v7 != i; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (__OFADD__(i, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          if (__OFADD__(i, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }
        }

        v9 = sub_10038923C(v3);

        if (v9)
        {

          return 1;
        }
      }

      v5 = v2 + 32;
      if (v4 != v10)
      {
        continue;
      }

      return 0;
    }

    break;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_10022BD64()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    while (2)
    {
      if (v3 >= *(v1 + 16))
      {
LABEL_22:
        __break(1u);
      }

      else
      {
        v4 = *(v1 + 32 + 16 * v3);
        if (v4 >> 62)
        {
          v5 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v3;

        for (i = 0; v5 != i; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            if (__OFADD__(i, 1))
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            if (__OFADD__(i, 1))
            {
LABEL_20:
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }
          }

          sub_100389114(v7);

          if (v7[1])
          {

            sub_10022CC4C(v7);
            return;
          }
        }

        if (v3 != v2)
        {
          continue;
        }
      }

      break;
    }
  }
}

void sub_10022BF44(void *a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return;
  }

  v7 = 0;
  v8 = OBJC_IVAR____TtC4Maps20PlaceSummaryMetadata_serverOverrides;
  v9 = v3 + 32;
  v32 = v3 + 32;
  while (1)
  {
    if (v7 >= *(v3 + 16))
    {
      goto LABEL_47;
    }

    v10 = *(v9 + 16 * v7);
    if (v10 >> 62)
    {
      break;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_37:
    if (++v7 == v4)
    {
      return;
    }
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_37;
  }

LABEL_6:

  v12 = 0;
  while ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v13 = __OFADD__(v12++, 1);
    if (v13)
    {
      goto LABEL_44;
    }

LABEL_13:
    if ((sub_10038923C(15) & 1) != 0 && (v14 = *(a2 + v8)) != 0 && a1 && (v37 = *(v14 + 16)) != 0)
    {
      v27 = v7;
      v28 = v4;
      v29 = v3;
      v30 = a1;
      v31 = a2;
      v15 = v14 + 32;
      v16 = *(a2 + v8);
      v17 = a1;
      v18 = 0;
      v35 = v11;
      v36 = v8;
      v33 = v15;
      v34 = v16;
      while (2)
      {
        if (v18 >= *(v16 + 16))
        {
          goto LABEL_46;
        }

        v19 = (v15 + 16 * v18);
        v20 = *v19;
        v21 = *v19 & 0xFFFFFFFFFFFFFF8;
        if (*v19 >> 62)
        {
          v22 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v22 = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v18 + 1;
        swift_bridgeObjectRetain_n();

        for (i = 0; v22 != i; ++i)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (i >= *(v21 + 16))
            {
              goto LABEL_43;
            }

            v24 = *(v20 + 8 * i + 32);
          }

          v25 = v24;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          v26 = [v24 isEqualToGEOMapItemIdentifier:v17];

          if (v26)
          {

            swift_bridgeObjectRelease_n();

            return;
          }
        }

        swift_bridgeObjectRelease_n();
        v18 = v38;
        v11 = v35;
        v8 = v36;
        v15 = v33;
        v16 = v34;
        if (v38 != v37)
        {
          continue;
        }

        break;
      }

      a1 = v30;
      a2 = v31;
      v4 = v28;
      v3 = v29;
      v7 = v27;
      if (v12 == v35)
      {
LABEL_36:

        v9 = v32;
        goto LABEL_37;
      }
    }

    else
    {

      if (v12 == v11)
      {
        goto LABEL_36;
      }
    }
  }

  if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_45;
  }

  v13 = __OFADD__(v12++, 1);
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for PlaceSummaryTemplateEntry.AccessoryEntity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_19;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
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
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 7)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 7;
}

uint64_t storeEnumTagSinglePayload for PlaceSummaryTemplateEntry.AccessoryEntity(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
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

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10022C42C(unsigned __int8 *a1)
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

_BYTE *sub_10022C448(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MyRecentsViewModel.Section.Recency(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MyRecentsViewModel.Section.Recency(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10022C5C4()
{
  result = qword_101914568;
  if (!qword_101914568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914568);
  }

  return result;
}

id sub_10022C618(void *a1)
{
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v6);
  v9 = &v39[-v8];
  v10 = [a1 platformType];
  v11 = v10;
  v12 = v10 > 3;
  if (v10 <= 3)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  result = [a1 lines];
  if (!result)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v42 = v11;
  v43 = v12;
  v45 = a1;
  v41 = result;
  NSArray.makeIterator()();
  sub_1000E21E8();
  dispatch thunk of IteratorProtocol.next()();
  v40 = v13;
  v44 = v3;
  if (v60)
  {
    v46 = (v3 + 8);
    v15 = _swiftEmptyArrayStorage;
    v47 = v9;
    while (1)
    {
      v48 = v15;
      sub_1000D2BE0(&v59, v57);
      sub_10004E374(v57, v56);
      sub_100014C84(0, &qword_101914570);
      swift_dynamicCast();
      v16 = v55;
      result = [v55 units];
      if (!result)
      {
        break;
      }

      v17 = result;
      v54 = _swiftEmptyArrayStorage;
      NSArray.makeIterator()();
      dispatch thunk of IteratorProtocol.next()();
      if (v53)
      {
        v18 = _swiftEmptyArrayStorage;
        do
        {
          sub_1000D2BE0(&v52, v51);
          type metadata accessor for PlaceSummaryUnit();
          sub_10004E374(v51, v50);
          sub_100014C84(0, &qword_101914578);
          swift_dynamicCast();
          v19 = sub_1003892A4(v49);
          sub_10004E3D0(v51);
          if (v19)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v18 = v54;
          }

          dispatch thunk of IteratorProtocol.next()();
        }

        while (v53);
      }

      else
      {
        v18 = _swiftEmptyArrayStorage;
      }

      (*v46)(v5, v2);
      v20 = [v16 isDynamicContextLine];
      v21 = [v16 shouldOmitSpacingDelimiter];

      sub_10004E3D0(v57);
      v15 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1003558A4(0, *(v15 + 2) + 1, 1, v15);
      }

      v23 = *(v15 + 2);
      v22 = *(v15 + 3);
      if (v23 >= v22 >> 1)
      {
        v15 = sub_1003558A4((v22 > 1), v23 + 1, 1, v15);
      }

      *(v15 + 2) = v23 + 1;
      v24 = &v15[16 * v23];
      *(v24 + 4) = v18;
      v24[40] = v20;
      v24[41] = v21;
      v9 = v47;
      dispatch thunk of IteratorProtocol.next()();
      if (!v60)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_23:
  v48 = v15;
  v25 = v43 | (1u >> (v42 & 0xF));

  (*(v44 + 8))(v9, v2);
  v26 = v45;
  v27 = [v45 trailingEntityTypeOrdersCount];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = _swiftEmptyArrayStorage;
    do
    {
      v31 = [v26 trailingEntityTypeOrderAtIndex:v29] - 1;
      if (v31 < 0xB && ((0x7BFu >> v31) & 1) != 0)
      {
        v32 = byte_1011F314A[v31];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_100097CB0(0, *(v30 + 2) + 1, 1, v30);
        }

        v34 = *(v30 + 2);
        v33 = *(v30 + 3);
        if (v34 >= v33 >> 1)
        {
          v30 = sub_100097CB0((v33 > 1), v34 + 1, 1, v30);
        }

        *(v30 + 2) = v34 + 1;
        v30[v34 + 32] = v32;
        v26 = v45;
      }

      ++v29;
    }

    while (v28 != v29);
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  if ((v25 & 1) != 0 || (v35 = v48, !*(v48 + 2)))
  {

    return 0;
  }

  else
  {
    if (!*(v30 + 2))
    {

      v30 = 0;
    }

    v36 = type metadata accessor for PlaceSummaryTemplateEntry();
    v37 = objc_allocWithZone(v36);
    v37[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_platformType] = v40;
    *&v37[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines] = v35;
    *&v37[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities] = v30;
    *&v37[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities] = 0;
    v58.receiver = v37;
    v58.super_class = v36;
    v38 = objc_msgSendSuper2(&v58, "init");

    return v38;
  }
}

uint64_t sub_10022CC4C(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101914580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10022CCB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10022F414(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__isActive);
  return result;
}

uint64_t sub_10022CD8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MapsDesignAccessibilityString();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000CE6B8(&qword_1019145C8);
  __chkstk_darwin(v7);
  v9 = (v18 - v8);
  v18[1] = *(v1 + OBJC_IVAR____TtC4Maps21CarHomeViewController_viewModel);
  type metadata accessor for CarHomeViewModel();

  State.init(wrappedValue:)();
  v10 = v20;
  *v9 = v19;
  v9[1] = v10;
  type metadata accessor for CarHomeView();
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v21._object = 0x8000000101225C20;
  v11._countAndFlagsBits = 0x686372616553;
  v12._countAndFlagsBits = 0xD000000000000026;
  v12._object = 0x8000000101225BF0;
  v11._object = 0xE600000000000000;
  v21._countAndFlagsBits = 0xD000000000000022;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, qword_1019600D8, v11, v21);
  CarSearchBarViewModel.init(leadingSymbol:prompt:trailingSymbol:)();
  v13 = static Color.clear.getter();
  v14 = static Edge.Set.all.getter();
  v15 = v9 + *(v7 + 36);
  *v15 = v13;
  v15[8] = v14;
  *v6 = 0x656D6F48726143;
  v6[1] = 0xE700000000000000;
  (*(v4 + 104))(v6, enum case for MapsDesignAccessibilityString.view(_:), v3);
  a1[3] = sub_1000CE6B8(&qword_1019145D0);
  v16 = sub_10022E0D0();
  v19 = v7;
  v20 = v16;
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10001A848(a1);
  View.mapsDesignAXContainer(withID:)();
  (*(v4 + 8))(v6, v3);
  return sub_10022E1F0(v9);
}

uint64_t sub_10022D08C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_10022D578(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v5 = [objc_opt_self() sharedInstance];
      if (!v5)
      {
        __break(1u);
        return;
      }

      v6 = v5;
      [v5 displayRoutePlanningForDestination:a2];
    }
  }
}

void sub_10022D62C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100339964(a2);
      swift_unknownObjectRelease();
    }
  }
}

void sub_10022D6B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100339B34(a2);
      swift_unknownObjectRelease();
    }
  }
}

void sub_10022D734(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10039B200(a2);
      swift_unknownObjectRelease();
    }
  }
}

void sub_10022D7B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v2 = [objc_opt_self() sharedInstance];
      if (!v2)
      {
        __break(1u);
        return;
      }

      v3 = v2;
      [v2 displaySearchCategories];
    }
  }
}

void sub_10022D85C(uint64_t a1, int a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100339CF4(a2, a3);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10022D934(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1 & 1);
  v3 = *(*&v1[OBJC_IVAR____TtC4Maps21CarHomeViewController_viewModel] + 136);
  if (*(v3 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__isActive) == 1)
  {
    *(v3 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__isActive) = 1;
    sub_1001DB408();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v7 = v3;
    sub_10022F414(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  withObservationTracking<A>(_:onChange:)();
  v5 = swift_getKeyPath();
  __chkstk_darwin(v5);
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_100100D94(v7);
}

id sub_10022DBE0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [objc_opt_self() defaultCenter];
  [v5 removeObserver:v2 name:@"MapsExternalDeviceUpdated" object:0];

  v6 = *(*&v2[OBJC_IVAR____TtC4Maps21CarHomeViewController_viewModel] + 136);
  if (*(v6 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__isActive) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10022F414(&qword_1019115A8, type metadata accessor for CarHomeDataProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v6 + OBJC_IVAR____TtC4Maps19CarHomeDataProvider__isActive) = 0;
    sub_1001DB408();
  }

  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "viewDidDisappear:", a1 & 1);
}

uint64_t sub_10022DFA0()
{

  v1 = v0 + OBJC_IVAR____TtC4Maps21CarHomeViewController_actionDelegate;

  return sub_1000A09E0(v1);
}

uint64_t type metadata accessor for CarHomeViewController()
{
  result = qword_1019145B8;
  if (!qword_1019145B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10022E0D0()
{
  result = qword_1019145D8;
  if (!qword_1019145D8)
  {
    sub_1000D6664(&qword_1019145C8);
    sub_10022F414(&qword_1019145E0, type metadata accessor for CarHomeView);
    sub_10022E18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019145D8);
  }

  return result;
}

unint64_t sub_10022E18C()
{
  result = qword_10191D9D0;
  if (!qword_10191D9D0)
  {
    sub_1000D6664(&qword_101910650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D9D0);
  }

  return result;
}

uint64_t sub_10022E1F0(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_1019145C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10022E258@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10010129C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10022E344(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100100E38;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10022E4A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10020AADC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10022E58C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012F0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10022E6E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10022F54C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10022E7D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_10022F514;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10022E930@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10020AADC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10022EA1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012F0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10022EB78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10020AADC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10022EC64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001012F0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10022EDC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10022EEAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10022F008@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10022F4E0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10022F0F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_10022F4A0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

unint64_t sub_10022F250@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 128);
  *a2 = v4;
  return sub_100100D84(v4);
}

uint64_t sub_10022F2FC()
{
  swift_getKeyPath();
  sub_10022F414(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10022F414(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10022F4A0(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a3;
  v8 = a1;
  v6[0] = a2;
  return v4(&v8, v6);
}

uint64_t sub_10022F514(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t InfoCardButtonVisibility.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

void *InfoCardButtonConfiguration.tintColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_tintColor);
  v2 = v1;
  return v1;
}

uint64_t InfoCardButtonConfiguration.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_10017A750(a1, v11);
  if (v12)
  {
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_type) == *&v10[OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_type] && *(v1 + OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_shouldBlur) == v10[OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_shouldBlur])
      {
        v5 = *(v1 + OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_tintColor);
        v6 = *&v10[OBJC_IVAR____TtC4Maps27InfoCardButtonConfiguration_tintColor];
        if (!v5)
        {
          v9 = v6;

          if (!v6)
          {
            v3 = 1;
            return v3 & 1;
          }

          goto LABEL_7;
        }

        if (v6)
        {
          sub_10022F944();
          v7 = v6;
          v8 = v5;
          v3 = static NSObject.== infix(_:_:)();

          return v3 & 1;
        }
      }
    }
  }

  else
  {
    sub_1000DB2F4(v11);
  }

LABEL_7:
  v3 = 0;
  return v3 & 1;
}

unint64_t sub_10022F944()
{
  result = qword_10190CA00;
  if (!qword_10190CA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190CA00);
  }

  return result;
}

unint64_t sub_10022F994()
{
  result = qword_101914610;
  if (!qword_101914610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914610);
  }

  return result;
}

void sub_10022FA1C()
{
  String.hash(into:)();
  v1 = *(v0 + 16);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 40));
  Hasher._combine(_:)(*(v0 + 48));
  Hasher._combine(_:)(*(v0 + 56));
  Hasher._combine(_:)(*(v0 + 64) & 1);
}

Swift::Int sub_10022FA90()
{
  Hasher.init(_seed:)();
  sub_10022FA1C();
  return Hasher._finalize()();
}

Swift::Int sub_10022FAD4()
{
  Hasher.init(_seed:)();
  sub_10022FA1C();
  return Hasher._finalize()();
}

BOOL sub_10022FB10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12 = *(a2 + 40);
  v11 = *(a2 + 48);
  v13 = *(a2 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v8)
    {
      return 0;
    }
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v15 & 1) == 0 || v2 != v8)
    {
      return result;
    }
  }

  if (v3 == v9 && v4 == v10)
  {
    result = 0;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }
  }

  if (v6 == v12 && v5 == v11)
  {
    return v7 == v13;
  }

  return result;
}

uint64_t sub_10022FC18()
{
  v1[17] = v0;
  v2 = type metadata accessor for Date();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v1[20] = *(v3 + 64);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_10022FCEC, 0, 0);
}

id sub_10022FCEC()
{
  v1 = v0[17];
  swift_beginAccess();
  *(v1 + 16) = _swiftEmptyArrayStorage;

  Date.init()();
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v3 = result;
    v4 = v0[21];
    v15 = v0[22];
    v6 = v0[19];
    v5 = v0[20];
    v8 = v0[17];
    v7 = v0[18];
    (*(v6 + 16))(v4);
    v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v10 = (v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = swift_allocObject();
    (*(v6 + 32))(v11 + v9, v4, v7);
    *(v11 + v10) = v8;
    v0[6] = sub_100232278;
    v0[7] = v11;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1002303FC;
    v0[5] = &unk_10160BCF0;
    v12 = _Block_copy(v0 + 2);

    v0[12] = sub_10023236C;
    v0[13] = v8;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100039C64;
    v0[11] = &unk_10160BD18;
    v13 = _Block_copy(v0 + 8);

    [v3 showInflightUploadsWithVisitorBlock:v12 completion:v13];
    _Block_release(v13);
    _Block_release(v12);

    (*(v6 + 8))(v15, v7);

    v14 = v0[1];

    return v14();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10022FF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v16 = sub_1000CE6B8(&qword_10190EBD0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v45 - v18;
  switch(a4)
  {
    case 0:
      v20 = @"UNSPECIFIED";
      goto LABEL_23;
    case 1:
      v20 = @"COHORT";
      goto LABEL_23;
    case 2:
      v20 = @"15MO";
      goto LABEL_23;
    case 3:
      v20 = @"LONG";
      goto LABEL_23;
    case 4:
      v20 = @"LONG_APPID";
      goto LABEL_23;
    case 5:
      v20 = @"SHORT";
      goto LABEL_23;
    case 6:
      v20 = @"SHORT_NAV";
      goto LABEL_23;
    case 7:
      v20 = @"NO";
      goto LABEL_23;
    case 8:
      v20 = @"NO_WITH_TIME";
      goto LABEL_23;
    case 9:
      v20 = @"NAV_TRACE";
      goto LABEL_23;
    case 10:
      v20 = @"REALTIME_TRAFFIC";
      goto LABEL_23;
    case 11:
      v20 = @"BATCH_TRAFFIC";
      goto LABEL_23;
    case 12:
      v20 = @"WIFI_PROBE";
      goto LABEL_23;
    case 13:
      v20 = @"PRESSURE_DATA";
      goto LABEL_23;
    case 14:
      v20 = @"CURATED_COLLECTION";
      goto LABEL_23;
    case 15:
      v20 = @"LOG_DISCARD";
      goto LABEL_23;
    case 16:
      v20 = @"POI_BUSYNESS";
      goto LABEL_23;
    case 17:
      v20 = @"PREDEX_TRAINING";
      goto LABEL_23;
    case 19:
      v20 = @"STRN_HARVEST";
      goto LABEL_23;
    case 20:
      v20 = @"LOC_INTEL";
LABEL_23:
      v21 = v20;
      break;
    default:
      v20 = [NSString stringWithFormat:@"(unknown: %i)", v17, a4];
      break;
  }

  v22 = v20;
  if (!v22)
  {
    __break(1u);
    goto LABEL_50;
  }

  v23 = v22;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  HIDWORD(v45) = a8;
  if (a7 > 2)
  {
    if (a7 <= 4)
    {
      if (a7 == 3)
      {
        v27 = @"DISCRETIONARY_EXPENSIVE_NET";
      }

      else
      {
        v27 = @"DISCRETIONARY_EXPENSIVE_BATTERY";
      }

      goto LABEL_41;
    }

    if (a7 == 5)
    {
      v27 = @"DISCRETIONARY_CHEAP";
      goto LABEL_41;
    }

    if (a7 == 6)
    {
      v27 = @"NON_DISCRETIONARY_EXPENSIVE_BATTERY";
      goto LABEL_41;
    }

LABEL_37:
    v27 = [NSString stringWithFormat:@"(unknown: %i)", a7];
    goto LABEL_42;
  }

  if (!a7)
  {
    v27 = @"UNSPECIFIED";
    goto LABEL_41;
  }

  if (a7 == 1)
  {
    v27 = @"NON_DISCRETIONARY";
    goto LABEL_41;
  }

  if (a7 != 2)
  {
    goto LABEL_37;
  }

  v27 = @"DISCRETIONARY_EXPENSIVE_NET_AND_BATTERY";
LABEL_41:
  v28 = v27;
LABEL_42:
  v29 = v27;
  if (!v29)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v30 = v29;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  sub_1002323DC(a3, v19);
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v19, 1, v34) == 1)
  {
LABEL_51:
    result = sub_100232374(v19);
    __break(1u);
    return result;
  }

  Date.timeIntervalSince(_:)();
  v37 = v36;
  (*(v35 + 8))(v19, v34);
  swift_beginAccess();
  v38 = *(a10 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a10 + 16) = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = sub_1003574C0(0, *(v38 + 2) + 1, 1, v38);
    *(a10 + 16) = v38;
  }

  v41 = *(v38 + 2);
  v40 = *(v38 + 3);
  if (v41 >= v40 >> 1)
  {
    v38 = sub_1003574C0((v40 > 1), v41 + 1, 1, v38);
  }

  v42 = v37;
  *(v38 + 2) = v41 + 1;
  v43 = &v38[72 * v41];
  *(v43 + 4) = v24;
  *(v43 + 5) = v26;
  *(v43 + 12) = v42;
  *(v43 + 7) = v31;
  *(v43 + 8) = v33;
  *(v43 + 9) = HIDWORD(v45);
  *(v43 + 10) = a5;
  *(v43 + 11) = a6;
  v43[96] = 0;
  *(a10 + 16) = v38;
  return swift_endAccess();
}

uint64_t sub_1002303FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v25 = a8;
  v15 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  v18 = *(a1 + 32);
  if (!a2)
  {
    v19 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = type metadata accessor for Date();
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
    goto LABEL_6;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a2 = v20;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
LABEL_6:

  v18(v19, a2, v17, a4, a5, a6, a7, v25);

  return sub_100232374(v17);
}

uint64_t sub_10023059C(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101914938);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v19[-v7];
  sub_100230C88();
  sub_100230CDC();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_101600528);
  swift_beginAccess();
  v9 = *(a1 + 16);
  if (!*(v9 + 2))
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1003574C0(0, 1, 1, v9);
      *(a1 + 16) = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1003574C0((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[72 * v12];
    *(v13 + 4) = 0;
    *(v13 + 5) = 0xE000000000000000;
    *(v13 + 12) = 0;
    *(v13 + 7) = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 10) = 0;
    *(v13 + 11) = 0;
    *(v13 + 9) = 0;
    v13[96] = 1;
    *(a1 + 16) = v9;
    swift_endAccess();
  }

  v19[0] = 0;

  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  v14 = OBJC_IVAR____TtC4Maps27GEOAPCurrentUploadDataModel_snapshot;
  swift_beginAccess();
  (*(v3 + 24))(a1 + v14, v8, v2);
  result = swift_endAccess();
  v16 = *(a1 + OBJC_IVAR____TtC4Maps27GEOAPCurrentUploadDataModel_dataSource);
  if (v16)
  {
    (*(v3 + 16))(v5, a1 + v14, v2);
    v17 = v16;
    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    v18 = *(v3 + 8);
    v18(v5, v2);
    return (v18)(v8, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100230874(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 dequeueReusableCellWithIdentifier:v6];

  if (v7)
  {
    type metadata accessor for GEOAPCurrentUploadTableViewCell();
    v8 = swift_dynamicCastClassUnconditional();
    v9 = IndexPath.row.getter();
    swift_beginAccess();
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v10 = *(a4 + 16);
      if (v9 < *(v10 + 16))
      {
        v11 = v10 + 72 * v9;
        v17[0] = *(v11 + 32);
        v12 = *(v11 + 48);
        v13 = *(v11 + 64);
        v14 = *(v11 + 80);
        v18 = *(v11 + 96);
        v17[2] = v13;
        v17[3] = v14;
        v17[1] = v12;
        type metadata accessor for GEOAPCurrentUploadTableViewCellConfiguration();
        v15 = swift_allocObject();
        memmove((v15 + 16), (v11 + 32), 0x41uLL);
        *(v8 + OBJC_IVAR____TtC4Maps31GEOAPCurrentUploadTableViewCell_cellConfig) = v15;
        sub_100232240(v17, &v16);

        return;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1002309B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003AC4C;

  return sub_10022FC18();
}

uint64_t sub_100230A48()
{

  v1 = OBJC_IVAR____TtC4Maps27GEOAPCurrentUploadDataModel_snapshot;
  v2 = sub_1000CE6B8(&qword_101914938);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GEOAPCurrentUploadDataModel()
{
  result = qword_101914678;
  if (!qword_101914678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100230B64()
{
  sub_100230C0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100230C0C()
{
  if (!qword_101914688)
  {
    sub_100230C88();
    sub_100230CDC();
    v0 = type metadata accessor for NSDiffableDataSourceSnapshot();
    if (!v1)
    {
      atomic_store(v0, &qword_101914688);
    }
  }
}

unint64_t sub_100230C88()
{
  result = qword_101914690;
  if (!qword_101914690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914690);
  }

  return result;
}

unint64_t sub_100230CDC()
{
  result = qword_101914698;
  if (!qword_101914698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914698);
  }

  return result;
}

uint64_t sub_100230FE8(uint64_t a1)
{
  sub_10005EB40(a1, v5);
  sub_1000CE6B8(&qword_101914930);
  type metadata accessor for GEOAPCurrentUploadTableViewCellConfiguration();
  if (swift_dynamicCast())
  {
    *(v1 + OBJC_IVAR____TtC4Maps35GEOAPCurrentUploadTableViewCellView_currentConfig) = v4;
    swift_retain_n();

    sub_100231618(v4);
  }

  return sub_10004E3D0(a1);
}

void (*sub_10023109C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC4Maps35GEOAPCurrentUploadTableViewCellView_currentConfig;
  *(v3 + 88) = v1;
  *(v3 + 96) = v5;
  v6 = *(v1 + v5);
  v7 = type metadata accessor for GEOAPCurrentUploadTableViewCellConfiguration();
  v4[13] = v7;
  v4[3] = v7;
  v4[4] = sub_100232140(&qword_101914918, type metadata accessor for GEOAPCurrentUploadTableViewCellConfiguration);
  *v4 = v6;

  return sub_10023116C;
}

void sub_10023116C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10005EB40(*a1, (v2 + 5));
    sub_100230FE8((v2 + 5));
  }

  else
  {
    sub_10005EB40(*a1, (v2 + 5));
    sub_1000CE6B8(&qword_101914930);
    if (swift_dynamicCast())
    {
      v3 = v2[10];
      *(v2[11] + v2[12]) = v3;
      swift_retain_n();

      sub_100231618(v3);
    }
  }

  sub_10004E3D0(v2);

  free(v2);
}

id sub_100231248()
{
  v1 = OBJC_IVAR____TtC4Maps35GEOAPCurrentUploadTableViewCellView____lazy_storage___mainLabel;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps35GEOAPCurrentUploadTableViewCellView____lazy_storage___mainLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps35GEOAPCurrentUploadTableViewCellView____lazy_storage___mainLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1002312E0()
{
  v1 = v0;
  v2 = sub_100231248();
  [v0 addSubview:v2];

  v3 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E5C00;
  v5 = OBJC_IVAR____TtC4Maps35GEOAPCurrentUploadTableViewCellView____lazy_storage___mainLabel;
  v6 = [*&v1[OBJC_IVAR____TtC4Maps35GEOAPCurrentUploadTableViewCellView____lazy_storage___mainLabel] leadingAnchor];
  v7 = [v1 layoutMarginsGuide];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8];
  *(v4 + 32) = v9;
  v10 = [*&v1[v5] trailingAnchor];
  v11 = [v1 layoutMarginsGuide];
  v12 = [v11 trailingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12];
  *(v4 + 40) = v13;
  v14 = [*&v1[v5] topAnchor];
  v15 = [v1 layoutMarginsGuide];
  v16 = [v15 topAnchor];

  v17 = [v14 constraintEqualToAnchor:v16];
  *(v4 + 48) = v17;
  v18 = [*&v1[v5] bottomAnchor];
  v19 = [v1 layoutMarginsGuide];
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v4 + 56) = v21;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

void sub_100231618(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v1 = sub_100231248();
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = *(a1 + 64);
    v2 = *(a1 + 72);
    v4 = *(a1 + 32);
    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    sub_1000CE6B8(&unk_10190D5C0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1011E7D60;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1000DA61C();
    *(v7 + 32) = v6;
    *(v7 + 40) = v5;
    *(v7 + 96) = &type metadata for Float;
    *(v7 + 104) = &protocol witness table for Float;
    *(v7 + 72) = v4;
    *(v7 + 136) = &type metadata for Int;
    *(v7 + 144) = &protocol witness table for Int;
    *(v7 + 112) = v3;
    *(v7 + 176) = &type metadata for Int;
    *(v7 + 184) = &protocol witness table for Int;
    *(v7 + 152) = v2;

    String.init(format:_:)();
    v1 = sub_100231248();
    v8 = String._bridgeToObjectiveC()();
  }

  [v1 setText:v8];
}

uint64_t sub_100231854@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps35GEOAPCurrentUploadTableViewCellView_currentConfig);
  a1[3] = type metadata accessor for GEOAPCurrentUploadTableViewCellConfiguration();
  a1[4] = sub_100232140(&qword_101914918, type metadata accessor for GEOAPCurrentUploadTableViewCellConfiguration);
  *a1 = v3;
}

void (*sub_1002318DC(uint64_t **a1))(void *a1)
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
  v2[4] = sub_10023109C(v2);
  return sub_10023194C;
}

void sub_10023194C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100231998()
{

  return swift_deallocClassInstance();
}

id sub_100231A08()
{
  v1 = *v0;
  v2 = type metadata accessor for GEOAPCurrentUploadTableViewCellView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC4Maps35GEOAPCurrentUploadTableViewCellView____lazy_storage___mainLabel] = 0;
  *&v3[OBJC_IVAR____TtC4Maps35GEOAPCurrentUploadTableViewCellView_currentConfig] = v1;
  v6.receiver = v3;
  v6.super_class = v2;

  v4 = objc_msgSendSuper2(&v6, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1002312E0();
  sub_100231618(v1);

  sub_100232140(&qword_101914920, type metadata accessor for GEOAPCurrentUploadTableViewCellView);
  return v4;
}

void sub_100231C94()
{
  v1 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for GEOAPCurrentUploadDebugController();
  v17.receiver = v0;
  v17.super_class = v4;
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v5 = [v0 tableView];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for GEOAPCurrentUploadTableViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = String._bridgeToObjectiveC()();
    [v6 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v8];

    v9 = *&v0[OBJC_IVAR____TtC4Maps33GEOAPCurrentUploadDebugController_dataModel];
    v10 = [v0 tableView];
    if (v10)
    {
      v11 = v10;
      objc_allocWithZone(sub_1000CE6B8(&qword_101914928));

      v12 = v11;
      v13 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
      v14 = *(v9 + OBJC_IVAR____TtC4Maps27GEOAPCurrentUploadDataModel_dataSource);
      *(v9 + OBJC_IVAR____TtC4Maps27GEOAPCurrentUploadDataModel_dataSource) = v13;

      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v9;

      sub_10020AAE4(0, 0, v3, &unk_1011F36D8, v16);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100231F44(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_100231FB0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100231FD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_10023201C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100232094()
{
  result = qword_101914908;
  if (!qword_101914908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914908);
  }

  return result;
}

unint64_t sub_1002320EC()
{
  result = qword_101914910;
  if (!qword_101914910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914910);
  }

  return result;
}

uint64_t sub_100232140(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10023218C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003AC4C;

  return sub_1002309B8();
}

uint64_t sub_100232278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, int a8)
{
  v17 = *(type metadata accessor for Date() - 8);
  v18 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  return sub_10022FF94(a1, a2, a3, a4, a5, a6, a7, a8, v8 + v18, *(v8 + ((*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100232374(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10190EBD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002323DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190EBD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002325D4()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10195FCF8);
  sub_100021540(v0, qword_10195FCF8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10023265C()
{
  if (qword_1019065D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100021540(v0, qword_10195FCF8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Configuring Tips", v3, 2u);
  }

  return static Tips.configure(_:)();
}

uint64_t sub_100232870(const char *a1, uint64_t (*a2)(void))
{
  if (qword_1019065D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_10195FCF8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a1, v6, 2u);
  }

  return a2();
}

unint64_t sub_100232C00@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100233F50(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_100232E24()
{
  result = *(v0 + OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_rapRecord);
  if (result)
  {
    result = [result rapResponse];
    if (result)
    {
      v2 = result;
      v3 = [result displayDetails];

      if (v3)
      {
        if ([v3 hasOutreachLink])
        {
          result = [v3 outreachLink];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v4 = result;
          v5 = [result url];

          if (v5)
          {
            v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

            return v6;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

id sub_100232F34(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100232FB4()
{
  v1 = OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_rapRecord;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_rapRecord);
  if (v2)
  {
    v3 = [v2 rapResponse];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 displayDetails];

      if (v5)
      {
        if (![v5 hasOutreachLink] || (v6 = *(v0 + v1)) == 0 || (v7 = objc_msgSend(v6, "rapResponse")) == 0)
        {
LABEL_12:

          return;
        }

        v8 = v7;
        v9 = [v7 displayDetails];

        if (v9)
        {
          v10 = [v9 outreachLink];

          if (v10)
          {
            v11 = [v10 text];

            if (v11)
            {
              v12 = [v11 stringValue];

              if (v12)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                return;
              }

              goto LABEL_12;
            }

LABEL_16:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_16;
      }
    }
  }
}

id sub_100233124(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v19 = objc_allocWithZone(v11);
  v20 = OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_rapRecord;
  *&v19[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_rapRecord] = 0;
  *&v19[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_descriptionInfo] = a1;
  *&v19[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_displayStyle] = a2;
  *&v19[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_mapType] = a3;
  *&v19[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_mapRegion] = a4;
  *&v19[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_mapItems] = a5;
  v21 = &v19[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_reportId];
  *v21 = a6;
  v21[1] = a7;
  *&v19[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_updatedLabel] = a8;
  v19[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_hasButton] = a9;
  *&v19[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_button] = a10;
  *&v19[v20] = a11;
  v24.receiver = v19;
  v24.super_class = v11;
  return objc_msgSendSuper2(&v24, "init");
}

id sub_10023323C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v12 = OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_rapRecord;
  *&v11[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_rapRecord] = 0;
  *&v11[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_descriptionInfo] = a1;
  *&v11[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_displayStyle] = a2;
  *&v11[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_mapType] = a3;
  *&v11[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_mapRegion] = a4;
  *&v11[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_mapItems] = a5;
  v13 = &v11[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_reportId];
  *v13 = a6;
  v13[1] = a7;
  *&v11[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_updatedLabel] = a8;
  v11[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_hasButton] = a9;
  *&v11[OBJC_IVAR____TtC4Maps31RAPNotificationDetailsViewModel_button] = a10;
  *&v11[v12] = a11;
  v15.receiver = v11;
  v15.super_class = type metadata accessor for RAPNotificationDetailsViewModel();
  return objc_msgSendSuper2(&v15, "init");
}

id sub_100233430(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100233550(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 rapResponse];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [v9 displayDetails];
  if (!v11)
  {
LABEL_7:

LABEL_8:
    if (qword_1019065E0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100021540(v17, qword_101914968);
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to build RAPNotificationDetailsViewModel from rapRecord:%@", v21, 0xCu);
      sub_1000DCD10(v22);

      v18 = v19;
      v19 = v23;
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v12 = v11;
  v13 = sub_1002344D8(a1);
  if (!v13)
  {
LABEL_6:

    v10 = v12;
    goto LABEL_7;
  }

  v14 = v13;
  v47 = v5;
  v15 = sub_1002347C0(a1);
  if (v16)
  {

    v10 = v12;
    v12 = v14;
    goto LABEL_6;
  }

  v25 = v15;
  v52 = _swiftEmptyArrayStorage;
  v26 = [v12 placesCount];
  v43 = v25;
  v44 = v14;
  v45 = v12;
  if (v26)
  {
    result = [v12 places];
    if (!result)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v27 = result;
    v42 = v2;
    NSArray.makeIterator()();

    NSFastEnumerationIterator.next()();
    if (v51)
    {
      v46 = _swiftEmptyArrayStorage;
      v28 = &unk_101914A48;
      while (1)
      {
        sub_1000D2BE0(&v50, &v49);
        sub_100014C84(0, v28);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_18;
        }

        v29 = v28;
        v30 = v48;
        v31 = [objc_opt_self() _itemWithGeoMapItem:{objc_msgSend(v48, "geoMapItem")}];
        swift_unknownObjectRelease();
        if (v31)
        {
          v32 = v31;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v46 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v46 = v52;
          NSFastEnumerationIterator.next()();
          v28 = v29;
          if (!v51)
          {
            goto LABEL_27;
          }
        }

        else
        {

LABEL_18:
          NSFastEnumerationIterator.next()();
          if (!v51)
          {
            goto LABEL_27;
          }
        }
      }
    }

    v46 = _swiftEmptyArrayStorage;
LABEL_27:
    (*(v47 + 8))(v8, v4);
    v2 = v42;
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
  }

  v33 = v45;
  v34 = [v45 mapType];
  result = [v33 displayRegion];
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v35 = result;
  sub_100014C84(0, &unk_101918390);
  v36.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v37 = [a1 reportID];
  if (!v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
  }

  v38 = a1;
  LOBYTE(v41) = 0;
  v39 = v44;
  v40 = [v2 initWithDescriptionInfo:v44 displayStyle:v43 mapType:v34 mapRegion:v35 mapItems:v36.super.isa reportId:v37 updatedLabel:0 hasButton:v41 button:0 rapRecord:v38];

  return v40;
}

void sub_100233AF8(void *a1)
{
  v4 = sub_1002348DC(a1);
  v5 = [a1 details];
  if (!v5)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v5;
  v7 = [v5 displayStyle];

  if (v7 - 1 > 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1011F3818[v7 - 1];
  }

  v9 = [objc_opt_self() sharedService];
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v9;
  v11 = [a1 details];
  if (!v11)
  {
LABEL_19:
    __break(1u);
LABEL_20:

    __break(1u);
    goto LABEL_21;
  }

  v12 = v11;
  isa = [v10 mapItemsForPlacesInDetails:v11];

  if (!isa)
  {
    sub_100014C84(0, &unk_101918390);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v13 = [a1 details];
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  v15 = [v13 mapType];

  v16 = [a1 details];
  if (!v16)
  {
LABEL_21:

    __break(1u);
    goto LABEL_22;
  }

  v17 = v16;
  v18 = [v16 displayRegion];

  if (!v18)
  {
LABEL_22:

    __break(1u);
    goto LABEL_23;
  }

  v19 = [a1 problemId];
  if (!v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = v19;
  v34 = v15;
  v21 = [a1 details];
  if (!v21)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v22 = v21;
  v33 = v8;
  v23 = v1;
  v24 = v4;
  v25 = [v21 label];

  v26 = [a1 details];
  if (!v26)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = v26;
  v28 = [v26 hasButton];

  v29 = [a1 details];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 button];

    LOBYTE(v32) = v28;
    [v23 initWithDescriptionInfo:v24 displayStyle:v33 mapType:v34 mapRegion:v18 mapItems:isa reportId:v20 updatedLabel:v25 hasButton:v32 button:v31 rapRecord:0];

    return;
  }

LABEL_26:
  __break(1u);
}

unint64_t sub_100233E54()
{
  result = qword_101914A40;
  if (!qword_101914A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914A40);
  }

  return result;
}

uint64_t sub_100233EA8()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_101914968);
  sub_100021540(v0, qword_101914968);
  type metadata accessor for RAPNotificationDetailsViewModel();
  sub_1000CE6B8(&qword_101914A50);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100233F50(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100233F60(void *a1)
{
  v1 = [a1 rapResponse];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rapStateIcon];
    if (v3 <= 2)
    {
      if (v3 == 1)
      {
LABEL_6:

        return 0xD00000000000001BLL;
      }

      if (v3 == 2)
      {

        return 0x72616D6B63656863;
      }
    }

    else
    {
      if (v3 == 3)
      {

        return 0xD000000000000018;
      }

      if (v3 == 4 || v3 == 5)
      {
        goto LABEL_6;
      }
    }

    if (qword_1019065E0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100021540(v9, qword_101914968);
    v6 = v2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = [v6 rapStateIcon];

      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to get SymbolImageName with rapStateIcon: %d", v12, 8u);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1019065E0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100021540(v5, qword_101914968);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to get SymbolImageName", v8, 2u);
    }
  }

  return 0;
}

id sub_100234204(void *a1)
{
  v1 = [a1 rapResponse];
  if (!v1)
  {
    if (qword_1019065E0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100021540(v5, qword_101914968);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to get SymbolImageBackgroundColor", v8, 2u);
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = [v1 rapStateIcon];
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v4 = [objc_opt_self() systemGreenColor];
        goto LABEL_15;
      }

      goto LABEL_16;
    }

LABEL_14:
    v4 = [objc_opt_self() systemGrayColor];
    goto LABEL_15;
  }

  if (v3 == 3 || v3 == 4)
  {
    goto LABEL_14;
  }

  if (v3 == 5)
  {
    v4 = [objc_opt_self() systemYellowColor];
LABEL_15:
    v9 = v4;

    return v9;
  }

LABEL_16:
  if (qword_1019065E0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100021540(v11, qword_101914968);
  v6 = v2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = [v6 rapStateIcon];

    _os_log_impl(&_mh_execute_header, v12, v13, "Failed to get SymbolImageBackgroundColor with rapStateIcon: %d", v14, 8u);
  }

  else
  {
  }

LABEL_21:

  return 0;
}

id sub_1002344D8(void *a1)
{
  v2 = [a1 rapResponse];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 displayDetails];

    if (v4)
    {
      if (([v4 hasTitle] & 1) != 0 || objc_msgSend(v4, "hasBody"))
      {
        v5 = sub_100233F60(a1);
        v7 = v6;
        v8 = sub_100234204(a1);
        if (![v4 hasTitle])
        {
          goto LABEL_9;
        }

        result = [v4 title];
        if (!result)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        v10 = result;
        v11 = [result stringValue];

        if (v11)
        {
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;
        }

        else
        {
LABEL_9:
          v12 = 0;
          v14 = 0;
        }

        if (![v4 hasBody])
        {
          goto LABEL_14;
        }

        result = [v4 body];
        if (result)
        {
          v15 = result;
          v16 = [result stringValue];

          if (v16)
          {
            v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v19 = v18;

LABEL_15:
            v20 = type metadata accessor for RAPNotificationDetailsViewModel.DescriptionInfo();
            v21 = objc_allocWithZone(v20);
            v22 = &v21[OBJC_IVAR___RAPNotificationDetailsViewModelDescriptionInfo_imageName];
            *v22 = v5;
            v22[1] = v7;
            *&v21[OBJC_IVAR___RAPNotificationDetailsViewModelDescriptionInfo_imageBackgroundColor] = v8;
            v23 = &v21[OBJC_IVAR___RAPNotificationDetailsViewModelDescriptionInfo_titleText];
            *v23 = v12;
            v23[1] = v14;
            v24 = &v21[OBJC_IVAR___RAPNotificationDetailsViewModelDescriptionInfo_descriptionText];
            *v24 = v17;
            v24[1] = v19;
            v31.receiver = v21;
            v31.super_class = v20;
            v25 = v8;
            v26 = objc_msgSendSuper2(&v31, "init");

            return v26;
          }

LABEL_14:
          v17 = 0;
          v19 = 0;
          goto LABEL_15;
        }

        goto LABEL_23;
      }
    }
  }

  if (qword_1019065E0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100021540(v27, qword_101914968);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Failed to get DescriptionInfo", v30, 2u);
  }

  return 0;
}

uint64_t sub_1002347C0(void *a1)
{
  result = [a1 rapResponse];
  if (result)
  {
    v2 = result;
    v3 = [result displayDetails];

    if (v3)
    {
      v4 = [v3 displayStyle];

      if (v4 == 1)
      {
        return 1;
      }

      if (v4 == 2)
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

id sub_100234860(void *a1)
{
  v1 = [a1 problemState];
  v2 = objc_opt_self();
  v3 = &selRef_systemYellowColor;
  v4 = &selRef_systemGreenColor;
  if (v1 != 2)
  {
    v4 = &selRef_systemGrayColor;
  }

  if (v1 != 5)
  {
    v3 = v4;
  }

  v5 = [v2 *v3];

  return v5;
}

id sub_1002348DC(void *a1)
{
  v2 = [a1 problemState];
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = 0x80000001012264A0;
      v3 = 0xD000000000000018;
      goto LABEL_13;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        v3 = 0xD00000000000001BLL;
        v4 = "hourglass.bottomhalf.filled";
LABEL_10:
        v5 = (v4 - 32) | 0x8000000000000000;
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_9:
    v3 = 0xD00000000000001BLL;
    v4 = "exclamationmark.bubble.fill";
    goto LABEL_10;
  }

  if (v2 == 1)
  {
    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v5 = 0xE90000000000006BLL;
    v3 = 0x72616D6B63656863;
    goto LABEL_13;
  }

LABEL_12:
  v3 = 0;
  v5 = 0xE000000000000000;
LABEL_13:
  v6 = sub_100234860(a1);
  result = [a1 details];
  if (!result)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = [result localizedTitle];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  result = [a1 details];
  if (!result)
  {
    goto LABEL_23;
  }

  v13 = result;
  v14 = [result localizedDescription];

  if (v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = type metadata accessor for RAPNotificationDetailsViewModel.DescriptionInfo();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR___RAPNotificationDetailsViewModelDescriptionInfo_imageName];
  *v20 = v3;
  v20[1] = v5;
  *&v19[OBJC_IVAR___RAPNotificationDetailsViewModelDescriptionInfo_imageBackgroundColor] = v6;
  v21 = &v19[OBJC_IVAR___RAPNotificationDetailsViewModelDescriptionInfo_titleText];
  *v21 = v10;
  v21[1] = v12;
  v22 = &v19[OBJC_IVAR___RAPNotificationDetailsViewModelDescriptionInfo_descriptionText];
  *v22 = v15;
  v22[1] = v17;
  v23.receiver = v19;
  v23.super_class = v18;
  return objc_msgSendSuper2(&v23, "init");
}

void sub_100234B64(void *a1)
{
  v3 = type metadata accessor for GridButtonViewModel.ButtonProminence();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GridButtonViewModel.ButtonMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC4Maps32MapsGridButtonCollectionViewCell_viewModel);
  *(v1 + OBJC_IVAR____TtC4Maps32MapsGridButtonCollectionViewCell_viewModel) = a1;
  v12 = a1;

  if (a1)
  {
    v13 = *&v12[OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_actionStyle];
    v15 = v3;
    if (v13 == 1)
    {
      static Color.red.getter();
    }

    else
    {
      static Color.blue.getter();
    }

    dispatch thunk of GridButtonViewModel.title.setter();

    dispatch thunk of GridButtonViewModel.icon.setter();
    (*(v8 + 104))(v10, enum case for GridButtonViewModel.ButtonMetrics.large(_:), v7);
    dispatch thunk of GridButtonViewModel.metrics.setter();
    (*(v4 + 104))(v6, enum case for GridButtonViewModel.ButtonProminence.secondary(_:), v15);
    dispatch thunk of GridButtonViewModel.style.setter();
    dispatch thunk of GridButtonViewModel.color.setter();
  }
}

id sub_100234DA8(double a1, double a2, double a3, double a4)
{
  v9 = sub_1000CE6B8(&qword_101914AD8);
  v10 = *(v9 - 8);
  v34 = v9;
  v35 = v10;
  __chkstk_darwin(v9);
  v33 = &v32 - v11;
  v12 = type metadata accessor for GridButtonViewModel.ButtonProminence();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GridButtonViewModel.ButtonMetrics();
  v21 = __chkstk_darwin(v20);
  *(v4 + OBJC_IVAR____TtC4Maps32MapsGridButtonCollectionViewCell_viewModel) = 0;
  (*(v23 + 104))(&v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for GridButtonViewModel.ButtonMetrics.large(_:), v21);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v17 + 8))(v19, v16);
  (*(v13 + 104))(v15, enum case for GridButtonViewModel.ButtonProminence.secondary(_:), v12);
  static Color.blue.getter();
  type metadata accessor for GridButtonViewModel();
  swift_allocObject();
  v24 = GridButtonViewModel.init(id:title:subtitle:icon:metrics:style:compact:color:progress:leadingIcon:lineLimit:)();
  v25 = v32;
  *&v32[OBJC_IVAR____TtC4Maps32MapsGridButtonCollectionViewCell_internalViewModel] = v24;
  v26 = type metadata accessor for MapsGridButtonCollectionViewCell();
  v39.receiver = v25;
  v39.super_class = v26;

  v27 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v36 = v24;
  v37 = v27;
  type metadata accessor for GridButton();
  sub_100235950();
  v28 = v27;
  v29 = v33;
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v30 = v34;
  v38[3] = v34;
  v38[4] = sub_1002359A8();
  sub_10001A848(v38);
  UIHostingConfiguration.margins(_:_:)();
  (*(v35 + 8))(v29, v30);
  UICollectionViewCell.contentConfiguration.setter();
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v28;
}

uint64_t sub_100235210()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();

  return GridButton.init(model:tapHandler:)();
}

void sub_100235298()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC4Maps32MapsGridButtonCollectionViewCell_viewModel];
    if (v1)
    {
      v2 = *&v1[OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_actionBlock];
      if (v2)
      {
        v3 = Strong;
        v4 = v1;
        v2();

        Strong = v3;
      }
    }
  }
}

id MapsGridButtonCollectionViewCellModel.__allocating_init(titleString:symbolName:actionStyle:actionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_titleString];
  *v16 = a1;
  *(v16 + 1) = a2;
  v17 = &v15[OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_symbolName];
  *v17 = a3;
  *(v17 + 1) = a4;
  *&v15[OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_actionStyle] = a5;
  v18 = &v15[OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_actionBlock];
  *v18 = a6;
  *(v18 + 1) = a7;
  v20.receiver = v15;
  v20.super_class = v7;
  return objc_msgSendSuper2(&v20, "init");
}

id MapsGridButtonCollectionViewCellModel.init(titleString:symbolName:actionStyle:actionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = &v7[OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_titleString];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v7[OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_symbolName];
  *v9 = a3;
  *(v9 + 1) = a4;
  *&v7[OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_actionStyle] = a5;
  v10 = &v7[OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_actionBlock];
  *v10 = a6;
  *(v10 + 1) = a7;
  v12.receiver = v7;
  v12.super_class = type metadata accessor for MapsGridButtonCollectionViewCellModel();
  return objc_msgSendSuper2(&v12, "init");
}

id sub_100235884(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100235950()
{
  result = qword_10190A3F8;
  if (!qword_10190A3F8)
  {
    type metadata accessor for GridButton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A3F8);
  }

  return result;
}

unint64_t sub_1002359A8()
{
  result = qword_101914AE0;
  if (!qword_101914AE0)
  {
    sub_1000D6664(&qword_101914AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101914AE0);
  }

  return result;
}

uint64_t *sub_100235A24@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100235A58(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v8 = 0x80000001012268E0;
      v2 = 0x65636E6174736944;
      v3 = 0xD00000000000001CLL;
      v4 = 0x80000001012268C0;
      v5 = 0xD000000000000034;
      v6 = 0xE800000000000000;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v8 = 0x8000000101226880;
      v4 = 0x8000000101226860;
      v5 = 0xD000000000000030;
      v3 = 0xD000000000000018;
      v2 = 1701667150;
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_1019600D8;
    v8 = 0x8000000101226940;
    v2 = 0x6464412065746144;
    v3 = 0xD00000000000001DLL;
    v4 = 0x8000000101226920;
    v5 = 0xD000000000000036;
    v6 = 0xEA00000000006465;
  }

  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v1, *&v2, *&v5)._countAndFlagsBits;
}

uint64_t sub_100235E24(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100235F58()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_100236080()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC4Maps23UserGuideViewController_updateContentInjection);
    if (v2)
    {
      sub_1000CD9D4(*(Strong + OBJC_IVAR____TtC4Maps23UserGuideViewController_updateContentInjection));
      v3 = v1;
      v2(v1);
      sub_1000588AC(v2);
    }
  }
}

uint64_t sub_10023618C()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewDidLoad");
  [*&v0[OBJC_IVAR____TtC4Maps23UserGuideViewController_collectionHandler] updateSortingByDistanceIfNeeded];
  sub_1000CE6B8(&unk_10190CA20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E1D60;
  *(v1 + 32) = type metadata accessor for UITraitVerticalSizeClass();
  *(v1 + 40) = &protocol witness table for UITraitVerticalSizeClass;
  *(v1 + 48) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v1 + 56) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  sub_1002368D0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_10023AD4C(&qword_10190A158, type metadata accessor for UserGuideViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}