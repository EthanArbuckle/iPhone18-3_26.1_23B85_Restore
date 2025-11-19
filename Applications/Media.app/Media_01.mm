void sub_100018D8C(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for RadioStationListViewController();
  objc_msgSendSuper2(&v6, "viewDidAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource];
  if (v3)
  {
    if (*(*&v3[qword_1000EE3E8] + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation))
    {
      v4 = v3;

      sub_100026200(v5);
    }
  }
}

void sub_100018EE0(int a1)
{
  v23 = a1;
  v1 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for UICollectionLayoutListConfiguration();
  v24 = swift_allocBox();
  (*(v12 + 104))(v15, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v11);
  UICollectionLayoutListConfiguration.init(appearance:)();
  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  v16 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:);
  if ((v23 & 1) == 0)
  {
    v16 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
  }

  (*(v7 + 104))(v10, *v16, v6);
  UICollectionLayoutListConfiguration.headerMode.setter();
  (*(v2 + 104))(v5, enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:), v1);
  UICollectionLayoutListConfiguration.footerMode.setter();
  v17 = [objc_opt_self() clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  swift_allocObject();
  v18 = v25;
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  v19 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_10001AC88;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001AA4C;
  aBlock[3] = &unk_1000E0210;
  v20 = _Block_copy(aBlock);

  v21 = [v19 initWithSectionProvider:v20];
  _Block_release(v20);

  [*(v18 + OBJC_IVAR____TtC5Media30RadioStationListViewController_collectionView) setCollectionViewLayout:v21 animated:0];
}

uint64_t sub_10001928C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = a1;
  v2 = type metadata accessor for IndexPath();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  __chkstk_darwin(v2);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UIListSeparatorConfiguration();
  v17 = *(v35 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v35);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v12);
  UIListSeparatorConfiguration.init(listAppearance:)();
  v21 = [objc_opt_self() separatorColor];
  UIListSeparatorConfiguration.color.setter();
  v22 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
  v23 = *(v6 + 104);
  v23(v11, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v5);
  UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v17 + 32))(v36, v20, v35);
  }

  v25 = Strong;
  if (sub_100019688(v37, Strong))
  {
    goto LABEL_7;
  }

  v26 = *&v25[OBJC_IVAR____TtC5Media30RadioStationListViewController_collectionView];
  v27 = [v26 numberOfItemsInSection:IndexPath.section.getter()];

  if (IndexPath.item.getter() >= v27)
  {
LABEL_6:
    v22 = enum case for UIListSeparatorConfiguration.Visibility.automatic(_:);
    goto LABEL_7;
  }

  result = IndexPath.item.getter();
  if (!__OFADD__(result, 1))
  {
    IndexPath.section.getter();
    v29 = v31;
    IndexPath.init(item:section:)();
    v30 = sub_100019688(v29, v25);
    (*(v32 + 8))(v29, v33);
    if ((v30 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_7:
    v23(v34, v22, v5);
    UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();

    return (*(v17 + 32))(v36, v20, v35);
  }

  __break(1u);
  return result;
}

uint64_t sub_100019688(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC5Media30RadioStationListViewController_collectionView);
  v5 = [v4 indexPathsForSelectedItems];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for IndexPath();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v6) = sub_100021FDC(a1, v7);

    if (v6)
    {
      return 1;
    }
  }

  v8 = *(a2 + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource);
  if (v8)
  {
    v9 = *&v8[qword_1000EE3E8];
    v10 = v8;

    v11 = sub_1000250A4();

    if (v11)
    {
      return 1;
    }
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [v4 cellForItemAtIndexPath:isa];

  if (v13 && (v14 = [v13 isFocused], v13, (v14 & 1) != 0))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void *sub_1000197C4()
{
  v0 = type metadata accessor for UICollectionLayoutListConfiguration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_projectBox();
  sub_100005A50(0, &unk_1000EBD90, NSCollectionLayoutSection_ptr);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  (*(v1 + 8))(v4, v0);
  [v6 contentInsets];
  [v6 setContentInsets:0.0];
  [v6 setInterGroupSpacing:0.0];
  return v6;
}

void sub_100019940()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v3 = Strong;

  if (!v2)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v9)
  {
    goto LABEL_8;
  }

  if ([v9 mediaSourceSemanticType] == 3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource);
    if (v4)
    {
      v5 = *&v4[qword_1000EE3E8];
      if (*(v5 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8))
      {
        goto LABEL_7;
      }

      if (*(v5 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) == 5)
      {
        *(v5 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) = 4;
        v8 = v4;

        sub_1000220D4();

        goto LABEL_10;
      }
    }

    return;
  }

LABEL_7:

LABEL_8:
  v6 = *(v0 + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource);
  if (!v6)
  {
    return;
  }

  *(*&v6[qword_1000EE3E8] + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) = 5;
  v7 = v6;

  sub_1000220D4();

LABEL_10:
}

void sub_100019AEC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v3 = Strong;

  if (!v2)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v14 != 1)
  {
    goto LABEL_8;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *(v4 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v6 = v4;

  if (!v5)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v13 == 1)
  {
    v7 = [objc_opt_self() nowPlayingBarButtonWithTarget:v0 action:"nowPlayingTapped"];
    v8 = String._bridgeToObjectiveC()();
    [v7 setAccessibilityIdentifier:v8];

    v9 = [v0 navigationItem];
    sub_10000368C(&unk_1000EC820, &qword_1000B5090);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000B4FC0;
    *(v10 + 32) = v7;
    sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
    v11 = v7;
    v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 setRightBarButtonItems:v12.super.isa];
  }

  else
  {
LABEL_8:
    v9 = [v0 navigationItem];
    sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
    v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
    [v9 setRightBarButtonItems:v12.super.isa];
  }
}

uint64_t sub_100019EF0(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  LOBYTE(a1) = sub_10001AD94();

  (*(v6 + 8))(v9, v5);
  return a1 & 1;
}

void sub_100019FF0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = OBJC_IVAR____TtC5Media30RadioStationListViewController_carManager;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *&v2[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource];
    if (v12)
    {
      v13 = qword_1000EE3E8;
      v14 = *&v12[qword_1000EE3E8];
      if (*(v14 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) - 1 <= 1 && !*(v14 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8))
      {
        v45 = Strong;
        v46 = v12;
        v47 = IndexPath.section.getter();
        v48 = *&v12[v13];

        v49 = sub_100025278(v47);
        v51 = v50;

        objc_allocWithZone(type metadata accessor for RadioStationListViewController());
        v57 = v45;
        v52 = sub_10001AAC8(v57, v49, v51);

        v53 = [v3 navigationController];
        if (v53)
        {
          v54 = v53;
          [v53 pushViewController:v52 animated:1];
        }

        v55 = v57;

        return;
      }
    }
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  v16 = OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource;
  v17 = *&v3[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource];
  if (v17)
  {
    v18 = *(*(v17 + qword_1000EE3E8) + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy);
    if (v18 != 5 && !IndexPath.section.getter())
    {
      v37 = sub_10001A530(v18, &off_1000DF318);
      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v37;
      }

      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        __break(1u);
      }

      else
      {
        if (v41 >= 5)
        {
          v42 = 0;
        }

        else
        {
          v42 = v41;
        }

        v43 = *&v3[v16];
        if (!v43)
        {
          return;
        }

        if ((v42 & 0x8000000000000000) == 0)
        {
          *(*&v43[qword_1000EE3E8] + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) = *(&off_1000DF340 + v42 + 32);
          v44 = v43;

          sub_1000220D4();

          goto LABEL_35;
        }
      }

      __break(1u);
      return;
    }
  }

  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006928(v19, qword_1000F3B70);
  (*(v7 + 16))(v10, a2, v6);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    v23 = IndexPath.row.getter();
    (*(v7 + 8))(v10, v6);
    *(v22 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v20, v21, "RadioStation: processing selection on row %ld", v22, 0xCu);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }

  v24 = *&v3[v16];
  if (v24)
  {
    v25 = *&v24[qword_1000EE3E8];
    v26 = v24;

    v27 = sub_1000250A4();

    if (v27)
    {
      v28 = swift_unknownObjectWeakLoadStrong();
      if (v28)
      {
        v29 = v28;
        sub_100010040();
      }

      return;
    }

    v30 = *&v3[v16];
    if (v30)
    {
      v31 = *&v30[qword_1000EE3E8];

      v32 = v30;
      v33 = sub_100024F70();

      if (v33)
      {
        v34 = swift_unknownObjectWeakLoadStrong();
        if (v34)
        {
          v35 = v34;
          v36 = [*(v34 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

          if (v36)
          {
            sub_100081374(v33);
          }
        }

LABEL_35:
      }
    }
  }
}

uint64_t sub_10001A530(unsigned __int8 a1, uint64_t a2)
{
  v15 = *(a2 + 16);
  v2 = 0;
  if (v15)
  {
    v16 = a2 + 32;
    v3 = 0xE600000000000000;
    v4 = a1;
    while (1)
    {
      v5 = *(v16 + v2);
      if (v5 <= 1)
      {
        if (*(v16 + v2))
        {
          v6 = 0x7374726F7053;
        }

        else
        {
          v6 = 0x636973754DLL;
        }

        if (*(v16 + v2))
        {
          v7 = 0xE600000000000000;
        }

        else
        {
          v7 = 0xE500000000000000;
        }
      }

      else if (v5 == 2)
      {
        v7 = 0xE400000000000000;
        v6 = 1802264916;
      }

      else
      {
        if (v5 == 3)
        {
          v6 = 1937204558;
        }

        else
        {
          v6 = 0x726568744FLL;
        }

        if (v5 == 3)
        {
          v7 = 0xE400000000000000;
        }

        else
        {
          v7 = 0xE500000000000000;
        }
      }

      if (v4 == 3)
      {
        v8 = 1937204558;
      }

      else
      {
        v8 = 0x726568744FLL;
      }

      if (v4 == 3)
      {
        v9 = 0xE400000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      if (v4 == 2)
      {
        v8 = 1802264916;
        v9 = 0xE400000000000000;
      }

      if (v4)
      {
        v10 = 0x7374726F7053;
      }

      else
      {
        v10 = 0x636973754DLL;
      }

      if (!v4)
      {
        v3 = 0xE500000000000000;
      }

      v11 = v4 <= 1 ? v10 : v8;
      v12 = v4 <= 1 ? v3 : v9;
      if (v6 == v11 && v7 == v12)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        return v2;
      }

      ++v2;
      v3 = 0xE600000000000000;
      if (v15 == v2)
      {
        return 0;
      }
    }
  }

  return v2;
}

unint64_t sub_10001A6C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

void sub_10001A8B8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource];
  if (v1)
  {
    v2 = *&v1[qword_1000EE3E8];
    v4 = a1;
    v3 = v1;

    sub_10002539C();
  }
}

id sub_10001A974()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadioStationListViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10001AA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = v6(a2, a3);

  swift_unknownObjectRelease();

  return v7;
}

id sub_10001AAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource] = 0;
  swift_unknownObjectWeakInit();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC5Media30RadioStationListViewController_cancelSet] = v6;
  v7 = &v3[OBJC_IVAR____TtC5Media30RadioStationListViewController_defaultSectionInsets];
  *v7 = xmmword_1000B4FD0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  v3[OBJC_IVAR____TtC5Media30RadioStationListViewController_groupingStrategy] = 3;
  swift_unknownObjectWeakAssign();
  v8 = &v3[OBJC_IVAR____TtC5Media30RadioStationListViewController_initialActiveCategory];
  *v8 = a2;
  v8[1] = a3;
  v9 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  v10 = [objc_allocWithZone(UICollectionView) initWithFrame:v9 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v3[OBJC_IVAR____TtC5Media30RadioStationListViewController_collectionView] = v10;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for RadioStationListViewController();
  return objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_10001AC48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AC90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10001ACA8()
{
  *(v0 + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource) = 0;
  swift_unknownObjectWeakInit();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC5Media30RadioStationListViewController_cancelSet) = v1;
  v2 = v0 + OBJC_IVAR____TtC5Media30RadioStationListViewController_defaultSectionInsets;
  *v2 = xmmword_1000B4FD0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v0 + OBJC_IVAR____TtC5Media30RadioStationListViewController_groupingStrategy) = 3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10001AD94()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource);
  if (!v1)
  {
    return 1;
  }

  if (*(*(v1 + qword_1000EE3E8) + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) == 5)
  {
    return 1;
  }

  result = IndexPath.section.getter();
  if (result)
  {
    return 1;
  }

  return result;
}

unint64_t sub_10001ADF4()
{
  result = qword_1000ED0D0;
  if (!qword_1000ED0D0)
  {
    sub_100005A50(255, &unk_1000ED0C0, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED0D0);
  }

  return result;
}

uint64_t sub_10001AE78()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AF14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000077CC(v2, &v17 - v11, &qword_1000EB118, &qword_1000B3FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10001B114@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v146 = a1;
  v130 = type metadata accessor for ColorScheme();
  v129 = *(v130 - 8);
  v3 = *(v129 + 64);
  v4 = __chkstk_darwin(v130);
  v125 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v124 = &v107 - v6;
  v128 = type metadata accessor for BlendMode();
  v127 = *(v128 - 8);
  v7 = *(v127 + 64);
  __chkstk_darwin(v128);
  v123 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_10000368C(&qword_1000EBFF8, &qword_1000B53E0);
  v9 = *(*(v121 - 8) + 64);
  v10 = __chkstk_darwin(v121);
  v120 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v114 = &v107 - v12;
  v13 = type metadata accessor for DynamicTypeSize();
  v137 = *(v13 - 8);
  v138 = v13;
  v14 = v137[8];
  v15 = __chkstk_darwin(v13);
  v136 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v135 = &v107 - v17;
  v118 = sub_10000368C(&qword_1000EC000, &qword_1000B53E8);
  v18 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v139 = &v107 - v19;
  v117 = sub_10000368C(&qword_1000EC008, &qword_1000B53F0);
  v115 = *(v117 - 8);
  v20 = *(v115 + 64);
  __chkstk_darwin(v117);
  v140 = &v107 - v21;
  v113 = sub_10000368C(&qword_1000EC010, &qword_1000B53F8);
  v112 = *(v113 - 8);
  v22 = *(v112 + 64);
  __chkstk_darwin(v113);
  v111 = &v107 - v23;
  v110 = sub_10000368C(&qword_1000EC018, &qword_1000B5400);
  v24 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v109 = &v107 - v25;
  v108 = sub_10000368C(&qword_1000EC020, &qword_1000B5408);
  v26 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v119 = &v107 - v27;
  v144 = sub_10000368C(&qword_1000EC028, &qword_1000B5410);
  v28 = *(*(v144 - 8) + 64);
  v29 = __chkstk_darwin(v144);
  v116 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v122 = &v107 - v31;
  v142 = sub_10000368C(&qword_1000EC030, &qword_1000B5418);
  v32 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v143 = &v107 - v33;
  v34 = sub_10000368C(&qword_1000EC038, &qword_1000B5420);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34);
  v134 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v107 - v38;
  v141 = sub_10000368C(&qword_1000EC040, &qword_1000B5428);
  v40 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v42 = &v107 - v41;
  v43 = *(type metadata accessor for NowPlayingTitleView.ArtistAlbumStyle(0) + 20);
  v126 = v2;
  v44 = (v2 + v43);
  v46 = *v44;
  v45 = v44[1];
  v133 = v46;
  *&v148 = v46;
  *(&v148 + 1) = v45;
  v132 = v45;
  v131 = sub_10000368C(&qword_1000EC048, &qword_1000B5430);
  State.wrappedValue.getter();
  v47 = v147;
  swift_getKeyPath();
  *&v148 = v47;
  sub_1000219C8(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = *(v47 + 17);

  if (v48 <= 2 && v48)
  {
    v49 = v48 == 1 ? 0x4D646E417370616DLL : 0xD000000000000010;
    v50 = v48 == 1 ? 0xEC00000061696465 : 0x80000001000BAEF0;
    if (v49 == 0xD000000000000010 && 0x80000001000BAEF0 == v50)
    {
      goto LABEL_13;
    }
  }

  v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v51)
  {
    goto LABEL_15;
  }

  if (v48 <= 2)
  {
    if (v48)
    {
      v66 = v48 == 1 ? 0x4D646E417370616DLL : 0xD000000000000010;
      v67 = v48 == 1 ? 0xEC00000061696465 : 0x80000001000BAEF0;
    }

    else
    {
      v67 = 0xE400000000000000;
      v66 = 1701736302;
    }
  }

  else if (v48 > 4)
  {
    if (v48 == 5)
    {
      v66 = 0x756964654D616364;
      v67 = 0xE90000000000006DLL;
    }

    else
    {
      v67 = 0xE700000000000000;
      v66 = 0x6C6C6154616364;
    }
  }

  else
  {
    v66 = 0x6D696E694D616364;
    v67 = v48 == 3 ? 0xEA00000000006C61 : 0xEE00656469576C61;
  }

  if (v66 == 0x4D646E417370616DLL && v67 == 0xEC00000061696465)
  {
LABEL_13:

LABEL_15:
    v52 = static Font.body.getter();
    KeyPath = swift_getKeyPath();
    v54 = sub_10000368C(&qword_1000EC050, &unk_1000B5468);
    (*(*(v54 - 8) + 16))(v39, v146, v54);
    v55 = &v39[*(v34 + 36)];
    *v55 = KeyPath;
    v55[1] = v52;
    static Font.Weight.regular.getter();
    sub_100021308();
    View.fontWeight(_:)();
    sub_100007834(v39, &qword_1000EC038, &qword_1000B5420);
    LODWORD(v52) = static HierarchicalShapeStyle.secondary.getter();
    *&v42[*(sub_10000368C(&qword_1000EC068, &qword_1000B5478) + 36)] = v52;
    v56 = swift_getKeyPath();
    v57 = &v42[*(sub_10000368C(&qword_1000EC070, &qword_1000B54B0) + 36)];
    *v57 = v56;
    *(v57 + 1) = 1;
    v57[16] = 0;
    v58 = swift_getKeyPath();
    v59 = &v42[*(sub_10000368C(&qword_1000EC078, &qword_1000B54E8) + 36)];
    *v59 = v58;
    v59[8] = 1;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v60 = &v42[*(v141 + 36)];
    v61 = v149;
    *v60 = v148;
    *(v60 + 1) = v61;
    *(v60 + 2) = v150;
    v62 = &qword_1000EC040;
    v63 = &qword_1000B5428;
    sub_1000077CC(v42, v143, &qword_1000EC040, &qword_1000B5428);
    swift_storeEnumTagMultiPayload();
    sub_1000213FC();
    sub_1000216EC();
    _ConditionalContent<>.init(storage:)();
    v64 = v42;
    return sub_100007834(v64, v62, v63);
  }

  v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v68)
  {
    goto LABEL_15;
  }

  *&v148 = v133;
  *(&v148 + 1) = v132;
  State.wrappedValue.getter();
  v69 = v147;
  swift_getKeyPath();
  *&v148 = v69;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v70 = *(v69 + 16);

  if (v70 == 1)
  {
    v71 = static Font.caption.getter();
  }

  else
  {
    v71 = static Font.body.getter();
  }

  v72 = v71;
  v73 = v137;
  v74 = v138;
  v75 = v135;
  v76 = swift_getKeyPath();
  v77 = sub_10000368C(&qword_1000EC050, &unk_1000B5468);
  v78 = v134;
  (*(*(v77 - 8) + 16))(v134, v146, v77);
  v79 = (v78 + *(v34 + 36));
  *v79 = v76;
  v79[1] = v72;
  static Font.Weight.regular.getter();
  v146 = sub_100021308();
  View.fontWeight(_:)();
  sub_100007834(v78, &qword_1000EC038, &qword_1000B5420);
  v80 = v73[13];
  v80(v75, enum case for DynamicTypeSize.large(_:), v74);
  v81 = v136;
  v80(v136, enum case for DynamicTypeSize.xLarge(_:), v74);
  sub_1000219C8(&qword_1000EC0F0, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v82 = v73[4];
    v83 = v114;
    v82(v114, v75, v74);
    v84 = v121;
    v82((v83 + *(v121 + 48)), v81, v74);
    v85 = v120;
    sub_1000077CC(v83, v120, &qword_1000EBFF8, &qword_1000B53E0);
    v138 = *(v84 + 48);
    v86 = v139;
    v82(v139, v85, v74);
    v87 = v73[1];
    v87(v85 + v138, v74);
    sub_10001721C(v83, v85, &qword_1000EBFF8, &qword_1000B53E0);
    v82(&v86[*(v118 + 36)], (v85 + *(v84 + 48)), v74);
    v87(v85, v74);
    *&v148 = v34;
    *(&v148 + 1) = v146;
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EC0E8, &qword_1000EC000, &qword_1000B53E8);
    v88 = v111;
    v90 = v139;
    v89 = v140;
    v91 = v117;
    View.dynamicTypeSize<A>(_:)();
    sub_100007834(v90, &qword_1000EC000, &qword_1000B53E8);
    (*(v115 + 8))(v89, v91);
    LODWORD(v86) = static HierarchicalShapeStyle.secondary.getter();
    v92 = v109;
    (*(v112 + 32))(v109, v88, v113);
    *(v92 + *(v110 + 36)) = v86;
    v93 = swift_getKeyPath();
    v94 = v119;
    sub_10001721C(v92, v119, &qword_1000EC018, &qword_1000B5400);
    v95 = v94 + *(v108 + 36);
    *v95 = v93;
    *(v95 + 8) = 1;
    *(v95 + 16) = 0;
    v96 = v124;
    sub_10001AF14(v124);
    v97 = v129;
    v98 = v125;
    v99 = v130;
    (*(v129 + 104))(v125, enum case for ColorScheme.dark(_:), v130);
    LOBYTE(v93) = static ColorScheme.== infix(_:_:)();
    v100 = *(v97 + 8);
    v100(v98, v99);
    v100(v96, v99);
    v101 = v127;
    v102 = &enum case for BlendMode.plusLighter(_:);
    if ((v93 & 1) == 0)
    {
      v102 = &enum case for BlendMode.plusDarker(_:);
    }

    v103 = v123;
    v104 = v128;
    (*(v127 + 104))(v123, *v102, v128);
    v105 = v116;
    (*(v101 + 32))(&v116[*(v144 + 36)], v103, v104);
    sub_10001721C(v94, v105, &qword_1000EC020, &qword_1000B5408);
    v62 = &qword_1000EC028;
    v63 = &qword_1000B5410;
    v106 = v122;
    sub_10001721C(v105, v122, &qword_1000EC028, &qword_1000B5410);
    sub_1000077CC(v106, v143, &qword_1000EC028, &qword_1000B5410);
    swift_storeEnumTagMultiPayload();
    sub_1000213FC();
    sub_1000216EC();
    _ConditionalContent<>.init(storage:)();
    v64 = v106;
    return sub_100007834(v64, v62, v63);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001C4B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v131 = a3;
  v5 = sub_10000368C(&qword_1000EBF00, &qword_1000B5208);
  v129 = *(v5 - 8);
  v130 = v5;
  v6 = *(v129 + 64);
  __chkstk_darwin(v5);
  v122 = &v114 - v7;
  v123 = sub_10000368C(&qword_1000EBF08, &qword_1000B5210);
  v125 = *(v123 - 8);
  v8 = *(v125 + 64);
  v9 = __chkstk_darwin(v123);
  v117 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v118 = &v114 - v11;
  v12 = sub_10000368C(&qword_1000EBF10, &qword_1000B5218);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v121 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v120 = &v114 - v17;
  v18 = __chkstk_darwin(v16);
  v119 = &v114 - v19;
  __chkstk_darwin(v18);
  v124 = &v114 - v20;
  v21 = sub_10000368C(&qword_1000EBF18, &qword_1000B5220);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v128 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v127 = &v114 - v25;
  v26 = sub_10000368C(&qword_1000EBF20, &qword_1000B5228);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26);
  v126 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v114 - v30;
  v32 = type metadata accessor for EnvironmentValues();
  v132 = *(v32 - 8);
  v133 = v32;
  v33 = *(v132 + 64);
  __chkstk_darwin(v32);
  v35 = &v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);

  v36 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v132 + 8))(v35, v133);
    v36 = v135;
  }

  swift_getKeyPath();
  v135 = v36;
  sub_1000219C8(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = *(v36 + 17);

  if (v38 == 3)
  {
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v39 & 1) == 0)
    {
      v43 = 1;
      goto LABEL_10;
    }
  }

  v40 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v132 + 8))(v35, v133);
    v40 = v135;
  }

  swift_getKeyPath();
  v135 = v40;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(v40 + 41);

  v43 = v42 ^ 1;
