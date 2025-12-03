@interface BCCardStackTransitionAnimator
+ (BOOL)_isSlowModeEnabled;
- (BCCardStackTransitionAnimator)initWithType:(int64_t)type allowsCardExpansion:(BOOL)expansion;
- (BOOL)_prefersCrossfade;
- (CGAffineTransform)_translationForTitleLabel:(SEL)label cardSuperview:(id)superview cardCurrentFrame:(id)frame cardTargetFrame:(CGRect)targetFrame;
- (CGVector)_dismissSpringVelocityWithFromFrame:(CGRect)frame toFrame:(CGRect)toFrame;
- (double)_debugDragCoefficient;
- (double)transitionDuration:(id)duration;
- (id)_addCoverForCoverMove:(id)move inView:(id)view isDismiss:(BOOL)dismiss fromFrame:(CGRect *)frame toFrame:(CGRect *)toFrame;
- (id)_addCoverForCoverSource:(id)source inView:(id)view;
- (id)_adjustSpring:(id)spring;
- (id)_cardSlideDownSpringWithVelocity:(CGVector)velocity;
- (id)_coverScaleSpring;
- (id)_coverSpring;
- (id)_coverSpringForDismissWithVelocity:(CGVector)velocity isCompact:(BOOL)compact;
- (id)_customCurve;
- (void)_animatePopByCoverTransitioning:(id)transitioning;
- (void)_animatePopByCrossfading:(id)crossfading;
- (void)_animatePopBySliding:(id)sliding;
- (void)_animatePushByCoverTransitioning:(id)transitioning;
- (void)_animatePushByCrossfading:(id)crossfading;
- (void)_animatePushBySliding:(id)sliding;
- (void)_clearTranslationForView:(id)view;
- (void)_prepareCardForCardMove:(id)move isDismiss:(BOOL)dismiss fromFrame:(CGRect *)frame toFrame:(CGRect *)toFrame;
- (void)addAnimations:(id)animations;
- (void)animateTransition:(id)transition;
- (void)animationEnded:(BOOL)ended;
@end

@implementation BCCardStackTransitionAnimator

- (BCCardStackTransitionAnimator)initWithType:(int64_t)type allowsCardExpansion:(BOOL)expansion
{
  v13.receiver = self;
  v13.super_class = BCCardStackTransitionAnimator;
  v6 = [(BCCardStackTransitionAnimator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_animationType = type;
    v8 = objc_opt_new();
    additionalAnimations = v7->_additionalAnimations;
    v7->_additionalAnimations = v8;

    v10 = +[NSMutableArray array];
    viewsToBeCleanedUp = v7->_viewsToBeCleanedUp;
    v7->_viewsToBeCleanedUp = v10;

    v7->_cardsCanExpand = expansion;
  }

  return v7;
}

- (void)addAnimations:(id)animations
{
  additionalAnimations = self->_additionalAnimations;
  v4 = objc_retainBlock(animations);
  [(NSMutableArray *)additionalAnimations addObject:v4];
}

- (double)transitionDuration:(id)duration
{
  durationCopy = duration;
  if ([(BCCardStackTransitionAnimator *)self _prefersCrossfade])
  {
    [(BCCardStackTransitionAnimator *)self _adjustDuration:0.3];
    v6 = v5;
    goto LABEL_13;
  }

  animationType = self->_animationType;
  v6 = 0.0;
  if (animationType <= 1)
  {
    if (animationType)
    {
      if (animationType != 1)
      {
        goto LABEL_13;
      }

      _coverSpring = [(BCCardStackTransitionAnimator *)self _coverSpring];
    }

    else
    {
      _coverSpring = [(BCCardStackTransitionAnimator *)self _cardSlideUpSpring];
    }

LABEL_12:
    v12 = _coverSpring;
    [_coverSpring settlingDuration];
    v6 = v13;

    goto LABEL_13;
  }

  if (animationType == 2)
  {
    _coverSpring = [(BCCardStackTransitionAnimator *)self _cardSlideDownSpringWithVelocity:0.0, 0.0];
    goto LABEL_12;
  }

  if (animationType == 3)
  {
    v9 = [durationCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
    v10 = -[BCCardStackTransitionAnimator _coverSpringForDismissWithVelocity:isCompact:](self, "_coverSpringForDismissWithVelocity:isCompact:", [v9 im_isCompactWidth], 0.0, 0.0);
    [v10 settlingDuration];
    v6 = v11;
  }

LABEL_13:

  return v6;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  animationType = self->_animationType;
  if (animationType > 1)
  {
    if (animationType == 2)
    {
      if (![(BCCardStackTransitionAnimator *)self _prefersCrossfade])
      {
        [(BCCardStackTransitionAnimator *)self _animatePopBySliding:transitionCopy];
        goto LABEL_16;
      }
    }

    else
    {
      if (animationType != 3)
      {
        goto LABEL_16;
      }

      if (![(BCCardStackTransitionAnimator *)self _prefersCrossfade])
      {
        [(BCCardStackTransitionAnimator *)self _animatePopByCoverTransitioning:transitionCopy];
        goto LABEL_16;
      }
    }

    [(BCCardStackTransitionAnimator *)self _animatePopByCrossfading:transitionCopy];
    goto LABEL_16;
  }

  if (animationType)
  {
    if (animationType != 1)
    {
      goto LABEL_16;
    }

    if (![(BCCardStackTransitionAnimator *)self _prefersCrossfade])
    {
      [(BCCardStackTransitionAnimator *)self _animatePushByCoverTransitioning:transitionCopy];
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if ([(BCCardStackTransitionAnimator *)self _prefersCrossfade])
  {
LABEL_11:
    [(BCCardStackTransitionAnimator *)self _animatePushByCrossfading:transitionCopy];
    goto LABEL_16;
  }

  [(BCCardStackTransitionAnimator *)self _animatePushBySliding:transitionCopy];
LABEL_16:
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"BCCardStackTransitionTestAnimationWillBeginNotification" object:self];
}

- (void)animationEnded:(BOOL)ended
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(BCCardStackTransitionAnimator *)self viewsToBeCleanedUp:ended];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v8) removeFromSuperview];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  viewsToBeCleanedUp = [(BCCardStackTransitionAnimator *)self viewsToBeCleanedUp];
  [viewsToBeCleanedUp removeAllObjects];

  [(BCCardStackTransitionAnimator *)self setCoverControllers:0];
}

- (BOOL)_prefersCrossfade
{
  if ([(BCCardStackTransitionAnimator *)self prefersCrossfade])
  {
    return 1;
  }

  return UIAccessibilityIsReduceMotionEnabled();
}

