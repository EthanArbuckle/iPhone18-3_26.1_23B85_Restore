id sub_100393208()
{
  v1 = OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell____lazy_storage___emptyAvatarImage;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell____lazy_storage___emptyAvatarImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell____lazy_storage___emptyAvatarImage);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [objc_opt_self() clearColor];
    v6 = [v4 ic_imageWithColor:v5 size:{28.0, 28.0}];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100393374(void *a1)
{
  *&v1[OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_participant] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_unknownParticipant] = 0;
  v1[OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_showCheckmark] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell_avatarSize] = 0x403C000000000000;
  *&v1[OBJC_IVAR____TtC11MobileNotes29FolderComposerParticipantCell____lazy_storage___emptyAvatarImage] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FolderComposerParticipantCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100393444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerParticipantCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100393518()
{
  (*((swift_isaMask & *v0) + 0x138))();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v1 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v2 = (*((swift_isaMask & *v0) + 0x140))(v1);
  sub_10015DA04(&qword_1006C32B0);
  Array.appendNonNil(_:)();

  v3 = sub_1003956D8();
  Array.appendNonNil(_:)();

  v6 = sub_100393A14();
  Array.appendNonNil(_:)();

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_1000054A4(0, &qword_1006C6400);

    v4 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000054A4(0, &qword_1006C6400);
    v4 = _swiftEmptyArrayStorage;
  }

  return v4;
}

id sub_10039373C()
{
  v4 = sub_10039459C();
  sub_10015DA04(&qword_1006C32B8);
  Array.appendNonNil(_:)();

  v0 = objc_opt_self();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 ic_inlineMenuWithChildren:{isa, v4, _swiftEmptyArrayStorage}];

  return v2;
}

id sub_100393814()
{
  v0 = sub_100394358();
  sub_10015DA04(&qword_1006C32B8);
  Array.appendNonNil(_:)();

  v1 = sub_100393F8C();
  Array.appendNonNil(_:)();

  v2 = sub_10039415C();
  Array.appendNonNil(_:)();

  v3 = sub_100394944();
  Array.appendNonNil(_:)();

  v4 = sub_100394B10();
  Array.appendNonNil(_:)();

  v5 = sub_100394768();
  Array.appendNonNil(_:)();

  v6 = sub_100394CBC();
  Array.appendNonNil(_:)();

  v7 = sub_100394F90();
  Array.appendNonNil(_:)();

  v12 = sub_100395348();
  Array.appendNonNil(_:)();

  v8 = objc_opt_self();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 ic_inlineMenuWithChildren:{isa, v12, _swiftEmptyArrayStorage}];

  return v10;
}

Class sub_100393A14()
{
  if (!ICDebugModeEnabled())
  {
    return 0;
  }

  preferredElementSize = _swiftEmptyArrayStorage;
  v1 = v0;
  v2 = sub_1003958CC();
  sub_10015DA04(&qword_1006C32B8);
  Array.appendNonNil(_:)();

  v3 = sub_100395A4C();
  Array.appendNonNil(_:)();

  *&aBlock = sub_100395C34();
  Array.appendNonNil(_:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = [objc_allocWithZone(ICDumpStateActivity) initWithPresentingViewController:Strong];

  v6 = *(v1 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
    v30 = v6;
    v31 = v7;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v29 = sub_10017C07C;
    *(&v29 + 1) = &unk_100659E00;
    v8 = _Block_copy(&aBlock);
  }

  else
  {
    v8 = 0;
  }

  v10 = [v5 actionWithCompletion:v8];
  _Block_release(v8);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  *(&v29 + 1) = &type metadata for TelephonyUtilitiesFeature;
  v30 = sub_100025AC8();
  *&aBlock = "CallRecording";
  *(&aBlock + 1) = 13;
  LOBYTE(v29) = 2;
  v11 = isFeatureEnabled(_:)();
  sub_100009F60(&aBlock);
  if (v11)
  {
    sub_1000054A4(0, &unk_1006BD380);
    v27._rawValue = 0;
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = String._bridgeToObjectiveC()();
    [v12 setTitle:{v13, 0}];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (ICDebugModeEnabled())
  {
    v14 = [objc_opt_self() standardUserDefaults];
    [v14 _ICDebugWindowEnabled];

    sub_1000054A4(0, &qword_1006BF850);
    aBlock = 0u;
    v29 = 0u;
    v27._rawValue = 0;
    v15 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v16 = String._bridgeToObjectiveC()();
    v17 = [objc_opt_self() systemImageNamed:{v16, _swiftEmptyArrayStorage}];

    [v15 setImage:v17];
  }

  else
  {
    v15 = 0;
  }

  *&aBlock = v15;
  Array.appendNonNil(_:)();

  v18 = [objc_opt_self() mainBundle];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 localizedStringForKey:v19 value:0 table:0];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = String._bridgeToObjectiveC()();
  v25 = [objc_opt_self() systemImageNamed:v24];

  sub_1000054A4(0, &unk_1006C6410);
  v26._countAndFlagsBits = v21;
  v26._object = v23;
  v33.value.super.isa = v25;
  v33.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v33, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v27).super.super.isa;
}

uint64_t sub_100393F8C()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (!v1)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = v1;
  if (![v3 isSharedViaICloud])
  {

    return 0;
  }

  v5 = type metadata accessor for ShowActivityStreamActivity();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR___ICShowActivityStreamActivity_object] = v3;
  v14.receiver = v6;
  v14.super_class = v5;
  v7 = v4;
  v8 = objc_msgSendSuper2(&v14, "init");
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
  {
    v10 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
    v13[4] = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10017C07C;
    v13[3] = &unk_100659DD8;
    v11 = _Block_copy(v13);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v8 actionWithCompletion:v11];

  _Block_release(v11);
  return v12;
}

uint64_t sub_10039415C()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (!v1)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = v1;
  if (![v3 canAddSubfolder])
  {

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 eventReporter];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_allocWithZone(ICAddFolderActivity);
  v11 = v4;
  v12 = [v10 initWithPresentingViewController:Strong presentingBarButtonItem:0 parentFolder:v3 eventReporter:v9];

  if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
  {
    v13 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
    v16[4] = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_10017C07C;
    v16[3] = &unk_100659DB0;
    v14 = _Block_copy(v16);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v12 actionWithCompletion:v14];

  _Block_release(v14);
  return v15;
}

uint64_t sub_100394358()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (!v1)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = v1;
  if (![v3 canBeSharedViaICloud])
  {

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_presentingBarButtonItem);
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
    }

    v10 = [v11 eventReporter];
  }

  v12 = objc_allocWithZone(ICCollaborationFolderActivity);
  v13 = v4;
  v14 = [v12 initWithFolder:v3 presentingViewController:Strong presentingBarButtonItem:v6 presentingSourceView:0 presentingSourceRect:v10 eventReporter:{CGRectNull.origin.x, y, width, height}];

  if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
  {
    v15 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
    v18[4] = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
    v18[5] = v15;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_10017C07C;
    v18[3] = &unk_100659D88;
    v16 = _Block_copy(v18);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v14 actionWithCompletion:v16];

  _Block_release(v16);
  return v17;
}

uint64_t sub_10039459C()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (!v1)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = objc_opt_self();
  v5 = v1;
  if (![v4 canShowConvertToSmartFolder:v3])
  {

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_presentingBarButtonItem);
  v8 = objc_allocWithZone(ICConvertToSmartFolderActivity);
  v9 = v5;
  v10 = [v8 initWithFolder:v3 presentingViewController:Strong presentingBarButtonItem:v7 sender:v0];

  if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
  {
    v11 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
    v14[4] = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10017C07C;
    v14[3] = &unk_100659D60;
    v12 = _Block_copy(v14);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 actionWithCompletion:v12];

  _Block_release(v12);
  return v13;
}

uint64_t sub_100394768()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (!v1)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = v1;
  if (![v3 isEditableSmartFolder])
  {

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = type metadata accessor for EditSmartFolderActivity();
  v7 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR___ICEditSmartFolderActivity_smartFolder] = v3;
  swift_unknownObjectWeakAssign();
  v14.receiver = v7;
  v14.super_class = v6;
  v8 = v4;
  v9 = objc_msgSendSuper2(&v14, "init");

  if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
  {
    v10 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
    v13[4] = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10017C07C;
    v13[3] = &unk_100659D38;
    v11 = _Block_copy(v13);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v9 actionWithCompletion:v11];

  _Block_release(v11);
  return v12;
}

uint64_t sub_100394944()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (!v1)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = objc_opt_self();
  v6 = v1;
  if (![v5 canShowMoveActionForFolder:v3 viewControllerManager:v4])
  {

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = objc_allocWithZone(ICMoveFolderActivity);
  v9 = v6;
  v10 = [v8 initWithFolder:v3 presentingViewController:Strong];

  if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
  {
    v11 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
    v14[4] = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_10017C07C;
    v14[3] = &unk_100659D10;
    v12 = _Block_copy(v14);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 actionWithCompletion:v12];

  _Block_release(v12);
  return v13;
}

uint64_t sub_100394B10()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (!v1)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = v1;
  if (![v3 isRenamable] || (objc_msgSend(v3, "isEditableSmartFolder") & 1) != 0)
  {

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = objc_allocWithZone(ICRenameFolderActivity);
  v7 = v4;
  v8 = [v6 initWithFolder:v3 presentingViewController:Strong];

  if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
  {
    v9 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
    v12[4] = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10017C07C;
    v12[3] = &unk_100659CE8;
    v10 = _Block_copy(v12);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v8 actionWithCompletion:v10];

  _Block_release(v10);
  return v11;
}

id sub_100394CBC()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (v1)
  {
    v2 = v1;
    if (([v2 isSharedReadOnly] & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v6 = [objc_allocWithZone(ICSelectNotesActivity) initWithPresentingViewController:Strong];

      if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
      {
        v10 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
        v20 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
        v21 = v10;
        v16 = _NSConcreteStackBlock;
        v17 = 1107296256;
        v18 = sub_10017C07C;
        v19 = &unk_100659CC0;
        v11 = _Block_copy(&v16);
      }

      else
      {
        v11 = 0;
      }

      v12 = [v6 actionWithCompletion:v11];
      _Block_release(v11);
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v13 = [v14 visibleNotesCount] == 0;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_17;
    }
  }

  v3 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder);
  if (v3)
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    v5 = objc_allocWithZone(ICSelectNotesActivity);
    v2 = v3;
    v6 = [v5 initWithPresentingViewController:v4];

    if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
    {
      v7 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
      v20 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
      v21 = v7;
      v16 = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_10017C07C;
      v19 = &unk_100659C98;
      v8 = _Block_copy(&v16);
    }

    else
    {
      v8 = 0;
    }

    v12 = [v6 actionWithCompletion:v8];
    _Block_release(v8);
    v13 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_context);
    if (v13)
    {
      v13 = [v2 isEmptyInContext:?];
    }

LABEL_17:
    [v12 setIc_disabled:v13];

    return v12;
  }

  return 0;
}

uint64_t sub_100394F90()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      if ([v3 supportsCustomNoteSortType])
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v6 = Strong;
          v7 = swift_unknownObjectWeakLoadStrong();
          v8 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_presentingBarButtonItem);
          v9 = swift_unknownObjectWeakLoadStrong();
          if (v9)
          {
            v10 = v9;
            objc_opt_self();
            v11 = swift_dynamicCastObjCClass();
            if (v11)
            {
              v12 = [v11 eventReporter];
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }

          v28 = [v6 noteContainerViewMode];
          v29 = objc_allocWithZone(ICSortFolderActivity);
          v24 = v4;
          v25 = [v29 initWithFolder:v3 presentingViewController:v7 presentingBarButtonItem:v8 eventReporter:v12 noteContainerViewMode:v28];

          if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
          {
            v30 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
            v37 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
            v38 = v30;
            v33 = _NSConcreteStackBlock;
            v34 = 1107296256;
            v27 = &unk_100659C70;
            goto LABEL_24;
          }

LABEL_25:
          v31 = 0;
          goto LABEL_26;
        }
      }
    }
  }

  v13 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder);
  if (!v13)
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_presentingBarButtonItem);
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    v20 = v13;
    if (v19)
    {
      v19 = [v19 eventReporter];
    }
  }

  else
  {
    v21 = v13;
    v19 = 0;
  }

  v22 = [v6 noteContainerViewMode];
  v23 = objc_allocWithZone(ICSortFolderActivity);
  v24 = v13;
  v25 = [v23 initWithVirtualSmartFolder:v24 presentingViewController:v15 presentingBarButtonItem:v16 eventReporter:v19 noteContainerViewMode:v22];

  if (!*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
  {
    goto LABEL_25;
  }

  v26 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
  v37 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
  v38 = v26;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v27 = &unk_100659C48;
LABEL_24:
  v35 = sub_10017C07C;
  v36 = v27;
  v31 = _Block_copy(&v33);

LABEL_26:
  v32 = [v25 menuWithCompletion:{v31, v33, v34}];
  _Block_release(v31);

  return v32;
}

uint64_t sub_100395348()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      if ([v3 supportsDateHeaders])
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v6 = Strong;
          v7 = swift_unknownObjectWeakLoadStrong();
          v8 = swift_unknownObjectWeakLoadStrong();
          if (v8)
          {
            v9 = v8;
            objc_opt_self();
            v10 = swift_dynamicCastObjCClass();
            if (v10)
            {
              v11 = [v10 eventReporter];
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            v11 = 0;
          }

          v27 = [v6 noteContainerViewMode];
          v28 = objc_allocWithZone(ICDateHeadersNoteContainerActivity);
          v23 = v4;
          v24 = [v28 initWithContainer:v3 presentingViewController:v7 eventReporter:v11 noteContainerViewMode:v27];

          if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
          {
            v29 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
            v36 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
            v37 = v29;
            v32 = _NSConcreteStackBlock;
            v33 = 1107296256;
            v26 = &unk_100659C20;
            goto LABEL_25;
          }

LABEL_26:
          v30 = 0;
          goto LABEL_27;
        }
      }
    }
  }

  v12 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder);
  if (!v12)
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v14 = swift_unknownObjectWeakLoadStrong();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    v18 = v12;
    if (v17)
    {
      v19 = [v17 eventReporter];

      goto LABEL_18;
    }
  }

  else
  {
    v20 = v12;
  }

  v19 = 0;
LABEL_18:
  v21 = [v6 noteContainerViewMode];
  v22 = objc_allocWithZone(ICDateHeadersNoteContainerActivity);
  v23 = v12;
  v24 = [v22 initWithVirtualSmartFolder:v23 presentingViewController:v14 eventReporter:v19 noteContainerViewMode:v21];

  if (!*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
  {
    goto LABEL_26;
  }

  v25 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
  v36 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
  v37 = v25;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v26 = &unk_100659BF8;
LABEL_25:
  v34 = sub_10017C07C;
  v35 = v26;
  v30 = _Block_copy(&v32);

LABEL_27:
  v31 = [v24 menuWithCompletion:{v30, v32, v33}];
  _Block_release(v30);

  return v31;
}

id sub_1003956D8()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_context);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = [v2 type];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_14:

    return 0;
  }

  v12 = Strong;
  if ([Strong behavior] == 1 && !objc_msgSend(*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_recentlyDeletedMathNotesFolder), "isEmptyInContext:", v3))
  {
    v14 = type metadata accessor for RecentlyDeletedMathNotesActivity();
    v15 = objc_allocWithZone(v14);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v20.receiver = v15;
    v20.super_class = v14;
    v16 = objc_msgSendSuper2(&v20, "init");
    v17 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
    v18 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
    sub_100010854(v17);
    v19 = sub_10049FD18(v17, v18);
    sub_10000C840(v17);

    return v19;
  }

  return 0;
}

id sub_1003958CC()
{
  if (!ICInternalSettingsIsAlexandriaEnabled())
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (![v2 allowsImporting])
  {

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = objc_allocWithZone(ICImportArchiveActivity);
  v5 = v2;
  v6 = [v4 initWithNoteContainer:v5 markdown:0 presentingViewController:Strong];

  if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
  {
    v7 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
    v11[4] = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10017C07C;
    v11[3] = &unk_100659BD0;
    v8 = _Block_copy(v11);
  }

  else
  {
    v8 = 0;
  }

  v10 = [v6 actionWithCompletion:v8];

  _Block_release(v8);
  return v10;
}

id sub_100395A4C()
{
  if (!ICInternalSettingsIsAlexandriaEnabled())
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (![v2 allowsExporting])
  {

    return 0;
  }

  sub_10015DA04(&unk_1006BD390);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100534670;
  *(v3 + 32) = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = objc_allocWithZone(ICExportArchiveActivity);
  sub_1000054A4(0, &qword_1006C1B60);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithObjects:isa presentingViewController:Strong presentingBarButtonItem:0 presentingSourceView:0];

  if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
  {
    v8 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
    v12[4] = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10017C07C;
    v12[3] = &unk_100659BA8;
    v9 = _Block_copy(v12);
  }

  else
  {
    v9 = 0;
  }

  v11 = [v7 actionWithCompletion:v9];

  _Block_release(v9);
  return v11;
}

id sub_100395C34()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 identifier];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v9 = [objc_allocWithZone(ICCopyUUIDActivity) initWithUUIDString:v4];

        if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
        {
          v10 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
          v22 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
          v23 = v10;
          v18 = _NSConcreteStackBlock;
          v19 = 1107296256;
          v11 = &unk_100659B80;
LABEL_16:
          v20 = sub_10017C07C;
          v21 = v11;
          v15 = _Block_copy(&v18);

LABEL_19:
          v16 = [v9 actionWithCompletion:{v15, v18, v19}];

          _Block_release(v15);
          return v16;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v4 = v2;
    }
  }

  v12 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder);
  if (v12)
  {
    v2 = v12;
    v13 = [v2 identifier];
    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String._bridgeToObjectiveC()();
    }

    v9 = [objc_allocWithZone(ICCopyUUIDActivity) initWithUUIDString:v13];

    if (*(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion))
    {
      v14 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
      v22 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
      v23 = v14;
      v18 = _NSConcreteStackBlock;
      v19 = 1107296256;
      v11 = &unk_100659B58;
      goto LABEL_16;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  return 0;
}

id sub_100395F84(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      v2 = v3;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1003960AC(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = objc_allocWithZone(v7);
  v13 = [objc_opt_self() sharedContext];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 managedObjectContext];
  }

  else
  {
    v15 = 0;
  }

  *&v12[OBJC_IVAR___ICNoteContainerActionMenu_context] = v15;
  v16 = OBJC_IVAR___ICNoteContainerActionMenu_recentlyDeletedMathNotesFolder;
  *&v12[v16] = [objc_opt_self() globalVirtualRecentlyDeletedMathNotesFolder];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v17 = &v12[OBJC_IVAR___ICNoteContainerActionMenu_completion];
  *v17 = 0;
  v17[1] = 0;
  *&v12[OBJC_IVAR___ICNoteContainerActionMenu_noteContainer] = a1;
  *&v12[OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder] = 0;
  swift_unknownObjectWeakAssign();
  *&v12[OBJC_IVAR___ICNoteContainerActionMenu_presentingBarButtonItem] = a3;
  swift_unknownObjectWeakAssign();
  v18 = *v17;
  *v17 = a5;
  v17[1] = a6;
  v19 = a3;
  v20 = a1;
  sub_100010854(a5);
  sub_10000C840(v18);
  v25.receiver = v12;
  v25.super_class = v7;
  v21 = objc_msgSendSuper2(&v25, "init");
  sub_10000C840(a5);

  return v21;
}

