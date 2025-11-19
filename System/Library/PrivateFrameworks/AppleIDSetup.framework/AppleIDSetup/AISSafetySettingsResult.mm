@interface AISSafetySettingsResult
- (AISSafetySettingsResult)init;
- (AISSafetySettingsResult)initWithIsSafetySettingsApplied:(BOOL)a3;
- (NSString)description;
@end

@implementation AISSafetySettingsResult

- (AISSafetySettingsResult)initWithIsSafetySettingsApplied:(BOOL)a3
{
  *(&self->super.isa + OBJC_IVAR___AISSafetySettingsResult_isSafetySettingsApplied) = a3;
  v4.receiver = self;
  v4.super_class = AISSafetySettingsResult;
  return [(AISSafetySettingsResult *)&v4 init];
}

- (NSString)description
{
  v2 = self;
  AISSafetySettingsResult.description.getter();

  v3 = sub_24075A084();

  return v3;
}

- (AISSafetySettingsResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end