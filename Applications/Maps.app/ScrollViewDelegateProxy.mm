@interface ScrollViewDelegateProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (UIScrollViewDelegate)scrollViewDelegate;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation ScrollViewDelegateProxy

- (UIScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (protocol_getMethodDescription(&OBJC_PROTOCOL___UIScrollViewDelegate, selector, 0, 1) != 0uLL)
  {
    scrollViewDelegate = [(ScrollViewDelegateProxy *)self scrollViewDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      return 1;
    }
  }

  v8.receiver = self;
  v8.super_class = ScrollViewDelegateProxy;
  return [(ScrollViewDelegateProxy *)&v8 respondsToSelector:selector];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if (protocol_getMethodDescription(&OBJC_PROTOCOL___UIScrollViewDelegate, selector, 0, 1) == 0uLL || ([(ScrollViewDelegateProxy *)self scrollViewDelegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) == 0))
  {
    v9.receiver = self;
    v9.super_class = ScrollViewDelegateProxy;
    scrollViewDelegate = [(ScrollViewDelegateProxy *)&v9 forwardingTargetForSelector:selector];
  }

  else
  {
    scrollViewDelegate = [(ScrollViewDelegateProxy *)self scrollViewDelegate];
  }

  return scrollViewDelegate;
}

@end