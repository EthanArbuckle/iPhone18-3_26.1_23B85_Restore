@interface MultilineButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityLabel;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation MultilineButton

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MultilineButton();
  v4 = v5.receiver;
  [(MultilineButton *)&v5 setEnabled:v3];
  sub_ADEC4();
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_ACE24(a3);
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for MultilineButton();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(MultilineButton *)&v9 isSelected];
  v8.receiver = v6;
  v8.super_class = v5;
  [(MultilineButton *)&v8 setSelected:v3];
  if (v7 != [(MultilineButton *)v6 isSelected])
  {
    sub_ADEC4();
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_AD05C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_AD2A8(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  if (![(MultilineButton *)v8 pointInside:v7 withEvent:x, y])
  {

    v8 = v7;
    goto LABEL_5;
  }

  v9 = [(MultilineButton *)v8 isEnabled];

  if ((v9 & 1) == 0)
  {
LABEL_5:

    v8 = 0;
  }

  return v8;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MultilineButton();
  v2 = v3.receiver;
  [(MultilineButton *)&v3 tintColorDidChange];
  sub_AD794();
}

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for MultilineButton();
  [(MultilineButton *)&v4 setIsAccessibilityElement:v3];
}

- (NSString)accessibilityLabel
{
  v2 = self;
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

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    sub_1448DC();
    v4 = self;
    v5 = sub_14489C();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for MultilineButton();
  [(MultilineButton *)&v7 setAccessibilityLabel:v5];
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MultilineButton();
  [(MultilineButton *)&v4 setAccessibilityTraits:a3];
}

@end