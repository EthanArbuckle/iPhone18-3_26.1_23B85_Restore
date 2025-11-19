@interface SFInteractiveDismissController
- (BOOL)popGesture:(id)a3 withRemainingDuration:(double)a4 shouldPopWithVelocity:(double *)a5;
- (CGPoint)translationForStatistics;
- (CGPoint)velocityForStatistics;
- (SFInteractiveDismissController)init;
- (SFInteractiveDismissControllerDelegate)delegate;
- (UIViewController)viewControllerToBeDismissed;
- (double)_percentComplete:(id)a3;
- (double)_translationCoefficient;
- (id)interactionControllerForDismissal:(id)a3;
- (void)_animateDismissalCancelTransition;
- (void)_animateDismissalCompleteTransition;
- (void)_dismissAnimateTransition:(id)a3;
- (void)_presentAnimateTransition:(id)a3;
- (void)_updateStatistics:(id)a3 firstSample:(BOOL)a4 finalSample:(BOOL)a5;
- (void)animateTransition:(id)a3;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)setEdgeSwipeView:(id)a3;
- (void)startInteractiveTransition:(id)a3;
- (void)swiped:(id)a3;
@end

@implementation SFInteractiveDismissController

- (SFInteractiveDismissController)init
{
  v7.receiver = self;
  v7.super_class = SFInteractiveDismissController;
  v2 = [(UIPercentDrivenInteractiveTransition *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCEB8]) initWithTarget:v2 action:sel_swiped_];
    edgeSwipeGestureRecognizer = v2->_edgeSwipeGestureRecognizer;
    v2->_edgeSwipeGestureRecognizer = v3;

    [(UIScreenEdgePanGestureRecognizer *)v2->_edgeSwipeGestureRecognizer setEdges:2];
    [(UIScreenEdgePanGestureRecognizer *)v2->_edgeSwipeGestureRecognizer _setHysteresis:6.0];
    [(UIScreenEdgePanGestureRecognizer *)v2->_edgeSwipeGestureRecognizer setMaximumNumberOfTouches:1];
    [(UIScreenEdgePanGestureRecognizer *)v2->_edgeSwipeGestureRecognizer _setRequiresSystemGesturesToFail:1];
    v5 = v2;
  }

  return v2;
}

- (void)startInteractiveTransition:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_transitionContext, v4);
  v5.receiver = self;
  v5.super_class = SFInteractiveDismissController;
  [(UIPercentDrivenInteractiveTransition *)&v5 startInteractiveTransition:v4];
}

- (void)cancelInteractiveTransition
{
  v3.receiver = self;
  v3.super_class = SFInteractiveDismissController;
  [(UIPercentDrivenInteractiveTransition *)&v3 cancelInteractiveTransition];
  [(SFInteractiveDismissController *)self _animateDismissalCancelTransition];
  self->_dismissMode = 0;
}

- (void)finishInteractiveTransition
{
  v3.receiver = self;
  v3.super_class = SFInteractiveDismissController;
  [(UIPercentDrivenInteractiveTransition *)&v3 finishInteractiveTransition];
  [(SFInteractiveDismissController *)self _animateDismissalCompleteTransition];
  self->_dismissMode = 0;
}

- (void)swiped:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if (v5 > 3)
  {
    if ((v5 - 4) >= 2)
    {
      goto LABEL_14;
    }

    self->_interactionState = 0;
    goto LABEL_9;
  }

  switch(v5)
  {
    case 1:
      self->_interactionState = 1;
      self->_dismissMode = 1;
      WeakRetained = objc_loadWeakRetained(&self->_viewControllerToBeDismissed);
      [WeakRetained dismissViewControllerAnimated:1 completion:0];
      v11 = [WeakRetained view];
      [v11 bounds];
      self->_totalDistance = CGRectGetWidth(v14);

      [(SFInteractiveDismissController *)self _updateStatistics:v4 firstSample:1 finalSample:0];
      v12 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [v12 interactiveDismissControllerDidBegin:self];
      }

      break;
    case 2:
      self->_interactionState = 2;
      [(SFInteractiveDismissController *)self _percentComplete:v4];
      [(UIPercentDrivenInteractiveTransition *)self updateInteractiveTransition:?];
      [(SFInteractiveDismissController *)self _updateStatistics:v4 firstSample:0 finalSample:0];
      break;
    case 3:
      [(SFInteractiveDismissController *)self _updateStatistics:v4 firstSample:0 finalSample:1];
      [(UIPercentDrivenInteractiveTransition *)self duration];
      v7 = v6;
      [(UIPercentDrivenInteractiveTransition *)self percentComplete];
      v13 = 0;
      v9 = [(SFInteractiveDismissController *)self popGesture:v4 withRemainingDuration:&v13 shouldPopWithVelocity:v7 * (1.0 - v8)];
      self->_interactionState = 3;
      if (v9)
      {
        [(SFInteractiveDismissController *)self finishInteractiveTransition];
        break;
      }

