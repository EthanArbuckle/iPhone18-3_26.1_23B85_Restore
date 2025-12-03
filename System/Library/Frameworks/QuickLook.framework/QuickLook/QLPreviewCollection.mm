@interface QLPreviewCollection
+ (id)previewCollectionWithClassName:(id)name;
+ (void)previewCollectionUsingRemoteViewController:(BOOL)controller completionHandler:(id)handler;
- (BOOL)_isBeingDismissed;
- (BOOL)_isBeingPresented;
- (BOOL)_itemViewControllerIsCurrentlyPresentedItemViewController:(id)controller;
- (BOOL)_toggleFullscreenIfPossible;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isFirstResponderKeyInput;
- (BOOL)isFirstResponderTextEntry;
- (BOOL)itemPresenterViewControllerShouldForceAutodownloadFile:(id)file;
- (BOOL)pinchDismissGestureInProgress;
- (BOOL)transitionInProgress;
- (NSString)hostApplicationBundleIdentifier;
- (NSString)parentApplicationDisplayIdentifier;
- (QLItemViewController)currentPreviewItemViewController;
- (QLPreviewCollection)init;
- (id)_defaultKeyCommands;
- (id)_sandboxExtensionForEditedFileAtURL:(id)l;
- (id)accessoryView;
- (id)gestureTracker;
- (id)pageViewController:(id)controller viewControllerAtIndex:(unint64_t)index;
- (unint64_t)currentPageIndex;
- (void)_cleanAccessoryViewContainer;
- (void)_installGestures;
- (void)_notifyHostPreviewCollectionIsReadyForInvalidationIfNeeded;
- (void)_updateAccessoryViewWithPreviewItemViewController:(id)controller;
- (void)_updateCanChangeCurrentPage;
- (void)_updateCanDismissWithGesture;
- (void)_updateEnableChangingPageUsingGestures;
- (void)_updateFullscreen;
- (void)_updateFullscreenBackgroundColor;
- (void)_updateOverlayVisibility;
- (void)_updatePreferredContentSize;
- (void)_updatePrinter;
- (void)_updateTitleFromController;
- (void)_updateWhitePointAdaptivityStyle;
- (void)completeTransition:(BOOL)transition withDuration:(double)duration;
- (void)configureWithNumberOfItems:(int64_t)items currentPreviewItemIndex:(unint64_t)index itemProvider:(id)provider stateManager:(id)manager fullScreen:(BOOL)screen;
- (void)displayBarsIfNeededForDestinationViewController:(id)controller;
- (void)expandContentOfPreviewItemViewController:(id)controller unarchivedItemsURL:(id)l;
- (void)forwardKeyPressToHostIfNeeded:(id)needed serviceCommands:(id)commands;
- (void)forwardPressesToHostIfNeeded:(id)needed;
- (void)hostViewControllerBackgroundColorChanged:(id)changed;
- (void)keyCommandWasPerformed:(id)performed;
- (void)keyCommandsWithCompletionHandler:(id)handler;
- (void)loadView;
- (void)notifyFirstTimeAppearanceWithActions:(unint64_t)actions;
- (void)notifyStateRestorationUserInfo:(id)info;
- (void)pageViewController:(id)controller isTransitioningFromPage:(id)page withIndex:(unint64_t)index toPage:(id)toPage withIndex:(unint64_t)withIndex withProgress:(double)progress;
- (void)pageViewController:(id)controller willBeginInteractiveTransitionFromPage:(id)page withIndex:(unint64_t)index toPage:(id)toPage withIndex:(unint64_t)withIndex;
- (void)prepareForActionSheetPresentationWithCompletionHandler:(id)handler;
- (void)preparePreviewCollectionForInvalidationWithCompletionHandler:(id)handler;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)previewItemDisplayState:(id)state wasAppliedToItemAtIndex:(unint64_t)index;
- (void)previewItemViewController:(id)controller didFailWithError:(id)error;
- (void)previewItemViewController:(id)controller requestsTemporaryEditDirectoryWithCompletionHandler:(id)handler;
- (void)previewItemViewController:(id)controller wantsToForwardMessageToHost:(id)host completionHandler:(id)handler;
- (void)previewItemViewController:(id)controller wantsToOpenURL:(id)l;
- (void)previewItemViewController:(id)controller wantsToShowShareSheetWithPopoverTracker:(id)tracker customSharedURL:(id)l dismissCompletion:(id)completion;
- (void)previewItemViewController:(id)controller wantsToUpdatePreviewItemDisplayState:(id)state;
- (void)previewItemViewController:(id)controller wantsToUpdateStateRestorationWithUserInfo:(id)info;
- (void)previewItemViewControllerDidAcquireLock:(id)lock;
- (void)previewItemViewControllerDidChangeCurrentPreviewController:(id)controller;
- (void)previewItemViewControllerDidEditCopyOfPreviewItem:(id)item editedCopy:(id)copy completionHandler:(id)handler;
- (void)previewItemViewControllerDidHandOverLock:(id)lock;
- (void)previewItemViewControllerDidUpdateContentFrame:(id)frame;
- (void)previewItemViewControllerWantsToDismissQuickLook:(id)look;
- (void)previewItemViewControllerWantsToShowNoInternetConnectivityAlert:(id)alert;
- (void)previewItemViewControllerWantsToShowShareSheet:(id)sheet;
- (void)previewItemViewControllerWantsUpdateKeyCommands:(id)commands;
- (void)removeStandaloneViewController;
- (void)rotationOrPinchGestureRecognized:(id)recognized;
- (void)saveCurrentPreviewEditsSynchronously:(BOOL)synchronously withCompletionHandler:(id)handler;
- (void)saveIntoPhotoLibraryMediaWithURLWrapper:(id)wrapper previewItemType:(unint64_t)type completionHandler:(id)handler;
- (void)setAppearance:(id)appearance animated:(BOOL)animated;
- (void)setCurrentItemViewControllerIsPerformingFocusedAction:(BOOL)action;
- (void)setFullScreen:(BOOL)screen forceUpdate:(BOOL)update;
- (void)setIsContentManaged:(BOOL)managed;
- (void)setIsEditing:(BOOL)editing;
- (void)setIsTransitioningPage:(BOOL)page;
- (void)setPreviewItemDisplayState:(id)state onItemAtIndex:(unint64_t)index;
- (void)setScreenEdgePanWidth:(double)width;
- (void)setStandaloneViewControllerIfNeeded;
- (void)shouldDisplayLockActivityWithCompletionHandler:(id)handler;
- (void)slideToDismissGestureRecognized:(id)recognized;
- (void)startNonInteractiveTransitionPresenting:(BOOL)presenting;
- (void)startTransitionWithSourceViewProvider:(id)provider transitionController:(id)controller presenting:(BOOL)presenting useInteractiveTransition:(BOOL)transition completionHandler:(id)handler;
- (void)toolbarButtonPressedWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)toolbarButtonsForTraitCollection:(id)collection withCompletionHandler:(id)handler;
- (void)updateCurrentPreviewConfiguration;
- (void)updateTransitionWithProgress:(double)progress;
@end

@implementation QLPreviewCollection

- (void)updateTransitionWithProgress:(double)progress
{
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  transitioningView = [currentPreviewItemViewController transitioningView];

  gestureTracker = [(QLPreviewCollection *)self gestureTracker];
  [gestureTracker trackedCenter];
  [transitioningView setCenter:?];

  layer = [transitioningView layer];
  gestureTracker2 = [(QLPreviewCollection *)self gestureTracker];
  [gestureTracker2 anchorPoint];
  [layer setAnchorPoint:?];

  gestureTracker3 = [(QLPreviewCollection *)self gestureTracker];
  v10 = gestureTracker3;
  if (gestureTracker3)
  {
    [gestureTracker3 trackedTransform];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  [transitioningView setTransform:v11];
}

- (void)completeTransition:(BOOL)transition withDuration:(double)duration
{
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  transitioningView = [currentPreviewItemViewController transitioningView];

  view = [(QLPreviewCollection *)self view];
  gestureTracker = [(QLPreviewCollection *)self gestureTracker];
  [gestureTracker trackedVelocity];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  gestureTracker2 = [(QLPreviewCollection *)self gestureTracker];
  [gestureTracker2 finalAnimationSpringDamping];
  v21 = v20;

  [transitioningView QL_setAnchorPointAndUpdatePosition:{0.5, 0.5}];
  if (transition)
  {
    [(QLPreviewCollection *)self _setUpTransitionDriverForPresenting:0 duration:duration];
    currentPreviewItemViewController2 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      currentPreviewItemViewController3 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      [currentPreviewItemViewController3 transitionWillFinish:0 didComplete:1];
    }

    transitionDriver = [(QLPreviewCollection *)self transitionDriver];
    [transitionDriver animateTransition];
  }

  else
  {
    v43 = v16;
    v44 = v14;
    v45 = v12;
    [view bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    currentPreviewItemViewController4 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    v35 = objc_opt_respondsToSelector();

    if (v35)
    {
      currentPreviewItemViewController5 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      [currentPreviewItemViewController5 transitionWillFinish:0 didComplete:0];
    }

    v37 = MEMORY[0x277D75D18];
    v48.origin.x = v27;
    v48.origin.y = v29;
    v48.size.width = v31;
    v48.size.height = v33;
    MidX = CGRectGetMidX(v48);
    v49.origin.x = v27;
    v49.origin.y = v29;
    v49.size.width = v31;
    v49.size.height = v33;
    MidY = CGRectGetMidY(v49);
    v40 = *MEMORY[0x277CBF348];
    v41 = *(MEMORY[0x277CBF348] + 8);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __79__QLPreviewCollection_InteractiveTransitions__completeTransition_withDuration___block_invoke;
    v47[3] = &unk_278B571B8;
    v47[4] = self;
    v42 = *(MEMORY[0x277CBF2C0] + 16);
    v46[0] = *MEMORY[0x277CBF2C0];
    v46[1] = v42;
    v46[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v37 qlph_animateView:transitioningView toCenter:v46 bounds:0 transform:v47 withDuration:MidX delay:MidY usingSpringWithDamping:v40 initialVelocity:v41 options:v31 completion:{v33, duration, 0.0, v21, v45, v44, v43, v18}];
  }
}

void __79__QLPreviewCollection_InteractiveTransitions__completeTransition_withDuration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPreviewItemViewController];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) currentPreviewItemViewController];
    [v4 transitionDidFinish:0 didComplete:0];
  }
}

- (void)startNonInteractiveTransitionPresenting:(BOOL)presenting
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v8 = NSStringFromBOOL();
    *buf = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_INFO, "QLPreviewCollection %@%@ #AppearanceTransition", buf, 0x16u);
  }

  QLRunInMainThread();
  v9 = *MEMORY[0x277D85DE8];
}

void __87__QLPreviewCollection_InteractiveTransitions__startNonInteractiveTransitionPresenting___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUpTransitionDriverForPresenting:*(a1 + 40) duration:0.392171552];
  v2 = [*(a1 + 32) currentPreviewItemViewController];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) currentPreviewItemViewController];
    [v4 transitionDidStart:*(a1 + 40)];
  }

  v5 = [*(a1 + 32) currentPreviewItemViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) currentPreviewItemViewController];
    [v7 transitionWillFinish:*(a1 + 40) didComplete:1];
  }

  v8 = [*(a1 + 32) transitionDriver];
  [v8 animateTransition];
}

