uint64_t sub_10001C39C()
{
  v0 = sub_10004C1B0();
  sub_10000D51C(v0, qword_100067EA8);
  v1 = sub_10000D49C(v0, qword_100067EA8);
  if (qword_100066F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D49C(v0, qword_10006A2F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10001C4A4()
{
  v1 = v0;
  v44.receiver = v0;
  v44.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v2 = [v0 navigationItem];
  v45._countAndFlagsBits = 0x7265646E696D6552;
  v46._object = 0x800000010004EFC0;
  v45._object = 0xE900000000000073;
  v46._countAndFlagsBits = 0xD000000000000029;
  sub_10004A790(v45, v46);
  v3 = sub_10004C680();

  [v2 setTitle:v3];

  v4 = [v1 navigationItem];
  v5 = sub_10001CA58();
  [v4 setLeftBarButtonItem:v5];

  v6 = [v1 navigationItem];
  v7 = sub_10001CAE0();
  [v6 setRightBarButtonItem:v7];

  v8 = sub_10001CBC4();
  v9 = [v1 collectionView];
  if (!v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  [v9 setCollectionViewLayout:v8 animated:0];

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  [v11 setAllowsSelection:1];

  sub_10001CE38();
  v13 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource;
  v14 = *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_100003150(&qword_1000680C0, &qword_100053730);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = v14;
  v19 = sub_10004A420();
  v20 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presentationTreesCapability;
  v21 = *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presentationTreesCapability];
  *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presentationTreesCapability] = v19;

  sub_10002A4C4(&qword_1000680C8, type metadata accessor for TTRISECreateRemindersViewController);
  swift_unknownObjectRetain();
  sub_10004A440();

  if (![v1 view])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = sub_100003150(&qword_1000680D0, &qword_100053738);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_10004BAF0();
  sub_10002A4C4(&qword_1000680D8, type metadata accessor for TTRISECreateRemindersViewController);
  swift_unknownObjectRetain();
  sub_10004BB10();
  v26 = *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_dragAndDropCoordinator];
  *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_dragAndDropCoordinator] = v25;

  if (![v1 collectionView])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = *&v1[v13];
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_10002A4C4(&qword_1000680E0, type metadata accessor for TTRISECreateRemindersDiffableDataSource);
  sub_100003364(&qword_1000680E8, &qword_1000680D0, &qword_100053738);
  objc_allocWithZone(sub_100003150(&qword_1000680F0, &qword_100053740));

  v28 = v27;
  v29 = sub_10004B750();
  v30 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_dragAndDropController;
  v31 = *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_dragAndDropController];
  *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_dragAndDropController] = v29;
  v32 = v29;

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10004B760();

  v33 = [v1 collectionView];
  if (!v33)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v34 = v33;
  [v33 setDragDelegate:*&v1[v30]];

  v35 = [v1 collectionView];
  if (!v35)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = v35;
  [v35 setDropDelegate:*&v1[v30]];

  v37 = sub_10004B1F0();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_10004B1E0();
  v41 = *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_currentTextInputModeObserver];
  *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_currentTextInputModeObserver] = v40;

  v42 = *(*&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter] + 120);

  sub_10004A220();

  if (*&v1[v20])
  {
    v43 = *&v1[v20];

    sub_10004A430();

    sub_10001DD00();

    return;
  }

LABEL_19:
  __break(1u);
}