id sub_100396684(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = objc_allocWithZone(v7);
  v13 = [objc_opt_self() sharedContext];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 managedObjectContext];
  }

  else
  {
    v15 = 0;
  }

  *&v12[OBJC_IVAR___ICNoteContainerActionMenu_context] = v15;
  v16 = OBJC_IVAR___ICNoteContainerActionMenu_recentlyDeletedMathNotesFolder;
  *&v12[v16] = [objc_opt_self() globalVirtualRecentlyDeletedMathNotesFolder];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v17 = &v12[OBJC_IVAR___ICNoteContainerActionMenu_completion];
  *v17 = 0;
  v17[1] = 0;
  *&v12[OBJC_IVAR___ICNoteContainerActionMenu_noteContainer] = 0;
  *&v12[OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder] = a1;
  swift_unknownObjectWeakAssign();
  *&v12[OBJC_IVAR___ICNoteContainerActionMenu_presentingBarButtonItem] = a3;
  swift_unknownObjectWeakAssign();
  v18 = *v17;
  *v17 = a5;
  v17[1] = a6;
  v19 = a3;
  v20 = a1;
  sub_100010854(a5);
  sub_10000C840(v18);
  v25.receiver = v12;
  v25.super_class = v7;
  v21 = objc_msgSendSuper2(&v25, "init");
  sub_10000C840(a5);

  return v21;
}

void sub_100396F68()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSUUID) init];
  v5 = [objc_allocWithZone(NSUUID) init];
  v6 = [objc_opt_self() sharedContext];
  if (v6 && (v7 = v6, v8 = [v6 managedObjectContext], v7, v8))
  {
    v9 = swift_allocObject();
    v9[2] = v4;
    v9[3] = v5;
    v9[4] = v8;
    aBlock[4] = sub_100397788;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10028DCE8;
    aBlock[3] = &unk_100659E50;
    v10 = _Block_copy(aBlock);
    v11 = v4;
    v12 = v5;
    v13 = v8;

    [v13 performBlock:v10];
    _Block_release(v10);
  }

  else
  {
    static Logger.audioTranscription.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "no shared context for call recording debug menu item", v16, 2u);
    }

    else
    {
    }

    (*(v1 + 8))(v3, v0);
  }
}

id sub_100397238()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoteContainerActionMenu();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100397340()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_completion);
  sub_100010854(v1);
  return v1;
}

void *sub_100397390()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_presentingBarButtonItem);
  v2 = v1;
  return v1;
}

id sub_10039740C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [objc_opt_self() sharedContext];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 managedObjectContext];
  }

  else
  {
    v13 = 0;
  }

  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_context] = v13;
  v14 = OBJC_IVAR___ICNoteContainerActionMenu_recentlyDeletedMathNotesFolder;
  *&v6[v14] = [objc_opt_self() globalVirtualRecentlyDeletedMathNotesFolder];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = &v6[OBJC_IVAR___ICNoteContainerActionMenu_completion];
  *v15 = 0;
  v15[1] = 0;
  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_noteContainer] = a1;
  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder] = 0;
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_presentingBarButtonItem] = a3;
  swift_unknownObjectWeakAssign();
  v16 = *v15;
  *v15 = a5;
  v15[1] = a6;
  v17 = a3;
  v18 = a1;
  sub_100010854(a5);
  sub_10000C840(v16);
  v20.receiver = v6;
  v20.super_class = type metadata accessor for NoteContainerActionMenu();
  return objc_msgSendSuper2(&v20, "init");
}

id sub_1003975A0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [objc_opt_self() sharedContext];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 managedObjectContext];
  }

  else
  {
    v13 = 0;
  }

  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_context] = v13;
  v14 = OBJC_IVAR___ICNoteContainerActionMenu_recentlyDeletedMathNotesFolder;
  *&v6[v14] = [objc_opt_self() globalVirtualRecentlyDeletedMathNotesFolder];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = &v6[OBJC_IVAR___ICNoteContainerActionMenu_completion];
  *v15 = 0;
  v15[1] = 0;
  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_noteContainer] = 0;
  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder] = a1;
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR___ICNoteContainerActionMenu_presentingBarButtonItem] = a3;
  swift_unknownObjectWeakAssign();
  v16 = *v15;
  *v15 = a5;
  v15[1] = a6;
  v17 = a3;
  v18 = a1;
  sub_100010854(a5);
  sub_10000C840(v16);
  v20.receiver = v6;
  v20.super_class = type metadata accessor for NoteContainerActionMenu();
  return objc_msgSendSuper2(&v20, "init");
}

unint64_t sub_100397734()
{
  result = qword_1006C5C00;
  if (!qword_1006C5C00)
  {
    type metadata accessor for NoteContainerActionMenu();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5C00);
  }

  return result;
}

uint64_t sub_100397C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4();
  v9[0] = a5;
  v9[1] = a6;
  v10 = 2;
  LOBYTE(a6) = isFeatureEnabled(_:)();
  sub_100009F60(v9);
  return a6 & 1;
}

id sub_100397F48()
{
  v1 = v0;
  v2 = sub_100398BC0(&OBJC_IVAR___ICTagOperatorCell____lazy_storage___allAction);
  v3 = OBJC_IVAR___ICTagOperatorCell_tagSelection;
  v4 = *&v1[OBJC_IVAR___ICTagOperatorCell_tagSelection];
  v5 = v4 && [v4 tagOperator] == 1;
  [v2 setState:v5];

  v6 = sub_100398BC0(&OBJC_IVAR___ICTagOperatorCell____lazy_storage___anyAction);
  v7 = *&v1[v3];
  v8 = v7 && [v7 tagOperator] == 2;
  [v6 setState:v8];

  sub_1000054A4(0, &unk_1006C6410);
  sub_10015DA04(&unk_1006BD390);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100531E20;
  v10 = *&v1[OBJC_IVAR___ICTagOperatorCell____lazy_storage___allAction];
  v11 = *&v1[OBJC_IVAR___ICTagOperatorCell____lazy_storage___anyAction];
  *(preferredElementSize + 32) = v10;
  *(preferredElementSize + 40) = v11;
  v12 = v10;
  v13 = v11;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  v15.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v20, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v18).super.super.isa;
  v16 = *&v1[OBJC_IVAR___ICTagOperatorCell____lazy_storage___menu];
  *&v1[OBJC_IVAR___ICTagOperatorCell____lazy_storage___menu] = v15;

  return [v1 setNeedsUpdateConfiguration];
}

uint64_t sub_10039813C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UICellAccessory.DisplayedState();
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10015DA04(&qword_1006BD9D8);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = type metadata accessor for UICellAccessory.PopUpMenuOptions();
  v49 = *(v9 - 8);
  v50 = v9;
  __chkstk_darwin(v9);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10015DA04(&qword_1006C21C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for UIListContentConfiguration();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v47 - v19;
  v21 = v2;
  if ([v2 ic_inSidebar])
  {
    static UIListContentConfiguration.sidebarHeader()();
  }

  else
  {
    static UIListContentConfiguration.prominentInsetGroupedHeader()();
  }

  v22 = type metadata accessor for UICellConfigurationState();
  v57 = v22;
  v58 = &protocol witness table for UICellConfigurationState;
  v23 = sub_100180240(v56);
  (*(*(v22 - 8) + 16))(v23, a1, v22);
  UIListContentConfiguration.updated(for:)();
  v54 = *(v15 + 8);
  v55 = v15 + 8;
  v54(v20, v14);
  sub_100009F60(v56);
  (*(v15 + 32))(v20, v18, v14);
  v24 = sub_100398978();
  v25 = [(objc_class *)v24 selectedElements];

  sub_1000054A4(0, &qword_1006C6400);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = v4;
  v47 = v8;
  if (!result)
  {

    UICollectionViewCell.contentConfiguration.getter();
    if (v57)
    {
      sub_10015DA04(&qword_1006C21D0);
      v31 = swift_dynamicCast();
      (*(v15 + 56))(v13, v31 ^ 1u, 1, v14);
      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        UIListContentConfiguration.text.getter();
        v54(v13, v14);
        goto LABEL_16;
      }
    }

    else
    {
      sub_1000073B4(v56, &qword_1006C21C8);
      (*(v15 + 56))(v13, 1, 1, v14);
    }

    sub_1000073B4(v13, &qword_1006C21C0);
    goto LABEL_16;
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v26 + 32);
LABEL_10:
    v29 = v28;

    v30 = [v29 title];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_16:
    UIListContentConfiguration.text.setter();
    v32 = objc_opt_self();
    v33 = [v32 ICTintColor];
    v34 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v34(v56, 0);
    v35 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    v36 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v36(v56, 0);
    v37 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.numberOfLines.setter();
    v37(v56, 0);
    v57 = v14;
    v58 = &protocol witness table for UIListContentConfiguration;
    v38 = sub_100180240(v56);
    (*(v15 + 16))(v38, v20, v14);
    UICollectionViewCell.contentConfiguration.setter();
    sub_10015DA04(&unk_1006BD9E0);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_100531E30;
    v39 = *&v21[OBJC_IVAR___ICTagOperatorCell____lazy_storage___menu];
    v40 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v40 - 8) + 56))(v47, 1, 1, v40);
    v41 = v39;
    v42 = [v32 ICTintColor];
    v43 = v48;
    UICellAccessory.PopUpMenuOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    v45 = v51;
    v44 = v52;
    v46 = v53;
    (*(v52 + 104))(v51, enum case for UICellAccessory.DisplayedState.always(_:), v53);
    static UICellAccessory.popUpMenu(_:displayed:options:selectedElementDidChangeHandler:)();

    (*(v44 + 8))(v45, v46);
    (*(v49 + 8))(v43, v50);
    UICollectionViewListCell.accessories.setter();
    return (v54)(v20, v14);
  }

  __break(1u);
  return result;
}

objc_class *sub_100398978()
{
  v1 = OBJC_IVAR___ICTagOperatorCell____lazy_storage___menu;
  v2 = *(v0 + OBJC_IVAR___ICTagOperatorCell____lazy_storage___menu);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICTagOperatorCell____lazy_storage___menu);
  }

  else
  {
    sub_1000054A4(0, &unk_1006C6410);
    sub_10015DA04(&unk_1006BD390);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_100531E20;
    v5 = v0;
    *(preferredElementSize + 32) = sub_100398BC0(&OBJC_IVAR___ICTagOperatorCell____lazy_storage___allAction);
    *(preferredElementSize + 40) = sub_100398BC0(&OBJC_IVAR___ICTagOperatorCell____lazy_storage___anyAction);
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v12.value.super.isa = 0;
    v12.is_nil = 0;
    v7.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v12, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v11).super.super.isa;
    v8 = *(v0 + v1);
    *(v5 + v1) = v7;
    v3 = v7.super.super.isa;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_100398BC0(uint64_t *a1)
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
    v5 = [objc_opt_self() mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 localizedStringForKey:v6 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v1;
    v8 = v1;
    v9 = v1;
    v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v11 = *&v1[v2];
    *&v9[v2] = v10;
    v4 = v10;

    v3 = 0;
  }

  v12 = v3;
  return v4;
}

void sub_100398D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + OBJC_IVAR___ICTagOperatorCell_tagSelection);
  if (v3)
  {
    v7 = v3;
    sub_100397F48([v7 setTagOperator:a3]);
    v6 = *(a2 + OBJC_IVAR___ICTagOperatorCell_selectionChangeHandler);
    if (v6)
    {

      v6(v7);
      sub_1002B5F48(v6);
    }
  }
}

id sub_100398E84(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___ICTagOperatorCell_selectionChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR___ICTagOperatorCell_tagSelection] = 0;
  *&v1[OBJC_IVAR___ICTagOperatorCell____lazy_storage___menu] = 0;
  *&v1[OBJC_IVAR___ICTagOperatorCell____lazy_storage___anyAction] = 0;
  *&v1[OBJC_IVAR___ICTagOperatorCell____lazy_storage___allAction] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_10039903C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  sub_100189444(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v4 = v3 + 64;
  v5 = _HashTable.startBucket.getter();
  v6 = *(v3 + 36);
  result = objc_opt_self();
  v37 = result;
  v8 = 0;
  v32 = v3 + 72;
  v33 = v1;
  v34 = v6;
  v35 = v3 + 64;
  v36 = v3;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v6 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v38 = v8;
    v11 = *(*(v3 + 56) + 8 * v5);
    sub_10015DA04(&qword_1006C1A30);
    v39 = v2;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 32) = v11;

    v13 = [v37 mainBundle];
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 localizedStringForKey:v14 value:0 table:0];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10035B3E8(inited, v16, v18);
    v21 = v20;
    swift_bridgeObjectRelease_n();
    swift_setDeallocating();
    v2 = v39;
    sub_10015DA04(&unk_1006C5D10);
    swift_arrayDestroy();

    v23 = v39[2];
    v22 = v39[3];
    if (v23 >= v22 >> 1)
    {
      result = sub_100189444((v22 > 1), v23 + 1, 1);
      v2 = v39;
    }

    v2[2] = v23 + 1;
    v24 = &v2[2 * v23];
    v24[4] = v19;
    v24[5] = v21;
    v3 = v36;
    v9 = 1 << *(v36 + 32);
    if (v5 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v35;
    v25 = *(v35 + 8 * v10);
    if ((v25 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v6) = v34;
    if (v34 != *(v36 + 36))
    {
      goto LABEL_26;
    }

    v26 = v25 & (-2 << (v5 & 0x3F));
    if (v26)
    {
      v9 = __clz(__rbit64(v26)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v10 << 6;
      v28 = v10 + 1;
      v29 = (v32 + 8 * v10);
      while (v28 < (v9 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_1000153F8(v5, v34, 0);
          v9 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_1000153F8(v5, v34, 0);
    }

LABEL_4:
    v8 = v38 + 1;
    v5 = v9;
    if (v38 + 1 == v33)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_1003993C0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___ICMoveHeaderView____lazy_storage___previewView] = 0;
  *&v4[OBJC_IVAR___ICMoveHeaderView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR___ICMoveHeaderView____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR___ICMoveHeaderView____lazy_storage___textStackView] = 0;
  *&v4[OBJC_IVAR___ICMoveHeaderView____lazy_storage___stackView] = 0;
  *&v4[OBJC_IVAR___ICMoveHeaderView_modernContext] = 0;
  *&v4[OBJC_IVAR___ICMoveHeaderView_htmlContext] = 0;
  *&v4[OBJC_IVAR___ICMoveHeaderView_objectIds] = _swiftEmptyArrayStorage;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  sub_1003994B0();

  return v10;
}

void sub_1003994B0()
{
  v1 = [v0 contentView];
  v2 = sub_1003998C4();
  [v1 addSubview:v2];

  v3 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100531E10;
  v5 = OBJC_IVAR___ICMoveHeaderView____lazy_storage___stackView;
  v6 = [*&v0[OBJC_IVAR___ICMoveHeaderView____lazy_storage___stackView] topAnchor];
  v7 = [v0 topAnchor];
  [v0 directionalLayoutMargins];
  v8 = [v6 constraintEqualToAnchor:v7 constant:?];

  *(v4 + 32) = v8;
  v9 = [*&v0[v5] leadingAnchor];
  v10 = [v0 layoutMarginsGuide];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:16.0];
  *(v4 + 40) = v12;
  v13 = [*&v0[v5] bottomAnchor];
  v14 = [v0 bottomAnchor];
  [v0 directionalLayoutMargins];
  v16 = [v13 constraintEqualToAnchor:v14 constant:-v15];

  *(v4 + 48) = v16;
  v17 = [*&v0[v5] trailingAnchor];
  v18 = [v0 layoutMarginsGuide];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 constant:-16.0];
  *(v4 + 56) = v20;
  sub_1000054A4(0, &qword_1006C5D90);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];

  sub_100399928();
}

id sub_1003997C4(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___ICMoveHeaderView____lazy_storage___previewView] = 0;
  *&v1[OBJC_IVAR___ICMoveHeaderView____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR___ICMoveHeaderView____lazy_storage___subtitleLabel] = 0;
  *&v1[OBJC_IVAR___ICMoveHeaderView____lazy_storage___textStackView] = 0;
  *&v1[OBJC_IVAR___ICMoveHeaderView____lazy_storage___stackView] = 0;
  *&v1[OBJC_IVAR___ICMoveHeaderView_modernContext] = 0;
  *&v1[OBJC_IVAR___ICMoveHeaderView_htmlContext] = 0;
  *&v1[OBJC_IVAR___ICMoveHeaderView_objectIds] = _swiftEmptyArrayStorage;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_1003994B0();
  }

  return v5;
}

id sub_1003998C4()
{
  v1 = OBJC_IVAR___ICMoveHeaderView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR___ICMoveHeaderView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICMoveHeaderView____lazy_storage___stackView);
  }

  else
  {
    v4 = sub_100399F20();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100399928()
{
  v1 = sub_100399A58();
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategory.isAccessibilityCategory.getter();
  [v1 setHidden:v2 & 1];

  v6 = sub_100399B2C(&OBJC_IVAR___ICMoveHeaderView____lazy_storage___subtitleLabel, sub_100399C9C);
  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = static UIContentSizeCategory.>= infix(_:_:)();
  [v6 setHidden:v4 & 1];
}

id sub_100399A58()
{
  v1 = OBJC_IVAR___ICMoveHeaderView____lazy_storage___previewView;
  v2 = *(v0 + OBJC_IVAR___ICMoveHeaderView____lazy_storage___previewView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICMoveHeaderView____lazy_storage___previewView);
  }

  else
  {
    type metadata accessor for MovePreviewView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100399B2C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100399B8C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];

  v1 = [objc_opt_self() ic_isVision];
  v2 = &UIFontTextStyleSubheadline;
  if (!v1)
  {
    v2 = &UIFontTextStyleHeadline;
  }

  v3 = *v2;
  v4 = [objc_opt_self() preferredFontForTextStyle:v3];

  [v0 setFont:v4];
  return v0;
}

id sub_100399C9C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  v1 = [objc_opt_self() ic_isVision];
  v2 = &UIFontTextStyleCaption1;
  if (!v1)
  {
    v2 = &UIFontTextStyleSubheadline;
  }

  v3 = *v2;
  v4 = [objc_opt_self() preferredFontForTextStyle:v3];

  [v0 setFont:v4];
  v5 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v5];

  return v0;
}

id sub_100399DC0()
{
  v1 = OBJC_IVAR___ICMoveHeaderView____lazy_storage___textStackView;
  v2 = *(v0 + OBJC_IVAR___ICMoveHeaderView____lazy_storage___textStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICMoveHeaderView____lazy_storage___textStackView);
  }

  else
  {
    sub_10015DA04(&unk_1006BD390);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100531E20;
    *(v4 + 32) = sub_100399B2C(&OBJC_IVAR___ICMoveHeaderView____lazy_storage___titleLabel, sub_100399B8C);
    *(v4 + 40) = sub_100399B2C(&OBJC_IVAR___ICMoveHeaderView____lazy_storage___subtitleLabel, sub_100399C9C);
    v5 = objc_allocWithZone(UIStackView);
    sub_1000054A4(0, &qword_1006C95E0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = [v5 initWithArrangedSubviews:isa];

    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setAxis:1];
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_100399F20()
{
  sub_10015DA04(&unk_1006BD390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100531E20;
  *(v0 + 32) = sub_100399A58();
  *(v0 + 40) = sub_100399DC0();
  v1 = objc_allocWithZone(UIStackView);
  sub_1000054A4(0, &qword_1006C95E0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithArrangedSubviews:isa];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAlignment:3];
  [v3 setSpacing:1.17549435e-38];
  return v3;
}

id sub_10039A028()
{
  result = [objc_opt_self() ic_isVision];
  v1 = 56.0;
  if (result)
  {
    v1 = 72.0;
  }

  qword_1006EF858 = *&v1;
  return result;
}

void sub_10039A3E0(char *a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  v7 = *a4;
  v8 = *&a1[*a4];
  *&a1[*a4] = a3;
  v9 = a3;
  v10 = a1;

  v11 = sub_100399A58();
  v12 = *&a1[v7];
  v13 = v12;

  v14 = *&v11[*a5];
  *&v11[*a5] = v12;
}

void sub_10039A580()
{
  v1 = v0;
  v2 = sub_100399A58();
  *&v2[OBJC_IVAR___ICMovePreviewView_objectIds] = *(v1 + OBJC_IVAR___ICMoveHeaderView_objectIds);

  sub_100226B1C();

  v3 = sub_100399B2C(&OBJC_IVAR___ICMoveHeaderView____lazy_storage___titleLabel, sub_100399B8C);
  sub_10039A6B8();
  v4 = String._bridgeToObjectiveC()();

  [v3 setText:v4];

  v5 = sub_100399B2C(&OBJC_IVAR___ICMoveHeaderView____lazy_storage___subtitleLabel, sub_100399C9C);
  sub_10039A898();
  v6 = String._bridgeToObjectiveC()();

  [v5 setText:v6];
}

uint64_t sub_10039A6B8()
{
  v1 = *(v0 + OBJC_IVAR___ICMoveHeaderView_objectIds);
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v1 + 8 * v3 + 32);
      }

      v7 = v6;
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v18 = v6;
      sub_10039AB9C(&v18, v15, &v16);

      v9 = v17;
      if (v17)
      {
        v10 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1001CAE70(0, *(v4 + 2) + 1, 1, v4);
        }

        v12 = *(v4 + 2);
        v11 = *(v4 + 3);
        if (v12 >= v11 >> 1)
        {
          v4 = sub_1001CAE70((v11 > 1), v12 + 1, 1, v4);
        }

        *(v4 + 2) = v12 + 1;
        v5 = &v4[16 * v12];
        *(v5 + 4) = v10;
        *(v5 + 5) = v9;
      }

      ++v3;
      if (v8 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_18:

  v16 = v4;
  sub_10015DA04(&qword_1006C13F0);
  sub_10039B3E4();
  v13 = Sequence<>.formatted()();

  return v13;
}

