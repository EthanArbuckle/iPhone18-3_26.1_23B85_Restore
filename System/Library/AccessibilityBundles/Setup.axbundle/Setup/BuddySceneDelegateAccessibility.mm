@interface BuddySceneDelegateAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation BuddySceneDelegateAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BuddySceneDelegate"];
  [v3 validateClass:@"BuddySceneDelegate" hasInstanceMethod:@"scene:willConnectToSession:options:" withFullSignature:{"v", "@", "@", "@", 0}];
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13.receiver = self;
  v13.super_class = BuddySceneDelegateAccessibility;
  [(BuddySceneDelegateAccessibility *)&v13 scene:v8 willConnectToSession:v9 options:v10];
  objc_opt_class();
  v11 = [NSClassFromString(&cfstr_Buddyapplicati.isa) safeValueForKey:@"setupController"];
  v12 = __UIAccessibilityCastAsClass();

  [v12 _accessibilityLoadAccessibilityInformation];
}

@end