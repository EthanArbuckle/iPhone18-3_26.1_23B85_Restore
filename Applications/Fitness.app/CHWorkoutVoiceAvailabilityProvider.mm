@interface CHWorkoutVoiceAvailabilityProvider
- (BOOL)isFeatureSupported;
- (CHWorkoutVoiceAvailabilityProvider)init;
- (CHWorkoutVoiceAvailabilityProvider)initWithConnection:(id)connection;
- (void)setupAvailabilityObservation;
@end

@implementation CHWorkoutVoiceAvailabilityProvider

- (CHWorkoutVoiceAvailabilityProvider)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sub_10039F094(connectionCopy);

  return v4;
}

- (void)setupAvailabilityObservation
{
  v3 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_10026E198(0, 0, v5, &unk_1006ECAA8, v7);
}

- (BOOL)isFeatureSupported
{
  selfCopy = self;
  v3 = dispatch thunk of WorkoutVoiceAvailabilityProvider.isFeatureSupported()();

  return v3 & 1;
}

- (CHWorkoutVoiceAvailabilityProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end