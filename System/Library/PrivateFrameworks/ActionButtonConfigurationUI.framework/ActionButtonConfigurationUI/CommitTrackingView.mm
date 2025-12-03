@interface CommitTrackingView
- (_TtC27ActionButtonConfigurationUI18CommitTrackingView)initWithCoder:(id)coder;
- (_TtC27ActionButtonConfigurationUI18CommitTrackingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CommitTrackingView

- (void)layoutSubviews
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI18CommitTrackingView_commitHandler);
  if (v2)
  {
    v3 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC27ActionButtonConfigurationUI18CommitTrackingView_commitHandler);
    selfCopy = self;
    v5 = sub_23DDD6EA4(v2);
    v2(v5);

    sub_23DDCC0D8(v2);
  }
}

- (_TtC27ActionButtonConfigurationUI18CommitTrackingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI18CommitTrackingView_commitHandler);
  *v9 = 0;
  v9[1] = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(CommitTrackingView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC27ActionButtonConfigurationUI18CommitTrackingView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI18CommitTrackingView_commitHandler);
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(CommitTrackingView *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end