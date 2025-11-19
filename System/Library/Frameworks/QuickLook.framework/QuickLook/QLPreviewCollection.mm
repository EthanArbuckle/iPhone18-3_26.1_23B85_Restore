@interface QLPreviewCollection
+ (id)previewCollectionWithClassName:(id)a3;
+ (void)previewCollectionUsingRemoteViewController:(BOOL)a3 completionHandler:(id)a4;
- (BOOL)_isBeingDismissed;
- (BOOL)_isBeingPresented;
- (BOOL)_itemViewControllerIsCurrentlyPresentedItemViewController:(id)a3;
- (BOOL)_toggleFullscreenIfPossible;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isFirstResponderKeyInput;
- (BOOL)isFirstResponderTextEntry;
- (BOOL)itemPresenterViewControllerShouldForceAutodownloadFile:(id)a3;
- (BOOL)pinchDismissGestureInProgress;
- (BOOL)transitionInProgress;
- (NSString)hostApplicationBundleIdentifier;
- (NSString)parentApplicationDisplayIdentifier;
- (QLItemViewController)currentPreviewItemViewController;
- (QLPreviewCollection)init;
- (id)_defaultKeyCommands;
- (id)_sandboxExtensionForEditedFileAtURL:(id)a3;
- (id)accessoryView;
- (id)gestureTracker;
- (id)pageViewController:(id)a3 viewControllerAtIndex:(unint64_t)a4;
- (unint64_t)currentPageIndex;
- (void)_cleanAccessoryViewContainer;
- (void)_installGestures;
- (void)_notifyHostPreviewCollectionIsReadyForInvalidationIfNeeded;
- (void)_updateAccessoryViewWithPreviewItemViewController:(id)a3;
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
- (void)completeTransition:(BOOL)a3 withDuration:(double)a4;
- (void)configureWithNumberOfItems:(int64_t)a3 currentPreviewItemIndex:(unint64_t)a4 itemProvider:(id)a5 stateManager:(id)a6 fullScreen:(BOOL)a7;
- (void)displayBarsIfNeededForDestinationViewController:(id)a3;
- (void)expandContentOfPreviewItemViewController:(id)a3 unarchivedItemsURL:(id)a4;
- (void)forwardKeyPressToHostIfNeeded:(id)a3 serviceCommands:(id)a4;
- (void)forwardPressesToHostIfNeeded:(id)a3;
- (void)hostViewControllerBackgroundColorChanged:(id)a3;
- (void)keyCommandWasPerformed:(id)a3;
- (void)keyCommandsWithCompletionHandler:(id)a3;
- (void)loadView;
- (void)notifyFirstTimeAppearanceWithActions:(unint64_t)a3;
- (void)notifyStateRestorationUserInfo:(id)a3;
- (void)pageViewController:(id)a3 isTransitioningFromPage:(id)a4 withIndex:(unint64_t)a5 toPage:(id)a6 withIndex:(unint64_t)a7 withProgress:(double)a8;
- (void)pageViewController:(id)a3 willBeginInteractiveTransitionFromPage:(id)a4 withIndex:(unint64_t)a5 toPage:(id)a6 withIndex:(unint64_t)a7;
- (void)prepareForActionSheetPresentationWithCompletionHandler:(id)a3;
- (void)preparePreviewCollectionForInvalidationWithCompletionHandler:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)previewItemDisplayState:(id)a3 wasAppliedToItemAtIndex:(unint64_t)a4;
- (void)previewItemViewController:(id)a3 didFailWithError:(id)a4;
- (void)previewItemViewController:(id)a3 requestsTemporaryEditDirectoryWithCompletionHandler:(id)a4;
- (void)previewItemViewController:(id)a3 wantsToForwardMessageToHost:(id)a4 completionHandler:(id)a5;
- (void)previewItemViewController:(id)a3 wantsToOpenURL:(id)a4;
- (void)previewItemViewController:(id)a3 wantsToShowShareSheetWithPopoverTracker:(id)a4 customSharedURL:(id)a5 dismissCompletion:(id)a6;
- (void)previewItemViewController:(id)a3 wantsToUpdatePreviewItemDisplayState:(id)a4;
- (void)previewItemViewController:(id)a3 wantsToUpdateStateRestorationWithUserInfo:(id)a4;
- (void)previewItemViewControllerDidAcquireLock:(id)a3;
- (void)previewItemViewControllerDidChangeCurrentPreviewController:(id)a3;
- (void)previewItemViewControllerDidEditCopyOfPreviewItem:(id)a3 editedCopy:(id)a4 completionHandler:(id)a5;
- (void)previewItemViewControllerDidHandOverLock:(id)a3;
- (void)previewItemViewControllerDidUpdateContentFrame:(id)a3;
- (void)previewItemViewControllerWantsToDismissQuickLook:(id)a3;
- (void)previewItemViewControllerWantsToShowNoInternetConnectivityAlert:(id)a3;
- (void)previewItemViewControllerWantsToShowShareSheet:(id)a3;
- (void)previewItemViewControllerWantsUpdateKeyCommands:(id)a3;
- (void)removeStandaloneViewController;
- (void)rotationOrPinchGestureRecognized:(id)a3;
- (void)saveCurrentPreviewEditsSynchronously:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)saveIntoPhotoLibraryMediaWithURLWrapper:(id)a3 previewItemType:(unint64_t)a4 completionHandler:(id)a5;
- (void)setAppearance:(id)a3 animated:(BOOL)a4;
- (void)setCurrentItemViewControllerIsPerformingFocusedAction:(BOOL)a3;
- (void)setFullScreen:(BOOL)a3 forceUpdate:(BOOL)a4;
- (void)setIsContentManaged:(BOOL)a3;
- (void)setIsEditing:(BOOL)a3;
- (void)setIsTransitioningPage:(BOOL)a3;
- (void)setPreviewItemDisplayState:(id)a3 onItemAtIndex:(unint64_t)a4;
- (void)setScreenEdgePanWidth:(double)a3;
- (void)setStandaloneViewControllerIfNeeded;
- (void)shouldDisplayLockActivityWithCompletionHandler:(id)a3;
- (void)slideToDismissGestureRecognized:(id)a3;
- (void)startNonInteractiveTransitionPresenting:(BOOL)a3;
- (void)startTransitionWithSourceViewProvider:(id)a3 transitionController:(id)a4 presenting:(BOOL)a5 useInteractiveTransition:(BOOL)a6 completionHandler:(id)a7;
- (void)toolbarButtonPressedWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)toolbarButtonsForTraitCollection:(id)a3 withCompletionHandler:(id)a4;
- (void)updateCurrentPreviewConfiguration;
- (void)updateTransitionWithProgress:(double)a3;
@end

@implementation QLPreviewCollection

