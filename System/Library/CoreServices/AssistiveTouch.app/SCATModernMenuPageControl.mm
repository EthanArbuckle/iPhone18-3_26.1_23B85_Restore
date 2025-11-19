@interface SCATModernMenuPageControl
- (SCATModernMenuPageControl)initWithFrame:(CGRect)a3;
- (int64_t)semanticContentAttribute;
- (void)didUpdateScatMenuItemStyle;
- (void)layoutSubviews;
@end

@implementation SCATModernMenuPageControl

- (SCATModernMenuPageControl)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = SCATModernMenuPageControl;
  v3 = [(SCATModernMenuPageControl *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(SCATModernPageControlHighlightView *)v4->_highlightView centerXAnchor];
    v9 = [(SCATModernMenuPageControl *)v4 centerXAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v10 setActive:1];

    v11 = [(SCATModernPageControlHighlightView *)v4->_highlightView centerYAnchor];
    v12 = [(SCATModernMenuPageControl *)v4 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v13 setActive:1];

    v14 = [(SCATModernPageControlHighlightView *)v4->_highlightView heightAnchor];
    v15 = [v14 constraintEqualToConstant:15.0];
    [v15 setActive:1];

    v16 = [(SCATModernPageControlHighlightView *)v4->_highlightView widthAnchor];
    [(SCATModernMenuPageControl *)v4 _highlightViewWidth];
    v17 = [v16 constraintEqualToConstant:?];
    [(SCATModernPageControlHighlightView *)v4->_highlightView setWidthConstraint:v17];

    v18 = [(SCATModernPageControlHighlightView *)v4->_highlightView widthConstraint];
    [v18 setActive:1];

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
  v5 = [(SCATModernPageControlHighlightView *)self->_highlightView widthConstraint];
  [v5 setConstant:v4];

  [(SCATModernPageControlHighlightView *)self->_highlightView layoutIfNeeded];
}

- (void)didUpdateScatMenuItemStyle
{
  [(SCATModernMenuPageControl *)self setNeedsDisplay];
  v3 = [(SCATModernMenuPageControl *)self scatMenuItemStyle];
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        return;
      }

      goto LABEL_5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      highlightView = self->_highlightView;
      v7 = 1.0;
      goto LABEL_13;
    }

    if (v3 != 4)
    {
      if (v3 != 3)
      {
        return;
      }

LABEL_5:
      v8 = +[SCATStyleProvider sharedStyleProvider];
      v4 = [v8 menuKnockoutColor];
      [(SCATModernMenuPageControl *)self setPageIndicatorTintColor:v4];

      v5 = [v8 menuKnockoutColor];
      [(SCATModernMenuPageControl *)self setCurrentPageIndicatorTintColor:v5];

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