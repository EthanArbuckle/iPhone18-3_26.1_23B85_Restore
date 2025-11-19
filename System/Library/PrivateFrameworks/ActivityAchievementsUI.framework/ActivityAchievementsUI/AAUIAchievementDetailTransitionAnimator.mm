@interface AAUIAchievementDetailTransitionAnimator
- (AAUIAchievementDetailTransitionAnimator)initWithPresentingViewController:(id)a3 detailViewController:(id)a4 shouldPlayFlipInAnimation:(BOOL)a5 initialBadgeFrame:(CGRect)a6 conversionView:(id)a7 didStartAnimationBlock:(id)a8 didFinishAnimationBlock:(id)a9;
- (AAUIAchievementDetailTransitionAnimator)initWithPresentingViewController:(id)a3 detailViewController:(id)a4 shouldPlayFlipInAnimation:(BOOL)a5 initialBadgeFrame:(CGRect)a6 conversionView:(id)a7 willStartAnimationBlock:(id)a8 presentAlongsideBlock:(id)a9 dismissAlongsideBlock:(id)a10 completionBlock:(id)a11;
- (BOOL)isPresentingWithContext:(id)a3;
- (CGAffineTransform)finalBadgeTransform;
- (CGAffineTransform)finalPresentingVCTransform;
- (CGAffineTransform)initialBadgeTransform;
- (CGPoint)finalBadgeCenter;
- (CGPoint)initialBadgeCenter;
- (CGRect)finalBadgeFrame;
- (CGRect)initialBadgeFrame;
- (void)animateDismissalWithContext:(id)a3;
- (void)animatePresentationWithContext:(id)a3;
- (void)animateTransition:(id)a3;
- (void)prepareForAnimationsWithContext:(id)a3;
- (void)reducedMotionAnimateDismissalWithContext:(id)a3;
- (void)reducedMotionAnimatePresentationWithContext:(id)a3;
- (void)setFinalBadgeTransform:(CGAffineTransform *)a3;
- (void)setFinalPresentingVCTransform:(CGAffineTransform *)a3;
- (void)setInitialBadgeTransform:(CGAffineTransform *)a3;
@end

@implementation AAUIAchievementDetailTransitionAnimator

- (AAUIAchievementDetailTransitionAnimator)initWithPresentingViewController:(id)a3 detailViewController:(id)a4 shouldPlayFlipInAnimation:(BOOL)a5 initialBadgeFrame:(CGRect)a6 conversionView:(id)a7 willStartAnimationBlock:(id)a8 presentAlongsideBlock:(id)a9 dismissAlongsideBlock:(id)a10 completionBlock:(id)a11
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v45 = a3;
  v21 = a4;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v47.receiver = self;
  v47.super_class = AAUIAchievementDetailTransitionAnimator;
  v27 = [(AAUIAchievementDetailTransitionAnimator *)&v47 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_presentingViewController, a3);
    objc_storeStrong(&v28->_detailViewController, a4);
    objc_storeStrong(&v28->_conversionView, a7);
    v28->_initialBadgeFrame.origin.x = x;
    v28->_initialBadgeFrame.origin.y = y;
    v28->_initialBadgeFrame.size.width = width;
    v28->_initialBadgeFrame.size.height = height;
    v29 = [v23 copy];
    willStartAnimationBlock = v28->_willStartAnimationBlock;
    v28->_willStartAnimationBlock = v29;

    v31 = [v24 copy];
    presentBlock = v28->_presentBlock;
    v28->_presentBlock = v31;

    v33 = [v25 copy];
    dismissBlock = v28->_dismissBlock;
    v28->_dismissBlock = v33;

    v35 = [v26 copy];
    completionBlock = v28->_completionBlock;
    v28->_completionBlock = v35;

    v37 = [MEMORY[0x277CCDD30] sharedBehavior];
    v28->_isWatch = [v37 isAppleWatch];

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
    v28->_shouldPlayFlipInAnimation = a5;
    v28->_shouldDismissGracefullyForTextSizeChange = 0;
    v42 = [MEMORY[0x277CCAB98] defaultCenter];
    [v42 addObserver:v28 selector:sel_textSizeDidChange_ name:*MEMORY[0x277D76810] object:0];

    v28->_reduceMotion = UIAccessibilityIsReduceMotionEnabled();
    v28->_shouldAdjustForInset = 1;
  }

  return v28;
}

