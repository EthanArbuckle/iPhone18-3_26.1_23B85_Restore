@interface CRLiOSCanvasViewController
- (BOOL)allowGestureInRestrictedGestureMode:(id)a3;
- (BOOL)allowTouchOutsideCanvasViewAtPoint:(CGPoint)a3 forGesture:(id)a4;
- (BOOL)allowUndoRedoOperations;
- (BOOL)allowedToEnterQuickSelectMode;
- (BOOL)allowsCanvasScrollingFromKeyboard;
- (BOOL)allowsSystemDragSession;
- (BOOL)becomeFirstResponderIfAppropriate;
- (BOOL)canInsertBoardItemsFromDragOperationForDragInfo:(id)a3;
- (BOOL)canInsertScribbleElementAtPoint:(CGPoint)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canvasSubview:(id)a3 shouldHandleEventAtBoundsPoint:(CGPoint)a4;
- (BOOL)contextMenuPositionShouldUpdateForContextMenuController:(id)a3;
- (BOOL)disallowRectangularMarqueeOperationAtUnscaledPoint:(CGPoint)a3;
- (BOOL)documentChromeHasPresentedViewController;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3 withRecognizer:(id)a4;
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 withRecognizer:(id)a4;
- (BOOL)i_allowCanvasInteraction:(id)a3 atPoint:(CGPoint)a4;
- (BOOL)inInspectorPanZoomMode;
- (BOOL)inInspectorTextEditingMode;
- (BOOL)inMediaBrowsingMode;
- (BOOL)inRestrictedGestureMode;
- (BOOL)isHandlingScribbleWriting;
- (BOOL)isInFocusedContainer;
- (BOOL)isShowingRadialPalette;
- (BOOL)p_currentModeAllowsQuickSelect;
- (BOOL)p_currentModeIsFind;
- (BOOL)p_editorAllowsQuickSelect;
- (BOOL)p_isAccessibilityTextResponderAction:(SEL)a3;
- (BOOL)p_scribblePreventedRegardlessOfPoint;
- (BOOL)p_shouldIgnoreKeyboardInputForTouchType:(int64_t)a3 atSomeTouchPoint:(CGPoint)a4;
- (BOOL)p_shouldShowMiniFormatterForSelectionPath:(id)a3;
- (BOOL)preserveEditorSelection;
- (BOOL)respondsToSelector:(SEL)a3 withSender:(id)a4;
- (BOOL)shouldAllowDragOperationForDragInfo:(id)a3;
- (BOOL)shouldBeginScribblingAtPoint:(CGPoint)a3;
- (BOOL)shouldIgnoreKeyboardInput;
- (BOOL)shouldIgnoreTextGesture:(id)a3 atPoint:(CGPoint)a4;
- (BOOL)shouldIncludeObjectInScribbleCapableElements:(id)a3;
- (BOOL)shouldSelectAndScrollWithApplePencil;
- (BOOL)touchHitsCanvasViewAtPoint:(CGPoint)a3;
- (CALayer)layer;
- (CGPoint)lastTapPoint;
- (CGPoint)p_targetPointForEditMenuForSelectionPath:(id)a3 outModifiedDirection:(int64_t *)a4;
- (CGRect)p_targetRectForMenuControllerPositionForSelectionPath:(id)a3;
- (CGRect)rectForInsertingScribbleElements;
- (CGRect)rectToIncludeWhenGrowingCanvasToFitContent;
- (CGRect)targetRectForContextMenuController;
- (CGRect)targetRectForEditMenu:(id)a3;
- (CGRect)visibleCanvasRectForQuickSelectViewController:(id)a3;
- (CGRect)visibleScaledRectForCanvasUI;
- (CRLCanvasImageHUDController)imageHUDController;
- (CRLCanvasLayer)canvasLayer;
- (CRLCanvasView)canvasView;
- (CRLEditorController)editorController;
- (CRLFreehandDrawingPKSelectionManager)smartSelectionManager;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (CRLUserDialogPresenter)userDialogPresenter;
- (CRLiOSCanvasDragInteractionDelegate)dragInteractionDelegate;
- (CRLiOSCanvasDropInteractionDelegate)dropInteractionDelegate;
- (CRLiOSCanvasViewController)initWithCoder:(id)a3;
- (CRLiOSCanvasViewController)initWithInteractiveCanvasController:(id)a3;
- (CRLiOSCanvasViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CRLiOSCanvasViewControllerDelegate)delegate;
- (CRLiOSPencilMediating)pencilMediator;
- (NSArray)commonGestureRecognizers;
- (NSArray)gesturesToAdjustIfStylusShouldSelectAndScroll;
- (NSArray)passthroughViewsToAllowCanvasInteractionDuringPopoverPresentation;
- (UICanvasFeedbackGenerator)feedbackGenerator;
- (UITextInput)currentEditingTextInputResponder;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (_TtC8Freeform28CRLiOSMiniFormatterPresenter)miniFormatterPresenter;
- (_TtC8Freeform41CRLiOSShapeLibraryCanvasPopoverController)shapeLibraryPopoverController;
- (id)_scribbleCapableElementsForReps:(id)a3 forRect:(CGRect)a4;
- (id)beginModalOperationWithLocalizedMessage:(id)a3 progress:(id)a4 cancelHandler:(id)a5;
- (id)beginModalOperationWithPresentedLocalizedMessage:(id)a3 progress:(id)a4 cancelHandler:(id)a5;
- (id)containedScribbleElementForContainerScribbleElement:(id)a3;
- (id)contextMenuInteractionDelegate;
- (id)editMenuConfigrationForSelectionPath:(id)a3 withConfigurationIdentifier:(id)a4;
- (id)gesturesSupportingStylusAndIndirectPointer;
- (id)gesturesThatImmediateMarqueeShouldRequireToFail;
- (id)hitKnobWithTouch:(id)a3 returningRep:(id *)a4;
- (id)hitRepWithTouch:(id)a3;
- (id)insertTextBoxForScribbleAtUnscaledCanvasPoint:(CGPoint)a3;
- (id)insertedScribbleElementAtPoint:(CGPoint)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)modelContainerForLocalDragContext;
- (id)newDragAndDropController;
- (id)p_allRepsForHitTestingOrdered;
- (id)p_reasonStringForIgnoringKeyboardInputWithAllTouchesDoneGestureRecognizer:(id)a3;
- (id)p_willPresentError:(id)a3;
- (id)pointerInteractionDelegate;
- (id)scribbleCapableElementWithIdentifier:(id)a3;
- (id)scribbleCapableElementsForRect:(CGRect)a3;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)viewForGestureRecognizer:(id)a3;
- (void)addCommonObservers;
- (void)addInspectorPanZoomModeGRsToArray:(id)a3;
- (void)alignmentToolsControllerShouldDismiss:(id)a3;
- (void)canvasZoomTracker:(id)a3 willBeginViewScaleFeedbackWithZoomMethod:(int64_t)a4;
- (void)canvasZoomTracker:(id)a3 willUpdateViewScaleFeedbackWithScale:(double)a4;
- (void)canvasZoomTrackerDidEndFinalZoomAnimation:(id)a3;
- (void)canvasZoomTrackerDidEndViewScaleFeedback:(id)a3;
- (void)canvasZoomTrackerDidFinish:(id)a3;
- (void)canvasZoomTrackerWillBeginFinalZoomAnimation:(id)a3;
- (void)contextMenuDidHideForContextMenuController:(id)a3;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)didDismissQuickSelectViewController:(id)a3;
- (void)didSetDocumentToMode:(id)a3 fromMode:(id)a4 animated:(BOOL)a5;
- (void)didStartCountingTouches:(id)a3 touchType:(int64_t)a4 atSomeTouchPoint:(CGPoint)a5;
- (void)didStopCountingTouches:(id)a3;
- (void)dismissDocumentChromePresentedViewController;
- (void)dragSessionWillBegin;
- (void)endModalOperationWithToken:(id)a3;
- (void)endPreventingDefaultPencilBehaviors;
- (void)enterQuickSelectMode;
- (void)forceStopScrolling;
- (void)forwardInvocation:(id)a3;
- (void)handleDoubleTap:(id)a3;
- (void)hideEditMenu;
- (void)i_startObservingFreehandDrawingToolkit;
- (void)i_updateZoomGestureRecognizer;
- (void)insertStencilFromLibrary:(id)a3;
- (void)leaveQuickSelectModeIfNeeded;
- (void)modifyGesturesUsedForStylusAndIndirectPointerAddingTouchType:(int64_t)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_accessibilityInvertColorsDidChange:(id)a3;
- (void)p_allTouchesDone:(id)a3;
- (void)p_applicationDidBecomeActive:(id)a3;
- (void)p_buildMenuItems:(id)a3 forSelectionPath:(id)a4;
- (void)p_buildMenuTitles:(id)a3 forSelectionPath:(id)a4;
- (void)p_didEnterBackground:(id)a3;
- (void)p_handleHoverGesture:(id)a3;
- (void)p_handlePencilDown:(id)a3;
- (void)p_handleSingleTapGesture:(id)a3;
- (void)p_handleTapForEditMenu:(id)a3;
- (void)p_keyWindowDidChange:(id)a3;
- (void)p_leaveQuickSelectMode;
- (void)p_presentStencilLibraryWithBoardItemsToSave:(id)a3;
- (void)p_schedulePreventInsertScribbleElementTimer;
- (void)p_setDragLiftDelay:(double)a3;
- (void)p_setUpWPGestureRecognizers;
- (void)p_setupDidEnterBackgroundObserver;
- (void)p_setupWillEnterForegroundObserver;
- (void)p_willEnterForeground:(id)a3;
- (void)p_zoomWithGesture:(id)a3;
- (void)presentAlignmentTools;
- (void)presentError:(id)a3 completionHandler:(id)a4;
- (void)presentErrors:(id)a3 withLocalizedDescription:(id)a4 completionHandler:(id)a5;
- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)a3 forMediaType:(int64_t)a4 forSingleMediaObject:(BOOL)a5 completionHandler:(id)a6;
- (void)removeCommonObservers;
- (void)resetGesturesForContextSwitch;
- (void)saveSelectedBoardItemsAsStencil:(id)a3;
- (void)scribbleInteractionDidFinishWriting;
- (void)scribbleInteractionWillBeginWritingScribbleElementWillBeInserted:(BOOL)a3;
- (void)scrollViewDidScroll;
- (void)setContextMenuMightBeDisplayed:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setUpCommonGestureAllowedTouchTypes;
- (void)setUpGestureRecognizers;
- (void)setView:(id)a3;
- (void)showDefaultEditUIForCurrentSelection;
- (void)showEditMenuForSelectionPath:(id)a3;
- (void)showEditUIForSelectionPath:(id)a3;
- (void)showMiniFormatterToExitDrawingMode:(id)a3;
- (void)showURLAlertFromAlertPresenter:(id)a3;
- (void)teardown;
- (void)toggleDefaultEditUIForCurrentSelection;
- (void)toggleEditMenuForCurrentSelection;
- (void)unlock:(id)a3;
- (void)updateToolbarButtons;
- (void)userDismissedAlignmentToolsController:(id)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
- (void)willUpdateLayerTree;
@end

@implementation CRLiOSCanvasViewController

- (CRLiOSCanvasViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = CRLiOSCanvasViewController;
  v4 = [(CRLiOSCanvasViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    sub_10037B87C(v4);
  }

  return v5;
}

- (CRLiOSCanvasViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRLiOSCanvasViewController;
  v3 = [(CRLiOSCanvasViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    sub_10037B87C(v3);
  }

  return v4;
}

- (CRLiOSCanvasViewController)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLiOSCanvasViewController;
  v5 = [(CRLiOSCanvasViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    sub_10037B87C(v5);
    [(CRLiOSCanvasViewController *)v6 setInteractiveCanvasController:v4];
  }

  return v6;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    if (self->mSceneWillEnterForegroundObserver)
    {
      v6 = +[NSNotificationCenter defaultCenter];
      [v6 removeObserver:self->mSceneWillEnterForegroundObserver];

      mSceneWillEnterForegroundObserver = self->mSceneWillEnterForegroundObserver;
      self->mSceneWillEnterForegroundObserver = 0;
    }

    if (self->mSceneDidEnterBackgroundObserver)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      [v8 removeObserver:self->mSceneDidEnterBackgroundObserver];

      mSceneDidEnterBackgroundObserver = self->mSceneDidEnterBackgroundObserver;
      self->mSceneDidEnterBackgroundObserver = 0;
    }

    objc_storeWeak(&self->mDelegate, obj);
    [(CRLiOSCanvasViewController *)self p_setupWillEnterForegroundObserver];
    [(CRLiOSCanvasViewController *)self p_setupDidEnterBackgroundObserver];
    v5 = obj;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CRLiOSCanvasViewController;
  [(CRLiOSCanvasViewController *)&v4 viewDidAppear:a3];
  if (!self->mSceneWillEnterForegroundObserver)
  {
    [(CRLiOSCanvasViewController *)self p_setupWillEnterForegroundObserver];
  }

  if (!self->mSceneDidEnterBackgroundObserver)
  {
    [(CRLiOSCanvasViewController *)self p_setupDidEnterBackgroundObserver];
  }

  [(CRLiOSCanvasViewController *)self becomeFirstResponderIfAppropriate];
}

- (void)p_setupWillEnterForegroundObserver
{
  v3 = [(CRLiOSCanvasViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = +[NSNotification CRLiOSSceneWillEnterForeground];
    v8 = +[NSOperationQueue mainQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10037BCB8;
    v11[3] = &unk_101859F90;
    objc_copyWeak(&v12, &location);
    v9 = [v6 addObserverForName:v7 object:v5 queue:v8 usingBlock:v11];
    mSceneWillEnterForegroundObserver = self->mSceneWillEnterForegroundObserver;
    self->mSceneWillEnterForegroundObserver = v9;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)p_setupDidEnterBackgroundObserver
{
  v3 = [(CRLiOSCanvasViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = +[NSNotification CRLiOSSceneDidEnterBackground];
    v8 = +[NSOperationQueue mainQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10037BE88;
    v11[3] = &unk_101859F90;
    objc_copyWeak(&v12, &location);
    v9 = [v6 addObserverForName:v7 object:v5 queue:v8 usingBlock:v11];
    mSceneDidEnterBackgroundObserver = self->mSceneDidEnterBackgroundObserver;
    self->mSceneDidEnterBackgroundObserver = v9;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v12.receiver = self;
  v12.super_class = CRLiOSCanvasViewController;
  if ([(CRLiOSCanvasViewController *)&v12 respondsToSelector:?])
  {
    v11.receiver = self;
    v11.super_class = CRLiOSCanvasViewController;
    v5 = [(CRLiOSCanvasViewController *)&v11 methodSignatureForSelector:a3];
  }

  else
  {
    v6 = qword_101A34D18;
    if (!qword_101A34D18)
    {
      v7 = [NSString stringWithFormat:@"%s%s%s%s", "v", "@", ":", "@"];
      v8 = +[NSMethodSignature signatureWithObjCTypes:](NSMethodSignature, "signatureWithObjCTypes:", [v7 UTF8String]);
      v9 = qword_101A34D18;
      qword_101A34D18 = v8;

      v6 = qword_101A34D18;
    }

    v5 = v6;
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = CRLiOSCanvasViewController;
  if ([(CRLiOSCanvasViewController *)&v10 respondsToSelector:a3])
  {
    v7 = 1;
  }

  else if ([CRLInteractiveCanvasController selectorIsActionMethod:a3])
  {
    v8 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v7 = [v8 respondsToSelector:a3 withSender:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  [v4 invokeWithTarget:v5];
}

- (void)dealloc
{
  if (!self->mHasBeenTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135DE0C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135DE20();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135DEB0();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:380 isFatal:0 description:"CVC should have been torn down before dealloc"];
  }

  v6.receiver = self;
  v6.super_class = CRLiOSCanvasViewController;
  [(CRLiOSCanvasViewController *)&v6 dealloc];
}

- (void)willMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  [v5 stopWritingTools];

  v6.receiver = self;
  v6.super_class = CRLiOSCanvasViewController;
  [(CRLiOSCanvasViewController *)&v6 willMoveToParentViewController:v4];
}

- (void)teardown
{
  if ([(CRLiOSCanvasViewController *)self isViewLoaded])
  {
    v3 = [(CRLiOSCanvasViewController *)self canvasView];
    [v3 teardown];

    v4 = [(CRLiOSCanvasViewController *)self canvasView];
    [v4 setGestureRecognizers:0];
  }

  [CRLiOSScribbleInteractionSetupHelper setupScribbleEditingProvider:self scribbleObserver:0 scribbleActive:0];
  v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v6 = [v5 freehandDrawingToolkit];
  [v6 removeToolkitObserver:self];

  [(CRLiOSCanvasViewController *)self leaveQuickSelectModeIfNeeded];
  [(CRLiOSPencilMediator *)self->mPencilMediator teardown];
  mPencilMediator = self->mPencilMediator;
  self->mPencilMediator = 0;

  mAlignmentController = self->mAlignmentController;
  if (mAlignmentController)
  {
    [(CRLiOSAlignmentToolsController *)mAlignmentController dismissAlignmentTools];
    v9 = self->mAlignmentController;
    self->mAlignmentController = 0;
  }

  [(CRLMiniFormatterStateManager *)self->_miniFormatterPresenter teardown];
  miniFormatterPresenter = self->_miniFormatterPresenter;
  self->_miniFormatterPresenter = 0;

  self->mHasBeenTornDown = 1;
  [(CRLiOSCanvasViewController *)self resignFirstResponder];
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  [WeakRetained layerHostHasBeenTornDown];
}

- (void)viewDidLoad
{
  v59.receiver = self;
  v59.super_class = CRLiOSCanvasViewController;
  [(CRLiOSCanvasViewController *)&v59 viewDidLoad];
  v3 = [(CRLiOSCanvasViewController *)self canvasView];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->mICC);

    if (!WeakRetained)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135DED8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135DF00();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135DF9C();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v5);
      }

      v6 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController viewDidLoad]"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:423 isFatal:0 description:"invalid nil value for '%{public}s'", "mICC"];
    }

    v8 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    [v8 viewScale];
    v10 = v9;

    v11 = objc_loadWeakRetained(&self->mICC);
    [v3 setController:v11];

    v12 = objc_loadWeakRetained(&self->mICC);
    v13 = [v12 canvas];
    [v13 setViewScale:v10];

    v14 = objc_loadWeakRetained(&self->mICC);
    v15 = [v14 canvas];
    +[UIScreen crl_screenScale];
    [v15 i_setContentsScale:?];

    [v3 setMultipleTouchEnabled:1];
    [v3 setExclusiveTouch:1];
    [v3 setClearsContextBeforeDrawing:0];
    v16 = [v3 enclosingScrollView];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 delegate];

      if (!v18)
      {
        v19 = objc_loadWeakRetained(&self->mICC);
        [v17 setDelegate:v19];
      }

      v20 = [(CRLiOSCanvasViewController *)self canvasLayer];
      [v20 fixFrameAndScrollView];

      [v17 setAutoresizesSubviews:0];
      [v17 setDelaysContentTouches:0];
      [v17 setCanCancelContentTouches:1];
    }

    v21 = objc_loadWeakRetained(&self->mICC);
    [v21 setTextGesturesInFlight:0];

    [(CRLiOSCanvasViewController *)self setUpGestureRecognizers];
    if ([(CRLiOSCanvasViewController *)self canReceiveSystemDrops])
    {
      v22 = [UIDropInteraction alloc];
      v23 = [(CRLiOSCanvasViewController *)self dropInteractionDelegate];
      v24 = [v22 initWithDelegate:v23];
      [v3 addInteraction:v24];
    }

    if ([(CRLiOSCanvasViewController *)self canOriginateSystemDrags])
    {
      v25 = [UIDragInteraction alloc];
      v26 = [(CRLiOSCanvasViewController *)self dragInteractionDelegate];
      v27 = [v25 initWithDelegate:v26];
      mDragInteraction = self->mDragInteraction;
      self->mDragInteraction = v27;

      v29 = [(CRLiOSCanvasViewController *)self dragInteraction];
      [v3 addInteraction:v29];

      v30 = [(CRLiOSCanvasViewController *)self dragInteraction];
      [v30 setAllowsSimultaneousRecognitionDuringLift:1];

      v31 = [(CRLiOSCanvasViewController *)self dragInteraction];
      LOBYTE(v26) = objc_opt_respondsToSelector();

      if (v26)
      {
        v32 = [(CRLiOSCanvasViewController *)self dragInteraction];
        [v32 _setAdditionalTouchesCancelLift:1];
      }

      v33 = [(CRLiOSCanvasViewController *)self dragInteraction];
      [v33 setEnabled:1];

      v34 = [(CRLiOSCanvasViewController *)self dragInteraction];
      v35 = objc_opt_respondsToSelector();

      if (v35)
      {
        v36 = [(CRLiOSCanvasViewController *)self dragInteraction];
        [v36 _setAllowsPointerDragBeforeLiftDelay:0];
      }

      [(CRLiOSCanvasViewController *)self p_setDragLiftDelay:0.7];
    }

    v37 = [UIContextMenuInteraction alloc];
    v38 = [(CRLiOSCanvasViewController *)self contextMenuInteractionDelegate];
    v39 = [v37 initWithDelegate:v38];

    [v3 addInteraction:v39];
    v40 = [UIPointerInteraction alloc];
    v41 = [(CRLiOSCanvasViewController *)self pointerInteractionDelegate];
    v42 = [v40 initWithDelegate:v41];
    mPointerInteraction = self->mPointerInteraction;
    self->mPointerInteraction = v42;

    [v3 addInteraction:self->mPointerInteraction];
    v44 = [UIEditMenuInteraction alloc];
    v45 = [(CRLiOSCanvasViewController *)self contextMenuInteractionDelegate];
    v46 = [v44 initWithDelegate:v45];

    [v46 setPresentsContextMenuAsSecondaryAction:0];
    [(CRLiOSCanvasViewController *)self setEditMenuInteraction:v46];
    [v3 addInteraction:v46];
    v47 = [CRLCanvasRepEnterExitNotifier alloc];
    v48 = objc_loadWeakRetained(&self->mICC);
    v49 = [(CRLCanvasRepEnterExitNotifier *)v47 initWithInteractiveCanvasController:v48];
    mEnterExitNotifier = self->mEnterExitNotifier;
    self->mEnterExitNotifier = v49;

    v51 = objc_loadWeakRetained(&self->mICC);
    [v51 layoutInvalidated];

    if (![(CRLiOSCanvasViewController *)self shouldPreventBecomingFirstResponderOnViewLoad])
    {
      [(CRLiOSCanvasViewController *)self becomeFirstResponder];
    }

    if (+[CRLFeatureFlagGroup isBatteriesIncludedEnabled](_TtC8Freeform19CRLFeatureFlagGroup, "isBatteriesIncludedEnabled") && +[_TtC8Freeform34CRLWPSystemWritingToolsCoordinator isWritingToolsAvailable])
    {
      v52 = [_TtC8Freeform24CRLWPWritingToolsHandler alloc];
      v53 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      v54 = [(CRLWPWritingToolsHandler *)v52 initWithInteractiveCanvasController:v53];

      v55 = [_TtC8Freeform34CRLWPSystemWritingToolsCoordinator makeCoordinatorWithDelegate:v54];
      v56 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      [v56 setWritingToolsDelegate:v54];

      writingToolsCoordinator = self->_writingToolsCoordinator;
      self->_writingToolsCoordinator = v55;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135DFC4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135DFEC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135E088();
    }

    v58 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v58);
    }

    v17 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController viewDidLoad]"];
    v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v39 lineNumber:418 isFatal:0 description:"invalid nil value for '%{public}s'", "canvasView"];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CRLiOSCanvasViewController;
  [(CRLiOSCanvasViewController *)&v7 viewWillAppear:a3];
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  v5 = [WeakRetained canvas];
  v6 = [(CRLiOSCanvasViewController *)self traitCollection];
  [v5 i_setCanvasIsWideGamut:{objc_msgSend(v6, "displayGamut") == 1}];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  if ([v5 currentlyScrolling])
  {
    [(CRLiOSCanvasViewController *)self forceStopScrolling];
  }

  v6.receiver = self;
  v6.super_class = CRLiOSCanvasViewController;
  [(CRLiOSCanvasViewController *)&v6 viewWillDisappear:v3];
}

