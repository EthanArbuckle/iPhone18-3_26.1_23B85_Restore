@interface ASCMetricsScrollObserver
+ (id)observerForScrollView:(id)a3;
- (ASCMetricsScrollObserver)initWithScrollView:(id)a3;
- (BOOL)hasModelAppeared:(id)a3;
- (BOOL)hasModelRendered:(id)a3;
- (BOOL)isDelegateAdded:(id)a3;
- (CGPoint)centerOfView:(id)a3;
- (CGRect)visibleRect;
- (CGSize)contentSize;
- (UIScrollView)scrollView;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)addDelegate:(id)a3;
- (void)dealloc;
- (void)modelDidAppear:(id)a3;
- (void)modelDidDisappear:(id)a3;
- (void)modelDidRender:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation ASCMetricsScrollObserver

+ (id)observerForScrollView:(id)a3
{
  v3 = a3;
  v4 = objc_getAssociatedObject(v3, "ASCMetricsScrollObserver");
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [[ASCMetricsScrollObserver alloc] initWithScrollView:v3];
    objc_setAssociatedObject(v3, "ASCMetricsScrollObserver", v6, 1);
  }

  return v6;
}

- (ASCMetricsScrollObserver)initWithScrollView:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ASCMetricsScrollObserver;
  v5 = [(ASCMetricsScrollObserver *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scrollView, v4);
    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v6->_delegates;
    v6->_delegates = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    appearedModelIDs = v6->_appearedModelIDs;
    v6->_appearedModelIDs = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    renderedModelIDs = v6->_renderedModelIDs;
    v6->_renderedModelIDs = v11;

    WeakRetained = objc_loadWeakRetained(&v6->_scrollView);
    [WeakRetained _addScrollViewScrollObserver:v6];
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);
  [WeakRetained _removeScrollViewScrollObserver:self];

  v4.receiver = self;
  v4.super_class = ASCMetricsScrollObserver;
  [(ASCMetricsScrollObserver *)&v4 dealloc];
}

- (CGSize)contentSize
{
  v2 = [(ASCMetricsScrollObserver *)self scrollView];
  [v2 contentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)visibleRect
{
  v2 = [(ASCMetricsScrollObserver *)self scrollView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGPoint)centerOfView:(id)a3
{
  v4 = a3;
  [v4 frame];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v9 = floor(CGRectGetWidth(v19) * 0.5);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v10 = floor(CGRectGetHeight(v20) * 0.5);
  v11 = [(ASCMetricsScrollObserver *)self scrollView];
  [v11 convertPoint:v4 fromView:{v9, v10}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (BOOL)isDelegateAdded:(id)a3
{
  v4 = a3;
  v5 = [(ASCMetricsScrollObserver *)self delegates];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(ASCMetricsScrollObserver *)self delegates];
  [v5 addObject:v4];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(ASCMetricsScrollObserver *)self delegates];
  [v5 removeObject:v4];
}

- (void)scrollViewDidScroll:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(ASCMetricsScrollObserver *)self delegates];
  v6 = [v5 copy];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) scrollViewDidScroll:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)modelDidAppear:(id)a3
{
  v4 = a3;
  v6 = [(ASCMetricsScrollObserver *)self appearedModelIDs];
  v5 = [v4 id];

  [v6 addObject:v5];
}

- (void)modelDidDisappear:(id)a3
{
  v4 = a3;
  v6 = [(ASCMetricsScrollObserver *)self appearedModelIDs];
  v5 = [v4 id];

  [v6 removeObject:v5];
}

- (BOOL)hasModelAppeared:(id)a3
{
  v4 = a3;
  v5 = [(ASCMetricsScrollObserver *)self appearedModelIDs];
  v6 = [v4 id];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (void)modelDidRender:(id)a3
{
  v4 = a3;
  v6 = [(ASCMetricsScrollObserver *)self renderedModelIDs];
  v5 = [v4 id];

  [v6 addObject:v5];
}

- (BOOL)hasModelRendered:(id)a3
{
  v4 = a3;
  v5 = [(ASCMetricsScrollObserver *)self renderedModelIDs];
  v6 = [v4 id];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v4 = [(ASCMetricsScrollObserver *)self scrollView];
  [(ASCMetricsScrollObserver *)self scrollViewDidScroll:v4];
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

@end