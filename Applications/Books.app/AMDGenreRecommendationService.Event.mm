@interface AMDGenreRecommendationService.Event
- (NSDictionary)engagementData;
- (_TtCC5Books29AMDGenreRecommendationServiceP33_62C9D66230C56EEE80751242C5DC77115Event)init;
- (void)setEngagementData:(id)data;
@end

@implementation AMDGenreRecommendationService.Event

- (NSDictionary)engagementData
{
  if (*(self + OBJC_IVAR____TtCC5Books29AMDGenreRecommendationServiceP33_62C9D66230C56EEE80751242C5DC77115Event_engagementData))
  {

    v2.super.isa = sub_1007A2024().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setEngagementData:(id)data
{
  if (data)
  {
    v4 = sub_1007A2044();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtCC5Books29AMDGenreRecommendationServiceP33_62C9D66230C56EEE80751242C5DC77115Event_engagementData) = v4;
}

- (_TtCC5Books29AMDGenreRecommendationServiceP33_62C9D66230C56EEE80751242C5DC77115Event)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end