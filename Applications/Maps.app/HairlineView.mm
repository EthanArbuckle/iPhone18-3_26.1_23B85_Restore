@interface HairlineView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (HairlineView)init;
- (HairlineView)initWithCoder:(id)coder;
- (HairlineView)initWithFrame:(CGRect)frame;
- (double)leadingMargin;
- (double)trailingMargin;
- (void)customInit;
- (void)didMoveToWindow;
- (void)setLeadingMargin:(double)margin;
- (void)setTrailingMargin:(double)margin;
- (void)setVertical:(BOOL)vertical;
- (void)traitCollectionDidChange:(id)change;
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
  selfCopy = self;
  window = [(HairlineView *)selfCopy window];
  screen = [window screen];
  if (screen)
  {
    window2 = [(HairlineView *)selfCopy window];
    screen2 = [window2 screen];
    [screen2 nativeScale];
    v8 = v7;
  }

  else
  {
    window2 = +[UIScreen mainScreen];
    [window2 nativeScale];
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

  selfCopy->_intrinsicThickness = v10;
  LODWORD(v11) = 1148846080;
  [(HairlineView *)selfCopy setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [(HairlineView *)selfCopy setContentCompressionResistancePriority:1 forAxis:v12];
  selfCopy->_autoUpdateTheme = 1;

  [(HairlineView *)selfCopy infoCardThemeChanged];
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

- (void)traitCollectionDidChange:(id)change
{
  v19.receiver = self;
  v19.super_class = HairlineView;
  changeCopy = change;
  [(HairlineView *)&v19 traitCollectionDidChange:changeCopy];
  v5 = [(HairlineView *)self traitCollection:v19.receiver];
  [v5 displayScale];
  v7 = v6;
  [changeCopy displayScale];
  v9 = v8;

  if (v7 != v9)
  {
    selfCopy = self;
    window = [(HairlineView *)selfCopy window];
    screen = [window screen];
    if (screen)
    {
      window2 = [(HairlineView *)selfCopy window];
      screen2 = [window2 screen];
      [screen2 nativeScale];
      v16 = v15;
    }

    else
    {
      window2 = +[UIScreen mainScreen];
      [window2 nativeScale];
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

    selfCopy->_intrinsicThickness = v18;
    [(HairlineView *)selfCopy invalidateIntrinsicContentSize];
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
  selfCopy = self;
  window = [(HairlineView *)selfCopy window];
  screen = [window screen];
  if (screen)
  {
    window2 = [(HairlineView *)selfCopy window];

    screen2 = [window2 screen];
    [screen2 nativeScale];
    v9 = v8;
  }

  else
  {
    window2 = +[UIScreen mainScreen];

    [window2 nativeScale];
    v9 = v10;
  }

  v11 = 1.0;
  if (v9 > 0.0)
  {
    v11 = 1.0 / v9;
  }

  if (v11 != selfCopy->_intrinsicThickness)
  {
    selfCopy->_intrinsicThickness = v11;
    [(HairlineView *)selfCopy invalidateIntrinsicContentSize];
  }
}

- (void)setVertical:(BOOL)vertical
{
  if (self->_vertical != vertical)
  {
    v19 = v10;
    v20 = v9;
    v21 = v8;
    v22 = v3;
    self->_vertical = vertical;
    if (vertical)
    {
      *&v7 = 1000.0;
    }

    else
    {
      *&v7 = 250.0;
    }

    if (vertical)
    {
      v13 = 250.0;
    }

    else
    {
      v13 = 1000.0;
    }

    if (vertical)
    {
      v14 = 1000.0;
    }

    else
    {
      v14 = 750.0;
    }

    if (vertical)
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
  trailingMarginConstraint = [(HairlineView *)self trailingMarginConstraint];
  [trailingMarginConstraint constant];
  v4 = v3;

  return v4;
}

- (void)setTrailingMargin:(double)margin
{
  trailingMarginConstraint = [(HairlineView *)self trailingMarginConstraint];
  [trailingMarginConstraint setConstant:margin];
}

- (double)leadingMargin
{
  leadingMarginConstraint = [(HairlineView *)self leadingMarginConstraint];
  [leadingMarginConstraint constant];
  v4 = v3;

  return v4;
}

- (void)setLeadingMargin:(double)margin
{
  leadingMarginConstraint = [(HairlineView *)self leadingMarginConstraint];
  [leadingMarginConstraint setConstant:margin];
}

- (HairlineView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HairlineView;
  v3 = [(HairlineView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(HairlineView *)v3 customInit];
  }

  return v4;
}

- (HairlineView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HairlineView;
  v3 = [(HairlineView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HairlineView *)v3 customInit];
  }

  return v4;
}

@end