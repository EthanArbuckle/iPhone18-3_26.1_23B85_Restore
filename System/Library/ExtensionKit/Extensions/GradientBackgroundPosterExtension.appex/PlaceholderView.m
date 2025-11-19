@interface PlaceholderView
- (_TtC33GradientBackgroundPosterExtension15PlaceholderView)initWithCoder:(id)a3;
- (_TtC33GradientBackgroundPosterExtension15PlaceholderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PlaceholderView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlaceholderView();
  v2 = v3.receiver;
  [(PlaceholderView *)&v3 layoutSubviews];
  sub_100003CD4();
}

- (_TtC33GradientBackgroundPosterExtension15PlaceholderView)initWithFrame:(CGRect)a3
{
  v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_label;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation) = 0;
  result = sub_100041DCC();
  __break(1u);
  return result;
}

- (_TtC33GradientBackgroundPosterExtension15PlaceholderView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_label;
  v5 = [objc_allocWithZone(UILabel) init];
  *(&self->super.super.super.isa + v4) = v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation) = 0;

  type metadata accessor for PlaceholderView();
  v6 = *((swift_isaMask & self->super.super.super.isa) + 0x30);
  v7 = *((swift_isaMask & self->super.super.super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

@end