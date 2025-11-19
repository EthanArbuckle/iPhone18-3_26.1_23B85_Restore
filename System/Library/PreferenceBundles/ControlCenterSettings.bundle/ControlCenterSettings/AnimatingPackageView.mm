@interface AnimatingPackageView
- (CGSize)intrinsicContentSize;
- (_TtC21ControlCenterSettings20AnimatingPackageView)initWithCoder:(id)a3;
- (_TtC21ControlCenterSettings20AnimatingPackageView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation AnimatingPackageView

- (_TtC21ControlCenterSettings20AnimatingPackageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_1A10(x, y, width, height);

  return v7;
}

- (_TtC21ControlCenterSettings20AnimatingPackageView)initWithCoder:(id)a3
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_package) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_animating) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_packageLayer) = 0;
  result = sub_BB5C();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_packageLayer);
  if (v8)
  {
    v9 = self;
    v10 = v8;
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    MidX = CGRectGetMidX(v14);
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    [v10 setPosition:{MidX, CGRectGetMinY(v15)}];
    CATransform3DMakeScale(&v12, 0.333333333, 0.333333333, 1.0);
    [v10 setTransform:&v12];
  }

  else
  {
  }
}

- (CGSize)intrinsicContentSize
{
  sub_BA8C();
  sub_BA7C();
  sub_BA6C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21ControlCenterSettings20AnimatingPackageView_packageLayer);
  if (v3)
  {
    v4 = self;
    v5 = v3;
    [v5 bounds];
    v7 = v6 * 0.333333333;
    [v5 bounds];
    v9 = v8;

    v10 = v9 * 0.333333333;
  }

  else
  {
    v7 = UIViewNoIntrinsicMetric;

    v10 = UIViewNoIntrinsicMetric;
  }

  v11 = v7;
  result.height = v10;
  result.width = v11;
  return result;
}

@end