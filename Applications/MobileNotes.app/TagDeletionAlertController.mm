@interface TagDeletionAlertController
- (_TtC11MobileNotes26TagDeletionAlertController)init;
- (_TtC11MobileNotes26TagDeletionAlertController)initWithViewControllerManager:(id)manager window:(id)window eventReporter:(id)reporter deletionMethod:(int64_t)method;
- (id)makeDeleteTagAlertControllerWithTags:(id)tags sendNotification:(BOOL)notification;
@end

@implementation TagDeletionAlertController

- (_TtC11MobileNotes26TagDeletionAlertController)initWithViewControllerManager:(id)manager window:(id)window eventReporter:(id)reporter deletionMethod:(int64_t)method
{
  managerCopy = manager;
  windowCopy = window;
  reporterCopy = reporter;
  return sub_10029A538(manager, window, reporter, method);
}

- (id)makeDeleteTagAlertControllerWithTags:(id)tags sendNotification:(BOOL)notification
{
  sub_1000054A4(0, &qword_1006C63E0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v8 = sub_10029A700(v6, notification);

  return v8;
}

- (_TtC11MobileNotes26TagDeletionAlertController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end