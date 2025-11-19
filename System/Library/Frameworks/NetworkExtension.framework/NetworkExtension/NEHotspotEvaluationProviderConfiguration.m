@interface NEHotspotEvaluationProviderConfiguration
- (void)startWithReply:(id)a3;
- (void)stopWithStopReason:(int64_t)a3 reply:(id)a4;
@end

@implementation NEHotspotEvaluationProviderConfiguration

- (void)startWithReply:(id)a3
{
  v3 = _Block_copy(a3);
  _Block_copy(v3);

  sub_1BA851104(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)stopWithStopReason:(int64_t)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);

  sub_1BA851540(a3, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end