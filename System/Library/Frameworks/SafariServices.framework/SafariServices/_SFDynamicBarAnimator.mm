@interface _SFDynamicBarAnimator
- (BOOL)_canTransitionToState:(int64_t)a3 withMinimumTopBarHeight:(double)a4;
- (_SFDynamicBarAnimator)init;
- (_SFDynamicBarAnimatorDelegate)delegate;
- (double)_bottomBarOffsetForTopBarHeight:(double)a3;
- (void)_displayLinkFired:(id)a3;
- (void)_endDraggingWithVelocity:(double)a3;
- (void)_moveBarsWithDelta:(double)a3;
- (void)_setInSteadyState:(BOOL)a3;
- (void)_transitionToSteadyState;
- (void)_updateDisplayLink;
- (void)_updateOutputs;
- (void)attemptTransitionToState:(int64_t)a3 animated:(BOOL)a4;
- (void)beginDraggingWithOffset:(double)a3;
- (void)dealloc;
- (void)endDraggingWithTargetOffset:(double)a3 velocity:(double)a4;
- (void)endScrolling;
- (void)performBatchUpdates:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setBottomBarOffset:(double)a3 forState:(int64_t)a4;
- (void)setDelegate:(id)a3;
- (void)setMinimumTopBarHeight:(double)a3;
- (void)setTopBarHeight:(double)a3 forState:(int64_t)a4;
- (void)updateDraggingWithOffset:(double)a3;
@end

@implementation _SFDynamicBarAnimator

- (_SFDynamicBarAnimator)init
{
  v8.receiver = self;
  v8.super_class = _SFDynamicBarAnimator;
  v2 = [(_SFDynamicBarAnimator *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 1;
    v2->_inSteadyState = 1;
    v4 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    stateObservers = v3->_stateObservers;
    v3->_stateObservers = v4;

    v6 = v3;
  }

  return v3;
}

- (void)_updateOutputs
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_performingBatchUpdates)
  {
    topBarHeight = self->_topBarHeight;
    bottomBarOffset = self->_bottomBarOffset;
    state = self->_state;
    [(_SFDynamicBarAnimator *)self _constrainTopBarHeight:self->_unroundedTopBarHeight];
    self->_unroundedTopBarHeight = v6;
    [(_SFDynamicBarAnimator *)self _constrainTopBarHeight:self->_targetTopBarHeight];
    self->_targetTopBarHeight = v7;
    if (!self->_dragging && v7 != self->_topBarHeightForState[0])
    {
      self->_targetTopBarHeight = self->_topBarHeightForState[1];
    }

    _SFRoundFloatToPixels();
    self->_topBarHeight = v8;
    [(_SFDynamicBarAnimator *)self _updateDisplayLink];
    [(_SFDynamicBarAnimator *)self _bottomBarOffsetForTopBarHeight:self->_unroundedTopBarHeight];
    _SFRoundFloatToPixels();
    self->_bottomBarOffset = v9;
    if (_SFEqualWithEpsilon())
    {
      v10 = _SFEqualWithEpsilon();
    }

    else
    {
      v10 = 0;
    }

    v11 = _SFEqualWithEpsilon();
    if (v11)
    {
      LOBYTE(v11) = _SFEqualWithEpsilon();
    }

    self->_state = v10 ^ 1u;
    v12 = v10 | v11;
    v13 = ((v10 | v11) & 1) != 0 && self->_displayLink == 0;
    [(_SFDynamicBarAnimator *)self _setInSteadyState:v13];
    if (state != self->_state)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = self->_stateObservers;
      v15 = [(NSPointerArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        do
        {
          v18 = 0;
          do
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v21 + 1) + 8 * v18);
            if (objc_opt_respondsToSelector())
            {
              [v19 dynamicBarAnimatorStateDidChange:{self, v21}];
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [(NSPointerArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v16);
      }
    }

    if (topBarHeight != self->_topBarHeight || bottomBarOffset != self->_bottomBarOffset || state != self->_state)
    {
      self->_sendingOutputsDidChange = 1;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained dynamicBarAnimatorOutputsDidChange:self];

      self->_sendingOutputsDidChange = 0;
      if ((v12 & 1) == 0 && !self->_dragging && !self->_displayLink)
      {
        [(_SFDynamicBarAnimator *)self _transitionToSteadyState];
      }
    }
  }
}

