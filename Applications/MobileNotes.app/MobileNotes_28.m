void sub_1003C39C0()
{
  v1 = *(v0 + OBJC_IVAR___ICSystemPaperViewController_undoBarButtonItem);
  if (!v1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v2 = OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController;
  v3 = *(v0 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  if (v3)
  {
    v4 = v1;
    v5 = [v3 textView];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 undoManager];

      if (v7)
      {
        v8 = [v7 canUndo];

        v9 = v8;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v10 = v1;
  }

  v9 = 0;
LABEL_8:
  [v1 setEnabled:v9];

  v11 = *(v0 + OBJC_IVAR___ICSystemPaperViewController_redoBarButtonItem);
  if (!v11)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v12 = *(v0 + v2);
  v21 = *(v0 + OBJC_IVAR___ICSystemPaperViewController_redoBarButtonItem);
  if (v12)
  {
    v13 = v11;
    v14 = [v12 textView];
    if (v14 && (v15 = v14, v16 = [v14 undoManager], v15, v16))
    {
      v17 = [v16 canRedo];

      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v21;
  }

  else
  {
    v20 = v21;
    v19 = v21;
    v18 = 0;
  }

  [v19 setEnabled:v18];
}

void sub_1003C3B50(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR___ICSystemPaperViewController_launchImageView];
  if (v3)
  {
    v4 = OBJC_IVAR___ICSystemPaperViewController_launchPreview;
    swift_beginAccess();
    v5 = type metadata accessor for NotePreview();
    v6 = (*(*(v5 - 8) + 48))(&v1[v4], 1, v5);
    v7 = v3;
    v8 = 0;
    if (!v6)
    {
      v8 = NotePreview.chrome.getter();
    }

    swift_endAccess();
    [v7 setImage:v8];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003C3CAC(char a1)
{
  v2 = v1;
  v31.receiver = v2;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, "viewDidAppear:", a1 & 1);
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10002597C(v4, qword_1006C64F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "SPVC view did appear.", v7, 2u);
  }

  *(v2 + OBJC_IVAR___ICSystemPaperViewController_viewDidAppearAtLeastOnce) = 1;
  v8 = [v2 view];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 window];

  if (v10)
  {
    v11 = [objc_opt_self() sharedToolPickerForWindow:v10];
    if (v11)
    {
      v12 = v11;
      [v11 addObserver:v2];

      swift_unknownObjectWeakAssign();
      v10 = v12;
    }
  }

  sub_1003C41F8(1);
  if (*(v2 + OBJC_IVAR___ICSystemPaperViewController_shouldShowModernAccountAlert) == 1)
  {
    *(v2 + OBJC_IVAR___ICSystemPaperViewController_shouldShowModernAccountAlert) = 0;
    v13 = objc_opt_self();
    v14 = [v13 mainBundle];
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 localizedStringForKey:v15 value:0 table:0];

    if (!v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    ICInternalSettingsIsAppleAccountBrandingEnabled();
    v17 = [v13 mainBundle];
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 localizedStringForKey:v18 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = [v13 mainBundle];
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 localizedStringForKey:v21 value:0 table:0];

    if (!v22)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = String._bridgeToObjectiveC()();
    }

    v23 = String._bridgeToObjectiveC()();
    v24 = [objc_opt_self() _systemImageNamed:v23];

    v25 = objc_allocWithZone(OBWelcomeController);
    v26 = String._bridgeToObjectiveC()();

    v27 = [v25 initWithTitle:v16 detailText:v26 icon:v24 contentLayout:2];

    v28 = [objc_opt_self() boldButton];
    [v28 addTarget:v2 action:"openNotesSettings:" forControlEvents:64];
    [v28 setTitle:v22 forState:0];

    v29 = [v27 buttonTray];
    [v29 addButton:v28];

    [v27 setModalInPresentation:1];
    [v2 presentViewController:v27 animated:0 completion:0];
  }

  else
  {
    v30 = sub_100411240();
    if (!v30)
    {
      return;
    }

    v28 = v30;
    [v2 presentViewController:v30 animated:0 completion:0];
  }
}

void sub_1003C41F8(int a1)
{
  v2 = v1;
  LODWORD(v53) = a1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v57 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10002597C(v11, qword_1006C64F0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting UI state refresh.", v14, 2u);
  }

  v15 = [v2 view];
  if (!v15)
  {
    goto LABEL_14;
  }

  v59 = v15;
  v16 = [v15 window];
  if (!v16)
  {

LABEL_14:
    v59 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v59, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v59, v43, "View wasn't ready in refreshUIStateIfPossible.", v44, 2u);
    }

    goto LABEL_19;
  }

  v52 = v4;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Refreshing system paper UI...", v19, 2u);
  }

  v20 = *&v2[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
  if (v20)
  {
    v51 = v3;
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    v50 = v53 & 1;
    *(v21 + 24) = v53 & 1;
    *(v21 + 32) = v20;
    v22 = v20;
    v23 = v2;
    UUID.init()();
    v53 = UUID.uuidString.getter();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v26 = v22;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      aBlock[0] = v49;
      *v29 = 136315394;
      *(v29 + 4) = sub_100009D88(v53, v25, aBlock);
      *(v29 + 12) = 2080;
      v60 = v20;
      v30 = v26;
      sub_10015DA04(&unk_1006C6800);
      v31 = String.init<A>(describing:)();
      v33 = v23;
      v34 = sub_100009D88(v31, v32, aBlock);

      *(v29 + 14) = v34;
      v23 = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "[sCEVC:%s] setCurrentEditorViewController invoked to set: %s. About to enter serial dispatch queue.", v29, 0x16u);
      swift_arrayDestroy();
    }

    v49 = *&v23[OBJC_IVAR___ICSystemPaperViewController_editorViewControllerUpdateDispatchQueue];
    v35 = swift_allocObject();
    *(v35 + 16) = v53;
    *(v35 + 24) = v25;
    *(v35 + 32) = v20;
    *(v35 + 40) = v23;
    *(v35 + 48) = 0;
    *(v35 + 49) = v50;
    *(v35 + 56) = 0;
    *(v35 + 64) = sub_1003D33F8;
    v36 = ObjectType;
    *(v35 + 72) = v21;
    *(v35 + 80) = v36;
    aBlock[4] = sub_1003D35AC;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10028DCE8;
    aBlock[3] = &unk_10065BDA8;
    v37 = _Block_copy(aBlock);
    v38 = v26;
    v39 = v23;

    v40 = v55;
    static DispatchQoS.unspecified.getter();
    v60 = _swiftEmptyArrayStorage;
    sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
    sub_10015DA04(&unk_1006C3F20);
    sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
    v41 = v57;
    v42 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v37);

    (*(v52 + 8))(v41, v42);
    (*(v56 + 8))(v40, v58);

    return;
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Expected non-nil currentNoteEditorViewController", v47, 2u);
  }

LABEL_19:
  v48 = v59;
}

void sub_1003C4A78(char a1)
{
  ObjectType = swift_getObjectType();
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v7 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.receiver = v1;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "viewWillDisappear:", a1 & 1);
  v10 = OBJC_IVAR___ICSystemPaperViewController_emptyNoteIds;
  swift_beginAccess();
  v11 = *&v1[v10];
  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  v31 = sub_1000054A4(0, &qword_1006BE9E0);
  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  v34 = v1;
  v27 = v36;
  v28 = v11 & 0xC000000000000001;
  v26 = (v4 + 8);
  v25 = (v7 + 8);

  v13 = 0;
  v29 = v12;
  v30 = v11;
  do
  {
    if (v28)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    v16 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    v18 = v34;
    *(v17 + 16) = v34;
    *(v17 + 24) = v15;
    v36[2] = sub_1003D33F0;
    v36[3] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v36[0] = sub_10028DCE8;
    v36[1] = &unk_10065BD30;
    v19 = _Block_copy(aBlock);
    v20 = v18;
    v21 = v15;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
    sub_10015DA04(&unk_1006C3F20);
    sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
    v22 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*v26)(v6, v22);
    (*v25)(v9, v32);
    v11 = v30;
  }

  while (v29 != v13);

  v1 = v34;
LABEL_10:
  sub_1003C5178();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    [Strong removeObserver:v1];
  }
}

void sub_1003C4ECC(uint64_t a1, void *a2)
{
  v2 = sub_1003C4F48(a2);
  if (v2)
  {
    v3 = v2;
    if ([v2 isEmpty])
    {
      [v3 markForDeletion];
    }
  }
}

id sub_1003C4F48(void *a1)
{
  result = [*(v1 + OBJC_IVAR___ICSystemPaperViewController_noteCache) objectForKey:a1];
  if (!result)
  {
    v4 = [objc_opt_self() sharedContext];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 managedObjectContext];

      if (v6)
      {
        v15 = 0;
        v7 = swift_allocObject();
        v7[2] = v6;
        v7[3] = a1;
        v7[4] = &v15;
        v8 = swift_allocObject();
        *(v8 + 16) = sub_1003D31E8;
        *(v8 + 24) = v7;
        aBlock[4] = sub_10000EFBC;
        aBlock[5] = v8;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000EAF8;
        aBlock[3] = &unk_10065B808;
        v9 = _Block_copy(aBlock);
        v10 = v6;
        v11 = a1;

        [v10 performBlockAndWait:v9];

        _Block_release(v9);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          v13 = v15;

          return v13;
        }

        __break(1u);
      }
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1003C5178()
{
  v1 = v0;
  v2 = OBJC_IVAR___ICSystemPaperViewController_pageControlFadeOutTimer;
  v3 = *(v0 + OBJC_IVAR___ICSystemPaperViewController_pageControlFadeOutTimer);
  if (v3)
  {
    v4 = qword_1006BC880;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10002597C(v6, qword_1006C64F0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Invalidating pageControlFadeOutTimer...", v9, 2u);
    }

    [v5 invalidate];
    v10 = *(v1 + v2);
  }

  else
  {
    v10 = 0;
  }

  *(v1 + v2) = 0;
}

void sub_1003C52FC()
{
  v1 = OBJC_IVAR___ICSystemPaperViewController_pageViewController;
  v2 = *(v0 + OBJC_IVAR___ICSystemPaperViewController_pageViewController);
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v0 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  v22 = *(v0 + OBJC_IVAR___ICSystemPaperViewController_pageViewController);
  if (!v3)
  {
    v21 = v2;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    goto LABEL_8;
  }

  v4 = v2;
  v5 = [v3 isInkPickerShowing];
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (v5)
  {
    v10 = *(v0 + v1);
    if (v10)
    {
      v11 = [v10 view];
      if (v11)
      {
        v12 = v11;
        [v11 bounds];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;

        v9 = v20;
        v8 = v18;
        v7 = v16;
        v6 = v14;
        goto LABEL_8;
      }

LABEL_13:
      __break(1u);
      return;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_8:
  [v22 _setDisabledScrollingRegion:{v6, v7, v8, v9}];
}

void sub_1003C5420(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10002597C(v6, qword_1006C64F0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting asyncNoteIdentifiersWithFreshSnapshot...", v9, 2u);
  }

  v10 = sub_1003C0610(&OBJC_IVAR___ICSystemPaperViewController____lazy_storage___indexer, sub_1003C0674);
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = a2;
  v14[4] = sub_1003D3084;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10028DCE8;
  v14[3] = &unk_10065B330;
  v12 = _Block_copy(v14);
  v13 = v3;

  [v10 reloadData:v12];
  _Block_release(v12);
}

uint64_t sub_1003C55F4(uint64_t a1, void (*a2)(void *))
{
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10002597C(v3, qword_1006C64F0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "asyncNoteIdentifiersWithFreshSnapshot indexer reloadData finished.", v6, 2u);
  }

  v7 = sub_1003C0610(&OBJC_IVAR___ICSystemPaperViewController____lazy_storage___indexer, sub_1003C0674);
  v8 = [v7 newSnapshotFromIndex];

  v9 = [v8 itemIdentifiers];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_1003C57A0(v10);

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  a2(v12);
}

void *sub_1003C57A0(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10000A2A0(i, v5);
    sub_1000054A4(0, &qword_1006BFEC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_1003C58AC()
{
  v1 = v0;
  v2 = sub_1003C0610(&OBJC_IVAR___ICSystemPaperViewController____lazy_storage___indexer, sub_1003C0674);
  v3 = [v2 firstRelevantItemIdentifier];

  if (v3)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10002597C(v4, qword_1006C64F0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Performing initial note identifier fetch.", v7, 2u);
    }

    [*(v1 + OBJC_IVAR___ICSystemPaperViewController____lazy_storage___indexer) reloadDataAndWait];
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Finished initial note identifier fetch.", v10, 2u);
    }
  }

  v11 = [*(v1 + OBJC_IVAR___ICSystemPaperViewController____lazy_storage___indexer) newSnapshotFromIndex];
  v12 = [v11 itemIdentifiers];

  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = sub_1003C57A0(v13);

  if (!v14)
  {
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10002597C(v15, qword_1006C64F0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[sync] Didn't get NSManagedObjectIDs from the note indexer snapshot.", v18, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  return v14;
}

void sub_1003C5B8C(void *a1, void *a2, void **a3)
{
  v5 = [a1 ic_existingObjectWithID:a2];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = *a3;
      *a3 = v7;
      goto LABEL_10;
    }
  }

  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10002597C(v9, qword_1006C64F0);
  v10 = a2;
  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v10;
    *v13 = v10;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, oslog, v11, "Note with either didn't exist or was malformed {identifier: %@}", v12, 0xCu);
    sub_1000073B4(v13, &qword_1006C1440);
  }

  v8 = oslog;
LABEL_10:
}

void sub_1003C5D28()
{
  v1 = *&v0[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
  if (!v1 || (v2 = [v1 note]) == 0)
  {
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10002597C(v13, qword_1006C64F0);
    v37 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v37, v14, "Couldn't find a note to delete.", v15, 2u);
    }

    goto LABEL_13;
  }

  v37 = v2;
  v3 = swift_allocObject();
  v36 = v0;
  v4 = sub_1003C58AC();
  *(v3 + 16) = v4;

  v5 = [v37 objectID];
  v6 = sub_1004AEB44(v5, v4);
  v8 = v7;

  if (v8)
  {
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10002597C(v9, qword_1006C64F0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Couldn't find index of the note we're about to delete.", v12, 2u);
    }

LABEL_13:

    return;
  }

  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10002597C(v16, qword_1006C64F0);
  v17 = v37;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38 = v21;
    *v20 = 136315138;
    v22 = [v17 ic_loggingIdentifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_100009D88(v23, v25, &v38);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Deleting note %s", v20, 0xCu);
    sub_100009F60(v21);
  }

  sub_10015DA04(&qword_1006BE850);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100531E30;
  *(v27 + 56) = sub_1000054A4(0, &qword_1006C1420);
  *(v27 + 32) = v17;
  v28 = v17;
  v29 = [v36 view];
  v30 = [v29 window];

  v31 = objc_allocWithZone(ICDeleteDecisionController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v33 = [v31 initWithSourceObjects:isa window:v30];

  v34 = swift_allocObject();
  v34[2] = v3;
  v34[3] = v36;
  v34[4] = v6;
  sub_1000054A4(0, &qword_1006C6868);

  v35 = v36;
  ICDeleteDecisionControlling.performDecision(completion:)();
}

void sub_1003C6254(char a1, uint64_t isEscapingClosureAtFileLocation, char *a3, uint64_t a4)
{
  LOBYTE(v7) = a1;
  if (qword_1006BC880 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    sub_10002597C(v8, qword_1006C64F0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Entering completion handler.", v11, 2u);
    }

    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    v13 = os_log_type_enabled(oslog, v12);
    if ((v7 & 1) == 0)
    {
      break;
    }

    if (v13)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Finished note delete.", v14, 2u);
    }

    v49 = a4;

    v15 = sub_1003C58AC();
    swift_beginAccess();
    v48 = isEscapingClosureAtFileLocation;
    *(isEscapingClosureAtFileLocation + 16) = v15;

    osloga = v15;
    if (v15 >> 62)
    {
      isEscapingClosureAtFileLocation = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      isEscapingClosureAtFileLocation = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = OBJC_IVAR___ICSystemPaperViewController_noteCache;
    swift_bridgeObjectRetain_n();
    v50 = a3;
    if (!isEscapingClosureAtFileLocation)
    {
LABEL_30:

      swift_bridgeObjectRelease_n();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Adding note because we'd have no notes left to show.", v34, 2u);
      }

      sub_1003C6AA4(0);
      return;
    }

    v17 = 0;
    v7 = v15 & 0xC000000000000001;
    a4 = v15 & 0xFFFFFFFFFFFFFF8;
    v52 = v15 & 0xC000000000000001;
    v53 = v16;
    v51 = v15 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v7)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(a4 + 16))
        {
          goto LABEL_42;
        }

        v20 = osloga[v17 + 4].isa;
      }

      v21 = v20;
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v23 = [*&a3[v16] objectForKey:v20];
      if (v23)
      {
        v18 = v23;
      }

      else
      {
        v24 = isEscapingClosureAtFileLocation;
        a4 = a3;
        v25 = [objc_opt_self() sharedContext];
        if (!v25)
        {
          goto LABEL_48;
        }

        v26 = v25;
        v27 = [v25 managedObjectContext];

        if (!v27)
        {
          goto LABEL_48;
        }

        v62 = 0;
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = v21;
        v28[4] = &v62;
        v29 = swift_allocObject();
        *(v29 + 16) = sub_1003D362C;
        *(v29 + 24) = v28;
        v60 = sub_1001C71A8;
        v61 = v29;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_10000EAF8;
        v59 = &unk_10065BCE0;
        v7 = _Block_copy(&aBlock);
        a3 = v27;
        v30 = v21;

        [a3 performBlockAndWait:v7];

        _Block_release(v7);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_43;
        }

        v18 = v62;

        a3 = a4;
        isEscapingClosureAtFileLocation = v24;
        v7 = v52;
        v16 = v53;
        a4 = v51;
        if (!v18)
        {
          goto LABEL_13;
        }
      }

      v19 = [v18 isDeletedOrInTrash];

      if ((v19 & 1) == 0)
      {

        swift_bridgeObjectRelease_n();
        if (__OFSUB__(v49, 1))
        {
          __break(1u);
        }

        else
        {
          v7 = (v49 - 1) & ~((v49 - 1) >> 63);
          sub_1003C58AC();
          sub_1000054A4(0, &qword_1006BFEC0);
          Array.subscript.getter();

          v35 = aBlock;
          if (!aBlock || (v36 = v50, v37 = v35, v38 = sub_1003C4F48(v37), v36, v37, v37, !v38))
          {
            while (1)
            {
              aBlock = 0;
              v57 = 0xE000000000000000;
              _StringGuts.grow(_:)(31);

              aBlock = 0xD00000000000001DLL;
              v57 = 0x8000000100570980;
              v62 = v7;
              v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v47);

LABEL_48:
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }
          }

          v39 = v38;
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            *v42 = 138412546;
            *(v42 + 4) = v39;
            *v43 = v38;
            *(v42 + 12) = 2048;
            *(v42 + 14) = v7;
            v44 = v39;
            _os_log_impl(&_mh_execute_header, v40, v41, "Setting current note after delete: %@ at index: %ld", v42, 0x16u);
            sub_1000073B4(v43, &qword_1006C1440);
          }

          v19 = v39;
          sub_1003C6DC0(v38, 1, 1, 0, 0);

          swift_beginAccess();
          v45 = *(v48 + 16);
          if (!(v45 >> 62))
          {
            v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:
            sub_1003C7868(v7, v46, 1);

            return;
          }
        }

        v46 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_40;
      }

