@interface CRLiOSCanvasViewController
- (BOOL)allowGestureInRestrictedGestureMode:(id)mode;
- (BOOL)allowTouchOutsideCanvasViewAtPoint:(CGPoint)point forGesture:(id)gesture;
- (BOOL)allowUndoRedoOperations;
- (BOOL)allowedToEnterQuickSelectMode;
- (BOOL)allowsCanvasScrollingFromKeyboard;
- (BOOL)allowsSystemDragSession;
- (BOOL)becomeFirstResponderIfAppropriate;
- (BOOL)canInsertBoardItemsFromDragOperationForDragInfo:(id)info;
- (BOOL)canInsertScribbleElementAtPoint:(CGPoint)point;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canvasSubview:(id)subview shouldHandleEventAtBoundsPoint:(CGPoint)point;
- (BOOL)contextMenuPositionShouldUpdateForContextMenuController:(id)controller;
- (BOOL)disallowRectangularMarqueeOperationAtUnscaledPoint:(CGPoint)point;
- (BOOL)documentChromeHasPresentedViewController;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)handleDoubleTapAtPoint:(CGPoint)point withRecognizer:(id)recognizer;
- (BOOL)handleSingleTapAtPoint:(CGPoint)point withRecognizer:(id)recognizer;
- (BOOL)i_allowCanvasInteraction:(id)interaction atPoint:(CGPoint)point;
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
- (BOOL)p_isAccessibilityTextResponderAction:(SEL)action;
- (BOOL)p_scribblePreventedRegardlessOfPoint;
- (BOOL)p_shouldIgnoreKeyboardInputForTouchType:(int64_t)type atSomeTouchPoint:(CGPoint)point;
- (BOOL)p_shouldShowMiniFormatterForSelectionPath:(id)path;
- (BOOL)preserveEditorSelection;
- (BOOL)respondsToSelector:(SEL)selector withSender:(id)sender;
- (BOOL)shouldAllowDragOperationForDragInfo:(id)info;
- (BOOL)shouldBeginScribblingAtPoint:(CGPoint)point;
- (BOOL)shouldIgnoreKeyboardInput;
- (BOOL)shouldIgnoreTextGesture:(id)gesture atPoint:(CGPoint)point;
- (BOOL)shouldIncludeObjectInScribbleCapableElements:(id)elements;
- (BOOL)shouldSelectAndScrollWithApplePencil;
- (BOOL)touchHitsCanvasViewAtPoint:(CGPoint)point;
- (CALayer)layer;
- (CGPoint)lastTapPoint;
- (CGPoint)p_targetPointForEditMenuForSelectionPath:(id)path outModifiedDirection:(int64_t *)direction;
- (CGRect)p_targetRectForMenuControllerPositionForSelectionPath:(id)path;
- (CGRect)rectForInsertingScribbleElements;
- (CGRect)rectToIncludeWhenGrowingCanvasToFitContent;
- (CGRect)targetRectForContextMenuController;
- (CGRect)targetRectForEditMenu:(id)menu;
- (CGRect)visibleCanvasRectForQuickSelectViewController:(id)controller;
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
- (CRLiOSCanvasViewController)initWithCoder:(id)coder;
- (CRLiOSCanvasViewController)initWithInteractiveCanvasController:(id)controller;
- (CRLiOSCanvasViewController)initWithNibName:(id)name bundle:(id)bundle;
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
- (id)_scribbleCapableElementsForReps:(id)reps forRect:(CGRect)rect;
- (id)beginModalOperationWithLocalizedMessage:(id)message progress:(id)progress cancelHandler:(id)handler;
- (id)beginModalOperationWithPresentedLocalizedMessage:(id)message progress:(id)progress cancelHandler:(id)handler;
- (id)containedScribbleElementForContainerScribbleElement:(id)element;
- (id)contextMenuInteractionDelegate;
- (id)editMenuConfigrationForSelectionPath:(id)path withConfigurationIdentifier:(id)identifier;
- (id)gesturesSupportingStylusAndIndirectPointer;
- (id)gesturesThatImmediateMarqueeShouldRequireToFail;
- (id)hitKnobWithTouch:(id)touch returningRep:(id *)rep;
- (id)hitRepWithTouch:(id)touch;
- (id)insertTextBoxForScribbleAtUnscaledCanvasPoint:(CGPoint)point;
- (id)insertedScribbleElementAtPoint:(CGPoint)point;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)modelContainerForLocalDragContext;
- (id)newDragAndDropController;
- (id)p_allRepsForHitTestingOrdered;
- (id)p_reasonStringForIgnoringKeyboardInputWithAllTouchesDoneGestureRecognizer:(id)recognizer;
- (id)p_willPresentError:(id)error;
- (id)pointerInteractionDelegate;
- (id)scribbleCapableElementWithIdentifier:(id)identifier;
- (id)scribbleCapableElementsForRect:(CGRect)rect;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)viewForGestureRecognizer:(id)recognizer;
- (void)addCommonObservers;
- (void)addInspectorPanZoomModeGRsToArray:(id)array;
- (void)alignmentToolsControllerShouldDismiss:(id)dismiss;
- (void)canvasZoomTracker:(id)tracker willBeginViewScaleFeedbackWithZoomMethod:(int64_t)method;
- (void)canvasZoomTracker:(id)tracker willUpdateViewScaleFeedbackWithScale:(double)scale;
- (void)canvasZoomTrackerDidEndFinalZoomAnimation:(id)animation;
- (void)canvasZoomTrackerDidEndViewScaleFeedback:(id)feedback;
- (void)canvasZoomTrackerDidFinish:(id)finish;
- (void)canvasZoomTrackerWillBeginFinalZoomAnimation:(id)animation;
- (void)contextMenuDidHideForContextMenuController:(id)controller;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)didDismissQuickSelectViewController:(id)controller;
- (void)didSetDocumentToMode:(id)mode fromMode:(id)fromMode animated:(BOOL)animated;
- (void)didStartCountingTouches:(id)touches touchType:(int64_t)type atSomeTouchPoint:(CGPoint)point;
- (void)didStopCountingTouches:(id)touches;
- (void)dismissDocumentChromePresentedViewController;
- (void)dragSessionWillBegin;
- (void)endModalOperationWithToken:(id)token;
- (void)endPreventingDefaultPencilBehaviors;
- (void)enterQuickSelectMode;
- (void)forceStopScrolling;
- (void)forwardInvocation:(id)invocation;
- (void)handleDoubleTap:(id)tap;
- (void)hideEditMenu;
- (void)i_startObservingFreehandDrawingToolkit;
- (void)i_updateZoomGestureRecognizer;
- (void)insertStencilFromLibrary:(id)library;
- (void)leaveQuickSelectModeIfNeeded;
- (void)modifyGesturesUsedForStylusAndIndirectPointerAddingTouchType:(int64_t)type;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_accessibilityInvertColorsDidChange:(id)change;
- (void)p_allTouchesDone:(id)done;
- (void)p_applicationDidBecomeActive:(id)active;
- (void)p_buildMenuItems:(id)items forSelectionPath:(id)path;
- (void)p_buildMenuTitles:(id)titles forSelectionPath:(id)path;
- (void)p_didEnterBackground:(id)background;
- (void)p_handleHoverGesture:(id)gesture;
- (void)p_handlePencilDown:(id)down;
- (void)p_handleSingleTapGesture:(id)gesture;
- (void)p_handleTapForEditMenu:(id)menu;
- (void)p_keyWindowDidChange:(id)change;
- (void)p_leaveQuickSelectMode;
- (void)p_presentStencilLibraryWithBoardItemsToSave:(id)save;
- (void)p_schedulePreventInsertScribbleElementTimer;
- (void)p_setDragLiftDelay:(double)delay;
- (void)p_setUpWPGestureRecognizers;
- (void)p_setupDidEnterBackgroundObserver;
- (void)p_setupWillEnterForegroundObserver;
- (void)p_willEnterForeground:(id)foreground;
- (void)p_zoomWithGesture:(id)gesture;
- (void)presentAlignmentTools;
- (void)presentError:(id)error completionHandler:(id)handler;
- (void)presentErrors:(id)errors withLocalizedDescription:(id)description completionHandler:(id)handler;
- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)reasons forMediaType:(int64_t)type forSingleMediaObject:(BOOL)object completionHandler:(id)handler;
- (void)removeCommonObservers;
- (void)resetGesturesForContextSwitch;
- (void)saveSelectedBoardItemsAsStencil:(id)stencil;
- (void)scribbleInteractionDidFinishWriting;
- (void)scribbleInteractionWillBeginWritingScribbleElementWillBeInserted:(BOOL)inserted;
- (void)scrollViewDidScroll;
- (void)setContextMenuMightBeDisplayed:(BOOL)displayed;
- (void)setDelegate:(id)delegate;
- (void)setUpCommonGestureAllowedTouchTypes;
- (void)setUpGestureRecognizers;
- (void)setView:(id)view;
- (void)showDefaultEditUIForCurrentSelection;
- (void)showEditMenuForSelectionPath:(id)path;
- (void)showEditUIForSelectionPath:(id)path;
- (void)showMiniFormatterToExitDrawingMode:(id)mode;
- (void)showURLAlertFromAlertPresenter:(id)presenter;
- (void)teardown;
- (void)toggleDefaultEditUIForCurrentSelection;
- (void)toggleEditMenuForCurrentSelection;
- (void)unlock:(id)unlock;
- (void)updateToolbarButtons;
- (void)userDismissedAlignmentToolsController:(id)controller;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
- (void)willUpdateLayerTree;
@end

@implementation CRLiOSCanvasViewController

