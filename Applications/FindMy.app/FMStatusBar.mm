@interface FMStatusBar
- (_TtC6FindMy11FMStatusBar)initWithFrame:(CGRect)a3;
- (void)handleTapWithSender:(id)a3;
- (void)layoutSubviews;
@end

@implementation FMStatusBar

- (void)handleTapWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10033C440();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10033B8A8();
}

- (_TtC6FindMy11FMStatusBar)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end