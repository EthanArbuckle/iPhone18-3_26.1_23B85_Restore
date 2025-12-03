@interface CRLiOSBoardViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)allowsZoomHUD;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)hasMediaReplacerForInteractiveCanvasController:(id)controller;
- (BOOL)isClosedOrClosing;
- (BOOL)isInDrawingMode;
- (BOOL)isInFollowingMode;
- (BOOL)isInHandwritingMode;
- (BOOL)isPresentingCompactScenesNavigator;
- (BOOL)isPrimarySelectionPathReceiver;
- (BOOL)tappedCanvasBackgroundAtPoint:(CGPoint)point;
- (BOOL)wantsToShowCanvasDotGridOnInteractiveCanvasController:(id)controller;
- (BOOL)wantsToShowConnectorKnobsOnInteractiveCanvasController:(id)controller;
- (BOOL)wantsToSuppressMultiselectionWithSingleBoundsForInteractiveCanvasController:(id)controller;
- (BOOL)zoomOnSelectionChange:(id)change;
- (CGPoint)canvasCenterInCanvasBackgroundLayer:(id)layer;
- (CGPoint)contentOffsetForCanvasBackgroundLayer:(id)layer;
- (CGPoint)originOffsetForCanvasBackgroundLayer:(id)layer;
- (CGRect)rectForBorder;
- (CGRect)safeAreaLayoutFrameForInteractiveCanvasController:(id)controller;
- (CRLFindReplaceController)findReplaceController;
- (CRLiOSDocumentMode)currentDocumentMode;
- (CRLiOSDocumentMode)defaultDocumentMode;
- (CRLiOSDocumentModeController)documentModeController;
- (NSArray)childSearchTargets;
- (UIEdgeInsets)safeInsetsForTemporaryHUDsToAvoidViewsObscuringCanvasScrollViewForCanvasViewController:(id)controller;
- (UIFindInteraction)findReplaceInteraction;
- (UIWindow)keyboardObserversWindow;
- (_NSRange)visibleRootIndexRange;
- (_TtC8Freeform16CRLiOSPencilTray)sharedPencilTray;
- (_TtC8Freeform25CRLSelectionPathValidator)selectionPathValidator;
- (_TtC8Freeform25CRLiOSBoardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)pencilKitCanvasViewControllerForFreehandDrawingTools;
- (double)contentsScaleForCanvasBackgroundLayer:(id)layer;
- (double)displayCornerRadius;
- (id)barButtonItemForPresentingColorPickerWithHiddenPencilTray:(id)tray;
- (id)beginModalOperationWithLocalizedMessage:(id)message progress:(id)progress cancelHandler:(id)handler;
- (id)beginModalOperationWithPresentedLocalizedMessage:(id)message progress:(id)progress cancelHandler:(id)handler;
- (id)boardViewControllerTraitCollectionForContentLibraryViewController:(id)controller;
- (id)canvasViewScaleDetentsForInteractiveCanvasController:(id)controller isFastPinch:(BOOL)pinch;
- (id)containerForTopLevelInsertionForInteractiveCanvasController:(id)controller;
- (id)contentLibraryViewControllerDefaultSearchTerm:(id)term;
- (id)editingCoordinatorForInteractiveCanvasController:(id)controller;
- (id)editorControllerForInteractiveCanvasController:(id)controller;
- (id)editorControllersToObserveForMode:(id)mode;
- (id)findInteraction:(id)interaction sessionForView:(id)view;
- (id)freehandDrawingToolkitForPencilKitCanvasViewController:(id)controller;
- (id)infosToDisplayForInteractiveCanvasController:(id)controller;
- (id)interactiveCanvasControllerForFindController:(id)controller;
- (id)itemThumbnailDataForCloudSharingController:(id)controller;
- (id)itemTitleForCloudSharingController:(id)controller;
- (id)mediaReplacerForInteractiveCanvasController:(id)controller;
- (id)modelEnumeratorForSearchWithFlags:(unint64_t)flags;
- (id)pencilDocumentModeFor:(unint64_t)for;
- (id)pencilKitRulerHostingViewForPencilKitCanvasViewController:(id)controller;
- (id)quickSelectHUDParentViewForCanvasViewController:(id)controller;
- (id)rectanglesObscuringView:(id)view;
- (id)selectionModelTranslatorForInteractiveCanvasController:(id)controller;
- (id)selectionStateSnapshot;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)viewControllerForMiniFormatterForCanvasViewController:(id)controller;
- (unint64_t)freehandDrawingBehaviorAtUnscaledPoint:(CGPoint)point;
- (unint64_t)pencilModeTypeForPencilKitCanvasViewController:(id)controller;
- (void)beginDrawingModeIfNeeded;
- (void)beginDrawingTransformModeIfNeeded;
- (void)beginHandwritingModeIfNeeded;
- (void)cloudSharingController:(id)controller failedToSaveShareWithError:(id)error;
- (void)cloudSharingControllerDidSaveShare:(id)share;
- (void)cloudSharingControllerDidStopSharing:(id)sharing;
- (void)contentLibraryViewController:(id)controller willDisappearWithSearchTerm:(id)term;
- (void)contentLibraryViewControllerDidCancelSearch:(id)search;
- (void)continueAsynchronousWorkOnMainThreadUsingBlock:(id)block;
- (void)createSceneShortcut:(id)shortcut;
- (void)didEndFollowingParticipant:(id)participant shouldShowRefollowPlacard:(BOOL)placard;
- (void)didLongPressUndoButtonWithSender:(id)sender;
- (void)didPressBackOrCloseButtonWithSender:(id)sender;
- (void)didSetDocumentToMode:(id)mode fromMode:(id)fromMode animated:(BOOL)animated;
- (void)didStartFollowingParticipant:(id)participant;
- (void)didUpdateRectangleObscuringCanvasScrollViewForPencilTray:(id)tray;
- (void)dismissPresentedViewController;
- (void)documentCameraViewController:(id)controller didFailWithError:(id)error;
- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan;
- (void)documentCameraViewControllerDidCancel:(id)cancel;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)endDrawingModeIfNeeded;
- (void)endModalOperationWithToken:(id)token;
- (void)exportScenesAsPDFAction:(id)action;
- (void)find:(id)find;
- (void)findInteraction:(id)interaction didBeginFindSession:(id)session;
- (void)findInteraction:(id)interaction didEndFindSession:(id)session;
- (void)freeformHelpShortcut:(id)shortcut;
- (void)generativePlaygroundHelper:(id)helper didCreateImageAt:(id)at;
- (void)generativePlaygroundHelperDidCancel:(id)cancel;
- (void)handleBoardLibrarySnapshotUpdateWithNotification:(id)notification;
- (void)handleFavoriteBoard:(id)board;
- (void)iCloudStatusDidChangeWithNotification:(id)notification;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)insertStickerFromItemProvider:(NSItemProvider *)provider completionHandler:(id)handler;
- (void)insertText:(id)text;
- (void)interactiveCanvasControllerDidScroll:(id)scroll;
- (void)keyboardWillChangeFrame:(id)frame;
- (void)keyboardWillHideOrUndock:(id)undock;
- (void)keyboardWillShowOrDock:(id)dock;
- (void)linkAction:(id)action;
- (void)loadView;
- (void)multipleRemoteParticipantsDidEndFollowingLocalParticipantsWithNumberOfParticipants:(int64_t)participants;
- (void)multipleRemoteParticipantsDidStartFollowingLocalParticipantWithNumberOfParticipants:(int64_t)participants;
- (void)networkReachabilityDidChangeWithNotification:(id)notification;
- (void)observedTraitsDidChange:(id)change :(id)a4;
- (void)prefersPencilOnlyDrawingDidChange;
- (void)prepareForPencilKitBeganStroke:(id)stroke;
- (void)prepareForPencilKitEndingOrCancellingStroke:(id)stroke;
- (void)prepareForPencilKitSnapshottingForPencilKitCanvasViewController:(id)controller;
- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)reasons forMediaType:(int64_t)type forSingleMediaObject:(BOOL)object completionHandler:(id)handler;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)processChanges:(id)changes forChangeSource:(id)source;
- (void)remoteParticipantDidEndFollowingLocalParticipantWithRemoteParticipant:(id)participant;
- (void)remoteParticipantDidStartFollowingLocalParticipantWithRemoteParticipant:(id)participant;
- (void)restoreUserActivityState:(id)state;
- (void)selectionPathDidChangeWithFlags:(unint64_t)flags;
- (void)setDocumentModeController:(id)controller;
- (void)setFindReplaceController:(id)controller;
- (void)setIsCanvasDotGridEnabled:(BOOL)enabled;
- (void)setIsConnectorModeEnabled:(BOOL)enabled;
- (void)setPencilKitCanvasView:(id)view;
- (void)setPencilKitCanvasViewController:(id)controller;
- (void)setPrimarySearchReference:(id)reference forFindReplaceController:(id)controller;
- (void)setSearchReferencesToHighlight:(id)highlight forFindReplaceController:(id)controller;
- (void)shareFailedWithError:(id)error recordID:(id)d;
- (void)showFollowEndedAlertWithHostShortName:(id)name;
- (void)showFollowFailedAlertFor:(int64_t)for;
- (void)showFollowRefusedAlert;
- (void)syncControllerSavedZoneWithNotification:(id)notification;
- (void)tearDown;
- (void)toggleHapticFeedbackAction:(id)action;
- (void)toggleSnapToGridAction:(id)action;
- (void)toolkitDidDrawWithFinger;
- (void)toolkitDidDrawWithIndirectTouch;
- (void)toolkitDidDrawWithPencil;
- (void)updateAdditionalSafeArea;
- (void)updateCountInSearchBarUI;
- (void)updateToolbarButtons;
- (void)userDidInteractWithCanvas:(id)canvas;
- (void)validateCommand:(id)command;
- (void)validateSelectionStateUsing:(id)using;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willSetDocumentToMode:(id)mode fromMode:(id)fromMode animated:(BOOL)animated;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (void)withRootSearchTargetAtIndex:(unint64_t)index executeBlock:(id)block;
- (void)zoom100PercentAction:(id)action;
@end

