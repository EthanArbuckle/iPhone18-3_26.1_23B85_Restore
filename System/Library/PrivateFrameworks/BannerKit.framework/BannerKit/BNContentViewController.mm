@interface BNContentViewController
+ (id)_retargetableBannerTransitionAnimatorForAnimator:(id)a3;
+ (void)initialize;
- (BNContentViewController)initWithAuthority:(id)a3;
- (BNPosting)poster;
- (BNPresentingDelegate)delegate;
- (BOOL)_isDraggingDismissalEnabledForPresentable:(id)a3;
- (BOOL)_isDraggingEnabledForPresentable:(id)a3;
- (BOOL)_isDraggingInteractionEnabledForPresentable:(id)a3;
- (BOOL)_isLocalDraggingEnabledForPresentable:(id)a3;
- (BOOL)_isPresentableNotice:(id)a3;
- (BOOL)_isTouchOutsideDismissalEnabledForPresentable:(id)a3;
- (BOOL)_resetActiveBannerTransitionAnimator:(id)a3;
- (BOOL)_resetActiveBannerTransitionContextIfComplete:(id)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)resignFirstResponder;
- (BOOL)shouldAutorotate;
- (BOOL)shouldFenceAnimationsForPresentable:(id)a3;
- (BOOL)shouldNewTierBeAddedToTopForPresentable:(id)a3 withPresentable:(id)a4;
- (CGPoint)_locationOfScrollEvent:(id)a3 inContainerViewForGesture:(id)a4;
- (CGPoint)_locationOfTouch:(id)a3 inContainerViewForGesture:(id)a4;
- (CGPoint)_translationInContainerViewForGesture:(id)a3;
- (CGPoint)_velocityInContainerViewForGesture:(id)a3;
- (CGPoint)gestureRecognizerProxy:(id)a3 locationForTouch:(id)a4 inCoordinateSpace:(id)a5;
- (CGPoint)gestureRecognizerProxy:(id)a3 translationInCoordinateSpace:(id)a4;
- (CGPoint)gestureRecognizerProxy:(id)a3 velocityInCoordinateSpace:(id)a4;
- (CGPoint)gestureRecognizerProxy:(id)a3 visualTranslationInCoordinateSpace:(id)a4;
- (CGRect)_dismissedFrameForViewController:(id)a3 withContainerBounds:(CGRect)a4;
- (CGRect)_dismissedFrameWithPaddingForViewController:(id)a3 withContainerBounds:(CGRect)a4;
- (CGRect)_dismissedFrameWithPaddingForViewController:(id)a3 withContainerBounds:(CGRect)a4 targetTransform:(CGAffineTransform *)a5;
- (CGRect)_insetFrame:(CGRect)a3 forViewController:(id)a4;
- (CGRect)_outsetFrame:(CGRect)a3 forViewController:(id)a4;
- (CGRect)_presentedFrame:(BOOL)a3 forViewController:(id)a4 withContainerBounds:(CGRect)a5 overshoot:(BOOL)a6 targetTransform:(CGAffineTransform *)a7;
- (CGRect)_presentedFrameForPresentable:(id)a3 withContainerBounds:(CGRect)a4;
- (CGRect)_presentedFrameForViewController:(id)a3 withContainerBounds:(CGRect)a4;
- (CGRect)_presentedFrameForViewController:(id)a3 withContainerBounds:(CGRect)a4 targetTransform:(CGAffineTransform *)a5;
- (CGRect)_presentedFrameForViewController:(id)a3 withContentFrame:(CGRect)a4 afterContentWithFrame:(CGRect)a5;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (NSArray)presentedPresentables;
- (NSArray)topPresentables;
- (id)_dismissPresentablesWithIdentification:(id)a3 reason:(id)a4 animated:(BOOL)a5 userInfo:(id)a6;
- (id)_layoutManager;
- (id)_newBannerTransitionContextForMorphFromViewController:(id)a3 toViewController:(id)a4 animated:(BOOL)a5;
- (id)_newBannerTransitionContextForPresenting:(BOOL)a3 viewController:(id)a4 animated:(BOOL)a5;
- (id)_presentableForGestureInView:(id)a3;
- (id)_presentableForScrollEvent:(id)a3;
- (id)_presentableForTouch:(id)a3;
- (id)_presentablesWithIdentification:(id)a3 requiringUniqueMatch:(BOOL)a4;
- (id)dismissPresentablesWithIdentification:(id)a3 reason:(id)a4 animated:(BOOL)a5 userInfo:(id)a6;
- (id)dismissPresentablesWithIdentification:(id)a3 reason:(id)a4 userInfo:(id)a5;
- (id)sizeTransitionAnimationSettingsForPresentable:(id)a3;
- (id)userInterfaceStyleTransitionAnimationSettingsForPresentable:(id)a3 forTransitionToStyle:(int64_t)a4;
- (int64_t)_effectTierForPresentable:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissPresentable:(id)a3 withReason:(id)a4 animated:(BOOL)a5 userInfo:(id)a6;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_handlePan:(id)a3;
- (void)_insertPresentable:(id)a3 referencePresentable:(id)a4 withTransitioningDelegate:(id)a5 incrementingTier:(BOOL)a6 addToTop:(BOOL)a7;
- (void)_morphFromPresentable:(id)a3 toPresentable:(id)a4 withOptions:(unint64_t)a5 userInfo:(id)a6 stateChange:(BOOL)a7;
- (void)_postLayoutChangeForVisibleNotifications;
- (void)_removePresentable:(id)a3;
- (void)_resetPresentableForActiveGesture:(id)a3;
- (void)_updateFrameForChildContentContainer:(id)a3 minimumTopInsetUpdate:(BOOL)a4;
- (void)bannerContentOutsetsDidInvalidateForPresentableViewController:(id)a3;
- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4;
- (void)loadView;
- (void)morphFromPresentable:(id)a3 toPresentable:(id)a4 withOptions:(unint64_t)a5 userInfo:(id)a6 stateChange:(BOOL)a7;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)preferredMinimumTopInsetDidInvalidate;
- (void)presentPresentable:(id)a3 withOptions:(unint64_t)a4 userInfo:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BNContentViewController

- (NSArray)presentedPresentables
{
  v3 = [(BNTieredArray *)self->_presentables allObjects];
  v4 = [v3 mutableCopy];

  v5 = [(NSMutableSet *)self->_dismissingPresentables allObjects];
  [v4 removeObjectsInArray:v5];

  return v4;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(BNContentViewController *)self _topPresentable];
  v3 = UIViewControllerFromPresentable(v2);
  v4 = [v3 supportedInterfaceOrientations];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 30;
  }

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    BNRegisterBannerKitLogging();
  }
}

- (NSArray)topPresentables
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v3 = 0;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while (v3 < [(BNTieredArray *)self->_presentables tierCount])
  {
    v4 = [(BNTieredArray *)self->_presentables tierAtIndex:v3];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__BNContentViewController_topPresentables__block_invoke;
    v7[3] = &unk_1E81E4C20;
    v7[4] = self;
    v7[5] = &v8;
    [v4 enumerateObjectsWithOptions:2 usingBlock:v7];

    ++v3;
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)canBecomeFirstResponder
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(BNContentViewController *)self topPresentables];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = UIViewControllerFromPresentable(*(*(&v9 + 1) + 8 * i));
        v7 = [v6 canBecomeFirstResponder];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

void __42__BNContentViewController_topPresentables__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (([*(*(a1 + 32) + 1008) containsObject:?] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) insertObject:v6 atIndex:0];
  }

  if (([*(a1 + 32) _isPresentableNotice:v6] & 1) == 0)
  {
    *a4 = 1;
  }
}

- (BOOL)becomeFirstResponder
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(BNContentViewController *)self topPresentables];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = UIViewControllerFromPresentable(*(*(&v9 + 1) + 8 * i));
        v7 = [v6 becomeFirstResponder];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)_layoutManager
{
  layoutManager = self->_layoutManager;
  if (!layoutManager)
  {
    v4 = objc_alloc_init(BNBannerLayoutManager);
    v5 = self->_layoutManager;
    self->_layoutManager = v4;

    layoutManager = self->_layoutManager;
  }

  return layoutManager;
}

