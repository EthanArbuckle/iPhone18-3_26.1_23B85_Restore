@interface CHWorkoutConfigurationOccurrenceStore
- (CHWorkoutConfigurationOccurrenceStore)init;
- (void)handleAppWillEnterForeground;
@end

@implementation CHWorkoutConfigurationOccurrenceStore

- (CHWorkoutConfigurationOccurrenceStore)init
{
  type metadata accessor for WorkoutConfigurationOccurrenceStore();
  v3 = UIApplicationSignificantTimeChangeNotification;
  *(&self->super.isa + OBJC_IVAR___CHWorkoutConfigurationOccurrenceStore_bridgedValue) = WorkoutConfigurationOccurrenceStore.__allocating_init(applicationSignificantTimeChangeNotificationName:)();
  v5.receiver = self;
  v5.super_class = type metadata accessor for WorkoutConfigurationOccurrenceStoreBridge();
  return [(CHWorkoutConfigurationOccurrenceStore *)&v5 init];
}

- (void)handleAppWillEnterForeground
{
  selfCopy = self;
  dispatch thunk of WorkoutConfigurationOccurrenceStore.handleAppWillEnterForeground()();
}

@end