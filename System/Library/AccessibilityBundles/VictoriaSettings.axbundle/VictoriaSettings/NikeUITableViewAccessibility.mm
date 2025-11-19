@interface NikeUITableViewAccessibility
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryHeaderViews;
@end

@implementation NikeUITableViewAccessibility

- (id)_accessibilitySupplementaryHeaderViews
{
  v10[1] = *MEMORY[0x29EDCA608];
  v3 = [(NikeUITableViewAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"TableWithFakeHeaderFooter"];

  if (v4)
  {
    v5 = [(NikeUITableViewAccessibility *)self _accessibilityValueForKey:@"_axHeader"];
    v10[0] = v5;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NikeUITableViewAccessibility;
    v6 = [(NikeUITableViewAccessibility *)&v9 _accessibilitySupplementaryHeaderViews];
  }

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v10[1] = *MEMORY[0x29EDCA608];
  v3 = [(NikeUITableViewAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"TableWithFakeHeaderFooter"];

  if (v4)
  {
    v5 = [(NikeUITableViewAccessibility *)self _accessibilityValueForKey:@"_axFooter"];
    v10[0] = v5;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NikeUITableViewAccessibility;
    v6 = [(NikeUITableViewAccessibility *)&v9 _accessibilitySupplementaryFooterViews];
  }

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

@end