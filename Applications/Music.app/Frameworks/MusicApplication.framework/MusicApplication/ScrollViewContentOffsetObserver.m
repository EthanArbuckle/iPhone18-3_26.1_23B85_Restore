@interface ScrollViewContentOffsetObserver
- (ScrollViewContentOffsetObserver)initWithScrollView:(id)a3 changeHandler:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation ScrollViewContentOffsetObserver

- (ScrollViewContentOffsetObserver)initWithScrollView:(id)a3 changeHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ScrollViewContentOffsetObserver;
  v9 = [(ScrollViewContentOffsetObserver *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scrollView, a3);
    v11 = [v8 copy];
    changeHandler = v10->_changeHandler;
    v10->_changeHandler = v11;

    [v7 addObserver:v10 forKeyPath:@"contentOffset" options:1 context:&MusicScrollViewObserverKVOContext];
  }

  return v10;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &MusicScrollViewObserverKVOContext)
  {
    v7 = [(ScrollViewContentOffsetObserver *)self changeHandler:a3];
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
    [(ScrollViewContentOffsetObserver *)&v10 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
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