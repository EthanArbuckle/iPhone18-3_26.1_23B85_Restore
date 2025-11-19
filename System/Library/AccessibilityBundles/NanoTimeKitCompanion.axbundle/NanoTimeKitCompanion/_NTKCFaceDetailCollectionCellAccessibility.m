@interface _NTKCFaceDetailCollectionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation _NTKCFaceDetailCollectionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_NTKCFaceDetailCollectionCell" hasInstanceMethod:@"active" withFullSignature:{"B", 0}];
  [v3 validateClass:@"_NTKCFaceDetailCollectionCell" hasInstanceMethod:@"disabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"_NTKCFaceDetailCollectionCell" hasInstanceVariable:@"_label" withType:"_NTKCFaceDetailCollectionCellLabel"];
  [v3 validateClass:@"_NTKCFaceDetailCollectionCellLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKEditOption"];
  [v3 validateClass:@"NTKEditOption" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(_NTKCFaceDetailCollectionCellAccessibility *)self isAccessibilityUserDefinedElement];

  if (!v3)
  {
    return 1;
  }

  v4 = [(_NTKCFaceDetailCollectionCellAccessibility *)self isAccessibilityUserDefinedElement];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(_NTKCFaceDetailCollectionCellAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    v4 = [(_NTKCFaceDetailCollectionCellAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v5 = [(_NTKCFaceDetailCollectionCellAccessibility *)self _accessibilityValueForKey:@"AXNTKEditOption"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 _accessibilityEditOptionDescription];
      v8 = [v7 length];

      if (v8)
      {
        [v6 _accessibilityEditOptionDescription];
      }

      else
      {
        [v6 safeValueForKey:@"localizedName"];
      }
      v4 = ;
    }

    else
    {
      v9 = [(_NTKCFaceDetailCollectionCellAccessibility *)self safeValueForKey:@"_label"];
      v10 = [v9 safeStringForKey:@"text"];

      if ([v10 length])
      {
        v11 = v10;
      }

      else
      {
        v13.receiver = self;
        v13.super_class = _NTKCFaceDetailCollectionCellAccessibility;
        v11 = [(_NTKCFaceDetailCollectionCellAccessibility *)&v13 accessibilityLabel];
      }

      v4 = v11;
    }
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = _NTKCFaceDetailCollectionCellAccessibility;
  v3 = [(_NTKCFaceDetailCollectionCellAccessibility *)&v6 accessibilityTraits];
  if ([(_NTKCFaceDetailCollectionCellAccessibility *)self safeBoolForKey:@"disabled"])
  {
    v4 = &UIAccessibilityTraitNotEnabled;
LABEL_5:
    v3 |= *v4;
    return v3;
  }

  if ([(_NTKCFaceDetailCollectionCellAccessibility *)self safeBoolForKey:@"active"])
  {
    v4 = &UIAccessibilityTraitSelected;
    goto LABEL_5;
  }

  return v3;
}

@end