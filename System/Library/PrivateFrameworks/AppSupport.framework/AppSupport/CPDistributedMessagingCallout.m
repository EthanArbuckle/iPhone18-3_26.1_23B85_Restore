@interface CPDistributedMessagingCallout
- (CPDistributedMessagingCallout)initWithTarget:(id)a3 selector:(SEL)a4;
- (SEL)selector;
- (void)dealloc;
@end

@implementation CPDistributedMessagingCallout

- (CPDistributedMessagingCallout)initWithTarget:(id)a3 selector:(SEL)a4
{
  v11.receiver = self;
  v11.super_class = CPDistributedMessagingCallout;
  v6 = [(CPDistributedMessagingCallout *)&v11 init];
  if (v6)
  {
    v7 = a3;
    v6->_target = v7;
    p_selector = &v6->_selector;
    if (a4)
    {
      *p_selector = a4;
      v9 = a4;
    }

    else
    {
      v9 = 0;
      *p_selector = 0;
    }

    v6->_returnsVoid = [objc_msgSend(v7 methodSignatureForSelector:{v9), "methodReturnLength"}] == 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CPDistributedMessagingCallout;
  [(CPDistributedMessagingCallout *)&v3 dealloc];
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

@end