id sub_10001CA58()
{
  v1 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController____lazy_storage___cancelButton;
  v2 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController____lazy_storage___cancelButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController____lazy_storage___cancelButton);
  }

  else
  {
    v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v0 action:"didTapCancel:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10001CAE0()
{
  v1 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController____lazy_storage___commitButton;
  v2 = *&v0[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController____lazy_storage___commitButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController____lazy_storage___commitButton];
  }

  else
  {
    swift_getObjectType();
    sub_100009FF0(0, &qword_100067F78, UIBarButtonItem_ptr);
    sub_10004AA10();
    v4 = v0;
    v5 = v0;
    v6 = sub_10004C8C0();
    [v6 setEnabled:{0, v0}];
    v7 = *&v0[v1];
    *&v5[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10001CBC4()
{
  v0 = sub_10004C490();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C4D0();
  v6 = swift_allocBox();
  (*(v1 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v0);
  sub_10004C4B0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10004C480();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10004C470();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_10002A5AC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000269FC;
  aBlock[3] = &unk_10005FF90;
  v10 = _Block_copy(aBlock);

  v11 = [v9 initWithSectionProvider:v10];
  _Block_release(v10);

  return v11;
}

void sub_10001CE38()
{
  v1 = v0;
  v104 = sub_100003150(&qword_1000680F8, &qword_100053748);
  v103 = *(v104 - 8);
  v2 = *(v103 + 64);
  v4 = __chkstk_darwin(v104, v3);
  v101 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v5;
  __chkstk_darwin(v4, v6);
  v118 = &v87 - v7;
  v117 = sub_100003150(&qword_100068100, &qword_100053750);
  v102 = *(v117 - 8);
  v8 = *(v102 + 64);
  v10 = __chkstk_darwin(v117, v9);
  v99 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v11;
  __chkstk_darwin(v10, v12);
  v116 = &v87 - v13;
  v14 = sub_100003150(&qword_100068108, &qword_100053758);
  v124 = *(v14 - 8);
  v125 = v14;
  v15 = *(v124 + 64);
  v17 = __chkstk_darwin(v14, v16);
  v108 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v18;
  __chkstk_darwin(v17, v19);
  v119 = &v87 - v20;
  v123 = sub_100003150(&qword_100068110, &qword_100053760);
  v115 = *(v123 - 8);
  v21 = *(v115 + 64);
  v23 = __chkstk_darwin(v123, v22);
  v107 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v24;
  __chkstk_darwin(v23, v25);
  v27 = &v87 - v26;
  v122 = sub_100003150(&qword_100068118, &qword_100053768);
  v114 = *(v122 - 8);
  v28 = *(v114 + 64);
  v30 = __chkstk_darwin(v122, v29);
  v106 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v31;
  __chkstk_darwin(v30, v32);
  v34 = &v87 - v33;
  v121 = sub_100003150(&qword_100068120, &qword_100053770);
  v112 = *(v121 - 8);
  v35 = *(v112 + 64);
  v37 = __chkstk_darwin(v121, v36);
  v39 = &v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v38;
  __chkstk_darwin(v37, v40);
  v42 = &v87 - v41;
  v120 = sub_100003150(&qword_100068128, &qword_100053778);
  v110 = *(v120 - 8);
  v43 = *(v110 + 64);
  v45 = __chkstk_darwin(v120, v44);
  v105 = &v87 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v46;
  __chkstk_darwin(v45, v47);
  v49 = &v87 - v48;
  v50 = sub_100009FF0(0, &qword_100068130, UICollectionViewListCell_ptr);
  sub_10004A350();
  v109 = v49;
  v95 = v50;
  sub_10004C8F0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRISECreateRemindersListPickerCell();
  sub_10004A380();
  v111 = v42;
  sub_10004C8F0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10004BC90();
  v113 = v34;
  sub_10004C8F0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRISECreateRemindersSuggestionHeaderCell();
  v51 = v27;
  sub_10004C8F0();
  type metadata accessor for TTRISECreateRemindersSuggestionLoadingCell();
  v52 = v119;
  sub_10004C8F0();
  if ([v1 collectionView])
  {
    v88 = swift_allocObject();
    v89 = v1;
    swift_unknownObjectWeakInit();
    v53 = v110;
    (*(v110 + 16))(v105, v109, v120);
    v54 = v112;
    (*(v112 + 16))(v39, v111, v121);
    v55 = v114;
    v87 = v39;
    (*(v114 + 16))(v106, v113, v122);
    v56 = v115;
    v57 = *(v115 + 16);
    v90 = v51;
    v57(v107, v51, v123);
    v58 = v124;
    (*(v124 + 16))(v108, v52, v125);
    v59 = (*(v53 + 80) + 24) & ~*(v53 + 80);
    v60 = (v92 + *(v54 + 80) + v59) & ~*(v54 + 80);
    v61 = (v93 + *(v55 + 80) + v60) & ~*(v55 + 80);
    v62 = (v94 + *(v56 + 80) + v61) & ~*(v56 + 80);
    v63 = (v96 + *(v58 + 80) + v62) & ~*(v58 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v88;
    (*(v53 + 32))(v64 + v59, v105, v120);
    (*(v54 + 32))(v64 + v60, v87, v121);
    (*(v55 + 32))(v64 + v61, v106, v122);
    (*(v56 + 32))(v64 + v62, v107, v123);
    (*(v124 + 32))(v64 + v63, v108, v125);
    v65 = objc_allocWithZone(type metadata accessor for TTRISECreateRemindersDiffableDataSource());
    v108 = sub_10004BD20();
    sub_10004C690();
    v66 = v116;
    sub_10004C900();
    sub_10004C690();
    v67 = swift_allocObject();
    v68 = v89;
    *(v67 + 16) = v89;
    type metadata accessor for TTRISECreateRemindersSuggestionFooterCell();
    v107 = v68;
    v69 = v118;
    sub_10004C900();
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v71 = v102;
    v72 = v99;
    v73 = v117;
    (*(v102 + 16))(v99, v66, v117);
    v74 = v103;
    v75 = v101;
    v76 = v69;
    v77 = v104;
    (*(v103 + 16))(v101, v76, v104);
    v78 = (*(v71 + 80) + 24) & ~*(v71 + 80);
    v79 = (v98 + *(v74 + 80) + v78) & ~*(v74 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v70;
    (*(v71 + 32))(v80 + v78, v72, v73);
    (*(v74 + 32))(v80 + v79, v75, v77);
    v81 = v108;

    sub_10004C400();

    swift_allocObject();
    v82 = v107;
    swift_unknownObjectWeakInit();
    v83 = sub_10004C450();
    sub_100003150(&qword_100068138, &qword_100053780);
    sub_10004C420();
    v83(v126, 0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v84 = sub_10004C450();
    sub_10004C430();
    v84(v126, 0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v85 = sub_10004C450();
    sub_10004C440();
    v85(v126, 0);

    (*(v74 + 8))(v118, v77);
    (*(v71 + 8))(v116, v117);
    (*(v124 + 8))(v119, v125);
    (*(v115 + 8))(v90, v123);
    (*(v114 + 8))(v113, v122);
    (*(v112 + 8))(v111, v121);
    (*(v110 + 8))(v109, v120);
    v86 = *&v82[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
    *&v82[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource] = v81;
  }

  else
  {
    __break(1u);
  }
}

void *sub_10001DC14(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    isa = sub_100049EB0().super.isa;
    v4 = [a1 cellForItemAtIndexPath:isa];

    if (v4)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v5 = v4;
        v6 = sub_10004BEB0();

        return v6;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10001DD00()
{
  v1 = v0;
  v2 = sub_100003150(&qword_100067F68, &unk_100053890);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for TTRISECreateRemindersPresentationTree();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7, v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v14)
  {
    v15 = v14;
    sub_10004BD30();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_10000A138(v6, &qword_100067F68, &unk_100053890);
    }

    else
    {
      sub_10002A5CC(v6, v13, type metadata accessor for TTRISECreateRemindersPresentationTree);
      sub_1000211EC(v13[*(v7 + 40)]);
      v16 = *(*(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter) + 120);
      if (sub_10004A140())
      {
        sub_100021400();
      }

      else
      {
        v17 = sub_10001CAE0();
        [v17 setEnabled:sub_10002E4B8() & 1];
      }

      return sub_10002A634(v13, type metadata accessor for TTRISECreateRemindersPresentationTree);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001DFC4()
{
  v1 = v0;
  v2 = sub_10004A4E0();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  __chkstk_darwin(v2, v4);
  v53 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10004A460();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  v9 = __chkstk_darwin(v6, v8);
  v56 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9, v11);
  v13 = &v50[-v12];
  v14 = sub_10004A4B0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v20 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v50[-v23];
  __chkstk_darwin(v22, v25);
  v27 = &v50[-v26];
  v28 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_deferredItemUpdates;
  swift_beginAccess();
  v29 = *(v15 + 16);
  v29(v27, &v1[v28], v14);
  if (sub_10004A4A0())
  {
    (*(v15 + 8))(v27, v14);
    return;
  }

  v52 = v27;
  v30 = *(v57 + 104);
  v51 = enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.none(_:);
  v30(v13);
  sub_10004A490();
  swift_beginAccess();
  (*(v15 + 24))(&v1[v28], v24, v14);
  swift_endAccess();
  v29(v20, &v1[v28], v14);
  v31 = sub_10004A4A0();
  v32 = *(v15 + 8);
  v32(v20, v14);
  v33 = v14;
  if ((v31 & 1) == 0)
  {
    v34 = [v1 viewIfLoaded];
    [v34 setNeedsLayout];
  }

  v32(v24, v14);
  v35 = v56;
  v36 = v52;
  sub_10004A470();
  v38 = v57;
  v37 = v58;
  v39 = (*(v57 + 88))(v35, v58);
  if (v39 == enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.beginEditing(_:))
  {
    goto LABEL_6;
  }

  if (v39 == enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.textChange(_:))
  {
    (*(v38 + 96))(v35, v37);
    v40 = *(sub_100003150(&qword_100068028, &qword_1000536A0) + 48);
    sub_100003674(v35, v60);
    v42 = v53;
    v41 = v54;
    v43 = v35 + v40;
    v44 = v55;
    (*(v54 + 32))(v53, v43, v55);
    v45 = sub_10004A4D0();
    sub_10000DAC4(v60, v59);
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    sub_100003674(v59, v46 + 24);
    v47 = [v1 collectionView];
    if (v47)
    {
      v48 = v47;

      sub_10004C870();

      (*(v41 + 8))(v42, v44);
      sub_10000343C(v60);
      v32(v36, v33);

      return;
    }

    __break(1u);
  }

  else
  {
    if (v39 == enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.keyboardFrameChange(_:))
    {
LABEL_6:
      v32(v36, v33);
      (*(v38 + 96))(v35, v37);
      sub_10000343C(v35);
      return;
    }

    if (v39 == v51)
    {
      v32(v36, v33);
      return;
    }
  }

  if (qword_100066F20 != -1)
  {
    swift_once();
  }

  v49 = sub_10004C1B0();
  sub_10000D49C(v49, qword_100067EA8);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014FC0("Unknown pendingScrollAction", 27, 2);
  __break(1u);
}

id sub_10001E610(char a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidAppear:", a1 & 1);
  result = [v2 view];
  if (result)
  {
    v5 = result;
    v6 = sub_10004CA40();

    if (v6)
    {
    }

    else
    {
      [v2 becomeFirstResponder];
    }

    v7 = *(*&v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter] + 120);
    sub_10004A020();
    sub_10004A560();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E728(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  if (*&v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_currentTextInputModeObserver])
  {
    v4 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_currentTextInputModeObserver];

    sub_10004B1C0();
  }

  sub_10004C930();
  [v2 resignFirstResponder];
  v5 = *(*&v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter] + 120);
  sub_10004A020();
  sub_10004A580();
}

uint64_t sub_10001E828(uint64_t a1)
{
  v38 = a1;
  v1 = sub_100003150(&qword_100067D58, &unk_1000530C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v35 = &v34 - v4;
  v5 = sub_100003150(&qword_100068160, &qword_100053798);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v34 - v8;
  v10 = sub_10004C280();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004C1E0();
  v34 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10004C3D0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C3C0();
  sub_10004A320();
  sub_10004C3A0();
  sub_100049EA0();
  sub_10004C310();
  v39[3] = v21;
  v39[4] = &protocol witness table for UIListContentConfiguration;
  v27 = sub_10000B790(v39);
  (*(v22 + 16))(v27, v26, v21);
  sub_10004C990();
  sub_100003150(&qword_100067D70, &unk_1000530D0);
  v28 = *(sub_10004C2D0() - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  *(swift_allocObject() + 16) = xmmword_1000528D0;
  (*(v16 + 104))(v20, enum case for UICellAccessory.DisplayedState.always(_:), v15);
  v31 = sub_10004C260();
  (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
  v32 = sub_10004C1F0();
  (*(*(v32 - 8) + 56))(v35, 1, 1, v32);
  sub_10004C270();
  sub_10004C220();
  (*(v36 + 8))(v14, v37);
  (*(v16 + 8))(v20, v34);
  sub_10004C9A0();
  return (*(v22 + 8))(v26, v21);
}

uint64_t sub_10001EC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100003150(&qword_100067D58, &unk_1000530C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = v33 - v8;
  v10 = sub_10004C2A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004C1E0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v33[1] = a3;
    sub_100003150(&qword_100067D70, &unk_1000530D0);
    v34 = v10;
    v24 = *(sub_10004C2D0() - 8);
    v25 = *(v24 + 72);
    v26 = a1;
    v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_1000528D0;
    (*(v17 + 104))(v21, enum case for UICellAccessory.DisplayedState.always(_:), v16);
    v28 = sub_10004C1F0();
    (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
    sub_10004C290();
    v29 = v26;
    sub_10004C230();
    (*(v11 + 8))(v15, v34);
    (*(v17 + 8))(v21, v16);
    sub_10004C9A0();
    *(v26 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_delegate + 8) = &off_10005FDC0;
    result = swift_unknownObjectWeakAssign();
    if (*&v23[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presentationTreesCapability])
    {
      v30 = *&v23[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presentationTreesCapability];

      v31 = sub_10004A400();

      if (v31)
      {
        sub_10004B240();

        if (*(v29 + OBJC_IVAR____TtC25RemindersSharingExtension39TTRISECreateRemindersCollectionListCell_viewModelObserver))
        {
          v32 = *(v29 + OBJC_IVAR____TtC25RemindersSharingExtension39TTRISECreateRemindersCollectionListCell_viewModelObserver);

          sub_10004A940();
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10001F058()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (*(result + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presentationTreesCapability))
    {
      v2 = *(result + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presentationTreesCapability);

      v3 = sub_10004A400();

      if (v3)
      {
        sub_10004B240();

        v4 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter;
        v5 = *(*&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter] + 120);
        sub_10004A140();
        v6 = sub_10004BC40();
        sub_10004BC10();
        v6(v10, 0);
        v7 = *(*&v1[v4] + 120);
        sub_10004A140();
        v8 = sub_10004BC40();
        sub_10004BC00();
        v8(v10, 0);
        sub_10002A4C4(&qword_100068148, type metadata accessor for TTRISECreateRemindersViewController);
        v9 = v1;
        sub_10004BC70();
        result = sub_10004BE40();
        if (result)
        {
          sub_10004A930();
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10001F230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_10004A3A0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v36[1] = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004BBD0();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  v10 = __chkstk_darwin(v7, v9);
  v36[0] = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v14 = v36 - v13;
  v15 = type metadata accessor for TTRISECreateRemindersItemIntermediateViewModel();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003150(&qword_100067B78, &qword_100052E90);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = v36 - v23;
  v25 = sub_100003150(&unk_100067B80, qword_100052E98);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25, v28);
  v30 = v36 - v29;
  sub_10000A198(a1, v24, &qword_100067B78, &qword_100052E90);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_10000A138(v24, &qword_100067B78, &qword_100052E90);
  }

  else
  {
    (*(v26 + 32))(v30, v24, v25);
    sub_10004A3C0();
    v31 = v37;
    if ((*(v37 + 48))(v19, 1, v7) != 1)
    {
      (*(v31 + 32))(v14, v19, v7);
      sub_10004A3E0();
      (*(v31 + 16))(v36[0], v14, v7);
      sub_10002A4C4(&qword_100068158, &type metadata accessor for TTRIRemindersListItemIntermediateViewModel);
      v33 = v38;
      sub_10004A3D0();
      (*(v31 + 8))(v14, v7);
      (*(v26 + 8))(v30, v25);
      v32 = 0;
      goto LABEL_7;
    }

    (*(v26 + 8))(v30, v25);
  }

  v32 = 1;
  v33 = v38;
LABEL_7:
  v34 = sub_100003150(&qword_100068150, &qword_100053790);
  return (*(*(v34 - 8) + 56))(v33, v32, 1, v34);
}

uint64_t sub_10001F678(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v4 = (a1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionHeaderCell_includeAllAction);
  v5 = *(a1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionHeaderCell_includeAllAction);
  v6 = *(a1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionHeaderCell_includeAllAction + 8);
  *v4 = sub_10002A4BC;
  v4[1] = v2;

  sub_10002A4AC(v5);
}

uint64_t sub_10001F738()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
    v2 = result;
    swift_unknownObjectRetain();

    v3 = *(v1 + 120);
    sub_100049FC0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44[2] = a8;
  v44[3] = a6;
  v46 = a3;
  v44[4] = a2;
  v44[5] = a1;
  v9 = sub_100003150(&qword_100067F98, &unk_100053620);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v44 - v12;
  v14 = sub_10004A330();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003150(&qword_100068020, &qword_100053B30);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = v44 - v23;
  v25 = sub_10004A350();
  v45 = *(v25 - 8);
  v26 = *(v45 + 64);
  __chkstk_darwin(v25, v27);
  v29 = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = result;
    v32 = *(result + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
    if (v32)
    {
      v33 = v32;
      sub_10004BD70();

      v34 = v45;
      if ((*(v45 + 48))(v24, 1, v25) == 1)
      {

        sub_10000A138(v24, &qword_100068020, &qword_100053B30);
        return 0;
      }

      v44[1] = a7;
      (*(v34 + 32))(v29, v24, v25);
      v35 = v34;
      sub_10004A340();
      v36 = (*(v15 + 88))(v19, v14);
      if (v36 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestedReminder(_:))
      {
        v37 = sub_10004A380();
        v38 = *(v37 - 8);
        (*(v38 + 16))(v13, v46, v37);
        (*(v38 + 56))(v13, 0, 1, v37);
        sub_10004BC90();
        v39 = sub_10004C910();

        sub_10000A138(v13, &qword_100067F98, &unk_100053620);
        (*(v35 + 8))(v29, v25);
LABEL_9:
        (*(v15 + 8))(v19, v14);
        return v39;
      }

      if (v36 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.remindersListItem(_:))
      {
        v40 = sub_10004A380();
        v41 = *(v40 - 8);
        (*(v41 + 16))(v13, v46, v40);
        (*(v41 + 56))(v13, 0, 1, v40);
        sub_10004BC90();
        v39 = sub_10004C910();

        sub_10000A138(v13, &qword_100067F98, &unk_100053620);
        (*(v45 + 8))(v29, v25);
        goto LABEL_9;
      }

      if (v36 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.listPicker(_:))
      {
        v42 = sub_10004A380();
        v43 = *(v42 - 8);
        (*(v43 + 16))(v13, v46, v42);
        (*(v43 + 56))(v13, 0, 1, v42);
        type metadata accessor for TTRISECreateRemindersListPickerCell();
        v39 = sub_10004C910();

        sub_10000A138(v13, &qword_100067F98, &unk_100053620);
LABEL_17:
        (*(v45 + 8))(v29, v25);
        return v39;
      }

      if (v36 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionHeader(_:))
      {
        v47 = 0;
        type metadata accessor for TTRISECreateRemindersSuggestionHeaderCell();
LABEL_16:
        v39 = sub_10004C910();

        goto LABEL_17;
      }

      if (v36 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionLoading(_:))
      {
        v47 = 0;
        type metadata accessor for TTRISECreateRemindersSuggestionLoadingCell();
        goto LABEL_16;
      }

      if (v36 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.unknown(_:))
      {
        (*(v45 + 8))(v29, v25);

        return 0;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_10004CDC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001FE68()
{
  v0 = sub_10004C3D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C9B0();
  v10._object = 0x800000010004F050;
  v11._countAndFlagsBits = 0xD00000000000005BLL;
  v11._object = 0x800000010004F0B0;
  v10._countAndFlagsBits = 0xD000000000000056;
  sub_10004A790(v10, v11);
  sub_10004C3A0();
  v9[3] = v0;
  v9[4] = &protocol witness table for UIListContentConfiguration;
  v6 = sub_10000B790(v9);
  (*(v1 + 16))(v6, v5, v0);
  sub_10004C990();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_10001FFB8(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (a1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionFooterCell_feedbackButtonHandler);
  v4 = *(a1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionFooterCell_feedbackButtonHandler);
  v5 = *(a1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionFooterCell_feedbackButtonHandler + 8);
  *v3 = sub_10002A4A4;
  v3[1] = v2;

  sub_10002A4AC(v4);
}

uint64_t sub_100020058()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
    v2 = result;
    swift_unknownObjectRetain();

    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v3 = sub_10004C1B0();
    sub_10000D49C(v3, qword_1000685E0);
    sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014D1C();

    v4 = *sub_1000032DC((v1 + 64), *(v1 + 88));
    sub_10002CAC0();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100020158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39[3] = a6;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v9 = sub_100003150(&qword_100067F98, &unk_100053620);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v39 - v12;
  v14 = sub_100003150(&qword_100068140, &qword_100053788);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = v39 - v17;
  v19 = sub_10004A390();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v25 = v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v26);
  v28 = v39 - v27;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v39[1] = a7;
    v39[2] = a1;
    v31 = *(Strong + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
    if (v31)
    {
      v32 = v31;
      sub_100049EE0();
      sub_10004C410();

      v33 = sub_10004A380();
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v13, 1, v33) == 1)
      {

        sub_10000A138(v13, &qword_100067F98, &unk_100053620);
        (*(v20 + 56))(v18, 1, 1, v19);
LABEL_7:
        sub_10000A138(v18, &qword_100068140, &qword_100053788);
        return;
      }

      sub_10004A370();
      (*(v34 + 8))(v13, v33);
      if ((*(v20 + 48))(v18, 1, v19) == 1)
      {

        goto LABEL_7;
      }

      (*(v20 + 32))(v28, v18, v19);
      if (sub_10004C690() == v40 && v35 == v41)
      {
      }

      else
      {
        v36 = sub_10004CDD0();

        if ((v36 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      (*(v20 + 16))(v25, v28, v19);
      v37 = (*(v20 + 88))(v25, v19);
      if (v37 == enum case for TTRSECreateRemindersViewModel.SectionID.listPicker(_:))
      {
        sub_100009FF0(0, &qword_100068130, UICollectionViewListCell_ptr);
LABEL_19:
        sub_10004C920();

        (*(v20 + 8))(v28, v19);
        return;
      }

      if (v37 == enum case for TTRSECreateRemindersViewModel.SectionID.reminders(_:))
      {
LABEL_16:
        (*(v20 + 8))(v28, v19);

        return;
      }

      if (v37 == enum case for TTRSECreateRemindersViewModel.SectionID.suggestions(_:))
      {
        type metadata accessor for TTRISECreateRemindersSuggestionFooterCell();
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    if (qword_100066F20 != -1)
    {
      swift_once();
    }

    v38 = sub_10004C1B0();
    sub_10000D49C(v38, qword_100067EA8);
    sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014FC0("Unknown sectionID", 17, 2);
    __break(1u);
  }
}

uint64_t sub_10002063C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
    v7 = result;
    swift_unknownObjectRetain();

    v8 = *(v6 + 144);

    swift_unknownObjectRelease();
    v9 = sub_100003150(&qword_100067688, &qword_100052990);
    v10 = sub_100003364(&qword_100067FB8, &qword_100067688, &qword_100052990);
    a3(a1, v9, v10);
  }

  return result;
}

uint64_t sub_100020734()
{
  v0 = sub_100003150(&qword_100068020, &qword_100053B30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v17 - v3;
  v5 = sub_10004A350();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_5;
  }

  v12 = result;
  v13 = *(result + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v13)
  {
    v14 = v13;
    sub_10004BD70();

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v10, v4, v5);
      v16 = *(*&v12[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter] + 120);
      v15 = sub_10004A010();
      (*(v6 + 8))(v10, v5);

      return v15 & 1;
    }

    sub_10000A138(v4, &qword_100068020, &qword_100053B30);
LABEL_5:
    v15 = 0;
    return v15 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100020938(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v4 = sub_100003150(&qword_100068020, &qword_100053B30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v21 - v7;
  v9 = sub_10004A350();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = *(result + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
    if (v17)
    {
      v18 = v17;
      sub_10004BD60();

      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {

        sub_10000A138(v8, &qword_100068020, &qword_100053B30);
        return 0;
      }

      else
      {
        (*(v10 + 32))(v14, v8, v9);
        v19 = *&v16[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter];
        v20 = a3(v14);
        (*(v10 + 8))(v14, v9);

        return v20;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100020B40(uint64_t a1, uint64_t a2)
{
  v28[1] = a2;
  v3 = sub_10004C4A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = v28 - v11;
  v13 = sub_10004C4D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_projectBox();
  swift_beginAccess();
  (*(v14 + 16))(v18, v19, v13);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_5;
  }

  v21 = result;
  v22 = *(result + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v22)
  {
    v23 = v22;
    sub_10002B5C4(a1);
    v25 = v24;

    if (v25)
    {
      v26 = &enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:);
LABEL_6:
      (*(v4 + 104))(v12, *v26, v3);
      (*(v4 + 16))(v9, v12, v3);
      sub_10004C4C0();
      sub_100009FF0(0, &qword_100068168, NSCollectionLayoutSection_ptr);
      v27 = sub_10004C9D0();
      (*(v4 + 8))(v12, v3);
      (*(v14 + 8))(v18, v13);
      return v27;
    }

LABEL_5:
    v26 = &enum case for UICollectionLayoutListConfiguration.FooterMode.none(_:);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_100020DFC(uint64_t a1)
{
  v3 = sub_100003150(&qword_100067FD0, &qword_100053658);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v42 - v6;
  v8 = sub_100049EF0();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  __chkstk_darwin(v8, v10);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004AD40();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003150(&qword_100067F98, &unk_100053620);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v22 = &v42 - v21;
  v23 = sub_10004A380();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a1, v12);
  sub_10004A360();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v29 = &qword_100067F98;
    v30 = &unk_100053620;
    v31 = v22;
LABEL_6:
    sub_10000A138(v31, v29, v30);
    return 0;
  }

  result = (*(v24 + 32))(v28, v22, v23);
  v33 = *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
  if (!v33)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v34 = v1;
  v35 = v33;
  sub_10004C460();

  v37 = v44;
  v36 = v45;
  v38 = (*(v44 + 48))(v7, 1, v45);
  v39 = v43;
  if (v38 == 1)
  {
    (*(v24 + 8))(v28, v23);
    v29 = &qword_100067FD0;
    v30 = &qword_100053658;
    v31 = v7;
    goto LABEL_6;
  }

  (*(v37 + 32))(v43, v7, v36);
  result = [v34 collectionView];
  if (!result)
  {
    goto LABEL_11;
  }

  v40 = result;
  v41 = sub_10004C8E0();

  (*(v37 + 8))(v39, v36);
  (*(v24 + 8))(v28, v23);
  return v41;
}

uint64_t sub_1000211EC(char a1)
{
  v3 = sub_100003150(&unk_100067618, &qword_100052940);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = v19 - v6;
  v8 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_taskToShowLoadingState;
  v9 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_taskToShowLoadingState);
  if (a1)
  {
    v10 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_taskToShowLoadingState);
    if (!v9)
    {
      v11 = sub_10004C790();
      (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10004C770();

      v13 = sub_10004C760();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = &protocol witness table for MainActor;
      v14[4] = v12;

      v10 = sub_1000219E8(0, 0, v7, &unk_100053610, v14);
      v15 = *(v1 + v8);
    }

    *(v1 + v8) = v10;
  }

  else
  {
    if (v9)
    {
      v17 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_taskToShowLoadingState);

      sub_100003150(&qword_100067F80, &qword_100053600);
      sub_10004C7A0();

      v18 = *(v1 + v8);
    }

    *(v1 + v8) = 0;

    v20 = 0;
    memset(v19, 0, sizeof(v19));
    return sub_10004C970();
  }
}

uint64_t sub_100021400()
{
  v1 = v0;
  v2 = *(*&v0[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter] + 120);
  result = sub_10004A140();
  if (result)
  {
    v4 = sub_10001CAE0();
    v5 = [v4 isEnabled];

    result = [v1 collectionView];
    if (result)
    {
      v6 = result;
      v7 = [result indexPathsForSelectedItems];

      if (v7)
      {
        sub_100049EF0();
        v8 = sub_10004C720();
      }

      else
      {
        v8 = _swiftEmptyArrayStorage;
      }

      v9 = v8[2];

      if (v5 != (v9 != 0))
      {
        v10 = *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController____lazy_storage___commitButton];

        return [v10 setEnabled:v9 != 0];
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100021524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_10004CD10();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  sub_10004C770();
  v4[14] = sub_10004C760();
  v9 = sub_10004C750();
  v4[15] = v9;
  v4[16] = v8;

  return _swift_task_switch(sub_100021618, v9, v8);
}

uint64_t sub_100021618()
{
  v1 = *(v0 + 104);
  sub_10004CE20();
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1000216E4;
  v3 = *(v0 + 104);

  return sub_100026A78(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000216E4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 144) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 128);
  v9 = *(v2 + 120);
  if (v0)
  {
    v10 = sub_10002197C;
  }

  else
  {
    v10 = sub_10002187C;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10002187C()
{
  v1 = v0[18];
  v2 = v0[14];

  sub_10004C7B0();
  if (!v1)
  {
    v3 = v0[10];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v0[5] = sub_10004C3F0();
      v0[6] = &protocol witness table for UIContentUnavailableConfiguration;
      sub_10000B790(v0 + 2);
      v6 = v5;
      sub_10004C3E0();
      sub_10004C970();
    }
  }

  v7 = v0[13];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10002197C()
{
  v1 = v0[14];

  v2 = v0[18];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000219E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003150(&unk_100067618, &qword_100052940);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = v25 - v11;
  sub_10000A198(a3, v25 - v11, &unk_100067618, &qword_100052940);
  v13 = sub_10004C790();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000A138(v12, &unk_100067618, &qword_100052940);
  }

  else
  {
    sub_10004C780();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10004C750();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10004C6A0() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_10000A138(a3, &unk_100067618, &qword_100052940);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A138(a3, &unk_100067618, &qword_100052940);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

id sub_100021C94(uint64_t a1, uint64_t a2)
{
  v49[1] = a2;
  v3 = sub_10004A380();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3, v5);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003150(&qword_100067FD0, &qword_100053658);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = v49 - v11;
  v13 = sub_100049EF0();
  v53 = *(v13 - 8);
  v54 = v13;
  v14 = *(v53 + 64);
  __chkstk_darwin(v13, v15);
  v50 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004AD30();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100003150(&qword_100068020, &qword_100053B30);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8, v25);
  v27 = v49 - v26;
  v28 = sub_10004A350();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = __chkstk_darwin(v28, v31);
  v34 = v49 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, a1, v17, v32);
  sub_10004A300();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    return sub_10000A138(v27, &qword_100068020, &qword_100053B30);
  }

  result = (*(v29 + 32))(v34, v27, v28);
  v36 = *&v55[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
  if (!v36)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v37 = v55;
  v38 = v36;
  sub_10004A310();
  sub_10004C460();

  (*(v51 + 8))(v7, v52);
  v40 = v53;
  v39 = v54;
  if ((*(v53 + 48))(v12, 1, v54) == 1)
  {
    (*(v29 + 8))(v34, v28);
    return sub_10000A138(v12, &qword_100067FD0, &qword_100053658);
  }

  (*(v40 + 32))(v50, v12, v39);
  result = [v37 collectionView];
  if (!result)
  {
    goto LABEL_17;
  }

  v41 = result;
  [result layoutIfNeeded];

  result = [v37 collectionView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v42 = result;
  v43 = v50;
  isa = sub_100049EB0().super.isa;
  [v42 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:0];

  result = [v37 collectionView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v45 = result;
  [result layoutIfNeeded];

  result = [v37 collectionView];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v46 = result;
  v47 = sub_10004C8E0();

  if (v47)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v48 = v47;
      sub_10004A450();
    }
  }

  (*(v40 + 8))(v43, v39);
  return (*(v29 + 8))(v34, v28);
}

uint64_t sub_100022228(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_10004A4C0();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if ((v20 & 1) == 0)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v17 = v19[1];
    v18 = v19[0];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10003163C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    v15 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      result = sub_10003163C((v13 > 1), v14 + 1, 1, v8);
      v15 = v14 + 1;
      v8 = result;
    }

    *(v8 + 2) = v15;
    v16 = &v8[32 * v14];
    *(v16 + 2) = v18;
    *(v16 + 3) = v17;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_1000223BC()
{
  v1 = sub_100003150(&unk_100067618, &qword_100052940);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v12 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
  if (qword_100066F40 != -1)
  {
    swift_once();
  }

  v7 = sub_10004C1B0();
  sub_10000D49C(v7, qword_1000685E0);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014D1C();

  v8 = sub_10004C790();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_10004C770();
  swift_unknownObjectRetain();
  v9 = sub_10004C760();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v6;
  sub_100034498(0, 0, v5, &unk_100053728, v10);
}

void sub_100022578()
{
  v1 = v0;
  v2 = sub_100003150(&unk_100067618, &qword_100052940);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = v20 - v5;
  v7 = *&v0[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter];
  v8 = *(v7 + 120);
  if (sub_10004A140())
  {
    v9 = [v1 collectionView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 indexPathsForSelectedItems];

      if (!v11)
      {
        v15 = _swiftEmptyArrayStorage;
        goto LABEL_9;
      }

      sub_100049EF0();
      v12 = sub_10004C720();

      v13 = *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
      if (v13)
      {
        v20[1] = v12;
        v14 = v13;
        sub_100003150(&qword_1000680B0, &qword_100053720);
        sub_100003364(&qword_1000680B8, &qword_1000680B0, &qword_100053720);
        v15 = sub_10004BD80();

LABEL_9:
        sub_100035824(v15);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  swift_beginAccess();
  v16 = sub_10004B280();
  swift_endAccess();
  if (v16)
  {
    v17 = sub_10004C790();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_10004C770();
    swift_unknownObjectRetain();
    v18 = sub_10004C760();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v7;
    v19[5] = 0;
    sub_100034498(0, 0, v6, &unk_100054240, v19);
  }
}

uint64_t sub_100022818(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_10004CBA0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_10000A138(v9, &qword_1000680A8, &unk_100053710);
}

uint64_t type metadata accessor for TTRISECreateRemindersViewController()
{
  result = qword_100067F40;
  if (!qword_100067F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022A68()
{
  result = sub_10004A4B0();
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

uint64_t sub_100022B28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003150(&qword_100067F68, &unk_100053890);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3 - 8, v5);
  v8 = &v14 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v9)
  {
    v10 = v9;
    sub_10004BD30();

    v11 = type metadata accessor for TTRISECreateRemindersPresentationTree();
    if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
    {
      sub_10000A138(v8, &qword_100067F68, &unk_100053890);
      v12 = 1;
    }

    else
    {
      sub_10002E9A8(a1);
      sub_10002A634(v8, type metadata accessor for TTRISECreateRemindersPresentationTree);
      v12 = 0;
    }

    v13 = type metadata accessor for TTRISECreateRemindersItemIntermediateViewModel();
    return (*(*(v13 - 8) + 56))(a1, v12, 1, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100022CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter) + 128);
  sub_10004BF60();
  v4 = sub_100003150(&qword_100067F70, &unk_1000535F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_100022D34()
{
  if (*(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_dragAndDropCoordinator))
  {

    sub_10004BB00();
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSObject *sub_100022D84(uint64_t a1, uint64_t a2)
{
  result = [v2 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = [result isEditing];

  if (v7)
  {
    if ([v2 isEditing])
    {
      if (qword_100066F20 != -1)
      {
        swift_once();
      }

      v8 = sub_10004C1B0();
      sub_10000D49C(v8, qword_100067EA8);
      v9 = sub_10004C1A0();
      v10 = sub_10004C890();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "TTRISECreateRemindersViewController: trying to start editing a reminder while in edit mode", v11, 2u);
      }

      goto LABEL_11;
    }

    result = [v2 collectionView];
    if (result)
    {
      v9 = result;
      [result setEditing:0];
LABEL_11:

      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return result;
  }

LABEL_12:

  return sub_100021C94(a1, a2);
}

void sub_100022F14()
{
  v0 = sub_10004AD40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004ACF0();
  v6 = sub_100020DFC(v5);
  (*(v1 + 8))(v5, v0);
  if (v6)
  {
    sub_10004BC90();
    if (swift_dynamicCastClass())
    {
      sub_10004BC50();
      goto LABEL_9;
    }
  }

  if (qword_100066F20 != -1)
  {
    swift_once();
  }

  v7 = sub_10004C1B0();
  sub_10000D49C(v7, qword_100067EA8);
  v6 = sub_10004C1A0();
  v8 = sub_10004C880();
  if (os_log_type_enabled(v6, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, v8, "TTRISECreateRemindersViewController#createAndStartEditingNewHashtag: cell not found", v9, 2u);
  }

LABEL_9:
}

uint64_t sub_1000230D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004AD40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004ACF0();
  v8 = sub_100020DFC(v7);
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    sub_10004BC90();
    if (swift_dynamicCastClass() && (v9 = sub_10004BC30()) != 0)
    {
      v10 = v9;
      sub_10004A700();

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_10004A720();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

void sub_100023250(char *a1)
{
  v78 = a1;
  v2 = sub_100003150(&qword_100067FD0, &qword_100053658);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v55 - v5;
  v66 = sub_100049EF0();
  v7 = *(v66 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v66, v9);
  v59 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003150(&qword_100067F98, &unk_100053620);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v55 - v14;
  v16 = sub_10004A380();
  v77 = *(v16 - 8);
  v17 = *(v77 + 64);
  __chkstk_darwin(v16, v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10004AD40();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = __chkstk_darwin(v21, v24);
  v76 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v27);
  v65 = &v55 - v28;
  v29 = sub_10004AD30();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29, v32);
  v79 = &v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v1;
  v34 = [v1 viewIfLoaded];
  if (!v34)
  {
    return;
  }

  v35 = v34;
  v60 = sub_10004CA40();

  if (!v60)
  {
    return;
  }

  v36 = v7;
  v37 = *(v78 + 2);
  if (!v37)
  {
    v54 = v60;

    return;
  }

  v38 = v30 + 16;
  v74 = *(v30 + 16);
  v39 = &v78[(*(v30 + 80) + 32) & ~*(v30 + 80)];
  v64 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource;
  v72 = (v77 + 48);
  v73 = (v22 + 16);
  v68 = *(v38 + 56);
  v62 = (v36 + 48);
  v63 = (v77 + 32);
  v58 = (v36 + 32);
  v56 = (v36 + 8);
  v61 = (v77 + 8);
  v75 = v38;
  v69 = (v38 - 8);
  v70 = (v22 + 8);
  v77 = v21;
  v78 = v20;
  v40 = v65;
  v57 = v15;
  v71 = v29;
  v74(v79, v39, v29);
  while (1)
  {
    sub_10004ACF0();
    (*v73)(v76, v40, v21);
    sub_10004A360();
    if ((*v72)(v15, 1, v16) == 1)
    {
      (*v70)(v40, v21);
      v41 = v15;
      v42 = &qword_100067F98;
      v43 = &unk_100053620;
LABEL_6:
      sub_10000A138(v41, v42, v43);
      v44 = v71;
LABEL_7:
      (*v69)(v79, v44);
      goto LABEL_8;
    }

    (*v63)(v20, v15, v16);
    v45 = *&v67[v64];
    if (!v45)
    {
      break;
    }

    v46 = v45;
    sub_10004C460();

    if ((*v62)(v6, 1, v66) == 1)
    {
      (*v61)(v20, v16);
      v40 = v65;
      (*v70)(v65, v21);
      v41 = v6;
      v42 = &qword_100067FD0;
      v43 = &qword_100053658;
      goto LABEL_6;
    }

    v47 = v59;
    v48 = v66;
    (*v58)(v59, v6, v66);
    v49 = [v67 collectionView];
    if (!v49)
    {
      goto LABEL_24;
    }

    v50 = v49;
    isa = sub_100049EB0().super.isa;
    v52 = [v50 cellForItemAtIndexPath:isa];

    (*v56)(v47, v48);
    (*v61)(v78, v16);
    v40 = v65;
    (*v70)(v65, v77);
    v15 = v57;
    v44 = v71;
    if (!v52)
    {
      goto LABEL_7;
    }

    v53 = [v60 isDescendantOfView:v52];

    (*v69)(v79, v44);
    if (v53)
    {
      [v60 resignFirstResponder];
LABEL_18:

      return;
    }

LABEL_8:
    v39 += v68;
    --v37;
    v21 = v77;
    v20 = v78;
    if (!v37)
    {
      goto LABEL_18;
    }

    v74(v79, v39, v44);
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

id sub_10002394C()
{
  result = [v0 isViewLoaded];
  if (result)
  {
    if (*&v0[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presentationTreesCapability])
    {

      sub_10004A410();

      return sub_10001DD00();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1000239F8(void *a1)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_10004B5E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003150(&qword_100068020, &qword_100053B30);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v25 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v18)
  {
    v19 = v18;
    sub_10004BD60();

    v20 = sub_10004A350();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v14, 1, v20) == 1)
    {
      sub_10000A138(v14, &qword_100068020, &qword_100053B30);
      (*(v21 + 56))(v17, 1, 1, v20);
      sub_10000A138(v17, &qword_100068020, &qword_100053B30);
      (*(v4 + 104))(v8, enum case for TTRICollectionViewCellSelectionOption.disallowed(_:), v3);
    }

    else
    {
      (*(v21 + 32))(v17, v14, v20);
      v22 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
      sub_100036FF8(v17, v8);
      (*(v21 + 56))(v17, 0, 1, v20);
      sub_10000A138(v17, &qword_100068020, &qword_100053B30);
    }

    v23 = sub_10004B5D0();
    (*(v4 + 8))(v8, v3);
    if (v23)
    {
      isa = sub_100049EB0().super.isa;
      [v26 _unhighlightItemAtIndexPath:isa animated:0];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100023D3C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = sub_100049EF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049EC0();
  v14 = a3;
  v15 = a1;
  LOBYTE(a5) = sub_1000270D4(v13, a5);

  (*(v9 + 8))(v13, v8);
  return a5 & 1;
}

uint64_t sub_100023E4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v5 = sub_10004A960();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  __chkstk_darwin(v5, v7);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003150(&qword_100068020, &qword_100053B30);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v41 - v16;
  v18 = sub_10004B5E0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v41 - v26;
  v28 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v28)
  {
    v29 = v28;
    v45 = a2;
    sub_10004BD60();

    v30 = sub_10004A350();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v14, 1, v30) == 1)
    {
      sub_10000A138(v14, &qword_100068020, &qword_100053B30);
      (*(v31 + 56))(v17, 1, 1, v30);
      sub_10000A138(v17, &qword_100068020, &qword_100053B30);
      v32 = enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
      (*(v19 + 104))(v27, enum case for TTRICollectionViewCellSelectionOption.disallowed(_:), v18);
    }

    else
    {
      (*(v31 + 32))(v17, v14, v30);
      v33 = *(v3 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
      sub_100036FF8(v17, v27);
      (*(v31 + 56))(v17, 0, 1, v30);
      sub_10000A138(v17, &qword_100068020, &qword_100053B30);
      v32 = enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
    }

    (*(v19 + 16))(v24, v27, v18);
    v34 = (*(v19 + 88))(v24, v18);
    if (v34 == v32 || v34 == enum case for TTRICollectionViewCellSelectionOption.selectItem(_:))
    {
      return (*(v19 + 8))(v27, v18);
    }

    if (v34 == enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:))
    {
      v35 = sub_10004C8E0();
      if (v35)
      {
        v36 = v35;
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v38 = v42;
          v37 = v43;
          v39 = v44;
          (*(v43 + 104))(v42, enum case for TTREditingStateOption.InputType.unspecified(_:), v44);
          sub_10004A450();

          (*(v37 + 8))(v38, v39);
        }

        else
        {
        }
      }

      return (*(v19 + 8))(v27, v18);
    }

    if (v34 == enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:))
    {
      return (*(v19 + 8))(v27, v18);
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_10004CDC0();
  __break(1u);
  return result;
}

uint64_t sub_100024304(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = sub_100049EF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049EC0();
  v14 = a3;
  v15 = a1;
  a5(v14, v13);

  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_100024414(char *a1)
{
  v2 = sub_100049EF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049EC0();
  v8 = *(*&a1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter] + 120);
  v9 = a1;
  if (sub_10004A140())
  {
    sub_100021400();
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_1000245E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003150(&qword_100067D20, &unk_1000537A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = (&v20 - v6);
  v8 = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
  sub_10003500C(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000A138(v7, &qword_100067D20, &unk_1000537A0);
  }

  else
  {
    sub_10002A5CC(v7, v13, type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState);
    v15 = sub_1000353B4();
    if (v15)
    {
      v16 = v15;
      sub_10002A5CC(v13, a1, type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState);
      v17 = _s26ListPickerCellStateAndMenuVMa(0);
      *(a1 + *(v17 + 20)) = v16;
      return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
    }

    sub_10002A634(v13, type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState);
  }

  v19 = _s26ListPickerCellStateAndMenuVMa(0);
  return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
}

uint64_t sub_100024814@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100003150(&qword_100068020, &qword_100053B30);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v35 - v4;
  v6 = sub_10004A350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004AD40();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v15 = sub_100003150(&qword_100067F98, &unk_100053620);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v35 - v18;
  v20 = sub_10004A380();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BBC0();
  sub_10004A360();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v26 = &qword_100067F98;
    v27 = &unk_100053620;
    v28 = v19;
LABEL_6:
    sub_10000A138(v28, v26, v27);
    v33 = sub_10004AD70();
    return (*(*(v33 - 8) + 56))(v36, 1, 1, v33);
  }

  result = (*(v21 + 32))(v25, v19, v20);
  v30 = v35;
  v31 = *(v35 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v31)
  {
    v32 = v31;
    sub_10004BD70();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      (*(v21 + 8))(v25, v20);
      v26 = &qword_100068020;
      v27 = &qword_100053B30;
      v28 = v5;
      goto LABEL_6;
    }

    (*(v7 + 32))(v11, v5, v6);
    v34 = *(*(v30 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter) + 120);
    sub_10004A0C0();
    (*(v7 + 8))(v11, v6);
    return (*(v21 + 8))(v25, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100024BD8@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = sub_10004A3B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
  sub_10002A4C4(&qword_100068008, type metadata accessor for TTRISECreateRemindersViewController);
  sub_10000A198(v8 + 152, v20, &qword_100067678, &qword_100052980);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  (*(v3 + 104))(v7, enum case for TTRIReminderCellModuleOwnerModuleType.remindersList(_:), v2);
  v9 = *(v8 + 120);
  sub_100049FD0();
  v10 = sub_10004AF50();
  v12 = v11;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v7, v2);
  sub_10000A138(v18, &qword_100068010, &qword_100053690);
  sub_10000343C(v20);
  *&v18[0] = v10;
  *(&v18[0] + 1) = v12;
  sub_100015848(v21, v20);
  sub_100003150(&qword_100068018, &qword_100053698);
  v13 = v17;
  sub_10004AEF0();
  sub_10000343C(v21);
  v14 = sub_100003150(&qword_1000678D8, &qword_100053250);
  return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
}

uint64_t sub_100024E60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004A3B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
  sub_10002A4C4(&qword_100067FF8, type metadata accessor for TTRISECreateRemindersViewController);
  sub_10000A198(v9 + 152, v17, &qword_100067678, &qword_100052980);
  (*(v4 + 104))(v8, enum case for TTRIReminderCellModuleOwnerModuleType.remindersList(_:), v3);
  v10 = *(v9 + 120);
  sub_100049FD0();
  v11 = sub_10004AF40();
  v13 = v12;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v8, v3);
  sub_10000343C(v17);
  v16[0] = v11;
  v16[1] = v13;
  sub_100015848(v18, v17);
  sub_100003150(&qword_100068000, &unk_100053680);
  sub_10004AEF0();
  sub_10000343C(v18);
  v14 = sub_100003150(&unk_100067238, &unk_100052CB0);
  return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
}

uint64_t sub_1000250B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004A3B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
  sub_10002A4C4(&qword_100067FE0, type metadata accessor for TTRISECreateRemindersViewController);
  sub_10000A198(v9 + 152, v17, &qword_100067678, &qword_100052980);
  (*(v4 + 104))(v8, enum case for TTRIReminderCellModuleOwnerModuleType.remindersList(_:), v3);
  v10 = *(v9 + 120);
  sub_100049FD0();
  v11 = sub_10004B120();
  v13 = v12;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v8, v3);
  sub_10000343C(v17);
  v16[0] = v11;
  v16[1] = v13;
  sub_100015848(v18, v17);
  sub_100003150(&qword_100067FE8, &qword_100053670);
  sub_10004AEF0();
  sub_10000343C(v18);
  v14 = sub_100003150(&qword_100067FF0, &qword_100053678);
  return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
}

uint64_t sub_100025308(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = sub_10004A900();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003150(&qword_100067630, &qword_100052960);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v28 - v12;
  v14 = sub_10004AD30();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BC80();
  if (!v32)
  {
    sub_10000A138(v31, &qword_100067FC8, &qword_100053650);
    (*(v15 + 56))(v13, 1, 1, v14);
    return sub_10000A138(v13, &qword_100067630, &qword_100052960);
  }

  v29 = v2;
  sub_1000032DC(v31, v32);
  sub_10004B6B0();
  (*(v15 + 56))(v13, 0, 1, v14);
  sub_10000343C(v31);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10000A138(v13, &qword_100067630, &qword_100052960);
  }

  (*(v15 + 32))(v19, v13, v14);
  (*(v4 + 16))(v8, v30, v3);
  v20 = (*(v4 + 88))(v8, v3);
  if (v20 == enum case for TTRReminderCellStyle.SuggestedReminderType.siriFoundInApps(_:))
  {
    return (*(v15 + 8))(v19, v14);
  }

  if (v20 == enum case for TTRReminderCellStyle.SuggestedReminderType.unspecified(_:))
  {
    v21 = *(v29 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
    sub_100003150(&qword_100067FD8, &unk_100053660);
    v22 = *(v15 + 72);
    v23 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v24 = swift_allocObject();
    *(v24 + 1) = xmmword_1000528D0;
    (*(v15 + 16))(&v24[v23], v19, v14);
    v25 = *(v21 + 120);
    v26._rawValue = v24;
    sub_100049FB0(v26);

    return (*(v15 + 8))(v19, v14);
  }

  result = sub_10004CDC0();
  __break(1u);
  return result;
}

uint64_t sub_1000256A0(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_10004A720();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003150(&qword_100067630, &qword_100052960);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v23 - v12;
  v14 = sub_10004AD30();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BC80();
  if (!v27)
  {
    sub_10000A138(v26, &qword_100067FC8, &qword_100053650);
    (*(v15 + 56))(v13, 1, 1, v14);
    return sub_10000A138(v13, &qword_100067630, &qword_100052960);
  }

  v24 = v4;
  sub_1000032DC(v26, v27);
  sub_10004B6B0();
  (*(v15 + 56))(v13, 0, 1, v14);
  sub_10000343C(v26);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10000A138(v13, &qword_100067630, &qword_100052960);
  }

  (*(v15 + 32))(v19, v13, v14);
  v20 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
  sub_10004A700();
  if (qword_100066F40 != -1)
  {
    swift_once();
  }

  v21 = sub_10004C1B0();
  sub_10000D49C(v21, qword_1000685E0);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014D1C();

  sub_100037814(v19, v8, 0, 0);
  (*(v24 + 8))(v8, v3);
  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_100025A10(uint64_t a1, int a2)
{
  v37 = a2;
  v2 = sub_100003150(&qword_100067F98, &unk_100053620);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v35 - v5;
  v7 = sub_10004A380();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003150(&qword_100067FA0, &qword_100053B50);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v35 - v16;
  v18 = sub_10004AD40();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v35 - v26;
  sub_10004BC60();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_10000A138(v17, &qword_100067FA0, &qword_100053B50);
  }

  (*(v19 + 32))(v27, v17, v18);
  (*(v19 + 16))(v24, v27, v18);
  sub_10004A360();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v19 + 8))(v27, v18);
    return sub_10000A138(v6, &qword_100067F98, &unk_100053620);
  }

  else
  {
    v29 = *(v8 + 32);
    v30 = v12;
    v35 = v12;
    v29(v12, v6, v7);
    v31 = *(*(v36 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter) + 144);
    sub_100003150(&qword_100067FA8, &unk_100053630);
    v32 = *(v8 + 72);
    v33 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1000528D0;
    (*(v8 + 16))(v34 + v33, v30, v7);
    v38 = v34;

    v36 = sub_100003150(&qword_100067688, &qword_100052990);
    sub_100003150(&qword_100067FB0, &unk_100053640);
    sub_100003364(&qword_100067FB8, &qword_100067688, &qword_100052990);
    sub_100003364(&qword_100067FC0, &qword_100067FB0, &unk_100053640);
    sub_10004B620();

    (*(v8 + 8))(v35, v7);
    return (*(v19 + 8))(v27, v18);
  }
}

id sub_100025EF4()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result hasActiveDrag];

    if (v3)
    {
      return 0;
    }

    result = [v0 collectionView];
    if (result)
    {
      v4 = result;
      v5 = [result hasActiveDrop];

      return (v5 ^ 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100025FA8()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result isEditing];

    if (!v3)
    {
      return v3;
    }

    result = [v0 collectionView];
    if (result)
    {
      v4 = result;
      [result setEditing:0];

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10002604C()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result hasActiveDrag];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000260E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v53 = a1;
  v54 = a5;
  v52 = a2;
  v7 = sub_10004A4B0();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  __chkstk_darwin(v7, v9);
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004A460();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  __chkstk_darwin(v11, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004B310();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004A4E0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = __chkstk_darwin(v22, v25);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(v26);
  (*(v17 + 16))(v21, a3, v16);
  v29 = (*(v17 + 88))(v21, v16);
  if (v29 == enum case for TTRIReminderCellTitleEditingEvent.editingWillBegin(_:) || v29 == enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:))
  {
    goto LABEL_11;
  }

  if (v29 == enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:))
  {
    ObjectType = swift_getObjectType();
    v32 = v54(ObjectType, v52);
    if (v32)
    {
      v34 = v32;
      v35 = v33;
      v36 = *(sub_100003150(&qword_100068028, &qword_1000536A0) + 48);
      *(v15 + 3) = swift_getObjectType();
      *(v15 + 4) = *(*(v35 + 8) + 8);
      *v15 = v34;
      (*(v23 + 16))(&v15[v36], v28, v22);
      (*(v47 + 104))(v15, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.textChange(_:), v11);
      v37 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_deferredItemUpdates;
      v38 = v51;
      swift_beginAccess();
      v39 = v34;
      sub_10004A480();
      swift_endAccess();
      v41 = v48;
      v40 = v49;
      v42 = &v38[v37];
      v43 = v50;
      (*(v49 + 16))(v48, v42, v50);
      LOBYTE(v35) = sub_10004A4A0();
      (*(v40 + 8))(v41, v43);
      if ((v35 & 1) == 0)
      {
        v44 = [v38 viewIfLoaded];
        [v44 setNeedsLayout];

        v39 = v44;
      }
    }

    goto LABEL_11;
  }

  if (v29 == enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:))
  {
LABEL_11:
    (*(v23 + 8))(v28, v22);
    return;
  }

  if (qword_100066F20 != -1)
  {
    swift_once();
  }

  v45 = sub_10004C1B0();
  sub_10000D49C(v45, qword_100067EA8);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014FC0("Unknown editing event", 21, 2);
  __break(1u);
}

void sub_1000265E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v2)
  {
    v3 = v2;
    sub_10004BD70();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002666C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter) + 144);

  sub_100003150(&qword_100067688, &qword_100052990);
  sub_100003364(&qword_100067FB8, &qword_100067688, &qword_100052990);
  sub_100003150(&qword_100068098, &qword_100053708);
  sub_100003364(&qword_1000680A0, &qword_100068098, &qword_100053708);
  sub_10004B600();
}

uint64_t sub_10002677C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003150(&qword_100068088, &qword_100053700);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100026808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return TTRICollectionViewDragAndDropCoordinatorDelegate.dragAndDropCoordinator(_:dropSessionDidEnd:)(a1, a2, a3, ObjectType, a5);
}

uint64_t sub_10002690C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026948(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B5FC;

  return sub_100021524(a1, v4, v5, v6);
}

id sub_1000269FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = v6(a2, a3);

  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_100026A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_10004CD00();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100026B78, 0, 0);
}

uint64_t sub_100026B78()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_10004CD10();
  v7 = sub_10002A4C4(&qword_100067F88, &type metadata accessor for ContinuousClock);
  sub_10004CE00();
  sub_10002A4C4(&qword_100067F90, &type metadata accessor for ContinuousClock.Instant);
  sub_10004CD20();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100026D08;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_100026D08()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_100026EC4, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_100026EC4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void sub_100026F30()
{
  v1 = sub_10004A460();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1, v3);
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presentationTreesCapability) = 0;
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_dragAndDropController) = 0;
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_dragAndDropCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_currentTextInputModeObserver) = 0;
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.none(_:));
  sub_10004A490();
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_taskToShowLoadingState) = 0;
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController____lazy_storage___cancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController____lazy_storage___commitButton) = 0;
  if (qword_100066F20 != -1)
  {
    swift_once();
  }

  v6 = sub_10004C1B0();
  sub_10000D49C(v6, qword_100067EA8);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014FC0("init(coder:) has not been implemented", 37, 2);
  __break(1u);
}

uint64_t sub_1000270D4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_10004B5E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003150(&qword_100068020, &qword_100053B30);
  v11 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10 - 8, v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13, v16);
  v19 = &v27 - v18;
  v20 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v20)
  {
    v21 = v20;
    sub_10004BD60();

    v22 = sub_10004A350();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v15, 1, v22) == 1)
    {
      sub_10000A138(v15, &qword_100068020, &qword_100053B30);
      (*(v23 + 56))(v19, 1, 1, v22);
      sub_10000A138(v19, &qword_100068020, &qword_100053B30);
      v24 = (*(v5 + 104))(v9, enum case for TTRICollectionViewCellSelectionOption.disallowed(_:), v4);
    }

    else
    {
      (*(v23 + 32))(v19, v15, v22);
      v25 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
      sub_100036FF8(v19, v9);
      (*(v23 + 56))(v19, 0, 1, v22);
      v24 = sub_10000A138(v19, &qword_100068020, &qword_100053B30);
    }

    v26 = a2(v24);
    (*(v5 + 8))(v9, v4);
    return v26 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000273AC(uint64_t a1)
{
  v3 = sub_100003150(&qword_100068020, &qword_100053B30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v26 - v6;
  v8 = sub_10004A350();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100049EF0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (*(a1 + 16) == 1)
  {
    result = (*(v15 + 16))(v19, a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v14);
    v21 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
    if (v21)
    {
      v22 = v1;
      v23 = v21;
      sub_10004BD60();

      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        (*(v15 + 8))(v19, v14);
        sub_10000A138(v7, &qword_100068020, &qword_100053B30);
        return 0;
      }

      else
      {
        (*(v9 + 32))(v13, v7, v8);
        v24 = *(v22 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
        v25 = sub_1000381D4(v13);
        (*(v9 + 8))(v13, v8);
        (*(v15 + 8))(v19, v14);
        return v25;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_100027664(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_100003150(&qword_100068020, &qword_100053B30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v29 - v8;
  v10 = sub_10004A350();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = __chkstk_darwin(v10, v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
  if (!v17)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  sub_10004BD70();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000A138(v9, &qword_100068020, &qword_100053B30);
    return 0;
  }

  (*(v11 + 32))(v16, v9, v10);
  result = [v2 collectionView];
  if (!result)
  {
    goto LABEL_12;
  }

  v19 = result;
  [a2 locationInView:result];
  v21 = v20;
  v23 = v22;

  result = [v3 collectionView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = [result hitTest:0 withEvent:{v21, v23}];

  if (v25)
  {
    sub_10004BC90();
    v26 = sub_10004BC20();

    if (v26)
    {
      (*(v11 + 8))(v16, v10);
      return 0;
    }
  }

  v27 = *&v3[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter];
  v28 = sub_1000389C4(v16);
  (*(v11 + 8))(v16, v10);
  return v28;
}

uint64_t sub_10002790C()
{
  v1 = sub_100003150(&qword_100068020, &qword_100053B30);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v17 - v4;
  v6 = sub_10004A350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6, v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v13)
  {
    v14 = v13;
    sub_10004BD70();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_10000A138(v5, &qword_100068020, &qword_100053B30);
      v15 = 0;
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      v16 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
      v15 = sub_100036DB8();
      (*(v7 + 8))(v12, v6);
    }

    return v15 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100027ADC(void *a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter) + 120);
  if (sub_10004A140())
  {
    return 0;
  }

  v5 = [a1 items];
  sub_100009FF0(0, &qword_100068090, UIDragItem_ptr);
  v6 = sub_10004C720();

  if (v6 >> 62)
  {
LABEL_17:
    v7 = sub_10004CD50();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v7 != i; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_10004CC90();
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    type metadata accessor for TTRISECreateRemindersDragItem();
    v11 = sub_1000490D0(v10);
    if (v11)
    {
      v12 = v11;

      return 1;
    }
  }

  return 0;
}

uint64_t sub_100027C30(uint64_t a1, uint64_t a2)
{
  v101 = a2;
  v98 = a1;
  v2 = sub_100003150(&qword_100068038, &qword_1000536B0);
  v93 = *(v2 - 8);
  v94 = v2;
  v3 = *(v93 + 64);
  __chkstk_darwin(v2, v4);
  v99 = &v87 - v5;
  v6 = sub_100003150(&qword_100068020, &qword_100053B30);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v89 = &v87 - v13;
  v14 = sub_100003150(&qword_100068078, &qword_1000536F0);
  v15 = *(v14 - 8);
  v96 = v14;
  v97 = v15;
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v88 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v92 = &v87 - v21;
  v22 = sub_100003150(&qword_100068050, &qword_1000536C8);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8, v24);
  v26 = &v87 - v25;
  v90 = sub_100003150(&qword_100068058, &qword_1000536D0);
  v27 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90, v28);
  v30 = &v87 - v29;
  v31 = sub_10004A350();
  v100 = *(v31 - 8);
  v32 = *(v100 + 64);
  v34 = __chkstk_darwin(v31, v33);
  v91 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v36);
  v95 = &v87 - v37;
  v38 = sub_100003150(&qword_100068060, &qword_1000536D8);
  v39 = *(v38 - 8);
  v40 = *(v39 + 8);
  __chkstk_darwin(v38, v41);
  v43 = &v87 - v42;
  v44 = sub_100003150(&qword_100068068, &qword_1000536E0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44, v47);
  v49 = &v87 - v48;
  (*(v45 + 16))(&v87 - v48, v101, v44);
  v50 = (*(v45 + 88))(v49, v44);
  if (v50 == enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    (*(v45 + 96))(v49, v44);
    (*(v39 + 4))(v43, v49, v38);
    v51 = v102;
    v52 = *(v102 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
    if (v52)
    {
      v53 = v52;
      sub_10004BD50();

      v54 = sub_100003150(&qword_100068070, &qword_1000536E8);
      if ((*(*(v54 - 8) + 48))(v26, 1, v54) == 1)
      {
        (*(v39 + 1))(v43, v38);
        sub_10000A138(v26, &qword_100068050, &qword_1000536C8);
        return 0;
      }

      v94 = v43;
      v99 = v39;
      v101 = v38;
      v60 = *&v26[*(v54 + 48)];
      v61 = v90;
      v62 = *(v90 + 48);
      v63 = *(v100 + 32);
      v63(v30, v26, v31);
      *&v30[v62] = v60;
      v93 = *&v30[*(v61 + 48)];
      v64 = v95;
      v65 = (v63)(v95, v30, v31);
      v67 = v96;
      v66 = v97;
      __chkstk_darwin(v65, v68);
      *(&v87 - 2) = v51;
      sub_100003150(&qword_100068080, &qword_1000536F8);
      v69 = v92;
      sub_10004B300();
      v70 = (*(v66 + 88))(v69, v67);
      if (v70 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.local<A><A1>(_:))
      {
        (*(v66 + 96))(v69, v67);
        v71 = *v69;
        v72 = *(v51 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter);
        v73 = v100;
        v74 = v89;
        (*(v100 + 16))(v89, v64, v31);
        (*(v73 + 56))(v74, 0, 1, v31);
        v75 = *(v72 + 120);
        v76 = sub_10004A250();

        sub_10000A138(v74, &qword_100068020, &qword_100053B30);
        (*(v73 + 8))(v64, v31);
        (*(v99 + 1))(v94, v101);
        goto LABEL_17;
      }

      if (v70 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.external<A><A1>(_:))
      {
        (*(v100 + 8))(v95, v31);
        (*(v99 + 1))(v94, v101);
        (*(v66 + 8))(v69, v67);
        return 0;
      }

      goto LABEL_28;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_10004CDC0();
    __break(1u);
    goto LABEL_29;
  }

  v55 = v102;
  if (v50 == enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
  {
    (*(v45 + 96))(v49, v44);
    v45 = v93;
    v26 = v94;
    v56 = v99;
    (*(v93 + 32))(v99, v49, v94);
    v57 = *(v55 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
    if (!v57)
    {
      goto LABEL_27;
    }

    v58 = v57;
    sub_10004BD40();

    v44 = v100;
    v59 = (*(v100 + 48))(v11, 1, v31);
    v39 = v91;
    if (v59 == 1)
    {
      (*(v45 + 8))(v56, v26);
      sub_10000A138(v11, &qword_100068020, &qword_100053B30);
      return 0;
    }
  }

  else
  {
    if (v50 == enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
    {
      (*(v45 + 8))(v49, v44);
      return 0;
    }

    if (v50 == enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
    {
      return 0;
    }

    sub_10004CDC0();
    __break(1u);
  }

  v77 = (*(v44 + 32))(v39, v11, v31);
  v78 = v44;
  __chkstk_darwin(v77, v79);
  *(&v87 - 2) = v55;
  sub_100003150(&qword_100068080, &qword_1000536F8);
  v80 = v88;
  v81 = v97;
  sub_10004B300();
  v82 = v96;
  v83 = (*(v81 + 88))(v80, v96);
  if (v83 != enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.local<A><A1>(_:))
  {
    if (v83 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.external<A><A1>(_:))
    {
      (*(v44 + 8))(v39, v31);
      (*(v45 + 8))(v99, v26);
      (*(v81 + 8))(v80, v82);
      return 0;
    }

LABEL_29:
    result = sub_10004CDC0();
    __break(1u);
    return result;
  }

  (*(v81 + 96))(v80, v82);
  v84 = *v80;
  v85 = *(*(v55 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter) + 120);
  v76 = sub_10004A240();

  (*(v78 + 8))(v39, v31);
  (*(v45 + 8))(v99, v26);
LABEL_17:
  if (v76)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000286F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003150(&qword_100068038, &qword_1000536B0);
  v138 = *(v4 - 8);
  v139 = v4;
  v5 = *(v138 + 8);
  __chkstk_darwin(v4, v6);
  v142 = &v126 - v7;
  v147 = sub_10004A380();
  v131 = *(v147 - 8);
  v8 = *(v131 + 64);
  v10 = __chkstk_darwin(v147, v9);
  v127 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v130 = &v126 - v13;
  v129 = sub_100003150(&qword_100068040, &qword_1000536B8);
  v144 = *(v129 - 8);
  v14 = *(v144 + 64);
  v16 = __chkstk_darwin(v129, v15);
  v126 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v128 = &v126 - v19;
  v20 = sub_100003150(&qword_100068020, &qword_100053B30);
  v21 = *(*(v20 - 8) + 64);
  v23 = __chkstk_darwin(v20 - 8, v22);
  v134 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v132 = &v126 - v26;
  v27 = sub_100003150(&qword_100068048, &qword_1000536C0);
  v140 = *(v27 - 8);
  v141 = v27;
  v28 = *(v140 + 64);
  v30 = __chkstk_darwin(v27, v29);
  v135 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v32);
  v136 = &v126 - v33;
  v34 = sub_100003150(&qword_100068050, &qword_1000536C8);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8, v36);
  v38 = &v126 - v37;
  v133 = sub_100003150(&qword_100068058, &qword_1000536D0);
  v39 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133, v40);
  v42 = &v126 - v41;
  v143 = sub_10004A350();
  v145 = *(v143 - 8);
  v43 = *(v145 + 8);
  v45 = __chkstk_darwin(v143, v44);
  v146 = (&v126 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45, v47);
  v137 = (&v126 - v48);
  v49 = sub_100003150(&qword_100068060, &qword_1000536D8);
  v50 = *(v49 - 8);
  v51 = *(v50 + 8);
  __chkstk_darwin(v49, v52);
  v54 = &v126 - v53;
  v55 = sub_100003150(&qword_100068068, &qword_1000536E0);
  v56 = *(v55 - 8);
  v57 = *(v56 + 8);
  __chkstk_darwin(v55, v58);
  v60 = &v126 - v59;
  v148 = a1;
  sub_10004B790();
  result = (*(v56 + 11))(v60, v55);
  if (result == enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    (*(v56 + 12))(v60, v55);
    (*(v50 + 4))(v54, v60, v49);
    v62 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
    if (v62)
    {
      v63 = v62;
      sub_10004BD50();

      v64 = sub_100003150(&qword_100068070, &qword_1000536E8);
      if ((*(*(v64 - 8) + 48))(v38, 1, v64) == 1)
      {
        (*(v50 + 1))(v54, v49);
        v65 = &qword_100068050;
        v66 = &qword_1000536C8;
        v67 = v38;
        return sub_10000A138(v67, v65, v66);
      }

      v138 = v54;
      v139 = v50;
      v142 = v49;
      v72 = *&v38[*(v64 + 48)];
      v73 = v133;
      v74 = *(v133 + 48);
      v75 = v145;
      v76 = *(v145 + 4);
      v77 = v38;
      v78 = v143;
      v76(v42, v77, v143);
      *&v42[v74] = v72;
      v79 = v2;
      v80 = *&v42[*(v73 + 48)];
      v81 = v137;
      v82 = (v76)(v137, v42, v78);
      v83 = v78;
      __chkstk_darwin(v82, v84);
      *(&v126 - 2) = v79;
      v85 = v136;
      sub_10004B7A0();
      v87 = v140;
      v86 = v141;
      v88 = (*(v140 + 88))(v85, v141);
      if (v88 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.local<A><A1>(_:))
      {
        (*(v87 + 96))(v85, v86);
        v89 = *v85;
        v90 = v85[1];
        v141 = v89;
        v91 = *&v79[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter];
        v92 = v132;
        v75[2](v132, v81, v78);
        (v75[7])(v92, 0, 1, v78);
        if (qword_100066F40 != -1)
        {
          swift_once();
        }

        v93 = sub_10004C1B0();
        sub_10000D49C(v93, qword_1000685E0);
        sub_100011BA4(_swiftEmptyArrayStorage);
        sub_100014D1C();

        v94 = *(v91 + 120);
        LOBYTE(v94) = sub_10004A040();

        sub_10000A138(v92, &qword_100068020, &qword_100053B30);
        if ((v94 & 1) != 0 && (v95 = *(v141 + 16)) != 0)
        {
          v96 = v144 + 16;
          v146 = *(v144 + 16);
          v97 = v141 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
          v98 = v129;
          v99 = v130;
          v144 = *(v144 + 72);
          v100 = (v131 + 8);
          v101 = v128;
          do
          {
            v146(v101, v97, v98);
            v102 = sub_10004B770();
            sub_10004B780();
            (*(v96 - 8))(v101, v98);
            sub_10004B7C0();

            (*v100)(v99, v147);
            v97 += v144;
            --v95;
          }

          while (v95);

          v83 = v143;
          v75 = v145;
          v81 = v137;
        }

        else
        {
        }

        (v75[1])(v81, v83);
        return (*(v139 + 1))(v138, v142);
      }

      if (v88 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.external<A><A1>(_:))
      {
        (*(v145 + 1))(v81, v78);
        (*(v139 + 1))(v138, v142);
        return (*(v87 + 8))(v85, v86);
      }

LABEL_42:
      result = sub_10004CDC0();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (result == enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
  {
    (*(v56 + 12))(v60, v55);
    v56 = v138;
    v42 = v139;
    v68 = v142;
    (*(v138 + 4))(v142, v60, v139);
    v69 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource];
    if (!v69)
    {
      goto LABEL_41;
    }

    v60 = v2;
    v70 = v69;
    v2 = v134;
    sub_10004BD40();

    v54 = v145;
    v55 = v143;
    v71 = (*(v145 + 6))(v2, 1, v143) == 1;
    v49 = v146;
    v50 = v135;
    if (v71)
    {
      (*(v56 + 1))(v68, v42);
      v65 = &qword_100068020;
      v66 = &qword_100053B30;
      v67 = v2;
      return sub_10000A138(v67, v65, v66);
    }
  }

  else
  {
    if (result == enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
    {
      return (*(v56 + 1))(v60, v55);
    }

    if (result == enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
    {
      return result;
    }

    sub_10004CDC0();
    __break(1u);
  }

  v103 = (*(v54 + 4))(v49, v2, v55);
  __chkstk_darwin(v103, v104);
  *(&v126 - 2) = v60;
  sub_10004B7A0();
  v106 = v140;
  v105 = v141;
  v107 = (*(v140 + 88))(v50, v141);
  if (v107 != enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.local<A><A1>(_:))
  {
    if (v107 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.external<A><A1>(_:))
    {
      (*(v145 + 1))(v49, v55);
      (*(v56 + 1))(v142, v42);
      return (*(v106 + 8))(v50, v105);
    }

    goto LABEL_42;
  }

  (*(v106 + 96))(v50, v105);
  v109 = *v50;
  v108 = *(v50 + 1);
  v110 = *&v60[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter];
  if (qword_100066F40 != -1)
  {
    swift_once();
  }

  v111 = sub_10004C1B0();
  sub_10000D49C(v111, qword_1000685E0);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014D1C();

  v112 = *(v110 + 120);
  LOBYTE(v112) = sub_10004A030();

  v113 = v145;
  if ((v112 & 1) != 0 && (v114 = *(v109 + 2)) != 0)
  {
    v115 = *(v144 + 16);
    v116 = *(v144 + 80);
    v136 = v109;
    v117 = &v109[(v116 + 32) & ~v116];
    v118 = v129;
    v119 = v130;
    v140 = *(v144 + 72);
    v141 = v115;
    v144 += 16;
    v137 = (v144 - 8);
    v120 = (v131 + 8);
    v121 = v147;
    v122 = v127;
    v123 = v126;
    do
    {
      (v141)(v123, v117, v118);
      v124 = sub_10004B770();
      sub_10004B780();
      (*v137)(v123, v118);
      sub_10004A310();
      sub_10004B7B0();

      v125 = *v120;
      (*v120)(v122, v121);
      v125(v119, v121);
      v117 += v140;
      --v114;
    }

    while (v114);

    v55 = v143;
    v113 = v145;
    v49 = v146;
  }

  else
  {
  }

  v113[1](v49, v55);
  return (*(v138 + 1))(v142, v139);
}

id sub_1000295A8()
{
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  v3 = [result hasActiveDrag];

  if ((v3 & 1) == 0)
  {
    result = [v0 collectionView];
    if (result)
    {
      v4 = result;
      [result hasActiveDrop];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

LABEL_5:
  v5 = *(*&v0[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter] + 136);
  sub_10004BF30();

  sub_10004BB20();
}

uint64_t sub_100029690()
{
  v1 = sub_100003150(&qword_100068030, &qword_1000536A8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v27 - v4;
  v6 = sub_100003150(&qword_100068020, &qword_100053B30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = sub_10004A350();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = __chkstk_darwin(v11, v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource);
  if (v18)
  {
    v19 = v18;
    sub_10004BD70();

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      v20 = &qword_100068020;
      v21 = &qword_100053B30;
      v22 = v10;
LABEL_6:
      sub_10000A138(v22, v20, v21);
      return 0;
    }

    (*(v12 + 32))(v17, v10, v11);
    v23 = *(*(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter) + 120);
    sub_10004A0C0();
    v24 = sub_10004AD70();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v5, 1, v24) == 1)
    {
      (*(v12 + 8))(v17, v11);
      v20 = &qword_100068030;
      v21 = &qword_1000536A8;
      v22 = v5;
      goto LABEL_6;
    }

    v26 = sub_10004AD50();
    (*(v12 + 8))(v17, v11);
    (*(v25 + 8))(v5, v24);
    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100029988()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000299D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100029A10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002A6A0;

  return sub_100036178(a1, v4, v5, v6);
}

uint64_t sub_100029AC4()
{
  v1 = *(v0 + 16);

  sub_10000343C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100029B04(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4[2] = v1 + 24;
  v4[3] = a1;
  return sub_100022228(sub_100029B54, v4, v2);
}

double sub_100029B54@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3[4];
  sub_1000032DC(v3, v3[3]);
  sub_10004A4F0();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_100029BFC()
{
  v1 = sub_100003150(&qword_100068128, &qword_100053778);
  v28 = *(v1 - 8);
  v29 = v1;
  v26 = *(v28 + 80);
  v2 = *(v28 + 64);
  v27 = sub_100003150(&qword_100068120, &qword_100053770);
  v3 = *(v27 - 8);
  v4 = *(v3 + 80);
  v23 = (((v26 + 24) & ~v26) + v2 + v4) & ~v4;
  v5 = *(v3 + 64);
  v25 = sub_100003150(&qword_100068118, &qword_100053768);
  v6 = *(v25 - 8);
  v7 = *(v6 + 80);
  v8 = (v23 + v5 + v7) & ~v7;
  v21 = v8;
  v9 = *(v6 + 64);
  v24 = sub_100003150(&qword_100068110, &qword_100053760);
  v10 = *(v24 - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = *(v10 + 64);
  v22 = sub_100003150(&qword_100068108, &qword_100053758);
  v14 = *(v22 - 8);
  v15 = *(v14 + 80);
  v16 = (v12 + v13 + v15) & ~v15;
  v20 = *(v14 + 64);
  v17 = v26 | v4 | v7 | v11 | v15;
  v18 = *(v0 + 16);

  (*(v28 + 8))(v0 + ((v26 + 24) & ~v26), v29);
  (*(v3 + 8))(v0 + v23, v27);
  (*(v6 + 8))(v0 + v21, v25);
  (*(v10 + 8))(v0 + v12, v24);
  (*(v14 + 8))(v0 + v16, v22);

  return _swift_deallocObject(v0, v16 + v20, v17 | 7);
}

uint64_t sub_100029F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100003150(&qword_100068128, &qword_100053778) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_100003150(&qword_100068120, &qword_100053770) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_100003150(&qword_100068118, &qword_100053768) - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(sub_100003150(&qword_100068110, &qword_100053760) - 8);
  v17 = (v14 + v15 + *(v16 + 80)) & ~*(v16 + 80);
  v18 = *(v16 + 64);
  v19 = *(sub_100003150(&qword_100068108, &qword_100053758) - 8);
  v21 = v3 + ((v17 + v18 + *(v19 + 80)) & ~*(v19 + 80));
  return sub_10001F7AC(a1, a2, a3, *(v3 + 16), v3 + v8, v3 + v11, v3 + v14, v3 + v17);
}

uint64_t sub_10002A17C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002A1BC()
{
  v1 = sub_100003150(&qword_100068100, &qword_100053750);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_100003150(&qword_1000680F8, &qword_100053748);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_10002A324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100003150(&qword_100068100, &qword_100053750) - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_100003150(&qword_1000680F8, &qword_100053748) - 8);
  v13 = *(v4 + 16);
  v14 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  sub_100020158(a1, a2, a3, a4, v13, v4 + v10, v14);
}

uint64_t sub_10002A4AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002A4C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002A56C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A5AC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_100020B40(a1, a2);
}

uint64_t sub_10002A5B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002A5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002A634(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static TTRSECreateRemindersViewModel.ListPickerCellState.placeholder.getter@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  result = sub_10004AE00();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t TTRSECreateRemindersViewModel.ListPickerCellState.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TTRSECreateRemindersViewModel.ListPickerCellState.badge.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  v4 = sub_10004AE10();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRSECreateRemindersViewModel.ListPickerCellState.init(name:badge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  v7 = sub_10004AE10();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static TTRSECreateRemindersViewModel.ListPickerCellState.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_10004CDD0() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);

  return sub_10004ADF0();
}

uint64_t sub_10002A8B0(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_10004CDD0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);

  return sub_10004ADF0();
}

char *_s19ListPickerCellStateVwCP(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = *(a3 + 20);
    v8 = sub_10004AE10();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], &a2[v6], v8);
  }

  return v3;
}

uint64_t _s19ListPickerCellStateVwxx(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a2 + 20);
  v6 = sub_10004AE10();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

char *_s19ListPickerCellStateVwcp(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 20);
  v7 = sub_10004AE10();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  return a1;
}

char *_s19ListPickerCellStateVwca(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = *(a3 + 20);
  v8 = sub_10004AE10();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  return a1;
}

char *_s19ListPickerCellStateVwtk(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_10004AE10();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *_s19ListPickerCellStateVwta(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a3 + 20);
  v9 = sub_10004AE10();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  return a1;
}

uint64_t sub_10002ACC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10004AE10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002AD80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10004AE10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002AE24()
{
  result = sub_10004AE10();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_10002AEBC(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    v8 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
    v9 = sub_10004AE10();
    v10 = *(*(v9 - 8) + 16);

    v10(&v3[v8], &a2[v8], v9);
    v11 = *(a3 + 20);
    v12 = *&a2[v11];
    *&v3[v11] = v12;
    v13 = v12;
  }

  return v3;
}

void sub_10002AFB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  v6 = sub_10004AE10();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = *(a1 + *(a2 + 20));
}

char *sub_10002B048(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  v8 = sub_10004AE10();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = *(a3 + 20);
  v11 = *&a2[v10];
  *&a1[v10] = v11;
  v12 = v11;
  return a1;
}

char *sub_10002B0F8(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  v8 = sub_10004AE10();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 20);
  v10 = *&a1[v9];
  v11 = *&a2[v9];
  *&a1[v9] = v11;
  v12 = v11;

  return a1;
}

char *sub_10002B1AC(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  v7 = sub_10004AE10();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *sub_10002B23C(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  v9 = sub_10004AE10();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  v10 = *(a3 + 20);
  v11 = *&a1[v10];
  *&a1[v10] = *&a2[v10];

  return a1;
}

uint64_t sub_10002B2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
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

uint64_t sub_10002B3CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
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

uint64_t sub_10002B4A4()
{
  result = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for TTRISECreateRemindersDiffableDataSource()
{
  result = qword_1000682A8;
  if (!qword_1000682A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002B5C4(uint64_t a1)
{
  v41 = a1;
  v1 = sub_100003150(&qword_100067F98, &unk_100053620);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v41 - v4;
  v6 = sub_100003150(&qword_100068140, &qword_100053788);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v41 - v9;
  v11 = sub_10004A390();
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v41 - v18;
  v20 = sub_100003150(&qword_100067F68, &unk_100053890);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v41 - v23;
  v25 = type metadata accessor for TTRISECreateRemindersPresentationTree();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25, v28);
  v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BD30();
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v31 = &qword_100067F68;
    v32 = &unk_100053890;
    v33 = v24;
LABEL_8:
    sub_10000A138(v33, v31, v32);
    return;
  }

  sub_10002BC1C(v24, v30);
  sub_10004C410();
  v34 = sub_10004A380();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v5, 1, v34) == 1)
  {
    sub_10002BC80(v30);
    sub_10000A138(v5, &qword_100067F98, &unk_100053620);
    (*(v42 + 56))(v10, 1, 1, v11);
LABEL_7:
    v31 = &qword_100068140;
    v32 = &qword_100053788;
    v33 = v10;
    goto LABEL_8;
  }

  sub_10004A370();
  (*(v35 + 8))(v5, v34);
  v36 = v42;
  if ((*(v42 + 48))(v10, 1, v11) == 1)
  {
    sub_10002BC80(v30);
    goto LABEL_7;
  }

  (*(v36 + 32))(v19, v10, v11);
  (*(v36 + 16))(v16, v19, v11);
  v37 = (*(v36 + 88))(v16, v11);
  if (v37 == enum case for TTRSECreateRemindersViewModel.SectionID.listPicker(_:))
  {
    (*(v36 + 8))(v19, v11);
    v38 = *(v25 + 32);
LABEL_15:
    v39 = v30[v38];
    sub_10002BC80(v30);
    return;
  }

  if (v37 == enum case for TTRSECreateRemindersViewModel.SectionID.reminders(_:))
  {
    (*(v36 + 8))(v19, v11);
    sub_10002BC80(v30);
    return;
  }

  if (v37 == enum case for TTRSECreateRemindersViewModel.SectionID.suggestions(_:))
  {
    (*(v36 + 8))(v19, v11);
    v38 = *(v25 + 36);
    goto LABEL_15;
  }

  if (qword_100066F28 != -1)
  {
    swift_once();
  }

  v40 = sub_10004C1B0();
  sub_10000D49C(v40, qword_100068290);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014FC0("Unknown sectionID", 17, 2);
  __break(1u);
}

uint64_t sub_10002BB00()
{
  v0 = sub_10004C1B0();
  sub_10000D51C(v0, qword_100068290);
  v1 = sub_10000D49C(v0, qword_100068290);
  if (qword_100066F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D49C(v0, qword_10006A2F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10002BC1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRISECreateRemindersPresentationTree();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002BC80(uint64_t a1)
{
  v2 = type metadata accessor for TTRISECreateRemindersPresentationTree();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002BCE0(void *a1, _BYTE *a2, char *a3, void *a4)
{
  v72 = a3;
  v73 = a4;
  v71 = a2;
  v68 = a1;
  v4 = sub_100003150(&qword_1000683A8, &qword_100053938);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v70 = &v63 - v7;
  v69 = sub_10004A720();
  v65 = *(v69 - 8);
  v8 = *(v65 + 64);
  __chkstk_darwin(v69, v9);
  v64 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003150(&qword_100067888, &unk_100053940);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v63 - v14;
  v16 = sub_100003150(&qword_100067890, &qword_100052C70);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &v63 - v19;
  v21 = sub_10004AC10();
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  __chkstk_darwin(v21, v23);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10004C0B0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26, v29);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10004AB40();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32, v35);
  v37 = &v63 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10004BE10();
  v74 = *(v38 - 8);
  v75 = v38;
  v39 = *(v74 + 64);
  __chkstk_darwin(v38, v40);
  v42 = &v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BE00();
  *v37 = 1;
  v76 = v33;
  v77 = v32;
  v43 = v33;
  v44 = v65;
  (*(v43 + 104))(v37, enum case for TTRIReminderDetailStyle.quickBarDueDatePicker(_:), v32);
  v45 = enum case for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection.date(_:);
  v46 = sub_10004C0C0();
  (*(*(v46 - 8) + 104))(v31, v45, v46);
  v78 = v27;
  v79 = v26;
  (*(v27 + 104))(v31, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection.dueDate(_:), v26);
  sub_10004AD90();
  v47 = v68;
  sub_10004AC00();
  v48 = sub_10004A5C0();
  (*(*(v48 - 8) + 56))(v20, 1, 1, v48);
  v49 = sub_10004BCD0();
  (*(*(v49 - 8) + 56))(v15, 1, 1, v49);
  v71 = v37;
  v72 = v42;
  v50 = v31;
  v51 = sub_10004AD80();
  sub_10000A138(v15, &qword_100067888, &unk_100053940);
  sub_10000A138(v20, &qword_100067890, &qword_100052C70);
  (*(v66 + 8))(v25, v67);
  swift_getObjectType();
  sub_10004B340();

  v52 = objc_allocWithZone(UINavigationController);
  v68 = v51;
  v53 = [v52 initWithRootViewController:v51];
  v54 = v73[4];
  sub_1000032DC(v73, v73[3]);
  v55 = v70;
  v56 = v69;
  sub_10004BD00();
  if ((*(v44 + 48))(v55, 1, v56) == 1)
  {
    sub_10000A138(v55, &qword_1000683A8, &qword_100053938);
  }

  else
  {
    v57 = v64;
    (*(v44 + 32))(v64, v55, v56);
    sub_10004C950();
    (*(v44 + 8))(v57, v56);
  }

  v58 = [v53 presentationController];
  if (v58)
  {
    v59 = v58;
    sub_10004B330();
  }

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v61 = Strong;
    [Strong presentViewController:v53 animated:1 completion:0];
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v78 + 8))(v50, v79);
  (*(v76 + 8))(v71, v77);
  return (*(v74 + 8))(v72, v75);
}

uint64_t sub_10002C444(void *a1, char *a2, void *a3, char *a4, void *a5)
{
  v66 = a4;
  v67 = a5;
  v63 = a3;
  v69 = a2;
  v6 = sub_100003150(&qword_1000683A8, &qword_100053938);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v65 = &v60 - v9;
  v64 = sub_10004A720();
  v62 = *(v64 - 8);
  v10 = *(v62 + 64);
  __chkstk_darwin(v64, v11);
  v61 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003150(&qword_100067888, &unk_100053940);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v60 - v16;
  v18 = sub_100003150(&qword_100067890, &qword_100052C70);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v22 = &v60 - v21;
  v23 = sub_10004AC10();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10004C0B0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29, v32);
  v34 = &v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10004AB40();
  v36 = *(*(v35 - 8) + 64);
  v38 = __chkstk_darwin(v35, v37);
  v40 = &v60 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v41;
  v42 = *(v41 + 104);
  v70 = v43;
  v42(v40, enum case for TTRIReminderDetailStyle.assignmentPicker(_:), v38);
  v71 = v30;
  v72 = v29;
  (*(v30 + 104))(v34, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection.assignments(_:), v29);
  sub_10004AD90();
  v44 = a1;
  sub_10004AC00();
  v45 = sub_10004A5C0();
  (*(*(v45 - 8) + 56))(v22, 1, 1, v45);
  v46 = sub_10004BCD0();
  (*(*(v46 - 8) + 56))(v17, 1, 1, v46);
  v66 = v40;
  v47 = sub_10004AD80();
  sub_10000A138(v17, &qword_100067888, &unk_100053940);
  sub_10000A138(v22, &qword_100067890, &qword_100052C70);
  (*(v24 + 8))(v28, v23);
  v48 = v62;
  swift_getObjectType();
  v69 = v34;
  v49 = v64;
  sub_10004B340();

  v50 = objc_allocWithZone(UINavigationController);
  v63 = v47;
  v51 = [v50 initWithRootViewController:v47];
  v52 = v67[4];
  sub_1000032DC(v67, v67[3]);
  v53 = v65;
  sub_10004BD00();
  if ((*(v48 + 48))(v53, 1, v49) == 1)
  {
    sub_10000A138(v53, &qword_1000683A8, &qword_100053938);
  }

  else
  {
    v54 = v61;
    (*(v48 + 32))(v61, v53, v49);
    sub_10004C950();
    (*(v48 + 8))(v54, v49);
  }

  v55 = [v51 presentationController];
  if (v55)
  {
    v56 = v55;
    sub_10004B330();
  }

  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v58 = Strong;
    [Strong presentViewController:v51 animated:1 completion:0];
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v71 + 8))(v69, v72);
  return (*(v68 + 8))(v66, v70);
}

