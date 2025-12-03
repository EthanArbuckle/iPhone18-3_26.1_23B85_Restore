@interface NEAppExtensionConfiguration
- (void)setupWithReply:(id)reply;
@end

@implementation NEAppExtensionConfiguration

- (void)setupWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  v3[2](v3, 1);

  _Block_release(v3);
}

@end