void sub_10039A898()
{
  sub_10015DA04(&qword_1006C5CE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100535E30;
  strcpy((inited + 32), "%lld Folders");
  v22 = v0;
  v23 = inited;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v21 = OBJC_IVAR___ICMoveHeaderView_objectIds;
  v2 = *(v0 + OBJC_IVAR___ICMoveHeaderView_objectIds);
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_32:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 0;
  while (v4 != v6)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_29;
      }

      v7 = *(v2 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v10 = [v7 ic_isFolderType];

    ++v6;
    if (v10)
    {
      v6 = v9;
      v11 = __OFADD__(v5++, 1);
      if (v11)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }
    }
  }

  v23[6] = v5;
  v23[7] = 0x746F4E20646C6C25;
  v23[8] = 0xEA00000000007365;
  v12 = *(v22 + v21);
  v3 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = 0;
  while (v2 != v14)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(v12 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_30;
    }

    v18 = [v15 ic_isNoteType];

    ++v14;
    if (v18)
    {
      v14 = v17;
      v11 = __OFADD__(v13++, 1);
      if (v11)
      {
        goto LABEL_34;
      }
    }
  }

  v23[9] = v13;
  v19 = sub_1001917D0(v23);
  swift_setDeallocating();
  sub_10015DA04(&unk_1006C5CF0);
  swift_arrayDestroy();
  v20 = sub_10039AF5C(v19);

  sub_10039903C(v20);

  sub_10015DA04(&qword_1006C13F0);
  sub_10039B3E4();
  Sequence<>.formatted()();
}

void sub_10039AB9C(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if ([*a1 ic_isModernFolderType])
  {
    v6 = *(a2 + OBJC_IVAR___ICMoveHeaderView_modernContext);
    if (!v6)
    {
      goto LABEL_26;
    }

    v7 = [v6 objectWithID:v5];
    if (!v7)
    {
      goto LABEL_26;
    }

    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = [v9 localizedTitle];
LABEL_6:
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      *a3 = v12;
      a3[1] = v14;
      return;
    }

    goto LABEL_25;
  }

  if ([v5 ic_isModernNoteType])
  {
    v15 = *(a2 + OBJC_IVAR___ICMoveHeaderView_modernContext);
    if (!v15)
    {
      goto LABEL_26;
    }

    v16 = [v15 objectWithID:v5];
    if (!v16)
    {
      goto LABEL_26;
    }

    v8 = v16;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {
      goto LABEL_25;
    }

    v18 = [v17 title];
    if (v18)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  if ([v5 ic_isLegacyFolderType])
  {
    v23 = *(a2 + OBJC_IVAR___ICMoveHeaderView_htmlContext);
    if (!v23)
    {
      goto LABEL_26;
    }

    v24 = [v23 objectWithID:v5];
    if (!v24)
    {
      goto LABEL_26;
    }

    v8 = v24;
    v25 = swift_dynamicCastObjCProtocolConditional();
    if (v25)
    {
      v10 = [v25 localizedTitle];
      goto LABEL_6;
    }

    goto LABEL_25;
  }

  if (![v5 ic_isLegacyNoteType])
  {
    goto LABEL_26;
  }

  v26 = *(a2 + OBJC_IVAR___ICMoveHeaderView_htmlContext);
  if (!v26)
  {
    goto LABEL_26;
  }

  v27 = [v26 objectWithID:v5];
  if (!v27)
  {
    goto LABEL_26;
  }

  v8 = v27;
  v28 = swift_dynamicCastObjCProtocolConditional();
  if (v28)
  {
    v18 = [v28 title];
    if (v18)
    {
LABEL_12:
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

LABEL_24:
      *a3 = v20;
      a3[1] = v22;
      return;
    }

LABEL_23:

    v20 = 0;
    v22 = 0;
    goto LABEL_24;
  }

LABEL_25:

LABEL_26:
  *a3 = 0;
  a3[1] = 0;
}

unint64_t *sub_10039AEE4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_10039B0BC(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_10039AF5C(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_10039B0BC(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_10039AEE4(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_10039B0BC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_10039B1A8(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_10039B1A8(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10039B1A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10015DA04(&qword_1006BDC68);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 8 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_10039B3E4()
{
  result = qword_1006C5D00;
  if (!qword_1006C5D00)
  {
    sub_10017992C(&qword_1006C13F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5D00);
  }

  return result;
}

uint64_t sub_10039B448()
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
  sub_100025918(v10, static NotesView.typeDisplayRepresentation);
  sub_10002597C(v10, static NotesView.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t NotesView.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_1006BC840 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_10002597C(v0, static NotesView.typeDisplayRepresentation);
}

uint64_t static NotesView.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC840 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10002597C(v2, static NotesView.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

MobileNotes::NotesView_optional __swiftcall NotesView.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064D198, v2);

  if (v3 == 1)
  {
    v4.value = MobileNotes_NotesView_folderList;
  }

  else
  {
    v4.value = MobileNotes_NotesView_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t NotesView.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x694C7265646C6F66;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_10039B8C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x694C7265646C6F66;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = 0x800000010055CDF0;
  }

  else
  {
    v4 = 0xEA00000000007473;
  }

  if (*a2)
  {
    v5 = 0x694C7265646C6F66;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007473;
  }

  else
  {
    v6 = 0x800000010055CDF0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_10039B974@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10064D198, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10039B9D4(unint64_t *a1@<X8>)
{
  v2 = 0x800000010055CDF0;
  v3 = 0xD000000000000011;
  if (*v1)
  {
    v3 = 0x694C7265646C6F66;
    v2 = 0xEA00000000007473;
  }

  *a1 = v3;
  a1[1] = v2;
}

Swift::Int sub_10039BA1C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10039BAA8()
{
  String.hash(into:)();
}

Swift::Int sub_10039BB20()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10039BBA8(uint64_t a1)
{
  v2 = sub_100179AA8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10039BBF4()
{
  v0 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v0 - 8);
  v39 = v27 - v1;
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v38 = v27 - v3;
  v40 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v29 = v11;
  v42 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_10015DA04(&unk_1006C5DF0);
  v12 = sub_10015DA04(&qword_1006BDD10);
  v41 = v12;
  v13 = *(v12 - 8);
  v37 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v32 = v15;
  *(v15 + 16) = xmmword_100535E30;
  v36 = *(v12 + 48);
  *(v15 + v14) = 0;
  v16 = v15 + v14;
  String.LocalizationValue.init(stringLiteral:)();
  v27[1] = v9;
  static Locale.current.getter();
  v33 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v4 + 104);
  v34 = v4 + 104;
  v35 = v17;
  v28 = v6;
  v17(v6);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v18 = *(v42 + 56);
  v42 += 56;
  v30 = v18;
  v19 = v38;
  v18(v38, 1, 1, v11);
  v20 = type metadata accessor for DisplayRepresentation.Image();
  v21 = *(*(v20 - 8) + 56);
  v22 = v39;
  v21(v39, 1, 1, v20);
  v31 = v16;
  v23 = v22;
  DisplayRepresentation.init(title:subtitle:image:)();
  v24 = (v16 + v37);
  v37 = *(v41 + 48);
  *v24 = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v35(v28, v33, v40);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v30(v19, 1, 1, v29);
  v21(v23, 1, 1, v20);
  DisplayRepresentation.init(title:subtitle:image:)();
  v25 = sub_1001918CC(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static NotesView.caseDisplayRepresentations = v25;
  return result;
}

uint64_t *NotesView.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_1006BC848 != -1)
  {
    swift_once();
  }

  return &static NotesView.caseDisplayRepresentations;
}

uint64_t static NotesView.caseDisplayRepresentations.getter()
{
  if (qword_1006BC848 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10039C220()
{
  result = qword_1006C5D98;
  if (!qword_1006C5D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5D98);
  }

  return result;
}

unint64_t sub_10039C278()
{
  result = qword_1006C5DA0;
  if (!qword_1006C5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5DA0);
  }

  return result;
}

unint64_t sub_10039C2D0()
{
  result = qword_1006C5DA8;
  if (!qword_1006C5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5DA8);
  }

  return result;
}

unint64_t sub_10039C328()
{
  result = qword_1006C5DB0;
  if (!qword_1006C5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5DB0);
  }

  return result;
}

unint64_t sub_10039C37C()
{
  result = qword_1006C5DB8;
  if (!qword_1006C5DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5DB8);
  }

  return result;
}

unint64_t sub_10039C3D4()
{
  result = qword_1006C5DC0;
  if (!qword_1006C5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5DC0);
  }

  return result;
}

unint64_t sub_10039C47C()
{
  result = qword_1006C5DC8;
  if (!qword_1006C5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5DC8);
  }

  return result;
}

unint64_t sub_10039C4D4()
{
  result = qword_1006C5DD0;
  if (!qword_1006C5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5DD0);
  }

  return result;
}

unint64_t sub_10039C52C()
{
  result = qword_1006C5DD8;
  if (!qword_1006C5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5DD8);
  }

  return result;
}

uint64_t sub_10039C580(uint64_t a1)
{
  v2 = sub_10039C3D4();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10039C5D0()
{
  result = qword_1006C5DE0;
  if (!qword_1006C5DE0)
  {
    sub_10017992C(&qword_1006C5DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5DE0);
  }

  return result;
}

void sub_10039C704()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }
}

uint64_t sub_10039C894()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_10039C900(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v3;
  static Published.subscript.setter();
  sub_10039C704();
}

uint64_t sub_10039CA84(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  return v4;
}

uint64_t sub_10039CB28(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_10039CB94(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10039CCC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10039CDD0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10039CE50(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10039CEC8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10039CF44(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

id sub_10039CFBC()
{
  ObjectType = swift_getObjectType();
  sub_10039D018();
  *&v0[OBJC_IVAR___ICCollaborationButtonsController_collaboratorDataSourceObservation] = 0;

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10039D018()
{
  v1 = OBJC_IVAR___ICCollaborationButtonsController_activityDigestSummaryObservation;
  if (*(v0 + OBJC_IVAR___ICCollaborationButtonsController_activityDigestSummaryObservation))
  {

    AnyCancellable.cancel()();
  }

  *(v0 + OBJC_IVAR___ICCollaborationButtonsController_activityStreamUpdater) = 0;

  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR___ICCollaborationButtonsController_showsCollaboratorCursorsObservation) = 0;
}

uint64_t sub_10039D3B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

void sub_10039D428()
{
  v1 = v0;
  v2 = sub_10015DA04(&qword_1006BE9A0);
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v26 = &v25 - v3;
  v4 = type metadata accessor for Logger();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v5 = sub_10015DA04(&qword_1006C5F38);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_10015DA04(&qword_1006C5F40);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v32 = OBJC_IVAR___ICCollaborationButtonsController_activityDigestSummaryObservation;
  if (*&v0[OBJC_IVAR___ICCollaborationButtonsController_activityDigestSummaryObservation])
  {

    AnyCancellable.cancel()();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = v33;
  if (!v33)
  {
    *&v1[OBJC_IVAR___ICCollaborationButtonsController_activityStreamUpdater] = 0;

    *&v1[v32] = 0;

    *&v1[OBJC_IVAR___ICCollaborationButtonsController_showsCollaboratorCursorsObservation] = 0;
LABEL_6:

    return;
  }

  objc_allocWithZone(type metadata accessor for ActivityEventResolver());
  v30 = v12;
  v31 = ActivityEventResolver.init(object:)();
  sub_10015DA04(&qword_1006C42F0);
  Empty.init(completeImmediately:)();
  sub_1000060B4(&qword_1006C5F48, &qword_1006C5F40);
  Publisher.eraseToAnyPublisher()();
  (*(v9 + 8))(v11, v8);
  sub_10015DA04(&qword_1006C5F50);
  Empty.init(completeImmediately:)();
  sub_1000060B4(&qword_1006C5F58, &qword_1006C5F38);
  Publisher.eraseToAnyPublisher()();
  (*(v29 + 8))(v7, v5);
  type metadata accessor for ActivityStream.Updater();
  swift_allocObject();
  v13 = ActivityStream.Updater.init(resolver:selection:pressedItem:)();
  v14 = OBJC_IVAR___ICCollaborationButtonsController_activityStreamUpdater;
  *&v1[OBJC_IVAR___ICCollaborationButtonsController_activityStreamUpdater] = v13;

  v15 = *&v1[v14];
  if (v15)
  {

    v16 = ActivityStream.Updater.activityDigestSummary.getter();

    v33 = v16;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10015DA04(&qword_1006C5F60);
    sub_1000060B4(&qword_1006C5F68, &qword_1006C5F60);
    v15 = Publisher<>.sink(receiveValue:)();
  }

  *&v1[v32] = v15;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = v33;
  if (v33)
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (!v18)
    {

      return;
    }

    v19 = v18;
    if (_s11MobileNotes31RealtimeCollaborationControllerC02iscD7Enabled3forSbSo6ICNoteC_tFZ_0(v18))
    {
      v20 = [v19 showsCollaboratorCursors];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v33) = v20;
      v21 = v1;
      static Published.subscript.setter();
      swift_beginAccess();
      sub_10015DA04(&qword_1006C5F70);
      v22 = v26;
      Published.projectedValue.getter();
      swift_endAccess();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1000060B4(&qword_1006C5F78, &qword_1006BE9A0);
      v23 = v28;
      v24 = Publisher<>.sink(receiveValue:)();

      (*(v27 + 8))(v22, v23);
      *&v21[OBJC_IVAR___ICCollaborationButtonsController_showsCollaboratorCursorsObservation] = v24;
      goto LABEL_6;
    }
  }
}

uint64_t sub_10039DC84(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006C5EF0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100026B50(a1, v7);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100026B50(v7, v5);
    static Published.subscript.setter();
    return sub_1000073B4(v7, &qword_1006C5EF0);
  }

  return result;
}

void sub_10039DDB8(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10039DE14(v1);
  }
}

void sub_10039DE14(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      if ([v2 showsCollaboratorCursors] != (a1 & 1))
      {
        [v3 setShowsCollaboratorCursors:?];
      }
    }
  }
}

id sub_10039DEDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3)
  {
    if ([v3 canBeSharedViaICloud])
    {
      v0 = [objc_allocWithZone(NSItemProvider) init];
      v1 = [objc_opt_self() sharedInstance];
      [v1 registerShareForObject:v3 itemProvider:v0 generateThumbnails:0];

      return v0;
    }
  }

  return 0;
}

id sub_10039E01C()
{
  v1 = OBJC_IVAR___ICCollaborationButtonsController____lazy_storage___buttonItem;
  v2 = *&v0[OBJC_IVAR___ICCollaborationButtonsController____lazy_storage___buttonItem];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___ICCollaborationButtonsController____lazy_storage___buttonItem];
  }

  else
  {
    v4 = sub_10039E0C8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10039E0C8(void *a1)
{
  swift_getObjectType();
  v2 = sub_10039DEDC();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(_SWCollaborationBarButtonItem) initWithItemProvider:v2];
    sub_1003A1254(&qword_1006C5EF8, type metadata accessor for CollaborationButtonsController);
    v5 = a1;
    v6 = ObservedObject.init(wrappedValue:)();
    v8 = v7;
    State.init(wrappedValue:)();
    LOBYTE(v18) = v16;
    sub_10015DA04(&qword_1006C5F00);
    sub_1000060B4(&qword_1006C5F08, &qword_1006C5F00);
    _SWCollaborationBarButtonItem.setDetailViewListContent<A>(_:)();

    [v4 setShowManageButton:{0, v6, v8, v18, v17, 4}];
    v9 = objc_opt_self();
    v10 = v4;
    v11 = [v9 mainBundle];
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 localizedStringForKey:v12 value:0 table:0];

    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String._bridgeToObjectiveC()();
    }

    [v10 setTitle:v13];

    return v10;
  }

  else
  {
    v15 = objc_allocWithZone(UIBarButtonItem);

    return [v15 init];
  }
}

void sub_10039E438()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong showsActivityStream];

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  static Published.subscript.setter();
  v3 = swift_unknownObjectUnownedLoadStrong();
  v4 = [v3 noteEditorViewController];

  [v4 attributionSidebarVisibility];
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;
  static Published.subscript.setter();
  sub_10039E640();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8)
  {
    v6 = [v8 cloudAccount];

    if (v6)
    {
      [objc_opt_self() isSyncAvailableForAccount:v6];
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v5;
  static Published.subscript.setter();
  sub_10039D428();
}

void sub_10039E640()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8[0] && (v1 = [v8[0] cloudAccount], v8[0], v1) && (v2 = objc_msgSend(v1, "identifier"), v1, v2) && (v3 = objc_msgSend(objc_opt_self(), "sharedContext"), v4 = objc_msgSend(v3, "containerForAccountID:", v2), v3, v2, v4))
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_1003A1244;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10039F270;
    v8[3] = &unk_10065A308;
    v6 = _Block_copy(v8);

    [v4 accountInfoWithCompletionHandler:v6];
    _Block_release(v6);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v0;
    static Published.subscript.setter();
  }
}

void sub_10039E8F8()
{
  v0 = type metadata accessor for ICActivityStreamDigest.Summary.Participants();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10015DA04(&qword_1006C5EF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v19;
  if (v19)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = type metadata accessor for ICActivityStreamDigest.Summary();
    if ((*(*(v8 - 8) + 48))(v6, 1, v8))
    {
      sub_1000073B4(v6, &qword_1006C5EF0);
    }

    else
    {
      ICActivityStreamDigest.Summary.participants.getter();
      v9 = ICActivityStreamDigest.Summary.Participants.userIds.getter();
      (*(v1 + 8))(v3, v0);
      sub_1000073B4(v6, &qword_1006C5EF0);
      v19 = _swiftEmptyArrayStorage;
      v10 = *(v9 + 16);
      v11 = v7;
      v12 = 0;
      v13 = v9 + 40;
      v18 = v9 + 40;
LABEL_5:
      v14 = v13 + 16 * v12;
      while (1)
      {
        if (v10 == v12)
        {

          return;
        }

        if (v12 >= *(v9 + 16))
        {
          break;
        }

        ++v12;
        v15 = v14 + 16;

        v16 = String._bridgeToObjectiveC()();
        v17 = [v11 participantForUserID:v16];

        v14 = v15;
        if (v17)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v13 = v18;
          goto LABEL_5;
        }
      }

      __break(1u);
    }
  }
}

void sub_10039EC3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v11[0];
  if (v11[0])
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = swift_allocObject();
      v4[2] = v0;
      v4[3] = v3;
      v5 = v0;
      v6 = v1;
      v7 = sub_10039E01C();
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        v11[4] = sub_1003A122C;
        v11[5] = v4;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 1107296256;
        v11[2] = sub_10028DCE8;
        v11[3] = &unk_10065A2E0;
        v10 = _Block_copy(v11);

        [v9 dismissPopoverAnimated:1 completion:v10];
        _Block_release(v10);
      }

      sub_10039D018();
    }

    else
    {
    }
  }
}

void sub_10039EDEC(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = [a2 objectID];
  [Strong showRecentUpdatesForNoteWithObjectID:v4];
}

