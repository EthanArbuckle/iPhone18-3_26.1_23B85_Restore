id sub_100188E8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BaseTodayBrickCollectionViewCell()
{
  result = qword_100977358;
  if (!qword_100977358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100188FC4()
{
  sub_1001890DC(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_1001890DC(319, &qword_100977370, &type metadata accessor for PageGrid);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001890DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100189130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1001891B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &unk_1009731E0);
}

uint64_t sub_10018921C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &unk_1009731E0);
  return swift_endAccess();
}

double sub_10018936C()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SmallStoryCardLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ShelfLayoutContext.traitCollection.getter();
  sub_100187A84(v8, v7);

  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v1 + 8))(v3, v0);
  v9 = ShelfLayoutContext.traitCollection.getter();
  static SmallStoryCardLayout.estimatedMeasurements(fitting:using:with:)();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  return v11;
}

id sub_10018957C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel];
  TodayCard.collapsedHeading.getter();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  PageGrid.containerWidth.getter();
  v6 = v5;
  v7 = [v1 traitCollection];
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v18.receiver = v9;
  v18.super_class = v8;
  v11 = objc_msgSendSuper2(&v18, "init");
  v12 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageTraits;
  *&v1[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageTraits] = v11;
  v13 = v11;
  swift_unknownObjectRelease();
  if (*&v1[v12])
  {
    [v1 setNeedsLayout];
  }

  v14 = *&v1[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel];
  TodayCard.inlineDescription.getter();
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  return [v1 setNeedsLayout];
}

void sub_100189718()
{
  v1 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  v9 = type metadata accessor for ItemLayoutContext();
  v10 = *(*(v9 - 8) + 56);
  v32 = v0;
  v10(v0 + v8, 1, 1, v9);
  v29 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel;
  if (qword_10096E2A0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D1760);
  v13 = *(v11 - 8);
  v28 = *(v13 + 16);
  v28(v7, v12, v11);
  v14 = *(v13 + 56);
  v14(v7, 0, 1, v11);
  v15 = enum case for DirectionalTextAlignment.leading(_:);
  v16 = v2 + 104;
  v17 = *(v2 + 104);
  v30 = v16;
  v31 = v1;
  v17(v4, enum case for DirectionalTextAlignment.leading(_:), v1);
  v18 = type metadata accessor for DynamicTypeLabel();
  v19 = objc_allocWithZone(v18);
  *(v32 + v29) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel;
  if (qword_10096E2A8 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v11, qword_1009D1778);
  v28(v7, v20, v11);
  v14(v7, 0, 1, v11);
  v17(v4, v15, v31);
  v21 = objc_allocWithZone(v18);
  v22 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v23 = v32;
  *(v32 + v29) = v22;
  v24 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView;
  *(v23 + v24) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageGrid;
  v26 = type metadata accessor for PageGrid();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  *(v23 + OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageTraits) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100189B2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100189BB0()
{
  v0 = type metadata accessor for AppPromotionType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v13 - v5;
  type metadata accessor for AppPromotion();
  sub_10018A15C(&qword_1009744D8, &type metadata accessor for AppPromotion);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v13[1])
  {
    return 0;
  }

  AppPromotion.promotionType.getter();
  (*(v1 + 16))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for AppPromotionType.appEvent(_:))
  {
    (*(v1 + 8))(v6, v0);

    v8 = type metadata accessor for AppEventCollectionViewCell();
    v9 = &unk_100977450;
    v10 = type metadata accessor for AppEventCollectionViewCell;
  }

  else
  {
    if (v7 != enum case for AppPromotionType.contingentOffer(_:) && v7 != enum case for AppPromotionType.offerItem(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v1 + 8))(v6, v0);

    v8 = type metadata accessor for AppPromotionOfferCollectionViewCell();
    v9 = &unk_100977448;
    v10 = type metadata accessor for AppPromotionOfferCollectionViewCell;
  }

  sub_10018A15C(v9, v10);
  return v8;
}

uint64_t sub_100189E38()
{
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v15 - v5;
  v7 = sub_10002849C(&unk_1009731F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Shelf.ContentType.appPromotion(_:), v0);
  sub_10018A15C(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v15[2] == v15[0] && v15[3] == v15[1])
  {
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);

    return sub_100189BB0();
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);

  if (v12)
  {
    return sub_100189BB0();
  }

  return 0;
}

