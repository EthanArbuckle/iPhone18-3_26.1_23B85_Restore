@interface DaemonReceiver
- (void)messagesComposeDidFinishWithDidSend:(BOOL)a3 reply:(id)a4;
@end

@implementation DaemonReceiver

- (void)messagesComposeDidFinishWithDidSend:(BOOL)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);

  sub_2258D8164(a3, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end