- (void)updateTransitionWithProgress:(double)a3
{
  v4 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  v5 = [v4 transitioningView];

  v6 = [(QLPreviewCollection *)self gestureTracker];
  [v6 trackedCenter];
  [v5 setCenter:?];

  v7 = [v5 layer];
  v8 = [(QLPreviewCollection *)self gestureTracker];
  [v8 anchorPoint];
  [v7 setAnchorPoint:?];

  v9 = [(QLPreviewCollection *)self gestureTracker];
  v10 = v9;
  if (v9)
  {
    [v9 trackedTransform];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  [v5 setTransform:v11];
}

- (void)completeTransition:(BOOL)a3 withDuration:(double)a4
{
  v7 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  v8 = [v7 transitioningView];

  v9 = [(QLPreviewCollection *)self view];
  v10 = [(QLPreviewCollection *)self gestureTracker];
  [v10 trackedVelocity];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [(QLPreviewCollection *)self gestureTracker];
  [v19 finalAnimationSpringDamping];
  v21 = v20;

  [v8 QL_setAnchorPointAndUpdatePosition:{0.5, 0.5}];
  if (a3)
  {
    [(QLPreviewCollection *)self _setUpTransitionDriverForPresenting:0 duration:a4];
    v22 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      [v24 transitionWillFinish:0 didComplete:1];
    }

    v25 = [(QLPreviewCollection *)self transitionDriver];
    [v25 animateTransition];
  }

  else
  {
    v43 = v16;
    v44 = v14;
    v45 = v12;
    [v9 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    v35 = objc_opt_respondsToSelector();

    if (v35)
    {
      v36 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      [v36 transitionWillFinish:0 didComplete:0];
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
    [v37 qlph_animateView:v8 toCenter:v46 bounds:0 transform:v47 withDuration:MidX delay:MidY usingSpringWithDamping:v40 initialVelocity:v41 options:v31 completion:{v33, a4, 0.0, v21, v45, v44, v43, v18}];
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

- (void)startNonInteractiveTransitionPresenting:(BOOL)a3
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
  v3 = [(QLPreviewCollection *)self swipeDownTracker];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(QLPreviewCollection *)self pinchRotationTracker];
  }

  v6 = v5;

  return v6;
}

- (void)rotationOrPinchGestureRecognized:(id)a3
{
  v4 = a3;
  v5 = [(QLPreviewCollection *)self view];
  v6 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  v7 = [v6 transitioningView];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(QLPreviewCollection *)self pageViewController];
    v9 = [v10 view];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = v4;
  v13 = [v12 state];
  if ((v13 - 3) >= 3)
  {
    if (v13 == 2)
    {
      v20 = [(QLPreviewCollection *)self pinchRotationTracker];

      if (!v20)
      {
        goto LABEL_27;
      }

      if ([v12 numberOfTouches] < 2)
      {
        goto LABEL_5;
      }

      v21 = [(QLPreviewCollection *)self pinchRotationTracker];
      [v12 locationInView:v5];
      [v21 trackGestureLocation:?];

      v22 = [(QLPreviewCollection *)self pinchRotationTracker];
      if (isKindOfClass)
      {
        [v12 rotation];
        [v22 trackRotation:?];
      }

      else
      {
        [v12 scale];
        [v22 trackScale:?];
      }

      v44 = [(QLPreviewCollection *)self pinchRotationTracker];
      [v44 dismissalProgress];
      v46 = v45;

      [(QLPreviewCollection *)self updateTransitionWithProgress:v46];
      v19 = [(QLPreviewCollection *)self transitionController];
      [v19 updateTransitionWithProgress:v46];
    }

    else
    {
      if (v13 != 1 || (isKindOfClass & 1) != 0)
      {
        goto LABEL_27;
      }

      [v12 velocity];
      if (v15 <= 0.0)
      {
        v23 = [(QLPreviewCollection *)self pinchRotationTracker];

        if (!v23)
        {
          v24 = objc_opt_new();
          [(QLPreviewCollection *)self setPinchRotationTracker:v24];

          v25 = [(QLPreviewCollection *)self pinchRotationTracker];
          [v25 setMinimumZoomForDismissal:0.9];

          v26 = [(QLPreviewCollection *)self pinchRotationTracker];
          [v26 setTargetZoom:0.1];

          [v12 locationInView:v9];
          v28 = v27;
          v30 = v29;
          v31 = [(QLPreviewCollection *)self pinchRotationTracker];
          [v9 center];
          v33 = v32;
          v35 = v34;
          [v9 bounds];
          v37 = v36;
          v39 = v38;
          v41 = v40;
          v43 = v42;
          if (v9)
          {
            [v9 transform];
          }

          else
          {
            v51 = 0u;
            v52 = 0u;
            v50 = 0u;
          }

          [v31 startTrackingCenter:&v50 bounds:v33 transform:v35 withInitialGestureLocation:{v37, v39, v41, v43, v28, v30}];
        }

        v47 = [(QLPreviewCollection *)self currentPreviewItemViewController:v50];
        v48 = objc_opt_respondsToSelector();

        if (v48)
        {
          v49 = [(QLPreviewCollection *)self currentPreviewItemViewController];
          [v49 transitionDidStart:0];
        }

        _UIUpdateRequestActivate();
        v19 = [(QLPreviewCollection *)self stateManager];
        [v19 beginInteractiveTransition];
      }

      else
      {
        v16 = [(QLPreviewCollection *)self pinchGesture];
        [v16 setEnabled:0];

        v17 = [(QLPreviewCollection *)self rotationGesture];
        [v17 setEnabled:0];

        v18 = [(QLPreviewCollection *)self pinchGesture];
        [v18 setEnabled:1];

        v19 = [(QLPreviewCollection *)self rotationGesture];
        [v19 setEnabled:1];
      }
    }

    goto LABEL_27;
  }

LABEL_5:
  _UIUpdateRequestDeactivate();
  v14 = [(QLPreviewCollection *)self pinchRotationTracker];

  if (v14)
  {
    [(QLPreviewCollection *)self triggerInteractiveTransitionAnimationIfNeeded];
  }

LABEL_27:
}