uint64_t sub_10018A15C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10018A1A4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v5 = 0xD000000000000023;
      v6 = 0xD000000000000033;
      if (a1 == 10)
      {
        v6 = 0xD00000000000002BLL;
      }

      v7 = a1 == 9;
    }

    else
    {
      v5 = 0xD000000000000014;
      v6 = 0xD00000000000001BLL;
      if (a1 == 7)
      {
        v6 = 0xD00000000000001ELL;
      }

      v7 = a1 == 6;
    }

    if (v7)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696D61466E497369;
    v2 = 0xD000000000000011;
    v3 = 0x74616572436E6163;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000016;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10018A3C8()
{
  v0 = sub_10002849C(&qword_100977558);
  sub_100005644(v0, qword_100977480);
  sub_1000056A8(v0, qword_100977480);
  sub_10002849C(&unk_100977570);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10018A454()
{
  v0 = sub_10002849C(&qword_100977550);
  sub_100005644(v0, qword_100977498);
  sub_1000056A8(v0, qword_100977498);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10018A4CC()
{
  v0 = sub_10002849C(&qword_100979740);
  sub_100005644(v0, qword_1009774B0);
  sub_1000056A8(v0, qword_1009774B0);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10018A54C()
{
  v0 = sub_10002849C(&qword_100979740);
  sub_100005644(v0, qword_1009774C8);
  sub_1000056A8(v0, qword_1009774C8);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10018A5C4()
{
  v0 = sub_10002849C(&qword_100979740);
  sub_100005644(v0, qword_1009774E0);
  sub_1000056A8(v0, qword_1009774E0);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10018A63C()
{
  v0 = sub_10002849C(&qword_100977550);
  sub_100005644(v0, qword_1009774F8);
  sub_1000056A8(v0, qword_1009774F8);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10018A6B4()
{
  v0 = sub_10002849C(&qword_100977550);
  sub_100005644(v0, qword_100977510);
  sub_1000056A8(v0, qword_100977510);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10018A72C()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10002849C(&qword_100979740);
  v128 = *(v0 - 8);
  __chkstk_darwin(v0);
  v122 = v117 - v1;
  v131 = type metadata accessor for UUID();
  v2 = *(v131 - 8);
  __chkstk_darwin(v131);
  v4 = v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100977550);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v117 - v7;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096D1B0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v9 = sub_10002849C(&qword_100977558);
    sub_1000056A8(v9, qword_100977480);
    v10 = Preferences.subscript.getter();
    v12 = v11;

    v13 = swift_getObjectType();
    if (qword_10096D1E0 != -1)
    {
      swift_once();
    }

    v123 = v0;
    v126 = v4;
    v132 = v2;
    v14 = sub_1000056A8(v5, qword_100977510);
    v15 = *(v6 + 16);
    v125 = v5;
    v15(v8, v14, v5);
    v136 = xmmword_1007BC8A0;
    v124 = v13;
    Preferences.subscript.setter();
    *&v136 = static Locale.availableIdentifiers.getter();

    sub_10016FC88(&v136);
    v117[5] = v14;
    v5 = 0xED00006449656C61;

    v16 = sub_1002A5878(v136);

    *&v136 = &off_1008AFBB8;
    sub_1003949BC(v16);
    v6 = v136;
    v2 = *(v136 + 16);
    v8 = v131;
    if (!v2)
    {
      break;
    }

    v134 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 0;
    while (v4 < *(v6 + 16))
    {
      v136 = *(v6 + 16 * v4 + 32);

      v0 = 0xED00006449656C61;
      v8 = v10;
      sub_10018BA48(&v136, v10, v12, ObjectType, v139);

      ++v4;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v2 == v4)
      {

        v17 = v134;
        v8 = v131;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_10:
  v127 = v12;
  v121 = sub_10002849C(&qword_100973210);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_1007BC8B0;
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  *(v18 + 24) = v12;
  strcpy((v18 + 32), "unsetLocaleId");
  *(v18 + 46) = -4864;
  *(v18 + 48) = ObjectType;
  v117[4] = type metadata accessor for MenuDebugSetting();
  v19 = swift_allocObject();
  v19[7] = 0xD000000000000011;
  v19[8] = 0x8000000100804C30;
  v19[9] = v17;
  v19[10] = sub_10018C14C;
  v19[11] = v18;
  swift_unknownObjectRetain();

  v20 = v126;
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  v24 = *(v132 + 1);
  v132 += 8;
  v130 = v24;
  v24(v20, v8);
  *&v136 = v21;
  *(&v136 + 1) = v23;
  AnyHashable.init<A>(_:)();
  if (qword_10096D1B8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v125, qword_100977498);
  Preferences.subscript.getter();
  v26 = *(&v136 + 1);
  v25 = v136;
  if (!*(&v136 + 1))
  {
    v25 = 0x636F4C7465736E75;
    v26 = 0xED00006449656C61;
  }

  v134 = v25;
  v135 = v26;
  v27 = AnyHashable.init<A>(_:)();
  __chkstk_darwin(v27);
  v117[-2] = &v136;

  sub_10070DDEC(sub_1001587FC, &v117[-4], v17);
  v117[3] = 0;

  sub_1000C36CC(&v136);
  *(v129 + 32) = v19;
  if (qword_10096D1C0 != -1)
  {
    swift_once();
  }

  v28 = v123;
  v29 = sub_1000056A8(v123, qword_1009774B0);
  v30 = v128;
  v31 = v128 + 16;
  v32 = *(v128 + 16);
  v33 = v122;
  v32(v122, v29, v28);
  v34 = type metadata accessor for BoolPreferencesDebugSetting();
  v35 = swift_allocObject();
  strcpy((v35 + 56), "Screamer Mode");
  *(v35 + 70) = -4864;
  *(v35 + 72) = 0xD000000000000025;
  *(v35 + 80) = 0x8000000100804C50;
  *(v35 + 88) = 0;
  v120 = v31;
  v119 = v32;
  v32((v35 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key), v33, v28);
  v36 = (v35 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  v37 = v127;
  *v36 = v10;
  v36[1] = v37;
  swift_unknownObjectRetain();
  v38 = v126;
  UUID.init()();
  v39 = UUID.uuidString.getter();
  v41 = v40;
  v130(v38, v131);
  *&v136 = v39;
  *(&v136 + 1) = v41;
  v42 = v28;
  AnyHashable.init<A>(_:)();
  v43 = *(v30 + 8);
  v128 = v30 + 8;
  v118 = v43;
  v43(v33, v28);
  *(v129 + 40) = v35;
  if (qword_10096D1C8 != -1)
  {
    swift_once();
  }

  v44 = sub_1000056A8(v28, qword_1009774C8);
  v45 = v119;
  v119(v33, v44, v28);
  v46 = swift_allocObject();
  v117[1] = v34;
  v47 = v33;
  v48 = v46;
  *(v46 + 56) = 0xD000000000000011;
  *(v46 + 64) = 0x8000000100804C80;
  *(v46 + 72) = 0xD00000000000002CLL;
  *(v46 + 80) = 0x8000000100804CA0;
  *(v46 + 88) = 1;
  v45(v46 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v47, v28);
  v49 = (v48 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  v50 = v127;
  *v49 = v10;
  v49[1] = v50;
  swift_unknownObjectRetain();
  UUID.init()();
  v51 = UUID.uuidString.getter();
  v53 = v52;
  v54 = v131;
  v55 = v47;
  v56 = v130;
  v130(v38, v131);
  *&v136 = v51;
  *(&v136 + 1) = v53;
  AnyHashable.init<A>(_:)();
  v118(v55, v42);
  v57 = v129;
  *(v129 + 48) = v48;
  v117[2] = type metadata accessor for InfoDebugSetting();
  v58 = swift_allocObject();
  v58[7] = 0xD000000000000013;
  v58[8] = 0x8000000100804CD0;
  v58[9] = 0xD00000000000001CLL;
  v58[10] = 0x8000000100804CF0;
  UUID.init()();
  v59 = UUID.uuidString.getter();
  v61 = v60;
  v56(v38, v54);
  *&v136 = v59;
  *(&v136 + 1) = v61;
  AnyHashable.init<A>(_:)();
  *(v57 + 56) = v58;
  if (qword_10096D1D0 != -1)
  {
    swift_once();
  }

  v62 = v123;
  v63 = sub_1000056A8(v123, qword_1009774E0);
  v64 = v122;
  v65 = v119;
  v119(v122, v63, v62);
  v66 = swift_allocObject();
  *(v66 + 56) = 0xD000000000000012;
  *(v66 + 64) = 0x8000000100804D10;
  *(v66 + 72) = 0xD000000000000030;
  *(v66 + 80) = 0x8000000100804D30;
  *(v66 + 88) = 0;
  v65(v66 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v64, v62);
  v67 = (v66 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  v68 = v127;
  *v67 = v10;
  v67[1] = v68;
  swift_unknownObjectRetain();
  v69 = v126;
  UUID.init()();
  v70 = UUID.uuidString.getter();
  v72 = v71;
  v130(v69, v131);
  *&v136 = v70;
  *(&v136 + 1) = v72;
  AnyHashable.init<A>(_:)();
  v118(v64, v62);
  *(v129 + 64) = v66;
  v128 = 0x8000000100804D70;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1007B48F0;
  v134 = 1701736302;
  v135 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  v74 = swift_allocObject();
  v74[2] = v10;
  v74[3] = v68;
  v75 = ObjectType;
  v74[4] = ObjectType;
  type metadata accessor for MenuItemDebugSetting();
  v76 = swift_allocObject();
  *(v76 + 72) = 0;
  *(v76 + 56) = 1701736270;
  *(v76 + 64) = 0xE400000000000000;
  *(v76 + 80) = sub_10018C15C;
  *(v76 + 88) = v74;
  v77 = v137;
  *(v76 + 16) = v136;
  *(v76 + 32) = v77;
  *(v76 + 48) = v138;
  *(v73 + 32) = v76;
  v134 = 0x646E616D65446E6FLL;
  v135 = 0xE800000000000000;
  swift_unknownObjectRetain();
  AnyHashable.init<A>(_:)();
  v78 = swift_allocObject();
  v78[2] = v10;
  v78[3] = v68;
  v78[4] = v75;
  v79 = swift_allocObject();
  *(v79 + 72) = 0;
  *(v79 + 56) = 0x6E616D6544206E4FLL;
  *(v79 + 64) = 0xE900000000000064;
  *(v79 + 80) = sub_10018C184;
  *(v79 + 88) = v78;
  v80 = v137;
  *(v79 + 16) = v136;
  *(v79 + 32) = v80;
  *(v79 + 48) = v138;
  *(v73 + 40) = v79;
  v134 = 0x74726174536E6FLL;
  v135 = 0xE700000000000000;
  swift_unknownObjectRetain();
  AnyHashable.init<A>(_:)();
  v81 = swift_allocObject();
  v81[2] = v10;
  v81[3] = v68;
  v81[4] = v75;
  v82 = swift_allocObject();
  *(v82 + 72) = 0;
  *(v82 + 56) = 0x7472617453206E4FLL;
  *(v82 + 64) = 0xE800000000000000;
  *(v82 + 80) = sub_10018C1AC;
  *(v82 + 88) = v81;
  v83 = v137;
  *(v82 + 16) = v136;
  *(v82 + 32) = v83;
  *(v82 + 48) = v138;
  *(v73 + 48) = v82;
  v84 = swift_allocObject();
  v84[2] = v10;
  v84[3] = v68;
  v84[4] = v75;
  v85 = swift_allocObject();
  v86 = v128;
  v85[7] = 0xD00000000000001ALL;
  v85[8] = v86;
  ObjectType = v73;
  v85[9] = v73;
  v85[10] = sub_10018C1D4;
  v85[11] = v84;
  swift_unknownObjectRetain_n();

  UUID.init()();
  v87 = UUID.uuidString.getter();
  v89 = v88;
  v130(v69, v131);
  *&v136 = v87;
  *(&v136 + 1) = v89;
  AnyHashable.init<A>(_:)();
  if (qword_10096D1D8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v125, qword_1009774F8);
  Preferences.subscript.getter();
  v91 = *(&v136 + 1);
  v90 = v136;
  if (!*(&v136 + 1))
  {
    v90 = 0x74726174536E6FLL;
    v91 = 0xE700000000000000;
  }

  v134 = v90;
  v135 = v91;
  v92 = AnyHashable.init<A>(_:)();
  __chkstk_darwin(v92);
  v117[-2] = &v136;
  v93 = ObjectType;

  sub_10070DDEC(sub_10018C38C, &v117[-4], v93);

  sub_1000C36CC(&v136);
  v94 = v129;
  *(v129 + 72) = v85;
  Preferences.subscript.getter();
  v95 = v136;
  v96 = swift_allocObject();
  *(v96 + 56) = 0xD000000000000016;
  *(v96 + 64) = 0x8000000100804D90;
  *(v96 + 72) = v95;

  UUID.init()();
  v97 = UUID.uuidString.getter();
  v99 = v98;
  v100 = v131;
  v101 = v130;
  v130(v69, v131);
  v134 = v97;
  v135 = v99;
  AnyHashable.init<A>(_:)();

  v94[10] = v96;
  type metadata accessor for ActionDebugSetting();
  v102 = swift_allocObject();
  strcpy((v102 + 56), "Apply Settings");
  *(v102 + 71) = -18;
  *(v102 + 72) = 0u;
  *(v102 + 88) = 0u;
  *(v102 + 104) = sub_10018C0C4;
  *(v102 + 112) = 0;
  UUID.init()();
  v103 = UUID.uuidString.getter();
  v105 = v104;
  v101(v69, v100);
  *&v136 = v103;
  *(&v136 + 1) = v105;
  AnyHashable.init<A>(_:)();
  v94[11] = v102;
  v106 = swift_allocObject();
  strcpy((v106 + 56), "Reset Settings");
  *(v106 + 71) = -18;
  *(v106 + 72) = 0u;
  *(v106 + 88) = 0u;
  *(v106 + 104) = sub_10018C1E0;
  *(v106 + 112) = 0;
  UUID.init()();
  v107 = UUID.uuidString.getter();
  v109 = v108;
  v101(v69, v100);
  *&v136 = v107;
  *(&v136 + 1) = v109;
  AnyHashable.init<A>(_:)();
  v94[12] = v106;
  v110 = v94;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1007B0B70;
  type metadata accessor for DebugSection();
  v112 = swift_allocObject();
  UUID.init()();
  v113 = UUID.uuidString.getter();
  v115 = v114;
  v101(v69, v100);
  v112[2] = v113;
  v112[3] = v115;
  v112[4] = 0;
  v112[5] = 0xE000000000000000;
  v112[6] = v110;
  *(v111 + 32) = v112;
  swift_unknownObjectRelease();
  return v111;
}

uint64_t sub_10018BA48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  if (v9)
  {
    v10 = a1[1];
    v11 = *a1;
  }

  else
  {

    v11 = 0x74655320746F4ELL;
    v10 = 0xE700000000000000;
  }

  AnyHashable.init<A>(_:)();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  type metadata accessor for MenuItemDebugSetting();
  v13 = swift_allocObject();
  *(v13 + 72) = 0;
  *(v13 + 56) = v11;
  *(v13 + 64) = v10;
  *(v13 + 80) = sub_10018C328;
  *(v13 + 88) = v12;
  *(v13 + 16) = v16;
  *(v13 + 32) = v17;
  *(v13 + 48) = v18;
  *a5 = v13;
  swift_bridgeObjectRetain_n();
  return swift_unknownObjectRetain();
}

uint64_t sub_10018BB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100977550);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-1] - v6;
  swift_getObjectType();
  if (a2)
  {
    if (qword_10096D1B8 != -1)
    {
      swift_once();
    }

    v8 = sub_1000056A8(v4, qword_100977498);
    (*(v5 + 16))(v7, v8, v4);
    v13[0] = a1;
    v13[1] = a2;

    return Preferences.subscript.setter();
  }

  else
  {
    if (qword_10096D1B8 != -1)
    {
      swift_once();
    }

    v10 = sub_1000056A8(v4, qword_100977498);
    v13[3] = v4;
    v13[4] = sub_10018C338(&qword_100977568, &qword_100977550);
    v11 = sub_1000056E0(v13);
    (*(v5 + 16))(v11, v10, v4);
    dispatch thunk of Preferences.removeValue(forKey:)();
    return sub_100007000(v13);
  }
}

uint64_t sub_10018BD90()
{
  swift_getObjectType();
  if (qword_10096D1B8 != -1)
  {
    swift_once();
  }

  v0 = sub_10002849C(&qword_100977550);
  sub_1000056A8(v0, qword_100977498);
  Preferences.subscript.getter();
  if (!v2)
  {
  }

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10018BE84(__n128 a1)
{
  v7[0] = a1;
  v1 = sub_10002849C(&qword_100977550);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - v3;
  swift_getObjectType();
  if (qword_10096D1D8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v1, qword_1009774F8);
  (*(v2 + 16))(v4, v5, v1);
  v7[1] = v7[0];
  return Preferences.subscript.setter();
}

uint64_t sub_10018BFD0()
{
  swift_getObjectType();
  if (qword_10096D1D8 != -1)
  {
    swift_once();
  }

  v0 = sub_10002849C(&qword_100977550);
  sub_1000056A8(v0, qword_1009774F8);
  Preferences.subscript.getter();
  return AnyHashable.init<A>(_:)();
}

void sub_10018C0C4()
{
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 notify];
}

void sub_10018C1E0()
{
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096D1B0 != -1)
  {
    swift_once();
  }

  v0 = sub_10002849C(&qword_100977558);
  v1 = sub_1000056A8(v0, qword_100977480);
  v4[3] = v0;
  v4[4] = sub_10018C338(&qword_100977560, &qword_100977558);
  v2 = sub_1000056E0(v4);
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  LocalPreferences.removeValue(forKey:)();

  sub_100007000(v4);
  v3 = [objc_opt_self() sharedCoordinator];
  [v3 notify];
}

uint64_t sub_10018C338(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10002D1A8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

UIColor sub_10018C3A4()
{
  sub_100028BB8();
  v0 = objc_opt_self();
  result.super.isa = UIColor.init(light:dark:)([v0 systemBackgroundColor], objc_msgSend(v0, "secondarySystemBackgroundColor")).super.isa;
  qword_100977580 = result.super.isa;
  return result;
}

id sub_10018C484()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&unk_1009731D0);
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v24 - v6;
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "viewDidLoad", v5);
  v8 = v1[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_useCardStyling];
  v25 = v7;
  if (v8 == 1)
  {
    result = [v1 view];
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v10 = result;
    v11 = [result layer];

    [v11 setCornerRadius:18.0];
    result = [v1 view];
    if (!result)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = result;
    if (qword_10096D1E8 != -1)
    {
      swift_once();
    }

    [v12 setBackgroundColor:qword_100977580];
LABEL_12:
    v17 = v4;

    result = [v1 view];
    if (result)
    {
      v18 = result;
      v19 = *&v1[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_scrollView];
      [result addSubview:v19];

      [v19 setDelegate:v1];
      [v19 setAlwaysBounceVertical:1];
      v20 = *&v1[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_componentView];
      v21 = swift_getObjectType();
      dispatch thunk of ShelfComponentView.applyData(from:asPartOf:)();
      v22 = v25;
      ItemLayoutContext.item.getter();
      ReadOnlyLens.value.getter();
      (*(v17 + 8))(v22, v3);
      v26[3] = v21;
      v26[0] = v20;
      type metadata accessor for ArtworkLoader();
      type metadata accessor for BaseObjectGraph();
      v23 = v20;
      inject<A, B>(_:from:)();
      tryToFetch(artworkFor:into:on:asPartOf:)();

      sub_10002B894(v27, &unk_10097DBE0);
      sub_100007000(v26);
      return [v19 addSubview:v23];
    }

    __break(1u);
    goto LABEL_15;
  }

  v13 = *&v1[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_componentView];
  v14 = [v13 backgroundView];
  result = [v1 view];
  v12 = result;
  if (v14)
  {
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v15 = [v14 backgroundColor];
    [v12 setBackgroundColor:v15];

    goto LABEL_12;
  }

  if (result)
  {
    v16 = [v13 backgroundColor];
    [v12 setBackgroundColor:v16];

    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_10018C8D8()
{
  v57.receiver = v0;
  v57.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v57, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  top = 20.0;
  left = 20.0;
  if ((v0[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_useCardStyling] & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
  }

  result = [v0 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v14 = result;
  [result bounds];

  v15 = sub_10018CC08();
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = result;
  [result bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v58.origin.x = v18;
  v58.origin.y = v20;
  v58.size.width = v22;
  v58.size.height = v24;
  MinX = CGRectGetMinX(v58);
  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = result;
  v26 = left;
  [result bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v59.origin.x = v28;
  v59.origin.y = v30;
  v59.size.width = v32;
  v59.size.height = v34;
  MinY = CGRectGetMinY(v59);
  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = result;
  [result bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v60.origin.x = v38;
  v60.origin.y = v40;
  v60.size.width = v42;
  v60.size.height = v44;
  Width = CGRectGetWidth(v60);
  [*&v0[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_componentView] setFrame:{sub_1000CC354(MinX, MinY, Width, v15, top, v26)}];
  [v1 setContentSize:{Width, v15}];
  [v1 frame];
  Height = CGRectGetHeight(v61);
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v47 = result;
  if (Height < v15)
  {
    v15 = Height;
  }

  [result bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v62.origin.x = v49;
  v62.origin.y = v51;
  v62.size.width = v53;
  v62.size.height = v55;
  return [v0 setPreferredContentSize:{CGRectGetWidth(v62), v15}];
}

double sub_10018CC08()
{
  v1 = type metadata accessor for ShelfLayoutContext();
  v33 = *(v1 - 8);
  __chkstk_darwin(v1);
  *&v32 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for PageGrid();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageGrid.Direction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v34 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v30 - v10;
  v12 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v12 - 8);
  v14 = v30 - v13;
  ObjectType = swift_getObjectType();
  top = 20.0;
  bottom = 20.0;
  if ((*(v0 + OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_useCardStyling) & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
  }

  CGSize.subtracting(insets:)();
  v19 = v18;
  v21 = v20;
  type metadata accessor for GenericProductReviewCollectionViewCell();
  if (swift_dynamicCastMetatype())
  {
    v30[1] = v19;
    v30[2] = v21;
    v32 = bottom;
    v33 = top;
    v22 = OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_itemLayoutContext;
    (*(v7 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v6);
    swift_getKeyPath();
    v31 = v22;
    ItemLayoutContext.subscript.getter();

    PageGrid.safeAreaInsets.getter();
    v23 = v35;
    (*(v3 + 8))(v5, v35);
    (*(v7 + 16))(v34, v11, v6);
    if (qword_10096DB10 != -1)
    {
      swift_once();
    }

    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v7 + 8))(v11, v6);
    (*(v3 + 56))(v14, 0, 1, v23);
    sub_1005C91E4(v0 + v31, v14);
    v25 = v24;
    sub_10002B894(v14, &qword_10097DBD0);
    bottom = v32;
    top = v33;
  }

  else if (swift_conformsToProtocol2() && ObjectType)
  {
    dispatch thunk of static ExactHeightProviding.height(in:asPartOf:)();
    v25 = v26;
  }

  else
  {
    v25 = 0.0;
    if (swift_conformsToProtocol2() && ObjectType)
    {
      v27 = v32;
      ItemLayoutContext.parentShelfLayoutContext.getter();
      dispatch thunk of static EstimatedHeightProviding.estimatedHeight(in:asPartOf:)();
      v25 = v28;
      (*(*&v33 + 8))(COERCE_DOUBLE(*&v27), v1);
    }
  }

  return bottom + top + v25;
}

uint64_t type metadata accessor for ProductPageReviewsOverflowViewController()
{
  result = qword_1009775D8;
  if (!qword_1009775D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10018D360()
{
  result = type metadata accessor for ItemLayoutContext();
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

void sub_10018D488(void *a1, id a2)
{
  if ([a2 horizontalSizeClass] == 2)
  {
    v3 = [a1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {

      [a1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

id sub_10018D534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_objectGraph] = a6;
  v14 = OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v8[v14], a1, v15);
  v17 = objc_allocWithZone(UIScrollView);

  v18 = [v17 init];
  *&v8[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_scrollView] = v18;
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20 = &v8[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_componentView];
  *v20 = v19;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v8[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_useCardStyling] = a7;
  v27.receiver = v8;
  v27.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  sub_10002849C(&qword_10097B110);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007B10D0;
  *(v22 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v22 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v23 = v21;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  (*(v16 + 8))(a1, v15);
  return v23;
}

void sub_10018D7C0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlusView();
  v30.receiver = v4;
  v30.super_class = v14;
  objc_msgSendSuper2(&v30, "drawRect:", a1, a2, a3, a4);
  v15 = *&v4[OBJC_IVAR____TtC8AppStore8PlusView_plusColor];
  if (v15)
  {
    v16 = v15;
    v17 = UIGraphicsGetCurrentContext();
    v18 = v17;
    if (v17)
    {
      CGContextBeginPath(v17);
      v19 = v18;
      v20 = [v16 CGColor];
      CGContextSetStrokeColorWithColor(v19, v20);
    }

    v29 = v16;
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    CGRectGetMinX(v31);
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    CGRectGetMidY(v32);
    v21 = enum case for FloatingPointRoundingRule.down(_:);
    v22 = *(v11 + 104);
    v22(v13, enum case for FloatingPointRoundingRule.down(_:), v10);
    CGPoint.rounded(_:)();
    v23 = *(v11 + 8);
    v23(v13, v10);
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    CGRectGetMaxX(v33);
    v22(v13, v21, v10);
    CGPoint.rounded(_:)();
    v23(v13, v10);
    if (v18)
    {
      CGContextSetLineWidth(v18, *&v5[OBJC_IVAR____TtC8AppStore8PlusView_lineThickness]);
      v24 = v18;
      CGContextRef.move(to:)();

      v25 = v24;
      CGContextRef.addLine(to:)();
    }

    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    CGRectGetMidX(v34);
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetMinY(v35);
    v22(v13, v21, v10);
    CGPoint.rounded(_:)();
    v23(v13, v10);
    v36.origin.x = a1;
    v36.origin.y = a2;
    v36.size.width = a3;
    v36.size.height = a4;
    CGRectGetMidX(v36);
    v37.origin.x = a1;
    v37.origin.y = a2;
    v37.size.width = a3;
    v37.size.height = a4;
    CGRectGetMaxY(v37);
    v22(v13, v21, v10);
    CGPoint.rounded(_:)();
    v23(v13, v10);
    if (v18)
    {
      CGContextSetLineWidth(v18, *&v5[OBJC_IVAR____TtC8AppStore8PlusView_lineThickness]);
      v26 = v18;
      CGContextRef.move(to:)();

      v27 = v26;
      CGContextRef.addLine(to:)();

      CGContextStrokePath(v27);
    }
  }
}

id sub_10018DC64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10018DE10(void *a1)
{
  v2 = v1;
  v38 = [a1 containerView];
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 viewForKey:UITransitionContextToViewKey];
    if (v6)
    {
      v7 = v6;
      [a1 finalFrameForViewController:v5];
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
      v12 = CGRectGetWidth(v46) * 0.2;
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v13 = CGRectGetHeight(v47) * 0.2;
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v49 = CGRectInset(v48, v12, v13);
      v14 = &v2[OBJC_IVAR____TtC8AppStore31TodayTransitionPresentAnimation_originRect];
      if (v2[OBJC_IVAR____TtC8AppStore31TodayTransitionPresentAnimation_originRect + 32])
      {
        v15 = v49.origin.x;
        v16 = v49.origin.y;
        v17 = v49.size.width;
        v18 = v49.size.height;
      }

      else
      {
        v17 = v14[2];
        v18 = v14[3];
        v15 = *v14;
        v16 = v14[1];
      }

      [v38 addSubview:v7];
      [v7 setFrame:{v15, v16, v17, v18}];
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      *(v20 + 16) = v7;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_10018E7F4;
      *(v21 + 24) = v20;
      v43 = sub_10006F094;
      v44 = v21;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_1000489A8;
      v42 = &unk_1008B7128;
      v22 = _Block_copy(&aBlock);
      v23 = v7;

      [v19 performWithoutAnimation:v22];
      _Block_release(v22);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v25 = [swift_unknownObjectRetain() containerView];
        v26 = [v25 traitCollection];

        LOBYTE(v25) = UITraitCollection.isSizeClassCompact.getter();
        swift_unknownObjectRelease();
        if (v25)
        {
          v27 = 0.62;
        }

        else
        {
          v27 = 0.61;
        }

        v28 = [a1 containerView];
        v29 = [v28 traitCollection];

        LOBYTE(v28) = UITraitCollection.isSizeClassCompact.getter();
        if (v28)
        {
          v30 = 0.8;
        }

        else
        {
          v30 = 0.84;
        }

        v31 = swift_allocObject();
        *(v31 + 2) = v2;
        *(v31 + 3) = v23;
        v31[4] = x;
        v31[5] = y;
        v31[6] = width;
        v31[7] = height;
        v43 = sub_10018E804;
        v44 = v31;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_100007A08;
        v42 = &unk_1008B7178;
        v32 = _Block_copy(&aBlock);
        v33 = v23;
        v34 = v2;

        v35 = swift_allocObject();
        *(v35 + 16) = a1;
        *(v35 + 24) = v34;
        v43 = sub_10018E8D4;
        v44 = v35;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_100504C5C;
        v42 = &unk_1008B71C8;
        v36 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v37 = v34;

        [v19 animateWithDuration:129 delay:v32 usingSpringWithDamping:v36 initialSpringVelocity:v27 options:0.0 animations:v30 completion:1.0];

        _Block_release(v36);
        _Block_release(v32);
      }

      return;
    }
  }
}

void sub_10018E35C(void *a1)
{
  v2 = v1;
  v30 = [a1 containerView];
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 viewForKey:UITransitionContextToViewKey];
    if (v6)
    {
      v7 = v6;
      [a1 finalFrameForViewController:v5];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v30 addSubview:v7];
      [v7 setFrame:{v9, v11, v13, v15}];
      [v7 layoutIfNeeded];
      [v7 setAlpha:0.0];
      v16 = [swift_unknownObjectRetain() containerView];
      v17 = [v16 traitCollection];

      LOBYTE(v16) = UITraitCollection.isSizeClassCompact.getter();
      swift_unknownObjectRelease();
      if (v16)
      {
        v18 = 0.62;
      }

      else
      {
        v18 = 0.61;
      }

      v19 = [a1 containerView];
      v20 = [v19 traitCollection];

      LOBYTE(v19) = UITraitCollection.isSizeClassCompact.getter();
      if (v19)
      {
        v21 = 0.8;
      }

      else
      {
        v21 = 0.84;
      }

      v22 = objc_opt_self();
      v23 = swift_allocObject();
      *(v23 + 16) = v2;
      *(v23 + 24) = v7;
      v35 = sub_10018E7A4;
      v36 = v23;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100007A08;
      v34 = &unk_1008B7060;
      v24 = _Block_copy(&aBlock);
      v25 = v2;
      v26 = v7;

      v27 = swift_allocObject();
      *(v27 + 16) = a1;
      *(v27 + 24) = v25;
      v35 = sub_10018E7F0;
      v36 = v27;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100504C5C;
      v34 = &unk_1008B70B0;
      v28 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v29 = v25;

      [v22 animateWithDuration:129 delay:v24 usingSpringWithDamping:v28 initialSpringVelocity:v18 options:0.0 animations:v21 completion:1.0];

      _Block_release(v28);
      _Block_release(v24);
      return;
    }
  }
}

id sub_10018E74C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayTransitionPresentAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10018E7A4()
{
  v1 = *(v0 + 24);
  sub_1005F3D78(1);

  return [v1 setAlpha:1.0];
}

id sub_10018E804()
{
  v1 = *(v0 + 3);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  sub_1005F3D78(1);

  return [v1 setFrame:{v2, v3, v4, v5}];
}

uint64_t sub_10018E874()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10018E8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a2;
  v89 = a3;
  v90 = type metadata accessor for InteractedAdEvent();
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10002849C(&qword_100977700) - 8;
  __chkstk_darwin(v81);
  v93 = v75 - v6;
  v79 = type metadata accessor for AdvertActionMetrics.PurchaseType();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v94 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AdvertActionMetrics.Invocation();
  v99 = *(v8 - 8);
  v100 = v8;
  __chkstk_darwin(v8);
  v82 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v75 - v11;
  v92 = type metadata accessor for AdvertActionMetrics.AdvertType();
  v77 = *(v92 - 8);
  __chkstk_darwin(v92);
  v14 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for AdamId();
  v97 = *(v101 - 8);
  __chkstk_darwin(v101);
  v84 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v75 - v17;
  v19 = type metadata accessor for AdInteractionType();
  v98 = *(v19 - 8);
  __chkstk_darwin(v19);
  v83 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v75 - v22;
  v96 = v3;
  v24 = *(v3 + 24);
  AdvertActionMetrics.adamId.getter();
  AdvertActionMetrics.advertType.getter();
  AdvertActionMetrics.invocation.getter();
  v85 = a1;
  AdvertActionMetrics.purchaseType.getter();
  v75[2] = v24;
  swift_getObjectType();
  dispatch thunk of AppStateController.stateMachine(forApp:)();
  v75[1] = v25;
  v26 = *(v81 + 56);
  v27 = v99;
  v28 = *(v99 + 16);
  v29 = v93;
  v80 = v12;
  v30 = v100;
  v28(v93, v12, v100);
  v31 = v77;
  v32 = *(v77 + 16);
  v76 = v26;
  v81 = v14;
  v32(v29 + v26, v14, v92);
  v33 = (*(v27 + 88))(v29, v30);
  v91 = v19;
  v34 = v98;
  v95 = v23;
  if (v33 == enum case for AdvertActionMetrics.Invocation.advertPressed(_:))
  {
    swift_unknownObjectRelease();
    (*(v78 + 8))(v94, v79);
    v35 = *(v27 + 8);
    v35(v80, v30);
    v36 = *(v31 + 8);
    v37 = v92;
    v36(v81, v92);
    (*(v97 + 8))(v18, v101);
    (*(v34 + 104))(v95, enum case for AdInteractionType.normal(_:), v91);
    v38 = v93;
    v36(v93 + v76, v37);
    v94 = v35;
    v35(v38, v30);
    goto LABEL_12;
  }

  v39 = v94;
  v75[0] = v18;
  v40 = v78;
  v41 = v79;
  v42 = v92;
  v43 = v93;
  if (v33 == enum case for AdvertActionMetrics.Invocation.markerPress(_:))
  {
    swift_unknownObjectRelease();
    (*(v40 + 8))(v39, v41);
    v44 = v100;
    v45 = *(v99 + 8);
    v45(v80, v100);
    v46 = *(v31 + 8);
    v46(v81, v42);
    (*(v97 + 8))(v75[0], v101);
    (*(v98 + 104))(v95, enum case for AdInteractionType.adMarker(_:), v91);
    v46(v43 + v76, v42);
    v94 = v45;
    v45(v43, v44);
    goto LABEL_12;
  }

  v47 = v97;
  v48 = v95;
  v49 = v93;
  v50 = v92;
  v51 = v31;
  v52 = v79;
  v53 = v75[0];
  if (v33 == enum case for AdvertActionMetrics.Invocation.offerButtonPress(_:))
  {
    v54 = v93;
    v55 = (*(v51 + 88))(v93 + v76, v92);
    if (v55 == enum case for AdvertActionMetrics.AdvertType.standardApp(_:))
    {
      sub_1003466AC(v48);
LABEL_10:
      swift_unknownObjectRelease();
      (*(v40 + 8))(v39, v52);
      v56 = v100;
      v57 = *(v99 + 8);
      v57(v80, v100);
      (*(v51 + 8))(v81, v50);
      (*(v97 + 8))(v53, v101);
      v94 = v57;
      v57(v54, v56);
      goto LABEL_12;
    }

    v49 = v54;
    if (v55 == enum case for AdvertActionMetrics.AdvertType.arcadeApp(_:))
    {
      sub_1003462D8(v48);
      goto LABEL_10;
    }
  }

  v58 = v49;
  swift_unknownObjectRelease();
  (*(v40 + 8))(v39, v52);
  v94 = *(v99 + 8);
  (v94)(v80, v100);
  (*(v51 + 8))(v81, v50);
  (*(v47 + 8))(v53, v101);
  (*(v98 + 104))(v48, enum case for AdInteractionType.open(_:), v91);
  sub_10002B894(v58, &qword_100977700);
LABEL_12:
  if (qword_10096D130 != -1)
  {
    swift_once();
  }

  v93 = type metadata accessor for OSLogger();
  v92 = sub_1000056A8(v93, qword_1009CE248);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007BCA60;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  LogMessage.init(stringLiteral:)();
  v59 = AdvertActionMetrics.instanceId.getter();
  v104 = &type metadata for String;
  v102 = v59;
  v103 = v60;
  static LogMessage.safe(_:)();
  sub_10002B894(&v102, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v104 = v101;
  sub_1000056E0(&v102);
  AdvertActionMetrics.adamId.getter();
  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(&v102, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v61 = v82;
  AdvertActionMetrics.invocation.getter();
  v62 = AdvertActionMetrics.Invocation.rawValue.getter();
  v64 = v63;
  (v94)(v61, v100);
  v104 = &type metadata for String;
  v102 = v62;
  v103 = v64;
  static LogMessage.safe(_:)();
  sub_10002B894(&v102, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v65 = v91;
  v104 = v91;
  v66 = sub_1000056E0(&v102);
  v67 = v98;
  v68 = *(v98 + 16);
  v69 = v95;
  v68(v66, v95, v65);
  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(&v102, &unk_1009711D0);
  Logger.info(_:)();

  v70 = AdvertActionMetrics.instanceId.getter();
  v99 = v71;
  v100 = v70;
  v68(v83, v69, v65);
  AdvertActionMetrics.bundleId.getter();
  v72 = v84;
  AdvertActionMetrics.adamId.getter();
  AdamId.stringValue.getter();
  (*(v97 + 8))(v72, v101);
  v73 = v86;
  InteractedAdEvent.init(adInstanceId:type:bundleId:adamId:)();
  dispatch thunk of PromotedContentMetricCollector.advertInteracted(event:completion:)();
  (*(v87 + 8))(v73, v90);
  return (*(v67 + 8))(v69, v65);
}

char *sub_10018F640(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC8AppStore32LinkableHeaderCollectionViewCell_headerView] = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v10 = [v9 contentView];
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v11 = [v9 contentView];
  v12 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [v9 contentView];
  [v13 addSubview:*&v9[OBJC_IVAR____TtC8AppStore32LinkableHeaderCollectionViewCell_headerView]];

  return v9;
}

id sub_10018F910()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10018F978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    AppEventSearchResult.appEvent.getter();
    v9 = AppPromotion.clickAction.getter();

    if (v9)
    {
      v10 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_1000F40E0(v6);
      }

      else
      {
        sub_1005F9AF4(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_10018FB28(uint64_t a1, void *a2, uint64_t a3, double a4, uint64_t a5, int *a6)
{
  v105 = a3;
  v106 = a6;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v101 = *(v9 - 8);
  v102 = v9;
  __chkstk_darwin(v9);
  v100 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SmallSearchLockupLayout();
  v98 = *(v11 - 8);
  v99 = v11;
  __chkstk_darwin(v11);
  v96 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = type metadata accessor for LabelPlaceholderCompatibility();
  v94 = *(v111 - 8);
  __chkstk_darwin(v111);
  v93 = &v75[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for OfferButtonMetrics();
  v108 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v75[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v75[-v18];
  v20 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v109 = *(v20 - 8);
  __chkstk_darwin(v20);
  v95 = &v75[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v75[-v23];
  CGSize.subtracting(insets:)();
  v26 = v25;
  v103 = a1;
  v27 = AppEventSearchResult.lockup.getter();
  v28 = Lockup.title.getter();
  v83 = v29;
  v84 = v28;
  v30 = Lockup.subtitle.getter();
  v85 = v31;
  v86 = v30;
  if (Lockup.searchAdOpportunity.getter())
  {
    v32 = SearchAdOpportunity.searchAd.getter();

    if (v32)
    {
      v33 = SearchAd.advertisingText.getter();
      v91 = v34;
      v92 = v33;
    }

    else
    {
      v91 = 0;
      v92 = 0;
    }
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  v35 = [a2 traitCollection];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v36 = sub_1000056A8(v20, qword_1009CDC00);
  v88 = *(v109 + 16);
  v89 = v109 + 16;
  v88(v24, v36, v20);
  v37 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v104 = a2;
  v97 = v27;
  v110 = v20;
  if (v37)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v38 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v38 = qword_100991028;
  }

  v39 = v14;
  v40 = sub_1000056A8(v14, v38);
  v41 = v108;
  (*(v108 + 16))(v16, v40, v14);
  (*(v41 + 32))(v19, v16, v14);
  v82 = v35;
  v42 = [v35 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v43 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v81 = LayoutViewPlaceholder.init(representing:)();
  v44 = objc_opt_self();
  v78 = v44;
  v45 = [v44 preferredFontForTextStyle:UIFontTextStyleBody];
  v46 = type metadata accessor for Feature();
  v80 = v24;
  v47 = v46;
  v148[3] = v46;
  v107 = sub_10019074C(&qword_100972E50, &type metadata accessor for Feature);
  v148[4] = v107;
  v48 = sub_1000056E0(v148);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(v47 - 8);
  v79 = *(v50 + 104);
  v90 = v39;
  v51 = v50 + 104;
  v76 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v79(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v47);
  v77 = v51;
  isFeatureEnabled(_:)();
  v87 = v19;
  sub_100007000(v148);
  v52 = v93;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v53 = *(v94 + 8);
  v53(v52, v111);
  v54 = [v44 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v147[3] = v47;
  v147[4] = v107;
  v55 = sub_1000056E0(v147);
  v56 = v49;
  v57 = v79;
  v79(v55, v56, v47);
  isFeatureEnabled(_:)();
  sub_100007000(v147);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v53(v52, v111);
  v58 = [v78 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v146[3] = v47;
  v146[4] = v107;
  v59 = sub_1000056E0(v146);
  v57(v59, v76, v47);
  isFeatureEnabled(_:)();
  sub_100007000(v146);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v53(v52, v111);
  sub_1000AE138(0, 0);
  swift_allocObject();
  v60 = LayoutViewPlaceholder.init(representing:)();

  sub_1000AE138(0, 0);
  swift_allocObject();
  v61 = LayoutViewPlaceholder.init(representing:)();
  v62 = v80;
  v88(v95, v80, v110);
  v145 = &protocol witness table for LayoutViewPlaceholder;
  v144 = v43;
  v143 = v81;
  v142 = 0;
  *&v140[40] = 0u;
  v141 = 0u;
  sub_10002C0AC(v148, v140);
  sub_10002C0AC(v147, &v139);
  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v135 = 0;
  v133 = 0u;
  v134 = 0u;

  v63 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v132 = &protocol witness table for LayoutViewPlaceholder;
  v131 = v43;
  v130 = v63;
  v129 = 0;
  v127 = 0u;
  v128 = 0u;
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v120 = 0;
  v119 = 0u;
  *&v118[40] = 0u;
  sub_10002C0AC(v146, v118);
  v116 = v43;
  v117 = &protocol witness table for LayoutViewPlaceholder;
  v114 = &protocol witness table for LayoutViewPlaceholder;
  v115 = v60;
  v113 = v43;
  v112 = v61;
  v64 = v96;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1007B0B70;
  v66 = v82;
  *(v65 + 32) = v82;
  v67 = v66;
  v68 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_10019074C(&unk_100972E60, &type metadata accessor for SmallSearchLockupLayout);
  v69 = v99;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v98 + 8))(v64, v69);
  sub_100007000(v146);
  sub_100007000(v147);
  sub_100007000(v148);
  (*(v108 + 8))(v87, v90);
  (*(v109 + 8))(v62, v110);
  if (qword_10096EFC0 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_1009D3A50, qword_1009D3A68);
  v70 = v100;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  v71 = v104;
  AnyDimension.value(in:rounded:)();
  (*(v101 + 8))(v70, v102);
  v72 = type metadata accessor for AppEventView();
  v73 = AppEventSearchResult.appEvent.getter();
  sub_10016862C(v26, v73, v71, v105, v72, v106);

  return a4;
}

uint64_t sub_10019074C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t IconArtworkGridLayout.Metrics.init(iconSize:interItemSpacing:horizontalOffsetPercentage:rotation:preferredGridSize:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  result = sub_100005A38(a1, a5 + 16);
  *(a5 + 56) = a8;
  *(a5 + 64) = a9;
  *(a5 + 72) = a2;
  *(a5 + 80) = a3;
  *(a5 + 88) = a4 & 1;
  return result;
}

__n128 IconArtworkGridLayout.init(metrics:icons:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v3;
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 73) = *(a1 + 73);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 96) = a2;
  return result;
}

uint64_t IconArtworkGridLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_getObjectType();
  result = sub_100190B68(v4, a1, a2, a3, a4);
  v10 = result;
  v11 = *(v4 + 96);
  v12 = *(v11 + 16);
  if (!v12)
  {

    return LayoutRect.init(representing:)();
  }

  v13 = 0;
  v14 = *(result + 16);
  v15 = v11 + 32;
  for (i = result + 56; ; i += 32)
  {
    if (v13 >= v14)
    {
      goto LABEL_3;
    }

    if (v13 >= *(v11 + 16))
    {
      break;
    }

    sub_10002C0AC(v15, v17);
    result = sub_10002A400(v17, v17[3]);
    if (v13 >= *(v10 + 16))
    {
      goto LABEL_12;
    }

    dispatch thunk of LayoutView.frame.setter();
    result = sub_100007000(v17);
LABEL_3:
    ++v13;
    v15 += 40;
    if (v12 == v13)
    {

      return LayoutRect.init(representing:)();
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t static IconArtworkGridLayout.totalNumberOfIcons(fitting:using:in:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  swift_getObjectType();

  return sub_100190B2C(a1, a2, a3);
}

uint64_t IconArtworkGridLayout.Metrics.preferredGridSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 72) = result;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3 & 1;
  return result;
}

double *static IconArtworkGridLayout.iconFrames(relativeTo:using:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getObjectType();

  return sub_100190B68(a1, a2, a3, a4, a5);
}

uint64_t sub_100190B2C(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v3 = *(sub_100190B68(a1, 0.0, 0.0, a2, a3) + 2);

  return v3;
}

double *sub_100190B68(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = *(a1 + 64);
  CGAffineTransformMakeRotation(&v206, v182);
  v207.origin.x = a4 * -0.5;
  v207.origin.y = a5 * -0.5;
  v207.size.width = a4;
  v207.size.height = a5;
  v208 = CGRectApplyAffineTransform(v207, &v206);
  x = v208.origin.x;
  y = v208.origin.y;
  width = v208.size.width;
  v204 = v208.size.width;
  height = v208.size.height;
  v200 = v208.size.height;
  MinX = CGRectGetMinX(v208);
  v195 = a2;
  v209.origin.x = a2;
  v196 = a3;
  v209.origin.y = a3;
  v209.size.width = a4;
  v209.size.height = a5;
  v197 = a5;
  v203 = MinX + CGRectGetMidX(v209);
  v210.origin.x = x;
  v210.origin.y = y;
  v210.size.width = width;
  v210.size.height = height;
  MinY = CGRectGetMinY(v210);
  v211.origin.x = a2;
  v211.origin.y = a3;
  v211.size.width = a4;
  v19 = a4;
  v211.size.height = a5;
  v202 = MinY + CGRectGetMidY(v211);
  v21 = *a1;
  v20 = *(a1 + 8);
  CGAffineTransformMakeRotation(&v206, v182);
  v212.origin.x = v21 * -0.5;
  v212.origin.y = v20 * -0.5;
  v212.size.width = v21;
  v212.size.height = v20;
  v194 = v20;
  v213 = CGRectApplyAffineTransform(v212, &v206);
  v22 = v213.origin.x;
  v23 = v213.origin.y;
  v24 = v213.size.width;
  v25 = v213.size.height;
  v26 = CGRectGetMinX(v213);
  v214.origin.x = 0.0;
  v214.origin.y = 0.0;
  v214.size.width = v21;
  v214.size.height = v20;
  v199 = v26 + CGRectGetMidX(v214);
  v215.origin.x = v22;
  v215.origin.y = v23;
  v215.size.width = v24;
  v215.size.height = v25;
  v27 = CGRectGetMinY(v215);
  v216.origin.x = 0.0;
  v216.origin.y = 0.0;
  v216.size.width = v21;
  v216.size.height = v20;
  v201 = v27 + CGRectGetMidY(v216);
  sub_10002A400((a1 + 16), *(a1 + 40));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v29 = v28;
  v189 = v28;
  (*(v11 + 8))(v13, v10);
  v30 = *(a1 + 56);
  v192 = v21;
  v31 = v21 + v29;
  v32 = floor(v31 * v30);
  v33 = v195;
  v217.origin.x = v195;
  v34 = v196;
  v217.origin.y = v196;
  v217.size.width = v19;
  v35 = v197;
  v217.size.height = v197;
  MidX = CGRectGetMidX(v217);
  v218.origin.x = v33;
  v218.origin.y = v34;
  v193 = v19;
  v218.size.width = v19;
  v218.size.height = v35;
  MidY = CGRectGetMidY(v218);
  v36 = v182;
  v37 = __sincos_stret(v182);
  v188 = v37.__cosval * v31;
  v187 = v37.__sinval * v31;
  v38 = __sincos_stret(v36 + 3.14159265);
  v191 = v38.__cosval * v31;
  v190 = v38.__sinval * v31;
  v179 = v37.__cosval * v32;
  v178 = v37.__sinval * v32;
  v39 = __sincos_stret(v36 + 1.57079633);
  sinval = v39.__sinval;
  cosval = v39.__cosval;
  v40 = v194 + v189;
  v41 = v199;
  v219.origin.x = v199;
  v42 = v201;
  v219.origin.y = v201;
  v219.size.width = v24;
  v219.size.height = v25;
  v43 = MidX + CGRectGetMidX(v219);
  v220.origin.x = v41;
  v220.origin.y = v42;
  v220.size.width = v24;
  v220.size.height = v25;
  v44 = v43 + CGRectGetWidth(v220) * -0.5;
  v221.origin.x = v41;
  v221.origin.y = v42;
  v221.size.width = v24;
  v221.size.height = v25;
  v45 = MidY + CGRectGetMidY(v221);
  v222.origin.x = v41;
  v222.origin.y = v42;
  v222.size.width = v24;
  v222.size.height = v25;
  v223.origin.y = v45 + CGRectGetHeight(v222) * -0.5;
  v299.origin.x = v203;
  v299.size.width = v204;
  v223.origin.x = v44;
  v299.origin.y = v202;
  v223.size.width = v24;
  v223.size.height = v25;
  v299.size.height = v200;
  v46 = CGRectIntersectsRect(v223, v299);
  v177 = v40;
  MinX = v24;
  v198 = v25;
  if (v46)
  {
    v184 = cosval * v40 + v179;
    v183 = sinval * v40 + v178;
    v47 = _swiftEmptyArrayStorage;
    v48 = 0.5;
    v49 = MidX;
    v50 = MidY;
    v51 = v200;
    v52 = v201;
    v53 = v199;
    do
    {
      cosval = v49;
      v229.origin.x = v53;
      v229.origin.y = v52;
      v229.size.width = v24;
      v229.size.height = v25;
      v56 = v49 + CGRectGetMidX(v229);
      v230.origin.x = v53;
      v230.origin.y = v52;
      v230.size.width = v24;
      v230.size.height = v25;
      v57 = v56 - CGRectGetWidth(v230) * v48;
      v231.origin.x = v53;
      v231.origin.y = v52;
      v231.size.width = v24;
      v231.size.height = v25;
      v189 = v50 + CGRectGetMidY(v231);
      v232.origin.x = v53;
      v232.origin.y = v52;
      v232.size.width = v24;
      v232.size.height = v25;
      v58 = v189 - CGRectGetHeight(v232) * v48;
      v233.origin.x = v57;
      v233.origin.y = v58;
      v233.size.width = v24;
      v233.size.height = v25;
      v301.origin.y = v202;
      v301.origin.x = v203;
      v301.size.width = v204;
      v301.size.height = v51;
      v59 = CGRectIntersectsRect(v233, v301);
      sinval = v50;
      if (v59)
      {
        v189 = cosval;
        v60 = v50;
        do
        {
          v239.origin.x = v57;
          v239.origin.y = v58;
          v239.size.width = v24;
          v239.size.height = v25;
          v303.origin.x = v195;
          v303.origin.y = v196;
          v303.size.width = v193;
          v303.size.height = v197;
          if (CGRectIntersectsRect(v239, v303))
          {
            v240.origin.x = 0.0;
            v240.origin.y = 0.0;
            v70 = v192;
            v240.size.width = v192;
            v71 = v194;
            v240.size.height = v194;
            v72 = CGRectGetMidX(v240);
            v241.origin.x = 0.0;
            v241.origin.y = 0.0;
            v241.size.width = v70;
            v241.size.height = v71;
            v73 = CGRectGetWidth(v241);
            v242.origin.x = 0.0;
            v242.origin.y = 0.0;
            v242.size.width = v70;
            v242.size.height = v71;
            v74 = CGRectGetMidY(v242);
            v243.origin.x = 0.0;
            v243.origin.y = 0.0;
            v243.size.width = v70;
            v243.size.height = v71;
            v75 = CGRectGetHeight(v243);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_10003341C(0, *(v47 + 2) + 1, 1, v47);
            }

            v77 = *(v47 + 2);
            v76 = *(v47 + 3);
            v62 = v189;
            if (v77 >= v76 >> 1)
            {
              v47 = sub_10003341C((v76 > 1), v77 + 1, 1, v47);
            }

            v61 = 0.5;
            *(v47 + 2) = v77 + 1;
            v78 = &v47[4 * v77];
            v78[4] = v62 + v72 - v73 * 0.5;
            v78[5] = v60 + v74 - v75 * 0.5;
            v79 = v194;
            v78[6] = v192;
            v78[7] = v79;
          }

          else
          {
            v61 = 0.5;
            v62 = v189;
          }

          v63 = v188 + v62;
          v60 = v187 + v60;
          v25 = v198;
          v64 = v199;
          v234.origin.x = v199;
          v65 = v201;
          v234.origin.y = v201;
          v24 = MinX;
          v234.size.width = MinX;
          v234.size.height = v198;
          v66 = CGRectGetMidX(v234);
          v189 = v63;
          v67 = v63 + v66;
          v235.origin.x = v64;
          v235.origin.y = v65;
          v235.size.width = v24;
          v235.size.height = v25;
          v57 = v67 - CGRectGetWidth(v235) * v61;
          v236.origin.x = v64;
          v236.origin.y = v65;
          v236.size.width = v24;
          v236.size.height = v25;
          v68 = v60 + CGRectGetMidY(v236);
          v237.origin.x = v64;
          v237.origin.y = v65;
          v237.size.width = v24;
          v237.size.height = v25;
          v58 = v68 - CGRectGetHeight(v237) * v61;
          v238.origin.x = v57;
          v238.origin.y = v58;
          v238.size.width = v24;
          v238.size.height = v25;
          v302.origin.y = v202;
          v302.origin.x = v203;
          v302.size.width = v204;
          v302.size.height = v200;
          v69 = CGRectIntersectsRect(v238, v302);
          v50 = sinval;
        }

        while (v69);
      }

      v80 = v191 + cosval;
      v81 = v190 + v50;
      v244.size.height = v198;
      v82 = v199;
      v244.origin.x = v199;
      v83 = v201;
      v244.origin.y = v201;
      v244.size.width = v24;
      v84 = v80 + CGRectGetMidX(v244);
      v245.origin.x = v82;
      v245.origin.y = v83;
      v245.size.width = v24;
      v245.size.height = v198;
      v85 = v84 - CGRectGetWidth(v245) * 0.5;
      v246.origin.x = v82;
      v246.origin.y = v83;
      v246.size.width = v24;
      v246.size.height = v198;
      v86 = v81 + CGRectGetMidY(v246);
      v247.origin.x = v82;
      v247.origin.y = v83;
      v25 = v198;
      v247.size.width = v24;
      v247.size.height = v198;
      v87 = v86 - CGRectGetHeight(v247) * 0.5;
      v248.origin.x = v85;
      v248.origin.y = v87;
      v248.size.width = v24;
      v248.size.height = v25;
      v304.origin.y = v202;
      v304.origin.x = v203;
      v304.size.width = v204;
      v304.size.height = v200;
      if (CGRectIntersectsRect(v248, v304))
      {
        do
        {
          v254.origin.x = v85;
          v254.origin.y = v87;
          v254.size.width = v24;
          v254.size.height = v25;
          v306.origin.x = v195;
          v306.origin.y = v196;
          v306.size.width = v193;
          v306.size.height = v197;
          if (CGRectIntersectsRect(v254, v306))
          {
            v255.origin.x = 0.0;
            v255.origin.y = 0.0;
            v94 = v192;
            v255.size.width = v192;
            v95 = v194;
            v255.size.height = v194;
            v96 = CGRectGetMidX(v255);
            v256.origin.x = 0.0;
            v256.origin.y = 0.0;
            v256.size.width = v94;
            v256.size.height = v95;
            v97 = CGRectGetWidth(v256);
            v257.origin.x = 0.0;
            v257.origin.y = 0.0;
            v257.size.width = v94;
            v257.size.height = v95;
            v189 = CGRectGetMidY(v257);
            v258.origin.x = 0.0;
            v258.origin.y = 0.0;
            v258.size.width = v94;
            v258.size.height = v95;
            v98 = CGRectGetHeight(v258);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_10003341C(0, *(v47 + 2) + 1, 1, v47);
            }

            v100 = *(v47 + 2);
            v99 = *(v47 + 3);
            if (v100 >= v99 >> 1)
            {
              v47 = sub_10003341C((v99 > 1), v100 + 1, 1, v47);
            }

            v88 = 0.5;
            v101 = v81 + v189 - v98 * 0.5;
            *(v47 + 2) = v100 + 1;
            v102 = &v47[4 * v100];
            v102[4] = v80 + v96 - v97 * 0.5;
            v102[5] = v101;
            v103 = v194;
            v102[6] = v192;
            v102[7] = v103;
          }

          else
          {
            v88 = 0.5;
          }

          v80 = v191 + v80;
          v81 = v190 + v81;
          v89 = v199;
          v249.origin.x = v199;
          v90 = v201;
          v249.origin.y = v201;
          v249.size.width = v24;
          v91 = v198;
          v249.size.height = v198;
          v92 = v80 + CGRectGetMidX(v249);
          v250.origin.x = v89;
          v250.origin.y = v90;
          v250.size.width = MinX;
          v250.size.height = v91;
          v85 = v92 - CGRectGetWidth(v250) * v88;
          v251.origin.x = v89;
          v251.origin.y = v90;
          v251.size.width = MinX;
          v251.size.height = v91;
          v93 = v81 + CGRectGetMidY(v251);
          v252.origin.x = v89;
          v252.origin.y = v90;
          v25 = v91;
          v24 = MinX;
          v252.size.width = MinX;
          v252.size.height = v25;
          v87 = v93 - CGRectGetHeight(v252) * v88;
          v253.origin.x = v85;
          v253.origin.y = v87;
          v253.size.width = v24;
          v253.size.height = v25;
          v305.origin.y = v202;
          v305.origin.x = v203;
          v305.size.width = v204;
          v305.size.height = v200;
        }

        while (CGRectIntersectsRect(v253, v305));
      }

      v49 = v184 + cosval;
      v50 = v183 + sinval;
      v53 = v199;
      v224.origin.x = v199;
      v52 = v201;
      v224.origin.y = v201;
      v224.size.width = v24;
      v224.size.height = v25;
      v54 = v49 + CGRectGetMidX(v224);
      v225.origin.x = v53;
      v225.origin.y = v52;
      v225.size.width = v24;
      v225.size.height = v25;
      v48 = 0.5;
      v189 = v54 - CGRectGetWidth(v225) * 0.5;
      v226.origin.x = v53;
      v226.origin.y = v52;
      v226.size.width = v24;
      v226.size.height = v25;
      v55 = v50 + CGRectGetMidY(v226);
      v227.origin.x = v53;
      v227.origin.y = v52;
      v227.size.width = v24;
      v227.size.height = v25;
      v228.origin.y = v55 - CGRectGetHeight(v227) * 0.5;
      v228.origin.x = v189;
      v228.size.width = v24;
      v228.size.height = v25;
      v300.origin.y = v202;
      v300.origin.x = v203;
      v300.size.width = v204;
      v51 = v200;
      v300.size.height = v200;
    }

    while (CGRectIntersectsRect(v228, v300));
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
    v52 = v201;
    v53 = v199;
  }

  v104 = __sincos_stret(v182 + -1.57079633);
  v184 = v104.__cosval * v177 - v179;
  v105 = MidX + v184;
  v183 = v104.__sinval * v177 - v178;
  v106 = MidY + v183;
  v259.origin.x = v53;
  v259.origin.y = v52;
  v259.size.width = v24;
  v259.size.height = v25;
  v107 = CGRectGetMidX(v259);
  sinval = v105;
  v108 = v105 + v107;
  v260.origin.x = v53;
  v260.origin.y = v52;
  v260.size.width = v24;
  v260.size.height = v25;
  v109 = v53;
  v110 = v108 - CGRectGetWidth(v260) * 0.5;
  v261.origin.x = v109;
  v261.origin.y = v52;
  v261.size.width = v24;
  v261.size.height = v25;
  v111 = CGRectGetMidY(v261);
  cosval = v106;
  v112 = v106 + v111;
  v262.origin.x = v109;
  v262.origin.y = v52;
  v262.size.width = v24;
  v262.size.height = v25;
  v263.origin.y = v112 - CGRectGetHeight(v262) * 0.5;
  v307.size.height = v200;
  v263.origin.x = v110;
  v263.size.width = v24;
  v263.size.height = v25;
  v307.origin.y = v202;
  v307.origin.x = v203;
  v307.size.width = v204;
  if (CGRectIntersectsRect(v263, v307))
  {
    v113 = sinval;
    v114 = cosval;
    v115 = v199;
    do
    {
      v269.origin.x = v115;
      v269.origin.y = v52;
      v269.size.width = v24;
      v269.size.height = v25;
      v119 = v113 + CGRectGetMidX(v269);
      v270.origin.x = v115;
      v270.origin.y = v52;
      v270.size.width = v24;
      v270.size.height = v25;
      v120 = v119 - CGRectGetWidth(v270) * 0.5;
      v271.origin.x = v115;
      v271.origin.y = v52;
      v271.size.width = v24;
      v271.size.height = v25;
      v121 = v114 + CGRectGetMidY(v271);
      v272.origin.x = v115;
      v272.origin.y = v52;
      v272.size.width = v24;
      v272.size.height = v25;
      v122 = v121 - CGRectGetHeight(v272) * 0.5;
      v273.origin.x = v120;
      v273.origin.y = v122;
      v273.size.width = v24;
      v273.size.height = v25;
      v309.origin.y = v202;
      v309.origin.x = v203;
      v309.size.width = v204;
      v309.size.height = v200;
      v123 = CGRectIntersectsRect(v273, v309);
      sinval = v113;
      cosval = v114;
      if (v123)
      {
        v189 = v113;
        do
        {
          v279.origin.x = v120;
          v279.origin.y = v122;
          v279.size.width = v24;
          v279.size.height = v25;
          v311.origin.x = v195;
          v311.origin.y = v196;
          v311.size.width = v193;
          v311.size.height = v197;
          if (CGRectIntersectsRect(v279, v311))
          {
            v280.origin.x = 0.0;
            v280.origin.y = 0.0;
            v132 = v192;
            v280.size.width = v192;
            v133 = v194;
            v280.size.height = v194;
            v134 = CGRectGetMidX(v280);
            v281.origin.x = 0.0;
            v281.origin.y = 0.0;
            v281.size.width = v132;
            v281.size.height = v133;
            v135 = CGRectGetWidth(v281);
            v282.origin.x = 0.0;
            v282.origin.y = 0.0;
            v282.size.width = v132;
            v282.size.height = v133;
            v136 = CGRectGetMidY(v282);
            v283.origin.x = 0.0;
            v283.origin.y = 0.0;
            v283.size.width = v132;
            v283.size.height = v133;
            v137 = CGRectGetHeight(v283);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_10003341C(0, *(v47 + 2) + 1, 1, v47);
            }

            v139 = *(v47 + 2);
            v138 = *(v47 + 3);
            v140 = 0.5;
            v125 = v189;
            if (v139 >= v138 >> 1)
            {
              v145 = sub_10003341C((v138 > 1), v139 + 1, 1, v47);
              v140 = 0.5;
              v47 = v145;
            }

            v141 = v125 + v134 - v135 * v140;
            v142 = v114 + v136;
            v124 = 0.5;
            *(v47 + 2) = v139 + 1;
            v143 = &v47[4 * v139];
            v143[4] = v141;
            v143[5] = v142 - v137 * 0.5;
            v144 = v194;
            v143[6] = v192;
            v143[7] = v144;
          }

          else
          {
            v124 = 0.5;
            v125 = v189;
          }

          v126 = v188 + v125;
          v114 = v187 + v114;
          v25 = v198;
          v127 = v199;
          v274.origin.x = v199;
          v128 = v201;
          v274.origin.y = v201;
          v24 = MinX;
          v274.size.width = MinX;
          v274.size.height = v198;
          v129 = CGRectGetMidX(v274);
          v189 = v126;
          v130 = v126 + v129;
          v275.origin.x = v127;
          v275.origin.y = v128;
          v275.size.width = v24;
          v275.size.height = v25;
          v120 = v130 - CGRectGetWidth(v275) * v124;
          v276.origin.x = v127;
          v276.origin.y = v128;
          v276.size.width = v24;
          v276.size.height = v25;
          v131 = v114 + CGRectGetMidY(v276);
          v277.origin.x = v127;
          v277.origin.y = v128;
          v277.size.width = v24;
          v277.size.height = v25;
          v122 = v131 - CGRectGetHeight(v277) * v124;
          v278.origin.x = v120;
          v278.origin.y = v122;
          v278.size.width = v24;
          v278.size.height = v25;
          v310.origin.y = v202;
          v310.origin.x = v203;
          v310.size.width = v204;
          v310.size.height = v200;
        }

        while (CGRectIntersectsRect(v278, v310));
      }

      v146 = v191 + sinval;
      v147 = v190 + cosval;
      v148 = v199;
      v284.origin.x = v199;
      v284.origin.y = v201;
      v284.size.width = v24;
      v284.size.height = v25;
      v149 = CGRectGetMidX(v284);
      v189 = v146;
      v150 = v146 + v149;
      v285.origin.x = v148;
      v285.origin.y = v201;
      v285.size.width = v24;
      v285.size.height = v25;
      v151 = v150 - CGRectGetWidth(v285) * 0.5;
      v286.origin.x = v148;
      v286.origin.y = v201;
      v286.size.width = v24;
      v286.size.height = v25;
      v152 = v147 + CGRectGetMidY(v286);
      v287.origin.x = v148;
      v52 = v201;
      v287.origin.y = v201;
      v287.size.width = v24;
      v287.size.height = v25;
      v153 = v152 - CGRectGetHeight(v287) * 0.5;
      v288.origin.x = v151;
      v288.origin.y = v153;
      v288.size.width = v24;
      v288.size.height = v25;
      v312.origin.y = v202;
      v312.origin.x = v203;
      v312.size.width = v204;
      v312.size.height = v200;
      if (CGRectIntersectsRect(v288, v312))
      {
        do
        {
          v294.origin.x = v151;
          v294.origin.y = v153;
          v294.size.width = v24;
          v294.size.height = v25;
          v314.origin.x = v195;
          v314.origin.y = v196;
          v314.size.width = v193;
          v314.size.height = v197;
          if (CGRectIntersectsRect(v294, v314))
          {
            v295.origin.x = 0.0;
            v295.origin.y = 0.0;
            v161 = v192;
            v295.size.width = v192;
            v162 = v194;
            v295.size.height = v194;
            v163 = CGRectGetMidX(v295);
            v296.origin.x = 0.0;
            v296.origin.y = 0.0;
            v296.size.width = v161;
            v296.size.height = v162;
            v164 = CGRectGetWidth(v296);
            v297.origin.x = 0.0;
            v297.origin.y = 0.0;
            v297.size.width = v161;
            v297.size.height = v162;
            v165 = CGRectGetMidY(v297);
            v298.origin.x = 0.0;
            v298.origin.y = 0.0;
            v298.size.width = v161;
            v298.size.height = v162;
            v166 = CGRectGetHeight(v298);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_10003341C(0, *(v47 + 2) + 1, 1, v47);
            }

            v168 = *(v47 + 2);
            v167 = *(v47 + 3);
            v169 = 0.5;
            v155 = v189;
            if (v168 >= v167 >> 1)
            {
              v174 = sub_10003341C((v167 > 1), v168 + 1, 1, v47);
              v169 = 0.5;
              v47 = v174;
            }

            v170 = v155 + v163 - v164 * v169;
            v171 = v147 + v165;
            v154 = 0.5;
            *(v47 + 2) = v168 + 1;
            v172 = &v47[4 * v168];
            v172[4] = v170;
            v172[5] = v171 - v166 * 0.5;
            v173 = v194;
            v172[6] = v192;
            v172[7] = v173;
          }

          else
          {
            v154 = 0.5;
            v155 = v189;
          }

          v156 = v191 + v155;
          v147 = v190 + v147;
          v25 = v198;
          v157 = v199;
          v289.origin.x = v199;
          v52 = v201;
          v289.origin.y = v201;
          v24 = MinX;
          v289.size.width = MinX;
          v289.size.height = v198;
          v158 = CGRectGetMidX(v289);
          v189 = v156;
          v159 = v156 + v158;
          v290.origin.x = v157;
          v290.origin.y = v52;
          v290.size.width = v24;
          v290.size.height = v25;
          v151 = v159 - CGRectGetWidth(v290) * v154;
          v291.origin.x = v157;
          v291.origin.y = v52;
          v291.size.width = v24;
          v291.size.height = v25;
          v160 = v147 + CGRectGetMidY(v291);
          v292.origin.x = v157;
          v292.origin.y = v52;
          v292.size.width = v24;
          v292.size.height = v25;
          v153 = v160 - CGRectGetHeight(v292) * v154;
          v293.origin.x = v151;
          v293.origin.y = v153;
          v293.size.width = v24;
          v293.size.height = v25;
          v313.origin.y = v202;
          v313.origin.x = v203;
          v313.size.width = v204;
          v313.size.height = v200;
        }

        while (CGRectIntersectsRect(v293, v313));
      }

      v113 = v184 + sinval;
      v114 = v183 + cosval;
      v115 = v199;
      v264.origin.x = v199;
      v264.origin.y = v52;
      v264.size.width = v24;
      v264.size.height = v25;
      v116 = v113 + CGRectGetMidX(v264);
      v265.origin.x = v115;
      v265.origin.y = v52;
      v265.size.width = v24;
      v265.size.height = v25;
      v117 = v116 - CGRectGetWidth(v265) * 0.5;
      v266.origin.x = v115;
      v266.origin.y = v52;
      v266.size.width = v24;
      v266.size.height = v25;
      v118 = v114 + CGRectGetMidY(v266);
      v267.origin.x = v115;
      v267.origin.y = v52;
      v267.size.width = v24;
      v267.size.height = v25;
      v268.origin.y = v118 - CGRectGetHeight(v267) * 0.5;
      v268.origin.x = v117;
      v268.size.width = v24;
      v268.size.height = v25;
      v308.origin.y = v202;
      v308.origin.x = v203;
      v308.size.width = v204;
      v308.size.height = v200;
    }

    while (CGRectIntersectsRect(v268, v308));
  }

  return v47;
}

__n128 sub_100191E78(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100191EA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100191EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100191F54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100191F78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100191FC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100192028(void *a1)
{
  sub_100192A30();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_1001920D8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore23VideoCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10019212C;
}

void sub_10019212C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_100192A30();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_100192A30();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_1001923C0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VideoCollectionViewCell();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  sub_100192A30();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [v0 contentView];
    [v3 addSubview:v2];

    [v0 setNeedsLayout];
  }
}

id sub_100192590()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoCollectionViewCell()
{
  result = qword_100977760;
  if (!qword_100977760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100192698()
{
  result = type metadata accessor for VideoConfiguration();
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

uint64_t (*sub_100192744(uint64_t **a1))()
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
  v2[4] = sub_1001920D8(v2);
  return sub_1000C2700;
}

uint64_t sub_1001927B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100192808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100192874(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_getWitnessTable();
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000B4CAC;
}

uint64_t sub_1001929E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100192A30()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1001929E8(&qword_100973190, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_1000F07CC(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

double sub_100192B00(void **a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = *a1;
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  sub_10037A62C(v9, a7);
  type metadata accessor for LayoutViewPlaceholder();
  dispatch thunk of Measurable.measurements(fitting:in:)();

  return a2;
}

id sub_100192BB0(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategory] = *a1;

  *(*&v1[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category) = v2;

  sub_100378DCC();

  return [v1 setNeedsLayout];
}

uint64_t sub_100192C58()
{
  type metadata accessor for ArtworkView();
  sub_10019304C(&qword_100970E80, &type metadata accessor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_100192CF8()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for StaticDimension();
  sub_1000056A8(v4, qword_1009D2448);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

void sub_100192ED0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategoryView);
  if (*(v1 + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category))
  {

    PrivacyCategory.artwork.getter();

    Artwork.config(using:)();
    v2 = *(v1 + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView);
    type metadata accessor for ArtworkView();
    sub_10019304C(&qword_1009777D0, &type metadata accessor for ArtworkView);
    v3 = v2;
    AnyHashable.init<A>(_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_1000C36CC(v4);
  }
}

uint64_t sub_10019304C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10019309C()
{
  sub_10002849C(&qword_10097A790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B73E0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  v1 = sub_100397278(inited);
  swift_setDeallocating();
  sub_10002849C(&qword_100977870);
  result = swift_arrayDestroy();
  qword_1009777D8 = v1;
  return result;
}

NSNumber sub_10019329C()
{
  sub_10002849C(&qword_100973210);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B48F0;
  sub_100194454();
  *(v0 + 32) = NSNumber.init(floatLiteral:)(0.0);
  v1 = objc_allocWithZone(NSNumber);
  LODWORD(v2) = 1057253870;
  *(v0 + 40) = [v1 initWithFloat:v2];
  result.super.super.isa = NSNumber.init(floatLiteral:)(1.0).super.super.isa;
  *(v0 + 48) = result;
  qword_1009777E8 = v0;
  return result;
}

void sub_10019333C()
{
  sub_10002849C(&qword_100973210);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B48F0;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.32];

  v4 = [v3 CGColor];
  *(v0 + 32) = v4;
  v5 = [v1 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.16];

  v7 = [v6 CGColor];
  *(v0 + 40) = v7;
  v8 = [v1 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.0];

  v10 = [v9 CGColor];
  *(v0 + 48) = v10;
  qword_1009777F0 = v0;
}

NSNumber sub_1001934E0()
{
  sub_10002849C(&qword_100973210);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007BCD60;
  sub_100194454();
  *(v0 + 32) = NSNumber.init(floatLiteral:)(0.0);
  v1 = objc_allocWithZone(NSNumber);
  LODWORD(v2) = 1036831949;
  *(v0 + 40) = [v1 initWithFloat:v2];
  v3 = objc_allocWithZone(NSNumber);
  LODWORD(v4) = 1050141873;
  *(v0 + 48) = [v3 initWithFloat:v4];
  v5 = objc_allocWithZone(NSNumber);
  LODWORD(v6) = 0.5;
  *(v0 + 56) = [v5 initWithFloat:v6];
  result.super.super.isa = NSNumber.init(floatLiteral:)(1.0).super.super.isa;
  *(v0 + 64) = result;
  qword_100977800 = v0;
  return result;
}

void sub_1001935C0()
{
  sub_10002849C(&qword_100973210);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007BCD60;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.0];

  v4 = [v3 CGColor];
  *(v0 + 32) = v4;
  v5 = [v1 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.15];

  v7 = [v6 CGColor];
  *(v0 + 40) = v7;
  v8 = [v1 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.85];

  v10 = [v9 CGColor];
  *(v0 + 48) = v10;
  v11 = [v1 blackColor];
  v12 = [v11 CGColor];

  *(v0 + 56) = v12;
  v13 = [v1 blackColor];
  v14 = [v13 CGColor];

  *(v0 + 64) = v14;
  qword_100977808 = v0;
}

char *sub_1001937B8(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsTopEffect] = 1;
  v4[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsBottomEffect] = 1;
  v9 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_topGradient;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v10 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  *&v4[v10] = [objc_allocWithZone(CAGradientLayer) init];
  v11 = [objc_opt_self() effectWithBlurRadius:50.0];
  v12 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurView;
  v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v4[v12] = v13;
  v14 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradient;
  *&v4[v14] = [objc_allocWithZone(CAGradientLayer) init];
  v15 = &v4[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradientHeight];
  *v15 = 0;
  v15[8] = 1;
  v62.receiver = v4;
  v62.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  v16 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupBlending:0];

  [v16 setUserInteractionEnabled:0];
  v18 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  [*&v16[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurGradientMaskLayer] setAnchorPoint:{0.0, 0.0}];
  v19 = qword_10096D218;
  v20 = *&v16[v18];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_100194454();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v20 setLocations:isa];

  v22 = qword_10096D220;
  v23 = *&v16[v18];
  if (v22 != -1)
  {
    swift_once();
  }

  sub_1002A4E98(qword_100977808);
  v24 = Array._bridgeToObjectiveC()().super.isa;

  [v23 setColors:v24];

  v25 = qword_10096D1F0;
  v26 = *&v16[v18];
  if (v25 != -1)
  {
    swift_once();
  }

  sub_10002849C(&unk_10097A780);
  v27 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v26 setActions:v27];

  v61 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurView;
  v28 = [*&v16[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurView] layer];
  [v28 setMask:*&v16[v18]];

  v29 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradient;
  [*&v16[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradient] setAnchorPoint:{0.0, 0.0}];
  v30 = *&v16[v29];
  sub_10002849C(&qword_100973210);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1007B15F0;
  v32 = v30;
  *(v31 + 32) = NSNumber.init(floatLiteral:)(0.0);
  *(v31 + 40) = NSNumber.init(floatLiteral:)(1.0);
  v33 = Array._bridgeToObjectiveC()().super.isa;

  [v32 setLocations:v33];

  v34 = *&v16[v29];
  sub_10002849C(&qword_1009701B0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1007B1890;
  v36 = objc_opt_self();
  v37 = v34;
  v38 = [v36 blackColor];
  v39 = [v38 colorWithAlphaComponent:0.5];

  v40 = [v39 CGColor];
  type metadata accessor for CGColor(0);
  v42 = v41;
  *(v35 + 56) = v41;
  *(v35 + 32) = v40;
  v43 = [v36 blackColor];
  v44 = [v43 colorWithAlphaComponent:0.25];

  v45 = [v44 CGColor];
  *(v35 + 88) = v42;
  *(v35 + 64) = v45;
  v46 = Array._bridgeToObjectiveC()().super.isa;

  [v37 setColors:v46];

  v47 = *&v16[v29];
  v48 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v47 setActions:v48];

  v49 = [*&v16[v61] layer];
  [v49 addSublayer:*&v16[v29]];

  [v16 addSubview:*&v16[v61]];
  v50 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_topGradient;
  [*&v16[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_topGradient] setAnchorPoint:{0.0, 0.0}];
  v51 = qword_10096D200;
  v52 = *&v16[v50];
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = Array._bridgeToObjectiveC()().super.isa;
  [v52 setLocations:v53];

  v54 = qword_10096D208;
  v55 = *&v16[v50];
  if (v54 != -1)
  {
    swift_once();
  }

  sub_1002A4E98(qword_1009777F0);
  v56 = Array._bridgeToObjectiveC()().super.isa;

  [v55 setColors:v56];

  v57 = *&v16[v50];
  v58 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v57 setActions:v58];

  v59 = [v16 layer];
  [v59 addSublayer:*&v16[v50]];

  return v16;
}

id sub_100193FE0()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [v0 bounds];
  Height = CGRectGetHeight(v15);
  if (qword_10096D1F8 != -1)
  {
    swift_once();
  }

  v2 = Height * *&qword_1009777E0;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_topGradient];
  [v0 bounds];
  MinX = CGRectGetMinX(v16);
  [v0 bounds];
  MinY = CGRectGetMinY(v17);
  [v0 bounds];
  [v3 setFrame:{MinX, MinY, CGRectGetWidth(v18), v2}];
  if (v0[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradientHeight + 8])
  {
    if (qword_10096D210 != -1)
    {
      swift_once();
    }

    v6 = Height * *&qword_1009777F8;
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradientHeight];
  }

  [v0 bounds];
  v7 = CGRectGetMinX(v19);
  [v0 bounds];
  v8 = CGRectGetMaxY(v20) - v6;
  [v0 bounds];
  Width = CGRectGetWidth(v21);
  v10 = *&v0[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurView];
  [v10 setFrame:{v7, v8, Width, v6}];
  v11 = *&v0[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurGradientMaskLayer];
  [v10 bounds];
  [v11 setFrame:?];
  v12 = *&v0[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradient];
  [v10 bounds];
  return [v12 setFrame:?];
}

id sub_10019423C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100194300()
{
  *(v0 + OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsTopEffect) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsBottomEffect) = 1;
  v1 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_topGradient;
  *(v0 + v1) = [objc_allocWithZone(CAGradientLayer) init];
  v2 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  *(v0 + v2) = [objc_allocWithZone(CAGradientLayer) init];
  v3 = [objc_opt_self() effectWithBlurRadius:50.0];
  v4 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurView;
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v3];

  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradient;
  *(v0 + v6) = [objc_allocWithZone(CAGradientLayer) init];
  v7 = v0 + OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradientHeight;
  *v7 = 0;
  *(v7 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100194454()
{
  result = qword_10097FB80;
  if (!qword_10097FB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097FB80);
  }

  return result;
}

id sub_1001944A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v63 = a2;
  v65 = a1;
  v64 = type metadata accessor for ReportConcernReason();
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(ASReportAConcernConfiguration) init];
  v15._countAndFlagsBits = 0xD000000000000014;
  v15._object = 0x80000001008052A0;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  localizedString(_:comment:)(v15, v16);
  v17 = String._bridgeToObjectiveC()();

  [v14 setTitle:v17];

  v18._countAndFlagsBits = 0xD000000000000013;
  v18._object = 0x80000001008052C0;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  localizedString(_:comment:)(v18, v19);
  v20 = String._bridgeToObjectiveC()();

  [v14 setBackTitle:v20];

  v21._object = 0x80000001008052E0;
  v21._countAndFlagsBits = 0xD000000000000015;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  localizedString(_:comment:)(v21, v22);
  v23 = String._bridgeToObjectiveC()();

  [v14 setCancelTitle:v23];

  v24._object = 0x8000000100805300;
  v24._countAndFlagsBits = 0xD000000000000015;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  localizedString(_:comment:)(v24, v25);
  v26 = String._bridgeToObjectiveC()();

  [v14 setSubmitTitle:v26];

  if (a5)
  {
    v27._countAndFlagsBits = 0xD00000000000002ALL;
    v27._object = 0x80000001008053C0;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    localizedString(_:comment:)(v27, v28);
    v29 = String._bridgeToObjectiveC()();

    [v14 setSelectReasonTitle:v29];

    if (a3)
    {
      v30 = String._bridgeToObjectiveC()();
    }

    else
    {
      v30 = 0;
    }

    v42 = v65;
    [v14 setReportConcernExplanation:v30];

    v43._countAndFlagsBits = 0xD000000000000025;
    v43._object = 0x80000001008053F0;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    localizedString(_:comment:)(v43, v44);
    v45 = String._bridgeToObjectiveC()();

    [v14 setPrivacyNote:v45];

    v46 = swift_allocObject();
    *(v46 + 16) = a4;
    *(v46 + 24) = a6;
    v71 = sub_100195F78;
    v72 = v46;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_100195770;
    v70 = &unk_1008B7408;
    v41 = _Block_copy(&aBlock);
  }

  else
  {

    v31._countAndFlagsBits = 0xD00000000000001BLL;
    v31._object = 0x8000000100805320;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    localizedString(_:comment:)(v31, v32);
    v33 = String._bridgeToObjectiveC()();

    [v14 setSelectReasonTitle:v33];

    v34._countAndFlagsBits = 0xD00000000000001ELL;
    v34._object = 0x8000000100805340;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    localizedString(_:comment:)(v34, v35);
    v36 = String._bridgeToObjectiveC()();

    [v14 setSelectReasonSubtitle:v36];

    v37._countAndFlagsBits = 0xD000000000000016;
    v37._object = 0x8000000100805360;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    localizedString(_:comment:)(v37, v38);
    v39 = String._bridgeToObjectiveC()();

    [v14 setPrivacyNote:v39];

    v40 = swift_allocObject();
    *(v40 + 16) = a4;
    *(v40 + 24) = a6;
    v71 = sub_100195F24;
    v72 = v40;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_100195770;
    v70 = &unk_1008B73B8;
    v41 = _Block_copy(&aBlock);

    v42 = v65;
  }

  [v14 setCompletion:v41];
  _Block_release(v41);
  v47 = *(v42 + 16);
  if (v47)
  {
    v60 = v14;
    v61 = v7;
    v62 = a4;
    v63 = a6;
    aBlock = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v48 = v66 + 16;
    v66 = *(v66 + 16);
    v49 = v42 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v50 = *(v48 + 56);
    v51 = v64;
    do
    {
      (v66)(v13, v49, v51);
      v52 = [objc_allocWithZone(ASReportAConcernReason) init];
      ReportConcernReason.id.getter();
      v53 = String._bridgeToObjectiveC()();

      [v52 setReasonID:v53];

      ReportConcernReason.name.getter();
      v54 = String._bridgeToObjectiveC()();

      [v52 setName:v54];

      ReportConcernReason.uppercaseName.getter();
      v55 = String._bridgeToObjectiveC()();

      [v52 setUppercaseName:v55];

      (*(v48 - 8))(v13, v51);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v49 += v50;
      --v47;
    }

    while (v47);

    v14 = v60;
  }

  else
  {
  }

  sub_100195F2C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setReasons:isa];

  v57 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:v14];
  [v57 setModalPresentationStyle:2];

  return v57;
}