- (void)setView:(id)a3
{
  v8.receiver = self;
  v8.super_class = CRLiOSCanvasViewController;
  v4 = a3;
  [(CRLiOSCanvasViewController *)&v8 setView:v4];
  v5 = objc_opt_class();
  v6 = [v4 layer];

  v7 = sub_100014370(v5, v6);
  objc_storeWeak(&self->mCanvasLayer, v7);
}

- (CRLCanvasLayer)canvasLayer
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasLayer);

  return WeakRetained;
}

- (CRLCanvasView)canvasView
{
  v3 = objc_opt_class();
  v4 = [(CRLiOSCanvasViewController *)self view];
  v5 = sub_100014370(v3, v4);

  return v5;
}

- (CALayer)layer
{
  v2 = [(CRLiOSCanvasViewController *)self view];
  v3 = [v2 layer];

  return v3;
}

- (_TtC8Freeform41CRLiOSShapeLibraryCanvasPopoverController)shapeLibraryPopoverController
{
  shapeLibraryPopoverController = self->_shapeLibraryPopoverController;
  if (!shapeLibraryPopoverController)
  {
    v4 = [_TtC8Freeform41CRLiOSShapeLibraryCanvasPopoverController alloc];
    v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v6 = [(CRLiOSShapeLibraryCanvasPopoverController *)v4 initWithInteractiveCanvasController:v5];
    v7 = self->_shapeLibraryPopoverController;
    self->_shapeLibraryPopoverController = v6;

    shapeLibraryPopoverController = self->_shapeLibraryPopoverController;
  }

  return shapeLibraryPopoverController;
}

- (BOOL)isInFocusedContainer
{
  if (![(CRLiOSCanvasViewController *)self isViewLoaded])
  {
    return 0;
  }

  v3 = [(CRLiOSCanvasViewController *)self view];
  v4 = [v3 window];
  if ([v4 isKeyWindow])
  {
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    v6 = [WeakRetained textInputResponder];
    v7 = [v6 isFirstResponder];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)willUpdateLayerTree
{
  if (+[NSThread isMainThread])
  {
    mPointerInteraction = self->mPointerInteraction;

    [(UIPointerInteraction *)mPointerInteraction invalidate];
  }
}

- (void)addCommonObservers
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"p_applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];
  [v4 addObserver:self selector:"p_accessibilityInvertColorsDidChange:" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];
  [v4 addObserver:self selector:"p_keyWindowDidChange:" name:UIWindowDidBecomeKeyNotification object:0];
  [v4 addObserver:self selector:"p_keyWindowDidChange:" name:UIWindowDidResignKeyNotification object:0];
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 addObserver:self forKeyPath:@"CRLSelectAndScrollWithApplePencil" options:0 context:0];
}

- (void)removeCommonObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  v7 = v3;
  if (self->mSceneWillEnterForegroundObserver)
  {
    [v3 removeObserver:?];
    mSceneWillEnterForegroundObserver = self->mSceneWillEnterForegroundObserver;
    self->mSceneWillEnterForegroundObserver = 0;

    v3 = v7;
  }

  if (self->mSceneDidEnterBackgroundObserver)
  {
    [v7 removeObserver:?];
    mSceneDidEnterBackgroundObserver = self->mSceneDidEnterBackgroundObserver;
    self->mSceneDidEnterBackgroundObserver = 0;

    v3 = v7;
  }

  [v3 removeObserver:self name:UIApplicationDidBecomeActiveNotification object:0];
  [v7 removeObserver:self name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];
  [v7 removeObserver:self name:UIWindowDidBecomeKeyNotification object:0];
  [v7 removeObserver:self name:UIWindowDidResignKeyNotification object:0];
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 removeObserver:self forKeyPath:@"CRLSelectAndScrollWithApplePencil"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = v13;
  if (v13 != v11)
  {

LABEL_5:
    v16.receiver = self;
    v16.super_class = CRLiOSCanvasViewController;
    [(CRLiOSCanvasViewController *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_6;
  }

  v15 = [v10 isEqualToString:@"CRLSelectAndScrollWithApplePencil"];

  if (!v15)
  {
    goto LABEL_5;
  }

  [(CRLiOSCanvasViewController *)self p_pencilShouldSelectAndScrollPreferenceDidChange];
LABEL_6:
}

- (void)p_accessibilityInvertColorsDidChange:(id)a3
{
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  [v3 invalidateAllLayers];
}

- (void)showURLAlertFromAlertPresenter:(id)a3
{
  v6 = a3;
  v4 = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
  [v4 dismissMiniFormatter];

  v5 = [(CRLiOSCanvasViewController *)self presentedViewController];
  [v5 dismissViewControllerAnimated:1 completion:0];

  [v6 showAlertFrom:self];
}

- (void)p_willEnterForeground:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController:a3];
  v4 = [v3 canvas];
  v5 = [v4 topLevelReps];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * i) recursivelyPerformSelector:"willEnterForeground"];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)p_didEnterBackground:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController:a3];
  v4 = [v3 canvas];
  v5 = [v4 topLevelReps];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * i) recursivelyPerformSelector:"didEnterBackground"];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)p_applicationDidBecomeActive:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController:a3];
  v4 = [v3 canvas];
  v5 = [v4 topLevelReps];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * i) recursivelyPerformSelector:"i_applicationDidBecomeActive"];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)p_keyWindowDidChange:(id)a3
{
  v4 = [a3 object];
  v5 = [(CRLiOSCanvasViewController *)self view];
  v6 = [v5 window];

  if (v4 == v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    v8 = [WeakRetained canvas];
    v9 = [v8 topLevelReps];

    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"layerHostContainerFocusDidChange"];
        }

        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (id)hitRepWithTouch:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CRLiOSCanvasViewController *)self canvasView];
    [v4 locationInView:v5];
    v7 = v6;
    v9 = v8;

    v10 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    [v10 convertBoundsToUnscaledPoint:{v7, v9}];
    v12 = v11;
    v14 = v13;

    v15 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v16 = [v15 hitRep:{v12, v14}];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135E0B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135E0C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135E160();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController hitRepWithTouch:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:680 isFatal:0 description:"invalid nil value for '%{public}s'", "touch"];

    v16 = 0;
  }

  return v16;
}

- (id)hitKnobWithTouch:(id)a3 returningRep:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(CRLiOSCanvasViewController *)self canvasView];
    [v6 locationInView:v7];
    v9 = v8;
    v11 = v10;

    v12 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    [v12 convertBoundsToUnscaledPoint:{v9, v11}];
    v14 = v13;
    v16 = v15;

    v17 = sub_10042B6C0([v6 type]);
    v18 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v19 = [v18 hitKnobAtPoint:v17 inputType:a4 returningRep:{v14, v16}];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135E188();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135E19C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135E238();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v20);
    }

    v21 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController hitKnobWithTouch:returningRep:]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:694 isFatal:0 description:"invalid nil value for '%{public}s'", "touch"];

    v19 = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  return v19;
}

