@interface BCCardStackViewController
+ (BOOL)_alwaysUseSlideAnimation;
+ (id)_pendingCardStackViewControllers;
+ (void)appendCardsWithData:(id)a3 fromViewController:(id)a4 identifier:(id)a5 completion:(id)a6;
+ (void)pushCardsWithDataSource:(id)a3 focusedIndex:(unint64_t)a4 animated:(BOOL)a5 fromViewController:(id)a6 completion:(id)a7;
- (BCCardStackViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BOOL)bc_analyticsVisibilityOfChild:(id)a3;
- (BOOL)isTopCardSetViewController:(id)a3;
- (BOOL)scrollCardForFeedOptionsVisible:(id)a3;
- (CGRect)initialFrame;
- (CGSize)lastLayoutStackSize;
- (Class)cardNavigationControllerForCardSet:(id)a3;
- (NSSet)messagesAlreadyDisplayed;
- (UIEdgeInsets)contentInset;
- (UIEdgeInsets)safeAreaInsetsFromWindowCorners;
- (id)_navigationControllerForViewController:(id)a3;
- (id)_popCardFrontAnimatorForCardSet:(id)a3 cardSetViewControllerToUnfade:(id)a4 duration:(double)a5;
- (id)_pushCardBackAnimatorForCardSet:(id)a3 cardSetViewControllerToFade:(id)a4 duration:(double)a5;
- (id)_pushCardsWithDataSource:(id)a3 focusedIndex:(unint64_t)a4 animated:(BOOL)a5 presentingViewController:(id)a6;
- (id)animationControllerForDismissedController:(id)a3;
- (id)childViewControllerForStatusBarStyle;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (id)contentViewControllerForCardSet:(id)a3 index:(unint64_t)a4 cardContentScrollManager:(id)a5;
- (id)effectiveAnalyticsTrackerForTopCard;
- (id)im_visibleChildViewControllers;
- (id)keyCommands;
- (id)topCardSetViewController;
- (int64_t)_animationTypeForDismissingCardSetViewController:(id)a3 distanceToCoverSource:(double *)a4;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)_indexOfChildViewControllerToSuspendOrResume;
- (unint64_t)cardCountForCardSet:(id)a3;
- (unint64_t)cardStackDepth;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addAdornmentViewsToParentView:(id)a3;
- (void)_applyCardSetViewController:(id)a3 withTransform:(unint64_t)a4;
- (void)_invalidateConfiguration;
- (void)_layoutAdornmentViews;
- (void)_layoutStackByChangingMode:(BOOL)a3 newViewSize:(CGSize)a4;
- (void)_layoutUnderlyingCardSetViewController:(id)a3 animated:(BOOL)a4;
- (void)_popCardsAnimated:(BOOL)a3 popAll:(BOOL)a4 animationType:(int64_t)a5 prefersCrossfade:(BOOL)a6 velocity:(double)a7 reason:(int64_t)a8 completion:(id)a9;
- (void)_resumeAndRebuildChildViewControllerAsNeeded;
- (void)_scaleBackCardSetViewController:(id)a3 shiftUp:(BOOL)a4 cumulative:(BOOL)a5;
- (void)_suspendAndTeardownChildViewControllerAsNeeded;
- (void)_updateStatusBarBackgroundOpacity;
- (void)_updateStatusBarBackgroundOpacityForCardSetViewController:(id)a3;
- (void)cardSetViewController:(id)a3 animatorForExpanding:(id)a4;
- (void)cardSetViewController:(id)a3 animatorForInteractiveDismiss:(id)a4;
- (void)cardSetViewController:(id)a3 animatorForUnexpanding:(id)a4;
- (void)cardSetViewController:(id)a3 didCommitDismissWithVelocity:(double)a4 interactiveAnimator:(id)a5;
- (void)cardSetViewController:(id)a3 prepareForNavigationTransitionWithContext:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)lockChildForStatusBarStyle;
- (void)notifyAllCardsAboutMessageDisplayed:(id)a3 from:(id)a4;
- (void)popCardsAnimated:(BOOL)a3 reason:(int64_t)a4;
- (void)presentingViewControllerSafeAreaInsetsDidChange:(id)a3;
- (void)pushCardsWithDataSource:(id)a3 focusedIndex:(unint64_t)a4 animated:(BOOL)a5;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setToolbarHeight:(double)a3;
- (void)viewController:(id)a3 didDisplayMessageWithId:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillAppearFromTabChange;
- (void)viewWillDisappearFromTabChange;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BCCardStackViewController

