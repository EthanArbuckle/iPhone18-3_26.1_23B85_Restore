@interface TTRIRemindersBoardBackgroundView
- (_TtC9Reminders32TTRIRemindersBoardBackgroundView)initWithFrame:(CGRect)a3;
- (void)tapGestureAction:(id)a3;
@end

@implementation TTRIRemindersBoardBackgroundView

- (_TtC9Reminders32TTRIRemindersBoardBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *&self->delegate[OBJC_IVAR____TtC9Reminders32TTRIRemindersBoardBackgroundView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v14.receiver = self;
  v14.super_class = ObjectType;
  v9 = [(TTRIRemindersBoardBackgroundView *)&v14 initWithFrame:x, y, width, height];
  v10 = objc_allocWithZone(UITapGestureRecognizer);
  v11 = v9;
  v12 = [v10 initWithTarget:v11 action:"tapGestureAction:"];
  [(TTRIRemindersBoardBackgroundView *)v11 addGestureRecognizer:v12];

  return v11;
}

- (void)tapGestureAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1003399D4(v6);

  sub_10000B070(v6);
}

@end