- (BOOL)canvasSubview:(id)a3 shouldHandleEventAtBoundsPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  if ([v8 i_isRepContentPlatformView:v7])
  {
    [v8 convertBoundsToUnscaledPoint:{x, y}];
    v10 = v9;
    v12 = v11;
    v13 = [v8 hitKnobAtPoint:1 inputType:0 returningRep:?];
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v15 = [v8 hitRep:{v10, v12}];
      v16 = v15;
      if (v15 && [v15 directlyManagesContentPlatformView] && objc_msgSend(v16, "wantsContentPlatformViewEventHandling"))
      {
        v17 = [v16 contentPlatformView];
        if (v17)
        {
          v14 = [v7 isDescendantOfView:v17];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (NSArray)commonGestureRecognizers
{
  v14 = [(CRLiOSCanvasViewController *)self singleTapGestureRecognizer];
  v3 = [(CRLiOSCanvasViewController *)self doubleTapGestureRecognizer];
  v4 = [(CRLiOSCanvasViewController *)self editMenuTapGestureRecognizer];
  v5 = [(CRLiOSCanvasViewController *)self knobDragGestureRecognizer];
  v6 = [(CRLiOSCanvasViewController *)self multiSelectGestureRecognizer];
  v7 = [(CRLiOSCanvasViewController *)self repDragGestureRecognizer];
  v8 = [(CRLiOSCanvasViewController *)self repRotateGestureRecognizer];
  v9 = [(CRLiOSCanvasViewController *)self repRotateKnobGestureRecognizer];
  v10 = [(CRLiOSCanvasViewController *)self zoomGestureRecognizer];
  v11 = [(CRLiOSCanvasViewController *)self nudgeGestureRecognizer];
  v12 = [NSArray arrayWithObjects:v14, v3, v4, v5, v6, v7, v8, v9, v10, v11, 0];

  return v12;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 type] == 2)
  {
    v8 = [v7 window];
    [v7 locationInView:v8];
    v10 = v9;
    v12 = v11;
    v13 = [v8 screen];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v13 coordinateSpace];
    [v8 convertPoint:v22 toCoordinateSpace:{v10, v12}];
    v24 = v23;
    v26 = v25;

    v57.origin.x = v15;
    v57.origin.y = v17;
    v57.size.width = v19;
    v57.size.height = v21;
    if (v26 >= CGRectGetMaxY(v57) + -30.0)
    {
      v58.origin.x = v15;
      v58.origin.y = v17;
      v58.size.width = v19;
      v58.size.height = v21;
      if (v24 <= CGRectGetMinX(v58) + 30.0 || (v59.origin.x = v15, v59.origin.y = v17, v59.size.width = v19, v59.size.height = v21, v24 >= CGRectGetMaxX(v59) + -30.0))
      {

LABEL_30:
        v41 = 0;
        goto LABEL_31;
      }
    }
  }

  v8 = [(CRLiOSCanvasViewController *)self canvasView];
  [v7 locationInView:v8];
  v28 = v27;
  v30 = v29;
  v31 = [(CRLiOSCanvasViewController *)self editMenuTapGestureRecognizer];

  if (v31 == v6)
  {
    v32 = +[UIMenuController sharedMenuController];
    if ([v32 isMenuVisible])
    {
      self->mContextMenuMightBeDisplayed = 1;
    }

    else
    {
      v33 = [(CRLiOSCanvasViewController *)self contextMenuInteractionDelegate];
      self->mContextMenuMightBeDisplayed = [v33 currentlyDisplayingMenu];
    }
  }

  if ([(CRLiOSCanvasViewController *)self touchHitsCanvasViewAtPoint:v28, v30]|| [(CRLiOSCanvasViewController *)self allowTouchOutsideCanvasViewAtPoint:v6 forGesture:v28, v30])
  {
    v34 = [(CRLiOSCanvasViewController *)self traitCollection];
    if ([v34 crl_isCompactWidth] && -[CRLiOSCanvasViewController inInspectorPanZoomMode](self, "inInspectorPanZoomMode") || -[CRLiOSCanvasViewController inMediaBrowsingMode](self, "inMediaBrowsingMode"))
    {

LABEL_19:
      v36 = [(CRLiOSCanvasViewController *)self canvasView];
      v37 = [v36 gestureRecognizers];
      v38 = [v37 containsObject:v6];

      if (v38)
      {
        v39 = +[NSMutableArray array];
        [(CRLiOSCanvasViewController *)self addInspectorPanZoomModeGRsToArray:v39];
        v40 = [v39 containsObject:v6];

        if ((v40 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_26;
    }

    v35 = [(CRLiOSCanvasViewController *)self inInspectorTextEditingMode];

    if (v35)
    {
      goto LABEL_19;
    }

    if (![(CRLiOSCanvasViewController *)self inRestrictedGestureMode])
    {
      goto LABEL_26;
    }
  }

  else if (![(CRLiOSCanvasViewController *)self inRestrictedGestureMode])
  {
    goto LABEL_30;
  }

  if (![(CRLiOSCanvasViewController *)self allowGestureInRestrictedGestureMode:v6])
  {
    goto LABEL_30;
  }

LABEL_26:
  if (self->mPencilDownGestureRecognizer == v6)
  {
    v42 = [(CRLiOSCanvasViewController *)self delegate];
    v43 = objc_opt_respondsToSelector();

    if ((v43 & 1) == 0 || (-[CRLiOSCanvasViewController delegate](self, "delegate"), v44 = objc_claimAutoreleasedReturnValue(), [v44 currentDocumentMode], v45 = objc_claimAutoreleasedReturnValue(), v44, v46 = objc_msgSend(v45, "pencilModeType"), v45, !v46))
    {
      WeakRetained = objc_loadWeakRetained(&self->mICC);
      v49 = [(CRLiOSCanvasViewController *)self canvasView];
      [v7 locationInView:v49];
      [WeakRetained convertBoundsToUnscaledPoint:?];
      v51 = v50;
      v53 = v52;

      v54 = objc_loadWeakRetained(&self->mICC);
      v55 = [v54 freehandDrawingToolkit];
      v56 = [v55 freehandDrawingBehaviorForTouchType:2 atUnscaledPoint:{v51, v53}];

      v41 = v56 == 1;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v41 = 1;
LABEL_31:

  return v41;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLiOSCanvasViewController *)self rectangularMarqueeGestureRecognizer];
  v9 = v8;
  if (v8 == v6)
  {
    v10 = [(CRLiOSCanvasViewController *)self gesturesThatImmediateMarqueeShouldRequireToFail];
    v11 = [v10 containsObject:v7];

    if (v11)
    {
      [(CRLiOSRectangularMarqueeGestureRecognizer *)self->mRectangularMarqueeGestureRecognizer minimumPressDuration];
      if (v12 <= 0.02)
      {
        v13 = 1;
        goto LABEL_6;
      }
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_6:
  v14 = [CRLFeatureFlagsHelper isOSFeatureEnabled:9];
  if ((v13 & 1) == 0 && v14)
  {
    v15 = [(CRLiOSCanvasViewController *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(CRLiOSCanvasViewController *)self delegate];
      v18 = [v17 currentDocumentMode];

      v13 = [v18 gestureRecognizer:v6 shouldRequireFailureOfGestureRecognizer:v7];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)setUpGestureRecognizers
{
  v68 = [(CRLiOSCanvasViewController *)self canvasView];
  v3 = [[CRLiOSTapGestureRecognizer alloc] initWithTarget:self action:"p_handleSingleTapGesture:"];
  [(CRLiOSTapGestureRecognizer *)v3 setDelegate:self];
  [(CRLiOSTapGestureRecognizer *)v3 setName:@"Single Tap"];
  [v68 addGestureRecognizer:v3];
  v67 = v3;
  [(CRLiOSCanvasViewController *)self setSingleTapGestureRecognizer:v3];
  v4 = [[CRLiOSPencilDownGestureRecognizer alloc] initWithTarget:self action:"p_handlePencilDown:"];
  [(CRLiOSPencilDownGestureRecognizer *)v4 setName:@"CVCPencilDown"];
  [(CRLiOSPencilDownGestureRecognizer *)v4 setDelegate:self];
  [v68 addGestureRecognizer:v4];
  v66 = v4;
  [(CRLiOSCanvasViewController *)self setPencilDownGestureRecognizer:v4];
  v5 = [[CRLiOSTapGestureRecognizer alloc] initWithTarget:self action:"handleDoubleTap:"];
  [(CRLiOSTapGestureRecognizer *)v5 setNumberOfTapsRequired:2];
  [(CRLiOSTapGestureRecognizer *)v5 setDelegate:self];
  [(CRLiOSTapGestureRecognizer *)v5 setName:@"Double tap"];
  [v68 addGestureRecognizer:v5];
  v65 = v5;
  [(CRLiOSCanvasViewController *)self setDoubleTapGestureRecognizer:v5];
  v6 = [[CRLiOSEditMenuTapGestureRecognizer alloc] initWithTarget:self action:"p_handleTapForEditMenu:"];
  [(CRLiOSEditMenuTapGestureRecognizer *)v6 setDelegate:self];
  v7 = [(CRLiOSCanvasViewController *)self doubleTapGestureRecognizer];
  [(CRLiOSEditMenuTapGestureRecognizer *)v6 requireGestureRecognizerToFail:v7];

  [v68 addGestureRecognizer:v6];
  v64 = v6;
  [(CRLiOSCanvasViewController *)self setEditMenuTapGestureRecognizer:v6];
  v8 = [CRLiOSKnobDragGestureRecognizer alloc];
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  v10 = [(CRLiOSKnobDragGestureRecognizer *)v8 initWithInteractiveCanvasController:WeakRetained];

  [(CRLiOSKnobDragGestureRecognizer *)v10 setDelegate:self];
  [v68 addGestureRecognizer:v10];
  v63 = v10;
  [(CRLiOSCanvasViewController *)self setKnobDragGestureRecognizer:v10];
  v11 = [CRLiOSMultiSelectGestureRecognizer alloc];
  v12 = objc_loadWeakRetained(&self->mICC);
  v13 = [(CRLiOSMultiSelectGestureRecognizer *)v11 initWithInteractiveCanvasController:v12];

  [(CRLiOSMultiSelectGestureRecognizer *)v13 setDelegate:self];
  [v68 addGestureRecognizer:v13];
  v62 = v13;
  [(CRLiOSCanvasViewController *)self setMultiSelectGestureRecognizer:v13];
  v14 = [CRLiOSRepDragGestureRecognizer alloc];
  v15 = objc_loadWeakRetained(&self->mICC);
  v16 = [(CRLiOSRepDragGestureRecognizer *)v14 initWithInteractiveCanvasController:v15];

  [(CRLiOSRepDragGestureRecognizer *)v16 setDelegate:self];
  [v68 addGestureRecognizer:v16];
  v61 = v16;
  [(CRLiOSCanvasViewController *)self setRepDragGestureRecognizer:v16];
  v17 = [CRLiOSRepNudgeGestureRecognizer alloc];
  v18 = objc_loadWeakRetained(&self->mICC);
  v19 = [(CRLiOSRepNudgeGestureRecognizer *)v17 initWithInteractiveCanvasController:v18];

  [(CRLiOSRepNudgeGestureRecognizer *)v19 setDelegate:self];
  [(CRLiOSRepNudgeGestureRecognizer *)v19 setAllowedTouchTypes:&off_1018E1D58];
  [v68 addGestureRecognizer:v19];
  v60 = v19;
  [(CRLiOSCanvasViewController *)self setNudgeGestureRecognizer:v19];
  v20 = [CRLiOSRepRotateGestureRecognizer alloc];
  v21 = objc_loadWeakRetained(&self->mICC);
  v22 = [(CRLiOSRepRotateGestureRecognizer *)v20 initWithInteractiveCanvasController:v21];

  [(CRLiOSRepRotateGestureRecognizer *)v22 setDelegate:self];
  [v68 addGestureRecognizer:v22];
  [(CRLiOSRepRotateGestureRecognizer *)v22 setName:@"rotate finger"];
  v59 = v22;
  [(CRLiOSCanvasViewController *)self setRepRotateGestureRecognizer:v22];
  v23 = [CRLiOSRepRotateKnobGestureRecognizer alloc];
  v24 = objc_loadWeakRetained(&self->mICC);
  v25 = [(CRLiOSRepRotateKnobGestureRecognizer *)v23 initWithInteractiveCanvasController:v24];

  [(CRLiOSRepRotateKnobGestureRecognizer *)v25 setDelegate:self];
  [v68 addGestureRecognizer:v25];
  [(CRLiOSRepRotateKnobGestureRecognizer *)v25 setName:@"rotate knob"];
  v58 = v25;
  [(CRLiOSCanvasViewController *)self setRepRotateKnobGestureRecognizer:v25];
  v26 = [[CRLiOSAllTouchesDoneGestureRecognizer alloc] initWithTarget:self action:"p_allTouchesDone:"];
  [(CRLiOSAllTouchesDoneGestureRecognizer *)v26 setDelegate:self];
  [v68 addGestureRecognizer:v26];
  v57 = v26;
  [(CRLiOSCanvasViewController *)self setAllTouchesDoneGestureRecognizer:v26];
  v27 = [[CRLiOSAllTouchesDoneGestureRecognizer alloc] initWithTarget:self action:"p_allTouchesDone:"];
  [(CRLiOSAllTouchesDoneGestureRecognizer *)v27 setDelegate:self];
  [(CRLiOSAllTouchesDoneGestureRecognizer *)v27 setAllowedTouchTypes:&off_1018E1D70];
  [v68 addGestureRecognizer:v27];
  [(CRLiOSAllTouchesDoneGestureRecognizer *)v27 setName:@"indirect"];
  objc_storeStrong(&self->mAllIndirectPointerTouchesDoneGestureRecognizer, v27);
  v28 = [[CRLiOSCanvasZoomPinchGestureRecognizer alloc] initWithTarget:self action:"p_zoomWithGesture:"];
  [(CRLiOSCanvasZoomPinchGestureRecognizer *)v28 setDelegate:self];
  [v68 addGestureRecognizer:v28];
  v56 = v28;
  [(CRLiOSCanvasViewController *)self setZoomGestureRecognizer:v28];
  [(CRLiOSCanvasViewController *)self i_updateZoomGestureRecognizer];
  v29 = [CRLiOSPreventScrollGestureRecognizer alloc];
  v30 = objc_loadWeakRetained(&self->mICC);
  v31 = [(CRLiOSPreventScrollGestureRecognizer *)v29 initWithInteractiveCanvasController:v30];

  [(CRLiOSPreventScrollGestureRecognizer *)v31 setDelegate:self];
  [v68 addGestureRecognizer:v31];
  objc_storeStrong(&self->mPreventScrollGestureRecognizer, v31);
  v32 = [CRLiOSFreehandDrawingGestureRecognizer alloc];
  v33 = objc_loadWeakRetained(&self->mICC);
  v34 = [(CRLiOSFreehandDrawingGestureRecognizer *)v32 initWithInteractiveCanvasController:v33];

  [(CRLiOSFreehandDrawingGestureRecognizer *)v34 setDelegate:self];
  [v68 addGestureRecognizer:v34];
  objc_storeStrong(&self->mFreehandDrawingGestureRecognizer, v34);
  v35 = objc_loadWeakRetained(&self->mDelegate);
  LOBYTE(v33) = objc_opt_respondsToSelector();

  if (v33)
  {
    v36 = objc_loadWeakRetained(&self->mDelegate);
    v37 = [v36 pencilKitCanvasViewControllerForCanvasViewController:self];

    v38 = [v37 pencilKitCanvasView];
    v39 = [v38 _hoverGestureRecognizer];

    if (v39)
    {
      v40 = [v38 _hoverGestureRecognizer];
      [v68 addGestureRecognizer:v40];
    }
  }

  mFreehandDrawingGestureRecognizer = self->mFreehandDrawingGestureRecognizer;
  v42 = [(CRLiOSCanvasViewController *)self knobDragGestureRecognizer];
  [(CRLiOSFreehandDrawingGestureRecognizer *)mFreehandDrawingGestureRecognizer requireGestureRecognizerToFail:v42];

  v43 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v44 = [v43 freehandDrawingToolkit];
  [(CRLiOSFreehandDrawingGestureRecognizer *)self->mFreehandDrawingGestureRecognizer setEnabled:v44 != 0];

  v45 = [CRLiOSRectangularMarqueeGestureRecognizer alloc];
  v46 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v47 = [(CRLiOSRectangularMarqueeGestureRecognizer *)v45 initWithInteractiveCanvasController:v46];

  [(CRLiOSRectangularMarqueeGestureRecognizer *)v47 setDelegate:self];
  [v68 addGestureRecognizer:v47];
  [(CRLiOSCanvasViewController *)self setRectangularMarqueeGestureRecognizer:v47];
  v48 = [[UIHoverGestureRecognizer alloc] initWithTarget:self action:"p_handleHoverGesture:"];
  [v68 addGestureRecognizer:v48];
  v49 = [_TtC8Freeform31CRLiOSPencilHoverGestureHandler alloc];
  v50 = objc_loadWeakRetained(&self->mICC);
  v51 = [(CRLiOSCanvasViewController *)self pencilMediator];
  v52 = [(CRLiOSPencilHoverGestureHandler *)v49 initWithInteractiveCanvasController:v50 pencilMediator:v51];
  mPencilHoverGestureHandler = self->mPencilHoverGestureHandler;
  self->mPencilHoverGestureHandler = v52;

  v54 = [[UIHoverGestureRecognizer alloc] initWithTarget:self->mPencilHoverGestureHandler action:"handleHoverGesture:"];
  mPencilHoverGestureRecognizer = self->mPencilHoverGestureRecognizer;
  self->mPencilHoverGestureRecognizer = v54;

  [(UIHoverGestureRecognizer *)self->mPencilHoverGestureRecognizer setAllowedTouchTypes:&off_1018E1D88];
  [v68 addGestureRecognizer:self->mPencilHoverGestureRecognizer];
  [(CRLiOSCanvasViewController *)self p_setUpWPGestureRecognizers];
  [(CRLiOSCanvasViewController *)self setUpCommonGestureAllowedTouchTypes];
}

- (id)gesturesSupportingStylusAndIndirectPointer
{
  v3 = [(CRLiOSCanvasViewController *)self immediateDoubleTapGestureRecognizer];
  v9[0] = v3;
  v4 = [(CRLiOSCanvasViewController *)self tapAndTouchGestureRecognizer];
  v9[1] = v4;
  v5 = [(CRLiOSCanvasViewController *)self doubleTapAndTouchGestureRecognizer];
  v9[2] = v5;
  v6 = [(CRLiOSCanvasViewController *)self immediatePressGestureRecognizer];
  v9[3] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (void)modifyGesturesUsedForStylusAndIndirectPointerAddingTouchType:(int64_t)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CRLiOSCanvasViewController *)self gesturesSupportingStylusAndIndirectPointer];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 allowedTouchTypes];
        v11 = [NSNumber numberWithInteger:a3];
        v12 = [v10 arrayByAddingObject:v11];
        [v9 setAllowedTouchTypes:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)p_setUpWPGestureRecognizers
{
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v28 = [v3 gestureDispatcher];

  v4 = [[NSMutableArray alloc] initWithCapacity:0];
  gestureRecognizers = self->_gestureRecognizers;
  self->_gestureRecognizers = v4;

  v6 = [[CRLWPTapAndTouchGestureRecognizer alloc] initWithGestureDispatcher:v28 gestureKind:@"CRLWPDoubleTapAndTouch"];
  [(CRLWPTapAndTouchGestureRecognizer *)v6 setNumberOfTapsRequired:2];
  v7 = [(CRLiOSCanvasViewController *)self viewForGestureRecognizer:v6];
  [v7 addGestureRecognizer:v6];

  [(NSMutableArray *)self->_gestureRecognizers addObject:v6];
  [(CRLiOSCanvasViewController *)self setDoubleTapAndTouchGestureRecognizer:v6];
  v8 = [[CRLWPTapAndTouchGestureRecognizer alloc] initWithGestureDispatcher:v28 gestureKind:@"CRLWPTapAndTouch"];
  [(CRLWPTapAndTouchGestureRecognizer *)v8 setNumberOfTapsRequired:1];
  v9 = [(CRLiOSCanvasViewController *)self viewForGestureRecognizer:v8];
  [v9 addGestureRecognizer:v8];

  [(NSMutableArray *)self->_gestureRecognizers addObject:v8];
  [(CRLiOSCanvasViewController *)self setTapAndTouchGestureRecognizer:v8];
  v10 = [[CRLWPLongPressGestureRecognizer alloc] initWithGestureDispatcher:v28 gestureKind:@"CRLWPLongPress"];
  [(CRLWPLongPressGestureRecognizer *)v10 setNumberOfTapsRequired:0];
  v11 = [(CRLiOSCanvasViewController *)self viewForGestureRecognizer:v10];
  [v11 addGestureRecognizer:v10];

  [(NSMutableArray *)self->_gestureRecognizers addObject:v10];
  [(CRLiOSCanvasViewController *)self setLongPressGestureRecognizer:v10];
  [(CRLWPLongPressGestureRecognizer *)v10 setAllowedTouchTypes:&off_1018E1DA0];
  v12 = [[CRLWPImmediatePressGestureRecognizer alloc] initWithGestureDispatcher:v28 gestureKind:@"CRLWPImmediatePress"];
  [(CRLWPImmediatePressGestureRecognizer *)v12 setMaximumNumberOfTouches:1];
  v13 = [(CRLiOSCanvasViewController *)self viewForGestureRecognizer:v12];
  [v13 addGestureRecognizer:v12];

  [(NSMutableArray *)self->_gestureRecognizers addObject:v12];
  [(CRLiOSCanvasViewController *)self setImmediatePressGestureRecognizer:v12];
  v14 = [(CRLiOSCanvasViewController *)self immediatePressGestureRecognizer];
  [v14 setDisallowOptionKey:1];

  v15 = [(CRLiOSCanvasViewController *)self canvasView];
  v16 = [(CRLiOSCanvasViewController *)self immediatePressGestureRecognizer];
  [v16 setCanvasView:v15];

  [(CRLWPImmediatePressGestureRecognizer *)v12 setAllowedTouchTypes:&off_1018E1DB8];
  v17 = [[CRLWPTapGestureRecognizer alloc] initWithGestureDispatcher:v28 gestureKind:@"CRLWPImmediateDoubleTap"];
  [(CRLWPTapGestureRecognizer *)v17 setNumberOfTapsRequired:2];
  v18 = [(CRLiOSCanvasViewController *)self viewForGestureRecognizer:v17];
  [v18 addGestureRecognizer:v17];

  [(NSMutableArray *)self->_gestureRecognizers addObject:v17];
  [(CRLiOSCanvasViewController *)self setImmediateDoubleTapGestureRecognizer:v17];
  v19 = [[CRLWPTapGestureRecognizer alloc] initWithGestureDispatcher:v28 gestureKind:@"CRLWPSecondarySingleTap"];
  secondarySingleTapGestureRecognizer = self->_secondarySingleTapGestureRecognizer;
  self->_secondarySingleTapGestureRecognizer = v19;

  [(CRLWPTapGestureRecognizer *)self->_secondarySingleTapGestureRecognizer setEnabled:0];
  v21 = [(CRLiOSCanvasViewController *)self viewForGestureRecognizer:self->_secondarySingleTapGestureRecognizer];
  [v21 addGestureRecognizer:self->_secondarySingleTapGestureRecognizer];

  [(NSMutableArray *)self->_gestureRecognizers addObject:self->_secondarySingleTapGestureRecognizer];
  v22 = [[CRLWPTapGestureRecognizer alloc] initWithGestureDispatcher:v28 gestureKind:@"CRLWPImmediateSingleTap"];
  v23 = [(CRLiOSCanvasViewController *)self viewForGestureRecognizer:v22];
  [v23 addGestureRecognizer:v22];

  [(NSMutableArray *)self->_gestureRecognizers addObject:v22];
  [(CRLiOSCanvasViewController *)self setImmediateSingleTapGestureRecognizer:v22];
  [(CRLiOSCanvasViewController *)self modifyGesturesUsedForStylusAndIndirectPointerAddingTouchType:3];
  [(CRLiOSCanvasViewController *)self modifyGesturesUsedForStylusAndIndirectPointerAddingTouchType:2];
  v24 = [(CRLiOSCanvasViewController *)self delegate];
  v25 = objc_opt_respondsToSelector();

  v26 = 0;
  if (v25)
  {
    v27 = [(CRLiOSCanvasViewController *)self delegate];
    v26 = [v27 scribbleInteractionObserverForCanvasViewController:self];
  }

  [CRLiOSScribbleInteractionSetupHelper setupScribbleEditingProvider:self scribbleObserver:v26 scribbleActive:1];
  [v28 prioritizeRecognizer:v8 overRecognizer:v22];
  [v28 allowSimultaneousRecognitionByRecognizers:{v22, self->_secondarySingleTapGestureRecognizer, 0}];
  [v28 allowSimultaneousRecognitionByRecognizers:{self->_secondarySingleTapGestureRecognizer, v10, 0}];
  [v28 allowSimultaneousRecognitionByRecognizers:{v8, v12, 0}];
  [v28 allowSimultaneousRecognitionByRecognizers:{v22, v8, 0}];
  [v28 allowSimultaneousRecognitionByRecognizers:{v6, v17, 0}];
  [v28 allowSimultaneousRecognitionByRecognizers:{v6, v8, 0}];
}

- (BOOL)touchHitsCanvasViewAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLiOSCanvasViewController *)self canvasView];
  v6 = [v5 hitTest:0 withEvent:{x, y}];
  v7 = v6 == v5;

  return v7;
}

- (NSArray)passthroughViewsToAllowCanvasInteractionDuringPopoverPresentation
{
  v3 = +[NSMutableArray array];
  v4 = [(CRLiOSCanvasViewController *)self canvasView];
  [v3 crl_addNonNilObject:v4];

  v5 = [(CRLiOSCanvasViewController *)self i_quickSelectViewController];
  v6 = [v5 view];
  [v3 crl_addNonNilObject:v6];

  return v3;
}

- (BOOL)i_allowCanvasInteraction:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if ([(CRLiOSCanvasViewController *)self touchHitsCanvasViewAtPoint:a3])
  {
    return 1;
  }

  v8 = [(CRLiOSCanvasViewController *)self canvasView];
  v9 = [v8 hitTest:0 withEvent:{x, y}];
  v10 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v11 = [v10 i_isRepContentPlatformView:v9];

  return v11;
}

- (void)p_handleHoverGesture:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSCanvasViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (-[CRLiOSCanvasViewController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 currentDocumentMode], v8 = objc_claimAutoreleasedReturnValue(), v7, v9 = objc_msgSend(v8, "pencilModeType"), v8, v9 != 1))
  {
    v10 = [(CRLiOSCanvasViewController *)self canvasView];
    [v4 locationInView:v10];
    v12 = v11;
    v14 = v13;
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    [WeakRetained convertBoundsToUnscaledPoint:{v12, v14}];
    v17 = v16;
    v19 = v18;

    if ([(CRLiOSCanvasViewController *)self touchHitsCanvasViewAtPoint:v12, v14])
    {
      v20 = 1;
    }

    else
    {
      v20 = [(CRLiOSCanvasViewController *)self allowTouchOutsideCanvasViewAtPoint:v4 forGesture:v12, v14];
    }

    v21 = [CRLCanvasEnterExitPlatformObject platformObjectWithGesture:v4];
    if (!v20)
    {
      goto LABEL_13;
    }

    v22 = [v4 state];
    if (v22 <= 2)
    {
      if (v22)
      {
        if (v22 == 1)
        {
          [(CRLCanvasRepEnterExitNotifier *)self->mEnterExitNotifier cursorEnteredAtPoint:v21 withPlatformObject:v17, v19];
        }

        else if (v22 == 2)
        {
          [(CRLCanvasRepEnterExitNotifier *)self->mEnterExitNotifier updateEnteredExitedRepStateAtPoint:v21 withPlatformObject:v17, v19];
        }
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10135E260();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10135E274();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10135E304();
        }

        v23 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v23);
        }

        v24 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController p_handleHoverGesture:]"];
        v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
        [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:1161 isFatal:0 description:"Something has gone wrong."];
      }

      goto LABEL_14;
    }

    if ((v22 - 3) < 3)
    {
LABEL_13:
      [(CRLCanvasRepEnterExitNotifier *)self->mEnterExitNotifier cursorExitedAtPoint:v21 withPlatformObject:v17, v19];
    }

LABEL_14:
  }
}

- (NSArray)gesturesToAdjustIfStylusShouldSelectAndScroll
{
  v3 = +[NSMutableArray array];
  v4 = [(CRLiOSCanvasViewController *)self repDragGestureRecognizer];
  [v3 crl_addNonNilObject:v4];

  v5 = [(CRLiOSCanvasViewController *)self singleTapGestureRecognizer];
  [v3 crl_addNonNilObject:v5];

  v6 = [(CRLiOSCanvasViewController *)self doubleTapGestureRecognizer];
  [v3 crl_addNonNilObject:v6];

  v7 = [(CRLiOSCanvasViewController *)self rectangularMarqueeGestureRecognizer];
  [v3 crl_addNonNilObject:v7];

  return v3;
}

- (BOOL)disallowRectangularMarqueeOperationAtUnscaledPoint:(CGPoint)a3
{
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController:a3.x];
  if ([v3 currentlyScrolling])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 dynamicOperationController];
    v4 = [v5 isInOperation];
  }

  return v4;
}

- (id)gesturesThatImmediateMarqueeShouldRequireToFail
{
  v3 = [(CRLiOSCanvasViewController *)self singleTapGestureRecognizer];
  v4 = [(CRLiOSCanvasViewController *)self editMenuTapGestureRecognizer];
  v5 = [NSSet setWithObjects:v3, v4, 0];

  return v5;
}

