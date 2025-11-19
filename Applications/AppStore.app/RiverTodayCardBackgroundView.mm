@interface RiverTodayCardBackgroundView
- (_TtC8AppStore28RiverTodayCardBackgroundView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)preferredContentSizeDidChangeWithView:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation RiverTodayCardBackgroundView

- (void)layoutSubviews
{
  v2 = self;
  sub_1004A38D4();
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(RiverTodayCardBackgroundView *)&v3 didMoveToWindow];
  sub_1004A3758();
}

- (void)preferredContentSizeDidChangeWithView:(id)a3 previousTraitCollection:(id)a4
{
  v4 = self;
  sub_1004A3758();
}

- (_TtC8AppStore28RiverTodayCardBackgroundView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end