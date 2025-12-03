@interface FootnoteView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension12FootnoteView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation FootnoteView

- (_TtC20ProductPageExtension12FootnoteView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_chevronView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_isHighlighted) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_1001336D4();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100133990();
}

@end