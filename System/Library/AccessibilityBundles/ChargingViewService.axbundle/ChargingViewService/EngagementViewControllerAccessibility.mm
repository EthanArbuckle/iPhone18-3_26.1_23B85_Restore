@interface EngagementViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)viewDidLoad;
@end

@implementation EngagementViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EngagementViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"EngagementViewController" hasInstanceMethod:@"engagementDismissButton" withFullSignature:{"@", 0}];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = EngagementViewControllerAccessibility;
  [(EngagementViewControllerAccessibility *)&v4 viewDidLoad];
  v3 = [(EngagementViewControllerAccessibility *)self safeValueForKey:@"engagementDismissButton"];
  [v3 setIsAccessibilityElement:0];
}

@end