@interface _UIFocusItemRegionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation _UIFocusItemRegionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIFocusItemRegion" hasInstanceMethod:@"_canBeOccludedByRegionsAbove" withFullSignature:{"B", 0}];
  objc_storeStrong(v4, obj);
}

@end