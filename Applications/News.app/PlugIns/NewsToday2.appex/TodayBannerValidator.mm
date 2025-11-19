@interface TodayBannerValidator
- (BOOL)validateWith:(id)a3 bannerConfig:(id)a4;
@end

@implementation TodayBannerValidator

- (BOOL)validateWith:(id)a3 bannerConfig:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;

  v7 = sub_1000B4708(a3, v6);
  swift_unknownObjectRelease();

  return v7 & 1;
}

@end