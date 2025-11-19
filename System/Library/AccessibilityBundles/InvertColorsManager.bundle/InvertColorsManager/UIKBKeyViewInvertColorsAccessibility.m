@interface UIKBKeyViewInvertColorsAccessibility
- (BOOL)_accessibilityIsEmojiPopupKey;
- (void)_accessibilityLoadInvertColors;
- (void)displayLayer:(id)a3;
@end

@implementation UIKBKeyViewInvertColorsAccessibility

- (BOOL)_accessibilityIsEmojiPopupKey
{
  v2 = [(UIKBKeyViewInvertColorsAccessibility *)self safeValueForKey:@"m_key"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 safeValueForKey:@"name"];
    v5 = v4;
    if (v4)
    {
      v6 = ([v4 isEqualToString:@"EmojiPopupKey"] << 31) >> 31;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (void)_accessibilityLoadInvertColors
{
  if ([(UIKBKeyViewInvertColorsAccessibility *)self _accessibilityShouldInvertKey])
  {
    [(UIKBKeyViewInvertColorsAccessibility *)self setAccessibilityIgnoresInvertColors:1];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_B0C0;
    v16 = sub_B0D0;
    v17 = 0;
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_B0D8;
    v9 = &unk_44728;
    v10 = self;
    v11 = &v12;
    AXPerformSafeBlock();
    v3 = v13[5];
    _Block_object_dispose(&v12, 8);

    if (v3)
    {
      if (UIAccessibilityIsInvertColorsEnabled())
      {
        v4 = [UIColor whiteColor:_NSConcreteStackBlock];
        [v3 setShadowColor:{objc_msgSend(v4, "CGColor")}];

        LODWORD(v5) = 0.5;
        [v3 setShadowOpacity:v5];
      }

      [AXInvertColorsAppHelper toggleInvertColors:v3, v6, v7, v8, v9, v10, v11];
    }
  }

  else
  {

    [(UIKBKeyViewInvertColorsAccessibility *)self setAccessibilityIgnoresInvertColors:0];
  }
}

- (void)displayLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIKBKeyViewInvertColorsAccessibility;
  [(UIKBKeyViewInvertColorsAccessibility *)&v4 displayLayer:a3];
  [(UIKBKeyViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end