- (BCCardStackViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v18.receiver = self;
  v18.super_class = BCCardStackViewController;
  v4 = [(BCCardStackViewController *)&v18 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_presentingViewControllerIsFullScreen = 1;
    v6 = +[NSMapTable strongToStrongObjectsMapTable];
    dataSourceMap = v5->_dataSourceMap;
    v5->_dataSourceMap = v6;

    [(BCCardStackViewController *)v5 setModalPresentationStyle:6];
    [(BCCardStackViewController *)v5 setTransitioningDelegate:v5];
    v8 = [[BCLayoutConfigurationEnvironment alloc] initWithViewController:v5];
    v9 = [[BCCardStackConfiguration alloc] initWithEnvironment:v8];
    configuration = v5->_configuration;
    v5->_configuration = v9;

    v11 = +[NSMapTable weakToStrongObjectsMapTable];
    unhideBlocksByCardSet = v5->_unhideBlocksByCardSet;
    v5->_unhideBlocksByCardSet = v11;

    v5->_ignoreChildStatusBarStyle = 0;
    [(BCCardStackViewController *)v5 bc_setNavBarVisible:0];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INTERACTIVE, 0);
    v15 = dispatch_queue_create("BCCardStackViewController.transitionSetupQueue", v14);
    transitionSetupQueue = v5->_transitionSetupQueue;
    v5->_transitionSetupQueue = v15;
  }

  return v5;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = BCCardStackViewController;
  [(BCCardStackViewController *)&v25 viewDidLoad];
  v3 = [BCCardStackBarBackgroundContainingView alloc];
  v4 = [(BCCardStackViewController *)self statusBarBackgroundController];
  v5 = [(BCCardStackBarBackgroundContainingView *)v3 initWithStatusBarBackgroundController:v4];

  [(BCCardStackViewController *)self initialFrame];
  [(BCCardStackBarBackgroundContainingView *)v5 setFrame:?];
  v6 = [(BCCardStackViewController *)self view];
  -[BCCardStackBarBackgroundContainingView setAutoresizingMask:](v5, "setAutoresizingMask:", [v6 autoresizingMask]);

  [(BCCardStackViewController *)self setView:v5];
  v7 = +[UIColor clearColor];
  v8 = [(BCCardStackViewController *)self view];
  [v8 setBackgroundColor:v7];

  v9 = [UIView alloc];
  v10 = [(BCCardStackViewController *)self view];
  [v10 bounds];
  v11 = [v9 initWithFrame:{0.0, 0.0}];
  safeAreaCornerInsetsCapturingView = self->_safeAreaCornerInsetsCapturingView;
  self->_safeAreaCornerInsetsCapturingView = v11;

  [(UIView *)self->_safeAreaCornerInsetsCapturingView setAutoresizingMask:2];
  [(UIView *)self->_safeAreaCornerInsetsCapturingView _setSafeAreaCornerAdaptation:3];
  [(UIView *)self->_safeAreaCornerInsetsCapturingView setHidden:1];
  v13 = [(BCCardStackViewController *)self view];
  [v13 addSubview:self->_safeAreaCornerInsetsCapturingView];

  v14 = [UIScrollView alloc];
  v15 = [(BCCardStackViewController *)self view];
  [v15 bounds];
  v16 = [v14 initWithFrame:?];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v16;

  [(UIScrollView *)self->_backgroundView _setPocketsEnabled:0];
  [(UIScrollView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_backgroundView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_backgroundView setAlpha:0.0];
  v18 = [UIColor colorWithWhite:0.0 alpha:0.7];
  [(UIScrollView *)self->_backgroundView setBackgroundColor:v18];

  v19 = [(BCCardStackViewController *)self view];
  [v19 bounds];
  v21 = v20;
  v23 = v22;

  [(UIScrollView *)self->_backgroundView setContentSize:v21, v23 + 100.0];
  [(UIScrollView *)self->_backgroundView setContentOffset:0.0, 100.0];
  [(UIScrollView *)self->_backgroundView setDelegate:self];
  v24 = [(BCCardStackViewController *)self view];
  [(BCCardStackViewController *)self _addAdornmentViewsToParentView:v24];

  [(BCCardStackViewController *)self setModalPresentationCapturesStatusBarAppearance:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BCCardStackViewController;
  [(BCCardStackViewController *)&v4 viewWillAppear:a3];
  [(BCCardStackViewController *)self _updateStatusBarBackgroundOpacity];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = BCCardStackViewController;
  [(BCCardStackViewController *)&v8 viewDidAppear:a3];
  v4 = UIAccessibilityLayoutChangedNotification;
  v5 = [(BCCardStackViewController *)self topCardSetViewController];
  v6 = [v5 currentCardViewController];
  v7 = [v6 auxiliaryNavigationBarView];
  UIAccessibilityPostNotification(v4, v7);
}

- (UIEdgeInsets)safeAreaInsetsFromWindowCorners
{
  [(UIView *)self->_safeAreaCornerInsetsCapturingView safeAreaInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (int64_t)preferredStatusBarStyle
{
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  v3 = [(BCCardStackViewController *)self configuration];
  v4 = [v3 cardsCanExpand] ^ 1;

  return v4;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (isPad())
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)lockChildForStatusBarStyle
{
  v3 = [(BCCardStackViewController *)self childViewControllerForStatusBarStyle];
  [(BCCardStackViewController *)self setLockedChildForStatusBarStyle:v3];
}

- (id)childViewControllerForStatusBarStyle
{
  if ([(BCCardStackViewController *)self ignoreChildStatusBarStyle])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(BCCardStackViewController *)self lockedChildForStatusBarStyle];

    if (v4)
    {
      v3 = [(BCCardStackViewController *)self lockedChildForStatusBarStyle];
    }

    else
    {
      v5 = [(BCCardStackViewController *)self childViewControllers];
      v6 = [v5 lastObject];

      if ([v6 expanded])
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v3 = v7;
    }
  }

  return v3;
}

- (void)_invalidateConfiguration
{
  v3 = [(BCCardStackViewController *)self configuration];
  v4 = [v3 cardsCanExpand];

  v5 = [(BCCardStackViewController *)self configuration];
  [v5 invalidate];

  v6 = [(BCCardStackViewController *)self configuration];
  v7 = [v6 cardsCanExpand];

  v10 = [(BCCardStackViewController *)self view];
  [v10 bounds];
  [(BCCardStackViewController *)self _layoutStackByChangingMode:v4 ^ v7 newViewSize:v8, v9];
}

- (void)viewWillAppearFromTabChange
{
  [(BCCardStackViewController *)self _invalidateConfiguration];
  v3 = [(BCCardStackViewController *)self childViewControllers];
  v5 = [v3 lastObject];

  [v5 resumeAndRebuildForReason:@"card stack: card set will appear from tab change"];
  [(BCCardStackViewController *)self _updateStatusBarBackgroundOpacity];
  v4 = [(BCCardStackViewController *)self statusBarBackgroundController];
  [v4 updateParentViewOfCardStackBackgroundViewWithParentViewController:self];
}

- (void)viewWillDisappearFromTabChange
{
  v2 = [(BCCardStackViewController *)self statusBarBackgroundController];
  [v2 setOpacity:0.0];
}

- (void)presentingViewControllerSafeAreaInsetsDidChange:(id)a3
{
  v4 = [a3 view];
  [v4 safeAreaInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = isPad();
  v12 = 0.0;
  if (v11)
  {
    v12 = 22.0;
  }

  [(BCCardStackViewController *)self setContentInset:0.0, v6, v8 + v12, v10];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(BCCardStackViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  if (!self->_transitionInProgress && (self->_lastLayoutStackSize.width != v5 || self->_lastLayoutStackSize.height != v7))
  {
    self->_lastLayoutStackSize.width = v5;
    self->_lastLayoutStackSize.height = v7;
    v9 = [(BCCardStackViewController *)self configuration];
    v10 = [v9 cardsCanExpand];

    v11 = [(BCCardStackViewController *)self configuration];
    [v11 invalidate];

    v12 = [(BCCardStackViewController *)self configuration];
    v13 = [v12 cardsCanExpand];

    [(BCCardStackViewController *)self _layoutStackByChangingMode:v10 ^ v13 newViewSize:v5, v7];
  }

  v14.receiver = self;
  v14.super_class = BCCardStackViewController;
  [(BCCardStackViewController *)&v14 viewWillLayoutSubviews];
}

- (BOOL)scrollCardForFeedOptionsVisible:(id)a3
{
  v4 = a3;
  v5 = [(BCCardStackViewController *)self childViewControllers];
  v6 = [v5 lastObject];

  if (v6)
  {
    v7 = [(BCCardStackViewController *)self dataSourceMap];
    v8 = [v7 objectForKeyedSubscript:v6];

    v9 = [v8 cardIndexForFeedOptions:v4];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v11 = v9;
      v12 = [v6 focusedIndex];
      v13 = [(BCCardStackViewController *)self configuration];
      if ([v13 cardsCanExpand])
      {
        v14 = [v6 currentCardViewController];
        v15 = [v14 itemPushedOnCard];
      }

      else
      {
        v15 = 0;
      }

      v16 = [(BCCardStackViewController *)self configuration];
      v17 = 0;
      if ([v16 cardsCanExpand] && v11 != v12)
      {
        v18 = [v6 currentCardViewController];
        v17 = [v18 expanded];
      }

      v19 = [v6 itemPushedOnCardAtIndex:v11];
      v10 = 0;
      if (((v15 | v17) & 1) == 0 && (v19 & 1) == 0 && v11 >= (v12 - 1) && v11 <= (v12 + 1))
      {
        [v6 clearSavedContentOffsetsForCardAtIndex:v11];
        v10 = 1;
        [v6 setFocusedIndex:v11 animated:1];
        [v6 scrollToTopCardAtIndex:v11 animated:1];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v17.receiver = self;
  v17.super_class = BCCardStackViewController;
  v7 = a4;
  [(BCCardStackViewController *)&v17 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = BCCardModelLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v22.width = width;
    v22.height = height;
    v9 = NSStringFromCGSize(v22);
    v10 = [(BCCardStackViewController *)self view];
    [v10 size];
    v11 = NSStringFromCGSize(v23);
    *buf = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "BCCardStack viewWillTransitionToSize: %@ from: %@", buf, 0x16u);
  }

  v12 = [(BCCardStackViewController *)self configuration];
  v13 = [v12 cardsCanExpand];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_2D770;
  v15[3] = &unk_2C8CF0;
  *&v15[5] = width;
  *&v15[6] = height;
  v15[4] = self;
  v16 = v13;
  [v7 animateAlongsideTransition:v15 completion:&stru_2C8D10];

  v14 = [(BCCardStackViewController *)self configuration];
  [v14 invalidate];
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  if ((a3 & 4) != 0)
  {
    v5 = [(BCCardStackViewController *)self topCardSetViewController];
    v6 = [v5 currentCardViewController];

    v7 = [v6 cardNavigationController];
    v8 = [v7 viewControllers];
    v9 = [v8 count];

    if (v9 < 2)
    {
      v4 = [v6 scrollView];
    }

    else
    {
      v10 = [v6 cardNavigationController];
      v11 = [v10 topViewController];
      v4 = [v11 contentScrollViewForEdge:a3];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = BCCardStackViewController;
    v4 = [(BCCardStackViewController *)&v13 contentScrollViewForEdge:a3];
  }

  return v4;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  left = a3.left;
  top = a3.top;
  v5 = self->_contentInset.left;
  right = self->_contentInset.right;
  if (v5 != a3.left || self->_contentInset.top != a3.top || right != a3.right || self->_contentInset.bottom != a3.bottom)
  {
    v10 = a3.right;
    bottom = a3.bottom;
    self->_contentInset = a3;
    v13 = BCCardModelLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = self;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "contentInset updated on BCCardStackViewController: %@", &v22, 0xCu);
    }

    v14 = [(BCCardStackViewController *)self topCardSetViewController];
    [v14 setContentInset:{top, left, bottom, v10}];

    if (left != v5 || v10 != right)
    {
      v16 = [(BCCardStackViewController *)self childViewControllers];
      v17 = [v16 count];

      if (v17 >= 2)
      {
        objc_opt_class();
        v18 = [(BCCardStackViewController *)self childViewControllers];
        v19 = [(BCCardStackViewController *)self childViewControllers];
        v20 = [v18 objectAtIndexedSubscript:{objc_msgSend(v19, "count") - 2}];
        v21 = BUDynamicCast();
        [v21 setContentInset:{top, left, bottom, v10}];
      }
    }
  }
}

- (void)setToolbarHeight:(double)a3
{
  if (self->_toolbarHeight != a3)
  {
    self->_toolbarHeight = a3;
    v5 = [(BCCardStackViewController *)self presentedViewController];
    [v5 additionalSafeAreaInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(BCCardStackViewController *)self presentedViewController];
    [v12 setAdditionalSafeAreaInsets:{a3, v7, v9, v11}];

    v13 = [(BCCardStackViewController *)self configuration];
    [v13 setToolbarHeight:a3];

    if (![(BCCardStackViewController *)self transitionInProgress])
    {
      v16 = [(BCCardStackViewController *)self view];
      [v16 bounds];
      [(BCCardStackViewController *)self _layoutStackByChangingMode:1 newViewSize:v14, v15];
    }
  }
}

- (unint64_t)cardStackDepth
{
  v2 = [(BCCardStackViewController *)self dataSourceMap];
  v3 = [v2 count];

  return v3;
}

+ (id)_pendingCardStackViewControllers
{
  if (qword_342160 != -1)
  {
    sub_1E5A0C();
  }

  v3 = qword_342158;

  return v3;
}

+ (void)pushCardsWithDataSource:(id)a3 focusedIndex:(unint64_t)a4 animated:(BOOL)a5 fromViewController:(id)a6 completion:(id)a7
{
  v9 = a5;
  v11 = a3;
  v12 = a7;
  v13 = [a6 bc_effectiveCardPresentingViewController];
  v14 = [v13 presentingViewController];

  if (v14)
  {
    v15 = [v13 presentingViewController];
    v16 = [v15 presentedViewController];
    v17 = [v16 modalPresentationStyle];

    v18 = (v17 - 3) < 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v18 = 1;
  }

  v19 = [v13 view];
  v20 = [v19 window];
  v21 = [v20 firstResponder];
  [v21 resignFirstResponder];

  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_2E2E0;
  v60 = sub_2E2F0;
  v61 = [v13 cardStackViewController];
  v22 = v57[5];
  if (!v22)
  {
    v23 = [v13 bc_firstVisibleChildViewControllerOfClass:objc_opt_class() includePresented:1];
    v24 = v57[5];
    v57[5] = v23;

    v22 = v57[5];
  }

  if (v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = v13;
  }

  [v25 bc_dismissIfSafeAnimated:0];
  v26 = v57[5];
  if (v26)
  {
    if ([v26 transitionInProgress])
    {
      v27 = BCCardModelLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *v44 = 0;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Failed to push cards - the existing BCCardStackViewController has a transition in progress", v44, 2u);
      }

      v28 = objc_retainBlock(v12);
      v29 = v28;
      if (v28)
      {
        (*(v28 + 2))(v28);
      }

      goto LABEL_34;
    }

    if ([v11 numberOfCards:v57[5]] == &dword_0 + 1)
    {
      objc_opt_class();
      v35 = [v11 representedObjectForCardAtIndex:0];
      v36 = BUDynamicCast();

      if ([v11 alwaysPresentNewCardSetForFeedOptions:v36])
      {
      }

      else
      {
        v42 = [v57[5] scrollCardForFeedOptionsVisible:v36];

        if (v42)
        {
          goto LABEL_29;
        }
      }
    }

    [v57[5] pushCardsWithDataSource:v11 focusedIndex:a4 animated:v9];
LABEL_29:
    v43 = objc_retainBlock(v12);
    v29 = v43;
    if (v43)
    {
      (*(v43 + 2))(v43);
    }

    goto LABEL_34;
  }

  v29 = +[BCCardStackViewController _pendingCardStackViewControllers];
  v30 = [v29 objectForKeyedSubscript:v13];
  v31 = v57[5];
  v57[5] = v30;

  if (v57[5])
  {
    v32 = BCCardModelLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *v44 = 0;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "Failed to push cards - a pending BCCardStackViewController exists", v44, 2u);
    }

    v33 = objc_retainBlock(v12);
    v34 = v33;
    if (v33)
    {
      (*(v33 + 2))(v33);
    }
  }

  else
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_2E2F8;
    v47[3] = &unk_2C8DA8;
    v52 = &v56;
    v37 = v13;
    v48 = v37;
    v54 = v18;
    v49 = v11;
    v53 = a4;
    v55 = v9;
    v50 = v29;
    v51 = v12;
    v38 = objc_retainBlock(v47);
    if (isPhone())
    {
      objc_opt_class();
      v39 = [v37 bc_windowForViewController];
      v40 = [v39 windowScene];
      v41 = BUDynamicCast();

      if (v41)
      {
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_2E6F8;
        v45[3] = &unk_2C8548;
        v46 = v38;
        [v41 attemptRotateToPortraitWithCompletion:v45];
      }
    }

    else
    {
      (v38[2])(v38);
    }

    v34 = v48;
  }

