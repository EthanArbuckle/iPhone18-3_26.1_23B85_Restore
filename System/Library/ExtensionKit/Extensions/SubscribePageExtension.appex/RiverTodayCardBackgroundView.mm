@interface RiverTodayCardBackgroundView
- (_TtC22SubscribePageExtension28RiverTodayCardBackgroundView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)preferredContentSizeDidChangeWithView:(id)view previousTraitCollection:(id)collection;
@end

@implementation RiverTodayCardBackgroundView

- (void)layoutSubviews
{
  selfCopy = self;
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

- (void)preferredContentSizeDidChangeWithView:(id)view previousTraitCollection:(id)collection
{
  selfCopy = self;
  sub_10015A054();
}

- (_TtC22SubscribePageExtension28RiverTodayCardBackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end