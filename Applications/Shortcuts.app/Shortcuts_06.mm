id sub_10009B468()
{
  v1 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutButtonItem);
  }

  else
  {
    swift_getObjectType();
    v4 = sub_1000095CC();
    v5 = sub_10009B4D4(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_10009B4D4(uint64_t a1)
{
  v2 = [objc_opt_self() buttonWithType:1];
  sub_10000E8F4(v2);
  type metadata accessor for LibraryDataSource();
  v3 = method lookup function for LibraryDataSource();
  v3();

  LibraryLayoutMode.symbolName.getter();
  v4 = String._bridgeToObjectiveC()();

  [v2 setSymbolName:v4 pointSizeToWidthRatio:3.3];

  v5 = v2;
  sub_10009C704();
  v7 = v6;
  [v5 setMenu:v6];

  [v5 setShowsMenuAsPrimaryAction:1];
  v8 = method lookup function for LibraryDataSource();
  v9 = v5;

  v8(v10);

  v11 = LibraryLayoutMode.accessibilityLabel.getter();
  sub_1000163E0(v11, v12, v9);

  v13 = *(a1 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customLayoutButton);
  *(a1 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customLayoutButton) = v9;
  v14 = v9;

  v15 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v14];
  v16 = *(a1 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutButtonItem);
  *(a1 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutButtonItem) = v15;
  v17 = v15;

  return v17;
}

id sub_10009B6C8(void *a1)
{
  sub_100002FC4(0, &qword_100100110);
  sub_100007B58(0x73697370696C6C65, 0xEF656C637269632ELL);
  type metadata accessor for LibraryViewController();
  v16 = a1;
  v2 = objc_allocWithZone(UIBarButtonItem);
  v3 = a1;
  sub_1000A4D94();
  v5 = v4;
  v6 = sub_10009C704(v4);
  isa = sub_10009C590(v6).super.super.isa;

  [v5 setMenu:{isa, v16}];
  v8 = v5;
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = sub_100005D9C(v9);

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_1000163E0(v12, v14, v8);
  v3[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_overflowMenuButtonExists] = 1;
  return v8;
}

uint64_t sub_10009B850()
{
  v1 = (v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_libraryAccessibilityIdentifier);
  sub_100005BC0();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id sub_10009B8EC(uint64_t a1)
{
  v2 = [objc_opt_self() buttonWithType:1];
  v3 = String._bridgeToObjectiveC()();
  [v2 setSymbolName:v3 pointSizeToWidthRatio:1.8];

  [v2 addTarget:a1 action:"syncUnavailableItemPressed:" forControlEvents:64];
  v4 = *(a1 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customSyncUnavailableButtonItem);
  *(a1 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customSyncUnavailableButtonItem) = v2;
  v5 = v2;

  v6 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v5];
  return v6;
}

id sub_10009B9E4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = objc_opt_self();
  v3 = [v2 workflowUserDefaults];
  [v3 removeObserver:v0 forKeyPath:WFCloudKitSyncEnabledKey];

  v4 = [v2 syncShortcutsUserDefaults];
  [v4 removeObserver:v0 forKeyPath:WFSyncUnavailableMessageKey];

  v6.receiver = v0;
  v6.super_class = type metadata accessor for LibraryViewController();
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_10009BD54()
{
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_hasLoadedInitialData) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___dataSource) = 0;
  sub_10000A5EC(OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics);
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___editingItems) = 1;
  v1 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_flowLayout;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for LibraryViewController.LibraryFlowLayout()) init];
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___tableView) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_searchController) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___toolbarViewController) = 1;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customPlusButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___createButtonItem) = 1;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customEditButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage____editButtonItem) = 1;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customLayoutButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_overflowMenuButtonExists) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___overflowMenuButtonItem) = 0;
  v2 = (v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_libraryAccessibilityIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customSyncUnavailableButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___syncUnavailableButtonItem) = 1;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_cancellables) = &_swiftEmptySetSingleton;
  v3 = v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_tip;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_tipStatusObservation) = 0;
  v4 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_lockedAppBundleIdCache;
  v5 = [objc_opt_self() lockedAppBundleIdentifiers];
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + v4) = v6;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_viewIsVisible) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10009BF94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10009C4E0(Strong);
  }
}

void sub_10009BFE8(char *a1, id a2)
{
  v3 = [a2 preferredContentSizeCategory];
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      sub_100015DC0();
      v12 = *&a1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage____editButtonItem];
      *&a1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage____editButtonItem] = v13;
      sub_100012F04(v12);
    }
  }

  sub_100017B98(&v17);
  v14 = v17;

  v15 = sub_1000182F8(&v17);
  v14(v15);

  sub_1000296C4();
  v16 = [objc_opt_self() sharedContext];
  LOBYTE(v14) = WFApplicationContext.isIPadInSplitScreen.getter();

  if (v14)
  {
    [a1 setEditing:0 animated:1];
  }
}

uint64_t sub_10009C194()
{
  v9.receiver = v0;
  v9.super_class = sub_10000CC00();
  sub_10000F464(v9.super_class, "viewDidAppear:", v1, v2, v3, v4, v5, v6, v9);
  v7 = [v0 navigationItem];
  [v7 setHidesSearchBarWhenScrolling:1];

  return sub_100028740();
}

uint64_t sub_10009C200()
{
  v8.receiver = v0;
  v8.super_class = sub_10000CC00();
  sub_10000F464(v8.super_class, "viewWillDisappear:", v1, v2, v3, v4, v5, v6, v8);
  return sub_1000B02F0();
}

uint64_t sub_10009C294()
{
  sub_10000E8F4();
  sub_100003C10();
  sub_100010CE4();
}

void sub_10009C3FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 contentScrollViewForEdge:1];
  if (v6)
  {
    v7 = v6;
    v8 = objc_allocWithZone(RPTScrollViewTestParameters);
    v9 = v7;

    v10 = sub_1000A0E64(a1, a2, v9, 0, 0);
    [objc_opt_self() runTestWithParameters:v10];
  }
}

uint64_t sub_10009C4E0(uint64_t a1)
{
  v2 = sub_10009C704(a1);
  v3 = *(v1 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customLayoutButton);
  v7 = v2;
  if (v3)
  {
    [v3 setMenu:v2];
  }

  if (*(v1 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_overflowMenuButtonExists) == 1)
  {
    v4 = sub_10009B6A8();
    isa = sub_10009C590(v7).super.super.isa;
    [v4 setMenu:isa];
  }

  return _objc_release_x2();
}

UIMenu sub_10009C590(void *a1)
{
  sub_10002E87C(&qword_1001000E0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1000C1720;
  sub_100002FC4(0, &qword_100100C60);
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_1000A1620();
  v6 = sub_100005D9C(v4);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100003A00();
  *(swift_allocObject() + 16) = v1;
  v7 = v1;
  sub_100003FA4();
  *(preferredElementSize + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  *(preferredElementSize + 40) = a1;
  sub_100002FC4(0, &unk_100101F20);
  v8 = a1;
  sub_100003FA4();
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v9, v10, v12, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
}

void sub_10009C704()
{
  sub_1000043AC();
  v2 = v0;
  v3 = type metadata accessor for LibraryDataSource.SortType();
  sub_100004458();
  v85 = v4;
  v6 = __chkstk_darwin(v5);
  v81 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v7;
  __chkstk_darwin(v6);
  sub_100005184();
  v90 = v8;
  v92 = &_swiftEmptyArrayStorage;
  v9 = String._bridgeToObjectiveC()();
  v88 = "v16@?0@UIAlertAction8";
  String._bridgeToObjectiveC()();
  v10 = sub_10000A8CC();
  v11 = sub_100005D9C(v10);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100002FC4(0, &qword_100100110);
  v12 = LibraryLayoutMode.symbolName.getter();
  v14 = sub_100007B58(v12, v13);
  sub_10000E8F4(v14);
  sub_100003A0C();
  type metadata accessor for LibraryDataSource();
  sub_10000F730();
  v89 = v15;
  v16 = method lookup function for LibraryDataSource();
  v16();

  v17 = LibraryLayoutMode.rawValue.getter();
  v19 = v18;
  if (v17 != LibraryLayoutMode.rawValue.getter() || v19 != v20)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v22 = sub_100002FC4(0, &qword_100100C60);
  sub_100003A00();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005BC0();
  sub_10001C8E0();
  v84 = v22;
  v23 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000095A4();
  if (v25)
  {
    sub_100005E38(v24);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v26 = String._bridgeToObjectiveC()();
  String._bridgeToObjectiveC()();
  v27 = sub_10000A8CC();
  v28 = sub_100005D9C(v27);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = LibraryLayoutMode.symbolName.getter();
  sub_100007B58(v29, v30);
  v83 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___dataSource;
  sub_10000F730();
  v31 = method lookup function for LibraryDataSource();

  v31(v32);

  v33 = LibraryLayoutMode.rawValue.getter();
  v35 = v34;
  if (v33 != LibraryLayoutMode.rawValue.getter() || v35 != v36)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v38 = v85;
  sub_100003A00();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005BC0();
  sub_10001C8E0();
  v39 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000095A4();
  if (v25)
  {
    sub_100005E38(v40);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v41 = v92;
  sub_10000F730();
  method lookup function for LibraryDataSource();
  sub_10000A8CC();

  v39(v42);

  v43 = LibraryLayoutMode.rawValue.getter();
  v45 = v44;
  if (v43 == LibraryLayoutMode.rawValue.getter() && v45 == v46)
  {
  }

  else
  {
    sub_100004330();
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v48 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v49 = static LibraryDataSource.SortType.allCases.getter();
  v50 = *(v49 + 16);
  if (v50)
  {
    v91 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v52 = *(v38 + 16);
    v51 = v38 + 16;
    v53 = *(v51 + 64);
    v54 = v49 + ((v53 + 32) & ~v53);
    v55 = *(v51 + 56);
    v77 = v2;
    v78 = v55;
    v79 = v53;
    v80 = v52;
    v75 = (v53 + 24) & ~v53;
    v76 = (v51 - 8);
    v85 = v51;
    v73[1] = v49;
    v74 = (v51 + 16);
    v56 = v90;
    do
    {
      v89 = v50;
      v57 = v80;
      v80(v56, v54, v3);
      v58 = LibraryDataSource.SortType.displayName.getter();
      v87 = v59;
      v88 = v58;

      v60 = v81;
      dispatch thunk of LibraryDataSource.sortType.getter();

      static LibraryDataSource.SortType.== infix(_:_:)();
      v86 = *v76;
      v86(v60, v3);
      sub_100003A00();
      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v57(v60, v90, v3);
      v62 = v75;
      v63 = swift_allocObject();
      *(v63 + 16) = v61;
      (*v74)(v63 + v62, v60, v3);

      v56 = v90;
      sub_100003FA4();
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v86(v56, v3);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v64 = v89;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v54 += v78;
      v50 = v64 - 1;
    }

    while (v50);

    v65 = v91;
  }

  else
  {

    v65 = &_swiftEmptyArrayStorage;
  }

  if (v65 >> 62)
  {
    if (v65 < 0)
    {
      v66 = v65;
    }

    else
    {
      v66 = v65 & 0xFFFFFFFFFFFFFF8;
    }

    sub_100002FC4(0, &qword_100100C30);

    _bridgeCocoaArray<A>(_:)();
    sub_100007DC8();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100002FC4(0, &qword_100100C30);
    v66 = v65;
  }

  sub_100002FC4(0, &unk_100101F20);
  sub_100003FA4();
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v67, v68, v93, 1, 0xFFFFFFFFFFFFFFFFLL, v66, v72);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v69 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v69 >> 1)
  {
    sub_100005E38(v69);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  sub_100003BD0();
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v41 = v92;
LABEL_32:
  sub_100002FC4(0, &unk_100101F20);
  sub_100003FA4();
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v70, v71, v94, 1, 0xFFFFFFFFFFFFFFFFLL, v41, v72);
  sub_100002EEC();
}

void sub_10009CF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100005BC0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10000E8F4(Strong);

    type metadata accessor for LibraryDataSource();
    sub_10000F730();
    v6 = method lookup function for LibraryDataSource();
    v6();
    v7 = method lookup function for LibraryDataSource();
    v7(a3);
    sub_1000AAB6C();
  }

  sub_100005BC0();
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_10009C4E0(v8);
  }
}

uint64_t sub_10009D07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for LibraryDataSource.SortType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_10000E8F4(result);

    (*(v5 + 16))(v7, a3, v4);
    dispatch thunk of LibraryDataSource.sortType.setter();
  }

  return result;
}

void sub_10009D190(void *a1)
{
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100002FC4(0, &qword_1001002D0);
    if (swift_dynamicCast())
    {
      v2 = [v1 view];
      if (v2)
      {
        [v4 keyboardFrameInView:v2];
        sub_10001C718();
        Height = 0.0;
        if ([v4 isVisible])
        {
          v8.origin.x = sub_100017370();
          Height = CGRectGetHeight(v8);
        }

        sub_1000116F8([v1 isEditing] ^ 1, Height);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_1000069B0(v7, &unk_100100140);
  }
}

void sub_10009D360()
{
  sub_1000079FC();
  v2 = type metadata accessor for LibraryWorkflowCreationBehavior();
  sub_100004458();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000039BC();
  v6 = sub_1000095F4();
  sub_100004458();
  __chkstk_darwin(v7);
  sub_1000039BC();
  sub_100007B08();
  [v0 setEditing:0 animated:0];
  v8 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
  sub_100005BC0();
  swift_beginAccess();
  sub_100004780();
  v9(v0, &v0[v8], v6);
  LibraryConfiguration.workflowCreationBehavior.getter();
  v10 = sub_100005754();
  v11(v10);
  type metadata accessor for LibraryViewController();
  sub_10000453C();
  sub_100009E14(v12, v13);
  sub_1000A1640();
  (*(v4 + 8))(v1, v2);
  sub_1000046DC();
}

void sub_10009D574()
{
  sub_1000043AC();
  v1 = v0;
  v2 = type metadata accessor for AutoShortcutsSettingView();
  v3 = sub_100002EE0(v2);
  __chkstk_darwin(v3);
  sub_1000039BC();
  v37 = v5 - v4;
  sub_1000042F8();
  type metadata accessor for LibraryEditingBehavior();
  sub_100004458();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v9 = v8 - v7;
  v10 = type metadata accessor for LibraryConfiguration();
  sub_100004458();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000039BC();
  sub_100007B08();
  type metadata accessor for AutoShortcutApp();
  sub_100004458();
  v35 = v15;
  v36 = v14;
  __chkstk_darwin(v14);
  sub_100003EF4();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  v22 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
  sub_100005BC0();
  swift_beginAccess();
  (*(v12 + 16))(v0, &v0[v22], v10);
  LibraryConfiguration.editingBehavior.getter();
  (*(v12 + 8))(v0, v10);
  v23 = sub_100007DBC();
  if (v24(v23) == enum case for LibraryEditingBehavior.autoShortcut(_:))
  {
    v25 = sub_100007DBC();
    v26(v25);
    v28 = v35;
    v27 = v36;
    (*(v35 + 32))(v21, v9, v36);
    (*(v28 + 16))(v18, v21, v27);
    v29 = *&v0[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_database];
    type metadata accessor for AutoShortcutsSettingView.Model();
    sub_100006640();
    v30 = v29;
    AutoShortcutsSettingView.Model.init(app:database:)();
    AutoShortcutsSettingView.init(model:)();
    v31 = objc_allocWithZone(sub_10002E87C(&qword_100102608));
    sub_100007DC8();
    v32 = UIHostingController.init(rootView:)();
    [v1 presentViewController:v32 animated:1 completion:0];

    v33 = sub_10000633C();
  }

  else
  {
    v33 = sub_100007DBC();
  }

  v34(v33);
  sub_100002EEC();
}

void sub_10009D8F4()
{
  v1 = v0;
  sub_100002FC4(0, &qword_1001025F8);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = sub_100006144();
  v5 = sub_100005D9C(v4);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100041FA8();
  v6 = sub_100006144();
  v19 = sub_10009DA98(v6, v7, v8, v9, 1);
  sub_100002FC4(0, &qword_100102600);
  v10 = String._bridgeToObjectiveC()();
  v11 = sub_1000A1620();
  v12 = sub_100006144();
  v13 = sub_100005D9C(v12);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006144();
  sub_100005BC0();
  v18 = sub_10009DB50(v14, v15, v16, v17, 0);
  [v19 addAction:v18];

  [v1 presentViewController:v19 animated:1 completion:0];
}

id sub_10009DA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = String._bridgeToObjectiveC()();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

id sub_10009DB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10009DC58;
  v12[3] = &unk_1000F3878;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_10009DC58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *sub_10009DDA0()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for LibraryViewController();
  v1 = objc_msgSendSuper2(&v7, "keyCommands");
  if (v1)
  {
    v2 = v1;
    sub_100002FC4(0, &unk_1001026A0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v8 = v3;
  v4 = [v0 presentedViewController];
  if (v4)
  {
  }

  else
  {
    sub_100002FC4(0, &unk_1001026A0);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v5 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v5 >> 1)
    {
      sub_100005E38(v5);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    sub_100003BD0();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return v8;
  }

  return v3;
}

void sub_10009DF08()
{
  sub_1000079FC();
  v2 = type metadata accessor for LibraryWorkflowCreationBehavior();
  sub_100004458();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000039BC();
  v6 = sub_1000095F4();
  sub_100004458();
  __chkstk_darwin(v7);
  sub_1000039BC();
  sub_100007B08();
  v8 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
  sub_100005BC0();
  swift_beginAccess();
  sub_100004780();
  v9(v0, v0 + v8, v6);
  LibraryConfiguration.workflowCreationBehavior.getter();
  v10 = sub_100005754();
  v11(v10);
  type metadata accessor for LibraryViewController();
  sub_10000453C();
  sub_100009E14(v12, v13);
  sub_1000A1640();
  (*(v4 + 8))(v1, v2);
  sub_1000046DC();
}

void sub_10009E0A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_searchController);
  if (v1)
  {
    v2 = v1;
    sub_100090864();
  }
}

uint64_t sub_10009E10C(uint64_t a1)
{
  v1 = sub_1000297CC(a1);
  sub_10008B798(v1);
}

uint64_t sub_10009E160(uint64_t a1)
{
  sub_1000297CC(a1);
  sub_100005730();
  type metadata accessor for LibraryViewController();
  sub_10000453C();
  sub_100009E14(v1, v2);
  sub_100007104();
  LibraryOperations.duplicateWorkflows(_:completion:)();
}

id sub_10009E270()
{
  if (([v0 isEditing] & 1) == 0)
  {
    [v0 setEditing:1 animated:1];
  }

  return [v0 selectAllCells];
}

uint64_t sub_10009E2E4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_1000069B0(v9, &unk_100100140);
}

void sub_10009E370(uint64_t a1)
{
  v2 = sub_1000297CC(a1);
  if (sub_10000D55C(v2))
  {
    sub_100007DD4();
    if (v1)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    sub_100088284();
  }

  else
  {
  }
}

id sub_10009E464()
{
  result = [v0 isEditing];
  if (result)
  {

    return [v0 setEditing:0 animated:1];
  }

  return result;
}

