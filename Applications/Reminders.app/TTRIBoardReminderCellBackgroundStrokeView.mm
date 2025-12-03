@interface TTRIBoardReminderCellBackgroundStrokeView
- (_TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView)initWithCoder:(id)coder;
- (_TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView)initWithFrame:(CGRect)frame;
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

- (_TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeWidth) = 0;
  v9 = OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeColor;
  *(&self->super.super.super.isa + v9) = [objc_opt_self() tintColor];
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(TTRIBoardReminderCellBackgroundStrokeView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeWidth) = 0;
  v6 = OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeColor;
  v7 = objc_opt_self();
  coderCopy = coder;
  *(&self->super.super.super.isa + v6) = [v7 tintColor];
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(TTRIBoardReminderCellBackgroundStrokeView *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end