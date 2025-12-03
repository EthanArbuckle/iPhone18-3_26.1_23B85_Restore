@interface RCWeakDisplayLinkTargetProxy
- (RCWeakDisplayLinkTargetProxy)initWithTarget:(id)target selector:(SEL)selector;
- (void)dealloc;
- (void)displayLinkFired:(id)fired;
@end

@implementation RCWeakDisplayLinkTargetProxy

- (RCWeakDisplayLinkTargetProxy)initWithTarget:(id)target selector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = RCWeakDisplayLinkTargetProxy;
  v6 = [(RCWeakDisplayLinkTargetProxy *)&v9 init];
  if (v6)
  {
    v6->_weakTarget = [RCWeakRef weakRefWithObject:target];
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v6->_weakTargetSelector = selectorCopy;
  }

  return v6;
}

- (void)dealloc
{
  self->_weakTarget = 0;
  v3.receiver = self;
  v3.super_class = RCWeakDisplayLinkTargetProxy;
  [(RCWeakDisplayLinkTargetProxy *)&v3 dealloc];
}

- (void)displayLinkFired:(id)fired
{
  object = [(RCWeakRef *)self->_weakTarget object];
  if (object)
  {
    if (self->_weakTargetSelector)
    {
      weakTargetSelector = self->_weakTargetSelector;
    }

    else
    {
      weakTargetSelector = 0;
    }

    [object performSelector:weakTargetSelector withObject:fired];
  }

  else
  {

    [fired invalidate];
  }
}

@end