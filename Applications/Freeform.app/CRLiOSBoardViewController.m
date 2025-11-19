@interface CRLiOSBoardViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)allowsZoomHUD;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)hasMediaReplacerForInteractiveCanvasController:(id)a3;
- (BOOL)isClosedOrClosing;
- (BOOL)isInDrawingMode;
- (BOOL)isInFollowingMode;
- (BOOL)isInHandwritingMode;
- (BOOL)isPresentingCompactScenesNavigator;
- (BOOL)isPrimarySelectionPathReceiver;
- (BOOL)tappedCanvasBackgroundAtPoint:(CGPoint)a3;
- (BOOL)wantsToShowCanvasDotGridOnInteractiveCanvasController:(id)a3;
- (BOOL)wantsToShowConnectorKnobsOnInteractiveCanvasController:(id)a3;
- (BOOL)wantsToSuppressMultiselectionWithSingleBoundsForInteractiveCanvasController:(id)a3;
- (BOOL)zoomOnSelectionChange:(id)a3;
- (CGPoint)canvasCenterInCanvasBackgroundLayer:(id)a3;
- (CGPoint)contentOffsetForCanvasBackgroundLayer:(id)a3;
- (CGPoint)originOffsetForCanvasBackgroundLayer:(id)a3;
- (CGRect)rectForBorder;
- (CGRect)safeAreaLayoutFrameForInteractiveCanvasController:(id)a3;
- (CRLFindReplaceController)findReplaceController;
- (CRLiOSDocumentMode)currentDocumentMode;
- (CRLiOSDocumentMode)defaultDocumentMode;
- (CRLiOSDocumentModeController)documentModeController;
- (NSArray)childSearchTargets;
- (UIEdgeInsets)safeInsetsForTemporaryHUDsToAvoidViewsObscuringCanvasScrollViewForCanvasViewController:(id)a3;
- (UIFindInteraction)findReplaceInteraction;
- (UIWindow)keyboardObserversWindow;
- (_NSRange)visibleRootIndexRange;
- (_TtC8Freeform16CRLiOSPencilTray)sharedPencilTray;
- (_TtC8Freeform25CRLSelectionPathValidator)selectionPathValidator;
- (_TtC8Freeform25CRLiOSBoardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)pencilKitCanvasViewControllerForFreehandDrawingTools;
- (double)contentsScaleForCanvasBackgroundLayer:(id)a3;
- (double)displayCornerRadius;
- (id)barButtonItemForPresentingColorPickerWithHiddenPencilTray:(id)a3;
- (id)beginModalOperationWithLocalizedMessage:(id)a3 progress:(id)a4 cancelHandler:(id)a5;
- (id)beginModalOperationWithPresentedLocalizedMessage:(id)a3 progress:(id)a4 cancelHandler:(id)a5;
- (id)boardViewControllerTraitCollectionForContentLibraryViewController:(id)a3;
- (id)canvasViewScaleDetentsForInteractiveCanvasController:(id)a3 isFastPinch:(BOOL)a4;
- (id)containerForTopLevelInsertionForInteractiveCanvasController:(id)a3;
- (id)contentLibraryViewControllerDefaultSearchTerm:(id)a3;
- (id)editingCoordinatorForInteractiveCanvasController:(id)a3;
- (id)editorControllerForInteractiveCanvasController:(id)a3;
- (id)editorControllersToObserveForMode:(id)a3;
- (id)findInteraction:(id)a3 sessionForView:(id)a4;
- (id)freehandDrawingToolkitForPencilKitCanvasViewController:(id)a3;
- (id)infosToDisplayForInteractiveCanvasController:(id)a3;
- (id)interactiveCanvasControllerForFindController:(id)a3;
- (id)itemThumbnailDataForCloudSharingController:(id)a3;
- (id)itemTitleForCloudSharingController:(id)a3;
- (id)mediaReplacerForInteractiveCanvasController:(id)a3;
- (id)modelEnumeratorForSearchWithFlags:(unint64_t)a3;
- (id)pencilDocumentModeFor:(unint64_t)a3;
- (id)pencilKitRulerHostingViewForPencilKitCanvasViewController:(id)a3;
- (id)quickSelectHUDParentViewForCanvasViewController:(id)a3;
- (id)rectanglesObscuringView:(id)a3;
- (id)selectionModelTranslatorForInteractiveCanvasController:(id)a3;
- (id)selectionStateSnapshot;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)viewControllerForMiniFormatterForCanvasViewController:(id)a3;
- (unint64_t)freehandDrawingBehaviorAtUnscaledPoint:(CGPoint)a3;
- (unint64_t)pencilModeTypeForPencilKitCanvasViewController:(id)a3;
- (void)beginDrawingModeIfNeeded;
- (void)beginDrawingTransformModeIfNeeded;
- (void)beginHandwritingModeIfNeeded;
- (void)cloudSharingController:(id)a3 failedToSaveShareWithError:(id)a4;
- (void)cloudSharingControllerDidSaveShare:(id)a3;
- (void)cloudSharingControllerDidStopSharing:(id)a3;
- (void)contentLibraryViewController:(id)a3 willDisappearWithSearchTerm:(id)a4;
- (void)contentLibraryViewControllerDidCancelSearch:(id)a3;
- (void)continueAsynchronousWorkOnMainThreadUsingBlock:(id)a3;
- (void)createSceneShortcut:(id)a3;
- (void)didEndFollowingParticipant:(id)a3 shouldShowRefollowPlacard:(BOOL)a4;
- (void)didLongPressUndoButtonWithSender:(id)a3;
- (void)didPressBackOrCloseButtonWithSender:(id)a3;
- (void)didSetDocumentToMode:(id)a3 fromMode:(id)a4 animated:(BOOL)a5;
- (void)didStartFollowingParticipant:(id)a3;
- (void)didUpdateRectangleObscuringCanvasScrollViewForPencilTray:(id)a3;
- (void)dismissPresentedViewController;
- (void)documentCameraViewController:(id)a3 didFailWithError:(id)a4;
- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4;
- (void)documentCameraViewControllerDidCancel:(id)a3;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
- (void)endDrawingModeIfNeeded;
- (void)endModalOperationWithToken:(id)a3;
- (void)exportScenesAsPDFAction:(id)a3;
- (void)find:(id)a3;
- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4;
- (void)findInteraction:(id)a3 didEndFindSession:(id)a4;
- (void)freeformHelpShortcut:(id)a3;
- (void)generativePlaygroundHelper:(id)a3 didCreateImageAt:(id)a4;
- (void)generativePlaygroundHelperDidCancel:(id)a3;
- (void)handleBoardLibrarySnapshotUpdateWithNotification:(id)a3;
- (void)handleFavoriteBoard:(id)a3;
- (void)iCloudStatusDidChangeWithNotification:(id)a3;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)insertStickerFromItemProvider:(NSItemProvider *)a3 completionHandler:(id)a4;
- (void)insertText:(id)a3;
- (void)interactiveCanvasControllerDidScroll:(id)a3;
- (void)keyboardWillChangeFrame:(id)a3;
- (void)keyboardWillHideOrUndock:(id)a3;
- (void)keyboardWillShowOrDock:(id)a3;
- (void)linkAction:(id)a3;
- (void)loadView;
- (void)multipleRemoteParticipantsDidEndFollowingLocalParticipantsWithNumberOfParticipants:(int64_t)a3;
- (void)multipleRemoteParticipantsDidStartFollowingLocalParticipantWithNumberOfParticipants:(int64_t)a3;
- (void)networkReachabilityDidChangeWithNotification:(id)a3;
- (void)observedTraitsDidChange:(id)a3 :(id)a4;
- (void)prefersPencilOnlyDrawingDidChange;
- (void)prepareForPencilKitBeganStroke:(id)a3;
- (void)prepareForPencilKitEndingOrCancellingStroke:(id)a3;
- (void)prepareForPencilKitSnapshottingForPencilKitCanvasViewController:(id)a3;
- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)a3 forMediaType:(int64_t)a4 forSingleMediaObject:(BOOL)a5 completionHandler:(id)a6;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)processChanges:(id)a3 forChangeSource:(id)a4;
- (void)remoteParticipantDidEndFollowingLocalParticipantWithRemoteParticipant:(id)a3;
- (void)remoteParticipantDidStartFollowingLocalParticipantWithRemoteParticipant:(id)a3;
- (void)restoreUserActivityState:(id)a3;
- (void)selectionPathDidChangeWithFlags:(unint64_t)a3;
- (void)setDocumentModeController:(id)a3;
- (void)setFindReplaceController:(id)a3;
- (void)setIsCanvasDotGridEnabled:(BOOL)a3;
- (void)setIsConnectorModeEnabled:(BOOL)a3;
- (void)setPencilKitCanvasView:(id)a3;
- (void)setPencilKitCanvasViewController:(id)a3;
- (void)setPrimarySearchReference:(id)a3 forFindReplaceController:(id)a4;
- (void)setSearchReferencesToHighlight:(id)a3 forFindReplaceController:(id)a4;
- (void)shareFailedWithError:(id)a3 recordID:(id)a4;
- (void)showFollowEndedAlertWithHostShortName:(id)a3;
- (void)showFollowFailedAlertFor:(int64_t)a3;
- (void)showFollowRefusedAlert;
- (void)syncControllerSavedZoneWithNotification:(id)a3;
- (void)tearDown;
- (void)toggleHapticFeedbackAction:(id)a3;
- (void)toggleSnapToGridAction:(id)a3;
- (void)toolkitDidDrawWithFinger;
- (void)toolkitDidDrawWithIndirectTouch;
- (void)toolkitDidDrawWithPencil;
- (void)updateAdditionalSafeArea;
- (void)updateCountInSearchBarUI;
- (void)updateToolbarButtons;
- (void)userDidInteractWithCanvas:(id)a3;
- (void)validateCommand:(id)a3;
- (void)validateSelectionStateUsing:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willSetDocumentToMode:(id)a3 fromMode:(id)a4 animated:(BOOL)a5;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
- (void)withRootSearchTargetAtIndex:(unint64_t)a3 executeBlock:(id)a4;
- (void)zoom100PercentAction:(id)a3;
@end