LABEL_13:
      ++v17;
      if (v22 == isEscapingClosureAtFileLocation)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  if (v13)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v12, "Cancelled note delete.", v31, 2u);
  }
}

void sub_1003C6AA4(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a1;
    if (!a1)
    {
      v6 = v2;
    }

    v7 = a1;
    v8 = [v5 showNewNoteWithApproach:18 sender:v6 animated:1];

    if (v8)
    {
      ObjectType = swift_getObjectType();
    }

    else
    {
      ObjectType = 0;
      v33[1] = 0;
      v33[2] = 0;
    }

    v33[0] = v8;
    v33[3] = ObjectType;
    v32[3] = sub_10015DA04(&qword_1006BE7A0);
    v32[0] = swift_allocObject();
    sub_100006038(v33, v32[0] + 16, &qword_1006BE7A0);
    v10 = sub_1001C912C(v32);
    sub_100009F60(v32);
    sub_1000073B4(v33, &qword_1006BE7A0);
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10002597C(v11, qword_1006C64F0);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33[0] = v16;
      *v15 = 136315138;
      v17 = [v12 ic_loggingIdentifier];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_100009D88(v18, v20, v33);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "Created new note {note: %s}", v15, 0xCu);
      sub_100009F60(v16);
    }

    v22 = v12;
    v23 = sub_1003C58AC();
    v24 = v23;
    if (v23 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v22;
    v27 = [v26 objectID];
    v28 = sub_1004AEB44(v27, v24);
    v30 = v29;

    if (v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = v28;
    }

    sub_1003C7868(v31, v25, 1);
  }
}

void sub_1003C6DC0(void *a1, int a2, uint64_t a3, char a4, int a5)
{
  v6 = v5;
  LODWORD(v7) = a5;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v12 - 8);
  v86 = v12;
  __chkstk_darwin(v12);
  v83 = &v74[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = type metadata accessor for DispatchQoS();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v74[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = type metadata accessor for UUID();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v74[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_10015DA04(&qword_1006C6860);
  __chkstk_darwin(v16 - 8);
  v88 = &v74[-v17];
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_10002597C(v18, qword_1006C64F0);
  v20 = a1;
  v87 = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v91 = v20;

  v23 = os_log_type_enabled(v21, v22);
  v90 = a1;
  if (v23)
  {
    v89 = a2;
    v76 = a3;
    v24 = v7;
    v25 = a4;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315650;
    if (a1)
    {
      v28 = [v91 loggingDescription];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v31 = 0xA300000000000000;
      v29 = 9732322;
    }

    v32 = sub_100009D88(v29, v31, aBlock);

    *(v26 + 4) = v32;
    *(v26 + 12) = 1024;
    a4 = v25;
    *(v26 + 14) = v25 & 1;
    *(v26 + 18) = 1024;
    LODWORD(v7) = v24;
    *(v26 + 20) = v24 & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "Setting note {note: %s} (setEditing: %{BOOL}d, showInkPicker: %{BOOL}d)", v26, 0x18u);
    sub_100009F60(v27);

    a3 = v76;
    a2 = v89;
  }

  else
  {
  }

  v33 = OBJC_IVAR___ICSystemPaperViewController_isSettingCurrentNote;
  *(v6 + OBJC_IVAR___ICSystemPaperViewController_isSettingCurrentNote) = 1;
  if (*(v6 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController))
  {
    goto LABEL_22;
  }

  type metadata accessor for NotePreviewProvider();
  v34 = static NotePreviewProvider.shared.getter();
  v75 = v7;
  v89 = a2;
  if (v90)
  {
    v35 = [v91 account];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 identifier];

      if (v37)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    v38 = a4;
    v39 = [v91 identifier];
    if (v39)
    {
      v40 = v39;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  else
  {
    v38 = a4;
  }

  NotePreviewProvider.preview(accountId:noteId:prefersDefaultFallback:)();
  a4 = v38;

  v41 = type metadata accessor for NotePreview();
  v42 = *(v41 - 8);
  v7 = v88;
  (*(v42 + 56))(v88, 0, 1, v41);
  v43 = OBJC_IVAR___ICSystemPaperViewController_launchPreview;
  swift_beginAccess();
  sub_1003D32A4(v7, v6 + v43);
  swift_endAccess();
  v44 = [v6 viewIfLoaded];
  LOBYTE(v7) = v75;
  LOBYTE(a2) = v89;
  if (!v44)
  {
LABEL_22:
    if (a2)
    {
      v49 = ICInternalSettingsIsPageViewControllerCrashWorkaroundDisabled() ^ 1;
      if (v90)
      {
LABEL_24:
        v50 = swift_allocObject();
        v51 = v91;
        *(v50 + 16) = v91;
        *(v50 + 24) = v6;
        *(v50 + 32) = a3;
        *(v50 + 40) = v49;
        *(v50 + 41) = v7 & 1;
        *(v50 + 42) = a4 & 1;
        v52 = v51;
        v53 = v6;
        sub_1003C5420(sub_1003D3314, v50);

LABEL_33:
        v33[v6] = 0;
        return;
      }
    }

    else
    {
      v49 = 0;
      if (v90)
      {
        goto LABEL_24;
      }
    }

    if (*(v6 + OBJC_IVAR___ICSystemPaperViewController_pageViewController))
    {
      v91 = v33;
      v54 = v77;
      UUID.init()();
      v55 = UUID.uuidString.getter();
      v57 = v56;
      (*(v78 + 8))(v54, v79);

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v60 = 136315394;
        *(v60 + 4) = sub_100009D88(v55, v57, aBlock);
        *(v60 + 12) = 2080;
        v92 = 0;
        sub_10015DA04(&unk_1006C6800);
        v61 = String.init<A>(describing:)();
        v63 = sub_100009D88(v61, v62, aBlock);

        *(v60 + 14) = v63;
        _os_log_impl(&_mh_execute_header, v58, v59, "[sCEVC:%s] setCurrentEditorViewController invoked to set: %s. About to enter serial dispatch queue.", v60, 0x16u);
        swift_arrayDestroy();
      }

      v64 = swift_allocObject();
      *(v64 + 16) = v55;
      *(v64 + 24) = v57;
      *(v64 + 32) = 0;
      *(v64 + 40) = v6;
      *(v64 + 48) = 0;
      *(v64 + 49) = v49;
      *(v64 + 56) = 0;
      *(v64 + 64) = 0;
      v65 = ObjectType;
      *(v64 + 72) = 0;
      *(v64 + 80) = v65;
      aBlock[4] = sub_1003D35AC;
      aBlock[5] = v64;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10028DCE8;
      aBlock[3] = &unk_10065BB28;
      v66 = _Block_copy(aBlock);
      v67 = v6;
      v68 = v81;
      static DispatchQoS.unspecified.getter();
      v92 = _swiftEmptyArrayStorage;
      sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
      sub_10015DA04(&unk_1006C3F20);
      sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
      v69 = v83;
      v70 = v86;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v66);
      (*(v85 + 8))(v69, v70);
      (*(v82 + 8))(v68, v84);

      v33 = v91;
    }

    else
    {
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "pageViewController wasn't available in setCurrentNote. Will pick it up later in refreshUIStateIfPossible.", v73, 2u);
      }
    }

    goto LABEL_33;
  }

  v45 = *(v6 + OBJC_IVAR___ICSystemPaperViewController_launchImageView);
  if (v45)
  {
    swift_beginAccess();
    v46 = (*(v42 + 48))(v6 + v43, 1, v41);
    v47 = v45;
    v48 = 0;
    if (!v46)
    {
      v48 = NotePreview.chrome.getter();
    }

    swift_endAccess();
    [v47 setImage:v48];

    goto LABEL_22;
  }

  __break(1u);
}

id sub_1003C7868(uint64_t a1, uint64_t a2, char a3)
{
  v5 = OBJC_IVAR___ICSystemPaperViewController_pageControl;
  result = *&v3[OBJC_IVAR___ICSystemPaperViewController_pageControl];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  [result setNumberOfPages:a2];
  result = *&v3[v5];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = [result currentPage];
  result = *&v3[v5];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = [result setCurrentPage:a1];
  if ((a3 & 1) == 0)
  {
    return result;
  }

  result = *&v3[v5];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  result = [result currentPage];
  if (result != v8)
  {
    v9 = 0.0;
    if ((v3[OBJC_IVAR___ICSystemPaperViewController_hasFinishedInitialViewRefresh] & 1) == 0)
    {
      [objc_opt_self() delayBeforePageControlFadesInInitially];
      v9 = v10;
    }

    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    v15[4] = sub_1003D3180;
    v15[5] = v12;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_10028DCE8;
    v15[3] = &unk_10065B538;
    v13 = _Block_copy(v15);
    v14 = v3;

    [v11 animateWithDuration:0 delay:v13 options:0 animations:0.25 completion:v9];
    _Block_release(v13);
    return sub_1003D0940();
  }

  return result;
}

uint64_t sub_1003C7B54(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v43 = a5;
  v44 = a6;
  v47 = a4;
  v48 = a3;
  v45 = a2;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v9 - 8);
  __chkstk_darwin(v9);
  v50 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v14 + 8))(v16, v13);
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10002597C(v20, qword_1006C64F0);
  v21 = a1;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v53 = v21;

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = v19;
    v25 = v24;
    v40 = swift_slowAlloc();
    v41 = v9;
    aBlock[0] = v40;
    *v25 = 136315394;
    *(v25 + 4) = sub_100009D88(v17, v42, aBlock);
    *(v25 + 12) = 2080;
    v54 = a1;
    v26 = v53;
    sub_10015DA04(&unk_1006C6800);
    v27 = String.init<A>(describing:)();
    v29 = sub_100009D88(v27, v28, aBlock);

    *(v25 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "[sCEVC:%s] setCurrentEditorViewController invoked to set: %s. About to enter serial dispatch queue.", v25, 0x16u);
    swift_arrayDestroy();
    v9 = v41;

    v19 = v42;
  }

  v30 = swift_allocObject();
  *(v30 + 16) = v17;
  *(v30 + 24) = v19;
  *(v30 + 32) = a1;
  *(v30 + 40) = v7;
  *(v30 + 48) = v47 & 1;
  *(v30 + 49) = v48 & 1;
  v31 = v44;
  v32 = v43;
  *(v30 + 56) = v45;
  *(v30 + 64) = v32;
  v33 = ObjectType;
  *(v30 + 72) = v31;
  *(v30 + 80) = v33;
  aBlock[4] = sub_1003D30FC;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_10065B3F8;
  v34 = _Block_copy(aBlock);
  v35 = v53;
  v36 = v7;
  sub_1001C71A4(v32);
  static DispatchQoS.unspecified.getter();
  v54 = _swiftEmptyArrayStorage;
  sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  v37 = v50;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);
  (*(v52 + 8))(v37, v9);
  (*(v49 + 8))(v12, v51);
}

uint64_t sub_1003C80C4(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, int a6, int a7)
{
  v26 = a6;
  v27 = a7;
  v25 = a5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = type metadata accessor for DispatchQoS();
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000054A4(0, &qword_1006BE9E0);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  v19 = v26;
  *(v18 + 48) = v25;
  *(v18 + 49) = v19;
  *(v18 + 50) = v27;
  aBlock[4] = sub_1003D332C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_10065BBA0;
  v20 = _Block_copy(aBlock);

  v21 = a2;
  v22 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v29 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v28);
}

void sub_1003C83F0(unint64_t a1, id a2, _BYTE *a3, uint64_t a4, char a5, char a6, char a7)
{
  v14 = [a2 objectID];
  v50 = v14;
  v49 = &v50;
  LOBYTE(a1) = sub_100478EC0(sub_1003D3344, v48, a1);

  if ((a1 & 1) == 0)
  {
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10002597C(v15, qword_1006C64F0);
    v16 = a2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v47 = a6;
      v19 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v50 = v46;
      *v19 = 136315138;
      v20 = [v16 ic_loggingDescription];
      v45 = v18;
      v21 = a7;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = a5;
      v24 = a4;
      v26 = v25;

      v27 = v22;
      a7 = v21;
      v28 = sub_100009D88(v27, v26, &v50);
      a4 = v24;
      a5 = v23;

      *(v19 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v17, v45, "Snapshot didn't contain new note {note: %s}", v19, 0xCu);
      sub_100009F60(v46);

      a6 = v47;
    }
  }

  if ([a2 isDeletedOrInTrash])
  {
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10002597C(v29, qword_1006C64F0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Note is deleted or in the trash. This shouldn't happen.", v32, 2u);
    }
  }

  sub_1003C885C(a2, 1);
  v34 = v33;
  v35 = OBJC_IVAR___ICSystemPaperViewController_didCreateInitialEditorController;
  [v33 setNeedsToPerformInitialPaperAnimations:(a3[OBJC_IVAR___ICSystemPaperViewController_didCreateInitialEditorController] & 1) == 0];
  v36 = a3[v35];
  a3[v35] = 1;
  if (*&a3[OBJC_IVAR___ICSystemPaperViewController_pageViewController])
  {
    v37 = v36 ^ 1;
    v38 = swift_allocObject();
    *(v38 + 16) = a6 & 1;
    *(v38 + 24) = a3;
    *(v38 + 32) = v34;
    *(v38 + 40) = a7 & 1;
    *(v38 + 41) = v37;
    v39 = v34;
    v40 = a3;
    sub_1003C7B54(v34, a4, a5 & 1, 0, sub_1003D33C8, v38);
  }

  else
  {
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10002597C(v41, qword_1006C64F0);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "pageViewController wasn't available in setCurrentNote. Will pick it up later in refreshUIStateIfPossible.", v44, 2u);
    }
  }
}

void sub_1003C885C(uint64_t a1, char a2)
{
  v3 = a1;
  if ((a2 & 1) == 0)
  {
    goto LABEL_14;
  }

  v5 = OBJC_IVAR___ICSystemPaperViewController_editorCachePool;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }
  }

  else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v7 = sub_1003CB53C();
  swift_endAccess();
  if (v7)
  {
    [v7 setNote:a1];
    sub_1003C0810(1);
    return;
  }

LABEL_7:
  v8 = *(v2 + v5);
  if (v8 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    v3 = a1;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = a1;
    if (!v9)
    {
LABEL_9:
      if (qword_1006BC880 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10002597C(v10, qword_1006C64F0);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Tried to use an editor from the pool, but the pool didn't have any editors available.", v13, 2u);
      }

      v3 = a1;
    }
  }

LABEL_14:
  sub_1003C0BFC(v3);
}

void sub_1003C8A3C(char a1, void *a2, void *a3, int a4, char a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = __chkstk_darwin(v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v36 = v16;
    v37 = v15;
    sub_1000054A4(0, &qword_1006BE9E0);
    v35 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    aBlock[4] = sub_1003D33DC;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10028DCE8;
    aBlock[3] = &unk_10065BC18;
    v34 = _Block_copy(aBlock);
    v20 = a2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    v21 = sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
    v38 = a4;
    v33 = v21;
    sub_10015DA04(&unk_1006C3F20);
    sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
    v22 = v38;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v34;
    v23 = v35;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v11 + 8))(v13, v10);
    (*(v36 + 8))(v18, v37);
    if ((v22 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [a3 createInkPickerControllerIfNecessary];
    if ((a4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v25 = [a3 textView];
  if (v25)
  {
    v26 = v25;
    v27 = [v26 textStorage];
    v28 = [v27 length];

    [v26 setSelectedRange:{v28, 0}];
    [a3 startEditing];
  }

LABEL_7:
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10002597C(v29, qword_1006C64F0);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Finished setting note.", v32, 2u);
  }

  if (a5)
  {
    sub_1003C8F4C(a3);
  }
}

void sub_1003C8EC0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  [v2 createInkPickerControllerIfNecessary];
  v1 = [v2 inkPaletteController];
  [v1 showInkPalette:1 animated:1];
}

void sub_1003C8F4C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___ICSystemPaperViewController_incomingLink;
  if (!*&v1[OBJC_IVAR___ICSystemPaperViewController_incomingLink] && !*(*&v1[OBJC_IVAR___ICSystemPaperViewController_incomingImageData] + 16))
  {
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10002597C(v28, qword_1006C64F0);
    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v25))
    {
      goto LABEL_27;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "No links or images to add";
    goto LABEL_26;
  }

  v5 = OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController;
  v6 = *&v1[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
  if (!v6 || (sub_1000054A4(0, &qword_1006C6420), v7 = a1, v8 = v6, v9 = static NSObject.== infix(_:_:)(), v7, v8, (v9 & 1) == 0))
  {
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10002597C(v10, qword_1006C64F0);
    v11 = a1;
    v12 = v2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412546;
      v17 = *&v2[v5];
      *(v15 + 4) = v17;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v11;
      *v16 = v17;
      v16[1] = v11;
      v18 = v11;
      v19 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "unexpected current note editor: %@, expected: %@", v15, 0x16u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();
    }
  }

  if (v2[OBJC_IVAR___ICSystemPaperViewController_viewDidAppearAtLeastOnce] == 1)
  {
    v20 = *&v2[v4];
    if (v20)
    {
      [a1 addSystemPaperLink:v20 updateFirstResponder:0];
      v21 = *&v2[v4];
      *&v2[v4] = 0;
    }

    v22 = OBJC_IVAR___ICSystemPaperViewController_incomingImageData;
    if (*(*&v2[OBJC_IVAR___ICSystemPaperViewController_incomingImageData] + 16))
    {

      isa = Array._bridgeToObjectiveC()().super.isa;

      [a1 addSystemPaperImageData:isa updateFirstResponder:0];

      *&v2[v22] = _swiftEmptyArrayStorage;
    }

    return;
  }

  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10002597C(v24, qword_1006C64F0);
  oslog = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "view hasn't appeared yet; deferring adding links or images until -viewDidAppear:";