LABEL_9:
      [(SFInteractiveDismissController *)self cancelInteractiveTransition];
      break;
  }

LABEL_14:
}

- (double)_percentComplete:(id)a3
{
  edgeSwipeGestureRecognizer = self->_edgeSwipeGestureRecognizer;
  v5 = a3;
  v6 = [v5 view];
  [(UIScreenEdgePanGestureRecognizer *)edgeSwipeGestureRecognizer translationInView:v6];
  v8 = v7;

  [(SFInteractiveDismissController *)self _translationCoefficient];
  v10 = v8 * v9;
  v11 = [v5 view];

  v12 = [v11 window];
  [v12 bounds];
  v13 = v10 / CGRectGetWidth(v16);
  if (v13 < 0.0001)
  {
    v13 = 0.0001;
  }

  v14 = fmin(v13, 0.9999);

  return v14;
}

- (void)_animateDismissalCancelTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);
  v4 = [WeakRetained viewForKey:*MEMORY[0x1E69DE770]];
  v5 = [WeakRetained viewForKey:*MEMORY[0x1E69DE780]];
  v6 = [WeakRetained containerView];
  [(UIPercentDrivenInteractiveTransition *)self percentComplete];
  v8 = v7;
  [v4 bounds];
  v9 = v8 * CGRectGetWidth(v55);
  [(SFInteractiveDismissController *)self _translationCoefficient];
  v11 = v9 * v10;
  [(UIPercentDrivenInteractiveTransition *)self percentComplete];
  v13 = 1.0 - v12;
  [v4 bounds];
  v14 = CGRectGetWidth(v56) * v13 * -0.25;
  [(SFInteractiveDismissController *)self _translationCoefficient];
  v16 = v15 * v14;
  [v5 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v4 layer];
  [v23 removeAnimationForKey:@"position"];

  v24 = [v5 layer];
  [v24 removeAnimationForKey:@"position"];

  v25 = [v6 layer];
  [v25 setBeginTime:0.0];
  [v25 setTimeOffset:0.0];
  LODWORD(v26) = 1.0;
  [v25 setSpeed:v26];
  v27 = MEMORY[0x1E69DD250];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __67__SFInteractiveDismissController__animateDismissalCancelTransition__block_invoke;
  v47[3] = &unk_1E8495A50;
  v28 = v4;
  v48 = v28;
  v50 = v11;
  v29 = v5;
  v49 = v29;
  v51 = v16;
  v52 = v18;
  v53 = v20;
  v54 = v22;
  [v27 performWithoutAnimation:v47];
  [v29 bounds];
  v30 = CGRectGetWidth(v57) * -0.25;
  [(SFInteractiveDismissController *)self _translationCoefficient];
  v32 = v30 * v31;
  [(UIScreenEdgePanGestureRecognizer *)self->_edgeSwipeGestureRecognizer velocityInView:v28];
  v34 = fabs(v33 / v11);
  v35 = MEMORY[0x1E69DD250];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __67__SFInteractiveDismissController__animateDismissalCancelTransition__block_invoke_2;
  v40[3] = &unk_1E8495A78;
  v41 = v28;
  v42 = v29;
  v43 = v32;
  v44 = v18;
  v45 = v20;
  v46 = v22;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __67__SFInteractiveDismissController__animateDismissalCancelTransition__block_invoke_3;
  v38[3] = &unk_1E848FCC0;
  v38[4] = self;
  v39 = v42;
  v36 = v42;
  v37 = v28;
  [v35 _animateUsingSpringWithDuration:4 delay:v40 options:v38 mass:0.5 stiffness:0.0 damping:3.0 initialVelocity:1000.0 animations:500.0 completion:v34];
}

