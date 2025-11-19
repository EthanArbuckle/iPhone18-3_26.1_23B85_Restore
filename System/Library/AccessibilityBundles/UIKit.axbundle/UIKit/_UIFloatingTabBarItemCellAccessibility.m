@interface _UIFloatingTabBarItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (_NSRange)accessibilityRowRange;
- (id)accessibilityAttributedHint;
- (id)accessibilityAttributedLabel;
- (id)accessibilityAttributedValue;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIFloatingTabBarItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIFloatingTabBarItemCell" hasInstanceMethod:@"_itemView" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)isAccessibilityElement
{
  v3 = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  v4 = [v3 isAccessibilityElement];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  v4 = [v3 accessibilityLabel];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (_NSRange)accessibilityRowRange
{
  v5 = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  v6 = [v5 accessibilityRowRange];
  v7 = v2;
  MEMORY[0x29EDC9740](v5);
  v3 = v6;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)accessibilityAttributedLabel
{
  v5 = [(_UIFloatingTabBarItemCellAccessibility *)self accessibilityIdentifier];
  v6 = [v5 isEqual:@"UIA.TV.Tab.tvs.sbd.4000"];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v4 = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
    v8 = [v4 accessibilityAttributedLabel];
    MEMORY[0x29EDC9740](v4);
  }

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  v4 = [v3 accessibilityTraits];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (id)accessibilityValue
{
  v3 = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  v4 = [v3 accessibilityValue];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityAttributedValue
{
  v3 = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  v4 = [v3 accessibilityAttributedValue];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityHint
{
  v3 = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  v4 = [v3 accessibilityHint];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityAttributedHint
{
  v3 = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  v4 = [v3 accessibilityAttributedHint];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityIdentifier
{
  v3 = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  v4 = [v3 accessibilityIdentifier];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityUserInputLabels
{
  v3 = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  v4 = [v3 accessibilityUserInputLabels];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityCustomActions
{
  v3 = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  v4 = [v3 accessibilityCustomActions];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

@end