uint64_t sub_10039EEB8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, &qword_1006BE9E0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1003A124C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_10065A358;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003A1254(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_1000060B4(&qword_1006C1140, &unk_1006C3F20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v17 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v16);
}

void sub_10039F1B8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v4 = a2;
      [v4 deviceToDeviceEncryptionAvailability];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }

    else
    {
    }
  }
}

void sub_10039F270(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10039F2FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v14[0])
  {
    v0 = [v14[0] cloudAccount];

    if (v0)
    {
      v1 = [v0 altDSID];

      if (v1)
      {
        v2 = [objc_allocWithZone(CDPUIDeviceToDeviceEncryptionFlowContext) initWithAltDSID:v1];

        [v2 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
        [v2 setDeviceToDeviceEncryptionUpgradeType:0];
        v3 = [objc_opt_self() mainBundle];
        v4 = String._bridgeToObjectiveC()();
        v5 = [v3 localizedStringForKey:v4 value:0 table:0];

        if (!v5)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v5 = String._bridgeToObjectiveC()();
        }

        [v2 setFeatureName:v5];

        Strong = swift_unknownObjectUnownedLoadStrong();
        v7 = [Strong activeEditorController];

        [v2 setPresentingViewController:v7];
        v8 = swift_allocObject();
        v8[2] = v2;
        v9 = v2;
        v10 = sub_10039E01C();
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          v12 = v11;
          v14[4] = sub_1003A1224;
          v14[5] = v8;
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 1107296256;
          v14[2] = sub_10028DCE8;
          v14[3] = &unk_10065A290;
          v13 = _Block_copy(v14);

          [v12 dismissPopoverAnimated:1 completion:v13];
          _Block_release(v13);
        }

        sub_10039D018();
      }
    }
  }
}

void sub_10039F604(uint64_t a1)
{
  v1 = [objc_allocWithZone(CDPUIDeviceToDeviceEncryptionHelper) initWithContext:a1];
  [v1 performDeviceToDeviceEncryptionStateRepairWithCompletion:0];
}

uint64_t sub_10039F6B8(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v2 - 8);
  v4 = &v43 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v43 - v10;
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1000073B4(v4, &qword_1006BCC20);
  }

  v13 = *(v6 + 32);
  v45 = v6 + 32;
  v46 = v13;
  v13(v11, v4, v5);
  v48 = v11;
  v14 = objc_opt_self();
  v44 = v5;
  v15 = v14;
  v16 = [v14 mainBundle];
  v47 = a1;
  v17 = v16;
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 localizedStringForKey:v18 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v15;
  v20 = [v15 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 localizedStringForKey:v21 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = String._bridgeToObjectiveC()();

  v24 = String._bridgeToObjectiveC()();

  v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

  v26 = [v15 mainBundle];
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 localizedStringForKey:v27 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v44;
  (*(v6 + 16))(v9, v48, v44);
  v30 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v31 = swift_allocObject();
  v46(v31 + v30, v9, v29);
  v32 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1003A11B4;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002DEFE0;
  aBlock[3] = &unk_10065A240;
  v33 = _Block_copy(aBlock);

  v34 = objc_opt_self();
  v35 = [v34 actionWithTitle:v32 style:0 handler:v33];
  _Block_release(v33);

  [v25 addAction:v35];
  v36 = [v43 mainBundle];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 localizedStringForKey:v37 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = String._bridgeToObjectiveC()();

  v40 = [v34 actionWithTitle:v39 style:1 handler:0];

  [v25 addAction:v40];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v42 = [Strong activeEditorController];

  [v42 presentViewController:v25 animated:1 completion:0];
  return (*(v6 + 8))(v48, v29);
}

void sub_10039FCF0()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v2 = v0;
    URL._bridgeToObjectiveC()(v1);
    v4 = v3;
    sub_10018F334(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 openSensitiveURL:v4 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_10039FE34(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2 && (v3 = v2, v4 = [a1 userIdentity], v5 = objc_msgSend(v4, "userRecordID"), v4, v5))
    {
      v6 = [v5 recordName];

      if (!v6)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = String._bridgeToObjectiveC()();
      }

      v7 = [v3 collaborationColorManager];
      v8 = [v7 highlightColorForUserID:v6 note:v3];

      if (v8)
      {
        Color.init(_:)();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10039FFB8(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  v5 = a1;
  v6 = sub_10039E01C();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v11[4] = sub_1003A11A4;
    v11[5] = v3;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10028DCE8;
    v11[3] = &unk_10065A1A0;
    v9 = _Block_copy(v11);

    [v8 dismissPopoverAnimated:1 completion:v9];
    _Block_release(v9);
  }

  sub_10039D018();
}

void sub_1003A00E8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    v3 = [v5 objectID];

    if (v3)
    {
      if ([v3 ic_isModernNoteType])
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        [Strong showSelectionForParticipant:a2 noteObjectID:v3];

        v3 = Strong;
      }
    }
  }
}

uint64_t sub_1003A03C8(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = v1;
  v5 = sub_10039E01C();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v10[4] = sub_1003A1198;
    v10[5] = v3;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10028DCE8;
    v10[3] = &unk_10065A150;
    v8 = _Block_copy(v10);

    [v7 dismissPopoverAnimated:1 completion:v8];
    _Block_release(v8);
  }

  sub_10039D018();
}

void sub_1003A04F8(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v4 = Strong;
    if (a2)
    {
      v5 = [v6 objectID];
      [v4 showActivityStreamForObjectWithObjectID:v5];

      v4 = v5;
    }

    else
    {
      [Strong hideActivityStreamWithCompletion:0];
    }
  }
}

uint64_t sub_1003A063C(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = v1;
  v5 = sub_10039E01C();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v10[4] = sub_1003A118C;
    v10[5] = v3;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10028DCE8;
    v10[3] = &unk_10065A100;
    v8 = _Block_copy(v10);

    [v7 dismissPopoverAnimated:1 completion:v8];
    _Block_release(v8);
  }

  sub_10039D018();
}

void sub_1003A076C(char a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong noteEditorViewController];

  v4 = [v3 attributionSidebarController];
  if (a1)
  {
    if (!v4)
    {
      return;
    }

    [v4 showSidebarAnimated:1];
  }

  else
  {
    if (!v4)
    {
      return;
    }

    [v4 hideSidebarAnimated:1 contextPath:1];
  }
}

uint64_t sub_1003A08AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = v3;
  v8 = sub_10039E01C();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v13[4] = a2;
    v13[5] = v6;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10028DCE8;
    v13[3] = a3;
    v11 = _Block_copy(v13);

    [v10 dismissPopoverAnimated:1 completion:v11];
    _Block_release(v11);
  }

  sub_10039D018();
}

uint64_t sub_1003A09BC(uint64_t result)
{
  v1 = *(result + OBJC_IVAR___ICCollaborationButtonsController_didPressManageShareButton);
  if (v1)
  {

    v1(v2);

    return sub_10000C840(v1);
  }

  return result;
}

uint64_t sub_1003A0A94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1003A0B9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t sub_1003A0C34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1003A0CE4(uint64_t a1)
{
  result = sub_1003A1254(&qword_1006C5EF8, type metadata accessor for CollaborationButtonsController);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003A0D44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1003A0DC0(uint64_t a1, void **a2)
{
  v4 = sub_10015DA04(&qword_1006C5EF0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_100026B50(a1, &v13 - v8);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100026B50(v9, v7);
  v11 = v10;
  static Published.subscript.setter();
  return sub_1000073B4(v9, &qword_1006C5EF0);
}

void sub_1003A0EDC(uint64_t a1)
{
  v3 = [objc_allocWithZone(CNContactStore) init];
  sub_10015DA04(&unk_1006BD390);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100534670;
  v5 = objc_opt_self();
  *(v4 + 32) = [v5 descriptorForRequiredKeys];
  sub_10015DA04(&qword_1006C5F30);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v3 ic_existingOrNewContactFromParticipant:a1 keysToFetch:isa];

  v7 = [v18 hasBeenPersisted];
  v8 = &selRef_viewControllerForContact_;
  if (!v7)
  {
    v8 = &selRef_viewControllerForUnknownContact_;
  }

  v9 = [v5 *v8];
  [v9 setContactStore:v3];
  v10 = v9;
  v11 = [v10 navigationItem];
  v12 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v1 action:"hideContactCard"];
  [v11 setLeftBarButtonItem:v12];

  v13 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v10];
  v14 = v13;
  [v14 setModalPresentationStyle:3];
  [v14 setModalTransitionStyle:2];

  Strong = swift_unknownObjectUnownedLoadStrong();
  v16 = [Strong activeEditorController];

  v17 = [v16 presentedViewController];
  if (v17)
  {
    [v17 presentViewController:v14 animated:1 completion:0];

    v10 = v14;
    v14 = v17;
  }
}

void sub_1003A11B4()
{
  type metadata accessor for URL();

  sub_10039FCF0();
}

uint64_t sub_1003A1254(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1003A12EC(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v29 = v1;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v32 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      sub_10015DA04(&unk_1006BD390);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100534670;
      *(v6 + 32) = v4;
      v7 = v4;
      v8 = [v7 recursiveVisibleSubfolders];
      sub_1000054A4(0, &qword_1006BF450);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v35[0] = v6;
      sub_1002DCA50(v9);

      v10 = v35[0];
      v11 = v35[0] >> 62;
      if (v35[0] >> 62)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v12 = *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v36 = v12;
      v5 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12);
      v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
      if (v5)
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          goto LABEL_22;
        }

LABEL_21:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_22;
      }

      if (v13)
      {
        goto LABEL_21;
      }

      v15 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = v3;
        goto LABEL_23;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v34 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v11)
      {
        v19 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v15 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v17 >> 1) - v16) < v36)
          {
            goto LABEL_43;
          }

          v20 = v15 + 8 * v16 + 32;
          v30 = v15;
          if (v11)
          {
            if (v18 < 1)
            {
              goto LABEL_45;
            }

            sub_1000060B4(&qword_1006C3690, &qword_1006C3688);
            for (i = 0; i != v18; ++i)
            {
              sub_10015DA04(&qword_1006C3688);
              v22 = sub_10037530C(v35, i, v10);
              v24 = *v23;
              (v22)(v35, 0);
              *(v20 + 8 * i) = v24;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v29;
          v3 = v34;
          if (v36 >= 1)
          {
            v25 = *(v30 + 16);
            v5 = __OFADD__(v25, v36);
            v26 = v25 + v36;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v30 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v36 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1003A16D4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject visibleNotes];
      sub_1000054A4(0, &qword_1006C1420);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v32 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_1000060B4(&qword_1006BD808, &qword_1006BD800);
            for (i = 0; i != v16; ++i)
            {
              sub_10015DA04(&qword_1006BD800);
              v19 = sub_10037530C(v31, i, v8);
              v21 = *v20;
              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v32;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v30;
      if (v30 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1003A1A68(void *a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10015DA04(&qword_1006BF728);
  v45 = v6;
  v47 = *(v6 - 8);
  v7 = v47;
  __chkstk_darwin(v6);
  v46 = &v43 - v8;
  v9 = sub_10015DA04(&qword_1006C5FE8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v44 = v3;
  *&v3[OBJC_IVAR___ICMoveDataSource_accountsChangeObservation] = 0;
  (*(v7 + 56))(&v3[OBJC_IVAR___ICMoveDataSource____lazy_storage___accountsChangePublisher], 1, 1, v6);
  v50 = sub_1003A4DC0(a1, a2);
  v43 = sub_1003A21F4(a1, v50, a2);
  v49 = v16;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  type metadata accessor for MoveHeaderView();
  v18 = a1;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v19 = *(v10 + 32);
  v19(v13, v15, v9);
  v20 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  v19((v21 + v20), v13, v9);
  v56 = v43;
  v57 = v49;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_1003574C0;
  v55 = &unk_10065A420;
  v22 = _Block_copy(&aBlock);
  v23 = v18;

  v51.receiver = v44;
  v51.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v51, "initWithCollectionView:cellProvider:indexer:", v23, v22, v50);
  _Block_release(v22);
  v25 = v24;
  v26 = [v25 collectionViewDiffableDataSource];
  v56 = sub_1003A51C8;
  v57 = v21;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_1003A2A60;
  v55 = &unk_10065A448;
  v27 = _Block_copy(&aBlock);

  [v26 setSupplementaryViewProvider:v27];
  _Block_release(v27);

  if ([objc_opt_self() ic_isVision])
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  [v25 setAutoExpandMode:v28];

  sub_10015DA04(&unk_1006BD390);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100534670;
  v30 = objc_allocWithZone(NSNumber);
  v31 = v25;
  *(v29 + 32) = [v30 initWithUnsignedInteger:1];
  sub_1000054A4(0, &qword_1006C3F30);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 setSectionTypes:isa];

  v33 = [objc_allocWithZone(UICollectionViewDiffableDataSourceSectionSnapshotHandlers) init];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = sub_1003A5270;
  v57 = v34;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_1003A2BB4;
  v55 = &unk_10065A498;
  v35 = _Block_copy(&aBlock);

  [v33 setWillExpandItemHandler:v35];
  _Block_release(v35);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = sub_1003A5294;
  v57 = v36;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_1003A2BB4;
  v55 = &unk_10065A4C0;
  v37 = _Block_copy(&aBlock);

  [v33 setWillCollapseItemHandler:v37];
  _Block_release(v37);
  v38 = [v31 collectionViewDiffableDataSource];

  [v38 setSectionSnapshotHandlers:v33];
  v39 = v46;
  sub_1003A2CDC(v46);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1000060B4(&qword_1006BF740, &qword_1006BF728);
  v40 = v45;
  v41 = Publisher<>.sink(receiveValue:)();

  (*(v47 + 8))(v39, v40);
  *&v31[OBJC_IVAR___ICMoveDataSource_accountsChangeObservation] = v41;

  return v31;
}

uint64_t (*sub_1003A21F4(void *a1, void *a2, unint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v81 = a1;
  v4 = sub_10015DA04(&qword_1006BF730);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v8 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v58 - v9;
  v11 = sub_10015DA04(&qword_1006C5FF8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v76 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v58 - v15;
  v75 = sub_10015DA04(&qword_1006C6000);
  v68 = *(v75 - 8);
  v16 = __chkstk_darwin(v75);
  v74 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v17;
  __chkstk_darwin(v16);
  v62 = &v58 - v18;
  v73 = sub_10015DA04(&qword_1006C6008);
  v64 = *(v73 - 8);
  v19 = __chkstk_darwin(v73);
  v72 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v20;
  __chkstk_darwin(v19);
  v60 = &v58 - v21;
  v77 = v11;
  v69 = v12;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v23 = _swiftEmptyArrayStorage;
    v78 = v8;
    v79 = v4;
    v70 = v6;
    v71 = v5;
    if (!i)
    {
LABEL_16:
      v39 = v67;
      v40 = v65;
      v41 = v61;
      *(swift_allocObject() + 16) = v41;
      sub_1000054A4(0, &qword_1006C6010);
      sub_1000054A4(0, &qword_1006C6018);
      v42 = v41;
      v43 = v60;
      UICollectionView.CellRegistration.init(handler:)();
      *(swift_allocObject() + 16) = v23;
      sub_1000054A4(0, &qword_1006BF738);
      sub_1000054A4(0, &qword_1006BFBD0);

      v44 = v62;
      UICollectionView.CellRegistration.init(handler:)();
      v45 = v81;
      sub_1003A34C0(v81, v23);
      v46 = swift_allocObject();
      v46[2] = v39;
      v46[3] = v45;
      v46[4] = v23;
      sub_1000054A4(0, &qword_1006BFEC0);
      v47 = v45;
      UICollectionView.CellRegistration.init(handler:)();
      v48 = v64 + 32;
      v81 = *(v64 + 32);
      (v81)(v72, v43, v73);
      v49 = v68 + 32;
      v80 = *(v68 + 32);
      (v80)(v74, v44, v75);
      v50 = v69 + 32;
      v69 = *(v69 + 32);
      (v69)(v76, v40, v77);
      v51 = v71 + 4;
      v71 = v71[4];
      (v71)(v78, v10, v79);
      v52 = (*(v48 + 48) + 24) & ~*(v48 + 48);
      v53 = (v63 + *(v49 + 48) + v52) & ~*(v49 + 48);
      v54 = (v66 + *(v50 + 48) + v53) & ~*(v50 + 48);
      v55 = (v13 + *(v51 + 48) + v54) & ~*(v51 + 48);
      v56 = swift_allocObject();
      *(v56 + 16) = v47;
      (v81)(v56 + v52, v72, v73);
      (v80)(v56 + v53, v74, v75);
      (v69)(v56 + v54, v76, v77);
      (v71)(v56 + v55, v78, v79);
      v57 = v47;
      return sub_1003A52D4;
    }

    v84 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      break;
    }

    v58 = v10;
    v59 = v13;
    v25 = 0;
    v10 = (a3 & 0xC000000000000001);
    v80 = a3 & 0xFFFFFFFFFFFFFF8;
    v5 = &selRef_modernManagedObjectContext;
    v13 = &selRef_isShowNoteInVirtualSmartFolderURL_;
    while (1)
    {
      v8 = (v25 + 1);
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v10)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v80 + 16))
        {
          goto LABEL_18;
        }

        v27 = *(a3 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = [v27 ic_isModernType];
      v30 = &selRef_modernManagedObjectContext;
      if ((v29 & 1) == 0)
      {
        v31 = [v28 ic_isLegacyType];
        v30 = &selRef_legacyManagedObjectContext;
        if (!v31)
        {
          v82 = 0;
          v83 = 0xE000000000000000;
          _StringGuts.grow(_:)(54);
          v32._object = 0x800000010056F900;
          v32._countAndFlagsBits = 0xD000000000000033;
          String.append(_:)(v32);
          v33 = [v28 description];
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          v37._countAndFlagsBits = v34;
          v37._object = v36;
          String.append(_:)(v37);

          v38._countAndFlagsBits = 125;
          v38._object = 0xE100000000000000;
          String.append(_:)(v38);
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_15:
          v23 = v84;
          v13 = v59;
          v10 = v58;
          goto LABEL_16;
        }
      }

      v26 = [v81 *v30];
      v6 = [v26 objectWithID:v28];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v4 = v84[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v25;
      if (v8 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  __break(1u);
  return result;
}

id sub_1003A2A60(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = a2;
  v10 = v8();

  (*(v5 + 8))(v7, v4);

  return v10;
}

uint64_t sub_1003A2BB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  v3(v5);

  return sub_100009F60(v5);
}

void sub_1003A2C24(void *a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong *a3];

    if (v7)
    {
      sub_10017CC60(a1, a1[3]);
      v8 = _bridgeAnythingToObjectiveC<A>(_:)();
      v7[2](v7, v8);
      swift_unknownObjectRelease();
      _Block_release(v7);
    }
  }
}

uint64_t sub_1003A2CDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10015DA04(&qword_1006BF748);
  __chkstk_darwin(v3 - 8);
  v41 = &v33 - v4;
  v42 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  v7 = __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v38 = sub_10015DA04(&qword_1006BF750);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v33 - v8;
  v10 = sub_10015DA04(&qword_1006BF758);
  v11 = __chkstk_darwin(v10 - 8);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = OBJC_IVAR___ICMoveDataSource____lazy_storage___accountsChangePublisher;
  swift_beginAccess();
  sub_1001D3484(v1 + v15, v14);
  v16 = sub_10015DA04(&qword_1006BF728);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return (*(v17 + 32))(a1, v14, v16);
  }

  sub_1000073B4(v14, &qword_1006BF758);
  v18 = objc_opt_self();
  v34 = a1;
  v35 = v1;
  v19 = v18;
  v20 = [v18 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v21 = [v19 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_1001D34F4();
  Publishers.Merge.init(_:_:)();
  v22 = v39;
  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v23 = [objc_opt_self() mainRunLoop];
  v43 = v23;
  v24 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v25 = v41;
  (*(*(v24 - 8) + 56))(v41, 1, 1, v24);
  sub_1000054A4(0, &qword_1006BF760);
  v33 = v15;
  sub_1000060B4(&qword_1006BF768, &qword_1006BF750);
  sub_1001D354C();
  v26 = v9;
  v27 = v34;
  v28 = v38;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_1000073B4(v25, &qword_1006BF748);

  (*(v40 + 8))(v22, v42);
  (*(v36 + 8))(v26, v28);
  v29 = v37;
  (*(v17 + 16))(v37, v27, v16);
  (*(v17 + 56))(v29, 0, 1, v16);
  v30 = v35;
  v31 = v33;
  swift_beginAccess();
  sub_1001D35B4(v29, v30 + v31);
  return swift_endAccess();
}

id sub_1003A32EC(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = *a3;
  [a1 setDisplayGenericTitle:0];
  v7 = [a4 countOfLegacyAccounts];
  result = [a4 countOfModernAccounts];
  if (__OFADD__(v7, result))
  {
    __break(1u);
  }

  else
  {
    [a1 setDisplayDisclosure:result + v7 > 0];

    return [a1 setFolderListSectionIdentifier:v6];
  }

  return result;
}

void sub_1003A3394(void *a1, uint64_t a2, void **a3, unint64_t a4)
{
  v5 = *a3;
  sub_10035F884(a4);
  v6 = objc_allocWithZone(ICMoveDecision);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = v5;
  v9 = [v6 initWithSourceObjects:isa destination:v8];

  [a1 setForceDisabledAppearance:{objc_msgSend(v9, "shouldMove") ^ 1}];
  [a1 setHasGroupInset:1];
  [a1 setHasDisclosureIndicator:0];
  [a1 setShowsNoteCount:0];
  [a1 setVirtualSmartFolder:v8];
}

char *sub_1003A34C0(void *a1, unint64_t a2)
{
  v2 = a2;
  v3 = (a2 & 0xFFFFFFFFFFFFFF8);
  if (a2 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v5 = 0;
      do
      {
        v6 = v5;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= v3[2])
            {
              goto LABEL_59;
            }

            v7 = *(v2 + 8 * v6 + 32);
          }

          v8 = v7;
          v5 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v6;
          if (v5 == i)
          {
            goto LABEL_17;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      while (v5 != i);
    }

LABEL_17:
    if (_swiftEmptyArrayStorage >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = _swiftEmptyArrayStorage & 0xC000000000000001;
    if (v9)
    {
      v3 = 0;
LABEL_21:
      v2 = v3;
      while (1)
      {
        if (v10)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v2 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v11 = _swiftEmptyArrayStorage[v2 + 4];
        }

        v12 = v11;
        v3 = (v2 + 1);
        if (__OFADD__(v2, 1))
        {
          break;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v3 != v9)
          {
            goto LABEL_21;
          }

          goto LABEL_33;
        }

        ++v2;
        if (v3 == v9)
        {
          goto LABEL_33;
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_33:
    v13 = sub_1003A12EC(_swiftEmptyArrayStorage);

    if (!v9)
    {
      break;
    }

    v14 = 0;
    v3 = &ICQUIInAppMessageReasonUploadFailure_ptr;
LABEL_35:
    v2 = _swiftEmptyArrayStorage;
    v15 = v14;
    while (1)
    {
      if (v10)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v16 = _swiftEmptyArrayStorage[v15 + 4];
      }

      v17 = v16;
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if (v14 != v9)
        {
          goto LABEL_35;
        }

        goto LABEL_47;
      }

      ++v15;
      if (v14 == v9)
      {
        goto LABEL_47;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

LABEL_47:
  v18 = sub_1003A16D4(v13);
  sub_1002DCA38(v18);
  v19 = v13 >> 62;
  if (v13 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (!v20)
    {
      goto LABEL_67;
    }

LABEL_49:
    result = sub_1001895A4(0, v20 & ~(v20 >> 63), 0);
    if ((v20 & 0x8000000000000000) == 0)
    {
      for (j = 0; j != v20; ++j)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v23 = *(v13 + 8 * j + 32);
        }

        v24 = v23;
        v25 = [v23 maximumDistanceToLeafFolder];

        v27 = _swiftEmptyArrayStorage[2];
        v26 = _swiftEmptyArrayStorage[3];
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          sub_1001895A4((v26 > 1), v27 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v28;
        _swiftEmptyArrayStorage[v27 + 4] = v25;
      }

      v19 = v13 >> 62;
      goto LABEL_68;
    }

    __break(1u);
  }

  else
  {
    v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_49;
    }

LABEL_67:
    v28 = _swiftEmptyArrayStorage[2];
    if (v28)
    {
LABEL_68:
      if (v28 > 3)
      {
        v30 = v28 & 0xFFFFFFFFFFFFFFFCLL;
        v31 = &_swiftEmptyArrayStorage[6];
        v32 = 0uLL;
        v33 = v28 & 0xFFFFFFFFFFFFFFFCLL;
        v34 = 0uLL;
        do
        {
          v32 = vbslq_s8(vcgtq_s64(v31[-1], v32), v31[-1], v32);
          v34 = vbslq_s8(vcgtq_s64(*v31, v34), *v31, v34);
          v31 += 2;
          v33 -= 4;
        }

        while (v33);
        v35 = vbslq_s8(vcgtq_s64(v32, v34), v32, v34);
        v36 = vextq_s8(v35, v35, 8uLL).u64[0];
        v29 = vbsl_s8(vcgtd_s64(v35.i64[0], v36), *v35.i8, v36);
        if (v28 != v30)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v29 = 0;
        v30 = 0;
LABEL_73:
        v37 = v28 - v30;
        v38 = 8 * v30 + 32;
        do
        {
          if (*(_swiftEmptyArrayStorage + v38) > *&v29)
          {
            v29 = *(_swiftEmptyArrayStorage + v38);
          }

          v38 += 8;
          --v37;
        }

        while (v37);
      }
    }

    else
    {
      v29 = 0;
    }

    v39 = [objc_opt_self() folderDepthLimit];
    v53 = v39;
    if (v19)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
      v40 = v39;
    }

    else
    {
      v40 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = 0;
    do
    {
      v42 = v41;
      if (v40 == v41)
      {
        break;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v41 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_106;
        }

        v39 = *(v13 + 8 * v41 + 32);
      }

      v43 = v39;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v44 = [v39 isSmartFolder];

      v41 = v42 + 1;
    }

    while (!v44);

    v39 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
    {
      v45 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
      v46 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_92;
    }

LABEL_109:
    v45 = v39 & 0xFFFFFFFFFFFFFF8;
    v46 = _CocoaArrayWrapper.endIndex.getter();
    v39 = _swiftEmptyArrayStorage;
LABEL_92:
    v47 = 0;
    do
    {
      v48 = v47;
      if (v46 == v47)
      {
        break;
      }

      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v47 >= *(v45 + 16))
        {
          goto LABEL_108;
        }

        v39 = _swiftEmptyArrayStorage[v47 + 4];
      }

      v49 = v39;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_107;
      }

      v50 = [v39 isPasswordProtected];

      v47 = v48 + 1;
      v39 = _swiftEmptyArrayStorage;
    }

    while (!v50);

    v51 = swift_allocObject();
    *(v51 + 16) = _swiftEmptyArrayStorage;
    *(v51 + 24) = *&v29 >= v53;
    *(v51 + 25) = v40 != v42;
    *(v51 + 26) = v46 != v48;
    *(v51 + 32) = a1;
    sub_1000054A4(0, &qword_1006BD9C8);
    sub_1000054A4(0, &unk_1006C7150);
    v52 = a1;

    return UICollectionView.CellRegistration.init(handler:)();
  }

  return result;
}