uint64_t __67__SFInteractiveDismissController__animateDismissalCancelTransition__block_invoke(uint64_t a1)
{
  CGAffineTransformMakeTranslation(&v5, *(a1 + 48), 0.0);
  v2 = *(a1 + 32);
  v4 = v5;
  [v2 setTransform:&v4];
  return [*(a1 + 40) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
}

uint64_t __67__SFInteractiveDismissController__animateDismissalCancelTransition__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  return [*(a1 + 40) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

void __67__SFInteractiveDismissController__animateDismissalCancelTransition__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 184) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 184);
  *(v2 + 184) = 0;

  [*(a1 + 40) removeFromSuperview];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 216));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained interactiveDismissControllerDidCancel:*(a1 + 32)];
  }
}

- (void)_animateDismissalCompleteTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);
  v4 = [WeakRetained viewForKey:*MEMORY[0x1E69DE770]];
  v5 = [WeakRetained viewForKey:*MEMORY[0x1E69DE780]];
  [v4 frame];
  v7 = v6;
  v51 = v8;
  v52 = v6;
  v9 = v8;
  v53 = v10;
  v11 = [WeakRetained containerView];
  [(UIPercentDrivenInteractiveTransition *)self percentComplete];
  v13 = v12;
  [v4 bounds];
  v14 = v13 * CGRectGetWidth(v79);
  [(SFInteractiveDismissController *)self _translationCoefficient];
  v16 = v14 * v15;
  [(UIPercentDrivenInteractiveTransition *)self percentComplete];
  v18 = 1.0 - v17;
  [v4 bounds];
  v19 = CGRectGetWidth(v80) * v18 * -0.25;
  [(SFInteractiveDismissController *)self _translationCoefficient];
  v21 = v20 * v19;
  [v5 frame];
  v23 = v22;
  v25 = v24;
  v50 = v24;
  v27 = v26;
  v28 = [v4 layer];
  [v28 removeAnimationForKey:@"position"];

  v29 = [v5 layer];
  [v29 removeAnimationForKey:@"position"];

  v30 = [v11 layer];
  [v30 setBeginTime:0.0];
  [v30 setTimeOffset:0.0];
  LODWORD(v31) = 1.0;
  [v30 setSpeed:v31];
  v32 = MEMORY[0x1E69DD250];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __69__SFInteractiveDismissController__animateDismissalCompleteTransition__block_invoke;
  v68[3] = &unk_1E8495AA0;
  v33 = v4;
  v69 = v33;
  v71 = v16;
  v72 = v7;
  v73 = v9;
  v74 = v53;
  v34 = v5;
  v70 = v34;
  v75 = v21;
  v76 = v23;
  v77 = v25;
  v78 = v27;
  v35 = v27;
  [v32 performWithoutAnimation:v68];
  [v33 frame];
  v37 = v36;
  [(SFInteractiveDismissController *)self _translationCoefficient];
  v39 = v38;
  [(UIScreenEdgePanGestureRecognizer *)self->_edgeSwipeGestureRecognizer velocityInView:v33];
  v41 = fabs(v40);
  if (v41 <= 3000.0)
  {
    v42 = v41;
  }

  else
  {
    v42 = 3000.0;
  }

  v43 = v39 * v37;
  [v33 bounds];
  v44 = v42 / (CGRectGetWidth(v81) - fabs(v16));
  v45 = objc_loadWeakRetained(&self->_delegate);
  v46 = MEMORY[0x1E69DD250];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __69__SFInteractiveDismissController__animateDismissalCompleteTransition__block_invoke_2;
  v57[3] = &unk_1E8495AA0;
  v60 = v43;
  v61 = v52;
  v62 = v51;
  v63 = v53;
  v58 = v33;
  v59 = v34;
  v64 = 0;
  v65 = v23;
  v66 = v50;
  v67 = v35;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __69__SFInteractiveDismissController__animateDismissalCompleteTransition__block_invoke_3;
  v54[3] = &unk_1E8491FC8;
  v54[4] = self;
  v55 = v58;
  v56 = v45;
  v47 = v45;
  v48 = v58;
  v49 = v34;
  [v46 _animateUsingSpringWithDuration:4 delay:v57 options:v54 mass:0.5 stiffness:0.0 damping:3.0 initialVelocity:1000.0 animations:500.0 completion:v44];
}

uint64_t __69__SFInteractiveDismissController__animateDismissalCompleteTransition__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 40);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

uint64_t __69__SFInteractiveDismissController__animateDismissalCompleteTransition__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 40);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

