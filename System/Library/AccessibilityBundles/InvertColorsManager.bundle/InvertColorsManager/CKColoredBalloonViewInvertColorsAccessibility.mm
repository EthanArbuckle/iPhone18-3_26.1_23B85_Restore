@interface CKColoredBalloonViewInvertColorsAccessibility
- (BOOL)_axIsMessageGray;
- (id)_axChatItemForBalloon;
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
- (void)prepareForDisplayIfNeeded;
@end

@implementation CKColoredBalloonViewInvertColorsAccessibility

- (void)prepareForDisplayIfNeeded
{
  v3.receiver = self;
  v3.super_class = CKColoredBalloonViewInvertColorsAccessibility;
  [(CKColoredBalloonViewInvertColorsAccessibility *)&v3 prepareForDisplayIfNeeded];
  [(CKColoredBalloonViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  superview = [(CKColoredBalloonViewInvertColorsAccessibility *)self superview];
  if (superview)
  {
    v4 = superview;
    while (1)
    {
      AXSafeClassFromString();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview2 = [v4 superview];

      v4 = superview2;
      if (!superview2)
      {
        return;
      }
    }

    AXSafeClassFromString();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [(CKColoredBalloonViewInvertColorsAccessibility *)self _axIsMessageGray]^ 1;
LABEL_19:
      [v4 setAccessibilityIgnoresInvertColors:v11];

      return;
    }

    objc_opt_class();
    v6 = [(CKColoredBalloonViewInvertColorsAccessibility *)self safeValueForKey:@"textView"];
    v7 = __UIAccessibilityCastAsClass();

    _axIsMessageGray = [(CKColoredBalloonViewInvertColorsAccessibility *)self _axIsMessageGray];
    if (!v7)
    {
      goto LABEL_17;
    }

    v9 = _axIsMessageGray;
    if ((_axIsMessageGray & 1) == 0 && ![(CKColoredBalloonViewInvertColorsAccessibility *)self _axIsBigEmoji])
    {
      [v7 setAccessibilityIgnoresInvertColors:0];
      UIAccessibilityIsInvertColorsEnabled();
      v11 = 1;
      goto LABEL_18;
    }

    [v7 setAccessibilityIgnoresInvertColors:1];
    if (UIAccessibilityIsInvertColorsEnabled())
    {
      if (v9)
      {
        v10 = +[UIColor whiteColor];
LABEL_16:
        v12 = v10;
        [v7 setTextColor:v10];
      }
    }

    else if (v9)
    {
      v10 = +[UIColor labelColor];
      goto LABEL_16;
    }

LABEL_17:
    v11 = 0;
LABEL_18:

    goto LABEL_19;
  }
}

- (BOOL)_axIsMessageGray
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2 == 255;
}

- (id)_axChatItemForBalloon
{
  v3 = [(CKColoredBalloonViewInvertColorsAccessibility *)self safeValueForKey:@"delegate"];
  AXSafeClassFromString();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v18) = 0;
    objc_opt_class();
    v4 = [v3 safeValueForKey:@"collectionView"];
    v5 = __UIAccessibilityCastAsClass();

    selfCopy = self;
    superview = [(CKColoredBalloonViewInvertColorsAccessibility *)selfCopy superview];
    v7Superview = [superview superview];

    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_1CA54;
    v22 = sub_1CA64;
    v23 = 0;
    v9 = v5;
    v10 = v7Superview;
    AXPerformSafeBlock();
    v11 = v19[5];

    _Block_object_dispose(&v18, 8);
    LOBYTE(v18) = 0;
    objc_opt_class();
    v12 = [v3 safeValueForKey:@"chatItems"];
    v13 = __UIAccessibilityCastAsClass();

    if (v18 == 1)
    {
      abort();
    }

    if (v11)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = sub_1CA54;
      v22 = sub_1CA64;
      v23 = 0;
      v16 = v13;
      v17 = v11;
      AXPerformSafeBlock();
      v14 = v19[5];

      _Block_object_dispose(&v18, 8);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKColoredBalloonViewInvertColorsAccessibility;
  [(CKColoredBalloonViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(CKColoredBalloonViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end