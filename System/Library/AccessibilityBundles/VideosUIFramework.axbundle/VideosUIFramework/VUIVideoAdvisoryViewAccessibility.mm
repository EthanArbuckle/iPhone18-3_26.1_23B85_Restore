@interface VUIVideoAdvisoryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation VUIVideoAdvisoryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIVideoAdvisoryView" hasInstanceMethod:@"legendViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUIVideoAdvisoryView" hasInstanceMethod:@"_configureSubviewsWithDictionary:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"VUIVideoAdvisoryView" hasInstanceMethod:@"showAnimated:platterView:completion:" withFullSignature:{"v", "B", "@", "@?", 0}];
  [v3 validateClass:@"VUIVideoAdvisoryView" hasInstanceMethod:@"hideAnimated:platterView:completion:" withFullSignature:{"v", "B", "@", "@?", 0}];
}

- (id)accessibilityValue
{
  v2 = [(VUIVideoAdvisoryViewAccessibility *)self safeArrayForKey:@"legendViews"];
  v3 = AXLabelForElements();

  return v3;
}

@end