void sub_10009E500(uint64_t a1)
{
  v2 = sub_1000297CC(a1);
  if (sub_10000D55C(v2))
  {
    sub_100007DD4();
    if (v1)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_100007104();
      dispatch thunk of LibraryDelegate.run(_:from:input:requestOutput:runViewSource:completionHandler:)();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_10009E664()
{
  sub_1000079FC();
  v3 = v2;
  v5 = v4;
  v6 = static Selector.== infix(_:_:)();
  if (v6 & 1) != 0 || (v6 = static Selector.== infix(_:_:)(), (v6) || (v6 = static Selector.== infix(_:_:)(), (v6) || (v6 = static Selector.== infix(_:_:)(), (v6))
  {
    v7 = sub_1000297CC(v6);
    sub_10000D55C(v7);
    sub_100007DC8();
  }

  else
  {
    sub_1000102AC(v3, v15, &unk_100100140);
    if (v16)
    {
      sub_100041C04(v15, v16);
      sub_10000F720();
      __chkstk_darwin(v8);
      sub_1000039BC();
      sub_10000A7F8();
      sub_100004780();
      v9(v1);
      sub_10000633C();
      v10 = _bridgeAnythingToObjectiveC<A>(_:)();
      v11 = sub_10000633C();
      v12(v11);
      sub_10000DF90(v15);
    }

    else
    {
      v10 = 0;
    }

    v13 = type metadata accessor for LibraryViewController();
    v14.receiver = v0;
    v14.super_class = v13;
    objc_msgSendSuper2(&v14, "canPerformAction:withSender:", v5, v10);
    swift_unknownObjectRelease();
  }

  sub_1000046DC();
}

void sub_10009E8D8(uint64_t a1, uint64_t a2)
{
  if ([v2 isEditing])
  {
    sub_1000296C4();
  }

  v20 = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
  sub_10000E8F4([v20 selectionChanged]);
  sub_1000AB100(a2, v4, v5, v6, v7, v8, v9, v10, v19, v20, v22[0], v22[1], v22[2], v22[3], v23[0], v23[1], v23[2], v23[3]);
  v12 = v11;

  if (v12)
  {

    v13 = v12;
    v14 = WFDatabaseObjectDescriptor.id.getter();
    v16 = v15;

    type metadata accessor for LibraryDataSource();
    v17 = sub_1000A15B4();
    v18 = v17(v22);
    sub_10008DD4C(v23, v14, v16);

    v18(v22, 0);
    sub_1000AA7B8();
  }

  else
  {
  }
}

void sub_10009EA74(uint64_t a1, uint64_t a2)
{
  v4 = [v2 isEditing];
  if (v4)
  {
    sub_1000296C4();
  }

  sub_10000E8F4(v4);
  sub_1000AB100(a2, v5, v6, v7, v8, v9, v10, v11, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9]);
  v13 = v12;

  if (v13)
  {

    v14 = v13;
    v15 = WFDatabaseObjectDescriptor.id.getter();
    v17 = v16;

    type metadata accessor for LibraryDataSource();
    v18 = sub_1000A15B4();
    v19 = v18(v20);
    sub_1000A0F60(v15, v17);

    v19(v20, 0);
    sub_1000AA7B8();
  }
}

void sub_10009EBB8()
{
  sub_1000079FC();
  sub_100005B54();
  sub_100004458();
  __chkstk_darwin(v3);
  sub_1000039BC();
  sub_1000A15F4();
  v4 = v1;
  v5 = v2;
  v0();

  v6 = sub_100008384();
  v7(v6);
  sub_1000046DC();
}

void sub_10009EC78()
{
  sub_1000043AC();
  v0 = sub_10002E87C(&unk_100101EB0);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  v31 = &v30 - v2;
  sub_1000042F8();
  v3 = type metadata accessor for ShortcutsLibraryItem.ItemType();
  sub_100004458();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000039BC();
  v9 = v8 - v7;
  v10 = sub_10002E87C(&unk_1000FF9E0);
  sub_100002EE0(v10);
  sub_100005B90();
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for ShortcutsLibraryItem();
  sub_100004458();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000039BC();
  v20 = v19 - v18;
  sub_10000E8F4();
  sub_10001ADD8();

  if (sub_10000AB80(v13, 1, v14) == 1)
  {
    sub_1000069B0(v13, &unk_1000FF9E0);
  }

  else
  {
    (*(v16 + 32))(v20, v13, v14);
    ShortcutsLibraryItem.itemType.getter();
    if ((*(v5 + 88))(v9, v3) == enum case for ShortcutsLibraryItem.ItemType.workflow(_:))
    {
      (*(v5 + 8))(v9, v3);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v21 = v31;
        dispatch thunk of LibraryDelegate.runningWorkflow.getter();
        swift_unknownObjectRelease();
        v22 = sub_100006BC0();
        v23(v22);
        v24 = type metadata accessor for RunningWorkflow();
        sub_10000AB80(v21, 1, v24);
      }

      else
      {
        v27 = sub_100006BC0();
        v28(v27);
        v29 = type metadata accessor for RunningWorkflow();
        v21 = v31;
        sub_1000042A8(v31, 1, 1, v29);
      }

      sub_1000069B0(v21, &unk_100101EB0);
    }

    else
    {
      v25 = sub_100006BC0();
      v26(v25);
      (*(v5 + 8))(v9, v3);
    }
  }

  sub_100002EEC();
}

uint64_t sub_10009F44C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    dispatch thunk of LibraryDelegate.run(_:)();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10009F4CC(uint64_t a1)
{
  v2 = type metadata accessor for LibraryConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v6 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
    swift_beginAccess();
    (*(v3 + 16))(v5, a1 + v6, v2);
    v7 = LibraryConfiguration.runSource.getter();
    (*(v3 + 8))(v5, v2);
    dispatch thunk of LibraryDelegate.run(_:from:input:requestOutput:runViewSource:completionHandler:)();
    swift_unknownObjectRelease();
  }
}

void sub_10009F68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000043AC();
  a19 = v21;
  a20 = v22;
  type metadata accessor for ShortcutsLibraryItem.ItemType();
  sub_100004458();
  __chkstk_darwin(v23);
  sub_1000039BC();
  v26 = v25 - v24;
  v27 = sub_10002E87C(&unk_1000FF9E0);
  sub_100002EE0(v27);
  sub_100005B90();
  __chkstk_darwin(v28);
  v30 = &a9 - v29;
  v31 = type metadata accessor for ShortcutsLibraryItem();
  sub_100004458();
  v33 = v32;
  __chkstk_darwin(v34);
  sub_1000039BC();
  sub_10000A7F8();
  if (sub_10009A158())
  {
    goto LABEL_10;
  }

  sub_10000E8F4();
  sub_10001ADD8();

  if (sub_10000AB80(v30, 1, v31) == 1)
  {
    sub_1000069B0(v30, &unk_1000FF9E0);
LABEL_10:
    sub_100002EEC();
    return;
  }

  (*(v33 + 32))(v20, v30, v31);
  ShortcutsLibraryItem.itemType.getter();
  v35 = sub_100003BD0();
  v37 = v36(v35);
  if (v37 == enum case for ShortcutsLibraryItem.ItemType.workflow(_:) || v37 == enum case for ShortcutsLibraryItem.ItemType.autoShortcut(_:))
  {
    goto LABEL_9;
  }

  if (v37 == enum case for ShortcutsLibraryItem.ItemType.appShortcutTopHit(_:))
  {
    v38 = sub_10001C810();
    v39(v38);
    v40 = sub_100003BD0();
    v41(v40);
    type metadata accessor for AutoShortcutAppSection();
    sub_100003EC8();
    (*(v42 + 8))(v26);
    goto LABEL_10;
  }

  if (v37 == enum case for ShortcutsLibraryItem.ItemType.emptyState(_:))
  {
LABEL_9:
    v43 = sub_10001C810();
    v44(v43);
    v45 = sub_100003BD0();
    v46(v45);
    goto LABEL_10;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_10009F994()
{
  sub_1000079FC();
  sub_100005B54();
  sub_100004458();
  __chkstk_darwin(v3);
  sub_1000039BC();
  sub_1000A15F4();
  v4 = v1;
  v5 = v2;
  v0();

  v6 = sub_100008384();
  v7(v6);
  sub_1000046DC();
}

void sub_10009FB40()
{
  sub_1000079FC();
  sub_100005B54();
  sub_100004458();
  __chkstk_darwin(v4);
  sub_1000039BC();
  sub_1000A15F4();
  v5 = v1;
  v6 = v2;
  v0(v5, v3);

  v7 = sub_100008384();
  v8(v7);
  sub_1000046DC();
}

void (*sub_10009FC04())()
{
  type metadata accessor for LibraryEditingOption();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_1000039BC();
  v3 = sub_10000A854(v2);
  v4(v3);
  v5 = sub_100003BD0();
  v7 = v6(v5);
  if (v7 == enum case for LibraryEditingOption.selection(_:))
  {
    v8 = sub_100003BD0();
    v9(v8);
    sub_100003A00();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    return sub_1000A131C;
  }

  else if (v7 == enum case for LibraryEditingOption.folderDetails(_:))
  {
    v11 = sub_100003BD0();
    v12(v11);
    v13 = *v0;
    sub_100003A00();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000060B8();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    return sub_1000A1314;
  }

  else if (v7 == enum case for LibraryEditingOption.folderDeletion(_:))
  {
    v16 = sub_100003BD0();
    v17(v16);
    v18 = *v0;
    sub_100003A00();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000060B8();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    return sub_1000A130C;
  }

  else
  {
    v21 = sub_100003BD0();
    v22(v21);
    return static NavigationDestinationEntity.defaultQuery.setter;
  }
}

void sub_10009FE38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong startEditing];
  }
}

void sub_10009FE94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      swift_getObjectType();
      dispatch thunk of LibraryDelegate.presentFolderEditor(_:)();
      swift_unknownObjectRelease();
    }
  }
}

void sub_10009FF30(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      swift_getObjectType();
      sub_10002E87C(&qword_1001000E0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1000C0DB0;
      *(v7 + 32) = a3;
      v8 = a3;
      dispatch thunk of LibraryDelegate.deleteCollections(_:alertCustomizationBlock:completion:)();

      swift_unknownObjectRelease();
    }
  }
}

void sub_1000A0038(void *a1)
{
  [a1 setPreferredStyle:1];
  v2 = [objc_allocWithZone(WFAlertPresentationSource) init];
  [a1 setPresentationSource:v2];
}

uint64_t sub_1000A00B4()
{
  type metadata accessor for LibraryEditingOption();
  sub_100004458();
  __chkstk_darwin(v0);
  sub_1000039BC();
  v2 = sub_10000A854(v1);
  v3(v2);
  v4 = sub_100003BD0();
  v6 = v5(v4);
  if (v6 == enum case for LibraryEditingOption.selection(_:))
  {
    v7 = sub_100003BD0();
    v8(v7);
    return (sub_10009ACB4() & 1) == 0;
  }

  else
  {
    v10 = v6 == enum case for LibraryEditingOption.folderDeletion(_:);
    v11 = sub_100003BD0();
    v12(v11);
    return 2 * v10;
  }
}

id sub_1000A01D0()
{
  v0 = sub_10000E968();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v2 = [v0 cellForItemAtIndexPath:isa];

  result = 0;
  if (v2)
  {
    type metadata accessor for LibraryCell();
    if (swift_dynamicCastClass())
    {
      return sub_1000AE87C();
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A02B8(void *a1)
{
  v3 = sub_10002E87C(&qword_100100008);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_1000042A8(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v1;
  v9 = a1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v8;
  v11[5] = v9;
  sub_100084D68();
}

uint64_t sub_1000A03C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1000A0460, v7, v6);
}

uint64_t sub_1000A0460()
{
  v1 = v0[4];
  sub_10002E87C(&qword_1001000E0);
  sub_100019CF0();
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = xmmword_1000C0DB0;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = type metadata accessor for LibraryViewController();
  sub_10000453C();
  sub_100009E14(v6, v7);
  *v4 = v0;
  v4[1] = sub_1000A0580;
  sub_100007104();

  return LibraryOperations.deleteWorkflows(_:alertCustomizationBlock:)(v8, v9, v10, v5, v11);
}

uint64_t sub_1000A0580(char a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1000A06CC, v4, v3);
}

uint64_t sub_1000A06CC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000A07A0(void *a1)
{
  sub_10002E87C(&qword_1001000E0);
  sub_100019CF0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000C0DB0;
  *(v2 + 32) = a1;
  type metadata accessor for LibraryViewController();
  sub_10000453C();
  sub_100009E14(v3, v4);
  v5 = a1;
  sub_100007104();
  LibraryOperations.duplicateWorkflows(_:completion:)();
}

void (*sub_1000A0990(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1000A09F4;
}

void sub_1000A09F4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_10000A6F8();
  }
}

void sub_1000A0A38(Swift::Bool a1)
{
  swift_getWitnessTable();

  LibraryView.reload(animated:)(a1);
}

uint64_t sub_1000A0A98(void *a1)
{
  if (a1)
  {
    result = sub_10002E36C();
    if (result)
    {
      return result;
    }

    sub_1000A1478(a1, &selRef_text);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  type metadata accessor for LibraryDataSource();
  v5 = static LibraryDataSource.searchPredicate(for:)();

  sub_10000E8F4();
  dispatch thunk of LibraryDataSource.searchPredicate.getter();
  sub_10000A8CC();

  if (v3)
  {
    if (!v5)
    {

      goto LABEL_13;
    }

    sub_100002FC4(0, &qword_1001025C0);
    v6 = v5;
    v7 = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    sub_1000ABC64(1);
  }

LABEL_13:
  v8 = v5;
  sub_10000A8CC();

  dispatch thunk of LibraryDataSource.searchPredicate.setter();

  sub_100010CE4();
}

BOOL sub_1000A0C10()
{
  v1 = v0;
  sub_10000E8F4();
  sub_100003A0C();
  type metadata accessor for LibraryDataSource();
  sub_10000F730();
  v2 = method lookup function for LibraryDataSource();
  v2();

  v3 = LibraryLayoutMode.rawValue.getter();
  v5 = v4;
  if (v3 == LibraryLayoutMode.rawValue.getter() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = sub_10000E968();
  [v10 contentSize];
  v12 = v11;

  v13 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___collectionView;
  [*&v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___collectionView] bounds];
  v15 = v14;
  [*&v1[v13] adjustedContentInset];
  v18 = v12 - (v15 - v16 - v17);
  if (v18 <= 0.0)
  {
    v21 = [v1 navigationController];
    v9 = v21;
    if (!v21)
    {
      return v9;
    }

LABEL_16:
    v22 = [v21 popViewControllerAnimated:1];

    return v22 != 0;
  }

  if (v18 >= 64.0)
  {
    v19 = v12 - v15 + v16;
  }

  else
  {
    v19 = v12 - v15 + v16 + 4.0;
  }

  [*&v1[v13] contentOffset];
  if (vabdd_f64(v20, v19) >= 0.1)
  {
    v23 = *&v1[v13];
    v9 = 1;
    [v23 setContentOffset:1 animated:{0.0, v19}];
    return v9;
  }

  v21 = [v1 navigationController];
  v9 = v21;
  if (v21)
  {
    goto LABEL_16;
  }

  return v9;
}

id sub_1000A0E64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100003190;
  v13[3] = &unk_1000F38F0;
  v10 = _Block_copy(v13);

LABEL_6:
  v11 = [v5 initWithTestName:v9 scrollView:a3 completionHandler:v10];
  _Block_release(v10);

  return v11;
}