LABEL_34:
  _Block_object_dispose(&v56, 8);
}

- (void)pushCardsWithDataSource:(id)a3 focusedIndex:(unint64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(BCCardStackViewController *)self presentingViewController];
  v10 = [(BCCardStackViewController *)self _pushCardsWithDataSource:v8 focusedIndex:a4 animated:v5 presentingViewController:v9];

  [v10 waitUntilReadyThenAnimate];
}

+ (void)appendCardsWithData:(id)a3 fromViewController:(id)a4 identifier:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [a4 bc_effectiveCardPresentingViewController];
  v13 = [v12 cardStackViewController];
  if (!v13)
  {
    v13 = [v12 bc_firstVisibleChildViewControllerOfClass:objc_opt_class() includePresented:1];
  }

  v14 = [v13 childViewControllers];
  v15 = [v14 objectAtIndexedSubscript:0];

  v16 = [v13 dataSourceMap];
  v17 = [v16 objectForKeyedSubscript:v15];

  v18 = [v17 identifier];
  if (([v10 length] || objc_msgSend(v18, "length")) && (objc_msgSend(v18, "isEqualToString:", v10) & 1) == 0)
  {
  }

  else if (v13)
  {
    [v17 appendNewDataToExistingDataSource:v9 cardStackViewController:v13];
    [v15 updateWithAppendedCards];
    v19 = objc_retainBlock(v11);
    v20 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19);
    }

    goto LABEL_15;
  }

  v21 = BCCardModelLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_1E5A98();
  }

  v22 = objc_retainBlock(v11);
  v13 = v22;
  if (v22)
  {
    (*(v22 + 2))(v22);
  }

LABEL_15:
}

- (void)popCardsAnimated:(BOOL)a3 reason:(int64_t)a4
{
  v5 = a3;
  v7 = [(BCCardStackViewController *)self childViewControllers];
  v8 = [v7 lastObject];
  v9 = [(BCCardStackViewController *)self _animationTypeForDismissingCardSetViewController:v8 distanceToCoverSource:0];

  [(BCCardStackViewController *)self _popCardsAnimated:v5 popAll:0 animationType:v9 prefersCrossfade:0 velocity:a4 reason:0 completion:0.0];
}

