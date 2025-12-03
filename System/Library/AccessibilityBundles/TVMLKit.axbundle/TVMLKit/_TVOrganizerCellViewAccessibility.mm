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
    subviews = [(_TVOrganizerCellViewAccessibility *)self subviews];
    if ([subviews count] == 2)
    {
      firstObject = [subviews firstObject];
      accessibilityLabel = [firstObject accessibilityLabel];

      uppercaseString = [accessibilityLabel uppercaseString];
      v8 = [uppercaseString isEqualToString:accessibilityLabel];

      if (v8)
      {
        firstObject2 = [subviews firstObject];
        [firstObject2 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        lastObject = [subviews lastObject];
        [lastObject frame];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        if (v13 < v22)
        {
          firstObject3 = [subviews firstObject];
          [firstObject3 setAccessibilityFrame:{v20, v22, v24, v26}];

          lastObject2 = [subviews lastObject];
          [lastObject2 setAccessibilityFrame:{v11, v13, v15, v17}];
        }
      }
    }
  }

  v31.receiver = self;
  v31.super_class = _TVOrganizerCellViewAccessibility;
  _accessibilitySubviews = [(_TVOrganizerCellViewAccessibility *)&v31 _accessibilitySubviews];

  return _accessibilitySubviews;
}

@end