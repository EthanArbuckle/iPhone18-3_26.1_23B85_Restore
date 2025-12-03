@interface AAUIAchievementDetailTransitionAnimator
- (AAUIAchievementDetailTransitionAnimator)initWithPresentingViewController:(id)controller detailViewController:(id)viewController shouldPlayFlipInAnimation:(BOOL)animation initialBadgeFrame:(CGRect)frame conversionView:(id)view didStartAnimationBlock:(id)block didFinishAnimationBlock:(id)animationBlock;
- (AAUIAchievementDetailTransitionAnimator)initWithPresentingViewController:(id)controller detailViewController:(id)viewController shouldPlayFlipInAnimation:(BOOL)animation initialBadgeFrame:(CGRect)frame conversionView:(id)view willStartAnimationBlock:(id)block presentAlongsideBlock:(id)alongsideBlock dismissAlongsideBlock:(id)self0 completionBlock:(id)self1;
- (BOOL)isPresentingWithContext:(id)context;
- (CGAffineTransform)finalBadgeTransform;
- (CGAffineTransform)finalPresentingVCTransform;
- (CGAffineTransform)initialBadgeTransform;
- (CGPoint)finalBadgeCenter;
- (CGPoint)initialBadgeCenter;
- (CGRect)finalBadgeFrame;
- (CGRect)initialBadgeFrame;
- (void)animateDismissalWithContext:(id)context;
- (void)animatePresentationWithContext:(id)context;
- (void)animateTransition:(id)transition;
- (void)prepareForAnimationsWithContext:(id)context;
- (void)reducedMotionAnimateDismissalWithContext:(id)context;
- (void)reducedMotionAnimatePresentationWithContext:(id)context;
- (void)setFinalBadgeTransform:(CGAffineTransform *)transform;
- (void)setFinalPresentingVCTransform:(CGAffineTransform *)transform;
- (void)setInitialBadgeTransform:(CGAffineTransform *)transform;
@end

@implementation AAUIAchievementDetailTransitionAnimator

- (AAUIAchievementDetailTransitionAnimator)initWithPresentingViewController:(id)controller detailViewController:(id)viewController shouldPlayFlipInAnimation:(BOOL)animation initialBadgeFrame:(CGRect)frame conversionView:(id)view willStartAnimationBlock:(id)block presentAlongsideBlock:(id)alongsideBlock dismissAlongsideBlock:(id)self0 completionBlock:(id)self1
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  viewCopy = view;
  blockCopy = block;
  alongsideBlockCopy = alongsideBlock;
  dismissAlongsideBlockCopy = dismissAlongsideBlock;
  completionBlockCopy = completionBlock;
  v47.receiver = self;
  v47.super_class = AAUIAchievementDetailTransitionAnimator;
  v27 = [(AAUIAchievementDetailTransitionAnimator *)&v47 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_presentingViewController, controller);
    objc_storeStrong(&v28->_detailViewController, viewController);
    objc_storeStrong(&v28->_conversionView, view);
    v28->_initialBadgeFrame.origin.x = x;
    v28->_initialBadgeFrame.origin.y = y;
    v28->_initialBadgeFrame.size.width = width;
    v28->_initialBadgeFrame.size.height = height;
    v29 = [blockCopy copy];
    willStartAnimationBlock = v28->_willStartAnimationBlock;
    v28->_willStartAnimationBlock = v29;

    v31 = [alongsideBlockCopy copy];
    presentBlock = v28->_presentBlock;
    v28->_presentBlock = v31;

    v33 = [dismissAlongsideBlockCopy copy];
    dismissBlock = v28->_dismissBlock;
    v28->_dismissBlock = v33;

    v35 = [completionBlockCopy copy];
    completionBlock = v28->_completionBlock;
    v28->_completionBlock = v35;

    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    v28->_isWatch = [mEMORY[0x277CCDD30] isAppleWatch];

    if (v28->_isWatch)
    {
      v38 = MEMORY[0x277CBF2C0];
      v39 = *(MEMORY[0x277CBF2C0] + 16);
      *&v28->_finalPresentingVCTransform.a = *MEMORY[0x277CBF2C0];
      *&v28->_finalPresentingVCTransform.c = v39;
      v40 = *(v38 + 32);
    }

    else
    {
      CGAffineTransformMakeScale(&v46, 0.95, 0.95);
      v41 = *&v46.c;
      *&v28->_finalPresentingVCTransform.a = *&v46.a;
      *&v28->_finalPresentingVCTransform.c = v41;
      v40 = *&v46.tx;
    }

    *&v28->_finalPresentingVCTransform.tx = v40;
    v28->_shouldPlayFlipInAnimation = animation;
    v28->_shouldDismissGracefullyForTextSizeChange = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v28 selector:sel_textSizeDidChange_ name:*MEMORY[0x277D76810] object:0];

    v28->_reduceMotion = UIAccessibilityIsReduceMotionEnabled();
    v28->_shouldAdjustForInset = 1;
  }

  return v28;
}