@implementation CRLiOSBoardViewController

- (void)iCloudStatusDidChangeWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005EAB28();
}

- (void)shareFailedWithError:(id)a3 recordID:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  sub_1005E78DC(v8, v6);
}

- (void)cloudSharingController:(id)a3 failedToSaveShareWithError:(id)a4
{
  v5 = a4;
  v8 = self;
  sub_100F74038(v5, v8);
  v6 = *(v8 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController);
  if (v6)
  {
    v7 = v6;
    sub_100F9F8FC();
  }
}

- (id)itemTitleForCloudSharingController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005EAC48();
  v7 = v6;

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)cloudSharingControllerDidSaveShare:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005E7E88(v4);
}

- (void)cloudSharingControllerDidStopSharing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005EAD5C();
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

- (void)networkReachabilityDidChangeWithNotification:(id)a3
{
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = self;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_10064191C(0, 0, v6, &unk_10146FCA0, v10);
}

- (void)syncControllerSavedZoneWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100646CD4(v4);
}

- (void)didLongPressUndoButtonWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100658680(v5);

  sub_100005070(v5);
}

- (void)didPressBackOrCloseButtonWithSender:(id)a3
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

  v6 = self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(self, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_10000CAAC(v9, &unk_1019F4D00);
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10067B578(v6);
}

