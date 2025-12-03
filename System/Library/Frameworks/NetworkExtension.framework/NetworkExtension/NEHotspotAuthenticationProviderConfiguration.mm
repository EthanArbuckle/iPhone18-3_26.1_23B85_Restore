@interface NEHotspotAuthenticationProviderConfiguration
- (void)startWithReply:(id)reply;
- (void)stopWithStopReason:(int64_t)reason reply:(id)reply;
@end

@implementation NEHotspotAuthenticationProviderConfiguration

- (void)startWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  _Block_copy(v3);

  sub_1BA870FB8(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)stopWithStopReason:(int64_t)reason reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);

  sub_1BA8711F0(reason, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end