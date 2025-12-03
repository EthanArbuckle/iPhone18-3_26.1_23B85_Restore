@interface SocialProfileHeaderRow
- (BOOL)isHighlighted;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (_TtC16MusicApplication22SocialProfileHeaderRow)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIsAccessibilityElement:(BOOL)element;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SocialProfileHeaderRow

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SocialProfileHeaderRow();
  return [(SocialProfileHeaderRow *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = type metadata accessor for SocialProfileHeaderRow();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHighlighted = [(SocialProfileHeaderRow *)&v9 isHighlighted];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(SocialProfileHeaderRow *)&v8 setHighlighted:highlightedCopy];
  sub_4592A8(isHighlighted);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_4593A4();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  if (![(SocialProfileHeaderRow *)selfCopy pointInside:eventCopy withEvent:x, y])
  {

    goto LABEL_5;
  }

  isEnabled = [(SocialProfileHeaderRow *)selfCopy isEnabled];

  if ((isEnabled & 1) == 0)
  {
LABEL_5:

    selfCopy = 0;
  }

  return selfCopy;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  [(SocialProfileHeaderRow *)selfCopy intrinsicContentSize];
  v6 = v5;
  sub_7FD28();
  v7 = sub_AB38E0();

  if (width >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = width;
  }

  if (v7)
  {
    v8 = v6;
  }

  v9 = 48.0;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_4598C8();

  v4 = 48.0;
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_4599A4(change);
}

- (void)setIsAccessibilityElement:(BOOL)element
{
  elementCopy = element;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SocialProfileHeaderRow();
  [(SocialProfileHeaderRow *)&v4 setIsAccessibilityElement:elementCopy];
}

- (NSString)accessibilityLabel
{
  if (*(*(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_titleCompositingView) + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text + 8))
  {

    v2 = sub_AB9260();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)accessibilityValue
{
  selfCopy = self;
  sub_459CC4();
  v4 = v3;

  if (v4)
  {
    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SocialProfileHeaderRow();
  [(SocialProfileHeaderRow *)&v4 setAccessibilityTraits:traits];
}

- (_TtC16MusicApplication22SocialProfileHeaderRow)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end