@implementation CRLiOSBoardViewController

- (void)iCloudStatusDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1005EAB28();
}

- (void)shareFailedWithError:(id)error recordID:(id)d
{
  errorCopy = error;
  dCopy = d;
  selfCopy = self;
  sub_1005E78DC(errorCopy, dCopy);
}

- (void)cloudSharingController:(id)controller failedToSaveShareWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_100F74038(errorCopy, selfCopy);
  v6 = *(selfCopy + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController);
  if (v6)
  {
    v7 = v6;
    sub_100F9F8FC();
  }
}

- (id)itemTitleForCloudSharingController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
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

- (void)cloudSharingControllerDidSaveShare:(id)share
{
  shareCopy = share;
  selfCopy = self;
  sub_1005E7E88(shareCopy);
}

- (void)cloudSharingControllerDidStopSharing:(id)sharing
{
  sharingCopy = sharing;
  selfCopy = self;
  sub_1005EAD5C();
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

- (void)networkReachabilityDidChangeWithNotification:(id)notification
{
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  selfCopy = self;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = selfCopy;
  sub_10064191C(0, 0, v6, &unk_10146FCA0, v10);
}

- (void)syncControllerSavedZoneWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100646CD4(notificationCopy);
}

- (void)didLongPressUndoButtonWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100658680(v5);

  sub_100005070(v5);
}