void sub_10002CAC0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(v0 + 32))
    {
      goto LABEL_4;
    }

    v2 = sub_10004A7F0();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    v5 = v8;
    v6 = sub_10004A7E0();
    v7 = *(v0 + 32);
    *(v0 + 32) = v6;

    if (*(v0 + 32))
    {
LABEL_4:

      sub_10004A7D0();
    }
  }
}

uint64_t sub_10002CB8C()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_10002CC00()
{
  v0 = sub_10004C1B0();
  sub_10000D51C(v0, qword_1000683B0);
  v1 = sub_10000D49C(v0, qword_1000683B0);
  if (qword_100066F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D49C(v0, qword_10006A2F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10002CCC8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100003150(&qword_100068428, &qword_1000539D8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v57 - v13;
  v15 = sub_10004CB10();
  v58 = *(v15 - 8);
  v59 = v15;
  v16 = *(v58 + 64);
  __chkstk_darwin(v15, v17);
  v57 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10004CB50();
  v61 = *(v19 - 8);
  v62 = v19;
  v20 = *(v61 + 64);
  v22 = (__chkstk_darwin)(v19, v21);
  v60 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v24);
  v26 = &v57 - v25;
  v27 = sub_100049F00();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27, v30);
  v32 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &v4[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionFooterCell_feedbackButtonHandler];
  *v33 = 0;
  *(v33 + 1) = 0;
  v67.receiver = v4;
  v67.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v67, "initWithFrame:", a1, a2, a3, a4);
  v65 = &_s25RemindersSharingExtension37ContentConfigurationForContentBoxViewVN_0;
  v66 = sub_10002D928();
  v35 = v34;
  sub_10004C990();
  v36 = [v35 contentView];
  _s25RemindersSharingExtension14ContentBoxViewCMa_0();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {

    if (qword_100066F30 != -1)
    {
      swift_once();
    }

    v38 = sub_10004C1B0();
    sub_10000D49C(v38, qword_1000683B0);
    v39 = sub_10004C1A0();
    v40 = sub_10004C890();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "TTRIRemindersListEditableSectionCell_collectionView: failed to create ContentBoxView", v41, 2u);
    }

    v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v36 = v37;
  }

  v42 = v37;
  v43 = v36;
  v44 = v42;
  [v44 setHorizontalAlignment:4];
  [v44 setVerticalAlignment:0];
  [v44 setPreservesSuperviewLayoutMargins:0];
  [v44 setDirectionalLayoutMargins:{8.0, 0.0, 10.0, 0.0}];
  [v44 setLayoutMarginsRelativeArrangement:1];
  [v44 setDebugBoundingBoxesEnabled:0];
  sub_10004C620();
  (*(v28 + 104))(v32, enum case for FBKSEvaluation.Action.reportConcern(_:), v27);
  sub_10004C610();
  (*(v28 + 8))(v32, v27);
  v45 = sub_10004C680();

  v46 = [objc_opt_self() systemImageNamed:v45];

  v63 = v46;
  sub_100003150(&qword_100068430, &unk_1000539E0);
  sub_10004CB70();

  v47 = v64;
  sub_10004AA60();
  sub_10004CAA0();
  (*(v58 + 104))(v57, enum case for UIButton.Configuration.Size.medium(_:), v59);
  sub_10004CAB0();
  sub_10004CB40();
  v48 = v47;
  sub_10004CB30();
  sub_10004CAE0();
  sub_10004C4F0();
  v49 = sub_10004C4E0();
  (*(*(v49 - 8) + 56))(v14, 0, 1, v49);
  sub_10004CB00();
  sub_100009FF0(0, &qword_100068438, UIButton_ptr);
  v50 = v61;
  v51 = v62;
  (*(v61 + 16))(v60, v26, v62);
  sub_100009FF0(0, &qword_100067D68, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10004CA90();
  v52 = sub_10004CB60();

  sub_100003150(&qword_1000674B0, &qword_1000528A0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100052620;
  *(v53 + 32) = v52;
  sub_100009FF0(0, &qword_1000674B8, UIView_ptr);
  v54 = v52;
  isa = sub_10004C710().super.isa;

  [v44 setArrangedSubviews:isa];

  (*(v50 + 8))(v26, v51);
  return v35;
}

uint64_t sub_10002D44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100049DB0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_100009FF0(0, &qword_1000674A8, UIFont_ptr);
  sub_10004CA00();
  sub_10002DA14();
  return sub_100049DC0();
}

