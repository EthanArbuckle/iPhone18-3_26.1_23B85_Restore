void sub_100790B84(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for RecentlyDeletedEntriesViewController();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  sub_1007927F0(0);
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  v3 = [*(*(qword_100B2F840 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v9[4] = sub_10054CD68;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100006C7C;
  v9[3] = &unk_100A7D430;
  v5 = _Block_copy(v9);
  v6 = v3;

  [v6 performBlock:v5];
  _Block_release(v5);

  v7 = [v1 navigationController];
  if (v7)
  {
    v8 = v7;
    [v7 setToolbarHidden:1 animated:0];
  }
}

uint64_t sub_100790DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000F24EC(&unk_100AE92B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  sub_1003067A4(a1, v15 - v7);
  v9 = [v2 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 != 5)
  {
    v11 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    if (v11[2])
    {
      v12 = v11[4];
      v13 = v11[5];
      sub_100071864(v12, v13);

      v15[0] = v12;
      v15[1] = v13;
      NSDiffableDataSourceSnapshot.insertSections(_:beforeSection:)();
      sub_100071878(v12, v13);
    }

    else
    {
    }
  }

  return (*(v6 + 32))(a2, v8, v5);
}

char *sub_100790F54()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1000F24EC(&qword_100AF1548);
  v67 = *(v1 - 8);
  v2 = *(v67 + 64);
  __chkstk_darwin(v1);
  v69 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v68 = &v61 - v4;
  __chkstk_darwin(v5);
  v7 = &v61 - v6;
  __chkstk_darwin(v8);
  v82 = &v61 - v9;
  v83 = sub_1000F24EC(&qword_100ADE620);
  v81 = *(v83 - 8);
  v10 = *(v81 + 64);
  __chkstk_darwin(v83);
  __chkstk_darwin(v11);
  v80 = &v61 - v12;
  v13 = sub_1000F24EC(&qword_100ADE618);
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  __chkstk_darwin(v13);
  v75 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v76 = &v61 - v16;
  v17 = sub_1000F24EC(&qword_100AF1550);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  __chkstk_darwin(v19);
  v24 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (!v24)
  {
    return 0;
  }

  v70 = v23;
  v71 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = &v61 - v20;
  v72 = v21;
  v73 = v22;
  swift_allocObject();
  v74 = v7;
  v64 = v0;
  swift_unknownObjectWeakInit();
  type metadata accessor for JournalEntryCollectionViewCell();
  sub_1000065A8(0, &qword_100AD43F0);
  v65 = v1;
  v62 = v24;
  v26 = v25;
  v66 = v25;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MacLargeTitleCollectionViewCell();
  v27 = v76;
  UICollectionView.CellRegistration.init(handler:)();
  v61 = sub_1000065A8(0, &qword_100ADE560);
  v28 = v80;
  UICollectionView.CellRegistration.init(handler:)();
  v29 = v78;
  v30 = v79;
  v31 = *(v78 + 16);
  v63 = v2;
  v31(v75, v27, v79);
  v32 = v73;
  v33 = v26;
  v34 = v72;
  (*(v73 + 16))(v70, v33, v72);
  v35 = v81;
  (*(v81 + 16))(v71, v28, v83);
  v36 = v29;
  v37 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v38 = v32;
  v39 = (v14 + *(v32 + 80) + v37) & ~*(v32 + 80);
  v40 = (v18 + *(v35 + 80) + v39) & ~*(v35 + 80);
  v41 = swift_allocObject();
  (*(v36 + 32))(v41 + v37, v75, v30);
  (*(v38 + 32))(v41 + v39, v70, v34);
  (*(v35 + 32))(v41 + v40, v71, v83);
  *(v41 + ((v10 + v40 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v42 = objc_allocWithZone(sub_1000F24EC(&unk_100AD7CC0));
  v75 = v62;
  v71 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v82;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v44 = v74;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v45 = v67;
  v46 = v68;
  v47 = *(v67 + 16);
  v48 = v65;
  v47(v68, v44, v65);
  v49 = v69;
  v47(v69, v43, v48);
  v50 = *(v45 + 80);
  v51 = v45;
  v52 = (v50 + 16) & ~v50;
  v53 = (v63 + v50 + v52) & ~v50;
  v54 = (v63 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = *(v51 + 32);
  v57 = v55 + v52;
  v58 = v71;
  v56(v57, v46, v48);
  v56(v55 + v53, v49, v48);
  *(v55 + v54) = ObjectType;
  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  v59 = *(v51 + 8);
  v59(v74, v48);
  v59(v82, v48);
  (*(v81 + 8))(v80, v83);
  (*(v78 + 8))(v76, v79);
  (*(v73 + 8))(v66, v72);
  return v58;
}

void sub_10079179C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationItem];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_navigationItem);
  *(a1 + OBJC_IVAR____TtC7Journal31MacLargeTitleCollectionViewCell_navigationItem) = v4;
  v6 = v4;
  sub_100108470(v5);
}

uint64_t sub_100791844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  __chkstk_darwin(v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100165F48(a3, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&v16 = *v6;
    v9 = v16;
    type metadata accessor for JournalEntryCollectionViewCell();
    sub_1000065A8(0, &qword_100AD43F0);
    v10 = v9;
    v11 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      LOBYTE(v16) = 0;
      type metadata accessor for MacLargeTitleCollectionViewCell();
      return UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    }

    if (qword_100ACFBF8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000617C(v12, qword_100B2F718);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "RecentlyDeletedEntriesViewController - Unhandled cell type", v15, 2u);
    }

    v16 = xmmword_100943C10;
    sub_1000065A8(0, &qword_100ADE560);
    v11 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_100165FAC(v6);
  }

  return v11;
}

void sub_100791AAC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1000AB4D8();

    if (v4)
    {

      UICollectionViewCell.configurationUpdateHandler.setter();
      v5 = UIAccessibilityTraitHeader;
      v6 = [a1 accessibilityTraits];
      if ((v5 & ~v6) != 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }

      [a1 setAccessibilityTraits:v7 | v6];
    }
  }
}

uint64_t sub_100791B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v42 = a1;
  v39 = type metadata accessor for Date();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = type metadata accessor for UIListContentConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = UICellConfigurationState.traitCollection.getter();
  v19 = sub_10002E3AC();

  sub_10023DEC0(v19, v46);
  static UIListContentConfiguration.prominentInsetGroupedHeader()();
  v20 = type metadata accessor for UICellConfigurationState();
  v44 = v20;
  v45 = &protocol witness table for UICellConfigurationState;
  v21 = sub_10001A770(v43);
  (*(*(v20 - 8) + 16))(v21, a2, v20);
  UIListContentConfiguration.updated(for:)();
  v40 = *(v9 + 8);
  v40(v11, v8);
  sub_10000BA7C(v43);
  v22 = UICellConfigurationState.traitCollection.getter();
  v23 = [v22 userInterfaceIdiom];

  v24 = &UIFontTextStyleTitle2;
  if (v23 != 5)
  {
    v24 = &UIFontTextStyleTitle3;
  }

  v25 = *v24;
  sub_100047788(v25, &off_100A5AE38, 0);

  sub_100047D60(&unk_100A5AE58);
  v26 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v26(v43, 0);
  v27 = [objc_opt_self() labelColor];
  v28 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v28(v43, 0);
  NSDirectionalEdgeInsets.init(_:)();
  UIListContentConfiguration.directionalLayoutMargins.setter();
  UIListContentConfiguration.axesPreservingSuperviewLayoutMargins.setter();
  (*(v9 + 32))(v17, v14, v8);
  v29 = [*(v41 + 32) deletedOnDate];
  if (v29)
  {
    v30 = v37;
    v31 = v29;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = v38;
    v33 = v39;
    (*(v38 + 32))(v7, v30, v39);
    sub_100777C2C();
    (*(v32 + 8))(v7, v33);
  }

  UIListContentConfiguration.text.setter();
  v44 = v8;
  v45 = &protocol witness table for UIListContentConfiguration;
  v34 = sub_10001A770(v43);
  (*(v9 + 16))(v34, v17, v8);
  UICollectionViewCell.contentConfiguration.setter();
  return (v40)(v17, v8);
}

id sub_100792010(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  UICollectionViewCell.configurationUpdateHandler.setter();
  v3 = UIAccessibilityTraitHeader;
  v4 = [v2 accessibilityTraits];
  if ((v3 & ~v4) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return [v2 setAccessibilityTraits:v5 | v4];
}

uint64_t sub_1007920B8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = UICellConfigurationState.traitCollection.getter();
  v7 = sub_10002E3AC();

  sub_10023DEC0(v7, v14);
  static UIListContentConfiguration.header()();
  NSDirectionalEdgeInsets.init(_:)();
  UIListContentConfiguration.directionalLayoutMargins.setter();
  v9 = UIListContentConfiguration.axesPreservingSuperviewLayoutMargins.modify();
  if (*v8)
  {
    *v8 &= ~1uLL;
  }

  v9(v13, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIListContentConfiguration.text.setter();
  v13[3] = v2;
  v13[4] = &protocol witness table for UIListContentConfiguration;
  v10 = sub_10001A770(v13);
  (*(v3 + 16))(v10, v5, v2);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100792318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 0xD00000000000001CLL || 0x80000001008EA920 != a3)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_1000065A8(0, &qword_100ADE560);
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

uint64_t sub_1007923C0(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_10030B1AC();
  v7 = [a1 presentationSourceItem];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  type metadata accessor for MainActor();
  swift_retain_n();
  v10 = v1;
  swift_unknownObjectRetain();
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v6;
  v12[5] = v10;
  v12[6] = v7;
  v12[7] = sub_10079A174;
  v12[8] = v8;
  sub_1003E9628(0, 0, v5, &unk_100967D08, v12);

  swift_unknownObjectRelease();
}

void sub_100792580(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((a1 & 1) != 0 && [Strong isEditing])
    {
      [v3 setEditing:0 animated:1];
      sub_1007927F0(1);
      v4 = [v3 traitCollection];
      v5 = [v4 userInterfaceIdiom];

      if (v5 == 1 || (v6 = [v3 traitCollection], v7 = objc_msgSend(v6, "horizontalSizeClass"), v6, v7 == 1))
      {
        sub_100799138(1);
      }

      sub_100799330();
    }
  }
}

void sub_10079268C(char a1)
{
  if ([v1 isEditing])
  {
    [v1 setEditing:0 animated:a1 & 1];
    sub_1007927F0(a1 & 1);
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 1 || (v5 = [v1 traitCollection], v6 = objc_msgSend(v5, "horizontalSizeClass"), v5, v6 == 1))
    {
      sub_100799138(a1 & 1);
    }

    sub_100799330();
  }
}

void sub_1007927F0(char a1)
{
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    if ([v1 isEditing])
    {
      v5 = [v1 traitCollection];
      v6 = [v5 horizontalSizeClass];

      v7 = v6 != 1;
    }

    else
    {
      v7 = 1;
    }

    [v4 setToolbarHidden:v7 animated:a1 & 1];
  }

  v8 = [v1 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  v10 = [v1 traitCollection];
  v11 = [v10 horizontalSizeClass];

  v12 = [v1 isEditing];
  if (v9 == 5)
  {
    sub_1000F24EC(&unk_100AD4780);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100941D60;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v17 + 32) = v24;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v17 + 40) = v24;
    v18 = [v1 navigationItem];
    goto LABEL_17;
  }

  v13 = v12;
  if (v9 == 1)
  {
    if (v11 == 2)
    {
      sub_1000F24EC(&unk_100AD4780);
      if (v13)
      {
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_100941D70;
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        *(v22 + 32) = v24;
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        *(v22 + 40) = v24;
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        *(v22 + 48) = v24;
        v16 = [v1 navigationItem];
        goto LABEL_23;
      }

      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100941D50;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v23 + 32) = v24;
      v18 = [v1 navigationItem];
    }

    else
    {
      if (v11 != 1)
      {
        goto LABEL_20;
      }

      sub_1000F24EC(&unk_100AD4780);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100941D50;
      if (v13)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        *(v15 + 32) = v24;
        v16 = [v1 navigationItem];
LABEL_23:
        v19 = v16;
        [v19 setSearchController:0];
        goto LABEL_18;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v15 + 32) = v24;
      v18 = [v1 navigationItem];
    }

LABEL_17:
    v19 = v18;
    [v19 setSearchController:*&v1[OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController_searchController]];
LABEL_18:

    goto LABEL_20;
  }

  if (!v9)
  {
    sub_1000F24EC(&unk_100AD4780);
    v14 = swift_allocObject();
    if (v13)
    {
      *(v14 + 16) = xmmword_100941D50;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v14 + 32) = v24;
    }

    else
    {
      *(v14 + 16) = xmmword_100941D60;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v14 + 32) = v24;
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      *(v14 + 40) = v24;
    }
  }

LABEL_20:
  v20 = [v1 navigationItem];
  sub_1000065A8(0, &qword_100AD43B0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 setRightBarButtonItems:isa animated:a1 & 1];
}

uint64_t sub_100792EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_100792F98, v7, v6);
}

uint64_t sub_100792F98()
{
  (*(v0[5] + 104))(v0[6], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[4]);

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_100793090;
  v2 = v0[6];
  v3 = v0[2];
  v4 = v0[3];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v3, v2, sub_10079A020, v4, &type metadata for () + 8);
}

uint64_t sub_100793090()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v4 = v2[8];
    v5 = v2[9];

    return _swift_task_switch(sub_1004EFDA4, v4, v5);
  }
}

uint64_t sub_1007931E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a2;
  sub_1003E9628(0, 0, v8, a4, v11);
}

uint64_t sub_100793300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_1007933F4, v7, v6);
}

uint64_t sub_1007933F4()
{
  (*(v0[5] + 104))(v0[6], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[4]);

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1007934EC;
  v2 = v0[6];
  v3 = v0[2];
  v4 = v0[3];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v3, v2, sub_100799F4C, v4, &type metadata for () + 8);
}

uint64_t sub_1007934EC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v4 = v2[8];
    v5 = v2[9];

    return _swift_task_switch(sub_10079A6AC, v4, v5);
  }
}

id sub_10079363C(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v29 = type metadata accessor for Calendar.Component();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v25 = *(v5 - 8);
  v26 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v25 - v17;
  v30 = a1;
  v19 = *(a1 + 32);
  result = [v19 deletedOnDate];
  if (result)
  {
    v21 = result;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v12 + 32))(v18, v14, v11);
    static Calendar.current.getter();
    v22 = v27;
    v23 = v29;
    (*(v27 + 104))(v4, enum case for Calendar.Component.day(_:), v29);
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v22 + 8))(v4, v23);
    (*(v25 + 8))(v7, v26);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      isa = 0;
    }

    else
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v12 + 8))(v10, v11);
    }

    [v19 setDeletedOnDate:isa];

    [v19 setIsUploadedToCloud:0];
    sub_10074DBA4();
    return (*(v12 + 8))(v18, v11);
  }

  return result;
}

uint64_t sub_1007939D8(char a1)
{
  if ((a1 & 1) == 0)
  {
    return UIViewController.contentUnavailableConfiguration.setter();
  }

  return sub_100793A28();
}

uint64_t sub_100793A28()
{
  v1 = v0;
  v2 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for UIContentUnavailableConfiguration();
  v3 = swift_allocBox();
  static UIContentUnavailableConfiguration.empty()();
  if (qword_100AD0778 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.text.setter();
  if (qword_100AD0790 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.secondaryText.setter();
  v4 = UIContentUnavailableConfiguration.directionalLayoutMargins.modify();
  *(v5 + 8) = 0x4034000000000000;
  v4(aBlock, 0);
  v6 = UIContentUnavailableConfiguration.directionalLayoutMargins.modify();
  *(v7 + 24) = 0x4034000000000000;
  v6(aBlock, 0);
  static UIBackgroundConfiguration.clear()();
  UIContentUnavailableConfiguration.background.setter();
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v3;
  aBlock[4] = sub_10079A47C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A7D3E0;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  [v8 animateWithDuration:0 delay:v10 options:0 animations:0.44 completion:0.0];
  _Block_release(v10);
}

uint64_t sub_100793C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();

  v14 = v5;
  sub_100021E80(a4);
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = a1;
  v16[5] = v14;
  v16[6] = a2;
  v16[7] = a4;
  v16[8] = a5;
  sub_1003E9628(0, 0, v12, &unk_100967D00, v16);
}

uint64_t sub_100793E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = type metadata accessor for MainActor();
  v8[12] = static MainActor.shared.getter();
  v8[13] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[14] = v10;
  v8[15] = v11;

  return _swift_task_switch(sub_100793F40, v10, v11);
}

uint64_t sub_100793F40()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 24);
  v2 = static MainActor.shared.getter();
  *(v0 + 128) = v2;
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  v3[1] = vextq_s8(v6, v6, 8uLL);
  v3[2].i64[0] = v1;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_10079408C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 220, v2, &protocol witness table for MainActor, 0xD00000000000004CLL, 0x80000001008FA4C0, sub_100561D08, v3, &type metadata for Bool);
}

uint64_t sub_10079408C()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_100794220, v3, v2);
}

uint64_t sub_100794220()
{

  *(v0 + 221) = *(v0 + 220);
  v1 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 152) = v1;
  *(v0 + 160) = v2;

  return _swift_task_switch(sub_1007942E0, v1, v2);
}

uint64_t sub_1007942E0()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v1(*(v0 + 221));
  }

  if (*(v0 + 221) == 1)
  {
    v2 = *(v0 + 24);
    sub_1003169B4(v2);
    if (v2 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      *(v0 + 168) = v12;
      if (v12)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 168) = v3;
      if (v3)
      {
LABEL_6:
        v4 = *(v0 + 24);
        *(v0 + 216) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }
        }

        *(v0 + 176) = v5;
        *(v0 + 184) = 1;
        v6 = *(v0 + 96);

        if (v6)
        {
          swift_getObjectType();
          v7 = dispatch thunk of Actor.unownedExecutor.getter();
          v9 = v8;
        }

        else
        {
          v7 = 0;
          v9 = 0;
        }

        *(v0 + 192) = v7;
        *(v0 + 200) = v9;

        return _swift_task_switch(sub_100794520, v7, v9);
      }
    }

    v13 = *(v0 + 32);

    v14 = *(v13 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext);
    *(v0 + 16) = 0;
    v15 = [v14 save:v0 + 16];
    v16 = *(v0 + 16);
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v18 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100794520()
{
  (*(*(v0 + 72) + 104))(*(v0 + 80), *(v0 + 216), *(v0 + 64));

  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_10079463C;
  v2 = *(v0 + 176);
  v3 = *(v0 + 80);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v3, sub_100163FAC, v2, &type metadata for () + 8);
}

uint64_t sub_10079463C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v4 = v2[24];
    v5 = v2[25];

    return _swift_task_switch(sub_1007947D4, v4, v5);
  }
}

uint64_t sub_1007947D4()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return _swift_task_switch(sub_100794864, v1, v2);
}

uint64_t sub_100794864()
{
  v1 = v0[23];
  v2 = v0[21];

  if (v1 == v2)
  {
    v3 = v0[4];

    v4 = *(v3 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext);
    v0[2] = 0;
    v5 = [v4 save:v0 + 2];
    v6 = v0[2];
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v15 = v6;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v16 = v0[1];

    return v16();
  }

  v8 = v0[23];
  v9 = v0[3];
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }
  }

  v0[22] = v10;
  v0[23] = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v11 = v0[12];

  if (v11)
  {
    swift_getObjectType();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[24] = v12;
  v0[25] = v14;

  return _swift_task_switch(sub_100794520, v12, v14);
}

