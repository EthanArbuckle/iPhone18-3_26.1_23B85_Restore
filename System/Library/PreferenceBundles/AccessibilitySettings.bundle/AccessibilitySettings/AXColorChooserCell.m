@interface AXColorChooserCell
- (BOOL)colorIsBlack:(id)a3;
- (BOOL)colorIsWhite:(id)a3;
- (BOOL)fillCircle;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setFillCircle:(BOOL)a3;
@end

@implementation AXColorChooserCell

- (BOOL)colorIsWhite:(id)a3
{
  v3 = a3;
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 floatValue];
  if (v5 == 1.0)
  {
    v6 = [v3 objectAtIndexedSubscript:1];
    [v6 floatValue];
    if (v7 == 1.0)
    {
      v8 = [v3 objectAtIndexedSubscript:2];
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

- (BOOL)colorIsBlack:(id)a3
{
  v3 = a3;
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 floatValue];
  if (v5 == 0.0)
  {
    v6 = [v3 objectAtIndexedSubscript:1];
    [v6 floatValue];
    if (v7 == 0.0)
    {
      v8 = [v3 objectAtIndexedSubscript:2];
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

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v28.receiver = self;
  v28.super_class = AXColorChooserCell;
  v4 = a3;
  [(AXColorChooserCell *)&v28 refreshCellContentsWithSpecifier:v4];
  v5 = [AXColorCircle alloc];
  v6 = [(AXColorCircle *)v5 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, v28.receiver, v28.super_class];
  v7 = [v4 propertyForKey:@"rgb"];

  if ([(AXColorChooserCell *)self colorIsWhite:v7])
  {
    v8 = [(AXColorChooserCell *)self traitCollection];
    v9 = [v8 userInterfaceStyle];

    if (v9 == &dword_0 + 1)
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
    v11 = [(AXColorChooserCell *)self traitCollection];
    v12 = [v11 userInterfaceStyle];

    if (v12 == &dword_0 + 2)
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

  v26 = [(AXColorChooserCell *)self contentView];
  [v26 addSubview:v6];

  [(AXColorChooserCell *)self setCircle:v6];
  LODWORD(v26) = [(AXColorChooserCell *)self colorIsWhite:v7];
  v27 = [(AXColorChooserCell *)self circle];
  [v27 setFillCircle:v26 ^ 1];
}

- (void)setFillCircle:(BOOL)a3
{
  v3 = a3;
  v4 = [(AXColorChooserCell *)self circle];
  [v4 setFillCircle:v3];
}

- (BOOL)fillCircle
{
  v2 = [(AXColorChooserCell *)self circle];
  v3 = [v2 fillCircle];

  return v3;
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
    v5 = [(AXColorChooserCell *)self contentView];
    [v5 bounds];
    v6 = CGRectGetMaxX(v24) - v4 + -9.0;
  }

  else
  {
    v6 = 9.0;
  }

  [(AXColorChooserCell *)self bounds];
  v8 = v7 * 0.5 - v4 * 0.5;
  v9 = [(AXColorChooserCell *)self circle];
  [v9 setFrame:{v6, v8, v4, v4}];

  v10 = [(AXColorChooserCell *)self circle];
  [v10 setNeedsDisplay];

  v11 = [(AXColorChooserCell *)self textLabel];
  [v11 frame];
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
  v22 = [(AXColorChooserCell *)self textLabel];
  [v22 setFrame:{v21, v15, v17, v19}];
}

@end