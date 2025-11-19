@interface CommitTrackingView
- (_TtC27ActionButtonConfigurationUI18CommitTrackingView)initWithCoder:(id)a3;
- (_TtC27ActionButtonConfigurationUI18CommitTrackingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CommitTrackingView

- (void)layoutSubviews
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI18CommitTrackingView_commitHandler);
  if (v2)
  {
    v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC27ActionButtonConfigurationUI18CommitTrackingView_commitHandler);
    v4 = self;
    v5 = sub_23DDD6EA4(v2);
    v2(v5);

    sub_23DDCC0D8(v2);
  }
}

- (_TtC27ActionButtonConfigurationUI18CommitTrackingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI18CommitTrackingView_commitHandler);
  *v9 = 0;
  v9[1] = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(CommitTrackingView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC27ActionButtonConfigurationUI18CommitTrackingView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI18CommitTrackingView_commitHandler);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(CommitTrackingView *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end