- (void)_popCardsAnimated:(BOOL)a3 popAll:(BOOL)a4 animationType:(int64_t)a5 prefersCrossfade:(BOOL)a6 velocity:(double)a7 reason:(int64_t)a8 completion:(id)a9
{
  v11 = a6;
  v13 = a4;
  v14 = a3;
  v16 = a9;
  v17 = v16;
  if (self->_transitionInProgress)
  {
    v18 = BCCardModelLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1E5B0C();
    }
  }

  else
  {
    v124 = v16;
    v19 = [(BCCardStackViewController *)self dataSourceMap];
    v20 = [v19 count];

    if (v20)
    {
      [(BCCardStackViewController *)self _resumeAndRebuildChildViewControllerAsNeeded];
      self->_transitionInProgress = 1;
      v21 = [(BCCardStackViewController *)self childViewControllers];
      v22 = [v21 count] == &dword_0 + 1 || v13;
      v125 = v22;

      v117 = v13;
      if (v13)
      {
        v23 = 2;
      }

      else
      {
        v23 = a5;
      }

      v24 = [(BCCardStackViewController *)self childViewControllers];
      v25 = [v24 lastObject];

      v26 = [(BCCardStackViewController *)self childViewControllers];
      v115 = v14;
      v120 = v23;
      if ([v26 count] < 2)
      {
        v29 = 0;
      }

      else
      {
        v27 = [(BCCardStackViewController *)self childViewControllers];
        v28 = [(BCCardStackViewController *)self childViewControllers];
        v29 = [v27 objectAtIndexedSubscript:{objc_msgSend(v28, "count") - 2}];
      }

      if (v125)
      {
        v30 = 0;
      }

      else
      {
        v30 = v29;
      }

      v31 = v30;
      [v31 setLastNavigationType:0];
      v32 = [(BCCardStackViewController *)self presentingViewController];
      v33 = [BCCardStackCoverSourceController coverHostFromPresentingViewController:v32 previousCardSetViewController:v31];

      objc_opt_class();
      v34 = [(BCCardStackViewController *)self presentingViewController];
      v113 = BUDynamicCast();

      v112 = a8;
      if (v125)
      {
        v35 = [(BCCardStackViewController *)self childViewControllers];
        v36 = [v35 objectAtIndexedSubscript:0];
      }

      else
      {
        v36 = v25;
      }

      v37 = [(BCCardStackViewController *)self dataSourceMap];
      v38 = [v37 objectForKeyedSubscript:v36];

      v111 = v36;
      v39 = [v36 focusedIndex];
      [v25 prepareForDismiss];
      [v25 willMoveToParentViewController:0];
      v123 = v29;
      if ((v125 & 1) == 0)
      {
        v40 = [(BCCardStackViewController *)self childViewControllers];
        v41 = [v40 count];

        if (v41 >= 3)
        {
          v42 = [(BCCardStackViewController *)self childViewControllers];
          v43 = [(BCCardStackViewController *)self childViewControllers];
          v44 = [v42 objectAtIndexedSubscript:{objc_msgSend(v43, "count") - 3}];

          v166[0] = _NSConcreteStackBlock;
          v166[1] = 3221225472;
          v166[2] = sub_2F92C;
          v166[3] = &unk_2C7BE8;
          v167 = v44;
          v168 = self;
          v45 = v44;
          v29 = v123;
          v46 = v45;
          [UIView performWithoutAnimation:v166];
        }
      }

      v47 = [[BCCardStackCoverSourceController alloc] initWithCardStackViewController:self isDismiss:1 cardSetViewController:v25 focusedIndex:v39 coverHost:v33 dataSource:v38];
      [(BCCardStackCoverSourceController *)v47 setIsDismissingCardStack:v125];
      [(BCCardStackCoverSourceController *)v47 setPreferSlideForDismiss:v120 == 2];
      if (v31)
      {
        v48 = [v31 expanded] ^ 1;
      }

      else
      {
        v48 = 0;
      }

      [(BCCardStackCoverSourceController *)v47 setCoversNeedClipping:v48];
      if (v125)
      {
        v49 = v29;
      }

      else
      {
        v49 = 0;
      }

      [(BCCardStackCoverSourceController *)v47 setUnderlyingCardSetViewController:v49];
      v162[0] = _NSConcreteStackBlock;
      v162[1] = 3221225472;
      v162[2] = sub_2F98C;
      v162[3] = &unk_2C8DD0;
      v165 = v39;
      v110 = v38;
      v163 = v110;
      v122 = v33;
      v164 = v122;
      v160[0] = _NSConcreteStackBlock;
      v160[1] = 3221225472;
      v160[2] = sub_2F9A4;
      v160[3] = &unk_2C7D40;
      v50 = v47;
      v161 = v50;
      v51 = *&CGAffineTransformIdentity.c;
      v157 = *&CGAffineTransformIdentity.a;
      v158 = v51;
      v159 = *&CGAffineTransformIdentity.tx;
      [(BCCardStackCoverSourceController *)v50 prepareForCoverSourceCapturingWithToViewController:v31 toViewTransform:&v157 revealCoverBlock:v162 captureCoverFrameBlock:v160];
      if ([(BCCardStackCoverSourceController *)v50 canUseCoverTransition])
      {
        v52 = v120;
      }

      else
      {
        v52 = 2;
      }

      v53 = [BCCardStackTransitionAnimator alloc];
      v54 = [(BCCardStackViewController *)self configuration];
      v55 = -[BCCardStackTransitionAnimator initWithType:allowsCardExpansion:](v53, "initWithType:allowsCardExpansion:", v52, [v54 cardsCanExpand]);

      [(BCCardStackTransitionAnimator *)v55 setPrefersCrossfade:v11];
      [(BCCardStackTransitionAnimator *)v55 setVelocityForPop:a7];
      if (v52 == 3)
      {
        v56 = [(BCCardStackCoverSourceController *)v50 rangeRequiringCards];
        [v25 beginTransitionUpdateModeForCardsAtRange:{v56, v57}];
        [(BCCardStackCoverSourceController *)v50 performSecondHalfOfProcessing];
        v58 = [(BCCardStackCoverSourceController *)v50 coverMoveItems];
        [(BCCardStackTransitionAnimator *)v55 setCoverMoveItems:v58];

        v59 = [(BCCardStackCoverSourceController *)v50 cardMoveItems];
        [(BCCardStackTransitionAnimator *)v55 setCardMoveItems:v59];
      }

      else
      {
        [(BCCardStackCoverSourceController *)v50 performSecondHalfOfProcessing];
        v59 = [(BCCardStackCoverSourceController *)v50 cardSlideItems];
        [(BCCardStackTransitionAnimator *)v55 setCardSlideItems:v59];
      }

      v60 = [(BCCardStackCoverSourceController *)v50 coverFadeItems];
      [(BCCardStackTransitionAnimator *)v55 setCoverFadeItems:v60];

      v61 = [v25 visibleCardRange];
      v63 = v62;
      v64 = [NSMutableArray arrayWithCapacity:v62];
      if (v61 < &v61[v63])
      {
        do
        {
          v65 = [v25 cardViewControllerAtIndex:v61];
          v66 = [v65 transitioningCardContent];

          if (v66)
          {
            [v64 addObject:v66];
          }

          ++v61;
          --v63;
        }

        while (v63);
      }

      v154[0] = _NSConcreteStackBlock;
      v154[1] = 3221225472;
      v154[2] = sub_2F9AC;
      v154[3] = &unk_2C8DF8;
      v67 = v64;
      v155 = v67;
      v68 = v50;
      v156 = v68;
      v121 = objc_retainBlock(v154);
      v152[0] = _NSConcreteStackBlock;
      v152[1] = 3221225472;
      v152[2] = sub_2FAE0;
      v152[3] = &unk_2C7D40;
      v69 = v68;
      v153 = v69;
      v119 = objc_retainBlock(v152);
      v70 = [[BCCardStackTransitionContext alloc] initWithFromViewController:v25 toViewController:v31 push:0];
      [(BCCardStackTransitionContext *)v70 setAnimated:v115];
      [(BCCardStackTransitionContext *)v70 setInteractive:0];
      v71 = [(BCCardStackViewController *)self backgroundView];
      [(BCCardStackTransitionContext *)v70 setBackgroundView:v71];

      v72 = [v122 containerViewForHostingCoversDuringAnimation];
      [(BCCardStackTransitionContext *)v70 setInnerContainerView:v72];

      objc_initWeak(&location, self);
      v140[0] = _NSConcreteStackBlock;
      v140[1] = 3221225472;
      v140[2] = sub_2FAE8;
      v140[3] = &unk_2C8E20;
      objc_copyWeak(&v149, &location);
      v109 = v67;
      v141 = v109;
      v116 = v69;
      v142 = v116;
      v18 = v25;
      v143 = v18;
      v73 = v31;
      v144 = v73;
      v145 = self;
      v114 = v113;
      v146 = v114;
      v74 = v55;
      v147 = v74;
      v150 = v117;
      v75 = v124;
      v148 = v75;
      [(BCCardStackTransitionContext *)v70 setCompletionBlock:v140];
      v137[0] = _NSConcreteStackBlock;
      v137[1] = 3221225472;
      v137[2] = sub_2FDF8;
      v137[3] = &unk_2C8E48;
      objc_copyWeak(&v139, &location);
      v76 = v73;
      v138 = v76;
      [(BCCardStackTransitionAnimator *)v74 addAnimations:v137];
      v118 = v75;
      v77 = [(BCCardStackViewController *)self configuration];
      LOBYTE(v75) = [v77 cardsCanExpand] | v125;

      if ((v75 & 1) == 0)
      {
        v78 = [(BCCardStackViewController *)self childViewControllers];
        v79 = [v78 count];

        if (v79 < 3)
        {
          v82 = 0;
        }

        else
        {
          v80 = [(BCCardStackViewController *)self childViewControllers];
          v81 = [(BCCardStackViewController *)self childViewControllers];
          v82 = [v80 objectAtIndexedSubscript:{objc_msgSend(v81, "count") - 3}];

          v83 = [v76 view];
          v84 = [v83 superview];
          v85 = [v82 view];
          v86 = [v76 view];
          [v84 insertSubview:v85 belowSubview:v86];

          v87 = [v82 view];
          [v87 setHidden:0];

          v88 = [v76 view];
          v89 = v88;
          if (v88)
          {
            [v88 transform];
          }

          else
          {
            v135 = 0u;
            v136 = 0u;
            v134 = 0u;
          }

          v90 = [v82 view];
          v157 = v134;
          v158 = v135;
          v159 = v136;
          [v90 setTransform:&v157];

          v91 = [v76 view];
          [v91 center];
          v93 = v92;
          v95 = v94;
          v96 = [v82 view];
          [v96 setCenter:{v93, v95}];

          [(BCCardStackViewController *)self _applyCardSetViewController:v82 withTransform:1];
        }

        v131[0] = _NSConcreteStackBlock;
        v131[1] = 3221225472;
        v131[2] = sub_2FE94;
        v131[3] = &unk_2C8E70;
        v131[4] = self;
        v132 = v76;
        v97 = v82;
        v133 = v97;
        [(BCCardStackTransitionAnimator *)v74 addAnimations:v131];
      }

      [v18 currentCardViewController];
      v129[0] = _NSConcreteStackBlock;
      v129[1] = 3221225472;
      v129[2] = sub_2FEE0;
      v98 = v129[3] = &unk_2C8E98;
      v130 = v98;
      [(BCCardStackTransitionAnimator *)v74 addAnimations:v129];
      v99 = [(BCCardStackViewController *)self dataSourceMap];
      [v99 setObject:0 forKeyedSubscript:v18];

      [v18 setDataSource:0];
      [v18 setDelegate:0];
      v100 = [v18 currentCardViewController];
      v101 = [v100 topContentViewController];
      v102 = BUProtocolCast();

      if (v123)
      {
        v103 = [v123 currentCardViewController];
        v104 = [v103 topContentViewController];
      }

      else
      {
        v104 = [(BCCardStackViewController *)self presentingViewController];
      }

      [v102 cardStackViewController:self parentCardWillDismissWithReason:v112 targetViewController:v104];
      v105 = v123;
      v106 = [[BCCardStackTransitionAnimatorWrapper alloc] initWithAnimator:v74 context:v70 waitUntilReadyBlock:v121 setupBeforeAnimationBlock:v119];
      v107 = v106;
      if (v125)
      {
        [(BCCardStackViewController *)self setPendingWrapper:v106];
        v108 = [(BCCardStackViewController *)self pendingWrapper];
        v126[0] = _NSConcreteStackBlock;
        v126[1] = 3221225472;
        v126[2] = sub_30020;
        v126[3] = &unk_2C8118;
        objc_copyWeak(&v128, &location);
        v127 = v118;
        [v108 waitUntilReady:v126];

        objc_destroyWeak(&v128);
        v105 = v123;
      }

      else
      {
        [(BCCardStackTransitionAnimatorWrapper *)v106 waitUntilReadyThenAnimate];
      }

      objc_destroyWeak(&v139);
      objc_destroyWeak(&v149);
      objc_destroyWeak(&location);
    }

    else
    {
      v18 = BCCardModelLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1E5AD8();
      }
    }

    v17 = v124;
  }
}

