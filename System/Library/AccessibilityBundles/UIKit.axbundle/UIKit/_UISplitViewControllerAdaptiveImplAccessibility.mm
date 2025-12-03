@interface _UISplitViewControllerAdaptiveImplAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySpeakThisViewController;
@end

@implementation _UISplitViewControllerAdaptiveImplAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIViewController" hasInstanceMethod:@"_childViewControllerForSpokenContent" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)_accessibilitySpeakThisViewController
{
  v3 = [(_UISplitViewControllerAdaptiveImplAccessibility *)self safeValueForKey:@"_childViewControllerForSpokenContent"];
  _accessibilitySpeakThisViewController = [v3 _accessibilitySpeakThisViewController];
  MEMORY[0x29EDC9740](v3);

  return _accessibilitySpeakThisViewController;
}

@end