LABEL_26:
    _os_log_impl(&_mh_execute_header, oslog, v25, v27, v26, 2u);
  }

LABEL_27:
}

void sub_1003C94BC(id a1, unint64_t a2, void *a3, void *a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v71 = a1;
  v16 = type metadata accessor for DispatchTime();
  v74 = *(v16 - 8);
  v75 = v16;
  v17 = __chkstk_darwin(v16);
  v72 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v73 = v66 - v19;
  v81 = type metadata accessor for DispatchWorkItemFlags();
  v83 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v76 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_10002597C(v22, qword_1006C64F0);

  v82 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  v26 = os_log_type_enabled(v24, v25);
  v77 = a8;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v70 = a3;
    v29 = a4;
    v30 = a6;
    v31 = a7;
    v32 = a5;
    v33 = v28;
    aBlock = v28;
    *v27 = 136315138;
    v34 = v71;
    *(v27 + 4) = sub_100009D88(v71, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v24, v25, "[sCEVC:%s] entered editorViewControllerUpdateDispatchQueue.", v27, 0xCu);
    sub_100009F60(v33);
    a5 = v32;
    a7 = v31;
    a6 = v30;
    a4 = v29;
    a3 = v70;
  }

  else
  {

    v34 = v71;
  }

  v70 = sub_1000054A4(0, &qword_1006BE9E0);
  v35 = static OS_dispatch_queue.main.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = a2;
  *(v36 + 32) = a3;
  *(v36 + 40) = a4;
  *(v36 + 48) = a5 & 1;
  *(v36 + 49) = a6 & 1;
  *(v36 + 56) = a7;
  v88 = sub_1003D3100;
  v89 = v36;
  aBlock = _NSConcreteStackBlock;
  v85 = 1107296256;
  v86 = sub_10028DCE8;
  v87 = &unk_10065B448;
  v37 = _Block_copy(&aBlock);
  v38 = a3;
  v71 = a4;

  v39 = v78;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  v40 = sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  v41 = sub_10015DA04(&unk_1006C3F20);
  v42 = sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  v43 = v80;
  v68 = v41;
  v66[1] = v42;
  v44 = v81;
  v69 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);

  v45 = *(v83 + 8);
  v83 += 8;
  v67 = v45;
  v45(v43, v44);
  v76 = *(v76 + 8);
  (v76)(v39, v79);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_100009D88(v34, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v46, v47, "[sCEVC:%s] waiting to get picked up in editorViewControllerUpdateDispatchQueue.", v48, 0xCu);
    sub_100009F60(v49);
  }

  v50 = v77;
  v51 = v72;
  static DispatchTime.now()();
  v52 = v73;
  + infix(_:_:)();
  v53 = v75;
  v54 = *(v74 + 8);
  v54(v51, v75);
  LOBYTE(v51) = OS_dispatch_semaphore.wait(timeout:)();
  v54(v52, v53);

  v55 = Logger.logObject.getter();
  if (v51)
  {
    v56 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v55, v56))
    {
      goto LABEL_14;
    }

    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_100009D88(v34, a2, &aBlock);
    v59 = "[sCEVC:%s] Timed out waiting for UIPVC callback.";
  }

  else
  {
    v56 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v55, v56))
    {
      goto LABEL_14;
    }

    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_100009D88(v34, a2, &aBlock);
    v59 = "[sCEVC:%s] Received UIPVC callback.";
  }

  _os_log_impl(&_mh_execute_header, v55, v56, v59, v57, 0xCu);
  sub_100009F60(v58);

LABEL_14:

  if (v50)
  {

    v60 = static OS_dispatch_queue.main.getter();
    v61 = swift_allocObject();
    v61[2] = v34;
    v61[3] = a2;
    v61[4] = v50;
    v61[5] = a9;
    v88 = sub_1003D3118;
    v89 = v61;
    aBlock = _NSConcreteStackBlock;
    v85 = 1107296256;
    v86 = sub_10028DCE8;
    v87 = &unk_10065B498;
    v62 = _Block_copy(&aBlock);

    sub_1001C71A4(v50);

    v63 = v78;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    v65 = v80;
    v64 = v81;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v62);

    sub_10000C840(v50);
    v67(v65, v64);
    (v76)(v63, v79);
  }
}

void sub_1003C9E1C(uint64_t a1, unint64_t a2, void *a3, char *a4, int a5, unsigned int a6, uint64_t a7)
{
  v58 = a7;
  v60 = a5;
  v63 = a1;
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10002597C(v11, qword_1006C64F0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v62 = v12;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100009D88(v63, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "[sCEVC:%s] entered MT.", v15, 0xCu);
    sub_100009F60(v16);
  }

  if (a3)
  {
    sub_10015DA04(&unk_1006BD390);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100534670;
    *(v17 + 32) = a3;
    v18 = *&a4[OBJC_IVAR___ICSystemPaperViewController_pageViewController];
    if (!v18)
    {
      __break(1u);
      goto LABEL_28;
    }

    v19 = a3;
    v20 = [v18 viewControllers];
    if (v20)
    {
      sub_1000054A4(0, &unk_1006C8180);
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = v19;
      __chkstk_darwin(v22);
      v56[2] = aBlock;
      LODWORD(v20) = sub_100478EC0(sub_1003D3154, v56, v21);
    }

    else
    {
    }

    v61 = (v20 ^ 1) & a6;
  }

  else
  {
    v61 = a6;
    LOBYTE(v20) = 0;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  v25 = os_log_type_enabled(v23, v24);
  v59 = a3;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v26 = 136315394;
    *(v26 + 4) = sub_100009D88(v63, a2, aBlock);
    *(v26 + 12) = 2080;
    sub_1000054A4(0, &unk_1006C8180);
    v27 = v20;
    v20 = a4;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_100009D88(v28, v30, aBlock);

    *(v26 + 14) = v31;
    a4 = v20;
    LOBYTE(v20) = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "[sCEVC:%s] viewControllers: %s", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v61;
  if (v34)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_100009D88(v63, a2, aBlock);
    *(v36 + 12) = 1024;
    *(v36 + 14) = v20 & 1;
    _os_log_impl(&_mh_execute_header, v32, v33, "[sCEVC:%s] alreadyPresent: %{BOOL}d", v36, 0x12u);
    sub_100009F60(v37);
  }

  if (v20 & 1) == 0 || (v60)
  {

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_100009D88(v63, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v42, v43, "[sCEVC:%s] Setting VCs...", v44, 0xCu);
      sub_100009F60(v45);
    }

    v46 = *&a4[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
    v47 = v59;
    *&a4[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController] = v59;
    v48 = v47;

    sub_1003CF424();
    sub_1003C39C0();
    sub_1003CA968();
    v49 = *&a4[OBJC_IVAR___ICSystemPaperViewController_launchImageView];
    if (v49)
    {
      [v49 setHidden:1];
      v50 = *&a4[OBJC_IVAR___ICSystemPaperViewController_pageViewController];
      if (v50)
      {
        sub_1000054A4(0, &unk_1006C8180);
        v51 = v50;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v53 = swift_allocObject();
        *(v53 + 16) = a4;
        aBlock[4] = sub_1003D3124;
        aBlock[5] = v53;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100417B5C;
        aBlock[3] = &unk_10065B4E8;
        v54 = _Block_copy(aBlock);
        v55 = a4;

        [v51 setViewControllers:isa direction:v58 animated:v35 & 1 completion:v54];
        _Block_release(v54);

        return;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_100009D88(v63, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v38, v39, "[sCEVC:%s] Signaling because already present.", v40, 0xCu);
    sub_100009F60(v41);
  }

  OS_dispatch_semaphore.signal()();
}

uint64_t sub_1003CA624(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10002597C(v6, qword_1006C64F0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100009D88(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "[sCEVC:%s] calling completion handler...", v9, 0xCu);
    sub_100009F60(v10);
  }

  return a3();
}

void sub_1003CA788(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1003D1F68();
  sub_1003C52FC();
  sub_1003C28E8();
  sub_1003C8F4C(a3);
  *(a1 + OBJC_IVAR___ICSystemPaperViewController_hasFinishedInitialViewRefresh) = 1;
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10002597C(v5, qword_1006C64F0);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Refresh finished.", v7, 2u);
  }
}

void sub_1003CA89C()
{
  Notification.object.getter();
  if (v4)
  {
    sub_1000054A4(0, &qword_1006C6420);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
      if (v1 && v2 == v1)
      {
        sub_1003CA968();
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1000073B4(v3, &qword_1006BE7A0);
  }
}

void sub_1003CA968()
{
  v1 = *&v0[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
  if (!v1)
  {
    return;
  }

  v41 = v1;
  v2 = [v41 textView];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 contentScrollViewForEdge:1];
    if (!v4 || (v5 = v4, v4, v5 != v3))
    {
      [v0 setContentScrollView:v3 forEdge:1];
    }

    v6 = [v41 paperLinkBarViewController];
    v7 = [v6 view];

    v8 = *&v0[OBJC_IVAR___ICSystemPaperViewController_systemPaperNavigationBar];
    v39 = v7;
    v40 = v8;
    if (v8)
    {
      v9 = [v8 interactions];
      sub_10015DA04(&unk_1006BFB00);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v10 >> 62)
      {
        goto LABEL_28;
      }

      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        while (1)
        {
          v12 = 0;
          while ((v10 & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v14 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_20:
              __break(1u);
              return;
            }

LABEL_14:
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v15 = [v13 view];
              if (v15)
              {
                v16 = v15;

                if (v16 == v3)
                {

                  goto LABEL_30;
                }
              }
            }

            swift_unknownObjectRelease();
            ++v12;
            if (v14 == v11)
            {
              goto LABEL_29;
            }
          }

          if (v12 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_28:
          v11 = _CocoaArrayWrapper.endIndex.getter();
          if (!v11)
          {
            goto LABEL_29;
          }
        }

        v13 = *(v10 + 8 * v12 + 32);
        swift_unknownObjectRetain();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }

LABEL_29:

      v13 = 0;
LABEL_30:
      v8 = v40;
      if (v7)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v13 = 0;
      if (v7)
      {
LABEL_31:
        v18 = [v7 interactions];
        sub_10015DA04(&unk_1006BFB00);
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v19 >> 62)
        {
          goto LABEL_48;
        }

        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          while (1)
          {
            v21 = 0;
            v22 = v19 & 0xC000000000000001;
            v23 = v19 & 0xFFFFFFFFFFFFFF8;
            v24 = &_s7SwiftUI4ViewPAAE5alert_11isPresented7actionsQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEtAaBRd__lFQOMQ_ptr;
            while (v22)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v25 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
LABEL_45:
                __break(1u);
LABEL_46:

                goto LABEL_50;
              }

LABEL_38:
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v26 = [v17 view];
                if (v26)
                {
                  v42 = v17;
                  v27 = v13;
                  v28 = v23;
                  v29 = v19;
                  v30 = v22;
                  v31 = v20;
                  v32 = v24;
                  v33 = v3;
                  v34 = v26;

                  v35 = v34 == v33;
                  v3 = v33;
                  v24 = v32;
                  v20 = v31;
                  v22 = v30;
                  v19 = v29;
                  v23 = v28;
                  v13 = v27;
                  v17 = v42;
                  if (v35)
                  {
                    goto LABEL_46;
                  }
                }
              }

              swift_unknownObjectRelease();
              ++v21;
              if (v25 == v20)
              {
                goto LABEL_49;
              }
            }

            if (v21 < *(v23 + 16))
            {
              break;
            }

            __break(1u);
LABEL_48:
            v20 = _CocoaArrayWrapper.endIndex.getter();
            if (!v20)
            {
              goto LABEL_49;
            }
          }

          v17 = *(v19 + 8 * v21 + 32);
          swift_unknownObjectRetain();
          v25 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_45;
          }

          goto LABEL_38;
        }

LABEL_49:

        v17 = 0;
LABEL_50:
        v7 = v39;
        v8 = v40;
LABEL_51:
        if ([v41 isPaperLinkBarShowing])
        {
          if (v8 && v13)
          {
            [v8 removeInteraction:v13];
          }

          if (v7 && !v17)
          {
            v36 = v7;
            goto LABEL_64;
          }
        }

        else if (v17)
        {
          [v7 removeInteraction:v17];
        }

        if (v13)
        {

          swift_unknownObjectRelease();
LABEL_65:

          swift_unknownObjectRelease();
          return;
        }

        if (!v8)
        {

          goto LABEL_65;
        }

        v36 = v8;
LABEL_64:
        v37 = v36;
        v38 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithScrollView:v3 edge:1 style:2];
        [v37 addInteraction:v38];

        swift_unknownObjectRelease();
        goto LABEL_65;
      }
    }

    v17 = 0;
    goto LABEL_51;
  }
}

void sub_1003CAEE0()
{
  v1 = *&v0[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
  if (v1)
  {
    v12 = v1;
    v2 = [v12 textView];
    if (v2)
    {
      v3 = v2;
      v4 = v0;
      Notification.object.getter();
      if (v14)
      {
        sub_1000054A4(0, &unk_1006C6850);
        if (swift_dynamicCast())
        {

          if (v17 == v3)
          {
            v5 = [v12 inkPaletteController];
            if (v5)
            {
              v6 = v5;
              v7 = [v3 isFirstResponder] ^ 1;
              [v6 setToolPickerVisible:v7];
              v8 = objc_opt_self();
              v9 = swift_allocObject();
              *(v9 + 16) = v4;
              *(v9 + 24) = v7;
              v15 = sub_1003D3220;
              v16 = v9;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_10028DCE8;
              v14 = &unk_10065BAD8;
              v10 = _Block_copy(aBlock);
              v11 = v4;

              [v8 animateWithDuration:0 delay:v10 options:0 animations:0.25 completion:0.0];
              _Block_release(v10);
            }

            else
            {
            }

            return;
          }
        }
      }

      else
      {
        sub_1000073B4(aBlock, &qword_1006BE7A0);
      }

      return;
    }
  }
}

uint64_t sub_1003CB154(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_1003CB244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100006038(a1, v25, &qword_1006BE7A0);
  if (!v26)
  {
    sub_1000073B4(v25, &qword_1006BE7A0);
    return;
  }

  sub_1000054A4(0, &qword_1006C6820);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v7 = [v24 fileType];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v11 != v12)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
LABEL_15:

        goto LABEL_16;
      }

      if (v9 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v11 != v15)
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_16:
        if (ICInternalSettingsIsTextKit2Enabled())
        {
          v17 = [a5 textLayoutManager];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 documentRange];
            v20 = [v19 location];

            v21 = [v18 locationFromLocation:v20 withOffset:a2];
            swift_unknownObjectRelease();
            if (v21)
            {
              v22 = [a5 textContainer];
              v23 = [v24 viewProviderForParentView:a5 location:v21 textContainer:v22];

              swift_unknownObjectRelease();
LABEL_22:

              goto LABEL_23;
            }
          }
        }

        v18 = [a5 layoutManager];
        v23 = [v24 viewProviderForParentView:a5 characterIndex:a2 layoutManager:v18];
        goto LABEL_22;
      }
    }

    goto LABEL_15;
  }

LABEL_23:
}

unint64_t sub_1003CB53C()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_1003D1CE8();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_1003BF08C(result);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_1003BF08C(result);
      }
    }

    __break(1u);
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1003CB5CC(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v51 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1003C58AC();
  v12 = [a1 note];
  if (!v12 || (v13 = v12, v14 = [v12 objectID], v13, !v14))
  {

    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10002597C(v23, qword_1006C64F0);
    v24 = a1;
    v14 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v24;
      *v27 = v24;
      v28 = v24;
      _os_log_impl(&_mh_execute_header, v14, v25, "Couldn't get current note identifier {editorViewController: %@}", v26, 0xCu);
      sub_1000073B4(v27, &qword_1006C1440);
    }

    goto LABEL_14;
  }

  v15 = sub_1004AEB44(v14, v11);
  if (v16)
  {

    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10002597C(v17, qword_1006C64F0);
    v18 = v14;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v19, v20))
    {

      return 0;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v14;
    v14 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "Couldn't get index of note identifier fetchedNoteIdentifiers {currentNoteIdentifier: %@}", v21, 0xCu);
    sub_1000073B4(v22, &qword_1006C1440);

    goto LABEL_8;
  }

  v30 = v15 + a2;
  if (__OFADD__(v15, a2))
  {
    __break(1u);
  }

  else
  {
    if (v30 < 0)
    {
LABEL_22:

      return 0;
    }

    v15 = sub_1003C58AC();
    if (!(v15 >> 62))
    {
      v31 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_20;
    }
  }

  v50 = v15;
  v31 = _CocoaArrayWrapper.endIndex.getter();
LABEL_20:

  if (__OFSUB__(v31, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v31 - 1 < v30)
  {
    goto LABEL_22;
  }

  sub_1003C58AC();
  sub_1000054A4(0, &qword_1006BFEC0);
  Array.subscript.getter();

  v32 = aBlock[0];
  if (!aBlock[0])
  {

    goto LABEL_29;
  }

  v50 = v30;
  v33 = v2;
  v34 = v32;
  v35 = sub_1003C4F48(v34);
  v49 = v33;

  if (!v35)
  {

    v30 = v50;
LABEL_29:
    if (qword_1006BC880 == -1)
    {
LABEL_30:
      v44 = type metadata accessor for Logger();
      sub_10002597C(v44, qword_1006C64F0);
      v19 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v19, v45))
      {
        goto LABEL_9;
      }

      v46 = swift_slowAlloc();
      *v46 = 134217984;
      *(v46 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v19, v45, "Couldn't fetch a note {index: %ld}", v46, 0xCu);
LABEL_8:

LABEL_9:

LABEL_14:
      return 0;
    }

