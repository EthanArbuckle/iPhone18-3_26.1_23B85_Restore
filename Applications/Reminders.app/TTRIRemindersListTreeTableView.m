@interface TTRIRemindersListTreeTableView
- (CGPoint)contentOffset;
- (_TtC9Reminders30TTRIRemindersListTreeTableView)initWithCoder:(id)a3;
- (_TtC9Reminders30TTRIRemindersListTreeTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)setContentOffset:(CGPoint)a3;
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

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_1001D62AC(x, y);
}

- (_TtC9Reminders30TTRIRemindersListTreeTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v11 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders30TTRIRemindersListTreeTableView_ownerViewControllerFor52010514);
  *v11 = 0;
  v11[1] = 0;
  v13.receiver = self;
  v13.super_class = ObjectType;
  return [(TTRITreeTableView *)&v13 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC9Reminders30TTRIRemindersListTreeTableView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9Reminders30TTRIRemindersListTreeTableView_ownerViewControllerFor52010514);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(TTRITreeTableView *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end