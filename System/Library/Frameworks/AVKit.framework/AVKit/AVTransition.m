@interface AVTransition
- (AVTransition)initWithTransitionContext:(id)a3;
- (AVTransitionDelegate)delegate;
- (CGAffineTransform)_transformForScale:(SEL)a3 translation:(double)a4 rotation:(CGPoint)a5 locationInWindow:(double)a6 sourceRectInContainerView:(CGPoint)a7;
- (CGRect)_finalFrameForPresentedView;
- (CGRect)_initialFrameForPresentedView;
- (CGRect)_sourceViewFrameInContainerView;
- (UIViewControllerContextTransitioningEx)transitionContext;
- (double)duration;
- (double)transitionAnimatorProgress;
- (void)_animateAlongsideInteractiveDismissalTransitionAnimationForCancelling;
- (void)_animateAlongsideInteractivePresentationTransitionAnimationForCancelling;
- (void)_animateFinishInteractiveTransition;
- (void)_dismissalTransitionDidEnd:(BOOL)a3;
- (void)_dismissalTransitionWillBegin;
- (void)_freezeDismissingViewForFinishing;
- (void)_presentationTransitionDidEnd:(BOOL)a3;
- (void)_presentationTransitionWillBegin;
- (void)_startOrContinueAnimatorsReversed:(BOOL)a3;
- (void)_updateCornerAppearanceAttributesOfView:(id)a3 toSourceView:(id)a4 similarity:(double)a5;
- (void)addRunAlongsideAnimationsIfNeeded;
- (void)cancelInteractiveTransition;
- (void)completeTransition:(BOOL)a3;
- (void)dealloc;
- (void)finishInteractiveTransition;
- (void)pauseInteractiveTransition;
- (void)startInteractiveTransition;
- (void)updateWithPercentComplete:(double)a3 scale:(double)a4 translation:(CGPoint)a5 rotation:(double)a6;
@end

@implementation AVTransition

- (UIViewControllerContextTransitioningEx)transitionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);

  return WeakRetained;
}

- (AVTransitionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)_sourceViewFrameInContainerView
{
  v3 = [(AVTransition *)self transitionContext];
  v4 = [v3 containerView];
  [v4 bounds];
  MidX = CGRectGetMidX(v57);
  v5 = [(AVTransition *)self transitionContext];
  v6 = [v5 containerView];
  [v6 bounds];
  Height = CGRectGetHeight(v58);
  v7 = [(AVTransition *)self transitionContext];
  v8 = [v7 containerView];
  [v8 bounds];
  MinY = CGRectGetMinY(v59);
  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);

  v11 = [(AVTransition *)self presentationContext];
  v12 = [v11 sourceView];
  v54 = v10;
  v52 = v9;
  if (!v12)
  {

    goto LABEL_5;
  }

  v13 = v12;
  v14 = [(AVTransition *)self presentationContext];
  v15 = [v14 sourceView];
  v16 = [v15 _isInAWindow];

  if (!v16)
  {
LABEL_5:
    v17 = [(AVTransition *)self transitionContext];
    v18 = [v17 containerView];
    [v18 bounds];
    v32 = CGRectGetMidX(v60);
    v19 = [(AVTransition *)self transitionContext];
    v20 = [v19 containerView];
    [v20 bounds];
    v37 = CGRectGetHeight(v61);
    v29 = [(AVTransition *)self transitionContext];
    v30 = [v29 containerView];
    [v30 bounds];
    v34 = CGRectGetMinY(v62) + v37 * 0.75;
    goto LABEL_6;
  }

  v17 = [(AVTransition *)self transitionContext];
  v18 = [v17 containerView];
  v19 = [(AVTransition *)self presentationContext];
  v20 = [v19 sourceView];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(AVTransition *)self presentationContext];
  v30 = [v29 sourceView];
  [v18 convertRect:v30 fromView:{v22, v24, v26, v28}];
  v32 = v31;
  v34 = v33;
  v9 = v35;
  v10 = v36;
LABEL_6:

  v38 = [(AVTransition *)self transitionContext];
  v39 = [v38 containerView];
  [v39 bounds];
  v68.origin.x = v40;
  v68.origin.y = v41;
  v68.size.width = v42;
  v68.size.height = v43;
  v63.origin.x = v32;
  v63.origin.y = v34;
  v63.size.width = v9;
  v63.size.height = v10;
  v64 = CGRectIntersection(v63, v68);
  x = v64.origin.x;
  y = v64.origin.y;
  width = v64.size.width;
  v47 = v64.size.height;

  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = v47;
  if (CGRectIsEmpty(v65) || (v66.origin.x = v32, v66.origin.y = v34, v66.size.width = v9, v66.size.height = v10, CGRectIsInfinite(v66)))
  {
    v32 = MidX;
    v9 = v52;
    v34 = MinY + Height * 0.75;
    v10 = v54;
  }

  v48 = v32;
  v49 = v34;
  v50 = v9;
  v51 = v10;
  result.size.height = v51;
  result.size.width = v50;
  result.origin.y = v49;
  result.origin.x = v48;
  return result;
}

- (void)_updateCornerAppearanceAttributesOfView:(id)a3 toSourceView:(id)a4 similarity:(double)a5
{
  v7 = a4;
  v8 = a3;
  v13 = [v8 layer];
  v9 = [v7 layer];

  v10 = fmin(fmax(a5, 0.0), 1.0);
  [v8 setClipsToBounds:1];

  if (v10 <= 0.0)
  {
    [v13 setCornerCurve:*MEMORY[0x1E69796E0]];
  }

  else
  {
    v11 = [v9 cornerCurve];
    [v13 setCornerCurve:v11];
  }

  [v9 cornerRadius];
  [v13 setCornerRadius:v10 * v12];
  [v13 setMaskedCorners:{objc_msgSend(v9, "maskedCorners")}];
}

