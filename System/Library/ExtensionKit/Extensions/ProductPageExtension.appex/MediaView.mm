@interface MediaView
- (UIColor)backgroundColor;
- (_TtC20ProductPageExtension9MediaView)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension9MediaView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation MediaView

- (UIColor)backgroundColor
{
  v2 = [*(*(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100452644(a3);
}

- (_TtC20ProductPageExtension9MediaView)initWithCoder:(id)a3
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
  v2 = self;
  sub_100453098();
}

- (_TtC20ProductPageExtension9MediaView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end