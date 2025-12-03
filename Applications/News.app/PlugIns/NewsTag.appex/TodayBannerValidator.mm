@interface TodayBannerValidator
- (BOOL)validateWith:(id)with bannerConfig:(id)config;
@end

@implementation TodayBannerValidator

- (BOOL)validateWith:(id)with bannerConfig:(id)config
{
  swift_unknownObjectRetain();
  configCopy = config;

  v7 = sub_10002F2A8(with, configCopy);
  swift_unknownObjectRelease();

  return v7 & 1;
}

@end