- (CGAffineTransform)_transformForScale:(SEL)a3 translation:(double)a4 rotation:(CGPoint)a5 locationInWindow:(double)a6 sourceRectInContainerView:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v10 = a5.y;
  v11 = a5.x;
  memset(&v48, 0, sizeof(v48));
  CGAffineTransformMakeScale(&v48, a4, a4);
  v14 = [(AVTransition *)self transitionContext];
  v15 = [v14 containerView];
  v16 = [(AVTransition *)self transitionContext];
  v17 = [v16 containerView];
  v18 = [v17 window];
  [v15 convertPoint:v18 fromView:{x - v11, y - v10}];
  v20 = v19;
  v43 = v21;
  v44 = v19;
  v22 = v21;

  v23 = v20 - CGRectGetMinX(a8);
  v24 = v22 - CGRectGetMinY(a8);
  v41 = v23 / CGRectGetWidth(a8);
  Height = CGRectGetHeight(a8);
  v47 = v48;
  v39 = v24 / Height;
  v49 = CGRectApplyAffineTransform(a8, &v47);
  v26 = v49.origin.x;
  v27 = v49.origin.y;
  width = v49.size.width;
  v29 = v49.size.height;
  v30 = CGRectGetWidth(v49);
  v50.origin.x = v26;
  v50.origin.y = v27;
  v50.size.width = width;
  v50.size.height = v29;
  v42 = CGRectGetMinX(v50) + v30 * v41;
  v51.origin.x = v26;
  v51.origin.y = v27;
  v51.size.width = width;
  v51.size.height = v29;
  v31 = CGRectGetHeight(v51);
  v52.origin.x = v26;
  v52.origin.y = v27;
  v52.size.width = width;
  v52.size.height = v29;
  v40 = CGRectGetMinY(v52) + v31 * v39;
  UIRectGetCenter();
  v38 = v32;
  UIRectGetCenter();
  v48.tx = v38 - v33;
  UIRectGetCenter();
  v35 = v34;
  UIRectGetCenter();
  v48.tx = v44 - v42 + a5.x + v48.tx;
  v48.ty = v43 - v40 + a5.y + v35 - v36;
  v47 = v48;
  return CGAffineTransformRotate(retstr, &v47, a6);
}

- (CGRect)_finalFrameForPresentedView
{
  v3 = [(AVTransition *)self presentationContext];
  v4 = [v3 presentedViewController];
  if ([v4 isBeingPresented])
  {
    v5 = [(AVTransition *)self transitionContext];
    v6 = [(AVTransition *)self presentationContext];
    v7 = [v6 presentedViewController];
    [v5 finalFrameForViewController:v7];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    [(AVTransition *)self _sourceViewFrameInContainerView];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
  }

  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_initialFrameForPresentedView
{
  v3 = [(AVTransition *)self presentationContext];
  v4 = [v3 presentedViewController];
  if ([v4 isBeingPresented])
  {
    [(AVTransition *)self _sourceViewFrameInContainerView];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = [(AVTransition *)self presentationContext];
    v14 = [v13 presentedView];
    [v14 frame];
    v6 = v15;
    v8 = v16;
    v10 = v17;
    v12 = v18;
  }

  v19 = v6;
  v20 = v8;
  v21 = v10;
  v22 = v12;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)_startOrContinueAnimatorsReversed:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(AVTransition *)self allAnimators];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    if (v3)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 0.6;
    }

    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 state];
        if (v11 == 2)
        {
          goto LABEL_11;
        }

        if (v11 != 1)
        {
          if (v11)
          {
            continue;
          }

LABEL_11:
          [v10 startAnimation];
          continue;
        }

        if ([v10 isRunning])
        {
          [v10 pauseAnimation];
        }

        [v10 setReversed:v3];
        v12 = [v10 timingParameters];
        [v10 continueAnimationWithTimingParameters:v12 durationFactor:v8];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_dismissalTransitionDidEnd:(BOOL)a3
{
  if (!a3)
  {
    v4 = [(AVTransition *)self presentationContext];
    v5 = [v4 backgroundView];
    [v5 setAlpha:1.0];

    v6 = [(AVTransition *)self presentationContext];
    v7 = [v6 touchBlockingView];
    [v7 setAlpha:1.0];

    v8 = [(AVTransition *)self presentationContext];
    v9 = [v8 backgroundView];
    v10 = [(AVTransition *)self delegate];
    v11 = [v10 transitionBackgroundViewBackgroundColor:self];
    [v9 setBackgroundColor:v11];

    v12 = [(AVTransition *)self presentationContext];
    v13 = [v12 presentedView];
    v14 = [(AVTransition *)self delegate];
    v15 = [v14 transitionPresentedViewBackgroundColor:self];
    [v13 setBackgroundColor:v15];
  }

  v17 = [(AVTransition *)self presentationContext];
  v16 = [v17 presentedView];
  [v16 setAlpha:1.0];
}

- (void)_presentationTransitionDidEnd:(BOOL)a3
{
  if (a3)
  {
    v4 = [(AVTransition *)self presentationContext];
    v5 = [v4 backgroundView];
    v6 = [(AVTransition *)self delegate];
    v7 = [v6 transitionBackgroundViewBackgroundColor:self];
    [v5 setBackgroundColor:v7];

    v8 = [(AVTransition *)self presentationContext];
    v9 = [v8 presentedView];
    v10 = [(AVTransition *)self delegate];
    v11 = [v10 transitionPresentedViewBackgroundColor:self];
    [v9 setBackgroundColor:v11];

    v12 = [(AVTransition *)self presentationContext];
    v13 = [v12 backgroundView];
    [v13 setAlpha:1.0];

    v14 = [(AVTransition *)self presentationContext];
    v15 = [v14 touchBlockingView];
    [v15 setAlpha:1.0];
  }

  v17 = [(AVTransition *)self presentationContext];
  v16 = [v17 presentedView];
  [v16 setAlpha:1.0];
}

