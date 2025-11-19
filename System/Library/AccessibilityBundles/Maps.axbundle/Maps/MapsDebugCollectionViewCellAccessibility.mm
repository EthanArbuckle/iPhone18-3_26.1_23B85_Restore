@interface MapsDebugCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
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

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MapsDebugCollectionViewCell" isKindOfClass:@"UICollectionViewListCell"];
  [v3 validateClass:@"MapsDebugCollectionViewCell" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MapsDebugCollectionViewCell" hasInstanceMethod:@"detailTextLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UICollectionViewCell" hasInstanceMethod:@"contentConfiguration" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UICollectionViewListCell" hasInstanceMethod:@"trailingAccessoryConfigurations" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MapsDebugCollectionViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"textLabel, detailTextLabel"];
  if (!v3)
  {
    v4 = [(MapsDebugCollectionViewCellAccessibility *)self _axContentConfiguration];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 text];
      v8 = [v5 secondaryText];
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
  v3 = [(MapsDebugCollectionViewCellAccessibility *)self _axSwitch];

  if (v3)
  {
    v4 = [(MapsDebugCollectionViewCellAccessibility *)self _axSwitch];
    v5 = [v4 accessibilityValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MapsDebugCollectionViewCellAccessibility;
    v5 = [(MapsDebugCollectionViewCellAccessibility *)&v7 accessibilityValue];
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(MapsDebugCollectionViewCellAccessibility *)self _axSwitch];

  if (v3)
  {
    v4 = [(MapsDebugCollectionViewCellAccessibility *)self _axSwitch];
    v5 = [v4 accessibilityTraits];

    return v5;
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
  v3 = [(MapsDebugCollectionViewCellAccessibility *)&v9 _accessibilitySupplementaryFooterViews];
  v4 = [v3 mutableCopy];

  v5 = [(MapsDebugCollectionViewCellAccessibility *)self _axSwitch];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = [(MapsDebugCollectionViewCellAccessibility *)self _axSwitch];
    [v4 removeObject:v7];
  }

  return v4;
}

- (BOOL)accessibilityActivate
{
  v3 = [(MapsDebugCollectionViewCellAccessibility *)self _axSwitch];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityActivate];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MapsDebugCollectionViewCellAccessibility;
    v5 = [(MapsDebugCollectionViewCellAccessibility *)&v8 accessibilityActivate];
  }

  v6 = v5;

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