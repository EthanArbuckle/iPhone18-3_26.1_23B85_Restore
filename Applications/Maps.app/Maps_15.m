void sub_1001FFAD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item;
    v7 = *(a2 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item);
    v6 = *(a2 + OBJC_IVAR____TtC4Maps29LibraryListSavedItemCellModel_item + 8);
    v8 = *(v5 + 16);
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9)
        {
          v10 = v9;
          sub_1002007B0(v7, v6, 1);
          v11 = v4;
          [v10 viewController:v11 showCollection:v7];

          swift_unknownObjectRelease();
          sub_100200814(v7, v6, 1);

          return;
        }

        goto LABEL_14;
      }

      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        sub_1002007B0(v7, v6, 2);
        v17 = v4;
        [v16 viewController:v17 enterRouteCreationWith:v7];

        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v7;
      }

      v25 = [objc_opt_self() sharedService];
      if (v25)
      {
        v26 = v25;
        v29 = [v7 mapItemMuid];
        dispatch thunk of CustomStringConvertible.description.getter();
        v27 = String._bridgeToObjectiveC()();

        [v26 captureUserAction:480 onTarget:137 eventValue:{v27, v29}];

        sub_100200814(v7, v6, 2);
        return;
      }
    }

    else
    {
      v12 = swift_unknownObjectWeakLoadStrong();
      v13 = v7;
      swift_unknownObjectRetain();
      if (v12)
      {
        v14 = [v12 mapSelectionManager];
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
      }

      swift_getObjectType();
      sub_1004C3BB4(v14);

      v18 = objc_opt_self();
      v19 = [v18 sharedService];
      if (v19)
      {
        v20 = v19;
        v28 = [v13 _muid];
        dispatch thunk of CustomStringConvertible.description.getter();
        v21 = String._bridgeToObjectiveC()();

        [v20 captureUserAction:478 onTarget:137 eventValue:{v21, v28}];

        v22 = [v18 sharedService];
        if (v22)
        {
          v23 = v22;
          [v22 captureUserAction:2007 onTarget:0 eventValue:0];

          swift_unknownObjectRelease();
LABEL_14:

          return;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }
}

id sub_1001FFE6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_viewModel;
  type metadata accessor for LibraryRecentlyAddedViewModel(0);
  swift_allocObject();
  *&v3[v8] = sub_1003E638C();
  v9 = OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_cellActionHandler;
  type metadata accessor for MapsSyncStore();
  v10 = static MapsSyncStore.sharedStore.getter();
  v11 = type metadata accessor for LibraryDataOperationsProvider();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = v10;
  v21.receiver = v12;
  v21.super_class = v11;
  v13 = objc_msgSendSuper2(&v21, "init");
  v14 = type metadata accessor for LibraryCellActionHandler();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v15[OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_dataOperationsProvider] = v13;
  *&v15[OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_analyticsInfo] = 137;
  v20.receiver = v15;
  v20.super_class = v14;
  *&v4[v9] = objc_msgSendSuper2(&v20, "init");
  if (a2)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v4;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", v16, a3);

  return v17;
}

id sub_100200074(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_viewModel;
  type metadata accessor for LibraryRecentlyAddedViewModel(0);
  swift_allocObject();
  *&v1[v5] = sub_1003E638C();
  v6 = OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_cellActionHandler;
  type metadata accessor for MapsSyncStore();
  v7 = static MapsSyncStore.sharedStore.getter();
  v8 = type metadata accessor for LibraryDataOperationsProvider();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC4Maps29LibraryDataOperationsProvider_mapsSyncStore] = v7;
  v17.receiver = v9;
  v17.super_class = v8;
  v10 = objc_msgSendSuper2(&v17, "init");
  v11 = type metadata accessor for LibraryCellActionHandler();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_actionHandlingUICoordinator + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_dataOperationsProvider] = v10;
  *&v12[OBJC_IVAR____TtC4Maps24LibraryCellActionHandler_analyticsInfo] = 137;
  v16.receiver = v12;
  v16.super_class = v11;
  *&v2[v6] = objc_msgSendSuper2(&v16, "init");
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

void sub_100200218()
{
  sub_1001F4E08(v0 + OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_actionDelegate);

  v1 = *(v0 + OBJC_IVAR____TtC4Maps43LibraryRecentlyAddedContaineeViewController_cellActionHandler);
}

unint64_t sub_1002002F8()
{
  result = qword_101912170;
  if (!qword_101912170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912170);
  }

  return result;
}

uint64_t sub_10020034C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100200748();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
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

uint64_t sub_100200408(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_100100EB8;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_100200748();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100200534@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100200748();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel__onClose);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel__onClose + 8);
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

uint64_t sub_1002005FC(uint64_t *a1)
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
  sub_100200748();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

unint64_t sub_100200748()
{
  result = qword_101912178;
  if (!qword_101912178)
  {
    type metadata accessor for LibraryRecentlyAddedViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912178);
  }

  return result;
}

id sub_1002007B0(id result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {

    return result;
  }

  else if (!a3)
  {
    v4 = result;

    return swift_unknownObjectRetain();
  }

  return result;
}

void sub_100200814(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {

    swift_unknownObjectRelease();
  }
}

id MapsSharedTripAnalyticsHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSharedTripAnalyticsHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id MapsSharedTripAnalyticsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSharedTripAnalyticsHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void _s4Maps0A25SharedTripAnalyticsHelperC19sendSuccessAnalytic3forySo09MSPSharedC7ContactC_tFZ_0(void *a1)
{
  v2 = [objc_opt_self() sharedService];
  if (!v2)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = v2;
  v4 = [v2 destination];

  if (!v4)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v5 = [v4 contact];

  if (!v5)
  {
LABEL_13:
    v18 = objc_opt_self();

    [v18 captureUserAction:104 target:0 value:0];
    return;
  }

  v6 = [a1 contact];
  if (!v6)
  {
    v7 = v5;
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v5 identifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [v7 identifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v9 == v13 && v11 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {

LABEL_12:
      goto LABEL_13;
    }
  }

  v19 = objc_opt_self();
  v20 = String._bridgeToObjectiveC()();
  [v19 captureUserAction:104 target:0 value:v20];
}

uint64_t sub_100200C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for MapsDesignAccessibilityString();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000CE6B8(&qword_1019121A8);
  __chkstk_darwin(v41);
  v40 = &v40 - v6;
  v49 = sub_1000CE6B8(&qword_1019121B0);
  __chkstk_darwin(v49);
  v8 = &v40 - v7;
  v50 = sub_1000CE6B8(&qword_1019121B8);
  v43 = *(v50 - 8);
  __chkstk_darwin(v50);
  v42 = &v40 - v9;
  v46 = sub_1000CE6B8(&qword_1019121C0);
  __chkstk_darwin(v46);
  v48 = &v40 - v10;
  v47 = sub_1000CE6B8(&qword_10190A2F8);
  __chkstk_darwin(v47);
  v12 = &v40 - v11;
  v13 = sub_1000CE6B8(&qword_10191D860);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  swift_getKeyPath();
  v52 = a1;
  sub_10020201C(&qword_1019121C8, type metadata accessor for CarUserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(a1 + 16);
  if (v21)
  {
    __chkstk_darwin(v20);
    *(&v40 - 2) = v21;
    *(&v40 - 1) = a1;

    sub_1000CE6B8(&qword_1019121D0);
    v22 = sub_1000D6664(&qword_1019121D8);
    v23 = sub_100201AD0();
    v52 = v22;
    v53 = v23;
    swift_getOpaqueTypeConformance2();
    v24 = v40;
    List<>.init(content:)();

    sub_100201D88();
    View.scrollAccessoryEdge(_:)();
    sub_100024F64(v24, &qword_1019121A8);
    KeyPath = swift_getKeyPath();
    v26 = v49;
    v27 = &v8[*(v49 + 36)];
    *v27 = KeyPath;
    *(v27 + 1) = 0x4010000000000000;
    v27[16] = 0;
    strcpy(v5, "CarUserGuide");
    v5[13] = 0;
    *(v5 + 7) = -5120;
    v29 = v44;
    v28 = v45;
    (*(v44 + 104))(v5, enum case for MapsDesignAccessibilityString.list(_:), v45);
    v30 = sub_100201E40();
    v31 = v42;
    View.mapsDesignAXContainer(withID:)();
    (*(v29 + 8))(v5, v28);
    sub_100024F64(v8, &qword_1019121B0);
    v32 = v43;
    v33 = v50;
    (*(v43 + 16))(v48, v31, v50);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    v52 = v26;
    v53 = v30;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v32 + 8))(v31, v33);
  }

  else
  {
    ProgressView<>.init<>()();
    v35 = *(v14 + 16);
    v35(v16, v19, v13);
    *v12 = 0;
    v12[8] = 1;
    v36 = sub_1000CE6B8(&qword_10190A408);
    v35(&v12[*(v36 + 48)], v16, v13);
    v37 = &v12[*(v36 + 64)];
    *v37 = 0;
    v37[8] = 1;
    v38 = *(v14 + 8);
    v38(v16, v13);
    sub_100201F34(v12, v48);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    v39 = sub_100201E40();
    v52 = v49;
    v53 = v39;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_100201FA4(v12);
    return (v38)(v19, v13);
  }
}

uint64_t sub_100201380(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_1019121D8);
  __chkstk_darwin(v4);
  v6 = &v8[-v5];
  v9 = a1;
  v10 = a2;
  sub_1000CE6B8(&qword_101912210);
  sub_100201CA4();
  Section<>.init(content:)();
  v11 = static Color.clear.getter();
  *&v6[*(v4 + 36)] = AnyView.init<A>(_:)();
  static VerticalEdge.Set.all.getter();
  sub_100201AD0();
  View.listRowSeparator(_:edges:)();
  return sub_100024F64(v6, &qword_1019121D8);
}

uint64_t sub_1002014CC()
{

  sub_1000CE6B8(&qword_101912248);
  type metadata accessor for UUID();
  sub_1000CE6B8(&qword_10190A438);
  sub_1000414C8(&qword_101912250, &qword_101912248);
  type metadata accessor for PlaceCell();
  sub_10020201C(&qword_10190D640, &type metadata accessor for PlaceCell);
  swift_getOpaqueTypeConformance2();
  sub_10020201C(&qword_101912258, type metadata accessor for CarUserGuideItemRowViewModel);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100201668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v21 = a3;
  v20 = type metadata accessor for MapsDesignAccessibilityString();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CarUserGuideItemRowViewModel();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = type metadata accessor for PlaceCell();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = v7;
  v22[4] = sub_10020201C(&qword_101912260, type metadata accessor for CarUserGuideItemRowViewModel);
  v14 = sub_10001A848(v22);
  sub_100202064(a1, v14);
  sub_100202064(a1, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  sub_1002020C8(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);

  PlaceCell.init(model:tapHandler:)();
  strcpy(v6, "CarUserGuide");
  v6[13] = 0;
  *(v6 + 7) = -5120;
  v17 = v20;
  (*(v4 + 104))(v6, enum case for MapsDesignAccessibilityString.cell(_:), v20);
  sub_10020201C(&qword_10190D640, &type metadata accessor for PlaceCell);
  View.mapsDesignAXContainer(withID:)();
  (*(v4 + 8))(v6, v17);
  return (*(v11 + 8))(v13, v10);
}

void sub_1002019A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for CarUserGuideItemRowViewModel() + 28)) + OBJC_IVAR____TtC4Maps13UserGuideItem_type;
  if ((*(v3 + 8) & 1) == 0)
  {
    v4 = *v3;
    swift_getKeyPath();
    sub_10020201C(&qword_1019121C8, type metadata accessor for CarUserGuideViewModel);
    v5 = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(a1 + 40);
    if (v6)
    {

      v6(v5);
      sub_1000588AC(v6);
    }

    sub_1000F0B8C(v4, 0);
  }
}

unint64_t sub_100201AD0()
{
  result = qword_1019121E0;
  if (!qword_1019121E0)
  {
    sub_1000D6664(&qword_1019121D8);
    sub_100201B88();
    sub_1000414C8(&unk_10191DB80, &qword_10190A368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019121E0);
  }

  return result;
}

unint64_t sub_100201B88()
{
  result = qword_1019121E8;
  if (!qword_1019121E8)
  {
    sub_1000D6664(&qword_1019121F0);
    sub_100201C14();
    sub_1000F05A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019121E8);
  }

  return result;
}

unint64_t sub_100201C14()
{
  result = qword_1019121F8;
  if (!qword_1019121F8)
  {
    sub_1000D6664(&qword_101912200);
    sub_100201CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019121F8);
  }

  return result;
}

unint64_t sub_100201CA4()
{
  result = qword_101912208;
  if (!qword_101912208)
  {
    sub_1000D6664(&qword_101912210);
    type metadata accessor for PlaceCell();
    sub_10020201C(&qword_10190D640, &type metadata accessor for PlaceCell);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912208);
  }

  return result;
}

unint64_t sub_100201D88()
{
  result = qword_101912218;
  if (!qword_101912218)
  {
    sub_1000D6664(&qword_1019121A8);
    sub_1000414C8(&qword_101912220, &qword_101912228);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912218);
  }

  return result;
}

unint64_t sub_100201E40()
{
  result = qword_101912230;
  if (!qword_101912230)
  {
    sub_1000D6664(&qword_1019121B0);
    sub_1000D6664(&qword_1019121A8);
    sub_100201D88();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_101912238, &qword_101912240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912230);
  }

  return result;
}

uint64_t sub_100201F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190A2F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100201FA4(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10190A2F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10020201C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100202064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarUserGuideItemRowViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002020C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarUserGuideItemRowViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10020212C()
{
  v1 = *(type metadata accessor for CarUserGuideItemRowViewModel() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1002019A8(v2, v3);
}

unint64_t sub_100202190()
{
  result = qword_101912268;
  if (!qword_101912268)
  {
    sub_1000D6664(&qword_101912270);
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    sub_1000D6664(&qword_1019121B0);
    sub_100201E40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912268);
  }

  return result;
}

uint64_t sub_10020228C@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MapsDesignAccessibilityString();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[3] = *(v1 + OBJC_IVAR____TtC4Maps26CarUserGuideViewController_viewModel);
  strcpy(v7, "CarUserGuide");
  v7[13] = 0;
  *(v7 + 7) = -5120;
  (*(v4 + 104))(v7, enum case for MapsDesignAccessibilityString.view(_:), v3, v5);
  a1[3] = sub_1000CE6B8(&qword_1019122C0);
  v8 = sub_100202FD8();
  v10[1] = &type metadata for CarUserGuideView;
  v10[2] = v8;
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10001A848(a1);

  View.mapsDesignAXContainer(withID:)();
  (*(v4 + 8))(v7, v3);
}

uint64_t sub_1002024B4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_10020302C(&qword_1019121C8, type metadata accessor for CarUserGuideViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1002025F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v4 = [objc_allocWithZone(SearchResult) initWithMapItem:a1];
      if (v4)
      {
        v5 = v4;
        v6 = [objc_opt_self() sharedInstance];
        if (!v6)
        {
          __break(1u);
          return;
        }

        v7 = v6;
        v8 = v5;
        [v7 displayPlaceCardWithSearchResult:v8];
      }
    }
  }
}

id sub_10020272C(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewDidAppear:", a1 & 1);
  v3 = *(*&v1[OBJC_IVAR____TtC4Maps26CarUserGuideViewController_viewModel] + 24);
  sub_100396914(*(v3 + OBJC_IVAR____TtC4Maps26UserGuideContentController_collectionHandler));
  swift_getKeyPath();
  sub_10020302C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtC4Maps26UserGuideContentController__resolver);
  if (result)
  {
    return [result resolveCollectionIncludingCollectionDetails:1];
  }

  return result;
}

uint64_t sub_1002028B0()
{

  v1 = v0 + OBJC_IVAR____TtC4Maps26CarUserGuideViewController_actionDelegate;

  return sub_1000A09E0(v1);
}