- (void)completeTransition:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    *buf = 136315650;
    v11 = "[AVTransition completeTransition:]";
    v13 = "didComplete";
    v12 = 2080;
    if (v3)
    {
      v6 = "YES";
    }

    v14 = 2080;
    v15 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }

  v7 = [(AVTransition *)self delegate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__AVTransition_completeTransition___block_invoke;
  v8[3] = &unk_1E7208F28;
  v8[4] = self;
  v9 = v3;
  [v7 transitionWillComplete:self success:v3 continueBlock:v8];
}

void __35__AVTransition_completeTransition___block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 cancelInteractiveTransition];
  }

  else
  {
    if (*(a1 + 40))
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.0;
    }

    v5 = [*(a1 + 32) transitionContext];
    [v5 updateInteractiveTransition:v4];

    v6 = [*(a1 + 32) presentationContext];
    v7 = [v6 transitionType];

    if (v7)
    {
      if (v7 == 1)
      {
        [*(a1 + 32) _presentationTransitionDidEnd:*(a1 + 40)];
      }

      else if (v7 == 2)
      {
        [*(a1 + 32) _dismissalTransitionDidEnd:*(a1 + 40)];
      }
    }

    else
    {
      v8 = _AVLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v11) = 0;
        _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Unexpected", &v11, 2u);
      }
    }

    v9 = _AVLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[AVTransition completeTransition:]_block_invoke";
      v13 = 1024;
      v14 = 507;
      _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s %d", &v11, 0x12u);
    }

    v10 = [*(a1 + 32) transitionContext];
    [v10 completeTransition:*(a1 + 40)];
  }
}

- (void)addRunAlongsideAnimationsIfNeeded
{
  v3 = [(AVTransition *)self clientAnimator];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__AVTransition_addRunAlongsideAnimationsIfNeeded__block_invoke;
  v4[3] = &unk_1E720A090;
  v4[4] = self;
  [v3 addAnimations:v4];
}

void __49__AVTransition_addRunAlongsideAnimationsIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionContext];
  v3 = [v2 _alongsideAnimationsCount];

  if (v3 >= 1)
  {
    v4 = [*(a1 + 32) transitionContext];
    [v4 __runAlongsideAnimations];
  }
}

- (void)_animateAlongsideInteractiveDismissalTransitionAnimationForCancelling
{
  v3 = [(AVTransition *)self presentationContext];
  v4 = [v3 presentedView];
  v5 = [(AVTransition *)self presentationContext];
  v6 = [v5 sourceView];
  [(AVTransition *)self _updateCornerAppearanceAttributesOfView:v4 toSourceView:v6 similarity:0.0];

  v7 = [(AVTransition *)self presentationContext];
  v8 = [v7 presentedView];
  v9 = *&self->_destinationViewTransform.c;
  v12[0] = *&self->_destinationViewTransform.a;
  v12[1] = v9;
  v12[2] = *&self->_destinationViewTransform.tx;
  [v8 setTransform:v12];

  v10 = [(AVTransition *)self presentationContext];
  v11 = [v10 backgroundView];
  [v11 setAlpha:1.0];
}

- (void)_animateAlongsideInteractivePresentationTransitionAnimationForCancelling
{
  v3 = [(AVTransition *)self presentationContext];
  v4 = [v3 presentedView];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v14[0] = *MEMORY[0x1E695EFD0];
  v14[1] = v5;
  v14[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v4 setTransform:v14];

  v6 = [(AVTransition *)self presentationContext];
  v7 = [v6 presentedView];
  [(AVTransition *)self _sourceViewFrameInContainerView];
  [v7 setFrame:?];

  v8 = [(AVTransition *)self presentationContext];
  v9 = [v8 presentedView];
  v10 = [(AVTransition *)self presentationContext];
  v11 = [v10 sourceView];
  [(AVTransition *)self _updateCornerAppearanceAttributesOfView:v9 toSourceView:v11 similarity:1.0];

  v12 = [(AVTransition *)self presentationContext];
  v13 = [v12 backgroundView];
  [v13 setAlpha:0.0];
}

- (void)cancelInteractiveTransition
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[AVTransition cancelInteractiveTransition]";
    v11 = 1024;
    v12 = 426;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v4 = [(AVTransition *)self transitionContext];
  [v4 cancelInteractiveTransition];

  v5 = [(AVTransition *)self transitionAnimator];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__AVTransition_cancelInteractiveTransition__block_invoke;
  v8[3] = &unk_1E720A090;
  v8[4] = self;
  [v5 addAnimations:v8];

  v6 = [(AVTransition *)self transitionAnimator];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AVTransition_cancelInteractiveTransition__block_invoke_9;
  v7[3] = &unk_1E7208F00;
  v7[4] = self;
  [v6 addCompletion:v7];

  [(AVTransition *)self _startOrContinueAnimatorsReversed:1];
}

void __43__AVTransition_cancelInteractiveTransition__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationContext];
  v3 = [v2 transitionType];

  if (v3)
  {
    if (v3 == 2)
    {
      v5 = *(a1 + 32);

      [v5 _animateAlongsideInteractiveDismissalTransitionAnimationForCancelling];
    }

    else if (v3 == 1)
    {
      v4 = *(a1 + 32);

      [v4 _animateAlongsideInteractivePresentationTransitionAnimationForCancelling];
    }
  }

  else
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "Unexpected", v7, 2u);
    }
  }
}

- (void)_freezeDismissingViewForFinishing
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__AVTransition__freezeDismissingViewForFinishing__block_invoke;
  v2[3] = &unk_1E720A090;
  v2[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

void __49__AVTransition__freezeDismissingViewForFinishing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationContext];
  v3 = [v2 presentedView];
  [v3 frame];

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 32) presentationContext];
  v5 = [v4 presentedView];
  v6 = v5;
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  v14 = 0uLL;
  v7 = [*(a1 + 32) presentationContext];
  v8 = [v7 presentedView];
  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  [v8 setTransform:v11];

  v9 = [*(a1 + 32) presentationContext];
  v10 = [v9 presentedView];
  UIRectGetCenter();
  [v10 setCenter:?];
}