uint64_t sub_100194C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  *&v51 = a4;
  v52 = a2;
  v53 = a3;
  v9 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v9 - 8);
  v50 = &v49 - v10;
  v11 = type metadata accessor for ActionMetrics();
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for HttpTemplateSubstitutions();
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001962CC(&_swiftEmptyArrayStorage);
  sub_1001962CC(&_swiftEmptyArrayStorage);
  sub_1001963E0(&_swiftEmptyArrayStorage);
  sub_1001962CC(&_swiftEmptyArrayStorage);
  v17 = v16;
  HttpTemplateSubstitutions.init(urlQuery:headers:jsonBody:formBody:)();
  v57 = a6;
  v18 = HttpTemplateAction.dictionaryBody.getter();
  v63 = v18;
  if (a5)
  {
    if (v18)
    {
      v19 = sub_10019569C(v62, 0x74726F706572, 0xE600000000000000);
      if (*v20)
      {
        sub_10002849C(&qword_100977880);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1007B10D0;
        sub_10002849C(&unk_100984010);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007B1890;
        *(inited + 32) = 1684957547;
        v23 = v52;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = v23;
        *(inited + 56) = v53;
        *(inited + 64) = 0x746E656D6D6F63;
        v24 = v51;
        *(inited + 72) = 0xE700000000000000;
        *(inited + 80) = v24;
        *(inited + 88) = a5;

        v25 = sub_1001962CC(inited);
        swift_setDeallocating();
        sub_10002849C(&unk_100989050);
        swift_arrayDestroy();
        *(v21 + 32) = v25;
        v61 = sub_10002849C(&qword_100977888);
        v60[0] = v21;
        sub_10004ACAC(v60, 0x736E7265636E6F63, 0xE800000000000000);
      }

      (v19)(v62, 0);
    }
  }

  else if (v18)
  {
    v26 = sub_10019569C(v62, 0x74726F706572, 0xE600000000000000);
    if (*v27)
    {
      sub_10002849C(&qword_100977880);
      v28 = swift_allocObject();
      v51 = xmmword_1007B10D0;
      *(v28 + 16) = xmmword_1007B10D0;
      sub_10002849C(&unk_100984010);
      v29 = swift_initStackObject();
      *(v29 + 16) = v51;
      *(v29 + 32) = 1684957547;
      v30 = v52;
      *(v29 + 40) = 0xE400000000000000;
      *(v29 + 48) = v30;
      *(v29 + 56) = v53;

      v31 = sub_1001962CC(v29);
      swift_setDeallocating();
      sub_10002B894(v29 + 32, &unk_100989050);
      *(v28 + 32) = v31;
      v61 = sub_10002849C(&qword_100977888);
      v60[0] = v28;
      sub_10004ACAC(v60, 0x736E7265636E6F63, 0xE800000000000000);
    }

    (v26)(v62, 0);
  }

  v32 = objc_opt_self();
  v62[0] = v63;
  sub_10002849C(&qword_100977890);
  v33 = Optional._bridgeToObjectiveC()();
  v62[0] = 0;
  v34 = [v32 dataWithJSONObject:v33 options:0 error:v62];
  swift_unknownObjectRelease();
  v35 = v62[0];
  if (v34)
  {
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();
    if (v39)
    {
      v40 = v54;
      static ActionMetrics.notInstrumented.getter();
      v44 = dispatch thunk of HttpTemplateAction.makeAction(with:body:actionMetrics:)();
      (*(v55 + 8))(v40, v56);

      v45 = sub_10002849C(&unk_100974490);
      v46 = v49;
      v47 = v50;
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v48 = *(v45 - 8);
      if ((*(v48 + 48))(v47, 1, v45) == 1)
      {
        (*(v58 + 8))(v17, v59);
        sub_100061EE8(v36, v38);

        sub_10002B894(v47, &unk_100972A00);
      }

      else
      {
        sub_1005FA07C(v44, 1, v46, v47);

        sub_100061EE8(v36, v38);

        (*(v58 + 8))(v17, v59);
        (*(v48 + 8))(v47, v45);
      }
    }

    sub_100061EE8(v36, v38);
  }

  else
  {
    v41 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for OSLogger();
  sub_1000056A8(v42, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  (*(v58 + 8))(v17, v59);
}

void (*sub_10019569C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100195F80(v6, a2, a3);
  return sub_100195724;
}

void sub_100195724(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100195770(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a2;
  v6();
}

uint64_t sub_10019582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a4;
  v49 = a5;
  v50 = a2;
  v51 = a3;
  v9 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v9 - 8);
  v45 = &v39 - v10;
  v11 = type metadata accessor for ActionMetrics();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HttpTemplateParameter();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HttpTemplateSubstitutions();
  v46 = *(v17 - 8);
  v47 = v17;
  __chkstk_darwin(v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001962CC(&_swiftEmptyArrayStorage);
  sub_1001962CC(&_swiftEmptyArrayStorage);
  sub_1001963E0(&_swiftEmptyArrayStorage);
  sub_1001962CC(&_swiftEmptyArrayStorage);
  v52 = v19;
  HttpTemplateSubstitutions.init(urlQuery:headers:jsonBody:formBody:)();
  v44 = a6;
  v20 = HttpTemplateAction.parameters.getter();
  v21 = *(v20 + 16);
  if (v21)
  {
    v40 = a7;
    v24 = *(v14 + 16);
    v23 = v14 + 16;
    v22 = v24;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v39 = v20;
    v26 = v20 + v25;
    v27 = *(v23 + 56);
    v24(v16, v20 + v25, v13);
    while (HttpTemplateParameter.key.getter() != 0x64657463656C6573 || v28 != 0xEE006E6F73616552)
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_4;
      }

      if (v49)
      {
        if (HttpTemplateParameter.key.getter() == 0x74616E616C707865 && v30 == 0xEB000000006E6F69)
        {
          break;
        }

        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v31)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      (*(v23 - 8))(v16, v13);
      v26 += v27;
      if (!--v21)
      {

        a7 = v40;
        goto LABEL_17;
      }

      v22(v16, v26, v13);
    }

LABEL_4:
    HttpTemplateSubstitutions.setParameter(value:for:)();
    goto LABEL_5;
  }