uint64_t sub_1000A0F60(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10008F0A0();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1000A1088(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_1000A1088(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000A124C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10006BBEC;

  return sub_1000A03C4(a1, v4, v5, v7, v6);
}

void sub_1000A1338(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 setTitle:v6 forState:a3];
}

uint64_t sub_1000A13EC()
{
  sub_100005730();
  v2 = type metadata accessor for LibraryDataSource.SortType();
  sub_100002EE0(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10009D07C(v0, v4, v5);
}

uint64_t sub_1000A1478(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1000A14E0()
{

  sub_1000060B8();

  return _swift_deallocObject(v1, v2, v3);
}

void sub_1000A1534(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a1)
  {
  }
}

uint64_t sub_1000A15B4()
{

  return method lookup function for LibraryDataSource();
}

id sub_1000A15D8()
{
  v3 = *(v1 + 2032);

  return [v0 v3];
}

uint64_t sub_1000A15F4()
{

  return static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
}

NSString sub_1000A1620()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_1000A1640()
{

  return LibraryOperations.createWorkflow(from:withBehavior:)();
}

id sub_1000A1660(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void sub_1000A16A4(uint64_t a1)
{
  v2 = sub_10002E87C(&qword_100100028);
  __chkstk_darwin(v2 - 8);
  sub_1000078B4(a1, &v4 - v3);
  sub_100075B94();
}

void sub_1000A1738()
{
  sub_1000043AC();
  v0 = type metadata accessor for RootNavigationDestination();
  sub_100004458();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100003EF4();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = dispatch thunk of SidebarSection.destinations.getter();
  v11 = 0;
  v12 = *(v10 + 16);
  v20 = v2 + 16;
  v21 = v12;
  v13 = enum case for RootNavigationDestination.folder(_:);
  while (1)
  {
    if (v21 == v11)
    {

LABEL_8:
      sub_100002EEC();
      return;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    (*(v2 + 16))(v9, v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11, v0);
    (*(v2 + 32))(v6, v9, v0);
    v14 = sub_1000043C4();
    if (v15(v14) == v13)
    {

      v18 = sub_1000043C4();
      v19(v18);
      goto LABEL_8;
    }

    ++v11;
    v16 = sub_1000043C4();
    v17(v16);
  }

  __break(1u);
}

uint64_t sub_1000A1918()
{
  sub_100005BC0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

char *sub_1000A195C()
{
  v1 = OBJC_IVAR___WFSidebarViewController____lazy_storage___toolbarViewController;
  v2 = *(v0 + OBJC_IVAR___WFSidebarViewController____lazy_storage___toolbarViewController);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1000A19CC();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_100012F00(v4);
  }

  sub_100012F14(v2);
  return v3;
}

char *sub_1000A19CC()
{
  v0 = type metadata accessor for SidebarStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for SidebarStyle.column(_:), v0);
  v4 = static SidebarStyle.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  result = 0;
  if (v4)
  {
    sub_10002E87C(&qword_1001000E0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000C0DB0;
    sub_1000A1B3C();
    v8 = v7;
    v10 = v9;

    *(v6 + 32) = v8;
    v12 = objc_allocWithZone(type metadata accessor for FloatingToolbarViewController());
    return sub_100012CF4(v6, 1);
  }

  return result;
}

void sub_1000A1B3C()
{
  sub_1000043AC();
  v1 = &v0[OBJC_IVAR___WFSidebarViewController____lazy_storage___barButtons];
  v2 = *&v0[OBJC_IVAR___WFSidebarViewController____lazy_storage___barButtons + 16];
  if (!*&v0[OBJC_IVAR___WFSidebarViewController____lazy_storage___barButtons])
  {
    v3 = sub_1000A1F48(v0);
    v5 = v4;
    v7 = v6;
    v8 = *v1;
    v9 = *(v1 + 1);
    v10 = *(v1 + 2);
    *v1 = v3;
    *(v1 + 1) = v4;
    *(v1 + 2) = v6;
    v3;
    v5;
    v7;
    sub_1000A4EE4(v8, v9, v10);
  }

  v11 = sub_100005BCC();
  sub_1000A4F34(v11, v12, v2);
  sub_100002EEC();
}

unsigned __int8 *sub_1000A1C4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR___WFSidebarViewController_animateDataReload) = 2;
  *(v5 + OBJC_IVAR___WFSidebarViewController____lazy_storage___toolbarViewController) = 1;
  v11 = (v5 + OBJC_IVAR___WFSidebarViewController____lazy_storage___barButtons);
  v11[1] = 0;
  v11[2] = 0;
  *v11 = 0;
  *(v5 + OBJC_IVAR___WFSidebarViewController____lazy_storage___sidebarDataSource) = 0;
  v12 = OBJC_IVAR___WFSidebarViewController_style;
  v13 = type metadata accessor for SidebarStyle();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5 + v12, a1, v13);
  *(v5 + OBJC_IVAR___WFSidebarViewController_database) = a2;
  *(v5 + OBJC_IVAR___WFSidebarViewController_sections) = a4;
  *(v5 + OBJC_IVAR___WFSidebarViewController_isCompact) = 0;
  *(v5 + OBJC_IVAR___WFSidebarViewController_shortcutMoveService) = a3;
  v15 = a2;

  sub_100005BC0();
  v18 = objc_msgSendSuper2(v16, v17, v5, ObjectType);
  LODWORD(a4) = v18[OBJC_IVAR___WFSidebarViewController_isCompact];
  v19 = v18;
  v20 = 0;
  if (a4 == 1)
  {
    v21 = sub_100005D68();
    v22 = sub_1000060E8();
    v23 = sub_100005D9C(v21);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  [v19 setTitle:v20];

  (*(v14 + 8))(a1, v13);
  return v19;
}

void sub_1000A1E80()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___WFSidebarViewController_animateDataReload) = 2;
  *(v0 + OBJC_IVAR___WFSidebarViewController____lazy_storage___toolbarViewController) = 1;
  v1 = (v0 + OBJC_IVAR___WFSidebarViewController____lazy_storage___barButtons);
  v1[1] = 0;
  v1[2] = 0;
  *v1 = 0;
  *(v0 + OBJC_IVAR___WFSidebarViewController____lazy_storage___sidebarDataSource) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_1000A1F48(void *a1)
{
  swift_getObjectType();
  v2 = objc_allocWithZone(UIBarButtonItem);
  v3 = a1;
  sub_100012B90();
  v5 = v4;
  sub_10006B4D4(0xD000000000000013, 0x80000001000C9B20, v4);
  sub_100002FC4(0, &qword_100100110);
  sub_100012A98();
  v6 = objc_allocWithZone(UIBarButtonItem);
  v7 = v3;
  sub_1000A4D94();
  v9 = v8;
  sub_10006B4D4(0xD000000000000018, 0x80000001000C9B60, v8);
  v10 = v9;
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = sub_100005D9C(v11);

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_1000163E0(v14, v16, v10);
  objc_allocWithZone(UIBarButtonItem);
  v17 = v7;
  sub_100012B90();
  sub_10006B4D4(0xD000000000000013, 0x80000001000C9B80, v18);
  return v5;
}

void sub_1000A2188()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_10002E87C(&qword_100100028);
  sub_100003EC8();
  __chkstk_darwin(v3);
  sub_100003EF4();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for SidebarView(0);
  __chkstk_darwin(v10);
  sub_1000039BC();
  v13 = (v12 - v11);
  v40.receiver = v1;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, "viewDidLoad");
  sub_1000073AC();
  v14 = sub_100003A0C();
  type metadata accessor for SidebarView.DataSource(v14);
  sub_10000528C();
  sub_100006220(v15, v16);
  *v13 = ObservedObject.init(wrappedValue:)();
  v13[1] = v17;
  v18 = type metadata accessor for RootNavigationDestination();
  sub_1000042A8(v9, 1, 1, v18);
  sub_1000078B4(v9, v6);
  State.init(wrappedValue:)();
  sub_1000069B0(v9, &qword_100100028);
  v19 = objc_allocWithZone(sub_10002E87C(&qword_1001027C0));
  v20 = UIHostingController.init(rootView:)();
  [v1 addChildViewController:v20];
  v21 = sub_100005E68();
  if (!v21)
  {
    __break(1u);
    goto LABEL_9;
  }

  v22 = v21;
  [v21 setAutoresizingMask:18];

  v23 = sub_100005E68();
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v24 = [v1 view];
  if (!v24)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = v24;
  [v24 frame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  [v23 setFrame:{v27, v29, v31, v33}];
  v34 = sub_100005E68();

  if (!v34)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v35 = [objc_opt_self() clearColor];
  [v34 setBackgroundColor:v35];

  v36 = [v1 view];
  if (!v36)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v37 = v36;
  v38 = sub_100005E68();

  if (v38)
  {
    [v37 addSubview:v38];

    [v20 didMoveToParentViewController:v1];
    sub_1000A2574();
    sub_1000A269C();
    sub_1000A27D8();
    v39 = [objc_opt_self() defaultCenter];
    [v39 addObserver:v1 selector:"keyboardWillChange:" name:WFKeyboardWillChangeNotification object:0];

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1000A2574()
{
  v1 = type metadata accessor for SidebarStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    (*(v2 + 104))(v4, enum case for SidebarStyle.column(_:), v1);
    v5 = static SidebarStyle.== infix(_:_:)();
    (*(v2 + 8))(v4, v1);
    if (v5)
    {
      v6 = sub_1000A195C();
      if (v6)
      {
        v7 = v6;
        sub_100012F94(v0);
      }
    }
  }
}

void sub_1000A269C()
{
  v1 = sub_1000A3614();
  v3 = v2;
  v4 = [v0 navigationItem];
  if (v1)
  {
    sub_100002FC4(0, &qword_1001002C0);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  [v4 setLeftBarButtonItems:v5.super.isa animated:1];

  v6 = [v0 navigationItem];
  if (v3)
  {
    sub_100002FC4(0, &qword_1001002C0);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v6 setRightBarButtonItems:isa animated:1];
}

uint64_t sub_1000A27D8()
{
  v1 = *(v0 + OBJC_IVAR___WFSidebarViewController_sections);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {
      swift_unknownObjectRetain();
      sub_1000A303C();
      swift_unknownObjectRelease();
      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return sub_1000A308C();
}

id sub_1000A28A4()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1000A2A34(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewWillAppear:", a1 & 1);
  return sub_1000A2A84(1);
}

id sub_1000A2A84(id result)
{
  v2 = result;
  v3 = 0;
  v4 = *(v1 + OBJC_IVAR___WFSidebarViewController_sections);
  v5 = *(v4 + 16);
  v6 = v4 + 40;
  while (v5 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    ++v3;
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of SidebarSection.observeChanges.setter();
    result = swift_unknownObjectRelease();
    v6 += 16;
  }

  v7 = *(v1 + OBJC_IVAR___WFSidebarViewController_database);
  v8 = &selRef_addObjectObserver_;
  if ((v2 & 1) == 0)
  {
    v8 = &selRef_removeObjectObserver_;
  }

  v9 = *v8;

  return [v7 v9];
}

uint64_t sub_1000A2BC4(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
  return sub_1000A2C14();
}

uint64_t sub_1000A2C14()
{
  v0 = sub_1000A195C();
  if (v0)
  {
    v1 = v0;
    [*&v0[OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_toolbar] frame];
    CGRectGetHeight(v4);
  }

  sub_1000073AC();
  sub_100076620();
}

id sub_1000A2CE8(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v4, "didMoveToParentViewController:", a1);
  if (!a1)
  {
    return sub_1000A2A84(0);
  }

  return result;
}

void sub_1000A2DA8(void *a1)
{
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    sub_100002FC4(0, &qword_1001002D0);
    if (swift_dynamicCast())
    {
      v2 = [v1 view];
      if (v2)
      {
        v3 = v2;
        [v12 keyboardFrameInView:v2];
        v5 = v4;
        v7 = v6;
        v9 = v8;
        v11 = v10;

        if ([v12 isVisible])
        {
          v16.origin.x = v5;
          v16.origin.y = v7;
          v16.size.width = v9;
          v16.size.height = v11;
          CGRectGetHeight(v16);
        }

        sub_1000A2C14();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_1000069B0(v15, &unk_100100140);
  }
}

void sub_1000A2F70()
{
  sub_1000A303C();
  sub_1000073AC();
  v0 = sub_100003A0C();
  type metadata accessor for SidebarView.DataSource(v0);
  sub_10000528C();
  sub_100006220(v1, v2);
  ObservableObject<>.objectWillChange.getter();

  ObservableObjectPublisher.send()();

  sub_1000A308C();
  sub_100005BC0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100037DEC();
  }
}

void sub_1000A303C()
{
  sub_1000A3350();
  if (v0)
  {

    sub_1000A269C();
  }

  else
  {
    sub_1000A3404(0);
  }
}

uint64_t sub_1000A308C()
{
  v0 = sub_10002E87C(&qword_100100028);
  __chkstk_darwin(v0 - 8);
  v2 = &v16[-v1];
  v3 = type metadata accessor for RootNavigationDestination();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for SidebarStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 104))(v10, enum case for SidebarStyle.column(_:), v7);
  v11 = static SidebarStyle.== infix(_:_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = OBJC_IVAR___WFMainViewController_currentDestination;
      swift_beginAccess();
      sub_1000078B4(v14 + v15, v2);

      if (sub_10000AB80(v2, 1, v3) != 1)
      {
        (*(v4 + 32))(v6, v2, v3);
        sub_10000AC28();
        return (*(v4 + 8))(v6, v3);
      }
    }

    else
    {
      sub_1000042A8(v2, 1, 1, v3);
    }

    return sub_1000069B0(v2, &qword_100100028);
  }

  return result;
}

void sub_1000A3350()
{
  v1 = *(v0 + OBJC_IVAR___WFSidebarViewController_sections);
  v2 = v1 + 40;
  v3 = -*(v1 + 16);
  v4 = -1;
  while (v3 + v4 != -1)
  {
    if (++v4 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v2 + 16;
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1000A1738();
    v7 = v6;
    swift_unknownObjectRelease();
    v2 = v5;
    if (v7)
    {
      return;
    }
  }
}

void sub_1000A3404(char a1)
{
  [v1 setEditing:a1 & 1 animated:1];
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  sub_1000A269C();
}

uint64_t sub_1000A34E0(uint64_t a1, unsigned int *a2)
{
  sub_100003A0C();
  v3 = type metadata accessor for EditMode();
  sub_100004458();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000039BC();
  v9 = v8 - v7;
  sub_1000073AC();
  (*(v5 + 104))(v9, *a2, v3);
  sub_100076290(v9);
}

uint64_t sub_1000A3614()
{
  v1 = type metadata accessor for SidebarStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 isEditing];
  (*(v2 + 104))(v4, enum case for SidebarStyle.compact(_:), v1);
  v6 = static SidebarStyle.== infix(_:_:)();
  (*(v2 + 8))(v4, v1);
  v7 = _UISolariumEnabled();
  v8 = v7;
  if (!v5)
  {
    if (v6)
    {
      if (v7)
      {
        sub_10002E87C(&qword_1001000E0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1000C1720;
        sub_1000A1B3C();
        v18 = v17;
        v20 = v19;

        *(v16 + 32) = v18;
        v15 = 0;
        *(v16 + 40) = *&v0[OBJC_IVAR___WFSidebarViewController____lazy_storage___barButtons];
        return v15;
      }

      sub_1000A3350();
      if (v28)
      {
        sub_10002E87C(&qword_1001000E0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1000C0DB0;
        sub_1000A1B3C();
        v30 = v29;
        v32 = v31;

        *(v15 + 32) = v30;
      }

      else
      {
        v15 = 0;
      }

      sub_10002E87C(&qword_1001000E0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1000C0DB0;
      sub_1000A1B3C();
      v37 = v41;
      v43 = v42;
    }

    else
    {
      if (v7)
      {
        sub_10002E87C(&qword_1001000E0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1000C1720;
        sub_1000A1B3C();
        v23 = v22;
        v25 = v24;

        *(v15 + 32) = v23;
        *(v15 + 40) = *&v0[OBJC_IVAR___WFSidebarViewController____lazy_storage___barButtons + 8];
        return v15;
      }

      sub_1000A3350();
      if ((v34 & 1) == 0)
      {
        return 0;
      }

      sub_10002E87C(&qword_1001000E0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1000C0DB0;
      sub_1000A1B3C();
      v37 = v36;
      v39 = v38;

      v15 = 0;
    }

    *(v35 + 32) = v37;
    return v15;
  }

  sub_10002E87C(&qword_1001000E0);
  v9 = swift_allocObject();
  v46 = xmmword_1000C0DB0;
  *(v9 + 16) = xmmword_1000C0DB0;
  sub_1000A1B3C();
  v11 = v10;
  v13 = v12;

  *(v9 + 32) = v13;
  if (v6)
  {
    if (v8)
    {
      return 0;
    }

    else
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v46;
      *(v27 + 32) = *&v0[OBJC_IVAR___WFSidebarViewController____lazy_storage___barButtons + 8];
      return v9;
    }
  }

  else if (v8)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_1000A39D0()
{
  swift_getObjectType();
  sub_100006220(&qword_1000FFF78, type metadata accessor for SidebarViewController);

  RootViewSidebar.createNewFolder()();
}

void sub_1000A3A8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000398B4();
  }
}

void (*sub_1000A3BB0(void *a1))(id **a1, char a2)
{
  v3 = sub_10004D490(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___WFSidebarViewController_rootView;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1000A3C34;
}

void sub_1000A3C34(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void sub_1000A3CB8()
{
  sub_1000043AC();
  v71 = v1;
  v81 = v3;
  v82 = v4;
  v6 = v5;
  v77 = type metadata accessor for DispatchWorkItemFlags();
  sub_100004458();
  v76 = v7;
  __chkstk_darwin(v8);
  sub_1000039BC();
  v74 = v10 - v9;
  v75 = type metadata accessor for DispatchQoS();
  sub_100004458();
  v73 = v11;
  __chkstk_darwin(v12);
  sub_1000039BC();
  v72 = v14 - v13;
  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100002FC4(0, &qword_1001002D8);
    sub_1000A4FA8();
    sub_100005BCC();
    Set.Iterator.init(_cocoa:)();
    v16 = v83[6];
    v15 = v83[7];
    v0 = v83[8];
    v17 = v83[9];
    v2 = v83[10];
  }

  else
  {
    sub_1000A5048();
    v15 = v6 + 56;
    sub_10000F7B4();

    v17 = 0;
    v16 = v6;
  }

  v18 = (v0 + 64) >> 6;
  while ((v16 & 0x8000000000000000) == 0)
  {
    v19 = v17;
    v20 = v82;
    if (!v2)
    {
      while (1)
      {
        v17 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v17 >= v18)
        {
          goto LABEL_16;
        }

        ++v19;
        if (*(v15 + 8 * v17))
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_10:
    sub_100003FB8();
    v2 = v22 & v21;
    v24 = *(*(v16 + 48) + ((v17 << 9) | (8 * v23)));
    if (!v24)
    {
      goto LABEL_16;
    }

LABEL_14:
    v26 = v24;
    v27 = [v24 objectType];

    if (v27 == 2)
    {
      v78 = v26;
      sub_10001C738();
      v28 = 1;
      v20 = v82;
      goto LABEL_17;
    }
  }

  v25 = __CocoaSet.Iterator.next()();
  if (v25)
  {
    v84 = v25;
    sub_100002FC4(0, &qword_1001002D8);
    sub_100005C48();
    sub_100006348();
    v24 = v83[0];
    v20 = v82;
    if (!v83[0])
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v20 = v82;
LABEL_16:
  sub_10001C738();
  v28 = 0;
  v78 = 0;
LABEL_17:
  v79 = v28;
  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100002FC4(0, &qword_1001002D8);
    sub_1000A4FA8();
    sub_100005BCC();
    Set.Iterator.init(_cocoa:)();
    v6 = v83[11];
    v29 = v83[12];
    v18 = v83[13];
    v30 = v83[14];
    v2 = v83[15];
  }

  else
  {
    sub_1000A5048();
    v29 = v6 + 56;
    sub_10000F7B4();

    v30 = 0;
  }

  v31 = (v18 + 64) >> 6;
  while (2)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      v32 = v30;
      if (!v2)
      {
        do
        {
          v30 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_72;
          }

          if (v30 >= v31)
          {
            goto LABEL_32;
          }

          ++v32;
        }

        while (!*(v29 + 8 * v30));
      }

      sub_100003FB8();
      v2 = v34 & v33;
      v36 = sub_10000CB4C(v35);
      if (!v36)
      {
        goto LABEL_33;
      }

LABEL_30:
      v38 = [v36 objectType];

      if (!v38)
      {
        goto LABEL_33;
      }

      continue;
    }

    break;
  }

  v37 = __CocoaSet.Iterator.next()();
  if (v37)
  {
    v84 = v37;
    sub_100002FC4(0, &qword_1001002D8);
    sub_100005C48();
    sub_100006348();
    v36 = v83[0];
    if (!v83[0])
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

LABEL_32:
  v36 = 0;
LABEL_33:
  sub_10000B14C();
  sub_100048024();
  if ((v20 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100002FC4(0, &qword_1001002D8);
    sub_1000A4FA8();
    sub_100005BCC();
    Set.Iterator.init(_cocoa:)();
    v20 = v83[16];
    v39 = v83[17];
    v31 = v83[18];
    v40 = v83[19];
    v2 = v83[20];
  }

  else
  {
    sub_1000A5048();
    v39 = v20 + 56;
    sub_10000F7B4();

    v40 = 0;
  }

  while (2)
  {
    if (v20 < 0)
    {
      v46 = __CocoaSet.Iterator.next()();
      if (!v46 || (v84 = v46, sub_100002FC4(0, &qword_1001002D8), sub_100005C48(), sub_100006348(), (v45 = v83[0]) == 0))
      {
LABEL_47:
        v70 = 0;
        v80 = 0;
        goto LABEL_48;
      }

      goto LABEL_45;
    }

    v41 = v40;
    if (v2)
    {
LABEL_41:
      sub_100003FB8();
      v2 = v43 & v42;
      v45 = sub_10000CB4C(v44);
      if (!v45)
      {
        goto LABEL_47;
      }

LABEL_45:
      v47 = [v45 objectType];

      if (!v47)
      {
        v70 = 1;
        v80 = 1;
LABEL_48:
        sub_100048024();
        if ((v81 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          sub_100002FC4(0, &qword_1001002D8);
          sub_1000A4FA8();
          sub_100005BCC();
          Set.Iterator.init(_cocoa:)();
          v48 = v84;
          v49 = v85;
          v50 = v86;
          v51 = v87;
          v52 = v88;
        }

        else
        {
          sub_1000A5048();
          v49 = v81 + 56;
          v50 = ~v54;
          v55 = -v54;
          if (v55 < 64)
          {
            v56 = ~(v53 << v55);
          }

          else
          {
            v56 = v53;
          }

          v52 = v56 & *(v81 + 56);

          v48 = v81;
          v51 = 0;
        }

        v57 = (v50 + 64) >> 6;
        v58 = v48;
        while (1)
        {
          if (v48 < 0)
          {
            if (!__CocoaSet.Iterator.next()() || (sub_100002FC4(0, &qword_1001002D8), sub_100006348(), (v63 = v83[0]) == 0))
            {
LABEL_66:
              sub_10000B14C();
              sub_100048024();
              if (v36 | v78 | v80)
              {
                v65 = 0;
LABEL_68:
                sub_100002FC4(0, &qword_1001001B8);
                v66 = static OS_dispatch_queue.main.getter();
                v67 = swift_allocObject();
                *(v67 + 16) = v70;
                *(v67 + 17) = v65;
                *(v67 + 18) = v79;
                *(v67 + 24) = v71;
                v83[4] = sub_1000A5010;
                v83[5] = v67;
                v83[0] = _NSConcreteStackBlock;
                v83[1] = 1107296256;
                v83[2] = sub_100003190;
                v83[3] = &unk_1000F3B58;
                v68 = _Block_copy(v83);
                v69 = v71;

                static DispatchQoS.unspecified.getter();
                v83[0] = _swiftEmptyArrayStorage;
                sub_100006220(&qword_100102610, &type metadata accessor for DispatchWorkItemFlags);
                sub_10002E87C(&qword_1001001C0);
                sub_10000312C();
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v68);

                (*(v76 + 8))(v74, v77);
                (*(v73 + 8))(v72, v75);
              }

              sub_100002EEC();
              return;
            }
          }

          else
          {
            v59 = v51;
            if (!v52)
            {
              do
              {
                v51 = v59 + 1;
                if (__OFADD__(v59, 1))
                {
                  goto LABEL_74;
                }

                if (v51 >= v57)
                {
                  goto LABEL_66;
                }

                ++v59;
              }

              while (!*(v49 + 8 * v51));
            }

            sub_100003FB8();
            v52 = v61 & v60;
            v63 = sub_10000CB4C(v62);
            if (!v63)
            {
              goto LABEL_66;
            }
          }

          v64 = [v63 objectType];

          v48 = v58;
          if (!v64)
          {
            sub_10000B14C();
            sub_100048024();
            v65 = 1;
            goto LABEL_68;
          }
        }
      }

      continue;
    }

    break;
  }

  while (1)
  {
    v40 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v40 >= ((v31 + 64) >> 6))
    {
      goto LABEL_47;
    }

    ++v41;
    if (*(v39 + 8 * v40))
    {
      goto LABEL_41;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

uint64_t sub_1000A469C(char a1, char a2, char a3)
{
  if (a1 & 1) != 0 || (a2 & 1) != 0 || (a3)
  {
    sub_1000073AC();
    swift_beginAccess();
    sub_10002E87C(&qword_1001027B8);
    Dictionary._Variant.removeAll(keepingCapacity:)(0);
    swift_endAccess();
  }

  sub_1000073AC();
  type metadata accessor for SidebarView.DataSource(0);
  sub_100006220(&qword_100101610, type metadata accessor for SidebarView.DataSource);
  ObservableObject<>.objectWillChange.getter();

  ObservableObjectPublisher.send()();
}

void sub_1000A48E4()
{
  sub_100002FB8();
  sub_100005BC0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = sub_100003A0C();
    type metadata accessor for MainViewController(v1);
    sub_100004554();
    sub_100006220(v2, v3);
    RootView.navigate(to:)();
  }
}

void sub_1000A4978(Swift::OpaquePointer a1, char a2)
{
  sub_100002FB8();
  sub_100005BC0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for MainViewController(0);
    sub_100004554();
    sub_100006220(v6, v7);
    RootView.deleteCollections(_:keepShortcuts:)(a1, a2 & 1);
  }
}

void sub_1000A4A1C(Swift::OpaquePointer a1@<X0>, Swift::Int a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  sub_100005BC0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = sub_100003A0C();
    type metadata accessor for MainViewController(v9);
    sub_100004554();
    sub_100006220(v10, v11);
    RootView.deleteAlertStrings(collections:shortcutsCount:exactCount:)(&v20, a1, a2, a3 & 1);
    countAndFlagsBits = v20.title._countAndFlagsBits;
    object = v20.title._object;
    v14 = v20.message._countAndFlagsBits;
    v15 = v20.message._object;
    v16 = v20.deleteTitle._countAndFlagsBits;
    v17 = v20.deleteTitle._object;
    v18 = v20.keepTitle._countAndFlagsBits;
    v19 = v20.keepTitle._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  *a4 = countAndFlagsBits;
  a4[1] = object;
  a4[2] = v14;
  a4[3] = v15;
  a4[4] = v16;
  a4[5] = v17;
  a4[6] = v18;
  a4[7] = v19;
}

void sub_1000A4B28()
{
  sub_100002FB8();
  sub_100005BC0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000398B4();
  }
}

void sub_1000A4B88()
{
  type metadata accessor for EditMode();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_1000039BC();
  if (([v0 isEditing] & 1) == 0)
  {
    v2 = sub_100019C74();
    v3(v2);
    v4 = static EditMode.== infix(_:_:)();
    v5 = sub_1000043C4();
    v6(v5);
    if (v4)
    {
      v7 = 1;
LABEL_7:
      sub_1000A3404(v7);
      return;
    }
  }

  if ([v0 isEditing])
  {
    v8 = sub_100019C74();
    v9(v8);
    v10 = static EditMode.== infix(_:_:)();
    v11 = sub_1000043C4();
    v12(v11);
    if (v10)
    {
      v7 = 0;
      goto LABEL_7;
    }
  }
}

void sub_1000A4D10()
{
  sub_100005BC0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10003437C();
    v3 = v2;

    if (v3)
    {
      sub_10000E8F4();

      sub_100010CE4();
    }
  }
}

void sub_1000A4D94()
{
  sub_1000043AC();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v1[3];
  if (v9)
  {
    v10 = v1;
    v11 = sub_100041C04(v1, v1[3]);
    v12 = *(v9 - 8);
    __chkstk_darwin(v11);
    sub_1000039BC();
    v15 = v14 - v13;
    (*(v12 + 16))(v14 - v13);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v15, v9);
    sub_10000DF90(v10);
  }

  else
  {
    v16 = 0;
  }

  [v2 initWithImage:v8 style:v6 target:v16 action:v4];

  swift_unknownObjectRelease();
  sub_100002EEC();
}

void sub_1000A4EE4(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

id sub_1000A4F34(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

unint64_t sub_1000A4FA8()
{
  result = qword_1001002E0;
  if (!qword_1001002E0)
  {
    sub_100002FC4(255, &qword_1001002D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001002E0);
  }

  return result;
}

uint64_t AppShortcutChiclet.init(section:isExpanded:containerWidth:chicletsPerRow:action:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v26 = a4;
  v27 = type metadata accessor for TopHitCollectionViewStyle();
  sub_100004458();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppShortcutChiclet(0);
  v19 = v18[10];
  *(a6 + v19) = swift_getKeyPath();
  sub_10002E87C(&unk_100103200);
  swift_storeEnumTagMultiPayload();
  v20 = v18[11];
  *(a6 + v20) = swift_getKeyPath();
  sub_10002E87C(&qword_1000FF640);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for AutoShortcutAppSection();
  sub_10000525C();
  v23 = v22;
  (*(v22 + 16))(a6, a1, v21);
  *(a6 + v18[5]) = a2;
  *(a6 + v18[6]) = a7;
  *(a6 + v18[9]) = a3;
  v24 = (a6 + v18[7]);
  *v24 = v26;
  v24[1] = a5;

  AutoShortcutAppSection.bundleIdentifier.getter();
  (*(v14 + 104))(v17, enum case for TopHitCollectionViewStyle.library(_:), v27);
  TopHitViewColorScheme.init(bundleIdentifier:style:)();

  return (*(v23 + 8))(a1, v21);
}

uint64_t sub_1000A528C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v6 = Image.init(_internalSystemName:)();
  type metadata accessor for AppShortcutChiclet(0);
  v7 = TopHitViewColorScheme.sectionIconForegroundColor.getter();
  sub_1000A5594(&unk_100103200, &type metadata accessor for ColorScheme, v5);
  WFColor.luminanceAdjustedColor(in:)();

  (*(v3 + 8))(v5, v2);
  v8 = Color.init(_:)();
  result = swift_getKeyPath();
  *a1 = v6;
  a1[1] = result;
  a1[2] = v8;
  return result;
}

uint64_t sub_1000A549C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1000A54B4()
{
  result = qword_100102A20;
  if (!qword_100102A20)
  {
    sub_100041CB4(&qword_100102A18);
    sub_100009624(&qword_100100D68, &qword_100100D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102A20);
  }

  return result;
}

uint64_t sub_1000A5594@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  sub_100004458();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E87C(a1);
  sub_100003EC8();
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_10000823C(v6, &v20 - v15, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a2(0);
    sub_100003EC8();
    return (*(v17 + 32))(a3, v16);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v13, v8);
  }
}