- (void)_animateFinishInteractiveTransition
{
  v3 = [(AVTransition *)self presentationContext];
  v4 = [v3 configuration];
  v5 = [v4 transitionStyle];

  v6 = [(AVTransition *)self presentationContext];
  v7 = [v6 transitionType];

  switch(v7)
  {
    case 0:
      v37 = _AVLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.a) = 0;
        _os_log_error_impl(&dword_18B49C000, v37, OS_LOG_TYPE_ERROR, "Unexpected", &buf, 2u);
      }

      goto LABEL_41;
    case 2:
      v26 = [(AVTransition *)self presentationContext];
      v27 = [v26 sourceView];
      if (v27)
      {
        v28 = v27;
        [(AVTransition *)self _sourceViewFrameInContainerView];
        IsEmpty = CGRectIsEmpty(v125);

        if (!IsEmpty)
        {
          [(AVTransition *)self _freezeDismissingViewForFinishing];
          v30 = [(AVTransition *)self presentationContext];
          v31 = [v30 presentedView];
          v32 = *(MEMORY[0x1E695EFD0] + 16);
          *&buf.a = *MEMORY[0x1E695EFD0];
          *&buf.c = v32;
          *&buf.tx = *(MEMORY[0x1E695EFD0] + 32);
          [v31 setTransform:&buf];

          v33 = [(AVTransition *)self presentationContext];
          v34 = [v33 presentedView];
          [(AVTransition *)self _sourceViewFrameInContainerView];
          [v34 setFrame:?];

          v35 = MEMORY[0x1E69DD250];
          v120[0] = MEMORY[0x1E69E9820];
          v120[1] = 3221225472;
          v120[2] = __51__AVTransition__animateFinishInteractiveTransition__block_invoke_4;
          v120[3] = &unk_1E720A090;
          v120[4] = self;
          v36 = v120;
          goto LABEL_44;
        }
      }

      else
      {
      }

      v53 = [(AVTransition *)self presentationContext];
      v54 = [v53 dismissingTransition];
      v55 = [v54 wasInitiallyInteractive];

      if (!v55)
      {
        v67 = [(AVTransition *)self transitionContext];
        v117 = [v67 viewForKey:*MEMORY[0x1E69DE770]];

        v68 = [(AVTransition *)self transitionContext];
        v69 = [v68 viewForKey:*MEMORY[0x1E69DE780]];

        [v117 frame];
        v71 = v70;
        v73 = v72;
        [v69 frame];
        v75 = v74;
        v77 = v76;
        v79 = v78;
        v81 = v80;
        [v69 convertPoint:v117 toView:{v71, v73}];
        v83 = v82;
        v85 = v84;
        v126.origin.x = v75;
        v126.origin.y = v77;
        v126.size.width = v79;
        v126.size.height = v81;
        Height = CGRectGetHeight(v126);
        v87 = Height;
        if (v75 == v83 && v77 == v85)
        {
          v77 = Height;
        }

        else
        {
          v127.origin.x = v75;
          v127.origin.y = v77;
          v127.size.width = v79;
          v127.size.height = v81;
          Width = CGRectGetWidth(v127);
          if (v83 == v87)
          {
            v75 = Width;
          }

          else if (v85 == Width)
          {
            v130.origin.x = v75;
            v130.origin.y = v77;
            v130.size.width = v79;
            v130.size.height = v81;
            v75 = -CGRectGetWidth(v130);
          }

          else
          {
            v131.origin.x = v75;
            v131.origin.y = v77;
            v131.size.width = v79;
            v131.size.height = v81;
            v77 = -CGRectGetHeight(v131);
          }
        }

        v109 = [(AVTransition *)self presentationContext];
        v110 = [v109 presentedView];
        [v110 setFrame:{v75, v77, v79, v81}];

        v111 = [(AVTransition *)self presentationContext];
        v112 = [v111 backgroundView];
        [v112 setAlpha:0.0];

        if (!v5)
        {
          v113 = [(AVTransition *)self presentationContext];
          v114 = [v113 containerView];
          [v114 setAlpha:0.0];
        }

        return;
      }

      v56 = [(AVTransition *)self presentationContext];
      v57 = [v56 presentedView];
      v58 = [(AVTransition *)self presentationContext];
      v59 = [v58 sourceView];
      [(AVTransition *)self _updateCornerAppearanceAttributesOfView:v57 toSourceView:v59 similarity:1.0];

      v60 = [(AVTransition *)self presentationContext];
      v61 = [v60 backgroundView];
      [v61 setAlpha:0.0];

      [(AVTransition *)self _freezeDismissingViewForFinishing];
      v62 = [(AVTransition *)self presentationContext];
      v63 = [v62 presentedView];
      v64 = [(AVTransition *)self presentationContext];
      v65 = [v64 presentedView];
      v66 = v65;
      if (v65)
      {
        [v65 transform];
      }

      else
      {
        memset(&v121, 0, sizeof(v121));
      }

      CGAffineTransformScale(&buf, &v121, 0.001, 0.001);
      [v63 setTransform:&buf];

      v35 = MEMORY[0x1E69DD250];
      v119[0] = MEMORY[0x1E69E9820];
      v119[1] = 3221225472;
      v119[2] = __51__AVTransition__animateFinishInteractiveTransition__block_invoke_7;
      v119[3] = &unk_1E720A090;
      v119[4] = self;
      v36 = v119;