LABEL_17:
  v32 = v41;
  static ActionMetrics.notInstrumented.getter();
  v33 = dispatch thunk of HttpTemplateAction.makeAction(with:body:actionMetrics:)();
  v34 = v45;
  v35 = v33;
  (*(v42 + 8))(v32, v43);
  v36 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v34, 1, v36) == 1)
  {

    sub_10002B894(v34, &unk_100972A00);
  }

  else
  {
    sub_1005FA07C(v35, 1, a7, v34);

    (*(v37 + 8))(v34, v36);
  }

  return (*(v46 + 8))(v52, v47);
}

unint64_t sub_100195F2C()
{
  result = qword_100977878;
  if (!qword_100977878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100977878);
  }

  return result;
}

void (*sub_100195F80(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100196298(v7);
  v7[9] = sub_10019608C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10019602C;
}

void sub_10019602C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10019608C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1000072B8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100054848();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10004E85C(v18, a4 & 1);
    v13 = sub_1000072B8(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1001961E4;
}

void sub_1001961E4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_100052CE4(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1001964F0(*(v7 + 48) + 16 * v6);
    sub_1000506A8(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_100196298(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1001962C0;
}

unint64_t sub_1001962CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_100982810);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000072B8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1001963E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_100970CB0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100196544(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000072B8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100056164(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_100196544(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100982880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001965BC()
{
  if (!*&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController])
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 navigationBar];

      if (v3)
      {

        *(sub_10019701C() + 88) = 1;

        v4 = [v0 transitionCoordinator];
        if (v4)
        {
          v5 = v4;
          v6 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16 = sub_10019DBA4;
          v17 = v6;
          aBlock = _NSConcreteStackBlock;
          v13 = 1107296256;
          v14 = sub_1006D1458;
          v15 = &unk_1008B7700;
          v7 = _Block_copy(&aBlock);

          v8 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16 = sub_10019DBC0;
          v17 = v8;
          aBlock = _NSConcreteStackBlock;
          v13 = 1107296256;
          v14 = sub_1006D1458;
          v15 = &unk_1008B7728;
          v9 = _Block_copy(&aBlock);

          [v5 animateAlongsideTransition:v7 completion:v9];
          _Block_release(v9);
          _Block_release(v7);
          swift_unknownObjectRelease();
        }

        else
        {

          v10 = [v0 collectionView];
          if (v10)
          {
            v11 = v10;
            sub_1000423A0(v10);
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

void sub_10019683C()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    if (*(v0 + qword_1009CE4B8) == 1)
    {
      sub_10019701C();
      sub_100041DF8();
    }

    else
    {
      v2 = [v0 transitionCoordinator];
      v3 = sub_10019701C();
      if (v2)
      {
        v11 = sub_10019DB94;
        v12 = v3;
        v7 = _NSConcreteStackBlock;
        v8 = 1107296256;
        v9 = sub_1006D1458;
        v10 = &unk_1008B76B0;
        v4 = _Block_copy(&v7);

        v5 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = sub_10019DB9C;
        v12 = v5;
        v7 = _NSConcreteStackBlock;
        v8 = 1107296256;
        v9 = sub_1006D1458;
        v10 = &unk_1008B76D8;
        v6 = _Block_copy(&v7);

        [v2 animateAlongsideTransition:v4 completion:v6];
        _Block_release(v6);
        _Block_release(v4);
        swift_unknownObjectRelease();
        return;
      }

      sub_100041DF8();
    }
  }
}

void sub_100196A64(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v5 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = (a1 & 8) == 0;

  sub_100062100();
  if ((a1 & 1) == 0 && ((a1 & 2) == 0 || (sub_10006230C() & 1) == 0))
  {
    *(v1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle) = 0;
    goto LABEL_11;
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_18:
    __break(1u);
    return;
  }

  a1 = v6;
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
LABEL_17:

    goto LABEL_18;
  }

  v8 = *(v7 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  *(v1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle) = v8;
  if ((v8 & 1) == 0)
  {
LABEL_11:
    v9 = 2;
    goto LABEL_12;
  }

  v9 = 3;
LABEL_12:
  v10 = [v1 navigationItem];
  [v10 setLargeTitleDisplayMode:v9];
}

char *sub_100196BB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + qword_100977898) = 0x4024000000000000;
  *(v2 + qword_1009778A0) = 0;
  *(v2 + qword_1009778A8) = 0;
  *(v2 + qword_1009CE4B8) = 0;
  *(v2 + qword_1009CE4C0) = 0;
  *(v2 + qword_1009CE4C8) = 0;
  v6 = qword_1009CE4D0;
  type metadata accessor for ProductTitleView();
  *(v3 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v3 + qword_1009CE4D8) = 0;
  *(v3 + qword_1009778B0) = 0;
  *(v3 + qword_1009CE4E0) = 0;
  *(v3 + qword_1009CE4E8) = 0;
  *(v3 + qword_1009778C0) = 0;
  v7 = qword_1009778D0;
  type metadata accessor for ProductPageExtensionBannerScrollObserver();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 1;
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + v7) = v8;
  *(v3 + qword_1009778D8) = 0;
  *(v3 + qword_1009778E0) = &_swiftEmptySetSingleton;
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009778B8) = ASKBagContract.refreshArcadeEntitlementsOnLoadingArcadeView.getter() & 1;
  type metadata accessor for AdvertRotationControllerProvider();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009778C8) = v19;

  v9 = sub_1003B8AE4(a1, a2);
  v10 = qword_1009CF410;
  v11 = *&v9[qword_1009CF410];
  v12 = v9;
  v13 = v11;
  sub_100196F38();
  sub_10019DBC8(&qword_100977ED8, type metadata accessor for ProductTopLockupCollectionElementsObserver);
  CompoundScrollObserver.addChild(_:)();

  v14 = *&v9[v10];

  CompoundScrollObserver.addChild(_:)();

  v15 = *&v9[v10];

  v16 = qword_1009778D0;
  sub_10019DBC8(&qword_100977EE0, type metadata accessor for ProductPageExtensionBannerScrollObserver);

  CompoundScrollObserver.addChild(_:)();

  v17 = *&v12[v16];
  sub_10002849C(&qword_100977EE8);

  BaseObjectGraph.injectIfAvailable<A>(_:)();

  *(v17 + 40) = v20;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_100196F38()
{
  v1 = qword_1009778D8;
  if (*&v0[qword_1009778D8])
  {
    v2 = *&v0[qword_1009778D8];
  }

  else
  {
    type metadata accessor for ProductTopLockupCollectionElementsObserver();
    swift_allocObject();

    v3 = v0;
    v2 = sub_10032E8C4();

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_10019701C()
{
  v1 = qword_1009778A8;
  if (*(v0 + qword_1009778A8))
  {
    v2 = *(v0 + qword_1009778A8);
  }

  else
  {
    type metadata accessor for UberedPageScrollObserver();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 88) = 1;
    *(v2 + 24) = &off_1008B7460;
    swift_unknownObjectWeakAssign();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = *(v2 + 72);
    *(v2 + 72) = sub_10019D1B0;
    *(v2 + 80) = v3;

    sub_10001F63C(v4);

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_100197130()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AutomationSemantics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SystemImage();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v43[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v1;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, "viewDidLoad", v9);
  (*(v8 + 104))(v11, enum case for SystemImage.squareAndArrowUp(_:), v7);
  v12 = static SystemImage.load(_:with:)();
  (*(v8 + 8))(v11, v7);
  v13 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v12 style:0 target:v1 action:"share:"];

  [v13 setHidden:1];
  v14 = v13;
  v15._object = 0x80000001008056C0;
  v15._countAndFlagsBits = 0xD00000000000002ALL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  localizedString(_:comment:)(v15, v16);
  v17 = String._bridgeToObjectiveC()();

  [v14 setTitle:v17];

  v18 = v14;
  v19._countAndFlagsBits = 0xD00000000000002BLL;
  v19._object = 0x80000001008056F0;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  localizedString(_:comment:)(v19, v20);
  v21 = String._bridgeToObjectiveC()();

  [v18 setAccessibilityLabel:v21];

  v22 = qword_1009778B0;
  v23 = *&v1[qword_1009778B0];
  *&v1[qword_1009778B0] = v18;
  v24 = v18;

  v25 = *&v1[v22];
  if (v25)
  {
    v44 = 0u;
    v45 = 0u;
    memset(v43, 0, sizeof(v43));
    v26 = v25;
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10002B894(v43, &unk_1009711D0);
    sub_10002B894(&v44, &unk_1009711D0);
    sub_100005744(0, &qword_100983870);
    UIAccessibilityIdentification.setAutomationSemantics(_:)();

    (*(v4 + 8))(v6, v3);
  }

  v27 = [v1 navigationItem];
  v28 = [v27 rightBarButtonItems];

  if (v28)
  {
    sub_100005744(0, &qword_100983870);
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  *&v43[0] = v29;
  if (v29 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v30 = v24;
  sub_1004A6D30(0, 0, v30);

  v31 = [v1 navigationItem];
  sub_100005744(0, &qword_100983870);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v31 setRightBarButtonItems:isa];

  sub_10019701C();
  sub_10019DBC8(&qword_100977FD8, type metadata accessor for UberedPageScrollObserver);
  CompoundScrollObserver.addChild(_:)();

  v33 = [v1 navigationItem];
  [v33 setTitleView:*&v1[qword_1009CE4D0]];

  v34 = [v1 collectionView];
  if (!v34)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v35 = v34;
  v44 = 0u;
  v45 = 0u;
  static AutomationSemantics.page(name:id:)();
  sub_10002B894(&v44, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v4 + 8))(v6, v3);
  v36 = [v1 view];
  if (!v36)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v37 = v36;
  sub_10002849C(&qword_10097B110);
  v38 = swift_allocObject();
  v42 = xmmword_1007B10D0;
  *(v38 + 16) = xmmword_1007B10D0;
  *(v38 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v38 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005744(0, &qword_100972EB0);
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v39 = [v1 view];
  if (v39)
  {
    v40 = v39;

    v41 = swift_allocObject();
    *(v41 + 16) = v42;
    *(v41 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v41 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    UIView.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1001978A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionViewLayout];
    [v2 invalidateLayout];

    v3 = [v1 collectionView];
    if (v3)
    {
      v4 = v3;
      [v3 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100197950()
{
  v0 = type metadata accessor for ProductDiffablePagePresenter.PageWidth();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    v6 = [v5 traitCollection];
    v7 = UITraitCollection.isSizeClassCompact.getter();

    v8 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
    if ((v7 & 1) == 0)
    {
      v8 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
    }

    (*(v1 + 104))(v3, *v8, v0);
    ProductDiffablePagePresenter.didChangePageWidth(_:)();

    (*(v1 + 8))(v3, v0);
    v9 = [v5 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100197B08(void *a1)
{
  v1 = a1;
  sub_100197130();
}

uint64_t sub_100197B50(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EntitlementRefeshCondition();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewWillAppear:", a1 & 1, v11);
  sub_1001965BC();
  if (*(v2 + qword_1009778B8) == 1)
  {
    v14 = qword_1009778C0;
    if ((*(v2 + qword_1009778C0) & 1) == 0)
    {
      type metadata accessor for ArcadeSubscriptionManager();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v15 = v17[1];
      *v13 = 1;
      (*(v10 + 104))(v13, enum case for EntitlementRefeshCondition.ifCacheIsExpired(_:), v9);
      ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)();

      (*(v10 + 8))(v13, v9);
      *(v2 + v14) = 1;
    }
  }

  (*(v6 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v5);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v6 + 8))(v8, v5);
}

void sub_100197DCC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100197B50(a3);
}

uint64_t sub_100197E48(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10002849C(&unk_100974490);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v11);
  v2[qword_1009CE4C0] = 1;
  v14 = qword_1009CE4C8;
  if ((v2[qword_1009CE4C8] & 1) == 0)
  {
    v15 = ProductDiffablePagePresenter.appPromotionDetailPageAction.getter();
    if (v15)
    {
      v16 = v15;
      v2[v14] = 1;
      v17 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      sub_1005F9AF4(v16, 1, v17, v8);

      (*(v6 + 8))(v8, v5);
    }
  }

  (*(v10 + 104))(v13, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.didAppear(_:), v9);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v10 + 8))(v13, v9);
}

void sub_1001980B0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100197E48(a3);
}

void sub_100198104(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a3);
  sub_10019683C();
}

void sub_10019817C(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1001982B0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1, v7);
  v10 = *(v6 + 104);
  v10(v9, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willDisappear(_:), v5);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  v11 = *(v6 + 8);
  v11(v9, v5);
  if ([v2 isMovingFromParentViewController])
  {
    v10(v9, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v5);
    AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
    v11(v9, v5);
  }

  return sub_10019843C();
}

