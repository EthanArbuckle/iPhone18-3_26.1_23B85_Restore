@interface NTKCFaceDetailSectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation NTKCFaceDetailSectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKCFaceDetailSectionHeaderView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCFaceDetailSectionHeaderView" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(NTKCFaceDetailSectionHeaderViewAccessibility *)self safeValueForKey:@"title"];
  v6 = [(NTKCFaceDetailSectionHeaderViewAccessibility *)self safeValueForKey:@"subtitle"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end