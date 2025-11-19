@interface NEAppExtensionConfiguration
- (void)setupWithReply:(id)a3;
@end

@implementation NEAppExtensionConfiguration

- (void)setupWithReply:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2](v3, 1);

  _Block_release(v3);
}

@end