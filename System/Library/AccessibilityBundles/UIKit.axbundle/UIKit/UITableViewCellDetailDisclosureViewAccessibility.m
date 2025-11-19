@interface UITableViewCellDetailDisclosureViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UITableViewCellDetailDisclosureViewAccessibility

- (id)accessibilityLabel
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = [(UITableViewCellDetailDisclosureViewAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v5 = [v6[0] safeValueForKey:@"_accessibilityTextElementText"];
  v3 = accessibilityLocalizedString(@"more.info.button");
  v4 = __UIAXStringForVariables();
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UITableViewCellDetailDisclosureViewAccessibility;
  return [(UITableViewCellDetailDisclosureViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7F70];
}

@end