LABEL_10:
  KeyPath = swift_getKeyPath();
  v45 = swift_allocObject();
  *(v45 + 16) = a1;
  *(v45 + 24) = a2 & 1;
  v46 = &v31[*(v26 + 36)];
  v47 = *(type metadata accessor for _TaskModifier() + 20);

  static TaskPriority.userInitiated.getter();
  *v46 = &unk_1000B5288;
  *(v46 + 1) = v45;
  *v31 = KeyPath;
  v31[8] = 0;
  if (v43)
  {

    if ((a2 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v48 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v132 + 8))(v35, v133);
    }

    v49 = sub_10000ABB4();
    v51 = v50;

    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {

      if ((a2 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v53 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v132 + 8))(v35, v133);
      }

      v54 = sub_10000ABB4();
      v56 = v55;

      v135 = v54;
      v136 = v56;
      sub_100020F58();
      v115 = Text.init<A>(_:)();
      v58 = v57;
      v60 = v59;
      v116 = v61;

      v62 = a1;
      if ((a2 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v63 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v132 + 8))(v35, v133);
        v62 = v135;
      }

      v64 = swift_getKeyPath();
      v65 = v123;
      v66 = v118;
      v67 = &v118[*(v123 + 36)];
      *v67 = v64;
      sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
      swift_storeEnumTagMultiPayload();
      v68 = (v67 + *(type metadata accessor for NowPlayingTitleView.ArtistAlbumStyle(0) + 20));
      v134 = v62;
      type metadata accessor for RadioNowPlayingViewModel(0);
      State.init(wrappedValue:)();
      v69 = v136;
      *v68 = v135;
      v68[1] = v69;
      *v66 = v115;
      *(v66 + 1) = v58;
      v66[16] = v60 & 1;
      *(v66 + 3) = v116;
      v70 = v66;
      v71 = v65;
      v72 = v124;
      sub_10001721C(v70, v124, &qword_1000EBF08, &qword_1000B5210);
      v73 = 0;
    }

    else
    {
      v73 = 1;
      v71 = v123;
      v72 = v124;
    }

    v76 = v125 + 56;
    v77 = *(v125 + 56);
    v77(v72, v73, 1, v71);

    if ((a2 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v78 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v132 + 8))(v35, v133);
    }

    v79 = sub_10000A22C();

    if (v79)
    {
      v125 = v76;

      if ((a2 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v80 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v132 + 8))(v35, v133);
      }

      v81 = sub_10000AD74();
      v83 = v82;

      v84 = HIBYTE(v83) & 0xF;
      if ((v83 & 0x2000000000000000) == 0)
      {
        v84 = v81 & 0xFFFFFFFFFFFFLL;
      }

      if (v84)
      {

        if ((a2 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v85 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v132 + 8))(v35, v133);
        }

        v86 = sub_10000AD74();
        v88 = v87;

        v135 = v86;
        v136 = v88;
        sub_100020F58();
        v89 = Text.init<A>(_:)();
        v91 = v90;
        v93 = v92;
        v95 = v94;

        if ((a2 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v96 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v71 = v123;
          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v132 + 8))(v35, v133);
          a1 = v135;
        }

        v97 = swift_getKeyPath();
        v98 = v117;
        v99 = &v117[*(v71 + 36)];
        *v99 = v97;
        sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
        swift_storeEnumTagMultiPayload();
        v100 = (v99 + *(type metadata accessor for NowPlayingTitleView.ArtistAlbumStyle(0) + 20));
        v134 = a1;
        type metadata accessor for RadioNowPlayingViewModel(0);
        State.init(wrappedValue:)();
        v101 = v136;
        *v100 = v135;
        v100[1] = v101;
        *v98 = v89;
        *(v98 + 8) = v91;
        *(v98 + 16) = v93 & 1;
        *(v98 + 24) = v95;
        v102 = v119;
        sub_10001721C(v98, v119, &qword_1000EBF08, &qword_1000B5210);
        v103 = 0;
        goto LABEL_39;
      }

      v103 = 1;
    }

    else
    {
      v103 = 1;
    }

    v102 = v119;
LABEL_39:
    v77(v102, v103, 1, v71);
    v104 = v124;
    v105 = v120;
    sub_1000077CC(v124, v120, &qword_1000EBF10, &qword_1000B5218);
    v106 = v121;
    sub_1000077CC(v102, v121, &qword_1000EBF10, &qword_1000B5218);
    v107 = v122;
    sub_1000077CC(v105, v122, &qword_1000EBF10, &qword_1000B5218);
    v108 = sub_10000368C(&qword_1000EBF38, &qword_1000B52D0);
    sub_1000077CC(v106, v107 + *(v108 + 48), &qword_1000EBF10, &qword_1000B5218);
    sub_100007834(v102, &qword_1000EBF10, &qword_1000B5218);
    sub_100007834(v104, &qword_1000EBF10, &qword_1000B5218);
    sub_100007834(v106, &qword_1000EBF10, &qword_1000B5218);
    sub_100007834(v105, &qword_1000EBF10, &qword_1000B5218);
    v75 = v127;
    sub_10001721C(v107, v127, &qword_1000EBF00, &qword_1000B5208);
    v74 = 0;
    goto LABEL_40;
  }

  v74 = 1;
  v75 = v127;
LABEL_40:
  (*(v129 + 56))(v75, v74, 1, v130);
  v109 = v126;
  sub_1000077CC(v31, v126, &qword_1000EBF20, &qword_1000B5228);
  v110 = v128;
  sub_1000077CC(v75, v128, &qword_1000EBF18, &qword_1000B5220);
  v111 = v131;
  sub_1000077CC(v109, v131, &qword_1000EBF20, &qword_1000B5228);
  v112 = sub_10000368C(&qword_1000EBF28, &qword_1000B5290);
  sub_1000077CC(v110, v111 + *(v112 + 48), &qword_1000EBF18, &qword_1000B5220);
  sub_100007834(v75, &qword_1000EBF18, &qword_1000B5220);
  sub_100007834(v31, &qword_1000EBF20, &qword_1000B5228);
  sub_100007834(v110, &qword_1000EBF18, &qword_1000B5220);
  return sub_100007834(v109, &qword_1000EBF20, &qword_1000B5228);
}

uint64_t sub_10001D43C(uint64_t a1, char a2)
{
  *(v2 + 96) = a2;
  *(v2 + 24) = a1;
  v3 = type metadata accessor for EnvironmentValues();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 64) = v7;
  *(v2 + 72) = v6;

  return _swift_task_switch(sub_10001D534, v7, v6);
}

uint64_t sub_10001D534()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);

  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_10001D66C;

  return sub_10000AF34();
}

uint64_t sub_10001D66C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(sub_10001D7B0, v5, v4);
}

uint64_t sub_10001D7B0()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001D824@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for NonMarqueeTitle(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000368C(&qword_1000EC0F8, &qword_1000B5530);
  v9 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v11 = &v33 - v10;
  v35 = sub_10000368C(&qword_1000EC100, &qword_1000B5538);
  v12 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v14 = &v33 - v13;
  v15 = type metadata accessor for EnvironmentValues();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v16 + 8))(v19, v15);
    a1 = v38;
  }

  swift_getKeyPath();
  v38 = a1;
  sub_1000219C8(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(a1 + 24);
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  sub_10000C964(v21, v22, *(a1 + 40));

  if (v23 != 1)
  {
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v38)
  {
    LOBYTE(v23) = 1;
LABEL_11:
    sub_10000C9C0(v21, v22, v23);
    *v8 = swift_getKeyPath();
    v8[8] = 0;
    v30 = *(v5 + 20);
    *&v8[v30] = swift_getKeyPath();
    sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
    swift_storeEnumTagMultiPayload();
    sub_100021A38(v8, v11);
    swift_storeEnumTagMultiPayload();
    sub_100005870(&qword_1000EC108, &qword_1000EC100, &qword_1000B5538);
    sub_1000219C8(&qword_1000EC110, type metadata accessor for NonMarqueeTitle);
    _ConditionalContent<>.init(storage:)();
    return sub_100021A9C(v8);
  }

  v24 = (v38 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  swift_beginAccess();
  v25 = *v24;
  LOBYTE(v24) = v24[1];

  LOBYTE(v23) = 1;
  if ((v24 & 1) != 0 || !v25)
  {
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v26 = v37;
  if (v37 && (v27 = [v37 playbackState], v26, v27 != 1))
  {
    v28 = static Color.secondary.getter();
    v29 = 0;
  }

  else
  {
    sub_100005A50(0, &unk_1000ED140, UIColor_ptr);
    static UIColor.cafui_HDOrangeColor.getter();
    v28 = Color.init(uiColor:)();
    v29 = 1;
  }

  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0x4000000000000000;
  v14[16] = 0;
  v32 = sub_10000368C(&qword_1000EC118, &qword_1000B55F8);
  sub_10001DE48(v29, v28, &v14[*(v32 + 44)]);
  sub_1000077CC(v14, v11, &qword_1000EC100, &qword_1000B5538);
  swift_storeEnumTagMultiPayload();
  sub_100005870(&qword_1000EC108, &qword_1000EC100, &qword_1000B5538);
  sub_1000219C8(&qword_1000EC110, type metadata accessor for NonMarqueeTitle);
  _ConditionalContent<>.init(storage:)();
  sub_10000C9C0(v21, v22, 1);

  return sub_100007834(v14, &qword_1000EC100, &qword_1000B5538);
}

uint64_t sub_10001DE48@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for NonMarqueeTitle(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = *(v6 + 28);
  *&v12[v13] = swift_getKeyPath();
  sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
  swift_storeEnumTagMultiPayload();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v51[55] = v56;
  *&v51[71] = v57;
  *&v51[87] = v58;
  *&v51[103] = v59;
  *&v51[7] = v53;
  *&v51[23] = v54;
  v52 = 0;
  *&v51[39] = v55;
  v34 = static VerticalAlignment.center.getter();
  LOBYTE(v37) = 0;
  sub_10001E150(a1, a2, &v42);
  v14 = v42;
  v15 = v43;
  v16 = v44;
  v33 = v45;
  v17 = v46;
  v18 = v47;
  LOBYTE(v42) = v46;
  LOBYTE(a2) = v37;
  v35 = v10;
  sub_100021A38(v12, v10);
  v19 = v10;
  v20 = v36;
  sub_100021A38(v19, v36);
  v21 = sub_10000368C(&qword_1000EC120, &qword_1000B5600);
  v22 = v20 + *(v21 + 48);
  *v22 = 0x4020000000000000;
  *(v22 + 8) = 0;
  v23 = *&v51[80];
  *(v22 + 73) = *&v51[64];
  *(v22 + 89) = v23;
  *(v22 + 105) = *&v51[96];
  *(v22 + 120) = *&v51[111];
  v24 = *&v51[16];
  *(v22 + 9) = *v51;
  *(v22 + 25) = v24;
  v25 = *&v51[48];
  *(v22 + 41) = *&v51[32];
  *(v22 + 57) = v25;
  v26 = v20 + *(v21 + 64);
  v27 = v33;
  v28 = v34;
  *&v37 = v34;
  *(&v37 + 1) = 0x4000000000000000;
  LOBYTE(v38) = a2;
  *(&v38 + 1) = v14;
  *&v39 = v15;
  *(&v39 + 1) = v16;
  *&v40 = v33;
  BYTE8(v40) = v17;
  v41 = v18;
  *(v26 + 64) = v18;
  v29 = v38;
  *v26 = v37;
  *(v26 + 16) = v29;
  v30 = v40;
  *(v26 + 32) = v39;
  *(v26 + 48) = v30;
  sub_1000077CC(&v37, &v42, &qword_1000EC128, &qword_1000B5608);
  sub_100021A9C(v12);
  v42 = v28;
  v43 = 0x4000000000000000;
  LOBYTE(v44) = a2;
  v45 = v14;
  v46 = v15;
  v47 = v16;
  v48 = v27;
  v49 = v17;
  v50 = v18;
  sub_100007834(&v42, &qword_1000EC128, &qword_1000B5608);
  return sub_100021A9C(v35);
}

uint64_t sub_10001E150@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100005A50(0, &qword_1000EC130, UIImage_ptr);
  if (a1)
  {
    static UIImage.cafui_hdRadioLogoOrange.getter();
  }

  else
  {
    static UIImage.cafui_hdRadioLogo.getter();
  }

  v22 = Image.init(uiImage:)();

  dispatch thunk of CustomStringConvertible.description.getter();
  sub_100020F58();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  sub_100005A50(0, &qword_1000EC138, UIFont_ptr);
  static UIFont.cafui_preferredFont(for:weight:size:rounded:)();
  Font.init(_:)();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_100021B08(v5, v7, v9 & 1);

  v15 = Text.foregroundStyle<A>(_:)();
  v17 = v16;
  LOBYTE(v7) = v18;
  v20 = v19;
  sub_100021B08(v10, v12, v14 & 1);

  *a3 = v22;
  *(a3 + 8) = a2;
  *(a3 + 16) = v15;
  *(a3 + 24) = v17;
  *(a3 + 32) = v7 & 1;
  *(a3 + 40) = v20;

  sub_100021B18(v15, v17, v7 & 1);

  sub_100021B08(v15, v17, v7 & 1);
}

uint64_t sub_10001E378@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NonMarqueeTitle(0);
  sub_1000077CC(v1 + *(v12 + 20), v11, &qword_1000EB118, &qword_1000B3FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10001E58C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  v8 = v6;
  v20 = v7;
  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v8 = v21;
  }

  v19 = v2;
  v10 = 1701736302;
  swift_getKeyPath();
  v21 = v8;
  sub_1000219C8(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v8 + 17);

  if (v11 <= 2 && v11 > 1)
  {
    goto LABEL_5;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    return static Font.title3.getter();
  }

  if (v11 <= 2)
  {
    if (v11)
    {
      v10 = 0x4D646E417370616DLL;
      v14 = 0xEC00000061696465;
    }

    else
    {
      v14 = 0xE400000000000000;
    }
  }

  else if (v11 > 4)
  {
    if (v11 == 5)
    {
      v10 = 0x756964654D616364;
      v14 = 0xE90000000000006DLL;
    }

    else
    {
      v14 = 0xE700000000000000;
      v10 = 0x6C6C6154616364;
    }
  }

  else
  {
    v10 = 0x6D696E694D616364;
    v14 = v11 == 3 ? 0xEA00000000006C61 : 0xEE00656469576C61;
  }

  if (v10 == 0x4D646E417370616DLL && v14 == 0xEC00000061696465)
  {
LABEL_5:

    return static Font.title3.getter();
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    return static Font.title3.getter();
  }

  if ((v20 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v19 + 8))(v5, v1);
    v6 = v21;
  }

  swift_getKeyPath();
  v21 = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v6 + 16);

  if (v17 == 1)
  {
    return static Font.callout.getter();
  }

  else
  {
    return static Font.body.getter();
  }
}

