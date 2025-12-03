@interface MFMailComposeControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_composeViewDidDraw:(id)draw;
- (void)viewDidLoad;
@end

@implementation MFMailComposeControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFMailComposeController" hasInstanceMethod:@"_composeViewDidDraw:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"MFMailComposeController" hasInstanceVariable:@"_toField" withType:"MFMailComposeToField"];
  [validationsCopy validateClass:@"MFMailComposeController" hasInstanceVariable:@"_sendButtonItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"MFMailComposeController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"WKScrollView"];
  [validationsCopy validateClass:@"MFMailComposeController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = MFMailComposeControllerAccessibility;
  [(MFMailComposeControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(MFMailComposeControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global_5];

  [v4 _accessibilitySetShouldUseFallbackForVisibleContentInset:1];
  v5 = [(MFMailComposeControllerAccessibility *)self safeValueForKey:@"_sendButtonItem"];
  v6 = accessibilityLocalizedString(@"send.button");
  [v5 setAccessibilityLabel:v6];
}

uint64_t __82__MFMailComposeControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Wkscrollview.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_composeViewDidDraw:(id)draw
{
  v3.receiver = self;
  v3.super_class = MFMailComposeControllerAccessibility;
  [(MFMailComposeControllerAccessibility *)&v3 _composeViewDidDraw:draw];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __60__MFMailComposeControllerAccessibility__composeViewDidDraw___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7ED8];
  v2 = [*(a1 + 32) valueForKey:@"_toField"];
  UIAccessibilityPostNotification(v1, v2);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MFMailComposeControllerAccessibility;
  [(MFMailComposeControllerAccessibility *)&v3 viewDidLoad];
  [(MFMailComposeControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end