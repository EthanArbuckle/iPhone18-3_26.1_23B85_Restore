@interface AMDBookScorer.Event
- (NSDictionary)engagementData;
- (_TtCC5Books13AMDBookScorerP33_CD21F26B56464019284D998852D0D3665Event)init;
- (void)setEngagementData:(id)data;
@end

@implementation AMDBookScorer.Event

- (NSDictionary)engagementData
{
  if (*(self + OBJC_IVAR____TtCC5Books13AMDBookScorerP33_CD21F26B56464019284D998852D0D3665Event_engagementData))
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

  *(self + OBJC_IVAR____TtCC5Books13AMDBookScorerP33_CD21F26B56464019284D998852D0D3665Event_engagementData) = v4;
}

- (_TtCC5Books13AMDBookScorerP33_CD21F26B56464019284D998852D0D3665Event)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end