uint64_t type metadata accessor for CarUserGuideViewController()
{
  result = qword_1019122B0;
  if (!qword_1019122B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100202A10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10020302C(&qword_1019121C8, type metadata accessor for CarUserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_100202ABC()
{
  swift_getKeyPath();
  sub_10020302C(&qword_1019121C8, type metadata accessor for CarUserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100202B88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10020302C(&qword_1019121C8, type metadata accessor for CarUserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000F1DB8;
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

uint64_t sub_100202C74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_10020309C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_10020302C(&qword_1019121C8, type metadata accessor for CarUserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

id sub_100202DD0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC4Maps26CarUserGuideViewController_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC4Maps26CarUserGuideViewController_userGuide] = a1;
  type metadata accessor for CarUserGuideViewModel();
  v5 = swift_allocObject();
  v5[5] = 0;
  v5[6] = 0;
  v6 = a1;
  ObservationRegistrar.init()();
  v5[2] = 0;
  v5[4] = v6;
  objc_allocWithZone(type metadata accessor for UserGuideContentController());
  v5[3] = sub_100395C60(v6);
  withObservationTracking<A>(_:onChange:)();
  swift_getKeyPath();
  v9 = v5;
  sub_10020302C(&qword_1019121C8, type metadata accessor for CarUserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  *&v2[OBJC_IVAR____TtC4Maps26CarUserGuideViewController_viewModel] = v5;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "initWithNibName:bundle:", 0, 0);
}

unint64_t sub_100202FD8()
{
  result = qword_1019122C8;
  if (!qword_1019122C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019122C8);
  }

  return result;
}

uint64_t sub_10020302C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002030D4()
{
  swift_getKeyPath();
  sub_10020302C(&qword_1019121C8, type metadata accessor for CarUserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100203178(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

uint64_t sub_1002031B4()
{
  swift_getKeyPath();
  v3 = v0;
  sub_10020302C(&qword_1019121C8, type metadata accessor for CarUserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
  sub_1000D88A8(v1, *(v3 + 48));
  return v1;
}

uint64_t sub_100203268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  sub_1000D88A8(a2, a3);
  return sub_1000588AC(v3);
}

void *sub_1002032B4@<X0>(void *a1@<X8>)
{
  result = sub_1002032E0();
  *a1 = result;
  return result;
}

void *sub_1002032E0()
{
  v1 = sub_1000CE6B8(&qword_1019123A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v35 - v2;
  v46 = type metadata accessor for CarUserGuideItemRowViewModel();
  v41 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = *(v0 + 24);
  swift_getKeyPath();
  v48 = v8;
  sub_10020302C(&unk_10191CE80, type metadata accessor for UserGuideContentController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *&v8[OBJC_IVAR____TtC4Maps26UserGuideContentController__contentState];
  if (!v9)
  {
    return 0;
  }

  v10 = *&v8[OBJC_IVAR____TtC4Maps26UserGuideContentController__contentState + 8];
  v11 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_38:
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v10;

  if (!v12)
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_34:

    return v14;
  }

  v13 = 0;
  v44 = v9 & 0xC000000000000001;
  v42 = (v41 + 56);
  v40 = (v41 + 48);
  v14 = _swiftEmptyArrayStorage;
  v36 = v3;
  v38 = v9;
  v39 = v7;
  v43 = v11;
  while (1)
  {
    if (v44)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(v11 + 16))
      {
        goto LABEL_37;
      }

      v15 = *(v9 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v47 = v14;
    v18 = &v15[OBJC_IVAR____TtC4Maps13UserGuideItem_type];
    if ((v15[OBJC_IVAR____TtC4Maps13UserGuideItem_type + 8] & 1) == 0)
    {
      break;
    }

    v10 = v46;
    (*v42)(v3, 1, 1, v46, 0);

    v19 = (*v40)(v3, 1, v10);
    v11 = v43;
    v14 = v47;
    if (v19 != 1)
    {
      goto LABEL_26;
    }

    sub_100024F64(v3, &qword_1019123A8);
LABEL_7:
    ++v13;
    if (v17 == v12)
    {
      goto LABEL_34;
    }
  }

  v20 = v12;
  v21 = v45;
  v22 = v46;
  v23 = v45 + *(v46 + 20);
  *(v23 + 32) = 0;
  *v23 = 0uLL;
  *(v23 + 16) = 0uLL;
  v24 = (v21 + *(v22 + 24));
  *v24 = 0;
  v24[1] = 0;
  UUID.init()();
  *(v21 + *(v22 + 28)) = v16;
  if (v18[8])
  {
    sub_100024F64(v23, &qword_101921E90);
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0;
    v7 = v39;
    v12 = v20;
LABEL_25:
    v14 = v47;
    sub_1002020C8(v45, v3);
    (*v42)(v3, 0, 1, v46);
    v9 = v38;
    v11 = v43;
LABEL_26:
    sub_1002020C8(v3, v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_100357498(0, v14[2] + 1, 1, v14);
    }

    v10 = v14[2];
    v34 = v14[3];
    if (v10 >= v34 >> 1)
    {
      v14 = sub_100357498(v34 > 1, v10 + 1, 1, v14);
    }

    v14[2] = v10 + 1;
    sub_1002020C8(v7, v14 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v10);
    goto LABEL_7;
  }

  v25 = *v18;
  v37 = v16;
  sub_100203FC0(v25, 0);
  v26 = [v25 _addressFormattedAsCity];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v12 = v20;
  *v24 = v28;
  v24[1] = v30;
  v31 = [v25 _styleAttributes];
  if (!v31)
  {
    result = [objc_opt_self() addressMarkerStyleAttributes];
    if (!result)
    {
      goto LABEL_39;
    }

    goto LABEL_24;
  }

  result = [v25 _styleAttributes];
  if (result)
  {
LABEL_24:
    v33 = result;
    v50 = &type metadata for StyleAttributesImageProvider;
    v51 = sub_10017F24C();

    sub_1000F0B8C(v25, 0);
    v48 = v33;
    v49 = 1;
    sub_100203FCC(&v48, v23);
    v3 = v36;
    v7 = v39;
    goto LABEL_25;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1002038A0(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_10020AAE4(0, 0, v4, &unk_1011F1000, v7);
}

uint64_t sub_1002039C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  type metadata accessor for MainActor();
  *(v4 + 40) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100203A5C, v6, v5);
}

uint64_t sub_100203A5C()
{
  v1 = v0[4];

  withObservationTracking<A>(_:onChange:)();
  v2 = v0[2];
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v0[3] = v1;
  sub_10020302C(&qword_1019121C8, type metadata accessor for CarUserGuideViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100203BD0()
{

  sub_1000588AC(*(v0 + 40));
  v1 = OBJC_IVAR____TtC4Maps21CarUserGuideViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CarUserGuideViewModel()
{
  result = qword_101912300;
  if (!qword_101912300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100203CE0()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100203D94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100203DE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100203E38(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100203E68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1002039C4(a1, v4, v5, v6);
}

void *sub_100203F1C@<X0>(void *a1@<X8>)
{
  result = sub_1002032E0();
  *a1 = result;
  return result;
}

uint64_t sub_100203F84()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

id sub_100203FC0(void *a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100203FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101921E90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10020403C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = [v5 iosBasedChromeViewController];
  v11 = [v10 appCoordinator];

  if (v11)
  {
    if (a3)
    {
      v12[4] = a3;
      v12[5] = a4;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_100039C64;
      v12[3] = &unk_10160A998;
      a3 = _Block_copy(v12);
    }

    [v11 shareItem:a1 presentationOptions:a2 completion:a3];
    _Block_release(a3);
  }
}

uint64_t type metadata accessor for GuidesPickerView()
{
  result = qword_101912408;
  if (!qword_101912408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002042B0()
{
  sub_1002043DC(319, &unk_101912418, type metadata accessor for GuidesPickerViewModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_1002043DC(319, &qword_10190CAE0, &type metadata accessor for ActionBarViewModel, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_1002043DC(319, &qword_10190A258, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002043DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10020446C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for GuidesPickerView();
  v23 = *(v3 - 8);
  v21[1] = *(v23 + 64);
  __chkstk_darwin(v3 - 8);
  v22 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = type metadata accessor for ContainerBackgroundPlacement();
  v5 = *(v21[0] - 8);
  __chkstk_darwin(v21[0]);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_101912468);
  __chkstk_darwin(v8);
  v10 = v21 - v9;
  v11 = sub_1000CE6B8(&qword_101912458);
  __chkstk_darwin(v11);
  v13 = v21 - v12;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v14 = sub_1000CE6B8(&qword_101912488);
  sub_100204820(a1, &v10[*(v14 + 44)]);
  v25 = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  sub_1000414C8(&qword_101912470, &qword_101912468);
  View.containerBackground<A>(_:for:)();
  (*(v5 + 8))(v7, v21[0]);

  sub_100024F64(v10, &qword_101912468);
  v15 = &v13[*(v11 + 36)];
  sub_10020620C(a1, v15);
  *(v15 + *(sub_1000CE6B8(&qword_101912480) + 36)) = 1;
  v16 = *(a1 + 24);
  v25 = *(a1 + 16);
  v26 = v16;
  sub_1000CE6B8(&qword_10190A148);
  State.wrappedValue.getter();
  v17 = v22;
  sub_1002071D8(a1, v22);
  v18 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v19 = swift_allocObject();
  sub_10020723C(v17, v19 + v18);
  sub_10020709C();
  View.actionBar(_:onSelect:)();

  return sub_100024F64(v13, &qword_101912458);
}

uint64_t sub_100204820@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for ScrollBounceBehavior();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000CE6B8(&qword_1019124A0);
  __chkstk_darwin(v47);
  v6 = &v38 - v5;
  v45 = sub_1000CE6B8(&qword_1019124A8);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v38 - v7;
  v44 = sub_1000CE6B8(&qword_1019124B0);
  __chkstk_darwin(v44);
  v9 = &v38 - v8;
  v48 = sub_1000CE6B8(&qword_10190A2F8);
  __chkstk_darwin(v48);
  v11 = &v38 - v10;
  v12 = sub_1000CE6B8(&qword_10191D860);
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v18 = a1[1];
  v50 = *a1;
  v51 = v18;
  sub_1000CE6B8(&qword_101912490);
  State.wrappedValue.getter();
  v19 = v49;
  swift_getKeyPath();
  v50 = v19;
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *&v19[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__state];

  if (v20)
  {
    v22 = v45;
    __chkstk_darwin(v21);
    *(&v38 - 2) = a1;
    *(&v38 - 1) = v20;
    sub_1000CE6B8(&qword_1019124B8);
    sub_1000414C8(&qword_1019124C0, &qword_1019124B8);
    List<>.init(content:)();

    KeyPath = swift_getKeyPath();
    v24 = v47;
    v25 = &v6[*(v47 + 36)];
    *v25 = KeyPath;
    *(v25 + 1) = 0x4024000000000000;
    v25[16] = 0;
    v26 = v39;
    static ScrollBounceBehavior.basedOnSize.getter();
    v27 = static Axis.Set.vertical.getter();
    Axis.Set.init(rawValue:)();
    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v27)
    {
      Axis.Set.init(rawValue:)();
    }

    v28 = sub_100208048();
    v29 = v42;
    View.scrollBounceBehavior(_:axes:)();
    (*(v40 + 8))(v26, v41);
    sub_100024F64(v6, &qword_1019124A0);
    v30 = v43;
    (*(v43 + 16))(v9, v29, v22);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    v50 = v24;
    v51 = v28;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v30 + 8))(v29, v22);
  }

  else
  {
    ProgressView<>.init<>()();
    v32 = v38;
    v33 = *(v38 + 16);
    v33(v14, v17, v12);
    *v11 = 0;
    v11[8] = 1;
    v34 = sub_1000CE6B8(&qword_10190A408);
    v33(&v11[*(v34 + 48)], v14, v12);
    v35 = &v11[*(v34 + 64)];
    *v35 = 0;
    v35[8] = 1;
    v36 = *(v32 + 8);
    v36(v14, v12);
    sub_1000D2DFC(v11, v9, &qword_10190A2F8);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    v37 = sub_100208048();
    v50 = v47;
    v51 = v37;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v11, &qword_10190A2F8);
    return (v36)(v17, v12);
  }
}

uint64_t sub_100204F44@<X0>(unsigned __int8 **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v5 = sub_1000CE6B8(&qword_10190B038);
  __chkstk_darwin(v5 - 8);
  v54 = v43 - v6;
  v50 = type metadata accessor for SectionHeaderViewModel.Size();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v52 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SectionHeaderViewModel();
  __chkstk_darwin(v8 - 8);
  v49 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000CE6B8(&qword_10190AFC8);
  __chkstk_darwin(v53);
  v51 = v43 - v10;
  v60 = sub_1000CE6B8(&qword_1019124F8);
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v47 = v43 - v11;
  v12 = sub_1000CE6B8(&qword_101912500);
  __chkstk_darwin(v12 - 8);
  v61 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v59 = v43 - v15;
  v56 = sub_1000CE6B8(&qword_101912508);
  v16 = *(v56 - 8);
  __chkstk_darwin(v56);
  v44 = v43 - v17;
  v18 = sub_1000CE6B8(&qword_101912510);
  __chkstk_darwin(v18 - 8);
  v57 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v43 - v21;
  v23 = a1[1];
  v55 = *a1;
  v63 = v55;
  v64 = v23;
  sub_1000CE6B8(&qword_101912490);
  State.wrappedValue.getter();
  v24 = v62;
  swift_getKeyPath();
  v63 = v24;
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = v24[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__showsAddToLibrarySection];

  v46 = a1;
  if (v25 == 1)
  {
    v43[1] = v43;
    __chkstk_darwin(v26);
    sub_1000CE6B8(&qword_101912540);
    sub_1000414C8(&qword_101912548, &qword_101912540);
    v27 = v44;
    Section<>.init(content:)();
    sub_10020835C(v27, v22);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = 1;
  v30 = v22;
  (*(v16 + 56))(v22, v28, 1, v56);
  v63 = v55;
  v64 = v23;
  State.wrappedValue.getter();
  v31 = v62;
  swift_getKeyPath();
  v63 = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = v31[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__isLibrarySelected];

  v34 = v59;
  if (v32 == 1)
  {
    __chkstk_darwin(v33);
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v65._object = 0x8000000101223D30;
    v35._countAndFlagsBits = 0x736564697547;
    v36._object = 0x8000000101223D10;
    v65._countAndFlagsBits = 0xD00000000000006DLL;
    v36._countAndFlagsBits = 0xD000000000000017;
    v35._object = 0xE600000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, qword_1019600D8, v35, v65);
    (*(v48 + 104))(v52, enum case for SectionHeaderViewModel.Size.small(_:), v50);
    v37 = type metadata accessor for SectionHeaderViewModel.ActionType();
    (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
    SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
    SectionHeader.init(model:)();
    sub_1000CE6B8(&qword_101912520);
    sub_1001097F8();
    sub_100208214();
    v38 = v47;
    Section<>.init(header:content:)();
    sub_1000AA8A8(v38, v34);
    v29 = 0;
  }

  (*(v58 + 56))(v34, v29, 1, v60);
  v39 = v57;
  sub_1000D2DFC(v22, v57, &qword_101912510);
  v40 = v61;
  sub_1000AA838(v34, v61);
  sub_1000D2DFC(v39, a3, &qword_101912510);
  v41 = sub_1000CE6B8(&qword_101912518);
  sub_1000AA838(v40, a3 + *(v41 + 48));
  sub_100024F64(v34, &qword_101912500);
  sub_100024F64(v30, &qword_101912510);
  sub_100024F64(v40, &qword_101912500);
  return sub_100024F64(v39, &qword_101912510);
}

uint64_t sub_1002057E0(uint64_t a1)
{
  v2 = type metadata accessor for GuidesPickerView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1002071D8(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10020723C(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = a1;
  type metadata accessor for LibraryCell();
  sub_1002084D0(&qword_101912550, &type metadata accessor for LibraryCell);
  return Button.init(action:label:)();
}

uint64_t sub_10020594C()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1002059B8()
{
  sub_1000CE6B8(&qword_101912490);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v1[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__isLibrarySelected] = (v1[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__isLibrarySelected] & 1) == 0;
  sub_10030685C();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_100205B18()
{
  sub_1000CE6B8(&qword_101912490);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  type metadata accessor for ListCellViewModel();
  sub_1002084D0(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  return LibraryCell.init(model:)();
}

uint64_t sub_100205C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuidesPickerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v16 = a1;
  sub_1002071D8(a2, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10020723C(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  sub_1000CE6B8(&qword_101912558);
  sub_1000CE6B8(&qword_101912560);
  sub_1000414C8(&qword_101912568, &qword_101912558);
  v9 = sub_1000D6664(&qword_101912530);
  v10 = sub_100208300();
  v14 = &type metadata for GuidesPickerRow;
  v15 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = v9;
  v15 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1002084D0(&qword_10190C900, type metadata accessor for GuidePickerRowViewModel);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100205E90@<X0>(ValueMetadata **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v21 = type metadata accessor for MapsDesignAccessibilityString();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GuidesPickerView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v22 = sub_1000CE6B8(&qword_101912530);
  v11 = *(v22 - 8);
  __chkstk_darwin(v22);
  v13 = &v21 - v12;
  v14 = *a1;
  sub_1002071D8(a2, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_10020723C(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v24 = v14;
  v25 = sub_100208518;
  v26 = v16;
  strcpy(v7, "GuidesPicker");
  v7[13] = 0;
  *(v7 + 7) = -5120;
  v17 = v21;
  (*(v5 + 104))(v7, enum case for MapsDesignAccessibilityString.cell(_:), v21);
  v18 = sub_100208300();

  View.mapsDesignAXContainer(withID:)();
  (*(v5 + 8))(v7, v17);

  static VerticalEdge.Set.all.getter();
  v24 = &type metadata for GuidesPickerRow;
  v25 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  View.listRowSeparator(_:edges:)();
  return (*(v11 + 8))(v13, v19);
}

void sub_1002061AC(uint64_t a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_101912490);
  State.wrappedValue.getter();
  sub_100305E78(a2);
}

uint64_t sub_10020620C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for CardHeaderSize();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v57 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GuidesPickerView();
  v52 = *(v5 - 8);
  v51 = *(v52 + 64);
  __chkstk_darwin(v5 - 8);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v53 = &v46 - v10;
  v11 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v20 = type metadata accessor for CardHeaderTextViewModel();
  v21 = *(v20 - 8);
  v63 = v20;
  v64 = v21;
  __chkstk_darwin(v20);
  v62 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v61 = &v46 - v24;
  v49 = a1;
  v26 = a1[1];
  v66 = *a1;
  v25 = v66;
  v67 = v26;
  sub_1000CE6B8(&qword_101912490);
  State.wrappedValue.getter();
  v27 = v65;
  v48 = *&v65[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel_title];

  v66 = v25;
  v67 = v26;
  State.wrappedValue.getter();
  v28 = v65;
  v47 = *&v65[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel_subtitle];

  v29 = enum case for MapsDesignAccessibilityString.titleLabel(_:);
  v30 = type metadata accessor for MapsDesignAccessibilityString();
  v31 = *(v30 - 8);
  v32 = *(v31 + 104);
  v32(v19, v29, v30);
  v33 = *(v31 + 56);
  v33(v19, 0, 1, v30);
  v32(v16, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v30);
  v33(v16, 0, 1, v30);
  v32(v13, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v30);
  v33(v13, 0, 1, v30);
  static HorizontalAlignment.center.getter();
  v34 = v61;
  CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
  (*(v64 + 16))(v62, v34, v63);
  v47 = sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  v35 = swift_allocObject();
  v46 = xmmword_1011E1D30;
  *(v35 + 16) = xmmword_1011E1D30;
  v48 = v35;
  v36 = v49;
  v37 = v50;
  sub_1002071D8(v49, v50);
  v38 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v39 = swift_allocObject();
  sub_10020723C(v37, v39 + v38);
  static CardButtonViewModel.close(tintColor:enabled:action:)();

  *(swift_allocObject() + 16) = v46;
  sub_1002071D8(v36, v37);
  v40 = swift_allocObject();
  sub_10020723C(v37, v40 + v38);
  v41 = [objc_opt_self() systemBlueColor];
  static CardButtonViewModel.done(tintColor:enabled:axID:action:)();

  (*(v58 + 104))(v57, enum case for CardHeaderSize.medium(_:), v59);
  v42 = v53;
  CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
  v43 = v55;
  v44 = v56;
  (*(v55 + 16))(v54, v42, v56);
  CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
  (*(v43 + 8))(v42, v44);
  return (*(v64 + 8))(v61, v63);
}

void sub_100206990()
{
  sub_1000CE6B8(&qword_101912490);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *&v2[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__onClose];
  if (v0)
  {

    v0(v1);

    sub_1000588AC(v0);
  }

  else
  {
  }
}

void sub_100206A94()
{
  sub_1000CE6B8(&qword_101912490);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *&v2[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__onConfirmation];
  if (v0)
  {
    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();

    v0(v1);

    sub_1000588AC(v0);
  }

  else
  {
  }
}

void sub_100206C10(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = type metadata accessor for ActionBarItemType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ActionBarItemViewModel.type.getter();
  if ((*(v5 + 88))(v7, v4) == enum case for ActionBarItemType.addToList(_:))
  {
    v8 = a3[1];
    v13 = *a3;
    v14 = v8;
    sub_1000CE6B8(&qword_101912490);
    State.wrappedValue.getter();
    v9 = v12[1];
    swift_getKeyPath();
    v13 = v9;
    sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *&v9[OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__onAddUserGuide];
    if (v10)
    {

      v10(v11);

      sub_1000588AC(v10);
    }

    else
    {
    }
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100206DF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ActionBarItemType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  type metadata accessor for GuidesPickerViewModel();
  State.init(wrappedValue:)();
  v8 = v16;
  *a2 = v15;
  a2[1] = v8;
  sub_1000CE6B8(&qword_101908400);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1011E47B0;
  (*(v5 + 104))(v7, enum case for ActionBarItemType.addToList(_:), v4);
  type metadata accessor for ActionBarItemViewModel();
  swift_allocObject();
  *(v9 + 32) = ActionBarItemViewModel.init(_:)();
  type metadata accessor for ActionBarViewModel();
  swift_allocObject();
  v14 = ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)();
  State.init(wrappedValue:)();
  v10 = v16;
  a2[2] = v15;
  a2[3] = v10;
  v11 = *(type metadata accessor for GuidesPickerView() + 24);
  *(a2 + v11) = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190A1A0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100206FE0()
{
  sub_1000CE6B8(&qword_101912450);
  sub_1000D6664(&qword_101912458);
  sub_10020709C();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_10020709C()
{
  result = qword_101912460;
  if (!qword_101912460)
  {
    sub_1000D6664(&qword_101912458);
    sub_1000D6664(&qword_101912468);
    sub_1000414C8(&qword_101912470, &qword_101912468);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_101912478, &qword_101912480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912460);
  }

  return result;
}

uint64_t sub_1002071D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuidesPickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020723C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuidesPickerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002072A0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for GuidesPickerView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_100206C10(a1, a2, v6);
}

uint64_t sub_100207320@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__state);
}

uint64_t sub_1002073D4()
{
  swift_getKeyPath();
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1002074A0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__onClose);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__onClose + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001574D8;
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

uint64_t sub_100207598(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001574D4;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1002076F4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__onAddUserGuide);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__onAddUserGuide + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100060ED0;
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

uint64_t sub_1002077EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001552C0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100207968@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__onConfirmation);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__onConfirmation + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100207F90;
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

uint64_t sub_100207A60(uint64_t *a1)
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
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100207BBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__selectedUserGuides;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_100207D00@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_100207DDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002084D0(&qword_101912498, type metadata accessor for GuidesPickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps21GuidesPickerViewModel__libraryCellViewModel);
}

uint64_t sub_100207EEC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for GuidesPickerView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_100207FE4@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.listRowSpacing.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100208048()
{
  result = qword_1019124C8;
  if (!qword_1019124C8)
  {
    sub_1000D6664(&qword_1019124A0);
    sub_100208100();
    sub_1000414C8(&qword_101912238, &qword_101912240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019124C8);
  }

  return result;
}

unint64_t sub_100208100()
{
  result = qword_1019124D0;
  if (!qword_1019124D0)
  {
    sub_1000D6664(&qword_1019124D8);
    sub_1000414C8(&qword_1019124E0, &qword_1019124E8);
    sub_1002081B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019124D0);
  }

  return result;
}

unint64_t sub_1002081B8()
{
  result = qword_1019124F0;
  if (!qword_1019124F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019124F0);
  }

  return result;
}

unint64_t sub_100208214()
{
  result = qword_101912528;
  if (!qword_101912528)
  {
    sub_1000D6664(&qword_101912520);
    sub_1000D6664(&qword_101912530);
    sub_100208300();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912528);
  }

  return result;
}

unint64_t sub_100208300()
{
  result = qword_101912538;
  if (!qword_101912538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912538);
  }

  return result;
}

uint64_t sub_10020835C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101912508);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002083CC()
{
  type metadata accessor for GuidesPickerView();

  return sub_10020594C();
}

uint64_t sub_100208450@<X0>(ValueMetadata **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GuidesPickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100205E90(a1, v6, a2);
}

uint64_t sub_1002084D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100208518()
{
  v1 = *(type metadata accessor for GuidesPickerView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1002061AC(v0 + v2, v3);
}

void sub_1002085C0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  if ([Strong isTopContext:v1])
  {
    v4 = OBJC_IVAR____TtC4Maps23TransitSchedulesContext_incidentsViewController;
    v5 = *(v1 + OBJC_IVAR____TtC4Maps23TransitSchedulesContext_incidentsViewController);
    if (a1)
    {
      if (v5)
      {
        sub_100208794();
        v6 = v5;
        v7 = a1;
        v8 = static NSObject.== infix(_:_:)();

        if (v8)
        {
          v9 = *(v1 + v4);
LABEL_10:
          *(v1 + v4) = 0;

          [v12 setNeedsUpdateComponent:@"cards" animated:1];
          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else if (!v5)
    {
      v10 = 0;
      v9 = 0;
      goto LABEL_10;
    }

    [v12 popContext:v1 animated:1 completion:0];
  }

LABEL_13:
}

unint64_t sub_100208794()
{
  result = qword_101912588;
  if (!qword_101912588)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101912588);
  }

  return result;
}

uint64_t sub_1002087F4()
{
  swift_getKeyPath();
  sub_10020A798(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__scrollIndex);
}

uint64_t sub_1002088A4(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__scrollIndex;
  if ((*(v2 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__scrollIndex + 8) & 1) == 0)
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
  sub_10020A798(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1002089E4(uint64_t result, uint64_t a2, char a3)
{
  v3 = result + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__scrollIndex;
  *v3 = a2;
  *(v3 + 8) = a3 & 1;
  return result;
}

uint64_t sub_100208AA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10020A798(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectRemovedPinnedItem);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectRemovedPinnedItem + 8);
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

uint64_t sub_100208BC8(uint64_t *a1)
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
  sub_10020A798(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100208D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v5 = a1;
  return a3(&v5, &v4);
}

uint64_t sub_100208DD0(uint64_t a1, void *a2, void (*a3)(void, void))
{
  swift_getKeyPath();
  sub_10020A798(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v3 + *a2);
  v7 = *v6;
  a3(*v6, v6[1]);
  return v7;
}

uint64_t sub_100208F78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10020A798(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectEditPinnedItem);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectEditPinnedItem + 8);
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

uint64_t sub_100209070(uint64_t *a1)
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
  sub_10020A798(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100209214(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (a1 + *a4);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  a5(a2, a3);
  return a6(v8, v9);
}

uint64_t sub_100209288()
{
  swift_getKeyPath();
  sub_10020A798(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10020932C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10020A798(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1002093E4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;

  LOBYTE(a3) = a3(v7, a1);

  if (a3)
  {
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10020A798(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_100209544(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    sub_10020A798(&qword_101915140, type metadata accessor for HomePinnedItemsProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = sub_10020A250();
    v6 = v5;

    *a1 = v4;
  }

  else
  {
    *a1 = &_swiftEmptyArrayStorage;
    v6 = sub_1000D1554(&_swiftEmptyArrayStorage);
  }

  a1[1] = v6;
}

uint64_t sub_100209670()
{
  v0 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10020AAE4(0, 0, v2, &unk_1011F14B0, v6);
}

uint64_t sub_1002097C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  type metadata accessor for MainActor();
  *(v4 + 64) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020985C, v6, v5);
}

uint64_t sub_10020985C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(swift_task_alloc() + 16) = v2;
    sub_1000CE6B8(&qword_101912618);
    withObservationTracking<A>(_:onChange:)();

    v3 = v0[6];
    sub_1002093E4(v0[5], &OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__pinnedItems, sub_1001F0380);
    sub_1002093E4(v3, &OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__shortcutsByIds, sub_1002264C4);
  }

  v4 = v0[1];

  return v4();
}

id sub_100209A00()
{
  swift_getKeyPath();
  sub_10020A798(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__shortcutsByIds);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; v4; result = [*(*(v1 + 56) + ((v8 << 9) | (8 * v9))) fetchImageIfMissing])
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100209B58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_getKeyPath();
    sub_10020A798(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *&v7[*a4];
    if (v8)
    {

      v8(v7, a1);

      sub_1000588AC(v8);
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for HomePinnedItemCarouselViewModel()
{
  result = qword_101912608;
  if (!qword_101912608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100209DEC()
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_100209EB8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__scrollIndex;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_100209ED8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10020A798(&qword_101915140, type metadata accessor for HomePinnedItemsProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps23HomePinnedItemsProvider__pinnedItems);
}

void *sub_100209FB8(unint64_t a1, uint64_t *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v21 = v3 & 0xFFFFFFFFFFFFFF8;
    v22 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v22)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v21 + 16))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [objc_allocWithZone(SuggestionShortcutsRowCellModel) initWithMapsFavoriteItem:v6];
      v10 = [v7 _maps_diffableDataSourceIdentifier];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *a2;
      *a2 = 0x8000000000000000;
      sub_10012B194(v14, v11, v13, isUniquelyReferenced_nonNull_native);

      *a2 = v23;
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = objc_allocWithZone(type metadata accessor for HomePinnedItemModel());
      sub_100502D04(v14, v7, sub_10020A9E8, v16, sub_10020AA14, v17);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v5;
      v3 = v20;
      if (v8 == i)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t sub_10020A250()
{
  v6 = sub_1000D1554(&_swiftEmptyArrayStorage);
  swift_getKeyPath();
  sub_10020A798(&qword_101915140, type metadata accessor for HomePinnedItemsProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0;

  v3 = sub_100209FB8(v2, &v6);

  v4 = *&v1[OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel_addPinnedItemModel];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v3;
}

id sub_10020A3B0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__scrollIndex];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v1[OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectRemovedPinnedItem];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectAddNewPinnedItem];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v1[OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectOpenPinnedItem];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v1[OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectEditPinnedItem];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v1[OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__shortcutsByIds] = sub_1000D1554(&_swiftEmptyArrayStorage);
  ObservationRegistrar.init()();
  v10 = OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__pinnedItems;
  *&v1[OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__pinnedItems] = &_swiftEmptyArrayStorage;
  *v5 = 0;
  v5[8] = 0;
  *&v1[OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel_pinnedItemsProvider] = a1;
  v11 = objc_allocWithZone(AddShortcutsRowCellModel);
  v12 = a1;
  v13 = [v11 init];
  v14 = objc_allocWithZone(type metadata accessor for HomePinnedItemModel());
  v24 = v13;
  v15 = sub_100502D04(v24, 0, 0, 0, 0, 0);
  *&v2[OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel_addPinnedItemModel] = v15;
  sub_1000CE6B8(&qword_101908400);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1011E47B0;
  *(v16 + 32) = v15;
  v23 = v15;

  *&v2[v10] = v16;
  v26.receiver = v2;
  v26.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v26, "init");
  swift_getKeyPath();
  sub_10020A798(&qword_101915140, type metadata accessor for HomePinnedItemsProvider);
  v18 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = sub_10020A250();
  v21 = v20;

  sub_1002093E4(v19, &OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__pinnedItems, sub_1001F0380);
  sub_1002093E4(v21, &OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__shortcutsByIds, sub_1002264C4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000CE6B8(&qword_101912618);
  withObservationTracking<A>(_:onChange:)();

  sub_1002093E4(v12, &OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__pinnedItems, sub_1001F0380);
  sub_1002093E4(v25, &OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__shortcutsByIds, sub_1002264C4);

  return v18;
}

uint64_t sub_10020A798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_10020A7E8())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_10020A84C;
}

uint64_t sub_10020A854(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1002097C4(a1, v4, v5, v6);
}

uint64_t sub_10020A9A4(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_10020AA80(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = (v1[2] + *a1);
  v5 = *v4;
  *v4 = v2;
  v4[1] = v3;
  sub_1000CD9D4(v2);
  return sub_1000588AC(v5);
}

uint64_t sub_10020AAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100210F08(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100024F64(v11, &unk_10190BA50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_100024F64(a3, &unk_10190BA50);

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

  sub_100024F64(a3, &unk_10190BA50);
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

uint64_t sub_10020ADD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100210F08(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100024F64(v11, &unk_10190BA50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1000CE6B8(&qword_1019126C8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100024F64(a3, &unk_10190BA50);

      return v22;
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

  sub_100024F64(a3, &unk_10190BA50);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000CE6B8(&qword_1019126C8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10020B0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100210F08(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100024F64(v11, &unk_10190BA50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1000CE6B8(&qword_1019126C0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100024F64(a3, &unk_10190BA50);

      return v22;
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

  sub_100024F64(a3, &unk_10190BA50);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000CE6B8(&qword_1019126C0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10020B3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100210F08(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100024F64(v11, &unk_10190BA50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1000CE6B8(&unk_101916610);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100024F64(a3, &unk_10190BA50);

      return v22;
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

  sub_100024F64(a3, &unk_10190BA50);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000CE6B8(&unk_101916610);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t MapsSuggestionsCurrentLocationSource._delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MapsSuggestionsCurrentLocationSource._delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource__delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_10020B820;
}

void sub_10020B820(void **a1, char a2)
{
  v3 = *a1;
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

uint64_t sub_10020B920(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v43 = a4;
  v42[1] = a3;
  v49 = a2;
  v50 = a1;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v48 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v45);
  v46 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v44 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000CE6B8(&qword_101912648);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v42 - v13;
  v15 = sub_1000CE6B8(&qword_101921950);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v42 - v17;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource___sourceRunning;
  LOBYTE(aBlock[0]) = 0;
  MapsSuggestionsThreadSafe.init(wrappedValue:)();
  (*(v16 + 32))(&v5[v19], v18, v15);
  v20 = OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource___currentPlaceEntry;
  aBlock[0] = 0;
  sub_1000CE6B8(&unk_101912628);
  MapsSuggestionsThreadSafe.init(wrappedValue:)();
  (*(v12 + 32))(&v5[v20], v14, v11);
  v21 = OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource__isDrivingCondition;
  v22 = objc_allocWithZone(type metadata accessor for MapsSuggestionsIsDrivingCondition());
  *&v5[v21] = MapsSuggestionsIsDrivingCondition.init(name:bluetooth:carPlay:coreMotion:)();
  *&v5[OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource__stopSourceCanKicker] = 0;
  if (v50)
  {
    swift_beginAccess();
    v23 = v50;
    swift_unknownObjectWeakAssign();
    *&v5[OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource__requester] = v49;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v24 = String._bridgeToObjectiveC()();

    v25 = type metadata accessor for MapsSuggestionsCurrentLocationSource();
    v52.receiver = v5;
    v52.super_class = v25;
    v26 = objc_msgSendSuper2(&v52, "initWithDelegate:name:", v23, v24);

    v43 = "ionSource with a nil delegate.";
    v27 = v26;
    GEOConfigGetDouble();
    v29 = v28;
    sub_100014C84(0, &qword_10190B4F0);
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100212058();
    sub_1000CE6B8(&unk_101917C30);
    sub_1002120B0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v48 + 104))(v47, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
    v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = objc_allocWithZone(MapsSuggestionsCanKicker);

    v33 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100212114;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100039C64;
    aBlock[3] = &unk_10160AF28;
    v34 = _Block_copy(aBlock);
    v35 = [v32 initWithName:v33 time:v30 queue:v34 block:v29];

    _Block_release(v34);

    v36 = *&v27[OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource__stopSourceCanKicker];
    *&v27[OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource__stopSourceCanKicker] = v35;

    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100021540(v37, qword_10195FBC8);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Initialized CurrentLocationSource.", v40, 2u);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();

    return v27;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_10020C060()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    sub_1000CE6B8(&qword_101921950);
    MapsSuggestionsThreadSafe.wrappedValue.setter();
    swift_endAccess();
  }

  if (qword_1019065C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_10195FBC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "CurrentLocationSource stopped.", v5, 2u);
  }
}

id MapsSuggestionsCurrentLocationSource.init(from:name:)(void *a1, uint64_t a2, char *a3)
{
  v6 = [a1 oneSourceDelegate];
  result = [a1 oneNetworkRequester];
  if (result)
  {
    v8 = result;
    v9 = objc_allocWithZone(type metadata accessor for MapsSuggestionsCurrentLocationSource());
    v10 = sub_10020B920(v6, v8, a2, a3);
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MapsSuggestionsCurrentLocationSource()
{
  result = qword_1019126A0;
  if (!qword_1019126A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MapsSuggestionsCurrentLocationSource.__allocating_init(from:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initFromResourceDepot:a1];
  swift_unknownObjectRelease();
  return v2;
}

id MapsSuggestionsCurrentLocationSource.init(from:)(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 initFromResourceDepot:a1 name:v3];

  swift_unknownObjectRelease();
  return v4;
}

Swift::Void __swiftcall MapsSuggestionsCurrentLocationSource.start()()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v38[-v3];
  v5 = sub_1000CE6B8(&qword_101921950);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38[-v7];
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100014C84(0, &qword_10190B4F0);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.notOnQueue(_:), v9);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v14 = OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource___sourceRunning;
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v14], v5);
  MapsSuggestionsThreadSafe.wrappedValue.getter();
  (*(v6 + 8))(v8, v5);
  if (v38[8])
  {
    if (qword_1019065C8 == -1)
    {
LABEL_4:
      v15 = type metadata accessor for Logger();
      sub_100021540(v15, qword_10195FBC8);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v16, v17))
      {
LABEL_17:

        return;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "CurrentLocationSource started already.";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 2u);

      goto LABEL_17;
    }

LABEL_29:
    swift_once();
    goto LABEL_4;
  }

  if (!MapsFeature_IsEnabled_VisitedPlaces())
  {
    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100021540(v28, qword_10195FBC8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_17;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Tried to start CurrentLocationSource, but Current Location is disabled via feature flag. Returning.";
    goto LABEL_16;
  }

  v20 = [objc_opt_self() sharedInstance];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 isInBackground];

    if (v22)
    {
      v23 = [objc_opt_self() processInfo];
      v24 = [v23 processName];

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      if (v25 == 0xD000000000000011 && 0x8000000101223EB0 == v27)
      {
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          if (qword_1019065C8 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_100021540(v37, qword_10195FBC8);
          v16 = Logger.logObject.getter();
          v17 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v16, v17))
          {
            goto LABEL_17;
          }

          v18 = swift_slowAlloc();
          *v18 = 0;
          v19 = "Maps App is in background or the current process isn't Maps Widget. Returning.";
          goto LABEL_16;
        }
      }
    }

    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100021540(v30, qword_10195FBC8);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Starting CurrentLocationSource", v33, 2u);
    }

    v38[39] = 1;
    swift_beginAccess();
    MapsSuggestionsThreadSafe.wrappedValue.setter();
    swift_endAccess();
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v4, 1, 1, v34);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v1;
    v36 = v1;
    sub_10020AAE4(0, 0, v4, &unk_1011F15D0, v35);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10020CC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = swift_task_alloc();
  *(v4 + 48) = v5;
  *v5 = v4;
  v5[1] = sub_10020CCC4;

  return sub_10020E818();
}

uint64_t sub_10020CCC4()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10020CDF8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10020CDF8()
{
  *(v0 + 64) = 0;
  swift_beginAccess();
  sub_1000CE6B8(&qword_101921950);
  MapsSuggestionsThreadSafe.wrappedValue.setter();
  swift_endAccess();
  if (qword_1019065C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_10195FBC8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching place inferences: %@", v4, 0xCu);
    sub_100024F64(v5, &qword_1019144F0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

Swift::Void __swiftcall MapsSuggestionsCurrentLocationSource.stop()()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_101921950);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-v4];
  v6 = OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource___sourceRunning;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  MapsSuggestionsThreadSafe.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  if (v15[7] == 1)
  {
    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_10195FBC8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Stop CurrentLocationSource called.", v10, 2u);
    }

    [*(v1 + OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource__stopSourceCanKicker) kickCanBySameTime];
  }

  else
  {
    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100021540(v11, qword_10195FBC8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "CurrentLocationSource stopped already.", v14, 2u);
    }
  }
}

uint64_t sub_10020D324(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  swift_beginAccess();
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;

  *a3 = 1;
}

uint64_t sub_10020D398(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Date();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for DispatchPredicate();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10020D4B4, 0, 0);
}

uint64_t sub_10020D4B4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_100014C84(0, &qword_10190B4F0);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  BOOL = GEOConfigGetBOOL();
  if ((CLLivePlaceContext.approximated.getter() & 1) != 0 && !BOOL)
  {
    if (qword_1019065C8 == -1)
    {
LABEL_5:
      v6 = type metadata accessor for Logger();
      sub_100021540(v6, qword_10195FBC8);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v7, v8))
      {
LABEL_13:

        v14 = v0[1];

        return v14(0);
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "PlaceInference: Received a low confidence place inference. Not creating an entry.";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

      goto LABEL_13;
    }

LABEL_30:
    swift_once();
    goto LABEL_5;
  }

  v11 = CLLivePlaceContext._mapItemHandle.getter();
  v0[11] = v11;
  v0[12] = v12;
  if (v12 >> 60 == 15)
  {
    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100021540(v13, qword_10195FBC8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_13;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "PlaceInference: place.mapItemHandle is nil, not creating an entry.";
    goto LABEL_12;
  }

  v16 = v11;
  v17 = v12;
  CLLivePlaceContext._wellKnownName.getter();
  v18 = objc_allocWithZone(MapsSuggestionsEntry);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v18 initWithType:25 title:v19];
  v0[13] = v20;

  if (!v20)
  {
    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100021540(v43, qword_10195FBC8);
    v7 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v7, v44, "Entry: Could not create a new MSgEntry!", v45, 2u);
    }

    sub_1000D41A0(v16, v17);
    goto LABEL_13;
  }

  v21 = v0[4];
  GEOConfigGetDouble();
  [v20 setWeight:?];
  v22 = MapsSuggestionsLocalizedYoureNearbyString();
  [v20 setUndecoratedSubtitle:v22];

  v23 = [v21 uniqueName];
  if (v23)
  {
    v31 = v23;
    v33 = v0[6];
    v32 = v0[7];
    v34 = v0[5];
    [v20 setOriginatingSourceName:v23];

    GEOConfigGetDouble();
    Date.init(timeIntervalSinceNow:)();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v33 + 8))(v32, v34);
    [v20 setExpires:isa];

    [v20 setBoolean:CLLivePlaceContext.approximated.getter() & 1 forKey:@"MapsSuggestionsCurrentLocationOfInterestApproximatedKey"];
    CLLivePlaceContext._coordinate.getter();
    v37 = [objc_allocWithZone(NSNumber) initWithDouble:v36];
    [v20 setNumber:v37 forKey:@"MapsSuggestionsLatitudeKey"];

    CLLivePlaceContext._coordinate.getter();
    v39 = [objc_allocWithZone(NSNumber) initWithDouble:v38];
    [v20 setNumber:v39 forKey:@"MapsSuggestionsLongitudeKey"];

    v40 = CLLivePlaceContext._mapItemHandle.getter();
    if (v41 >> 60 == 15)
    {
      v42 = 0;
    }

    else
    {
      v46 = v40;
      v47 = v41;
      v42 = Data._bridgeToObjectiveC()().super.isa;
      sub_1000D41A0(v46, v47);
    }

    v48 = v0[4];
    [v20 setData:v42 forKey:@"MapsSuggestionsMapItemHandleDataKey"];

    v49 = swift_task_alloc();
    v0[14] = v49;
    v49[2] = v48;
    v49[3] = v16;
    v49[4] = v17;
    v50 = swift_task_alloc();
    v0[15] = v50;
    v30 = sub_1000CE6B8(&unk_1019126E8);
    *v50 = v0;
    v50[1] = sub_10020DB68;
    v28 = sub_100211C44;
    v23 = v0 + 2;
    v27 = 0x80000001012240B0;
    v24 = 0;
    v25 = 0;
    v26 = 0xD000000000000027;
    v29 = v49;
  }

  else
  {
    __break(1u);
  }

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t sub_10020DB68()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10020E2CC;
  }

  else
  {

    v2 = sub_10020DC84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10020DC84()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
    swift_unknownObjectRetain();
  }

  v0[17] = v3;

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v0[18] = v4;
  if (v4)
  {
    v5 = v4;
    v0[19] = sub_100211C50(v4);
    v0[20] = v6;
    swift_unknownObjectRetain();
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_10020DE50;

    return sub_1002B310C(v5);
  }

  swift_unknownObjectRelease();
LABEL_13:
  v8 = v0[13];
  sub_1000D41A0(v0[11], v0[12]);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_10020DE50(uint64_t a1, __int16 a2)
{
  *(*v2 + 176) = a2;

  return _swift_task_switch(sub_10020DF50, 0, 0);
}

uint64_t sub_10020DF50()
{
  v1 = *(v0 + 176);
  swift_unknownObjectRelease();
  v2 = *(v0 + 160);
  if ((v1 & 0x100) != 0)
  {

    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100021540(v10, qword_10195FBC8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = *(v0 + 88);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Current place not in supported categories. Aborting.", v17, 2u);
    }

    sub_1000D41A0(v16, v14);

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  if (v2)
  {
    v3 = *(v0 + 104);

    v4 = [v3 title];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (v5 == 0x656D614E6F4ELL && v7 == 0xE600000000000000)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {

        goto LABEL_16;
      }
    }

    v18 = *(v0 + 104);
    v19 = String._bridgeToObjectiveC()();

    [v18 setTitle:v19];
  }

LABEL_16:
  v20 = *(v0 + 144);
  swift_unknownObjectRetain();
  LOBYTE(v20) = sub_1002113A8(v20);
  swift_unknownObjectRelease();
  if ((v20 & 1) == 0)
  {
    [*(v0 + 104) setGeoMapItem:*(v0 + 144)];
    if (v2)
    {
      v25 = String._bridgeToObjectiveC()();
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    v28 = *(v0 + 88);
    [v27 setString:v25 forKey:@"MapsSuggestionsCurrentLocationOfInterestIdentifier"];

    [v27 setString:@"MapsSuggestionsCurrentLocationOfInterestIdentifier" forKey:@"MapsSuggestionsPrimaryKey"];
    v29 = [objc_allocWithZone(NSNumber) initWithInteger:6];
    [v27 setNumber:v29 forKey:@"MapsSuggestionsGEOMapItemOriginKey"];

    swift_unknownObjectRelease();
    sub_1000D41A0(v28, v26);
    v24 = *(v0 + 104);
    goto LABEL_23;
  }

  v21 = *(v0 + 96);
  v22 = *(v0 + 104);
  v23 = *(v0 + 88);
  swift_unknownObjectRelease();

  sub_1000D41A0(v23, v21);
LABEL_18:
  v24 = 0;
LABEL_23:

  v30 = *(v0 + 8);

  return v30(v24);
}

uint64_t sub_10020E2CC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  sub_1000D41A0(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

void sub_10020E370(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_1019126F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a2 + OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource__requester);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_100211F14;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E778;
  aBlock[3] = &unk_10160AE60;
  v12 = _Block_copy(aBlock);

  LODWORD(v8) = [v8 resolveMapItemHandleData:isa dropAnalyticsSessionID:1 completion:v12];
  _Block_release(v12);

  if (v8 != 1)
  {
    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100021540(v13, qword_10195FBC8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Requester refused to hydrate a mapItem. Aborting.", v16, 2u);
    }
  }
}

uint64_t sub_10020E610(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_10195FBC8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to hydrate a MapItem. Aborting.", v5, 2u);
    }

    sub_1000CE6B8(&qword_1019126F8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a1)
    {
    }

    sub_1000CE6B8(&qword_1019126F8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10020E778(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000CE6B8(&unk_101912700);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_10020E818()
{
  v1[25] = v0;
  v2 = sub_1000CE6B8(&qword_101921950);
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v3 = type metadata accessor for CLLivePlaceContext();
  v1[29] = v3;
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();
  sub_1000CE6B8(&qword_1019126D0);
  v1[32] = swift_task_alloc();
  v4 = sub_1000CE6B8(&qword_1019126D8);
  v1[33] = v4;
  v1[34] = *(v4 - 8);
  v1[35] = swift_task_alloc();
  v5 = sub_1000CE6B8(&qword_1019126E0);
  v1[36] = v5;
  v1[37] = *(v5 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v6 = type metadata accessor for DispatchPredicate();
  v1[40] = v6;
  v1[41] = *(v6 - 8);
  v1[42] = swift_task_alloc();

  return _swift_task_switch(sub_10020EAB0, 0, 0);
}

uint64_t sub_10020EAB0()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  sub_100014C84(0, &qword_10190B4F0);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_1019065C8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v5 = type metadata accessor for Logger();
  v0[43] = sub_100021540(v5, qword_10195FBC8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting Place Inference calls.", v8, 2u);
  }

  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[36];
  v12 = v0[37];

  static CLLivePlaceContext.places()();
  (*(v12 + 16))(v10, v9, v11);
  v0[44] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v13 = OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource__isDrivingCondition;
  v0[45] = OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource___sourceRunning;
  v0[46] = v13;
  v14 = OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource__delegate;
  v0[47] = OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource___currentPlaceEntry;
  v0[48] = v14;
  swift_beginAccess();
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  v15 = swift_task_alloc();
  v0[49] = v15;
  *v15 = v0;
  v15[1] = sub_10020ED84;
  v16 = v0[32];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v16, 0, 0);
}

uint64_t sub_10020ED84()
{

  if (!v0)
  {

    return _swift_task_switch(sub_10020EE94, 0, 0);
  }

  return result;
}

id sub_10020EE94()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
LABEL_27:
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Stopping Place Inference calls.", v46, 2u);
    }

    v47 = *(v0 + 312);
    v48 = *(v0 + 288);
    v49 = *(v0 + 296);

    (*(v49 + 8))(v47, v48);

    v50 = *(v0 + 8);

    return v50();
  }

  v4 = *(v0 + 360);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  (*(v3 + 32))(*(v0 + 248), v1, v2);
  (*(v6 + 16))(v5, v8 + v4, v7);
  MapsSuggestionsThreadSafe.wrappedValue.getter();
  (*(v6 + 8))(v5, v7);
  if (*(v0 + 424) != 1)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 272);
    v20 = *(v0 + 280);
    v22 = *(v0 + 264);
    v24 = *(v0 + 240);
    v23 = *(v0 + 248);
    v25 = *(v0 + 232);
    if (v19)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Source stopped. Not creating any new entries.", v26, 2u);
    }

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
    goto LABEL_27;
  }

  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_36;
  }

  v10 = result;
  v11 = [result isInBackground];

  if (v11)
  {
    v12 = [objc_opt_self() processInfo];
    v13 = [v12 processName];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == 0xD000000000000011 && 0x8000000101223EB0 == v16)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "Maps App is in background or the current process isn't Maps Widget. Stopping source.", v43, 2u);
        }

        v33 = *(v0 + 272);
        v53 = *(v0 + 280);
        v34 = *(v0 + 264);
        v36 = *(v0 + 240);
        v35 = *(v0 + 248);
        v37 = *(v0 + 232);

        *(v0 + 427) = 0;
        swift_beginAccess();
        MapsSuggestionsThreadSafe.wrappedValue.setter();
        goto LABEL_26;
      }
    }
  }

  if ((sub_100211748() & 1) == 0)
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Authorization error. Stopping source.", v40, 2u);
    }

    v33 = *(v0 + 272);
    v53 = *(v0 + 280);
    v34 = *(v0 + 264);
    v36 = *(v0 + 240);
    v35 = *(v0 + 248);
    v37 = *(v0 + 232);

    *(v0 + 425) = 0;
    swift_beginAccess();
    MapsSuggestionsThreadSafe.wrappedValue.setter();
    goto LABEL_26;
  }

  if ([*(*(v0 + 200) + *(v0 + 368)) isTrue])
  {
LABEL_17:
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Is driving or navigating. Stopping source.", v32, 2u);
    }

    v33 = *(v0 + 272);
    v53 = *(v0 + 280);
    v34 = *(v0 + 264);
    v36 = *(v0 + 240);
    v35 = *(v0 + 248);
    v37 = *(v0 + 232);

    *(v0 + 426) = 0;
    swift_beginAccess();
    MapsSuggestionsThreadSafe.wrappedValue.setter();