- (AAUIAchievementDetailTransitionAnimator)initWithPresentingViewController:(id)controller detailViewController:(id)viewController shouldPlayFlipInAnimation:(BOOL)animation initialBadgeFrame:(CGRect)frame conversionView:(id)view didStartAnimationBlock:(id)block didFinishAnimationBlock:(id)animationBlock
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  animationCopy = animation;
  blockCopy = block;
  animationBlockCopy = animationBlock;
  v21 = [(AAUIAchievementDetailTransitionAnimator *)self initWithPresentingViewController:controller detailViewController:viewController shouldPlayFlipInAnimation:animationCopy initialBadgeFrame:view conversionView:0 willStartAnimationBlock:0 presentAlongsideBlock:x dismissAlongsideBlock:y completionBlock:width, height, 0, 0];
  if (v21)
  {
    v22 = [blockCopy copy];
    didStartAnimationBlock = v21->_didStartAnimationBlock;
    v21->_didStartAnimationBlock = v22;

    v24 = [animationBlockCopy copy];
    didFinishAnimationBlock = v21->_didFinishAnimationBlock;
    v21->_didFinishAnimationBlock = v24;
  }

  return v21;
}

- (BOOL)isPresentingWithContext:(id)context
{
  v4 = [context viewControllerForKey:*MEMORY[0x277D77240]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [v4 topViewController];

    v4 = topViewController;
  }

  detailViewController = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  v7 = v4 == detailViewController;

  return v7;
}

- (void)prepareForAnimationsWithContext:(id)context
{
  containerView = [context containerView];
  conversionView = [(AAUIAchievementDetailTransitionAnimator *)self conversionView];
  [(AAUIAchievementDetailTransitionAnimator *)self initialBadgeFrame];
  [conversionView convertRect:containerView toView:?];
  x = v6;
  y = v8;
  width = v10;
  height = v12;

  if (self->_shouldAdjustForInset)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v16 = v15;

    if (v16 == 3.0)
    {
      v17 = -4.66666667;
    }

    else
    {
      v17 = -3.0;
    }

    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v34 = CGRectInset(v33, v17, v17);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
  }

  detailViewController = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  [detailViewController badgeFrame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  CGAffineTransformMakeScale(&v32, width / v24, width / v24);
  v31 = v32;
  [(AAUIAchievementDetailTransitionAnimator *)self setInitialBadgeTransform:&v31];
  v27 = *(MEMORY[0x277CBF2C0] + 16);
  *&v31.a = *MEMORY[0x277CBF2C0];
  *&v31.c = v27;
  *&v31.tx = *(MEMORY[0x277CBF2C0] + 32);
  [(AAUIAchievementDetailTransitionAnimator *)self setFinalBadgeTransform:&v31];
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MidX = CGRectGetMidX(v35);
  v36.size.height = height;
  v29 = MidX;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  [(AAUIAchievementDetailTransitionAnimator *)self setInitialBadgeCenter:v29, CGRectGetMidY(v36)];
  v37.origin.x = v20;
  v37.origin.y = v22;
  v37.size.width = v24;
  v37.size.height = v26;
  v30 = CGRectGetMidX(v37);
  v38.origin.x = v20;
  v38.origin.y = v22;
  v38.size.width = v24;
  v38.size.height = v26;
  [(AAUIAchievementDetailTransitionAnimator *)self setFinalBadgeCenter:v30, CGRectGetMidY(v38)];
  [(AAUIAchievementDetailTransitionAnimator *)self setFinalBadgeFrame:v20, v22, v24, v26];
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v4 = [(AAUIAchievementDetailTransitionAnimator *)self isPresentingWithContext:?];
  reduceMotion = [(AAUIAchievementDetailTransitionAnimator *)self reduceMotion];
  if (v4)
  {
    if (reduceMotion)
    {
      [(AAUIAchievementDetailTransitionAnimator *)self reducedMotionAnimatePresentationWithContext:transitionCopy];
    }

    else
    {
      [(AAUIAchievementDetailTransitionAnimator *)self animatePresentationWithContext:transitionCopy];
    }
  }

  else if (reduceMotion)
  {
    [(AAUIAchievementDetailTransitionAnimator *)self reducedMotionAnimateDismissalWithContext:transitionCopy];
  }

  else
  {
    [(AAUIAchievementDetailTransitionAnimator *)self animateDismissalWithContext:transitionCopy];
  }
}