- (void)setUpCommonGestureAllowedTouchTypes
{
  if ([(CRLiOSCanvasViewController *)self shouldSelectAndScrollWithApplePencil])
  {
    v3 = &off_1018E1DD0;
  }

  else
  {
    v3 = &off_1018E1DE8;
  }

  v4 = [(CRLiOSCanvasViewController *)self gesturesToAdjustIfStylusShouldSelectAndScroll];
  v5 = [(CRLiOSCanvasViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRLiOSCanvasViewController *)self delegate];
    v8 = [v7 currentDocumentMode];

    v9 = [v8 gesturesToAdjustIfPencilShouldSelectAndScrollFromGestures:v4];

    v4 = v9;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) setAllowedTouchTypes:{v3, v15}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)resetGesturesForContextSwitch
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(CRLiOSCanvasViewController *)self view];
  v4 = [v3 gestureRecognizers];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isEnabled])
        {
          v10 = [v9 delegate];

          if (v10 == self)
          {
            [v9 setEnabled:0];
            [v9 setEnabled:1];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [(CRLiOSCanvasViewController *)self editMenuTapGestureRecognizer];
  v12 = [v11 isEnabled];

  if (v12)
  {
    v13 = [(CRLiOSCanvasViewController *)self editMenuTapGestureRecognizer];
    [v13 setIgnoreTargetAction:1];
  }
}

- (void)i_updateZoomGestureRecognizer
{
  v5 = [(CRLiOSCanvasViewController *)self canvasLayer];
  v3 = [v5 allowsPinchZoom];
  v4 = [(CRLiOSCanvasViewController *)self zoomGestureRecognizer];
  [v4 setEnabled:v3];
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 withRecognizer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  self->mLastTapPoint.x = x;
  self->mLastTapPoint.y = y;
  v8 = [(CRLiOSCanvasViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CRLiOSCanvasViewController *)self delegate];
    v11 = [v10 currentDocumentMode];

    if (!v11)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135E32C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135E340();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135E3DC();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v12);
      }

      v13 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController handleSingleTapAtPoint:withRecognizer:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1260 isFatal:0 description:"invalid nil value for '%{public}s'", "currentMode"];
    }

    v15 = [v11 handleSingleTapAtPoint:objc_msgSend(v7 touchType:{"touchTypeForTap"), x, y}];

    if (v15)
    {
      v16 = 1;
      goto LABEL_32;
    }
  }

  if ([(CRLiOSCanvasViewController *)self inMediaBrowsingMode])
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      goto LABEL_23;
    }

    v19 = objc_loadWeakRetained(&self->mDelegate);
    [v19 handleMediaBrowsingModeTap];
  }

  else
  {
    if (![(CRLiOSCanvasViewController *)self inInspectorPanZoomMode]&& ![(CRLiOSCanvasViewController *)self inInspectorTextEditingMode])
    {
      goto LABEL_23;
    }

    v20 = objc_loadWeakRetained(&self->mDelegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->mDelegate);
      [v22 handleInspectorPanZoomModeTap];
    }

    v19 = objc_loadWeakRetained(&self->mICC);
    [v19 resumeEditing];
  }

LABEL_23:
  v23 = sub_10042B6C0([v7 touchTypeForTap]);
  v24 = objc_loadWeakRetained(&self->mICC);
  v34 = 0;
  v25 = [v24 hitKnobAtPoint:v23 inputType:&v34 returningRep:{x, y}];
  v26 = v34;

  if (v25 && ([v26 handleSingleTapAtPoint:v25 onKnob:v23 inputType:{x, y}] & 1) != 0)
  {
    v16 = 1;
  }

  else
  {
    v27 = objc_loadWeakRetained(&self->mICC);
    v28 = [v27 hitRep:{x, y}];

    v29 = [v28 repForSelecting];
    if (v29 || ([v28 shouldIgnoreSingleTapAtPoint:v7 withRecognizer:{x, y}] & 1) == 0)
    {
      v30 = ([v7 modifierFlags] & 0x120000) != 0;
      v31 = [(CRLiOSCanvasViewController *)self isCurrentlyInQuickSelectMode];
      v32 = objc_loadWeakRetained(&self->mICC);
      v16 = [v32 handleSingleTapAtPoint:v31 ^ v30 extendingSelection:v23 inputType:{x, y}];
    }

    else
    {
      v16 = 1;
    }
  }

LABEL_32:
  return v16;
}

- (void)handleDoubleTap:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v12 = sub_100014370(v5, v4);

  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    [v12 firstTapLocation];
    [WeakRetained convertBoundsToUnscaledPoint:?];
    v8 = v7;
    v10 = v9;

    if (![(CRLiOSCanvasViewController *)self handleDoubleTapAtPoint:v12 withRecognizer:v8, v10])
    {
      v11 = objc_loadWeakRetained(&self->mICC);
      [v11 handleDoubleTapAtPoint:sub_10042B6C0(objc_msgSend(v12 inputType:{"touchTypeForTap")), v8, v10}];
    }
  }
}

- (BOOL)handleDoubleTapAtPoint:(CGPoint)a3 withRecognizer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = sub_100014370(v8, v7);
  v10 = sub_10042B6C0([v9 touchTypeForTap]);

  WeakRetained = objc_loadWeakRetained(&self->mICC);
  v44 = 0;
  v12 = [WeakRetained hitKnobAtPoint:v10 inputType:&v44 returningRep:{x, y}];
  v13 = v44;

  if (v12)
  {
    v14 = [v13 handleDoubleTapAtPoint:v12 onKnob:v10 inputType:{x, y}];
    if (![CRLFeatureFlagsHelper isOSFeatureEnabled:9])
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (![CRLFeatureFlagsHelper isOSFeatureEnabled:9])
    {
      goto LABEL_10;
    }

    v14 = 0;
  }

  v15 = [(CRLiOSCanvasViewController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(CRLiOSCanvasViewController *)self delegate];
    v18 = [v17 currentDocumentMode];

    v19 = objc_opt_class();
    v20 = sub_100014370(v19, v7);
    v21 = [v20 touchTypeForTap];

    v14 |= [v18 shouldHandleDoubleTapAtPoint:v21 touchType:{x, y}];
  }

LABEL_8:
  if (v14)
  {
    v22 = 1;
    goto LABEL_17;
  }

LABEL_10:
  v23 = objc_loadWeakRetained(&self->mICC);
  v24 = [v23 hitRep:{x, y}];
  v25 = [v24 repForSelecting];

  if (v25)
  {
    v26 = [v25 info];

    if (v26)
    {
      v42 = v7;
      v43 = v13;
      v27 = objc_loadWeakRetained(&self->mICC);
      v28 = [v27 selectionModelTranslator];
      v29 = objc_loadWeakRetained(&self->mICC);
      v30 = [v29 editorController];
      v31 = [v30 selectionPath];
      v32 = [v28 boardItemsForSelectionPath:v31];

      v33 = objc_loadWeakRetained(&self->mICC);
      v34 = [v33 canvasEditor];

      if ([v32 count] != 1 || (objc_msgSend(v25, "info"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v32, "containsObject:", v35), v35, (v36 & 1) == 0))
      {
        v37 = [v25 info];
        v38 = [v34 selectionPathWithInfo:v37];
        v39 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
        v40 = [v39 editorController];
        [v40 setSelectionPath:v38];
      }

      v7 = v42;
      v13 = v43;
    }
  }

  v22 = 0;
LABEL_17:

  return v22;
}

- (void)p_handleTapForEditMenu:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v35 = sub_100014370(v5, v4);

  v6 = v35;
  if (v35)
  {
    v7 = [v35 ignoreTargetAction];
    v6 = v35;
    if ((v7 & 1) == 0)
    {
      v8 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      if (![v8 shouldAllowKeyCommands])
      {
        goto LABEL_25;
      }

      v9 = [(CRLiOSCanvasViewController *)self isCurrentlyInQuickSelectMode];

      v6 = v35;
      if (v9)
      {
        goto LABEL_26;
      }

      WeakRetained = objc_loadWeakRetained(&self->mICC);
      v11 = [(CRLiOSCanvasViewController *)self canvasView];
      [v35 locationInView:v11];
      [WeakRetained convertBoundsToUnscaledPoint:?];
      v13 = v12;
      v15 = v14;

      v16 = [v35 touchedRep];
      v8 = v16;
      if (!v16)
      {
        goto LABEL_25;
      }

      if ([v16 hasBeenRemoved])
      {
        goto LABEL_25;
      }

      v17 = [v8 repForSelecting];

      if (v17 != v8)
      {
        goto LABEL_25;
      }

      if (([v8 isSelectedIgnoringLocking] & 1) == 0 && -[CRLiOSCanvasViewController shouldSelectAndShowEditMenuOnFirstTapForRep:](self, "shouldSelectAndShowEditMenuOnFirstTapForRep:", v8))
      {
        v18 = objc_loadWeakRetained(&self->mICC);
        [v18 endEditing];

        v19 = objc_loadWeakRetained(&self->mICC);
        v20 = [v19 canvasEditor];

        v21 = [v8 info];
        v22 = [v20 selectionPathWithInfo:v21];
        v23 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
        v24 = [v23 editorController];
        [v24 setSelectionPath:v22];
      }

      self->mLastTapPoint = CGPointZero;
      if (![v8 isSelectedIgnoringLocking] || (objc_msgSend(v8, "shouldIgnoreEditMenuTapAtPoint:withRecognizer:", v35, v13, v15) & 1) != 0)
      {
        goto LABEL_25;
      }

      if ([v8 wantsToManuallyHandleEditMenuTapAtPoint:{v13, v15}])
      {
        [v8 handleEditMenuTapAtPoint:sub_10042B6C0(objc_msgSend(v35 inputType:{"touchTypeForTap")), v13, v15}];
      }

      else
      {
        if (!self->mContextMenuMightBeDisplayed)
        {
          v25 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
          v26 = [v25 editorController];
          v27 = [v26 selectionPath];
          v28 = [(CRLiOSCanvasViewController *)self p_shouldShowMiniFormatterForSelectionPath:v27];

          if (v28)
          {
            if ([v8 manuallyControlsMiniFormatter])
            {
              goto LABEL_25;
            }

            if (UIAccessibilityIsVoiceOverRunning() && [v8 isSelected])
            {
              [v8 accessibilityActivationPoint];
              [v8 handleDoubleTapAtPoint:1 inputType:?];
              goto LABEL_25;
            }

            v29 = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
            v32 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
            v33 = [v32 editorController];
            v34 = [v33 selectionPath];
            [v29 handleSingleTapOnRep:v8 withSelectionPath:v34];
          }

          else
          {
            v29 = objc_loadWeakRetained(&self->mICC);
            v30 = [v29 editorController];
            v31 = [v30 selectionPath];
            [(CRLiOSCanvasViewController *)self showEditUIForSelectionPath:v31];
          }

          goto LABEL_25;
        }

        [(CRLiOSCanvasViewController *)self hideEditMenu];
      }

LABEL_25:

      v6 = v35;
    }
  }

LABEL_26:
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 64;
  mSingleTapGestureRecognizer = self->mSingleTapGestureRecognizer;
  mEditMenuTapGestureRecognizer = self->mEditMenuTapGestureRecognizer;
  if (mSingleTapGestureRecognizer == v6 && mEditMenuTapGestureRecognizer == v7)
  {
    goto LABEL_34;
  }

  if (mSingleTapGestureRecognizer == v7 && mEditMenuTapGestureRecognizer == v6)
  {
    goto LABEL_34;
  }

  mRepDragGestureRecognizer = self->mRepDragGestureRecognizer;
  if ((mRepDragGestureRecognizer == v6 || self->mNudgeGestureRecognizer == v6 || self->mMultiSelectGestureRecognizer == v6) && (mRepDragGestureRecognizer == v8 || self->mNudgeGestureRecognizer == v8 || self->mMultiSelectGestureRecognizer == v8))
  {
    goto LABEL_34;
  }

  v15 = mRepDragGestureRecognizer == v6 || mRepDragGestureRecognizer == v8;
  if (!v15 || [(CRLiOSRepDragGestureRecognizer *)mRepDragGestureRecognizer state]!= 3 || (v16 = self->mEditMenuTapGestureRecognizer, v17 = 1, v16 != v6) && v16 != v8 && (v18 = self->mSingleTapGestureRecognizer, v18 != v6) && v18 != v8)
  {
    v19 = [(CRLiOSCanvasViewController *)self preventScrollGestureRecognizer];
    if (v19 != v6)
    {
      v20 = [(CRLiOSCanvasViewController *)self preventScrollGestureRecognizer];
      v9 = v20;
      if (v20 != v8)
      {

LABEL_36:
        if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9]&& ([(CRLiOSCanvasViewController *)self delegate], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_opt_respondsToSelector(), v28, (v29 & 1) != 0))
        {
          v30 = [(CRLiOSCanvasViewController *)self delegate];
          v31 = [v30 currentDocumentMode];

          v17 = [v31 gestureRecognizer:v6 shouldRecognizeSimultaneouslyWithGestureRecognizer:v8];
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_35;
      }
    }

    v21 = [(CRLiOSCanvasViewController *)self canvasView];
    v22 = [v21 enclosingScrollView];
    v23 = [v22 panGestureRecognizer];
    if (v23 == v6)
    {
      v32 = 0;
    }

    else
    {
      v24 = [(CRLiOSCanvasViewController *)self canvasView];
      v25 = [v24 enclosingScrollView];
      v26 = [v25 panGestureRecognizer];
      v32 = v26 != v8;
    }

    if (v19 != v6)
    {
    }

    if (!v32)
    {
      goto LABEL_36;
    }

LABEL_34:
    v17 = 1;
  }

LABEL_35:

  return v17;
}

- (BOOL)shouldIgnoreTextGesture:(id)a3 atPoint:(CGPoint)a4
{
  v5 = [(CRLiOSCanvasViewController *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRLiOSCanvasViewController *)self delegate];
    v8 = [v7 currentDocumentMode];

    v9 = [v8 shouldAllowTextGesturesInRestrictedGestureMode];
  }

  else
  {
    v9 = 0;
  }

  if ([(CRLiOSCanvasViewController *)self inInspectorPanZoomMode])
  {
    v10 = 1;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = [(CRLiOSCanvasViewController *)self inInspectorTextEditingMode];
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if ([(CRLiOSCanvasViewController *)self inRestrictedGestureMode])
  {
    v11 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v12 = [v11 editingDisabled] ^ 1;

    goto LABEL_11;
  }

LABEL_10:
  LOBYTE(v12) = 0;
LABEL_11:
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained)
  {
    v14 = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v15 = objc_loadWeakRetained(&self->mDelegate);
      v16 = [v15 shouldIgnoreTextGestures];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return (v10 | v12 | v16) & 1;
}

- (void)p_allTouchesDone:(id)a3
{
  v4 = [(CRLiOSCanvasViewController *)self view];
  v5 = [v4 window];
  [v5 makeKeyWindow];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"CRLInteractiveCanvasControllerAllTouchesInGestureFinished" object:self];
}

- (id)p_reasonStringForIgnoringKeyboardInputWithAllTouchesDoneGestureRecognizer:(id)a3
{
  v3 = [a3 name];
  v4 = [NSString stringWithFormat:@"All Touches Gestures In Flight (%@)", v3];

  return v4;
}

- (void)didStartCountingTouches:(id)a3 touchType:(int64_t)a4 atSomeTouchPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isEasierConnectionLinesEnabled])
  {
    v10 = [(CRLiOSCanvasViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(CRLiOSCanvasViewController *)self delegate];
      [v12 userDidInteractWithCanvas:self];
    }
  }

  [(CRLiOSCanvasViewController *)self p_shouldIgnoreKeyboardInputForTouchType:a4 atSomeTouchPoint:x, y];
  v13 = [(CRLiOSCanvasViewController *)self editingCoordinator];
  [v13 suspendCollaborationWithReason:@"CRLCanvasTouches"];

  if (self->mAllIndirectPointerTouchesDoneGestureRecognizer == v9)
  {
    if ([(CRLiOSCanvasViewController *)self currentlyTrackingIndirectPointerTouch])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135E4D0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135E4E4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135E574();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v17);
      }

      v18 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController didStartCountingTouches:touchType:atSomeTouchPoint:]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
      [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:1486 isFatal:0 description:"Should not be told twice about indirect touches!"];
    }

    [(CRLiOSCanvasViewController *)self setCurrentlyTrackingIndirectPointerTouch:1];
  }

  else if (self->mAllTouchesDoneGestureRecognizer == v9)
  {
    if (self->mIsCurrentlyTrackingTouch)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135E404();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135E418();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135E4A8();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController didStartCountingTouches:touchType:atSomeTouchPoint:]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:1489 isFatal:0 description:"Should not be told twice about touches!"];
    }

    self->mIsCurrentlyTrackingTouch = 1;
  }

  [(CRLiOSPencilHoverGestureHandler *)self->mPencilHoverGestureHandler removeHoverEffect];
}

- (BOOL)p_shouldIgnoreKeyboardInputForTouchType:(int64_t)a3 atSomeTouchPoint:(CGPoint)a4
{
  if (a3 == 2)
  {
    y = a4.y;
    x = a4.x;
    v7 = [(CRLiOSCanvasViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(CRLiOSCanvasViewController *)self delegate];
      v10 = [v9 currentDocumentMode];

      if (!v10)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10135E59C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10135E5B0();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10135E64C();
        }

        v11 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v11);
        }

        v12 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController p_shouldIgnoreKeyboardInputForTouchType:atSomeTouchPoint:]"];
        v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
        [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1504 isFatal:0 description:"invalid nil value for '%{public}s'", "currentMode"];
      }

      v14 = [v10 pencilModeType];
      if (v14 == 2)
      {
        v15 = 0;
        goto LABEL_18;
      }

      if (v14 == 1)
      {
        v15 = 1;
LABEL_18:

        return v15;
      }
    }

    v16 = [(CRLiOSCanvasViewController *)self pencilMediator];
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    [WeakRetained convertBoundsToUnscaledPoint:{x, y}];
    v18 = [v16 pencilBehaviorOutsideModesAtUnscaledPoint:?];

    return v18 != 2;
  }

  return 1;
}

- (void)didStopCountingTouches:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSCanvasViewController *)self editingCoordinator];
  [v5 resumeCollaborationWithReason:@"CRLCanvasTouches"];

  WeakRetained = objc_loadWeakRetained(&self->mICC);
  v7 = [WeakRetained textInputResponder];
  [v7 becomeFirstResponder];

  if (self->mAllIndirectPointerTouchesDoneGestureRecognizer == v4)
  {
    if (![(CRLiOSCanvasViewController *)self currentlyTrackingIndirectPointerTouch])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135E740();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135E754();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135E7E4();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController didStopCountingTouches:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1528 isFatal:0 description:"Should not be told twice about indirect touches!"];
    }

    [(CRLiOSCanvasViewController *)self setCurrentlyTrackingIndirectPointerTouch:0];
  }

  else if (self->mAllTouchesDoneGestureRecognizer == v4)
  {
    if (!self->mIsCurrentlyTrackingTouch)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135E674();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135E688();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135E718();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v8);
      }

      v9 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController didStopCountingTouches:]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1531 isFatal:0 description:"Should not be told twice about touches!"];
    }

    self->mIsCurrentlyTrackingTouch = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CRLiOSCanvasViewController;
  [(CRLiOSCanvasViewController *)&v17 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  if (v7)
  {
    [v7 targetTransform];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v8 = [(CRLiOSCanvasViewController *)self view];
  [v8 bounds];
  v11 = sub_10013A1E4(v14, v9, v10);

  if (v11)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100381EAC;
    v13[3] = &unk_10185A2B8;
    v13[4] = self;
    v13[5] = v15;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100382088;
    v12[3] = &unk_10185A2E0;
    v12[4] = self;
    v12[5] = v15;
    [v7 animateAlongsideTransition:v13 completion:v12];
  }

  _Block_object_dispose(v15, 8);
}

- (BOOL)allowTouchOutsideCanvasViewAtPoint:(CGPoint)a3 forGesture:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  mAllIndirectPointerTouchesDoneGestureRecognizer = self->mAllIndirectPointerTouchesDoneGestureRecognizer;
  if (v7 && mAllIndirectPointerTouchesDoneGestureRecognizer != v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->mDelegate);
      v13 = [v12 allowTouchOutsideCanvasViewAtPoint:v8 forGesture:{x, y}];

      if (v13)
      {
        goto LABEL_5;
      }
    }

LABEL_7:
    v15 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v16 = [v15 drawingIntelligenceProvider];
    v14 = [v16 isDetectionDecoratorViewHitAtScaledPoint:{x, y}];

    goto LABEL_8;
  }

  if (mAllIndirectPointerTouchesDoneGestureRecognizer != v7)
  {
    goto LABEL_7;
  }

LABEL_5:
  v14 = 1;
LABEL_8:

  return v14;
}

- (id)viewForGestureRecognizer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->mDelegate);
    v8 = [v7 viewForGestureRecognizer:v4];
  }

  else
  {
    v8 = [(CRLiOSCanvasViewController *)self canvasView];
  }

  return v8;
}

- (CRLiOSCanvasDropInteractionDelegate)dropInteractionDelegate
{
  mDropInteractionDelegate = self->mDropInteractionDelegate;
  if (!mDropInteractionDelegate)
  {
    v4 = [CRLiOSCanvasDropInteractionDelegate alloc];
    v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v6 = [(CRLiOSCanvasDropInteractionDelegate *)v4 initWithICC:v5];
    v7 = self->mDropInteractionDelegate;
    self->mDropInteractionDelegate = v6;

    mDropInteractionDelegate = self->mDropInteractionDelegate;
  }

  return mDropInteractionDelegate;
}