LABEL_26:
    swift_endAccess();
    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v53, v34);
    goto LABEL_27;
  }

  result = [objc_opt_self() sharedService];
  if (!result)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v28 = result;
  v29 = [result isInNavigatingState];

  if (v29)
  {
    goto LABEL_17;
  }

  v51 = swift_task_alloc();
  *(v0 + 400) = v51;
  *v51 = v0;
  v51[1] = sub_10020F5A4;
  v52 = *(v0 + 248);

  return sub_10020D398(v52);
}

uint64_t sub_10020F5A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v4 = sub_10020FB3C;
  }

  else
  {
    v4 = sub_10020F6B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10020F6B8()
{
  v31 = v0;
  v1 = v0[51];
  if (!v1)
  {
    v0[23] = 0;
    swift_beginAccess();
    sub_1000CE6B8(&qword_101912648);
    MapsSuggestionsThreadSafe.wrappedValue.setter();
    swift_endAccess();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Entry: nil", v24, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_14;
    }

    v26 = Strong;
    v27 = v0[25];
    sub_100014C84(0, &qword_101912650);
    v18.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v19 = [v27 uniqueName];
    if (v19)
    {
      v3 = v19;
      [v26 addOrUpdateSuggestionEntries:v18.super.isa source:v19];
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v19, v20, v21);
  }

  v0[24] = v1;
  swift_beginAccess();
  v2 = v1;
  sub_1000CE6B8(&qword_101912648);
  MapsSuggestionsThreadSafe.wrappedValue.setter();
  swift_endAccess();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315138;
    v8 = [v3 debugDescription];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10004DEB8(v9, v11, &v30);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Entry: %s", v6, 0xCu);
    sub_10004E3D0(v7);
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v13;
  v15 = v0[25];
  sub_1000CE6B8(&qword_101908400);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1011E47B0;
  *(v16 + 32) = v3;
  sub_100014C84(0, &qword_101912650);
  v17 = v3;
  v18.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v15 uniqueName];
  if (!v19)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = v19;
  [v14 addOrUpdateSuggestionEntries:v18.super.isa source:v19];

LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:

LABEL_14:
  (*(v0[30] + 8))(v0[31], v0[29]);
  swift_getAssociatedConformanceWitness();
  v28 = swift_task_alloc();
  v0[49] = v28;
  *v28 = v0;
  v28[1] = sub_10020ED84;
  v19 = v0[32];
  v20 = 0;
  v21 = 0;

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v19, v20, v21);
}

uint64_t sub_10020FB3C()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

void MapsSuggestionsCurrentLocationSource.updateSuggestionEntries(handler:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v75 = a2;
  v76 = a1;
  isa = sub_1000CE6B8(&qword_101912648);
  v74 = *(isa - 1);
  __chkstk_darwin(isa);
  v6 = &v74 - v5;
  v7 = sub_1000CE6B8(&qword_101921950);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v74 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100014C84(0, &qword_10190B4F0);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.notOnQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    goto LABEL_52;
  }

  if (qword_1019065C8 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    sub_100021540(v16, qword_10195FBC8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Updating CurrentLocationSource", v19, 2u);
    }

    if (!MapsFeature_IsEnabled_VisitedPlaces())
    {
      goto LABEL_16;
    }

    if (![objc_opt_self() isEnabled])
    {
      goto LABEL_21;
    }

    v20 = OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource___sourceRunning;
    swift_beginAccess();
    (*(v8 + 16))(v10, &v3[v20], v7);
    MapsSuggestionsThreadSafe.wrappedValue.getter();
    (*(v8 + 8))(v10, v7);
    if (v78 != 1)
    {
      goto LABEL_26;
    }

    if ([*&v3[OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource__isDrivingCondition] isTrue])
    {
      goto LABEL_11;
    }

    v21 = [objc_opt_self() sharedService];
    if (!v21)
    {
      goto LABEL_55;
    }

    v22 = v21;
    v23 = [v21 isInNavigatingState];

    if (v23)
    {
LABEL_11:
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "In driving or navigating. Returning.", v26, 2u);
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_31;
      }

      v28 = Strong;
      sub_100014C84(0, &qword_101912650);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v29 = [v3 uniqueName];
      if (!v29)
      {
        __break(1u);
LABEL_16:
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "Current Location Suggestion is disabled via feature flag. Returning.", v32, 2u);
        }

        swift_beginAccess();
        v33 = swift_unknownObjectWeakLoadStrong();
        if (!v33)
        {
          goto LABEL_31;
        }

        v28 = v33;
        sub_100014C84(0, &qword_101912650);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v29 = [v3 uniqueName];
        if (!v29)
        {
          __break(1u);
LABEL_21:
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&_mh_execute_header, v34, v35, "Siri not enabled. Returning.", v36, 2u);
          }

          swift_beginAccess();
          v37 = swift_unknownObjectWeakLoadStrong();
          if (!v37)
          {
            goto LABEL_31;
          }

          v28 = v37;
          sub_100014C84(0, &qword_101912650);
          isa = Array._bridgeToObjectiveC()().super.isa;
          v29 = [v3 uniqueName];
          if (!v29)
          {
            __break(1u);
LABEL_26:
            v38 = Logger.logObject.getter();
            v39 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&_mh_execute_header, v38, v39, "Current Location Source has not been started yet. Returning.", v40, 2u);
            }

            swift_beginAccess();
            v41 = swift_unknownObjectWeakLoadStrong();
            if (!v41)
            {
              goto LABEL_31;
            }

            v28 = v41;
            sub_100014C84(0, &qword_101912650);
            isa = Array._bridgeToObjectiveC()().super.isa;
            v29 = [v3 uniqueName];
            if (!v29)
            {
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }
          }
        }
      }

LABEL_30:
      v42 = v29;
      [v28 addOrUpdateSuggestionEntries:isa source:{v29, v74, v75}];
      swift_unknownObjectRelease();

      goto LABEL_31;
    }

    v43 = [objc_opt_self() sharedInstance];
    if (!v43)
    {
      goto LABEL_56;
    }

    v44 = v43;
    v45 = [v43 isInBackground];

    if (!v45)
    {
      goto LABEL_40;
    }

    v46 = [objc_opt_self() processInfo];
    v47 = [v46 processName];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (v7 == 0xD000000000000011 && 0x8000000101223EB0 == v49)
    {
      break;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v50)
    {
      goto LABEL_40;
    }

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Maps App is in background or the current process isn't Maps Widget. Returning.", v72, 2u);
    }

    v8 = OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource__delegate;
    swift_beginAccess();
    v73 = swift_unknownObjectWeakLoadStrong();
    if (!v73)
    {
      goto LABEL_31;
    }

    v28 = v73;
    sub_100014C84(0, &qword_101912650);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v29 = [v3 uniqueName];
    if (v29)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

LABEL_40:
  v51 = OBJC_IVAR____TtC4Maps36MapsSuggestionsCurrentLocationSource___currentPlaceEntry;
  swift_beginAccess();
  v52 = v74;
  (*(v74 + 16))(v6, &v3[v51], isa);
  MapsSuggestionsThreadSafe.wrappedValue.getter();
  (*(v52 + 8))(v6, isa);
  if (v77[0])
  {
    v53 = v77[0];
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v77[0] = v57;
      *v56 = 136315138;
      v58 = [v53 debugDescription];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v62 = sub_10004DEB8(v59, v61, v77);

      *(v56 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "Returning %s.", v56, 0xCu);
      sub_10004E3D0(v57);
    }

    swift_beginAccess();
    v63 = swift_unknownObjectWeakLoadStrong();
    if (v63)
    {
      v64 = v63;
      sub_1000CE6B8(&qword_101908400);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_1011E47B0;
      *(v65 + 32) = v53;
      sub_100014C84(0, &qword_101912650);
      v66 = v53;
      v67.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v68 = [v3 uniqueName];
      if (v68)
      {
        v69 = v68;
        [v64 addOrUpdateSuggestionEntries:v67.super.isa source:v68];
        swift_unknownObjectRelease();

        goto LABEL_46;
      }

LABEL_57:
      __break(1u);
      return;
    }

