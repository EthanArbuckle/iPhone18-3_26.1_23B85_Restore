@interface BrandedAppTodayCardNoArtBackgroundView
- (_TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation BrandedAppTodayCardNoArtBackgroundView

- (_TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_style;
  v5 = sub_10076BF6C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension38BrandedAppTodayCardNoArtBackgroundView_image) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001175B0();
}

@end