@interface QuoteView
- (_TtC20ProductPageExtension9QuoteView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation QuoteView

- (_TtC20ProductPageExtension9QuoteView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension9QuoteView_trailingQuote) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension9QuoteView_creditLabel) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
  v5 = sub_10076D39C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension9QuoteView_isFullWidthArtwork) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkHasRoundedCorners) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1003B463C();
}

@end