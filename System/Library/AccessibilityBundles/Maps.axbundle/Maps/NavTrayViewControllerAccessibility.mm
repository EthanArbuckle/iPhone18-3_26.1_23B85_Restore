@interface NavTrayViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (void)pressedHeaderView;
@end

@implementation NavTrayViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NavTrayViewController" hasInstanceMethod:@"pressedHeaderView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"NavTrayViewController" hasInstanceVariable:@"_displayingInitialBanner" withType:"BOOL"];
  [validationsCopy validateClass:@"NavTrayViewController" hasInstanceVariable:@"_receivingContacts" withType:"NSArray"];
  [validationsCopy validateClass:@"NavTrayViewController" isKindOfClass:@"ContaineeViewController"];
  [validationsCopy validateClass:@"ContaineeViewController" conformsToProtocol:@"ContaineePresentationProtocol"];
  [validationsCopy validateProtocol:@"ContaineePresentationProtocol" hasMethod:@"cardPresentationController" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"CardPresentationController" hasInstanceMethod:@"containeeLayout" withFullSignature:{"Q", 0}];
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [(NavTrayViewControllerAccessibility *)self safeValueForKey:@"cardPresentationController"];
  v3 = [v2 safeUnsignedIntegerForKey:@"containeeLayout"];
  if (v3 == 2)
  {
    AXPerformSafeBlock();
  }

  return v3 == 2;
}

- (void)pressedHeaderView
{
  v2.receiver = self;
  v2.super_class = NavTrayViewControllerAccessibility;
  [(NavTrayViewControllerAccessibility *)&v2 pressedHeaderView];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7380], 0);
}

@end