void __67__QLPreviewCollection_InteractiveTransitions___tearDownTransition___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) transitionDriver];
  if (v2)
  {
    v3 = [*(a1 + 32) transitionDriver];
    v4 = [v3 presenting];
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x277D43EF8];
  v6 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 40);
    v8 = v6;
    v9 = NSStringFromBOOL();
    v10 = v9;
    v11 = @"dismissed";
    if (v4)
    {
      v11 = @"presented";
    }

    *v24 = 138412546;
    *&v24[4] = v9;
    *&v24[12] = 2112;
    *&v24[14] = v11;
    _os_log_impl(&dword_23A714000, v8, OS_LOG_TYPE_INFO, "[QLPreviewCollection _tearDownTransition: completed: %@] - Is being %@ #AppearanceTransition", v24, 0x16u);
  }

  v12 = [*(a1 + 32) currentPreviewItemViewController];
  v13 = [v12 transitioningView];

  v14 = [v13 layer];
  [v14 setAnchorPoint:{0.5, 0.5}];

  v15 = *(MEMORY[0x277CBF2C0] + 16);
  *v24 = *MEMORY[0x277CBF2C0];
  *&v24[16] = v15;
  v25 = *(MEMORY[0x277CBF2C0] + 32);
  [v13 setTransform:v24];
  [v13 setAlpha:1.0];
  v16 = *MEMORY[0x277CBF348];
  v17 = *(MEMORY[0x277CBF348] + 8);
  v18 = [*(a1 + 32) view];
  [v18 bounds];
  [v13 setBounds:{v16, v17}];

  [v13 setOrigin:{v16, v17}];
  v19 = [*(a1 + 32) transitionDriver];
  [v19 tearDown];

  v20 = [*(a1 + 32) currentPreviewItemViewController];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [*(a1 + 32) currentPreviewItemViewController];
    [v22 transitionDidFinish:v4 didComplete:*(a1 + 40)];
  }

  [*(a1 + 32) setTransitionDriver:0];
  [*(a1 + 32) setTransitionController:0];
  [*(a1 + 32) setSwipeDownTracker:0];
  [*(a1 + 32) setPinchRotationTracker:0];
  [*(a1 + 32) setHasTriggeredInteractiveTransitionAnimation:0];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)gestureTracker
{
  swipeDownTracker = [(QLPreviewCollection *)self swipeDownTracker];
  v4 = swipeDownTracker;
  if (swipeDownTracker)
  {
    pinchRotationTracker = swipeDownTracker;
  }

  else
  {
    pinchRotationTracker = [(QLPreviewCollection *)self pinchRotationTracker];
  }

  v6 = pinchRotationTracker;

  return v6;
}

- (void)rotationOrPinchGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  view = [(QLPreviewCollection *)self view];
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  transitioningView = [currentPreviewItemViewController transitioningView];
  v8 = transitioningView;
  if (transitioningView)
  {
    view2 = transitioningView;
  }

  else
  {
    pageViewController = [(QLPreviewCollection *)self pageViewController];
    view2 = [pageViewController view];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = recognizedCopy;
  state = [v12 state];
  if ((state - 3) >= 3)
  {
    if (state == 2)
    {
      pinchRotationTracker = [(QLPreviewCollection *)self pinchRotationTracker];

      if (!pinchRotationTracker)
      {
        goto LABEL_27;
      }

      if ([v12 numberOfTouches] < 2)
      {
        goto LABEL_5;
      }

      pinchRotationTracker2 = [(QLPreviewCollection *)self pinchRotationTracker];
      [v12 locationInView:view];
      [pinchRotationTracker2 trackGestureLocation:?];

      pinchRotationTracker3 = [(QLPreviewCollection *)self pinchRotationTracker];
      if (isKindOfClass)
      {
        [v12 rotation];
        [pinchRotationTracker3 trackRotation:?];
      }

      else
      {
        [v12 scale];
        [pinchRotationTracker3 trackScale:?];
      }

      pinchRotationTracker4 = [(QLPreviewCollection *)self pinchRotationTracker];
      [pinchRotationTracker4 dismissalProgress];
      v46 = v45;

      [(QLPreviewCollection *)self updateTransitionWithProgress:v46];
      transitionController = [(QLPreviewCollection *)self transitionController];
      [transitionController updateTransitionWithProgress:v46];
    }

    else
    {
      if (state != 1 || (isKindOfClass & 1) != 0)
      {
        goto LABEL_27;
      }

      [v12 velocity];
      if (v15 <= 0.0)
      {
        pinchRotationTracker5 = [(QLPreviewCollection *)self pinchRotationTracker];

        if (!pinchRotationTracker5)
        {
          v24 = objc_opt_new();
          [(QLPreviewCollection *)self setPinchRotationTracker:v24];

          pinchRotationTracker6 = [(QLPreviewCollection *)self pinchRotationTracker];
          [pinchRotationTracker6 setMinimumZoomForDismissal:0.9];

          pinchRotationTracker7 = [(QLPreviewCollection *)self pinchRotationTracker];
          [pinchRotationTracker7 setTargetZoom:0.1];

          [v12 locationInView:view2];
          v28 = v27;
          v30 = v29;
          pinchRotationTracker8 = [(QLPreviewCollection *)self pinchRotationTracker];
          [view2 center];
          v33 = v32;
          v35 = v34;
          [view2 bounds];
          v37 = v36;
          v39 = v38;
          v41 = v40;
          v43 = v42;
          if (view2)
          {
            [view2 transform];
          }

          else
          {
            v51 = 0u;
            v52 = 0u;
            v50 = 0u;
          }

          [pinchRotationTracker8 startTrackingCenter:&v50 bounds:v33 transform:v35 withInitialGestureLocation:{v37, v39, v41, v43, v28, v30}];
        }

        v47 = [(QLPreviewCollection *)self currentPreviewItemViewController:v50];
        v48 = objc_opt_respondsToSelector();

        if (v48)
        {
          currentPreviewItemViewController2 = [(QLPreviewCollection *)self currentPreviewItemViewController];
          [currentPreviewItemViewController2 transitionDidStart:0];
        }

        _UIUpdateRequestActivate();
        transitionController = [(QLPreviewCollection *)self stateManager];
        [transitionController beginInteractiveTransition];
      }

      else
      {
        pinchGesture = [(QLPreviewCollection *)self pinchGesture];
        [pinchGesture setEnabled:0];

        rotationGesture = [(QLPreviewCollection *)self rotationGesture];
        [rotationGesture setEnabled:0];

        pinchGesture2 = [(QLPreviewCollection *)self pinchGesture];
        [pinchGesture2 setEnabled:1];

        transitionController = [(QLPreviewCollection *)self rotationGesture];
        [transitionController setEnabled:1];
      }
    }

    goto LABEL_27;
  }

LABEL_5:
  _UIUpdateRequestDeactivate();
  pinchRotationTracker9 = [(QLPreviewCollection *)self pinchRotationTracker];

  if (pinchRotationTracker9)
  {
    [(QLPreviewCollection *)self triggerInteractiveTransitionAnimationIfNeeded];
  }

LABEL_27:
}

- (void)slideToDismissGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  view = [(QLPreviewCollection *)self view];
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  transitioningView = [currentPreviewItemViewController transitioningView];
  v8 = transitioningView;
  if (transitioningView)
  {
    view2 = transitioningView;
  }

  else
  {
    pageViewController = [(QLPreviewCollection *)self pageViewController];
    view2 = [pageViewController view];
  }

  state = [recognizedCopy state];
  if ((state - 3) >= 3)
  {
    if (state == 2)
    {
      swipeDownTracker = [(QLPreviewCollection *)self swipeDownTracker];

      if (!swipeDownTracker)
      {
        goto LABEL_18;
      }

      [recognizedCopy translationInView:view];
      v37 = v36;
      v39 = v38;
      [recognizedCopy velocityInView:view];
      v41 = v40;
      v43 = v42;
      swipeDownTracker2 = [(QLPreviewCollection *)self swipeDownTracker];
      [swipeDownTracker2 trackGestureTranslation:v37 velocity:{v39, v41, v43}];

      swipeDownTracker3 = [(QLPreviewCollection *)self swipeDownTracker];
      [swipeDownTracker3 dismissalProgress];
      v47 = v46;

      [(QLPreviewCollection *)self updateTransitionWithProgress:v47];
      transitionController = [(QLPreviewCollection *)self transitionController];
      [transitionController updateTransitionWithProgress:v47];
    }

    else
    {
      if (state != 1)
      {
        goto LABEL_18;
      }

      [recognizedCopy locationInView:view];
      v14 = v13;
      v16 = v15;
      [recognizedCopy translationInView:view];
      v18 = v14 - v17;
      v20 = v16 - v19;
      v21 = objc_opt_new();
      [(QLPreviewCollection *)self setSwipeDownTracker:v21];

      swipeDownTracker4 = [(QLPreviewCollection *)self swipeDownTracker];
      [view2 center];
      v24 = v23;
      v26 = v25;
      [view2 bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      if (view2)
      {
        [view2 transform];
      }

      else
      {
        memset(v52, 0, sizeof(v52));
      }

      [swipeDownTracker4 startTrackingCenter:v52 bounds:v24 transform:v26 withInitialGestureLocation:{v28, v30, v32, v34, v18, v20}];

      currentPreviewItemViewController2 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      v50 = objc_opt_respondsToSelector();

      if (v50)
      {
        currentPreviewItemViewController3 = [(QLPreviewCollection *)self currentPreviewItemViewController];
        [currentPreviewItemViewController3 transitionDidStart:0];
      }

      _UIUpdateRequestActivate();
      transitionController = [(QLPreviewCollection *)self stateManager];
      [transitionController beginInteractiveTransition];
    }

    goto LABEL_18;
  }

  _UIUpdateRequestDeactivate();
  swipeDownTracker5 = [(QLPreviewCollection *)self swipeDownTracker];

  if (swipeDownTracker5)
  {
    [(QLPreviewCollection *)self triggerInteractiveTransitionAnimationIfNeeded];
  }

LABEL_18:
}

+ (id)previewCollectionWithClassName:(id)name
{
  NSClassFromString(name);
  v3 = objc_opt_new();

  return v3;
}

+ (void)previewCollectionUsingRemoteViewController:(BOOL)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  v6 = handlerCopy;
  if (controllerCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __84__QLPreviewCollection_previewCollectionUsingRemoteViewController_completionHandler___block_invoke;
    v9[3] = &unk_278B59018;
    v10 = handlerCopy;
    [_TtC9QuickLook28QLRemoteUIHostViewController remotePreviewCollectionWithCompletionHandler:v9];
  }

  else
  {
    v7 = +[QLPreviewCollection previewCollectionClassName];
    NSClassFromString(v7);
    v8 = objc_opt_new();
    (v6)[2](v6, v8);
  }
}

- (QLPreviewCollection)init
{
  v40[1] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = QLPreviewCollection;
  v2 = [(QLPreviewCollection *)&v34 init];
  if (v2)
  {
    v3 = [QLPageViewController alloc];
    v39 = *MEMORY[0x277D76DB0];
    v40[0] = &unk_284D73120;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v5 = [(QLPageViewController *)v3 initWithTransitionStyle:1 navigationOrientation:0 options:v4];
    [(QLPreviewCollection *)v2 setPageViewController:v5];

    v2->_currentItemIndex = 0x7FFFFFFFFFFFFFFFLL;
    pageViewController = [(QLPreviewCollection *)v2 pageViewController];
    [pageViewController setDelegate:v2];

    pageViewController2 = [(QLPreviewCollection *)v2 pageViewController];
    [pageViewController2 setIndexedDataSource:v2];

    pageViewController3 = [(QLPreviewCollection *)v2 pageViewController];
    [pageViewController3 setParallaxIntensity:0.15];

    pageViewController4 = [(QLPreviewCollection *)v2 pageViewController];
    [(QLPreviewCollection *)v2 addChildViewController:pageViewController4];

    view = [(QLPreviewCollection *)v2 view];
    pageViewController5 = [(QLPreviewCollection *)v2 pageViewController];
    view2 = [pageViewController5 view];
    [view addSubview:view2];

    pageViewController6 = [(QLPreviewCollection *)v2 pageViewController];
    [pageViewController6 didMoveToParentViewController:v2];

    pageViewController7 = [(QLPreviewCollection *)v2 pageViewController];
    view3 = [pageViewController7 view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    view4 = [(QLPreviewCollection *)v2 view];
    v17 = MEMORY[0x277CCAAD0];
    v37 = @"pageViewController";
    pageViewController8 = [(QLPreviewCollection *)v2 pageViewController];
    view5 = [pageViewController8 view];
    v38 = view5;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v21 = [v17 constraintsWithVisualFormat:@"H:|[pageViewController]|" options:0 metrics:0 views:v20];
    [view4 addConstraints:v21];

    view6 = [(QLPreviewCollection *)v2 view];
    v23 = MEMORY[0x277CCAAD0];
    v35 = @"pageViewController";
    pageViewController9 = [(QLPreviewCollection *)v2 pageViewController];
    view7 = [pageViewController9 view];
    v36 = view7;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v27 = [v23 constraintsWithVisualFormat:@"V:|[pageViewController]|" options:0 metrics:0 views:v26];
    [view6 addConstraints:v27];

    v28 = objc_opt_new();
    itemStore = v2->_itemStore;
    v2->_itemStore = v28;

    [(QLPreviewCollection *)v2 _installGestures];
    [(QLPreviewCollection *)v2 setAutomaticallyAdjustsScrollViewInsets:0];
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(QLPreviewCollection *)v2 setUuid:uUID];

    v31 = v2;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = QLPreviewCollection;
  [(QLPreviewCollection *)&v5 loadView];
  view = [(QLPreviewCollection *)self view];
  layer = [view layer];
  [layer setHitTestsAsOpaque:1];
}

- (void)hostViewControllerBackgroundColorChanged:(id)changed
{
  changedCopy = changed;
  v3 = changedCopy;
  QLRunInMainThread();
}

void __64__QLPreviewCollection_hostViewControllerBackgroundColorChanged___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) currentPreviewItemViewController];
  v2 = [v5 currentPreviewViewController];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [v5 currentPreviewViewController];
    [v4 hostViewControllerBackgroundColorChanged:*(a1 + 40)];
  }
}

