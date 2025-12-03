@interface SSSScreenshotsViewController
+ (id)activityTypeOrder;
- (BOOL)_contentSwitcherShouldMoveDown;
- (BOOL)_cropPDFEnabled;
- (BOOL)_isEditingSinglePagePDF;
- (BOOL)_layoutShouldEnableContentSwitcher;
- (BOOL)_layoutShouldShowContentSwitcher;
- (BOOL)_shouldSendToDeveloper;
- (BOOL)canResignFirstResponder;
- (BOOL)closeIsPrimaryAction;
- (BOOL)inStateTransition;
- (BOOL)isShowingDeleteConfirmation;
- (BOOL)isShowingDoneActionSheet;
- (BOOL)isShowingModalUI;
- (BOOL)isShowingVICard;
- (BOOL)screenshotsUseTrilinearMinificationFilter;
- (BOOL)showsShadow;
- (BOOL)snapshotScreenshotEdits;
- (CGRect)getVisibleBoundsForOverlay;
- (CGRect)screenshotsExtentRect;
- (NSArray)dragItems;
- (NSArray)visibleScreenshots;
- (SSSScreenshot)currentScreenshot;
- (SSSScreenshotsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SSSScreenshotsViewControllerDelegate)delegate;
- (UICoordinateSpace)screenshotsParentCoordinateSpace;
- (id)_accessibilityHUDWindow;
- (id)_betaAppActivityItemIfAvailble;
- (id)_betaApplicationName;
- (id)_buildDoneMenu;
- (id)_buildDoneMenuElements;
- (id)_bundleIDForBetaApp;
- (id)_currentScreenshotView;
- (id)_visionKitActivityItemIfAvailble;
- (id)analysisButtonImageForCurrentState;
- (id)closeMenuForPDFPageCount:(int64_t)count;
- (id)markupButtonImageForCurrentState;
- (id)previewForDragItem:(id)item inContainer:(id)container;
- (id)targetForCancellingDragItem:(id)item inContainer:(id)container;
- (id)undoManager;
- (unint64_t)state;
- (unint64_t)supportedInterfaceOrientations;
- (void)_actuallyPresentShareFromBarButtonItem:(id)item;
- (void)_cancelCrop;
- (void)_cancelSharing:(BOOL)sharing completion:(id)completion;
- (void)_clearSecurityScopedResourcesAndTemporaryFiles;
- (void)_configureBarButtonItems;
- (void)_configureBarsIfNecessary;
- (void)_deletePushed;
- (void)_dismissActivityViewController:(BOOL)controller completion:(id)completion;
- (void)_dismissInflightActivity:(BOOL)activity completion:(id)completion;
- (void)_dismissWithDeleteOptions:(unint64_t)options;
- (void)_enterCrop;
- (void)_exitCrop;
- (void)_exportVellumPDF;
- (void)_handlePencilSqueezeInteractionWillShowPaletteViewNotification:(id)notification;
- (void)_image:(id)_image didFinishSavingWithError:(id)error contextInfo:(void *)info;
- (void)_opacityControlChanged;
- (void)_opacityControlLifted;
- (void)_performClose;
- (void)_prepareActivityViewControllerNeedsActivityUpdate:(BOOL)update;
- (void)_presentActivityViewControllerFromBarButtonItem:(id)item;
- (void)_presentUndoRedoAlertControllerIfNecessary;
- (void)_recapPushed;
- (void)_redoPushed;
- (void)_relevantTraitsDidChange;
- (void)_resetCrop;
- (void)_revertPushed;
- (void)_saveImages:(id)images toQuickNoteWithDismissalCompletionBlock:(id)block;
- (void)_savePDFToPhotosPushed;
- (void)_saveToFilesPushed:(BOOL)pushed savePDF:(BOOL)f;
- (void)_saveToQuickNotePushed:(BOOL)pushed savePDF:(BOOL)f;
- (void)_screenshotManagerDidProcessDocumentUpdate:(id)update;
- (void)_selectScreenshotOrFull:(id)full;
- (void)_sendToDeveloper;
- (void)_sharePushed:(id)pushed;
- (void)_showFullScreenTip;
- (void)_undoManagerDidUndoRedoChange:(id)change;
- (void)_undoPushed;
- (void)_updateBarButtonItemPositionsAnimated:(BOOL)animated force:(BOOL)force;
- (void)_updateFullScreenTipVisibility;
- (void)_updatePropertiesOnManagedSubviews;
- (void)_updateTopBarProperties;
- (void)_updateUndoRedoEnabledState;
- (void)_updateUserInterfaceStyle;
- (void)aaButtonPressed:(id)pressed;
- (void)analysisButtonPressed:(id)pressed;
- (void)annotationButtonPressed;
- (void)commitInflightEditsIfNecessary;
- (void)configureCloseButtonMenuIfNecessary;
- (void)cropDidChangeForScreenshotView:(id)view;
- (void)dealloc;
- (void)didTapOpacityOptionWithAttributeView:(id)view;
- (void)dismissTFViewController;
- (void)dismissVISheetIfNecessary;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)endOpacityEditing;
- (void)loadView;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
- (void)parentScreenshotView:(id)view animated:(BOOL)animated;
- (void)presentActivityViewController;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)removeChildViewControllers;
- (void)removeScreenshots:(id)screenshots forReason:(unint64_t)reason alongsideAnimations:(id)animations completion:(id)completion;
- (void)screenshotsView:(id)view didHitTestView:(id)testView point:(CGPoint)point withEvent:(id)event;
- (void)screenshotsView:(id)view isDraggingVISheetDidChange:(BOOL)change;
- (void)screenshotsView:(id)view requestsUpdateToInteractionMode:(unint64_t)mode;
- (void)sessionDidSubmitFeedback:(id)feedback;
- (void)setAaModeEnabled:(BOOL)enabled;
- (void)setAnalysisModeEnabled:(BOOL)enabled;
- (void)setAnnotationModeEnabled:(BOOL)enabled;
- (void)setBorderViewStyleOverride:(int64_t)override withAnimator:(id)animator;
- (void)setDidInvokeVICard:(BOOL)card;
- (void)setScreenshotsUseTrilinearMinificationFilter:(BOOL)filter;
- (void)setShowsShadow:(BOOL)shadow animated:(BOOL)animated;
- (void)setSnapshotScreenshotEdits:(BOOL)edits;
- (void)setState:(unint64_t)state;
- (void)stateTransitionFinished;
- (void)undoStackChangedForScreenshotsView:(id)view;
- (void)updateAnalysisButtonStateToVisible:(BOOL)visible;
- (void)updateAnnotationButtonForCurrentState;
- (void)updateForFrame:(CGRect)frame;
- (void)updateForScreenshotViewChangeAnimated:(BOOL)animated oldView:(id)view;
- (void)updatePrimaryAction;
- (void)updateScreenshotsInteractionModeIfNecessary;
- (void)updateScreenshotsInteractionModeToMode:(unint64_t)mode;
- (void)viButtonPressed:(id)pressed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SSSScreenshotsViewController

- (SSSScreenshotsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v24.receiver = self;
  v24.super_class = SSSScreenshotsViewController;
  v8 = [(SSSScreenshotsViewController *)&v24 initWithNibName:nameCopy bundle:bundleCopy];
  v8->_contentSwitcherAlpha = 1.0;
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:v8 selector:"_screenshotManagerDidProcessMetadataUpdate:" name:@"SSSScreenshotManagerDidProcessMetadataUpdate" object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:v8 selector:"_screenshotManagerDidProcessDocumentUpdate:" name:@"SSSScreenshotManagerDidProcessDocumentUpdate" object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:v8 selector:"_undoManagerDidUndoRedoChange:" name:NSUndoManagerDidUndoChangeNotification object:0];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:v8 selector:"_undoManagerDidUndoRedoChange:" name:NSUndoManagerDidRedoChangeNotification object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:v8 selector:"_handlePencilSqueezeInteractionWillShowPaletteViewNotification:" name:PKPencilSqueezeInteractionWillShowPaletteViewNotification object:0];

  v14 = objc_alloc_init(SSSDisplayLinkObserver);
  displayLinkObserver = v8->_displayLinkObserver;
  v8->_displayLinkObserver = v14;

  v16 = +[UITraitCollection systemTraitsAffectingColorAppearance];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v17 = [NSArray arrayWithObjects:v25 count:3];
  v18 = [v16 arrayByAddingObjectsFromArray:v17];

  objc_initWeak(&location, v8);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100046F8C;
  v21[3] = &unk_1000BAE88;
  objc_copyWeak(&v22, &location);
  v19 = [(SSSScreenshotsViewController *)v8 registerForTraitChanges:v18 withHandler:v21];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v8;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"SSSScreenshotManagerDidProcessMetadataUpdate" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"SSSScreenshotManagerDidProcessDocumentUpdate" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:NSUndoManagerDidUndoChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:NSUndoManagerDidRedoChangeNotification object:0];

  if (self->_presentationControllerDismissalObserver)
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self->_presentationControllerDismissalObserver name:UIPresentationControllerDismissalTransitionDidEndNotification object:0];
  }

  v8.receiver = self;
  v8.super_class = SSSScreenshotsViewController;
  [(SSSScreenshotsViewController *)&v8 dealloc];
}

- (void)parentScreenshotView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView parentScreenshotView:viewCopy animated:animatedCopy];

  _internalPDFView = [viewCopy _internalPDFView];

  if (_internalPDFView)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    _internalPDFView2 = [viewCopy _internalPDFView];
    [v8 addObserver:self selector:"_pdfPageChanged:" name:PDFViewPageChangedNotification object:_internalPDFView2];
  }

  [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:animatedCopy force:0];
}

- (void)removeScreenshots:(id)screenshots forReason:(unint64_t)reason alongsideAnimations:(id)animations completion:(id)completion
{
  screenshotsCopy = screenshots;
  animationsCopy = animations;
  completionCopy = completion;
  delegate = [(SSSScreenshotsViewController *)self delegate];
  [delegate screenshotsViewControllerWillPerformDeleteDismissalAnimation:self];

  v14 = [screenshotsCopy count];
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  screenshots = [_screenshotsView screenshots];
  v17 = [screenshots count];

  if (reason && v14 == v17)
  {
    _screenshotsView2 = [(SSSScreenshotsViewController *)self _screenshotsView];
    [_screenshotsView2 setIsDismissing:1];
  }

  if (reason == 1)
  {
    _screenshotsView3 = [(SSSScreenshotsViewController *)self _screenshotsView];
    v20 = [_screenshotsView3 viewsForScreenshots:screenshotsCopy];
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v52;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v52 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v51 + 1) + 8 * i);
        [v26 setIsBeingRemoved:1];
        [v26 updatePaletteVisibilityIfNecessary:0];
      }

      v23 = [v21 countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v23);
  }

  _screenshotsView4 = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView4 layoutIfNeeded];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000476F8;
  v47[3] = &unk_1000BAEB0;
  v47[4] = self;
  v28 = screenshotsCopy;
  v48 = v28;
  reasonCopy = reason;
  v29 = animationsCopy;
  v49 = v29;
  v30 = objc_retainBlock(v47);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10004783C;
  v44[3] = &unk_1000BA8F8;
  v44[4] = self;
  v31 = v21;
  v45 = v31;
  v32 = completionCopy;
  v46 = v32;
  v33 = objc_retainBlock(v44);
  v34 = [[UICubicTimingParameters alloc] initWithControlPoint1:0.289999992 controlPoint2:{0.0133330002, 0.816670001, 0.493330002}];
  v35 = [[UIViewPropertyAnimator alloc] initWithDuration:v34 timingParameters:0.21];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000479C8;
  v43[3] = &unk_1000BA1B8;
  v43[4] = self;
  v43[5] = reason;
  [v35 addAnimations:v43];
  [v35 startAnimation];
  if (reason == 1)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100047A5C;
    v41[3] = &unk_1000BA998;
    v36 = &v42;
    v42 = v30;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100047A6C;
    v39[3] = &unk_1000BAA10;
    v40 = v33;
    [UIView performSystemAnimation:0 onViews:v31 options:4 animations:v41 completion:v39];

LABEL_18:
    goto LABEL_19;
  }

  if (reason == 2)
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100047A7C;
    v37[3] = &unk_1000BAA10;
    v36 = &v38;
    v38 = v33;
    [UIView _animateUsingDefaultTimingWithOptions:4 animations:v30 completion:v37];
    goto LABEL_18;
  }

LABEL_19:
}

- (NSArray)dragItems
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  dragItems = [_screenshotsView dragItems];

  return dragItems;
}

- (id)previewForDragItem:(id)item inContainer:(id)container
{
  containerCopy = container;
  itemCopy = item;
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  v9 = [_screenshotsView previewForDragItem:itemCopy inContainer:containerCopy];

  return v9;
}

- (id)targetForCancellingDragItem:(id)item inContainer:(id)container
{
  containerCopy = container;
  itemCopy = item;
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  v9 = [_screenshotsView targetForCancellingDragItem:itemCopy inContainer:containerCopy];

  return v9;
}

- (NSArray)visibleScreenshots
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  visibleScreenshots = [_screenshotsView visibleScreenshots];

  return visibleScreenshots;
}

- (SSSScreenshot)currentScreenshot
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  currentScreenshot = [_screenshotsView currentScreenshot];

  return currentScreenshot;
}

- (void)loadView
{
  v3 = objc_alloc_init(SSSScreenshotsView);
  [(SSSScreenshotsView *)v3 setDelegate:self];
  [(SSSScreenshotsViewController *)self setView:v3];
}