unint64_t sub_1000A5778()
{
  result = qword_100102A28;
  if (!qword_100102A28)
  {
    sub_100041CB4(&qword_1001029C8);
    sub_100009624(&qword_100102A30, &qword_100102A38);
    sub_100009624(&qword_100100D60, &qword_100103090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102A28);
  }

  return result;
}

uint64_t sub_1000A585C()
{
  v1 = *(type metadata accessor for AppShortcutChiclet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for AggregatedEntry();
  sub_100002EE0(v4);
  v6 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_1000A5408(v0 + v2, v6);
}

void sub_1000A596C()
{
  sub_1000A59F8();
  if (v0 <= 0x3F)
  {
    sub_1000A5A8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000A59F8()
{
  if (!qword_100102AE0)
  {
    type metadata accessor for AutoShortcutsAppsDataSource();
    sub_1000A5E78(&qword_1001018C8, &type metadata accessor for AutoShortcutsAppsDataSource);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100102AE0);
    }
  }
}

void sub_1000A5A8C()
{
  if (!qword_100102AE8)
  {
    sub_100041CB4(&unk_1001026E0);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100102AE8);
    }
  }
}

uint64_t sub_1000A5B0C@<X0>(uint64_t a1@<X8>)
{
  v26[0] = a1;
  v26[1] = type metadata accessor for AppListView(0);
  sub_100003EC8();
  __chkstk_darwin(v2);
  v4 = (v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002E87C(&qword_100102B20);
  sub_100003EC8();
  __chkstk_darwin(v5);
  v7 = v26 - v6;
  v8 = type metadata accessor for AppGridView(0);
  sub_100003EC8();
  __chkstk_darwin(v9);
  v11 = (v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + *(type metadata accessor for AutoShortcutsAppGrid(0) + 24));
  v13 = dispatch thunk of AutoShortcutsAppsDataSource.autoShortcutApps.getter();
  sub_10002E87C(&qword_100102A70);
  Binding.projectedValue.getter();
  if (v12 == 1)
  {
    *v11 = v13;
    v14 = *(v8 + 24);
    *(v11 + v14) = swift_getKeyPath();
    sub_10002E87C(&qword_100102A68);
    swift_storeEnumTagMultiPayload();
    sub_1000A7BA4(v11, v7, type metadata accessor for AppGridView);
    swift_storeEnumTagMultiPayload();
    sub_1000138B0();
    sub_1000A5E78(v15, v16);
    sub_100013388();
    sub_1000A5E78(v17, v18);
    _ConditionalContent<>.init(storage:)();
    v19 = type metadata accessor for AppGridView;
    v20 = v11;
  }

  else
  {
    *v4 = v13;
    sub_1000A7BA4(v4, v7, type metadata accessor for AppListView);
    swift_storeEnumTagMultiPayload();
    sub_1000138B0();
    sub_1000A5E78(v21, v22);
    sub_100013388();
    sub_1000A5E78(v23, v24);
    _ConditionalContent<>.init(storage:)();
    v19 = type metadata accessor for AppListView;
    v20 = v4;
  }

  return sub_1000A7C04(v20, v19);
}

uint64_t sub_1000A5E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A5EC0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for AppGridView(0);
  v29 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = v3;
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AutoShortcutApp();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v35 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = 0;
  v31 = v1;
  v12 = *v1;
  v13 = *(*v1 + 16);
  v37 = v5 + 16;
  v38 = v13;
  v34 = (v5 + 32);
  v36 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v38 == v11)
    {
      v39 = v36;
      v25 = v32;
      sub_1000A7BA4(v31, v32, type metadata accessor for AppGridView);
      v26 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v27 = swift_allocObject();
      sub_1000A9D68(v25, v27 + v26, type metadata accessor for AppGridView);
      sub_10002E87C(&qword_100102C88);
      sub_10002E87C(&qword_100102C90);
      sub_100009624(&qword_100102C98, &qword_100102C88);
      sub_1000A9B6C();
      sub_1000A5E78(&qword_100102CC8, &type metadata accessor for AutoShortcutApp);
      return ForEach<>.init(_:content:)();
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = *(v5 + 72);
    (*(v5 + 16))(v10, v12 + v14 + v15 * v11, v4);
    v16 = AutoShortcutApp.localizedName.getter();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v20 = *v34;
      (*v34)(v35, v10, v4);
      v21 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v21;
      v28 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100062D98();
        v21 = v39;
      }

      v23 = v21[2];
      v24 = (v23 + 1);
      if (v23 >= v21[3] >> 1)
      {
        v36 = (v23 + 1);
        sub_100062D98();
        v24 = v36;
        v21 = v39;
      }

      ++v11;
      v21[2] = v24;
      v36 = v21;
      result = (v28)(v21 + v14 + v23 * v15, v35, v4);
    }

    else
    {
      result = (*(v5 + 8))(v10, v4);
      ++v11;
    }
  }

  __break(1u);
  return result;
}

double sub_1000A62F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AutoShortcutApp();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for AppGridView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000A7BA4(a2, v13, type metadata accessor for AppGridView);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_1000A9D68(v13, v16 + v14, type metadata accessor for AppGridView);
  (*(v7 + 32))(v16 + v15, v9, v6);
  v29 = a1;
  v30 = a2;
  sub_10002E87C(&qword_100102CD0);
  v17 = sub_100041CB4(&qword_100102CD8);
  v18 = type metadata accessor for NavigationDestinationEntity();
  v19 = sub_100009624(&qword_100102CE0, &qword_100102CD8);
  v20 = sub_1000A5E78(&qword_1000FF590, type metadata accessor for NavigationDestinationEntity);
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  v21 = a3 + *(sub_10002E87C(&qword_100102C90) + 36);
  result = 12.0;
  __asm { FMOV            V1.2D, #12.0 }

  *v21 = _Q1;
  *(v21 + 16) = xmmword_1000C60E0;
  *(v21 + 32) = 0;
  return result;
}

uint64_t sub_1000A6624(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002E87C(&unk_1001026E0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = type metadata accessor for AutoShortcutApp();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  sub_1000042A8(v8, 0, 1, v9);
  type metadata accessor for AppGridView(0);
  sub_1000102AC(v8, v6, &unk_1001026E0);
  sub_10002E87C(&qword_100102A70);
  Binding.wrappedValue.setter();
  return sub_1000069B0(v8, &unk_1001026E0);
}

uint64_t sub_1000A6784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = type metadata accessor for AppEntityVisualState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for NavigationDestinationEntity();
  __chkstk_darwin(v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002E87C(&qword_100102CD8);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = sub_10002E87C(&qword_100102CE8);
  sub_1000A6B28(a2, &v13[*(v14 + 44)]);
  v15 = type metadata accessor for AutoShortcutApp();
  (*(*(v15 - 8) + 16))(v10, a1, v15);
  v16 = enum case for RootNavigationDestination.autoShortcuts(_:);
  v17 = type metadata accessor for RootNavigationDestination();
  (*(*(v17 - 8) + 104))(v10, v16, v17);
  v22 = _swiftEmptyArrayStorage;
  sub_1000A5E78(&qword_100100F30, &type metadata accessor for AppEntityVisualState);
  sub_10002E87C(&unk_100103260);
  sub_100009624(&qword_100100F38, &unk_100103260);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100009624(&qword_100102CE0, &qword_100102CD8);
  sub_1000A5E78(&qword_1000FF590, type metadata accessor for NavigationDestinationEntity);
  View.appEntity<A>(_:state:)();
  (*(v6 + 8))(v8, v5);
  sub_1000A7C04(v10, type metadata accessor for NavigationDestinationEntity);
  return sub_1000069B0(v13, &qword_100102CD8);
}

uint64_t sub_1000A6B28@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v2 = sub_10002E87C(&qword_100100D20);
  __chkstk_darwin(v2 - 8);
  v61 = &v53 - v3;
  v59 = type metadata accessor for Font.TextStyle();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IconView.DisplayMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IconSize();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = type metadata accessor for IconView();
  v60 = *(v70 - 8);
  v13 = __chkstk_darwin(v70);
  v67 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  sub_1000A9D24();
  AutoShortcutApp.bundleIdentifier.getter();
  sub_1000AA4DC();
  v17 = sub_1000A741C();
  v18 = sub_1000A741C();
  *v12 = v17;
  v12[1] = v18;
  (*(v10 + 104))(v12, enum case for IconSize.custom(_:), v9);
  (*(v6 + 104))(v8, enum case for IconView.DisplayMode.default(_:), v5);
  v53 = v16;
  IconView.init(_:size:displayMode:animated:)();
  v77 = AutoShortcutApp.localizedName.getter();
  v78 = v19;
  sub_1000200D8();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  LOBYTE(v12) = v23;
  static Font.body.getter();
  v64 = Text.font(_:)();
  v71 = v24;
  LOBYTE(v6) = v25;
  v65 = v26;

  sub_10002072C(v20, v22, v12 & 1);

  KeyPath = swift_getKeyPath();
  v68 = swift_getKeyPath();
  v66 = v6 & 1;
  LOBYTE(v77) = v6 & 1;
  v56 = swift_getKeyPath();
  v55 = sub_1000A7574();
  v27 = swift_getKeyPath();
  v54 = v27;
  LOBYTE(v77) = 0;
  v63 = Image.init(systemName:)();
  v28 = v58;
  v29 = v57;
  v30 = v59;
  (*(v58 + 104))(v57, enum case for Font.TextStyle.caption(_:), v59);
  v31 = type metadata accessor for Font.Design();
  v32 = v61;
  sub_1000042A8(v61, 1, 1, v31);
  static Font.system(_:design:weight:)();
  sub_1000069B0(v32, &qword_100100D20);
  (*(v28 + 8))(v29, v30);
  static Font.Weight.bold.getter();
  v61 = Font.weight(_:)();

  v59 = swift_getKeyPath();
  v33 = [objc_opt_self() tertiaryLabelColor];
  v34 = Color.init(_:)();
  v35 = swift_getKeyPath();
  v36 = v60;
  v37 = *(v60 + 16);
  v38 = v67;
  v39 = v16;
  v40 = v70;
  v37(v67, v39, v70);
  v72 = 1;
  v41 = v62;
  v37(v62, v38, v40);
  v42 = sub_10002E87C(&qword_100102CF8);
  v43 = v42[12];
  __src[0] = v64;
  __src[1] = v71;
  LOBYTE(__src[2]) = v66;
  *(&__src[2] + 1) = *v74;
  HIDWORD(__src[2]) = *&v74[3];
  __src[3] = v65;
  __src[4] = KeyPath;
  LOBYTE(__src[5]) = 0;
  *(&__src[5] + 1) = *v73;
  HIDWORD(__src[5]) = *&v73[3];
  __src[6] = v68;
  LOBYTE(__src[7]) = 1;
  *(&__src[7] + 1) = *v75;
  HIDWORD(__src[7]) = *&v75[3];
  v44 = v56;
  __src[8] = v56;
  __src[9] = 0x3FE8000000000000;
  __src[10] = v27;
  v45 = v55;
  __src[11] = v55;
  LOBYTE(__src[12]) = 0;
  memcpy(&v41[v43], __src, 0x61uLL);
  v46 = &v41[v42[16]];
  v47 = v72;
  *v46 = 0;
  v46[8] = v47;
  v48 = &v41[v42[20]];
  v49 = v59;
  *v48 = v63;
  v48[1] = v49;
  v48[2] = v61;
  v48[3] = v35;
  v48[4] = v34;
  sub_1000102AC(__src, &v77, &qword_100102D00);
  v50 = *(v36 + 8);

  v51 = v70;
  v50(v53, v70);

  v77 = v64;
  v78 = v71;
  v79 = v66;
  *v80 = *v74;
  *&v80[3] = *&v74[3];
  v81 = v65;
  v82 = KeyPath;
  v83 = 0;
  *v84 = *v73;
  *&v84[3] = *&v73[3];
  v85 = v68;
  v86 = 1;
  *v87 = *v75;
  *&v87[3] = *&v75[3];
  v88 = v44;
  v89 = 0x3FE8000000000000;
  v90 = v54;
  v91 = v45;
  v92 = 0;
  sub_1000069B0(&v77, &qword_100102D00);
  return (v50)(v67, v51);
}

double sub_1000A741C()
{
  v0 = type metadata accessor for ContentSizeCategory();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  type metadata accessor for AppGridView(0);
  sub_1000A556C(v6);
  (*(v1 + 104))(v4, enum case for ContentSizeCategory.accessibilityLarge(_:), v0);
  v7 = sub_1000A76C4(v6, v4);
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 58.0;
  if (!v7)
  {
    return 29.0;
  }

  return result;
}

