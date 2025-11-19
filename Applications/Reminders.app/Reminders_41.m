uint64_t sub_100478BE8(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability))
  {

    TTRRemindersBoardPresentationTreesManagementViewCapability.reload()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100478C38(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for TTRRemindersBoardColumnWidthCalculator.WidthClass();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v60 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersBoardColumnWidthCalculator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v57 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong, v14 = [Strong view], v13, v14))
  {
    [v14 directionalLayoutMargins];
    v16 = v15;
    v18 = v17;
    v63 = v14;
    [v14 safeAreaInsets];
  }

  else
  {
    v63 = 0;
    v16 = 16.0;
    v18 = 16.0;
  }

  [objc_msgSend(a2 "container")];
  swift_unknownObjectRelease();
  v19 = [a2 traitCollection];
  [v19 horizontalSizeClass];

  v20 = [a2 traitCollection];
  [v20 displayScale];

  TTRRemindersBoardColumnWidthCalculator.init(contentSize:edgeInsets:interColumnSpacing:displayScale:columnWidthRange:peekPercentage:)();
  if (qword_100767330 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100003E30(v21, qword_1007843D0);
  v22 = v11;
  (*(v6 + 16))(v8, v11, v5);
  v23 = Logger.logObject.getter();
  v24 = v5;
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v23, v25);
  v57 = v24;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v64 = v28;
    *v27 = 136315138;
    v29 = TTRRemindersBoardColumnWidthCalculator.description.getter();
    v31 = v30;
    v32 = *(v6 + 8);
    v58 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v59 = v32;
    v32(v8, v24);
    v33 = sub_100004060(v29, v31, &v64);

    *(v27 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v23, v25, "[TTRIRemindersBoard] Column Width Calculation: %s", v27, 0xCu);
    sub_100004758(v28);
  }

  else
  {

    v34 = *(v6 + 8);
    v58 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v59 = v34;
    v34(v8, v24);
  }

  v36 = v60;
  v35 = v61;
  v37 = v62;
  (*(v61 + 104))(v60, enum case for TTRRemindersBoardColumnWidthCalculator.WidthClass.medium(_:), v62);
  v38 = v22;
  TTRRemindersBoardColumnWidthCalculator.columnWidth(for:)();
  v40 = v39;
  (*(v35 + 8))(v36, v37);
  v41 = objc_opt_self();
  v42 = [v41 fractionalWidthDimension:1.0];
  v43 = [v41 fractionalHeightDimension:1.0];
  v44 = objc_opt_self();
  v45 = [v44 sizeWithWidthDimension:v42 heightDimension:v43];

  v46 = [objc_opt_self() itemWithLayoutSize:v45];
  v47 = [v41 absoluteDimension:v16 + v40];
  v48 = [v41 fractionalHeightDimension:1.0];
  v49 = [v44 sizeWithWidthDimension:v47 heightDimension:v48];

  v50 = objc_opt_self();
  sub_100058000(&qword_10076B780);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10062D420;
  *(v51 + 32) = v46;
  sub_100003540(0, &qword_100772750);
  v52 = v46;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v54 = [v50 horizontalGroupWithLayoutSize:v49 subitems:isa];

  type metadata accessor for TTRIRemindersBoardMainViewController.LayoutSection();
  v55 = [swift_getObjCClassFromMetadata() sectionWithGroup:v54];
  [v55 setInterGroupSpacing:0.0];
  [v55 setContentInsets:{0.0, v16 - v16 * 0.5, 0.0, v18 - v16 * 0.5}];
  [v55 setContentInsetsReference:1];

  v59(v38, v57);
  return v55;
}

uint64_t sub_1004793BC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v19[-1] - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
  v15 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
  v14 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
  sub_10000C36C(v13, v15);
  (*(*(v14 + 8) + 296))(v19, v15);
  sub_10000C36C(v19, v19[3]);
  TTRRemindersListEditingState.editingItem.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &qword_100772140);
    sub_100004758(v19);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_100004758(v19);
    result = TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    if (*(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
    {

      v17 = sub_100495DBC();

      (*(v3 + 8))(v5, v2);
      (*(v10 + 8))(v12, v9);
      return v17;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10047968C(uint64_t a1, id a2)
{
  v3 = v2;
  v37 = a2;
  v5 = type metadata accessor for TTREditingStateOption.InputType();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v36 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v31);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v32 = v3;
  if (*&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController])
  {

    v16 = sub_100495DBC();

    (*(v13 + 8))(v15, v12);
    if (v16)
    {
      if (qword_100767330 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100003E30(v17, qword_1007843D0);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "TTRIRemindersBoardMainViewController: Begin editing title of cell of item-to-edit", v20, 2u);
      }

      v21 = [v16 contentView];
      type metadata accessor for TTRIBoardReminderCellContentView();
      if (swift_dynamicCastClass())
      {
        sub_1004C1558(v37);
      }

      else
      {
      }
    }

    else
    {
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
      v23 = v31;
      (*(v7 + 16))(v35, a1, v31);
      v25 = v33;
      v24 = v34;
      (*(v33 + 16))(v36, v37, v34);
      type metadata accessor for MainActor();
      v37 = v32;
      v26 = static MainActor.shared.getter();
      v27 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v28 = (v8 + *(v25 + 80) + v27) & ~*(v25 + 80);
      v29 = swift_allocObject();
      *(v29 + 2) = v26;
      *(v29 + 3) = &protocol witness table for MainActor;
      *(v29 + 4) = v37;
      (*(v7 + 32))(&v29[v27], v35, v23);
      (*(v25 + 32))(&v29[v28], v36, v24);
      sub_10009E31C(0, 0, v11, &unk_100640880, v29);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100479B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for TTREditingStateOption.InputType();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6[9] = v9;
  v6[10] = *(v9 - 8);
  v6[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[12] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[13] = v11;
  v6[14] = v10;

  return _swift_task_switch(sub_100479CAC, v11, v10);
}

void sub_100479CAC()
{
  if (qword_100767330 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_1007843D0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "TTRIRemindersBoardMainViewController: scrolling cell of item-to-edit to visible", v4, 2u);
  }

  v5 = v0[2];

  v6 = *(v5 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController);
  v0[15] = v6;
  if (v6)
  {
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[6];
    v10 = v0[4];
    v6;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v9 + 16))(v7, v10, v8);
    v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v12 = swift_allocObject();
    v0[16] = v12;
    (*(v9 + 32))(v12 + v11, v7, v8);
    v13 = swift_task_alloc();
    v0[17] = v13;
    *v13 = v0;
    v13[1] = sub_100479EC8;
    v14 = v0[11];

    sub_1004162A8(v14, sub_1004832AC, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100479EC8(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 112);
  v9 = *(v3 + 104);

  return _swift_task_switch(sub_10047A090, v9, v8);
}

uint64_t sub_10047A090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10047A104()
{
  if (qword_100767330 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_1007843D0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "TTRIRemindersBoardMainViewController: Begin editing title of cell of item-to-edit", v3, 2u);
  }

  swift_getObjectType();
  return dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();
}

uint64_t sub_10047A20C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 304) = a3;
  *(v4 + 48) = a1;
  v5 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  v6 = sub_100058000(&unk_100772740);
  *(v4 + 96) = v6;
  *(v4 + 104) = *(v6 - 8);
  *(v4 + 112) = swift_task_alloc();
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  *(v4 + 120) = v7;
  *(v4 + 128) = *(v7 - 8);
  *(v4 + 136) = swift_task_alloc();
  sub_100058000(&qword_100772140);
  *(v4 + 144) = swift_task_alloc();
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(v4 + 152) = v8;
  *(v4 + 160) = *(v8 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  v9 = type metadata accessor for TTRRemindersBoardPresentationTrees();
  *(v4 + 184) = v9;
  *(v4 + 192) = *(v9 - 8);
  *(v4 + 200) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 208) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 216) = v11;
  *(v4 + 224) = v10;

  return _swift_task_switch(sub_10047A4C8, v11, v10);
}

uint64_t sub_10047A4C8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v40 = *(v0 + 144);
  v41 = *(v0 + 152);
  sub_10000C36C((*(v0 + 64) + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(*(v0 + 64) + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
  TTRRemindersBoardPresentationTreesManagementPresenterCapability.presentationTree.getter();
  v5 = TTRRemindersBoardPresentationTrees.ancestorsToExpand(forRevealing:isCollapsed:)();
  (*(v1 + 8))(v2, v3);
  *(v0 + 40) = v5;
  type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();
  sub_100058000(&unk_1007821D0);
  sub_10000E188(&unk_100784540, &unk_1007821D0);
  dispatch thunk of TTRRemindersBoardItemCollapsedStates.expand<A>(_:)();

  TTRRemindersBoardPresentationTreesManagementPresenterCapability.performPendingUpdatesImmediately()();
  TTRRemindersListHighlightTarget.firstItem.getter();
  if ((*(v4 + 48))(v40, 1, v41) == 1)
  {
    v6 = *(v0 + 144);

    sub_1000079B4(v6, &qword_100772140);
    v7 = objc_opt_self();
    v8 = String._bridgeToObjectiveC()();
    [v7 internalErrorWithDebugDescription:v8];

    swift_willThrow();
LABEL_6:

    v25 = *(v0 + 8);

    return v25();
  }

  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  (*(v12 + 32))(v10, *(v0 + 144), v11);
  (*(v12 + 16))(v9, v10, v11);
  result = (*(v12 + 88))(v9, v11);
  if (result == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    goto LABEL_4;
  }

  if (result == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    v26 = *(*(v0 + 64) + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController);
    *(v0 + 232) = v26;
    if (v26)
    {
      v26;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      v27 = swift_task_alloc();
      *(v0 + 240) = v27;
      *v27 = v0;
      v27[1] = sub_10047ABAC;
      v28 = *(v0 + 136);
      v29 = *(v0 + 304);

      return sub_100419210(v28, 0, v29);
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (result == enum case for TTRRemindersListViewModel.Item.reminder(_:) || result == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || result == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:))
  {
    v31 = *(v0 + 160);
    v30 = *(v0 + 168);
    v32 = *(v0 + 152);
    v33 = *(v0 + 64);
    v34 = *(v31 + 8);
    *(v0 + 248) = v34;
    *(v0 + 256) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    result = v34(v30, v32);
    v35 = *(v33 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController);
    *(v0 + 264) = v35;
    if (!v35)
    {
      goto LABEL_32;
    }

    v35;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v36 = swift_task_alloc();
    *(v0 + 272) = v36;
    *v36 = v0;
    v36[1] = sub_10047AE48;
    v37 = *(v0 + 136);
    v38 = *(v0 + 304);
    v39 = *(v0 + 56);

    return sub_100418040(v37, v39, v38);
  }

  else
  {
    if (result == enum case for TTRRemindersListViewModel.Item.completed(_:) || result == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || result == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || result == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
LABEL_4:
      v15 = *(v0 + 160);
      v14 = *(v0 + 168);
      v16 = *(v0 + 152);

      (*(v15 + 8))(v14, v16);
LABEL_5:
      v17 = *(v0 + 176);
      v18 = *(v0 + 152);
      v19 = *(v0 + 160);
      v20 = objc_opt_self();
      _StringGuts.grow(_:)(54);
      v21._countAndFlagsBits = 0xD000000000000033;
      v21._object = 0x8000000100688920;
      String.append(_:)(v21);
      sub_1004891CC(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      v22._countAndFlagsBits = TTRTreeStorageItem.treeItemDescription.getter();
      String.append(_:)(v22);

      v23._countAndFlagsBits = 125;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      v24 = String._bridgeToObjectiveC()();

      [v20 internalErrorWithDebugDescription:v24];

      swift_willThrow();
      (*(v19 + 8))(v17, v18);
      goto LABEL_6;
    }

    if (result == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || result == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
    {

      goto LABEL_5;
    }

    return _diagnoseUnexpectedEnumCase<A>(type:)();
  }
}

uint64_t sub_10047ABAC(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 120);

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 224);
  v9 = *(v3 + 216);

  return _swift_task_switch(sub_10047AD58, v9, v8);
}

uint64_t sub_10047AD58()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];

  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10047AE48(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  *(*v1 + 280) = a1;

  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 224);
  v8 = *(v2 + 216);

  return _swift_task_switch(sub_10047AFEC, v8, v7);
}

uint64_t sub_10047AFEC()
{
  v1 = v0[35];
  if (!v1)
  {
    v7 = v0[31];
    v8 = v0[22];
    v9 = v0[19];

    v10 = objc_opt_self();
    v11 = String._bridgeToObjectiveC()();
    [v10 internalErrorWithDebugDescription:v11];

    swift_willThrow();
    v7(v8, v9);

    v6 = v0[1];
    goto LABEL_5;
  }

  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
  swift_beginAccess();
  (*(v3 + 16))(v2, &v1[v5], v4);
  LOBYTE(v5) = TTRLazilyLoadedViewModelState.isValid.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    (v0[31])(v0[22], v0[19]);

    v6 = v0[1];
LABEL_5:

    return v6();
  }

  (*(v0[10] + 104))(v0[11], enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v0[9]);
  v13 = swift_task_alloc();
  v0[36] = v13;
  *v13 = v0;
  v13[1] = sub_10047B2C4;
  v14 = v0[22];
  v15 = v0[11];

  return TTRRemindersListItemStateTracker.waitFor(_:of:cancelsExistingPromise:)(v15, v14, 1);
}

uint64_t sub_10047B2C4()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  v3 = v2[28];
  v4 = v2[27];
  if (v0)
  {
    v5 = sub_10047B528;
  }

  else
  {
    v5 = sub_10047B44C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10047B44C()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[22];
  v4 = v0[19];

  v2(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10047B528()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[22];
  v4 = v0[19];

  v2(v3, v4);

  v5 = v0[1];

  return v5();
}

id sub_10047B60C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  sub_1004D2BE8(v8, &v16);
  v10 = v19;
  v11 = v18;
  *a3 = v16;
  *(a3 + 16) = v17;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000301AC(v11);
  *(a3 + 24) = sub_10048313C;
  *(a3 + 32) = v12;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000301AC(v10);
  *(a3 + 40) = sub_100483144;
  *(a3 + 48) = v13;
  result = [a2 isEditing];
  *(a3 + 18) = result ^ 1;
  return result;
}

uint64_t sub_10047B7B8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_10000B0D8(result + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter, v4);

    v2 = v4[4];
    sub_10000C36C(v4, v4[3]);
    v3 = static TTRITipKitSignalContext.RemindersList.keyboardShortcut.getter();
    (*(*(v2 + 8) + 968))(v3);

    return sub_100004758(v4);
  }

  return result;
}

uint64_t sub_10047B86C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  sub_10000B0D8(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter, v6);

  v2 = v7;
  v3 = v8;
  sub_10000C36C(v6, v7);
  v4 = (*(*(v3 + 8) + 216))(v2);
  sub_100004758(v6);
  return v4;
}

uint64_t type metadata accessor for TTRIRemindersBoardMainViewController()
{
  result = qword_1007844E8;
  if (!qword_1007844E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10047BB8C()
{
  sub_10047BD00(319, &qword_1007844F8, &type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState);
  if (v0 <= 0x3F)
  {
    sub_10047BD00(319, &qword_100784500, &type metadata accessor for TTRRemindersListViewModel.ListInfo);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10047BD00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10047BD54()
{
  v1 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_1007837A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_focusController);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_currentFocusedItem;
    swift_beginAccess();
    sub_10000794C(v8 + v9, v7, &qword_1007837A0);
    if ((*(v2 + 48))(v7, 1, v1) == 1)
    {
      sub_1000079B4(v7, &qword_1007837A0);
    }

    else
    {
      sub_10048927C(v7, v4, type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1004892E4(v4, type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem);
        sub_1004892E4(v7, type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem);
      }

      else
      {
        sub_100058000(&unk_1007845A0);
        v10 = type metadata accessor for TTRRemindersListViewModel.ItemID();
        (*(*(v10 - 8) + 8))(v4, v10);
        sub_1004892E4(v7, type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem);
        sub_1004891CC(&qword_100778ED0, type metadata accessor for TTRIBoardReminderCell);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10047BFF4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController);
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v3 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  swift_beginAccess();
  if (*(v2 + v3))
  {
    return;
  }

  v4 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator;
  if (!*(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator))
  {
    goto LABEL_11;
  }

  active = TTRICollectionViewDragAndDropActivityTracker.hasActiveDrag.getter();

  if (active)
  {
    return;
  }

  if (!*(v1 + v4))
  {
    goto LABEL_12;
  }

  v6 = TTRICollectionViewDragAndDropActivityTracker.hasActiveDrop.getter();

  if ((v6 & 1) == 0 && !*(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController))
  {
    goto LABEL_13;
  }
}

void sub_10047C0F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController);
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v2 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    return;
  }

  v3 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator;
  if (!*(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator))
  {
    goto LABEL_9;
  }

  v4 = v0;

  active = TTRICollectionViewDragAndDropActivityTracker.hasActiveDrag.getter();

  if ((active & 1) == 0)
  {
    if (*(v4 + v3))
    {

      TTRICollectionViewDragAndDropActivityTracker.hasActiveDrop.getter();

      return;
    }

    goto LABEL_10;
  }
}

void sub_10047C1DC()
{
  v1 = v0;
  if (qword_100767330 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_1007843D0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIRemindersBoardMainViewController: perform initial reload", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability))
  {

    TTRRemindersBoardPresentationTreesManagementViewCapability.reload()();
  }

  else
  {
    __break(1u);
  }
}

id sub_10047C2EC(void *a1)
{
  v2 = v1;
  if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
  {
    v6 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dummyContentScrollView;
    v7 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dummyContentScrollView];
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dummyContentScrollView];
    }

    else
    {
      result = [v2 view];
      if (!result)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v9 = result;
      [result bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = [objc_allocWithZone(UIScrollView) initWithFrame:{v11, v13, v15, v17}];
      [v18 setAutoresizingMask:16];
      [v18 setContentInsetAdjustmentBehavior:3];
      [v18 setHidden:1];

      result = [v2 view];
      if (!result)
      {
LABEL_16:
        __break(1u);
        return result;
      }

      v19 = result;
      [result insertSubview:v18 atIndex:0];

      v20 = *&v2[v6];
      *&v2[v6] = v18;
      v8 = v18;

      v7 = 0;
    }

    v21 = v7;
    result = [a1 setContentScrollView:v8 forEdge:15];
    v22 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_deferredViewActionProvider;
    if (*&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_deferredViewActionProvider])
    {

      TTRDeferredViewActionProvider.trigger.getter();

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = sub_100483380;
      *(v24 + 24) = v23;
      sub_100058000(&qword_100769510);
      sub_10000E188(&unk_100784590, &qword_100769510);
      v25 = Publisher<>.sink(receiveValue:)();

      *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_scrollToTopCancellable] = v25;

      if (*&v2[v22])
      {

        TTRDeferredViewActionProvider.schedule()();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

  v4 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView];

  return [a1 setContentScrollView:v4 forEdge:15];
}

void sub_10047C60C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_scrollToTopCancellable) = 0;

    v2 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dummyContentScrollView];
    if (v2)
    {
      [v2 _scrollToTopIfPossible:0];
    }
  }
}

