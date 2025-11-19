@interface AVCaptureVideoPreviewLayerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation AVCaptureVideoPreviewLayerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  objc_opt_class();
  v3 = v2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    while (1)
    {
      v6 = [v5 delegate];
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      v8 = [v5 superlayer];

      v5 = v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v9 = [v5 delegate];
    [v9 setAccessibilityIgnoresInvertColors:1];
  }

LABEL_7:
}

@end