uint64_t sub_1003A3C5C(void *a1, uint64_t a2, id *a3, unint64_t a4, int a5, unsigned int a6, unsigned int a7, void *a8)
{
  v50 = a8;
  v49 = __PAIR64__(a6, a7);
  v53 = a5;
  v11 = type metadata accessor for UIListContentConfiguration();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *a3;
  if ([v54 parentIdentifier])
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v14 = 0;
  }

  v55 = v13;
  v56 = a1;
  v15 = [v14 accountObjectID];

  if (a4 >> 62)
  {
LABEL_26:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_27:
    v35 = (v53 | BYTE4(v49)) ^ 1;
    v33 = v55;
    v32 = v56;
    v34 = v54;
    goto LABEL_28;
  }

  v16 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_7:
  v17 = 0;
  v18 = a4 & 0xC000000000000001;
  v19 = a4 & 0xFFFFFFFFFFFFFF8;
  v57 = v16;
  while (1)
  {
    if (v18)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v19 + 16))
      {
        goto LABEL_25;
      }

      v20 = *(a4 + 8 * v17 + 32);
    }

    v21 = v20;
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v23 = [v20 cloudAccount];
    if (!v23 || (v24 = v23, v25 = [v23 objectID], v24, !v25))
    {

      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_9;
    }

    if (!v15)
    {
      break;
    }

    sub_1000054A4(0, &qword_1006BFEC0);
    v26 = v19;
    v27 = v18;
    v28 = a4;
    v29 = v15;
    v30 = v15;
    v31 = static NSObject.== infix(_:_:)();

    v15 = v29;
    a4 = v28;
    v18 = v27;
    v19 = v26;
    v16 = v57;

    if ((v31 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_9:
    ++v17;
    if (v22 == v16)
    {
      goto LABEL_27;
    }
  }

LABEL_21:
  v33 = v55;
  v32 = v56;
  v34 = v54;
  if (v53)
  {
    v35 = 0;
  }

  else
  {
    v35 = (BYTE4(v49) | v49) ^ 1;
  }

LABEL_28:
  v36 = [v50 traitCollection];
  v37 = [v36 preferredContentSizeCategory];

  LOBYTE(v36) = UIContentSizeCategory.isAccessibilityCategory.getter();
  static UIListContentConfiguration.cell()();
  v38 = [v34 displayText];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UIListContentConfiguration.text.setter();
  if ((v36 & 1) == 0)
  {
    v39 = [v34 systemImageName];
    if (!v39)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = String._bridgeToObjectiveC()();
    }

    [objc_opt_self() systemImageNamed:v39];
  }

  UIListContentConfiguration.image.setter();
  if ((([v34 style] == 1) & v35) == 1)
  {
    v40 = [objc_opt_self() tintColor];
    v41 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v41(v58, 0);
    v42 = UIAccessibilityTraitButton;
    v43 = [v32 accessibilityTraits];
    if ((v42 & ~v43) != 0)
    {
      v44 = v42;
    }

    else
    {
      v44 = 0;
    }

    [v32 setAccessibilityTraits:v44 | v43];
  }

  v45 = v52;
  v58[3] = v52;
  v58[4] = &protocol witness table for UIListContentConfiguration;
  v46 = sub_100180240(v58);
  v47 = v51;
  (*(v51 + 16))(v46, v33, v45);
  UICollectionViewCell.contentConfiguration.setter();
  [v32 setUserInteractionEnabled:v35 & 1];

  return (*(v47 + 8))(v33, v45);
}

void sub_1003A4160(void *a1, uint64_t a2, void **a3, uint64_t a4, void *a5, unint64_t a6)
{
  v40 = a1;
  v41 = sub_1003A54B4(*a3, a5);
  if (a6 >> 62)
  {
LABEL_19:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_20;
    }
  }

  v8 = 0;
  do
  {
    v9 = v8;
    while (1)
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(a6 + 8 * v9 + 32);
      }

      v11 = v10;
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v9;
      if (v8 == v7)
      {
        goto LABEL_20;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v8 != v7);
LABEL_20:
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = 0;
    v14 = &selRef_operatingSystemVersion;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v17 = _swiftEmptyArrayStorage[v13 + 4];
      }

      v16 = v17;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v19 = [v17 v14[49]];
      if (v19)
      {
        v20 = v19;
        sub_1000054A4(0, &qword_1006C2D00);
        v21 = v41;
        v22 = static NSObject.== infix(_:_:)();

        v14 = &selRef_operatingSystemVersion;
        if (v22)
        {

          goto LABEL_38;
        }
      }

      v23 = [v16 v14[49]];
      if (v23)
      {
        v15 = v23;

        v16 = v15;
LABEL_24:

        goto LABEL_25;
      }

      v24 = [v16 cloudAccount];
      if (!v24)
      {
        goto LABEL_24;
      }

      v25 = v24;
      sub_1000054A4(0, &qword_1006C2D00);
      v26 = v41;
      v27 = static NSObject.== infix(_:_:)();

      v14 = &selRef_operatingSystemVersion;
      if (v27)
      {

LABEL_38:
        v28 = 1;
        goto LABEL_43;
      }

LABEL_25:
      ++v13;
      if (v18 == i)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_42:

  v28 = 0;
LABEL_43:
  sub_10035F884(a6);
  v29 = objc_allocWithZone(ICMoveDecision);
  v30 = v41;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v32 = v30;
  v33 = [v29 initWithSourceObjects:isa destination:v32];

  v34 = [v33 shouldMove];
  v35 = v34 ^ 1;
  if (v28)
  {
    v36 = v40;
    if (v34)
    {
      v35 = [v33 additionalStep] == 0;
    }
  }

  else
  {
    v36 = v40;
  }

  [v36 setForceDisabledAppearance:{v35, v40}];
  [v36 setHasGroupInset:1];
  [v36 setHasDisclosureIndicator:0];
  [v36 setShowsNoteCount:0];
  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (v37)
  {
    v38 = v32;
  }

  [v36 setNoteContainer:v37];

  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  if (v42)
  {
    v39 = v32;
  }

  [v36 setNoteCollection:v42];
}

uint64_t sub_1003A4630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A2A0(a3, v10);
  sub_1000054A4(0, &qword_1006C6018);
  if (swift_dynamicCast())
  {
    sub_1000054A4(0, &qword_1006C6010);
    v3 = v9;
LABEL_7:
    v4 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

LABEL_8:
    sub_100009F60(v10);
    return v4;
  }

  sub_1000054A4(0, &qword_1006BFBD0);
  if (swift_dynamicCast())
  {
    sub_1000054A4(0, &qword_1006BF738);
    v3 = v9;
    goto LABEL_7;
  }

  sub_1000054A4(0, &unk_1006C7150);
  if (swift_dynamicCast())
  {
    sub_1000054A4(0, &qword_1006BD9C8);
    v3 = v9;
    goto LABEL_7;
  }

  sub_1000054A4(0, &qword_1006BFEC0);
  if (swift_dynamicCast())
  {
    sub_1000054A4(0, &qword_1006BF738);
    v6 = v9;
    v4 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    goto LABEL_8;
  }

  _StringGuts.grow(_:)(45);
  v7._object = 0x80000001005636F0;
  v7._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v7);
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 125;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1003A4960(uint64_t a1, int a2, int a3, int a4, id a5, uint64_t a6)
{
  v9 = [a5 modernManagedObjectContext];
  v10 = OBJC_IVAR___ICMoveHeaderView_modernContext;
  v11 = *(a1 + OBJC_IVAR___ICMoveHeaderView_modernContext);
  *(a1 + OBJC_IVAR___ICMoveHeaderView_modernContext) = v9;
  v12 = v9;

  v13 = sub_100399A58();
  v14 = *(a1 + v10);
  v15 = *&v13[OBJC_IVAR___ICMovePreviewView_modernContext];
  *&v13[OBJC_IVAR___ICMovePreviewView_modernContext] = v14;
  v16 = v14;

  v17 = [a5 legacyManagedObjectContext];
  v18 = OBJC_IVAR___ICMoveHeaderView_htmlContext;
  v19 = *(a1 + OBJC_IVAR___ICMoveHeaderView_htmlContext);
  *(a1 + OBJC_IVAR___ICMoveHeaderView_htmlContext) = v17;

  v20 = *(a1 + OBJC_IVAR___ICMoveHeaderView____lazy_storage___previewView);
  v21 = *(a1 + v18);
  v22 = *&v20[OBJC_IVAR___ICMovePreviewView_htmlContext];
  *&v20[OBJC_IVAR___ICMovePreviewView_htmlContext] = v21;
  v23 = v20;
  v24 = v21;

  *(a1 + OBJC_IVAR___ICMoveHeaderView_objectIds) = a6;

  sub_10039A580();
}

uint64_t sub_1003A4A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10015DA04(&qword_1006C5FF0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = *(v8 + 56);
  *v10 = a2;
  *(v10 + 1) = a3;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v10[v11], a4, v12);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v14 == a3)
  {

    goto LABEL_8;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
LABEL_8:
    type metadata accessor for MoveHeaderView();
    v17 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
    (*(v13 + 8))(&v10[v11], v12);

    return v17;
  }

  sub_1000073B4(v10, &qword_1006C5FF0);
  return 0;
}

uint64_t type metadata accessor for MoveDataSource()
{
  result = qword_1006C5FD8;
  if (!qword_1006C5FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003A4D24()
{
  sub_1001D3378();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1003A4DC0(void *a1, unint64_t a2)
{
  v4 = [a1 legacyManagedObjectContext];
  v5 = [a1 modernManagedObjectContext];
  v6 = [objc_allocWithZone(ICFolderCoreDataIndexer) initWithLegacyManagedObjectContext:v4 modernManagedObjectContext:v5];

  [v6 setShouldIncludeOutlineParentItems:1];
  [v6 setShouldIncludeTags:0];
  [v6 setShouldIncludeSharedWithYou:2];
  if (a2 >> 62)
  {
LABEL_53:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v9 = a2 & 0xC000000000000001;
  v10 = 1;
  while (v7 != v8)
  {
    if (v9)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v11 = *(a2 + 8 * v8 + 32);
    }

    v12 = v11;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v13 = [v11 ic_isFolderType];

    ++v8;
    if (v13)
    {
      v10 = 2;
      break;
    }
  }

  [v6 setShouldIncludeSystemPaper:{v10, v31}];
  v14 = 2;
  if (ICInternalSettingsIsGreyParrotEnabled())
  {
    v31 = v6;
    v15 = 0;
    v16 = 1;
    while (v7 != v15)
    {
      if (v9)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v17 = *(a2 + 8 * v15 + 32);
      }

      v18 = v17;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_49;
      }

      v6 = [v17 ic_isFolderType];

      ++v15;
      if (v6)
      {
        v16 = 2;
        break;
      }
    }

    v6 = v31;
  }

  else
  {
    v16 = 2;
  }

  [v6 setShouldIncludeMathNotes:{v16, v31}];
  v35 = &type metadata for NotesFeature;
  v36 = sub_100025864();
  v32 = "AudioTranscription";
  v33 = 18;
  v34 = 2;
  v19 = isFeatureEnabled(_:)();
  sub_100009F60(&v32);
  if (v19)
  {
    v35 = &type metadata for TelephonyUtilitiesFeature;
    v36 = sub_100025AC8();
    v32 = "CallRecording";
    v33 = 13;
    v14 = 2;
    v34 = 2;
    v20 = isFeatureEnabled(_:)();
    sub_100009F60(&v32);
    if (v20)
    {
      v21 = 0;
      v14 = 1;
      while (v7 != v21)
      {
        if (v9)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v22 = *(a2 + 8 * v21 + 32);
        }

        v23 = v22;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_51;
        }

        v24 = [v22 ic_isFolderType];

        ++v21;
        if (v24)
        {
          v14 = 2;
          break;
        }
      }
    }
  }

  [v6 setShouldIncludeCallNotes:v14];
  v25 = 0;
  v26 = 2;
  while (v7 != v25)
  {
    if (v9)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v27 = *(a2 + 8 * v25 + 32);
    }

    v28 = v27;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_47;
    }

    v29 = [v27 ic_isFolderType];

    ++v25;
    if (v29)
    {
      v26 = 1;
      break;
    }
  }

  [v6 setShouldIncludeAccount:v26];
  [v6 setShouldIncludeTrash:0];
  [v6 setShouldIncludeNewFolderButton:1];
  return v6;
}

uint64_t sub_1003A51C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10015DA04(&qword_1006C5FE8);

  return sub_1003A4A90(a1, a2, a3, a4);
}

uint64_t sub_1003A52D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10015DA04(&qword_1006C6008);
  sub_10015DA04(&qword_1006C6000);
  sub_10015DA04(&qword_1006C5FF8);
  sub_10015DA04(&qword_1006BF730);

  return sub_1003A4630(a1, a2, a3);
}