LABEL_35:
    swift_once();
    goto LABEL_30;
  }

  sub_1000054A4(0, &qword_1006BE9E0);
  v48 = v35;
  v47 = static OS_dispatch_queue.main.getter();
  v36 = swift_allocObject();
  v36[2] = v50;
  v36[3] = a2;
  v37 = v49;
  v36[4] = v11;
  v36[5] = v37;
  aBlock[4] = sub_1003D31D4;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_10065B740;
  v38 = _Block_copy(aBlock);
  v50 = v37;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v39 = v47;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v38);

  (*(v52 + 8))(v7, v5);
  (*(v51 + 8))(v10, v8);
  v40 = v48;
  v41 = v48;
  sub_1003C885C(v40, 1);
  v43 = v42;

  return v43;
}

void sub_1003CBD58(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
  }

  else
  {
    if (v5 < 1)
    {
      return;
    }

    v4 = a4;
    if (!(a3 >> 62))
    {
      v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v7 = v6 - 1;
      if (!__OFSUB__(v6, 1))
      {
        goto LABEL_5;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      swift_once();
LABEL_10:
      v13 = type metadata accessor for Logger();
      sub_10002597C(v13, qword_1006C64F0);
      v12 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        *(v15 + 4) = v5;
        _os_log_impl(&_mh_execute_header, v12, v14, "Couldn't cache note for index: %ld", v15, 0xCu);
      }

      goto LABEL_12;
    }
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  v7 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
    goto LABEL_17;
  }

LABEL_5:
  if (v5 >= v7)
  {
    return;
  }

  sub_1003C58AC();
  sub_1000054A4(0, &qword_1006BFEC0);
  Array.subscript.getter();

  if (!v17 || (v8 = v4, v9 = v17, v10 = sub_1003C4F48(v9), v8, v9, v9, !v10))
  {
    if (qword_1006BC880 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v11 = *&v8[OBJC_IVAR___ICSystemPaperViewController_noteCache];
  v12 = [v10 objectID];
  [v11 setObject:v10 forKey:v12];

LABEL_12:
}

void sub_1003CC148()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10002597C(v2, qword_1006C64F0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "More Menu: Tapped share", v5, 2u);
    }

    v6 = OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController;
    v7 = *&v1[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
    if (v7 && (v8 = [v7 note]) != 0)
    {
      isa = v8;
      v10 = *&v1[v6];
      if (v10)
      {
        v11 = v10;
        if ([v11 isInkPickerShowing])
        {
          [v11 showInkPicker:0 animated:1];
        }

        v12 = [v11 inkPaletteController];
        if (v12)
        {
          v13 = v12;
          [v12 showInkPalette:0 animated:1];
        }

        y = CGRectNull.origin.y;
        width = CGRectNull.size.width;
        height = CGRectNull.size.height;
        v17 = *&v1[OBJC_IVAR___ICSystemPaperViewController_systemPaperNavigationBar];
        v18 = [v11 eventReporter];
        v19 = objc_allocWithZone(ICSendNoteActivity);
        v20 = isa;
        v21 = v1;
        v22 = [v19 initWithNote:v20 presentingViewController:v21 presentingBarButtonItem:0 presentingSourceView:v17 presentingSourceRect:v18 eventReporter:{CGRectNull.origin.x, y, width, height}];

        sub_10015DA04(&qword_1006C68B0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_100535E30;
        *(v23 + 32) = UIActivityTypeMarkupAsPDF;
        *(v23 + 40) = UIActivityTypeAssignToContact;
        type metadata accessor for ActivityType(0);
        v24 = UIActivityTypeMarkupAsPDF;
        v25 = UIActivityTypeAssignToContact;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v22 performActivityWithExcludedTypes:isa completion:0];
      }

      else
      {
        v22 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v22, v28, "Couldn't get currentNoteEditorViewController.", v29, 2u);
        }
      }
    }

    else
    {
      v22 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v22, v26, "Couldn't find a note to use for sharing.", v27, 2u);
      }

      isa = v1;
    }
  }
}

void sub_1003CC53C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10002597C(v2, qword_1006C64F0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "More Menu: Tapped delete", v5, 2u);
    }

    sub_1003C5D28();
  }
}

id sub_1003CC650(uint64_t (*a1)(void *))
{
  v31 = _swiftEmptyArrayStorage;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(_swiftEmptyArrayStorage);
  }

  v3 = Strong;
  v29 = &type metadata for PencilAndPaperFeature;
  v30 = sub_1001981E0();
  v27[0] = "ScreenshotsInQuickNote";
  v27[1] = 22;
  v28 = 2;
  v4 = isFeatureEnabled(_:)();
  sub_100009F60(v27);
  if (v4)
  {
    result = [objc_opt_self() sharedConnection];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = [result isScreenShotAllowed];

    if (v7)
    {
      sub_1000054A4(0, &unk_1006BD380);
      v8 = [objc_opt_self() mainBundle];
      v9 = String._bridgeToObjectiveC()();
      v10 = [v8 localizedStringForKey:v9 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = String._bridgeToObjectiveC()();
      v12 = [objc_opt_self() systemImageNamed:v11];

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v14 = *&v3[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
  if (v14)
  {
    v15 = [v14 note];
    if (v15)
    {
      v16 = v15;
      if (([v15 isEmpty] & 1) == 0)
      {
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1000054A4(0, &unk_1006BD380);
        v17 = [objc_opt_self() mainBundle];
        v18 = String._bridgeToObjectiveC()();
        v19 = [v17 localizedStringForKey:v18 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = String._bridgeToObjectiveC()();
        v21 = [objc_opt_self() systemImageNamed:v20];

        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }
    }
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000054A4(0, &unk_1006BD380);
  v22 = [objc_opt_self() mainBundle];
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 localizedStringForKey:v23 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = String._bridgeToObjectiveC()();
  v26 = [objc_opt_self() systemImageNamed:v25];

  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  a1(v31);
}

uint64_t sub_1003CCCB8(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v5[3] = sub_1000054A4(0, &unk_1006BD380);
    v5[0] = a1;
    v4 = a1;
    sub_1003CCD40();

    return sub_100009F60(v5);
  }

  return result;
}

void sub_1003CCD40()
{
  v25 = &type metadata for PencilAndPaperFeature;
  v26 = sub_1001981E0();
  v22 = "ScreenshotsInQuickNote";
  v23 = 22;
  LOBYTE(v24) = 2;
  v1 = isFeatureEnabled(_:)();
  sub_100009F60(&v22);
  if ((v1 & 1) == 0)
  {
    return;
  }

  v2 = [objc_opt_self() sharedConnection];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = [v2 isScreenShotAllowed];

  if (v4)
  {
    v5 = v0;
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10002597C(v6, qword_1006C64F0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Tapped screenshot button", v9, 2u);
    }

    v10 = *&v5[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
    if (v10)
    {
      v11 = v10;
      v12 = [v5 view];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 window];

        if (v14 && (v15 = [v14 windowScene], v14, v15))
        {
          v16 = sub_1003CD08C(v15);
          v17 = swift_allocObject();
          *(v17 + 16) = sub_100191AB4(_swiftEmptyArrayStorage);
          v18 = objc_opt_self();
          [v18 begin];
          sub_1003CD454(v16, (v17 + 16));

          [v18 commit];
          v19 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v20 = swift_allocObject();
          *(v20 + 16) = v17;
          *(v20 + 24) = v19;
          v26 = sub_1003D320C;
          v27 = v20;
          v22 = _NSConcreteStackBlock;
          v23 = 1107296256;
          v24 = sub_1003CDD7C;
          v25 = &unk_10065BA38;
          v21 = _Block_copy(&v22);

          sub_1001496F4(v15, v21);
          _Block_release(v21);
        }

        else
        {
        }

        return;
      }

LABEL_16:
      __break(1u);
    }
  }
}

void *sub_1003CD08C(void *a1)
{
  v2 = objc_opt_self();
  result = [v2 _applicationKeyWindow];
  if (!result)
  {
    goto LABEL_39;
  }

  v4 = result;
  v5 = [result windowScene];

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000054A4(0, &qword_1006C6848);
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();
  v31 = v6;

  result = _swiftEmptyArrayStorage;
  if ((v7 & 1) == 0)
  {
    return result;
  }

  result = [v2 allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
  if (!result)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_10035FA80(v9);

  v11 = String._bridgeToObjectiveC()();
  v12 = NSClassFromString(v11);

  if (v10 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    v32 = v10 & 0xC000000000000001;
    v15 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v32)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v15 + 16))
        {
          goto LABEL_32;
        }

        v16 = *(v10 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v19 = [v16 windowScene];
      if (v19 && (v20 = v19, v21 = v12, v22 = v10, v23 = v31, v24 = static NSObject.== infix(_:_:)(), v23, v10 = v22, v12 = v21, v20, (v24 & 1) != 0) || v12 && (ObjectType = swift_getObjectType(), ObjectType == swift_getObjCClassMetadata()))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v14;
      if (v18 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_21:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    v26 = _swiftEmptyArrayStorage[2];
    if (v26)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (!v26)
  {
LABEL_35:

    return _swiftEmptyArrayStorage;
  }

LABEL_24:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v26 < 0)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v27 = 0;
  do
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v28 = _swiftEmptyArrayStorage[v27 + 4];
    }

    v29 = v28;
    ++v27;
    v30 = [v28 layer];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v26 != v27);

  return _swiftEmptyArrayStorage;
}

void sub_1003CD454(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v28 = v3;
    v29 = v3 & 0xC000000000000001;
    v27 = v3 & 0xFFFFFFFFFFFFFF8;
    v6 = &selRef_handleToggleBlockQuote_;
    while (v29)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v3 = i;
      v10 = v8;
      v11 = v6;
      v12 = [v10 v6[434]];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *a2;
      v30 = *a2;
      v15 = a2;
      *a2 = 0x8000000000000000;
      v16 = sub_1002DFD08(v10);
      v18 = v14[2];
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        goto LABEL_23;
      }

      a2 = v17;
      if (v14[3] < v21)
      {
        sub_1002E4ED0(v21, isUniquelyReferenced_nonNull_native);
        v16 = sub_1002DFD08(v10);
        if ((a2 & 1) != (v22 & 1))
        {
          sub_1000054A4(0, &qword_1006C6840);
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

LABEL_17:
        v23 = v30;
        if (a2)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v26 = v16;
      sub_1002E99E0();
      v16 = v26;
      v23 = v30;
      if (a2)
      {
LABEL_4:
        *(v23[7] + 4 * v16) = v12;

        goto LABEL_5;
      }

LABEL_18:
      v23[(v16 >> 6) + 8] |= 1 << v16;
      *(v23[6] + 8 * v16) = v10;
      *(v23[7] + 4 * v16) = v12;
      v24 = v23[2];
      v20 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v20)
      {
        goto LABEL_24;
      }

      v23[2] = v25;
LABEL_5:
      a2 = v15;
      *v15 = v23;

      v6 = v11;
      [v10 setDisableUpdateMask:{objc_msgSend(v10, v11[434]) | 2}];

      ++v5;
      i = v3;
      v7 = v9 == v3;
      v3 = v28;
      if (v7)
      {
        return;
      }
    }

    if (v5 >= *(v27 + 16))
    {
      goto LABEL_25;
    }

    v8 = *(v3 + 8 * v5 + 32);
    v9 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

uint64_t sub_1003CD6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, &qword_1006BE9E0);
  v19 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a4;
  aBlock[4] = sub_1003D3214;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_10065BA88;
  v15 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = v19;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

void sub_1003CD9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  [v6 begin];
  swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      [*(*(v7 + 48) + 8 * (v14 | (v13 << 6))) setDisableUpdateMask:*(*(v7 + 56) + 4 * (v14 | (v13 << 6)))];
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_24:
      swift_once();
LABEL_15:
      v19 = type metadata accessor for Logger();
      sub_10002597C(v19, qword_1006C64F0);
      swift_errorRetain();
      v18.super.isa = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18.super.isa, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v30[0] = v22;
        *v21 = 136315138;
        v30[3] = a3;
        swift_errorRetain();
        sub_10015DA04(&qword_1006C6838);
        v23 = String.init<A>(describing:)();
        v25 = sub_100009D88(v23, v24, v30);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v18.super.isa, v20, "failed to capture screenshot from system paper: {error: %s}", v21, 0xCu);
        sub_100009F60(v22);
      }

      goto LABEL_17;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  [v6 commit];
  if (!a2)
  {
    if (qword_1006BC880 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong ic_isTextInputSourcePencil];
    v18.super.isa = Array._bridgeToObjectiveC()().super.isa;
    [v16 addSystemPaperImageData:v18.super.isa updateFirstResponder:0 forceAddToPaper:v17];

LABEL_17:
    return;
  }

  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10002597C(v26, qword_1006C64F0);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "editor destroyed while waiting for screenshot; ignoring image data", v29, 2u);
  }
}

uint64_t sub_1003CDD7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1003CDE2C()
{
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10002597C(v0, qword_1006C64F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Tapped done button", v3, 2u);
  }

  [objc_opt_self() logDismissEvent:SYSystemPaperDismissMethodDone];

  sub_1003C2034();
}

uint64_t sub_1003CDF54(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  a4(v8);

  return sub_100009F60(v8);
}

void sub_1003CE02C()
{
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10002597C(v0, qword_1006C64F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Going back to notes with keyboard", v3, 2u);
  }

  sub_1003CE118();
}

void sub_1003CE118()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() logDismissEvent:SYSystemPaperDismissMethodReturnToApp];
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 window];

  v60 = [v7 _windowHostingScene];
  v8 = OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController;
  v9 = *&v0[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
  if (v9 && (v10 = [v9 note]) != 0)
  {
    v11 = v10;
    v12 = [objc_opt_self() appURLForContainingFolderWithNoteFocused:v10];
    if (v12)
    {
      v13 = v12;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      if (v60)
      {
        v14 = [v60 _sceneIdentifier];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v2;
        v17 = v16;

        sub_10015DA04(&unk_1006C60C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100535E30;
        aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v19;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = v1;
        v20 = sub_100180240((inited + 72));
        v59 = v15;
        (*(v15 + 16))(v20, v4, v1);
        aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v21;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = &type metadata for String;
        *(inited + 144) = v58;
        *(inited + 152) = v17;
        sub_1001913C0(inited);
        swift_setDeallocating();
        sub_10015DA04(&unk_1006C60D0);
        swift_arrayDestroy();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v23 = [objc_opt_self() optionsWithDictionary:isa];

        v24 = SBSCreateOpenApplicationService();
        if (v24)
        {
          v25 = v24;
          v26 = *&v0[v8];
          if (v26)
          {
            [v26 doneEditing];
          }

          v27 = ICNotesAppBundleIdentifier();
          if (!v27)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = String._bridgeToObjectiveC()();
          }

          v65 = sub_1003CEB9C;
          v66 = 0;
          aBlock = _NSConcreteStackBlock;
          v62 = 1107296256;
          v63 = sub_10039F270;
          v64 = &unk_10065B998;
          v28 = _Block_copy(&aBlock);
          [v25 openApplication:v27 withOptions:v23 completion:v28];
          _Block_release(v28);
        }

        else
        {
          if (qword_1006BC880 != -1)
          {
            swift_once();
          }

          v53 = type metadata accessor for Logger();
          sub_10002597C(v53, qword_1006C64F0);
          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = 0;
            _os_log_impl(&_mh_execute_header, v54, v55, "Couldn't acquire SBSCreateOpenApplicationService endpoint.", v56, 2u);
          }

          else
          {
          }
        }

        (*(v59 + 8))(v4, v1);
      }

      else
      {
        if (qword_1006BC880 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_10002597C(v44, qword_1006C64F0);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = v2;
          v49 = swift_slowAlloc();
          aBlock = v49;
          *v47 = 136315138;
          v67 = 0;
          sub_10015DA04(&qword_1006C6828);
          v50 = String.init<A>(describing:)();
          v52 = sub_100009D88(v50, v51, &aBlock);

          *(v47 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v45, v46, "Couldn't extract scene identifier from scene {scene: %s}", v47, 0xCu);
          sub_100009F60(v49);

          (*(v48 + 8))(v4, v1);
        }

        else
        {

          (*(v2 + 8))(v4, v1);
        }
      }

      return;
    }

    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10002597C(v34, qword_1006C64F0);
    v35 = v11;
    v30 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136315138;
      v39 = [v35 ic_loggingIdentifier];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_100009D88(v40, v42, &aBlock);

      *(v37 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v30, v36, "Couldn't get URL for note {note: %s}", v37, 0xCu);
      sub_100009F60(v38);

      return;
    }
  }

  else
  {
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10002597C(v29, qword_1006C64F0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "No note was marked as currentNote.", v32, 2u);
    }
  }

  v33 = v60;
}

void sub_1003CEA98()
{
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10002597C(v0, qword_1006C64F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Tapped back to notes button", v3, 2u);
  }

  sub_1003CE118();
}

void sub_1003CEB9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10002597C(v2, qword_1006C64F0);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136315138;
      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = sub_100009D88(v7, v8, &v14);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Encountered error trying to jump back to Note {error: %s}", v5, 0xCu);
      sub_100009F60(v6);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10002597C(v10, qword_1006C64F0);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Successfully transitioned back to Notes.", v12, 2u);
    }
  }
}

void sub_1003CEE34()
{
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10002597C(v0, qword_1006C64F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Tapped add note button", v3, 2u);
  }

  sub_1003C6AA4(0);
}

void sub_1003CEF3C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    URL.init(stringLiteral:)();
    URL._bridgeToObjectiveC()(v6);
    v8 = v7;
    (*(v1 + 8))(v3, v0);
    sub_10018F334(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 openSensitiveURL:v8 withOptions:isa];

    sub_1003C2034();
  }

  else
  {
    __break(1u);
  }
}

void sub_1003CF0CC(void *a1)
{
  v2 = [a1 destinationViewController];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
  }

  v4 = OBJC_IVAR___ICSystemPaperViewController_pageViewController;
  v5 = *(v1 + OBJC_IVAR___ICSystemPaperViewController_pageViewController);
  *(v1 + OBJC_IVAR___ICSystemPaperViewController_pageViewController) = v3;
  v6 = v3;

  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v6 setDataSource:v1];

  v7 = *(v1 + v4);
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v7 setDelegate:v1];
  v8 = *(v1 + v4);
  if (!v8)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v8 ic_setAutoscrollEnabled:0];
}

double sub_1003CF29C()
{
  v1 = (v0 + OBJC_IVAR___ICSystemPaperViewController____lazy_storage___toolPickerBackgroundViewOffscreenBottomConstraintConstant);
  if ((*(v0 + OBJC_IVAR___ICSystemPaperViewController____lazy_storage___toolPickerBackgroundViewOffscreenBottomConstraintConstant + 8) & 1) == 0)
  {
    return *v1;
  }

  *v1 = 0x4064000000000000;
  v1[8] = 0;
  return 160.0;
}