id sub_10001EC90()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  v8 = v6;
  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v8 = v23;
  }

  v22 = v2;
  swift_getKeyPath();
  v23 = v8;
  sub_1000219C8(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v8 + 24);
  v10 = *(v8 + 32);
  v12 = *(v8 + 40);
  sub_10000C964(v11, v10, *(v8 + 40));

  if (v12)
  {
    sub_10000C9C0(v11, v10, v12);
    return 0;
  }

  v13 = [v11 song];
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v15 = [v13 isExplicitSong];

  if ((v15 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v22 + 8))(v5, v1);
    v6 = v23;
  }

  swift_getKeyPath();
  v23 = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v6 + 56);
  v18 = *(v6 + 64);

  if (v18 == 1)
  {
LABEL_10:

    return 0;
  }

  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() systemImageNamed:v20];

  return v21;
}

uint64_t sub_10001F060@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v204 = a2;
  v179 = type metadata accessor for ColorScheme();
  v178 = *(v179 - 8);
  v3 = *(v178 + 64);
  v4 = __chkstk_darwin(v179);
  v175 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v172 = &v166 - v6;
  v177 = type metadata accessor for BlendMode();
  v176 = *(v177 - 8);
  v7 = *(v176 + 64);
  __chkstk_darwin(v177);
  v171 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for Image.ResizingMode();
  v167 = *(v168 - 8);
  v9 = *(v167 + 64);
  __chkstk_darwin(v168);
  v166 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_10000368C(&qword_1000EC200, &qword_1000B5688);
  v11 = *(*(v169 - 8) + 64);
  __chkstk_darwin(v169);
  v170 = &v166 - v12;
  v202 = sub_10000368C(&qword_1000EC208, &qword_1000B5690);
  v200 = *(v202 - 8);
  v13 = *(v200 + 64);
  v14 = __chkstk_darwin(v202);
  v174 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v173 = &v166 - v16;
  v17 = sub_10000368C(&qword_1000EC210, &qword_1000B5698);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v203 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v201 = &v166 - v21;
  v189 = sub_10000368C(&qword_1000EBFF8, &qword_1000B53E0);
  v22 = *(*(v189 - 8) + 64);
  v23 = __chkstk_darwin(v189);
  v188 = &v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v186 = &v166 - v25;
  v206 = type metadata accessor for DynamicTypeSize();
  v207 = *(v206 - 8);
  v26 = *(v207 + 64);
  v27 = __chkstk_darwin(v206);
  v205 = &v166 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v166 - v29;
  v187 = sub_10000368C(&qword_1000EC000, &qword_1000B53E8);
  v31 = *(*(v187 - 8) + 64);
  __chkstk_darwin(v187);
  v185 = &v166 - v32;
  v33 = type metadata accessor for EnvironmentValues();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v208 = &v166 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_10000368C(&qword_1000EC218, &qword_1000B56A0);
  v37 = *(*(v184 - 8) + 64);
  __chkstk_darwin(v184);
  v191 = &v166 - v38;
  v190 = sub_10000368C(&qword_1000EC220, &qword_1000B56A8);
  v39 = *(*(v190 - 8) + 64);
  __chkstk_darwin(v190);
  v209 = &v166 - v40;
  v192 = sub_10000368C(&qword_1000EC228, &qword_1000B56B0);
  v41 = *(*(v192 - 8) + 64);
  __chkstk_darwin(v192);
  v197 = &v166 - v42;
  v196 = sub_10000368C(&qword_1000EC230, &qword_1000B56B8);
  v43 = *(*(v196 - 8) + 64);
  v44 = __chkstk_darwin(v196);
  v198 = &v166 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v194 = &v166 - v47;
  __chkstk_darwin(v46);
  v210 = &v166 - v48;
  v49 = *a1;
  v50 = *(a1 + 8);

  v211 = v50;
  if ((v50 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v52 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v53 = v208;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v51 = (*(v34 + 8))(v53, v33);
  }

  v212 = v49;
  v193 = v34;
  v195 = v33;
  v54 = sub_10000A7D0(v51);
  v56 = v55;

  *&v216 = v54;
  *(&v216 + 1) = v56;
  sub_100020F58();
  v57 = Text.init<A>(_:)();
  v59 = v58;
  v61 = v60;
  v199 = a1;
  sub_10001E58C();
  v62 = Text.font(_:)();
  v64 = v63;
  v66 = v65;

  sub_100021B08(v57, v59, v61 & 1);

  static Font.Weight.semibold.getter();
  v67 = Text.fontWeight(_:)();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  sub_100021B08(v62, v64, v66 & 1);

  v182 = v67;
  *&v216 = v67;
  *(&v216 + 1) = v69;
  v181 = v69;
  v74 = v71 & 1;
  LOBYTE(v217) = v71 & 1;
  v183 = v73;
  *(&v217 + 1) = v73;
  v75 = v207;
  v76 = *(v207 + 104);
  v77 = v30;
  v78 = v206;
  v76(v30, enum case for DynamicTypeSize.large(_:), v206);
  v79 = v205;
  v76(v205, enum case for DynamicTypeSize.xLarge(_:), v78);
  sub_1000219C8(&qword_1000EC0F0, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v180 = v74;
  v81 = *(v75 + 32);
  v82 = v186;
  v81(v186, v77, v78);
  v83 = v189;
  v81((v82 + *(v189 + 48)), v79, v78);
  v84 = v188;
  sub_1000077CC(v82, v188, &qword_1000EBFF8, &qword_1000B53E0);
  v85 = *(v83 + 48);
  v86 = v185;
  v81(v185, v84, v78);
  v87 = *(v75 + 8);
  v87(v84 + v85, v78);
  sub_10001721C(v82, v84, &qword_1000EBFF8, &qword_1000B53E0);
  v81((v86 + *(v187 + 36)), (v84 + *(v83 + 48)), v78);
  v87(v84, v78);
  sub_100005870(&qword_1000EC0E8, &qword_1000EC000, &qword_1000B53E8);
  v88 = v191;
  View.dynamicTypeSize<A>(_:)();
  sub_100007834(v86, &qword_1000EC000, &qword_1000B53E8);
  sub_100021B08(v182, v181, v180);

  *(v88 + *(v184 + 36)) = static HierarchicalShapeStyle.primary.getter();
  v89 = v212;

  v90 = v89;
  v91 = v195;
  v92 = v193;
  v93 = v208;
  if ((v211 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v94 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v92 + 8))(v93, v91);
    v90 = v216;
  }

  swift_getKeyPath();
  *&v216 = v90;
  sub_1000219C8(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v95 = *(v90 + 16);

  if (v95)
  {
    v96 = 2;
  }

  else
  {
    v96 = 1;
  }

  KeyPath = swift_getKeyPath();
  v98 = v209;
  sub_10001721C(v88, v209, &qword_1000EC218, &qword_1000B56A0);
  v99 = v98 + *(v190 + 36);
  *v99 = KeyPath;
  *(v99 + 8) = v96;
  *(v99 + 16) = 0;

  v100 = v89;
  v101 = v197;
  if ((v211 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v102 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v92 + 8))(v93, v91);
    v100 = v216;
  }

  v207 = 0xEA00000000006C61;
  swift_getKeyPath();
  *&v216 = v100;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v103 = *(v100 + 17);

  if (v103 == 3)
  {
    goto LABEL_16;
  }

  v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v104)
  {
    goto LABEL_18;
  }

  v105 = v212;

  if ((v211 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v106 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v92 + 8))(v93, v91);
    v105 = v216;
  }

  swift_getKeyPath();
  *&v216 = v105;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v107 = *(v105 + 17);

  if (v107 == 5)
  {
LABEL_16:

    v108 = 0;
    goto LABEL_19;
  }

  v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v109)
  {
    goto LABEL_18;
  }

  v115 = v212;

  if ((v211 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v116 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v92 + 8))(v93, v91);
    v115 = v216;
  }

  swift_getKeyPath();
  *&v216 = v115;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v117 = *(v115 + 16);

  if (v117)
  {
    goto LABEL_29;
  }

  v118 = v212;

  if ((v211 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v119 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v92 + 8))(v93, v91);
    v118 = v216;
  }

  swift_getKeyPath();
  *&v216 = v118;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v120 = *(v118 + 41);

  if (v120)
  {
LABEL_18:
    v108 = 0;
  }

  else
  {
LABEL_29:
    v108 = 1;
  }

LABEL_19:
  v110 = swift_getKeyPath();
  sub_10001721C(v209, v101, &qword_1000EC220, &qword_1000B56A8);
  v111 = v101 + *(v192 + 36);
  *v111 = v110;
  *(v111 + 8) = v108;
  v112 = v212;

  if ((v211 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v113 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v92 + 8))(v93, v91);
    v112 = v216;
  }

  swift_getKeyPath();
  *&v216 = v112;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v114 = *(v112 + 17);

  if (v114 == 3)
  {
    goto LABEL_35;
  }

  v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v121 & 1) == 0)
  {
    v122 = v212;

    if ((v211 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v123 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v92 + 8))(v93, v91);
      v122 = v216;
    }

    swift_getKeyPath();
    *&v216 = v122;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v124 = *(v122 + 17);

    if (v124 > 4)
    {
      v207 = 0xE90000000000006DLL;
      if (v124 == 5)
      {
LABEL_35:

        goto LABEL_40;
      }
    }

    v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v125 & 1) == 0)
    {
      v126 = v212;

      if ((v211 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v127 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v92 + 8))(v93, v91);
        v126 = v216;
      }

      swift_getKeyPath();
      *&v216 = v126;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v128 = *(v126 + 41);

      if ((v128 & 1) == 0)
      {
        static Alignment.center.getter();
        goto LABEL_41;
      }
    }
  }

LABEL_40:
  static Alignment.leading.getter();
LABEL_41:
  v129 = 1;
  _FrameLayout.init(width:height:alignment:)();
  v130 = v194;
  sub_10001721C(v101, v194, &qword_1000EC228, &qword_1000B56B0);
  v131 = (v130 + *(v196 + 36));
  v132 = v214;
  *v131 = v213;
  v131[1] = v132;
  v131[2] = v215;
  sub_10001721C(v130, v210, &qword_1000EC230, &qword_1000B56B8);
  v133 = sub_10001EC90();
  if (v133)
  {
    v134 = v133;
    v135 = [v133 imageWithRenderingMode:2];
    Image.init(uiImage:)();
    v136 = v167;
    v137 = v166;
    v138 = v168;
    (*(v167 + 104))(v166, enum case for Image.ResizingMode.stretch(_:), v168);
    v139 = Image.resizable(capInsets:resizingMode:)();

    (*(v136 + 8))(v137, v138);
    v140 = static HierarchicalShapeStyle.secondary.getter();
    v141 = v172;
    sub_10001E378(v172);
    v142 = v178;
    v143 = v175;
    v144 = v179;
    (*(v178 + 104))(v175, enum case for ColorScheme.dark(_:), v179);
    v145 = static ColorScheme.== infix(_:_:)();
    v146 = *(v142 + 8);
    v146(v143, v144);
    v146(v141, v144);
    v147 = v176;
    v148 = &enum case for BlendMode.plusLighter(_:);
    if ((v145 & 1) == 0)
    {
      v148 = &enum case for BlendMode.plusDarker(_:);
    }

    v149 = v171;
    v150 = v177;
    (*(v176 + 104))(v171, *v148, v177);
    v151 = v170;
    (*(v147 + 32))(&v170[*(v169 + 36)], v149, v150);
    *v151 = v139;
    *(v151 + 8) = 0;
    *(v151 + 16) = 1;
    *(v151 + 20) = v140;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

    v152 = v174;
    sub_10001721C(v151, v174, &qword_1000EC200, &qword_1000B5688);
    v153 = v202;
    v154 = (v152 + *(v202 + 36));
    v155 = v221;
    v154[4] = v220;
    v154[5] = v155;
    v154[6] = v222;
    v156 = v217;
    *v154 = v216;
    v154[1] = v156;
    v157 = v219;
    v154[2] = v218;
    v154[3] = v157;
    v158 = v152;
    v159 = v173;
    sub_10001721C(v158, v173, &qword_1000EC208, &qword_1000B5690);
    v160 = v201;
    sub_10001721C(v159, v201, &qword_1000EC208, &qword_1000B5690);
    v129 = 0;
  }

  else
  {
    v153 = v202;
    v160 = v201;
  }

  (*(v200 + 56))(v160, v129, 1, v153);
  v161 = v210;
  v162 = v198;
  sub_1000077CC(v210, v198, &qword_1000EC230, &qword_1000B56B8);
  v163 = v203;
  sub_1000077CC(v160, v203, &qword_1000EC210, &qword_1000B5698);
  v164 = v204;
  sub_1000077CC(v162, v204, &qword_1000EC230, &qword_1000B56B8);
  v165 = sub_10000368C(&qword_1000EC238, &qword_1000B56C0);
  sub_1000077CC(v163, v164 + *(v165 + 48), &qword_1000EC210, &qword_1000B5698);
  sub_100007834(v160, &qword_1000EC210, &qword_1000B5698);
  sub_100007834(v161, &qword_1000EC230, &qword_1000B56B8);
  sub_100007834(v163, &qword_1000EC210, &qword_1000B5698);
  return sub_100007834(v162, &qword_1000EC230, &qword_1000B56B8);
}

uint64_t sub_100020D2C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = 0;
  v3 = sub_10000368C(&qword_1000EC1F8, &qword_1000B5680);
  return sub_10001F060(v1, a1 + *(v3 + 44));
}

uint64_t sub_100020D90()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100020DC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100020E64;

  return sub_10001D43C(v2, v3);
}

uint64_t sub_100020E64()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100020F58()
{
  result = qword_1000EBF30;
  if (!qword_1000EBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBF30);
  }

  return result;
}

uint64_t sub_100020FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
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

uint64_t sub_1000210CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
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

void sub_100021190()
{
  sub_100021D94(319, &qword_1000EBFB0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100021D94(319, &unk_1000EBFB8, type metadata accessor for RadioNowPlayingViewModel, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100021308()
{
  result = qword_1000EC058;
  if (!qword_1000EC058)
  {
    sub_100005780(&qword_1000EC038, &qword_1000B5420);
    sub_100005870(&qword_1000EC060, &qword_1000EC050, &unk_1000B5468);
    sub_100005870(&qword_1000EBB00, &qword_1000EBB08, &qword_1000B4B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC058);
  }

  return result;
}

unint64_t sub_1000213FC()
{
  result = qword_1000EC080;
  if (!qword_1000EC080)
  {
    sub_100005780(&qword_1000EC040, &qword_1000B5428);
    sub_100021488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC080);
  }

  return result;
}

unint64_t sub_100021488()
{
  result = qword_1000EC088;
  if (!qword_1000EC088)
  {
    sub_100005780(&qword_1000EC078, &qword_1000B54E8);
    sub_100021540();
    sub_100005870(&qword_1000EC0C0, &qword_1000EC0C8, &qword_1000B5500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC088);
  }

  return result;
}

unint64_t sub_100021540()
{
  result = qword_1000EC090;
  if (!qword_1000EC090)
  {
    sub_100005780(&qword_1000EC070, &qword_1000B54B0);
    sub_1000215F8();
    sub_100005870(&qword_1000EC0B0, &qword_1000EC0B8, &qword_1000B6FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC090);
  }

  return result;
}

unint64_t sub_1000215F8()
{
  result = qword_1000EC098;
  if (!qword_1000EC098)
  {
    sub_100005780(&qword_1000EC068, &qword_1000B5478);
    sub_100005780(&qword_1000EC038, &qword_1000B5420);
    sub_100021308();
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EC0A0, &qword_1000EC0A8, &unk_1000B54F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC098);
  }

  return result;
}

unint64_t sub_1000216EC()
{
  result = qword_1000EC0D0;
  if (!qword_1000EC0D0)
  {
    sub_100005780(&qword_1000EC028, &qword_1000B5410);
    sub_100021778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC0D0);
  }

  return result;
}

unint64_t sub_100021778()
{
  result = qword_1000EC0D8;
  if (!qword_1000EC0D8)
  {
    sub_100005780(&qword_1000EC020, &qword_1000B5408);
    sub_100021830();
    sub_100005870(&qword_1000EC0B0, &qword_1000EC0B8, &qword_1000B6FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC0D8);
  }

  return result;
}

unint64_t sub_100021830()
{
  result = qword_1000EC0E0;
  if (!qword_1000EC0E0)
  {
    sub_100005780(&qword_1000EC018, &qword_1000B5400);
    sub_100005780(&qword_1000EC008, &qword_1000B53F0);
    sub_100005780(&qword_1000EC000, &qword_1000B53E8);
    sub_100005780(&qword_1000EC038, &qword_1000B5420);
    sub_100021308();
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EC0E8, &qword_1000EC000, &qword_1000B53E8);
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EC0A0, &qword_1000EC0A8, &unk_1000B54F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC0E0);
  }

  return result;
}

