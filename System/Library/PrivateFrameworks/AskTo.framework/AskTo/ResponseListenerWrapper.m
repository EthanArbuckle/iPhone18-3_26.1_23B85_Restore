@interface ResponseListenerWrapper
- (void)didReceiveResponse:(id)a3 reply:(id)a4;
- (void)wakeUpWithReply:(id)a3;
@end

@implementation ResponseListenerWrapper

- (void)wakeUpWithReply:(id)a3
{
  v3 = _Block_copy(a3);
  _Block_copy(v3);

  sub_2258DC488(v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)didReceiveResponse:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;

  sub_2258DC580(v7, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end