- (void)didPressBackOrCloseButtonWithSender:(id)sender
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
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
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

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  pickerCopy = picker;
  selfCopy = self;
  sub_10067B578(v6);
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  sub_100006370(0, &qword_1019F6EE0);
  v4 = static OS_os_log.default.getter();
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v3, "User cancelled inserting a file", 31, 2, _swiftEmptyArrayStorage);
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
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
  controllerCopy = controller;
  selfCopy = self;

  [controllerCopy dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
}

- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan
{
  controllerCopy = controller;
  scanCopy = scan;
  selfCopy = self;
  sub_10066A1A4(controllerCopy, scanCopy);
}

- (void)documentCameraViewControllerDidCancel:(id)cancel
{
  v3 = qword_1019F2098;
  cancelCopy = cancel;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlDefault;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v5, "Document camera cancelled", 25, 2, _swiftEmptyArrayStorage);
  [cancelCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)documentCameraViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_10067B6C4(controllerCopy, errorCopy);
}

- (void)generativePlaygroundHelper:(id)helper didCreateImageAt:(id)at
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
  helperCopy = helper;
  selfCopy = self;
  v14 = sub_101013118();
  v15 = swift_allocObject();
  *(v15 + 16) = selfCopy;
  v19 = v14;
  v20 = sub_10067EADC;
  v21 = v15;
  v16 = selfCopy;
  sub_10126B4EC(v11, sub_10067EAE4, v18);

  swift_setDeallocating();
  v17 = *(v7 + 8);
  v17(v11 + v10, v6);
  swift_deallocClassInstance();
  v17(v9, v6);
}

- (void)generativePlaygroundHelperDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_10067B810();
}

- (void)insertText:(id)text
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_10066C348(v4, v6);
}

- (CRLiOSDocumentModeController)documentModeController
{
  selfCopy = self;
  v3 = sub_101012FD4();

  return v3;
}

- (void)setDocumentModeController:(id)controller
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController);
  *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) = controller;
  controllerCopy = controller;
}

- (void)setPencilKitCanvasViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController);
  *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController) = controller;
  controllerCopy = controller;
}

- (void)setPencilKitCanvasView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView);
  *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView) = view;
  viewCopy = view;
}

