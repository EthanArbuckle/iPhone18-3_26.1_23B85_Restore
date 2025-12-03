@interface TTRIRemindersBoardBackgroundView
- (_TtC9Reminders32TTRIRemindersBoardBackgroundView)initWithFrame:(CGRect)frame;
- (void)tapGestureAction:(id)action;
@end

@implementation TTRIRemindersBoardBackgroundView

- (_TtC9Reminders32TTRIRemindersBoardBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *&self->delegate[OBJC_IVAR____TtC9Reminders32TTRIRemindersBoardBackgroundView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v14.receiver = self;
  v14.super_class = ObjectType;
  height = [(TTRIRemindersBoardBackgroundView *)&v14 initWithFrame:x, y, width, height];
  v10 = objc_allocWithZone(UITapGestureRecognizer);
  v11 = height;
  v12 = [v10 initWithTarget:v11 action:"tapGestureAction:"];
  [(TTRIRemindersBoardBackgroundView *)v11 addGestureRecognizer:v12];

  return v11;
}

- (void)tapGestureAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1003399D4(v6);

  sub_10000B070(v6);
}

@end