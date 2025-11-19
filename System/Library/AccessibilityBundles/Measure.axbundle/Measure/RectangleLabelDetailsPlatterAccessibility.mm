@interface RectangleLabelDetailsPlatterAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityViewIsModal;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateCloseButton;
- (void)didMoveToWindow;
- (void)setAlpha:(double)a3;
@end

@implementation RectangleLabelDetailsPlatterAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Measure.RectangleLabelDetailsPlatter" isKindOfClass:@"UIView"];
  [v3 validateClass:@"Measure.RectangleLabelDetailsPlatter" isKindOfClass:@"Measure.GenericPlatter"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"setAlpha:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"didMoveToWindow" withFullSignature:{"v", 0}];
  [v3 validateClass:@"Measure.GenericPlatter" hasInstanceMethod:@"close" withFullSignature:{"v", 0}];
}

- (void)_axAnnotateCloseButton
{
  v3 = [(RectangleLabelDetailsPlatterAccessibility *)self _accessibilityFindDescendant:&__block_literal_global_1];
  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v2 = accessibilityLocalizedString(@"CLOSE_BUTTON");
  [v3 setAccessibilityLabel:v2];
}

uint64_t __67__RectangleLabelDetailsPlatterAccessibility__axAnnotateCloseButton__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [v2 gestureRecognizers];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = 1;
            goto LABEL_13;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = RectangleLabelDetailsPlatterAccessibility;
  [(RectangleLabelDetailsPlatterAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(RectangleLabelDetailsPlatterAccessibility *)self _axAnnotateCloseButton];
  [(RectangleLabelDetailsPlatterAccessibility *)self _axSetDidInitializeZeroAlpha:1];
}

- (BOOL)accessibilityViewIsModal
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 alpha];
  v4 = v3 >= 1.0;

  return v4;
}

- (BOOL)accessibilityPerformEscape
{
  if ([(RectangleLabelDetailsPlatterAccessibility *)self accessibilityViewIsModal])
  {
    v5 = MEMORY[0x29EDCA5F8];
    v6 = 3221225472;
    v7 = __71__RectangleLabelDetailsPlatterAccessibility_accessibilityPerformEscape__block_invoke;
    v8 = &unk_29F2CE5F0;
    v9 = self;
    AXPerformSafeBlock();
    return 1;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = RectangleLabelDetailsPlatterAccessibility;
    return [(RectangleLabelDetailsPlatterAccessibility *)&v4 accessibilityPerformEscape];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = RectangleLabelDetailsPlatterAccessibility;
  [(RectangleLabelDetailsPlatterAccessibility *)&v3 didMoveToWindow];
  [(RectangleLabelDetailsPlatterAccessibility *)self _axAnnotateCloseButton];
}

- (void)setAlpha:(double)a3
{
  v10 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  [v5 alpha];
  v7 = v6;
  v9.receiver = self;
  v9.super_class = RectangleLabelDetailsPlatterAccessibility;
  [(RectangleLabelDetailsPlatterAccessibility *)&v9 setAlpha:a3];
  [v5 alpha];
  if (vabdd_f64(v7, v8) >= 2.22044605e-16)
  {
    if ([(RectangleLabelDetailsPlatterAccessibility *)self _axDidInitializeZeroAlpha])
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
    }

    else
    {
      [(RectangleLabelDetailsPlatterAccessibility *)self _axSetDidInitializeZeroAlpha:1];
    }
  }
}

@end