- (UIFindInteraction)findReplaceInteraction
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CRLFindReplaceController)findReplaceController
{
  selfCopy = self;
  v3 = sub_1010137CC();

  return v3;
}

- (void)setFindReplaceController:(id)controller
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___findReplaceController);
  *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___findReplaceController) = controller;
  controllerCopy = controller;
}

- (id)findInteraction:(id)interaction sessionForView:(id)view
{
  interactionCopy = interaction;
  viewCopy = view;
  selfCopy = self;
  v9 = sub_10101389C(interactionCopy);

  return v9;
}

- (void)findInteraction:(id)interaction didBeginFindSession:(id)session
{
  v4 = *(*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  selfCopy = self;
  v6 = v4;
  sub_1008FEE94(1);

  v7 = [objc_allocWithZone(CRLiOSDocumentModeFindReplace) initWithBoardViewController:selfCopy andInteractiveCanvasController:*(selfCopy + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController)];
  v8 = sub_101012FD4();
  [v8 setMode:v7 animated:1];
}

- (void)findInteraction:(id)interaction didEndFindSession:(id)session
{
  interactionCopy = interaction;
  sessionCopy = session;
  selfCopy = self;
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
  selfCopy = self;
  sub_10101542C();
}

- (void)loadView
{
  selfCopy = self;
  sub_101017174();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10101884C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_101019FA0(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10101A4F0(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10101F7C8();
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v8 = _Block_copy(completion);
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

  controllerCopy = controller;
  selfCopy = self;
  sub_10101FBE4(controllerCopy, animated, v8, v9);
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
    selfCopy = self;
    v7 = sub_101023BFC();
    v8 = *(self + v2);
    *(self + v2) = v7;
    v4 = v7;

    v3 = 0;
  }

  v9 = v3;

  return v4;
}

- (void)restoreUserActivityState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1010241BC(stateCopy);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1010244C0(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_101024838(disappear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_101024B7C(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_101025690(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)observedTraitsDidChange:(id)change :(id)a4
{
  changeCopy = change;
  v7 = a4;
  selfCopy = self;
  sub_101054EEC(v7);
}

- (void)updateAdditionalSafeArea
{
  selfCopy = self;
  sub_101025F4C();
}

- (void)handleBoardLibrarySnapshotUpdateWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_101026768(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)setIsCanvasDotGridEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_101028E9C(enabled);
}

- (void)setIsConnectorModeEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_101029C04(enabled);
}

- (BOOL)isInFollowingMode
{
  v2 = *(*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  selfCopy = self;
  v4 = v2;
  v5 = sub_1008FB7A4();

  return v5 & 1;
}

- (CRLiOSDocumentMode)currentDocumentMode
{
  selfCopy = self;
  v3 = sub_101012FD4();
  mode = [v3 mode];

  return mode;
}

- (id)quickSelectHUDParentViewForCanvasViewController:(id)controller
{
  view = [(CRLiOSBoardViewController *)self view];

  return view;
}

- (void)prefersPencilOnlyDrawingDidChange
{
  selfCopy = self;
  v2 = sub_101012FD4();
  mode = [v2 mode];

  [mode prefersPencilOnlyDrawingDidChange];
}

- (void)dismissPresentedViewController
{
  selfCopy = self;
  presentedViewController = [(CRLiOSBoardViewController *)selfCopy presentedViewController];
  v3 = selfCopy;
  if (presentedViewController)
  {
    presentedViewController2 = [(CRLiOSBoardViewController *)selfCopy presentedViewController];
    if (presentedViewController2)
    {
      v5 = presentedViewController2;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass() == 0;
    }

    else
    {
      v6 = 1;
    }

    [presentedViewController dismissViewControllerAnimated:v6 completion:0];

    v3 = selfCopy;
  }
}

- (void)beginHandwritingModeIfNeeded
{
  selfCopy = self;
  sub_10102E794();
}

- (void)userDidInteractWithCanvas:(id)canvas
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewState);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.setter();
}

- (UIEdgeInsets)safeInsetsForTemporaryHUDsToAvoidViewsObscuringCanvasScrollViewForCanvasViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
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

- (id)containerForTopLevelInsertionForInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_10105579C(controllerCopy);

  return v6;
}

- (id)infosToDisplayForInteractiveCanvasController:(id)controller
{
  v3 = *(*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  selfCopy = self;
  v5 = v3;
  sub_100EB8D4C();

  sub_1005B981C(&qword_1019F5720);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)editorControllerForInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_10102EAFC();

  return v6;
}

- (id)selectionModelTranslatorForInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_101056288();

  return v6;
}