- (void)_layoutStackByChangingMode:(BOOL)a3 newViewSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v8 = [(BCCardStackViewController *)self childViewControllers];
  v9 = [v8 count];

  v10 = [(BCCardStackViewController *)self childViewControllers];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_30634;
  v45[3] = &unk_2C8EE0;
  *&v45[4] = width;
  *&v45[5] = height;
  v46 = v6;
  [v10 enumerateObjectsWithOptions:2 usingBlock:v45];

  v11 = [(BCCardStackViewController *)self childViewControllers];
  v12 = [v11 count];

  if (v12 >= 2)
  {
    v13 = [(BCCardStackViewController *)self configuration];
    v14 = [v13 cardsCanExpand];

    if (v14)
    {
      if (!v6)
      {
        goto LABEL_14;
      }

      v15 = [(BCCardStackViewController *)self childViewControllers];
      v16 = v9 - 2;
      v17 = [v15 objectAtIndexedSubscript:v9 - 2];

      [v17 setCovered:0 animated:0 duration:0.0];
      v18 = [v17 view];
      v19 = [v18 superview];

      if (v16)
      {
        for (i = 0; i != v16; ++i)
        {
          v21 = [(BCCardStackViewController *)self childViewControllers];
          v22 = [v21 objectAtIndexedSubscript:i];

          [v22 setCovered:0 animated:0 duration:0.0];
          v23 = [v22 view];
          [v23 setAlpha:1.0];

          v24 = [v22 view];
          [v24 setHidden:0];

          v25 = [v22 view];
          v26 = [v17 view];
          [v19 insertSubview:v25 belowSubview:v26];
        }
      }
    }

    else
    {
      v27 = [(BCCardStackViewController *)self childViewControllers];
      v28 = v9 - 2;
      v17 = [v27 objectAtIndexedSubscript:v9 - 2];

      [(BCCardStackViewController *)self _applyCardSetViewController:v17 withTransform:1];
      [v17 setCovered:1 animated:0 duration:0.0];
      if (v6)
      {
        v29 = [(BCCardStackViewController *)self childViewControllers];
        v30 = [v29 count];

        if (v30 >= 3)
        {
          if (v28)
          {
            for (j = 0; j != v28; ++j)
            {
              v32 = [(BCCardStackViewController *)self childViewControllers];
              v33 = [v32 objectAtIndexedSubscript:j];

              [v33 setCovered:1 animated:0 duration:0.0];
              v34 = [v33 view];
              [v34 setAlpha:0.0];

              v35 = [v33 view];
              [v35 removeFromSuperview];
            }
          }
        }
      }
    }
  }