uint64_t __69__SFInteractiveDismissController__animateDismissalCompleteTransition__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 184) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 184);
  *(v2 + 184) = 0;

  [*(a1 + 40) removeFromSuperview];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);

    return [v5 interactiveDismissControllerDidEnd:v6];
  }

  return result;
}

- (double)_translationCoefficient
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerToBeDismissed);
  v3 = [WeakRetained view];
  if ([v3 _sf_usesLeftToRightLayout])
  {
    v4 = 1.0;
  }

  else
  {
    v4 = -1.0;
  }

  return v4;
}

- (CGPoint)translationForStatistics
{
  edgeSwipeGestureRecognizer = self->_edgeSwipeGestureRecognizer;
  v3 = [(UIScreenEdgePanGestureRecognizer *)edgeSwipeGestureRecognizer view];
  [(UIScreenEdgePanGestureRecognizer *)edgeSwipeGestureRecognizer translationInView:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)velocityForStatistics
{
  edgeSwipeGestureRecognizer = self->_edgeSwipeGestureRecognizer;
  v3 = [(UIScreenEdgePanGestureRecognizer *)edgeSwipeGestureRecognizer view];
  [(UIScreenEdgePanGestureRecognizer *)edgeSwipeGestureRecognizer velocityInView:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)_updateStatistics:(id)a3 firstSample:(BOOL)a4 finalSample:(BOOL)a5
{
  v5 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  [(SFInteractiveDismissController *)self _translationCoefficient];
  v9 = v8;
  [(SFInteractiveDismissController *)self translationForStatistics];
  v11 = v9 * v10;
  [(SFInteractiveDismissController *)self velocityForStatistics];
  v13 = v9 * v12;
  totalDistance = self->_totalDistance;
  v15 = v11 / totalDistance;
  if (v11 < 0.0)
  {
    v15 = 0.0;
  }

  v16 = v13 / totalDistance;
  if (v5)
  {
    self->_previousTimeStamp = Current;
    self->_skipTimeStamp = Current;
    self->_previousDisplacement = v15;
    self->_previousVelocity = v16;
    self->_previousAcceleration = 0.0;
    self->_averageVelocity = v16;
    self->_averageAcceleration = 0.0;
    self->_timestamps[0] = 0.0;
    self->_velocities[0] = v16;
    self->_accelerations[0] = 0.0;
    self->_sampleCount = 1;
  }

  else
  {
    previousTimeStamp = self->_previousTimeStamp;
    v18 = Current - self->_skipTimeStamp;
    self->_skipTimeStamp = Current;
    if (v18 >= 0.01 || v18 > 0.001 && self->_previousDisplacement != v15)
    {
      v19 = Current - previousTimeStamp;
      sampleCount = self->_sampleCount;
      v21 = sampleCount % 3;
      v22 = sampleCount;
      if (sampleCount > 2)
      {
        self->_averageVelocity = (v16 - (self->_velocities[v21] - self->_averageVelocity * 3.0)) / 3.0;
      }

      else
      {
        self->_averageVelocity = (v16 + v22 * self->_averageVelocity) / (sampleCount + 1);
      }

      self->_velocities[v21] = v16;
      self->_timestamps[v21] = v19;
      v23 = (v16 - self->_previousVelocity) / v19;
      previousAcceleration = self->_previousAcceleration;
      v25 = vabdd_f64(v23, previousAcceleration);
      v26 = -5.0;
      if (v23 - previousAcceleration > 0.0)
      {
        v26 = 5.0;
      }

      v27 = previousAcceleration + v26;
      if (v25 > 5.0)
      {
        v23 = v27;
      }

      if (sampleCount > 2)
      {
        self->_averageAcceleration = (v23 - (self->_accelerations[v21] - self->_averageAcceleration * 3.0)) / 3.0;
        v28 = sampleCount + 1;
      }

      else
      {
        v28 = sampleCount + 1;
        self->_averageAcceleration = (v23 + v22 * self->_averageAcceleration) / v28;
      }

      self->_accelerations[v21] = v23;
      self->_previousAcceleration = v23;
      self->_previousVelocity = v16;
      self->_previousDisplacement = v15;
      self->_previousTimeStamp = Current;
      self->_sampleCount = v28;
    }
  }
}

- (BOOL)popGesture:(id)a3 withRemainingDuration:(double)a4 shouldPopWithVelocity:(double *)a5
{
  v8 = a3;
  v9 = v8;
  if (self->_sampleCount >= 3 && self->_interactionState == 2)
  {
    [(UIPercentDrivenInteractiveTransition *)self percentComplete];
    v11 = v10 + self->_averageVelocity * a4 + self->_averageAcceleration * 0.5 * a4 * a4;
    if (v10 >= 0.5)
    {
      v12 = v11 >= 0.3;
    }

    else
    {
      v12 = v11 > 1.0;
    }

    v13 = self->_previousVelocity * self->_totalDistance;
  }

  else
  {
    v14 = [v8 view];
    [v9 velocityInView:v14];
    v13 = v15;

    v12 = self->_averageVelocity > 0.0 && self->_interactionState != 1;
  }

  *a5 = v13;

  return v12;
}

- (void)setEdgeSwipeView:(id)a3
{
  v4 = a3;
  edgeSwipeView = self->_edgeSwipeView;
  if (edgeSwipeView)
  {
    [(UIView *)edgeSwipeView removeGestureRecognizer:self->_edgeSwipeGestureRecognizer];
  }

  v6 = self->_edgeSwipeView;
  self->_edgeSwipeView = v4;
  v8 = v4;

  if ([(UIView *)self->_edgeSwipeView _sf_usesLeftToRightLayout])
  {
    v7 = 2;
  }

  else
  {
    v7 = 8;
  }

  [(UIScreenEdgePanGestureRecognizer *)self->_edgeSwipeGestureRecognizer setEdges:v7];
  [(UIView *)self->_edgeSwipeView addGestureRecognizer:self->_edgeSwipeGestureRecognizer];
}

- (void)animateTransition:(id)a3
{
  v4 = *MEMORY[0x1E69DE778];
  v7 = a3;
  v5 = [v7 viewControllerForKey:v4];
  v6 = [v5 isBeingPresented];

  if (v6)
  {
    [(SFInteractiveDismissController *)self _presentAnimateTransition:v7];
  }

  else
  {
    [(SFInteractiveDismissController *)self _dismissAnimateTransition:v7];
  }
}

- (void)_dismissAnimateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewForKey:*MEMORY[0x1E69DE770]];
  v6 = [v4 viewForKey:*MEMORY[0x1E69DE780]];
  [v5 frame];
  v34 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(SFInteractiveDismissController *)self transitionDuration:v4];
  v32 = v14;
  if (!self->_dimmingView)
  {
    v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
    dimmingView = self->_dimmingView;
    self->_dimmingView = v15;
  }

  v17 = [v4 containerView];
  [v17 insertSubview:v6 belowSubview:v5];
  [v17 bounds];
  [(UIView *)self->_dimmingView setFrame:?];
  v18 = [MEMORY[0x1E69DC888] blackColor];
  [(UIView *)self->_dimmingView setBackgroundColor:v18];

  [(UIView *)self->_dimmingView setAlpha:0.25];
  [(UIView *)self->_dimmingView removeFromSuperview];
  [v17 insertSubview:self->_dimmingView belowSubview:v5];
  [v17 bounds];
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  v22 = CGRectGetWidth(v52) * -0.25;
  [(SFInteractiveDismissController *)self _translationCoefficient];
  v24 = v22 * v23;
  [v6 setFrame:{v24, y, width, height}];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__SFInteractiveDismissController__dismissAnimateTransition___block_invoke;
  aBlock[3] = &unk_1E8495AC8;
  v44 = v34;
  v45 = v9;
  v46 = v11;
  v47 = v13;
  aBlock[4] = self;
  v25 = v5;
  v42 = v25;
  v48 = v24;
  v49 = y;
  v50 = width;
  v51 = height;
  v26 = v6;
  v43 = v26;
  v27 = _Block_copy(aBlock);
  v28 = [v4 isInteractive];
  v29 = MEMORY[0x1E69DD250];
  if (v28)
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __60__SFInteractiveDismissController__dismissAnimateTransition___block_invoke_2;
    v38[3] = &unk_1E848FCC0;
    v30 = &v39;
    v39 = v4;
    v40 = v25;
    [v29 animateWithDuration:196608 delay:v27 options:v38 animations:v33 completion:0.0];
    v31 = v40;
  }

  else
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __60__SFInteractiveDismissController__dismissAnimateTransition___block_invoke_3;
    v35[3] = &unk_1E8491FC8;
    v30 = v36;
    v36[0] = v4;
    v36[1] = self;
    v37 = v25;
    [v29 _animateUsingSpringWithDuration:4 delay:v27 options:v35 mass:0.5 stiffness:0.0 damping:3.0 initialVelocity:1000.0 animations:500.0 completion:0.0];
    v31 = v37;
  }
}

