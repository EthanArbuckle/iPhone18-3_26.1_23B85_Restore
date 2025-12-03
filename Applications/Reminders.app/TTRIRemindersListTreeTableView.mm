@interface TTRIRemindersListTreeTableView
- (CGPoint)contentOffset;
- (_TtC9Reminders30TTRIRemindersListTreeTableView)initWithCoder:(id)coder;
- (_TtC9Reminders30TTRIRemindersListTreeTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)setContentOffset:(CGPoint)offset;
@end

@implementation TTRIRemindersListTreeTableView

- (CGPoint)contentOffset
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(TTRIRemindersListTreeTableView *)&v4 contentOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  selfCopy = self;
  sub_1001D62AC(x, y);
}

- (_TtC9Reminders30TTRIRemindersListTreeTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v11 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders30TTRIRemindersListTreeTableView_ownerViewControllerFor52010514);
  *v11 = 0;
  v11[1] = 0;
  v13.receiver = self;
  v13.super_class = ObjectType;
  return [(TTRITreeTableView *)&v13 initWithFrame:style style:x, y, width, height];
}

- (_TtC9Reminders30TTRIRemindersListTreeTableView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders30TTRIRemindersListTreeTableView_ownerViewControllerFor52010514);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(TTRITreeTableView *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end