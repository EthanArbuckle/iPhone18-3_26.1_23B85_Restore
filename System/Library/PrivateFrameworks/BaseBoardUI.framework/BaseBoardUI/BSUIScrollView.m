@interface BSUIScrollView
- ($57C6A38B097B1DD8ADCFE6DE7C16ED39)currentScrollContext;
- (BOOL)setContentOffset:(CGPoint)a3 withAnimationSettings:(id)a4 completion:(id)a5;
- (BSUIScrollView)initWithFrame:(CGRect)a3;
- (BSUIScrollViewDelegate)delegate;
- (uint64_t)_setContentOffset:(void *)a3 animated:(void *)a4 withAnimation:(double)a5 completion:(double)a6;
- (uint64_t)_setCurrentContentOffsetImmediatelyIfScrollInterruptionAnimated:(uint64_t)result;
- (void)_callScrollCompletionIfNecessary;
- (void)_didEndDraggingNotification:(id)a3;
- (void)_didEndScrollAnimationNotification:(id)a3;
- (void)_notifyDidScroll;
- (void)_setContentOffset:(CGPoint)a3 animation:(id)a4;
- (void)_setContentOffset:(_BYTE *)a1 withBlock:(void *)a2;
- (void)_setScrolling:(uint64_t)a1;
- (void)_updateScrolling;
- (void)dealloc;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)setDelegate:(id)a3;
@end

@implementation BSUIScrollView

- (void)_updateScrolling
{
  if (a1)
  {
    if ([a1 isDragging] & 1) != 0 || (objc_msgSend(a1, "isDecelerating"))
    {
      v2 = 1;
    }

    else
    {
      v2 = [a1 isScrollAnimating];
    }

    [(BSUIScrollView *)a1 _setScrolling:v2];

    [(BSUIScrollView *)a1 _callScrollCompletionIfNecessary];
  }
}

- (void)_callScrollCompletionIfNecessary
{
  if (([a1 isScrolling] & 1) == 0 && a1[270])
  {
    v3 = MEMORY[0x1A58E5D00]();
    v2 = a1[270];
    a1[270] = 0;

    v3[2](v3, 0);
  }
}