uint64_t sub_1000219C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100021A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonMarqueeTitle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021A9C(uint64_t a1)
{
  v2 = type metadata accessor for NonMarqueeTitle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100021B08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100021B18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100021B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100021C04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100021CB0()
{
  sub_100021D94(319, &unk_1000EC1A8, type metadata accessor for RadioNowPlayingViewModel, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100021D94(319, &qword_1000EBFB0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100021D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100021DFC()
{
  result = qword_1000EC1D8;
  if (!qword_1000EC1D8)
  {
    sub_100005780(&qword_1000EC1E0, &qword_1000B5620);
    sub_1000213FC();
    sub_1000216EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC1D8);
  }

  return result;
}

unint64_t sub_100021E8C()
{
  result = qword_1000EC1E8;
  if (!qword_1000EC1E8)
  {
    sub_100005780(&qword_1000EC1F0, &qword_1000B5628);
    sub_100005870(&qword_1000EC108, &qword_1000EC100, &qword_1000B5538);
    sub_1000219C8(&qword_1000EC110, type metadata accessor for NonMarqueeTitle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC1E8);
  }

  return result;
}

BOOL sub_100021FDC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(type metadata accessor for IndexPath() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_10002D0B4(&qword_1000EC590);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

void sub_1000220D4()
{
  v2 = v0;
  v164 = 0;
  v176 = type metadata accessor for UUID();
  *&v173 = *(v176 - 8);
  v3 = *(v173 + 64);
  __chkstk_darwin(v176);
  v175 = &v158[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10000368C(&qword_1000EC548, &qword_1000B5820);
  v163 = *(v5 - 8);
  v6 = *(v163 + 64);
  __chkstk_darwin(v5);
  v179 = &v158[-v7];
  v172 = (v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory);
  if (*(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8))
  {
    goto LABEL_2;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_2;
  }

  v1 = &OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager;
  v21 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v22 = Strong;

  if (!v21)
  {
    goto LABEL_2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  countAndFlagsBits = v183._countAndFlagsBits;
  if (!v183._countAndFlagsBits)
  {
    goto LABEL_2;
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = *(v24 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v26 = v24;

    if (v25)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v27 = sub_100093ED4(countAndFlagsBits, v183._countAndFlagsBits);

      v1 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy;
      v28 = v27[2];
      v29 = (v27 + 4);
      while (v28)
      {
        v30 = *v29++;
        --v28;
        if (v30 == *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy))
        {

          goto LABEL_2;
        }
      }

      v135 = *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentBandStations);
      if (v135 >> 62)
      {
        if (v135 < 0)
        {
          v153 = *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentBandStations);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_153:
          if (v27[2])
          {
            v136 = *(v27 + 32);
          }

          else
          {
            v136 = 0;
          }

          if (qword_1000EACE0 != -1)
          {
            swift_once();
          }

          v148 = type metadata accessor for Logger();
          sub_100006928(v148, qword_1000F3B70);
          v149 = Logger.logObject.getter();
          v150 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            *v151 = 16777472;
            v151[4] = v136;
            _os_log_impl(&_mh_execute_header, v149, v150, "Resetting grouping strategy to %hhu", v151, 5u);
          }

          if (v136 != *(v2 + v1))
          {
            *(v2 + v1) = v136;
            sub_1000220D4();
            if (qword_1000EAD48 != -1)
            {
              swift_once();
            }

            sub_1000922F8(*(v2 + v1));

            return;
          }

          goto LABEL_179;
        }
      }

      else if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_153;
      }

      if (qword_1000EACE0 != -1)
      {
        swift_once();
      }

      v154 = type metadata accessor for Logger();
      sub_100006928(v154, qword_1000F3B70);

      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        *v157 = 16777472;
        v157[4] = *(v2 + v1);

        _os_log_impl(&_mh_execute_header, v155, v156, "Keeping grouping strategy %hhu, pending stations", v157, 5u);
      }

      else
      {
      }

      goto LABEL_2;
    }
  }

LABEL_179:

LABEL_2:
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    return;
  }

  v9 = *(v8 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v10 = v8;

  if (!v9)
  {
    return;
  }

  v161 = v9;
  v171 = objc_opt_self();
  v11 = [v171 mainBundle];
  v185._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0x49544154535F4F4ELL;
  v12._object = 0xEB00000000534E4FLL;
  v13.value._countAndFlagsBits = 0x6F69646152;
  v13.value._object = 0xE500000000000000;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v185._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v185);

  v160 = String.init(format:_:)();
  v162 = v15;

  v16 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentBandStations;
  v17 = *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentBandStations);
  v184 = _swiftEmptyArrayStorage;

  sub_1000267D8();
  if (v18)
  {
    v19 = 1;
  }

  else
  {
    v31 = *(v2 + v16);
    if (v31 >> 62)
    {
      if (v31 < 0)
      {
        v152 = *(v2 + v16);
      }

      v32 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v32 == 0;
  }

  v159 = v19;
  v33 = *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy);
  v166 = v5;
  v165 = v2;
  if (v33 != 5)
  {
    if (*(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) - 1 <= 1 && !v172[1])
    {
      goto LABEL_102;
    }

    v34 = [v171 mainBundle];
    v186._object = 0xE000000000000000;
    v35._object = 0x80000001000BB790;
    v35._countAndFlagsBits = 0xD000000000000014;
    v36.value._countAndFlagsBits = 0x6F69646152;
    v36.value._object = 0xE500000000000000;
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    v186._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v36, v34, v37, v186);

    v38 = _swiftEmptyArrayStorage;
    v160 = String.init(format:_:)();
    v162 = v39;

    sub_10000368C(&qword_1000EC558, &unk_1000BA800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B4760;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
    *(inited + 32) = _swiftEmptyArrayStorage;
    *(inited + 56) = 1;
    sub_10009EE38(inited);
    v180 = _swiftEmptyArrayStorage;
    if (v17 >> 62)
    {
      v41 = _CocoaArrayWrapper.endIndex.getter();
      if (v41)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v41 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
LABEL_23:
        v42 = 0;
        v178 = v17 & 0xC000000000000001;
        v177 = v17 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v178)
          {
            v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v44 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
LABEL_64:
              __break(1u);
LABEL_65:
              v38 = v180;
              v5 = v166;
              v2 = v165;
              goto LABEL_66;
            }
          }

          else
          {
            if (v42 >= *(v177 + 16))
            {
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
LABEL_188:
              v66 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_70;
            }

            v1 = *(v17 + 8 * v42 + 32);

            v44 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_64;
            }
          }

          if (v33 >= 4)
          {
            goto LABEL_25;
          }

          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v45)
          {
            goto LABEL_26;
          }

          v46 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
          swift_beginAccess();
          if (*(v1 + v46) != 3)
          {
            goto LABEL_43;
          }

          v47 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          v48 = [*(v1 + v47) mediaItemGroup];
          if (!v48)
          {
            goto LABEL_43;
          }

          v49 = v48;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          v53 = HIBYTE(v52) & 0xF;
          if ((v52 & 0x2000000000000000) == 0)
          {
            v53 = v50 & 0xFFFFFFFFFFFFLL;
          }

          if (!v53)
          {
            break;
          }

          v54 = v17;
          v55 = String.lowercased()();

          v183 = v55;
          sub_100020F58();
          v56 = StringProtocol.capitalized.getter();
          v58 = v57;

          v59._countAndFlagsBits = v56;
          v59._object = v58;
          v60 = _findStringSwitchCase(cases:string:)(&off_1000DF280, v59);

          v61 = 0xE500000000000000;
          if (v60 > 1)
          {
            v17 = v54;
            if (v60 == 2)
            {
              v61 = 0xE400000000000000;
              v62 = 1802264916;
            }

            else
            {
              v62 = 0x726568744FLL;
              if (v60 == 3)
              {
                v61 = 0xE400000000000000;
                v62 = 1937204558;
              }
            }
          }

          else
          {
            v17 = v54;
            if (v60)
            {
              v62 = 0x726568744FLL;
              if (v60 == 1)
              {
                v61 = 0xE600000000000000;
                v62 = 0x7374726F7053;
              }
            }

            else
            {
              v62 = 0x636973754DLL;
            }
          }

LABEL_44:
          if (v33 > 1)
          {
            if (v33 == 2)
            {
              v64 = 1802264916;
            }

            else
            {
              v64 = 1937204558;
            }

            v63 = 0xE400000000000000;
            if (v62 != v64)
            {
              goto LABEL_55;
            }
          }

          else if (v33)
          {
            v63 = 0xE600000000000000;
            if (v62 != 0x7374726F7053)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v63 = 0xE500000000000000;
            if (v62 != 0x636973754DLL)
            {
              goto LABEL_55;
            }
          }

          if (v61 == v63)
          {

LABEL_25:

            goto LABEL_26;
          }

LABEL_55:
          v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v65 & 1) == 0)
          {

            goto LABEL_27;
          }

LABEL_26:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v43 = v180[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
LABEL_27:
          ++v42;
          if (v44 == v41)
          {
            goto LABEL_65;
          }
        }

LABEL_43:
        v61 = 0xE500000000000000;
        v62 = 0x726568744FLL;
        goto LABEL_44;
      }
    }

LABEL_66:

    v17 = v38;
  }

  v41 = v172[1];
  if (!v41)
  {
    goto LABEL_102;
  }

  v1 = *v172;
  v183._countAndFlagsBits = _swiftEmptyArrayStorage;
  if (v17 >> 62)
  {
    goto LABEL_188;
  }

  v66 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_70:

  if (!v66)
  {
    goto LABEL_101;
  }

  v67 = 0;
  v178 = v17 & 0xC000000000000001;
  v177 = v17 & 0xFFFFFFFFFFFFFF8;
  v174 = v17;
  while (v178)
  {
    v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v70 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      goto LABEL_100;
    }

LABEL_79:
    v71 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v72 = [*(v69 + v71) mediaItemCategoryUserVisibleLabel];
    if (v72)
    {
      v73 = v72;
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = HIBYTE(v76) & 0xF;
      if ((v76 & 0x2000000000000000) == 0)
      {
        v77 = v74 & 0xFFFFFFFFFFFFLL;
      }

      if (v77)
      {
        v78 = v74;
        v17 = v174;
        goto LABEL_86;
      }

      v17 = v174;
    }

    v78 = sub_1000820E4([*(v69 + v71) mediaItemCategory]);
    v76 = v79;
LABEL_86:
    if (v78 == v1 && v41 == v76)
    {
      goto LABEL_73;
    }

    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v81)
    {
      goto LABEL_74;
    }

    v82 = [*(v69 + v71) ensemble];
    if (!v82)
    {
      goto LABEL_97;
    }

    v83 = v82;
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    if (v84 == v1 && v41 == v86)
    {
      v17 = v174;
LABEL_73:

      goto LABEL_74;
    }

    v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v17 = v174;
    if ((v88 & 1) == 0)
    {
LABEL_97:

      goto LABEL_75;
    }

LABEL_74:
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v68 = *(v183._countAndFlagsBits + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_75:
    ++v67;
    if (v70 == v66)
    {
      goto LABEL_101;
    }
  }

  if (v67 >= *(v177 + 16))
  {
    goto LABEL_184;
  }

  v69 = *(v17 + 8 * v67 + 32);

  v70 = v67 + 1;
  if (!__OFADD__(v67, 1))
  {
    goto LABEL_79;
  }

LABEL_100:
  __break(1u);
LABEL_101:

  v17 = v183._countAndFlagsBits;
  v5 = v166;
  v2 = v165;
LABEL_102:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v183._countAndFlagsBits & 1) == 0)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v92 = v183._countAndFlagsBits;
    if (v183._countAndFlagsBits)
    {
      v93 = [v183._countAndFlagsBits mediaSourceSemanticType];
      if (v93 <= 8 && ((1 << v93) & 0x14E) != 0 || ([v92 disabled] & 1) == 0)
      {

        v1 = "currentPlayingStation";
        sub_10000368C(&unk_1000EEE80, &unk_1000B58C0);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_1000B4760;
        sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
        sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr);
        v95 = CAFObserved<>.observable.getter();
        v96 = sub_100083338();
        v98 = v97;

        *(v94 + 56) = &type metadata for String;
        *(v94 + 64) = sub_10002BE6C();
        *(v94 + 32) = v96;
        *(v94 + 40) = v98;
        v99 = [v171 mainBundle];
        v187._object = 0xE000000000000000;
        v100._countAndFlagsBits = 0xD000000000000017;
        v100._object = 0x80000001000BB770;
        v101.value._countAndFlagsBits = 0x6F69646152;
        v101.value._object = 0xE500000000000000;
        v102._countAndFlagsBits = 0;
        v102._object = 0xE000000000000000;
        v187._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v100, v101, v99, v102, v187);

        v160 = String.init(format:_:)();
        v162 = v103;
      }

      else
      {
      }
    }

    v17 = _swiftEmptyArrayStorage;
    goto LABEL_111;
  }

  v89 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy;
  v90 = sub_10007647C;
  if (*(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) > 1u)
  {
    if (*(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) == 2)
    {
      v90 = sub_1000767A8;
      v91 = v164;
      goto LABEL_114;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v134 = v183._countAndFlagsBits;
    if (v183._countAndFlagsBits)
    {
      if (*(v2 + v89) == 3)
      {
        if ([v183._countAndFlagsBits mediaSourceSemanticType] == 6)
        {

          v1 = 0;
          goto LABEL_157;
        }

        v147 = [v134 mediaSourceSemanticType];

        if (v147 == 8)
        {
          v1 = 0;
LABEL_157:
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v137 = v183._countAndFlagsBits;
          if (v183._countAndFlagsBits)
          {
            v138 = [v183._countAndFlagsBits mediaSourceSemanticType];
            if (v138 == 8)
            {
              __chkstk_darwin(v138);

              v183._countAndFlagsBits = sub_10002BC68(v139);
              v140 = v164;
              sub_10002CD6C(&v183._countAndFlagsBits, sub_10002D094);
              v164 = v140;
              if (!v140)
              {

                if (v183._countAndFlagsBits < 0 || (v183._countAndFlagsBits & 0x4000000000000000) != 0)
                {
                  type metadata accessor for TerrestrialRadioStation();

                  _bridgeCocoaArray<A>(_:)();
                }

                else
                {

                  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                  type metadata accessor for TerrestrialRadioStation();
                }

                goto LABEL_166;
              }

              goto LABEL_203;
            }
          }

          v183._countAndFlagsBits = sub_10002BC68(v141);
          v142 = v164;
          sub_100027D28(&v183._countAndFlagsBits);
          v164 = v142;
          if (!v142)
          {

LABEL_166:
            v143 = sub_100027120(v1);

            v17 = v184;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1000A2450(0, *(v17 + 16) + 1, 1, v17);
            }

            v145 = *(v17 + 16);
            v144 = *(v17 + 24);
            if (v145 >= v144 >> 1)
            {
              v17 = sub_1000A2450((v144 > 1), v145 + 1, 1, v17);
            }

            *(v17 + 16) = v145 + 1;
            v146 = v17 + 32 * v145;
            *(v146 + 32) = v143;
            *(v146 + 40) = 0;
            *(v146 + 48) = 0;
            *(v146 + 56) = 0;
LABEL_111:
            v184 = v17;
            goto LABEL_116;
          }

LABEL_203:

          __break(1u);
          return;
        }
      }

      else
      {
      }
    }

    v1 = *(v2 + v89);
    goto LABEL_157;
  }

  v91 = v164;
  if (*(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy))
  {
    v90 = sub_1000766E4;
  }

LABEL_114:
  v104 = sub_10002BEC0(v17, v90);

  v105 = sub_10002CE00(v104, v2);

  v183._countAndFlagsBits = v105;

  sub_100027FE0(&v183);
  v164 = v91;
  if (v91)
  {
    goto LABEL_203;
  }

  sub_10009EE38(v183._countAndFlagsBits);
  v17 = v184;
LABEL_116:
  v41 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections;
  v106 = *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections);
  *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections) = v17;

  NSDiffableDataSourceSnapshot.init()();
  v107 = *(v2 + v41);
  v108 = *(v107 + 16);
  if (v108)
  {
    v109 = sub_100027554(*(v107 + 16), 0);
    if (sub_10002BD38(&v183._countAndFlagsBits, (v109 + 4), v108, 0, v108) == v108)
    {
      NSDiffableDataSourceSnapshot.appendSections(_:)(v109);

      v1 = *(v2 + v41);
      v110 = *(v1 + 16);
      v171 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy;

      if (v110)
      {
        v111 = 0;
        v178 = v1 + 32;
        v174 = (v173 + 8);
        v173 = xmmword_1000B4760;
        v169 = v17;
        v168 = v1;
        v167 = v110;
        while (v111 < *(v1 + 16))
        {
          v116 = v178 + 32 * v111;
          if ((*(v116 + 24) & 1) != 0 || (v117 = *v116, v118 = *(v116 + 16), v171[v2] - 1 <= 1) && !v172[1])
          {
            sub_10000368C(&qword_1000EEF40, &qword_1000BA810);
            v112 = swift_allocObject();
            *(v112 + 16) = v173;
            v41 = v175;
            UUID.init()();
            v113 = UUID.uuidString.getter();
            v115 = v114;
            (*v174)(v41, v176);
            *(v112 + 32) = v113;
            *(v112 + 40) = v115;
            v181 = v111;
            v182 = 0;
            NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
          }

          else
          {
            if (v117 >> 62)
            {
              v17 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v17 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v177 = v111;
            if (v17)
            {
              v181 = _swiftEmptyArrayStorage;

              v170 = v118;

              sub_1000A2C90(0, v17 & ~(v17 >> 63), 0);
              if ((v17 & 0x8000000000000000) != 0)
              {
                goto LABEL_186;
              }

              v119 = 0;
              v120 = v181;
              do
              {
                if ((v117 & 0xC000000000000001) != 0)
                {
                  v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v121 = *(v117 + 8 * v119 + 32);
                }

                v122 = (v121 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
                swift_beginAccess();
                v41 = *v122;
                v123 = v122[1];

                v181 = v120;
                v125 = v120[2];
                v124 = v120[3];
                if (v125 >= v124 >> 1)
                {
                  sub_1000A2C90((v124 > 1), v125 + 1, 1);
                  v120 = v181;
                }

                ++v119;
                v120[2] = v125 + 1;
                v126 = &v120[2 * v125];
                v126[4] = v41;
                v126[5] = v123;
              }

              while (v17 != v119);

              v5 = v166;
              v2 = v165;
            }

            v127 = v177;
            v181 = v177;
            v182 = 0;
            NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
            v111 = v127;

            v17 = v169;
            v1 = v168;
            v110 = v167;
          }

          if (++v111 == v110)
          {
            goto LABEL_140;
          }
        }

        __break(1u);
LABEL_184:
        __break(1u);
        goto LABEL_185;
      }

LABEL_140:

      goto LABEL_141;
    }

    goto LABEL_187;
  }

LABEL_141:

  sub_10002539C();
  v128 = swift_unknownObjectWeakLoadStrong();
  if (v128)
  {
    v129 = v128;
    v130 = swift_allocObject();
    swift_weakInit();
    v131 = swift_allocObject();
    v132 = v160;
    *(v131 + 16) = v130;
    *(v131 + 24) = v132;
    *(v131 + 32) = v162;
    *(v131 + 40) = v159;

    v133 = v179;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v163 + 8))(v133, v5);
  }

  else
  {

    (*(v163 + 8))(v179, v5);
  }
}