- (void)slideToDismissGestureRecognized:(id)a3
{
  v4 = a3;
  v5 = [(QLPreviewCollection *)self view];
  v6 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  v7 = [v6 transitioningView];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(QLPreviewCollection *)self pageViewController];
    v9 = [v10 view];
  }

  v11 = [v4 state];
  if ((v11 - 3) >= 3)
  {
    if (v11 == 2)
    {
      v35 = [(QLPreviewCollection *)self swipeDownTracker];

      if (!v35)
      {
        goto LABEL_18;
      }

      [v4 translationInView:v5];
      v37 = v36;
      v39 = v38;
      [v4 velocityInView:v5];
      v41 = v40;
      v43 = v42;
      v44 = [(QLPreviewCollection *)self swipeDownTracker];
      [v44 trackGestureTranslation:v37 velocity:{v39, v41, v43}];

      v45 = [(QLPreviewCollection *)self swipeDownTracker];
      [v45 dismissalProgress];
      v47 = v46;

      [(QLPreviewCollection *)self updateTransitionWithProgress:v47];
      v48 = [(QLPreviewCollection *)self transitionController];
      [v48 updateTransitionWithProgress:v47];
    }

    else
    {
      if (v11 != 1)
      {
        goto LABEL_18;
      }

      [v4 locationInView:v5];
      v14 = v13;
      v16 = v15;
      [v4 translationInView:v5];
      v18 = v14 - v17;
      v20 = v16 - v19;
      v21 = objc_opt_new();
      [(QLPreviewCollection *)self setSwipeDownTracker:v21];

      v22 = [(QLPreviewCollection *)self swipeDownTracker];
      [v9 center];
      v24 = v23;
      v26 = v25;
      [v9 bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      if (v9)
      {
        [v9 transform];
      }

      else
      {
        memset(v52, 0, sizeof(v52));
      }

      [v22 startTrackingCenter:v52 bounds:v24 transform:v26 withInitialGestureLocation:{v28, v30, v32, v34, v18, v20}];

      v49 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      v50 = objc_opt_respondsToSelector();

      if (v50)
      {
        v51 = [(QLPreviewCollection *)self currentPreviewItemViewController];
        [v51 transitionDidStart:0];
      }

      _UIUpdateRequestActivate();
      v48 = [(QLPreviewCollection *)self stateManager];
      [v48 beginInteractiveTransition];
    }

    goto LABEL_18;
  }

  _UIUpdateRequestDeactivate();
  v12 = [(QLPreviewCollection *)self swipeDownTracker];

  if (v12)
  {
    [(QLPreviewCollection *)self triggerInteractiveTransitionAnimationIfNeeded];
  }

LABEL_18:
}

+ (id)previewCollectionWithClassName:(id)a3
{
  NSClassFromString(a3);
  v3 = objc_opt_new();

  return v3;
}

+ (void)previewCollectionUsingRemoteViewController:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = v5;
  if (v4)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __84__QLPreviewCollection_previewCollectionUsingRemoteViewController_completionHandler___block_invoke;
    v9[3] = &unk_278B59018;
    v10 = v5;
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
    v6 = [(QLPreviewCollection *)v2 pageViewController];
    [v6 setDelegate:v2];

    v7 = [(QLPreviewCollection *)v2 pageViewController];
    [v7 setIndexedDataSource:v2];

    v8 = [(QLPreviewCollection *)v2 pageViewController];
    [v8 setParallaxIntensity:0.15];

    v9 = [(QLPreviewCollection *)v2 pageViewController];
    [(QLPreviewCollection *)v2 addChildViewController:v9];

    v10 = [(QLPreviewCollection *)v2 view];
    v11 = [(QLPreviewCollection *)v2 pageViewController];
    v12 = [v11 view];
    [v10 addSubview:v12];

    v13 = [(QLPreviewCollection *)v2 pageViewController];
    [v13 didMoveToParentViewController:v2];

    v14 = [(QLPreviewCollection *)v2 pageViewController];
    v15 = [v14 view];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(QLPreviewCollection *)v2 view];
    v17 = MEMORY[0x277CCAAD0];
    v37 = @"pageViewController";
    v18 = [(QLPreviewCollection *)v2 pageViewController];
    v19 = [v18 view];
    v38 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v21 = [v17 constraintsWithVisualFormat:@"H:|[pageViewController]|" options:0 metrics:0 views:v20];
    [v16 addConstraints:v21];

    v22 = [(QLPreviewCollection *)v2 view];
    v23 = MEMORY[0x277CCAAD0];
    v35 = @"pageViewController";
    v24 = [(QLPreviewCollection *)v2 pageViewController];
    v25 = [v24 view];
    v36 = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v27 = [v23 constraintsWithVisualFormat:@"V:|[pageViewController]|" options:0 metrics:0 views:v26];
    [v22 addConstraints:v27];

    v28 = objc_opt_new();
    itemStore = v2->_itemStore;
    v2->_itemStore = v28;

    [(QLPreviewCollection *)v2 _installGestures];
    [(QLPreviewCollection *)v2 setAutomaticallyAdjustsScrollViewInsets:0];
    v30 = [MEMORY[0x277CCAD78] UUID];
    [(QLPreviewCollection *)v2 setUuid:v30];

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
  v3 = [(QLPreviewCollection *)self view];
  v4 = [v3 layer];
  [v4 setHitTestsAsOpaque:1];
}

- (void)hostViewControllerBackgroundColorChanged:(id)a3
{
  v4 = a3;
  v3 = v4;
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
  v3 = [(QLPreviewCollection *)self stateManager];
  [v3 updateKeyCommands];

  [(QLPreviewCollection *)self _updateOverlay:1];
  v9 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  [(QLPreviewCollection *)self _updateFullscreenBackgroundColor];
  [(QLPreviewCollection *)self _updateFullscreen];
  [(QLPreviewCollection *)self _updateAccessoryViewWithPreviewItemViewController:v9];
  [(QLPreviewCollection *)self _updateWhitePointAdaptivityStyle];
  [(QLPreviewCollection *)self _updatePrinter];
  [(QLPreviewCollection *)self _updateTitleFromController];
  [(QLPreviewCollection *)self _updatePreferredContentSize];
  v4 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  v5 = [v4 scrollView];

  if (v5)
  {
    v6 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    v7 = [v6 scrollView];
    v8 = [v7 pinchGestureRecognizer];
    [v8 requireGestureRecognizerToFail:self->_pinchGesture];
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

- (void)setFullScreen:(BOOL)a3 forceUpdate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(QLAppearance *)self->_appearance presentationMode]!= 4 && [(QLAppearance *)self->_appearance presentationMode]!= 3 && [(QLAppearance *)self->_appearance presentationMode]!= 5)
  {
    v7 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    v8 = [v7 canEnterFullScreen];

    v9 = v8 & v5;
    if (self->_fullScreen != v9 || v4)
    {
      self->_fullScreen = v9;
      v11 = [(QLPreviewCollection *)self stateManager];
      [v11 setFullScreen:v9];

      v12 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      [v12 previewBecameFullScreen:v9 animated:1];

      v13 = [(QLPreviewCollection *)self stateManager];
      [v13 updateKeyCommands];
    }
  }
}

- (void)setScreenEdgePanWidth:(double)a3
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
    v8 = a3;
    _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_INFO, "QLPreviewCollection's edge pan gesture region width has been set to %f #PreviewCollection", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (QLItemViewController)currentPreviewItemViewController
{
  v3 = [(QLPreviewCollection *)self standaloneItemViewController];

  if (v3)
  {
    v4 = [(QLPreviewCollection *)self standaloneItemViewController];
  }

  else
  {
    v5 = [(QLPreviewCollection *)self pageViewController];
    v4 = [v5 currentPage];
  }

  return v4;
}

- (unint64_t)currentPageIndex
{
  v3 = [(QLPreviewCollection *)self standaloneItemViewController];

  if (v3)
  {

    return [(QLPreviewCollection *)self standaloneItemIndex];
  }

  else
  {
    v5 = [(QLPreviewCollection *)self pageViewController];
    v6 = [v5 currentPageIndex];

    return v6;
  }
}

- (void)preparePreviewCollectionForInvalidationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v3 = v4;
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

- (void)configureWithNumberOfItems:(int64_t)a3 currentPreviewItemIndex:(unint64_t)a4 itemProvider:(id)a5 stateManager:(id)a6 fullScreen:(BOOL)a7
{
  v8 = a5;
  v11 = a6;
  v9 = v11;
  v10 = v8;
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

- (void)setAppearance:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  if ([(QLPreviewCollection *)self _isBeingPresented])
  {
    UIAccessibilityIsReduceMotionEnabled();
  }

  v6 = v5;
  QLRunInMainThread();
}

void __46__QLPreviewCollection_setAppearance_animated___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1064), *(a1 + 40));
  v2 = [*(a1 + 32) currentPreviewItemViewController];
  [v2 setAppearance:*(a1 + 40) animated:*(a1 + 48)];
}

- (void)notifyFirstTimeAppearanceWithActions:(unint64_t)a3
{
  objc_initWeak(&location, self);
  objc_copyWeak(v4, &location);
  v4[1] = a3;
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
  v3 = [(QLPreviewCollection *)self standaloneItemViewController];

  if (!v3)
  {
    v12 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    v4 = [v12 context];
    v5 = [v4 previewItemType];

    if (v5 == 12)
    {
      v6 = [(QLPreviewCollection *)self pageViewController];
      [v6 setIndexedDataSource:0];

      v7 = [(QLPreviewCollection *)self pageViewController];
      [v7 clearInternalCache];

      v8 = [(QLPreviewCollection *)self pageViewController];
      [v8 setCurrentPageIndex:0];

      v9 = [v12 view];
      [v9 removeFromSuperview];

      [v12 willMoveToParentViewController:0];
      [v12 removeFromParentViewController];
      v10 = [(QLPreviewCollection *)self view];
      v11 = [v12 view];
      [v10 addSubview:v11];

      [(QLPreviewCollection *)self addChildViewController:v12];
      [v12 didMoveToParentViewController:self];
      [(QLPreviewCollection *)self setStandaloneItemViewController:v12];
    }
  }
}

- (void)removeStandaloneViewController
{
  v3 = [(QLPreviewCollection *)self standaloneItemViewController];
  v4 = [v3 view];
  [v4 removeFromSuperview];

  v5 = [(QLPreviewCollection *)self standaloneItemViewController];
  [v5 willMoveToParentViewController:0];

  v6 = [(QLPreviewCollection *)self standaloneItemViewController];
  [v6 removeFromParentViewController];

  [(QLPreviewCollection *)self setStandaloneItemViewController:0];
  v7 = [(QLPreviewCollection *)self pageViewController];
  [v7 setIndexedDataSource:self];

  v8 = [(QLPreviewCollection *)self pageViewController];
  [v8 clearInternalCache];
}

- (void)notifyStateRestorationUserInfo:(id)a3
{
  v4 = a3;
  v3 = v4;
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

- (void)toolbarButtonsForTraitCollection:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v5;
  v7 = v8;
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

- (void)toolbarButtonPressedWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
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

- (void)saveCurrentPreviewEditsSynchronously:(BOOL)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  v4 = v5;
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

- (void)prepareForActionSheetPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v3 = v4;
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

- (void)shouldDisplayLockActivityWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  v4[2](v4, [v5 canBeLocked]);
}

void __48__QLPreviewCollection_requestLockForCurrentItem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) currentPreviewItemViewController];
  [v1 requestLockForCurrentItem];
}

- (void)saveIntoPhotoLibraryMediaWithURLWrapper:(id)a3 previewItemType:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  gotLoadHelper_x20__OBJC_CLASS___PHPhotoLibrary(v10);
  v11 = [*(v5 + 2376) systemPhotoLibraryURL];
  v12 = [objc_alloc(*(v5 + 2376)) initWithPhotoLibraryURL:v11];
  v13 = [v8 url];
  v14 = [v13 startAccessingSecurityScopedResource];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __97__QLPreviewCollection_saveIntoPhotoLibraryMediaWithURLWrapper_previewItemType_completionHandler___block_invoke;
  v22[3] = &unk_278B57318;
  v23 = v8;
  v24 = a4;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __97__QLPreviewCollection_saveIntoPhotoLibraryMediaWithURLWrapper_previewItemType_completionHandler___block_invoke_2;
  v18[3] = &unk_278B590B8;
  v21 = v14;
  v19 = v13;
  v20 = v9;
  v15 = v9;
  v16 = v13;
  v17 = v8;
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

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(QLPreviewCollection *)self forwardPressesToHostIfNeeded:v7];
  v8.receiver = self;
  v8.super_class = QLPreviewCollection;
  [(QLPreviewCollection *)&v8 pressesBegan:v7 withEvent:v6];
}

- (void)forwardPressesToHostIfNeeded:(id)a3
{
  v4 = a3;
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
      v10 = v4;
      v11 = self;
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
  v2 = [(QLPreviewCollection *)self firstResponder];
  v3 = [v2 conformsToProtocol:&unk_284DCEEA8];

  return v3;
}

- (BOOL)isFirstResponderKeyInput
{
  v2 = [MEMORY[0x277D75658] activeKeyboard];
  v3 = [v2 targetWindow];
  v4 = [v3 firstResponder];

  LOBYTE(v2) = [v4 conformsToProtocol:&unk_284DCEEA8];
  return v2;
}

- (void)forwardKeyPressToHostIfNeeded:(id)a3 serviceCommands:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v37 = v6;
  v8 = [v6 charactersIgnoringModifiers];
  if ([v8 length])
  {
    v35 = self;
    v36 = v7;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          v15 = [v37 modifierFlags];
          v16 = [v14 keyCommand];
          v17 = [v16 input];
          if ([v8 isEqualToString:v17])
          {
            v18 = v9;
            v19 = [v16 modifierFlags];

            v20 = v15 == v19;
            v9 = v18;
            if (v20)
            {
              v25 = [v16 modifierFlags];
              v26 = MEMORY[0x277D43EF8];
              v27 = *MEMORY[0x277D43EF8];
              if (v25)
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
                  v30 = [v16 description];
                  *buf = 138412546;
                  v43 = v29;
                  v44 = 2112;
                  v45 = v30;
                  _os_log_impl(&dword_23A714000, v28, OS_LOG_TYPE_INFO, "Service ignores key press (%@) with key command (%@) since keycommands with modifiers is already sent to and handled by the host #Remote", buf, 0x16u);

                  v9 = v18;
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
                  v33 = [v16 description];
                  *buf = 138412546;
                  v43 = v32;
                  v44 = 2112;
                  v45 = v33;
                  _os_log_impl(&dword_23A714000, v31, OS_LOG_TYPE_INFO, "Service will directly handle key press (%@) with key command (%@) since it has no modifier #Remote", buf, 0x16u);

                  v9 = v18;
                }

                [(QLPreviewCollection *)v35 keyCommandWasPerformed:v14];
              }

              goto LABEL_29;
            }
          }

          else
          {
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v38 objects:v46 count:16];
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

    v9 = [(QLPreviewCollection *)v35 stateManager];
    v16 = [v37 charactersIgnoringModifiers];
    [v9 handleKeyPressWithInput:v16 modifierFlags:{objc_msgSend(v37, "modifierFlags")}];