void sub_1003CF2CC(char *a1)
{
  v2 = *&a1[OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundViewBottomConstraint];
  if (v2)
  {
    [v2 setConstant:?];
  }

  sub_1003CF424();
  sub_1003C39C0();
  sub_1003CA968();
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003CF360(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3 & 1) == 0 && (a1)
  {
    v4 = OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundView;
    v5 = *(a4 + OBJC_IVAR___ICSystemPaperViewController_toolPickerBackgroundView);
    if (v5)
    {
      v6 = a4;
      [v5 removeFromSuperview];
      a4 = v6;
      v5 = *(v6 + v4);
    }

    *(a4 + v4) = 0;
  }
}

uint64_t sub_1003CF3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_1003CF424()
{
  v0 = 1.0;
  if (_UISolariumEnabled())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong isVisible];

      if (v3)
      {
        v0 = 0.0;
      }

      else
      {
        v0 = 1.0;
      }
    }
  }

  v4 = sub_1003C0610(&OBJC_IVAR___ICSystemPaperViewController____lazy_storage___paletteButton, sub_1003C02A0);
  [v4 setAlpha:v0];
}

BOOL sub_1003CF548(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  if (!v3 || (v4 = [v3 note]) == 0)
  {
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10002597C(v16, qword_1006C64F0);
    v5 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v5, v17, "No current note, can't determine whether or not a swipe is possible.", v18, 2u);
    }

    goto LABEL_24;
  }

  v5 = v4;
  v6 = sub_1003C58AC();
  v7 = [v5 objectID];
  v8 = sub_1004AEB44(v7, v6);
  v10 = v9;

  if (v10)
  {
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10002597C(v11, qword_1006C64F0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_23;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Can't find index of current note to determine whether or not a swipe is possible.";
    goto LABEL_22;
  }

  if (a1 == 1)
  {

    return v8 > 0;
  }

  if (a1)
  {
    if (qword_1006BC880 == -1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v19 = sub_1003C58AC();
    if (v19 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!__OFSUB__(v20, 1))
    {
      return v8 < v20 - 1;
    }

    __break(1u);
  }

  swift_once();
LABEL_20:
  v22 = type metadata accessor for Logger();
  sub_10002597C(v22, qword_1006C64F0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Unsupported swipe direction.";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);
  }

LABEL_23:

LABEL_24:
  return 0;
}

void sub_1003CF8A0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  __chkstk_darwin(v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v2[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
  if (v16)
  {
    v89 = *&v2[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
    v86 = v11;
    v87 = v9;
    v84 = v13;
    v85 = a1;
    if (a1 == 1)
    {
      v23 = v89;
      v18 = v89;
      v19 = -1;
    }

    else if (a1)
    {
      v24 = qword_1006BC880;
      v25 = v16;
      if (v24 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10002597C(v26, qword_1006C64F0);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Unsupported swipe direction.", v29, 2u);
      }

      v19 = 0;
      v18 = v89;
    }

    else
    {
      v17 = v89;
      v18 = v89;
      v19 = 1;
    }

    v30 = sub_1003CB5CC(v18, v19);
    if (v30)
    {
      v31 = v30;
      v80 = v8;
      v82 = v4;
      if (qword_1006BC880 != -1)
      {
        swift_once();
      }

      v81 = v5;
      v32 = type metadata accessor for Logger();
      sub_10002597C(v32, qword_1006C64F0);
      v83 = v31;
      v33 = v31;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v79 = v7;
        v38 = v37;
        *v36 = 134218242;
        *(v36 + 4) = v19;
        *(v36 + 12) = 2112;
        *(v36 + 14) = v33;
        *v37 = v83;
        v39 = v33;
        _os_log_impl(&_mh_execute_header, v34, v35, "Synthesizing swipe with offset %ld to set new note editor view controller: %@", v36, 0x16u);
        sub_1000073B4(v38, &qword_1006C1440);
        v7 = v79;
      }

      v40 = v33;
      UUID.init()();
      v41 = UUID.uuidString.getter();
      v43 = v42;
      (*(v84 + 8))(v15, v12);
      v44 = v40;

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();

      LODWORD(v84) = v46;
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        aBlock[0] = v79;
        *v47 = 136315394;
        *(v47 + 4) = sub_100009D88(v41, v43, aBlock);
        *(v47 + 12) = 2080;
        v48 = v83;
        v90 = v83;
        v49 = v44;
        sub_10015DA04(&unk_1006C6800);
        v50 = String.init<A>(describing:)();
        v52 = v2;
        v53 = v41;
        v54 = v7;
        v55 = sub_100009D88(v50, v51, aBlock);

        *(v47 + 14) = v55;
        v7 = v54;
        v41 = v53;
        v2 = v52;
        _os_log_impl(&_mh_execute_header, v45, v84, "[sCEVC:%s] setCurrentEditorViewController invoked to set: %s. About to enter serial dispatch queue.", v47, 0x16u);
        swift_arrayDestroy();

        v56 = v85;
      }

      else
      {

        v56 = v85;
        v48 = v83;
      }

      v62 = swift_allocObject();
      *(v62 + 16) = v41;
      *(v62 + 24) = v43;
      *(v62 + 32) = v48;
      *(v62 + 40) = v2;
      *(v62 + 48) = 256;
      *(v62 + 56) = v56;
      *(v62 + 64) = 0;
      v63 = ObjectType;
      *(v62 + 72) = 0;
      *(v62 + 80) = v63;
      aBlock[4] = sub_1003D35AC;
      aBlock[5] = v62;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10028DCE8;
      aBlock[3] = &unk_10065B8D0;
      v64 = _Block_copy(aBlock);
      v65 = v44;
      v2;
      v66 = v86;
      static DispatchQoS.unspecified.getter();
      v90 = _swiftEmptyArrayStorage;
      sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
      sub_10015DA04(&unk_1006C3F20);
      sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
      v67 = v82;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v64);

      (*(v81 + 8))(v7, v67);
      (*(v87 + 8))(v66, v80);

      v68 = [v65 note];
      v69 = sub_1003C58AC();
      if (v69 >> 62)
      {
        v78 = v69;
        v70 = _CocoaArrayWrapper.endIndex.getter();
        v69 = v78;
        if (v68)
        {
LABEL_33:
          v71 = v69;
          v72 = v68;
          v73 = [v72 objectID];
          v74 = sub_1004AEB44(v73, v71);
          v76 = v75;

          if (v76)
          {
            v77 = 0;
          }

          else
          {
            v77 = v74;
          }

          goto LABEL_38;
        }
      }

      else
      {
        v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v68)
        {
          goto LABEL_33;
        }
      }

      v77 = 0;
LABEL_38:
      sub_1003C7868(v77, v70, 1);

      return;
    }

    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_10002597C(v57, qword_1006C64F0);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v58, v59, "Couldn't find a note editor view controller for offset %ld. Maybe we're at the end of the list?", v60, 0xCu);
    }
  }

  else
  {
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10002597C(v20, qword_1006C64F0);
    v89 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v89, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v89, v21, "No current note editor VC, can't synthesize swipe.", v22, 2u);
    }
  }

  v61 = v89;
}

uint64_t type metadata accessor for SystemPaperViewController()
{
  result = qword_1006C66B8;
  if (!qword_1006C66B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D059C()
{
  sub_1003D06D8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003D06D8()
{
  if (!qword_1006C66C8)
  {
    type metadata accessor for NotePreview();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C66C8);
    }
  }
}

uint64_t sub_1003D0940()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, &qword_1006BE9E0);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1003D3188;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_10065B588;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_1003D0C34(uint64_t a1)
{
  sub_1003C5178();
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = sub_1003D3190;
  v13[5] = v3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1002DEFE0;
  v13[3] = &unk_10065B5D8;
  v4 = _Block_copy(v13);

  v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:1.0];
  _Block_release(v4);
  v6 = OBJC_IVAR___ICSystemPaperViewController_pageControlFadeOutTimer;
  v7 = *(a1 + OBJC_IVAR___ICSystemPaperViewController_pageControlFadeOutTimer);
  *(a1 + OBJC_IVAR___ICSystemPaperViewController_pageControlFadeOutTimer) = v5;

  v8 = *(a1 + v6);
  if (v8)
  {
    [v8 setTolerance:0.1];
  }

  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10002597C(v9, qword_1006C64F0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "pageControlFadeOutTimer scheduled.", v12, 2u);
  }
}

uint64_t sub_1003D0E1C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v6 = *(v12 - 8);
  __chkstk_darwin(v12);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, &qword_1006BE9E0);
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1003D3198;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_10065B600;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v13 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v12);
}

void sub_1003D10FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1006BC880 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10002597C(v2, qword_1006C64F0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Finished pageControlFadeOutTimer. Fading out control...", v5, 2u);
    }

    sub_1003C5178();
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    aBlock[4] = sub_1003D31A0;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10028DCE8;
    aBlock[3] = &unk_10065B650;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v6 animateWithDuration:0 delay:v8 options:0 animations:0.75 completion:0.0];
    _Block_release(v8);
  }
}

uint64_t sub_1003D12DC(unint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10002597C(v10, qword_1006C64F0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Indexer did finish reloading data, then will refresh UI on MT.", v13, 2u);
  }

  v14 = *&a2[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
  if (v14 && (v15 = [v14 note]) != 0)
  {
    v16 = v15;
    v17 = [v15 objectID];
    v18 = sub_1004AEB44(v17, a1);
    v20 = v19;

    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v18;
    }
  }

  else
  {
    v21 = 0;
  }

  sub_1000054A4(0, &qword_1006BE9E0);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = v21;
  aBlock[4] = sub_1003D3090;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_10065B380;
  v24 = _Block_copy(aBlock);
  v25 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003D34EC(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v28 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v27);
}

void sub_1003D16F4(uint64_t a1, uint64_t a2)
{
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10002597C(v4, qword_1006C64F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting UI refresh for indexer didChangeContentWith:controller:", v7, 2u);
  }

  v8 = *(a1 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  if (!v8)
  {
    v46 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v46, v25, "Bailing out since we have a nil eVC.", v26, 2u);
    }

    goto LABEL_25;
  }

  v9 = v8;
  v10 = [v9 note];
  if (!v10)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Bailing out since we have a nil currentNote.", v29, 2u);
    }

    v30 = v9;
    goto LABEL_26;
  }

  v46 = v10;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v45 = a2;
    v14 = swift_slowAlloc();
    v47 = v14;
    *v13 = 136315138;
    v15 = [v46 ic_loggingIdentifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100009D88(v16, v18, &v47);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "About to set note again: %s", v13, 0xCu);
    sub_100009F60(v14);
    a2 = v45;
  }

  v20 = sub_1003C58AC();
  v21 = [v46 objectID];
  v22 = sub_1004AEB44(v21, v20);
  v24 = v23;

  if (v24)
  {

LABEL_24:

    goto LABEL_25;
  }

  if (v20 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = OBJC_IVAR___ICSystemPaperViewController_pageControl;
  v33 = *(a1 + OBJC_IVAR___ICSystemPaperViewController_pageControl);
  if (!v33)
  {
    __break(1u);
    goto LABEL_31;
  }

  [v33 setNumberOfPages:v31];
  v34 = *(a1 + v32);
  if (!v34)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v34 currentPage];
  v35 = *(a1 + v32);
  if (!v35)
  {
LABEL_32:
    __break(1u);
    return;
  }

  [v35 setCurrentPage:v22];
  if (v22 == a2)
  {
    goto LABEL_24;
  }

  v36 = [v9 textView];
  if (!v36)
  {
    goto LABEL_24;
  }

  v37 = v36;
  v38 = [v9 isEditing];
  v39 = [v37 selectedRange];
  v41 = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = v9;
  *(v42 + 24) = v38;
  *(v42 + 32) = v37;
  *(v42 + 40) = v39;
  *(v42 + 48) = v41;
  v43 = v9;
  v44 = v37;
  sub_1003C7B54(v8, 0, 0, 1, sub_1003D3098, v42);

LABEL_25:
  v30 = v46;
LABEL_26:
}

uint64_t sub_1003D1CE8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_10030FFBC(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D1DB0(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() storyboardWithName:v4 bundle:0];

  v6 = [v5 instantiateInitialViewController];
  if (v6)
  {
    v7 = sub_1000054A4(0, &unk_1006C8180);
  }

  else
  {
    v7 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v6;
  v14[3] = v7;
  v13[3] = sub_10015DA04(&qword_1006BE7A0);
  v13[0] = swift_allocObject();
  sub_100006038(v14, v13[0] + 16, &qword_1006BE7A0);
  v8 = v6;
  v9 = sub_1001C93AC(v13);
  sub_100009F60(v13);
  sub_1000073B4(v14, &qword_1006BE7A0);
  v10 = *(v9 + OBJC_IVAR___ICSystemPaperViewController_incomingLink);
  *(v9 + OBJC_IVAR___ICSystemPaperViewController_incomingLink) = a1;
  v11 = a1;

  *(v9 + OBJC_IVAR___ICSystemPaperViewController_incomingImageData) = a2;

  [*(v9 + OBJC_IVAR___ICSystemPaperViewController_noteCache) setCountLimit:{2, v13[0]}];

  return v9;
}

void sub_1003D1F68()
{
  v1 = *(v0 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  if (v1)
  {
    v2 = [v1 note];
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1003C58AC();
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_10:

    v12 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  v11 = v3;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  v3 = v11;
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_6:
  v5 = v3;
  v12 = v2;
  v6 = [v12 objectID];
  v7 = sub_1004AEB44(v6, v5);
  v9 = v8;

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

LABEL_11:
  sub_1003C7868(v10, v4, 1);
}

void sub_1003D2088()
{
  v1 = v0;
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10002597C(v2, qword_1006C64F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Tapped palette button", v5, 2u);
  }

  v6 = OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController;
  v7 = *(v1 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  if (v7)
  {
    v8 = [v7 isInkPickerShowing];
    v9 = *(v1 + v6);
    if (v9)
    {
      v10 = v8;
      v13 = v9;
      [v13 createInkPickerControllerIfNecessary];
      v11 = [v13 inkPaletteController];
      if (v11)
      {
        v12 = v11;
        [v11 showInkPalette:v10 ^ 1 animated:1];
      }
    }
  }
}

void *sub_1003D2208(void *a1)
{
  v16 = sub_1000054A4(0, &unk_1006C8180);
  v15[0] = a1;
  v2 = a1;
  v3 = sub_1001C98C4(v15);
  sub_100009F60(v15);
  v4 = sub_1003CB5CC(v3, -1);

  if (v4)
  {
    isEscapingClosureAtFileLocation = v4;
    v6 = [isEscapingClosureAtFileLocation textView];
    if (!v6)
    {
LABEL_5:

      return v4;
    }

    v7 = v6;
    v8 = [v6 textStorage];
    v9 = [v8 length];
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1003D3628;
    *(v11 + 24) = v10;
    v17 = sub_1003BEF64;
    v18 = v11;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_1004AEAA8;
    v16 = &unk_10065B880;
    v12 = _Block_copy(v15);
    v13 = v7;

    [v8 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v9 usingBlock:{0, v12}];

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  return v4;
}

void *sub_1003D243C(void *a1)
{
  v16 = sub_1000054A4(0, &unk_1006C8180);
  v15[0] = a1;
  v2 = a1;
  v3 = sub_1001C98C4(v15);
  sub_100009F60(v15);
  v4 = sub_1003CB5CC(v3, 1);

  if (v4)
  {
    isEscapingClosureAtFileLocation = v4;
    v6 = [isEscapingClosureAtFileLocation textView];
    if (!v6)
    {
LABEL_5:

      return v4;
    }

    v7 = v6;
    v8 = [v6 textStorage];
    v9 = [v8 length];
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1003D31CC;
    *(v11 + 24) = v10;
    v17 = sub_1001A1F54;
    v18 = v11;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_1004AEAA8;
    v16 = &unk_10065B6F0;
    v12 = _Block_copy(v15);
    v13 = v7;

    [v8 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v9 usingBlock:{0, v12}];

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  return v4;
}

void sub_1003D2670(unint64_t a1)
{
  v3 = v1;
  v5 = OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController;
  v6 = *(v1 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [v6 note];
  if (!v7)
  {
    goto LABEL_7;
  }

  v2 = v7;
  if (![v7 isEmpty])
  {
    goto LABEL_6;
  }

  v8 = [v2 objectID];
  v9 = OBJC_IVAR___ICSystemPaperViewController_emptyNoteIds;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
LABEL_6:

LABEL_7:
    if (a1 >> 62)
    {
      break;
    }

    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_9:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_12;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(a1 + 32);
LABEL_12:
      v11 = v10;
      *(&v30 + 1) = sub_1000054A4(0, &unk_1006C8180);
      *&v29 = v11;
      goto LABEL_15;
    }

    __break(1u);
LABEL_25:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_9;
  }

LABEL_14:
  v29 = 0u;
  v30 = 0u;
LABEL_15:
  v28[3] = sub_10015DA04(&qword_1006BE7A0);
  v28[0] = swift_allocObject();
  sub_100006038(&v29, v28[0] + 16, &qword_1006BE7A0);
  v12 = sub_1001C98C4(v28);
  sub_100009F60(v28);
  sub_1000073B4(&v29, &qword_1006BE7A0);
  v13 = [v12 note];
  v14 = sub_1003C58AC();
  if (v14 >> 62)
  {
    v23 = v14;
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v14 = v23;
    if (v13)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_21:

    v22 = 0;
    goto LABEL_22;
  }

LABEL_17:
  v16 = v14;
  v17 = v13;
  v18 = [v17 objectID];
  v19 = sub_1004AEB44(v18, v16);
  v21 = v20;

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

LABEL_22:
  sub_1003C7868(v22, v15, 1);

  v24 = *(v3 + v5);
  [v24 createInkPickerControllerIfNecessary];
  v25 = [v24 inkPaletteController];
  [v25 showInkPalette:0 animated:1];

  v26 = *(v3 + v5);
  *(v3 + v5) = v12;
  v27 = v12;

  sub_1003CF424();
  sub_1003C39C0();
  sub_1003CA968();
}

void sub_1003D29CC(char a1, unint64_t a2, char a3)
{
  v4 = v3;
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10002597C(v8, qword_1006C64F0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = a1 & 1;
    *(v11 + 8) = 1024;
    *(v11 + 10) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "pageViewController didFinishAnimating: %{BOOL}d, transitionCompleted: %{BOOL}d", v11, 0xEu);
  }

  if (a3)
  {
    goto LABEL_14;
  }

  if (a2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() != 1 || !_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_14;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_14;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v12 = *(a2 + 32);
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = *(v4 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
    *(v4 + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController) = v14;
    v16 = v13;

    sub_1003CF424();
    sub_1003C39C0();
    sub_1003CA968();
  }

LABEL_14:

  sub_1003C52FC();
}

uint64_t sub_1003D2BC4()
{
  sub_10015DA04(&unk_1006C67F0);
  v0 = CollectionDifference.removals.getter();
  v1 = CollectionDifference.insertions.getter();
  v2 = v1;
  if (*(v0 + 16) == 1 && *(v1 + 16) == 1)
  {
    sub_100006038(v0 + 32, &v12, &qword_1006C6818);

    sub_10015DA04(&qword_1006C6818);
    v3.super.isa = CollectionDifference.Change._bridgeToObjectiveC()().super.isa;
    sub_1000073B4(&v12, &qword_1006C6818);
    if (*(v2 + 16))
    {
      sub_100006038(v2 + 32, &v12, &qword_1006C6818);

      v4.super.isa = CollectionDifference.Change._bridgeToObjectiveC()().super.isa;
      sub_1000073B4(&v12, &qword_1006C6818);
      if ([(objc_class *)v3.super.isa object])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0u;
        v11 = 0u;
      }

      v12 = v10;
      v13 = v11;
      if (*(&v11 + 1))
      {
        sub_1000054A4(0, &qword_1006C1730);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_24:

          goto LABEL_7;
        }

        if ([(objc_class *)v4.super.isa object])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v10 = 0u;
          v11 = 0u;
        }

        v12 = v10;
        v13 = v11;
        if (*(&v11 + 1))
        {
          if (swift_dynamicCast())
          {
            v7 = [(objc_class *)v3.super.isa index];
            if (v7 == [(objc_class *)v4.super.isa index])
            {
              v8 = static NSObject.== infix(_:_:)();

              v5 = v8 ^ 1;
              return v5 & 1;
            }
          }

          else
          {
          }

          goto LABEL_24;
        }
      }

      sub_1000073B4(&v12, &qword_1006BE7A0);
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_7:
  v5 = 1;
  return v5 & 1;
}

void sub_1003D2E98()
{
  if (qword_1006BC880 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002597C(v1, qword_1006C64F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Indexer did change content notification triggered.", v4, 2u);
  }

  if (sub_1003D2BC4())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v6 = v0;
    sub_1003C5420(sub_1003D307C, v5);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Skipping resnapshotting because difference wasn't interesting.", v8, 2u);
    }
  }
}

id sub_1003D3098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  [v1 setEditing:v2];

  return [v3 setSelectedRange:{v4, v5}];
}

id sub_1003D31A8()
{
  result = *(*(v0 + 16) + OBJC_IVAR___ICSystemPaperViewController_pageControl);
  if (result)
  {
    return [result setAlpha:?];
  }

  __break(1u);
  return result;
}

void sub_1003D3220()
{
  v1 = *(v0 + 24);
  v2 = sub_1003C0610(&OBJC_IVAR___ICSystemPaperViewController____lazy_storage___paletteButton, sub_1003C02A0);
  v4 = v2;
  v3 = 0.0;
  if (v1)
  {
    v3 = 1.0;
  }

  [v2 setAlpha:v3];
}

uint64_t sub_1003D32A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C6860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D3408()
{

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1003D34EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003D365C()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static DeleteFoldersIntent.title);
  sub_10002597C(v6, static DeleteFoldersIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t DeleteFoldersIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC888 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static DeleteFoldersIntent.title);
}

uint64_t static DeleteFoldersIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC888 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static DeleteFoldersIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DeleteFoldersIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static DeleteFoldersIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C68B8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&unk_1006C68C0);
  __chkstk_darwin(v1);
  sub_10021B32C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206574656C6544;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C68D0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x737265646C6F6620;
  v3._object = 0xE800000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