LABEL_14:
  objc_opt_class();
  v36 = [(BCCardStackViewController *)self childViewControllers];
  v37 = [v36 lastObject];
  v38 = BUDynamicCast();

  if (v6)
  {
    v39 = [(BCCardStackViewController *)self configuration];
    v40 = 0.0;
    if ([v39 cardsCanExpand])
    {
      v41 = [v38 expanded];

      if (!v41)
      {
LABEL_19:
        v44 = [(BCCardStackViewController *)self statusBarBackgroundController];
        [v44 setOpacity:v40];

        [(BCCardStackViewController *)self setNeedsStatusBarAppearanceUpdate];
        [(BCCardStackViewController *)self _layoutAdornmentViews];
        goto LABEL_20;
      }

      v39 = [v38 currentCardViewController];
      v42 = [v39 currentState];
      [v42 cardViewControllerStatusBarBackgroundOpacity:v39];
      v40 = v43;
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)_layoutAdornmentViews
{
  v3 = [(BCCardStackViewController *)self backgroundView];
  [v3 removeFromSuperview];

  v4 = [(BCCardStackViewController *)self configuration];
  v5 = [v4 cardsCanExpand];

  if ((v5 & 1) == 0)
  {
    v25 = [(BCCardStackViewController *)self view];
    v26 = [(BCCardStackViewController *)self backgroundView];
    [v25 insertSubview:v26 atIndex:0];

    v8 = [(BCCardStackViewController *)self backgroundView];
    v24 = [v8 leftAnchor];
    v40 = [(BCCardStackViewController *)self view];
    v39 = [v40 leftAnchor];
    v38 = [v24 constraintEqualToAnchor:?];
    v42[0] = v38;
    v37 = [(BCCardStackViewController *)self backgroundView];
    v27 = [v37 rightAnchor];
    v35 = [(BCCardStackViewController *)self view];
    [v35 rightAnchor];
    v34 = v36 = v27;
    v33 = [v27 constraintEqualToAnchor:?];
    v42[1] = v33;
    v32 = [(BCCardStackViewController *)self backgroundView];
    v28 = [v32 topAnchor];
    v30 = [(BCCardStackViewController *)self view];
    v14 = [v30 topAnchor];
    v31 = v28;
    v15 = [v28 constraintEqualToAnchor:v14];
    v42[2] = v15;
    v16 = [(BCCardStackViewController *)self backgroundView];
    v17 = [v16 bottomAnchor];
    v18 = [(BCCardStackViewController *)self view];
    v19 = [v18 bottomAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    v42[3] = v20;
    v21 = [NSArray arrayWithObjects:v42 count:4];
    [NSLayoutConstraint activateConstraints:v21];
    goto LABEL_5;
  }

  v6 = [(BCCardStackViewController *)self childViewControllers];
  v7 = [v6 lastObject];
  v8 = [v7 view];

  if (v8)
  {
    v9 = [(BCCardStackViewController *)self view];
    v10 = [(BCCardStackViewController *)self backgroundView];
    [v9 insertSubview:v10 belowSubview:v8];

    v29 = [(BCCardStackViewController *)self backgroundView];
    v11 = [v29 leftAnchor];
    v39 = [(BCCardStackViewController *)self view];
    [v39 leftAnchor];
    v38 = v40 = v11;
    v37 = [v11 constraintEqualToAnchor:?];
    v41[0] = v37;
    v36 = [(BCCardStackViewController *)self backgroundView];
    v12 = [v36 rightAnchor];
    v34 = [(BCCardStackViewController *)self view];
    [v34 rightAnchor];
    v33 = v35 = v12;
    v32 = [v12 constraintEqualToAnchor:?];
    v41[1] = v32;
    v31 = [(BCCardStackViewController *)self backgroundView];
    v13 = [v31 topAnchor];
    v14 = [(BCCardStackViewController *)self view];
    v15 = [v14 topAnchor];
    v30 = v13;
    v16 = [v13 constraintEqualToAnchor:v15];
    v41[2] = v16;
    v17 = [(BCCardStackViewController *)self backgroundView];
    v18 = [v17 bottomAnchor];
    v19 = [(BCCardStackViewController *)self view];
    v20 = [v19 bottomAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    v41[3] = v21;
    [NSArray arrayWithObjects:v41 count:4];
    v23 = v22 = v8;
    [NSLayoutConstraint activateConstraints:v23];

    v8 = v22;
    v24 = v29;
LABEL_5:
  }
}

- (void)_addAdornmentViewsToParentView:(id)a3
{
  v4 = a3;
  v5 = [(BCCardStackViewController *)self backgroundView];
  [v5 removeFromSuperview];

  v6 = [(BCCardStackViewController *)self backgroundView];
  [v4 insertSubview:v6 atIndex:0];

  v23 = [(BCCardStackViewController *)self backgroundView];
  v22 = [v23 leftAnchor];
  v21 = [v4 leftAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v24[0] = v20;
  v19 = [(BCCardStackViewController *)self backgroundView];
  v18 = [v19 rightAnchor];
  v17 = [v4 rightAnchor];
  v7 = [v18 constraintEqualToAnchor:v17];
  v24[1] = v7;
  v8 = [(BCCardStackViewController *)self backgroundView];
  v9 = [v8 topAnchor];
  v10 = [v4 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v24[2] = v11;
  v12 = [(BCCardStackViewController *)self backgroundView];
  v13 = [v12 bottomAnchor];
  v14 = [v4 bottomAnchor];

  v15 = [v13 constraintEqualToAnchor:v14];
  v24[3] = v15;
  v16 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v16];
}

+ (BOOL)_alwaysUseSlideAnimation
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BCCardStackTransitionForceSlideAnimation"];

  return v3;
}

- (void)_scaleBackCardSetViewController:(id)a3 shiftUp:(BOOL)a4 cumulative:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = [v7 view];
  [v8 center];
  v10 = v9;

  v11 = *&CGAffineTransformIdentity.c;
  *&v19.a = *&CGAffineTransformIdentity.a;
  *&v19.c = v11;
  *&v19.tx = *&CGAffineTransformIdentity.tx;
  if (v5)
  {
    v12 = [v7 view];
    v13 = v12;
    if (v12)
    {
      [v12 transform];
    }

    else
    {
      memset(&v18, 0, sizeof(v18));
    }

    CGAffineTransformTranslate(&v19, &v18, 0.0, -v10);
  }

  else
  {
    CGAffineTransformMakeTranslation(&v19, 0.0, -v10);
  }

  v17 = v19;
  CGAffineTransformScale(&v18, &v17, 0.95, 0.95);
  v19 = v18;
  v14 = -9.0;
  if (v6)
  {
    v14 = 9.0;
  }

  v17 = v18;
  CGAffineTransformTranslate(&v18, &v17, 0.0, v14 + v10);
  v19 = v18;
  v16 = v18;
  v15 = [v7 view];
  v18 = v16;
  [v15 setTransform:&v18];
}

- (id)_pushCardsWithDataSource:(id)a3 focusedIndex:(unint64_t)a4 animated:(BOOL)a5 presentingViewController:(id)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a6;
  if (self->_transitionInProgress)
  {
    v11 = BCCardModelLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1E5B40();
    }

    v12 = 0;
    goto LABEL_49;
  }

  [(BCCardStackViewController *)self lockChildForStatusBarStyle];
  self->_transitionInProgress = 1;
  v13 = [BCStatusBarBackgroundController backgroundControllerForViewController:v10];
  [(BCCardStackViewController *)self setStatusBarBackgroundController:v13];

  if ([(BCCardStackViewController *)self presentingViewControllerIsFullScreen])
  {
    [v10 view];
  }

  else
  {
    [v10 bc_windowForViewController];
  }
  v14 = ;
  [v14 bounds];
  [(BCCardStackViewController *)self setInitialFrame:?];

  [v10 additionalSafeAreaInsets];
  [(BCCardStackViewController *)self setToolbarHeight:?];
  v15 = [(BCCardStackViewController *)self childViewControllers];
  v16 = [v15 lastObject];

  if (v16)
  {
    v17 = [(BCCardStackViewController *)self view];
    v18 = [v17 window];
    [v18 setUserInteractionEnabled:0];
  }

  v19 = [v16 configuration];
  if ([v19 cardsCanExpand])
  {
    v20 = [v16 currentCardViewController];
    v21 = [v20 currentState];
    v22 = +[BCCardSetState expandedState];

    if (v21 == v22)
    {
      goto LABEL_14;
    }

    v19 = [v16 currentCardViewController];
    [v19 goExpanded];
  }

LABEL_14:
  [v16 bc_analyticsVisibilitySubtreeWillDisappear];
  v23 = objc_alloc_init(BCCardSetViewController);
  [(BCCardSetViewController *)v23 setDataSource:self];
  [(BCCardSetViewController *)v23 setDelegate:self];
  v24 = [(BCCardStackViewController *)self dataSourceMap];
  [v24 setObject:v9 forKeyedSubscript:v23];

  v25 = [(BCCardStackViewController *)self view];
  [v25 bounds];
  [(BCCardSetViewController *)v23 setInitialFrame:?];

  v26 = [(BCCardStackViewController *)self configuration];
  [(BCCardSetViewController *)v23 setConfiguration:v26];

  [(BCCardStackViewController *)self contentInset];
  [(BCCardSetViewController *)v23 setContentInset:?];
  v27 = [(BCCardStackViewController *)self configuration];
  if ([v27 cardsCanExpand])
  {
    v96 = 0;
  }

  else
  {
    v28 = [(BCCardStackViewController *)self childViewControllers];
    v29 = [v28 count];

    if (v29 < 2)
    {
      v96 = 0;
      goto LABEL_20;
    }

    v27 = [(BCCardStackViewController *)self childViewControllers];
    v30 = [(BCCardStackViewController *)self childViewControllers];
    v96 = [v27 objectAtIndexedSubscript:{objc_msgSend(v30, "count") - 2}];
  }

LABEL_20:
  v92 = v16 == 0;
  [(BCCardStackViewController *)self addChildViewController:v23];
  v31 = [(BCCardStackViewController *)self statusBarBackgroundController];
  [(BCCardSetViewController *)v23 setStatusBarBackgroundController:v31];

  v32 = [(BCCardStackViewController *)self view];
  [v32 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = [(BCCardSetViewController *)v23 view];
  [v41 setFrame:{v34, v36, v38, v40}];

  [(BCCardSetViewController *)v23 setFocusedIndex:a4];
  if ((v16 || -[BCCardStackViewController presentingViewControllerIsFullScreen](self, "presentingViewControllerIsFullScreen") || [v10 bc_alwaysUseCoverTransitionForCardPresenting]) && (objc_msgSend(objc_opt_class(), "_alwaysUseSlideAnimation") & 1) == 0)
  {
    v44 = [BCCardStackCoverSourceController coverHostFromPresentingViewController:v10 previousCardSetViewController:v16];
    if (v44)
    {
      v140[0] = _NSConcreteStackBlock;
      v140[1] = 3221225472;
      v140[2] = sub_31D6C;
      v140[3] = &unk_2C7D40;
      v45 = v23;
      v141 = v45;
      [UIView performWithoutAnimation:v140];
      [(BCCardSetViewController *)v45 setLastNavigationType:1];
      v43 = [[BCCardStackCoverSourceController alloc] initWithCardStackViewController:self isDismiss:0 cardSetViewController:v45 focusedIndex:a4 coverHost:v44 dataSource:v9];
      [(BCCardStackCoverSourceController *)v43 performFirstHalfOfProcessing];
      v42 = [(BCCardStackCoverSourceController *)v43 canUseCoverTransition];
      v98 = [v44 containerViewForHostingCoversDuringAnimation];
    }

    else
    {
      v98 = 0;
      v42 = 0;
      v43 = 0;
    }
  }

  else
  {
    v98 = 0;
    v42 = 0;
    v43 = 0;
  }

  v93 = v9;
  v46 = v42;
  v47 = v42;
  v48 = [BCCardStackTransitionAnimator alloc];
  v49 = [(BCCardStackViewController *)self configuration];
  v94 = -[BCCardStackTransitionAnimator initWithType:allowsCardExpansion:](v48, "initWithType:allowsCardExpansion:", v47, [v49 cardsCanExpand]);

  v101 = objc_opt_new();
  v97 = v10;
  v95 = v46;
  if (v46)
  {
    v91 = v16;
    v50 = objc_opt_new();
    v99 = objc_opt_new();
    v51 = dispatch_group_create();
    v90 = v43;
    v52 = [(BCCardStackCoverSourceController *)v43 rangeRequiringCards];
    [(BCCardSetViewController *)v23 beginTransitionUpdateModeForCardsAtRange:v52, v53];
    [(BCCardSetViewController *)v23 didBecomeTopCardSet];
    v54 = [(BCCardSetViewController *)v23 visibleCardRange];
    v56 = v55;
    v57 = [NSMutableArray arrayWithCapacity:v55];
    if (v54 < &v54[v56])
    {
      do
      {
        v58 = [(BCCardSetViewController *)v23 cardViewControllerAtIndex:v54];
        v59 = [v58 transitioningCardContent];

        if (v59)
        {
          [v57 addObject:v59];
          dispatch_group_enter(v51);
          v138[0] = _NSConcreteStackBlock;
          v138[1] = 3221225472;
          v138[2] = sub_31DB0;
          v138[3] = &unk_2C7D40;
          v139 = v51;
          v60 = [v59 cardStackTransitionSuspendUpdatesAssertionUntilContentExceedsHeightWithCompletion:v138];
          [v50 addObject:v60];

          v61 = [v59 cardStackTransitionSuspendLayoutAssertion];
          [v101 addObject:v61];

          if (a4 != v54)
          {
            [v99 addObject:v59];
            v62 = [v59 cardStackTransitionSuspendUpdatesAssertion];
            [v50 addObject:v62];
          }
        }

        ++v54;
        --v56;
      }

      while (v56);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_31DB8;
    block[3] = &unk_2C7BE8;
    v136 = v99;
    v137 = v50;
    v89 = v50;
    v63 = v99;
    dispatch_group_notify(v51, &_dispatch_main_q, block);
    v64 = BCCardStackSignpost();
    if (os_signpost_enabled(v64))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v64, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Display product cards", "", buf, 2u);
    }

    v65 = BCCardStackSignpost();
    v66 = os_signpost_id_generate(v65);

    v67 = BCCardStackSignpost();
    v68 = v67;
    v7 = v7;
    v69 = v94;
    if (v66 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v68, OS_SIGNPOST_INTERVAL_BEGIN, v66, "Timeout: Display product cards", "", buf, 2u);
    }

    kdebug_trace();
    v126[0] = _NSConcreteStackBlock;
    v126[1] = 3221225472;
    v126[2] = sub_31F98;
    v126[3] = &unk_2C8F58;
    v70 = v57;
    v127 = v70;
    v134 = v92;
    v128 = v97;
    v129 = self;
    v130 = v23;
    v133 = v66;
    v43 = v90;
    v71 = v90;
    v131 = v71;
    v132 = v94;
    v103 = objc_retainBlock(v126);
    v124[0] = _NSConcreteStackBlock;
    v124[1] = 3221225472;
    v124[2] = sub_32810;
    v124[3] = &unk_2C7D40;
    v125 = v71;
    v72 = objc_retainBlock(v124);

    v16 = v91;
  }

  else
  {
    v72 = 0;
    v103 = 0;
    v70 = 0;
    v69 = v94;
  }

  v100 = v72;
  v73 = [[BCCardStackTransitionContext alloc] initWithFromViewController:v16 toViewController:v23 push:1];
  [(BCCardStackTransitionContext *)v73 setAnimated:v7];
  [(BCCardStackTransitionContext *)v73 setInteractive:0];
  v74 = [(BCCardStackViewController *)self backgroundView];
  [(BCCardStackTransitionContext *)v73 setBackgroundView:v74];

  [(BCCardStackTransitionContext *)v73 setInnerContainerView:v98];
  objc_initWeak(buf, self);
  v113[0] = _NSConcreteStackBlock;
  v113[1] = 3221225472;
  v113[2] = sub_3281C;
  v113[3] = &unk_2C8F80;
  v75 = v101;
  v114 = v75;
  objc_copyWeak(&v121, buf);
  v122 = v95;
  v76 = v70;
  v115 = v76;
  v77 = v43;
  v116 = v77;
  v78 = v23;
  v117 = v78;
  v79 = v69;
  v80 = v16;
  v81 = v79;
  v118 = v79;
  v119 = self;
  v82 = v80;
  v83 = v80;
  v120 = v83;
  [(BCCardStackTransitionContext *)v73 setCompletionBlock:v113];
  v110[0] = _NSConcreteStackBlock;
  v110[1] = 3221225472;
  v110[2] = sub_329E0;
  v110[3] = &unk_2C8E48;
  objc_copyWeak(&v112, buf);
  v11 = v83;
  v111 = v11;
  [(BCCardStackTransitionAnimator *)v81 addAnimations:v110];
  v84 = [(BCCardStackViewController *)self configuration];
  v85 = [v84 cardsCanExpand];
  if (v82)
  {
    v86 = v85;
  }

  else
  {
    v86 = 1;
  }

  if ((v86 & 1) == 0)
  {
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_32A80;
    v106[3] = &unk_2C8FA8;
    objc_copyWeak(&v109, buf);
    v107 = v11;
    v108 = v96;
    [(BCCardStackTransitionAnimator *)v81 addAnimations:v106];

    objc_destroyWeak(&v109);
  }

  [(BCCardSetViewController *)v78 currentCardViewController];
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_32AF0;
  v87 = v104[3] = &unk_2C8E98;
  v105 = v87;
  [(BCCardStackTransitionAnimator *)v81 addAnimations:v104];
  v12 = [[BCCardStackTransitionAnimatorWrapper alloc] initWithAnimator:v81 context:v73 waitUntilReadyBlock:v103 setupBeforeAnimationBlock:v100];

  objc_destroyWeak(&v112);
  objc_destroyWeak(&v121);

  objc_destroyWeak(buf);
  v9 = v93;
  v10 = v97;
LABEL_49:

  return v12;
}

