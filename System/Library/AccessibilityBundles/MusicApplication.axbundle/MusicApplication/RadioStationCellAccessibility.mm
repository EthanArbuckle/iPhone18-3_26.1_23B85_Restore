@interface RadioStationCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
@end

@implementation RadioStationCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.RadioStationCell" hasInstanceMethod:@"supertitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.RadioStationCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.RadioStationCell" hasInstanceMethod:@"stationDescription" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.RadioStationCell" hasInstanceMethod:@"accessibilityIsExplicit" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(RadioStationCellAccessibility *)self safeValueForKey:@"supertitle"];
  v4 = [(RadioStationCellAccessibility *)self safeValueForKey:@"title"];
  v5 = [(RadioStationCellAccessibility *)self safeValueForKey:@"stationDescription"];
  if (([(RadioStationCellAccessibility *)self safeBoolForKey:@"accessibilityIsExplicit"]& 1) != 0)
  {
    v8 = accessibilityMusicLocalizedString(@"explicit");
    v6 = __UIAXStringForVariables();
  }

  else
  {
    v6 = __UIAXStringForVariables();
  }

  return v6;
}

- (id)accessibilityUserInputLabels
{
  v3 = [(RadioStationCellAccessibility *)self safeStringForKey:@"supertitle"];
  v4 = [(RadioStationCellAccessibility *)self safeStringForKey:@"title"];
  v5 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v4, v3}];

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = RadioStationCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(RadioStationCellAccessibility *)&v3 accessibilityTraits];
}

@end