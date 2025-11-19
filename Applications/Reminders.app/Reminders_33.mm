id TTRIShowGroupAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowGroupAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowGroupAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowGroupAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1003A3F9C(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v23[3] = type metadata accessor for TTRIRemindersListPresenter_collectionView();
  v23[4] = &off_10071FB40;
  v23[0] = a1;
  v5 = &a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_initialFrameForLoadingView];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_externalScrollViewDelegate] = 0;
  v6 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_preferredChromelessBarStates;
  v21 = 0;
  sub_100058000(&unk_100781980);
  swift_allocObject();
  *&a2[v6] = TTRObservableViewModel.init(value:)();
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_targetItemsForVisibleContextMenu] = &_swiftEmptyArrayStorage;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_scrollingController] = 0;
  v7 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_itemStateTracker;
  type metadata accessor for TTRRemindersListItemStateTracker();
  swift_allocObject();
  *&a2[v7] = TTRRemindersListItemStateTracker.init()();
  v8 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilAutoCommitTracker;
  type metadata accessor for TTRIRemindersListPencilAutoCommitTracker();
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *&a2[v8] = v9;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_chromelessToolbarUpdater] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presentationTreesCapability] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_dragAndDropController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_dragAndDropCoordinator] = 0;
  v10 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_prefetchExtender;
  type metadata accessor for TTRListContentsPrefetchExtender();
  swift_allocObject();
  *&a2[v10] = TTRListContentsPrefetchExtender.init(prefetchCountNeeded:)();
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_accessibilityController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_automaticSubtaskSelectionController] = 0;
  v11 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_contextMenuOriginatorItem;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(*(v12 - 8) + 56);
  v13(&a2[v11], 1, 1, v12);
  v13(&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_firstVisibleItemToRestore], 1, 1, v12);
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_itemCollapsedStatesOverrideCancellable] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_internalFocusedCell] = 0;
  v14 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_listInfo;
  v15 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v15 - 8) + 56))(&a2[v14], 1, 1, v15);
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___completedTasksRotor] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___incompleteTasksRotor] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView____lazy_storage___overdueTasksRotor] = 0;
  sub_10000B0D8(v23, &a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter]);
  sub_1000A96A0();
  v16 = static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRIDebouncedHoverAction();
  v17 = swift_allocObject();
  v17[3] = 0;
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100767510);
  swift_allocObject();
  v17[6] = PassthroughSubject.init()();
  v17[7] = 0;
  v17[4] = v16;
  v17[5] = 0x3FF8000000000000;
  *&a2[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilHoverCleanupAction] = v17;
  v22.receiver = a2;
  v22.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", 0, 0, v21);
  sub_100004758(v23);
  v19 = *&v18[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_pencilHoverCleanupAction];
  swift_beginAccess();
  *(v19 + 24) = &off_10072CF18;
  swift_unknownObjectWeakAssign();
  return v18;
}

char *sub_1003A4350(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v22[4] = &off_100727510;
  v22[3] = type metadata accessor for TTRIRemindersListPresenter();
  v22[0] = a1;
  v5 = &a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_initialFrameForLoadingView];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_preferredChromelessBarStates;
  v20 = 0;
  sub_100058000(&unk_100781980);
  swift_allocObject();
  *&a2[v6] = TTRObservableViewModel.init(value:)();
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController] = 0;
  v7 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_itemStateTracker;
  type metadata accessor for TTRRemindersListItemStateTracker();
  swift_allocObject();
  *&a2[v7] = TTRRemindersListItemStateTracker.init()();
  v8 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilAutoCommitTracker;
  type metadata accessor for TTRIRemindersListPencilAutoCommitTracker();
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *&a2[v8] = v9;
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_chromelessToolbarUpdater] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView] = 0;
  v10 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_canMoveItemReturnValueTempOverrides;
  type metadata accessor for TTRIRemindersListTemporaryItemSet();
  v11 = swift_allocObject();
  *(v11 + 24) = &_swiftEmptySetSingleton;
  sub_1000A96A0();
  static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRDeferredAction();
  swift_allocObject();
  *(v11 + 16) = TTRDeferredAction.init(queue:)();
  sub_1003A9060(&qword_1007810E0, type metadata accessor for TTRIRemindersListTemporaryItemSet);

  TTRDeferredAction.delegate.setter();

  *&a2[v10] = v11;
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_automaticSubtaskSelectionController] = 0;
  v12 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_contextMenuOriginatorItem;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(*(v13 - 8) + 56);
  v14(&a2[v12], 1, 1, v13);
  a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_treeViewHasSwipedItem] = 0;
  a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_isHighlightingItemsProgrammatically] = 0;
  v14(&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_firstVisibleItemToRestore], 1, 1, v13);
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_internalFocusedCell] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___completedTasksRotor] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___incompleteTasksRotor] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___overdueTasksRotor] = 0;
  sub_10000B0D8(v22, &a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter]);
  v15 = static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRIDebouncedHoverAction();
  v16 = swift_allocObject();
  v16[3] = 0;
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100767510);
  swift_allocObject();
  v16[6] = PassthroughSubject.init()();
  v16[7] = 0;
  v16[4] = v15;
  v16[5] = 0x3FF8000000000000;
  *&a2[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilHoverCleanupAction] = v16;
  v21.receiver = a2;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0, v20);
  sub_100004758(v22);
  v18 = *&v17[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilHoverCleanupAction];
  swift_beginAccess();
  *(v18 + 24) = &off_1007250E0;
  swift_unknownObjectWeakAssign();
  return v17;
}

id sub_1003A4708(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v20[4] = &off_1007177D0;
  v20[3] = type metadata accessor for TTRIRemindersBoardPresenter();
  v20[0] = a1;
  v5 = &a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_initialFrameForLoadingView];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_preferredChromelessBarStates;
  v19 = 0;
  sub_100058000(&unk_100781980);
  swift_allocObject();
  *&a2[v6] = TTRObservableViewModel.init(value:)();
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_targetItemsForVisibleContextMenu] = &_swiftEmptyArrayStorage;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource] = 0;
  v7 = &a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_eventPublishers];
  sub_100058000(&qword_100772768);
  swift_allocObject();
  v8 = PassthroughSubject.init()();
  swift_allocObject();
  v9 = PassthroughSubject.init()();
  *v7 = v8;
  v7[1] = v9;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_deferredViewActionProvider] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableScrollViewInsets] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_observableColumnContentInsets] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_selectionController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_automaticSubtaskSelectionController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dragAndDropCoordinator] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_rootViewDragInteractionHandler] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_columnReorderingController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_chromelessBarsController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainScrollingController] = 0;
  v10 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemStateTracker;
  type metadata accessor for TTRRemindersListItemStateTracker();
  swift_allocObject();
  *&a2[v10] = TTRRemindersListItemStateTracker.init()();
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_headerViewController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_itemLookupController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_focusController] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_dummyContentScrollView] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_scrollToTopCancellable] = 0;
  v11 = &a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_completedHeaderViewState];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_completedRemindersState;
  v13 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_listInfo;
  v15 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v15 - 8) + 56))(&a2[v14], 1, 1, v15);
  sub_10000B0D8(v20, &a2[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter]);
  v18.receiver = a2;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  sub_100004758(v20);
  return v16;
}

uint64_t sub_1003A4A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMFeatureFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListLayout();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v56[4] = &off_10071AA70;
  v56[5] = &off_10071AB98;
  v56[3] = v12;
  v56[0] = a2;
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRRemindersListLayout.list(_:))
  {
    (*(v5 + 104))(v7, enum case for REMFeatureFlags.collectionView(_:), v4);

    v14 = REMFeatureFlags.isEnabled.getter();
    (*(v5 + 8))(v7, v4);
    if ((v14 & 1) != 0 && (type metadata accessor for TTRUserDefaults(), v15 = static TTRUserDefaults.appUserDefaults.getter(), TTRUserDefaults.observablePropertyForLegacyTableViewBasedRemindersListEnabled.getter(), v15, TTRUserDefaultsObservableProperty.value.getter(), , (v53 & 1) == 0))
    {
      sub_1003A7670(v56, &v53);
      v40 = type metadata accessor for TTRIRemindersListPresenter_collectionView();
      v41 = swift_allocObject();
      v42 = sub_10000AE84(&v53, v54);
      __chkstk_darwin(v42);
      v44 = (&v53 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v45 + 16))(v44);
      v46 = sub_1003A5410(*v44, v41);
      sub_100004758(&v53);
      v54 = v40;
      v55 = &off_10071FB40;
      *&v53 = v46;
      v47 = objc_allocWithZone(type metadata accessor for TTRIRemindersListContentViewController_collectionView());
      v48 = sub_10000AE84(&v53, v54);
      __chkstk_darwin(v48);
      v50 = (&v53 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v51 + 16))(v50);
      v52 = *v50;

      v24 = sub_1003A3F9C(v52, v47);
      sub_100004758(&v53);
      v46[5] = &off_10072CF28;
      swift_unknownObjectWeakAssign();
    }

    else
    {
      sub_1003A7670(v56, &v53);
      v16 = type metadata accessor for TTRIRemindersListPresenter();
      v17 = swift_allocObject();
      *(v17 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v17 + 40) = 0;
      swift_unknownObjectWeakInit();
      sub_1003A76D4(&v53, (v17 + 48));
      v54 = v16;
      v55 = &off_100727510;
      *&v53 = v17;
      v18 = objc_allocWithZone(type metadata accessor for TTRIRemindersListContentViewController());
      v19 = sub_10000AE84(&v53, v54);
      __chkstk_darwin(v19);
      v21 = (&v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = *v21;

      v24 = sub_1003A4350(v23, v18);
      sub_100004758(&v53);
      *(v17 + 40) = &off_100725120;
      swift_unknownObjectWeakAssign();
    }

    goto LABEL_7;
  }

  if (v13 == enum case for TTRRemindersListLayout.columns(_:))
  {
    sub_1003A7670(v56, &v53);
    v25 = type metadata accessor for TTRIRemindersBoardPresenter();
    v26 = swift_allocObject();
    v27 = sub_10000AE84(&v53, v54);
    __chkstk_darwin(v27);
    v29 = (&v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    v31 = *v29;

    v32 = sub_1003A51F4(v31, v26);
    sub_100004758(&v53);
    v54 = v25;
    v55 = &off_1007177D0;
    *&v53 = v32;
    v33 = objc_allocWithZone(type metadata accessor for TTRIRemindersBoardMainViewController());
    v34 = sub_10000AE84(&v53, v54);
    __chkstk_darwin(v34);
    v36 = (&v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v37 + 16))(v36);
    v38 = *v36;

    v24 = sub_1003A4708(v38, v33);
    sub_100004758(&v53);
    swift_beginAccess();
    *(v32 + 40) = &off_10072A2A8;
    swift_unknownObjectWeakAssign();
LABEL_7:
    sub_100004758(v56);
    return v24;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003A51F4(uint64_t a1, uint64_t a2)
{
  v5[4] = &off_10071AA70;
  v5[5] = &off_10071AB98;
  v5[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v5[0] = a1;
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 40) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRRemindersBoardPresentationTreesManagementPresenterCapability();
  swift_allocObject();
  *(a2 + 96) = TTRRemindersBoardPresentationTreesManagementPresenterCapability.init()();
  type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();
  swift_allocObject();
  *(a2 + 104) = TTRRemindersBoardCollapsedStatesPresenterCapability.init()();
  type metadata accessor for TTRRemindersBoardCellPresentationStatesPresenterCapability();
  swift_allocObject();
  *(a2 + 112) = TTRRemindersBoardCellPresentationStatesPresenterCapability.init(showsInfoButtonWhenSelected:)();
  *(a2 + 120) = 0;
  sub_1003A7670(v5, a2 + 48);
  sub_1003A9060(&qword_1007810E8, type metadata accessor for TTRIRemindersBoardPresenter);

  TTRRemindersBoardPresentationTreesManagementPresenterCapability.delegate.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersBoardCollapsedStatesPresenterCapability.collapsedStateDidChangeExplicitly.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersBoardCellPresentationStatesPresenterCapability.cellPresentationStatesDidChange.setter();
  sub_100004758(v5);

  return a2;
}

void *sub_1003A5410(uint64_t a1, void *a2)
{
  v5[4] = &off_10071AA70;
  v5[5] = &off_10071AB98;
  v5[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v5[0] = a1;
  a2[3] = 0;
  swift_unknownObjectWeakInit();
  a2[5] = 0;
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_1007810D0);
  swift_allocObject();
  a2[12] = TTRICollectionViewPresentationTreeManagementPresenterCapability.init()();
  sub_100058000(&qword_10077C860);
  swift_allocObject();
  a2[13] = TTRICollectionViewCollapsedStatesPresenterCapability.init(loggingPrefix:)();
  type metadata accessor for TTRIRemindersListCellPresentationStatesPresenterCapability();
  swift_allocObject();
  a2[14] = TTRIRemindersListCellPresentationStatesPresenterCapability.init()();
  sub_1003A7670(v5, (a2 + 6));
  sub_1003A9060(&qword_1007810D8, type metadata accessor for TTRIRemindersListPresenter_collectionView);

  dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.delegate.setter();

  swift_allocObject();
  swift_weakInit();

  TTRICollectionViewCollapsedStatesPresenterCapability.collapsedStateDidChange.setter();

  swift_allocObject();
  swift_weakInit();

  TTRIRemindersListCellPresentationStatesPresenterCapability.cellPresentationStatesDidChange.setter();
  sub_100004758(v5);

  return a2;
}

uint64_t sub_1003A5654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = type metadata accessor for TTRIShowRemindersUndoManagerObserver();
  v8[4] = &off_10072E078;
  v8[0] = a2;
  *(a3 + 120) = a1;

  sub_10000B0D8(v8, v7);

  sub_1005A7098(v7);
  return sub_100004758(v8);
}

