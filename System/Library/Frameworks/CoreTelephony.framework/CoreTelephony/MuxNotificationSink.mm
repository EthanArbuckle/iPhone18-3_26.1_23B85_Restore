@interface MuxNotificationSink
+ (id)notificationSink;
- (MuxNotificationSinkDelegate)delegate;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)clientDidTriggerFault:(id)fault;
- (void)forwardInvocation:(id)invocation;
@end

@implementation MuxNotificationSink

+ (id)notificationSink
{
  v2 = objc_alloc(objc_opt_class());

  return v2;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 sink:self handleNotification:invocationCopy];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v4 = 8;
  v5 = &byte_18304DF81;
  while (1)
  {
    MethodDescription = protocol_getMethodDescription(&unk_1EF0671B8, selector, *(v5 - 1), *v5);
    if (MethodDescription.name)
    {
      break;
    }

    v5 += 2;
    v4 -= 2;
    if (!v4)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  v7 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodDescription.types];
LABEL_6:

  return v7;
}

- (void)clientDidTriggerFault:(id)fault
{
  faultCopy = fault;
  v4 = CTLogClient();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [MuxNotificationSink clientDidTriggerFault:];
  }
}

- (MuxNotificationSinkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end