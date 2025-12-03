@interface CHAwardsDataProvider
- (CHAwardsDataProvider)init;
- (id)achievementsForWorkoutIdentifier:(id)identifier;
@end

@implementation CHAwardsDataProvider

- (CHAwardsDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)achievementsForWorkoutIdentifier:(id)identifier
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000066AC((&self->super.isa + OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider), *&self->awardsDataProvider[OBJC_IVAR___CHAwardsDataProvider_awardsDataProvider + 16]);
  selfCopy = self;
  dispatch thunk of AAUIAwardsDataProviding.achievements(forWorkoutIdentifier:)();

  sub_1001E0AAC();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

@end