@interface _UISearchPresentationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityPresentationControllerModalizes;
@end

@implementation _UISearchPresentationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIPresentationController";
  [location[0] validateClass:@"_UISearchPresentationController" isKindOfClass:?];
  [location[0] validateClass:@"UIPresentationController" hasInstanceMethod:@"_accessibilityPresentationControllerModalizes" withFullSignature:{"B", 0}];
  objc_storeStrong(v5, obj);
}

- (BOOL)_accessibilityPresentationControllerModalizes
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UISearchPresentationControllerAccessibility;
  return [(_UISearchPresentationControllerAccessibility *)&v3 _accessibilityPresentationControllerModalizes];
}

@end