Class sub_100794A50(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JournalFeatureFlags();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x207265766F636552;
  v12._object = 0xE800000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v54 = i;
    v53 = sub_1000065A8(0, &unk_100AD4D00);
    v14 = sub_1000065A8(0, &qword_100AD4420);
    v55 = i;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v15._countAndFlagsBits = 0x73656972746E4520;
    v15._object = 0xE800000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    if (qword_100AD09E8 != -1)
    {
      swift_once();
    }

    v16 = qword_100B30EC0;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v52 = v2;
    *(v18 + 16) = v17;
    *(v18 + 24) = a1;
    v19 = v16;

    v57[4] = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_1000F24EC(&unk_100AD4780);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100941D50;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._countAndFlagsBits = 0x206574656C6544;
    v21._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
    v55 = v54;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v22._countAndFlagsBits = 0x73656972746E4520;
    v22._object = 0xE800000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v2 = v14;
    if (qword_100AD0978 != -1)
    {
      swift_once();
    }

    v23 = qword_100B30E50;
    v24 = swift_allocObject();
    v25 = v52;
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = a1;
    v27 = v23;

    *(v20 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v58.value.super.isa = 0;
    v58.is_nil = 0;
    v57[5] = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v28, 0, v58, 1, 0xFFFFFFFFFFFFFFFFLL, v20, v45).super.super.isa;
    if (v54 != 1 || (v29 = v49, v30 = v50, v31 = v51, (*(v50 + 104))(v49, enum case for JournalFeatureFlags.debug(_:), v51), v32 = JournalFeatureFlags.isEnabled.getter(), result = (*(v30 + 8))(v29, v31), (v32 & 1) == 0))
    {
      v38.super.super.isa = 0;
      goto LABEL_15;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_12;
    }

    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v34 = *(a1 + 32);

LABEL_12:
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100941D70;
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v55 = 0x4F646574656C6564;
    v56 = 0xEF0A3A657461446ELL;
    result = [*(v34 + 32) deletedOnDate];
    if (!result)
    {
      goto LABEL_30;
    }

    v36 = result;
    a1 = v46;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = Date.formatted()();
    (*(v47 + 8))(a1, v48);
    String.append(_:)(v37);

    *(v35 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

    *(v35 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

    *(v35 + 48) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v38.super.super.isa = sub_100751090(v34, v35, v25).super.super.isa;

LABEL_15:
    v39 = 0;
    v57[6] = v38.super.super.isa;
    v40 = _swiftEmptyArrayStorage;
    v55 = _swiftEmptyArrayStorage;
LABEL_16:
    if (v39 <= 3)
    {
      v41 = 3;
    }

    else
    {
      v41 = v39;
    }

    while (1)
    {
      if (v39 == 3)
      {
        sub_1000F24EC(&qword_100AEB0F8);
        swift_arrayDestroy();
        v44._countAndFlagsBits = 0;
        v44._object = 0xE000000000000000;
        v59.value.super.isa = 0;
        v59.is_nil = 0;
        return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v44, 0, v59, 0, 0xFFFFFFFFFFFFFFFFLL, v40, v45).super.super.isa;
      }

      if (v41 == v39)
      {
        break;
      }

      v42 = v57[v39++ + 4];
      if (v42)
      {
        v43 = v42;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          a1 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v40 = v55;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    ;
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_100795400(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [a1 presentationSourceItem];
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    type metadata accessor for MainActor();

    v12 = v9;
    swift_unknownObjectRetain();
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = a3;
    v14[5] = v12;
    v14[6] = v10;
    sub_1003E9628(0, 0, v7, &unk_100967CF8, v14);

    swift_unknownObjectRelease();
  }
}

void sub_10079559C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [a1 presentationSourceItem];
    v11 = swift_allocObject();
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    type metadata accessor for MainActor();
    swift_retain_n();

    v14 = v9;
    swift_unknownObjectRetain();
    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = a3;
    v16[5] = v14;
    v16[6] = v10;
    v16[7] = sub_10079A040;
    v16[8] = v11;
    sub_1003E9628(0, 0, v7, &unk_100967CF0, v16);

    swift_unknownObjectRelease();
  }
}

void sub_1007957B4(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_10079268C(1);
    }
  }
}

id sub_100795814(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController____lazy_storage___model] = 0;
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  *&v1[OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController_searchController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RecentlyDeletedEntriesViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10079598C(void *a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController____lazy_storage___model) = 0;
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  *(v2 + OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController_searchController) = 0;

  return sub_100013708(a1, a2);
}

void sub_100795ABC()
{

  v1 = OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController__selectEntriesButtonItem;
  v2 = sub_1000F24EC(&unk_100AEED40);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController__doneButtonItem, v2);
  v3(v0 + OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController__permanentDeleteButton, v2);
  v3(v0 + OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController__recoverButton, v2);
  v3(v0 + OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController__selectAllButton, v2);
  v3(v0 + OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController__deselectAllButton, v2);
  v3(v0 + OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController__deleteAllButton, v2);
  v3(v0 + OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController__recoverAllButton, v2);
  v3(v0 + OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController__searchButtonItem, v2);
  v4 = *(v0 + OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController_searchController);
}

id sub_100795C44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentlyDeletedEntriesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RecentlyDeletedEntriesViewController()
{
  result = qword_100AF1538;
  if (!qword_100AF1538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100795E5C()
{
  sub_10000C298();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100795F7C(char a1)
{
  sub_1000F24EC(&unk_100AD4780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100941040;
  v4 = objc_opt_self();
  *(v3 + 32) = [v4 flexibleSpaceItem];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(v3 + 40) = v11;
  *(v3 + 48) = [v4 flexibleSpaceItem];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(v3 + 56) = v11;
  *(v3 + 64) = [v4 flexibleSpaceItem];
  sub_1000065A8(0, &qword_100AD43B0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setToolbarItems:isa animated:a1 & 1];

  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    if ([v1 isEditing])
    {
      v8 = [v1 traitCollection];
      v9 = [v8 horizontalSizeClass];

      v10 = v9 != 1;
    }

    else
    {
      v10 = 1;
    }

    [v7 setToolbarHidden:v10 animated:a1 & 1];
  }
}

uint64_t sub_1007961B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v4 - 8);
  v6 = (v40 - v5);
  v7 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v7 - 8);
  v9 = v40 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v15)
  {
    v16 = [v15 indexPathsForSelectedItems];
    if (v16)
    {
      v17 = v16;
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v48 = _swiftEmptyArrayStorage;
  v19 = *(v18 + 2);
  if (!v19)
  {

    v23 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v41 = v9;
  v42 = a1;
  v47 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
  v43 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext;
  v20 = v11 + 16;
  v46 = *(v11 + 16);
  v21 = *(v11 + 80);
  v40[1] = v18;
  v22 = v18 + ((v21 + 32) & ~v21);
  v23 = _swiftEmptyArrayStorage;
  v24 = (v20 - 8);
  v25 = *(v20 + 56);
  v44 = v1;
  v45 = v25;
  v46(v14, v22, v10);
  while (1)
  {
    v27 = *&v2[v47];
    if (!v27)
    {
      (*v24)(v14, v10);
      v26 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
LABEL_9:
      sub_100004F84(v6, &unk_100AD7CB0);
      goto LABEL_10;
    }

    v28 = v27;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v29 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    if ((*(*(v29 - 8) + 48))(v6, 1, v29) == 1)
    {
      (*v24)(v14, v10);
      goto LABEL_9;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v6;
      v31 = [*&v2[v43] objectWithID:*v6];

      type metadata accessor for JournalEntryMO();
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        v33 = v32;
        v34 = [v32 managedObjectContext];
        if (!v34)
        {
          v34 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
        }

        type metadata accessor for EntryViewModel();
        swift_allocObject();
        sub_100035ADC(v33, 0, 0, v34);
        (*v24)(v14, v10);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v23 = v48;
        v2 = v44;
      }

      else
      {

        (*v24)(v14, v10);
        v2 = v44;
      }
    }

    else
    {
      (*v24)(v14, v10);
      sub_100165FAC(v6);
    }

LABEL_10:
    v22 += v45;
    if (!--v19)
    {
      break;
    }

    v46(v14, v22, v10);
  }

  v9 = v41;
  a1 = v42;
LABEL_26:
  v35 = type metadata accessor for TaskPriority();
  (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v36 = v2;
  v37 = static MainActor.shared.getter();
  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = &protocol witness table for MainActor;
  v38[4] = v23;
  v38[5] = v36;
  v38[6] = a1;
  sub_1003E9628(0, 0, v9, &unk_100967CA0, v38);
}

uint64_t sub_1007967B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  sub_1000F24EC(&qword_100AD5170);
  v6[12] = swift_task_alloc();
  v6[13] = type metadata accessor for MainActor();
  v6[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[15] = v7;
  v6[16] = v8;

  return _swift_task_switch(sub_1007968C0, v7, v8);
}

uint64_t sub_1007968C0()
{
  if (v0[9] >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1007969B4;
  v3 = v0[10];
  v2 = v0[11];

  return sub_100416764(v3, v2);
}

uint64_t sub_1007969B4(char a1)
{
  v2 = *v1;
  *(*v1 + 144) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return _swift_task_switch(sub_100796B10, v4, v3);
}

uint64_t sub_100796B10()
{
  v1 = *(v0 + 144);

  if (v1 == 1)
  {
    v2 = v0[12];
    v3 = v0[9];
    v4 = v0[10];
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = v4;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;
    sub_1003E9628(0, 0, v2, &unk_100967CB0, v8);

    v9 = *&v6[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext];
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_100799D24;
    *(v11 + 24) = v10;
    v0[6] = sub_100028EF4;
    v0[7] = v11;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10001A7D4;
    v0[5] = &unk_100A7D1B0;
    v12 = _Block_copy(v0 + 2);

    [v9 performBlockAndWait:v12];
    _Block_release(v12);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }

    v0[8] = 0;
    v13 = [v9 save:v0 + 8];
    v14 = v0[8];
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v16 = v14;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100796DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100796E88, v6, v5);
}

uint64_t sub_100796E88()
{

  sub_10079268C(1);
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100796EF0(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        JournalEntryMO.recoverRecentlyDeleted()();

        ++v3;
        if (v4 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = _CocoaArrayWrapper.endIndex.getter();
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100796FC8()
{
  v1 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v40 - v2);
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v0;
  v12 = *&v0[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v12)
  {
    v13 = [v12 indexPathsForSelectedItems];
    if (v13)
    {
      v14 = v13;
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v47 = _swiftEmptyArrayStorage;
  v16 = *(v15 + 2);
  if (!v16)
  {

    v20 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v41 = v6;
  v45 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource;
  v42 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_coreDataContext;
  v17 = v8 + 16;
  v44 = *(v8 + 16);
  v18 = *(v8 + 80);
  v40 = v15;
  v19 = v15 + ((v18 + 32) & ~v18);
  v20 = _swiftEmptyArrayStorage;
  v21 = (v8 + 8);
  v43 = *(v17 + 56);
  v44(v11, v19, v7);
  while (1)
  {
    v23 = *&v46[v45];
    if (!v23)
    {
      (*v21)(v11, v7);
      v22 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
      (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
LABEL_9:
      sub_100004F84(v3, &unk_100AD7CB0);
      goto LABEL_10;
    }

    v24 = v23;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v25 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
    if ((*(*(v25 - 8) + 48))(v3, 1, v25) == 1)
    {
      (*v21)(v11, v7);
      goto LABEL_9;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *v3;
      v27 = [*&v46[v42] objectWithID:{*v3, v40}];

      type metadata accessor for JournalEntryMO();
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        v30 = [v28 managedObjectContext];
        if (!v30)
        {
          v30 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
        }

        type metadata accessor for EntryViewModel();
        swift_allocObject();
        sub_100035ADC(v29, 0, 0, v30);
        (*v21)(v11, v7);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v20 = v47;
      }

      else
      {

        (*v21)(v11, v7);
      }
    }

    else
    {
      (*v21)(v11, v7);
      sub_100165FAC(v3);
    }

LABEL_10:
    v19 += v43;
    if (!--v16)
    {
      break;
    }

    v44(v11, v19, v7);
  }

  v6 = v41;
LABEL_26:
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v46;
  static UIViewController.ViewLoading.subscript.getter();

  v32 = v47;
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v6, 1, 1, v34);
  type metadata accessor for MainActor();
  v35 = v31;
  v36 = v32;

  v37 = static MainActor.shared.getter();
  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = &protocol witness table for MainActor;
  v38[4] = v20;
  v38[5] = v35;
  v38[6] = v32;
  v38[7] = sub_100799AC4;
  v38[8] = v33;
  sub_1003E9628(0, 0, v6, &unk_100967C90, v38);
}

void sub_1007975EC(char a1, id a2)
{
  if ((a1 & 1) != 0 && [a2 isEditing])
  {
    [a2 setEditing:0 animated:1];
    sub_1007927F0(1);
    v3 = [a2 traitCollection];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 1 || (v5 = [a2 traitCollection], v6 = objc_msgSend(v5, "horizontalSizeClass"), v5, v6 == 1))
    {
      sub_100799138(1);
    }

    sub_100799330();
  }
}

void sub_10079770C()
{
  if (([v0 isEditing] & 1) == 0)
  {
    [v0 setEditing:1 animated:1];
    sub_1007927F0(1);
    v1 = [v0 traitCollection];
    v2 = [v1 userInterfaceIdiom];

    if (v2 == 1 || (v3 = [v0 traitCollection], v4 = objc_msgSend(v3, "horizontalSizeClass"), v3, v4 == 1))
    {
      sub_100799138(1);
    }

    sub_1007977FC(1);
  }
}

void sub_1007977FC(char a1)
{
  v2 = v1;
  sub_100799330();
  sub_100799138(a1);
  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 5)
  {
    v6 = [v2 navigationItem];
    sub_1000F24EC(&unk_100AD4780);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100941D60;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v7 + 32) = v27;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v7 + 40) = v27;
    sub_1000065A8(0, &qword_100AD43B0);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setRightBarButtonItems:v8.super.isa animated:a1 & 1];

LABEL_3:
    return;
  }

  if (![v2 isEditing])
  {
    return;
  }

  v9 = [v2 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 5)
  {
    return;
  }

  v11 = [v2 navigationItem];
  v12 = [v11 rightBarButtonItems];
  if (!v12)
  {
    [v11 setRightBarButtonItems:0];

    goto LABEL_14;
  }

  v13 = v12;
  sub_1000065A8(0, &qword_100AD43B0);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v15 = v26;
  if (v14 >> 62)
  {
    goto LABEL_28;
  }

  do
  {
    sub_1002069E4(0, 0, v15);

    if (v27)
    {
      v16.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v16.super.isa = 0;
    }

    [v11 setRightBarButtonItems:v16.super.isa];

LABEL_14:
    v17 = *&v2[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
    if (v17 && (v18 = [v17 indexPathsForSelectedItems]) != 0)
    {
      v19 = v18;
      type metadata accessor for IndexPath();
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = v20;
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    v15 = *(v21 + 2);

    sub_1000F24EC(&unk_100AD4780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100941D60;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(inited + 32) = v27;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(inited + 40) = v27;
    v11 = (inited & 0xC000000000000001);
    if ((inited & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_21:
      v24 = v23;
      [v23 setEnabled:v15 != 0];

      if (v11)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_30;
        }

        v25 = *(inited + 40);
      }

      v8.super.isa = v25;

      [(objc_class *)v8.super.isa setEnabled:v15 != 0];
      goto LABEL_3;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(inited + 32);
      goto LABEL_21;
    }

    __break(1u);
LABEL_28:
    ;
  }

  while ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0);
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_100797D10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (([Strong isEditing] & 1) == 0)
    {
      [v1 setEditing:1 animated:1];
      sub_1007927F0(1);
      v2 = [v1 traitCollection];
      v3 = [v2 userInterfaceIdiom];

      if (v3 == 1 || (v4 = [v1 traitCollection], v5 = objc_msgSend(v4, "horizontalSizeClass"), v4, v5 == 1))
      {
        sub_100799138(1);
      }

      sub_1007977FC(1);
    }
  }
}

void sub_100797E14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong isEditing])
    {
      [v1 setEditing:0 animated:1];
      sub_1007927F0(1);
      v2 = [v1 traitCollection];
      v3 = [v2 userInterfaceIdiom];

      if (v3 == 1 || (v4 = [v1 traitCollection], v5 = objc_msgSend(v4, "horizontalSizeClass"), v4, v5 == 1))
      {
        sub_100799138(1);
      }

      sub_100799330();
    }
  }
}

void sub_100797F14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1003027EC();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_1007977FC(1);
  }
}

void sub_100797F98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
    if (v2)
    {
      v3 = v2;
      sub_1006018C4();
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_1007977FC(1);
  }
}

uint64_t sub_100798044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v5;
  v4[7] = v6;

  return _swift_task_switch(sub_100798114, v5, v6);
}

uint64_t sub_100798114()
{
  v1 = [*(v0 + 24) navigationItem];
  *(v0 + 64) = [v1 overflowPresentationSource];

  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;

  return _swift_task_switch(sub_100798208, v2, v3);
}

uint64_t sub_100798208()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = static MainActor.shared.getter();
  v0[12] = v3;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_100798348;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 15, v3, &protocol witness table for MainActor, 0xD000000000000050, 0x8000000100908420, sub_10079A6A4, v4, &type metadata for Bool);
}

uint64_t sub_100798348()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1007984DC, v3, v2);
}

uint64_t sub_1007984DC()
{
  swift_unknownObjectRelease();

  *(v0 + 121) = *(v0 + 120);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_10079857C, v1, v2);
}

uint64_t sub_10079857C()
{
  v1 = *(v0 + 121);

  if (v1 == 1)
  {
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v2 = qword_100B2F9E0;
    v3 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    static JournalDataUtilities.permanentlyDeleteAllRecentlyDeletedEntries(context:)();

    v4 = *(*(v2 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    *(v0 + 16) = 0;
    v5 = [v4 save:v0 + 16];
    v6 = *(v0 + 16);
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v8 = v6;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100ACFBF8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000617C(v9, qword_100B2F718);
      swift_errorRetain();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        swift_errorRetain();
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v14;
        *v13 = v14;
        _os_log_impl(&_mh_execute_header, v10, v11, "Error deleting all entries: %@", v12, 0xCu);
        sub_100004F84(v13, &unk_100AD4BB0);
      }

      else
      {
      }
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

void sub_100798810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    type metadata accessor for MainActor();
    v13 = v11;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;
    v15[5] = a3;
    sub_1003E9628(0, 0, v9, a5, v15);
  }
}

uint64_t sub_10079896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v5;
  v4[7] = v6;

  return _swift_task_switch(sub_100798A3C, v5, v6);
}

uint64_t sub_100798A3C()
{
  v1 = [*(v0 + 24) navigationItem];
  *(v0 + 64) = [v1 overflowPresentationSource];

  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;

  return _swift_task_switch(sub_100798B30, v2, v3);
}

uint64_t sub_100798B30()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = static MainActor.shared.getter();
  v0[12] = v3;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_100798C70;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 15, v3, &protocol witness table for MainActor, 0xD000000000000047, 0x80000001009083D0, sub_10079A5DC, v4, &type metadata for Bool);
}

uint64_t sub_100798C70()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_100798E04, v3, v2);
}

uint64_t sub_100798E04()
{
  swift_unknownObjectRelease();

  *(v0 + 121) = *(v0 + 120);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_100798EA4, v1, v2);
}