uint64_t sub_1003A54B4(void *a1, void *a2)
{
  if ([a1 ic_isModernType])
  {
    v4 = &selRef_modernManagedObjectContext;
LABEL_5:
    v5 = [a2 *v4];
    v6 = [v5 objectWithID:a1];

    return v6;
  }

  if ([a1 ic_isLegacyType])
  {
    v4 = &selRef_legacyManagedObjectContext;
    goto LABEL_5;
  }

  _StringGuts.grow(_:)(54);
  v8._object = 0x800000010056F900;
  v8._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v8);
  v9 = [a1 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 125;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t *NSNotificationName.TagCollectionViewWillRenameTag.unsafeMutableAddressor()
{
  if (qword_1006BC858 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.TagCollectionViewWillRenameTag;
}

uint64_t *NSNotificationName.TagCollectionViewDidRenameTag.unsafeMutableAddressor()
{
  if (qword_1006BC860 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.TagCollectionViewDidRenameTag;
}

uint64_t sub_1003A56F4()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C6020);
  sub_10002597C(v0, qword_1006C6020);
  return static Logger.hashtag.getter();
}

id sub_1003A5870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *&v4[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_viewContext];
  if (!v5)
  {
    return 0;
  }

  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID;
  v13 = *&v4[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID];
  v57 = v8;
  v53 = v7;
  if (v13)
  {
    v14 = v13;
    v15 = [v8 objectWithID:v14];
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v51 = v14;
      v52 = a2;

      v17 = [v7 mainBundle];
      v18 = String._bridgeToObjectiveC()();
      v19 = String._bridgeToObjectiveC()();
      v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100459058(v16);
      v22 = v21;
      v23 = [v16 displayText];
      if (v23)
      {
        v24 = v23;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {

        v16 = 0;
        v26 = 0;
      }

      a2 = v52;
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  v26 = 0;
  v22 = 0;
LABEL_12:
  if (*&v4[v12])
  {
    v28 = a2 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28;
  v30 = String._bridgeToObjectiveC()();

  if (v22)
  {
    v31 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = 0;
  }

  v27 = [objc_opt_self() alertControllerWithTitle:v30 message:v31 preferredStyle:v29];

  if (v29)
  {
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v16;
    v33[4] = v26;
    v62 = sub_1003A8BF0;
    v63 = v33;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_1003A8C60;
    v61 = &unk_10065A978;
    v34 = _Block_copy(&aBlock);

    [v27 addTextFieldWithConfigurationHandler:v34];
    _Block_release(v34);
  }

  else
  {
  }

  v35 = [objc_opt_self() defaultCenter];
  [v35 addObserver:v4 selector:"textChanged:" name:UITextFieldTextDidChangeNotification object:*&v4[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField]];

  v36 = [v53 mainBundle];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 localizedStringForKey:v37 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = swift_allocObject();
  *(v39 + 16) = a3;
  *(v39 + 24) = a4;
  sub_100010854(a3);
  v40 = String._bridgeToObjectiveC()();

  v62 = sub_1003A8BAC;
  v63 = v39;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_1002DEFE0;
  v61 = &unk_10065A900;
  v41 = _Block_copy(&aBlock);

  v42 = [objc_opt_self() actionWithTitle:v40 style:1 handler:v41];
  _Block_release(v41);

  [v27 addAction:v42];
  v43 = swift_allocObject();
  v43[2] = a3;
  v43[3] = a4;
  v43[4] = v4;
  sub_100010854(a3);
  v44 = v4;
  v45 = sub_1003A6C68(a1, a2, sub_1003A8BE4, v43);

  v46 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagAction;
  v47 = *&v44[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagAction];
  *&v44[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagAction] = v45;
  v48 = v45;

  if (v45)
  {
    [v48 setEnabled:1];
    [v27 addAction:v48];
    v49 = *&v44[v46];
    [v27 setPreferredAction:v49];
  }

  return v27;
}

void sub_1003A5F1C(void *a1, uint64_t a2, uint64_t a3, NSString a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [a1 setDelegate:Strong];

  [a1 setClearButtonMode:1];
  [a1 setReturnKeyType:9];
  [a1 setEnablesReturnKeyAutomatically:1];
  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  [a1 setText:a4];

  [a1 setTextAlignment:4];
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7 || (v8 = *(v7 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID), v9 = v7, v10 = v8, v9, !v8))
  {
    v11 = [objc_opt_self() mainBundle];
    v12 = String._bridgeToObjectiveC()();
    v10 = [v11 localizedStringForKey:v12 value:0 table:0];

    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();
    }

    [a1 setPlaceholder:v10];
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField);
    *(v13 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField) = a1;
    v15 = v13;
    v16 = a1;
  }
}

void sub_1003A613C(void (*a1)(void, void *), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a3 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID);
    v5 = v4;
    a1(0, v4);
  }
}

void sub_1003A6234()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField;
  v6 = *(v0 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField);
  if (!v6)
  {
    v8 = *(v0 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagAction);
    if (!v8)
    {
LABEL_13:
      v14 = [objc_opt_self() ic_hashtagAllowedCharacterSet];
      static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

      String.removingCharacters(notContainedIn:)();

      (*(v2 + 8))(v4, v1);
      sub_10042D890(75);

      static String._fromSubstring(_:)();

      v15 = *(v0 + v5);
      if (v15)
      {
        v16 = v15;
        v17 = String._bridgeToObjectiveC()();

        [v16 setText:v17];
      }

      else
      {
      }

      return;
    }

    goto LABEL_7;
  }

  v7 = [v6 markedTextRange];
  if (!v7)
  {
    v11 = *(v0 + v5);
    v8 = *(v0 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagAction);
    if (!v8)
    {
      goto LABEL_10;
    }

    if (v11)
    {
      v18 = *(v0 + v5);
      v9 = v8;
      v19 = [v18 text];
      if (v19)
      {
        v20 = v19;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = String._bridgeToObjectiveC()();

        v22 = [v21 ic_trimmedString];

        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v26 = v23 & 0xFFFFFFFFFFFFLL;
        }

        v10 = v26 != 0;
        goto LABEL_9;
      }

LABEL_8:
      v10 = 0;
LABEL_9:
      [v9 setEnabled:v10];

      v11 = *(v0 + v5);
LABEL_10:
      if (v11)
      {
        v12 = [v11 text];
        if (v12)
        {
          v13 = v12;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      goto LABEL_13;
    }

LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }
}

id sub_1003A65F8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 localizedStringForKey:v10 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100459540(a1, a2, a3);
  v13 = v12;
  v14 = String._bridgeToObjectiveC()();

  if (v13)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  v17 = [v8 mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 localizedStringForKey:v18 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = a2;
  v20[4] = a3;
  v21 = v4;

  v22 = String._bridgeToObjectiveC()();

  v41 = sub_1003A8B68;
  v42 = v20;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_1002DEFE0;
  v40 = &unk_10065A838;
  v23 = _Block_copy(&aBlock);

  v24 = objc_opt_self();
  v25 = [v24 actionWithTitle:v22 style:0 handler:v23];
  _Block_release(v23);

  v26 = [v8 mainBundle];
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 localizedStringForKey:v27 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = a4 & 1;
  *(v30 + 24) = v29;
  *(v30 + 32) = v21;
  v31 = v21;

  v32 = String._bridgeToObjectiveC()();

  v41 = sub_1003A8B98;
  v42 = v30;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_1002DEFE0;
  v40 = &unk_10065A888;
  v33 = _Block_copy(&aBlock);

  v34 = [v24 actionWithTitle:v32 style:1 handler:v33];
  _Block_release(v33);

  [v16 addAction:v25];
  [v16 addAction:v34];

  return v16;
}

void sub_1003A6A94(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = sub_1003A5870(0, 0, 0, 0);

      if (v8)
      {
        v9 = *(a4 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_presentingViewController);
        if (v9)
        {
          aBlock[4] = sub_1003A8BA4;
          aBlock[5] = a3;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10028DCE8;
          aBlock[3] = &unk_10065A8B0;
          v10 = _Block_copy(aBlock);
          v11 = v9;

          [v11 presentViewController:v8 animated:0 completion:v10];

          _Block_release(v10);
          v8 = v11;
        }
      }
    }
  }
}

void sub_1003A6BE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 selectAll:0];
    }
  }
}

id sub_1003A6C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *&v4[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_workerContext];
  if (!v5)
  {
    return 0;
  }

  v10 = objc_opt_self();
  v11 = v5;
  v12 = [v10 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 localizedStringForKey:v13 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v4;
  v16[4] = v11;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;

  v17 = v11;

  v18 = v4;
  sub_100010854(a3);
  v19 = String._bridgeToObjectiveC()();

  v23[4] = sub_1003A8B48;
  v23[5] = v16;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_1002DEFE0;
  v23[3] = &unk_10065A770;
  v20 = _Block_copy(v23);

  v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v21 setEnabled:0];
  return v21;
}

uint64_t sub_1003A6EDC(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v12 = [objc_opt_self() defaultCenter];
  swift_beginAccess();
  aBlock[0] = swift_unknownObjectWeakLoadStrong();
  sub_10015DA04(&unk_1006C60B0);
  v13 = Optional._bridgeToObjectiveC()();

  [v12 removeObserver:v13 name:UITextFieldTextDidChangeNotification object:*&a3[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField]];
  swift_unknownObjectRelease();
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a3;
  v14[5] = a4;
  v15 = swift_allocObject();
  v15[2] = sub_1003A8B5C;
  v15[3] = v14;
  aBlock[4] = sub_1001C71A8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000EAF8;
  aBlock[3] = &unk_10065A7E8;
  v16 = _Block_copy(aBlock);

  v17 = a3;
  v18 = a4;

  [v18 performBlockAndWait:v16];
  _Block_release(v16);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (a7)
    {
      a7(result);
    }
  }

  return result;
}

void sub_1003A7120(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v16 = *(a3 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField);
    if (!v16)
    {
      return;
    }

    v17 = [v16 text];
    if (!v17)
    {
      return;
    }

    v18 = v17;
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v19;
  }

  v9 = *(a3 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID);
  if (v9)
  {

    v28 = v9;
    v10 = [a4 objectWithID:?];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = String._bridgeToObjectiveC()();
      v14 = [v12 canRenameTagWithNewDisplayText:v13];

      if (v14)
      {
        v15._countAndFlagsBits = a1;
        v15._object = v8;
        TagCreateOrRenameAlertController.renameTag(to:sendNotification:)(v15, 1);
      }

      else
      {
        v20 = String._bridgeToObjectiveC()();

        v21 = [v20 ic_withHashtagPrefix];

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = sub_1003A65F8(v12, v22, v24, a2 == 0);

        if (v25)
        {
          v26 = *(a3 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_presentingViewController);
          if (v26)
          {
            v27 = v26;
            [v27 presentViewController:v25 animated:0 completion:0];
          }

          goto LABEL_21;
        }
      }

LABEL_21:

      return;
    }
  }

  else
  {
  }

  sub_1003A73A0(a1, v8);
}

void sub_1003A73A0(uint64_t a1, unint64_t a2)
{
  isEscapingClosureAtFileLocation = a2;
  v4 = a1;
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = *&v2[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_accountObjectID];
    if (v6)
    {
      v7 = *&v2[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_workerContext];
      if (v7)
      {
        v8 = swift_allocObject();
        v8[2] = v7;
        v8[3] = v6;
        v8[4] = v4;
        v8[5] = isEscapingClosureAtFileLocation;
        v8[6] = v2;
        v4 = swift_allocObject();
        *(v4 + 16) = sub_1003A8B38;
        *(v4 + 24) = v8;
        aBlock[4] = sub_10000EFBC;
        aBlock[5] = v4;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000EAF8;
        aBlock[3] = &unk_10065A6F8;
        v9 = _Block_copy(aBlock);
        v10 = v6;
        v11 = v7;
        v12 = v10;
        v13 = v11;

        v14 = v2;

        [v13 performBlockAndWait:v9];

        _Block_release(v9);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
      }
    }
  }

  if (qword_1006BC850 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10002597C(v15, qword_1006C6020);

  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100009D88(v4, isEscapingClosureAtFileLocation, aBlock);
    _os_log_impl(&_mh_execute_header, oslog, v16, "Could not create new tag with display text %s", v17, 0xCu);
    sub_100009F60(v18);
  }

  else
  {
  }
}

void sub_1003A76AC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = [a1 ic_existingObjectWithID:a2];
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      v14 = String._bridgeToObjectiveC()();
      v15 = [objc_opt_self() hashtagWithDisplayText:v14 account:v12 createIfNecessary:1];

      [a1 ic_save];
      if (v15)
      {
        v16 = [v15 objectID];
      }

      else
      {

        v16 = 0;
      }

      v21 = *(a5 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID);
      *(a5 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID) = v16;
      goto LABEL_13;
    }
  }

  if (qword_1006BC850 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10002597C(v17, qword_1006C6020);

  oslog = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100009D88(a3, a4, &v23);
    _os_log_impl(&_mh_execute_header, oslog, v18, "Could not create new tag with display text %s", v19, 0xCu);
    sub_100009F60(v20);
  }

  v21 = oslog;
LABEL_13:
}

Swift::Void __swiftcall TagCreateOrRenameAlertController.renameTag(to:sendNotification:)(Swift::String to, Swift::Bool sendNotification)
{
  v3 = HIBYTE(to._object) & 0xF;
  if ((to._object & 0x2000000000000000) == 0)
  {
    v3 = to._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = *&v2[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_workerContext];
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = *&v2[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = *&v2[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_viewContext];
  if (!v6)
  {
    goto LABEL_21;
  }

  countAndFlagsBits = to._countAndFlagsBits;
  oslog = to._object;
  v8 = v5;
  v9 = v4;
  v10 = [v6 objectWithID:v8];
  if (!v10)
  {

    goto LABEL_21;
  }

  v11 = v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = [v12 displayText];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == countAndFlagsBits && v17 == oslog)
    {

      goto LABEL_21;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
LABEL_15:

LABEL_21:
      if (qword_1006BC850 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10002597C(v33, qword_1006C6020);
      osloga = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(osloga, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, osloga, v34, "Cannot continue to renameTag to newDisplayText", v35, 2u);
      }

      return;
    }
  }

  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = [objc_allocWithZone(ICLongRunningTaskController) init];
  [v21 setViewControllerToPresentFrom:*&v2[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_presentingViewController]];
  [v21 setShouldShowCancelButton:0];
  [v21 setIndeterminate:1];
  v22 = [objc_opt_self() mainBundle];
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 localizedStringForKey:v23 value:0 table:0];

  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  [v21 setProgressString:v24];

  v25 = swift_allocObject();
  *(v25 + 16) = v9;
  *(v25 + 24) = v8;
  *(v25 + 32) = sendNotification;
  *(v25 + 40) = countAndFlagsBits;
  *(v25 + 48) = oslog;
  *(v25 + 56) = v20;
  *(v25 + 64) = v2;
  v44 = sub_1003A8AEC;
  v45 = v25;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1003A8C60;
  v43 = &unk_10065A630;
  v36 = _Block_copy(&aBlock);
  v26 = v8;
  v27 = v9;

  v28 = v2;

  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = countAndFlagsBits;
  *(v29 + 32) = oslog;
  *(v29 + 40) = sendNotification;
  *(v29 + 48) = v20;
  *(v29 + 56) = v26;
  v44 = sub_1003A8B00;
  v45 = v29;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1002B00B8;
  v43 = &unk_10065A680;
  v30 = _Block_copy(&aBlock);
  v31 = v26;

  v32 = v28;

  [v21 startTask:v36 completionBlock:v30];
  _Block_release(v30);
  _Block_release(v36);
}

uint64_t sub_1003A7E48(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = a7 + 16;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  *(v15 + 48) = a6;
  *(v15 + 56) = v14;
  *(v15 + 64) = a8;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1003A8BFC;
  *(v16 + 24) = v15;
  v22[4] = sub_1001C71A8;
  v22[5] = v16;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10000EAF8;
  v22[3] = &unk_10065A9F0;
  v17 = _Block_copy(v22);
  v18 = a2;
  v19 = a3;

  v20 = a8;

  [v18 performBlockAndWait:v17];
  _Block_release(v17);
  LOBYTE(a8) = swift_isEscapingClosureAtFileLocation();

  if (a8)
  {
    __break(1u);
  }

  return result;
}

void sub_1003A7FDC(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7)
{
  v11 = [a1 objectWithID:a2];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12 || (v13 = [v12 standardizedContent]) == 0)
  {

    if (qword_1006BC850 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10002597C(v23, qword_1006C6020);
    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v24, "Cannot startTask for renameTag to newDisplayText", v25, 2u);
    }

    return;
  }

  v14 = v13;
  if ((a3 & 1) == 0)
  {
    goto LABEL_6;
  }

  v15 = [objc_opt_self() defaultCenter];
  if (qword_1006BC858 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    [v15 postNotificationName:static NSNotificationName.TagCollectionViewWillRenameTag object:0];

LABEL_6:
    v15 = ICHashtag_ptr;
    v16 = objc_opt_self();
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 renameHashtagsWithStandardizedContent:v14 newDisplayText:v17 context:a1];

    sub_1000054A4(0, &qword_1006C63E0);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    [a1 ic_save];
    if (v19 >> 62)
    {
      break;
    }

    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

LABEL_8:
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_11;
    }

    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v19 + 32);
LABEL_11:
      v21 = v20;

      v22 = [v21 objectID];

      goto LABEL_21;
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_8;
  }

LABEL_20:

  v22 = 0;
LABEL_21:
  swift_beginAccess();
  v26 = *a6;
  *a6 = v22;

  v27 = *(a7 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_eventReporter);
  if (v27)
  {
    if (*(a7 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_renameMethod + 8))
    {
      v28 = 0;
    }

    else
    {
      v28 = *(a7 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_renameMethod);
    }

    [v27 submitHashtagRenameEvent:0 approachEnum:v28];
  }
}

void sub_1003A836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  [*(a2 + OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_viewContext) ic_save];
  sub_10047E884(a3, a4, 1, 1);
  if (a5)
  {
    v12 = [objc_opt_self() defaultCenter];
    if (qword_1006BC860 != -1)
    {
      swift_once();
    }

    v13 = static NSNotificationName.TagCollectionViewDidRenameTag;
    swift_beginAccess();
    v14 = *(a6 + 16);
    sub_10015DA04(&unk_1006C60C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    v16 = v14;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = sub_1000054A4(0, &qword_1006BFEC0);
    *(inited + 72) = a7;
    v17 = a7;
    sub_1001913C0(inited);
    swift_setDeallocating();
    sub_1000073B4(inited + 32, &unk_1006C60D0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v12 postNotificationName:v13 object:v16 userInfo:{isa, 0xD000000000000030, 0x800000010056F9A0}];
  }
}

id TagCreateOrRenameAlertController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagCreateOrRenameAlertController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003A87D4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_accountObjectID] = 0;
  v7 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_presentingViewController;
  *&v4[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_presentingViewController] = 0;
  v8 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID;
  *&v4[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagObjectID] = 0;
  v9 = &v4[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_renameMethod];
  *v9 = 0;
  v9[8] = 0;
  v10 = OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_sizingCell;
  type metadata accessor for TagCell();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = objc_opt_self();
  v12 = [v11 sharedContext];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 workerManagedObjectContext];
  }

  else
  {
    v14 = 0;
  }

  *&v4[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_workerContext] = v14;
  v15 = [v11 sharedContext];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 managedObjectContext];
  }

  else
  {
    v17 = 0;
  }

  *&v4[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_viewContext] = v17;
  *&v4[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_alertTextField] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_tagAction] = 0;
  v18 = *&v4[v8];
  *&v4[v8] = a1;
  v19 = a1;

  v20 = *&v4[v7];
  *&v4[v7] = a2;
  v21 = a2;

  *&v4[OBJC_IVAR____TtC11MobileNotes32TagCreateOrRenameAlertController_eventReporter] = v24;
  *v9 = v26;
  v9[8] = 0;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for TagCreateOrRenameAlertController();
  return objc_msgSendSuper2(&v27, "init");
}

