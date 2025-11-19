@interface PHAudioControlsButtonInvertColorsAccessibility
- (PHAudioControlsButtonInvertColorsAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadInvertColors;
@end

@implementation PHAudioControlsButtonInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v39 = 0;
  objc_opt_class();
  v28 = __UIAccessibilityCastAsClass();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [v28 subviews];
  v3 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v30 = *v36;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v8 = [v7 layer];
        v9 = [v8 sublayers];

        v10 = [v9 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v32;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v32 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v31 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v15 = v7;

                v5 = v15;
                goto LABEL_16;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v31 objects:v40 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v4 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v16 = [v5 layer];
  [AXInvertColorsAppHelper toggleInvertColors:v16];

  [v5 setAccessibilityIgnoresInvertColors:0];
  v39 = 0;
  objc_opt_class();
  v17 = [(PHAudioControlsButtonInvertColorsAccessibility *)self safeValueForKey:@"roundView"];
  v18 = __UIAccessibilityCastAsClass();

  if (v39 == 1)
  {
    abort();
  }

  v19 = [(PHAudioControlsButtonInvertColorsAccessibility *)self _accessibilityBackgroundColor];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [v18 backgroundColor];
  }

  v22 = v21;

  if (_AXSInvertColorsEnabled())
  {
    if (!AXProcessIsInCallService())
    {
      v26 = AXInvertColorForColorPreservingAlpha();
      goto LABEL_29;
    }

    v23 = [v18 window];
    v24 = [v23 traitCollection];
    v25 = [v24 userInterfaceStyle];

    if (v25 == &dword_0 + 1)
    {
      v26 = +[UIColor blackColor];
LABEL_29:
      v27 = v26;

      v22 = v27;
    }
  }

  [v18 setBackgroundColor:v22];
}

- (PHAudioControlsButtonInvertColorsAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = PHAudioControlsButtonInvertColorsAccessibility;
  v3 = [(PHAudioControlsButtonInvertColorsAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PHAudioControlsButtonInvertColorsAccessibility *)v3 _accessibilityLoadInvertColors];
  return v3;
}

@end