void (*DeleteFoldersIntent.entities.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9E0;
}

uint64_t sub_1003D3E70()
{
  v0 = sub_10015DA04(&qword_1006C68B8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&unk_1006C68C0);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206574656C6544;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C68D0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x737265646C6F6620;
  v3._object = 0xE800000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1003D401C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A600;

  return DeleteFoldersIntent.perform()(a1, v5, v4);
}

uint64_t DeleteFoldersIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  v4 = type metadata accessor for FolderEntity();
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = type metadata accessor for MainActor();
  v3[45] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[46] = v6;
  v3[47] = v5;

  return _swift_task_switch(sub_1003D41C4, v6, v5);
}

uint64_t sub_1003D41C4()
{
  v0[34] = &type metadata for DeleteNotesIntent;
  sub_10015DA04(&qword_1006C68D8);
  String.init<A>(describing:)();
  v1 = objc_allocWithZone(ICNAEventReporter);
  v2 = String._bridgeToObjectiveC()();

  v0[48] = [v1 initWithSubTrackerName:v2];

  IntentParameter.wrappedValue.getter();
  v3 = v0[35];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v0[42];
    v26 = v0[41];
    v6 = specialized ContiguousArray.reserveCapacity(_:)();
    v9 = 0;
    v27 = v5;
    v10 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    do
    {
      if (v9 >= *(v3 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        return _swift_task_switch(v6, v7, v8);
      }

      sub_10028671C(v10 + *(v27 + 72) * v9, v0[43]);
      AppDependency.wrappedValue.getter();
      v11 = v0[36];
      URL._bridgeToObjectiveC()(*(v26 + 20));
      v13 = v12;
      v14 = [v11 managedObjectIDForURIRepresentation:v12];

      if (!v14)
      {
        goto LABEL_22;
      }

      v6 = [v11 managedObjectContextForObjectID:v14];
      if (!v6)
      {
        goto LABEL_23;
      }

      v15 = v6;
      ++v9;
      v16 = v0[43];
      v17 = [v6 objectWithID:v14];

      sub_100286780(v16);
      v0[37] = &OBJC_PROTOCOL___ICFolderObject;
      swift_dynamicCastObjCProtocolUnconditional();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = specialized ContiguousArray._endMutation()();
    }

    while (v4 != v9);

    v18 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v18 = _swiftEmptyArrayStorage;
  if (!(_swiftEmptyArrayStorage >> 62))
  {
LABEL_8:
    v19 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000054A4(0, &qword_1006C2D00);
    if (swift_dynamicCastMetatype() || (v23 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_9:
    }

    else
    {
      v24 = v19 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v24 += 8;
        if (!--v23)
        {
          goto LABEL_9;
        }
      }

      v18 = (v19 | 1);
    }

    goto LABEL_10;
  }

LABEL_14:
  sub_1000054A4(0, &qword_1006C2D00);

  v22 = _bridgeCocoaArray<A>(_:)();
  swift_bridgeObjectRelease_n();
  v18 = v22;
LABEL_10:
  v0[49] = v18;

  v0[50] = static MainActor.shared.getter();
  v20 = dispatch thunk of Actor.unownedExecutor.getter();
  v8 = v21;
  v0[51] = v20;
  v0[52] = v21;
  v6 = sub_1003D4594;
  v7 = v20;

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1003D4594()
{
  sub_10035F884(v0[49]);
  v1 = objc_allocWithZone(ICDeleteDecision);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithSourceObjects:isa options:1];
  v0[53] = v3;

  v4 = [v3 type];
  v5 = [v3 additionalStep];
  if (!v4)
  {
LABEL_7:

    v7 = sub_1003D6B34(v3, 0);
    v9 = v8;

    v0[54] = v7;
    v0[55] = v9;
    v0[56] = static MainActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    v0[57] = v10;
    v0[58] = v11;
    v13 = sub_1003D4888;
    v14 = v10;
LABEL_10:

    return _swift_task_switch(v13, v14, v12);
  }

  if (v4 != 1)
  {

    goto LABEL_9;
  }

  if (v5 <= 0xC && ((1 << v5) & 0x1B80) != 0)
  {
    goto LABEL_7;
  }

  v15 = [v3 guiltyObjects];
  sub_1000054A4(0, &qword_1006C2D00);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v0[49];

  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17 >= v19)
  {
LABEL_9:

    v14 = v0[46];
    v12 = v0[47];
    v13 = sub_1003D5538;
    goto LABEL_10;
  }

  v20 = swift_task_alloc();
  v0[64] = v20;
  *v20 = v0;
  v20[1] = sub_1003D4D30;
  v22 = v0[39];
  v21 = v0[40];

  return sub_1003D5608(v22, v21);
}

uint64_t sub_1003D4888()
{
  v1 = v0[48];
  v2 = objc_opt_self();
  v0[59] = v2;
  sub_10015DA04(&qword_1006C68E0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deleteHTMLFoldersIfNeeded:isa eventReporter:v1];

  v0[60] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[61] = v5;
  v0[62] = v4;

  return _swift_task_switch(sub_1003D4988, v5, v4);
}

uint64_t sub_1003D4988()
{
  v1 = v0[59];
  v2 = v0[48];
  sub_1000054A4(0, &qword_1006BF450);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[63] = isa;

  v0[2] = v0;
  v0[3] = sub_1003D4AE8;
  v4 = swift_continuation_init();
  v0[25] = sub_10015DA04(&unk_1006BFBB0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100252EB0;
  v0[21] = &unk_10065BE58;
  v0[22] = v4;
  [v1 deleteModernFoldersIfNeeded:isa eventReporter:v2 completion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003D4AE8()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);

  return _swift_task_switch(sub_1003D4BF0, v2, v1);
}

uint64_t sub_1003D4BF0()
{
  v1 = v0[63];

  v2 = v0[57];
  v3 = v0[58];

  return _swift_task_switch(sub_1003D4C5C, v2, v3);
}

uint64_t sub_1003D4C5C()
{

  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  return _swift_task_switch(sub_1003D4CC0, v1, v2);
}

uint64_t sub_1003D4CC0()
{

  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return _swift_task_switch(sub_1003D6FD8, v1, v2);
}

uint64_t sub_1003D4D30()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {

    v3 = *(v2 + 408);
    v4 = *(v2 + 416);
    v5 = sub_1003D5458;
  }

  else
  {
    v3 = *(v2 + 408);
    v4 = *(v2 + 416);
    v5 = sub_1003D4E4C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1003D4E4C()
{
  v1 = sub_1003D6B34(*(v0 + 424), 1);
  v3 = v2;

  *(v0 + 528) = v1;
  *(v0 + 536) = v3;
  *(v0 + 544) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 552) = v5;
  *(v0 + 560) = v4;

  return _swift_task_switch(sub_1003D4F1C, v5, v4);
}

uint64_t sub_1003D4F1C()
{
  v1 = v0[48];
  v2 = objc_opt_self();
  v0[71] = v2;
  sub_10015DA04(&qword_1006C68E0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deleteHTMLFoldersIfNeeded:isa eventReporter:v1];

  v0[72] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[73] = v5;
  v0[74] = v4;

  return _swift_task_switch(sub_1003D5020, v5, v4);
}

uint64_t sub_1003D5020()
{
  v1 = v0[71];
  v2 = v0[48];
  sub_1000054A4(0, &qword_1006BF450);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[75] = isa;

  v0[10] = v0;
  v0[11] = sub_1003D5180;
  v4 = swift_continuation_init();
  v0[33] = sub_10015DA04(&unk_1006BFBB0);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_100252EB0;
  v0[29] = &unk_10065BE80;
  v0[30] = v4;
  [v1 deleteModernFoldersIfNeeded:isa eventReporter:v2 completion:v0 + 26];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1003D5180()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 584);

  return _swift_task_switch(sub_1003D5288, v2, v1);
}

uint64_t sub_1003D5288()
{
  v1 = v0[75];

  v2 = v0[70];
  v3 = v0[69];

  return _swift_task_switch(sub_1003D52F8, v3, v2);
}

uint64_t sub_1003D52F8()
{

  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  return _swift_task_switch(sub_1003D535C, v1, v2);
}

uint64_t sub_1003D535C()
{

  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return _swift_task_switch(sub_1003D53CC, v1, v2);
}

uint64_t sub_1003D53CC()
{
  v1 = *(v0 + 384);

  static IntentResult.result<>()();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003D5458()
{
  v1 = v0[53];

  v2 = v0[46];
  v3 = v0[47];

  return _swift_task_switch(sub_1003D54C4, v2, v3);
}

uint64_t sub_1003D54C4()
{
  v1 = *(v0 + 384);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003D5538()
{
  v1 = *(v0 + 384);

  sub_100197CCC();
  swift_allocError();
  *v2 = 12;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003D55E0@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes19DeleteFoldersIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1003D5608(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for ConfirmationActionName();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[12] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[13] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for IntentDialog();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_10015DA04(&qword_1006C6920);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[22] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[23] = v8;
  v2[24] = v7;

  return _swift_task_switch(sub_1003D58AC, v8, v7);
}

uint64_t sub_1003D58AC()
{
  v1 = *(v0 + 144);
  v15 = *(v0 + 128);
  v14 = *(v0 + 136);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 32);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v5 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v6 = *(v3 + 104);
  v6(v2, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v6(v2, v5, v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  IntentDialog.init(full:supporting:)();
  static IntentResult.result<>(dialog:)();
  (*(v14 + 8))(v1, v15);
  static ConfirmationActionName.continue.getter();
  v7 = swift_task_alloc();
  *(v0 + 200) = v7;
  v8 = sub_10021B32C();
  v9 = sub_1000060B4(&qword_1006C7E10, &qword_1006C6920);
  *v7 = v0;
  v7[1] = sub_1003D5B24;
  v10 = *(v0 + 168);
  v11 = *(v0 + 152);
  v12 = *(v0 + 64);

  return AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)(v10, v12, 1, &type metadata for DeleteFoldersIntent, v11, v8, v9);
}

uint64_t sub_1003D5B24()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 48);
  *(*v1 + 208) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v9 = *(v2 + 184);
  v10 = *(v2 + 192);
  if (v0)
  {
    v11 = sub_1003D5DD4;
  }

  else
  {
    v11 = sub_1003D5D04;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1003D5D04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003D5DD4()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1003D5EA4(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_25:
    v20 = a1;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v20;
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v24 = a1 + 32;
  v7 = a2 + 56;
  v22 = v3;
  v23 = v4;
  v21 = a1 & 0xC000000000000001;
  while (1)
  {
    while (1)
    {
      if (v5 == v4)
      {
        return 0;
      }

      if (v6)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v3 + 16))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v11 = *(v24 + 8 * v5);
      }

      v12 = v11;
      if ((a2 & 0xC000000000000001) == 0)
      {
        break;
      }

      v8 = v11;
      v9 = __CocoaSet.contains(_:)();

      if (v9)
      {
        return v5;
      }

      v10 = __OFADD__(v5++, 1);
      if (v10)
      {
        goto LABEL_24;
      }
    }

    if (*(a2 + 16))
    {
      sub_1000054A4(0, &qword_1006C2D00);
      v13 = NSObject._rawHashValue(seed:)(*(a2 + 40));
      v14 = -1 << *(a2 + 32);
      v15 = v13 & ~v14;
      if ((*(v7 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        break;
      }
    }

LABEL_16:

    v3 = v22;
    v4 = v23;
    v6 = v21;
    v10 = __OFADD__(v5++, 1);
    if (v10)
    {
      goto LABEL_24;
    }
  }

  v16 = ~v14;
  while (1)
  {
    v17 = *(*(a2 + 48) + 8 * v15);
    v18 = static NSObject.== infix(_:_:)();

    if (v18)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v7 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  return v5;
}

uint64_t _s11MobileNotes19DeleteFoldersIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v26 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v23 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v24 = v23 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23[1] = sub_10015DA04(&qword_1006BCDA8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v24;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v32 = 0;
  v19 = type metadata accessor for IntentDialog();
  v20 = *(*(v19 - 8) + 56);
  v20(v25, 1, 1, v19);
  v20(v26, 1, 1, v19);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_1003D69CC();
  v21 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10015DA04(&qword_1006C34B0);
  v30 = 0xD000000000000021;
  v31 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v21;
}

unint64_t sub_1003D65F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t))
{
  v5 = a2;
  v7 = *a1;
  result = sub_1003D5EA4(*a1, a2);
  v10 = result;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = a3;
  v36 = a1;
  v11 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v12 = v5 & 0xC000000000000001;
  v37 = v5 & 0xC000000000000001;
  v39 = v5 + 56;
  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    v16 = v7 & 0xC000000000000001;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (v12)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

    v17 = *(v7 + 8 * v11 + 32);
    if (v12)
    {
LABEL_16:
      v18 = v17;
      v19 = __CocoaSet.contains(_:)();

      if ((v19 & 1) == 0)
      {
        if (v10 != v11)
        {
LABEL_28:
          if (v16)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_53;
            }

            v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v10 >= v29)
            {
              goto LABEL_54;
            }

            if (v11 >= v29)
            {
              goto LABEL_55;
            }

            v30 = *(v7 + 32 + 8 * v11);
            v27 = *(v7 + 32 + 8 * v10);
            v28 = v30;
          }

          v31 = v28;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
          {
            v7 = v35(v7);
            v32 = (v7 >> 62) & 1;
          }

          else
          {
            LODWORD(v32) = 0;
          }

          v33 = v7 & 0xFFFFFFFFFFFFFF8;
          v34 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
          *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v31;

          if ((v7 & 0x8000000000000000) != 0 || v32)
          {
            v7 = v35(v7);
            v33 = v7 & 0xFFFFFFFFFFFFFF8;
            if ((v11 & 0x8000000000000000) != 0)
            {
LABEL_46:
              __break(1u);
              return v10;
            }
          }

          else if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          if (v11 >= *(v33 + 16))
          {
            goto LABEL_52;
          }

          v13 = v33 + 8 * v11;
          v14 = *(v13 + 32);
          *(v13 + 32) = v27;

          *v36 = v7;
        }

LABEL_8:
        v15 = __OFADD__(v10++, 1);
        if (v15)
        {
          goto LABEL_51;
        }

        goto LABEL_9;
      }

      goto LABEL_9;
    }