- (AAUIAchievementDetailTransitionAnimator)initWithPresentingViewController:(id)a3 detailViewController:(id)a4 shouldPlayFlipInAnimation:(BOOL)a5 initialBadgeFrame:(CGRect)a6 conversionView:(id)a7 didStartAnimationBlock:(id)a8 didFinishAnimationBlock:(id)a9
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v15 = a5;
  v19 = a8;
  v20 = a9;
  v21 = [(AAUIAchievementDetailTransitionAnimator *)self initWithPresentingViewController:a3 detailViewController:a4 shouldPlayFlipInAnimation:v15 initialBadgeFrame:a7 conversionView:0 willStartAnimationBlock:0 presentAlongsideBlock:x dismissAlongsideBlock:y completionBlock:width, height, 0, 0];
  if (v21)
  {
    v22 = [v19 copy];
    didStartAnimationBlock = v21->_didStartAnimationBlock;
    v21->_didStartAnimationBlock = v22;

    v24 = [v20 copy];
    didFinishAnimationBlock = v21->_didFinishAnimationBlock;
    v21->_didFinishAnimationBlock = v24;
  }

  return v21;
}

- (BOOL)isPresentingWithContext:(id)a3
{
  v4 = [a3 viewControllerForKey:*MEMORY[0x277D77240]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 topViewController];

    v4 = v5;
  }

  v6 = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  v7 = v4 == v6;

  return v7;
}