- (void)_animatePushBySliding:(id)sliding
{
  slidingCopy = sliding;
  v5 = [slidingCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  v6 = [slidingCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v7 = [slidingCopy viewForKey:@"BCUITransitionContextBackgroundViewKey"];
  v8 = [slidingCopy viewForKey:@"BCUITransitionContextTitleLabelKey"];
  if (self->_cardsCanExpand || !v6)
  {
    containerView = [slidingCopy containerView];
    [containerView addSubview:v7];

    containerView2 = [slidingCopy containerView];
    [containerView2 addSubview:v8];
  }

  v46 = v6;
  if ([v6 expanded])
  {
    [v7 setAlpha:0.0];
    [v8 setAlpha:0.0];
  }

  containerView3 = [slidingCopy containerView];
  view = [v5 view];
  [containerView3 addSubview:view];

  [slidingCopy initialFrameForViewController:v5];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  view2 = [v5 view];
  [view2 setFrame:{v14, v16, v18, v20}];

  v22 = objc_alloc_init(BCViewPropertyAnimatorCounter);
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_ADCD4;
  v58[3] = &unk_2C7D40;
  v23 = slidingCopy;
  v59 = v23;
  [(BCViewPropertyAnimatorCounter *)v22 setAnimationDidEnd:v58];
  v24 = [UIViewPropertyAnimator alloc];
  [(BCCardStackTransitionAnimator *)self _adjustDuration:0.13];
  v26 = v25;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_ADCE0;
  v56[3] = &unk_2C7D40;
  v45 = v7;
  v57 = v45;
  v44 = [v24 initWithDuration:0 curve:v56 animations:v26];
  [(BCViewPropertyAnimatorCounter *)v22 animate:?];
  v27 = [UIViewPropertyAnimator alloc];
  [(BCCardStackTransitionAnimator *)self _adjustDuration:0.18];
  v29 = v28;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_ADCEC;
  v54[3] = &unk_2C7D40;
  v30 = v8;
  v55 = v30;
  v31 = [v27 initWithDuration:0 curve:v54 animations:v29];
  [(BCViewPropertyAnimatorCounter *)v22 animate:v31];
  v32 = [UIViewPropertyAnimator alloc];
  _cardSlideUpSpring = [(BCCardStackTransitionAnimator *)self _cardSlideUpSpring];
  v34 = [v32 initWithDuration:_cardSlideUpSpring timingParameters:0.0];

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_ADCF8;
  v51[3] = &unk_2C7BE8;
  v35 = v5;
  v52 = v35;
  v36 = v23;
  v53 = v36;
  [v34 addAnimations:v51];
  [(BCViewPropertyAnimatorCounter *)v22 animate:v34];
  [(BCCardStackTransitionAnimator *)self _adjustDuration:0.5];
  v38 = v37;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v39 = self->_additionalAnimations;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v48;
    do
    {
      v43 = 0;
      do
      {
        if (*v48 != v42)
        {
          objc_enumerationMutation(v39);
        }

        (*(*(*(&v47 + 1) + 8 * v43) + 16))(v38);
        v43 = v43 + 1;
      }

      while (v41 != v43);
      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v41);
  }
}

- (id)_cardSlideDownSpringWithVelocity:(CGVector)velocity
{
  v4 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:350.0 damping:30.0 initialVelocity:{velocity.dx, velocity.dy}];
  v5 = [(BCCardStackTransitionAnimator *)self _adjustSpring:v4];

  return v5;
}

- (CGAffineTransform)_translationForTitleLabel:(SEL)label cardSuperview:(id)superview cardCurrentFrame:(id)frame cardTargetFrame:(CGRect)targetFrame
{
  width = a7.size.width;
  height = a7.size.height;
  y = a7.origin.y;
  x = a7.origin.x;
  v7 = targetFrame.size.height;
  v8 = targetFrame.size.width;
  v9 = targetFrame.origin.y;
  v10 = targetFrame.origin.x;
  frameCopy = frame;
  superviewCopy = superview;
  [superviewCopy frame];
  superview = [superviewCopy superview];

  CGRectGetCenterNoRounding();
  [superview convertRect:frameCopy fromView:{v10, v9, v8, v7}];
  v15 = v36.origin.x;
  v16 = v36.origin.y;
  v17 = v36.size.width;
  v18 = v36.size.height;
  CGRectGetMidX(v36);
  v37.origin.x = v15;
  v37.origin.y = v16;
  v37.size.width = v17;
  v37.size.height = v18;
  CGRectGetMinY(v37);
  CGRectGetCenterNoRounding();
  CGPointSubtract();
  [superview convertRect:frameCopy fromView:{x, y, width, height}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v38.origin.x = v20;
  v38.origin.y = v22;
  v38.size.width = v24;
  v38.size.height = v26;
  CGRectGetMidX(v38);
  v39.origin.x = v20;
  v39.origin.y = v22;
  v39.size.width = v24;
  v39.size.height = v26;
  CGRectGetMinY(v39);
  CGPointAdd();
  CGPointSubtract();
  CGAffineTransformMakeTranslation(retstr, v27, v28);

  return result;
}

- (void)_animatePopBySliding:(id)sliding
{
  slidingCopy = sliding;
  v5 = [slidingCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v6 = [slidingCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  v85 = [slidingCopy viewForKey:@"BCUITransitionContextBackgroundViewKey"];
  obj = slidingCopy;
  v89 = [slidingCopy viewForKey:@"BCUITransitionContextTitleLabelKey"];
  v87 = v6;
  v95 = self->_cardsCanExpand || v6 == 0;
  view = [v5 view];
  [view bounds];
  MaxY = CGRectGetMaxY(v144);

  v8 = *&CGAffineTransformIdentity.c;
  *&v138.a = *&CGAffineTransformIdentity.a;
  *&v138.c = v8;
  *&v138.tx = *&CGAffineTransformIdentity.tx;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  cardSlideItems = [(BCCardStackTransitionAnimator *)self cardSlideItems];
  v10 = [cardSlideItems countByEnumeratingWithState:&v134 objects:v143 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v135;
    v91 = 0.0;
    v93 = 0.0;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v135 != v12)
        {
          objc_enumerationMutation(cardSlideItems);
        }

        v14 = *(*(&v134 + 1) + 8 * i);
        card = [v14 card];
        cardStackTransitioningCardView = [card cardStackTransitioningCardView];

        superview = [cardStackTransitioningCardView superview];
        [(BCCardStackTransitionAnimator *)self _clearTranslationForView:cardStackTransitioningCardView];
        [cardStackTransitioningCardView frame];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        view2 = [v5 view];
        [superview convertPoint:view2 fromView:{0.0, MaxY}];
        v28 = v27;

        v145.origin.x = v19;
        v145.origin.y = v21;
        v145.size.width = v23;
        v145.size.height = v25;
        v29 = v28 - CGRectGetMinY(v145);
        v146.origin.x = v19;
        v146.origin.y = v21;
        v146.size.width = v23;
        v146.size.height = v25;
        v147 = CGRectOffset(v146, 0.0, v29);
        x = v147.origin.x;
        y = v147.origin.y;
        width = v147.size.width;
        height = v147.size.height;
        CGRectGetCenterNoRounding();
        [v14 setCardToCenter:?];
        if ([v14 isFocusedCard])
        {
          [(BCCardStackTransitionAnimator *)self _dismissSpringVelocityWithFromFrame:v19 toFrame:v21, v23, v25, x, y, width, height];
          v91 = v34;
          v93 = v35;
          if (v95)
          {
            memset(&v133, 0, sizeof(v133));
            [(BCCardStackTransitionAnimator *)self _translationForTitleLabel:v89 cardSuperview:superview cardCurrentFrame:v19 cardTargetFrame:v21, v23, v25, x, y, width, height];
            if (v89)
            {
              [v89 transform];
            }

            else
            {
              memset(&t2, 0, sizeof(t2));
            }

            t1 = v133;
            CGAffineTransformConcat(&v138, &t1, &t2);
          }
        }
      }

      v11 = [cardSlideItems countByEnumeratingWithState:&v134 objects:v143 count:16];
    }

    while (v11);
  }

  else
  {
    v91 = 0.0;
    v93 = 0.0;
  }

  v88 = v5;

  v99 = +[NSMutableDictionary dictionary];
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  coverFadeItems = [(BCCardStackTransitionAnimator *)self coverFadeItems];
  v37 = [coverFadeItems countByEnumeratingWithState:&v127 objects:v142 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v128;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v128 != v39)
        {
          objc_enumerationMutation(coverFadeItems);
        }

        v41 = *(*(&v127 + 1) + 8 * j);
        v42 = [v41 key];
        v43 = [obj viewForKey:@"BCUITransitionContextClippedCoverContainerViewKey"];
        coverSource = [v41 coverSource];
        v45 = [(BCCardStackTransitionAnimator *)self _addCoverForCoverSource:coverSource inView:v43];
        [v99 setObject:v45 forKeyedSubscript:v42];
      }

      v38 = [coverFadeItems countByEnumeratingWithState:&v127 objects:v142 count:16];
    }

    while (v38);
  }

  v46 = objc_alloc_init(BCViewPropertyAnimatorCounter);
  v122[0] = _NSConcreteStackBlock;
  v122[1] = 3221225472;
  v122[2] = sub_AEA54;
  v122[3] = &unk_2CBED8;
  v47 = v87;
  v123 = v47;
  v48 = v85;
  v124 = v48;
  v49 = v89;
  v125 = v49;
  v50 = obj;
  v126 = v50;
  [(BCViewPropertyAnimatorCounter *)v46 setAnimationDidEnd:v122];
  v51 = [(BCCardStackTransitionAnimator *)self _cardSlideDownSpringWithVelocity:v91, v93];
  [v51 settlingDuration];
  v53 = v52 * 0.9;
  v92 = v51;
  v54 = [[UIViewPropertyAnimator alloc] initWithDuration:v51 timingParameters:v52 * 0.9];
  v118[0] = _NSConcreteStackBlock;
  v118[1] = 3221225472;
  v118[2] = sub_AEB00;
  v118[3] = &unk_2CC3D0;
  v118[4] = self;
  v121 = v95;
  v94 = v49;
  v119 = v94;
  v120 = v138;
  [v54 addAnimations:v118];
  v90 = v54;
  [(BCViewPropertyAnimatorCounter *)v46 animate:v54];
  coverFadeItems2 = [(BCCardStackTransitionAnimator *)self coverFadeItems];
  v56 = [coverFadeItems2 count];

  if (v56)
  {
    v83 = v50;
    v84 = v48;
    v86 = v47;
    v57 = [UIViewPropertyAnimator alloc];
    [(BCCardStackTransitionAnimator *)self _adjustDuration:0.3];
    v58 = [v57 initWithDuration:0 curve:0 animations:?];
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    obja = [(BCCardStackTransitionAnimator *)self coverFadeItems];
    v59 = [obja countByEnumeratingWithState:&v114 objects:v141 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v115;
      do
      {
        for (k = 0; k != v60; k = k + 1)
        {
          if (*v115 != v61)
          {
            objc_enumerationMutation(obja);
          }

          v63 = [*(*(&v114 + 1) + 8 * k) key];
          v64 = [v99 objectForKeyedSubscript:v63];
          coverView = [v64 coverView];

          [coverView setAlpha:0.0];
          v112[0] = _NSConcreteStackBlock;
          v112[1] = 3221225472;
          v112[2] = sub_AEC68;
          v112[3] = &unk_2C7D40;
          v113 = coverView;
          v66 = coverView;
          [v58 addAnimations:v112];
        }

        v60 = [obja countByEnumeratingWithState:&v114 objects:v141 count:16];
      }

      while (v60);
    }

    [(BCViewPropertyAnimatorCounter *)v46 animate:v58];
    v48 = v84;
    v47 = v86;
    v50 = v83;
  }

  if (v95)
  {
    v67 = [UIViewPropertyAnimator alloc];
    v110[0] = _NSConcreteStackBlock;
    v110[1] = 3221225472;
    v110[2] = sub_AEC74;
    v110[3] = &unk_2C7D40;
    v111 = v48;
    v68 = [v67 initWithDuration:0 curve:v110 animations:v53];
    [(BCViewPropertyAnimatorCounter *)v46 animate:v68];

    v69 = [UIViewPropertyAnimator alloc];
    [(BCCardStackTransitionAnimator *)self _adjustDuration:0.18];
    if (v53 >= v70)
    {
      v71 = v70;
    }

    else
    {
      v71 = v53;
    }

    v108[0] = _NSConcreteStackBlock;
    v108[1] = 3221225472;
    v108[2] = sub_AEC80;
    v108[3] = &unk_2C7D40;
    v109 = v94;
    v72 = [v69 initWithDuration:0 curve:v108 animations:v71];
    [(BCViewPropertyAnimatorCounter *)v46 animate:v72];
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  allValues = [v99 allValues];
  v74 = [allValues countByEnumeratingWithState:&v104 objects:v140 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v105;
    do
    {
      for (m = 0; m != v75; m = m + 1)
      {
        if (*v105 != v76)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v104 + 1) + 8 * m) setCounter:v46];
      }

      v75 = [allValues countByEnumeratingWithState:&v104 objects:v140 count:16];
    }

    while (v75);
  }

  [(BCCardStackTransitionAnimator *)self setCoverControllers:v99];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v78 = self->_additionalAnimations;
  v79 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v100 objects:v139 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v101;
    do
    {
      for (n = 0; n != v80; n = n + 1)
      {
        if (*v101 != v81)
        {
          objc_enumerationMutation(v78);
        }

        (*(*(*(&v100 + 1) + 8 * n) + 16))(v53);
      }

      v80 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v100 objects:v139 count:16];
    }

    while (v80);
  }
}