LABEL_44:
      [v35 animateKeyframesWithDuration:0 delay:v36 options:0 animations:0.0 completion:0.0];
      return;
    case 1:
      v8 = [(AVTransition *)self presentationContext];
      v9 = [v8 presentingTransition];
      v10 = [v9 wasInitiallyInteractive];

      v11 = [(AVTransition *)self presentationContext];
      v12 = v11;
      v13 = MEMORY[0x1E695EFD0];
      v118 = v5;
      if (v10)
      {
        v14 = [v11 backgroundView];
        [v14 setAlpha:1.0];

        v15 = [(AVTransition *)self presentationContext];
        v16 = [v15 presentedView];
        v17 = [(AVTransition *)self presentationContext];
        v18 = [v17 sourceView];
        [(AVTransition *)self _updateCornerAppearanceAttributesOfView:v16 toSourceView:v18 similarity:0.0];

        v19 = [(AVTransition *)self presentationContext];
        v20 = [v19 presentedView];
        v21 = [(AVTransition *)self transitionContext];
        v22 = [v21 containerView];
        [v22 bounds];
        [v20 setFrame:?];

        v23 = [(AVTransition *)self presentationContext];
        v24 = [v23 presentedView];
        v25 = v13[1];
        *&buf.a = *v13;
        *&buf.c = v25;
        *&buf.tx = v13[2];
        [v24 setTransform:&buf];
      }

      else
      {
        v38 = [v11 sourceView];

        if (v38)
        {
          v122[0] = MEMORY[0x1E69E9820];
          v122[1] = 3221225472;
          v122[2] = __51__AVTransition__animateFinishInteractiveTransition__block_invoke;
          v122[3] = &unk_1E720A090;
          v122[4] = self;
          [MEMORY[0x1E69DD250] animateKeyframesWithDuration:0 delay:v122 options:0 animations:0.0 completion:0.0];
        }
      }

      v39 = [(AVTransition *)self presentationContext];
      v40 = [v39 presentingTransition];
      v41 = [v40 wasInitiallyInteractive];
      if ((v41 & 1) == 0)
      {
        v42 = [(AVTransition *)self presentationContext];
        v43 = [v42 sourceView];
        if (!v43)
        {

          goto LABEL_29;
        }

        v115 = v43;
        v116 = v42;
      }

      v44 = [(AVTransition *)self presentationContext];
      v45 = [v44 presentingTransition];
      v46 = [v45 initialInterfaceOrientation];
      v47 = [(AVTransition *)self presentationContext];
      v48 = [v47 presentingTransition];
      v49 = [v48 finalInterfaceOrientation];

      if ((v41 & 1) == 0)
      {
      }

      if (v46 != v49)
      {
        memset(&buf, 0, sizeof(buf));
        v50 = [(AVTransition *)self presentationContext];
        v51 = [v50 presentingTransition];
        v52 = v51;
        if (v51)
        {
          [v51 rotationTransform];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        v97 = [(AVTransition *)self transitionContext];
        v98 = [v97 containerView];
        [v98 bounds];
        v121 = buf;
        v129 = CGRectApplyAffineTransform(v128, &v121);
        v99 = v129.size.width;
        v100 = v129.size.height;

        v101 = *MEMORY[0x1E695EFF8];
        v102 = *(MEMORY[0x1E695EFF8] + 8);
        if (v99 < 0.0)
        {
          v99 = -v99;
        }

        if (v100 < 0.0)
        {
          v100 = -v100;
        }

        v103 = [(AVTransition *)self presentationContext];
        v104 = [v103 presentedView];
        [v104 setFrame:{v101, v102, v99, v100}];

        v105 = [(AVTransition *)self presentationContext];
        v106 = [v105 presentedView];
        v107 = [(AVTransition *)self transitionContext];
        v108 = [v107 containerView];
        [v108 bounds];
        UIRectGetCenter();
        [v106 setCenter:?];

        v37 = [(AVTransition *)self presentationContext];
        v95 = [v37 presentedView];
        v121 = buf;
        [v95 setTransform:&v121];
LABEL_40:

LABEL_41:
        return;
      }

LABEL_29:
      v88 = [(AVTransition *)self presentationContext];
      v89 = [v88 presentedView];
      v90 = *(MEMORY[0x1E695EFD0] + 16);
      *&buf.a = *MEMORY[0x1E695EFD0];
      *&buf.c = v90;
      *&buf.tx = *(MEMORY[0x1E695EFD0] + 32);
      [v89 setTransform:&buf];

      if (v118)
      {
        v91 = [(AVTransition *)self presentationContext];
        v92 = [v91 presentedView];
        v93 = [(AVTransition *)self transitionContext];
        v94 = [v93 containerView];
        [v94 bounds];
        [v92 setFrame:?];

        return;
      }

      v37 = [(AVTransition *)self transitionContext];
      v95 = [v37 containerView];
      [v95 setAlpha:1.0];
      goto LABEL_40;
  }
}

uint64_t __51__AVTransition__animateFinishInteractiveTransition__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__AVTransition__animateFinishInteractiveTransition__block_invoke_2;
  v4[3] = &unk_1E720A090;
  v4[4] = *(a1 + 32);
  [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__AVTransition__animateFinishInteractiveTransition__block_invoke_3;
  v3[3] = &unk_1E720A090;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v3 relativeDuration:0.5 animations:0.5];
}

uint64_t __51__AVTransition__animateFinishInteractiveTransition__block_invoke_4(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__AVTransition__animateFinishInteractiveTransition__block_invoke_5;
  v4[3] = &unk_1E720A090;
  v4[4] = *(a1 + 32);
  [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__AVTransition__animateFinishInteractiveTransition__block_invoke_6;
  v3[3] = &unk_1E720A090;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v3 relativeDuration:0.5 animations:0.5];
}

uint64_t __51__AVTransition__animateFinishInteractiveTransition__block_invoke_7(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__AVTransition__animateFinishInteractiveTransition__block_invoke_8;
  v2[3] = &unk_1E720A090;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v2 relativeDuration:0.25 animations:0.75];
}

void __51__AVTransition__animateFinishInteractiveTransition__block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationContext];
  v1 = [v2 presentedView];
  [v1 setAlpha:0.0];
}