uint64_t sub_10047C690(uint64_t a1)
{
  v3 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v13, &qword_100772140);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1000079B4(v13, &qword_100772140);
  }

  result = (*(v15 + 32))(v17, v13, v14);
  if (*(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
  {

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    TTRRemindersBoardMainDiffableDataSource.columnID(containingItemID:)();
    v20 = v26;
    v19 = v27;
    if ((*(v26 + 48))(v5, 1, v27) == 1)
    {

      (*(v20 + 8))(v10, v19);
      sub_1000079B4(v5, &unk_10076BB50);
    }

    else
    {
      v21 = v25;
      (*(v20 + 32))(v25, v5, v19);
      v22 = sub_100495F7C();

      v23 = *(v20 + 8);
      v23(v21, v19);
      v23(v10, v19);
      if (v22)
      {
        [v22 frame];
        CGRectGetHeight(v28);

        return (*(v15 + 8))(v17, v14);
      }
    }

    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10047CA70(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource;
  v4 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!*(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  swift_beginAccess();
  v5 = v4;

  sub_100058000(&unk_10076BBD0);
  Set.removeAll(where:)();
  swift_endAccess();
  swift_beginAccess();
  Set.removeAll(where:)();
  swift_endAccess();

  sub_10000E188(&unk_100772700, &unk_10076BBD0);
  TTRRemindersBoardMainDiffableDataSource.items<A>(withIDs:)();

  if ((a1 & 1) == 0)
  {
    return;
  }

  v6 = *(v2 + v3);
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = v6;
  sub_100058000(&qword_10076E0B0);
  sub_10000E188(&unk_100784560, &qword_10076E0B0);
  TTRRemindersBoardMainDiffableDataSource.sortByItemVisualLocation<A, B>(_:itemID:)();
}

uint64_t sub_10047CCB4(uint64_t result, char a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView);
  if (v5)
  {
    v9 = result;
    v10 = v5;
    sub_1005036D0();
    sub_1005F55D8(v9 & 1, a2 & 1, a3, a4);

    if (*(v4 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableScrollViewInsets))
    {
      sub_10048332C();

      TTRObservableViewModel<A>.update(with:forcePublish:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10047CDA0(uint64_t a1, void (*a2)(void, void, void, void, void))
{
  v34 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v12 = v9;
    v27 = v2;
    v28 = a2;
    v35 = _swiftEmptyArrayStorage;
    sub_1004A2324(0, v10, 0);
    v11 = v35;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v30 = *(v13 + 56);
    v31 = v14;
    v16 = (v13 - 8);
    v29 = v7 + 32;
    do
    {
      v17 = v32;
      v18 = v34;
      v19 = v13;
      v31(v32, v15, v34);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*v16)(v17, v18);
      v35 = v11;
      v21 = v11[2];
      v20 = v11[3];
      if (v21 >= v20 >> 1)
      {
        sub_1004A2324(v20 > 1, v21 + 1, 1);
        v11 = v35;
      }

      v11[2] = v21 + 1;
      (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v12, v33);
      v15 += v30;
      --v10;
      v13 = v19;
    }

    while (v10);
    v2 = v27;
    a2 = v28;
  }

  sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
  v35 = v11;
  v22 = type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();

  v23 = sub_100058000(&unk_1007821D0);
  v24 = sub_10000E188(&unk_100784540, &unk_1007821D0);
  a2(&v35, v23, v24, v22, &protocol witness table for TTRRemindersBoardCollapsedStatesPresenterCapability);
}

__n128 sub_10047D0B4(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_initialFrameForLoadingView;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_10047D0E8()
{
  result = sub_1004793BC();
  if (result)
  {
    v1 = result;
    sub_1004891CC(&qword_100778ED0, type metadata accessor for TTRIBoardReminderCell);
    return v1;
  }

  return result;
}

uint64_t sub_10047D178(uint64_t a1)
{
  v3 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_listInfo;
  swift_beginAccess();
  sub_100019180(v5, v1 + v8, &unk_10078A380);
  swift_endAccess();
  sub_100476440();
  return sub_1000079B4(v5, &unk_10078A380);
}

void sub_10047D2D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController);
  if (v4)
  {
    v8 = v4;
    sub_10041A9B0(a1, a2, a3 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_10047D354()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView);
  if (v1)
  {
    v2 = v1;
    UIScrollView.bottomInsetRelativeToBounds(forAvoidingKeyboardWith:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10047D3B8()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_chromelessBarsController))
  {

    sub_10016931C();
  }

  return result;
}

BOOL sub_10047D410()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();
  v5 = dispatch thunk of TTRRemindersBoardItemCollapsedStates.isCollapsed(_:)();

  (*(v2 + 8))(v4, v1);
  return (v5 & 1) == 0;
}

uint64_t sub_10047D590()
{
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
  type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();

  dispatch thunk of TTRRemindersBoardItemCollapsedStates.collapsedStatesPersistence.setter();
}

void sub_10047D828(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v94 = a3;
  v79 = type metadata accessor for TTRAdjustedIndexPath();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for TTRUnadjustedIndexPath();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v11 - 8);
  v87 = &v72 - v12;
  v86 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v91 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_1007845C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v72 - v18;
  v20 = sub_100058000(&qword_10077CFF0);
  v95 = *(v20 - 8);
  v96 = v20;
  __chkstk_darwin(v20);
  v73 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v82 = &v72 - v23;
  v24 = type metadata accessor for IndexPath();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v75 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v74 = &v72 - v28;
  __chkstk_darwin(v29);
  v92 = &v72 - v30;
  v31 = type metadata accessor for TTRIRemindersBoardColumnReorderingContext.TargetIndexPathForMoveOfItemInput(0);
  v33 = __chkstk_darwin(v31);
  v34 = *(v5 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController);
  if (!v34)
  {
    __break(1u);
    return;
  }

  v85 = v16;
  v89 = v25;
  v90 = a4;
  v35 = *(v25 + 16);
  v36 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  v35(v36, a1, v24, v33);
  v37 = a2;
  (v35)(&v36[*(v31 + 20)], a2, v24);
  v38 = *(v31 + 24);
  v93 = v36;
  v97 = v35;
  (v35)(&v36[v38], v94, v24);
  v39 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  swift_beginAccess();
  v88 = v39;
  v40 = *&v34[v39];
  if (!v40)
  {
    (*(v95 + 56))(v19, 1, 1, v96);
    goto LABEL_9;
  }

  v41 = OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_lastTargetIndexPathForMoveOfItem;
  swift_beginAccess();
  sub_10000794C(v40 + v41, v19, &unk_1007845C0);
  if ((*(v95 + 48))(v19, 1, v96) == 1)
  {
LABEL_9:
    v49 = v34;
    sub_1000079B4(v19, &unk_1007845C0);
    v45 = v37;
    goto LABEL_11;
  }

  v42 = v19;
  v43 = v82;
  sub_100016588(v42, v82, &qword_10077CFF0);
  v44 = v34;
  v45 = v37;
  if (static IndexPath.== infix(_:_:)() & 1) != 0 && (static IndexPath.== infix(_:_:)() & 1) != 0 && (static IndexPath.== infix(_:_:)())
  {
    v46 = v73;
    sub_100016588(v43, v73, &qword_10077CFF0);
    v47 = v89;
    v48 = v92;
    (*(v89 + 32))(v92, v46 + *(v96 + 48), v24);
    sub_1004892E4(v46, type metadata accessor for TTRIRemindersBoardColumnReorderingContext.TargetIndexPathForMoveOfItemInput);
    goto LABEL_19;
  }

  sub_1000079B4(v43, &qword_10077CFF0);
LABEL_11:
  Strong = swift_unknownObjectWeakLoadStrong();
  v47 = v89;
  v51 = v91;
  v48 = v92;
  v52 = v87;
  if (Strong)
  {
    v82 = v45;
    v53 = v83;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
    v54 = v86;
    if ((*(v51 + 48))(v52, 1, v86) != 1)
    {
      (*(v51 + 32))(v84, v52, v54);
      v55 = v74;
      v97(v74, v94, v24);
      v56 = v76;
      TTRAdjustedIndexPath.init(_:)();
      sub_100058000(&qword_1007845D0);
      v57 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_10062D400;
      v97((v58 + v57), v53, v24);
      v59 = v77;
      TTRAdjustedIndexPath.unadjusted(forOriginalItemIndexPaths:)();

      (*(v78 + 8))(v56, v79);
      TTRUnadjustedIndexPath.indexPath.getter();
      v60 = IndexPath.item.getter();
      v61 = v55;
      v48 = v92;
      (*(v47 + 8))(v61, v24);
      v62 = v84;
      sub_100488874(v84, v60);
      LOBYTE(v60) = v63;
      swift_unknownObjectRelease();
      (*(v80 + 8))(v59, v81);
      (*(v91 + 8))(v62, v86);
      if (v60)
      {
        v64 = v94;
      }

      else
      {
        v64 = v82;
      }

      v65 = v75;
      v97(v75, v64, v24);
      (*(v47 + 32))(v48, v65, v24);
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
    sub_1000079B4(v52, &unk_10076BB50);
    v45 = v82;
  }

  v97(v48, v45, v24);
LABEL_19:
  v66 = v88;
  swift_beginAccess();
  v67 = *&v34[v66];
  if (v67)
  {
    swift_endAccess();
    v68 = v96;
    v69 = *(v96 + 48);
    v70 = v85;
    sub_100489214(v93, v85, type metadata accessor for TTRIRemindersBoardColumnReorderingContext.TargetIndexPathForMoveOfItemInput);
    v97((v70 + v69), v48, v24);
    (*(v95 + 56))(v70, 0, 1, v68);
    v71 = OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_lastTargetIndexPathForMoveOfItem;
    swift_beginAccess();

    sub_10000D184(v70, v67 + v71, &unk_1007845C0);
    swift_endAccess();
  }

  else
  {
    sub_1004892E4(v93, type metadata accessor for TTRIRemindersBoardColumnReorderingContext.TargetIndexPathForMoveOfItemInput);
    swift_endAccess();
  }

  (*(v47 + 32))(v90, v48, v24);
}

void sub_10047E630(uint64_t a1)
{
  v80 = a1;
  v2 = sub_100058000(&unk_100771B10);
  v3 = __chkstk_darwin(v2 - 8);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v72 = &v54 - v5;
  v73 = type metadata accessor for IndexPath();
  v79 = *(v73 - 8);
  v6 = __chkstk_darwin(v73);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v54 - v9;
  v10 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v54 - v18;
  v82 = type metadata accessor for TTRRemindersListViewModel.Item();
  v20 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v1;
  v23 = [v1 viewIfLoaded];
  if (!v23)
  {
    return;
  }

  v24 = v23;
  v25 = UIView.firstResponderDescendant.getter();

  v56 = v25;
  if (!v25)
  {
    return;
  }

  v55 = v8;
  v26 = *(v80 + 16);
  if (!v26)
  {
LABEL_28:

    return;
  }

  v28 = *(v20 + 16);
  v27 = v20 + 16;
  v78 = v28;
  v29 = v80 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
  v30 = *(v27 + 56);
  v76 = (v14 + 48);
  v77 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController;
  v71 = (v79 + 48);
  v66 = (v79 + 32);
  v65 = (v79 + 8);
  v79 = v27;
  v80 = v14 + 8;
  v74 = v30;
  v75 = (v27 - 8);
  v68 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v69 = (v14 + 32);
  v57 = v22;
  v61 = v12;
  v60 = v13;
  v62 = v17;
  v70 = v19;
  v28(v81, v29, v82);
  while (1)
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    if (!*&v22[v77])
    {
      break;
    }

    TTRRemindersBoardMainDiffableDataSource.columnID(containingItemID:)();
    if ((*v76)(v12, 1, v13) == 1)
    {

      (*v80)(v19, v13);
      (*v75)(v81, v82);
      sub_1000079B4(v12, &unk_10076BB50);
      goto LABEL_6;
    }

    (*v69)(v17, v12, v13);
    v31 = v72;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
    v32 = v31;
    v33 = *v71;
    v34 = v31;
    v35 = v73;
    if ((*v71)(v34, 1, v73) == 1)
    {

      v36 = *v80;
      (*v80)(v17, v13);
      sub_1000079B4(v32, &unk_100771B10);
      goto LABEL_20;
    }

    v37 = v67;
    v64 = *v66;
    v64(v67, v32, v35);
    v38 = UICollectionView.visibleCellForItem(at:)();
    v63 = *v65;
    v63(v37, v35);
    v36 = *v80;
    (*v80)(v17, v13);
    if (!v38)
    {

LABEL_19:
      v12 = v61;
      v13 = v60;
      v17 = v62;
LABEL_20:
      v19 = v70;
      v36(v70, v13);
LABEL_21:
      (*v75)(v81, v82);
      goto LABEL_6;
    }

    type metadata accessor for TTRIBoardColumnCollectionViewCell();
    v39 = swift_dynamicCastClass();
    if (!v39)
    {

      v22 = v57;
      goto LABEL_19;
    }

    v40 = v39;
    v58 = v38;
    v41 = *(v39 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
    if (!v41)
    {
      goto LABEL_31;
    }

    v42 = v41;
    v43 = v59;
    v44 = v70;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    v45 = v43;
    v46 = v43;
    v47 = v73;
    if (v33(v46, 1, v73) == 1)
    {

      v13 = v60;
      v36(v44, v60);
      sub_1000079B4(v45, &unk_100771B10);
      v22 = v57;
      v12 = v61;
      v19 = v44;
      v17 = v62;
      goto LABEL_21;
    }

    v48 = v55;
    v64(v55, v45, v47);
    v49 = *(v40 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
    v17 = v62;
    if (!v49)
    {
      goto LABEL_32;
    }

    v50 = v49;
    v51 = UICollectionView.visibleCellForItem(at:)();

    v63(v48, v47);
    v19 = v70;
    v13 = v60;
    v36(v70, v60);
    v22 = v57;
    v12 = v61;
    if (!v51)
    {
      goto LABEL_21;
    }

    type metadata accessor for TTRIBoardReminderCell();
    v52 = swift_dynamicCastClass();
    if (!v52)
    {

      goto LABEL_21;
    }

    v53 = [v56 isDescendantOfView:v52];

    (*v75)(v81, v82);
    if (v53)
    {
      [v56 resignFirstResponder];
      goto LABEL_28;
    }

LABEL_6:
    v29 += v74;
    if (!--v26)
    {
      goto LABEL_28;
    }

    v78(v81, v29, v82);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_10047EE54@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  if (*(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
  {

    v8 = sub_100495DBC();

    (*(v4 + 8))(v6, v3);
    if (!v8)
    {
      v11 = 1;
LABEL_9:
      v12 = type metadata accessor for TTRIPopoverAnchor();
      return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
    }

    v9 = [v8 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView();
    result = swift_dynamicCastClass();
    if (!result)
    {
      v11 = 1;
      goto LABEL_8;
    }

    if (*(result + qword_100786CF0))
    {
      v10 = v8;
      v13[15] = 4;
      *&v13[-16] = __chkstk_darwin(result);

      v8 = TTRGridViewPredefinedContentPopulator.makeViewHiddenOnRemoval(for:createIfNeeded:)();

      static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
      v11 = 0;
      v9 = v10;
LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10047F094(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListHighlightTarget();
  v32 = *(v6 - 1);
  __chkstk_darwin(v6);
  v33 = v7;
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v34 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = TTRRemindersListHighlightTarget.targetItems.getter();
  if (*(v15 + 16))
  {
    v30 = a2;
    v16 = *(v10 + 80);
    v28 = v3;
    v31 = sub_100058000(&unk_10078A2F0);
    v17 = type metadata accessor for TaskPriority();
    v18 = *(*(v17 - 8) + 56);
    v29 = v14;
    v18(v14, 1, 1, v17);
    (*(v10 + 16))(v34, v15 + ((v16 + 32) & ~v16), v9);
    v19 = v32;
    (*(v32 + 16))(v8, a1, v6);
    type metadata accessor for MainActor();
    v20 = v28;
    v21 = static MainActor.shared.getter();
    v27 = v8;
    v28 = v6;
    v22 = (v16 + 41) & ~v16;
    v23 = (v22 + v11 + *(v19 + 80)) & ~*(v19 + 80);
    v24 = (v33 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = &protocol witness table for MainActor;
    *(v25 + 32) = v20;
    *(v25 + 40) = v30 & 1;
    (*(v10 + 32))(v25 + v22, v34, v9);
    (*(v19 + 32))(v25 + v23, v27, v28);
    *(v25 + v24) = v15;
    sub_100084EC0(0, 0, v29, &unk_100640848, v25);
    return Promise.__allocating_init(task:)();
  }

  else
  {

    sub_100058000(&unk_10078A2F0);
    swift_allocObject();
    return Promise.init(value:)();
  }
}

uint64_t sub_10047F410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 376) = a5;
  *(v8 + 136) = a4;
  *(v8 + 144) = a6;
  v9 = sub_100058000(&unk_100772740);
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  v12 = type metadata accessor for ContinuousClock();
  *(v8 + 264) = v12;
  *(v8 + 272) = *(v12 - 8);
  *(v8 + 280) = swift_task_alloc();
  v13 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  *(v8 + 288) = v13;
  *(v8 + 296) = *(v13 - 8);
  *(v8 + 304) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 312) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 320) = v15;
  *(v8 + 328) = v14;

  return _swift_task_switch(sub_10047F6AC, v15, v14);
}

uint64_t sub_10047F6AC()
{
  sub_100476EF8(0, *(v0 + 376));
  if (TTRRemindersListHighlightTarget.TargetItem.includesChildren.getter())
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *v2 = v0;
  v2[1] = sub_10047F770;
  v3 = *(v0 + 152);
  v4 = *(v0 + 376);

  return sub_10047A20C(v3, v1, v4);
}

uint64_t sub_10047F770()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_10048020C;
  }

  else
  {
    v5 = sub_10047F8AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10047F8AC()
{
  v1 = v0[20];
  v2 = *(v1 + 16);
  v32 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController;
  v33 = v0[17];
  v0[44] = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController;
  v31 = v2;
  if (v2)
  {
    v3 = 0;
    v4 = v0[37];
    v5 = *(v4 + 16);
    v4 += 16;
    v30 = v5;
    v25 = v0[25];
    v26 = (v4 - 8);
    v27 = (v0[30] + 8);
    v29 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v28 = *(v4 + 56);
    while (1)
    {
      result = v30(v0[38], v29 + v3 * v28, v0[36]);
      v7 = *(v33 + v32);
      if (!v7)
      {
        break;
      }

      v8 = v0[31];

      TTRRemindersListHighlightTarget.TargetItem.item.getter();
      v9 = TTRRemindersListHighlightTarget.TargetItem.includesChildren.getter();
      v10 = sub_100503140(v8, v9 & 1);
      swift_beginAccess();
      sub_100058000(&unk_10076BBD0);
      Set.removeAll(where:)();
      swift_endAccess();
      swift_beginAccess();
      Set.removeAll(where:)();
      swift_endAccess();
      v11 = *(v7 + 56);
      v12 = *(v10 + 16);
      if (v12)
      {
        v34 = v7;
        v35 = v3;
        v13 = v10 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
        v14 = *(v25 + 72);
        v15 = *(v25 + 16);

        do
        {
          v17 = v0[26];
          v16 = v0[27];
          v18 = v0[24];
          v15(v16, v13, v18);
          sub_10058B6B8(v17, v16);
          (*(v25 + 8))(v17, v18);
          v13 += v14;
          --v12;
        }

        while (v12);

        v3 = v35;
        v7 = v34;
      }

      else
      {
      }

      *(v7 + 56) = v11;

      if (!*(v7 + 32))
      {
        goto LABEL_15;
      }

      ++v3;
      v19 = v0[38];
      v20 = v0[36];
      v21 = v0[31];
      v22 = v0[29];
      v23 = swift_task_alloc();
      *(v23 + 16) = v7;
      *(v23 + 24) = 7;

      TTRObservableViewModelCollection.updateAndPublishAll(using:)();

      (*v27)(v21, v22);
      (*v26)(v19, v20);
      if (v3 == v31)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_11:
    static Clock<>.continuous.getter();
    v24 = swift_task_alloc();
    v0[45] = v24;
    *v24 = v0;
    v24[1] = sub_10047FC90;

    return sub_100482668(1000000000000000000, 0, 0, 0, 1);
  }

  return result;
}

uint64_t sub_10047FC90()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  (*(v2[34] + 8))(v2[35], v2[33]);
  v3 = v2[41];
  v4 = v2[40];
  if (v0)
  {
    v5 = sub_10048013C;
  }

  else
  {
    v5 = sub_10047FE18;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_10047FE18()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[17];
  TTRRemindersListHighlightTarget.TargetItem.item.getter();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  (*(v3 + 8))(v1, v2);
  if (!*(v4 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = v0[28];
  v6 = v0[24];
  v7 = v0[25];

  v8 = sub_100495DBC();

  (*(v7 + 8))(v5, v6);
  if (v8)
  {
    v10 = v0[22];
    v9 = v0[23];
    v11 = v0[21];
    v12 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_viewModelState;
    swift_beginAccess();
    (*(v10 + 16))(v9, &v8[v12], v11);
    LOBYTE(v12) = TTRLazilyLoadedViewModelState.isValid.getter();
    (*(v10 + 8))(v9, v11);
    if (v12)
    {
      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v8);
    }
  }

  v13 = *(v0[17] + v0[44]);
  if (!v13)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  sub_100058000(&unk_10076BBD0);
  Set.removeAll(where:)();
  swift_endAccess();
  swift_beginAccess();
  Set.removeAll(where:)();
  *(v13 + 56) = &_swiftEmptySetSingleton;
  swift_endAccess();

  if (!*(v13 + 32))
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = swift_task_alloc();
  *(v14 + 16) = v13;
  *(v14 + 24) = 7;

  TTRObservableViewModelCollection.updateAndPublishAll(using:)();

  v15 = v0[1];

  v15();
}

uint64_t sub_10048013C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10048020C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004802DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 136) = a7;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a4;
  v8 = type metadata accessor for TTRRemindersListHighlightTarget();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 72) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 80) = v10;
  *(v7 + 88) = v9;

  return _swift_task_switch(sub_1004803D8, v10, v9);
}

uint64_t sub_1004803D8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(v0 + 96) = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  *(v0 + 104) = v7;
  *(v0 + 112) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for TTRRemindersListHighlightTarget.item(_:), v3);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_1004804FC;
  v9 = *(v0 + 64);
  v10 = *(v0 + 136);
  v11 = *(v0 + 40);

  return sub_10047A20C(v9, v11, v10);
}

uint64_t sub_1004804FC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_100480730;
  }

  else
  {
    v8 = sub_100480694;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100480694()
{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[4];
  v4 = v0[2];

  v1(v4, v3, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100480730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10048079C(uint64_t a1, UITableViewScrollPosition a2, int a3)
{
  v23 = a3;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = UICollectionViewScrollPosition.init(tableViewScrollPosition:)(a2);
  v22 = sub_100058000(&qword_1007845B0);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  (*(v7 + 16))(v9, a1, v6);
  type metadata accessor for MainActor();
  v15 = v3;
  v16 = static MainActor.shared.getter();
  v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = v16;
  *(v19 + 3) = &protocol witness table for MainActor;
  *(v19 + 4) = v15;
  (*(v7 + 32))(&v19[v17], v9, v6);
  v20 = &v19[v18];
  *v20 = v13;
  v20[8] = v23;
  sub_10008516C(0, 0, v12, &unk_1006408B0, v19);
  return Promise.__allocating_init(task:)();
}

uint64_t sub_1004809F0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v68 = a1;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100772140);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v64 - v17;
  __chkstk_darwin(v16);
  v20 = &v64 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.Item();
  v69 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  result = __chkstk_darwin(v22);
  v26 = &v64 - v25;
  v27 = *(a2 + 16);
  if (v27 != 1)
  {
    if (!v27)
    {
      v67 = v4;
      v28 = *(v68 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
      if (v28)
      {
        v29 = v28;
        TTRBoardColumnDiffableDataSource.columnItem.getter();

        v30 = v69;
        v31 = v21;
        if ((*(v69 + 48))(v20, 1, v21) == 1)
        {
          v32 = v20;
LABEL_11:
          sub_1000079B4(v32, &qword_100772140);
          return 0;
        }

        (*(v30 + 32))(v26, v20, v21);
        v43 = *(v67 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
        v44 = *(v67 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
        sub_10000C36C((v67 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v43);
        v45 = *(v30 + 16);
        v45(v18, v26, v31);
        (*(v30 + 56))(v18, 0, 1, v31);
        v46 = (*(*(v44 + 8) + 856))(v18, v43);
        sub_1000079B4(v18, &qword_100772140);
        if (!v46)
        {
          (*(v30 + 8))(v26, v31);
          return 0;
        }

        v47 = v46;
        sub_100058000(&qword_100772150);
        v48 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v49 = swift_allocObject();
        *(v49 + 1) = xmmword_10062D400;
        v45(&v49[v48], v26, v31);
        (*(v30 + 8))(v26, v31);
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_25;
    }

    return 0;
  }

  v64 = v24;
  v65 = v11;
  v66 = v9;
  v67 = v4;
  v33 = *(v4 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController);
  if (!v33)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_beginAccess();

  sub_100058000(&unk_10076BBD0);
  Set.removeAll(where:)();
  swift_endAccess();
  swift_beginAccess();
  Set.removeAll(where:)();
  swift_endAccess();
  v34 = *(v33 + 48);

  v35 = sub_1001CFC98(a2, v34)[2];

  if (v35)
  {
    return 0;
  }

  v36 = v21;
  v37 = v65;
  v38 = v66;
  v39 = v8;
  result = (*(v66 + 16))(v65, a2 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v8);
  v40 = *(v67 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (!v40)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v41 = v40;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();

  v42 = v69;
  if ((*(v69 + 48))(v15, 1, v21) == 1)
  {
    (*(v38 + 8))(v37, v8);
    v32 = v15;
    goto LABEL_11;
  }

  result = (*(v42 + 32))(v64, v15, v21);
  if (*(v67 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
  {

    v50 = v37;
    v51 = sub_100495DBC();

    if (!v51)
    {
      (*(v42 + 8))(v64, v21);
      (*(v38 + 8))(v50, v39);
      return 0;
    }

    [v51 convertPoint:v68 fromCoordinateSpace:{a3, a4}];
    v53 = v52;
    v55 = v54;
    v68 = v39;
    v56 = v38;
    v57 = *(v67 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v58 = *(v67 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
    sub_10000C36C((v67 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v57);
    v59 = v64;
    v60 = (*(*(v58 + 8) + 840))(v64, v51, _swiftEmptyArrayStorage, 0, v57, v53, v55);
    v49 = v61;
    v63 = v62;

    (*(v42 + 8))(v59, v36);
    (*(v56 + 8))(v50, v68);
    if (v60)
    {
      v47 = v60;
      if (v63)
      {
        sub_1003DE74C(v49, 1);
        *(v67 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_targetItemsForVisibleContextMenu) = _swiftEmptyArrayStorage;
        goto LABEL_15;
      }

LABEL_14:
      *(v67 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_targetItemsForVisibleContextMenu) = v49;
LABEL_15:

      return v47;
    }

    return 0;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10048112C(uint64_t a1, uint64_t a2)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter, v10);
  v4 = v11;
  v5 = v12;
  sub_10000C36C(v10, v11);
  v6 = [v2 parentViewController];
  if (!v6)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (!v7)
  {

    v6 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = *(v7 + 32);
LABEL_6:
  (*(*(v5 + 8) + 320))(a2, v6, v8, v2, v4);
  swift_unknownObjectRelease();
  return sub_100004758(v10);
}

uint64_t sub_100481230(uint64_t a1, uint64_t a2)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter, v10);
  v4 = v11;
  v5 = v12;
  sub_10000C36C(v10, v11);
  v6 = [v2 parentViewController];
  if (!v6)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (!v7)
  {

    v6 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = *(v7 + 24);
LABEL_6:
  (*(*(v5 + 8) + 328))(a2, v6, v8, v2, v4);
  swift_unknownObjectRelease();
  return sub_100004758(v10);
}

uint64_t sub_100481334(uint64_t a1, uint64_t a2)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter, v10);
  v4 = v11;
  v5 = v12;
  sub_10000C36C(v10, v11);
  v6 = [v2 parentViewController];
  if (!v6)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (!v7)
  {

    v6 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = *(v7 + 8);
LABEL_6:
  (*(*(v5 + 8) + 344))(a2, v6, v8, v2, v4);
  swift_unknownObjectRelease();
  return sub_100004758(v10);
}

void sub_100481438()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    sub_100058000(&unk_1007821D0);
    sub_10000E188(&unk_100784540, &unk_1007821D0);
    v4 = TTRRemindersBoardMainDiffableDataSource.items<A>(withIDs:)();

    v5 = (v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
    v6 = *(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v7 = v5[4];
    sub_10000C36C(v5, v6);
    (*(*(v7 + 8) + 520))(v4, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100481534()
{
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
  type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();

  TTRRemindersBoardItemCollapsedStates.toggleCollapsed(for:)();
}

uint64_t sub_1004815B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_100481620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v30 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&unk_100784660);
  TTRNormalizedItemLocationForInsertAt.parentItemID.getter();
  v15 = *(v12 + 48);
  v16 = v15(v10, 1, v11);
  v29 = a1;
  if (v16 == 1)
  {
    TTRNormalizedItemLocationForInsertAt.sectionID.getter();
    result = v15(v10, 1, v11);
    if (result != 1)
    {
      result = sub_1000079B4(v10, &unk_10076BB50);
    }
  }

  else
  {
    result = (*(v12 + 32))(v14, v10, v11);
  }

  v18 = *(v32 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (v18)
  {
    v19 = v18;
    TTRRemindersBoardMainDiffableDataSource.item(withID:)();

    v20 = v30;
    if ((*(v6 + 48))(v5, 1, v30) == 1)
    {
      (*(v12 + 8))(v14, v11);
      sub_1000079B4(v5, &qword_100772140);
      v21 = sub_100058000(&qword_100784670);
      return (*(*(v21 - 8) + 56))(v31, 1, 1, v21);
    }

    else
    {
      v22 = v28;
      (*(v6 + 32))(v28, v5, v20);
      v23 = v20;
      v24 = sub_100058000(&qword_100784670);
      v32 = *(v24 + 48);
      v25 = v31;
      (*(v6 + 16))(v31, v22, v23);
      inserted = TTRNormalizedItemLocationForInsertAt.unadjustedChildIndex.getter();
      (*(v6 + 8))(v22, v23);
      (*(v12 + 8))(v14, v11);
      *(v25 + v32) = inserted;
      return (*(*(v24 - 8) + 56))(v25, 0, 1, v24);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100481A68()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v63 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v63 - 8);
  __chkstk_darwin(v63);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v53 = &v46 - v12;
  v13 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem(0);
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = sub_100162DFC();
  if (!v18[2])
  {

    v41 = sub_10016283C();
    v42 = v41[2];
    if (v42)
    {
      v64 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v43 = v41 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v44 = *(v3 + 72);
      do
      {
        sub_10048927C(v43, v5, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
        v45 = *v5;
        sub_1004892E4(v5, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v43 += v44;
        --v42;
      }

      while (v42);
    }

LABEL_25:

    return;
  }

  v60 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource;
  v19 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (v19)
  {
    v64 = v18;
    v20 = v19;
    sub_100058000(&qword_100784678);
    sub_10000E188(&unk_100784680, &qword_100784678);
    v21 = TTRRemindersBoardMainDiffableDataSource.sortByItemVisualLocation<A, B>(_:itemID:)();

    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = 0;
      v59 = (v9 + 48);
      v50 = v9;
      v51 = (v9 + 32);
      v48 = (v9 + 8);
      v49 = (v9 + 16);
      v57 = _swiftEmptyArrayStorage;
      v58 = v22;
      v47 = v22 - 1;
      v56 = _swiftEmptyArrayStorage;
      do
      {
        v24 = v23;
        while (1)
        {
          if (v24 >= *(v21 + 16))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v25 = (*(v61 + 80) + 32) & ~*(v61 + 80);
          v26 = *(v61 + 72);
          sub_10048927C(v21 + v25 + v26 * v24, v17, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
          v27 = *(v1 + v60);
          if (!v27)
          {
            goto LABEL_29;
          }

          type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
          v28 = v27;
          TTRRemindersBoardMainDiffableDataSource.item(withID:)();

          if ((*v59)(v8, 1, v63) != 1)
          {
            break;
          }

          ++v24;
          sub_1004892E4(v17, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
          sub_1000079B4(v8, &qword_100772140);
          if (v58 == v24)
          {
            goto LABEL_25;
          }
        }

        v29 = v53;
        v30 = v63;
        v46 = *v51;
        v46(v53, v8, v63);
        (*v49)(v54, v29, v30);
        v31 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100547094(0, v31[2] + 1, 1, v31);
        }

        v32 = v31;
        v33 = v31[2];
        v57 = v32;
        v34 = v32[3];
        if (v33 >= v34 >> 1)
        {
          v57 = sub_100547094(v34 > 1, v33 + 1, 1, v57);
        }

        v35 = v46;
        v36 = v57;
        v57[2] = v33 + 1;
        v35(&v36[((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v33], v54, v63);
        sub_10048927C(v17, v52, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
        v37 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_100547400(0, v37[2] + 1, 1, v37);
        }

        v39 = v37[2];
        v38 = v37[3];
        v46 = (v39 + 1);
        if (v39 >= v38 >> 1)
        {
          v56 = sub_100547400(v38 > 1, v39 + 1, 1, v37);
        }

        else
        {
          v56 = v37;
        }

        v23 = v24 + 1;
        (*v48)(v53, v63);
        sub_1004892E4(v17, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
        v40 = v56;
        v56[2] = v46;
        sub_100489214(v52, v40 + v25 + v39 * v26, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
      }

      while (v47 != v24);
    }

    else
    {
      v56 = _swiftEmptyArrayStorage;
      v57 = _swiftEmptyArrayStorage;
    }

    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1004821C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem(0) + 20);
  v4 = *(type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0) + 28);
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

void sub_100482250(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView;
  v4 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView);
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v4 convertPoint:a1 fromCoordinateSpace:?];
  v6 = *(v1 + v3);
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v5;
  [v6 contentSize];
  v16.size.width = v8;
  v16.size.height = v9;
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  if (CGRectGetMaxX(v16) <= v7)
  {
    v10 = sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
    v11 = *(*v10 + 72);
    v12 = *(*v10 + 88);
    v13 = sub_10000C36C((*v10 + 48), v11);
    v15[3] = v11;
    v15[4] = v12;
    v14 = sub_1000317B8(v15);
    (*(*(v11 - 8) + 16))(v14, v13, v11);
    (*(v12 + 384))(1, 0, 0, v11, v12);
    sub_100004758(v15);
  }
}

uint64_t destroy for TTRIRemindersBoardMainViewController.CompletedHeaderViewState(id *a1)
{
}

uint64_t assignWithCopy for TTRIRemindersBoardMainViewController.CompletedHeaderViewState(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

id *assignWithTake for TTRIRemindersBoardMainViewController.CompletedHeaderViewState(id *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1004824A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRRemindersListHighlightTarget.TargetItem() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRRemindersListHighlightTarget() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10001AA3C;

  return sub_10047F410(a1, v10, v11, v12, v13, v1 + v6, v1 + v9, v14);
}

uint64_t sub_100482668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100482768, 0, 0);
}

uint64_t sub_100482768()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1004891CC(&qword_100784530, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1004891CC(&qword_100784538, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1004828F8;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1004828F8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100482AB4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100482AB4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100482B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v15 = &v52 - v13;
  v16 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dragAndDropController;
  v17 = *(a4 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dragAndDropController);
  v56 = v11;
  v58 = a1;
  if (v17)
  {
    v18 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
    swift_beginAccess();
    v19 = *(v9 + 24);
    v20 = v17;
    v19(&v17[v18], a1, v8);
    swift_endAccess();
LABEL_8:

    v31 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_chromelessBarsStateContributor;
    v32 = *(a4 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_chromelessBarsStateContributor);
    if (v32)
    {
      v33 = OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_columnID;
      swift_beginAccess();
      v34 = *(v9 + 24);

      v34(v32 + v33, v58, v8);
      swift_endAccess();

      return swift_unknownObjectWeakAssign();
    }

    v57 = a3;
    v35 = v56;
    result = (*(v9 + 16))(v56, v58, v8);
    v36 = *(a4 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
    if (v36)
    {
      type metadata accessor for TTRIBoardColumnChromelessBarsStateContributor();
      v37 = swift_allocObject();
      v38 = OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_stateChangeSubject;
      sub_100058000(&qword_10078C680);
      swift_allocObject();
      v39 = v36;
      *(v37 + v38) = PassthroughSubject.init()();
      v40 = (v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_contentSizeObservation);
      *v40 = 0u;
      v40[1] = 0u;
      *(v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_scrollOffsetObserver) = 0;
      (*(v9 + 32))(v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_columnID, v35, v8);
      v41 = (v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_chromelessBarsContributorConfiguration);
      *v41 = v39;
      v41[1] = 0x3FF0000000000000;
      v41[3] = 0;
      v41[4] = 0;
      v41[2] = 0;
      *(v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_isActive) = 1;
      *(a4 + v31) = v37;

      v60[0] = *(v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_chromelessBarsContributorConfiguration);
      v42 = v60[0];
      swift_getKeyPath();
      swift_allocObject();
      swift_weakInit();
      v43 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      v60[3] = type metadata accessor for NSKeyValueObservation();
      v60[0] = v43;
      v44 = OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_contentSizeObservation;
      swift_beginAccess();
      sub_10000D184(v60, v37 + v44, &qword_10076AE40);
      swift_endAccess();
      v45 = swift_allocObject();
      swift_weakInit();
      v46 = type metadata accessor for ScrollOffsetObserver();
      v47 = objc_allocWithZone(v46);
      v48 = &v47[OBJC_IVAR____TtC9RemindersP33_F0C3DF1C7E2DDC19EDE9BABCDF547B2B20ScrollOffsetObserver_scrollViewDidScroll];
      *v48 = sub_100489138;
      v48[1] = v45;
      v59.receiver = v47;
      v59.super_class = v46;
      v49 = objc_msgSendSuper2(&v59, "init");
      v50 = *(v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_scrollOffsetObserver);
      *(v37 + OBJC_IVAR____TtC9Reminders45TTRIBoardColumnChromelessBarsStateContributor_scrollOffsetObserver) = v49;
      v51 = v49;

      [v42 _addScrollViewScrollObserver:v51];

      return swift_unknownObjectWeakAssign();
    }

    goto LABEL_15;
  }

  v55 = a2;
  v53 = *(v9 + 16);
  result = v53(&v52 - v13, a1, v8, v14);
  v54 = OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView;
  v22 = *(a4 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_collectionView);
  if (!v22)
  {
    __break(1u);
    goto LABEL_14;
  }

  v57 = a3;
  v23 = *(a4 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dataSource);
  if (!v23)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = type metadata accessor for TTRIBoardColumnDragAndDropController();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_coordinator + 8] = 0;
  swift_unknownObjectWeakInit();
  (v53)(&v25[OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID], v15, v8);
  *&v25[OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView] = v22;
  *&v25[OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_dataSource] = v23;
  v61.receiver = v25;
  v61.super_class = v24;
  v26 = v22;
  v27 = v23;
  v28 = objc_msgSendSuper2(&v61, "init");
  (*(v9 + 8))(v15, v8);
  v29 = *(a4 + v16);
  *(a4 + v16) = v28;
  v20 = v28;

  *&v20[OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_coordinator + 8] = &off_100713A70;
  swift_unknownObjectWeakAssign();
  v30 = v54;
  result = *(a4 + v54);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [result setDragDelegate:v20];
  result = *(a4 + v30);
  a3 = v57;
  if (result)
  {
    [result setDropDelegate:v20];
    goto LABEL_8;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10048314C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTREditingStateOption.InputType() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10001AA3C;

  return sub_100479B50(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1004832AC()
{
  type metadata accessor for TTREditingStateOption.InputType();

  return sub_10047A104();
}

unint64_t sub_10048332C()
{
  result = qword_100784558;
  if (!qword_100784558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784558);
  }

  return result;
}

uint64_t sub_100483388(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10001AA38;

  return sub_1004802DC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1004834C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t))
{
  v169 = a5;
  v153 = a4;
  v165 = a2;
  v166 = a3;
  v151 = a1;
  v159 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_100058000(&unk_100784640);
  v167 = *(v164 - 8);
  __chkstk_darwin(v164);
  v163 = &v148 - v6;
  v7 = sub_100058000(&qword_100772140);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v156 = &v148 - v12;
  v13 = __chkstk_darwin(v11);
  v154 = &v148 - v14;
  __chkstk_darwin(v13);
  v16 = &v148 - v15;
  v17 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
  v18 = *(v17 - 8);
  v174 = v17;
  v175 = v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v148 - v22;
  v24 = sub_100058000(&unk_100784650);
  v25 = __chkstk_darwin(v24 - 8);
  v152 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v168 = &v148 - v27;
  v161 = sub_100058000(&unk_100781910);
  v28 = __chkstk_darwin(v161);
  v149 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v160 = &v148 - v30;
  v177 = type metadata accessor for TTRRemindersListViewModel.Item();
  v171 = *(v177 - 8);
  v31 = __chkstk_darwin(v177);
  v150 = &v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v170 = &v148 - v34;
  v35 = __chkstk_darwin(v33);
  v162 = &v148 - v36;
  v37 = __chkstk_darwin(v35);
  v172 = &v148 - v38;
  __chkstk_darwin(v37);
  v173 = &v148 - v39;
  v40 = sub_100058000(&unk_100784660);
  v41 = *(v40 - 8);
  v42 = __chkstk_darwin(v40);
  v155 = &v148 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v45 = &v148 - v44;
  v46 = sub_100058000(&qword_100769548);
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = &v148 - v48;
  (*(v47 + 16))(&v148 - v48, v169, v46);
  v50 = (*(v47 + 88))(v49, v46);
  if (v50 == enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    (*(v47 + 96))(v49, v46);
    (*(v41 + 32))(v45, v49, v40);
    v51 = v168;
    v52 = v176;
    sub_100481620(v45, v168);
    v53 = sub_100058000(&qword_100784670);
    if ((*(*(v53 - 8) + 48))(v51, 1, v53) == 1)
    {
      (*(v41 + 8))(v45, v40);
      sub_1000079B4(v51, &unk_100784650);
      return 0;
    }

    v163 = v45;
    v164 = v41;
    v167 = v40;
    v68 = *(v51 + *(v53 + 48));
    v69 = v161;
    v70 = *(v161 + 48);
    v71 = (v171 + 32);
    v72 = *(v171 + 32);
    v73 = v160;
    v74 = v51;
    v75 = v177;
    v72(v160, v74, v177);
    *&v73[v70] = v68;
    v168 = *&v73[*(v69 + 48)];
    v169 = v72;
    v76 = v173;
    v77 = v73;
    v78 = v75;
    v170 = v71;
    v72(v173, v77, v75);
    v178[0] = v165;

    sub_1000815A4(v79);
    v80 = v178[0];
    v81 = *(v178[0] + 16);
    if (v81)
    {
      v82 = 0;
      v83 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource;
      v84 = (v171 + 48);
      v85 = _swiftEmptyArrayStorage;
      while (v82 < *(v80 + 16))
      {
        sub_10048927C(v80 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v82, v23, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
        v87 = *(v176 + v83);
        if (!v87)
        {
          goto LABEL_54;
        }

        v88 = v87;
        TTRRemindersBoardMainDiffableDataSource.item(withID:)();

        sub_1004892E4(v23, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
        v89 = v177;
        if ((*v84)(v16, 1, v177) == 1)
        {
          sub_1000079B4(v16, &qword_100772140);
        }

        else
        {
          v169(v172, v16, v89);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_100547094(0, *(v85 + 2) + 1, 1, v85);
          }

          v91 = *(v85 + 2);
          v90 = *(v85 + 3);
          if (v91 >= v90 >> 1)
          {
            v85 = sub_100547094(v90 > 1, v91 + 1, 1, v85);
          }

          *(v85 + 2) = v91 + 1;
          v89 = v177;
          v169(&v85[((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v91], v172, v177);
        }

        v86 = v173;
        if (v81 == ++v82)
        {

          v98 = *(v176 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
          v97 = *(v176 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
          sub_10000C36C((v176 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v98);
          v99 = v89;
          v100 = v171;
          v101 = v154;
          (*(v171 + 16))(v154, v86, v89);
          (*(v100 + 56))(v101, 0, 1, v89);
          v102 = (*(*(v97 + 8) + 576))(v85, v101, v168, v98);

          sub_1000079B4(v101, &qword_100772140);
          (*(v100 + 8))(v86, v99);
          (*(v164 + 8))(v163, v167);
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v116 = v76;
    v118 = *(v52 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v117 = *(v52 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
    sub_10000C36C((v52 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v118);
    (*(*(v117 + 8) + 616))(v178, v153, v118);
    v119 = v179;
    v120 = v180;
    v121 = v171;
    sub_10000C36C(v178, v179);
    v122 = (*(v120 + 8))(v116, v168, v119, v120);
    (*(v121 + 8))(v116, v78);
    (*(v164 + 8))(v163, v167);
  }

  else
  {
    v54 = v176;
    if (v50 == enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
    {
      (*(v47 + 96))(v49, v46);
      v56 = v163;
      v55 = v164;
      (*(v167 + 32))(v163, v49, v164);
      v173 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource;
      v57 = *(v54 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
      if (!v57)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v58 = v57;
      v59 = v157;
      TTRNormalizedItemLocation.itemID.getter();
      v60 = v156;
      TTRRemindersBoardMainDiffableDataSource.item(withID:)();

      v61 = v59;
      v62 = v60;
      (*(v158 + 8))(v61, v159);
      v63 = v171;
      v64 = v60;
      v65 = v177;
      v172 = *(v171 + 48);
      v66 = (v172)(v64, 1, v177);
      v67 = v162;
      if (v66 == 1)
      {
        (*(v167 + 8))(v56, v55);
        sub_1000079B4(v62, &qword_100772140);
        return 0;
      }

      v104 = v63;
      v169 = *(v63 + 32);
      v169(v162, v62, v65);
      v178[0] = v165;

      sub_1000815A4(v105);
      v106 = v178[0];
      v107 = *(v178[0] + 16);
      if (v107)
      {
        v108 = 0;
        v109 = _swiftEmptyArrayStorage;
        while (v108 < *(v106 + 16))
        {
          sub_10048927C(v106 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v108, v21, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
          v110 = *&v173[v176];
          if (!v110)
          {
            goto LABEL_55;
          }

          v111 = v110;
          TTRRemindersBoardMainDiffableDataSource.item(withID:)();

          sub_1004892E4(v21, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
          v112 = v177;
          if ((v172)(v10, 1, v177) == 1)
          {
            sub_1000079B4(v10, &qword_100772140);
          }

          else
          {
            v169(v170, v10, v112);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v109 = sub_100547094(0, v109[2] + 1, 1, v109);
            }

            v114 = v109[2];
            v113 = v109[3];
            if (v114 >= v113 >> 1)
            {
              v109 = sub_100547094(v113 > 1, v114 + 1, 1, v109);
            }

            v109[2] = v114 + 1;
            v115 = v109 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v114;
            v112 = v177;
            v169(v115, v170, v177);
          }

          if (v107 == ++v108)
          {

            v124 = *(v176 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
            v123 = *(v176 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
            sub_10000C36C((v176 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v124);
            v125 = *(*(v123 + 8) + 592);
            v126 = v162;
            v102 = v125(v109, v162, v124);

            (*(v171 + 8))(v126, v112);
            (*(v167 + 8))(v163, v164);
LABEL_40:
            if (v102)
            {
              return 3;
            }

            else
            {
              return 0;
            }
          }
        }

        goto LABEL_53;
      }

      v138 = v67;

      v140 = *(v176 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v139 = *(v176 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C((v176 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v140);
      (*(*(v139 + 8) + 616))(v178, v153, v140);
      v141 = v179;
      v142 = v180;
      sub_10000C36C(v178, v179);
      v122 = (*(v142 + 16))(v138, v141, v142);
      (*(v104 + 8))(v138, v177);
      (*(v167 + 8))(v163, v164);
    }

    else
    {
      if (v50 != enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
      {
        if (v50 == enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
        {
          return 0;
        }

        goto LABEL_57;
      }

      (*(v47 + 96))(v49, v46);
      v92 = v41;
      v93 = v155;
      (*(v41 + 32))(v155, v49, v40);
      v94 = v152;
      v95 = v54;
      sub_100481620(v93, v152);
      v96 = sub_100058000(&qword_100784670);
      if ((*(*(v96 - 8) + 48))(v94, 1, v96) == 1)
      {
        (*(v41 + 8))(v93, v40);
        sub_1000079B4(v94, &unk_100784650);
        return 0;
      }

      v167 = v40;
      v127 = *(v94 + *(v96 + 48));
      v128 = v161;
      v129 = *(v161 + 48);
      v130 = *(v171 + 32);
      v131 = v149;
      v132 = v94;
      v133 = v177;
      v130(v149, v132, v177);
      *&v131[v129] = v127;
      v134 = *&v131[*(v128 + 48)];
      v135 = v150;
      v130(v150, v131, v133);
      if (v151)
      {
        v136 = [v151 items];
        sub_100003540(0, &qword_10076BAC0);
        v137 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v137 = _swiftEmptyArrayStorage;
      }

      v144 = *(v95 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v143 = *(v95 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C((v95 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v144);
      (*(*(v143 + 8) + 616))(v178, v137, v144);

      v145 = v179;
      v146 = v180;
      sub_10000C36C(v178, v179);
      v122 = (*(v146 + 32))(v135, v134, v145, v146);
      (*(v171 + 8))(v135, v177);
      (*(v92 + 8))(v155, v167);
    }
  }

  if (v122)
  {
    v147 = 2;
  }

  else
  {
    v147 = 0;
  }

  sub_100004758(v178);
  return v147;
}

void sub_100484754()
{
  v1 = v0;
  v2 = sub_100058000(&qword_1007845B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v32 = type metadata accessor for TTRIRemindersBoardDragItemInfo(0);
  v26 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v34 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController);
  if (!v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();

  sub_100058000(&unk_10076BBD0);
  Set.removeAll(where:)();
  swift_endAccess();
  swift_beginAccess();
  Set.removeAll(where:)();
  swift_endAccess();
  v9 = *(v8 + 48);

  v33 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource;
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (v10)
  {
    v35 = v9;
    sub_10000E188(&unk_100772700, &unk_10076BBD0);
    v11 = v10;
    v12 = TTRRemindersBoardMainDiffableDataSource.sortByItemVisualLocation<A, B>(_:itemID:)();

    v30 = *(v12 + 16);
    if (!v30)
    {
LABEL_15:

      return;
    }

    v13 = 0;
    v28 = v4;
    v29 = v34 + 16;
    v14 = (v34 + 8);
    v15 = v27;
    v16 = (v26 + 48);
    v17 = _swiftEmptyArrayStorage;
    v25 = v1;
    v18 = v4;
    while (v13 < *(v12 + 16))
    {
      (*(v34 + 16))(v7, v12 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v13, v15);
      v19 = *(v1 + v33);
      if (!v19)
      {
        goto LABEL_17;
      }

      v20 = v1;
      v21 = v15;
      v22 = v19;
      sub_100550EB8(v7, v18);

      (*v14)(v7, v21);
      if ((*v16)(v18, 1, v32) == 1)
      {
        v15 = v21;
        sub_1000079B4(v18, &qword_1007845B8);
        v1 = v20;
      }

      else
      {
        sub_100489214(v18, v31, type metadata accessor for TTRIRemindersBoardDragItemInfo);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1005472FC(0, v17[2] + 1, 1, v17);
        }

        v24 = v17[2];
        v23 = v17[3];
        if (v24 >= v23 >> 1)
        {
          v17 = sub_1005472FC(v23 > 1, v24 + 1, 1, v17);
        }

        v17[2] = v24 + 1;
        sub_100489214(v31, v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, type metadata accessor for TTRIRemindersBoardDragItemInfo);
        v1 = v25;
        v15 = v27;
      }

      if (v30 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

void sub_100484C34()
{
  v1 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (!v8)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v9 = v8;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000079B4(v3, &unk_100771B10);
    return;
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [v11 cellForItemAtIndexPath:isa];

  (*(v5 + 8))(v7, v4);
  if (v13)
  {
    type metadata accessor for TTRIBoardColumnCollectionViewCell();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = *(v14 + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_dragAndDropController);
    }

    else
    {
    }
  }
}

id sub_100484E8C(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v26 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  __chkstk_darwin(v26);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 isEditing];
  if (!result)
  {
    return result;
  }

  v27 = v16;
  v20 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource];
  if (!v20)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();

  v22 = v27;
  if ((*(v27 + 48))(v14, 1, v15) == 1)
  {
    return sub_1000079B4(v14, &qword_100772140);
  }

  result = (*(v22 + 32))(v18, v14, v15);
  v23 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController];
  if (!v23)
  {
    goto LABEL_15;
  }

  (*(v6 + 16))(v9, v28, v5);
  swift_beginAccess();

  sub_10058B6B8(v11, v9);
  swift_endAccess();
  result = (*(v6 + 8))(v11, v5);
  if (!*(v23 + 32))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __chkstk_darwin(result);
  *(&v26 - 2) = v23;
  *(&v26 - 1) = 0;

  TTRObservableViewModelCollection.updateAndPublishAll(using:)();

  if (!*&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_automaticSubtaskSelectionController])
  {
LABEL_17:
    __break(1u);
    return result;
  }

  (*(v27 + 16))(v4, v18, v15);
  swift_storeEnumTagMultiPayload();

  sub_100069304(v4);

  sub_1004892E4(v4, type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState);
  v24 = [v2 parentViewController];
  if (v24)
  {
    v25 = v24;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10037DD70(1, 0);
      sub_10037FFC0();
    }
  }

  return (*(v27 + 8))(v18, v15);
}

id sub_100485300(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isEditing];
  if (!result)
  {
    return result;
  }

  v18 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource];
  if (!v18)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1000079B4(v12, &qword_100772140);
  }

  result = (*(v14 + 32))(v16, v12, v13);
  v20 = *&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController];
  if (!v20)
  {
    goto LABEL_15;
  }

  swift_beginAccess();

  sub_1000E992C(a1, v9);
  swift_endAccess();
  result = sub_1000079B4(v9, &unk_10076BB50);
  if (!*(v20 + 32))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __chkstk_darwin(result);
  *(&v23 - 2) = v20;
  *(&v23 - 1) = 0;

  TTRObservableViewModelCollection.updateAndPublishAll(using:)();

  if (!*&v2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_automaticSubtaskSelectionController])
  {
LABEL_17:
    __break(1u);
    return result;
  }

  (*(v14 + 16))(v6, v16, v13);
  swift_storeEnumTagMultiPayload();

  sub_100069304(v6);

  sub_1004892E4(v6, type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState);
  v21 = [v2 parentViewController];
  if (v21)
  {
    v22 = v21;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10037DD70(1, 0);
      sub_10037FFC0();
    }
  }

  return (*(v14 + 8))(v16, v13);
}

void sub_1004856FC()
{
  v1 = sub_100058000(qword_100784690);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  UIViewController.endFirstResponderEditing()();
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_automaticSubtaskSelectionController);
  if (v4)
  {
    type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
    swift_storeEnumTagMultiPayload();
    v5 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(0);
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = OBJC_IVAR____TtC9Reminders52TTRIRemindersListAutomaticSubtaskSelectionController_currentMultipleSelectionInteractionSession;
    swift_beginAccess();

    sub_10000D184(v3, v4 + v6, qword_100784690);
    swift_endAccess();

    v7 = (v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v9 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
    sub_10000C36C(v7, v8);
    (*(*(v9 + 8) + 352))(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10048586C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item.BoardViewCasesInItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (!v13)
  {
    __break(1u);
    goto LABEL_25;
  }

  v14 = v13;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();

  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v12, v8, v9);
    TTRRemindersListViewModel.Item.boardViewCasesOnly.getter();
    v15 = (*(v3 + 88))(v5, v2);
    if (v15 == enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.section(_:))
    {
      (*(v10 + 8))(v12, v9);
      (*(v3 + 8))(v5, v2);
      return 0;
    }

    if (v15 != enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.reminder(_:) && v15 != enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.uncommittedReminder(_:) && v15 != enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.placeholderReminder(_:))
    {
      if (v15 == enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.unknown(_:))
      {
        (*(v10 + 8))(v12, v9);
        return 0;
      }

LABEL_26:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v3 + 8))(v5, v2);
    if (*(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
    {

      v18 = sub_100495DBC();

      if (v18)
      {
        v19 = v18;
        v20 = UIView.firstResponderDescendant.getter();

        (*(v10 + 8))(v12, v9);
        if (v20)
        {

          return 0;
        }
      }

      else
      {
        (*(v10 + 8))(v12, v9);
      }

      return 1;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1000079B4(v8, &qword_100772140);
  return 0;
}

void sub_100485C10()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (!v9)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(v4, &qword_100772140);
    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  if (!*(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
  {
    goto LABEL_13;
  }

  v11 = sub_100495DBC();

  if (v11)
  {
    v12 = [v11 contentView];
    type metadata accessor for TTRIBoardReminderCellContentView();
    v13 = swift_dynamicCastClass();
    if (!v13)
    {

      goto LABEL_10;
    }

    if (*(v13 + qword_100786CF0))
    {
      v19[15] = 4;
      __chkstk_darwin(v13);
      *&v19[-16] = v14;

      v15 = TTRGridViewPredefinedContentPopulator.makeViewHiddenOnRemoval(for:createIfNeeded:)();

      v16 = (v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
      v17 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v18 = v16[4];
      sub_10000C36C(v16, v17);
      (*(*(v18 + 8) + 120))(v8, v15, v17);

      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    return;
  }

LABEL_10:
  (*(v6 + 8))(v8, v5);
}

void sub_100485F04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (!v12)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &qword_100772140);
    return;
  }

  (*(v9 + 32))(v11, v7, v8);
  if (!*(v3 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController))
  {
    goto LABEL_19;
  }

  v14 = sub_100495DBC();

  if (!v14)
  {
    (*(v9 + 8))(v11, v8);
    return;
  }

  sub_10000B0D8(v3 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter, v29);
  v15 = v30;
  v16 = v31;
  sub_10000C36C(v29, v30);
  v17 = [v14 contentView];
  type metadata accessor for TTRIBoardReminderCellContentView();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

    v22 = 0;
    v23 = 0;
LABEL_17:
    (*(*(v16 + 8) + 152))(v11, v22, v23, a2, v15);

    (*(v9 + 8))(v11, v8);
    sub_100004758(v29);
    return;
  }

  v27 = v16;
  if (*(v18 + qword_100786CF0))
  {
    v26 = a2;
    v28 = 2;

    v19 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

    if (v19)
    {
      type metadata accessor for TTRIReminderTitleTextView();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = [v20 attributedText];

        if (v21)
        {
LABEL_16:

          v24 = [v21 string];
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v25;

          a2 = v26;
          v16 = v27;
          goto LABEL_17;
        }
      }

      else
      {
      }
    }

    v21 = [objc_allocWithZone(NSAttributedString) init];
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

void sub_1004862A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24];
  v7 = *&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32];
  sub_10000C36C(&v3[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter], v6);
  (*(*(v7 + 8) + 48))(a2, a1, v6);
  v8 = [v3 parentViewController];
  if (v8)
  {
    v9 = v8;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v10 = *&v9[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator];
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

  [v10 impactOccurred];

  v11 = [v3 parentViewController];
  if (v11)
  {
    v14 = v11;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v12 = *&v14[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator];

      [v12 prepare];
      v13 = v12;
    }

    else
    {
      v13 = v14;
    }
  }
}

uint64_t sub_100486448(uint64_t a1)
{
  v2 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem(0);
  v241 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v242 = (&v240 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v256 = sub_100058000(&unk_100784640);
  v259 = *(v256 - 8);
  __chkstk_darwin(v256);
  v255 = &v240 - v4;
  v5 = sub_100058000(&qword_1007818D8);
  __chkstk_darwin(v5 - 8);
  *&v265 = &v240 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v272 = (&v240 - v8);
  v282 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  *&v258 = *(v282 - 8);
  __chkstk_darwin(v282);
  v269 = &v240 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v274 = &v240 - v11;
  __chkstk_darwin(v12);
  v252 = &v240 - v13;
  __chkstk_darwin(v14);
  *&v264 = &v240 - v15;
  __chkstk_darwin(v16);
  v277 = &v240 - v17;
  __chkstk_darwin(v18);
  v271 = &v240 - v19;
  v20 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v20 - 8);
  v268 = (&v240 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v276 = &v240 - v23;
  __chkstk_darwin(v24);
  v273 = (&v240 - v25);
  v280 = type metadata accessor for IndexPath();
  v250 = *(v280 - 8);
  __chkstk_darwin(v280);
  v260 = &v240 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v263 = &v240 - v28;
  __chkstk_darwin(v29);
  v270 = &v240 - v30;
  v279 = type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem(0);
  v244 = *(v279 - 8);
  __chkstk_darwin(v279);
  v261 = (&v240 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v34 = (&v240 - v33);
  v35 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v35 - 8);
  v251 = &v240 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v246 = &v240 - v38;
  v39 = sub_100058000(&unk_100784650);
  __chkstk_darwin(v39 - 8);
  v245 = &v240 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v240 - v42;
  v254 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v254);
  v243 = &v240 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v253 = &v240 - v46;
  v47 = type metadata accessor for TTRRemindersListViewModel.Item();
  v262 = *(v47 - 8);
  __chkstk_darwin(v47);
  v247 = &v240 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v275 = &v240 - v50;
  __chkstk_darwin(v51);
  v281 = &v240 - v52;
  __chkstk_darwin(v53);
  v257 = &v240 - v54;
  v55 = sub_100058000(&unk_100784660);
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v249 = &v240 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v240 - v59;
  v61 = sub_100058000(&qword_100769548);
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v64 = &v240 - v63;
  sub_10016324C(&v240 - v63);
  result = (*(v62 + 88))(v64, v61);
  v278 = a1;
  v266 = v47;
  if (result != enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    v248 = v55;
    if (result == enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
    {
      (*(v62 + 96))(v64, v61);
      v70 = v255;
      v71 = v256;
      result = (*(v259 + 32))(v255, v64, v256);
      v61 = v267;
      v72 = *(v267 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
      if (!v72)
      {
        goto LABEL_85;
      }

      v73 = v72;
      v56 = v252;
      TTRNormalizedItemLocation.itemID.getter();
      v64 = v251;
      TTRRemindersBoardMainDiffableDataSource.item(withID:)();

      v62 = v258 + 8;
      v55 = v282;
      v271 = *(v258 + 8);
      (v271)(v56, v282);
      a1 = v262;
      v74 = (*(v262 + 48))(v64, 1, v47);
      v34 = v278;
      if (v74 == 1)
      {
        (*(v259 + 8))(v70, v71);
        v68 = &qword_100772140;
        v69 = v64;
        return sub_1000079B4(v69, v68);
      }
    }

    else
    {
      if (result == enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
      {
        (*(v62 + 96))(v64, v61);
        v131 = v249;
        v132 = v248;
        (*(v56 + 32))(v249, v64, v248);
        v43 = v245;
        v133 = v267;
        sub_100481620(v131, v245);
        v134 = sub_100058000(&qword_100784670);
        if ((*(*(v134 - 8) + 48))(v43, 1, v134) == 1)
        {
          (*(v56 + 8))(v131, v132);
          goto LABEL_4;
        }

        v207 = *&v43[*(v134 + 48)];
        v208 = v254;
        v209 = *(v254 + 48);
        v210 = v262;
        v211 = *(v262 + 32);
        v212 = v243;
        v211(v243, v43, v47);
        *&v212[v209] = v207;
        v213 = *&v212[*(v208 + 48)];
        v211(v247, v212, v47);
        v214 = sub_10016283C();
        v215 = v214[2];
        if (v215)
        {
          v282 = v213;
          v284 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v216 = v214 + ((*(v241 + 80) + 32) & ~*(v241 + 80));
          v217 = *(v241 + 72);
          v218 = v242;
          do
          {
            sub_10048927C(v216, v218, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
            v219 = *v218;
            sub_1004892E4(v218, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.DropItem);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v216 += v217;
            --v215;
          }

          while (v215);

          v220 = v284;
          v133 = v267;
          v221 = v249;
          v213 = v282;
        }

        else
        {

          v220 = _swiftEmptyArrayStorage;
          v221 = v249;
        }

        v234 = *(v133 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
        v235 = *(v133 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
        sub_10000C36C((v133 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v234);
        (*(*(v235 + 8) + 616))(&v284, v220, v234);

        v236 = v285;
        v237 = v286;
        sub_10000C36C(&v284, v285);
        v238 = v247;
        (*(v237 + 72))(v247, v213, v236, v237);
        (*(v210 + 8))(v238, v266);
        (*(v56 + 8))(v221, v248);
        return sub_100004758(&v284);
      }

      if (result == enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
      {
        return result;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    (*(a1 + 32))(v275, v64, v47);
    v99 = v34;
    sub_100481A68();
    v171 = v170;
    v173 = v172;
    if ((v174 & 1) == 0)
    {
      v222 = (v61 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
      v223 = *(v61 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v224 = *(v61 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C(v222, v223);
      v225 = (*(*(v224 + 8) + 608))(v173, v275, v223);

      if (v225)
      {
        v226 = *(v171 + 16);
        if (v226)
        {
          v227 = v171 + ((*(v244 + 80) + 32) & ~*(v244 + 80));
          v228 = *(v244 + 72);
          v280 = v171;
          v281 = v228;
          v229 = v271;
          v230 = v261;
          do
          {
            sub_10048927C(v227, v230, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
            v231 = *v230;
            v232 = v230 + *(v279 + 20);
            v233 = *(type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0) + 28);
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
            sub_100164AF8(v231, &v232[v233], v56);
            v230 = v261;
            (v229)(v56, v282);
            sub_1004892E4(v230, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
            v227 += v281;
            --v226;
          }

          while (v226);
        }
      }

      (*(v262 + 8))(v275, v266);
      return (*(v259 + 8))(v255, v256);
    }

    v175 = (v61 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
    v176 = *(v61 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v177 = *(v61 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
    sub_10000C36C(v175, v176);
    (*(*(v177 + 8) + 616))(&v284, v171, v176);
    sub_100489180(v171, v173, 1);
    v179 = v285;
    v178 = v286;
    sub_10000C36C(&v284, v285);
    v180 = (*(v178 + 56))(v275, v179, v178);
    v93 = v180;
    if (v180 >> 62)
    {
      goto LABEL_83;
    }

    result = *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_46:
    v182 = v280;
    v183 = v271;
    v184 = v275;
    if (!result)
    {
      goto LABEL_72;
    }

    if (result >= 1)
    {
      v185 = 0;
      v186 = *(v99 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_column);
      v276 = (v93 & 0xC000000000000001);
      v277 = v186;
      v273 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_dataSource;
      v272 = (v250 + 48);
      v270 = (v250 + 32);
      v267 = (v250 + 8);
      *&v265 = v258 + 16;
      *&v181 = 136315138;
      v264 = v181;
      v281 = v93;
      v279 = result;
      do
      {
        if (v276)
        {
          v188 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v188 = *(v93 + 8 * v185 + 32);
        }

        v189 = v188;
        v190 = v274;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        v191 = v268;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
        v192 = v191;
        if ((*v272)(v191, 1, v182) == 1)
        {
          sub_1000079B4(v191, &unk_100771B10);
          if (qword_100766F88 != -1)
          {
            swift_once();
          }

          v193 = type metadata accessor for Logger();
          sub_100003E30(v193, qword_10076FCE0);
          v194 = v269;
          (*v265)(v269, v190, v55);
          v195 = Logger.logObject.getter();
          v196 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v195, v196))
          {
            v197 = swift_slowAlloc();
            v198 = swift_slowAlloc();
            v283 = v198;
            *v197 = v264;
            sub_1004891CC(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID);
            v199 = dispatch thunk of CustomStringConvertible.description.getter();
            v201 = v200;
            v202 = v62;
            v203 = v271;
            (v271)(v269, v282);
            v204 = sub_100004060(v199, v201, &v283);
            v190 = v274;

            *(v197 + 4) = v204;
            _os_log_impl(&_mh_execute_header, v195, v196, "TTRIRemindersBoardDropCommitCoordinator: row for the given item doesn't exist. {itemID: %s}", v197, 0xCu);
            sub_100004758(v198);

            v55 = v282;

            v183 = v203;
            v62 = v202;
          }

          else
          {

            v183 = v271;
            (v271)(v194, v55);
          }

          v182 = v280;
        }

        else
        {
          v187 = v260;
          (*v270)(v260, v192, v182);
          sub_100164774(v189, v187);
          (*v267)(v187, v182);
        }

        v184 = v275;
        ++v185;
        (v183)(v190, v55);
        v93 = v281;
      }

      while (v279 != v185);
LABEL_72:

      (*(v262 + 8))(v184, v266);
      (*(v259 + 8))(v255, v256);
      return sub_100004758(&v284);
    }

    __break(1u);
LABEL_85:
    __break(1u);
    return result;
  }

  (*(v62 + 96))(v64, v61);
  (*(v56 + 32))(v60, v64, v55);
  v66 = v267;
  sub_100481620(v60, v43);
  v67 = sub_100058000(&qword_100784670);
  if ((*(*(v67 - 8) + 48))(v43, 1, v67) == 1)
  {
    (*(v56 + 8))(v60, v55);
LABEL_4:
    v68 = &unk_100784650;
    v69 = v43;
    return sub_1000079B4(v69, v68);
  }

  v255 = v60;
  v256 = v56;
  v248 = v55;
  v75 = *&v43[*(v67 + 48)];
  v76 = v254;
  v77 = *(v254 + 48);
  v78 = (v262 + 32);
  v79 = *(v262 + 32);
  v80 = v253;
  v79(v253, v43, v47);
  *&v80[v77] = v75;
  v81 = *&v80[*(v76 + 48)];
  v82 = v257;
  v274 = v79;
  v275 = v78;
  v79(v257, v80, v47);
  v83 = v278;
  sub_100481A68();
  v85 = v84;
  v87 = v86;
  if (v88)
  {
    v90 = *(v66 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
    v89 = *(v66 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
    sub_10000C36C((v66 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v90);
    (*(*(v89 + 8) + 616))(&v284, v85, v90);
    sub_100489180(v85, v87, 1);
    v91 = v285;
    v92 = v286;
    sub_10000C36C(&v284, v285);
    v94 = (*(v92 + 48))(v82, v81, v91, v92);
    v55 = 0;
    v95 = *(v94 + 16);
    v268 = OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_column;
    v267 = (v250 + 48);
    v261 = (v250 + 32);
    v260 = OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator;
    v259 = v250 + 8;
    v269 = (v258 + 8);
    v273 = (v262 + 8);
    v96 = &unk_10063E550;
    v262 = v258 + 16;
    *&v97 = 136315138;
    v258 = v97;
    v98 = v265;
    v62 = v272;
    v99 = v277;
    v270 = v95;
    v271 = v94;
    while (1)
    {
      if (v55 == v95)
      {
        v105 = sub_100058000(&unk_1007818F0);
        (*(*(v105 - 8) + 56))(v98, 1, 1, v105);
        v279 = v95;
      }

      else
      {
        if ((v55 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          v239 = v93;
          result = _CocoaArrayWrapper.endIndex.getter();
          v93 = v239;
          goto LABEL_46;
        }

        if (v55 >= *(v94 + 16))
        {
          goto LABEL_82;
        }

        v106 = sub_100058000(&unk_1007818F0);
        v107 = *(v106 - 8);
        sub_10000794C(v94 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v55, v98, &unk_1007818F0);
        v279 = v55 + 1;
        (*(v107 + 56))(v98, 0, 1, v106);
        v62 = v272;
      }

      sub_100016588(v98, v62, &qword_1007818D8);
      v108 = v96;
      v109 = sub_100058000(&unk_1007818F0);
      if ((*(*(v109 - 8) + 48))(v62, 1, v109) == 1)
      {

        (*v273)(v257, v47);
        (*(v256 + 8))(v255, v248);
        return sub_100004758(&v284);
      }

      v110 = *v62;
      v111 = v47;
      (v274)(v281, v62 + *(v109 + 48), v47);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      v112 = v83;
      v113 = v276;
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
      v114 = v113;
      v115 = v280;
      if ((*v267)(v113, 1, v280) == 1)
      {
        sub_1000079B4(v113, &unk_100771B10);
        v116 = v282;
        if (qword_100766F88 != -1)
        {
          swift_once();
        }

        v117 = type metadata accessor for Logger();
        sub_100003E30(v117, qword_10076FCE0);
        v118 = v264;
        (*v262)(v264, v99, v116);
        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v283 = v122;
          *v121 = v258;
          sub_1004891CC(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID);
          v123 = dispatch thunk of CustomStringConvertible.description.getter();
          v125 = v124;
          v126 = v118;
          v127 = *v269;
          (*v269)(v126, v282);
          v128 = sub_100004060(v123, v125, &v283);
          v62 = v272;

          *(v121 + 4) = v128;
          _os_log_impl(&_mh_execute_header, v119, v120, "TTRIRemindersBoardDropCommitCoordinator: row for the given item doesn't exist. {itemID: %s}", v121, 0xCu);
          sub_100004758(v122);
          v129 = v282;

          v116 = v129;
        }

        else
        {

          v130 = v118;
          v127 = *v269;
          (*v269)(v130, v116);
        }

        v95 = v270;
        v94 = v271;
        v99 = v277;
        v127(v277, v116);
        v83 = v278;
        v47 = v266;
        v98 = v265;
      }

      else
      {
        v100 = v263;
        (*v261)(v263, v114, v115);
        v101 = *&v260[v112];
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v103 = v101;
        v99 = v277;
        v104 = [v103 dropItem:v110 toItemAtIndexPath:isa];
        swift_unknownObjectRelease();

        (*v259)(v100, v115);
        (*v269)(v99, v282);
        v83 = v112;
        v47 = v111;
        v95 = v270;
        v94 = v271;
      }

      (*v273)(v281, v47);
      v96 = v108;
      v55 = v279;
    }
  }

  v135 = *(v66 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
  v136 = v47;
  v277 = *(v66 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
  v281 = sub_10000C36C((v66 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v135);
  v137 = v262;
  v138 = v81;
  v139 = v246;
  (*(v262 + 16))(v246, v82, v136);
  (*(v137 + 56))(v139, 0, 1, v136);
  (*(*(v277 + 1) + 600))(v87, v139, v138, 0, 0, v135);

  sub_1000079B4(v139, &qword_100772140);
  v141 = *(v85 + 16);
  v142 = v85;
  v143 = v282;
  if (v141)
  {
    v144 = (*(v244 + 80) + 32) & ~*(v244 + 80);
    *&v264 = v142;
    v145 = v142 + v144;
    v281 = *(v83 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_column);
    v276 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_dataSource;
    v277 = (v250 + 48);
    v146 = *(v244 + 72);
    v274 = OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator;
    v275 = v146;
    v272 = (v250 + 32);
    v269 = (v250 + 8);
    v268 = (v258 + 16);
    v267 = (v258 + 8);
    *&v140 = 136315138;
    v265 = v140;
    v147 = v279;
    v148 = v271;
    do
    {
      sub_10048927C(v145, v34, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
      v153 = *v34;
      v154 = v34 + *(v147 + 20);
      v155 = *(type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0) + 28);
      v156 = v273;
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
      v157 = v156;
      v158 = v156;
      v159 = v280;
      if ((*v277)(v158, 1, v280) == 1)
      {
        sub_1000079B4(v157, &unk_100771B10);
        if (qword_100766F88 != -1)
        {
          swift_once();
        }

        v160 = type metadata accessor for Logger();
        sub_100003E30(v160, qword_10076FCE0);
        (*v268)(v148, &v154[v155], v143);
        v161 = Logger.logObject.getter();
        v162 = v143;
        v163 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v161, v163))
        {
          v164 = swift_slowAlloc();
          v165 = swift_slowAlloc();
          v284 = v165;
          *v164 = v265;
          sub_1004891CC(&qword_10076FDF0, &type metadata accessor for TTRRemindersListViewModel.ItemID);
          v166 = dispatch thunk of CustomStringConvertible.description.getter();
          v168 = v167;
          (*v267)(v271, v162);
          v169 = sub_100004060(v166, v168, &v284);

          *(v164 + 4) = v169;
          _os_log_impl(&_mh_execute_header, v161, v163, "TTRIRemindersBoardDropCommitCoordinator: row for the given item doesn't exist. {itemID: %s}", v164, 0xCu);
          sub_100004758(v165);
          v148 = v271;
        }

        else
        {

          (*v267)(v148, v162);
        }

        v143 = v162;
      }

      else
      {
        v149 = v270;
        (*v272)(v270, v157, v159);
        v150 = *&v274[v278];
        v151 = IndexPath._bridgeToObjectiveC()().super.isa;
        v152 = [v150 dropItem:v153 toItemAtIndexPath:v151];
        swift_unknownObjectRelease();

        (*v269)(v149, v159);
      }

      v147 = v279;
      sub_1004892E4(v34, type metadata accessor for TTRIRemindersBoardDropCommitCoordinator.LocalDropItem);
      v145 += v275;
      --v141;
    }

    while (v141);

    v205 = v266;
    v206 = v262;
    v82 = v257;
  }

  else
  {

    v205 = v266;
    v206 = v262;
  }

  (*(v206 + 8))(v82, v205);
  return (*(v256 + 8))(v255, v248);
}

void sub_1004885A4()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_initialFrameForLoadingView;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_preferredChromelessBarStates;
  sub_100058000(&unk_100781980);
  swift_allocObject();
  *(v0 + v3) = TTRObservableViewModel.init(value:)();
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_targetItemsForVisibleContextMenu) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource) = 0;
  v4 = (v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_eventPublishers);
  sub_100058000(&qword_100772768);
  swift_allocObject();
  v5 = PassthroughSubject.init()();
  swift_allocObject();
  v6 = PassthroughSubject.init()();
  *v4 = v5;
  v4[1] = v6;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_deferredViewActionProvider) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableScrollViewInsets) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableColumnContentInsets) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_automaticSubtaskSelectionController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_rootViewDragInteractionHandler) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_chromelessBarsController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController) = 0;
  v7 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemStateTracker;
  type metadata accessor for TTRRemindersListItemStateTracker();
  swift_allocObject();
  *(v0 + v7) = TTRRemindersListItemStateTracker.init()();
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_headerViewController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_focusController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dummyContentScrollView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_scrollToTopCancellable) = 0;
  v8 = (v0 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_completedHeaderViewState);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_completedRemindersState;
  v10 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_listInfo;
  v12 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100488874(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (v14)
  {
    v15 = v14;
    TTRRemindersBoardMainDiffableDataSource.item(withID:)();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1000079B4(v9, &qword_100772140);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      v16 = *(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v17 = *(v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v16);
      sub_100058000(&qword_100772150);
      v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10062D400;
      (*(v11 + 16))(v19 + v18, v13, v10);
      (*(v11 + 56))(v6, 1, 1, v10);
      (*(*(v17 + 8) + 576))(v19, v6, a2, v16);

      sub_1000079B4(v6, &qword_100772140);
      (*(v11 + 8))(v13, v10);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100488B48(uint64_t a1)
{
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v35 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_1007837A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - v17;
  v19 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController);
  if (!v19)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (*(v19 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      return;
    }
  }

  else if (*(a1 + 16) != 1)
  {
    return;
  }

  v20 = sub_1000A9AC8(a1);
  if (v20)
  {
    v34 = v20;
    if ([v20 type] == 4)
    {
      v33 = v10;
      v21 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_focusController);
      if (v21)
      {
        v22 = OBJC_IVAR____TtC9Reminders33TTRIRemindersBoardFocusController_currentFocusedItem;
        swift_beginAccess();
        sub_10000794C(v21 + v22, v18, &qword_1007837A0);
        v23 = type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem(0);
        if ((*(*(v23 - 8) + 48))(v18, 1, v23) == 1)
        {

          return;
        }

        if (swift_getEnumCaseMultiPayload() == 1)
        {

          sub_1004892E4(v18, type metadata accessor for TTRIRemindersBoardFocusController.FocusedItem);
          return;
        }

        v25 = v35;
        (*(v35 + 32))(v15, v18, v13);
        v26 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
        if (v26)
        {
          v27 = v1;
          v28 = v26;
          TTRRemindersBoardMainDiffableDataSource.item(withID:)();

          v29 = v33;
          if ((*(v33 + 48))(v8, 1, v9) == 1)
          {
            (*(v25 + 8))(v15, v13);

            sub_1000079B4(v8, &qword_100772140);
          }

          else
          {
            (*(v29 + 32))(v12, v8, v9);
            v30 = (v27 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter);
            v31 = *(v27 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
            v32 = *(v27 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
            sub_10000C36C(v30, v31);
            (*(*(v32 + 8) + 400))(v12, v31);

            sub_1000079B4(v5, &qword_100772140);
            (*(v29 + 8))(v12, v9);
            (*(v25 + 8))(v15, v13);
          }

          return;
        }

LABEL_24:
        __break(1u);
        return;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v24 = v34;
  }
}

uint64_t sub_100489078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100058000(&qword_100784608);

  return sub_1004779D4(a1, a2, a3);
}

void *sub_100489140(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100489180(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1004891CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100489214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10048927C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004892E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004893A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = type metadata accessor for Optional();
  v5 = *(v22 - 8);
  v6 = __chkstk_darwin(v22);
  v8 = &v21 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  v10 = __chkstk_darwin(v6);
  v21 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v14 = type metadata accessor for TTRITreeViewExpandedState();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_1007A84C0;
  swift_beginAccess();
  (*(v15 + 16))(v17, a1 + v18, v14);
  v19 = (*(v15 + 88))(v17, v14);
  if (v19 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {
    goto LABEL_5;
  }

  if (v19 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {
    sub_10023A594(v19);
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.insert(_:)();
    return (*(v9 + 8))(v13, AssociatedTypeWitness);
  }

  if (v19 == enum case for TTRITreeViewExpandedState.expanded(_:))
  {
LABEL_5:
    sub_10023A594(v19);
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.remove(_:)();
    (*(v9 + 8))(v13, AssociatedTypeWitness);
    return (*(v5 + 8))(v8, v22);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10048973C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  __chkstk_darwin(a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = v13 - v10;
  (*(v5 + 16))(v7, a1, a3);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v13[1])
    {
      break;
    }

    sub_100489BE0();
  }

  return (*(v9 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_10048992C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100489BE0();
  v7 = a2;
  type metadata accessor for TTRITreeViewNode();
  v5 = type metadata accessor for Array();
  swift_getWitnessTable();
  return sub_10048973C(&v7, a3, v5);
}

uint64_t sub_1004899B8()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (Set.contains(_:)())
  {
    v0 = Set.contains(_:)() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

void *sub_100489A84()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Set.init()();
  v2 = static Array._allocateUninitialized(_:)();
  if (Array._getCount()())
  {
    v3 = sub_100160DBC(v2, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  return v3;
}

uint64_t sub_100489B50(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  Set.init()();
  return a1;
}

uint64_t sub_100489BE0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v10 - v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_10023A594(v6);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  Set.remove(_:)();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100489DAC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if ((static Set.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Set.== infix(_:_:)();
}

void sub_100489EB0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a2;
  v34 = a3;
  v33 = type metadata accessor for TTRSectionLite();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v33);
  v32 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRSectionID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  TTRSectionLite.sectionID.getter();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for TTRSectionID.sectioned(_:))
  {
    (*(v10 + 96))(v12, v9);
    v14 = *v12;
    v15 = TTRSectionLite.displayName.getter();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = 0xE000000000000000;
    if (v16)
    {
      v18 = v16;
    }

    v29[1] = v18;
    v29[2] = v17;
    v19 = v31;
    if (!*(v31 + 24))
    {
      v20 = v31[2];
      sub_100003540(0, &qword_100775690);
      v21 = v20;
      static NSObject.== infix(_:_:)();
      sub_100263FE4(v20, 0);
    }

    v29[0] = sub_100003540(0, &qword_10076BA60);
    sub_10048AE00(v19, v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = *(v4 + 16);
    v23 = v32;
    v31 = v14;
    v24 = v33;
    v22(v32, a1, v33);
    v25 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v26 = (v7 + *(v4 + 80) + v25) & ~*(v4 + 80);
    v27 = swift_allocObject();
    sub_10048AE64(v8, v27 + v25);
    (*(v4 + 32))(v27 + v26, v23, v24);
    v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

    goto LABEL_12;
  }

  if (v13 == enum case for TTRSectionID.sectionless(_:))
  {
    v28 = 0;
LABEL_12:
    *v34 = v28;
    return;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10048A26C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRSectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) + 44));
  TTRSectionLite.sectionID.getter();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10048A360(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRSectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) + 44));
  (*(v4 + 104))(v6, enum case for TTRSectionID.sectionless(_:), v3);
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

Class sub_10048A46C(uint64_t a1)
{
  v59 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v61 = v2;
  v62 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRSectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v59 - v8;
  v64 = type metadata accessor for TTRSectionLite();
  __chkstk_darwin(v64);
  v77 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = __chkstk_darwin(v11);
  v16 = &v59 - v13;
  v63 = a1;
  v17 = *a1;
  v76 = *(*a1 + 16);
  if (v76)
  {
    v18 = 0;
    v73 = v14 + 16;
    v72 = enum case for TTRSectionID.sectionless(_:);
    v70 = (v4 + 8);
    v71 = (v4 + 104);
    v69 = (v14 + 32);
    v65 = (v14 + 8);
    v19 = _swiftEmptyArrayStorage;
    v67 = v9;
    v68 = v6;
    v20 = v64;
    v66 = &v59 - v13;
    v74 = v17;
    v75 = v14;
    v21 = v70;
    while (v18 < *(v17 + 16))
    {
      v79 = (v14[80] + 32) & ~v14[80];
      v78 = *(v14 + 9);
      (*(v14 + 2))(v16, v17 + v79 + v78 * v18, v20, v15);
      TTRSectionLite.sectionID.getter();
      (*v71)(v6, v72, v3);
      sub_10048AD8C();
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v21;
      (*v21)(v6, v3);
      v23(v9, v3);
      if (v22)
      {
        v12 = (*v65)(v16, v20);
      }

      else
      {
        v24 = *v69;
        (*v69)(v77, v16, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1AE0(0, *(v19 + 2) + 1, 1);
          v20 = v64;
          v19 = v80;
        }

        v27 = *(v19 + 2);
        v26 = *(v19 + 3);
        if (v27 >= v26 >> 1)
        {
          sub_1004A1AE0(v26 > 1, v27 + 1, 1);
          v20 = v64;
          v19 = v80;
        }

        *(v19 + 2) = v27 + 1;
        v12 = v24(&v19[v79 + v27 * v78], v77, v20);
        v9 = v67;
        v6 = v68;
        v16 = v66;
      }

      ++v18;
      v14 = v75;
      v17 = v74;
      if (v76 == v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_13:
  __chkstk_darwin(v12);
  v57 = v63;
  v21 = sub_10007DC28(sub_10048ADE4, &v55, v19);

  v19 = (v21 >> 62);
  if (v21 >> 62)
  {
LABEL_28:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:

    return 0;
  }

LABEL_15:
  v75 = v19;
  v28 = v63;
  static TTRLocalizableStrings.Sections.newSectionWithSelection(listLayout:)();
  v29 = static TTRLocalizableStrings.Sections.moveToSectionText(withSelectedRemindersCount:listLayout:)();
  v78 = v30;
  v79 = v29;
  v77 = static TTRCommonAsset.Image.moveToSectionIcon.getter();
  sub_100003540(0, &qword_10076BA60);
  v31 = v62;
  sub_10048AE00(v28, v62);
  v32 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v33 = swift_allocObject();
  sub_10048AE64(v31, v33 + v32);
  v56 = sub_10048AEC8;
  v57 = v33;
  v55 = 0;
  v76 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v34._object = 0x8000000100688A10;
  v35._countAndFlagsBits = 1701736270;
  v35._object = 0xE400000000000000;
  v34._countAndFlagsBits = 0xD000000000000045;
  TTRLocalizedString(_:comment:)(v35, v34);
  sub_10048AE00(v28, v31);
  v36 = swift_allocObject();
  sub_10048AE64(v31, v36 + v32);
  v56 = sub_10048AF44;
  v57 = v36;
  v55 = 0;
  v37 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v37 setState:{*(v28 + 24) > 1u, v59}];
  v80 = _swiftEmptyArrayStorage;
  v38 = *(v28 + 26);
  if (v38 == 1)
  {
    sub_100003540(0, &unk_10076B890);
    sub_100058000(&qword_10076B780);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10062D420;
    *(v39 + 32) = v37;
    v40 = v37;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v81.value.super.isa = 0;
    v81.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v41, 0, v81, 1, 0xFFFFFFFFFFFFFFFFLL, v39, v58);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (v75)
  {
    sub_100003540(0, &qword_10076C550);

    v42 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550);
    v42 = v21;
  }

  v44 = v78;
  v43 = v79;
  v46 = v76;
  v45 = v77;

  sub_1000815D0(v42);
  if (v38)
  {
    sub_100003540(0, &unk_10076B890);
    sub_100058000(&qword_10076B780);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10062D420;
    *(v47 + 32) = v46;
    v48 = v46;
    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    v82.value.super.isa = 0;
    v82.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v49, 0, v82, 1, 0xFFFFFFFFFFFFFFFFLL, v47, v58);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100003540(0, &unk_10076B890);
  v50 = v80;
  v51 = v45;
  v52._countAndFlagsBits = v43;
  v52._object = v44;
  v83.value.super.isa = v45;
  v83.is_nil = 0;
  v53.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v52, 0, v83, 0, 0xFFFFFFFFFFFFFFFFLL, v50, v58).super.super.isa;

  return v53.super.super.isa;
}

unint64_t sub_10048AD8C()
{
  result = qword_10076BE70;
  if (!qword_10076BE70)
  {
    type metadata accessor for TTRSectionID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076BE70);
  }

  return result;
}

uint64_t sub_10048AE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10048AE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10048AEC8()
{
  v1 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 56) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)(0, 0);
  }

  return result;
}

uint64_t sub_10048AF44(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10048A360(a1, v4);
}

uint64_t sub_10048AFB4(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for TTRSectionLite();

  return sub_10048A26C(a1, v1 + v4);
}

void sub_10048B088(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&unk_10077A660);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel();
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100784758);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  if (*(v1 + OBJC_IVAR____TtC9Reminders35TTRIAccountsListsCollectionListCell_viewModelObserver))
  {

    TTRViewModelObserver.localValue.getter();

    v12 = sub_100058000(&qword_10076EA28);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v13 = &qword_100784758;
      v14 = v11;
    }

    else
    {
      TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
      sub_1000079B4(v11, &qword_100784758);
      sub_100029934(&v8[*(v6 + 20)], v5);
      v15 = sub_100058000(&qword_10077A670);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v5, 1, v15) != 1)
      {
        TTRDiffableEquatableWrapper.base.getter();
        sub_1000299A4(v8);
        (*(v16 + 8))(v5, v15);
        v17 = 0;
        goto LABEL_7;
      }

      sub_1000299A4(v8);
      v13 = &unk_10077A660;
      v14 = v5;
    }

    sub_1000079B4(v14, v13);
    v17 = 1;
LABEL_7:
    v18 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
    return;
  }

  __break(1u);
}

id sub_10048B450()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAccountsListsCollectionListCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10048B494()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100784760);
  v1 = sub_100003E30(v0, qword_100784760);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10048B55C()
{
  v0 = sub_100058000(&qword_10077E850);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v22 - v4;
  if (qword_1007674F0 != -1)
  {
    swift_once();
  }

  v6 = qword_1007A8A40;
  v29 = qword_1007A8A40;
  v26[0] = 0;
  v7 = sub_10048CB90();

  v23 = v7;
  AnyHashable.init<A>(_:)();
  v28 = 1;
  *v5 = 0;
  v5[40] = 0;
  v25 = v1;
  v8 = *(v1 + 104);
  v8(v5, enum case for TTRRelativeInsertionPosition.after<A>(_:), v0);
  sub_100058000(&qword_100774070);
  inited = swift_initStackObject();
  v22 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  sub_100233FB0(v27, inited + 32);
  sub_100323F28();
  v10 = Array<A>.index<A>(forInsertingAt:where:)();
  if (v11)
  {
    v12 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
    sub_1000079B4(v26, &qword_10077E868);
    if (v12)
    {
      v10 = *(v6 + 16);
    }

    else
    {
      v10 = 0;
    }
  }

  sub_1000FE4D8(v10, v10, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v13 = *(v25 + 8);
  v13(v5, v0);
  sub_10023400C(v27);
  v26[0] = 1;
  AnyHashable.init<A>(_:)();
  v28 = 1;
  v14 = v24;
  v8(v24, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v0);
  v15 = v14;
  v16 = swift_initStackObject();
  *(v16 + 16) = v22;
  sub_100233FB0(v27, v16 + 32);
  v17 = v29;
  v18 = Array<A>.index<A>(forInsertingAt:where:)();
  if (v19)
  {
    v20 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
    sub_1000079B4(v26, &qword_10077E868);
    if (v20)
    {
      v18 = *(v17 + 16);
    }

    else
    {
      v18 = 0;
    }
  }

  sub_1000FE4D8(v18, v18, v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  v13(v15, v0);
  sub_10023400C(v27);
  return v29;
}

uint64_t sub_10048B930()
{
  AnyHashable.base.getter();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  sub_100003540(0, &qword_10076BA60);
  if (v3)
  {
    static TTRLocalizableStrings.RemindersList.deleteCustomSmartListActionText.getter();
  }

  else
  {
    static TTRLocalizableStrings.AccountsList.showSmartListInfoText.getter();
  }

  swift_allocObject();
  swift_weakInit();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_10048BB30()
{
  v0 = type metadata accessor for TTRITipKitSignal();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getObjectType();
    v6 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
    if (v6)
    {
      v7 = v6;
      swift_getObjectType();

      swift_unknownObjectRetain();
      v8 = dispatch thunk of TTRRemindersListInteractorType.changeItem(for:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();

      sub_10048C87C(v8, v5);
      swift_unknownObjectRelease();

      (*(v1 + 104))(v3, enum case for TTRITipKitSignal.tappedNameAndAppearanceAction(_:), v0);
      v9.value._countAndFlagsBits = static TTRITipKitSignalContext.RemindersList.MoreMenu.smartList.getter();
      TTRITipKitSignal.donate(signalContext:)(v9);

      return (*(v1 + 8))(v3, v0);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10048BD20()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10048BE08();
  }

  return result;
}

id sub_10048BD78()
{
  swift_getObjectType();
  result = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
  if (result)
  {
    v1 = result;
    v2 = [result customContext];

    if (v2)
    {
      v3 = [v2 account];

      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10048BE08()
{
  v1 = v0;
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  v6 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
  if (!v6)
  {
    return;
  }

  v37 = v6;
  v7 = [v6 smartListType];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      v14 = v37;

      return;
    }
  }

  v36 = v1;
  if (qword_100767338 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_100784760);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v17 = [v37 objectID];
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v17;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  *v5 = v37;
  v18 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
  v19 = *(v3 + 104);
  v19(v5, enum case for TTRListOrCustomSmartList.customSmartList(_:), v2);
  v20 = v37;
  sub_1002E91A0(v5);
  v21 = *(v3 + 8);
  v21(v5, v2);
  *v5 = v20;
  v19(v5, v18, v2);
  v22 = v20;
  sub_1002E950C(v5);
  v21(v5, v2);
  v23 = String._bridgeToObjectiveC()();

  v24 = String._bridgeToObjectiveC()();

  v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  v26 = String._bridgeToObjectiveC()();

  v27 = objc_opt_self();
  v28 = [v27 actionWithTitle:v26 style:1 handler:0];

  static TTRLocalizableStrings.Common.deleteButton.getter();
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v22;
  v37 = v22;

  v31 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10048CBE4;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001762CC;
  aBlock[3] = &unk_10072A848;
  v32 = _Block_copy(aBlock);

  v33 = [v27 actionWithTitle:v31 style:2 handler:v32];
  _Block_release(v32);

  [v25 addAction:v28];
  [v25 addAction:v33];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    [Strong presentViewController:v25 animated:1 completion:0];
  }
}

uint64_t sub_10048C3C0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    static TTRLocalizableStrings.RemindersList.deleteList.getter();
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();

    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = a3;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_10048CBEC;
    *(v9 + 24) = v8;
    aBlock[4] = sub_100068444;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10072A8C0;
    v10 = _Block_copy(aBlock);
    v11 = a3;

    [v6 withActionName:v7 block:v10];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        swift_unknownObjectRetain();
        v15 = [v14 presentedViewController];

        if (v15)
        {
          [v15 dismissViewControllerAnimated:1 completion:0];
        }

        else
        {
        }

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_10048C624()
{
  sub_1001E6A30();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowCustomSmartListPresenter()
{
  result = qword_1007847A8;
  if (!qword_1007847A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10048C734(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for TTRUndoNavigationEditingTarget();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  TTRListDetailSavedObjectID.undoNavigationEditingTarget.getter(a2, a3);
  ObjectType = swift_getObjectType();
  v13 = (*(a5 + 16))(ObjectType, a5);
  dispatch thunk of TTRRemindersListInteractorType.registerUndo(forEditing:byDraining:)();

  return (*(v9 + 8))(v11, v8);
}

void sub_10048C87C(void *a1, uint64_t a2)
{
  type metadata accessor for TTRListDetailAssembly.CustomSmartListComponentsCreator();
  swift_initStackObject();
  v4 = [a1 saveRequest];
  v5 = [v4 store];

  v6 = sub_10044E000(v5, a1, 1, a2, &off_10072A740);
  v8 = v7;

  v9 = v6;

  v10 = sub_10045A1AC(v9, v8, 0, 0, 0);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_10048C9A8(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  static TTRLocalizableStrings.UndoAction.changeList.getter();
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();

  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10048CB70;
  *(v13 + 24) = v12;
  v17[4] = sub_100026410;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100026440;
  v17[3] = &unk_10072A7D0;
  v14 = _Block_copy(v17);

  v15 = a3;
  swift_unknownObjectRetain();

  [v10 withActionName:v11 block:v14];

  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10048CB90()
{
  result = qword_1007851F8;
  if (!qword_1007851F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007851F8);
  }

  return result;
}

unint64_t sub_10048CC44()
{
  result = qword_100785200;
  if (!qword_100785200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785200);
  }

  return result;
}

id sub_10048CCA8(uint64_t *a1, void **a2, uint64_t a3)
{
  v94 = a3;
  v100 = a1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v103 = *(v4 - 8);
  v104 = v4;
  v5 = __chkstk_darwin(v4);
  v85 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v96 = &v84 - v8;
  v9 = __chkstk_darwin(v7);
  v84 = &v84 - v10;
  __chkstk_darwin(v9);
  v101 = &v84 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v93 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v91);
  v102 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for TTRListType.SortingCapability();
  v92 = *(v95 - 8);
  __chkstk_darwin(v95);
  v90 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for TTRRemindersListDefaultListType();
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v89 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v88);
  v87 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v18 - 8);
  v20 = (&v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v84 - v30;
  (*(v22 + 104))(v24, enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:), v21);
  TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
  (*(v22 + 8))(v24, v21);
  v86 = a2;
  v32 = *a2;
  v98 = v26;
  v33 = *(v26 + 16);
  v33(v29, v31, v25);
  type metadata accessor for TTRShowSiriFoundInAppsDataModelSource();
  swift_allocObject();
  v34 = v32;
  v35 = TTRShowSiriFoundInAppsDataModelSource.init(store:sortingStyle:canChangeSortingStyle:)();
  sub_1001749C4(a2, v20);
  v110[0] = &_swiftEmptyArrayStorage;
  sub_10048DDF4(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218);
  sub_10010BA44();
  v36 = v87;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v37 = v89;
  (*(v97 + 13))(v89, enum case for TTRRemindersListDefaultListType.any(_:), v99);
  sub_10007786C(v20, v36, v37, v110);
  v38 = v110[0];
  v39 = v90;
  v97 = v31;
  v99 = v25;
  v33(v90, v31, v25);
  v40 = v39;
  (v92)[13](v39, enum case for TTRListType.SortingCapability.notSupported(_:), v95);
  type metadata accessor for TTRShowSiriFoundInAppsViewModelSource();
  v41 = swift_allocObject();

  v42 = v38;
  v95 = v35;
  v92 = v42;
  v43 = sub_10048DA20(v35, v42, v40, v41);
  sub_1001749C4(v86, v20);
  sub_10010BCAC(v110, v107);
  v44 = sub_10048DDF4(&qword_100781118, type metadata accessor for TTRShowSiriFoundInAppsViewModelSource);
  v45 = v102;
  sub_1001749C4(v20, v102);
  v46 = v91;
  sub_10010BCAC(v107, v45 + *(v91 + 28));
  v47 = (v45 + *(v46 + 32));
  *v47 = v43;
  v47[1] = v44;
  v48 = v107[0];
  sub_100058000(&qword_10076C230);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v109, v106, &qword_100769608);
  v50 = *(v106[5] + 8);
  *(v49 + 32) = v106[4];
  *(v49 + 40) = v50;
  sub_10000794C(&v108, v105, &qword_100769600);
  swift_retain_n();
  v51 = v48;
  swift_unknownObjectRelease();
  *(v49 + 48) = v105[3];
  sub_100004758(v105);
  sub_100004758(v106);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v52 = swift_allocObject();
  v53 = sub_1003A7DAC(v51, v43, v49, v52);

  sub_10010BD08(v107);
  sub_100174ECC(v20, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v54 = *(v46 + 36);
  v90 = v53;
  *(v45 + v54) = v53;
  v55 = v93;
  sub_100078BBC(v93);
  v91 = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v56 = swift_allocObject();
  v57 = v94;
  swift_unknownObjectRetain();
  v58 = sub_1003A56E4(v55, v57, v56);
  v59 = *(v58 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v59 + 112))(ObjectType, v59))
  {
    swift_getObjectType();
    v61 = v84;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v62 = v101;
    (*(v103 + 32))(v101, v61, v104);
  }

  else
  {
    v62 = v101;
    (*(v103 + 104))(v101, enum case for TTRRemindersListLayout.list(_:), v104);
  }

  v63 = sub_1003A4A1C(v62, v58);
  v93 = v64;
  v66 = v65;
  v68 = v67;
  (*(v103 + 8))(v62, v104);
  v94 = swift_getObjectType();
  *(v58 + 24) = *(v68 + 8);
  v101 = v66;
  swift_unknownObjectWeakAssign();
  v69 = *(v58 + 144);
  v70 = swift_getObjectType();
  v71 = *(v69 + 112);

  if (v71(v70, v69))
  {
    swift_getObjectType();
    v72 = v85;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v73 = v96;
    (*(v103 + 32))(v96, v72, v104);
  }

  else
  {
    v73 = v96;
    (*(v103 + 104))(v96, enum case for TTRRemindersListLayout.list(_:), v104);
  }

  v74 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v75 = v63;
  v76 = sub_1003A7DE0(v58, v75, v93, v73, 0, 1, 0, v74);

  v77 = *(v68 + 32);
  v78 = v76;
  v77(v76, &off_100723D78, v94, v68);
  sub_10048DDF4(&qword_100770960, type metadata accessor for TTRIRemindersCommonPresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_10048DDF4(&qword_100785230, type metadata accessor for TTRShowSiriFoundInAppsViewModelSource);

  v79 = v78;
  dispatch thunk of TTRShowSiriFoundInAppsDataModelSource.delegate.setter();

  sub_10056FEB0(v80, &off_10071A9B0);

  *(v90 + 3) = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v111, v107, &qword_100769600);
  v81 = v107[4];
  swift_unknownObjectRelease();
  *(v81 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v107);
  sub_10000794C(&v112, v107, &qword_100769608);
  swift_getObjectType();
  sub_10048DDF4(&qword_100770970, type metadata accessor for TTRIRemindersCommonPresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v107);
  v82 = v100;
  v100[3] = v91;
  v82[4] = &off_10072A978;

  swift_unknownObjectRelease();
  *v82 = v58;
  (*(v98 + 8))(v97, v99);
  sub_100174ECC(v102, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v110);
  return v79;
}

id TTRIShowSiriFoundInAppsAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowSiriFoundInAppsAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowSiriFoundInAppsAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowSiriFoundInAppsAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10048DA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v33 = a3;
  v34 = v8;
  v35 = type metadata accessor for REMAnalyticsEvent();
  v9 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v32 = type metadata accessor for TTRListType.SortingCapability();
  v15 = *(v32 - 8);
  __chkstk_darwin(v32);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a3);
  v18 = sub_1003A649C(a1, a2, v17, a4);

  sub_1002F9294(v14);
  v19 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  sub_10056F540(v14);
  sub_10010BE6C(v14);
  type metadata accessor for TTRUserDefaults();
  v20 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v21 = sub_100058000(&qword_100770980);
  v22 = &v11[*(v21 + 48)];
  v23 = &v11[*(v21 + 80)];
  v24 = enum case for REMRemindersOpenUserOperation.SmartListType.siriFoundInApps(_:);
  v25 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v25 - 8) + 104))(v11, v24, v25);
  v26 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v27 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v27 - 8) + 104))(v11, v26, v27);
  *v22 = TTRUserDefaults.activitySessionId.getter();
  v22[1] = v28;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v23 = _typeName(_:qualified:)();
  v23[1] = v29;
  v30 = v35;
  (*(v9 + 104))(v11, enum case for REMAnalyticsEvent.openListUserOperation(_:), v35);
  REMAnalyticsManager.post(event:)();

  (*(v15 + 8))(v33, v32);
  (*(v9 + 8))(v11, v30);
  return v18;
}

uint64_t sub_10048DDF4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10048DE3C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(v3 + 16))
  {
    if (qword_100767340 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_100785238);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "TTRIActivityAlertRouterCapability: trying to present activity alert twice";
LABEL_6:
      _os_log_impl(&_mh_execute_header, oslog, v5, v7, v6, 2u);
    }
  }

  else if (a3)
  {
    v8 = a3;
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() alertControllerWithTitle:v9 message:0 preferredStyle:1];

    type metadata accessor for TTRISpinnerAlertContentViewController();
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v10 setContentViewController:v11];
    v12 = *(v3 + 16);
    *(v3 + 16) = v10;
    v13 = v10;

    oslog = UIViewController.topPresentedViewController.getter();
    [oslog presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    if (qword_100767340 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_100785238);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "TTRIActivityAlertRouterCapability: failed to present activity alert; missing a presentingViewController";
      goto LABEL_6;
    }
  }
}

uint64_t sub_10048E0A4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100785238);
  v1 = sub_100003E30(v0, qword_100785238);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10048E16C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v100 = a5;
  v101 = a6;
  v105 = a4;
  v95 = a2;
  v110 = a1;
  v6 = type metadata accessor for TTRRemindersListLayout();
  v103 = *(v6 - 8);
  v104 = v6;
  __chkstk_darwin(v6);
  v91 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v107 = &v89 - v9;
  __chkstk_darwin(v10);
  v90 = &v89 - v11;
  __chkstk_darwin(v12);
  v102 = &v89 - v13;
  v14 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v14 - 8);
  v98 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v96 = &v89 - v17;
  v97 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v97);
  v111 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for TTRPublicTemplateFallbackProperties();
  v94 = *(v99 - 1);
  __chkstk_darwin(v99);
  v93 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for TTRRemindersListDefaultListType();
  v20 = *(v92 - 8);
  __chkstk_darwin(v92);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v23 - 8);
  v25 = (&v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v89 - v31;
  sub_100058000(&qword_10076C210);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10062D400;
  static REMSuggestedAttributesElector.ExcludedAttributes.lists.getter();
  v117[0] = v33;
  sub_10048EE28(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218);
  sub_10010BA44();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = v95;
  sub_10010BD5C(v95, v25, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v108 = v27;
  v109 = v26;
  v35 = *(v27 + 16);
  v106 = v32;
  v35(v29, v32, v26);
  (*(v20 + 104))(v22, enum case for TTRRemindersListDefaultListType.any(_:), v92);
  sub_10007786C(v25, v29, v22, v117);
  v36 = *v34;
  v37 = v34;
  (*(v94 + 16))(v93, v100, v99);
  type metadata accessor for TTRShowPublicTemplateDataModelSource();
  swift_allocObject();
  v38 = v36;
  v39 = v105;
  v40 = TTRShowPublicTemplateDataModelSource.init(store:publicTemplateObjectID:fallbackProperties:)();
  v41 = v117[0];
  type metadata accessor for TTRShowPublicTemplateViewModelSource();
  v42 = swift_allocObject();

  v99 = v41;
  v43 = sub_10010BAA8(1, v40, v99, v42);
  sub_10010BD5C(v37, v25, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v117, v114);
  v44 = sub_10048EE28(&qword_10076C228, type metadata accessor for TTRShowPublicTemplateViewModelSource);
  v45 = v111;
  sub_10010BD5C(v25, v111, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v46 = v97;
  sub_10010BCAC(v114, v45 + *(v97 + 28));
  v47 = (v45 + *(v46 + 32));
  v48 = v45;
  *v47 = v43;
  v47[1] = v44;
  v49 = v114[0];
  sub_100058000(&qword_10076C230);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v116, v113, &qword_100769608);
  v51 = *(v113[5] + 8);
  *(v50 + 32) = v113[4];
  *(v50 + 40) = v51;
  sub_10000794C(&v115, v112, &qword_100769600);
  swift_retain_n();
  v52 = v49;
  swift_unknownObjectRelease();
  *(v50 + 48) = v112[3];
  sub_100004758(v112);
  sub_100004758(v113);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v53 = swift_allocObject();
  v54 = sub_1003A8DE0(v52, v43, v50, v53);
  v100 = v43;

  sub_10010BD08(v114);
  sub_10010BE0C(v25, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v55 = *(v46 + 36);
  v95 = v54;
  *(v48 + v55) = v54;
  v56 = v96;
  sub_100078BBC(v96);
  v97 = type metadata accessor for TTRIShowPublicTemplatePreviewPresenter();
  v57 = swift_allocObject();
  v58 = (v57 + OBJC_IVAR____TtC9Reminders38TTRIShowPublicTemplatePreviewPresenter_dataModelSource);
  *v58 = v40;
  v58[1] = &protocol witness table for TTRShowPublicTemplateDataModelSource;
  v59 = v98;
  sub_10010BD5C(v56, v98, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v105 = v40;

  v60 = v101;
  swift_unknownObjectRetain();
  v61 = sub_1003A5740(v59, v60, v57);
  sub_10010BE0C(v56, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v62 = *(v61 + 144);
  ObjectType = swift_getObjectType();
  v64 = *(v62 + 112);

  if (v64(ObjectType, v62))
  {
    swift_getObjectType();
    v65 = v90;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v66 = v102;
    v67 = v103;
    v68 = v104;
    (*(v103 + 32))(v102, v65, v104);
  }

  else
  {
    v66 = v102;
    v67 = v103;
    v68 = v104;
    (*(v103 + 104))(v102, enum case for TTRRemindersListLayout.list(_:), v104);
  }

  v101 = sub_1003A4A1C(v66, v61);
  v102 = v69;
  v71 = v70;
  v73 = v72;
  (*(v67 + 8))(v66, v68);
  v103 = swift_getObjectType();
  v104 = v71;
  *(v61 + 24) = *(v73 + 8);
  swift_unknownObjectWeakAssign();
  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    v98 = 0;
    v96 = 0;
  }

  else
  {
    v98 = static TTRLocalizableStrings.Common.continueButton.getter();
    v96 = v74;
  }

  v75 = *(v61 + 144);
  v76 = swift_getObjectType();
  v77 = *(v75 + 112);

  if (v77(v76, v75))
  {
    swift_getObjectType();
    v78 = v91;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v79 = v107;
    (*(v67 + 32))(v107, v78, v68);
  }

  else
  {

    v79 = v107;
    (*(v67 + 104))(v107, enum case for TTRRemindersListLayout.list(_:), v68);
  }

  v80 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v81 = v101;
  v82 = sub_1003A8E48(v61, v81, v102, v79, v98, v96, 0, v80);

  v83 = *(v73 + 32);
  v84 = v82;
  v83(v82, &off_100723D78, v103, v73);
  sub_10048EE28(&qword_1007852F0, type metadata accessor for TTRIShowPublicTemplatePreviewPresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_10048EE28(&qword_10076C240, type metadata accessor for TTRShowPublicTemplateViewModelSource);

  dispatch thunk of TTRShowPublicTemplateDataModelSource.delegate.setter();

  sub_10056FEB0(v85, &off_10071A9B0);

  v95[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v118, v114, &qword_100769600);
  v86 = v114[4];
  swift_unknownObjectRelease();
  *(v86 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v114);
  sub_10000794C(&v119, v114, &qword_100769608);
  swift_getObjectType();
  sub_10048EE28(&qword_1007852F8, type metadata accessor for TTRIShowPublicTemplatePreviewPresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v114);
  dispatch thunk of TTRShowPublicTemplateDataModelSource.start()();
  v87 = v110;
  v110[3] = v97;
  v87[4] = &off_100733A08;

  swift_unknownObjectRelease();
  *v87 = v61;
  (*(v108 + 8))(v106, v109);
  sub_10010BE0C(v111, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v117);
  return v84;
}

uint64_t sub_10048EE28(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10048EE70(uint64_t a1)
{
  v3 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10077FBB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_100058000(&qword_100785438);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_viewModel;
  swift_beginAccess();
  v15 = *(v11 + 56);
  v21 = a1;
  sub_1004933FC(a1, v13);
  sub_1004933FC(v1 + v14, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_1000079B4(v13, &unk_10077FBB0);
    }

    goto LABEL_6;
  }

  sub_1004933FC(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_1000079B4(v13, &qword_100785438);
LABEL_7:
    swift_beginAccess();
    sub_1004938D8(v21, v1 + v14);
    swift_endAccess();
    return [v1 setNeedsUpdateConfiguration];
  }

  (*(v4 + 32))(v6, &v13[v15], v3);
  sub_100493948(&qword_100785440);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  result = sub_1000079B4(v13, &unk_10077FBB0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10048F1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[0] = a1;
  v23[1] = a4;
  v7 = sub_100058000(&unk_10077FC20);
  __chkstk_darwin(v7 - 8);
  v9 = v23 - v8;
  v10 = type metadata accessor for UICellAccessory.Placement();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v4 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider);
  v19 = *(v4 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider);
  v20 = *(v4 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider + 8);
  *v18 = a2;
  v18[1] = a3;
  sub_10008E7F0(v19, v20);

  sub_10049278C(&OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___infoButton, sub_1004910BC);
  (*(v11 + 16))(v13, v23[0], v10);
  v21 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_10048F5C4(uint64_t a1)
{
  v2 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10077FBB0);
  __chkstk_darwin(v6 - 8);
  v8 = v13 - v7;
  if (qword_100767348 != -1)
  {
    swift_once();
  }

  v9 = qword_100785300;
  sub_1004933FC(a1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    v10 = v9;
    sub_1000079B4(v8, &unk_10077FBB0);
    memset(v13, 0, sizeof(v13));
    v14 = 0;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_100493948(&unk_100785428);
    v11 = v9;
    AnyHashable.init<A>(_:)();
  }

  UICellConfigurationState.subscript.setter();
  return sub_1000079B4(a1, &unk_10077FBB0);
}

void sub_10048F7DC(uint64_t a1)
{
  v3 = sub_100058000(&unk_100785400);
  __chkstk_darwin(v3 - 8);
  v74 = &v69 - v4;
  v5 = type metadata accessor for TTRListDetailBadgeViewModel();
  v83 = *(v5 - 8);
  __chkstk_darwin(v5);
  v86 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for BadgeContainerView.ViewModel(0);
  __chkstk_darwin(v75);
  v76 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for TTRTemplatePublicLinkData();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10077FBB0);
  __chkstk_darwin(v9 - 8);
  v73 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v69 - v12;
  __chkstk_darwin(v13);
  v15 = &v69 - v14;
  __chkstk_darwin(v16);
  v18 = &v69 - v17;
  __chkstk_darwin(v19);
  v21 = &v69 - v20;
  v22 = type metadata accessor for UIListContentConfiguration();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  v85 = v1;
  sub_100490364();
  static UIListContentConfiguration.subtitleCell()();
  v29 = type metadata accessor for UICellConfigurationState();
  v90 = v29;
  v91 = &protocol witness table for UICellConfigurationState;
  v30 = sub_1000317B8(&v89);
  (*(*(v29 - 8) + 16))(v30, a1, v29);
  UIListContentConfiguration.updated(for:)();
  v78 = v23;
  v31 = *(v23 + 8);
  v72 = v23 + 8;
  v71 = v31;
  v31(v25, v22);
  sub_100004758(&v89);
  if (qword_100767348 != -1)
  {
    swift_once();
  }

  UICellConfigurationState.subscript.getter();
  if (v90)
  {
    v32 = type metadata accessor for TTRTemplatesListViewModel.Template();
    v33 = swift_dynamicCast();
    (*(*(v32 - 8) + 56))(v21, v33 ^ 1u, 1, v32);
  }

  else
  {
    sub_1000079B4(&v89, &unk_100785410);
    v32 = type metadata accessor for TTRTemplatesListViewModel.Template();
    (*(*(v32 - 8) + 56))(v21, 1, 1, v32);
  }

  v88 = v21;
  sub_1004933FC(v21, v18);
  type metadata accessor for TTRTemplatesListViewModel.Template();
  v34 = *(v32 - 8);
  v87 = *(v34 + 48);
  v35 = v87(v18, 1, v32);
  v77 = v5;
  v84 = v34;
  if (v35 == 1)
  {
    sub_1000079B4(v18, &unk_10077FBB0);
  }

  else
  {
    TTRTemplatesListViewModel.Template.name.getter();
    (*(v34 + 8))(v18, v32);
  }

  UIListContentConfiguration.text.setter();
  v36 = sub_100003540(0, &qword_100771DF0);
  static UIFont.roundedBodyFont.getter();
  v37 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v37(&v89, 0);
  v38 = v85;
  sub_1004907BC();
  UIListContentConfiguration.image.setter();
  sub_1004933FC(v88, v15);
  if (v87(v15, 1, v32) == 1)
  {
    sub_1000079B4(v15, &unk_10077FBB0);
  }

  else
  {
    v70 = v22;
    v39 = v79;
    TTRTemplatesListViewModel.Template.publicLinkData.getter();
    (*(v84 + 8))(v15, v32);
    sub_100058000(&unk_100776BD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D3F0;
    *(inited + 32) = NSForegroundColorAttributeName;
    v41 = objc_opt_self();
    v42 = NSForegroundColorAttributeName;
    v43 = [v41 secondaryLabelColor];
    v44 = sub_100003540(0, &qword_100772610);
    *(inited + 40) = v43;
    *(inited + 64) = v44;
    *(inited + 72) = NSFontAttributeName;
    v45 = NSFontAttributeName;
    v46 = static UIFont.roundedFootnoteFont.getter();
    *(inited + 104) = v36;
    *(inited + 80) = v46;
    v47 = sub_100460A28(inited);
    swift_setDeallocating();
    sub_100058000(&unk_100776BE0);
    v38 = v85;
    swift_arrayDestroy();
    TTRTemplatePublicLinkData.attributedStatusText(baseAttributes:forAccessibility:)(v47, 0);

    v48 = v39;
    v22 = v70;
    (*(v80 + 8))(v48, v81);
  }

  v49 = v83;
  UIListContentConfiguration.secondaryAttributedText.setter();
  v50 = *(v38 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_listContentView);
  v51 = v82;
  if (!v50)
  {
    __break(1u);
    goto LABEL_23;
  }

  v90 = v22;
  v91 = &protocol witness table for UIListContentConfiguration;
  v52 = sub_1000317B8(&v89);
  (*(v78 + 16))(v52, v28, v22);
  v53 = v50;
  UIListContentView.configuration.setter();

  v54 = *(v38 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView);
  if (!v54)
  {
LABEL_23:
    __break(1u);
    return;
  }

  sub_1004933FC(v88, v51);
  v55 = v87(v51, 1, v32);
  v56 = v54;
  if (v55 == 1)
  {
    sub_1000079B4(v51, &unk_10077FBB0);
    v57 = v74;
    v58 = v77;
    (*(v49 + 56))(v74, 1, 1, v77);
    TTRListDetailBadgeViewModel.init()();
    v59 = (*(v49 + 48))(v57, 1, v58);
    v60 = v73;
    if (v59 != 1)
    {
      sub_1000079B4(v57, &unk_100785400);
    }
  }

  else
  {
    v61 = v51;
    v62 = v28;
    v63 = v22;
    v64 = v74;
    TTRTemplatesListViewModel.Template.badge.getter();
    (*(v84 + 8))(v61, v32);
    v58 = v77;
    (*(v49 + 56))(v64, 0, 1, v77);
    v65 = v64;
    v22 = v63;
    v28 = v62;
    (*(v49 + 32))(v86, v65, v58);
    v60 = v73;
  }

  sub_1004933FC(v88, v60);
  if (v87(v60, 1, v32) == 1)
  {
    sub_1000079B4(v60, &unk_10077FBB0);
    v66 = 0;
  }

  else
  {
    v67 = v79;
    TTRTemplatesListViewModel.Template.publicLinkData.getter();
    (*(v84 + 8))(v60, v32);
    v66 = TTRTemplatePublicLinkData.hasPublicLink.getter();
    (*(v80 + 8))(v67, v81);
  }

  v68 = v76;
  (*(v49 + 32))(v76, v86, v58);
  *(v68 + *(v75 + 20)) = v66 & 1;
  sub_100490898(v68);

  sub_10049346C(v68);
  sub_100490A90();
  sub_100490E84();
  v71(v28, v22);
  sub_1000079B4(v88, &unk_10077FBB0);
}

void sub_100490364()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView;
  if (!*&v0[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView])
  {
    sub_100003540(0, &qword_100785420);
    static UIListContentConfiguration.subtitleCell()();
    v4 = UIListContentView.init(configuration:)();
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v1 contentView];
    [v5 addSubview:v4];

    v6 = [objc_allocWithZone(type metadata accessor for BadgeContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v1 contentView];
    [v7 addSubview:v6];

    v8 = *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_listContentView];
    *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_listContentView] = v4;
    v9 = v4;

    v10 = *&v1[v3];
    *&v1[v3] = v6;
    v11 = v6;

    v12 = objc_opt_self();
    sub_100058000(&qword_10076B780);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100634FC0;
    v14 = [v9 topAnchor];
    v15 = [v1 contentView];
    v16 = [v15 topAnchor];

    v17 = [v14 constraintEqualToAnchor:v16];
    *(v13 + 32) = v17;
    v18 = [v9 leadingAnchor];
    v19 = [v1 contentView];
    v20 = [v19 leadingAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
    *(v13 + 40) = v21;
    v22 = [v9 bottomAnchor];
    v23 = [v1 contentView];
    v24 = [v23 bottomAnchor];

    v25 = [v22 constraintEqualToAnchor:v24];
    *(v13 + 48) = v25;
    v26 = [v9 trailingAnchor];
    v27 = [v1 contentView];
    v28 = [v27 trailingAnchor];

    v29 = [v26 constraintEqualToAnchor:v28];
    *(v13 + 56) = v29;
    v30 = [v9 heightAnchor];

    v31 = [v30 constraintGreaterThanOrEqualToConstant:56.0];
    *(v13 + 64) = v31;
    sub_100003540(0, &qword_10076BAD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 activateConstraints:isa];
  }
}

id sub_1004907BC()
{
  v1 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___placeholderImageForBadge;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___placeholderImageForBadge);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___placeholderImageForBadge);
  }

  else
  {
    v4 = v0;
    sub_100003540(0, &qword_10076FCB0);
    v5 = [objc_opt_self() clearColor];
    v6 = static UIImage.image(color:size:)();

    v7 = [v6 imageWithRenderingMode:1];
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_100490898(uint64_t a1)
{
  v3 = type metadata accessor for BadgeContainerView.ViewModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = objc_opt_self();
  sub_1004934C8(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_10049352C(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100493590;
  *(v9 + 24) = v8;
  aBlock[4] = sub_100068444;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10072AB50;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  [v6 performWithoutAnimation:v10];
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_100490A90()
{
  result = *(v0 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_listContentView);
  if (!result)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = [result imageLayoutGuide];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeViewConstraints;
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeViewConstraints);
  if (v4)
  {
    v28 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeViewConstraints;
    if (v4 >> 62)
    {
LABEL_27:
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    while (v5 != v6)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v9 = [v7 isActive];

      ++v6;
      if ((v9 & 1) == 0)
      {
        v10 = objc_opt_self();
        sub_100003540(0, &qword_10076BAD0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v10 deactivateConstraints:isa];

        v3 = v28;
        *(v0 + v28) = 0;

        goto LABEL_17;
      }
    }

    goto LABEL_22;
  }

LABEL_17:
  sub_100058000(&qword_10076B780);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D450;
  v13 = [v2 topAnchor];
  v14 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView;
  result = *(v0 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView);
  if (!result)
  {
    goto LABEL_29;
  }

  v15 = [result topAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];

  *(v12 + 32) = v16;
  v17 = [v2 leadingAnchor];
  result = *(v0 + v14);
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = [result leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v12 + 40) = v19;
  v20 = [v2 bottomAnchor];
  result = *(v0 + v14);
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v21 = [result bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v12 + 48) = v22;
  v23 = [v2 trailingAnchor];
  result = *(v0 + v14);
  if (!result)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v24 = [result trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v12 + 56) = v25;
  v26 = objc_opt_self();
  sub_100003540(0, &qword_10076BAD0);
  v27 = Array._bridgeToObjectiveC()().super.isa;
  [v26 activateConstraints:v27];

  *(v0 + v3) = v12;
LABEL_22:
}

void sub_100490E84()
{
  v1 = *&v0[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_listContentView];
  if (v1)
  {
    v2 = [v1 textLayoutGuide];
    if (v2)
    {
      v10 = v2;
      v3 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_separatorConstraint;
      v4 = *&v0[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_separatorConstraint];
      if (v4 && ([v4 isActive] & 1) != 0)
      {
        v5 = v10;
      }

      else
      {
        v6 = [v0 separatorLayoutGuide];
        v7 = [v6 leadingAnchor];

        v8 = [v10 leadingAnchor];
        v9 = [v7 constraintEqualToAnchor:v8];

        [v9 setActive:1];
        v5 = *&v0[v3];
        *&v0[v3] = v9;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_1004910BC()
{
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = aBlock - v5;
  static UIButton.Configuration.plain()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() _systemImageNamed:v7];

  UIButton.Configuration.image.setter();
  v9 = [objc_opt_self() configurationWithScale:3];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v10 = [objc_opt_self() clearColor];
  v11 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v11(aBlock, 0);
  sub_100003540(0, &unk_10077A690);
  (*(v1 + 16))(v3, v6, v0);
  v12 = UIButton.init(configuration:primaryAction:)();
  [v12 setShowsMenuAsPrimaryAction:1];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1004933D4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10010CA7C;
  aBlock[3] = &unk_10072AAD8;
  v14 = _Block_copy(aBlock);

  [v12 _setMenuProvider:v14];
  _Block_release(v14);
  [v12 setIsAccessibilityElement:0];
  (*(v1 + 8))(v6, v0);
  return v12;
}

char *sub_1004913B0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *&result[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider];
    if (v2)
    {
      v3 = *&result[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider + 8];
      sub_10008E7EC(*&result[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider]);

      v4 = v2();
      sub_10008E7F0(v2, v3);
      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1004914E4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRTemplatePublicLinkData();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRTemplatesListViewModel.Template();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_10076CA08);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006337E0;
  v9 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_viewModel;
  swift_beginAccess();
  v10 = *(v5 + 48);
  v11 = 0;
  v12 = 0;
  if (!v10(v1 + v9, 1, v4))
  {
    (*(v5 + 16))(v7, v1 + v9, v4);
    v11 = TTRTemplatesListViewModel.Template.name.getter();
    v12 = v13;
    (*(v5 + 8))(v7, v4);
  }

  *(v8 + 32) = v11;
  *(v8 + 40) = v12;
  if (v10(v1 + v9, 1, v4) || ((*(v5 + 16))(v7, v1 + v9, v4), v14 = v47, TTRTemplatesListViewModel.Template.publicLinkData.getter(), (*(v5 + 8))(v7, v4), v15 = sub_100460A28(_swiftEmptyArrayStorage), v16 = TTRTemplatePublicLinkData.attributedStatusText(baseAttributes:forAccessibility:)(v15, 1), , (*(v48 + 8))(v14, v49), !v16))
  {
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
  }

  else
  {
    v17 = [v16 string];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    *(v8 + 48) = v18;
    *(v8 + 56) = v20;
  }

  v21 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView;
  v22 = *(v1 + OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView);
  if (v22)
  {
    v23 = [*(v22 + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_badgeView) accessibilityLabel];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    *(v8 + 64) = v25;
    *(v8 + 72) = v27;
    v28 = *(v1 + v21);
    if (!v28)
    {
      goto LABEL_30;
    }

    v29 = [*(v28 + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_badgeView) accessibilityValue];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    *(v8 + 80) = v31;
    *(v8 + 88) = v33;
    v50 = v8;
    sub_100058000(&unk_1007853F0);
    sub_10000E188(&qword_10076CA10, &unk_1007853F0);
    v34 = Sequence.removingNils<A>()();

    v35 = 0;
    v36 = *(v34 + 16);
    v37 = _swiftEmptyArrayStorage;
LABEL_16:
    v38 = (v34 + 40 + 16 * v35);
    while (1)
    {
      if (v36 == v35)
      {

        v50 = v37;
        static TTRAccesibility.General.Label.Separator.getter();
        sub_100058000(&unk_100781F20);
        sub_10000E188(&qword_100771E20, &unk_100781F20);
        BidirectionalCollection<>.joined(separator:)();

        return;
      }

      if (v35 >= *(v34 + 16))
      {
        break;
      }

      ++v35;
      v40 = *(v38 - 1);
      v39 = *v38;
      v38 += 2;
      v41 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v41 = v40 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1CD0(0, v37[2] + 1, 1);
          v37 = v50;
        }

        v44 = v37[2];
        v43 = v37[3];
        if (v44 >= v43 >> 1)
        {
          sub_1004A1CD0((v43 > 1), v44 + 1, 1);
          v37 = v50;
        }

        v37[2] = v44 + 1;
        v45 = &v37[2 * v44];
        v45[4] = v40;
        v45[5] = v39;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

unint64_t sub_100491AC0()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v11, "accessibilityCustomActions");
  if (v1)
  {
    v2 = v1;
    sub_100003540(0, &qword_10076BCE0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v12 = v3;
  static TTRAccesibility.Templates.Details.getter();
  sub_100003540(0, &qword_10076FCB0);
  v4 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(UIAccessibilityCustomAction);

  v7 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1004933CC;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10044E9F0;
  aBlock[3] = &unk_10072AAB0;
  v8 = _Block_copy(aBlock);
  [v6 initWithName:v7 image:v4 actionHandler:v8];

  _Block_release(v8);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v12;
}

id sub_100491DAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_10049278C(&OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___infoButton, sub_1004910BC);

  [v2 bounds];
  CGRect.bottomLeftPoint(isFlipped:)();
  v3 = [v2 ttriAccessibilityShowContextMenuAtPoint:?];

  return v3;
}

id sub_100491E64(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_viewModel;
  v11 = type metadata accessor for TTRTemplatesListViewModel.Template();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_listContentView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeViewConstraints] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_separatorConstraint] = 0;
  v12 = &v4[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___infoButton] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___placeholderImageForBadge] = 0;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100491FA4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_viewModel;
  v5 = type metadata accessor for TTRTemplatesListViewModel.Template();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_listContentView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeContainerView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_badgeViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_separatorConstraint] = 0;
  v6 = &v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell_infoButtonMenuProvider];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___infoButton] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders21TTRITemplatesListCell____lazy_storage___placeholderImageForBadge] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

void sub_1004921C4()
{
  sub_100492270();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100492270()
{
  if (!qword_100785380)
  {
    type metadata accessor for TTRTemplatesListViewModel.Template();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100785380);
    }
  }
}

NSString sub_1004922C8()
{
  result = String._bridgeToObjectiveC()();
  qword_100785300 = result;
  return result;
}

uint64_t sub_100492300(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgeContainerView.ViewModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_1004934C8(a2, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_10049352C(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10049367C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_100068444;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10072ABC8;
  v10 = _Block_copy(aBlock);
  v11 = a1;

  [v11 performBatchUpdates:v10];
  _Block_release(v10);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

void sub_1004924F0(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRListColors.Color();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&a1[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_badgeView];
  TTRListBadgeView.configure(with:customSmartListShape:)();
  v9 = *(a2 + *(type metadata accessor for BadgeContainerView.ViewModel(0) + 20));
  v10 = [v8 layer];
  v11 = v10;
  if (v9 == 1)
  {
    v12 = sub_10049278C(&OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView____lazy_storage___badgeOvalClipMask, sub_10049375C);
    [v11 setMask:v12];

    sub_1004927F0();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    TTRListDetailBadgeViewModel.badgeColor.getter();
    v19 = TTRListColors.Color.nativeColor.getter();
    (*(v5 + 8))(v7, v4);
    v20 = [a1 traitCollection];
    isa = UITraitCollection.modifiedToOnlyDarkenColorsForIncreaseContrast()().super.isa;

    v22 = [v19 resolvedColorWithTraitCollection:isa];
    [v16 setBackgroundColor:v22];

    [v14 setHidden:0];
  }

  else
  {
    [v10 setMask:0];

    v23 = *&a1[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView];
    if (v23)
    {

      [v23 setHidden:1];
    }
  }
}

id sub_10049278C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_1004927F0()
{
  v1 = &v0[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView];
  v2 = *&v0[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView];
  v3 = *&v0[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView + 8];
  v4 = *&v0[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView + 16];
  if (v2)
  {
    goto LABEL_4;
  }

  v24 = *&v0[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView + 8];
  v25 = *&v0[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView + 16];
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  if (v6)
  {
    v7 = [objc_opt_self() configurationWithPointSize:8.0];
    v8 = [v6 imageWithConfiguration:v7];

    v9 = [objc_allocWithZone(UIImageView) initWithImage:v8];
    [v9 setContentMode:4];
    v10 = [objc_opt_self() whiteColor];
    [v9 setTintColor:v10];

    v11 = [objc_allocWithZone(UIView) init];
    v12 = [v11 layer];
    v26.origin.x = 18.0;
    v26.origin.y = 18.0;
    v26.size.width = 15.0;
    v26.size.height = 15.0;
    [v12 setCornerRadius:CGRectGetWidth(v26) * 0.5];

    v13 = [v11 layer];
    [v13 setCornerCurve:kCACornerCurveCircular];

    sub_100058000(&qword_10076B780);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10062D410;
    *(v14 + 32) = v11;
    *(v14 + 40) = v9;
    v15 = objc_allocWithZone(type metadata accessor for UnanimatedContainerBoxView());
    sub_100003540(0, &qword_10076B020);
    v16 = v11;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v15 initWithArrangedSubviews:isa];

    [v18 setAlignment:3 forView:v9 inAxis:0];
    [v18 setAlignment:3 forView:v9 inAxis:1];
    v19 = *v1;
    v20 = *(v1 + 1);
    v21 = *(v1 + 2);
    *v1 = v18;
    *(v1 + 1) = v16;
    *(v1 + 2) = v9;
    v22 = v18;
    v9;
    v16;
    v23 = v22;
    sub_10049337C(v19, v20, v21);
    [v0 addArrangedSubview:v23];

    v2 = 0;
    v3 = v24;
    v4 = v25;
LABEL_4:
    sub_10049370C(v2, v3, v4);
    return;
  }

  __break(1u);
}

id sub_100492B58(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView];
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  *&v4[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView____lazy_storage___badgeOvalClipMask] = 0;
  type metadata accessor for TTRListBadgeView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_badgeView] = v11;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v12 = v11;
  v13 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  sub_100058000(&qword_10076B780);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D420;
  *(v14 + 32) = v12;
  sub_100003540(0, &qword_10076B020);
  v15 = v13;
  v16 = v12;
  v17 = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setArrangedSubviews:{isa, v20.receiver, v20.super_class}];

  [v17 setDelegate:v17];
  return v17;
}

void sub_100492DB8()
{
  sub_10049337C(*(v0 + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView), *(v0 + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView + 8), *(v0 + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView_sharingIconView + 16));
  v1 = *(v0 + OBJC_IVAR____TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4218BadgeContainerView____lazy_storage___badgeOvalClipMask);
}

id sub_1004931CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnanimatedContainerBoxView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void destroy for BadgeContainerView.SharingIconView(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t assignWithCopy for BadgeContainerView.SharingIconView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  v10 = *(a2 + 16);
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  v12 = v10;

  return a1;
}

uint64_t assignWithTake for BadgeContainerView.SharingIconView(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

id sub_100493338()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for UnanimatedContainerBoxView();
  return objc_msgSendSuper2(&v2, "layoutSubviews");
}

void sub_10049337C(void *a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_1004933FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10077FBB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049346C(uint64_t a1)
{
  v2 = type metadata accessor for BadgeContainerView.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004934C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgeContainerView.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049352C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgeContainerView.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004935A8()
{
  v1 = *(type metadata accessor for BadgeContainerView.ViewModel(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100493694(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for BadgeContainerView.ViewModel(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

id sub_10049370C(id result, void *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;

    return a3;
  }

  return result;
}

id sub_10049375C(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 bezierPathWithRect:{0.0, 0.0, 32.0, 32.0}];
  v8.origin.x = 18.0;
  v8.origin.y = 18.0;
  v8.size.width = 15.0;
  v8.size.height = 15.0;
  CGRectInset(v8, -1.0, -1.0);
  [a1 effectiveUserInterfaceLayoutDirection];
  CGRect.flippedForRTLIfNeeded(for:inContainerWithWidth:)();
  v4 = [v2 bezierPathWithOvalInRect:?];
  [v3 appendPath:v4];

  v5 = [objc_allocWithZone(CAShapeLayer) init];
  v6 = [v3 CGPath];
  [v5 setPath:v6];

  [v5 setFillRule:kCAFillRuleEvenOdd];
  return v5;
}

uint64_t sub_1004938D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10077FBB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100493948(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTRTemplatesListViewModel.Template();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10049398C(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRListDetailBadgeViewModel();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t sub_100493A54(uint64_t a1)
{
  v2 = type metadata accessor for TTRListDetailBadgeViewModel();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_100493AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_100493B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_100493BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_100493C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_100493CD0()
{
  result = type metadata accessor for TTRListDetailBadgeViewModel();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_100493DA4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_webView;
  *&v1[v7] = [objc_allocWithZone(WKWebView) init];
  v8 = OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_finishedNavigationPublisher;
  sub_100058000(&qword_100785618);
  swift_allocObject();
  *&v1[v8] = PassthroughSubject.init()();
  sub_100003540(0, &qword_100777780);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v11.receiver = v1;
    v11.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v11, "init");
    [*&v10[OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_webView] setNavigationDelegate:v10];
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100493F94()
{
  ObjectType = swift_getObjectType();
  v4 = 1;

  PassthroughSubject.send(completion:)();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100494100(uint64_t a1)
{
  v79 = a1;
  ObjectType = swift_getObjectType();
  v1 = sub_100058000(&qword_1007701A0);
  __chkstk_darwin(v1 - 8);
  v86 = &v73 - v2;
  v87 = sub_100058000(&qword_100785620);
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v73 - v3;
  v91 = sub_100058000(&qword_100785628);
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v73 - v4;
  v5 = sub_100058000(&qword_100785630);
  v93 = *(v5 - 8);
  v94 = v5;
  __chkstk_darwin(v5);
  v90 = &v73 - v6;
  v7 = sub_100058000(&unk_100785638);
  v95 = *(v7 - 8);
  v96 = v7;
  __chkstk_darwin(v7);
  v92 = &v73 - v8;
  v9 = type metadata accessor for URL();
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v76 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = &v73 - v12;
  v13 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v13 - 8);
  v73 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v74 = &v73 - v16;
  v17 = type metadata accessor for TTRWebViewLoadingStateHelper.HTMLSource();
  __chkstk_darwin(v17);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100058000(&qword_100785648);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v73 - v22;
  v24 = sub_100058000(&unk_100785650);
  v82 = *(v24 - 8);
  v83 = v24;
  __chkstk_darwin(v24);
  v26 = &v73 - v25;
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = (&v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003540(0, &qword_100777780);
  *v30 = static OS_dispatch_queue.main.getter();
  (*(v28 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v27);
  v31 = _dispatchPreconditionTest(_:)();
  result = (*(v28 + 8))(v30, v27);
  if (v31)
  {
    v97 = v77;
    v33 = v77;
    Just.init(_:)();
    sub_100058000(&qword_1007699F0);
    Just.setFailureType<A>(to:)();
    (*(v21 + 8))(v23, v20);
    sub_100494F4C(v79, v19);
    v34 = v26;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = *(sub_100058000(&qword_100785660) + 48);
      v37 = v80;
      v36 = v81;
      v38 = *(v80 + 32);
      v39 = v75;
      v38(v75, v19, v81);
      v40 = v76;
      v38(v76, &v19[v35], v36);
      v41 = *&v33[OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_webView];
      URL._bridgeToObjectiveC()(OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_webView);
      v43 = v42;
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      v47 = [v41 loadFileURL:v43 allowingReadAccessToURL:v45];

      v48 = *(v37 + 8);
      v48(v40, v36);
      v48(v39, v36);
    }

    else
    {
      v49 = sub_100058000(&qword_1007856B0);
      v50 = v74;
      sub_1000A9578(&v19[*(v49 + 48)], v74);
      v51 = *&v33[OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_webView];
      v52 = String._bridgeToObjectiveC()();

      v53 = v73;
      sub_100284F94(v50, v73);
      v55 = v80;
      v54 = v81;
      if ((*(v80 + 48))(v53, 1, v81) == 1)
      {
        v57 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v56);
        v57 = v58;
        (*(v55 + 8))(v53, v54);
      }

      v47 = [v51 loadHTMLString:v52 baseURL:v57];

      sub_1000079B4(v50, &unk_100775660);
    }

    v97 = *&v33[OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_finishedNavigationPublisher];
    *(swift_allocObject() + 16) = v47;
    v59 = v47;

    sub_100058000(&qword_100785618);
    sub_10000E188(&unk_100785668, &qword_100785618);
    v60 = v84;
    Publisher.tryFirst(where:)();

    v61 = [objc_opt_self() mainRunLoop];
    v97 = v61;
    v62 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v63 = v86;
    (*(*(v62 - 8) + 56))(v86, 1, 1, v62);
    sub_100003540(0, &qword_10076DFB0);
    sub_10000E188(&unk_100785678, &qword_100785620);
    sub_100139DF0();
    v64 = v87;
    v65 = v88;
    Publisher.receive<A>(on:options:)();
    sub_1000079B4(v63, &qword_1007701A0);

    (*(v85 + 8))(v60, v64);
    sub_10000E188(&qword_100785688, &qword_100785628);
    sub_10000E188(&qword_100785690, &unk_100785650);
    v67 = v90;
    v66 = v91;
    v68 = v83;
    Publisher.combineLatest<A>(_:)();
    (*(v89 + 8))(v65, v66);
    sub_100003540(0, &qword_100785698);
    sub_10000E188(&qword_1007856A0, &qword_100785630);
    v69 = v92;
    v70 = v94;
    Publisher.map<A>(_:)();
    (*(v93 + 8))(v67, v70);
    sub_10000E188(&qword_1007856A8, &unk_100785638);
    v71 = v96;
    v72 = Publisher.eraseToAnyPublisher()();

    (*(v95 + 8))(v69, v71);
    (*(v82 + 8))(v34, v68);
    return v72;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100494D34(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = *a1;
  v3 = *(a1 + 8);
  sub_100003540(0, &qword_1007856B8);
  v5 = v4;
  swift_errorRetain();
  v6 = v2;
  LOBYTE(v2) = static NSObject.== infix(_:_:)();

  if (v2)
  {
    if (v3)
    {
      swift_willThrow();
    }

    else
    {

      v7 = 1;
    }
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

id sub_100494E08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*(a1 + 16) + OBJC_IVAR____TtC9Reminders28TTRWebViewLoadingStateHelper_webView);
  *a2 = v2;
  return v2;
}

uint64_t type metadata accessor for TTRWebViewLoadingStateHelper.HTMLSource()
{
  result = qword_100785730;
  if (!qword_100785730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100494F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRWebViewLoadingStateHelper.HTMLSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_100494FD0(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for URL();
      v7 = *(*(v6 - 8) + 16);
      v7(a1, a2, v6);
      v8 = sub_100058000(&qword_100785660);
      v7(&a1[*(v8 + 48)], &a2[*(v8 + 48)], v6);
    }

    else
    {
      v10 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v10;

      v11 = *(sub_100058000(&qword_1007856B0) + 48);
      v12 = type metadata accessor for URL();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(&a2[v11], 1, v12))
      {
        v14 = sub_100058000(&unk_100775660);
        memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
      }

      else
      {
        (*(v13 + 16))(&a1[v11], &a2[v11], v12);
        (*(v13 + 56))(&a1[v11], 0, 1, v12);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_1004951F0(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for URL();
    v9 = *(*(v2 - 8) + 8);
    (v9)((v2 - 8), a1, v2);
    v3 = a1 + *(sub_100058000(&qword_100785660) + 48);
    v4 = v2;
    v5 = v9;
  }

  else
  {

    v6 = *(sub_100058000(&qword_1007856B0) + 48);
    v7 = type metadata accessor for URL();
    v10 = *(v7 - 8);
    result = (*(v10 + 48))(a1 + v6, 1, v7);
    if (result)
    {
      return result;
    }

    v5 = *(v10 + 8);
    v3 = a1 + v6;
    v4 = v7;
  }

  return v5(v3, v4);
}

char *sub_10049534C(char *a1, char *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for URL();
    v5 = *(*(v4 - 8) + 16);
    v5(a1, a2, v4);
    v6 = sub_100058000(&qword_100785660);
    v5(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v4);
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;

    v8 = *(sub_100058000(&qword_1007856B0) + 48);
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(&a2[v8], 1, v9))
    {
      v11 = sub_100058000(&unk_100775660);
      memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_100495520(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_10049570C(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for URL();
      v5 = *(*(v4 - 8) + 16);
      v5(a1, a2, v4);
      v6 = sub_100058000(&qword_100785660);
      v5(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v4);
    }

    else
    {
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);

      v7 = *(sub_100058000(&qword_1007856B0) + 48);
      v8 = type metadata accessor for URL();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        v10 = sub_100058000(&unk_100775660);
        memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
      }

      else
      {
        (*(v9 + 16))(&a1[v7], &a2[v7], v8);
        (*(v9 + 56))(&a1[v7], 0, 1, v8);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10049570C(uint64_t a1)
{
  v2 = type metadata accessor for TTRWebViewLoadingStateHelper.HTMLSource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100495768(char *a1, char *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for URL();
    v5 = *(*(v4 - 8) + 32);
    v5(a1, a2, v4);
    v6 = sub_100058000(&qword_100785660);
    v5(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v4);
  }

  else
  {
    *a1 = *a2;
    v7 = *(sub_100058000(&qword_1007856B0) + 48);
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      v10 = sub_100058000(&unk_100775660);
      memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_100495938(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_10049570C(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for URL();
      v5 = *(*(v4 - 8) + 32);
      v5(a1, a2, v4);
      v6 = sub_100058000(&qword_100785660);
      v5(&a1[*(v6 + 48)], &a2[*(v6 + 48)], v4);
    }

    else
    {
      *a1 = *a2;
      v7 = *(sub_100058000(&qword_1007856B0) + 48);
      v8 = type metadata accessor for URL();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        v10 = sub_100058000(&unk_100775660);
        memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
      }

      else
      {
        (*(v9 + 32))(&a1[v7], &a2[v7], v8);
        (*(v9 + 56))(&a1[v7], 0, 1, v8);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_100495B18()
{
  sub_100261264();
  if (v0 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v4 = &v3;
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v5 = &v2;
      swift_initEnumMetadataMultiPayload();
    }
  }
}

uint64_t sub_100495C00@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  if (a1)
  {
    v12 = *(v4 + 16) != a1 || a2 == 0;
    if (!v12 && a3 != 0)
    {
      v14 = a2;
      v15 = a3;
      sub_1001C7580(v15, v11);

      v16 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v11, 1, v16) != 1)
      {
        (*(v17 + 32))(a4, v11, v16);
        return (*(v17 + 56))(a4, 0, 1, v16);
      }

      sub_1000079B4(v11, &unk_10076BB50);
    }
  }

  v18 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  return (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
}

uint64_t sub_100495DBC()
{
  v0 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersBoardMainDiffableDataSource.columnID(containingItemID:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000079B4(v2, &unk_10076BB50);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = sub_100495F7C();
    (*(v4 + 8))(v6, v3);
    if (v7)
    {
      v8 = sub_1001C7380();

      return v8;
    }
  }

  return 0;
}

uint64_t sub_100495F7C()
{
  v0 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000079B4(v2, &unk_100771B10);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = UICollectionView.visibleCellForItem(at:)();
    (*(v4 + 8))(v6, v3);
    if (v7)
    {
      type metadata accessor for TTRIBoardColumnCollectionViewCell();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100496140()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004961A4(void *a1)
{
  UIView.ancestorViews(includingSelf:)();
  dispatch thunk of _AnySequenceBox._makeIterator()();

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v2 = v14;
  if (!v14)
  {

    return 0;
  }

  type metadata accessor for TTRIBoardReminderCell();
  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    while (1)
    {
      v7 = swift_dynamicCastClass();
      if (!v7)
      {
        break;
      }

      v10 = v7;

      if (v2 != a1)
      {

        v11 = a1;
        v5 = a1;
      }

      dispatch thunk of _AnyIteratorBoxBase.next()();
      v2 = v14;
      v4 = v10;
    }

    type metadata accessor for TTRIBoardColumnCollectionViewCell();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v6 = v8;

      v3 = v6;
      goto LABEL_4;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      if (v3)
      {
        break;
      }
    }

LABEL_4:
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v2 = v14;
  }

  v13 = v9;

  return v13;
}

void *sub_10049631C(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076E910);
  __chkstk_darwin(v4 - 8);
  v6 = v27 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v27[0] = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  sub_10000C36C(a1, v14);
  result = (*(v15 + 8))(v14, v15);
  if (result)
  {

    (*(v11 + 16))(v13, a2, v10);
    v17 = (*(v11 + 88))(v13, v10);
    if (v17 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
    {
LABEL_3:
      (*(v11 + 8))(v13, v10);
      return 0;
    }

    if (v17 == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v11 + 96))(v13, v10);
      v18 = v27[0];
      (*(v27[0] + 32))(v9, v13, v7);
      v19 = v27[1];
      if (sub_1001D6FFC())
      {
        v21 = v20;
        ObjectType = swift_getObjectType();
        (*(v21 + 16))(v19, v9, ObjectType, v21);
        swift_unknownObjectRelease();
        (*(v18 + 8))(v9, v7);
        v23 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
        v24 = 1;
        if ((*(*(v23 - 8) + 48))(v6, 1, v23) != 1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        (*(v18 + 8))(v9, v7);
        v25 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
        (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
      }

      v24 = 0;
LABEL_19:
      sub_1004967B0(v6);
      return v24;
    }

    if (v17 == enum case for TTRRemindersListViewModel.Item.reminder(_:) || v17 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v17 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v17 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v17 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v17 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v17 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      goto LABEL_3;
    }

    if (v17 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:))
    {
      return 0;
    }

    else
    {
      v26 = v17 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:);
      result = 0;
      if (!v26)
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1004967B0(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076E910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100496818(uint64_t a1)
{
  v3 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  v9 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_viewModel;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &unk_100776BC0);
  swift_beginAccess();
  sub_100019180(a1, v1 + v9, &unk_100776BC0);
  swift_endAccess();
  sub_10000794C(v1 + v9, v5, &unk_100776BC0);
  LOBYTE(v9) = sub_10049BC40(v5, v8);
  sub_1000079B4(v5, &unk_100776BC0);
  if (v9)
  {
    sub_100496AA0();
  }

  sub_1000079B4(a1, &unk_100776BC0);
  return sub_1000079B4(v8, &unk_100776BC0);
}

uint64_t sub_10049699C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100785958);
  v1 = sub_100003E30(v0, qword_100785958);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_100496AA0()
{
  v1 = v0;
  v75 = sub_100058000(&qword_100781830);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v69 = &v67 - v2;
  v3 = sub_100058000(&qword_10076E900);
  __chkstk_darwin(v3 - 8);
  v80 = &v67 - v4;
  v72 = type metadata accessor for TTRRemindersListViewModel.Item();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v82 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListLayout();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v77 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v9;
  __chkstk_darwin(v10);
  v12 = &v67 - v11;
  v13 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v13 - 8);
  v68 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v67 - v16;
  v18 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v73 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v67 - v22;
  v24 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_viewModel;
  swift_beginAccess();
  v25 = &v1[v24];
  v26 = v18;
  v27 = v19;
  sub_10000794C(v25, v17, &unk_100776BC0);
  if ((*(v19 + 48))(v17, 1, v26) != 1)
  {
    v36 = *(v19 + 32);
    v75 = v19 + 32;
    v74 = v36;
    (v36)(v23, v17, v26);
    v70 = v12;
    TTRRemindersListEditableSectionNameViewModel.sectionHeaderTitle.getter();
    v38 = v78;
    v37 = v79;
    (v78)[13](v8, enum case for TTRRemindersListLayout.list(_:), v79);
    TTRRemindersListEditableSectionNameViewModel.placeholderTitle(listLayout:)();
    v40 = v39;
    (v38[1])(v8, v37);
    if (v40)
    {
      v41 = objc_allocWithZone(NSAttributedString);
      v42 = String._bridgeToObjectiveC()();

      v43 = [v41 initWithString:v42];

      v79 = v43;
      v44 = v43;
    }

    else
    {
      v79 = 0;
    }

    v45 = v83;
    v46 = v80;
    TTRRemindersListEditableSectionNameViewModel.item.getter();
    TTRRemindersListViewModel.Item.sectionHeader.getter();
    v47 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      result = sub_1000079B4(v46, &qword_10076E900);
      LODWORD(v69) = 0;
    }

    else
    {
      LODWORD(v69) = TTRRemindersListViewModel.SectionHeader.isTitleEditable.getter();
      result = (*(v48 + 8))(v46, v47);
    }

    v49 = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameContainer];
    v80 = v1;
    v50 = v81;
    v78 = v49;
    if (!v49)
    {
      goto LABEL_17;
    }

    v51 = v77;
    (*(v81 + 16))(v77, v70, v45);
    v52 = v73;
    (*(v27 + 16))(v73, v23, v26);
    v53 = *(v50 + 80);
    v68 = v23;
    v54 = (v53 + 16) & ~v53;
    v55 = v26;
    v56 = (v76 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = (*(v27 + 80) + v57 + 9) & ~*(v27 + 80);
    v59 = swift_allocObject();
    v76 = v27;
    v60 = v59;
    (*(v50 + 32))(v59 + v54, v51, v83);
    v61 = v80;
    *(v60 + v56) = v80;
    v62 = v60 + v57;
    v63 = v79;
    *v62 = v79;
    *(v62 + 8) = v69 & 1;
    (v74)(v60 + v58, v52, v55);
    v64 = swift_allocObject();
    *(v64 + 16) = sub_10049C8A4;
    *(v64 + 24) = v60;
    aBlock[4] = sub_100026410;
    aBlock[5] = v64;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10072ACE0;
    v65 = _Block_copy(aBlock);
    v66 = v78;
    v61;

    [v66 performBatchUpdates:v65];

    _Block_release(v65);
    LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

    if ((v65 & 1) == 0)
    {
      sub_1004996E4();

      (*(v71 + 8))(v82, v72);
      (*(v50 + 8))(v70, v83);
      (*(v76 + 8))(v68, v55);
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  sub_1000079B4(v17, &unk_100776BC0);
  result = *&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView];
  if (!result)
  {
    goto LABEL_16;
  }

  [result setText:0];
  v29 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameModule;
  swift_beginAccess();
  v30 = v74;
  v31 = v75;
  result = v74[6](&v1[v29], 1, v75);
  if (!result)
  {
    v32 = v69;
    v30[2](v69, &v1[v29], v31);
    TTRRemindersListInCellModule.interface.getter();
    (v30[1])(v32, v31);
    v33 = aBlock[9];
    v34 = v68;
    (*(v27 + 56))(v68, 1, 1, v26);
    v35 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
    swift_beginAccess();
    sub_100019180(v34, v33 + v35, &unk_100776BC0);
    swift_endAccess();
    sub_1004E49D0();
    swift_unknownObjectRelease();
    return sub_1000079B4(v34, &unk_100776BC0);
  }

  return result;
}

void sub_1004974DC(uint64_t a1)
{
  v3 = type metadata accessor for TTRITreeViewCellModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_1007884E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_100058000(&unk_10076B8D0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_treeCellViewModel;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &unk_1007884E0);
  v20 = a1;
  sub_10000794C(a1, &v12[v14], &unk_1007884E0);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      sub_1000079B4(v12, &unk_1007884E0);
      swift_beginAccess();
      sub_100019180(v20, v1 + v13, &unk_1007884E0);
      swift_endAccess();
      return;
    }

    goto LABEL_6;
  }

  sub_10000794C(v12, v8, &unk_1007884E0);
  if (v15(&v12[v14], 1, v3) == 1)
  {
    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000079B4(v12, &unk_10076B8D0);
    swift_beginAccess();
    sub_100019180(v20, v1 + v13, &unk_1007884E0);
    swift_endAccess();
LABEL_7:
    sub_100499088();
    return;
  }

  v16 = v19;
  (*(v4 + 32))(v19, &v12[v14], v3);
  sub_10049C994(&qword_10076B908, &type metadata accessor for TTRITreeViewCellModel);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v16, v3);
  v18(v8, v3);
  sub_1000079B4(v12, &unk_1007884E0);
  swift_beginAccess();
  sub_100019180(v20, v1 + v13, &unk_1007884E0);
  swift_endAccess();
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_1004978D4()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100781830);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameModule;
  swift_beginAccess();
  result = (*(v3 + 48))(v1 + v6, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    TTRRemindersListInCellModule.interface.getter();
    (*(v3 + 8))(v5, v2);
    v8 = v15;
    *(v15 + 40) = &off_10072AC28;
    result = swift_unknownObjectWeakAssign();
    v9 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameTextView);
    if (v9)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v11 = v9;
      v12 = v11;
      if (Strong)
      {
        sub_100276240(v11);
        swift_unknownObjectRelease();
      }

      *(v8 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_layoutStyle) = 0;
      sub_1004E5374([v12 isEditing]);

      v13 = swift_unknownObjectWeakLoadStrong();
      result = swift_unknownObjectRelease();
      if (v13)
      {
        swift_unknownObjectWeakAssign();
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}