- (void)updateCurrentPreviewConfiguration
{
  stateManager = [(QLPreviewCollection *)self stateManager];
  [stateManager updateKeyCommands];

  [(QLPreviewCollection *)self _updateOverlay:1];
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  [(QLPreviewCollection *)self _updateFullscreenBackgroundColor];
  [(QLPreviewCollection *)self _updateFullscreen];
  [(QLPreviewCollection *)self _updateAccessoryViewWithPreviewItemViewController:currentPreviewItemViewController];
  [(QLPreviewCollection *)self _updateWhitePointAdaptivityStyle];
  [(QLPreviewCollection *)self _updatePrinter];
  [(QLPreviewCollection *)self _updateTitleFromController];
  [(QLPreviewCollection *)self _updatePreferredContentSize];
  currentPreviewItemViewController2 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  scrollView = [currentPreviewItemViewController2 scrollView];

  if (scrollView)
  {
    currentPreviewItemViewController3 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    scrollView2 = [currentPreviewItemViewController3 scrollView];
    pinchGestureRecognizer = [scrollView2 pinchGestureRecognizer];
    [pinchGestureRecognizer requireGestureRecognizerToFail:self->_pinchGesture];
  }
}

- (id)accessoryView
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteAccessoryViewContainer);
  if (WeakRetained)
  {
    goto LABEL_2;
  }

  if (!self->_localAccessoryViewContainer)
  {
    v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 100.0, 100.0}];
    WeakRetained = self->_localAccessoryViewContainer;
    self->_localAccessoryViewContainer = v8;
LABEL_2:
  }

  v4 = objc_loadWeakRetained(&self->_remoteAccessoryViewContainer);
  localAccessoryViewContainer = v4;
  if (!v4)
  {
    localAccessoryViewContainer = self->_localAccessoryViewContainer;
  }

  v6 = localAccessoryViewContainer;

  return localAccessoryViewContainer;
}

- (void)setFullScreen:(BOOL)screen forceUpdate:(BOOL)update
{
  updateCopy = update;
  screenCopy = screen;
  if ([(QLAppearance *)self->_appearance presentationMode]!= 4 && [(QLAppearance *)self->_appearance presentationMode]!= 3 && [(QLAppearance *)self->_appearance presentationMode]!= 5)
  {
    currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
    canEnterFullScreen = [currentPreviewItemViewController canEnterFullScreen];

    v9 = canEnterFullScreen & screenCopy;
    if (self->_fullScreen != v9 || updateCopy)
    {
      self->_fullScreen = v9;
      stateManager = [(QLPreviewCollection *)self stateManager];
      [stateManager setFullScreen:v9];

      currentPreviewItemViewController2 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      [currentPreviewItemViewController2 previewBecameFullScreen:v9 animated:1];

      stateManager2 = [(QLPreviewCollection *)self stateManager];
      [stateManager2 updateKeyCommands];
    }
  }
}

- (void)setScreenEdgePanWidth:(double)width
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    widthCopy = width;
    _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_INFO, "QLPreviewCollection's edge pan gesture region width has been set to %f #PreviewCollection", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (QLItemViewController)currentPreviewItemViewController
{
  standaloneItemViewController = [(QLPreviewCollection *)self standaloneItemViewController];

  if (standaloneItemViewController)
  {
    standaloneItemViewController2 = [(QLPreviewCollection *)self standaloneItemViewController];
  }

  else
  {
    pageViewController = [(QLPreviewCollection *)self pageViewController];
    standaloneItemViewController2 = [pageViewController currentPage];
  }

  return standaloneItemViewController2;
}

- (unint64_t)currentPageIndex
{
  standaloneItemViewController = [(QLPreviewCollection *)self standaloneItemViewController];

  if (standaloneItemViewController)
  {

    return [(QLPreviewCollection *)self standaloneItemIndex];
  }

  else
  {
    pageViewController = [(QLPreviewCollection *)self pageViewController];
    currentPageIndex = [pageViewController currentPageIndex];

    return currentPageIndex;
  }
}

- (void)preparePreviewCollectionForInvalidationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v3 = handlerCopy;
  QLRunInMainThread();
}

void __84__QLPreviewCollection_preparePreviewCollectionForInvalidationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPreviewItemViewController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __84__QLPreviewCollection_preparePreviewCollectionForInvalidationWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_278B58460;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 prepareForInvalidationWithCompletionHandler:v4];
}

void __84__QLPreviewCollection_preparePreviewCollectionForInvalidationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  QLRunInMainThread();
}

uint64_t __84__QLPreviewCollection_preparePreviewCollectionForInvalidationWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 1152);
  *(v3 + 1152) = v2;

  v5 = *(a1 + 32);

  return [v5 _notifyHostPreviewCollectionIsReadyForInvalidationIfNeeded];
}

- (void)_notifyHostPreviewCollectionIsReadyForInvalidationIfNeeded
{
  if (![(QLPreviewCollection *)self _isBeingDismissed])
  {
    prepareForInvalidationCompletionHandler = self->_prepareForInvalidationCompletionHandler;
    if (prepareForInvalidationCompletionHandler)
    {
      v5 = [prepareForInvalidationCompletionHandler copy];
      v4 = self->_prepareForInvalidationCompletionHandler;
      self->_prepareForInvalidationCompletionHandler = 0;

      v5[2]();
    }
  }
}

- (NSString)hostApplicationBundleIdentifier
{
  hostApplicationBundleIdentifier = self->_hostApplicationBundleIdentifier;
  if (!hostApplicationBundleIdentifier)
  {
    v4 = MEMORY[0x277D43EF8];
    v5 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_ERROR, "hostApplicationBundleIdentifier getting accessed before being set, should not happen in QuickLookUIExtension. Trying best effort to determine identifier with entitlement. #PreviewCollection", v9, 2u);
    }

    v6 = +[QLUtilitiesInternal getCurrentApplicationBundleIdentifier];
    v7 = self->_hostApplicationBundleIdentifier;
    self->_hostApplicationBundleIdentifier = v6;

    hostApplicationBundleIdentifier = self->_hostApplicationBundleIdentifier;
  }

  return hostApplicationBundleIdentifier;
}

- (void)configureWithNumberOfItems:(int64_t)items currentPreviewItemIndex:(unint64_t)index itemProvider:(id)provider stateManager:(id)manager fullScreen:(BOOL)screen
{
  providerCopy = provider;
  managerCopy = manager;
  v9 = managerCopy;
  v10 = providerCopy;
  QLRunInMainThread();
}

void __111__QLPreviewCollection_configureWithNumberOfItems_currentPreviewItemIndex_itemProvider_stateManager_fullScreen___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1008) = *(a1 + 56);
  [*(*(a1 + 32) + 1016) setItemProvider:*(a1 + 40)];
  [*(*(a1 + 32) + 1016) reloadWithNumberOfPreviewItems:*(a1 + 64)];
  v2 = *(a1 + 64) > 1;
  v3 = [*(a1 + 32) pageViewController];
  v4 = [v3 scrollView];
  [v4 setScrollEnabled:v2];

  [*(a1 + 32) setStateManager:*(a1 + 48)];
  v5 = [*(a1 + 32) pageViewController];
  [v5 clearInternalCache];

  [*(a1 + 32) setCurrentPreviewItemIndex:*(a1 + 56) animated:0];
  v6 = *(a1 + 32);
  if (v6[1089] == 1)
  {
    v6[1089] = 0;
    v7 = [*(a1 + 32) currentPreviewItemViewController];
    v8 = objc_opt_respondsToSelector();

    v6 = *(a1 + 32);
    if (v8)
    {
      v9 = [v6 currentPreviewItemViewController];
      [v9 transitionDidStart:{objc_msgSend(*(a1 + 32), "isPresenting")}];

      v6 = *(a1 + 32);
    }
  }

  [v6 setShouldStartFullScreen:*(a1 + 72)];
  *(*(a1 + 32) + 1114) = *(a1 + 72);
  v10 = [*(a1 + 32) currentPreviewItemViewController];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __111__QLPreviewCollection_configureWithNumberOfItems_currentPreviewItemIndex_itemProvider_stateManager_fullScreen___block_invoke_2;
  v11[3] = &unk_278B57190;
  v11[4] = *(a1 + 32);
  [v10 isReadyForDisplayWithCompletionHandler:v11];
}

void __111__QLPreviewCollection_configureWithNumberOfItems_currentPreviewItemIndex_itemProvider_stateManager_fullScreen___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) stateManager];
  [v1 currentPreviewItemViewControllerIsReadyForDisplay];
}

uint64_t __59__QLPreviewCollection_setCurrentPreviewItemIndex_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsEditing:0];
  *(*(a1 + 32) + 1008) = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _setCurrentPreviewItemIndex:? animated:?];
}

- (void)setAppearance:(id)appearance animated:(BOOL)animated
{
  appearanceCopy = appearance;
  if ([(QLPreviewCollection *)self _isBeingPresented])
  {
    UIAccessibilityIsReduceMotionEnabled();
  }

  v6 = appearanceCopy;
  QLRunInMainThread();
}

void __46__QLPreviewCollection_setAppearance_animated___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1064), *(a1 + 40));
  v2 = [*(a1 + 32) currentPreviewItemViewController];
  [v2 setAppearance:*(a1 + 40) animated:*(a1 + 48)];
}

- (void)notifyFirstTimeAppearanceWithActions:(unint64_t)actions
{
  objc_initWeak(&location, self);
  objc_copyWeak(v4, &location);
  v4[1] = actions;
  QLRunInMainThread();
  objc_destroyWeak(v4);
  objc_destroyWeak(&location);
}

void __60__QLPreviewCollection_notifyFirstTimeAppearanceWithActions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277D43EF8];
    v4 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8[0] = 0;
      _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_INFO, "notifyFirstTimeAppearanceWithActions #PreviewCollection", v8, 2u);
    }

    v5 = [WeakRetained currentPreviewItemViewController];
    v6 = [v5 isLoaded];
    v7 = *(a1 + 40);
    if (v6)
    {
      [v5 performFirstTimeAppearanceActionsIfNeeded:v7];
      WeakRetained[138] = 0;
      if ((*(a1 + 40) & 4) == 0 && [WeakRetained[133] presentationMode] == 2)
      {
        [WeakRetained setFullScreen:objc_msgSend(WeakRetained forceUpdate:{"shouldStartFullScreen"), 1}];
      }

      [WeakRetained setStandaloneViewControllerIfNeeded];
    }

    else
    {
      WeakRetained[138] = v7;
    }
  }
}

- (void)setStandaloneViewControllerIfNeeded
{
  standaloneItemViewController = [(QLPreviewCollection *)self standaloneItemViewController];

  if (!standaloneItemViewController)
  {
    currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
    context = [currentPreviewItemViewController context];
    previewItemType = [context previewItemType];

    if (previewItemType == 12)
    {
      pageViewController = [(QLPreviewCollection *)self pageViewController];
      [pageViewController setIndexedDataSource:0];

      pageViewController2 = [(QLPreviewCollection *)self pageViewController];
      [pageViewController2 clearInternalCache];

      pageViewController3 = [(QLPreviewCollection *)self pageViewController];
      [pageViewController3 setCurrentPageIndex:0];

      view = [currentPreviewItemViewController view];
      [view removeFromSuperview];

      [currentPreviewItemViewController willMoveToParentViewController:0];
      [currentPreviewItemViewController removeFromParentViewController];
      view2 = [(QLPreviewCollection *)self view];
      view3 = [currentPreviewItemViewController view];
      [view2 addSubview:view3];

      [(QLPreviewCollection *)self addChildViewController:currentPreviewItemViewController];
      [currentPreviewItemViewController didMoveToParentViewController:self];
      [(QLPreviewCollection *)self setStandaloneItemViewController:currentPreviewItemViewController];
    }
  }
}