uint64_t sub_1000A7574()
{
  v0 = type metadata accessor for ContentSizeCategory();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  type metadata accessor for AppGridView(0);
  sub_1000A556C(v6);
  (*(v1 + 104))(v4, enum case for ContentSizeCategory.accessibilityLarge(_:), v0);
  v7 = sub_1000A76C4(v6, v4);
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

BOOL sub_1000A76C4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = type metadata accessor for ContentSizeCategory();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a2, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v12 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v12 == enum case for ContentSizeCategory.small(_:))
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.medium(_:))
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v12 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v13 = 4;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v13 = 5;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v13 = 6;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v13 = 7;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v13 = 8;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v13 = 9;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v13 = 10;
    }

    else
    {
      if (v12 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == enum case for ContentSizeCategory.small(_:))
  {
    v16 = 1;
  }

  else if (v15 == enum case for ContentSizeCategory.medium(_:))
  {
    v16 = 2;
  }

  else
  {
    if (v15 != enum case for ContentSizeCategory.large(_:))
    {
      if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

uint64_t sub_1000A7ADC(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.sizeCategory.setter();
}

uint64_t sub_1000A7BA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003EC8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000A7C04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003EC8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1000A7C84()
{
  sub_1000A7E5C(319, &unk_100102BA0, &type metadata accessor for AutoShortcutApp, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1000A5A8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000A7D60()
{
  sub_1000A7E5C(319, &unk_100102BA0, &type metadata accessor for AutoShortcutApp, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1000A5A8C();
    if (v1 <= 0x3F)
    {
      sub_1000A7E5C(319, &unk_100102C40, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000A7E5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000A7EC0()
{
  result = qword_100102C78;
  if (!qword_100102C78)
  {
    sub_100041CB4(&qword_100102C80);
    sub_1000A5E78(&qword_100102B28, type metadata accessor for AppGridView);
    sub_1000A5E78(&qword_100102B30, type metadata accessor for AppListView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102C78);
  }

  return result;
}

uint64_t sub_1000A7FCC@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for AppListView(0);
  v43 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v44 = v3;
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AutoShortcutApp();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = 0;
  v45 = v1;
  v12 = *v1;
  v13 = *(*v1 + 16);
  v51 = v5 + 16;
  v52 = v13;
  v48 = (v5 + 32);
  v50 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v52 == v11)
    {
      v59 = v50;
      v25 = v46;
      sub_1000A7BA4(v45, v46, type metadata accessor for AppListView);
      v26 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v27 = swift_allocObject();
      sub_1000A9D68(v25, v27 + v26, type metadata accessor for AppListView);
      v52 = sub_10002E87C(&qword_100102C88);
      v51 = sub_10002E87C(&qword_100102D08);
      v50 = sub_100009624(&qword_100102C98, &qword_100102C88);
      v28 = sub_100041CB4(&qword_100102D10);
      v29 = type metadata accessor for NavigationDestinationEntity();
      v30 = sub_100041CB4(&unk_1000FF630);
      v31 = type metadata accessor for RootNavigationDestination();
      v32 = sub_100041CB4(&qword_100102D18);
      v33 = sub_100041CB4(&qword_100102D20);
      v34 = sub_100041CB4(&qword_100102D28);
      v35 = sub_100009624(&qword_100102D30, &qword_100102D18);
      v53 = &type metadata for Solarium;
      v54 = &protocol witness table for Solarium;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v53 = v32;
      v54 = v35;
      v37 = swift_getOpaqueTypeConformance2();
      v53 = v32;
      v54 = v33;
      v55 = v34;
      v56 = v35;
      v57 = OpaqueTypeConformance2;
      v58 = v37;
      v38 = swift_getOpaqueTypeConformance2();
      v39 = sub_1000A5E78(&qword_100101720, &type metadata accessor for RootNavigationDestination);
      v53 = v30;
      v54 = v31;
      v55 = v38;
      v56 = v39;
      v40 = swift_getOpaqueTypeConformance2();
      v41 = sub_1000A5E78(&qword_1000FF590, type metadata accessor for NavigationDestinationEntity);
      v53 = v28;
      v54 = v29;
      v55 = v40;
      v56 = v41;
      swift_getOpaqueTypeConformance2();
      sub_1000A5E78(&qword_100102CC8, &type metadata accessor for AutoShortcutApp);
      return ForEach<>.init(_:content:)();
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = *(v5 + 72);
    (*(v5 + 16))(v10, v12 + v14 + v15 * v11, v4);
    v16 = AutoShortcutApp.localizedName.getter();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v20 = *v48;
      (*v48)(v49, v10, v4);
      v21 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v21;
      v42 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100062D98();
        v21 = v53;
      }

      v23 = v21[2];
      v24 = (v23 + 1);
      if (v23 >= v21[3] >> 1)
      {
        v50 = (v23 + 1);
        sub_100062D98();
        v24 = v50;
        v21 = v53;
      }

      ++v11;
      v21[2] = v24;
      v50 = v21;
      result = (v42)(v21 + v14 + v23 * v15, v49, v4);
    }

    else
    {
      result = (*(v5 + 8))(v10, v4);
      ++v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A8608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v77 = a3;
  v5 = type metadata accessor for AutoShortcutApp();
  v61 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002E87C(&unk_1001026E0);
  __chkstk_darwin(v8 - 8);
  v68 = &v51 - v9;
  v10 = type metadata accessor for AppEntityVisualState();
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v74 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for NavigationDestinationEntity();
  __chkstk_darwin(v73);
  v67 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10002E87C(&qword_100102D20);
  v69 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v51 - v13;
  v78 = sub_10002E87C(&qword_100102D18);
  __chkstk_darwin(v78);
  v15 = &v51 - v14;
  v80 = sub_10002E87C(&unk_1000FF630);
  v62 = *(v80 - 8);
  __chkstk_darwin(v80);
  v59 = &v51 - v16;
  v17 = sub_10002E87C(&qword_100102D10);
  v70 = *(v17 - 8);
  v71 = v17;
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  v20 = type metadata accessor for RootNavigationDestination();
  v57 = v20;
  v79 = *(v20 - 8);
  v21 = v79;
  __chkstk_darwin(v20);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v6;
  v24 = *(v6 + 16);
  v53 = v6 + 16;
  v52 = v24;
  v24(v23, a1, v5);
  (*(v21 + 104))(v23, enum case for RootNavigationDestination.autoShortcuts(_:), v20);
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v25 = sub_10002E87C(&qword_100102D38);
  sub_1000A9018(a1, a2, &v15[*(v25 + 44)]);
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  v72 = a1;
  v81 = a1;
  v26 = v60;
  v27 = v19;
  v28 = sub_10002E87C(&qword_100102D28);
  v29 = sub_100009624(&qword_100102D30, &qword_100102D18);
  v82 = &type metadata for Solarium;
  v83 = &protocol witness table for Solarium;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v78;
  v83 = v29;
  v63 = swift_getOpaqueTypeConformance2();
  v31 = v59;
  v32 = v56;
  v66 = v28;
  v65 = v29;
  v64 = OpaqueTypeConformance2;
  View.staticIf<A, B>(_:then:)();
  (*(v69 + 1))(v32, v26);
  sub_1000069B0(v15, &qword_100102D18);
  v33 = &v27[*(sub_10002E87C(&qword_1000FF628) + 36)];
  v34 = *(v79 + 16);
  v35 = v57;
  v34(v33, v23, v57);
  v33[*(sub_10002E87C(&qword_1000FF618) + 36)] = 1;
  v36 = v67;
  (*(v62 + 32))(v27, v31, v80);
  v37 = v35;
  v69 = v23;
  v34(v36, v23, v35);
  type metadata accessor for AppListView(0);
  sub_10002E87C(&qword_100102A70);
  v38 = v68;
  Binding.wrappedValue.getter();
  v39 = v61;
  if (sub_10000AB80(v38, 1, v61))
  {
    sub_1000069B0(v38, &unk_1001026E0);
    v40 = 0;
    v41 = 0xE000000000000000;
  }

  else
  {
    v42 = v54;
    v52(v54, v38, v39);
    sub_1000069B0(v38, &unk_1001026E0);
    v40 = AutoShortcutApp.bundleIdentifier.getter();
    v41 = v43;
    (*(v55 + 8))(v42, v39);
  }

  if (v40 != AutoShortcutApp.bundleIdentifier.getter() || v41 != v44)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v46 = v74;
  AppEntityVisualState.init(isSelected:isHighlighted:isFocused:isDisabled:isEditing:isPrimary:)();
  v82 = v78;
  v83 = v26;
  v84 = v66;
  v85 = v65;
  v86 = v64;
  v87 = v63;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_1000A5E78(&qword_100101720, &type metadata accessor for RootNavigationDestination);
  v82 = v80;
  v83 = v37;
  v84 = v47;
  v85 = v48;
  swift_getOpaqueTypeConformance2();
  sub_1000A5E78(&qword_1000FF590, type metadata accessor for NavigationDestinationEntity);
  v49 = v71;
  View.appEntity<A>(_:state:)();
  (*(v75 + 8))(v46, v76);
  sub_1000A7C04(v36, type metadata accessor for NavigationDestinationEntity);
  (*(v70 + 8))(v27, v49);
  return (*(v79 + 8))(v69, v37);
}

uint64_t sub_1000A9018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v72 = a3;
  v68 = type metadata accessor for AutoShortcutApp();
  v4 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = sub_10002E87C(&qword_100101A20);
  __chkstk_darwin(v66);
  v7 = &v60[-v6];
  v8 = sub_10002E87C(&unk_1001026E0);
  v9 = __chkstk_darwin(v8 - 8);
  v65 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v60[-v12];
  __chkstk_darwin(v11);
  v15 = &v60[-v14];
  v71 = sub_10002E87C(&qword_100102D40);
  v69 = *(v71 - 8);
  v16 = __chkstk_darwin(v71);
  v70 = &v60[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v19 = &v60[-v18];
  v75 = a1;
  v74 = a1;
  sub_10002E87C(&qword_100102D48);
  sub_1000A9EA4();
  v73 = v19;
  Label.init(title:icon:)();
  v20 = static Solarium.isEnabled.getter();
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v20)
  {
    v26 = objc_opt_self();
    v27 = [objc_allocWithZone(NSNumber) initWithInteger:AutoShortcutApp.numberOfShortcuts(includeUserShortcuts:)(1)];
    v28 = [v26 localizedStringFromNumber:v27 numberStyle:0];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v76 = v29;
    v77 = v31;
    sub_1000200D8();
    v63 = Text.init<A>(_:)();
    v62 = v32;
    v61 = v33;
    v34 = v68;
    (*(v4 + 16))(v15, a1, v68);
    sub_1000042A8(v15, 0, 1, v34);
    type metadata accessor for AppListView(0);
    sub_10002E87C(&qword_100102A70);
    Binding.wrappedValue.getter();
    v35 = *(v66 + 48);
    sub_1000102AC(v15, v7, &unk_1001026E0);
    sub_1000102AC(v13, &v7[v35], &unk_1001026E0);
    if (sub_10000AB80(v7, 1, v34) == 1)
    {
      sub_1000069B0(v13, &unk_1001026E0);
      sub_1000069B0(v15, &unk_1001026E0);
      if (sub_10000AB80(&v7[v35], 1, v34) == 1)
      {
        sub_1000069B0(v7, &unk_1001026E0);
LABEL_10:
        v37 = static HierarchicalShapeStyle.primary.getter();
        goto LABEL_11;
      }
    }

    else
    {
      v36 = v65;
      sub_1000102AC(v7, v65, &unk_1001026E0);
      if (sub_10000AB80(&v7[v35], 1, v34) != 1)
      {
        v38 = *(v4 + 32);
        v67 = v13;
        v39 = v64;
        v38(v64, &v7[v35], v34);
        sub_1000A5E78(&qword_100101A28, &type metadata accessor for AutoShortcutApp);
        LODWORD(v66) = dispatch thunk of static Equatable.== infix(_:_:)();
        v40 = *(v4 + 8);
        v40(v39, v34);
        sub_1000069B0(v67, &unk_1001026E0);
        sub_1000069B0(v15, &unk_1001026E0);
        v40(v36, v34);
        sub_1000069B0(v7, &unk_1001026E0);
        if (v66)
        {
          goto LABEL_10;
        }

LABEL_8:
        v37 = static HierarchicalShapeStyle.secondary.getter();
LABEL_11:
        LODWORD(v76) = v37;
        v41 = v61;
        v42 = v63;
        v43 = v62;
        v22 = Text.foregroundStyle<A>(_:)();
        v23 = v44;
        v46 = v45;
        v25 = v47;
        sub_10002072C(v42, v43, v41 & 1);

        v24 = v46 & 1;
        sub_10006D5A4(v22, v23, v46 & 1);

        sub_10002072C(v22, v23, v46 & 1);

        sub_10006D5A4(v22, v23, v46 & 1);

        v21 = 1;
        goto LABEL_12;
      }

      sub_1000069B0(v13, &unk_1001026E0);
      sub_1000069B0(v15, &unk_1001026E0);
      (*(v4 + 8))(v36, v34);
    }

    sub_1000069B0(v7, &qword_100101A20);
    goto LABEL_8;
  }

LABEL_12:
  v68 = v25;
  v48 = v69;
  v49 = *(v69 + 16);
  v50 = v23;
  v51 = v22;
  v52 = v70;
  v53 = v21;
  v54 = v71;
  v49();
  v55 = v72;
  (v49)(v72, v52, v54);
  v56 = (v55 + *(sub_10002E87C(&qword_100102D58) + 48));
  v57 = v68;
  sub_1000A9F60(0, v53, v51, v50, v24, v68);
  sub_1000A9FAC(0, v53, v51, v50, v24, v57);
  *v56 = 0;
  v56[1] = v53;
  v56[2] = v51;
  v56[3] = v50;
  v56[4] = v24;
  v56[5] = v57;
  v58 = *(v48 + 8);
  v58(v73, v54);
  sub_1000A9FAC(0, v53, v51, v50, v24, v57);
  return (v58)(v52, v54);
}

uint64_t sub_1000A9810@<X0>(uint64_t a1@<X8>)
{
  AutoShortcutApp.localizedName.getter();
  sub_1000200D8();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_1000A986C@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IconView.DisplayMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IconSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000A9D24();
  AutoShortcutApp.bundleIdentifier.getter();
  sub_1000AA4DC();
  __asm { FMOV            V0.2D, #29.0 }

  *v9 = _Q0;
  (*(v7 + 104))(v9, enum case for IconSize.custom(_:), v6);
  (*(v3 + 104))(v5, enum case for IconView.DisplayMode.default(_:), v2);
  IconView.init(_:size:displayMode:animated:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = (a1 + *(sub_10002E87C(&qword_100102D48) + 36));
  v16 = v18[1];
  *v15 = v18[0];
  v15[1] = v16;
  result = *&v19;
  v15[2] = v19;
  return result;
}

uint64_t sub_1000A9A7C()
{
  AutoShortcutApp.numberOfShortcuts(includeUserShortcuts:)(1);
  sub_10002E87C(&qword_100102D18);
  sub_100009624(&qword_100102D30, &qword_100102D18);
  return View.badge(_:)();
}

unint64_t sub_1000A9B6C()
{
  result = qword_100102CA0;
  if (!qword_100102CA0)
  {
    sub_100041CB4(&qword_100102C90);
    sub_100009624(&qword_100102CA8, &qword_100102CB0);
    sub_100009624(&qword_100102CB8, &qword_100102CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102CA0);
  }

  return result;
}

uint64_t sub_1000A9C50()
{
  v1 = *(type metadata accessor for AppGridView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AutoShortcutApp() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1000A6624(v0 + v2, v5);
}

unint64_t sub_1000A9D24()
{
  result = qword_100102CF0;
  if (!qword_100102CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100102CF0);
  }

  return result;
}

uint64_t sub_1000A9D68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003EC8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000A9DF4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_1000A9EA4()
{
  result = qword_100102D50;
  if (!qword_100102D50)
  {
    sub_100041CB4(&qword_100102D48);
    sub_1000A5E78(&unk_100103130, &type metadata accessor for IconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102D50);
  }

  return result;
}

uint64_t sub_1000A9F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_10006D5A4(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1000A9FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_10002072C(a3, a4, a5 & 1);
  }

  return result;
}

unint64_t sub_1000A9FF8()
{
  result = qword_100102D60;
  if (!qword_100102D60)
  {
    sub_100041CB4(&qword_100102D68);
    sub_1000A9B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102D60);
  }

  return result;
}

unint64_t sub_1000AA07C()
{
  result = qword_100102D70;
  if (!qword_100102D70)
  {
    sub_100041CB4(&qword_100102D78);
    sub_100041CB4(&qword_100102D10);
    type metadata accessor for NavigationDestinationEntity();
    sub_100041CB4(&unk_1000FF630);
    type metadata accessor for RootNavigationDestination();
    sub_100041CB4(&qword_100102D18);
    sub_100041CB4(&qword_100102D20);
    sub_100041CB4(&qword_100102D28);
    sub_100009624(&qword_100102D30, &qword_100102D18);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000A5E78(&qword_100101720, &type metadata accessor for RootNavigationDestination);
    swift_getOpaqueTypeConformance2();
    sub_1000A5E78(&qword_1000FF590, type metadata accessor for NavigationDestinationEntity);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102D70);
  }

  return result;
}

void *sub_1000AA328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10008156C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1000AA37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_10008156C(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void *sub_1000AA3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10008156C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

id sub_1000AA414(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithView:a1 parameters:a2];

  return v4;
}

id sub_1000AA4DC()
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10000A594();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithBundleIdentifier:v2];

  return v3;
}

Swift::Int sub_1000AA5F8()
{
  sub_100006360();
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

Swift::Int sub_1000AA658()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000AA6C4()
{
  v1 = qword_100102DA0;
  if (*(v0 + qword_100102DA0))
  {
    v2 = *(v0 + qword_100102DA0);
  }

  else
  {
    v3 = v0;
    LibraryDataSource.database.getter();
    LibraryDataSource.shortcutMoveService.getter();
    sub_100003A0C();
    type metadata accessor for MoveToFolderCoordinator();
    sub_100006640();
    v2 = MoveToFolderCoordinator.init(database:service:)();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10000F668(&qword_100103210, type metadata accessor for LibraryViewController);
    }

    dispatch thunk of MoveToFolderCoordinator.delegate.setter();
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_1000AA7B8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong isEditing];

    if (v2)
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        sub_1000296C4();
      }
    }
  }
}

uint64_t sub_1000AA854()
{
  type metadata accessor for LibraryDataSource();
  v0 = method lookup function for LibraryDataSource();

  return v0();
}

void sub_1000AA89C(uint64_t a1)
{
  type metadata accessor for LibraryDataSource();
  v2 = method lookup function for LibraryDataSource();
  v2(a1);

  sub_1000AA7B8();
}

void (*sub_1000AA8FC())(void *a1, char a2)
{
  v1 = sub_10004D490(0x30uLL);
  sub_1000051B8(v1);
  v2 = method lookup function for LibraryDataSource();
  *(v0 + 40) = v2(v0);
  return sub_1000AA978;
}

void sub_1000AA990()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for LibraryDataSource();
    v2 = sub_10000B15C();
    [v1 setEditing:v2() & 1 animated:1];
  }

  sub_100010CE4();
}

void sub_1000AAA0C(uint64_t a1)
{
  type metadata accessor for LibraryDataSource();
  v2 = method lookup function for LibraryDataSource();
  v2(a1);

  sub_1000AA990();
}

void (*sub_1000AAA6C())(void *a1, char a2)
{
  v1 = sub_10004D490(0x30uLL);
  sub_1000051B8(v1);
  v2 = method lookup function for LibraryDataSource();
  *(v0 + 40) = v2(v0);
  return sub_1000AAAE8;
}

void sub_1000AAB00(void *a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
  v6 = (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    a3(v6);
  }

  free(v5);
}

uint64_t sub_1000AAB6C()
{
  type metadata accessor for LibraryDataSource();
  sub_10000F730();
  v0 = method lookup function for LibraryDataSource();
  v0();
  v1 = LibraryLayoutMode.rawValue.getter();
  v3 = v2;
  if (v1 == LibraryLayoutMode.rawValue.getter() && v3 == v4)
  {
  }

  else
  {
    sub_1000043C4();
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {

      return sub_100010CE4(0, 0);
    }
  }

  return result;
}

uint64_t sub_1000AAC54()
{
  type metadata accessor for LibraryDataSource();
  sub_10000F730();
  v0 = method lookup function for LibraryDataSource();
  return v0() & 1;
}

uint64_t sub_1000AAC84(char a1)
{
  type metadata accessor for LibraryDataSource();
  sub_10000F730();
  v2 = method lookup function for LibraryDataSource();
  v2();
  sub_100003FC8();
  v3 = method lookup function for LibraryDataSource();
  v3(a1 & 1);

  return sub_1000AAB6C();
}