- (void)_postLayoutChangeForVisibleNotifications
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(BNContentViewController *)self viewIfLoaded];
  v5 = [v4 window];

  v32 = v5;
  v31 = [v5 screen];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [(BNTieredArray *)self->_presentables allObjects];
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = UIViewControllerFromPresentable(v11);
        if ([v12 isViewLoaded])
        {
          v13 = [v12 view];
          v14 = [v13 superview];
          [v13 frame];
          [(BNContentViewController *)self _insetFrame:v12 forViewController:?];
          [v14 convertRect:0 toView:?];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;

          [v32 convertRect:0 toWindow:{v16, v18, v20, v22}];
          v33[0] = v23;
          v33[1] = v24;
          v33[2] = v25;
          v33[3] = v26;
          v27 = [MEMORY[0x1E696B098] valueWithBytes:v33 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          v28 = [BNPresentableIdentification genericIdentificationForPresentable:v11];
          [v3 setObject:v27 forKey:v28];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  v29 = [MEMORY[0x1E696AD88] defaultCenter];
  v38 = @"BNPresentableIdentificationsToFrames";
  v39 = v3;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  [v29 postNotificationName:@"BNPresentableLayoutDidChange" object:v31 userInfo:v30];
}

- (BOOL)resignFirstResponder
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(BNContentViewController *)self topPresentables];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = UIViewControllerFromPresentable(*(*(&v9 + 1) + 8 * i));
        v7 = [v6 resignFirstResponder];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)loadView
{
  v3 = [BNContentViewControllerView alloc];
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 bounds];
  v4 = [(BNContentViewControllerView *)v3 initWithFrame:?];
  [(BNContentViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = BNContentViewController;
  [(BNContentViewController *)&v7 viewDidLoad];
  v3 = [(BNContentViewController *)self view];
  [v3 setAutoresizesSubviews:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    v6 = [WeakRetained panGestureRecognizerForPresenter:self];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&self->_panGesture, v6);
  if (v5)
  {
  }

  [(UIPanGestureRecognizer *)self->_panGesture addTarget:self action:sel__handlePan_];
  [(UIPanGestureRecognizer *)self->_panGesture setDelegate:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = BNContentViewController;
  [(BNContentViewController *)&v15 viewWillAppear:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_presentables;
  v6 = [(BNTieredArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = UIViewControllerFromPresentable(*(*(&v11 + 1) + 8 * v9));
        [v10 bs_beginAppearanceTransition:1 animated:{v3, v11}];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(BNTieredArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = BNContentViewController;
  [(BNContentViewController *)&v14 viewDidAppear:a3];
  [(UIPanGestureRecognizer *)self->_panGesture setEnabled:1];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_presentables;
  v5 = [(BNTieredArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = UIViewControllerFromPresentable(*(*(&v10 + 1) + 8 * v8));
        [v9 bs_endAppearanceTransition];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(BNTieredArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = BNContentViewController;
  [(BNContentViewController *)&v15 viewWillDisappear:?];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_presentables;
  v6 = [(BNTieredArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = UIViewControllerFromPresentable(*(*(&v11 + 1) + 8 * v9));
        [v10 bs_beginAppearanceTransition:0 animated:{v3, v11}];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(BNTieredArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = BNContentViewController;
  [(BNContentViewController *)&v14 viewDidDisappear:a3];
  [(UIPanGestureRecognizer *)self->_panGesture setEnabled:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_presentables;
  v5 = [(BNTieredArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = UIViewControllerFromPresentable(*(*(&v10 + 1) + 8 * v8));
        [v9 bs_endAppearanceTransition];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(BNTieredArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (BOOL)shouldAutorotate
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(BNContentViewController *)self topPresentables];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = UIViewControllerFromPresentable(*(*(&v11 + 1) + 8 * i));
        v8 = [v7 shouldAutorotate];

        if (!v8)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4
{
  if (a3)
  {
    a3->var6 = 0;
  }
}

- (void)bannerContentOutsetsDidInvalidateForPresentableViewController:(id)a3
{
  v4 = UIViewControllerFromPresentable(a3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(BNContentViewController *)self _updateFrameForChildContentContainer:v4 minimumTopInsetUpdate:0];
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v5.receiver = self;
  v5.super_class = BNContentViewController;
  v4 = a3;
  [(BNContentViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:v4];
  [(BNContentViewController *)self _updateFrameForChildContentContainer:v4 minimumTopInsetUpdate:0, v5.receiver, v5.super_class];
}

- (void)_updateFrameForChildContentContainer:(id)a3 minimumTopInsetUpdate:(BOOL)a4
{
  v4 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v7 = [(BNContentViewController *)self allPresentables];
  v8 = [v7 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v8)
  {
    v9 = *v70;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v70 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v69 + 1) + 8 * v10);
      v12 = UIViewControllerFromPresentable(v11);
      v13 = v12 == v6;

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v69 objects:v75 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v11;

    if (!v14)
    {
      goto LABEL_43;
    }

    v15 = BNLogPresenting;
    if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = BNEffectivePresentableDescription(v14);
      *buf = 138543362;
      v74 = v17;
      _os_log_impl(&dword_1C42DC000, v16, OS_LOG_TYPE_DEFAULT, "Preferred content size did change for presentable: %{public}@", buf, 0xCu);
    }

    v18 = UIViewControllerFromPresentable(v14);
    v19 = [(BNContentViewController *)self transitionCoordinator];
    if (v19 || v18 != v6)
    {
      goto LABEL_40;
    }

    if (![v18 bs_isAppearingOrAppeared])
    {
LABEL_41:

      goto LABEL_42;
    }

    v20 = BNLogPresenting;
    if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v74 = v6;
      _os_log_impl(&dword_1C42DC000, v20, OS_LOG_TYPE_DEFAULT, "Animating preferred content size change of child container: %{public}@", buf, 0xCu);
    }

    v21 = [(BNContentViewController *)self view];
    [v21 bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    if ([v18 bs_isAppearingOrAppeared])
    {
      [(BNContentViewController *)self _presentedFrameForPresentable:v14 withContainerBounds:v23, v25, v27, v29];
    }

    else
    {
      [(BNContentViewController *)self _dismissedFrameWithPaddingForViewController:v18 withContainerBounds:v23, v25, v27, v29];
    }

    v34 = v30;
    v35 = v31;
    v36 = v32;
    v37 = v33;
    if (v4)
    {
      v38 = [v18 view];
    }

    else
    {
      v39 = [v18 bn_shouldAnimateViewTransitionToSize:{v32, v33}];
      v40 = [v18 view];
      v38 = v40;
      if ((v39 & 1) == 0)
      {
        [v40 _removeAllRetargetableAnimations:1];
        v41 = 0;
        goto LABEL_26;
      }
    }

    v41 = 1;
LABEL_26:
    [v38 frame];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = [(BNContentViewController *)self view];
    v51 = [BNTransitionContext transitionContextForTransitionOfViewController:v18 fromFrame:v50 toFrame:v43 inContainerView:v45, v47, v49, *&v34, *&v35, v36, v37];

    if (v41)
    {
      v52 = [(BNContentViewController *)self bs_isAppearingOrAppeared];
    }

    else
    {
      v52 = 0;
    }

    [v51 setAnimated:v52];
    v63 = [v18 transitioningDelegate];
    if (v41)
    {
      if (v4)
      {
        v53 = [BNBannerAnimator alloc];
        v54 = +[BNBannerAnimator defaultResizeAnimationSettings];
        v55 = [(BNBannerAnimator *)v53 initWithAnimationSettings:v54];
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v56 = [v63 animationControllerForResizingController:v18 userInfo:0];
        }

        else
        {
          v56 = objc_alloc_init(BNBannerAnimator);
        }

        v55 = v56;
      }
    }

    else
    {
      v55 = 0;
    }

    objc_initWeak(buf, self);
    v57 = [v51 transitionCoordinator];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __86__BNContentViewController__updateFrameForChildContentContainer_minimumTopInsetUpdate___block_invoke;
    v64[3] = &unk_1E81E4C48;
    objc_copyWeak(v68, buf);
    v58 = v55;
    v65 = v58;
    v19 = v38;
    v66 = v19;
    v68[1] = v34;
    v68[2] = v35;
    v68[3] = *&v36;
    v68[4] = *&v37;
    v59 = v14;
    v67 = v59;
    [v57 animateAlongsideTransition:v64 completion:0];

    v60 = [v51 transitionCoordinator];
    [v18 viewWillTransitionToSize:v60 withTransitionCoordinator:{v36, v37}];

    [v19 _removeAllRetargetableAnimations:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v62 = [v51 transitionCoordinator];
      [WeakRetained presenter:self presentable:v59 willTransitionToSize:v62 withTransitionCoordinator:{v36, v37}];
    }

    [v51 performTransitionWithAnimator:v58];

    objc_destroyWeak(v68);
    objc_destroyWeak(buf);

LABEL_40:
    goto LABEL_41;
  }

LABEL_9:
  v14 = v7;
LABEL_42:

LABEL_43:
}

void __86__BNContentViewController__updateFrameForChildContentContainer_minimumTopInsetUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (!*(a1 + 32))
  {
    [*(a1 + 40) setFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
    [v4 _postLayoutChangeForVisibleNotifications];
    WeakRetained = v4;
  }

  if (WeakRetained && *(a1 + 48) == *(WeakRetained + 129))
  {
    v3 = *(a1 + 80);
    *(WeakRetained + 65) = *(a1 + 64);
    *(WeakRetained + 66) = v3;
  }

  [*(a1 + 40) layoutIfNeeded];
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  v5 = [(BNContentViewController *)self _layoutManager];
  BSRectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(BNContentViewController *)self view];
  v15 = [v14 window];

  if ([v15 _bn_isRotating])
  {
    v16 = [v15 _toWindowOrientation];
  }

  else
  {
    v16 = [v15 interfaceOrientation];
  }

  v17 = v16;
  v18 = [v15 screen];
  [v5 useableContainerFrameInContainerBounds:v18 onScreen:v17 interfaceOrientation:{v7, v9, v11, v13}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [(BNContentViewController *)self traitCollection];
  [v27 displayScale];
  [v5 presentedFrameForContentWithPreferredSize:v24 inUseableContainerFrame:v26 containerBounds:v20 scale:{v22, v24, v26, *&v7, *&v9, *&v11, *&v13, v28}];
  v30 = v29;
  v32 = v31;

  v33 = v30;
  v34 = v32;
  result.height = v34;
  result.width = v33;
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v35 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = BNLogPresenting;
  if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v36.width = width;
    v36.height = height;
    v12 = NSStringFromCGSize(v36);
    *buf = 138543618;
    v32 = v11;
    v33 = 2114;
    v34 = v12;
    _os_log_impl(&dword_1C42DC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ view will transition to size: %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presenter:self willTransitionToSize:v7 withTransitionCoordinator:{width, height}];
  }

  v14 = self->_activeBannerTransitionContext;
  v15 = [(BNTransitionContext *)v14 transitionCoordinator];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v7;
  }

  v18 = v17;

  v19 = [objc_opt_class() _retargetableBannerTransitionAnimatorForAnimator:self->_activeBannerTransitionAnimator];
  v30.receiver = self;
  v30.super_class = BNContentViewController;
  [(BNContentViewController *)&v30 viewWillTransitionToSize:v18 withTransitionCoordinator:width, height];
  objc_initWeak(buf, self);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __78__BNContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v27[3] = &unk_1E81E4C70;
  v29[1] = *&width;
  v29[2] = *&height;
  objc_copyWeak(v29, buf);
  v20 = v7;
  v28 = v20;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __78__BNContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_45;
  v23[3] = &unk_1E81E4C98;
  objc_copyWeak(&v26, buf);
  v21 = v14;
  v24 = v21;
  v22 = v19;
  v25 = v22;
  [v18 animateAlongsideTransition:v27 completion:v23];
  [v22 retargetTransition:self->_activeBannerTransitionContext];

  objc_destroyWeak(&v26);
  objc_destroyWeak(v29);
  objc_destroyWeak(buf);
}

void __78__BNContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BNLogPresenting;
  if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = v4;
    v47.width = v5;
    v47.height = v6;
    v8 = NSStringFromCGSize(v47);
    *buf = 138543362;
    *&buf[4] = v8;
    _os_log_impl(&dword_1C42DC000, v7, OS_LOG_TYPE_DEFAULT, "Animating layout of top presentables for transition to size: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v37 = v3;
    BSRectWithSize();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = [WeakRetained topPresentables];
    v19 = [v18 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v38 + 1) + 8 * i);
          v24 = UIViewControllerFromPresentable(v23);
          if ([v24 bs_isAppearingOrAppeared])
          {
            v25 = *(a1 + 32);
            if (v25)
            {
              [v25 targetTransform];
            }

            else
            {
              v43 = 0u;
              v44 = 0u;
              *buf = 0u;
            }

            [WeakRetained _presentedFrameForViewController:v24 withContainerBounds:buf targetTransform:{v11, v13, v15, v17}];
          }

          else
          {
            v26 = *(a1 + 32);
            if (v26)
            {
              [v26 targetTransform];
            }

            else
            {
              v43 = 0u;
              v44 = 0u;
              *buf = 0u;
            }

            [WeakRetained _dismissedFrameWithPaddingForViewController:v24 withContainerBounds:buf targetTransform:{v11, v13, v15, v17}];
          }

          v31 = v27;
          v32 = v28;
          v33 = v29;
          v34 = v30;
          v35 = [v24 view];
          [v35 setFrame:{v31, v32, v33, v34}];

          v36 = [WeakRetained view];
          [v36 setNeedsLayout];
          [v36 layoutIfNeeded];
          if (v23 == WeakRetained[129])
          {
            *(WeakRetained + 130) = v31;
            *(WeakRetained + 131) = v32;
            *(WeakRetained + 132) = v33;
            *(WeakRetained + 133) = v34;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v20);
    }

    [WeakRetained _postLayoutChangeForVisibleNotifications];
    v3 = v37;
  }
}

uint64_t __78__BNContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_45(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = [WeakRetained _resetActiveBannerTransitionContextIfComplete:*(a1 + 32)];
    v3 = v5;
    if (WeakRetained)
    {
      WeakRetained = [v5 _resetActiveBannerTransitionAnimator:*(a1 + 40)];
      v3 = v5;
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

- (BNContentViewController)initWithAuthority:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BNContentViewController;
  v6 = [(BNContentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authority, a3);
  }

  return v7;
}

- (void)presentPresentable:(id)a3 withOptions:(unint64_t)a4 userInfo:(id)a5
{
  v6 = a4;
  v102 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v69 = a5;
  v9 = BNLogPresenting;
  if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = BNEffectivePresentableDescription(v8);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1C42DC000, v10, OS_LOG_TYPE_DEFAULT, "Asked to present presentable: %{public}@", &buf, 0xCu);
  }

  if (v8 && ([(NSMutableSet *)self->_presentingPresentables containsObject:v8]& 1) == 0)
  {
    v12 = BNLogPresenting;
    if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = BNEffectivePresentableDescription(v8);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_1C42DC000, v13, OS_LOG_TYPE_DEFAULT, "Presenting presentable %{public}@", &buf, 0xCu);
    }

    presentingPresentables = self->_presentingPresentables;
    if (!presentingPresentables)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v17 = self->_presentingPresentables;
      self->_presentingPresentables = v16;

      presentingPresentables = self->_presentingPresentables;
    }

    [(NSMutableSet *)presentingPresentables addObject:v8];
    [(NSMutableSet *)self->_dismissingPresentables removeObject:v8];
    v65 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v98 = 0x3032000000;
    v99 = __Block_byref_object_copy__0;
    v100 = __Block_byref_object_dispose__0;
    v101 = 0;
    if (v6)
    {
      v18 = [v8 requesterIdentifier];
      v19 = [(BNTieredArray *)self->_presentables allObjects];
      v20 = MEMORY[0x1E696AE18];
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __67__BNContentViewController_presentPresentable_withOptions_userInfo___block_invoke;
      v91[3] = &unk_1E81E4CC0;
      v92 = v8;
      v21 = v18;
      v93 = v21;
      v94 = self;
      v22 = [v20 predicateWithBlock:v91];
      v65 = [v19 filteredArrayUsingPredicate:v22];

      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v23;
    }

    v25 = UIViewControllerFromPresentable(v8);
    v68 = [v25 transitioningDelegate];
    if (!v68)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v68 = [WeakRetained defaultTransitioningDelegateForPresenter:self];
      }

      else
      {
        v68 = objc_alloc_init(BNDefaultBannerTransitioningDelegate);
      }

      [v25 setTransitioningDelegate:v68];
    }

    v27 = [(BNContentViewController *)self _presentablesWithIdentification:v8 requiringUniqueMatch:1];
    v28 = [v27 count];

    if (!v28)
    {
      v29 = [(BNContentViewController *)self _topPresentable];
      v30 = [(BNContentViewController *)self shouldOverlapPresentable:v29 withPresentable:v8];
      v31 = [(BNContentViewController *)self shouldNewTierBeAddedToTopForPresentable:v29 withPresentable:v8];
      if (v30 && ![(BNContentViewController *)self _isPresentableNotice:v8]&& [(BNContentViewController *)self _isPresentableNotice:v29])
      {
        [(BNContentViewController *)self _insertPresentable:v8 beneathPresentable:v29 withTransitioningDelegate:v68];
        v32 = 1;
      }

      else
      {
        [(BNContentViewController *)self _addPresentable:v8 withTransitioningDelegate:v68 incrementingTier:!v30 addTierToTop:v31];
        v32 = 0;
      }

      [(BNContentViewController *)self addChildViewController:v25];
      [v25 didMoveToParentViewController:self];
      v33 = [v25 view];
      v34 = [(BNContentViewController *)self view];
      v35 = v34;
      if (v32)
      {
        v36 = UIViewControllerFromPresentable(v29);
        v37 = [v36 view];
        [v35 insertSubview:v33 belowSubview:v37];
      }

      else
      {
        [v34 addSubview:v33];
      }
    }

    v38 = [(BNContentViewController *)self bs_isAppearingOrAppeared];
    v39 = [(BNContentViewController *)self _newBannerTransitionContextForPresenting:1 viewController:v25 animated:v38];
    objc_storeStrong(&self->_activeBannerTransitionContext, v39);
    if (v28 && (UIViewControllerFromPresentable(v8), v40 = objc_claimAutoreleasedReturnValue(), -[BNTransitionContext viewControllerForKey:](self->_activeBannerTransitionContext, "viewControllerForKey:", *MEMORY[0x1E69DE768]), v41 = objc_claimAutoreleasedReturnValue(), v42 = BSEqualObjects(), v41, v40, v42) && ([objc_opt_class() _retargetableBannerTransitionAnimatorForAnimator:self->_activeBannerTransitionAnimator], v43 = objc_claimAutoreleasedReturnValue(), v44 = v43, v43))
    {
      v45 = 0;
      v46 = v44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [(BNDefaultBannerTransitioningDelegate *)v68 animationControllerForPresentedController:v25 presentingController:self sourceController:self userInfo:v69];
      }

      else
      {
        [(BNDefaultBannerTransitioningDelegate *)v68 animationControllerForPresentedController:v25 presentingController:self sourceController:self];
      }
      v46 = ;
      objc_storeStrong(&self->_activeBannerTransitionAnimator, v46);
      v44 = 0;
      v45 = 1;
    }

    v64 = v44;
    v67 = [v39 transitionCoordinator];
    objc_initWeak(&location, self);
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __67__BNContentViewController_presentPresentable_withOptions_userInfo___block_invoke_2;
    v80[3] = &unk_1E81E4CE8;
    objc_copyWeak(&v88, &location);
    v47 = v8;
    v81 = v47;
    v48 = v25;
    v89 = v38;
    v82 = v48;
    v83 = self;
    v49 = v39;
    v84 = v49;
    v61 = v65;
    v85 = v61;
    v50 = v69;
    v86 = v50;
    p_buf = &buf;
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __67__BNContentViewController_presentPresentable_withOptions_userInfo___block_invoke_58;
    v74[3] = &unk_1E81E4D10;
    objc_copyWeak(&v79, &location);
    v66 = v49;
    v75 = v66;
    v63 = v46;
    v76 = v63;
    v51 = v47;
    v77 = v51;
    v62 = v48;
    v78 = v62;
    [v67 animateAlongsideTransition:v80 completion:v74];
    v52 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [v52 presenter:self willPresentPresentable:v51 withTransitionCoordinator:v67 userInfo:{v50, v61}];
    }

    if (v45)
    {
      [v66 performTransitionWithAnimator:v63];
    }

    else
    {
      v53 = BNLogPresenting;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        v54 = BNEffectivePresentableDescription(v51);
        [BNContentViewController presentPresentable:v54 withOptions:v96 userInfo:v53];
      }

      [v64 retargetTransition:v66];
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v55 = *(*(&buf + 1) + 40);
    v56 = [v55 countByEnumeratingWithState:&v70 objects:v95 count:16];
    if (v56)
    {
      v57 = *v71;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v71 != v57)
          {
            objc_enumerationMutation(v55);
          }

          v59 = *(*(&v70 + 1) + 8 * i);
          v60 = objc_loadWeakRetained(&location);
          [v60 _dismissPresentable:v59 withReason:@"BNBannerRevocationReasonReplaceExisting" animated:1 userInfo:v50];
        }

        v56 = [v55 countByEnumeratingWithState:&v70 objects:v95 count:16];
      }

      while (v56);
    }

    objc_destroyWeak(&v79);
    objc_destroyWeak(&v88);
    objc_destroyWeak(&location);

    _Block_object_dispose(&buf, 8);
  }
}

