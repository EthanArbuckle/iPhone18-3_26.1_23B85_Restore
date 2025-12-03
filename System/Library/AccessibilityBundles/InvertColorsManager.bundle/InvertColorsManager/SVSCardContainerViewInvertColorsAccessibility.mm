@interface SVSCardContainerViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SVSCardContainerViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  selfCopy = self;
  [(SVSCardContainerViewInvertColorsAccessibility *)selfCopy setAccessibilityIgnoresInvertColors:1];
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  v3 = [(SVSCardContainerViewInvertColorsAccessibility *)selfCopy viewWithTag:5728595];
  v4 = v3;
  if (IsInvertColorsEnabled)
  {

    if (v4)
    {
      goto LABEL_6;
    }

    v5 = [UIView alloc];
    [(SVSCardContainerViewInvertColorsAccessibility *)selfCopy bounds];
    v4 = [v5 initWithFrame:?];
    [v4 setTag:5728595];
    v6 = [UIColor colorWithWhite:0.25 alpha:0.75];
    [v4 setBackgroundColor:v6];

    [(SVSCardContainerViewInvertColorsAccessibility *)selfCopy _continuousCornerRadius];
    [v4 _setContinuousCornerRadius:?];
    [v4 setUserInteractionEnabled:0];
    [(SVSCardContainerViewInvertColorsAccessibility *)selfCopy insertSubview:v4 atIndex:0];
  }

  else
  {
    [v3 removeFromSuperview];
  }

LABEL_6:
  superview = [(SVSCardContainerViewInvertColorsAccessibility *)selfCopy superview];
  if (superview)
  {
    v8 = superview;
    do
    {
      AXSafeClassFromString();
      if (objc_opt_isKindOfClass())
      {
        v9 = UIAccessibilityIsInvertColorsEnabled();
        v10 = [v8 viewWithTag:12739502];
        v11 = v10;
        if (!v9)
        {
          [v10 removeFromSuperview];
          goto LABEL_13;
        }

        if (!v11)
        {
          v12 = [UIView alloc];
          [v8 bounds];
          v11 = [v12 initWithFrame:?];
          [v11 setTag:12739502];
          v13 = +[UIColor whiteColor];
          v14 = [v13 colorWithAlphaComponent:0.9];
          [v11 setBackgroundColor:v14];

          [v8 insertSubview:v11 atIndex:0];
LABEL_13:
        }
      }

      superview2 = [v8 superview];

      v8 = superview2;
    }

    while (superview2);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SVSCardContainerViewInvertColorsAccessibility;
  [(SVSCardContainerViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SVSCardContainerViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end