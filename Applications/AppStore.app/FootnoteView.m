@interface FootnoteView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC8AppStore12FootnoteView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation FootnoteView

- (_TtC8AppStore12FootnoteView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore12FootnoteView_chevronView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore12FootnoteView_isHighlighted) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_10007AC80();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10007AF3C();
}

@end