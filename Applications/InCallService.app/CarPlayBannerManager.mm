@interface CarPlayBannerManager
+ (_TtC13InCallService20CarPlayBannerManager)shared;
- (UIWindow)bannerWindow;
@end

@implementation CarPlayBannerManager

+ (_TtC13InCallService20CarPlayBannerManager)shared
{
  v2 = sub_100028B24();

  return v2;
}

- (UIWindow)bannerWindow
{
  v2 = self;
  v3 = sub_100028BC4();

  return v3;
}

@end