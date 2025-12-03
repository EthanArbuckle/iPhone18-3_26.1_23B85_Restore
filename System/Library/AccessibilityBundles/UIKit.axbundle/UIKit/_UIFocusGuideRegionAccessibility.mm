@interface _UIFocusGuideRegionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_shouldUseNextFocusedItemForLinearSorting;
@end

@implementation _UIFocusGuideRegionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"_UIFocusGuideRegion";
  v3 = "B";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"_canBeOccludedByRegionsAbove" withFullSignature:{v3, 0}];
  v5 = "@";
  [location[0] validateClass:v4 hasInstanceMethod:@"delegate" withFullSignature:0];
  [location[0] validateClass:@"UILayoutGuide" hasInstanceMethod:@"owningView" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"_UIFocusGuideImpl" hasInstanceMethod:@"owningItem" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"UIWindowScene" hasInstanceVariable:@"_keyWindow" withType:"UIWindow"];
  objc_storeStrong(v7, obj);
}

- (BOOL)_shouldUseNextFocusedItemForLinearSorting
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIFocusGuideRegionAccessibility;
  return [(_UIFocusGuideRegionAccessibility *)&v3 _shouldUseNextFocusedItemForLinearSorting];
}

@end