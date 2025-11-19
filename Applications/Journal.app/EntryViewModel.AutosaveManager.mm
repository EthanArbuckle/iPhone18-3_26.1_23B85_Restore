@interface EntryViewModel.AutosaveManager
- (void)receivedNotification:(id)a3;
- (void)startAutosaveTimer;
- (void)stopAutosaveTimer;
@end

@implementation EntryViewModel.AutosaveManager

- (void)receivedNotification:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100217D58();

  (*(v4 + 8))(v6, v3);
}

- (void)stopAutosaveTimer
{
  if (*self->autosaveTask)
  {

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }
}

- (void)startAutosaveTimer
{

  sub_100218550();
}

@end