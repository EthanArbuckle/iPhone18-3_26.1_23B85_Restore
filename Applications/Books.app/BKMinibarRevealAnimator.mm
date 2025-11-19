@interface BKMinibarRevealAnimator
- (BKMinibarRevealAnimator)initWithOpening:(BOOL)a3;
- (double)duration;
- (double)transitionDuration:(id)a3;
- (id)minifiedBarAnimator;
- (void)_animationDidFinish;
- (void)_loadStateFromContext:(id)a3;
- (void)_setupViews;
- (void)_teardownViews:(BOOL)a3;
- (void)animateTransition:(id)a3;
@end

@implementation BKMinibarRevealAnimator

- (BKMinibarRevealAnimator)initWithOpening:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BKMinibarRevealAnimator;
  result = [(BKMinibarRevealAnimator *)&v5 init];
  if (result)
  {
    result->_opening = a3;
  }

  return result;
}

- (double)duration
{
  v2 = [(BKMinibarRevealAnimator *)self interactive];
  result = 0.7;
  if (!v2)
  {
    return 0.5;
  }

  return result;
}

- (void)_loadStateFromContext:(id)a3
{
  v4 = a3;
  [(BKMinibarRevealAnimator *)self setTransitionContext:v4];
  v5 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  [(BKMinibarRevealAnimator *)self setFromViewController:v5];

  v6 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  [(BKMinibarRevealAnimator *)self setToViewController:v6];

  v7 = [v4 containerView];
  [(BKMinibarRevealAnimator *)self setContainerView:v7];

  v8 = [v4 isInteractive];

  [(BKMinibarRevealAnimator *)self setInteractive:v8];
}

- (double)transitionDuration:(id)a3
{
  [(BKMinibarRevealAnimator *)self _loadStateFromContext:a3];

  [(BKMinibarRevealAnimator *)self duration];
  return result;
}

