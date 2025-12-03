@interface MUActionRowItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axNavigationDirectionsLabelHelper;
- (id)accessibilityLabel;
@end

@implementation MUActionRowItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MUActionRowItemView" hasInstanceMethod:@"titleText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUActionRowItemView" hasInstanceMethod:@"glyphName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(MUActionRowItemViewAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"ActionRowItemTypeDirections"])
  {
    [(MUActionRowItemViewAccessibility *)self _axNavigationDirectionsLabelHelper];
  }

  else
  {
    [(MUActionRowItemViewAccessibility *)self safeStringForKey:@"titleText"];
  }
  v4 = ;

  return v4;
}

- (id)_axNavigationDirectionsLabelHelper
{
  v3 = [(MUActionRowItemViewAccessibility *)self safeStringForKey:@"glyphName"];
  v4 = [(MUActionRowItemViewAccessibility *)self safeStringForKey:@"titleText"];
  if ([v3 isEqualToString:@"car.fill"])
  {
    v5 = @"travel.time.driving";
  }

  else if ([v3 isEqualToString:@"figure.walk"])
  {
    v5 = @"travel.time.walking";
  }

  else if ([v3 isEqualToString:@"tram.fill"])
  {
    v5 = @"travel.time.transit";
  }

  else if ([v3 isEqualToString:@"bicycle"])
  {
    v5 = @"travel.time.bike";
  }

  else
  {
    v5 = &stru_2A21F1AD0;
  }

  if ([(__CFString *)v5 isEqualToString:&stru_2A21F1AD0])
  {
    v6 = v4;
  }

  else
  {
    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityLocalizedString(v5);
    v6 = [v7 localizedStringWithFormat:v8, v4];
  }

  return v6;
}

@end