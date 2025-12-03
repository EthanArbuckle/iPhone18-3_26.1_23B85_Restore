@interface CRLiOSFolderGridViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (NSUndoManager)undoManager;
- (UIWindow)keyboardObserversWindow;
- (_TtC8Freeform30CRLiOSFolderGridViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)itemThumbnailDataForCloudSharingController:(id)controller;
- (id)itemTitleForCloudSharingController:(id)controller;
- (void)cloudSharingController:(id)controller failedToSaveShareWithError:(id)error;
- (void)cloudSharingControllerDidSaveShare:(id)share;
- (void)cloudSharingControllerDidStopSharing:(id)sharing;
- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)didRecognizeSingleContinuousTouchGesture:(id)gesture;
- (void)duplicateBoardsAction:(id)action;
- (void)handleFavoriteBoard:(id)board;
- (void)iCloudStatusDidChangeWithNotification:(id)notification;
- (void)keyboardWillHideOrUndock:(id)undock;
- (void)newBoard:(id)board;
- (void)observedTraitsDidChange;
- (void)restoreUserActivityState:(id)state;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)shareFailedWithError:(id)error recordID:(id)d;
- (void)sortByDateAction:(id)action;
- (void)sortByNameAction:(id)action;
- (void)sortBySharedByAction:(id)action;
- (void)sortUseGroupsAction:(id)action;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)validateCommand:(id)command;
- (void)viewBoardsAsIcons:(id)icons;
- (void)viewBoardsInAList:(id)list;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CRLiOSFolderGridViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10005A95C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10007060C(appear);
}

- (NSUndoManager)undoManager
{
  sub_100071220();

  return v2;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10008774C(appear);
}

- (void)duplicateBoardsAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_100F378A4()[2];

  if (v6)
  {
    v7 = sub_100F378A4();
    sub_100F37CBC(v7);

    [(CRLiOSFolderGridViewController *)self setEditing:0 animated:1];
  }

  sub_10000CAAC(v8, &unk_1019F4D00);
}

- (void)handleFavoriteBoard:(id)board
{
  if (board)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_100F378A4()[2];

  if (v6)
  {
    v7 = sub_100F378A4();
    sub_100F37F34(v7);
  }

  else
  {
  }

  sub_10000CAAC(v8, &unk_1019F4D00);
}

- (void)viewBoardsAsIcons:(id)icons
{
  if (icons)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout) = 1;
  if ((v6 & 1) == 0)
  {
    sub_10005C940();
  }

  sub_10000CAAC(v7, &unk_1019F4D00);
}

- (void)viewBoardsInAList:(id)list
{
  if (list)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout) = 0;
  if (v6 == 1)
  {
    sub_10005C940();
  }

  sub_10000CAAC(v7, &unk_1019F4D00);
}

- (void)sortByDateAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions) != 1)
  {
    sub_100064314(1u, *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1), *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2));
  }

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)sortByNameAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions))
  {
    sub_100064314(0, *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1), *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2));
  }

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)sortBySharedByAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions) != 2)
  {
    sub_100064314(2u, *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1), *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2));
  }

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)sortUseGroupsAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100064314(*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions), *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1), (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2) & 1) == 0);

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100F39038(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLiOSFolderGridViewController();
  v4 = v7.receiver;
  [(CRLiOSFolderGridViewController *)&v7 viewDidDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider];
  v6 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_shareErrorObservers;
  if ([*(v5 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_shareErrorObservers) containsObject:{v4, v7.receiver, v7.super_class}])
  {
    [*(v5 + v6) removeObject:v4];
  }
}

- (void)observedTraitsDidChange
{
  selfCopy = self;
  sub_100F391E8();
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    selfCopy2 = self;
  }

  sub_100F3A670(action, v11);
  v9 = v8;

  sub_10000CAAC(v11, &unk_1019F4D00);
  return v9 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_100F3AB50(commandCopy);
}