- (void)updateForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView updateForFrame:{x, y, width, height}];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SSSScreenshotsViewController;
  [(SSSScreenshotsViewController *)&v8 viewDidLoad];
  imageAnalyzer = [(SSSScreenshotsViewController *)self imageAnalyzer];

  if (!imageAnalyzer)
  {
    v4 = objc_alloc_init(VKCImageAnalyzer);
    [(SSSScreenshotsViewController *)self setImageAnalyzer:v4];

    imageAnalyzer2 = [(SSSScreenshotsViewController *)self imageAnalyzer];
    [imageAnalyzer2 setCreateFeedbackProviders:1];
  }

  imageAnalyzer3 = [(SSSScreenshotsViewController *)self imageAnalyzer];
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView setImageAnalyzer:imageAnalyzer3];
}

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = SSSScreenshotsViewController;
  [(SSSScreenshotsViewController *)&v11 viewDidAppear:appear];
  view = [(SSSScreenshotsViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  [(SSSScreenshotsViewController *)self _updateUserInterfaceStyle];
  [(SSSScreenshotsViewController *)self becomeFirstResponder];
  view2 = [(SSSScreenshotsViewController *)self view];
  window2 = [view2 window];
  windowScene = [window2 windowScene];
  v10 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:windowScene];

  [v10 set_delegate:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SSSScreenshotsViewController;
  [(SSSScreenshotsViewController *)&v5 viewWillDisappear:disappear];
  [(SSSScreenshotsViewController *)self resignFirstResponder];
  presentedViewController = [(SSSScreenshotsViewController *)self presentedViewController];

  if (presentedViewController)
  {
    [(SSSScreenshotsViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = SSSScreenshotsViewController;
  [(SSSScreenshotsViewController *)&v4 viewDidLayoutSubviews];
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView bringOmnibarToFront];
}

- (BOOL)canResignFirstResponder
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  isPerformingFullscreenSetup = [_screenshotsView isPerformingFullscreenSetup];

  if (isPerformingFullscreenSetup)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SSSScreenshotsViewController;
  return [(SSSScreenshotsViewController *)&v6 canResignFirstResponder];
}

- (void)_updateUserInterfaceStyle
{
  v3 = 2 * ([(SSSScreenshotsViewController *)self state]== 1);
  traitCollection = [(SSSScreenshotsViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    view = [(SSSScreenshotsViewController *)self view];
    window = [view window];
    [window setOverrideUserInterfaceStyle:v3];
  }

  [(SSSScreenshotsViewController *)self setOverrideUserInterfaceStyle:v3];
}

- (void)_presentUndoRedoAlertControllerIfNecessary
{
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
  canUndo = [_currentScreenshotView canUndo];
  canRedo = [_currentScreenshotView canRedo];
  v6 = canRedo;
  if ((canUndo & 1) != 0 || canRedo)
  {
    title = [(UIBarButtonItem *)self->_undoItem title];
    title2 = [(UIBarButtonItem *)self->_redoItem title];
    v9 = title2;
    if (canUndo)
    {
      v10 = title;
    }

    else
    {
      v10 = title2;
    }

    v11 = v10;
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"CANCEL_SHAKE_TO_UNDO" value:@"Cancel" table:0];

    objc_initWeak(&location, self);
    v14 = [UIAlertController alertControllerWithTitle:0 message:v11 preferredStyle:1];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100048430;
    v25[3] = &unk_1000BAED8;
    objc_copyWeak(&v26, &location);
    v15 = [UIAlertAction actionWithTitle:v13 style:1 handler:v25];
    [v14 addAction:v15];

    if (canUndo)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100048470;
      v23[3] = &unk_1000BAED8;
      objc_copyWeak(&v24, &location);
      v16 = [UIAlertAction actionWithTitle:title style:0 handler:v23];
      [v14 addAction:v16];

      objc_destroyWeak(&v24);
    }

    if (v6)
    {
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_1000484D0;
      v21 = &unk_1000BAED8;
      objc_copyWeak(&v22, &location);
      v17 = [UIAlertAction actionWithTitle:v9 style:0 handler:&v18];
      [v14 addAction:{v17, v18, v19, v20, v21}];

      objc_destroyWeak(&v22);
    }

    [(SSSScreenshotsViewController *)self presentViewController:v14 animated:1 completion:0];
    objc_destroyWeak(&v26);

    objc_destroyWeak(&location);
  }
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  eventCopy = event;
  if (ended == 1)
  {
    _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
    canUndo = [_currentScreenshotView canUndo];
    canRedo = [_currentScreenshotView canRedo];
    if ((canUndo & 1) != 0 || canRedo)
    {
      _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
      [_screenshotsView dismissOverlayManagedViewControllers];

      [(SSSScreenshotsViewController *)self _presentUndoRedoAlertControllerIfNecessary];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SSSScreenshotsViewController;
    if ([(SSSScreenshotsViewController *)&v12 respondsToSelector:"motionEnded:withEvent:"])
    {
      v11.receiver = self;
      v11.super_class = SSSScreenshotsViewController;
      [(SSSScreenshotsViewController *)&v11 motionEnded:ended withEvent:eventCopy];
    }
  }
}

- (void)_updateFullScreenTipVisibility
{
  if (_SSVisualIntelligenceV2Elegible())
  {
    if (_SSScreenshotsRedesign2025Enabled() && ([(SSSScreenshotsViewController *)self viewIfLoaded], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, v5 = [(SSSScreenshotsViewController *)self state], v4, v5 == 1))
    {
      objc_initWeak(location, self);
      v6 = dispatch_time(0, 1500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000487C0;
      block[3] = &unk_1000BA2F8;
      objc_copyWeak(&v13, location);
      dispatch_after(v6, &_dispatch_main_q, block);
      objc_destroyWeak(&v13);
      objc_destroyWeak(location);
    }

    else if (_SSScreenshotsRedesign2025Enabled())
    {
      viewIfLoaded = [(SSSScreenshotsViewController *)self viewIfLoaded];
      if (viewIfLoaded)
      {
        v8 = viewIfLoaded;
        state = [(SSSScreenshotsViewController *)self state];

        if (!state)
        {
          v10 = os_log_create("com.apple.screenshotservices", "Screenshot");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(location[0]) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "hide full-screen tip", location, 2u);
          }

          [(FullScreenPreferenceTipController *)self->_fullScreenTipController hideTipAnimated:1 completion:0];
          fullScreenTipController = self->_fullScreenTipController;
          self->_fullScreenTipController = 0;
        }
      }
    }
  }
}

- (void)_showFullScreenTip
{
  if ([(SSSScreenshotsViewController *)self state]== 1 && (!os_variant_has_internal_diagnostics() || (sub_100074C70() & 1) != 0))
  {
    if (self->_fullscreenTipLayoutGuide)
    {
      view = [(SSSScreenshotsViewController *)self view];
      [view removeLayoutGuide:self->_fullscreenTipLayoutGuide];
    }

    v4 = objc_alloc_init(UILayoutGuide);
    fullscreenTipLayoutGuide = self->_fullscreenTipLayoutGuide;
    self->_fullscreenTipLayoutGuide = v4;

    view2 = [(SSSScreenshotsViewController *)self view];
    [view2 addLayoutGuide:self->_fullscreenTipLayoutGuide];

    topAnchor = [(UILayoutGuide *)self->_fullscreenTipLayoutGuide topAnchor];
    view3 = [(SSSScreenshotsViewController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v27[0] = v21;
    leadingAnchor = [(UILayoutGuide *)self->_fullscreenTipLayoutGuide leadingAnchor];
    view4 = [(SSSScreenshotsViewController *)self view];
    safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v27[1] = v9;
    widthAnchor = [(UILayoutGuide *)self->_fullscreenTipLayoutGuide widthAnchor];
    v11 = [widthAnchor constraintEqualToConstant:44.0];
    v27[2] = v11;
    heightAnchor = [(UILayoutGuide *)self->_fullscreenTipLayoutGuide heightAnchor];
    v13 = [heightAnchor constraintEqualToConstant:44.0];
    v27[3] = v13;
    v14 = [NSArray arrayWithObjects:v27 count:4];
    [NSLayoutConstraint activateConstraints:v14];

    v15 = os_log_create("com.apple.screenshotservices", "Screenshot");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "show full-screen tip", buf, 2u);
    }

    v16 = objc_alloc_init(_TtC25ScreenshotServicesService33FullScreenPreferenceTipController);
    fullScreenTipController = self->_fullScreenTipController;
    self->_fullScreenTipController = v16;

    LOBYTE(v18) = 1;
    [(FullScreenPreferenceTipController *)self->_fullScreenTipController showTipFrom:self sourceItem:self->_fullscreenTipLayoutGuide passthroughViews:0 permittedArrowDirections:15 shouldHideArrow:1 tintColor:0 animated:v18];
  }
}

- (void)_configureBarsIfNecessary
{
  if (!self->_hasConfiguredBarButtonItems)
  {
    [(SSSScreenshotsViewController *)self _configureBarButtonItems];
    self->_hasConfiguredBarButtonItems = 1;
  }

  if (!self->_hasAddedNavigationItemToTopBar)
  {
    _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
    topBar = [_screenshotsView topBar];

    if (topBar)
    {
      self->_hasAddedNavigationItemToTopBar = 1;
      [topBar setAlpha:0.0];
      [topBar pushNavigationItem:self->_managedNavigationItem animated:0];
      [topBar setAlpha:1.0];
      [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:0 force:0];
    }
  }
}

- (void)_configureBarButtonItems
{
  v3 = objc_alloc_init(UINavigationItem);
  managedNavigationItem = self->_managedNavigationItem;
  self->_managedNavigationItem = v3;

  if (_SSScreenshotsRedesign2025Enabled())
  {
    v5 = +[SSChromeFactory closeBarButtonItem];
    closeItem = self->_closeItem;
    self->_closeItem = v5;

    [(UIBarButtonItem *)self->_closeItem setTarget:self];
    [(UIBarButtonItem *)self->_closeItem setAction:"_closePushed"];
    v7 = [UIColor colorWithWhite:1.0 alpha:0.8];
    [(UIBarButtonItem *)self->_closeItem setTintColor:v7];
  }

  v8 = [UIBarButtonItem _sss_shareItemWithTarget:self action:?];
  shareItem = self->_shareItem;
  self->_shareItem = v8;

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"SHARE" value:@"Share" table:0];
  [(UIBarButtonItem *)self->_shareItem setTitle:v11];

  v12 = [UIBarButtonItem alloc];
  v13 = [UIImage systemImageNamed:@"checkmark"];
  _buildDoneMenu = [(SSSScreenshotsViewController *)self _buildDoneMenu];
  v15 = [v12 initWithImage:v13 menu:_buildDoneMenu];
  doneItem = self->_doneItem;
  self->_doneItem = v15;

  [(UIBarButtonItem *)self->_doneItem setStyle:2];
  v17 = [UIColor colorWithWhite:1.0 alpha:0.8];
  [(UIBarButtonItem *)self->_doneItem setTintColor:v17];

  v18 = [UIBarButtonItem _sss_undoItemWithTarget:self action:?];
  undoItem = self->_undoItem;
  self->_undoItem = v18;

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"UNDO" value:@"Undo" table:0];
  [(UIBarButtonItem *)self->_undoItem setTitle:v21];

  objc_initWeak(&location, self);
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_100049844;
  v82[3] = &unk_1000BAF00;
  objc_copyWeak(&v83, &location);
  [(UIBarButtonItem *)self->_undoItem _setSecondaryActionsProvider:v82];
  v22 = [UIBarButtonItem _sss_redoItemWithTarget:self action:?];
  redoItem = self->_redoItem;
  self->_redoItem = v22;

  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"REDO" value:@"Redo" table:0];
  [(UIBarButtonItem *)self->_redoItem setTitle:v25];

  v26 = [UIBarButtonItem _sss_trashItemWithTarget:self action:"_deletePushed"];
  deleteItem = self->_deleteItem;
  self->_deleteItem = v26;

  v28 = +[NSBundle mainBundle];
  v29 = [v28 localizedStringForKey:@"DELETE" value:@"Delete" table:0];
  [(UIBarButtonItem *)self->_deleteItem setTitle:v29];

  v30 = objc_alloc_init(SSVellumOpacityControl);
  opacityControl = self->_opacityControl;
  self->_opacityControl = v30;

  v32 = self->_opacityControl;
  +[SSVellumOpacityControl preferredWidth];
  v34 = v33;
  [(SSVellumOpacityControl *)self->_opacityControl intrinsicContentSize];
  [(SSVellumOpacityControl *)v32 setFrame:0.0, 0.0, v34, v35];
  [(SSVellumOpacityControl *)self->_opacityControl addTarget:self action:"_opacityControlChanged" forControlEvents:4096];
  [(SSVellumOpacityControl *)self->_opacityControl addTarget:self action:"_opacityControlLifted" forControlEvents:448];
  v36 = [[UIBarButtonItem alloc] initWithCustomView:self->_opacityControl];
  opacityItem = self->_opacityItem;
  self->_opacityItem = v36;

  v38 = [UIBarButtonItem _sss_cropItemWithTarget:self action:"_enterCrop"];
  cropItem = self->_cropItem;
  self->_cropItem = v38;

  v40 = +[NSBundle mainBundle];
  v41 = [v40 localizedStringForKey:@"CROP" value:@"Crop" table:0];
  [(UIBarButtonItem *)self->_cropItem setTitle:v41];

  v42 = [UIBarButtonItem alloc];
  v43 = +[NSBundle mainBundle];
  v44 = [v43 localizedStringForKey:@"RESET" value:@"Reset" table:0];
  v45 = [v42 initWithTitle:v44 style:0 target:self action:"_resetCrop"];
  resetCropItem = self->_resetCropItem;
  self->_resetCropItem = v45;

  v47 = _SSScreenshotsRedesign2025Enabled();
  if (v47)
  {
    v48 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelCrop"];
    v49 = v48;
  }

  else
  {
    v50 = [UIBarButtonItem alloc];
    v49 = +[NSBundle mainBundle];
    v42 = [v49 localizedStringForKey:@"CANCEL" value:@"Cancel" table:0];
    v48 = [v50 initWithTitle:v42 style:0 target:self action:"_cancelCrop"];
  }

  v51 = v48;
  objc_storeStrong(&self->_cancelCropItem, v48);
  if ((v47 & 1) == 0)
  {
  }

  if (_SSScreenshotsRedesign2025Enabled())
  {
    [(UIBarButtonItem *)self->_cancelCropItem setStyle:0];
  }

  v52 = [UISegmentedControl alloc];
  v53 = +[NSBundle mainBundle];
  v54 = [v53 localizedStringForKey:@"SCREEN" value:@"Screen" table:0];
  v85[0] = v54;
  v55 = +[NSBundle mainBundle];
  v56 = [v55 localizedStringForKey:@"FULL_PAGE" value:@"Full Page" table:0];
  v85[1] = v56;
  v57 = [NSArray arrayWithObjects:v85 count:2];
  v58 = [v52 initWithItems:v57];
  contentSwitcher = self->_contentSwitcher;
  self->_contentSwitcher = v58;

  [(UISegmentedControl *)self->_contentSwitcher addTarget:self action:"_selectScreenshotOrFull:" forControlEvents:4096];
  [(UISegmentedControl *)self->_contentSwitcher setSelectedSegmentIndex:0];
  if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0)
  {
    [(UISegmentedControl *)self->_contentSwitcher setOverrideUserInterfaceStyle:2];
  }

  v60 = objc_alloc_init(UIView);
  contentSwitcherView = self->_contentSwitcherView;
  self->_contentSwitcherView = v60;

  [(UIView *)self->_contentSwitcherView addSubview:self->_contentSwitcher];
  [(UIView *)self->_contentSwitcherView setAlpha:self->_contentSwitcherAlpha];
  v62 = objc_alloc_init(UIBarButtonItem);
  annotationEnabledButton = self->_annotationEnabledButton;
  self->_annotationEnabledButton = v62;

  markupButtonImageForCurrentState = [(SSSScreenshotsViewController *)self markupButtonImageForCurrentState];
  [(UIBarButtonItem *)self->_annotationEnabledButton setImage:markupButtonImageForCurrentState];

  [(UIBarButtonItem *)self->_annotationEnabledButton setTarget:self];
  [(UIBarButtonItem *)self->_annotationEnabledButton setAction:"annotationButtonPressed"];
  v65 = +[NSBundle mainBundle];
  v66 = [v65 localizedStringForKey:@"MARKUP" value:@"Markup" table:0];
  image = [(UIBarButtonItem *)self->_annotationEnabledButton image];
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_1000498A8;
  v80[3] = &unk_1000BAF28;
  objc_copyWeak(&v81, &location);
  v68 = [UIAction actionWithTitle:v66 image:image identifier:0 handler:v80];
  [(UIBarButtonItem *)self->_annotationEnabledButton setMenuRepresentation:v68];

  v69 = objc_alloc_init(UIBarButtonItem);
  visualSearchBarButtonItem = self->_visualSearchBarButtonItem;
  self->_visualSearchBarButtonItem = v69;

  v71 = [UIImage _systemImageNamed:@"info.circle.and.sparkles"];
  [(UIBarButtonItem *)self->_visualSearchBarButtonItem setImage:v71];

  [(UIBarButtonItem *)self->_visualSearchBarButtonItem setTarget:self];
  [(UIBarButtonItem *)self->_visualSearchBarButtonItem setAction:"viButtonPressed:"];
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView setShareItemTarget:self];

  _screenshotsView2 = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView2 setShareItemAction:"_sharePushed:"];

  _screenshotsView3 = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView3 setUndoItemTarget:self];

  _screenshotsView4 = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView4 setUndoItemAction:"_undoPushed"];

  _screenshotsView5 = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView5 setRedoItemTarget:self];

  _screenshotsView6 = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView6 setRedoItemAction:"_redoPushed"];

  [(UIBarButtonItem *)self->_closeItem setAccessibilityIdentifier:@"close-button"];
  [(UIBarButtonItem *)self->_shareItem setAccessibilityIdentifier:@"share-button"];
  [(UIBarButtonItem *)self->_doneItem setAccessibilityIdentifier:@"done-button"];
  [(UIBarButtonItem *)self->_undoItem setAccessibilityIdentifier:@"undo-button"];
  [(UIBarButtonItem *)self->_redoItem setAccessibilityIdentifier:@"redo-button"];
  [(UIBarButtonItem *)self->_deleteItem setAccessibilityIdentifier:@"delete-button"];
  [(UIBarButtonItem *)self->_cropItem setAccessibilityIdentifier:@"content-toggle-crop"];
  [(UIBarButtonItem *)self->_resetCropItem setAccessibilityIdentifier:@"content-reset-crop"];
  [(UIBarButtonItem *)self->_cancelCropItem setAccessibilityIdentifier:@"content-cancel-crop"];
  [(UISegmentedControl *)self->_contentSwitcher setAccessibilityIdentifier:@"content-switcher-control"];
  if (_SSEnableContinuousScreenCaptureForBugFiling() && +[SSSRecapViewController recapAvailable])
  {
    v78 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:15 target:self action:"_recapPushed"];
    recapItem = self->_recapItem;
    self->_recapItem = v78;

    [(UIBarButtonItem *)self->_recapItem setAccessibilityIdentifier:@"recap-button"];
  }

  [(SSSScreenshotsViewController *)self _updateUndoRedoEnabledState];
  [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:0 force:0];
  objc_destroyWeak(&v81);
  objc_destroyWeak(&v83);
  objc_destroyWeak(&location);
}