- (CRLiOSCanvasDragInteractionDelegate)dragInteractionDelegate
{
  mDragInteractionDelegate = self->mDragInteractionDelegate;
  if (!mDragInteractionDelegate)
  {
    v4 = [CRLiOSCanvasDragInteractionDelegate alloc];
    v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v6 = [(CRLiOSCanvasDragInteractionDelegate *)v4 initWithInteractiveCanvasController:v5];
    v7 = self->mDragInteractionDelegate;
    self->mDragInteractionDelegate = v6;

    mDragInteractionDelegate = self->mDragInteractionDelegate;
  }

  return mDragInteractionDelegate;
}

- (id)contextMenuInteractionDelegate
{
  mContextMenuInteractionDelegate = self->mContextMenuInteractionDelegate;
  if (!mContextMenuInteractionDelegate)
  {
    v4 = [CRLiOSCanvasContextMenuInteractionDelegate alloc];
    v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v6 = [(CRLiOSCanvasContextMenuInteractionDelegate *)v4 initWithInteractiveCanvasController:v5];
    v7 = self->mContextMenuInteractionDelegate;
    self->mContextMenuInteractionDelegate = v6;

    mContextMenuInteractionDelegate = self->mContextMenuInteractionDelegate;
  }

  return mContextMenuInteractionDelegate;
}

- (id)pointerInteractionDelegate
{
  mPointerInteractionDelegate = self->mPointerInteractionDelegate;
  if (!mPointerInteractionDelegate)
  {
    v4 = [CRLiOSCanvasPointerInteractionDelegate alloc];
    v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v6 = [(CRLiOSCanvasPointerInteractionDelegate *)v4 initWithInteractiveCanvasController:v5];
    v7 = self->mPointerInteractionDelegate;
    self->mPointerInteractionDelegate = v6;

    mPointerInteractionDelegate = self->mPointerInteractionDelegate;
  }

  return mPointerInteractionDelegate;
}

- (id)newDragAndDropController
{
  v3 = [CRLiOSDragAndDropController alloc];
  v4 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v5 = [(CRLDragAndDropController *)v3 initWithDelegate:self interactiveCanvasController:v4];

  return v5;
}

- (id)modelContainerForLocalDragContext
{
  v2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v3 = [v2 board];

  return v3;
}

- (void)dragSessionWillBegin
{
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v4 = [v3 canvasView];
  v5 = [v4 enclosingScrollView];
  v6 = [v5 panGestureRecognizer];
  [v6 setState:4];

  v7 = [(CRLiOSCanvasViewController *)self singleTapGestureRecognizer];
  [v7 setState:4];
}

- (BOOL)allowsSystemDragSession
{
  v3 = [(CRLiOSCanvasViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(CRLiOSCanvasViewController *)self delegate];
  v6 = [v5 allowsSystemDragSession];

  return v6;
}

- (void)p_setDragLiftDelay:(double)a3
{
  v5 = [(CRLiOSCanvasViewController *)self dragInteraction];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRLiOSCanvasViewController *)self dragInteraction];
    [v7 _setLiftDelay:a3];
  }

  v8 = [(CRLiOSCanvasViewController *)self dragInteraction];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CRLiOSCanvasViewController *)self dragInteraction];
    [v10 _setPointerLiftDelay:a3];
  }
}

- (BOOL)canInsertBoardItemsFromDragOperationForDragInfo:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 platformDraggingInfo];

  v7 = [v6 localDragSession];
  v8 = [v7 localContext];
  v9 = sub_100014370(v5, v8);

  if (v9)
  {
    v10 = [v9 modelContainer];
    v11 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v12 = [v11 board];
    v13 = v10 != v12;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)shouldAllowDragOperationForDragInfo:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSCanvasViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    goto LABEL_5;
  }

  v6 = [v5 shouldRejectDragOperationForDragInfo:v4];
  v7 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  if ((v6 & 1) == 0)
  {
LABEL_5:
    v8 = [v7 isInDynamicOperation] ^ 1;
    goto LABEL_6;
  }

  LOBYTE(v8) = 0;
LABEL_6:

  return v8;
}

- (CGRect)targetRectForEditMenu:(id)a3
{
  v4 = a3;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v9 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v10 = [v9 editorController];
  v11 = [v10 currentEditors];
  v12 = [v11 reverseObjectEnumerator];

  v13 = [v12 countByEnumeratingWithState:&v91 objects:v97 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v92;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v92 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v91 + 1) + 8 * v16);
      if (objc_opt_respondsToSelector())
      {
        [v17 targetRectForEditMenu];
        x = v98.origin.x;
        y = v98.origin.y;
        width = v98.size.width;
        height = v98.size.height;
        if (!CGRectIsNull(v98))
        {
          break;
        }
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v91 objects:v97 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v99.origin.x = x;
  v99.origin.y = y;
  v99.size.width = width;
  v99.size.height = height;
  if (CGRectIsNull(v99))
  {
    v18 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v19 = [v18 infosForSelectionPath:v4];

    if ([v19 count])
    {
      WeakRetained = objc_loadWeakRetained(&self->mICC);
      [WeakRetained layoutIfNeeded];

      if ([v19 count] == 1)
      {
        v21 = objc_loadWeakRetained(&self->mICC);
        v22 = [v19 anyObject];
        v23 = [v21 repForInfo:v22];

        [v23 targetRectForEditMenu];
        v24 = v100.origin.x;
        v25 = v100.origin.y;
        v26 = v100.size.width;
        v27 = v100.size.height;
        if (!CGRectIsNull(v100))
        {
          if (v23)
          {
            [v23 transformToConvertNaturalToLayerRelative];
          }

          else
          {
            memset(&v90, 0, sizeof(v90));
          }

          v101.origin.x = v24;
          v101.origin.y = v25;
          v101.size.width = v26;
          v101.size.height = v27;
          v102 = CGRectApplyAffineTransform(v101, &v90);
          v39 = v102.origin.x;
          v40 = v102.origin.y;
          width = v102.size.width;
          height = v102.size.height;
          [v23 layerFrameInScaledCanvas];
          x = sub_10011F334(v39, v40, v41);
          y = v42;
        }
      }

      v103.origin.x = x;
      v103.origin.y = y;
      v103.size.width = width;
      v103.size.height = height;
      if (CGRectIsNull(v103))
      {
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        obj = v19;
        v43 = [obj countByEnumeratingWithState:&v86 objects:v96 count:16];
        if (v43)
        {
          v44 = v43;
          v79 = v19;
          v80 = v4;
          v45 = *v87;
          do
          {
            for (i = 0; i != v44; i = i + 1)
            {
              if (*v87 != v45)
              {
                objc_enumerationMutation(obj);
              }

              v47 = *(*(&v86 + 1) + 8 * i);
              v82 = 0u;
              v83 = 0u;
              v84 = 0u;
              v85 = 0u;
              v48 = objc_loadWeakRetained(&self->mICC);
              v49 = [v48 repsForInfo:v47];

              v50 = [v49 countByEnumeratingWithState:&v82 objects:v95 count:16];
              if (v50)
              {
                v51 = v50;
                v52 = *v83;
                do
                {
                  for (j = 0; j != v51; j = j + 1)
                  {
                    if (*v83 != v52)
                    {
                      objc_enumerationMutation(v49);
                    }

                    v54 = [*(*(&v82 + 1) + 8 * j) layout];
                    [v54 insertionFrameInRoot];
                    v56 = v55;
                    v58 = v57;
                    v60 = v59;
                    v62 = v61;

                    v63 = objc_loadWeakRetained(&self->mICC);
                    [v63 convertUnscaledToBoundsRect:{v56, v58, v60, v62}];
                    v65 = v64;
                    v67 = v66;
                    v69 = v68;
                    v71 = v70;

                    v104.origin.x = x;
                    v104.origin.y = y;
                    v104.size.width = width;
                    v104.size.height = height;
                    if (CGRectIsNull(v104))
                    {
                      height = v71;
                      width = v69;
                      y = v67;
                      x = v65;
                    }

                    else
                    {
                      x = sub_10011FC04(x, y, width, height, v65, v67, v69, v71);
                      y = v72;
                      width = v73;
                      height = v74;
                    }
                  }

                  v51 = [v49 countByEnumeratingWithState:&v82 objects:v95 count:16];
                }

                while (v51);
              }
            }

            v44 = [obj countByEnumeratingWithState:&v86 objects:v96 count:16];
          }

          while (v44);
          v19 = v79;
          v4 = v80;
        }

        v105.origin.x = x;
        v105.origin.y = y;
        v105.size.width = width;
        v105.size.height = height;
        if (CGRectIsNull(v105))
        {
          x = CGRectZero.origin.x;
          y = CGRectZero.origin.y;
          width = CGRectZero.size.width;
          height = CGRectZero.size.height;
        }
      }
    }

    else
    {
      v28 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      [(CRLiOSCanvasViewController *)self lastTapPoint];
      [v28 convertUnscaledToBoundsPoint:?];
      v30 = v29;
      v32 = v31;

      sub_10011F334(v30, v32, 0.0);
      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v33, v34);
      x = v35;
      y = v36;
      width = v37;
      height = v38;
    }
  }

  v75 = x;
  v76 = y;
  v77 = width;
  v78 = height;
  result.size.height = v78;
  result.size.width = v77;
  result.origin.y = v76;
  result.origin.x = v75;
  return result;
}

- (void)showEditMenuForSelectionPath:(id)a3
{
  v4 = a3;
  v5 = +[UIMenuController sharedMenuController];
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = objc_loadWeakRetained(&self->mDelegate);
    v8 = [v7 allowEditMenuToAppear];

    if (!v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ([(CRLiOSCanvasViewController *)self becomeFirstResponderIfAppropriate])
  {
    v9 = [(CRLiOSCanvasViewController *)self view];
    v10 = [v9 window];
    [v10 makeKeyWindow];

    if (self->mContextMenuController)
    {
      v11 = +[UIMenuController sharedMenuController];
      [v11 hideMenu];
    }

    v12 = objc_loadWeakRetained(&self->mICC);
    [v12 visibleBoundsRect];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [(CRLiOSCanvasViewController *)self targetRectForEditMenu:v4];
    v42.origin.x = v14;
    v42.origin.y = v16;
    v42.size.width = v18;
    v42.size.height = v20;
    v41 = CGRectIntersection(v40, v42);
    v43.origin.x = CGRectNull.origin.x;
    v43.origin.y = CGRectNull.origin.y;
    v43.size.width = CGRectNull.size.width;
    v43.size.height = CGRectNull.size.height;
    if (!CGRectEqualToRect(v41, v43))
    {
      v21 = +[NSMutableArray array];
      [(CRLiOSCanvasViewController *)self p_buildMenuItems:v21 forSelectionPath:v4];
      [v5 setMenuItems:v21];
      [(CRLiOSCanvasViewController *)self p_targetRectForMenuControllerPositionForSelectionPath:v4];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      self->mTargetRectForContextMenuController.origin.x = v22;
      self->mTargetRectForContextMenuController.origin.y = v24;
      self->mTargetRectForContextMenuController.size.width = v26;
      self->mTargetRectForContextMenuController.size.height = v28;
      if (self->mContextMenuController)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10135E80C();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10135E820();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10135E8BC();
        }

        v30 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v30);
        }

        v31 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController showEditMenuForSelectionPath:]"];
        v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
        [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:1817 isFatal:0 description:"expected nil value for '%{public}s'", "mContextMenuController"];
      }

      v33 = [[CRLiOSContextMenuController alloc] initWithDelegate:self];
      mContextMenuController = self->mContextMenuController;
      self->mContextMenuController = v33;

      v35 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      v36 = [v35 infosForSelectionPath:v4];

      v37 = [NSSet setWithSet:v36];
      v38 = self->mContextMenuController;
      v39 = [(CRLiOSCanvasViewController *)self canvasView];
      [(CRLiOSContextMenuController *)v38 showContextMenuFromView:v39 rect:1 animated:v37 withChangeSources:v23, v25, v27, v29];

      self->mContextMenuMightBeDisplayed = 1;
    }
  }

LABEL_20:
}

- (CGRect)p_targetRectForMenuControllerPositionForSelectionPath:(id)a3
{
  v4 = a3;
  v5 = +[UIMenuController sharedMenuController];
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  [WeakRetained visibleBoundsRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(CRLiOSCanvasViewController *)self targetRectForEditMenu:v4];
  y = v53.origin.y;
  x = v53.origin.x;
  height = v53.size.height;
  width = v53.size.width;
  v43 = v12;
  v58.origin.x = v8;
  v46 = v14;
  v47 = v10;
  v58.origin.y = v10;
  v58.size.width = v12;
  v58.size.height = v14;
  v54 = CGRectIntersection(v53, v58);
  v15 = v54.origin.x;
  v16 = v54.origin.y;
  v17 = v54.size.width;
  v18 = v54.size.height;
  v19 = CGRectNull.origin.y;
  v21 = CGRectNull.size.width;
  v20 = CGRectNull.size.height;
  v59.origin.x = CGRectNull.origin.x;
  v59.origin.y = v19;
  v59.size.width = v21;
  v59.size.height = v20;
  v22 = CGRectEqualToRect(v54, v59);
  if (v22)
  {
    v18 = height;
    v23 = width;
  }

  else
  {
    v23 = v17;
  }

  if (v22)
  {
    v24 = y;
  }

  else
  {
    v24 = v16;
  }

  if (v22)
  {
    v15 = x;
  }

  v25 = v15;
  v26 = v24;
  v52 = v23;
  v27 = v18;
  v60.origin.x = CGRectNull.origin.x;
  v60.origin.y = v19;
  v60.size.width = v21;
  v60.size.height = v20;
  if (CGRectEqualToRect(*(&v23 - 2), v60))
  {
    v28 = v52;
  }

  else
  {
    v29 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v30 = [v29 infosForSelectionPath:v4];

    v31 = [v30 objectsPassingTest:&stru_10185A340];
    if ([v31 count] > 1)
    {
      v24 = v24 + v18 * 0.5;
    }

    [v5 setArrowDirection:{0, *&v43, *&v8}];
    if (v24 > v47 + 100.0 || v18 < v46 + -100.0)
    {
      v28 = v52;
    }

    else
    {
      v55.origin.x = v15;
      v55.origin.y = v24;
      v55.size.width = v52;
      v55.size.height = v18;
      v56.origin.x = CGRectGetMidX(v55);
      v15 = v56.origin.x;
      v56.origin.y = v24;
      v56.size.width = v52;
      v56.size.height = v18;
      MinY = CGRectGetMinY(v56);
      v35 = v44;
      v34 = v45;
      v36 = v47;
      v37 = v46;
      v38 = CGRectGetMinY(*&v34) + 6.0;
      if (MinY >= v38)
      {
        v24 = MinY;
      }

      else
      {
        v24 = v38;
      }

      v28 = CGSizeZero.width;
      v18 = CGSizeZero.height;
      [v5 setArrowDirection:1];
    }
  }

  v39 = v15;
  v40 = v24;
  v41 = v28;
  v42 = v18;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (void)p_buildMenuTitles:(id)a3 forSelectionPath:(id)a4
{
  v5 = a3;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Select Objects…" value:0 table:0];

  [v5 addObject:v7];
  v8 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v9 = [v8 canvasEditor];
  v10 = [v9 canvasEditorCanUngroupWithSender:0];

  v11 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v12 = [v11 canvasEditor];
  v13 = [v12 canvasEditorCanGroupWithSender:0];

  if (v13)
  {
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    v16 = @"GROUP_EDIT_MENU";
    v17 = @"Group";
  }

  else
  {
    if (!v10)
    {
      goto LABEL_6;
    }

    v14 = +[NSBundle mainBundle];
    v15 = v14;
    v16 = @"Ungroup";
    v17 = 0;
  }

  v18 = [v14 localizedStringForKey:v16 value:v17 table:0];

  [v5 addObject:v18];
LABEL_6:
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Unlock" value:0 table:0];

  v36 = v20;
  [v5 addObject:v20];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v21 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v22 = [v21 editorController];
  v23 = [v22 currentEditors];

  obj = v23;
  v24 = [v23 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v43;
    do
    {
      v27 = 0;
      do
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v42 + 1) + 8 * v27);
        if (objc_opt_respondsToSelector())
        {
          v29 = +[NSMutableArray array];
          [v28 addContextualMenuItemsToArray:v29];
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v30 = v29;
          v31 = [v30 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v39;
            do
            {
              v34 = 0;
              do
              {
                if (*v39 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = [*(*(&v38 + 1) + 8 * v34) title];
                [v5 addObject:v35];

                v34 = v34 + 1;
              }

              while (v32 != v34);
              v32 = [v30 countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v32);
          }
        }

        v27 = v27 + 1;
      }

      while (v27 != v25);
      v25 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v25);
  }
}

- (void)p_buildMenuItems:(id)a3 forSelectionPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Select Objects…" value:0 table:0];

  v10 = [[UIMenuItem alloc] initWithTitle:v9 action:"enterQuickSelectMode:"];
  [v6 addObject:v10];

  v11 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v49 = v7;
  v12 = [v11 infosForSelectionPath:v7];

  v13 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v14 = [v13 canvasEditor];
  v15 = [v14 canvasEditorCanUngroupWithSender:0];

  v16 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v17 = [v16 canvasEditor];
  v18 = [v17 canvasEditorCanGroupWithSender:0];

  if (v18)
  {
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"GROUP_EDIT_MENU" value:@"Group" table:0];
    v21 = &selRef_group_;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_6;
    }

    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Ungroup" value:0 table:0];
    v21 = &selRef_ungroup_;
  }

  v22 = [[UIMenuItem alloc] initWithTitle:v20 action:*v21];
  [v6 addObject:v22];

LABEL_6:
  v23 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v24 = [v23 canvasEditor];
  v25 = [v24 canvasEditorHelper];
  v26 = [v25 canvasEditorCanPerformShowMiniFormatterToExitDrawingModeActionWithSender:0];

  if (v26 == 1)
  {
    v27 = +[NSBundle mainBundle];
    v28 = [v27 localizedStringForKey:@"Edit" value:0 table:0];

    v29 = [[UIMenuItem alloc] initWithTitle:v28 action:"showMiniFormatterToExitDrawingMode:"];
    [v6 addObject:v29];
  }

  if ([v12 count] == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    v31 = [v12 anyObject];
    v32 = [WeakRetained repForInfo:v31];

    if ([v32 isLocked])
    {
      v33 = 0;
    }

    else
    {
      v34 = [v32 itemsToAddToEditMenu];
      [v6 addObjectsFromArray:v34];

      v33 = 1;
    }
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

  v35 = +[NSBundle mainBundle];
  v36 = [v35 localizedStringForKey:@"Unlock" value:0 table:0];

  v37 = [[UIMenuItem alloc] initWithTitle:v36 action:"unlock:"];
  [v6 addObject:v37];
  if (v33)
  {
    v38 = [(CRLiOSCanvasViewController *)self itemsToAddToEditMenuForRep:v32];
    v39 = v38;
    if (v38 && [v38 count])
    {
      [v6 addObjectsFromArray:v39];
    }
  }

  v48 = v32;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v40 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v41 = [v40 editorController];
  v42 = [v41 currentEditors];

  v43 = [v42 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v51;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v51 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v50 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v47 addContextualMenuItemsToArray:v6];
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v44);
  }
}

- (void)toggleEditMenuForCurrentSelection
{
  if (self->mContextMenuMightBeDisplayed)
  {

    [(CRLiOSCanvasViewController *)self hideEditMenu];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    v3 = [WeakRetained editorController];
    v4 = [v3 selectionPath];
    [(CRLiOSCanvasViewController *)self showEditMenuForSelectionPath:v4];
  }
}

- (void)toggleDefaultEditUIForCurrentSelection
{
  if (self->mContextMenuMightBeDisplayed)
  {

    [(CRLiOSCanvasViewController *)self hideEditMenu];
  }

  else
  {
    v3 = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
    v4 = [v3 isPresentingMiniFormatter];

    if (v4)
    {
      v9 = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
      [v9 dismissMiniFormatter];
    }

    else
    {
      v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      v6 = [v5 layerHost];
      v7 = [v6 asiOSCVC];
      v8 = [v7 isCurrentlyInQuickSelectMode];

      if ((v8 & 1) == 0)
      {

        [(CRLiOSCanvasViewController *)self showDefaultEditUIForCurrentSelection];
      }
    }
  }
}

- (void)showDefaultEditUIForCurrentSelection
{
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  v4 = [WeakRetained editorController];
  v10 = [v4 selectionPath];

  if ([(CRLiOSCanvasViewController *)self p_shouldShowMiniFormatterForSelectionPath:v10])
  {
    v5 = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
    [v5 presentMiniFormatterForSelectionPath:v10];

    goto LABEL_8;
  }

  v6 = [(CRLiOSCanvasViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(CRLiOSCanvasViewController *)self delegate];
    v8 = [v7 currentDocumentMode];
    v9 = [v8 wantsLegacyEditMenu];

    if (v9)
    {
      [(CRLiOSCanvasViewController *)self showEditMenuForSelectionPath:v10];
      goto LABEL_8;
    }
  }

  else
  {
  }

  [(CRLiOSCanvasViewController *)self showEditUIForSelectionPath:v10];
LABEL_8:
}

