@interface AAUserDataConfiguration
- (AAUserDataConfiguration)init;
- (AAUserDataConfiguration)initWithUserIDConfigurationsByKind:(id)a3 startDateStorage:(id)a4 globalSamplingThreshold:(int64_t)a5 userIDResetFlag:(id)a6 storefrontProvider:(id)a7;
- (AAUserDataConfiguration)initWithUserIDConfigurationsByKind:(id)a3 startDateStorage:(id)a4 userIDResetFlag:(id)a5 storefrontProvider:(id)a6;
@end

@implementation AAUserDataConfiguration

- (AAUserDataConfiguration)initWithUserIDConfigurationsByKind:(id)a3 startDateStorage:(id)a4 globalSamplingThreshold:(int64_t)a5 userIDResetFlag:(id)a6 storefrontProvider:(id)a7
{
  type metadata accessor for BridgedIDSessionKind();
  type metadata accessor for BridgedUserIDConfiguration();
  sub_1B69EDA78();
  v11 = sub_1B6AB9210();
  swift_unknownObjectRetain();
  v12 = a6;
  swift_unknownObjectRetain();
  v13 = sub_1B69ECA38(v11, a4, a5, a6, a7);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v13;
}

- (AAUserDataConfiguration)initWithUserIDConfigurationsByKind:(id)a3 startDateStorage:(id)a4 userIDResetFlag:(id)a5 storefrontProvider:(id)a6
{
  type metadata accessor for BridgedIDSessionKind();
  type metadata accessor for BridgedUserIDConfiguration();
  sub_1B69EDA78();
  v9 = sub_1B6AB9210();
  swift_unknownObjectRetain();
  v10 = a5;
  swift_unknownObjectRetain();
  v11 = sub_1B69ED228(v9, a4, a5, a6);
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