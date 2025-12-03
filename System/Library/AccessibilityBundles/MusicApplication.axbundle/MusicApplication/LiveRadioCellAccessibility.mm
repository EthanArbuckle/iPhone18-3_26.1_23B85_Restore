@interface LiveRadioCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation LiveRadioCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.LiveRadioCell" hasInstanceMethod:@"accessibilityHeaderTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.LiveRadioCell" hasInstanceMethod:@"accessibilityHeaderSubtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.LiveRadioCell" hasInstanceMethod:@"accessibilityHeadline" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.LiveRadioCell" hasInstanceMethod:@"accessibilityTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.LiveRadioCell" hasInstanceMethod:@"accessibilitySubtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.LiveRadioCell" hasInstanceMethod:@"accessibilityAccessoryButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.LiveRadioCell" hasInstanceMethod:@"accessibilityAccessoryCalendarButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.FeaturedMaterialCell" hasInstanceMethod:@"accessibilityPlayButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.LiveRadioCell" isKindOfClass:@"MusicApplication.FeaturedMaterialCell"];
}

- (id)accessibilityLabel
{
  v2 = [(LiveRadioCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityHeaderTitle, accessibilityHeaderSubtitle, accessibilityHeadline, accessibilityTitle, accessibilitySubtitle"];
  v3 = accessibilityStripUnfavorableCharacters(v2);

  return v3;
}

- (id)accessibilityUserInputLabels
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(LiveRadioCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityTitle"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v9.receiver = self;
  v9.super_class = LiveRadioCellAccessibility;
  _accessibilitySupplementaryFooterViews = [(LiveRadioCellAccessibility *)&v9 _accessibilitySupplementaryFooterViews];
  [array axSafelyAddObjectsFromArray:_accessibilitySupplementaryFooterViews];

  v5 = [(LiveRadioCellAccessibility *)self safeValueForKey:@"accessibilityAccessoryButton"];
  if ([v5 _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v5];
  }

  v6 = [(LiveRadioCellAccessibility *)self safeValueForKey:@"accessibilityAccessoryCalendarButton"];
  [v6 _setAccessibilityLabelBlock:&__block_literal_global_2];
  if ([v6 _accessibilityViewIsVisible])
  {
    [array axSafelyAddObject:v6];
  }

  v7 = [(LiveRadioCellAccessibility *)self safeValueForKey:@"accessibilityPlayButton"];
  [array axSafelyAddObject:v7];

  return array;
}

@end