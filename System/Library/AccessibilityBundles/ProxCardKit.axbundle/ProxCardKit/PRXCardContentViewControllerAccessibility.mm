@interface PRXCardContentViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setInfoButtonAction:(id)action;
- (void)viewDidLoad;
@end

@implementation PRXCardContentViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PRXCardContentViewController" hasInstanceMethod:@"infoButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRXCardContentViewController" hasInstanceMethod:@"setInfoButtonAction:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PRXCardContentViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PRXCardContentViewController" hasInstanceVariable:@"_contentView" withType:"PRXCardContentView"];
  [validationsCopy validateClass:@"PRXCardContentView" hasInstanceVariable:@"_titleView" withType:"UIView<PRXTextContainer>"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PRXCardContentViewControllerAccessibility;
  [(PRXCardContentViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilityLocalizedString(@"info.button");
  v4 = [(PRXCardContentViewControllerAccessibility *)self safeUIViewForKey:@"infoButton"];
  [v4 setAccessibilityLabel:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PRXCardContentViewControllerAccessibility;
  [(PRXCardContentViewControllerAccessibility *)&v3 viewDidLoad];
  [(PRXCardContentViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

void __59__PRXCardContentViewControllerAccessibility_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7ED8];
  v3 = [*(a1 + 32) safeUIViewForKey:@"_contentView"];
  v2 = [v3 safeUIViewForKey:@"_titleView"];
  UIAccessibilityPostNotification(v1, v2);
}

- (void)setInfoButtonAction:(id)action
{
  v4.receiver = self;
  v4.super_class = PRXCardContentViewControllerAccessibility;
  [(PRXCardContentViewControllerAccessibility *)&v4 setInfoButtonAction:action];
  [(PRXCardContentViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end