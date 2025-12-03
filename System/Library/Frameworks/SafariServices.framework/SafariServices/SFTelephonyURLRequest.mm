@interface SFTelephonyURLRequest
- (SFTelephonyURLRequest)initWithCompletionHandler:(id)handler;
@end

@implementation SFTelephonyURLRequest

- (SFTelephonyURLRequest)initWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = SFTelephonyURLRequest;
  v5 = [(SFTelephonyURLRequest *)&v15 init];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    completionHandler = v5->_completionHandler;
    v5->_completionHandler = v6;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    successNotificationName = v5->_successNotificationName;
    v5->_successNotificationName = uUIDString;

    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString2 = [uUID2 UUIDString];
    failureNotificationName = v5->_failureNotificationName;
    v5->_failureNotificationName = uUIDString2;
  }

  return v5;
}

@end