void __51__AVTransition__animateFinishInteractiveTransition__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationContext];
  v1 = [v2 backgroundView];
  [v1 setAlpha:0.0];
}

void __51__AVTransition__animateFinishInteractiveTransition__block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 presentationContext];
  v3 = [v6 presentedView];
  v4 = [*(a1 + 32) presentationContext];
  v5 = [v4 sourceView];
  [v2 _updateCornerAppearanceAttributesOfView:v3 toSourceView:v5 similarity:1.0];
}

void __51__AVTransition__animateFinishInteractiveTransition__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 presentationContext];
  v3 = [v6 presentedView];
  v4 = [*(a1 + 32) presentationContext];
  v5 = [v4 sourceView];
  [v2 _updateCornerAppearanceAttributesOfView:v3 toSourceView:v5 similarity:0.0];
}

void __51__AVTransition__animateFinishInteractiveTransition__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationContext];
  v1 = [v2 backgroundView];
  [v1 setAlpha:1.0];
}

- (void)finishInteractiveTransition
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[AVTransition finishInteractiveTransition]";
    v11 = 1024;
    v12 = 262;
    v13 = 2048;
    v14 = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v4 = [(AVTransition *)self transitionContext];
  [v4 finishInteractiveTransition];

  v5 = [(AVTransition *)self transitionAnimator];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__AVTransition_finishInteractiveTransition__block_invoke;
  v8[3] = &unk_1E720A090;
  v8[4] = self;
  [v5 addAnimations:v8];

  v6 = [(AVTransition *)self transitionAnimator];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AVTransition_finishInteractiveTransition__block_invoke_2;
  v7[3] = &unk_1E7208F00;
  v7[4] = self;
  [v6 addCompletion:v7];

  [(AVTransition *)self _startOrContinueAnimatorsReversed:0];
}

- (void)updateWithPercentComplete:(double)a3 scale:(double)a4 translation:(CGPoint)a5 rotation:(double)a6
{
  y = a5.y;
  x = a5.x;
  v28 = *MEMORY[0x1E69E9840];
  v11 = [(AVTransition *)self transitionContext:a3];
  [v11 updateInteractiveTransition:a3];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [(AVTransition *)self allAnimators];
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v23 + 1) + 8 * v16++) setFractionComplete:a3];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v17 = *&self->_destinationViewTransform.c;
  *&v21.a = *&self->_destinationViewTransform.a;
  *&v21.c = v17;
  *&v21.tx = *&self->_destinationViewTransform.tx;
  memset(&v22, 0, sizeof(v22));
  CGAffineTransformTranslate(&v22, &v21, x, y);
  v20 = v22;
  CGAffineTransformScale(&v21, &v20, a4, a4);
  v22 = v21;
  v18 = [(AVTransition *)self presentationContext];
  v19 = [v18 presentedView];
  v21 = v22;
  [v19 setTransform:&v21];
}

- (void)pauseInteractiveTransition
{
  v3 = [(AVTransition *)self transitionContext];
  [v3 pauseInteractiveTransition];

  v4 = [(AVTransition *)self allAnimators];
  [v4 makeObjectsPerformSelector:sel_pauseAnimation];

  v5 = [(AVTransition *)self transitionAnimator];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AVTransition_pauseInteractiveTransition__block_invoke;
  v6[3] = &unk_1E720A090;
  v6[4] = self;
  [v5 addAnimations:v6];
}

uint64_t __42__AVTransition_pauseInteractiveTransition__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42__AVTransition_pauseInteractiveTransition__block_invoke_2;
  v2[3] = &unk_1E720A090;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] animateKeyframesWithDuration:0 delay:v2 options:0 animations:0.0 completion:0.0];
}

void __42__AVTransition_pauseInteractiveTransition__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationContext];
  v3 = [v2 transitionType];

  if (v3)
  {
    if (v3 == 2)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __42__AVTransition_pauseInteractiveTransition__block_invoke_5;
      v11[3] = &unk_1E720A090;
      v11[4] = *(a1 + 32);
      [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v11 relativeDuration:0.0 animations:0.5];
      v4 = MEMORY[0x1E69DD250];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __42__AVTransition_pauseInteractiveTransition__block_invoke_6;
      v10[3] = &unk_1E720A090;
      v10[4] = *(a1 + 32);
      v5 = 0.5;
      v6 = 0.5;
      v7 = v10;
    }

    else
    {
      if (v3 != 1)
      {
        return;
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __42__AVTransition_pauseInteractiveTransition__block_invoke_3;
      v13[3] = &unk_1E720A090;
      v13[4] = *(a1 + 32);
      [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v13 relativeDuration:0.0 animations:0.5];
      v4 = MEMORY[0x1E69DD250];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __42__AVTransition_pauseInteractiveTransition__block_invoke_4;
      v12[3] = &unk_1E720A090;
      v12[4] = *(a1 + 32);
      v5 = 0.25;
      v6 = 0.75;
      v7 = v12;
    }

    [v4 addKeyframeWithRelativeStartTime:v7 relativeDuration:v5 animations:v6];
  }

  else
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Unexpected", v9, 2u);
    }
  }
}

void __42__AVTransition_pauseInteractiveTransition__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 presentationContext];
  v3 = [v6 presentedView];
  v4 = [*(a1 + 32) presentationContext];
  v5 = [v4 sourceView];
  [v2 _updateCornerAppearanceAttributesOfView:v3 toSourceView:v5 similarity:0.0];
}

void __42__AVTransition_pauseInteractiveTransition__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationContext];
  v1 = [v2 backgroundView];
  [v1 setAlpha:1.0];
}

void __42__AVTransition_pauseInteractiveTransition__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationContext];
  v1 = [v2 backgroundView];
  [v1 setAlpha:0.0];
}

