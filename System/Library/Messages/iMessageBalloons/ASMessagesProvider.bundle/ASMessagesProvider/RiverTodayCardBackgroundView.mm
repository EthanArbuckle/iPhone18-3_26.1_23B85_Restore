@interface RiverTodayCardBackgroundView
- (_TtC18ASMessagesProvider28RiverTodayCardBackgroundView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)preferredContentSizeDidChangeWithView:(id)view previousTraitCollection:(id)collection;
@end

@implementation RiverTodayCardBackgroundView

- (void)layoutSubviews
{
  selfCopy = self;
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

- (void)preferredContentSizeDidChangeWithView:(id)view previousTraitCollection:(id)collection
{
  selfCopy = self;
  sub_4A3E2C();
}

- (_TtC18ASMessagesProvider28RiverTodayCardBackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end