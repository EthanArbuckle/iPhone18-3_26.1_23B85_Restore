@interface NewFeaturesFlowManager
- (BOOL)needsToRun;
- (_TtC5Setup22NewFeaturesFlowManager)init;
- (_TtC5Setup22NewFeaturesFlowManager)initWithChronicle:(id)a3 featureFlags:(id)a4;
- (void)updatePresentedKey:(BOOL)a3;
@end

@implementation NewFeaturesFlowManager

- (_TtC5Setup22NewFeaturesFlowManager)initWithChronicle:(id)a3 featureFlags:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = sub_10005E694(v5, a4);

  return v6;
}

- (BOOL)needsToRun
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Setup22NewFeaturesFlowManager_featureFlags);
  v3 = self;
  if ([v2 isSolariumEnabled])
  {
    v4 = [*(&v3->super.isa + OBJC_IVAR____TtC5Setup22NewFeaturesFlowManager_chronicle) entryForFeature:7];

    v3 = v4;
    if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

- (void)updatePresentedKey:(BOOL)a3
{
  v4 = self;
  sub_10005E478(a3);
}

- (_TtC5Setup22NewFeaturesFlowManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end