- (id)_coverSpring
{
  v3 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:350.0 damping:30.0 initialVelocity:{0.0, 0.0}];
  v4 = [(BCCardStackTransitionAnimator *)self _adjustSpring:v3];

  return v4;
}

- (id)_coverSpringForDismissWithVelocity:(CGVector)velocity isCompact:(BOOL)compact
{
  compactCopy = compact;
  dy = velocity.dy;
  dx = velocity.dx;
  v8 = [UISpringTimingParameters alloc];
  if (compactCopy)
  {
    v9 = 30.0;
  }

  else
  {
    v9 = 33.0;
  }

  v10 = [v8 initWithMass:1.0 stiffness:350.0 damping:v9 initialVelocity:{dx, dy}];
  v11 = [(BCCardStackTransitionAnimator *)self _adjustSpring:v10];

  return v11;
}

- (id)_coverScaleSpring
{
  v3 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:350.0 damping:28.0 initialVelocity:{0.0, 0.0}];
  v4 = [(BCCardStackTransitionAnimator *)self _adjustSpring:v3];

  return v4;
}

- (id)_customCurve
{
  LODWORD(v2) = 1051260355;
  LODWORD(v3) = 1045220557;
  LODWORD(v4) = 1.0;
  v5 = [CAMediaTimingFunction functionWithControlPoints:v2];
  v6 = [[UICubicTimingParameters alloc] initWithCustomCurve:v5];

  return v6;
}