LABEL_29:
    v7 = v36;
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)keyCommandsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v3 = v4;
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
  v4 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  if ([v4 canEnterFullScreen])
  {
    v5 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    v6 = [v5 canToggleFullScreen];

    if (!v6)
    {
      goto LABEL_5;
    }

    [(QLPreviewCollection *)self fullScreen];
    v4 = QLLocalizedString();
    v7 = [MEMORY[0x277D75650] keyCommandWithInput:@"f" modifierFlags:1310720 action:sel__toggleFullscreenIfPossible];
    [v7 setDiscoverabilityTitle:v4];
    v8 = [MEMORY[0x277D43F80] keyCommandWithKeyCommand:v7 identifier:5];
    [v3 addObject:v8];
  }

LABEL_5:

  return v3;
}

- (void)keyCommandWasPerformed:(id)a3
{
  v4 = a3;
  v3 = v4;
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

- (void)startTransitionWithSourceViewProvider:(id)a3 transitionController:(id)a4 presenting:(BOOL)a5 useInteractiveTransition:(BOOL)a6 completionHandler:(id)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a7;
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

  v21 = v9;
  v17 = v11;
  v18 = v9;
  v19 = v10;
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
  v2 = [(QLPreviewCollection *)self transitionController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)pinchDismissGestureInProgress
{
  v2 = [(QLPreviewCollection *)self pinchRotationTracker];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_isBeingDismissed
{
  v3 = [(QLPreviewCollection *)self transitionDriver];
  if (v3)
  {
    v4 = [(QLPreviewCollection *)self transitionDriver];
    v5 = [v4 presenting] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_isBeingPresented
{
  v3 = [(QLPreviewCollection *)self transitionDriver];
  if (v3)
  {
    v4 = [(QLPreviewCollection *)self transitionDriver];
    v5 = [v4 presenting];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)parentApplicationDisplayIdentifier
{
  v3 = [(QLPreviewCollection *)self hostApplicationBundleIdentifier];
  if ([v3 hasPrefix:@"com.apple."] && -[NSString hasPrefix:](self->_overrideParentApplicationDisplayIdentifier, "hasPrefix:", @"com.apple."))
  {
    v4 = self->_overrideParentApplicationDisplayIdentifier;

    v3 = v4;
  }

  return v3;
}

- (void)setIsContentManaged:(BOOL)a3
{
  self->_isContentManaged = a3;
  if (a3)
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

- (void)setPreviewItemDisplayState:(id)a3 onItemAtIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  [v6 updatePreviewItemDisplayState:v5];
}

- (void)_updatePreferredContentSize
{
  v4 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  if (([v4 isLoading] & 1) == 0)
  {
    v3 = [(QLPreviewCollection *)self stateManager];
    [v4 preferredContentSize];
    [v3 updatePreferredContentSize:?];
  }
}

- (void)_updateFullscreenBackgroundColor
{
  v5 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  if (([v5 isLoading] & 1) == 0 && objc_msgSend(v5, "isLoaded"))
  {
    v3 = [(QLPreviewCollection *)self stateManager];
    v4 = [v5 fullscreenBackgroundColor];
    [v3 setFullscreenBackgroundColor:v4];
  }
}

- (void)_updateFullscreen
{
  v5 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  if (![v5 isLoading] || (objc_msgSend(v5, "loadingFailed") & 1) != 0 || (objc_msgSend(v5, "context"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "previewItemType"), v3, v4 == 15))
  {
    if (-[QLPreviewCollection fullScreen](self, "fullScreen") && !-[QLPreviewCollection shouldStartFullScreen](self, "shouldStartFullScreen") && ([v5 canEnterFullScreen] & 1) == 0)
    {
      [(QLPreviewCollection *)self setFullScreen:0];
    }
  }
}

- (void)_updateOverlayVisibility
{
  v5 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  v3 = [(QLPreviewCollection *)self stateManager];
  [v3 setToolbarCanBeVisible:{objc_msgSend(v5, "canShowToolBar")}];

  v4 = [(QLPreviewCollection *)self stateManager];
  [v4 setNavBarCanBeVisible:{objc_msgSend(v5, "canShowNavBar")}];
}

- (void)_updateTitleFromController
{
  v5 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  if (([v5 isLoading] & 1) == 0)
  {
    v3 = [(QLPreviewCollection *)self stateManager];
    v4 = [v5 title];
    [v3 updateTitle:v4];
  }
}

- (void)_updatePrinter
{
  v6 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  if ([v6 isLoading])
  {
    v3 = [(QLPreviewCollection *)self stateManager];
    [v3 setPrinter:0];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [v6 printer];
    }

    else
    {
      v3 = 0;
    }

    v4 = [(QLPreviewCollection *)self stateManager];
    [v4 setPrinter:0];

    if (v3)
    {
      v5 = [(QLPreviewCollection *)self stateManager];
      [v5 setPrinter:v3];
    }
  }
}

- (void)_cleanAccessoryViewContainer
{
  v4 = [(QLPreviewCollection *)self accessoryView];
  v2 = [v4 subviews];
  v3 = [v2 firstObject];

  [v3 removeFromSuperview];
}

- (void)_updateAccessoryViewWithPreviewItemViewController:(id)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 accessoryView];
  v5 = [(QLPreviewCollection *)self accessoryView];
  v6 = [v5 subviews];
  v7 = [v6 lastObject];

  if (v7 != v4)
  {
    if (v7)
    {
      v8 = MEMORY[0x277D75D18];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __73__QLPreviewCollection__updateAccessoryViewWithPreviewItemViewController___block_invoke;
      v29[3] = &unk_278B57190;
      v30 = v7;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __73__QLPreviewCollection__updateAccessoryViewWithPreviewItemViewController___block_invoke_2;
      v27[3] = &unk_278B571B8;
      v28 = v30;
      [v8 animateWithDuration:v29 animations:v27 completion:0.2];
    }

    if (v4)
    {
      [v5 addSubview:v4];
      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      v9 = MEMORY[0x277CCAAD0];
      v33 = @"view";
      v34[0] = v4;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v11 = [v9 constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:0 views:v10];
      [v5 addConstraints:v11];

      v12 = MEMORY[0x277CCAAD0];
      v31 = @"view";
      v32 = v4;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v14 = [v12 constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v13];
      [v5 addConstraints:v14];

      v15 = MEMORY[0x277D75D18];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __73__QLPreviewCollection__updateAccessoryViewWithPreviewItemViewController___block_invoke_3;
      v25[3] = &unk_278B57190;
      v16 = v4;
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
  [v18 setAccessoryViewVisible:v4 != 0];

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
  v4 = [(QLPreviewCollection *)self stateManager];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    [v4 previewCollectionPrefersWhitePointAdaptivityStyle:{objc_msgSend(v3, "preferredWhitePointAdaptivityStyle")}];
  }
}

- (id)pageViewController:(id)a3 viewControllerAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(QLPreviewItemStore *)self->_itemStore possibleRange];
  if (a4 < v7 || a4 - v7 >= v8)
  {
    v15 = 0;
  }

  else
  {
    v10 = [QLItemPresenterViewController alloc];
    v11 = [(QLPreviewCollection *)self hostApplicationBundleIdentifier];
    v12 = [(QLPreviewCollection *)self parentApplicationDisplayIdentifier];
    v13 = [(QLItemPresenterViewController *)v10 initWithHostApplicationBundleIdentifier:v11 parentApplicationDisplayIdentifier:v12];

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
    v19[1] = a4;
    v15 = v13;
    v18 = v15;
    [(QLPreviewItemStore *)itemStore previewItemAtIndex:a4 withCompletionHandler:v17];

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

- (void)displayBarsIfNeededForDestinationViewController:(id)a3
{
  IsEmpty = a3;
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

- (void)pageViewController:(id)a3 willBeginInteractiveTransitionFromPage:(id)a4 withIndex:(unint64_t)a5 toPage:(id)a6 withIndex:(unint64_t)a7
{
  v10 = a6;
  v9 = a4;
  [(QLPreviewCollection *)self setIsTransitioningPage:1];
  [v10 setAppearance:self->_appearance];
  [v9 previewWillDisappear:1];

  [v10 previewWillAppear:1];
  [v10 previewBecameFullScreen:self->_fullScreen animated:0];
  [(QLPreviewCollection *)self displayBarsIfNeededForDestinationViewController:v10];
}

- (void)pageViewController:(id)a3 isTransitioningFromPage:(id)a4 withIndex:(unint64_t)a5 toPage:(id)a6 withIndex:(unint64_t)a7 withProgress:(double)a8
{
  v11 = 1.0 - a8;
  v12 = a6;
  [a4 previewIsAppearingWithProgress:v11];
  [v12 previewIsAppearingWithProgress:a8];
  [(QLPreviewCollection *)self displayBarsIfNeededForDestinationViewController:v12];
}

- (void)_installGestures
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__tapGestureRecognized];
  [(QLPreviewCollection *)self setTapGesture:v3];

  v4 = [(QLPreviewCollection *)self tapGesture];
  [v4 _setDelaysRecognitionForGreaterTapCounts:1];

  v5 = [(QLPreviewCollection *)self tapGesture];
  [v5 setDelegate:self];

  v6 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_slideToDismissGestureRecognized_];
  [(QLPreviewCollection *)self setSlideGesture:v6];

  v7 = [(QLPreviewCollection *)self slideGesture];
  [v7 setDelegate:self];

  v8 = [(QLPreviewCollection *)self slideGesture];
  [v8 setAllowedScrollTypesMask:2];

  v9 = [(QLPreviewCollection *)self slideGesture];
  [v9 setMaximumNumberOfTouches:1];

  v10 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel_rotationOrPinchGestureRecognized_];
  [(QLPreviewCollection *)self setPinchGesture:v10];

  v11 = [(QLPreviewCollection *)self pinchGesture];
  [v11 setDelegate:self];

  v12 = [objc_alloc(MEMORY[0x277D75938]) initWithTarget:self action:sel_rotationOrPinchGestureRecognized_];
  [(QLPreviewCollection *)self setRotationGesture:v12];

  v13 = [(QLPreviewCollection *)self rotationGesture];
  [v13 setDelegate:self];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v14 = [(QLPreviewCollection *)self pageViewController];
    v15 = [v14 view];
    [v15 addGestureRecognizer:self->_slideGesture];

    v16 = [(QLPreviewCollection *)self pageViewController];
    v17 = [v16 view];
    [v17 addGestureRecognizer:self->_pinchGesture];

    v18 = [(QLPreviewCollection *)self pageViewController];
    v19 = [v18 view];
    [v19 addGestureRecognizer:self->_rotationGesture];
  }

  v20 = [(QLPreviewCollection *)self pageViewController];
  v21 = [v20 view];
  [v21 addGestureRecognizer:self->_tapGesture];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = [(QLPreviewCollection *)self pageViewController];
  v23 = [v22 view];
  v24 = [v23 subviews];
  v25 = [v24 firstObject];
  v26 = [v25 gestureRecognizers];

  v27 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
          objc_enumerationMutation(v26);
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
      v28 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v28);
  }

  v35 = [(QLPreviewCollection *)self pinchGesture];
  v36 = [(QLPreviewCollection *)self slideGesture];
  [v35 requireGestureRecognizerToFail:v36];

  v37 = [(QLPreviewCollection *)self rotationGesture];
  v38 = [(QLPreviewCollection *)self slideGesture];
  [v37 requireGestureRecognizerToFail:v38];

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)_toggleFullscreenIfPossible
{
  v3 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  v4 = [v3 canToggleFullScreen];

  if (v4)
  {
    [(QLPreviewCollection *)self setFullScreen:[(QLPreviewCollection *)self fullScreen]^ 1];
  }

  return v4;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_tapGesture == v6 && (-[QLPreviewCollection currentPreviewItemViewController](self, "currentPreviewItemViewController"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 canClickToToggleFullscreen], v8, (v9 & 1) == 0) && (objc_msgSend(v7, "_isPointerTouch") & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(QLPreviewCollection *)self currentPreviewItemViewController];

    if (v11)
    {
      v12 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      v10 = [v12 shouldAcceptTouch:v7 ofGestureRecognizer:v6];
    }

    else
    {
      v10 = 1;
    }
  }

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  slideGesture = self->_slideGesture;
  if (slideGesture != v4 && self->_rotationGesture != v4 && self->_pinchGesture != v4)
  {
    goto LABEL_14;
  }

  v7 = [(QLPreviewCollection *)self presentedViewController];

  if (!v7)
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
      v8 = 1;
      goto LABEL_32;
    }

    slideGesture = self->_slideGesture;
