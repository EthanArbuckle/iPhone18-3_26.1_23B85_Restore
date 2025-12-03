@interface AISSafetySettingsContext
- (AISSafetySettingsContext)init;
- (AISSafetySettingsContext)initWithFlowType:(int64_t)type;
- (NSString)description;
@end

@implementation AISSafetySettingsContext

- (AISSafetySettingsContext)initWithFlowType:(int64_t)type
{
  *(&self->super.isa + OBJC_IVAR___AISSafetySettingsContext_flowType) = type;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SafetySettingsContext();
  return [(AISSafetySettingsContext *)&v4 init];
}

- (NSString)description
{
  selfCopy = self;
  sub_24075A864();
  MEMORY[0x245CC5E60](0xD000000000000025, 0x8000000240788000);
  v5 = *(&selfCopy->super.isa + OBJC_IVAR___AISSafetySettingsContext_flowType);
  sub_24075A994();
  MEMORY[0x245CC5E60](32032, 0xE200000000000000);

  v3 = sub_24075A084();

  return v3;
}

- (AISSafetySettingsContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end