- (void)reducedMotionAnimatePresentationWithContext:(id)context
{
  contextCopy = context;
  containerView = [contextCopy containerView];
  v6 = [contextCopy viewControllerForKey:*MEMORY[0x277D77230]];
  [(AAUIAchievementDetailTransitionAnimator *)self setPresentingViewController:v6];

  v7 = [contextCopy viewForKey:*MEMORY[0x277D77248]];
  presentingViewController = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
  view = [presentingViewController view];
  [view setAlpha:1.0];

  [v7 setAlpha:0.0];
  [containerView addSubview:v7];
  [containerView bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  detailViewController = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  view2 = [detailViewController view];
  [view2 setFrame:{v11, v13, v15, v17}];

  detailViewController2 = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  view3 = [detailViewController2 view];
  [view3 layoutIfNeeded];

  detailViewController3 = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  badgeView = [detailViewController3 badgeView];

  [containerView addSubview:badgeView];
  [(AAUIAchievementDetailTransitionAnimator *)self prepareForAnimationsWithContext:contextCopy];
  [(AAUIAchievementDetailTransitionAnimator *)self finalBadgeFrame];
  [badgeView setFrame:?];
  [badgeView setNeedsLayout];
  [badgeView layoutIfNeeded];
  [badgeView resizeBadgeForCurrentViewSize];
  [(AAUIAchievementDetailTransitionAnimator *)self finalBadgeTransform];
  v49[0] = v49[3];
  v49[1] = v49[4];
  v49[2] = v49[5];
  [badgeView setTransform:v49];
  [badgeView setPaused:0];
  detailViewController4 = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  [detailViewController4 placeBadgeViewInContainer];

  presentingViewController2 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
  navigationItem = [presentingViewController2 navigationItem];
  _weeTitle = [navigationItem _weeTitle];

  if (_weeTitle)
  {
    presentingViewController3 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    navigationItem2 = [presentingViewController3 navigationItem];
    _weeTitle2 = [navigationItem2 _weeTitle];
    presentingViewControllerWeeTitle = self->_presentingViewControllerWeeTitle;
    self->_presentingViewControllerWeeTitle = _weeTitle2;

    presentingViewController4 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    navigationItem3 = [presentingViewController4 navigationItem];
    [navigationItem3 _setWeeTitle:0];

    presentingViewController5 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    navigationController = [presentingViewController5 navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setNeedsLayout];

    presentingViewController6 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    navigationController2 = [presentingViewController6 navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 layoutIfNeeded];
  }

  [(AAUIAchievementDetailTransitionAnimator *)self transitionDuration:contextCopy];
  v41 = v40;
  v42 = MEMORY[0x277D75D18];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __87__AAUIAchievementDetailTransitionAnimator_reducedMotionAnimatePresentationWithContext___block_invoke;
  v47[3] = &unk_278C437B0;
  v47[4] = self;
  v48 = v7;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __87__AAUIAchievementDetailTransitionAnimator_reducedMotionAnimatePresentationWithContext___block_invoke_2;
  v45[3] = &unk_278C43948;
  v46 = contextCopy;
  v43 = contextCopy;
  v44 = v7;
  [v42 animateWithDuration:v47 animations:v45 completion:v41];
}

uint64_t __87__AAUIAchievementDetailTransitionAnimator_reducedMotionAnimatePresentationWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 view];
  [v3 setAlpha:0.0];

  v4 = *(a1 + 40);

  return [v4 setAlpha:1.0];
}

