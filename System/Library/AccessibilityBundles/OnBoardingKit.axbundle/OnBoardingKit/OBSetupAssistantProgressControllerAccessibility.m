@interface OBSetupAssistantProgressControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation OBSetupAssistantProgressControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"OBSetupAssistantProgressController" isKindOfClass:@"OBWelcomeController"];
  [v3 validateClass:@"OBSetupAssistantProgressController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"OBWelcomeController" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = OBSetupAssistantProgressControllerAccessibility;
  [(OBSetupAssistantProgressControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(OBSetupAssistantProgressControllerAccessibility *)self safeValueForKey:@"contentView"];
  [v3 _accessibilitySetOverridesInvalidFrames:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OBSetupAssistantProgressControllerAccessibility;
  [(OBSetupAssistantProgressControllerAccessibility *)&v3 viewDidLoad];
  [(OBSetupAssistantProgressControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end