LABEL_46:
  }

LABEL_31:
  if (v76)
  {
    v76();
  }
}

uint64_t static MapsSuggestionsCurrentLocationSource.isEnabled()()
{
  result = GEOConfigGetBOOL();
  if (result)
  {
    return MapsSuggestionsIsLocationAllowedForBundleID();
  }

  return result;
}

id sub_100210A00(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 *a4];
  swift_unknownObjectRelease();

  return v9;
}

id MapsSuggestionsCurrentLocationSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionsCurrentLocationSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100210C24()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10195FBC8);
  sub_100021540(v0, qword_10195FBC8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100210CA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10020CC30(a1, v4, v5, v6);
}

void sub_100210D60()
{
  sub_100210E54();
  if (v0 <= 0x3F)
  {
    sub_100210EA4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100210E54()
{
  if (!qword_1019126B0)
  {
    v0 = type metadata accessor for MapsSuggestionsThreadSafe();
    if (!v1)
    {
      atomic_store(v0, &qword_1019126B0);
    }
  }
}

void sub_100210EA4()
{
  if (!qword_1019126B8)
  {
    sub_1000D6664(&unk_101912628);
    v0 = type metadata accessor for MapsSuggestionsThreadSafe();
    if (!v1)
    {
      atomic_store(v0, &qword_1019126B8);
    }
  }
}

uint64_t sub_100210F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190BA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100210F78(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10021106C;

  return v5(v2 + 32);
}

uint64_t sub_10021106C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100211180(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003AC40;

  return sub_100210F78(a1, v4);
}

uint64_t sub_100211238(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003AC4C;

  return sub_100210F78(a1, v4);
}

uint64_t sub_1002112F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003AC40;

  return sub_100210F78(a1, v4);
}

uint64_t sub_1002113A8(void *a1)
{
  result = GEOConfigGetArray();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1002B0174(v4);

  if (!v5)
  {
    return 0;
  }

  v6 = v5[2];
  if (!v6)
  {
LABEL_15:

    return 0;
  }

  v7 = 0;
  v8 = v5 + 5;
  while (v7 < v5[2])
  {
    v10 = *(v8 - 1);
    v9 = *v8;

    v11 = [a1 _bestAvailableCountryCode];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v13 == v10 && v15 == v9)
      {

LABEL_18:

        return 1;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    ++v7;
    v8 += 2;
    if (v6 == v7)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100211524(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100211618;

  return v5(v2 + 16);
}

uint64_t sub_100211618()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100211748()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100014C84(0, &qword_10190B4F0);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.notOnQueue(_:), v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (CLLivePlaceContext.authorizationDenied.getter())
  {
    if (qword_1019065C8 == -1)
    {
LABEL_4:
      v5 = type metadata accessor for Logger();
      sub_100021540(v5, qword_10195FBC8);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v6, v7))
      {
LABEL_32:

        return 0;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "CLLivePlaceContext: Authorization Denied.";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);

      goto LABEL_32;
    }

LABEL_35:
    swift_once();
    goto LABEL_4;
  }

  if (CLLivePlaceContext.authorizationDeniedGlobally.getter())
  {
    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100021540(v10, qword_10195FBC8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_32;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "CLLivePlaceContext: Authorization Denied Globally.";
    goto LABEL_31;
  }

  if (CLLivePlaceContext.authorizationRestricted.getter())
  {
    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100021540(v11, qword_10195FBC8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_32;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "CLLivePlaceContext: Authorization Restricted.";
    goto LABEL_31;
  }

  if (CLLivePlaceContext.serviceSessionRequired.getter())
  {
    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100021540(v12, qword_10195FBC8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_32;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "CLLivePlaceContext: Service Session Required.";
    goto LABEL_31;
  }

  if (CLLivePlaceContext.authorizationRequestInProgress.getter())
  {
    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100021540(v13, qword_10195FBC8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_32;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "CLLivePlaceContext: Authorization Request in Progress.";
    goto LABEL_31;
  }

  if (CLLivePlaceContext.accuracyLimited.getter())
  {
    if (qword_1019065C8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100021540(v14, qword_10195FBC8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_32;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "CLLivePlaceContext: Accuracy Limited.";
    goto LABEL_31;
  }

  return 1;
}

uint64_t sub_100211C50(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100014C84(0, &qword_10190B4F0);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.notOnQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = [a1 name];
    if (!v8 || (v9 = v8, v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v12 = v11, v9, v13 = swift_allocObject(), *(v13 + 24) = 0, *(v13 + 16) = 0, v23[5] = v10, v23[6] = v12, sub_1000E5580(), , StringProtocol.enumerateLines(invoking:)(), , , swift_beginAccess(), v14 = *(v13 + 16), v15 = *(v13 + 24), , , !v15) || (v16 = MapsSuggestionsMapItemShortAddress()) != 0 && (v17 = v16, v18 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v20 = v19, v17, v23[3] = v18, v23[4] = v20, v23[1] = v14, v23[2] = v15, LOBYTE(v17) = StringProtocol.contains<A>(_:)(), , (v17 & 1) != 0))
    {
      v21 = MapsSuggestionsMapItemShortAddress();
      if (v21)
      {
        v22 = v21;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {

        return 0;
      }
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100211F14(uint64_t a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_1019126F8);

  return sub_10020E610(a1, a2);
}

uint64_t sub_100211FA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003AC40;

  return sub_100025084(a1, v4);
}

unint64_t sub_100212058()
{
  result = qword_101909890;
  if (!qword_101909890)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101909890);
  }

  return result;
}

unint64_t sub_1002120B0()
{
  result = qword_1019098A0;
  if (!qword_1019098A0)
  {
    sub_1000D6664(&unk_101917C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019098A0);
  }

  return result;
}

uint64_t sub_10021211C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003AC40;

  return sub_100211524(a1, v4);
}

id sub_1002121DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC4Maps40VisitedPlacesDataRetentionViewController_cellID];
  *v6 = 0xD00000000000001CLL;
  *(v6 + 1) = 0x8000000101224390;
  v7 = &v3[OBJC_IVAR____TtC4Maps40VisitedPlacesDataRetentionViewController_completionHandler];
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR____TtC4Maps40VisitedPlacesDataRetentionViewController_viewModel] = a1;
  *v7 = a2;
  v7[1] = a3;

  sub_1000CD9D4(a2);

  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v13.receiver = v3;
  v13.super_class = type metadata accessor for VisitedPlacesDataRetentionViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithTitle:detailText:symbolName:adoptTableViewScrollView:", v8, v9, v10, 1);
  sub_1000D3B90(a2, a3);

  return v11;
}

void sub_100212338()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for VisitedPlacesDataRetentionViewController();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v1 = [v0 presentationController];
  if (v1)
  {
    v2 = v1;
    [v1 setDelegate:v0];
  }

  v3 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTableView:v3];

  v4 = [v0 tableView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  sub_100213080();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = String._bridgeToObjectiveC()();
  [v5 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

  v8 = [v0 tableView];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  [v8 setDelegate:v0];

  v10 = [v0 tableView];
  if (v10)
  {
    v11 = v10;
    [v10 setDataSource:v0];

    v12 = [objc_opt_self() boldButton];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = String._bridgeToObjectiveC()();

    [v12 setTitle:v13 forState:0];

    [v12 addTarget:v0 action:"continueButtonTapped" forControlEvents:64];
    v14 = [v0 buttonTray];
    [v14 addButton:v12];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100212728()
{
  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960060);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315138;
    v7 = *(*&v2[OBJC_IVAR____TtC4Maps40VisitedPlacesDataRetentionViewController_viewModel] + 16);
    if (v7 == 3)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      v8 = sub_100251924(v7);
      v9 = v10;
    }

    v11 = sub_10004DEB8(v8, v9, v14);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Maps Warming Sheet: Visited Places Data Retention: Continue Tapped. Updated value is %s", v5, 0xCu);
    sub_10004E3D0(v6);
  }

  sub_100258CC0(*(*&v2[OBJC_IVAR____TtC4Maps40VisitedPlacesDataRetentionViewController_viewModel] + 16));
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_100213078;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100039C64;
  v14[3] = &unk_10160AFC8;
  v13 = _Block_copy(v14);

  [v2 dismissViewControllerAnimated:1 completion:v13];
  _Block_release(v13);
}

void sub_100212964()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC4Maps40VisitedPlacesDataRetentionViewController_completionHandler);
    v2 = *(Strong + OBJC_IVAR____TtC4Maps40VisitedPlacesDataRetentionViewController_completionHandler + 8);
    v3 = Strong;
    sub_1000CD9D4(v1);

    if (v1)
    {
      v1();
      sub_1000D3B90(v1, v2);
    }
  }
}

id sub_100212AF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitedPlacesDataRetentionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100212BD4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [a1 dequeueReusableCellWithIdentifier:v8 forIndexPath:isa];

  UITableViewCell.defaultContentConfiguration()();
  v11 = *(v2 + OBJC_IVAR____TtC4Maps40VisitedPlacesDataRetentionViewController_viewModel);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = *(v11 + 88);
  if (result >= *(v13 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v14 = *(v13 + result + 32);
  sub_100251924(v14);
  UIListContentConfiguration.text.setter();
  v19[3] = v4;
  v19[4] = &protocol witness table for UIListContentConfiguration;
  v15 = sub_10001A848(v19);
  (*(v5 + 16))(v15, v7, v4);
  UITableViewCell.contentConfiguration.setter();
  [v10 setSelectionStyle:0];
  v16 = *(v11 + 16);
  if (v16 == 3 || qword_1011F1780[v14] != qword_1011F1780[v16])
  {
    v17 = 0;
  }

  else
  {
    v17 = 3;
  }

  [v10 setAccessoryType:v17];
  (*(v5 + 8))(v7, v4);
  return v10;
}

unint64_t sub_100212EFC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps40VisitedPlacesDataRetentionViewController_viewModel);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = *(v3 + 88);
  if (result >= *(v5 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(v3 + 16) = *(v5 + result + 32);

  return [a1 reloadData];
}

unint64_t sub_100213080()
{
  result = qword_101912870;
  if (!qword_101912870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101912870);
  }

  return result;
}

uint64_t sub_1002130CC()
{
  *(v0 + 16) = 3;
  *(v0 + 88) = _swiftEmptyArrayStorage;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v1.super.isa = qword_1019600D8;
  v9._object = 0x8000000101224490;
  v2._countAndFlagsBits = 0xD000000000000023;
  v2._object = 0x8000000101224430;
  v3._countAndFlagsBits = 0xD00000000000002ELL;
  v3._object = 0x8000000101224460;
  v9._countAndFlagsBits = 0xD000000000000067;
  *(v0 + 24) = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, qword_1019600D8, v3, v9);
  v10._object = 0x8000000101224570;
  v4._countAndFlagsBits = 0xD000000000000026;
  v4._object = 0x8000000101224500;
  v5._countAndFlagsBits = 0xD000000000000036;
  v5._object = 0x8000000101224530;
  v10._countAndFlagsBits = 0xD00000000000006ALL;
  *(v0 + 40) = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v1, v5, v10);
  v11._object = 0x8000000101224600;
  v6._countAndFlagsBits = 0x65756E69746E6F43;
  v7._countAndFlagsBits = 0xD000000000000019;
  v7._object = 0x80000001012245E0;
  v11._countAndFlagsBits = 0xD00000000000001DLL;
  v6._object = 0xE800000000000000;
  *(v0 + 72) = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v1, v6, v11);
  *(v0 + 56) = 0xD000000000000018;
  *(v0 + 64) = 0x8000000101224620;
  *(v0 + 88) = &off_101600230;

  *(v0 + 16) = sub_100258BD0();
  return v0;
}

uint64_t sub_100213280()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002132FC(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 != 3)
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v2.super.isa = qword_1019600D8;
        v10 = 0x8000000101224860;
        v3 = 0x726F70736E617254;
        v6 = 0xD000000000000025;
        v4 = 0x8000000101224830;
        v5 = 0xD000000000000030;
        v7 = 0xE900000000000074;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, 0, v2, *&v3, *(&v10 - 1))._countAndFlagsBits;
      }

      v1 = "r Visited places";
      if (qword_101906768 != -1)
      {
        swift_once();
        v1 = "r Visited places";
      }

      v2.super.isa = qword_1019600D8;
      v10 = 0x80000001012248D0;
      v3 = 0x65727574614ELL;
      goto LABEL_17;
    }

    if (a1 == 1)
    {
      v1 = "eisure used for Visited places";
      if (qword_101906768 != -1)
      {
        swift_once();
        v1 = "eisure used for Visited places";
      }

      v2.super.isa = qword_1019600D8;
      v10 = 0x8000000101224990;
      v3 = 0x676E696E6944;
      goto LABEL_17;
    }

    if (a1 == 2)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v2.super.isa = qword_1019600D8;
      v10 = 0x8000000101224930;
      v3 = 0x6572757369654CLL;
      v6 = 0xD000000000000023;
      v4 = 0x8000000101224900;
      v5 = 0xD00000000000002ELL;
      v7 = 0xE700000000000000;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, 0, v2, *&v3, *(&v10 - 1))._countAndFlagsBits;
    }
  }

  else
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        v8 = "hopping used for Visited places";
        if (qword_101906768 != -1)
        {
          swift_once();
          v8 = "hopping used for Visited places";
        }

        v2.super.isa = qword_1019600D8;
        v10 = 0x8000000101224800;
        v3 = 0x7365636976726553;
      }

      else
      {
        v8 = "r Visited places";
        if (qword_101906768 != -1)
        {
          swift_once();
          v8 = "r Visited places";
        }

        v2.super.isa = qword_1019600D8;
        v10 = 0x80000001012247A0;
        v3 = 0x676E6970706F6853;
      }

      goto LABEL_39;
    }

    switch(a1)
    {
      case 7:
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v2.super.isa = qword_1019600D8;
        v10 = 0x8000000101224730;
        v3 = 0x74696E756D6D6F43;
        v6 = 0xD000000000000025;
        v4 = 0x8000000101224700;
        v7 = 0xE900000000000079;
        v5 = 0xD000000000000030;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, 0, v2, *&v3, *(&v10 - 1))._countAndFlagsBits;
      case 8:
        v1 = "ndustry used for Visited places";
        if (qword_101906768 != -1)
        {
          swift_once();
          v1 = "ndustry used for Visited places";
        }

        v2.super.isa = qword_1019600D8;
        v10 = 0x80000001012246D0;
        v3 = 0x68746C616548;
LABEL_17:
        v4 = v1 | 0x8000000000000000;
        v5 = 0xD00000000000002DLL;
        v6 = 0xD000000000000022;
        v7 = 0xE600000000000000;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, 0, v2, *&v3, *(&v10 - 1))._countAndFlagsBits;
      case 9:
        v8 = "calendar.badge.clock.rtl";
        if (qword_101906768 != -1)
        {
          swift_once();
          v8 = "calendar.badge.clock.rtl";
        }

        v2.super.isa = qword_1019600D8;
        v10 = 0x8000000101224670;
        v3 = 0x7972747375646E49;
LABEL_39:
        v6 = 0xD000000000000024;
        v4 = v8 | 0x8000000000000000;
        v5 = 0xD00000000000002FLL;
        v7 = 0xE800000000000000;
        return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, 0, v2, *&v3, *(&v10 - 1))._countAndFlagsBits;
    }
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for PlaceItemRowAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaceItemRowAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002139D4()
{
  result = qword_101912978;
  if (!qword_101912978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912978);
  }

  return result;
}

uint64_t sub_100213A28(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v5 = 0xD000000000000017;
        v12 = 0x8000000101224A30;
        v2 = 0x43205D756E654D5BLL;
        v3 = 0xED0000207261656CLL;
        v4 = 0x7261656C43;
        goto LABEL_39;
      }

      if (a1 == 10)
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v5 = 0xD000000000000016;
        v12 = 0x800000010121D3B0;
        v2 = 0x6570697753776F52;
        v3 = 0xEE0065726168535FLL;
        goto LABEL_38;
      }

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v12 = 0x800000010121D3F0;
      v2 = 0x6570697753776F52;
      v3 = 0xEF6574656C65445FLL;
      v4 = 0x6574656C6544;
      v6 = 0xE600000000000000;
LABEL_48:
      v5 = 0xD000000000000036;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v1, *&v4, *&v5)._countAndFlagsBits;
    }

    if (a1 != 6)
    {
      if (a1 == 7)
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v4 = 0xD000000000000011;
        v2 = 0xD00000000000001DLL;
        v12 = 0x8000000101224A90;
        v3 = 0x8000000101224A50;
        v6 = 0x8000000101224A70;
        v5 = 0xD00000000000003BLL;
      }

      else
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v1.super.isa = qword_1019600D8;
        v4 = 0xD000000000000012;
        v2 = 0xD00000000000001ELL;
        v12 = 0x800000010121C870;
        v3 = 0x800000010121C830;
        v6 = 0x800000010121C850;
        v5 = 0xD000000000000040;
      }

      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v1, *&v4, *&v5)._countAndFlagsBits;
    }

    v8 = "DeleteFromLibrary";
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_1019600D8;
    v2 = 0xD000000000000015;
    v5 = 0xD00000000000002ALL;
    v12 = 0x8000000101224A00;
    v4 = 0x636F6C2074696445;
    v6 = 0xED00006E6F697461;
LABEL_31:
    v3 = v8 | 0x8000000000000000;
    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v1, *&v4, *&v5)._countAndFlagsBits;
  }

  if (a1 <= 2u)
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
        v12 = 0x8000000101224B20;
        v2 = 0x7972617262694C5BLL;
        v3 = 0xEF6E69706E55205DLL;
        v4 = 0x6E69706E55;
        v5 = 0xD000000000000040;
        goto LABEL_39;
      }

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v1.super.isa = qword_1019600D8;
      v5 = 0xD00000000000002ELL;
      v12 = 0x800000010121C800;
      v2 = 0x7972617262694C5BLL;
      v3 = 0xEF6572616853205DLL;
LABEL_38:
      v4 = 0x6572616853;
LABEL_39:
      v6 = 0xE500000000000000;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v1, *&v4, *&v5)._countAndFlagsBits;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_1019600D8;
    v12 = 0x8000000101224B70;
    v2 = 0x7972617262694C5BLL;
    v3 = 0xED00006E6950205DLL;
    v4 = 7235920;
    v6 = 0xE300000000000000;
    goto LABEL_48;
  }

  if (a1 == 3)
  {
    v8 = "leting a place from a guide";
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_1019600D8;
    v2 = 0xD000000000000018;
    v5 = 0xD000000000000023;
    v12 = 0x8000000101224AF0;
    v4 = 0x61206F7420646441;
    v6 = 0xEE00656469754720;
    goto LABEL_31;
  }

  if (a1 == 4)
  {
    v7 = [objc_opt_self() addANoteTitle];
  }

  else
  {
    v7 = [objc_opt_self() editNoteTitle];
  }

  v9 = v7;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