- (void)restoreUserActivityState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_100F3C7C0(stateCopy);
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  selfCopy = self;
  sub_100F40978(editingCopy, animated);
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_100F40F40(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  if ([viewCopy isEditing])
  {
    sub_100F3FE88();
  }

  sub_10006D850();

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_100F74F9C();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  if (!-[CRLiOSFolderGridViewController isEditing](selfCopy, "isEditing") || ![viewCopy isEditing])
  {
    [(CRLiOSFolderGridViewController *)selfCopy setEditing:1 animated:1];
  }

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_100F75648(viewCopy, v10);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100F454D0(viewCopy, configurationCopy, animator);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_100070F30();
  sub_100F5E980(configurationCopy, 2u);
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100F7649C(configurationCopy);

  swift_unknownObjectRelease();
}

- (_TtC8Freeform30CRLiOSFolderGridViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)newBoard:(id)board
{
  if (board)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  v6 = self + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(self, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_10000CAAC(v9, &unk_1019F4D00);
}

- (id)itemTitleForCloudSharingController:(id)controller
{
  controllerCopy = controller;
  share = [controllerCopy share];
  if (share)
  {
    v5 = share;
    static CKShare.SystemFieldKey.title.getter();
    sub_100006370(0, &qword_1019F52C0);
    CKRecordKeyValueSetting.subscript.getter();

    if (v9)
    {
      v6 = String._bridgeToObjectiveC()();

      v7 = v6;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (void)cloudSharingControllerDidStopSharing:(id)sharing
{
  v4 = qword_1019F22C8;
  sharingCopy = sharing;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.shareState;
  v7 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v7, "Stopped sharing", 15, 2, _swiftEmptyArrayStorage);
}

- (void)cloudSharingControllerDidSaveShare:(id)share
{
  shareCopy = share;
  selfCopy = self;
  sub_100F502A0(shareCopy);
}

- (void)cloudSharingController:(id)controller failedToSaveShareWithError:(id)error
{
  v5 = qword_1019F22C8;
  errorCopy = error;
  selfCopy = self;
  if (v5 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v10 = Error.localizedDescription.getter();
  v12 = v11;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v10;
  *(inited + 40) = v12;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v13, "Share failed with error %@", 26, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_100F74038(errorCopy, selfCopy);
}

- (id)itemThumbnailDataForCloudSharingController:(id)controller
{
  controllerCopy = controller;
  share = [controllerCopy share];
  if (share)
  {
    v5 = share;
    static CKShare.SystemFieldKey.thumbnailImageData.getter();
    sub_100006370(0, &qword_1019F52C0);
    CKRecordKeyValueSetting.subscript.getter();

    v6 = 0;
    if (v10 >> 60 != 15)
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100025870(v9, v10);
      v6 = isa;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)iCloudStatusDidChangeWithNotification:(id)notification
{
  selfCopy = self;
  sub_100F3FE88();
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100F5D0E4(controllerCopy);
}

- (void)didRecognizeSingleContinuousTouchGesture:(id)gesture
{
  if (gesture)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100F5D1F8(v6);

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_100070F30();
  sub_100F5E980(draggingCopy, 1u);
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_100F60DD0(draggingCopy, decelerate);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_100F61040(deceleratingCopy);
}

- (void)shareFailedWithError:(id)error recordID:(id)d
{
  errorCopy = error;
  dCopy = d;
  selfCopy = self;
  sub_100F63834(errorCopy, dCopy);
}

- (UIWindow)keyboardObserversWindow
{
  selfCopy = self;
  result = [(CRLiOSFolderGridViewController *)selfCopy view];
  if (result)
  {
    v4 = result;
    window = [(UIWindow *)result window];

    return window;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)keyboardWillHideOrUndock:(id)undock
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100F46A04(0.0);

  (*(v5 + 8))(v7, v4);
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  v3 = sub_1012CB5C4();

  return v3 & 1;
}

@end