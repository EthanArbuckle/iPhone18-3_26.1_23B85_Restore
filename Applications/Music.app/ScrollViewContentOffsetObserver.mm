@interface ScrollViewContentOffsetObserver
- (ScrollViewContentOffsetObserver)initWithScrollView:(id)view changeHandler:(id)handler;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation ScrollViewContentOffsetObserver

- (ScrollViewContentOffsetObserver)initWithScrollView:(id)view changeHandler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = ScrollViewContentOffsetObserver;
  v9 = [(ScrollViewContentOffsetObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scrollView, view);
    v11 = [handlerCopy copy];
    changeHandler = v10->_changeHandler;
    v10->_changeHandler = v11;

    [viewCopy addObserver:v10 forKeyPath:@"contentOffset" options:1 context:&off_101097C08];
  }

  return v10;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &off_101097C08)
  {
    v7 = [(ScrollViewContentOffsetObserver *)self changeHandler:path];
    if (v7)
    {
      scrollView = self->_scrollView;
      v9 = v7;
      [(UIScrollView *)scrollView contentOffset];
      v9[2](v9, scrollView);
      v7 = v9;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ScrollViewContentOffsetObserver;
    [(ScrollViewContentOffsetObserver *)&v10 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)dealloc
{
  [(UIScrollView *)self->_scrollView removeObserver:self forKeyPath:@"contentOffset"];
  v3.receiver = self;
  v3.super_class = ScrollViewContentOffsetObserver;
  [(ScrollViewContentOffsetObserver *)&v3 dealloc];
}

@end