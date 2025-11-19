@interface ScrollViewDelegateProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (UIScrollViewDelegate)scrollViewDelegate;
- (id)forwardingTargetForSelector:(SEL)a3;
@end

@implementation ScrollViewDelegateProxy

- (UIScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (protocol_getMethodDescription(&OBJC_PROTOCOL___UIScrollViewDelegate, a3, 0, 1) != 0uLL)
  {
    v5 = [(ScrollViewDelegateProxy *)self scrollViewDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      return 1;
    }
  }

  v8.receiver = self;
  v8.super_class = ScrollViewDelegateProxy;
  return [(ScrollViewDelegateProxy *)&v8 respondsToSelector:a3];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if (protocol_getMethodDescription(&OBJC_PROTOCOL___UIScrollViewDelegate, a3, 0, 1) == 0uLL || ([(ScrollViewDelegateProxy *)self scrollViewDelegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) == 0))
  {
    v9.receiver = self;
    v9.super_class = ScrollViewDelegateProxy;
    v7 = [(ScrollViewDelegateProxy *)&v9 forwardingTargetForSelector:a3];
  }

  else
  {
    v7 = [(ScrollViewDelegateProxy *)self scrollViewDelegate];
  }

  return v7;
}

@end