- (id)_pushCardBackAnimatorForCardSet:(id)a3 cardSetViewControllerToFade:(id)a4 duration:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [[UICubicTimingParameters alloc] initWithControlPoint1:0.33 controlPoint2:{0.0, 0.2, 1.0}];
  v10 = [[UIViewPropertyAnimator alloc] initWithDuration:v9 timingParameters:0.28];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_32DC8;
  v16[3] = &unk_2C89F8;
  v16[4] = self;
  v11 = v7;
  v17 = v11;
  v12 = v8;
  v18 = v12;
  [v10 addAnimations:v16];
  if (v12)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_32E50;
    v14[3] = &unk_2C8FD0;
    v15 = v12;
    [v10 addCompletion:v14];
  }

  return v10;
}

- (void)_applyCardSetViewController:(id)a3 withTransform:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 view];
  [v6 center];
  v8 = v7;

  v9 = *&CGAffineTransformIdentity.c;
  *&v22.a = *&CGAffineTransformIdentity.a;
  *&v22.c = v9;
  *&v22.tx = *&CGAffineTransformIdentity.tx;
  if (a4 == 1)
  {
    v12 = [v5 view];
    v13 = v12;
    if (v12)
    {
      [v12 transform];
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }

    CGAffineTransformTranslate(&v22, &v21, 0.0, -v8);

    goto LABEL_12;
  }

  if (a4 != 2)
  {
    CGAffineTransformMakeTranslation(&v22, 0.0, -v8);
LABEL_12:
    v20 = v22;
    CGAffineTransformScale(&v21, &v20, 0.95, 0.95);
    v15 = *&v21.c;
    v14 = *&v21.tx;
    v22 = v21;
    v16 = *&v21.a;
    v17 = -9.0;
    goto LABEL_13;
  }

  v10 = [v5 view];
  v11 = v10;
  if (v10)
  {
    [v10 transform];
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  CGAffineTransformTranslate(&v22, &v21, 0.0, -v8);

  v20 = v22;
  CGAffineTransformScale(&v21, &v20, 1.05263158, 1.05263158);
  v15 = *&v21.c;
  v14 = *&v21.tx;
  v22 = v21;
  v16 = *&v21.a;
  v17 = 9.0;
LABEL_13:
  *&v20.a = v16;
  *&v20.c = v15;
  *&v20.tx = v14;
  CGAffineTransformTranslate(&v21, &v20, 0.0, v8 + v17);
  v22 = v21;
  v19 = v21;
  v18 = [v5 view];
  v21 = v19;
  [v18 setTransform:&v21];
}

- (void)_layoutUnderlyingCardSetViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(BCCardStackViewController *)self _applyCardSetViewController:v6 withTransform:0];
  [v6 setCovered:1 animated:v4 duration:0.28];
}

- (id)_popCardFrontAnimatorForCardSet:(id)a3 cardSetViewControllerToUnfade:(id)a4 duration:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [[UICubicTimingParameters alloc] initWithControlPoint1:0.33 controlPoint2:{0.0, 0.2, 1.0}];
  v10 = [[UIViewPropertyAnimator alloc] initWithDuration:v9 timingParameters:0.28];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_33244;
  v14[3] = &unk_2C89F8;
  v15 = v7;
  v16 = v8;
  v17 = self;
  v11 = v8;
  v12 = v7;
  [v10 addAnimations:v14];

  return v10;
}

- (id)_navigationControllerForViewController:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v9 = [(BCCardStackViewController *)self presentingViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v11 = [(BCCardStackViewController *)self presentingViewController];
    v6 = v11;
    if (isKindOfClass)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  objc_opt_class();
  v5 = BUDynamicCast();
  v6 = v5;
  if (!v5)
  {
    v11 = v4;
LABEL_7:
    v8 = [v11 navigationController];
    goto LABEL_8;
  }

  v7 = [v5 expandedCardViewController];
  v8 = [v7 cardNavigationController];

LABEL_8:
  v6 = v8;
LABEL_9:

  return v6;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = [(BCCardStackViewController *)self pendingWrapper];

  if (!v4)
  {
    v5 = BCCardModelLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1E5BF0();
    }
  }

  v6 = [(BCCardStackViewController *)self pendingWrapper];

  return v6;
}

- (unint64_t)cardCountForCardSet:(id)a3
{
  v4 = a3;
  v5 = [(BCCardStackViewController *)self dataSourceMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 numberOfCards:self];
  return v7;
}

- (BOOL)isTopCardSetViewController:(id)a3
{
  v4 = a3;
  v5 = [(BCCardStackViewController *)self childViewControllers];
  v6 = [v5 lastObject];

  return v6 == v4;
}

- (id)contentViewControllerForCardSet:(id)a3 index:(unint64_t)a4 cardContentScrollManager:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(BCCardStackViewController *)self dataSourceMap];
  v11 = [v10 objectForKeyedSubscript:v9];

  v12 = [v11 contentViewControllerForCardAtIndex:a4 cardContentScrollManager:v8];

  objc_opt_class();
  v13 = BUClassAndProtocolCast();

  return v13;
}