void sub_10002D500()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionFooterCell_feedbackButtonHandler];
    if (v2)
    {
      v3 = *&Strong[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionFooterCell_feedbackButtonHandler + 8];
      sub_10002DA04(*&Strong[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionFooterCell_feedbackButtonHandler]);

      v2();
      sub_10002A4AC(v2);
    }

    else
    {
    }
  }
}

unint64_t sub_10002D82C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &_s25RemindersSharingExtension37ContentConfigurationForContentBoxViewVN_0;
  result = sub_10002D928();
  *(a1 + 32) = result;
  return result;
}

void (*sub_10002D860(uint64_t *a1))(uint64_t **a1)
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
  *(v2 + 24) = &_s25RemindersSharingExtension37ContentConfigurationForContentBoxViewVN_0;
  *(v2 + 32) = sub_10002D928();
  return sub_100016960;
}

uint64_t sub_10002D8D8(uint64_t a1)
{
  sub_10000DAC4(a1, v2);
  sub_100003150(&qword_100067C68, &unk_100052F40);
  return swift_dynamicCast();
}

unint64_t sub_10002D928()
{
  result = qword_100068420;
  if (!qword_100068420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068420);
  }

  return result;
}

uint64_t sub_10002D97C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10002D9BC()
{
  _s25RemindersSharingExtension14ContentBoxViewCMa_0();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10002DA78();
  return v0;
}