- (void)removeStandaloneViewController
{
  standaloneItemViewController = [(QLPreviewCollection *)self standaloneItemViewController];
  view = [standaloneItemViewController view];
  [view removeFromSuperview];

  standaloneItemViewController2 = [(QLPreviewCollection *)self standaloneItemViewController];
  [standaloneItemViewController2 willMoveToParentViewController:0];

  standaloneItemViewController3 = [(QLPreviewCollection *)self standaloneItemViewController];
  [standaloneItemViewController3 removeFromParentViewController];

  [(QLPreviewCollection *)self setStandaloneItemViewController:0];
  pageViewController = [(QLPreviewCollection *)self pageViewController];
  [pageViewController setIndexedDataSource:self];

  pageViewController2 = [(QLPreviewCollection *)self pageViewController];
  [pageViewController2 clearInternalCache];
}

- (void)notifyStateRestorationUserInfo:(id)info
{
  infoCopy = info;
  v3 = infoCopy;
  QLRunInMainThread();
}

void __54__QLPreviewCollection_notifyStateRestorationUserInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPreviewItemViewController];
  if ([v2 isLoaded])
  {
    [v2 notifyStateRestorationWithUserInfoIfNeeded:*(a1 + 40)];
  }
}

- (void)toolbarButtonsForTraitCollection:(id)collection withCompletionHandler:(id)handler
{
  collectionCopy = collection;
  handlerCopy = handler;
  v6 = collectionCopy;
  v7 = handlerCopy;
  QLRunInMainThread();
}

void __78__QLPreviewCollection_toolbarButtonsForTraitCollection_withCompletionHandler___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) currentPreviewItemViewController];
  v2 = *(a1 + 48);
  v3 = [v5 toolbarButtonsForTraitCollection:*(a1 + 40)];
  v4 = [v5 excludedToolbarButtonIdentifiersForTraitCollection:*(a1 + 40)];
  (*(v2 + 16))(v2, v3, v4);
}

- (void)toolbarButtonPressedWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = identifierCopy;
  QLRunInMainThread();
}

void __76__QLPreviewCollection_toolbarButtonPressedWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pageViewController];
  v3 = [v2 currentPage];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = MEMORY[0x277D43EF8];
    v6 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 pageViewController];
      v10 = [v9 currentPage];
      v11 = *(a1 + 40);
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_23A714000, v8, OS_LOG_TYPE_INFO, "Notifying current item view controller: %@ about button pressed with identifier: %@. #PreviewCollection", &v14, 0x16u);
    }

    v12 = [*(a1 + 32) currentPreviewItemViewController];
    [v12 buttonPressedWithIdentifier:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)saveCurrentPreviewEditsSynchronously:(BOOL)synchronously withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = handlerCopy;
  QLRunInMainThread();
}

void __82__QLPreviewCollection_saveCurrentPreviewEditsSynchronously_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentPageIndex];
  v3 = [*(a1 + 32) currentPreviewItemViewController];
  if (v3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __82__QLPreviewCollection_saveCurrentPreviewEditsSynchronously_withCompletionHandler___block_invoke_46;
    v7[3] = &unk_278B59090;
    v8 = *(a1 + 40);
    v9 = v2;
    [v3 savePreviewEditedCopyWithCompletionHandler:v7];
  }

  else
  {
    v4 = MEMORY[0x277D43EF8];
    v5 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_ERROR, "QLPreviewCollection has no current item, could not save current preview edits #PreviewCollection", buf, 2u);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0x7FFFFFFFFFFFFFFFLL, 0);
    }
  }
}

uint64_t __82__QLPreviewCollection_saveCurrentPreviewEditsSynchronously_withCompletionHandler___block_invoke_46(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), a2);
  }

  return result;
}

- (void)prepareForActionSheetPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v3 = handlerCopy;
  QLRunInMainThread();
}

void __78__QLPreviewCollection_prepareForActionSheetPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) currentPreviewItemViewController];
  v2 = [v6 currentPreviewViewController];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [v6 currentPreviewViewController];
    [v4 prepareForActionSheetPresentation];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void __44__QLPreviewCollection_actionSheetDidDismiss__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) currentPreviewItemViewController];
  v1 = [v4 currentPreviewViewController];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [v4 currentPreviewViewController];
    [v3 actionSheetDidDismiss];
  }
}

void __46__QLPreviewCollection_hostSceneWillDeactivate__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) currentPreviewItemViewController];
  v1 = [v4 currentPreviewViewController];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [v4 currentPreviewViewController];
    [v3 hostSceneWillDeactivate];
  }
}

void __50__QLPreviewCollection_documentMenuActionWillBegin__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) currentPreviewItemViewController];
  v1 = [v4 currentPreviewViewController];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [v4 currentPreviewViewController];
    [v3 documentMenuActionWillBegin];
  }
}

void __57__QLPreviewCollection_hostApplicationDidEnterBackground___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) currentPreviewItemViewController];
  v2 = [v6 currentPreviewViewController];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [v6 currentPreviewViewController];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
    [v4 hostApplicationDidEnterBackground:v5];
  }
}

void __53__QLPreviewCollection_hostApplicationDidBecomeActive__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) currentPreviewItemViewController];
  v1 = [v4 currentPreviewViewController];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [v4 currentPreviewViewController];
    [v3 hostApplicationDidBecomeActive];
  }
}

- (void)shouldDisplayLockActivityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  handlerCopy[2](handlerCopy, [currentPreviewItemViewController canBeLocked]);
}

void __48__QLPreviewCollection_requestLockForCurrentItem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) currentPreviewItemViewController];
  [v1 requestLockForCurrentItem];
}

- (void)saveIntoPhotoLibraryMediaWithURLWrapper:(id)wrapper previewItemType:(unint64_t)type completionHandler:(id)handler
{
  wrapperCopy = wrapper;
  handlerCopy = handler;
  gotLoadHelper_x20__OBJC_CLASS___PHPhotoLibrary(v10);
  systemPhotoLibraryURL = [*(v5 + 2376) systemPhotoLibraryURL];
  v12 = [objc_alloc(*(v5 + 2376)) initWithPhotoLibraryURL:systemPhotoLibraryURL];
  v13 = [wrapperCopy url];
  startAccessingSecurityScopedResource = [v13 startAccessingSecurityScopedResource];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __97__QLPreviewCollection_saveIntoPhotoLibraryMediaWithURLWrapper_previewItemType_completionHandler___block_invoke;
  v22[3] = &unk_278B57318;
  v23 = wrapperCopy;
  typeCopy = type;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __97__QLPreviewCollection_saveIntoPhotoLibraryMediaWithURLWrapper_previewItemType_completionHandler___block_invoke_2;
  v18[3] = &unk_278B590B8;
  v21 = startAccessingSecurityScopedResource;
  v19 = v13;
  v20 = handlerCopy;
  v15 = handlerCopy;
  v16 = v13;
  v17 = wrapperCopy;
  [v12 performChanges:v22 completionHandler:v18];
}

void __97__QLPreviewCollection_saveIntoPhotoLibraryMediaWithURLWrapper_previewItemType_completionHandler___block_invoke(uint64_t a1, double a2)
{
  v3 = *(a1 + 40);
  switch(v3)
  {
    case 1:
      Helper_x8__OBJC_CLASS___PHAssetCreationRequest = gotLoadHelper_x8__OBJC_CLASS___PHAssetCreationRequest(a2);
      v25 = [*(v24 + 2000) creationRequestForAsset];
      v6 = [*(a1 + 32) url];
      v7 = v25;
      v8 = 2;
      break;
    case 3:
      v9 = gotLoadHelper_x8__OBJC_CLASS___PHAssetCreationRequest(a2);
      v25 = [*(v10 + 2000) creationRequestForAsset];
      gotLoadHelper_x8__OBJC_CLASS___PFVideoComplement(v11);
      v13 = objc_alloc(*(v12 + 1312));
      v14 = [*(a1 + 32) url];
      v6 = [v13 initWithBundleAtURL:v14];

      v15 = [v6 imagePath];

      if (v15)
      {
        v16 = MEMORY[0x277CBEBC0];
        v17 = [v6 imagePath];
        v18 = [v16 fileURLWithPath:v17];

        [v25 addResourceWithType:1 fileURL:v18 options:0];
      }

      v19 = [v6 videoPath];

      if (v19)
      {
        v20 = MEMORY[0x277CBEBC0];
        v21 = [v6 videoPath];
        v22 = [v20 fileURLWithPath:v21];

        [v25 addResourceWithType:9 fileURL:v22 options:0];
      }

      goto LABEL_11;
    case 2:
      v4 = gotLoadHelper_x8__OBJC_CLASS___PHAssetCreationRequest(a2);
      v25 = [*(v5 + 2000) creationRequestForAsset];
      v6 = [*(a1 + 32) url];
      v7 = v25;
      v8 = 1;
      break;
    default:
      return;
  }

  [v7 addResourceWithType:v8 fileURL:v6 options:0];
LABEL_11:
}

void __97__QLPreviewCollection_saveIntoPhotoLibraryMediaWithURLWrapper_previewItemType_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  [(QLPreviewCollection *)self forwardPressesToHostIfNeeded:beganCopy];
  v8.receiver = self;
  v8.super_class = QLPreviewCollection;
  [(QLPreviewCollection *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
}

- (void)forwardPressesToHostIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(QLPreviewCollection *)self isFirstResponderTextEntry])
  {
    v5 = MEMORY[0x277D43EF8];
    v6 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "Not propagating presses from service to host since they're in a text entry #Remote";
LABEL_11:
      _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_INFO, v7, buf, 2u);
    }
  }

  else
  {
    if (![(QLPreviewCollection *)self isFirstResponderKeyInput])
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __52__QLPreviewCollection_forwardPressesToHostIfNeeded___block_invoke;
      v9[3] = &unk_278B58CA0;
      v10 = neededCopy;
      selfCopy = self;
      [(QLPreviewCollection *)self keyCommandsWithCompletionHandler:v9];

      goto LABEL_13;
    }

    v6 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      v8 = MEMORY[0x277D43EF8];
      QLSInitLogging();
      v6 = *v8;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "Not propagating presses from service to host since a UIKeyInput (e.g., text field) is first responder #Remote";
      goto LABEL_11;
    }
  }

LABEL_13:
}

void __52__QLPreviewCollection_forwardPressesToHostIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 40);
        v10 = [*(*(&v12 + 1) + 8 * v8) key];
        [v9 forwardKeyPressToHostIfNeeded:v10 serviceCommands:v3];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isFirstResponderTextEntry
{
  firstResponder = [(QLPreviewCollection *)self firstResponder];
  v3 = [firstResponder conformsToProtocol:&unk_284DCEEA8];

  return v3;
}

- (BOOL)isFirstResponderKeyInput
{
  activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
  targetWindow = [activeKeyboard targetWindow];
  firstResponder = [targetWindow firstResponder];

  LOBYTE(activeKeyboard) = [firstResponder conformsToProtocol:&unk_284DCEEA8];
  return activeKeyboard;
}