- (id)editingCoordinatorForInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_101056860();
  v7 = v6;

  return v6;
}

- (void)selectionPathDidChangeWithFlags:(unint64_t)flags
{
  selfCopy = self;
  sub_101056E38();
}

- (id)canvasViewScaleDetentsForInteractiveCanvasController:(id)controller isFastPinch:(BOOL)pinch
{
  sub_101057470();
  sub_100006370(0, &qword_1019FF3E0);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (id)rectanglesObscuringView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1010532BC();

  sub_100006370(0, &qword_101A04270);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (CGRect)safeAreaLayoutFrameForInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
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

- (BOOL)hasMediaReplacerForInteractiveCanvasController:(id)controller
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_mediaReplacer);
  if (v3)
  {
    v6 = *(v3 + OBJC_IVAR____TtC8Freeform19CRLiOSMediaReplacer_interactiveCanvasController);
    sub_100006370(0, &qword_1019F8508);
    controllerCopy = controller;
    selfCopy = self;
    v9 = v6;
    v10 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (id)mediaReplacerForInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_10102F450();

  return v6;
}

- (BOOL)wantsToSuppressMultiselectionWithSingleBoundsForInteractiveCanvasController:(id)controller
{
  selfCopy = self;
  v4 = sub_101012FD4();
  mode = [v4 mode];

  LOBYTE(v4) = [mode wantsToSuppressMultiselectionWithSingleBounds];
  return v4;
}

- (BOOL)wantsToShowCanvasDotGridOnInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  LOBYTE(self) = sub_10102F9B4(controllerCopy);

  return self & 1;
}

- (BOOL)wantsToShowConnectorKnobsOnInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  LOBYTE(self) = sub_10102FA34(controllerCopy);

  return self & 1;
}

- (BOOL)zoomOnSelectionChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  LOBYTE(self) = sub_10105755C();

  return self & 1;
}

- (BOOL)tappedCanvasBackgroundAtPoint:(CGPoint)point
{
  selfCopy = self;
  v4 = sub_101057638();

  return v4 & 1;
}

- (void)interactiveCanvasControllerDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_101030138();
}

- (_TtC8Freeform25CRLSelectionPathValidator)selectionPathValidator
{
  selfCopy = self;
  v3 = sub_1010303AC();

  return v3;
}

- (BOOL)isPrimarySelectionPathReceiver
{
  selfCopy = self;
  v3 = sub_1010304A0();

  return v3 & 1;
}

- (id)selectionStateSnapshot
{
  selfCopy = self;
  v3 = sub_101012B64();
  selectionPath = [v3 selectionPath];

  v5 = objc_allocWithZone(type metadata accessor for CRLPersistableSelectionPath(0));
  sub_100702EC8(selectionPath);
  v7 = v6;

  return v7;
}

- (void)validateSelectionStateUsing:(id)using
{
  usingCopy = using;
  selfCopy = self;
  sub_101030634(using);
}

- (void)updateToolbarButtons
{
  selfCopy = self;
  sub_101030890();
}

- (BOOL)allowsZoomHUD
{
  selfCopy = self;
  v3 = sub_101033130();

  return v3 & 1;
}

- (id)viewControllerForMiniFormatterForCanvasViewController:(id)controller
{
  selfCopy = self;
  traitCollection = [(CRLiOSBoardViewController *)selfCopy traitCollection];
  if (([objc_opt_self() crl_phoneUI] & 1) == 0)
  {
    crl_isCompactWidth = [(CRLiOSBoardViewController *)traitCollection crl_isCompactWidth];

    if (crl_isCompactWidth)
    {
      goto LABEL_5;
    }

    traitCollection = selfCopy;
    selfCopy = *(selfCopy + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController);
  }

LABEL_5:

  return selfCopy;
}

- (id)targetForAction:(SEL)action withSender:(id)sender
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
    memset(v16, 0, sizeof(v16));
    selfCopy2 = self;
  }

  sub_1010332F8(action, v16, v17);

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
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_1010338FC(action, v10);

  sub_10000CAAC(v10, &unk_1019F4D00);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_101033D0C(commandCopy);
}

- (void)find:(id)find
{
  if (find)
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

  v6 = swift_allocObject();
  *(v6 + 16) = self;
  selfCopy3 = self;
  sub_10102E35C(sub_10067C02C, v6);

  sub_10000CAAC(v8, &unk_1019F4D00);
}