uint64_t (*sub_1000AACF8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = type metadata accessor for LibraryDataSource();
  sub_10000F730();
  v3 = method lookup function for LibraryDataSource();
  *(a1 + 16) = v3;
  *(a1 + 24) = v3() & 1;
  return sub_1000AAD60;
}

uint64_t sub_1000AAD60(uint64_t a1)
{
  v1 = *(a1 + 24);
  (*(a1 + 16))();
  sub_100003FC8();
  v2 = method lookup function for LibraryDataSource();
  v2(v1);
  return sub_1000AAB6C();
}

void sub_1000AADD4()
{
  sub_1000043AC();
  v40 = v1;
  type metadata accessor for LibrarySectionOptions.SectionType();
  sub_100004458();
  v39[1] = v3;
  v39[2] = v2;
  __chkstk_darwin(v2);
  sub_1000039BC();
  sub_1000043E0();
  v4 = type metadata accessor for LibrarySectionOptions();
  sub_100004458();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000039BC();
  v10 = v9 - v8;
  v11 = sub_10002E87C(&unk_100102410);
  sub_100002EE0(v11);
  sub_100005B90();
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  v15 = type metadata accessor for ShortcutsLibrarySection();
  sub_100004458();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_1000039BC();
  v21 = v20 - v19;
  IndexPath.section.getter();
  sub_10001AB2C();
  if (sub_10000AB80(v14, 1, v15) == 1)
  {
    sub_1000069B0(v14, &unk_100102410);
    type metadata accessor for AutoShortcutApp();
    sub_100004730();
  }

  else
  {
    v26 = v40;
    (*(v17 + 32))(v21, v14, v15);
    ShortcutsLibrarySection.options.getter();
    LibrarySectionOptions.sectionType.getter();
    (*(v6 + 8))(v10, v4);
    (*(v17 + 8))(v21, v15);
    v27 = sub_1000043C4();
    if (v28(v27) != enum case for LibrarySectionOptions.SectionType.appShortcuts(_:))
    {
      type metadata accessor for AutoShortcutApp();
      sub_100004730();
      sub_1000042A8(v33, v34, v35, v36);
      v37 = sub_1000043C4();
      v38(v37);
      goto LABEL_7;
    }

    v29 = sub_1000043C4();
    v30(v29);
    v31 = type metadata accessor for AutoShortcutApp();
    sub_100003EC8();
    (*(v32 + 32))(v26, v0, v31);
    v22 = v26;
    v23 = 0;
    v24 = 1;
    v25 = v31;
  }

  sub_1000042A8(v22, v23, v24, v25);
LABEL_7:
  sub_100002EEC();
}

void sub_1000AB118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000079FC();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v22 = sub_10002E87C(&unk_1000FF9E0);
  v23 = sub_100002EE0(v22);
  __chkstk_darwin(v23);
  sub_100003EF4();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  v29 = &a9 - v28;
  sub_10001ADD8();
  sub_1000043C4();
  sub_10001D37C();
  v30 = type metadata accessor for ShortcutsLibraryItem();
  if (sub_10000AB80(v26, 1, v30) == 1)
  {
    sub_1000069B0(v29, &unk_1000FF9E0);
    v31 = sub_100005BCC();
    sub_1000069B0(v31, v32);
  }

  else
  {
    v21();
    sub_1000069B0(v29, &unk_1000FF9E0);
    (*(*(v30 - 8) + 8))(v26, v30);
  }

  sub_1000046DC();
}

void sub_1000AB28C()
{
  sub_1000043AC();
  v1 = v0;
  v77 = v2;
  v78 = v3;
  v5 = v4;
  v79 = type metadata accessor for ShortcutsLibraryItem.ItemType();
  sub_100004458();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000039BC();
  v11 = (v10 - v9);
  v80 = type metadata accessor for ShortcutsLibraryItem();
  sub_100004458();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000039BC();
  v81 = v16 - v15;
  sub_1000042F8();
  v73 = type metadata accessor for ShortcutsLibrarySection();
  sub_100004458();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000039BC();
  v72 = v21 - v20;
  v22 = sub_10002E87C(&qword_1001031C0);
  sub_100004458();
  v24 = v23;
  sub_100005B90();
  __chkstk_darwin(v25);
  v27 = v65 - v26;
  dispatch thunk of LibraryDataSource.sortedSections.getter();
  v28 = OrderedDictionary.values.getter();
  (*(v24 + 8))(v27, v22);
  v67 = *(v28 + 16);
  if (v67)
  {
    v65[1] = v1;
    v65[2] = v5;
    sub_100003A3C();
    v71 = v28 + v30;
    v69 = v18 + 8;
    v70 = v18 + 16;
    v85 = v13 + 16;
    v84 = enum case for ShortcutsLibraryItem.ItemType.workflow(_:);
    v82 = v7 + 88;
    v83 = (v13 + 8);
    v75 = v7 + 96;
    v76 = v7 + 8;
    v31 = v80;
    v32 = v13;
    v33 = v18;
    v66 = v18;
    v68 = v28;
    while (v29 < *(v28 + 16))
    {
      v34 = *(v33 + 72);
      v74 = v29;
      v35 = v72;
      v36 = v73;
      v37 = v33;
      (*(v33 + 16))(v72, v71 + v34 * v29, v73);
      v38 = ShortcutsLibrarySection.items.getter();
      (*(v37 + 8))(v35, v36);
      v39 = *(v38 + 16);
      if (v39)
      {
        v40 = 0;
        sub_100003A3C();
        v42 = v38 + v41;
        v43 = v81;
        while (v40 < *(v38 + 16))
        {
          (*(v32 + 16))(v43, v42 + *(v32 + 72) * v40, v31);
          ShortcutsLibraryItem.itemType.getter();
          v44 = sub_10000A874();
          v46 = v45(v44);
          if (v46 == v84)
          {
            v47 = v32;
            v48 = sub_10000A874();
            v49(v48);
            v50 = *v11;
            v51 = [*v11 identifier];
            v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v54 = v53;

            if (v52 == v77 && v54 == v78)
            {

              v31 = v80;
LABEL_20:
              v63 = v81;
              v86 = ShortcutsLibraryItem.id.getter();
              v87 = v64;
              dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

              (*v83)(v63, v31);
              goto LABEL_21;
            }

            v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v31 = v80;
            if (v56)
            {

              goto LABEL_20;
            }

            v43 = v81;
            (*v83)(v81, v80);

            v32 = v47;
          }

          else
          {
            (*v83)(v43, v31);
            v57 = sub_10000A874();
            v58(v57);
          }

          if (v39 == ++v40)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }

LABEL_16:

      v29 = v74 + 1;
      v28 = v68;
      v33 = v66;
      if (v74 + 1 == v67)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    type metadata accessor for IndexPath();
    sub_100004730();
    sub_1000042A8(v59, v60, v61, v62);
LABEL_21:
    sub_100002EEC();
  }
}

uint64_t sub_1000AB7D8()
{
  static ShortcutsLibraryItem.identifier(for:)();
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
}

uint64_t sub_1000AB834(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000ABC84(a1);
  }

  return result;
}

void sub_1000AB898()
{
  sub_1000043AC();
  v25 = type metadata accessor for LibrarySectionOptions.SectionType();
  sub_100004458();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_1000039BC();
  v5 = v4 - v3;
  v6 = type metadata accessor for LibrarySectionOptions();
  sub_100004458();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000039BC();
  v12 = v11 - v10;
  v13 = *(dispatch thunk of LibraryDataSource.sections.getter() + 16);
  if (v13)
  {
    v14 = 0;
    v15 = v8 + 16;
    sub_100003A3C();
    v18 = v16 + v17;
    v23 = *(v15 + 56);
    v24 = v19;
    v20 = (v15 - 8);
    while (1)
    {
      v24(v12, v18, v6);
      LibrarySectionOptions.sectionType.getter();
      v21 = LibrarySectionOptions.SectionType.count.getter();
      (*(v1 + 8))(v5, v25);
      (*v20)(v12, v6);
      v22 = __OFADD__(v14, v21);
      v14 += v21;
      if (v22)
      {
        break;
      }

      v18 += v23;
      if (!--v13)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    sub_100002EEC();
  }
}

uint64_t sub_1000ABA64()
{
  sub_10002E87C(&unk_1001031C8);
  sub_100004458();
  sub_100005B90();
  __chkstk_darwin(v0);
  sub_1000043E0();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  ShortcutsLibrarySection.id.getter();
  v1 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();

  v2 = sub_100005CF0();
  v3(v2);
  return v1;
}

uint64_t sub_1000ABB60()
{
  v0 = sub_10002E87C(&unk_1001031C8);
  sub_100004458();
  v2 = v1;
  sub_100005B90();
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v6 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_1000ABC38()
{
  if (*(v0 + qword_100102D80) <= 0)
  {
    return *(v0 + qword_100102DA8);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000ABC64(uint64_t result)
{
  v2 = *(v1 + qword_100102D80);
  v3 = __OFADD__(v2, result);
  v4 = v2 + result;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + qword_100102D80) = v4;
  }

  return result;
}

void sub_1000ABC84(uint64_t a1)
{
  v3 = type metadata accessor for AggregatedEntry();
  sub_100004458();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000039BC();
  sub_1000043E0();
  (*(v5 + 16))(v1, a1, v3);
  v7 = sub_100005CF0();
  v9 = v8(v7);
  if (v9 == enum case for AggregatedEntry.userShortcut(_:))
  {
    v10 = sub_100005CF0();
    v11(v10);
    v12 = *v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = swift_unknownObjectWeakLoadStrong();

      if (v15)
      {
        swift_getObjectType();
        sub_100005E80();
        dispatch thunk of LibraryDelegate.run(_:from:input:requestOutput:runViewSource:completionHandler:)();

LABEL_9:
        swift_unknownObjectRelease();
        return;
      }
    }
  }

  else if (v9 == enum case for AggregatedEntry.appShortcut(_:))
  {
    v16 = sub_100005CF0();
    v17(v16);
    v18 = *v1;
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = swift_unknownObjectWeakLoadStrong();

      if (v21)
      {
        swift_getObjectType();
        dispatch thunk of LibraryDelegate.run(_:)();

        goto LABEL_9;
      }
    }
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

uint64_t sub_1000ABEC8()
{
  swift_unknownObjectWeakDestroy();
}

uint64_t sub_1000ABF28()
{
  v0 = LibraryDataSource.deinit();

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_1000ABF90()
{
  v0 = sub_1000ABF28();

  return _swift_deallocClassInstance(v0, 57, 7);
}

uint64_t sub_1000ABFC8()
{
  v0 = type metadata accessor for LibraryWorkflowCreationBehavior();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LibrarySectionOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    ShortcutsLibrarySection.options.getter();
    LibrarySectionOptions.workflowCreationBehavior.getter();
    (*(v5 + 8))(v7, v4);
    type metadata accessor for LibraryViewController();
    sub_10000F668(&qword_1001025E0, type metadata accessor for LibraryViewController);
    LibraryOperations.createWorkflow(from:withBehavior:)();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void sub_1000AC1DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      swift_getObjectType();
      dispatch thunk of LibraryDelegate.navigateToAutoShortcutApp(_:)();
      swift_unknownObjectRelease();
    }
  }
}

void sub_1000AC2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002FC4(0, &qword_100102CF0);
  AutoShortcutApp.bundleIdentifier.getter();
  v5 = sub_1000AA4DC();
  v6 = AutoShortcutApp.localizedName.getter();
  v8 = v7;
  v9 = v5;
  sub_1000292C8(v6, v8, v5, 0, 0, a2, a3, 24.0, 24.0);
}

id sub_1000AC3E4(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7.receiver = v3;
  v7.super_class = a3(a2);
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1000AC4A8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1000AC54C()
{
  v1 = type metadata accessor for ShortcutsEmptyStateView();
  __chkstk_darwin(v1 - 8);
  v2 = *(v0 + OBJC_IVAR____TtCC9Shortcuts21LibraryViewControllerP33_92562CD5492E919F87A213A8E0FD4AE916EmptySectionCell_hostingController);

  ShortcutsEmptyStateView.init(content:)();
  dispatch thunk of UIHostingController.rootView.setter();
}

uint64_t sub_1000AC5F8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCC9Shortcuts21LibraryViewControllerP33_92562CD5492E919F87A213A8E0FD4AE916EmptySectionCell_emptyStateContent) = a1;

  sub_1000AC54C();
}

void sub_1000AC654()
{
  v1 = [v0 selectedBackgroundView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 layer];

    [v3 setCornerRadius:*&v0[OBJC_IVAR____TtCC9Shortcuts21LibraryViewControllerP33_92562CD5492E919F87A213A8E0FD4AE916EmptySectionCell_cornerRadius]];
  }
}

void sub_1000AC6F4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for ShortcutsEmptyStateView();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for RootNavigationDestination();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtCC9Shortcuts21LibraryViewControllerP33_92562CD5492E919F87A213A8E0FD4AE916EmptySectionCell_emptyStateContent;
  type metadata accessor for ShortcutsEmptyStateContent();
  (*(v12 + 104))(v14, enum case for RootNavigationDestination.shortcuts(_:), v11);
  v16 = static ShortcutsEmptyStateContent.emptyStateContent(for:)();
  (*(v12 + 8))(v14, v11);
  *&v5[v15] = v16;
  *&v5[OBJC_IVAR____TtCC9Shortcuts21LibraryViewControllerP33_92562CD5492E919F87A213A8E0FD4AE916EmptySectionCell_cornerRadius] = 0;

  ShortcutsEmptyStateView.init(content:)();
  v17 = objc_allocWithZone(sub_10002E87C(&unk_1001031A0));
  v18 = UIHostingController.init(rootView:)();
  v19 = [v18 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = v19;
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v5[OBJC_IVAR____TtCC9Shortcuts21LibraryViewControllerP33_92562CD5492E919F87A213A8E0FD4AE916EmptySectionCell_hostingController] = v18;
  v21 = _s14descr1000EF9A1C16EmptySectionCellCMa();
  v57.receiver = v5;
  v57.super_class = v21;
  v22 = v18;
  v23 = objc_msgSendSuper2(&v57, "initWithFrame:", a1, a2, a3, a4);
  v24 = [v23 contentView];
  v25 = [v22 view];
  if (!v25)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v26 = v25;
  [v24 addSubview:v25];

  sub_10002E87C(&qword_1001000E0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000C13C0;
  v28 = [v22 view];
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v29 = v28;
  v30 = [v28 leadingAnchor];

  v31 = [v23 contentView];
  v32 = [v31 layoutMarginsGuide];

  v33 = [v32 leadingAnchor];
  v34 = [v30 constraintEqualToAnchor:v33];

  *(v27 + 32) = v34;
  v35 = [v22 view];
  if (!v35)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v36 = v35;
  v37 = [v35 trailingAnchor];

  v38 = [v23 contentView];
  v39 = [v38 layoutMarginsGuide];

  v40 = [v39 trailingAnchor];
  v41 = [v37 constraintEqualToAnchor:v40];

  *(v27 + 40) = v41;
  v42 = [v22 view];
  if (!v42)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v43 = v42;
  v44 = [v42 topAnchor];

  v45 = [v23 contentView];
  v46 = [v45 topAnchor];

  v47 = [v44 constraintEqualToAnchor:v46];
  *(v27 + 48) = v47;
  v48 = [v22 view];

  if (v48)
  {
    v49 = objc_opt_self();
    v50 = [v48 bottomAnchor];

    v51 = [v23 contentView];
    v52 = [v51 bottomAnchor];

    v53 = [v50 constraintEqualToAnchor:v52];
    *(v27 + 56) = v53;
    sub_100002FC4(0, &qword_1001002C8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v49 activateConstraints:isa];

    v55 = [objc_allocWithZone(UIView) init];
    v56 = [objc_opt_self() secondarySystemBackgroundColor];
    [v55 setBackgroundColor:v56];

    [v23 setSelectedBackgroundView:v55];
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1000ACD70()
{
  v1 = v0;
  v2 = type metadata accessor for RootNavigationDestination();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCC9Shortcuts21LibraryViewControllerP33_92562CD5492E919F87A213A8E0FD4AE916EmptySectionCell_emptyStateContent;
  type metadata accessor for ShortcutsEmptyStateContent();
  (*(v3 + 104))(v5, enum case for RootNavigationDestination.shortcuts(_:), v2);
  v7 = static ShortcutsEmptyStateContent.emptyStateContent(for:)();
  (*(v3 + 8))(v5, v2);
  *(v1 + v6) = v7;
  *(v1 + OBJC_IVAR____TtCC9Shortcuts21LibraryViewControllerP33_92562CD5492E919F87A213A8E0FD4AE916EmptySectionCell_cornerRadius) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000ACF58()
{
  v12.receiver = v0;
  v12.super_class = _s14descr1000EF9A1C10TopHitCellCMa();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtCC9Shortcuts21LibraryViewControllerP33_92562CD5492E919F87A213A8E0FD4AE910TopHitCell_hostingView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame:{v5, v7, v9, v11}];
  }
}

void sub_1000AD068()
{
  v4.receiver = v0;
  v4.super_class = _s14descr1000EF9A1C10TopHitCellCMa();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = OBJC_IVAR____TtCC9Shortcuts21LibraryViewControllerP33_92562CD5492E919F87A213A8E0FD4AE910TopHitCell_hostingView;
  v2 = *&v0[OBJC_IVAR____TtCC9Shortcuts21LibraryViewControllerP33_92562CD5492E919F87A213A8E0FD4AE910TopHitCell_hostingView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }
}

void sub_1000AD118(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtCC9Shortcuts21LibraryViewControllerP33_92562CD5492E919F87A213A8E0FD4AE910TopHitCell_hostingView];
  *&v1[OBJC_IVAR____TtCC9Shortcuts21LibraryViewControllerP33_92562CD5492E919F87A213A8E0FD4AE910TopHitCell_hostingView] = a1;
  v3 = a1;

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 contentView];
  [v4 addSubview:v3];

  v5 = objc_opt_self();
  sub_10002E87C(&qword_1001000E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000C13C0;
  v7 = [v3 leadingAnchor];
  v8 = [v1 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor:v9];
  *(v6 + 32) = v10;
  v11 = [v3 trailingAnchor];
  v12 = [v1 contentView];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v6 + 40) = v14;
  v15 = [v3 topAnchor];
  v16 = [v1 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v6 + 48) = v18;
  v19 = [v3 bottomAnchor];
  v20 = [v1 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [v19 constraintEqualToAnchor:v21];
  *(v6 + 56) = v22;
  sub_100002FC4(0, &qword_1001002C8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];
}

id sub_1000AD474(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  *&v4[*a2] = 0;
  v8.receiver = v4;
  v8.super_class = a4(a3);
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_1000AD560@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ButtonStyleConfiguration.Label();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002E87C(&qword_100103290);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  ButtonStyleConfiguration.label.getter();
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v10 = 0.5;
  }

  else
  {
    v10 = 1.0;
  }

  (*(v3 + 32))(v9, v5, v2);
  *&v9[*(v7 + 44)] = v10;
  v11 = 0;
  if ((ButtonStyleConfiguration.isPressed.getter() & 1) == 0)
  {
    v11 = static Animation.easeInOut(duration:)();
  }

  v12 = ButtonStyleConfiguration.isPressed.getter();
  sub_10002769C();
  result = sub_10002E87C(&qword_100103298);
  v14 = a1 + *(result + 36);
  *v14 = v11;
  *(v14 + 8) = v12 & 1;
  return result;
}

