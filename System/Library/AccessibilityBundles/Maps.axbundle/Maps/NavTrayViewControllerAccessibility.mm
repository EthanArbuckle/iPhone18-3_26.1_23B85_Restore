@interface NavTrayViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (void)pressedHeaderView;
@end

@implementation NavTrayViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NavTrayViewController" hasInstanceMethod:@"pressedHeaderView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"NavTrayViewController" hasInstanceVariable:@"_displayingInitialBanner" withType:"BOOL"];
  [v3 validateClass:@"NavTrayViewController" hasInstanceVariable:@"_receivingContacts" withType:"NSArray"];
  [v3 validateClass:@"NavTrayViewController" isKindOfClass:@"ContaineeViewController"];
  [v3 validateClass:@"ContaineeViewController" conformsToProtocol:@"ContaineePresentationProtocol"];
  [v3 validateProtocol:@"ContaineePresentationProtocol" hasMethod:@"cardPresentationController" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"CardPresentationController" hasInstanceMethod:@"containeeLayout" withFullSignature:{"Q", 0}];
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