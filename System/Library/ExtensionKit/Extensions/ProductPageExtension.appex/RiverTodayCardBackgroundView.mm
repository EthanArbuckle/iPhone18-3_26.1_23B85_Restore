@interface RiverTodayCardBackgroundView
- (_TtC20ProductPageExtension28RiverTodayCardBackgroundView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)preferredContentSizeDidChangeWithView:(id)view previousTraitCollection:(id)collection;
@end

@implementation RiverTodayCardBackgroundView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10072161C();
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(RiverTodayCardBackgroundView *)&v3 didMoveToWindow];
  sub_1007214A0();
}

- (void)preferredContentSizeDidChangeWithView:(id)view previousTraitCollection:(id)collection
{
  selfCopy = self;
  sub_1007214A0();
}

- (_TtC20ProductPageExtension28RiverTodayCardBackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end