uint64_t sub_1000AD718(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC9Shortcuts11LibraryCell_workflowReference);
  if (v1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_getObjectType();
      v2 = v1;
      WorkflowOpener.openWorkflow(_:)();
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000AD7C0(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC9Shortcuts11LibraryCell_autoShortcut);
  if (v1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_getObjectType();
    v2 = v1;
    dispatch thunk of LibraryDelegate.run(_:)();
  }

  else
  {
    v3 = *(result + OBJC_IVAR____TtC9Shortcuts11LibraryCell_workflowReference);
    if (!v3)
    {
      return result;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_getObjectType();
    v2 = v3;
    sub_100005E80();
    dispatch thunk of LibraryDelegate.run(_:from:input:requestOutput:runViewSource:completionHandler:)();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000AD8D0()
{
  v0 = sub_10002E87C(&unk_100101EB0);
  sub_100002EE0(v0);
  sub_100005B90();
  __chkstk_darwin(v1);
  v3 = &v8 - v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    dispatch thunk of LibraryDelegate.runningWorkflow.getter();
    swift_unknownObjectRelease();
    v5 = type metadata accessor for RunningWorkflow();
    if (sub_10000AB80(v3, 1, v5) == 1)
    {
      return sub_1000069B0(v3, &unk_100101EB0);
    }

    else
    {
      v6 = RunningWorkflow.stop.getter();
      v7 = (*(*(v5 - 8) + 8))(v3, v5);
      v6(v7);
    }
  }

  return result;
}

void sub_1000ADA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000079FC();
  a17 = v19;
  a18 = v20;
  v21 = v18;
  v23 = v22;
  v24 = type metadata accessor for IndexPath();
  sub_100004458();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_100003EF4();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  v34 = sub_10000E968();
  v35 = [v34 indexPathForCell:v23];

  if (v35)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v26 + 32))(v33, v30, v24);
    v36 = [v23 isSelected];
    v37 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___collectionView;
    v38 = *(v21 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___collectionView);
    v39.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    if (v36)
    {
      [v38 deselectItemAtIndexPath:v39.super.isa animated:1];

      v40 = *(v21 + v37);
      sub_10009EA74(v40, v33);
    }

    else
    {
      [v38 selectItemAtIndexPath:v39.super.isa animated:1 scrollPosition:0];

      v40 = *(v21 + v37);
      sub_10009E8D8(v40, v33);
    }

    v41 = sub_1000043C4();
    v42(v41);
  }

  sub_1000046DC();
}

void *sub_1000ADBE8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_autoShortcut);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = v1;
  sub_10008642C();
  v4 = v3;

  return v4;
}

void *sub_1000ADD38()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_workflowReference);
  v2 = v1;
  return v1;
}

void *sub_1000ADE04()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_autoShortcut);
  v2 = v1;
  return v1;
}

id sub_1000ADE9C()
{
  sub_100002FC4(0, &qword_100103198);
  v1 = sub_10000AB60("transform.translation.x");
  sub_100019C88([v1 setDuration:0.134]);
  [v1 setBeginTime:v2 / v0];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  sub_100041E24(isa, "setFromValue:");

  v4 = Double._bridgeToObjectiveC()().super.super.isa;
  sub_100041E24(v4, "setToValue:");

  v5 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v6) = 1052266988;
  LODWORD(v7) = 1059145646;
  LODWORD(v8) = 1.0;
  v9 = [v5 initWithControlPoints:v6 :0.0 :v7 :v8];
  sub_100041E24(v9, "setTimingFunction:");

  sub_100008394(v11, v10, "setRepeatCount:");
  sub_100003C20([v1 setAutoreverses:1], "setRemovedOnCompletion:");

  return v1;
}

id sub_1000ADFD8()
{
  sub_100002FC4(0, &qword_100103198);
  v1 = sub_10000AB60("transform.translation.y");
  sub_100019C88([v1 setDuration:0.142]);
  [v1 setBeginTime:v2 / v0];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  sub_100041E24(isa, "setFromValue:");

  v4 = Double._bridgeToObjectiveC()().super.super.isa;
  sub_100041E24(v4, "setToValue:");

  v5 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v6) = 1052266988;
  LODWORD(v7) = 1059145646;
  LODWORD(v8) = 1.0;
  v9 = [v5 initWithControlPoints:v6 :0.0 :v7 :v8];
  sub_100041E24(v9, "setTimingFunction:");

  sub_100008394(v11, v10, "setRepeatCount:");
  sub_100003C20([v1 setAutoreverses:1], "setRemovedOnCompletion:");

  return v1;
}

id sub_1000AE114()
{
  sub_100002FC4(0, &qword_100103198);
  v1 = sub_1000AEDC4(0xD000000000000012, 0x80000001000CA1F0);
  sub_100019C88([v1 setDuration:0.128]);
  [v1 setBeginTime:v2 / v0];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  sub_100041E24(isa, "setFromValue:");

  v4 = Double._bridgeToObjectiveC()().super.super.isa;
  sub_100041E24(v4, "setToValue:");

  v5 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v6) = 1052266988;
  LODWORD(v7) = 1059145646;
  LODWORD(v8) = 1.0;
  v9 = [v5 initWithControlPoints:v6 :0.0 :v7 :v8];
  sub_100041E24(v9, "setTimingFunction:");

  sub_100008394(v11, v10, "setRepeatCount:");
  sub_100003C20([v1 setAutoreverses:1], "setRemovedOnCompletion:");

  return v1;
}

void sub_1000AE260()
{
  v1 = type metadata accessor for ShortcutChiclet.Model.Metrics();
  v2 = sub_100002EE0(v1);
  __chkstk_darwin(v2);
  sub_1000039BC();
  v3 = sub_10002E87C(&qword_100103170);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  *(v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_hostingView) = 0;
  v5 = OBJC_IVAR____TtC9Shortcuts11LibraryCell_model;
  type metadata accessor for ShortcutChiclet.ButtonType();
  sub_100004730();
  sub_1000042A8(v6, v7, v8, v9);
  static ShortcutChiclet.Model.Metrics.default.getter();
  type metadata accessor for ShortcutChiclet.Model();
  sub_100006640();
  *(v0 + v5) = sub_100005C6C();
  v10 = OBJC_IVAR____TtC9Shortcuts11LibraryCell_progress;
  type metadata accessor for ShortcutChiclet.Progress();
  sub_100006640();
  *(v0 + v10) = ShortcutChiclet.Progress.init()();
  *(v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_observation) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_workflowReference) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_autoShortcut) = 0;
  v11 = (v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_associatedBundleId);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_layoutMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_isEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_isJiggling) = 0;
  v12 = (v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell____lazy_storage___run);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell____lazy_storage___stop);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell____lazy_storage___accessibilitySelect);
  *v14 = 0;
  v14[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000AE498()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for LibraryCell();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  sub_1000284F8(1, 0);
  v1 = *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_workflowReference];
  *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_workflowReference] = 0;

  v2 = &v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_associatedBundleId];
  *v2 = 0;
  *(v2 + 1) = 0;

  v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_isJiggling] = 0;
  sub_1000278DC();
  v3 = *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_autoShortcut];
  *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_autoShortcut] = 0;

  return dispatch thunk of ShortcutChiclet.Model.reset()();
}

void *sub_1000AE588()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = Strong;
  if (!swift_unknownObjectWeakLoadStrong())
  {

    return &_swiftEmptyArrayStorage;
  }

  v2 = sub_1000ADBE8(v1);

  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1000AE624(void *a1, void *a2)
{
  v3 = [a1 triggerPhrase];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100002FC4(0, &qword_100103188);

  v4 = a2;
  sub_1000AE93C();
  sub_10002756C();
  sub_100027604();
  return ShortcutChiclet.init(name:icon:textColor:renderUnderglow:associatedAppBundleIdentifier:model:progress:runAction:stopAction:accessibilitySelectionAction:)();
}

id sub_1000AE758(void *a1)
{
  v2 = v1;
  v4 = [v2 traitCollection];
  v5 = [v4 userInterfaceStyle];

  v6 = v5 == 2;
  v7 = [v2 traitCollection];
  v8 = [v7 accessibilityContrast];

  v9 = v8 == 1;
  v10 = [a1 backgroundColor];
  v11 = [v10 paletteGradient];

  v12 = [v11 baseColorForDarkMode:v6 highContrast:v9];
  v13 = [v12 platformColor];

  return v13;
}

id sub_1000AE87C()
{
  [v0 bounds];
  sub_10001C820();
  v1 = *&v0[OBJC_IVAR____TtC9Shortcuts11LibraryCell_layoutMetrics];
  if (v1)
  {
    v2 = [v1 floatingViewConfiguration];
    [v2 cornerRadius];
  }

  objc_opt_self();
  v3 = sub_100017370();
  v6 = [v4 v5];

  return v6;
}

void sub_1000AE93C()
{
  sub_1000079FC();
  v2 = (v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell____lazy_storage___run);
  if (!*(v0 + OBJC_IVAR____TtC9Shortcuts11LibraryCell____lazy_storage___run))
  {
    sub_100003A00();
    swift_allocObject();
    sub_100005764();
    *v2 = sub_1000AF868;
    v2[1] = v1;

    v3 = sub_100011DAC();
    sub_10000B970(v3);
  }

  sub_1000118D0();
  sub_1000046DC();
}

void sub_1000AE9CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000AD7C0(v1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1000AEA5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000AD8D0();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1000AEAD8()
{
  sub_100006360();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = sub_10000A594();
      v0(v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1000AEBB4(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for LibraryCell();
  objc_msgSendSuper2(&v4, "setSelected:", a1 & 1);
  return sub_1000AEBFC();
}

void sub_1000AEC38(void *a1, char a2, double a3, double a4)
{
  v7 = [a1 contentView];
  v9 = v7;
  if (a2)
  {
    v8 = a3;
  }

  else
  {
    v8 = a4;
  }

  [v7 setAlpha:v8];
}

id sub_1000AEDC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath:v2];

  return v3;
}

uint64_t sub_1000AEE34()
{
  v2 = sub_10002E87C(&unk_100103140);
  sub_100002EE0(v2);
  sub_100005B90();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for UIPointerEffect();
  sub_100004458();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000039BC();
  sub_1000043E0();
  v8 = [objc_allocWithZone(UIPreviewParameters) init];
  if (_UISolariumEnabled())
  {
    [v0 bounds];
    CGRectInset(v31, -30.0, -30.0);
    sub_10001C820();
    objc_opt_self();
    v9 = sub_100017370();
    v12 = [v10 v11];
  }

  else
  {
    v12 = sub_1000AE87C();
  }

  v13 = v12;
  [v8 setVisiblePath:v12];

  sub_100002FC4(0, &qword_100101F08);
  v14 = v8;
  v15 = sub_1000AA414(v0, v14);
  v16 = sub_10002E87C(&qword_100103150);
  v17 = v16[12];
  *v1 = v15;
  v18 = v15;
  v19 = _UISolariumEnabled();
  v20 = &enum case for UIPointerEffect.TintMode.none(_:);
  if (!v19)
  {
    v20 = &enum case for UIPointerEffect.TintMode.overlay(_:);
  }

  v21 = *v20;
  type metadata accessor for UIPointerEffect.TintMode();
  sub_100003EC8();
  (*(v22 + 104))(&v1[v17], v21);
  sub_100002FC4(0, &unk_100103158);
  v23 = v16[16];
  v24 = v16[20];
  v1[v23] = _UISolariumEnabled() ^ 1;
  v1[v24] = 1;
  (*(v6 + 104))(v1, enum case for UIPointerEffect.hover(_:), v4);
  type metadata accessor for UIPointerShape();
  sub_100004730();
  sub_1000042A8(v25, v26, v27, v28);
  sub_1000043C4();
  v29 = UIPointerStyle.init(effect:shape:)();

  return v29;
}

uint64_t sub_1000AF160(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1000AF1A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000AF1F4()
{
  result = qword_100103048;
  if (!qword_100103048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103048);
  }

  return result;
}

uint64_t sub_1000AF248()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    return v1();
  }

  return result;
}

id sub_1000AF278(uint64_t a1, unsigned __int16 a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100063A64(a3, a4);
  }

  v10 = [v4 initWithPaletteColor:a1 glyphCharacter:a2 customImageData:isa];

  return v10;
}

void sub_1000AF30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10008156C(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  sub_10002E87C(&qword_1001031F8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = sub_10008156C(a3, a4);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v18 = v20;
LABEL_5:
  v22 = *v6;
  if (v19)
  {
    v23 = v22[7] + 16 * v18;
    v24 = *v23;
    *v23 = a1;
    *(v23 + 8) = a2;
  }

  else
  {
    sub_1000AF5FC(v18, a3, a4, a1, a2, v22);
  }
}

void sub_1000AF460()
{
  sub_1000043AC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v27 = v6;
  v8 = v7;
  v9 = type metadata accessor for RootNavigationDestination();
  sub_100004458();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000039BC();
  v15 = v14 - v13;
  v16 = *v0;
  sub_1000815E4(v5);
  sub_100009610();
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = v17;
  v21 = v18;
  sub_10002E87C(&qword_100103270);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v3 & 1, v16))
  {
    goto LABEL_5;
  }

  v22 = sub_1000815E4(v5);
  if ((v21 & 1) != (v23 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v20 = v22;
LABEL_5:
  v24 = *v1;
  if (v21)
  {
    v25 = (v24[7] + 16 * v20);
    *v25 = v8;
    v25[1] = v27;
    sub_100002EEC();
  }

  else
  {
    (*(v11 + 16))(v15, v5, v9);
    sub_1000AF648(v20, v15, v8, v27, v24);
    sub_100002EEC();
  }
}

unint64_t sub_1000AF5FC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1000AF648(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for RootNavigationDestination();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1000AF708@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000AF760()
{

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 72))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000AF7C0()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1000AF8B4(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_1000AF8B4(v6, a2, a3);
  }

  return result;
}

char *sub_1000AF960(void *a1, char *a2, double a3, double a4, double a5, double a6)
{
  v8 = OBJC_IVAR____TtCC9Shortcuts21LibraryViewController35SyncUnavailableCollectionHeaderView_hostingView;
  v9 = *&a2[OBJC_IVAR____TtCC9Shortcuts21LibraryViewController35SyncUnavailableCollectionHeaderView_hostingView];
  if (v9 || (v11 = objc_allocWithZone(sub_10002E87C(&unk_100103250)), v12 = a1, v13 = _UIHostingView.init(rootView:)(), v14 = *&a2[v8], *&a2[v8] = v13, v14, (v9 = *&a2[v8]) != 0))
  {
    v15 = v9;
    isa = [v15 superview];
    if (!isa)
    {
      sub_100003C20(0, "setTranslatesAutoresizingMaskIntoConstraints:");
      [a2 addSubview:v15];
      sub_10002E87C(&qword_1001000E0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1000C13C0;
      v18 = [a2 leadingAnchor];
      v19 = [v15 leadingAnchor];
      v20 = sub_100005D8C();
      v22 = [v20 v21];

      *(v17 + 32) = v22;
      v23 = [a2 topAnchor];
      v24 = [v15 topAnchor];
      v25 = sub_100005D8C();
      v27 = [v25 v26];

      *(v17 + 40) = v27;
      v28 = [a2 trailingAnchor];
      v29 = [v15 trailingAnchor];
      v30 = sub_100005D8C();
      v32 = [v30 v31];

      *(v17 + 48) = v32;
      v33 = [a2 bottomAnchor];
      v34 = [v15 bottomAnchor];
      v35 = sub_100005D8C();
      v37 = [v35 v36];

      *(v17 + 56) = v37;
      sub_100002FC4(0, &qword_1001002C8);
      sub_1000095CC();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [a2 addConstraints:isa];
    }
  }

  return a2;
}

uint64_t sub_1000AFC80(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_100004458();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 24) & ~v5;
  v8 = *(v7 + 64);

  (*(v4 + 8))(v1 + v6, v2);

  return _swift_deallocObject(v1, v6 + v8, v5 | 7);
}

uint64_t sub_1000AFD6C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = a1(0);
  sub_100002EE0(v3);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(v5, v6);
}

void sub_1000AFDE8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v11);
  v12 = *(a6 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_autoShortcut);
  *(a6 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_autoShortcut) = a1;
  v13 = a1;

  v14 = (a6 + OBJC_IVAR____TtC9Shortcuts11LibraryCell_associatedBundleId);
  *v14 = a2;
  v14[1] = a3;

  v15 = a4;
  sub_10002590C(a4);
  v16 = swift_unknownObjectRetain();
  sub_1000268FC(v16, &off_1000F3D80);
  v17 = [v13 id];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000F668(&qword_100100F30, &type metadata accessor for AppEntityVisualState);
  sub_10002E87C(&unk_100103260);
  sub_10000966C(&qword_100100F38, &unk_100103260);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for AppShortcutEntity();
  objc_allocWithZone(type metadata accessor for AppEntityViewAnnotation());
  sub_10000F668(&qword_1001029A0, &type metadata accessor for AppShortcutEntity);
  v18 = AppEntityViewAnnotation.init<A>(entityType:identifier:state:)();
  UIView.annotate(with:)();
  sub_100026B3C();
}

unint64_t sub_1000B0068()
{
  result = qword_1001032A0;
  if (!qword_1001032A0)
  {
    sub_100041CB4(&qword_100103298);
    sub_1000B0120();
    sub_10000966C(&qword_100101088, &unk_1001032C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001032A0);
  }

  return result;
}

unint64_t sub_1000B0120()
{
  result = qword_1001032A8;
  if (!qword_1001032A8)
  {
    sub_100041CB4(&qword_100103290);
    sub_10000F668(&unk_1001032B0, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001032A8);
  }

  return result;
}

id sub_1000B01DC(objc_super *a1, SEL a2)
{

  return objc_msgSendSuper2(a1, a2, v6, v5, v4, v3);
}

id sub_1000B01FC(uint64_t a1)
{
  v6 = *(v4 + 120);

  return [v1 v6];
}

void *sub_1000B0224(void *a1)
{
  v3 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_tip;
  sub_100003FE4();
  sub_10001990C(v1 + v3, &v14);
  if (v15)
  {
    sub_100028B50(&v14, v16);
    v4 = v17;
    v5 = v18;
    v6 = sub_100041C04(v16, v17);
    if (a1)
    {
      v7 = v6;
      sub_1000338A8();
      sub_1000B114C(v7, v4, v5, v8, v9, v10, v11);
    }

    sub_10000DF90(v16);
  }

  else
  {
    sub_1000171D4(&v14, &qword_1001026D8);
    v12 = a1;
  }

  return a1;
}

uint64_t sub_1000B02F0()
{
  v1 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_tipStatusObservation;
  if (*(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_tipStatusObservation))
  {

    Task.cancel()();
  }

  *(v0 + v1) = 0;
}

uint64_t sub_1000B0378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 265) = a5;
  *(v6 + 48) = a4;
  *(v6 + 56) = a6;
  sub_10002E87C(&qword_100103318);
  *(v6 + 64) = swift_task_alloc();
  v7 = type metadata accessor for Tips.Status();
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = sub_10002E87C(&qword_100103320);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = sub_10002E87C(&qword_100103328);
  *(v6 + 120) = swift_task_alloc();
  v8 = sub_10002E87C(&qword_100103330);
  *(v6 + 128) = v8;
  *(v6 + 136) = *(v8 - 8);
  *(v6 + 144) = swift_task_alloc();
  v9 = sub_10002E87C(&qword_100103338);
  *(v6 + 152) = v9;
  *(v6 + 160) = *(v9 - 8);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = type metadata accessor for MainActor();
  *(v6 + 184) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 192) = v11;
  *(v6 + 200) = v10;

  return _swift_task_switch(sub_1000B05F4, v11, v10);
}

