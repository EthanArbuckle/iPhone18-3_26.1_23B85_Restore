@interface ASMessageHandler
- (SEL)handleErrorSendingMessageAction;
- (SEL)handleReceiveMessageAction;
- (void)setHandleErrorSendingMessageAction:(SEL)action;
- (void)setHandleReceiveMessageAction:(SEL)action;
@end

@implementation ASMessageHandler

- (SEL)handleReceiveMessageAction
{
  if (self->_handleReceiveMessageAction)
  {
    return self->_handleReceiveMessageAction;
  }

  else
  {
    return 0;
  }
}

- (void)setHandleReceiveMessageAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_handleReceiveMessageAction = actionCopy;
}

- (SEL)handleErrorSendingMessageAction
{
  if (self->_handleErrorSendingMessageAction)
  {
    return self->_handleErrorSendingMessageAction;
  }

  else
  {
    return 0;
  }
}

- (void)setHandleErrorSendingMessageAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_handleErrorSendingMessageAction = actionCopy;
}

@end