- (void)documentPickerWasCancelled:(id)a3
{
  sub_100006370(0, &qword_1019F6EE0);
  v4 = static OS_os_log.default.getter();
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v3, "User cancelled inserting a file", 31, 2, _swiftEmptyArrayStorage);
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_1000063B8(&qword_1019F6EC0, type metadata accessor for InfoKey);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v12[4] = sub_10067EC3C;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = *"";
  v12[2] = sub_100007638;
  v12[3] = &unk_10187F4B0;
  v9 = _Block_copy(v12);
  v10 = a3;
  v11 = self;

  [v10 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
}

- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10066A1A4(v6, v7);
}

- (void)documentCameraViewControllerDidCancel:(id)a3
{
  v3 = qword_1019F2098;
  v6 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlDefault;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v5, "Document camera cancelled", 25, 2, _swiftEmptyArrayStorage);
  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)documentCameraViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_10067B6C4(v6, v8);
}

- (void)generativePlaygroundHelper:(id)a3 didCreateImageAt:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&unk_1019F6B30);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10146C6B0;
  (*(v7 + 16))(v11 + v10, v9, v6);
  v12 = a3;
  v13 = self;
  v14 = sub_101013118();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v19 = v14;
  v20 = sub_10067EADC;
  v21 = v15;
  v16 = v13;
  sub_10126B4EC(v11, sub_10067EAE4, v18);

  swift_setDeallocating();
  v17 = *(v7 + 8);
  v17(v11 + v10, v6);
  swift_deallocClassInstance();
  v17(v9, v6);
}

- (void)generativePlaygroundHelperDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10067B810();
}

- (void)insertText:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_10066C348(v4, v6);
}

- (CRLiOSDocumentModeController)documentModeController
{
  v2 = self;
  v3 = sub_101012FD4();

  return v3;
}

- (void)setDocumentModeController:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController);
  *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) = a3;
  v3 = a3;
}

- (void)setPencilKitCanvasViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController);
  *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController) = a3;
  v3 = a3;
}

- (void)setPencilKitCanvasView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView);
  *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView) = a3;
  v3 = a3;
}

- (UIFindInteraction)findReplaceInteraction
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CRLFindReplaceController)findReplaceController
{
  v2 = self;
  v3 = sub_1010137CC();

  return v3;
}

- (void)setFindReplaceController:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___findReplaceController);
  *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___findReplaceController) = a3;
  v3 = a3;
}

