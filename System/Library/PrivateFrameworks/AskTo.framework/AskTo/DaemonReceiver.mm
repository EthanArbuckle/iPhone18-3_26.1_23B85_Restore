@interface DaemonReceiver
- (void)messagesComposeDidFinishWithDidSend:(BOOL)send reply:(id)reply;
@end

@implementation DaemonReceiver

- (void)messagesComposeDidFinishWithDidSend:(BOOL)send reply:(id)reply
{
  v5 = _Block_copy(reply);
  _Block_copy(v5);

  sub_2258D8164(send, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end