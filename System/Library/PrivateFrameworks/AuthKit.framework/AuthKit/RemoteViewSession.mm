@interface RemoteViewSession
- (void)activateWithCompletionHandler:(id)handler;
- (void)invalidate;
@end

@implementation RemoteViewSession

- (void)activateWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  _Block_copy(v3);

  sub_100224764(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)invalidate
{

  sub_100218A80();
}

@end