uint64_t __67__BNContentViewController_presentPresentable_withOptions_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (BNIsPresentableIdentifiedByIdentification(v3, *(a1 + 32), 1))
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 requesterIdentifier];
    if ([v5 isEqualToString:*(a1 + 40)])
    {
      v4 = [*(a1 + 48) shouldOverlapPresentable:v3 withPresentable:*(a1 + 32)];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __67__BNContentViewController_presentPresentable_withOptions_userInfo___block_invoke_2(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v3 = BNLogPresenting;
    if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = BNEffectivePresentableDescription(v4);
      *buf = 138543362;
      v76 = v6;
      _os_log_impl(&dword_1C42DC000, v5, OS_LOG_TYPE_DEFAULT, "Presentable will appear as banner: %{public}@", buf, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 32) presentableWillAppearAsBanner:*(a1 + 32)];
    }

    [*(a1 + 40) beginAppearanceTransition:1 animated:*(a1 + 96)];
    v7 = [*(a1 + 48) _topPresentable];
    v8 = UIViewControllerFromPresentable(v7);

    if ([*(a1 + 40) isEqual:v8])
    {
      [*(a1 + 56) finalFrameForViewController:*(a1 + 40)];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
    }

    else
    {
      v17 = [v8 view];
      [v17 frame];
      v10 = v18;
      v12 = v19;
      v14 = v20;
      v16 = v21;
    }

    v55 = v8;
    [WeakRetained _insetFrame:v8 forViewController:{v10, v12, v14, v16}];
    obj = v23;
    v64 = v22;
    v60 = v24;
    v61 = v25;
    if ([WeakRetained[124] tierCount] >= 2)
    {
      v58 = *(MEMORY[0x1E695F058] + 8);
      v59 = *MEMORY[0x1E695F058];
      v56 = *(MEMORY[0x1E695F058] + 24);
      v57 = *(MEMORY[0x1E695F058] + 16);
      v26 = 1;
      do
      {
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v27 = [WeakRetained[124] tierAtIndex:v26];
        v28 = [v27 countByEnumeratingWithState:&v69 objects:v74 count:16];
        y = v58;
        x = v59;
        height = v56;
        width = v57;
        if (v28)
        {
          v33 = v28;
          v34 = *v70;
          y = v58;
          x = v59;
          height = v56;
          width = v57;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v70 != v34)
              {
                objc_enumerationMutation(v27);
              }

              v36 = UIViewControllerFromPresentable(*(*(&v69 + 1) + 8 * i));
              v37 = [v36 view];
              if ([v36 isEqual:*(a1 + 40)])
              {
                [*(a1 + 56) finalFrameForViewController:*(a1 + 40)];
              }

              else
              {
                [v37 frame];
              }

              [WeakRetained _insetFrame:v36 forViewController:?];
              v39 = v38;
              v41 = v40;
              v43 = v42;
              v45 = v44;
              v78.origin.x = x;
              v78.origin.y = y;
              v78.size.width = width;
              v78.size.height = height;
              v80.origin.x = v39;
              v80.origin.y = v41;
              v80.size.width = v43;
              v80.size.height = v45;
              v79 = CGRectUnion(v78, v80);
              x = v79.origin.x;
              y = v79.origin.y;
              width = v79.size.width;
              height = v79.size.height;
              [WeakRetained _presentedFrameForViewController:v36 withContentFrame:v39 afterContentWithFrame:{v41, v43, v45, v64, obj, v60, v61}];
              [v37 setFrame:?];
            }

            v33 = [v27 countByEnumeratingWithState:&v69 objects:v74 count:16];
          }

          while (v33);
        }

        ++v26;
        obj = y;
        v64 = x;
        v60 = width;
        v61 = height;
      }

      while (v26 < [WeakRetained[124] tierCount]);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    obja = *(a1 + 64);
    v46 = [obja countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v66;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v66 != v48)
          {
            objc_enumerationMutation(obja);
          }

          v50 = *(*(&v65 + 1) + 8 * j);
          v51 = [WeakRetained[124] indexPathForObject:v50];
          v52 = [v51 tier];
          v53 = [WeakRetained[124] indexPathForObject:*(a1 + 32)];
          v54 = [v53 tier];

          if (v52 == v54)
          {
            [*(*(*(a1 + 80) + 8) + 40) addObject:v50];
          }

          else
          {
            [WeakRetained _dismissPresentable:v50 withReason:@"BNBannerRevocationReasonReplaceExisting" animated:1 userInfo:*(a1 + 72)];
          }
        }

        v47 = [obja countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v47);
    }

    [WeakRetained _postLayoutChangeForVisibleNotifications];
  }
}

void __67__BNContentViewController_presentPresentable_withOptions_userInfo___block_invoke_58(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _resetActiveBannerTransitionContextIfComplete:*(a1 + 32)])
    {
      [v3 _resetActiveBannerTransitionAnimator:*(a1 + 40)];
    }

    v4 = (a1 + 48);
    if ([v3[126] containsObject:*(a1 + 48)])
    {
      v5 = BNLogPresenting;
      if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEBUG))
      {
        __67__BNContentViewController_presentPresentable_withOptions_userInfo___block_invoke_58_cold_1(v4, v5);
      }
    }

    else
    {
      [*(a1 + 56) endAppearanceTransition];
      v6 = BNLogPresenting;
      if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *v4;
        v8 = v6;
        v9 = BNEffectivePresentableDescription(v7);
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_1C42DC000, v8, OS_LOG_TYPE_DEFAULT, "Presentable did appear as banner: %{public}@", &v10, 0xCu);
      }

      if (objc_opt_respondsToSelector())
      {
        [*v4 presentableDidAppearAsBanner:*v4];
      }
    }

    [v3[125] removeObject:*v4];
  }
}

