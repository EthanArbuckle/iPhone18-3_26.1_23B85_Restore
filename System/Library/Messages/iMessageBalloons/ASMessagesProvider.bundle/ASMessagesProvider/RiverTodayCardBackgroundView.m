@interface RiverTodayCardBackgroundView
- (_TtC18ASMessagesProvider28RiverTodayCardBackgroundView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)preferredContentSizeDidChangeWithView:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation RiverTodayCardBackgroundView

- (void)layoutSubviews
{
  v2 = self;
  sub_4A3FA8();
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(RiverTodayCardBackgroundView *)&v3 didMoveToWindow];
  sub_4A3E2C();
}

- (void)preferredContentSizeDidChangeWithView:(id)a3 previousTraitCollection:(id)a4
{
  v4 = self;
  sub_4A3E2C();
}

- (_TtC18ASMessagesProvider28RiverTodayCardBackgroundView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end