- (void)configureCloseButtonMenuIfNecessary
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  editMode = [_screenshotsView editMode];

  _screenshotsView2 = [(SSSScreenshotsViewController *)self _screenshotsView];
  screenshots = [_screenshotsView2 screenshots];
  v7 = [screenshots count];

  currentScreenshot = [(SSSScreenshotsViewController *)self currentScreenshot];
  pDFDocument = [currentScreenshot PDFDocument];
  pageCount = [pDFDocument pageCount];

  if (editMode)
  {
    v11 = 1;
  }

  else
  {
    v11 = v7 <= 1;
  }

  v12 = !v11;
  v13 = v12 | (editMode == 1 && pageCount > 1);
  if (editMode == 1 && pageCount > 1)
  {
    v14 = pageCount;
  }

  else
  {
    v14 = 0;
  }

  if (v13 != [(UIBarButtonItem *)self->_closeItem _menuIsPrimary]|| editMode != [(SSSScreenshotsViewController *)self closeMenuEditMode])
  {
    [(SSSScreenshotsViewController *)self setCloseMenuEditMode:editMode];
    if (v13)
    {
      v15 = [(SSSScreenshotsViewController *)self closeMenuForPDFPageCount:v14];
      [(UIBarButtonItem *)self->_closeItem setMenu:v15];
    }

    else
    {
      [(UIBarButtonItem *)self->_closeItem setMenu:0];
    }

    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = "_closePushed";
    }

    closeItem = self->_closeItem;

    [(UIBarButtonItem *)closeItem setAction:v16];
  }
}

- (void)_performClose
{
  [(SSSScreenshotsViewController *)self setDismissalType:9];
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  screenshots = [_screenshotsView screenshots];

  v5 = os_log_create("com.apple.screenshotservices", "Screenshot");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = [screenshots count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Close item pushed, request delete %ld screenshots", &v7, 0xCu);
  }

  if ([screenshots count])
  {
    delegate = [(SSSScreenshotsViewController *)self delegate];
    [delegate screenshotsViewController:self requestsDeleteForScreenshots:screenshots deleteOptions:2 forReason:1];
  }
}