- (void)_animatePushByCoverTransitioning:(id)transitioning
{
  transitioningCopy = transitioning;
  v5 = [transitioningCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  v6 = [transitioningCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v7 = [transitioningCopy viewForKey:@"BCUITransitionContextBackgroundViewKey"];
  v8 = [transitioningCopy viewForKey:@"BCUITransitionContextTitleLabelKey"];
  v132 = v6;
  v141 = self->_cardsCanExpand || v6 == 0;
  if (self->_cardsCanExpand || v6 == 0)
  {
    containerView = [transitioningCopy containerView];
    [containerView bringSubviewToFront:v7];

    containerView2 = [transitioningCopy containerView];
    [containerView2 bringSubviewToFront:v8];
  }

  v135 = v7;
  containerView3 = [transitioningCopy containerView];
  [containerView3 layoutIfNeeded];

  [transitioningCopy finalFrameForViewController:v5];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  view = [v5 view];
  [view setFrame:{v13, v15, v17, v19}];

  containerView4 = [transitioningCopy containerView];
  view2 = [v5 view];
  [containerView4 addSubview:view2];

  v133 = v5;
  view3 = [v5 view];
  [view3 layoutIfNeeded];

  +[NSMutableDictionary dictionary];
  v144 = v143 = self;
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  cardMoveItems = [(BCCardStackTransitionAnimator *)self cardMoveItems];
  v25 = [cardMoveItems countByEnumeratingWithState:&v206 objects:v218 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v207;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v207 != v27)
        {
          objc_enumerationMutation(cardMoveItems);
        }

        v29 = *(*(&v206 + 1) + 8 * i);
        card = [v29 card];
        [card cardStackTransitioningCardExtraXOffset];
        v32 = v31;
        coverSource = [v29 coverSource];
        [coverSource setCardStackTransitioningCoverSourceExtraXOffset:v32];
      }

      v26 = [cardMoveItems countByEnumeratingWithState:&v206 objects:v218 count:16];
    }

    while (v26);
  }

  v205 = 0u;
  v204 = 0u;
  v203 = 0u;
  v202 = 0u;
  coverMoveItems = [(BCCardStackTransitionAnimator *)v143 coverMoveItems];
  v35 = [coverMoveItems countByEnumeratingWithState:&v202 objects:v217 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v203;
    do
    {
      for (j = 0; j != v36; j = j + 1)
      {
        if (*v203 != v37)
        {
          objc_enumerationMutation(coverMoveItems);
        }

        v39 = *(*(&v202 + 1) + 8 * j);
        containerView5 = [transitioningCopy containerView];
        v41 = [(BCCardStackTransitionAnimator *)v143 _addCoverForCoverMove:v39 inView:containerView5 isDismiss:0 fromFrame:0 toFrame:0];
        v42 = [v39 key];
        [v144 setObject:v41 forKeyedSubscript:v42];
      }

      v36 = [coverMoveItems countByEnumeratingWithState:&v202 objects:v217 count:16];
    }

    while (v36);
  }

  v201 = 0u;
  v200 = 0u;
  v199 = 0u;
  v198 = 0u;
  cardMoveItems2 = [(BCCardStackTransitionAnimator *)v143 cardMoveItems];
  v44 = [cardMoveItems2 countByEnumeratingWithState:&v198 objects:v216 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v199;
    do
    {
      v47 = 0;
      v48 = 0uLL;
      do
      {
        if (*v199 != v46)
        {
          objc_enumerationMutation(cardMoveItems2);
          v48 = 0uLL;
        }

        v49 = *(*(&v198 + 1) + 8 * v47);
        v197 = v48;
        v196 = v48;
        v195 = v48;
        v194 = v48;
        [(BCCardStackTransitionAnimator *)v143 _prepareCardForCardMove:v49 isDismiss:0 fromFrame:&v196 toFrame:&v194];
        if ((v141 & [v49 isFocusedCard]) == 1)
        {
          memset(&v193, 0, sizeof(v193));
          card2 = [v49 card];
          cardStackTransitioningCardView = [card2 cardStackTransitioningCardView];
          superview = [cardStackTransitioningCardView superview];
          [(BCCardStackTransitionAnimator *)v143 _translationForTitleLabel:v8 cardSuperview:superview cardCurrentFrame:v194 cardTargetFrame:v195, v196, v197];

          if (v8)
          {
            [v8 transform];
          }

          else
          {
            memset(&t2, 0, sizeof(t2));
          }

          t1 = v193;
          CGAffineTransformConcat(&v192, &t1, &t2);
          t2 = v192;
          [v8 setTransform:&t2];
        }

        v47 = v47 + 1;
        v48 = 0uLL;
      }

      while (v45 != v47);
      v45 = [cardMoveItems2 countByEnumeratingWithState:&v198 objects:v216 count:{16, 0.0}];
    }

    while (v45);
  }

  v136 = v8;

  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  coverFadeItems = [(BCCardStackTransitionAnimator *)v143 coverFadeItems];
  v54 = [coverFadeItems countByEnumeratingWithState:&v186 objects:v215 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v187;
    do
    {
      for (k = 0; k != v55; k = k + 1)
      {
        if (*v187 != v56)
        {
          objc_enumerationMutation(coverFadeItems);
        }

        v58 = *(*(&v186 + 1) + 8 * k);
        v59 = [v58 key];
        v60 = [transitioningCopy viewForKey:@"BCUITransitionContextClippedCoverContainerViewKey"];
        coverSource2 = [v58 coverSource];
        v62 = [(BCCardStackTransitionAnimator *)v143 _addCoverForCoverSource:coverSource2 inView:v60];
        [v144 setObject:v62 forKeyedSubscript:v59];
      }

      v55 = [coverFadeItems countByEnumeratingWithState:&v186 objects:v215 count:16];
    }

    while (v55);
  }

  v63 = objc_alloc_init(BCViewPropertyAnimatorCounter);
  v184[0] = _NSConcreteStackBlock;
  v184[1] = 3221225472;
  v184[2] = sub_AFEDC;
  v184[3] = &unk_2C7D40;
  v64 = transitioningCopy;
  v185 = v64;
  [(BCViewPropertyAnimatorCounter *)v63 setAnimationDidEnd:v184];
  v65 = 1.0;
  if (v141)
  {
    v65 = 0.0;
  }

  [v135 setAlpha:v65];
  v134 = v63;
  v131 = v64;
  if (v141)
  {
    v66 = [UIViewPropertyAnimator alloc];
    v67 = v143;
    [(BCCardStackTransitionAnimator *)v143 _adjustDuration:0.13];
    v69 = v68;
    v182[0] = _NSConcreteStackBlock;
    v182[1] = 3221225472;
    v182[2] = sub_AFEE8;
    v182[3] = &unk_2C7D40;
    v183 = v135;
    v70 = [v66 initWithDuration:0 curve:v182 animations:v69];
    [(BCViewPropertyAnimatorCounter *)v63 animate:v70];

    [v136 setAlpha:0.0];
    v71 = [UIViewPropertyAnimator alloc];
    [(BCCardStackTransitionAnimator *)v143 _adjustDuration:0.18];
    v73 = v72;
    v180[0] = _NSConcreteStackBlock;
    v180[1] = 3221225472;
    v180[2] = sub_AFEF4;
    v180[3] = &unk_2C7D40;
    v181 = v136;
    v74 = [v71 initWithDuration:0 curve:v180 animations:v73];
    [(BCViewPropertyAnimatorCounter *)v63 animate:v74];
  }

  else
  {
    [v136 setAlpha:1.0];
    v67 = v143;
  }

  v75 = [UIViewPropertyAnimator alloc];
  _coverSpring = [(BCCardStackTransitionAnimator *)v67 _coverSpring];
  v142 = [v75 initWithDuration:_coverSpring timingParameters:0.0];

  v77 = [UIViewPropertyAnimator alloc];
  _coverScaleSpring = [(BCCardStackTransitionAnimator *)v67 _coverScaleSpring];
  v140 = [v77 initWithDuration:_coverScaleSpring timingParameters:0.0];

  v79 = [UIViewPropertyAnimator alloc];
  [(BCCardStackTransitionAnimator *)v67 _adjustDuration:0.05];
  v81 = v80;
  _customCurve = [(BCCardStackTransitionAnimator *)v67 _customCurve];
  v139 = [v79 initWithDuration:_customCurve timingParameters:v81];

  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  obj = [(BCCardStackTransitionAnimator *)v67 coverMoveItems];
  v83 = [obj countByEnumeratingWithState:&v176 objects:v214 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = *v177;
    do
    {
      for (m = 0; m != v84; m = m + 1)
      {
        if (*v177 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v87 = *(*(&v176 + 1) + 8 * m);
        v88 = [v87 key];
        v89 = [v144 objectForKeyedSubscript:v88];
        coverView = [v89 coverView];

        v173[0] = _NSConcreteStackBlock;
        v173[1] = 3221225472;
        v173[2] = sub_AFF00;
        v173[3] = &unk_2C7BE8;
        v91 = coverView;
        v174 = v91;
        v175 = v87;
        [v142 addAnimations:v173];
        v170[0] = _NSConcreteStackBlock;
        v170[1] = 3221225472;
        v170[2] = sub_AFF3C;
        v170[3] = &unk_2C7BE8;
        v171 = v91;
        v172 = v87;
        v92 = v91;
        [v140 addAnimations:v170];
      }

      v84 = [obj countByEnumeratingWithState:&v176 objects:v214 count:16];
    }

    while (v84);
  }

  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  obja = [(BCCardStackTransitionAnimator *)v143 cardMoveItems];
  v93 = [obja countByEnumeratingWithState:&v166 objects:v213 count:16];
  if (v93)
  {
    v94 = v93;
    v95 = *v167;
    do
    {
      for (n = 0; n != v94; n = n + 1)
      {
        if (*v167 != v95)
        {
          objc_enumerationMutation(obja);
        }

        v97 = *(*(&v166 + 1) + 8 * n);
        card3 = [v97 card];
        v163[0] = _NSConcreteStackBlock;
        v163[1] = 3221225472;
        v163[2] = sub_AFFA0;
        v163[3] = &unk_2C7BE8;
        v99 = card3;
        v164 = v99;
        v165 = v97;
        [v142 addAnimations:v163];
        [v99 setCardStackTransitioningCardContentAlpha:1.0];
        v161[0] = _NSConcreteStackBlock;
        v161[1] = 3221225472;
        v161[2] = sub_B0074;
        v161[3] = &unk_2C7D40;
        v162 = v99;
        v100 = v99;
        [(BCCardStackTransitionAnimator *)v143 _adjustDuration:0.08];
        v102 = v101;
        [v139 duration];
        [v139 addAnimations:v161 delayFactor:v102 / v103];
      }

      v94 = [obja countByEnumeratingWithState:&v166 objects:v213 count:16];
    }

    while (v94);
  }

  v104 = v136;
  if (v141)
  {
    v159[0] = _NSConcreteStackBlock;
    v159[1] = 3221225472;
    v159[2] = sub_B0080;
    v159[3] = &unk_2C7D40;
    v160 = v136;
    [v142 addAnimations:v159];
  }

  v105 = v134;
  [(BCViewPropertyAnimatorCounter *)v134 animate:v142];
  [(BCViewPropertyAnimatorCounter *)v134 animate:v140];
  [(BCViewPropertyAnimatorCounter *)v134 animate:v139];
  coverFadeItems2 = [(BCCardStackTransitionAnimator *)v143 coverFadeItems];
  v107 = [coverFadeItems2 count];

  if (v107)
  {
    v108 = [UIViewPropertyAnimator alloc];
    [(BCCardStackTransitionAnimator *)v143 _adjustDuration:0.2];
    v109 = [v108 initWithDuration:0 curve:0 animations:?];
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    coverFadeItems3 = [(BCCardStackTransitionAnimator *)v143 coverFadeItems];
    v111 = [coverFadeItems3 countByEnumeratingWithState:&v155 objects:v212 count:16];
    if (v111)
    {
      v112 = v111;
      v113 = *v156;
      do
      {
        for (ii = 0; ii != v112; ii = ii + 1)
        {
          if (*v156 != v113)
          {
            objc_enumerationMutation(coverFadeItems3);
          }

          v115 = [*(*(&v155 + 1) + 8 * ii) key];
          v116 = [v144 objectForKeyedSubscript:v115];
          coverView2 = [v116 coverView];

          [coverView2 setAlpha:1.0];
          v153[0] = _NSConcreteStackBlock;
          v153[1] = 3221225472;
          v153[2] = sub_B00C0;
          v153[3] = &unk_2C7D40;
          v154 = coverView2;
          v118 = coverView2;
          [v109 addAnimations:v153];
        }

        v112 = [coverFadeItems3 countByEnumeratingWithState:&v155 objects:v212 count:16];
      }

      while (v112);
    }

    v105 = v134;
    [(BCViewPropertyAnimatorCounter *)v134 animate:v109];

    v104 = v136;
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  allValues = [v144 allValues];
  v120 = [allValues countByEnumeratingWithState:&v149 objects:v211 count:16];
  if (v120)
  {
    v121 = v120;
    v122 = *v150;
    do
    {
      for (jj = 0; jj != v121; jj = jj + 1)
      {
        if (*v150 != v122)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v149 + 1) + 8 * jj) setCounter:v105];
      }

      v121 = [allValues countByEnumeratingWithState:&v149 objects:v211 count:16];
    }

    while (v121);
  }

  [(BCCardStackTransitionAnimator *)v143 setCoverControllers:v144];
  [(BCCardStackTransitionAnimator *)v143 _adjustDuration:0.5];
  v125 = v124;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v126 = v143->_additionalAnimations;
  v127 = [(NSMutableArray *)v126 countByEnumeratingWithState:&v145 objects:v210 count:16];
  if (v127)
  {
    v128 = v127;
    v129 = *v146;
    do
    {
      for (kk = 0; kk != v128; kk = kk + 1)
      {
        if (*v146 != v129)
        {
          objc_enumerationMutation(v126);
        }

        (*(*(*(&v145 + 1) + 8 * kk) + 16))(v125);
      }

      v128 = [(NSMutableArray *)v126 countByEnumeratingWithState:&v145 objects:v210 count:16];
    }

    while (v128);
  }
}

