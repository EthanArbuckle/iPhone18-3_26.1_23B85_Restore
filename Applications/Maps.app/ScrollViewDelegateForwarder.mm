@interface ScrollViewDelegateForwarder
- (BOOL)respondsToSelector:(SEL)a3;
- (UIScrollViewDelegate)originalDelegate;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)setOriginalDelegate:(id)a3;
@end

@implementation ScrollViewDelegateForwarder

- (UIScrollViewDelegate)originalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_originalDelegate);

  return WeakRetained;
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v6 = a3;
  if (self->_respondsTo_scrollViewDidEndScrollingAnimation)
  {
    WeakRetained = objc_loadWeakRetained(&self->_originalDelegate);
    [WeakRetained scrollViewDidEndScrollingAnimation:v6];
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"ScrollingFinishedNotification" object:v6];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_originalDelegate);

  return WeakRetained;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if ("scrollViewDidEndScrollingAnimation:" == a3)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_originalDelegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ScrollViewDelegateForwarder;
    v6 = [(ScrollViewDelegateForwarder *)&v8 respondsToSelector:a3];
  }

  return v6;
}

- (void)setOriginalDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_originalDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_originalDelegate, obj);
    self->_respondsTo_scrollViewDidEndScrollingAnimation = objc_opt_respondsToSelector() & 1;
  }
}

@end