LABEL_14:
    if (slideGesture == v5)
    {
      v13 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      v12 = [v13 scrollView];

      v14 = self->_slideGesture;
      v15 = [(UIPanGestureRecognizer *)v14 view];
      [(UIPanGestureRecognizer *)v14 velocityInView:v15];
      v17 = v16;
      v19 = v18;

      v20 = fabs(v19) > fabs(v17);
      if (v12)
      {
        [v12 contentOffset];
        if (v21 > 0.0)
        {
          v20 = 0;
        }
      }

      [v12 contentOffset];
      if (v22 <= 0.0)
      {
        [v12 frame];
        v24 = v23;
        [v12 contentSize];
        v26 = v24 >= v25;
        if (v19 >= 0.0)
        {
          v26 = 1;
        }

        v20 &= v26;
      }

      if (self->_allowInteractiveTransitions && (-[QLPreviewCollection currentPreviewItemViewController](self, "currentPreviewItemViewController"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 canSwipeToDismiss] & v20, v27, v28 == 1))
      {
        v29 = [v12 panGestureRecognizer];
        [v29 setEnabled:0];

        v30 = [v12 panGestureRecognizer];
        v8 = 1;
        [v30 setEnabled:1];
      }

      else
      {
        v8 = 0;
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

      v12 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      v8 = [v12 canPinchToDismiss];
    }

    goto LABEL_32;
  }