uint64_t sub_100798EA4()
{
  v1 = *(v0 + 121);

  if (v1 == 1)
  {
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v2 = qword_100B2F9E0;
    v3 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    static JournalDataUtilities.recoverAllRecentlyDeletedEntries(context:)();

    v4 = *(*(v2 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    *(v0 + 16) = 0;
    v5 = [v4 save:v0 + 16];
    v6 = *(v0 + 16);
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v8 = v6;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100ACFBF8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000617C(v9, qword_100B2F718);
      swift_errorRetain();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        swift_errorRetain();
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v14;
        *v13 = v14;
        _os_log_impl(&_mh_execute_header, v10, v11, "Error recovering all entries: %@", v12, 0xCu);
        sub_100004F84(v13, &unk_100AD4BB0);
      }

      else
      {
      }
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

void sub_100799138(char a1)
{
  v2 = v1;
  if ([v1 isEditing] && (v4 = objc_msgSend(v1, "traitCollection"), v5 = objc_msgSend(v4, "userInterfaceIdiom"), v4, v5 != 5))
  {
    sub_1003031B0();
    v6 = [v2 navigationItem];
    sub_1000F24EC(&unk_100AD4780);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100941D50;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v7 + 32) = v10;
    sub_1000065A8(0, &qword_100AD43B0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setLeftBarButtonItems:isa animated:a1 & 1];
  }

  else
  {
    v9 = [v2 navigationItem];
    [v9 setLeftBarButtonItems:0 animated:a1 & 1];
  }
}

void sub_100799330()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v5 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView;
  v6 = *&v0[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v6)
  {
    v7 = v6;
    if ([v7 isEditing])
    {
      v8 = *&v0[v5];
      if (v8 && (v9 = [v8 indexPathsForSelectedItems]) != 0)
      {
        v10 = v9;
        type metadata accessor for IndexPath();
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v12 = v11;
      }

      else
      {
        v12 = _swiftEmptyArrayStorage;
      }

      v16 = *(v12 + 2);

      if (v16)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v17._countAndFlagsBits = 0;
        v17._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v18._countAndFlagsBits = 0x73656972746E4520;
        v18._object = 0xE800000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v19 = [v0 navigationItem];
        v20 = String._bridgeToObjectiveC()();

        [v19 setTitle:v20];
      }

      else
      {
        v21 = [v0 navigationItem];
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v22 = String._bridgeToObjectiveC()();

        [v21 setTitle:v22];
      }

      return;
    }
  }

  v13 = [v0 navigationItem];
  sub_10078F004();

  sub_10002EEEC();
  v15 = v14;

  if (v15)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  [v13 setTitle:{v23, v23}];
}

void sub_100799740()
{
  sub_1007977FC(1);
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    v3 = *&v0[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
    if (v3 && (v4 = [v3 indexPathsForSelectedItems]) != 0)
    {
      v5 = v4;
      type metadata accessor for IndexPath();
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v8 = *(v7 + 2);

    if (!v8)
    {

      sub_10079268C(1);
    }
  }
}

void sub_10079984C(void *a1)
{
  if (qword_100ACFBF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100B2F718);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Empty cell dequeued in RecentlyDeletedEntriesViewController! This should not happen. Please debug me.", v5, 2u);
  }

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [a1 heightAnchor];
  v7 = [v6 constraintEqualToConstant:0.0];

  [v7 setActive:1];
}

void sub_1007999A8()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v1 && (v2 = [v1 indexPathsForSelectedItems]) != 0)
  {
    v3 = v2;
    type metadata accessor for IndexPath();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = *(v5 + 2);

  if (v6 || (v7 = [v0 traitCollection], v8 = objc_msgSend(v7, "userInterfaceIdiom"), v7, v8 != 5))
  {

    sub_10079770C();
  }

  else if ([v0 isEditing])
  {

    sub_10079268C(1);
  }
}

uint64_t sub_100799ACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032EC8;

  return sub_100793E00(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100799BA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_1007967B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100799C70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100796DF0(a1, v4, v5, v6);
}

void sub_100799D2C()
{
  if ([v0 isEditing])
  {
    [v0 setEditing:0 animated:1];
    sub_1007927F0(1);
    v1 = [v0 traitCollection];
    v2 = [v1 userInterfaceIdiom];

    if (v2 == 1 || (v3 = [v0 traitCollection], v4 = objc_msgSend(v3, "horizontalSizeClass"), v3, v4 == 1))
    {
      sub_100799138(1);
    }

    sub_100799330();
  }
}

uint64_t sub_100799E98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100793300(a1, v4, v5, v6);
}

uint64_t sub_100799F6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100792EA4(a1, v4, v5, v6);
}

uint64_t sub_10079A048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032ECC;

  return sub_100793E00(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10079A124()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10079A17C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10079A1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100ADE618);
  sub_1000F24EC(&qword_100AF1550);
  sub_1000F24EC(&qword_100ADE620);

  return sub_100791844(a1, a2, a3);
}

uint64_t sub_10079A38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100AF1548);

  return sub_100792318(a1, a2, a3);
}

uint64_t sub_10079A51C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10079896C(a1, v4, v5, v6);
}

uint64_t sub_10079A5E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100798044(a1, v4, v5, v6);
}

uint64_t sub_10079A6C0(char a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_10079A7E8, v4, v3);
}

uint64_t sub_10079A7E8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 104);

  return v4(v5);
}

void *sub_10079A894()
{
  swift_getKeyPath();
  v3 = v0;
  sub_10079F404(qword_100AEAF88, type metadata accessor for SiriSpeechRecognitionAssetManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_1005F6320(v1, *(v3 + 24), *(v3 + 32));
  return v1;
}

uint64_t sub_10079A954(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 425) = a1;
  sub_1000F24EC(&qword_100AD5170);
  *(v2 + 96) = swift_task_alloc();
  v3 = type metadata accessor for NWPath.Status();
  *(v2 + 104) = v3;
  *(v2 + 112) = *(v3 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  v4 = type metadata accessor for NWPathMonitor.Iterator();
  *(v2 + 136) = v4;
  *(v2 + 144) = *(v4 - 8);
  *(v2 + 152) = swift_task_alloc();
  sub_1000F24EC(&qword_100AE5518);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v5 = type metadata accessor for NWPath();
  *(v2 + 176) = v5;
  *(v2 + 184) = *(v5 - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1350);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = type metadata accessor for MainActor();
  *(v2 + 224) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 232) = v7;
  *(v2 + 240) = v6;

  return _swift_task_switch(sub_10079ABD4, v7, v6);
}

uint64_t sub_10079ABD4()
{
  v1 = *(v0 + 88);
  swift_getKeyPath();
  *(v0 + 16) = v1;
  *(v0 + 248) = OBJC_IVAR____TtC7Journal33SiriSpeechRecognitionAssetManager___observationRegistrar;
  *(v0 + 256) = sub_10079F404(qword_100AEAF88, type metadata accessor for SiriSpeechRecognitionAssetManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);
  *(v0 + 264) = v2;
  v3 = *(v1 + 24);
  *(v0 + 272) = v3;
  v4 = *(v1 + 32);
  if (v4 >> 6)
  {
    if (v4 >> 6 == 1)
    {
      *(v0 + 80) = v2;
      swift_errorRetain();
      sub_1000F24EC(&qword_100AD5BC0);
      if (!swift_dynamicCast() || *(v0 + 424))
      {

        goto LABEL_11;
      }

      sub_100245AF0();
      swift_allocError();
      *v13 = 0;
      swift_willThrow();

      v12 = *(v0 + 8);
    }

    else
    {
      if (!(v3 | v2) && v4 == 128)
      {
LABEL_11:
        v8 = *(v0 + 208);
        v9 = type metadata accessor for Locale();
        (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
        v10 = swift_task_alloc();
        *(v0 + 296) = v10;
        *v10 = v0;
        v10[1] = sub_10079B1FC;
        v11 = *(v0 + 208);

        return sub_100089408(v11);
      }

      v12 = *(v0 + 8);
    }

    return v12();
  }

  else
  {
    v5 = v2;

    v6 = swift_task_alloc();
    *(v0 + 280) = v6;
    v7 = sub_1000F24EC(&qword_100AD5BC0);
    *v6 = v0;
    v6[1] = sub_10079AFD8;

    return Task.value.getter(v7, v3, &type metadata for () + 8, v7, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_10079AFD8()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_10079C8C0;
  }

  else
  {
    v5 = sub_10079B114;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10079B114()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10079B1FC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  *(*v1 + 426) = a1;

  sub_100004F84(v3, &qword_100AD1350);
  v4 = *(v2 + 240);
  v5 = *(v2 + 232);

  return _swift_task_switch(sub_10079B358, v5, v4);
}

uint64_t sub_10079B358()
{
  if (*(v0 + 426) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 304) = v1;
    *v1 = v0;
    v1[1] = sub_10079B594;

    return sub_10079CAB4();
  }

  else
  {
    v3 = *(v0 + 88);

    sub_100245AF0();
    v4 = swift_allocError();
    *v5 = 0;
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    *(v6 + 32) = 0;
    *(v6 + 40) = 64;
    *(v0 + 24) = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10079B594(char a1)
{
  v2 = *v1;
  *(*v1 + 427) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return _swift_task_switch(sub_10079B6BC, v4, v3);
}

uint64_t sub_10079B6BC()
{
  if (*(v0 + 427))
  {
    v1 = *(v0 + 88);

    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = xmmword_1009520F0;
    *(v2 + 40) = 0x80;
    *(v0 + 72) = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v3 = *(v0 + 8);
LABEL_8:

    return v3();
  }

  v4 = sub_10079DA18();
  *(v0 + 312) = v4;
  if (!v4)
  {
    v5 = *(v0 + 88);

    sub_100245AF0();
    v6 = swift_allocError();
    *v7 = 0;
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    *(v8 + 32) = 0;
    *(v8 + 40) = 64;
    *(v0 + 32) = v5;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_allocError();
    *v9 = 0;
    swift_willThrow();

    v3 = *(v0 + 8);
    goto LABEL_8;
  }

  *(v0 + 320) = type metadata accessor for NWPathMonitor();
  swift_allocObject();
  *(v0 + 328) = NWPathMonitor.init()();

  return _swift_task_switch(sub_10079B9F8, 0, 0);
}

uint64_t sub_10079B9F8()
{
  v0[5] = v0[41];
  sub_10079F404(&qword_100AED2F0, &type metadata accessor for NWPathMonitor);

  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10079F404(&qword_100AE5520, &type metadata accessor for NWPathMonitor.Iterator);
  v2 = swift_task_alloc();
  v0[42] = v2;
  *v2 = v0;
  v2[1] = sub_10079BB40;
  v3 = v0[20];
  v4 = v0[17];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_10079BB40()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = v2[19];
  v4 = v2[18];
  v5 = v2[17];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = DebugData.init(name:);
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10079BCD8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10079BCD8()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = *(v2 + 48);
  v0[44] = v4;
  v0[45] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    (*(v2 + 56))(v0[21], 1, 1, v1);
    v5 = v0[29];
    v6 = v0[30];
    v7 = sub_10079BEFC;
  }

  else
  {
    v8 = v0[24];
    v9 = *(v2 + 32);
    v0[46] = v9;
    v0[47] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v9(v8, v3, v1);
    v0[48] = static MainActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v7 = sub_10079BE08;
    v5 = v10;
    v6 = v12;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10079BE08()
{

  return _swift_task_switch(sub_10079BE70, 0, 0);
}

uint64_t sub_10079BE70()
{
  (*(v0 + 368))(*(v0 + 168), *(v0 + 192), *(v0 + 176));
  (*(*(v0 + 184) + 56))(*(v0 + 168), 0, 1, *(v0 + 176));
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return _swift_task_switch(sub_10079BEFC, v1, v2);
}

uint64_t sub_10079BEFC()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  if ((*(v0 + 352))(v2, 1, v1) == 1)
  {
    sub_100004F84(v2, &qword_100AE5518);
LABEL_12:
    if (qword_100AD0A88 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 312);
    v23 = type metadata accessor for Logger();
    sub_10000617C(v23, qword_100AF1558);
    v24 = v22;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 312);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v27;
      *v29 = v27;
      v30 = v27;
      _os_log_impl(&_mh_execute_header, v25, v26, "ASR Model Download: initiating download for config: %@", v28, 0xCu);
      sub_100004F84(v29, &unk_100AD4BB0);
    }

    v31 = *(v0 + 312);
    v32 = *(v0 + 88);
    v33 = *(v0 + 96);

    v34 = [objc_opt_self() progressWithTotalUnitCount:100];
    *(v0 + 392) = v34;
    [v34 setCompletedUnitCount:-1];
    v35 = type metadata accessor for TaskPriority();
    (*(*(v35 - 8) + 56))(v33, 1, 1, v35);
    v36 = v31;

    v37 = v34;
    v38 = static MainActor.shared.getter();
    v39 = swift_allocObject();
    v39[2] = v38;
    v39[3] = &protocol witness table for MainActor;
    v39[4] = v32;
    v39[5] = v36;
    v39[6] = v37;
    v40 = sub_1004EC158(0, 0, v33, &unk_100967FB8, v39);
    *(v0 + 400) = v40;
    swift_getKeyPath();
    v41 = swift_task_alloc();
    *(v41 + 16) = v32;
    *(v41 + 24) = v37;
    *(v41 + 32) = v40;
    *(v41 + 40) = 0;
    *(v0 + 48) = v32;
    v42 = v37;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v43 = swift_task_alloc();
    *(v0 + 408) = v43;
    v44 = sub_1000F24EC(&qword_100AD5BC0);
    *v43 = v0;
    v43[1] = sub_10079C688;

    return Task.value.getter(v44, v40, &type metadata for () + 8, v44, &protocol self-conformance witness table for Error);
  }

  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  (*(*(v0 + 184) + 32))(*(v0 + 200), v2, v1);
  NWPath.status.getter();
  (*(v6 + 104))(v4, enum case for NWPath.Status.unsatisfied(_:), v5);
  sub_10079F404(&unk_100AE5DE0, &type metadata accessor for NWPath.Status);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v6 + 8);
  v8(v4, v5);
  v8(v3, v5);
  if (v7)
  {
    v47 = *(v0 + 200);
    v9 = *(v0 + 184);
    v45 = *(v0 + 312);
    v46 = *(v0 + 176);
    v10 = *(v0 + 88);

    sub_100245AF0();
    v11 = swift_allocError();
    *v12 = 2;
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v10;
    *(v13 + 24) = v11;
    *(v13 + 32) = 0;
    *(v13 + 40) = 64;
    *(v0 + 64) = v10;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_allocError();
    v15 = 2;
  }

  else
  {
    if ((*(v0 + 425) & 1) != 0 || (NWPath.isConstrained.getter() & 1) == 0)
    {
      (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));
      goto LABEL_12;
    }

    v47 = *(v0 + 200);
    v9 = *(v0 + 184);
    v45 = *(v0 + 312);
    v46 = *(v0 + 176);
    v18 = *(v0 + 88);

    sub_100245AF0();
    v19 = swift_allocError();
    *v20 = 3;
    swift_getKeyPath();
    v21 = swift_task_alloc();
    *(v21 + 16) = v18;
    *(v21 + 24) = v19;
    *(v21 + 32) = 0;
    *(v21 + 40) = 64;
    *(v0 + 56) = v18;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_allocError();
    v15 = 3;
  }

  *v14 = v15;
  swift_willThrow();

  (*(v9 + 8))(v47, v46);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10079C688()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_10079C9B0;
  }

  else
  {
    v5 = sub_10079C7C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10079C7C4()
{
  v1 = v0[49];
  v2 = v0[39];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10079C8C0()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10079C9B0()
{
  v1 = v0[49];
  v2 = v0[39];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10079CAB4()
{
  v1[3] = v0;
  sub_1000F24EC(&qword_100AD1350);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_10079CB90, v3, v2);
}

uint64_t sub_10079CB90()
{
  if ((static Runtime.isInternalBuild.getter() & 1) == 0)
  {
    goto LABEL_4;
  }

  v1 = v0[4];
  sub_1000A6318(v1);
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100004F84(v0[4], &qword_100AD1350);
LABEL_4:
    static Locale.autoupdatingCurrent.getter();
    goto LABEL_6;
  }

  (*(v3 + 32))(v0[5], v0[4], v2);
LABEL_6:
  v4 = v0[5];
  v5 = v0[3];
  v6 = type metadata accessor for Locale();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v0[9] = sub_10079DC50(v4);
  v0[10] = v7;
  sub_100004F84(v4, &qword_100AD1350);
  v9 = *(v5 + 40);
  v8 = *(v5 + 48);
  if (qword_100AD0A98 != -1)
  {
    swift_once();
  }

  v10 = v0[6];
  v11 = qword_100AF1570;
  v12 = *(v8 + 16);

  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_10079CE20;

  return v15(v10, &protocol witness table for MainActor, v11, v9, v8);
}

uint64_t sub_10079CE20(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_10079CF6C, v4, v3);
}

uint64_t sub_10079CF6C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];

  v4 = sub_1006274B4(v2, v3, v1);

  if (v4)
  {
    v5 = v0[3];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = xmmword_1009520F0;
    *(v6 + 40) = 0x80;
    v0[2] = v5;
    sub_10079F404(qword_100AEAF88, type metadata accessor for SiriSpeechRecognitionAssetManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v7 = v0[1];

  return v7(v4 & 1);
}

uint64_t sub_10079D0F0()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF1558);
  v1 = sub_10000617C(v0, qword_100AF1558);
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10079D1B8()
{
  v1 = *(*v0 + 152);
  *(*v0 + 168) = *(*v0 + 144);
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_10079F9F8, v2, v4);
}

