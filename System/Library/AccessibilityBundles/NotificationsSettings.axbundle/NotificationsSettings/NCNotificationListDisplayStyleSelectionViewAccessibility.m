@interface NCNotificationListDisplayStyleSelectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation NCNotificationListDisplayStyleSelectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCNotificationListDisplayStyleSelectionView" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NCNotificationListDisplayStyleSelectionView" hasInstanceMethod:@"encapsulatedSelectionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationListDisplayStyleSelectionView" hasInstanceMethod:@"selectionLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  if ([(NCNotificationListDisplayStyleSelectionViewAccessibility *)self safeBoolForKey:@"isSelected"])
  {
    v3 = @"encapsulatedSelectionLabel";
  }

  else
  {
    v3 = @"selectionLabel";
  }

  v4 = [(NCNotificationListDisplayStyleSelectionViewAccessibility *)self safeValueForKey:v3];
  v5 = [v4 accessibilityLabel];

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = NCNotificationListDisplayStyleSelectionViewAccessibility;
  v3 = [(NCNotificationListDisplayStyleSelectionViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(NCNotificationListDisplayStyleSelectionViewAccessibility *)self safeBoolForKey:@"isSelected"];
  v5 = MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = MEMORY[0x29EDC7F70];
  }

  return *v5 | v3;
}

@end