- (id)editMenuConfigrationForSelectionPath:(id)a3 withConfigurationIdentifier:(id)a4
{
  v9 = 0;
  v6 = a4;
  [(CRLiOSCanvasViewController *)self p_targetPointForEditMenuForSelectionPath:a3 outModifiedDirection:&v9];
  v7 = [UIEditMenuConfiguration configurationWithIdentifier:v6 sourcePoint:?];

  [v7 setPreferredArrowDirection:v9];

  return v7;
}

- (CGPoint)p_targetPointForEditMenuForSelectionPath:(id)a3 outModifiedDirection:(int64_t *)a4
{
  [(CRLiOSCanvasViewController *)self targetRectForEditMenu:a3];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = +[UIApplication sharedApplication];
  v15 = [v14 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v15))
  {
    v16 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    [v16 visibleBoundsRect];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v38.origin.x = v18;
    v38.origin.y = v20;
    v38.size.width = v22;
    v38.size.height = v24;
    v41.origin.x = v7;
    v41.origin.y = v9;
    v41.size.width = v11;
    v41.size.height = v13;
    v39 = CGRectIntersection(v38, v41);
    v34 = v13;
    v35 = v11;
    x = v39.origin.x;
    v36 = v7;
    y = v39.origin.y;
    width = v39.size.width;
    rect = v39.size.height;
    v39.origin.x = v18;
    v39.origin.y = v20;
    v39.size.width = v22;
    v39.size.height = v24;
    MaxY = CGRectGetMaxY(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v11 = v35;
    v7 = v36;
    v40.size.height = rect;
    v29 = MaxY - CGRectGetMaxY(v40);
    v30 = 2;
    if (v29 >= v9)
    {
      v30 = 1;
      v9 = v9 + v34;
    }

    *a4 = v30;
  }

  v31 = v7 + v11 * 0.5;
  v32 = v9;
  result.y = v32;
  result.x = v31;
  return result;
}

- (void)showEditUIForSelectionPath:(id)a3
{
  v5 = [(CRLiOSCanvasViewController *)self editMenuConfigrationForSelectionPath:a3 withConfigurationIdentifier:@"CRLDefault"];
  v4 = [(CRLiOSCanvasViewController *)self editMenuInteraction];
  [v4 presentEditMenuWithConfiguration:v5];
}

- (void)hideEditMenu
{
  v3 = [(CRLiOSCanvasViewController *)self editMenuInteraction];
  [v3 dismissMenu];

  v4 = +[UIMenuController sharedMenuController];
  [v4 hideMenu];

  self->mContextMenuMightBeDisplayed = 0;
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  v2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v3 = [v2 editingCoordinator];

  return v3;
}

- (void)contextMenuDidHideForContextMenuController:(id)a3
{
  mContextMenuController = self->mContextMenuController;
  if (mContextMenuController != a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135E8E4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135E8F8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135E988();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController contextMenuDidHideForContextMenuController:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:2084 isFatal:0 description:"Unexpected context menu controller closing!"];

    mContextMenuController = self->mContextMenuController;
  }

  [(CRLiOSContextMenuController *)mContextMenuController setDelegate:0];
  v8 = self->mContextMenuController;
  self->mContextMenuController = 0;

  v9 = +[UIMenuController sharedMenuController];
  [v9 setMenuItems:&__NSArray0__struct];
}

- (BOOL)contextMenuPositionShouldUpdateForContextMenuController:(id)a3
{
  if (self->mContextMenuController != a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135E9B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135E9C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135EA54();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController contextMenuPositionShouldUpdateForContextMenuController:]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:2093 isFatal:0 description:"Unexpected context menu controller updating!"];
  }

  v7 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v8 = [v7 editorController];
  v9 = [v8 selectionPath];
  [(CRLiOSCanvasViewController *)self p_targetRectForMenuControllerPositionForSelectionPath:v9];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v19.origin.x = v11;
  v19.origin.y = v13;
  v19.size.width = v15;
  v19.size.height = v17;
  return !CGRectEqualToRect(v19, self->mTargetRectForContextMenuController);
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ([(CRLiOSCanvasViewController *)self p_isAccessibilityTextResponderAction:a3])
  {
    v7 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v8 = [v7 textInputResponder];

    if (objc_opt_respondsToSelector())
    {
      goto LABEL_9;
    }
  }

  if (!sel_isEqual(a3, "find:"))
  {
    goto LABEL_8;
  }

  v9 = objc_opt_class();
  v10 = [(CRLiOSCanvasViewController *)self delegate];
  v8 = sub_100013F00(v9, v10);

  if (!v8 || ([v8 canPerformAction:a3 withSender:v6] & 1) == 0)
  {

LABEL_8:
    v12.receiver = self;
    v12.super_class = CRLiOSCanvasViewController;
    v8 = [(CRLiOSCanvasViewController *)&v12 targetForAction:a3 withSender:v6];
  }

LABEL_9:

  return v8;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (self->mHasBeenTornDown || [(CRLiOSCanvasViewController *)self p_currentModeIsFind])
  {
    v7 = 0;
  }

  else
  {
    v9 = "bringToFront:" == a3 || "sendToBack:" == a3;
    if (v9 && (objc_opt_self(), v10 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) != 0))
    {
      v7 = 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->mICC);
      v13 = [WeakRetained tmCoordinator];
      v14 = [v13 controllingTM];
      v15 = [v14 tracker];

      if (v15 && (objc_opt_respondsToSelector() & 1) != 0 && ([v15 disallowAllActionsWhileTracking] & 1) != 0)
      {
        v7 = 0;
      }

      else
      {
        v16 = objc_loadWeakRetained(&self->mICC);
        if ([v16 isInDynamicOperation])
        {
          v7 = 0;
        }

        else
        {
          v17 = objc_loadWeakRetained(&self->mICC);
          v7 = [v17 canPerformInteractiveAction:a3 withSender:v6];
        }
      }
    }
  }

  return v7;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 action];
  v6 = v5;
  if (v5 == "sendToBack:" || v5 == "bringToFront:")
  {
    v8 = [CRLiOSCanvasViewController canPerformAction:"canPerformAction:withSender:" withSender:?];
    v9 = [(CRLiOSCanvasViewController *)self canPerformAction:"bringToFront:" withSender:self];
    if ((v8 & 1) != 0 || v9)
    {
      if ([(CRLiOSCanvasViewController *)self canPerformAction:v6 withSender:self])
      {
        goto LABEL_12;
      }

      v10 = 1;
    }

    else
    {
      v10 = 4;
    }

    [v4 setAttributes:v10];
  }

LABEL_12:
  v11 = [(CRLiOSCanvasViewController *)self editorController];
  v12 = [v11 editorForEditAction:v6 withSender:v4];

  if (objc_opt_respondsToSelector())
  {
    [v12 updateStateForCommand:v4];
  }

  v13.receiver = self;
  v13.super_class = CRLiOSCanvasViewController;
  [(CRLiOSCanvasViewController *)&v13 validateCommand:v4];
}

- (void)setContextMenuMightBeDisplayed:(BOOL)a3
{
  if (!a3)
  {
    v5 = +[UIMenuController sharedMenuController];
    v6 = [v5 isMenuVisible];

    if (v6)
    {
      [(CRLiOSCanvasViewController *)self hideEditMenu];
    }
  }

  self->mContextMenuMightBeDisplayed = a3;
}

- (void)cut:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(CRLiOSCanvasViewController *)self hideEditMenu];
  }

  WeakRetained = objc_loadWeakRetained(&self->mICC);
  [WeakRetained makeEditorPerformAction:a2 withSender:v6];
}

- (void)showMiniFormatterToExitDrawingMode:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CRLiOSCanvasViewController *)self hideEditMenu];
  }

  WeakRetained = objc_loadWeakRetained(&self->mICC);
  v5 = [WeakRetained canvasEditor];
  v6 = [v5 canvasEditorHelper];
  [v6 showMiniFormatterToExitDrawingMode:v7];
}

- (void)unlock:(id)a3
{
  v5 = a3;
  v6 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  [v6 makeEditorPerformAction:a2 withSender:v5];

  objc_opt_class();
  LOBYTE(a2) = objc_opt_isKindOfClass();

  if (a2)
  {
    v9 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v7 = [v9 editorController];
    v8 = [v7 selectionPath];
    [(CRLiOSCanvasViewController *)self showEditMenuForSelectionPath:v8];
  }
}

- (void)forceStopScrolling
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135EA7C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135EA90();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135EB20();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController forceStopScrolling]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:2228 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v6 = [(CRLiOSCanvasViewController *)self canvasView];
  v7 = [v6 enclosingScrollView];

  if ([v7 isScrollEnabled])
  {
    v8 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v9 = [v8 currentlyScrolling];

    if (v9)
    {
      [v7 setScrollEnabled:0];
      [v7 setScrollEnabled:1];
      [v7 contentOffset];
      [v7 setContentOffset:0 animated:?];
    }
  }
}

- (void)scrollViewDidScroll
{
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isEasierConnectionLinesEnabled])
  {
    v3 = [(CRLiOSCanvasViewController *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(CRLiOSCanvasViewController *)self delegate];
      [v5 userDidInteractWithCanvas:self];
    }
  }
}

- (void)enterQuickSelectMode
{
  v3 = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
  v4 = [v3 isPresentingMiniFormatter];

  if ([(CRLiOSCanvasViewController *)self allowedToEnterQuickSelectMode]&& v4)
  {
    v5 = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
    [v5 dismissMiniFormatter];
  }

  if ([(CRLiOSCanvasViewController *)self isCurrentlyInQuickSelectMode]|| ![(CRLiOSCanvasViewController *)self allowedToEnterQuickSelectMode])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135EB48();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135EB5C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135EBEC();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v18);
    }

    v19 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController enterQuickSelectMode]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:2267 isFatal:0 description:"Attempting to enter Quick Select mode at an inappropriate time."];
  }

  else
  {
    v6 = [(CRLiOSCanvasViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CRLiOSCanvasViewController *)self delegate];
      [v8 willEnterQuickSelectModeForCanvasViewController:self];
    }

    [(CRLiOSCanvasViewController *)self beginPreventingDefaultPencilBehaviors];
    v9 = [[CRLiOSQuickSelectViewController alloc] initWithDelegate:self];
    mQuickSelectViewController = self->mQuickSelectViewController;
    self->mQuickSelectViewController = v9;

    v11 = [(CRLiOSCanvasViewController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(CRLiOSCanvasViewController *)self delegate];
      [v13 didEnterQuickSelectModeForCanvasViewController:self];
    }

    v14 = [(CRLiOSCanvasViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(CRLiOSCanvasViewController *)self delegate];
      v17 = [v16 quickSelectHUDParentViewForCanvasViewController:self];
    }

    else
    {
      v17 = 0;
    }

    v35 = v17;
    [(CRLiOSQuickSelectViewController *)self->mQuickSelectViewController presentOnCanvasViewController:self parentView:v17];
    v21 = [(CRLiOSCanvasViewController *)self canvasView];
    v20 = [v21 enclosingScrollView];

    v22 = [v20 panGestureRecognizer];
    self->mEnclosingScrollViewPanGestureMinimumTouchCountBeforeQuickSelect = [v22 minimumNumberOfTouches];

    v23 = [v20 panGestureRecognizer];
    [v23 setMinimumNumberOfTouches:2];

    self->mEditMenuTapGestureRecognizerEnabledBeforeQuickSelect = [(CRLiOSEditMenuTapGestureRecognizer *)self->mEditMenuTapGestureRecognizer isEnabled];
    [(CRLiOSEditMenuTapGestureRecognizer *)self->mEditMenuTapGestureRecognizer setEnabled:0];
    v24 = [(CRLiOSCanvasViewController *)self delegate];
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      v26 = [(CRLiOSCanvasViewController *)self delegate];
      [v26 updateToolbarButtons];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    v28 = [WeakRetained canvas];
    v29 = [v28 topLevelReps];

    v30 = [v29 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v37;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v37 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v36 + 1) + 8 * i);
          [v34 recursivelyPerformSelectorIfImplemented:"invalidateKnobs"];
          [v34 recursivelyPerformSelectorIfImplemented:"stopPlaybackIfNeeded"];
        }

        v31 = [v29 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v31);
    }

    v19 = v35;
  }
}

- (void)leaveQuickSelectModeIfNeeded
{
  if ([(CRLiOSCanvasViewController *)self isCurrentlyInQuickSelectMode])
  {

    [(CRLiOSCanvasViewController *)self p_leaveQuickSelectMode];
  }
}

- (CGRect)visibleCanvasRectForQuickSelectViewController:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  [v5 visibleScaledRectForCanvasUI];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(CRLiOSCanvasViewController *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(CRLiOSCanvasViewController *)self delegate];
    [v16 safeInsetsForTemporaryHUDsToAvoidViewsObscuringCanvasScrollViewForCanvasViewController:self];
    left = v17;
    bottom = v19;
    right = v21;
  }

  else
  {
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v23 = v7 + 0.0;
  v24 = v9 + 0.0;
  v25 = v13 - (bottom + 0.0);
  if (left >= right)
  {
    v26 = left;
  }

  else
  {
    v26 = right;
  }

  v27 = v7 + v26;
  v28 = v11 - (v26 + v26);
  if ([v4 isInCompactViewModeForCompactFrame:v23 andRegularSizeFrame:{v24, v11, v25, v27, v24, v28, v25}])
  {
    v27 = v23;
  }

  else
  {
    v11 = v28;
  }

  v29 = v27;
  v30 = v24;
  v31 = v11;
  v32 = v25;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (BOOL)allowedToEnterQuickSelectMode
{
  v3 = [(CRLiOSCanvasViewController *)self p_currentModeAllowsQuickSelect];
  if (v3)
  {

    LOBYTE(v3) = [(CRLiOSCanvasViewController *)self p_editorAllowsQuickSelect];
  }

  return v3;
}

- (BOOL)p_currentModeAllowsQuickSelect
{
  v3 = [(CRLiOSCanvasViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(CRLiOSCanvasViewController *)self delegate];
  v6 = [v5 currentDocumentMode];

  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135EC14();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135EC28();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135ECC4();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController p_currentModeAllowsQuickSelect]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:2367 isFatal:0 description:"invalid nil value for '%{public}s'", "currentMode"];
  }

  v10 = [v6 allowedToEnterQuickSelectModeForCanvasViewController:self];

  return v10;
}

- (BOOL)p_currentModeIsFind
{
  v3 = [(CRLiOSCanvasViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CRLiOSCanvasViewController *)self delegate];
    v6 = [v5 currentDocumentMode];

    if (!v6)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135ECEC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135ED00();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135ED9C();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v7);
      }

      v8 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController p_currentModeIsFind]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:2381 isFatal:0 description:"invalid nil value for '%{public}s'", "currentMode"];
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)p_editorAllowsQuickSelect
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v2 = [(CRLiOSCanvasViewController *)self editorController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100385E58;
  v4[3] = &unk_101840680;
  v4[4] = &v5;
  [v2 enumerateEditorsOnStackUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)p_leaveQuickSelectMode
{
  v3 = [(CRLiOSCanvasViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CRLiOSCanvasViewController *)self delegate];
    [v5 willLeaveQuickSelectModeForCanvasViewController:self];
  }

  [(CRLiOSQuickSelectViewController *)self->mQuickSelectViewController dismiss];
  v6 = [(CRLiOSCanvasViewController *)self canvasView];
  v7 = [v6 enclosingScrollView];

  mEnclosingScrollViewPanGestureMinimumTouchCountBeforeQuickSelect = self->mEnclosingScrollViewPanGestureMinimumTouchCountBeforeQuickSelect;
  v9 = [v7 panGestureRecognizer];
  [v9 setMinimumNumberOfTouches:mEnclosingScrollViewPanGestureMinimumTouchCountBeforeQuickSelect];

  [(CRLiOSEditMenuTapGestureRecognizer *)self->mEditMenuTapGestureRecognizer setEnabled:self->mEditMenuTapGestureRecognizerEnabledBeforeQuickSelect];
  mQuickSelectViewController = self->mQuickSelectViewController;
  self->mQuickSelectViewController = 0;

  v11 = [(CRLiOSCanvasViewController *)self delegate];
  LOBYTE(v9) = objc_opt_respondsToSelector();

  if (v9)
  {
    v12 = [(CRLiOSCanvasViewController *)self delegate];
    [v12 didLeaveQuickSelectModeForCanvasViewController:self];
  }

  v13 = [(CRLiOSCanvasViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(CRLiOSCanvasViewController *)self delegate];
    [v15 updateToolbarButtons];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  v17 = [WeakRetained canvas];
  v18 = [v17 topLevelReps];

  v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v23 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"invalidateKnobs"];
      }

      v20 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v20);
  }

  [(CRLiOSCanvasViewController *)self endPreventingDefaultPencilBehaviors];
}

- (CGRect)visibleScaledRectForCanvasUI
{
  v2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  [v2 visibleScaledRectForCanvasUI];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CRLEditorController)editorController
{
  v2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v3 = [v2 editorController];

  return v3;
}

- (void)didDismissQuickSelectViewController:(id)a3
{
  if (self->mQuickSelectViewController == a3)
  {
    v4 = [(CRLiOSCanvasViewController *)self shouldExitQuickSelectModeForQuickSelectViewController:?];
    [(CRLiOSCanvasViewController *)self leaveQuickSelectModeIfNeeded];
    if ((v4 & 1) == 0)
    {
      v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      v6 = [v5 editingDisabled];

      if ((v6 & 1) == 0)
      {
        v7 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
        v8 = [v7 selectionModelTranslator];
        v9 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
        v10 = [v9 editorController];
        v11 = [v10 selectionPath];
        v12 = [v8 boardItemsForSelectionPath:v11];
        v13 = [v12 count];

        if (v13)
        {

          [(CRLiOSCanvasViewController *)self showDefaultEditUIForCurrentSelection];
        }
      }
    }
  }
}

- (void)presentAlignmentTools
{
  if (!self->mAlignmentController)
  {
    v3 = [[_TtC8Freeform30CRLiOSAlignmentToolsController alloc] initWithDelegate:self];
    v4 = [(CRLiOSAlignmentToolsController *)v3 viewController];
    [(CRLiOSCanvasViewController *)self presentViewController:v4 animated:1 completion:0];

    mAlignmentController = self->mAlignmentController;
    self->mAlignmentController = v3;
  }
}

- (void)userDismissedAlignmentToolsController:(id)a3
{
  mAlignmentController = self->mAlignmentController;
  if (mAlignmentController != a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135EDC4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135EDD8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135EE94();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController userDismissedAlignmentToolsController:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:2479 isFatal:0 description:"expected equality between %{public}s and %{public}s", "alignmentController", "mAlignmentController"];

    mAlignmentController = self->mAlignmentController;
  }

  self->mAlignmentController = 0;
}

- (void)alignmentToolsControllerShouldDismiss:(id)a3
{
  v4 = a3;
  mAlignmentController = v4;
  if (self->mAlignmentController != v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135EEBC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135EED0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135EF8C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController alignmentToolsControllerShouldDismiss:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:2484 isFatal:0 description:"expected equality between %{public}s and %{public}s", "alignmentController", "mAlignmentController"];

    mAlignmentController = self->mAlignmentController;
  }

  if (mAlignmentController)
  {
    goto LABEL_21;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10135EFB4();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10135EFDC();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10135F078();
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v9);
  }

  v10 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController alignmentToolsControllerShouldDismiss:]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:2485 isFatal:0 description:"invalid nil value for '%{public}s'", "mAlignmentController"];

  if (self->mAlignmentController)
  {
LABEL_21:
    v12 = [(CRLiOSCanvasViewController *)self presentedViewController];
    v13 = [(CRLiOSAlignmentToolsController *)self->mAlignmentController viewController];

    if (v12 == v13)
    {
      [v12 dismissViewControllerAnimated:1 completion:0];
    }

    v14 = self->mAlignmentController;
    self->mAlignmentController = 0;
  }
}

- (BOOL)inRestrictedGestureMode
{
  v2 = [(CRLiOSCanvasViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 currentDocumentMode];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 wantsCanvasInRestrictedGestureMode];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)allowGestureInRestrictedGestureMode:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSCanvasViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 currentDocumentMode];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 allowGestureInRestrictedGestureMode:v4];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)inInspectorPanZoomMode
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->mDelegate);
  v6 = [v5 inInspectorPanZoomMode];

  return v6;
}