- (id)findInteraction:(id)a3 sessionForView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10101389C(v6);

  return v9;
}

- (void)findInteraction:(id)a3 didBeginFindSession:(id)a4
{
  v4 = *(*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  v5 = self;
  v6 = v4;
  sub_1008FEE94(1);

  v7 = [objc_allocWithZone(CRLiOSDocumentModeFindReplace) initWithBoardViewController:v5 andInteractiveCanvasController:*(v5 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController)];
  v8 = sub_101012FD4();
  [v8 setMode:v7 animated:1];
}

- (void)findInteraction:(id)a3 didEndFindSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_101053D90();
}

- (BOOL)isClosedOrClosing
{
  if (*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isClosing))
  {
    return 1;
  }

  else
  {
    return *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isClosed);
  }
}

- (void)tearDown
{
  v2 = self;
  sub_10101542C();
}

- (void)loadView
{
  v2 = self;
  sub_101017174();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10101884C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_101019FA0(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10101A4F0(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10101F7C8();
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_100699760;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  sub_10101FBE4(v10, a4, v8, v9);
  sub_1000C1014(v8);
}

- (_TtC8Freeform16CRLiOSPencilTray)sharedPencilTray
{
  v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray;
  v3 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray);
  if (v3)
  {
    v4 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray);
  }

  else
  {
    v6 = self;
    v7 = sub_101023BFC();
    v8 = *(self + v2);
    *(self + v2) = v7;
    v4 = v7;

    v3 = 0;
  }

  v9 = v3;

  return v4;
}

- (void)restoreUserActivityState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1010241BC(v4);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1010244C0(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_101024838(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_101024B7C(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_101025690(v6, a4);

  swift_unknownObjectRelease();
}

- (void)observedTraitsDidChange:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_101054EEC(v7);
}

- (void)updateAdditionalSafeArea
{
  v2 = self;
  sub_101025F4C();
}

- (void)handleBoardLibrarySnapshotUpdateWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_101026768(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)setIsCanvasDotGridEnabled:(BOOL)a3
{
  v4 = self;
  sub_101028E9C(a3);
}

- (void)setIsConnectorModeEnabled:(BOOL)a3
{
  v4 = self;
  sub_101029C04(a3);
}

- (BOOL)isInFollowingMode
{
  v2 = *(*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  v3 = self;
  v4 = v2;
  v5 = sub_1008FB7A4();

  return v5 & 1;
}

- (CRLiOSDocumentMode)currentDocumentMode
{
  v2 = self;
  v3 = sub_101012FD4();
  v4 = [v3 mode];

  return v4;
}

- (id)quickSelectHUDParentViewForCanvasViewController:(id)a3
{
  v3 = [(CRLiOSBoardViewController *)self view];

  return v3;
}

- (void)prefersPencilOnlyDrawingDidChange
{
  v4 = self;
  v2 = sub_101012FD4();
  v3 = [v2 mode];

  [v3 prefersPencilOnlyDrawingDidChange];
}

- (void)dismissPresentedViewController
{
  v7 = self;
  v2 = [(CRLiOSBoardViewController *)v7 presentedViewController];
  v3 = v7;
  if (v2)
  {
    v4 = [(CRLiOSBoardViewController *)v7 presentedViewController];
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass() == 0;
    }

    else
    {
      v6 = 1;
    }

    [v2 dismissViewControllerAnimated:v6 completion:0];

    v3 = v7;
  }
}

- (void)beginHandwritingModeIfNeeded
{
  v2 = self;
  sub_10102E794();
}

- (void)userDidInteractWithCanvas:(id)a3
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewState);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.setter();
}

- (UIEdgeInsets)safeInsetsForTemporaryHUDsToAvoidViewsObscuringCanvasScrollViewForCanvasViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_101055600();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (id)containerForTopLevelInsertionForInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10105579C(v4);

  return v6;
}

- (id)infosToDisplayForInteractiveCanvasController:(id)a3
{
  v3 = *(*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v4 = self;
  v5 = v3;
  sub_100EB8D4C();

  sub_1005B981C(&qword_1019F5720);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)editorControllerForInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10102EAFC();

  return v6;
}

- (id)selectionModelTranslatorForInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_101056288();

  return v6;
}

- (id)editingCoordinatorForInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_101056860();
  v7 = v6;

  return v6;
}

- (void)selectionPathDidChangeWithFlags:(unint64_t)a3
{
  v3 = self;
  sub_101056E38();
}

