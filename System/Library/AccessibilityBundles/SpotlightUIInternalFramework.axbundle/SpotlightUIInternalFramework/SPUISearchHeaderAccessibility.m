@interface SPUISearchHeaderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (SPUISearchHeaderAccessibility)init;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateDictationButton;
@end

@implementation SPUISearchHeaderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SPUISearchHeader" hasInstanceMethod:@"init" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SPUISearchHeader" hasInstanceMethod:@"searchField" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SPUITextField" isKindOfClass:@"UITextField"];
  if (AXProcessIsSpringBoard())
  {
    [v3 validateClass:@"SBIconController"];
    [v3 validateClass:@"SBIconController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
    [v3 validateClass:@"SBIconController" hasInstanceMethod:@"iconManager" withFullSignature:{"@", 0}];
    [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"_isShowingSearchableTodayView" withFullSignature:{"B", 0}];
    [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"dismissSpotlightOrTodayViewAnimated:" withFullSignature:{"B", "B", 0}];
  }
}

- (void)_axAnnotateDictationButton
{
  v3 = accessibilityLocalizedString(@"dictate.button");
  objc_opt_class();
  v4 = [(SPUISearchHeaderAccessibility *)self safeValueForKey:@"searchField"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 rightView];
  [v6 setAccessibilityLabel:v3];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = SPUISearchHeaderAccessibility;
  [(SPUISearchHeaderAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(SPUISearchHeaderAccessibility *)self _axAnnotateDictationButton];
}

- (SPUISearchHeaderAccessibility)init
{
  v5.receiver = self;
  v5.super_class = SPUISearchHeaderAccessibility;
  v2 = [(SPUISearchHeaderAccessibility *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SPUISearchHeaderAccessibility *)v2 _axAnnotateDictationButton];
  }

  return v3;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v4 = [MEMORY[0x29ED37100](@"SBIconController" a2)];
  v5 = [v4 safeValueForKey:@"iconManager"];

  v6 = [v5 safeBoolForKey:@"_isShowingSearchableTodayView"];
  if (a3 == 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = v5;
    AXPerformSafeBlock();
  }

  return v7;
}

@end