- (void)forwardKeyPressToHostIfNeeded:(id)needed serviceCommands:(id)commands
{
  v47 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  commandsCopy = commands;
  v37 = neededCopy;
  charactersIgnoringModifiers = [neededCopy charactersIgnoringModifiers];
  if ([charactersIgnoringModifiers length])
  {
    selfCopy = self;
    v36 = commandsCopy;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    stateManager = commandsCopy;
    v10 = [stateManager countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(stateManager);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          modifierFlags = [v37 modifierFlags];
          keyCommand = [v14 keyCommand];
          input = [keyCommand input];
          if ([charactersIgnoringModifiers isEqualToString:input])
          {
            v18 = stateManager;
            modifierFlags2 = [keyCommand modifierFlags];

            v20 = modifierFlags == modifierFlags2;
            stateManager = v18;
            if (v20)
            {
              modifierFlags3 = [keyCommand modifierFlags];
              v26 = MEMORY[0x277D43EF8];
              v27 = *MEMORY[0x277D43EF8];
              if (modifierFlags3)
              {
                if (!v27)
                {
                  QLSInitLogging();
                  v27 = *v26;
                }

                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  v28 = v27;
                  v29 = [v37 description];
                  v30 = [keyCommand description];
                  *buf = 138412546;
                  v43 = v29;
                  v44 = 2112;
                  v45 = v30;
                  _os_log_impl(&dword_23A714000, v28, OS_LOG_TYPE_INFO, "Service ignores key press (%@) with key command (%@) since keycommands with modifiers is already sent to and handled by the host #Remote", buf, 0x16u);

                  stateManager = v18;
                }
              }

              else
              {
                if (!v27)
                {
                  QLSInitLogging();
                  v27 = *v26;
                }

                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  v31 = v27;
                  v32 = [v37 description];
                  v33 = [keyCommand description];
                  *buf = 138412546;
                  v43 = v32;
                  v44 = 2112;
                  v45 = v33;
                  _os_log_impl(&dword_23A714000, v31, OS_LOG_TYPE_INFO, "Service will directly handle key press (%@) with key command (%@) since it has no modifier #Remote", buf, 0x16u);

                  stateManager = v18;
                }

                [(QLPreviewCollection *)selfCopy keyCommandWasPerformed:v14];
              }

              goto LABEL_29;
            }
          }

          else
          {
          }
        }

        v11 = [stateManager countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v21 = MEMORY[0x277D43EF8];
    v22 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v22 = *v21;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = v22;
      v24 = [v37 description];
      *buf = 138412290;
      v43 = v24;
      _os_log_impl(&dword_23A714000, v23, OS_LOG_TYPE_INFO, "Propagating unhandled key press from service to host: (%@) #Remote", buf, 0xCu);
    }

    stateManager = [(QLPreviewCollection *)selfCopy stateManager];
    keyCommand = [v37 charactersIgnoringModifiers];
    [stateManager handleKeyPressWithInput:keyCommand modifierFlags:{objc_msgSend(v37, "modifierFlags")}];
LABEL_29:
    commandsCopy = v36;
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)keyCommandsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v3 = handlerCopy;
  QLRunInMainThread();
}

void __56__QLPreviewCollection_keyCommandsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = [*(a1 + 32) _defaultKeyCommands];
  v3 = [*(a1 + 32) currentPreviewItemViewController];
  v4 = [v3 registeredKeyCommands];
  v5 = [v6 arrayByAddingObjectsFromArray:v4];
  (*(v2 + 16))(v2, v5);
}

- (id)_defaultKeyCommands
{
  v3 = objc_opt_new();
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  if ([currentPreviewItemViewController canEnterFullScreen])
  {
    currentPreviewItemViewController2 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    canToggleFullScreen = [currentPreviewItemViewController2 canToggleFullScreen];

    if (!canToggleFullScreen)
    {
      goto LABEL_5;
    }

    [(QLPreviewCollection *)self fullScreen];
    currentPreviewItemViewController = QLLocalizedString();
    v7 = [MEMORY[0x277D75650] keyCommandWithInput:@"f" modifierFlags:1310720 action:sel__toggleFullscreenIfPossible];
    [v7 setDiscoverabilityTitle:currentPreviewItemViewController];
    v8 = [MEMORY[0x277D43F80] keyCommandWithKeyCommand:v7 identifier:5];
    [v3 addObject:v8];
  }

LABEL_5:

  return v3;
}

- (void)keyCommandWasPerformed:(id)performed
{
  performedCopy = performed;
  v3 = performedCopy;
  QLRunInMainThread();
}

void __46__QLPreviewCollection_keyCommandWasPerformed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keyCommandIdentifier];
  v3 = *(a1 + 40);
  if (v2 == 5)
  {

    [v3 _toggleFullscreenIfPossible];
  }

  else
  {
    v5 = [v3 currentPreviewItemViewController];
    v4 = [v5 currentPreviewViewController];
    [v4 handlePerformedKeyCommandIfNeeded:*(a1 + 32)];
  }
}

void __68__QLPreviewCollection_triggerInteractiveTransitionAnimationIfNeeded__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) transitionController];

  if (!v2 || ([*(a1 + 32) hasTriggeredInteractiveTransitionAnimation] & 1) != 0)
  {
    goto LABEL_13;
  }

  v3 = [*(a1 + 32) slideGesture];
  if ([v3 state] == 1)
  {
    goto LABEL_8;
  }

  v4 = [*(a1 + 32) slideGesture];
  if ([v4 state] == 2)
  {
LABEL_7:

LABEL_8:
LABEL_9:
    v6 = MEMORY[0x277D43EF8];
    v7 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_INFO, "QLPreviewCollection will not trigger interactive transition because gesture is still active. #AppearanceTransition", &v22, 2u);
    }

    goto LABEL_13;
  }

  v5 = [*(a1 + 32) pinchGesture];
  if ([v5 state] == 1)
  {

    goto LABEL_7;
  }

  v9 = [*(a1 + 32) pinchGesture];
  if ([v9 state] == 2)
  {
    v10 = [*(a1 + 32) pinchGesture];
    v11 = [v10 numberOfTouches];

    if (v11 > 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  [*(a1 + 32) setHasTriggeredInteractiveTransitionAnimation:1];
  v12 = [*(a1 + 32) gestureTracker];
  v13 = [v12 shouldFinishDismissal];

  v14 = MEMORY[0x277D43EF8];
  v15 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v15 = *v14;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = NSStringFromBOOL();
    v22 = 138412290;
    v23 = v17;
    _os_log_impl(&dword_23A714000, v16, OS_LOG_TYPE_INFO, "QLPreviewCollection is triggering interactive transition (finished: %@) #AppearanceTransition", &v22, 0xCu);
  }

  v18 = *(a1 + 32);
  v19 = [v18 gestureTracker];
  [v19 finalAnimationDuration];
  [v18 completeTransition:v13 withDuration:?];

  v20 = [*(a1 + 32) transitionController];
  v21 = [*(a1 + 32) gestureTracker];
  [v21 finalAnimationDuration];
  [v20 completeTransition:v13 withDuration:?];

LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)startTransitionWithSourceViewProvider:(id)provider transitionController:(id)controller presenting:(BOOL)presenting useInteractiveTransition:(BOOL)transition completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  controllerCopy = controller;
  handlerCopy = handler;
  v12 = MEMORY[0x277D43EF8];
  v13 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v13 = *v12;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = NSStringFromBOOL();
    v16 = NSStringFromBOOL();
    *buf = 138412546;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_23A714000, v14, OS_LOG_TYPE_INFO, "QLPreviewCollection is preparing for transition (presenting: %@, interactive: %@) #AppearanceTransition", buf, 0x16u);
  }

  v21 = providerCopy;
  v17 = handlerCopy;
  v18 = providerCopy;
  v19 = controllerCopy;
  QLRunInMainThread();

  v20 = *MEMORY[0x277D85DE8];
}

void __136__QLPreviewCollection_startTransitionWithSourceViewProvider_transitionController_presenting_useInteractiveTransition_completionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 1224) setEnabled:0];
  objc_initWeak(&location, *(a1 + 32));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __136__QLPreviewCollection_startTransitionWithSourceViewProvider_transitionController_presenting_useInteractiveTransition_completionHandler___block_invoke_2;
  aBlock[3] = &unk_278B590E0;
  objc_copyWeak(&v25, &location);
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v26 = *(a1 + 64);
  v24 = *(a1 + 56);
  v2 = _Block_copy(aBlock);
  if (*(a1 + 65) == 1)
  {
    [*(a1 + 32) updateCurrentPreviewConfiguration];
  }

  v3 = [*(a1 + 32) currentPreviewItemViewController];

  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (v3)
  {
    if (!v5)
    {
      QLSInitLogging();
      v5 = *v4;
    }

    v6 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 65);
      v8 = NSStringFromBOOL();
      *buf = 138412290;
      v29 = v8;
      _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_INFO, "QLPreviewCollection is waiting for preview controller to call ready block (presenting: %@). #AppearanceTransition", buf, 0xCu);
    }

    v9 = [*(a1 + 32) currentPreviewItemViewController];
    objc_initWeak(buf, v9);

    objc_initWeak(&from, *(a1 + 32));
    v10 = [*(a1 + 32) currentPreviewItemViewController];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __136__QLPreviewCollection_startTransitionWithSourceViewProvider_transitionController_presenting_useInteractiveTransition_completionHandler___block_invoke_214;
    v15[3] = &unk_278B59108;
    objc_copyWeak(&v17, &from);
    v19 = *(a1 + 65);
    objc_copyWeak(&v18, buf);
    v16 = v2;
    [v10 isReadyForDisplayWithCompletionHandler:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&from);
    objc_destroyWeak(buf);
  }

  else
  {
    if (!v5)
    {
      QLSInitLogging();
      v5 = *v4;
    }

    v11 = v5;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 65);
      v13 = NSStringFromBOOL();
      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&dword_23A714000, v11, OS_LOG_TYPE_INFO, "QLPreviewCollection is calling ready block right away (presenting: %@). #AppearanceTransition", buf, 0xCu);
    }

    v2[2](v2);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  v14 = *MEMORY[0x277D85DE8];
}

void __136__QLPreviewCollection_startTransitionWithSourceViewProvider_transitionController_presenting_useInteractiveTransition_completionHandler___block_invoke_2(uint64_t a1)
{
  objc_copyWeak(&v5, (a1 + 56));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 64);
  v4 = *(a1 + 48);
  QLRunInMainThread();

  objc_destroyWeak(&v5);
}

uint64_t __136__QLPreviewCollection_startTransitionWithSourceViewProvider_transitionController_presenting_useInteractiveTransition_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setTransitionController:v2];

  v4 = *(a1 + 40);
  v5 = objc_loadWeakRetained((a1 + 56));
  [v5 setTransitionContext:v4];

  LODWORD(v5) = *(a1 + 64);
  v6 = objc_loadWeakRetained((a1 + 56));
  v7 = v6;
  if (v5 == 1)
  {
    [v6 triggerInteractiveTransitionAnimationIfNeeded];
  }

  else
  {
    [v6 startNonInteractiveTransitionPresenting:*(a1 + 65)];
  }

  [MEMORY[0x277CD9FF0] flush];
  v8 = *(*(a1 + 48) + 16);

  return v8();
}

void __136__QLPreviewCollection_startTransitionWithSourceViewProvider_transitionController_presenting_useInteractiveTransition_completionHandler___block_invoke_214(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (*(a1 + 56) == 1 && WeakRetained != 0)
  {
    v5 = [WeakRetained currentPreviewItemViewController];
    v6 = objc_loadWeakRetained((a1 + 48));

    if (v5 == v6)
    {
      [v3 updateCurrentPreviewConfiguration];
    }
  }

  v7 = MEMORY[0x277D43EF8];
  v8 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 56);
    v10 = v8;
    v11 = NSStringFromBOOL();
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_INFO, "QLPreviewCollection is calling ready block now that its current preview controller is ready (presenting: %@). #AppearanceTransition", &v13, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __42__QLPreviewCollection_tearDownTransition___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 1224) setEnabled:1];
  v2 = [*(a1 + 32) _isBeingDismissed];
  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    v6 = v4;
    v7 = NSStringFromBOOL();
    v8 = v7;
    v9 = @"presented";
    if (v2)
    {
      v9 = @"dismissed";
    }

    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_INFO, "[QLPreviewCollection tearDownTransition: didComplete: %@] - Is being %@ #AppearanceTransition", &v12, 0x16u);
  }

  [*(a1 + 32) _tearDownTransition:*(a1 + 40)];
  if (*(a1 + 40) & v2)
  {
    [*(a1 + 32) setFullScreen:0];
  }

  result = [*(a1 + 32) _notifyHostPreviewCollectionIsReadyForInvalidationIfNeeded];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)transitionInProgress
{
  transitionController = [(QLPreviewCollection *)self transitionController];
  v3 = transitionController != 0;

  return v3;
}

- (BOOL)pinchDismissGestureInProgress
{
  pinchRotationTracker = [(QLPreviewCollection *)self pinchRotationTracker];
  v3 = pinchRotationTracker != 0;

  return v3;
}