uint64_t sub_10002DA04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10002DA14()
{
  result = qword_100068440;
  if (!qword_100068440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068440);
  }

  return result;
}

unint64_t sub_10002DA78()
{
  result = qword_100068448;
  if (!qword_100068448)
  {
    _s25RemindersSharingExtension14ContentBoxViewCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068448);
  }

  return result;
}

char *sub_10002DAD0(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = *(a2 + 3);
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1);
    v8 = a2[6];
    *(v3 + 5) = a2[5];
    *(v3 + 6) = v8;
    v9 = a3[7];
    v10 = sub_10004B830();
    v11 = *(*(v10 - 8) + 16);

    v11(&v3[v9], a2 + v9, v10);
    v12 = a3[9];
    v3[a3[8]] = *(a2 + a3[8]);
    v3[v12] = *(a2 + v12);
    v3[a3[10]] = *(a2 + a3[10]);
  }

  return v3;
}

uint64_t sub_10002DC1C(uint64_t *a1, uint64_t a2)
{
  sub_10000343C(a1);
  v4 = a1[5];

  v5 = a1[6];

  v6 = *(a2 + 28);
  v7 = sub_10004B830();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

uint64_t sub_10002DC9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  (**(v6 - 8))();
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  v8 = a3[7];
  v9 = sub_10004B830();
  v10 = *(*(v9 - 8) + 16);

  v10(a1 + v8, a2 + v8, v9);
  v11 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v11) = *(a2 + v11);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t *sub_10002DD98(uint64_t *a1, uint64_t *a2, int *a3)
{
  sub_10002DE64(a1, a2);
  v6 = a1[5];
  a1[5] = a2[5];

  v7 = a1[6];
  a1[6] = a2[6];

  v8 = a3[7];
  v9 = sub_10004B830();
  (*(*(v9 - 8) + 24))(a1 + v8, a2 + v8, v9);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t *sub_10002DE64(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_10002E080(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v7 = a3[7];
  v8 = sub_10004B830();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  v9 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v9) = *(a2 + v9);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t sub_10002E12C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_10000343C(a1);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 40);
  v8 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  v9 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v10 = a3[7];
  v11 = sub_10004B830();
  (*(*(v11 - 8) + 40))(a1 + v10, a2 + v10, v11);
  v12 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v12) = *(a2 + v12);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t sub_10002E200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10004B830();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002E2C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10004B830();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TTRISECreateRemindersPresentationTree()
{
  result = qword_1000684C0;
  if (!qword_1000684C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E3B0()
{
  result = sub_10004B830();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_10002E4B8()
{
  v61 = sub_10004ACE0();
  v52 = *(v61 - 8);
  v1 = *(v52 + 64);
  __chkstk_darwin(v61, v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003150(&qword_100067630, &qword_100052960);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v49 - v12;
  v14 = sub_10004AD30();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v49 - v23;
  __chkstk_darwin(v22, v25);
  v27 = &v49 - v26;
  v28 = *(v0 + 48);
  sub_10004AFC0();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000A138(v13, &qword_100067630, &qword_100052960);
    return 0;
  }

  v58 = *(v15 + 32);
  v59 = v15 + 32;
  v58(v27, v13, v14);
  v29 = sub_10004AF90();
  v31 = v30;
  swift_getObjectType();
  v62 = v29;
  v32 = *(v15 + 16);
  v50 = v27;
  v32(v10, v27, v14);
  v51 = v15;
  (*(v15 + 56))(v10, 0, 1, v14);
  v33 = *(v31 + 8);
  v34 = sub_10004AC30();
  v35 = v10;
  v36 = v34;
  v38 = v37;
  v57 = v39;
  v60 = v40;
  sub_10000A138(v35, &qword_100067630, &qword_100052960);
  swift_unknownObjectRelease();
  if (v36 == v38)
  {
LABEL_4:

    (*(v51 + 8))(v50, v14);
    return 0;
  }

  if (v38 >= v36)
  {
    v42 = (v52 + 88);
    v56 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
    v55 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
    v54 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
    v53 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
    v43 = (v51 + 8);
    v44 = (v52 + 8);
    while (v38 != v36)
    {
      v62 = v36;
      v57(&v62);
      v58(v20, v24, v14);
      sub_10004AD10();
      v45 = v61;
      v46 = (*v42)(v4, v61);
      if (v46 == v56)
      {
        goto LABEL_9;
      }

      if (v46 == v55)
      {

        v47 = v45;
        v48 = *v43;
        (*v43)(v20, v14);
        (*v44)(v4, v47);
        v48(v50, v14);
        return 1;
      }

      if (v46 == v54)
      {
LABEL_9:
        (*v43)(v20, v14);
        (*v44)(v4, v45);
      }

      else
      {
        if (v46 != v53)
        {
          goto LABEL_20;
        }

        (*v43)(v20, v14);
      }

      if (v38 == ++v36)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  result = sub_10004CDC0();
  __break(1u);
  return result;
}

uint64_t sub_10002E9A8@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_10004ACD0();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004AD30();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003150(&qword_100068020, &qword_100053B30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = &v36 - v15;
  v17 = sub_100003150(&qword_100068518, &unk_100053B38);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17, v19);
  v21 = &v36 - v20;
  v22 = v1[4];
  sub_1000032DC(v1, v1[3]);
  sub_10004AC20();
  v23 = sub_10004A350();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v16, 1, v23) == 1)
  {
    sub_10000A138(v16, &qword_100068020, &qword_100053B30);
    v25 = sub_10004A330();
    v26 = 1;
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
    goto LABEL_3;
  }

  sub_10004A340();
  (*(v24 + 8))(v16, v23);
  v28 = sub_10004A330();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v21, 0, 1, v28);
  v30 = (*(v29 + 88))(v21, v28);
  if (v30 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestedReminder(_:))
  {
    (*(v29 + 96))(v21, v28);
    v31 = v38;
    (*(v38 + 32))(v6, v21, v2);
    v27 = v39;
    sub_100030DF0(v6, v39);
    (*(v31 + 8))(v6, v2);
    v26 = 0;
    goto LABEL_12;
  }

  if (v30 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.remindersListItem(_:))
  {
    (*(v29 + 96))(v21, v28);
    v33 = v36;
    v32 = v37;
    (*(v36 + 32))(v11, v21, v37);
    v27 = v39;
    sub_10002FD0C(v11, v39);
    (*(v33 + 8))(v11, v32);
    v26 = 0;
    goto LABEL_12;
  }

  v26 = 1;
  if (v30 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.listPicker(_:))
  {
LABEL_3:
    v27 = v39;
LABEL_12:
    v34 = sub_10004BBD0();
    return (*(*(v34 - 8) + 56))(v27, v26, 1, v34);
  }

  v27 = v39;
  if (v30 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionHeader(_:) || v30 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionLoading(_:) || v30 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.unknown(_:))
  {
    goto LABEL_12;
  }

  result = sub_10004CDC0();
  __break(1u);
  return result;
}

uint64_t sub_10002EEB8()
{
  v0 = sub_10004C1B0();
  sub_10000D51C(v0, qword_100068450);
  v1 = sub_10000D49C(v0, qword_100068450);
  if (qword_100066F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D49C(v0, qword_10006A2F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10002EF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a3;
  v119 = a2;
  v106 = a4;
  v5 = sub_100003150(&qword_100068570, &qword_100053B88);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v118 = &v100 - v8;
  v9 = sub_100003150(&qword_100068578, &qword_100053B90);
  v10 = *(v9 - 8);
  v110 = v9;
  v111 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v107 = &v100 - v13;
  v105 = sub_10004B5C0();
  v14 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105, v15);
  v104 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003150(&qword_100067630, &qword_100052960);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v115 = &v100 - v20;
  v21 = sub_10004AD30();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  v116 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v117 = &v100 - v28;
  __chkstk_darwin(v29, v30);
  v32 = &v100 - v31;
  v33 = sub_100003150(&qword_100068020, &qword_100053B30);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8, v35);
  v37 = &v100 - v36;
  v38 = sub_10004A350();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38, v41);
  v103 = &v100 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43, v44);
  v47 = &v100 - v46;
  v48 = v22;
  v51 = *(v22 + 16);
  v49 = v22 + 16;
  v50 = v51;
  (v51)(v32, a1, v21, v45);
  v52 = v39;
  sub_10004A300();
  v53 = (*(v39 + 48))(v37, 1, v38);
  v109 = v21;
  if (v53 == 1)
  {
    v54 = v48;
    sub_10000A138(v37, &qword_100068020, &qword_100053B30);
    if (qword_100066F38 != -1)
    {
      swift_once();
    }

    v55 = sub_10004C1B0();
    sub_10000D49C(v55, qword_100068450);
    v56 = v116;
    v57 = v109;
    v50(v116, a1, v109);
    v58 = sub_10004C1A0();
    v59 = sub_10004C890();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v110;
    if (v60)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v120 = v63;
      *v62 = 136315138;
      sub_100032FC8(&qword_100068588, &type metadata accessor for TTRRemindersListViewModel.Item);
      v64 = sub_10004A7A0();
      v66 = v65;
      (*(v54 + 8))(v56, v57);
      v67 = sub_100015238(v64, v66, &v120);

      *(v62 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v58, v59, "TTRSECreateRemindersViewModel: unexpected item type in remindersListTree {item: %s}", v62, 0xCu);
      sub_10000343C(v63);
    }

    else
    {

      (*(v54 + 8))(v56, v57);
    }

    return (*(v111 + 56))(v106, 1, 1, v61);
  }

  else
  {
    v68 = *(v39 + 32);
    v116 = v47;
    v102 = v38;
    v68(v47, v37, v38);
    v69 = v119;
    swift_getObjectType();
    v120 = v69;
    v70 = v115;
    v50(v115, a1, v21);
    v71 = v48;
    (*(v48 + 56))(v70, 0, 1, v21);
    v72 = *(v108 + 8);
    v73 = sub_10004AC50();
    sub_10000A138(v70, &qword_100067630, &qword_100052960);
    v74 = *(v73 + 16);
    if (v74)
    {
      v75 = v49;
      v76 = v50;
      v100 = v73;
      v101 = v52;
      v77 = v73 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v78 = *(v71 + 72);
      v114 = (v71 + 8);
      v115 = v78;
      v79 = v110;
      v112 = (v111 + 32);
      v113 = (v111 + 48);
      v80 = _swiftEmptyArrayStorage;
      v82 = v108;
      v81 = v109;
      do
      {
        v84 = v117;
        v85 = v75;
        v86 = v76;
        v76(v117, v77, v81);
        v87 = v118;
        sub_10002EF80(v84, v119, v82);
        (*v114)(v84, v81);
        v88 = v79;
        if ((*v113)(v87, 1, v79) == 1)
        {
          sub_10000A138(v87, &qword_100068570, &qword_100053B88);
          v83 = v116;
        }

        else
        {
          v89 = *v112;
          v90 = v107;
          (*v112)(v107, v87, v88);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_100031740(0, v80[2] + 1, 1, v80);
          }

          v83 = v116;
          v92 = v80[2];
          v91 = v80[3];
          if (v92 >= v91 >> 1)
          {
            v80 = sub_100031740(v91 > 1, v92 + 1, 1, v80);
          }

          v80[2] = v92 + 1;
          v93 = v90;
          v79 = v110;
          (v89)(v80 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v92, v93);
          v82 = v108;
          v81 = v109;
        }

        v77 += v115;
        --v74;
        v75 = v85;
        v76 = v86;
      }

      while (v74);

      v94 = v106;
      v95 = v79;
      v52 = v101;
    }

    else
    {

      v94 = v106;
      v83 = v116;
      v95 = v110;
    }

    v97 = *(v52 + 16);
    v98 = v52;
    v99 = v102;
    v97(v103, v83, v102);
    sub_10004B1A0();
    sub_100032FC8(&qword_100068510, &type metadata accessor for TTRSECreateRemindersViewModel.Item);
    sub_10004ABA0();
    (*(v98 + 8))(v83, v99);
    return (*(v111 + 56))(v94, 0, 1, v95);
  }
}

uint64_t sub_10002F8C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10004B400();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  __chkstk_darwin(v2, v4);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B480();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10004B590();
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v39, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004B650();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v18 = sub_100003150(&qword_100067FA0, &qword_100053B50);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v26 = &v37 - v25;
  sub_10004AFF0();
  v27 = sub_10004BD90();
  v28 = sub_10004B4E0();
  v45 = v27;
  v46 = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v44 = v28;
  v38 = sub_10004AFD0();
  v29 = sub_100003150(&qword_100068538, &qword_100053B60);
  v30 = sub_10004AA70();
  a1[3] = v29;
  a1[4] = sub_100031380();
  *a1 = v30;
  v31 = sub_10004AD40();
  v32 = *(*(v31 - 8) + 56);
  v32(v26, 1, 1, v31);
  v32(v22, 1, 1, v31);
  (*(v10 + 104))(v14, enum case for TTRIRemindersListCellInfoButtonState.hidden(_:), v39);
  sub_100032B88(_swiftEmptyArrayStorage);
  sub_10004B630();
  (*(v42 + 104))(v41, enum case for TTRIRemindersListCellQuickBarState.hidden(_:), v43);
  sub_100032DA8(_swiftEmptyArrayStorage);
  sub_10004B460();
  v33 = type metadata accessor for TTRISECreateRemindersPresentationTree();
  v34 = a1 + v33[7];
  result = sub_10004B810();
  v36 = v38;
  a1[5] = &_swiftEmptySetSingleton;
  a1[6] = v36;
  *(a1 + v33[8]) = 0;
  *(a1 + v33[9]) = 0;
  *(a1 + v33[10]) = 1;
  return result;
}