- (id)_addCoverForCoverSource:(id)source inView:(id)view
{
  viewCopy = view;
  sourceCopy = source;
  [sourceCopy cardStackTransitioningCoverSourceFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  cardStackTransitioningCoverSourceReferenceView = [sourceCopy cardStackTransitioningCoverSourceReferenceView];
  [viewCopy convertRect:cardStackTransitioningCoverSourceReferenceView fromView:{v9, v11, v13, v15}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [[BCCardStackTransitionCoverView alloc] initWithFrame:v18, v20, v22, v24];
  [viewCopy addSubview:v25];

  viewsToBeCleanedUp = [(BCCardStackTransitionAnimator *)self viewsToBeCleanedUp];
  [viewsToBeCleanedUp addObject:v25];

  v27 = objc_alloc_init(_BCCardStackTransitionCoverController);
  [(_BCCardStackTransitionCoverController *)v27 setupWithCoverSource:sourceCopy coverView:v25];

  return v27;
}

- (id)_addCoverForCoverMove:(id)move inView:(id)view isDismiss:(BOOL)dismiss fromFrame:(CGRect *)frame toFrame:(CGRect *)toFrame
{
  dismissCopy = dismiss;
  moveCopy = move;
  viewCopy = view;
  coverSource = [moveCopy coverSource];
  cardCoverSource = [moveCopy cardCoverSource];
  [coverSource cardStackTransitioningCoverSourceFrame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  cardStackTransitioningCoverSourceReferenceView = [coverSource cardStackTransitioningCoverSourceReferenceView];
  [viewCopy convertRect:cardStackTransitioningCoverSourceReferenceView fromView:{v17, v19, v21, v23}];
  x = v25;
  y = v27;
  width = v29;
  height = v31;

  [cardCoverSource cardStackTransitioningCoverSourceFrame];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  cardStackTransitioningCoverSourceReferenceView2 = [cardCoverSource cardStackTransitioningCoverSourceReferenceView];
  [viewCopy convertRect:cardStackTransitioningCoverSourceReferenceView2 fromView:{v34, v36, v38, v40}];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  if (dismissCopy)
  {
    v50 = v47;
  }

  else
  {
    v50 = width;
  }

  if (dismissCopy)
  {
    v51 = v49;
  }

  else
  {
    v51 = height;
  }

  v62 = v51;
  v63 = v50;
  if (dismissCopy)
  {
    v52 = v45;
  }

  else
  {
    v52 = y;
  }

  if (dismissCopy)
  {
    v53 = v43;
  }

  else
  {
    v53 = x;
  }

  v60 = v53;
  v61 = v52;
  if (!dismissCopy)
  {
    [coverSource cardStackTransitioningCoverSourceExtraXOffset];
    v55 = v54;
    v67.origin.x = v43;
    v67.origin.y = v45;
    v67.size.width = v47;
    v67.size.height = v49;
    v68 = CGRectOffset(v67, v55, 0.0);
    x = v68.origin.x;
    y = v68.origin.y;
    width = v68.size.width;
    height = v68.size.height;
  }

  v56 = [[BCCardStackTransitionCoverView alloc] initWithFrame:v60, v61, v63, v62];
  [viewCopy addSubview:v56];
  viewsToBeCleanedUp = [(BCCardStackTransitionAnimator *)self viewsToBeCleanedUp];
  [viewsToBeCleanedUp addObject:v56];

  CGRectGetCenterNoRounding();
  [moveCopy setCoverToCenter:?];
  sub_B04B8(&v65, v60, v61, v63, v62, x, y, width, height);
  v64 = v65;
  [moveCopy setCoverToTransform:&v64];
  if (frame)
  {
    frame->origin.x = v60;
    frame->origin.y = v61;
    frame->size.width = v63;
    frame->size.height = v62;
  }

  if (toFrame)
  {
    toFrame->origin.x = x;
    toFrame->origin.y = y;
    toFrame->size.width = width;
    toFrame->size.height = height;
  }

  v58 = objc_alloc_init(_BCCardStackTransitionCoverController);
  [(_BCCardStackTransitionCoverController *)v58 setupWithCoverSource:coverSource cardCoverSource:cardCoverSource coverView:v56 isDismiss:dismissCopy];

  return v58;
}

- (void)_clearTranslationForView:(id)view
{
  viewCopy = view;
  v4 = viewCopy;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  if (viewCopy)
  {
    [viewCopy transform];
  }

  [v4 center];
  CGPointAdd();
  [v4 setCenter:?];
  v8 = 0uLL;
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = 0uLL;
  [v4 setTransform:v5];
}

- (void)_prepareCardForCardMove:(id)move isDismiss:(BOOL)dismiss fromFrame:(CGRect *)frame toFrame:(CGRect *)toFrame
{
  moveCopy = move;
  card = [moveCopy card];
  coverSource = [moveCopy coverSource];
  cardStackTransitioningCardView = [card cardStackTransitioningCardView];
  superview = [cardStackTransitioningCardView superview];
  [card cardStackTransitioningCardFinalFrame];
  v58 = v16;
  v59 = v15;
  v18 = v17;
  v20 = v19;
  [coverSource cardStackTransitioningCoverSourceFrame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  cardStackTransitioningCoverSourceReferenceView = [coverSource cardStackTransitioningCoverSourceReferenceView];
  [superview convertRect:cardStackTransitioningCoverSourceReferenceView fromView:{v22, v24, v26, v28}];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [superview convertRect:0 toView:{v31, v33, v35, v37}];
  [(BCCardStackTransitionAnimator *)self _insetPercentageForAbsoluteCoverRect:?];
  v39 = v38;
  v65.origin.x = v31;
  v65.origin.y = v33;
  v65.size.width = v35;
  v65.size.height = v37;
  Width = CGRectGetWidth(v65);
  v41 = v39 * Width + v39 * Width;
  v66.origin.x = v31;
  v66.origin.y = v33;
  v66.size.width = v35;
  v66.size.height = v37;
  Height = CGRectGetHeight(v66);
  v43 = v39 * Height + v39 * Height;
  v67.origin.x = v31;
  v67.origin.y = v33;
  v67.size.width = v35;
  v67.size.height = v37;
  CGRectInset(v67, v41, v43);
  CGRectMakeWithSize();
  CGRectFitRectInRectAbsoluteNoRounding();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  [(BCCardStackTransitionAnimator *)self _clearTranslationForView:cardStackTransitioningCardView];
  CGRectGetCenterNoRounding();
  v53 = v52;
  v55 = v54;
  memset(&v64, 0, sizeof(v64));
  sub_B04B8(&t1, v59, v58, v18, v20, v45, v47, v49, v51);
  if (cardStackTransitioningCardView)
  {
    [cardStackTransitioningCardView transform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  CGAffineTransformConcat(&v64, &t1, &t2);
  if (dismiss)
  {
    [moveCopy setCardToCenter:{v53, v55}];
    t1 = v64;
    [moveCopy setCardToTransform:&t1];
    v56 = *&CGAffineTransformIdentity.c;
    *&t1.a = *&CGAffineTransformIdentity.a;
    *&t1.c = v56;
    *&t1.tx = *&CGAffineTransformIdentity.tx;
    [moveCopy setCardSuperviewToTransform:&t1];
    if (frame)
    {
      frame->origin.x = v59;
      frame->origin.y = v58;
      frame->size.width = v18;
      frame->size.height = v20;
    }

    v18 = v49;
    v20 = v51;
    if (!toFrame)
    {
      goto LABEL_16;
    }

LABEL_15:
    toFrame->origin.x = v45;
    toFrame->origin.y = v47;
    toFrame->size.width = v18;
    toFrame->size.height = v20;
    goto LABEL_16;
  }

  [cardStackTransitioningCardView center];
  [moveCopy setCardToCenter:?];
  if (cardStackTransitioningCardView)
  {
    [cardStackTransitioningCardView transform];
  }

  else
  {
    memset(&v61, 0, sizeof(v61));
  }

  t1 = v61;
  [moveCopy setCardToTransform:&t1];
  [card cardStackTransitioningCardExtraXOffset];
  CGAffineTransformMakeTranslation(&v60, v57, 0.0);
  t1 = v60;
  [moveCopy setCardSuperviewToTransform:&t1];
  [cardStackTransitioningCardView setCenter:{v53, v55}];
  t1 = v64;
  [cardStackTransitioningCardView setTransform:&t1];
  if (frame)
  {
    frame->origin.x = v45;
    frame->origin.y = v47;
    frame->size.width = v49;
    frame->size.height = v51;
  }

  v47 = v58;
  v45 = v59;
  if (toFrame)
  {
    goto LABEL_15;
  }

LABEL_16:
}

- (CGVector)_dismissSpringVelocityWithFromFrame:(CGRect)frame toFrame:(CGRect)toFrame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  MidY = CGRectGetMidY(toFrame);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v10 = MidY - CGRectGetMidY(v18);
  v11 = fmin(v10, -1.0);
  v12 = fmax(v10, 1.0);
  if (v10 >= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  [(BCCardStackTransitionAnimator *)self velocityForPop];
  v15 = fmin(fmax(v14 / v13, -35.0), 35.0);
  v16 = 0.0;
  result.dy = v15;
  result.dx = v16;
  return result;
}

- (void)_animatePopByCoverTransitioning:(id)transitioning
{
  transitioningCopy = transitioning;
  v5 = [transitioningCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  v121 = [transitioningCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v129 = [transitioningCopy viewForKey:@"BCUITransitionContextBackgroundViewKey"];
  [transitioningCopy viewForKey:@"BCUITransitionContextTitleLabelKey"];
  v133 = v131 = v5;
  cardsCanExpand = self->_cardsCanExpand;
  v124 = v5 == 0;
  v136 = +[NSMutableDictionary dictionary];
  v6 = *&CGAffineTransformIdentity.c;
  *&v206.a = *&CGAffineTransformIdentity.a;
  *&v206.c = v6;
  *&v206.tx = *&CGAffineTransformIdentity.tx;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  coverMoveItems = [(BCCardStackTransitionAnimator *)self coverMoveItems];
  v8 = [coverMoveItems countByEnumeratingWithState:&v202 objects:v214 count:16];
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  selfCopy = self;
  if (v8)
  {
    v12 = v8;
    v13 = *v203;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v203 != v13)
        {
          objc_enumerationMutation(coverMoveItems);
        }

        v15 = *(*(&v202 + 1) + 8 * i);
        if ([v15 animatesInInnerContainerView])
        {
          [transitioningCopy viewForKey:@"BCUITransitionContextClippedCoverContainerViewKey"];
        }

        else
        {
          [transitioningCopy containerView];
        }
        v16 = ;
        memset(&v193, 0, 32);
        memset(&t2, 0, 32);
        v17 = [(BCCardStackTransitionAnimator *)self _addCoverForCoverMove:v15 inView:v16 isDismiss:1 fromFrame:&v193 toFrame:&t2];
        v18 = [v15 key];
        [v136 setObject:v17 forKeyedSubscript:v18];

        self = selfCopy;
        if ([v15 isFocusedCover])
        {
          [(BCCardStackTransitionAnimator *)selfCopy _dismissSpringVelocityWithFromFrame:*&v193.a toFrame:*&v193.c, t2.a, t2.b, t2.c, t2.d];
          v11 = v19;
          v10 = v20;
        }
      }

      v12 = [coverMoveItems countByEnumeratingWithState:&v202 objects:v214 count:16];
    }

    while (v12);
  }

  v201 = 0u;
  v200 = 0u;
  v199 = 0u;
  v198 = 0u;
  cardMoveItems = [(BCCardStackTransitionAnimator *)self cardMoveItems];
  v22 = [cardMoveItems countByEnumeratingWithState:&v198 objects:v213 count:16];
  v23 = 0.0;
  if (v22)
  {
    v24 = v22;
    v25 = *v199;
    v9 = 0.0;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v199 != v25)
        {
          objc_enumerationMutation(cardMoveItems);
        }

        v27 = *(*(&v198 + 1) + 8 * j);
        v197 = 0u;
        v196 = 0u;
        v195 = 0u;
        v194 = 0u;
        [(BCCardStackTransitionAnimator *)self _prepareCardForCardMove:v27 isDismiss:1 fromFrame:&v196 toFrame:&v194];
        if ([v27 isFocusedCard])
        {
          [(BCCardStackTransitionAnimator *)self _dismissSpringVelocityWithFromFrame:v196 toFrame:v197, v194, v195];
          v23 = v28;
          v9 = v29;
          if (cardsCanExpand || v124)
          {
            memset(&v193, 0, sizeof(v193));
            card = [v27 card];
            cardStackTransitioningCardView = [card cardStackTransitioningCardView];
            superview = [cardStackTransitioningCardView superview];
            selfCopy2 = self;
            v34 = superview;
            [(BCCardStackTransitionAnimator *)selfCopy2 _translationForTitleLabel:v133 cardSuperview:superview cardCurrentFrame:v196 cardTargetFrame:v197, v194, v195];

            if (v133)
            {
              [v133 transform];
            }

            else
            {
              memset(&t2, 0, sizeof(t2));
            }

            t1 = v193;
            CGAffineTransformConcat(&v206, &t1, &t2);
            self = selfCopy;
          }
        }
      }

      v24 = [cardMoveItems countByEnumeratingWithState:&v198 objects:v213 count:16];
    }

    while (v24);
  }

  v119 = cardsCanExpand || v124;

  v190 = 0u;
  v189 = 0u;
  v187 = 0u;
  v188 = 0u;
  coverFadeItems = [(BCCardStackTransitionAnimator *)self coverFadeItems];
  v36 = [coverFadeItems countByEnumeratingWithState:&v187 objects:v212 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v188;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v188 != v38)
        {
          objc_enumerationMutation(coverFadeItems);
        }

        v40 = *(*(&v187 + 1) + 8 * k);
        v41 = [v40 key];
        v42 = [transitioningCopy viewForKey:@"BCUITransitionContextClippedCoverContainerViewKey"];
        coverSource = [v40 coverSource];
        v44 = [(BCCardStackTransitionAnimator *)selfCopy _addCoverForCoverSource:coverSource inView:v42];
        [v136 setObject:v44 forKeyedSubscript:v41];
      }

      v37 = [coverFadeItems countByEnumeratingWithState:&v187 objects:v212 count:16];
    }

    while (v37);
  }

  v45 = objc_alloc_init(BCViewPropertyAnimatorCounter);
  v182[0] = _NSConcreteStackBlock;
  v182[1] = 3221225472;
  v182[2] = sub_B1BA0;
  v182[3] = &unk_2CBED8;
  v117 = v131;
  v183 = v117;
  v46 = v129;
  v184 = v46;
  v120 = v133;
  v185 = v120;
  v115 = transitioningCopy;
  v186 = v115;
  [(BCViewPropertyAnimatorCounter *)v45 setAnimationDidEnd:v182];
  if (cardsCanExpand || v124)
  {
    v47 = [UIViewPropertyAnimator alloc];
    [(BCCardStackTransitionAnimator *)selfCopy _adjustDuration:0.17];
    v49 = v48;
    v180[0] = _NSConcreteStackBlock;
    v180[1] = 3221225472;
    v180[2] = sub_B1C4C;
    v180[3] = &unk_2C7D40;
    v181 = v46;
    v50 = [v47 initWithDuration:0 curve:v180 animations:v49];
    [(BCViewPropertyAnimatorCounter *)v45 animate:v50];

    v51 = [UIViewPropertyAnimator alloc];
    [(BCCardStackTransitionAnimator *)selfCopy _adjustDuration:0.18];
    v53 = v52;
    v178[0] = _NSConcreteStackBlock;
    v178[1] = 3221225472;
    v178[2] = sub_B1C58;
    v178[3] = &unk_2C7D40;
    v179 = v120;
    v54 = [v51 initWithDuration:0 curve:v178 animations:v53];
    [(BCViewPropertyAnimatorCounter *)v45 animate:v54];
  }

  v116 = v46;
  v118 = v45;
  im_isCompactWidth = [v121 im_isCompactWidth];
  v56 = [UIViewPropertyAnimator alloc];
  v57 = [(BCCardStackTransitionAnimator *)selfCopy _coverSpringForDismissWithVelocity:im_isCompactWidth isCompact:v11, v10];
  v130 = [v56 initWithDuration:v57 timingParameters:0.0];

  v58 = [UIViewPropertyAnimator alloc];
  v59 = [(BCCardStackTransitionAnimator *)selfCopy _coverSpringForDismissWithVelocity:im_isCompactWidth isCompact:v23, v9];
  v132 = [v58 initWithDuration:v59 timingParameters:0.0];

  v60 = [UIViewPropertyAnimator alloc];
  v61 = [(BCCardStackTransitionAnimator *)selfCopy _coverSpringForDismissWithVelocity:im_isCompactWidth isCompact:0.0, 0.0];
  v134 = [v60 initWithDuration:v61 timingParameters:0.0];

  v62 = [UIViewPropertyAnimator alloc];
  [(BCCardStackTransitionAnimator *)selfCopy _adjustDuration:0.15];
  v64 = v63;
  _customCurve = [(BCCardStackTransitionAnimator *)selfCopy _customCurve];
  v128 = [v62 initWithDuration:_customCurve timingParameters:v64];

  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  obj = [(BCCardStackTransitionAnimator *)selfCopy coverMoveItems];
  v66 = [obj countByEnumeratingWithState:&v174 objects:v211 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = 0;
    v125 = *v175;
    do
    {
      for (m = 0; m != v67; m = m + 1)
      {
        if (*v175 != v125)
        {
          objc_enumerationMutation(obj);
        }

        v70 = *(*(&v174 + 1) + 8 * m);
        v71 = [v70 key];
        v72 = [v136 objectForKeyedSubscript:v71];
        coverView = [v72 coverView];

        v171[0] = _NSConcreteStackBlock;
        v171[1] = 3221225472;
        v171[2] = sub_B1C64;
        v171[3] = &unk_2C7BE8;
        v74 = coverView;
        v172 = v74;
        v173 = v70;
        [v130 addAnimations:v171];
        v168[0] = _NSConcreteStackBlock;
        v168[1] = 3221225472;
        v168[2] = sub_B1CA0;
        v168[3] = &unk_2C7BE8;
        v75 = v74;
        v169 = v75;
        v170 = v70;
        [v134 addAnimations:v168];
        if ([v70 needsFadeInOnDismiss])
        {
          if (!v68)
          {
            v76 = [UIViewPropertyAnimator alloc];
            [(BCCardStackTransitionAnimator *)selfCopy _adjustDuration:0.15];
            v68 = [v76 initWithDuration:0 curve:0 animations:?];
          }

          [v75 setAlpha:0.0];
          v166[0] = _NSConcreteStackBlock;
          v166[1] = 3221225472;
          v166[2] = sub_B1D04;
          v166[3] = &unk_2C7D40;
          v167 = v75;
          [v68 addAnimations:v166];
        }
      }

      v67 = [obj countByEnumeratingWithState:&v174 objects:v211 count:16];
    }

    while (v67);
  }

  else
  {
    v68 = 0;
  }

  v122 = v68;

  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  cardMoveItems2 = [(BCCardStackTransitionAnimator *)selfCopy cardMoveItems];
  v77 = [cardMoveItems2 countByEnumeratingWithState:&v162 objects:v210 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v163;
    do
    {
      for (n = 0; n != v78; n = n + 1)
      {
        if (*v163 != v79)
        {
          objc_enumerationMutation(cardMoveItems2);
        }

        v81 = *(*(&v162 + 1) + 8 * n);
        card2 = [v81 card];
        cardStackTransitioningCardView2 = [card2 cardStackTransitioningCardView];

        v159[0] = _NSConcreteStackBlock;
        v159[1] = 3221225472;
        v159[2] = sub_B1D10;
        v159[3] = &unk_2C7BE8;
        v84 = cardStackTransitioningCardView2;
        v160 = v84;
        v161 = v81;
        [v132 addAnimations:v159];
        v156[0] = _NSConcreteStackBlock;
        v156[1] = 3221225472;
        v156[2] = sub_B1D4C;
        v156[3] = &unk_2C7BE8;
        v85 = v84;
        v157 = v85;
        v158 = v81;
        [v134 addAnimations:v156];
        v154[0] = _NSConcreteStackBlock;
        v154[1] = 3221225472;
        v154[2] = sub_B1DB0;
        v154[3] = &unk_2C7D40;
        v155 = v85;
        v86 = v85;
        [v128 addAnimations:v154];
      }

      v78 = [cardMoveItems2 countByEnumeratingWithState:&v162 objects:v210 count:16];
    }

    while (v78);
  }

  if (v119)
  {
    v151[0] = _NSConcreteStackBlock;
    v151[1] = 3221225472;
    v151[2] = sub_B1DBC;
    v151[3] = &unk_2CC3F8;
    v152 = v120;
    v153 = v206;
    [v132 addAnimations:v151];
  }

  v87 = v118;
  [(BCViewPropertyAnimatorCounter *)v118 animate:v130];
  [(BCViewPropertyAnimatorCounter *)v118 animate:v132];
  [(BCViewPropertyAnimatorCounter *)v118 animate:v134];
  [(BCViewPropertyAnimatorCounter *)v118 animate:v128];
  p_isa = &selfCopy->super.isa;
  v89 = v68;
  if (v68)
  {
    [(BCCardStackTransitionAnimator *)selfCopy _adjustDuration:0.1];
    [(BCViewPropertyAnimatorCounter *)v118 animate:v68 afterDelay:?];
  }

  coverFadeItems2 = [(BCCardStackTransitionAnimator *)selfCopy coverFadeItems];
  v91 = [coverFadeItems2 count];

  if (v91)
  {
    v92 = [UIViewPropertyAnimator alloc];
    [(BCCardStackTransitionAnimator *)selfCopy _adjustDuration:0.3];
    v93 = [v92 initWithDuration:0 curve:0 animations:?];
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    coverFadeItems3 = [(BCCardStackTransitionAnimator *)selfCopy coverFadeItems];
    v95 = [coverFadeItems3 countByEnumeratingWithState:&v147 objects:v209 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = *v148;
      do
      {
        for (ii = 0; ii != v96; ii = ii + 1)
        {
          if (*v148 != v97)
          {
            objc_enumerationMutation(coverFadeItems3);
          }

          v99 = [*(*(&v147 + 1) + 8 * ii) key];
          v100 = [v136 objectForKeyedSubscript:v99];
          coverView2 = [v100 coverView];

          [coverView2 setAlpha:0.0];
          v145[0] = _NSConcreteStackBlock;
          v145[1] = 3221225472;
          v145[2] = sub_B1DF8;
          v145[3] = &unk_2C7D40;
          v146 = coverView2;
          v102 = coverView2;
          [v93 addAnimations:v145];
        }

        v96 = [coverFadeItems3 countByEnumeratingWithState:&v147 objects:v209 count:16];
      }

      while (v96);
    }

    v87 = v118;
    [(BCViewPropertyAnimatorCounter *)v118 animate:v93];

    p_isa = &selfCopy->super.isa;
    v89 = v122;
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  allValues = [v136 allValues];
  v104 = [allValues countByEnumeratingWithState:&v141 objects:v208 count:16];
  if (v104)
  {
    v105 = v104;
    v106 = *v142;
    do
    {
      for (jj = 0; jj != v105; jj = jj + 1)
      {
        if (*v142 != v106)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v141 + 1) + 8 * jj) setCounter:v87];
      }

      v105 = [allValues countByEnumeratingWithState:&v141 objects:v208 count:16];
    }

    while (v105);
  }

  [p_isa setCoverControllers:v136];
  [p_isa _adjustDuration:0.5];
  v109 = v108;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v110 = p_isa[1];
  v111 = [v110 countByEnumeratingWithState:&v137 objects:v207 count:16];
  if (v111)
  {
    v112 = v111;
    v113 = *v138;
    do
    {
      for (kk = 0; kk != v112; kk = kk + 1)
      {
        if (*v138 != v113)
        {
          objc_enumerationMutation(v110);
        }

        (*(*(*(&v137 + 1) + 8 * kk) + 16))(v109);
      }

      v112 = [v110 countByEnumeratingWithState:&v137 objects:v207 count:16];
    }

    while (v112);
  }
}