- (id)closeMenuForPDFPageCount:(int64_t)count
{
  v5 = +[NSBundle mainBundle];
  v19 = [v5 localizedStringForKey:@"DELETE_SCREENSHOT_ALERT_BUTTON" value:@"Delete Screenshot" table:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"DELETE_PAGE_ALERT_BUTTON" value:@"Delete Page" table:0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"DELETE_ALL" value:@"Delete All" table:0];

  v10 = v19;
  if (count > 0)
  {
    v10 = v7;
  }

  v11 = v10;
  objc_initWeak(&location, self);
  v12 = [UIImage systemImageNamed:@"trash"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100049EC0;
  v22[3] = &unk_1000BAF28;
  objc_copyWeak(&v23, &location);
  v13 = [UIAction actionWithTitle:v11 image:v12 identifier:0 handler:v22];

  v14 = [UIImage systemImageNamed:@"xmark.circle"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100049F00;
  v20[3] = &unk_1000BAF28;
  objc_copyWeak(&v21, &location);
  v15 = [UIAction actionWithTitle:v9 image:v14 identifier:0 handler:v20];

  v25[0] = v13;
  v25[1] = v15;
  v16 = [NSArray arrayWithObjects:v25 count:2];
  v17 = [UIMenu menuWithChildren:v16];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v17;
}

- (id)_accessibilityHUDWindow
{
  view = [(SSSScreenshotsViewController *)self view];
  window = [view window];

  return window;
}

- (void)_updateBarButtonItemPositionsAnimated:(BOOL)animated force:(BOOL)force
{
  animatedCopy = animated;
  [(SSSScreenshotsViewController *)self updatePrimaryAction];
  if (!force && !self->_hasConfiguredBarButtonItems)
  {
    return;
  }

  v95 = animatedCopy;
  v7 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  +[SSChromeHelper defaultBarButtonSpacing];
  v96 = [SSChromeHelper createFixedSpaceBarButtonItemWithWidth:?];
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  editMode = [_screenshotsView editMode];

  _screenshotsView2 = [(SSSScreenshotsViewController *)self _screenshotsView];
  currentLiveTextBarButtonItemIfExists = [_screenshotsView2 currentLiveTextBarButtonItemIfExists];

  shouldShowSharrow = self->_shouldShowSharrow;
  recapItem = self->_recapItem;
  v14 = +[VKCImageAnalyzer supportedAnalysisTypes];
  traitCollection = [(SSSScreenshotsViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v17 = &selRef_applicationDidBecomeActive_;
  v94 = userInterfaceIdiom;
  v97 = editMode;
  if (userInterfaceIdiom == 1)
  {
    [(UIBarButtonItem *)self->_opacityItem _setFlexible:0];
    view = [(SSSScreenshotsViewController *)self view];
    [SSChromeHelper widthForOpacityControlInView:view withContentSwitcher:self->_contentSwitcher];
    v20 = v19;

    opacityControl = self->_opacityControl;
    [(SSVellumOpacityControl *)opacityControl intrinsicContentSize];
    v22 = 0.0;
    [(SSVellumOpacityControl *)opacityControl setFrame:0.0, 0.0, v20, v23];
    v24 = _SSScreenshotsRedesign2025Enabled();
    v25 = &OBJC_IVAR___SSSScreenshotsViewController__closeItem;
    if (editMode == 2)
    {
      v25 = &OBJC_IVAR___SSSScreenshotsViewController__cancelCropItem;
    }

    if (!v24)
    {
      v25 = &OBJC_IVAR___SSSScreenshotsViewController__doneItem;
    }

    [v7 addObject:*(&self->super.super.super.isa + *v25)];
    if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0)
    {
      +[SSChromeHelper defaultBarButtonSpacing];
      v22 = v26;
    }

    v27 = [UIBarButtonItem fixedSpaceItemOfWidth:v22];
    [v7 addObject:v27];

    if (_SSScreenshotsRedesign2025Enabled())
    {
      v17 = &selRef_applicationDidBecomeActive_;
      if (editMode == 2)
      {
        goto LABEL_74;
      }

      v28 = recapItem;
      [v7 addObject:self->_opacityItem];
    }

    else
    {
      [v7 addObject:self->_opacityItem];
      v31 = editMode == 2;
      v17 = &selRef_applicationDidBecomeActive_;
      v28 = recapItem;
      if (v31)
      {
        goto LABEL_74;
      }
    }

    if (_SSScreenshotsRedesign2025Enabled())
    {
      [v8 addObject:self->_doneItem];
      v32 = &_swift_stdlib_bridgeErrorToNSError_ptr;
      v33 = [UIBarButtonItem fixedSpaceItemOfWidth:0.0];
      [v8 addObject:v33];

      if (shouldShowSharrow)
      {
        [v8 addObject:self->_shareItem];
      }

      [v8 addObject:self->_annotationEnabledButton];
      _screenshotsView3 = [(SSSScreenshotsViewController *)self _screenshotsView];
      if ([_screenshotsView3 editMode])
      {
        v35 = 0;
      }

      else
      {
        _screenshotsView4 = [(SSSScreenshotsViewController *)self _screenshotsView];
        screenshots = [_screenshotsView4 screenshots];
        v55 = [screenshots count] > 1;

        v35 = v55;
      }

      _screenshotsView5 = [(SSSScreenshotsViewController *)self _screenshotsView];
      if ([_screenshotsView5 editMode] == 1)
      {
        [(SSSScreenshotsViewController *)self currentScreenshot];
        v58 = v57 = v35;
        pDFDocument = [v58 PDFDocument];
        v60 = [pDFDocument pageCount] > 1;

        v35 = v57;
        v32 = &_swift_stdlib_bridgeErrorToNSError_ptr;
      }

      else
      {
        v60 = 0;
      }

      if (v35 || v60)
      {
        [v8 addObject:self->_deleteItem];
      }

      _screenshotsView6 = [(SSSScreenshotsViewController *)self _screenshotsView];
      if ([_screenshotsView6 editMode] == 1)
      {
        _cropPDFEnabled = [(SSSScreenshotsViewController *)self _cropPDFEnabled];

        if (_cropPDFEnabled)
        {
          [v8 addObject:self->_cropItem];
        }
      }

      else
      {
      }

      v63 = [v32[167] fixedSpaceItemOfWidth:0.0];
      [v8 addObject:v63];

      v17 = &selRef_applicationDidBecomeActive_;
      if (currentLiveTextBarButtonItemIfExists && (v14 & 1) != 0)
      {
        [v8 addObject:currentLiveTextBarButtonItemIfExists];
        if ((v14 & 0x30) != 0)
        {
          [v8 addObject:self->_visualSearchBarButtonItem];
        }

        v64 = [v32[167] fixedSpaceItemOfWidth:0.0];
        [v8 addObject:v64];
      }

      if (v28)
      {
        [v8 addObject:self->_recapItem];
        v45 = [UIBarButtonItem fixedSpaceItemOfWidth:0.0];
        [v8 addObject:v45];
LABEL_73:
      }
    }

    else
    {
      if (shouldShowSharrow)
      {
        shareItem = self->_shareItem;
        v39 = [NSArray arrayWithObjects:&shareItem count:1];
        [v8 addObjectsFromArray:v39];
      }

      deleteItem = self->_deleteItem;
      v40 = [NSArray arrayWithObjects:&deleteItem count:1];
      [v8 addObjectsFromArray:v40];

      if (v28)
      {
        v41 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
        [v41 setWidth:31.0];
        [v8 addObject:v41];

        [v8 addObject:self->_recapItem];
      }

      [v8 addObject:self->_annotationEnabledButton];
      if (currentLiveTextBarButtonItemIfExists && (v14 & 1) != 0)
      {
        [v8 addObject:currentLiveTextBarButtonItemIfExists];
      }

      if ((v14 & 0x30) != 0)
      {
        [v8 addObject:self->_visualSearchBarButtonItem];
      }

      [v8 addObject:v96];
    }
  }

  else
  {
    if (_SSScreenshotsRedesign2025Enabled())
    {
      v29 = &OBJC_IVAR___SSSScreenshotsViewController__closeItem;
      if (editMode == 2)
      {
        v29 = &OBJC_IVAR___SSSScreenshotsViewController__cancelCropItem;
      }

      [v7 addObject:*(&self->super.super.super.isa + *v29)];
      v30 = [UIBarButtonItem fixedSpaceItemOfWidth:0.0];
      [v7 addObject:v30];
    }

    else
    {
      [v7 addObject:self->_doneItem];
    }

    if (editMode != 2)
    {
      if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0 && shouldShowSharrow)
      {
        [v8 addObject:self->_shareItem];
      }

      if (!_SSScreenshotsRedesign2025Enabled())
      {
        [(SSSScreenshotsViewController *)self configureCloseButtonMenuIfNecessary];
        if (recapItem)
        {
          v101 = self->_recapItem;
          v42 = [NSArray arrayWithObjects:&v101 count:1];
          [v8 addObjectsFromArray:v42];
        }

        if (!editMode)
        {
          annotationEnabledButton = self->_annotationEnabledButton;
          v43 = [NSArray arrayWithObjects:&annotationEnabledButton count:1];
          [v8 addObjectsFromArray:v43];
        }

        undoItem = self->_undoItem;
        v99[0] = self->_redoItem;
        v99[1] = undoItem;
        v45 = [NSArray arrayWithObjects:v99 count:2];
        [v8 addObjectsFromArray:v45];
        goto LABEL_73;
      }

      [v8 addObject:self->_doneItem];
      v36 = [UIBarButtonItem fixedSpaceItemOfWidth:0.0];
      [v8 addObject:v36];

      if (shouldShowSharrow)
      {
        [v8 addObject:self->_shareItem];
      }

      [v8 addObject:self->_annotationEnabledButton];
      [(SSSScreenshotsViewController *)self configureCloseButtonMenuIfNecessary];
      _screenshotsView7 = [(SSSScreenshotsViewController *)self _screenshotsView];
      if ([_screenshotsView7 editMode] == 1)
      {
        _cropPDFEnabled2 = [(SSSScreenshotsViewController *)self _cropPDFEnabled];

        if (_cropPDFEnabled2)
        {
          [v8 addObject:self->_cropItem];
        }
      }

      else
      {
      }

      v46 = [UIBarButtonItem fixedSpaceItemOfWidth:0.0];
      [v8 addObject:v46];

      if (recapItem)
      {
        [v8 addObject:self->_recapItem];
        v47 = [UIBarButtonItem fixedSpaceItemOfWidth:0.0];
        [v8 addObject:v47];
      }

      _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
      canUndo = [_currentScreenshotView canUndo];
      canRedo = [_currentScreenshotView canRedo];
      if ((canUndo & 1) != 0 || canRedo)
      {
        redoItem = self->_redoItem;
        v102[0] = self->_undoItem;
        v102[1] = redoItem;
        v52 = [NSArray arrayWithObjects:v102 count:2];
        [v7 addObjectsFromArray:v52];
      }
    }
  }

LABEL_74:
  _screenshotsView8 = [(SSSScreenshotsViewController *)self _screenshotsView];
  topBar = [_screenshotsView8 topBar];

  [(UIView *)self->_contentSwitcherView setHidden:[(SSSScreenshotsViewController *)self _layoutShouldShowContentSwitcher]^ 1];
  [(UIView *)self->_contentSwitcherView setUserInteractionEnabled:[(SSSScreenshotsViewController *)self _layoutShouldEnableContentSwitcher]];
  if (![(SSSScreenshotsViewController *)self _layoutShouldShowContentSwitcher])
  {
    _screenshotsView9 = [(SSSScreenshotsViewController *)self _screenshotsView];
    editMode2 = [_screenshotsView9 editMode];

    if (editMode2)
    {
      _screenshotsView10 = [(SSSScreenshotsViewController *)self _screenshotsView];
      [_screenshotsView10 setEditMode:0];
    }

    goto LABEL_86;
  }

  v67 = *(v17 + 735);
  if ([*(&self->super.super.super.isa + v67) selectedSegmentIndex] != 1)
  {
    goto LABEL_85;
  }

  if (v94 == 1)
  {
    +[SSChromeHelper defaultBarButtonSpacing];
    v68 = [SSChromeHelper createFixedSpaceBarButtonItemWithWidth:?];
    [v7 addObject:v68];
  }

  if ([(SSSScreenshotsViewController *)self _cropPDFEnabled])
  {
    if (v97 == 2)
    {
      [v8 addObject:self->_doneItem];
      _screenshotsView11 = [(SSSScreenshotsViewController *)self _screenshotsView];
      isCropped = [_screenshotsView11 isCropped];

      if (isCropped)
      {
        [v8 addObject:self->_resetCropItem];
      }

      +[SSChromeHelper contentSwitcherPadding];
      goto LABEL_86;
    }

    if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0)
    {
      [v7 addObject:self->_cropItem];
    }

    +[SSChromeHelper contentSwitcherPadding];
  }

  else
  {
LABEL_85:
    +[SSChromeHelper contentSwitcherPadding];
    if (v97 == 2)
    {
LABEL_86:
      v75 = 0;
      goto LABEL_87;
    }
  }

  v80 = v74;
  if (![(SSSScreenshotsViewController *)self _contentSwitcherShouldMoveDown])
  {
    v86 = *(&self->super.super.super.isa + v67);
    view2 = [(SSSScreenshotsViewController *)self view];
    [SSChromeHelper widthForContentSwitcher:v86 forView:view2];
    v89 = v88;

    [*(&self->super.super.super.isa + v67) setWidth:0 forSegmentAtIndex:v89];
    [*(&self->super.super.super.isa + v67) setWidth:1 forSegmentAtIndex:v89];
    [*(&self->super.super.super.isa + v67) bounds];
    v91 = v90;
    v93 = v92 + v80 * 2.0;
    [(UIView *)self->_contentSwitcherView setFrame:?];
    [*(&self->super.super.super.isa + v67) setFrame:{v80, 0.0, v93, v91}];
    v76 = self->_contentSwitcherView;
    v75 = 0;
    goto LABEL_88;
  }

  v75 = [[_UINavigationBarPalette alloc] initWithContentView:self->_contentSwitcherView];
  [v75 setPreferredHeight:38.0];
  contentSwitcherView = self->_contentSwitcherView;
  view3 = [(SSSScreenshotsViewController *)self view];
  [view3 frame];
  [(UIView *)contentSwitcherView setFrame:0.0, 0.0];

  v83 = *(&self->super.super.super.isa + v67);
  view4 = [(SSSScreenshotsViewController *)self view];
  [view4 frame];
  [v83 setFrame:{v80, 4.0, v85 + v80 * -2.0, 30.0}];

LABEL_87:
  v76 = 0;
LABEL_88:
  [(UINavigationItem *)self->_managedNavigationItem setLeftBarButtonItems:v7 animated:v95];
  [(UINavigationItem *)self->_managedNavigationItem setRightBarButtonItems:v8 animated:v95];
  [(UINavigationItem *)self->_managedNavigationItem setTitleView:v76];
  [(UINavigationItem *)self->_managedNavigationItem _setBottomPalette:v75];
  topItem = [topBar topItem];
  managedNavigationItem = self->_managedNavigationItem;

  if (topItem != managedNavigationItem)
  {
    v79 = [topBar popNavigationItemAnimated:0];
    [topBar pushNavigationItem:self->_managedNavigationItem animated:0];
  }
}

- (BOOL)_layoutShouldShowContentSwitcher
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  _layoutShouldShowContentSwitcher = [_screenshotsView _layoutShouldShowContentSwitcher];

  return _layoutShouldShowContentSwitcher;
}

- (BOOL)_layoutShouldEnableContentSwitcher
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  _layoutShouldEnableContentSwitcher = [_screenshotsView _layoutShouldEnableContentSwitcher];

  return _layoutShouldEnableContentSwitcher;
}

- (BOOL)_contentSwitcherShouldMoveDown
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  _contentSwitcherShouldMoveDown = [_screenshotsView _contentSwitcherShouldMoveDown];

  return _contentSwitcherShouldMoveDown;
}

- (void)_presentActivityViewControllerFromBarButtonItem:(id)item
{
  itemCopy = item;
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004AF38;
  v15[3] = &unk_1000BA208;
  objc_copyWeak(&v17, &location);
  v5 = itemCopy;
  v16 = v5;
  v6 = objc_retainBlock(v15);
  presentedViewController = [(SSSScreenshotsViewController *)self presentedViewController];
  v8 = presentedViewController;
  if (presentedViewController)
  {
    if (![presentedViewController isBeingDismissed])
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10004AFC8;
      v12[3] = &unk_1000BA998;
      v13 = v6;
      [v8 dismissViewControllerAnimated:1 completion:v12];
      v9 = v13;
      goto LABEL_11;
    }

    v9 = os_log_create("com.apple.screenshotservices", "Screenshot");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "present activity vc from bar button called but currently presented vc is being dismissed";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    }
  }

  else
  {
    if (([(SSSActivityViewController *)self->_activityViewController isBeingPresented]& 1) == 0)
    {
      presentingViewController = [(SSSActivityViewController *)self->_activityViewController presentingViewController];

      if (!presentingViewController)
      {
        (v6[2])(v6);
        goto LABEL_12;
      }
    }

    v9 = os_log_create("com.apple.screenshotservices", "Screenshot");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "present activity vc from bar button called but activity vc is already being presented or is presented";
      goto LABEL_9;
    }
  }

LABEL_11:

LABEL_12:
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_actuallyPresentShareFromBarButtonItem:(id)item
{
  itemCopy = item;
  [(SSSScreenshotsViewController *)self _updateActivityViewController];
  [(SSSScreenshotsViewController *)self _presentActivityViewControllerFromBarButtonItem:itemCopy];

  [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:0 force:0];
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView setIsSharing:1];
}

- (void)_sharePushed:(id)pushed
{
  pushedCopy = pushed;
  delegate = [(SSSScreenshotsViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SSSScreenshotsViewController *)self delegate];
    v8 = [delegate2 screenshotsViewControllerShouldAllowSharing:self];

    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = os_log_create("com.apple.screenshotservices", "ShareSheet");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Sharing was attempted but is not allowed because device is locked", buf, 2u);
    }
  }

  [(SSSScreenshotsViewController *)self becomeFirstResponder];
  delegate3 = [(SSSScreenshotsViewController *)self delegate];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004B1BC;
  v11[3] = &unk_1000BAF50;
  v11[4] = self;
  v12 = pushedCopy;
  [delegate3 screenshotsViewController:self requestsPresentingActivityViewControllerWithBlock:v11];

LABEL_8:
}

- (void)annotationButtonPressed
{
  [(SSSScreenshotsViewController *)self setAnnotationModeEnabled:[(SSSScreenshotsViewController *)self annotationModeEnabled]^ 1];
  annotationModeEnabled = [(SSSScreenshotsViewController *)self annotationModeEnabled];

  __SSSetAnnotationModePreference(annotationModeEnabled);
}

- (void)_handlePencilSqueezeInteractionWillShowPaletteViewNotification:(id)notification
{
  v4 = os_log_create("com.apple.screenshotservices", "Screenshot");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = [(SSSScreenshotsViewController *)self annotationModeEnabled];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "will show squeeze palette view, annotationModeEnabled: %{BOOL}d", v6, 8u);
  }

  if (![(SSSScreenshotsViewController *)self annotationModeEnabled])
  {
    [(SSSScreenshotsViewController *)self setAnnotationModeEnabled:1];
    _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
    [_screenshotsView setNeedsLayout];
  }
}