uint64_t sub_10019843C()
{
  v1 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  result = ProductDiffablePagePresenter.pageDisappearedAction.getter();
  if (result)
  {
    v5 = result;
    v6 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
    v7 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {

      return sub_10002B894(v3, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(v5, 1, v6, v3);

      return (*(v8 + 8))(v3, v7);
    }
  }

  return result;
}

void sub_1001985C0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001982B0(a3);
}

void sub_100198614(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_10019DC64;
    v17 = v7;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1006D1458;
    v15 = &unk_1008B7638;
    v8 = _Block_copy(&v12);

    [a1 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    v16 = sub_10019DB8C;
    v17 = v9;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1006D1458;
    v15 = &unk_1008B7688;
    v10 = _Block_copy(&v12);
    v11 = v3;

    [a1 animateAlongsideTransition:0 completion:v10];
    _Block_release(v10);
  }
}

void sub_1001987E0(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ProductDiffablePagePresenter.PageWidth();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProductDiffablePagePresenter.reloadProductReviewsSection()();
  v7 = [a2 traitCollection];
  v8 = UITraitCollection.isSizeClassCompact.getter();

  v9 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
  if ((v8 & 1) == 0)
  {
    v9 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
  }

  (*(v4 + 104))(v6, *v9, v3);
  ProductDiffablePagePresenter.didChangePageWidth(_:)();
  (*(v4 + 8))(v6, v3);
  v10 = [a2 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_100198964(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100198614(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_100198A0C(void *a1)
{
  v1 = a1;
  sub_1001989E4();
}

uint64_t sub_100198A7C(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v6 + v15, v22, &unk_10097F510);
  if (v23)
  {
    sub_10002C0AC(v22, v21);
    sub_10002B894(v22, &unk_10097F510);
    v18 = a2;
    v19 = v7;
    sub_10002A400(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v12 + 8))(v14, v11);
    v16 = sub_100007000(v21);
  }

  else
  {
    v16 = sub_10002B894(v22, &unk_10097F510);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v8 + 8))(v10, v7);
}

void sub_100198D20(void *a1)
{
  v1 = a1;
  sub_100198A54();
}

uint64_t sub_100198D68@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BaseShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_10019DBC8(&qword_100977FD0, type metadata accessor for BaseShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_100198E1C()
{
  v17[2] = swift_getObjectType();
  v1 = sub_10002849C(&qword_100977F70);
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v21 = v17 - v2;
  v3 = sub_10002849C(&qword_100977F78);
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = v17 - v4;
  v5 = sub_10002849C(&qword_100977F80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  sub_1004130A0();
  v9 = *(v0 + qword_1009CF3E0);
  v17[0] = v0;
  v17[1] = v9;
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  v10 = sub_100005744(0, &qword_1009729E0);
  v11 = static OS_dispatch_queue.main.getter();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v11;
  sub_10002849C(&unk_10097F550);
  sub_100097060(&qword_100977F88, &unk_10097F550);
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v6 + 8))(v8, v5);
  sub_100007000(v24);
  ProductDiffablePagePresenter.onScrollToPosition.getter();
  v12 = static OS_dispatch_queue.main.getter();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v12;
  sub_10002849C(&qword_100977F90);
  sub_100097060(&qword_100977F98, &qword_100977F90);
  v13 = v18;
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v19 + 8))(v13, v20);
  sub_100007000(v24);
  ProductDiffablePagePresenter.onDownloadingOrderingItemsRemoved.getter();
  v14 = static OS_dispatch_queue.main.getter();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v14;
  sub_10002849C(&qword_100977FA0);
  sub_100097060(&qword_100977FA8, &qword_100977FA0);
  v15 = v21;
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v22 + 8))(v15, v23);
  return sub_100007000(v24);
}

uint64_t sub_100199280(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100977FB8);
  __chkstk_darwin(v2 - 8);
  v73 = v70 - v3;
  v4 = sub_10002849C(&unk_1009731D0);
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v72 = v70 - v5;
  v6 = type metadata accessor for IndexPath();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v77 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100977FC0);
  __chkstk_darwin(v8 - 8);
  v81 = v70 - v9;
  v10 = type metadata accessor for DiffablePageContentIdentifier();
  v11 = *(v10 - 8);
  v82 = v10;
  v83 = v11;
  __chkstk_darwin(v10);
  v76 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v13 - 8);
  v87 = v70 - v14;
  v84 = type metadata accessor for Shelf.ContentType();
  v86 = *(v84 - 8);
  __chkstk_darwin(v84);
  v71 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = v70 - v17;
  __chkstk_darwin(v18);
  v85 = v70 - v19;
  v20 = sub_10002849C(&qword_100975028);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v70 - v22;
  v24 = sub_10002849C(&qword_10097F530);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v70 - v26;
  v28 = sub_10002849C(&qword_100977FC8);
  v29 = a1;
  SnapshotUpdate.contentSnapshot.getter();
  ModelMappedDiffableDataSourceContentSnapshot.identifierSnapshot.getter();
  v30 = *(v25 + 8);
  v30(v27, v24);
  v31 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
  (*(v21 + 8))(v23, v20);
  if (v31 < 1)
  {
    goto LABEL_10;
  }

  v70[2] = v28;
  SnapshotUpdate.contentSnapshot.getter();
  v32 = v87;
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(at:)();
  v30(v27, v24);
  v33 = sub_10002849C(&unk_1009731F0);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v35 = &unk_10098FFB0;
    v36 = v32;
LABEL_9:
    sub_10002B894(v36, v35);
    goto LABEL_10;
  }

  v70[1] = v29;
  swift_getKeyPath();
  v37 = v80;
  ReadOnlyLens.subscript.getter();

  (*(v34 + 8))(v32, v33);
  v39 = v85;
  v38 = v86;
  v40 = v84;
  (*(v86 + 32))(v85, v37, v84);
  v41 = qword_10097F2F8;
  v42 = v88;
  swift_beginAccess();
  v43 = *(v42 + v41);
  if (!v43)
  {
    (*(v38 + 8))(v39, v40);
    swift_endAccess();
    v47 = v81;
    (*(v83 + 56))(v81, 1, 1, v82);
    goto LABEL_8;
  }

  swift_endAccess();
  v44 = v43;
  v45 = v77;
  IndexPath.init(item:section:)();
  v46 = v81;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v47 = v46;
  v87 = *(v78 + 8);
  (v87)(v45, v79);
  v49 = v82;
  v48 = v83;
  if ((*(v83 + 48))(v46, 1, v82) == 1)
  {
    (*(v86 + 8))(v85, v40);
LABEL_8:
    v35 = &qword_100977FC0;
    v36 = v47;
    goto LABEL_9;
  }

  v51 = v76;
  (*(v48 + 32))(v76, v46, v49);
  SnapshotUpdate.contentSnapshot.getter();
  v52 = v30;
  v53 = v73;
  ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)();
  v54 = v27;
  v55 = v53;
  v52(v54, v24);
  v56 = v74;
  v57 = v53;
  v58 = v75;
  if ((*(v74 + 48))(v57, 1, v75) == 1)
  {
    (*(v48 + 8))(v51, v49);
    (*(v86 + 8))(v85, v84);
    v35 = &qword_100977FB8;
    v36 = v55;
    goto LABEL_9;
  }

  v59 = v72;
  (*(v56 + 32))(v72, v55, v58);
  v61 = v85;
  v60 = v86;
  v62 = v71;
  v63 = v84;
  (*(v86 + 16))(v71, v85, v84);
  if ((*(v60 + 88))(v62, v63) != enum case for Shelf.ContentType.productTopLockup(_:))
  {
    (*(v56 + 8))(v59, v58);
    (*(v83 + 8))(v76, v49);
    v69 = *(v60 + 8);
    v69(v61, v63);
    *(v88 + qword_1009778E0) = &_swiftEmptySetSingleton;

    return (v69)(v62, v63);
  }

  ReadOnlyLens.value.getter();
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ProductTopLockup();
  v64 = swift_dynamicCast();
  v65 = v76;
  if (v64)
  {
    if (ProductTopLockup.uber.getter())
    {

      sub_10002849C(&qword_10096FCE8);
      v66 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1007B10D0;
      IndexPath.init(item:section:)();
      v68 = sub_100083BE8(v67);
      swift_setDeallocating();
      (v87)(v67 + v66, v79);
      swift_deallocClassInstance();

      (*(v56 + 8))(v59, v58);
      (*(v83 + 8))(v65, v49);
      (*(v86 + 8))(v85, v84);
      *(v88 + qword_1009778E0) = v68;
    }
  }

  (*(v56 + 8))(v59, v58);
  (*(v83 + 8))(v65, v49);
  (*(v86 + 8))(v85, v84);