- (BOOL)inInspectorTextEditingMode
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->mDelegate);
  v6 = [v5 inInspectorTextEditingMode];

  return v6;
}

- (void)addInspectorPanZoomModeGRsToArray:(id)a3
{
  v7 = a3;
  v4 = [(CRLiOSCanvasViewController *)self zoomGestureRecognizer];
  [v7 addObject:v4];

  v5 = [(CRLiOSCanvasViewController *)self singleTapGestureRecognizer];
  [v7 addObject:v5];

  if ([(CRLiOSCanvasViewController *)self inMediaBrowsingMode])
  {
    v6 = [(CRLiOSCanvasViewController *)self knobDragGestureRecognizer];
    [v7 addObject:v6];
  }
}

- (BOOL)inMediaBrowsingMode
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = objc_loadWeakRetained(&self->mDelegate);
  v6 = [v5 inMediaBrowsingMode];

  return v6;
}

- (void)p_handlePencilDown:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  v6 = [(CRLiOSCanvasViewController *)self canvasView];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  [WeakRetained convertBoundsToUnscaledPoint:{v8, v10}];
  v12 = v11;
  v14 = v13;

  v15 = objc_loadWeakRetained(&self->mICC);
  v16 = [v15 freehandDrawingToolkit];
  v17 = [v16 freehandDrawingBehaviorForTouchType:2 atUnscaledPoint:{v12, v14}];

  if (v17 == 1)
  {
    v18 = objc_loadWeakRetained(&self->mICC);
    v19 = [v18 canvasEditor];
    v20 = +[NSSet set];
    v25 = [v19 selectionPathWithInfos:v20];

    v21 = objc_loadWeakRetained(&self->mICC);
    v22 = [v21 editorController];
    [v22 setSelectionPath:v25];

    v23 = objc_loadWeakRetained(&self->mICC);
    v24 = [v23 freehandDrawingToolkit];
    [v24 beginDrawingModeIfNeededForTouchType:2];
  }
}

- (void)p_handleSingleTapGesture:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v17 = sub_100014370(v5, v4);

  v6 = v17;
  if (v17)
  {
    v7 = [v17 state] == 4;
    v6 = v17;
    if (!v7)
    {
      v8 = objc_opt_class();
      v9 = [(CRLiOSCanvasViewController *)self presentedViewController];
      v10 = sub_100014370(v8, v9);

      if (v10 && ([v10 isBeingDismissed] & 1) == 0)
      {
        [v10 dismissScenesPopover];
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->mICC);
        [v17 firstTapLocation];
        [WeakRetained convertBoundsToUnscaledPoint:?];
        v13 = v12;
        v15 = v14;

        if (![(CRLiOSCanvasViewController *)self handleSingleTapAtPoint:v17 withRecognizer:v13, v15])
        {
          v16 = objc_loadWeakRetained(&self->mICC);
          [v16 tappedCanvasBackgroundAtPoint:sub_10042B6C0(objc_msgSend(v17 inputType:{"touchTypeForTap")), v13, v15}];
        }
      }

      v6 = v17;
    }
  }
}

- (void)p_zoomWithGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if (v5 == 3)
  {
    v9 = 0;
    v10 = 2;
  }

  else if (v5 == 2)
  {
    v9 = 1;
    v10 = 1;
  }

  else if (v5 == 1)
  {
    if (self->mCanvasZoomTracker)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135F0A0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135F0B4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135F150();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController p_zoomWithGesture:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:2618 isFatal:0 description:"expected nil value for '%{public}s'", "mCanvasZoomTracker"];
    }

    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 3;
  }

  if (!self->mCanvasZoomTracker)
  {
    v11 = [CRLCanvasZoomTracker alloc];
    v12 = [(CRLiOSCanvasViewController *)self canvasLayer];
    v13 = [(CRLCanvasZoomTracker *)v11 initWithCanvasLayer:v12];
    mCanvasZoomTracker = self->mCanvasZoomTracker;
    self->mCanvasZoomTracker = v13;

    [(CRLCanvasZoomTracker *)self->mCanvasZoomTracker setDelegate:self];
  }

  v15 = [(CRLiOSCanvasViewController *)self canvasView];
  v16 = [v15 superview];
  [v4 locationInView:v16];
  v18 = v17;
  v20 = v19;

  v21 = [(CRLiOSCanvasViewController *)self canvasView];
  v22 = [(CRLiOSCanvasViewController *)self canvasView];
  v23 = [v22 superview];
  [v21 convertPoint:v23 fromView:{v18, v20}];
  v25 = v24;
  v27 = v26;

  if (!v9 || [v4 numberOfTouches] == 2 || !objc_msgSend(v4, "numberOfTouches"))
  {
    v28 = self->mCanvasZoomTracker;
    [v4 scale];
    v30 = v29;
    [v4 velocity];
    [(CRLCanvasZoomTracker *)v28 zoomWithScale:v10 velocity:v30 locationInView:v31 phase:v25, v27];
  }
}

- (void)canvasZoomTracker:(id)a3 willBeginViewScaleFeedbackWithZoomMethod:(int64_t)a4
{
  v40 = [(CRLiOSCanvasViewController *)self canvasView];
  v6 = self->mZoomGestureRecognizer;
  v7 = v6;
  self->mCanvasZoomMethod = a4;
  if (a4 || [(CRLiOSCanvasZoomPinchGestureRecognizer *)v6 numberOfTouches]!= 2)
  {
    v16 = [v40 enclosingScrollView];
    [v16 center];
    v18 = v17;
    v20 = v19 + -120.0;
    v21 = [v16 superview];
    [v21 convertPoint:v40 toView:{v18, v20}];
    v13 = v22;
    v15 = v23;

    v11 = v15;
    v9 = v13;
  }

  else
  {
    [(CRLiOSCanvasZoomPinchGestureRecognizer *)v7 locationOfTouch:0 inView:v40];
    v9 = v8;
    v11 = v10;
    [(CRLiOSCanvasZoomPinchGestureRecognizer *)v7 locationOfTouch:1 inView:v40];
    v13 = v12;
    v15 = v14;
  }

  v24 = sub_10011F334(v9, v11, v13);
  v26 = sub_10011F340(v24, v25, 0.5);
  v28 = v27;
  if (vabdd_f64(v9, v13) >= 40.0)
  {
    if (v9 >= v13)
    {
      v29 = v9;
    }

    else
    {
      v29 = v13;
    }

    if (v9 >= v13)
    {
      v30 = v11;
    }

    else
    {
      v30 = v15;
    }

    if (v9 >= v13)
    {
      v31 = v13;
    }

    else
    {
      v31 = v9;
    }

    v32 = sub_10011F31C(v29, v30, v31);
    v34 = sub_1001208D0(v32, v33);
    v35 = sub_100120F98(v34 + -1.57079633);
    v37 = sub_10011F340(v35, v36, 120.0);
    v26 = sub_10011F334(v26, v28, v37);
    v28 = v38;
  }

  self->mLastZoomHUDLocation.x = sub_100122154(v26, v28);
  self->mLastZoomHUDLocation.y = v39;
}

- (void)canvasZoomTracker:(id)a3 willUpdateViewScaleFeedbackWithScale:(double)a4
{
  v19 = [(CRLiOSCanvasViewController *)self canvasLayer];
  [v19 minimumPinchViewScale];
  v7 = v6;
  [v19 maximumPinchViewScale];
  v9 = sub_1004C3240(a4, v7, v8);
  v10 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v11 = [v10 i_descriptionForViewScale:self->mCanvasZoomMethod zoomMethod:v9];

  v12 = [(CRLiOSCanvasViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [(CRLiOSCanvasViewController *)self delegate];
    v14 = [v13 allowsZoomHUD] ^ 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v11 length];
  v16 = +[CRLCanvasHUDController sharedHUDController];
  v17 = v16;
  if (!v15 || (v14 & 1) != 0)
  {
    [v16 hideHUDForKey:self];
  }

  else
  {
    [v16 setLabelText:v11];

    v17 = +[CRLCanvasHUDController sharedHUDController];
    v18 = [(CRLiOSCanvasViewController *)self canvasView];
    [v17 showHUDForKey:self forTouchPoint:v18 inCanvasView:1 withUpwardsNudge:self->mLastZoomHUDLocation.x size:{self->mLastZoomHUDLocation.y, 0.0}];
  }
}

- (void)canvasZoomTrackerDidEndViewScaleFeedback:(id)a3
{
  v4 = +[CRLCanvasHUDController sharedHUDController];
  [v4 hideHUDForKey:self];
}

- (CGRect)rectToIncludeWhenGrowingCanvasToFitContent
{
  mCanvasZoomTracker = self->mCanvasZoomTracker;
  if (mCanvasZoomTracker)
  {
    [(CRLCanvasZoomTracker *)mCanvasZoomTracker visibleUnscaledBoundsAtEndOfZoom];
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)canvasZoomTrackerWillBeginFinalZoomAnimation:(id)a3
{
  v4 = [(CRLiOSCanvasViewController *)self crl_windowWrapper];
  v5 = [v4 newWrapperBeginningIgnoringUserInteractionSafely];

  [(CRLiOSCanvasViewController *)self setZoomTrackerIgnoreInteractionEventsSafeWrapper:v5];
}

- (void)canvasZoomTrackerDidEndFinalZoomAnimation:(id)a3
{
  v4 = [(CRLiOSCanvasViewController *)self zoomTrackerIgnoreInteractionEventsSafeWrapper];
  [v4 endIgnoringUserInteractionSafely];

  [(CRLiOSCanvasViewController *)self setZoomTrackerIgnoreInteractionEventsSafeWrapper:0];
}

- (void)canvasZoomTrackerDidFinish:(id)a3
{
  [(CRLCanvasZoomTracker *)self->mCanvasZoomTracker setDelegate:0];
  mCanvasZoomTracker = self->mCanvasZoomTracker;
  self->mCanvasZoomTracker = 0;
}

- (id)p_willPresentError:(id)a3
{
  v3 = a3;
  v4 = [v3 localizedRecoveryOptions];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v3 recoveryAttempter];
    if (!v6 || (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v7 = [v3 userInfo];
      v8 = [v7 mutableCopy];

      [v8 removeObjectForKey:NSLocalizedRecoverySuggestionErrorKey];
      [v8 removeObjectForKey:NSLocalizedRecoveryOptionsErrorKey];
      [v8 removeObjectForKey:NSRecoveryAttempterErrorKey];
      v9 = [v3 domain];
      v10 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v9, [v3 code], v8);

      v3 = v10;
    }
  }

  return v3;
}

- (void)presentError:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(CRLiOSCanvasViewController *)self p_willPresentError:a3];
  v8 = [_TtC8Freeform32CRLSelectionAwareAlertController crl_alertControllerWithError:v7 preferredStyle:1 completion:v6];

  if (qword_101AD5A28 != -1)
  {
    sub_10135F178();
  }

  v9 = off_1019EDA80;
  if (os_log_type_enabled(off_1019EDA80, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v8 title];
    v12 = [v8 message];
    *buf = 138412546;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "title: %@, message: %@", buf, 0x16u);
  }

  v13 = [(CRLiOSCanvasViewController *)self presentedViewController];
  v14 = [v13 isBeingDismissed];
  if (!v13 || (v14 & 1) != 0)
  {
    [(CRLiOSCanvasViewController *)self presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100387BC8;
    v15[3] = &unk_10183AE28;
    v15[4] = self;
    v16 = v8;
    [(CRLiOSCanvasViewController *)self dismissViewControllerAnimated:1 completion:v15];
  }
}

- (void)presentErrors:(id)a3 withLocalizedDescription:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] == 1)
  {
    v11 = [v8 firstObject];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100387E0C;
    v20[3] = &unk_10183D168;
    v12 = &v21;
    v21 = v10;
    v13 = [_TtC8Freeform32CRLSelectionAwareAlertController crl_alertControllerWithError:v11 preferredStyle:1 completion:v20];
  }

  else
  {
    v13 = [_TtC8Freeform32CRLSelectionAwareAlertController alertControllerWithTitle:v9 message:0 preferredStyle:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100387E24;
    v18[3] = &unk_101840470;
    v12 = &v19;
    v19 = v10;
    [v13 crl_addSimpleOKButtonWithHandler:v18];
  }

  v14 = [(CRLiOSCanvasViewController *)self presentedViewController];
  v15 = v14;
  if (v14 && ([v14 isBeingDismissed] & 1) == 0)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100387E3C;
    v16[3] = &unk_10183AE28;
    v16[4] = self;
    v17 = v13;
    [(CRLiOSCanvasViewController *)self dismissViewControllerAnimated:1 completion:v16];
  }

  else
  {
    [(CRLiOSCanvasViewController *)self presentViewController:v13 animated:1 completion:0];
  }
}

- (id)beginModalOperationWithLocalizedMessage:(id)a3 progress:(id)a4 cancelHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135F18C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135F1A0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135F230();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController beginModalOperationWithLocalizedMessage:progress:cancelHandler:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:2814 isFatal:0 description:"Modal operations must be started on the main thread, "];
  }

  v14 = [(CRLiOSCanvasViewController *)self userDialogPresenter];
  if (!v14)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135F258();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135F280();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135F31C();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController beginModalOperationWithLocalizedMessage:progress:cancelHandler:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:2818 isFatal:0 description:"invalid nil value for '%{public}s'", "modalOperationPresenter"];
  }

  v18 = [v14 beginModalOperationWithLocalizedMessage:v8 progress:v9 cancelHandler:v10];

  return v18;
}

- (id)beginModalOperationWithPresentedLocalizedMessage:(id)a3 progress:(id)a4 cancelHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135F344();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135F358();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135F3E8();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController beginModalOperationWithPresentedLocalizedMessage:progress:cancelHandler:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:2825 isFatal:0 description:"Modal operations must be started on the main thread, "];
  }

  v14 = [(CRLiOSCanvasViewController *)self userDialogPresenter];
  if (!v14)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135F410();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135F438();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135F4D4();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController beginModalOperationWithPresentedLocalizedMessage:progress:cancelHandler:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:2829 isFatal:0 description:"invalid nil value for '%{public}s'", "modalOperationPresenter"];
  }

  v18 = [v14 beginModalOperationWithPresentedLocalizedMessage:v8 progress:v9 cancelHandler:v10];

  return v18;
}

- (void)endModalOperationWithToken:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135F4FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135F510();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135F5A0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController endModalOperationWithToken:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:2835 isFatal:0 description:"Modal operations must be ended on the main thread, "];
  }

  v8 = [(CRLiOSCanvasViewController *)self userDialogPresenter];
  if (!v8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135F5C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135F5F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135F68C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController endModalOperationWithToken:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:2839 isFatal:0 description:"invalid nil value for '%{public}s'", "modalOperationPresenter"];
  }

  [v8 endModalOperationWithToken:v4];
}

- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)a3 forMediaType:(int64_t)a4 forSingleMediaObject:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = [(CRLiOSCanvasViewController *)self userDialogPresenter];
  [v11 presentMediaCompatibilityAlertWithReasons:a3 forMediaType:a4 forSingleMediaObject:v6 completionHandler:v10];
}

- (void)didSetDocumentToMode:(id)a3 fromMode:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 knobValidatorBlock];
  v10 = [(CRLiOSCanvasViewController *)self knobDragGestureRecognizer];
  [v10 setKnobValidatorBlock:v9];

  if ([v7 wantsToSuppressMiniFormatter] && (objc_msgSend(v8, "wantsToSuppressMiniFormatter") & 1) == 0)
  {
    v11 = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
    [v11 dismissMiniFormatter];
    goto LABEL_7;
  }

  if (([v7 wantsToSuppressMiniFormatter] & 1) == 0 && objc_msgSend(v8, "wantsToSuppressMiniFormatter"))
  {
    v11 = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
    v12 = [(CRLiOSCanvasViewController *)self editorController];
    v13 = [v12 selectionPath];
    [v11 presentMiniFormatterForSelectionPath:v13];

LABEL_7:
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v15 = [v14 canvas];
  v16 = [v15 topLevelReps];

  v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v23 + 1) + 8 * i) recursivelyPerformSelector:"documentModeDidChange"];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  v21 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v22 = [v21 drawingIntelligenceProvider];
  [v22 documentModeDidChange];
}

- (_TtC8Freeform28CRLiOSMiniFormatterPresenter)miniFormatterPresenter
{
  miniFormatterPresenter = self->_miniFormatterPresenter;
  if (!miniFormatterPresenter)
  {
    if (self->mHasBeenTornDown)
    {
      miniFormatterPresenter = 0;
    }

    else
    {
      v4 = [_TtC8Freeform28CRLiOSMiniFormatterPresenter alloc];
      v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      v6 = [v5 editorController];
      v7 = [(CRLiOSMiniFormatterPresenter *)v4 initWithEditorController:v6 canvasLayerHosting:self];
      v8 = self->_miniFormatterPresenter;
      self->_miniFormatterPresenter = v7;

      miniFormatterPresenter = self->_miniFormatterPresenter;
    }
  }

  return miniFormatterPresenter;
}

- (void)updateToolbarButtons
{
  v3 = [(CRLiOSCanvasViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CRLiOSCanvasViewController *)self delegate];
    [v5 updateToolbarButtons];
  }
}

- (BOOL)p_shouldShowMiniFormatterForSelectionPath:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v6 = [v5 documentIsSharedReadOnly];

  if (v6 & 1) != 0 || (-[CRLiOSCanvasViewController interactiveCanvasController](self, "interactiveCanvasController"), v7 = objc_claimAutoreleasedReturnValue(), [v7 layerHost], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "asiOSCVC"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isCurrentlyInQuickSelectMode"), v9, v8, v7, (v10))
  {
    v11 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    v13 = [WeakRetained selectionModelTranslator];
    v14 = [v13 boardItemsForSelectionPath:v4];

    v11 = [v14 count] != 0;
  }

  return v11;
}

- (CRLiOSPencilMediating)pencilMediator
{
  mPencilMediator = self->mPencilMediator;
  if (!mPencilMediator)
  {
    v4 = [_TtC8Freeform20CRLiOSPencilMediator alloc];
    v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v6 = [(CRLiOSPencilMediator *)v4 initWithInteractiveCanvasController:v5];
    v7 = self->mPencilMediator;
    self->mPencilMediator = v6;

    mPencilMediator = self->mPencilMediator;
  }

  return mPencilMediator;
}

- (BOOL)shouldSelectAndScrollWithApplePencil
{
  v2 = [(CRLiOSCanvasViewController *)self delegate];
  if (!v2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135F6B4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135F6C8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135F764();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController shouldSelectAndScrollWithApplePencil]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:2918 isFatal:0 description:"invalid nil value for '%{public}s'", "delegate"];
  }

  v6 = [v2 shouldSelectAndScrollWithApplePencil];

  return v6;
}

- (void)endPreventingDefaultPencilBehaviors
{
  if (!atomic_fetch_add(&self->mPreventStandardPencilBehaviorsCounter, 0xFFFFFFFF))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135F78C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135F7A0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135F830();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController endPreventingDefaultPencilBehaviors]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:2933 isFatal:0 description:"Uneven calls to begin/endPreventingDefaultPencilBehaviors!"];

    atomic_fetch_add(&self->mPreventStandardPencilBehaviorsCounter, 1u);
  }
}

- (BOOL)isShowingRadialPalette
{
  v2 = [(CRLiOSCanvasViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 windowScene];

  if (v4)
  {
    v5 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:v4];
    v6 = [v5 _paletteViewVisible];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UICanvasFeedbackGenerator)feedbackGenerator
{
  mFeedbackGenerator = self->mFeedbackGenerator;
  if (mFeedbackGenerator)
  {
    v3 = mFeedbackGenerator;
  }

  else
  {
    v5 = [(CRLiOSCanvasViewController *)self canvasView];
    if (!v5)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135F858();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135F86C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135F908();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController feedbackGenerator]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:2960 isFatal:0 description:"invalid nil value for '%{public}s'", "canvasView"];
    }

    v9 = [UICanvasFeedbackGenerator feedbackGeneratorForView:v5];
    v10 = self->mFeedbackGenerator;
    self->mFeedbackGenerator = v9;

    v3 = self->mFeedbackGenerator;
  }

  return v3;
}

- (void)i_startObservingFreehandDrawingToolkit
{
  v4 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v3 = [v4 freehandDrawingToolkit];
  [v3 addToolkitObserver:self];
}

- (BOOL)isHandlingScribbleWriting
{
  v3 = [(CRLiOSCanvasViewController *)self scribbleInteraction];
  if ([v3 isHandlingWriting])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CRLiOSCanvasViewController *)self directScribbleInteraction];
    v4 = [v5 isHandlingWriting];
  }

  return v4;
}