uint64_t sub_10002FCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + *(a3 + 32)) == *(a2 + *(a3 + 32)))
  {
    return (*(a1 + *(a3 + 36)) ^ *(a2 + *(a3 + 36))) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10002FD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v158 = a2;
  v3 = sub_100003150(&qword_100067630, &qword_100052960);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v168 = &v135 - v6;
  v161 = sub_100003150(&qword_100068520, &qword_100053B48);
  v7 = *(*(v161 - 8) + 64);
  v9 = __chkstk_darwin(v161, v8);
  v154 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v143 = &v135 - v12;
  v13 = sub_100003150(&qword_100067FA0, &qword_100053B50);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v137 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v145 = &v135 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v147 = &v135 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v136 = &v135 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v159 = &v135 - v29;
  __chkstk_darwin(v28, v30);
  v160 = &v135 - v31;
  v142 = sub_10004B480();
  v141 = *(v142 - 8);
  v32 = *(v141 + 8);
  __chkstk_darwin(v142, v33);
  v35 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10004B400();
  v155 = *(v36 - 8);
  v156 = v36;
  v37 = *(v155 + 64);
  v39 = __chkstk_darwin(v36, v38);
  v152 = &v135 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v41);
  v43 = &v135 - v42;
  v140 = sub_10004B650();
  v44 = *(v140 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v140, v46);
  v48 = &v135 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10004B590();
  v150 = *(v151 - 8);
  v49 = *(v150 + 64);
  v51 = __chkstk_darwin(v151, v50);
  v149 = &v135 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51, v53);
  v167 = &v135 - v54;
  v55 = sub_100003150(&qword_100068528, &qword_100053B58);
  v56 = *(*(v55 - 8) + 64);
  v58 = __chkstk_darwin(v55 - 8, v57);
  v165 = &v135 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58, v60);
  v172 = &v135 - v61;
  v166 = sub_10004B440();
  v148 = *(v166 - 8);
  v62 = *(v148 + 64);
  v64 = __chkstk_darwin(v166, v63);
  v162 = &v135 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64, v66);
  v68 = &v135 - v67;
  v69 = sub_10004B830();
  v70 = *(v69 - 8);
  v71 = *(v70 + 64);
  __chkstk_darwin(v69, v72);
  v74 = &v135 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_10004AD40();
  v171 = *(v163 - 8);
  v75 = *(v171 + 64);
  v77 = __chkstk_darwin(v163, v76);
  v169 = &v135 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77, v79);
  v170 = &v135 - v80;
  sub_10004ACF0();
  v81 = *(type metadata accessor for TTRISECreateRemindersPresentationTree() + 28);
  v144 = v70;
  v82 = *(v70 + 16);
  v83 = v153;
  v173 = v74;
  v146 = v69;
  v82(v74, &v153[v81], v69);
  v164 = v68;
  sub_10004B430();
  v84 = *(v83 + 6);
  v85 = sub_10004AFB0();
  v157 = a1;
  if (v85)
  {
    v86 = sub_10004AFA0();
    v87 = sub_10004BB90();
    v88 = *(v87 - 8);
    v89 = (v88 + 56);
    if (v86 < 1)
    {
      v90 = &enum case for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel.topLevelWithoutSubtasks(_:);
    }

    else
    {
      v90 = &enum case for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel.topLevelWithSubtasks(_:);
    }

    v96 = v172;
    (*(v88 + 104))(v172, *v90, v87);
    (*v89)(v96, 0, 1, v87);
  }

  else if (sub_10004AFE0())
  {
    v91 = enum case for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel.subtask(_:);
    v92 = sub_10004BB90();
    v93 = *(v92 - 8);
    v94 = v172;
    (*(v93 + 104))(v172, v91, v92);
    (*(v93 + 56))(v94, 0, 1, v92);
  }

  else
  {
    v95 = sub_10004BB90();
    (*(*(v95 - 8) + 56))(v172, 1, 1, v95);
  }

  v98 = v159;
  v97 = v160;
  sub_10004B7D0();
  v99 = v170;
  sub_10004B640();
  (*(v44 + 8))(v48, v140);
  sub_10004B7E0();
  v153 = v43;
  sub_10004B470();
  (*(v141 + 1))(v35, v142);
  sub_10004B7F0();
  v100 = v171;
  v101 = *(v171 + 16);
  v102 = v163;
  v140 = v171 + 16;
  v139 = v101;
  v101(v98, v99, v163);
  v138 = *(v100 + 56);
  v138(v98, 0, 1, v102);
  v103 = *(v161 + 48);
  v104 = v143;
  sub_10000A198(v97, v143, &qword_100067FA0, &qword_100053B50);
  sub_10000A198(v98, v104 + v103, &qword_100067FA0, &qword_100053B50);
  v105 = *(v100 + 48);
  v106 = v105(v104, 1, v102);
  v141 = v105;
  if (v106 == 1)
  {
    sub_10000A138(v98, &qword_100067FA0, &qword_100053B50);
    sub_10000A138(v97, &qword_100067FA0, &qword_100053B50);
    if (v105(v104 + v103, 1, v102) == 1)
    {
      sub_10000A138(v104, &qword_100067FA0, &qword_100053B50);
      LODWORD(v142) = 1;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v107 = v136;
  sub_10000A198(v104, v136, &qword_100067FA0, &qword_100053B50);
  if (v105(v104 + v103, 1, v102) == 1)
  {
    sub_10000A138(v159, &qword_100067FA0, &qword_100053B50);
    sub_10000A138(v160, &qword_100067FA0, &qword_100053B50);
    (*(v171 + 8))(v107, v102);
LABEL_14:
    sub_10000A138(v104, &qword_100068520, &qword_100053B48);
    LODWORD(v142) = 0;
    goto LABEL_16;
  }

  v108 = v171;
  v109 = v104 + v103;
  v110 = v104;
  v111 = v169;
  (*(v171 + 32))(v169, v109, v102);
  sub_100032FC8(&qword_100068530, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  LODWORD(v142) = sub_10004C670();
  v112 = *(v108 + 8);
  v112(v111, v102);
  sub_10000A138(v159, &qword_100067FA0, &qword_100053B50);
  sub_10000A138(v160, &qword_100067FA0, &qword_100053B50);
  v112(v107, v102);
  sub_10000A138(v110, &qword_100067FA0, &qword_100053B50);
LABEL_16:
  v113 = v147;
  sub_10004B800();
  v114 = v145;
  v139(v145, v170, v102);
  v138(v114, 0, 1, v102);
  v115 = *(v161 + 48);
  v116 = v154;
  sub_10000A198(v113, v154, &qword_100067FA0, &qword_100053B50);
  sub_10000A198(v114, v116 + v115, &qword_100067FA0, &qword_100053B50);
  v117 = v141;
  if (v141(v116, 1, v102) != 1)
  {
    v118 = v137;
    sub_10000A198(v116, v137, &qword_100067FA0, &qword_100053B50);
    if (v117(v116 + v115, 1, v102) != 1)
    {
      v119 = v171;
      v120 = v116 + v115;
      v121 = v169;
      (*(v171 + 32))(v169, v120, v102);
      sub_100032FC8(&qword_100068530, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      LODWORD(v161) = sub_10004C670();
      v122 = *(v119 + 8);
      v122(v121, v102);
      sub_10000A138(v114, &qword_100067FA0, &qword_100053B50);
      sub_10000A138(v113, &qword_100067FA0, &qword_100053B50);
      v122(v118, v102);
      sub_10000A138(v116, &qword_100067FA0, &qword_100053B50);
      goto LABEL_23;
    }

    sub_10000A138(v114, &qword_100067FA0, &qword_100053B50);
    sub_10000A138(v113, &qword_100067FA0, &qword_100053B50);
    (*(v171 + 8))(v118, v102);
    goto LABEL_21;
  }

  sub_10000A138(v114, &qword_100067FA0, &qword_100053B50);
  sub_10000A138(v113, &qword_100067FA0, &qword_100053B50);
  if (v117(v116 + v115, 1, v102) != 1)
  {
LABEL_21:
    sub_10000A138(v116, &qword_100068520, &qword_100053B48);
    LODWORD(v161) = 0;
    goto LABEL_23;
  }

  sub_10000A138(v116, &qword_100067FA0, &qword_100053B50);
  LODWORD(v161) = 1;
LABEL_23:
  v123 = v157;
  sub_10004ACF0();
  v124 = sub_10004AD30();
  v125 = *(v124 - 8);
  v126 = v168;
  (*(v125 + 16))(v168, v123, v124);
  (*(v125 + 56))(v126, 0, 1, v124);
  sub_10000A198(v172, v165, &qword_100068528, &qword_100053B58);
  v127 = v148;
  (*(v148 + 16))(v162, v164, v166);
  sub_10004B820();
  v128 = v150;
  v129 = v167;
  v130 = v151;
  (*(v150 + 16))(v149, v167, v151);
  v132 = v155;
  v131 = v156;
  v133 = v153;
  (*(v155 + 16))(v152, v153, v156);
  sub_10004BBB0();
  (*(v132 + 8))(v133, v131);
  (*(v128 + 8))(v129, v130);
  sub_10000A138(v172, &qword_100068528, &qword_100053B58);
  (*(v127 + 8))(v164, v166);
  (*(v144 + 8))(v173, v146);
  return (*(v171 + 8))(v170, v163);
}

uint64_t sub_100030DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v60 = a2;
  v2 = sub_10004B400();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  __chkstk_darwin(v2, v4);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B590();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  __chkstk_darwin(v6, v8);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003150(&qword_100068528, &qword_100053B58);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v52 = &v50 - v13;
  v14 = sub_100003150(&qword_100067630, &qword_100052960);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v61 = &v50 - v17;
  v18 = sub_10004AD40();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v50 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004ACD0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10004AD30();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28, v31);
  v33 = &v50 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10004B440();
  v34 = *(v51 - 8);
  v35 = *(v34 + 64);
  v37 = __chkstk_darwin(v51, v36);
  v39 = &v50 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v40);
  v42 = &v50 - v41;
  sub_10004B430();
  (*(v23 + 16))(v27, v53, v22);
  sub_10004AD00();
  sub_10004ACF0();
  v43 = v61;
  (*(v29 + 16))(v61, v33, v28);
  (*(v29 + 56))(v43, 0, 1, v28);
  v44 = enum case for TTRIRemindersListItemIntermediateViewModel.ReminderItemLevel.topLevelWithoutSubtasks(_:);
  v45 = sub_10004BB90();
  v46 = *(v45 - 8);
  v47 = v52;
  (*(v46 + 104))(v52, v44, v45);
  (*(v46 + 56))(v47, 0, 1, v45);
  v48 = v51;
  (*(v34 + 16))(v39, v42, v51);
  (*(v55 + 104))(v54, enum case for TTRIRemindersListCellInfoButtonState.hidden(_:), v56);
  (*(v58 + 104))(v57, enum case for TTRIRemindersListCellQuickBarState.hidden(_:), v59);
  sub_10004BBB0();
  (*(v29 + 8))(v33, v28);
  return (*(v34 + 8))(v42, v48);
}

unint64_t sub_100031380()
{
  result = qword_100068540;
  if (!qword_100068540)
  {
    sub_100003198(&qword_100068538, &qword_100053B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068540);
  }

  return result;
}

unint64_t sub_1000313E4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10004AD40();
  sub_100032FC8(&qword_100068558, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  v5 = sub_10004C650();

  return sub_10003147C(a1, v5);
}