- (void)animatePresentationWithContext:(id)context
{
  contextCopy = context;
  containerView = [contextCopy containerView];
  v6 = [contextCopy viewControllerForKey:*MEMORY[0x277D77230]];
  [(AAUIAchievementDetailTransitionAnimator *)self setPresentingViewController:v6];

  v7 = [contextCopy viewForKey:*MEMORY[0x277D77248]];
  presentingViewController = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
  view = [presentingViewController view];
  [view setAlpha:1.0];

  [v7 setAlpha:0.0];
  [containerView addSubview:v7];
  [containerView layoutIfNeeded];
  detailViewController = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  badgeView = [detailViewController badgeView];

  [containerView addSubview:badgeView];
  [(AAUIAchievementDetailTransitionAnimator *)self prepareForAnimationsWithContext:contextCopy];
  [(AAUIAchievementDetailTransitionAnimator *)self finalBadgeFrame];
  [badgeView setFrame:?];
  [badgeView setNeedsLayout];
  [badgeView layoutIfNeeded];
  [badgeView resizeBadgeForCurrentViewSize];
  [(AAUIAchievementDetailTransitionAnimator *)self initialBadgeTransform];
  v44[0] = v44[3];
  v44[1] = v44[4];
  v44[2] = v44[5];
  [badgeView setTransform:v44];
  [(AAUIAchievementDetailTransitionAnimator *)self initialBadgeCenter];
  [badgeView setCenter:?];
  if ([(AAUIAchievementDetailTransitionAnimator *)self shouldPlayFlipInAnimation])
  {
    [badgeView playFlipInAnimation];
  }

  [badgeView setPaused:0];
  [(AAUIAchievementDetailTransitionAnimator *)self transitionDuration:contextCopy];
  v13 = v12;
  presentBlock = [(AAUIAchievementDetailTransitionAnimator *)self presentBlock];

  if (presentBlock)
  {
    presentBlock2 = [(AAUIAchievementDetailTransitionAnimator *)self presentBlock];
    presentBlock2[2](v13);
  }

  presentingViewController2 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
  navigationItem = [presentingViewController2 navigationItem];
  _weeTitle = [navigationItem _weeTitle];

  if (_weeTitle)
  {
    presentingViewController3 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    navigationItem2 = [presentingViewController3 navigationItem];
    _weeTitle2 = [navigationItem2 _weeTitle];
    presentingViewControllerWeeTitle = self->_presentingViewControllerWeeTitle;
    self->_presentingViewControllerWeeTitle = _weeTitle2;

    presentingViewController4 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    navigationItem3 = [presentingViewController4 navigationItem];
    [navigationItem3 _setWeeTitle:0];

    presentingViewController5 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    navigationController = [presentingViewController5 navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setNeedsLayout];

    presentingViewController6 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    navigationController2 = [presentingViewController6 navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 layoutIfNeeded];
  }

  didStartAnimationBlock = [(AAUIAchievementDetailTransitionAnimator *)self didStartAnimationBlock];

  if (didStartAnimationBlock)
  {
    didStartAnimationBlock2 = [(AAUIAchievementDetailTransitionAnimator *)self didStartAnimationBlock];
    didStartAnimationBlock2[2]();
  }

  willStartAnimationBlock = [(AAUIAchievementDetailTransitionAnimator *)self willStartAnimationBlock];

  if (willStartAnimationBlock)
  {
    willStartAnimationBlock2 = [(AAUIAchievementDetailTransitionAnimator *)self willStartAnimationBlock];
    willStartAnimationBlock2[2](willStartAnimationBlock2, 1);
  }

  v35 = MEMORY[0x277D75D18];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __74__AAUIAchievementDetailTransitionAnimator_animatePresentationWithContext___block_invoke;
  v41[3] = &unk_278C43970;
  v41[4] = self;
  v42 = v7;
  v43 = badgeView;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __74__AAUIAchievementDetailTransitionAnimator_animatePresentationWithContext___block_invoke_5;
  v39[3] = &unk_278C43998;
  v39[4] = self;
  v40 = contextCopy;
  v36 = contextCopy;
  v37 = badgeView;
  v38 = v7;
  [v35 animateKeyframesWithDuration:0 delay:v41 options:v39 animations:v13 completion:0.0];
}