- (BOOL)isShowingDoneActionSheet
{
  presentedViewController = [(SSSScreenshotsViewController *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_buildDoneMenu
{
  objc_initWeak(&location, self);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10004B60C;
  v9 = &unk_1000BAFA0;
  objc_copyWeak(&v10, &location);
  v2 = [UIDeferredMenuElement elementWithUncachedProvider:&v6];
  v12 = v2;
  v3 = [NSArray arrayWithObjects:&v12 count:1, v6, v7, v8, v9];
  v4 = [UIMenu menuWithChildren:v3];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v4;
}

- (id)_buildDoneMenuElements
{
  v70 = +[NSMutableArray array];
  objc_initWeak(location, self);
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  editMode = [_screenshotsView editMode];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"SAVE_TO_PHOTOS" value:@"Save to Photos" table:0];
  v7 = [UIImage systemImageNamed:@"square.and.arrow.down"];
  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_10004C6FC;
  v94[3] = &unk_1000BAFC8;
  objc_copyWeak(&v95, location);
  v96 = editMode == 0;
  v62 = [UIAction actionWithTitle:v6 image:v7 identifier:0 handler:v94];

  v69 = [UIImage systemImageNamed:@"folder"];
  v8 = +[NSBundle mainBundle];
  v67 = [v8 localizedStringForKey:@"SAVE_TO_FILES" value:@"Save to Files" table:0];

  v9 = +[NSBundle mainBundle];
  v66 = [v9 localizedStringForKey:@"SAVE_PDF_TO_FILES" value:@"Save PDF to Files" table:0];

  v10 = v67;
  if (editMode)
  {
    v10 = v66;
  }

  v65 = v10;
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_10004C7BC;
  v91[3] = &unk_1000BAFC8;
  objc_copyWeak(&v92, location);
  v93 = editMode == 0;
  v59 = [UIAction actionWithTitle:v65 image:v69 identifier:0 handler:v91];
  v61 = [UIImage _systemImageNamed:@"quicknote"];
  if (_SSScreenshotsInQuickNoteEnabled())
  {
    v99 = 0;
    v100 = &v99;
    v101 = 0x2020000000;
    v11 = off_1000D4AD8;
    v102 = off_1000D4AD8;
    if (!off_1000D4AD8)
    {
      location[1] = _NSConcreteStackBlock;
      location[2] = 3221225472;
      location[3] = sub_100052FC4;
      location[4] = &unk_1000B9FA8;
      v98 = &v99;
      v12 = sub_100053014();
      v13 = dlsym(v12, "SYIsQuickNoteAvailable");
      *(v98[1] + 24) = v13;
      off_1000D4AD8 = *(v98[1] + 24);
      v11 = v100[3];
    }

    _Block_object_dispose(&v99, 8);
    if (!v11)
    {
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v14 = v11();
    if (((editMode == 0) & v14) == 1)
    {
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"SAVE_TO_QUICK_NOTE" value:@"Save to Quick Note" table:0];

      v89[0] = _NSConcreteStackBlock;
      v89[1] = 3221225472;
      v89[2] = sub_10004C860;
      v89[3] = &unk_1000BAF28;
      objc_copyWeak(&v90, location);
      v68 = [UIAction actionWithTitle:v16 image:v61 identifier:0 handler:v89];
      objc_destroyWeak(&v90);

      v14 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
  }

  v68 = 0;
LABEL_11:
  v17 = +[NSBundle mainBundle];
  v64 = [v17 localizedStringForKey:@"SAVE_TO_PHOTOS_AND_FILES" value:@"Save All to Photos and Files" table:0];

  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_10004C8F0;
  v87[3] = &unk_1000BAF28;
  objc_copyWeak(&v88, location);
  v57 = [UIAction actionWithTitle:v64 image:v69 identifier:0 handler:v87];
  if (v14)
  {
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"SAVE_ALL_TO_A_QUICK_NOTE_AND_FILES" value:@"Save All to a Quick Note and Files" table:0];

    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_10004C980;
    v85[3] = &unk_1000BAF28;
    objc_copyWeak(&v86, location);
    v56 = [UIAction actionWithTitle:v19 image:v61 identifier:0 handler:v85];
    objc_destroyWeak(&v86);
  }

  else
  {
    v56 = 0;
  }

  v20 = +[NSBundle mainBundle];
  v63 = [v20 localizedStringForKey:@"SAVE_ALL_TO_FILES" value:@"Save All to Files" table:0];

  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_10004CA10;
  v83[3] = &unk_1000BAF28;
  objc_copyWeak(&v84, location);
  v55 = [UIAction actionWithTitle:v63 image:v69 identifier:0 handler:v83];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_10004CAA0;
  v81[3] = &unk_1000BAF28;
  objc_copyWeak(&v82, location);
  v58 = [UIAction actionWithTitle:@"Export Vellum PDF" image:0 identifier:0 handler:v81];
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"SHARE_BETA_FEEDBACK" value:@"Share Beta Feedback…" table:0];
  v23 = [UIImage systemImageNamed:@"exclamationmark.bubble"];
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_10004CAEC;
  v79[3] = &unk_1000BAF28;
  objc_copyWeak(&v80, location);
  v60 = [UIAction actionWithTitle:v22 image:v23 identifier:0 handler:v79];

  if ([(SSSScreenshotsViewController *)self _shouldSendToDeveloper])
  {
    [v70 addObject:v60];
  }

  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"COPY_AND_DELETE_ACTION_TITLE" value:@"Copy and Delete" table:0];
  v26 = [UIImage _systemImageNamed:@"document.on.trash"];
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_10004CB2C;
  v77[3] = &unk_1000BAF28;
  objc_copyWeak(&v78, location);
  v27 = [UIAction actionWithTitle:v25 image:v26 identifier:0 handler:v77];

  [v27 setAttributes:2];
  v28 = +[NSBundle mainBundle];
  v29 = [v28 localizedStringForKey:@"DELETE_SCREENSHOTS_FORMAT" value:&stru_1000BC350 table:0];
  visibleScreenshots = [(SSSScreenshotsViewController *)self visibleScreenshots];
  v31 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v29, [visibleScreenshots count]);

  v32 = [UIImage systemImageNamed:@"trash"];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_10004CBD8;
  v75[3] = &unk_1000BAF28;
  objc_copyWeak(&v76, location);
  v33 = [UIAction actionWithTitle:v31 image:v32 identifier:0 handler:v75];

  [v33 setAttributes:2];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  _screenshotsView2 = [(SSSScreenshotsViewController *)self _screenshotsView];
  visibleScreenshots2 = [_screenshotsView2 visibleScreenshots];

  v36 = [visibleScreenshots2 countByEnumeratingWithState:&v71 objects:v105 count:16];
  if (!v36)
  {

LABEL_28:
    [v70 addObject:v62];
    goto LABEL_29;
  }

  v37 = 0;
  v38 = *v72;
  do
  {
    for (i = 0; i != v36; i = i + 1)
    {
      if (*v72 != v38)
      {
        objc_enumerationMutation(visibleScreenshots2);
      }

      v37 |= [*(*(&v71 + 1) + 8 * i) lastViewEditMode] == 1;
    }

    v36 = [visibleScreenshots2 countByEnumeratingWithState:&v71 objects:v105 count:16];
  }

  while (v36);

  if ((v37 & 1) == 0)
  {
    goto LABEL_28;
  }

  _screenshotsView3 = [(SSSScreenshotsViewController *)self _screenshotsView];
  visibleScreenshots3 = [_screenshotsView3 visibleScreenshots];
  v42 = [visibleScreenshots3 count] > 1;

  if (v42)
  {
    [v70 addObject:v57];
    [v70 addObject:v55];
    v43 = v56;
    if (!v56)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  _screenshotsView4 = [(SSSScreenshotsViewController *)self _screenshotsView];
  visibleScreenshots4 = [_screenshotsView4 visibleScreenshots];
  firstObject = [visibleScreenshots4 firstObject];
  pdfCanBeConvertedToImage = [firstObject pdfCanBeConvertedToImage];

  if (pdfCanBeConvertedToImage)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (self->_shouldShowSharrow)
  {
    [v70 addObject:v59];
  }

  if (v68)
  {
    v43 = v68;
    if (self->_shouldShowSharrow)
    {
LABEL_33:
      [v70 addObject:v43];
    }
  }

LABEL_34:
  if (self->_shouldShowSharrow && _SSEnableVellumExport())
  {
    [v70 addObject:v58];
  }

  v44 = [v70 copy];
  v45 = [UIMenu menuWithTitle:&stru_1000BC350 image:0 identifier:0 options:1 children:v44];
  v104[0] = v45;
  v103[0] = v27;
  v103[1] = v33;
  v46 = [NSArray arrayWithObjects:v103 count:2];
  v47 = [UIMenu menuWithTitle:&stru_1000BC350 image:0 identifier:0 options:1 children:v46];
  v104[1] = v47;
  v48 = [NSArray arrayWithObjects:v104 count:2];
  v49 = [UIMenu menuWithTitle:&stru_1000BC350 image:0 identifier:0 options:1 children:v48];

  objc_destroyWeak(&v76);
  objc_destroyWeak(&v78);

  objc_destroyWeak(&v80);
  objc_destroyWeak(&v82);

  objc_destroyWeak(&v84);
  objc_destroyWeak(&v88);

  objc_destroyWeak(&v92);
  objc_destroyWeak(&v95);
  objc_destroyWeak(location);

  return v49;
}

- (BOOL)closeIsPrimaryAction
{
  selfCopy = self;
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  currentScreenshot = [_screenshotsView currentScreenshot];
  v5 = [_screenshotsView numberOfScreenshotImages] != 1;
  hasUnsavedImageEdits = [currentScreenshot hasUnsavedImageEdits];
  isCropped = [_screenshotsView isCropped];
  LOBYTE(selfCopy) = [(SSSScreenshotsViewController *)selfCopy didInvokeVICard]& ~(v5 | hasUnsavedImageEdits | isCropped);

  return selfCopy & 1;
}

- (void)updatePrimaryAction
{
  if (_SSVisualIntelligenceV2Enabled())
  {
    closeIsPrimaryAction = [(SSSScreenshotsViewController *)self closeIsPrimaryAction];
    if (closeIsPrimaryAction)
    {
      v4 = 0;
    }

    else
    {
      v4 = 2;
    }

    if (closeIsPrimaryAction)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    [(UIBarButtonItem *)self->_doneItem setStyle:v4];
    closeItem = self->_closeItem;

    [(UIBarButtonItem *)closeItem setStyle:v5];
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView setNeedsLayout];
}

- (void)_savePDFToPhotosPushed
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  visibleScreenshots = [(SSSScreenshotsViewController *)self visibleScreenshots];
  v4 = [visibleScreenshots countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(visibleScreenshots);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 lastViewEditMode] == 1)
        {
          pdfAsImage = [v8 pdfAsImage];
          v10 = pdfAsImage;
          if (pdfAsImage)
          {
            UIImageWriteToSavedPhotosAlbum(pdfAsImage, self, "_image:didFinishSavingWithError:contextInfo:", 0);
          }
        }
      }

      v5 = [visibleScreenshots countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_image:(id)_image didFinishSavingWithError:(id)error contextInfo:(void *)info
{
  errorCopy = error;
  if (errorCopy)
  {
    v6 = os_log_create("com.apple.screenshotservices", "Screenshot");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100074DA4(errorCopy, v6);
    }
  }
}

- (void)_saveToFilesPushed:(BOOL)pushed savePDF:(BOOL)f
{
  fCopy = f;
  pushedCopy = pushed;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10004D200;
  v26[3] = &unk_1000BB018;
  v26[4] = self;
  v7 = objc_retainBlock(v26);
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  visibleScreenshots = [(SSSScreenshotsViewController *)self visibleScreenshots];
  v11 = [visibleScreenshots countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(visibleScreenshots);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if ([v15 lastViewEditMode])
        {
          temporaryPDFFile = [v15 temporaryPDFFile];
          if (temporaryPDFFile)
          {
            [v9 addObject:temporaryPDFFile];
          }
        }

        else
        {
          [v8 addObject:v15];
        }
      }

      v12 = [visibleScreenshots countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v12);
  }

  if (pushedCopy)
  {
    v17 = +[SSSScreenshotManager sharedScreenshotManager];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10004D39C;
    v18[3] = &unk_1000BB040;
    v21 = fCopy;
    v20 = v7;
    v19 = v9;
    [v17 saveScreenshotsToTemporaryLocation:v8 completion:v18];
  }

  else if (fCopy)
  {
    (v7[2])(v7, v9);
  }
}

- (void)_clearSecurityScopedResourcesAndTemporaryFiles
{
  [(NSMutableArray *)self->_securityScopedResourceURLs enumerateObjectsUsingBlock:&stru_1000BB080];
  securityScopedResourceURLs = self->_securityScopedResourceURLs;
  self->_securityScopedResourceURLs = 0;

  [(NSMutableArray *)self->_temporaryURLs enumerateObjectsUsingBlock:&stru_1000BB0A0];
  temporaryURLs = self->_temporaryURLs;
  self->_temporaryURLs = 0;
}