LABEL_10:
  *(v88 + qword_1009778E0) = &_swiftEmptySetSingleton;
}

uint64_t (*sub_100199DA4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10019DAB8;
}

void sub_100199E08(uint64_t a1)
{
  v64 = type metadata accessor for IndexPath();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v62 - v6;
  v8 = type metadata accessor for ProductPageScrollPosition();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for ProductPageScrollPosition.topOfPage(_:))
  {
    (*(v9 + 96))(v12, v8);
    v14 = *v12;
    v15 = *(*v12 + 16);
    if (!v15)
    {
LABEL_7:
      v20 = [v65 collectionView];
      if (v20)
      {
        v21 = v20;

        [v21 setContentOffset:1 animated:{0.0, 0.0}];

        return;
      }

      goto LABEL_31;
    }

    v16 = 0;
    while (v16 < *(v14 + 16))
    {
      v17 = [v65 collectionView];
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = v17;
      ++v16;
      IndexPath.init(item:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v2 + 8))(v7, v64);
      [v18 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:1];

      if (v15 == v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v13 != enum case for ProductPageScrollPosition.topOfIndexPath(_:))
  {
    (*(v9 + 8))(v12, v8);
    return;
  }

  (*(v9 + 96))(v12, v8);
  v22 = sub_10002849C(&qword_100977FB0);
  v23 = v12[*(v22 + 48)];
  v24 = *&v12[*(v22 + 64)];
  (*(v2 + 32))(v4, v12, v64);
  v25 = [v65 collectionView];
  if (!v25)
  {
    goto LABEL_32;
  }

  v26 = v25;
  v27 = IndexPath._bridgeToObjectiveC()().super.isa;
  v28 = [v26 layoutAttributesForItemAtIndexPath:v27];

  if (!v28)
  {
    goto LABEL_23;
  }

  [v28 frame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  if (v23)
  {
LABEL_15:
    v63 = v4;
    v41 = *(v24 + 16);
    if (!v41)
    {
LABEL_20:
      v46 = [v65 navigationController];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 navigationBar];

        [v48 frame];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;

        v67.origin.x = v50;
        v67.origin.y = v52;
        v67.size.width = v54;
        v67.size.height = v56;
        MaxY = CGRectGetMaxY(v67);
      }

      else
      {
        MaxY = 0.0;
      }

      v58 = v63;
      v68.origin.x = v30;
      v68.origin.y = v32;
      v68.size.width = v34;
      v68.size.height = v36;
      MinY = CGRectGetMinY(v68);
      v60 = [v65 collectionView];
      if (v60)
      {
        v61 = v60;

        [v61 setContentOffset:1 animated:{0.0, MinY - MaxY}];

        (*(v2 + 8))(v58, v64);
        return;
      }

      goto LABEL_33;
    }

    v42 = 0;
    while (v42 < *(v24 + 16))
    {
      v43 = [v65 collectionView];
      if (!v43)
      {
        goto LABEL_30;
      }

      v44 = v43;
      ++v42;
      IndexPath.init(item:section:)();
      v45 = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v2 + 8))(v7, v64);
      [v44 scrollToItemAtIndexPath:v45 atScrollPosition:0 animated:1];

      if (v41 == v42)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_28;
  }

  v37 = [v65 collectionView];
  if (v37)
  {
    v38 = v37;
    [v37 contentOffset];
    v40 = v39;

    v66.origin.x = v30;
    v66.origin.y = v32;
    v66.size.width = v34;
    v66.size.height = v36;
    if (CGRectGetMinY(v66) < v40)
    {
      goto LABEL_15;
    }

LABEL_23:
    (*(v2 + 8))(v4, v64);

    return;
  }

LABEL_34:
  __break(1u);
}

void (*sub_10019A42C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10019DA94;
}

uint64_t (*sub_10019A490(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10019DA28;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10019DA68;
}

unint64_t sub_10019A520@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageGridCache();
  swift_allocObject();
  v2 = PageGridCache.init()();
  swift_allocObject();
  v3 = PageGridCache.init()();
  a1[3] = &type metadata for ProductPageGridProvider;
  result = sub_10019D9D4();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10019A5A0@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_10019DBC8(&qword_100977F20, type metadata accessor for ProductDiffablePageViewController);
  v2 = ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = ShelfBasedCollectionViewController.collectionElementsObserver.getter();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_1000073E8(v18, v17);
  sub_100056164(v17, v16);
  sub_10002849C(&unk_10097F4D0);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100034090((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1000073E8(v19, v17);
  sub_100056164(v17, v16);
  sub_10002849C(&unk_10097F4D0);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_100034090((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    *(v4 + 2) = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  v10 = type metadata accessor for ProductPageLayoutSectionProvider();
  swift_allocObject();
  sub_10002C0AC(v17, v16);
  sub_10002C0AC(v16, v15);

  v11 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  sub_100007000(v16);
  result = sub_100007000(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

unint64_t sub_10019A8B4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ProductPageShelfLayoutSpacingProvider;
  result = sub_10019D980();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10019A8E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  type metadata accessor for ProductPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_10019DBC8(&qword_100977F30, &type metadata accessor for ProductDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_10019DBC8(&qword_100977F58, type metadata accessor for ProductPageShelfSupplementaryProvider);

  return v2;
}

uint64_t sub_10019A9E8()
{
  swift_getObjectType();
  sub_10019DBC8(&qword_100977F20, type metadata accessor for ProductDiffablePageViewController);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for ProductPageItemSupplementaryViewProvider();
  v0 = swift_allocObject();
  sub_10002C0AC(v3, v0 + 16);
  type metadata accessor for ProductPageSeparatorItemSupplementaryProvider();
  v1 = swift_allocObject();
  sub_100005A38(v3, v1 + 16);
  *(v0 + 56) = v1;
  sub_10019DBC8(&qword_100977F50, type metadata accessor for ProductPageItemSupplementaryViewProvider);
  return v0;
}

id sub_10019AAE4()
{
  v1 = v0;
  swift_getObjectType();
  sub_100739948();
  type metadata accessor for CompoundCollectionElementsObserver();
  if (swift_dynamicCastClass())
  {
    v2 = CompoundCollectionElementsObserver.removingChildren(where:)();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = CompoundCollectionElementsObserver.init(children:)();
  }

  sub_10002849C(&qword_1009717B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B23A0;

  sub_10019701C();
  type metadata accessor for UberedCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 24) = 0;
  swift_weakAssign();

  v5 = sub_10019DBC8(&qword_100975038, type metadata accessor for UberedCollectionElementsObserver);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *&v0[qword_1009778D0];
  v7 = sub_10019DBC8(&qword_100977F08, type metadata accessor for ProductPageExtensionBannerScrollObserver);
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;

  v8 = sub_100196F38();
  v9 = sub_10019DBC8(&qword_100977F10, type metadata accessor for ProductTopLockupCollectionElementsObserver);
  *(v3 + 64) = v8;
  *(v3 + 72) = v9;
  v10 = *&v1[qword_1009CF3F0];
  type metadata accessor for ProductMediaCollectionElementsObserver();
  v11 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  *(v11 + 32) = v10;
  v12 = sub_10019DBC8(&qword_100977F18, type metadata accessor for ProductMediaCollectionElementsObserver);
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  sub_10019DBC8(&qword_100977F20, type metadata accessor for ProductDiffablePageViewController);
  swift_retain_n();

  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  sub_10019DBC8(&qword_100977F28, &type metadata accessor for ProductDiffablePagePresenter);
  sub_10019DBC8(&qword_100977F30, &type metadata accessor for ProductDiffablePagePresenter);
  type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v13 + qword_100973FD8) = 0;
  swift_unknownObjectWeakAssign();
  sub_10002C0AC(v23, v13 + qword_100973FD0);

  v14 = SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)();
  sub_100007000(v23);
  *(v3 + 96) = v14;
  *(v3 + 104) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 24) = &off_1008B7430;
  swift_unknownObjectWeakAssign();
  v16 = sub_10019DBC8(&qword_100977F38, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver);
  *(v3 + 112) = v15;
  *(v3 + 120) = v16;
  CompoundCollectionElementsObserver.addChildren(_:)(v3);

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007B1E00;
  sub_10002849C(&qword_100977F40);
  swift_allocObject();
  swift_retain_n();
  v18 = SearchAdsCollectionElementsObserver.init(presenter:advertControllerProvider:)();
  v19 = sub_100097060(&qword_100977F48, &qword_100977F40);
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v20 = swift_allocObject();
  *(v20 + 16) = 3;
  v21 = sub_10019DBC8(&qword_1009717C8, type metadata accessor for BackgroundConfigurationCollectionElementsObserver);
  *(v17 + 48) = v20;
  *(v17 + 56) = v21;
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();

  result = [v1 collectionView];
  if (result)
  {
    type metadata accessor for SearchImpressionsCollectionElementsObserver();
    swift_allocObject();
    *(v17 + 64) = SearchImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:advertRotationControllerProvider:objectGraph:collectionView:)();
    *(v17 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    CompoundCollectionElementsObserver.addChildren(_:)(v17);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_10019B154()
{
  type metadata accessor for SelectionHandlerCollectionElementsObserver();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for ImpressionsCollectionElementsObserver();
  return swift_dynamicCastClass() != 0;
}

uint64_t sub_10019B1AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100974490);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = sub_10002849C(&qword_100977EF0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  sub_100727668(a1);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    return (*(v9 + 8))(v11, v8);
  }

  (*(v9 + 96))(v11, v8);
  sub_10019B450(*v11);
  if (*(v1 + qword_1009CE4C0) == 1)
  {
    v12 = qword_1009CE4C8;
    if ((*(v1 + qword_1009CE4C8) & 1) == 0)
    {
      v13 = ProductDiffablePagePresenter.appPromotionDetailPageAction.getter();
      if (v13)
      {
        v14 = v13;
        *(v2 + v12) = 1;
        v15 = *(v2 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        sub_1005F9AF4(v14, 1, v15, v7);

        (*(v5 + 8))(v7, v4);
      }
    }
  }

  sub_10019B7FC();
}

void sub_10019B450(uint64_t a1)
{
  v17 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = DynamicPage.presentationOptions.getter();
  v18 = v1;
  sub_100196A64(v8);
  sub_100005744(0, &qword_1009729E0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10019D910;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B7570;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10019DBC8(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_100097060(&qword_100976F60, &unk_1009729F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v20 + 8))(v4, v2);
  (*(v5 + 8))(v7, v19);
  v12 = v18;
  sub_10019BE80();
  v13 = *(v12 + qword_1009778B0);
  if (v13)
  {
    v14 = v13;
    v15 = ShelfBasedProductPage.shareAction.getter();
    if (v15)
    {
    }

    [v14 setHidden:v15 == 0];
  }

  if (ShelfBasedProductPage.uber.getter() && (v16 = Uber.video.getter(), , v16))
  {

    sub_10019BFB0();
  }

  else
  {
    sub_10019C3B8();
  }
}

id sub_10019B7FC()
{
  v32 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v32);
  v33 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for AdamId();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShareSheetData.Metadata();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = ProductDiffablePagePresenter.shareAction.getter();
  if (result)
  {
    v31 = v0;
    type metadata accessor for ShareSheetAction();
    if (swift_dynamicCastClass())
    {
      ShareSheetAction.data.getter();
      ShareSheetData.metadata.getter();

      if ((*(v10 + 88))(v12, v9) != enum case for ShareSheetData.Metadata.product(_:))
      {

        return (*(v10 + 8))(v12, v9);
      }

      (*(v10 + 96))(v12, v9);
      ShareSheetProductMetadata.adamId.getter();
      v14 = AdamId.stringValue.getter();
      v16 = v15;
      (*(v6 + 8))(v8, v5);
      if (!ShareSheetProductMetadata.notesMetadata.getter() || (v17 = ShareSheetNotesMetadata.mediaType.getter(), v19 = v18, , !v19))
      {
        v21 = v16;
        goto LABEL_19;
      }

      v20 = v17 == 0x656C646E7562 && v19 == 0xE600000000000000;
      v21 = v16;
      if (v20)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
LABEL_19:

          ShareSheetAction.data.getter();
          ShareSheetData.url.getter();

          v24 = type metadata accessor for URL();
          (*(*(v24 - 8) + 56))(v4, 0, 1, v24);
          v25 = ShareSheetProductMetadata.name.getter();
          sub_1005E58D8(v14, v21, v4, v25, v26, &v36);
          v39 = v37;
          v40[0] = v36;
          v35 = _swiftEmptyArrayStorage;
          sub_10019D860(v40, v34);
          sub_10019D860(&v39, v34);
          sub_10019DBC8(&unk_100980350, &type metadata accessor for AppEntityVisualState);

          sub_10002849C(&qword_100977EF8);
          sub_100097060(&qword_100980360, &qword_100977EF8);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v34[0] = v36;
          v34[1] = v37;
          v34[2] = v38;
          v27 = objc_allocWithZone(type metadata accessor for AppEntityViewAnnotation());
          sub_10019D8BC();
          v28 = AppEntityViewAnnotation.init<A>(entity:state:)();
          result = [v31 view];
          if (result)
          {
            v29 = result;

            UIView.annotate(with:)();

            sub_1001964F0(v40);
            sub_1001964F0(&v39);
          }

          else
          {
            __break(1u);
          }

          return result;
        }
      }

      *&v36 = v14;
      *(&v36 + 1) = v16;
      *&v34[0] = 0x2D656C646E7562;
      *(&v34[0] + 1) = 0xE700000000000000;
      *&v34[0] = String.init<A>(_:)();
      *(&v34[0] + 1) = v23;
      String.append<A>(contentsOf:)();

      v21 = *(&v34[0] + 1);
      v14 = *&v34[0];
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_10019BE18()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_100196F38();

    sub_10032E3E0();
  }

  return result;
}

void sub_10019BE80()
{
  if (*(v0 + qword_1009778A0) != 1)
  {
LABEL_7:
    v5 = [v0 collectionView];
    if (!v5)
    {
      return;
    }

    goto LABEL_8;
  }

  v1 = [v0 view];
  if (!v1)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v2 = v1;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

    goto LABEL_13;
  }

  v4 = *(v3 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [v0 collectionView];
  if (!v5)
  {
    return;
  }

LABEL_8:
  v6 = v5;
  [v5 frame];
  [v6 setFrame:?];
}

void sub_10019BFB0()
{
  v1 = v0;
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1009CE4E0;
  v8 = *&v1[qword_1009CE4E0];
  if (v8)
  {
    v9 = *&v1[qword_1009CE4E0];
  }

  else
  {
    (*(v3 + 104))(v6, enum case for SystemImage.speakerSlashFill(_:), v2, v4);
    v10 = static SystemImage.load(_:with:)();
    (*(v3 + 8))(v6, v2);
    v11 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v10 style:0 target:0 action:0];

    v9 = v11;
    v12._object = 0x80000001008021C0;
    v12._countAndFlagsBits = 0xD00000000000002BLL;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    localizedString(_:comment:)(v12, v13);
    v14 = String._bridgeToObjectiveC()();

    [v9 setTitle:v14];

    v15._countAndFlagsBits = 0xD00000000000002CLL;
    v15._object = 0x8000000100802190;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    localizedString(_:comment:)(v15, v16);
    v17 = String._bridgeToObjectiveC()();

    [v9 setAccessibilityLabel:v17];

    [v9 setHidden:1];
    v18 = *&v1[v7];
    *&v1[v7] = v9;

    v8 = 0;
  }

  v19 = v8;
  v20 = [v1 navigationItem];
  v21 = [v20 rightBarButtonItems];

  if (v21 && (sub_100005744(0, &qword_100983870), v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v21, v32 = v9, __chkstk_darwin(v23), *(&v31 - 2) = &v32, v24 = sub_10003D668(sub_10019D918, (&v31 - 4), v22), , (v24 & 1) == 0))
  {
    v25 = [v1 navigationItem];
    v26 = [v25 rightBarButtonItems];

    if (v26)
    {
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v27 = _swiftEmptyArrayStorage;
    }

    v32 = v27;
    v28 = v9;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v29 = [v1 navigationItem];
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v29 setRightBarButtonItems:isa];
  }

  else
  {
  }
}

void sub_10019C3B8()
{
  v1 = *&v0[qword_1009CE4E0];
  if (v1)
  {
    v13 = v1;
    v2 = [v0 navigationItem];
    v3 = [v2 rightBarButtonItems];

    if (v3 && (sub_100005744(0, &qword_100983870), v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v3, v5 = sub_10045DBD4(v13, v4), v7 = v6, , (v7 & 1) == 0))
    {
      v8 = [v0 navigationItem];
      v9 = [v8 rightBarButtonItems];
      if (v9)
      {
        v10 = v9;
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v11)
        {
          v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v12.super.isa = 0;
        }

        [v8 setRightBarButtonItems:v12.super.isa];
      }

      else
      {
        [v8 setRightBarButtonItems:0];
      }
    }
  }
}

void sub_10019C584()
{
  if (*(*&v0[qword_1009778E0] + 16))
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if ((v4 & 1) == 0)
        {
        }

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10019C624(uint64_t result)
{
  *(v1 + qword_1009CF400) = result;
  if (result)
  {
    *(v1 + qword_1009CE4B8) = 1;
  }

  return result;
}

void sub_10019C64C()
{
  *(v0 + qword_1009778A0) = 1;
  *(sub_100196F38() + 72) = 1;

  sub_10019BE80();
}

void sub_10019C694()
{
  *(v0 + qword_1009778A0) = 0;
  *(sub_100196F38() + 72) = 0;

  sub_10019BE80();
}

uint64_t sub_10019C6D0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_10097CCA0);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_100118188(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1001181EC(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10002849C(&unk_10097CCB0);
  sub_100118248(&v9[*(v19 + 48)], v18);
  DiffablePagePresenter.pageUrl.getter();
  v20 = *(v4 + 48);
  sub_100031660(v15, v6, &qword_100982460);
  sub_100031660(v18, &v6[v20], &qword_100982460);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100031660(v6, v12, &qword_100982460);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_10019DBC8(&qword_100975040, &type metadata accessor for URL);
      v26 = v21;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10002B894(v15, &qword_100982460);
      sub_10002B894(v18, &qword_100982460);
      v27(v12, v2);
      sub_10002B894(v6, &qword_100982460);
      return v23 & 1;
    }

    sub_10002B894(v15, &qword_100982460);
    sub_10002B894(v18, &qword_100982460);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10002B894(v15, &qword_100982460);
  sub_10002B894(v18, &qword_100982460);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10002B894(v6, &unk_10097CCA0);
    goto LABEL_9;
  }

  sub_10002B894(v6, &qword_100982460);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_10019CB8C(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v34[0]) = 0;
  *&v16[0] = a1;
  *(v16 + 8) = 0u;
  *(&v16[1] + 8) = 0u;
  BYTE8(v16[2]) = 0;
  __asm { FMOV            V0.2D, #10.0 }

  v17 = _Q0;
  v18 = _Q0;
  v19 = 15;
  sub_100005744(0, &qword_1009729E0);
  v11 = a1;
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (a1)
  {
    v23 = xmmword_100975F60;
    v24 = xmmword_100975F70;
    v20 = xmmword_100975F30;
    v21 = xmmword_100975F40;
    v22 = xmmword_100975F50;
    v28 = v16[2];
    v29 = v17;
    v30 = v18;
    v26 = v16[0];
    v27 = v16[1];
    v32[0] = xmmword_100975F30;
    v32[1] = xmmword_100975F40;
    v32[3] = xmmword_100975F60;
    v32[4] = xmmword_100975F70;
    v25 = qword_100975F80;
    v31 = v19;
    v33 = qword_100975F80;
    v32[2] = xmmword_100975F50;
    sub_100031660(&v20, v34, &unk_10097F520);
    xmmword_100975F50 = v28;
    xmmword_100975F60 = v29;
    xmmword_100975F70 = v30;
    qword_100975F80 = v31;
    xmmword_100975F30 = v26;
    xmmword_100975F40 = v27;
    sub_10002B894(v32, &unk_10097F520);
    v15[3] = sub_100005744(0, &qword_100983870);
    v15[0] = v11;
    v13 = v11;
    sub_10019DADC(v16, v34);
    ProductDiffablePagePresenter.didSelectShare(sender:)();
    sub_10002B894(v15, &unk_1009711D0);
    v34[2] = xmmword_100975F50;
    v34[3] = xmmword_100975F60;
    v34[4] = xmmword_100975F70;
    v34[0] = xmmword_100975F30;
    v34[1] = xmmword_100975F40;
    xmmword_100975F30 = v20;
    xmmword_100975F40 = v21;
    xmmword_100975F50 = v22;
    xmmword_100975F60 = v23;
    v35 = qword_100975F80;
    xmmword_100975F70 = v24;
    qword_100975F80 = v25;
    sub_10002B894(v34, &unk_10097F520);
    return sub_10019DB38(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10019CE80(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10019CB8C(v4);
}

uint64_t sub_10019CEE8()
{
}

uint64_t sub_10019CFA8(uint64_t a1)
{
}

uint64_t type metadata accessor for ProductDiffablePageViewController()
{
  result = qword_100977910;
  if (!qword_100977910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019D218(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for TimingCurve();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &aBlock[-1] - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v19 = *&Strong[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarAppearanceProgress], v20 = Strong[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarAppearanceProgress + 8], Strong, v20 == 1))
  {
    if (a2 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v19 != a2)
  {
LABEL_4:
    static TimingCurve.easingCurve1.getter();
    TimingCurve.controlPoint1.getter();
    v22 = v21;
    v24 = v23;
    v25 = *(v12 + 8);
    v25(v17, v11);
    static TimingCurve.easingCurve1.getter();
    TimingCurve.controlPoint2.getter();
    v27 = v26;
    v29 = v28;
    v25(v14, v11);
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = a2;
    v31 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = a5;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = a6;
    v32 = _Block_copy(aBlock);

    v33 = [v31 initWithDuration:v32 controlPoint1:a3 controlPoint2:v22 animations:{v24, v27, v29}];
    _Block_release(v32);
    [v33 startAnimation];
  }
}

void sub_10019D4D0(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarAppearanceProgress;
    *v4 = a1;
    *(v4 + 8) = 0;
    sub_1000625B0();
  }
}

void sub_10019D548(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v4)
    {
      v5 = v4;
      sub_100005744(0, &qword_1009711C0);
      v6 = v3;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        if ([a1 isCancelled])
        {
          sub_10019701C();
          sub_100041DF8();
        }
      }
    }
  }
}

void sub_10019D644(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([a1 isCancelled])
    {
      v4 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v4)
      {
        v5 = v4;
        sub_100005744(0, &qword_1009711C0);
        v6 = v3;
        v7 = static NSObject.== infix(_:_:)();

        if ((v7 & 1) != 0 && !*&v6[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController])
        {
          v8 = v6;
          v9 = [v8 navigationController];
          if (v9)
          {
            v10 = v9;
            v11 = [v9 navigationBar];

            if (v11)
            {

              sub_10019701C();
              v12 = [v8 collectionView];

              if (!v12)
              {
                __break(1u);
                return;
              }

              sub_1000423A0(v12);

              v8 = v12;
            }
          }
        }
      }
    }
  }
}

void sub_10019D7C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10019701C();
    v2 = [v1 collectionView];
    if (v2)
    {
      v3 = v2;
      sub_1000423A0(v2);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_10019D8BC()
{
  result = qword_100977F00;
  if (!qword_100977F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977F00);
  }

  return result;
}

unint64_t sub_10019D980()
{
  result = qword_100977F60;
  if (!qword_100977F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977F60);
  }

  return result;
}

