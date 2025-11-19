@interface HomeScreenConfigurationControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axPreviewContentIsPosterOrBlur:(id)a3;
- (id)_axGradientColorValue:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HomeScreenConfigurationControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUIGradientView"];
  [v3 validateClass:@"PosterBoard.HomeScreenConfigurationControl" hasSwiftField:@"previewContentView" withSwiftType:"UIView"];
  [v3 validateClass:@"PUIGradientView" hasProperty:@"colors" withType:"@"];
  [v3 validateClass:@"PosterBoard.HomeScreenConfigurationControl" isKindOfClass:@"title"];
  [v3 validateClass:@"PosterBoard.HomeScreenConfigurationBlurControlContentView"];
  [v3 validateClass:@"PosterBoard.HomeScreenConfigurationPosterControlContentView"];
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(HomeScreenConfigurationControlAccessibility *)self safeSwiftValueForKey:@"previewContentView"];
  v4 = __UIAccessibilityCastAsClass();

  if ([(HomeScreenConfigurationControlAccessibility *)self _axPreviewContentIsPosterOrBlur:v4])
  {
    v5 = [v4 accessibilityValue];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  MEMORY[0x29C2E7EC0](@"PUIGradientView");
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HomeScreenConfigurationControlAccessibility *)self _axGradientColorValue:v4];
    goto LABEL_5;
  }

  v6 = [v4 backgroundColor];

  if (v6)
  {
    v8 = [v4 backgroundColor];
    v6 = AXColorStringForColor();
  }

LABEL_6:

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HomeScreenConfigurationControlAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HomeScreenConfigurationControlAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityHint
{
  v10 = 0;
  objc_opt_class();
  v3 = [(HomeScreenConfigurationControlAccessibility *)self safeSwiftValueForKey:@"previewContentView"];
  v4 = __UIAccessibilityCastAsClass();

  if ([(HomeScreenConfigurationControlAccessibility *)self _axPreviewContentIsPosterOrBlur:v4]&& [(HomeScreenConfigurationControlAccessibility *)self _accessibilityIsUserInteractionEnabled])
  {
    v5 = [v4 accessibilityHint];
  }

  else
  {
    v10 = 0;
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    if ([v6 isSelected])
    {
      v7 = accessibilityLocalizedString(@"home.configuration.select.color.hint");
    }

    else
    {
      v9.receiver = self;
      v9.super_class = HomeScreenConfigurationControlAccessibility;
      v7 = [(HomeScreenConfigurationControlAccessibility *)&v9 accessibilityHint];
    }

    v5 = v7;
  }

  return v5;
}

- (id)_axGradientColorValue:(id)a3
{
  v3 = a3;
  v4 = [v3 safeArrayForKey:@"colors"];
  objc_opt_class();
  v5 = [v4 firstObject];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [v4 lastObject];
  v8 = __UIAccessibilityCastAsClass();

  v9 = AXColorStringForColor();
  v10 = AXColorStringForColor();
  v11 = [v9 isEqualToString:v10];
  v12 = MEMORY[0x29EDBA0F8];
  if (v11)
  {
    v13 = accessibilityLocalizedString(@"home.configuration.gradient.color.value");
  }

  else
  {
    v13 = accessibilityLocalizedString(@"home.configuration.gradient.between.colors.value");
    v16 = v10;
  }

  v14 = [v12 stringWithFormat:v13, v9, v16];

  return v14;
}

- (BOOL)_axPreviewContentIsPosterOrBlur:(id)a3
{
  v3 = a3;
  MEMORY[0x29C2E7EC0](@"PosterBoard.HomeScreenConfigurationBlurControlContentView");
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    MEMORY[0x29C2E7EC0](@"PosterBoard.HomeScreenConfigurationPosterControlContentView");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end