- (_TtC8Freeform25CRLiOSBoardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isPresentingCompactScenesNavigator
{
  selfCopy = self;
  v3 = sub_101036390();

  return v3 & 1;
}

- (double)displayCornerRadius
{
  selfCopy = self;
  view = [(CRLiOSBoardViewController *)selfCopy view];
  if (view)
  {
    v5 = view;
    traitCollection = [view traitCollection];

    [traitCollection displayCornerRadius];
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
  selfCopy = self;
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

- (void)didStartFollowingParticipant:(id)participant
{
  participantCopy = participant;
  selfCopy = self;
  sub_10103658C(participantCopy);
}

- (void)didEndFollowingParticipant:(id)participant shouldShowRefollowPlacard:(BOOL)placard
{
  participantCopy = participant;
  selfCopy = self;
  sub_101036F04(participant, placard);
}

- (void)remoteParticipantDidStartFollowingLocalParticipantWithRemoteParticipant:(id)participant
{
  participantCopy = participant;
  selfCopy = self;
  sub_10103755C(participantCopy, 1);
}

- (void)remoteParticipantDidEndFollowingLocalParticipantWithRemoteParticipant:(id)participant
{
  participantCopy = participant;
  selfCopy = self;
  sub_10103755C(participantCopy, 0);
}

- (void)multipleRemoteParticipantsDidStartFollowingLocalParticipantWithNumberOfParticipants:(int64_t)participants
{
  selfCopy = self;
  sub_1010378A8(participants, 1);
}

- (void)multipleRemoteParticipantsDidEndFollowingLocalParticipantsWithNumberOfParticipants:(int64_t)participants
{
  selfCopy = self;
  sub_1010378A8(participants, 0);
}

- (void)showFollowFailedAlertFor:(int64_t)for
{
  selfCopy = self;
  sub_101037B6C(for);
}

- (void)showFollowEndedAlertWithHostShortName:(id)name
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_101037DA4(v4, v6);
}

- (void)showFollowRefusedAlert
{
  selfCopy = self;
  sub_101038090();
}

- (id)beginModalOperationWithLocalizedMessage:(id)message progress:(id)progress cancelHandler:(id)handler
{
  v7 = _Block_copy(handler);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_100699760;
  }

  progressCopy = progress;
  selfCopy = self;
  sub_10105772C();
  v11 = v10;
  sub_1000C1014(v7);

  return v11;
}

- (id)beginModalOperationWithPresentedLocalizedMessage:(id)message progress:(id)progress cancelHandler:(id)handler
{
  v7 = _Block_copy(handler);
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

  progressCopy = progress;
  selfCopy = self;
  v14 = sub_10103848C(v8, v10, progress, v7, v11);
  sub_1000C1014(v7);

  return v14;
}

- (void)endModalOperationWithToken:(id)token
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_101038E3C(token);
  swift_unknownObjectRelease();
}

- (void)continueAsynchronousWorkOnMainThreadUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_101057B70(sub_100685EBC, v5);
}

- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)reasons forMediaType:(int64_t)type forSingleMediaObject:(BOOL)object completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  (*(v6 + 2))(v6, 0, 0, 1);

  _Block_release(v6);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  selfCopy = self;
  sub_10103ADB8(1);
}

- (void)freeformHelpShortcut:(id)shortcut
{
  if (shortcut)
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

  [objc_opt_self() crl_phoneUI];
  sub_10101F6C4();

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)createSceneShortcut:(id)shortcut
{
  if (shortcut)
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

  if ((*(*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState) + OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_captureIsAnimating) & 1) == 0)
  {
    [(CRLiOSBoardViewController *)self endDrawingModeIfNeeded];
    sub_10103A51C();
    sub_101048E40(0);
  }

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)linkAction:(id)action
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
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  sub_100654F08();
  v6 = *(*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
  sub_1008FEE94(1);

  sub_10000CAAC(v7, &unk_1019F4D00);
}

- (void)toggleSnapToGridAction:(id)action
{
  if (action)
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

- (void)toggleHapticFeedbackAction:(id)action
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
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v6 = objc_opt_self();
  standardUserDefaults = [v6 standardUserDefaults];
  v8 = [standardUserDefaults BOOLForKey:@"CRLUseHapticFeedbackWhenSnapping"];

  standardUserDefaults2 = [v6 standardUserDefaults];
  [standardUserDefaults2 setBool:v8 ^ 1 forKey:@"CRLUseHapticFeedbackWhenSnapping"];

  sub_10000CAAC(v10, &unk_1019F4D00);
}

- (void)zoom100PercentAction:(id)action
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

  sub_1010107F4(1.0);

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)handleFavoriteBoard:(id)board
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = v16 - v6;
  if (board)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    selfCopy2 = self;
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
    selfCopy3 = self;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = &protocol witness table for MainActor;
    *(v15 + 32) = selfCopy3;
    *(v15 + 40) = v11 & 1;
    sub_10064191C(0, 0, v7, &unk_1014C20C0, v15);
  }

  sub_10000CAAC(v16, &unk_1019F4D00);
}