uint64_t sub_10021406C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x69632E73756E696DLL;
    v6 = 0xD000000000000013;
    if (a1 != 10)
    {
      v6 = 0x69662E6873617274;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x6873617274;
    if (a1 - 7 >= 2)
    {
      v7 = 0x6C6C69662E726163;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 7235952;
    v2 = 0x7865742E65746F6ELL;
    if (a1 - 4 >= 2)
    {
      v2 = 0x6461622E74786574;
    }

    v3 = 0x73616C732E6E6970;
    if (a1 != 1)
    {
      v3 = 0xD000000000000013;
    }

    if (a1)
    {
      v1 = v3;
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

unint64_t sub_1002141C8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7261656C43;
    v7 = 0x68532E6570697753;
    if (a1 != 10)
    {
      v7 = 0x65442E6570697753;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    if (a1 - 7 >= 2)
    {
      v8 = 0x61636F4C74696445;
    }

    else
    {
      v8 = 0xD000000000000011;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 7235920;
    v2 = 0x6975476F54646441;
    v3 = 0x65746F4E646441;
    if (a1 != 4)
    {
      v3 = 0x65746F4E74696445;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6E69706E55;
    if (a1 != 1)
    {
      v4 = 0x6572616853;
    }

    if (a1)
    {
      v1 = v4;
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

uint64_t sub_100214340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10021439C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void *sub_100214414()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = [objc_allocWithZone(MKTransitInfoLabelView) init];
  v7 = v6;
  if ((v2 & 1) == 0)
  {
    [v6 setShieldSize:v1];
    [v7 setIconSize:v1];
  }

  if (v3)
  {
    [v7 setFont:v3];
  }

  if ((v5 & 1) == 0)
  {
    [v7 setMaxShieldHeight:v4];
  }

  return v7;
}

uint64_t sub_100214544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100214634();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002145A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100214634();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10021460C()
{
  sub_100214634();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100214634()
{
  result = qword_101912980;
  if (!qword_101912980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912980);
  }

  return result;
}

id sub_100214688(void *a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {

    isa = Array._bridgeToObjectiveC()().super.isa;
    sub_10016EA40(a3, 1);
    [a1 setLabelItems:isa];
  }

  else
  {
    v8 = a3;
    v9 = [v8 _preloadedTransitInfo];
    if (v9)
    {
      v10 = [objc_opt_self() attributedTextFromPreload:v9 view:a1];
      [a1 setAttributedText:v10];
      sub_10016EA40(a3, 0);
      swift_unknownObjectRelease();
    }

    else
    {
      [a1 setMapItem:v8];
      sub_10016EA40(a3, 0);
    }
  }

  LODWORD(v7) = 1144750080;
  [a1 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v11) = 1132068864;

  return [a1 setContentCompressionResistancePriority:0 forAxis:v11];
}

uint64_t sub_1002147E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10021482C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

Swift::Void __swiftcall ContaineeViewController._maps_setShowActionBar(shouldShowActionBar:)(Swift::Bool shouldShowActionBar)
{
  v1 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v1);
  UIViewController.traitOverrides.getter();
  UIMutableTraits.shouldShowActionBar.setter();
  UIViewController.traitOverrides.setter();
}

void sub_100214C54(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [objc_opt_self() sharedHelper];
    v9 = [v5 alertControllerForAttemptedAddCollection];

    if (v9)
    {
      [v4 _maps_topMostPresentViewController:v9 animated:1 completion:0];
    }

    else
    {
      v6 = [objc_allocWithZone(CollectionCreateViewController) initWithEditSession:a1];
      [v6 setContaineeDelegate:v1];
      [v6 setTarget:251];
      v7 = OBJC_IVAR____TtC4Maps17UserGuidesContext_containees;
      swift_beginAccess();
      v8 = v6;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      [v4 setNeedsUpdateComponent:@"cards" animated:1];
    }
  }
}

void sub_100214E34(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a1 setContaineeDelegate:v2];
    v6 = OBJC_IVAR____TtC4Maps17UserGuidesContext_containees;
    swift_beginAccess();
    v7 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v2 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    [v5 setNeedsUpdateComponent:@"cards" animated:1];
  }
}

void sub_100214F44(uint64_t a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [objc_allocWithZone(CollectionSaveSession) initWithCollection:a1];
    v7 = [objc_allocWithZone(CollectionAddViewController) initWithNibName:0 bundle:0];
    [v7 setContaineeDelegate:v2];
    [v7 setAddFromACDelegate:v2];
    [v7 setEditSession:v6];
    v8 = OBJC_IVAR____TtC4Maps17UserGuidesContext_containees;
    swift_beginAccess();
    v9 = v7;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v2 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    [v5 setNeedsUpdateComponent:@"cards" animated:1];
  }
}

void sub_1002150CC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_allocWithZone(PlaceCardItem) initWithMapItem:a1];
    v5 = type metadata accessor for PlaceCardContextConfiguration();
    v6 = objc_allocWithZone(v5);
    v6[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
    *&v6[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v4;
    v6[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = 0;
    *&v6[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = 0;
    v6[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
    v11.receiver = v6;
    v11.super_class = v5;
    v7 = v4;
    v8 = objc_msgSendSuper2(&v11, "init");
    v9 = objc_allocWithZone(type metadata accessor for PlaceCardContext());
    v10 = sub_100504630(v8);
    [v3 pushContext:v10 animated:1 completion:{0, v11.receiver, v11.super_class}];
  }
}

void sub_100215204(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps17UserGuidesContext_searchInfo);
  *(v1 + OBJC_IVAR____TtC4Maps17UserGuidesContext_searchInfo) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = a1;
  if (Strong)
  {
    v6 = v5;
    v7 = [Strong searchPinsManager];

    if (v7)
    {
      [v7 setSearchPinsFromSearchInfo:v6 scrollToResults:1 displayPlaceCardForResult:0 animated:1 completion:0];
    }
  }
}

void sub_10021533C()
{
  v1 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_topConstraint;
  v2 = *&v0[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_topConstraint];
  if (v2)
  {
    [v2 setActive:0];
  }

  v3 = sub_100215458();
  v4 = [v3 topAnchor];

  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:*&v0[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_topPadding]];

  v7 = *&v0[v1];
  *&v0[v1] = v6;
  v8 = v6;

  if (v8)
  {
    [v8 setActive:1];
  }
}

id sub_100215458()
{
  v1 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImageView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setContentMode:1];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100215500()
{
  v1 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setLineBreakMode:0];
    [v4 setNumberOfLines:0];
    [v4 setLineBreakMode:0];
    v5 = [objc_opt_self() labelColor];
    [v4 setTextColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1002155FC()
{
  v1 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___subTitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___subTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___subTitleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setLineBreakMode:0];
    [v4 setNumberOfLines:0];
    v5 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1002156E8()
{
  v1 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___closeButton;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___closeButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___closeButton);
  }

  else
  {
    v4 = [objc_opt_self() buttonWithType:0];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 systemGray6Color];
    [v6 setBackgroundColor:v7];

    v8 = [v5 secondaryLabelColor];
    [v6 setTintColor:v8];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_10021580C()
{
  v1 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___actionButton;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___actionButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___actionButton);
  }

  else
  {
    v4 = sub_10021586C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_10021586C()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  static UIButton.Configuration.filled()();
  UIButton.Configuration.contentInsets.setter();
  v11 = [objc_opt_self() systemBlueColor];
  v12 = [v11 colorWithAlphaComponent:0.1];

  UIButton.Configuration.baseBackgroundColor.setter();
  (*(v1 + 104))(v3, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v0);
  UIButton.Configuration.cornerStyle.setter();
  sub_100014C84(0, &unk_101922F60);
  (*(v5 + 16))(v7, v10, v4);
  v13 = UIButton.init(configuration:primaryAction:)();
  v14 = [v13 titleLabel];
  if (v14)
  {
    v15 = v14;
    [v14 setAdjustsFontForContentSizeCategory:1];
  }

  v16 = [v13 titleLabel];
  if (v16)
  {
    v17 = v16;
    v18 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
    [v17 setFont:v18];
  }

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  (*(v5 + 8))(v10, v4);
  return v13;
}

id sub_100215B70()
{
  v1 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___verticalStackView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___verticalStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___verticalStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setAxis:1];
    [v4 setDistribution:0];
    [v4 setAlignment:1];
    [v4 setSpacing:6.0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100215C48(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_closeButtonWidth] = 0x403E000000000000;
  *&v4[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_topPadding] = 0x403E000000000000;
  v9 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_iconViewTintColor;
  *&v4[v9] = [objc_opt_self() secondaryLabelColor];
  *&v4[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_bottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_topConstraint] = 0;
  *&v4[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_viewModel] = 0;
  v10 = &v4[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_closeButtonHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_actionButtonHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___subTitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___closeButton] = 0;
  *&v4[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___actionButton] = 0;
  *&v4[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___verticalStackView] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for FeatureDiscoveryTipkitView();
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_1000CE6B8(&unk_10190CA20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1011E1D40;
  *(v13 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v13 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v13 + 48) = type metadata accessor for UITraitVerticalSizeClass();
  *(v13 + 56) = &protocol witness table for UITraitVerticalSizeClass;
  *(v13 + 64) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v13 + 72) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v14 = v12;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  sub_100215E38();

  return v14;
}

void sub_100215E38()
{
  [v0 setShowBubbleIndicator:1];
  [v0 setCornerRadius:24.0];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = sub_100215458();
  [v0 addSubview:v1];

  v2 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___imageView;
  [*&v0[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___imageView] setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  [*&v0[v2] setTintColor:*&v0[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_iconViewTintColor]];
  v3 = sub_100215B70();
  [v0 addSubview:v3];

  v4 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___verticalStackView;
  v5 = *&v0[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___verticalStackView];
  v6 = sub_100215500();
  [v5 addArrangedSubview:v6];

  v7 = *&v0[v4];
  v8 = sub_1002155FC();
  [v7 addArrangedSubview:v8];

  v9 = sub_1002156E8();
  [v0 addSubview:v9];

  v10 = objc_opt_self();
  v11 = [v0 traitCollection];
  v12 = [v10 preferredFontForTextStyle:UIFontTextStyleHeadline compatibleWithTraitCollection:v11];

  v13 = [objc_opt_self() configurationWithFont:v12];
  v14 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___closeButton;
  v15 = *&v0[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___closeButton];
  v20 = v13;
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() systemImageNamed:v16 withConfiguration:v20];

  [v15 setImage:v17 forState:0];
  v18 = [*&v0[v14] layer];
  [v18 setMasksToBounds:1];

  v19 = [*&v0[v14] layer];
  [v19 setCornerRadius:15.0];

  [*&v0[v14] addTarget:v0 action:"closeTipkitView" forControlEvents:64];
  sub_100216C4C();
  sub_1002171DC();
}

id sub_100216174(void *a1)
{
  *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_closeButtonWidth] = 0x403E000000000000;
  *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_topPadding] = 0x403E000000000000;
  v3 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_iconViewTintColor;
  *&v1[v3] = [objc_opt_self() secondaryLabelColor];
  *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_bottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_topConstraint] = 0;
  *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_viewModel] = 0;
  v4 = &v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_closeButtonHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_actionButtonHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___imageView] = 0;
  *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___subTitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___closeButton] = 0;
  *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___actionButton] = 0;
  *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___verticalStackView] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FeatureDiscoveryTipkitView();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

void sub_1002162E0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_viewModel);
  *(v1 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_viewModel) = a1;
  v3 = a1;

  v4 = sub_100215458();
  v5 = [v3 image];
  [v4 setImage:v5];

  v6 = sub_100215500();
  v7 = [v3 title];
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v6 setText:v7];

  v8 = sub_1002155FC();
  v9 = [v3 subtitle];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  [v8 setText:v9];

  v10 = [v3 dismissHandler];
  if (v10)
  {
    v11 = v10;
    v10 = swift_allocObject();
    v10[2] = v11;
    v12 = sub_10010E4C4;
  }

  else
  {
    v12 = 0;
  }

  v13 = (v1 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_closeButtonHandler);
  v15 = *(v1 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_closeButtonHandler);
  v14 = *(v1 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_closeButtonHandler + 8);
  *v13 = v12;
  v13[1] = v10;
  sub_1000D3B90(v15, v14);
  v16 = [v3 actionHandler];
  if (v16)
  {
    v17 = v16;
    v16 = swift_allocObject();
    v16[2] = v17;
    v18 = sub_1000FA694;
  }

  else
  {
    v18 = 0;
  }

  v19 = (v1 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_actionButtonHandler);
  v21 = *(v1 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_actionButtonHandler);
  v20 = *(v1 + OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_actionButtonHandler + 8);
  *v19 = v18;
  v19[1] = v16;
  sub_1000D3B90(v21, v20);

  sub_100216504();
}

void sub_100216504()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_bottomConstraint;
  v3 = *&v0[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_bottomConstraint];
  if (v3)
  {
    [v3 setActive:0];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_viewModel;
  v6 = *&v0[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_viewModel];
  if (v6)
  {
    v7 = [v6 actionTitle];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        v13 = *&v1[v5];
        if (v13 && (v13 = [v13 actionHandler]) != 0)
        {
          v14 = v13;
          v13 = swift_allocObject();
          v13[2] = v14;
          v15 = sub_10010E4C4;
        }

        else
        {
          v15 = 0;
        }

        v22 = &v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_actionButtonHandler];
        v24 = *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_actionButtonHandler];
        v23 = *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_actionButtonHandler + 8];
        *v22 = v15;
        v22[1] = v13;
        sub_1000D3B90(v24, v23);
        v25 = sub_10021580C();
        [v1 addSubview:v25];

        v26 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___actionButton;
        v27 = *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___actionButton];
        v28 = objc_opt_self();
        v29 = v27;
        v30 = [v28 tintColor];
        [v29 setTitleColor:v30 forState:0];

        [*&v1[v26] addTarget:v1 action:"actionButtonClicked" forControlEvents:64];
        v31 = *&v1[v26];
        v32 = *&v1[v5];
        if (v32)
        {
          v33 = v31;
          v34 = [v32 actionTitle];
          if (v34)
          {
LABEL_22:
            [v33 setTitle:v34 forState:0];

            v35 = [v1 bottomAnchor];
            v36 = [*&v1[v26] bottomAnchor];
            v37 = [v35 constraintEqualToAnchor:v36 constant:20.0];

            sub_1000CE6B8(&qword_101908400);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1011E5C00;
            v39 = [*&v1[v26] leadingAnchor];
            v40 = sub_100215458();
            v41 = [v40 leadingAnchor];

            v42 = [v39 constraintEqualToAnchor:v41];
            *(inited + 32) = v42;
            v43 = [*&v1[v26] trailingAnchor];
            v44 = sub_1002156E8();
            v45 = [v44 trailingAnchor];

            v46 = [v43 constraintEqualToAnchor:v45];
            *(inited + 40) = v46;
            v47 = [*&v1[v26] topAnchor];
            v48 = sub_100215B70();
            v49 = [v48 bottomAnchor];

            v50 = [v47 constraintEqualToAnchor:v49 constant:8.0];
            *(inited + 48) = v50;
            *(inited + 56) = v37;
            v51 = v37;
            sub_10003B62C(inited);
            v52 = *&v1[v2];
            *&v1[v2] = v51;
            v53 = v51;

            v54 = objc_opt_self();
            sub_100014C84(0, &qword_10190B720);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v54 activateConstraints:isa];

            return;
          }
        }

        else
        {
          v33 = v31;
        }

        v34 = 0;
        goto LABEL_22;
      }
    }
  }

  v16 = sub_10021580C();
  [v16 removeFromSuperview];

  v17 = [v1 bottomAnchor];
  v18 = sub_100215B70();
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 constant:20.0];
  v21 = *&v1[v2];
  *&v1[v2] = v20;
  v56 = v20;

  if (v56)
  {
    [v56 setActive:1];
  }
}

id sub_100216B00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeatureDiscoveryTipkitView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100216C4C()
{
  v1 = v0;
  v2 = [v0 bottomAnchor];
  v3 = sub_100215B70();
  v4 = [v3 bottomAnchor];

  v48 = [v2 constraintEqualToAnchor:v4 constant:20.0];
  v5 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___verticalStackView;
  v6 = [*&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___verticalStackView] topAnchor];
  v7 = [v1 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:*&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_topPadding]];

  sub_1000CE6B8(&qword_101908400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E9570;
  v10 = sub_100215458();
  v11 = [v10 leadingAnchor];

  v12 = [v1 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:16.0];

  *(inited + 32) = v13;
  v14 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___imageView;
  v15 = [*&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___imageView] centerYAnchor];
  v16 = [*&v1[v5] centerYAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(inited + 40) = v17;
  *(inited + 48) = v8;
  v47 = v8;
  v18 = [v1 trailingAnchor];
  v19 = sub_1002156E8();
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:12.0];
  *(inited + 56) = v21;
  v22 = OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___closeButton;
  v23 = [*&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView____lazy_storage___closeButton] widthAnchor];
  v24 = [v23 constraintEqualToConstant:30.0];

  *(inited + 64) = v24;
  v25 = [*&v1[v22] heightAnchor];
  v26 = [*&v1[v22] widthAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(inited + 72) = v27;
  v28 = [*&v1[v22] leadingAnchor];
  v29 = [*&v1[v5] trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:6.0];

  *(inited + 80) = v30;
  v31 = [*&v1[v22] topAnchor];
  v32 = [*&v1[v5] topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(inited + 88) = v33;
  v34 = [*&v1[v5] topAnchor];
  v35 = [*&v1[v14] topAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(inited + 96) = v36;
  v37 = [*&v1[v5] leadingAnchor];
  v38 = [*&v1[v14] trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:8.0];

  *(inited + 104) = v39;
  *(inited + 112) = v48;
  v40 = v48;
  sub_10003B62C(inited);
  v41 = *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_bottomConstraint];
  *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_bottomConstraint] = v40;
  v42 = v40;

  v43 = *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_topConstraint];
  *&v1[OBJC_IVAR____TtC4Maps26FeatureDiscoveryTipkitView_topConstraint] = v47;
  v44 = v47;

  v45 = objc_opt_self();
  sub_100014C84(0, &qword_10190B720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints:isa];
}

void sub_1002171DC()
{
  [v0 layoutIfNeeded];
  v1 = [v0 traitCollection];
  [v1 userInterfaceStyle];

  v2 = [v0 backgroundView];
  v3 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [v2 setBackgroundColor:v3];

  v4 = sub_100215500();
  v5 = objc_opt_self();
  v6 = [v5 _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleHeadline weight:0 contentSizeCategory:2 symbolicTraits:UIFontWeightBold];
  [v4 setFont:v6];

  v7 = sub_1002155FC();
  v8 = [v5 _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody weight:0 contentSizeCategory:1024 symbolicTraits:UIFontWeightRegular];
  [v7 setFont:v8];
}

char *sub_1002173DC(char *result, uint64_t a2, void *a3)
{
  v3 = &result[*a3];
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 1);
    v6 = result;
    v7 = sub_1000CD9D4(v4);
    v4(v7);

    return sub_1000D3B90(v4, v5);
  }

  return result;
}

unint64_t sub_100217470()
{
  result = qword_101912A20;
  if (!qword_101912A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912A20);
  }

  return result;
}

void sub_1002174CC(void *a1)
{
  sub_1000CE6B8(&unk_101912A30);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a1 setArtworkData:isa];
}

uint64_t sub_100217544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100217634();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002175A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100217634();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10021760C()
{
  sub_100217634();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100217634()
{
  result = qword_101912A28;
  if (!qword_101912A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101912A28);
  }

  return result;
}

