@interface UIRootSceneWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_isEligibleForFocusInteraction;
@end

@implementation UIRootSceneWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIView";
  [location[0] validateClass:@"UIRootSceneWindow" isKindOfClass:?];
  [location[0] validateClass:@"UIView" hasInstanceMethod:@"_isEligibleForFocusInteraction" withFullSignature:{"B", 0}];
  objc_storeStrong(v5, obj);
}

- (BOOL)_isEligibleForFocusInteraction
{
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UIRootSceneWindowAccessibility;
  _isEligibleForFocusInteraction = [(UIRootSceneWindowAccessibility *)&v3 _isEligibleForFocusInteraction];
  if (([(UIRootSceneWindowAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    _isEligibleForFocusInteraction = 0;
  }

  return _isEligibleForFocusInteraction & 1;
}

@end