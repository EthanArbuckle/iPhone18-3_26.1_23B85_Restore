@interface STASWorkoutVoiceAvailabilityProvider
- (BOOL)isFeatureSupported;
- (STASWorkoutVoiceAvailabilityProvider)init;
- (STASWorkoutVoiceAvailabilityProvider)initWithConnection:(id)connection;
@end

@implementation STASWorkoutVoiceAvailabilityProvider

- (STASWorkoutVoiceAvailabilityProvider)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sub_19080(connectionCopy);

  return v4;
}

- (BOOL)isFeatureSupported
{
  v2 = *(&self->super.isa + OBJC_IVAR___STASWorkoutVoiceAvailabilityProvider_bridgedValue);
  selfCopy = self;
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