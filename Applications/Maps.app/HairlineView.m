@interface HairlineView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (HairlineView)init;
- (HairlineView)initWithCoder:(id)a3;
- (HairlineView)initWithFrame:(CGRect)a3;
- (double)leadingMargin;
- (double)trailingMargin;
- (void)customInit;
- (void)didMoveToWindow;
- (void)setLeadingMargin:(double)a3;
- (void)setTrailingMargin:(double)a3;
- (void)setVertical:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HairlineView

- (HairlineView)init
{
  v5.receiver = self;
  v5.super_class = HairlineView;
  v2 = [(HairlineView *)&v5 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v3 = v2;
  if (v2)
  {
    [(HairlineView *)v2 customInit];
  }

  return v3;
}

- (void)customInit
{
  v2 = self;
  v3 = [(HairlineView *)v2 window];
  v4 = [v3 screen];
  if (v4)
  {
    v5 = [(HairlineView *)v2 window];
    v6 = [v5 screen];
    [v6 nativeScale];
    v8 = v7;
  }

  else
  {
    v5 = +[UIScreen mainScreen];
    [v5 nativeScale];
    v8 = v9;
  }

  if (v8 <= 0.0)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 1.0 / v8;
  }

  v2->_intrinsicThickness = v10;
  LODWORD(v11) = 1148846080;
  [(HairlineView *)v2 setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [(HairlineView *)v2 setContentCompressionResistancePriority:1 forAxis:v12];
  v2->_autoUpdateTheme = 1;

  [(HairlineView *)v2 infoCardThemeChanged];
}

- (CGSize)intrinsicContentSize
{
  p_intrinsicThickness = &self->_intrinsicThickness;
  if (self->_vertical)
  {
    v3 = &self->_intrinsicThickness;
  }

  else
  {
    v3 = &UIViewNoIntrinsicMetric;
  }

  if (self->_vertical)
  {
    p_intrinsicThickness = &UIViewNoIntrinsicMetric;
  }

  v4 = *p_intrinsicThickness;
  v5 = *v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v19.receiver = self;
  v19.super_class = HairlineView;
  v4 = a3;
  [(HairlineView *)&v19 traitCollectionDidChange:v4];
  v5 = [(HairlineView *)self traitCollection:v19.receiver];
  [v5 displayScale];
  v7 = v6;
  [v4 displayScale];
  v9 = v8;

  if (v7 != v9)
  {
    v10 = self;
    v11 = [(HairlineView *)v10 window];
    v12 = [v11 screen];
    if (v12)
    {
      v13 = [(HairlineView *)v10 window];
      v14 = [v13 screen];
      [v14 nativeScale];
      v16 = v15;
    }

    else
    {
      v13 = +[UIScreen mainScreen];
      [v13 nativeScale];
      v16 = v17;
    }

    if (v16 <= 0.0)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 1.0 / v16;
    }

    v10->_intrinsicThickness = v18;
    [(HairlineView *)v10 invalidateIntrinsicContentSize];
  }
}

- (CGSize)sizeThatFits:(CGSize)result
{
  if (self->_vertical)
  {
    result.height = self->_intrinsicThickness;
  }

  else
  {
    result.width = self->_intrinsicThickness;
  }

  return result;
}

- (void)didMoveToWindow
{
  v12.receiver = self;
  v12.super_class = HairlineView;
  [(HairlineView *)&v12 didMoveToWindow];
  v3 = self;
  v4 = [(HairlineView *)v3 window];
  v5 = [v4 screen];
  if (v5)
  {
    v6 = [(HairlineView *)v3 window];

    v7 = [v6 screen];
    [v7 nativeScale];
    v9 = v8;
  }

  else
  {
    v6 = +[UIScreen mainScreen];

    [v6 nativeScale];
    v9 = v10;
  }

  v11 = 1.0;
  if (v9 > 0.0)
  {
    v11 = 1.0 / v9;
  }

  if (v11 != v3->_intrinsicThickness)
  {
    v3->_intrinsicThickness = v11;
    [(HairlineView *)v3 invalidateIntrinsicContentSize];
  }
}

- (void)setVertical:(BOOL)a3
{
  if (self->_vertical != a3)
  {
    v19 = v10;
    v20 = v9;
    v21 = v8;
    v22 = v3;
    self->_vertical = a3;
    if (a3)
    {
      *&v7 = 1000.0;
    }

    else
    {
      *&v7 = 250.0;
    }

    if (a3)
    {
      v13 = 250.0;
    }

    else
    {
      v13 = 1000.0;
    }

    if (a3)
    {
      v14 = 1000.0;
    }

    else
    {
      v14 = 750.0;
    }

    if (a3)
    {
      v15 = 750.0;
    }

    else
    {
      v15 = 1000.0;
    }

    [(HairlineView *)self setContentHuggingPriority:0 forAxis:v7, v11, v19, v20, v21, v4, v22, v5];
    *&v16 = v13;
    [(HairlineView *)self setContentHuggingPriority:1 forAxis:v16];
    *&v17 = v14;
    [(HairlineView *)self setContentCompressionResistancePriority:0 forAxis:v17];
    *&v18 = v15;

    [(HairlineView *)self setContentCompressionResistancePriority:1 forAxis:v18];
  }
}

- (double)trailingMargin
{
  v2 = [(HairlineView *)self trailingMarginConstraint];
  [v2 constant];
  v4 = v3;

  return v4;
}

- (void)setTrailingMargin:(double)a3
{
  v4 = [(HairlineView *)self trailingMarginConstraint];
  [v4 setConstant:a3];
}

- (double)leadingMargin
{
  v2 = [(HairlineView *)self leadingMarginConstraint];
  [v2 constant];
  v4 = v3;

  return v4;
}

- (void)setLeadingMargin:(double)a3
{
  v4 = [(HairlineView *)self leadingMarginConstraint];
  [v4 setConstant:a3];
}

- (HairlineView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HairlineView;
  v3 = [(HairlineView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HairlineView *)v3 customInit];
  }

  return v4;
}

- (HairlineView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HairlineView;
  v3 = [(HairlineView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HairlineView *)v3 customInit];
  }

  return v4;
}

@end