- (void)_dismissWithDeleteOptions:(unint64_t)options
{
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10004D788;
  v20[3] = &unk_1000BB0F0;
  v20[4] = self;
  v20[5] = options;
  v5 = objc_retainBlock(v20);
  traitCollection = [(SSSScreenshotsViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  quickNoteImages = self->_quickNoteImages;
  if (quickNoteImages)
  {
    v9 = [(NSMutableArray *)quickNoteImages copy];
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  v10 = self->_quickNoteImages;
  self->_quickNoteImages = 0;

  if (userInterfaceIdiom)
  {
    objc_initWeak(&location, self);
    v11 = [v9 count];
    if (v11)
    {
      v12 = v14;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10004D988;
      v14[3] = &unk_1000BA208;
      userInterfaceIdiom = &v16;
      objc_copyWeak(&v16, &location);
      v3 = &v15;
      v15 = v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = objc_retainBlock(v12);
    (v5[2])(v5, v13);

    if (v11)
    {

      objc_destroyWeak(userInterfaceIdiom);
    }

    objc_destroyWeak(&location);
  }

  else if ([v9 count])
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10004D974;
    v18[3] = &unk_1000BA998;
    v19 = v5;
    [(SSSScreenshotsViewController *)self _saveImages:v9 toQuickNoteWithDismissalCompletionBlock:v18];
  }

  else
  {
    (v5[2])(v5, 0);
  }
}

- (void)_saveImages:(id)images toQuickNoteWithDismissalCompletionBlock:(id)block
{
  imagesCopy = images;
  blockCopy = block;
  traitCollection = [(SSSScreenshotsViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v10 = qword_1000D4AE8;
  v27 = qword_1000D4AE8;
  if (!qword_1000D4AE8)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100053188;
    v23[3] = &unk_1000B9FA8;
    v23[4] = &v24;
    sub_100053188(v23);
    v10 = v25[3];
  }

  v11 = v10;
  _Block_object_dispose(&v24, 8);
  v12 = objc_alloc_init(v10);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10004DC44;
  v21[3] = &unk_1000BB118;
  v13 = imagesCopy;
  v22 = v13;
  [v12 insertImagesData:v13 completion:v21];
  if (!userInterfaceIdiom && !self->_presentationControllerDismissalObserver)
  {
    v14 = +[NSNotificationCenter defaultCenter];
    v15 = UIPresentationControllerDismissalTransitionDidEndNotification;
    v16 = +[NSOperationQueue mainQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10004DD70;
    v19[3] = &unk_1000BB140;
    v20 = blockCopy;
    v17 = [v14 addObserverForName:v15 object:0 queue:v16 usingBlock:v19];
    presentationControllerDismissalObserver = self->_presentationControllerDismissalObserver;
    self->_presentationControllerDismissalObserver = v17;
  }
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  [(SSSScreenshotsViewController *)self _dismissWithDeleteOptions:self->_saveToFilesDeleteOptions, ls];
  [(SSSScreenshotsViewController *)self _clearSecurityScopedResourcesAndTemporaryFiles];
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView setNeedsLayout];
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  [(SSSScreenshotsViewController *)self _clearSecurityScopedResourcesAndTemporaryFiles];
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView setNeedsLayout];
}

- (void)_saveToQuickNotePushed:(BOOL)pushed savePDF:(BOOL)f
{
  if (pushed)
  {
    fCopy = f;
    _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
    imageItems = [_screenshotsView imageItems];

    v8 = +[NSMutableArray array];
    quickNoteImages = self->_quickNoteImages;
    self->_quickNoteImages = v8;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = imageItems;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        v14 = 0;
        do
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = self->_quickNoteImages;
          v16 = UIImagePNGRepresentation(*(*(&v27 + 1) + 8 * v14));
          [(NSMutableArray *)v15 addObject:v16, v27];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }

    if (fCopy && (-[SSSScreenshotsViewController visibleScreenshots](self, "visibleScreenshots"), v17 = objc_claimAutoreleasedReturnValue(), [v17 firstObject], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "temporaryPDFFile"), v19 = objc_claimAutoreleasedReturnValue(), v18, v17, v19))
    {
      if ([v19 startAccessingSecurityScopedResource])
      {
        v20 = 216;
      }

      else
      {
        v20 = 224;
      }

      v21 = *(&self->super.super.super.isa + v20);
      if (v21)
      {
        [v21 addObject:v19];
      }

      else
      {
        v22 = [NSMutableArray arrayWithObject:v19];
        v23 = *(&self->super.super.super.isa + v20);
        *(&self->super.super.super.isa + v20) = v22;
      }

      v24 = [UIDocumentPickerViewController alloc];
      v31 = v19;
      v25 = [NSArray arrayWithObjects:&v31 count:1];
      v26 = [v24 initForExportingURLs:v25 asCopy:1];

      [v26 setDelegate:self];
      [(SSSScreenshotsViewController *)self presentViewController:v26 animated:1 completion:0];
    }

    else
    {
      [(SSSScreenshotsViewController *)self _dismissWithDeleteOptions:2, v27];
    }
  }
}

- (void)_deletePushed
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  editMode = [_screenshotsView editMode];

  _screenshotsView2 = [(SSSScreenshotsViewController *)self _screenshotsView];
  if ([_screenshotsView2 editMode] == 1)
  {
    currentScreenshot = [(SSSScreenshotsViewController *)self currentScreenshot];
    pDFDocument = [currentScreenshot PDFDocument];
    v8 = [pDFDocument pageCount] == 1;
  }

  else
  {
    v8 = 0;
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10004E654;
  v34[3] = &unk_1000BB168;
  v35 = editMode == 0;
  v36 = v8;
  v34[4] = self;
  v9 = objc_retainBlock(v34);
  objc_initWeak(&location, self);
  v10 = +[NSBundle mainBundle];
  if (editMode)
  {
    [v10 localizedStringForKey:@"DELETE_PAGE_ALERT_BUTTON" value:@"Delete Page" table:0];
  }

  else
  {
    [v10 localizedStringForKey:@"DELETE_SCREENSHOT_ALERT_BUTTON" value:@"Delete Screenshot" table:0];
  }
  v11 = ;

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10004E808;
  v30[3] = &unk_1000BB190;
  objc_copyWeak(&v32, &location);
  v12 = v9;
  v31 = v12;
  v13 = [UIAlertAction actionWithTitle:v11 style:2 handler:v30];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"DELETE_SCREENSHOT_ALERT_CANCEL_BUTTON" value:@"Cancel" table:0];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10004E880;
  v28[3] = &unk_1000BAED8;
  objc_copyWeak(&v29, &location);
  v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:v28];
  v17 = +[NSBundle mainBundle];
  if (editMode)
  {
    [v17 localizedStringForKey:@"DELETE_PDF_PAGE_BUTTON_TITLE" value:@"Are you sure you want to delete this page?" table:0];
  }

  else
  {
    [v17 localizedStringForKey:@"DELETE_SCREENSHOT_BUTTON_TITLE" value:@"Are you sure you want to delete this screenshot?" table:0];
  }
  v18 = ;

  [(SSSScreenshotsViewController *)self becomeFirstResponder];
  v19 = [UIAlertController alertControllerWithTitle:v18 message:0 preferredStyle:0];
  deleteActionSheet = self->_deleteActionSheet;
  self->_deleteActionSheet = v19;

  [(UIAlertController *)self->_deleteActionSheet addAction:v13];
  [(UIAlertController *)self->_deleteActionSheet addAction:v16];
  popoverPresentationController = [(UIAlertController *)self->_deleteActionSheet popoverPresentationController];
  [popoverPresentationController setBarButtonItem:self->_deleteItem];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10004E8FC;
  v26[3] = &unk_1000BA2F8;
  objc_copyWeak(&v27, &location);
  v22 = objc_retainBlock(v26);
  presentedViewController = [(SSSScreenshotsViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10004E954;
    v24[3] = &unk_1000BA998;
    v25 = v22;
    [presentedViewController dismissViewControllerAnimated:1 completion:v24];
  }

  else
  {
    (v22[2])(v22);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

- (BOOL)isShowingDeleteConfirmation
{
  presentedViewController = [(SSSScreenshotsViewController *)self presentedViewController];
  if (presentedViewController)
  {
    presentedViewController2 = [(SSSScreenshotsViewController *)self presentedViewController];
    v5 = [presentedViewController2 isEqual:self->_deleteActionSheet];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isShowingModalUI
{
  if ([(SSSScreenshotsViewController *)self isShowingDoneActionSheet]|| [(SSSScreenshotsViewController *)self isShowingDeleteConfirmation])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    presentedViewController = [(SSSScreenshotsViewController *)self presentedViewController];
    if (presentedViewController)
    {
      presentedViewController2 = [(SSSScreenshotsViewController *)self presentedViewController];
      v3 = [presentedViewController2 isBeingDismissed] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)_exportVellumPDF
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  visibleScreenshots = [(SSSScreenshotsViewController *)self visibleScreenshots];
  v5 = [visibleScreenshots countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(visibleScreenshots);
        }

        itemProviderPDF = [*(*(&v14 + 1) + 8 * v8) itemProviderPDF];
        [v3 addObject:itemProviderPDF];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [visibleScreenshots countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [SSSActivityViewController alloc];
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
  v12 = -[SSSActivityViewController initWithActivityItems:applicationActivities:editMode:](v10, "initWithActivityItems:applicationActivities:editMode:", v3, 0, [_currentScreenshotView editMode]);

  [(SSSActivityViewController *)v12 setActivityItemProviders:v3];
  popoverPresentationController = [(SSSActivityViewController *)v12 popoverPresentationController];
  [popoverPresentationController setBarButtonItem:self->_shareItem];

  [(SSSScreenshotsViewController *)self presentViewController:v12 animated:1 completion:0];
}

- (void)_updatePropertiesOnManagedSubviews
{
  if ([(SSSScreenshotsViewController *)self state]== 1)
  {

    [(SSSScreenshotsViewController *)self _configureBarsIfNecessary];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  parentViewController = [(SSSScreenshotsViewController *)self parentViewController];
  supportedInterfaceOrientations = [parentViewController supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (CGRect)screenshotsExtentRect
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView screenshotsExtentRect];
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

- (UICoordinateSpace)screenshotsParentCoordinateSpace
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  screenshotsParentCoordinateSpace = [_screenshotsView screenshotsParentCoordinateSpace];

  return screenshotsParentCoordinateSpace;
}

- (void)_prepareActivityViewControllerNeedsActivityUpdate:(BOOL)update
{
  v22 = +[NSMutableArray array];
  _betaAppActivityItemIfAvailble = [(SSSScreenshotsViewController *)self _betaAppActivityItemIfAvailble];
  if (_betaAppActivityItemIfAvailble)
  {
    [v22 addObject:_betaAppActivityItemIfAvailble];
  }

  _visionKitActivityItemIfAvailble = [(SSSScreenshotsViewController *)self _visionKitActivityItemIfAvailble];
  if (_visionKitActivityItemIfAvailble)
  {
    [v22 addObject:?];
  }

  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  activityItems = [_screenshotsView activityItems];

  if ([activityItems count])
  {
    if (_betaAppActivityItemIfAvailble)
    {
      includedActivityTypes = [(SSSActivityViewController *)self->_activityViewController includedActivityTypes];
      v7 = [includedActivityTypes containsObject:@"com.apple.screenshotservicesservice.betafeedback"] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }

    activityViewController = self->_activityViewController;
    self->_activityViewController = 0;

    v9 = self->_activityViewController;
    traitCollection = [(SSSScreenshotsViewController *)self traitCollection];
    state = [(SSSScreenshotsViewController *)self state];
    _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
    editMode = [_currentScreenshotView editMode];
    visibleScreenshots = [(SSSScreenshotsViewController *)self visibleScreenshots];
    v15 = sub_1000356C8(v9, traitCollection, state, editMode, [visibleScreenshots count], (update | v7) & 1, v22, activityItems);

    objc_storeStrong(&self->_activityViewController, v15);
    if (_betaAppActivityItemIfAvailble)
    {
      activityTypeOrder = [objc_opt_class() activityTypeOrder];
      [(SSSActivityViewController *)self->_activityViewController setActivityTypeOrder:activityTypeOrder];
    }

    else
    {
      [(SSSActivityViewController *)self->_activityViewController setActivityTypeOrder:0];
    }

    objc_initWeak(&location, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10004F094;
    v23[3] = &unk_1000BB1B8;
    objc_copyWeak(&v24, &location);
    v17 = objc_retainBlock(v23);
    [v15 setCompletionWithItemsHandler:v17];
    v26[0] = UIActivityTypeSaveToCameraRoll;
    v26[1] = UIActivityTypeMarkupAsPDF;
    v26[2] = UIActivityTypeOpenInIBooks;
    v26[3] = UIActivityTypeAddToReadingList;
    v18 = [NSArray arrayWithObjects:v26 count:4];
    [v15 setExcludedActivityTypes:v18];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

+ (id)activityTypeOrder
{
  v4[0] = @"com.apple.screenshotservicesservice.betafeedback";
  v4[1] = UIActivityTypeAssignToContact;
  v4[2] = UIActivityTypeCopyToPasteboard;
  v4[3] = UIActivityTypePrint;
  v4[4] = UIActivityTypeCloudSharing;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

- (void)cropDidChangeForScreenshotView:(id)view
{
  [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:1 force:1];
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  editMode = [_screenshotsView editMode];

  if (editMode == 2)
  {
    v6 = +[SSStatisticsManager sharedStatisticsManager];
    [v6 didCropInFullPageMode];
  }

  else
  {
    if (editMode)
    {
      return;
    }

    v6 = +[SSStatisticsManager sharedStatisticsManager];
    [v6 didCropInNormalMode];
  }
}

- (void)removeChildViewControllers
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView dismissOverlayManagedViewControllers];

  if (![(SSSScreenshotsViewController *)self state])
  {

    [(SSSScreenshotsViewController *)self _cancelSharing:1 completion:0];
  }
}

- (void)_dismissInflightActivity:(BOOL)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  activityViewController = [(SSSActivityViewController *)self->_activityViewController activityViewController];
  v7 = activityViewController;
  if (activityViewController)
  {
    [activityViewController dismissViewControllerAnimated:activityCopy completion:0];
  }

  sub_10002B488(completionCopy);
}

- (void)_cancelSharing:(BOOL)sharing completion:(id)completion
{
  sharingCopy = sharing;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004F580;
  v13[3] = &unk_1000BA068;
  v13[4] = self;
  v6 = objc_retainBlock(v13);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004F5F0;
  v12[3] = &unk_1000BA068;
  v12[4] = self;
  v7 = objc_retainBlock(v12);
  presentingViewController = [(SSSActivityViewController *)self->_activityViewController presentingViewController];

  if (presentingViewController)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004F680;
    v9[3] = &unk_1000BB1E0;
    v10 = v6;
    v11 = v7;
    [(SSSScreenshotsViewController *)self _dismissActivityViewController:sharingCopy completion:v9];
  }

  else
  {
    (v6[2])(v6);
    (v7[2])(v7);
  }
}

- (void)_dismissActivityViewController:(BOOL)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_activityViewController)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004F794;
    v8[3] = &unk_1000BB208;
    v8[4] = self;
    v10 = controllerCopy;
    v9 = completionCopy;
    [(SSSScreenshotsViewController *)self _dismissInflightActivity:controllerCopy completion:v8];
  }

  else
  {
    sub_10002B474(completionCopy);
  }
}

- (void)screenshotsView:(id)view didHitTestView:(id)testView point:(CGPoint)point withEvent:(id)event
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  testViewCopy = testView;
  eventCopy = event;
  v13 = eventCopy;
  if (eventCopy && [eventCopy type] != 11)
  {
    view = [(SSSScreenshotsViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];

    if (windowScene)
    {
      v17 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:windowScene];
      v18 = v17;
      if (v17 && [v17 _paletteViewVisible] && (objc_msgSend(v18, "_isPointInsidePaletteView:fromView:withEvent:", testViewCopy, v13, x, y) & 1) == 0)
      {
        [v18 _setMiniPaletteVisible:0 hoverLocation:testViewCopy inView:{CGPointZero.x, CGPointZero.y}];
      }
    }
  }
}

- (void)presentActivityViewController
{
  delegate = [(SSSScreenshotsViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(SSSScreenshotsViewController *)self delegate];
    v4 = [delegate2 screenshotsViewControllerShouldAllowSharing:self];

    if (v4)
    {
      [(SSSScreenshotsViewController *)self _updateActivityViewControllerNeedsActivityUpdate:1];
      delegate3 = [(SSSScreenshotsViewController *)self delegate];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10004FA60;
      v7[3] = &unk_1000BA188;
      v7[4] = self;
      [delegate3 screenshotsViewController:self requestsPresentingActivityViewControllerWithBlock:v7];
    }
  }

  else
  {
  }
}

- (id)_bundleIDForBetaApp
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  visibleScreenshots = [_screenshotsView visibleScreenshots];
  v5 = [visibleScreenshots count];

  while (v5-- >= 1)
  {
    _screenshotsView2 = [(SSSScreenshotsViewController *)self _screenshotsView];
    visibleScreenshots2 = [_screenshotsView2 visibleScreenshots];
    v9 = [visibleScreenshots2 objectAtIndex:v5];

    environmentDescription = [v9 environmentDescription];
    betaApplicationBundleID = [environmentDescription betaApplicationBundleID];

    if (betaApplicationBundleID)
    {
      goto LABEL_6;
    }
  }

  betaApplicationBundleID = 0;
LABEL_6:

  return betaApplicationBundleID;
}

- (id)_betaApplicationName
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  visibleScreenshots = [_screenshotsView visibleScreenshots];
  v5 = [visibleScreenshots count];

  while (v5-- >= 1)
  {
    _screenshotsView2 = [(SSSScreenshotsViewController *)self _screenshotsView];
    visibleScreenshots2 = [_screenshotsView2 visibleScreenshots];
    v9 = [visibleScreenshots2 objectAtIndex:v5];

    environmentDescription = [v9 environmentDescription];
    betaApplicationName = [environmentDescription betaApplicationName];

    if (betaApplicationName)
    {
      goto LABEL_6;
    }
  }

  betaApplicationName = 0;
LABEL_6:

  return betaApplicationName;
}

