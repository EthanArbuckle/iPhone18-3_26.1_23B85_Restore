@interface SPUISearchHeaderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (SPUISearchHeaderAccessibility)init;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateDictationButton;
@end

@implementation SPUISearchHeaderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SPUISearchHeader" hasInstanceMethod:@"init" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SPUISearchHeader" hasInstanceMethod:@"searchField" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SPUITextField" isKindOfClass:@"UITextField"];
  if (AXProcessIsSpringBoard())
  {
    [validationsCopy validateClass:@"SBIconController"];
    [validationsCopy validateClass:@"SBIconController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
    [validationsCopy validateClass:@"SBIconController" hasInstanceMethod:@"iconManager" withFullSignature:{"@", 0}];
    [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"_isShowingSearchableTodayView" withFullSignature:{"B", 0}];
    [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"dismissSpotlightOrTodayViewAnimated:" withFullSignature:{"B", "B", 0}];
  }
}

- (void)_axAnnotateDictationButton
{
  v3 = accessibilityLocalizedString(@"dictate.button");
  objc_opt_class();
  v4 = [(SPUISearchHeaderAccessibility *)self safeValueForKey:@"searchField"];
  v5 = __UIAccessibilityCastAsClass();

  rightView = [v5 rightView];
  [rightView setAccessibilityLabel:v3];
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

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v4 = [MEMORY[0x29ED37100](@"SBIconController" a2)];
  v5 = [v4 safeValueForKey:@"iconManager"];

  v6 = [v5 safeBoolForKey:@"_isShowingSearchableTodayView"];
  if (scroll == 2)
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