uint64_t sub_10079D2F4(uint64_t a1)
{
  v1 = *sub_10000CA14((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_10079D364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a1;
  v3[20] = a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3[2] = v3;
  v3[7] = v3 + 18;
  v3[3] = sub_10079D4A0;
  v6 = swift_continuation_init();
  v3[17] = sub_1000F24EC(&qword_100AF1650);
  v3[10] = _NSConcreteStackBlock;
  v3[11] = 1107296256;
  v3[12] = sub_10079D5F4;
  v3[13] = &unk_100A7D678;
  v3[14] = v6;
  [ObjCClassFromMetadata installedLanguagesForTaskHint:a3 completion:v3 + 10];

  return _swift_continuation_await(v3 + 2);
}

uint64_t sub_10079D4A0()
{
  v1 = *(*v0 + 152);
  *(*v0 + 168) = *(*v0 + 144);
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_10079D5DC, v2, v4);
}

uint64_t sub_10079D5F4(uint64_t a1)
{
  v1 = *sub_10000CA14((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_10079D66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a2;
  v13 = swift_task_alloc();
  v7[4] = v13;
  *v13 = v7;
  v13[1] = sub_10031AED0;

  return (sub_10079F574)(a3, a4, a5, a6, a7);
}

uint64_t sub_10079D750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_10079D7B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000CA14((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000F24EC(&qword_100AD5BC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return _swift_continuation_throwingResume(v4);
  }
}

void *sub_10079D884@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10079F404(qword_100AEAF88, type metadata accessor for SiriSpeechRecognitionAssetManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = *(v3 + 32);
  *(a2 + 16) = v6;
  return sub_1005F6320(v4, v5, v6);
}

uint64_t sub_10079D938()
{
  swift_getKeyPath();
  sub_10079F404(qword_100AEAF88, type metadata accessor for SiriSpeechRecognitionAssetManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_10079DA18()
{
  v0 = sub_1000F24EC(&qword_100AD1350);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v14 - v4;
  if ((static Runtime.isInternalBuild.getter() & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_1000A6318(v3);
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    sub_100004F84(v3, &qword_100AD1350);
LABEL_4:
    static Locale.autoupdatingCurrent.getter();
    goto LABEL_6;
  }

  (*(v7 + 32))(v5, v3, v6);
LABEL_6:
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  sub_10079DC50(v5);
  sub_100004F84(v5, &qword_100AD1350);
  if (qword_100AD0A98 != -1)
  {
    swift_once();
  }

  v9 = qword_100AF1570;
  v10 = objc_allocWithZone(SFEntitledAssetConfig);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithLanguage:v11 taskHint:v9];

  return v12;
}

uint64_t sub_10079DC50(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD1350);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A60E8(a1, v7);
  v12 = *(v9 + 48);
  if (v12(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    goto LABEL_10;
  }

  if ((static Runtime.isInternalBuild.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1000A6318(v5);
  if (v12(v5, 1, v8) == 1)
  {
    sub_100004F84(v5, &qword_100AD1350);
LABEL_5:
    static Locale.autoupdatingCurrent.getter();
    goto LABEL_8;
  }

  (*(v9 + 32))(v11, v5, v8);
LABEL_8:
  if (v12(v7, 1, v8) != 1)
  {
    sub_100004F84(v7, &qword_100AD1350);
  }

LABEL_10:
  v13 = objc_opt_self();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v15 = [v13 generalASRLanguageForLocale:isa];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v9 + 8))(v11, v8);
  return v16;
}

uint64_t sub_10079DEEC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_10079E038, v4, v3);
}

uint64_t sub_10079E038()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10079E0BC, v1, v0);
}

uint64_t sub_10079E0BC()
{
  v23 = v0;
  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[4];

  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_10079DC50(v2);
  v8 = v7;
  sub_100004F84(v2, &qword_100AD1350);
  v0[2] = v6;
  v0[3] = v8;
  v9 = swift_task_alloc();
  *(v9 + 16) = v0 + 2;
  v10 = sub_100194FF0(sub_100124B50, v9, v1);

  if (qword_100AD0A88 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000617C(v11, qword_100AF1558);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v14 = 136315650;
    v15 = sub_100008458(v6, v8, v22);

    *(v14 + 4) = v15;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v10 & 1;
    *(v14 + 18) = 2080;
    v16 = Array.description.getter();
    v18 = v17;

    v19 = sub_100008458(v16, v18, v22);

    *(v14 + 20) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s is supported: %{BOOL}d. Supported languages: %s", v14, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = v0[1];

  return v20(v10 & 1);
}

uint64_t sub_10079E3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[8] = v8;
  v6[9] = v7;

  return _swift_task_switch(sub_10079E484, v8, v7);
}

void sub_10079E484()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = *(v2 + 48);
  static AppInfo.bundleIdentifier.getter();
  v0[10] = v4;
  v5 = swift_allocObject();
  v0[11] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = *(v3 + 24);
  v7 = v1;

  v9 = v6 + *v6;
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_10079E638;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_10079E638(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = v2;

  if (v2)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_10079EA00;
  }

  else
  {

    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_10079E774;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10079E774()
{
  v15 = v0;

  if (qword_100AD0A88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AF1558);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 112);
  if (v4)
  {
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = sub_100008458(v6, v5, &v14);

    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "ASR Model Download: downloaded model to %s", v7, 0xCu);
    sub_10000BA7C(v8);
  }

  else
  {
  }

  v10 = *(v0 + 32);
  [*(v0 + 48) setCompletedUnitCount:100];
  swift_getKeyPath();
  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  *(v11 + 24) = xmmword_1009520F0;
  *(v11 + 40) = 0x80;
  *(v0 + 24) = v10;
  sub_10079F404(qword_100AEAF88, type metadata accessor for SiriSpeechRecognitionAssetManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10079EA00()
{
  v1 = v0[15];
  v2 = v0[4];

  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 64;
  v0[2] = v2;
  swift_errorRetain();
  sub_10079F404(qword_100AEAF88, type metadata accessor for SiriSpeechRecognitionAssetManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (qword_100AD0A88 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AF1558);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "ASR Model Download: Failed to download asset: %@", v7, 0xCu);
    sub_100004F84(v8, &unk_100AD4BB0);
  }

  swift_willThrow();
  v10 = v0[1];

  return v10();
}

uint64_t sub_10079EC9C(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v8 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (qword_100AD0A88 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000617C(v11, qword_100AF1558);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = a1;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "ASR Model Download asset progress: %ld stalled: %{BOOL}d", v14, 0x12u);
  }

  if (a1 <= 0)
  {
    v15 = -1;
  }

  else
  {
    v15 = a1;
  }

  [a3 setCompletedUnitCount:v15];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  *(v18 + 32) = a4;
  *(v18 + 40) = a2 & 1;
  sub_1003E9628(0, 0, v10, &unk_100967FC8, v18);
}

uint64_t sub_10079EECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 24) = a4;
  type metadata accessor for MainActor();
  *(v5 + 32) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10079EF68, v7, v6);
}

uint64_t sub_10079EF68()
{
  v1 = *(v0 + 24);

  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_10079F404(qword_100AEAF88, type metadata accessor for SiriSpeechRecognitionAssetManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 32);
  if (v2 <= 0x3F)
  {
    v3 = *(v0 + 40);
    if (v3 != (v2 & 1))
    {
      v5 = *(v1 + 16);
      v4 = *(v1 + 24);
      v6 = *(v0 + 24);
      swift_getKeyPath();
      v7 = swift_task_alloc();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;
      *(v7 + 32) = v4;
      *(v7 + 40) = v3;
      *(v0 + 16) = v6;
      v8 = v5;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10079F118()
{
  sub_1005F637C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC7Journal33SiriSpeechRecognitionAssetManager___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10079F1C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10079F1E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 17))
  {
    return (*a1 + 16382);
  }

  v3 = ((*(a1 + 16) >> 6) | (4 * ((*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7 | (((*(a1 + 16) >> 1) & 0x1F) << 7)))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10079F25C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 16) = 0;
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_10079F2DC(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 1 | (a2 << 6);
    *(result + 8) &= 0xFFFFFFFFFFFFFF8uLL;
    *(result + 16) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_10079F33C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_10079E3E8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10079F404(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10079F454(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_10079EECC(a1, v4, v5, v6, v7);
}

void *sub_10079F518()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v7 = *(v2 + 32);
  *(v2 + 32) = v6;
  sub_1005F6320(v1, v3, v6);
  return sub_1005F637C(v4, v5, v7);
}

uint64_t sub_10079F574(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = String._bridgeToObjectiveC()();
  v5[20] = v9;
  if (a4)
  {
    v5[14] = a4;
    v5[15] = a5;
    v5[10] = _NSConcreteStackBlock;
    v5[11] = 1107296256;
    v5[12] = sub_10079D750;
    v5[13] = &unk_100A7D650;
    a4 = _Block_copy(v5 + 10);
  }

  v5[21] = a4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5[2] = v5;
  v5[7] = v5 + 18;
  v5[3] = sub_10079F73C;
  v11 = swift_continuation_init();
  v5[17] = sub_1000F24EC(&qword_100AF1648);
  v5[10] = _NSConcreteStackBlock;
  v5[11] = 1107296256;
  v5[12] = sub_10079D7B0;
  v5[13] = &unk_100A7D628;
  v5[14] = v11;
  [ObjCClassFromMetadata fetchAssetWithConfig:a1 clientIdentifier:v9 detailedProgress:a4 completion:v5 + 10];

  return _swift_continuation_await(v5 + 2);
}

uint64_t sub_10079F73C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 168);
  v5 = *(*v0 + 160);
  if (*(v1 + 48))
  {
    swift_willThrow();
    _Block_release(v4);

    v6 = *(v3 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 144);
    v9 = *(v2 + 152);
    _Block_release(*(v1 + 168));

    v10 = *(v3 + 8);

    return v10(v8, v9);
  }
}

uint64_t sub_10079F8D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10079F8FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10079F944(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10079F998()
{
  result = qword_100AF1660;
  if (!qword_100AF1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1660);
  }

  return result;
}

uint64_t sub_10079FA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  if (a2)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v12(v13, v15, a3, a4, a5, a6, a7);
}

uint64_t sub_10079FAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v6 = type metadata accessor for UUID();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  v4[25] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v4[26] = v8;
  v4[27] = v10;

  return _swift_task_switch(sub_10079FC94, v8, v10);
}

id sub_10079FC94()
{
  v1 = *(v0 + 25);
  v3 = *(v0 + 19);
  v2 = *(v0 + 20);
  v4 = *(v0 + 18);
  static Date.timeIntervalSinceReferenceDate.getter();
  v6 = v5;
  v0[28] = v5;
  v7 = [objc_allocWithZone(NSMutableAttributedString) init];
  *(v0 + 29) = v7;
  sub_1001EDCD8(v4 + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v1);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    sub_100004F84(*(v0 + 25), &qword_100AD1420);
    sub_1004D12DC();
    swift_allocError();
    *v8 = 0;
LABEL_17:
    swift_willThrow();

    sub_1007A1DA8(v6);

    v110 = *(v0 + 1);

    return v110();
  }

  v135 = v7;
  v10 = *(v0 + 24);
  v9 = *(v0 + 25);
  v12 = *(v0 + 22);
  v11 = *(v0 + 23);
  v14 = *(v0 + 19);
  v13 = *(v0 + 20);
  v15 = UUID.uuidString.getter();
  v17 = v16;
  v134 = v15;
  *(v0 + 30) = v15;
  *(v0 + 31) = v16;
  v18 = *(v13 + 8);
  *(v0 + 32) = v18;
  *(v0 + 33) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v9, v14);
  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  sub_100697630(v10);
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v24 = *(v11 + 8);
  v24(v10, v12);
  v0[13] = 0.0;
  LODWORD(v12) = [v20 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:v0 + 13];

  v25 = *(v0 + 13);
  if (!v12)
  {
    v109 = v25;

LABEL_16:
    _convertNSErrorToError(_:)();

    v7 = v135;
    goto LABEL_17;
  }

  v26 = *(v0 + 24);
  v27 = *(v0 + 22);
  v28 = v25;
  v29 = [v19 defaultManager];
  sub_10069763C(v26);
  URL._bridgeToObjectiveC()(v30);
  v32 = v31;
  v24(v26, v27);
  v0[14] = 0.0;
  LODWORD(v26) = [v29 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:v0 + 14];

  v33 = *(v0 + 14);
  if (!v26)
  {
    v109 = v33;

    goto LABEL_16;
  }

  v131 = *(v0 + 18);
  v34 = v33;
  v35._countAndFlagsBits = v134;
  v35._object = v17;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 8995;
  v36._object = 0xE200000000000000;
  String.append(_:)(v36);
  v37 = objc_allocWithZone(NSAttributedString);
  v38 = String._bridgeToObjectiveC()();

  v39 = [v37 initWithString:v38];

  v40 = v135;
  [v135 appendAttributedString:v39];

  v41._countAndFlagsBits = v134;
  v133 = v17;
  v41._object = v17;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 8995;
  v42._object = 0xE200000000000000;
  String.append(_:)(v42);
  v43 = objc_allocWithZone(NSAttributedString);
  v44 = String._bridgeToObjectiveC()();

  v45 = [v43 initWithString:v44];

  [v135 appendAttributedString:v45];
  if (*(v131 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) == 1)
  {
    v46._object = v17;
    v46._countAndFlagsBits = v134;
    String.append(_:)(v46);
    v47._countAndFlagsBits = 8995;
    v47._object = 0xE200000000000000;
    String.append(_:)(v47);
    v48 = objc_allocWithZone(NSAttributedString);
    v49 = String._bridgeToObjectiveC()();

    v50 = [v48 initWithString:v49];

    [v135 appendAttributedString:v50];
  }

  v51._countAndFlagsBits = v134;
  v51._object = v17;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 8995;
  v52._object = 0xE200000000000000;
  String.append(_:)(v52);
  v53 = objc_allocWithZone(NSAttributedString);
  v54 = String._bridgeToObjectiveC()();

  v55 = [v53 initWithString:v54];

  [v135 appendAttributedString:v55];
  v56._countAndFlagsBits = v134;
  v56._object = v17;
  String.append(_:)(v56);
  v57._countAndFlagsBits = 8995;
  v57._object = 0xE200000000000000;
  String.append(_:)(v57);
  v58 = objc_allocWithZone(NSAttributedString);
  v59 = String._bridgeToObjectiveC()();

  v60 = [v58 initWithString:v59];

  [v135 appendAttributedString:v60];
  v61 = sub_1000819F8();
  if (v61)
  {
    v62 = v61;
    v63._countAndFlagsBits = v134;
    v63._object = v17;
    String.append(_:)(v63);
    v64._countAndFlagsBits = 8995;
    v64._object = 0xE200000000000000;
    String.append(_:)(v64);
    v65 = objc_allocWithZone(NSAttributedString);
    v66 = String._bridgeToObjectiveC()();

    v67 = [v65 initWithString:v66];

    [v135 appendAttributedString:v67];
    [v135 appendAttributedString:v62];
    v68._countAndFlagsBits = v134;
    v68._object = v17;
    String.append(_:)(v68);
    v69._countAndFlagsBits = 8995;
    v69._object = 0xE200000000000000;
    String.append(_:)(v69);
    v70 = objc_allocWithZone(NSAttributedString);
    v71 = String._bridgeToObjectiveC()();

    v72 = [v70 initWithString:v71];

    [v135 appendAttributedString:v72];
  }

  if (sub_10029EF80())
  {
    v73._object = v17;
    v73._countAndFlagsBits = v134;
    String.append(_:)(v73);
    v74._countAndFlagsBits = 8995;
    v74._object = 0xE200000000000000;
    String.append(_:)(v74);
    v75 = objc_allocWithZone(NSAttributedString);
    v76 = String._bridgeToObjectiveC()();

    v77 = [v75 initWithString:v76];

    [v135 appendAttributedString:v77];
  }

  v78 = *(v0 + 18);
  v79 = swift_allocObject();
  *(v0 + 34) = v79;
  *(v79 + 16) = sub_100363658(_swiftEmptyArrayStorage);
  v80 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  type metadata accessor for CustomAttributeProviderConcrete();
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  Logger.init(subsystem:category:)();
  v82 = v81 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
  *(v82 + 4) = 0;
  *v82 = 2;
  v83 = sub_100789EB0(v80, v81, v78);

  if (v83)
  {

    v132 = v83;
    v84 = sub_1007BB104(v83, sub_1007A4BC0, v79, 14.0);

    v130 = v84;
    v85 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v84];
    result = [v85 string];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v87 = result;
    v88 = swift_allocObject();
    *(v88 + 16) = -1;
    v89 = [v87 length];
    v90 = swift_allocObject();
    v90[2] = v88;
    v90[3] = v79;
    v90[4] = v85;
    *(v0 + 6) = sub_1007A4BC8;
    *(v0 + 7) = v90;
    *(v0 + 2) = _NSConcreteStackBlock;
    *(v0 + 3) = 1107296256;
    *(v0 + 4) = sub_10079FA14;
    *(v0 + 5) = &unk_100A7D858;
    v91 = _Block_copy(v0 + 2);

    v129 = v85;

    [v87 enumerateSubstringsInRange:0 options:v89 usingBlock:{1, v91}];
    _Block_release(v91);
    v92 = v134;
    v93._countAndFlagsBits = v134;
    v93._object = v133;
    String.append(_:)(v93);
    v94._countAndFlagsBits = 8995;
    v94._object = 0xE200000000000000;
    String.append(_:)(v94);
    v95 = objc_allocWithZone(NSAttributedString);
    v96 = String._bridgeToObjectiveC()();

    v97 = [v95 initWithString:v96];

    v40 = v135;
    [v135 appendAttributedString:v97];

    v98 = objc_allocWithZone(NSAttributedString);
    v99 = String._bridgeToObjectiveC()();
    v100 = [v98 initWithString:v99];

    [v135 appendAttributedString:v100];
    [v135 appendAttributedString:v129];
    v101 = objc_allocWithZone(NSAttributedString);
    v102 = String._bridgeToObjectiveC()();
    v103 = [v101 initWithString:v102];

    [v135 appendAttributedString:v103];
    v104._countAndFlagsBits = v134;
    v104._object = v133;
    String.append(_:)(v104);
    v105._countAndFlagsBits = 8995;
    v105._object = 0xE200000000000000;
    String.append(_:)(v105);
    v106 = objc_allocWithZone(NSAttributedString);
    v107 = String._bridgeToObjectiveC()();

    v108 = [v106 initWithString:v107];

    [v135 appendAttributedString:v108];
  }

  else
  {
    v92 = v134;
  }

  *(v0 + 35) = 0x80000001009086E0;
  *(v0 + 36) = 0x80000001009086A0;
  v111._countAndFlagsBits = v92;
  v111._object = v133;
  String.append(_:)(v111);
  v112._countAndFlagsBits = 8995;
  v112._object = 0xE200000000000000;
  String.append(_:)(v112);
  v113 = objc_allocWithZone(NSAttributedString);
  v114 = String._bridgeToObjectiveC()();

  v115 = [v113 initWithString:v114];

  [v40 appendAttributedString:v115];
  v116 = sub_100363770(_swiftEmptyArrayStorage);
  v117._countAndFlagsBits = v92;
  v117._object = v133;
  String.append(_:)(v117);
  v118._countAndFlagsBits = 8995;
  v118._object = 0xE200000000000000;
  String.append(_:)(v118);
  v119 = sub_1007A44B0();
  v121 = v120;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002024A8(v119, v121, 0xD000000000000013, 0x8000000100908560, isUniquelyReferenced_nonNull_native);

  *(v0 + 37) = v116;
  v123._countAndFlagsBits = v92;
  v123._object = v133;
  String.append(_:)(v123);
  v124._countAndFlagsBits = 8995;
  v124._object = 0xE200000000000000;
  String.append(_:)(v124);
  v0[38] = -2.31584178e77;
  *(v0 + 39) = 0x80000001009085E0;
  v125 = swift_task_alloc();
  *(v0 + 40) = v125;
  *v125 = v0;
  v125[1] = sub_1007A0BBC;
  v126 = *(v0 + 16);
  v127 = *(v0 + 17);
  v128 = *(v0 + 15);

  return sub_1007A4778(v128, v126, v127);
}

uint64_t sub_1007A0BBC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 328) = a1;
  *(v4 + 336) = a2;

  v5 = *(v3 + 216);
  v6 = *(v3 + 208);

  return _swift_task_switch(sub_1007A0D18, v6, v5);
}

uint64_t sub_1007A0D18()
{
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  v7 = v0[30];
  v6 = v0[31];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002024A8(v2, v1, v4, v3, isUniquelyReferenced_nonNull_native);

  v0[43] = v5;
  v9._countAndFlagsBits = v7;
  v9._object = v6;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 8995;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v0[44] = 0xD000000000000016;
  v0[45] = 0x80000001009085A0;
  v11 = swift_task_alloc();
  v0[46] = v11;
  *v11 = v0;
  v11[1] = sub_1007A0E88;
  v12 = v0[17];
  v14 = v0[15];
  v13 = v0[16];

  return sub_1007A223C(v14, v13, v12);
}

uint64_t sub_1007A0E88(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 376) = a1;
  *(v4 + 384) = a2;

  v5 = *(v3 + 216);
  v6 = *(v3 + 208);

  return _swift_task_switch(sub_1007A0FE4, v6, v5);
}

uint64_t sub_1007A0FE4()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v7 = v0[30];
  v6 = v0[31];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002024A8(v2, v1, v4, v3, isUniquelyReferenced_nonNull_native);

  v9._countAndFlagsBits = v7;
  v9._object = v6;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 8995;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11 = sub_1007A4A64();
  v13 = v12;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002024A8(v11, v13, 0xD000000000000017, 0x8000000100908580, v14);

  v15._countAndFlagsBits = v7;
  v15._object = v6;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 8995;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002024A8(0xD000000000000013, 0x8000000100908630, 0xD000000000000020, 0x8000000100908600, v17);

  v18._countAndFlagsBits = v7;
  v18._object = v6;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 8995;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002024A8(0x3E7669642F3CLL, 0xE600000000000000, 0xD000000000000020, 0x8000000100908650, v20);

  v0[49] = v5;
  v21._countAndFlagsBits = v7;
  v21._object = v6;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 8995;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v0[50] = 0xD00000000000001ELL;
  v0[51] = 0x8000000100908680;
  v23 = swift_task_alloc();
  v0[52] = v23;
  *v23 = v0;
  v23[1] = sub_1007A12D0;
  v24 = v0[17];
  v26 = v0[15];
  v25 = v0[16];

  return sub_1007A2AB0(v26, v25, v24);
}

uint64_t sub_1007A12D0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 424) = a1;
  *(v4 + 432) = a2;

  v5 = *(v3 + 216);
  v6 = *(v3 + 208);

  return _swift_task_switch(sub_1007A142C, v6, v5);
}