- (UITextInput)currentEditingTextInputResponder
{
  v2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v3 = [v2 textInputResponder];
  v4 = [v3 editor];
  v5 = objc_opt_class();
  v11 = sub_100303920(v4, v5, 1, v6, v7, v8, v9, v10, &OBJC_PROTOCOL___CRLEditor);

  if (v11)
  {
    v12 = objc_opt_class();
    v13 = [v2 editorController];
    v14 = [v13 selectionForEditor:v11];
    v15 = sub_100014370(v12, v14);

    if (v15 && [v15 range] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v3;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)p_scribblePreventedRegardlessOfPoint
{
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  if ([v3 editingDisabled] & 1) != 0 || (objc_msgSend(v3, "isInDynamicOperation"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [(CRLiOSCanvasViewController *)self shouldPreventDefaultPencilBehaviors];
  }

  return v4;
}

- (BOOL)shouldBeginScribblingAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(CRLiOSCanvasViewController *)self p_scribblePreventedRegardlessOfPoint])
  {
    v7 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    [v7 convertBoundsToUnscaledPoint:{x, y}];
    v9 = v8;
    v11 = v10;
    v12 = [(CRLiOSCanvasViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(CRLiOSCanvasViewController *)self delegate];
      v15 = [v14 currentDocumentMode];
      v16 = [v15 pencilModeType];

      if (v16 == 1)
      {
        goto LABEL_9;
      }

      if (v16 == 2)
      {
LABEL_7:
        v19 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
        v20 = [v19 hitKnobAtPoint:2 inputType:0 returningRep:{v9, v11}];

        if ([v20 worksWithStylus])
        {
          v6 = 0;
        }

        else
        {
          v21 = [v7 hitRep:{v9, v11}];
          v22 = v21;
          if (v21 && ([v21 convertNaturalPointFromUnscaledCanvas:{v9, v11}], !objc_msgSend(v22, "shouldBeginScribbleAtPoint:")))
          {
            v6 = 0;
          }

          else if ([(CRLiOSCanvasViewController *)self touchHitsCanvasViewAtPoint:x, y])
          {
            v6 = 1;
          }

          else
          {
            v6 = [(CRLiOSCanvasViewController *)self allowTouchOutsideCanvasViewAtPoint:0 forGesture:x, y];
          }
        }

        goto LABEL_18;
      }
    }

    v17 = [(CRLiOSCanvasViewController *)self pencilMediator];
    v18 = [v17 pencilBehaviorOutsideModesAtUnscaledPoint:{v9, v11}];

    if (v18 == 2)
    {
      goto LABEL_7;
    }

LABEL_9:
    v6 = 0;
LABEL_18:

    return v6;
  }

  return 0;
}

- (id)containedScribbleElementForContainerScribbleElement:(id)a3
{
  v8 = sub_1003035DC(a3, 1, a3, v3, v4, v5, v6, v7, &OBJC_PROTOCOL___CRLWPContainerTextEditingRep);
  v9 = v8;
  if (v8)
  {
    v10 = [v8 containedRep];
    v11 = [v10 scribbleCapableElements];
    v12 = [v11 lastObject];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)scribbleCapableElementsForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(CRLiOSCanvasViewController *)self p_scribblePreventedRegardlessOfPoint])
  {
    v8 = &__NSArray0__struct;
  }

  else
  {
    v9 = objc_alloc_init(NSMutableArray);
    v10 = [(CRLiOSCanvasViewController *)self p_allRepsForHitTestingOrdered];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v18 = v11;
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v10);
          }

          v21 = *(*(&v24 + 1) + 8 * i);
          v22 = sub_1003035DC(v21, 1, v12, v13, v14, v15, v16, v17, &OBJC_PROTOCOL___CRLiOSScribbleElementProvider);
          if (v22 && ([v21 isLocked] & 1) == 0 && -[CRLiOSCanvasViewController shouldIncludeObjectInScribbleCapableElements:](self, "shouldIncludeObjectInScribbleCapableElements:", v22))
          {
            [v9 addObject:v22];
          }
        }

        v18 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v18);
    }

    v8 = [(CRLiOSCanvasViewController *)self _scribbleCapableElementsForReps:v9 forRect:x, y, width, height];
  }

  return v8;
}

- (id)p_allRepsForHitTestingOrdered
{
  v2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v3 = [v2 canvas];
  v4 = [v3 topLevelReps];
  v5 = [v4 mutableCopy];

  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v5 objectAtIndexedSubscript:v6];
      v8 = [v7 childRepsForHitTesting];

      v9 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", ++v6, [v8 count]);
      [v5 insertObjects:v8 atIndexes:v9];
    }

    while (v6 < [v5 count]);
  }

  v10 = [v5 copy];

  return v10;
}

- (BOOL)shouldIncludeObjectInScribbleCapableElements:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);

  v12 = sub_1003035DC(v5, 1, v6, v7, v8, v9, v10, v11, &OBJC_PROTOCOL___CRLWPContainerTextEditingRep);
  v13 = [v5 parentRep];
  v20 = sub_1003035DC(v13, 1, v14, v15, v16, v17, v18, v19, &OBJC_PROTOCOL___CRLWPContainerTextEditingRep);

  if (v20)
  {
    v21 = v12 == 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = !v21;

  return v22;
}

- (id)scribbleCapableElementWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(CRLiOSCanvasViewController *)self p_scribblePreventedRegardlessOfPoint])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v7 = [v6 canvas];
    v8 = [v7 allRepsOrdered];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v10)
    {
      v17 = v10;
      v18 = *v41;
      v19 = &off_1018DC000;
      v33 = *v41;
      v34 = v9;
      while (2)
      {
        v20 = 0;
        v35 = v17;
        do
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v9);
          }

          v21 = sub_1003035DC(*(*(&v40 + 1) + 8 * v20), 1, v11, v12, v13, v14, v15, v16, v19[417]);
          if (v21)
          {
            v22 = v21;
            if (objc_opt_respondsToSelector())
            {
              v23 = [v22 scribbleCapableElementWithIdentifier:v4];
              if (v23)
              {
                goto LABEL_28;
              }
            }

            else
            {
              v24 = [v22 scribbleCapableElements];
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v25 = v24;
              v23 = [v25 countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v23)
              {
                v26 = *v37;
                while (2)
                {
                  for (i = 0; i != v23; i = i + 1)
                  {
                    if (*v37 != v26)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v28 = *(*(&v36 + 1) + 8 * i);
                    v29 = [v28 scribbleIdentifier];
                    v30 = [v29 isEqual:v4];

                    if (v30)
                    {
                      v23 = v28;
                      goto LABEL_22;
                    }
                  }

                  v23 = [v25 countByEnumeratingWithState:&v36 objects:v44 count:16];
                  if (v23)
                  {
                    continue;
                  }

                  break;
                }

LABEL_22:
                v18 = v33;
                v9 = v34;
                v19 = &off_1018DC000;
                v17 = v35;
              }

              if (v23)
              {
LABEL_28:
                v31 = v23;

                v5 = v31;
                goto LABEL_29;
              }
            }
          }

          v20 = v20 + 1;
        }

        while (v20 != v17);
        v17 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
    v31 = v9;
LABEL_29:
  }

  return v5;
}

- (id)_scribbleCapableElementsForReps:(id)a3 forRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v9 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v14 scribbleCapableElementsForRect:{x, y, width, height}];
          [v9 crl_addObjectsFromNonNilArray:v15];
        }

        else
        {
          v15 = [v14 scribbleCapableElements];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v24;
            do
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v24 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v23 + 1) + 8 * j);
                [v20 scaledScribbleEditingFrame];
                v35.origin.x = x;
                v35.origin.y = y;
                v35.size.width = width;
                v35.size.height = height;
                if (CGRectIntersectsRect(v34, v35))
                {
                  [v9 crl_addNonNilObject:v20];
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v17);
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  return v9;
}

- (void)scribbleInteractionWillBeginWritingScribbleElementWillBeInserted:(BOOL)a3
{
  v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v6 = [v5 textInputResponder];
  [v6 scribbleWillBegin];

  if (!a3)
  {

    [(CRLiOSCanvasViewController *)self p_schedulePreventInsertScribbleElementTimer];
  }
}

- (void)scribbleInteractionDidFinishWriting
{
  [(CRLiOSCanvasViewController *)self p_schedulePreventInsertScribbleElementTimer];
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v4 = [v3 textInputResponder];
  [v4 reloadInputViews];

  if (![(CRLiOSCanvasViewController *)self wantsSystemInputAssistantForScribble])
  {
    v5 = [(CRLiOSCanvasViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(CRLiOSCanvasViewController *)self delegate];
      [v7 beginHandwritingModeIfNeeded];
    }

    v8 = [(CRLiOSCanvasViewController *)self pencilMediator];
    if (!v8)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135F930();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135F944();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135F9E0();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController scribbleInteractionDidFinishWriting]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:3226 isFatal:0 description:"invalid nil value for '%{public}s'", "pencilMediator"];
    }

    [v8 markPencilUsedForMode:2];
    v12 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v13 = [v12 textInputResponder];
    [v13 scribbleDidEnd];
  }
}

- (void)p_schedulePreventInsertScribbleElementTimer
{
  v3 = [(CRLiOSCanvasViewController *)self preventInsertScribbleElementTimer];
  [v3 invalidate];

  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_10038A724;
  v8 = &unk_10185A888;
  objc_copyWeak(&v9, &location);
  v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v5 block:2.5];
  [(CRLiOSCanvasViewController *)self setPreventInsertScribbleElementTimer:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (CGRect)rectForInsertingScribbleElements
{
  v2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  [v2 visibleBoundsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)canInsertScribbleElementAtPoint:(CGPoint)a3
{
  v4 = [(CRLiOSCanvasViewController *)self shouldBeginScribblingAtPoint:a3.x, a3.y];
  if (v4)
  {
    v5 = [(CRLiOSCanvasViewController *)self preventInsertScribbleElementTimer];

    LOBYTE(v4) = v5 == 0;
  }

  return v4;
}

- (id)insertedScribbleElementAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(CRLiOSCanvasViewController *)self canInsertScribbleElementAtPoint:?])
  {
    v6 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    [v6 convertBoundsToUnscaledPoint:{x, y}];
    v8 = v7;
    v10 = v9;
    v11 = objc_opt_class();
    v12 = [(CRLiOSCanvasViewController *)self insertTextBoxForScribbleAtUnscaledCanvasPoint:v8, v10];
    v13 = sub_100014370(v11, v12);

    v14 = [v13 scribbleCapableElements];
    v15 = [v14 firstObject];

    v16 = [v15 scribbleEditingBlock];

    if (v16)
    {
      v17 = [v15 scribbleEditingBlock];
      v17[2](v17, 0, v8, v10);
    }

    [(CRLiOSCanvasViewController *)self p_schedulePreventInsertScribbleElementTimer];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)insertTextBoxForScribbleAtUnscaledCanvasPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v6 = [v5 commandController];
  [v6 openGroup];
  [v6 enableProgressiveEnqueuingInCurrentGroup];
  v7 = [v5 editingCoordinator];
  v8 = [v7 boardItemFactory];
  v9 = [v8 makeShapeItemWithShapeType:0];

  v10 = [CRLInsertionContext dragInsertionContextWithPreferredCenter:1 required:0 fromDragToInsertController:0 insertFloating:0 targetZOrder:x, y];
  v11 = [v5 canvasEditor];
  v46 = v9;
  v12 = [NSArray arrayWithObjects:&v46 count:1];
  [v11 prepareGeometryForInsertingBoardItems:v12 withInsertionContext:v10];

  v13 = [v5 canvasEditor];
  v45 = v9;
  v14 = [NSArray arrayWithObjects:&v45 count:1];
  v39 = v10;
  [v13 insertBoardItems:v14 withInsertionContext:v10 postProcessBlock:0];

  v15 = objc_opt_class();
  v16 = sub_100013F00(v15, v9);
  v17 = [v16 text];
  if (v17)
  {
    v18 = [_TtC8Freeform23CRLWPReplaceTextCommand alloc];
    v19 = [v17 range];
    v21 = [(CRLWPReplaceTextCommand *)v18 initWithShapeItem:v16 range:v19 text:v20, &stru_1018BCA28];
    [v6 enqueueCommand:v21];
  }

  v38 = v16;
  [v6 closeGroup];
  v22 = [v5 canvas];
  [v22 layoutInvalidated];

  [v5 layoutIfNeeded];
  v23 = [v5 canvas];
  v24 = [v23 allRepsOrdered];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = v24;
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
LABEL_5:
    v29 = 0;
    while (1)
    {
      if (*v41 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v40 + 1) + 8 * v29);
      v31 = [v30 info];

      if (v31 == v9)
      {
        break;
      }

      if (v27 == ++v29)
      {
        v27 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v27)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v32 = objc_opt_class();
    v33 = sub_100014370(v32, v30);

    if (v33)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_11:
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10135FA08();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10135FA30();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10135FACC();
  }

  v34 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v34);
  }

  v35 = [NSString stringWithUTF8String:"[CRLiOSCanvasViewController insertTextBoxForScribbleAtUnscaledCanvasPoint:]"];
  v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
  [CRLAssertionHandler handleFailureInFunction:v35 file:v36 lineNumber:3313 isFatal:0 description:"invalid nil value for '%{public}s'", "result"];

  v33 = 0;
LABEL_22:

  return v33;
}

- (void)insertStencilFromLibrary:(id)a3
{
  v4 = objc_opt_new();
  [(CRLiOSCanvasViewController *)self p_presentStencilLibraryWithBoardItemsToSave:v4];
}

- (void)saveSelectedBoardItemsAsStencil:(id)a3
{
  v8 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v4 = [v8 selectionModelTranslator];
  v5 = [v8 editorController];
  v6 = [v5 selectionPath];
  v7 = [v4 unlockedBoardItemsForSelectionPath:v6];

  [(CRLiOSCanvasViewController *)self p_presentStencilLibraryWithBoardItemsToSave:v7];
}

- (void)p_presentStencilLibraryWithBoardItemsToSave:(id)a3
{
  v4 = a3;
  v5 = [_TtC8Freeform34CRLiOSStencilLibraryViewController alloc];
  v6 = [(CRLiOSCanvasViewController *)self editingCoordinator];
  v7 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v8 = [(CRLiOSStencilLibraryViewController *)v5 initWithEditingCoordinator:v6 interactiveCanvasController:v7 boardItemsToSave:v4];

  [(CRLiOSStencilLibraryViewController *)v8 setModalPresentationStyle:2];
  [(CRLiOSStencilLibraryViewController *)v8 setModalInPresentation:1];
  [(CRLiOSCanvasViewController *)self presentViewController:v8 animated:1 completion:&stru_10185A8E8];
}

- (CRLCanvasImageHUDController)imageHUDController
{
  mImageHUDOnce = self->mImageHUDOnce;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10038B104;
  v5[3] = &unk_10183AB38;
  v5[4] = self;
  [(CRLOnce *)mImageHUDOnce performBlockOnce:v5];
  return self->mImageHUDController;
}

- (BOOL)preserveEditorSelection
{
  v3 = objc_opt_class();
  v4 = [(CRLiOSCanvasViewController *)self delegate];
  v5 = sub_100014370(v3, v4);

  v6 = [v5 presentedViewController];
  if (!v6)
  {
    v10 = [(CRLiOSCanvasViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CRLiOSCanvasViewController *)self delegate];
      v12 = [v11 preserveEditorSelection];

      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v13 = [(CRLiOSCanvasViewController *)self crl_windowWrapper];
    if ([v13 isInSplitViewMode])
    {
      v14 = [(CRLiOSCanvasViewController *)self shouldPreserveEditorSelectionInSplitViewMode];

      if (v14)
      {
LABEL_11:
        v8 = 1;
        goto LABEL_4;
      }
    }

    else
    {
    }

    v15 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v16 = [v15 editorController];
    v7 = [v16 textInputEditor];

    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v8 = [v7 wantsToPreserveEditorSelection];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_3;
  }

  v7 = v6;
  v8 = 1;
LABEL_3:

LABEL_4:
  return v8;
}

- (BOOL)shouldIgnoreKeyboardInput
{
  v3 = objc_opt_class();
  v4 = [(CRLiOSCanvasViewController *)self delegate];
  v5 = sub_100014370(v3, v4);

  v6 = [v5 presentedViewController];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v9 = objc_loadWeakRetained(&self->mDelegate);
      v7 = [v9 printerOptionsShowing];
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = [v5 presentedViewController];
  v11 = [_TtC8Freeform58CRLPresentedPopoverTextEditingBehaviorProvidingSwiftHelper allowTextInputWhilePresentingFor:v10];

  if (v11 == 2)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11 == 0;
  }

  return v12;
}

- (BOOL)becomeFirstResponderIfAppropriate
{
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v4 = [v3 textInputResponder];
  v5 = [v4 isFirstResponder];

  if (v5 & 1) != 0 || (-[CRLiOSCanvasViewController interactiveCanvasController](self, "interactiveCanvasController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 textInputResponder], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "canBecomeFirstResponder"), v7, v6, v8) && (-[CRLiOSCanvasViewController interactiveCanvasController](self, "interactiveCanvasController"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "textInputResponder"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "becomeFirstResponder"), v10, v9, (v11) || (-[CRLiOSCanvasViewController isFirstResponder](self, "isFirstResponder"))
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v12 = [(CRLiOSCanvasViewController *)self canBecomeFirstResponder];
    if (v12)
    {

      LOBYTE(v12) = [(CRLiOSCanvasViewController *)self becomeFirstResponder];
    }
  }

  return v12;
}

- (BOOL)allowsCanvasScrollingFromKeyboard
{
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v4 = [v3 editorController];
  v5 = [v4 selectionPath];
  v6 = [v3 canvasEditor];
  v7 = [v6 selectionPathWithInfo:0];
  v8 = [v5 isEqual:v7];

  v9 = [(CRLiOSCanvasViewController *)self canvasView];
  v10 = [v9 enclosingScrollView];

  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v10 contentSize];
  v20 = v19;
  v22 = v21;
  v25.origin.x = v12;
  v25.origin.y = v14;
  v25.size.width = v16;
  v25.size.height = v18;
  if (v20 <= CGRectGetWidth(v25))
  {
    v26.origin.x = v12;
    v26.origin.y = v14;
    v26.size.width = v16;
    v26.size.height = v18;
    v23 = v22 > CGRectGetHeight(v26);
  }

  else
  {
    v23 = 1;
  }

  return v8 & v23;
}

- (BOOL)allowUndoRedoOperations
{
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v4 = [v3 tmCoordinator];
  v5 = [v4 controllingTM];

  if (v5)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      [v3 isInDynamicOperation];
      LOBYTE(v7) = 0;
      goto LABEL_9;
    }

    v6 = [v5 allowUndoRedoOperations] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  LOBYTE(v7) = 0;
  if (([v3 isInDynamicOperation] & 1) == 0 && (v6 & 1) == 0)
  {
    v7 = ![(CRLiOSCanvasViewController *)self shouldIgnoreKeyboardInput];
  }

LABEL_9:

  return v7;
}

- (BOOL)documentChromeHasPresentedViewController
{
  v3 = objc_opt_class();
  v4 = [(CRLiOSCanvasViewController *)self delegate];
  v5 = sub_100014370(v3, v4);

  v6 = [v5 presentedViewController];
  LOBYTE(v4) = v6 != 0;

  return v4;
}

- (void)dismissDocumentChromePresentedViewController
{
  v3 = objc_opt_class();
  v4 = [(CRLiOSCanvasViewController *)self delegate];
  v9 = sub_100014370(v3, v4);

  v5 = [v9 presentedViewController];

  if (v5)
  {
    v6 = [(CRLiOSCanvasViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(CRLiOSCanvasViewController *)self delegate];
      [v8 dismissPresentedViewController];
    }
  }
}

- (BOOL)p_isAccessibilityTextResponderAction:(SEL)a3
{
  v3 = NSStringFromSelector(a3);
  v4 = [&off_1018E1E00 containsObject:v3];

  return v4;
}

- (CRLFreehandDrawingPKSelectionManager)smartSelectionManager
{
  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    v4 = [WeakRetained pencilKitCanvasViewControllerForCanvasViewController:self];

    v5 = [v4 smartSelectionManager];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->mICC);

  return WeakRetained;
}

- (CRLiOSCanvasViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);

  return WeakRetained;
}

- (CRLUserDialogPresenter)userDialogPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->mUserDialogPresenter);

  return WeakRetained;
}

- (CGPoint)lastTapPoint
{
  x = self->mLastTapPoint.x;
  y = self->mLastTapPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)targetRectForContextMenuController
{
  x = self->mTargetRectForContextMenuController.origin.x;
  y = self->mTargetRectForContextMenuController.origin.y;
  width = self->mTargetRectForContextMenuController.size.width;
  height = self->mTargetRectForContextMenuController.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end