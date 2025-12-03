@interface AXCyclingView
- (AXCyclingViewDelegate)delegate;
- (NSArray)viewsInCycle;
- (void)_makeNextViewVisible;
- (void)_updateForCycleIndex;
- (void)beginCycling;
- (void)didMoveToWindow;
- (void)endCycling;
@end

@implementation AXCyclingView

- (void)beginCycling
{
  viewsInCycle = [(AXCyclingView *)self viewsInCycle];
  v4 = [viewsInCycle count];

  if (v4 >= 2)
  {
    [(AXCyclingView *)self _updateForCycleIndex];

    [(AXCyclingView *)self performSelector:sel__makeNextViewVisible withObject:0 afterDelay:2.0];
  }
}

- (void)endCycling
{
  [(AXCyclingView *)self setCycleIndex:0];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__makeNextViewVisible object:0];
  if ([(AXCyclingView *)self isMakingNextViewVisible])
  {

    [(AXCyclingView *)self setShouldSkipMakingNextViewVisible:1];
  }
}

- (void)didMoveToWindow
{
  window = [(AXCyclingView *)self window];

  if (!window)
  {
    v4 = MEMORY[0x1E69E58C0];

    [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel__makeNextViewVisible object:0];
  }
}

- (void)_updateForCycleIndex
{
  viewsInCycle = [(AXCyclingView *)self viewsInCycle];
  v4 = [viewsInCycle count];

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (i == [(AXCyclingView *)self cycleIndex])
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.0;
      }

      viewsInCycle2 = [(AXCyclingView *)self viewsInCycle];
      v8 = [viewsInCycle2 objectAtIndexedSubscript:i];
      [v8 setAlpha:v6];

      delegate = [(AXCyclingView *)self delegate];
      if (delegate)
      {
        v10 = delegate;
        delegate2 = [(AXCyclingView *)self delegate];
        v12 = objc_opt_respondsToSelector();

        if (v12)
        {
          delegate3 = [(AXCyclingView *)self delegate];
          viewsInCycle3 = [(AXCyclingView *)self viewsInCycle];
          v15 = [viewsInCycle3 objectAtIndexedSubscript:i];
          [delegate3 cyclingViewDidPresentView:v15];
        }
      }
    }
  }
}

- (void)_makeNextViewVisible
{
  [(AXCyclingView *)self setIsMakingNextViewVisible:1];
  [(AXCyclingView *)self setCycleIndex:[(AXCyclingView *)self cycleIndex]+ 1];
  cycleIndex = [(AXCyclingView *)self cycleIndex];
  viewsInCycle = [(AXCyclingView *)self viewsInCycle];
  v5 = [viewsInCycle count];

  if (cycleIndex >= v5)
  {
    [(AXCyclingView *)self setCycleIndex:0];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__AXCyclingView__makeNextViewVisible__block_invoke;
  v7[3] = &unk_1E812DCA8;
  v7[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__AXCyclingView__makeNextViewVisible__block_invoke_2;
  v6[3] = &unk_1E812E4D0;
  v6[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v6 completion:0.3];
}

uint64_t __37__AXCyclingView__makeNextViewVisible__block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) shouldSkipMakingNextViewVisible] & 1) == 0)
  {
    [*(a1 + 32) performSelector:sel__makeNextViewVisible withObject:0 afterDelay:2.0];
  }

  [*(a1 + 32) setIsMakingNextViewVisible:0];
  v2 = *(a1 + 32);

  return [v2 setShouldSkipMakingNextViewVisible:0];
}

- (AXCyclingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)viewsInCycle
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return MEMORY[0x1E695E0F0];
}

@end