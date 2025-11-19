@interface QuoteView
- (_TtC22SubscribePageExtension9QuoteView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation QuoteView

- (_TtC22SubscribePageExtension9QuoteView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_trailingQuote) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_creditLabel) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkAspectRatio;
  v5 = sub_1007504F4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_isFullWidthArtwork) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkHasRoundedCorners) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10016FCC4();
}

@end