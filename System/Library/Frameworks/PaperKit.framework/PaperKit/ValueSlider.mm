@interface ValueSlider
- (CGSize)intrinsicContentSize;
- (_TtC8PaperKit11ValueSlider)initWithFrame:(CGRect)frame;
- (void)didChangeSlider;
@end

@implementation ValueSlider

- (void)didChangeSlider
{
  selfCopy = self;
  ValueSlider.didChangeSlider()();
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8PaperKit11ValueSlider_contentStackView) systemLayoutSizeFittingSize_];
  v4 = fmax(v3, 50.0);
  result.height = v4;
  result.width = v2;
  return result;
}

- (_TtC8PaperKit11ValueSlider)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end