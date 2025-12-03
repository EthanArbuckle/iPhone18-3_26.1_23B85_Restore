@interface SBHWidgetStackViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityScrollToWidgetNext:(BOOL)next;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (id)accessibilityCustomActions;
- (id)accessibilityScrollStatusForScrollView:(id)view;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBHWidgetStackViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBHWidgetStackViewController" hasInstanceMethod:@"pageControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHWidgetStackViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHWidgetStackViewController" hasInstanceMethod:@"icon" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHWidgetStackViewController" hasInstanceMethod:@"scrollViewDidEndScrolling:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBHWidgetStackViewController" hasInstanceMethod:@"_updateActiveWidgetIndexAndScrollViewContentOffset" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBLeafIcon" hasInstanceMethod:@"iconDataSources" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBLeafIcon" hasInstanceMethod:@"activeDataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBWidgetIcon" isKindOfClass:@"SBLeafIcon"];
  [validationsCopy validateClass:@"_UIScenePresentationView"];
  [validationsCopy validateClass:@"SBHWidget" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHSiriSuggestionsElement" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBHWidgetStackViewControllerAccessibility;
  [(SBHWidgetStackViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBHWidgetStackViewControllerAccessibility *)self safeValueForKey:@"pageControl"];
  [v3 setIsAccessibilityElement:0];
}

- (id)accessibilityCustomActions
{
  v14[2] = *MEMORY[0x29EDCA608];
  v3 = [(SBHWidgetStackViewControllerAccessibility *)self safeValueForKey:@"icon"];
  v4 = [v3 safeArrayForKey:@"iconDataSources"];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v8 = accessibilityLocalizedString(@"widget.icon.action.next");
    v9 = [v7 initWithName:v8 target:self selector:sel__accessibilityScrollToNextWidget];

    v10 = objc_alloc(MEMORY[0x29EDC78E0]);
    v11 = accessibilityLocalizedString(@"widget.icon.action.previous");
    v12 = [v10 initWithName:v11 target:self selector:sel__accessibilityScrollToPreviousWidget];

    v14[0] = v9;
    v14[1] = v12;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_accessibilityScrollToWidgetNext:(BOOL)next
{
  nextCopy = next;
  AXPerformSafeBlock();
  objc_opt_class();
  v5 = [(SBHWidgetStackViewControllerAccessibility *)self safeUIViewForKey:@"scrollView"];
  v6 = __UIAccessibilityCastAsClass();

  [v6 setIsAccessibilityElement:1];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], v6);
  if (nextCopy)
  {
    [v6 accessibilityScrollDownPage];
  }

  else
  {
    [v6 accessibilityScrollUpPage];
  }

  v7 = v6;
  AXPerformBlockOnMainThreadAfterDelay();

  return 1;
}

void __78__SBHWidgetStackViewControllerAccessibility__accessibilityScrollToWidgetNext___block_invoke_2(uint64_t a1)
{
  v3 = MEMORY[0x29EDCA5F8];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  AXPerformSafeBlock();
  [*(a1 + 40) setIsAccessibilityElement:{0, v3, 3221225472, __78__SBHWidgetStackViewControllerAccessibility__accessibilityScrollToWidgetNext___block_invoke_3, &unk_29F3002D8, v4}];
  v2 = [*(a1 + 40) _accessibilityDescendantOfType:NSClassFromString(&cfstr_Uiscenepresent.isa)];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v2);
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v5 = [(SBHWidgetStackViewControllerAccessibility *)self safeValueForKey:@"icon"];
  v6 = [v5 safeArrayForKey:@"iconDataSources"];
  v7 = [v6 count];

  if (v7 < 2)
  {
    goto LABEL_7;
  }

  if (scroll != 4)
  {
    if (scroll == 3)
    {

      return [(SBHWidgetStackViewControllerAccessibility *)self _accessibilityScrollToPreviousWidget];
    }

LABEL_7:
    v9.receiver = self;
    v9.super_class = SBHWidgetStackViewControllerAccessibility;
    return [(SBHWidgetStackViewControllerAccessibility *)&v9 accessibilityScroll:scroll];
  }

  return [(SBHWidgetStackViewControllerAccessibility *)self _accessibilityScrollToNextWidget];
}

- (id)accessibilityScrollStatusForScrollView:(id)view
{
  v3 = [(SBHWidgetStackViewControllerAccessibility *)self safeValueForKey:@"icon"];
  v4 = [v3 safeArrayForKey:@"iconDataSources"];
  v5 = [v3 safeValueForKey:@"activeDataSource"];
  v6 = [v4 indexOfObject:v5];

  v7 = [v4 objectAtIndexedSubscript:v6];
  v8 = [v7 safeStringForKey:@"displayName"];

  v9 = MEMORY[0x29EDBA0F8];
  v10 = accessibilityLocalizedString(@"widget.stack.scroll.status");
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &stru_2A230FAF0;
  }

  v12 = [v9 localizedStringWithFormat:v10, v11, v6 + 1, objc_msgSend(v4, "count")];

  return v12;
}

@end