- (void)exportScenesAsPDFAction:(id)action
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
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
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

- (id)boardViewControllerTraitCollectionForContentLibraryViewController:(id)controller
{
  traitCollection = [(CRLiOSBoardViewController *)self traitCollection];

  return traitCollection;
}

- (id)contentLibraryViewControllerDefaultSearchTerm:(id)term
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

- (void)contentLibraryViewController:(id)controller willDisappearWithSearchTerm:(id)term
{
  if (term)
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

- (void)contentLibraryViewControllerDidCancelSearch:(id)search
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

- (id)editorControllersToObserveForMode:(id)mode
{
  sub_1005B981C(&unk_1019F4D60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101465920;
  selfCopy = self;
  *(v4 + 32) = sub_101012B64();

  sub_100006370(0, &unk_101A1B848);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)willSetDocumentToMode:(id)mode fromMode:(id)fromMode animated:(BOOL)animated
{
  selfCopy = self;
  v6 = [mode pencilModeType] == 2;
  *(selfCopy + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isChangingDocumentModeToHandwriting) = v6;
}

- (void)didSetDocumentToMode:(id)mode fromMode:(id)fromMode animated:(BOOL)animated
{
  modeCopy = mode;
  fromModeCopy = fromMode;
  selfCopy = self;
  sub_101057E6C(modeCopy, fromModeCopy);
}

- (unint64_t)pencilModeTypeForPencilKitCanvasViewController:(id)controller
{
  selfCopy = self;
  v4 = sub_101012FD4();
  mode = [v4 mode];

  pencilModeType = [mode pencilModeType];
  return pencilModeType;
}

- (id)freehandDrawingToolkitForPencilKitCanvasViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_1010583A4();

  return v6;
}

- (id)pencilKitRulerHostingViewForPencilKitCanvasViewController:(id)controller
{
  selfCopy = self;
  result = [(CRLiOSBoardViewController *)selfCopy view];
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

- (void)prepareForPencilKitSnapshottingForPencilKitCanvasViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_101058790(&selRef_prepareForPencilKitSnapshotting);
}

- (void)prepareForPencilKitBeganStroke:(id)stroke
{
  strokeCopy = stroke;
  selfCopy = self;
  sub_101058790(&selRef_didBeginPencilKitStroke);
}

- (void)prepareForPencilKitEndingOrCancellingStroke:(id)stroke
{
  strokeCopy = stroke;
  selfCopy = self;
  sub_101058790(&selRef_didFinishPencilKitStroke);
}

- (void)beginDrawingModeIfNeeded
{
  selfCopy = self;
  sub_10103F720();
}

- (void)endDrawingModeIfNeeded
{
  selfCopy = self;
  v2 = sub_101012FD4();
  mode = [v2 mode];

  pencilModeType = [mode pencilModeType];
  if (pencilModeType == 1)
  {
    [*(selfCopy + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) resetToDefaultModeAnimated:1];
  }
}

- (void)beginDrawingTransformModeIfNeeded
{
  selfCopy = self;
  sub_10103F924();
}

- (void)toolkitDidDrawWithPencil
{
  selfCopy = self;
  sub_10103FD88();
}

- (void)toolkitDidDrawWithFinger
{
  selfCopy = self;
  sub_1010403A0("toolkitDidDrawWithFinger()", 26, 4016, &selRef_fingerUsedForFreehandDrawingMode);
}

- (void)toolkitDidDrawWithIndirectTouch
{
  selfCopy = self;
  sub_1010403A0("toolkitDidDrawWithIndirectTouch()", 33, 4023, &selRef_indirectTouchUsedForFreehandDrawingMode);
}

- (unint64_t)freehandDrawingBehaviorAtUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  v6 = sub_1010408B8(x, y);

  return v6;
}

- (_TtC8Freeform35CRLiOSPencilKitCanvasViewController)pencilKitCanvasViewControllerForFreehandDrawingTools
{
  selfCopy = self;
  v3 = sub_1010588D4();

  return v3;
}

- (BOOL)isInDrawingMode
{
  selfCopy = self;
  v3 = sub_101012FD4();
  mode = [v3 mode];

  pencilModeType = [mode pencilModeType];
  return pencilModeType == 1;
}

- (BOOL)isInHandwritingMode
{
  selfCopy = self;
  v3 = sub_101012FD4();
  mode = [v3 mode];

  pencilModeType = [mode pencilModeType];
  return pencilModeType == 2;
}