BOOL sub_1003A8998(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() ic_hashtagAllowedCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = String.removingCharacters(notContainedIn:)();
  v11 = v10;
  (*(v5 + 8))(v7, v4);

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    return 1;
  }

  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v14 == 0;
}

uint64_t sub_1003A8BAC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1, 0);
  }

  return result;
}

id ChecklistItemEntity.note(in:)(void *a1)
{
  v2 = type metadata accessor for ChecklistItemEntity();
  URL._bridgeToObjectiveC()(*(v2 + 20));
  v4 = v3;
  v5 = [a1 managedObjectIDForURIRepresentation:v3];

  if (!v5)
  {
    return 0;
  }

  result = [a1 managedObjectContextForObjectID:v5];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result objectWithID:v5];

  result = swift_dynamicCastObjCProtocolConditional();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ChecklistItemEntity()
{
  result = qword_1006C61A8;
  if (!qword_1006C61A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ChecklistItemEntity.init(id:managedObjectID:text:checked:noteTitle:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v39 = a6;
  v40 = a7;
  v38 = a5;
  v36 = a3;
  v37 = a4;
  v34 = a1;
  v35 = a2;
  v32 = a8;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v14 - 8);
  v29 = type metadata accessor for ChecklistItemEntity();
  v31 = *(v29 + 24);
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v9 + 104);
  v27 = v8;
  v28 = v9 + 104;
  v16(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v33 = EntityProperty<>.init(title:)();
  v17 = v32;
  *(v32 + v31) = v33;
  v18 = v29;
  v30 = *(v29 + 28);
  sub_10015DA04(&unk_1006BCD90);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v11, v15, v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v19 = EntityProperty<>.init(title:)();
  *(v17 + v30) = v19;
  v30 = *(v18 + 32);
  v31 = v19;
  sub_10015DA04(&qword_1006C60E0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v11, v15, v27);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1003AA790(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  *(v17 + v30) = EntityProperty<>.init(title:)();
  v20 = (v17 + *(v18 + 36));
  *v20 = 0;
  v20[1] = 0;
  v21 = v34;
  sub_1003A91D8(v34, v17);
  v22 = v35;
  v23 = [v35 URIRepresentation];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = v36;
  v42 = v37;
  EntityProperty.wrappedValue.setter();
  LOBYTE(v41) = v38;
  EntityProperty.wrappedValue.setter();

  result = sub_1003A923C(v21);
  v25 = v40;
  *v20 = v39;
  v20[1] = v25;
  return result;
}

uint64_t sub_1003A91D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChecklistItemID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A923C(uint64_t a1)
{
  v2 = type metadata accessor for ChecklistItemID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003A9298()
{
  result = _s11MobileNotes26VisibleChecklistItemsQueryVACycfC_0();
  static ChecklistItemEntity.defaultQuery = result;
  unk_1006EF8A0 = v1;
  qword_1006EF8A8 = v2;
  return result;
}

uint64_t *ChecklistItemEntity.defaultQuery.unsafeMutableAddressor()
{
  if (qword_1006BC868 != -1)
  {
    swift_once();
  }

  return &static ChecklistItemEntity.defaultQuery;
}

uint64_t static ChecklistItemEntity.defaultQuery.getter()
{
  if (qword_1006BC868 != -1)
  {
    swift_once();
  }

  v0 = static ChecklistItemEntity.defaultQuery;

  return v0;
}

uint64_t sub_1003A9398()
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
  sub_100025918(v10, static ChecklistItemEntity.typeDisplayRepresentation);
  sub_10002597C(v10, static ChecklistItemEntity.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v9 + 56))(v2, 0, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t ChecklistItemEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_1006BC870 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_10002597C(v0, static ChecklistItemEntity.typeDisplayRepresentation);
}

uint64_t static ChecklistItemEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC870 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10002597C(v2, static ChecklistItemEntity.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1003A97BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChecklistItemID();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ChecklistItemEntity.managedObjectURI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ChecklistItemEntity() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ChecklistItemEntity.managedObjectURI.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ChecklistItemEntity() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ChecklistItemEntity.image.getter()
{
  type metadata accessor for ChecklistItemEntity();
  EntityProperty.wrappedValue.getter();
  return DisplayRepresentation.Image.init(systemName:isTemplate:)();
}

uint64_t sub_1003A99E8@<X0>(void *a1@<X8>)
{
  if (qword_1006BC868 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1006EF8A0;
  v2 = qword_1006EF8A8;
  *a1 = static ChecklistItemEntity.defaultQuery;
  a1[1] = v1;
  a1[2] = v2;
}

uint64_t sub_1003A9A74(uint64_t a1)
{
  v2 = sub_1003AA790(&qword_1006BE070, type metadata accessor for ChecklistItemEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t ChecklistItemEntity.debugDescription.getter()
{
  v0 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v12 = 0xD000000000000018;
  v13 = 0x800000010056FC00;
  ChecklistItemID.uriRepresentation.getter(v2);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10036E2B0(v2);
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v7 = URL.absoluteString.getter();
    v6 = v8;
    (*(v4 + 8))(v2, v3);
    v5 = v7;
  }

  v9 = v6;
  String.append(_:)(*&v5);

  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return v12;
}

uint64_t ChecklistItemEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_10015DA04(&unk_1006BEA80);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v33 = v32 - v6;
  v7 = sub_10015DA04(&qword_1006BE030);
  v8 = __chkstk_darwin(v7 - 8);
  v32[0] = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v32 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v32[1] = v32 - v14;
  v15 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v16 = __chkstk_darwin(v15 - 8);
  v17 = __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v18 = (v1 + *(type metadata accessor for ChecklistItemEntity() + 36));
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
    EntityProperty.wrappedValue.getter();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v37);

    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
    LocalizedStringResource.init(stringInterpolation:)();
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
    v24._countAndFlagsBits = v20;
    v24._object = v19;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v24);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
    LocalizedStringResource.init(stringInterpolation:)();
    (*(v34 + 56))(v11, 0, 1, v35);
    EntityProperty.wrappedValue.getter();
    v26 = v33;
    DisplayRepresentation.Image.init(systemName:isTemplate:)();
    v29 = type metadata accessor for DisplayRepresentation.Image();
    (*(*(v29 - 8) + 56))(v26, 0, 1, v29);
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
    EntityProperty.wrappedValue.getter();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v37);

    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
    LocalizedStringResource.init(stringInterpolation:)();
    (*(v34 + 56))(v32[0], 1, 1, v35);
    EntityProperty.wrappedValue.getter();
    DisplayRepresentation.Image.init(systemName:isTemplate:)();
    v30 = type metadata accessor for DisplayRepresentation.Image();
    (*(*(v30 - 8) + 56))(v5, 0, 1, v30);
  }

  return DisplayRepresentation.init(title:subtitle:image:)();
}

unint64_t sub_1003AA274()
{
  result = qword_1006C6100;
  if (!qword_1006C6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6100);
  }

  return result;
}

unint64_t sub_1003AA3A4()
{
  result = qword_1006C6130;
  if (!qword_1006C6130)
  {
    sub_10017992C(&qword_1006C6138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6130);
  }

  return result;
}

uint64_t sub_1003AA49C(uint64_t a1)
{
  v2 = sub_1003AA790(&qword_1006C6140, type metadata accessor for ChecklistItemEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

void sub_1003AA540()
{
  type metadata accessor for ChecklistItemID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_1003AA66C(319, qword_1006BEBB0, sub_10001CAF8);
      if (v2 <= 0x3F)
      {
        sub_1003AA66C(319, &qword_1006C61B8, sub_1003AA6CC);
        if (v3 <= 0x3F)
        {
          sub_1003AA720();
          if (v4 <= 0x3F)
          {
            sub_100006994();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1003AA66C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for EntityProperty();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1003AA6CC()
{
  result = qword_1006C61C0;
  if (!qword_1006C61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C61C0);
  }

  return result;
}

void sub_1003AA720()
{
  if (!qword_1006C61C8)
  {
    sub_10017992C(&unk_1006BCAC0);
    sub_10021B940();
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C61C8);
    }
  }
}

uint64_t sub_1003AA790(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003AA804(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
  swift_beginAccess();
  v12 = *(v5 + v11);
  if (v12)
  {
    v13 = [v12 indexer];
    if (v13)
    {
      v14 = v13;
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = *(v5 + v11);
        if (v16)
        {
          v17 = v15;
          v18 = v16;
          v19 = [v17 objectIDs];
          sub_1000054A4(0, &qword_1006BFEC0);
          v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v20 = *&v18[OBJC_IVAR____TtC11MobileNotes13TagDataSource_modernViewContext];
          v21 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v22 = swift_allocObject();
          *(v22 + 16) = v21;
          *(v22 + 24) = v27;
          *(v22 + 32) = v20;
          *(v22 + 40) = a1;
          *(v22 + 48) = a2;
          *(v22 + 56) = v18;
          *(v22 + 64) = a3 & 1;
          *(v22 + 72) = a4;
          *(v22 + 80) = a5;
          aBlock[4] = sub_1002736A4;
          aBlock[5] = v22;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10028DCE8;
          aBlock[3] = &unk_10065AD68;
          v23 = _Block_copy(aBlock);
          v24 = v20;
          v25 = v18;
          v26 = v24;

          sub_100010854(a4);

          [v26 performBlock:v23];
          _Block_release(v23);

          v14 = v26;
        }
      }
    }
  }
}

void sub_1003AAA40(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v32) = a2;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_hasLoaded] == 1)
  {
    if (a1)
    {
      v9 = a1;
      if ([v9 isNonEmpty])
      {
        if (v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_hasAppliedInitialTagSelection] == 1)
        {
          v10 = [*&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] isEmpty];
          if ((v32 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v10 = 1;
          if ((v32 & 1) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        v10 = 0;
        if ((v32 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v25 = *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection];
      sub_1000054A4(0, &qword_1006C4310);
      v26 = v25;
      v27 = static NSObject.== infix(_:_:)();

      if ((v27 & 1) == 0)
      {
        v28 = v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_hasAppliedInitialTagSelection];
        goto LABEL_26;
      }

LABEL_24:
      v28 = 0;
LABEL_26:
      sub_1003AC28C(v28, v10, 0);
      v29 = *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection];
      *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] = v9;

      v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_hasAppliedInitialTagSelection] = 1;
      return;
    }

    v13 = [v3 indexPathsForVisibleItems];
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v14 + 16);
    if (v15)
    {
      v17 = v6 + 16;
      v16 = *(v6 + 16);
      v30[1] = v14;
      v31 = v16;
      v18 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v19 = *(v6 + 72);
      v20 = (v17 - 8);
      v16(v8, v18, v5);
      while (1)
      {
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v3 deselectItemAtIndexPath:isa animated:v32 & 1];

        v22 = IndexPath._bridgeToObjectiveC()().super.isa;
        (*v20)(v8, v5);
        v23 = [v3 cellForItemAtIndexPath:v22];

        if (v23)
        {
          type metadata accessor for TagCell();
          v24 = swift_dynamicCastClass();
          if (v24)
          {
            *(v24 + OBJC_IVAR___ICTagCell_isExcluded) = 0;
            sub_10047EED4();
          }
        }

        v18 += v19;
        if (!--v15)
        {
          break;
        }

        v31(v8, v18, v5);
      }
    }

    [*&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] clear];
  }

  else if (a1)
  {
    v32 = *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection];
    *&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] = a1;
    v11 = a1;
    v12 = v32;
  }
}

uint64_t sub_1003AADCC(double a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration];
  if (v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration] == 1)
  {
    v6 = [objc_opt_self() defaultMetrics];
    v7 = [v1 traitCollection];
    [v6 scaledValueForValue:v7 compatibleWithTraitCollection:34.0];

    return 0;
  }

  if (v5[3])
  {
    v9 = ObjectType;
    v10 = 32.0;
  }

  else
  {
    v9 = ObjectType;
    if ([objc_opt_self() ic_isVision])
    {
      v10 = 24.0;
    }

    else
    {
      v10 = 0.0;
    }
  }

  v11 = *&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_viewContext];
  if (!v11)
  {
    return 0;
  }

  v12 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
  swift_beginAccess();
  v13 = *&v2[v12];
  if (!v13)
  {
    return 0;
  }

  v95 = v5;
  v14 = v11;
  v15 = v13;
  v16 = sub_100357F5C(v14);
  v105.receiver = v2;
  v105.super_class = v9;
  v17 = v16 >> 62;
  if (objc_msgSendSuper2(&v105, "isEditing"))
  {
    v18 = v16;
    v19 = [v2 ic_viewControllerManager];
    if (!v19 || (v20 = v19, v21 = [v19 hasCompactWidth], v20, v10 = 0.0, (v21 & 1) == 0))
    {
      v10 = 12.0;
    }

    v22 = [objc_opt_self() defaultMetrics];
    if (v17)
    {
      goto LABEL_90;
    }

    v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_16;
  }

  if (v17)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
    if (v22)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_20;
    }
  }

  if (v95[1] != 1)
  {
    goto LABEL_77;
  }

LABEL_20:
  v25 = a1 - v10;
  if (a1 - v10 <= 0.0)
  {
    goto LABEL_77;
  }

  v98 = v16 & 0xFFFFFFFFFFFFFF8;
  v99 = v16 & 0xC000000000000001;
  v26 = &selRef_showSimplifiedWebEditor_;
  v100 = v2;
  v93 = v16;
  if (!v22)
  {
    v102 = _swiftEmptyArrayStorage;
LABEL_40:
    v41 = 0.0;
    if (v95[1])
    {
      v22 = *&v2[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_sizingCell];
      +[ICTagCell newTagImage]_0();
      sub_10047E78C(v42);
      v43 = [objc_opt_self() defaultMetrics];
      v44 = [v2 traitCollection];
      [v43 scaledValueForValue:v44 compatibleWithTraitCollection:34.0];
      v46 = v45;

      LODWORD(v47) = 1112014848;
      LODWORD(v48) = 1112014848;
      [v22 systemLayoutSizeFittingSize:48.0 withHorizontalFittingPriority:v46 verticalFittingPriority:{v47, v48}];
      v10 = v10 + v49;
      v41 = v50 + 0.0;
    }

    v2 = v102;
    v91 = v14;
    if (v95[2] == 1)
    {
      v51 = [objc_opt_self() v26[300]];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = *(v102 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v102;
      if (!isUniquelyReferenced_nonNull_native || v55 >= *(v102 + 3) >> 1)
      {
        v2 = sub_1001CAE70(isUniquelyReferenced_nonNull_native, v55 + 1, 1, v102);
        v104 = v2;
      }

      v22 = &v104;
      sub_10030DA90(0, 0, 1, v52, v54);
    }

    v14 = v95;
    v97 = *(v2 + 2);
    if (v97)
    {
      v57 = v16;
      v58 = 0;
      v92 = 0;
      v89 = v57 + 32;
      v90 = v15;
      v96 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_sizingCell;
      v15 = (v2 + 40);
      v101 = 1;
      v103 = v2;
      v94 = 1;
      v59 = v10;
      do
      {
        if (v58 >= *(v2 + 2))
        {
          goto LABEL_88;
        }

        v62 = *(v15 - 1);
        v61 = *v15;
        v63 = objc_opt_self();
        swift_bridgeObjectRetain_n();
        v64 = [v63 v26[300]];
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        if (v62 == v65 && v61 == v67)
        {

          v70 = 0;
        }

        else
        {
          v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v70 = v69 ^ 1;
        }

        v22 = *&v100[v96];
        v71 = v14;
        v72 = v14[3];
        v73 = (v22 + OBJC_IVAR___ICTagCell_displayText);
        *v73 = v62;
        v73[1] = v61;

        [*(v22 + OBJC_IVAR___ICTagCell_imageView) setImage:0];
        v74 = *(v22 + OBJC_IVAR___ICTagCell_displayImage);
        *(v22 + OBJC_IVAR___ICTagCell_displayImage) = 0;

        *(v22 + OBJC_IVAR___ICTagCell_includeSymbolPrefix) = v70 & 1;
        *(v22 + OBJC_IVAR___ICTagCell_hasGroupInset) = v72;
        sub_10047EB28();
        sub_100480A74();

        v75 = [objc_opt_self() defaultMetrics];
        v76 = [v100 traitCollection];
        [v75 scaledValueForValue:v76 compatibleWithTraitCollection:34.0];
        v78 = v77;

        LODWORD(v79) = 1112014848;
        LODWORD(v80) = 1112014848;
        [v22 systemLayoutSizeFittingSize:48.0 withHorizontalFittingPriority:v78 verticalFittingPriority:{v79, v80}];
        if (!v58 && !v71[1])
        {
          v59 = v10 + v82;
          v10 = v10 + v82;
        }

        v14 = v71;
        v26 = &selRef_showSimplifiedWebEditor_;
        v60 = v41 + 8.0;
        if (v41 <= 0.0)
        {
          v60 = v41;
        }

        v2 = v103;
        if (v25 < v60 + v81)
        {
          if (__OFADD__(v101++, 1))
          {
            goto LABEL_89;
          }

          if ((v71[16] & 1) == 0)
          {
            v84 = *(v71 + 1);
            if (v84 >= 1 && v84 < v101)
            {
              if (v94)
              {
                v94 = 0;
                if (v71[2] == 1)
                {
                  v85 = v58 - 2;
                }

                else
                {
                  v85 = v58 - 1;
                }

                v92 = v85;
                v10 = v59;
              }

              else
              {
                v94 = 0;
              }
            }
          }

          v59 = v82 + v10 + 8.0;
          v60 = 0.0;
          v10 = v59;
        }

        ++v58;
        v41 = v81 + v60;
        v15 += 2;
      }

      while (v97 != v58);

      v15 = v90;
      v14 = v91;
      if (v94)
      {
        goto LABEL_77;
      }

      if (!v99)
      {
        if ((v92 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v92 < *(v98 + 16))
        {
          v86 = *(v89 + 8 * v92);
LABEL_84:
          v87 = v86;

          if (!v87)
          {
            goto LABEL_78;
          }

          v88 = [v87 objectID];

          return v88;
        }

        __break(1u);
        return result;
      }

      v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_84;
    }

    v14 = v91;
LABEL_77:

LABEL_78:

    return 0;
  }

  v27 = 0;
  v102 = _swiftEmptyArrayStorage;
LABEL_23:
  v28 = v27;
  while (v99)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v27 = (v28 + 1);
    if (__OFADD__(v28, 1))
    {
      goto LABEL_86;
    }

LABEL_27:
    v30 = v29;
    v31 = [v30 v26[300]];
    if (v31)
    {
      v32 = v26;
      v33 = v31;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_1001CAE70(0, *(v102 + 2) + 1, 1, v102);
      }

      v39 = *(v102 + 2);
      v38 = *(v102 + 3);
      v26 = v32;
      if (v39 >= v38 >> 1)
      {
        v102 = sub_1001CAE70((v38 > 1), v39 + 1, 1, v102);
      }

      *(v102 + 2) = v39 + 1;
      v40 = &v102[16 * v39];
      *(v40 + 4) = v34;
      *(v40 + 5) = v36;
      v15 = v37;
      v16 = v93;
      v2 = v100;
      if (v27 == v22)
      {
        goto LABEL_40;
      }

      goto LABEL_23;
    }

    ++v28;
    if (v27 == v22)
    {
      goto LABEL_40;
    }
  }

  if (v28 >= *(v98 + 16))
  {
    goto LABEL_87;
  }

  v29 = *(v16 + 8 * v28 + 32);
  v27 = (v28 + 1);
  if (!__OFADD__(v28, 1))
  {
    goto LABEL_27;
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  v23 = _CocoaArrayWrapper.endIndex.getter();
LABEL_16:

  v24 = [v2 traitCollection];
  [v22 scaledValueForValue:v24 compatibleWithTraitCollection:v10 + v23 * 52.0];

  return 0;
}

uint64_t sub_1003AB76C()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C6210);
  sub_10002597C(v0, qword_1006C6210);
  return static Logger.hashtag.getter();
}