- (BOOL)_isBeingDismissed
{
  transitionDriver = [(QLPreviewCollection *)self transitionDriver];
  if (transitionDriver)
  {
    transitionDriver2 = [(QLPreviewCollection *)self transitionDriver];
    v5 = [transitionDriver2 presenting] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_isBeingPresented
{
  transitionDriver = [(QLPreviewCollection *)self transitionDriver];
  if (transitionDriver)
  {
    transitionDriver2 = [(QLPreviewCollection *)self transitionDriver];
    presenting = [transitionDriver2 presenting];
  }

  else
  {
    presenting = 0;
  }

  return presenting;
}

- (NSString)parentApplicationDisplayIdentifier
{
  hostApplicationBundleIdentifier = [(QLPreviewCollection *)self hostApplicationBundleIdentifier];
  if ([hostApplicationBundleIdentifier hasPrefix:@"com.apple."] && -[NSString hasPrefix:](self->_overrideParentApplicationDisplayIdentifier, "hasPrefix:", @"com.apple."))
  {
    v4 = self->_overrideParentApplicationDisplayIdentifier;

    hostApplicationBundleIdentifier = v4;
  }

  return hostApplicationBundleIdentifier;
}

- (void)setIsContentManaged:(BOOL)managed
{
  self->_isContentManaged = managed;
  if (managed)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [(QLPreviewCollection *)self _setDragDataOwner:v4];

  [(QLPreviewCollection *)self _setDataOwnerForCopy:v4];
}

- (void)setPreviewItemDisplayState:(id)state onItemAtIndex:(unint64_t)index
{
  stateCopy = state;
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  [currentPreviewItemViewController updatePreviewItemDisplayState:stateCopy];
}

- (void)_updatePreferredContentSize
{
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  if (([currentPreviewItemViewController isLoading] & 1) == 0)
  {
    stateManager = [(QLPreviewCollection *)self stateManager];
    [currentPreviewItemViewController preferredContentSize];
    [stateManager updatePreferredContentSize:?];
  }
}

- (void)_updateFullscreenBackgroundColor
{
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  if (([currentPreviewItemViewController isLoading] & 1) == 0 && objc_msgSend(currentPreviewItemViewController, "isLoaded"))
  {
    stateManager = [(QLPreviewCollection *)self stateManager];
    fullscreenBackgroundColor = [currentPreviewItemViewController fullscreenBackgroundColor];
    [stateManager setFullscreenBackgroundColor:fullscreenBackgroundColor];
  }
}

- (void)_updateFullscreen
{
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  if (![currentPreviewItemViewController isLoading] || (objc_msgSend(currentPreviewItemViewController, "loadingFailed") & 1) != 0 || (objc_msgSend(currentPreviewItemViewController, "context"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "previewItemType"), v3, v4 == 15))
  {
    if (-[QLPreviewCollection fullScreen](self, "fullScreen") && !-[QLPreviewCollection shouldStartFullScreen](self, "shouldStartFullScreen") && ([currentPreviewItemViewController canEnterFullScreen] & 1) == 0)
    {
      [(QLPreviewCollection *)self setFullScreen:0];
    }
  }
}

- (void)_updateOverlayVisibility
{
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  stateManager = [(QLPreviewCollection *)self stateManager];
  [stateManager setToolbarCanBeVisible:{objc_msgSend(currentPreviewItemViewController, "canShowToolBar")}];

  stateManager2 = [(QLPreviewCollection *)self stateManager];
  [stateManager2 setNavBarCanBeVisible:{objc_msgSend(currentPreviewItemViewController, "canShowNavBar")}];
}

- (void)_updateTitleFromController
{
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  if (([currentPreviewItemViewController isLoading] & 1) == 0)
  {
    stateManager = [(QLPreviewCollection *)self stateManager];
    title = [currentPreviewItemViewController title];
    [stateManager updateTitle:title];
  }
}

- (void)_updatePrinter
{
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  if ([currentPreviewItemViewController isLoading])
  {
    stateManager = [(QLPreviewCollection *)self stateManager];
    [stateManager setPrinter:0];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      stateManager = [currentPreviewItemViewController printer];
    }

    else
    {
      stateManager = 0;
    }

    stateManager2 = [(QLPreviewCollection *)self stateManager];
    [stateManager2 setPrinter:0];

    if (stateManager)
    {
      stateManager3 = [(QLPreviewCollection *)self stateManager];
      [stateManager3 setPrinter:stateManager];
    }
  }
}

- (void)_cleanAccessoryViewContainer
{
  accessoryView = [(QLPreviewCollection *)self accessoryView];
  subviews = [accessoryView subviews];
  firstObject = [subviews firstObject];

  [firstObject removeFromSuperview];
}

- (void)_updateAccessoryViewWithPreviewItemViewController:(id)controller
{
  v34[1] = *MEMORY[0x277D85DE8];
  accessoryView = [controller accessoryView];
  accessoryView2 = [(QLPreviewCollection *)self accessoryView];
  subviews = [accessoryView2 subviews];
  lastObject = [subviews lastObject];

  if (lastObject != accessoryView)
  {
    if (lastObject)
    {
      v8 = MEMORY[0x277D75D18];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __73__QLPreviewCollection__updateAccessoryViewWithPreviewItemViewController___block_invoke;
      v29[3] = &unk_278B57190;
      v30 = lastObject;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __73__QLPreviewCollection__updateAccessoryViewWithPreviewItemViewController___block_invoke_2;
      v27[3] = &unk_278B571B8;
      v28 = v30;
      [v8 animateWithDuration:v29 animations:v27 completion:0.2];
    }

    if (accessoryView)
    {
      [accessoryView2 addSubview:accessoryView];
      [accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
      v9 = MEMORY[0x277CCAAD0];
      v33 = @"view";
      v34[0] = accessoryView;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v11 = [v9 constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:0 views:v10];
      [accessoryView2 addConstraints:v11];

      v12 = MEMORY[0x277CCAAD0];
      v31 = @"view";
      v32 = accessoryView;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v14 = [v12 constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v13];
      [accessoryView2 addConstraints:v14];

      v15 = MEMORY[0x277D75D18];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __73__QLPreviewCollection__updateAccessoryViewWithPreviewItemViewController___block_invoke_3;
      v25[3] = &unk_278B57190;
      v16 = accessoryView;
      v26 = v16;
      [v15 performWithoutAnimation:v25];
      [v16 setAlpha:0.0];
      v17 = MEMORY[0x277D75D18];
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __73__QLPreviewCollection__updateAccessoryViewWithPreviewItemViewController___block_invoke_4;
      v23 = &unk_278B57190;
      v24 = v16;
      [v17 animateWithDuration:&v20 animations:0.2];
    }
  }

  v18 = [(QLPreviewCollection *)self stateManager:v20];
  [v18 setAccessoryViewVisible:accessoryView != 0];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __73__QLPreviewCollection__updateAccessoryViewWithPreviewItemViewController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 32);

  return [v2 setAlpha:1.0];
}

uint64_t __73__QLPreviewCollection__updateAccessoryViewWithPreviewItemViewController___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_updateWhitePointAdaptivityStyle
{
  stateManager = [(QLPreviewCollection *)self stateManager];
  if (objc_opt_respondsToSelector())
  {
    currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
    [stateManager previewCollectionPrefersWhitePointAdaptivityStyle:{objc_msgSend(currentPreviewItemViewController, "preferredWhitePointAdaptivityStyle")}];
  }
}

- (id)pageViewController:(id)controller viewControllerAtIndex:(unint64_t)index
{
  controllerCopy = controller;
  possibleRange = [(QLPreviewItemStore *)self->_itemStore possibleRange];
  if (index < possibleRange || index - possibleRange >= v8)
  {
    v15 = 0;
  }

  else
  {
    v10 = [QLItemPresenterViewController alloc];
    hostApplicationBundleIdentifier = [(QLPreviewCollection *)self hostApplicationBundleIdentifier];
    parentApplicationDisplayIdentifier = [(QLPreviewCollection *)self parentApplicationDisplayIdentifier];
    v13 = [(QLItemPresenterViewController *)v10 initWithHostApplicationBundleIdentifier:hostApplicationBundleIdentifier parentApplicationDisplayIdentifier:parentApplicationDisplayIdentifier];

    [(QLItemViewController *)v13 setAppearance:self->_appearance];
    [(QLItemAggregatedViewController *)v13 setDelegate:self];
    [(QLItemPresenterViewController *)v13 setIsContentManaged:[(QLPreviewCollection *)self isContentManaged]];
    objc_initWeak(&location, self);
    itemStore = self->_itemStore;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__QLPreviewCollection_pageViewController_viewControllerAtIndex___block_invoke;
    v17[3] = &unk_278B591A8;
    objc_copyWeak(v19, &location);
    v19[1] = index;
    v15 = v13;
    v18 = v15;
    [(QLPreviewItemStore *)itemStore previewItemAtIndex:index withCompletionHandler:v17];

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __64__QLPreviewCollection_pageViewController_viewControllerAtIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [WeakRetained currentPageIndex];
    v9 = *(a1 + 48);

    if (v8 == v9)
    {
      [*(a1 + 32) previewWillAppear:1];
      v10 = objc_loadWeakRetained((a1 + 40));
      [v10 _updateWhitePointAdaptivityStyle];
    }

    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__QLPreviewCollection_pageViewController_viewControllerAtIndex___block_invoke_2;
    v12[3] = &unk_278B59180;
    v13 = v5;
    objc_copyWeak(v14, (a1 + 40));
    v14[1] = *(a1 + 48);
    [v11 loadPreviewControllerWithContents:v13 context:0 completionHandler:v12];
    objc_destroyWeak(v14);
  }
}

void __64__QLPreviewCollection_pageViewController_viewControllerAtIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (v3)
  {
    if (!v5)
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v24 = v6;
      v25 = 2112;
      v26 = v3;
      v7 = "Error while attempting to load controller for preview item (%@): %@ #PreviewCollection";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_10:
      _os_log_impl(&dword_23A714000, v8, v9, v7, buf, v10);
    }
  }

  else
  {
    if (!v5)
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v24 = v11;
      v7 = "Finished loading controller for preview item (%@) successfully. #PreviewCollection";
      v8 = v5;
      v9 = OS_LOG_TYPE_INFO;
      v10 = 12;
      goto LABEL_10;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = [WeakRetained stateManager];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __64__QLPreviewCollection_pageViewController_viewControllerAtIndex___block_invoke_239;
    v21 = &unk_278B59158;
    v22[1] = *(a1 + 48);
    objc_copyWeak(v22, (a1 + 40));
    [v14 getStateRestorationUserInfo:&v18];

    if ([v13 currentPageIndex] == *(a1 + 48))
    {
      [v13 notifyFirstTimeAppearanceWithActions:v13[138]];
    }

    [v13 _updateCanChangeCurrentPage];
    [v13 _updateCanDismissWithGesture];
    if ([v13 currentPageIndex] == *(a1 + 48))
    {
      [v13 updateCurrentPreviewConfiguration];
    }

    objc_destroyWeak(v22);
  }

  else
  {
    v15 = *v4;
    if (!*v4)
    {
      QLSInitLogging();
      v15 = *v4;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 48);
      *buf = 134217984;
      v24 = v16;
      _os_log_impl(&dword_23A714000, v15, OS_LOG_TYPE_INFO, "Cancelling loading of preview at index %lu because collection does not exist anymore. #PreviewCollection", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __64__QLPreviewCollection_pageViewController_viewControllerAtIndex___block_invoke_239(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (v3)
  {
    if (!v5)
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v7 = v5;
      v8 = [v3 debugDescription];
      v12 = 134218242;
      v13 = v6;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_INFO, "State restoration: user info for preview at index %lu: %@ #PreviewCollection", &v12, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained notifyStateRestorationUserInfo:v3];
  }

  else
  {
    if (!v5)
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v12 = 134217984;
      v13 = v10;
      _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_INFO, "State restoration: No user info for preview at index %lu. #PreviewCollection", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)displayBarsIfNeededForDestinationViewController:(id)controller
{
  IsEmpty = controller;
  v5 = IsEmpty;
  if (IsEmpty)
  {
    v8 = IsEmpty;
    if (![IsEmpty supportsChromeless] || (objc_msgSend(v8, "contentFrame"), IsEmpty = CGRectIsEmpty(v10), v5 = v8, (IsEmpty & 1) == 0))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v5 = v8;
      if ((isKindOfClass & 1) == 0 || ([v8 currentPreviewViewController], v7 = objc_claimAutoreleasedReturnValue(), v7, v5 = v8, v7))
      {
        if (([v5 navigationBarShouldBeChromeless] & 1) == 0)
        {
          [(QLPreviewCollection *)self setNavigationBarShouldBeChromelessIfNeeded:0];
        }

        IsEmpty = [v8 toolbarShouldBeChromeless];
        v5 = v8;
        if ((IsEmpty & 1) == 0)
        {
          IsEmpty = [(QLPreviewCollection *)self setToolbarShouldBeChromelessIfNeeded:0];
          v5 = v8;
        }
      }
    }
  }

  MEMORY[0x2821F96F8](IsEmpty, v5);
}

- (void)pageViewController:(id)controller willBeginInteractiveTransitionFromPage:(id)page withIndex:(unint64_t)index toPage:(id)toPage withIndex:(unint64_t)withIndex
{
  toPageCopy = toPage;
  pageCopy = page;
  [(QLPreviewCollection *)self setIsTransitioningPage:1];
  [toPageCopy setAppearance:self->_appearance];
  [pageCopy previewWillDisappear:1];

  [toPageCopy previewWillAppear:1];
  [toPageCopy previewBecameFullScreen:self->_fullScreen animated:0];
  [(QLPreviewCollection *)self displayBarsIfNeededForDestinationViewController:toPageCopy];
}

- (void)pageViewController:(id)controller isTransitioningFromPage:(id)page withIndex:(unint64_t)index toPage:(id)toPage withIndex:(unint64_t)withIndex withProgress:(double)progress
{
  v11 = 1.0 - progress;
  toPageCopy = toPage;
  [page previewIsAppearingWithProgress:v11];
  [toPageCopy previewIsAppearingWithProgress:progress];
  [(QLPreviewCollection *)self displayBarsIfNeededForDestinationViewController:toPageCopy];
}

- (void)_installGestures
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapGestureRecognized];
  [(QLPreviewCollection *)self setTapGesture:v3];

  tapGesture = [(QLPreviewCollection *)self tapGesture];
  [tapGesture _setDelaysRecognitionForGreaterTapCounts:1];

  tapGesture2 = [(QLPreviewCollection *)self tapGesture];
  [tapGesture2 setDelegate:self];

  v6 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_slideToDismissGestureRecognized_];
  [(QLPreviewCollection *)self setSlideGesture:v6];

  slideGesture = [(QLPreviewCollection *)self slideGesture];
  [slideGesture setDelegate:self];

  slideGesture2 = [(QLPreviewCollection *)self slideGesture];
  [slideGesture2 setAllowedScrollTypesMask:2];

  slideGesture3 = [(QLPreviewCollection *)self slideGesture];
  [slideGesture3 setMaximumNumberOfTouches:1];

  v10 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel_rotationOrPinchGestureRecognized_];
  [(QLPreviewCollection *)self setPinchGesture:v10];

  pinchGesture = [(QLPreviewCollection *)self pinchGesture];
  [pinchGesture setDelegate:self];

  v12 = [objc_alloc(MEMORY[0x277D75938]) initWithTarget:self action:sel_rotationOrPinchGestureRecognized_];
  [(QLPreviewCollection *)self setRotationGesture:v12];

  rotationGesture = [(QLPreviewCollection *)self rotationGesture];
  [rotationGesture setDelegate:self];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    pageViewController = [(QLPreviewCollection *)self pageViewController];
    view = [pageViewController view];
    [view addGestureRecognizer:self->_slideGesture];

    pageViewController2 = [(QLPreviewCollection *)self pageViewController];
    view2 = [pageViewController2 view];
    [view2 addGestureRecognizer:self->_pinchGesture];

    pageViewController3 = [(QLPreviewCollection *)self pageViewController];
    view3 = [pageViewController3 view];
    [view3 addGestureRecognizer:self->_rotationGesture];
  }

  pageViewController4 = [(QLPreviewCollection *)self pageViewController];
  view4 = [pageViewController4 view];
  [view4 addGestureRecognizer:self->_tapGesture];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  pageViewController5 = [(QLPreviewCollection *)self pageViewController];
  view5 = [pageViewController5 view];
  subviews = [view5 subviews];
  firstObject = [subviews firstObject];
  gestureRecognizers = [firstObject gestureRecognizers];

  v27 = [gestureRecognizers countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v41;
    do
    {
      v30 = 0;
      do
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        v31 = *(*(&v40 + 1) + 8 * v30);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v33 = &OBJC_IVAR___QLPreviewCollection__pageSwipeGesture;
        if (isKindOfClass & 1) != 0 || (objc_opt_class(), v34 = objc_opt_isKindOfClass(), v33 = &OBJC_IVAR___QLPreviewCollection__pagePanGesture, (v34))
        {
          objc_storeStrong((&self->super.super.super.isa + *v33), v31);
        }

        ++v30;
      }

      while (v28 != v30);
      v28 = [gestureRecognizers countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v28);
  }

  pinchGesture2 = [(QLPreviewCollection *)self pinchGesture];
  slideGesture4 = [(QLPreviewCollection *)self slideGesture];
  [pinchGesture2 requireGestureRecognizerToFail:slideGesture4];

  rotationGesture2 = [(QLPreviewCollection *)self rotationGesture];
  slideGesture5 = [(QLPreviewCollection *)self slideGesture];
  [rotationGesture2 requireGestureRecognizerToFail:slideGesture5];

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)_toggleFullscreenIfPossible
{
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  canToggleFullScreen = [currentPreviewItemViewController canToggleFullScreen];

  if (canToggleFullScreen)
  {
    [(QLPreviewCollection *)self setFullScreen:[(QLPreviewCollection *)self fullScreen]^ 1];
  }

  return canToggleFullScreen;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (self->_tapGesture == recognizerCopy && (-[QLPreviewCollection currentPreviewItemViewController](self, "currentPreviewItemViewController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 canClickToToggleFullscreen], v8, (v9 & 1) == 0) && (objc_msgSend(touchCopy, "_isPointerTouch") & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];

    if (currentPreviewItemViewController)
    {
      currentPreviewItemViewController2 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      v10 = [currentPreviewItemViewController2 shouldAcceptTouch:touchCopy ofGestureRecognizer:recognizerCopy];
    }

    else
    {
      v10 = 1;
    }
  }

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v35 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  v5 = beginCopy;
  slideGesture = self->_slideGesture;
  if (slideGesture != beginCopy && self->_rotationGesture != beginCopy && self->_pinchGesture != beginCopy)
  {
    goto LABEL_14;
  }

  presentedViewController = [(QLPreviewCollection *)self presentedViewController];

  if (!presentedViewController)
  {
    if ([(QLPreviewCollection *)self transitionInProgress])
    {
      rotationGesture = self->_rotationGesture;
      if (![(QLPreviewCollection *)self pinchDismissGestureInProgress]|| rotationGesture != v5)
      {
        v10 = MEMORY[0x277D43EF8];
        v11 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          QLSInitLogging();
          v11 = *v10;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v33 = 138412290;
          v34 = v5;
          _os_log_impl(&dword_23A714000, v11, OS_LOG_TYPE_INFO, "Gesture recognizer (%@) can't begin because and interactive transition is already in progress. #AppearanceTransition", &v33, 0xCu);
        }

        goto LABEL_5;
      }

LABEL_17:
      canPinchToDismiss = 1;
      goto LABEL_32;
    }

    slideGesture = self->_slideGesture;
LABEL_14:
    if (slideGesture == v5)
    {
      currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
      scrollView = [currentPreviewItemViewController scrollView];

      v14 = self->_slideGesture;
      view = [(UIPanGestureRecognizer *)v14 view];
      [(UIPanGestureRecognizer *)v14 velocityInView:view];
      v17 = v16;
      v19 = v18;

      v20 = fabs(v19) > fabs(v17);
      if (scrollView)
      {
        [scrollView contentOffset];
        if (v21 > 0.0)
        {
          v20 = 0;
        }
      }

      [scrollView contentOffset];
      if (v22 <= 0.0)
      {
        [scrollView frame];
        v24 = v23;
        [scrollView contentSize];
        v26 = v24 >= v25;
        if (v19 >= 0.0)
        {
          v26 = 1;
        }

        v20 &= v26;
      }

      if (self->_allowInteractiveTransitions && (-[QLPreviewCollection currentPreviewItemViewController](self, "currentPreviewItemViewController"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 canSwipeToDismiss] & v20, v27, v28 == 1))
      {
        panGestureRecognizer = [scrollView panGestureRecognizer];
        [panGestureRecognizer setEnabled:0];

        panGestureRecognizer2 = [scrollView panGestureRecognizer];
        canPinchToDismiss = 1;
        [panGestureRecognizer2 setEnabled:1];
      }

      else
      {
        canPinchToDismiss = 0;
      }
    }

    else
    {
      if (self->_rotationGesture != v5 && self->_pinchGesture != v5)
      {
        goto LABEL_17;
      }

      if (!self->_allowInteractiveTransitions)
      {
        goto LABEL_5;
      }

      scrollView = [(QLPreviewCollection *)self currentPreviewItemViewController];
      canPinchToDismiss = [scrollView canPinchToDismiss];
    }

    goto LABEL_32;
  }

LABEL_5:
  canPinchToDismiss = 0;
LABEL_32:

  v31 = *MEMORY[0x277D85DE8];
  return canPinchToDismiss;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_slideGesture == recognizerCopy)
  {
    currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
    scrollView = [currentPreviewItemViewController scrollView];
    panGestureRecognizer = [scrollView panGestureRecognizer];

    if (panGestureRecognizer == gestureRecognizerCopy)
    {
      goto LABEL_14;
    }
  }

  if (self->_pinchGesture == recognizerCopy)
  {
    currentPreviewItemViewController2 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    scrollView2 = [currentPreviewItemViewController2 scrollView];
    pinchGestureRecognizer = [scrollView2 pinchGestureRecognizer];

    if (pinchGestureRecognizer == gestureRecognizerCopy)
    {
      goto LABEL_14;
    }
  }

  view = [(UIPanGestureRecognizer *)gestureRecognizerCopy view];
  currentPreviewItemViewController3 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  view2 = [currentPreviewItemViewController3 view];
  v17 = [view isDescendantOfView:view2];

  if (v17)
  {
    currentPreviewItemViewController4 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    if ([currentPreviewItemViewController4 shouldRecognizeGestureRecognizer:recognizerCopy])
    {
      currentPreviewItemViewController5 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      v20 = [currentPreviewItemViewController5 gestureRecognizer:recognizerCopy shouldRecognizeSimultaneouslyWithGestureRecognizer:gestureRecognizerCopy];

      if (v20)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

LABEL_16:
    v24 = 0;
    goto LABEL_18;
  }

LABEL_8:
  slideGesture = self->_slideGesture;
  if (slideGesture == recognizerCopy)
  {
    v24 = self->_verticalPanGesture == gestureRecognizerCopy;
    goto LABEL_18;
  }

  if (self->_tapGesture == recognizerCopy)
  {
    if (slideGesture != gestureRecognizerCopy && self->_pinchGesture != gestureRecognizerCopy && self->_rotationGesture != gestureRecognizerCopy && self->_pagePanGesture != gestureRecognizerCopy && self->_pageSwipeGesture != gestureRecognizerCopy)
    {
      objc_opt_class();
      v24 = objc_opt_isKindOfClass() ^ 1;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  rotationGesture = self->_rotationGesture;
  pinchGesture = self->_pinchGesture;
  if ((rotationGesture != recognizerCopy || pinchGesture != gestureRecognizerCopy) && (rotationGesture != gestureRecognizerCopy || pinchGesture != recognizerCopy))
  {
    if (self->_pageSwipeGesture != gestureRecognizerCopy)
    {
      v24 = self->_pagePanGesture != gestureRecognizerCopy;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_14:
  v24 = 1;
LABEL_18:

  return v24 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  v9 = [currentPreviewItemViewController gestureRecognizer:recognizerCopy shouldRequireFailureOfGestureRecognizer:gestureRecognizerCopy];

  if (v9)
  {
    isKindOfClass = 1;
  }

  else if (self->_tapGesture == recognizerCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

void __85__QLPreviewCollection_previewItemViewController_wantsToSetRemoteEdgePanGestureWidth___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateManager];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) stateManager];
    [v4 setScreenEdgePanWidth:*(a1 + 40)];
  }
}

- (void)previewItemViewController:(id)controller wantsToOpenURL:(id)l
{
  lCopy = l;
  stateManager = [(QLPreviewCollection *)self stateManager];
  [stateManager openURLIfAllowed:lCopy];
}

- (void)previewItemViewController:(id)controller didFailWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  errorCopy = error;
  v8 = MEMORY[0x277D43EF8];
  v9 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    contents = [controllerCopy contents];
    v16 = 138412546;
    v17 = contents;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_ERROR, "QLItemViewController (contents: %@) did fail with error: %@. #PreviewCollection", &v16, 0x16u);
  }

  presentingDelegate = [controllerCopy presentingDelegate];
  itemPresenterViewController = [presentingDelegate itemPresenterViewController];
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];

  if (itemPresenterViewController == currentPreviewItemViewController)
  {
    [(QLPreviewCollection *)self updateCurrentPreviewConfiguration];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)previewItemViewControllerWantsToShowShareSheet:(id)sheet
{
  stateManager = [(QLPreviewCollection *)self stateManager];
  [stateManager showShareSheet];
}

