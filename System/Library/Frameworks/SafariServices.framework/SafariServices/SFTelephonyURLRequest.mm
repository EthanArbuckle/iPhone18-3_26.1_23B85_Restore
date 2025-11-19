@interface SFTelephonyURLRequest
- (SFTelephonyURLRequest)initWithCompletionHandler:(id)a3;
@end

@implementation SFTelephonyURLRequest

- (SFTelephonyURLRequest)initWithCompletionHandler:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SFTelephonyURLRequest;
  v5 = [(SFTelephonyURLRequest *)&v15 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    completionHandler = v5->_completionHandler;
    v5->_completionHandler = v6;

    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    successNotificationName = v5->_successNotificationName;
    v5->_successNotificationName = v9;

    v11 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v11 UUIDString];
    failureNotificationName = v5->_failureNotificationName;
    v5->_failureNotificationName = v12;
  }

  return v5;
}

@end