@interface AVTransition
- (AVTransition)initWithTransitionContext:(id)context;
- (AVTransitionDelegate)delegate;
- (CGAffineTransform)_transformForScale:(SEL)scale translation:(double)translation rotation:(CGPoint)rotation locationInWindow:(double)window sourceRectInContainerView:(CGPoint)view;
- (CGRect)_finalFrameForPresentedView;
- (CGRect)_initialFrameForPresentedView;
- (CGRect)_sourceViewFrameInContainerView;
- (UIViewControllerContextTransitioningEx)transitionContext;
- (double)duration;
- (double)transitionAnimatorProgress;
- (void)_animateAlongsideInteractiveDismissalTransitionAnimationForCancelling;
- (void)_animateAlongsideInteractivePresentationTransitionAnimationForCancelling;
- (void)_animateFinishInteractiveTransition;
- (void)_dismissalTransitionDidEnd:(BOOL)end;
- (void)_dismissalTransitionWillBegin;
- (void)_freezeDismissingViewForFinishing;
- (void)_presentationTransitionDidEnd:(BOOL)end;
- (void)_presentationTransitionWillBegin;
- (void)_startOrContinueAnimatorsReversed:(BOOL)reversed;
- (void)_updateCornerAppearanceAttributesOfView:(id)view toSourceView:(id)sourceView similarity:(double)similarity;
- (void)addRunAlongsideAnimationsIfNeeded;
- (void)cancelInteractiveTransition;
- (void)completeTransition:(BOOL)transition;
- (void)dealloc;
- (void)finishInteractiveTransition;
- (void)pauseInteractiveTransition;
- (void)startInteractiveTransition;
- (void)updateWithPercentComplete:(double)complete scale:(double)scale translation:(CGPoint)translation rotation:(double)rotation;
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
  transitionContext = [(AVTransition *)self transitionContext];
  containerView = [transitionContext containerView];
  [containerView bounds];
  MidX = CGRectGetMidX(v57);
  transitionContext2 = [(AVTransition *)self transitionContext];
  containerView2 = [transitionContext2 containerView];
  [containerView2 bounds];
  Height = CGRectGetHeight(v58);
  transitionContext3 = [(AVTransition *)self transitionContext];
  containerView3 = [transitionContext3 containerView];
  [containerView3 bounds];
  MinY = CGRectGetMinY(v59);
  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);

  presentationContext = [(AVTransition *)self presentationContext];
  sourceView = [presentationContext sourceView];
  v54 = v10;
  v52 = v9;
  if (!sourceView)
  {

    goto LABEL_5;
  }

  v13 = sourceView;
  presentationContext2 = [(AVTransition *)self presentationContext];
  sourceView2 = [presentationContext2 sourceView];
  _isInAWindow = [sourceView2 _isInAWindow];

  if (!_isInAWindow)
  {
LABEL_5:
    transitionContext4 = [(AVTransition *)self transitionContext];
    containerView4 = [transitionContext4 containerView];
    [containerView4 bounds];
    v32 = CGRectGetMidX(v60);
    transitionContext5 = [(AVTransition *)self transitionContext];
    containerView5 = [transitionContext5 containerView];
    [containerView5 bounds];
    v37 = CGRectGetHeight(v61);
    transitionContext6 = [(AVTransition *)self transitionContext];
    containerView6 = [transitionContext6 containerView];
    [containerView6 bounds];
    v34 = CGRectGetMinY(v62) + v37 * 0.75;
    goto LABEL_6;
  }

  transitionContext4 = [(AVTransition *)self transitionContext];
  containerView4 = [transitionContext4 containerView];
  transitionContext5 = [(AVTransition *)self presentationContext];
  containerView5 = [transitionContext5 sourceView];
  [containerView5 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  transitionContext6 = [(AVTransition *)self presentationContext];
  containerView6 = [transitionContext6 sourceView];
  [containerView4 convertRect:containerView6 fromView:{v22, v24, v26, v28}];
  v32 = v31;
  v34 = v33;
  v9 = v35;
  v10 = v36;
LABEL_6:

  transitionContext7 = [(AVTransition *)self transitionContext];
  containerView7 = [transitionContext7 containerView];
  [containerView7 bounds];
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

- (void)_updateCornerAppearanceAttributesOfView:(id)view toSourceView:(id)sourceView similarity:(double)similarity
{
  sourceViewCopy = sourceView;
  viewCopy = view;
  layer = [viewCopy layer];
  layer2 = [sourceViewCopy layer];

  v10 = fmin(fmax(similarity, 0.0), 1.0);
  [viewCopy setClipsToBounds:1];

  if (v10 <= 0.0)
  {
    [layer setCornerCurve:*MEMORY[0x1E69796E0]];
  }

  else
  {
    cornerCurve = [layer2 cornerCurve];
    [layer setCornerCurve:cornerCurve];
  }

  [layer2 cornerRadius];
  [layer setCornerRadius:v10 * v12];
  [layer setMaskedCorners:{objc_msgSend(layer2, "maskedCorners")}];
}

- (CGAffineTransform)_transformForScale:(SEL)scale translation:(double)translation rotation:(CGPoint)rotation locationInWindow:(double)window sourceRectInContainerView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  v10 = rotation.y;
  v11 = rotation.x;
  memset(&v48, 0, sizeof(v48));
  CGAffineTransformMakeScale(&v48, translation, translation);
  transitionContext = [(AVTransition *)self transitionContext];
  containerView = [transitionContext containerView];
  transitionContext2 = [(AVTransition *)self transitionContext];
  containerView2 = [transitionContext2 containerView];
  window = [containerView2 window];
  [containerView convertPoint:window fromView:{x - v11, y - v10}];
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
  v48.tx = v44 - v42 + rotation.x + v48.tx;
  v48.ty = v43 - v40 + rotation.y + v35 - v36;
  v47 = v48;
  return CGAffineTransformRotate(retstr, &v47, window);
}