void sub_100023A58()
{
  v1 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v38 = &v31 - v3;
  v45 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v4 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v44 = &v31 - v5;
  v43 = sub_10000368C(&unk_1000EC890, &unk_1000B6100);
  v6 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v42 = &v31 - v7;
  v41 = sub_10000368C(&qword_1000EC5F0, &qword_1000B5A40);
  v8 = *(v41 - 8);
  v9 = v8[8];
  __chkstk_darwin(v41);
  v37 = &v31 - v10;
  v40 = sub_10000368C(&qword_1000EC5F8, &qword_1000B5A48);
  v11 = *(v40 - 8);
  v12 = v11[8];
  __chkstk_darwin(v40);
  v36 = &v31 - v13;
  v14 = (v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_stationCancelSet);
  swift_beginAccess();
  v15 = *v14;
  v39 = v14;
  *v14 = &_swiftEmptySetSingleton;

  v46 = v0;
  v16 = *(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentBandStations);
  if (v16 >> 62)
  {
LABEL_15:
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17)
  {
    v18 = 0;
    v34 = v16 & 0xFFFFFFFFFFFFFF8;
    v35 = v16 & 0xC000000000000001;
    v32 = (v8 + 1);
    v31 = (v11 + 1);
    v33 = v16;
    v19 = v38;
    do
    {
      if (v35)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v18 >= *(v34 + 16))
        {
          __break(1u);
          goto LABEL_15;
        }

        v20 = *(v16 + 8 * v18 + 32);

        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_12;
        }
      }

      v47 = v21;
      swift_beginAccess();
      sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
      Published.projectedValue.getter();
      swift_endAccess();
      swift_beginAccess();
      sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
      Published.projectedValue.getter();
      swift_endAccess();
      sub_100005870(&unk_1000EC8E0, &unk_1000EC890, &unk_1000B6100);
      sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0);
      v22 = v37;
      Publishers.CombineLatest.init(_:_:)();
      v23 = [objc_opt_self() mainRunLoop];
      v48 = v23;
      v24 = type metadata accessor for NSRunLoop.SchedulerOptions();
      (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
      sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
      sub_100005870(&qword_1000EC600, &qword_1000EC5F0, &qword_1000B5A40);
      sub_1000058D0(&qword_1000ED0D0, &unk_1000ED0C0, NSRunLoop_ptr);
      v25 = v17;
      v26 = v36;
      v27 = v41;
      Publisher.receive<A>(on:options:)();
      sub_100007834(v19, &unk_1000EC7E0, &unk_1000B5100);

      (*v32)(v22, v27);
      v28 = swift_allocObject();
      swift_weakInit();
      v11 = swift_allocObject();
      v11[2] = v28;
      v11[3] = v20;
      sub_100005870(&qword_1000EC608, &qword_1000EC5F8, &qword_1000B5A48);

      v29 = v40;
      Publisher<>.sink(receiveValue:)();

      v30 = v26;
      v17 = v25;
      (*v31)(v30, v29);
      v8 = v39;
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v16 = v33;

      ++v18;
    }

    while (v47 != v25);
  }

  sub_1000220D4();
}

uint64_t sub_100024138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000368C(&unk_1000EC820, &qword_1000B5090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B4FC0;
    *(inited + 32) = a3;

    sub_1000241FC(inited);

    swift_setDeallocating();
    v6 = *(inited + 16);
    return swift_arrayDestroy();
  }

  return result;
}

uint64_t sub_1000241FC(unint64_t a1)
{
  v39 = sub_10000368C(&qword_1000EC548, &qword_1000B5820);
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v39);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v36 - v8;
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_36:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v36[1] = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_dataSource;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36[0] = v1;
    v12 = result;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    (*(v3 + 32))(v9, v7, v39);
    v42 = _swiftEmptyArrayStorage;
    if (v10)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1 = _swiftEmptyArrayStorage;
    v37 = v3;
    if (v7)
    {
      v3 = 0;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            v19 = v42;
            v3 = v37;
            goto LABEL_21;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_36;
          }

          v13 = *(a1 + 8 * v3 + 32);

          v14 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
            goto LABEL_18;
          }
        }

        v15 = (v13 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
        swift_beginAccess();
        v16 = v15[1];
        v40 = *v15;
        v41 = v16;
        v1 = v9;
        NSDiffableDataSourceSnapshot.indexOfItem(_:)();
        if (v17)
        {
        }

        else
        {
          v1 = &v42;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v18 = v42[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v3;
        if (v14 == v7)
        {
          goto LABEL_19;
        }
      }
    }

    v19 = _swiftEmptyArrayStorage;
LABEL_21:

    if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
        if (!v20)
        {

          v22 = _swiftEmptyArrayStorage;
LABEL_33:
          NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v22);

          Strong = swift_unknownObjectWeakLoadStrong();
          v3 = v37;
          if (Strong)
          {
            v35 = Strong;
            dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
          }

          return (*(v3 + 8))(v9, v39);
        }

LABEL_24:
        v42 = _swiftEmptyArrayStorage;
        result = sub_1000A2C90(0, v20 & ~(v20 >> 63), 0);
        if (v20 < 0)
        {
          __break(1u);
          return result;
        }

        v21 = 0;
        v22 = v42;
        v23 = v19;
        v38 = v19 & 0xC000000000000001;
        v24 = v9;
        v25 = v19;
        v26 = v20;
        do
        {
          if (v38)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v27 = *(v23 + 8 * v21 + 32);
          }

          v28 = (v27 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
          swift_beginAccess();
          v29 = *v28;
          v30 = v28[1];

          v42 = v22;
          v32 = v22[2];
          v31 = v22[3];
          if (v32 >= v31 >> 1)
          {
            sub_1000A2C90((v31 > 1), v32 + 1, 1);
            v22 = v42;
          }

          ++v21;
          v22[2] = v32 + 1;
          v33 = &v22[2 * v32];
          v33[4] = v29;
          v33[5] = v30;
          v23 = v25;
        }

        while (v26 != v21);
        v9 = v24;

        goto LABEL_33;
      }
    }

    else
    {
      v20 = *(v19 + 16);
      if (v20)
      {
        goto LABEL_24;
      }
    }

    return (*(v3 + 8))(v9, v39);
  }

  return result;
}

void sub_100024650(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation;
  if (*(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation))
  {
    v5 = *(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation);
    swift_retain_n();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (a1)
  {
    v6 = *(v1 + v4);
    if (!v6 || ((v7 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier), swift_beginAccess(), v8 = *v7, v9 = v7[1], v10 = (v6 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier), swift_beginAccess(), v8 == *v10) ? (v11 = v9 == v10[1]) : (v11 = 0), !v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    sub_1000241FC(_swiftEmptyArrayStorage);

    v12 = *(v2 + v4);
    if (!v12 || ((v13 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier), swift_beginAccess(), v14 = *v13, v15 = v13[1], v16 = (v12 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier), swift_beginAccess(), v14 == *v16) ? (v17 = v15 == v16[1]) : (v17 = 0), !v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {
      v18 = qword_1000EACE0;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100006928(v19, qword_1000F3B70);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Attempting to scroll to new playing station.", v22, 2u);
      }

      sub_100026200(a1);

      return;
    }
  }

  else
  {
    sub_1000241FC(_swiftEmptyArrayStorage);
  }

  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100006928(v23, qword_1000F3B70);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Suppressing scroll to playing station - it has not changed", v26, 2u);
  }
}

uint64_t sub_1000249F0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentBandStations);
    *(result + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentBandStations) = v1;

    sub_100023A58();
  }

  return result;
}

void sub_100024A74(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (*a1 == 1 && (swift_beginAccess(), swift_weakLoadStrong()) && (Strong = swift_unknownObjectWeakLoadStrong(), , Strong) && (v4 = *&Strong[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager], , Strong, v4))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_100024B74(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;

    sub_100024650(v4);
    v5 = *(v3 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation);
    *(v3 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation) = v1;
  }

  return result;
}

uint64_t sub_100024BF8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000220D4();
  }

  return result;
}

uint64_t sub_100024C50(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = (result + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_playbackState);
    *v4 = v1;
    v4[1] = v2;
    v5 = *(result + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation);
    if (v5)
    {
      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000B4FC0;
      *(inited + 32) = v5;
      swift_retain_n();
      sub_1000241FC(inited);

      swift_setDeallocating();
      v7 = *(inited + 16);
      return swift_arrayDestroy();
    }

    else
    {
    }
  }

  return result;
}

void sub_100024D54(unint64_t a1)
{
  if (a1 <= 4)
  {
    v2 = *(&off_1000DF430 + a1 + 32);
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006928(v3, qword_1000F3B70);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      v8 = 0xE500000000000000;
      v9 = 0x636973754DLL;
      *v6 = 136446210;
      v10 = 0xE400000000000000;
      v11 = 1802264916;
      v12 = 0xE400000000000000;
      v13 = 1937204558;
      if (v2 != 3)
      {
        v13 = 0x726568744FLL;
        v12 = 0xE500000000000000;
      }

      if (v2 != 2)
      {
        v11 = v13;
        v10 = v12;
      }

      if (v2)
      {
        v9 = 0x7374726F7053;
        v8 = 0xE600000000000000;
      }

      if (v2 <= 1)
      {
        v14 = v9;
      }

      else
      {
        v14 = v11;
      }

      if (v2 <= 1)
      {
        v15 = v8;
      }

      else
      {
        v15 = v10;
      }

      v16 = sub_100043AF0(v14, v15, &v17);

      *(v6 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Category filter changed to %{public}s", v6, 0xCu);
      sub_100006960(v7);
    }

    else
    {
    }

    *(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) = v2;

    sub_1000220D4();
  }
}

unint64_t sub_100024F70()
{
  v1 = IndexPath.section.getter();
  v2 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections;
  if (v1 >= *(*(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections) + 16))
  {
    return 0;
  }

  v3 = IndexPath.row.getter();
  v4 = IndexPath.section.getter();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *(v0 + v2);
  if (v4 >= *(v5 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = *(v5 + 32 * v4 + 32);
  if (!(v6 >> 62))
  {
    if (v3 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    return 0;
  }

LABEL_15:
  if (v3 >= _CocoaArrayWrapper.endIndex.getter())
  {
    return 0;
  }

LABEL_6:
  v7 = IndexPath.section.getter();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = *(v0 + v2);
  if (v7 >= *(v8 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(v8 + 32 * v7 + 32);

  result = IndexPath.row.getter();
  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 8 * result + 32);

LABEL_12:

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000250A4()
{
  v0 = sub_100024F70();
  if (!v0)
  {
    goto LABEL_14;
  }

  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v3 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v4 = Strong, , v4, !v3))
  {
LABEL_13:

LABEL_14:
    v10 = 0;
    return v10 & 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v12 & 1) == 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , !v12))
  {

    goto LABEL_13;
  }

  v5 = (v12 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  if (v6 == *v8 && v7 == v8[1])
  {

    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

unint64_t sub_100025278(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = *(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections);
  if (*(v2 + 16) <= result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v3 = v2 + 32 * result;
  if (*(v3 + 56))
  {
    return 0;
  }

  if (*(v3 + 48))
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v10._object = 0xE000000000000000;
    v7.value._countAndFlagsBits = 0x6F69646152;
    v8._object = 0x80000001000BB7B0;
    v8._countAndFlagsBits = 0xD000000000000012;
    v7.value._object = 0xE500000000000000;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v10);

    v4 = String.init(format:_:)();
  }

  return v4;
}

void sub_10002539C()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v63 = *(v2 - 8);
  v3 = *(v63 + 64);
  v4 = __chkstk_darwin(v2);
  v59 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v54 - v7;
  __chkstk_darwin(v6);
  v10 = &v54 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();

    if (v13)
    {
      v14 = [v13 indexPathsForVisibleItems];

      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = *(v15 + 16);
      v64 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections;
      v57 = v2;
      v58 = v1;
      v62 = v16;
      if (v16)
      {
        v17 = 0;
        v61 = (v63 + 16);
        v56 = (v63 + 32);
        v18 = (v63 + 8);
        v60 = _swiftEmptyArrayStorage;
        while (v17 < *(v15 + 16))
        {
          v19 = (*(v63 + 80) + 32) & ~*(v63 + 80);
          v20 = *(v63 + 72);
          (*(v63 + 16))(v10, v15 + v19 + v20 * v17, v2);
          if (IndexPath.section.getter() >= *(*(v1 + v64) + 16))
          {
            goto LABEL_5;
          }

          v21 = IndexPath.section.getter();
          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          v22 = *(v1 + v64);
          if (v21 >= *(v22 + 16))
          {
            goto LABEL_52;
          }

          if (*(v22 + 32 * v21 + 56))
          {
LABEL_5:
            (*v18)(v10, v2);
          }

          else
          {
            v55 = *v56;
            v55(v59, v10, v2);
            v23 = v60;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v65 = v23;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1000A2CB0(0, v23[2] + 1, 1);
              v23 = v65;
            }

            v26 = v23[2];
            v25 = v23[3];
            if (v26 >= v25 >> 1)
            {
              sub_1000A2CB0(v25 > 1, v26 + 1, 1);
              v23 = v65;
            }

            v23[2] = v26 + 1;
            v60 = v23;
            v27 = v23 + v19 + v26 * v20;
            v2 = v57;
            v55(v27, v59, v57);
            v1 = v58;
          }

          if (v62 == ++v17)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v60 = _swiftEmptyArrayStorage;
LABEL_18:

      v28 = v60[2];
      if (v28)
      {
        v29 = v63 + 16;
        v30 = *(v63 + 16);
        v31 = v60 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
        v63 = *(v63 + 72);
        v18 = (v29 - 8);
        v61 = v30;
        v62 = _swiftEmptyArrayStorage;
        v30(v8, v31, v2);
        while (IndexPath.section.getter() < *(*(v1 + v64) + 16))
        {
          v32 = IndexPath.row.getter();
          v33 = IndexPath.section.getter();
          if ((v33 & 0x8000000000000000) != 0)
          {
            goto LABEL_53;
          }

          v34 = *(v1 + v64);
          if (v33 >= *(v34 + 16))
          {
            goto LABEL_54;
          }

          v35 = *(v34 + 32 * v33 + 32);
          if (v35 >> 62)
          {
            if (v32 >= _CocoaArrayWrapper.endIndex.getter())
            {
              break;
            }
          }

          else if (v32 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          v36 = IndexPath.section.getter();
          if ((v36 & 0x8000000000000000) != 0)
          {
            goto LABEL_55;
          }

          v37 = *(v1 + v64);
          if (v36 >= *(v37 + 16))
          {
            goto LABEL_56;
          }

          v38 = *(v37 + 32 * v36 + 32);

          v39 = IndexPath.row.getter();
          if ((v38 & 0xC000000000000001) != 0)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v39 & 0x8000000000000000) != 0)
            {
              goto LABEL_57;
            }

            if (v39 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v40 = *(v38 + 8 * v39 + 32);
          }

          (*v18)(v8, v2);
          v41 = (v40 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
          swift_beginAccess();
          v43 = *v41;
          v42 = v41[1];

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v1 = v58;
            v44 = v62;
          }

          else
          {
            v44 = sub_1000A2344(0, *(v62 + 2) + 1, 1, v62);
            v1 = v58;
          }

          v46 = *(v44 + 2);
          v45 = *(v44 + 3);
          if (v46 >= v45 >> 1)
          {
            v44 = sub_1000A2344((v45 > 1), v46 + 1, 1, v44);
          }

          *(v44 + 2) = v46 + 1;
          v62 = v44;
          v47 = &v44[16 * v46];
          *(v47 + 4) = v43;
          *(v47 + 5) = v42;
          v2 = v57;
          v30 = v61;
LABEL_21:
          v31 += v63;
          if (!--v28)
          {

            v48 = v62;
            goto LABEL_46;
          }

          v30(v8, v31, v2);
        }

        (*v18)(v8, v2);
        goto LABEL_21;
      }
    }
  }

  v48 = _swiftEmptyArrayStorage;
LABEL_46:
  v18 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_scrollAnchors;
  v49 = *(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_scrollAnchors);
  *(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_scrollAnchors) = v48;

  if (qword_1000EACE0 != -1)
  {
LABEL_59:
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_100006928(v50, qword_1000F3B70);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 134349056;
    *(v53 + 4) = (*(v18 + v1))[2];

    _os_log_impl(&_mh_execute_header, v51, v52, "Updated to %{public}ld scroll anchors.", v53, 0xCu);
  }

  else
  {
  }
}

void sub_100025A60()
{
  v2 = sub_10000368C(&qword_1000EC578, &qword_1000B5940);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v57 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v58 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v63 = &v57 - v12;
  __chkstk_darwin(v11);
  v59 = (&v57 - v13);
  v57 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_scrollAnchors;
  v14 = *(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_scrollAnchors);
  v15 = *(v14 + 16);
  v64 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_dataSource;
  v65 = v0;

  v66 = v6;
  v60 = v7;
  if (v15)
  {
    v16 = 0;
    v17 = v7 + 48;
    v61 = (v7 + 56);
    v62 = (v7 + 32);
    v18 = (v14 + 40);
    v19 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
LABEL_36:
        swift_once();
LABEL_17:
        v26 = type metadata accessor for Logger();
        sub_100006928(v26, qword_1000F3B70);
        v27 = v58;
        (v18)(v58, v1, v6);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v67[0] = v31;
          *v30 = 136446210;
          sub_10002D0B4(&qword_1000EC580);
          v32 = dispatch thunk of CustomStringConvertible.description.getter();
          v34 = v33;
          v35 = *(v17 + 8);
          v35(v27, v66);
          v36 = sub_100043AF0(v32, v34, v67);

          *(v30 + 4) = v36;
          _os_log_impl(&_mh_execute_header, v28, v29, "Scrolling to anchor at index %{public}s", v30, 0xCu);
          sub_100006960(v31);
          v6 = v66;

          v1 = v59;
        }

        else
        {

          v35 = *(v17 + 8);
          v35(v27, v6);
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v50 = Strong;
          v51 = swift_unknownObjectWeakLoadStrong();

          if (v51)
          {
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            [v51 scrollToItemAtIndexPath:isa atScrollPosition:2 animated:0];
          }
        }

        v35(v1, v6);
        return;
      }

      v20 = *(v18 - 1);
      v1 = *v18;
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;
        v67[0] = v20;
        v67[1] = v1;

        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

        v6 = v66;
        if ((*v17)(v5, 1, v66) != 1)
        {
          v1 = *v62;
          (*v62)(v63, v5, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1000A255C(0, v19[2] + 1, 1, v19);
          }

          v24 = v19[2];
          v23 = v19[3];
          if (v24 >= v23 >> 1)
          {
            v19 = sub_1000A255C(v23 > 1, v24 + 1, 1, v19);
          }

          v19[2] = v24 + 1;
          v25 = v19 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v24;
          v6 = v66;
          v1(v25, v63, v66);
          goto LABEL_5;
        }
      }

      else
      {
        v6 = v66;
        (*v61)(v5, 1, 1, v66);
      }

      sub_100007834(v5, &qword_1000EC578, &qword_1000B5940);
LABEL_5:
      ++v16;
      v18 += 16;
      if (v15 == v16)
      {
        goto LABEL_15;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_15:

  if (v19[2])
  {
    v1 = v59;
    v17 = v60;
    v18 = *(v60 + 16);
    (v18)(v59, v19 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v6);

    if (qword_1000EACE0 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_17;
  }

  v37 = v65;
  v38 = v57;
  if (*(*(v65 + v57) + 16))
  {
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006928(v39, qword_1000F3B70);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v67[0] = v43;
      *v42 = 136446210;
      v44 = *(v37 + v38);

      v45 = Array.description.getter();
      v47 = v46;

      v48 = sub_100043AF0(v45, v47, v67);

      *(v42 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v40, v41, "No anchors were available to scroll to: %{public}s", v42, 0xCu);
      sub_100006960(v43);
    }
  }

  else
  {
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006928(v53, qword_1000F3B70);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "No available identifiers to scroll to", v56, 2u);
    }
  }
}

