@interface BKMinibarRevealAnimator
- (BKMinibarRevealAnimator)initWithOpening:(BOOL)opening;
- (double)duration;
- (double)transitionDuration:(id)duration;
- (id)minifiedBarAnimator;
- (void)_animationDidFinish;
- (void)_loadStateFromContext:(id)context;
- (void)_setupViews;
- (void)_teardownViews:(BOOL)views;
- (void)animateTransition:(id)transition;
@end

@implementation BKMinibarRevealAnimator

- (BKMinibarRevealAnimator)initWithOpening:(BOOL)opening
{
  v5.receiver = self;
  v5.super_class = BKMinibarRevealAnimator;
  result = [(BKMinibarRevealAnimator *)&v5 init];
  if (result)
  {
    result->_opening = opening;
  }

  return result;
}

- (double)duration
{
  interactive = [(BKMinibarRevealAnimator *)self interactive];
  result = 0.7;
  if (!interactive)
  {
    return 0.5;
  }

  return result;
}

- (void)_loadStateFromContext:(id)context
{
  contextCopy = context;
  [(BKMinibarRevealAnimator *)self setTransitionContext:contextCopy];
  v5 = [contextCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  [(BKMinibarRevealAnimator *)self setFromViewController:v5];

  v6 = [contextCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  [(BKMinibarRevealAnimator *)self setToViewController:v6];

  containerView = [contextCopy containerView];
  [(BKMinibarRevealAnimator *)self setContainerView:containerView];

  isInteractive = [contextCopy isInteractive];

  [(BKMinibarRevealAnimator *)self setInteractive:isInteractive];
}

- (double)transitionDuration:(id)duration
{
  [(BKMinibarRevealAnimator *)self _loadStateFromContext:duration];

  [(BKMinibarRevealAnimator *)self duration];
  return result;
}

- (void)animateTransition:(id)transition
{
  [(BKMinibarRevealAnimator *)self _loadStateFromContext:transition];
  [(BKMinibarRevealAnimator *)self _setupViews];
  tabBarView = [(BKMinibarRevealAnimator *)self tabBarView];
  [tabBarView frame];
  v111 = v5;
  v112 = v6;
  v8 = v7;
  v113 = v9;

  if ([(BKMinibarRevealAnimator *)self opening])
  {
    minibarView = [(BKMinibarRevealAnimator *)self minibarView];
    [minibarView frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    containerView = [(BKMinibarRevealAnimator *)self containerView];
    [containerView bounds];
    v109 = v21;
    v110 = v20;
    v23 = v22;
    v25 = v24;

    v116.origin.x = v12;
    v116.origin.y = v14;
    v116.size.width = v16;
    v116.size.height = v18;
    v108 = v23 - CGRectGetHeight(v116);
    v117.origin.x = v12;
    v117.origin.y = v14;
    v117.size.width = v16;
    v117.size.height = v18;
    v26 = v25 + CGRectGetHeight(v117);
    contentView = [(BKMinibarRevealAnimator *)self contentView];
    [contentView frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;

    minibarView2 = [(BKMinibarRevealAnimator *)self minibarView];
    [minibarView2 frame];
    MaxY = CGRectGetMaxY(v118);

    contentView2 = [(BKMinibarRevealAnimator *)self contentView];
    [contentView2 setFrame:{v29, MaxY, v31, v33}];

    blackBottomView = [(BKMinibarRevealAnimator *)self blackBottomView];
    [blackBottomView frame];
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v119.origin.x = v29;
    v119.origin.y = MaxY;
    v119.size.width = v31;
    v119.size.height = v33;
    v44 = CGRectGetMaxY(v119);
    blackBottomView2 = [(BKMinibarRevealAnimator *)self blackBottomView];
    [blackBottomView2 setFrame:{v39, v44, v41, v43}];

    v120.origin.x = v39;
    v120.origin.y = v44;
    v120.size.width = v41;
    v120.size.height = v43;
    v46 = v26 + CGRectGetHeight(v120);
    containerView2 = [(BKMinibarRevealAnimator *)self containerView];
    [containerView2 bounds];
    Height = CGRectGetHeight(v121);
  }

  else
  {
    minifiedBarAnimator = [(BKMinibarRevealAnimator *)self minifiedBarAnimator];
    toViewController = [(BKMinibarRevealAnimator *)self toViewController];
    [minifiedBarAnimator minifiedBarAnimatorAnimateShowIfNeededToViewController:toViewController force:1];

    minifiedBarAnimator2 = [(BKMinibarRevealAnimator *)self minifiedBarAnimator];
    minifiedBarAnimatorContainerView = [minifiedBarAnimator2 minifiedBarAnimatorContainerView];
    [minifiedBarAnimatorContainerView frame];
    v109 = v54;
    v110 = v53;
    v108 = v55;
    v106 = v56;

    contentView3 = [(BKMinibarRevealAnimator *)self contentView];
    [contentView3 frame];
    v59 = v58;
    v105 = v60;
    v107 = v8;
    v62 = v61;
    v64 = v63;

    minibarView3 = [(BKMinibarRevealAnimator *)self minibarView];
    [minibarView3 frame];
    v67 = v66;
    v101 = v68;
    v102 = v66;
    v69 = v68;
    v71 = v70;

    minibarView4 = [(BKMinibarRevealAnimator *)self minibarView];
    [minibarView4 setFrame:{v67, 0.0, v69, v71}];

    v122.origin.y = 0.0;
    v122.origin.x = v67;
    v122.size.width = v69;
    v122.size.height = v71;
    v73 = CGRectGetHeight(v122);
    contentView4 = [(BKMinibarRevealAnimator *)self contentView];
    v103 = v62;
    v104 = v59;
    [contentView4 setFrame:{v59, v73, v62, v64}];

    blackBottomView3 = [(BKMinibarRevealAnimator *)self blackBottomView];
    [blackBottomView3 frame];
    v77 = v76;
    v79 = v78;
    recta = v78;
    v81 = v80;

    v123.origin.x = v59;
    v123.origin.y = v73;
    v123.size.width = v62;
    v123.size.height = v64;
    v82 = CGRectGetMaxY(v123);
    blackBottomView4 = [(BKMinibarRevealAnimator *)self blackBottomView];
    [blackBottomView4 setFrame:{v77, v82, v79, v81}];

    v124.origin.y = 0.0;
    v124.origin.x = v102;
    v124.size.width = v101;
    v124.size.height = v71;
    v84 = v105 - CGRectGetHeight(v124);
    v125.origin.y = 0.0;
    v125.origin.x = v102;
    v125.size.width = v101;
    v125.size.height = v71;
    v85 = v64 + CGRectGetHeight(v125);
    v126.origin.x = v77;
    v126.origin.y = v82;
    v126.size.width = recta;
    v126.size.height = v81;
    v86 = v85 + CGRectGetHeight(v126);
    clipView = [(BKMinibarRevealAnimator *)self clipView];
    [clipView setFrame:{v104, v84, v103, v86}];

    tabBarView2 = [(BKMinibarRevealAnimator *)self tabBarView];
    [tabBarView2 frame];
    v90 = v89;
    v92 = v91;
    v94 = v93;

    containerView3 = [(BKMinibarRevealAnimator *)self containerView];
    [containerView3 bounds];
    v96 = CGRectGetHeight(v127);

    containerView2 = [(BKMinibarRevealAnimator *)self tabBarView];
    v97 = v92;
    v98 = v94;
    v46 = v106;
    Height = v107;
    [containerView2 setFrame:{v90, v96, v97, v98}];
  }

  v115[0] = _NSConcreteStackBlock;
  v115[1] = 3221225472;
  v115[2] = sub_1000737CC;
  v115[3] = &unk_100A038D0;
  v115[4] = self;
  v99 = [IMAnimationTracker animationTrackerWithCompletion:v115];
  v114[0] = _NSConcreteStackBlock;
  v114[1] = 3221225472;
  v114[2] = sub_100073848;
  v114[3] = &unk_100A04580;
  v114[4] = self;
  v114[5] = v110;
  *&v114[6] = v108;
  v114[7] = v109;
  *&v114[8] = v46;
  v114[9] = v111;
  *&v114[10] = Height;
  v114[11] = v113;
  v114[12] = v112;
  [v99 addAnimationWithBlock:v114];
}

- (void)_animationDidFinish
{
  toViewController = [(BKMinibarRevealAnimator *)self toViewController];
  v7 = BUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    containerView = [(BKMinibarRevealAnimator *)self containerView];
    [v7 transitionContextWillCompleteTransitionInContainerView:containerView];
  }

  transitionContext = [(BKMinibarRevealAnimator *)self transitionContext];
  transitionContext2 = [(BKMinibarRevealAnimator *)self transitionContext];
  [transitionContext completeTransition:{objc_msgSend(transitionContext2, "transitionWasCancelled") ^ 1}];
}

- (void)_setupViews
{
  if ([(BKMinibarRevealAnimator *)self opening])
  {
    [(BKMinibarRevealAnimator *)self toViewController];
  }

  else
  {
    [(BKMinibarRevealAnimator *)self fromViewController];
  }
  v3 = ;
  view = [v3 view];
  [(BKMinibarRevealAnimator *)self setContentView:view];

  contentView = [(BKMinibarRevealAnimator *)self contentView];
  v6 = [IMViewState saveStateForView:contentView flags:8];
  [(BKMinibarRevealAnimator *)self setContentViewState:v6];

  contentView2 = [(BKMinibarRevealAnimator *)self contentView];
  [contentView2 setAutoresizingMask:0];

  containerView = [(BKMinibarRevealAnimator *)self containerView];
  [containerView bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  contentView3 = [(BKMinibarRevealAnimator *)self contentView];
  [contentView3 setFrame:{v10, v12, v14, v16}];

  minifiedBarAnimator = [(BKMinibarRevealAnimator *)self minifiedBarAnimator];
  minifiedBarAnimatorContainerView = [minifiedBarAnimator minifiedBarAnimatorContainerView];
  minifiedBarAnimatorMinibarView = [minifiedBarAnimator minifiedBarAnimatorMinibarView];
  [(BKMinibarRevealAnimator *)self setMinibarView:minifiedBarAnimatorMinibarView];

  minibarView = [(BKMinibarRevealAnimator *)self minibarView];
  v21 = [IMViewState saveStateForView:minibarView flags:1];
  [(BKMinibarRevealAnimator *)self setMinibarViewState:v21];

  minifiedBarAnimatorTabBarView = [minifiedBarAnimator minifiedBarAnimatorTabBarView];
  [(BKMinibarRevealAnimator *)self setTabBarView:minifiedBarAnimatorTabBarView];

  tabBarView = [(BKMinibarRevealAnimator *)self tabBarView];
  v24 = [IMViewState saveStateForView:tabBarView flags:16];
  [(BKMinibarRevealAnimator *)self setTabBarViewState:v24];

  v25 = [UIView alloc];
  [minifiedBarAnimatorContainerView frame];
  v26 = [v25 initWithFrame:?];
  [(BKMinibarRevealAnimator *)self setClipView:v26];

  clipView = [(BKMinibarRevealAnimator *)self clipView];
  [clipView setClipsToBounds:1];

  if (![(BKMinibarRevealAnimator *)self opening])
  {
    containerView2 = [(BKMinibarRevealAnimator *)self containerView];
    toViewController = [(BKMinibarRevealAnimator *)self toViewController];
    view2 = [toViewController view];
    [containerView2 addSubview:view2];
  }

  containerView3 = [(BKMinibarRevealAnimator *)self containerView];
  clipView2 = [(BKMinibarRevealAnimator *)self clipView];
  [containerView3 addSubview:clipView2];

  v33 = [UIView alloc];
  containerView4 = [(BKMinibarRevealAnimator *)self containerView];
  [containerView4 frame];
  v35 = [v33 initWithFrame:{0.0, 0.0}];
  [(BKMinibarRevealAnimator *)self setBlackBottomView:v35];

  v36 = +[UIColor blackColor];
  blackBottomView = [(BKMinibarRevealAnimator *)self blackBottomView];
  [blackBottomView setBackgroundColor:v36];

  clipView3 = [(BKMinibarRevealAnimator *)self clipView];
  minibarView2 = [(BKMinibarRevealAnimator *)self minibarView];
  [clipView3 addSubview:minibarView2];

  clipView4 = [(BKMinibarRevealAnimator *)self clipView];
  contentView4 = [(BKMinibarRevealAnimator *)self contentView];
  [clipView4 addSubview:contentView4];

  clipView5 = [(BKMinibarRevealAnimator *)self clipView];
  blackBottomView2 = [(BKMinibarRevealAnimator *)self blackBottomView];
  [clipView5 addSubview:blackBottomView2];
}

- (void)_teardownViews:(BOOL)views
{
  viewsCopy = views;
  contentViewState = [(BKMinibarRevealAnimator *)self contentViewState];
  [contentViewState restore];

  minibarViewState = [(BKMinibarRevealAnimator *)self minibarViewState];
  [minibarViewState restore];

  tabBarViewState = [(BKMinibarRevealAnimator *)self tabBarViewState];
  [tabBarViewState restore];

  containerView = [(BKMinibarRevealAnimator *)self containerView];
  [containerView bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  contentView = [(BKMinibarRevealAnimator *)self contentView];
  [contentView setFrame:{v10, v12, v14, v16}];

  containerView2 = [(BKMinibarRevealAnimator *)self containerView];
  if (viewsCopy)
  {
    toViewController = [(BKMinibarRevealAnimator *)self toViewController];
    view = [toViewController view];
    [containerView2 addSubview:view];

    [(BKMinibarRevealAnimator *)self fromViewController];
  }

  else
  {
    fromViewController = [(BKMinibarRevealAnimator *)self fromViewController];
    view2 = [fromViewController view];
    [containerView2 addSubview:view2];

    [(BKMinibarRevealAnimator *)self toViewController];
  }
  v23 = ;
  view3 = [v23 view];
  [view3 removeFromSuperview];

  clipView = [(BKMinibarRevealAnimator *)self clipView];
  [clipView removeFromSuperview];
}

- (id)minifiedBarAnimator
{
  toViewController = [(BKMinibarRevealAnimator *)self toViewController];
  v3 = [toViewController im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKMinifiedBarAnimating];

  return v3;
}

@end