- (Class)cardNavigationControllerForCardSet:(id)a3
{
  v4 = a3;
  v5 = [(BCCardStackViewController *)self dataSourceMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 cardNavigationControllerClass:self];

  return v7;
}

- (void)cardSetViewController:(id)a3 prepareForNavigationTransitionWithContext:(id)a4
{
  v5 = [a4 containerView];
  [(BCCardStackViewController *)self _addAdornmentViewsToParentView:v5];

  self->_transitionInProgress = 1;
}

- (void)cardSetViewController:(id)a3 animatorForExpanding:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 duration];
  v9 = v8;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_337E4;
  v10[3] = &unk_2C9048;
  v11[1] = v9;
  objc_copyWeak(v11, &location);
  [v7 addAnimations:v10];
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)cardSetViewController:(id)a3 animatorForUnexpanding:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 duration];
  v9 = v8;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_33BE0;
  v12[3] = &unk_2C9048;
  v13[1] = v9;
  objc_copyWeak(v13, &location);
  [v7 addAnimations:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_33DA8;
  v10[3] = &unk_2C90B0;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  [v7 addCompletion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)cardSetViewController:(id)a3 animatorForInteractiveDismiss:(id)a4
{
  v11 = NAN;
  v6 = a4;
  [v6 setFinalAnimationType:{-[BCCardStackViewController _animationTypeForDismissingCardSetViewController:distanceToCoverSource:](self, "_animationTypeForDismissingCardSetViewController:distanceToCoverSource:", a3, &v11)}];
  [v6 setDistanceToCoverSource:v11];
  v7 = [(BCCardStackViewController *)self backgroundView];
  [v6 setBackgroundView:v7];

  v8 = [(BCCardStackViewController *)self childViewControllers];
  v9 = [v8 count] > 1;

  v10 = [(BCCardStackViewController *)self configuration];
  [v6 setShouldRetainBackgroundAndTitleState:{v9 & ~objc_msgSend(v10, "cardsCanExpand")}];
}

- (int64_t)_animationTypeForDismissingCardSetViewController:(id)a3 distanceToCoverSource:(double *)a4
{
  v6 = a3;
  v7 = [(BCCardStackViewController *)self childViewControllers];
  if ([v7 count] <= 1)
  {
  }

  else
  {
    v8 = [(BCCardStackViewController *)self childViewControllers];
    v9 = [(BCCardStackViewController *)self childViewControllers];
    v10 = [v8 objectAtIndexedSubscript:{objc_msgSend(v9, "count") - 2}];

    if (v10)
    {
      goto LABEL_8;
    }
  }

  if (![(BCCardStackViewController *)self presentingViewControllerIsFullScreen])
  {
    v11 = [(BCCardStackViewController *)self presentingViewController];
    v12 = [v11 bc_alwaysUseCoverTransitionForCardPresenting];

    if (!v12)
    {
      v21 = 2;
      goto LABEL_12;
    }
  }

  v10 = 0;
LABEL_8:
  v13 = [(BCCardStackViewController *)self presentingViewController];
  v14 = [BCCardStackCoverSourceController coverHostFromPresentingViewController:v13 previousCardSetViewController:v10];

  v15 = [v6 currentCardViewController];
  v16 = [v15 view];
  v17 = [v16 superview];

  v18 = [(BCCardStackViewController *)self dataSourceMap];
  v19 = [v18 objectForKeyedSubscript:v6];
  v20 = [BCCardStackCoverSourceController canUseCoverTransitionForDismissingCardSetViewController:v6 dataSource:v19 coverHost:v14 coverYOffset:a4 inCoordinatesOfView:v17];

  if ([objc_opt_class() _alwaysUseSlideAnimation] & 1 | ((v20 & 1) == 0))
  {
    v21 = 2;
  }

  else
  {
    v21 = 3;
  }

LABEL_12:
  return v21;
}

- (void)cardSetViewController:(id)a3 didCommitDismissWithVelocity:(double)a4 interactiveAnimator:(id)a5
{
  v7 = [a5 finalAnimationType];

  [(BCCardStackViewController *)self _popCardsAnimated:1 popAll:0 animationType:v7 prefersCrossfade:0 velocity:2 reason:0 completion:a4];
}

- (id)topCardSetViewController
{
  v2 = [(BCCardStackViewController *)self childViewControllers];
  v3 = [v2 lastObject];

  return v3;
}

- (id)effectiveAnalyticsTrackerForTopCard
{
  v2 = [(BCCardStackViewController *)self topCardSetViewController];
  v3 = [v2 currentCardViewController];
  v4 = [v3 topContentViewController];
  v5 = [v4 ba_effectiveAnalyticsTracker];

  return v5;
}

- (id)im_visibleChildViewControllers
{
  v2 = [(BCCardStackViewController *)self childViewControllers];
  v3 = [v2 lastObject];

  if (v3)
  {
    v6 = v3;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (BOOL)bc_analyticsVisibilityOfChild:(id)a3
{
  v4 = a3;
  v5 = [(BCCardStackViewController *)self childViewControllers];
  v6 = [v5 lastObject];

  return v6 == v4;
}

- (void)_updateStatusBarBackgroundOpacity
{
  v3 = [(BCCardStackViewController *)self topCardSetViewController];
  [(BCCardStackViewController *)self _updateStatusBarBackgroundOpacityForCardSetViewController:v3];
}

- (void)_updateStatusBarBackgroundOpacityForCardSetViewController:(id)a3
{
  v14 = a3;
  v4 = _os_feature_enabled_impl();
  if (v14 && (v4 & 1) == 0)
  {
    v5 = [v14 currentCardViewController];
    v6 = [v5 cardNavigationController];
    v7 = [v6 isNavigationBarHidden];

    v8 = [v14 currentCardViewController];
    v9 = [v8 currentState];
    v10 = +[BCCardSetState expandedState];

    if (v9 == v10)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = [(BCCardStackViewController *)self statusBarBackgroundController];
    [v13 setOpacity:v12];
  }

  _objc_release_x1(v4);
}

- (unint64_t)_indexOfChildViewControllerToSuspendOrResume
{
  v2 = [(BCCardStackViewController *)self childViewControllers];
  v3 = [v2 count];
  if (v3 <= 2)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = v3 - 3;
  }

  return v4;
}

- (void)_suspendAndTeardownChildViewControllerAsNeeded
{
  v3 = [(BCCardStackViewController *)self _indexOfChildViewControllerToSuspendOrResume];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    objc_opt_class();
    v5 = [(BCCardStackViewController *)self childViewControllers];
    v6 = [v5 objectAtIndexedSubscript:v4];
    v7 = BUDynamicCast();

    [v7 suspendAndTeardownForReason:@"card stack: card set not displayed"];
  }
}

- (void)_resumeAndRebuildChildViewControllerAsNeeded
{
  v3 = [(BCCardStackViewController *)self _indexOfChildViewControllerToSuspendOrResume];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    objc_opt_class();
    v5 = [(BCCardStackViewController *)self childViewControllers];
    v6 = [v5 objectAtIndexedSubscript:v4];
    v7 = BUDynamicCast();

    [v7 resumeAndRebuildForReason:@"card stack: card set will display"];
  }
}

- (void)didReceiveMemoryWarning
{
  v3.receiver = self;
  v3.super_class = BCCardStackViewController;
  [(BCCardStackViewController *)&v3 didReceiveMemoryWarning];
  [(BCCardStackViewController *)self _suspendAndTeardownChildViewControllerAsNeeded];
}

- (id)keyCommands
{
  v2 = [UIKeyCommand keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"_dismissCardStack:"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)initialFrame
{
  x = self->_initialFrame.origin.x;
  y = self->_initialFrame.origin.y;
  width = self->_initialFrame.size.width;
  height = self->_initialFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)lastLayoutStackSize
{
  width = self->_lastLayoutStackSize.width;
  height = self->_lastLayoutStackSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSSet)messagesAlreadyDisplayed
{
  objc_opt_class();
  v3 = objc_getAssociatedObject(self, off_33CFB8);
  v4 = BUDynamicCast();

  return v4;
}

- (void)viewController:(id)a3 didDisplayMessageWithId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BCCardStackViewController *)self messagesAlreadyDisplayed];
  if (!v8)
  {
    v8 = objc_alloc_init(NSSet);
  }

  v9 = [v8 setByAddingObject:v6];

  [(BCCardStackViewController *)self setMessagesAlreadyDisplayed:v9];
  [(BCCardStackViewController *)self notifyAllCardsAboutMessageDisplayed:v6 from:v7];
}

- (void)notifyAllCardsAboutMessageDisplayed:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(BCCardStackViewController *)self childViewControllers];
  v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v12 = BUDynamicCast();
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_3DA0C;
        v14[3] = &unk_2C95C8;
        v15 = v7;
        v16 = v6;
        [v12 enumerateAllCardsUsingBlock:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

@end