- (id)dismissPresentablesWithIdentification:(id)a3 reason:(id)a4 userInfo:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = BNLogPresenting;
  if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = BNPresentableIdentificationDescription(v8);
    v16 = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_1C42DC000, v12, OS_LOG_TYPE_DEFAULT, "Asked to dismiss presentables with identification %{public}@ with reason '%{public}@'", &v16, 0x16u);
  }

  v14 = [(BNContentViewController *)self _dismissPresentablesWithIdentification:v8 reason:v9 animated:[(BNContentViewController *)self bs_isAppearingOrAppeared] userInfo:v10];

  return v14;
}

- (id)dismissPresentablesWithIdentification:(id)a3 reason:(id)a4 animated:(BOOL)a5 userInfo:(id)a6
{
  v7 = a5;
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = BNLogPresenting;
  if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = BNPresentableIdentificationDescription(v10);
    v16 = NSStringFromBOOL();
    v24 = 138543874;
    v25 = v15;
    v26 = 2114;
    v27 = v11;
    v28 = 2114;
    v29 = v16;
    _os_log_impl(&dword_1C42DC000, v14, OS_LOG_TYPE_DEFAULT, "Asked to dismiss presentables with identification %{public}@ with reason '%{public}@' (animated=%{public}@)", &v24, 0x20u);
  }

  if (v7)
  {
    if (([(BNContentViewController *)self bs_isAppearingOrAppeared]& 1) != 0)
    {
      v17 = 1;
      goto LABEL_9;
    }

    v18 = BNLogPresenting;
    if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = NSStringFromBOOL();
      v21 = BNPresentableIdentificationDescription(v10);
      v24 = 138543618;
      v25 = v20;
      v26 = 2114;
      v27 = v21;
      _os_log_impl(&dword_1C42DC000, v19, OS_LOG_TYPE_DEFAULT, "Overriding 'animated=%{public}@' for presentables with identification %{public}@ due to appearance state", &v24, 0x16u);
    }
  }

  v17 = 0;
LABEL_9:
  v22 = [(BNContentViewController *)self _dismissPresentablesWithIdentification:v10 reason:v11 animated:v17 userInfo:v12];

  return v22;
}

- (void)morphFromPresentable:(id)a3 toPresentable:(id)a4 withOptions:(unint64_t)a5 userInfo:(id)a6 stateChange:(BOOL)a7
{
  v7 = a7;
  v18 = a3;
  v12 = a4;
  v13 = a6;
  v14 = UIViewControllerFromPresentable(v18);
  if (v18 && (v15 = -[NSMutableSet containsObject:](self->_dismissingPresentables, "containsObject:", v18), v12) && (v15 & 1) == 0 && (-[NSMutableSet containsObject:](self->_presentingPresentables, "containsObject:", v12) & 1) == 0 && (-[BNContentViewController childViewControllers](self, "childViewControllers"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 containsObject:v14], v16, v17))
  {
    [(BNContentViewController *)self _morphFromPresentable:v18 toPresentable:v12 withOptions:a5 userInfo:v13 stateChange:v7];
  }

  else
  {
    [(BNContentViewController *)self presentPresentable:v12 withOptions:a5 userInfo:v13];
  }
}

- (void)_morphFromPresentable:(id)a3 toPresentable:(id)a4 withOptions:(unint64_t)a5 userInfo:(id)a6 stateChange:(BOOL)a7
{
  v7 = a7;
  v63 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v43 = a6;
  v13 = BNLogPresenting;
  if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = BNEffectivePresentableDescription(v11);
    v16 = BNEffectivePresentableDescription(v12);
    *buf = 138543618;
    v60 = v15;
    v61 = 2114;
    v62 = v16;
    _os_log_impl(&dword_1C42DC000, v14, OS_LOG_TYPE_DEFAULT, "Asked to morph from presentable: %{public}@ to presentable  %{public}@", buf, 0x16u);
  }

  if (!self->_presentingPresentables)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    presentingPresentables = self->_presentingPresentables;
    self->_presentingPresentables = v17;
  }

  dismissingPresentables = self->_dismissingPresentables;
  if (!dismissingPresentables)
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v21 = self->_dismissingPresentables;
    self->_dismissingPresentables = v20;

    dismissingPresentables = self->_dismissingPresentables;
  }

  [(NSMutableSet *)dismissingPresentables addObject:v11];
  [(NSMutableSet *)self->_presentingPresentables removeObject:v11];
  [(NSMutableSet *)self->_presentingPresentables addObject:v12];
  [(NSMutableSet *)self->_dismissingPresentables removeObject:v12];
  v22 = UIViewControllerFromPresentable(v11);
  v23 = UIViewControllerFromPresentable(v12);
  v24 = [v23 transitioningDelegate];
  if (objc_opt_respondsToSelector())
  {
    v25 = v24;
    goto LABEL_15;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v25 = [WeakRetained defaultTransitioningDelegateForPresenter:self];

    if (objc_opt_respondsToSelector())
    {
      goto LABEL_14;
    }
  }

  else
  {
    v25 = v24;
  }

  v27 = objc_alloc_init(BNDefaultBannerTransitioningDelegate);

  v25 = v27;
LABEL_14:
  [v23 setTransitioningDelegate:v25];

LABEL_15:
  [(BNContentViewController *)self _insertPresentable:v12 referencePresentable:v11 withTransitioningDelegate:v25 incrementingTier:0 addToTop:0];
  [(BNContentViewController *)self bs_addChildViewController:v23];
  v28 = [(BNContentViewController *)self _newBannerTransitionContextForMorphFromViewController:v22 toViewController:v23 animated:1];
  objc_storeStrong(&self->_activeBannerTransitionContext, v28);
  v29 = [v25 animationControllerMorphFromPresentedController:v22 presentingController:v23 sourceController:self userInfo:v43 stateChange:v7];
  objc_storeStrong(&self->_activeBannerTransitionAnimator, v29);
  v42 = [v28 transitionCoordinator];
  objc_initWeak(buf, self);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __96__BNContentViewController__morphFromPresentable_toPresentable_withOptions_userInfo_stateChange___block_invoke;
  v52[3] = &unk_1E81E4D38;
  objc_copyWeak(&v58, buf);
  v30 = v12;
  v53 = v30;
  v31 = v11;
  v54 = v31;
  v32 = v22;
  v55 = v32;
  v33 = v23;
  v56 = v33;
  v57 = self;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __96__BNContentViewController__morphFromPresentable_toPresentable_withOptions_userInfo_stateChange___block_invoke_70;
  v44[3] = &unk_1E81E4D60;
  objc_copyWeak(&v51, buf);
  v34 = v28;
  v45 = v34;
  v35 = v29;
  v46 = v35;
  v36 = v30;
  v47 = v36;
  v37 = v33;
  v48 = v37;
  v38 = v31;
  v49 = v38;
  v39 = v32;
  v50 = v39;
  [v42 animateAlongsideTransition:v52 completion:v44];
  v40 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [v40 presenter:self willPresentPresentable:v36 withTransitionCoordinator:v42 userInfo:v43];
  }

  if (objc_opt_respondsToSelector())
  {
    v41 = [v34 transitionCoordinator];
    [v40 presenter:self willDismissPresentable:v38 withTransitionCoordinator:v41 userInfo:v43];
  }

  [v34 performTransitionWithAnimator:v35];

  objc_destroyWeak(&v51);
  objc_destroyWeak(&v58);
  objc_destroyWeak(buf);
}

void __96__BNContentViewController__morphFromPresentable_toPresentable_withOptions_userInfo_stateChange___block_invoke(id *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  if (WeakRetained)
  {
    v3 = BNLogPresenting;
    if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = v3;
      v6 = BNEffectivePresentableDescription(v4);
      *buf = 138543362;
      v52 = v6;
      _os_log_impl(&dword_1C42DC000, v5, OS_LOG_TYPE_DEFAULT, "Presentable will appear as banner: %{public}@", buf, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      [a1[4] presentableWillAppearAsBanner:a1[4]];
    }

    v7 = BNLogPresenting;
    if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v9 = v7;
      v10 = BNEffectivePresentableDescription(v8);
      *buf = 138543362;
      v52 = v10;
      _os_log_impl(&dword_1C42DC000, v9, OS_LOG_TYPE_DEFAULT, "Presentable will disappear as banner: %{public}@", buf, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      [a1[5] presentableWillDisappearAsBanner:a1[5] withReason:@"swap"];
    }

    [a1[6] beginAppearanceTransition:0 animated:1];
    [a1[7] beginAppearanceTransition:1 animated:1];
    v11 = [a1[8] _topPresentable];
    v12 = UIViewControllerFromPresentable(v11);

    v13 = [v12 view];
    [v13 frame];
    [WeakRetained _insetFrame:v12 forViewController:?];
    v44 = v15;
    v45 = v14;
    v42 = v17;
    v43 = v16;

    if ([WeakRetained[124] tierCount] >= 2)
    {
      v40 = *(MEMORY[0x1E695F058] + 8);
      v41 = *MEMORY[0x1E695F058];
      v38 = *(MEMORY[0x1E695F058] + 24);
      v39 = *(MEMORY[0x1E695F058] + 16);
      v18 = 1;
      do
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v19 = [WeakRetained[124] tierAtIndex:{v18, *&v38, *&v39, *&v40, *&v41}];
        v20 = [v19 countByEnumeratingWithState:&v46 objects:v50 count:16];
        height = v38;
        width = v39;
        y = v40;
        x = v41;
        if (v20)
        {
          v25 = v20;
          v26 = *v47;
          height = v38;
          width = v39;
          y = v40;
          x = v41;
          do
          {
            v27 = 0;
            do
            {
              if (*v47 != v26)
              {
                objc_enumerationMutation(v19);
              }

              v28 = UIViewControllerFromPresentable(*(*(&v46 + 1) + 8 * v27));
              v29 = [v28 view];
              [v29 frame];
              [WeakRetained _insetFrame:v28 forViewController:?];
              v31 = v30;
              v33 = v32;
              v35 = v34;
              v37 = v36;
              v54.origin.x = x;
              v54.origin.y = y;
              v54.size.width = width;
              v54.size.height = height;
              v56.origin.x = v31;
              v56.origin.y = v33;
              v56.size.width = v35;
              v56.size.height = v37;
              v55 = CGRectUnion(v54, v56);
              x = v55.origin.x;
              y = v55.origin.y;
              width = v55.size.width;
              height = v55.size.height;
              [WeakRetained _presentedFrameForViewController:v28 withContentFrame:v31 afterContentWithFrame:{v33, v35, v37, v45, v44, v43, v42}];
              [v29 setFrame:?];

              ++v27;
            }

            while (v25 != v27);
            v25 = [v19 countByEnumeratingWithState:&v46 objects:v50 count:16];
          }

          while (v25);
        }

        ++v18;
        v44 = y;
        v45 = x;
        v42 = height;
        v43 = width;
      }

      while (v18 < [WeakRetained[124] tierCount]);
    }

    [WeakRetained _postLayoutChangeForVisibleNotifications];
  }
}

void __96__BNContentViewController__morphFromPresentable_toPresentable_withOptions_userInfo_stateChange___block_invoke_70(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _resetActiveBannerTransitionContextIfComplete:*(a1 + 32)])
    {
      [v3 _resetActiveBannerTransitionAnimator:*(a1 + 40)];
    }

    v4 = (a1 + 48);
    if ([v3[126] containsObject:*(a1 + 48)])
    {
      v5 = BNLogPresenting;
      if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEBUG))
      {
        __67__BNContentViewController_presentPresentable_withOptions_userInfo___block_invoke_58_cold_1(a1 + 48, v5);
      }
    }

    else
    {
      [*(a1 + 56) endAppearanceTransition];
      v6 = BNLogPresenting;
      if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *v4;
        v8 = v6;
        v9 = BNEffectivePresentableDescription(v7);
        v16 = 138543362;
        v17 = v9;
        _os_log_impl(&dword_1C42DC000, v8, OS_LOG_TYPE_DEFAULT, "Presentable did appear as banner: %{public}@", &v16, 0xCu);
      }

      if (objc_opt_respondsToSelector())
      {
        [*v4 presentableDidAppearAsBanner:*v4];
      }
    }

    [v3[125] removeObject:*(a1 + 48)];
    v10 = (a1 + 64);
    if ([v3[125] containsObject:*(a1 + 64)])
    {
      v11 = BNLogPresenting;
      if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEBUG))
      {
        __96__BNContentViewController__morphFromPresentable_toPresentable_withOptions_userInfo_stateChange___block_invoke_70_cold_2(v10, v11);
      }
    }

    else
    {
      [*(a1 + 72) endAppearanceTransition];
      v12 = BNLogPresenting;
      if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *v10;
        v14 = v12;
        v15 = BNEffectivePresentableDescription(v13);
        v16 = 138543362;
        v17 = v15;
        _os_log_impl(&dword_1C42DC000, v14, OS_LOG_TYPE_DEFAULT, "Presentable did disappear as banner: %{public}@", &v16, 0xCu);
      }

      if (objc_opt_respondsToSelector())
      {
        [*v10 presentableDidDisappearAsBanner:*v10 withReason:@"BNBannerRevocationReasonMorph"];
      }

      [v3 bs_removeChildViewController:*(a1 + 72)];
      [v3 _removePresentable:*(a1 + 64)];
      [v3 _resetPresentableForActiveGesture:*(a1 + 64)];
    }

    [v3[126] removeObject:*v10];
  }
}