- (id)canvasViewScaleDetentsForInteractiveCanvasController:(id)a3 isFastPinch:(BOOL)a4
{
  sub_101057470();
  sub_100006370(0, &qword_1019FF3E0);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)rectanglesObscuringView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1010532BC();

  sub_100006370(0, &qword_101A04270);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (CGRect)safeAreaLayoutFrameForInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1010549A0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (BOOL)hasMediaReplacerForInteractiveCanvasController:(id)a3
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_mediaReplacer);
  if (v3)
  {
    v6 = *(v3 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_interactiveCanvasController);
    sub_100006370(0, &qword_1019F8508);
    v7 = a3;
    v8 = self;
    v9 = v6;
    v10 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (id)mediaReplacerForInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10102F450();

  return v6;
}

- (BOOL)wantsToSuppressMultiselectionWithSingleBoundsForInteractiveCanvasController:(id)a3
{
  v3 = self;
  v4 = sub_101012FD4();
  v5 = [v4 mode];

  LOBYTE(v4) = [v5 wantsToSuppressMultiselectionWithSingleBounds];
  return v4;
}

- (BOOL)wantsToShowCanvasDotGridOnInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10102F9B4(v4);

  return self & 1;
}

- (BOOL)wantsToShowConnectorKnobsOnInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10102FA34(v4);

  return self & 1;
}

- (BOOL)zoomOnSelectionChange:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10105755C();

  return self & 1;
}

- (BOOL)tappedCanvasBackgroundAtPoint:(CGPoint)a3
{
  v3 = self;
  v4 = sub_101057638();

  return v4 & 1;
}

- (void)interactiveCanvasControllerDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_101030138();
}

- (_TtC8Freeform25CRLSelectionPathValidator)selectionPathValidator
{
  v2 = self;
  v3 = sub_1010303AC();

  return v3;
}

- (BOOL)isPrimarySelectionPathReceiver
{
  v2 = self;
  v3 = sub_1010304A0();

  return v3 & 1;
}

- (id)selectionStateSnapshot
{
  v2 = self;
  v3 = sub_101012B64();
  v4 = [v3 selectionPath];

  v5 = objc_allocWithZone(type metadata accessor for CRLPersistableSelectionPath(0));
  sub_100702EC8(v4);
  v7 = v6;

  return v7;
}

- (void)validateSelectionStateUsing:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_101030634(a3);
}

- (void)updateToolbarButtons
{
  v2 = self;
  sub_101030890();
}

- (BOOL)allowsZoomHUD
{
  v2 = self;
  v3 = sub_101033130();

  return v3 & 1;
}

- (id)viewControllerForMiniFormatterForCanvasViewController:(id)a3
{
  v3 = self;
  v4 = [(CRLiOSBoardViewController *)v3 traitCollection];
  if (([objc_opt_self() crl_phoneUI] & 1) == 0)
  {
    v5 = [(CRLiOSBoardViewController *)v4 crl_isCompactWidth];

    if (v5)
    {
      goto LABEL_5;
    }

    v4 = v3;
    v3 = *(v3 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController);
  }

LABEL_5:

  return v3;
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
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
    memset(v16, 0, sizeof(v16));
    v7 = self;
  }

  sub_1010332F8(a3, v16, v17);

  sub_10000CAAC(v16, &unk_1019F4D00);
  v8 = v18;
  if (v18)
  {
    v9 = sub_100020E58(v17, v18);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    sub_100005070(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
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
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_1010338FC(a3, v10);

  sub_10000CAAC(v10, &unk_1019F4D00);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_101033D0C(v4);
}

- (void)find:(id)a3
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

  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = self;
  sub_10102E35C(sub_10067C02C, v6);

  sub_10000CAAC(v8, &unk_1019F4D00);
}

- (_TtC8Freeform25CRLiOSBoardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isPresentingCompactScenesNavigator
{
  v2 = self;
  v3 = sub_101036390();

  return v3 & 1;
}

- (double)displayCornerRadius
{
  v2 = self;
  v3 = [(CRLiOSBoardViewController *)v2 view];
  if (v3)
  {
    v5 = v3;
    v6 = [v3 traitCollection];

    [v6 displayCornerRadius];
    v8 = v7;

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (CGRect)rectForBorder
{
  v3 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView;
  v4 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView);
  v5 = self;
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [*(self + v3) adjustedContentInset];

  v14 = sub_100BDDE50(v7, v9, v11, v13, 0.0, 0.0);
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)didStartFollowingParticipant:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10103658C(v4);
}

- (void)didEndFollowingParticipant:(id)a3 shouldShowRefollowPlacard:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_101036F04(a3, a4);
}

- (void)remoteParticipantDidStartFollowingLocalParticipantWithRemoteParticipant:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10103755C(v4, 1);
}

- (void)remoteParticipantDidEndFollowingLocalParticipantWithRemoteParticipant:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10103755C(v4, 0);
}

