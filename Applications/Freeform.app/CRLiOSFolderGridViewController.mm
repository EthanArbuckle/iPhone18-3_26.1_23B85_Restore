@interface CRLiOSFolderGridViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (NSUndoManager)undoManager;
- (UIWindow)keyboardObserversWindow;
- (_TtC8Freeform30CRLiOSFolderGridViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)itemThumbnailDataForCloudSharingController:(id)a3;
- (id)itemTitleForCloudSharingController:(id)a3;
- (void)cloudSharingController:(id)a3 failedToSaveShareWithError:(id)a4;
- (void)cloudSharingControllerDidSaveShare:(id)a3;
- (void)cloudSharingControllerDidStopSharing:(id)a3;
- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)didRecognizeSingleContinuousTouchGesture:(id)a3;
- (void)duplicateBoardsAction:(id)a3;
- (void)handleFavoriteBoard:(id)a3;
- (void)iCloudStatusDidChangeWithNotification:(id)a3;
- (void)keyboardWillHideOrUndock:(id)a3;
- (void)newBoard:(id)a3;
- (void)observedTraitsDidChange;
- (void)restoreUserActivityState:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)shareFailedWithError:(id)a3 recordID:(id)a4;
- (void)sortByDateAction:(id)a3;
- (void)sortByNameAction:(id)a3;
- (void)sortBySharedByAction:(id)a3;
- (void)sortUseGroupsAction:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)validateCommand:(id)a3;
- (void)viewBoardsAsIcons:(id)a3;
- (void)viewBoardsInAList:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CRLiOSFolderGridViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10005A95C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10007060C(a3);
}

- (NSUndoManager)undoManager
{
  sub_100071220();

  return v2;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10008774C(a3);
}

- (void)duplicateBoardsAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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

- (void)handleFavoriteBoard:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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

- (void)viewBoardsAsIcons:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = self;
  }

  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout) = 1;
  if ((v6 & 1) == 0)
  {
    sub_10005C940();
  }

  sub_10000CAAC(v7, &unk_1019F4D00);
}

- (void)viewBoardsInAList:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = self;
  }

  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout) = 0;
  if (v6 == 1)
  {
    sub_10005C940();
  }

  sub_10000CAAC(v7, &unk_1019F4D00);
}

- (void)sortByDateAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions) != 1)
  {
    sub_100064314(1u, *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1), *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2));
  }

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)sortByNameAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions))
  {
    sub_100064314(0, *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1), *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2));
  }

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)sortBySharedByAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions) != 2)
  {
    sub_100064314(2u, *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1), *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2));
  }

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)sortUseGroupsAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100064314(*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions), *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1), (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2) & 1) == 0);

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100F39038(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLiOSFolderGridViewController();
  v4 = v7.receiver;
  [(CRLiOSFolderGridViewController *)&v7 viewDidDisappear:v3];
  v5 = *&v4[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider];
  v6 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_shareErrorObservers;
  if ([*(v5 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_shareErrorObservers) containsObject:{v4, v7.receiver, v7.super_class}])
  {
    [*(v5 + v6) removeObject:v4];
  }
}

- (void)observedTraitsDidChange
{
  v2 = self;
  sub_100F391E8();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v7 = self;
  }

  sub_100F3A670(a3, v11);
  v9 = v8;

  sub_10000CAAC(v11, &unk_1019F4D00);
  return v9 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100F3AB50(v4);
}

- (void)restoreUserActivityState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100F3C7C0(v4);
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_100F40978(v5, a4);
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_100F40F40(v10, v9);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  if ([v10 isEditing])
  {
    sub_100F3FE88();
  }

  sub_10006D850();

  (*(v7 + 8))(v9, v6);
}

- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_100F74F9C();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  if (!-[CRLiOSFolderGridViewController isEditing](v11, "isEditing") || ![v10 isEditing])
  {
    [(CRLiOSFolderGridViewController *)v11 setEditing:1 animated:1];
  }

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_100F75648(v11, v10);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_100F454D0(v8, v9, a5);

  swift_unknownObjectRelease();
}

- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = a4;
  v7 = self;
  sub_100070F30();
  sub_100F5E980(v6, 2u);
}

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_100F7649C(v8);

  swift_unknownObjectRelease();
}

- (_TtC8Freeform30CRLiOSFolderGridViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)newBoard:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v5 = self;
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

- (id)itemTitleForCloudSharingController:(id)a3
{
  v3 = a3;
  v4 = [v3 share];
  if (v4)
  {
    v5 = v4;
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

- (void)cloudSharingControllerDidStopSharing:(id)a3
{
  v4 = qword_1019F22C8;
  v5 = a3;
  v8 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.shareState;
  v7 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v7, "Stopped sharing", 15, 2, _swiftEmptyArrayStorage);
}

- (void)cloudSharingControllerDidSaveShare:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100F502A0(v4);
}

- (void)cloudSharingController:(id)a3 failedToSaveShareWithError:(id)a4
{
  v5 = qword_1019F22C8;
  v6 = a4;
  v7 = self;
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
  sub_100F74038(v6, v7);
}

- (id)itemThumbnailDataForCloudSharingController:(id)a3
{
  v3 = a3;
  v4 = [v3 share];
  if (v4)
  {
    v5 = v4;
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

- (void)iCloudStatusDidChangeWithNotification:(id)a3
{
  v3 = self;
  sub_100F3FE88();
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100F5D0E4(v4);
}

- (void)didRecognizeSingleContinuousTouchGesture:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100F5D1F8(v6);

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100070F30();
  sub_100F5E980(v4, 1u);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100F60DD0(v6, a4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100F61040(v4);
}

- (void)shareFailedWithError:(id)a3 recordID:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  sub_100F63834(v8, v6);
}

- (UIWindow)keyboardObserversWindow
{
  v2 = self;
  result = [(CRLiOSFolderGridViewController *)v2 view];
  if (result)
  {
    v4 = result;
    v5 = [(UIWindow *)result window];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)keyboardWillHideOrUndock:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100F46A04(0.0);

  (*(v5 + 8))(v7, v4);
}

- (BOOL)accessibilityPerformEscape
{
  v2 = self;
  v3 = sub_1012CB5C4();

  return v3 & 1;
}

@end