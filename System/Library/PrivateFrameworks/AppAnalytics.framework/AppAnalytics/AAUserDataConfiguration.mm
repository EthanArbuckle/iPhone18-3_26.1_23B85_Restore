@interface AAUserDataConfiguration
- (AAUserDataConfiguration)init;
- (AAUserDataConfiguration)initWithUserIDConfigurationsByKind:(id)kind startDateStorage:(id)storage globalSamplingThreshold:(int64_t)threshold userIDResetFlag:(id)flag storefrontProvider:(id)provider;
- (AAUserDataConfiguration)initWithUserIDConfigurationsByKind:(id)kind startDateStorage:(id)storage userIDResetFlag:(id)flag storefrontProvider:(id)provider;
@end

@implementation AAUserDataConfiguration

- (AAUserDataConfiguration)initWithUserIDConfigurationsByKind:(id)kind startDateStorage:(id)storage globalSamplingThreshold:(int64_t)threshold userIDResetFlag:(id)flag storefrontProvider:(id)provider
{
  type metadata accessor for BridgedIDSessionKind();
  type metadata accessor for BridgedUserIDConfiguration();
  sub_1B69EDA78();
  v11 = sub_1B6AB9210();
  swift_unknownObjectRetain();
  flagCopy = flag;
  swift_unknownObjectRetain();
  v13 = sub_1B69ECA38(v11, storage, threshold, flag, provider);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v13;
}

- (AAUserDataConfiguration)initWithUserIDConfigurationsByKind:(id)kind startDateStorage:(id)storage userIDResetFlag:(id)flag storefrontProvider:(id)provider
{
  type metadata accessor for BridgedIDSessionKind();
  type metadata accessor for BridgedUserIDConfiguration();
  sub_1B69EDA78();
  v9 = sub_1B6AB9210();
  swift_unknownObjectRetain();
  flagCopy = flag;
  swift_unknownObjectRetain();
  v11 = sub_1B69ED228(v9, storage, flag, provider);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v11;
}

- (AAUserDataConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end