- (void)_updateDisplayLink
{
  if (vabdd_f64(self->_topBarHeight, self->_targetTopBarHeight) >= 0.1 || vabdd_f64(self->_lastUnroundedTopBarHeight, self->_unroundedTopBarHeight) >= 10.0)
  {
    if (self->_displayLink)
    {
      return;
    }

    v6 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__displayLinkFired_];
    displayLink = self->_displayLink;
    self->_displayLink = v6;

    v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:*&v10.minimum, *&v10.maximum, *&v10.preferred];
    [(CADisplayLink *)self->_displayLink setHighFrameRateReason:1638405];
    v8 = self->_displayLink;
    v9 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v8 addToRunLoop:v9 forMode:*MEMORY[0x1E695DA28]];

    unroundedTopBarHeight = self->_unroundedTopBarHeight;
  }

  else
  {
    v3 = self->_displayLink;
    if (!v3)
    {
      return;
    }

    [(CADisplayLink *)v3 invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;

    unroundedTopBarHeight = self->_topBarHeight;
    self->_targetTopBarHeight = unroundedTopBarHeight;
    self->_unroundedTopBarHeight = unroundedTopBarHeight;
  }

  self->_lastUnroundedTopBarHeight = unroundedTopBarHeight;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _SFDynamicBarAnimator;
  [(_SFDynamicBarAnimator *)&v2 dealloc];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [(_SFDynamicBarAnimator *)self removeObserver:WeakRetained];
    }

    objc_storeWeak(&self->_delegate, obj);
    if (obj)
    {
      [(_SFDynamicBarAnimator *)self addObserver:?];
    }
  }
}

- (void)removeObserver:(id)a3
{
  stateObservers = self->_stateObservers;
  v5 = a3;
  [(NSPointerArray *)stateObservers compact];
  v6 = [(NSPointerArray *)self->_stateObservers allObjects];
  v7 = [v6 indexOfObject:v5];

  v8 = self->_stateObservers;

  [(NSPointerArray *)v8 removePointerAtIndex:v7];
}

- (void)_moveBarsWithDelta:(double)a3
{
  unroundedTopBarHeight = self->_unroundedTopBarHeight;
  v6 = self->_targetTopBarHeight - a3;
  self->_targetTopBarHeight = v6;
  v7 = self->_topBarHeightForState[1] - self->_topBarHeightForState[0];
  v8 = vabdd_f64(unroundedTopBarHeight, v6);
  self->_unroundedTopBarHeight = unroundedTopBarHeight - exp(-(v8 * 3.0 / v7 * (v8 * 3.0 / v7))) * a3;

  [(_SFDynamicBarAnimator *)self _updateOutputs];
}

- (void)attemptTransitionToState:(int64_t)a3 animated:(BOOL)a4
{
  if ([(_SFDynamicBarAnimator *)self canTransitionToState:?])
  {
    self->_didHideOrShowBarsExplicitly = 1;
    v7 = self->_topBarHeightForState[a3];
    self->_targetTopBarHeight = v7;
    if (!a4)
    {
      self->_lastUnroundedTopBarHeight = v7;
      self->_unroundedTopBarHeight = self->_topBarHeightForState[a3];
    }

    [(_SFDynamicBarAnimator *)self _updateOutputs];
  }
}

- (void)_transitionToSteadyState
{
  if (self->_topBarHeight >= self->_topBarHeightForState[1] * 0.9 || (v3 = [(_SFDynamicBarAnimator *)self canTransitionToState:0], v4 = 0, !v3))
  {
    v4 = 1;
  }

  [(_SFDynamicBarAnimator *)self attemptTransitionToState:v4 animated:1];
}

- (double)_bottomBarOffsetForTopBarHeight:(double)a3
{
  v4 = self->_topBarHeightForState[0];
  v5 = self->_topBarHeightForState[1];
  v7 = self->_bottomBarOffsetForState[0];
  v6 = self->_bottomBarOffsetForState[1];
  if (_SFEqualWithEpsilon())
  {
    return v6;
  }

  else
  {
    return (a3 - v4) / (v5 - v4) * v6 + (1.0 - (a3 - v4) / (v5 - v4)) * v7;
  }
}

