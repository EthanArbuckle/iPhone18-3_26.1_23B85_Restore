@interface TagDeletionAlertController
- (_TtC11MobileNotes26TagDeletionAlertController)init;
- (_TtC11MobileNotes26TagDeletionAlertController)initWithViewControllerManager:(id)a3 window:(id)a4 eventReporter:(id)a5 deletionMethod:(int64_t)a6;
- (id)makeDeleteTagAlertControllerWithTags:(id)a3 sendNotification:(BOOL)a4;
@end

@implementation TagDeletionAlertController

- (_TtC11MobileNotes26TagDeletionAlertController)initWithViewControllerManager:(id)a3 window:(id)a4 eventReporter:(id)a5 deletionMethod:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  return sub_10029A538(a3, a4, a5, a6);
}

- (id)makeDeleteTagAlertControllerWithTags:(id)a3 sendNotification:(BOOL)a4
{
  sub_1000054A4(0, &qword_1006C63E0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  v8 = sub_10029A700(v6, a4);

  return v8;
}

- (_TtC11MobileNotes26TagDeletionAlertController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end