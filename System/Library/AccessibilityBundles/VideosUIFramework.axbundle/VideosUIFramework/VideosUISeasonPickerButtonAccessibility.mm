@interface VideosUISeasonPickerButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityMultipleSeasonsAvailable;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VideosUISeasonPickerButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.SeasonPickerButton" hasSwiftField:@"currentLabel" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"VideosUI.SeasonPickerButton" hasSwiftField:@"headerTitles" withSwiftType:"Array<String>"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(VideosUISeasonPickerButtonAccessibility *)self safeSwiftValueForKey:@"currentLabel"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v4 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  _accessibilityMultipleSeasonsAvailable = [(VideosUISeasonPickerButtonAccessibility *)self _accessibilityMultipleSeasonsAvailable];
  v3 = *MEMORY[0x29EDC7F70];
  if (!_accessibilityMultipleSeasonsAvailable)
  {
    v3 = 0;
  }

  return *MEMORY[0x29EDC7F80] | v3;
}

- (id)accessibilityHint
{
  if ([(VideosUISeasonPickerButtonAccessibility *)self _accessibilityMultipleSeasonsAvailable])
  {
    accessibilityHint = accessibilityLocalizedString(@"season.picker.button.hint");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VideosUISeasonPickerButtonAccessibility;
    accessibilityHint = [(VideosUISeasonPickerButtonAccessibility *)&v5 accessibilityHint];
  }

  return accessibilityHint;
}

- (BOOL)_accessibilityMultipleSeasonsAvailable
{
  v2 = [(VideosUISeasonPickerButtonAccessibility *)self safeSwiftArrayForKey:@"headerTitles"];
  v3 = [v2 count] > 1;

  return v3;
}

@end