- (CRLiOSCanvasViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = CRLiOSCanvasViewController;
  v4 = [(CRLiOSCanvasViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    sub_10037B87C(v4);
  }

  return v5;
}

- (CRLiOSCanvasViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRLiOSCanvasViewController;
  v3 = [(CRLiOSCanvasViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    sub_10037B87C(v3);
  }

  return v4;
}

- (CRLiOSCanvasViewController)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = CRLiOSCanvasViewController;
  v5 = [(CRLiOSCanvasViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    sub_10037B87C(v5);
    [(CRLiOSCanvasViewController *)v6 setInteractiveCanvasController:controllerCopy];
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CRLiOSCanvasViewController;
  [(CRLiOSCanvasViewController *)&v4 viewDidAppear:appear];
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
  view = [(CRLiOSCanvasViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
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
    v9 = [v6 addObserverForName:v7 object:windowScene queue:v8 usingBlock:v11];
    mSceneWillEnterForegroundObserver = self->mSceneWillEnterForegroundObserver;
    self->mSceneWillEnterForegroundObserver = v9;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)p_setupDidEnterBackgroundObserver
{
  view = [(CRLiOSCanvasViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
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
    v9 = [v6 addObserverForName:v7 object:windowScene queue:v8 usingBlock:v11];
    mSceneDidEnterBackgroundObserver = self->mSceneDidEnterBackgroundObserver;
    self->mSceneDidEnterBackgroundObserver = v9;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v12.receiver = self;
  v12.super_class = CRLiOSCanvasViewController;
  if ([(CRLiOSCanvasViewController *)&v12 respondsToSelector:?])
  {
    v11.receiver = self;
    v11.super_class = CRLiOSCanvasViewController;
    v5 = [(CRLiOSCanvasViewController *)&v11 methodSignatureForSelector:selector];
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

- (BOOL)respondsToSelector:(SEL)selector withSender:(id)sender
{
  senderCopy = sender;
  v10.receiver = self;
  v10.super_class = CRLiOSCanvasViewController;
  if ([(CRLiOSCanvasViewController *)&v10 respondsToSelector:selector])
  {
    v7 = 1;
  }

  else if ([CRLInteractiveCanvasController selectorIsActionMethod:selector])
  {
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v7 = [interactiveCanvasController respondsToSelector:selector withSender:senderCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  [invocationCopy invokeWithTarget:interactiveCanvasController];
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

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  [interactiveCanvasController stopWritingTools];

  v6.receiver = self;
  v6.super_class = CRLiOSCanvasViewController;
  [(CRLiOSCanvasViewController *)&v6 willMoveToParentViewController:controllerCopy];
}

- (void)teardown
{
  if ([(CRLiOSCanvasViewController *)self isViewLoaded])
  {
    canvasView = [(CRLiOSCanvasViewController *)self canvasView];
    [canvasView teardown];

    canvasView2 = [(CRLiOSCanvasViewController *)self canvasView];
    [canvasView2 setGestureRecognizers:0];
  }

  [CRLiOSScribbleInteractionSetupHelper setupScribbleEditingProvider:self scribbleObserver:0 scribbleActive:0];
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  [freehandDrawingToolkit removeToolkitObserver:self];

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
  canvasView = [(CRLiOSCanvasViewController *)self canvasView];
  if (canvasView)
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

    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    [interactiveCanvasController viewScale];
    v10 = v9;

    v11 = objc_loadWeakRetained(&self->mICC);
    [canvasView setController:v11];

    v12 = objc_loadWeakRetained(&self->mICC);
    canvas = [v12 canvas];
    [canvas setViewScale:v10];

    v14 = objc_loadWeakRetained(&self->mICC);
    canvas2 = [v14 canvas];
    +[UIScreen crl_screenScale];
    [canvas2 i_setContentsScale:?];

    [canvasView setMultipleTouchEnabled:1];
    [canvasView setExclusiveTouch:1];
    [canvasView setClearsContextBeforeDrawing:0];
    enclosingScrollView = [canvasView enclosingScrollView];
    v17 = enclosingScrollView;
    if (enclosingScrollView)
    {
      delegate = [enclosingScrollView delegate];

      if (!delegate)
      {
        v19 = objc_loadWeakRetained(&self->mICC);
        [v17 setDelegate:v19];
      }

      canvasLayer = [(CRLiOSCanvasViewController *)self canvasLayer];
      [canvasLayer fixFrameAndScrollView];

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
      dropInteractionDelegate = [(CRLiOSCanvasViewController *)self dropInteractionDelegate];
      v24 = [v22 initWithDelegate:dropInteractionDelegate];
      [canvasView addInteraction:v24];
    }

    if ([(CRLiOSCanvasViewController *)self canOriginateSystemDrags])
    {
      v25 = [UIDragInteraction alloc];
      dragInteractionDelegate = [(CRLiOSCanvasViewController *)self dragInteractionDelegate];
      v27 = [v25 initWithDelegate:dragInteractionDelegate];
      mDragInteraction = self->mDragInteraction;
      self->mDragInteraction = v27;

      dragInteraction = [(CRLiOSCanvasViewController *)self dragInteraction];
      [canvasView addInteraction:dragInteraction];

      dragInteraction2 = [(CRLiOSCanvasViewController *)self dragInteraction];
      [dragInteraction2 setAllowsSimultaneousRecognitionDuringLift:1];

      dragInteraction3 = [(CRLiOSCanvasViewController *)self dragInteraction];
      LOBYTE(dragInteractionDelegate) = objc_opt_respondsToSelector();

      if (dragInteractionDelegate)
      {
        dragInteraction4 = [(CRLiOSCanvasViewController *)self dragInteraction];
        [dragInteraction4 _setAdditionalTouchesCancelLift:1];
      }

      dragInteraction5 = [(CRLiOSCanvasViewController *)self dragInteraction];
      [dragInteraction5 setEnabled:1];

      dragInteraction6 = [(CRLiOSCanvasViewController *)self dragInteraction];
      v35 = objc_opt_respondsToSelector();

      if (v35)
      {
        dragInteraction7 = [(CRLiOSCanvasViewController *)self dragInteraction];
        [dragInteraction7 _setAllowsPointerDragBeforeLiftDelay:0];
      }

      [(CRLiOSCanvasViewController *)self p_setDragLiftDelay:0.7];
    }

    v37 = [UIContextMenuInteraction alloc];
    contextMenuInteractionDelegate = [(CRLiOSCanvasViewController *)self contextMenuInteractionDelegate];
    v39 = [v37 initWithDelegate:contextMenuInteractionDelegate];

    [canvasView addInteraction:v39];
    v40 = [UIPointerInteraction alloc];
    pointerInteractionDelegate = [(CRLiOSCanvasViewController *)self pointerInteractionDelegate];
    v42 = [v40 initWithDelegate:pointerInteractionDelegate];
    mPointerInteraction = self->mPointerInteraction;
    self->mPointerInteraction = v42;

    [canvasView addInteraction:self->mPointerInteraction];
    v44 = [UIEditMenuInteraction alloc];
    contextMenuInteractionDelegate2 = [(CRLiOSCanvasViewController *)self contextMenuInteractionDelegate];
    v46 = [v44 initWithDelegate:contextMenuInteractionDelegate2];

    [v46 setPresentsContextMenuAsSecondaryAction:0];
    [(CRLiOSCanvasViewController *)self setEditMenuInteraction:v46];
    [canvasView addInteraction:v46];
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
      interactiveCanvasController2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      v54 = [(CRLWPWritingToolsHandler *)v52 initWithInteractiveCanvasController:interactiveCanvasController2];

      v55 = [_TtC8Freeform34CRLWPSystemWritingToolsCoordinator makeCoordinatorWithDelegate:v54];
      interactiveCanvasController3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      [interactiveCanvasController3 setWritingToolsDelegate:v54];

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

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CRLiOSCanvasViewController;
  [(CRLiOSCanvasViewController *)&v7 viewWillAppear:appear];
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  canvas = [WeakRetained canvas];
  traitCollection = [(CRLiOSCanvasViewController *)self traitCollection];
  [canvas i_setCanvasIsWideGamut:{objc_msgSend(traitCollection, "displayGamut") == 1}];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  if ([interactiveCanvasController currentlyScrolling])
  {
    [(CRLiOSCanvasViewController *)self forceStopScrolling];
  }

  v6.receiver = self;
  v6.super_class = CRLiOSCanvasViewController;
  [(CRLiOSCanvasViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)setView:(id)view
{
  v8.receiver = self;
  v8.super_class = CRLiOSCanvasViewController;
  viewCopy = view;
  [(CRLiOSCanvasViewController *)&v8 setView:viewCopy];
  v5 = objc_opt_class();
  layer = [viewCopy layer];

  v7 = sub_100014370(v5, layer);
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
  view = [(CRLiOSCanvasViewController *)self view];
  v5 = sub_100014370(v3, view);

  return v5;
}

- (CALayer)layer
{
  view = [(CRLiOSCanvasViewController *)self view];
  layer = [view layer];

  return layer;
}

- (_TtC8Freeform41CRLiOSShapeLibraryCanvasPopoverController)shapeLibraryPopoverController
{
  shapeLibraryPopoverController = self->_shapeLibraryPopoverController;
  if (!shapeLibraryPopoverController)
  {
    v4 = [_TtC8Freeform41CRLiOSShapeLibraryCanvasPopoverController alloc];
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v6 = [(CRLiOSShapeLibraryCanvasPopoverController *)v4 initWithInteractiveCanvasController:interactiveCanvasController];
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

  view = [(CRLiOSCanvasViewController *)self view];
  window = [view window];
  if ([window isKeyWindow])
  {
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    textInputResponder = [WeakRetained textInputResponder];
    isFirstResponder = [textInputResponder isFirstResponder];
  }

  else
  {
    isFirstResponder = 0;
  }

  return isFirstResponder;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = v13;
  if (v13 != objectCopy)
  {

LABEL_5:
    v16.receiver = self;
    v16.super_class = CRLiOSCanvasViewController;
    [(CRLiOSCanvasViewController *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_6;
  }

  v15 = [pathCopy isEqualToString:@"CRLSelectAndScrollWithApplePencil"];

  if (!v15)
  {
    goto LABEL_5;
  }

  [(CRLiOSCanvasViewController *)self p_pencilShouldSelectAndScrollPreferenceDidChange];
LABEL_6:
}

- (void)p_accessibilityInvertColorsDidChange:(id)change
{
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  [interactiveCanvasController invalidateAllLayers];
}

- (void)showURLAlertFromAlertPresenter:(id)presenter
{
  presenterCopy = presenter;
  miniFormatterPresenter = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
  [miniFormatterPresenter dismissMiniFormatter];

  presentedViewController = [(CRLiOSCanvasViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];

  [presenterCopy showAlertFrom:self];
}

- (void)p_willEnterForeground:(id)foreground
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController:foreground];
  canvas = [v3 canvas];
  topLevelReps = [canvas topLevelReps];

  v6 = [topLevelReps countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [*(*(&v10 + 1) + 8 * i) recursivelyPerformSelector:"willEnterForeground"];
      }

      v7 = [topLevelReps countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)p_didEnterBackground:(id)background
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController:background];
  canvas = [v3 canvas];
  topLevelReps = [canvas topLevelReps];

  v6 = [topLevelReps countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [*(*(&v10 + 1) + 8 * i) recursivelyPerformSelector:"didEnterBackground"];
      }

      v7 = [topLevelReps countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)p_applicationDidBecomeActive:(id)active
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController:active];
  canvas = [v3 canvas];
  topLevelReps = [canvas topLevelReps];

  v6 = [topLevelReps countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [*(*(&v10 + 1) + 8 * i) recursivelyPerformSelector:"i_applicationDidBecomeActive"];
      }

      v7 = [topLevelReps countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)p_keyWindowDidChange:(id)change
{
  object = [change object];
  view = [(CRLiOSCanvasViewController *)self view];
  window = [view window];

  if (object == window)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    canvas = [WeakRetained canvas];
    topLevelReps = [canvas topLevelReps];

    v10 = [topLevelReps countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(topLevelReps);
          }

          [*(*(&v14 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"layerHostContainerFocusDidChange"];
        }

        v11 = [topLevelReps countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (id)hitRepWithTouch:(id)touch
{
  touchCopy = touch;
  if (touchCopy)
  {
    canvasView = [(CRLiOSCanvasViewController *)self canvasView];
    [touchCopy locationInView:canvasView];
    v7 = v6;
    v9 = v8;

    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    [interactiveCanvasController convertBoundsToUnscaledPoint:{v7, v9}];
    v12 = v11;
    v14 = v13;

    interactiveCanvasController2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v16 = [interactiveCanvasController2 hitRep:{v12, v14}];
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

- (id)hitKnobWithTouch:(id)touch returningRep:(id *)rep
{
  touchCopy = touch;
  if (touchCopy)
  {
    canvasView = [(CRLiOSCanvasViewController *)self canvasView];
    [touchCopy locationInView:canvasView];
    v9 = v8;
    v11 = v10;

    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    [interactiveCanvasController convertBoundsToUnscaledPoint:{v9, v11}];
    v14 = v13;
    v16 = v15;

    v17 = sub_10042B6C0([touchCopy type]);
    interactiveCanvasController2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v19 = [interactiveCanvasController2 hitKnobAtPoint:v17 inputType:rep returningRep:{v14, v16}];
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
    if (rep)
    {
      *rep = 0;
    }
  }

  return v19;
}

- (BOOL)canvasSubview:(id)subview shouldHandleEventAtBoundsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  subviewCopy = subview;
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  if ([interactiveCanvasController i_isRepContentPlatformView:subviewCopy])
  {
    [interactiveCanvasController convertBoundsToUnscaledPoint:{x, y}];
    v10 = v9;
    v12 = v11;
    v13 = [interactiveCanvasController hitKnobAtPoint:1 inputType:0 returningRep:?];
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v15 = [interactiveCanvasController hitRep:{v10, v12}];
      v16 = v15;
      if (v15 && [v15 directlyManagesContentPlatformView] && objc_msgSend(v16, "wantsContentPlatformViewEventHandling"))
      {
        contentPlatformView = [v16 contentPlatformView];
        if (contentPlatformView)
        {
          v14 = [subviewCopy isDescendantOfView:contentPlatformView];
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
  singleTapGestureRecognizer = [(CRLiOSCanvasViewController *)self singleTapGestureRecognizer];
  doubleTapGestureRecognizer = [(CRLiOSCanvasViewController *)self doubleTapGestureRecognizer];
  editMenuTapGestureRecognizer = [(CRLiOSCanvasViewController *)self editMenuTapGestureRecognizer];
  knobDragGestureRecognizer = [(CRLiOSCanvasViewController *)self knobDragGestureRecognizer];
  multiSelectGestureRecognizer = [(CRLiOSCanvasViewController *)self multiSelectGestureRecognizer];
  repDragGestureRecognizer = [(CRLiOSCanvasViewController *)self repDragGestureRecognizer];
  repRotateGestureRecognizer = [(CRLiOSCanvasViewController *)self repRotateGestureRecognizer];
  repRotateKnobGestureRecognizer = [(CRLiOSCanvasViewController *)self repRotateKnobGestureRecognizer];
  zoomGestureRecognizer = [(CRLiOSCanvasViewController *)self zoomGestureRecognizer];
  nudgeGestureRecognizer = [(CRLiOSCanvasViewController *)self nudgeGestureRecognizer];
  v12 = [NSArray arrayWithObjects:singleTapGestureRecognizer, doubleTapGestureRecognizer, editMenuTapGestureRecognizer, knobDragGestureRecognizer, multiSelectGestureRecognizer, repDragGestureRecognizer, repRotateGestureRecognizer, repRotateKnobGestureRecognizer, zoomGestureRecognizer, nudgeGestureRecognizer, 0];

  return v12;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if ([touchCopy type] == 2)
  {
    window = [touchCopy window];
    [touchCopy locationInView:window];
    v10 = v9;
    v12 = v11;
    screen = [window screen];
    [screen bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    coordinateSpace = [screen coordinateSpace];
    [window convertPoint:coordinateSpace toCoordinateSpace:{v10, v12}];
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

  window = [(CRLiOSCanvasViewController *)self canvasView];
  [touchCopy locationInView:window];
  v28 = v27;
  v30 = v29;
  editMenuTapGestureRecognizer = [(CRLiOSCanvasViewController *)self editMenuTapGestureRecognizer];

  if (editMenuTapGestureRecognizer == recognizerCopy)
  {
    v32 = +[UIMenuController sharedMenuController];
    if ([v32 isMenuVisible])
    {
      self->mContextMenuMightBeDisplayed = 1;
    }

    else
    {
      contextMenuInteractionDelegate = [(CRLiOSCanvasViewController *)self contextMenuInteractionDelegate];
      self->mContextMenuMightBeDisplayed = [contextMenuInteractionDelegate currentlyDisplayingMenu];
    }
  }

  if ([(CRLiOSCanvasViewController *)self touchHitsCanvasViewAtPoint:v28, v30]|| [(CRLiOSCanvasViewController *)self allowTouchOutsideCanvasViewAtPoint:recognizerCopy forGesture:v28, v30])
  {
    traitCollection = [(CRLiOSCanvasViewController *)self traitCollection];
    if ([traitCollection crl_isCompactWidth] && -[CRLiOSCanvasViewController inInspectorPanZoomMode](self, "inInspectorPanZoomMode") || -[CRLiOSCanvasViewController inMediaBrowsingMode](self, "inMediaBrowsingMode"))
    {

LABEL_19:
      canvasView = [(CRLiOSCanvasViewController *)self canvasView];
      gestureRecognizers = [canvasView gestureRecognizers];
      v38 = [gestureRecognizers containsObject:recognizerCopy];

      if (v38)
      {
        v39 = +[NSMutableArray array];
        [(CRLiOSCanvasViewController *)self addInspectorPanZoomModeGRsToArray:v39];
        v40 = [v39 containsObject:recognizerCopy];

        if ((v40 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_26;
    }

    inInspectorTextEditingMode = [(CRLiOSCanvasViewController *)self inInspectorTextEditingMode];

    if (inInspectorTextEditingMode)
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

  if (![(CRLiOSCanvasViewController *)self allowGestureInRestrictedGestureMode:recognizerCopy])
  {
    goto LABEL_30;
  }

LABEL_26:
  if (self->mPencilDownGestureRecognizer == recognizerCopy)
  {
    delegate = [(CRLiOSCanvasViewController *)self delegate];
    v43 = objc_opt_respondsToSelector();

    if ((v43 & 1) == 0 || (-[CRLiOSCanvasViewController delegate](self, "delegate"), v44 = objc_claimAutoreleasedReturnValue(), [v44 currentDocumentMode], v45 = objc_claimAutoreleasedReturnValue(), v44, v46 = objc_msgSend(v45, "pencilModeType"), v45, !v46))
    {
      WeakRetained = objc_loadWeakRetained(&self->mICC);
      canvasView2 = [(CRLiOSCanvasViewController *)self canvasView];
      [touchCopy locationInView:canvasView2];
      [WeakRetained convertBoundsToUnscaledPoint:?];
      v51 = v50;
      v53 = v52;

      v54 = objc_loadWeakRetained(&self->mICC);
      freehandDrawingToolkit = [v54 freehandDrawingToolkit];
      v56 = [freehandDrawingToolkit freehandDrawingBehaviorForTouchType:2 atUnscaledPoint:{v51, v53}];

      v41 = v56 == 1;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v41 = 1;
LABEL_31:

  return v41;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  rectangularMarqueeGestureRecognizer = [(CRLiOSCanvasViewController *)self rectangularMarqueeGestureRecognizer];
  v9 = rectangularMarqueeGestureRecognizer;
  if (rectangularMarqueeGestureRecognizer == recognizerCopy)
  {
    gesturesThatImmediateMarqueeShouldRequireToFail = [(CRLiOSCanvasViewController *)self gesturesThatImmediateMarqueeShouldRequireToFail];
    v11 = [gesturesThatImmediateMarqueeShouldRequireToFail containsObject:gestureRecognizerCopy];

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
    delegate = [(CRLiOSCanvasViewController *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(CRLiOSCanvasViewController *)self delegate];
      currentDocumentMode = [delegate2 currentDocumentMode];

      v13 = [currentDocumentMode gestureRecognizer:recognizerCopy shouldRequireFailureOfGestureRecognizer:gestureRecognizerCopy];
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
  canvasView = [(CRLiOSCanvasViewController *)self canvasView];
  v3 = [[CRLiOSTapGestureRecognizer alloc] initWithTarget:self action:"p_handleSingleTapGesture:"];
  [(CRLiOSTapGestureRecognizer *)v3 setDelegate:self];
  [(CRLiOSTapGestureRecognizer *)v3 setName:@"Single Tap"];
  [canvasView addGestureRecognizer:v3];
  v67 = v3;
  [(CRLiOSCanvasViewController *)self setSingleTapGestureRecognizer:v3];
  v4 = [[CRLiOSPencilDownGestureRecognizer alloc] initWithTarget:self action:"p_handlePencilDown:"];
  [(CRLiOSPencilDownGestureRecognizer *)v4 setName:@"CVCPencilDown"];
  [(CRLiOSPencilDownGestureRecognizer *)v4 setDelegate:self];
  [canvasView addGestureRecognizer:v4];
  v66 = v4;
  [(CRLiOSCanvasViewController *)self setPencilDownGestureRecognizer:v4];
  v5 = [[CRLiOSTapGestureRecognizer alloc] initWithTarget:self action:"handleDoubleTap:"];
  [(CRLiOSTapGestureRecognizer *)v5 setNumberOfTapsRequired:2];
  [(CRLiOSTapGestureRecognizer *)v5 setDelegate:self];
  [(CRLiOSTapGestureRecognizer *)v5 setName:@"Double tap"];
  [canvasView addGestureRecognizer:v5];
  v65 = v5;
  [(CRLiOSCanvasViewController *)self setDoubleTapGestureRecognizer:v5];
  v6 = [[CRLiOSEditMenuTapGestureRecognizer alloc] initWithTarget:self action:"p_handleTapForEditMenu:"];
  [(CRLiOSEditMenuTapGestureRecognizer *)v6 setDelegate:self];
  doubleTapGestureRecognizer = [(CRLiOSCanvasViewController *)self doubleTapGestureRecognizer];
  [(CRLiOSEditMenuTapGestureRecognizer *)v6 requireGestureRecognizerToFail:doubleTapGestureRecognizer];

  [canvasView addGestureRecognizer:v6];
  v64 = v6;
  [(CRLiOSCanvasViewController *)self setEditMenuTapGestureRecognizer:v6];
  v8 = [CRLiOSKnobDragGestureRecognizer alloc];
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  v10 = [(CRLiOSKnobDragGestureRecognizer *)v8 initWithInteractiveCanvasController:WeakRetained];

  [(CRLiOSKnobDragGestureRecognizer *)v10 setDelegate:self];
  [canvasView addGestureRecognizer:v10];
  v63 = v10;
  [(CRLiOSCanvasViewController *)self setKnobDragGestureRecognizer:v10];
  v11 = [CRLiOSMultiSelectGestureRecognizer alloc];
  v12 = objc_loadWeakRetained(&self->mICC);
  v13 = [(CRLiOSMultiSelectGestureRecognizer *)v11 initWithInteractiveCanvasController:v12];

  [(CRLiOSMultiSelectGestureRecognizer *)v13 setDelegate:self];
  [canvasView addGestureRecognizer:v13];
  v62 = v13;
  [(CRLiOSCanvasViewController *)self setMultiSelectGestureRecognizer:v13];
  v14 = [CRLiOSRepDragGestureRecognizer alloc];
  v15 = objc_loadWeakRetained(&self->mICC);
  v16 = [(CRLiOSRepDragGestureRecognizer *)v14 initWithInteractiveCanvasController:v15];

  [(CRLiOSRepDragGestureRecognizer *)v16 setDelegate:self];
  [canvasView addGestureRecognizer:v16];
  v61 = v16;
  [(CRLiOSCanvasViewController *)self setRepDragGestureRecognizer:v16];
  v17 = [CRLiOSRepNudgeGestureRecognizer alloc];
  v18 = objc_loadWeakRetained(&self->mICC);
  v19 = [(CRLiOSRepNudgeGestureRecognizer *)v17 initWithInteractiveCanvasController:v18];

  [(CRLiOSRepNudgeGestureRecognizer *)v19 setDelegate:self];
  [(CRLiOSRepNudgeGestureRecognizer *)v19 setAllowedTouchTypes:&off_1018E1D58];
  [canvasView addGestureRecognizer:v19];
  v60 = v19;
  [(CRLiOSCanvasViewController *)self setNudgeGestureRecognizer:v19];
  v20 = [CRLiOSRepRotateGestureRecognizer alloc];
  v21 = objc_loadWeakRetained(&self->mICC);
  v22 = [(CRLiOSRepRotateGestureRecognizer *)v20 initWithInteractiveCanvasController:v21];

  [(CRLiOSRepRotateGestureRecognizer *)v22 setDelegate:self];
  [canvasView addGestureRecognizer:v22];
  [(CRLiOSRepRotateGestureRecognizer *)v22 setName:@"rotate finger"];
  v59 = v22;
  [(CRLiOSCanvasViewController *)self setRepRotateGestureRecognizer:v22];
  v23 = [CRLiOSRepRotateKnobGestureRecognizer alloc];
  v24 = objc_loadWeakRetained(&self->mICC);
  v25 = [(CRLiOSRepRotateKnobGestureRecognizer *)v23 initWithInteractiveCanvasController:v24];

  [(CRLiOSRepRotateKnobGestureRecognizer *)v25 setDelegate:self];
  [canvasView addGestureRecognizer:v25];
  [(CRLiOSRepRotateKnobGestureRecognizer *)v25 setName:@"rotate knob"];
  v58 = v25;
  [(CRLiOSCanvasViewController *)self setRepRotateKnobGestureRecognizer:v25];
  v26 = [[CRLiOSAllTouchesDoneGestureRecognizer alloc] initWithTarget:self action:"p_allTouchesDone:"];
  [(CRLiOSAllTouchesDoneGestureRecognizer *)v26 setDelegate:self];
  [canvasView addGestureRecognizer:v26];
  v57 = v26;
  [(CRLiOSCanvasViewController *)self setAllTouchesDoneGestureRecognizer:v26];
  v27 = [[CRLiOSAllTouchesDoneGestureRecognizer alloc] initWithTarget:self action:"p_allTouchesDone:"];
  [(CRLiOSAllTouchesDoneGestureRecognizer *)v27 setDelegate:self];
  [(CRLiOSAllTouchesDoneGestureRecognizer *)v27 setAllowedTouchTypes:&off_1018E1D70];
  [canvasView addGestureRecognizer:v27];
  [(CRLiOSAllTouchesDoneGestureRecognizer *)v27 setName:@"indirect"];
  objc_storeStrong(&self->mAllIndirectPointerTouchesDoneGestureRecognizer, v27);
  v28 = [[CRLiOSCanvasZoomPinchGestureRecognizer alloc] initWithTarget:self action:"p_zoomWithGesture:"];
  [(CRLiOSCanvasZoomPinchGestureRecognizer *)v28 setDelegate:self];
  [canvasView addGestureRecognizer:v28];
  v56 = v28;
  [(CRLiOSCanvasViewController *)self setZoomGestureRecognizer:v28];
  [(CRLiOSCanvasViewController *)self i_updateZoomGestureRecognizer];
  v29 = [CRLiOSPreventScrollGestureRecognizer alloc];
  v30 = objc_loadWeakRetained(&self->mICC);
  v31 = [(CRLiOSPreventScrollGestureRecognizer *)v29 initWithInteractiveCanvasController:v30];

  [(CRLiOSPreventScrollGestureRecognizer *)v31 setDelegate:self];
  [canvasView addGestureRecognizer:v31];
  objc_storeStrong(&self->mPreventScrollGestureRecognizer, v31);
  v32 = [CRLiOSFreehandDrawingGestureRecognizer alloc];
  v33 = objc_loadWeakRetained(&self->mICC);
  v34 = [(CRLiOSFreehandDrawingGestureRecognizer *)v32 initWithInteractiveCanvasController:v33];

  [(CRLiOSFreehandDrawingGestureRecognizer *)v34 setDelegate:self];
  [canvasView addGestureRecognizer:v34];
  objc_storeStrong(&self->mFreehandDrawingGestureRecognizer, v34);
  v35 = objc_loadWeakRetained(&self->mDelegate);
  LOBYTE(v33) = objc_opt_respondsToSelector();

  if (v33)
  {
    v36 = objc_loadWeakRetained(&self->mDelegate);
    v37 = [v36 pencilKitCanvasViewControllerForCanvasViewController:self];

    pencilKitCanvasView = [v37 pencilKitCanvasView];
    _hoverGestureRecognizer = [pencilKitCanvasView _hoverGestureRecognizer];

    if (_hoverGestureRecognizer)
    {
      _hoverGestureRecognizer2 = [pencilKitCanvasView _hoverGestureRecognizer];
      [canvasView addGestureRecognizer:_hoverGestureRecognizer2];
    }
  }

  mFreehandDrawingGestureRecognizer = self->mFreehandDrawingGestureRecognizer;
  knobDragGestureRecognizer = [(CRLiOSCanvasViewController *)self knobDragGestureRecognizer];
  [(CRLiOSFreehandDrawingGestureRecognizer *)mFreehandDrawingGestureRecognizer requireGestureRecognizerToFail:knobDragGestureRecognizer];

  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  [(CRLiOSFreehandDrawingGestureRecognizer *)self->mFreehandDrawingGestureRecognizer setEnabled:freehandDrawingToolkit != 0];

  v45 = [CRLiOSRectangularMarqueeGestureRecognizer alloc];
  interactiveCanvasController2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v47 = [(CRLiOSRectangularMarqueeGestureRecognizer *)v45 initWithInteractiveCanvasController:interactiveCanvasController2];

  [(CRLiOSRectangularMarqueeGestureRecognizer *)v47 setDelegate:self];
  [canvasView addGestureRecognizer:v47];
  [(CRLiOSCanvasViewController *)self setRectangularMarqueeGestureRecognizer:v47];
  v48 = [[UIHoverGestureRecognizer alloc] initWithTarget:self action:"p_handleHoverGesture:"];
  [canvasView addGestureRecognizer:v48];
  v49 = [_TtC8Freeform31CRLiOSPencilHoverGestureHandler alloc];
  v50 = objc_loadWeakRetained(&self->mICC);
  pencilMediator = [(CRLiOSCanvasViewController *)self pencilMediator];
  v52 = [(CRLiOSPencilHoverGestureHandler *)v49 initWithInteractiveCanvasController:v50 pencilMediator:pencilMediator];
  mPencilHoverGestureHandler = self->mPencilHoverGestureHandler;
  self->mPencilHoverGestureHandler = v52;

  v54 = [[UIHoverGestureRecognizer alloc] initWithTarget:self->mPencilHoverGestureHandler action:"handleHoverGesture:"];
  mPencilHoverGestureRecognizer = self->mPencilHoverGestureRecognizer;
  self->mPencilHoverGestureRecognizer = v54;

  [(UIHoverGestureRecognizer *)self->mPencilHoverGestureRecognizer setAllowedTouchTypes:&off_1018E1D88];
  [canvasView addGestureRecognizer:self->mPencilHoverGestureRecognizer];
  [(CRLiOSCanvasViewController *)self p_setUpWPGestureRecognizers];
  [(CRLiOSCanvasViewController *)self setUpCommonGestureAllowedTouchTypes];
}

- (id)gesturesSupportingStylusAndIndirectPointer
{
  immediateDoubleTapGestureRecognizer = [(CRLiOSCanvasViewController *)self immediateDoubleTapGestureRecognizer];
  v9[0] = immediateDoubleTapGestureRecognizer;
  tapAndTouchGestureRecognizer = [(CRLiOSCanvasViewController *)self tapAndTouchGestureRecognizer];
  v9[1] = tapAndTouchGestureRecognizer;
  doubleTapAndTouchGestureRecognizer = [(CRLiOSCanvasViewController *)self doubleTapAndTouchGestureRecognizer];
  v9[2] = doubleTapAndTouchGestureRecognizer;
  immediatePressGestureRecognizer = [(CRLiOSCanvasViewController *)self immediatePressGestureRecognizer];
  v9[3] = immediatePressGestureRecognizer;
  v7 = [NSArray arrayWithObjects:v9 count:4];

  return v7;
}

- (void)modifyGesturesUsedForStylusAndIndirectPointerAddingTouchType:(int64_t)type
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  gesturesSupportingStylusAndIndirectPointer = [(CRLiOSCanvasViewController *)self gesturesSupportingStylusAndIndirectPointer];
  v5 = [gesturesSupportingStylusAndIndirectPointer countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(gesturesSupportingStylusAndIndirectPointer);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        allowedTouchTypes = [v9 allowedTouchTypes];
        v11 = [NSNumber numberWithInteger:type];
        v12 = [allowedTouchTypes arrayByAddingObject:v11];
        [v9 setAllowedTouchTypes:v12];
      }

      v6 = [gesturesSupportingStylusAndIndirectPointer countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)p_setUpWPGestureRecognizers
{
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  gestureDispatcher = [interactiveCanvasController gestureDispatcher];

  v4 = [[NSMutableArray alloc] initWithCapacity:0];
  gestureRecognizers = self->_gestureRecognizers;
  self->_gestureRecognizers = v4;

  v6 = [[CRLWPTapAndTouchGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"CRLWPDoubleTapAndTouch"];
  [(CRLWPTapAndTouchGestureRecognizer *)v6 setNumberOfTapsRequired:2];
  v7 = [(CRLiOSCanvasViewController *)self viewForGestureRecognizer:v6];
  [v7 addGestureRecognizer:v6];

  [(NSMutableArray *)self->_gestureRecognizers addObject:v6];
  [(CRLiOSCanvasViewController *)self setDoubleTapAndTouchGestureRecognizer:v6];
  v8 = [[CRLWPTapAndTouchGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"CRLWPTapAndTouch"];
  [(CRLWPTapAndTouchGestureRecognizer *)v8 setNumberOfTapsRequired:1];
  v9 = [(CRLiOSCanvasViewController *)self viewForGestureRecognizer:v8];
  [v9 addGestureRecognizer:v8];

  [(NSMutableArray *)self->_gestureRecognizers addObject:v8];
  [(CRLiOSCanvasViewController *)self setTapAndTouchGestureRecognizer:v8];
  v10 = [[CRLWPLongPressGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"CRLWPLongPress"];
  [(CRLWPLongPressGestureRecognizer *)v10 setNumberOfTapsRequired:0];
  v11 = [(CRLiOSCanvasViewController *)self viewForGestureRecognizer:v10];
  [v11 addGestureRecognizer:v10];

  [(NSMutableArray *)self->_gestureRecognizers addObject:v10];
  [(CRLiOSCanvasViewController *)self setLongPressGestureRecognizer:v10];
  [(CRLWPLongPressGestureRecognizer *)v10 setAllowedTouchTypes:&off_1018E1DA0];
  v12 = [[CRLWPImmediatePressGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"CRLWPImmediatePress"];
  [(CRLWPImmediatePressGestureRecognizer *)v12 setMaximumNumberOfTouches:1];
  v13 = [(CRLiOSCanvasViewController *)self viewForGestureRecognizer:v12];
  [v13 addGestureRecognizer:v12];

  [(NSMutableArray *)self->_gestureRecognizers addObject:v12];
  [(CRLiOSCanvasViewController *)self setImmediatePressGestureRecognizer:v12];
  immediatePressGestureRecognizer = [(CRLiOSCanvasViewController *)self immediatePressGestureRecognizer];
  [immediatePressGestureRecognizer setDisallowOptionKey:1];

  canvasView = [(CRLiOSCanvasViewController *)self canvasView];
  immediatePressGestureRecognizer2 = [(CRLiOSCanvasViewController *)self immediatePressGestureRecognizer];
  [immediatePressGestureRecognizer2 setCanvasView:canvasView];

  [(CRLWPImmediatePressGestureRecognizer *)v12 setAllowedTouchTypes:&off_1018E1DB8];
  v17 = [[CRLWPTapGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"CRLWPImmediateDoubleTap"];
  [(CRLWPTapGestureRecognizer *)v17 setNumberOfTapsRequired:2];
  v18 = [(CRLiOSCanvasViewController *)self viewForGestureRecognizer:v17];
  [v18 addGestureRecognizer:v17];

  [(NSMutableArray *)self->_gestureRecognizers addObject:v17];
  [(CRLiOSCanvasViewController *)self setImmediateDoubleTapGestureRecognizer:v17];
  v19 = [[CRLWPTapGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"CRLWPSecondarySingleTap"];
  secondarySingleTapGestureRecognizer = self->_secondarySingleTapGestureRecognizer;
  self->_secondarySingleTapGestureRecognizer = v19;

  [(CRLWPTapGestureRecognizer *)self->_secondarySingleTapGestureRecognizer setEnabled:0];
  v21 = [(CRLiOSCanvasViewController *)self viewForGestureRecognizer:self->_secondarySingleTapGestureRecognizer];
  [v21 addGestureRecognizer:self->_secondarySingleTapGestureRecognizer];

  [(NSMutableArray *)self->_gestureRecognizers addObject:self->_secondarySingleTapGestureRecognizer];
  v22 = [[CRLWPTapGestureRecognizer alloc] initWithGestureDispatcher:gestureDispatcher gestureKind:@"CRLWPImmediateSingleTap"];
  v23 = [(CRLiOSCanvasViewController *)self viewForGestureRecognizer:v22];
  [v23 addGestureRecognizer:v22];

  [(NSMutableArray *)self->_gestureRecognizers addObject:v22];
  [(CRLiOSCanvasViewController *)self setImmediateSingleTapGestureRecognizer:v22];
  [(CRLiOSCanvasViewController *)self modifyGesturesUsedForStylusAndIndirectPointerAddingTouchType:3];
  [(CRLiOSCanvasViewController *)self modifyGesturesUsedForStylusAndIndirectPointerAddingTouchType:2];
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v25 = objc_opt_respondsToSelector();

  v26 = 0;
  if (v25)
  {
    delegate2 = [(CRLiOSCanvasViewController *)self delegate];
    v26 = [delegate2 scribbleInteractionObserverForCanvasViewController:self];
  }

  [CRLiOSScribbleInteractionSetupHelper setupScribbleEditingProvider:self scribbleObserver:v26 scribbleActive:1];
  [gestureDispatcher prioritizeRecognizer:v8 overRecognizer:v22];
  [gestureDispatcher allowSimultaneousRecognitionByRecognizers:{v22, self->_secondarySingleTapGestureRecognizer, 0}];
  [gestureDispatcher allowSimultaneousRecognitionByRecognizers:{self->_secondarySingleTapGestureRecognizer, v10, 0}];
  [gestureDispatcher allowSimultaneousRecognitionByRecognizers:{v8, v12, 0}];
  [gestureDispatcher allowSimultaneousRecognitionByRecognizers:{v22, v8, 0}];
  [gestureDispatcher allowSimultaneousRecognitionByRecognizers:{v6, v17, 0}];
  [gestureDispatcher allowSimultaneousRecognitionByRecognizers:{v6, v8, 0}];
}

- (BOOL)touchHitsCanvasViewAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  canvasView = [(CRLiOSCanvasViewController *)self canvasView];
  v6 = [canvasView hitTest:0 withEvent:{x, y}];
  v7 = v6 == canvasView;

  return v7;
}

- (NSArray)passthroughViewsToAllowCanvasInteractionDuringPopoverPresentation
{
  v3 = +[NSMutableArray array];
  canvasView = [(CRLiOSCanvasViewController *)self canvasView];
  [v3 crl_addNonNilObject:canvasView];

  i_quickSelectViewController = [(CRLiOSCanvasViewController *)self i_quickSelectViewController];
  view = [i_quickSelectViewController view];
  [v3 crl_addNonNilObject:view];

  return v3;
}

- (BOOL)i_allowCanvasInteraction:(id)interaction atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(CRLiOSCanvasViewController *)self touchHitsCanvasViewAtPoint:interaction])
  {
    return 1;
  }

  canvasView = [(CRLiOSCanvasViewController *)self canvasView];
  v9 = [canvasView hitTest:0 withEvent:{x, y}];
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v11 = [interactiveCanvasController i_isRepContentPlatformView:v9];

  return v11;
}

- (void)p_handleHoverGesture:(id)gesture
{
  gestureCopy = gesture;
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (-[CRLiOSCanvasViewController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 currentDocumentMode], v8 = objc_claimAutoreleasedReturnValue(), v7, v9 = objc_msgSend(v8, "pencilModeType"), v8, v9 != 1))
  {
    canvasView = [(CRLiOSCanvasViewController *)self canvasView];
    [gestureCopy locationInView:canvasView];
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
      v20 = [(CRLiOSCanvasViewController *)self allowTouchOutsideCanvasViewAtPoint:gestureCopy forGesture:v12, v14];
    }

    v21 = [CRLCanvasEnterExitPlatformObject platformObjectWithGesture:gestureCopy];
    if (!v20)
    {
      goto LABEL_13;
    }

    state = [gestureCopy state];
    if (state <= 2)
    {
      if (state)
      {
        if (state == 1)
        {
          [(CRLCanvasRepEnterExitNotifier *)self->mEnterExitNotifier cursorEnteredAtPoint:v21 withPlatformObject:v17, v19];
        }

        else if (state == 2)
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

    if ((state - 3) < 3)
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
  repDragGestureRecognizer = [(CRLiOSCanvasViewController *)self repDragGestureRecognizer];
  [v3 crl_addNonNilObject:repDragGestureRecognizer];

  singleTapGestureRecognizer = [(CRLiOSCanvasViewController *)self singleTapGestureRecognizer];
  [v3 crl_addNonNilObject:singleTapGestureRecognizer];

  doubleTapGestureRecognizer = [(CRLiOSCanvasViewController *)self doubleTapGestureRecognizer];
  [v3 crl_addNonNilObject:doubleTapGestureRecognizer];

  rectangularMarqueeGestureRecognizer = [(CRLiOSCanvasViewController *)self rectangularMarqueeGestureRecognizer];
  [v3 crl_addNonNilObject:rectangularMarqueeGestureRecognizer];

  return v3;
}

- (BOOL)disallowRectangularMarqueeOperationAtUnscaledPoint:(CGPoint)point
{
  v3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController:point.x];
  if ([v3 currentlyScrolling])
  {
    isInOperation = 1;
  }

  else
  {
    dynamicOperationController = [v3 dynamicOperationController];
    isInOperation = [dynamicOperationController isInOperation];
  }

  return isInOperation;
}

- (id)gesturesThatImmediateMarqueeShouldRequireToFail
{
  singleTapGestureRecognizer = [(CRLiOSCanvasViewController *)self singleTapGestureRecognizer];
  editMenuTapGestureRecognizer = [(CRLiOSCanvasViewController *)self editMenuTapGestureRecognizer];
  v5 = [NSSet setWithObjects:singleTapGestureRecognizer, editMenuTapGestureRecognizer, 0];

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

  gesturesToAdjustIfStylusShouldSelectAndScroll = [(CRLiOSCanvasViewController *)self gesturesToAdjustIfStylusShouldSelectAndScroll];
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CRLiOSCanvasViewController *)self delegate];
    currentDocumentMode = [delegate2 currentDocumentMode];

    v9 = [currentDocumentMode gesturesToAdjustIfPencilShouldSelectAndScrollFromGestures:gesturesToAdjustIfStylusShouldSelectAndScroll];

    gesturesToAdjustIfStylusShouldSelectAndScroll = v9;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = gesturesToAdjustIfStylusShouldSelectAndScroll;
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
  view = [(CRLiOSCanvasViewController *)self view];
  gestureRecognizers = [view gestureRecognizers];

  v5 = [gestureRecognizers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(gestureRecognizers);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isEnabled])
        {
          delegate = [v9 delegate];

          if (delegate == self)
          {
            [v9 setEnabled:0];
            [v9 setEnabled:1];
          }
        }
      }

      v6 = [gestureRecognizers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  editMenuTapGestureRecognizer = [(CRLiOSCanvasViewController *)self editMenuTapGestureRecognizer];
  isEnabled = [editMenuTapGestureRecognizer isEnabled];

  if (isEnabled)
  {
    editMenuTapGestureRecognizer2 = [(CRLiOSCanvasViewController *)self editMenuTapGestureRecognizer];
    [editMenuTapGestureRecognizer2 setIgnoreTargetAction:1];
  }
}

- (void)i_updateZoomGestureRecognizer
{
  canvasLayer = [(CRLiOSCanvasViewController *)self canvasLayer];
  allowsPinchZoom = [canvasLayer allowsPinchZoom];
  zoomGestureRecognizer = [(CRLiOSCanvasViewController *)self zoomGestureRecognizer];
  [zoomGestureRecognizer setEnabled:allowsPinchZoom];
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)point withRecognizer:(id)recognizer
{
  y = point.y;
  x = point.x;
  recognizerCopy = recognizer;
  self->mLastTapPoint.x = x;
  self->mLastTapPoint.y = y;
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CRLiOSCanvasViewController *)self delegate];
    currentDocumentMode = [delegate2 currentDocumentMode];

    if (!currentDocumentMode)
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

    v15 = [currentDocumentMode handleSingleTapAtPoint:objc_msgSend(recognizerCopy touchType:{"touchTypeForTap"), x, y}];

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
  v23 = sub_10042B6C0([recognizerCopy touchTypeForTap]);
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

    repForSelecting = [v28 repForSelecting];
    if (repForSelecting || ([v28 shouldIgnoreSingleTapAtPoint:recognizerCopy withRecognizer:{x, y}] & 1) == 0)
    {
      v30 = ([recognizerCopy modifierFlags] & 0x120000) != 0;
      isCurrentlyInQuickSelectMode = [(CRLiOSCanvasViewController *)self isCurrentlyInQuickSelectMode];
      v32 = objc_loadWeakRetained(&self->mICC);
      v16 = [v32 handleSingleTapAtPoint:isCurrentlyInQuickSelectMode ^ v30 extendingSelection:v23 inputType:{x, y}];
    }

    else
    {
      v16 = 1;
    }
  }

LABEL_32:
  return v16;
}

- (void)handleDoubleTap:(id)tap
{
  tapCopy = tap;
  v5 = objc_opt_class();
  v12 = sub_100014370(v5, tapCopy);

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

- (BOOL)handleDoubleTapAtPoint:(CGPoint)point withRecognizer:(id)recognizer
{
  y = point.y;
  x = point.x;
  recognizerCopy = recognizer;
  v8 = objc_opt_class();
  v9 = sub_100014370(v8, recognizerCopy);
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

  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    delegate2 = [(CRLiOSCanvasViewController *)self delegate];
    currentDocumentMode = [delegate2 currentDocumentMode];

    v19 = objc_opt_class();
    v20 = sub_100014370(v19, recognizerCopy);
    touchTypeForTap = [v20 touchTypeForTap];

    v14 |= [currentDocumentMode shouldHandleDoubleTapAtPoint:touchTypeForTap touchType:{x, y}];
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
  repForSelecting = [v24 repForSelecting];

  if (repForSelecting)
  {
    info = [repForSelecting info];

    if (info)
    {
      v42 = recognizerCopy;
      v43 = v13;
      v27 = objc_loadWeakRetained(&self->mICC);
      selectionModelTranslator = [v27 selectionModelTranslator];
      v29 = objc_loadWeakRetained(&self->mICC);
      editorController = [v29 editorController];
      selectionPath = [editorController selectionPath];
      v32 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

      v33 = objc_loadWeakRetained(&self->mICC);
      canvasEditor = [v33 canvasEditor];

      if ([v32 count] != 1 || (objc_msgSend(repForSelecting, "info"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v32, "containsObject:", v35), v35, (v36 & 1) == 0))
      {
        info2 = [repForSelecting info];
        v38 = [canvasEditor selectionPathWithInfo:info2];
        interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
        editorController2 = [interactiveCanvasController editorController];
        [editorController2 setSelectionPath:v38];
      }

      recognizerCopy = v42;
      v13 = v43;
    }
  }

  v22 = 0;
LABEL_17:

  return v22;
}

- (void)p_handleTapForEditMenu:(id)menu
{
  menuCopy = menu;
  v5 = objc_opt_class();
  v35 = sub_100014370(v5, menuCopy);

  v6 = v35;
  if (v35)
  {
    ignoreTargetAction = [v35 ignoreTargetAction];
    v6 = v35;
    if ((ignoreTargetAction & 1) == 0)
    {
      interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      if (![interactiveCanvasController shouldAllowKeyCommands])
      {
        goto LABEL_25;
      }

      isCurrentlyInQuickSelectMode = [(CRLiOSCanvasViewController *)self isCurrentlyInQuickSelectMode];

      v6 = v35;
      if (isCurrentlyInQuickSelectMode)
      {
        goto LABEL_26;
      }

      WeakRetained = objc_loadWeakRetained(&self->mICC);
      canvasView = [(CRLiOSCanvasViewController *)self canvasView];
      [v35 locationInView:canvasView];
      [WeakRetained convertBoundsToUnscaledPoint:?];
      v13 = v12;
      v15 = v14;

      touchedRep = [v35 touchedRep];
      interactiveCanvasController = touchedRep;
      if (!touchedRep)
      {
        goto LABEL_25;
      }

      if ([touchedRep hasBeenRemoved])
      {
        goto LABEL_25;
      }

      repForSelecting = [interactiveCanvasController repForSelecting];

      if (repForSelecting != interactiveCanvasController)
      {
        goto LABEL_25;
      }

      if (([interactiveCanvasController isSelectedIgnoringLocking] & 1) == 0 && -[CRLiOSCanvasViewController shouldSelectAndShowEditMenuOnFirstTapForRep:](self, "shouldSelectAndShowEditMenuOnFirstTapForRep:", interactiveCanvasController))
      {
        v18 = objc_loadWeakRetained(&self->mICC);
        [v18 endEditing];

        v19 = objc_loadWeakRetained(&self->mICC);
        canvasEditor = [v19 canvasEditor];

        info = [interactiveCanvasController info];
        v22 = [canvasEditor selectionPathWithInfo:info];
        interactiveCanvasController2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
        editorController = [interactiveCanvasController2 editorController];
        [editorController setSelectionPath:v22];
      }

      self->mLastTapPoint = CGPointZero;
      if (![interactiveCanvasController isSelectedIgnoringLocking] || (objc_msgSend(interactiveCanvasController, "shouldIgnoreEditMenuTapAtPoint:withRecognizer:", v35, v13, v15) & 1) != 0)
      {
        goto LABEL_25;
      }

      if ([interactiveCanvasController wantsToManuallyHandleEditMenuTapAtPoint:{v13, v15}])
      {
        [interactiveCanvasController handleEditMenuTapAtPoint:sub_10042B6C0(objc_msgSend(v35 inputType:{"touchTypeForTap")), v13, v15}];
      }

      else
      {
        if (!self->mContextMenuMightBeDisplayed)
        {
          interactiveCanvasController3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
          editorController2 = [interactiveCanvasController3 editorController];
          selectionPath = [editorController2 selectionPath];
          v28 = [(CRLiOSCanvasViewController *)self p_shouldShowMiniFormatterForSelectionPath:selectionPath];

          if (v28)
          {
            if ([interactiveCanvasController manuallyControlsMiniFormatter])
            {
              goto LABEL_25;
            }

            if (UIAccessibilityIsVoiceOverRunning() && [interactiveCanvasController isSelected])
            {
              [interactiveCanvasController accessibilityActivationPoint];
              [interactiveCanvasController handleDoubleTapAtPoint:1 inputType:?];
              goto LABEL_25;
            }

            miniFormatterPresenter = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
            interactiveCanvasController4 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
            editorController3 = [interactiveCanvasController4 editorController];
            selectionPath2 = [editorController3 selectionPath];
            [miniFormatterPresenter handleSingleTapOnRep:interactiveCanvasController withSelectionPath:selectionPath2];
          }

          else
          {
            miniFormatterPresenter = objc_loadWeakRetained(&self->mICC);
            editorController4 = [miniFormatterPresenter editorController];
            selectionPath3 = [editorController4 selectionPath];
            [(CRLiOSCanvasViewController *)self showEditUIForSelectionPath:selectionPath3];
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = gestureRecognizerCopy;
  v9 = 64;
  mSingleTapGestureRecognizer = self->mSingleTapGestureRecognizer;
  mEditMenuTapGestureRecognizer = self->mEditMenuTapGestureRecognizer;
  if (mSingleTapGestureRecognizer == recognizerCopy && mEditMenuTapGestureRecognizer == gestureRecognizerCopy)
  {
    goto LABEL_34;
  }

  if (mSingleTapGestureRecognizer == gestureRecognizerCopy && mEditMenuTapGestureRecognizer == recognizerCopy)
  {
    goto LABEL_34;
  }

  mRepDragGestureRecognizer = self->mRepDragGestureRecognizer;
  if ((mRepDragGestureRecognizer == recognizerCopy || self->mNudgeGestureRecognizer == recognizerCopy || self->mMultiSelectGestureRecognizer == recognizerCopy) && (mRepDragGestureRecognizer == v8 || self->mNudgeGestureRecognizer == v8 || self->mMultiSelectGestureRecognizer == v8))
  {
    goto LABEL_34;
  }

  v15 = mRepDragGestureRecognizer == recognizerCopy || mRepDragGestureRecognizer == v8;
  if (!v15 || [(CRLiOSRepDragGestureRecognizer *)mRepDragGestureRecognizer state]!= 3 || (v16 = self->mEditMenuTapGestureRecognizer, v17 = 1, v16 != recognizerCopy) && v16 != v8 && (v18 = self->mSingleTapGestureRecognizer, v18 != recognizerCopy) && v18 != v8)
  {
    preventScrollGestureRecognizer = [(CRLiOSCanvasViewController *)self preventScrollGestureRecognizer];
    if (preventScrollGestureRecognizer != recognizerCopy)
    {
      preventScrollGestureRecognizer2 = [(CRLiOSCanvasViewController *)self preventScrollGestureRecognizer];
      v9 = preventScrollGestureRecognizer2;
      if (preventScrollGestureRecognizer2 != v8)
      {

LABEL_36:
        if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9]&& ([(CRLiOSCanvasViewController *)self delegate], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_opt_respondsToSelector(), v28, (v29 & 1) != 0))
        {
          delegate = [(CRLiOSCanvasViewController *)self delegate];
          currentDocumentMode = [delegate currentDocumentMode];

          v17 = [currentDocumentMode gestureRecognizer:recognizerCopy shouldRecognizeSimultaneouslyWithGestureRecognizer:v8];
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_35;
      }
    }

    canvasView = [(CRLiOSCanvasViewController *)self canvasView];
    enclosingScrollView = [canvasView enclosingScrollView];
    panGestureRecognizer = [enclosingScrollView panGestureRecognizer];
    if (panGestureRecognizer == recognizerCopy)
    {
      v32 = 0;
    }

    else
    {
      canvasView2 = [(CRLiOSCanvasViewController *)self canvasView];
      enclosingScrollView2 = [canvasView2 enclosingScrollView];
      panGestureRecognizer2 = [enclosingScrollView2 panGestureRecognizer];
      v32 = panGestureRecognizer2 != v8;
    }

    if (preventScrollGestureRecognizer != recognizerCopy)
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

- (BOOL)shouldIgnoreTextGesture:(id)gesture atPoint:(CGPoint)point
{
  v5 = [(CRLiOSCanvasViewController *)self delegate:gesture];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(CRLiOSCanvasViewController *)self delegate];
    currentDocumentMode = [delegate currentDocumentMode];

    shouldAllowTextGesturesInRestrictedGestureMode = [currentDocumentMode shouldAllowTextGesturesInRestrictedGestureMode];
  }

  else
  {
    shouldAllowTextGesturesInRestrictedGestureMode = 0;
  }

  if ([(CRLiOSCanvasViewController *)self inInspectorPanZoomMode])
  {
    inInspectorTextEditingMode = 1;
    if (shouldAllowTextGesturesInRestrictedGestureMode)
    {
      goto LABEL_10;
    }
  }

  else
  {
    inInspectorTextEditingMode = [(CRLiOSCanvasViewController *)self inInspectorTextEditingMode];
    if (shouldAllowTextGesturesInRestrictedGestureMode)
    {
      goto LABEL_10;
    }
  }

  if ([(CRLiOSCanvasViewController *)self inRestrictedGestureMode])
  {
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v12 = [interactiveCanvasController editingDisabled] ^ 1;

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
      shouldIgnoreTextGestures = [v15 shouldIgnoreTextGestures];
    }

    else
    {
      shouldIgnoreTextGestures = 0;
    }
  }

  else
  {
    shouldIgnoreTextGestures = 0;
  }

  return (inInspectorTextEditingMode | v12 | shouldIgnoreTextGestures) & 1;
}

- (void)p_allTouchesDone:(id)done
{
  view = [(CRLiOSCanvasViewController *)self view];
  window = [view window];
  [window makeKeyWindow];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"CRLInteractiveCanvasControllerAllTouchesInGestureFinished" object:self];
}

- (id)p_reasonStringForIgnoringKeyboardInputWithAllTouchesDoneGestureRecognizer:(id)recognizer
{
  name = [recognizer name];
  v4 = [NSString stringWithFormat:@"All Touches Gestures In Flight (%@)", name];

  return v4;
}

- (void)didStartCountingTouches:(id)touches touchType:(int64_t)type atSomeTouchPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  touchesCopy = touches;
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isEasierConnectionLinesEnabled])
  {
    delegate = [(CRLiOSCanvasViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(CRLiOSCanvasViewController *)self delegate];
      [delegate2 userDidInteractWithCanvas:self];
    }
  }

  [(CRLiOSCanvasViewController *)self p_shouldIgnoreKeyboardInputForTouchType:type atSomeTouchPoint:x, y];
  editingCoordinator = [(CRLiOSCanvasViewController *)self editingCoordinator];
  [editingCoordinator suspendCollaborationWithReason:@"CRLCanvasTouches"];

  if (self->mAllIndirectPointerTouchesDoneGestureRecognizer == touchesCopy)
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

  else if (self->mAllTouchesDoneGestureRecognizer == touchesCopy)
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

- (BOOL)p_shouldIgnoreKeyboardInputForTouchType:(int64_t)type atSomeTouchPoint:(CGPoint)point
{
  if (type == 2)
  {
    y = point.y;
    x = point.x;
    delegate = [(CRLiOSCanvasViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(CRLiOSCanvasViewController *)self delegate];
      currentDocumentMode = [delegate2 currentDocumentMode];

      if (!currentDocumentMode)
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

      pencilModeType = [currentDocumentMode pencilModeType];
      if (pencilModeType == 2)
      {
        v15 = 0;
        goto LABEL_18;
      }

      if (pencilModeType == 1)
      {
        v15 = 1;
LABEL_18:

        return v15;
      }
    }

    pencilMediator = [(CRLiOSCanvasViewController *)self pencilMediator];
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    [WeakRetained convertBoundsToUnscaledPoint:{x, y}];
    v18 = [pencilMediator pencilBehaviorOutsideModesAtUnscaledPoint:?];

    return v18 != 2;
  }

  return 1;
}

- (void)didStopCountingTouches:(id)touches
{
  touchesCopy = touches;
  editingCoordinator = [(CRLiOSCanvasViewController *)self editingCoordinator];
  [editingCoordinator resumeCollaborationWithReason:@"CRLCanvasTouches"];

  WeakRetained = objc_loadWeakRetained(&self->mICC);
  textInputResponder = [WeakRetained textInputResponder];
  [textInputResponder becomeFirstResponder];

  if (self->mAllIndirectPointerTouchesDoneGestureRecognizer == touchesCopy)
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

  else if (self->mAllTouchesDoneGestureRecognizer == touchesCopy)
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v17.receiver = self;
  v17.super_class = CRLiOSCanvasViewController;
  [(CRLiOSCanvasViewController *)&v17 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  view = [(CRLiOSCanvasViewController *)self view];
  [view bounds];
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
    [coordinatorCopy animateAlongsideTransition:v13 completion:v12];
  }

  _Block_object_dispose(v15, 8);
}

- (BOOL)allowTouchOutsideCanvasViewAtPoint:(CGPoint)point forGesture:(id)gesture
{
  y = point.y;
  x = point.x;
  gestureCopy = gesture;
  v8 = gestureCopy;
  mAllIndirectPointerTouchesDoneGestureRecognizer = self->mAllIndirectPointerTouchesDoneGestureRecognizer;
  if (gestureCopy && mAllIndirectPointerTouchesDoneGestureRecognizer != gestureCopy)
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
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    drawingIntelligenceProvider = [interactiveCanvasController drawingIntelligenceProvider];
    v14 = [drawingIntelligenceProvider isDetectionDecoratorViewHitAtScaledPoint:{x, y}];

    goto LABEL_8;
  }

  if (mAllIndirectPointerTouchesDoneGestureRecognizer != gestureCopy)
  {
    goto LABEL_7;
  }

LABEL_5:
  v14 = 1;
LABEL_8:

  return v14;
}

- (id)viewForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->mDelegate);
    canvasView = [v7 viewForGestureRecognizer:recognizerCopy];
  }

  else
  {
    canvasView = [(CRLiOSCanvasViewController *)self canvasView];
  }

  return canvasView;
}

- (CRLiOSCanvasDropInteractionDelegate)dropInteractionDelegate
{
  mDropInteractionDelegate = self->mDropInteractionDelegate;
  if (!mDropInteractionDelegate)
  {
    v4 = [CRLiOSCanvasDropInteractionDelegate alloc];
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v6 = [(CRLiOSCanvasDropInteractionDelegate *)v4 initWithICC:interactiveCanvasController];
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
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v6 = [(CRLiOSCanvasDragInteractionDelegate *)v4 initWithInteractiveCanvasController:interactiveCanvasController];
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
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v6 = [(CRLiOSCanvasContextMenuInteractionDelegate *)v4 initWithInteractiveCanvasController:interactiveCanvasController];
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
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v6 = [(CRLiOSCanvasPointerInteractionDelegate *)v4 initWithInteractiveCanvasController:interactiveCanvasController];
    v7 = self->mPointerInteractionDelegate;
    self->mPointerInteractionDelegate = v6;

    mPointerInteractionDelegate = self->mPointerInteractionDelegate;
  }

  return mPointerInteractionDelegate;
}

- (id)newDragAndDropController
{
  v3 = [CRLiOSDragAndDropController alloc];
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v5 = [(CRLDragAndDropController *)v3 initWithDelegate:self interactiveCanvasController:interactiveCanvasController];

  return v5;
}

- (id)modelContainerForLocalDragContext
{
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  board = [interactiveCanvasController board];

  return board;
}

- (void)dragSessionWillBegin
{
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  canvasView = [interactiveCanvasController canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  panGestureRecognizer = [enclosingScrollView panGestureRecognizer];
  [panGestureRecognizer setState:4];

  singleTapGestureRecognizer = [(CRLiOSCanvasViewController *)self singleTapGestureRecognizer];
  [singleTapGestureRecognizer setState:4];
}

- (BOOL)allowsSystemDragSession
{
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(CRLiOSCanvasViewController *)self delegate];
  allowsSystemDragSession = [delegate2 allowsSystemDragSession];

  return allowsSystemDragSession;
}

- (void)p_setDragLiftDelay:(double)delay
{
  dragInteraction = [(CRLiOSCanvasViewController *)self dragInteraction];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    dragInteraction2 = [(CRLiOSCanvasViewController *)self dragInteraction];
    [dragInteraction2 _setLiftDelay:delay];
  }

  dragInteraction3 = [(CRLiOSCanvasViewController *)self dragInteraction];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    dragInteraction4 = [(CRLiOSCanvasViewController *)self dragInteraction];
    [dragInteraction4 _setPointerLiftDelay:delay];
  }
}

- (BOOL)canInsertBoardItemsFromDragOperationForDragInfo:(id)info
{
  infoCopy = info;
  v5 = objc_opt_class();
  platformDraggingInfo = [infoCopy platformDraggingInfo];

  localDragSession = [platformDraggingInfo localDragSession];
  localContext = [localDragSession localContext];
  v9 = sub_100014370(v5, localContext);

  if (v9)
  {
    modelContainer = [v9 modelContainer];
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    board = [interactiveCanvasController board];
    v13 = modelContainer != board;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)shouldAllowDragOperationForDragInfo:(id)info
{
  infoCopy = info;
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    goto LABEL_5;
  }

  v6 = [delegate shouldRejectDragOperationForDragInfo:infoCopy];
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  if ((v6 & 1) == 0)
  {
LABEL_5:
    v8 = [interactiveCanvasController isInDynamicOperation] ^ 1;
    goto LABEL_6;
  }

  LOBYTE(v8) = 0;
LABEL_6:

  return v8;
}

- (CGRect)targetRectForEditMenu:(id)menu
{
  menuCopy = menu;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  currentEditors = [editorController currentEditors];
  reverseObjectEnumerator = [currentEditors reverseObjectEnumerator];

  v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v91 objects:v97 count:16];
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
        objc_enumerationMutation(reverseObjectEnumerator);
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
        v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v91 objects:v97 count:16];
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
    interactiveCanvasController2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v19 = [interactiveCanvasController2 infosForSelectionPath:menuCopy];

    if ([v19 count])
    {
      WeakRetained = objc_loadWeakRetained(&self->mICC);
      [WeakRetained layoutIfNeeded];

      if ([v19 count] == 1)
      {
        v21 = objc_loadWeakRetained(&self->mICC);
        anyObject = [v19 anyObject];
        v23 = [v21 repForInfo:anyObject];

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
          v80 = menuCopy;
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

                    layout = [*(*(&v82 + 1) + 8 * j) layout];
                    [layout insertionFrameInRoot];
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
          menuCopy = v80;
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
      interactiveCanvasController3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      [(CRLiOSCanvasViewController *)self lastTapPoint];
      [interactiveCanvasController3 convertUnscaledToBoundsPoint:?];
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

- (void)showEditMenuForSelectionPath:(id)path
{
  pathCopy = path;
  v5 = +[UIMenuController sharedMenuController];
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = objc_loadWeakRetained(&self->mDelegate);
    allowEditMenuToAppear = [v7 allowEditMenuToAppear];

    if (!allowEditMenuToAppear)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ([(CRLiOSCanvasViewController *)self becomeFirstResponderIfAppropriate])
  {
    view = [(CRLiOSCanvasViewController *)self view];
    window = [view window];
    [window makeKeyWindow];

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

    [(CRLiOSCanvasViewController *)self targetRectForEditMenu:pathCopy];
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
      [(CRLiOSCanvasViewController *)self p_buildMenuItems:v21 forSelectionPath:pathCopy];
      [v5 setMenuItems:v21];
      [(CRLiOSCanvasViewController *)self p_targetRectForMenuControllerPositionForSelectionPath:pathCopy];
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

      interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      v36 = [interactiveCanvasController infosForSelectionPath:pathCopy];

      v37 = [NSSet setWithSet:v36];
      v38 = self->mContextMenuController;
      canvasView = [(CRLiOSCanvasViewController *)self canvasView];
      [(CRLiOSContextMenuController *)v38 showContextMenuFromView:canvasView rect:1 animated:v37 withChangeSources:v23, v25, v27, v29];

      self->mContextMenuMightBeDisplayed = 1;
    }
  }

LABEL_20:
}

- (CGRect)p_targetRectForMenuControllerPositionForSelectionPath:(id)path
{
  pathCopy = path;
  v5 = +[UIMenuController sharedMenuController];
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  [WeakRetained visibleBoundsRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(CRLiOSCanvasViewController *)self targetRectForEditMenu:pathCopy];
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
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v30 = [interactiveCanvasController infosForSelectionPath:pathCopy];

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

- (void)p_buildMenuTitles:(id)titles forSelectionPath:(id)path
{
  titlesCopy = titles;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Select Objects…" value:0 table:0];

  [titlesCopy addObject:v7];
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  v10 = [canvasEditor canvasEditorCanUngroupWithSender:0];

  interactiveCanvasController2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  canvasEditor2 = [interactiveCanvasController2 canvasEditor];
  v13 = [canvasEditor2 canvasEditorCanGroupWithSender:0];

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

  [titlesCopy addObject:v18];
LABEL_6:
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Unlock" value:0 table:0];

  v36 = v20;
  [titlesCopy addObject:v20];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  interactiveCanvasController3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  editorController = [interactiveCanvasController3 editorController];
  currentEditors = [editorController currentEditors];

  obj = currentEditors;
  v24 = [currentEditors countByEnumeratingWithState:&v42 objects:v47 count:16];
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

                title = [*(*(&v38 + 1) + 8 * v34) title];
                [titlesCopy addObject:title];

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

- (void)p_buildMenuItems:(id)items forSelectionPath:(id)path
{
  itemsCopy = items;
  pathCopy = path;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Select Objects…" value:0 table:0];

  v10 = [[UIMenuItem alloc] initWithTitle:v9 action:"enterQuickSelectMode:"];
  [itemsCopy addObject:v10];

  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v49 = pathCopy;
  v12 = [interactiveCanvasController infosForSelectionPath:pathCopy];

  interactiveCanvasController2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController2 canvasEditor];
  v15 = [canvasEditor canvasEditorCanUngroupWithSender:0];

  interactiveCanvasController3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  canvasEditor2 = [interactiveCanvasController3 canvasEditor];
  v18 = [canvasEditor2 canvasEditorCanGroupWithSender:0];

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
  [itemsCopy addObject:v22];

LABEL_6:
  interactiveCanvasController4 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  canvasEditor3 = [interactiveCanvasController4 canvasEditor];
  canvasEditorHelper = [canvasEditor3 canvasEditorHelper];
  v26 = [canvasEditorHelper canvasEditorCanPerformShowMiniFormatterToExitDrawingModeActionWithSender:0];

  if (v26 == 1)
  {
    v27 = +[NSBundle mainBundle];
    v28 = [v27 localizedStringForKey:@"Edit" value:0 table:0];

    v29 = [[UIMenuItem alloc] initWithTitle:v28 action:"showMiniFormatterToExitDrawingMode:"];
    [itemsCopy addObject:v29];
  }

  if ([v12 count] == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    anyObject = [v12 anyObject];
    v32 = [WeakRetained repForInfo:anyObject];

    if ([v32 isLocked])
    {
      v33 = 0;
    }

    else
    {
      itemsToAddToEditMenu = [v32 itemsToAddToEditMenu];
      [itemsCopy addObjectsFromArray:itemsToAddToEditMenu];

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
  [itemsCopy addObject:v37];
  if (v33)
  {
    v38 = [(CRLiOSCanvasViewController *)self itemsToAddToEditMenuForRep:v32];
    v39 = v38;
    if (v38 && [v38 count])
    {
      [itemsCopy addObjectsFromArray:v39];
    }
  }

  v48 = v32;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  interactiveCanvasController5 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  editorController = [interactiveCanvasController5 editorController];
  currentEditors = [editorController currentEditors];

  v43 = [currentEditors countByEnumeratingWithState:&v50 objects:v54 count:16];
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
          objc_enumerationMutation(currentEditors);
        }

        v47 = *(*(&v50 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v47 addContextualMenuItemsToArray:itemsCopy];
        }
      }

      v44 = [currentEditors countByEnumeratingWithState:&v50 objects:v54 count:16];
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
    editorController = [WeakRetained editorController];
    selectionPath = [editorController selectionPath];
    [(CRLiOSCanvasViewController *)self showEditMenuForSelectionPath:selectionPath];
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
    miniFormatterPresenter = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
    isPresentingMiniFormatter = [miniFormatterPresenter isPresentingMiniFormatter];

    if (isPresentingMiniFormatter)
    {
      miniFormatterPresenter2 = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
      [miniFormatterPresenter2 dismissMiniFormatter];
    }

    else
    {
      interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      layerHost = [interactiveCanvasController layerHost];
      asiOSCVC = [layerHost asiOSCVC];
      isCurrentlyInQuickSelectMode = [asiOSCVC isCurrentlyInQuickSelectMode];

      if ((isCurrentlyInQuickSelectMode & 1) == 0)
      {

        [(CRLiOSCanvasViewController *)self showDefaultEditUIForCurrentSelection];
      }
    }
  }
}

- (void)showDefaultEditUIForCurrentSelection
{
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  editorController = [WeakRetained editorController];
  selectionPath = [editorController selectionPath];

  if ([(CRLiOSCanvasViewController *)self p_shouldShowMiniFormatterForSelectionPath:selectionPath])
  {
    miniFormatterPresenter = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
    [miniFormatterPresenter presentMiniFormatterForSelectionPath:selectionPath];

    goto LABEL_8;
  }

  delegate = [(CRLiOSCanvasViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(CRLiOSCanvasViewController *)self delegate];
    currentDocumentMode = [delegate2 currentDocumentMode];
    wantsLegacyEditMenu = [currentDocumentMode wantsLegacyEditMenu];

    if (wantsLegacyEditMenu)
    {
      [(CRLiOSCanvasViewController *)self showEditMenuForSelectionPath:selectionPath];
      goto LABEL_8;
    }
  }

  else
  {
  }

  [(CRLiOSCanvasViewController *)self showEditUIForSelectionPath:selectionPath];
LABEL_8:
}

- (id)editMenuConfigrationForSelectionPath:(id)path withConfigurationIdentifier:(id)identifier
{
  v9 = 0;
  identifierCopy = identifier;
  [(CRLiOSCanvasViewController *)self p_targetPointForEditMenuForSelectionPath:path outModifiedDirection:&v9];
  v7 = [UIEditMenuConfiguration configurationWithIdentifier:identifierCopy sourcePoint:?];

  [v7 setPreferredArrowDirection:v9];

  return v7;
}

- (CGPoint)p_targetPointForEditMenuForSelectionPath:(id)path outModifiedDirection:(int64_t *)direction
{
  [(CRLiOSCanvasViewController *)self targetRectForEditMenu:path];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v14 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    [interactiveCanvasController visibleBoundsRect];
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

    *direction = v30;
  }

  v31 = v7 + v11 * 0.5;
  v32 = v9;
  result.y = v32;
  result.x = v31;
  return result;
}

- (void)showEditUIForSelectionPath:(id)path
{
  v5 = [(CRLiOSCanvasViewController *)self editMenuConfigrationForSelectionPath:path withConfigurationIdentifier:@"CRLDefault"];
  editMenuInteraction = [(CRLiOSCanvasViewController *)self editMenuInteraction];
  [editMenuInteraction presentEditMenuWithConfiguration:v5];
}

- (void)hideEditMenu
{
  editMenuInteraction = [(CRLiOSCanvasViewController *)self editMenuInteraction];
  [editMenuInteraction dismissMenu];

  v4 = +[UIMenuController sharedMenuController];
  [v4 hideMenu];

  self->mContextMenuMightBeDisplayed = 0;
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];

  return editingCoordinator;
}

- (void)contextMenuDidHideForContextMenuController:(id)controller
{
  mContextMenuController = self->mContextMenuController;
  if (mContextMenuController != controller)
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

- (BOOL)contextMenuPositionShouldUpdateForContextMenuController:(id)controller
{
  if (self->mContextMenuController != controller)
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

  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];
  [(CRLiOSCanvasViewController *)self p_targetRectForMenuControllerPositionForSelectionPath:selectionPath];
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

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ([(CRLiOSCanvasViewController *)self p_isAccessibilityTextResponderAction:action])
  {
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    textInputResponder = [interactiveCanvasController textInputResponder];

    if (objc_opt_respondsToSelector())
    {
      goto LABEL_9;
    }
  }

  if (!sel_isEqual(action, "find:"))
  {
    goto LABEL_8;
  }

  v9 = objc_opt_class();
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  textInputResponder = sub_100013F00(v9, delegate);

  if (!textInputResponder || ([textInputResponder canPerformAction:action withSender:senderCopy] & 1) == 0)
  {

LABEL_8:
    v12.receiver = self;
    v12.super_class = CRLiOSCanvasViewController;
    textInputResponder = [(CRLiOSCanvasViewController *)&v12 targetForAction:action withSender:senderCopy];
  }

LABEL_9:

  return textInputResponder;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (self->mHasBeenTornDown || [(CRLiOSCanvasViewController *)self p_currentModeIsFind])
  {
    v7 = 0;
  }

  else
  {
    v9 = "bringToFront:" == action || "sendToBack:" == action;
    if (v9 && (objc_opt_self(), v10 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass & 1) != 0))
    {
      v7 = 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->mICC);
      tmCoordinator = [WeakRetained tmCoordinator];
      controllingTM = [tmCoordinator controllingTM];
      tracker = [controllingTM tracker];

      if (tracker && (objc_opt_respondsToSelector() & 1) != 0 && ([tracker disallowAllActionsWhileTracking] & 1) != 0)
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
          v7 = [v17 canPerformInteractiveAction:action withSender:senderCopy];
        }
      }
    }
  }

  return v7;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  action = [commandCopy action];
  v6 = action;
  if (action == "sendToBack:" || action == "bringToFront:")
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

    [commandCopy setAttributes:v10];
  }

LABEL_12:
  editorController = [(CRLiOSCanvasViewController *)self editorController];
  v12 = [editorController editorForEditAction:v6 withSender:commandCopy];

  if (objc_opt_respondsToSelector())
  {
    [v12 updateStateForCommand:commandCopy];
  }

  v13.receiver = self;
  v13.super_class = CRLiOSCanvasViewController;
  [(CRLiOSCanvasViewController *)&v13 validateCommand:commandCopy];
}

- (void)setContextMenuMightBeDisplayed:(BOOL)displayed
{
  if (!displayed)
  {
    v5 = +[UIMenuController sharedMenuController];
    isMenuVisible = [v5 isMenuVisible];

    if (isMenuVisible)
    {
      [(CRLiOSCanvasViewController *)self hideEditMenu];
    }
  }

  self->mContextMenuMightBeDisplayed = displayed;
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(CRLiOSCanvasViewController *)self hideEditMenu];
  }

  WeakRetained = objc_loadWeakRetained(&self->mICC);
  [WeakRetained makeEditorPerformAction:a2 withSender:cutCopy];
}

- (void)showMiniFormatterToExitDrawingMode:(id)mode
{
  modeCopy = mode;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CRLiOSCanvasViewController *)self hideEditMenu];
  }

  WeakRetained = objc_loadWeakRetained(&self->mICC);
  canvasEditor = [WeakRetained canvasEditor];
  canvasEditorHelper = [canvasEditor canvasEditorHelper];
  [canvasEditorHelper showMiniFormatterToExitDrawingMode:modeCopy];
}

- (void)unlock:(id)unlock
{
  unlockCopy = unlock;
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  [interactiveCanvasController makeEditorPerformAction:a2 withSender:unlockCopy];

  objc_opt_class();
  LOBYTE(a2) = objc_opt_isKindOfClass();

  if (a2)
  {
    interactiveCanvasController2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    editorController = [interactiveCanvasController2 editorController];
    selectionPath = [editorController selectionPath];
    [(CRLiOSCanvasViewController *)self showEditMenuForSelectionPath:selectionPath];
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

  canvasView = [(CRLiOSCanvasViewController *)self canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];

  if ([enclosingScrollView isScrollEnabled])
  {
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    currentlyScrolling = [interactiveCanvasController currentlyScrolling];

    if (currentlyScrolling)
    {
      [enclosingScrollView setScrollEnabled:0];
      [enclosingScrollView setScrollEnabled:1];
      [enclosingScrollView contentOffset];
      [enclosingScrollView setContentOffset:0 animated:?];
    }
  }
}

- (void)scrollViewDidScroll
{
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isEasierConnectionLinesEnabled])
  {
    delegate = [(CRLiOSCanvasViewController *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [(CRLiOSCanvasViewController *)self delegate];
      [delegate2 userDidInteractWithCanvas:self];
    }
  }
}

- (void)enterQuickSelectMode
{
  miniFormatterPresenter = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
  isPresentingMiniFormatter = [miniFormatterPresenter isPresentingMiniFormatter];

  if ([(CRLiOSCanvasViewController *)self allowedToEnterQuickSelectMode]&& isPresentingMiniFormatter)
  {
    miniFormatterPresenter2 = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
    [miniFormatterPresenter2 dismissMiniFormatter];
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
    enclosingScrollView = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:enclosingScrollView lineNumber:2267 isFatal:0 description:"Attempting to enter Quick Select mode at an inappropriate time."];
  }

  else
  {
    delegate = [(CRLiOSCanvasViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(CRLiOSCanvasViewController *)self delegate];
      [delegate2 willEnterQuickSelectModeForCanvasViewController:self];
    }

    [(CRLiOSCanvasViewController *)self beginPreventingDefaultPencilBehaviors];
    v9 = [[CRLiOSQuickSelectViewController alloc] initWithDelegate:self];
    mQuickSelectViewController = self->mQuickSelectViewController;
    self->mQuickSelectViewController = v9;

    delegate3 = [(CRLiOSCanvasViewController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate4 = [(CRLiOSCanvasViewController *)self delegate];
      [delegate4 didEnterQuickSelectModeForCanvasViewController:self];
    }

    delegate5 = [(CRLiOSCanvasViewController *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      delegate6 = [(CRLiOSCanvasViewController *)self delegate];
      v17 = [delegate6 quickSelectHUDParentViewForCanvasViewController:self];
    }

    else
    {
      v17 = 0;
    }

    v35 = v17;
    [(CRLiOSQuickSelectViewController *)self->mQuickSelectViewController presentOnCanvasViewController:self parentView:v17];
    canvasView = [(CRLiOSCanvasViewController *)self canvasView];
    enclosingScrollView = [canvasView enclosingScrollView];

    panGestureRecognizer = [enclosingScrollView panGestureRecognizer];
    self->mEnclosingScrollViewPanGestureMinimumTouchCountBeforeQuickSelect = [panGestureRecognizer minimumNumberOfTouches];

    panGestureRecognizer2 = [enclosingScrollView panGestureRecognizer];
    [panGestureRecognizer2 setMinimumNumberOfTouches:2];

    self->mEditMenuTapGestureRecognizerEnabledBeforeQuickSelect = [(CRLiOSEditMenuTapGestureRecognizer *)self->mEditMenuTapGestureRecognizer isEnabled];
    [(CRLiOSEditMenuTapGestureRecognizer *)self->mEditMenuTapGestureRecognizer setEnabled:0];
    delegate7 = [(CRLiOSCanvasViewController *)self delegate];
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      delegate8 = [(CRLiOSCanvasViewController *)self delegate];
      [delegate8 updateToolbarButtons];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    canvas = [WeakRetained canvas];
    topLevelReps = [canvas topLevelReps];

    v30 = [topLevelReps countByEnumeratingWithState:&v36 objects:v40 count:16];
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
            objc_enumerationMutation(topLevelReps);
          }

          v34 = *(*(&v36 + 1) + 8 * i);
          [v34 recursivelyPerformSelectorIfImplemented:"invalidateKnobs"];
          [v34 recursivelyPerformSelectorIfImplemented:"stopPlaybackIfNeeded"];
        }

        v31 = [topLevelReps countByEnumeratingWithState:&v36 objects:v40 count:16];
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

- (CGRect)visibleCanvasRectForQuickSelectViewController:(id)controller
{
  controllerCopy = controller;
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  [interactiveCanvasController visibleScaledRectForCanvasUI];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    delegate2 = [(CRLiOSCanvasViewController *)self delegate];
    [delegate2 safeInsetsForTemporaryHUDsToAvoidViewsObscuringCanvasScrollViewForCanvasViewController:self];
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
  if ([controllerCopy isInCompactViewModeForCompactFrame:v23 andRegularSizeFrame:{v24, v11, v25, v27, v24, v28, v25}])
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
  p_currentModeAllowsQuickSelect = [(CRLiOSCanvasViewController *)self p_currentModeAllowsQuickSelect];
  if (p_currentModeAllowsQuickSelect)
  {

    LOBYTE(p_currentModeAllowsQuickSelect) = [(CRLiOSCanvasViewController *)self p_editorAllowsQuickSelect];
  }

  return p_currentModeAllowsQuickSelect;
}

- (BOOL)p_currentModeAllowsQuickSelect
{
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(CRLiOSCanvasViewController *)self delegate];
  currentDocumentMode = [delegate2 currentDocumentMode];

  if (!currentDocumentMode)
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

  v10 = [currentDocumentMode allowedToEnterQuickSelectModeForCanvasViewController:self];

  return v10;
}

- (BOOL)p_currentModeIsFind
{
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CRLiOSCanvasViewController *)self delegate];
    currentDocumentMode = [delegate2 currentDocumentMode];

    if (!currentDocumentMode)
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
  editorController = [(CRLiOSCanvasViewController *)self editorController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100385E58;
  v4[3] = &unk_101840680;
  v4[4] = &v5;
  [editorController enumerateEditorsOnStackUsingBlock:v4];

  LOBYTE(editorController) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return editorController;
}

- (void)p_leaveQuickSelectMode
{
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CRLiOSCanvasViewController *)self delegate];
    [delegate2 willLeaveQuickSelectModeForCanvasViewController:self];
  }

  [(CRLiOSQuickSelectViewController *)self->mQuickSelectViewController dismiss];
  canvasView = [(CRLiOSCanvasViewController *)self canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];

  mEnclosingScrollViewPanGestureMinimumTouchCountBeforeQuickSelect = self->mEnclosingScrollViewPanGestureMinimumTouchCountBeforeQuickSelect;
  panGestureRecognizer = [enclosingScrollView panGestureRecognizer];
  [panGestureRecognizer setMinimumNumberOfTouches:mEnclosingScrollViewPanGestureMinimumTouchCountBeforeQuickSelect];

  [(CRLiOSEditMenuTapGestureRecognizer *)self->mEditMenuTapGestureRecognizer setEnabled:self->mEditMenuTapGestureRecognizerEnabledBeforeQuickSelect];
  mQuickSelectViewController = self->mQuickSelectViewController;
  self->mQuickSelectViewController = 0;

  delegate3 = [(CRLiOSCanvasViewController *)self delegate];
  LOBYTE(panGestureRecognizer) = objc_opt_respondsToSelector();

  if (panGestureRecognizer)
  {
    delegate4 = [(CRLiOSCanvasViewController *)self delegate];
    [delegate4 didLeaveQuickSelectModeForCanvasViewController:self];
  }

  delegate5 = [(CRLiOSCanvasViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate6 = [(CRLiOSCanvasViewController *)self delegate];
    [delegate6 updateToolbarButtons];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  canvas = [WeakRetained canvas];
  topLevelReps = [canvas topLevelReps];

  v19 = [topLevelReps countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [*(*(&v23 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"invalidateKnobs"];
      }

      v20 = [topLevelReps countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v20);
  }

  [(CRLiOSCanvasViewController *)self endPreventingDefaultPencilBehaviors];
}

- (CGRect)visibleScaledRectForCanvasUI
{
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  [interactiveCanvasController visibleScaledRectForCanvasUI];
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
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];

  return editorController;
}

- (void)didDismissQuickSelectViewController:(id)controller
{
  if (self->mQuickSelectViewController == controller)
  {
    v4 = [(CRLiOSCanvasViewController *)self shouldExitQuickSelectModeForQuickSelectViewController:?];
    [(CRLiOSCanvasViewController *)self leaveQuickSelectModeIfNeeded];
    if ((v4 & 1) == 0)
    {
      interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      editingDisabled = [interactiveCanvasController editingDisabled];

      if ((editingDisabled & 1) == 0)
      {
        interactiveCanvasController2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
        selectionModelTranslator = [interactiveCanvasController2 selectionModelTranslator];
        interactiveCanvasController3 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
        editorController = [interactiveCanvasController3 editorController];
        selectionPath = [editorController selectionPath];
        v12 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];
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
    viewController = [(CRLiOSAlignmentToolsController *)v3 viewController];
    [(CRLiOSCanvasViewController *)self presentViewController:viewController animated:1 completion:0];

    mAlignmentController = self->mAlignmentController;
    self->mAlignmentController = v3;
  }
}

- (void)userDismissedAlignmentToolsController:(id)controller
{
  mAlignmentController = self->mAlignmentController;
  if (mAlignmentController != controller)
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

- (void)alignmentToolsControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  mAlignmentController = dismissCopy;
  if (self->mAlignmentController != dismissCopy)
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
    presentedViewController = [(CRLiOSCanvasViewController *)self presentedViewController];
    viewController = [(CRLiOSAlignmentToolsController *)self->mAlignmentController viewController];

    if (presentedViewController == viewController)
    {
      [presentedViewController dismissViewControllerAnimated:1 completion:0];
    }

    v14 = self->mAlignmentController;
    self->mAlignmentController = 0;
  }
}

- (BOOL)inRestrictedGestureMode
{
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    currentDocumentMode = [delegate currentDocumentMode];
    v4 = currentDocumentMode;
    if (currentDocumentMode)
    {
      wantsCanvasInRestrictedGestureMode = [currentDocumentMode wantsCanvasInRestrictedGestureMode];
    }

    else
    {
      wantsCanvasInRestrictedGestureMode = 0;
    }
  }

  else
  {
    wantsCanvasInRestrictedGestureMode = 0;
  }

  return wantsCanvasInRestrictedGestureMode;
}

- (BOOL)allowGestureInRestrictedGestureMode:(id)mode
{
  modeCopy = mode;
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    currentDocumentMode = [delegate currentDocumentMode];
    v7 = currentDocumentMode;
    if (currentDocumentMode)
    {
      v8 = [currentDocumentMode allowGestureInRestrictedGestureMode:modeCopy];
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
  inInspectorPanZoomMode = [v5 inInspectorPanZoomMode];

  return inInspectorPanZoomMode;
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
  inInspectorTextEditingMode = [v5 inInspectorTextEditingMode];

  return inInspectorTextEditingMode;
}

- (void)addInspectorPanZoomModeGRsToArray:(id)array
{
  arrayCopy = array;
  zoomGestureRecognizer = [(CRLiOSCanvasViewController *)self zoomGestureRecognizer];
  [arrayCopy addObject:zoomGestureRecognizer];

  singleTapGestureRecognizer = [(CRLiOSCanvasViewController *)self singleTapGestureRecognizer];
  [arrayCopy addObject:singleTapGestureRecognizer];

  if ([(CRLiOSCanvasViewController *)self inMediaBrowsingMode])
  {
    knobDragGestureRecognizer = [(CRLiOSCanvasViewController *)self knobDragGestureRecognizer];
    [arrayCopy addObject:knobDragGestureRecognizer];
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
  inMediaBrowsingMode = [v5 inMediaBrowsingMode];

  return inMediaBrowsingMode;
}

- (void)p_handlePencilDown:(id)down
{
  downCopy = down;
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  canvasView = [(CRLiOSCanvasViewController *)self canvasView];
  [downCopy locationInView:canvasView];
  v8 = v7;
  v10 = v9;

  [WeakRetained convertBoundsToUnscaledPoint:{v8, v10}];
  v12 = v11;
  v14 = v13;

  v15 = objc_loadWeakRetained(&self->mICC);
  freehandDrawingToolkit = [v15 freehandDrawingToolkit];
  v17 = [freehandDrawingToolkit freehandDrawingBehaviorForTouchType:2 atUnscaledPoint:{v12, v14}];

  if (v17 == 1)
  {
    v18 = objc_loadWeakRetained(&self->mICC);
    canvasEditor = [v18 canvasEditor];
    v20 = +[NSSet set];
    v25 = [canvasEditor selectionPathWithInfos:v20];

    v21 = objc_loadWeakRetained(&self->mICC);
    editorController = [v21 editorController];
    [editorController setSelectionPath:v25];

    v23 = objc_loadWeakRetained(&self->mICC);
    freehandDrawingToolkit2 = [v23 freehandDrawingToolkit];
    [freehandDrawingToolkit2 beginDrawingModeIfNeededForTouchType:2];
  }
}

- (void)p_handleSingleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = objc_opt_class();
  v17 = sub_100014370(v5, gestureCopy);

  v6 = v17;
  if (v17)
  {
    v7 = [v17 state] == 4;
    v6 = v17;
    if (!v7)
    {
      v8 = objc_opt_class();
      presentedViewController = [(CRLiOSCanvasViewController *)self presentedViewController];
      v10 = sub_100014370(v8, presentedViewController);

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

- (void)p_zoomWithGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if (state == 3)
  {
    v9 = 0;
    v10 = 2;
  }

  else if (state == 2)
  {
    v9 = 1;
    v10 = 1;
  }

  else if (state == 1)
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
    canvasLayer = [(CRLiOSCanvasViewController *)self canvasLayer];
    v13 = [(CRLCanvasZoomTracker *)v11 initWithCanvasLayer:canvasLayer];
    mCanvasZoomTracker = self->mCanvasZoomTracker;
    self->mCanvasZoomTracker = v13;

    [(CRLCanvasZoomTracker *)self->mCanvasZoomTracker setDelegate:self];
  }

  canvasView = [(CRLiOSCanvasViewController *)self canvasView];
  superview = [canvasView superview];
  [gestureCopy locationInView:superview];
  v18 = v17;
  v20 = v19;

  canvasView2 = [(CRLiOSCanvasViewController *)self canvasView];
  canvasView3 = [(CRLiOSCanvasViewController *)self canvasView];
  superview2 = [canvasView3 superview];
  [canvasView2 convertPoint:superview2 fromView:{v18, v20}];
  v25 = v24;
  v27 = v26;

  if (!v9 || [gestureCopy numberOfTouches] == 2 || !objc_msgSend(gestureCopy, "numberOfTouches"))
  {
    v28 = self->mCanvasZoomTracker;
    [gestureCopy scale];
    v30 = v29;
    [gestureCopy velocity];
    [(CRLCanvasZoomTracker *)v28 zoomWithScale:v10 velocity:v30 locationInView:v31 phase:v25, v27];
  }
}

- (void)canvasZoomTracker:(id)tracker willBeginViewScaleFeedbackWithZoomMethod:(int64_t)method
{
  canvasView = [(CRLiOSCanvasViewController *)self canvasView];
  v6 = self->mZoomGestureRecognizer;
  v7 = v6;
  self->mCanvasZoomMethod = method;
  if (method || [(CRLiOSCanvasZoomPinchGestureRecognizer *)v6 numberOfTouches]!= 2)
  {
    enclosingScrollView = [canvasView enclosingScrollView];
    [enclosingScrollView center];
    v18 = v17;
    v20 = v19 + -120.0;
    superview = [enclosingScrollView superview];
    [superview convertPoint:canvasView toView:{v18, v20}];
    v13 = v22;
    v15 = v23;

    v11 = v15;
    v9 = v13;
  }

  else
  {
    [(CRLiOSCanvasZoomPinchGestureRecognizer *)v7 locationOfTouch:0 inView:canvasView];
    v9 = v8;
    v11 = v10;
    [(CRLiOSCanvasZoomPinchGestureRecognizer *)v7 locationOfTouch:1 inView:canvasView];
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

- (void)canvasZoomTracker:(id)tracker willUpdateViewScaleFeedbackWithScale:(double)scale
{
  canvasLayer = [(CRLiOSCanvasViewController *)self canvasLayer];
  [canvasLayer minimumPinchViewScale];
  v7 = v6;
  [canvasLayer maximumPinchViewScale];
  v9 = sub_1004C3240(scale, v7, v8);
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v11 = [interactiveCanvasController i_descriptionForViewScale:self->mCanvasZoomMethod zoomMethod:v9];

  delegate = [(CRLiOSCanvasViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(CRLiOSCanvasViewController *)self delegate];
    v14 = [delegate2 allowsZoomHUD] ^ 1;
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
    canvasView = [(CRLiOSCanvasViewController *)self canvasView];
    [v17 showHUDForKey:self forTouchPoint:canvasView inCanvasView:1 withUpwardsNudge:self->mLastZoomHUDLocation.x size:{self->mLastZoomHUDLocation.y, 0.0}];
  }
}

- (void)canvasZoomTrackerDidEndViewScaleFeedback:(id)feedback
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

- (void)canvasZoomTrackerWillBeginFinalZoomAnimation:(id)animation
{
  crl_windowWrapper = [(CRLiOSCanvasViewController *)self crl_windowWrapper];
  newWrapperBeginningIgnoringUserInteractionSafely = [crl_windowWrapper newWrapperBeginningIgnoringUserInteractionSafely];

  [(CRLiOSCanvasViewController *)self setZoomTrackerIgnoreInteractionEventsSafeWrapper:newWrapperBeginningIgnoringUserInteractionSafely];
}

- (void)canvasZoomTrackerDidEndFinalZoomAnimation:(id)animation
{
  zoomTrackerIgnoreInteractionEventsSafeWrapper = [(CRLiOSCanvasViewController *)self zoomTrackerIgnoreInteractionEventsSafeWrapper];
  [zoomTrackerIgnoreInteractionEventsSafeWrapper endIgnoringUserInteractionSafely];

  [(CRLiOSCanvasViewController *)self setZoomTrackerIgnoreInteractionEventsSafeWrapper:0];
}

- (void)canvasZoomTrackerDidFinish:(id)finish
{
  [(CRLCanvasZoomTracker *)self->mCanvasZoomTracker setDelegate:0];
  mCanvasZoomTracker = self->mCanvasZoomTracker;
  self->mCanvasZoomTracker = 0;
}

- (id)p_willPresentError:(id)error
{
  errorCopy = error;
  localizedRecoveryOptions = [errorCopy localizedRecoveryOptions];
  v5 = localizedRecoveryOptions;
  if (localizedRecoveryOptions && [localizedRecoveryOptions count])
  {
    recoveryAttempter = [errorCopy recoveryAttempter];
    if (!recoveryAttempter || (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      userInfo = [errorCopy userInfo];
      v8 = [userInfo mutableCopy];

      [v8 removeObjectForKey:NSLocalizedRecoverySuggestionErrorKey];
      [v8 removeObjectForKey:NSLocalizedRecoveryOptionsErrorKey];
      [v8 removeObjectForKey:NSRecoveryAttempterErrorKey];
      domain = [errorCopy domain];
      v10 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [errorCopy code], v8);

      errorCopy = v10;
    }
  }

  return errorCopy;
}

- (void)presentError:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(CRLiOSCanvasViewController *)self p_willPresentError:error];
  v8 = [_TtC8Freeform32CRLSelectionAwareAlertController crl_alertControllerWithError:v7 preferredStyle:1 completion:handlerCopy];

  if (qword_101AD5A28 != -1)
  {
    sub_10135F178();
  }

  v9 = off_1019EDA80;
  if (os_log_type_enabled(off_1019EDA80, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    title = [v8 title];
    message = [v8 message];
    *buf = 138412546;
    v18 = title;
    v19 = 2112;
    v20 = message;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "title: %@, message: %@", buf, 0x16u);
  }

  presentedViewController = [(CRLiOSCanvasViewController *)self presentedViewController];
  isBeingDismissed = [presentedViewController isBeingDismissed];
  if (!presentedViewController || (isBeingDismissed & 1) != 0)
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

- (void)presentErrors:(id)errors withLocalizedDescription:(id)description completionHandler:(id)handler
{
  errorsCopy = errors;
  descriptionCopy = description;
  handlerCopy = handler;
  if ([errorsCopy count] == 1)
  {
    firstObject = [errorsCopy firstObject];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100387E0C;
    v20[3] = &unk_10183D168;
    v12 = &v21;
    v21 = handlerCopy;
    v13 = [_TtC8Freeform32CRLSelectionAwareAlertController crl_alertControllerWithError:firstObject preferredStyle:1 completion:v20];
  }

  else
  {
    v13 = [_TtC8Freeform32CRLSelectionAwareAlertController alertControllerWithTitle:descriptionCopy message:0 preferredStyle:1];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100387E24;
    v18[3] = &unk_101840470;
    v12 = &v19;
    v19 = handlerCopy;
    [v13 crl_addSimpleOKButtonWithHandler:v18];
  }

  presentedViewController = [(CRLiOSCanvasViewController *)self presentedViewController];
  v15 = presentedViewController;
  if (presentedViewController && ([presentedViewController isBeingDismissed] & 1) == 0)
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

- (id)beginModalOperationWithLocalizedMessage:(id)message progress:(id)progress cancelHandler:(id)handler
{
  messageCopy = message;
  progressCopy = progress;
  handlerCopy = handler;
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

  userDialogPresenter = [(CRLiOSCanvasViewController *)self userDialogPresenter];
  if (!userDialogPresenter)
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

  v18 = [userDialogPresenter beginModalOperationWithLocalizedMessage:messageCopy progress:progressCopy cancelHandler:handlerCopy];

  return v18;
}

- (id)beginModalOperationWithPresentedLocalizedMessage:(id)message progress:(id)progress cancelHandler:(id)handler
{
  messageCopy = message;
  progressCopy = progress;
  handlerCopy = handler;
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

  userDialogPresenter = [(CRLiOSCanvasViewController *)self userDialogPresenter];
  if (!userDialogPresenter)
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

  v18 = [userDialogPresenter beginModalOperationWithPresentedLocalizedMessage:messageCopy progress:progressCopy cancelHandler:handlerCopy];

  return v18;
}

- (void)endModalOperationWithToken:(id)token
{
  tokenCopy = token;
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

  userDialogPresenter = [(CRLiOSCanvasViewController *)self userDialogPresenter];
  if (!userDialogPresenter)
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

  [userDialogPresenter endModalOperationWithToken:tokenCopy];
}

- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)reasons forMediaType:(int64_t)type forSingleMediaObject:(BOOL)object completionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  userDialogPresenter = [(CRLiOSCanvasViewController *)self userDialogPresenter];
  [userDialogPresenter presentMediaCompatibilityAlertWithReasons:reasons forMediaType:type forSingleMediaObject:objectCopy completionHandler:handlerCopy];
}

- (void)didSetDocumentToMode:(id)mode fromMode:(id)fromMode animated:(BOOL)animated
{
  modeCopy = mode;
  fromModeCopy = fromMode;
  knobValidatorBlock = [modeCopy knobValidatorBlock];
  knobDragGestureRecognizer = [(CRLiOSCanvasViewController *)self knobDragGestureRecognizer];
  [knobDragGestureRecognizer setKnobValidatorBlock:knobValidatorBlock];

  if ([modeCopy wantsToSuppressMiniFormatter] && (objc_msgSend(fromModeCopy, "wantsToSuppressMiniFormatter") & 1) == 0)
  {
    miniFormatterPresenter = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
    [miniFormatterPresenter dismissMiniFormatter];
    goto LABEL_7;
  }

  if (([modeCopy wantsToSuppressMiniFormatter] & 1) == 0 && objc_msgSend(fromModeCopy, "wantsToSuppressMiniFormatter"))
  {
    miniFormatterPresenter = [(CRLiOSCanvasViewController *)self miniFormatterPresenter];
    editorController = [(CRLiOSCanvasViewController *)self editorController];
    selectionPath = [editorController selectionPath];
    [miniFormatterPresenter presentMiniFormatterForSelectionPath:selectionPath];

LABEL_7:
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  canvas = [interactiveCanvasController canvas];
  topLevelReps = [canvas topLevelReps];

  v17 = [topLevelReps countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [*(*(&v23 + 1) + 8 * i) recursivelyPerformSelector:"documentModeDidChange"];
      }

      v18 = [topLevelReps countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  interactiveCanvasController2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  drawingIntelligenceProvider = [interactiveCanvasController2 drawingIntelligenceProvider];
  [drawingIntelligenceProvider documentModeDidChange];
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
      interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
      editorController = [interactiveCanvasController editorController];
      v7 = [(CRLiOSMiniFormatterPresenter *)v4 initWithEditorController:editorController canvasLayerHosting:self];
      v8 = self->_miniFormatterPresenter;
      self->_miniFormatterPresenter = v7;

      miniFormatterPresenter = self->_miniFormatterPresenter;
    }
  }

  return miniFormatterPresenter;
}

- (void)updateToolbarButtons
{
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CRLiOSCanvasViewController *)self delegate];
    [delegate2 updateToolbarButtons];
  }
}

- (BOOL)p_shouldShowMiniFormatterForSelectionPath:(id)path
{
  pathCopy = path;
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  documentIsSharedReadOnly = [interactiveCanvasController documentIsSharedReadOnly];

  if (documentIsSharedReadOnly & 1) != 0 || (-[CRLiOSCanvasViewController interactiveCanvasController](self, "interactiveCanvasController"), v7 = objc_claimAutoreleasedReturnValue(), [v7 layerHost], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "asiOSCVC"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isCurrentlyInQuickSelectMode"), v9, v8, v7, (v10))
  {
    v11 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    selectionModelTranslator = [WeakRetained selectionModelTranslator];
    v14 = [selectionModelTranslator boardItemsForSelectionPath:pathCopy];

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
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    v6 = [(CRLiOSPencilMediator *)v4 initWithInteractiveCanvasController:interactiveCanvasController];
    v7 = self->mPencilMediator;
    self->mPencilMediator = v6;

    mPencilMediator = self->mPencilMediator;
  }

  return mPencilMediator;
}

- (BOOL)shouldSelectAndScrollWithApplePencil
{
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  if (!delegate)
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

  shouldSelectAndScrollWithApplePencil = [delegate shouldSelectAndScrollWithApplePencil];

  return shouldSelectAndScrollWithApplePencil;
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
  view = [(CRLiOSCanvasViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    v5 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:windowScene];
    _paletteViewVisible = [v5 _paletteViewVisible];
  }

  else
  {
    _paletteViewVisible = 0;
  }

  return _paletteViewVisible;
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
    canvasView = [(CRLiOSCanvasViewController *)self canvasView];
    if (!canvasView)
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

    v9 = [UICanvasFeedbackGenerator feedbackGeneratorForView:canvasView];
    v10 = self->mFeedbackGenerator;
    self->mFeedbackGenerator = v9;

    v3 = self->mFeedbackGenerator;
  }

  return v3;
}

- (void)i_startObservingFreehandDrawingToolkit
{
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  [freehandDrawingToolkit addToolkitObserver:self];
}

- (BOOL)isHandlingScribbleWriting
{
  scribbleInteraction = [(CRLiOSCanvasViewController *)self scribbleInteraction];
  if ([scribbleInteraction isHandlingWriting])
  {
    isHandlingWriting = 1;
  }

  else
  {
    directScribbleInteraction = [(CRLiOSCanvasViewController *)self directScribbleInteraction];
    isHandlingWriting = [directScribbleInteraction isHandlingWriting];
  }

  return isHandlingWriting;
}

- (UITextInput)currentEditingTextInputResponder
{
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  textInputResponder = [interactiveCanvasController textInputResponder];
  editor = [textInputResponder editor];
  v5 = objc_opt_class();
  v11 = sub_100303920(editor, v5, 1, v6, v7, v8, v9, v10, &OBJC_PROTOCOL___CRLEditor);

  if (v11)
  {
    v12 = objc_opt_class();
    editorController = [interactiveCanvasController editorController];
    v14 = [editorController selectionForEditor:v11];
    v15 = sub_100014370(v12, v14);

    if (v15 && [v15 range] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = textInputResponder;
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
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  if ([interactiveCanvasController editingDisabled] & 1) != 0 || (objc_msgSend(interactiveCanvasController, "isInDynamicOperation"))
  {
    shouldPreventDefaultPencilBehaviors = 1;
  }

  else
  {
    shouldPreventDefaultPencilBehaviors = [(CRLiOSCanvasViewController *)self shouldPreventDefaultPencilBehaviors];
  }

  return shouldPreventDefaultPencilBehaviors;
}

- (BOOL)shouldBeginScribblingAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(CRLiOSCanvasViewController *)self p_scribblePreventedRegardlessOfPoint])
  {
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    [interactiveCanvasController convertBoundsToUnscaledPoint:{x, y}];
    v9 = v8;
    v11 = v10;
    delegate = [(CRLiOSCanvasViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(CRLiOSCanvasViewController *)self delegate];
      currentDocumentMode = [delegate2 currentDocumentMode];
      pencilModeType = [currentDocumentMode pencilModeType];

      if (pencilModeType == 1)
      {
        goto LABEL_9;
      }

      if (pencilModeType == 2)
      {
LABEL_7:
        interactiveCanvasController2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
        v20 = [interactiveCanvasController2 hitKnobAtPoint:2 inputType:0 returningRep:{v9, v11}];

        if ([v20 worksWithStylus])
        {
          v6 = 0;
        }

        else
        {
          v21 = [interactiveCanvasController hitRep:{v9, v11}];
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

    pencilMediator = [(CRLiOSCanvasViewController *)self pencilMediator];
    v18 = [pencilMediator pencilBehaviorOutsideModesAtUnscaledPoint:{v9, v11}];

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

- (id)containedScribbleElementForContainerScribbleElement:(id)element
{
  v8 = sub_1003035DC(element, 1, element, v3, v4, v5, v6, v7, &OBJC_PROTOCOL___CRLWPContainerTextEditingRep);
  v9 = v8;
  if (v8)
  {
    containedRep = [v8 containedRep];
    scribbleCapableElements = [containedRep scribbleCapableElements];
    lastObject = [scribbleCapableElements lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)scribbleCapableElementsForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(CRLiOSCanvasViewController *)self p_scribblePreventedRegardlessOfPoint])
  {
    height = &__NSArray0__struct;
  }

  else
  {
    v9 = objc_alloc_init(NSMutableArray);
    p_allRepsForHitTestingOrdered = [(CRLiOSCanvasViewController *)self p_allRepsForHitTestingOrdered];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [p_allRepsForHitTestingOrdered countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(p_allRepsForHitTestingOrdered);
          }

          v21 = *(*(&v24 + 1) + 8 * i);
          v22 = sub_1003035DC(v21, 1, v12, v13, v14, v15, v16, v17, &OBJC_PROTOCOL___CRLiOSScribbleElementProvider);
          if (v22 && ([v21 isLocked] & 1) == 0 && -[CRLiOSCanvasViewController shouldIncludeObjectInScribbleCapableElements:](self, "shouldIncludeObjectInScribbleCapableElements:", v22))
          {
            [v9 addObject:v22];
          }
        }

        v18 = [p_allRepsForHitTestingOrdered countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v18);
    }

    height = [(CRLiOSCanvasViewController *)self _scribbleCapableElementsForReps:v9 forRect:x, y, width, height];
  }

  return height;
}

- (id)p_allRepsForHitTestingOrdered
{
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  canvas = [interactiveCanvasController canvas];
  topLevelReps = [canvas topLevelReps];
  v5 = [topLevelReps mutableCopy];

  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v5 objectAtIndexedSubscript:v6];
      childRepsForHitTesting = [v7 childRepsForHitTesting];

      v9 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", ++v6, [childRepsForHitTesting count]);
      [v5 insertObjects:childRepsForHitTesting atIndexes:v9];
    }

    while (v6 < [v5 count]);
  }

  v10 = [v5 copy];

  return v10;
}

- (BOOL)shouldIncludeObjectInScribbleCapableElements:(id)elements
{
  elementsCopy = elements;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, elementsCopy);

  v12 = sub_1003035DC(v5, 1, v6, v7, v8, v9, v10, v11, &OBJC_PROTOCOL___CRLWPContainerTextEditingRep);
  parentRep = [v5 parentRep];
  v20 = sub_1003035DC(parentRep, 1, v14, v15, v16, v17, v18, v19, &OBJC_PROTOCOL___CRLWPContainerTextEditingRep);

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

- (id)scribbleCapableElementWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(CRLiOSCanvasViewController *)self p_scribblePreventedRegardlessOfPoint])
  {
    v5 = 0;
  }

  else
  {
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    canvas = [interactiveCanvasController canvas];
    allRepsOrdered = [canvas allRepsOrdered];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = allRepsOrdered;
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
              v23 = [v22 scribbleCapableElementWithIdentifier:identifierCopy];
              if (v23)
              {
                goto LABEL_28;
              }
            }

            else
            {
              scribbleCapableElements = [v22 scribbleCapableElements];
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v25 = scribbleCapableElements;
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
                    scribbleIdentifier = [v28 scribbleIdentifier];
                    v30 = [scribbleIdentifier isEqual:identifierCopy];

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

- (id)_scribbleCapableElementsForReps:(id)reps forRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  repsCopy = reps;
  v9 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = repsCopy;
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
          scribbleCapableElements = [v14 scribbleCapableElementsForRect:{x, y, width, height}];
          [v9 crl_addObjectsFromNonNilArray:scribbleCapableElements];
        }

        else
        {
          scribbleCapableElements = [v14 scribbleCapableElements];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v16 = [scribbleCapableElements countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                  objc_enumerationMutation(scribbleCapableElements);
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

              v17 = [scribbleCapableElements countByEnumeratingWithState:&v23 objects:v31 count:16];
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

- (void)scribbleInteractionWillBeginWritingScribbleElementWillBeInserted:(BOOL)inserted
{
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  textInputResponder = [interactiveCanvasController textInputResponder];
  [textInputResponder scribbleWillBegin];

  if (!inserted)
  {

    [(CRLiOSCanvasViewController *)self p_schedulePreventInsertScribbleElementTimer];
  }
}

- (void)scribbleInteractionDidFinishWriting
{
  [(CRLiOSCanvasViewController *)self p_schedulePreventInsertScribbleElementTimer];
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  textInputResponder = [interactiveCanvasController textInputResponder];
  [textInputResponder reloadInputViews];

  if (![(CRLiOSCanvasViewController *)self wantsSystemInputAssistantForScribble])
  {
    delegate = [(CRLiOSCanvasViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(CRLiOSCanvasViewController *)self delegate];
      [delegate2 beginHandwritingModeIfNeeded];
    }

    pencilMediator = [(CRLiOSCanvasViewController *)self pencilMediator];
    if (!pencilMediator)
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

    [pencilMediator markPencilUsedForMode:2];
    interactiveCanvasController2 = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    textInputResponder2 = [interactiveCanvasController2 textInputResponder];
    [textInputResponder2 scribbleDidEnd];
  }
}

- (void)p_schedulePreventInsertScribbleElementTimer
{
  preventInsertScribbleElementTimer = [(CRLiOSCanvasViewController *)self preventInsertScribbleElementTimer];
  [preventInsertScribbleElementTimer invalidate];

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
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  [interactiveCanvasController visibleBoundsRect];
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

- (BOOL)canInsertScribbleElementAtPoint:(CGPoint)point
{
  v4 = [(CRLiOSCanvasViewController *)self shouldBeginScribblingAtPoint:point.x, point.y];
  if (v4)
  {
    preventInsertScribbleElementTimer = [(CRLiOSCanvasViewController *)self preventInsertScribbleElementTimer];

    LOBYTE(v4) = preventInsertScribbleElementTimer == 0;
  }

  return v4;
}

- (id)insertedScribbleElementAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(CRLiOSCanvasViewController *)self canInsertScribbleElementAtPoint:?])
  {
    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    [interactiveCanvasController convertBoundsToUnscaledPoint:{x, y}];
    v8 = v7;
    v10 = v9;
    v11 = objc_opt_class();
    v12 = [(CRLiOSCanvasViewController *)self insertTextBoxForScribbleAtUnscaledCanvasPoint:v8, v10];
    v13 = sub_100014370(v11, v12);

    scribbleCapableElements = [v13 scribbleCapableElements];
    firstObject = [scribbleCapableElements firstObject];

    scribbleEditingBlock = [firstObject scribbleEditingBlock];

    if (scribbleEditingBlock)
    {
      scribbleEditingBlock2 = [firstObject scribbleEditingBlock];
      scribbleEditingBlock2[2](scribbleEditingBlock2, 0, v8, v10);
    }

    [(CRLiOSCanvasViewController *)self p_schedulePreventInsertScribbleElementTimer];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)insertTextBoxForScribbleAtUnscaledCanvasPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  [commandController openGroup];
  [commandController enableProgressiveEnqueuingInCurrentGroup];
  editingCoordinator = [interactiveCanvasController editingCoordinator];
  boardItemFactory = [editingCoordinator boardItemFactory];
  v9 = [boardItemFactory makeShapeItemWithShapeType:0];

  v10 = [CRLInsertionContext dragInsertionContextWithPreferredCenter:1 required:0 fromDragToInsertController:0 insertFloating:0 targetZOrder:x, y];
  canvasEditor = [interactiveCanvasController canvasEditor];
  v46 = v9;
  v12 = [NSArray arrayWithObjects:&v46 count:1];
  [canvasEditor prepareGeometryForInsertingBoardItems:v12 withInsertionContext:v10];

  canvasEditor2 = [interactiveCanvasController canvasEditor];
  v45 = v9;
  v14 = [NSArray arrayWithObjects:&v45 count:1];
  v39 = v10;
  [canvasEditor2 insertBoardItems:v14 withInsertionContext:v10 postProcessBlock:0];

  v15 = objc_opt_class();
  v16 = sub_100013F00(v15, v9);
  text = [v16 text];
  if (text)
  {
    v18 = [_TtC8Freeform23CRLWPReplaceTextCommand alloc];
    range = [text range];
    v21 = [(CRLWPReplaceTextCommand *)v18 initWithShapeItem:v16 range:range text:v20, &stru_1018BCA28];
    [commandController enqueueCommand:v21];
  }

  v38 = v16;
  [commandController closeGroup];
  canvas = [interactiveCanvasController canvas];
  [canvas layoutInvalidated];

  [interactiveCanvasController layoutIfNeeded];
  canvas2 = [interactiveCanvasController canvas];
  allRepsOrdered = [canvas2 allRepsOrdered];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = allRepsOrdered;
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
      info = [v30 info];

      if (info == v9)
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

- (void)insertStencilFromLibrary:(id)library
{
  v4 = objc_opt_new();
  [(CRLiOSCanvasViewController *)self p_presentStencilLibraryWithBoardItemsToSave:v4];
}

- (void)saveSelectedBoardItemsAsStencil:(id)stencil
{
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];
  v7 = [selectionModelTranslator unlockedBoardItemsForSelectionPath:selectionPath];

  [(CRLiOSCanvasViewController *)self p_presentStencilLibraryWithBoardItemsToSave:v7];
}

- (void)p_presentStencilLibraryWithBoardItemsToSave:(id)save
{
  saveCopy = save;
  v5 = [_TtC8Freeform34CRLiOSStencilLibraryViewController alloc];
  editingCoordinator = [(CRLiOSCanvasViewController *)self editingCoordinator];
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  v8 = [(CRLiOSStencilLibraryViewController *)v5 initWithEditingCoordinator:editingCoordinator interactiveCanvasController:interactiveCanvasController boardItemsToSave:saveCopy];

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
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v5 = sub_100014370(v3, delegate);

  presentedViewController = [v5 presentedViewController];
  if (!presentedViewController)
  {
    delegate2 = [(CRLiOSCanvasViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate3 = [(CRLiOSCanvasViewController *)self delegate];
      preserveEditorSelection = [delegate3 preserveEditorSelection];

      if (preserveEditorSelection)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    crl_windowWrapper = [(CRLiOSCanvasViewController *)self crl_windowWrapper];
    if ([crl_windowWrapper isInSplitViewMode])
    {
      shouldPreserveEditorSelectionInSplitViewMode = [(CRLiOSCanvasViewController *)self shouldPreserveEditorSelectionInSplitViewMode];

      if (shouldPreserveEditorSelectionInSplitViewMode)
      {
LABEL_11:
        wantsToPreserveEditorSelection = 1;
        goto LABEL_4;
      }
    }

    else
    {
    }

    interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];
    textInputEditor = [editorController textInputEditor];

    if (textInputEditor && (objc_opt_respondsToSelector() & 1) != 0)
    {
      wantsToPreserveEditorSelection = [textInputEditor wantsToPreserveEditorSelection];
    }

    else
    {
      wantsToPreserveEditorSelection = 0;
    }

    goto LABEL_3;
  }

  textInputEditor = presentedViewController;
  wantsToPreserveEditorSelection = 1;
LABEL_3:

LABEL_4:
  return wantsToPreserveEditorSelection;
}

- (BOOL)shouldIgnoreKeyboardInput
{
  v3 = objc_opt_class();
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v5 = sub_100014370(v3, delegate);

  presentedViewController = [v5 presentedViewController];
  if (presentedViewController)
  {
    printerOptionsShowing = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v9 = objc_loadWeakRetained(&self->mDelegate);
      printerOptionsShowing = [v9 printerOptionsShowing];
    }

    else
    {
      printerOptionsShowing = 0;
    }
  }

  presentedViewController2 = [v5 presentedViewController];
  v11 = [_TtC8Freeform58CRLPresentedPopoverTextEditingBehaviorProvidingSwiftHelper allowTextInputWhilePresentingFor:presentedViewController2];

  if (v11 == 2)
  {
    v12 = printerOptionsShowing;
  }

  else
  {
    v12 = v11 == 0;
  }

  return v12;
}

- (BOOL)becomeFirstResponderIfAppropriate
{
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  textInputResponder = [interactiveCanvasController textInputResponder];
  isFirstResponder = [textInputResponder isFirstResponder];

  if (isFirstResponder & 1) != 0 || (-[CRLiOSCanvasViewController interactiveCanvasController](self, "interactiveCanvasController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 textInputResponder], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "canBecomeFirstResponder"), v7, v6, v8) && (-[CRLiOSCanvasViewController interactiveCanvasController](self, "interactiveCanvasController"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "textInputResponder"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "becomeFirstResponder"), v10, v9, (v11) || (-[CRLiOSCanvasViewController isFirstResponder](self, "isFirstResponder"))
  {
    LOBYTE(canBecomeFirstResponder) = 1;
  }

  else
  {
    canBecomeFirstResponder = [(CRLiOSCanvasViewController *)self canBecomeFirstResponder];
    if (canBecomeFirstResponder)
    {

      LOBYTE(canBecomeFirstResponder) = [(CRLiOSCanvasViewController *)self becomeFirstResponder];
    }
  }

  return canBecomeFirstResponder;
}

- (BOOL)allowsCanvasScrollingFromKeyboard
{
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];
  canvasEditor = [interactiveCanvasController canvasEditor];
  v7 = [canvasEditor selectionPathWithInfo:0];
  v8 = [selectionPath isEqual:v7];

  canvasView = [(CRLiOSCanvasViewController *)self canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];

  [enclosingScrollView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [enclosingScrollView contentSize];
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
  interactiveCanvasController = [(CRLiOSCanvasViewController *)self interactiveCanvasController];
  tmCoordinator = [interactiveCanvasController tmCoordinator];
  controllingTM = [tmCoordinator controllingTM];

  if (controllingTM)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      [interactiveCanvasController isInDynamicOperation];
      LOBYTE(v7) = 0;
      goto LABEL_9;
    }

    v6 = [controllingTM allowUndoRedoOperations] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  LOBYTE(v7) = 0;
  if (([interactiveCanvasController isInDynamicOperation] & 1) == 0 && (v6 & 1) == 0)
  {
    v7 = ![(CRLiOSCanvasViewController *)self shouldIgnoreKeyboardInput];
  }

LABEL_9:

  return v7;
}

- (BOOL)documentChromeHasPresentedViewController
{
  v3 = objc_opt_class();
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v5 = sub_100014370(v3, delegate);

  presentedViewController = [v5 presentedViewController];
  LOBYTE(delegate) = presentedViewController != 0;

  return delegate;
}

- (void)dismissDocumentChromePresentedViewController
{
  v3 = objc_opt_class();
  delegate = [(CRLiOSCanvasViewController *)self delegate];
  v9 = sub_100014370(v3, delegate);

  presentedViewController = [v9 presentedViewController];

  if (presentedViewController)
  {
    delegate2 = [(CRLiOSCanvasViewController *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(CRLiOSCanvasViewController *)self delegate];
      [delegate3 dismissPresentedViewController];
    }
  }
}

- (BOOL)p_isAccessibilityTextResponderAction:(SEL)action
{
  v3 = NSStringFromSelector(action);
  v4 = [&off_1018E1E00 containsObject:v3];

  return v4;
}

- (CRLFreehandDrawingPKSelectionManager)smartSelectionManager
{
  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    v4 = [WeakRetained pencilKitCanvasViewControllerForCanvasViewController:self];

    smartSelectionManager = [v4 smartSelectionManager];
  }

  else
  {
    smartSelectionManager = 0;
  }

  return smartSelectionManager;
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