void sub_100026200(uint64_t a1)
{
  v3 = sub_10000368C(&qword_1000EC578, &qword_1000B5940);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v45 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v45 - v13;
  v15 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_dataSource;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v45[1] = v15;
    v45[2] = v1;
    v18 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
    swift_beginAccess();
    v19 = v18[1];
    v46[0] = *v18;
    v46[1] = v19;

    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v14, v6, v7);
      if (qword_1000EACE0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006928(v20, qword_1000F3B70);
      (*(v8 + 16))(v12, v14, v7);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v45[0] = swift_slowAlloc();
        v46[0] = v45[0];
        *v23 = 136446466;
        v24 = *v18;
        v25 = v18[1];

        v26 = sub_100043AF0(v24, v25, v46);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2082;
        sub_10002D0B4(&qword_1000EC580);
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v28;
        v30 = *(v8 + 8);
        v30(v12, v7);
        v31 = sub_100043AF0(v27, v29, v46);

        *(v23 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v21, v22, "Scrolling to station %{public}s at index %{public}s", v23, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v30 = *(v8 + 8);
        v30(v12, v7);
      }

      v41 = swift_unknownObjectWeakLoadStrong();
      if (v41)
      {
        v42 = v41;
        v43 = swift_unknownObjectWeakLoadStrong();

        if (v43)
        {
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v43 scrollToItemAtIndexPath:isa atScrollPosition:2 animated:0];
        }
      }

      v30(v14, v7);
      return;
    }
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  sub_100007834(v6, &qword_1000EC578, &qword_1000B5940);
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100006928(v32, qword_1000F3B70);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v47 = v36;
    *v35 = 136446210;
    v37 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
    swift_beginAccess();
    v39 = *v37;
    v38 = v37[1];

    v40 = sub_100043AF0(v39, v38, &v47);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "Unable to find an index path for station %{public}s", v35, 0xCu);
    sub_100006960(v36);
  }
}

void sub_1000267D8()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v53 - v7;
  __chkstk_darwin(v6);
  v10 = &v53 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation);
  if (!v11)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v57 = v0;
  v13 = Strong;
  v14 = swift_unknownObjectWeakLoadStrong();

  if (!v14)
  {
    goto LABEL_48;
  }

  v54 = v8;
  v55 = v11;
  v59 = v2;
  v15 = [v14 indexPathsForVisibleItems];

  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = *(v16 + 16);
  v64 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections;
  if (!v63)
  {
    v61 = _swiftEmptyArrayStorage;
    v20 = v57;
    v18 = v59;
LABEL_20:

    v31 = v61;
    v32 = v61[2];
    if (v32)
    {
      v33 = (v55 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      v34 = v61 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      swift_beginAccess();
      v35 = 0;
      v62 = (v18 + 8);
      v63 = v18 + 16;
      v36 = v54;
      v60 = v32;
      v61 = v31;
      do
      {
        if (v35 >= v31[2])
        {
          goto LABEL_55;
        }

        (*(v18 + 16))(v36, &v34[*(v18 + 72) * v35], v1);
        if (IndexPath.section.getter() >= *(*(v20 + v64) + 16))
        {
          v50 = 0;
          v49 = 0xE000000000000000;
          goto LABEL_39;
        }

        v37 = v33;
        v38 = IndexPath.row.getter();
        v39 = IndexPath.section.getter();
        if ((v39 & 0x8000000000000000) != 0)
        {
          goto LABEL_56;
        }

        v40 = *(v20 + v64);
        if (v39 >= *(v40 + 16))
        {
          goto LABEL_57;
        }

        v41 = *(v40 + 32 * v39 + 32);
        if (v41 >> 62)
        {
          if (v38 < _CocoaArrayWrapper.endIndex.getter())
          {
LABEL_28:
            v42 = IndexPath.section.getter();
            if ((v42 & 0x8000000000000000) != 0)
            {
              goto LABEL_58;
            }

            v43 = *(v20 + v64);
            if (v42 >= *(v43 + 16))
            {
              goto LABEL_59;
            }

            v44 = *(v43 + 32 * v42 + 32);

            v45 = IndexPath.row.getter();
            if ((v44 & 0xC000000000000001) != 0)
            {
              v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v45 & 0x8000000000000000) != 0)
              {
                goto LABEL_60;
              }

              if (v45 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_61;
              }

              v46 = *(v44 + 8 * v45 + 32);
            }

            v47 = (v46 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
            swift_beginAccess();
            v48 = *v47;
            v49 = v47[1];

            v50 = v48;
            v20 = v57;
            v32 = v60;
            goto LABEL_38;
          }
        }

        else if (v38 < *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v50 = 0;
        v49 = 0xE000000000000000;
LABEL_38:
        v33 = v37;
        v31 = v61;
LABEL_39:
        if (v50 == *v33 && v49 == v33[1])
        {

          (*v62)(v36, v1);
LABEL_50:

          return;
        }

        v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v62)(v36, v1);
        if (v52)
        {
          goto LABEL_50;
        }

        ++v35;
        v18 = v59;
      }

      while (v32 != v35);
    }

LABEL_48:

    return;
  }

  v17 = 0;
  v18 = v59;
  v62 = (v59 + 16);
  v58 = (v59 + 32);
  v19 = (v59 + 8);
  v61 = _swiftEmptyArrayStorage;
  v56 = v1;
  v20 = v57;
  while (v17 < *(v16 + 16))
  {
    v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v22 = *(v18 + 72);
    (*(v18 + 16))(v10, v16 + v21 + v22 * v17, v1);
    if (IndexPath.section.getter() >= *(*(v20 + v64) + 16))
    {
      goto LABEL_6;
    }

    v23 = IndexPath.section.getter();
    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

    v24 = *(v20 + v64);
    if (v23 >= *(v24 + 16))
    {
      goto LABEL_54;
    }

    if (*(v24 + 32 * v23 + 56))
    {
LABEL_6:
      (*v19)(v10, v1);
    }

    else
    {
      v25 = *v58;
      (*v58)(v60, v10, v1);
      v26 = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000A2CB0(0, v26[2] + 1, 1);
        v26 = v65;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        sub_1000A2CB0(v28 > 1, v29 + 1, 1);
        v26 = v65;
      }

      v26[2] = v29 + 1;
      v61 = v26;
      v30 = v26 + v21 + v29 * v22;
      v1 = v56;
      v25(v30, v60, v56);
      v20 = v57;
      v18 = v59;
    }

    if (v63 == ++v17)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t sub_100026DEC()
{
  v1 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage__emptyTitle;
  v2 = sub_10000368C(&qword_1000EC588, &qword_1000B59D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections);

  swift_unknownObjectWeakDestroy();
  v4 = *(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_cancelSet);

  v5 = *(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_stationCancelSet);

  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8);

  v7 = *(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentBandStations);

  v8 = *(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_scrollAnchors);

  v9 = *(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation);

  return v0;
}

