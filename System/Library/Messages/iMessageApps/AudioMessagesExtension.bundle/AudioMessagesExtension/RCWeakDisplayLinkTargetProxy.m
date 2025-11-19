@interface RCWeakDisplayLinkTargetProxy
- (RCWeakDisplayLinkTargetProxy)initWithTarget:(id)a3 selector:(SEL)a4;
- (void)dealloc;
- (void)displayLinkFired:(id)a3;
@end

@implementation RCWeakDisplayLinkTargetProxy

- (RCWeakDisplayLinkTargetProxy)initWithTarget:(id)a3 selector:(SEL)a4
{
  v9.receiver = self;
  v9.super_class = RCWeakDisplayLinkTargetProxy;
  v6 = [(RCWeakDisplayLinkTargetProxy *)&v9 init];
  if (v6)
  {
    v6->_weakTarget = [RCWeakRef weakRefWithObject:a3];
    if (a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = 0;
    }

    v6->_weakTargetSelector = v7;
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

- (void)displayLinkFired:(id)a3
{
  v5 = [(RCWeakRef *)self->_weakTarget object];
  if (v5)
  {
    if (self->_weakTargetSelector)
    {
      weakTargetSelector = self->_weakTargetSelector;
    }

    else
    {
      weakTargetSelector = 0;
    }

    [v5 performSelector:weakTargetSelector withObject:a3];
  }

  else
  {

    [a3 invalidate];
  }
}

@end