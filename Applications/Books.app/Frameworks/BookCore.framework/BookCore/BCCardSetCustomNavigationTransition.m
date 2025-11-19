@interface BCCardSetCustomNavigationTransition
- (BCCardSetNavigationSource)cardSetViewController;
- (CGAffineTransform)startingTransform;
- (CGAffineTransform)targetTransform;
- (CGPoint)snapshotAnchorPoint;
- (CGRect)endingRect;
- (CGRect)offScreen;
- (CGRect)onScreen;
- (CGRect)snapshotFrame;
- (CGRect)startingRect;
- (double)transitionDuration:(id)a3;
- (id)interruptibleAnimatorForTransition:(id)a3;
- (void)animateTransition:(id)a3;
- (void)animationCompleteWithFinished:(BOOL)a3;
- (void)createAnimator;
- (void)initalizeAnimation;
- (void)setStartingTransform:(CGAffineTransform *)a3;
- (void)setTargetTransform:(CGAffineTransform *)a3;
- (void)setup;
- (void)updateAnimator;
@end

@implementation BCCardSetCustomNavigationTransition

- (void)animateTransition:(id)a3
{
  v3 = [(BCCardSetCustomNavigationTransition *)self interruptibleAnimatorForTransition:a3];
  [v3 startAnimation];
}