- (void)_animatePushByCrossfading:(id)crossfading
{
  crossfadingCopy = crossfading;
  v5 = [crossfadingCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  v6 = [crossfadingCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v7 = [crossfadingCopy viewForKey:@"BCUITransitionContextBackgroundViewKey"];
  v8 = self->_cardsCanExpand || v6 == 0;
  [crossfadingCopy finalFrameForViewController:v5];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  view = [v5 view];
  [view setFrame:{v10, v12, v14, v16}];

  containerView = [crossfadingCopy containerView];
  view2 = [v5 view];
  [containerView addSubview:view2];

  v20 = 1.0;
  if (v8)
  {
    v20 = 0.0;
  }

  [v7 setAlpha:v20];
  [(BCCardStackTransitionAnimator *)self _adjustDuration:0.3];
  v22 = v21;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_B2128;
  v39[3] = &unk_2C7BE8;
  v23 = v7;
  v40 = v23;
  v24 = v5;
  v41 = v24;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_B2188;
  v37[3] = &unk_2C99D8;
  v25 = crossfadingCopy;
  v38 = v25;
  [UIView animateWithDuration:v39 animations:v37 completion:v22];
  [(BCCardStackTransitionAnimator *)self _adjustDuration:0.3];
  v27 = v26;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = self->_additionalAnimations;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v34;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(v28);
        }

        (*(*(*(&v33 + 1) + 8 * i) + 16))(v27);
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v30);
  }
}