uint64_t __60__SFInteractiveDismissController__dismissAnimateTransition___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  [*(*(a1 + 32) + 184) setAlpha:0.0];
  v6 = *(a1 + 72);
  [*(a1 + 32) _translationCoefficient];
  [*(a1 + 40) setFrame:{v3 + v6 * v7, v2, v4, v5}];
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a1 + 112);
  v11 = *(a1 + 48);

  return [v11 setFrame:{0.0, v8, v9, v10}];
}

uint64_t __60__SFInteractiveDismissController__dismissAnimateTransition___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) transitionWasCancelled] & 1) == 0)
  {
    [*(a1 + 40) removeFromSuperview];
  }

  v2 = *(a1 + 32);
  v3 = [v2 transitionWasCancelled] ^ 1;

  return [v2 completeTransition:v3];
}

void __60__SFInteractiveDismissController__dismissAnimateTransition___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  [*(*(a1 + 40) + 184) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(v2 + 184);
  *(v2 + 184) = 0;
}

- (void)_presentAnimateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewForKey:*MEMORY[0x1E69DE780]];
  v7 = [v4 viewForKey:*MEMORY[0x1E69DE770]];
  [v5 addSubview:v6];
  [v5 bounds];
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  MaxX = CGRectGetMaxX(v49);
  [(SFInteractiveDismissController *)self _translationCoefficient];
  v28 = MaxX * v12;
  [v6 setFrame:?];
  if (!self->_dimmingView)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
    dimmingView = self->_dimmingView;
    self->_dimmingView = v13;
  }

  [v5 bounds];
  [(UIView *)self->_dimmingView setFrame:?];
  v15 = [MEMORY[0x1E69DC888] blackColor];
  [(UIView *)self->_dimmingView setBackgroundColor:v15];

  [(UIView *)self->_dimmingView setAlpha:0.0];
  [(UIView *)self->_dimmingView removeFromSuperview];
  [v5 insertSubview:self->_dimmingView belowSubview:v6];
  [v7 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = MEMORY[0x1E69DD250];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __60__SFInteractiveDismissController__presentAnimateTransition___block_invoke;
  v37[3] = &unk_1E8495AC8;
  v41 = v28;
  v42 = y;
  v43 = width;
  v44 = height;
  v38 = v6;
  v39 = self;
  v45 = v16;
  v46 = v20;
  v47 = v22;
  v48 = v18;
  v40 = v7;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __60__SFInteractiveDismissController__presentAnimateTransition___block_invoke_2;
  v29[3] = &unk_1E8495AF0;
  v30 = v4;
  v31 = self;
  v32 = v40;
  v33 = v17;
  v34 = v21;
  v35 = v23;
  v36 = v19;
  v25 = v40;
  v26 = v4;
  v27 = v6;
  [v24 _animateUsingSpringWithDuration:4 delay:v37 options:v29 mass:0.5 stiffness:0.0 damping:3.0 initialVelocity:1000.0 animations:500.0 completion:0.0];
}

uint64_t __60__SFInteractiveDismissController__presentAnimateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{0.0, *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(*(a1 + 40) + 184) setAlpha:0.25];
  v11.origin.x = *(a1 + 88);
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v11.origin.y = v2;
  v11.size.width = v3;
  v11.size.height = v4;
  v5 = CGRectGetWidth(v11) * -0.25;
  [*(a1 + 40) _translationCoefficient];
  v7 = v5 * v6;
  v8 = *(a1 + 48);

  return [v8 setFrame:{v7, v2, v3, v4}];
}

void __60__SFInteractiveDismissController__presentAnimateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  [*(*(a1 + 40) + 184) removeFromSuperview];
  [*(a1 + 48) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 40);
  v3 = *(v2 + 184);
  *(v2 + 184) = 0;
}

- (id)interactionControllerForDismissal:(id)a3
{
  if (!self->_dismissMode)
  {
    self = 0;
  }

  return self;
}

- (UIViewController)viewControllerToBeDismissed
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerToBeDismissed);

  return WeakRetained;
}

- (SFInteractiveDismissControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end