- (void)initalizeAnimation
{
  v3 = [(BCCardSetCustomNavigationTransition *)self transitioningContext];
  v4 = [v3 viewForKey:UITransitionContextFromViewKey];
  [(BCCardSetCustomNavigationTransition *)self setFromView:v4];

  v5 = [v3 viewForKey:UITransitionContextToViewKey];
  [(BCCardSetCustomNavigationTransition *)self setToView:v5];

  v6 = [v3 viewControllerForKey:UITransitionContextToViewControllerKey];
  [(BCCardSetCustomNavigationTransition *)self setToViewController:v6];

  v7 = [v3 viewControllerForKey:UITransitionContextFromViewControllerKey];
  [v3 initialFrameForViewController:v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(BCCardSetCustomNavigationTransition *)self setOnScreen:?];
  v144 = v7;
  v16 = [v7 traitCollection];
  v17 = [v16 layoutDirection];

  v164.origin.x = v9;
  v164.origin.y = v11;
  v164.size.width = v13;
  v164.size.height = v15;
  MinX = CGRectGetMinX(v164);
  v165.origin.x = v9;
  v165.origin.y = v11;
  v165.size.width = v13;
  v165.size.height = v15;
  Width = CGRectGetWidth(v165);
  v20 = MinX - Width + -1.0;
  v21 = MinX + Width + 1.0;
  v142 = v17;
  if (v17 == &dword_0 + 1)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v166.origin.x = v9;
  v166.origin.y = v11;
  v166.size.width = v13;
  v166.size.height = v15;
  MinY = CGRectGetMinY(v166);
  v167.origin.x = v9;
  v167.origin.y = v11;
  v167.size.width = v13;
  v167.size.height = v15;
  v24 = CGRectGetWidth(v167);
  v168.origin.x = v9;
  v168.origin.y = v11;
  v168.size.width = v13;
  v168.size.height = v15;
  [(BCCardSetCustomNavigationTransition *)self setOffScreen:v22, MinY, v24, CGRectGetHeight(v168)];
  [(BCCardSetCustomNavigationTransition *)self setSnapshotFrame:v9, v11, v13, v15];
  v25 = [[UIView alloc] initWithFrame:{v9, v11, v13, v15}];
  [(BCCardSetCustomNavigationTransition *)self setSnapshotContainerView:v25];

  [(BCCardSetCustomNavigationTransition *)self setup];
  v26 = [v3 containerView];
  v27 = [(BCCardSetCustomNavigationTransition *)self toView];
  [v26 addSubview:v27];

  v28 = [(BCCardSetCustomNavigationTransition *)self viewToSnapshot];
  [v28 frame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  [(BCCardSetCustomNavigationTransition *)self snapshotFrame];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [(BCCardSetCustomNavigationTransition *)self viewToSnapshot];
  [v45 setFrame:{v38, v40, v42, v44}];

  objc_opt_class();
  v46 = [(BCCardSetCustomNavigationTransition *)self viewToSnapshot];
  v47 = BUDynamicCast();

  [v47 contentOffset];
  v49 = v48;
  v51 = v50;
  y = CGPointZero.y;
  [v47 setContentOffset:{CGPointZero.x, y}];
  v53 = [(BCCardSetCustomNavigationTransition *)self viewToSnapshot];
  v54 = [v53 snapshotViewAfterScreenUpdates:{-[BCCardSetCustomNavigationTransition afterScreenUpdates](self, "afterScreenUpdates")}];

  v55 = [(BCCardSetCustomNavigationTransition *)self viewToSnapshot];
  v56 = [v55 layer];
  v57 = [v56 flipsHorizontalAxis];
  v58 = [v54 layer];
  [v58 setFlipsHorizontalAxis:v57];

  v143 = v47;
  [v47 setContentOffset:{v49, v51}];
  v59 = [(BCCardSetCustomNavigationTransition *)self viewToSnapshot];
  [v59 setFrame:{v30, v32, v34, v36}];

  v60 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v61 = [v60 currentCardViewController];

  v62 = [v61 auxiliaryNavigationBarView];
  [v62 setHidden:1];

  v63 = +[UIColor bc_booksBackground];
  [v54 setBackgroundColor:v63];

  v64 = [v61 auxiliaryNavigationBarViewForAnimation];
  if (v64)
  {
    [v54 addSubview:v64];
    [v61 anchorAuxiliaryNavigationBarView:v64 toView:v54];
    [(BCCardSetCustomNavigationTransition *)self gripperStartingAlpha];
    [v64 setAlpha:?];
  }

  v65 = [(BCCardSetCustomNavigationTransition *)self viewToHide];
  [v65 setAlpha:0.0];

  v66 = [(BCCardSetCustomNavigationTransition *)self viewToSlide];
  v67 = [UIView alloc];
  [(BCCardSetCustomNavigationTransition *)self startingRect];
  v68 = [v67 initWithFrame:?];
  [v68 bounds];
  [v66 setFrame:?];
  v140 = v68;
  v141 = v66;
  [v68 addSubview:v66];
  v69 = *&CGAffineTransformIdentity.c;
  v161 = *&CGAffineTransformIdentity.a;
  v162 = v69;
  v163 = *&CGAffineTransformIdentity.tx;
  [v54 setTransform:&v161];
  [(BCCardSetCustomNavigationTransition *)self snapshotAnchorPoint];
  if (v71 != CGPointZero.x || v70 != y)
  {
    [(BCCardSetCustomNavigationTransition *)self snapshotAnchorPoint];
    v73 = v72;
    v75 = v74;
    v76 = [v54 layer];
    [v76 setAnchorPoint:{v73, v75}];
  }

  [(BCCardSetCustomNavigationTransition *)self snapshotFrame];
  [v54 setFrame:?];
  [v61 setRoundedCorners:1];
  v77 = [v61 cardView];
  [v54 bc_applyCornerRadiusFromView:v77];

  [v54 setClipsToBounds:1];
  [(BCCardSetCustomNavigationTransition *)self startingTransform];
  v78 = [(BCCardSetCustomNavigationTransition *)self snapshotContainerView];
  v161 = v158;
  v162 = v159;
  v163 = v160;
  [v78 setTransform:&v161];

  v79 = [(BCCardSetCustomNavigationTransition *)self snapshotContainerView];
  [v79 addSubview:v54];

  v80 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v81 = [v80 focusedIndex];

  v82 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v83 = [v82 cardCount];

  if (v81)
  {
    v84 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    v85 = [v84 cardViewControllerAtIndex:v81 - 1];
    v86 = [v85 cardView];
  }

  else
  {
    v86 = 0;
  }

  if (v81 >= v83)
  {
    v89 = 0;
  }

  else
  {
    v87 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    v88 = [v87 cardViewControllerAtIndex:v81 + 1];
    v89 = [v88 cardView];
  }

  if (v142 == &dword_0 + 1)
  {
    v90 = v86;
  }

  else
  {
    v90 = v89;
  }

  if (v142 == &dword_0 + 1)
  {
    v91 = v89;
  }

  else
  {
    v91 = v86;
  }

  if (v91)
  {
    v92 = [v91 snapshotViewAfterScreenUpdates:{-[BCCardSetCustomNavigationTransition afterScreenUpdates](self, "afterScreenUpdates")}];
    [(BCCardSetCustomNavigationTransition *)self snapshotFrame];
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v100 = v99;
    [(BCCardSetCustomNavigationTransition *)self snapshotFrame];
    v102 = v101;
    v103 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    [v103 _cardSeparation];
    v105 = v94 - (v102 + v104);

    [v92 setFrame:{v105, v96, v98, v100}];
    v106 = [(BCCardSetCustomNavigationTransition *)self snapshotContainerView];
    [v106 addSubview:v92];
  }

  if (v90)
  {
    v107 = [v90 snapshotViewAfterScreenUpdates:{-[BCCardSetCustomNavigationTransition afterScreenUpdates](self, "afterScreenUpdates")}];
    [(BCCardSetCustomNavigationTransition *)self snapshotFrame];
    v109 = v108;
    v111 = v110;
    v113 = v112;
    v115 = v114;
    [(BCCardSetCustomNavigationTransition *)self snapshotFrame];
    v117 = v116;
    v118 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
    [v118 _cardSeparation];
    v120 = v109 + v117 + v119;

    [v107 setFrame:{v120, v111, v113, v115}];
    v121 = [(BCCardSetCustomNavigationTransition *)self snapshotContainerView];
    [v121 addSubview:v107];
  }

  v122 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v123 = [v122 navigationSkrimView];
  [v123 removeFromSuperview];

  v124 = [v3 containerView];
  v125 = [(BCCardSetCustomNavigationTransition *)self snapshotContainerView];
  [v124 addSubview:v125];

  v126 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v127 = [v126 navigationSkrimView];
  [v124 addSubview:v127];

  [v124 addSubview:v140];
  v128 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v129 = [v128 delegate];
  [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v130 = v139 = v90;
  [v129 cardSetViewController:v130 prepareForNavigationTransitionWithContext:v3];

  [(BCCardSetCustomNavigationTransition *)self updateAnimator];
  v163 = 0u;
  v162 = 0u;
  v161 = 0u;
  [(BCCardSetCustomNavigationTransition *)self targetTransform];
  v131 = [(BCCardSetCustomNavigationTransition *)self animator];
  v151[0] = _NSConcreteStackBlock;
  v151[1] = 3221225472;
  v151[2] = sub_99ECC;
  v151[3] = &unk_2CBF98;
  v132 = v140;
  v152 = v132;
  v153 = self;
  v155 = v161;
  v156 = v162;
  v157 = v163;
  v154 = v64;
  v133 = v64;
  [v131 addAnimations:v151];
  v145[0] = _NSConcreteStackBlock;
  v145[1] = 3221225472;
  v145[2] = sub_99F44;
  v145[3] = &unk_2CBFC0;
  v145[4] = self;
  v146 = v124;
  v147 = v141;
  v148 = v132;
  v149 = v3;
  v150 = v61;
  v134 = v61;
  v135 = v3;
  v136 = v132;
  v137 = v141;
  v138 = v124;
  [v131 addCompletion:v145];
  [(BCCardSetCustomNavigationTransition *)self setAnimatorInitialized:1];
}

- (id)interruptibleAnimatorForTransition:(id)a3
{
  v4 = a3;
  v5 = [(BCCardSetCustomNavigationTransition *)self animator];

  if (!v5)
  {
    [(BCCardSetCustomNavigationTransition *)self setTransitioningContext:v4];
    [(BCCardSetCustomNavigationTransition *)self createAnimator];
  }

  if (![(BCCardSetCustomNavigationTransition *)self animatorInitialized])
  {
    [(BCCardSetCustomNavigationTransition *)self initalizeAnimation];
  }

  v6 = [(BCCardSetCustomNavigationTransition *)self animator];

  return v6;
}

- (void)createAnimator
{
  v3 = [(BCCardSetCustomNavigationTransition *)self cardSetViewController];
  v4 = [v3 percentDrivenInteractiveTransition];
  if (v4)
  {
    v5 = [[UICubicTimingParameters alloc] initWithAnimationCurve:3];
  }

  else
  {
    v5 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:250.0 damping:35.0 initialVelocity:{0.0, 0.0}];
  }

  v7 = v5;

  v6 = [[UIViewPropertyAnimator alloc] initWithDuration:v7 timingParameters:0.35];
  [(BCCardSetCustomNavigationTransition *)self setAnimator:v6];
}

- (double)transitionDuration:(id)a3
{
  v4 = a3;
  v5 = [(BCCardSetCustomNavigationTransition *)self animator];

  if (!v5)
  {
    [(BCCardSetCustomNavigationTransition *)self setTransitioningContext:v4];
    [(BCCardSetCustomNavigationTransition *)self createAnimator];
  }

  v6 = [(BCCardSetCustomNavigationTransition *)self animator];
  [v6 duration];
  v8 = v7;

  return v8;
}

- (void)updateAnimator
{
  v2 = [NSString stringWithFormat:@"must override %s", "[BCCardSetCustomNavigationTransition updateAnimator]"];
  v3 = [NSException exceptionWithName:@"abstract base class" reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (void)animationCompleteWithFinished:(BOOL)a3
{
  v3 = [NSString stringWithFormat:@"must override %s", "[BCCardSetCustomNavigationTransition animationCompleteWithFinished:]"];
  v4 = [NSException exceptionWithName:@"abstract base class" reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (void)setup
{
  v2 = [NSString stringWithFormat:@"must override %s", "[BCCardSetCustomNavigationTransition setup]"];
  v3 = [NSException exceptionWithName:@"abstract base class" reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (BCCardSetNavigationSource)cardSetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_cardSetViewController);

  return WeakRetained;
}

- (CGRect)onScreen
{
  x = self->_onScreen.origin.x;
  y = self->_onScreen.origin.y;
  width = self->_onScreen.size.width;
  height = self->_onScreen.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)offScreen
{
  x = self->_offScreen.origin.x;
  y = self->_offScreen.origin.y;
  width = self->_offScreen.size.width;
  height = self->_offScreen.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)snapshotFrame
{
  x = self->_snapshotFrame.origin.x;
  y = self->_snapshotFrame.origin.y;
  width = self->_snapshotFrame.size.width;
  height = self->_snapshotFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)snapshotAnchorPoint
{
  x = self->_snapshotAnchorPoint.x;
  y = self->_snapshotAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)startingRect
{
  x = self->_startingRect.origin.x;
  y = self->_startingRect.origin.y;
  width = self->_startingRect.size.width;
  height = self->_startingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)endingRect
{
  x = self->_endingRect.origin.x;
  y = self->_endingRect.origin.y;
  width = self->_endingRect.size.width;
  height = self->_endingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)startingTransform
{
  v3 = *&self[6].c;
  *&retstr->a = *&self[6].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[6].tx;
  return self;
}

- (void)setStartingTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_startingTransform.c = *&a3->c;
  *&self->_startingTransform.tx = v4;
  *&self->_startingTransform.a = v3;
}

- (CGAffineTransform)targetTransform
{
  v3 = *&self[7].c;
  *&retstr->a = *&self[7].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[7].tx;
  return self;
}

- (void)setTargetTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_targetTransform.c = *&a3->c;
  *&self->_targetTransform.tx = v4;
  *&self->_targetTransform.a = v3;
}

@end