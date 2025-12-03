@interface NewFeaturesFlowManager
- (BOOL)needsToRun;
- (_TtC5Setup22NewFeaturesFlowManager)init;
- (_TtC5Setup22NewFeaturesFlowManager)initWithChronicle:(id)chronicle featureFlags:(id)flags;
- (void)updatePresentedKey:(BOOL)key;
@end

@implementation NewFeaturesFlowManager

- (_TtC5Setup22NewFeaturesFlowManager)initWithChronicle:(id)chronicle featureFlags:(id)flags
{
  chronicleCopy = chronicle;
  swift_unknownObjectRetain();
  v6 = sub_10005E694(chronicleCopy, flags);

  return v6;
}

- (BOOL)needsToRun
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Setup22NewFeaturesFlowManager_featureFlags);
  selfCopy = self;
  if ([v2 isSolariumEnabled])
  {
    v4 = [*(&selfCopy->super.isa + OBJC_IVAR____TtC5Setup22NewFeaturesFlowManager_chronicle) entryForFeature:7];

    selfCopy = v4;
    if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

- (void)updatePresentedKey:(BOOL)key
{
  selfCopy = self;
  sub_10005E478(key);
}

- (_TtC5Setup22NewFeaturesFlowManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end