- (void)preferredMinimumTopInsetDidInvalidate
{
  v3 = [(BNContentViewController *)self _topPresentable];
  v8 = UIViewControllerFromPresentable(v3);

  if (v8)
  {
    v4 = [(BNContentViewController *)self transitionCoordinator];
    if ([v4 isAnimated])
    {
    }

    else
    {
      v5 = [(BNContentViewController *)self view];
      v6 = [v5 window];
      v7 = [v6 _bn_isRotating];

      if ((v7 & 1) == 0)
      {
        [(BNContentViewController *)self _updateFrameForChildContentContainer:v8 minimumTopInsetUpdate:1];
      }
    }
  }
}

- (id)sizeTransitionAnimationSettingsForPresentable:(id)a3
{
  v3 = a3;
  v4 = UIViewControllerFromPresentable(v3);
  v5 = [v4 transitioningDelegate];

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 sizeTransitionAnimationSettingsForPresentable:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)userInterfaceStyleTransitionAnimationSettingsForPresentable:(id)a3 forTransitionToStyle:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v8 = [WeakRetained userInterfaceStyleTransitionAnimationSettingsForPresentable:v6 forTransitionToStyle:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldFenceAnimationsForPresentable:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained shouldFenceAnimationsForPresentable:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(BNContentViewController *)self _presentableForTouch:a4];
  if (v5)
  {
    objc_storeStrong(&self->_presentableForActiveGesture, v5);
    v6 = [(BNContentViewController *)self view];
    v7 = UIViewControllerFromPresentable(self->_presentableForActiveGesture);
    v8 = [v7 view];
    [v6 bringSubviewToFront:v8];

    v9 = BNLogPresenting;
    if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
    {
      presentableForActiveGesture = self->_presentableForActiveGesture;
      v11 = v9;
      v12 = BNEffectivePresentableDescription(presentableForActiveGesture);
      *buf = 138543362;
      v27 = v12;
      _os_log_impl(&dword_1C42DC000, v11, OS_LOG_TYPE_DEFAULT, "Updated presentable for active gesture: %{public}@ ", buf, 0xCu);
    }
  }

  if (self->_presentableForActiveGesture)
  {
    v13 = 1;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [(BNContentViewController *)self topPresentables];
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * i);
          if ([(BNContentViewController *)self _isTouchOutsideDismissalEnabledForPresentable:v19])
          {
            [(BNContentViewController *)self _dismissPresentable:v19 withReason:@"BNBannerRevocationReasonTouchOutsideDismissal" animated:1 userInfo:0];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    v13 = self->_presentableForActiveGesture != 0;
  }

  return v13;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([v5 type] == 10)
  {
    v6 = [(BNContentViewController *)self _presentableForScrollEvent:v5];
    if (v6)
    {
      objc_storeStrong(&self->_presentableForActiveGesture, v6);
      v7 = [(BNContentViewController *)self view];
      v8 = UIViewControllerFromPresentable(self->_presentableForActiveGesture);
      v9 = [v8 view];
      [v7 bringSubviewToFront:v9];

      v10 = BNLogPresenting;
      if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
      {
        presentableForActiveGesture = self->_presentableForActiveGesture;
        v12 = v10;
        v13 = BNEffectivePresentableDescription(presentableForActiveGesture);
        v15 = 138543362;
        v16 = v13;
        _os_log_impl(&dword_1C42DC000, v12, OS_LOG_TYPE_DEFAULT, "Updated presentable on scroll event for active gesture: %{public}@ ", &v15, 0xCu);
      }
    }
  }

  return 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  presentableForActiveGesture = self->_presentableForActiveGesture;
  if (presentableForActiveGesture)
  {
    v6 = [(NSMutableSet *)self->_dismissingPresentables containsObject:self->_presentableForActiveGesture];
  }

  else
  {
    v6 = 0;
  }

  v7 = presentableForActiveGesture != 0;
  v8 = v6 ^ 1;
  v9 = BNLogPresenting;
  if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = NSStringFromBOOL();
    v12 = NSStringFromBOOL();
    v13 = NSStringFromBOOL();
    v15 = 138543874;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&dword_1C42DC000, v10, OS_LOG_TYPE_DEFAULT, "Banner gesture should begin: %{public}@ (presentableForActiveGestureExists=%{public}@, presentableForActiveGestureIsDismissing=%{public}@", &v15, 0x20u);
  }

  return v7 & v8;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  if ([(BNContentViewController *)self _isLocalDraggingEnabledForPresentable:self->_presentableForActiveGesture])
  {
    presentableForActiveGesture = self->_presentableForActiveGesture;

    [(BNContentViewController *)self _resetPresentableForActiveGesture:presentableForActiveGesture];
  }
}

- (CGPoint)gestureRecognizerProxy:(id)a3 locationForTouch:(id)a4 inCoordinateSpace:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(BNContentViewController *)self view];
  [(BNContentViewController *)self _locationOfTouch:v8 inContainerViewForGesture:self->_panGesture];
  v11 = v10;
  v13 = v12;

  [v9 convertPoint:v7 toCoordinateSpace:{v11, v13}];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGPoint)gestureRecognizerProxy:(id)a3 velocityInCoordinateSpace:(id)a4
{
  v5 = a4;
  v6 = [(BNContentViewController *)self view];
  [(BNContentViewController *)self _velocityInContainerViewForGesture:self->_panGesture];
  [v6 convertPoint:v5 toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)gestureRecognizerProxy:(id)a3 translationInCoordinateSpace:(id)a4
{
  v5 = a4;
  v6 = [(BNContentViewController *)self view];
  [(BNContentViewController *)self _translationInContainerViewForGesture:self->_panGesture];
  [v6 convertPoint:v5 toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)gestureRecognizerProxy:(id)a3 visualTranslationInCoordinateSpace:(id)a4
{
  v5 = a4;
  v6 = [(BNContentViewController *)self view];
  [(BNContentViewController *)self _translationInContainerViewForGesture:self->_panGesture];
  _RubberBandedTranslationInContainerView(v6);
  [v6 convertPoint:v5 toCoordinateSpace:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

+ (id)_retargetableBannerTransitionAnimatorForAnimator:(id)a3
{
  v3 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 isRetargetable])
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)shouldNewTierBeAddedToTopForPresentable:(id)a3 withPresentable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = (objc_opt_respondsToSelector() & 1) == 0 || [(BNConsidering *)self->_authority shouldNewTierBeAddedToTopForPresentable:v6 withPresentable:v7]== 1;

  return v8;
}

- (BOOL)_isPresentableNotice:(id)a3
{
  v3 = a3;
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && [v3 presentableBehavior] == 1;

  return v4;
}

- (CGRect)_insetFrame:(CGRect)a3 forViewController:(id)a4
{
  [a4 bannerContentOutsets];

  UIRectInset();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_outsetFrame:(CGRect)a3 forViewController:(id)a4
{
  [a4 bannerContentOutsets];

  UIRectInset();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_presentedFrame:(BOOL)a3 forViewController:(id)a4 withContainerBounds:(CGRect)a5 overshoot:(BOOL)a6 targetTransform:(CGAffineTransform *)a7
{
  v8 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3;
  v15 = a4;
  v16 = [(BNContentViewController *)self view];
  v17 = [v16 window];

  v18 = *&a7->c;
  *&rect2[1] = *&a7->a;
  *&rect2[3] = v18;
  *&rect2[5] = *&a7->tx;
  if (CGAffineTransformIsIdentity(&rect2[1]))
  {
    v19 = [v17 interfaceOrientation];
  }

  else
  {
    v19 = [v17 _toWindowOrientation];
  }

  v20 = v19;
  v21 = [(BNContentViewController *)self _layoutManager];
  v22 = [v17 screen];
  v89 = y;
  v87 = width;
  [v21 useableContainerFrameInContainerBounds:v22 onScreen:v20 interfaceOrientation:{x, y, width, height}];
  v90 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v15 preferredContentSize];
    v32 = v31;
    v92.origin.x = v90;
    v92.origin.y = v25;
    v92.size.width = v27;
    v92.size.height = v29;
    v33 = CGRectGetHeight(v92) - v32;
    [WeakRetained presenterMinimumPreferredTopEdgeInset:self];
    v35 = v34;
    v93.origin.x = v90;
    v93.origin.y = v25;
    v93.size.width = v27;
    v93.size.height = v29;
    MinY = CGRectGetMinY(v93);
    v37 = fmax(v33 - MinY, 0.0);
    v38 = fmax(v35 - MinY, 0.0);
    if (v38 >= v37)
    {
      v38 = v37;
    }

    v90 = v90 + 0.0;
    v25 = v25 + v38;
    v29 = v29 - v38;
  }

  *rect2 = x;
  v88 = height;
  v86 = v25;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presenterMinimumPreferredEdgeInsets:self];
    v40 = v39;
    v42 = v41;
    v82 = v43;
    v85 = v44;
    v94.origin.x = v90;
    v94.origin.y = v25;
    v94.size.width = v27;
    v94.size.height = v29;
    v84 = fmax(v40 - CGRectGetMinY(v94), 0.0);
    v95.origin.x = v90;
    v95.origin.y = v25;
    v95.size.width = v27;
    v95.size.height = v29;
    v81 = fmax(v42 - CGRectGetMinX(v95), 0.0);
    v96.origin.x = x;
    v96.origin.y = v89;
    v96.size.width = v87;
    v96.size.height = height;
    v80 = CGRectGetHeight(v96);
    v97.origin.x = v90;
    v97.origin.y = v25;
    v97.size.width = v27;
    v97.size.height = v29;
    v83 = fmax(v82 - (v80 - CGRectGetMaxY(v97)), 0.0);
    v98.origin.x = x;
    v98.origin.y = v89;
    v98.size.width = v87;
    v98.size.height = height;
    v45 = CGRectGetWidth(v98);
    v99.origin.x = v90;
    v99.origin.y = v25;
    v99.size.width = v27;
    v99.size.height = v29;
    v46 = v27 - (v81 + fmax(v85 - (v45 - CGRectGetMaxX(v99)), 0.0));
    v100.origin.x = v90 + v81;
    v100.origin.y = v25 + v84;
    v100.size.width = v46;
    v100.size.height = v29 - (v84 + v83);
    if (CGRectGetWidth(v100) > 0.0)
    {
      v101.origin.x = v90 + v81;
      v101.origin.y = v25 + v84;
      v101.size.width = v46;
      v101.size.height = v29 - (v84 + v83);
      if (CGRectGetHeight(v101) != 0.0)
      {
        v90 = v90 + v81;
        v86 = v25 + v84;
        v27 = v46;
        v29 = v29 - (v84 + v83);
      }
    }
  }

  v47 = [v17 traitCollection];
  [v47 displayScale];
  v49 = v48;

  [v21 presentedFrameForContentWithPreferredSize:v27 inUseableContainerFrame:v29 containerBounds:v90 scale:{v86, v27, v29, rect2[0], *&v89, *&v87, *&height, v49}];
  [v15 preferredContentSizeWithPresentationSize:v50 containerSize:{v51, v87, height}];
  v53 = v52;
  v55 = v54;
  if (v13)
  {
    v56 = [(BNContentViewController *)self layoutManager];
    v78 = v49;
    v57 = v89;
    [v56 presentedFrameForContentWithPreferredSize:v53 inUseableContainerFrame:v55 containerBounds:v90 scale:{v86, v27, v29, rect2[0], *&v89, *&v87, *&height, v78}];
  }

  else
  {
    v56 = [(BNContentViewController *)self _layoutManager];
    v79 = v49;
    v57 = v89;
    [v56 dismissedFrameForContentWithPreferredSize:v8 inUseableContainerFrame:v53 containerBounds:v55 overshoot:v90 scale:{v86, v27, v29, rect2[0], *&v89, *&v87, *&height, v79}];
  }

  v62 = v58;
  v63 = v59;
  v64 = v60;
  v65 = v61;

  v102.origin.x = v62;
  v102.origin.y = v63;
  v102.size.width = v64;
  v102.size.height = v65;
  *&v104.origin.x = rect2[0];
  v104.origin.y = v57;
  v104.size.width = v87;
  v104.size.height = v88;
  if (!CGRectEqualToRect(v102, v104))
  {
    [(BNContentViewController *)self _outsetFrame:v15 forViewController:v62, v63, v64, v65];
  }

  UIRectIntegralWithScale();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;

  v74 = v67;
  v75 = v69;
  v76 = v71;
  v77 = v73;
  result.size.height = v77;
  result.size.width = v76;
  result.origin.y = v75;
  result.origin.x = v74;
  return result;
}