LABEL_22:
    v38 = v10;
    if (!*(v5 + 16) || (sub_1000054A4(0, &qword_1006C2D00), v20 = NSObject._rawHashValue(seed:)(*(v5 + 40)), v21 = -1 << *(v5 + 32), v22 = v20 & ~v21, ((*(v39 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0))
    {
LABEL_27:

      v16 = v7 & 0xC000000000000001;
      v10 = v38;
      v12 = v37;
      if (v38 != v11)
      {
        goto LABEL_28;
      }

      goto LABEL_8;
    }

    v23 = ~v21;
    while (1)
    {
      v24 = v5;
      v25 = *(*(v5 + 48) + 8 * v22);
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {
        break;
      }

      v22 = (v22 + 1) & v23;
      v5 = v24;
      if (((*(v39 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v5 = v24;
    v10 = v38;
    v12 = v37;
LABEL_9:
    v15 = __OFADD__(v11++, 1);
    if (v15)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
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
  return _CocoaArrayWrapper.endIndex.getter();
}

unint64_t sub_1003D6974()
{
  result = qword_1006C68E8;
  if (!qword_1006C68E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C68E8);
  }

  return result;
}

unint64_t sub_1003D69CC()
{
  result = qword_1006C45A0;
  if (!qword_1006C45A0)
  {
    type metadata accessor for FolderEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C45A0);
  }

  return result;
}

unint64_t sub_1003D6A2C()
{
  result = qword_1006C68F8;
  if (!qword_1006C68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C68F8);
  }

  return result;
}

unint64_t sub_1003D6A84()
{
  result = qword_1006C6900;
  if (!qword_1006C6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6900);
  }

  return result;
}

void *sub_1003D6B34(void *a1, char a2)
{
  v4 = [a1 modernSourceObjects];
  sub_1000054A4(0, &qword_1006C1B60);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = v5;
  v6 = [a1 htmlSourceObjects];
  sub_1000054A4(0, &qword_1006C2D00);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = v7;
  if ((a2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = [a1 guiltyObjects];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_100270664(v9);

  v11 = sub_1003D65F8(&v28, v10, sub_10030FFBC);

  if (!(v28 >> 62))
  {
    v12 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 >= v11)
    {
      goto LABEL_4;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    result = _CocoaArrayWrapper.endIndex.getter();
    v14 = result;
    if (result >= v11)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (v12 < v11)
  {
    goto LABEL_47;
  }

LABEL_4:
  sub_10030F6B0(v11, v12);

  v11 = sub_1003D65F8(&v27, v10, sub_10030FFBC);

  if (v27 >> 62)
  {
    goto LABEL_48;
  }

  v14 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14 >= v11)
  {
LABEL_6:
    sub_10030F6D8(v11, v14);

    v5 = v28;
LABEL_7:
    v15 = (v5 & 0xFFFFFFFFFFFFFF8);
    if (v5 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (i)
      {
        v17 = 0;
        do
        {
          v18 = v17;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v18 >= v15[2])
              {
                goto LABEL_40;
              }

              v19 = *(v5 + 8 * v18 + 32);
            }

            v20 = v19;
            v17 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v18;
            if (v17 == i)
            {
              goto LABEL_23;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        while (v17 != i);
      }

LABEL_23:
      v21 = v27;
      v22 = v27 & 0xFFFFFFFFFFFFFF8;
      if (v27 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
        if (!v23)
        {
LABEL_45:

          return _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v23 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v23)
        {
          goto LABEL_45;
        }
      }

      v24 = 0;
LABEL_26:
      v25 = v24;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *(v22 + 16))
          {
            goto LABEL_42;
          }

          v26 = *(v21 + 8 * v25 + 32);
        }

        v15 = v26;
        v24 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (swift_dynamicCastObjCProtocolConditional())
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v24 != v23)
          {
            goto LABEL_26;
          }

          goto LABEL_45;
        }

        ++v25;
        if (v24 == v23)
        {
          goto LABEL_45;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1003D6FF0()
{
  sub_10015DA04(&qword_1006C6A10);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_1006C6928 = result;
  return result;
}

uint64_t sub_1003D704C()
{

  v1 = OBJC_IVAR____TtC11MobileNotes35ProvisionalBackgroundTaskController_timeoutInterval;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProvisionalBackgroundTaskController()
{
  result = qword_1006C6960;
  if (!qword_1006C6960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D714C()
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t sub_1003D7200(uint64_t a1, unint64_t a2)
{
  v32 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Duration.zero.getter();
  if ((static Duration.< infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (static Duration.< infix(_:_:)())
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v31 = v5;
  v12 = Duration.components.getter();
  v13 = 1000000000 * v12;
  if ((v12 * 1000000000) >> 64 != (1000000000 * v12) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  Duration.components.getter();
  if (__OFADD__(v13, v14 / 1000000000))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = v4;
  *v11 = v13 + v14 / 1000000000;
  (*(v9 + 104))(v11, enum case for DispatchTimeInterval.nanoseconds(_:), v8);
  v15 = OBJC_IVAR____TtC11MobileNotes35ProvisionalBackgroundTaskController_timeoutInterval;
  swift_beginAccess();
  (*(v9 + 40))(v2 + v15, v11, v8);
  swift_endAccess();
  if (*(v2 + 32) != 1)
  {
    return sub_1003D76E0();
  }

  v16 = [objc_opt_self() sharedApplication];
  v17 = v32;
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = a2;
  v19[4] = v2;
  aBlock[4] = sub_1003D81FC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_10065BF60;
  v20 = _Block_copy(aBlock);

  v21 = [v16 beginBackgroundTaskWithName:v18 expirationHandler:v20];
  _Block_release(v20);

  *(v2 + 24) = v21;
  *(v2 + 32) = 0;
  static Logger.ui.getter();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v22, v23))
  {

    goto LABEL_10;
  }

  v24 = swift_slowAlloc();
  aBlock[0] = swift_slowAlloc();
  *v24 = 136315650;
  *(v24 + 4) = sub_100009D88(v32, a2, aBlock);
  *(v24 + 12) = 2048;
  if ((*(v2 + 32) & 1) == 0)
  {
    *(v24 + 14) = *(v2 + 24);

    *(v24 + 22) = 2080;
    v25 = Duration.description.getter();
    v27 = sub_100009D88(v25, v26, aBlock);

    *(v24 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Started provisional background task '%s' (id=%ld) with timeout of %s.", v24, 0x20u);
    swift_arrayDestroy();

LABEL_10:
    (*(v31 + 8))(v7, v30);
    return sub_1003D76E0();
  }

LABEL_16:

  __break(1u);
  return result;
}

uint64_t sub_1003D76E0()
{
  v30 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v30 - 8);
  __chkstk_darwin(v30);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  result = __chkstk_darwin(v11);
  if ((*(v0 + 32) & 1) == 0)
  {
    v13 = *(v0 + 24);
    result = swift_beginAccess();
    if (!*(*(v0 + 16) + 16))
    {
      v26 = v13;
      v27 = v4;
      v28 = v1;
      v29 = v5;
      if (*(v0 + 40))
      {

        dispatch thunk of DispatchWorkItem.cancel()();

        *(v0 + 40) = 0;
      }

      v14 = swift_allocObject();
      swift_weakInit();
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      v16[2] = v14;
      v16[3] = v15;
      v25 = v15;
      v16[4] = v26;
      aBlock[4] = sub_1003D8468;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10028DCE8;
      aBlock[3] = &unk_10065C000;
      _Block_copy(aBlock);
      v31 = _swiftEmptyArrayStorage;
      sub_1002B0510();

      sub_10015DA04(&unk_1006C3F20);
      sub_100243E84();
      v17 = v0;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      v18 = DispatchWorkItem.init(flags:block:)();

      *(v0 + 40) = v18;
      swift_retain_n();

      sub_1001B3B1C();
      v19 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v20 = OBJC_IVAR____TtC11MobileNotes35ProvisionalBackgroundTaskController_timeoutInterval;
      swift_beginAccess();
      v21 = v28;
      v22 = v30;
      (*(v28 + 16))(v3, v17 + v20, v30);
      + infix(_:_:)();
      (*(v21 + 8))(v3, v22);
      v23 = *(v29 + 8);
      v24 = v27;
      v23(v8, v27);
      OS_dispatch_queue.asyncAfter(deadline:execute:)();

      return (v23)(v10, v24);
    }
  }

  return result;
}

id sub_1003D7B58(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v59 = type metadata accessor for UUID();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10015DA04(&qword_1006C6A00);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v52 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.ui.getter();
  swift_retain_n();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    LODWORD(v58) = v18;
    v19 = a1;
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v60 = v56;
    *v20 = 136315650;
    *(v20 + 4) = sub_100009D88(v19, a2, &v60);
    *(v20 + 12) = 2080;
    if (*(a3 + 32))
    {
      v21 = 0xE300000000000000;
      v22 = 7104878;
    }

    else
    {
      v63 = *(a3 + 24);
      sub_1001B37F8();
      v22 = BinaryInteger.description.getter();
      v21 = v23;
    }

    v24 = sub_100009D88(v22, v21, &v60);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2048;
    swift_beginAccess();
    v25 = *(*(a3 + 16) + 16);

    *(v20 + 24) = v25;

    _os_log_impl(&_mh_execute_header, v17, v58, "Provisional background task '%s' (id=%s) expiring; cancelling %ld subtask(s).", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v14 + 8))(v16, v13);
  swift_beginAccess();
  v52[0] = a3;
  v26 = *(a3 + 16);
  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v31 = (v28 + 63) >> 6;
  v52[1] = v57 + 32;
  v52[2] = v57 + 16;
  v58 = (v57 + 8);
  v56 = v26;

  v33 = 0;
  v53 = v12;
  v54 = v10;
  if (v30)
  {
    while (1)
    {
      v34 = v33;
LABEL_18:
      v37 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v38 = v37 | (v34 << 6);
      v39 = v56;
      v40 = v57;
      v41 = v55;
      v42 = v59;
      (*(v57 + 16))(v55, *(v56 + 48) + *(v57 + 72) * v38, v59);
      sub_1002EC1FC(*(v39 + 56) + 40 * v38, &v60);
      v43 = sub_10015DA04(&qword_1006C6A08);
      v44 = *(v43 + 48);
      v45 = *(v40 + 32);
      v10 = v54;
      v45(v54, v41, v42);
      sub_100192680(&v60, &v10[v44]);
      (*(*(v43 - 8) + 56))(v10, 0, 1, v43);
      v36 = v34;
      v12 = v53;
LABEL_19:
      sub_1003D8474(v10, v12);
      v46 = sub_10015DA04(&qword_1006C6A08);
      if ((*(*(v46 - 8) + 48))(v12, 1, v46) == 1)
      {
        break;
      }

      sub_100192680(&v12[*(v46 + 48)], &v60);
      v47 = v61;
      v48 = v62;
      sub_10017CC60(&v60, v61);
      (*(v48 + 8))(v47, v48);
      (*v58)(v12, v59);
      result = sub_100009F60(&v60);
      v33 = v36;
      if (!v30)
      {
        goto LABEL_11;
      }
    }

    result = [objc_opt_self() sharedApplication];
    v50 = v52[0];
    if ((*(v52[0] + 32) & 1) == 0)
    {
      v51 = result;
      [result endBackgroundTask:*(v52[0] + 24)];

      *(v50 + 32) = 1;
      *(v50 + 16) = &_swiftEmptyDictionarySingleton;
      *(v50 + 24) = 0;
    }
  }

  else
  {
LABEL_11:
    if (v31 <= v33 + 1)
    {
      v35 = v33 + 1;
    }

    else
    {
      v35 = v31;
    }

    v36 = v35 - 1;
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v31)
      {
        v49 = sub_10015DA04(&qword_1006C6A08);
        (*(*(v49 - 8) + 56))(v10, 1, 1, v49);
        v30 = 0;
        goto LABEL_19;
      }

      v30 = *(v27 + 8 * v34);
      ++v33;
      if (v30)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D8208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      if ((dispatch thunk of DispatchWorkItem.isCancelled.getter() & 1) != 0 || (*(v9 + 32) & 1) != 0 || *(v9 + 24) != a3 || (swift_beginAccess(), *(*(v9 + 16) + 16)))
      {
      }

      else
      {
        static Logger.ui.getter();
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 134217984;
          *(v12 + 4) = a3;
          _os_log_impl(&_mh_execute_header, v10, v11, "Provisional background task (id=%ld) finished normally with no more subtasks.", v12, 0xCu);
        }

        (*(v5 + 8))(v7, v4);
        v13 = [objc_opt_self() sharedApplication];
        [v13 endBackgroundTask:a3];

        *(v9 + 24) = 0;
        *(v9 + 32) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_1003D8474(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C6A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1003D8790()
{
  v1 = *&v0[OBJC_IVAR___ICSimulateQuotaExceededActivity_note];
  v2 = [v1 recordID];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 account];
    if (v4 && (v5 = v4, v6 = [v4 identifier], v5, v6))
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = [objc_opt_self() sharedInstance];
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = v7;
      v11 = [v7 cloudContextDelegate];

      if (v11)
      {
        v9 = [objc_opt_self() sharedContext];
        v10 = String._bridgeToObjectiveC()();

        [v11 cloudContext:v9 didExceedQuotaForRecordID:v3 accountID:v10];

        [v0 activityDidFinish:1];

        return;
      }
    }

    else
    {
    }
  }

  [v0 activityDidFinish:0];
}

uint64_t sub_1003D89D4()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 navigationItem];
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  [v1 setTitle:v4];

  return sub_1003D8B00(0);
}

uint64_t sub_1003D8B00(int a1)
{
  v2 = v1;
  v19 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10015DA04(&qword_1006C6AB8);
  v18 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_1003DAE20();
  if (v10 >> 62)
  {
    sub_1000054A4(0, &qword_1006C1730);
    v11 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000054A4(0, &qword_1006C1730);
    v11 = v10;
  }

  v12 = [*(v1 + OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController_participantSelection) unresolvedParticipants];
  sub_1000054A4(0, &qword_1006C6A88);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    sub_1000054A4(0, &qword_1006C1730);

    v14 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000054A4(0, &qword_1006C1730);
    v14 = v13;
  }

  *&v20 = v11;
  sub_1002DCA68(v14);
  v15 = v20;
  if (v20 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    UIViewController.contentUnavailableConfiguration.setter();
    sub_1003DC004();
    NSDiffableDataSourceSnapshot.init()();
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10064D210);
    sub_10015DA04(&qword_1006BE7B8);
    *(swift_allocObject() + 16) = xmmword_100531E30;
    (*(v4 + 16))(v6, v2 + OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_joinSummaryIdentifier, v3);
    sub_1003DBFAC();
    AnyHashable.init<A>(_:)();
    LOBYTE(v20) = 0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10064D238);
    sub_10035FB78(v15);

    LOBYTE(v20) = 1;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v16 = sub_1003D907C();
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    return (*(v18 + 8))(v9, v7);
  }

  return sub_1003DB130();
}

BOOL sub_1003D8FC8(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  v2 = [*(v1 + OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController_participantSelection) unresolvedParticipants];
  sub_1000054A4(0, &qword_1006C6A88);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 > 0;
}

id sub_1003D907C()
{
  v1 = OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController____lazy_storage___diffableDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController____lazy_storage___diffableDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController____lazy_storage___diffableDataSource);
  }

  else
  {
    v4 = sub_1003D92D8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1003D90E0(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = sub_1003DB538();

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

id sub_1003D92D8(uint64_t a1)
{
  v68 = sub_10015DA04(&qword_1006C6A90);
  v66 = *(v68 - 8);
  v67 = *(v66 + 64);
  v2 = __chkstk_darwin(v68);
  v65 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v62 = &v53 - v4;
  v64 = sub_10015DA04(&qword_1006C3F38);
  v61 = *(v64 - 8);
  v63 = *(v61 + 64);
  v5 = __chkstk_darwin(v64);
  v60 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v53 - v7;
  v78 = sub_10015DA04(&qword_1006C6A98);
  v75 = *(v78 - 8);
  v57 = *(v75 + 64);
  v8 = __chkstk_darwin(v78);
  v74 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v53 - v10;
  v11 = sub_10015DA04(&qword_1006C6AA0);
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  v13 = __chkstk_darwin(v11);
  v77 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = sub_10015DA04(&qword_1006C6AA8);
  v17 = *(v16 - 8);
  v72 = v16;
  v73 = v17;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v54 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v53 - v20;
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  type metadata accessor for FolderComposerParticipantJoinCell();
  type metadata accessor for UUID();
  v59 = v21;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  v69 = a1;
  swift_unknownObjectUnownedInit();
  type metadata accessor for FolderComposerParticipantCell();
  sub_1000054A4(0, &qword_1006C5F80);
  v58 = v15;
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1000054A4(0, &qword_1006C6A88);
  v22 = v76;
  UICollectionView.CellRegistration.init(handler:)();
  v56 = sub_1003E2DB4();
  v55 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v23 = v73;
  v24 = v72;
  (*(v73 + 16))(&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v72);
  v25 = v70;
  v26 = v71;
  (*(v70 + 16))(v77, v15, v71);
  v27 = v75;
  v28 = v22;
  v29 = v78;
  (*(v75 + 16))(v74, v28, v78);
  v30 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v31 = (v18 + *(v25 + 80) + v30) & ~*(v25 + 80);
  v32 = (v12 + *(v27 + 80) + v31) & ~*(v27 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v55;
  (*(v23 + 32))(v33 + v30, v54, v24);
  (*(v25 + 32))(v33 + v31, v77, v26);
  (*(v27 + 32))(v33 + v32, v74, v29);
  v34 = objc_allocWithZone(sub_10015DA04(&qword_1006C6AB0));
  v35 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v77 = OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController____lazy_storage___diffableDataSource;
  v36 = *(v69 + OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController____lazy_storage___diffableDataSource);
  *(v69 + OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController____lazy_storage___diffableDataSource) = v35;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for FolderComposerFilterHeader();
  v37 = v79;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for FolderComposerFilterFooter();
  v38 = v62;
  v39 = UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v74 = sub_1003D907C(v39);
  v40 = v60;
  v41 = v61;
  v42 = v64;
  (*(v61 + 16))(v60, v37, v64);
  v43 = v65;
  v44 = v66;
  v45 = v68;
  (*(v66 + 16))(v65, v38, v68);
  v46 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v47 = (v63 + *(v44 + 80) + v46) & ~*(v44 + 80);
  v48 = swift_allocObject();
  (*(v41 + 32))(v48 + v46, v40, v42);
  (*(v44 + 32))(v48 + v47, v43, v45);
  v49 = v74;
  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  v50 = *(v44 + 8);
  v51 = *&v77[v69];
  v50(v38, v45);
  (*(v41 + 8))(v79, v42);
  (*(v75 + 8))(v76, v78);
  (*(v70 + 8))(v58, v71);
  (*(v73 + 8))(v59, v72);
  return v51;
}

uint64_t sub_1003D9BB8(char *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController_participantSelection];

  v4 = *&a1[OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell_participantSelection];
  *&a1[OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell_participantSelection] = v3;
  v5 = v3;

  sub_1003DC06C();
  [a1 setNeedsUpdateConfiguration];

  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = &a1[OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell_joinOperatorChanged];
  v9 = *&a1[OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell_joinOperatorChanged];
  *v8 = sub_1003DBFA4;
  v8[1] = v7;

  return sub_10000C840(v9);
}

uint64_t sub_1003D9CA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10015DA04(&qword_1006C6AB8);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = sub_1003D907C(v9);
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  sub_10015DA04(&qword_1006BE7B8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100531E30;
  (*(v4 + 16))(v6, a2 + OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_joinSummaryIdentifier, v3);
  sub_1003DBFAC();
  AnyHashable.init<A>(_:)();
  NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v13);

  v14 = *(a2 + OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController____lazy_storage___diffableDataSource);
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  return (*(v8 + 8))(v11, v7);
}

void sub_1003D9EC8(char *a1, uint64_t a2, void **a3)
{
  v5 = sub_10015DA04(&qword_1006BD9D8);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for UICellAccessory.CheckmarkOptions();
  v30 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICellAccessory.DisplayedState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v16 = *&a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_participant];
  *&a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_participant] = *a3;
  v17 = v15;

  [a1 setNeedsUpdateConfiguration];
  v18 = [v17 userIdentity];
  v19 = [v18 userRecordID];

  if (v19)
  {
    v29 = v8;
    v20 = [v19 recordName];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    Strong = swift_unknownObjectUnownedLoadStrong();
    v25 = *&Strong[OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController_participantSelection];

    v26 = [v25 participantUserIDs];
    v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v26) = sub_10033AD70(v21, v23, v27);

    a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_showCheckmark] = v26 & 1;
    if (v26)
    {
      sub_10015DA04(&unk_1006BD9E0);
      type metadata accessor for UICellAccessory();
      *(swift_allocObject() + 16) = xmmword_100531E30;
      (*(v12 + 104))(v14, enum case for UICellAccessory.DisplayedState.always(_:), v11);
      v28 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
      UICellAccessory.CheckmarkOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
      static UICellAccessory.checkmark(displayed:options:)();
      (*(v30 + 8))(v10, v29);
      (*(v12 + 8))(v14, v11);
    }

    UICollectionViewListCell.accessories.setter();
  }
}