unint64_t sub_10019D9D4()
{
  result = qword_100977F68;
  if (!qword_100977F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977F68);
  }

  return result;
}

uint64_t sub_10019DBC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10019DC68()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_100988CC0);

    sub_10019FDD0();
    sub_10019FE1C(&qword_100973A60, sub_10019FDD0);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  sub_10019FDD0();
  sub_10019FE1C(&qword_100973A60, sub_10019FDD0);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  sub_10071C3B8();
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView);
  v6 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView;
  v7 = *(*(v5 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_10019FE1C(&qword_100970E80, &type metadata accessor for ArtworkView);
  v8 = v7;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v9 = *(*(v5 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v10 = *(*(v5 + v6) + OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon);
  if (v10)
  {
    v11 = *&v10[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_tileIconArtworkView];
    v12 = v10;
    v13 = v11;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

    v14 = *&v12[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView];
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

uint64_t sub_10019DF50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v6 - 8);
  v94 = &v73 - v7;
  v93 = type metadata accessor for OfferButtonSubtitlePosition();
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009701A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v92 = &v73 - v11;
  v12 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v12 - 8);
  v96 = &v73 - v13;
  v14 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v14 - 8);
  v97 = &v73 - v15;
  v16 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v16 - 8);
  v18 = &v73 - v17;
  v19 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v19 - 8);
  v99 = &v73 - v20;
  v21 = sub_10002849C(&qword_100974528);
  __chkstk_darwin(v21 - 8);
  v23 = &v73 - v22;
  v24 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v24 - 8);
  v89 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v98 = &v73 - v27;
  sub_1007204CC(a1, a2);
  v28 = *(v2 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView);
  if (ContingentOffer.additionalInfo.getter())
  {
    v29 = Paragraph.text.getter();
  }

  else
  {
    v29 = 0;
  }

  [*(v28 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_learnMoreLabel) setAttributedText:v29];

  v30 = *(v3 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView);
  v31 = ContingentOffer.offerLockup.getter();
  v32 = sub_10002849C(&unk_100973240);
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v35 = v98;
  v88 = v33 + 56;
  v34(v98, 1, 1, v32);
  v36 = type metadata accessor for MediaOverlayStyle();
  (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  v37 = type metadata accessor for OfferStyle();
  (*(*(v37 - 8) + 56))(v99, 1, 1, v37);
  type metadata accessor for InAppPurchaseLockup();
  v38 = swift_dynamicCastClass();
  v39 = *(v30 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView);
  if (v38)
  {
    v82 = v34;
    v83 = v32;
    v86 = v23;
    v40 = v38;
    v41 = v39;
    v42 = type metadata accessor for OfferEnvironment();
    v95 = a2;
    v76 = v42;
    v43 = *(v42 - 8);
    v78 = *(v43 + 56);
    v87 = v43 + 56;
    v78(v18, 1, 1, v42);
    v85 = v10;
    v79 = v31;
    v77 = *(v10 + 56);
    v44 = v97;
    v77(v97, 1, 1, v9);
    v45 = v30;
    v46 = type metadata accessor for OfferTint();
    v47 = *(v46 - 8);
    v74 = *(v47 + 56);
    v75 = v47 + 56;
    v48 = v96;
    v74(v96, 1, 1, v46);
    swift_retain_n();
    v49 = v98;
    sub_1004F3190(v40, v41, v98, v95, 1, 0, v99, v18, v48, v44);
    sub_10002B894(v48, &unk_100973AD0);
    v41[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    v80 = v41;
    [v41 setNeedsLayout];
    sub_10002B894(v44, &unk_100970150);
    sub_10002B894(v18, &unk_100970160);
    v84 = v45;
    v50 = *&v45[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v81 = v40;
    v51 = v49;
    v52 = InAppPurchaseLockup.parent.getter();
    v53 = v95;
    v78(v18, 1, 1, v76);
    v54 = v53;
    v87 = v9;
    (v77)(v44, 1, 1);
    v74(v48, 1, 1, v46);
    sub_1004F3190(v52, v50, v51, v53, 0, 0, v99, v18, v48, v44);
    sub_10002B894(v48, &unk_100973AD0);
    v50[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v50 setNeedsLayout];

    sub_10002B894(v44, &unk_100970150);
    sub_10002B894(v18, &unk_100970160);
    v55 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
    [*&v50[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v50[v55] setUserInteractionEnabled:0];
    [v50 setHidden:1];
    v56 = v79;
    v57 = Lockup.icon.getter();
    if (v57)
    {
    }

    sub_100709C80(v57 != 0);
    v58 = *&v50[v55];
    v59 = Lockup.offerDisplayProperties.getter();
    v60 = v56;

    v61 = Lockup.buttonAction.getter();

    v62 = v89;
    v82(v89, 1, 1, v83);
    v63 = v90;
    v64 = v93;
    (*(v90 + 104))(v91, enum case for OfferButtonSubtitlePosition.below(_:), v93);
    (*(v63 + 56))(v94, 1, 1, v64);
    sub_10019FE1C(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
    v65 = v92;
    AccessibilityConditional.init(value:axValue:)();
    sub_10064AFA4(v59, v61, 0, v62, v65, v54, 0, 0);

    (*(v85 + 8))(v65, v87);
    sub_10002B894(v62, &unk_100973230);
    v66 = v84;
    sub_1001006C8(v60, v84);

    v23 = v86;
    sub_1005076FC(v66, v86);
    v35 = v98;
  }

  else
  {
    [*(v30 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView) setHidden:1];
    v67 = *(v30 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView);
    v68 = type metadata accessor for OfferEnvironment();
    (*(*(v68 - 8) + 56))(v18, 1, 1, v68);
    v69 = v97;
    (*(v10 + 56))(v97, 1, 1, v9);
    v70 = type metadata accessor for OfferTint();
    v71 = v96;
    (*(*(v70 - 8) + 56))(v96, 1, 1, v70);
    sub_1004F3190(v31, v67, v35, a2, 0, 0, v99, v18, v71, v69);
    sub_10002B894(v71, &unk_100973AD0);
    v67[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v67 setNeedsLayout];
    sub_10002B894(v69, &unk_100970150);
    sub_10002B894(v18, &unk_100970160);
    sub_1005076FC(v30, v23);
  }

  sub_10002B894(v99, &qword_100973AE0);
  sub_10002B894(v23, &qword_100974528);
  return sub_10002B894(v35, &unk_100973230);
}

uint64_t sub_10019EB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v146 = a3;
  v144 = a2;
  v4 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v4 - 8);
  v136 = v117 - v5;
  v135 = type metadata accessor for OfferButtonSubtitlePosition();
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_1009701A0);
  v140 = *(v7 - 8);
  v141 = v7;
  __chkstk_darwin(v7);
  v134 = v117 - v8;
  v9 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v9 - 8);
  v137 = v117 - v10;
  v11 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v11 - 8);
  v139 = v117 - v12;
  v13 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v13 - 8);
  v138 = v117 - v14;
  v15 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v15 - 8);
  v17 = v117 - v16;
  v18 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v18 - 8);
  v20 = v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v117 - v22;
  v24 = sub_10002849C(&qword_100974528);
  __chkstk_darwin(v24 - 8);
  v26 = v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v117 - v28;
  v30 = type metadata accessor for MediaOverlayStyle();
  v31 = *(v30 - 1);
  __chkstk_darwin(v30);
  v143 = v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = v117 - v34;
  type metadata accessor for ContingentOfferDetailPage();
  v36 = a1;
  if (swift_dynamicCastClass())
  {
    v142 = a1;

    v37 = ContingentOfferDetailPage.contingentOffer.getter();
    v39 = v145;
    v38 = v146;
    sub_10019DF50(v37, v146);

    v40 = *(v39 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView);
    v41 = ContingentOfferDetailPage.video.getter();
    v42 = ContingentOfferDetailPage.artwork.getter();
    sub_1000CEA30(v41, v42, v38);

    v43 = *(v39 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView);
    v44 = [v40 backgroundColor];
    [v43 setBackgroundColor:v44];

    ContingentOfferDetailPage.mediaOverlayStyle.getter();
    v45 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v46 = v143;
    (*(v31 + 16))(v143, v39 + v45, v30);
    swift_beginAccess();
    (*(v31 + 24))(v39 + v45, v35, v30);
    swift_endAccess();
    sub_100405408();
    v47 = *(v31 + 8);
    v47(v46, v30);
    v47(v35, v30);
    *(v39 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_includeBorderInDarkMode) = ContingentOfferDetailPage.includeBorderInDarkMode.getter() & 1;
    sub_100407E54(0);
    ContingentOfferDetailPage.contingentOffer.getter();

    v48 = ContingentOffer.offerLockup.getter();
    v49 = v144;
  }

  else
  {
    v127 = v29;
    v50 = v35;
    v51 = v145;
    v129 = v30;
    v126 = v20;
    v128 = v26;
    v131 = v23;
    v130 = v17;
    type metadata accessor for OfferItemDetailPage();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v53 = result;
    v54 = *(v51 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView);
    v142 = v36;

    sub_1000CF378(v53, v146);
    v55 = *(v51 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView);
    v56 = [v54 backgroundColor];
    [v55 setBackgroundColor:v56];

    OfferItemDetailPage.mediaOverlayStyle.getter();
    v57 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v58 = v31;
    v59 = *(v31 + 16);
    v60 = v143;
    v61 = v129;
    v59(v143, v51 + v57, v129);
    swift_beginAccess();
    (*(v58 + 24))(v51 + v57, v50, v61);
    swift_endAccess();
    sub_100405408();
    v62 = *(v58 + 8);
    v62(v60, v61);
    v62(v50, v61);
    *(v51 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_includeBorderInDarkMode) = OfferItemDetailPage.includeBorderInDarkMode.getter() & 1;
    sub_100407E54(0);
    v63 = *(v51 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView);
    if (OfferItemDetailPage.additionalInfo.getter())
    {
      v64 = Paragraph.text.getter();
    }

    else
    {
      v64 = 0;
    }

    v65 = v127;
    [*(v63 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_learnMoreLabel) setAttributedText:v64];

    v66 = *(v51 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView);
    v67 = OfferItemDetailPage.offerItem.getter();
    OfferItemDetailPage.mediaOverlayStyle.getter();
    v68 = *(v58 + 56);
    v68(v65, 0, 1, v61);
    sub_100721850(v67, v146, v65);

    sub_10002B894(v65, &qword_100974528);
    v69 = *(v66 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton);
    OfferItemDetailPage.learnMoreTitle.getter();
    v70 = String._bridgeToObjectiveC()();

    [v69 setTitle:v70 forState:0];

    v71 = *(v66 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
    if (OfferItemDetailPage.additionalInfo.getter())
    {
      v72 = Paragraph.text.getter();
    }

    else
    {
      v72 = 0;
    }

    v73 = v140;
    [v71 setAttributedText:v72];

    v74 = OfferItemDetailPage.offerItem.getter();
    v75 = v128;
    v143 = v53;
    OfferItemDetailPage.mediaOverlayStyle.getter();
    v68(v75, 0, 1, v129);
    v76 = v146;
    sub_100721850(v74, v146, v75);
    v77 = *(v51 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView);
    v145 = v74;
    v78 = OfferItem.offerLockup.getter();
    v79 = sub_10002849C(&unk_100973240);
    v80 = *(v79 - 8);
    v81 = *(v80 + 56);
    v82 = v131;
    v127 = (v80 + 56);
    v81(v131, 1, 1, v79);
    v83 = type metadata accessor for OfferStyle();
    v84 = v130;
    (*(*(v83 - 8) + 56))(v130, 1, 1, v83);
    type metadata accessor for InAppPurchaseLockup();
    v85 = swift_dynamicCastClass();
    v86 = *&v77[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
    if (v85)
    {
      v124 = v81;
      v125 = v79;
      v129 = v77;
      v87 = v85;
      v88 = v86;
      v120 = type metadata accessor for OfferEnvironment();
      v89 = *(v120 - 8);
      v119 = *(v89 + 56);
      v121 = v89 + 56;
      v90 = v138;
      v119(v138, 1, 1, v120);
      v118 = *(v73 + 56);
      v91 = v139;
      v118(v139, 1, 1, v141);
      v92 = type metadata accessor for OfferTint();
      v93 = *(v92 - 8);
      v117[0] = *(v93 + 56);
      v117[1] = v93 + 56;
      v94 = v137;
      (v117[0])(v137, 1, 1, v92);
      swift_retain_n();
      sub_1004F3190(v87, v88, v82, v146, 1, 0, v130, v90, v94, v91);
      sub_10002B894(v94, &unk_100973AD0);
      v88[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_10070AB34();
      v122 = v88;
      [v88 setNeedsLayout];
      sub_10002B894(v91, &unk_100970150);
      sub_10002B894(v90, &unk_100970160);
      v95 = *&v129[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
      v123 = v87;
      v96 = InAppPurchaseLockup.parent.getter();
      v119(v90, 1, 1, v120);
      v118(v91, 1, 1, v141);
      v97 = v92;
      v84 = v130;
      (v117[0])(v94, 1, 1, v97);
      sub_1004F3190(v96, v95, v82, v146, 0, 0, v84, v90, v94, v91);
      sub_10002B894(v94, &unk_100973AD0);
      v95[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_10070AB34();
      [v95 setNeedsLayout];

      sub_10002B894(v91, &unk_100970150);
      sub_10002B894(v90, &unk_100970160);
      v98 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
      [*&v95[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] setAlpha:0.0];
      [*&v95[v98] setUserInteractionEnabled:0];
      [v95 setHidden:1];
      v99 = Lockup.icon.getter();
      if (v99)
      {
      }

      sub_100709C80(v99 != 0);
      v100 = *&v95[v98];
      v101 = Lockup.offerDisplayProperties.getter();

      v102 = Lockup.buttonAction.getter();

      v103 = v126;
      v124(v126, 1, 1, v125);
      v104 = v132;
      v105 = v135;
      (*(v132 + 104))(v133, enum case for OfferButtonSubtitlePosition.below(_:), v135);
      (*(v104 + 56))(v136, 1, 1, v105);
      sub_10019FE1C(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
      v106 = v134;
      AccessibilityConditional.init(value:axValue:)();
      sub_10064AFA4(v101, v102, 0, v103, v106, v146, 0, 0);

      (*(v140 + 8))(v106, v141);
      sub_10002B894(v103, &unk_100973230);
      v107 = v129;
      sub_1001006C8(v78, v129);

      v75 = v128;
      sub_1005076FC(v107, v128);
      v108 = v144;
      v109 = v131;
    }

    else
    {
      [*&v77[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView] setHidden:1];
      v110 = *&v77[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
      v111 = type metadata accessor for OfferEnvironment();
      v112 = v138;
      (*(*(v111 - 8) + 56))(v138, 1, 1, v111);
      v113 = v139;
      (*(v73 + 56))(v139, 1, 1, v141);
      v114 = type metadata accessor for OfferTint();
      v115 = v137;
      (*(*(v114 - 8) + 56))(v137, 1, 1, v114);
      sub_1004F3190(v78, v110, v131, v76, 0, 0, v84, v112, v115, v113);
      v116 = v115;
      v109 = v131;
      sub_10002B894(v116, &unk_100973AD0);
      v110[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_10070AB34();
      [v110 setNeedsLayout];
      sub_10002B894(v113, &unk_100970150);
      sub_10002B894(v112, &unk_100970160);
      sub_1005076FC(v77, v75);
      v108 = v144;
    }

    sub_10002B894(v84, &qword_100973AE0);
    sub_10002B894(v109, &unk_100973230);
    sub_10002B894(v75, &qword_100974528);
    OfferItemDetailPage.offerItem.getter();

    v48 = OfferItem.offerLockup.getter();
    v49 = v108;
  }

  sub_100504CB0(v48, v49);
}

unint64_t sub_10019FDD0()
{
  result = qword_100973120;
  if (!qword_100973120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100973120);
  }

  return result;
}

uint64_t sub_10019FE1C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10019FE64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_presenter] = a1;
  *&v3[OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_objectGraph] = a2;
  v11.receiver = v3;
  v11.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  sub_1001A0AA4(&qword_100978038, v8, type metadata accessor for PersonalizationTransparencyPageViewController);
  v9 = v7;
  dispatch thunk of PersonalizationTransparencyPagePresenter.view.setter();

  return v9;
}

void sub_1001A0034()
{
  v1 = sub_1001A0344();
  v2 = [v0 childViewControllers];
  sub_100065AF0();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_11:

    v7 = 0;
    goto LABEL_12;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  type metadata accessor for GenericAccountPageViewController();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    [v6 willMoveToParentViewController:0];
    v8 = [v7 view];
    if (!v8)
    {
LABEL_28:
      __break(1u);
      return;
    }

    v9 = v8;
    [v8 removeFromSuperview];

    [v7 removeFromParentViewController];
  }

  else
  {
  }

LABEL_12:
  v10 = v1;
  [v0 addChildViewController:v10];
  v11 = [v10 view];
  if (!v11)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = v11;
  v13 = [v0 view];
  if (!v13)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v12 setFrame:{v16, v18, v20, v22}];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v23;
  v25 = [v10 view];

  if (!v25)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v24 addSubview:v25];

  [v10 didMoveToParentViewController:v0];
  v26 = [v0 navigationItem];
  GenericAccountPage.title.getter();
  if (v27)
  {
    v28 = String._bridgeToObjectiveC()();
  }

  else
  {
    v28 = 0;
  }

  [v26 setTitle:v28];
}

id sub_1001A0344()
{
  v1 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_objectGraph);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  type metadata accessor for GenericAccountPagePresenter();
  swift_allocObject();

  v6 = GenericAccountPagePresenter.init(objectGraph:url:page:)();
  v7 = sub_1001A0AA4(&qword_100978028, 255, &type metadata accessor for GenericAccountPagePresenter);

  v8 = sub_10054A47C(v4, v6, v7, _swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100805770);

  v9 = type metadata accessor for GenericAccountPageViewController();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController] = 0;
  *&v10[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_presenter] = v6;
  *&v10[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_objectGraph] = v8;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "initWithStyle:", 2);
}

void sub_1001A0518()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  v3 = [v0 childViewControllers];
  sub_100065AF0();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v3) = Array.isNotEmpty.getter();

  if (v3)
  {
    v4 = OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController;
    v5 = *&v0[OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v6 = *&v0[v4];
    *&v0[v4] = 0;

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 bounds];

      static ViewControllerContainment.add(_:to:frame:)();
      return;
    }

    __break(1u);
  }

  else
  {
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v9 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v10 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    v11 = OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController;
    v12 = *&v1[OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v13 = *&v1[v11];
    *&v1[v11] = v10;
    v14 = v10;

    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];

      static ViewControllerContainment.add(_:to:frame:)();
      return;
    }
  }

  __break(1u);
}

id sub_1001A0758()
{
  v1 = OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001A0820()
{
  v1 = v0;
  type metadata accessor for JUContentUnavailableViewController();
  sub_1001A0AA4(&qword_100978030, 255, &type metadata accessor for PersonalizationTransparencyPagePresenter);
  swift_errorRetain();

  v2 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  v3 = OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v5 = *&v1[v3];
  *&v1[v3] = v2;
  v8 = v2;

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];

    static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001A0AA4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void SmallGameCenterPlayerLayout.Metrics.avatarInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t SmallGameCenterPlayerLayout.Metrics.aliasTopSpace.setter(__int128 *a1)
{
  sub_100007000(v1 + 48);

  return sub_100005A38(a1, v1 + 48);
}

uint64_t SmallGameCenterPlayerLayout.Metrics.displayNameTopSpace.setter(__int128 *a1)
{
  sub_100007000(v1 + 88);

  return sub_100005A38(a1, v1 + 88);
}

uint64_t SmallGameCenterPlayerLayout.Metrics.displayNameBottomSpace.setter(__int128 *a1)
{
  sub_100007000(v1 + 128);

  return sub_100005A38(a1, v1 + 128);
}

double SmallGameCenterPlayerLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_1001A1A3C(a1, v2, a2);
}

uint64_t SmallGameCenterPlayerLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v106 = a1;
  v102 = a2;
  v101 = type metadata accessor for LayoutRect();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for FlankedHorizontalLayout.ViewAlignment();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v66 - v15;
  v98 = type metadata accessor for FlankedHorizontalLayout();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for _VerticalFlowLayout.ExclusionCondition();
  v109 = *(v105 - 8);
  v17 = v109;
  __chkstk_darwin(v105);
  v88 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for _VerticalFlowLayout.Child.HorizontalAlignment();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v85 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for _VerticalFlowLayout.Child.Placement();
  v107 = *(v75 - 8);
  v20 = v107;
  __chkstk_darwin(v75);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v22;
  v90 = type metadata accessor for _VerticalFlowLayout();
  v91 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(v6 + 21, v6[24]);
  v123.origin.x = a3;
  v123.origin.y = a4;
  v123.size.width = a5;
  v123.size.height = a6;
  CGRectGetMinX(v123);
  v124.origin.x = a3;
  v124.origin.y = a4;
  v124.size.width = a5;
  v124.size.height = a6;
  CGRectGetMinY(v124);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10002849C(&qword_10096FE38);
  v24 = *(type metadata accessor for _VerticalFlowLayout.Child() - 8);
  v86 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v87 = v26;
  *(v26 + 16) = xmmword_1007B1890;
  v69 = v26 + v25;
  v103 = v7;
  v27 = v7[34];
  v28 = v7[35];
  v29 = sub_10002A400(v7 + 31, v27);
  v121 = v27;
  v122 = *(v28 + 8);
  v30 = sub_1000056E0(&v120);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  v82 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v31 = *(v20 + 104);
  v83 = v20 + 104;
  v84 = v31;
  v31(v22);
  v81 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v32 = v108;
  v33 = *(v108 + 104);
  v79 = v108 + 104;
  v80 = v33;
  v34 = v85;
  v33(v85);
  v118 = &type metadata for Double;
  v119 = &protocol witness table for Double;
  v117 = 0;
  v78 = sub_10002849C(&unk_10097E8A0);
  v77 = *(v17 + 72);
  v35 = v109;
  v36 = swift_allocObject();
  v76 = xmmword_1007B10D0;
  *(v36 + 16) = xmmword_1007B10D0;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v114 = v36;
  v73 = sub_1001A25E0(&qword_100973E00, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v72 = sub_10002849C(&unk_10097E8B0);
  v74 = sub_1000ED83C();
  v37 = v88;
  v38 = v105;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v39 = v103;
  v40 = v67;
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v41 = *(v35 + 8);
  v109 = v35 + 8;
  v71 = v41;
  v41(v37, v38);
  v42 = *(v32 + 8);
  v108 = v32 + 8;
  v70 = v42;
  v43 = v34;
  v44 = v104;
  v42(v34, v104);
  v45 = *(v107 + 8);
  v107 += 8;
  v68 = v45;
  v46 = v75;
  v45(v40, v75);
  sub_100036530(&v117);
  sub_100007000(&v120);
  v47 = v39;
  v48 = v39[29];
  v49 = v47[30];
  v50 = sub_10002A400(v47 + 26, v48);
  v121 = v48;
  v122 = *(v49 + 8);
  v51 = sub_1000056E0(&v120);
  (*(*(v48 - 8) + 16))(v51, v50, v48);
  v84(v40, v82, v46);
  v80(v43, v81, v44);
  v119 = &protocol witness table for Double;
  v118 = &type metadata for Double;
  v117 = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = v76;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v114 = v52;
  v53 = v105;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v54 = v103;
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v71(v37, v53);
  v70(v43, v44);
  v68(v40, v46);
  sub_100036530(&v117);
  sub_100007000(&v120);
  v55 = v89;
  _VerticalFlowLayout.init(expandChildrenToFit:children:)();
  v56 = v90;
  v121 = v90;
  v122 = sub_1001A25E0(&qword_100975328, &type metadata accessor for _VerticalFlowLayout);
  v57 = sub_1000056E0(&v120);
  v58 = v91;
  (*(v91 + 16))(v57, v55, v56);
  sub_10002C0AC((v54 + 21), &v117);
  v59 = v54[5];
  v115 = &type metadata for CGFloat;
  v116 = &protocol witness table for CGFloat;
  v114 = v59;
  v60 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v61 = *(v93 + 104);
  v62 = v95;
  v61(v92, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v95);
  v113 = 0;
  v112 = 0u;
  v111 = 0u;
  v110[3] = type metadata accessor for ZeroDimension();
  v110[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v110);
  static ZeroDimension.zero.getter();
  v61(v96, v60, v62);
  v63 = v94;
  FlankedHorizontalLayout.init(sublayout:leadingView:leadingMargin:leadingAlignment:trailingView:trailingMargin:trailingAlignment:)();
  v64 = v99;
  FlankedHorizontalLayout.placeChildren(relativeTo:in:)();
  (*(v100 + 8))(v64, v101);
  LayoutRect.init(representing:)();
  (*(v97 + 8))(v63, v98);
  return (*(v58 + 8))(v55, v56);
}

