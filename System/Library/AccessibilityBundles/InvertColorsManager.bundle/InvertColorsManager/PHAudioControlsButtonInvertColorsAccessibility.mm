@interface PHAudioControlsButtonInvertColorsAccessibility
- (PHAudioControlsButtonInvertColorsAccessibility)initWithFrame:(CGRect)frame;
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
        layer = [v7 layer];
        sublayers = [layer sublayers];

        v10 = [sublayers countByEnumeratingWithState:&v31 objects:v40 count:16];
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
                objc_enumerationMutation(sublayers);
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

            v11 = [sublayers countByEnumeratingWithState:&v31 objects:v40 count:16];
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

  layer2 = [v5 layer];
  [AXInvertColorsAppHelper toggleInvertColors:layer2];

  [v5 setAccessibilityIgnoresInvertColors:0];
  v39 = 0;
  objc_opt_class();
  v17 = [(PHAudioControlsButtonInvertColorsAccessibility *)self safeValueForKey:@"roundView"];
  v18 = __UIAccessibilityCastAsClass();

  if (v39 == 1)
  {
    abort();
  }

  _accessibilityBackgroundColor = [(PHAudioControlsButtonInvertColorsAccessibility *)self _accessibilityBackgroundColor];
  v20 = _accessibilityBackgroundColor;
  if (_accessibilityBackgroundColor)
  {
    backgroundColor = _accessibilityBackgroundColor;
  }

  else
  {
    backgroundColor = [v18 backgroundColor];
  }

  v22 = backgroundColor;

  if (_AXSInvertColorsEnabled())
  {
    if (!AXProcessIsInCallService())
    {
      v26 = AXInvertColorForColorPreservingAlpha();
      goto LABEL_29;
    }

    window = [v18 window];
    traitCollection = [window traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == &dword_0 + 1)
    {
      v26 = +[UIColor blackColor];
LABEL_29:
      v27 = v26;

      v22 = v27;
    }
  }

  [v18 setBackgroundColor:v22];
}

- (PHAudioControlsButtonInvertColorsAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = PHAudioControlsButtonInvertColorsAccessibility;
  v3 = [(PHAudioControlsButtonInvertColorsAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PHAudioControlsButtonInvertColorsAccessibility *)v3 _accessibilityLoadInvertColors];
  return v3;
}

@end