uint64_t sub_1003DA300(char *a1, uint64_t a2, void **a3)
{
  v5 = sub_10015DA04(&qword_1006BD9D8);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for UICellAccessory.CheckmarkOptions();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICellAccessory.DisplayedState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v16 = *&a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_unknownParticipant];
  *&a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_unknownParticipant] = *a3;
  v17 = v15;

  [a1 setNeedsUpdateConfiguration];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v19 = *&Strong[OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController_participantSelection];

  v20 = [v19 participantUserIDs];
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = [v17 participantUserID];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  LOBYTE(v22) = sub_10033AD70(v23, v25, v21);

  a1[OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_showCheckmark] = v22 & 1;
  if (v22)
  {
    sub_10015DA04(&unk_1006BD9E0);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_100531E30;
    (*(v12 + 104))(v14, enum case for UICellAccessory.DisplayedState.always(_:), v11);
    v26 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    UICellAccessory.CheckmarkOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.checkmark(displayed:options:)();
    (*(v28 + 8))(v10, v29);
    (*(v12 + 8))(v14, v11);
  }

  return UICollectionViewListCell.accessories.setter();
}

uint64_t sub_1003DA6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a5;
  v38 = a6;
  v11 = sub_10015DA04(&unk_1006BE0B0);
  v12 = __chkstk_darwin(v11 - 8);
  v36 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v35 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v35 - v21;
  sub_100024F40(a3, v39);
  if (swift_dynamicCast())
  {
    v35[1] = a7;
    v35[2] = a2;
    v35[3] = a1;
    v35[0] = *(v17 + 56);
    (v35[0])(v15, 0, 1, v16);
    (*(v17 + 32))(v22, v15, v16);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v24 = *(v17 + 16);
    v24(v20, Strong + OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_joinSummaryIdentifier, v16);

    LOBYTE(Strong) = static UUID.== infix(_:_:)();
    v25 = *(v17 + 8);
    v25(v20, v16);
    if (Strong)
    {
      v26 = v36;
      v24(v36, v22, v16);
      (v35[0])(v26, 0, 1, v16);
      type metadata accessor for FolderComposerParticipantJoinCell();
      v27 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_1000073B4(v26, &unk_1006BE0B0);
      v25(v22, v16);
      return v27;
    }

    v25(v22, v16);
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    sub_1000073B4(v15, &unk_1006BE0B0);
  }

  v28.isa = AnyHashable._bridgeToObjectiveC()().isa;
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v39[0] = v29;
    type metadata accessor for FolderComposerParticipantCell();
    sub_1000054A4(0, &qword_1006C5F80);
    v30 = v28.isa;
    v27 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  }

  else
  {

    v31.isa = AnyHashable._bridgeToObjectiveC()().isa;
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v39[0] = v32;
      type metadata accessor for FolderComposerParticipantCell();
      sub_1000054A4(0, &qword_1006C6A88);
      v33 = v31.isa;
      v27 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    }

    else
    {

      return 0;
    }
  }

  return v27;
}

id sub_1003DAB38(char *a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = &a1[OBJC_IVAR____TtC11MobileNotes26FolderComposerFilterHeader_text];
  *v8 = v5;
  v8[1] = v7;

  return [a1 setNeedsUpdateConfiguration];
}

id sub_1003DAC28(char *a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = &a1[OBJC_IVAR____TtC11MobileNotes26FolderComposerFilterFooter_text];
  *v8 = v5;
  v8[1] = v7;

  return [a1 setNeedsUpdateConfiguration];
}

uint64_t sub_1003DAD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v5 == a3)
  {

    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_13:
    type metadata accessor for FolderComposerFilterHeader();
    return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v8 == a3)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for FolderComposerFilterFooter();
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

void *sub_1003DAE20()
{
  v1 = [objc_opt_self() sharedContext];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  v3 = [v1 managedObjectContext];

  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return v4;
  }

  v5 = [*(v0 + OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController_participantSelection) accountObjectID];
  if (!v5)
  {

    return v4;
  }

  v6 = v5;
  v14 = _swiftEmptyArrayStorage;
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = &v14;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1003DC058;
  *(v8 + 24) = v7;
  aBlock[4] = sub_10000EFBC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000EAF8;
  aBlock[3] = &unk_10065C140;
  v9 = _Block_copy(aBlock);
  v10 = v3;
  v11 = v6;

  [v10 performBlockAndWait:v9];

  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    v4 = v14;

    return v4;
  }

  __break(1u);
  return result;
}

void sub_1003DB024(void *a1, uint64_t a2, uint64_t *a3)
{
  v7 = [a1 ic_existingObjectWithID:a2];
  if (v7)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 uniqueUserParticipants];
      sub_1000054A4(0, &qword_1006C5F80);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      *a3 = v6;
    }

    else
    {
    }
  }
}

uint64_t sub_1003DB130()
{
  v0 = type metadata accessor for UIContentUnavailableConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIContentUnavailableConfiguration.empty()();
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 ic_systemImageNamed:v5];

  UIContentUnavailableConfiguration.image.setter();
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UIContentUnavailableConfiguration.text.setter();
  v11 = [v7 mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 localizedStringForKey:v12 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UIContentUnavailableConfiguration.secondaryText.setter();
  v17[3] = v0;
  v17[4] = &protocol witness table for UIContentUnavailableConfiguration;
  v14 = sub_100180240(v17);
  (*(v1 + 16))(v14, v3, v0);
  UIViewController.contentUnavailableConfiguration.setter();
  return (*(v1 + 8))(v3, v0);
}

void sub_1003DB408()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController____lazy_storage___diffableDataSource);
}

uint64_t type metadata accessor for FolderComposerParticipantViewController()
{
  result = qword_1006C6A78;
  if (!qword_1006C6A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003DB538()
{
  v0 = sub_1003D907C();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  sub_1003DBC90(v8, v6);
  if (v7)
  {
    isa = AnyHashable._bridgeToObjectiveC()().isa;
    sub_100024F9C(v6);
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();

    if (v2)
    {
      sub_1000073B4(v8, &qword_1006C2AF8);
      return 1;
    }
  }

  else
  {
    sub_1000073B4(v6, &qword_1006C2AF8);
  }

  sub_1003DBC90(v8, v6);
  if (v7)
  {
    v4 = AnyHashable._bridgeToObjectiveC()().isa;
    sub_1000073B4(v8, &qword_1006C2AF8);
    sub_100024F9C(v6);
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass() != 0;
  }

  else
  {
    sub_1000073B4(v8, &qword_1006C2AF8);
    sub_1000073B4(v6, &qword_1006C2AF8);
    return 0;
  }

  return v3;
}

void sub_1003DB69C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10015DA04(&qword_1006BD9D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = type metadata accessor for UICellAccessory.CheckmarkOptions();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICellAccessory.DisplayedState();
  v49 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1003E2DB4();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v50 = [v14 cellForItemAtIndexPath:isa];

  if (!v50)
  {
    return;
  }

  type metadata accessor for FolderComposerParticipantCell();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v47 = v7;
  v18 = *(v16 + OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_participant);
  v45 = v6;
  v46 = v8;
  if (v18)
  {
    v19 = [v18 userIdentity];
    v20 = [v19 userRecordID];

    if (v20)
    {
      v21 = [v20 recordName];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v23;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v20 = 0;
  }

  v44 = v11;
  v24 = *(v17 + OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_unknownParticipant);
  if (!v24)
  {
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_13:
    v48 = a1;

    v28 = v20;
    goto LABEL_14;
  }

  v25 = [v24 participantUserID];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (v20)
  {
    goto LABEL_13;
  }

  if (v28)
  {
    v48 = a1;
    v22 = v26;
LABEL_14:
    v29 = OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController_participantSelection;
    v30 = [*(v2 + OBJC_IVAR____TtC11MobileNotes39FolderComposerParticipantViewController_participantSelection) participantUserIDs];
    v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v30) = sub_10033AD70(v22, v28, v31);

    v32 = *(v2 + v29);
    v33 = String._bridgeToObjectiveC()();
    v34 = &selRef_removeParticipantUserID_;
    if ((v30 & 1) == 0)
    {
      v34 = &selRef_addParticipantUserID_;
    }

    [v32 *v34];

    v35 = [*(v2 + v29) participantUserIDs];
    v36 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v35) = sub_10033AD70(v22, v28, v36);

    *(v17 + OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_showCheckmark) = v35 & 1;
    if (v35)
    {
      sub_10015DA04(&unk_1006BD9E0);
      type metadata accessor for UICellAccessory();
      *(swift_allocObject() + 16) = xmmword_100531E30;
      v37 = v49;
      v38 = v44;
      (*(v49 + 104))(v13, enum case for UICellAccessory.DisplayedState.always(_:), v44);
      v39 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v39 - 8) + 56))(v45, 1, 1, v39);
      UICellAccessory.CheckmarkOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
      static UICellAccessory.checkmark(displayed:options:)();
      (*(v46 + 8))(v10, v47);
      (*(v37 + 8))(v13, v38);
    }

    UICollectionViewListCell.accessories.setter();
    v41 = *(v2 + OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController____lazy_storage___collectionView);
    v42 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v41 deselectItemAtIndexPath:v42 animated:0];

    return;
  }

LABEL_18:
  v40 = v50;
}

uint64_t sub_1003DBC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C2AF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DBD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10015DA04(&qword_1006C6AA8) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_10015DA04(&qword_1006C6AA0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_10015DA04(&qword_1006C6A98) - 8);
  v14 = *(v3 + 16);
  v15 = v3 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_1003DA6EC(a1, a2, a3, v14, v3 + v8, v3 + v11, v15);
}

uint64_t sub_1003DBE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10015DA04(&qword_1006C3F38);
  sub_10015DA04(&qword_1006C6A90);

  return sub_1003DAD10(a1, a2, a3);
}

unint64_t sub_1003DBFAC()
{
  result = qword_1006C07C8;
  if (!qword_1006C07C8)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C07C8);
  }

  return result;
}

unint64_t sub_1003DC004()
{
  result = qword_1006C6AC0;
  if (!qword_1006C6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6AC0);
  }

  return result;
}

void sub_1003DC06C()
{
  v1 = sub_1003DC2FC(&OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell____lazy_storage___allAction);
  v2 = OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell_participantSelection;
  v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell_participantSelection);
  v4 = v3 && [v3 joinOperator] == 1;
  [v1 setState:v4];

  v7 = sub_1003DC2FC(&OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell____lazy_storage___anyAction);
  v5 = *(v0 + v2);
  v6 = v5 && [v5 joinOperator] == 2;
  [v7 setState:v6];
}

uint64_t sub_1003DC188()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell_participantSelection);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 summaryWithJoinOperatorMenu];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

UIMenu sub_1003DC1F8()
{
  sub_1000054A4(0, &unk_1006C6410);
  sub_10015DA04(&unk_1006BD390);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100531E20;
  *(preferredElementSize + 32) = sub_1003DC2FC(&OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell____lazy_storage___allAction);
  *(preferredElementSize + 40) = sub_1003DC2FC(&OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell____lazy_storage___anyAction);
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v1, 0, v4, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v3);
}

id sub_1003DC2FC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *&v1[*a1];
  if (v3)
  {
    v4 = *&v1[*a1];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v5 = ICLocalizedStringFromICParticipantsFilterJoinOperator();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    *(swift_allocObject() + 16) = v1;
    v6 = v1;
    v7 = v1;
    v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v9 = *&v1[v2];
    *&v7[v2] = v8;
    v4 = v8;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

id sub_1003DC40C(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *&a2[OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell_participantSelection];
  if (v5)
  {
    v5 = [v5 setJoinOperator:a3];
  }

  sub_1003DC06C(v5);
  result = [a2 setNeedsUpdateConfiguration];
  v7 = *&a2[OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell_joinOperatorChanged];
  if (v7)
  {

    v7(a3);

    return sub_10000C840(v7);
  }

  return result;
}

id sub_1003DC564(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell_joinOperatorChanged];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell_participantSelection] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell____lazy_storage___allAction] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell____lazy_storage___anyAction] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_1003DC62C()
{
  sub_10000C840(*(v0 + OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell_joinOperatorChanged));

  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes33FolderComposerParticipantJoinCell____lazy_storage___anyAction);
}

uint64_t SetAttachmentSizeIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for AttachmentEntity();
  __chkstk_darwin(v2 - 8);
  sub_100311C5C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1001EAA40(a1);
}

uint64_t sub_1003DC854()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static SetAttachmentSizeIntent.title);
  sub_10002597C(v6, static SetAttachmentSizeIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t static SetAttachmentSizeIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static SetAttachmentSizeIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C6B18);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&unk_1006C6B20);
  __chkstk_darwin(v1);
  sub_10021B578();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100571050;
  v2._countAndFlagsBits = 0xD000000000000010;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C6B30);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C6B38);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*SetAttachmentSizeIntent.target.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*SetAttachmentSizeIntent.attachmentSize.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t (*SetAttachmentSizeIntent.loggingConfiguration.modify(uint64_t *a1))()
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
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t SetAttachmentSizeIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1003DD114, 0, 0);
}

uint64_t sub_1003DD114()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  AppDependency.wrappedValue.getter();
  v5 = v0[2];
  v0[8] = [v5 modernManagedObjectContext];

  v6 = swift_allocObject();
  v0[9] = v6;
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v1;

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1003DD264;

  return NSManagedObjectContext.perform<A>(_:)(v7, sub_1003DF198, v6, &type metadata for () + 8);
}

uint64_t sub_1003DD264()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1003DD3EC;
  }

  else
  {

    v2 = sub_1003DD380;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003DD380()
{
  v1 = *(v0 + 64);
  static IntentResult.result<>()();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003DD3EC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003DD458()
{
  v0 = type metadata accessor for AttachmentEntity();
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntentParameter.wrappedValue.getter();
  AppDependency.wrappedValue.getter();
  v4 = v17;
  URL._bridgeToObjectiveC()(*(v1 + 28));
  v6 = v5;
  v7 = [v4 managedObjectIDForURIRepresentation:v5];

  if (v7)
  {
    v8 = [v4 managedObjectContextForObjectID:v7];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 objectWithID:v7];

      sub_1001EAA40(v3);
      v16[1] = &OBJC_PROTOCOL___ICAttachmentObject;
      swift_dynamicCastObjCProtocolUnconditional();
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (!v11)
      {
        sub_100197CCC();
        swift_allocError();
        *v13 = 22;
        swift_willThrow();
LABEL_14:

        return;
      }

      v12 = v11;
      IntentParameter.wrappedValue.getter();
      if (v17 > 1u)
      {
        if (v17 == 2)
        {
          v14 = 2;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        if (!v17)
        {
          [v12 resetPreferredViewSizeIfNecessary];
LABEL_13:
          v15 = [v12 managedObjectContext];
          [v15 ic_save];

          goto LABEL_14;
        }

        v14 = 1;
      }

      [v12 setPreferredViewSize:v14];
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t AttachmentViewSize.attachmentViewSize.getter(unsigned __int8 a1)
{
  if (a1 == 2)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  v2 = a1 == 0;
  if (a1 <= 1u)
  {
    v3 = a1 != 0;
  }

  else
  {
    v3 = v1;
  }

  if (a1 > 1u)
  {
    v2 = 0;
  }

  return v3 | (v2 << 16);
}

uint64_t sub_1003DD724(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A600;

  return SetAttachmentSizeIntent.perform()(a1, v4, v5, v7, v6);
}

_BYTE *sub_1003DD7E4@<X0>(void *a1@<X8>)
{
  result = _s11MobileNotes23SetAttachmentSizeIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1003DD810()
{
  v0 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100025918(v10, static AttachmentViewSize.typeDisplayRepresentation);
  sub_10002597C(v10, static AttachmentViewSize.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}