- (id)pencilDocumentModeFor:(unint64_t)for
{
  selfCopy = self;
  v5 = sub_101040FE4(for);

  return v5;
}

- (void)didUpdateRectangleObscuringCanvasScrollViewForPencilTray:(id)tray
{
  selfCopy = self;
  sub_101025F4C();
}

- (id)barButtonItemForPresentingColorPickerWithHiddenPencilTray:(id)tray
{
  selfCopy = self;
  v4 = sub_1010132F0();

  return v4;
}

- (id)interactiveCanvasControllerForFindController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_101058CC8();

  return v6;
}

- (id)modelEnumeratorForSearchWithFlags:(unint64_t)flags
{
  v3 = [objc_allocWithZone(CRLDocumentModelEnumerator) initWithRootModelObject:*(*(*(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) flags:flags filter:0];

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

- (void)withRootSearchTargetAtIndex:(unint64_t)index executeBlock:(id)block
{
  v6 = _Block_copy(block);
  _Block_copy(v6);
  selfCopy = self;
  sub_1010590D8(index, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)setPrimarySearchReference:(id)reference forFindReplaceController:(id)controller
{
  v7 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  swift_unknownObjectRetain();
  controllerCopy = controller;
  selfCopy = self;
  [v7 setPrimaryFindResultSearchReference:reference];
  if ([objc_opt_self() isOSFeatureEnabled:5])
  {
    [*(selfCopy + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager) setPrimaryFindResultSearchReference:reference];
  }

  swift_unknownObjectRelease();
}

- (void)setSearchReferencesToHighlight:(id)highlight forFindReplaceController:(id)controller
{
  v6 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  highlightCopy = highlight;
  controllerCopy = controller;
  selfCopy = self;
  [v6 setSearchReferencesToHighlight:highlightCopy];
  if ([objc_opt_self() isOSFeatureEnabled:5])
  {
    [*(selfCopy + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager) setSearchReferencesToHighlight:highlightCopy];
  }
}

- (void)updateCountInSearchBarUI
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong updateResultCount];
}

- (NSArray)childSearchTargets
{
  selfCopy = self;
  sub_101042160();

  sub_1005B981C(&qword_101A28688);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  selfCopy = self;
  presentationStyle = [controllerCopy presentationStyle];
  sub_10103F3AC(presentationStyle, style);
  sub_101021A10(presentationStyle, style);
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  v3 = sub_1010428DC();

  return v3 & 1;
}

- (BOOL)accessibilityPerformMagicTap
{
  selfCopy = self;
  v3 = sub_101042B68();

  return v3 & 1;
}

- (UIWindow)keyboardObserversWindow
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  selfCopy = self;
  canvasView = [v2 canvasView];
  if (canvasView)
  {
    v5 = canvasView;
    window = [canvasView window];
  }

  else
  {
    window = 0;
  }

  return window;
}

- (void)keyboardWillShowOrDock:(id)dock
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10101D0E4(0);
  v9 = selfCopy;
  presentedViewController = v9;
  while (1)
  {
    v11 = presentedViewController;
    presentedViewController = [(CRLiOSBoardViewController *)presentedViewController presentedViewController];

    if (!presentedViewController)
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

- (void)keyboardWillHideOrUndock:(id)undock
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10101D0E4(0);

  (*(v5 + 8))(v7, v4);
}

- (void)keyboardWillChangeFrame:(id)frame
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10104605C();

  (*(v5 + 8))(v7, v4);
}

- (void)insertStickerFromItemProvider:(NSItemProvider *)provider completionHandler:(id)handler
{
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = provider;
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
  providerCopy = provider;
  selfCopy = self;
  sub_10119D67C(0, 0, v9, &unk_101470870, v14);
}

- (void)processChanges:(id)changes forChangeSource:(id)source
{
  type metadata accessor for CRLChangeRecord();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10104D018(v5, v7);

  sub_100005070(v7);
}

- (double)contentsScaleForCanvasBackgroundLayer:(id)layer
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  selfCopy = self;
  canvas = [v3 canvas];
  [canvas contentsScale];
  v7 = v6;

  return v7;
}

- (CGPoint)canvasCenterInCanvasBackgroundLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  sub_10104DADC(layerCopy);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)originOffsetForCanvasBackgroundLayer:(id)layer
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  layerCopy = layer;
  selfCopy = self;
  layerHost = [v4 layerHost];
  if (layerHost && (v8 = [layerHost canvasLayer], swift_unknownObjectRelease(), v8))
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

- (CGPoint)contentOffsetForCanvasBackgroundLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
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