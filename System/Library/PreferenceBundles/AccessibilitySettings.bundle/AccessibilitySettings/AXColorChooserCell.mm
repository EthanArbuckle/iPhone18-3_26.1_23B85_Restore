@interface AXColorChooserCell
- (BOOL)colorIsBlack:(id)black;
- (BOOL)colorIsWhite:(id)white;
- (BOOL)fillCircle;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setFillCircle:(BOOL)circle;
@end

@implementation AXColorChooserCell

- (BOOL)colorIsWhite:(id)white
{
  whiteCopy = white;
  v4 = [whiteCopy objectAtIndexedSubscript:0];
  [v4 floatValue];
  if (v5 == 1.0)
  {
    v6 = [whiteCopy objectAtIndexedSubscript:1];
    [v6 floatValue];
    if (v7 == 1.0)
    {
      v8 = [whiteCopy objectAtIndexedSubscript:2];
      [v8 floatValue];
      v10 = v9 == 1.0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)colorIsBlack:(id)black
{
  blackCopy = black;
  v4 = [blackCopy objectAtIndexedSubscript:0];
  [v4 floatValue];
  if (v5 == 0.0)
  {
    v6 = [blackCopy objectAtIndexedSubscript:1];
    [v6 floatValue];
    if (v7 == 0.0)
    {
      v8 = [blackCopy objectAtIndexedSubscript:2];
      [v8 floatValue];
      v10 = v9 == 0.0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v28.receiver = self;
  v28.super_class = AXColorChooserCell;
  specifierCopy = specifier;
  [(AXColorChooserCell *)&v28 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [AXColorCircle alloc];
  v6 = [(AXColorCircle *)v5 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, v28.receiver, v28.super_class];
  v7 = [specifierCopy propertyForKey:@"rgb"];

  if ([(AXColorChooserCell *)self colorIsWhite:v7])
  {
    traitCollection = [(AXColorChooserCell *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == &dword_0 + 1)
    {
      v10 = +[UIColor blackColor];
LABEL_7:
      v13 = v10;
      [(AXColorCircle *)v6 setColor:v10];
LABEL_11:

      goto LABEL_12;
    }
  }

  if ([(AXColorChooserCell *)self colorIsBlack:v7])
  {
    traitCollection2 = [(AXColorChooserCell *)self traitCollection];
    userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

    if (userInterfaceStyle2 == &dword_0 + 2)
    {
      v10 = +[UIColor whiteColor];
      goto LABEL_7;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [v7 objectAtIndexedSubscript:0];
    [v13 floatValue];
    v15 = v14;
    v16 = [v7 objectAtIndexedSubscript:1];
    [v16 floatValue];
    v18 = v17;
    v19 = [v7 objectAtIndexedSubscript:2];
    [v19 floatValue];
    v21 = v20;
    v22 = [v7 objectAtIndexedSubscript:3];
    [v22 floatValue];
    v24 = [UIColor colorWithRed:v15 green:v18 blue:v21 alpha:v23];
    [(AXColorCircle *)v6 setColor:v24];

    goto LABEL_11;
  }

  [(AXColorCircle *)v6 setColor:v7];
LABEL_12:
  v25 = +[UIColor clearColor];
  [(AXColorCircle *)v6 setBackgroundColor:v25];

  contentView = [(AXColorChooserCell *)self contentView];
  [contentView addSubview:v6];

  [(AXColorChooserCell *)self setCircle:v6];
  LODWORD(contentView) = [(AXColorChooserCell *)self colorIsWhite:v7];
  circle = [(AXColorChooserCell *)self circle];
  [circle setFillCircle:contentView ^ 1];
}

- (void)setFillCircle:(BOOL)circle
{
  circleCopy = circle;
  circle = [(AXColorChooserCell *)self circle];
  [circle setFillCircle:circleCopy];
}

- (BOOL)fillCircle
{
  circle = [(AXColorChooserCell *)self circle];
  fillCircle = [circle fillCircle];

  return fillCircle;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = AXColorChooserCell;
  [(AXColorChooserCell *)&v23 layoutSubviews];
  v3 = [UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(AXColorChooserCell *)self semanticContentAttribute]];
  if (AXPreferredContentSizeCategoryIsAccessibilityCategory())
  {
    v4 = 30.0;
  }

  else
  {
    v4 = 10.0;
  }

  if (v3)
  {
    contentView = [(AXColorChooserCell *)self contentView];
    [contentView bounds];
    v6 = CGRectGetMaxX(v24) - v4 + -9.0;
  }

  else
  {
    v6 = 9.0;
  }

  [(AXColorChooserCell *)self bounds];
  v8 = v7 * 0.5 - v4 * 0.5;
  circle = [(AXColorChooserCell *)self circle];
  [circle setFrame:{v6, v8, v4, v4}];

  circle2 = [(AXColorChooserCell *)self circle];
  [circle2 setNeedsDisplay];

  textLabel = [(AXColorChooserCell *)self textLabel];
  [textLabel frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v4 + -1.0;
  if (v3)
  {
    v20 = -(v4 + -1.0);
  }

  v21 = v20 + v13;
  textLabel2 = [(AXColorChooserCell *)self textLabel];
  [textLabel2 setFrame:{v21, v15, v17, v19}];
}

@end