double sub_1001A1A3C(uint64_t a1, void *a2, double a3)
{
  v73 = a1;
  v75 = type metadata accessor for FloatingPointRoundingRule();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for _VerticalFlowLayout.ExclusionCondition();
  v79 = *(v77 - 8);
  v6 = v79;
  __chkstk_darwin(v77);
  v66 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for _VerticalFlowLayout.Child.HorizontalAlignment();
  v80 = *(v76 - 8);
  __chkstk_darwin(v76);
  v59 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for _VerticalFlowLayout.Child.Placement();
  v78 = *(v55 - 8);
  v9 = v78;
  __chkstk_darwin(v55);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v11;
  v70 = type metadata accessor for _VerticalFlowLayout();
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_10096FE38);
  v13 = *(type metadata accessor for _VerticalFlowLayout.Child() - 8);
  v67 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v68 = v15;
  *(v15 + 16) = xmmword_1007B1890;
  v48 = v15 + v14;
  v16 = a2[34];
  v17 = a2[35];
  v18 = sub_10002A400(a2 + 31, v16);
  v86 = v16;
  v87 = *(v17 + 8);
  v19 = sub_1000056E0(v85);
  (*(*(v16 - 8) + 16))(v19, v18, v16);
  v63 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v20 = *(v9 + 104);
  v64 = v9 + 104;
  v65 = v20;
  v20(v11);
  v62 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v21 = *(v80 + 104);
  v60 = v80 + 104;
  v61 = v21;
  v22 = v59;
  v23 = v76;
  v21(v59);
  v83 = &type metadata for Double;
  v84 = &protocol witness table for Double;
  v82 = 0;
  v58 = sub_10002849C(&unk_10097E8A0);
  v57 = *(v6 + 72);
  v24 = v79;
  v51 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v25 = swift_allocObject();
  v56 = xmmword_1007B10D0;
  *(v25 + 16) = xmmword_1007B10D0;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v81 = v25;
  v53 = sub_1001A25E0(&qword_100973E00, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v52 = sub_10002849C(&unk_10097E8B0);
  v54 = sub_1000ED83C();
  v26 = v66;
  v27 = v77;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v47;
  v29 = v22;
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v30 = *(v24 + 8);
  v79 = v24 + 8;
  v50 = v30;
  v31 = v26;
  v30(v26, v27);
  v32 = *(v80 + 8);
  v80 += 8;
  v49 = v32;
  v32(v29, v23);
  v46 = *(v78 + 8);
  v78 += 8;
  v33 = v28;
  v34 = v55;
  v46(v28, v55);
  sub_100036530(&v82);
  sub_100007000(v85);
  v36 = a2[29];
  v35 = a2[30];
  v37 = sub_10002A400(a2 + 26, v36);
  v86 = v36;
  v87 = *(v35 + 8);
  v38 = sub_1000056E0(v85);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  v65(v33, v63, v34);
  v39 = v76;
  v61(v29, v62, v76);
  v84 = &protocol witness table for Double;
  v83 = &type metadata for Double;
  v82 = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = v56;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v81 = v40;
  v41 = v77;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v50(v31, v41);
  v49(v29, v39);
  v46(v33, v34);
  sub_100036530(&v82);
  sub_100007000(v85);
  v42 = v69;
  _VerticalFlowLayout.init(expandChildrenToFit:children:)();
  sub_1001A25E0(&qword_100978040, &type metadata accessor for _VerticalFlowLayout);
  v43 = v70;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_10002A400(a2 + 16, a2[19]);
  v44 = v72;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v74 + 8))(v44, v75);
  (*(v71 + 8))(v42, v43);
  return a3;
}

uint64_t sub_1001A2400(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_1001A2448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001A24E4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1001A2520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1001A2568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001A25E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001A265C(void *a1)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    swift_getObjectType();
    v2 = a1;
    dispatch thunk of AnyAvatarShowcaseDisplaying.unapply()();
  }
}

uint64_t sub_1001A2724(void *a1, uint64_t a2, uint64_t a3)
{
  v57[1] = a3;
  v61 = a1;
  v3 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v3 - 8);
  v57[0] = v57 - v4;
  v60 = type metadata accessor for ShelfBackground();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Shelf.ContentType();
  v6 = *(v62 - 8);
  __chkstk_darwin(v62);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v57 - v10;
  v12 = sub_10002849C(&unk_1009731D0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v57 - v14;
  v16 = sub_10002849C(&unk_1009731F0);
  v63 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v57 - v17;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();
  v19 = v16;

  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v13 + 8))(v15, v12);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();
  v20 = v62;

  (*(v6 + 32))(v8, v11, v20);
  v21 = (*(v6 + 88))(v8, v20);
  if (v21 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v21 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v6 + 8))(v8, v20);
    swift_getKeyPath();
    v22 = v58;
    ReadOnlyLens.subscript.getter();

    v23 = sub_1001AAD64();
    (*(v59 + 8))(v22, v60);
    v24 = v61;
    if ([v61 overrideUserInterfaceStyle] != v23)
    {
      [v24 setOverrideUserInterfaceStyle:v23];
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v24)
    {
      sub_10002C0AC(v68, v66);
      v25 = v24;
      sub_10002849C(&qword_100973D50);
      sub_10002849C(&unk_100980530);
      if (swift_dynamicCast())
      {
        sub_100177264(v64, v67);
        sub_10002A400(v67, v67[3]);
        if (dispatch thunk of SearchAdOpportunityProviding.searchAdOpportunity.getter())
        {
          SearchAdOpportunity.searchAd.getter();
        }

        swift_getObjectType();
        dispatch thunk of SearchAdDisplaying.apply(searchAd:asPartOf:)();

        sub_100007000(v67);
      }

      else
      {

        v65 = 0;
        memset(v64, 0, sizeof(v64));
        sub_10002B894(v64, &unk_100992FE0);
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v24)
    {
      swift_getObjectType();
      v26 = v24;
      dispatch thunk of AnyAvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)();
    }

    swift_getObjectType();
    v27 = swift_conformsToProtocol2();
    if (v27 && v24)
    {
      v28 = v27;
      ObjectType = swift_getObjectType();
      v30 = v19;
      v31 = *(v28 + 8);
      v32 = v24;
      v33 = v31(ObjectType, v28);
      v19 = v30;
      v34 = v33;
      v35 = (v33 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
      v36 = *(v33 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
      *v35 = 0;
      v35[1] = 0;
      sub_10001F63C(v36);
      [*&v34[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
    }

    v37 = [objc_opt_self() standardUserDefaults];
    v38 = sub_100736BE4();

    if (v38)
    {
      v39 = v61;
      [v61 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v48 = [objc_opt_self() blueColor];
      v49 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
      v50 = sub_10077F3D4(v48, v41, v43, v45, v47);
      v51 = v18;
      sub_10002A400(v68, v68[3]);
      v52 = v57[0];
      dispatch thunk of ViewModel.impressionMetrics.getter();
      sub_10077EFB4(v52);
      sub_10002B894(v52, &qword_100973D30);
      v53 = [v39 contentView];
      v54 = [v53 viewWithTag:58236912];

      [v54 removeFromSuperview];
      v55 = [v39 contentView];
      [v55 addSubview:v50];

      v18 = v51;
    }
  }

  (*(v63 + 8))(v18, v19);
  return sub_100007000(v68);
}

void sub_1001A2FA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v9 - 8);
  v11 = &v38[-1] - v10;
  v12 = sub_10002849C(&unk_1009731F0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38[-1] - v14;
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16 && a1)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    sub_10022125C(a2, a5, ObjectType, v17);
  }

  else
  {
    type metadata accessor for TodayDebugSectionBackgroundView();
    if (swift_dynamicCastClass())
    {
      sub_1005588F0(a2);
    }

    else
    {
      v19 = type metadata accessor for InteractiveSectionBackgroundView();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
        v37 = v19;
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        sub_100711E80(a2, a4, a5);
        v38[3] = v37;
        v38[4] = &off_1008C29C0;
        v38[0] = v21;
        v22 = a1;
        sub_1002B52F4(v38);

        sub_10002B894(v38, &unk_10097E140);
      }
    }
  }

  v23 = [objc_opt_self() standardUserDefaults];
  v24 = sub_100736BE4();

  if (v24)
  {
    [a1 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [objc_opt_self() redColor];
    v34 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
    v35 = sub_10077F3D4(v33, v26, v28, v30, v32);
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v13 + 8))(v15, v12);
    sub_10077EFB4(v11);
    sub_10002B894(v11, &qword_100973D30);
    v36 = [a1 viewWithTag:58236912];
    [v36 removeFromSuperview];

    [a1 addSubview:v35];
  }
}

uint64_t sub_1001A3360(double a1)
{
  v2 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v2 - 8);
  v45 = &v37 - v3;
  v48 = type metadata accessor for PageGrid.HorizontalMargins();
  v54 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v37 - v10;
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_10002849C(&qword_100970EF0);
  v17 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v53 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v43 = v19;
  *(v19 + 16) = xmmword_1007B23A0;
  v20 = v19 + v18;
  v56 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v55 = 16.0;
  v56 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v56 = 0x4030000000000000;
  v55 = a1;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v52 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v54 + 104);
  v54 += 104;
  v27 = v48;
  v26(v5);
  v47 = v26;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v56) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0;
  v44 = v8;
  PageGrid.DirectionalValue.init(_:)();
  v46 = v20;
  v50 = v16;
  v51 = v13;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v56 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v55 = 20.0;
  v56 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v56 = 0x4030000000000000;
  v55 = a1;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  (v26)(v5, v52, v27);
  LOBYTE(v56) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v31 = v53;
  top = UIEdgeInsetsZero.top;
  v40 = left;
  v42 = bottom;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v56 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4030000000000000;
  v55 = a1;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v39 = vdupq_n_s64(0x4041000000000000uLL);
  *v5 = v39;
  v33 = v47;
  v32 = v48;
  (v47)(v5, v52, v48);
  LOBYTE(v56) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v38 = 2 * v31 + v53;
  v56 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4030000000000000;
  v55 = a1;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v5 = v39;
  (v33)(v5, v52, v32);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v56) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v38 = 4 * v53;
  v56 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4030000000000000;
  v55 = a1;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v39 = vdupq_n_s64(0x404A000000000000uLL);
  *v5 = v39;
  v34 = v52;
  v35 = v48;
  (v47)(v5, v52, v48);
  LOBYTE(v56) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v56 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0x4030000000000000;
  v55 = a1;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v5 = v39;
  (v47)(v5, v34, v35);
  LOBYTE(v56) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v56 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v43;
}

uint64_t sub_1001A3D6C(char a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_1009780F8);
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for AdamId();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ScreenshotsDisplayStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  if ((a1 & 1) != 0 && (MixedMediaLockup.screenshotsDisplayStyle.getter(), v14 = *(v8 + 104), v38 = enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v39 = v8 + 104, v37 = v14, v14(v10), sub_1001A4350(), v15 = dispatch thunk of static Equatable.== infix(_:_:)(), v16 = *(v8 + 8), v16(v10, v7), v16(v13, v7), (v15 & 1) == 0))
  {
    Lockup.adamId.getter();
    Lockup.bundleId.getter();
    v36[25] = v17;
    v36[24] = Lockup.icon.getter();
    v18 = Lockup.heading.getter();
    v36[22] = v19;
    v36[23] = v18;
    v20 = Lockup.title.getter();
    v36[20] = v21;
    v36[21] = v20;
    v22 = Lockup.subtitle.getter();
    v36[18] = v23;
    v36[19] = v22;
    v24 = Lockup.developerTagline.getter();
    v36[16] = v25;
    v36[17] = v24;
    v26 = Lockup.editorialTagline.getter();
    v36[14] = v27;
    v36[15] = v26;
    v28 = Lockup.editorialDescription.getter();
    v36[12] = v29;
    v36[13] = v28;
    v30 = Lockup.shortEditorialDescription.getter();
    v36[10] = v31;
    v36[11] = v30;
    v32 = Lockup.ordinal.getter();
    v36[8] = v33;
    v36[9] = v32;
    v36[7] = Lockup.rating.getter();
    v36[6] = Lockup.ratingCount.getter();
    v36[5] = v34;
    v36[4] = Lockup.buttonAction.getter();
    v36[3] = Lockup.offerDisplayProperties.getter();
    v36[2] = Lockup.clickAction.getter();
    v36[1] = Lockup.contextMenuData.getter();
    Lockup.impressionMetrics.getter();
    MixedMediaLockup.overrideLockupPosition.getter();
    MixedMediaLockup.trailers.getter();
    MixedMediaLockup.screenshots.getter();
    v37(v13, v38, v7);
    MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
    MixedMediaLockup.showMetadataInformationInLockup.getter();
    type metadata accessor for MixedMediaLockup();
    swift_allocObject();
    return MixedMediaLockup.init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:overrideLockupPosition:alignedRegionArtwork:alignedRegionVideo:trailers:screenshots:screenshotsDisplayStyle:metadataRibbonItems:searchTagRibbonItems:shouldEvenlyDistributeRibbonItems:showMetadataInformationInLockup:)();
  }

  else
  {
  }

  return v2;
}

unint64_t sub_1001A41FC()
{
  v0 = MixedMediaLockup.screenshots.getter();
  if (v0 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();

    if (v3)
    {
      return 1;
    }
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v1)
    {
      return 1;
    }
  }

  result = MixedMediaLockup.trailers.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_14:

    return 0;
  }

  v6 = result;
  v7 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v4 = Trailers.videos.getter();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

unint64_t sub_1001A4350()
{
  result = qword_100978100;
  if (!qword_100978100)
  {
    type metadata accessor for ScreenshotsDisplayStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978100);
  }

  return result;
}

char *sub_1001A43A8(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC8AppStore18RevealingImageView_isTransitioning] = 0;
  v9 = OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = &v4[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics] = 0;
  v4[OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory] = 7;
  v11 = OBJC_IVAR____TtC8AppStore18RevealingImageView_pageGrid;
  v12 = type metadata accessor for PageGrid();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
  v14 = type metadata accessor for Artwork.URLTemplate();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkHandlerKey;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC8AppStore18RevealingImageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8AppStore18RevealingImageView_mirrorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v24.receiver = v4;
  v24.super_class = type metadata accessor for RevealingImageView();
  v17 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView;
  v19 = *&v17[OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView];
  v20 = v17;
  [v19 setContentMode:2];
  v21 = *&v17[v18];
  v22 = v20;
  [v22 addSubview:v21];
  [v22 setClipsToBounds:1];

  return v22;
}

void sub_1001A4648(char a1)
{
  *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_isTransitioning) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0xC8))(a1 & 1);
  }
}

void sub_1001A4704(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize;
  *v6 = a1;
  *(v6 + 8) = a2;
  v7 = a3 & 1;
  *(v6 + 16) = a3 & 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*((swift_isaMask & *Strong) + 0xF8))(a1, a2, v7);
  }
}

void sub_1001A47D8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *((swift_isaMask & *Strong) + 0x110);
    v5 = Strong;

    v3(v4);
  }
}

void sub_1001A48A8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0x128))(a1);
  }
}

uint64_t sub_1001A4960(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC8AppStore18RevealingImageView_pageGrid;
  swift_beginAccess();
  sub_1001A5ED0(a1, v1 + v6);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100031660(v1 + v6, v5, &qword_10097DBD0);
    (*((swift_isaMask & *v8) + 0x140))(v5);
  }

  return sub_10002B894(a1, &qword_10097DBD0);
}

uint64_t sub_1001A4AB4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8AppStore18RevealingImageView_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    if (v6 != Strong)
    {
      v7 = *(v4 + 8);
      swift_getObjectType();
      v8 = [*(v2 + OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView) image];
      (*(v7 + 8))();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_7:

  return swift_unknownObjectRelease();
}

void sub_1001A4BC4(void *a1)
{
  v3 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong == a1)
    {
    }

    else
    {
      v7 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView);
      v8 = Strong;
      v9 = [v7 image];
      v10 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize);
      v11 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize + 8);
      v12 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize + 16);
      v13 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics);
      v14 = OBJC_IVAR____TtC8AppStore18RevealingImageView_pageGrid;
      swift_beginAccess();
      sub_100031660(v1 + v14, v5, &qword_10097DBD0);
      v15 = *(v1 + OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory);

      sub_1001A5AD8(v9, v10, v11, v12, v13, v5, v15);

      sub_10002B894(v5, &qword_10097DBD0);
    }
  }
}

void sub_1001A4DEC()
{
  v1 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v8 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for PageGrid();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v0[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize];
  if ((v0[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize + 16] & 1) == 0 && *&v0[OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics])
  {
    v42 = v2;
    v17 = *v15;
    v16 = v15[1];
    v18 = OBJC_IVAR____TtC8AppStore18RevealingImageView_pageGrid;
    swift_beginAccess();
    sub_100031660(&v0[v18], v10, &qword_10097DBD0);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10002B894(v10, &qword_10097DBD0);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v19 = v0[OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory];
      if (v19 != 7)
      {

        v20 = v0;
        sub_100699534(v19);
        v21 = v42;
        v22 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
        v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
        if (v19 != 6)
        {
          v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
        }

        if (v19 != 4)
        {
          v22 = v23;
        }

        (*(v42 + 104))(v4, *v22, v1);
        (*(v21 + 32))(v7, v4, v1);
        v24 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();

        (*(v21 + 8))(v7, v1);
        v25 = v20[OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded];
        [v20 bounds];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v34 = [v20 traitCollection];
        v35 = sub_1000F1BB8(v34, v27, v29, v31, v33, v17, v16, v24, v25);
        v37 = v36;
        v39 = v38;
        v41 = v40;

        [*&v20[OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView] setFrame:{v35, v37, v39, v41}];
      }

      (*(v12 + 8))(v14, v11);
    }
  }
}

void sub_1001A5204(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v50 = a10;
  v16 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v16 - 8);
  v51 = &v46 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v49 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&qword_100978190);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v24 = sub_10002849C(&qword_10097A450);
  __chkstk_darwin(v24 - 8);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v46 - v28;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    if (!a1)
    {

      return;
    }

    v47 = a9;
    v48 = a1;
    v32 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    (*(v19 + 16))(v29, a8, v18);
    (*(v19 + 56))(v29, 0, 1, v18);
    v33 = *(v21 + 48);
    sub_100031660(v31 + v32, v23, &qword_10097A450);
    sub_100031660(v29, &v23[v33], &qword_10097A450);
    v34 = *(v19 + 48);
    if (v34(v23, 1, v18) == 1)
    {
      v35 = v48;
      v36 = v48;
      sub_10002B894(v29, &qword_10097A450);
      if (v34(&v23[v33], 1, v18) == 1)
      {
        sub_10002B894(v23, &qword_10097A450);
LABEL_11:
        v42 = type metadata accessor for PageGrid();
        v43 = *(v42 - 8);
        v44 = v51;
        (*(v43 + 16))(v51, v50, v42);
        (*(v43 + 56))(v44, 0, 1, v42);
        v45 = v35;
        sub_1001A5AD8(v35, *&a2, *&a3, 0, v47, v44, a11);

        sub_10002B894(v44, &qword_10097DBD0);
        return;
      }

LABEL_9:
      sub_10002B894(v23, &qword_100978190);

      return;
    }

    sub_100031660(v23, v26, &qword_10097A450);
    v37 = v34(&v23[v33], 1, v18);
    v35 = v48;
    if (v37 == 1)
    {
      v38 = v48;
      sub_10002B894(v29, &qword_10097A450);
      (*(v19 + 8))(v26, v18);
      goto LABEL_9;
    }

    v39 = v49;
    (*(v19 + 32))(v49, &v23[v33], v18);
    sub_1001A5E78();
    v46 = v35;
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    v41 = *(v19 + 8);
    v41(v39, v18);
    sub_10002B894(v29, &qword_10097A450);
    v41(v26, v18);
    v35 = v48;
    sub_10002B894(v23, &qword_10097A450);
    if (v40)
    {
      goto LABEL_11;
    }
  }
}

id sub_1001A5790()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingImageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingImageView()
{
  result = qword_100978170;
  if (!qword_100978170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001A58E8()
{
  sub_1001A5A84(319, &qword_100977370, &type metadata accessor for PageGrid);
  if (v0 <= 0x3F)
  {
    sub_1001A5A84(319, &qword_100978180, &type metadata accessor for Artwork.URLTemplate);
    if (v1 <= 0x3F)
    {
      sub_1001A5A84(319, &qword_100978188, &type metadata accessor for UUID);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001A5A84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1001A5AD8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v47 = a4;
  v15 = sub_10002849C(&qword_10097DBD0);
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v18 = &v43 - v17;
  v19 = *(v8 + OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView);
  v44 = a1;
  v45 = v19;
  [v19 setImage:{a1, v16}];
  v46 = OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics;
  *(v8 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkLayoutWithMetrics) = a5;

  v20 = OBJC_IVAR____TtC8AppStore18RevealingImageView_mirrorDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *((swift_isaMask & *Strong) + 0x110);
    v43 = v20;
    swift_bridgeObjectRetain_n();
    v23(a5);
  }

  else
  {
  }

  v24 = (v8 + OBJC_IVAR____TtC8AppStore18RevealingImageView_artworkSize);
  *v24 = a2;
  v24[1] = a3;
  v25 = v47 & 1;
  *(v24 + 16) = v47 & 1;
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    (*((swift_isaMask & *v26) + 0xF8))(a2, a3, v25);
  }

  sub_100031660(a6, v18, &qword_10097DBD0);
  sub_1001A4960(v18);
  v28 = OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory;
  *(v8 + OBJC_IVAR____TtC8AppStore18RevealingImageView_sizeCategory) = a7;
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    (*((swift_isaMask & *v29) + 0x128))(a7);
  }

  v31 = v8 + OBJC_IVAR____TtC8AppStore18RevealingImageView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(v44, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v36 = [v45 image];
    v37 = *v24;
    v38 = v24[1];
    v39 = *(v24 + 16);
    v40 = *(v8 + v46);
    v41 = OBJC_IVAR____TtC8AppStore18RevealingImageView_pageGrid;
    swift_beginAccess();
    sub_100031660(v8 + v41, v18, &qword_10097DBD0);
    v42 = *(v8 + v28);

    sub_1001A5AD8(v36, v37, v38, v39, v40, v18, v42);

    sub_10002B894(v18, &qword_10097DBD0);
  }

  sub_1001A4DEC();
}