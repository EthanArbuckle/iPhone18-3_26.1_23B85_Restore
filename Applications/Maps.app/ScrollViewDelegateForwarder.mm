@interface ScrollViewDelegateForwarder
- (BOOL)respondsToSelector:(SEL)selector;
- (UIScrollViewDelegate)originalDelegate;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)setOriginalDelegate:(id)delegate;
@end

@implementation ScrollViewDelegateForwarder

- (UIScrollViewDelegate)originalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_originalDelegate);

  return WeakRetained;
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  if (self->_respondsTo_scrollViewDidEndScrollingAnimation)
  {
    WeakRetained = objc_loadWeakRetained(&self->_originalDelegate);
    [WeakRetained scrollViewDidEndScrollingAnimation:animationCopy];
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"ScrollingFinishedNotification" object:animationCopy];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_originalDelegate);

  return WeakRetained;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if ("scrollViewDidEndScrollingAnimation:" == selector)
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
    v6 = [(ScrollViewDelegateForwarder *)&v8 respondsToSelector:selector];
  }

  return v6;
}

- (void)setOriginalDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_originalDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_originalDelegate, obj);
    self->_respondsTo_scrollViewDidEndScrollingAnimation = objc_opt_respondsToSelector() & 1;
  }
}

@end