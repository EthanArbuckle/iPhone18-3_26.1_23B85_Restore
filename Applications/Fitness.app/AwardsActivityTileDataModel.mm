@interface AwardsActivityTileDataModel
- (_TtC10FitnessApp27AwardsActivityTileDataModel)init;
- (void)achievementsDataProviderDidFinishInitialLoad:(id)load;
- (void)achievementsDataProviderDidUpdate:(id)update;
@end

@implementation AwardsActivityTileDataModel

- (_TtC10FitnessApp27AwardsActivityTileDataModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)achievementsDataProviderDidFinishInitialLoad:(id)load
{
  loadCopy = load;
  selfCopy = self;
  sub_1003242C8(sub_100324650, &unk_100852D40);
}

- (void)achievementsDataProviderDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_1003242C8(sub_100324584, &unk_100852D18);
}

@end