uint64_t sub_1003A579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = a7;
  v87 = a8;
  v84 = a5;
  v85 = a6;
  v81 = a4;
  v10 = (a1 + 408);
  v11 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v11 - 8);
  v13 = v73 - v12;
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 160) = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_sharingInfo;
  v15 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  (*(*(v15 - 8) + 56))(a3 + v14, 1, 1, v15);
  v16 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentHashtagEditorModuleEventHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext);
  *v18 = 0;
  v18[1] = 0;
  v18[2] = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_locationTriggerCancellable) = 0;
  v19 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentLocationPickerModuleDelegate);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_showRemindersAsOverdueObserver;
  type metadata accessor for TTRUserDefaultsShowRemindersAsOverdueObserver();
  swift_allocObject();
  *(a3 + v20) = TTRUserDefaultsShowRemindersAsOverdueObserver.init()();
  v21 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_autoCategorizationActivityMonitor;
  type metadata accessor for TTRRemindersListAutoCategorizationActivityMonitor();
  swift_allocObject();
  *(a3 + v21) = TTRRemindersListAutoCategorizationActivityMonitor.init()();
  v22 = a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_userDefaults;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_reminderChangeItemForShowDetailsCancellable) = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_localeChangedObserver) = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_timeZoneOverrideChangedObserver) = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_hasPreparedForModalPresentation) = 0;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_needsRefreshItemsWhenSceneEntersForeground) = 0;
  v23 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_firstVisibleItemIDToRestore;
  v24 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v24 - 8) + 56))(a3 + v23, 1, 1, v24);
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_activeTemplateSavingDismissAnimationCoordinator) = 0;
  v25 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_cellInfoButtonVisibilityAssertion;
  v26 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  v83 = sub_100058000(&qword_100775588);
  swift_allocObject();
  *(a3 + v25) = CurrentValueSubject.init(_:)();
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_cellInfoButtonVisibilityAssertionCancellable) = 0;
  v28 = *(a1 + 16);
  v80 = *a1;
  v27 = *(&v80 + 1);
  v77 = v28;
  v78 = v80;
  *(a3 + 72) = v80;
  v82 = v27;
  *(a3 + 88) = v28;
  v29 = *(a1 + 32);
  v79 = v29;
  *(a3 + 136) = v29;
  v76 = *(&v29 + 1);
  sub_10000794C(a1 + 256, &v98, &unk_100775590);
  v30 = a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar;
  v90 = v100;
  sub_100007DD8(&v98, (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar));
  *(v30 + 32) = v90;
  sub_10000794C(a1 + 304, &v98, &qword_100769608);
  v31 = a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_quickBar;
  v90 = v100;
  sub_100007DD8(&v98, (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_quickBar));
  *(v31 + 32) = v90;
  sub_10000B0D8(a1 + 160, a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_titleAttributesInteractor);
  v33 = *(a1 + 352);
  v88 = *(a1 + 360);
  v32 = v88;
  v34 = (a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  *v34 = v33;
  v34[1] = v32;
  v35 = v10[1];
  v74 = *v10;
  v75 = v35;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_locationQuickPicksInteractor) = v74;
  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_listPickerInteractor) = v35;
  v36 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  v37 = *(v36 + 108);
  v38 = v36;
  *&v90 = v36;
  *(a3 + 168) = *(a1 + v37);
  *(a3 + 160) = v81;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  *&v77 = *(a1 + 96);
  v39 = *(a1 + 152);
  v73[1] = *(a1 + 144);
  *&v75 = v39;
  sub_10000B0D8(a1 + 200, &v98);
  v40 = *(a1 + 248);
  v73[0] = *(a1 + 240);
  *&v74 = v40;
  v89 = a1;
  sub_10000B0D8(a1 + 368, v97);
  sub_10000B0D8(a1 + *(v38 + 100), v96);
  sub_10000B0D8(a1 + 48, v95);
  v41 = *(a1 + 136);
  v94[3] = type metadata accessor for TTRIPrivacyChecker();
  v94[4] = &protocol witness table for TTRIPrivacyChecker;
  v94[0] = v41;
  v81 = v41;
  type metadata accessor for TTRRemindersListPresenterCapability(0);
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v42 + 32) = 0x4000000000000000;
  v43 = objc_allocWithZone(NSCache);

  *(v42 + 240) = [v43 init];
  v44 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_currentShareURL;
  v45 = type metadata accessor for URL();
  (*(*(v45 - 8) + 56))(v42 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_fetchSuggestedSectionsPassthroughSubject;
  sub_100058000(&unk_1007755A0);
  swift_allocObject();
  *(v42 + v46) = PassthroughSubject.init()();
  *(v42 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_fetchSuggestedSectionsCancellable) = 0;
  *(v42 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderID) = 0;
  *(v42 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderTitle) = 0;
  *(v42 + OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_reminderIDsPreviouslyShownWithSuggestedSection) = &_swiftEmptySetSingleton;
  v76 = *(v76 + 8);
  sub_10000B0D8(&v98, &v93);
  sub_10000B0D8(v97, &v92);
  sub_10000B0D8(v95, &v91);
  type metadata accessor for TTRRemindersListPresenterCapabilityCore();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v47 = v33;
  *(v42 + 40) = TTRRemindersListPresenterCapabilityCore.init(viewModelSource:attachmentThumbnailsManager:urlMetadataInteractor:contactsProvider:userActivityMetadataInterator:editingPresenter:avatarProvider:geoService:)();
  v48 = v79;
  *(v42 + 48) = v80;
  *(v42 + 64) = v48;
  v49 = v77;
  *(v42 + 80) = v77;
  sub_10000B0D8(&v98, v42 + 88);
  v50 = v88;
  *(v42 + 128) = v47;
  *(v42 + 136) = v50;
  sub_10000B0D8(v96, v42 + 144);
  sub_10000B0D8(v94, v42 + 184);
  type metadata accessor for TTRDeleteRemindersPresenterCapability();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v51 = v49;
  *(v42 + 224) = TTRDeleteRemindersPresenterCapability.init(interactor:)();
  type metadata accessor for TTRSetReminderCompletedPresenterCapability();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v42 + 232) = TTRSetReminderCompletedPresenterCapability.init(interactor:)();
  sub_1000A96A0();
  static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRDebouncedAction();
  swift_allocObject();
  *(v42 + 248) = TTRDebouncedAction.init(interval:queue:)();
  sub_1003A9060(&qword_1007755B0, type metadata accessor for TTRRemindersListPresenterCapability);

  TTRRemindersListPresenterCapabilityCore.delegate.setter();

  sub_1003A9060(&qword_1007755B8, type metadata accessor for TTRRemindersListPresenterCapability);

  TTRDebouncedAction.delegate.setter();
  sub_100004758(v95);
  sub_100004758(v96);
  sub_100004758(v97);
  sub_100004758(&v98);
  sub_100004758(v94);
  *(a3 + 104) = v42;
  v52 = v89;
  *(a3 + 112) = *(v89 + 120);
  v53 = v81;
  *(a3 + 120) = *(v52 + 128);
  *(a3 + 128) = v53;
  sub_10000B0D8(v52 + *(v90 + 104), a3 + 32);
  *(v42 + 24) = &off_10071AA40;
  swift_unknownObjectWeakAssign();
  v54 = objc_opt_self();

  v55 = [v54 defaultCenter];
  v98 = 0u;
  v99 = 0u;
  v56 = objc_opt_self();
  v57 = [v56 mainQueue];
  swift_allocObject();
  swift_weakInit();

  v58 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

  sub_1000079B4(&v98, &qword_10076AE40);

  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_localeChangedObserver) = v58;

  v59 = [v54 defaultCenter];
  v60 = static NSNotificationName.timeZoneOverrideDidChange.getter();
  v98 = 0u;
  v99 = 0u;
  v61 = [v56 mainQueue];
  swift_allocObject();
  swift_weakInit();

  v62 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

  sub_1000079B4(&v98, &qword_10076AE40);

  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_timeZoneOverrideChangedObserver) = v62;

  v63 = *(v90 + 96);
  v64 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_firstVisibleItemIDToRestore;
  swift_beginAccess();
  v65 = v89;
  sub_1003A770C(v89 + v63, a3 + v64);
  swift_endAccess();
  v66 = *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar + 32);
  swift_beginAccess();
  v67 = sub_10000C36C((a3 + 32), *(a3 + 56));
  sub_1003A5654(v42, *v67, v66);
  *&v98 = *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_cellInfoButtonVisibilityAssertion);
  swift_allocObject();
  swift_weakInit();
  sub_1003A777C();

  v68 = Publisher<>.sink(receiveValue:)();

  *(a3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_cellInfoButtonVisibilityAssertionCancellable) = v68;

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListAutoCategorizationActivityMonitor.autoCategorizationInProgressReminderIDsChangeHandler.setter();

  v69 = type metadata accessor for TTRUserDefaults();
  v70 = static TTRUserDefaults.appUserDefaults.getter();
  *(&v99 + 1) = v69;
  *&v100 = &protocol witness table for TTRUserDefaults;

  *&v98 = v70;
  sub_10010BE0C(v65, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v71 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_userDefaults;
  swift_beginAccess();
  sub_1003A77E0(&v98, a3 + v71);
  swift_endAccess();
  return a3;
}

uint64_t sub_1003A64B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRModuleState();
  swift_allocObject();
  *(a4 + 16) = TTRModuleState.init(name:)();
  *(a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;
  type metadata accessor for TTRRemindersListTreeViewModel();
  type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
  *(a4 + v6) = TTRRemindersListTreeViewModel.__allocating_init(sections:reminderIDProvider:recurrentReminderReplacements:makePresentationTree:)();
  v7 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_listMessaging;
  v8 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
  v9 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v10 = *(*(v9 - 8) + 104);
  v10(a4 + v7, v8, v9);
  *(a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID) = &_swiftEmptyDictionarySingleton;
  v11 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  v12 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_currentTipCapability;
  type metadata accessor for TTRRemindersListCurrentTipCapability();
  swift_allocObject();
  *(a4 + v13) = TTRRemindersListCurrentTipCapability.init()();
  v10(a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedEmptyListMessaging, v8, v9);
  *(a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_receivedFirstUpdateFromDataModelSource) = 0;
  *(a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_reminderCompletionViewModelOverrides) = &_swiftEmptyDictionarySingleton;
  *(a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_recurrentReminderReplacements) = &_swiftEmptyArrayStorage;
  v14 = a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions;
  *v14 = 257;
  *(v14 + 2) = 0;
  v15 = (a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_dataModelSource);
  *v15 = a1;
  v15[1] = &protocol witness table for TTRRemindersListDataModelSourceBase;
  v16 = (a4 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_interactor);
  *v16 = a2;
  v16[1] = &protocol witness table for TTRRemindersListInteractor;
  v17 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  v18 = type metadata accessor for TTRListType.SortingCapability();
  v19 = *(v18 - 8);
  (*(v19 + 16))(a4 + v17, a3, v18);
  swift_allocObject();
  swift_weakInit();

  TTRRemindersListCurrentTipCapability.visibleTipDidChange.setter();

  (*(v19 + 8))(a3, v18);

  return a4;
}

uint64_t sub_1003A6800(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v35 = a3;
  v36 = v10;
  v37 = type metadata accessor for REMAnalyticsEvent();
  v11 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - v15;
  v34 = type metadata accessor for TTRListType.SortingCapability();
  v17 = *(v34 - 8);
  __chkstk_darwin(v34);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a5 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource____lazy_storage___dragAndDropUtils) = 0;
  *(a5 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  v20 = a5 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_completedRemindersCount;
  *v20 = 0;
  v20[8] = 1;
  *(a5 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance) = 0;
  *(a5 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_group) = 0;
  v21 = (a5 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_groupDataModelSource);
  *v21 = a1;
  v21[1] = &protocol witness table for TTRShowGroupDataModelSource;
  *(a5 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_hasDefaultNewReminderButton) = a4;
  (*(v17 + 16))(v19, a3);

  v23 = sub_1003A64B4(v22, a2, v19, a5);

  sub_10013F4C8(v16);
  sub_10056F540(v16);
  sub_1000079B4(v16, &unk_10078A380);
  type metadata accessor for TTRUserDefaults();
  v24 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v25 = sub_100058000(&qword_100770980);
  v26 = &v13[*(v25 + 48)];
  v27 = &v13[*(v25 + 80)];
  v28 = enum case for REMRemindersOpenUserOperation.group(_:);
  v29 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v29 - 8) + 104))(v13, v28, v29);
  *v26 = TTRUserDefaults.activitySessionId.getter();
  v26[1] = v30;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v27 = _typeName(_:qualified:)();
  v27[1] = v31;
  v32 = v37;
  (*(v11 + 104))(v13, enum case for REMAnalyticsEvent.openListUserOperation(_:), v37);
  REMAnalyticsManager.post(event:)();

  (*(v17 + 8))(v35, v34);
  (*(v11 + 8))(v13, v32);
  return v23;
}

void *sub_1003A6BE4(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100781100, type metadata accessor for TTRShowRemindersInListViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A6DC8(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_1007810B0, type metadata accessor for TTRShowGroupViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A6F44(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(id, uint64_t, uint64_t))
{
  v11 = sub_1003A9060(a5, a6);
  a4[3] = 0;
  swift_unknownObjectWeakInit();
  a4[9] = &_swiftEmptyDictionarySingleton;
  a4[11] = 0;
  v12 = a4 + OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
  v13 = sub_100058000(&qword_100775AB8);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v12[*(type metadata accessor for TTRReminderListEditingPresenter.EditingState(0) + 20)] = 0;
  a4[6] = a1;
  a4[7] = &protocol witness table for TTRRemindersListInteractor;
  a4[4] = a2;
  a4[5] = v11;
  type metadata accessor for TTRInCellEditingPresenterManagingHelper();
  swift_allocObject();
  v14 = a1;

  a4[12] = TTRInCellEditingPresenterManagingHelper.init(reminderEditingComponents:)();
  type metadata accessor for TTRRemindersListEditingSessionProvider();
  v15 = swift_allocObject();

  v16 = a7(v14, a2, v15);

  a4[8] = v16;
  sub_1000A96A0();
  static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRDeferredAction();
  swift_allocObject();
  a4[10] = TTRDeferredAction.init(queue:)();
  sub_1003A9060(&qword_1007810F0, type metadata accessor for TTRReminderListEditingPresenter);

  TTRInCellEditingPresenterManagingHelper.delegate.setter();

  *(a4[8] + 24) = &off_10072C850;
  swift_unknownObjectWeakAssign();
  sub_1003A9060(&qword_1007810F8, type metadata accessor for TTRReminderListEditingPresenter);

  TTRDeferredAction.delegate.setter();

  return a4;
}

id sub_1003A71D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, _BYTE *a8, uint64_t (*a9)(void))
{
  v49 = a7;
  v48 = a6;
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = a9(0);
  v51[4] = &off_10071AB98;
  v51[0] = a1;
  v19 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator;
  *&a8[v19] = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___toolbar] = 1;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarBottomConstraint] = 0;
  a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] = 0;
  v20 = &a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_navigationItemOptions];
  *v20 = xmmword_10062E1C0;
  v20[16] = 0;
  v21 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_emptyListMessaging;
  v22 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
  v23 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  (*(*(v23 - 8) + 104))(&a8[v21], v22, v23);
  (*(v16 + 104))(v18, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.none(_:), v15);
  TTRIShowRemindersDeferredItemUpdates.init(needsRefreshCellSizes:pendingScrollAction:)();
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarHeight] = 0;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight] = 0;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_pencilInputAreaHeight] = 0;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarController] = 0;
  v24 = &a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_lastSetLargeTitleColor];
  *v24 = 0;
  v24[8] = 0;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listMessagingView] = 0;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_currentTextInputModeObserver] = 0;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentPreferredChromelessBarStatesObserver] = 0;
  *&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___autoCategorizationController] = 0;
  v25 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_swHighlightToShowInNavBar;
  v26 = type metadata accessor for TTRSharedWithYouHighlight();
  (*(*(v26 - 8) + 56))(&a8[v25], 1, 1, v26);
  v27 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_cellTitleItemGainingFocus_forKeyboardAvoidance;
  v28 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v28 - 8) + 56))(&a8[v27], 1, 1, v28);
  sub_10000B0D8(v51, &a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter]);
  v29 = &a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  v31 = v43;
  v30 = v44;
  *v29 = v43;
  v29[1] = v30;
  v32 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentLayout;
  v33 = type metadata accessor for TTRRemindersListLayout();
  v34 = *(v33 - 8);
  v35 = &a8[v32];
  v36 = v45;
  (*(v34 + 16))(v35, v45, v33);
  v37 = v31;
  TTRRemindersListViewModel.ListInfo.init()();
  (*(v12 + 32))(&a8[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo], v14, v11);
  v38 = *v20;
  v39 = *(v20 + 1);
  v40 = v48;
  *v20 = v46;
  *(v20 + 1) = v40;
  v20[16] = v49;
  sub_1001133CC(v38, v39);
  v50.receiver = a8;
  v50.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v50, "initWithNibName:bundle:", 0, 0);
  (*(v34 + 8))(v36, v33);
  sub_100004758(v51);
  return v41;
}

