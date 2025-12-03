@interface HomeScreenConfigurationControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axPreviewContentIsPosterOrBlur:(id)blur;
- (id)_axGradientColorValue:(id)value;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HomeScreenConfigurationControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUIGradientView"];
  [validationsCopy validateClass:@"PosterBoard.HomeScreenConfigurationControl" hasSwiftField:@"previewContentView" withSwiftType:"UIView"];
  [validationsCopy validateClass:@"PUIGradientView" hasProperty:@"colors" withType:"@"];
  [validationsCopy validateClass:@"PosterBoard.HomeScreenConfigurationControl" isKindOfClass:@"title"];
  [validationsCopy validateClass:@"PosterBoard.HomeScreenConfigurationBlurControlContentView"];
  [validationsCopy validateClass:@"PosterBoard.HomeScreenConfigurationPosterControlContentView"];
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(HomeScreenConfigurationControlAccessibility *)self safeSwiftValueForKey:@"previewContentView"];
  v4 = __UIAccessibilityCastAsClass();

  if ([(HomeScreenConfigurationControlAccessibility *)self _axPreviewContentIsPosterOrBlur:v4])
  {
    accessibilityValue = [v4 accessibilityValue];
LABEL_5:
    backgroundColor = accessibilityValue;
    goto LABEL_6;
  }

  MEMORY[0x29C2E7EC0](@"PUIGradientView");
  if (objc_opt_isKindOfClass())
  {
    accessibilityValue = [(HomeScreenConfigurationControlAccessibility *)self _axGradientColorValue:v4];
    goto LABEL_5;
  }

  backgroundColor = [v4 backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [v4 backgroundColor];
    backgroundColor = AXColorStringForColor();
  }

LABEL_6:

  return backgroundColor;
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
    accessibilityHint = [v4 accessibilityHint];
  }

  else
  {
    v10 = 0;
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    if ([v6 isSelected])
    {
      accessibilityHint2 = accessibilityLocalizedString(@"home.configuration.select.color.hint");
    }

    else
    {
      v9.receiver = self;
      v9.super_class = HomeScreenConfigurationControlAccessibility;
      accessibilityHint2 = [(HomeScreenConfigurationControlAccessibility *)&v9 accessibilityHint];
    }

    accessibilityHint = accessibilityHint2;
  }

  return accessibilityHint;
}

- (id)_axGradientColorValue:(id)value
{
  valueCopy = value;
  v4 = [valueCopy safeArrayForKey:@"colors"];
  objc_opt_class();
  firstObject = [v4 firstObject];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  lastObject = [v4 lastObject];
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

- (BOOL)_axPreviewContentIsPosterOrBlur:(id)blur
{
  blurCopy = blur;
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