- (CGRect)_dismissedFrameForViewController:(id)a3 withContainerBounds:(CGRect)a4
{
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v9[0] = *MEMORY[0x1E695EFD0];
  v9[1] = v4;
  v9[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(BNContentViewController *)self _presentedFrame:0 forViewController:a3 withContainerBounds:0 overshoot:v9 targetTransform:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_dismissedFrameWithPaddingForViewController:(id)a3 withContainerBounds:(CGRect)a4 targetTransform:(CGAffineTransform *)a5
{
  v5 = *&a5->c;
  v10[0] = *&a5->a;
  v10[1] = v5;
  v10[2] = *&a5->tx;
  [(BNContentViewController *)self _presentedFrame:0 forViewController:a3 withContainerBounds:1 overshoot:v10 targetTransform:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_dismissedFrameWithPaddingForViewController:(id)a3 withContainerBounds:(CGRect)a4
{
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v9[0] = *MEMORY[0x1E695EFD0];
  v9[1] = v4;
  v9[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(BNContentViewController *)self _dismissedFrameWithPaddingForViewController:a3 withContainerBounds:v9 targetTransform:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_presentedFrameForViewController:(id)a3 withContainerBounds:(CGRect)a4 targetTransform:(CGAffineTransform *)a5
{
  v5 = *&a5->c;
  v10[0] = *&a5->a;
  v10[1] = v5;
  v10[2] = *&a5->tx;
  [(BNContentViewController *)self _presentedFrame:1 forViewController:a3 withContainerBounds:0 overshoot:v10 targetTransform:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_presentedFrameForViewController:(id)a3 withContainerBounds:(CGRect)a4
{
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v9[0] = *MEMORY[0x1E695EFD0];
  v9[1] = v4;
  v9[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(BNContentViewController *)self _presentedFrameForViewController:a3 withContainerBounds:v9 targetTransform:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (int64_t)_effectTierForPresentable:(id)a3
{
  v4 = [(BNTieredArray *)self->_presentables indexPathForObject:a3];
  v5 = [v4 tier];

  if ((v5 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v6 = v5 + 1;
    do
    {
      v7 = MEMORY[0x1E695DFD8];
      v8 = [(BNTieredArray *)self->_presentables tierAtIndex:v6 - 2];
      v9 = [v7 setWithArray:v8];
      v10 = [v9 isSubsetOfSet:self->_dismissingPresentables];

      if (v10)
      {
        v5 = v6 - 2;
      }

      --v6;
    }

    while (v6 > 1);
  }

  return v5;
}

- (CGRect)_presentedFrameForPresentable:(id)a3 withContainerBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = UIViewControllerFromPresentable(v9);
  v70 = width;
  v71 = height;
  [(BNContentViewController *)self _presentedFrameForViewController:v10 withContainerBounds:x, y, width, height];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(BNContentViewController *)self view];
  [v19 bounds];
  v21 = v20;
  v23 = v22;

  if (v21 != v16 || v23 != v18)
  {
    v25 = [(BNContentViewController *)self _effectTierForPresentable:v9];
    v26 = v25 - 1;
    if (v25 >= 1)
    {
      [(BNContentViewController *)self _insetFrame:v10 forViewController:v12, v14, v16, v18];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v35 = [(BNTieredArray *)self->_presentables topObjectInTier:v26];
      [(BNContentViewController *)self _presentedFrameForPresentable:v35 withContainerBounds:x, y, v70, v71];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v44 = UIViewControllerFromPresentable(v35);
      [(BNContentViewController *)self _insetFrame:v44 forViewController:v37, v39, v41, v43];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v53 = [(BNContentViewController *)self layoutManager];
      [v53 presentedFrameForContentWithFrame:v28 afterContentWithFrame:{v30, v32, v34, v46, v48, v50, v52}];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;

      [(BNContentViewController *)self _outsetFrame:v10 forViewController:v55, v57, v59, v61];
      v12 = v62;
      v14 = v63;
      v16 = v64;
      v18 = v65;
    }
  }

  v66 = v12;
  v67 = v14;
  v68 = v16;
  v69 = v18;
  result.size.height = v69;
  result.size.width = v68;
  result.origin.y = v67;
  result.origin.x = v66;
  return result;
}

- (CGRect)_presentedFrameForViewController:(id)a3 withContentFrame:(CGRect)a4 afterContentWithFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v14 = a3;
  v15 = [(BNContentViewController *)self _layoutManager];
  [v15 presentedFrameForContentWithFrame:v12 afterContentWithFrame:{v11, v10, v9, x, y, width, height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [(BNContentViewController *)self _outsetFrame:v14 forViewController:v17, v19, v21, v23];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (id)_newBannerTransitionContextForPresenting:(BOOL)a3 viewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  v9 = v8;
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v6)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(BNContentViewController *)self view];
  v13 = [BNTransitionContext transitionContextForTransitionFromViewController:v10 toViewController:v11 inContainerView:v12];

  [v13 setAnimated:v5];
  v14 = [(BNContentViewController *)self view];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if (v6)
  {
    [(BNContentViewController *)self _dismissedFrameForViewController:v9 withContainerBounds:v16, v18, v20, v22];
    [v13 setToStartFrame:?];
    [(BNContentViewController *)self _presentedFrameForViewController:v9 withContainerBounds:v16, v18, v20, v22];
    [v13 setToEndFrame:?];
  }

  else
  {
    [(BNContentViewController *)self _presentedFrameForViewController:v9 withContainerBounds:v16, v18, v20, v22];
    [v13 setFromStartFrame:?];
    [(BNContentViewController *)self _dismissedFrameWithPaddingForViewController:v9 withContainerBounds:v16, v18, v20, v22];
    [v13 setFromEndFrame:?];
  }

  return v13;
}

- (id)_newBannerTransitionContextForMorphFromViewController:(id)a3 toViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(BNContentViewController *)self view];
  v11 = [BNTransitionContext transitionContextForTransitionFromViewController:v9 toViewController:v8 inContainerView:v10];

  [v11 setAnimated:v5];
  v12 = [(BNContentViewController *)self view];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [v9 view];

  [v21 frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [(BNContentViewController *)self _presentedFrameForViewController:v8 withContainerBounds:v14, v16, v18, v20];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [v11 setToStartFrame:{v23, v25, v27, v29}];
  [v11 setToEndFrame:{v31, v33, v35, v37}];
  [v11 setFromStartFrame:{v23, v25, v27, v29}];
  [v11 setFromEndFrame:{v31, v33, v35, v37}];
  [v11 setRevocationReason:@"BNBannerRevocationReasonMorph"];
  return v11;
}

- (BOOL)_resetActiveBannerTransitionAnimator:(id)a3
{
  activeBannerTransitionAnimator = self->_activeBannerTransitionAnimator;
  if (activeBannerTransitionAnimator == a3)
  {
    self->_activeBannerTransitionAnimator = 0;
  }

  return activeBannerTransitionAnimator == a3;
}

- (BOOL)_resetActiveBannerTransitionContextIfComplete:(id)a3
{
  activeBannerTransitionContext = self->_activeBannerTransitionContext;
  if (activeBannerTransitionContext == a3)
  {
    v5 = [(BNTransitionContext *)activeBannerTransitionContext isComplete];
    if (v5)
    {
      v6 = self->_activeBannerTransitionContext;
      self->_activeBannerTransitionContext = 0;

      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_insertPresentable:(id)a3 referencePresentable:(id)a4 withTransitioningDelegate:(id)a5 incrementingTier:(BOOL)a6 addToTop:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v21 = a3;
  v12 = a4;
  v13 = a5;
  if (v21)
  {
    if (!self->_presentables)
    {
      v14 = objc_alloc_init(BNTieredArray);
      presentables = self->_presentables;
      self->_presentables = v14;
    }

    if (v13)
    {
      transitioningDelegates = self->_transitioningDelegates;
      if (!transitioningDelegates)
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v18 = self->_transitioningDelegates;
        self->_transitioningDelegates = v17;

        transitioningDelegates = self->_transitioningDelegates;
      }

      [(NSMutableSet *)transitioningDelegates addObject:v13];
    }

    if (![(BNTieredArray *)self->_presentables count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained presenterRequestsVisibility:self];
    }

    v20 = self->_presentables;
    if (v12)
    {
      [(BNTieredArray *)v20 addObject:v21 toTierOfObject:v12 addObjectToTop:v7];
    }

    else
    {
      [(BNTieredArray *)v20 addObject:v21 incrementingTier:v8 addTierToTop:v7];
    }
  }
}

- (void)_removePresentable:(id)a3
{
  if (a3)
  {
    presentables = self->_presentables;
    v5 = a3;
    [(BNTieredArray *)presentables removeObject:v5];
    v6 = UIViewControllerFromPresentable(v5);

    v8 = [v6 transitioningDelegate];

    if (v8)
    {
      [(NSMutableSet *)self->_transitioningDelegates removeObject:v8];
    }

    if (![(BNTieredArray *)self->_presentables count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained presenterRelinquishesVisibility:self];
    }
  }
}

- (void)_dismissPresentable:(id)a3 withReason:(id)a4 animated:(BOOL)a5 userInfo:(id)a6
{
  v7 = a5;
  v69 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10 && ([(NSMutableSet *)self->_dismissingPresentables containsObject:v10]& 1) == 0)
  {
    v47 = UIViewControllerFromPresentable(v10);
    v13 = [(BNContentViewController *)self childViewControllers];
    v14 = [v13 containsObject:v47];

    if (v14)
    {
      v15 = BNLogPresenting;
      if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = BNEffectivePresentableDescription(v10);
        v18 = @"without";
        *buf = 138543874;
        v64 = v17;
        v65 = 2114;
        if (v7)
        {
          v18 = @"with";
        }

        v66 = v11;
        v67 = 2114;
        v68 = v18;
        _os_log_impl(&dword_1C42DC000, v16, OS_LOG_TYPE_DEFAULT, "Dismissing presentable %{public}@ with reason '%{public}@' %{public}@ animation ", buf, 0x20u);
      }

      dismissingPresentables = self->_dismissingPresentables;
      if (!dismissingPresentables)
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v21 = self->_dismissingPresentables;
        self->_dismissingPresentables = v20;

        dismissingPresentables = self->_dismissingPresentables;
      }

      [(NSMutableSet *)dismissingPresentables addObject:v10];
      [(NSMutableSet *)self->_presentingPresentables removeObject:v10];
      v22 = [(BNContentViewController *)self _presentablesWithIdentification:v10 requiringUniqueMatch:1];
      v23 = [v22 count] == 0;

      v24 = [(BNContentViewController *)self _newBannerTransitionContextForPresenting:0 viewController:v47 animated:v7];
      objc_storeStrong(&self->_activeBannerTransitionContext, v24);
      [v24 setRevocationReason:v11];
      if (!v23 && (UIViewControllerFromPresentable(v10), v25 = objc_claimAutoreleasedReturnValue(), -[BNTransitionContext viewControllerForKey:](self->_activeBannerTransitionContext, "viewControllerForKey:", *MEMORY[0x1E69DE778]), v26 = objc_claimAutoreleasedReturnValue(), v27 = BSEqualObjects(), v26, v25, v27) && ([objc_opt_class() _retargetableBannerTransitionAnimatorForAnimator:self->_activeBannerTransitionAnimator], v28 = objc_claimAutoreleasedReturnValue(), v29 = v28, v28))
      {
        v43 = 0;
        v44 = v29;
        obj = v29;
      }

      else
      {
        v30 = [v47 transitioningDelegate];
        if (objc_opt_respondsToSelector())
        {
          if ([v11 isEqualToString:@"BNBannerRevocationReasonReplaceExisting"])
          {
            if (v12)
            {
              v31 = [v12 mutableCopy];
            }

            else
            {
              v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            v32 = v31;
            [v31 setObject:&unk_1F43BBDD8 forKey:@"BNBannerTransitionAnimationStyle"];
          }

          else
          {
            v32 = v12;
          }

          obj = [v30 animationControllerForDismissedController:v47 userInfo:v32];
          objc_storeStrong(&self->_activeBannerTransitionAnimator, obj);
        }

        else
        {
          obj = [v30 animationControllerForDismissedController:v47];
          v32 = v12;
          objc_storeStrong(&self->_activeBannerTransitionAnimator, obj);
        }

        v44 = 0;
        v43 = 1;
        v12 = v32;
      }

      v46 = [v24 transitionCoordinator];
      objc_initWeak(&location, self);
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __76__BNContentViewController__dismissPresentable_withReason_animated_userInfo___block_invoke;
      v55[3] = &unk_1E81E4D88;
      v33 = v10;
      v56 = v33;
      v34 = v11;
      v57 = v34;
      v35 = v47;
      v58 = v35;
      v61 = v7;
      objc_copyWeak(&v60, &location);
      v59 = self;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __76__BNContentViewController__dismissPresentable_withReason_animated_userInfo___block_invoke_106;
      v48[3] = &unk_1E81E4D38;
      objc_copyWeak(&v54, &location);
      v36 = v24;
      v49 = v36;
      v37 = obj;
      v50 = v37;
      v38 = v33;
      v51 = v38;
      v52 = v35;
      v53 = v34;
      [v46 animateAlongsideTransition:v55 completion:v48];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v40 = [v36 transitionCoordinator];
        [WeakRetained presenter:self willDismissPresentable:v38 withTransitionCoordinator:v40 userInfo:v12];
      }

      if (v43)
      {
        [v36 performTransitionWithAnimator:v37];
      }

      else
      {
        v41 = BNLogPresenting;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v42 = BNEffectivePresentableDescription(v38);
          [BNContentViewController _dismissPresentable:v42 withReason:buf animated:v41 userInfo:?];
        }

        [v44 retargetTransition:v36];
      }

      objc_destroyWeak(&v54);
      objc_destroyWeak(&v60);

      objc_destroyWeak(&location);
    }
  }
}

void __76__BNContentViewController__dismissPresentable_withReason_animated_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v45 = a2;
  v3 = BNLogPresenting;
  if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = BNEffectivePresentableDescription(v4);
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&dword_1C42DC000, v5, OS_LOG_TYPE_DEFAULT, "Presentable will disappear as banner: %{public}@", buf, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) presentableWillDisappearAsBanner:*(a1 + 32) withReason:{*(a1 + 40), v45}];
  }

  [*(a1 + 48) beginAppearanceTransition:0 animated:{*(a1 + 72), v45}];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = [WeakRetained[124] indexPathForObject:*(a1 + 32)];
  v9 = [v8 tier];

  v10 = [*(a1 + 56) view];
  [v10 bounds];
  v53 = v12;
  v54 = v11;
  v51 = v14;
  v52 = v13;

  if (v9 < [WeakRetained[124] tierCount])
  {
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
    v49 = *(MEMORY[0x1E695F058] + 8);
    v50 = *MEMORY[0x1E695F058];
    x = *MEMORY[0x1E695F058];
    y = v49;
    v47 = height;
    v48 = width;
    for (i = v9; i < [WeakRetained[124] tierCount]; ++i)
    {
      v55 = height;
      v56 = width;
      v57 = y;
      v58 = x;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v20 = [WeakRetained[124] tierAtIndex:i];
      v21 = [v20 countByEnumeratingWithState:&v61 objects:v68 count:16];
      height = v47;
      width = v48;
      y = v49;
      x = v50;
      if (!v21)
      {
        goto LABEL_23;
      }

      v22 = v21;
      v23 = *v62;
      height = v47;
      width = v48;
      y = v49;
      x = v50;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v62 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v61 + 1) + 8 * j);
          if (v25 != *(a1 + 32))
          {
            v26 = UIViewControllerFromPresentable(v25);
            if ([v26 bs_isAppearingOrAppeared])
            {
              v59 = width;
              v60 = height;
              v27 = [v26 view];
              [v27 frame];
              v29 = v28;
              v31 = v30;
              v33 = v32;
              v35 = v34;
              v70.origin.x = v58;
              v70.origin.y = v57;
              v70.size.width = v56;
              v70.size.height = v55;
              if (CGRectIsEmpty(v70))
              {
                if (i != v9)
                {
                  v36 = *(MEMORY[0x1E695EFD0] + 16);
                  *buf = *MEMORY[0x1E695EFD0];
                  v66 = v36;
                  v67 = *(MEMORY[0x1E695EFD0] + 32);
                  [WeakRetained _presentedFrame:1 forViewController:v26 withContainerBounds:0 overshoot:buf targetTransform:{v54, v53, v52, v51}];
                  goto LABEL_18;
                }
              }

              else
              {
                [WeakRetained _insetFrame:v26 forViewController:{v29, v31, v33, v35}];
                [WeakRetained _presentedFrameForViewController:v26 withContentFrame:? afterContentWithFrame:?];
LABEL_18:
                v29 = v37;
                v31 = v38;
                v33 = v39;
                v35 = v40;
              }

              [v27 setFrame:{v29, v31, v33, v35}];
              [WeakRetained _insetFrame:v26 forViewController:{v29, v31, v33, v35}];
              v73.origin.x = v41;
              v73.origin.y = v42;
              v73.size.width = v43;
              v73.size.height = v44;
              v71.origin.x = x;
              v71.origin.y = y;
              v71.size.width = v59;
              v71.size.height = v60;
              v72 = CGRectUnion(v71, v73);
              x = v72.origin.x;
              y = v72.origin.y;
              width = v72.size.width;
              height = v72.size.height;
            }

            continue;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v61 objects:v68 count:16];
      }

      while (v22);