uint64_t sub_1007A142C()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 392);
  v6 = *(v0 + 288);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v47 = *(v0 + 272);
  v46 = *(v0 + 280);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002024A8(v2, v1, v4, v3, isUniquelyReferenced_nonNull_native);

  v10._countAndFlagsBits = v8;
  v10._object = v7;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8995;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002024A8(0xD000000000000016, 0x80000001009086C0, 0xD00000000000001FLL, v6, v12);

  v13._countAndFlagsBits = v8;
  v13._object = v7;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8995;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002024A8(0x3E7669642F3CLL, 0xE600000000000000, 0xD00000000000001FLL, v46, v15);

  v16._countAndFlagsBits = v8;
  v16._object = v7;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 8995;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002024A8(0xD00000000000001BLL, 0x8000000100908700, 0xD00000000000001FLL, 0x8000000100908540, v18);

  v19._countAndFlagsBits = v8;
  v19._object = v7;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 8995;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1002024A8(0x3E7669642F3CLL, 0xE600000000000000, 0xD00000000000001FLL, 0x80000001009085C0, v21);

  swift_beginAccess();
  v22 = *(v47 + 16);
  *(v0 + 440) = v22;
  v23 = *(v22 + 32);
  *(v0 + 520) = v23;
  v24 = -1;
  v25 = -1 << v23;
  if (-(-1 << v23) < 64)
  {
    v24 = ~(-1 << -v25);
  }

  v26 = v24 & *(v22 + 64);
  *(v0 + 448) = v5;

  if (v26)
  {
    v28 = 0;
LABEL_8:
    *(v0 + 456) = v26;
    *(v0 + 464) = v28;
    v30 = *(v0 + 256);
    v31 = *(v0 + 168);
    v32 = *(v0 + 152);
    v33 = *(v27 + 56) + ((v28 << 10) | (16 * __clz(__rbit64(v26))));
    v34 = *v33;
    *(v0 + 472) = *v33;
    v35 = *(v33 + 8);
    swift_getObjectType();
    v36 = v34;
    dispatch thunk of AssetTextAttachmentProtocol.assetID.getter();
    *(v0 + 480) = UUID.uuidString.getter();
    *(v0 + 488) = v37;
    v30(v31, v32);
    v38 = swift_task_alloc();
    *(v0 + 496) = v38;
    *v38 = v0;
    v38[1] = sub_1007A18E4;
    v39 = *(v0 + 136);
    v41 = *(v0 + 120);
    v40 = *(v0 + 128);

    return sub_1007A336C(v41, v40, v36, v35, v39);
  }

  else
  {
    v29 = 0;
    while (((63 - v25) >> 6) - 1 != v29)
    {
      v28 = v29 + 1;
      v26 = *(v27 + 8 * v29++ + 72);
      if (v26)
      {
        goto LABEL_8;
      }
    }

    v43 = *(v0 + 224);

    sub_1007A1DA8(v43);

    v44 = *(v0 + 8);
    v45 = *(v0 + 232);

    return v44(v45, v5);
  }
}

uint64_t sub_1007A18E4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 504) = a1;
  *(v4 + 512) = a2;

  v5 = *(v3 + 216);
  v6 = *(v3 + 208);

  return _swift_task_switch(sub_1007A1A40, v6, v5);
}

uint64_t sub_1007A1A40()
{
  *(v0 + 88) = 0xD00000000000001FLL;
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3._countAndFlagsBits = *(v0 + 480);
  v4 = *(v0 + 488);
  v5 = *(v0 + 472);
  v6 = *(v0 + 448);
  *(v0 + 96) = 0x8000000100908720;
  v3._object = v4;
  String.append(_:)(v3);

  v7._countAndFlagsBits = 8995;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002024A8(v2, v1, v8, v9, isUniquelyReferenced_nonNull_native);

  v12 = *(v0 + 456);
  v11 = *(v0 + 464);
  *(v0 + 448) = v6;
  v13 = (v12 - 1) & v12;
  if (v13)
  {
    v14 = *(v0 + 440);
LABEL_7:
    *(v0 + 456) = v13;
    *(v0 + 464) = v11;
    v16 = *(v0 + 256);
    v17 = *(v0 + 168);
    v18 = *(v0 + 152);
    v19 = *(v14 + 56) + ((v11 << 10) | (16 * __clz(__rbit64(v13))));
    v20 = *v19;
    *(v0 + 472) = *v19;
    v21 = *(v19 + 8);
    swift_getObjectType();
    v22 = v20;
    dispatch thunk of AssetTextAttachmentProtocol.assetID.getter();
    *(v0 + 480) = UUID.uuidString.getter();
    *(v0 + 488) = v23;
    v16(v17, v18);
    v24 = swift_task_alloc();
    *(v0 + 496) = v24;
    *v24 = v0;
    v24[1] = sub_1007A18E4;
    v25 = *(v0 + 136);
    v27 = *(v0 + 120);
    v26 = *(v0 + 128);

    return sub_1007A336C(v27, v26, v22, v21, v25);
  }

  else
  {
    while (1)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
      }

      v14 = *(v0 + 440);
      if (v15 >= (((1 << *(v0 + 520)) + 63) >> 6))
      {
        break;
      }

      v13 = *(v14 + 8 * v15 + 64);
      ++v11;
      if (v13)
      {
        v11 = v15;
        goto LABEL_7;
      }
    }

    v29 = *(v0 + 224);

    sub_1007A1DA8(v29);

    v30 = *(v0 + 8);
    v31 = *(v0 + 232);

    return v30(v31, v6);
  }
}

uint64_t sub_1007A1D34()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF1668);
  sub_10000617C(v0, qword_100AF1668);
  return Logger.init(subsystem:category:)();
}

void sub_1007A1DA8(double a1)
{
  if (qword_100AD0AA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AF1668);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    sub_1000F24EC(&unk_100AD5B10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100940080;
    Current = CFAbsoluteTimeGetCurrent();
    *(v6 + 56) = &type metadata for Double;
    *(v6 + 64) = &protocol witness table for Double;
    *(v6 + 32) = Current - a1;
    v8 = String.init(format:_:)();
    v10 = sub_100008458(v8, v9, &v12);

    *(v4 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "EntryViewModel.buildExportPackage executed in %ss", v4, 0xCu);
    sub_10000BA7C(v5);
  }
}

uint64_t sub_1007A1F60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_100202F80(v8, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a4 + 16) = v11;
  swift_endAccess();
  return 0;
}

void sub_1007A2004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(a8 + 16);
  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v17;
    swift_beginAccess();
    v18 = *(a9 + 16);
    if (*(v18 + 16) && (v19 = sub_1000B8DAC(v17), (v20 & 1) != 0))
    {
      v21 = *(*(v18 + 56) + 16 * v19);
      swift_endAccess();
      swift_getObjectType();
      v22 = v21;
      dispatch thunk of AssetTextAttachmentProtocol.assetID.getter();
      v23 = UUID.uuidString.getter();
      v25 = v24;
      (*(v13 + 8))(v15, v12);
      v31[0] = 0xD00000000000001FLL;
      v31[1] = 0x8000000100908720;
      v26._countAndFlagsBits = v23;
      v26._object = v25;
      String.append(_:)(v26);

      v27._countAndFlagsBits = 8995;
      v27._object = 0xE200000000000000;
      String.append(_:)(v27);
      v28 = objc_allocWithZone(NSAttributedString);
      v29 = String._bridgeToObjectiveC()();

      v30 = [v28 initWithString:v29];

      [a10 insertAttributedString:v30 atIndex:a3];
    }

    else
    {
      swift_endAccess();
    }
  }
}

uint64_t sub_1007A223C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  if (a1)
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

  v4[8] = v5;
  v4[9] = v7;

  return _swift_task_switch(sub_1007A22D0, v5, v7);
}

unint64_t sub_1007A22D0()
{
  v0[2] = 0;
  v1 = v0[7];
  v0[3] = 0xE000000000000000;
  result = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssetsAndSlimAsset);
  v0[10] = result;
  if (result >> 62)
  {
    v10 = result;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    result = v10;
    v0[11] = v3;
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        v0[12] = 0;
        v4 = v0[10];

        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v5 = *(v4 + 32);
        }

        v0[13] = v5;
        v6 = swift_task_alloc();
        v0[14] = v6;
        *v6 = v0;
        v6[1] = sub_1007A24B8;
        v7 = v0[5];
        v8 = v0[6];
        v9 = v0[4];

        return sub_100595458(v9, v7, v8);
      }

      return result;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[11] = v3;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  _StringGuts.grow(_:)(35);

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x3E7669642F3CLL;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);
  v13 = v0[1];

  return v13(0xD00000000000001BLL, 0x80000001009087E0);
}

uint64_t sub_1007A24B8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_1007A2794;
  }

  else
  {
    v6[16] = a2;
    v6[17] = a1;
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_1007A25EC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1007A25EC()
{
  v1._countAndFlagsBits = *(v0 + 136);
  v2 = *(v0 + 104);
  v1._object = *(v0 + 128);
  String.append(_:)(v1);

  v3 = *(v0 + 96) + 1;
  if (v3 == *(v0 + 88))
  {

    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    _StringGuts.grow(_:)(35);

    v6._countAndFlagsBits = v4;
    v6._object = v5;
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0x3E7669642F3CLL;
    v7._object = 0xE600000000000000;
    String.append(_:)(v7);
    v8 = *(v0 + 8);

    return v8(0xD00000000000001BLL, 0x80000001009087E0);
  }

  else
  {
    *(v0 + 96) = v3;
    v10 = *(v0 + 80);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v10 + 8 * v3 + 32);
    }

    *(v0 + 104) = v11;
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = sub_1007A24B8;
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    v15 = *(v0 + 32);

    return sub_100595458(v15, v13, v14);
  }
}

uint64_t sub_1007A2794()
{
  if (qword_100AD0AA0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AF1668);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2112;
    v10 = v7;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "getHTMLAssetGrid error creating HTML export for %@ %@", v8, 0x16u);
    sub_1000F24EC(&unk_100AD4BB0);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = v0[12] + 1;
  if (v12 == v0[11])
  {

    v13 = v0[2];
    v14 = v0[3];
    _StringGuts.grow(_:)(35);

    v15._countAndFlagsBits = v13;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x3E7669642F3CLL;
    v16._object = 0xE600000000000000;
    String.append(_:)(v16);
    v17 = v0[1];

    return v17(0xD00000000000001BLL, 0x80000001009087E0);
  }

  else
  {
    v0[12] = v12;
    v19 = v0[10];
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v20 = *(v19 + 8 * v12 + 32);
    }

    v0[13] = v20;
    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = sub_1007A24B8;
    v22 = v0[5];
    v23 = v0[6];
    v24 = v0[4];

    return sub_100595458(v24, v22, v23);
  }
}

uint64_t sub_1007A2AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v6 = type metadata accessor for UUID();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[11] = v7;
  v4[12] = v9;

  return _swift_task_switch(sub_1007A2BB0, v7, v9);
}

uint64_t sub_1007A2BB0()
{
  v0[1]._countAndFlagsBits = 0;
  v0[1]._object = 0xE000000000000000;
  if ((sub_10029EF80() & 1) == 0)
  {
LABEL_15:
    _StringGuts.grow(_:)(43);

    String.append(_:)(v0[1]);

    v8._countAndFlagsBits = 0x3E7669642F3CLL;
    v8._object = 0xE600000000000000;
    String.append(_:)(v8);

    object = v0->_object;

    return object(0xD000000000000023, 0x8000000100908770);
  }

  v1 = *(v0[3]._object + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
  if (v1 >> 62)
  {
LABEL_23:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_14:

    goto LABEL_15;
  }

  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v0[6]._object = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    type metadata accessor for DrawingAsset();
    v7 = swift_dynamicCastClass();
    v0[7]._countAndFlagsBits = v7;
    if (v7)
    {
      break;
    }

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_14;
    }
  }

  v11 = swift_task_alloc();
  v0[7]._object = v11;
  *v11 = v0;
  v11[1] = sub_1007A2E1C;
  v12 = v0[2]._object;
  countAndFlagsBits = v0[3]._countAndFlagsBits;
  v14 = v0[2]._countAndFlagsBits;

  return sub_100595458(v14, v12, countAndFlagsBits);
}

uint64_t sub_1007A2E1C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v7 = v6[11];
    v8 = v6[12];
    v9 = sub_1007A3050;
  }

  else
  {
    v6[17] = a2;
    v6[18] = a1;
    v7 = v6[11];
    v8 = v6[12];
    v9 = sub_1007A2F50;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1007A2F50()
{
  v1._countAndFlagsBits = v0[9]._countAndFlagsBits;
  object = v0[6]._object;
  v1._object = v0[8]._object;
  String.append(_:)(v1);

  _StringGuts.grow(_:)(43);

  String.append(_:)(v0[1]);

  v3._countAndFlagsBits = 0x3E7669642F3CLL;
  v3._object = 0xE600000000000000;
  String.append(_:)(v3);

  v4 = v0->_object;

  return v4(0xD000000000000023, 0x8000000100908770);
}

uint64_t sub_1007A3050()
{
  v27 = v0;
  if (qword_100AD0AA0 != -1)
  {
    swift_once();
  }

  object = v0[6]._object;
  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AF1668);
  v3 = object;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    countAndFlagsBits = v0[7]._countAndFlagsBits;
    v24 = v0[6]._object;
    v8 = v0[4]._object;
    v7 = v0[5]._countAndFlagsBits;
    v9 = v0[4]._countAndFlagsBits;
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v10 = 136315394;
    v8[2](v7, countAndFlagsBits + OBJC_IVAR____TtC7Journal5Asset_id, v9);
    sub_100500278();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (v8[1])(v7, v9);
    v14 = sub_100008458(v11, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v22 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "getHTMLFullScreenDrawing error creating HTML export for %s %@", v10, 0x16u);
    sub_100004F84(v22, &unk_100AD4BB0);

    sub_10000BA7C(v23);
  }

  else
  {
    v16 = v0[6]._object;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v25 = 0xD000000000000023;
  v26 = 0x8000000100908770;
  String.append(_:)(v0[1]);

  v17._countAndFlagsBits = 0x3E7669642F3CLL;
  v17._object = 0xE600000000000000;
  String.append(_:)(v17);
  v18 = v25;
  v19 = v26;

  v20 = v0->_object;

  return v20(v18, v19);
}

uint64_t sub_1007A336C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v8 = type metadata accessor for UUID();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v6[16] = v9;
  v6[17] = v11;

  return _swift_task_switch(sub_1007A3470, v9, v11);
}

uint64_t sub_1007A3470()
{
  *(v0 + 16) = 0;
  v1 = (v0 + 16);
  v3 = v1[12];
  v2 = v1[13];
  v5 = v1[10];
  v4 = v1[11];
  v1[1] = 0xE000000000000000;
  v1[16] = swift_getObjectType();
  dispatch thunk of AssetTextAttachmentProtocol.assetID.getter();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  v1[17] = v6;
  v1[18] = v7;
  (*(v3 + 8))(v2, v4);
  v9 = *(v5 + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
  if (v9 >> 62)
  {
LABEL_26:
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v24[21] = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (UUID.uuidString.getter() == v6 && v15 == v8)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_21;
      }

      ++v11;
      if (v14 == v10)
      {
        goto LABEL_17;
      }
    }

LABEL_21:

    v20 = swift_task_alloc();
    v24[22] = v20;
    *v20 = v24;
    v20[1] = sub_1007A3708;
    v21 = v24[11];
    v22 = v24[8];
    v23 = v24[7];

    return sub_100595458(v23, v22, v21);
  }

  else
  {
LABEL_17:

    v18 = v24[1];

    return v18(0, 0xE000000000000000);
  }
}

