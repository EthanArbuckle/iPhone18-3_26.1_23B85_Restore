@interface ResponseListenerWrapper
- (void)didReceiveResponse:(id)response reply:(id)reply;
- (void)wakeUpWithReply:(id)reply;
@end

@implementation ResponseListenerWrapper

- (void)wakeUpWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  _Block_copy(v3);

  sub_2258DC488(v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)didReceiveResponse:(id)response reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  responseCopy = response;

  sub_2258DC580(responseCopy, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end