void __74__AAUIAchievementDetailTransitionAnimator_animatePresentationWithContext___block_invoke(uint64_t a1)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__AAUIAchievementDetailTransitionAnimator_animatePresentationWithContext___block_invoke_2;
  v11[3] = &unk_278C43800;
  v11[4] = *(a1 + 32);
  [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v11 relativeDuration:0.0 animations:0.4];
  v2 = MEMORY[0x277D75D18];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__AAUIAchievementDetailTransitionAnimator_animatePresentationWithContext___block_invoke_3;
  v9[3] = &unk_278C43800;
  v10 = *(a1 + 40);
  [v2 addKeyframeWithRelativeStartTime:v9 relativeDuration:0.6 animations:0.4];
  v3 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__AAUIAchievementDetailTransitionAnimator_animatePresentationWithContext___block_invoke_4;
  v6[3] = &unk_278C437B0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 addKeyframeWithRelativeStartTime:v6 relativeDuration:0.0 animations:1.0];
}

void __74__AAUIAchievementDetailTransitionAnimator_animatePresentationWithContext___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 finalPresentingVCTransform];
    v2 = *(a1 + 32);
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
  }

  v3 = [v2 presentingViewController];
  v4 = [v3 view];
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  [v4 setTransform:v7];

  if (([*(a1 + 32) isWatch] & 1) == 0)
  {
    v5 = [*(a1 + 32) presentingViewController];
    v6 = [v5 view];
    [v6 setAlpha:0.0];
  }
}

uint64_t __74__AAUIAchievementDetailTransitionAnimator_animatePresentationWithContext___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 finalBadgeTransform];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  v3 = *(a1 + 32);
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  [v3 setTransform:v5];
  [*(a1 + 40) finalBadgeCenter];
  return [*(a1 + 32) setCenter:?];
}

void __74__AAUIAchievementDetailTransitionAnimator_animatePresentationWithContext___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 view];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v12[0] = *MEMORY[0x277CBF2C0];
  v12[1] = v4;
  v12[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform:v12];

  v5 = [*(a1 + 32) presentingViewController];
  v6 = [v5 view];
  [v6 setAlpha:1.0];

  v7 = [*(a1 + 32) detailViewController];
  [v7 placeBadgeViewInContainer];

  [*(a1 + 40) completeTransition:1];
  v8 = [*(a1 + 32) completionBlock];

  if (v8)
  {
    v9 = [*(a1 + 32) completionBlock];
    v9[2](v9, 1);
  }

  v10 = [*(a1 + 32) didFinishAnimationBlock];

  if (v10)
  {
    v11 = [*(a1 + 32) didFinishAnimationBlock];
    v11[2]();
  }
}

