@interface VideosUISeasonPickerButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityMultipleSeasonsAvailable;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VideosUISeasonPickerButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.SeasonPickerButton" hasSwiftField:@"currentLabel" withSwiftType:"UILabel"];
  [v3 validateClass:@"VideosUI.SeasonPickerButton" hasSwiftField:@"headerTitles" withSwiftType:"Array<String>"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(VideosUISeasonPickerButtonAccessibility *)self safeSwiftValueForKey:@"currentLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityLabel];

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(VideosUISeasonPickerButtonAccessibility *)self _accessibilityMultipleSeasonsAvailable];
  v3 = *MEMORY[0x29EDC7F70];
  if (!v2)
  {
    v3 = 0;
  }

  return *MEMORY[0x29EDC7F80] | v3;
}

- (id)accessibilityHint
{
  if ([(VideosUISeasonPickerButtonAccessibility *)self _accessibilityMultipleSeasonsAvailable])
  {
    v3 = accessibilityLocalizedString(@"season.picker.button.hint");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VideosUISeasonPickerButtonAccessibility;
    v3 = [(VideosUISeasonPickerButtonAccessibility *)&v5 accessibilityHint];
  }

  return v3;
}

- (BOOL)_accessibilityMultipleSeasonsAvailable
{
  v2 = [(VideosUISeasonPickerButtonAccessibility *)self safeSwiftArrayForKey:@"headerTitles"];
  v3 = [v2 count] > 1;

  return v3;
}

@end