- (void)_animatePopByCrossfading:(id)crossfading
{
  crossfadingCopy = crossfading;
  v5 = [crossfadingCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  v6 = [crossfadingCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v7 = [crossfadingCopy viewForKey:@"BCUITransitionContextBackgroundViewKey"];
  v8 = self->_cardsCanExpand || v5 == 0;
  [(BCCardStackTransitionAnimator *)self _adjustDuration:0.3];
  v10 = v9;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_B242C;
  v27[3] = &unk_2C81D8;
  v30 = v8;
  v11 = v7;
  v28 = v11;
  v12 = v6;
  v29 = v12;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_B2498;
  v25[3] = &unk_2C99D8;
  v13 = crossfadingCopy;
  v26 = v13;
  [UIView animateWithDuration:v27 animations:v25 completion:v10];
  [(BCCardStackTransitionAnimator *)self _adjustDuration:0.3];
  v15 = v14;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = self->_additionalAnimations;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        (*(*(*(&v21 + 1) + 8 * v20) + 16))(v15);
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v18);
  }
}

+ (BOOL)_isSlowModeEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BCCardStackTransitionAnimatorSlowModeEnabled"];

  return v3;
}

- (double)_debugDragCoefficient
{
  if ([objc_opt_class() _isSlowModeEnabled])
  {
    v2 = 3.0;
  }

  else
  {
    v2 = 1.0;
  }

  UIAnimationDragCoefficient();
  return v2 * v3;
}

- (id)_adjustSpring:(id)spring
{
  springCopy = spring;
  [(BCCardStackTransitionAnimator *)self _debugDragCoefficient];
  v6 = v5;
  v7 = [UISpringTimingParameters alloc];
  [springCopy mass];
  v9 = v8;
  [springCopy stiffness];
  v11 = v10 / (v6 * v6);
  [springCopy damping];
  v13 = v12 / v6;
  [springCopy initialVelocity];
  v15 = v14;
  v17 = v16;

  v18 = [v7 initWithMass:v9 stiffness:v11 damping:v13 initialVelocity:{v15, v17}];

  return v18;
}

@end