- (void)previewItemViewController:(id)controller wantsToShowShareSheetWithPopoverTracker:(id)tracker customSharedURL:(id)l dismissCompletion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  trackerCopy = tracker;
  stateManager = [(QLPreviewCollection *)self stateManager];
  [stateManager showShareSheetWithPopoverTracker:trackerCopy customSharedURL:lCopy dismissCompletion:completionCopy];
}

- (void)previewItemViewControllerWantsUpdateKeyCommands:(id)commands
{
  stateManager = [(QLPreviewCollection *)self stateManager];
  [stateManager updateKeyCommands];
}

- (void)previewItemViewControllerWantsToShowNoInternetConnectivityAlert:(id)alert
{
  stateManager = [(QLPreviewCollection *)self stateManager];
  [stateManager presentAlertControllerForScenario:0];
}

- (void)previewItemViewController:(id)controller requestsTemporaryEditDirectoryWithCompletionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  handlerCopy = handler;
  if ([(QLPreviewCollection *)self _itemViewControllerIsCurrentlyPresentedItemViewController:controllerCopy])
  {
    context = [controllerCopy context];
    item = [context item];

    v10 = [(QLPreviewItemStore *)self->_itemStore indexOfPreviewItem:item];
    stateManager = [(QLPreviewCollection *)self stateManager];
    [stateManager createTemporaryEditDirectoryForItemAtIndex:v10 completionHandler:handlerCopy];
  }

  else
  {
    v12 = MEMORY[0x277D43EF8];
    v13 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
      v18 = 138412546;
      v19 = controllerCopy;
      v20 = 2112;
      v21 = currentPreviewItemViewController;
      _os_log_impl(&dword_23A714000, v14, OS_LOG_TYPE_ERROR, "Could not create temporary directory because preview controller (%@) is not the current preview controller (%@) #PreviewCollection", &v18, 0x16u);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D43EF0] code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)previewItemViewControllerDidUpdateContentFrame:(id)frame
{
  frameCopy = frame;
  stateManager = [(QLPreviewCollection *)self stateManager];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    stateManager2 = [(QLPreviewCollection *)self stateManager];
    [frameCopy contentFrame];
    [stateManager2 updateContentFrame:?];
  }
}

