@interface ASCMetricsScrollObserver
+ (id)observerForScrollView:(id)view;
- (ASCMetricsScrollObserver)initWithScrollView:(id)view;
- (BOOL)hasModelAppeared:(id)appeared;
- (BOOL)hasModelRendered:(id)rendered;
- (BOOL)isDelegateAdded:(id)added;
- (CGPoint)centerOfView:(id)view;
- (CGRect)visibleRect;
- (CGSize)contentSize;
- (UIScrollView)scrollView;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)modelDidAppear:(id)appear;
- (void)modelDidDisappear:(id)disappear;
- (void)modelDidRender:(id)render;
- (void)removeDelegate:(id)delegate;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation ASCMetricsScrollObserver

+ (id)observerForScrollView:(id)view
{
  viewCopy = view;
  v4 = objc_getAssociatedObject(viewCopy, "ASCMetricsScrollObserver");
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [[ASCMetricsScrollObserver alloc] initWithScrollView:viewCopy];
    objc_setAssociatedObject(viewCopy, "ASCMetricsScrollObserver", v6, 1);
  }

  return v6;
}

- (ASCMetricsScrollObserver)initWithScrollView:(id)view
{
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = ASCMetricsScrollObserver;
  v5 = [(ASCMetricsScrollObserver *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scrollView, viewCopy);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v6->_delegates;
    v6->_delegates = weakObjectsHashTable;

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
  scrollView = [(ASCMetricsScrollObserver *)self scrollView];
  [scrollView contentSize];
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
  scrollView = [(ASCMetricsScrollObserver *)self scrollView];
  [scrollView bounds];
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

- (CGPoint)centerOfView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
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
  scrollView = [(ASCMetricsScrollObserver *)self scrollView];
  [scrollView convertPoint:viewCopy fromView:{v9, v10}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (BOOL)isDelegateAdded:(id)added
{
  addedCopy = added;
  delegates = [(ASCMetricsScrollObserver *)self delegates];
  v6 = [delegates containsObject:addedCopy];

  return v6;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(ASCMetricsScrollObserver *)self delegates];
  [delegates addObject:delegateCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(ASCMetricsScrollObserver *)self delegates];
  [delegates removeObject:delegateCopy];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v16 = *MEMORY[0x277D85DE8];
  scrollCopy = scroll;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  delegates = [(ASCMetricsScrollObserver *)self delegates];
  v6 = [delegates copy];

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

        [*(*(&v11 + 1) + 8 * v10++) scrollViewDidScroll:scrollCopy];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)modelDidAppear:(id)appear
{
  appearCopy = appear;
  appearedModelIDs = [(ASCMetricsScrollObserver *)self appearedModelIDs];
  v5 = [appearCopy id];

  [appearedModelIDs addObject:v5];
}

- (void)modelDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  appearedModelIDs = [(ASCMetricsScrollObserver *)self appearedModelIDs];
  v5 = [disappearCopy id];

  [appearedModelIDs removeObject:v5];
}

- (BOOL)hasModelAppeared:(id)appeared
{
  appearedCopy = appeared;
  appearedModelIDs = [(ASCMetricsScrollObserver *)self appearedModelIDs];
  v6 = [appearedCopy id];

  LOBYTE(appearedCopy) = [appearedModelIDs containsObject:v6];
  return appearedCopy;
}

- (void)modelDidRender:(id)render
{
  renderCopy = render;
  renderedModelIDs = [(ASCMetricsScrollObserver *)self renderedModelIDs];
  v5 = [renderCopy id];

  [renderedModelIDs addObject:v5];
}

- (BOOL)hasModelRendered:(id)rendered
{
  renderedCopy = rendered;
  renderedModelIDs = [(ASCMetricsScrollObserver *)self renderedModelIDs];
  v6 = [renderedCopy id];

  LOBYTE(renderedCopy) = [renderedModelIDs containsObject:v6];
  return renderedCopy;
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollView = [(ASCMetricsScrollObserver *)self scrollView];
  [(ASCMetricsScrollObserver *)self scrollViewDidScroll:scrollView];
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

@end