void __42__AVTransition_pauseInteractiveTransition__block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 presentationContext];
  v3 = [v6 presentedView];
  v4 = [*(a1 + 32) presentationContext];
  v5 = [v4 sourceView];
  [v2 _updateCornerAppearanceAttributesOfView:v3 toSourceView:v5 similarity:1.0];
}

- (void)_dismissalTransitionWillBegin
{
  v3 = [(AVTransition *)self presentationContext];
  v4 = [v3 transitionContext];
  v5 = [v4 containerView];
  v6 = [(AVTransition *)self presentationContext];
  v7 = [v6 backgroundView];
  v8 = [(AVTransition *)self presentationContext];
  v9 = [v8 presentedView];
  [v5 insertSubview:v7 belowSubview:v9];

  v10 = [(AVTransition *)self presentationContext];
  v11 = [v10 transitionContext];
  v12 = [v11 containerView];
  v13 = [(AVTransition *)self presentationContext];
  v14 = [v13 touchBlockingView];
  v15 = [(AVTransition *)self presentationContext];
  v16 = [v15 presentedView];
  [v12 insertSubview:v14 belowSubview:v16];

  v17 = [(AVTransition *)self transitionContext];
  v18 = [v17 viewForKey:*MEMORY[0x1E69DE780]];

  v19 = [(AVTransition *)self transitionContext];
  v20 = [v19 viewForKey:*MEMORY[0x1E69DE770]];

  v21 = [(AVTransition *)self transitionContext];
  v22 = [v21 viewControllerForKey:*MEMORY[0x1E69DE778]];

  if (v20)
  {
    [v20 transform];
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
  }

  *&self->_destinationViewTransform.a = v54;
  *&self->_destinationViewTransform.c = v55;
  *&self->_destinationViewTransform.tx = v56;
  if (v18)
  {
    v23 = [(AVTransition *)self transitionContext];
    [v23 finalFrameForViewController:v22];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v57.origin.x = v25;
    v57.origin.y = v27;
    v57.size.width = v29;
    v57.size.height = v31;
    if (!CGRectIsEmpty(v57))
    {
      v32 = [v22 view];
      [v32 setFrame:{v25, v27, v29, v31}];
    }

    v33 = [(AVTransition *)self transitionContext:v54];
    v34 = [v33 containerView];
    v35 = [(AVTransition *)self presentationContext];
    v36 = [v35 backgroundView];
    [v34 insertSubview:v18 belowSubview:v36];

    v37 = [v22 view];
    [v37 layoutIfNeeded];

    v38 = [v22 view];

    if (v18 != v38)
    {
      [v18 layoutIfNeeded];
    }
  }

  v39 = [(AVTransition *)self presentationContext:v54];
  v40 = [v39 configuration];
  v41 = [v40 transitionStyle];

  v42 = [(AVTransition *)self transitionContext];
  if ([v42 isInteractive])
  {

LABEL_11:
    v43 = [(AVTransition *)self presentationContext];
    v44 = [v43 backgroundView];
    [v44 setAlpha:1.0];

    goto LABEL_14;
  }

  v45 = [(AVTransition *)self presentationContext];
  v46 = [v45 sourceView];

  if (v46 || !v41)
  {
    goto LABEL_11;
  }

LABEL_14:
  v47 = [(AVTransition *)self presentationContext];
  v48 = [v47 presentedPresentationContainerView];
  v49 = [(AVTransition *)self presentationContext];
  v50 = [v49 dismissingTransition];
  v51 = [v50 initialInterfaceOrientation];
  v52 = [(AVTransition *)self presentationContext];
  v53 = [v52 dismissingTransition];
  [v48 willStartDismissalTransitionFromInterfaceOrientation:v51 toOrientation:objc_msgSend(v53 needsCounterRotation:{"finalInterfaceOrientation"), 0}];
}

- (void)_presentationTransitionWillBegin
{
  v3 = [(AVTransition *)self presentationContext];
  v4 = [v3 configuration];
  v5 = [v4 transitionStyle];

  v6 = [(AVTransition *)self presentationContext];
  v7 = [v6 presentedView];
  [v7 setAutoresizingMask:18];

  v8 = [(AVTransition *)self presentationContext];
  v9 = [v8 backgroundView];
  [v9 setAutoresizingMask:18];

  v10 = [(AVTransition *)self presentationContext];
  v11 = [v10 touchBlockingView];
  [v11 setAutoresizingMask:18];

  v12 = [(AVTransition *)self transitionContext];
  v13 = [v12 containerView];
  v14 = [(AVTransition *)self presentationContext];
  v15 = [v14 presentedView];
  [v13 addSubview:v15];

  v16 = [(AVTransition *)self presentationContext];
  v17 = [v16 transitionContext];
  v18 = [v17 containerView];
  v19 = [(AVTransition *)self presentationContext];
  v20 = [v19 backgroundView];
  v21 = [(AVTransition *)self presentationContext];
  v22 = [v21 presentedView];
  [v18 insertSubview:v20 belowSubview:v22];

  v23 = [(AVTransition *)self presentationContext];
  v24 = [v23 transitionContext];
  v25 = [v24 containerView];
  v26 = [(AVTransition *)self presentationContext];
  v27 = [v26 touchBlockingView];
  v28 = [(AVTransition *)self presentationContext];
  v29 = [v28 presentedView];
  [v25 insertSubview:v27 belowSubview:v29];

  v30 = [(AVTransition *)self presentationContext];
  v31 = [v30 backgroundView];
  [v31 setAlpha:0.0];

  if (!v5)
  {
    v32 = [(AVTransition *)self transitionContext];
    v33 = [v32 containerView];
    [v33 setAlpha:0.0];
  }

  v34 = [(AVTransition *)self presentationContext];
  v35 = [v34 sourceView];
  if (v35)
  {

LABEL_6:
    v38 = [(AVTransition *)self presentationContext];
    v39 = [v38 presentedView];
    v40 = [(AVTransition *)self presentationContext];
    v41 = [v40 sourceView];
    [(AVTransition *)self _updateCornerAppearanceAttributesOfView:v39 toSourceView:v41 similarity:1.0];

    v42 = [(AVTransition *)self presentationContext];
    v43 = [v42 presentedView];
    [(AVTransition *)self _sourceViewFrameInContainerView];
    v44 = v43;
    goto LABEL_7;
  }

  v36 = [(AVTransition *)self transitionContext];
  v37 = [v36 isInteractive];

  if (v37)
  {
    goto LABEL_6;
  }

  v51 = [(AVTransition *)self transitionContext];
  v52 = [v51 containerView];
  [v52 bounds];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;

  if (v5 == 1)
  {
    v63.origin.x = v54;
    v63.origin.y = v56;
    v63.size.width = v58;
    v63.size.height = v60;
    CGRectGetHeight(v63);
  }

  v42 = [(AVTransition *)self presentationContext];
  v44 = [v42 presentedView];
  v43 = v44;
LABEL_7:
  [v44 setFrame:?];

  v61 = [(AVTransition *)self presentationContext];
  v45 = [v61 presentedPresentationContainerView];
  v46 = [(AVTransition *)self presentationContext];
  v47 = [v46 presentingTransition];
  v48 = [v47 initialInterfaceOrientation];
  v49 = [(AVTransition *)self presentationContext];
  v50 = [v49 presentingTransition];
  [v45 willStartPresentationTransitionFromInterfaceOrientation:v48 toOrientation:objc_msgSend(v50 needsCounterRotation:{"finalInterfaceOrientation"), 0}];
}

