@interface JSCookieStorage
- (void)handleCookieDidExpire:(id)expire;
@end

@implementation JSCookieStorage

- (void)handleCookieDidExpire:(id)expire
{
  expireCopy = expire;
  selfCopy = self;
  sub_9C3250(&unk_D51F30, sub_9C35B4, &block_descriptor_10_4);
}

@end