- (void)animateTransition:(id)a3
{
  [(BKMinibarRevealAnimator *)self _loadStateFromContext:a3];
  [(BKMinibarRevealAnimator *)self _setupViews];
  v4 = [(BKMinibarRevealAnimator *)self tabBarView];
  [v4 frame];
  v111 = v5;
  v112 = v6;
  v8 = v7;
  v113 = v9;

  if ([(BKMinibarRevealAnimator *)self opening])
  {
    v10 = [(BKMinibarRevealAnimator *)self minibarView];
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [(BKMinibarRevealAnimator *)self containerView];
    [v19 bounds];
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
    v27 = [(BKMinibarRevealAnimator *)self contentView];
    [v27 frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v34 = [(BKMinibarRevealAnimator *)self minibarView];
    [v34 frame];
    MaxY = CGRectGetMaxY(v118);

    v36 = [(BKMinibarRevealAnimator *)self contentView];
    [v36 setFrame:{v29, MaxY, v31, v33}];

    v37 = [(BKMinibarRevealAnimator *)self blackBottomView];
    [v37 frame];
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v119.origin.x = v29;
    v119.origin.y = MaxY;
    v119.size.width = v31;
    v119.size.height = v33;
    v44 = CGRectGetMaxY(v119);
    v45 = [(BKMinibarRevealAnimator *)self blackBottomView];
    [v45 setFrame:{v39, v44, v41, v43}];

    v120.origin.x = v39;
    v120.origin.y = v44;
    v120.size.width = v41;
    v120.size.height = v43;
    v46 = v26 + CGRectGetHeight(v120);
    v47 = [(BKMinibarRevealAnimator *)self containerView];
    [v47 bounds];
    Height = CGRectGetHeight(v121);
  }

  else
  {
    v49 = [(BKMinibarRevealAnimator *)self minifiedBarAnimator];
    v50 = [(BKMinibarRevealAnimator *)self toViewController];
    [v49 minifiedBarAnimatorAnimateShowIfNeededToViewController:v50 force:1];

    v51 = [(BKMinibarRevealAnimator *)self minifiedBarAnimator];
    v52 = [v51 minifiedBarAnimatorContainerView];
    [v52 frame];
    v109 = v54;
    v110 = v53;
    v108 = v55;
    v106 = v56;

    v57 = [(BKMinibarRevealAnimator *)self contentView];
    [v57 frame];
    v59 = v58;
    v105 = v60;
    v107 = v8;
    v62 = v61;
    v64 = v63;

    v65 = [(BKMinibarRevealAnimator *)self minibarView];
    [v65 frame];
    v67 = v66;
    v101 = v68;
    v102 = v66;
    v69 = v68;
    v71 = v70;

    v72 = [(BKMinibarRevealAnimator *)self minibarView];
    [v72 setFrame:{v67, 0.0, v69, v71}];

    v122.origin.y = 0.0;
    v122.origin.x = v67;
    v122.size.width = v69;
    v122.size.height = v71;
    v73 = CGRectGetHeight(v122);
    v74 = [(BKMinibarRevealAnimator *)self contentView];
    v103 = v62;
    v104 = v59;
    [v74 setFrame:{v59, v73, v62, v64}];

    v75 = [(BKMinibarRevealAnimator *)self blackBottomView];
    [v75 frame];
    v77 = v76;
    v79 = v78;
    recta = v78;
    v81 = v80;

    v123.origin.x = v59;
    v123.origin.y = v73;
    v123.size.width = v62;
    v123.size.height = v64;
    v82 = CGRectGetMaxY(v123);
    v83 = [(BKMinibarRevealAnimator *)self blackBottomView];
    [v83 setFrame:{v77, v82, v79, v81}];

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
    v87 = [(BKMinibarRevealAnimator *)self clipView];
    [v87 setFrame:{v104, v84, v103, v86}];

    v88 = [(BKMinibarRevealAnimator *)self tabBarView];
    [v88 frame];
    v90 = v89;
    v92 = v91;
    v94 = v93;

    v95 = [(BKMinibarRevealAnimator *)self containerView];
    [v95 bounds];
    v96 = CGRectGetHeight(v127);

    v47 = [(BKMinibarRevealAnimator *)self tabBarView];
    v97 = v92;
    v98 = v94;
    v46 = v106;
    Height = v107;
    [v47 setFrame:{v90, v96, v97, v98}];
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
  v3 = [(BKMinibarRevealAnimator *)self toViewController];
  v7 = BUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    v4 = [(BKMinibarRevealAnimator *)self containerView];
    [v7 transitionContextWillCompleteTransitionInContainerView:v4];
  }

  v5 = [(BKMinibarRevealAnimator *)self transitionContext];
  v6 = [(BKMinibarRevealAnimator *)self transitionContext];
  [v5 completeTransition:{objc_msgSend(v6, "transitionWasCancelled") ^ 1}];
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
  v4 = [v3 view];
  [(BKMinibarRevealAnimator *)self setContentView:v4];

  v5 = [(BKMinibarRevealAnimator *)self contentView];
  v6 = [IMViewState saveStateForView:v5 flags:8];
  [(BKMinibarRevealAnimator *)self setContentViewState:v6];

  v7 = [(BKMinibarRevealAnimator *)self contentView];
  [v7 setAutoresizingMask:0];

  v8 = [(BKMinibarRevealAnimator *)self containerView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(BKMinibarRevealAnimator *)self contentView];
  [v17 setFrame:{v10, v12, v14, v16}];

  v44 = [(BKMinibarRevealAnimator *)self minifiedBarAnimator];
  v18 = [v44 minifiedBarAnimatorContainerView];
  v19 = [v44 minifiedBarAnimatorMinibarView];
  [(BKMinibarRevealAnimator *)self setMinibarView:v19];

  v20 = [(BKMinibarRevealAnimator *)self minibarView];
  v21 = [IMViewState saveStateForView:v20 flags:1];
  [(BKMinibarRevealAnimator *)self setMinibarViewState:v21];

  v22 = [v44 minifiedBarAnimatorTabBarView];
  [(BKMinibarRevealAnimator *)self setTabBarView:v22];

  v23 = [(BKMinibarRevealAnimator *)self tabBarView];
  v24 = [IMViewState saveStateForView:v23 flags:16];
  [(BKMinibarRevealAnimator *)self setTabBarViewState:v24];

  v25 = [UIView alloc];
  [v18 frame];
  v26 = [v25 initWithFrame:?];
  [(BKMinibarRevealAnimator *)self setClipView:v26];

  v27 = [(BKMinibarRevealAnimator *)self clipView];
  [v27 setClipsToBounds:1];

  if (![(BKMinibarRevealAnimator *)self opening])
  {
    v28 = [(BKMinibarRevealAnimator *)self containerView];
    v29 = [(BKMinibarRevealAnimator *)self toViewController];
    v30 = [v29 view];
    [v28 addSubview:v30];
  }

  v31 = [(BKMinibarRevealAnimator *)self containerView];
  v32 = [(BKMinibarRevealAnimator *)self clipView];
  [v31 addSubview:v32];

  v33 = [UIView alloc];
  v34 = [(BKMinibarRevealAnimator *)self containerView];
  [v34 frame];
  v35 = [v33 initWithFrame:{0.0, 0.0}];
  [(BKMinibarRevealAnimator *)self setBlackBottomView:v35];

  v36 = +[UIColor blackColor];
  v37 = [(BKMinibarRevealAnimator *)self blackBottomView];
  [v37 setBackgroundColor:v36];

  v38 = [(BKMinibarRevealAnimator *)self clipView];
  v39 = [(BKMinibarRevealAnimator *)self minibarView];
  [v38 addSubview:v39];

  v40 = [(BKMinibarRevealAnimator *)self clipView];
  v41 = [(BKMinibarRevealAnimator *)self contentView];
  [v40 addSubview:v41];

  v42 = [(BKMinibarRevealAnimator *)self clipView];
  v43 = [(BKMinibarRevealAnimator *)self blackBottomView];
  [v42 addSubview:v43];
}

- (void)_teardownViews:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKMinibarRevealAnimator *)self contentViewState];
  [v5 restore];

  v6 = [(BKMinibarRevealAnimator *)self minibarViewState];
  [v6 restore];

  v7 = [(BKMinibarRevealAnimator *)self tabBarViewState];
  [v7 restore];

  v8 = [(BKMinibarRevealAnimator *)self containerView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(BKMinibarRevealAnimator *)self contentView];
  [v17 setFrame:{v10, v12, v14, v16}];

  v18 = [(BKMinibarRevealAnimator *)self containerView];
  if (v3)
  {
    v19 = [(BKMinibarRevealAnimator *)self toViewController];
    v20 = [v19 view];
    [v18 addSubview:v20];

    [(BKMinibarRevealAnimator *)self fromViewController];
  }

  else
  {
    v21 = [(BKMinibarRevealAnimator *)self fromViewController];
    v22 = [v21 view];
    [v18 addSubview:v22];

    [(BKMinibarRevealAnimator *)self toViewController];
  }
  v23 = ;
  v24 = [v23 view];
  [v24 removeFromSuperview];

  v25 = [(BKMinibarRevealAnimator *)self clipView];
  [v25 removeFromSuperview];
}

- (id)minifiedBarAnimator
{
  v2 = [(BKMinibarRevealAnimator *)self toViewController];
  v3 = [v2 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKMinifiedBarAnimating];

  return v3;
}

@end