@interface BreakoutDetailsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityPerformCallToAction:(id)action;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation BreakoutDetailsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Arcade.BreakoutDetailsView" hasInstanceMethod:@"accessibilityBadgeLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.BreakoutDetailsView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.BreakoutDetailsView" hasInstanceMethod:@"accessibilityDescriptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.BreakoutDetailsView" hasInstanceMethod:@"accessibilityCallToActionButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  _axDescriptionLabel = [(BreakoutDetailsViewAccessibility *)self _axDescriptionLabel];
  accessibilityLabel = [_axDescriptionLabel accessibilityLabel];

  v5 = [accessibilityLabel stringByReplacingOccurrencesOfString:@"/" withString:@" / "];

  _axBadgeLabel = [(BreakoutDetailsViewAccessibility *)self _axBadgeLabel];
  _axTitleLabel = [(BreakoutDetailsViewAccessibility *)self _axTitleLabel];
  v7 = __UIAXStringForVariables();

  return v7;
}

- (BOOL)_accessibilityPerformCallToAction:(id)action
{
  _axCallToActionButton = [(BreakoutDetailsViewAccessibility *)self _axCallToActionButton];
  [_axCallToActionButton accessibilityActivate];

  return 1;
}

- (id)accessibilityCustomActions
{
  v3 = MEMORY[0x29EDB8DE8];
  v10.receiver = self;
  v10.super_class = BreakoutDetailsViewAccessibility;
  accessibilityCustomActions = [(BreakoutDetailsViewAccessibility *)&v10 accessibilityCustomActions];
  v5 = [v3 arrayWithArray:accessibilityCustomActions];

  _axCallToActionButton = [(BreakoutDetailsViewAccessibility *)self _axCallToActionButton];
  accessibilityLabel = [_axCallToActionButton accessibilityLabel];

  if ([accessibilityLabel length])
  {
    v8 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:accessibilityLabel target:self selector:sel__accessibilityPerformCallToAction_];
    [v5 axSafelyAddObject:v8];
  }

  return v5;
}

- (id)automationElements
{
  v10.receiver = self;
  v10.super_class = BreakoutDetailsViewAccessibility;
  automationElements = [(BreakoutDetailsViewAccessibility *)&v10 automationElements];
  v4 = [automationElements mutableCopy];
  v5 = v4;
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = array;

  _axCallToActionButton = [(BreakoutDetailsViewAccessibility *)self _axCallToActionButton];
  [v7 axSafelyAddObject:_axCallToActionButton];

  return v7;
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  _axBadgeLabel = [(BreakoutDetailsViewAccessibility *)self _axBadgeLabel];
  [_axBadgeLabel setIsAccessibilityElement:1];

  _axBadgeLabel2 = [(BreakoutDetailsViewAccessibility *)self _axBadgeLabel];
  [array axSafelyAddObject:_axBadgeLabel2];

  _axTitleLabel = [(BreakoutDetailsViewAccessibility *)self _axTitleLabel];
  [_axTitleLabel setIsAccessibilityElement:1];

  _axTitleLabel2 = [(BreakoutDetailsViewAccessibility *)self _axTitleLabel];
  [_axTitleLabel2 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];

  _axTitleLabel3 = [(BreakoutDetailsViewAccessibility *)self _axTitleLabel];
  [array axSafelyAddObject:_axTitleLabel3];

  _axDescriptionLabel = [(BreakoutDetailsViewAccessibility *)self _axDescriptionLabel];
  [_axDescriptionLabel setIsAccessibilityElement:1];

  _axDescriptionLabel2 = [(BreakoutDetailsViewAccessibility *)self _axDescriptionLabel];
  [array axSafelyAddObject:_axDescriptionLabel2];

  _axCallToActionButton = [(BreakoutDetailsViewAccessibility *)self _axCallToActionButton];
  [_axCallToActionButton setIsAccessibilityElement:1];

  _axCallToActionButton2 = [(BreakoutDetailsViewAccessibility *)self _axCallToActionButton];
  [_axCallToActionButton2 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];

  _axCallToActionButton3 = [(BreakoutDetailsViewAccessibility *)self _axCallToActionButton];
  accessibilityLabel = [_axCallToActionButton3 accessibilityLabel];

  if (accessibilityLabel)
  {
    _axCallToActionButton4 = [(BreakoutDetailsViewAccessibility *)self _axCallToActionButton];
    [array axSafelyAddObject:_axCallToActionButton4];
  }

  return array;
}

@end