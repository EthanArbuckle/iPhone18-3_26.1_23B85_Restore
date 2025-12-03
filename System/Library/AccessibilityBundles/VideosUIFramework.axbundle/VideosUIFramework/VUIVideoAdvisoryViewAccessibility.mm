@interface VUIVideoAdvisoryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation VUIVideoAdvisoryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIVideoAdvisoryView" hasInstanceMethod:@"legendViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIVideoAdvisoryView" hasInstanceMethod:@"_configureSubviewsWithDictionary:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"VUIVideoAdvisoryView" hasInstanceMethod:@"showAnimated:platterView:completion:" withFullSignature:{"v", "B", "@", "@?", 0}];
  [validationsCopy validateClass:@"VUIVideoAdvisoryView" hasInstanceMethod:@"hideAnimated:platterView:completion:" withFullSignature:{"v", "B", "@", "@?", 0}];
}

- (id)accessibilityValue
{
  v2 = [(VUIVideoAdvisoryViewAccessibility *)self safeArrayForKey:@"legendViews"];
  v3 = AXLabelForElements();

  return v3;
}

@end