@interface OBSetupAssistantProgressControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation OBSetupAssistantProgressControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"OBSetupAssistantProgressController" isKindOfClass:@"OBWelcomeController"];
  [validationsCopy validateClass:@"OBSetupAssistantProgressController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"OBWelcomeController" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
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