id sub_100217688(double a1)
{
  v2 = [objc_allocWithZone(TransitArtworkListView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v3) = 1148846080;
  [v2 setContentHuggingPriority:1 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v4];
  [v2 setSeparatorStyle:0];
  [v2 setShieldSize:6];
  [v2 setForcedWidth:a1];
  return v2;
}

uint64_t sub_100217754()
{
  v0 = type metadata accessor for PlaceSummaryViewModelUnit.PhotoCarousel(0);
  __chkstk_darwin(v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  sub_100217BE0(14, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100024F64(v5, &qword_10190D6A8);
  }

  else
  {
    sub_100227870(v5, v12, type metadata accessor for PlaceSummaryViewModelUnit);
    sub_100227870(v12, v9, type metadata accessor for PlaceSummaryViewModelUnit);
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_100227870(v9, v2, type metadata accessor for PlaceSummaryViewModelUnit.PhotoCarousel);
      v13 = *&v2[*(v0 + 20) + 8];

      sub_100227810(v2, type metadata accessor for PlaceSummaryViewModelUnit.PhotoCarousel);
      return v13;
    }

    sub_100227810(v9, type metadata accessor for PlaceSummaryViewModelUnit);
  }

  return 0;
}

unint64_t sub_1002179C8()
{
  v0 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100222634(15);
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
    if (swift_getEnumCaseMultiPayload() == 15)
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

uint64_t sub_100217BE0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v34 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v36;
  v30 = *(v36 + 16);
  if (v30)
  {
    v14 = 0;
    v15 = *(v10 + 20);
    v32 = v36 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v33 = v15;
    v28 = v11;
    v31 = v36;
    while (v14 < *(result + 16))
    {
      v16 = *(v11 + 72);
      v35 = v14;
      v17 = v32 + v16 * v14;
      v18 = v34;
      sub_1002277A8(v17, v34, type metadata accessor for PlaceSummaryViewModelLine);
      v19 = *(v18 + v33);

      result = sub_100227810(v18, type metadata accessor for PlaceSummaryViewModelLine);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = 0;
        v22 = v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
        while (v21 < *(v19 + 16))
        {
          v23 = v21++;
          sub_1002277A8(v22 + *(v4 + 72) * v23, v9, type metadata accessor for PlaceSummaryViewModelUnit);
          sub_1002277A8(v9, v6, type metadata accessor for PlaceSummaryViewModelUnit);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          sub_100227810(v6, type metadata accessor for PlaceSummaryViewModelUnit);
          switch(EnumCaseMultiPayload)
          {
            case 1:
              if (a1 != 1)
              {
                goto LABEL_8;
              }

              goto LABEL_44;
            case 2:
              if (a1 == 2)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            case 3:
              if (a1 == 3)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            case 4:
              if (a1 == 4)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            case 5:
              if (a1 == 5)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            case 6:
              if (a1 == 6)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            case 7:
              if (a1 == 7)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            case 8:
              if (a1 == 8)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            case 9:
              if (a1 == 9)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            case 10:
              if (a1 == 10)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            case 11:
              if (a1 == 11)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            case 12:
              if (a1 == 12)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            case 13:
              if (a1 == 13)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            case 14:
              if (a1 == 14)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            case 15:
              if (a1 == 15)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            case 16:
              if (a1 != 16)
              {
                goto LABEL_8;
              }

              goto LABEL_44;
            case 17:
              if (a1 == 17)
              {
                goto LABEL_44;
              }

              goto LABEL_8;
            default:
              if (!a1)
              {
LABEL_44:

                v25 = v29;
                sub_100227870(v9, v29, type metadata accessor for PlaceSummaryViewModelUnit);
                v26 = 0;
                return (*(v4 + 56))(v25, v26, 1, v3);
              }

LABEL_8:
              result = sub_100227810(v9, type metadata accessor for PlaceSummaryViewModelUnit);
              if (v20 == v21)
              {
                goto LABEL_3;
              }

              break;
          }
        }

        __break(1u);
        break;
      }

LABEL_3:
      v14 = v35 + 1;

      result = v31;
      v11 = v28;
      if (v14 == v30)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_45:

    v26 = 1;
    v25 = v29;
    return (*(v4 + 56))(v25, v26, 1, v3);
  }

  return result;
}

void *sub_1002180A8(int a1, int a2)
{
  v343 = a2;
  v318 = a1;
  v317 = type metadata accessor for PlaceSummaryViewModelUnit.Hours(0);
  __chkstk_darwin(v317);
  v340 = v271 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = type metadata accessor for PlaceSummaryViewModelUnit.Delimiter(0);
  __chkstk_darwin(v316);
  v339 = v271 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0);
  __chkstk_darwin(v315);
  v338 = v271 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = type metadata accessor for PlaceSummaryViewModelUnit.UGCUserRecommendations(0);
  __chkstk_darwin(v314);
  v337 = v271 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(0);
  __chkstk_darwin(v320);
  v347 = v271 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  PartyRatings = type metadata accessor for PlaceSummaryViewModelUnit.FirstPartyRatings(0);
  __chkstk_darwin(PartyRatings);
  v342 = v271 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(0);
  __chkstk_darwin(v312);
  v341 = v271 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000CE6B8(&qword_10190D5A0);
  __chkstk_darwin(v10 - 8);
  v12 = v271 - v11;
  v350 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
  v13 = *(v350 - 8);
  __chkstk_darwin(v350);
  v336 = v271 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v311 = v271 - v16;
  v321 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);
  __chkstk_darwin(v321);
  v349 = v271 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = type metadata accessor for PlaceSummaryViewModelUnit.Distance(0);
  __chkstk_darwin(v310);
  v335 = v271 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = type metadata accessor for RichTextType();
  v19 = *(v357 - 8);
  __chkstk_darwin(v357);
  v21 = v271 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v309 = v271 - v23;
  __chkstk_darwin(v24);
  v334 = v271 - v25;
  __chkstk_darwin(v26);
  v355 = v271 - v27;
  v364 = type metadata accessor for RichTextViewModel();
  v28 = *(v364 - 8);
  __chkstk_darwin(v364);
  v333 = v271 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v332 = v271 - v31;
  __chkstk_darwin(v32);
  v331 = v271 - v33;
  __chkstk_darwin(v34);
  v330 = v271 - v35;
  __chkstk_darwin(v36);
  v329 = v271 - v37;
  __chkstk_darwin(v38);
  v328 = v271 - v39;
  __chkstk_darwin(v40);
  v304 = v271 - v41;
  __chkstk_darwin(v42);
  v308 = v271 - v43;
  __chkstk_darwin(v44);
  v307 = v271 - v45;
  __chkstk_darwin(v46);
  v327 = v271 - v47;
  __chkstk_darwin(v48);
  v326 = v271 - v49;
  __chkstk_darwin(v50);
  v325 = v271 - v51;
  __chkstk_darwin(v52);
  v324 = v271 - v53;
  __chkstk_darwin(v54);
  v306 = v271 - v55;
  __chkstk_darwin(v56);
  v305 = v271 - v57;
  __chkstk_darwin(v58);
  v323 = v271 - v59;
  __chkstk_darwin(v60);
  v276 = v271 - v61;
  __chkstk_darwin(v62);
  v286 = v271 - v63;
  __chkstk_darwin(v64);
  v289 = v271 - v65;
  __chkstk_darwin(v66);
  v288 = v271 - v67;
  __chkstk_darwin(v68);
  v287 = v271 - v69;
  v352 = type metadata accessor for AttributedString();
  v70 = *(v352 - 8);
  __chkstk_darwin(v352);
  v322 = v271 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v348 = v271 - v73;
  v346 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
  __chkstk_darwin(v346);
  v345 = v271 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v75 = *(v368 - 8);
  __chkstk_darwin(v368);
  v77 = (v271 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = *(v2 + *(type metadata accessor for PlaceSummaryViewModelLine(0) + 20));
  v367 = *(v78 + 16);
  if (v367)
  {
    v79 = 0;
    v366 = v78 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v80 = v12;
    v81 = (v19 + 104);
    v360 = enum case for RichTextType.line(_:);
    v363 = (v19 + 8);
    v301 = "_evChargerStatus";
    v300 = "[SearchAC] Added to Library";
    v299 = 0x8000000101225530;
    v298 = enum case for RichTextType.hours(_:);
    v344 = (v70 + 16);
    v275 = "he Infatuation’s Pick.";
    v274 = 0x800000010121F5E0;
    v285 = "we are referring to the place";
    v284 = 0x8000000101221B10;
    v283 = "ThirdPartyRatingNumber";
    v282 = " of the parent map item.";
    v281 = 0x8000000101221AA0;
    v280 = "FirstPartyRatingsStack";
    v297 = enum case for RichTextType.thirdPartyRating(_:);
    v296 = "yViewModel.swift";
    v319 = "[Place Summary] and %lu others";
    v295 = enum case for RichTextType.firstPartyRating(_:);
    v294 = "sult is inside of";
    v293 = 0x800000010121F660;
    v292 = (v13 + 48);
    v279 = 0x800000010121F570;
    v278 = "[SearchAC] Percent Recommend";
    v291 = enum case for RichTextType.distance(_:);
    v273 = enum case for RichTextType.contactAddresses(_:);
    v290 = (v70 + 8);
    v354 = xmmword_1011E1D30;
    v272 = enum case for RichTextType.custom(_:);
    v277 = enum case for RichTextType.title(_:);
    v369 = _swiftEmptyArrayStorage;
    v303 = v80;
    v82 = v357;
    v302 = v21;
    v83 = v355;
    v358 = v28;
    v359 = v75;
    v361 = v77;
    v362 = v81;
    v365 = v78;
    v353 = v28 + 32;
    while (2)
    {
      if (v79 < *(v78 + 16))
      {
        v85 = v79++;
        sub_1002277A8(v366 + *(v75 + 72) * v85, v77, type metadata accessor for PlaceSummaryViewModelUnit);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v86 = v79;
            sub_100227870(v77, v335, type metadata accessor for PlaceSummaryViewModelUnit.Distance);
            (*v81)(v83, v291, v82);
            RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
            (*v363)(v83, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
            }

            v178 = v369[2];
            v177 = v369[3];
            if (v178 >= v177 >> 1)
            {
              v369 = sub_100355BD8(v177 > 1, v178 + 1, 1, v369);
            }

            v179 = v369;
            v369[2] = v178 + 1;
            (*(v28 + 32))(v179 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v178, v323, v364);
            sub_100227810(v335, type metadata accessor for PlaceSummaryViewModelUnit.Distance);
            goto LABEL_4;
          case 2u:
            v130 = v349;
            sub_100227870(v77, v349, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
            v131 = v303;
            sub_1000D2DFC(v130 + *(v321 + 28), v303, &qword_10190D5A0);
            if ((*v292)(v131, 1, v350) == 1)
            {
              v86 = v79;
              sub_100024F64(v131, &qword_10190D5A0);
              if (qword_101906768 != -1)
              {
                swift_once();
              }

              v132 = qword_1019600D8;
              v133 = String._bridgeToObjectiveC()();
              v134 = String._bridgeToObjectiveC()();
              v135 = [v132 localizedStringForKey:v133 value:v134 table:0];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              sub_1000CE6B8(&unk_10190D5C0);
              v136 = swift_allocObject();
              *(v136 + 16) = v354;
              v137 = *(v349 + *(v321 + 20));
              *(v136 + 56) = &type metadata for Int;
              *(v136 + 64) = &protocol witness table for Int;
              *(v136 + 32) = v137;
              static String.localizedStringWithFormat(_:_:)();

              (*v81)(v83, v360, v82);
              RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

              (*v363)(v83, v82);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
              }

              v28 = v358;
              v139 = v369[2];
              v138 = v369[3];
              v77 = v361;
              if (v139 >= v138 >> 1)
              {
                v369 = sub_100355BD8(v138 > 1, v139 + 1, 1, v369);
              }

              sub_100227810(v349, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
              v140 = v369;
              v369[2] = v139 + 1;
              (*(v28 + 32))(v140 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v139, v306, v364);
LABEL_4:
              v78 = v365;
              v79 = v86;
            }

            else
            {
              v108 = v79;
              v216 = v131;
              v217 = v311;
              sub_100227870(v216, v311, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
              if (qword_101906768 != -1)
              {
                swift_once();
              }

              v379._object = v279;
              v218._countAndFlagsBits = 0x5020739980E24025;
              v218._object = 0xAB000000006B6369;
              v219._countAndFlagsBits = 0;
              v219._object = 0xE000000000000000;
              v379._countAndFlagsBits = 0x1000000000000048;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v218, 0, qword_1019600D8, v219, v379);
              sub_1000CE6B8(&unk_10190D5C0);
              v220 = swift_allocObject();
              *(v220 + 16) = v354;
              v221 = (v217 + *(v350 + 24));
              v223 = *v221;
              v222 = v221[1];
              *(v220 + 56) = &type metadata for String;
              *(v220 + 64) = sub_1000DA61C();
              *(v220 + 32) = v223;
              *(v220 + 40) = v222;

              static String.localizedStringWithFormat(_:_:)();

              (*v362)(v83, v360, v82);
              RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

              (*v363)(v83, v82);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
              }

              v28 = v358;
              v225 = v369[2];
              v224 = v369[3];
              v77 = v361;
              if (v225 >= v224 >> 1)
              {
                v369 = sub_100355BD8(v224 > 1, v225 + 1, 1, v369);
              }

              sub_100227810(v311, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
              sub_100227810(v349, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
              v226 = v369;
              v369[2] = v225 + 1;
              (*(v28 + 32))(v226 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v225, v305, v364);
LABEL_142:
              v78 = v365;
              v79 = v108;
              v81 = v362;
            }

            goto LABEL_5;
          case 3u:
            v86 = v79;
            v141 = v77;
            v142 = v336;
            sub_100227870(v141, v336, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
            (*v81)(v83, v360, v82);
            v143 = v350;
            v144 = (v142 + *(v350 + 24));
            v145 = v144[1];
            *&v370 = *v144;
            *(&v370 + 1) = v145;

            v146._countAndFlagsBits = 8250;
            v146._object = 0xE200000000000000;
            String.append(_:)(v146);
            String.append(_:)(*(v142 + *(v143 + 28)));
            RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

            (*v363)(v83, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
            }

            v148 = v369[2];
            v147 = v369[3];
            v77 = v361;
            if (v148 >= v147 >> 1)
            {
              v369 = sub_100355BD8(v147 > 1, v148 + 1, 1, v369);
            }

            sub_100227810(v336, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
            v149 = v369;
            v369[2] = v148 + 1;
            (*(v28 + 32))(v149 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v148, v324, v364);
            goto LABEL_4;
          case 4u:
            v108 = v79;
            v114 = v341;
            sub_100227870(v77, v341, type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide);
            if (qword_101906768 != -1)
            {
              swift_once();
            }

            v377._object = v293;
            v115._countAndFlagsBits = 0xD00000000000002BLL;
            v115._object = (v294 | 0x8000000000000000);
            v377._countAndFlagsBits = 0xD000000000000021;
            v116._countAndFlagsBits = 0x4025206E49;
            v116._object = 0xE500000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v115, 0, qword_1019600D8, v116, v377);
            sub_1000CE6B8(&unk_10190D5C0);
            v117 = swift_allocObject();
            *(v117 + 16) = v354;
            v118 = (v114 + *(v312 + 20));
            v120 = *v118;
            v119 = v118[1];
            *(v117 + 56) = &type metadata for String;
            *(v117 + 64) = sub_1000DA61C();
            *(v117 + 32) = v120;
            *(v117 + 40) = v119;

            static String.localizedStringWithFormat(_:_:)();

            (*v362)(v83, v360, v82);
            RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

            (*v363)(v83, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
            }

            v28 = v358;
            v122 = v369[2];
            v121 = v369[3];
            v123 = v341;
            v77 = v361;
            if (v122 >= v121 >> 1)
            {
              v369 = sub_100355BD8(v121 > 1, v122 + 1, 1, v369);
              v123 = v341;
            }

            sub_100227810(v123, type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide);
            v124 = v369;
            v369[2] = v122 + 1;
            (*(v28 + 32))(v124 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v122, v325, v364);
            goto LABEL_142;
          case 5u:
            v86 = v79;
            v184 = v342;
            sub_100227870(v77, v342, type metadata accessor for PlaceSummaryViewModelUnit.FirstPartyRatings);
            if (qword_101906768 != -1)
            {
              swift_once();
            }

            v185 = qword_1019600D8;
            v186 = String._bridgeToObjectiveC()();
            v187 = String._bridgeToObjectiveC()();
            v188 = [v185 localizedStringForKey:v186 value:v187 table:0];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_1000CE6B8(&unk_10190D5C0);
            v189 = swift_allocObject();
            *(v189 + 16) = v354;
            v190 = *(v184 + *(PartyRatings + 20));
            *(v189 + 56) = &type metadata for Int;
            *(v189 + 64) = &protocol witness table for Int;
            *(v189 + 32) = v190;
            static String.localizedStringWithFormat(_:_:)();

            (*v81)(v83, v295, v82);
            RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

            (*v363)(v83, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
            }

            v28 = v358;
            v192 = v369[2];
            v191 = v369[3];
            v193 = v342;
            v77 = v361;
            if (v192 >= v191 >> 1)
            {
              v369 = sub_100355BD8(v191 > 1, v192 + 1, 1, v369);
              v193 = v342;
            }

            sub_100227810(v193, type metadata accessor for PlaceSummaryViewModelUnit.FirstPartyRatings);
            v194 = v369;
            v369[2] = v192 + 1;
            (*(v28 + 32))(v194 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v192, v326, v364);
            goto LABEL_4;
          case 6u:
            v108 = v79;
            v195 = v343;
            v196 = v347;
            sub_100227870(v77, v347, type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings);
            sub_1000CE6B8(&unk_10190D5C0);
            v197 = swift_allocObject();
            *(v197 + 16) = v354;
            v198 = v320;
            v199 = *(v196 + *(v320 + 20));
            *(v197 + 56) = &type metadata for Float;
            *(v197 + 64) = &protocol witness table for Float;
            *(v197 + 32) = v199;
            v200 = static String.localizedStringWithFormat(_:_:)();
            v202 = v201;

            v203 = v198;
            *&v370 = v200;
            *(&v370 + 1) = v202;
            if (v195 == 2 && *(v196 + *(v198 + 36)) == 1)
            {
              v374._countAndFlagsBits = 10272;
              v374._object = 0xE200000000000000;
              v373 = *(v196 + *(v198 + 28));
              v204._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v204);

              v205._countAndFlagsBits = 41;
              v205._object = 0xE100000000000000;
              String.append(_:)(v205);
              String.append(_:)(v374);

              v196 = v347;
              v203 = v320;
            }

            v206 = (v196 + *(v203 + 32));
            v207 = v206[1];
            if (v207)
            {
              v208 = *v206;
              v209 = HIBYTE(v207) & 0xF;
              if ((v207 & 0x2000000000000000) == 0)
              {
                v209 = v208 & 0xFFFFFFFFFFFFLL;
              }

              if (v343 == 2 && v209)
              {
                v374._countAndFlagsBits = 32;
                v374._object = 0xE100000000000000;
                String.append(_:)(*(&v207 - 1));
                String.append(_:)(v374);
              }
            }

            v83 = v355;
            (*v362)(v355, v297, v82);
            RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

            (*v363)(v83, v82);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v28 = v358;
            v77 = v361;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
            }

            v212 = v369[2];
            v211 = v369[3];
            if (v212 >= v211 >> 1)
            {
              v369 = sub_100355BD8(v211 > 1, v212 + 1, 1, v369);
            }

            v213 = v369;
            v369[2] = v212 + 1;
            (*(v28 + 32))(v213 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v212, v327, v364);
            v214 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings;
            p_object = &v374._object;
            goto LABEL_141;
          case 7u:
            v150 = v337;
            sub_100227870(v77, v337, type metadata accessor for PlaceSummaryViewModelUnit.UGCUserRecommendations);
            v86 = v79;
            if (*(v150 + *(v314 + 20)) == 1)
            {
              if (qword_101906768 != -1)
              {
                swift_once();
              }

              v151._countAndFlagsBits = 0xD000000000000013;
              v378._object = v281;
              v151._object = (v282 | 0x8000000000000000);
              v378._countAndFlagsBits = 0xD00000000000004DLL;
              v152._countAndFlagsBits = 0x6F63655220756F59;
              v152._object = 0xED0000646E656D6DLL;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v151, 0, qword_1019600D8, v152, v378);
              (*v81)(v83, v360, v82);
              RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

              (*v363)(v83, v82);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
              }

              v154 = v369[2];
              v153 = v369[3];
              v77 = v361;
              if (v154 >= v153 >> 1)
              {
                v369 = sub_100355BD8(v153 > 1, v154 + 1, 1, v369);
              }

              sub_100227810(v337, type metadata accessor for PlaceSummaryViewModelUnit.UGCUserRecommendations);
              v155 = v369;
              v369[2] = v154 + 1;
              (*(v28 + 32))(v155 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v154, v307, v364);
            }

            else
            {
              if (qword_101906768 != -1)
              {
                swift_once();
              }

              v227._countAndFlagsBits = 0xD000000000000011;
              v380._object = v284;
              v227._object = (v285 | 0x8000000000000000);
              v380._countAndFlagsBits = 0xD00000000000004CLL;
              v228._countAndFlagsBits = 0x6C73694420756F59;
              v228._object = 0xEB00000000656B69;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v227, 0, qword_1019600D8, v228, v380);
              (*v81)(v83, v360, v82);
              RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

              (*v363)(v83, v82);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
              }

              v230 = v369[2];
              v229 = v369[3];
              v77 = v361;
              if (v230 >= v229 >> 1)
              {
                v369 = sub_100355BD8(v229 > 1, v230 + 1, 1, v369);
              }

              sub_100227810(v337, type metadata accessor for PlaceSummaryViewModelUnit.UGCUserRecommendations);
              v231 = v369;
              v369[2] = v230 + 1;
              (*(v28 + 32))(v231 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v230, v308, v364);
            }

            goto LABEL_4;
          case 8u:
          case 0xEu:
          case 0x11u:
            sub_100227810(v77, type metadata accessor for PlaceSummaryViewModelUnit);
            goto LABEL_5;
          case 9u:
            v351 = v79;
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v94 = v370;
            if (!v370)
            {
              goto LABEL_149;
            }

            v95 = [v370 name];
            if (v95)
            {
              v96 = v95;
              v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v99 = v98;

              if (qword_101906768 != -1)
              {
                swift_once();
              }

              v100._countAndFlagsBits = 0xD000000000000018;
              v376._object = v274;
              v100._object = (v275 | 0x8000000000000000);
              v376._countAndFlagsBits = 0xD000000000000041;
              v101._countAndFlagsBits = 0x6E6F697461636F4CLL;
              v101._object = 0xEB00000000402520;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v100, 0, qword_1019600D8, v101, v376);
              sub_1000CE6B8(&unk_10190D5C0);
              v102 = swift_allocObject();
              *(v102 + 16) = v354;
              *(v102 + 56) = &type metadata for String;
              *(v102 + 64) = sub_1000DA61C();
              *(v102 + 32) = v97;
              *(v102 + 40) = v99;
              static String.localizedStringWithFormat(_:_:)();

              v81 = v362;
              v103 = v355;
              (*v362)(v355, v360, v82);
              RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

              (*v363)(v103, v82);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
              }

              v28 = v358;
              v77 = v361;
              v105 = v369[2];
              v104 = v369[3];
              if (v105 >= v104 >> 1)
              {
                v369 = sub_100355BD8(v104 > 1, v105 + 1, 1, v369);
              }

              v106 = v369;
              v369[2] = v105 + 1;
              (*(v28 + 32))(v106 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v105, v304, v364);
              v83 = v355;
              v75 = v359;
              goto LABEL_163;
            }