- (void)reducedMotionAnimateDismissalWithContext:(id)context
{
  contextCopy = context;
  containerView = [contextCopy containerView];
  if ([contextCopy presentationStyle] == -1)
  {
    presentingViewController = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    view = [presentingViewController view];
    [view setAlpha:0.0];

    presentingViewController2 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    view2 = [presentingViewController2 view];
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    v34[0] = *MEMORY[0x277CBF2C0];
    v34[1] = v10;
    v34[2] = *(MEMORY[0x277CBF2C0] + 32);
    [view2 setTransform:v34];

    presentingViewController3 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    view3 = [presentingViewController3 view];
    [containerView addSubview:view3];
  }

  v13 = [contextCopy viewForKey:*MEMORY[0x277D77238]];
  [containerView addSubview:v13];
  [containerView layoutIfNeeded];
  [(AAUIAchievementDetailTransitionAnimator *)self transitionDuration:contextCopy];
  v15 = v14;
  presentingViewControllerWeeTitle = self->_presentingViewControllerWeeTitle;
  if (presentingViewControllerWeeTitle)
  {
    presentingViewController4 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    navigationItem = [presentingViewController4 navigationItem];
    [navigationItem _setWeeTitle:presentingViewControllerWeeTitle];

    v19 = self->_presentingViewControllerWeeTitle;
    self->_presentingViewControllerWeeTitle = 0;

    presentingViewController5 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    navigationController = [presentingViewController5 navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setNeedsLayout];

    presentingViewController6 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    navigationController2 = [presentingViewController6 navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 layoutIfNeeded];
  }

  v26 = MEMORY[0x277D75D18];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __84__AAUIAchievementDetailTransitionAnimator_reducedMotionAnimateDismissalWithContext___block_invoke;
  v31[3] = &unk_278C437B0;
  v32 = v13;
  selfCopy = self;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __84__AAUIAchievementDetailTransitionAnimator_reducedMotionAnimateDismissalWithContext___block_invoke_2;
  v29[3] = &unk_278C43948;
  v30 = contextCopy;
  v27 = contextCopy;
  v28 = v13;
  [v26 animateWithDuration:v31 animations:v29 completion:v15];
}

void __84__AAUIAchievementDetailTransitionAnimator_reducedMotionAnimateDismissalWithContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v3 = [*(a1 + 40) presentingViewController];
  v2 = [v3 view];
  [v2 setAlpha:1.0];
}