- (void)expandContentOfPreviewItemViewController:(id)controller unarchivedItemsURL:(id)l
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  controllerCopy = controller;
  context = [controllerCopy context];
  item = [context item];

  presentingDelegate = [controllerCopy presentingDelegate];

  itemPresenterViewController = [presentingDelegate itemPresenterViewController];
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];

  if (itemPresenterViewController == currentPreviewItemViewController)
  {
    v13 = [(QLPreviewItemStore *)self->_itemStore indexOfPreviewItem:item];
    startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
    v22 = 0;
    v15 = [MEMORY[0x277CC6438] wrapperWithURL:lCopy readonly:1 error:&v22];
    v16 = v22;
    if (v16)
    {
      v17 = MEMORY[0x277D43EF8];
      v18 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v18 = *v17;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v24 = v13;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_23A714000, v18, OS_LOG_TYPE_ERROR, "Could not expand content of item at index: %lu. Error: %@ #PreviewCollection", buf, 0x16u);
      }

      if (!startAccessingSecurityScopedResource)
      {
        goto LABEL_9;
      }
    }

    else
    {
      stateManager = [(QLPreviewCollection *)self stateManager];
      uuid = [item uuid];
      [stateManager expandContentOfItemAtIndex:v13 withUUID:uuid unarchivedItemsURLWrapper:v15];

      if (!startAccessingSecurityScopedResource)
      {
        goto LABEL_9;
      }
    }

    [lCopy stopAccessingSecurityScopedResource];
LABEL_9:
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)previewItemViewControllerDidEditCopyOfPreviewItem:(id)item editedCopy:(id)copy completionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    handlerCopy = &__block_literal_global_21;
  }

  v15 = handlerCopy;
  copyCopy = copy;
  itemCopy = item;
  stateManager = [(QLPreviewCollection *)self stateManager];
  itemStore = self->_itemStore;
  context = [itemCopy context];

  item = [context item];
  [stateManager updatePreviewItemAtIndex:-[QLPreviewItemStore indexOfPreviewItem:](itemStore editedCopy:"indexOfPreviewItem:" completionHandler:{item), copyCopy, v15}];
}

- (void)previewItemViewControllerDidAcquireLock:(id)lock
{
  itemStore = self->_itemStore;
  context = [lock context];
  item = [context item];
  v7 = [(QLPreviewItemStore *)itemStore indexOfPreviewItem:item];
  currentItemIndex = self->_currentItemIndex;

  if (v7 == currentItemIndex)
  {
    [(QLPreviewCollection *)self setCurrentItemViewControllerIsPerformingFocusedAction:1];

    [(QLPreviewCollection *)self _updateEnableChangingPageUsingGestures];
  }
}

- (void)previewItemViewControllerDidHandOverLock:(id)lock
{
  [(QLPreviewCollection *)self setCurrentItemViewControllerIsPerformingFocusedAction:0];

  [(QLPreviewCollection *)self _updateEnableChangingPageUsingGestures];
}

- (void)previewItemViewController:(id)controller wantsToUpdateStateRestorationWithUserInfo:(id)info
{
  infoCopy = info;
  stateManager = [(QLPreviewCollection *)self stateManager];
  [stateManager updateStateRestorationWithUserInfo:infoCopy];
}

- (void)previewItemViewController:(id)controller wantsToUpdatePreviewItemDisplayState:(id)state
{
  stateCopy = state;
  context = [controller context];
  item = [context item];

  v8 = [(QLPreviewItemStore *)self->_itemStore indexOfPreviewItem:item];
  stateManager = [(QLPreviewCollection *)self stateManager];
  [stateManager setPreviewItemDisplayState:stateCopy onItemAtIndex:v8];
}

- (void)previewItemDisplayState:(id)state wasAppliedToItemAtIndex:(unint64_t)index
{
  stateCopy = state;
  pageViewController = [(QLPreviewCollection *)self pageViewController];
  currentPage = [pageViewController currentPage];

  [currentPage updatePreviewItemDisplayState:stateCopy];
}

- (void)previewItemViewControllerWantsToDismissQuickLook:(id)look
{
  stateManager = [(QLPreviewCollection *)self stateManager];
  [stateManager triggerQuickLookDismissal];
}

- (void)previewItemViewControllerDidChangeCurrentPreviewController:(id)controller
{
  if ([(QLPreviewCollection *)self _itemViewControllerIsCurrentlyPresentedItemViewController:controller])
  {

    [(QLPreviewCollection *)self updateCurrentPreviewConfiguration];
  }
}

- (void)previewItemViewController:(id)controller wantsToForwardMessageToHost:(id)host completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  hostCopy = host;
  handlerCopy = handler;
  if ([(QLPreviewCollection *)self _itemViewControllerIsCurrentlyPresentedItemViewController:controllerCopy])
  {
    context = [controllerCopy context];
    item = [context item];

    v13 = [(QLPreviewItemStore *)self->_itemStore indexOfPreviewItem:item];
    v14 = MEMORY[0x277D43EF8];
    v15 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      uuid = [item uuid];
      v25 = 138412802;
      v26 = hostCopy;
      v27 = 2048;
      v28 = v13;
      v29 = 2112;
      v30 = uuid;
      _os_log_impl(&dword_23A714000, v16, OS_LOG_TYPE_INFO, "Forwarding message %@ to item at index: %lu UUID: %@ #PreviewCollection", &v25, 0x20u);
    }

    stateManager = [(QLPreviewCollection *)self stateManager];
    uuid2 = [item uuid];
    [stateManager forwardMessage:hostCopy toItemAtIndex:v13 withUUID:uuid2 completionHandler:handlerCopy];

    handlerCopy = stateManager;
  }

  else
  {
    v20 = MEMORY[0x277D43EF8];
    v21 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = v21;
      currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
      v25 = 138412546;
      v26 = controllerCopy;
      v27 = 2112;
      v28 = currentPreviewItemViewController;
      _os_log_impl(&dword_23A714000, v22, OS_LOG_TYPE_ERROR, "Could not forward message to host because preview controller (%@) is not the current preview controller (%@) #PreviewCollection", &v25, 0x16u);
    }

    item = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D43FD0] code:0 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, item);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)itemPresenterViewControllerShouldForceAutodownloadFile:(id)file
{
  fileCopy = file;
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];

  return currentPreviewItemViewController == fileCopy && self->_appearanceActions != 0;
}

- (void)setCurrentItemViewControllerIsPerformingFocusedAction:(BOOL)action
{
  self->_currentItemViewControllerIsPerformingFocusedAction = action;
  [(QLPreviewCollection *)self _updateCanChangeCurrentPage];

  [(QLPreviewCollection *)self _updateCanDismissWithGesture];
}

- (void)setIsEditing:(BOOL)editing
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isEditing = editing;
  [(QLPreviewCollection *)obj _updateCanChangeCurrentPage];
  [(QLPreviewCollection *)obj _updateCanDismissWithGesture];
  objc_sync_exit(obj);
}

- (void)setIsTransitioningPage:(BOOL)page
{
  pageCopy = page;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_isTransitioningPage != pageCopy)
  {
    obj->_isTransitioningPage = pageCopy;
    [(QLPreviewCollection *)obj _updateCanChangeCurrentPage];
  }

  objc_sync_exit(obj);
}

- (void)_updateCanChangeCurrentPage
{
  stateManager = [(QLPreviewCollection *)self stateManager];
  v4 = !self->_isEditing && !self->_isTransitioningPage;
  v5 = stateManager;
  [stateManager setCanChangeCurrentPage:v4];
}

- (void)_updateCanDismissWithGesture
{
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  canSwipeToDismiss = [currentPreviewItemViewController canSwipeToDismiss];

  currentPreviewItemViewController2 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  canPinchToDismiss = [currentPreviewItemViewController2 canPinchToDismiss];

  stateManager = [(QLPreviewCollection *)self stateManager];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    stateManager2 = [(QLPreviewCollection *)self stateManager];
    [stateManager2 setCanDismissWithGesture:(canSwipeToDismiss | canPinchToDismiss) & ~self->_isEditing & 1];
  }
}

- (void)_updateEnableChangingPageUsingGestures
{
  v3 = !self->_isEditing && !self->_currentItemViewControllerIsPerformingFocusedAction;
  [(UISwipeGestureRecognizer *)self->_pageSwipeGesture setEnabled:v3];
  [(UIPanGestureRecognizer *)self->_pagePanGesture setEnabled:v3];
  pageViewController = [(QLPreviewCollection *)self pageViewController];
  scrollView = [pageViewController scrollView];
  [scrollView setScrollEnabled:v3];
}

- (id)_sandboxExtensionForEditedFileAtURL:(id)l
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  path = [lCopy path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  [stringByDeletingLastPathComponent fileSystemRepresentation];

  v6 = *MEMORY[0x277D861C0];
  v7 = sandbox_extension_issue_file();
  if (v7)
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:strlen(v7) + 1];
  }

  else
  {
    v9 = MEMORY[0x277D43EF8];
    v10 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = lCopy;
      _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_ERROR, "QLPreviewCollection could not provide a sandbox extension for file at URL: %@ #PreviewCollection", &v13, 0xCu);
    }

    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_itemViewControllerIsCurrentlyPresentedItemViewController:(id)controller
{
  presentingDelegate = [controller presentingDelegate];
  itemPresenterViewController = [presentingDelegate itemPresenterViewController];
  currentPreviewItemViewController = [(QLPreviewCollection *)self currentPreviewItemViewController];
  LOBYTE(self) = itemPresenterViewController == currentPreviewItemViewController;

  return self;
}

@end