- (void)startInteractiveTransition
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v40 = "[AVTransition startInteractiveTransition]";
    v41 = 1024;
    v42 = 86;
    v43 = 2048;
    v44 = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v4 = [(AVTransition *)self presentationContext];
  v5 = [v4 isPresenting];

  v6 = [(AVTransition *)self presentationContext];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 presentingTransition];
LABEL_7:
    v10 = v8;
    v11 = [(AVTransition *)self transitionContext];
    [v10 setWasInitiallyInteractive:{objc_msgSend(v11, "isInteractive")}];

    goto LABEL_8;
  }

  v9 = [v6 isDismissing];

  if (v9)
  {
    v7 = [(AVTransition *)self presentationContext];
    v8 = [v7 dismissingTransition];
    goto LABEL_7;
  }

LABEL_8:
  v12 = objc_alloc(MEMORY[0x1E69DD278]);
  [(AVTransition *)self duration];
  v14 = v13;
  v15 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:5];
  v16 = [v12 initWithDuration:v15 timingParameters:v14];
  clientAnimator = self->_clientAnimator;
  self->_clientAnimator = v16;

  v18 = [(AVTransition *)self clientAnimator];
  [v18 setScrubsLinearly:0];

  v19 = [(AVTransition *)self allAnimators];
  v20 = [(AVTransition *)self clientAnimator];
  [v19 addObject:v20];

  v21 = objc_alloc(MEMORY[0x1E69DD278]);
  [(AVTransition *)self duration];
  v23 = v22;
  v24 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:5];
  v25 = [v21 initWithDuration:v24 timingParameters:v23];
  transitionAnimator = self->_transitionAnimator;
  self->_transitionAnimator = v25;

  v27 = [(AVTransition *)self transitionAnimator];
  [v27 setScrubsLinearly:0];

  v28 = [(AVTransition *)self allAnimators];
  v29 = [(AVTransition *)self transitionAnimator];
  [v28 addObject:v29];

  v30 = [(AVTransition *)self presentationContext];
  v31 = [v30 backgroundView];
  v32 = [(AVTransition *)self delegate];
  v33 = [v32 transitionBackgroundViewBackgroundColor:self];
  [v31 setBackgroundColor:v33];

  v34 = [(AVTransition *)self presentationContext];
  v35 = [v34 presentedView];
  v36 = [(AVTransition *)self delegate];
  v37 = [v36 transitionPresentedViewBackgroundColor:self];
  [v35 setBackgroundColor:v37];

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __42__AVTransition_startInteractiveTransition__block_invoke;
  v38[3] = &unk_1E720A090;
  v38[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v38];
}

void __42__AVTransition_startInteractiveTransition__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentationContext];
  v3 = [v2 transitionType];

  if (v3)
  {
    if (v3 == 2)
    {
      v5 = *(a1 + 32);

      [v5 _dismissalTransitionWillBegin];
    }

    else if (v3 == 1)
    {
      v4 = *(a1 + 32);

      [v4 _presentationTransitionWillBegin];
    }
  }

  else
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "Unexpected", v7, 2u);
    }
  }
}

- (double)transitionAnimatorProgress
{
  v3 = [(AVTransition *)self transitionAnimator];
  [v3 fractionComplete];
  v5 = v4;

  v6 = [(AVTransition *)self transitionAnimator];
  LODWORD(v3) = [v6 isReversed];

  result = 1.0 - v5;
  if (!v3)
  {
    return v5;
  }

  return result;
}

- (double)duration
{
  v2 = [(AVTransition *)self presentationContext];
  v3 = [v2 presentedViewController];
  v4 = [v3 transitionCoordinator];
  [v4 transitionDuration];
  v6 = v5;

  return v6;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v6 = "[AVTransition dealloc]";
    v7 = 1024;
    v8 = 58;
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v4.receiver = self;
  v4.super_class = AVTransition;
  [(AVTransition *)&v4 dealloc];
}

- (AVTransition)initWithTransitionContext:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AVTransition;
  v5 = [(AVTransition *)&v10 init];
  if (v5)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v12 = "[AVTransition initWithTransitionContext:]";
      v13 = 1024;
      v14 = 48;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
    }

    v7 = [MEMORY[0x1E695DF70] array];
    allAnimators = v5->_allAnimators;
    v5->_allAnimators = v7;

    objc_storeWeak(&v5->_transitionContext, v4);
  }

  return v5;
}

@end