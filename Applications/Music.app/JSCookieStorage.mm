@interface JSCookieStorage
- (void)handleCookieDidExpire:(id)expire;
@end

@implementation JSCookieStorage

- (void)handleCookieDidExpire:(id)expire
{
  expireCopy = expire;
  selfCopy = self;
  sub_100D0A064(&unk_1010FDC20, sub_100D0A3C8, &unk_1010FDC38);
}

@end