@interface BreakoutDetailsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityPerformCallToAction:(id)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation BreakoutDetailsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ProductPageExtension.BreakoutDetailsView" hasInstanceMethod:@"accessibilityBadgeLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.BreakoutDetailsView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.BreakoutDetailsView" hasInstanceMethod:@"accessibilityDescriptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.BreakoutDetailsView" hasInstanceMethod:@"accessibilityCallToActionButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(BreakoutDetailsViewAccessibility *)self _axDescriptionLabel];
  v4 = [v3 accessibilityLabel];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:@" / "];

  v6 = [(BreakoutDetailsViewAccessibility *)self _axBadgeLabel];
  v9 = [(BreakoutDetailsViewAccessibility *)self _axTitleLabel];
  v7 = __UIAXStringForVariables();

  return v7;
}

- (BOOL)_accessibilityPerformCallToAction:(id)a3
{
  v3 = [(BreakoutDetailsViewAccessibility *)self _axCallToActionButton];
  [v3 accessibilityActivate];

  return 1;
}

- (id)accessibilityCustomActions
{
  v3 = MEMORY[0x29EDB8DE8];
  v10.receiver = self;
  v10.super_class = BreakoutDetailsViewAccessibility;
  v4 = [(BreakoutDetailsViewAccessibility *)&v10 accessibilityCustomActions];
  v5 = [v3 arrayWithArray:v4];

  v6 = [(BreakoutDetailsViewAccessibility *)self _axCallToActionButton];
  v7 = [v6 accessibilityLabel];

  if ([v7 length])
  {
    v8 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v7 target:self selector:sel__accessibilityPerformCallToAction_];
    [v5 axSafelyAddObject:v8];
  }

  return v5;
}

- (id)automationElements
{
  v10.receiver = self;
  v10.super_class = BreakoutDetailsViewAccessibility;
  v3 = [(BreakoutDetailsViewAccessibility *)&v10 automationElements];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = v6;

  v8 = [(BreakoutDetailsViewAccessibility *)self _axCallToActionButton];
  [v7 axSafelyAddObject:v8];

  return v7;
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(BreakoutDetailsViewAccessibility *)self _axBadgeLabel];
  [v4 setIsAccessibilityElement:1];

  v5 = [(BreakoutDetailsViewAccessibility *)self _axBadgeLabel];
  [v3 axSafelyAddObject:v5];

  v6 = [(BreakoutDetailsViewAccessibility *)self _axTitleLabel];
  [v6 setIsAccessibilityElement:1];

  v7 = [(BreakoutDetailsViewAccessibility *)self _axTitleLabel];
  [v7 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  v8 = [(BreakoutDetailsViewAccessibility *)self _axTitleLabel];
  [v3 axSafelyAddObject:v8];

  v9 = [(BreakoutDetailsViewAccessibility *)self _axDescriptionLabel];
  [v9 setIsAccessibilityElement:1];

  v10 = [(BreakoutDetailsViewAccessibility *)self _axDescriptionLabel];
  [v3 axSafelyAddObject:v10];

  v11 = [(BreakoutDetailsViewAccessibility *)self _axCallToActionButton];
  [v11 setIsAccessibilityElement:1];

  v12 = [(BreakoutDetailsViewAccessibility *)self _axCallToActionButton];
  [v12 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];

  v13 = [(BreakoutDetailsViewAccessibility *)self _axCallToActionButton];
  v14 = [v13 accessibilityLabel];

  if (v14)
  {
    v15 = [(BreakoutDetailsViewAccessibility *)self _axCallToActionButton];
    [v3 axSafelyAddObject:v15];
  }

  return v3;
}

@end