- (void)multipleRemoteParticipantsDidStartFollowingLocalParticipantWithNumberOfParticipants:(int64_t)a3
{
  v4 = self;
  sub_1010378A8(a3, 1);
}

- (void)multipleRemoteParticipantsDidEndFollowingLocalParticipantsWithNumberOfParticipants:(int64_t)a3
{
  v4 = self;
  sub_1010378A8(a3, 0);
}

- (void)showFollowFailedAlertFor:(int64_t)a3
{
  v4 = self;
  sub_101037B6C(a3);
}

- (void)showFollowEndedAlertWithHostShortName:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_101037DA4(v4, v6);
}

- (void)showFollowRefusedAlert
{
  v2 = self;
  sub_101038090();
}

- (id)beginModalOperationWithLocalizedMessage:(id)a3 progress:(id)a4 cancelHandler:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_100699760;
  }

  v8 = a4;
  v9 = self;
  sub_10105772C();
  v11 = v10;
  sub_1000C1014(v7);

  return v11;
}

- (id)beginModalOperationWithPresentedLocalizedMessage:(id)a3 progress:(id)a4 cancelHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v7)
  {
    v11 = swift_allocObject();
    v11[2] = v7;
    v7 = sub_100699760;
  }

  else
  {
    v11 = 0;
  }

  v12 = a4;
  v13 = self;
  v14 = sub_10103848C(v8, v10, a4, v7, v11);
  sub_1000C1014(v7);

  return v14;
}

- (void)endModalOperationWithToken:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_101038E3C(a3);
  swift_unknownObjectRelease();
}

- (void)continueAsynchronousWorkOnMainThreadUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_101057B70(sub_100685EBC, v5);
}

- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)a3 forMediaType:(int64_t)a4 forSingleMediaObject:(BOOL)a5 completionHandler:(id)a6
{
  v6 = _Block_copy(a6);
  (*(v6 + 2))(v6, 0, 0, 1);

  _Block_release(v6);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = self;
  sub_10103ADB8(1);
}

- (void)freeformHelpShortcut:(id)a3
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

  [objc_opt_self() crl_phoneUI];
  sub_10101F6C4();

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)createSceneShortcut:(id)a3
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

  if ((*(*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState) + OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_captureIsAnimating) & 1) == 0)
  {
    [(CRLiOSBoardViewController *)self endDrawingModeIfNeeded];
    sub_10103A51C();
    sub_101048E40(0);
  }

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)linkAction:(id)a3
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

  sub_100654F08();
  v6 = *(*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  sub_1008FEE94(1);

  sub_10000CAAC(v7, &unk_1019F4D00);
}

- (void)toggleSnapToGridAction:(id)a3
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v6 = &type metadata for CRLFeatureFlags;
  v7 = sub_100004D60();
  v5[0] = 23;
  v3 = isFeatureEnabled(_:)();
  sub_100005070(v5);
  if (v3)
  {
    v4 = objc_opt_self();
    [v4 setShouldSnapToGrid:{objc_msgSend(v4, "shouldSnapToGrid") ^ 1}];
  }

  sub_10000CAAC(v8, &unk_1019F4D00);
}

- (void)toggleHapticFeedbackAction:(id)a3
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
    memset(v10, 0, sizeof(v10));
    v5 = self;
  }

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = [v7 BOOLForKey:@"CRLUseHapticFeedbackWhenSnapping"];

  v9 = [v6 standardUserDefaults];
  [v9 setBool:v8 ^ 1 forKey:@"CRLUseHapticFeedbackWhenSnapping"];

  sub_10000CAAC(v10, &unk_1019F4D00);
}

- (void)zoom100PercentAction:(id)a3
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

  sub_1010107F4(1.0);

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)handleFavoriteBoard:(id)a3
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = v16 - v6;
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v9 = self;
  }

  v10 = sub_101034298();
  if (v10 == 2)
  {
  }

  else
  {
    v11 = v10;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    type metadata accessor for MainActor();
    v13 = self;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = &protocol witness table for MainActor;
    *(v15 + 32) = v13;
    *(v15 + 40) = v11 & 1;
    sub_10064191C(0, 0, v7, &unk_1014C20C0, v15);
  }

  sub_10000CAAC(v16, &unk_1019F4D00);
}

- (void)exportScenesAsPDFAction:(id)a3
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
    memset(v10, 0, sizeof(v10));
    v5 = self;
  }

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.crlDefault;
  v7 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v7, "Exporting Scenes to PDF.", 24, 2, _swiftEmptyArrayStorage);
  v8 = *(*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v9 = sub_100EC8784();

  sub_10104BEF0(v9);

  sub_10000CAAC(v10, &unk_1019F4D00);
}

