@interface CPDistributedMessagingCallout
- (CPDistributedMessagingCallout)initWithTarget:(id)target selector:(SEL)selector;
- (SEL)selector;
- (void)dealloc;
@end

@implementation CPDistributedMessagingCallout

- (CPDistributedMessagingCallout)initWithTarget:(id)target selector:(SEL)selector
{
  v11.receiver = self;
  v11.super_class = CPDistributedMessagingCallout;
  v6 = [(CPDistributedMessagingCallout *)&v11 init];
  if (v6)
  {
    targetCopy = target;
    v6->_target = targetCopy;
    p_selector = &v6->_selector;
    if (selector)
    {
      *p_selector = selector;
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
      *p_selector = 0;
    }

    v6->_returnsVoid = [objc_msgSend(targetCopy methodSignatureForSelector:{selectorCopy), "methodReturnLength"}] == 0;
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