- (BOOL)_shouldSendToDeveloper
{
  _bundleIDForBetaApp = [(SSSScreenshotsViewController *)self _bundleIDForBetaApp];
  if (_bundleIDForBetaApp)
  {
    v4 = 1;
  }

  else
  {
    _bundleIDForBetaApp2 = [(SSSScreenshotsViewController *)self _bundleIDForBetaApp];
    v4 = _bundleIDForBetaApp2 != 0;
  }

  return v4;
}

- (id)_betaAppActivityItemIfAvailble
{
  if ([(SSSScreenshotsViewController *)self _shouldSendToDeveloper])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10004FF3C;
    v5[3] = &unk_1000BA068;
    v5[4] = self;
    v3 = [[SSSBetaFeedbackActivity alloc] initWithBlock:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_visionKitActivityItemIfAvailble
{
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
  visionKitFeedbackActivity = [_currentScreenshotView visionKitFeedbackActivity];

  return visionKitFeedbackActivity;
}

- (void)_sendToDeveloper
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  imageItems = [_screenshotsView imageItems];
  v5 = [imageItems count];

  if (v5)
  {
    v6 = +[SSStatisticsManager sharedStatisticsManager];
    [v6 didTapBetaFeedbackButton];

    _screenshotsView2 = [(SSSScreenshotsViewController *)self _screenshotsView];
    imageItems2 = [_screenshotsView2 imageItems];

    _bundleIDForBetaApp = [(SSSScreenshotsViewController *)self _bundleIDForBetaApp];
    delegate = [(SSSScreenshotsViewController *)self delegate];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000500D0;
    v13[3] = &unk_1000BA8D0;
    v13[4] = self;
    v14 = _bundleIDForBetaApp;
    v15 = imageItems2;
    v11 = imageItems2;
    v12 = _bundleIDForBetaApp;
    [delegate screenshotsViewController:self requestsPresentingTestFlightFeedbackControllerWithBlock:v13];
  }
}

- (void)dismissTFViewController
{
  testFlightViewController = self->_testFlightViewController;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100050398;
  v3[3] = &unk_1000BA068;
  v3[4] = self;
  [(UIViewController *)testFlightViewController dismissViewControllerAnimated:1 completion:v3];
}

- (void)sessionDidSubmitFeedback:(id)feedback
{
  v4 = +[SSStatisticsManager sharedStatisticsManager];
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
  modelModificationInfo = [_currentScreenshotView modelModificationInfo];
  annotations = [modelModificationInfo annotations];
  [v4 didSubmitFeedbackWithAnnotationCount:{objc_msgSend(annotations, "count")}];

  testFlightViewController = self->_testFlightViewController;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000504F8;
  v9[3] = &unk_1000BA068;
  v9[4] = self;
  [(UIViewController *)testFlightViewController dismissViewControllerAnimated:1 completion:v9];
}

- (void)setState:(unint64_t)state
{
  state = [(SSSScreenshotsViewController *)self state];
  v6 = state == 1 && state == 0;
  v7 = v6;
  if (v6)
  {
    _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
    [_screenshotsView setIsSharing:0];

    delegate = [(SSSScreenshotsViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(SSSScreenshotsViewController *)self delegate];
      self->_shouldShowSharrow = [delegate2 screenshotsViewControllerShouldAllowSharing:self];
    }

    goto LABEL_12;
  }

  self->_shouldShowSharrow = 0;
  if (state)
  {
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if ([(SSSScreenshotsViewController *)self analysisModeEnabled])
  {
    [(SSSScreenshotsViewController *)self setAnalysisModeEnabled:0];
  }

  v12 = 1;
LABEL_13:
  _screenshotsView2 = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView2 setState:state];

  [(SSSScreenshotsViewController *)self _updateUserInterfaceStyle];
  [(SSSScreenshotsViewController *)self _updatePropertiesOnManagedSubviews];
  if ((v7 & 1) == 0)
  {
    _screenshotsView3 = [(SSSScreenshotsViewController *)self _screenshotsView];
    [_screenshotsView3 _dismissVISheetIfNecessary];

    _screenshotsView4 = [(SSSScreenshotsViewController *)self _screenshotsView];
    [_screenshotsView4 layoutIfNeeded];
  }

  [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:0 force:0];
  if (v12)
  {
    presentedViewController = [(SSSScreenshotsViewController *)self presentedViewController];

    if (presentedViewController)
    {
      presentedViewController2 = [(SSSScreenshotsViewController *)self presentedViewController];
      popoverPresentationController = [presentedViewController2 popoverPresentationController];

      presentedViewController3 = [(SSSScreenshotsViewController *)self presentedViewController];
      v20 = presentedViewController3;
      if (popoverPresentationController)
      {
        popoverPresentationController2 = [(SSSActivityViewController *)presentedViewController3 popoverPresentationController];
        presentedView = [popoverPresentationController2 presentedView];

        [presentedView setHidden:1];
        presentedViewController4 = [(SSSScreenshotsViewController *)self presentedViewController];
        activityViewController = self->_activityViewController;

        if (presentedViewController4 == activityViewController)
        {
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_1000508AC;
          v31[3] = &unk_1000BA068;
          v25 = &v32;
          v32 = presentedView;
          v28 = presentedView;
          [(SSSScreenshotsViewController *)self _cancelSharing:0 completion:v31];
        }

        else
        {
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_1000508B8;
          v29[3] = &unk_1000BA068;
          v25 = &v30;
          v30 = presentedView;
          v26 = presentedView;
          [(SSSScreenshotsViewController *)self dismissViewControllerAnimated:0 completion:v29];
        }
      }

      else
      {
        v27 = self->_activityViewController;

        if (v20 == v27)
        {

          [(SSSScreenshotsViewController *)self _cancelSharing:1 completion:0];
        }

        else
        {

          [(SSSScreenshotsViewController *)self dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }
}

- (unint64_t)state
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  state = [_screenshotsView state];

  return state;
}

- (BOOL)inStateTransition
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  inStateTransition = [_screenshotsView inStateTransition];

  return inStateTransition;
}

- (void)stateTransitionFinished
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView stateTransitionFinished];

  [(SSSScreenshotsViewController *)self _updateFullScreenTipVisibility];
}

- (void)commitInflightEditsIfNecessary
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView commitInflightEdits];
}

- (void)dismissVISheetIfNecessary
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView _dismissVISheetIfNecessary];
}

- (BOOL)isShowingVICard
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  isShowingVICard = [_screenshotsView isShowingVICard];

  return isShowingVICard;
}

- (void)setScreenshotsUseTrilinearMinificationFilter:(BOOL)filter
{
  filterCopy = filter;
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView setScreenshotViewsUseTrilinearMinificationFilter:filterCopy];
}

- (BOOL)screenshotsUseTrilinearMinificationFilter
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  screenshotViewsUseTrilinearMinificationFilter = [_screenshotsView screenshotViewsUseTrilinearMinificationFilter];

  return screenshotViewsUseTrilinearMinificationFilter;
}

- (void)setShowsShadow:(BOOL)shadow animated:(BOOL)animated
{
  shadowCopy = shadow;
  if (animated)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100050B88;
    v6[3] = &unk_1000BA0B8;
    v6[4] = self;
    shadowCopy2 = shadow;
    [UIView _animateUsingDefaultTimingWithOptions:6 animations:v6 completion:0];
  }

  else
  {
    _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
    [_screenshotsView setShowsShadow:shadowCopy];
  }
}

- (BOOL)showsShadow
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  showsShadow = [_screenshotsView showsShadow];

  return showsShadow;
}

- (void)setBorderViewStyleOverride:(int64_t)override withAnimator:(id)animator
{
  animatorCopy = animator;
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView setBorderViewStyleOverride:override withAnimator:animatorCopy];
}

- (void)setSnapshotScreenshotEdits:(BOOL)edits
{
  editsCopy = edits;
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView setSnapshotScreenshotEdits:editsCopy];
}

- (BOOL)snapshotScreenshotEdits
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  snapshotScreenshotEdits = [_screenshotsView snapshotScreenshotEdits];

  return snapshotScreenshotEdits;
}

- (void)_enterCrop
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView setEditMode:2];

  [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:0 force:0];
  _screenshotsView2 = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView2 enterCrop];

  [(SSSScreenshotsViewController *)self becomeFirstResponder];
  _screenshotsView3 = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView3 setNeedsLayout];
}

- (void)_exitCrop
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100050FF0;
  v19[3] = &unk_1000BA068;
  v19[4] = self;
  v3 = objc_retainBlock(v19);
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  if (![_screenshotsView isCropped])
  {

    goto LABEL_5;
  }

  didPresentPDFCropAlertOnce = self->_didPresentPDFCropAlertOnce;

  if (didPresentPDFCropAlertOnce)
  {
LABEL_5:
    (v3[2])(v3);
    goto LABEL_6;
  }

  self->_didPresentPDFCropAlertOnce = 1;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"PDF_CROP_TITLE" value:@"The cropped content is not removed from the PDF." table:0];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"PDF_CROP_MESSAGE" value:@"Content outside the cropped area won't be visible in most PDF viewers table:{but it can be made visible in some apps.", 0}];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"OK" value:@"OK" table:0];

  v12 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000510A4;
  v17 = &unk_1000BB230;
  v18 = v3;
  v13 = [UIAlertAction actionWithTitle:v11 style:0 handler:&v14];
  [v12 addAction:{v13, v14, v15, v16, v17}];

  [(SSSScreenshotsViewController *)self presentViewController:v12 animated:1 completion:0];
LABEL_6:
}

- (void)_resetCrop
{
  self->_didPresentPDFCropAlertOnce = 0;
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView resetCrop];

  [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:1 force:0];
}

- (void)_cancelCrop
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView cancelCrop];

  _screenshotsView2 = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView2 setEditMode:1];

  [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:1 force:0];
  [(SSSScreenshotsViewController *)self becomeFirstResponder];
  _screenshotsView3 = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView3 setNeedsLayout];
}

- (void)_selectScreenshotOrFull:(id)full
{
  selectedSegmentIndex = [full selectedSegmentIndex];
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView commitInflightEdits];

  _screenshotsView2 = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView2 setEditMode:selectedSegmentIndex != 0];

  [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:0 force:0];
  [(SSSScreenshotsViewController *)self _updateTopBarProperties];
  if (selectedSegmentIndex)
  {
    v7 = +[SSStatisticsManager sharedStatisticsManager];
    [v7 didTapFullPageSegment];
  }
}

- (void)setAaModeEnabled:(BOOL)enabled
{
  self->_aaModeEnabled = enabled;
  if (enabled)
  {
    self->_annotationModeEnabled = 0;
    self->_analysisModeEnabled = 0;
  }

  [(SSSScreenshotsViewController *)self updateScreenshotsInteractionModeIfNecessary];
}

- (void)setAnalysisModeEnabled:(BOOL)enabled
{
  self->_analysisModeEnabled = enabled;
  if (enabled)
  {
    self->_annotationModeEnabled = 0;
    self->_aaModeEnabled = 0;
  }

  analysisButtonImageForCurrentState = [(SSSScreenshotsViewController *)self analysisButtonImageForCurrentState];
  [(UIBarButtonItem *)self->_visualSearchBarButtonItem setImage:analysisButtonImageForCurrentState];

  [(SSSScreenshotsViewController *)self updateScreenshotsInteractionModeIfNecessary];
}

- (id)analysisButtonImageForCurrentState
{
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
  v4 = _currentScreenshotView;
  if (self->_analysisModeEnabled)
  {
    [_currentScreenshotView vsGlyphFilled];
  }

  else
  {
    [_currentScreenshotView vsGlyph];
  }
  v5 = ;
  v6 = [UIImage _systemImageNamed:v5];

  return v6;
}

- (id)markupButtonImageForCurrentState
{
  if (self->_annotationModeEnabled)
  {
    v2 = @"pencil.tip.crop.circle.fill";
  }

  else
  {
    v2 = @"pencil.tip.crop.circle";
  }

  v3 = [UIImage systemImageNamed:v2];
  v4 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody scale:3];
  v5 = [v3 imageWithSymbolConfiguration:v4];

  return v5;
}

- (void)setAnnotationModeEnabled:(BOOL)enabled
{
  self->_annotationModeEnabled = enabled;
  if (enabled)
  {
    self->_analysisModeEnabled = 0;
    self->_aaModeEnabled = 0;
  }

  [(SSSScreenshotsViewController *)self updateAnnotationButtonForCurrentState];

  [(SSSScreenshotsViewController *)self updateScreenshotsInteractionModeIfNecessary];
}

- (void)updateAnnotationButtonForCurrentState
{
  markupButtonImageForCurrentState = [(SSSScreenshotsViewController *)self markupButtonImageForCurrentState];
  [(UIBarButtonItem *)self->_annotationEnabledButton setImage:markupButtonImageForCurrentState];

  analysisButtonImageForCurrentState = [(SSSScreenshotsViewController *)self analysisButtonImageForCurrentState];
  [(UIBarButtonItem *)self->_visualSearchBarButtonItem setImage:analysisButtonImageForCurrentState];
}

