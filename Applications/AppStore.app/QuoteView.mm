@interface QuoteView
- (_TtC8AppStore9QuoteView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation QuoteView

- (_TtC8AppStore9QuoteView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore9QuoteView_trailingQuote) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore9QuoteView_creditLabel) = 0;
  v4 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkAspectRatio;
  v5 = type metadata accessor for AspectRatio();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore9QuoteView_isFullWidthArtwork) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore9QuoteView_artworkHasRoundedCorners) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10007170C();
}

@end