- (id)boardViewControllerTraitCollectionForContentLibraryViewController:(id)a3
{
  v3 = [(CRLiOSBoardViewController *)self traitCollection];

  return v3;
}

- (id)contentLibraryViewControllerDefaultSearchTerm:(id)a3
{
  if (*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shapeLibrarySearchTerm + 8))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)contentLibraryViewController:(id)a3 willDisappearWithSearchTerm:(id)a4
{
  if (a4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shapeLibrarySearchTerm);
  *v7 = v5;
  v7[1] = v6;
}

- (void)contentLibraryViewControllerDidCancelSearch:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shapeLibrarySearchTerm);
  *v3 = 0;
  v3[1] = 0;
}

- (CRLiOSDocumentMode)defaultDocumentMode
{
  v2 = [objc_allocWithZone(CRLiOSDocumentModeEdit) initWithBoardViewController:self];

  return v2;
}

- (id)editorControllersToObserveForMode:(id)a3
{
  sub_1005B981C(&unk_1019F4D60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101465920;
  v5 = self;
  *(v4 + 32) = sub_101012B64();

  sub_100006370(0, &unk_101A1B848);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)willSetDocumentToMode:(id)a3 fromMode:(id)a4 animated:(BOOL)a5
{
  v7 = self;
  v6 = [a3 pencilModeType] == 2;
  *(v7 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isChangingDocumentModeToHandwriting) = v6;
}

- (void)didSetDocumentToMode:(id)a3 fromMode:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_101057E6C(v7, v8);
}

- (unint64_t)pencilModeTypeForPencilKitCanvasViewController:(id)a3
{
  v3 = self;
  v4 = sub_101012FD4();
  v5 = [v4 mode];

  v6 = [v5 pencilModeType];
  return v6;
}

- (id)freehandDrawingToolkitForPencilKitCanvasViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1010583A4();

  return v6;
}

- (id)pencilKitRulerHostingViewForPencilKitCanvasViewController:(id)a3
{
  v3 = self;
  result = [(CRLiOSBoardViewController *)v3 view];
  if (result)
  {
    v5 = result;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)prepareForPencilKitSnapshottingForPencilKitCanvasViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_101058790(&selRef_prepareForPencilKitSnapshotting);
}

- (void)prepareForPencilKitBeganStroke:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_101058790(&selRef_didBeginPencilKitStroke);
}

- (void)prepareForPencilKitEndingOrCancellingStroke:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_101058790(&selRef_didFinishPencilKitStroke);
}

- (void)beginDrawingModeIfNeeded
{
  v2 = self;
  sub_10103F720();
}

- (void)endDrawingModeIfNeeded
{
  v5 = self;
  v2 = sub_101012FD4();
  v3 = [v2 mode];

  v4 = [v3 pencilModeType];
  if (v4 == 1)
  {
    [*(v5 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) resetToDefaultModeAnimated:1];
  }
}

- (void)beginDrawingTransformModeIfNeeded
{
  v2 = self;
  sub_10103F924();
}

- (void)toolkitDidDrawWithPencil
{
  v2 = self;
  sub_10103FD88();
}

- (void)toolkitDidDrawWithFinger
{
  v2 = self;
  sub_1010403A0("toolkitDidDrawWithFinger()", 26, 4016, &selRef_fingerUsedForFreehandDrawingMode);
}

- (void)toolkitDidDrawWithIndirectTouch
{
  v2 = self;
  sub_1010403A0("toolkitDidDrawWithIndirectTouch()", 33, 4023, &selRef_indirectTouchUsedForFreehandDrawingMode);
}

- (unint64_t)freehandDrawingBehaviorAtUnscaledPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = sub_1010408B8(x, y);

  return v6;
}

- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)pencilKitCanvasViewControllerForFreehandDrawingTools
{
  v2 = self;
  v3 = sub_1010588D4();

  return v3;
}

- (BOOL)isInDrawingMode
{
  v2 = self;
  v3 = sub_101012FD4();
  v4 = [v3 mode];

  v5 = [v4 pencilModeType];
  return v5 == 1;
}

- (BOOL)isInHandwritingMode
{
  v2 = self;
  v3 = sub_101012FD4();
  v4 = [v3 mode];

  v5 = [v4 pencilModeType];
  return v5 == 2;
}

- (id)pencilDocumentModeFor:(unint64_t)a3
{
  v4 = self;
  v5 = sub_101040FE4(a3);

  return v5;
}

- (void)didUpdateRectangleObscuringCanvasScrollViewForPencilTray:(id)a3
{
  v3 = self;
  sub_101025F4C();
}