unint64_t sub_10003147C(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_10004AD40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v11 = -1 << *(v2 + 32);
  v12 = a2 & ~v11;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    do
    {
      v14(v10, *(v23 + 48) + v17 * v12, v4, v8);
      sub_100032FC8(&qword_100068530, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v18 = sub_10004C670();
      (*(v15 - 8))(v10, v4);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v21 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

char *sub_10003163C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003150(&qword_100068590, &qword_100053BA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

size_t sub_100031740(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003150(&qword_100068580, &qword_100053B98);
  v10 = *(sub_100003150(&qword_100068578, &qword_100053B90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100003150(&qword_100068578, &qword_100053B90) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100031930(char *a1, int64_t a2, char a3)
{
  result = sub_100031990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100031950(void *a1, int64_t a2, char a3)
{
  result = sub_100031A9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100031970(size_t a1, int64_t a2, char a3)
{
  result = sub_100031BD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100031990(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003150(&unk_100068C30, &qword_100053BB8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100031A9C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003150(&qword_100068598, &qword_100053BA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003150(&qword_1000685A0, &qword_100053BB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100031BD0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003150(&qword_100068580, &qword_100053B98);
  v10 = *(sub_100003150(&qword_100068578, &qword_100053B90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100003150(&qword_100068578, &qword_100053B90) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100031DC0(uint64_t a1, uint64_t a2)
{
  v122 = a2;
  v139 = a1;
  v2 = sub_100003150(&qword_100068570, &qword_100053B88);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v133 = v114 - v5;
  v6 = sub_100003150(&qword_100067630, &qword_100052960);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v135 = v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v138 = (v114 - v12);
  v119 = sub_10004AD30();
  v123 = *(v119 - 8);
  v13 = *(v123 + 64);
  __chkstk_darwin(v119, v14);
  v141 = v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v118 = v114 - v18;
  v19 = sub_10004B5C0();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19, v21);
  v146 = v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_10004A350();
  v23 = *(v148 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v148, v25);
  v147 = v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v28);
  v30 = v114 - v29;
  v31 = sub_100003150(&qword_100068578, &qword_100053B90);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31, v34);
  v115 = v114 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v37);
  v117 = v114 - v38;
  __chkstk_darwin(v39, v40);
  v116 = v114 - v41;
  __chkstk_darwin(v42, v43);
  v140 = v114 - v44;
  __chkstk_darwin(v45, v46);
  v131 = v114 - v47;
  __chkstk_darwin(v48, v49);
  v130 = v114 - v50;
  v51 = enum case for TTRSECreateRemindersViewModel.SectionID.listPicker(_:);
  v128 = sub_10004A390();
  v52 = *(v128 - 8);
  v127 = *(v52 + 104);
  v126 = v52 + 104;
  v145 = v30;
  v127(v30, v51, v128);
  v125 = enum case for TTRSECreateRemindersViewModel.Item.section(_:);
  v144 = v23;
  v53 = *(v23 + 104);
  v54 = v148;
  v53(v30);
  v124 = v53;
  v55 = sub_100003150(&qword_100068580, &qword_100053B98);
  v56 = *(v32 + 72);
  v129 = v32;
  v57 = *(v32 + 80);
  v58 = (v57 + 32) & ~v57;
  v150 = v56;
  v120 = v57;
  v121 = v55;
  *(swift_allocObject() + 16) = xmmword_1000528D0;
  (v53)(v147, enum case for TTRSECreateRemindersViewModel.Item.listPicker(_:), v54);
  sub_10004B1A0();
  v59 = sub_100032FC8(&qword_100068510, &type metadata accessor for TTRSECreateRemindersViewModel.Item);
  v149 = v58;
  v60 = v119;
  sub_10004ABA0();
  v61 = v19;
  sub_10004B1A0();
  v62 = v145;
  v63 = v148;
  sub_10004ABA0();
  v127(v62, enum case for TTRSECreateRemindersViewModel.SectionID.reminders(_:), v128);
  v114[1] = v23 + 104;
  (v124)(v62, v125, v63);
  sub_10004B1A0();
  v64 = v123;
  v142 = v59;
  v143 = v61;
  sub_10004ABA0();
  v65 = v138;
  sub_10004AFC0();
  if ((*(v64 + 48))(v65, 1, v60) == 1)
  {
    sub_10000A138(v65, &qword_100067630, &qword_100052960);
    v66 = v122;
    v67 = v129;
  }

  else
  {
    v68 = v118;
    (*(v64 + 32))(v118, v65, v60);
    v69 = sub_10004AF90();
    v71 = v70;
    swift_getObjectType();
    v151 = v69;
    v72 = *(v64 + 16);
    v73 = v135;
    v138 = (v64 + 16);
    v136 = v72;
    v72(v135, v68, v60);
    (*(v64 + 56))(v73, 0, 1, v60);
    v139 = v71;
    v74 = *(v71 + 8);
    v75 = sub_10004AC50();
    sub_10000A138(v73, &qword_100067630, &qword_100052960);
    v76 = *(v75 + 16);
    if (v76)
    {
      v77 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v114[0] = v75;
      v78 = v75 + v77;
      v135 = *(v64 + 72);
      v79 = (v64 + 8);
      v80 = (v129 + 48);
      v134 = (v129 + 32);
      v81 = _swiftEmptyArrayStorage;
      v82 = v133;
      v132 = v69;
      do
      {
        v83 = v141;
        v136(v141, v78, v60);
        sub_10002EF80(v83, v69, v139, v82);
        (*v79)(v83, v60);
        if ((*v80)(v82, 1, v31) == 1)
        {
          sub_10000A138(v82, &qword_100068570, &qword_100053B88);
        }

        else
        {
          v84 = v60;
          v85 = *v134;
          (*v134)(v140, v82, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_100031740(0, *(v81 + 2) + 1, 1, v81);
          }

          v87 = *(v81 + 2);
          v86 = *(v81 + 3);
          if (v87 >= v86 >> 1)
          {
            v81 = sub_100031740(v86 > 1, v87 + 1, 1, v81);
          }

          *(v81 + 2) = v87 + 1;
          v85(&v81[v149 + v87 * v150], v140, v31);
          v60 = v84;
          v69 = v132;
          v82 = v133;
        }

        v78 += v135;
        --v76;
      }

      while (v76);

      v67 = v129;
      v64 = v123;
      v68 = v118;
    }

    else
    {

      v67 = v129;
    }

    sub_10004ABB0();
    swift_unknownObjectRelease();
    (*(v64 + 8))(v68, v60);
    v66 = v122;
  }

  v88 = v149;
  v89 = v150;
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_100052630;
  v91 = v90 + v88;
  v92 = *(v67 + 16);
  (v92)(v91, v130, v31);
  (v92)(v91 + v89, v131, v31);
  v93 = *(v66 + 16);
  if (v93)
  {
    v134 = v92;
    v135 = v67 + 16;
    v136 = v90;
    v151 = _swiftEmptyArrayStorage;
    sub_100031970(0, v93, 0);
    v94 = v151;
    v95 = *(v144 + 16);
    v96 = v66 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    v139 = *(v144 + 72);
    v140 = v95;
    v144 += 16;
    v138 = (v144 - 8);
    v141 = (v67 + 32);
    v97 = v115;
    v137 = v31;
    do
    {
      v98 = v145;
      v99 = v148;
      v100 = v140;
      (v140)(v145, v96, v148);
      (v100)(v147, v98, v99);
      sub_10004B1A0();
      sub_10004ABA0();
      (*v138)(v98, v99);
      v151 = v94;
      v102 = v94[2];
      v101 = v94[3];
      if (v102 >= v101 >> 1)
      {
        sub_100031970(v101 > 1, v102 + 1, 1);
        v94 = v151;
      }

      v94[2] = v102 + 1;
      v103 = v94 + v149 + v102 * v150;
      v104 = *v141;
      v31 = v137;
      (*v141)(v103, v97, v137);
      v96 += v139;
      --v93;
    }

    while (v93);
    v105 = v145;
    v127(v145, enum case for TTRSECreateRemindersViewModel.SectionID.suggestions(_:), v128);
    (v124)(v105, v125, v148);
    sub_10004B1A0();
    v106 = v116;
    sub_10004ABA0();
    v107 = v117;
    (v134)(v117, v106, v31);
    v108 = v136;
    v110 = *(v136 + 2);
    v109 = *(v136 + 3);
    if (v110 >= v109 >> 1)
    {
      v108 = sub_100031740(v109 > 1, v110 + 1, 1, v136);
    }

    v67 = v129;
    (*(v129 + 8))(v106, v31);
    *(v108 + 2) = v110 + 1;
    v104(&v108[v149 + v110 * v150], v107, v31);
  }

  sub_100003150(&qword_100068538, &qword_100053B60);
  v111 = sub_10004AA70();
  v112 = *(v67 + 8);
  v112(v131, v31);
  v112(v130, v31);
  return v111;
}

unint64_t sub_100032B88(uint64_t a1)
{
  v2 = sub_100003150(&qword_100068560, &qword_100053B78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100003150(&qword_100068568, &qword_100053B80);
    v9 = sub_10004CD80();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_10000A198(v11, v7, &qword_100068560, &qword_100053B78);
      result = sub_1000313E4(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_10004AD40();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7];
      v19 = sub_10004B590();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v15, &v7[v10], v19);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_100032DA8(uint64_t a1)
{
  v2 = sub_100003150(&qword_100068548, &qword_100053B68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100003150(&qword_100068550, &qword_100053B70);
    v9 = sub_10004CD80();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_10000A198(v11, v7, &qword_100068548, &qword_100053B68);
      result = sub_1000313E4(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_10004AD40();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7];
      v19 = sub_10004B400();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v15, &v7[v10], v19);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

uint64_t sub_100032FC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100033010(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100003150(&qword_100067D58, &unk_1000530C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v115 = &v95 - v13;
  v109 = sub_10004C2B0();
  v108 = *(v109 - 8);
  v14 = *(v108 + 64);
  __chkstk_darwin(v109, v15);
  v111 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004C250();
  v112 = *(v17 - 8);
  v113 = v17;
  v18 = *(v112 + 64);
  __chkstk_darwin(v17, v19);
  v110 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10004CAC0();
  v106 = *(v107 - 8);
  v21 = *(v106 + 64);
  __chkstk_darwin(v107, v22);
  v105 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100003150(&qword_100068428, &qword_1000539D8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8, v26);
  v103 = &v95 - v27;
  v102 = sub_10004CB10();
  v101 = *(v102 - 1);
  v28 = *(v101 + 64);
  __chkstk_darwin(v102, v29);
  v100 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10004CB50();
  v116 = *(v118 - 8);
  v31 = *(v116 + 64);
  __chkstk_darwin(v118, v32);
  v104 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v35);
  v114 = &v95 - v36;
  v37 = sub_10004C320();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37, v40);
  v42 = &v95 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10004C3D0();
  v117 = *(v43 - 8);
  v44 = *(v117 + 64);
  __chkstk_darwin(v43, v45);
  v47 = &v95 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = &v4[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionHeaderCell_includeAllAction];
  *v48 = 0;
  *(v48 + 1) = 0;
  v120.receiver = v4;
  v120.super_class = ObjectType;
  v99 = objc_msgSendSuper2(&v120, "initWithFrame:", a1, a2, a3, a4);
  sub_10004C390();
  v49 = objc_opt_self();
  v50 = [v49 configurationWithTextStyle:UIFontTextStyleBody scale:3];
  v51 = [v49 configurationWithWeight:6];
  v52 = [v50 configurationByApplyingConfiguration:v51];

  v53 = [v49 configurationPreferringMulticolor];
  v54 = [v52 configurationByApplyingConfiguration:v53];

  v55 = sub_10004C680();
  v56 = [objc_opt_self() _systemImageNamed:v55];

  if (v56)
  {
    v98 = v54;
    v57 = [v56 imageWithSymbolConfiguration:v54];

    sub_10004C3B0();
    sub_10004A9E0();
    sub_10004C3A0();
    v58 = objc_opt_self();
    v59 = [v58 secondaryLabelColor];
    v60 = sub_10004C360();
    sub_10004C340();
    v60(v119, 0);
    (*(v38 + 104))(v42, enum case for UIListContentConfiguration.TextProperties.TextTransform.uppercase(_:), v37);
    v61 = sub_10004C360();
    sub_10004C350();
    v61(v119, 0);
    sub_10004C370();
    v62 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1];
    v63 = [v62 fontDescriptorWithSymbolicTraits:2];

    if (v63 && (v64 = [v63 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded], v63, v64))
    {
      v65 = objc_opt_self();
      v97 = v64;
      v66 = [v65 fontWithDescriptor:v64 size:0.0];
    }

    else
    {
      v66 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
      v97 = 0;
    }

    v67 = v66;
    v68 = sub_10004C360();
    sub_10004C330();
    v68(v119, 0);
    v119[3] = v43;
    v119[4] = &protocol witness table for UIListContentConfiguration;
    v96 = v43;
    v69 = sub_10000B790(v119);
    (*(v117 + 16))(v69, v47, v43);
    v70 = v99;
    sub_10004C990();
    v71 = v114;
    sub_10004CB20();
    (*(v101 + 104))(v100, enum case for UIButton.Configuration.Size.medium(_:), v102);
    sub_10004CAB0();
    sub_10004AA00();
    sub_10004CB40();
    v72 = [v58 secondaryLabelColor];
    sub_10004CAF0();
    *(swift_allocObject() + 16) = v67;
    v102 = v67;
    v73 = v103;
    sub_10004C4F0();
    v74 = sub_10004C4E0();
    (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
    sub_10004CB00();
    (*(v106 + 104))(v105, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v107);
    sub_10004CAD0();
    sub_100009FF0(0, &qword_100068438, UIButton_ptr);
    v75 = v116;
    (*(v116 + 16))(v104, v71, v118);
    sub_100009FF0(0, &qword_100067D68, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10004CA90();
    v76 = sub_10004CB60();
    sub_100003150(&qword_100067D70, &unk_1000530D0);
    v77 = *(sub_10004C2D0() - 8);
    v78 = *(v77 + 72);
    v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    *(swift_allocObject() + 16) = xmmword_1000528D0;
    v80 = *(sub_100003150(&qword_1000685D8, &qword_100053BF8) + 48);
    v107 = v47;
    v81 = v111;
    v82 = &v111[v80];
    v83 = enum case for UICellAccessory.DisplayedState.always(_:);
    v84 = sub_10004C1E0();
    (*(*(v84 - 8) + 104))(v81, v83, v84);
    *v82 = sub_100005C64;
    v82[1] = 0;
    (*(v108 + 104))(v81, enum case for UICellAccessory.Placement.trailing(_:), v109);
    v85 = sub_10004C1F0();
    (*(*(v85 - 8) + 56))(v115, 1, 1, v85);
    v86 = v76;
    v87 = v110;
    sub_10004C240();
    sub_10004C1D0();
    (*(v112 + 8))(v87, v113);
    sub_10004C9A0();
    v88 = objc_opt_self();
    sub_100003150(&qword_1000674B0, &qword_1000528A0);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_100052620;
    v90 = [v70 separatorLayoutGuide];
    v91 = [v90 leadingAnchor];

    v92 = [v70 trailingAnchor];
    v93 = [v91 constraintEqualToAnchor:v92];

    *(v89 + 32) = v93;
    sub_100009FF0(0, &qword_100067D78, NSLayoutConstraint_ptr);
    isa = sub_10004C710().super.isa;

    [v88 activateConstraints:isa];

    (*(v75 + 8))(v71, v118);
    (*(v117 + 8))(v107, v96);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100033E08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100049DB0();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_10002DA14();
  v7 = a2;
  return sub_100049DC0();
}

void sub_100033EA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionHeaderCell_includeAllAction];
    if (v2)
    {
      v3 = *&Strong[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionHeaderCell_includeAllAction + 8];
      sub_10002DA04(*&Strong[OBJC_IVAR____TtC25RemindersSharingExtension41TTRISECreateRemindersSuggestionHeaderCell_includeAllAction]);

      v2();
      sub_10002A4AC(v2);
    }

    else
    {
    }
  }
}

uint64_t sub_10003401C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003405C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10003409C(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v4 = [objc_allocWithZone(CNContactStore) init];
    swift_beginAccess();
    v5 = *v2;
    *v2 = v4;
    v3 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v3;
}

uint64_t sub_100034184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003150(&unk_100067618, &qword_100052940);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_10000A198(a3, v28 - v12, &unk_100067618, &qword_100052940);
  v14 = sub_10004C790();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_10000A138(v13, &unk_100067618, &qword_100052940);
  }

  else
  {
    sub_10004C780();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_10004C750();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_10004C6A0() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      sub_100003150(&unk_100068B10, &qword_100054288);
      v24 = (v21 | v19);
      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v25 = swift_task_create();

      sub_10000A138(a3, &unk_100067618, &qword_100052940);

      return v25;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A138(a3, &unk_100067618, &qword_100052940);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  sub_100003150(&unk_100068B10, &qword_100054288);
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_100034498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003150(&unk_100067618, &qword_100052940);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_10000A198(a3, v28 - v12, &unk_100067618, &qword_100052940);
  v14 = sub_10004C790();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_10000A138(v13, &unk_100067618, &qword_100052940);
  }

  else
  {
    sub_10004C780();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_10004C750();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_10004C6A0() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_10000A138(a3, &unk_100067618, &qword_100052940);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000A138(a3, &unk_100067618, &qword_100052940);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_100034798(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10004C770();
  v3[5] = sub_10004C760();
  v5 = sub_10004C750();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100034834, v5, v4);
}

uint64_t sub_100034834()
{
  v1 = v0[4];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = async function pointer to UIViewController.present<A>(alert:actions:didPresent:animated:)[1];
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_100034938;
    v5 = v0[2];
    v6 = v0[3];

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 10, v5, v6, 0, 0, 1, &type metadata for Bool);
  }

  else
  {
    v7 = v0[5];

    v8 = v0[1];

    return v8(2);
  }
}

uint64_t sub_100034938()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  *(v1 + 81) = *(v1 + 80);
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return _swift_task_switch(sub_100034A7C, v5, v4);
}

uint64_t sub_100034A7C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 81);
  v3 = *(v0 + 8);

  return v3(v2);
}

void *sub_100034AE0(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v14 = _swiftEmptyArrayStorage;
    sub_10004CCD0();
    v9 = *(sub_10004AB10() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_10004CCB0();
      v12 = v14[2];
      sub_10004CCE0();
      sub_10004CCF0();
      sub_10004CCC0();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100034C24()
{
  v0 = sub_10004C1B0();
  sub_10000D51C(v0, qword_1000685E0);
  v1 = sub_10000D49C(v0, qword_1000685E0);
  if (qword_100066F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D49C(v0, qword_10006A2F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100034CEC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_10004BCE0();
    v3 = *(v1 + 128);

    if (v2)
    {
      sub_10004BCF0();
      sub_10004BFB0();
    }

    else
    {
      sub_10004BF90();
    }
  }

  return result;
}

uint64_t sub_100034D94()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 128);

    sub_10004BF50();
  }

  return result;
}

uint64_t sub_100034E00(uint64_t a1)
{
  v2 = sub_100003150(&qword_100067630, &qword_100052960);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v18 - v5;
  v7 = sub_100003150(&qword_100067FA0, &qword_100053B50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + 136);
    sub_10000A198(a1, v6, &qword_100067630, &qword_100052960);
    v14 = sub_10004AD30();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      sub_10000A138(v6, &qword_100067630, &qword_100052960);
      v16 = 1;
    }

    else
    {
      sub_10004ACF0();
      (*(v15 + 8))(v6, v14);
      v16 = 0;
    }

    v17 = sub_10004AD40();
    (*(*(v17 - 8) + 56))(v11, v16, 1, v17);
    sub_10004BF10();
  }

  return result;
}

uint64_t sub_10003500C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10004AE10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000351F8(&v14);
  if (v15)
  {
    sub_100003674(&v14, v16);
    sub_100003674(v16, v17);
    sub_1000032DC(v17, v17[3]);
    v8 = sub_10004A5F0();
    v10 = v9;
    sub_10000DAC4(v17, &v14);
    sub_10004ADE0();
    *a1 = v8;
    a1[1] = v10;
    v11 = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
    (*(v3 + 32))(a1 + *(v11 + 20), v7, v2);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return sub_10000343C(v17);
  }

  else
  {
    sub_10000A138(&v14, &qword_1000689F8, &qword_100054108);
    v13 = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

double sub_1000351F8@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_10004BE30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  swift_getObjectType();
  if (sub_100049F60())
  {
    swift_getObjectType();
    sub_10004A2B0();
    sub_10004BE20();
    (*(v4 + 8))(v8, v3);
    if (v15)
    {
      sub_100003674(&v14, v16);
      sub_1000032DC(v16, v16[3]);
      v11 = sub_10004A600();
      v12 = sub_10004A2C0();
      swift_unknownObjectRelease();

      sub_10000DAC4(v16, a1);
      *(a1 + 40) = v12 & 1;
      sub_10000343C(v16);
      return result;
    }

    swift_unknownObjectRelease();
    sub_10000A138(&v14, &qword_100068A00, &qword_100054110);
  }

  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1000353B4()
{
  v1 = sub_10004B0C0();
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  __chkstk_darwin(v1, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B520();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_10004B540();
  v23 = *(v25 - 8);
  v12 = *(v23 + 64);
  __chkstk_darwin(v25, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + 56);
  v17 = *(v0 + 48);
  swift_getObjectType();
  if (!sub_100049F60())
  {
    return 0;
  }

  swift_getObjectType();
  *v11 = sub_10004A2A0();
  (*(v7 + 104))(v11, enum case for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingOption.prefetched(_:), v6);
  sub_100003150(&qword_100068AE8, &qword_100054260);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000528D0;
  sub_1000351F8(v26);
  v22 = v1;
  if (v27)
  {
    sub_1000032DC(v26, v27);
    *(v18 + 32) = sub_10004A600();
    sub_10000343C(v26);
  }

  else
  {
    sub_10000A138(v26, &qword_1000689F8, &qword_100054108);
    *(v18 + 32) = 0;
  }

  v26[0] = v18;
  sub_100003150(&qword_100068AF0, &qword_100054268);
  sub_100009FF0(0, &qword_100067920, REMObjectID_ptr);
  sub_100003364(&qword_100068AF8, &qword_100068AF0, &qword_100054268);
  v20 = sub_10004C6F0();

  sub_100046E6C(v20);

  (*(v24 + 104))(v5, enum case for TTRReminderListPickerViewModel.CustomSmartListPredicate.includeAll(_:), v22);
  swift_allocObject();
  swift_weakInit();
  sub_10004B530();
  v19 = sub_10004B550();
  swift_unknownObjectRelease();
  (*(v23 + 8))(v15, v25);
  return v19;
}

uint64_t sub_1000357A8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 120);

    sub_10004A1E0();
  }

  return result;
}

uint64_t sub_100035824(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003150(&unk_100067618, &qword_100052940);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v35 - v7;
  v9 = sub_100003150(&qword_100068030, &qword_1000536A8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v35 - v12;
  v14 = sub_10004A350();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v36 = v8;
    v20 = _swiftEmptyArrayStorage;
    v42 = _swiftEmptyArrayStorage;
    v21 = *(a1 + 16);
    v37 = v2;
    if (v21)
    {
      v22 = *(v2 + 120);
      v24 = *(v17 + 16);
      v23 = v17 + 16;
      v39 = v24;
      v40 = v22;
      v25 = a1 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
      v38 = *(v23 + 56);
      v41 = v23;
      v26 = (v23 - 8);
      v24(v19, v25, v14);
      while (1)
      {
        sub_10004A0C0();
        v27 = sub_10004AD70();
        v28 = *(v27 - 8);
        if ((*(v28 + 48))(v13, 1, v27) == 1)
        {
          (*v26)(v19, v14);
          sub_10000A138(v13, &qword_100068030, &qword_1000536A8);
        }

        else
        {
          sub_10004AD60();
          (*v26)(v19, v14);
          (*(v28 + 8))(v13, v27);
          sub_10004C700();
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v29 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_10004C730();
          }

          sub_10004C740();
          v20 = v42;
        }

        v25 += v38;
        if (!--v21)
        {
          break;
        }

        v39(v19, v25, v14);
      }
    }

    v8 = v36;
    v2 = v37;
  }

  else
  {
    v20 = 0;
  }

  swift_beginAccess();
  v30 = sub_10004B280();
  swift_endAccess();
  if (!v30)
  {
  }

  v31 = sub_10004C790();
  (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
  sub_10004C770();

  v32 = sub_10004C760();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = &protocol witness table for MainActor;
  v33[4] = v2;
  v33[5] = v20;
  sub_100034498(0, 0, v8, &unk_100054240, v33);
}

uint64_t sub_100035C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_10004B0B0();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  sub_10004C770();
  v5[13] = sub_10004C760();
  v10 = sub_10004C750();
  v5[14] = v10;
  v5[15] = v9;

  return _swift_task_switch(sub_100035D14, v10, v9);
}

uint64_t sub_100035D14()
{
  v1 = *(v0[8] + 120);
  v2 = async function pointer to TTRSECreateRemindersPresenterCapability.requestSave(selectedItemIDs:)[1];
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100035DB4;
  v4 = v0[9];

  return TTRSECreateRemindersPresenterCapability.requestSave(selectedItemIDs:)(v4);
}

uint64_t sub_100035DB4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_100036048;
  }

  else
  {
    v7 = sub_100035EF0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100035EF0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];

  (*(v4 + 104))(v2, enum case for TTRReminderDetailEditingResult.performed(_:), v3);
  swift_beginAccess();
  sub_10004B270();
  swift_endAccess();
  (*(v4 + 8))(v2, v3);
  sub_10004C190();
  sub_10004C180();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = [Strong extensionContext];
    if (v7)
    {
      v8 = v7;
      [v7 completeRequestReturningItems:0 completionHandler:0];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100036048()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];

  (*(v4 + 104))(v2, enum case for TTRReminderDetailEditingResult.failed(_:), v3);
  swift_beginAccess();
  sub_10004B270();
  swift_endAccess();
  (*(v4 + 8))(v2, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = v0[17];
  if (Strong)
  {
    v8 = Strong;
    v9 = v0[17];
    swift_errorRetain();
    sub_100011DD8(v7, v8);

    swift_unknownObjectRelease();
  }

  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100036178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10004B230();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_10004B0B0();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_10004C770();
  v4[9] = sub_10004C760();
  v12 = sub_10004C750();
  v4[10] = v12;
  v4[11] = v11;

  return _swift_task_switch(sub_1000362C8, v12, v11);
}

uint64_t sub_1000362C8()
{
  (*(v0[4] + 104))(v0[5], enum case for TTRIViewControllerDismissalState.requested(_:), v0[3]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_100036388;
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[2];

  return sub_1000365DC(v2, v3);
}

uint64_t sub_100036388()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 40);
  v7 = *(*v0 + 32);
  v8 = *(*v0 + 24);
  v12 = *v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v9 = *(v1 + 88);
  v10 = *(v1 + 80);

  return _swift_task_switch(sub_100036568, v10, v9);
}

uint64_t sub_100036568()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000365DC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = *v2;
  v4 = sub_10004C050();
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = sub_10004B230();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  sub_10004C770();
  v3[18] = sub_10004C760();
  v11 = sub_10004C750();
  v3[19] = v11;
  v3[20] = v10;

  return _swift_task_switch(sub_100036758, v11, v10);
}

uint64_t sub_100036758()
{
  v32 = v0;
  v1 = v0[10];
  v0[21] = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_completionState;
  swift_beginAccess();
  LOBYTE(v1) = sub_10004B280();
  swift_endAccess();
  if (v1)
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v3 = v0[16];
    v2 = v0[17];
    v4 = v0[15];
    v5 = v0[9];
    v6 = sub_10004C1B0();
    sub_10000D49C(v6, qword_1000685E0);
    (*(v3 + 16))(v2, v5, v4);
    v7 = sub_10004C1A0();
    v8 = sub_10004C8A0();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136315138;
      sub_10004565C(&qword_100068AD8, &type metadata accessor for TTRIViewControllerDismissalState);
      v15 = sub_10004CDB0();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      v18 = sub_100015238(v15, v17, &v31);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Create Reminders cancel editing {dismissalState: %s}", v13, 0xCu);
      sub_10000343C(v14);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v27 = swift_task_alloc();
    v0[22] = v27;
    *v27 = v0;
    v27[1] = sub_100036AB0;
    v28 = v0[9];
    v29 = v0[10];
    v30 = v0[8];

    return sub_100041700(v30, v28);
  }

  else
  {
    v19 = v0[18];
    v20 = v0[8];

    v21 = enum case for TTRReminderDetailEditingResult.failed(_:);
    v22 = sub_10004B0B0();
    (*(*(v22 - 8) + 104))(v20, v21, v22);
    v23 = v0[17];
    v24 = v0[14];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_100036AB0()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return _swift_task_switch(sub_100036BD0, v4, v3);
}

uint64_t sub_100036BD0()
{
  v1 = v0[21];
  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v21 = v0[11];
  v6 = v0[10];
  v7 = v0[8];

  swift_beginAccess();
  sub_10004B270();
  swift_endAccess();
  sub_10004A660();
  v8 = sub_10004A630();
  sub_10004C080();
  sub_10004C070();
  v9 = sub_100003150(&unk_100067700, &qword_100052C90);
  v10 = (v3 + v9[12]);
  v11 = v9[16];
  v12 = (v3 + v9[20]);
  v13 = enum case for REMUserOperation.suggestedRemindersSessionCanceled(_:);
  v14 = sub_10004C040();
  (*(*(v14 - 8) + 104))(v3, v13, v14);
  *v10 = sub_10004A640();
  v10[1] = v15;
  sub_10004A650();
  *v12 = sub_10004CE80();
  v12[1] = v16;
  (*(v4 + 104))(v3, enum case for REMAnalyticsEvent.userOperation(_:), v5);
  sub_10004C060();

  (*(v4 + 8))(v3, v5);
  v17 = v0[17];
  v18 = v0[14];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100036DB8()
{
  v1 = v0;
  v2 = sub_10004A380();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004A310();
  v8 = *(v0 + 120);
  if ((sub_10004A010() & 1) != 0 && (v9 = *(v1 + 144), sub_100003150(&qword_100067688, &qword_100052990), sub_100003364(&qword_100067FB8, &qword_100067688, &qword_100052990), (sub_10004B5F0() & 1) == 0))
  {
    sub_100003150(&qword_100067FA8, &unk_100053630);
    v11 = *(v3 + 72);
    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000528D0;
    (*(v3 + 16))(v13 + v12, v7, v2);
    v16[1] = v13;
    sub_100003150(&qword_100067FB0, &unk_100053640);
    sub_100003364(&qword_100067FC0, &qword_100067FB0, &unk_100053640);
    sub_10004B610();

    v14 = *(v1 + 128);
    sub_10004BFA0();
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  (*(v3 + 8))(v7, v2);
  return v10;
}

uint64_t sub_100036FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004A350();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v5);
  v11 = (*(v6 + 88))(v10, v5);
  if (v11 == enum case for TTRSECreateRemindersViewModel.Item.section(_:))
  {
    goto LABEL_2;
  }

  if (v11 != enum case for TTRSECreateRemindersViewModel.Item.uncommittedReminder(_:) && v11 != enum case for TTRSECreateRemindersViewModel.Item.placeholderReminder(_:))
  {
    if (v11 == enum case for TTRSECreateRemindersViewModel.Item.suggestedReminder(_:))
    {
LABEL_2:
      (*(v6 + 8))(v10, v5);
LABEL_3:
      v12 = enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
      v13 = sub_10004B5E0();
      return (*(*(v13 - 8) + 104))(a2, v12, v13);
    }

    if (v11 == enum case for TTRSECreateRemindersViewModel.Item.listPicker(_:) || v11 == enum case for TTRSECreateRemindersViewModel.Item.suggestionHeader(_:) || v11 == enum case for TTRSECreateRemindersViewModel.Item.suggestionLoading(_:))
    {
      goto LABEL_3;
    }

    sub_10004CDC0();
    __break(1u);
    goto LABEL_20;
  }

  (*(v6 + 8))(v10, v5);
  v16 = *(v2 + 120);
  LOBYTE(v16) = sub_10004A140();
  v17 = sub_10004B5E0();
  v18 = *(*(v17 - 8) + 104);
  if ((v16 & 1) == 0)
  {
LABEL_20:
    v19 = &enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:);
    return v18(a2, *v19, v17);
  }

  v19 = &enum case for TTRICollectionViewCellSelectionOption.selectItem(_:);
  return v18(a2, *v19, v17);
}

uint64_t sub_10003729C(uint64_t a1, uint64_t (*a2)(_BYTE *), void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v6 = v3;
  v7 = sub_10004AD30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10004A330();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v29[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10004A340();
  v19 = (*(v14 + 88))(v18, v13);
  if (v19 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestedReminder(_:))
  {
    (*(v14 + 8))(v18, v13);
  }

  else
  {
    if (v19 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.remindersListItem(_:))
    {
      (*(v14 + 96))(v18, v13);
      (*(v8 + 32))(v12, v18, v7);
      v20 = *(v3 + 120);
      v21 = a2(v12);
      __chkstk_darwin(v21, v22);
      *&v29[-16] = v6;
      *&v29[-8] = v12;
      sub_100034AE0(a3, &v29[-32], v21);

      sub_100009FF0(0, &qword_100068AE0, UIContextualAction_ptr);
      isa = sub_10004C710().super.isa;

      v24 = [objc_opt_self() configurationWithActions:isa];

      (*(v8 + 8))(v12, v7);
      return v24;
    }

    if (v19 != enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.listPicker(_:) && v19 != enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionHeader(_:) && v19 != enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionLoading(_:) && v19 != enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.unknown(_:))
    {
      result = sub_10004CDC0();
      __break(1u);
      return result;
    }
  }

  return 0;
}

uint64_t sub_1000375B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v23[1] = a1;
  v23[2] = a2;
  v27 = a6;
  v7 = sub_10004AD30();
  v23[0] = v7;
  v8 = *(v7 - 8);
  v23[3] = *(v8 + 64);
  __chkstk_darwin(v7, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004AB10();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v16 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v16, a1, v12);
  (*(v8 + 16))(v11, v24, v7);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = (v14 + *(v8 + 80) + v18) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v13 + 32))(v20 + v18, v16, v12);
  (*(v8 + 32))(v20 + v19, v11, v23[0]);

  v21 = sub_10004AB00();

  *v27 = v21;
  return result;
}

