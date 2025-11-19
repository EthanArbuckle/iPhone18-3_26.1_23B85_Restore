@interface ARUICountdownAnimator
- (ARUICountdownAnimator)initWithTimeline:(id)a3;
- (ARUICountdownAnimatorDelegate)delegate;
- (ARUICountdownView)countdownView;
- (void)_applyAnimationAtIndex:(unint64_t)a3;
- (void)_applyCancelAnimationAtIndex:(unint64_t)a3;
- (void)_delegate_completedAnimation:(id)a3;
- (void)_delegate_didFinishAnimating;
- (void)_delegate_performingAnimation:(id)a3 withDuration:(double)a4;
- (void)_delegate_willBeginAnimating;
- (void)_delegate_willBeginAnimation:(id)a3 afterDelay:(double)a4;
- (void)beginAnimations;
- (void)cancelAnimations;
- (void)prepareToAnimate;
- (void)setDelegate:(id)a3;
@end

@implementation ARUICountdownAnimator

- (ARUICountdownAnimator)initWithTimeline:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ARUICountdownAnimator;
  v6 = [(ARUICountdownAnimator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timeline, a3);
    *&v7->_animating = 0;
  }

  return v7;
}

- (void)prepareToAnimate
{
  v4 = [(ARUICountdownTimeline *)self->_timeline prepareToAnimate];
  WeakRetained = objc_loadWeakRetained(&self->_countdownView);
  [v4 applyToCountdownView:WeakRetained completion:0];
}

- (void)beginAnimations
{
  if (!self->_animating)
  {
    [(ARUICountdownAnimator *)self _delegate_willBeginAnimating];
    *&self->_animating = 1;
    objc_initWeak(&location, self);
    v3 = [(ARUICountdownTimeline *)self->_timeline prepareToAnimate];
    objc_storeWeak(&self->_currentAnimation, v3);

    v4 = [(ARUICountdownTimeline *)self->_timeline prepareToAnimate];
    WeakRetained = objc_loadWeakRetained(&self->_countdownView);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__ARUICountdownAnimator_beginAnimations__block_invoke;
    v6[3] = &unk_1E83CE390;
    objc_copyWeak(&v7, &location);
    [v4 applyToCountdownView:WeakRetained completion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __40__ARUICountdownAnimator_beginAnimations__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _applyAnimationAtIndex:0];
}

- (void)_applyAnimationAtIndex:(unint64_t)a3
{
  if (![(ARUICountdownAnimator *)self canceled]&& [(ARUICountdownAnimator *)self isAnimating])
  {
    v5 = [(ARUICountdownTimeline *)self->_timeline animations];
    v6 = [v5 count];

    if (v6 <= a3)
    {
      *&self->_animating = 0;

      [(ARUICountdownAnimator *)self _delegate_didFinishAnimating];
    }

    else
    {
      v7 = [(ARUICountdownTimeline *)self->_timeline animations];
      v8 = [v7 objectAtIndex:a3];

      objc_storeWeak(&self->_currentAnimation, v8);
      [v8 delay];
      v10 = v9;
      [(ARUICountdownAnimator *)self _delegate_willBeginAnimation:v8 afterDelay:?];
      objc_initWeak(&location, self);
      objc_initWeak(&from, v8);
      v11 = v10;
      if (ARUIFloatGreater(v11, 0.0))
      {
        objc_copyWeak(&to, &self->_countdownView);
        v12 = dispatch_time(0, (v10 * 1000000000.0));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __48__ARUICountdownAnimator__applyAnimationAtIndex___block_invoke;
        block[3] = &unk_1E83CE400;
        objc_copyWeak(&v19, &location);
        objc_copyWeak(&v20, &from);
        objc_copyWeak(v21, &to);
        v21[1] = a3;
        dispatch_after(v12, MEMORY[0x1E69E96A0], block);
        objc_destroyWeak(v21);
        objc_destroyWeak(&v20);
        objc_destroyWeak(&v19);
        p_to = &to;
      }

      else
      {
        [v8 duration];
        [(ARUICountdownAnimator *)self _delegate_performingAnimation:v8 withDuration:?];
        WeakRetained = objc_loadWeakRetained(&self->_countdownView);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __48__ARUICountdownAnimator__applyAnimationAtIndex___block_invoke_3;
        v15[3] = &unk_1E83CE3D8;
        objc_copyWeak(&v16, &location);
        objc_copyWeak(v17, &from);
        v17[1] = a3;
        [v8 applyToCountdownView:WeakRetained completion:v15];

        objc_destroyWeak(v17);
        p_to = &v16;
      }

      objc_destroyWeak(p_to);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

void __48__ARUICountdownAnimator__applyAnimationAtIndex___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  if (([WeakRetained canceled] & 1) == 0 && objc_msgSend(WeakRetained, "isAnimating"))
  {
    v3 = objc_loadWeakRetained(a1 + 5);
    v4 = objc_loadWeakRetained(a1 + 6);
    [v3 duration];
    [WeakRetained _delegate_performingAnimation:v3 withDuration:?];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__ARUICountdownAnimator__applyAnimationAtIndex___block_invoke_2;
    v5[3] = &unk_1E83CE3D8;
    objc_copyWeak(&v6, a1 + 4);
    objc_copyWeak(v7, a1 + 5);
    v7[1] = a1[7];
    [v3 applyToCountdownView:v4 completion:v5];
    objc_destroyWeak(v7);
    objc_destroyWeak(&v6);
  }
}

void __48__ARUICountdownAnimator__applyAnimationAtIndex___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _delegate_completedAnimation:v2];
  [WeakRetained _applyAnimationAtIndex:*(a1 + 48) + 1];
}

void __48__ARUICountdownAnimator__applyAnimationAtIndex___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _delegate_completedAnimation:v2];
  [WeakRetained _applyAnimationAtIndex:*(a1 + 48) + 1];
}