uint64_t sub_1007A3708(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 184) = v2;

  if (v2)
  {
    v7 = v6[16];
    v8 = v6[17];
    v9 = sub_1007A3B98;
  }

  else
  {

    v6[24] = a2;
    v6[25] = a1;
    v7 = v6[16];
    v8 = v6[17];
    v9 = sub_1007A3844;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1007A3844()
{
  v1._countAndFlagsBits = *(v0 + 200);
  v1._object = *(v0 + 192);
  String.append(_:)(v1);

  result = dispatch thunk of AssetTextAttachmentProtocol.preferredRatioSize.getter();
  v4 = v3 * 100.0;
  if (COERCE__INT64(fabs(v3 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = dispatch thunk of AssetTextAttachmentProtocol.preferredRatioSize.getter();
  v6 = v5 * 100.0;
  if (COERCE__INT64(fabs(v5 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v7 = v4;
  if (v4 == 100)
  {
    v8 = 0xE600000000000000;
    v9 = 0x7265746E6563;
  }

  else
  {
    v11 = dispatch thunk of AssetTextAttachmentProtocol.anchorAlignment.getter() != 2;
    if ((v10 | v11))
    {
      v9 = 0x676E696461656CLL;
    }

    else
    {
      v9 = 0x676E696C69617274;
    }

    if ((v10 | v11))
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }
  }

  v12 = *(v0 + 168);
  _StringGuts.grow(_:)(85);
  v13._object = 0x8000000100908740;
  v13._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v9;
  v14._object = v8;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x3D656C7974732022;
  v15._object = 0xEF3A687464697722;
  String.append(_:)(v15);
  *(v0 + 32) = v7;
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x7463657073613B25;
  v17._object = 0xEF3A6F697461722DLL;
  String.append(_:)(v17);
  *(v0 + 40) = v7;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 47;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  *(v0 + 48) = v6;
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 4071995;
  v21._object = 0xE300000000000000;
  String.append(_:)(v21);
  String.append(_:)(*(v0 + 16));

  v22._countAndFlagsBits = 0x3E7669642F3CLL;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);

  v23 = *(v0 + 8);

  return v23(0, 0xE000000000000000);
}

uint64_t sub_1007A3B98()
{
  v38 = v0;
  if (qword_100AD0AA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AF1668);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  countAndFlagsBits = v0[10]._countAndFlagsBits;
  if (v4)
  {
    object = v0[9]._object;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v7 = 136315394;
    v10 = sub_100008458(object, countAndFlagsBits, &v36);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "getHTMLAnchoredAttachment error creating HTML export for %s %@", v7, 0x16u);
    sub_100004F84(v8, &unk_100AD4BB0);

    sub_10000BA7C(v9);
  }

  else
  {
  }

  result = dispatch thunk of AssetTextAttachmentProtocol.preferredRatioSize.getter();
  v14 = v13 * 100.0;
  if (COERCE__INT64(fabs(v13 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = dispatch thunk of AssetTextAttachmentProtocol.preferredRatioSize.getter();
  v16 = v15 * 100.0;
  if (COERCE__INT64(fabs(v15 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v17 = v14;
  if (v14 == 100)
  {
    v18 = 0xE600000000000000;
    v19 = 0x7265746E6563;
  }

  else
  {
    v21 = dispatch thunk of AssetTextAttachmentProtocol.anchorAlignment.getter() != 2;
    if ((v20 | v21))
    {
      v19 = 0x676E696461656CLL;
    }

    else
    {
      v19 = 0x676E696C69617274;
    }

    if ((v20 | v21))
    {
      v18 = 0xE700000000000000;
    }

    else
    {
      v18 = 0xE800000000000000;
    }
  }

  v22 = v0[10]._object;
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(85);
  v23._object = 0x8000000100908740;
  v23._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v23);
  v24._countAndFlagsBits = v19;
  v24._object = v18;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 0x3D656C7974732022;
  v25._object = 0xEF3A687464697722;
  String.append(_:)(v25);
  v0[2]._countAndFlagsBits = v17;
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x7463657073613B25;
  v27._object = 0xEF3A6F697461722DLL;
  String.append(_:)(v27);
  v0[2]._object = v17;
  v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 47;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v0[3]._countAndFlagsBits = v16;
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 4071995;
  v31._object = 0xE300000000000000;
  String.append(_:)(v31);
  String.append(_:)(v0[1]);

  v32._countAndFlagsBits = 0x3E7669642F3CLL;
  v32._object = 0xE600000000000000;
  String.append(_:)(v32);

  v34 = v36;
  v33 = v37;

  v35 = v0->_object;

  return v35(v34, v33);
}

uint64_t sub_1007A4090(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1007A4150, 0, 0);
}

uint64_t sub_1007A4150()
{
  if (qword_100ACFE18 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1007A4228;

  return sub_1004A7644();
}

uint64_t sub_1007A4228(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_1007A4328, 0, 0);
}

uint64_t sub_1007A4328()
{
  v17 = v0;
  v1 = *(v0 + 56);
  v2 = 0xE000000000000000;
  if (v1)
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = sub_1006966EC(v3, *(v0 + 56), 0xD000000000000010, 0x8000000100908820);
    v9 = v8;
    (*(v4 + 8))(v3, v5);
    _StringGuts.grow(_:)(21);

    strcpy(v16, "<img src=../");
    HIWORD(v16[1]) = -4864;
    String.append(_:)(*(v6 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
    v10._countAndFlagsBits = 47;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = v7;
    v11._object = v9;
    String.append(_:)(v11);

    v12._countAndFlagsBits = 4075298;
    v12._object = 0xE300000000000000;
    String.append(_:)(v12);

    v13 = v16[0];
    v2 = v16[1];
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v0 + 8);

  return v14(v13, v2);
}

unint64_t sub_1007A44B0()
{
  v1 = v0;
  v21 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Date.FormatStyle.DateStyle();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v24 = 0xD00000000000001CLL;
  v25 = 0x8000000100908840;
  v12 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
  swift_beginAccess();
  (*(v9 + 16))(v11, v1 + v12, v8);
  static Date.FormatStyle.DateStyle.complete.getter();
  static Date.FormatStyle.TimeStyle.omitted.getter();
  v13 = Date.formatted(date:time:)();
  v15 = v14;
  (*(v2 + 8))(v4, v21);
  (*(v5 + 8))(v7, v20);
  (*(v9 + 8))(v11, v8);
  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x3E7669642F3CLL;
  v17._object = 0xE600000000000000;
  String.append(_:)(v17);
  return v24;
}

uint64_t sub_1007A4778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1007A4810;

  return sub_1007A4090(a3);
}

uint64_t sub_1007A4810(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

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

  return _swift_task_switch(sub_1007A4950, v5, v7);
}

uint64_t sub_1007A4950()
{
  v2 = v0[5];
  v1 = v0[6];
  _StringGuts.grow(_:)(39);

  v3._countAndFlagsBits = v2;
  v3._object = v1;
  String.append(_:)(v3);

  if (qword_100AD0718 != -1)
  {
    swift_once();
  }

  String.append(_:)(xmmword_100B30A10);
  v4._countAndFlagsBits = 0x3E7669642F3CLL;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);
  v5 = v0[1];

  return v5(0xD00000000000001DLL, 0x8000000100908800);
}

void *sub_1007A4A64()
{
  result = sub_100049F2C();
  if (result)
  {
    v1 = sub_10053256C(result);
    v5 = v4;
    if (v3)
    {
      v6 = v1;
      v7 = v2;
      v8 = v3;
      v9 = [v3 string];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      _StringGuts.grow(_:)(70);
      v13._object = 0x80000001009087A0;
      v13._countAndFlagsBits = 0xD00000000000003ALL;
      String.append(_:)(v13);
      v14 = sub_1005329B4(v6, v7 & 1, v5);
      v15 = sub_100417B20();
      v17 = v16;

      v18._countAndFlagsBits = v15;
      v18._object = v17;
      String.append(_:)(v18);

      v19._countAndFlagsBits = 15906;
      v19._object = 0xE200000000000000;
      String.append(_:)(v19);
      v20._countAndFlagsBits = v10;
      v20._object = v12;
      String.append(_:)(v20);

      v21._countAndFlagsBits = 0x3E7669642F3CLL;
      v21._object = 0xE600000000000000;
      String.append(_:)(v21);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1007A4BF4()
{
  v1 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for MultiPinMapAssetMetadata();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_multiPinMapAsset);
  if (!v9)
  {
    return 0;
  }

  if (!*&v9[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
  {
    (*(v5 + 56))(v3, 1, 1, v4, v6);
    goto LABEL_7;
  }

  v10 = v9;

  sub_1000768B4(v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {

LABEL_7:
    sub_100004F84(v3, &unk_100AD5B30);
    return 0;
  }

  (*(v5 + 32))(v8, v3, v4);
  v12 = MultiPinMapAssetMetadata.visitsData.getter();

  (*(v5 + 8))(v8, v4);
  return v12;
}

char *sub_1007A4DF0(double a1, double a2, double a3, double a4)
{
  v9 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_mapView;
  *&v4[v15] = [objc_allocWithZone(MKMapView) init];
  *&v4[OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_multiPinMapAsset] = 0;
  v4[OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_shouldUpdateSavedZoom] = 0;
  v16 = type metadata accessor for CanvasLocationsMapCell();
  v40.receiver = v4;
  v40.super_class = v16;
  v17 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  v19 = OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_mapView;
  [v18 addSubview:*&v17[OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_mapView]];

  v20 = *&v17[v19];
  sub_100013178(0.0);

  v21 = [objc_allocWithZone(MKStandardMapConfiguration) init];
  v22 = [objc_opt_self() filterExcludingAllCategories];
  [v21 setPointOfInterestFilter:v22];

  [*&v17[v19] setPreferredConfiguration:v21];
  v23 = *&v17[v19];
  v24 = [v17 traitCollection];

  v25 = [v24 horizontalSizeClass];
  if (v25 == 1)
  {
    v26 = 180.0;
  }

  else
  {
    v26 = 250.0;
  }

  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [v23 heightAnchor];
  v28 = [v27 constraintEqualToConstant:v26];

  [v28 setActive:1];
  UICollectionViewCell.backgroundConfiguration.getter();
  v29 = type metadata accessor for UIBackgroundConfiguration();
  if ((*(*(v29 - 8) + 48))(v14, 1, v29))
  {
    sub_1007A6EE0(v14, v11);
    UICollectionViewCell.backgroundConfiguration.setter();

    sub_100004F84(v14, &qword_100AF16C0);
  }

  else
  {
    v30 = [objc_opt_self() clearColor];
    UIBackgroundConfiguration.backgroundColor.setter();
    UICollectionViewCell.backgroundConfiguration.setter();
  }

  v31 = *&v17[v19];
  sub_1000065A8(0, &unk_100AD91D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [v31 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:MKMapViewDefaultClusterAnnotationViewReuseIdentifier];
  [*&v17[v19] registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:MKMapViewDefaultAnnotationViewReuseIdentifier];
  result = [*&v17[v19] _panningGestureRecognizer];
  if (result)
  {
    v34 = result;
    [result setMinimumNumberOfTouches:2];

    [*&v17[v19] setShowsAttribution:0];
    v35 = *&v17[v19];
    v36 = v17;
    [v35 setDelegate:v36];
    sub_1007A553C();
    [v36 setIsAccessibilityElement:1];
    v37 = UIAccessibilityTraitButton;
    v38 = [v36 accessibilityTraits];
    if ((v37 & ~v38) != 0)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0;
    }

    [v36 setAccessibilityTraits:v39 | v38];

    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1007A52CC()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_mapView];
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 1)
  {
    v4 = 180.0;
  }

  else
  {
    v4 = 250.0;
  }

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v1 heightAnchor];
  v6 = [v5 constraintEqualToConstant:v4];

  [v6 setActive:1];
}

void sub_1007A553C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v2 - 8);
  v94 = v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v93 = v73 - v5;
  v6 = type metadata accessor for VisitAssetMetadata();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_mapView);
  isa = [v11 annotations];
  if (!isa)
  {
    sub_1000F24EC(&unk_100AD91C0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v11 removeAnnotations:isa];

  v13 = sub_1007A4BF4();
  if (v13)
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      v17 = *(v7 + 16);
      v15 = v7 + 16;
      v16 = v17;
      v18 = (*(v15 + 64) + 32) & ~*(v15 + 64);
      v73[1] = v13;
      v19 = v13 + v18;
      v20 = *(v15 + 56);
      v95 = (v15 - 8);
      v79 = v1;
      v78 = v6;
      v77 = v15;
      v75 = v17;
      v74 = v20;
      v76 = v10;
      v17(v10, v13 + v18, v6);
      while (1)
      {
        v51 = VisitAssetMetadata.latitude.getter();
        if ((v52 & 1) == 0)
        {
          v53 = *&v51;
          *&v54 = COERCE_DOUBLE(VisitAssetMetadata.longitude.getter());
          if ((v55 & 1) == 0)
          {
            v92 = v14;
            v56 = v53;
            v57 = *&v54;
            v58 = VisitAssetMetadata.typeOfPlace.getter();
            v81 = v19;
            if (v59)
            {
              v90 = v59;
              v91 = v58;
            }

            else
            {
              v60 = VisitAssetMetadata.mapItemData.getter();
              if (v61 >> 60 != 15 && (v62 = v60, v63 = v61, sub_1000065A8(0, &qword_100AD5A90), v64 = static NSCoding<>.create(from:)(), sub_10003A5C8(v62, v63), v64) && (v65 = [v64 _firstLocalizedCategoryName], v64, v65) || (v66 = VisitAssetMetadata.mapItemData.getter(), v67 >> 60 != 15) && (v68 = v66, v69 = v67, sub_1000065A8(0, &qword_100AD5A90), v70 = static NSCoding<>.create(from:)(), sub_10003A5C8(v68, v69), v70) && (v65 = objc_msgSend(v70, "pointOfInterestCategory"), v70, v65))
              {
                v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v90 = v72;
                v91 = v71;
              }

              else
              {
                v90 = 0;
                v91 = 0;
              }
            }

            v21 = VisitAssetMetadata.id.getter();
            v86 = v22;
            v87 = v21;
            v23 = VisitAssetMetadata.placeName.getter();
            v84 = v24;
            v85 = v23;
            v25 = VisitAssetMetadata.city.getter();
            v82 = v26;
            v83 = v25;
            VisitAssetMetadata.visitStartTime.getter();
            VisitAssetMetadata.createdDate.getter();
            v88 = sub_100579A18();
            v89 = type metadata accessor for StyledMKPointAnnotation();
            v27 = objc_allocWithZone(v89);
            v28 = &v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID];
            *v28 = 0;
            v28[1] = 0;
            v29 = &v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_placeName];
            *v29 = 0;
            v29[1] = 0;
            v30 = &v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_city];
            *v30 = 0;
            v30[1] = 0;
            v31 = &v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_typeOfPlace];
            *v31 = 0;
            v31[1] = 0;
            v32 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitStartTime;
            v80 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitStartTime;
            v33 = type metadata accessor for Date();
            v34 = *(*(v33 - 8) + 56);
            v34(&v27[v32], 1, 1, v33);
            v35 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_createdDate;
            v34(&v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_createdDate], 1, 1, v33);
            v36 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_styleAttributes;
            *&v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_styleAttributes] = 0;
            v37 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_entryIds;
            *&v27[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_entryIds] = 0;
            v38 = v86;
            *v28 = v87;
            v28[1] = v38;
            v39 = v84;
            *v29 = v85;
            v29[1] = v39;
            v40 = v82;
            *v30 = v83;
            v30[1] = v40;

            v41 = v90;
            *v31 = v91;
            v31[1] = v41;

            v42 = v80;
            swift_beginAccess();
            v43 = v93;
            sub_100221D8C(v93, &v27[v42]);
            swift_endAccess();
            swift_beginAccess();
            v44 = &v27[v35];
            v10 = v76;
            v45 = v94;
            sub_100221D8C(v94, v44);
            swift_endAccess();
            v46 = *&v27[v36];
            v47 = v88;
            *&v27[v36] = v88;
            v48 = v47;

            *&v27[v37] = _swiftEmptySetSingleton;

            v96.receiver = v27;
            v96.super_class = v89;
            v49 = objc_msgSendSuper2(&v96, "init");
            [v49 setCoordinate:{v56, v57}];

            sub_100004F84(v45, &unk_100AD4790);
            sub_100004F84(v43, &unk_100AD4790);
            v50 = v49;
            sub_1007A66E8(v50, v79);

            v6 = v78;
            v14 = v92;
            v16 = v75;
            v20 = v74;
            v19 = v81;
          }
        }

        (*v95)(v10, v6);
        v19 += v20;
        if (!--v14)
        {
          break;
        }

        v16(v10, v19, v6);
      }
    }

    sub_1007A5BCC();
  }
}

void sub_1007A5BCC()
{
  v1 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v29 - v5;
  v7 = type metadata accessor for MultiPinMapAssetMetadata();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_multiPinMapAsset;
  v13 = *(v0 + OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_multiPinMapAsset);
  if (v13)
  {
    if (!*&v13[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
    {
      (*(v8 + 56))(v6, 1, 1, v7, v9);
      goto LABEL_6;
    }

    v30 = v0;
    v14 = v13;

    sub_1000768B4(v6);

    v15 = *(v8 + 48);
    if (v15(v6, 1, v7) == 1)
    {

LABEL_6:
      sub_100004F84(v6, &unk_100AD5B30);
      return;
    }

    (*(v8 + 32))(v11, v6, v7);
    v16 = MultiPinMapAssetMetadata.visitsData.getter();

    v17 = *(v8 + 8);
    v17(v11, v7);
    v18 = v30;
    if (v16)
    {
      if (!*(v16 + 16))
      {

        return;
      }

      v19 = *(v30 + v12);
      if (!v19)
      {
        goto LABEL_17;
      }

      v20 = v19;
      sub_10007F460(v3);

      if (v15(v3, 1, v7) == 1)
      {
        sub_100004F84(v3, &unk_100AD5B30);
      }

      else
      {
        v21 = MultiPinMapAssetMetadata.mapCameraData.getter();
        if (v22 >> 60 != 15)
        {
          v27 = v21;
          v28 = v22;
          sub_1000065A8(0, &qword_100AD91B0);
          v26 = static NSCoding<>.create(from:)();
          sub_10003A5C8(v27, v28);
          v17(v3, v7);
          v18 = v30;
          if (v26)
          {

            goto LABEL_18;
          }

LABEL_17:
          v23 = sub_10032BED4(v16);

          v24 = [objc_opt_self() currentTraitCollection];
          v25 = sub_100505EC0(v23, 0, 7u, 0, 0, 1, v24, 1);

          v26 = [v25 camera];

LABEL_18:
          [*(v18 + OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_mapView) setCamera:v26 animated:1];

          return;
        }

        v17(v3, v7);
      }

      v18 = v30;
      goto LABEL_17;
    }
  }
}

id sub_1007A6058()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasLocationsMapCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007A61D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1007A6270, v6, v5);
}

uint64_t sub_1007A6270()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_multiPinMapAsset);
  *(v0 + 56) = v2;
  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v1 + OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_mapView);
    v2;
    v5 = [v4 camera];
    *(v0 + 64) = v5;

    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    v6[1] = sub_1007A63C4;

    return sub_1001B6C48(v3, &protocol witness table for MainActor, v5);
  }

  else
  {

    **(v0 + 16) = *(v0 + 56) == 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1007A63C4()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return _swift_task_switch(sub_100436B70, v5, v4);
}

id sub_1007A66E8(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_mapView);
  v4 = [v3 annotations];
  sub_1000F24EC(&unk_100AD91C0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_20:

    return [v3 addAnnotation:a1];
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_3:
  v7 = 0;
  while ((v5 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_14;
    }

LABEL_9:
    [v8 coordinate];
    v11 = v10;
    [a1 coordinate];
    if (v11 == v12)
    {
      [v8 coordinate];
      v14 = v13;
      [a1 coordinate];
      v16 = v15;
      swift_unknownObjectRelease();
      if (v14 == v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v7;
    if (v9 == v6)
    {
      goto LABEL_20;
    }
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = *(v5 + 8 * v7 + 32);
  swift_unknownObjectRetain();
  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
LABEL_15:
}

id sub_1007A68D0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v7 = [a1 dequeueReusableAnnotationViewWithIdentifier:MKMapViewDefaultClusterAnnotationViewReuseIdentifier forAnnotation:a2];
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = objc_opt_self();
      v10 = v7;
      v11 = [v9 systemIndigoColor];
      [v8 setMarkerTintColor:v11];
    }

    else
    {
    }

    return v8;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return 0;
  }

  v12 = [a1 dequeueReusableAnnotationViewWithIdentifier:MKMapViewDefaultAnnotationViewReuseIdentifier forAnnotation:a2];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v8 = v13;
    [v13 setAnnotation:a2];
  }

  else
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = objc_allocWithZone(MKMarkerAnnotationView);
    v15 = String._bridgeToObjectiveC()();

    v8 = [v14 initWithAnnotation:a2 reuseIdentifier:v15];

    if (v8)
    {
      [v8 setCanShowCallout:1];
    }
  }

  type metadata accessor for StyledMKPointAnnotation();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = *(v16 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_styleAttributes);
  if (!v17)
  {
    goto LABEL_19;
  }

  if (!v8)
  {
    v28 = *(v16 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_placeName + 8);
    swift_unknownObjectRetain();
    v29 = v17;
    if (v28)
    {
      v30 = v29;
      swift_unknownObjectRelease();

      return 0;
    }

    goto LABEL_18;
  }

  v18 = v16;
  v19 = objc_opt_self();
  swift_unknownObjectRetain();
  v20 = v17;
  v21 = [v19 styleAttributesForMapFeatureAttributes:v20 elevatedGround:1];
  [v8 _setStyleAttributes:v21];

  v22 = *(v18 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_placeName + 8);
  if (!v22)
  {
LABEL_18:
    swift_unknownObjectRelease();

LABEL_19:
    if (!v8)
    {
      return v8;
    }

    goto LABEL_20;
  }

  v23 = *(v18 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_placeName);

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x3A6E69502070614DLL;
  v24._object = 0xE900000000000020;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
  v25._countAndFlagsBits = v23;
  v25._object = v22;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v25);

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v27 = String._bridgeToObjectiveC()();

  [v8 setAccessibilityLabel:v27];

  swift_unknownObjectRelease();
LABEL_20:
  v31 = [v8 _styleAttributes];
  if (!v31 || (v32 = v31, [v31 poiType], v32, (v33 = objc_msgSend(v8, "_styleAttributes")) != 0) && (v34 = v33, v35 = objc_msgSend(v33, "poiType"), v34, v35 == 348))
  {
    v36 = [objc_opt_self() systemIndigoColor];
    [v8 setMarkerTintColor:v36];
  }

  [v8 setClusteringIdentifier:MKMapViewDefaultClusterAnnotationViewReuseIdentifier];
  return v8;
}

uint64_t sub_1007A6E2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1007A61D8(a1, v4, v5, v6);
}

uint64_t sub_1007A6EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AF16C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1007A6F50(uint64_t a1)
{
  v3 = [v1 entity];
  v4 = [v3 attributesByName];

  sub_1007AB4A4();
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_100891C98(v5);
  v7 = v6;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 56;

  v14 = 0;
  v31 = a1;
  while (v11)
  {
    v15 = v11;
LABEL_12:
    v11 = (v15 - 1) & v15;
    if (*(v7 + 16))
    {
      v17 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v15)))));
      v19 = *v17;
      v18 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      if ((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v7 + 48) + 16 * v22);
          v25 = *v24 == v19 && v24[1] == v18;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        a1 = v31;
        if (*(v31 + 16) && (v26 = sub_100094E98(v19, v18), (v27 & 1) != 0))
        {
          sub_10000BA20(*(v31 + 56) + 32 * v26, v32);
          sub_10000CA14(v32, v32[3]);
          v28 = _bridgeAnythingToObjectiveC<A>(_:)();
          sub_10000BA7C(v32);
        }

        else
        {
          v28 = 0;
        }

        v29 = String._bridgeToObjectiveC()();

        [v30 setValue:v28 forKey:v29];
        swift_unknownObjectRelease();
      }

      else
      {
LABEL_5:

        a1 = v31;
      }
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return;
    }

    v15 = *(v8 + 8 * v16);
    ++v14;
    if (v15)
    {
      v14 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1007A7298(uint64_t result, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a2(0);
    sub_1007AB504(a3, a4);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    dispatch thunk of Collection.index(_:offsetBy:limitedBy:)();
    if (v9)
    {
      dispatch thunk of Collection.endIndex.getter();
    }

    else
    {
      v11 = v8;
    }

    result = dispatch thunk of Collection.endIndex.getter();
    if (v10 >= v11)
    {
      dispatch thunk of Collection.subscript.getter();
      return (*(*(v7 - 8) + 8))(v4, v7);
    }
  }

  __break(1u);
  return result;
}

