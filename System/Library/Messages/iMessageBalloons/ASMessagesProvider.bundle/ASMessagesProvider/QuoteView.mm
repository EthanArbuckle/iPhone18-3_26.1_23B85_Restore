@interface QuoteView
- (_TtC18ASMessagesProvider9QuoteView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation QuoteView

- (_TtC18ASMessagesProvider9QuoteView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_trailingQuote) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_creditLabel) = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkAspectRatio;
  v5 = sub_766690();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_isFullWidthArtwork) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkHasRoundedCorners) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_3A5074();
}

@end