uint64_t sub_1003A7670(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1003A76D4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1003A770C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076BB50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003A777C()
{
  result = qword_1007755C0;
  if (!qword_1007755C0)
  {
    sub_10005D20C(&qword_100775588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007755C0);
  }

  return result;
}

uint64_t sub_1003A77E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007755C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1003A7868(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100781120, type metadata accessor for TTRShowCustomSmartListViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A7A4C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100781108, type metadata accessor for TTRShowRecentlyDeletedViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A7C30(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100781118, type metadata accessor for TTRShowSiriFoundInAppsViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A7E14(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100770958, type metadata accessor for TTRShowAssignedViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A7FC4(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_10077FA00, type metadata accessor for TTRShowCompletedViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A81A8(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_10077E8A8, type metadata accessor for TTRShowTodayViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A838C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_1007712A0, type metadata accessor for TTRShowScheduledViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A853C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100781110, type metadata accessor for TTRShowAllRemindersViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A86EC(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100777990, type metadata accessor for TTRShowFlaggedViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A889C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100781128, type metadata accessor for TTRShowTaggedViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A8A80(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_10077FE40, type metadata accessor for TTRIShowSearchResultViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A8C64(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_10076C228, type metadata accessor for TTRShowPublicTemplateViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

void *sub_1003A8E7C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1003A9060(&qword_100781130, type metadata accessor for TTRShowTemplateViewModelSource);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = a1;
  a3[5] = &protocol witness table for TTRRemindersListInteractor;
  a3[6] = a2;
  a3[7] = v6;
  type metadata accessor for TTRRemindersListEditingSessionProviderCapability();
  swift_allocObject();
  v7 = a1;

  a3[8] = TTRRemindersListEditingSessionProviderCapability.init()();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for TTRRemindersListInteractor;
  v9 = v7;

  TTRRemindersListEditingSessionProviderCapability.registerUndoToDeleteReminderIfExists.setter();

  swift_allocObject();
  swift_weakInit();

  TTRRemindersListEditingSessionProviderCapability.concludeEditingSessionStates.setter();

  return a3;
}

uint64_t sub_1003A9060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static TTRLocalizableStringResources.AppIntents.Intent.searchReminders.getter()
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

uint64_t sub_1003A94BC()
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

uint64_t sub_1003A96C8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1003AB294(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1003AF478(&type metadata accessor for TTRRemindersListViewModel.ItemID, &qword_1007812A0);
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1003ACF24(v5, v7, &type metadata accessor for TTRRemindersListViewModel.ItemID, &qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
  *v2 = v7;
  return v10;
}

uint64_t sub_1003A97F8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1003AB730(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1003AF478(&type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &qword_100781238);
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1003ACF24(v5, v7, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
  *v2 = v7;
  return v10;
}

uint64_t sub_1003A9928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1003AB730(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1003AFDB0(&type metadata accessor for TTRAccountsListsViewModel.PinnedList, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &qword_100781240);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1003AD394(v7, v9, &type metadata accessor for TTRAccountsListsViewModel.PinnedList);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1003A9B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1003AB730(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1003AFDB0(&type metadata accessor for REMHashtagLabelSpecifier, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &qword_100781248);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for REMHashtagLabelSpecifier();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1003AD394(v7, v9, &type metadata accessor for REMHashtagLabelSpecifier);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for REMHashtagLabelSpecifier();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1003A9D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1003AB804(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1003AFDB0(&type metadata accessor for TTRUserDefaults.SmartListVersionWarning, &type metadata accessor for UUID, &qword_100781328);
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1003AD8A8(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_1003A9ED8(void **a1)
{
  v2 = *(sub_100058000(&unk_10076BE60) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000EF35C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1003B12E4(v5);
  *a1 = v3;
}

uint64_t *TTRSmartListVersionWarningInteractor.__allocating_init(userDefaults:maxStoredValues:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = sub_10000AE84(a1, v5);
  v8 = sub_1003B3B84(v7, a2, v2, v5, v6);
  sub_100004758(a1);
  return v8;
}

uint64_t *TTRSmartListVersionWarningInteractor.init(userDefaults:maxStoredValues:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = sub_10000AE84(a1, v5);
  v8 = __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_1003B3B0C(v10, a2, v2, v5, v6);
  sub_100004758(a1);
  return v12;
}

BOOL TTRSmartListVersionWarningInteractor.hasVersionWarningAlertShown(for:supportedVersion:)(void *a1, uint64_t a2)
{
  v25 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_10000B0D8(v2 + 16, v26);
  v17 = v27;
  v18 = v28;
  sub_10000C36C(v26, v27);
  v19 = (*(v18 + 8))(v17, v18);
  sub_100004758(v26);
  if (*(v19 + 16) && (v20 = sub_1003AB804(v7), (v21 & 1) != 0))
  {
    (*(v9 + 16))(v11, *(v19 + 56) + *(v9 + 72) * v20, v8);
    (*(v5 + 8))(v7, v4);

    (*(v9 + 32))(v15, v11, v8);
    v22 = TTRUserDefaults.SmartListVersionWarning.supportedVersion.getter();
    (*(v9 + 8))(v15, v8);
    return v22 >= v25;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

uint64_t TTRSmartListVersionWarningInteractor.setVersionWarningAlertShown(for:supportedVersion:)(void *a1, void (**a2)(uint64_t, uint64_t))
{
  v3 = v2;
  v81 = a1;
  v82 = a2;
  v4 = sub_100058000(&qword_100781138);
  __chkstk_darwin(v4 - 8);
  v76 = v65 - v5;
  v84 = sub_100058000(&unk_10076BE60);
  v6 = *(v84 - 8);
  __chkstk_darwin(v84);
  v75 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = v65 - v9;
  __chkstk_darwin(v10);
  v77 = v65 - v11;
  v12 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v12 - 8);
  v85 = v65 - v13;
  v14 = type metadata accessor for Date();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
  v67 = *(v15 - 8);
  __chkstk_darwin(v15);
  v80 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v83 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v65 - v21;
  swift_beginAccess();
  sub_10000B0D8((v2 + 2), &v86);
  v23 = v87;
  v24 = v88;
  sub_10000C36C(&v86, v87);
  v25 = v24[1](v23, v24);
  sub_100004758(&v86);
  v26 = [v81 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  Date.init()();
  v27 = v80;
  TTRUserDefaults.SmartListVersionWarning.init(creationDate:supportedVersion:)();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = v25;
  sub_100127B1C(v27, v22, isUniquelyReferenced_nonNull_native);
  v66 = v18;
  v29 = *(v18 + 8);
  v78 = v17;
  v79 = v29;
  v80 = (v18 + 8);
  v29(v22, v17);
  v30 = v86;
  v31 = v86[2];
  if (v31)
  {
    v32 = sub_1003AC754(v86[2], 0);
    sub_1003B3850(&v86, v32 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v31, v30);
    v34 = v33;
    v81 = v88;
    v82 = v87;

    sub_10008BA48();
    if (v34 == v31)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_5:
  v86 = v32;
  sub_1003A9ED8(&v86);
  v35 = v86;
  v36 = v30[2];
  v73 = v3[7];
  if (v73 >= v36)
  {

LABEL_25:
    swift_beginAccess();
    v62 = v3[5];
    v63 = v3[6];
    sub_10000AE84((v3 + 2), v62);
    (*(v63 + 16))(v30, v62, v63);
    return swift_endAccess();
  }

  else
  {
    v65[0] = v3;
    v37 = (v66 + 32);
    v72 = (v66 + 56);
    v82 = (v67 + 8);
    v71 = (v66 + 48);
    v70 = (v67 + 56);
    v65[1] = v67 + 32;
    v69 = v6;
    v68 = (v66 + 32);
    while (1)
    {
      v38 = v35[2];
      if (!v38)
      {
        (*v72)(v85, 1, 1, v78);
LABEL_23:

        sub_1000079B4(v85, &unk_10077D160);
LABEL_24:
        v3 = v65[0];
        goto LABEL_25;
      }

      v39 = v35;
      v81 = ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v40 = *(v6 + 72);
      v41 = v15;
      v42 = v85;
      v43 = v77;
      sub_1003B3C98(v81 + v35 + v40 * (v38 - 1), v77);
      v44 = *(v84 + 48);
      v45 = *v37;
      v46 = v78;
      (*v37)(v42, v43, v78);
      (*v72)(v42, 0, 1, v46);
      v47 = v43 + v44;
      v48 = v42;
      v15 = v41;
      v49 = *v82;
      (*v82)(v47, v41);
      if ((*v71)(v48, 1, v46) == 1)
      {
        goto LABEL_23;
      }

      v50 = v83;
      v45(v83, v85, v46);
      v51 = sub_1003AB804(v50);
      if (v52)
      {
        v53 = v51;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v86 = v30;
        v55 = v76;
        if (!v54)
        {
          sub_1003AFDB0(&type metadata accessor for TTRUserDefaults.SmartListVersionWarning, &type metadata accessor for UUID, &qword_100781328);
          v30 = v86;
        }

        v79(v30[6] + *(v66 + 72) * v53, v46);
        (*(v67 + 32))(v55, v30[7] + *(v67 + 72) * v53, v15);
        sub_1003AD8A8(v53, v30);
        v56 = 0;
      }

      else
      {
        v56 = 1;
        v55 = v76;
      }

      (*v70)(v55, v56, 1, v15);
      sub_1000079B4(v55, &qword_100781138);
      if (!v39[2])
      {
        break;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v57 = v39[2];
        if (!v57)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v39 = sub_1003B2F70(v39);
        v57 = v39[2];
        if (!v57)
        {
          goto LABEL_27;
        }
      }

      v58 = v57 - 1;
      v59 = v75;
      sub_1003B3D08(v81 + v39 + (v57 - 1) * v40, v75);
      v39[2] = v58;
      v60 = v79;
      v79(v83, v46);
      v61 = v74;
      sub_1003B3D08(v59, v74);
      v49(v61 + *(v84 + 48), v15);
      v60(v61, v46);
      v35 = v39;
      v6 = v69;
      v37 = v68;
      if (v73 >= v30[2])
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t TTRSmartListVersionWarningInteractor.moveVersionWarningAlertShown(from:to:)(void *a1, void *a2)
{
  v3 = v2;
  v50 = a2;
  v5 = sub_100058000(&qword_100781138);
  __chkstk_darwin(v5 - 8);
  v49 = &v46 - v6;
  v54 = type metadata accessor for UUID();
  v7 = *(v54 - 8);
  __chkstk_darwin(v54);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
  v14 = *(v13 - 8);
  v51 = v13;
  v52 = v14;
  __chkstk_darwin(v13);
  v48 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  __chkstk_darwin(v19);
  v53 = &v46 - v20;
  swift_beginAccess();
  sub_10000B0D8(v2 + 16, v55);
  v22 = v56;
  v21 = v57;
  sub_10000C36C(v55, v56);
  v23 = (*(v21 + 8))(v22, v21);
  sub_100004758(v55);
  v58 = v23;
  v24 = a1;
  v25 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v23 + 16) && (v26 = sub_1003AB804(v12), (v27 & 1) != 0))
  {
    v28 = *(v23 + 56) + *(v52 + 72) * v26;
    v29 = v52;
    v46 = *(v52 + 16);
    v47 = v3;
    v30 = v51;
    v46(v18, v28);
    v31 = *(v7 + 8);
    v32 = v54;
    v31(v12, v54);
    (*(v29 + 32))(v53, v18, v30);
    v33 = [v24 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = v49;
    sub_1003A9D00(v9, v49);
    v31(v9, v32);
    sub_1000079B4(v34, &qword_100781138);
    v35 = [v50 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = v48;
    v37 = v53;
    (v46)(v48, v53, v30);
    v38 = v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55[0] = v38;
    sub_100127B1C(v36, v9, isUniquelyReferenced_nonNull_native);
    v31(v9, v32);
    v40 = v47;
    swift_beginAccess();
    v41 = *(v40 + 40);
    v42 = *(v40 + 48);
    sub_10000AE84(v40 + 16, v41);
    v43 = *(v42 + 16);

    v43(v44, v41, v42);
    swift_endAccess();
    (*(v52 + 8))(v37, v30);
  }

  else
  {
    (*(v7 + 8))(v12, v54);
  }
}

uint64_t TTRSmartListVersionWarningInteractor.__deallocating_deinit()
{
  sub_100004758(v0 + 16);

  return swift_deallocClassInstance();
}

void (*sub_1003AB220(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = TTRUserDefaults.smartListVersionWarnings.modify();
  return sub_1001861BC;
}

unint64_t sub_1003AB294(uint64_t a1)
{
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  sub_100014E74(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003ABEE8(a1, v2, &type metadata accessor for TTRRemindersListViewModel.ItemID, &qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
}

unint64_t sub_1003AB368(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1003ABB3C(a1, v2);
}

unint64_t sub_1003AB3D4(Swift::UInt a1, char a2)
{
  Hasher.init(_seed:)();
  sub_1002F2A34(v6, a1, a2);
  v4 = Hasher._finalize()();

  return sub_1003ABBAC(a1, a2, v4);
}

unint64_t sub_1003AB44C(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1003ABD04(a1, v2);
}

unint64_t sub_1003AB490(uint64_t a1)
{
  type metadata accessor for TTRRemindersListPostponeType();
  sub_100014E74(&qword_100781290, &type metadata accessor for TTRRemindersListPostponeType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003ABEE8(a1, v2, &type metadata accessor for TTRRemindersListPostponeType, &unk_100780968, &type metadata accessor for TTRRemindersListPostponeType, &protocol conformance descriptor for TTRRemindersListPostponeType);
}

unint64_t sub_1003AB564(void *a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    v2 = a1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v3 = Hasher._finalize()();

  return sub_1003ABD70(a1, v3);
}

unint64_t sub_1003AB5F4(uint64_t a1)
{
  type metadata accessor for TTRSectionID();
  sub_100014E74(&qword_1007758E0, &type metadata accessor for TTRSectionID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003ABEE8(a1, v2, &type metadata accessor for TTRSectionID, &qword_10076BE70, &type metadata accessor for TTRSectionID, &protocol conformance descriptor for TTRSectionID);
}

unint64_t sub_1003AB6C8(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a1 + 16));
  v2 = Hasher._finalize()();
  return sub_1003ABE74(a1, v2);
}

unint64_t sub_1003AB730(uint64_t a1)
{
  type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  sub_100014E74(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003ABEE8(a1, v2, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
}

unint64_t sub_1003AB804(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100014E74(&qword_10076BB40, &type metadata accessor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1003ABEE8(a1, v2, &type metadata accessor for UUID, &qword_10076BB48, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_1003AB8D8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1003AC29C(a1, v2);
}

unint64_t sub_1003AB968(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1003AC088(a1, v4);
}

unint64_t sub_1003AB9AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  AnyListEntityID.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1003AC150(a1, v2);
}

unint64_t sub_1003ABA18(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1003ABD04(a1, v2);
}

unint64_t sub_1003ABA84(uint64_t a1, char a2, double a3, double a4)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    Hasher._combine(_:)(v8);
  }

  sub_100602B5C(a3, a4);
  v9 = Hasher._finalize()();
  return sub_1003AC3A0(a1, a2 & 1, v9, a3, a4);
}

unint64_t sub_1003ABB3C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003ABBAC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    v8 = a2 == 2;
    v9 = a1 == 7 && a2 == 2;
    v10 = a1 == 6 && a2 == 2;
    v11 = a1 == 5 && a2 == 2;
    v12 = a1 == 4 && a2 == 2;
    v13 = a1 == 3 && a2 == 2;
    v14 = a1 == 2 && a2 == 2;
    v15 = a1 == 1 && a2 == 2;
    if (a1)
    {
      v8 = 0;
    }

    do
    {
      v16 = *(v3 + 48) + 16 * result;
      v17 = *v16;
      v18 = *(v16 + 8);
      if (v18)
      {
        if (v18 == 1)
        {
          if (a2 == 1)
          {
LABEL_27:
            if (v17 == a1)
            {
              return result;
            }
          }
        }

        else if (v17 > 3)
        {
          if (v17 > 5)
          {
            if (v17 == 6)
            {
              if (v10)
              {
                return result;
              }
            }

            else if (v9)
            {
              return result;
            }
          }

          else if (v17 == 4)
          {
            if (v12)
            {
              return result;
            }
          }

          else if (v11)
          {
            return result;
          }
        }

        else if (v17 > 1)
        {
          if (v17 == 2)
          {
            if (v14)
            {
              return result;
            }
          }

          else if (v13)
          {
            return result;
          }
        }

        else if (v17)
        {
          if (v15)
          {
            return result;
          }
        }

        else if (v8)
        {
          return result;
        }
      }

      else if (!a2)
      {
        goto LABEL_27;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003ABD04(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003ABD70(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          sub_100003540(0, &qword_10076BA50);
          v10 = v9;
          v11 = a1;
          v12 = static NSObject.== infix(_:_:)();

          if (v12)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1003ABE74(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    do
    {
      if (*(*(*(v2 + 48) + 8 * result) + 16) == v7)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1003ABEE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_100014E74(v23, v24);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1003AC088(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1001D3A20(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100077654(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1003AC150(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AnyListEntityID() - 8;
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1003B3E04(*(v2 + 48) + v12 * v10, v8, type metadata accessor for AnyListEntityID);
      v13 = _s9Reminders15AnyListEntityIDO21__derived_enum_equalsySbAC_ACtFZ_0(v8, a1);
      sub_100292420(v8);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1003AC29C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1003AC3A0(uint64_t a1, char a2, uint64_t a3, double a4, double a5)
{
  v7 = -1 << *(v5 + 32);
  result = a3 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    v10 = *&a1;
    do
    {
      v12 = *(v5 + 48) + 32 * result;
      v13 = *(v12 + 16);
      if (*(v12 + 8))
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_7;
        }

        v14 = v13 == a4;
      }

      else
      {
        if (a2)
        {
          goto LABEL_7;
        }

        v14 = *v12 == v10 && v13 == a4;
      }

      if (v14 && *(v12 + 24) == a5)
      {
        return result;
      }

LABEL_7:
      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1003AC440(uint64_t a1, uint64_t a2)
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

  sub_100058000(&unk_100771E10);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1003AC4C4(uint64_t a1, uint64_t a2)
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

  sub_100058000(&qword_100772150);
  v4 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size_0(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1003AC5C0(uint64_t a1, uint64_t a2)
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

  sub_100058000(&qword_1007812E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1003AC658(uint64_t a1, uint64_t a2)
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

  sub_100058000(&qword_1007812B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1003AC6CC(uint64_t a1, uint64_t a2)
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

  sub_100058000(&qword_10076B780);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
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

void *sub_1003AC754(uint64_t a1, uint64_t a2)
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

  sub_100058000(&qword_100781330);
  v4 = *(sub_100058000(&unk_10076BE60) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size_0(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_1003AC8A4(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1003ACA38(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_1003ACBC4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

Swift::Int sub_1003ACD50(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v9 + 16));
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1003ACF24(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = _HashTable.previousHole(before:)();
    v18 = v16;
    v40 = (v17 + 1) & v16;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v44 = *(v19 + 56);
    v38 = (v19 - 8);
    v39 = v20;
    do
    {
      v21 = v44 * v15;
      v22 = v18;
      v23 = v19;
      v39(v12, *(a2 + 48) + v44 * v15, v8);
      sub_100014E74(v41, v42);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v12, v8);
      v18 = v22;
      v25 = v24 & v22;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v44 * a1;
          v29 = v28 + v21 + v44;
          v30 = v44 * a1 < v21 || result >= v29;
          v19 = v23;
          if (!v30)
          {
            if (v44 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v18 = v22;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 8 * a1);
            v33 = (v31 + 8 * v15);
            if (a1 != v15 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v15;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v19 = v23;
LABEL_4:
      v15 = (v15 + 1) & v18;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1003AD1D8(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v9 + 16));
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1003AD394(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_100014E74(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1003AD6E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 56 * v3;
        v19 = (v17 + 56 * v6);
        if (v3 != v6 || v18 >= v19 + 56)
        {
          v9 = *v19;
          v10 = v19[1];
          v11 = v19[2];
          *(v18 + 48) = *(v19 + 6);
          *(v18 + 16) = v10;
          *(v18 + 32) = v11;
          *v18 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1003AD8A8(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_100014E74(&qword_10076BB40, &type metadata accessor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for TTRUserDefaults.SmartListVersionWarning() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_1003ADBEC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for TTRHashtagAssociationDeleteTagPreferences.DeletableCustomSmartListIntent() - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_1003ADDB4(int64_t a1, uint64_t a2)
{
  v34 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = _HashTable.previousHole(before:)();
    v12 = v10;
    v33 = (v11 + 1) & v10;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v31 = a2 + 64;
    v32 = v14;
    v15 = *(v13 + 56);
    v30 = (v13 - 8);
    v35 = v12;
    v16 = v34;
    do
    {
      v17 = v15;
      v18 = v15 * v9;
      v19 = *(a2 + 48) + v15 * v9;
      v20 = v13;
      v32(v6, v19, v16);
      sub_100014E74(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v30)(v6, v16);
      v22 = v35;
      v23 = v21 & v35;
      if (a1 >= v33)
      {
        if (v23 >= v33 && a1 >= v23)
        {
LABEL_15:
          v13 = v20;
          v15 = v17;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 = 32 * a1;
          v7 = v31;
          if (32 * a1 < (32 * v9) || *(a2 + 56) + 32 * a1 >= *(a2 + 56) + 32 * v9 + 32)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v9;
            v22 = v35;
          }

          else
          {
            a1 = v9;
            v22 = v35;
            if (v26 != 32 * v9)
            {
              swift_arrayInitWithTakeBackToFront();
              v22 = v35;
              a1 = v9;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v33 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v13 = v20;
      v7 = v31;
      v15 = v17;
LABEL_4:
      v9 = (v9 + 1) & v22;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

void *sub_1003AE128()
{
  v1 = v0;
  sub_100058000(&unk_10076B980);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1003AE29C()
{
  v1 = v0;
  sub_100058000(&qword_100781260);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1003AE434()
{
  v1 = v0;
  v2 = type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay(0);
  v38 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v40 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_100781278);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_1003B3E04(v26 + v28, v37, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_1003B3E6C(v29, *(v18 + 56) + v28, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1003AE758()
{
  v1 = v0;
  sub_100058000(&qword_100781308);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1003AE8BC()
{
  v1 = v0;
  sub_100058000(&qword_100775FE8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1003AEA2C()
{
  v1 = v0;
  v31 = type metadata accessor for TTRRemindersListPostponeType();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_100781300);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_1003AEC9C()
{
  v1 = v0;
  sub_100058000(&qword_1007812F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1003AEDF8()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove(0);
  v27 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_1007812C8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_1003B3E04(*(v4 + 56) + v23, v26, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        sub_1003B3E6C(v22, *(v24 + 56) + v23, type metadata accessor for TTRIGroupMembershipViewModel.Diff.PartialMove);
        result = v21;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_1003AF070()
{
  v1 = v0;
  v35 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_100781280);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1003AF304(uint64_t *a1)
{
  v2 = v1;
  sub_100058000(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1003AF478(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - v5;
  sub_100058000(a2);
  v6 = *v2;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = v36;
        v23 = *(v36 + 72) * v21;
        v25 = v33;
        v24 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v23, v34);
        v26 = *(*(v6 + 56) + 8 * v21);
        v27 = v35;
        (*(v22 + 32))(*(v35 + 48) + v23, v25, v24);
        *(*(v27 + 56) + 8 * v21) = v26;

        v16 = v37;
      }

      while (v37);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v20 = *(v30 + v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

void *sub_1003AF708(uint64_t *a1)
{
  v2 = v1;
  sub_100058000(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 56) + 16 * v18);
        v21 = *v19;
        v20 = v19[1];
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        v22 = (*(v5 + 56) + 16 * v18);
        *v22 = v21;
        v22[1] = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_1003AF8E0()
{
  sub_100058000(&qword_100781258);
  v30 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v19 = *v18;
        v20 = v18[1];
        v16 *= 56;
        v21 = *(v1 + 56) + v16;
        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        v25 = *(v21 + 32);
        v24 = *(v21 + 40);
        v26 = *(v21 + 48);
        v27 = (*(v3 + 48) + v17);
        v28 = *v21;
        *v27 = v19;
        v27[1] = v20;
        v29 = *(v3 + 56) + v16;
        *v29 = v28;
        *(v29 + 16) = v23;
        *(v29 + 24) = v22;
        *(v29 + 32) = v25;
        *(v29 + 40) = v24;
        *(v29 + 48) = v26;

        result = v24;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v3;
  }

  return result;
}

id sub_1003AFAA4()
{
  v1 = v0;
  sub_100058000(&qword_1007812F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1003AFC14(uint64_t *a1)
{
  v2 = v1;
  sub_100058000(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(v3 + 56) + 16 * v18;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 8);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        v21 = *(v5 + 56) + 16 * v18;
        *v21 = v20;
        *(v21 + 8) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

char *sub_1003AFDB0(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3)
{
  v6 = v3;
  v46 = a1(0);
  v49 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v35 - v7;
  v44 = a2(0);
  v48 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v35 - v8;
  sub_100058000(a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v35 = v6;
    v36 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v47 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = v48 + 16;
    v41 = v20;
    v38 = v48 + 32;
    v39 = v49 + 16;
    v37 = v49 + 32;
    v42 = v9;
    v22 = v43;
    v21 = v44;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v50 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = v48;
        v28 = *(v48 + 72) * v26;
        (*(v48 + 16))(v22, *(v9 + 48) + v28, v21);
        v29 = v49;
        v30 = *(v49 + 72) * v26;
        v31 = v45;
        v32 = v46;
        (*(v49 + 16))(v45, *(v9 + 56) + v30, v46);
        v33 = v47;
        (*(v27 + 32))(*(v47 + 48) + v28, v22, v21);
        v34 = *(v33 + 56);
        v9 = v42;
        result = (*(v29 + 32))(v34 + v30, v31, v32);
        v20 = v41;
        v19 = v50;
      }

      while (v50);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v35;
        v11 = v47;
        goto LABEL_18;
      }

      v25 = *(v36 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v50 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v11;
  }

  return result;
}

id sub_1003B010C()
{
  v1 = v0;
  sub_100058000(&qword_100781338);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1003B02A0(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v33 = a1(0);
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = v30 - v5;
  sub_100058000(a2);
  v6 = *v2;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v30[0] = v4;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v13 = 0;
    v14 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v14;
    v15 = 1 << *(v6 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v6 + 64);
    v18 = (v15 + 63) >> 6;
    v30[1] = v35 + 32;
    v30[2] = v35 + 16;
    for (i = v6; v17; v6 = i)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v22 = v19 | (v13 << 6);
      v23 = *(v6 + 56);
      v24 = *(*(v6 + 48) + 8 * v22);
      v25 = v35;
      v26 = *(v35 + 72) * v22;
      v28 = v32;
      v27 = v33;
      (*(v35 + 16))(v32, v23 + v26, v33);
      v29 = v34;
      *(*(v34 + 48) + 8 * v22) = v24;
      (*(v25 + 32))(*(v29 + 56) + v26, v28, v27);
      result = v24;
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v4 = v30[0];
        v8 = v34;
        goto LABEL_21;
      }

      v21 = *(v10 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

void *sub_1003B050C()
{
  v1 = v0;
  v26 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_1007812D0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_10016A5B4(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_10016A43C(v30, *(v23 + 56) + v18);
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1003B0790()
{
  v1 = v0;
  v30 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_1007812D8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = swift_unknownObjectRetain())
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1003B0A10()
{
  v1 = v0;
  sub_100058000(&qword_100781288);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1003B0B9C()
{
  v1 = v0;
  v2 = type metadata accessor for AnyListEntity();
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AnyListEntityID();
  v30 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_100781318);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_1003B3E04(*(v6 + 48) + v23, v29, type metadata accessor for AnyListEntityID);
        v24 = v31;
        v25 = *(v32 + 72) * v21;
        sub_1003B3E04(*(v6 + 56) + v25, v31, type metadata accessor for AnyListEntity);
        v26 = v33;
        sub_1003B3E6C(v22, *(v33 + 48) + v23, type metadata accessor for AnyListEntityID);
        result = sub_1003B3E6C(v24, *(v26 + 56) + v25, type metadata accessor for AnyListEntity);
        v16 = v34;
      }

      while (v34);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v27;
        v8 = v33;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_1003B0EA4(uint64_t *a1)
{
  v2 = v1;
  sub_100058000(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
        result = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1003B1008(uint64_t *a1)
{
  v2 = v1;
  sub_100058000(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + v21) = v24)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      v18 = 32 * v15;
      v19 = *(v3 + 48) + 32 * v15;
      v20 = *(v19 + 8);
      v21 = 16 * v15;
      v22 = *(v5 + 48) + v18;
      v23 = *(v19 + 16);
      v24 = *(*(v3 + 56) + v21);
      *v22 = *v19;
      *(v22 + 8) = v20;
      *(v22 + 16) = v23;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_1003B1164()
{
  v1 = v0;
  sub_100058000(&qword_1007812B8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1000046FC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100007DD8(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1003B12E4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100058000(&unk_10076BE60);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_100058000(&unk_10076BE60) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1003B1890(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1003B1428(0, v2, 1, a1);
  }
}

void sub_1003B1428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v65 = type metadata accessor for Date();
  v8 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v50 - v11;
  v12 = sub_100058000(&unk_10076BE60);
  __chkstk_darwin(v12);
  v59 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v50 - v15;
  __chkstk_darwin(v16);
  v71 = &v50 - v17;
  __chkstk_darwin(v18);
  v70 = &v50 - v19;
  __chkstk_darwin(v20);
  v69 = &v50 - v22;
  v52 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v21 + 72);
    v60 = (v8 + 8);
    v61 = v12;
    v25 = v23 + v24 * (a3 - 1);
    v57 = -v24;
    v58 = v23;
    v26 = a1 - a3;
    v51 = v24;
    v27 = v23 + v24 * a3;
LABEL_5:
    v55 = v25;
    v56 = a3;
    v53 = v27;
    v54 = v26;
    v66 = v26;
    while (1)
    {
      v67 = v25;
      v68 = v27;
      v28 = v69;
      sub_1003B3C98(v27, v69);
      v29 = v70;
      sub_1003B3C98(v25, v70);
      v30 = v28;
      v31 = v71;
      sub_1003B3C98(v30, v71);
      v32 = *(v12 + 48);
      v33 = v63;
      TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
      v34 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
      v35 = *(*(v34 - 8) + 8);
      v35(v31 + v32, v34);
      v36 = v29;
      v37 = v62;
      sub_1003B3C98(v36, v62);
      v38 = *(v12 + 48);
      v39 = v64;
      TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
      v35(v37 + v38, v34);
      v40 = static Date.> infix(_:_:)();
      v41 = *v60;
      v42 = v39;
      v12 = v61;
      v43 = v65;
      (*v60)(v42, v65);
      v41(v33, v43);
      v44 = type metadata accessor for UUID();
      v45 = *(*(v44 - 8) + 8);
      v45(v37, v44);
      v45(v71, v44);
      v46 = v67;
      sub_1000079B4(v70, &unk_10076BE60);
      v47 = v68;
      sub_1000079B4(v69, &unk_10076BE60);
      if ((v40 & 1) == 0)
      {
LABEL_4:
        a3 = v56 + 1;
        v25 = v55 + v51;
        v26 = v54 - 1;
        v27 = v53 + v51;
        if (v56 + 1 == v52)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v58)
      {
        break;
      }

      v48 = v59;
      sub_1003B3D08(v47, v59);
      swift_arrayInitWithTakeFrontToBack();
      sub_1003B3D08(v48, v46);
      v25 = v46 + v57;
      v27 = v47 + v57;
      if (__CFADD__(v66++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1003B1890(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v160 = a1;
  v180 = type metadata accessor for Date();
  v8 = *(v180 - 8);
  __chkstk_darwin(v180);
  v179 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v178 = &v157 - v11;
  v12 = sub_100058000(&unk_10076BE60);
  v171 = *(v12 - 8);
  __chkstk_darwin(v12);
  v157 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v175 = &v157 - v15;
  __chkstk_darwin(v16);
  v177 = &v157 - v17;
  __chkstk_darwin(v18);
  v185 = &v157 - v19;
  __chkstk_darwin(v20);
  v187 = &v157 - v21;
  __chkstk_darwin(v22);
  v186 = &v157 - v23;
  v24 = a3[1];
  v161 = a3;
  if (v24 < 1)
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_96:
    v26 = *v160;
    if (!*v160)
    {
      goto LABEL_134;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_98:
      v188 = v27;
      v152 = *(v27 + 2);
      if (v152 >= 2)
      {
        do
        {
          v153 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          a3 = (v152 - 1);
          v154 = *&v27[16 * v152];
          v155 = *&v27[16 * v152 + 24];
          sub_1003B2634(v153 + *(v171 + 72) * v154, v153 + *(v171 + 72) * *&v27[16 * v152 + 16], v153 + *(v171 + 72) * v155, v26);
          if (v5)
          {
            break;
          }

          if (v155 < v154)
          {
            goto LABEL_121;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1000ED7BC(v27);
          }

          if (v152 - 2 >= *(v27 + 2))
          {
            goto LABEL_122;
          }

          v156 = &v27[16 * v152];
          *v156 = v154;
          *(v156 + 1) = v155;
          v188 = v27;
          sub_1000ED730(a3);
          v27 = v188;
          v152 = *(v188 + 2);
          a3 = v161;
        }

        while (v152 > 1);
      }

LABEL_106:

      return;
    }

LABEL_128:
    v27 = sub_1000ED7BC(v27);
    goto LABEL_98;
  }

  v25 = v24;
  v158 = a4;
  v26 = 0;
  v176 = (v8 + 8);
  v27 = _swiftEmptyArrayStorage;
  v181 = v12;
  while (1)
  {
    v28 = v26 + 1;
    v162 = v27;
    v170 = v26;
    if ((v26 + 1) >= v25)
    {
      v50 = v26;
      v53 = (v26 + 1);
    }

    else
    {
      v172 = v25;
      v159 = v5;
      v184 = *a3;
      v29 = v184;
      v30 = *(v171 + 72);
      v174 = v30;
      v31 = v184 + v30 * v28;
      v32 = v186;
      sub_1003B3C98(v31, v186);
      sub_1003B3C98(v29 + v30 * v170, v187);
      v33 = v185;
      sub_1003B3C98(v32, v185);
      v34 = *(v12 + 48);
      v35 = v33;
      v36 = v178;
      TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
      v37 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
      v38 = *(v37 - 8);
      v39 = *(v38 + 8);
      v40 = v38 + 8;
      v39(v35 + v34, v37);
      v41 = v177;
      sub_1003B3C98(v187, v177);
      v42 = *(v12 + 48);
      v43 = v179;
      TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
      v168 = v39;
      v169 = v37;
      v167 = v40;
      v39(v41 + v42, v37);
      LODWORD(v173) = static Date.> infix(_:_:)();
      v44 = *v176;
      v45 = v180;
      (*v176)(v43, v180);
      v166 = v44;
      v44(v36, v45);
      v46 = type metadata accessor for UUID();
      v47 = *(v46 - 8);
      v48 = *(v47 + 8);
      v49 = v47 + 8;
      v48(v41, v46);
      v165 = v46;
      v164 = v48;
      v163 = v49;
      v48(v185, v46);
      v26 = &unk_10076BE60;
      sub_1000079B4(v187, &unk_10076BE60);
      v50 = v170;
      sub_1000079B4(v186, &unk_10076BE60);
      v51 = v50 + 2;
      v52 = v184 + v174 * (v50 + 2);
      while (1)
      {
        v53 = v172;
        if (v172 == v51)
        {
          break;
        }

        v183 = v51;
        v184 = v52;
        v54 = v186;
        sub_1003B3C98(v52, v186);
        v182 = v31;
        v55 = v187;
        sub_1003B3C98(v31, v187);
        v56 = v185;
        sub_1003B3C98(v54, v185);
        v57 = v181;
        v58 = *(v181 + 48);
        v59 = v178;
        TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
        v61 = v168;
        v60 = v169;
        (v168)(v56 + v58, v169);
        v62 = v55;
        v63 = v177;
        sub_1003B3C98(v62, v177);
        v64 = *(v57 + 48);
        v65 = v179;
        TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
        v61(v63 + v64, v60);
        v66 = static Date.> infix(_:_:)() & 1;
        v67 = v180;
        v68 = v166;
        (v166)(v65, v180);
        (v68)(v59, v67);
        v69 = v165;
        v70 = v164;
        v164(v63, v165);
        v70(v56, v69);
        v50 = v170;
        v26 = &unk_10076BE60;
        sub_1000079B4(v187, &unk_10076BE60);
        sub_1000079B4(v186, &unk_10076BE60);
        v51 = v183 + 1;
        v52 = v184 + v174;
        v31 = v182 + v174;
        if ((v173 & 1) != v66)
        {
          v53 = v183;
          break;
        }
      }

      v12 = v181;
      v5 = v159;
      v27 = v162;
      a3 = v161;
      if (v173)
      {
        v26 = v157;
        if (v53 < v50)
        {
          goto LABEL_125;
        }

        if (v50 < v53)
        {
          v71 = v53;
          v72 = v174 * (v53 - 1);
          v73 = v53 * v174;
          v172 = v53;
          v74 = v50 * v174;
          do
          {
            if (v50 != --v71)
            {
              v75 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              sub_1003B3D08(v75 + v74, v26);
              if (v74 < v72 || v75 + v74 >= (v75 + v73))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v74 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1003B3D08(v26, v75 + v72);
              v27 = v162;
            }

            ++v50;
            v72 -= v174;
            v73 -= v174;
            v74 += v174;
          }

          while (v50 < v71);
          v5 = v159;
          v12 = v181;
          v50 = v170;
          v53 = v172;
        }
      }
    }

    v76 = a3[1];
    if (v53 >= v76)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v53, v50))
    {
      goto LABEL_124;
    }

    if (v53 - v50 >= v158)
    {
LABEL_32:
      v26 = v53;
      if (v53 < v50)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v50, v158))
    {
      goto LABEL_126;
    }

    if (v50 + v158 >= v76)
    {
      v26 = a3[1];
    }

    else
    {
      v26 = (v50 + v158);
    }

    if (v26 < v50)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v53 == v26)
    {
      goto LABEL_32;
    }

    v159 = v5;
    v124 = *a3;
    v125 = *(v171 + 72);
    v126 = *a3 + v125 * (v53 - 1);
    v173 = -v125;
    v174 = v124;
    v127 = (v50 - v53);
    v165 = v125;
    v128 = v124 + v53 * v125;
    v166 = v26;
LABEL_87:
    v172 = v53;
    v167 = v128;
    v168 = v127;
    v129 = v127;
    v169 = v126;
LABEL_88:
    v183 = v128;
    v184 = v129;
    v130 = v186;
    sub_1003B3C98(v128, v186);
    v182 = v126;
    v131 = v187;
    sub_1003B3C98(v126, v187);
    v132 = v130;
    v133 = v185;
    sub_1003B3C98(v132, v185);
    v134 = *(v12 + 48);
    v135 = v178;
    TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
    v136 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
    v137 = *(*(v136 - 8) + 8);
    v137(v133 + v134, v136);
    v138 = v131;
    v139 = v177;
    sub_1003B3C98(v138, v177);
    v140 = *(v12 + 48);
    v141 = v179;
    TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
    v137(v139 + v140, v136);
    v142 = static Date.> infix(_:_:)();
    v143 = *v176;
    v144 = v180;
    (*v176)(v141, v180);
    v143(v135, v144);
    v145 = type metadata accessor for UUID();
    v146 = *(*(v145 - 8) + 8);
    v146(v139, v145);
    v146(v185, v145);
    sub_1000079B4(v187, &unk_10076BE60);
    sub_1000079B4(v186, &unk_10076BE60);
    if (v142)
    {
      break;
    }

    v12 = v181;
LABEL_86:
    v53 = v172 + 1;
    v126 = v169 + v165;
    v127 = v168 - 1;
    v128 = v167 + v165;
    v26 = v166;
    if ((v172 + 1) != v166)
    {
      goto LABEL_87;
    }

    v5 = v159;
    a3 = v161;
    v27 = v162;
    v50 = v170;
    if (v166 < v170)
    {
      goto LABEL_123;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_100546DD8(0, *(v27 + 2) + 1, 1, v27);
    }

    v78 = *(v27 + 2);
    v77 = *(v27 + 3);
    v79 = v78 + 1;
    if (v78 >= v77 >> 1)
    {
      v27 = sub_100546DD8((v77 > 1), v78 + 1, 1, v27);
    }

    *(v27 + 2) = v79;
    v80 = &v27[16 * v78];
    *(v80 + 4) = v50;
    *(v80 + 5) = v26;
    if (!*v160)
    {
      goto LABEL_133;
    }

    if (v78)
    {
      v81 = *v160;
      while (1)
      {
        v82 = v79 - 1;
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v83 = *(v27 + 4);
          v84 = *(v27 + 5);
          v93 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          v86 = v93;
LABEL_53:
          if (v86)
          {
            goto LABEL_112;
          }

          v99 = &v27[16 * v79];
          v101 = *v99;
          v100 = *(v99 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_115;
          }

          v105 = &v27[16 * v82 + 32];
          v107 = *v105;
          v106 = *(v105 + 1);
          v93 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v93)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v103, v108))
          {
            goto LABEL_119;
          }

          if (v103 + v108 >= v85)
          {
            if (v85 < v108)
            {
              v82 = v79 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v109 = &v27[16 * v79];
        v111 = *v109;
        v110 = *(v109 + 1);
        v93 = __OFSUB__(v110, v111);
        v103 = v110 - v111;
        v104 = v93;
LABEL_67:
        if (v104)
        {
          goto LABEL_114;
        }

        v112 = &v27[16 * v82];
        v114 = *(v112 + 4);
        v113 = *(v112 + 5);
        v93 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v93)
        {
          goto LABEL_117;
        }

        if (v115 < v103)
        {
          goto LABEL_3;
        }

LABEL_74:
        v120 = v82 - 1;
        if (v82 - 1 >= v79)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v121 = *&v27[16 * v120 + 32];
        v122 = *&v27[16 * v82 + 40];
        sub_1003B2634(*a3 + *(v171 + 72) * v121, *a3 + *(v171 + 72) * *&v27[16 * v82 + 32], *a3 + *(v171 + 72) * v122, v81);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v122 < v121)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1000ED7BC(v27);
        }

        if (v120 >= *(v27 + 2))
        {
          goto LABEL_109;
        }

        v123 = &v27[16 * v120];
        *(v123 + 4) = v121;
        *(v123 + 5) = v122;
        v188 = v27;
        sub_1000ED730(v82);
        v27 = v188;
        v79 = *(v188 + 2);
        v12 = v181;
        if (v79 <= 1)
        {
          goto LABEL_3;
        }
      }

      v87 = &v27[16 * v79 + 32];
      v88 = *(v87 - 64);
      v89 = *(v87 - 56);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_110;
      }

      v92 = *(v87 - 48);
      v91 = *(v87 - 40);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_111;
      }

      v94 = &v27[16 * v79];
      v96 = *v94;
      v95 = *(v94 + 1);
      v93 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v93)
      {
        goto LABEL_113;
      }

      v93 = __OFADD__(v85, v97);
      v98 = v85 + v97;
      if (v93)
      {
        goto LABEL_116;
      }

      if (v98 >= v90)
      {
        v116 = &v27[16 * v82 + 32];
        v118 = *v116;
        v117 = *(v116 + 1);
        v93 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v93)
        {
          goto LABEL_120;
        }

        if (v85 < v119)
        {
          v82 = v79 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v25 = a3[1];
    if (v26 >= v25)
    {
      goto LABEL_96;
    }
  }

  v147 = v184;
  if (v174)
  {
    v148 = v183;
    v149 = v175;
    sub_1003B3D08(v183, v175);
    v12 = v181;
    v150 = v182;
    swift_arrayInitWithTakeFrontToBack();
    sub_1003B3D08(v149, v150);
    v126 = v150 + v173;
    v128 = v148 + v173;
    v151 = __CFADD__(v147, 1);
    v129 = (v147 + 1);
    if (v151)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_1003B2634(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v83 = type metadata accessor for Date();
  v8 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v81 = v72 - v11;
  v90 = sub_100058000(&unk_10076BE60);
  __chkstk_darwin(v90);
  v80 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v85 = v72 - v14;
  __chkstk_darwin(v15);
  v89 = v72 - v16;
  __chkstk_darwin(v17);
  v91 = v72 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_61;
  }

  v22 = (a2 - a1) / v20;
  v94 = a1;
  v93 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v24;
    if (v24 >= 1)
    {
      v47 = -v20;
      v74 = (v8 + 8);
      v75 = -v20;
      v48 = v46;
      v86 = a4;
      v87 = a1;
      v49 = v89;
      while (2)
      {
        while (1)
        {
          v72[0] = v46;
          v50 = a2 + v47;
          v88 = a2 + v47;
          v76 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v94 = a2;
              v92 = v72[0];
              goto LABEL_58;
            }

            v73 = v46;
            v84 = a3 + v47;
            v52 = v48 + v47;
            v77 = (v48 + v47);
            v53 = v91;
            v79 = a3;
            sub_1003B3C98(v52, v91);
            sub_1003B3C98(v50, v49);
            v54 = v53;
            v55 = v85;
            sub_1003B3C98(v54, v85);
            v56 = v90;
            v57 = *(v90 + 48);
            v58 = v81;
            TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
            v59 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
            v60 = *(v59 - 8);
            v78 = v48;
            v61 = *(v60 + 8);
            v61(v55 + v57, v59);
            v62 = v80;
            sub_1003B3C98(v49, v80);
            v63 = *(v56 + 48);
            v64 = v82;
            TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
            v61(v62 + v63, v59);
            v65 = static Date.> infix(_:_:)();
            v66 = *v74;
            v67 = v83;
            (*v74)(v64, v83);
            v66(v58, v67);
            v68 = type metadata accessor for UUID();
            v69 = *(*(v68 - 8) + 8);
            v69(v62, v68);
            v69(v85, v68);
            sub_1000079B4(v49, &unk_10076BE60);
            sub_1000079B4(v91, &unk_10076BE60);
            if (v65)
            {
              break;
            }

            v70 = v77;
            v46 = v77;
            a3 = v84;
            if (v79 < v78 || v84 >= v78)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v87;
              v50 = v88;
              v47 = v75;
            }

            else
            {
              a1 = v87;
              v50 = v88;
              v47 = v75;
              if (v79 != v78)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v48 = v46;
            v51 = v70 > v86;
            a2 = v76;
            if (!v51)
            {
              goto LABEL_56;
            }
          }

          v48 = v78;
          a3 = v84;
          v71 = v86;
          if (v79 < v76 || v84 >= v76)
          {
            break;
          }

          a1 = v87;
          a2 = v88;
          v46 = v73;
          v47 = v75;
          if (v79 != v76)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v48 <= v71)
          {
            goto LABEL_56;
          }
        }

        a2 = v88;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v87;
        v46 = v73;
        v47 = v75;
        if (v48 > v71)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v94 = a2;
    v92 = v46;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v79 = a4 + v23;
    v92 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v77 = (v8 + 8);
      v78 = v20;
      v84 = a3;
      do
      {
        v86 = a4;
        v87 = a1;
        v88 = a2;
        v26 = v91;
        sub_1003B3C98(a2, v91);
        v27 = v89;
        sub_1003B3C98(a4, v89);
        v28 = v85;
        sub_1003B3C98(v26, v85);
        v29 = v90;
        v30 = *(v90 + 48);
        v31 = v81;
        TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
        v32 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
        v33 = *(*(v32 - 8) + 8);
        v33(v28 + v30, v32);
        v34 = v27;
        v35 = v80;
        sub_1003B3C98(v34, v80);
        v36 = *(v29 + 48);
        v37 = v82;
        TTRUserDefaults.SmartListVersionWarning.creationDate.getter();
        v33(v35 + v36, v32);
        v38 = static Date.> infix(_:_:)();
        v39 = *v77;
        v40 = v83;
        (*v77)(v37, v83);
        v39(v31, v40);
        v41 = type metadata accessor for UUID();
        v42 = *(*(v41 - 8) + 8);
        v42(v35, v41);
        v42(v28, v41);
        sub_1000079B4(v89, &unk_10076BE60);
        sub_1000079B4(v91, &unk_10076BE60);
        if (v38)
        {
          v43 = v78;
          v44 = v87;
          a2 = v88 + v78;
          a4 = v86;
          if (v87 < v88 || v87 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v45 = v84;
          }

          else
          {
            v45 = v84;
            if (v87 != v88)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v44 = v87;
          a2 = v88;
          v43 = v78;
          a4 = v86 + v78;
          if (v87 < v86 || v87 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v45 = v84;
          }

          else
          {
            v45 = v84;
            if (v87 != v86)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v93 = a4;
        }

        a1 = v44 + v43;
        v94 = a1;
      }

      while (a4 < v79 && a2 < v45);
    }
  }

LABEL_58:
  sub_1000ED8DC(&v94, &v93, &v92);
}

uint64_t sub_1003B2EE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void *sub_1003B2F84(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1003B30DC(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v26 = result;
    v27 = a3;
    result = 0;
    v9 = 0;
    v25 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = a4;
      v15 = *(a4 + 56) + 56 * (__clz(__rbit64(v7)) | (v9 << 6));
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v7 &= v7 - 1;
      v19 = *(v15 + 32);
      v18 = *(v15 + 40);
      v20 = *(v15 + 48);
      *v8 = *v15;
      *(v8 + 16) = v17;
      *(v8 + 24) = v16;
      *(v8 + 32) = v19;
      *(v8 + 40) = v18;
      *(v8 + 48) = v20;
      if (v11 == v27)
      {

        v24 = v18;
        a4 = v14;
        v5 = v25;
        result = v26;
        a3 = v27;
        goto LABEL_24;
      }

      v8 += 56;

      v21 = v18;
      result = v11;
      v22 = __OFADD__(v11++, 1);
      a4 = v14;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v23 = v9 + 1;
    }

    else
    {
      v23 = v10;
    }

    v9 = v23 - 1;
    a3 = result;
    v5 = v25;
    result = v26;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_1003B3294(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_100003540(0, &qword_100776230);
  sub_1003B3D9C();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_100003540(0, &qword_100776230);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1003B34B0(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1003B35AC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for TTRRemindersListViewModel.Item();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_1003B3850(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = sub_100058000(&unk_10076BE60);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = (&v33 - v11);
  v40 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
LABEL_25:
    *a1 = v40;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v25;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(v13 - 32);
    v35 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    v36 = a3;
    v21 = v40;
    while (v17)
    {
LABEL_14:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v18;
      v26 = v24 | (v18 << 6);
      v27 = *(v21 + 48);
      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 16))(v9, v27 + *(*(v28 - 8) + 72) * v26, v28);
      v29 = *(v21 + 56);
      v30 = type metadata accessor for TTRUserDefaults.SmartListVersionWarning();
      (*(*(v30 - 8) + 16))(&v9[*(v39 + 48)], v29 + *(*(v30 - 8) + 72) * v26, v30);
      a1 = v38;
      sub_1003B3D08(v9, v38);
      sub_1003B3D08(a1, a2);
      if (v20 == v36)
      {
        goto LABEL_23;
      }

      a2 += *(v37 + 72);
      v31 = __OFADD__(v20++, 1);
      v18 = v25;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v18;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v23);
      ++v22;
      if (v17)
      {
        v18 = v23;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v32 = v18 + 1;
    }

    else
    {
      v32 = v19;
    }

    v25 = v32 - 1;
LABEL_23:
    v15 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

uint64_t *sub_1003B3B0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  v9 = sub_1000317B8(a3 + 2);
  (*(*(a4 - 8) + 32))(v9, a1, a4);
  a3[7] = a2;
  return a3;
}

uint64_t *sub_1003B3B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  __chkstk_darwin(a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRSmartListVersionWarningInteractor();
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  v12[5] = a4;
  v12[6] = a5;
  v13 = sub_1000317B8(v12 + 2);
  (*(v9 + 32))(v13, v11, a4);
  v12[7] = a2;
  return v12;
}

uint64_t sub_1003B3C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076BE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B3D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076BE60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003B3D9C()
{
  result = qword_100776238;
  if (!qword_100776238)
  {
    sub_100003540(255, &qword_100776230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100776238);
  }

  return result;
}

uint64_t sub_1003B3E04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B3E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1003B3FA0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, void (*a6)(void)@<X6>, uint64_t *a7@<X7>, char *a8@<X8>, uint64_t a9, void (*a10)(char *), uint64_t *a11)
{
  v183 = a7;
  v184 = a8;
  v180 = a5;
  v181 = a6;
  v182 = a9;
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v165 = &v160 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v174 = &v160 - v20;
  v175 = a1;
  v176 = a2;
  v21 = sub_100058000(a1);
  v22 = __chkstk_darwin(v21 - 8);
  v166 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v164 = &v160 - v25;
  v26 = __chkstk_darwin(v24);
  v172 = &v160 - v27;
  __chkstk_darwin(v26);
  v173 = &v160 - v28;
  v177 = sub_100058000(a3);
  v29 = __chkstk_darwin(v177);
  v163 = &v160 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v161 = &v160 - v32;
  v33 = __chkstk_darwin(v31);
  v170 = &v160 - v34;
  __chkstk_darwin(v33);
  v171 = &v160 - v35;
  v36 = a4(0);
  v178 = *(v36 - 8);
  v179 = v36;
  v37 = __chkstk_darwin(v36);
  v162 = &v160 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v160 = &v160 - v40;
  v41 = __chkstk_darwin(v39);
  v168 = &v160 - v42;
  __chkstk_darwin(v41);
  v169 = &v160 - v43;
  v44 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v44 - 8);
  v46 = &v160 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TTRITreeViewDropProposal(0);
  __chkstk_darwin(v47);
  v49 = &v160 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100058000(&unk_100771B10);
  v51 = __chkstk_darwin(v50 - 8);
  v167 = &v160 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v55 = &v160 - v54;
  v56 = __chkstk_darwin(v53);
  v58 = &v160 - v57;
  __chkstk_darwin(v56);
  v60 = &v160 - v59;
  v61 = [*(v11 + qword_100780BE8) destinationIndexPath];
  if (v61)
  {
    v62 = v61;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = v17;
    v64 = *(v17 + 56);
    v65 = v58;
    v66 = 0;
  }

  else
  {
    v63 = v17;
    v64 = *(v17 + 56);
    v65 = v58;
    v66 = 1;
  }

  v67 = v16;
  v68 = v16;
  v69 = v64;
  v64(v65, v66, 1, v68);
  sub_100016588(v58, v60, &unk_100771B10);
  v70 = qword_1007A8670;
  sub_1001C4200(v11 + qword_1007A8670, v49);
  sub_1003DEF14(&v49[*(v47 + 20)], v46, type metadata accessor for TTRITreeViewDropProposal.Intent);
  v71 = sub_100058000(&qword_100780DC0);
  v72 = (*(*(v71 - 8) + 48))(v46, 4, v71);
  if (v72 > 1)
  {
    if (v72 != 2)
    {
      v73 = v184;
      if (v72 != 3)
      {
        if (qword_100767238 != -1)
        {
          swift_once();
        }

        v91 = type metadata accessor for Logger();
        sub_100003E30(v91, qword_100780BD0);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.fault.getter();
        if (!os_log_type_enabled(v77, v78))
        {
          goto LABEL_25;
        }

        v89 = swift_slowAlloc();
        *v89 = 0;
        v90 = "Unexpected unresolved intent";
        goto LABEL_24;
      }

      v74 = v172;
      a10(v60);
      v75 = sub_100058000(v183);
      if ((*(*(v75 - 8) + 48))(v74, 1, v75) == 1)
      {
        sub_1000079B4(v74, v175);
        if (qword_100767238 != -1)
        {
          swift_once();
        }

        v76 = type metadata accessor for Logger();
        sub_100003E30(v76, qword_100780BD0);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.fault.getter();
        if (!os_log_type_enabled(v77, v78))
        {
          goto LABEL_25;
        }

        goto LABEL_19;
      }

      sub_1000079B4(v60, &unk_100771B10);
      v107 = *(v74 + *(v75 + 48));
      v108 = v177;
      v109 = *(v177 + 48);
      v110 = *(v178 + 32);
      v111 = v170;
      v112 = v74;
      v113 = v179;
      v110(v170, v112, v179);
      *&v111[v109] = v107;
      v114 = *&v111[*(v108 + 48)];
      v115 = v168;
      v110(v168, v111, v113);
      v116 = *(v75 + 48);
      v110(v73, v115, v113);
      *&v73[v116] = v114;
LABEL_43:
      sub_100058000(a11);
      swift_storeEnumTagMultiPayload();
      return;
    }

    sub_1003C085C(v180);
    v84 = v173;
    v181();

    v85 = sub_100058000(v183);
    v86 = (*(*(v85 - 8) + 48))(v84, 1, v85);
    v87 = v184;
    if (v86 == 1)
    {
      sub_1000079B4(v84, v175);
      if (qword_100767238 != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      sub_100003E30(v88, qword_100780BD0);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v77, v78))
      {
        goto LABEL_25;
      }

LABEL_19:
      v89 = swift_slowAlloc();
      *v89 = 0;
      v90 = "Unable to get parent/index";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v77, v78, v90, v89, 2u);

LABEL_25:

LABEL_26:
      v92 = v60;
LABEL_42:
      sub_1000079B4(v92, &unk_100771B10);
      goto LABEL_43;
    }

    sub_1000079B4(v60, &unk_100771B10);
    v96 = *(v84 + *(v85 + 48));
    v97 = v177;
    v98 = *(v177 + 48);
    v99 = *(v178 + 32);
    v100 = v171;
    v101 = v179;
    v99(v171, v84, v179);
    *&v100[v98] = v96;
    v102 = *&v100[*(v97 + 48)];
    v103 = v169;
    v99(v169, v100, v101);
    v104 = *(v85 + 48);
    v105 = v87;
    v106 = v103;
LABEL_32:
    v99(v105, v106, v101);
    *&v87[v104] = v102;
    goto LABEL_43;
  }

  if (v72)
  {
    v93 = *(v11 + v70);
    if (v93 < 2)
    {
      goto LABEL_41;
    }

    if (v93 == 2)
    {
      v173 = v60;
      sub_10000794C(v60, v55, &unk_100771B10);
      v94 = v63;
      v95 = v67;
      if ((*(v63 + 48))(v55, 1, v67) == 1)
      {
        sub_1000079B4(v173, &unk_100771B10);
        v92 = v55;
      }

      else
      {
        v133 = v165;
        (*(v63 + 32))(v165, v55, v95);
        v134 = sub_1003C085C(v180);
        v136 = v135;
        v137 = v167;
        (*(v63 + 16))(v167, v133, v95);
        v69(v137, 0, 1, v95);
        v138 = v164;
        (v181)(v134, v136 & 1, v137);

        sub_1000079B4(v137, &unk_100771B10);
        v139 = sub_100058000(v183);
        if ((*(*(v139 - 8) + 48))(v138, 1, v139) != 1)
        {
          (*(v94 + 8))(v133, v95);
          sub_1000079B4(v173, &unk_100771B10);
          v149 = *(v138 + *(v139 + 48));
          v150 = v177;
          v151 = *(v177 + 48);
          v152 = *(v178 + 32);
          v153 = v161;
          v154 = v179;
          v152(v161, v138, v179);
          *&v153[v151] = v149;
          v155 = *&v153[*(v150 + 48)];
          v156 = v160;
          v152(v160, v153, v154);
          v157 = *(v139 + 48);
          v158 = v184;
          v152(v184, v156, v154);
          *&v158[v157] = v155;
          goto LABEL_43;
        }

        sub_1000079B4(v138, v175);
        if (qword_100767238 != -1)
        {
          swift_once();
        }

        v140 = type metadata accessor for Logger();
        sub_100003E30(v140, qword_100780BD0);
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          *v143 = 0;
          _os_log_impl(&_mh_execute_header, v141, v142, "Unable to get parent/index", v143, 2u);
        }

        (*(v94 + 8))(v133, v95);
        v92 = v173;
      }

      goto LABEL_42;
    }

    if (v93 == 3)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v79 = v63;
    v80 = *(v63 + 32);
    v81 = v174;
    v82 = v67;
    v80(v174, v46, v67);
    v83 = *(v11 + v70);
    if (v83 < 2)
    {
      (*(v79 + 8))(v81, v67);
LABEL_41:
      v92 = v60;
      goto LABEL_42;
    }

    v117 = v79;
    if (v83 == 2)
    {
      if (qword_100767238 != -1)
      {
        swift_once();
      }

      v118 = type metadata accessor for Logger();
      sub_100003E30(v118, qword_100780BD0);
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 0;
        _os_log_impl(&_mh_execute_header, v119, v120, "Unexpected operation=.copy for intent=.multiRowReordering", v121, 2u);
      }

      (*(v117 + 8))(v81, v82);
      goto LABEL_26;
    }

    v173 = v60;
    if (v83 == 3)
    {
      v122 = sub_1003C085C(v180);
      v124 = v123;
      v125 = v167;
      (*(v79 + 16))(v167, v81, v82);
      v69(v125, 0, 1, v82);
      v126 = v166;
      (v181)(v122, v124 & 1, v125);

      sub_1000079B4(v125, &unk_100771B10);
      v127 = sub_100058000(v183);
      if ((*(*(v127 - 8) + 48))(v126, 1, v127) == 1)
      {
        sub_1000079B4(v126, v175);
        v128 = v173;
        if (qword_100767238 != -1)
        {
          swift_once();
        }

        v129 = type metadata accessor for Logger();
        sub_100003E30(v129, qword_100780BD0);
        v130 = Logger.logObject.getter();
        v131 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          *v132 = 0;
          _os_log_impl(&_mh_execute_header, v130, v131, "Unable to get parent/index", v132, 2u);
        }

        (*(v117 + 8))(v81, v82);
        v92 = v128;
        goto LABEL_42;
      }

      (*(v117 + 8))(v81, v82);
      sub_1000079B4(v173, &unk_100771B10);
      v144 = *(v126 + *(v127 + 48));
      v145 = v177;
      v146 = *(v177 + 48);
      v99 = *(v178 + 32);
      v147 = v163;
      v101 = v179;
      v99(v163, v126, v179);
      *&v147[v146] = v144;
      v102 = *&v147[*(v145 + 48)];
      v148 = v162;
      v99(v162, v147, v101);
      v104 = *(v127 + 48);
      v87 = v184;
      v105 = v184;
      v106 = v148;
      goto LABEL_32;
    }
  }

  if (qword_100767238 != -1)
  {
    swift_once();
  }

  v159 = type metadata accessor for Logger();
  sub_100003E30(v159, qword_100780BD0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown UIDropOperation", 23, 2);
  __break(1u);
}

void *sub_1003B5198(int a1)
{
  v47 = a1;
  v1 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v1 - 8);
  v56 = v46 - v2;
  v65 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v3 = *(v65 - 8);
  __chkstk_darwin(v65);
  v53 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v5 - 8);
  v7 = v46 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100058000(&unk_1007819A0);
  v54 = *(v52 - 8);
  v12 = __chkstk_darwin(v52);
  v51 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = v46 - v14;
  v15 = sub_100058000(&unk_10076BDA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v55 = (v46 - v17);
  v18 = sub_1003B74A4(&unk_10076BDA0, &unk_10063D3D0, sub_1004A2198, sub_1003BFD84);
  v19 = v18[2];
  if (v19)
  {
    v68 = v8;
    v63 = v11;
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v46[1] = v18;
    v21 = v18 + v20;
    v22 = (v9 + 48);
    v67 = *(v15 + 36);
    v60 = (v9 + 32);
    v23 = *(v16 + 72);
    v58 = (v3 + 48);
    v49 = (v3 + 32);
    v48 = (v9 + 8);
    v66 = _swiftEmptyArrayStorage;
    v25 = v55;
    v24 = v56;
    v62 = v15;
    v50 = v7;
    v61 = v22;
    v59 = v23;
    while (1)
    {
      v69 = v21;
      v70 = v19;
      sub_10000794C(v21, v25, &unk_10076BDA0);
      sub_10000794C(v25 + v67, v7, &unk_100771B10);
      v26 = v7;
      v27 = v7;
      v28 = v68;
      if ((*v22)(v26, 1, v68) == 1)
      {
        sub_1000079B4(v25, &unk_10076BDA0);
        sub_1000079B4(v27, &unk_100771B10);
      }

      else
      {
        v29 = *v60;
        v30 = v63;
        (*v60)(v63, v27, v28);
        sub_10000794C(v25 + *(v62 + 40), v24, &unk_100771B40);
        v31 = v65;
        if ((*v58)(v24, 1, v65) != 1)
        {
          v32 = v28;
          v33 = *v49;
          v34 = v53;
          v35 = v24;
          v36 = v31;
          (*v49)(v53, v35, v31);
          v57 = *v25;
          sub_1000079B4(v25, &unk_10076BDA0);
          v37 = v52;
          v38 = v51;
          v29(&v51[*(v52 + 36)], v30, v32);
          v33(&v38[*(v37 + 40)], v34, v36);
          *v38 = v57;
          sub_100016588(v38, v64, &unk_1007819A0);
          v39 = v66;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_1005477E4(0, v39[2] + 1, 1, v39);
          }

          v23 = v59;
          v41 = v39[2];
          v40 = v39[3];
          v66 = v39;
          v7 = v50;
          if (v41 >= v40 >> 1)
          {
            v66 = sub_1005477E4(v40 > 1, v41 + 1, 1, v66);
          }

          v42 = v66;
          v66[2] = v41 + 1;
          sub_100016588(v64, v42 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v41, &unk_1007819A0);
          v25 = v55;
          v24 = v56;
          v22 = v61;
          goto LABEL_5;
        }

        (*v48)(v30, v28);
        sub_1000079B4(v25, &unk_10076BDA0);
        sub_1000079B4(v24, &unk_100771B40);
        v22 = v61;
        v23 = v59;
      }

      v7 = v27;
LABEL_5:
      v21 = v69 + v23;
      v19 = v70 - 1;
      if (v70 == 1)
      {

        if (v47)
        {
          v43 = v66;
          goto LABEL_17;
        }

        return v66;
      }
    }
  }

  v43 = _swiftEmptyArrayStorage;
  if (v47)
  {
LABEL_17:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1003B2EBC(v43);
    }

    v44 = v43[2];
    v71[0] = v43 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v71[1] = v44;
    sub_1003D6F6C(v71, &unk_1007819A0, &unk_10062FF50, sub_1000ED8B4);
  }

  return v43;
}

void *sub_1003B5934(int a1)
{
  v47 = a1;
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v56 = v46 - v2;
  v65 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v65 - 8);
  __chkstk_darwin(v65);
  v53 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v5 - 8);
  v7 = v46 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100058000(&qword_10076BC90);
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v64 = v46 - v14;
  v15 = sub_100058000(&unk_1007818E0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v55 = (v46 - v17);
  v18 = sub_1003B74A4(&unk_1007818E0, &unk_10063D348, sub_1004A24F0, sub_1003C02F0);
  v19 = v18[2];
  if (v19)
  {
    v68 = v8;
    v63 = v11;
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v46[1] = v18;
    v21 = v18 + v20;
    v22 = (v9 + 48);
    v67 = *(v15 + 36);
    v60 = (v9 + 32);
    v23 = *(v16 + 72);
    v58 = (v3 + 48);
    v49 = (v3 + 32);
    v48 = (v9 + 8);
    v66 = _swiftEmptyArrayStorage;
    v25 = v55;
    v24 = v56;
    v62 = v15;
    v50 = v7;
    v61 = v22;
    v59 = v23;
    while (1)
    {
      v69 = v21;
      v70 = v19;
      sub_10000794C(v21, v25, &unk_1007818E0);
      sub_10000794C(v25 + v67, v7, &unk_100771B10);
      v26 = v7;
      v27 = v7;
      v28 = v68;
      if ((*v22)(v26, 1, v68) == 1)
      {
        sub_1000079B4(v25, &unk_1007818E0);
        sub_1000079B4(v27, &unk_100771B10);
      }

      else
      {
        v29 = *v60;
        v30 = v63;
        (*v60)(v63, v27, v28);
        sub_10000794C(v25 + *(v62 + 40), v24, &qword_100772140);
        v31 = v65;
        if ((*v58)(v24, 1, v65) != 1)
        {
          v32 = v28;
          v33 = *v49;
          v34 = v53;
          v35 = v24;
          v36 = v31;
          (*v49)(v53, v35, v31);
          v57 = *v25;
          sub_1000079B4(v25, &unk_1007818E0);
          v37 = v52;
          v38 = v51;
          v29(&v51[*(v52 + 36)], v30, v32);
          v33(&v38[*(v37 + 40)], v34, v36);
          *v38 = v57;
          sub_100016588(v38, v64, &qword_10076BC90);
          v39 = v66;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_1005482C8(0, v39[2] + 1, 1, v39);
          }

          v23 = v59;
          v41 = v39[2];
          v40 = v39[3];
          v66 = v39;
          v7 = v50;
          if (v41 >= v40 >> 1)
          {
            v66 = sub_1005482C8(v40 > 1, v41 + 1, 1, v66);
          }

          v42 = v66;
          v66[2] = v41 + 1;
          sub_100016588(v64, v42 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v41, &qword_10076BC90);
          v25 = v55;
          v24 = v56;
          v22 = v61;
          goto LABEL_5;
        }

        (*v48)(v30, v28);
        sub_1000079B4(v25, &unk_1007818E0);
        sub_1000079B4(v24, &qword_100772140);
        v22 = v61;
        v23 = v59;
      }

      v7 = v27;
LABEL_5:
      v21 = v69 + v23;
      v19 = v70 - 1;
      if (v70 == 1)
      {

        if (v47)
        {
          v43 = v66;
          goto LABEL_17;
        }

        return v66;
      }
    }
  }

  v43 = _swiftEmptyArrayStorage;
  if (v47)
  {
LABEL_17:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1003B2F5C(v43);
    }

    v44 = v43[2];
    v71[0] = v43 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v71[1] = v44;
    sub_1003D6F6C(v71, &qword_10076BC90, &unk_10063D350, sub_1000ED8C8);
  }

  return v43;
}

void sub_1003B60D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C8504();
  v16 = v15;
  v18 = v17;
  v38 = a2;
  v20 = sub_1000F4DB4(a2, v19);
  if (v20)
  {
    sub_1000C77E8(v20, v18 & 1, v14, v16, v9);

    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v13, v9, v10);
      v21 = *(v3 + qword_100780BE8);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v23 = [v21 dropItem:v37 toRowAtIndexPath:isa];
      swift_unknownObjectRelease();

      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  else
  {

    (*(v11 + 56))(v9, 1, 1, v10);
  }

  sub_1000079B4(v9, &unk_100771B10);
  if (qword_100767238 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_100780BD0);
  v26 = v39;
  v25 = v40;
  v27 = v41;
  (*(v40 + 16))(v39, v38, v41);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = v31;
    *v30 = 136315138;
    v32 = sub_1003DF088(&qword_10076B4F0, &type metadata accessor for TTRAccountsListsViewModel.Item);
    v33 = (*(v32 + 32))(v27, v32);
    v35 = v34;
    (*(v25 + 8))(v26, v27);
    v36 = sub_100004060(v33, v35, &v42);

    *(v30 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "Row for the given item doesn't exist. Make sure the item is added to the tree view first {item: %s}", v30, 0xCu);
    sub_100004758(v31);
  }

  else
  {

    (*(v25 + 8))(v26, v27);
  }
}

void sub_1003B6584(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v2;
  v13 = sub_1000C84C8();
  v15 = v14;
  v17 = v16;
  v38 = a2;
  v19 = sub_1000F2C50(a2, v18);
  if (v19)
  {
    sub_1000C73C4(v19, v17 & 1, v13, v15, v8);

    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v12, v8, v9);
      v20 = *(v36 + qword_100780BE8);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v22 = [v20 dropItem:v37 toRowAtIndexPath:isa];
      swift_unknownObjectRelease();

      (*(v10 + 8))(v12, v9);
      return;
    }
  }

  else
  {

    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_1000079B4(v8, &unk_100771B10);
  if (qword_100767238 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100003E30(v23, qword_100780BD0);
  v24 = v39;
  v25 = v40;
  v26 = *(v40 + 16);
  v26(v39, v38, v4);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v44 = v38;
    *v29 = 136315138;
    v42 = v4;
    v43 = sub_1003DF088(&qword_100781080, &type metadata accessor for TTRRemindersListViewModel.Item);
    v30 = sub_1000317B8(v41);
    v26(v30, v24, v4);
    sub_10000C36C(v41, v42);
    v31 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    v33 = v32;
    (*(v25 + 8))(v24, v4);
    sub_100004758(v41);
    v34 = sub_100004060(v31, v33, &v44);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "Row for the given item doesn't exist. Make sure the item is added to the tree view first {item: %s}", v29, 0xCu);
    sub_100004758(v38);
  }

  else
  {

    (*(v25 + 8))(v24, v4);
  }
}

void sub_1003B6A6C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v45 = a1;
  v12 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v46 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v14 - 8);
  v16 = &v45 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v6;
  v22 = sub_1000C8504();
  v24 = v23;
  v26 = v25;
  v47 = a2;
  v28 = sub_1000F4DB4(a2, v27);
  if (v28)
  {
    sub_1000C77E8(v28, v26 & 1, v22, v24, v16);

    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      (*(v18 + 32))(v20, v16, v17);
      v29 = *(v21 + qword_100780BE8);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v31 = [v29 dropItem:v45 intoRowAtIndexPath:isa rect:{a3, a4, a5, a6}];
      swift_unknownObjectRelease();

      (*(v18 + 8))(v20, v17);
      return;
    }
  }

  else
  {

    (*(v18 + 56))(v16, 1, 1, v17);
  }

  sub_1000079B4(v16, &unk_100771B10);
  if (qword_100767238 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100003E30(v32, qword_100780BD0);
  v33 = v48;
  v34 = v46;
  v35 = v49;
  (*(v48 + 16))(v46, v47, v49);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v50 = v39;
    *v38 = 136315138;
    v40 = sub_1003DF088(&qword_10076B4F0, &type metadata accessor for TTRAccountsListsViewModel.Item);
    v41 = (*(v40 + 32))(v35, v40);
    v43 = v42;
    (*(v33 + 8))(v34, v35);
    v44 = sub_100004060(v41, v43, &v50);

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "Row for the given item doesn't exist. {item: %s}", v38, 0xCu);
    sub_100004758(v39);
  }

  else
  {

    (*(v33 + 8))(v34, v35);
  }
}

void sub_1003B6F50(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v45 = a1;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v48 = *(v12 - 8);
  __chkstk_darwin(v12);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v6;
  v21 = sub_1000C84C8();
  v23 = v22;
  v25 = v24;
  v46 = a2;
  v27 = sub_1000F2C50(a2, v26);
  if (v27)
  {
    sub_1000C73C4(v27, v25 & 1, v21, v23, v16);

    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      (*(v18 + 32))(v20, v16, v17);
      v28 = *(v44 + qword_100780BE8);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v30 = [v28 dropItem:v45 intoRowAtIndexPath:isa rect:{a3, a4, a5, a6}];
      swift_unknownObjectRelease();

      (*(v18 + 8))(v20, v17);
      return;
    }
  }

  else
  {

    (*(v18 + 56))(v16, 1, 1, v17);
  }

  sub_1000079B4(v16, &unk_100771B10);
  if (qword_100767238 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100003E30(v31, qword_100780BD0);
  v32 = v47;
  v33 = v48;
  v34 = *(v48 + 16);
  v34(v47, v46, v12);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52 = v46;
    *v37 = 136315138;
    v50 = v12;
    v51 = sub_1003DF088(&qword_100781080, &type metadata accessor for TTRRemindersListViewModel.Item);
    v38 = sub_1000317B8(v49);
    v34(v38, v32, v12);
    sub_10000C36C(v49, v50);
    v39 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    v41 = v40;
    (*(v33 + 8))(v32, v12);
    sub_100004758(v49);
    v42 = sub_100004060(v39, v41, &v52);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Row for the given item doesn't exist. {item: %s}", v37, 0xCu);
    sub_100004758(v46);
  }

  else
  {

    (*(v33 + 8))(v32, v12);
  }
}

void *sub_1003B74A4(uint64_t *a1, uint64_t a2, void (*a3)(BOOL, unint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, char *))
{
  v26 = a2;
  v27 = a4;
  v25 = a1;
  v6 = sub_100058000(a1);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - v8;
  v24 = v4;
  v10 = [*(v4 + qword_100780BE8) items];
  sub_100058000(&unk_100781900);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    goto LABEL_16;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    while (1)
    {
      v13 = v11;
      v29 = _swiftEmptyArrayStorage;
      result = (a3)(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        break;
      }

      v21 = a3;
      v15 = 0;
      a3 = 0;
      v11 = v29;
      v16 = v13;
      v22 = v13 & 0xFFFFFFFFFFFFFF8;
      v23 = v13 & 0xC000000000000001;
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v23)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v22 + 16))
          {
            goto LABEL_15;
          }

          v18 = *(v16 + 8 * v15 + 32);
          swift_unknownObjectRetain();
        }

        v27(v18, v24, v28);
        swift_unknownObjectRelease();
        v29 = v11;
        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        if (v20 >= v19 >> 1)
        {
          v21(v19 > 1, v20 + 1, 1);
          v11 = v29;
        }

        *(v11 + 16) = v20 + 1;
        sub_100016588(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v25);
        ++v15;
        v16 = v13;
        if (v17 == v12)
        {

          return v11;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v12 = _CocoaArrayWrapper.endIndex.getter();
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_1003B772C(int a1)
{
  v3 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v3 - 8);
  v80 = v64 - v4;
  v82 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v88 = *(v82 - 8);
  v5 = __chkstk_darwin(v82);
  v66 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v70 = v64 - v7;
  v8 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v8 - 8);
  v10 = v64 - v9;
  v89 = type metadata accessor for IndexPath();
  v11 = *(v89 - 8);
  __chkstk_darwin(v89);
  v13 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100058000(&unk_1007819A0);
  v72 = *(v90 - 8);
  v14 = __chkstk_darwin(v90);
  v87 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v69 = v64 - v17;
  __chkstk_darwin(v16);
  v78 = v64 - v18;
  v81 = sub_100058000(&unk_10076BDA0);
  v91 = *(v81 - 8);
  v19 = __chkstk_darwin(v81);
  v21 = (v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = (v64 - v22);
  v85 = v1;
  v24 = [*(v1 + qword_100780BE8) items];
  sub_100058000(&unk_100781900);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v25 >> 62)
  {
LABEL_42:
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v13;
  v65 = a1;
  v86 = v10;
  v71 = v23;
  if (v26)
  {
    v27 = v25;
    v92[0] = _swiftEmptyArrayStorage;
    sub_1004A2198(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      __break(1u);
LABEL_44:
      v13 = sub_1003B2EBC(v13);
      goto LABEL_31;
    }

    v83 = v11;
    v13 = 0;
    a1 = 0;
    v25 = v92[0];
    v28 = v27;
    v11 = v27 & 0xC000000000000001;
    v84 = v27 & 0xFFFFFFFFFFFFFF8;
    v10 = v27;
    do
    {
      v29 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v11)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v84 + 16))
        {
          goto LABEL_41;
        }

        v30 = *&v28[8 * v13 + 32];
        swift_unknownObjectRetain();
      }

      sub_1003BFD84(v30, v85, v21);
      swift_unknownObjectRelease();
      v92[0] = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      v23 = (v32 + 1);
      if (v32 >= v31 >> 1)
      {
        sub_1004A2198(v31 > 1, v32 + 1, 1);
        v25 = v92[0];
      }

      *(v25 + 16) = v23;
      sub_100016588(v21, v25 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v32, &unk_10076BDA0);
      ++v13;
      v28 = v10;
    }

    while (v29 != v26);

    v23 = v71;
    v11 = v83;
    v33 = *(v25 + 16);
    if (!v33)
    {
      goto LABEL_28;
    }
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
    v33 = _swiftEmptyArrayStorage[2];
    if (!v33)
    {
LABEL_28:

      v13 = _swiftEmptyArrayStorage;
      v10 = v82;
      v53 = v65;
      goto LABEL_29;
    }
  }

  v64[1] = 0;
  v34 = v25 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
  v35 = (v11 + 48);
  v36 = *(v81 + 36);
  v76 = (v11 + 32);
  v84 = *(v91 + 72);
  v85 = v36;
  v74 = (v88 + 48);
  v68 = (v88 + 32);
  v67 = (v11 + 8);
  v83 = _swiftEmptyArrayStorage;
  v77 = (v11 + 48);
  v75 = v25;
  do
  {
    v91 = v33;
    sub_10000794C(v34, v23, &unk_10076BDA0);
    v37 = v86;
    sub_10000794C(v23 + v85, v86, &unk_100771B10);
    v38 = v89;
    if ((*v35)(v37, 1, v89) == 1)
    {
      sub_1000079B4(v23, &unk_10076BDA0);
      sub_1000079B4(v37, &unk_100771B10);
    }

    else
    {
      v39 = v23;
      v40 = *v76;
      v41 = v79;
      (*v76)(v79, v37, v38);
      v42 = v80;
      sub_10000794C(v39 + *(v81 + 40), v80, &unk_100771B40);
      v43 = v82;
      if ((*v74)(v42, 1, v82) == 1)
      {
        (*v67)(v41, v38);
        sub_1000079B4(v39, &unk_10076BDA0);
        sub_1000079B4(v42, &unk_100771B40);
        v23 = v39;
        v35 = v77;
      }

      else
      {
        v44 = v42;
        v45 = *v68;
        v46 = v70;
        (*v68)(v70, v44, v43);
        v73 = *v39;
        sub_1000079B4(v39, &unk_10076BDA0);
        v47 = v90;
        v48 = v69;
        v40(&v69[*(v90 + 36)], v41, v89);
        v45(&v48[*(v47 + 40)], v46, v43);
        *v48 = v73;
        sub_100016588(v48, v78, &unk_1007819A0);
        v49 = v83;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1005477E4(0, v49[2] + 1, 1, v49);
        }

        v51 = v49[2];
        v50 = v49[3];
        if (v51 >= v50 >> 1)
        {
          v49 = sub_1005477E4(v50 > 1, v51 + 1, 1, v49);
        }

        v49[2] = v51 + 1;
        v52 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v83 = v49;
        sub_100016588(v78, v49 + v52 + *(v72 + 72) * v51, &unk_1007819A0);
        v23 = v71;
        v35 = v77;
      }
    }

    v34 += v84;
    v33 = v91 - 1;
  }

  while (v91 != 1);

  v10 = v82;
  v13 = v83;
  v53 = v65;
LABEL_29:
  v11 = v66;
  if ((v53 & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_31:
  v54 = *(v13 + 16);
  v92[0] = v13 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
  v92[1] = v54;
  sub_1003D6F6C(v92, &unk_1007819A0, &unk_10062FF50, sub_1000ED8B4);
LABEL_32:
  v55 = *(v13 + 16);
  if (v55)
  {
    v92[0] = _swiftEmptyArrayStorage;
    sub_1004A2154(0, v55, 0);
    v56 = v92[0];
    v57 = *(v72 + 80);
    v83 = v13;
    v58 = v13 + ((v57 + 32) & ~v57);
    v91 = *(v72 + 72);
    v59 = (v88 + 16);
    v89 = v88 + 32;
    do
    {
      v60 = v87;
      sub_10000794C(v58, v87, &unk_1007819A0);
      (*v59)(v11, v60 + *(v90 + 40), v10);
      sub_1000079B4(v60, &unk_1007819A0);
      v92[0] = v56;
      v62 = *(v56 + 16);
      v61 = *(v56 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1004A2154(v61 > 1, v62 + 1, 1);
        v56 = v92[0];
      }

      *(v56 + 16) = v62 + 1;
      (*(v88 + 32))(v56 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v62, v11, v10);
      v58 += v91;
      --v55;
    }

    while (v55);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v56;
}

void *sub_1003B823C(int a1)
{
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v81 = v65 - v4;
  v83 = type metadata accessor for TTRRemindersListViewModel.Item();
  v89 = *(v83 - 8);
  __chkstk_darwin(v83);
  v67 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = v65 - v7;
  v8 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v8 - 8);
  v10 = v65 - v9;
  v90 = type metadata accessor for IndexPath();
  v11 = *(v90 - 8);
  __chkstk_darwin(v90);
  v13 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100058000(&qword_10076BC90);
  v73 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v70 = v65 - v16;
  __chkstk_darwin(v17);
  v79 = v65 - v18;
  v82 = sub_100058000(&unk_1007818E0);
  v92 = *(v82 - 8);
  __chkstk_darwin(v82);
  v20 = (v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v21);
  v24 = (v65 - v23);
  v86 = v1;
  v25 = [*(v1 + qword_100780BE8) items];
  sub_100058000(&unk_100781900);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
LABEL_42:
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v80 = v13;
  v66 = a1;
  v87 = v10;
  v72 = v24;
  if (v27)
  {
    v28 = v26;
    v93[0] = _swiftEmptyArrayStorage;
    sub_1004A24F0(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
LABEL_44:
      v13 = sub_1003B2F5C(v13);
      goto LABEL_31;
    }

    v84 = v11;
    v13 = 0;
    a1 = 0;
    v26 = v93[0];
    v29 = v28;
    v11 = v28 & 0xC000000000000001;
    v85 = v28 & 0xFFFFFFFFFFFFFF8;
    v10 = v28;
    do
    {
      v30 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v11)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v85 + 16))
        {
          goto LABEL_41;
        }

        v31 = *&v29[8 * v13 + 32];
        swift_unknownObjectRetain();
      }

      sub_1003C02F0(v31, v86, v20);
      swift_unknownObjectRelease();
      v93[0] = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      v24 = (v33 + 1);
      if (v33 >= v32 >> 1)
      {
        sub_1004A24F0(v32 > 1, v33 + 1, 1);
        v26 = v93[0];
      }

      *(v26 + 16) = v24;
      sub_100016588(v20, v26 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v33, &unk_1007818E0);
      ++v13;
      v29 = v10;
    }

    while (v30 != v27);

    v24 = v72;
    v11 = v84;
    v34 = *(v26 + 16);
    if (!v34)
    {
      goto LABEL_28;
    }
  }

  else
  {

    v26 = _swiftEmptyArrayStorage;
    v34 = _swiftEmptyArrayStorage[2];
    if (!v34)
    {
LABEL_28:

      v13 = _swiftEmptyArrayStorage;
      v10 = v83;
      v54 = v66;
      goto LABEL_29;
    }
  }

  v65[1] = 0;
  v35 = v26 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
  v36 = (v11 + 48);
  v37 = *(v82 + 36);
  v77 = (v11 + 32);
  v85 = *(v92 + 72);
  v86 = v37;
  v75 = (v89 + 48);
  v69 = (v89 + 32);
  v68 = (v11 + 8);
  v84 = _swiftEmptyArrayStorage;
  v78 = (v11 + 48);
  v76 = v26;
  do
  {
    v92 = v34;
    sub_10000794C(v35, v24, &unk_1007818E0);
    v38 = v87;
    sub_10000794C(v24 + v86, v87, &unk_100771B10);
    v39 = v90;
    if ((*v36)(v38, 1, v90) == 1)
    {
      sub_1000079B4(v24, &unk_1007818E0);
      sub_1000079B4(v38, &unk_100771B10);
    }

    else
    {
      v40 = v24;
      v41 = *v77;
      v42 = v80;
      (*v77)(v80, v38, v39);
      v43 = v81;
      sub_10000794C(v40 + *(v82 + 40), v81, &qword_100772140);
      v44 = v83;
      if ((*v75)(v43, 1, v83) == 1)
      {
        (*v68)(v42, v39);
        sub_1000079B4(v40, &unk_1007818E0);
        sub_1000079B4(v43, &qword_100772140);
        v24 = v40;
        v36 = v78;
      }

      else
      {
        v45 = v43;
        v46 = *v69;
        v47 = v71;
        (*v69)(v71, v45, v44);
        v74 = *v40;
        sub_1000079B4(v40, &unk_1007818E0);
        v48 = v91;
        v49 = v70;
        v41(&v70[*(v91 + 36)], v42, v90);
        v46(&v49[*(v48 + 40)], v47, v44);
        *v49 = v74;
        sub_100016588(v49, v79, &qword_10076BC90);
        v50 = v84;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_1005482C8(0, v50[2] + 1, 1, v50);
        }

        v52 = v50[2];
        v51 = v50[3];
        if (v52 >= v51 >> 1)
        {
          v50 = sub_1005482C8(v51 > 1, v52 + 1, 1, v50);
        }

        v50[2] = v52 + 1;
        v53 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v84 = v50;
        sub_100016588(v79, v50 + v53 + *(v73 + 72) * v52, &qword_10076BC90);
        v24 = v72;
        v36 = v78;
      }
    }

    v35 += v85;
    v34 = v92 - 1;
  }

  while (v92 != 1);

  v10 = v83;
  v13 = v84;
  v54 = v66;
LABEL_29:
  v11 = v67;
  if ((v54 & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_31:
  v55 = *(v13 + 16);
  v93[0] = v13 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
  v93[1] = v55;
  sub_1003D6F6C(v93, &qword_10076BC90, &unk_10063D350, sub_1000ED8C8);
LABEL_32:
  v56 = *(v13 + 16);
  if (v56)
  {
    v93[0] = _swiftEmptyArrayStorage;
    sub_1004A1C48(0, v56, 0);
    v57 = v93[0];
    v58 = *(v73 + 80);
    v84 = v13;
    v59 = v13 + ((v58 + 32) & ~v58);
    v92 = *(v73 + 72);
    v60 = (v89 + 16);
    v90 = v89 + 32;
    do
    {
      v61 = v88;
      sub_10000794C(v59, v88, &qword_10076BC90);
      (*v60)(v11, v61 + *(v91 + 40), v10);
      sub_1000079B4(v61, &qword_10076BC90);
      v93[0] = v57;
      v63 = *(v57 + 16);
      v62 = *(v57 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1004A1C48(v62 > 1, v63 + 1, 1);
        v57 = v93[0];
      }

      *(v57 + 16) = v63 + 1;
      (*(v89 + 32))(v57 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v63, v11, v10);
      v59 += v92;
      --v56;
    }

    while (v56);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v57;
}