uint64_t sub_100026EEC()
{
  sub_100026DEC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for RadioStationDataSourceStorage()
{
  result = qword_1000EC2B0;
  if (!qword_1000EC2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100026F98()
{
  sub_10002707C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10002707C()
{
  if (!qword_1000EC2C0)
  {
    sub_100005780(&unk_1000EC2C8, &qword_1000B5750);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000EC2C0);
    }
  }
}

uint64_t sub_1000270E0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RadioStationDataSourceStorage();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100027120(uint64_t a1)
{
  if (!a1)
  {

    v7 = sub_10002BC68(v4);
    sub_100027F64(&v7);
    v2 = v7;
    if ((v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
    {
      type metadata accessor for TerrestrialRadioStation();

      v6 = _bridgeCocoaArray<A>(_:)();

      return v6;
    }

    goto LABEL_7;
  }

  __chkstk_darwin(a1);

  v7 = sub_10002BC68(v1);
  sub_10002CD6C(&v7, sub_10002F018);
  v2 = v7;
  if ((v7 & 0x8000000000000000) == 0 && (v7 & 0x4000000000000000) == 0)
  {
LABEL_7:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for TerrestrialRadioStation();

    return v2;
  }

  type metadata accessor for TerrestrialRadioStation();

  v3 = _bridgeCocoaArray<A>(_:)();

  return v3;
}

uint64_t sub_100027294(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_100080B70(a2, a3);
    }

    if (a4)
    {
      if (qword_1000EACE0 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006928(v11, qword_1000F3B70);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Attempting to return to playing station.", v14, 2u);
      }

      if (*(v8 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation))
      {
        v15 = *(v8 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation);

        sub_100026200(v16);
      }

      sub_10002539C();
    }

    else
    {
      if (qword_1000EACE0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006928(v17, qword_1000F3B70);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Attempting to return to anchors.", v20, 2u);
      }

      sub_100025A60();
    }
  }

  return result;
}

void *sub_1000274CC(uint64_t a1, uint64_t a2)
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

  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_100027554(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000368C(&unk_1000EEED0, &qword_1000B5938);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

unint64_t sub_1000275D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10002B918(a1, a2, v6);
}

unint64_t sub_100027650(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return sub_10002B9D0(a1, a2, v6);
}

unint64_t sub_1000276E4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10002BA9C(a1, v4);
}

unint64_t sub_100027728(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10002BB64(a1, v4);
}

uint64_t sub_1000277BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000368C(&qword_1000EC570, &qword_1000B5930);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      if (v22)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_38;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_100027A84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000368C(&unk_1000EC610, &unk_1000B6700);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100027D28(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10002BD10(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v26 = v2 + 32;
  v31[0] = v2 + 32;
  v31[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = (v2 + 32);
      v25 = v4;
      do
      {
        v28 = v9;
        v11 = *(v26 + 8 * v9);
        v32 = v8;
        v12 = v8;
        v27 = v10;
        do
        {
          v13 = *v10;
          v14 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          v15 = *(v11 + v14);
          v16 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          v17 = *(v13 + v16);
          v18 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
          swift_beginAccess();
          v19 = *(v11 + v18);

          v20 = v15;
          v21 = v17;
          LOBYTE(v19) = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

          if ((v19 & 1) == 0)
          {
            break;
          }

          v22 = *v10;
          v11 = v10[1];
          *v10 = v11;
          v10[1] = v22;
          --v10;
        }

        while (!__CFADD__(v12++, 1));
        v9 = v28 + 1;
        v10 = v27 + 1;
        v8 = v32 - 1;
      }

      while (v28 + 1 != v25);
    }
  }

  else
  {
    v6 = v5;
    if (v4 >= 2)
    {
      type metadata accessor for TerrestrialRadioStation();
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v30[0] = ((v7 & 0xFFFFFFFFFFFFFF8) + 32);
    v30[1] = (v4 >> 1);
    sub_100028914(v30, v29, v31, v6);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100027F64(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10002BD10(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10002804C(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100027FE0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10002BD24(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100028150(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10002804C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for TerrestrialRadioStation();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1000290BC(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100028248(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_100028150(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10002A190(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100028650(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100028248(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v40 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = result - a3;
LABEL_6:
    v35 = a3;
    v6 = *(v40 + 8 * a3);
    v33 = v5;
    v34 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
      swift_beginAccess();
      if (*(v6 + v8) == 3)
      {
        v9 = (v6 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
        swift_beginAccess();
        v38 = *v9;
        v39 = v9[1];
        v10 = (v7 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
        swift_beginAccess();
        v36 = *v10;
        v37 = v10[1];
        sub_100020F58();

        v11 = StringProtocol.caseInsensitiveCompare<A>(_:)();
        if (v11 == -1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v12 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
        swift_beginAccess();
        v13 = *(v6 + v12);

        v14 = v13;
        CAFMediaItem.primaryDisplayName(in:)();

        v15 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
        swift_beginAccess();
        v16 = *(v7 + v15);
        v17 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
        swift_beginAccess();
        v18 = *(v7 + v17);
        v19 = v16;
        CAFMediaItem.primaryDisplayName(in:)();

        sub_100020F58();
        v11 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        if (v11 == -1)
        {
          goto LABEL_18;
        }
      }

      if (v11 == 1)
      {
        goto LABEL_4;
      }

      v20 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v21 = *(v6 + v20);
      CAFMediaItem.secondaryDisplayName.getter();

      v22 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v23 = *(v7 + v22);
      CAFMediaItem.secondaryDisplayName.getter();

      sub_100020F58();
      v24 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      if (v24 == -1)
      {
LABEL_18:

        goto LABEL_19;
      }

      if (v24 == 1)
      {
LABEL_4:

        goto LABEL_5;
      }

      v25 = TerrestrialRadioStation.formattedFrequency.getter();
      v27 = v26;
      if (v25 == TerrestrialRadioStation.formattedFrequency.getter() && v27 == v28)
      {

LABEL_5:
        a3 = v35 + 1;
        v4 = v34 + 1;
        v5 = v33 - 1;
        if (v35 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_19:
      if (!v40)
      {
        __break(1u);
        return result;
      }

      v30 = *v4;
      v6 = v4[1];
      *v4 = v6;
      v4[1] = v30;
      --v4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_100028650(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v4 = *a4 + 32 * a3 + 24;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v23 = v5;
    while (1)
    {
      v7 = (v4 - 24);
      v6 = *(v4 - 24);
      v8 = *(v4 - 8);
      v28 = *(v4 - 56);
      v9 = *(v4 - 48);
      v10 = *(v4 - 40);
      if (v8)
      {
        v11 = *(v4 - 16);
        if (v10)
        {
          v12 = *(v4 - 48);
        }

        else
        {
          v12 = 0;
        }

        v13 = 0xE000000000000000;
        if (v10)
        {
          v13 = *(v4 - 40);
        }

        v29 = v13;
        if (v8 == 0xE100000000000000 && v11 == 35)
        {
LABEL_4:
          swift_bridgeObjectRetain_n();

LABEL_5:
          a3 = v25 + 1;
          v4 = v24 + 32;
          v5 = v23 - 1;
          if (v25 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v14 = *(v4 - 8);
      }

      else
      {
        v11 = 0;
        v12 = v10 ? *(v4 - 48) : 0;
        v14 = 0xE000000000000000;
        v15 = v10 ? *(v4 - 40) : 0xE000000000000000;
        v29 = v15;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_4;
      }

      v16 = v12 == 35 && v29 == 0xE100000000000000;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        if (v11 == v12 && v14 == v29)
        {
          goto LABEL_4;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_bridgeObjectRetain_n();

        if ((v26 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v27)
      {
        break;
      }

      v18 = *(v4 - 56);
      v17 = *(v4 - 40);
      *(v4 - 32) = *v4;
      v4 -= 32;
      v19 = *(v4 + 8);
      v20 = *(v4 + 16);
      *v7 = v18;
      v7[1] = v17;
      *(v4 - 24) = v19;
      *(v4 - 16) = v20;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100028914(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_86:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_118:
      v10 = sub_10002B800(v10);
    }

    v106 = *(v10 + 2);
    if (v106 >= 2)
    {
      while (*v6)
      {
        v107 = v10;
        v10 = (v106 - 1);
        v108 = *&v107[16 * v106];
        v109 = *&v107[16 * v106 + 24];
        sub_10002AB80((*v6 + 8 * v108), (*v6 + 8 * *&v107[16 * v106 + 16]), (*v6 + 8 * v109), v9);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v109 < v108)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_10002B800(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_112;
        }

        v110 = &v107[16 * v106];
        *v110 = v108;
        *(v110 + 1) = v109;
        sub_10002B774(v106 - 1);
        v10 = v107;
        v106 = *(v107 + 2);
        if (v106 <= 1)
        {
          goto LABEL_96;
        }
      }

      goto LABEL_122;
    }

LABEL_96:

    return;
  }

  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v121 = v8;
      v113 = v10;
      v115 = v5;
      v12 = *(*v6 + 8 * v9);
      v13 = 8 * v11;
      v14 = (*v6 + 8 * v11);
      v16 = *v14;
      v15 = v14 + 2;
      v118 = v11;
      v17 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v18 = *(v12 + v17);
      v19 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v20 = *(v16 + v19);
      v21 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
      swift_beginAccess();
      v22 = *(v12 + v21);

      v23 = v18;
      v24 = v20;
      v123 = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

      v25 = (v118 + 2);
      while (1)
      {
        v9 = v121;
        if (v121 == v25)
        {
          break;
        }

        v27 = *(v15 - 1);
        v26 = *v15;
        v28 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
        swift_beginAccess();
        v29 = *(v26 + v28);
        v30 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
        swift_beginAccess();
        v31 = *(v27 + v30);
        v32 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
        swift_beginAccess();
        v33 = *(v26 + v32);

        v34 = v29;
        v35 = v31;
        LODWORD(v33) = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)() & 1;

        ++v25;
        ++v15;
        if ((v123 & 1) != v33)
        {
          v9 = (v25 - 1);
          break;
        }
      }

      v10 = v113;
      v5 = v115;
      v6 = a3;
      v7 = a1;
      v11 = v118;
      if (v123)
      {
        if (v9 < v118)
        {
          goto LABEL_115;
        }

        if (v118 < v9)
        {
          v36 = 8 * v9 - 8;
          v37 = v9;
          v38 = v118;
          do
          {
            if (v38 != --v37)
            {
              v40 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v39 = *(v40 + v13);
              *(v40 + v13) = *(v40 + v36);
              *(v40 + v36) = v39;
            }

            ++v38;
            v36 -= 8;
            v13 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v9 < v41)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_114;
      }

      if (v9 - v11 < a4)
      {
        v42 = (v11 + a4);
        if (__OFADD__(v11, a4))
        {
          goto LABEL_116;
        }

        if (v42 >= v41)
        {
          v42 = v6[1];
        }

        if (v42 < v11)
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (v9 != v42)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v9 < v11)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10002B814(0, *(v10 + 2) + 1, 1, v10);
    }

    v60 = *(v10 + 2);
    v59 = *(v10 + 3);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      v10 = sub_10002B814((v59 > 1), v60 + 1, 1, v10);
    }

    *(v10 + 2) = v61;
    v62 = &v10[16 * v60];
    *(v62 + 4) = v11;
    *(v62 + 5) = v9;
    v63 = *v7;
    if (!*v7)
    {
      goto LABEL_123;
    }

    if (v60)
    {
      while (1)
      {
        v64 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v65 = *(v10 + 4);
          v66 = *(v10 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_55:
          if (v68)
          {
            goto LABEL_102;
          }

          v81 = &v10[16 * v61];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_105;
          }

          v87 = &v10[16 * v64 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_108;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_109;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v61 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v91 = &v10[16 * v61];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_69:
        if (v86)
        {
          goto LABEL_104;
        }

        v94 = &v10[16 * v64];
        v96 = *(v94 + 4);
        v95 = *(v94 + 5);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_107;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_76:
        v102 = v64 - 1;
        if (v64 - 1 >= v61)
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        if (!*v6)
        {
          goto LABEL_120;
        }

        v103 = *&v10[16 * v102 + 32];
        v104 = *&v10[16 * v64 + 40];
        sub_10002AB80((*v6 + 8 * v103), (*v6 + 8 * *&v10[16 * v64 + 32]), (*v6 + 8 * v104), v63);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v104 < v103)
        {
          goto LABEL_98;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10002B800(v10);
        }

        if (v102 >= *(v10 + 2))
        {
          goto LABEL_99;
        }

        v105 = &v10[16 * v102];
        *(v105 + 4) = v103;
        *(v105 + 5) = v104;
        sub_10002B774(v64);
        v61 = *(v10 + 2);
        if (v61 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = &v10[16 * v61 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_100;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_101;
      }

      v76 = &v10[16 * v61];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_103;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_106;
      }

      if (v80 >= v72)
      {
        v98 = &v10[16 * v64 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_110;
        }

        if (v67 < v101)
        {
          v64 = v61 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v8 = v6[1];
    v7 = a1;
    if (v9 >= v8)
    {
      goto LABEL_86;
    }
  }

  v114 = v10;
  v116 = v5;
  v43 = *v6;
  v44 = (*v6 + 8 * v9 - 8);
  v119 = v11;
  v120 = v42;
  v45 = v11 - v9;
LABEL_28:
  v122 = v44;
  v124 = v9;
  v46 = *(v43 + 8 * v9);
  v47 = v45;
  while (1)
  {
    v48 = *v44;
    v49 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v50 = *(v46 + v49);
    v51 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v52 = *(v48 + v51);
    v53 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
    swift_beginAccess();
    v54 = *(v46 + v53);

    v55 = v50;
    v56 = v52;
    LOBYTE(v54) = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

    if ((v54 & 1) == 0)
    {
LABEL_27:
      v9 = (v124 + 1);
      v44 = v122 + 1;
      --v45;
      if (v124 + 1 != v120)
      {
        goto LABEL_28;
      }

      v9 = v120;
      v10 = v114;
      v5 = v116;
      v6 = a3;
      v7 = a1;
      v11 = v119;
      goto LABEL_35;
    }

    if (!v43)
    {
      break;
    }

    v57 = *v44;
    v46 = v44[1];
    *v44 = v46;
    v44[1] = v57;
    --v44;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
}

uint64_t sub_1000290BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v156 = result;
  v8 = *(a3 + 8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      v158 = v9;
      if (v9 + 1 >= v8)
      {
        v161 = v9 + 1;
      }

      else
      {
        v5 = *v7;
        v11 = *(*v7 + 8 * (v9 + 1));
        v12 = *(*v7 + 8 * v9);

        v13 = sub_100043648(v11, v12);

        v14 = v158;
        v161 = v158 + 2;
        if (v158 + 2 < v8)
        {
          v151 = v10;
          v153 = v6;
          v15 = &v5[v158 + 2];
          while (1)
          {
            v16 = *(v15 - 1);
            v5 = *v15;
            v17 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
            swift_beginAccess();
            if (*(v5 + v17) == 3)
            {
              v18 = (v5 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
              swift_beginAccess();
              v165 = *v18;
              v167 = v18[1];
              v19 = (v16 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
              swift_beginAccess();
              v169 = *v19;
              v171 = v19[1];
              sub_100020F58();

              v20 = StringProtocol.caseInsensitiveCompare<A>(_:)();
              if (v20 == 1)
              {
                goto LABEL_7;
              }
            }

            else
            {
              v21 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
              swift_beginAccess();
              v22 = *(v5 + v21);

              v23 = v22;
              CAFMediaItem.primaryDisplayName(in:)();

              v24 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
              swift_beginAccess();
              v25 = *(v16 + v24);
              v26 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
              swift_beginAccess();
              v27 = *(v16 + v26);
              v28 = v25;
              CAFMediaItem.primaryDisplayName(in:)();

              sub_100020F58();
              v20 = StringProtocol.caseInsensitiveCompare<A>(_:)();

              if (v20 == 1)
              {
LABEL_7:

                if (v13)
                {
                  goto LABEL_33;
                }

                goto LABEL_8;
              }
            }

            if (v20 == -1)
            {

              if ((v13 & 1) == 0)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v29 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
              swift_beginAccess();
              v30 = *(v5 + v29);
              CAFMediaItem.secondaryDisplayName.getter();

              v31 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
              swift_beginAccess();
              v32 = *(v16 + v31);
              CAFMediaItem.secondaryDisplayName.getter();

              sub_100020F58();
              v33 = StringProtocol.caseInsensitiveCompare<A>(_:)();

              if (v33 == 1)
              {

                if (v13)
                {
LABEL_33:
                  v10 = v151;
                  v6 = v153;
                  v7 = a3;
                  v14 = v158;
                  goto LABEL_34;
                }
              }

              else if (v33 == -1)
              {

                if ((v13 & 1) == 0)
                {
LABEL_42:
                  v10 = v151;
                  v6 = v153;
                  v7 = a3;
                  goto LABEL_43;
                }
              }

              else
              {
                v34 = TerrestrialRadioStation.formattedFrequency.getter();
                v36 = v35;
                if (v34 == TerrestrialRadioStation.formattedFrequency.getter() && v36 == v37)
                {
                  v38 = 0;
                }

                else
                {
                  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
                }

                if ((v13 ^ v38))
                {
                  goto LABEL_30;
                }
              }
            }

LABEL_8:
            ++v15;
            if (v8 == ++v161)
            {
              v161 = v8;
LABEL_30:
              v10 = v151;
              v6 = v153;
              v7 = a3;
              v14 = v158;
              break;
            }
          }
        }

        if (v13)
        {
LABEL_34:
          v39 = v161;
          if (v161 < v14)
          {
            goto LABEL_165;
          }

          if (v14 < v161)
          {
            v40 = 8 * v161 - 8;
            v41 = v14;
            do
            {
              if (v14 != --v39)
              {
                v43 = *v7;
                if (!*v7)
                {
                  goto LABEL_171;
                }

                v42 = v43[v41];
                v43[v41] = *(v43 + v40);
                *(v43 + v40) = v42;
              }

              ++v14;
              v40 -= 8;
              ++v41;
            }

            while (v14 < v39);
          }
        }
      }

LABEL_43:
      v44 = *(v7 + 8);
      if (v161 >= v44)
      {
        goto LABEL_85;
      }

      if (__OFSUB__(v161, v158))
      {
        goto LABEL_164;
      }

      if (v161 - v158 >= a4)
      {
        goto LABEL_85;
      }

      if (__OFADD__(v158, a4))
      {
        goto LABEL_166;
      }

      if (v158 + a4 < v44)
      {
        v44 = v158 + a4;
      }

      if (v44 < v158)
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      if (v161 == v44)
      {
        goto LABEL_85;
      }

      v157 = v44;
      v152 = v10;
      v154 = v6;
      v163 = *v7;
      v45 = (*v7 + 8 * v161 - 8);
      v46 = v158 - v161;
      v47 = v161;
      while (2)
      {
        v162 = v47;
        v48 = v163[v47];
        v159 = v46;
        v160 = v45;
        v49 = v46;
        while (1)
        {
          v164 = v49;
          v50 = *v45;
          v51 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
          swift_beginAccess();
          if (*(v48 + v51) == 3)
          {
            v52 = (v48 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
            swift_beginAccess();
            v166 = *v52;
            v168 = v52[1];
            v53 = (v50 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
            swift_beginAccess();
            v170 = *v53;
            v172 = v53[1];
            sub_100020F58();

            v54 = StringProtocol.caseInsensitiveCompare<A>(_:)();
            if (v54 == -1)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v55 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
            swift_beginAccess();
            v56 = *(v48 + v55);

            v57 = v56;
            CAFMediaItem.primaryDisplayName(in:)();
            v5 = v58;

            v59 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
            swift_beginAccess();
            v60 = *(v50 + v59);
            v61 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
            swift_beginAccess();
            v62 = *(v50 + v61);
            v63 = v60;
            CAFMediaItem.primaryDisplayName(in:)();

            sub_100020F58();
            v54 = StringProtocol.caseInsensitiveCompare<A>(_:)();

            if (v54 == -1)
            {
              goto LABEL_65;
            }
          }

          if (v54 == 1)
          {
            goto LABEL_52;
          }

          v64 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          v65 = *(v48 + v64);
          CAFMediaItem.secondaryDisplayName.getter();
          v5 = v66;

          v67 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          v68 = *(v50 + v67);
          CAFMediaItem.secondaryDisplayName.getter();

          sub_100020F58();
          v69 = StringProtocol.caseInsensitiveCompare<A>(_:)();

          if (v69 == -1)
          {
LABEL_65:

            goto LABEL_80;
          }

          if (v69 == 1)
          {
LABEL_52:

            goto LABEL_53;
          }

          v70 = *(v48 + v51);
          if (v70 == 2 || v70 == 8)
          {
            sub_10000368C(&unk_1000EEE80, &unk_1000B58C0);
            v71 = swift_allocObject();
            *(v71 + 16) = xmmword_1000B4760;
            v72 = (v48 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency);
            swift_beginAccess();
            LODWORD(v73) = *v72;
            *(v71 + 56) = &type metadata for Double;
            *(v71 + 64) = &protocol witness table for Double;
            *(v71 + 32) = v73 / 1000.0;
            v5 = String.init(format:_:)();
            v75 = v74;
          }

          else
          {
            v76 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
            swift_beginAccess();
            v77 = *(v48 + v76);
            sub_10000368C(&unk_1000EEE80, &unk_1000B58C0);
            v78 = swift_allocObject();
            *(v78 + 16) = xmmword_1000B5700;
            if (v77 >= 0x64)
            {
              v79 = 0;
              v81 = 0xE000000000000000;
            }

            else
            {
              sub_10000368C(&qword_1000EC560, &unk_1000B5920);
              sub_100005870(&qword_1000EC568, &qword_1000EC560, &unk_1000B5920);
              v79 = String.init<A>(_:)();
              v81 = v80;
            }

            *(v78 + 56) = &type metadata for String;
            *(v78 + 64) = sub_10002BE6C();
            *(v78 + 32) = v79;
            *(v78 + 40) = v81;
            v82 = *(v48 + v76);
            *(v78 + 96) = &type metadata for UInt;
            *(v78 + 104) = &protocol witness table for UInt;
            *(v78 + 72) = v82;
            v5 = String.init(format:_:)();
            v75 = v83;
          }

          v84 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
          swift_beginAccess();
          v85 = *(v50 + v84);
          if (v85 == 2 || v85 == 8)
          {
            sub_10000368C(&unk_1000EEE80, &unk_1000B58C0);
            v86 = swift_allocObject();
            *(v86 + 16) = xmmword_1000B4760;
            v87 = (v50 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency);
            swift_beginAccess();
            LODWORD(v88) = *v87;
            *(v86 + 56) = &type metadata for Double;
            *(v86 + 64) = &protocol witness table for Double;
            *(v86 + 32) = v88 / 1000.0;
          }

          else
          {
            v89 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
            swift_beginAccess();
            v90 = *(v50 + v89);
            sub_10000368C(&unk_1000EEE80, &unk_1000B58C0);
            v91 = swift_allocObject();
            *(v91 + 16) = xmmword_1000B5700;
            if (v90 >= 0x64)
            {
              v92 = 0;
              v94 = 0xE000000000000000;
            }

            else
            {
              sub_10000368C(&qword_1000EC560, &unk_1000B5920);
              sub_100005870(&qword_1000EC568, &qword_1000EC560, &unk_1000B5920);
              v92 = String.init<A>(_:)();
              v94 = v93;
            }

            *(v91 + 56) = &type metadata for String;
            *(v91 + 64) = sub_10002BE6C();
            *(v91 + 32) = v92;
            *(v91 + 40) = v94;
            v95 = *(v50 + v89);
            *(v91 + 96) = &type metadata for UInt;
            *(v91 + 104) = &protocol witness table for UInt;
            *(v91 + 72) = v95;
          }

          if (v5 == String.init(format:_:)() && v75 == v96)
          {
            break;
          }

          v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v97 & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_80:
          if (!v163)
          {
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          v98 = *v45;
          v48 = v45[1];
          *v45 = v48;
          v45[1] = v98;
          --v45;
          v49 = v164 + 1;
          if (v164 == -1)
          {
            goto LABEL_53;
          }
        }

LABEL_53:
        v47 = v162 + 1;
        v45 = v160 + 1;
        v46 = v159 - 1;
        if (v162 + 1 != v157)
        {
          continue;
        }

        break;
      }

      v161 = v157;
      v10 = v152;
      v6 = v154;
      v7 = a3;
LABEL_85:
      if (v161 < v158)
      {
        goto LABEL_163;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10002B814(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v100 = *(v10 + 2);
      v99 = *(v10 + 3);
      v101 = v100 + 1;
      v102 = v158;
      if (v100 >= v99 >> 1)
      {
        result = sub_10002B814((v99 > 1), v100 + 1, 1, v10);
        v102 = v158;
        v10 = result;
      }

      *(v10 + 2) = v101;
      v103 = &v10[16 * v100];
      *(v103 + 4) = v102;
      *(v103 + 5) = v161;
      v5 = *v156;
      if (!*v156)
      {
        goto LABEL_173;
      }

      if (v100)
      {
        while (2)
        {
          v104 = v101 - 1;
          if (v101 >= 4)
          {
            v109 = &v10[16 * v101 + 32];
            v110 = *(v109 - 64);
            v111 = *(v109 - 56);
            v115 = __OFSUB__(v111, v110);
            v112 = v111 - v110;
            if (v115)
            {
              goto LABEL_150;
            }

            v114 = *(v109 - 48);
            v113 = *(v109 - 40);
            v115 = __OFSUB__(v113, v114);
            v107 = v113 - v114;
            v108 = v115;
            if (v115)
            {
              goto LABEL_151;
            }

            v116 = &v10[16 * v101];
            v118 = *v116;
            v117 = *(v116 + 1);
            v115 = __OFSUB__(v117, v118);
            v119 = v117 - v118;
            if (v115)
            {
              goto LABEL_153;
            }

            v115 = __OFADD__(v107, v119);
            v120 = v107 + v119;
            if (v115)
            {
              goto LABEL_156;
            }

            if (v120 >= v112)
            {
              v138 = &v10[16 * v104 + 32];
              v140 = *v138;
              v139 = *(v138 + 1);
              v115 = __OFSUB__(v139, v140);
              v141 = v139 - v140;
              if (v115)
              {
                goto LABEL_160;
              }

              if (v107 < v141)
              {
                v104 = v101 - 2;
              }
            }

            else
            {
LABEL_105:
              if (v108)
              {
                goto LABEL_152;
              }

              v121 = &v10[16 * v101];
              v123 = *v121;
              v122 = *(v121 + 1);
              v124 = __OFSUB__(v122, v123);
              v125 = v122 - v123;
              v126 = v124;
              if (v124)
              {
                goto LABEL_155;
              }

              v127 = &v10[16 * v104 + 32];
              v129 = *v127;
              v128 = *(v127 + 1);
              v115 = __OFSUB__(v128, v129);
              v130 = v128 - v129;
              if (v115)
              {
                goto LABEL_158;
              }

              if (__OFADD__(v125, v130))
              {
                goto LABEL_159;
              }

              if (v125 + v130 < v107)
              {
                goto LABEL_119;
              }

              if (v107 < v130)
              {
                v104 = v101 - 2;
              }
            }
          }

          else
          {
            if (v101 == 3)
            {
              v105 = *(v10 + 4);
              v106 = *(v10 + 5);
              v115 = __OFSUB__(v106, v105);
              v107 = v106 - v105;
              v108 = v115;
              goto LABEL_105;
            }

            v131 = &v10[16 * v101];
            v133 = *v131;
            v132 = *(v131 + 1);
            v115 = __OFSUB__(v132, v133);
            v125 = v132 - v133;
            v126 = v115;
LABEL_119:
            if (v126)
            {
              goto LABEL_154;
            }

            v134 = &v10[16 * v104];
            v136 = *(v134 + 4);
            v135 = *(v134 + 5);
            v115 = __OFSUB__(v135, v136);
            v137 = v135 - v136;
            if (v115)
            {
              goto LABEL_157;
            }

            if (v137 < v125)
            {
              break;
            }
          }

          v142 = v104 - 1;
          if (v104 - 1 >= v101)
          {
            __break(1u);
LABEL_148:
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
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          if (!*v7)
          {
            goto LABEL_170;
          }

          v143 = *&v10[16 * v142 + 32];
          v144 = *&v10[16 * v104 + 40];
          sub_10002AF4C((*v7 + 8 * v143), (*v7 + 8 * *&v10[16 * v104 + 32]), (*v7 + 8 * v144), v5);
          if (v6)
          {
          }

          if (v144 < v143)
          {
            goto LABEL_148;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10002B800(v10);
          }

          if (v142 >= *(v10 + 2))
          {
            goto LABEL_149;
          }

          v145 = &v10[16 * v142];
          *(v145 + 4) = v143;
          *(v145 + 5) = v144;
          result = sub_10002B774(v104);
          v101 = *(v10 + 2);
          if (v101 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v8 = *(v7 + 8);
      v9 = v161;
      if (v161 >= v8)
      {
        goto LABEL_136;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_136:
  v5 = *v156;
  if (!*v156)
  {
    goto LABEL_174;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_168:
    result = sub_10002B800(v10);
    v10 = result;
  }

  v146 = *(v10 + 2);
  if (v146 < 2)
  {
  }

  while (*v7)
  {
    v147 = *&v10[16 * v146];
    v148 = *&v10[16 * v146 + 24];
    sub_10002AF4C((*v7 + 8 * v147), (*v7 + 8 * *&v10[16 * v146 + 16]), (*v7 + 8 * v148), v5);
    if (v6)
    {
    }

    if (v148 < v147)
    {
      goto LABEL_161;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10002B800(v10);
    }

    if (v146 - 2 >= *(v10 + 2))
    {
      goto LABEL_162;
    }

    v149 = &v10[16 * v146];
    *v149 = v147;
    *(v149 + 1) = v148;
    result = sub_10002B774(v146 - 1);
    v146 = *(v10 + 2);
    if (v146 <= 1)
    {
    }
  }

LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
  return result;
}

uint64_t sub_10002A190(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v116 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_147:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_186;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_180:
      result = sub_10002B800(v9);
      v9 = result;
    }

    v137 = v9;
    v109 = *(v9 + 2);
    if (v109 >= 2)
    {
      while (*a3)
      {
        v110 = *&v9[16 * v109];
        v111 = *&v9[16 * v109 + 24];
        sub_10002B1E4((*a3 + 32 * v110), (*a3 + 32 * *&v9[16 * v109 + 16]), *a3 + 32 * v111, v5);
        if (v6)
        {
        }

        if (v111 < v110)
        {
          goto LABEL_173;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10002B800(v9);
        }

        if (v109 - 2 >= *(v9 + 2))
        {
          goto LABEL_174;
        }

        v112 = &v9[16 * v109];
        *v112 = v110;
        *(v112 + 1) = v111;
        v137 = v9;
        result = sub_10002B774(v109 - 1);
        v9 = v137;
        v109 = *(v137 + 2);
        if (v109 <= 1)
        {
        }
      }

      goto LABEL_184;
    }
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
      goto LABEL_51;
    }

    v11 = *a3;
    v12 = *a3 + 32 * (v8 + 1);
    v5 = *v12;
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    LOBYTE(v12) = *(v12 + 24);
    v135[0] = v5;
    v135[1] = v13;
    v135[2] = v14;
    v136 = v12;
    v15 = (v11 + 32 * v8);
    v17 = *v15;
    v16 = v15[1];
    v18 = v15[2];
    LOBYTE(v15) = *(v15 + 24);
    v133[0] = v17;
    v133[1] = v16;
    v133[2] = v18;
    v134 = v15;

    v129 = sub_100075C2C(v135, v133);
    if (v6)
    {
    }

    v19 = v10;
    v20 = v10 + 2;
    v114 = v19;
    v128 = 32 * v19;
    v21 = (v11 + 32 * v19 + 40);
    v120 = v9;
    v124 = v7;
    while (v7 != v20)
    {
      v23 = v21[3];
      v24 = v21[5];
      v25 = *v21;
      v26 = v21[1];
      v131 = *(v21 - 1);
      if (v24)
      {
        v27 = v21[4];
        if (v26)
        {
          v28 = *v21;
        }

        else
        {
          v28 = 0;
        }

        if (v26)
        {
          v29 = v21[1];
        }

        else
        {
          v29 = 0xE000000000000000;
        }

        v5 = 0xE100000000000000;
        if (v24 == 0xE100000000000000 && v27 == 35)
        {
          goto LABEL_7;
        }

        v5 = v21[5];
      }

      else
      {
        v27 = 0;
        if (v26)
        {
          v28 = *v21;
        }

        else
        {
          v28 = 0;
        }

        v5 = 0xE000000000000000;
        if (v26)
        {
          v29 = v21[1];
        }

        else
        {
          v29 = 0xE000000000000000;
        }
      }

      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v28 == 35 && v29 == 0xE100000000000000)
        {
          v22 = 1;
          goto LABEL_8;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v22 = 1;
          goto LABEL_8;
        }

        if (v27 != v28 || v5 != v29)
        {
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_8;
        }
      }

LABEL_7:
      v22 = 0;
LABEL_8:
      swift_bridgeObjectRetain_n();

      ++v20;
      v21 += 4;
      v9 = v120;
      v6 = 0;
      v7 = v124;
      if ((v129 ^ v22))
      {
        v7 = v20 - 1;
        break;
      }
    }

    v10 = v114;
    v31 = v128;
    if ((v129 & 1) == 0)
    {
      goto LABEL_51;
    }

    if (v7 < v114)
    {
      goto LABEL_179;
    }

    if (v114 < v7)
    {
      v32 = 32 * v7 - 32;
      v33 = v7;
      v34 = v114;
      do
      {
        if (v34 != --v33)
        {
          v37 = *a3;
          if (!*a3)
          {
            goto LABEL_183;
          }

          v38 = (v37 + v31);
          v39 = (v37 + v32);
          v40 = *(v37 + v31);
          v41 = *(v37 + v31 + 8);
          v42 = *(v37 + v31 + 24);
          if (v31 != v32 || v38 >= v39 + 2)
          {
            v35 = v39[1];
            *v38 = *v39;
            v38[1] = v35;
          }

          v36 = v37 + v32;
          *v36 = v40;
          *(v36 + 8) = v41;
          *(v36 + 24) = v42;
        }

        ++v34;
        v32 -= 32;
        v31 += 32;
      }

      while (v34 < v33);
    }

LABEL_51:
    v43 = a3[1];
    if (v7 >= v43)
    {
      goto LABEL_60;
    }

    if (__OFSUB__(v7, v10))
    {
      goto LABEL_176;
    }

    if (v7 - v10 >= a4)
    {
LABEL_60:
      v5 = v7;
      if (v7 < v10)
      {
        goto LABEL_175;
      }

      goto LABEL_61;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_177;
    }

    if (v10 + a4 >= v43)
    {
      v5 = a3[1];
    }

    else
    {
      v5 = v10 + a4;
    }

    if (v5 < v10)
    {
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    if (v7 == v5)
    {
      goto LABEL_60;
    }

    v121 = v9;
    v122 = v6;
    v127 = *a3;
    v90 = *a3 + 32 * v7 + 24;
    v115 = v10;
    v91 = v10 - v7;
    v117 = v5;
LABEL_113:
    v125 = v7;
    v118 = v91;
    v119 = v90;
    v92 = v90;
LABEL_114:
    v94 = (v92 - 24);
    v93 = *(v92 - 24);
    v95 = *(v92 - 8);
    v130 = *(v92 - 56);
    v96 = *(v92 - 48);
    v97 = *(v92 - 40);
    if (!v95)
    {
      break;
    }

    v98 = *(v92 - 16);
    if (v97)
    {
      v99 = *(v92 - 48);
    }

    else
    {
      v99 = 0;
    }

    v100 = 0xE000000000000000;
    if (v97)
    {
      v100 = *(v92 - 40);
    }

    v132 = v100;
    if (v95 != 0xE100000000000000 || v98 != 35)
    {
      v101 = *(v92 - 8);
      goto LABEL_130;
    }

LABEL_111:
    swift_bridgeObjectRetain_n();

LABEL_112:
    v7 = v125 + 1;
    v90 = v119 + 32;
    v91 = v118 - 1;
    v5 = v117;
    if (v125 + 1 != v117)
    {
      goto LABEL_113;
    }

    v9 = v121;
    v6 = v122;
    v10 = v115;
    if (v117 < v115)
    {
      goto LABEL_175;
    }

LABEL_61:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10002B814(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v45 = *(v9 + 2);
    v44 = *(v9 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_10002B814((v44 > 1), v45 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v46;
    v47 = &v9[16 * v45];
    *(v47 + 4) = v10;
    *(v47 + 5) = v5;
    v48 = *v116;
    if (!*v116)
    {
      goto LABEL_185;
    }

    v8 = v5;
    if (v45)
    {
      while (2)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          v54 = &v9[16 * v46 + 32];
          v55 = *(v54 - 64);
          v56 = *(v54 - 56);
          v60 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          if (v60)
          {
            goto LABEL_162;
          }

          v59 = *(v54 - 48);
          v58 = *(v54 - 40);
          v60 = __OFSUB__(v58, v59);
          v52 = v58 - v59;
          v53 = v60;
          if (v60)
          {
            goto LABEL_163;
          }

          v61 = &v9[16 * v46];
          v63 = *v61;
          v62 = *(v61 + 1);
          v60 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v60)
          {
            goto LABEL_165;
          }

          v60 = __OFADD__(v52, v64);
          v65 = v52 + v64;
          if (v60)
          {
            goto LABEL_168;
          }

          if (v65 >= v57)
          {
            v83 = &v9[16 * v49 + 32];
            v85 = *v83;
            v84 = *(v83 + 1);
            v60 = __OFSUB__(v84, v85);
            v86 = v84 - v85;
            if (v60)
            {
              goto LABEL_172;
            }

            if (v52 < v86)
            {
              v49 = v46 - 2;
            }
          }

          else
          {
LABEL_80:
            if (v53)
            {
              goto LABEL_164;
            }

            v66 = &v9[16 * v46];
            v68 = *v66;
            v67 = *(v66 + 1);
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_167;
            }

            v72 = &v9[16 * v49 + 32];
            v74 = *v72;
            v73 = *(v72 + 1);
            v60 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v60)
            {
              goto LABEL_170;
            }

            if (__OFADD__(v70, v75))
            {
              goto LABEL_171;
            }

            if (v70 + v75 < v52)
            {
              goto LABEL_94;
            }

            if (v52 < v75)
            {
              v49 = v46 - 2;
            }
          }
        }

        else
        {
          if (v46 == 3)
          {
            v50 = *(v9 + 4);
            v51 = *(v9 + 5);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
            goto LABEL_80;
          }

          v76 = &v9[16 * v46];
          v78 = *v76;
          v77 = *(v76 + 1);
          v60 = __OFSUB__(v77, v78);
          v70 = v77 - v78;
          v71 = v60;
LABEL_94:
          if (v71)
          {
            goto LABEL_166;
          }

          v79 = &v9[16 * v49];
          v81 = *(v79 + 4);
          v80 = *(v79 + 5);
          v60 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v60)
          {
            goto LABEL_169;
          }

          if (v82 < v70)
          {
            break;
          }
        }

        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
          goto LABEL_178;
        }

        if (!*a3)
        {
          goto LABEL_182;
        }

        v88 = *&v9[16 * v87 + 32];
        v5 = *&v9[16 * v49 + 40];
        sub_10002B1E4((*a3 + 32 * v88), (*a3 + 32 * *&v9[16 * v49 + 32]), *a3 + 32 * v5, v48);
        if (v6)
        {
        }

        if (v5 < v88)
        {
          goto LABEL_160;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10002B800(v9);
        }

        if (v87 >= *(v9 + 2))
        {
          goto LABEL_161;
        }

        v89 = &v9[16 * v87];
        *(v89 + 4) = v88;
        *(v89 + 5) = v5;
        v137 = v9;
        result = sub_10002B774(v49);
        v9 = v137;
        v46 = *(v137 + 2);
        if (v46 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_147;
    }
  }

  v98 = 0;
  if (v97)
  {
    v99 = *(v92 - 48);
  }

  else
  {
    v99 = 0;
  }

  v101 = 0xE000000000000000;
  if (v97)
  {
    v102 = *(v92 - 40);
  }

  else
  {
    v102 = 0xE000000000000000;
  }

  v132 = v102;
LABEL_130:
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_111;
  }

  v103 = v99 == 35 && v132 == 0xE100000000000000;
  if (v103 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    if (v98 == v99 && v101 == v132)
    {
      goto LABEL_111;
    }

    v126 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRetain_n();

    if ((v126 & 1) == 0)
    {
      goto LABEL_112;
    }
  }

  if (v127)
  {
    v105 = *(v92 - 56);
    v104 = *(v92 - 40);
    *(v92 - 32) = *v92;
    v92 -= 32;
    v106 = *(v92 + 8);
    v107 = *(v92 + 16);
    *v94 = v105;
    v94[1] = v104;
    *(v92 - 24) = v106;
    *(v92 - 16) = v107;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_112;
    }

    goto LABEL_114;
  }

  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
  return result;
}

uint64_t sub_10002AB80(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = __src;
    v13 = a4;
    if (a4 != __dst || &__dst[8 * v8] <= a4)
    {
      memmove(a4, __dst, 8 * v8);
    }

    v49 = &v13[8 * v8];
    if (v6 < 8)
    {
LABEL_10:
      v14 = v5;
      goto LABEL_36;
    }

    while (1)
    {
      if (v12 >= v4)
      {
        goto LABEL_10;
      }

      v47 = v5;
      v18 = *v12;
      v19 = *v13;
      v20 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v21 = *(v18 + v20);
      v22 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v23 = *(v19 + v22);
      v24 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
      swift_beginAccess();
      v25 = *(v18 + v24);

      v26 = v21;
      v27 = v23;
      LOBYTE(v25) = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

      if (v25)
      {
        break;
      }

      v15 = v13;
      v16 = v47;
      v17 = v47 == v13;
      v13 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v5 = v16 + 8;
      if (v13 >= v49)
      {
        goto LABEL_10;
      }
    }

    v15 = v12;
    v16 = v47;
    v17 = v47 == v12;
    v12 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v16 = *v15;
    goto LABEL_13;
  }

  v14 = __src;
  if (a4 != __src || &__src[8 * v11] <= a4)
  {
    v28 = a4;
    memmove(a4, __src, 8 * v11);
    a4 = v28;
  }

  v49 = &a4[8 * v11];
  v13 = a4;
  if (v9 >= 8 && v14 > v5)
  {
    v46 = a4;
    v48 = v5;
LABEL_25:
    v45 = v14;
    v29 = v14 - 8;
    v4 -= 8;
    v30 = v49;
    do
    {
      v31 = v4 + 8;
      v32 = *(v30 - 1);
      v30 -= 8;
      v33 = v29;
      v34 = *v29;
      v35 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v36 = *(v32 + v35);
      v37 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v38 = *(v34 + v37);
      v39 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
      swift_beginAccess();
      v40 = *(v32 + v39);

      v41 = v36;
      v42 = v38;
      LOBYTE(v40) = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

      if (v40)
      {
        v43 = v33;
        if (v31 != v45)
        {
          *v4 = *v33;
        }

        v13 = v46;
        if (v49 <= v46 || (v14 = v43, v43 <= v48))
        {
          v14 = v43;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v31 != v49)
      {
        *v4 = *v30;
      }

      v4 -= 8;
      v49 = v30;
      v29 = v33;
    }

    while (v30 > v46);
    v49 = v30;
    v13 = v46;
    v14 = v45;
  }

LABEL_36:
  if (v14 != v13 || v14 >= &v13[(v49 - v13 + (v49 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v14, v13, 8 * ((v49 - v13) / 8));
  }

  return 1;
}

uint64_t sub_10002AF4C(uint64_t *__src, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 < 8)
    {
LABEL_10:
      v15 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v13;
      v19 = *v4;

      v20 = sub_100043648(v18, v19);

      if (v20)
      {
        break;
      }

      v16 = v4;
      v17 = v6 == v4++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v6;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v13;
    v17 = v6 == v13++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v21 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v21;
  }

  v15 = a2;
  v14 = &v4[v12];
  if (v10 >= 8 && a2 > v6)
  {
    v32 = v4;
LABEL_25:
    v31 = v15;
    v22 = v15 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;

      v28 = sub_100043648(v25, v27);

      if (v28)
      {
        v29 = v26;
        if (v24 != v31)
        {
          *v5 = *v26;
        }

        v4 = v32;
        if (v14 <= v32 || (v15 = v29, v29 <= v6))
        {
          v15 = v29;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v32);
    v14 = v23;
    v15 = v31;
    v4 = v32;
  }

LABEL_36:
  if (v15 != v4 || v15 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v15, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_10002B1E4(unint64_t *__src, unint64_t *__dst, unint64_t a3, unint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 5;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 31;
  if ((a3 - __dst) >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 5;
  if (v9 < v12)
  {
    v13 = 4 * v9;
    if (a4 != __src || &__src[v13] <= a4)
    {
      v14 = __dst;
      memmove(a4, __src, v13 * 8);
      __dst = v14;
    }

    v58 = &v4[v13];
    if (v7 < 32 || __dst >= v5)
    {
LABEL_93:
      __dst = v6;
      goto LABEL_95;
    }

    v54 = v5;
    while (1)
    {
      v52 = v6;
      v15 = *__dst;
      v16 = __dst[2];
      v18 = *v4;
      v17 = v4[1];
      v56 = v4;
      v19 = v4[2];
      if (v16)
      {
        v20 = __dst[1];
        if (v19)
        {
          v21 = v17;
        }

        else
        {
          v21 = 0;
        }

        if (v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = 0xE000000000000000;
        }

        if (v16 == 0xE100000000000000 && v20 == 35)
        {
          v23 = __dst;
LABEL_30:
          swift_bridgeObjectRetain_n();

          v4 = v56;
LABEL_31:
          v25 = v4;
          v26 = v52;
          v29 = v52 == v4;
          v4 += 4;
          __dst = v23;
          v27 = v54;
          if (v29)
          {
            goto LABEL_33;
          }

LABEL_32:
          v28 = *(v25 + 1);
          *v26 = *v25;
          *(v26 + 1) = v28;
          goto LABEL_33;
        }

        v23 = __dst;
        v24 = __dst[2];
      }

      else
      {
        v23 = __dst;
        v20 = 0;
        if (v19)
        {
          v21 = v17;
        }

        else
        {
          v21 = 0;
        }

        v24 = 0xE000000000000000;
        if (v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = 0xE000000000000000;
        }
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_30;
      }

      v29 = v21 == 35 && v22 == 0xE100000000000000;
      if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_bridgeObjectRetain_n();

        v4 = v56;
      }

      else
      {
        if (v20 == v21 && v24 == v22)
        {
          goto LABEL_30;
        }

        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_bridgeObjectRetain_n();

        v4 = v56;
        if ((v30 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v25 = v23;
      __dst = v23 + 4;
      v26 = v52;
      v29 = v52 == v23;
      v27 = v54;
      if (!v29)
      {
        goto LABEL_32;
      }

LABEL_33:
      v6 = v26 + 4;
      if (v4 >= v58 || __dst >= v27)
      {
        goto LABEL_93;
      }
    }
  }

  v31 = 4 * v12;
  if (a4 != __dst || &__dst[v31] <= a4)
  {
    v32 = __dst;
    memmove(a4, __dst, 32 * v12);
    __dst = v32;
  }

  v58 = &v4[v31];
  if (v10 < 32 || __dst <= v6)
  {
    goto LABEL_95;
  }

  v57 = v4;
  v53 = v6;
  while (2)
  {
    v50 = __dst - 4;
    v33 = (v5 - 32);
    v34 = v58;
    v51 = __dst;
    while (1)
    {
      v55 = v33;
      v35 = *(v34 - 4);
      v34 -= 4;
      v36 = v34[2];
      v38 = *(__dst - 4);
      v37 = *(__dst - 3);
      v39 = *(__dst - 2);
      if (v36)
      {
        v40 = *(v58 - 3);
        if (v39)
        {
          v41 = *(__dst - 3);
        }

        else
        {
          v41 = 0;
        }

        if (v39)
        {
          v42 = *(__dst - 2);
        }

        else
        {
          v42 = 0xE000000000000000;
        }

        if (v36 == 0xE100000000000000 && v40 == 35)
        {
LABEL_74:
          v44 = 0;
          goto LABEL_75;
        }

        v43 = v34[2];
      }

      else
      {
        v40 = 0;
        v41 = v39 ? *(__dst - 3) : 0;
        v43 = 0xE000000000000000;
        v42 = v39 ? *(__dst - 2) : 0xE000000000000000;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_74;
      }

      if (v41 == 35 && v42 == 0xE100000000000000)
      {
        v44 = 1;
      }

      else if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v44 = 1;
      }

      else
      {
        if (v40 == v41 && v43 == v42)
        {
          goto LABEL_74;
        }

        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

LABEL_75:
      swift_bridgeObjectRetain_n();

      if (v44)
      {
        break;
      }

      v4 = v57;
      __dst = v51;
      if (v55 + 2 != v58)
      {
        v45 = *(v34 + 1);
        *v55 = *v34;
        v55[1] = v45;
      }

      v33 = v55 - 2;
      v58 = v34;
      if (v34 <= v57)
      {
        v58 = v34;
        goto LABEL_95;
      }
    }

    v5 = v55;
    v4 = v57;
    if (v55 + 2 != v51)
    {
      v47 = *(v50 + 1);
      *v55 = *v50;
      v55[1] = v47;
    }

    if (v58 <= v57)
    {
      __dst = v50;
    }

    else
    {
      __dst = v50;
      if (v50 > v53)
      {
        continue;
      }

      __dst = v50;
    }

    break;
  }

LABEL_95:
  v48 = (v58 - v4 + (v58 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (__dst != v4 || __dst >= (v4 + v48))
  {
    memmove(__dst, v4, v48);
  }

  return 1;
}

uint64_t sub_10002B774(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002B800(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_10002B814(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&unk_1000EEF20, &qword_1000B5918);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}