@interface BSUIScrollView
- ($57C6A38B097B1DD8ADCFE6DE7C16ED39)currentScrollContext;
- (BOOL)setContentOffset:(CGPoint)offset withAnimationSettings:(id)settings completion:(id)completion;
- (BSUIScrollView)initWithFrame:(CGRect)frame;
- (BSUIScrollViewDelegate)delegate;
- (uint64_t)_setContentOffset:(void *)offset animated:(void *)animated withAnimation:(double)animation completion:(double)completion;
- (uint64_t)_setCurrentContentOffsetImmediatelyIfScrollInterruptionAnimated:(uint64_t)result;
- (void)_callScrollCompletionIfNecessary;
- (void)_didEndDraggingNotification:(id)notification;
- (void)_didEndScrollAnimationNotification:(id)notification;
- (void)_notifyDidScroll;
- (void)_setContentOffset:(CGPoint)offset animation:(id)animation;
- (void)_setContentOffset:(_BYTE *)offset withBlock:(void *)block;
- (void)_setScrolling:(uint64_t)scrolling;
- (void)_updateScrolling;
- (void)dealloc;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setDelegate:(id)delegate;
@end

@implementation BSUIScrollView

- (void)_updateScrolling
{
  if (self)
  {
    if ([self isDragging] & 1) != 0 || (objc_msgSend(self, "isDecelerating"))
    {
      isScrollAnimating = 1;
    }

    else
    {
      isScrollAnimating = [self isScrollAnimating];
    }

    [(BSUIScrollView *)self _setScrolling:isScrollAnimating];

    [(BSUIScrollView *)self _callScrollCompletionIfNecessary];
  }
}

