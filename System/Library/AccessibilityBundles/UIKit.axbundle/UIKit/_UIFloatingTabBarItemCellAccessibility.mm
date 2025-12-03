@interface _UIFloatingTabBarItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
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

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIFloatingTabBarItemCell" hasInstanceMethod:@"_itemView" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)isAccessibilityElement
{
  _axItemView = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  isAccessibilityElement = [_axItemView isAccessibilityElement];
  MEMORY[0x29EDC9740](_axItemView);
  return isAccessibilityElement;
}

- (id)accessibilityLabel
{
  _axItemView = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  accessibilityLabel = [_axItemView accessibilityLabel];
  MEMORY[0x29EDC9740](_axItemView);

  return accessibilityLabel;
}

- (_NSRange)accessibilityRowRange
{
  _axItemView = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  accessibilityRowRange = [_axItemView accessibilityRowRange];
  v7 = v2;
  MEMORY[0x29EDC9740](_axItemView);
  v3 = accessibilityRowRange;
  v4 = v7;
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)accessibilityAttributedLabel
{
  accessibilityIdentifier = [(_UIFloatingTabBarItemCellAccessibility *)self accessibilityIdentifier];
  v6 = [accessibilityIdentifier isEqual:@"UIA.TV.Tab.tvs.sbd.4000"];
  *&v2 = MEMORY[0x29EDC9740](accessibilityIdentifier).n128_u64[0];
  if (v6)
  {
    accessibilityAttributedLabel = 0;
  }

  else
  {
    _axItemView = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
    accessibilityAttributedLabel = [_axItemView accessibilityAttributedLabel];
    MEMORY[0x29EDC9740](_axItemView);
  }

  return accessibilityAttributedLabel;
}

- (unint64_t)accessibilityTraits
{
  _axItemView = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  accessibilityTraits = [_axItemView accessibilityTraits];
  MEMORY[0x29EDC9740](_axItemView);
  return accessibilityTraits;
}

- (id)accessibilityValue
{
  _axItemView = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  accessibilityValue = [_axItemView accessibilityValue];
  MEMORY[0x29EDC9740](_axItemView);

  return accessibilityValue;
}

- (id)accessibilityAttributedValue
{
  _axItemView = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  accessibilityAttributedValue = [_axItemView accessibilityAttributedValue];
  MEMORY[0x29EDC9740](_axItemView);

  return accessibilityAttributedValue;
}

- (id)accessibilityHint
{
  _axItemView = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  accessibilityHint = [_axItemView accessibilityHint];
  MEMORY[0x29EDC9740](_axItemView);

  return accessibilityHint;
}

- (id)accessibilityAttributedHint
{
  _axItemView = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  accessibilityAttributedHint = [_axItemView accessibilityAttributedHint];
  MEMORY[0x29EDC9740](_axItemView);

  return accessibilityAttributedHint;
}

- (id)accessibilityIdentifier
{
  _axItemView = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  accessibilityIdentifier = [_axItemView accessibilityIdentifier];
  MEMORY[0x29EDC9740](_axItemView);

  return accessibilityIdentifier;
}

- (id)accessibilityUserInputLabels
{
  _axItemView = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  accessibilityUserInputLabels = [_axItemView accessibilityUserInputLabels];
  MEMORY[0x29EDC9740](_axItemView);

  return accessibilityUserInputLabels;
}

- (id)accessibilityCustomActions
{
  _axItemView = [(_UIFloatingTabBarItemCellAccessibility *)self _axItemView];
  accessibilityCustomActions = [_axItemView accessibilityCustomActions];
  MEMORY[0x29EDC9740](_axItemView);

  return accessibilityCustomActions;
}

@end