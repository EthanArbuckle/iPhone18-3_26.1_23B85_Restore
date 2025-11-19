@interface TPNumberPadButtonInvertColorsAccessibility
- (id)initForCharacter:(int64_t)a3;
- (void)_accessibilityLoadInvertColors;
- (void)setColor:(id)a3;
@end

@implementation TPNumberPadButtonInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  if (qword_83538 != -1)
  {
    sub_20748();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = 0;
    v3 = &CGContextFillRect_ptr;
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [v4 subviews];
    v5 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v5)
    {
      v6 = v5;
      v27 = self;
      v28 = v4;
      v7 = 0;
      v30 = *v36;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v35 + 1) + 8 * i);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v10 = [v9 layer];
          v11 = [v10 sublayers];

          v12 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v32;
            while (2)
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v32 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v31 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v17 = v9;

                  v7 = v17;
                  goto LABEL_19;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_19:
        }

        v6 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v6);

      if (!v7)
      {
        self = v27;
        v4 = v28;
        v3 = &CGContextFillRect_ptr;
        goto LABEL_26;
      }

      v18 = [v7 layer];
      [AXInvertColorsAppHelper toggleInvertColors:v18];
      self = v27;
      v4 = v28;
      v3 = &CGContextFillRect_ptr;
    }

    else
    {
      v7 = 0;
      v18 = obj;
    }

LABEL_26:
    [v7 setAccessibilityIgnoresInvertColors:0];
    [v4 setAccessibilityIgnoresInvertColors:1];
    v39 = 0;
    v19 = v3[137];
    objc_opt_class();
    v20 = [(TPNumberPadButtonInvertColorsAccessibility *)self safeValueForKey:@"circleView"];
    v21 = __UIAccessibilityCastAsClass();

    if (v39 == 1)
    {
      abort();
    }

    v22 = [(TPNumberPadButtonInvertColorsAccessibility *)self _accessibilityBackgroundColor];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = [v21 backgroundColor];
    }

    v25 = v24;

    if (_AXSInvertColorsEnabled())
    {
      v26 = AXInvertColorForColorPreservingAlpha();

      v25 = v26;
    }

    [v21 setBackgroundColor:v25];
  }
}

- (void)setColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = TPNumberPadButtonInvertColorsAccessibility;
  v4 = a3;
  [(TPNumberPadButtonInvertColorsAccessibility *)&v5 setColor:v4];
  [(TPNumberPadButtonInvertColorsAccessibility *)self _setAccessibilityBackgroundColor:v4, v5.receiver, v5.super_class];

  [(TPNumberPadButtonInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (id)initForCharacter:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = TPNumberPadButtonInvertColorsAccessibility;
  v3 = [(TPNumberPadButtonInvertColorsAccessibility *)&v5 initForCharacter:a3];
  [v3 _accessibilityLoadInvertColors];
  return v3;
}

@end