uint64_t sub_1000B05F4()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  sub_100041C04(*(v0 + 48), *(*(v0 + 48) + 24));
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_10000966C(&qword_100103340, &qword_100103320);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  v4 = static MainActor.shared.getter();
  *(v0 + 208) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_10000456C(v7, v5);

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000B0778()
{
  v1 = v0[26];
  v0[29] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_10000966C(&qword_100103348, &qword_100103328);
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_1000B087C;
  v3 = v0[8];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_1000B087C()
{
  sub_100005BE4();
  v2 = *v1;
  v3 = *v1;
  sub_100005224();
  *v4 = v3;

  if (v0)
  {
    v5 = *(v2 + 216);
    v6 = *(v2 + 224);
    v7 = sub_1000B0B40;
  }

  else
  {
    (*(v2 + 232))();
    v5 = *(v2 + 216);
    v6 = *(v2 + 224);
    v7 = sub_1000B0998;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000B0998()
{
  v2 = v0[8];
  v1 = v0[9];
  if (sub_10000AB80(v2, 1, v1) == 1)
  {

    sub_1000171D4(v2, &qword_100103318);
    v3 = v0[24];
    v4 = v0[25];

    return _swift_task_switch(sub_1000B0DF4, v3, v4);
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v2, v1);
    v5 = AsyncMapSequence.Iterator.transform.getter();
    v0[31] = v6;
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    v0[32] = v7;
    *v7 = v0;
    v7[1] = sub_1000B0B58;
    v8 = v0[11];

    return (v10)(v0 + 33, v8);
  }
}

uint64_t sub_1000B0B58()
{
  v1 = *v0;
  v2 = *v0;
  sub_100005224();
  *v3 = v2;
  v4 = v1[11];
  v5 = v1[10];
  v6 = v1[9];
  *v3 = *v0;

  (*(v5 + 8))(v4, v6);
  *(v2 + 266) = *(v2 + 264);
  v7 = v1[28];
  v8 = v1[27];

  return _swift_task_switch(sub_1000B0CFC, v8, v7);
}

uint64_t sub_1000B0CFC()
{
  sub_100005BE4();

  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return _swift_task_switch(sub_1000B0D5C, v1, v2);
}

uint64_t sub_1000B0D5C()
{
  sub_100005BE4();
  v1 = *(v0 + 266);
  if (v1 != *(v0 + 265))
  {
    sub_1000B0ECC(v1);
  }

  v2 = static MainActor.shared.getter();
  *(v0 + 208) = v2;
  if (v2)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_10000456C(v2, v3, v4);

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000B0DF4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000B0ECC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  if (a1)
  {
    static WFLog.subscript.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      v14 = &selRef_addObjectObserver_;
      goto LABEL_9;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Tip should display, requests dataSource reload", v13, 2u);
    v14 = &selRef_addObjectObserver_;
  }

  else
  {
    static WFLog.subscript.getter();
    v11 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v11, v15))
    {
      v14 = &selRef_removeObjectObserver_;
      v10 = v8;
      goto LABEL_9;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v11, v15, "Tip should disappear, requests dataSource reload", v16, 2u);
    v14 = &selRef_removeObjectObserver_;
    v10 = v8;
  }

LABEL_9:

  (*(v5 + 8))(v10, v4);
  [*(v2 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_database) *v14];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  onMainThreadInlineOrAsync(closure:)();
}

char *sub_1000B114C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v10 = OBJC_IVAR____TtCC9Shortcuts21LibraryViewController27MiniTipCollectionHeaderView_tipHostingView;
  v11 = *(v7 + OBJC_IVAR____TtCC9Shortcuts21LibraryViewController27MiniTipCollectionHeaderView_tipHostingView);
  if (v11 || (v43[3] = a2, v43[4] = a3, v14 = sub_10002A304(v43), (*(*(a2 - 8) + 16))(v14, a1, a2), v15 = objc_allocWithZone(type metadata accessor for TipUIView()), v16 = TipUIView.init(_:arrowEdge:actionHandler:)(), v17 = *&v42[v10], *&v42[v10] = v16, v17, (v11 = *&v42[v10]) != 0))
  {
    v18 = v11;
    isa = [v18 superview];
    if (!isa)
    {
      [v42 addSubview:v18];
      sub_10002E87C(&qword_1001000E0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000C13C0;
      v21 = [v42 leadingAnchor];
      v22 = [v18 leadingAnchor];
      v23 = sub_100005D8C();
      v25 = [v23 v24];

      *(v20 + 32) = v25;
      v26 = [v42 topAnchor];
      v27 = [v18 topAnchor];
      v28 = sub_100005D8C();
      v30 = [v28 v29];

      *(v20 + 40) = v30;
      v31 = [v42 trailingAnchor];
      v32 = [v18 trailingAnchor];
      v33 = sub_100005D8C();
      v35 = [v33 v34];

      *(v20 + 48) = v35;
      v36 = [v42 bottomAnchor];
      v37 = [v18 bottomAnchor];
      v38 = sub_100005D8C();
      v40 = [v38 v39];

      *(v20 + 56) = v40;
      sub_100002FC4(0, &qword_1001002C8);
      sub_1000095CC();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v42 addConstraints:isa];
    }
  }

  return v42;
}

uint64_t sub_1000B1470()
{
  v1 = v0;
  v2 = type metadata accessor for TipController.UseSiriToRunShortcutTip();
  v3 = __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v3);
  v7 = v13 - v6 + 16;
  v8 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_tip;
  sub_100003FE4();
  sub_10001990C(v1 + v8, v15);
  if (v16)
  {
    sub_10001990C(v15, v14);
    sub_10002E87C(&qword_100103308);
    if (swift_dynamicCast())
    {
      sub_1000B1A4C(v7, v5);
      sub_10004976C();
      v13[3] = v2;
      v13[4] = sub_1000B1AB0(&qword_1001002F0, type metadata accessor for TipController.UseSiriToRunShortcutTip);
      sub_10002A304(v13);
      v9 = sub_1000095CC();
      sub_1000B1A4C(v9, v10);
      swift_beginAccess();
      sub_1000B1AF4(v13, v1 + v8);
      swift_endAccess();
    }

    sub_10000DF90(v14);
  }

  return sub_1000171D4(v15, &qword_1001026D8);
}

void sub_1000B1748()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for LibraryViewController();
    sub_1000B1AB0(&qword_1000FFF70, type metadata accessor for LibraryViewController);
    LibraryView.reload(animated:)(1);
  }
}

void sub_1000B17E8()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = OBJC_IVAR____TtCC9Shortcuts21LibraryViewController27MiniTipCollectionHeaderView_tipHostingView;
  v2 = *&v0[OBJC_IVAR____TtCC9Shortcuts21LibraryViewController27MiniTipCollectionHeaderView_tipHostingView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;
}

id sub_1000B18A0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC9Shortcuts21LibraryViewController27MiniTipCollectionHeaderView_tipHostingView] = 0;
  *&v4[OBJC_IVAR____TtCC9Shortcuts21LibraryViewController27MiniTipCollectionHeaderView_layoutConstraints] = _swiftEmptyArrayStorage;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1000B194C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtCC9Shortcuts21LibraryViewController27MiniTipCollectionHeaderView_tipHostingView] = 0;
  *&v1[OBJC_IVAR____TtCC9Shortcuts21LibraryViewController27MiniTipCollectionHeaderView_layoutConstraints] = _swiftEmptyArrayStorage;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1000B1A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipController.UseSiriToRunShortcutTip();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B1AB0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000095CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B1AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E87C(&qword_1001026D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B1B64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000B1C2C;

  return sub_1000B0378(a1, v4, v5, v1 + 32, v6, v7);
}

uint64_t sub_1000B1C2C()
{
  sub_100005BE4();
  v1 = *v0;
  sub_100005224();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000B1D48(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100109BA8 == -1)
  {
    if (qword_100109BB0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000B7F50();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100109BB0)
    {
      return _availability_version_check();
    }
  }

  if (qword_100109BA0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000B7F68();
    a3 = v10;
    a4 = v9;
    v8 = dword_100109B90 < v11;
    if (dword_100109B90 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100109B94 > a3)
      {
        return 1;
      }

      if (dword_100109B94 >= a3)
      {
        return dword_100109B98 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100109B90 < a2;
  if (dword_100109B90 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000B1EDC(uint64_t result)
{
  v1 = qword_100109BB0;
  if (qword_100109BB0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100109BB0 = &__availability_version_check;
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
                    v27 = result;
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
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
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
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
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
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100109B90, &dword_100109B94, &dword_100109B98);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

void sub_1000B26E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [NSFileAccessIntent readingIntentWithURL:*(a1 + 40) options:0];
  v17 = v5;
  v6 = [NSArray arrayWithObjects:&v17 count:1];
  v7 = +[NSOperationQueue mainQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B28B8;
  v12[3] = &unk_1000F40F8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = v3;
  v11 = v3;
  [v4 coordinateAccessWithIntents:v6 queue:v7 byAccessor:v12];
}

void sub_1000B2844(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v5 = [v3 wf_isUserCancelledError];
    v4 = v6;
    if ((v5 & 1) == 0)
    {
      [*(a1 + 32) showAlertWithError:v6];
      v4 = v6;
    }
  }
}

void sub_1000B28B8(uint64_t a1)
{
  v2 = [WFFileRepresentation fileWithURL:*(a1 + 32) options:0];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B2990;
  v7[3] = &unk_1000F40D0;
  v10 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [v3 openFile:v2 sourceApplication:v4 completionHandler:v7];
}

void sub_1000B2990(uint64_t a1, void *a2)
{
  v5 = a2;
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) stopAccessingSecurityScopedResource];
  v3 = v5;
  if (v5)
  {
    v4 = [v5 wf_isUserCancelledError];
    v3 = v5;
    if ((v4 & 1) == 0)
    {
      [*(a1 + 40) showAlertWithError:v5];
      v3 = v5;
    }
  }
}

void sub_1000B2C74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B2D4C;
  v11[3] = &unk_1000F4080;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(&_dispatch_main_q, v11);
}

void sub_1000B2D4C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) rootViewController];
    v3 = *(a1 + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000B2E38;
    v5[3] = &unk_1000F4058;
    v6 = *(a1 + 56);
    [v2 importShortcutFileWithResult:v3 options:1 completion:v5];
  }

  else if (*(a1 + 48))
  {
    v4 = *(a1 + 40);

    [v4 showAlertWithError:?];
  }
}

void sub_1000B33B8(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    v6 = a2;
    v7 = [v4 rootViewController];
    [v7 runWorkflowFromState:v6 source:v5];
  }
}

void sub_1000B343C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 statusBarManager];

  [v4 setPreferredStatusBarStyle:{objc_msgSend(v8, "statusBarStyle")}];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000B370C;
  v25 = sub_1000B371C;
  v26 = objc_alloc_init(UIWindow);
  [v22[5] setWindowLevel:UIWindowLevelAlert];
  [v22[5] makeKeyAndVisible];
  [v22[5] setRootViewController:v4];
  v9 = +[WFActionRegistry sharedRegistry];
  v10 = [v3 actionIdentifier];
  v11 = [v3 serializedParameters];
  v12 = [v9 createActionWithIdentifier:v10 serializedParameters:v11];
  v13 = qword_100109BB8;
  qword_100109BB8 = v12;

  [qword_100109BB8 willBeAddedToWorkflow:0];
  [qword_100109BB8 wasAddedToWorkflow:0];
  v14 = qword_100109BB8;
  v15 = [v3 processedParameters];
  [v14 setProcessedParameters:v15];

  v16 = qword_100109BB8;
  v17 = [v3 input];
  v18 = WFUserInterfaceFromViewController();
  v19 = &_dispatch_main_q;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000B3724;
  v20[3] = &unk_1000F4008;
  v20[4] = *(a1 + 40);
  v20[5] = &v21;
  [v16 runWithInput:v17 userInterface:v18 runningDelegate:0 variableSource:0 workQueue:&_dispatch_main_q completionHandler:v20];

  _Block_object_dispose(&v21, 8);
}

void sub_1000B36F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B370C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000B3724(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && ([v5 wf_isUserCancelledError] & 1) == 0)
  {
    [*(a1 + 32) showAlertWithError:v6];
  }

  [*(*(*(a1 + 40) + 8) + 40) setHidden:1];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = qword_100109BB8;
  qword_100109BB8 = 0;
}

void sub_1000B3B14(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingShortcutItem];
  if (v2 || ([*(a1 + 32) pendingOpenURLContexts], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
LABEL_4:

    goto LABEL_5;
  }

  v16 = [*(a1 + 32) pendingUserActivity];

  if (!v16)
  {
    v3 = [*(a1 + 32) window];
    v17 = [v3 rootViewController];
    v18 = WFUserInterfaceFromViewController();
    WFPresentResumeSyncConfirmationAlertWithUserInterfaceIfNeeded();

    goto LABEL_4;
  }

LABEL_5:
  v4 = [*(a1 + 32) pendingShortcutItem];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v5 pendingShortcutItem];
    [v5 handleShortcutItem:v6];

    [*(a1 + 32) setPendingShortcutItem:0];
  }

  v7 = [*(a1 + 32) pendingOpenURLContexts];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [v8 pendingOpenURLContexts];
    [v8 scene:v9 openURLContexts:v10];

    [*(a1 + 32) setPendingOpenURLContexts:0];
  }

  v11 = [*(a1 + 32) pendingUserActivity];

  if (v11)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = [v12 pendingUserActivity];
    [v12 scene:v13 continueUserActivity:v14];

    v15 = *(a1 + 32);

    [v15 setPendingUserActivity:0];
  }
}

void sub_1000B4600(id a1)
{
  v1 = [NSSet setWithObjects:@"com.apple.shortcuts", @"com.apple.WorkflowUI", @"com.apple.WorkflowEditor", 0];
  v2 = qword_100109BC0;
  qword_100109BC0 = v1;
}

id sub_1000B4668()
{
  if (qword_100109BD8 != -1)
  {
    dispatch_once(&qword_100109BD8, &stru_1000F4160);
  }

  v1 = qword_100109BD0;

  return v1;
}

void sub_1000B46BC(id a1)
{
  v1 = [NSHashTable hashTableWithOptions:517];
  v2 = qword_100109BD0;
  qword_100109BD0 = v1;
}

void sub_1000B4700(void *a1)
{
  v8 = a1;
  Class = object_getClass(v8);
  Name = class_getName(Class);
  if (!strncmp(Name, "NSKVONotifying_", 0xFuLL))
  {
    Class = class_getSuperclass(Class);
  }

  v3 = [NSBundle bundleForClass:Class];
  if (qword_100109BC8 != -1)
  {
    dispatch_once(&qword_100109BC8, &stru_1000F4140);
  }

  v4 = qword_100109BC0;
  v5 = [v3 bundleIdentifier];
  v6 = [v4 containsObject:v5];

  if (v6 && ((objc_opt_respondsToSelector() & 1) == 0 || ([v8 plumber_leakDetectionDisabled] & 1) == 0))
  {
    v7 = sub_1000B4668();
    [v7 addObject:v8];
  }
}

void sub_1000B482C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v4 addObject:v3];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v3 subviews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        sub_1000B482C(*(*(&v10 + 1) + 8 * v9), v4);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void sub_1000B494C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v4 addObject:v3];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 childViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        sub_1000B494C(*(*(&v13 + 1) + 8 * v9), v4);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [v3 presentedViewController];

  if (v10)
  {
    v11 = [v3 presentedViewController];
    sub_1000B494C(v11, v4);
  }

  v12 = [v3 viewIfLoaded];
  if (v12 && ([v4 containsObject:v12] & 1) == 0)
  {
    sub_1000B482C(v12, v4);
  }
}

void sub_1000B4AD4()
{
  v29 = sub_1000B4668();
  v0 = [NSHashTable hashTableWithOptions:512];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v1 = +[UIApplication sharedApplication];
  v2 = [v1 connectedScenes];

  obj = v2;
  v3 = [v2 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v41;
    do
    {
      v6 = 0;
      v30 = v4;
      do
      {
        if (*v41 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v40 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v8 = [v7 windows];
          v9 = [v8 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v37;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v37 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v36 + 1) + 8 * i);
                v14 = [v13 rootViewController];

                if (v14)
                {
                  v15 = [v13 rootViewController];
                  sub_1000B494C(v15, v0);
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v10);
          }

          v4 = v30;
        }

        v6 = v6 + 1;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v4);
  }

  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = [v29 allObjects];
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (!v17)
  {
    v19 = v16;
    goto LABEL_36;
  }

  v18 = v17;
  v19 = 0;
  v20 = *v33;
  do
  {
    for (j = 0; j != v18; j = j + 1)
    {
      if (*v33 != v20)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v32 + 1) + 8 * j);
      if (([v0 containsObject:v22] & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v22, "_isHiddenForReuse"))
      {
      }

      else
      {

        if (!v19)
        {
          v19 = objc_opt_new();
        }

        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = [NSString stringWithFormat:@"<%@: %p>", v24, v22];
        [v19 addObject:v25];

        [v29 removeObject:v22];
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v32 objects:v44 count:16];
  }

  while (v18);

  if (v19)
  {
    v26 = [v19 componentsJoinedByString:@"\n"];
    v27 = [NSString stringWithFormat:@"The following objects are no longer a part of the view hierarchy but are still in memory:\n%@", v26];

    CFUserNotificationDisplayAlert(0.0, 1uLL, 0, 0, 0, @"Shortcuts: Leaked Object", v27, @"OK", 0, 0, 0);
LABEL_36:
  }

  if (sub_100002DA4())
  {
    v28 = dispatch_time(0, 5000000000);
    dispatch_after(v28, &_dispatch_main_q, &stru_1000F4180);
  }
}

id sub_1000B4F04(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 32))(a2, "initWithNibName:bundle:");
  v3 = v2;
  if (v2)
  {
    sub_1000B4700(v2);
  }

  return v3;
}

id sub_1000B4F60(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 32))(a2, "initWithFrame:");
  v3 = v2;
  if (v2)
  {
    sub_1000B4700(v2);
  }

  return v3;
}

void sub_1000B575C(uint64_t a1, void *a2)
{
  v3 = WFHandoffSourceKey;
  v4 = a2;
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  v7 = WFWorkflowRunSourceHandoff;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v4 objectForKey:WFHandoffWorkflowControllerStateKey];

  (*(*(a1 + 32) + 16))();
}

void sub_1000B61AC(uint64_t a1, void *a2)
{
  v3 = [a2 parameters];
  v4 = [v3 objectForKey:@"type"];
  v5 = [v3 objectForKey:@"webpageURL"];
  v6 = [v3 objectForKey:@"userInfoURL"];
  v7 = [NSURL URLWithString:v6];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B62F4;
  v12[3] = &unk_1000F41E8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v5;
  v15 = v9;
  v13 = v4;
  v10 = v5;
  v11 = v4;
  [v8 deserializeUserInfoAtURL:v7 completionHandler:v12];
}

void sub_1000B6A64(id a1, NSDictionary *a2, NSError *a3)
{
  v3 = a3;
  v4 = getWFGeneralLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[WFAppDelegate application:willFinishLaunchingWithOptions:]_block_invoke_2";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Finished updating remote user defaults with error: %{public}@", &v5, 0x16u);
  }
}

void sub_1000B6B24(id a1, NSString *a2, NSURL *a3, NSDictionary *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v12 = +[WFWindowSceneManager mainScene];
  v9 = [v12 delegate];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 scene:v12 handleUserActivityWithType:v8 webpageURL:v7 userInfo:v6 interaction:0];
}

id sub_1000B6C14(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = sub_100005E9C();
  v6 = [v5 localizedStringForKey:v4 value:v3 table:0];

  return v6;
}

void sub_1000B6D94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 inputStream];
    [v7 open];
    v18 = 0;
    v8 = [NSPropertyListSerialization propertyListWithStream:v7 options:0 format:0 error:&v18];
    v9 = v18;
    v10 = objc_opt_class();
    v11 = v8;
    if (v11 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = getWFGeneralLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14 = objc_opt_class();
        *buf = 136315906;
        v20 = "WFEnforceClass";
        v21 = 2114;
        v22 = v11;
        v23 = 2114;
        v24 = v14;
        v25 = 2114;
        v26 = v10;
        v15 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    [v7 close];
    if (v12)
    {
      [*(a1 + 32) setValuesForKeysWithDictionary:v12];
    }
  }

  else
  {
    v9 = 0;
    v12 = 0;
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    if (v6)
    {
      v17 = v6;
    }

    else
    {
      v17 = v9;
    }

    (*(v16 + 16))(v16, v12, v17);
  }
}

uint64_t _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)()
{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t _ConditionalContent<>.init(storage:)()
{
  return _ConditionalContent<>.init(storage:)();
}

{
  return _ConditionalContent<>.init(storage:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t Color.init(_:)()
{
  return Color.init(_:)();
}

{
  return Color.init(_:)();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}