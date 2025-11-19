@interface RiverTodayCardBackgroundView
- (_TtC22SubscribePageExtension28RiverTodayCardBackgroundView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)preferredContentSizeDidChangeWithView:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation RiverTodayCardBackgroundView

- (void)layoutSubviews
{
  v2 = self;
  sub_10015A1D0();
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(RiverTodayCardBackgroundView *)&v3 didMoveToWindow];
  sub_10015A054();
}

- (void)preferredContentSizeDidChangeWithView:(id)a3 previousTraitCollection:(id)a4
{
  v4 = self;
  sub_10015A054();
}

- (_TtC22SubscribePageExtension28RiverTodayCardBackgroundView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end