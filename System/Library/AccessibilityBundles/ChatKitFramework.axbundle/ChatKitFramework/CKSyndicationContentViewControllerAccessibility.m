@interface CKSyndicationContentViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKSyndicationContentViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKSyndicationContentViewController" isKindOfClass:@"OBWelcomeController"];
  [v3 validateClass:@"CKSyndicationContentViewController" hasInstanceMethod:@"micropillView1" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKSyndicationContentViewController" hasInstanceMethod:@"micropillView2" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CKSyndicationContentViewControllerAccessibility;
  [(CKSyndicationContentViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKSyndicationContentViewControllerAccessibility *)self safeValueForKey:@"micropillView1"];
  v4 = [(CKSyndicationContentViewControllerAccessibility *)self safeValueForKey:@"micropillView2"];
  [v3 setIsAccessibilityElement:0];
  [v4 setIsAccessibilityElement:0];
}

@end