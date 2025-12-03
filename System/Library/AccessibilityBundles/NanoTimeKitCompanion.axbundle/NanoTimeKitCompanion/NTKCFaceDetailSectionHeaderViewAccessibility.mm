@interface NTKCFaceDetailSectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation NTKCFaceDetailSectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKCFaceDetailSectionHeaderView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKCFaceDetailSectionHeaderView" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(NTKCFaceDetailSectionHeaderViewAccessibility *)self safeValueForKey:@"title"];
  v6 = [(NTKCFaceDetailSectionHeaderViewAccessibility *)self safeValueForKey:@"subtitle"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end