- (void)_callScrollCompletionIfNecessary
{
  if (([self isScrolling] & 1) == 0 && self[270])
  {
    v3 = MEMORY[0x1A58E5D00]();
    v2 = self[270];
    self[270] = 0;

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
  delegate = [(BSUIScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = v7;
    v5 = v8;
    v6 = v9;
    [delegate scrollViewDidScroll:self withContext:&v4];
  }

  [(BSUIScrollView *)self _updateScrolling];
}

- (BSUIScrollViewDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = BSUIScrollView;
  delegate = [(BSUIScrollView *)&v4 delegate];

  return delegate;
}

- ($57C6A38B097B1DD8ADCFE6DE7C16ED39)currentScrollContext
{
  selfCopy = self;
  if (self && (self = [($57C6A38B097B1DD8ADCFE6DE7C16ED39 *)self isScrolling], self))
  {
    self = [($57C6A38B097B1DD8ADCFE6DE7C16ED39 *)selfCopy isDragging];
    if (self & 1) != 0 || (self = [($57C6A38B097B1DD8ADCFE6DE7C16ED39 *)selfCopy isTracking], (self))
    {
      v5 = 3;
    }

    else
    {
      self = [($57C6A38B097B1DD8ADCFE6DE7C16ED39 *)selfCopy isScrollAnimating];
      if (self)
      {
        v5 = 2;
      }

      else
      {
        self = [($57C6A38B097B1DD8ADCFE6DE7C16ED39 *)selfCopy isDecelerating];
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
  retstr->var1 = selfCopy[54].var1;
  retstr->var2 = selfCopy[54].var2;
  return self;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = BSUIScrollView;
  [(BSUIScrollView *)&v4 dealloc];
}

- (BSUIScrollView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = BSUIScrollView;
  v3 = [(BSUIScrollView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__willBeginDraggingNotification_ name:*MEMORY[0x1E69DEA58] object:v3];
    [defaultCenter addObserver:v3 selector:sel__didEndDraggingNotification_ name:*MEMORY[0x1E69DEA48] object:v3];
    [defaultCenter addObserver:v3 selector:sel__didDidEndDeceleratingNotification_ name:*MEMORY[0x1E69DEA40] object:v3];
    [defaultCenter addObserver:v3 selector:sel__didEndScrollAnimationNotification_ name:@"_UIScrollViewAnimationEndedNotification" object:v3];
  }

  return v3;
}

- (void)setDelegate:(id)delegate
{
  v3.receiver = self;
  v3.super_class = BSUIScrollView;
  [(BSUIScrollView *)&v3 setDelegate:delegate];
}

- (uint64_t)_setContentOffset:(void *)offset animated:(void *)animated withAnimation:(double)animation completion:(double)completion
{
  offsetCopy = offset;
  animatedCopy = animated;
  v13 = animatedCopy;
  if (self)
  {
    v14 = animatedCopy;
    v15 = MEMORY[0x1A58E5D00](*(self + 2160));
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
      v18 = *(self + 2160);
      *(self + 2160) = v17;
    }

    *(self + 2154) = 0;
    if (offsetCopy && a2)
    {
      [self _setContentOffset:offsetCopy animation:{animation, completion}];
    }

    else
    {
      [self setContentOffset:a2 animated:{animation, completion, v20, v21, v22, v23}];
    }

    if (*(self + 2154))
    {
      self = 1;
    }

    else
    {
      self = [self isScrolling];
    }
  }

  return self;
}

- (BOOL)setContentOffset:(CGPoint)offset withAnimationSettings:(id)settings completion:(id)completion
{
  y = offset.y;
  x = offset.x;
  settingsCopy = settings;
  completionCopy = completion;
  if (settingsCopy)
  {
    v11 = settingsCopy;
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

      timingFunction = [v12 timingFunction];
      [v13 setTimingFunction:timingFunction];
    }

    else
    {
      v13 = 0;
    }

    v15 = [(BSUIScrollView *)self _setContentOffset:v13 animated:completionCopy withAnimation:x completion:y];
  }

  else
  {
    v15 = [(BSUIScrollView *)self _setContentOffset:0 animated:completionCopy withAnimation:x completion:y];
  }

  return v15;
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
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

- (void)_setContentOffset:(_BYTE *)offset withBlock:(void *)block
{
  blockCopy = block;
  if (offset)
  {
    if (!blockCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__setContentOffset_withBlock_ object:offset file:@"BSUIScrollView.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
    }

    [offset contentOffset];
    v3 = BSPointEqualToPoint();
    v4 = [offset isScrolling] | v3;
    if ((v4 & 1) == 0)
    {
      [(BSUIScrollView *)offset _setScrolling:?];
    }

    blockCopy[2]();
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    if (!v3)
    {
      goto LABEL_11;
    }

    if (offset[2155])
    {
      [(BSUIScrollView *)offset _callScrollCompletionIfNecessary];
    }

    else
    {
LABEL_10:
      [(BSUIScrollView *)offset _updateScrolling];
    }
  }

LABEL_11:
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  y = offset.y;
  x = offset.x;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__BSUIScrollView_setContentOffset_animated___block_invoke;
  v8[3] = &unk_1E76B7F40;
  objc_copyWeak(v9, &location);
  animatedCopy = animated;
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

- (void)_setContentOffset:(CGPoint)offset animation:(id)animation
{
  y = offset.y;
  x = offset.x;
  animationCopy = animation;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__BSUIScrollView__setContentOffset_animation___block_invoke;
  v9[3] = &unk_1E76B7F68;
  objc_copyWeak(v12, &location);
  v12[1] = *&x;
  v12[2] = *&y;
  v10 = animationCopy;
  selfCopy = self;
  v8 = animationCopy;
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

- (void)_setScrolling:(uint64_t)scrolling
{
  if (scrolling)
  {
    v2 = a2;
    if (*(scrolling + 2200) != a2)
    {
      if (a2)
      {
        [scrolling _bs_willBeginScrolling];
        delegate = [scrolling delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate scrollViewWillBeginScrolling:scrolling];
        }
      }

      else if (*(scrolling + 2153))
      {
        return;
      }

      *(scrolling + 2200) = v2;
      [scrolling contentOffset];
      *(scrolling + 2184) = v4;
      *(scrolling + 2192) = v5;
      if ((v2 & 1) == 0)
      {
        v9 = MEMORY[0x1A58E5D00](*(scrolling + 2160));
        v6 = *(scrolling + 2160);
        *(scrolling + 2160) = 0;

        [scrolling _bs_didEndScrolling];
        delegate2 = [scrolling delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate2 scrollViewDidEndScrolling:scrolling];
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

- (void)_didEndDraggingNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DEA50]];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [(BSUIScrollView *)self _setScrolling:?];
  }
}

- (void)_didEndScrollAnimationNotification:(id)notification
{
  self->_isHandlingAnimationEnded = 1;
  [(BSUIScrollView *)self _setScrolling:?];
  self->_isHandlingAnimationEnded = 0;
}

@end