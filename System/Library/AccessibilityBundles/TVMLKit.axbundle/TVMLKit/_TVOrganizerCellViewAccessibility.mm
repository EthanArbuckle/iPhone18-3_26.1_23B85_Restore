@interface _TVOrganizerCellViewAccessibility
- (id)_accessibilitySubviews;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation _TVOrganizerCellViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = _TVOrganizerCellViewAccessibility;
  [(_TVOrganizerCellViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _TVOrganizerCellViewAccessibility;
  [(_TVOrganizerCellViewAccessibility *)&v3 layoutSubviews];
  [(_TVOrganizerCellViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)_accessibilitySubviews
{
  v3 = [(_TVOrganizerCellViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Tvmlshelfview.isa)];

  if (v3)
  {
    v4 = [(_TVOrganizerCellViewAccessibility *)self subviews];
    if ([v4 count] == 2)
    {
      v5 = [v4 firstObject];
      v6 = [v5 accessibilityLabel];

      v7 = [v6 uppercaseString];
      v8 = [v7 isEqualToString:v6];

      if (v8)
      {
        v9 = [v4 firstObject];
        [v9 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v18 = [v4 lastObject];
        [v18 frame];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        if (v13 < v22)
        {
          v27 = [v4 firstObject];
          [v27 setAccessibilityFrame:{v20, v22, v24, v26}];

          v28 = [v4 lastObject];
          [v28 setAccessibilityFrame:{v11, v13, v15, v17}];
        }
      }
    }
  }

  v31.receiver = self;
  v31.super_class = _TVOrganizerCellViewAccessibility;
  v29 = [(_TVOrganizerCellViewAccessibility *)&v31 _accessibilitySubviews];

  return v29;
}

@end