- (void)prepareForAnimationsWithContext:(id)a3
{
  v4 = [a3 containerView];
  v5 = [(AAUIAchievementDetailTransitionAnimator *)self conversionView];
  [(AAUIAchievementDetailTransitionAnimator *)self initialBadgeFrame];
  [v5 convertRect:v4 toView:?];
  x = v6;
  y = v8;
  width = v10;
  height = v12;

  if (self->_shouldAdjustForInset)
  {
    v14 = [MEMORY[0x277D759A0] mainScreen];
    [v14 scale];
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

  v18 = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  [v18 badgeFrame];
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

- (void)animateTransition:(id)a3
{
  v6 = a3;
  v4 = [(AAUIAchievementDetailTransitionAnimator *)self isPresentingWithContext:?];
  v5 = [(AAUIAchievementDetailTransitionAnimator *)self reduceMotion];
  if (v4)
  {
    if (v5)
    {
      [(AAUIAchievementDetailTransitionAnimator *)self reducedMotionAnimatePresentationWithContext:v6];
    }

    else
    {
      [(AAUIAchievementDetailTransitionAnimator *)self animatePresentationWithContext:v6];
    }
  }

  else if (v5)
  {
    [(AAUIAchievementDetailTransitionAnimator *)self reducedMotionAnimateDismissalWithContext:v6];
  }

  else
  {
    [(AAUIAchievementDetailTransitionAnimator *)self animateDismissalWithContext:v6];
  }
}

- (void)reducedMotionAnimatePresentationWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewControllerForKey:*MEMORY[0x277D77230]];
  [(AAUIAchievementDetailTransitionAnimator *)self setPresentingViewController:v6];

  v7 = [v4 viewForKey:*MEMORY[0x277D77248]];
  v8 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
  v9 = [v8 view];
  [v9 setAlpha:1.0];

  [v7 setAlpha:0.0];
  [v5 addSubview:v7];
  [v5 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  v19 = [v18 view];
  [v19 setFrame:{v11, v13, v15, v17}];

  v20 = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  v21 = [v20 view];
  [v21 layoutIfNeeded];

  v22 = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  v23 = [v22 badgeView];

  [v5 addSubview:v23];
  [(AAUIAchievementDetailTransitionAnimator *)self prepareForAnimationsWithContext:v4];
  [(AAUIAchievementDetailTransitionAnimator *)self finalBadgeFrame];
  [v23 setFrame:?];
  [v23 setNeedsLayout];
  [v23 layoutIfNeeded];
  [v23 resizeBadgeForCurrentViewSize];
  [(AAUIAchievementDetailTransitionAnimator *)self finalBadgeTransform];
  v49[0] = v49[3];
  v49[1] = v49[4];
  v49[2] = v49[5];
  [v23 setTransform:v49];
  [v23 setPaused:0];
  v24 = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  [v24 placeBadgeViewInContainer];

  v25 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
  v26 = [v25 navigationItem];
  v27 = [v26 _weeTitle];

  if (v27)
  {
    v28 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v29 = [v28 navigationItem];
    v30 = [v29 _weeTitle];
    presentingViewControllerWeeTitle = self->_presentingViewControllerWeeTitle;
    self->_presentingViewControllerWeeTitle = v30;

    v32 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v33 = [v32 navigationItem];
    [v33 _setWeeTitle:0];

    v34 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v35 = [v34 navigationController];
    v36 = [v35 navigationBar];
    [v36 setNeedsLayout];

    v37 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v38 = [v37 navigationController];
    v39 = [v38 navigationBar];
    [v39 layoutIfNeeded];
  }

  [(AAUIAchievementDetailTransitionAnimator *)self transitionDuration:v4];
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
  v46 = v4;
  v43 = v4;
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

- (void)animatePresentationWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewControllerForKey:*MEMORY[0x277D77230]];
  [(AAUIAchievementDetailTransitionAnimator *)self setPresentingViewController:v6];

  v7 = [v4 viewForKey:*MEMORY[0x277D77248]];
  v8 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
  v9 = [v8 view];
  [v9 setAlpha:1.0];

  [v7 setAlpha:0.0];
  [v5 addSubview:v7];
  [v5 layoutIfNeeded];
  v10 = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  v11 = [v10 badgeView];

  [v5 addSubview:v11];
  [(AAUIAchievementDetailTransitionAnimator *)self prepareForAnimationsWithContext:v4];
  [(AAUIAchievementDetailTransitionAnimator *)self finalBadgeFrame];
  [v11 setFrame:?];
  [v11 setNeedsLayout];
  [v11 layoutIfNeeded];
  [v11 resizeBadgeForCurrentViewSize];
  [(AAUIAchievementDetailTransitionAnimator *)self initialBadgeTransform];
  v44[0] = v44[3];
  v44[1] = v44[4];
  v44[2] = v44[5];
  [v11 setTransform:v44];
  [(AAUIAchievementDetailTransitionAnimator *)self initialBadgeCenter];
  [v11 setCenter:?];
  if ([(AAUIAchievementDetailTransitionAnimator *)self shouldPlayFlipInAnimation])
  {
    [v11 playFlipInAnimation];
  }

  [v11 setPaused:0];
  [(AAUIAchievementDetailTransitionAnimator *)self transitionDuration:v4];
  v13 = v12;
  v14 = [(AAUIAchievementDetailTransitionAnimator *)self presentBlock];

  if (v14)
  {
    v15 = [(AAUIAchievementDetailTransitionAnimator *)self presentBlock];
    v15[2](v13);
  }

  v16 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
  v17 = [v16 navigationItem];
  v18 = [v17 _weeTitle];

  if (v18)
  {
    v19 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v20 = [v19 navigationItem];
    v21 = [v20 _weeTitle];
    presentingViewControllerWeeTitle = self->_presentingViewControllerWeeTitle;
    self->_presentingViewControllerWeeTitle = v21;

    v23 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v24 = [v23 navigationItem];
    [v24 _setWeeTitle:0];

    v25 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v26 = [v25 navigationController];
    v27 = [v26 navigationBar];
    [v27 setNeedsLayout];

    v28 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v29 = [v28 navigationController];
    v30 = [v29 navigationBar];
    [v30 layoutIfNeeded];
  }

  v31 = [(AAUIAchievementDetailTransitionAnimator *)self didStartAnimationBlock];

  if (v31)
  {
    v32 = [(AAUIAchievementDetailTransitionAnimator *)self didStartAnimationBlock];
    v32[2]();
  }

  v33 = [(AAUIAchievementDetailTransitionAnimator *)self willStartAnimationBlock];

  if (v33)
  {
    v34 = [(AAUIAchievementDetailTransitionAnimator *)self willStartAnimationBlock];
    v34[2](v34, 1);
  }

  v35 = MEMORY[0x277D75D18];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __74__AAUIAchievementDetailTransitionAnimator_animatePresentationWithContext___block_invoke;
  v41[3] = &unk_278C43970;
  v41[4] = self;
  v42 = v7;
  v43 = v11;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __74__AAUIAchievementDetailTransitionAnimator_animatePresentationWithContext___block_invoke_5;
  v39[3] = &unk_278C43998;
  v39[4] = self;
  v40 = v4;
  v36 = v4;
  v37 = v11;
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

- (void)reducedMotionAnimateDismissalWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  if ([v4 presentationStyle] == -1)
  {
    v6 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v7 = [v6 view];
    [v7 setAlpha:0.0];

    v8 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v9 = [v8 view];
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    v34[0] = *MEMORY[0x277CBF2C0];
    v34[1] = v10;
    v34[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v9 setTransform:v34];

    v11 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v12 = [v11 view];
    [v5 addSubview:v12];
  }

  v13 = [v4 viewForKey:*MEMORY[0x277D77238]];
  [v5 addSubview:v13];
  [v5 layoutIfNeeded];
  [(AAUIAchievementDetailTransitionAnimator *)self transitionDuration:v4];
  v15 = v14;
  presentingViewControllerWeeTitle = self->_presentingViewControllerWeeTitle;
  if (presentingViewControllerWeeTitle)
  {
    v17 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v18 = [v17 navigationItem];
    [v18 _setWeeTitle:presentingViewControllerWeeTitle];

    v19 = self->_presentingViewControllerWeeTitle;
    self->_presentingViewControllerWeeTitle = 0;

    v20 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v21 = [v20 navigationController];
    v22 = [v21 navigationBar];
    [v22 setNeedsLayout];

    v23 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v24 = [v23 navigationController];
    v25 = [v24 navigationBar];
    [v25 layoutIfNeeded];
  }

  v26 = MEMORY[0x277D75D18];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __84__AAUIAchievementDetailTransitionAnimator_reducedMotionAnimateDismissalWithContext___block_invoke;
  v31[3] = &unk_278C437B0;
  v32 = v13;
  v33 = self;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __84__AAUIAchievementDetailTransitionAnimator_reducedMotionAnimateDismissalWithContext___block_invoke_2;
  v29[3] = &unk_278C43948;
  v30 = v4;
  v27 = v4;
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

- (void)animateDismissalWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  if ([v4 presentationStyle] == -1)
  {
    v6 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v7 = [v6 view];
    [v7 setAlpha:0.0];

    v8 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v9 = [v8 view];
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    v70 = *MEMORY[0x277CBF2C0];
    v71 = v10;
    v72 = *(MEMORY[0x277CBF2C0] + 32);
    [v9 setTransform:&v70];

    v11 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v12 = [v11 view];
    [v5 addSubview:v12];
  }

  v13 = [v4 viewForKey:*MEMORY[0x277D77238]];
  [v5 addSubview:v13];
  [v5 layoutIfNeeded];
  v14 = [(AAUIAchievementDetailTransitionAnimator *)self detailViewController];
  v15 = [v14 badgeView];

  if (-[AAUIAchievementDetailTransitionAnimator shouldDismissGracefullyForTextSizeChange](self, "shouldDismissGracefullyForTextSizeChange") || ([v5 addSubview:v15], objc_msgSend(v15, "setTranslatesAutoresizingMaskIntoConstraints:", 1), -[AAUIAchievementDetailTransitionAnimator finalBadgeCenter](self, "finalBadgeCenter"), objc_msgSend(v15, "setCenter:"), -[AAUIAchievementDetailTransitionAnimator finalBadgeTransform](self, "finalBadgeTransform"), v70 = v67, v71 = v68, v72 = v69, objc_msgSend(v15, "setTransform:", &v70), objc_msgSend(v15, "playFlipOutAnimation"), v17 = v16, v16 < 2.22044605e-16))
  {
    [(AAUIAchievementDetailTransitionAnimator *)self transitionDuration:v4];
    v17 = v18;
  }

  [(AAUIAchievementDetailTransitionAnimator *)self finalPresentingVCTransform];
  v19 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
  v20 = [v19 view];
  v70 = v64;
  v71 = v65;
  v72 = v66;
  [v20 setTransform:&v70];

  v21 = [(AAUIAchievementDetailTransitionAnimator *)self isWatch];
  v22 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
  v23 = [v22 view];
  v24 = v23;
  if (v21)
  {
    [v23 setNeedsLayout];

    v22 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v24 = [v22 view];
    [v24 layoutIfNeeded];
  }

  else
  {
    [v23 setAlpha:0.0];
  }

  v25 = [(AAUIAchievementDetailTransitionAnimator *)self dismissBlock];

  if (v25)
  {
    v26 = [(AAUIAchievementDetailTransitionAnimator *)self dismissBlock];
    v26[2](v17);
  }

  presentingViewControllerWeeTitle = self->_presentingViewControllerWeeTitle;
  if (presentingViewControllerWeeTitle)
  {
    v28 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v29 = [v28 navigationItem];
    [v29 _setWeeTitle:presentingViewControllerWeeTitle];

    v30 = self->_presentingViewControllerWeeTitle;
    self->_presentingViewControllerWeeTitle = 0;

    v31 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v32 = [v31 navigationController];
    v33 = [v32 navigationBar];
    [v33 setNeedsLayout];

    v34 = [(AAUIAchievementDetailTransitionAnimator *)self presentingViewController];
    v35 = [v34 navigationController];
    v36 = [v35 navigationBar];
    [v36 layoutIfNeeded];
  }

  v37 = [(AAUIAchievementDetailTransitionAnimator *)self didStartAnimationBlock];

  if (v37)
  {
    v38 = [(AAUIAchievementDetailTransitionAnimator *)self didStartAnimationBlock];
    v38[2]();
  }

  v39 = [(AAUIAchievementDetailTransitionAnimator *)self willStartAnimationBlock];

  if (v39)
  {
    v40 = [(AAUIAchievementDetailTransitionAnimator *)self willStartAnimationBlock];
    v40[2](v40, 0);
  }

  v41 = [(AAUIAchievementDetailTransitionAnimator *)self shouldDismissGracefullyForTextSizeChange];
  v42 = MEMORY[0x277D75D18];
  if (v41)
  {
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_6;
    v53[3] = &unk_278C43970;
    v43 = &v54;
    v54 = v13;
    v55 = v15;
    v56 = self;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_9;
    v49[3] = &unk_278C439C0;
    v50 = v55;
    v51 = v4;
    v52 = self;
    v44 = v4;
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
    v63 = v15;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __71__AAUIAchievementDetailTransitionAnimator_animateDismissalWithContext___block_invoke_5;
    v57[3] = &unk_278C439C0;
    v58 = v63;
    v59 = v4;
    v60 = self;
    v47 = v4;
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

- (void)setInitialBadgeTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_initialBadgeTransform.c = *&a3->c;
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

- (void)setFinalBadgeTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_finalBadgeTransform.c = *&a3->c;
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

- (void)setFinalPresentingVCTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_finalPresentingVCTransform.c = *&a3->c;
  *&self->_finalPresentingVCTransform.tx = v4;
  *&self->_finalPresentingVCTransform.a = v3;
}

@end