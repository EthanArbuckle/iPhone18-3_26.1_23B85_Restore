@interface MapsDebugCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsSelected;
- (BOOL)accessibilityActivate;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axContentConfiguration;
- (id)_axSwitch;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MapsDebugCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MapsDebugCollectionViewCell" isKindOfClass:@"UICollectionViewListCell"];
  [validationsCopy validateClass:@"MapsDebugCollectionViewCell" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MapsDebugCollectionViewCell" hasInstanceMethod:@"detailTextLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UICollectionViewCell" hasInstanceMethod:@"contentConfiguration" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UICollectionViewListCell" hasInstanceMethod:@"trailingAccessoryConfigurations" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MapsDebugCollectionViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"textLabel, detailTextLabel"];
  if (!v3)
  {
    _axContentConfiguration = [(MapsDebugCollectionViewCellAccessibility *)self _axContentConfiguration];
    v5 = _axContentConfiguration;
    if (_axContentConfiguration)
    {
      text = [_axContentConfiguration text];
      secondaryText = [v5 secondaryText];
      v3 = __AXStringForVariables();
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)accessibilityValue
{
  _axSwitch = [(MapsDebugCollectionViewCellAccessibility *)self _axSwitch];

  if (_axSwitch)
  {
    _axSwitch2 = [(MapsDebugCollectionViewCellAccessibility *)self _axSwitch];
    accessibilityValue = [_axSwitch2 accessibilityValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MapsDebugCollectionViewCellAccessibility;
    accessibilityValue = [(MapsDebugCollectionViewCellAccessibility *)&v7 accessibilityValue];
  }

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  _axSwitch = [(MapsDebugCollectionViewCellAccessibility *)self _axSwitch];

  if (_axSwitch)
  {
    _axSwitch2 = [(MapsDebugCollectionViewCellAccessibility *)self _axSwitch];
    accessibilityTraits = [_axSwitch2 accessibilityTraits];

    return accessibilityTraits;
  }

  else if ([(MapsDebugCollectionViewCellAccessibility *)self _axIsSelected])
  {
    v8.receiver = self;
    v8.super_class = MapsDebugCollectionViewCellAccessibility;
    return *MEMORY[0x29EDC7FC0] | [(MapsDebugCollectionViewCellAccessibility *)&v8 accessibilityTraits];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MapsDebugCollectionViewCellAccessibility;
    return [(MapsDebugCollectionViewCellAccessibility *)&v7 accessibilityTraits];
  }
}

- (id)_accessibilitySupplementaryFooterViews
{
  v9.receiver = self;
  v9.super_class = MapsDebugCollectionViewCellAccessibility;
  _accessibilitySupplementaryFooterViews = [(MapsDebugCollectionViewCellAccessibility *)&v9 _accessibilitySupplementaryFooterViews];
  v4 = [_accessibilitySupplementaryFooterViews mutableCopy];

  _axSwitch = [(MapsDebugCollectionViewCellAccessibility *)self _axSwitch];
  v6 = [v4 containsObject:_axSwitch];

  if (v6)
  {
    _axSwitch2 = [(MapsDebugCollectionViewCellAccessibility *)self _axSwitch];
    [v4 removeObject:_axSwitch2];
  }

  return v4;
}

- (BOOL)accessibilityActivate
{
  _axSwitch = [(MapsDebugCollectionViewCellAccessibility *)self _axSwitch];
  v4 = _axSwitch;
  if (_axSwitch)
  {
    accessibilityActivate = [_axSwitch accessibilityActivate];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MapsDebugCollectionViewCellAccessibility;
    accessibilityActivate = [(MapsDebugCollectionViewCellAccessibility *)&v8 accessibilityActivate];
  }

  v6 = accessibilityActivate;

  return v6;
}

- (id)_axSwitch
{
  v2 = [(MapsDebugCollectionViewCellAccessibility *)self _accessibilityFindDescendant:&__block_literal_global_6];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();

  return v3;
}

uint64_t __53__MapsDebugCollectionViewCellAccessibility__axSwitch__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsSelected
{
  v2 = [(MapsDebugCollectionViewCellAccessibility *)self safeArrayForKey:@"trailingAccessoryConfigurations"];
  v3 = [v2 ax_containsObjectUsingBlock:&__block_literal_global_321];

  return v3;
}

uint64_t __57__MapsDebugCollectionViewCellAccessibility__axIsSelected__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uicellaccessor.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_axContentConfiguration
{
  objc_opt_class();
  v3 = [(MapsDebugCollectionViewCellAccessibility *)self safeValueForKey:@"contentConfiguration"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

@end