- (id)barButtonItemForPresentingColorPickerWithHiddenPencilTray:(id)a3
{
  v3 = self;
  v4 = sub_1010132F0();

  return v4;
}

- (id)interactiveCanvasControllerForFindController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_101058CC8();

  return v6;
}

- (id)modelEnumeratorForSearchWithFlags:(unint64_t)a3
{
  v3 = [objc_allocWithZone(CRLDocumentModelEnumerator) initWithRootModelObject:*(*(*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) flags:a3 filter:0];

  return v3;
}

- (_NSRange)visibleRootIndexRange
{
  v2 = 0;
  v3 = 1;
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)withRootSearchTargetAtIndex:(unint64_t)a3 executeBlock:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_1010590D8(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)setPrimarySearchReference:(id)a3 forFindReplaceController:(id)a4
{
  v7 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = self;
  [v7 setPrimaryFindResultSearchReference:a3];
  if ([objc_opt_self() isOSFeatureEnabled:5])
  {
    [*(v9 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager) setPrimaryFindResultSearchReference:a3];
  }

  swift_unknownObjectRelease();
}

- (void)setSearchReferencesToHighlight:(id)a3 forFindReplaceController:(id)a4
{
  v6 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  v9 = a3;
  v7 = a4;
  v8 = self;
  [v6 setSearchReferencesToHighlight:v9];
  if ([objc_opt_self() isOSFeatureEnabled:5])
  {
    [*(v8 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager) setSearchReferencesToHighlight:v9];
  }
}

- (void)updateCountInSearchBarUI
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong updateResultCount];
}

- (NSArray)childSearchTargets
{
  v2 = self;
  sub_101042160();

  sub_1005B981C(&qword_101A28688);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v7 = a3;
  v9 = self;
  v8 = [v7 presentationStyle];
  sub_10103F3AC(v8, a4);
  sub_101021A10(v8, a4);
}

- (BOOL)accessibilityPerformEscape
{
  v2 = self;
  v3 = sub_1010428DC();

  return v3 & 1;
}

- (BOOL)accessibilityPerformMagicTap
{
  v2 = self;
  v3 = sub_101042B68();

  return v3 & 1;
}

- (UIWindow)keyboardObserversWindow
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  v3 = self;
  v4 = [v2 canvasView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 window];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)keyboardWillShowOrDock:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10101D0E4(0);
  v9 = v8;
  v10 = v9;
  while (1)
  {
    v11 = v10;
    v10 = [(CRLiOSBoardViewController *)v10 presentedViewController];

    if (!v10)
    {
      break;
    }

    type metadata accessor for CRLScenesViewController_iv();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for CRLCompactScenesViewController_i();
      if (!swift_dynamicCastClass())
      {
        continue;
      }
    }

    goto LABEL_9;
  }

  v12 = objc_opt_self();
  isa = Notification._bridgeToObjectiveC()().super.isa;
  LOBYTE(v12) = [v12 isKeyboardFrameChanging:isa];

  if (v12)
  {
    [*(v9 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) scrollCurrentSelectionToVisibleWithOptions:1];
    (*(v5 + 8))(v7, v4);

    return;
  }

LABEL_9:
  (*(v5 + 8))(v7, v4);
}

- (void)keyboardWillHideOrUndock:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10101D0E4(0);

  (*(v5 + 8))(v7, v4);
}

- (void)keyboardWillChangeFrame:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10104605C();

  (*(v5 + 8))(v7, v4);
}

- (void)insertStickerFromItemProvider:(NSItemProvider *)a3 completionHandler:(id)a4
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1014C2078;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1014938A0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_10119D67C(0, 0, v9, &unk_101470870, v14);
}

- (void)processChanges:(id)a3 forChangeSource:(id)a4
{
  type metadata accessor for CRLChangeRecord();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10104D018(v5, v7);

  sub_100005070(v7);
}

- (double)contentsScaleForCanvasBackgroundLayer:(id)a3
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  v4 = self;
  v5 = [v3 canvas];
  [v5 contentsScale];
  v7 = v6;

  return v7;
}

- (CGPoint)canvasCenterInCanvasBackgroundLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10104DADC(v4);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)originOffsetForCanvasBackgroundLayer:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  v5 = a3;
  v6 = self;
  v7 = [v4 layerHost];
  if (v7 && (v8 = [v7 canvasLayer], swift_unknownObjectRelease(), v8))
  {
    [v8 bounds];
    v10 = v9;
    v12 = v11;

    v13 = v12;
    v14 = v10;
  }

  else
  {

    v14 = 0.0;
    v13 = 0.0;
  }

  result.y = v13;
  result.x = v14;
  return result;
}

- (CGPoint)contentOffsetForCanvasBackgroundLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10105A1B4();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

@end