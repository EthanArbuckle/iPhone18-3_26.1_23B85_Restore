@interface AVScrollingObserver
- (AVScrollingObserver)initWithView:(id)view;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)_updateScrollingStatus;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)removeDelegate:(id)delegate;
- (void)update;
@end

@implementation AVScrollingObserver

- (void)_updateScrollingStatus
{
  v23 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[AVScrollingObserver _updateScrollingStatus]";
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "*** %s must be called on main thread. ***", buf, 0xCu);
    }
  }

  [(NSTimer *)self->_scrollingDidEndTimer invalidate];
  isScrolling = [(AVScrollingObserver *)self isScrolling];
  isScrollingQuickly = [(AVScrollingObserver *)self isScrollingQuickly];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  avkit_isBeingScrolled = [WeakRetained avkit_isBeingScrolled];

  v8 = objc_loadWeakRetained(&self->_view);
  avkit_isBeingScrolledQuickly = [v8 avkit_isBeingScrolledQuickly];

  [(AVScrollingObserver *)self setScrolling:avkit_isBeingScrolled];
  [(AVScrollingObserver *)self setScrollingQuickly:avkit_isBeingScrolledQuickly];
  if (isScrolling != [(AVScrollingObserver *)self isScrolling]|| isScrollingQuickly != [(AVScrollingObserver *)self isScrollingQuickly])
  {
    v10 = [(NSHashTable *)self->_delegates copy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15++) scrollingObserverDidChangeScrollingState:{self, v16}];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(NSTimer *)self->_scrollingDidEndTimer invalidate];
  scrollingDidEndTimer = self->_scrollingDidEndTimer;
  self->_scrollingDidEndTimer = 0;

  if ([(AVScrollingObserver *)self isScrolling])
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_view);
    if ([WeakRetained avkit_isBeingScrollTested])
    {
      v7 = 0.1;
    }

    else
    {
      v7 = 0.0333333333;
    }

    v8 = MEMORY[0x1E695DFF0];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __51__AVScrollingObserver__observeScrollViewDidScroll___block_invoke;
    v14 = &unk_1E7209DA8;
    objc_copyWeak(&v15, &location);
    v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:&v11 block:v7];
    v10 = self->_scrollingDidEndTimer;
    self->_scrollingDidEndTimer = v9;

    [(NSTimer *)self->_scrollingDidEndTimer setTolerance:v7 * 0.5, v11, v12, v13, v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AVScrollingObserver *)self _updateScrollingStatus];
  }
}

void __51__AVScrollingObserver__observeScrollViewDidScroll___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateScrollingStatus];
    v5 = v4[4];
    if (v5 == v6)
    {
      v4[4] = 0;
    }
  }
}

- (void)removeDelegate:(id)delegate
{
  v8 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[AVScrollingObserver removeDelegate:]";
      _os_log_error_impl(&dword_18B49C000, v5, OS_LOG_TYPE_ERROR, "*** %s must be called on main thread. ***", &v6, 0xCu);
    }
  }

  [(NSHashTable *)self->_delegates removeObject:delegateCopy];
}

- (void)addDelegate:(id)delegate
{
  v8 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[AVScrollingObserver addDelegate:]";
      _os_log_error_impl(&dword_18B49C000, v5, OS_LOG_TYPE_ERROR, "*** %s must be called on main thread. ***", &v6, 0xCu);
    }
  }

  [(NSHashTable *)self->_delegates addObject:delegateCopy];
}

- (void)update
{
  v22 = *MEMORY[0x1E69E9840];
  weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  superview = [WeakRetained superview];

  if (superview)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = superview;
        [(NSHashTable *)weakObjectsHashTable addObject:v6];
        if (([v6 _isScrollViewScrollObserver:self] & 1) == 0)
        {
          [v6 _addScrollViewScrollObserver:self];
        }
      }

      v5Superview = [superview superview];

      superview = v5Superview;
    }

    while (v5Superview);
  }

  v8 = [(NSHashTable *)self->_observedScrollViews copy];
  [v8 minusHashTable:weakObjectsHashTable];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v17 + 1) + 8 * v13++) _removeScrollViewScrollObserver:{self, v17}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  observedScrollViews = self->_observedScrollViews;
  self->_observedScrollViews = weakObjectsHashTable;
  v15 = weakObjectsHashTable;

  anyObject = [(NSHashTable *)v15 anyObject];

  [(AVScrollingObserver *)self _observeScrollViewDidScroll:anyObject];
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(NSHashTable *)self->_observedScrollViews copy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) _removeScrollViewScrollObserver:self];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = AVScrollingObserver;
  [(AVScrollingObserver *)&v9 dealloc];
}

- (AVScrollingObserver)initWithView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = AVScrollingObserver;
  v5 = [(AVScrollingObserver *)&v11 init];
  if (v5)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observedScrollViews = v5->_observedScrollViews;
    v5->_observedScrollViews = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    delegates = v5->_delegates;
    v5->_delegates = weakObjectsHashTable2;

    objc_storeWeak(&v5->_view, viewCopy);
  }

  return v5;
}

@end