@interface SCATModernMenuPageControl
- (SCATModernMenuPageControl)initWithFrame:(CGRect)frame;
- (int64_t)semanticContentAttribute;
- (void)didUpdateScatMenuItemStyle;
- (void)layoutSubviews;
@end

@implementation SCATModernMenuPageControl

- (SCATModernMenuPageControl)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = SCATModernMenuPageControl;
  v3 = [(SCATModernMenuPageControl *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SCATModernMenuPageControl *)v3 setAllowsContinuousInteraction:0];
    v5 = [[SCATModernPageControlHighlightView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    highlightView = v4->_highlightView;
    v4->_highlightView = v5;

    v7 = +[UIColor clearColor];
    [(SCATModernPageControlHighlightView *)v4->_highlightView setBackgroundColor:v7];

    [(SCATModernPageControlHighlightView *)v4->_highlightView setClipsToBounds:0];
    [(SCATModernMenuPageControl *)v4 setClipsToBounds:0];
    [(SCATModernMenuPageControl *)v4 addSubview:v4->_highlightView];
    [(SCATModernPageControlHighlightView *)v4->_highlightView setAlpha:0.0];
    [(SCATModernPageControlHighlightView *)v4->_highlightView setTranslatesAutoresizingMaskIntoConstraints:0];
    centerXAnchor = [(SCATModernPageControlHighlightView *)v4->_highlightView centerXAnchor];
    centerXAnchor2 = [(SCATModernMenuPageControl *)v4 centerXAnchor];
    v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v10 setActive:1];

    centerYAnchor = [(SCATModernPageControlHighlightView *)v4->_highlightView centerYAnchor];
    centerYAnchor2 = [(SCATModernMenuPageControl *)v4 centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v13 setActive:1];

    heightAnchor = [(SCATModernPageControlHighlightView *)v4->_highlightView heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:15.0];
    [v15 setActive:1];

    widthAnchor = [(SCATModernPageControlHighlightView *)v4->_highlightView widthAnchor];
    [(SCATModernMenuPageControl *)v4 _highlightViewWidth];
    v17 = [widthAnchor constraintEqualToConstant:?];
    [(SCATModernPageControlHighlightView *)v4->_highlightView setWidthConstraint:v17];

    widthConstraint = [(SCATModernPageControlHighlightView *)v4->_highlightView widthConstraint];
    [widthConstraint setActive:1];

    [(SCATModernMenuPageControl *)v4 didUpdateScatMenuItemStyle];
  }

  return v4;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SCATModernMenuPageControl;
  [(SCATModernMenuPageControl *)&v6 layoutSubviews];
  [(SCATModernMenuPageControl *)self _highlightViewWidth];
  v4 = v3;
  widthConstraint = [(SCATModernPageControlHighlightView *)self->_highlightView widthConstraint];
  [widthConstraint setConstant:v4];

  [(SCATModernPageControlHighlightView *)self->_highlightView layoutIfNeeded];
}

- (void)didUpdateScatMenuItemStyle
{
  [(SCATModernMenuPageControl *)self setNeedsDisplay];
  scatMenuItemStyle = [(SCATModernMenuPageControl *)self scatMenuItemStyle];
  if (scatMenuItemStyle <= 1)
  {
    if (scatMenuItemStyle)
    {
      if (scatMenuItemStyle != 1)
      {
        return;
      }

      goto LABEL_5;
    }
  }

  else
  {
    if (scatMenuItemStyle == 2)
    {
      highlightView = self->_highlightView;
      v7 = 1.0;
      goto LABEL_13;
    }

    if (scatMenuItemStyle != 4)
    {
      if (scatMenuItemStyle != 3)
      {
        return;
      }

LABEL_5:
      v8 = +[SCATStyleProvider sharedStyleProvider];
      menuKnockoutColor = [v8 menuKnockoutColor];
      [(SCATModernMenuPageControl *)self setPageIndicatorTintColor:menuKnockoutColor];

      menuKnockoutColor2 = [v8 menuKnockoutColor];
      [(SCATModernMenuPageControl *)self setCurrentPageIndicatorTintColor:menuKnockoutColor2];

      -[SCATModernMenuPageControl _setDrawsAsBackdropOverlayWithBlendMode:](self, "_setDrawsAsBackdropOverlayWithBlendMode:", [v8 menuKnockoutBorderOverlayBlendMode]);
      [v8 menuKnockoutBorderOpacity];
      [(SCATModernMenuPageControl *)self setAlpha:?];
      [(SCATModernPageControlHighlightView *)self->_highlightView setAlpha:0.0];

      return;
    }
  }

  highlightView = self->_highlightView;
  v7 = 0.0;
LABEL_13:
  [(SCATModernPageControlHighlightView *)highlightView setAlpha:v7];
  [(SCATModernMenuPageControl *)self setPageIndicatorTintColor:0];
  [(SCATModernMenuPageControl *)self setCurrentPageIndicatorTintColor:0];

  [(SCATModernMenuPageControl *)self _setDrawsAsBackdropOverlayWithBlendMode:0];
}

- (int64_t)semanticContentAttribute
{
  v2 = +[HNDAccessibilityManager sharedManager];
  if ([v2 applicationIsRTL])
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

@end