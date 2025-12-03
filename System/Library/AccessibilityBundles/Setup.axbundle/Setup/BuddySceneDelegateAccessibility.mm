@interface BuddySceneDelegateAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation BuddySceneDelegateAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BuddySceneDelegate"];
  [validationsCopy validateClass:@"BuddySceneDelegate" hasInstanceMethod:@"scene:willConnectToSession:options:" withFullSignature:{"v", "@", "@", "@", 0}];
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = BuddySceneDelegateAccessibility;
  [(BuddySceneDelegateAccessibility *)&v13 scene:sceneCopy willConnectToSession:sessionCopy options:optionsCopy];
  objc_opt_class();
  v11 = [NSClassFromString(&cfstr_Buddyapplicati.isa) safeValueForKey:@"setupController"];
  v12 = __UIAccessibilityCastAsClass();

  [v12 _accessibilityLoadAccessibilityInformation];
}

@end