- (void)_setInSteadyState:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_inSteadyState == !a3)
  {
    v3 = a3;
    self->_inSteadyState = a3;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_stateObservers;
    v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (v3)
          {
            if (objc_opt_respondsToSelector())
            {
              [v10 dynamicBarAnimatorWillEnterSteadyState:self];
            }
          }

          else if (objc_opt_respondsToSelector())
          {
            [v10 dynamicBarAnimatorWillLeaveSteadyState:{self, v11}];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)_canTransitionToState:(int64_t)a3 withMinimumTopBarHeight:(double)a4
{
  v4 = (&self->super.isa + a3);
  [(_SFDynamicBarAnimator *)self _constrainTopBarHeight:v4[1] withMinimumTopBarHeight:a4];
  return v5 == v4[1];
}

- (void)_displayLinkFired:(id)a3
{
  [a3 duration];
  unroundedTopBarHeight = self->_unroundedTopBarHeight;
  self->_unroundedTopBarHeight = unroundedTopBarHeight - ((self->_lastUnroundedTopBarHeight - unroundedTopBarHeight) / v5 + ((self->_lastUnroundedTopBarHeight - unroundedTopBarHeight) / v5 * -50.0 + (unroundedTopBarHeight - self->_targetTopBarHeight) * 900.0) * v5) * v5;
  self->_lastUnroundedTopBarHeight = unroundedTopBarHeight;

  [(_SFDynamicBarAnimator *)self _updateOutputs];
}

- (void)beginDraggingWithOffset:(double)a3
{
  if (!self->_ignoresDragging)
  {
    self->_dragging = 1;
    *&self->_didHideBarsByMoving = 0;
    self->_lastOffset = a3;
  }
}

- (void)updateDraggingWithOffset:(double)a3
{
  if (self->_dragging)
  {
    if (self->_state == 1 && !self->_didHideOrShowBarsExplicitly)
    {
      v5 = a3 - self->_lastOffset;
      v6 = fmax(self->_topBarHeight - self->_topBarHeightForState[0] - v5, 0.0);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v8 = [WeakRetained dynamicBarAnimator:self canTransitionToState:0 byDraggingWithOffset:v6];

      if (v8)
      {
        [(_SFDynamicBarAnimator *)self _moveBarsWithDelta:v5];
        if (!self->_state)
        {
          self->_didHideBarsByMoving = 1;
        }
      }
    }

    self->_lastOffset = a3;
  }
}

- (void)endDraggingWithTargetOffset:(double)a3 velocity:(double)a4
{
  if (!self->_ignoresDragging)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dynamicBarAnimator:self minimumTopBarHeightForOffset:a3];
    v9 = v8;

    if (a4 <= 0.0 || [(_SFDynamicBarAnimator *)self canTransitionToState:0]|| ![(_SFDynamicBarAnimator *)self _canTransitionToState:0 withMinimumTopBarHeight:v9])
    {

      [(_SFDynamicBarAnimator *)self _endDraggingWithVelocity:a4];
    }
  }
}

- (void)endScrolling
{
  if (self->_dragging)
  {
    [(_SFDynamicBarAnimator *)self _endDraggingWithVelocity:0.0];
  }
}

- (void)_endDraggingWithVelocity:(double)a3
{
  self->_dragging = 0;
  if (self->_didHideOrShowBarsExplicitly)
  {
    if (![(_SFDynamicBarAnimator *)self targetState]&& [(_SFDynamicBarAnimator *)self canTransitionToState:0])
    {
      v4 = self;
      v5 = 0;
LABEL_8:

      [(_SFDynamicBarAnimator *)v4 attemptTransitionToState:v5 animated:1];
      return;
    }

LABEL_7:
    v4 = self;
    v5 = 1;
    goto LABEL_8;
  }

  if (a3 < -250.0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained dynamicBarAnimator:self canTransitionToState:1 byDraggingWithOffset:self->_lastOffset];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  [(_SFDynamicBarAnimator *)self _transitionToSteadyState];
}

- (void)performBatchUpdates:(id)a3
{
  self->_performingBatchUpdates = 1;
  (*(a3 + 2))(a3, a2);
  self->_performingBatchUpdates = 0;

  [(_SFDynamicBarAnimator *)self _updateOutputs];
}

- (void)setTopBarHeight:(double)a3 forState:(int64_t)a4
{
  if (self->_topBarHeightForState[a4] != a3)
  {
    self->_topBarHeightForState[a4] = a3;
    if (self->_state == a4 && !self->_displayLink)
    {
      self->_unroundedTopBarHeight = a3;
      self->_lastUnroundedTopBarHeight = a3;
      self->_targetTopBarHeight = a3;
      [(_SFDynamicBarAnimator *)self _updateOutputs];
    }
  }
}

- (void)setBottomBarOffset:(double)a3 forState:(int64_t)a4
{
  if (self->_bottomBarOffsetForState[a4] != a3)
  {
    self->_bottomBarOffsetForState[a4] = a3;
    if (self->_state == a4)
    {
      [(_SFDynamicBarAnimator *)self _updateOutputs];
    }
  }
}

- (void)setMinimumTopBarHeight:(double)a3
{
  if (self->_minimumTopBarHeight != a3)
  {
    self->_minimumTopBarHeight = a3;
    [(_SFDynamicBarAnimator *)self _updateOutputs];
  }
}

- (_SFDynamicBarAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end