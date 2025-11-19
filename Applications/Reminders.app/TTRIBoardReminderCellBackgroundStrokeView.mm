@interface TTRIBoardReminderCellBackgroundStrokeView
- (_TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView)initWithCoder:(id)a3;
- (_TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation TTRIBoardReminderCellBackgroundStrokeView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIBoardReminderCellBackgroundStrokeView *)&v3 layoutSubviews];
  sub_1004B33A0();
}

- (_TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeWidth) = 0;
  v9 = OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeColor;
  *(&self->super.super.super.isa + v9) = [objc_opt_self() tintColor];
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(TTRIBoardReminderCellBackgroundStrokeView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeWidth) = 0;
  v6 = OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeColor;
  v7 = objc_opt_self();
  v8 = a3;
  *(&self->super.super.super.isa + v6) = [v7 tintColor];
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(TTRIBoardReminderCellBackgroundStrokeView *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end