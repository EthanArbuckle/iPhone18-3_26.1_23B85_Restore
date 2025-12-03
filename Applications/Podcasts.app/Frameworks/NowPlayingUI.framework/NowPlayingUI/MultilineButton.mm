@interface MultilineButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityLabel;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIsAccessibilityElement:(BOOL)element;
- (void)setSelected:(BOOL)selected;
- (void)tintColorDidChange;
@end

@implementation MultilineButton

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MultilineButton();
  v4 = v5.receiver;
  [(MultilineButton *)&v5 setEnabled:enabledCopy];
  sub_ADEC4();
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_ACE24(highlighted);
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = type metadata accessor for MultilineButton();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isSelected = [(MultilineButton *)&v9 isSelected];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(MultilineButton *)&v8 setSelected:selectedCopy];
  if (isSelected != [(MultilineButton *)selfCopy isSelected])
  {
    sub_ADEC4();
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_AD05C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_AD2A8(width, height);
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

    selfCopy = eventCopy;
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
  sub_AD794();
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
  sub_AD580();
  v4 = v3;

  if (v4)
  {
    v5 = sub_14489C();
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
    sub_1448DC();
    selfCopy = self;
    v5 = sub_14489C();
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