- (void)updateScreenshotsInteractionModeToMode:(unint64_t)mode
{
  if (mode == 1)
  {
    isShowingVICard = [(SSSScreenshotsViewController *)self isShowingVICard];
    [(SSSScreenshotsViewController *)self setDidInvokeVICard:0];
    if (isShowingVICard)
    {
      _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
      [_screenshotsView _dismissVISheetIfNecessary];

      v6 = 0;
      v7 = 0;
      v5 = 1;
      isShowingVICard = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
    v6 = mode == 4;
    v7 = mode != 4 && mode == 3;
    isShowingVICard = 0;
  }

  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100051808;
  v16[3] = &unk_1000BB258;
  objc_copyWeak(v17, &location);
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v16[4] = self;
  v17[1] = mode;
  v9 = objc_retainBlock(v16);
  v10 = v9;
  if (isShowingVICard)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000518D4;
    v14[3] = &unk_1000BA998;
    v15 = v9;
    dispatch_async(&_dispatch_main_q, v14);
  }

  else
  {
    (v9[2])(v9);
  }

  v11 = os_log_create("com.apple.screenshotservices", "Interaction");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sub_100031680(mode);
    *buf = 138412290;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Did Update To InteractionMode: %@", buf, 0xCu);
  }

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

- (void)updateScreenshotsInteractionModeIfNecessary
{
  if (self->_annotationModeEnabled)
  {
    [(SSSScreenshotsViewController *)self updateScreenshotsInteractionModeToMode:1];
  }

  else if (self->_analysisModeEnabled)
  {
    [(SSSScreenshotsViewController *)self updateScreenshotsInteractionModeToMode:3];
  }

  else if (self->_aaModeEnabled)
  {
    [(SSSScreenshotsViewController *)self updateScreenshotsInteractionModeToMode:4];
  }

  else
  {
    [(SSSScreenshotsViewController *)self updateScreenshotsInteractionModeToMode:2];
  }
}

- (void)_opacityControlChanged
{
  self->_isChangingOpacity = 1;
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
  viewModificationInfo = [_currentScreenshotView viewModificationInfo];
  [(SSVellumOpacityControl *)self->_opacityControl value];
  [viewModificationInfo setVellumOpacity:?];
}

- (void)_opacityControlLifted
{
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
  [_currentScreenshotView promoteViewValueToModelValueForKey:3];

  self->_isChangingOpacity = 0;
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  editMode = [_screenshotsView editMode];

  v6 = +[SSStatisticsManager sharedStatisticsManager];
  v7 = v6;
  if (editMode == 1)
  {
    [v6 didChangeOpacityOnFullPage];
  }

  else
  {
    [v6 didChangeOpacityOnNormalScreenshot];
  }
}

- (id)_currentScreenshotView
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  currentScreenshot = [(SSSScreenshotsViewController *)self currentScreenshot];
  v5 = [_screenshotsView screenshotViewForScreenshot:currentScreenshot];

  return v5;
}

- (void)didTapOpacityOptionWithAttributeView:(id)view
{
  viewCopy = view;
  v5 = objc_alloc_init(UIView);
  opacityView = self->_opacityView;
  self->_opacityView = v5;

  [(UIView *)self->_opacityView addSubview:self->_opacityControl];
  [viewCopy addSubview:self->_opacityView];
  if (_UISolariumEnabled())
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v54 = ;
  [(UIView *)self->_opacityView setTintColor:v54];
  v53 = [UIImage systemImageNamed:@"xmark.circle"];
  v7 = [UIButton buttonWithType:1];
  [v7 setImage:v53 forState:0];
  v8 = [UIImageSymbolConfiguration configurationWithScale:3];
  [v7 setPreferredSymbolConfiguration:v8 forImageInState:0];

  [v7 addTarget:self action:"endOpacityEditing" forControlEvents:64];
  [(UIView *)self->_opacityView addSubview:v7];
  v9 = objc_alloc_init(UILargeContentViewerInteraction);
  [viewCopy addInteraction:v9];

  v51 = v7;
  [v7 setShowsLargeContentViewer:1];
  [(UIView *)self->_opacityView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SSVellumOpacityControl *)self->_opacityControl setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  bottomAnchor = [(UIView *)self->_opacityView bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v57[0] = v44;
  leftAnchor = [(UIView *)self->_opacityView leftAnchor];
  leftAnchor2 = [viewCopy leftAnchor];
  v11 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:10.0];
  v57[1] = v11;
  rightAnchor = [(UIView *)self->_opacityView rightAnchor];
  rightAnchor2 = [viewCopy rightAnchor];
  v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-10.0];
  v57[2] = v14;
  topAnchor = [(UIView *)self->_opacityView topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  [topAnchor constraintEqualToAnchor:topAnchor2];
  v17 = v52 = viewCopy;
  v57[3] = v17;
  v18 = [NSArray arrayWithObjects:v57 count:4];
  [NSLayoutConstraint activateConstraints:v18];

  centerXAnchor = [(SSVellumOpacityControl *)self->_opacityControl centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_opacityView centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  LODWORD(v22) = 1144750080;
  v50 = v21;
  [v21 setPriority:v22];
  v56[0] = v21;
  leadingAnchor = [(SSVellumOpacityControl *)self->_opacityControl leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_opacityView leadingAnchor];
  v24 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v56[1] = v24;
  centerYAnchor = [(SSVellumOpacityControl *)self->_opacityControl centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_opacityView centerYAnchor];
  v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v56[2] = v27;
  widthAnchor = [(SSVellumOpacityControl *)self->_opacityControl widthAnchor];
  +[SSVellumOpacityControl preferredWidth];
  v29 = [widthAnchor constraintEqualToConstant:?];
  v56[3] = v29;
  v30 = [NSArray arrayWithObjects:v56 count:4];
  [NSLayoutConstraint activateConstraints:v30];

  centerYAnchor3 = [v51 centerYAnchor];
  centerYAnchor4 = [(SSVellumOpacityControl *)self->_opacityControl centerYAnchor];
  v43 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v55[0] = v43;
  leadingAnchor3 = [v51 leadingAnchor];
  trailingAnchor = [(SSVellumOpacityControl *)self->_opacityControl trailingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:12.0];
  v55[1] = v31;
  trailingAnchor2 = [v51 trailingAnchor];
  trailingAnchor3 = [(UIView *)self->_opacityView trailingAnchor];
  v34 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];
  v55[2] = v34;
  widthAnchor2 = [v51 widthAnchor];
  +[SSChromeHelper defaultBarButtonWidth];
  v36 = [widthAnchor2 constraintEqualToConstant:?];
  v55[3] = v36;
  heightAnchor = [v51 heightAnchor];
  +[SSChromeHelper defaultBarButtonWidth];
  v38 = [heightAnchor constraintEqualToConstant:?];
  v55[4] = v38;
  v39 = [NSArray arrayWithObjects:v55 count:5];
  [NSLayoutConstraint activateConstraints:v39];
}

- (void)endOpacityEditing
{
  [(UIView *)self->_opacityView removeFromSuperview];
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView endOpacityEditing];
}

- (void)undoStackChangedForScreenshotsView:(id)view
{
  [(SSSScreenshotsViewController *)self _updateUndoRedoEnabledState];

  [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:0 force:1];
}

- (void)_undoManagerDidUndoRedoChange:(id)change
{
  object = [change object];
  undoManager = [(SSSScreenshotsViewController *)self undoManager];

  if (object == undoManager)
  {
    [(SSSScreenshotsViewController *)self _updateUndoRedoEnabledState];

    [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:0 force:1];
  }
}

- (id)undoManager
{
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
  undoManager = [_currentScreenshotView undoManager];

  if (undoManager)
  {
    undoManager2 = undoManager;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSSScreenshotsViewController;
    undoManager2 = [(SSSScreenshotsViewController *)&v8 undoManager];
  }

  v6 = undoManager2;

  return v6;
}

- (void)_undoPushed
{
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
  [_currentScreenshotView undo];
}

- (void)_redoPushed
{
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
  [_currentScreenshotView redo];
}

- (void)_updateUndoRedoEnabledState
{
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
  canUndo = [_currentScreenshotView canUndo];
  canRedo = [_currentScreenshotView canRedo];
  [(UIBarButtonItem *)self->_undoItem setEnabled:canUndo];
  [(UIBarButtonItem *)self->_redoItem setEnabled:canRedo];
  opacityControl = self->_opacityControl;
  viewModificationInfo = [_currentScreenshotView viewModificationInfo];
  [viewModificationInfo vellumOpacity];
  [(SSVellumOpacityControl *)opacityControl setValue:?];

  [(UIView *)self->_contentSwitcherView setHidden:[(SSSScreenshotsViewController *)self _layoutShouldShowContentSwitcher]^ 1];
}

- (void)_updateTopBarProperties
{
  [(SSSScreenshotsViewController *)self _updateUndoRedoEnabledState];
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  v4 = [_screenshotsView editMode] != 0;

  if ([(UISegmentedControl *)self->_contentSwitcher selectedSegmentIndex]!= v4)
  {
    [(UISegmentedControl *)self->_contentSwitcher setSelectedSegmentIndex:v4];
  }

  if (!self->_isChangingOpacity)
  {

    [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:0 force:0];
  }
}

- (void)_revertPushed
{
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
  [_currentScreenshotView revert];

  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView setNeedsLayout];
}

- (void)screenshotsView:(id)view requestsUpdateToInteractionMode:(unint64_t)mode
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView bringOmnibarToFront];

  [(SSSScreenshotsViewController *)self updateScreenshotsInteractionModeToMode:mode];
}

- (void)screenshotsView:(id)view isDraggingVISheetDidChange:(BOOL)change
{
  changeCopy = change;
  delegate = [(SSSScreenshotsViewController *)self delegate];
  [delegate screenshotsViewController:self isDraggingVICardDidChange:changeCopy];
}

- (void)setDidInvokeVICard:(BOOL)card
{
  if (self->_didInvokeVICard != card)
  {
    self->_didInvokeVICard = card;
    [(SSSScreenshotsViewController *)self updatePrimaryAction];
  }
}

- (void)aaButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];

  if (_currentScreenshotView == pressedCopy)
  {
    v6 = [(SSSScreenshotsViewController *)self aaModeEnabled]^ 1;

    [(SSSScreenshotsViewController *)self setAaModeEnabled:v6];
  }
}

- (void)viButtonPressed:(id)pressed
{
  v4 = [(SSSScreenshotsViewController *)self analysisModeEnabled]^ 1;

  [(SSSScreenshotsViewController *)self setAnalysisModeEnabled:v4];
}

- (void)analysisButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];

  if (_currentScreenshotView == pressedCopy)
  {
    [(SSSScreenshotsViewController *)self setAnalysisModeEnabled:[(SSSScreenshotsViewController *)self analysisModeEnabled]^ 1];
    [(SSSScreenshotsViewController *)self updateScreenshotsInteractionModeIfNecessary];
    if ([(SSSScreenshotsViewController *)self analysisModeEnabled])
    {

      __SSSetAnnotationModePreference(0);
    }
  }
}

- (void)updateAnalysisButtonStateToVisible:(BOOL)visible
{
  visibleCopy = visible;
  if (visible)
  {
    [(SSSScreenshotsViewController *)self updateAnnotationButtonForCurrentState];
  }

  visualSearchBarButtonItem = self->_visualSearchBarButtonItem;

  [(UIBarButtonItem *)visualSearchBarButtonItem _setHidden:!visibleCopy];
}

- (void)updateForScreenshotViewChangeAnimated:(BOOL)animated oldView:(id)view
{
  animatedCopy = animated;
  viewCopy = view;
  self->_aaModeEnabled = 0;
  self->_analysisModeEnabled = 0;
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
  editMode = [_currentScreenshotView editMode];

  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];

  if (viewCopy)
  {
    v10 = [viewCopy interactionMode] == 1;
  }

  else
  {
    v11 = _SSGetAnnotationModePreference();
    if (userInterfaceIdiom)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0;
    }
  }

  if ((_SSScreenshotsRedesign2025Enabled() & 1) != 0 || !editMode)
  {
    v12 = [(SSSScreenshotsViewController *)self initialAnnotationMode]|| v10;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  [(SSSScreenshotsViewController *)self setAnnotationModeEnabled:v12 & 1];
  [(SSSScreenshotsViewController *)self setInitialAnnotationMode:0];
  [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:animatedCopy force:0];
}

- (void)_recapPushed
{
  v3 = [SSSRecapViewController alloc];
  currentScreenshot = [(SSSScreenshotsViewController *)self currentScreenshot];
  v5 = [(SSSRecapViewController *)v3 initWithScreenshot:currentScreenshot];

  [(SSSScreenshotsViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_relevantTraitsDidChange
{
  [(SSSScreenshotsViewController *)self _updatePropertiesOnManagedSubviews];

  [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:0 force:0];
}

- (void)_screenshotManagerDidProcessDocumentUpdate:(id)update
{
  userInfo = [update userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"screenshot"];

  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView didProcessDocumentUpdateForScreenshot:v7];

  [(SSSScreenshotsViewController *)self _updateBarButtonItemPositionsAnimated:1 force:0];
  _screenshotsView2 = [(SSSScreenshotsViewController *)self _screenshotsView];
  [_screenshotsView2 _updateThumbnailViewVisibilityIfNeededAnimated:1];
}

- (BOOL)_cropPDFEnabled
{
  _currentScreenshotView = [(SSSScreenshotsViewController *)self _currentScreenshotView];
  _internalPDFView = [_currentScreenshotView _internalPDFView];
  document = [_internalPDFView document];
  v5 = [document pageCount] == 1;

  return v5;
}

- (BOOL)_isEditingSinglePagePDF
{
  _screenshotsView = [(SSSScreenshotsViewController *)self _screenshotsView];
  if ([_screenshotsView editMode] == 1)
  {
    currentScreenshot = [(SSSScreenshotsViewController *)self currentScreenshot];
    pDFDocument = [currentScreenshot PDFDocument];
    v6 = [pDFDocument pageCount] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)getVisibleBoundsForOverlay
{
  view = [(SSSScreenshotsViewController *)self view];
  [view bounds];
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

- (SSSScreenshotsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end