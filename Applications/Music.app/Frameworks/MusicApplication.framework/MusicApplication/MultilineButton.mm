@interface MultilineButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityLabel;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIsAccessibilityElement:(BOOL)element;
- (void)tintColorDidChange;
@end

@implementation MultilineButton

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_456BEC(highlighted);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_456E38();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_4570DC(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  if (![(MultilineButton *)selfCopy pointInside:eventCopy withEvent:x, y])
  {

    goto LABEL_5;
  }

  isEnabled = [(MultilineButton *)selfCopy isEnabled];

  if ((isEnabled & 1) == 0)
  {
LABEL_5:

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MultilineButton();
  v2 = v3.receiver;
  [(MultilineButton *)&v3 tintColorDidChange];
  sub_457634();
}

- (void)setIsAccessibilityElement:(BOOL)element
{
  elementCopy = element;
  v4.receiver = self;
  v4.super_class = type metadata accessor for MultilineButton();
  [(MultilineButton *)&v4 setIsAccessibilityElement:elementCopy];
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_4573F8();
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

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    sub_AB92A0();
    selfCopy = self;
    v5 = sub_AB9260();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for MultilineButton();
  [(MultilineButton *)&v7 setAccessibilityLabel:v5];
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MultilineButton();
  [(MultilineButton *)&v4 setAccessibilityTraits:traits];
}

@end