- (void)_notifyDidScroll
{
  self->_didScroll = 1;
  [(BSUIScrollView *)self _setScrolling:?];
  v10.receiver = self;
  v10.super_class = BSUIScrollView;
  [(BSUIScrollView *)&v10 _notifyDidScroll];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  [(BSUIScrollView *)self currentScrollContext];
  v4 = v7;
  v5 = v8;
  v6 = v9;
  [(BSUIScrollView *)self _bs_didScrollWithContext:&v4];
  v3 = [(BSUIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = v7;
    v5 = v8;
    v6 = v9;
    [v3 scrollViewDidScroll:self withContext:&v4];
  }

  [(BSUIScrollView *)self _updateScrolling];
}

- (BSUIScrollViewDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = BSUIScrollView;
  v2 = [(BSUIScrollView *)&v4 delegate];

  return v2;
}

- ($57C6A38B097B1DD8ADCFE6DE7C16ED39)currentScrollContext
{
  v3 = self;
  if (self && (self = [($57C6A38B097B1DD8ADCFE6DE7C16ED39 *)self isScrolling], self))
  {
    self = [($57C6A38B097B1DD8ADCFE6DE7C16ED39 *)v3 isDragging];
    if (self & 1) != 0 || (self = [($57C6A38B097B1DD8ADCFE6DE7C16ED39 *)v3 isTracking], (self))
    {
      v5 = 3;
    }

    else
    {
      self = [($57C6A38B097B1DD8ADCFE6DE7C16ED39 *)v3 isScrollAnimating];
      if (self)
      {
        v5 = 2;
      }

      else
      {
        self = [($57C6A38B097B1DD8ADCFE6DE7C16ED39 *)v3 isDecelerating];
        v5 = 1;
        if (self)
        {
          v5 = 2;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  retstr->var0 = v5;
  retstr->var1 = v3[54].var1;
  retstr->var2 = v3[54].var2;
  return self;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BSUIScrollView;
  [(BSUIScrollView *)&v4 dealloc];
}

- (BSUIScrollView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = BSUIScrollView;
  v3 = [(BSUIScrollView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__willBeginDraggingNotification_ name:*MEMORY[0x1E69DEA58] object:v3];
    [v4 addObserver:v3 selector:sel__didEndDraggingNotification_ name:*MEMORY[0x1E69DEA48] object:v3];
    [v4 addObserver:v3 selector:sel__didDidEndDeceleratingNotification_ name:*MEMORY[0x1E69DEA40] object:v3];
    [v4 addObserver:v3 selector:sel__didEndScrollAnimationNotification_ name:@"_UIScrollViewAnimationEndedNotification" object:v3];
  }

  return v3;
}

- (void)setDelegate:(id)a3
{
  v3.receiver = self;
  v3.super_class = BSUIScrollView;
  [(BSUIScrollView *)&v3 setDelegate:a3];
}

- (uint64_t)_setContentOffset:(void *)a3 animated:(void *)a4 withAnimation:(double)a5 completion:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (a1)
  {
    v14 = v12;
    v15 = MEMORY[0x1A58E5D00](*(a1 + 2160));
    v16 = v15;
    if (v14 | v15)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __39__BSUIScrollView__setScrollCompletion___block_invoke;
      v23 = &unk_1E76B7F90;
      v24 = v15;
      v25 = v14;
      v17 = [&v20 copy];
      v18 = *(a1 + 2160);
      *(a1 + 2160) = v17;
    }

    *(a1 + 2154) = 0;
    if (v11 && a2)
    {
      [a1 _setContentOffset:v11 animation:{a5, a6}];
    }

    else
    {
      [a1 setContentOffset:a2 animated:{a5, a6, v20, v21, v22, v23}];
    }

    if (*(a1 + 2154))
    {
      a1 = 1;
    }

    else
    {
      a1 = [a1 isScrolling];
    }
  }

  return a1;
}

- (BOOL)setContentOffset:(CGPoint)a3 withAnimationSettings:(id)a4 completion:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = v9;
    v12 = v11;
    if (self)
    {
      if ([v11 isSpringAnimation])
      {
        v13 = objc_alloc_init(MEMORY[0x1E69794A8]);
        [v12 mass];
        [v13 setMass:?];
        [v12 stiffness];
        [v13 setStiffness:?];
        [v12 damping];
        [v13 setDamping:?];
        [v12 epsilon];
        [v13 durationForEpsilon:?];
        [v13 setDuration:?];
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x1E6979318]);
        [v12 duration];
        [v13 setDuration:?];
        [v12 speed];
        [v13 setSpeed:?];
      }

      v14 = [v12 timingFunction];
      [v13 setTimingFunction:v14];
    }

    else
    {
      v13 = 0;
    }

    v15 = [(BSUIScrollView *)self _setContentOffset:v13 animated:v10 withAnimation:x completion:y];
  }

  else
  {
    v15 = [(BSUIScrollView *)self _setContentOffset:0 animated:v10 withAnimation:x completion:y];
  }

  return v15;
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  p_previousContentOffset = &self->_previousContentOffset;
  [(BSUIScrollView *)self contentOffset];
  p_previousContentOffset->x = v7;
  p_previousContentOffset->y = v8;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__BSUIScrollView_setContentOffset___block_invoke;
  v9[3] = &unk_1E76B7F18;
  *&v9[5] = x;
  *&v9[6] = y;
  v9[4] = self;
  [BSUIScrollView _setContentOffset:v9 withBlock:?];
}

id __35__BSUIScrollView_setContentOffset___block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = BSUIScrollView;
  return objc_msgSendSuper2(&v2, sel_setContentOffset_, *(a1 + 40), *(a1 + 48));
}

- (void)_setContentOffset:(_BYTE *)a1 withBlock:(void *)a2
{
  v6 = a2;
  if (a1)
  {
    if (!v6)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel__setContentOffset_withBlock_ object:a1 file:@"BSUIScrollView.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
    }

    [a1 contentOffset];
    v3 = BSPointEqualToPoint();
    v4 = [a1 isScrolling] | v3;
    if ((v4 & 1) == 0)
    {
      [(BSUIScrollView *)a1 _setScrolling:?];
    }

    v6[2]();
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    if (!v3)
    {
      goto LABEL_11;
    }

    if (a1[2155])
    {
      [(BSUIScrollView *)a1 _callScrollCompletionIfNecessary];
    }

    else
    {
LABEL_10:
      [(BSUIScrollView *)a1 _updateScrolling];
    }
  }