uint64_t sub_100037814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v84 = a4;
  v83 = a3;
  v7 = sub_100003150(&qword_1000683A8, &qword_100053938);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v91 = v80 - v10;
  v92 = sub_10004A720();
  v90 = *(v92 - 8);
  v11 = *(v90 + 64);
  __chkstk_darwin(v92, v12);
  v82 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003150(&qword_100067888, &unk_100053940);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v89 = v80 - v17;
  v18 = sub_100003150(&qword_100067890, &qword_100052C70);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v87 = v80 - v21;
  v88 = sub_10004AC10();
  v86 = *(v88 - 8);
  v22 = *(v86 + 64);
  __chkstk_darwin(v88, v23);
  v85 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10004AB40();
  v96 = *(v25 - 8);
  v97 = v25;
  v26 = *(v96 + 64);
  __chkstk_darwin(v25, v27);
  v95 = v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10004BE10();
  v93 = *(v29 - 8);
  v30 = *(v93 + 64);
  __chkstk_darwin(v29, v31);
  v94 = v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10004AD30();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33, v36);
  v37 = v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v4 + 56);
  v39 = *(v4 + 48);
  swift_getObjectType();
  result = sub_100049F60();
  if (result)
  {
    v42 = result;
    v43 = v41;
    sub_100038F00(a1, &v98);
    if (v98)
    {
      v81 = v29;
      v101[0] = v98;
      v101[1] = v99;
      v102 = v100;
      v44 = swift_allocObject();
      v80[1] = v43;
      v45 = v44;
      swift_weakInit();
      (*(v34 + 16))(v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v33);
      v46 = (*(v34 + 80) + 24) & ~*(v34 + 80);
      v47 = (v35 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      *(v48 + 16) = v45;
      (*(v34 + 32))(v48 + v46, v37, v33);
      v49 = (v48 + v47);
      v50 = v83;
      v51 = v84;
      *v49 = v83;
      v49[1] = v51;
      v52 = swift_allocObject();
      swift_weakInit();
      v53 = swift_allocObject();
      v53[2] = v52;
      v53[3] = v50;
      v53[4] = v51;
      v54 = type metadata accessor for ReminderDetailModuleDelegate();
      v55 = swift_allocObject();
      v55[2] = sub_1000454DC;
      v55[3] = v48;
      v55[4] = sub_1000455E0;
      v55[5] = v53;
      *(&v99 + 1) = v54;
      *&v98 = v55;
      v56 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler;
      swift_beginAccess();
      sub_10002DA04(v50);
      sub_10002DA04(v50);

      sub_1000455EC(&v98, v5 + v56);
      swift_endAccess();
      v57 = sub_1000032DC((v5 + 64), *(v5 + 88));
      v58 = *&v101[0];
      swift_getObjectType();
      v84 = v42;
      sub_10004A290();
      (*(v96 + 104))(v95, enum case for TTRIReminderDetailStyle.sharingExtensionMultiReminders(_:), v97);
      sub_10004565C(&qword_1000689D0, type metadata accessor for ReminderDetailModuleDelegate);
      v59 = *v57;
      sub_10004AD90();
      v60 = v58;
      v61 = v85;
      sub_10004AC00();
      v62 = sub_10004A5C0();
      v63 = v87;
      (*(*(v62 - 8) + 56))(v87, 1, 1, v62);
      v64 = sub_10004BCD0();
      v65 = v89;
      (*(*(v64 - 8) + 56))(v89, 1, 1, v64);
      v66 = sub_10004AD80();
      sub_10000A138(v65, &qword_100067888, &unk_100053940);
      sub_10000A138(v63, &qword_100067890, &qword_100052C70);
      (*(v86 + 8))(v61, v88);
      v67 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v66];
      sub_1000032DC(v101 + 1, v102);
      v68 = v91;
      sub_10004BD00();
      v69 = v68;
      v70 = v90;
      v71 = v92;
      if ((*(v90 + 48))(v68, 1, v92) == 1)
      {
        sub_10000A138(v68, &qword_1000683A8, &qword_100053938);
      }

      else
      {
        v75 = v82;
        (*(v70 + 32))(v82, v69, v71);
        sub_10004C950();
        (*(v70 + 8))(v75, v71);
      }

      v76 = [v67 presentationController];
      if (v76)
      {
        v77 = v76;
        swift_getObjectType();
        sub_10004B330();
      }

      swift_unknownObjectWeakAssign();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v79 = Strong;
        [Strong presentViewController:v67 animated:1 completion:0];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      (*(v96 + 8))(v95, v97);
      (*(v93 + 8))(v94, v81);
      v72 = &unk_1000689D8;
      v73 = &unk_1000540F0;
      v74 = v101;
    }

    else
    {
      swift_unknownObjectRelease();
      v72 = &unk_1000689C8;
      v73 = &unk_1000540E0;
      v74 = &v98;
    }

    return sub_10000A138(v74, v72, v73);
  }

  return result;
}

uint64_t sub_1000381D4(uint64_t a1)
{
  v3 = sub_10004AD30();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004ACD0();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004A350();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 120);
  if ((sub_10004A140() & 1) == 0)
  {
    (*(v14 + 16))(v18, a1, v13);
    v20 = (*(v14 + 88))(v18, v13);
    if (v20 == enum case for TTRSECreateRemindersViewModel.Item.section(_:))
    {
      goto LABEL_3;
    }

    if (v20 == enum case for TTRSECreateRemindersViewModel.Item.uncommittedReminder(_:))
    {
      (*(v14 + 96))(v18, v13);
      v22 = v27;
      (*(v27 + 32))(v12, v18, v8);
      (*(v22 + 16))(v7, v12, v8);
      v23 = v28;
      (*(v28 + 104))(v7, enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:), v3);
      v24 = sub_100038550(v7);
      (*(v23 + 8))(v7, v3);
      (*(v22 + 8))(v12, v8);
      return v24;
    }

    if (v20 == enum case for TTRSECreateRemindersViewModel.Item.placeholderReminder(_:) || v20 == enum case for TTRSECreateRemindersViewModel.Item.suggestedReminder(_:))
    {
LABEL_3:
      (*(v14 + 8))(v18, v13);
    }

    else if (v20 != enum case for TTRSECreateRemindersViewModel.Item.listPicker(_:) && v20 != enum case for TTRSECreateRemindersViewModel.Item.suggestionHeader(_:) && v20 != enum case for TTRSECreateRemindersViewModel.Item.suggestionLoading(_:))
    {
      result = sub_10004CDC0();
      __break(1u);
      return result;
    }
  }

  return 0;
}

id sub_100038550(uint64_t a1)
{
  v32 = sub_10004AD30();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v32, v5);
  v6 = sub_10004B890();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  __chkstk_darwin(v6, v8);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = swift_allocObject();
  *(v31 + 16) = _swiftEmptyArrayStorage;
  v30[1] = sub_100003150(&qword_100068A60, &qword_1000541C0);
  v11 = swift_allocObject();
  v35 = xmmword_1000528D0;
  *(v11 + 16) = xmmword_1000528D0;
  v12 = sub_10004AF10();
  v37 = v1;
  v38 = a1;
  v30[0] = sub_10003E748(&_swiftEmptyDictionarySingleton, sub_100048214, v36, v12);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = v32;
  (*(v3 + 16))(v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v32);
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  (*(v3 + 32))(v16 + v15, v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  sub_10004B880();
  v17 = sub_10004B920();
  (*(v33 + 8))(v10, v34);
  *(v11 + 32) = v17;
  v18._rawValue = v11;
  v19 = v31;
  sub_10003C8DC(v18, v31);

  v20 = swift_allocObject();
  *(v20 + 16) = v35;
  *(v20 + 32) = sub_10003CA8C(a1);
  v21._rawValue = v20;
  sub_10003C8DC(v21, v19);

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100052650;
  *(v22 + 32) = sub_10003D1F0(a1);
  *(v22 + 40) = sub_10003D4FC(a1);
  *(v22 + 48) = sub_10003DC08(a1);
  *(v22 + 56) = sub_10003DFB4(a1);
  v23._rawValue = v22;
  sub_10003C8DC(v23, v19);

  v24 = swift_allocObject();
  *(v24 + 16) = v35;
  *(v24 + 32) = sub_10003E35C(a1);
  v25._rawValue = v24;
  sub_10003C8DC(v25, v19);

  v26 = objc_opt_self();
  aBlock[4] = sub_1000482B4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000459B0;
  aBlock[3] = &unk_100060580;
  v27 = _Block_copy(aBlock);

  v28 = [v26 configurationWithIdentifier:0 previewProvider:0 actionProvider:v27];

  _Block_release(v27);
  return v28;
}

uint64_t sub_1000389C4(uint64_t a1)
{
  v3 = sub_10004A380();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  __chkstk_darwin(v3, v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004ACE0();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  __chkstk_darwin(v8, v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004AD30();
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  __chkstk_darwin(v13, v15);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004A330();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v1 + 120);
  if (sub_10004A140())
  {
    return 0;
  }

  v40[1] = a1;
  sub_10004A340();
  v25 = (*(v19 + 88))(v23, v18);
  if (v25 != enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestedReminder(_:))
  {
    if (v25 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.remindersListItem(_:))
    {
      (*(v19 + 96))(v23, v18);
      v26 = v44;
      (*(v44 + 32))(v17, v23, v13);
      sub_10004AD10();
      v27 = v42;
      v28 = v43;
      v29 = (*(v42 + 88))(v12, v43);
      if (v29 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
      {
        (*(v26 + 8))(v17, v13);
LABEL_7:
        (*(v27 + 8))(v12, v28);
        return 0;
      }

      if (v29 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:))
      {
        sub_10004A310();
        v34 = type metadata accessor for TTRISECreateRemindersDragItem();
        v35 = objc_allocWithZone(v34);
        v36 = v41;
        (*(v41 + 16))(v35 + OBJC_IVAR____TtC25RemindersSharingExtension29TTRISECreateRemindersDragItem_itemID, v7, v3);
        v45.receiver = v35;
        v45.super_class = v34;
        v37 = objc_msgSendSuper2(&v45, "init");
        (*(v36 + 8))(v7, v3);
        v38 = [objc_allocWithZone(NSItemProvider) initWithObject:v37];
        v39 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v38];
        sub_10004903C();

        (*(v44 + 8))(v17, v13);
        (*(v27 + 8))(v12, v28);
        return v39;
      }

      if (v29 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
      {
        (*(v44 + 8))(v17, v13);
        goto LABEL_7;
      }

      if (v29 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
        (*(v44 + 8))(v17, v13);
        return 0;
      }
    }

    else
    {
      if (v25 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.listPicker(_:) || v25 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionHeader(_:) || v25 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionLoading(_:) || v25 == enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.unknown(_:))
      {
        return 0;
      }

      sub_10004CDC0();
      __break(1u);
    }

    result = sub_10004CDC0();
    __break(1u);
    return result;
  }

  (*(v19 + 8))(v23, v18);
  return 0;
}

uint64_t sub_100038F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100003150(&qword_1000683A8, &qword_100053938);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v38 - v13;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000230D4(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = sub_10004A720();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  v16 = *(v2 + 120);
  v17 = sub_10004A210();
  if (v17)
  {
    v18 = v17;
    v38 = v11;
    p_MangledTypeName = &stru_100051FC0[5].MangledTypeName;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100003150(&qword_100067FD8, &unk_100053660);
      v20 = sub_10004AD30();
      v21 = *(v20 - 8);
      v22 = *(v21 + 72);
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1000528D0;
      (*(v21 + 16))(v24 + v23, a1, v20);
      v25 = v18;
      sub_100023250(v24);
      swift_unknownObjectRelease();
      swift_setDeallocating();
      (*(v21 + 8))(v24 + v23, v20);
      p_MangledTypeName = (stru_100051FC0 + 64);
      swift_deallocClassInstance();
    }

    else
    {
      v27 = v18;
    }

    sub_100003150(&qword_100067FD8, &unk_100053660);
    v28 = sub_10004AD30();
    v29 = *(v28 - 8);
    v30 = *(v29 + 72);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = *(p_MangledTypeName + 141);
    (*(v29 + 16))(v32 + v31, a1, v28);
    sub_10000A198(v14, v38, &qword_1000683A8, &qword_100053938);
    v33 = *(v3 + OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_cellInfoButtonVisibilityAssertion);
    v34 = sub_10004BBF0();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();

    v37 = sub_10004BBE0();
    v40 = v34;
    v41 = &protocol witness table for TTRIRemindersListDetailPopoverAnchorProvider;

    *&v39 = v37;
    sub_10000A138(v14, &qword_1000683A8, &qword_100053938);
    *a2 = v18;
    return sub_100003674(&v39, a2 + 8);
  }

  else
  {
    result = sub_10000A138(v14, &qword_1000683A8, &qword_100053938);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
  }

  return result;
}

void sub_1000392CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v53 = a5;
  v12 = sub_10004B230();
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  __chkstk_darwin(v12, v14);
  v54 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10004BCC0();
  v16 = *(v52 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v52, v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v22 = Strong;
  v48 = a3;
  v49 = v12;
  v50 = a7;
  v51 = a6;
  sub_10004A9D0();
  v24 = v23;
  v25 = objc_opt_self();
  v47 = v24;
  v26 = sub_10004C680();
  v27 = swift_allocObject();
  v27[2] = v22;
  v27[3] = a1;
  v27[4] = a2;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1000456A4;
  *(v28 + 24) = v27;
  aBlock[4] = sub_100014CDC;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003415C;
  aBlock[3] = &unk_100060288;
  v29 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [v25 withActionName:v26 block:v29];

  _Block_release(v29);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
    goto LABEL_14;
  }

  v30 = v22[15];
  sub_100003150(&qword_1000689E0, &qword_1000540F8);
  v31 = *(v16 + 72);
  v32 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100052630;
  sub_10004BCB0();
  sub_10004BCA0();
  aBlock[0] = v33;
  sub_10004565C(&qword_100067908, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
  sub_100003150(&qword_1000689E8, &qword_100054100);
  sub_100003364(&qword_1000689F0, &qword_1000689E8, &qword_100054100);
  v34 = v52;
  sub_10004CBC0();
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v35 = sub_10004AD30();
  v36 = *(v35 - 8);
  v37 = *(v36 + 72);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1000528D0;
  (*(v36 + 16))(v39 + v38, v53, v35);
  sub_10004A0B0();

  (*(v16 + 8))(v20, v34);
  v40 = *sub_1000032DC(v22 + 8, v22[11]);
  v42 = v54;
  v41 = v55;
  v43 = v49;
  (*(v55 + 16))(v54, v48, v49);
  v44 = (*(v41 + 88))(v42, v43);
  if (v44 != enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
  {
    if (v44 == enum case for TTRIViewControllerDismissalState.requested(_:))
    {

      v45 = swift_unknownObjectWeakLoadStrong();
      if (v45)
      {
        v46 = v45;
        [v45 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {
      }

      goto LABEL_9;
    }

LABEL_14:
    sub_10004CDC0();
    __break(1u);
    return;
  }

LABEL_9:
  a6 = v51;
LABEL_10:
  if (a6)
  {
    a6(1);
  }
}

uint64_t sub_100039894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_10004B230();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000DAC4(result + 64, v16);

    v12 = *sub_1000032DC(v16, v16[3]);
    (*(v6 + 16))(v10, a1, v5);
    v13 = (*(v6 + 88))(v10, v5);
    if (v13 != enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
    {
      if (v13 != enum case for TTRIViewControllerDismissalState.requested(_:))
      {
        result = sub_10004CDC0();
        __break(1u);
        return result;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = Strong;
        [Strong dismissViewControllerAnimated:1 completion:0];
      }
    }

    result = sub_10000343C(v16);
  }

  if (a3)
  {
    return a3(0);
  }

  return result;
}

uint64_t sub_100039A50(uint64_t a1, uint64_t a2, void (*a3)(BOOL), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100039AE4(a6, a7, a2, a3, a4);
  }

  return result;
}

uint64_t sub_100039AE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(BOOL), uint64_t a5)
{
  v85 = a4;
  v86 = a5;
  v82[1] = a3;
  v93 = a2;
  v91 = a1;
  v6 = sub_10004A720();
  v83 = *(v6 - 8);
  v84 = v6;
  v7 = *(v83 + 64);
  __chkstk_darwin(v6, v8);
  v82[0] = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004AB10();
  v89 = *(v10 - 8);
  v90 = v10;
  v11 = *(v89 + 64);
  __chkstk_darwin(v10, v12);
  v88 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10004AD40();
  v14 = *(v92 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v92, v16);
  v18 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003150(&qword_100067630, &qword_100052960);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8, v21);
  v23 = v82 - v22;
  v24 = type metadata accessor for TTRISECreateRemindersPresentationTree();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8, v26);
  v28 = v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10004AD30();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29, v32);
  v34 = v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v5;
  v35 = *(v5 + 128);
  sub_10004BF40();
  v36 = *(v28 + 6);

  sub_10002BC80(v28);
  v37 = sub_10004AF90();
  v39 = v38;

  swift_getObjectType();
  v94 = v37;
  sub_10004ACF0();
  v40 = *(v39 + 8);
  sub_10004AC20();
  (*(v14 + 8))(v18, v92);
  swift_unknownObjectRelease();
  if ((*(v30 + 48))(v23, 1, v29) == 1)
  {
    return sub_10000A138(v23, &qword_100067630, &qword_100052960);
  }

  (*(v30 + 32))(v34, v23, v29);
  v43 = v88;
  v42 = v89;
  v44 = v90;
  (*(v89 + 16))(v88, v91, v90);
  v45 = (*(v42 + 88))(v43, v44);
  v46 = v34;
  if (v45 == enum case for TTRReminderSwipeAction.delete(_:))
  {
    if (qword_100066F40 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

  if (v45 == enum case for TTRReminderSwipeAction.showDetails(_:))
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v54 = sub_10004C1B0();
    sub_10000D49C(v54, qword_1000685E0);
    sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014D1C();

    v55 = v82[0];
    sub_10004A700();
    sub_100037814(v34, v55, v85, v86);
    (*(v83 + 8))(v55, v84);
    return (*(v30 + 8))(v46, v29);
  }

  if (v45 == enum case for TTRReminderSwipeAction.flag(_:))
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v56 = sub_10004C1B0();
    sub_10000D49C(v56, qword_1000685E0);
    sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014D1C();

    v57 = *(v87 + 120);
    sub_100003150(&qword_100067FD8, &unk_100053660);
    v58 = *(v30 + 72);
    v59 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v60 = swift_allocObject();
    *(v60 + 1) = xmmword_1000528D0;
    (*(v30 + 16))(&v60[v59], v46, v29);
    v61 = 1;
LABEL_19:
    v66._rawValue = v60;
    v67 = sub_10004A0E0(v61, v66);

    v53 = v67 > 0;
    goto LABEL_20;
  }

  if (v45 == enum case for TTRReminderSwipeAction.unflag(_:))
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v62 = sub_10004C1B0();
    sub_10000D49C(v62, qword_1000685E0);
    sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014D1C();

    v63 = *(v87 + 120);
    sub_100003150(&qword_100067FD8, &unk_100053660);
    v64 = *(v30 + 72);
    v65 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v60 = swift_allocObject();
    *(v60 + 1) = xmmword_1000528D0;
    (*(v30 + 16))(&v60[v65], v46, v29);
    v61 = 0;
    goto LABEL_19;
  }

  if (v45 == enum case for TTRReminderSwipeAction.indent(_:))
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v68 = sub_10004C1B0();
    sub_10000D49C(v68, qword_1000685E0);
    sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014D1C();

    v69 = *(v87 + 120);
    sub_100003150(&qword_100067FD8, &unk_100053660);
    v70 = *(v30 + 72);
    v71 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v72 = swift_allocObject();
    *(v72 + 1) = xmmword_1000528D0;
    (*(v30 + 16))(&v72[v71], v46, v29);
    v73._rawValue = v72;
    v74 = sub_10004A070(v73);
LABEL_30:
    v53 = v74;

    goto LABEL_20;
  }

  if (v45 == enum case for TTRReminderSwipeAction.outdent(_:))
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v75 = sub_10004C1B0();
    sub_10000D49C(v75, qword_1000685E0);
    sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014D1C();

    v76 = *(v87 + 120);
    sub_100003150(&qword_100067FD8, &unk_100053660);
    v77 = *(v30 + 72);
    v78 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v79 = swift_allocObject();
    *(v79 + 1) = xmmword_1000528D0;
    (*(v30 + 16))(&v79[v78], v46, v29);
    v80._rawValue = v79;
    v74 = sub_10004A090(v80);
    goto LABEL_30;
  }

  v53 = 0;
  if (v45 == enum case for TTRReminderSwipeAction.postponeToTomorrow(_:) || v45 == enum case for TTRReminderSwipeAction.postponeToThisWeekend(_:) || v45 == enum case for TTRReminderSwipeAction.postponeToNextWeekend(_:) || v45 == enum case for TTRReminderSwipeAction.setCustomDateAndTime(_:) || v45 == enum case for TTRReminderSwipeAction.permanentlyHide(_:) || v45 == enum case for TTRReminderSwipeAction.moveToAnyList(_:))
  {
    goto LABEL_20;
  }

  if (qword_100066F40 != -1)
  {
    swift_once();
  }

  v81 = sub_10004C1B0();
  sub_10000D49C(v81, qword_1000685E0);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014FC0("Unknown swipe action", 20, 2);
  __break(1u);
LABEL_40:
  swift_once();
LABEL_5:
  v47 = sub_10004C1B0();
  sub_10000D49C(v47, qword_1000685E0);
  sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014D1C();

  v48 = *(v87 + 120);
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v49 = *(v30 + 72);
  v50 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v51 = swift_allocObject();
  *(v51 + 1) = xmmword_1000528D0;
  (*(v30 + 16))(&v51[v50], v46, v29);
  v52._rawValue = v51;
  LOBYTE(v48) = sub_10004A060(v52);

  if ((v48 & 1) == 0)
  {
    v53 = 0;
LABEL_20:
    v85(v53);
  }

  return (*(v30 + 8))(v46, v29);
}