uint64_t sub_1003AB7B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 1);
  v9 = a1[16];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *(a2 + 1);
  v17 = a2[16];
  v18 = (v3 & 1) == 0;
  v19 = 256;
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = 256;
  }

  v21 = v20 | v2;
  v18 = (v4 & 1) == 0;
  v22 = 0x10000;
  if (v18)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0x10000;
  }

  v18 = (v5 & 1) == 0;
  v24 = 0x1000000;
  if (v18)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0x1000000;
  }

  v26 = v21 | v23 | v25;
  if (v6)
  {
    v27 = &_mh_execute_header;
  }

  else
  {
    v27 = 0;
  }

  if (v7)
  {
    v28 = 0x10000000000;
  }

  else
  {
    v28 = 0;
  }

  v29 = v27 | v28;
  if ((v11 & 1) == 0)
  {
    v19 = 0;
  }

  v30 = v19 | v10;
  if ((v12 & 1) == 0)
  {
    v22 = 0;
  }

  if ((v13 & 1) == 0)
  {
    v24 = 0;
  }

  v31 = v30 | v22 | v24;
  if (v14)
  {
    v32 = &_mh_execute_header;
  }

  else
  {
    v32 = 0;
  }

  if (v15)
  {
    v33 = 0x10000000000;
  }

  else
  {
    v33 = 0;
  }

  return sub_1003B6B18(v26 | v29, v8, v9 & 1, v31 | v32 | v33, v16, v17 & 1);
}

void sub_1003ABBAC(unint64_t a1, uint64_t a2, char a3)
{
  v4 = &v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration];
  v5 = v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration + 2];
  v6 = a1;
  if (v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration] != a1 || ((v4[1] ^ (a1 >> 8) & 1) & 1) != 0 || ((v5 ^ (a1 >> 16) & 1) & 1) != 0 || ((v4[3] ^ (a1 >> 24) & 1) & 1) != 0 || ((v4[4] ^ BYTE4(a1) & 1) & 1) != 0 || ((v4[5] ^ (a1 >> 40) & 1) & 1) != 0)
  {
    goto LABEL_13;
  }

  v7 = v4[16];
  if (a3)
  {
    if (v4[16])
    {
      return;
    }

    goto LABEL_13;
  }

  if (*(v4 + 1) != a2)
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_13:
    v8 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
    swift_beginAccess();
    v9 = *&v3[v8];
    if (v9)
    {
      v10 = OBJC_IVAR____TtC11MobileNotes13TagDataSource_includesAllTagsItem;
      v9[OBJC_IVAR____TtC11MobileNotes13TagDataSource_includesAllTagsItem] = v5;
      v11 = v9;
      v12 = [v11 indexer];
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        [v13 setIncludesAllTagsItem:v9[v10]];
        v14 = v12;
      }

      else
      {
        v14 = v11;
        v11 = v12;
      }

      v15 = *&v3[v8];
      if (v15)
      {
        v16 = OBJC_IVAR____TtC11MobileNotes13TagDataSource_includesNewTagItem;
        v15[OBJC_IVAR____TtC11MobileNotes13TagDataSource_includesNewTagItem] = v4[1];
        v17 = v15;
        v18 = [v17 indexer];
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          [v19 setIncludesNewTagItem:v15[v16]];
          v20 = v18;
        }

        else
        {
          v20 = v17;
          v17 = v18;
        }
      }
    }

    sub_1003ABF94(1);
    if (v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_hasLoaded] == 1)
    {
      v21 = *&v3[v8];
      if (v21)
      {
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = swift_allocObject();
        v23[3] = 0;
        v23[4] = 0;
        v23[2] = v22;
        v34[4] = sub_1002B5F5C;
        v34[5] = v23;
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 1107296256;
        v34[2] = sub_10028DCE8;
        v34[3] = &unk_10065AD18;
        v24 = _Block_copy(v34);
        v25 = v21;

        [v25 reloadDataAnimated:1 dataIndexedBlock:0 dataRenderedBlock:v24];
        _Block_release(v24);
      }
    }

    if ([*&v3[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] isNonEmpty])
    {
      sub_1003AC28C(0, 0, 0);
    }

    if (*v4 == 2)
    {
      v26 = sub_1003AFA38();
    }

    else
    {
      v27 = sub_1003AF290();
      v28 = 256;
      if ((v4[1] & 1) == 0)
      {
        v28 = 0;
      }

      v29 = v28 | *v4;
      v30 = 0x10000;
      if ((v4[2] & 1) == 0)
      {
        v30 = 0;
      }

      v31 = 0x1000000;
      if ((v4[3] & 1) == 0)
      {
        v31 = 0;
      }

      v32 = v29 | v30 | v31;
      v33 = &_mh_execute_header;
      if ((v4[4] & 1) == 0)
      {
        LODWORD(v33) = 0;
      }

      v26 = sub_1003B6BA8(v27, v32 | v33);
    }

    [v3 setCollectionViewLayout:v26];

    if (*v4 != v6)
    {
      [v3 reloadData];
    }
  }
}

void sub_1003ABF94(char a1)
{
  v3 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = [v4 indexer];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (!v7)
      {
LABEL_21:

        return;
      }

      v8 = v7;
      v9 = [v7 visibleTagLimit];
      v10 = &v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration];
      if ((v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration + 16] & 1) == 0 && !*(v10 + 1) || *v10 == 1)
      {
        [v8 setVisibleTagLimit:0];
        goto LABEL_21;
      }

      v11 = v9;
      [v1 frame];
      if (v12 <= 0.0 || *&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_lastEvaluatedTagVisibilityWidth] == v12 && (a1 & 1) == 0)
      {
        goto LABEL_21;
      }

      *&v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_lastEvaluatedTagVisibilityWidth] = v12;
      v13 = sub_1003AADCC(v12);
      if (v13)
      {
        v14 = v13;
        v15 = [v8 objectIDs];
        sub_1000054A4(0, &qword_1006BFEC0);
        v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = sub_1004AEB44(v14, v16);
        v19 = v18;

        if ((v19 & 1) == 0)
        {
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            return;
          }

          [v8 setVisibleTagLimit:v17 + 1];

          goto LABEL_17;
        }
      }

      [v8 setVisibleTagLimit:0];
LABEL_17:
      if (v11 != [v8 visibleTagLimit] && v1[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_hasLoaded] == 1)
      {
        v20 = *&v1[v3];
        if (v20)
        {
          v21 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v22 = swift_allocObject();
          v22[3] = 0;
          v22[4] = 0;
          v22[2] = v21;
          aBlock[4] = sub_1002B5E94;
          aBlock[5] = v22;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10028DCE8;
          aBlock[3] = &unk_10065AC50;
          v23 = _Block_copy(aBlock);
          v24 = v20;

          [v24 reloadDataAnimated:1 dataIndexedBlock:0 dataRenderedBlock:v23];
          _Block_release(v23);

          v6 = v24;
        }
      }

      goto LABEL_21;
    }
  }
}

void sub_1003AC28C(int a1, int a2, int a3)
{
  v171 = a3;
  v170 = a2;
  v179 = a1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v167 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v185 = &v161 - v9;
  v10 = __chkstk_darwin(v8);
  v172 = &v161 - v11;
  v12 = __chkstk_darwin(v10);
  v186 = (&v161 - v13);
  v14 = __chkstk_darwin(v12);
  v16 = &v161 - v15;
  v17 = __chkstk_darwin(v14);
  v184 = &v161 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v161 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v161 - v23;
  __chkstk_darwin(v22);
  v183 = &v161 - v25;
  v26 = sub_10015DA04(&unk_1006C3FD0);
  v27 = __chkstk_darwin(v26 - 8);
  v168 = &v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v175 = &v161 - v30;
  v31 = __chkstk_darwin(v29);
  v173 = &v161 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v161 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v161 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v161 - v40;
  __chkstk_darwin(v39);
  v174 = &v161 - v42;
  v43 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
  swift_beginAccess();
  v182 = v3;
  v44 = *&v3[v43];
  if (!v44)
  {
    return;
  }

  v45 = [v44 collectionViewDiffableDataSource];
  if (!v45)
  {
    return;
  }

  v46 = v45;
  v181 = v16;
  v188 = v21;
  v191 = &_swiftEmptySetSingleton;
  v192 = &_swiftEmptySetSingleton;
  v47 = [objc_opt_self() sharedItemIdentifier];
  v169 = v46;
  v48 = [v46 indexPathForItemIdentifier:v47];

  if (v48)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  (*(v5 + 56))(v41, v49, 1, v4);
  sub_1003B7698(v41, v174);
  v166 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection;
  v50 = [*&v182[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagSelection] mode];
  v180 = v5;
  v187 = v24;
  v51 = v188;
  if (!v50)
  {
    v53 = [*&v182[v166] objectIDs];
    v54 = sub_1000054A4(0, &qword_1006BFEC0);
    v55 = sub_1001C607C();
    v56 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v178 = v54;
    v163 = v55;
    if ((v56 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v56 = v193;
      v57 = v194;
      v58 = v195;
      v59 = v196;
      v60 = v197;
    }

    else
    {
      v59 = 0;
      v72 = -1 << *(v56 + 32);
      v57 = v56 + 56;
      v58 = ~v72;
      v73 = -v72;
      if (v73 < 64)
      {
        v74 = ~(-1 << v73);
      }

      else
      {
        v74 = -1;
      }

      v60 = (v74 & *(v56 + 56));
    }

    v161 = v58;
    v75 = (v58 + 64) >> 6;
    v162 = (v5 + 16);
    v176 = v56;
    v165 = v57;
    v164 = v75;
    if ((v56 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_29:
    v76 = v59;
    v77 = __CocoaSet.Iterator.next()();
    if (v77)
    {
      v189 = v77;
      swift_dynamicCast();
      v78 = v190;
      v184 = v60;
      while (v78)
      {
        v81 = [v169 indexPathForItemIdentifier:{v78, v161}];
        if (v81)
        {
          v82 = v181;
          v83 = v81;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v84 = v4;
          v85 = v188;
          v177 = *v162;
          v177(v188, v82, v84);
          v86 = v187;
          sub_100265AE4(v187, v85);
          v183 = *(v5 + 8);
          (v183)(v86, v84);
          v87 = [*&v182[v166] excludedObjectIDs];
          v88 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v87) = sub_10033AC4C(v78, v88);

          if (v87)
          {
            v89 = v181;
            v177(v85, v181, v84);
            sub_100265AE4(v86, v85);

            v90 = v183;
            (v183)(v86, v84);
            v90(v89, v84);
          }

          else
          {
            (v183)(v181, v84);
          }

          v59 = v76;
          v60 = v184;
          v4 = v84;
          v56 = v176;
          v57 = v165;
          v75 = v164;
          if ((v176 & 0x8000000000000000) != 0)
          {
            goto LABEL_29;
          }
        }

        else
        {

          v59 = v76;
          v60 = v184;
          if (v56 < 0)
          {
            goto LABEL_29;
          }
        }

LABEL_31:
        v79 = v59;
        v80 = v60;
        v76 = v59;
        if (!v60)
        {
          do
          {
            v76 = v79 + 1;
            if (__OFADD__(v79, 1))
            {
              goto LABEL_106;
            }

            if (v76 >= v75)
            {
              goto LABEL_43;
            }

            v80 = *(v57 + 8 * v76);
            ++v79;
          }

          while (!v80);
        }

        v184 = ((v80 - 1) & v80);
        v78 = *(*(v56 + 48) + ((v76 << 9) | (8 * __clz(__rbit64(v80)))));
      }
    }

LABEL_43:
    sub_10019E530();
    goto LABEL_44;
  }

  if (v50 == 2)
  {
    sub_1001802AC(v174, v35);
    if ((*(v5 + 48))(v35, 1, v4) == 1)
    {
      v52 = v35;
      goto LABEL_13;
    }

    v67 = v184;
    (*(v5 + 32))(v184, v35, v4);
    v68 = *(v5 + 16);
    v68(v51, v67, v4);
    sub_100265AE4(v24, v51);
    v69 = *(v180 + 8);
    v69(v24, v4);
    v68(v51, v67, v4);
    sub_100265AE4(v24, v51);
    v69(v24, v4);
    v69(v67, v4);
    v5 = v180;
  }

  else
  {
    if (v50 != 1)
    {
      v60 = v182;
      if (qword_1006BC878 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_107;
    }

    sub_1001802AC(v174, v38);
    if ((*(v5 + 48))(v38, 1, v4) == 1)
    {
      v52 = v38;
LABEL_13:
      sub_1000073B4(v52, &unk_1006C3FD0);
      goto LABEL_44;
    }

    v70 = v183;
    (*(v5 + 32))(v183, v38, v4);
    (*(v5 + 16))(v51, v70, v4);
    sub_100265AE4(v24, v51);
    v71 = *(v5 + 8);
    v71(v24, v4);
    v71(v70, v4);
  }

LABEL_44:
  v60 = v182;
  v65 = v172;
  while (1)
  {
    sub_1002C89C8(v192, v173);
    v91 = [v60 indexPathsForSelectedItems];
    v188 = v4;
    if (!v91)
    {
      break;
    }

    v92 = v91;
    v93 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v178 = *(v93 + 16);
    if (!v178)
    {

      break;
    }

    v94 = 0;
    v176 = v93 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v184 = (v5 + 16);
    v95 = (v5 + 8);
    v177 = v93;
    while (v94 < *(v93 + 16))
    {
      v98 = *(v5 + 72);
      v181 = v94;
      v183 = v98;
      v99 = *(v5 + 16);
      v99(v186, v176 + v98 * v94, v4);
      v100 = v192;
      if (*(v192 + 2) && (sub_1003B7708(&unk_1006C6390, &type metadata accessor for IndexPath), v101 = dispatch thunk of Hashable._rawHashValue(seed:)(), v102 = -1 << *(v100 + 32), v103 = v101 & ~v102, ((*(v100 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v103) & 1) != 0))
      {
        v104 = ~v102;
        while (1)
        {
          v105 = v187;
          v106 = v188;
          v99(v187, v100[6] + v103 * v183, v188);
          sub_1003B7708(&qword_1006C16E0, &type metadata accessor for IndexPath);
          v107 = dispatch thunk of static Equatable.== infix(_:_:)();
          v108 = *v95;
          (*v95)(v105, v106);
          if (v107)
          {
            break;
          }

          v103 = (v103 + 1) & v104;
          if (((*(v100 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v103) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v109 = v175;
        v110 = v186;
        sub_1003B3F0C(v186, v175);
        sub_1000073B4(v109, &unk_1006C3FD0);
        v4 = v188;
        v108(v110, v188);
        v60 = v182;
      }

      else
      {
LABEL_48:
        v96 = v186;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v60 = v182;
        [v182 deselectItemAtIndexPath:isa animated:v179 & 1];

        v4 = v188;
        (*v95)(v96, v188);
      }

      v94 = v181 + 1;
      v5 = v180;
      v93 = v177;
      if (v181 + 1 == v178)
      {

        v65 = v172;
        goto LABEL_60;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    swift_once();
LABEL_17:
    v61 = type metadata accessor for Logger();
    sub_10002597C(v61, qword_1006C6210);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v172;
    if (v64)
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Unknown tag selection mode", v66, 2u);
    }
  }

LABEL_60:
  v111 = v192 + 56;
  v112 = 1 << v192[32];
  v113 = -1;
  if (v112 < 64)
  {
    v113 = ~(-1 << v112);
  }

  v114 = v113 & *(v192 + 7);
  v115 = (v112 + 63) >> 6;
  v184 = (v5 + 16);
  v186 = (v5 + 8);
  v175 = v192;

  v116 = 0;
  if (v114)
  {
    while (1)
    {
      v117 = v116;
LABEL_68:
      v118 = __clz(__rbit64(v114));
      v114 &= v114 - 1;
      (*(v5 + 16))(v65, *(v175 + 6) + *(v5 + 72) * (v118 | (v117 << 6)), v4);
      v119 = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v5 + 8))(v65, v4);
      [v60 selectItemAtIndexPath:v119 animated:v179 & 1 scrollPosition:0];

      if (!v114)
      {
        goto LABEL_64;
      }
    }
  }

  while (1)
  {
LABEL_64:
    v117 = v116 + 1;
    if (__OFADD__(v116, 1))
    {
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (v117 >= v115)
    {
      break;
    }

    v114 = *&v111[8 * v117];
    ++v116;
    if (v114)
    {
      v116 = v117;
      goto LABEL_68;
    }
  }

  v120 = &selRef_importFolders;
  v121 = [v60 indexPathsForVisibleItems];
  v122 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v123 = *(v122 + 16);
  if (v123)
  {
    v124 = 0;
    v183 = v122 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v125 = v123;
    v176 = v123;
    v177 = v122;
    while (v124 < *(v122 + 16))
    {
      v129 = v122;
      v133 = *(v5 + 72);
      v127 = v5;
      v134 = *(v5 + 16);
      v134(v185, v183 + v133 * v124, v4);
      v135 = IndexPath._bridgeToObjectiveC()().super.isa;
      v128 = v60;
      v136 = [v60 cellForItemAtIndexPath:v135];
      v137 = v4;
      v138 = v136;

      v131 = v138;
      v4 = v137;
      v130 = v125;
      if (v131)
      {
        type metadata accessor for TagCell();
        v139 = swift_dynamicCastClass();
        if (v139)
        {
          v178 = v139;
          v181 = v131;
          v140 = v191;
          if (v191[2] && (sub_1003B7708(&unk_1006C6390, &type metadata accessor for IndexPath), v141 = dispatch thunk of Hashable._rawHashValue(seed:)(), v142 = -1 << *(v140 + 32), v143 = v141 & ~v142, ((*(v140 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v143) & 1) != 0))
          {
            v144 = ~v142;
            do
            {
              v146 = v187;
              v145 = v188;
              v134(v187, v140[6] + v143 * v133, v188);
              sub_1003B7708(&qword_1006C16E0, &type metadata accessor for IndexPath);
              v126 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v186)(v146, v145);
              if (v126)
              {
                break;
              }

              v143 = (v143 + 1) & v144;
            }

            while (((*(v140 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v143) & 1) != 0);
          }

          else
          {
            v126 = 0;
          }

          *(v178 + OBJC_IVAR___ICTagCell_isExcluded) = v126 & 1;
          sub_10047EED4();
          v4 = v188;
          v127 = v180;
          v128 = v182;
          v129 = v177;
          v130 = v176;
          v131 = v181;
        }
      }

      ++v124;
      (*v186)(v185, v4);
      v125 = v130;
      v132 = v124 == v130;
      v60 = v128;
      v5 = v127;
      v122 = v129;
      if (v132)
      {

        v120 = &selRef_importFolders;
        goto LABEL_87;
      }
    }

    goto LABEL_104;
  }

LABEL_87:

  if (v170)
  {
    v147 = [v60 v120[39]];
    v148 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v149 = sub_10026FE68(v148);

    v150 = sub_1003B626C(v175, v149);

    v151 = *(v150 + 16);

    if (!v151)
    {
      v152 = v60[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_configuration];
      v153 = v168;
      sub_1001802AC(v173, v168);
      if ((*(v5 + 48))(v153, 1, v4) == 1)
      {
        sub_1000073B4(v153, &unk_1006C3FD0);
      }

      else
      {
        if (v152 == 1)
        {
          v158 = 16;
        }

        else
        {
          v158 = 2;
        }

        v159 = v167;
        (*(v5 + 32))(v167, v153, v4);
        v160 = IndexPath._bridgeToObjectiveC()().super.isa;
        [v60 scrollToItemAtIndexPath:v160 atScrollPosition:v158 animated:v179 & 1];

        (*(v5 + 8))(v159, v4);
      }
    }
  }

  else
  {
  }

  if (v171)
  {
    v154 = &v60[OBJC_IVAR____TtC11MobileNotes17TagCollectionView_selectionDidChange];
    swift_beginAccess();
    v155 = *v154;
    if (!*v154)
    {
      sub_1000073B4(v173, &unk_1006C3FD0);
      sub_1000073B4(v174, &unk_1006C3FD0);
      swift_endAccess();

      return;
    }

    swift_endAccess();
    v156 = *&v60[v166];
    sub_100010854(v155);
    v157 = v156;
    v155();

    sub_10000C840(v155);
  }

  sub_1000073B4(v173, &unk_1006C3FD0);
  sub_1000073B4(v174, &unk_1006C3FD0);
}