LABEL_149:

            v83 = v355;
            v75 = v359;
            v78 = v365;
            v79 = v351;
            goto LABEL_5;
          case 0xAu:
            v107 = v81;
            v108 = v79;
            v109 = v338;
            sub_100227870(v77, v338, type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry);
            (*v107)(v334, v360, v82);
            sub_100014C84(0, &qword_10190EED0);
            v110 = v109 + *(v315 + 20);
            v111 = v346;
            (*v344)(v322, v110 + *(v346 + 20), v352);
            v112 = NSAttributedString.init(_:)();
            v113 = [v112 string];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (!*(v110 + *(v111 + 28)))
            {
              v244 = [objc_opt_self() secondaryLabelColor];
              Color.init(_:)();
            }

            v245 = v334;
            RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

            (*v363)(v245, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
            }

            v83 = v355;
            v28 = v358;
            v77 = v361;
            v247 = v369[2];
            v246 = v369[3];
            if (v247 >= v246 >> 1)
            {
              v369 = sub_100355BD8(v246 > 1, v247 + 1, 1, v369);
            }

            v248 = v369;
            v369[2] = v247 + 1;
            (*(v28 + 32))(v248 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v247, v328, v364);
            v214 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry;
            p_object = &v368;
LABEL_141:
            sub_100227810(*(p_object - 32), v214);
            goto LABEL_142;
          case 0xBu:
            v86 = v79;
            sub_100227870(v77, v339, type metadata accessor for PlaceSummaryViewModelUnit.Delimiter);
            v180 = v309;
            (*v81)(v309, v360, v82);
            RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

            (*v363)(v180, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
            }

            v182 = v369[2];
            v181 = v369[3];
            if (v182 >= v181 >> 1)
            {
              v369 = sub_100355BD8(v181 > 1, v182 + 1, 1, v369);
            }

            sub_100227810(v339, type metadata accessor for PlaceSummaryViewModelUnit.Delimiter);
            v183 = v369;
            v369[2] = v182 + 1;
            (*(v28 + 32))(v183 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v182, v329, v364);
            goto LABEL_4;
          case 0xCu:
            v86 = v79;
            sub_100227870(v77, v340, type metadata accessor for PlaceSummaryViewModelUnit.Hours);
            (*v81)(v83, v298, v82);
            RichTextType.set(attributed:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
            (*v363)(v83, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
            }

            v92 = v369[2];
            v91 = v369[3];
            if (v92 >= v91 >> 1)
            {
              v369 = sub_100355BD8(v91 > 1, v92 + 1, 1, v369);
            }

            sub_100227810(v340, type metadata accessor for PlaceSummaryViewModelUnit.Hours);
            v93 = v369;
            v369[2] = v92 + 1;
            (*(v28 + 32))(v93 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v92, v330, v364);
            goto LABEL_4;
          case 0xDu:
            v86 = v79;
            v125 = v302;
            (*v81)(v302, v360, v82);
            swift_beginAccess();
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            if (v370 >= 3)
            {
              goto LABEL_174;
            }

            v126 = [objc_opt_self() *off_10160B4A8[v370]];
            Color.init(_:)();

            RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

            (*v363)(v125, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
            }

            v28 = v358;
            v75 = v359;
            v77 = v361;
            v81 = v362;
            v128 = v369[2];
            v127 = v369[3];
            if (v128 >= v127 >> 1)
            {
              v369 = sub_100355BD8(v127 > 1, v128 + 1, 1, v369);
            }

            v129 = v369;
            v369[2] = v128 + 1;
            (*(v28 + 32))(v129 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v128, v331, v364);
            v83 = v355;
            goto LABEL_4;
          case 0xFu:
            v86 = v79;
            sub_100227810(v77, type metadata accessor for PlaceSummaryViewModelUnit);
            if (qword_101906768 != -1)
            {
              swift_once();
            }

            v87._countAndFlagsBits = 0xD000000000000010;
            v375._object = v299;
            v88._countAndFlagsBits = 0xD00000000000001BLL;
            v88._object = (v301 | 0x8000000000000000);
            v87._object = (v300 | 0x8000000000000000);
            v375._countAndFlagsBits = 0xD000000000000028;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v88, 0, qword_1019600D8, v87, v375);
            (*v81)(v83, v360, v82);
            RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

            (*v363)(v83, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
            }

            v90 = v369[2];
            v89 = v369[3];
            v77 = v361;
            if (v90 >= v89 >> 1)
            {
              v369 = sub_100355BD8(v89 > 1, v90 + 1, 1, v369);
            }

            v84 = v369;
            v369[2] = v90 + 1;
            (*(v28 + 32))(v84 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v90, v332, v364);
            goto LABEL_4;
          case 0x10u:
            v86 = v79;
            v156 = *v77;
            (*v81)(v83, v360, v82);
            *&v370 = 10256610;
            *(&v370 + 1) = 0xA300000000000000;
            v157 = *(v156 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit8UserNote_userNote);
            v158 = *(v156 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit8UserNote_userNote + 8);

            v159._countAndFlagsBits = v157;
            v159._object = v158;
            String.append(_:)(v159);

            v160._countAndFlagsBits = 10322146;
            v160._object = 0xA300000000000000;
            String.append(_:)(v160);
            RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

            (*v363)(v83, v82);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
            }

            v162 = v369[2];
            v161 = v369[3];
            v28 = v358;
            if (v162 >= v161 >> 1)
            {
              v369 = sub_100355BD8(v161 > 1, v162 + 1, 1, v369);
            }

            v163 = v369;
            v369[2] = v162 + 1;
            (*(v28 + 32))(v163 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v162, v333, v364);
            v77 = v361;
            goto LABEL_4;
          default:
            v351 = v79;
            v164 = v77;
            v165 = v345;
            sub_100227870(v164, v345, type metadata accessor for PlaceSummaryViewModelUnit.Label);
            v166 = v346;
            v167 = *v344;
            v168 = v348;
            v169 = v352;
            (*v344)(v348, v165 + *(v346 + 20), v352);
            if (v318)
            {
              v170 = v343;
              (*v81)(v83, v277, v82);
              sub_100014C84(0, &qword_10190EED0);
              v167(v322, v168, v169);
              v171 = NSAttributedString.init(_:)();
              v172 = [v171 string];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              if (v170 == 2)
              {
                RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

                (*v363)(v83, v82);
                v173 = swift_isUniquelyReferenced_nonNull_native();
                v75 = v359;
                v77 = v361;
                if ((v173 & 1) == 0)
                {
                  v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
                }

                v28 = v358;
                v175 = v369[2];
                v174 = v369[3];
                if (v175 >= v174 >> 1)
                {
                  v369 = sub_100355BD8(v174 > 1, v175 + 1, 1, v369);
                }

                (*v290)(v348, v352);
                v176 = v369;
                v369[2] = v175 + 1;
                (*(v28 + 32))(v176 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v175, v287, v364);
              }

              else
              {
                RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

                (*v363)(v83, v82);
                v249 = swift_isUniquelyReferenced_nonNull_native();
                v75 = v359;
                v77 = v361;
                if ((v249 & 1) == 0)
                {
                  v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
                }

                v28 = v358;
                v251 = v369[2];
                v250 = v369[3];
                if (v251 >= v250 >> 1)
                {
                  v369 = sub_100355BD8(v250 > 1, v251 + 1, 1, v369);
                }

                (*v290)(v348, v352);
                v252 = v369;
                v369[2] = v251 + 1;
                (*(v28 + 32))(v252 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v251, v288, v364);
              }
            }

            else
            {
              v356 = v167;
              v232 = *(v165 + *(v166 + 40));
              if (v232)
              {
                v233 = *(v232 + OBJC_IVAR____TtC4Maps33PlaceSummaryStackedImageViewModel_imageSpecs);
                if (v233 >> 62)
                {
                  v234 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v234 = *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v75 = v359;
                v235 = v356;
                if (v234)
                {
                  v374._countAndFlagsBits = _swiftEmptyArrayStorage;
                  v271[1] = v232;

                  sub_100511474(0, v234 & ~(v234 >> 63), 0);
                  if (v234 < 0)
                  {
                    goto LABEL_173;
                  }

                  v236 = 0;
                  countAndFlagsBits = v374._countAndFlagsBits;
                  do
                  {
                    if ((v233 & 0xC000000000000001) != 0)
                    {
                      v238 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      v238 = *(v233 + 8 * v236 + 32);
                    }

                    v239 = v238;
                    v240 = type metadata accessor for PlaceSummaryImageProvider();
                    v241 = swift_allocObject();
                    v241[2] = 0;
                    v241[3] = v239;
                    v241[4] = 0;
                    v241[5] = 0;
                    v374._countAndFlagsBits = countAndFlagsBits;
                    v243 = *(countAndFlagsBits + 16);
                    v242 = *(countAndFlagsBits + 24);
                    if (v243 >= v242 >> 1)
                    {
                      sub_100511474((v242 > 1), v243 + 1, 1);
                      countAndFlagsBits = v374._countAndFlagsBits;
                    }

                    ++v236;
                    v371 = v240;
                    v372 = sub_100225B14(&unk_10190D5E0, type metadata accessor for PlaceSummaryImageProvider);
                    *&v370 = v241;
                    *(countAndFlagsBits + 16) = v243 + 1;
                    sub_10005E7BC(&v370, countAndFlagsBits + 40 * v243 + 32);
                    v82 = v357;
                    v75 = v359;
                    v81 = v362;
                    v235 = v356;
                  }

                  while (v234 != v236);
                  v83 = v355;
                }

                else
                {
                }

                (*v81)(v83, v273, v82);
                sub_100014C84(0, &qword_10190EED0);
                v235(v322, v348, v352);
                v259 = NSAttributedString.init(_:)();
                v260 = [v259 string];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

                (*v363)(v83, v82);
                v261 = swift_isUniquelyReferenced_nonNull_native();
                v28 = v358;
                if ((v261 & 1) == 0)
                {
                  v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
                }

                v77 = v361;
                v263 = v369[2];
                v262 = v369[3];
                if (v263 >= v262 >> 1)
                {
                  v369 = sub_100355BD8(v262 > 1, v263 + 1, 1, v369);
                }

                (*v290)(v348, v352);
                v264 = v369;
                v369[2] = v263 + 1;
                (*(v28 + 32))(v264 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v263, v289, v364);
              }

              else
              {
                v253 = *v81;
                if (*(v165 + *(v166 + 24) + 8))
                {
                  v253(v83, v272, v82);
                  sub_100014C84(0, &qword_10190EED0);
                  v356(v322, v348, v352);
                  v254 = NSAttributedString.init(_:)();
                  v255 = [v254 string];

                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();
                  v83 = v355;

                  (*v363)(v83, v82);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
                  }

                  v28 = v358;
                  v75 = v359;
                  v77 = v361;
                  v257 = v369[2];
                  v256 = v369[3];
                  if (v257 >= v256 >> 1)
                  {
                    v369 = sub_100355BD8(v256 > 1, v257 + 1, 1, v369);
                  }

                  (*v290)(v348, v352);
                  v258 = v369;
                  v369[2] = v257 + 1;
                  (*(v28 + 32))(v258 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v257, v286, v364);
                }

                else
                {
                  v253(v83, v360, v82);
                  sub_100014C84(0, &qword_10190EED0);
                  v356(v322, v348, v352);
                  v265 = NSAttributedString.init(_:)();
                  v266 = [v265 string];

                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

                  (*v363)(v83, v82);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v369 = sub_100355BD8(0, v369[2] + 1, 1, v369);
                  }

                  v28 = v358;
                  v75 = v359;
                  v77 = v361;
                  v268 = v369[2];
                  v267 = v369[3];
                  if (v268 >= v267 >> 1)
                  {
                    v369 = sub_100355BD8(v267 > 1, v268 + 1, 1, v369);
                  }

                  (*v290)(v348, v352);
                  v269 = v369;
                  v369[2] = v268 + 1;
                  (*(v28 + 32))(v269 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v268, v276, v364);
                }
              }
            }

            sub_100227810(v345, type metadata accessor for PlaceSummaryViewModelUnit.Label);
LABEL_163:
            v78 = v365;
            v79 = v351;
LABEL_5:
            if (v79 != v367)
            {
              continue;
            }

            return v369;
        }
      }

      break;
    }

    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10021BDC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100014C84(0, &qword_10190EC50);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_10021BE64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_10021C084()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10021C2C8(uint64_t a1)
{
  sub_1000D2DFC(a1, v13, &unk_101908380);
  if (v13[3])
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    if (swift_dynamicCast())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v1 = v13[0];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v2 = sub_1001F0398(v1, v13[0]);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v3 = v13[0];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v4 = v13[0];
      v5 = v13[0] & 0xF000000000000007;
      if ((~v3 & 0xF000000000000007) != 0)
      {
        if (v5 == 0xF000000000000007)
        {
          v6 = 0;
        }

        else
        {
          v6 = sub_100227948(v3, v13[0]);
          sub_10013BD74(v4);
        }
      }

      else
      {
        if (v5 == 0xF000000000000007)
        {
          v6 = 1;
          goto LABEL_12;
        }

        v6 = 0;
        v3 = v13[0];
      }

      sub_10013BD74(v3);
LABEL_12:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v7 = v13[0];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v8 = v13[0];
      if ((~v7 & 0xF000000000000007) != 0)
      {
        if ((~v13[0] & 0xF000000000000007) != 0)
        {
          v9 = sub_100227948(v7, v13[0]);
          sub_10013BD74(v8);
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {

        if ((~v8 & 0xF000000000000007) == 0)
        {
          v9 = 1;
          if ((v2 & 1) == 0)
          {
            goto LABEL_15;
          }

LABEL_23:
          v10 = v6 & v9;
          return v10 & 1;
        }

        v9 = 0;
        v7 = v8;
      }

      sub_10013BD74(v7);
      if ((v2 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else
  {
    sub_100024F64(v13, &unk_101908380);
  }

LABEL_15:
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_10021C698(char a1)
{
  v19 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v18 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v20;
  v9 = v20[2];
  if (v9)
  {
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    v17 = v20[2];
    while (v10 < v8[2])
    {
      v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v13 = *(v2 + 72);
      sub_1002277A8(v8 + v12 + v13 * v10, v6, type metadata accessor for PlaceSummaryViewModelLine);
      if (v6[*(v19 + 24)] == (a1 & 1))
      {
        sub_100227870(v6, v18, type metadata accessor for PlaceSummaryViewModelLine);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100511330(0, v11[2] + 1, 1);
          v11 = v20;
        }

        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          sub_100511330(v15 > 1, v16 + 1, 1);
          v11 = v20;
        }

        v11[2] = v16 + 1;
        result = sub_100227870(v18, v11 + v12 + v16 * v13, type metadata accessor for PlaceSummaryViewModelLine);
        v9 = v17;
      }

      else
      {
        result = sub_100227810(v6, type metadata accessor for PlaceSummaryViewModelLine);
      }

      if (v9 == ++v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_13:

    return v11;
  }

  return result;
}