- (void)animateDismissalWithContext:(id)context
{
  contextCopy = context;
  containerView = [contextCopy containerView];
  if ([contextCopy presentationStyle] == -1)
  {
    presentingViewController = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    view = [presentingViewController view];
    [view setAlpha:0.0];

    presentingViewController2 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    view2 = [presentingViewController2 view];
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    v70 = *MEMORY[0x277CBF2C0];
    v71 = v10;
    v72 = *(MEMORY[0x277CBF2C0] + 32);
    [view2 setTransform:&v70];

    presentingViewController3 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    view3 = [presentingViewController3 view];
    [containerView addSubview:view3];
  }

  v13 = [contextCopy viewForKey:*MEMORY[0x277D77238]];
  [containerView addSubview:v13];
  [containerView layoutIfNeeded];
  detailViewController = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  badgeView = [detailViewController badgeView];

  if (-[AAUIAchievementDetailTransitionAnimator shouldDismissGracefullyForTextSizeChange](self, "shouldDismissGracefullyForTextSizeChange") || ([containerView addSubview:badgeView], objc_msgSend(badgeView, "setTranslatesAutoresizingMaskIntoConstraints:", 1), -[AAUIAchievementDetailTransitionAnimator finalBadgeCenter](self, "finalBadgeCenter"), objc_msgSend(badgeView, "setCenter:"), -[AAUIAchievementDetailTransitionAnimator finalBadgeTransform](self, "finalBadgeTransform"), v70 = v67, v71 = v68, v72 = v69, objc_msgSend(badgeView, "setTransform:", &v70), objc_msgSend(badgeView, "playFlipOutAnimation"), v17 = v16, v16 < 2.22044605e-16))
  {
    [(AAUIAchievementDetailTransitionAnimator *)self transitionDuration:contextCopy];
    v17 = v18;
  }

  [(AAUIAchievementDetailTransitionAnimator *)self finalPresentingVCTransform];
  presentingViewController4 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
  view4 = [presentingViewController4 view];
  v70 = v64;
  v71 = v65;
  v72 = v66;
  [view4 setTransform:&v70];

  isWatch = [(AAUIAchievementDetailTransitionAnimator *)self isWatch];
  presentingViewController5 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
  view5 = [presentingViewController5 view];
  view6 = view5;
  if (isWatch)
  {
    [view5 setNeedsLayout];

    presentingViewController5 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    view6 = [presentingViewController5 view];
    [view6 layoutIfNeeded];
  }

  else
  {
    [view5 setAlpha:0.0];
  }

  dismissBlock = [(AAUIAchievementDetailTransitionAnimator *)self dismissBlock];

  if (dismissBlock)
  {
    dismissBlock2 = [(AAUIAchievementDetailTransitionAnimator *)self dismissBlock];
    dismissBlock2[2](v17);
  }

  presentingViewControllerWeeTitle = self->_presentingViewControllerWeeTitle;
  if (presentingViewControllerWeeTitle)
  {
    presentingViewController6 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    navigationItem = [presentingViewController6 navigationItem];
    [navigationItem _setWeeTitle:presentingViewControllerWeeTitle];

    v30 = self->_presentingViewControllerWeeTitle;
    self->_presentingViewControllerWeeTitle = 0;

    presentingViewController7 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    navigationController = [presentingViewController7 navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setNeedsLayout];

    presentingViewController8 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    navigationController2 = [presentingViewController8 navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 layoutIfNeeded];
  }

  didStartAnimationBlock = [(AAUIAchievementDetailTransitionAnimator *)self didStartAnimationBlock];

  if (didStartAnimationBlock)
  {
    didStartAnimationBlock2 = [(AAUIAchievementDetailTransitionAnimator *)self didStartAnimationBlock];
    didStartAnimationBlock2[2]();
  }

  willStartAnimationBlock = [(AAUIAchievementDetailTransitionAnimator *)self willStartAnimationBlock];

  if (willStartAnimationBlock)
  {
    willStartAnimationBlock2 = [(AAUIAchievementDetailTransitionAnimator *)self willStartAnimationBlock];
    willStartAnimationBlock2[2](willStartAnimationBlock2, 0);
  }

  shouldDismissGracefullyForTextSizeChange = [(AAUIAchievementDetailTransitionAnimator *)self shouldDismissGracefullyForTextSizeChange];
  v42 = MEMORY[0x277D75D18];
  if (shouldDismissGracefullyForTextSizeChange)
  {
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_6;
    v53[3] = &unk_278C43970;
    v43 = &v54;
    v54 = v13;
    v55 = badgeView;
    selfCopy = self;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_9;
    v49[3] = &unk_278C439C0;
    v50 = v55;
    v51 = contextCopy;
    selfCopy2 = self;
    v44 = contextCopy;
    v45 = v13;
    [v42 animateKeyframesWithDuration:1 delay:v53 options:v49 animations:v17 completion:0.0];

    v46 = v55;
  }

  else
  {
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke;
    v61[3] = &unk_278C43970;
    v43 = v62;
    v62[0] = v13;
    v62[1] = self;
    v63 = badgeView;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_5;
    v57[3] = &unk_278C439C0;
    v58 = v63;
    v59 = contextCopy;
    selfCopy3 = self;
    v47 = contextCopy;
    v48 = v13;
    [v42 animateKeyframesWithDuration:1 delay:v61 options:v57 animations:v17 completion:0.0];

    v46 = v63;
  }
}

void __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_2;
  v10[3] = &unk_278C43800;
  v11 = *(a1 + 32);
  [v2 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.0 animations:0.4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_3;
  v9[3] = &unk_278C43800;
  v9[4] = *(a1 + 40);
  [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v9 relativeDuration:0.6 animations:0.4];
  v3 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_4;
  v6[3] = &unk_278C437B0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v3 addKeyframeWithRelativeStartTime:v6 relativeDuration:0.0 animations:1.0];
}