id sub_1007A73DC()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 title];
  if (v7)
  {
    v8 = v7;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = Data.getAttributedString()();
    sub_1000340DC(v9, v11);
    if (v12)
    {
      v13 = [v12 string];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v37 = v14;
      v38 = v16;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_1000777B4();
      v17 = StringProtocol.trimmingCharacters(in:)();
      v19 = v18;
      (*(v3 + 8))(v6, v2);

      v20 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v20 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        v21 = v17;
LABEL_14:
        v36 = sub_10012BD5C(3, v21);

        return v36;
      }
    }
  }

  result = [v1 text];
  if (!result)
  {
    return result;
  }

  v23 = result;
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = Data.getAttributedString()();
  sub_1000340DC(v24, v26);
  if (v27)
  {
    v28 = [v27 string];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v37 = v29;
    v38 = v31;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_1000777B4();
    v32 = StringProtocol.trimmingCharacters(in:)();
    v34 = v33;
    (*(v3 + 8))(v6, v2);

    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      v21 = v32;
      goto LABEL_14;
    }
  }

  return 0;
}

uint64_t sub_1007A76B8()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF16C8);
  sub_10000617C(v0, qword_100AF16C8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007A7738()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  v10 = swift_projectBox();
  if (qword_100AD0AA8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000617C(v11, qword_100AF16C8);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30[0] = v1;
    v16 = v0;
    v17 = v3;
    v18 = v15;
    v32[0] = v15;
    *v14 = 136315138;
    swift_beginAccess();
    sub_100161650(v10, v9);
    v19 = String.init<A>(describing:)();
    v21 = sub_100008458(v19, v20, v32);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "JournalShareUtility.cleanup removing %s", v14, 0xCu);
    sub_10000BA7C(v18);
    v3 = v17;
    v0 = v16;
    v1 = v30[0];
  }

  swift_beginAccess();
  sub_100161650(v10, v6);
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    return sub_100004F84(v6, &unk_100AD6DD0);
  }

  (*(v1 + 32))(v3, v6, v0);
  v23 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  v31 = 0;
  v27 = [v23 removeItemAtURL:v25 error:&v31];

  if (v27)
  {
    v28 = v31;
  }

  else
  {
    v29 = v31;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1007A7B2C(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UTType();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v65 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL.DirectoryHint();
  v63 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v68 = *(v10 - 8);
  v69 = v10;
  __chkstk_darwin(v10);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v56 - v13;
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v20 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v20 - 8);
  v64 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  v62 = swift_projectBox();
  v25 = [a1 objectWithID:a2];
  type metadata accessor for JournalEntryMO();
  if (!swift_dynamicCastClass() || (v26 = sub_1007A8348(), v2))
  {

    return;
  }

  v58 = v27;
  v59 = v26;
  v57 = v25;
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v28, qword_100B2FC48);
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  strcpy(v70, "JournalEntry");
  HIBYTE(v70[6]) = 0;
  v70[7] = -5120;
  v29 = v63;
  (*(v63 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
  sub_1000777B4();
  URL.appending<A>(path:directoryHint:)();
  (*(v29 + 8))(v9, v7);
  v30 = v68;
  v31 = v69;
  v32 = *(v68 + 8);
  v32(v16, v69);
  v33 = v65;
  static AppInfo.exportContentType.getter();
  URL.appendingPathExtension(for:)();
  (*(v66 + 8))(v33, v67);
  v32(v19, v31);
  (*(v30 + 56))(v24, 0, 1, v31);
  v34 = v62;
  swift_beginAccess();
  sub_10032964C(v24, v34);
  swift_beginAccess();
  v35 = v64;
  sub_100161650(v34, v64);
  if ((*(v30 + 48))(v35, 1, v31) == 1)
  {
    sub_1000340DC(v59, v58);

    sub_100004F84(v35, &unk_100AD6DD0);
    return;
  }

  v36 = v61;
  (*(v30 + 32))(v61, v35, v31);
  Data.write(to:options:)();
  if (qword_100AD0AA8 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000617C(v37, qword_100AF16C8);
  v38 = v60;
  (*(v30 + 16))(v60, v36, v31);
  v40 = v58;
  v39 = v59;
  sub_100049ED8(v59, v58);
  v41 = Logger.logObject.getter();
  LODWORD(v68) = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v41, v68))
  {

    sub_1000340DC(v39, v40);
    sub_1000340DC(v39, v40);
    v32(v38, v31);
    v32(v36, v31);
    return;
  }

  v42 = v41;
  v67 = 0;
  v43 = swift_slowAlloc();
  v66 = swift_slowAlloc();
  v71 = v66;
  *v43 = 134218242;
  v44 = v40 >> 62;
  v45 = v40;
  if ((v40 >> 62) > 1)
  {
    if (v44 != 2)
    {
      v46 = 0;
      goto LABEL_23;
    }

    v48 = v59[2];
    v47 = v59[3];
    v49 = __OFSUB__(v47, v48);
    v46 = v47 - v48;
    if (!v49)
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v44)
  {
    v46 = BYTE6(v40);
LABEL_23:
    *(v43 + 4) = v46;
    v50 = v59;
    sub_1000340DC(v59, v45);
    *(v43 + 12) = 2080;
    sub_1007AB504(&qword_100ADEFD0, &type metadata accessor for URL);
    v51 = v69;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v32(v38, v51);
    v55 = sub_100008458(v52, v54, &v71);

    *(v43 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v42, v68, "JournalShareUtility.exportEntry finished archiving entry, data (%{bytes}ld), fileURL: %s", v43, 0x16u);
    sub_10000BA7C(v66);

    sub_1000340DC(v50, v58);
    v32(v61, v51);
    return;
  }

  LODWORD(v46) = HIDWORD(v59) - v59;
  if (!__OFSUB__(HIDWORD(v59), v59))
  {
    v46 = v46;
    goto LABEL_23;
  }

  __break(1u);
}

void *sub_1007A8348()
{
  sub_1007A8518();
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = 0;
  v2 = [v0 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v6];

  v3 = v6;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

id sub_1007A84B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalShareUtility();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1007A8518()
{
  v1 = v0;
  v2 = [v0 entity];
  v3 = [v2 attributesByName];

  sub_1007AB4A4();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_1003E745C(*(v4 + 16), 0);
    v7 = sub_1001C3378(&v97, v6 + 4, v5, v4);
    sub_100014FF8();
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v1 dictionaryWithValuesForKeys:isa];

  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1007A920C();

  *(&v98 + 1) = sub_1000F24EC(&qword_100AD13D8);
  *&v97 = v10;
  sub_10002432C(&v97, v96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10020218C(v96, 0x7972746E65, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v12 = v1;
  v13 = &_swiftEmptyDictionarySingleton;
  v99 = &_swiftEmptyDictionarySingleton;
  v89 = v12;
  v14 = JournalEntryMO.assetsArrayUnsorted.getter();
  v90 = v14;
  if (v14 >> 62)
  {
    goto LABEL_88;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    while (1)
    {
      v16 = 0;
      v17 = v90 & 0xC000000000000001;
      v18 = v90 & 0xFFFFFFFFFFFFFF8;
      v19 = _swiftEmptyArrayStorage;
      v91 = v15;
      while (1)
      {
        if (v17)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v21 = __OFADD__(v16++, 1);
          if (v21)
          {
            goto LABEL_85;
          }
        }

        else
        {
          if (v16 >= *(v18 + 16))
          {
            goto LABEL_86;
          }

          v20 = *(v90 + 32 + 8 * v16);
          v21 = __OFADD__(v16++, 1);
          if (v21)
          {
            goto LABEL_85;
          }
        }

        v94 = v19;
        v95 = v20;
        v22 = [v20 entity];
        v23 = [v22 attributesByName];

        v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = *(v13 + 16);
        if (v24)
        {
          sub_1000F24EC(&unk_100AD9A60);
          v25 = swift_allocObject();
          v26 = j__malloc_size(v25);
          v27 = v26 - 32;
          if (v26 < 32)
          {
            v27 = v26 - 17;
          }

          v25[2] = v24;
          v25[3] = 2 * (v27 >> 4);
          v28 = sub_1001C3378(&v97, v25 + 4, v24, v13);
          sub_100014FF8();
          if (v28 != v24)
          {
            goto LABEL_87;
          }
        }

        else
        {
        }

        v29 = Array._bridgeToObjectiveC()().super.isa;

        v30 = [v95 dictionaryWithValuesForKeys:v29];

        v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = sub_100094E98(0xD000000000000012, 0x8000000100908980);
        if (v33)
        {
          v34 = v32;
          v35 = swift_isUniquelyReferenced_nonNull_native();
          *&v96[0] = v31;
          v36 = v31;
          if (!v35)
          {
            sub_100821978();
            v36 = *&v96[0];
          }

          sub_10002432C((*(v36 + 56) + 32 * v34), &v97);
          sub_100200EC4(v34, v36);
        }

        else
        {
          v97 = 0u;
          v98 = 0u;
          v36 = v31;
        }

        sub_100004F84(&v97, &qword_100AD13D0);
        v37 = sub_100094E98(0xD000000000000011, 0x80000001008DC3B0);
        if (v38)
        {
          v39 = v37;
          v40 = swift_isUniquelyReferenced_nonNull_native();
          *&v96[0] = v36;
          if (!v40)
          {
            sub_100821978();
            v36 = *&v96[0];
          }

          sub_10002432C((*(v36 + 56) + 32 * v39), &v97);
          sub_100200EC4(v39, v36);
        }

        else
        {
          v97 = 0u;
          v98 = 0u;
        }

        sub_100004F84(&v97, &qword_100AD13D0);
        v41 = sub_100094E98(0xD000000000000012, 0x80000001008E3C20);
        if (v42)
        {
          v43 = v41;
          v44 = swift_isUniquelyReferenced_nonNull_native();
          *&v96[0] = v36;
          if (!v44)
          {
            sub_100821978();
            v36 = *&v96[0];
          }

          sub_10002432C((*(v36 + 56) + 32 * v43), &v97);
          v93 = v36;
          sub_100200EC4(v43, v36);
        }

        else
        {
          v93 = v36;

          v97 = 0u;
          v98 = 0u;
        }

        sub_100004F84(&v97, &qword_100AD13D0);
        v45 = [v95 fileAttachments];
        v19 = v94;
        if (v45)
        {
          v46 = v45;
          v47 = [v45 allObjects];

          v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = sub_100584ADC(v48);

          if (v13)
          {
            break;
          }
        }

        v13 = v93;
LABEL_76:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1003E6DCC(0, *(v19 + 2) + 1, 1, v19);
        }

        v84 = *(v19 + 2);
        v83 = *(v19 + 3);
        if (v84 >= v83 >> 1)
        {
          v19 = sub_1003E6DCC((v83 > 1), v84 + 1, 1, v19);
        }

        *(v19 + 2) = v84 + 1;
        *&v19[v84 + 4] = v13;
        if (v16 == v15)
        {
          v13 = v99;
          v85 = v19;
          goto LABEL_90;
        }
      }

      v49 = v13 & 0xFFFFFFFFFFFFFF8;
      if (!(v13 >> 62))
      {
        break;
      }

      v50 = _CocoaArrayWrapper.endIndex.getter();
      v92 = v16;
      if (!v50)
      {
        goto LABEL_74;
      }

LABEL_36:
      v51 = 0;
      v52 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v51 >= *(v49 + 16))
          {
            goto LABEL_83;
          }

          v53 = *(v13 + 8 * v51 + 32);
        }

        v54 = v53;
        v55 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        v56 = [v53 entity];
        v57 = [v56 attributesByName];

        v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = *(v58 + 16);
        if (v59)
        {
          sub_1000F24EC(&unk_100AD9A60);
          v60 = swift_allocObject();
          v61 = j__malloc_size(v60);
          v62 = v61 - 32;
          if (v61 < 32)
          {
            v62 = v61 - 17;
          }

          v60[2] = v59;
          v60[3] = 2 * (v62 >> 4);
          v63 = sub_1001C3378(&v97, v60 + 4, v59, v58);
          sub_100014FF8();
          if (v63 != v59)
          {
            goto LABEL_84;
          }
        }

        else
        {
        }

        v64 = Array._bridgeToObjectiveC()().super.isa;

        v65 = [v54 dictionaryWithValuesForKeys:v64];

        v66 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v67 = sub_100094E98(0xD000000000000012, 0x8000000100908980);
        if (v68)
        {
          v69 = v67;
          v70 = swift_isUniquelyReferenced_nonNull_native();
          *&v96[0] = v66;
          v71 = v66;
          if (!v70)
          {
            sub_100821978();
            v71 = *&v96[0];
          }

          sub_10002432C((*(v71 + 56) + 32 * v69), &v97);
          sub_100200EC4(v69, v71);
        }

        else
        {
          v97 = 0u;
          v98 = 0u;
          v71 = v66;
        }

        sub_100004F84(&v97, &qword_100AD13D0);
        v72 = sub_100094E98(0xD000000000000011, 0x80000001008DC3B0);
        if (v73)
        {
          v74 = v72;
          v75 = swift_isUniquelyReferenced_nonNull_native();
          *&v96[0] = v71;
          if (!v75)
          {
            sub_100821978();
            v71 = *&v96[0];
          }

          sub_10002432C((*(v71 + 56) + 32 * v74), &v97);
          sub_100200EC4(v74, v71);
        }

        else
        {
          v97 = 0u;
          v98 = 0u;
        }

        sub_100004F84(&v97, &qword_100AD13D0);
        v76 = sub_100094E98(0xD000000000000012, 0x80000001008E3C20);
        if (v77)
        {
          v78 = v76;
          v79 = swift_isUniquelyReferenced_nonNull_native();
          *&v96[0] = v71;
          if (!v79)
          {
            sub_100821978();
            v71 = *&v96[0];
          }

          sub_10002432C((*(v71 + 56) + 32 * v78), &v97);
          sub_100200EC4(v78, v71);
        }

        else
        {

          v97 = 0u;
          v98 = 0u;
        }

        sub_100004F84(&v97, &qword_100AD13D0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_1003E6DCC(0, *(v52 + 2) + 1, 1, v52);
        }

        v49 = v13 & 0xFFFFFFFFFFFFFF8;
        v81 = *(v52 + 2);
        v80 = *(v52 + 3);
        if (v81 >= v80 >> 1)
        {
          v52 = sub_1003E6DCC((v80 > 1), v81 + 1, 1, v52);
        }

        *(v52 + 2) = v81 + 1;
        *&v52[v81 + 4] = v71;
        ++v51;
        if (v55 == v50)
        {
          goto LABEL_75;
        }
      }

      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (!v15)
      {
        goto LABEL_89;
      }
    }

    v50 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v92 = v16;
    if (v50)
    {
      goto LABEL_36;
    }

LABEL_74:
    v52 = _swiftEmptyArrayStorage;
LABEL_75:

    *(&v98 + 1) = sub_1000F24EC(&qword_100AD1430);
    *&v97 = v52;
    sub_10002432C(&v97, v96);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    sub_10020218C(v96, 0x61747441656C6966, 0xEF73746E656D6863, v82);

    v13 = v93;
    v15 = v91;
    v16 = v92;
    v18 = v90 & 0xFFFFFFFFFFFFFF8;
    v17 = v90 & 0xC000000000000001;
    v19 = v94;
    goto LABEL_76;
  }

LABEL_89:
  v85 = _swiftEmptyArrayStorage;
LABEL_90:

  *(&v98 + 1) = sub_1000F24EC(&qword_100AD1430);
  *&v97 = v85;
  sub_10002432C(&v97, v96);
  v86 = swift_isUniquelyReferenced_nonNull_native();
  sub_10020218C(v96, 0x737465737361, 0xE600000000000000, v86);
  v99 = v13;
  sub_1007A92F4(&v97);
  if (*(&v98 + 1))
  {
    sub_10002432C(&v97, v96);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    sub_10020218C(v96, 0x656D686361747461, 0xEB0000000073746ELL, v87);
    return v13;
  }

  else
  {
    sub_100004F84(&v97, &qword_100AD13D0);
    sub_100651CF8(0x656D686361747461, 0xEB0000000073746ELL, v96);
    sub_100004F84(v96, &qword_100AD13D0);
    return v99;
  }
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1007A920C()
{

  sub_100651CF8(0xD000000000000012, 0x8000000100908980, v0);
  sub_100004F84(v0, &qword_100AD13D0);
  sub_100651CF8(0xD000000000000011, 0x80000001008DC3B0, v0);
  sub_100004F84(v0, &qword_100AD13D0);
  sub_100651CF8(0xD000000000000012, 0x80000001008E3C20, v0);
  sub_100004F84(v0, &qword_100AD13D0);
}

