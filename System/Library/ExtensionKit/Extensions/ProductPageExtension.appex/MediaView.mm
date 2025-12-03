@interface MediaView
- (UIColor)backgroundColor;
- (_TtC20ProductPageExtension9MediaView)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension9MediaView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation MediaView

- (UIColor)backgroundColor
{
  backgroundColor = [*(*(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_100452644(color);
}

- (_TtC20ProductPageExtension9MediaView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100453098();
}

- (_TtC20ProductPageExtension9MediaView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end