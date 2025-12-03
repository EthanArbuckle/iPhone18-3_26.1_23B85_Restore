@interface CKSyndicationContentViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKSyndicationContentViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKSyndicationContentViewController" isKindOfClass:@"OBWelcomeController"];
  [validationsCopy validateClass:@"CKSyndicationContentViewController" hasInstanceMethod:@"micropillView1" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKSyndicationContentViewController" hasInstanceMethod:@"micropillView2" withFullSignature:{"@", 0}];
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