void __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 view];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v7[0] = *MEMORY[0x277CBF2C0];
  v7[1] = v4;
  v7[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform:v7];

  v5 = [*(a1 + 32) presentingViewController];
  v6 = [v5 view];
  [v6 setAlpha:1.0];
}

uint64_t __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_4(uint64_t a1)
{
  [*(a1 + 40) initialBadgeCenter];
  [*(a1 + 32) setCenter:?];
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 initialBadgeTransform];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
  }

  v3 = *(a1 + 32);
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  return [v3 setTransform:v5];
}

void __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_5(id *a1)
{
  [a1[4] removeFromSuperview];
  [a1[5] completeTransition:1];
  v2 = [a1[6] completionBlock];

  if (v2)
  {
    v3 = [a1[6] completionBlock];
    v3[2](v3, 0);
  }

  v4 = [a1[6] didFinishAnimationBlock];

  if (v4)
  {
    v5 = [a1[6] didFinishAnimationBlock];
    v5[2]();
  }
}

void __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_7;
  v4[3] = &unk_278C437B0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.4];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_8;
  v3[3] = &unk_278C43800;
  v3[4] = *(a1 + 48);
  [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v3 relativeDuration:0.6 animations:0.4];
}

uint64_t __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

void __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  v3 = [v2 view];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v7[0] = *MEMORY[0x277CBF2C0];
  v7[1] = v4;
  v7[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform:v7];

  v5 = [*(a1 + 32) presentingViewController];
  v6 = [v5 view];
  [v6 setAlpha:1.0];
}

void __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_9(id *a1)
{
  [a1[4] removeFromSuperview];
  [a1[5] completeTransition:1];
  v2 = [a1[6] completionBlock];

  if (v2)
  {
    v3 = [a1[6] completionBlock];
    v3[2](v3, 0);
  }

  v4 = [a1[6] didFinishAnimationBlock];

  if (v4)
  {
    v5 = [a1[6] didFinishAnimationBlock];
    v5[2]();
  }
}

- (CGRect)initialBadgeFrame
{
  x = self->_initialBadgeFrame.origin.x;
  y = self->_initialBadgeFrame.origin.y;
  width = self->_initialBadgeFrame.size.width;
  height = self->_initialBadgeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)initialBadgeCenter
{
  x = self->_initialBadgeCenter.x;
  y = self->_initialBadgeCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)finalBadgeCenter
{
  x = self->_finalBadgeCenter.x;
  y = self->_finalBadgeCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)initialBadgeTransform
{
  v3 = *&self[4].c;
  *&retstr->a = *&self[4].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].tx;
  return self;
}

- (void)setInitialBadgeTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_initialBadgeTransform.c = *&transform->c;
  *&self->_initialBadgeTransform.tx = v4;
  *&self->_initialBadgeTransform.a = v3;
}

- (CGAffineTransform)finalBadgeTransform
{
  v3 = *&self[5].c;
  *&retstr->a = *&self[5].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[5].tx;
  return self;
}

- (void)setFinalBadgeTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_finalBadgeTransform.c = *&transform->c;
  *&self->_finalBadgeTransform.tx = v4;
  *&self->_finalBadgeTransform.a = v3;
}

- (CGRect)finalBadgeFrame
{
  x = self->_finalBadgeFrame.origin.x;
  y = self->_finalBadgeFrame.origin.y;
  width = self->_finalBadgeFrame.size.width;
  height = self->_finalBadgeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)finalPresentingVCTransform
{
  v3 = *&self[6].c;
  *&retstr->a = *&self[6].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[6].tx;
  return self;
}

- (void)setFinalPresentingVCTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_finalPresentingVCTransform.c = *&transform->c;
  *&self->_finalPresentingVCTransform.tx = v4;
  *&self->_finalPresentingVCTransform.a = v3;
}

@end