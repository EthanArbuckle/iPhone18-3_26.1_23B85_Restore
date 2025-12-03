@interface SPUITextFieldInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SPUITextFieldInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SPUITextFieldInvertColorsAccessibility;
  [(SPUITextFieldInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SPUITextFieldInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  if (UIAccessibilityIsInvertColorsEnabled() && (-[SPUITextFieldInvertColorsAccessibility window](self, "window"), v3 = objc_claimAutoreleasedReturnValue(), [v3 traitCollection], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "userInterfaceStyle"), v4, v3, v5 != &dword_0 + 2))
  {
    v9 = [(SPUITextFieldInvertColorsAccessibility *)self safeUIViewForKey:@"blurView"];
    [v9 removeFromSuperview];
  }

  else
  {
    subviews = [(SPUITextFieldInvertColorsAccessibility *)self subviews];
    v7 = [(SPUITextFieldInvertColorsAccessibility *)self safeUIViewForKey:@"blurView"];
    v8 = [subviews containsObject:v7];

    if (v8)
    {
      return;
    }

    v9 = [(SPUITextFieldInvertColorsAccessibility *)self safeUIViewForKey:@"blurView"];
    [(SPUITextFieldInvertColorsAccessibility *)self addSubview:?];
  }
}

@end