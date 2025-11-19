@interface GKDashboardPlayerCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation GKDashboardPlayerCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GKDashboardPlayerCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKDashboardPlayerCell" hasInstanceMethod:@"statusLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKDashboardPlayerCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"GKDashboardPlayerPickerCell" isKindOfClass:@"GKDashboardPlayerCell"];
  [v3 validateClass:@"GKDashboardPlayerPickerCell" hasInstanceMethod:@"showsPlayerSubtitle" withFullSignature:{"B", 0}];
  [v3 validateClass:@"GKDashboardPlayerPickerCell" hasInstanceMethod:@"showsMessagesHandleInStatusText" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  MEMORY[0x29C2D7090](@"GKDashboardPlayerPickerCell", a2);
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([(GKDashboardPlayerCellAccessibility *)self safeBoolForKey:@"showsPlayerSubtitle"]& 1) != 0 || [(GKDashboardPlayerCellAccessibility *)self safeBoolForKey:@"showsMessagesHandleInStatusText"])
  {
    v3 = @"nameLabel, statusLabel";
  }

  else
  {
    v3 = @"nameLabel";
  }

  v4 = [(GKDashboardPlayerCellAccessibility *)self _accessibilityStringForLabelKeyValues:v3];

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(GKDashboardPlayerCellAccessibility *)self safeBoolForKey:@"isSelected"];
  v8.receiver = self;
  v8.super_class = GKDashboardPlayerCellAccessibility;
  v4 = *MEMORY[0x29EDC7F70] | [(GKDashboardPlayerCellAccessibility *)&v8 accessibilityTraits];
  v5 = *MEMORY[0x29EDC7FC0] | v4;
  v6 = v4 & ~*MEMORY[0x29EDC7FC0];
  if (v3)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

@end