LABEL_11:
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__BSUIScrollView_setContentOffset_animated___block_invoke;
  v8[3] = &unk_1E76B7F40;
  objc_copyWeak(v9, &location);
  v10 = a4;
  v9[1] = *&x;
  v9[2] = *&y;
  v8[4] = self;
  [BSUIScrollView _setContentOffset:v8 withBlock:?];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

id __44__BSUIScrollView_setContentOffset_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(BSUIScrollView *)WeakRetained _setCurrentContentOffsetImmediatelyIfScrollInterruptionAnimated:?];

  v3 = *(a1 + 64);
  v5.receiver = *(a1 + 32);
  v5.super_class = BSUIScrollView;
  return objc_msgSendSuper2(&v5, sel_setContentOffset_animated_, v3, *(a1 + 48), *(a1 + 56));
}

- (uint64_t)_setCurrentContentOffsetImmediatelyIfScrollInterruptionAnimated:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = [result isScrolling];
    v3[2153] = result & a2;
    if (v3[2153] == 1)
    {
      [v3 contentOffset];
      v4.receiver = v3;
      v4.super_class = BSUIScrollView;
      result = objc_msgSendSuper2(&v4, sel_setContentOffset_animated_, 0);
      v3[2153] = 0;
    }
  }

  return result;
}

- (void)_setContentOffset:(CGPoint)a3 animation:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__BSUIScrollView__setContentOffset_animation___block_invoke;
  v9[3] = &unk_1E76B7F68;
  objc_copyWeak(v12, &location);
  v12[1] = *&x;
  v12[2] = *&y;
  v10 = v7;
  v11 = self;
  v8 = v7;
  [BSUIScrollView _setContentOffset:v9 withBlock:?];

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

id __46__BSUIScrollView__setContentOffset_animation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [(BSUIScrollView *)WeakRetained _setCurrentContentOffsetImmediatelyIfScrollInterruptionAnimated:?];

  v3 = *(a1 + 32);
  v5.receiver = *(a1 + 40);
  v5.super_class = BSUIScrollView;
  return objc_msgSendSuper2(&v5, sel__setContentOffset_animation_, v3, *(a1 + 56), *(a1 + 64));
}

- (void)_setScrolling:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    if (*(a1 + 2200) != a2)
    {
      if (a2)
      {
        [a1 _bs_willBeginScrolling];
        v8 = [a1 delegate];
        if (objc_opt_respondsToSelector())
        {
          [v8 scrollViewWillBeginScrolling:a1];
        }
      }

      else if (*(a1 + 2153))
      {
        return;
      }

      *(a1 + 2200) = v2;
      [a1 contentOffset];
      *(a1 + 2184) = v4;
      *(a1 + 2192) = v5;
      if ((v2 & 1) == 0)
      {
        v9 = MEMORY[0x1A58E5D00](*(a1 + 2160));
        v6 = *(a1 + 2160);
        *(a1 + 2160) = 0;

        [a1 _bs_didEndScrolling];
        v7 = [a1 delegate];
        if (objc_opt_respondsToSelector())
        {
          [v7 scrollViewDidEndScrolling:a1];
        }

        if (v9)
        {
          v9[2](v9, 1);
        }
      }
    }
  }
}

uint64_t __39__BSUIScrollView__setScrollCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, a2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_didEndDraggingNotification:(id)a3
{
  v7 = a3;
  v4 = [v7 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DEA50]];
  v6 = [v5 BOOLValue];

  if ((v6 & 1) == 0)
  {
    [(BSUIScrollView *)self _setScrolling:?];
  }
}

- (void)_didEndScrollAnimationNotification:(id)a3
{
  self->_isHandlingAnimationEnded = 1;
  [(BSUIScrollView *)self _setScrolling:?];
  self->_isHandlingAnimationEnded = 0;
}

@end