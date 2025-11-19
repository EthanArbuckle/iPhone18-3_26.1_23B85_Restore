@interface SiriUISiriStatusViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SiriUISiriStatusViewInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SiriUISiriStatusViewInvertColorsAccessibility;
  [(SiriUISiriStatusViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SiriUISiriStatusViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  if ([AXInvertColorsManager objectIsOnCarScreen:self])
  {
    return;
  }

  v3 = [(SiriUISiriStatusViewInvertColorsAccessibility *)self superview];
  v29 = [v3 superview];

  if (UIAccessibilityIsInvertColorsEnabled() && (+[AXSpringBoardServer server](AXSpringBoardServer, "server"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isDarkModeActive], v4, (v5 & 1) == 0))
  {
    v9 = [v29 viewWithTag:429375493];

    if (v9)
    {
      goto LABEL_6;
    }

    v10 = [(SiriUISiriStatusViewInvertColorsAccessibility *)self safeUIViewForKey:@"_touchInputView"];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [(SiriUISiriStatusViewInvertColorsAccessibility *)self safeUIViewForKey:@"_touchInputView"];
    [v29 convertRect:v19 fromView:{v12, v14, v16, v18}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v6 = [[UIView alloc] initWithFrame:{v21, v23, v25, v27}];
    [v6 setTag:429375493];
    v28 = +[UIColor whiteColor];
    [v6 setBackgroundColor:v28];

    [v6 setAutoresizingMask:18];
    [v29 insertSubview:v6 atIndex:0];
  }

  else
  {
    v6 = [v29 viewWithTag:429375493];
    [v6 removeFromSuperview];
  }

LABEL_6:
  v7 = [(SiriUISiriStatusViewInvertColorsAccessibility *)self safeUIViewForKey:@"_flamesView"];
  [v7 setAccessibilityIgnoresInvertColors:1];

  v8 = [(SiriUISiriStatusViewInvertColorsAccessibility *)self safeUIViewForKey:@"_glyphView"];
  [v8 setAccessibilityIgnoresInvertColors:1];
}

@end