LABEL_23:
    }
  }

  [WeakRetained _postLayoutChangeForVisibleNotifications];
}

void __76__BNContentViewController__dismissPresentable_withReason_animated_userInfo___block_invoke_106(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _resetActiveBannerTransitionContextIfComplete:*(a1 + 32)])
    {
      [v3 _resetActiveBannerTransitionAnimator:*(a1 + 40)];
    }

    v4 = (a1 + 48);
    if ([v3[125] containsObject:*(a1 + 48)])
    {
      v5 = BNLogPresenting;
      if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEBUG))
      {
        __96__BNContentViewController__morphFromPresentable_toPresentable_withOptions_userInfo_stateChange___block_invoke_70_cold_2(v4, v5);
      }
    }

    else
    {
      [*(a1 + 56) endAppearanceTransition];
      v6 = BNLogPresenting;
      if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *v4;
        v8 = v6;
        v9 = BNEffectivePresentableDescription(v7);
        v11 = 138543362;
        v12 = v9;
        _os_log_impl(&dword_1C42DC000, v8, OS_LOG_TYPE_DEFAULT, "Presentable did disappear as banner: %{public}@", &v11, 0xCu);
      }

      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 48) presentableDidDisappearAsBanner:*(a1 + 48) withReason:*(a1 + 64)];
      }

      v10 = [*(a1 + 56) view];
      [v10 removeFromSuperview];

      [*(a1 + 56) willMoveToParentViewController:0];
      [*(a1 + 56) removeFromParentViewController];
      [v3 _removePresentable:*(a1 + 48)];
      [v3 _resetPresentableForActiveGesture:*(a1 + 48)];
    }

    [v3[126] removeObject:*v4];
  }
}

- (id)_presentablesWithIdentification:(id)a3 requiringUniqueMatch:(BOOL)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_presentables;
  v8 = [(BNTieredArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (BNIsPresentableIdentifiedByIdentification(v13, v6, a4))
        {
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v10 addObject:{v13, v15}];
        }
      }

      v9 = [(BNTieredArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_dismissPresentablesWithIdentification:(id)a3 reason:(id)a4 animated:(BOOL)a5 userInfo:(id)a6
{
  v7 = a5;
  v23 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v12 = [(BNContentViewController *)self _presentablesWithIdentification:a3 requiringUniqueMatch:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(BNContentViewController *)self _dismissPresentable:*(*(&v18 + 1) + 8 * i) withReason:v10 animated:v7 userInfo:v11];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  return v12;
}

- (BOOL)_isDraggingDismissalEnabledForPresentable:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isDraggingDismissalEnabled];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)_isDraggingInteractionEnabledForPresentable:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isDraggingInteractionEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isDraggingEnabledForPresentable:(id)a3
{
  v4 = a3;
  v5 = [(BNContentViewController *)self _isDraggingDismissalEnabledForPresentable:v4]|| [(BNContentViewController *)self _isDraggingInteractionEnabledForPresentable:v4];

  return v5;
}

- (BOOL)_isLocalDraggingEnabledForPresentable:(id)a3
{
  if (self->_presentableForActiveGesture != a3)
  {
    return 1;
  }

  p_presentedFrameForPresentableForActiveGesture = &self->_presentedFrameForPresentableForActiveGesture;
  v5 = [(BNContentViewController *)self view];
  [v5 bounds];
  v3 = p_presentedFrameForPresentableForActiveGesture->size.height != v7 || p_presentedFrameForPresentableForActiveGesture->size.width != v6;

  return v3;
}

- (BOOL)_isTouchOutsideDismissalEnabledForPresentable:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 isTouchOutsideDismissalEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGPoint)_locationOfTouch:(id)a3 inContainerViewForGesture:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [(BNContentViewController *)self view];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presenter:self gestureRecognizer:v7 locationForTouch:v6 inView:v9];
  }

  else
  {
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = v7;
    }

    [v12 locationInView:v9];
  }

  v13 = v10;
  v14 = v11;

  v15 = v13;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)_locationOfScrollEvent:(id)a3 inContainerViewForGesture:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [(BNContentViewController *)self view];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained presenter:self gestureRecognizer:v6 locationForEvent:v7 inView:v9];
  }

  else
  {
    [v7 locationInView:v9];
  }

  v12 = v10;
  v13 = v11;

  v14 = v12;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (id)_presentableForGestureInView:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(BNContentViewController *)self topPresentables];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = UIViewControllerFromPresentable(v9);
        v11 = [v10 view];
        v12 = [v4 isDescendantOfView:v11];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_presentableForTouch:(id)a3
{
  [(BNContentViewController *)self _locationOfTouch:a3 inContainerViewForGesture:self->_panGesture];
  v5 = v4;
  v7 = v6;
  v8 = [(BNContentViewController *)self view];
  v9 = [v8 hitTest:0 withEvent:{v5, v7}];

  v10 = [(BNContentViewController *)self _presentableForGestureInView:v9];

  return v10;
}