- (void)cancelAnimations
{
  if (self->_animating)
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentAnimation);
    v4 = [WeakRetained cancelable];

    if (v4)
    {
      self->_canceled = 1;
      objc_initWeak(&location, self);
      v5 = [(ARUICountdownTimeline *)self->_timeline prepareToCancel];
      objc_storeWeak(&self->_currentAnimation, v5);

      v6 = [(ARUICountdownTimeline *)self->_timeline prepareToCancel];
      v7 = objc_loadWeakRetained(&self->_countdownView);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __41__ARUICountdownAnimator_cancelAnimations__block_invoke;
      v8[3] = &unk_1E83CE390;
      objc_copyWeak(&v9, &location);
      [v6 applyToCountdownView:v7 completion:v8];

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void __41__ARUICountdownAnimator_cancelAnimations__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _applyCancelAnimationAtIndex:0];
}

- (void)_applyCancelAnimationAtIndex:(unint64_t)a3
{
  v5 = [(ARUICountdownTimeline *)self->_timeline cancelAnimations];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    *&self->_animating = 0;

    [(ARUICountdownAnimator *)self _delegate_didFinishAnimating];
  }

  else
  {
    v7 = [(ARUICountdownTimeline *)self->_timeline cancelAnimations];
    v8 = [v7 objectAtIndex:a3];

    objc_storeWeak(&self->_currentAnimation, v8);
    [(ARUICountdownAnimator *)self _delegate_willBeginAnimation:v8 afterDelay:0.0];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v8);
    [v8 duration];
    [(ARUICountdownAnimator *)self _delegate_performingAnimation:v8 withDuration:?];
    WeakRetained = objc_loadWeakRetained(&self->_countdownView);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__ARUICountdownAnimator__applyCancelAnimationAtIndex___block_invoke;
    v10[3] = &unk_1E83CE3D8;
    objc_copyWeak(&v11, &location);
    objc_copyWeak(v12, &from);
    v12[1] = a3;
    [v8 applyToCountdownView:WeakRetained completion:v10];

    objc_destroyWeak(v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __54__ARUICountdownAnimator__applyCancelAnimationAtIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _delegate_completedAnimation:v2];
  [WeakRetained _applyCancelAnimationAtIndex:*(a1 + 48) + 1];
}

- (void)_delegate_willBeginAnimating
{
  if (self->_delegateFlags.willBeginAnimating)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained countdownAnimatorWillBeginAnimating:self];
  }
}

- (void)_delegate_willBeginAnimation:(id)a3 afterDelay:(double)a4
{
  if (self->_delegateFlags.willBeginAnimation)
  {
    v7 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained countdownAnimator:self willBeginAnimation:v7 afterDelay:a4];
  }
}

- (void)_delegate_performingAnimation:(id)a3 withDuration:(double)a4
{
  if (self->_delegateFlags.performingAnimation)
  {
    v7 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained countdownAnimator:self performingAnimation:v7 withDuration:a4];
  }
}

- (void)_delegate_completedAnimation:(id)a3
{
  if (self->_delegateFlags.completedAnimation)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained countdownAnimator:self completedAnimation:v5];
  }
}

- (void)_delegate_didFinishAnimating
{
  if (self->_delegateFlags.didFinishAnimating)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained countdownAnimatorDidFinishAnimating:self];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    self->_delegateFlags.willBeginAnimating = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.willBeginAnimation = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.performingAnimation = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.completedAnimation = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.didFinishAnimating = objc_opt_respondsToSelector() & 1;
    objc_storeWeak(&self->_delegate, obj);
  }
}

- (ARUICountdownView)countdownView
{
  WeakRetained = objc_loadWeakRetained(&self->_countdownView);

  return WeakRetained;
}

- (ARUICountdownAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end