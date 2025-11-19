@interface STASWorkoutVoiceAvailabilityProvider
- (BOOL)isFeatureSupported;
- (STASWorkoutVoiceAvailabilityProvider)init;
- (STASWorkoutVoiceAvailabilityProvider)initWithConnection:(id)a3;
@end

@implementation STASWorkoutVoiceAvailabilityProvider

- (STASWorkoutVoiceAvailabilityProvider)initWithConnection:(id)a3
{
  v3 = a3;
  v4 = sub_19080(v3);

  return v4;
}

- (BOOL)isFeatureSupported
{
  v2 = *(&self->super.isa + OBJC_IVAR___STASWorkoutVoiceAvailabilityProvider_bridgedValue);
  v3 = self;
  LOBYTE(v2) = sub_22334();

  return v2 & 1;
}

- (STASWorkoutVoiceAvailabilityProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end