uint64_t sub_1007A92F4@<X0>(void *a1@<X8>)
{
  v76 = a1;
  v1 = sub_1000F24EC(&qword_100AF1718);
  __chkstk_darwin(v1 - 8);
  v3 = &v69 - v2;
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v69 - v5;
  v84 = type metadata accessor for FileStoreConfiguration();
  v7 = *(v84 - 1);
  __chkstk_darwin(v84);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v82 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v75 = &v69 - v14;
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  __chkstk_darwin(v18);
  v20 = &v69 - v19;
  sub_100825608();
  if (!v21)
  {
LABEL_5:
    v31 = &_swiftEmptyDictionarySingleton;
    v32 = v76;
LABEL_29:
    result = sub_1000F24EC(&unk_100AD13E0);
    v32[3] = result;
    *v32 = v31;
    return result;
  }

  v73 = v3;
  static FileStoreConfiguration.shared.getter();
  FileStoreConfiguration.getAttachmentURL(from:isDirectory:)();

  v22 = *(v7 + 8);
  v23 = v84;
  v22(v9, v84);
  v80 = *(v82 + 32);
  v81 = v82 + 32;
  v80(v20, v17, v10);
  static FileStoreConfiguration.shared.getter();
  v24 = v75;
  FileStoreConfiguration.assetStorageDirectoryURL.getter();
  v22(v9, v23);
  v25 = [objc_opt_self() defaultManager];
  v26 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v27 = v20;
  v28 = v24;
  v84 = v26;
  if (!v26)
  {
    v30 = *(v82 + 8);
    v30(v24, v10);
    v30(v27, v10);
    goto LABEL_5;
  }

  v72 = v20;
  v83 = (v82 + 56);
  v79 = (v82 + 48);
  v78 = NSURLIsDirectoryKey;
  v82 += 8;
  v74 = &_swiftEmptyDictionarySingleton;
  v77 = xmmword_100940080;
  v29 = v73;
  while (1)
  {
    while (1)
    {
      if ([v84 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v85 = 0u;
        v86 = 0u;
      }

      v87[0] = v85;
      v87[1] = v86;
      if (!*(&v86 + 1))
      {

        v66 = *v82;
        (*v82)(v28, v10);
        v66(v72, v10);
        sub_100004F84(v87, &qword_100AD13D0);
        (*v83)(v6, 1, 1, v10);
LABEL_28:
        sub_100004F84(v6, &unk_100AD6DD0);
        v32 = v76;
        v31 = v74;
        goto LABEL_29;
      }

      v36 = swift_dynamicCast();
      (*v83)(v6, v36 ^ 1u, 1, v10);
      if ((*v79)(v6, 1, v10) == 1)
      {

        v67 = *v82;
        (*v82)(v28, v10);
        v67(v72, v10);
        goto LABEL_28;
      }

      v80(v12, v6, v10);
      sub_1000F24EC(&qword_100ADFA90);
      inited = swift_initStackObject();
      *(inited + 16) = v77;
      v38 = v78;
      *(inited + 32) = v78;
      v39 = v38;
      sub_10049567C(inited);
      swift_setDeallocating();
      sub_100577DD0(inited + 32);
      URL.resourceValues(forKeys:)();

      v40 = type metadata accessor for URLResourceValues();
      v41 = *(v40 - 8);
      (*(v41 + 56))(v29, 0, 1, v40);
      v42 = URLResourceValues.isDirectory.getter();
      (*(v41 + 8))(v29, v40);
      if (v42 == 2 || (v42 & 1) == 0)
      {
        break;
      }

LABEL_7:
      (*v82)(v12, v10);
    }

    v43 = Data.init(contentsOf:options:)();
    v45 = v44;
    v75 = URL.absoluteString.getter();
    v71 = v46;
    URL.absoluteString.getter();
    v47 = String.count.getter();

    v75 = sub_1000B5F78(v47, v75, v71);
    v70 = v48;
    v69 = v49;

    v71 = static String._fromSubstring(_:)();
    v75 = v50;

    sub_100049ED8(v43, v45);
    v51 = v74;
    LODWORD(v70) = swift_isUniquelyReferenced_nonNull_native();
    *&v87[0] = v51;
    v53 = sub_100094E98(v71, v75);
    v54 = v51[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      break;
    }

    if (v51[3] >= v56)
    {
      if (v70)
      {
        if ((v52 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        LODWORD(v74) = v52;
        sub_10082475C();
        if ((v74 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

LABEL_6:

      v74 = *&v87[0];
      v33 = (*(*&v87[0] + 56) + 16 * v53);
      v34 = *v33;
      v35 = v33[1];
      *v33 = v43;
      v33[1] = v45;
      sub_1000340DC(v34, v35);
      sub_1000340DC(v43, v45);
      goto LABEL_7;
    }

    LODWORD(v74) = v52;
    sub_100820E34(v56, v70);
    v57 = sub_100094E98(v71, v75);
    if ((v74 & 1) != (v58 & 1))
    {
      goto LABEL_32;
    }

    v53 = v57;
    if (v74)
    {
      goto LABEL_6;
    }

LABEL_22:
    v59 = *&v87[0];
    *(*&v87[0] + 8 * (v53 >> 6) + 64) |= 1 << v53;
    v60 = (v59[6] + 16 * v53);
    v61 = v75;
    *v60 = v71;
    v60[1] = v61;
    v62 = (v59[7] + 16 * v53);
    *v62 = v43;
    v62[1] = v45;
    sub_1000340DC(v43, v45);
    (*v82)(v12, v10);
    v63 = v59[2];
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_31;
    }

    v74 = v59;
    v59[2] = v65;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1007A9D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = a1;
  v32 = a3;
  v26 = a2;
  v29 = sub_1000F24EC(&qword_100AD4E78);
  v4 = *(v29 - 8);
  v30 = *(v4 + 64);
  __chkstk_darwin(v29);
  v28 = &v25 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v27 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&unk_100AE88B0);
  v10 = swift_allocObject();
  v25 = xmmword_100940080;
  *(v10 + 16) = xmmword_100940080;
  *(v10 + 56) = v6;
  v11 = sub_10001A770((v10 + 32));
  v12 = *(v7 + 16);
  v12(v11, a2, v6);
  v13 = objc_allocWithZone(UIActivityViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v13 initWithActivityItems:isa applicationActivities:0];

  sub_1000F24EC(&qword_100AF1710);
  v16 = swift_allocObject();
  *(v16 + 16) = v25;
  *(v16 + 32) = UIActivityTypeCopyToPasteboard;
  type metadata accessor for ActivityType(0);
  v17 = UIActivityTypeCopyToPasteboard;
  v18 = Array._bridgeToObjectiveC()().super.isa;

  [v15 setExcludedActivityTypes:v18];

  v12(v9, v26, v6);
  v20 = v28;
  v19 = v29;
  (*(v4 + 16))(v28, v31, v29);
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = (v27 + *(v4 + 80) + v21) & ~*(v4 + 80);
  v23 = swift_allocObject();
  (*(v7 + 32))(v23 + v21, v9, v6);
  (*(v4 + 32))(v23 + v22, v20, v19);
  aBlock[4] = sub_1007AB39C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1007AA394;
  aBlock[3] = &unk_100A7D8F8;
  v24 = _Block_copy(aBlock);

  [v15 setCompletionWithItemsHandler:v24];
  _Block_release(v24);
  [v32 presentViewController:v15 animated:1 completion:0];
}

uint64_t sub_1007AA0E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD0AA8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000617C(v13, qword_100AF16C8);
  (*(v10 + 16))(v12, a5, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = a6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315394;
    sub_1007AB504(&qword_100ADEFD0, &type metadata accessor for URL);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v10 + 8))(v12, v9);
    v22 = sub_100008458(v19, v21, &v25);

    *(v17 + 4) = v22;
    *(v17 + 12) = 1024;
    *(v17 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "JournalShareUtility.presentDialogToShareFile completed fileURL: %s, success: %{BOOL}d", v17, 0x12u);
    sub_10000BA7C(v18);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_1000F24EC(&qword_100AD4E78);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1007AA394(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);
}

uint64_t sub_1007AA450(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v6 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a3;
  v7[4] = a1;
  v7[5] = a2;
  v12[4] = sub_1007AB4F8;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100006C7C;
  v12[3] = &unk_100A7D970;
  v8 = _Block_copy(v12);
  v9 = v6;
  v10 = a3;

  [v9 performBlock:v8];
  _Block_release(v8);

  return 0;
}

uint64_t sub_1007AA5B0(void *a1, uint64_t a2, void (*a3)(void *, unint64_t, void))
{
  v4 = [a1 objectWithID:a2];
  type metadata accessor for JournalEntryMO();
  if (swift_dynamicCastClass())
  {
    v6 = sub_1007A8348();
    v8 = v7;
    sub_100049ED8(v6, v7);
    a3(v6, v8, 0);

    sub_1000340DC(v6, v8);

    return sub_1000340DC(v6, v8);
  }

  else
  {

    return (a3)(0, 0xF000000000000000, 0);
  }
}

id sub_1007AA708(void *a1, uint64_t a2, NSString a3)
{
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(NSItemProvider) init];
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  [v9 setSuggestedName:a3];

  static AppInfo.exportContentType.getter();
  *(swift_allocObject() + 16) = a1;
  v10 = a1;
  NSItemProvider.registerDataRepresentation(for:visibility:loadHandler:)();

  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_1007AA880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[7] = sub_1000F24EC(&unk_100AD6DD0);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v4[15] = v8;
  v4[16] = v10;

  return _swift_task_switch(sub_1007AAA08, v8, v10);
}

uint64_t sub_1007AAA08()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = swift_allocBox();
  v0[17] = v3;
  v0[18] = v4;
  (*(v2 + 56))(v4, 1, 1, v1);
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[5];
  v9 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  v0[19] = v9;
  v10 = swift_allocObject();
  v0[20] = v10;
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = v3;
  (*(v6 + 104))(v5, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v7);
  v9;
  v11 = v8;

  v12 = swift_task_alloc();
  v0[21] = v12;
  *v12 = v0;
  v12[1] = sub_1007AABDC;
  v13 = v0[14];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v13, sub_1007AB374, v10, &type metadata for () + 8);
}

uint64_t sub_1007AABDC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 176) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 128);
  v7 = *(v2 + 120);
  if (v0)
  {
    v8 = sub_1007AB2D0;
  }

  else
  {
    v8 = sub_1007AAD98;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1007AAD98()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  swift_beginAccess();
  sub_100161650(v1, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = *(v0 + 64);

    sub_100004F84(v5, &unk_100AD6DD0);
    sub_1007A7738();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
    *(v0 + 184) = type metadata accessor for MainActor();
    *(v0 + 192) = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 200) = v9;
    *(v0 + 208) = v8;

    return _swift_task_switch(sub_1007AAF34, v9, v8);
  }
}

uint64_t sub_1007AAF34()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = static MainActor.shared.getter();
  v0[27] = v3;
  v4 = swift_task_alloc();
  v0[28] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_1007AB048;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, &protocol witness table for MainActor, 0xD000000000000021, 0x8000000100908920, sub_1007AB394, v4, &type metadata for () + 8);
}

uint64_t sub_1007AB048()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return _swift_task_switch(sub_1007AB1A8, v3, v2);
}

uint64_t sub_1007AB1A8()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return _swift_task_switch(sub_1007AB20C, v1, v2);
}

uint64_t sub_1007AB20C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);

  (*(v2 + 8))(v1, v3);
  sub_1007A7738();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1007AB2D0()
{
  sub_1007A7738();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007AB39C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for URL() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  v12 = *(sub_1000F24EC(&qword_100AD4E78) - 8);
  v13 = v4 + ((v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_1007AA0E4(a1, a2, a3, a4, v4 + v10, v13);
}

unint64_t sub_1007AB4A4()
{
  result = qword_100AE5A18;
  if (!qword_100AE5A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE5A18);
  }

  return result;
}

uint64_t sub_1007AB504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007AB554()
{
  v1[2] = v0;
  sub_1000F24EC(&unk_100AD68E0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for CSSearchQuery.Results.Item();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for CSSearchQuery.Results();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for CSSearchQuery.Results.Iterator();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1007AB710, 0, 0);
}

uint64_t sub_1007AB710()
{
  (*(v0[9] + 16))(v0[10], v0[2], v0[8]);
  sub_1000342E0(&qword_100AF1AC0, &type metadata accessor for CSSearchQuery.Results);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v0[14] = _swiftEmptyArrayStorage;
  v1 = sub_1000342E0(&unk_100AD68F8, &type metadata accessor for CSSearchQuery.Results.Iterator);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1007AB870;
  v3 = v0[11];
  v4 = v0[3];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v3, v1);
}

uint64_t sub_1007AB870()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    v3 = sub_1007ABC60;
  }

  else
  {
    v3 = sub_1007AB9A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007AB9A4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_100004F84(v3, &unk_100AD68E0);

    v4 = v0[1];
    v5 = v0[14];

    return v4(v5);
  }

  else
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = *(v2 + 32);
    v9(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v0[14];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1003E4D68(0, v11[2] + 1, 1, v0[14]);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1003E4D68(v12 > 1, v13 + 1, 1, v11);
    }

    v14 = v0[6];
    v15 = v0[4];
    v16 = v0[5];
    (*(v16 + 8))(v0[7], v15);
    v11[2] = v13 + 1;
    v9(v11 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v13, v14, v15);
    v0[14] = v11;
    v17 = sub_1000342E0(&unk_100AD68F8, &type metadata accessor for CSSearchQuery.Results.Iterator);
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_1007AB870;
    v19 = v0[11];
    v20 = v0[3];

    return dispatch thunk of AsyncIteratorProtocol.next()(v20, v19, v17);
  }
}

uint64_t sub_1007ABC60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007ABCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[32] = a3;
  v4 = sub_1000F24EC(&qword_100AF1AE0);
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_1007ABDC4, 0, 0);
}

uint64_t sub_1007ABDC4()
{
  sub_1000F24EC(&qword_100AD5BC0);
  ThrowingTaskGroup.makeAsyncIterator()();
  v0[36] = _swiftEmptyArrayStorage;
  v1 = sub_10000B58C(&qword_100AF1AE8, &qword_100AF1AE0);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_1007ABEE4;
  v3 = v0[33];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v3, v1);
}

uint64_t sub_1007ABEE4()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    (*(v2[34] + 8))(v2[35], v2[33]);

    v3 = sub_1007AC21C;
  }

  else
  {
    v3 = sub_1007AC018;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007AC018()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 64);
    *(v0 + 208) = *(v0 + 48);
    *(v0 + 224) = v1;
    *(v0 + 240) = *(v0 + 80);
    v2 = *(v0 + 32);
    *(v0 + 176) = *(v0 + 16);
    *(v0 + 192) = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 288);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1003E5DE4(0, *(v4 + 2) + 1, 1, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1003E5DE4((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[10 * v6];
    *(v7 + 2) = *(v0 + 176);
    v8 = *(v0 + 192);
    v9 = *(v0 + 208);
    v10 = *(v0 + 240);
    *(v7 + 5) = *(v0 + 224);
    *(v7 + 6) = v10;
    *(v7 + 3) = v8;
    *(v7 + 4) = v9;
    *(v0 + 288) = v4;
    v11 = sub_10000B58C(&qword_100AF1AE8, &qword_100AF1AE0);
    v12 = swift_task_alloc();
    *(v0 + 296) = v12;
    *v12 = v0;
    v12[1] = sub_1007ABEE4;
    v13 = *(v0 + 264);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v13, v11);
  }

  else
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    v14 = *(v0 + 64);
    *(v0 + 128) = *(v0 + 48);
    *(v0 + 144) = v14;
    *(v0 + 160) = *(v0 + 80);
    v15 = *(v0 + 32);
    *(v0 + 96) = *(v0 + 16);
    *(v0 + 112) = v15;
    sub_100004F84(v0 + 96, &qword_100AF1AF0);

    v16 = *(v0 + 8);
    v17 = *(v0 + 288);

    return v16(v17);
  }
}

uint64_t sub_1007AC21C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007AC280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_1000F24EC(&qword_100AF1AC8);
  v3[3] = swift_task_alloc();
  v4 = sub_1000F24EC(&qword_100AD6600);
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v5 = sub_1000F24EC(&qword_100AF1AD0);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1007AC3F8, 0, 0);
}

uint64_t sub_1007AC3F8()
{
  TaskGroup.makeAsyncIterator()();
  v0[11] = _swiftEmptyArrayStorage;
  v1 = sub_10000B58C(&qword_100AF1AD8, &qword_100AF1AD0);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1007AC4EC;
  v3 = v0[8];
  v4 = v0[3];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v3, v1);
}

uint64_t sub_1007AC4EC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v3 = sub_1007B3F90;
  }

  else
  {
    v3 = sub_1007AC620;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007AC620()
{
  v1 = v0[3];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    sub_100004F84(v1, &qword_100AF1AC8);

    v2 = v0[1];
    v3 = v0[11];

    return v2(v3);
  }

  else
  {
    v6 = v0[6];
    v5 = v0[7];
    sub_100021CEC(v1, v5, &qword_100AD6600);
    sub_1000082B4(v5, v6, &qword_100AD6600);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v0[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1003E5F04(0, v8[2] + 1, 1, v0[11]);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1003E5F04(v9 > 1, v10 + 1, 1, v8);
    }

    v11 = v0[6];
    v12 = v0[5];
    sub_100004F84(v0[7], &qword_100AD6600);
    v8[2] = v10 + 1;
    sub_100021CEC(v11, v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, &qword_100AD6600);
    v0[11] = v8;
    v13 = sub_10000B58C(&qword_100AF1AD8, &qword_100AF1AD0);
    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    v14[1] = sub_1007AC4EC;
    v15 = v0[8];
    v16 = v0[3];

    return dispatch thunk of AsyncIteratorProtocol.next()(v16, v15, v13);
  }
}

uint64_t sub_1007AC8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_1000F24EC(&qword_100AF1AA8);
  v3[3] = swift_task_alloc();
  v4 = type metadata accessor for CanvasDatePickerViewModel.MediaDate(0);
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v5 = sub_1000F24EC(&qword_100AF1AB0);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1007ACA34, 0, 0);
}

uint64_t sub_1007ACA34()
{
  TaskGroup.makeAsyncIterator()();
  v0[11] = _swiftEmptyArrayStorage;
  v1 = sub_10000B58C(&qword_100AF1AB8, &qword_100AF1AB0);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1007ACB28;
  v3 = v0[8];
  v4 = v0[3];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v3, v1);
}

uint64_t sub_1007ACB28()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    v3 = sub_1007ACEB8;
  }

  else
  {
    v3 = sub_1007ACC5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007ACC5C()
{
  v1 = v0[3];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    sub_100004F84(v1, &qword_100AF1AA8);

    v2 = v0[1];
    v3 = v0[11];

    return v2(v3);
  }

  else
  {
    v6 = v0[6];
    v5 = v0[7];
    sub_1007B39D0(v1, v5);
    sub_1007B38F8(v5, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v0[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1003E6F24(0, v8[2] + 1, 1, v0[11]);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1003E6F24(v9 > 1, v10 + 1, 1, v8);
    }

    v11 = v0[6];
    v12 = v0[5];
    sub_1003FD790(v0[7]);
    v8[2] = v10 + 1;
    sub_1007B39D0(v11, v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10);
    v0[11] = v8;
    v13 = sub_10000B58C(&qword_100AF1AB8, &qword_100AF1AB0);
    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    v14[1] = sub_1007ACB28;
    v15 = v0[8];
    v16 = v0[3];

    return dispatch thunk of AsyncIteratorProtocol.next()(v16, v15, v13);
  }
}

uint64_t sub_1007ACEB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007ACF44()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1007AD1C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__date;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1007AD2C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__date;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1000342E0(&qword_100AD5BF0, &type metadata accessor for Date);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1007AD560(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__date;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1007AD5FC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__source;
  swift_beginAccess();
  return sub_1000082B4(v5 + v3, a1, &qword_100AE2AA0);
}

uint64_t sub_1007AD6D4(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AE2AA0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__source;
  swift_beginAccess();
  sub_1000082B4(v1 + v6, v5, &qword_100AE2AA0);
  v7 = sub_1007B3BAC(v5, a1);
  sub_100004F84(v5, &qword_100AE2AA0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000082B4(a1, v5, &qword_100AE2AA0);
    swift_beginAccess();
    sub_1003E48E0(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_100004F84(a1, &qword_100AE2AA0);
}

uint64_t sub_1007AD8DC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__source;
  swift_beginAccess();
  sub_1007B3EE8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1007AD948()
{
  swift_getKeyPath();
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear);
}

uint64_t sub_1007AD9F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear);
  return result;
}

uint64_t sub_1007ADAA0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC7Journal25CanvasDatePickerViewModel__shouldSubmitOnDisappear) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1007ADBB8()
{
  swift_getKeyPath();
  sub_1000342E0(&qword_100AEC4A0, type metadata accessor for CanvasDatePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1007ADC94@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v2);
  v39 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v34 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = v34 - v11;
  __chkstk_darwin(v12);
  v14 = v34 - v13;
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  v18 = *(v1 + 16);
  v19 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleDate;
  swift_beginAccess();
  sub_1000082B4(v18 + v19, v6, &unk_100AD4790);
  v20 = *(v8 + 48);
  if (v20(v6, 1, v7) == 1)
  {
    sub_100004F84(v6, &unk_100AD4790);
  }

  else
  {
    v34[1] = v2;
    v35 = *(v8 + 32);
    v35(v17, v6, v7);
    v36 = v14;
    v37 = v17;
    sub_100492EAC(v14);
    swift_allocObject();
    swift_weakInit();
    v21 = v39;
    NSManagedObjectContext.performAndWait<A>(_:)();

    if (v20(v21, 1, v7) == 1)
    {
      v22 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
      swift_beginAccess();
      v23 = v38;
      (*(v8 + 16))(v38, v18 + v22, v7);
      v24 = v20(v21, 1, v7);
      v25 = v35;
      if (v24 != 1)
      {
        sub_100004F84(v21, &unk_100AD4790);
      }
    }

    else
    {
      v23 = v38;
      v25 = v35;
      v35(v38, v21, v7);
    }

    v26 = v40;
    sub_100492EAC(v40);
    v27 = *(v8 + 8);
    v27(v23, v7);
    sub_1000342E0(&qword_100AD5BF0, &type metadata accessor for Date);
    v28 = v36;
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27(v26, v7);
    v27(v28, v7);
    if ((v29 & 1) == 0)
    {
      v32 = v41;
      v25(v41, v37, v7);
      v31 = v32;
      v30 = 0;
      return (*(v8 + 56))(v31, v30, 1, v7);
    }

    v27(v37, v7);
  }

  v30 = 1;
  v31 = v41;
  return (*(v8 + 56))(v31, v30, 1, v7);
}