LABEL_5:
  v8 = 0;
LABEL_32:

  v31 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_slideGesture == v6)
  {
    v8 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    v9 = [v8 scrollView];
    v10 = [v9 panGestureRecognizer];

    if (v10 == v7)
    {
      goto LABEL_14;
    }
  }

  if (self->_pinchGesture == v6)
  {
    v11 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    v12 = [v11 scrollView];
    v13 = [v12 pinchGestureRecognizer];

    if (v13 == v7)
    {
      goto LABEL_14;
    }
  }

  v14 = [(UIPanGestureRecognizer *)v7 view];
  v15 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  v16 = [v15 view];
  v17 = [v14 isDescendantOfView:v16];

  if (v17)
  {
    v18 = [(QLPreviewCollection *)self currentPreviewItemViewController];
    if ([v18 shouldRecognizeGestureRecognizer:v6])
    {
      v19 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      v20 = [v19 gestureRecognizer:v6 shouldRecognizeSimultaneouslyWithGestureRecognizer:v7];

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
  if (slideGesture == v6)
  {
    v24 = self->_verticalPanGesture == v7;
    goto LABEL_18;
  }

  if (self->_tapGesture == v6)
  {
    if (slideGesture != v7 && self->_pinchGesture != v7 && self->_rotationGesture != v7 && self->_pagePanGesture != v7 && self->_pageSwipeGesture != v7)
    {
      objc_opt_class();
      v24 = objc_opt_isKindOfClass() ^ 1;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  rotationGesture = self->_rotationGesture;
  pinchGesture = self->_pinchGesture;
  if ((rotationGesture != v6 || pinchGesture != v7) && (rotationGesture != v7 || pinchGesture != v6))
  {
    if (self->_pageSwipeGesture != v7)
    {
      v24 = self->_pagePanGesture != v7;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_14:
  v24 = 1;
LABEL_18:

  return v24 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  v9 = [v8 gestureRecognizer:v6 shouldRequireFailureOfGestureRecognizer:v7];

  if (v9)
  {
    isKindOfClass = 1;
  }

  else if (self->_tapGesture == v6)
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

- (void)previewItemViewController:(id)a3 wantsToOpenURL:(id)a4
{
  v5 = a4;
  v6 = [(QLPreviewCollection *)self stateManager];
  [v6 openURLIfAllowed:v5];
}

- (void)previewItemViewController:(id)a3 didFailWithError:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    v11 = [v6 contents];
    v16 = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_ERROR, "QLItemViewController (contents: %@) did fail with error: %@. #PreviewCollection", &v16, 0x16u);
  }

  v12 = [v6 presentingDelegate];
  v13 = [v12 itemPresenterViewController];
  v14 = [(QLPreviewCollection *)self currentPreviewItemViewController];

  if (v13 == v14)
  {
    [(QLPreviewCollection *)self updateCurrentPreviewConfiguration];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)previewItemViewControllerWantsToShowShareSheet:(id)a3
{
  v3 = [(QLPreviewCollection *)self stateManager];
  [v3 showShareSheet];
}

- (void)previewItemViewController:(id)a3 wantsToShowShareSheetWithPopoverTracker:(id)a4 customSharedURL:(id)a5 dismissCompletion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(QLPreviewCollection *)self stateManager];
  [v12 showShareSheetWithPopoverTracker:v11 customSharedURL:v10 dismissCompletion:v9];
}

- (void)previewItemViewControllerWantsUpdateKeyCommands:(id)a3
{
  v3 = [(QLPreviewCollection *)self stateManager];
  [v3 updateKeyCommands];
}

- (void)previewItemViewControllerWantsToShowNoInternetConnectivityAlert:(id)a3
{
  v3 = [(QLPreviewCollection *)self stateManager];
  [v3 presentAlertControllerForScenario:0];
}

- (void)previewItemViewController:(id)a3 requestsTemporaryEditDirectoryWithCompletionHandler:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(QLPreviewCollection *)self _itemViewControllerIsCurrentlyPresentedItemViewController:v6])
  {
    v8 = [v6 context];
    v9 = [v8 item];

    v10 = [(QLPreviewItemStore *)self->_itemStore indexOfPreviewItem:v9];
    v11 = [(QLPreviewCollection *)self stateManager];
    [v11 createTemporaryEditDirectoryForItemAtIndex:v10 completionHandler:v7];
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
      v15 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      v18 = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_23A714000, v14, OS_LOG_TYPE_ERROR, "Could not create temporary directory because preview controller (%@) is not the current preview controller (%@) #PreviewCollection", &v18, 0x16u);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D43EF0] code:1 userInfo:0];
    (*(v7 + 2))(v7, 0, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)previewItemViewControllerDidUpdateContentFrame:(id)a3
{
  v7 = a3;
  v4 = [(QLPreviewCollection *)self stateManager];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(QLPreviewCollection *)self stateManager];
    [v7 contentFrame];
    [v6 updateContentFrame:?];
  }
}

- (void)expandContentOfPreviewItemViewController:(id)a3 unarchivedItemsURL:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 context];
  v9 = [v8 item];

  v10 = [v7 presentingDelegate];

  v11 = [v10 itemPresenterViewController];
  v12 = [(QLPreviewCollection *)self currentPreviewItemViewController];

  if (v11 == v12)
  {
    v13 = [(QLPreviewItemStore *)self->_itemStore indexOfPreviewItem:v9];
    v14 = [v6 startAccessingSecurityScopedResource];
    v22 = 0;
    v15 = [MEMORY[0x277CC6438] wrapperWithURL:v6 readonly:1 error:&v22];
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

      if (!v14)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v20 = [(QLPreviewCollection *)self stateManager];
      v21 = [v9 uuid];
      [v20 expandContentOfItemAtIndex:v13 withUUID:v21 unarchivedItemsURLWrapper:v15];

      if (!v14)
      {
        goto LABEL_9;
      }
    }

    [v6 stopAccessingSecurityScopedResource];