- (id)_presentableForScrollEvent:(id)a3
{
  panGesture = self->_panGesture;
  v5 = a3;
  [(BNContentViewController *)self _locationOfScrollEvent:v5 inContainerViewForGesture:panGesture];
  v7 = v6;
  v9 = v8;
  v10 = [(BNContentViewController *)self view];
  v11 = [v10 hitTest:v5 withEvent:{v7, v9}];

  v12 = [(BNContentViewController *)self _presentableForGestureInView:v11];

  return v12;
}

- (void)_resetPresentableForActiveGesture:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  presentableForActiveGesture = self->_presentableForActiveGesture;
  if (presentableForActiveGesture)
  {
    v7 = presentableForActiveGesture == v4;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = BNLogPresenting;
    if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = BNEffectivePresentableDescription(v5);
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_1C42DC000, v9, OS_LOG_TYPE_DEFAULT, "Resetting presentable for active gesture: %{public}@ ", &v14, 0xCu);
    }

    [(UIPanGestureRecognizer *)self->_panGesture setEnabled:0];
    [(UIPanGestureRecognizer *)self->_panGesture setEnabled:1];
    v11 = self->_presentableForActiveGesture;
    self->_presentableForActiveGesture = 0;

    v12 = *(MEMORY[0x1E695F058] + 16);
    self->_presentedFrameForPresentableForActiveGesture.origin = *MEMORY[0x1E695F058];
    self->_presentedFrameForPresentableForActiveGesture.size = v12;
    panGestureProxyForActivePresentable = self->_panGestureProxyForActivePresentable;
    self->_panGestureProxyForActivePresentable = 0;
  }
}

- (CGPoint)_translationInContainerViewForGesture:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();
  v7 = [(BNContentViewController *)self view];
  if (v6)
  {
    [WeakRetained presenter:self gestureRecognizer:v4 translationInView:v7];
  }

  else
  {
    [v4 translationInView:v7];
  }

  v10 = v8;
  v11 = v9;

  v12 = v10;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)_velocityInContainerViewForGesture:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();
  v7 = [(BNContentViewController *)self view];
  if (v6)
  {
    [WeakRetained presenter:self gestureRecognizer:v4 velocityInView:v7];
  }

  else
  {
    [v4 velocityInView:v7];
  }

  v10 = v8;
  v11 = v9;

  v12 = v10;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)_handlePan:(id)a3
{
  v5 = a3;
  v6 = [v5 state];
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      if ([(BNContentViewController *)self _isLocalDraggingEnabledForPresentable:self->_presentableForActiveGesture])
      {
        [(BNContentViewController *)self _translationInContainerViewForGesture:v5];
        v29 = v28;
        if ([(BNContentViewController *)self _isDraggingDismissalEnabledForPresentable:self->_presentableForActiveGesture])
        {
          if (CGRectGetHeight(self->_presentedFrameForPresentableForActiveGesture) * 0.5 < -v29 || (-[BNContentViewController view](self, "view"), v30 = objc_claimAutoreleasedReturnValue(), [v5 velocityInView:v30], v32 = v31, v30, v32 < -100.0))
          {
            if (objc_opt_respondsToSelector())
            {
              [(BNPresentable *)self->_presentableForActiveGesture userInteractionDidEndForBannerForPresentable:self->_presentableForActiveGesture];
            }

            WeakRetained = objc_loadWeakRetained(&self->_poster);
            if (WeakRetained)
            {
              v33 = objc_opt_respondsToSelector();
              v34 = [BNPresentableIdentification uniqueIdentificationForPresentable:self->_presentableForActiveGesture];
              if (v33)
              {
                v52 = 0;
                v35 = &v52;
                v36 = [WeakRetained revokePresentablesWithIdentification:v34 reason:@"BNBannerRevocationReasonDragDismissal" options:0 animated:1 userInfo:0 error:&v52];
              }

              else
              {
                v51 = 0;
                v35 = &v51;
                v36 = [WeakRetained revokePresentablesWithIdentification:v34 reason:@"BNBannerRevocationReasonDragDismissal" options:0 userInfo:0 error:&v51];
              }

              v40 = v36;
              v41 = *v35;

              if (!v40)
              {
                v42 = BNLogPresenting;
                if (os_log_type_enabled(BNLogPresenting, OS_LOG_TYPE_ERROR))
                {
                  [(BNContentViewController *)&self->_presentableForActiveGesture _handlePan:v42, v41];
                }
              }
            }

            else
            {
              [(BNContentViewController *)self _dismissPresentable:self->_presentableForActiveGesture withReason:@"BNBannerRevocationReasonDragDismissal" animated:1 userInfo:0];
            }

            goto LABEL_33;
          }
        }
      }
    }

    else if (v6 != 4)
    {
      goto LABEL_34;
    }

    if (objc_opt_respondsToSelector())
    {
      [(BNPresentable *)self->_presentableForActiveGesture userInteractionDidEndForBannerForPresentable:self->_presentableForActiveGesture];
    }

    if ([(BNContentViewController *)self _isLocalDraggingEnabledForPresentable:self->_presentableForActiveGesture])
    {
      v37 = UIViewControllerFromPresentable(self->_presentableForActiveGesture);
      v38 = [v37 view];

      size = self->_presentedFrameForPresentableForActiveGesture.size;
      origin = self->_presentedFrameForPresentableForActiveGesture.origin;
      v50 = size;
      objc_initWeak(&location, self);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __38__BNContentViewController__handlePan___block_invoke_140;
      v43[3] = &unk_1E81E4DD8;
      WeakRetained = v38;
      v44 = WeakRetained;
      v46 = origin;
      v47 = v50;
      objc_copyWeak(&v45, &location);
      [BNBannerTransitionAnimator animateInteractive:0 animations:v43 completion:0];
      [(BNPanGestureProxyPrivate *)self->_panGestureProxyForActivePresentable sendAction];
      [(BNContentViewController *)self _resetPresentableForActiveGesture:self->_presentableForActiveGesture];
      objc_destroyWeak(&v45);

      objc_destroyWeak(&location);
LABEL_33:
    }
  }

  else if (v6 == 1)
  {
    presentableForActiveGesture = self->_presentableForActiveGesture;
    if (!presentableForActiveGesture)
    {
      [(BNContentViewController *)a2 _handlePan:&self->_presentableForActiveGesture, &origin];
      presentableForActiveGesture = *&origin.width;
    }

    v18 = [(BNContentViewController *)self view];
    [v18 bounds];
    [(BNContentViewController *)self _presentedFrameForPresentable:presentableForActiveGesture withContainerBounds:?];
    self->_presentedFrameForPresentableForActiveGesture.origin.x = v19;
    self->_presentedFrameForPresentableForActiveGesture.origin.y = v20;
    self->_presentedFrameForPresentableForActiveGesture.size.width = v21;
    self->_presentedFrameForPresentableForActiveGesture.size.height = v22;

    if (objc_opt_respondsToSelector())
    {
      [(BNPresentable *)self->_presentableForActiveGesture userInteractionWillBeginForBannerForPresentable:self->_presentableForActiveGesture];
    }

    if ([(BNContentViewController *)self _isDraggingEnabledForPresentable:self->_presentableForActiveGesture]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      v23 = [BNPanGestureLocalProxy alloc];
      panGesture = self->_panGesture;
      v25 = [(BNContentViewController *)self view];
      v26 = [(BNPanGestureLocalProxy *)v23 initWithPanGestureRecognizer:panGesture containerView:v25];
      panGestureProxyForActivePresentable = self->_panGestureProxyForActivePresentable;
      self->_panGestureProxyForActivePresentable = v26;

      [(BNPanGestureProxyPrivate *)self->_panGestureProxyForActivePresentable setDelegate:self];
      [(BNPresentable *)self->_presentableForActiveGesture draggingDidBeginWithGestureProxy:self->_panGestureProxyForActivePresentable];
      [(BNPanGestureProxyPrivate *)self->_panGestureProxyForActivePresentable sendAction];
    }
  }

  else if (v6 == 2 && [(BNContentViewController *)self _isLocalDraggingEnabledForPresentable:self->_presentableForActiveGesture])
  {
    x = self->_presentedFrameForPresentableForActiveGesture.origin.x;
    y = self->_presentedFrameForPresentableForActiveGesture.origin.y;
    origin = self->_presentedFrameForPresentableForActiveGesture.size;
    WeakRetained = [(BNContentViewController *)self view];
    [(BNContentViewController *)self _translationInContainerViewForGesture:v5];
    v11 = v10;
    if (v10 < 0.0 && [(BNContentViewController *)self _isDraggingDismissalEnabledForPresentable:self->_presentableForActiveGesture]|| v11 >= 0.0 && [(BNContentViewController *)self _isDraggingInteractionEnabledForPresentable:self->_presentableForActiveGesture])
    {
      _RubberBandedTranslationInContainerView(WeakRetained);
      v13 = y + v12;
      v14 = UIViewControllerFromPresentable(self->_presentableForActiveGesture);
      v15 = [v14 view];

      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __38__BNContentViewController__handlePan___block_invoke;
      v53[3] = &unk_1E81E4DB0;
      v56 = x;
      v57 = v13;
      v58 = origin;
      v54 = v15;
      v55 = self;
      v16 = v15;
      [BNBannerTransitionAnimator animateInteractive:1 animations:v53 completion:0];
    }

    goto LABEL_33;
  }

LABEL_34:
}

uint64_t __38__BNContentViewController__handlePan___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 40);

  return [v2 _postLayoutChangeForVisibleNotifications];
}

void __38__BNContentViewController__handlePan___block_invoke_140(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _postLayoutChangeForVisibleNotifications];
}

- (BNPosting)poster
{
  WeakRetained = objc_loadWeakRetained(&self->_poster);

  return WeakRetained;
}

- (BNPresentingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)presentPresentable:(void *)a1 withOptions:(uint8_t *)buf userInfo:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1C42DC000, log, OS_LOG_TYPE_DEBUG, "Retargeting animation of presentable for presentation: %{public}@", buf, 0xCu);
}

void __67__BNContentViewController_presentPresentable_withOptions_userInfo___block_invoke_58_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a1, a2);
  v3 = OUTLINED_FUNCTION_2_1();
  v4 = BNEffectivePresentableDescription(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_1C42DC000, v5, v6, "Presentable _would_ appear as banner, but appears to be dismissing: %{public}@", v7, v8, v9, v10, v11);
}

void __96__BNContentViewController__morphFromPresentable_toPresentable_withOptions_userInfo_stateChange___block_invoke_70_cold_2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a1, a2);
  v3 = OUTLINED_FUNCTION_2_1();
  v4 = BNEffectivePresentableDescription(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3(&dword_1C42DC000, v5, v6, "Presentable _would_ disappear as banner, but appears to be presenting: %{public}@", v7, v8, v9, v10, v11);
}

- (void)_dismissPresentable:(os_log_t)log withReason:animated:userInfo:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1C42DC000, log, OS_LOG_TYPE_DEBUG, "Retargeting animation of presentable for dismissal: %{public}@", buf, 0xCu);
}

- (void)_handlePan:(uint64_t)a3 .cold.1(void **a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2;
  v6 = BNEffectivePresentableDescription(v4);
  OUTLINED_FUNCTION_1();
  v8 = 2114;
  v9 = a3;
  _os_log_error_impl(&dword_1C42DC000, v5, OS_LOG_TYPE_ERROR, "Encountered error attempting to revoke presentable for active gesture '%{public}@': %{public}@", v7, 0x16u);
}

- (void)_handlePan:(void *)a3 .cold.2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"BNContentViewController.m" lineNumber:1186 description:{@"Pan gesture began, but there's no presentable associated with the gesture."}];

  *a4 = *a3;
}

@end