- (CGRect)_finalFrameForPresentedView
{
  presentationContext = [(AVTransition *)self presentationContext];
  presentedViewController = [presentationContext presentedViewController];
  if ([presentedViewController isBeingPresented])
  {
    transitionContext = [(AVTransition *)self transitionContext];
    presentationContext2 = [(AVTransition *)self presentationContext];
    presentedViewController2 = [presentationContext2 presentedViewController];
    [transitionContext finalFrameForViewController:presentedViewController2];
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
  presentationContext = [(AVTransition *)self presentationContext];
  presentedViewController = [presentationContext presentedViewController];
  if ([presentedViewController isBeingPresented])
  {
    [(AVTransition *)self _sourceViewFrameInContainerView];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    presentationContext2 = [(AVTransition *)self presentationContext];
    presentedView = [presentationContext2 presentedView];
    [presentedView frame];
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

- (void)_startOrContinueAnimatorsReversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allAnimators = [(AVTransition *)self allAnimators];
  v5 = [allAnimators countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    if (reversedCopy)
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
          objc_enumerationMutation(allAnimators);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        state = [v10 state];
        if (state == 2)
        {
          goto LABEL_11;
        }

        if (state != 1)
        {
          if (state)
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

        [v10 setReversed:reversedCopy];
        timingParameters = [v10 timingParameters];
        [v10 continueAnimationWithTimingParameters:timingParameters durationFactor:v8];
      }

      v6 = [allAnimators countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_dismissalTransitionDidEnd:(BOOL)end
{
  if (!end)
  {
    presentationContext = [(AVTransition *)self presentationContext];
    backgroundView = [presentationContext backgroundView];
    [backgroundView setAlpha:1.0];

    presentationContext2 = [(AVTransition *)self presentationContext];
    touchBlockingView = [presentationContext2 touchBlockingView];
    [touchBlockingView setAlpha:1.0];

    presentationContext3 = [(AVTransition *)self presentationContext];
    backgroundView2 = [presentationContext3 backgroundView];
    delegate = [(AVTransition *)self delegate];
    v11 = [delegate transitionBackgroundViewBackgroundColor:self];
    [backgroundView2 setBackgroundColor:v11];

    presentationContext4 = [(AVTransition *)self presentationContext];
    presentedView = [presentationContext4 presentedView];
    delegate2 = [(AVTransition *)self delegate];
    v15 = [delegate2 transitionPresentedViewBackgroundColor:self];
    [presentedView setBackgroundColor:v15];
  }

  presentationContext5 = [(AVTransition *)self presentationContext];
  presentedView2 = [presentationContext5 presentedView];
  [presentedView2 setAlpha:1.0];
}

- (void)_presentationTransitionDidEnd:(BOOL)end
{
  if (end)
  {
    presentationContext = [(AVTransition *)self presentationContext];
    backgroundView = [presentationContext backgroundView];
    delegate = [(AVTransition *)self delegate];
    v7 = [delegate transitionBackgroundViewBackgroundColor:self];
    [backgroundView setBackgroundColor:v7];

    presentationContext2 = [(AVTransition *)self presentationContext];
    presentedView = [presentationContext2 presentedView];
    delegate2 = [(AVTransition *)self delegate];
    v11 = [delegate2 transitionPresentedViewBackgroundColor:self];
    [presentedView setBackgroundColor:v11];

    presentationContext3 = [(AVTransition *)self presentationContext];
    backgroundView2 = [presentationContext3 backgroundView];
    [backgroundView2 setAlpha:1.0];

    presentationContext4 = [(AVTransition *)self presentationContext];
    touchBlockingView = [presentationContext4 touchBlockingView];
    [touchBlockingView setAlpha:1.0];
  }

  presentationContext5 = [(AVTransition *)self presentationContext];
  presentedView2 = [presentationContext5 presentedView];
  [presentedView2 setAlpha:1.0];
}

- (void)completeTransition:(BOOL)transition
{
  transitionCopy = transition;
  v16 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    *buf = 136315650;
    v11 = "[AVTransition completeTransition:]";
    v13 = "didComplete";
    v12 = 2080;
    if (transitionCopy)
    {
      v6 = "YES";
    }

    v14 = 2080;
    v15 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }

  delegate = [(AVTransition *)self delegate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__AVTransition_completeTransition___block_invoke;
  v8[3] = &unk_1E7208F28;
  v8[4] = self;
  v9 = transitionCopy;
  [delegate transitionWillComplete:self success:transitionCopy continueBlock:v8];
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
  clientAnimator = [(AVTransition *)self clientAnimator];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__AVTransition_addRunAlongsideAnimationsIfNeeded__block_invoke;
  v4[3] = &unk_1E720A090;
  v4[4] = self;
  [clientAnimator addAnimations:v4];
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
  presentationContext = [(AVTransition *)self presentationContext];
  presentedView = [presentationContext presentedView];
  presentationContext2 = [(AVTransition *)self presentationContext];
  sourceView = [presentationContext2 sourceView];
  [(AVTransition *)self _updateCornerAppearanceAttributesOfView:presentedView toSourceView:sourceView similarity:0.0];

  presentationContext3 = [(AVTransition *)self presentationContext];
  presentedView2 = [presentationContext3 presentedView];
  v9 = *&self->_destinationViewTransform.c;
  v12[0] = *&self->_destinationViewTransform.a;
  v12[1] = v9;
  v12[2] = *&self->_destinationViewTransform.tx;
  [presentedView2 setTransform:v12];

  presentationContext4 = [(AVTransition *)self presentationContext];
  backgroundView = [presentationContext4 backgroundView];
  [backgroundView setAlpha:1.0];
}

- (void)_animateAlongsideInteractivePresentationTransitionAnimationForCancelling
{
  presentationContext = [(AVTransition *)self presentationContext];
  presentedView = [presentationContext presentedView];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v14[0] = *MEMORY[0x1E695EFD0];
  v14[1] = v5;
  v14[2] = *(MEMORY[0x1E695EFD0] + 32);
  [presentedView setTransform:v14];

  presentationContext2 = [(AVTransition *)self presentationContext];
  presentedView2 = [presentationContext2 presentedView];
  [(AVTransition *)self _sourceViewFrameInContainerView];
  [presentedView2 setFrame:?];

  presentationContext3 = [(AVTransition *)self presentationContext];
  presentedView3 = [presentationContext3 presentedView];
  presentationContext4 = [(AVTransition *)self presentationContext];
  sourceView = [presentationContext4 sourceView];
  [(AVTransition *)self _updateCornerAppearanceAttributesOfView:presentedView3 toSourceView:sourceView similarity:1.0];

  presentationContext5 = [(AVTransition *)self presentationContext];
  backgroundView = [presentationContext5 backgroundView];
  [backgroundView setAlpha:0.0];
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
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  transitionContext = [(AVTransition *)self transitionContext];
  [transitionContext cancelInteractiveTransition];

  transitionAnimator = [(AVTransition *)self transitionAnimator];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__AVTransition_cancelInteractiveTransition__block_invoke;
  v8[3] = &unk_1E720A090;
  v8[4] = self;
  [transitionAnimator addAnimations:v8];

  transitionAnimator2 = [(AVTransition *)self transitionAnimator];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AVTransition_cancelInteractiveTransition__block_invoke_9;
  v7[3] = &unk_1E7208F00;
  v7[4] = self;
  [transitionAnimator2 addCompletion:v7];

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
  presentationContext = [(AVTransition *)self presentationContext];
  configuration = [presentationContext configuration];
  transitionStyle = [configuration transitionStyle];

  presentationContext2 = [(AVTransition *)self presentationContext];
  transitionType = [presentationContext2 transitionType];

  switch(transitionType)
  {
    case 0:
      presentationContext28 = _AVLog();
      if (os_log_type_enabled(presentationContext28, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.a) = 0;
        _os_log_error_impl(&dword_18B49C000, presentationContext28, OS_LOG_TYPE_ERROR, "Unexpected", &buf, 2u);
      }

      goto LABEL_41;
    case 2:
      presentationContext3 = [(AVTransition *)self presentationContext];
      sourceView = [presentationContext3 sourceView];
      if (sourceView)
      {
        v28 = sourceView;
        [(AVTransition *)self _sourceViewFrameInContainerView];
        IsEmpty = CGRectIsEmpty(v125);

        if (!IsEmpty)
        {
          [(AVTransition *)self _freezeDismissingViewForFinishing];
          presentationContext4 = [(AVTransition *)self presentationContext];
          presentedView = [presentationContext4 presentedView];
          v32 = *(MEMORY[0x1E695EFD0] + 16);
          *&buf.a = *MEMORY[0x1E695EFD0];
          *&buf.c = v32;
          *&buf.tx = *(MEMORY[0x1E695EFD0] + 32);
          [presentedView setTransform:&buf];

          presentationContext5 = [(AVTransition *)self presentationContext];
          presentedView2 = [presentationContext5 presentedView];
          [(AVTransition *)self _sourceViewFrameInContainerView];
          [presentedView2 setFrame:?];

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

      presentationContext6 = [(AVTransition *)self presentationContext];
      dismissingTransition = [presentationContext6 dismissingTransition];
      wasInitiallyInteractive = [dismissingTransition wasInitiallyInteractive];

      if (!wasInitiallyInteractive)
      {
        transitionContext = [(AVTransition *)self transitionContext];
        v117 = [transitionContext viewForKey:*MEMORY[0x1E69DE770]];

        transitionContext2 = [(AVTransition *)self transitionContext];
        v69 = [transitionContext2 viewForKey:*MEMORY[0x1E69DE780]];

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

        presentationContext7 = [(AVTransition *)self presentationContext];
        presentedView3 = [presentationContext7 presentedView];
        [presentedView3 setFrame:{v75, v77, v79, v81}];

        presentationContext8 = [(AVTransition *)self presentationContext];
        backgroundView = [presentationContext8 backgroundView];
        [backgroundView setAlpha:0.0];

        if (!transitionStyle)
        {
          presentationContext9 = [(AVTransition *)self presentationContext];
          containerView = [presentationContext9 containerView];
          [containerView setAlpha:0.0];
        }

        return;
      }

      presentationContext10 = [(AVTransition *)self presentationContext];
      presentedView4 = [presentationContext10 presentedView];
      presentationContext11 = [(AVTransition *)self presentationContext];
      sourceView2 = [presentationContext11 sourceView];
      [(AVTransition *)self _updateCornerAppearanceAttributesOfView:presentedView4 toSourceView:sourceView2 similarity:1.0];

      presentationContext12 = [(AVTransition *)self presentationContext];
      backgroundView2 = [presentationContext12 backgroundView];
      [backgroundView2 setAlpha:0.0];

      [(AVTransition *)self _freezeDismissingViewForFinishing];
      presentationContext13 = [(AVTransition *)self presentationContext];
      presentedView5 = [presentationContext13 presentedView];
      presentationContext14 = [(AVTransition *)self presentationContext];
      presentedView6 = [presentationContext14 presentedView];
      v66 = presentedView6;
      if (presentedView6)
      {
        [presentedView6 transform];
      }

      else
      {
        memset(&v121, 0, sizeof(v121));
      }

      CGAffineTransformScale(&buf, &v121, 0.001, 0.001);
      [presentedView5 setTransform:&buf];

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
      presentationContext15 = [(AVTransition *)self presentationContext];
      presentingTransition = [presentationContext15 presentingTransition];
      wasInitiallyInteractive2 = [presentingTransition wasInitiallyInteractive];

      presentationContext16 = [(AVTransition *)self presentationContext];
      v12 = presentationContext16;
      v13 = MEMORY[0x1E695EFD0];
      v118 = transitionStyle;
      if (wasInitiallyInteractive2)
      {
        backgroundView3 = [presentationContext16 backgroundView];
        [backgroundView3 setAlpha:1.0];

        presentationContext17 = [(AVTransition *)self presentationContext];
        presentedView7 = [presentationContext17 presentedView];
        presentationContext18 = [(AVTransition *)self presentationContext];
        sourceView3 = [presentationContext18 sourceView];
        [(AVTransition *)self _updateCornerAppearanceAttributesOfView:presentedView7 toSourceView:sourceView3 similarity:0.0];

        presentationContext19 = [(AVTransition *)self presentationContext];
        presentedView8 = [presentationContext19 presentedView];
        transitionContext3 = [(AVTransition *)self transitionContext];
        containerView2 = [transitionContext3 containerView];
        [containerView2 bounds];
        [presentedView8 setFrame:?];

        presentationContext20 = [(AVTransition *)self presentationContext];
        presentedView9 = [presentationContext20 presentedView];
        v25 = v13[1];
        *&buf.a = *v13;
        *&buf.c = v25;
        *&buf.tx = v13[2];
        [presentedView9 setTransform:&buf];
      }

      else
      {
        sourceView4 = [presentationContext16 sourceView];

        if (sourceView4)
        {
          v122[0] = MEMORY[0x1E69E9820];
          v122[1] = 3221225472;
          v122[2] = __51__AVTransition__animateFinishInteractiveTransition__block_invoke;
          v122[3] = &unk_1E720A090;
          v122[4] = self;
          [MEMORY[0x1E69DD250] animateKeyframesWithDuration:0 delay:v122 options:0 animations:0.0 completion:0.0];
        }
      }

      presentationContext21 = [(AVTransition *)self presentationContext];
      presentingTransition2 = [presentationContext21 presentingTransition];
      wasInitiallyInteractive3 = [presentingTransition2 wasInitiallyInteractive];
      if ((wasInitiallyInteractive3 & 1) == 0)
      {
        presentationContext22 = [(AVTransition *)self presentationContext];
        sourceView5 = [presentationContext22 sourceView];
        if (!sourceView5)
        {

          goto LABEL_29;
        }

        v115 = sourceView5;
        v116 = presentationContext22;
      }

      presentationContext23 = [(AVTransition *)self presentationContext];
      presentingTransition3 = [presentationContext23 presentingTransition];
      initialInterfaceOrientation = [presentingTransition3 initialInterfaceOrientation];
      presentationContext24 = [(AVTransition *)self presentationContext];
      presentingTransition4 = [presentationContext24 presentingTransition];
      finalInterfaceOrientation = [presentingTransition4 finalInterfaceOrientation];

      if ((wasInitiallyInteractive3 & 1) == 0)
      {
      }

      if (initialInterfaceOrientation != finalInterfaceOrientation)
      {
        memset(&buf, 0, sizeof(buf));
        presentationContext25 = [(AVTransition *)self presentationContext];
        presentingTransition5 = [presentationContext25 presentingTransition];
        v52 = presentingTransition5;
        if (presentingTransition5)
        {
          [presentingTransition5 rotationTransform];
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        transitionContext4 = [(AVTransition *)self transitionContext];
        containerView3 = [transitionContext4 containerView];
        [containerView3 bounds];
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

        presentationContext26 = [(AVTransition *)self presentationContext];
        presentedView10 = [presentationContext26 presentedView];
        [presentedView10 setFrame:{v101, v102, v99, v100}];

        presentationContext27 = [(AVTransition *)self presentationContext];
        presentedView11 = [presentationContext27 presentedView];
        transitionContext5 = [(AVTransition *)self transitionContext];
        containerView4 = [transitionContext5 containerView];
        [containerView4 bounds];
        UIRectGetCenter();
        [presentedView11 setCenter:?];

        presentationContext28 = [(AVTransition *)self presentationContext];
        presentedView12 = [presentationContext28 presentedView];
        v121 = buf;
        [presentedView12 setTransform:&v121];
LABEL_40:

LABEL_41:
        return;
      }

LABEL_29:
      presentationContext29 = [(AVTransition *)self presentationContext];
      presentedView13 = [presentationContext29 presentedView];
      v90 = *(MEMORY[0x1E695EFD0] + 16);
      *&buf.a = *MEMORY[0x1E695EFD0];
      *&buf.c = v90;
      *&buf.tx = *(MEMORY[0x1E695EFD0] + 32);
      [presentedView13 setTransform:&buf];

      if (v118)
      {
        presentationContext30 = [(AVTransition *)self presentationContext];
        presentedView14 = [presentationContext30 presentedView];
        transitionContext6 = [(AVTransition *)self transitionContext];
        containerView5 = [transitionContext6 containerView];
        [containerView5 bounds];
        [presentedView14 setFrame:?];

        return;
      }

      presentationContext28 = [(AVTransition *)self transitionContext];
      presentedView12 = [presentationContext28 containerView];
      [presentedView12 setAlpha:1.0];
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
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  transitionContext = [(AVTransition *)self transitionContext];
  [transitionContext finishInteractiveTransition];

  transitionAnimator = [(AVTransition *)self transitionAnimator];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__AVTransition_finishInteractiveTransition__block_invoke;
  v8[3] = &unk_1E720A090;
  v8[4] = self;
  [transitionAnimator addAnimations:v8];

  transitionAnimator2 = [(AVTransition *)self transitionAnimator];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AVTransition_finishInteractiveTransition__block_invoke_2;
  v7[3] = &unk_1E7208F00;
  v7[4] = self;
  [transitionAnimator2 addCompletion:v7];

  [(AVTransition *)self _startOrContinueAnimatorsReversed:0];
}

- (void)updateWithPercentComplete:(double)complete scale:(double)scale translation:(CGPoint)translation rotation:(double)rotation
{
  y = translation.y;
  x = translation.x;
  v28 = *MEMORY[0x1E69E9840];
  v11 = [(AVTransition *)self transitionContext:complete];
  [v11 updateInteractiveTransition:complete];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  allAnimators = [(AVTransition *)self allAnimators];
  v13 = [allAnimators countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(allAnimators);
        }

        [*(*(&v23 + 1) + 8 * v16++) setFractionComplete:complete];
      }

      while (v14 != v16);
      v14 = [allAnimators countByEnumeratingWithState:&v23 objects:v27 count:16];
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
  CGAffineTransformScale(&v21, &v20, scale, scale);
  v22 = v21;
  presentationContext = [(AVTransition *)self presentationContext];
  presentedView = [presentationContext presentedView];
  v21 = v22;
  [presentedView setTransform:&v21];
}

- (void)pauseInteractiveTransition
{
  transitionContext = [(AVTransition *)self transitionContext];
  [transitionContext pauseInteractiveTransition];

  allAnimators = [(AVTransition *)self allAnimators];
  [allAnimators makeObjectsPerformSelector:sel_pauseAnimation];

  transitionAnimator = [(AVTransition *)self transitionAnimator];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AVTransition_pauseInteractiveTransition__block_invoke;
  v6[3] = &unk_1E720A090;
  v6[4] = self;
  [transitionAnimator addAnimations:v6];
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
  presentationContext = [(AVTransition *)self presentationContext];
  transitionContext = [presentationContext transitionContext];
  containerView = [transitionContext containerView];
  presentationContext2 = [(AVTransition *)self presentationContext];
  backgroundView = [presentationContext2 backgroundView];
  presentationContext3 = [(AVTransition *)self presentationContext];
  presentedView = [presentationContext3 presentedView];
  [containerView insertSubview:backgroundView belowSubview:presentedView];

  presentationContext4 = [(AVTransition *)self presentationContext];
  transitionContext2 = [presentationContext4 transitionContext];
  containerView2 = [transitionContext2 containerView];
  presentationContext5 = [(AVTransition *)self presentationContext];
  touchBlockingView = [presentationContext5 touchBlockingView];
  presentationContext6 = [(AVTransition *)self presentationContext];
  presentedView2 = [presentationContext6 presentedView];
  [containerView2 insertSubview:touchBlockingView belowSubview:presentedView2];

  transitionContext3 = [(AVTransition *)self transitionContext];
  v18 = [transitionContext3 viewForKey:*MEMORY[0x1E69DE780]];

  transitionContext4 = [(AVTransition *)self transitionContext];
  v20 = [transitionContext4 viewForKey:*MEMORY[0x1E69DE770]];

  transitionContext5 = [(AVTransition *)self transitionContext];
  v22 = [transitionContext5 viewControllerForKey:*MEMORY[0x1E69DE778]];

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
    transitionContext6 = [(AVTransition *)self transitionContext];
    [transitionContext6 finalFrameForViewController:v22];
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
      view = [v22 view];
      [view setFrame:{v25, v27, v29, v31}];
    }

    v33 = [(AVTransition *)self transitionContext:v54];
    containerView3 = [v33 containerView];
    presentationContext7 = [(AVTransition *)self presentationContext];
    backgroundView2 = [presentationContext7 backgroundView];
    [containerView3 insertSubview:v18 belowSubview:backgroundView2];

    view2 = [v22 view];
    [view2 layoutIfNeeded];

    view3 = [v22 view];

    if (v18 != view3)
    {
      [v18 layoutIfNeeded];
    }
  }

  v39 = [(AVTransition *)self presentationContext:v54];
  configuration = [v39 configuration];
  transitionStyle = [configuration transitionStyle];

  transitionContext7 = [(AVTransition *)self transitionContext];
  if ([transitionContext7 isInteractive])
  {

LABEL_11:
    presentationContext8 = [(AVTransition *)self presentationContext];
    backgroundView3 = [presentationContext8 backgroundView];
    [backgroundView3 setAlpha:1.0];

    goto LABEL_14;
  }

  presentationContext9 = [(AVTransition *)self presentationContext];
  sourceView = [presentationContext9 sourceView];

  if (sourceView || !transitionStyle)
  {
    goto LABEL_11;
  }

LABEL_14:
  presentationContext10 = [(AVTransition *)self presentationContext];
  presentedPresentationContainerView = [presentationContext10 presentedPresentationContainerView];
  presentationContext11 = [(AVTransition *)self presentationContext];
  dismissingTransition = [presentationContext11 dismissingTransition];
  initialInterfaceOrientation = [dismissingTransition initialInterfaceOrientation];
  presentationContext12 = [(AVTransition *)self presentationContext];
  dismissingTransition2 = [presentationContext12 dismissingTransition];
  [presentedPresentationContainerView willStartDismissalTransitionFromInterfaceOrientation:initialInterfaceOrientation toOrientation:objc_msgSend(dismissingTransition2 needsCounterRotation:{"finalInterfaceOrientation"), 0}];
}

- (void)_presentationTransitionWillBegin
{
  presentationContext = [(AVTransition *)self presentationContext];
  configuration = [presentationContext configuration];
  transitionStyle = [configuration transitionStyle];

  presentationContext2 = [(AVTransition *)self presentationContext];
  presentedView = [presentationContext2 presentedView];
  [presentedView setAutoresizingMask:18];

  presentationContext3 = [(AVTransition *)self presentationContext];
  backgroundView = [presentationContext3 backgroundView];
  [backgroundView setAutoresizingMask:18];

  presentationContext4 = [(AVTransition *)self presentationContext];
  touchBlockingView = [presentationContext4 touchBlockingView];
  [touchBlockingView setAutoresizingMask:18];

  transitionContext = [(AVTransition *)self transitionContext];
  containerView = [transitionContext containerView];
  presentationContext5 = [(AVTransition *)self presentationContext];
  presentedView2 = [presentationContext5 presentedView];
  [containerView addSubview:presentedView2];

  presentationContext6 = [(AVTransition *)self presentationContext];
  transitionContext2 = [presentationContext6 transitionContext];
  containerView2 = [transitionContext2 containerView];
  presentationContext7 = [(AVTransition *)self presentationContext];
  backgroundView2 = [presentationContext7 backgroundView];
  presentationContext8 = [(AVTransition *)self presentationContext];
  presentedView3 = [presentationContext8 presentedView];
  [containerView2 insertSubview:backgroundView2 belowSubview:presentedView3];

  presentationContext9 = [(AVTransition *)self presentationContext];
  transitionContext3 = [presentationContext9 transitionContext];
  containerView3 = [transitionContext3 containerView];
  presentationContext10 = [(AVTransition *)self presentationContext];
  touchBlockingView2 = [presentationContext10 touchBlockingView];
  presentationContext11 = [(AVTransition *)self presentationContext];
  presentedView4 = [presentationContext11 presentedView];
  [containerView3 insertSubview:touchBlockingView2 belowSubview:presentedView4];

  presentationContext12 = [(AVTransition *)self presentationContext];
  backgroundView3 = [presentationContext12 backgroundView];
  [backgroundView3 setAlpha:0.0];

  if (!transitionStyle)
  {
    transitionContext4 = [(AVTransition *)self transitionContext];
    containerView4 = [transitionContext4 containerView];
    [containerView4 setAlpha:0.0];
  }

  presentationContext13 = [(AVTransition *)self presentationContext];
  sourceView = [presentationContext13 sourceView];
  if (sourceView)
  {

LABEL_6:
    presentationContext14 = [(AVTransition *)self presentationContext];
    presentedView5 = [presentationContext14 presentedView];
    presentationContext15 = [(AVTransition *)self presentationContext];
    sourceView2 = [presentationContext15 sourceView];
    [(AVTransition *)self _updateCornerAppearanceAttributesOfView:presentedView5 toSourceView:sourceView2 similarity:1.0];

    presentationContext16 = [(AVTransition *)self presentationContext];
    presentedView6 = [presentationContext16 presentedView];
    [(AVTransition *)self _sourceViewFrameInContainerView];
    presentedView7 = presentedView6;
    goto LABEL_7;
  }

  transitionContext5 = [(AVTransition *)self transitionContext];
  isInteractive = [transitionContext5 isInteractive];

  if (isInteractive)
  {
    goto LABEL_6;
  }

  transitionContext6 = [(AVTransition *)self transitionContext];
  containerView5 = [transitionContext6 containerView];
  [containerView5 bounds];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;

  if (transitionStyle == 1)
  {
    v63.origin.x = v54;
    v63.origin.y = v56;
    v63.size.width = v58;
    v63.size.height = v60;
    CGRectGetHeight(v63);
  }

  presentationContext16 = [(AVTransition *)self presentationContext];
  presentedView7 = [presentationContext16 presentedView];
  presentedView6 = presentedView7;
LABEL_7:
  [presentedView7 setFrame:?];

  presentationContext17 = [(AVTransition *)self presentationContext];
  presentedPresentationContainerView = [presentationContext17 presentedPresentationContainerView];
  presentationContext18 = [(AVTransition *)self presentationContext];
  presentingTransition = [presentationContext18 presentingTransition];
  initialInterfaceOrientation = [presentingTransition initialInterfaceOrientation];
  presentationContext19 = [(AVTransition *)self presentationContext];
  presentingTransition2 = [presentationContext19 presentingTransition];
  [presentedPresentationContainerView willStartPresentationTransitionFromInterfaceOrientation:initialInterfaceOrientation toOrientation:objc_msgSend(presentingTransition2 needsCounterRotation:{"finalInterfaceOrientation"), 0}];
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
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  presentationContext = [(AVTransition *)self presentationContext];
  isPresenting = [presentationContext isPresenting];

  presentationContext2 = [(AVTransition *)self presentationContext];
  presentationContext3 = presentationContext2;
  if (isPresenting)
  {
    presentingTransition = [presentationContext2 presentingTransition];
LABEL_7:
    v10 = presentingTransition;
    transitionContext = [(AVTransition *)self transitionContext];
    [v10 setWasInitiallyInteractive:{objc_msgSend(transitionContext, "isInteractive")}];

    goto LABEL_8;
  }

  isDismissing = [presentationContext2 isDismissing];

  if (isDismissing)
  {
    presentationContext3 = [(AVTransition *)self presentationContext];
    presentingTransition = [presentationContext3 dismissingTransition];
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

  clientAnimator = [(AVTransition *)self clientAnimator];
  [clientAnimator setScrubsLinearly:0];

  allAnimators = [(AVTransition *)self allAnimators];
  clientAnimator2 = [(AVTransition *)self clientAnimator];
  [allAnimators addObject:clientAnimator2];

  v21 = objc_alloc(MEMORY[0x1E69DD278]);
  [(AVTransition *)self duration];
  v23 = v22;
  v24 = [objc_alloc(MEMORY[0x1E69DC908]) initWithAnimationCurve:5];
  v25 = [v21 initWithDuration:v24 timingParameters:v23];
  transitionAnimator = self->_transitionAnimator;
  self->_transitionAnimator = v25;

  transitionAnimator = [(AVTransition *)self transitionAnimator];
  [transitionAnimator setScrubsLinearly:0];

  allAnimators2 = [(AVTransition *)self allAnimators];
  transitionAnimator2 = [(AVTransition *)self transitionAnimator];
  [allAnimators2 addObject:transitionAnimator2];

  presentationContext4 = [(AVTransition *)self presentationContext];
  backgroundView = [presentationContext4 backgroundView];
  delegate = [(AVTransition *)self delegate];
  v33 = [delegate transitionBackgroundViewBackgroundColor:self];
  [backgroundView setBackgroundColor:v33];

  presentationContext5 = [(AVTransition *)self presentationContext];
  presentedView = [presentationContext5 presentedView];
  delegate2 = [(AVTransition *)self delegate];
  v37 = [delegate2 transitionPresentedViewBackgroundColor:self];
  [presentedView setBackgroundColor:v37];

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
  transitionAnimator = [(AVTransition *)self transitionAnimator];
  [transitionAnimator fractionComplete];
  v5 = v4;

  transitionAnimator2 = [(AVTransition *)self transitionAnimator];
  LODWORD(transitionAnimator) = [transitionAnimator2 isReversed];

  result = 1.0 - v5;
  if (!transitionAnimator)
  {
    return v5;
  }

  return result;
}

- (double)duration
{
  presentationContext = [(AVTransition *)self presentationContext];
  presentedViewController = [presentationContext presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  [transitionCoordinator transitionDuration];
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
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  v4.receiver = self;
  v4.super_class = AVTransition;
  [(AVTransition *)&v4 dealloc];
}

- (AVTransition)initWithTransitionContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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

    array = [MEMORY[0x1E695DF70] array];
    allAnimators = v5->_allAnimators;
    v5->_allAnimators = array;

    objc_storeWeak(&v5->_transitionContext, contextCopy);
  }

  return v5;
}

@end