LABEL_9:
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)previewItemViewControllerDidEditCopyOfPreviewItem:(id)a3 editedCopy:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  if (!v8)
  {
    v8 = &__block_literal_global_21;
  }

  v15 = v8;
  v9 = a4;
  v10 = a3;
  v11 = [(QLPreviewCollection *)self stateManager];
  itemStore = self->_itemStore;
  v13 = [v10 context];

  v14 = [v13 item];
  [v11 updatePreviewItemAtIndex:-[QLPreviewItemStore indexOfPreviewItem:](itemStore editedCopy:"indexOfPreviewItem:" completionHandler:{v14), v9, v15}];
}

- (void)previewItemViewControllerDidAcquireLock:(id)a3
{
  itemStore = self->_itemStore;
  v5 = [a3 context];
  v6 = [v5 item];
  v7 = [(QLPreviewItemStore *)itemStore indexOfPreviewItem:v6];
  currentItemIndex = self->_currentItemIndex;

  if (v7 == currentItemIndex)
  {
    [(QLPreviewCollection *)self setCurrentItemViewControllerIsPerformingFocusedAction:1];

    [(QLPreviewCollection *)self _updateEnableChangingPageUsingGestures];
  }
}

- (void)previewItemViewControllerDidHandOverLock:(id)a3
{
  [(QLPreviewCollection *)self setCurrentItemViewControllerIsPerformingFocusedAction:0];

  [(QLPreviewCollection *)self _updateEnableChangingPageUsingGestures];
}

- (void)previewItemViewController:(id)a3 wantsToUpdateStateRestorationWithUserInfo:(id)a4
{
  v5 = a4;
  v6 = [(QLPreviewCollection *)self stateManager];
  [v6 updateStateRestorationWithUserInfo:v5];
}

- (void)previewItemViewController:(id)a3 wantsToUpdatePreviewItemDisplayState:(id)a4
{
  v6 = a4;
  v7 = [a3 context];
  v10 = [v7 item];

  v8 = [(QLPreviewItemStore *)self->_itemStore indexOfPreviewItem:v10];
  v9 = [(QLPreviewCollection *)self stateManager];
  [v9 setPreviewItemDisplayState:v6 onItemAtIndex:v8];
}

- (void)previewItemDisplayState:(id)a3 wasAppliedToItemAtIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [(QLPreviewCollection *)self pageViewController];
  v7 = [v6 currentPage];

  [v7 updatePreviewItemDisplayState:v5];
}

- (void)previewItemViewControllerWantsToDismissQuickLook:(id)a3
{
  v3 = [(QLPreviewCollection *)self stateManager];
  [v3 triggerQuickLookDismissal];
}

- (void)previewItemViewControllerDidChangeCurrentPreviewController:(id)a3
{
  if ([(QLPreviewCollection *)self _itemViewControllerIsCurrentlyPresentedItemViewController:a3])
  {

    [(QLPreviewCollection *)self updateCurrentPreviewConfiguration];
  }
}

- (void)previewItemViewController:(id)a3 wantsToForwardMessageToHost:(id)a4 completionHandler:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(QLPreviewCollection *)self _itemViewControllerIsCurrentlyPresentedItemViewController:v8])
  {
    v11 = [v8 context];
    v12 = [v11 item];

    v13 = [(QLPreviewItemStore *)self->_itemStore indexOfPreviewItem:v12];
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
      v17 = [v12 uuid];
      v25 = 138412802;
      v26 = v9;
      v27 = 2048;
      v28 = v13;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_23A714000, v16, OS_LOG_TYPE_INFO, "Forwarding message %@ to item at index: %lu UUID: %@ #PreviewCollection", &v25, 0x20u);
    }

    v18 = [(QLPreviewCollection *)self stateManager];
    v19 = [v12 uuid];
    [v18 forwardMessage:v9 toItemAtIndex:v13 withUUID:v19 completionHandler:v10];

    v10 = v18;
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
      v23 = [(QLPreviewCollection *)self currentPreviewItemViewController];
      v25 = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v23;
      _os_log_impl(&dword_23A714000, v22, OS_LOG_TYPE_ERROR, "Could not forward message to host because preview controller (%@) is not the current preview controller (%@) #PreviewCollection", &v25, 0x16u);
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D43FD0] code:0 userInfo:0];
    (*(v10 + 2))(v10, 0, v12);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)itemPresenterViewControllerShouldForceAutodownloadFile:(id)a3
{
  v4 = a3;
  v5 = [(QLPreviewCollection *)self currentPreviewItemViewController];

  return v5 == v4 && self->_appearanceActions != 0;
}

- (void)setCurrentItemViewControllerIsPerformingFocusedAction:(BOOL)a3
{
  self->_currentItemViewControllerIsPerformingFocusedAction = a3;
  [(QLPreviewCollection *)self _updateCanChangeCurrentPage];

  [(QLPreviewCollection *)self _updateCanDismissWithGesture];
}

- (void)setIsEditing:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isEditing = a3;
  [(QLPreviewCollection *)obj _updateCanChangeCurrentPage];
  [(QLPreviewCollection *)obj _updateCanDismissWithGesture];
  objc_sync_exit(obj);
}

- (void)setIsTransitioningPage:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_isTransitioningPage != v3)
  {
    obj->_isTransitioningPage = v3;
    [(QLPreviewCollection *)obj _updateCanChangeCurrentPage];
  }

  objc_sync_exit(obj);
}

- (void)_updateCanChangeCurrentPage
{
  v3 = [(QLPreviewCollection *)self stateManager];
  v4 = !self->_isEditing && !self->_isTransitioningPage;
  v5 = v3;
  [v3 setCanChangeCurrentPage:v4];
}

- (void)_updateCanDismissWithGesture
{
  v3 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  v4 = [v3 canSwipeToDismiss];

  v5 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  v6 = [v5 canPinchToDismiss];

  v7 = [(QLPreviewCollection *)self stateManager];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(QLPreviewCollection *)self stateManager];
    [v9 setCanDismissWithGesture:(v4 | v6) & ~self->_isEditing & 1];
  }
}

- (void)_updateEnableChangingPageUsingGestures
{
  v3 = !self->_isEditing && !self->_currentItemViewControllerIsPerformingFocusedAction;
  [(UISwipeGestureRecognizer *)self->_pageSwipeGesture setEnabled:v3];
  [(UIPanGestureRecognizer *)self->_pagePanGesture setEnabled:v3];
  v5 = [(QLPreviewCollection *)self pageViewController];
  v4 = [v5 scrollView];
  [v4 setScrollEnabled:v3];
}

- (id)_sandboxExtensionForEditedFileAtURL:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 path];
  v5 = [v4 stringByDeletingLastPathComponent];
  [v5 fileSystemRepresentation];

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
      v14 = v3;
      _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_ERROR, "QLPreviewCollection could not provide a sandbox extension for file at URL: %@ #PreviewCollection", &v13, 0xCu);
    }

    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_itemViewControllerIsCurrentlyPresentedItemViewController:(id)a3
{
  v4 = [a3 presentingDelegate];
  v5 = [v4 itemPresenterViewController];
  v6 = [(QLPreviewCollection *)self currentPreviewItemViewController];
  LOBYTE(self) = v5 == v6;

  return self;
}

@end