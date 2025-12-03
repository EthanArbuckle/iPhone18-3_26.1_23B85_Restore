@interface _NTKCFaceDetailCollectionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation _NTKCFaceDetailCollectionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_NTKCFaceDetailCollectionCell" hasInstanceMethod:@"active" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"_NTKCFaceDetailCollectionCell" hasInstanceMethod:@"disabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"_NTKCFaceDetailCollectionCell" hasInstanceVariable:@"_label" withType:"_NTKCFaceDetailCollectionCellLabel"];
  [validationsCopy validateClass:@"_NTKCFaceDetailCollectionCellLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NTKEditOption"];
  [validationsCopy validateClass:@"NTKEditOption" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(_NTKCFaceDetailCollectionCellAccessibility *)self isAccessibilityUserDefinedElement];

  if (!isAccessibilityUserDefinedElement)
  {
    return 1;
  }

  isAccessibilityUserDefinedElement2 = [(_NTKCFaceDetailCollectionCellAccessibility *)self isAccessibilityUserDefinedElement];
  bOOLValue = [isAccessibilityUserDefinedElement2 BOOLValue];

  return bOOLValue;
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(_NTKCFaceDetailCollectionCellAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(_NTKCFaceDetailCollectionCellAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v5 = [(_NTKCFaceDetailCollectionCellAccessibility *)self _accessibilityValueForKey:@"AXNTKEditOption"];
    v6 = v5;
    if (v5)
    {
      _accessibilityEditOptionDescription = [v5 _accessibilityEditOptionDescription];
      v8 = [_accessibilityEditOptionDescription length];

      if (v8)
      {
        [v6 _accessibilityEditOptionDescription];
      }

      else
      {
        [v6 safeValueForKey:@"localizedName"];
      }
      accessibilityUserDefinedLabel2 = ;
    }

    else
    {
      v9 = [(_NTKCFaceDetailCollectionCellAccessibility *)self safeValueForKey:@"_label"];
      v10 = [v9 safeStringForKey:@"text"];

      if ([v10 length])
      {
        accessibilityLabel = v10;
      }

      else
      {
        v13.receiver = self;
        v13.super_class = _NTKCFaceDetailCollectionCellAccessibility;
        accessibilityLabel = [(_NTKCFaceDetailCollectionCellAccessibility *)&v13 accessibilityLabel];
      }

      accessibilityUserDefinedLabel2 = accessibilityLabel;
    }
  }

  return accessibilityUserDefinedLabel2;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = _NTKCFaceDetailCollectionCellAccessibility;
  accessibilityTraits = [(_NTKCFaceDetailCollectionCellAccessibility *)&v6 accessibilityTraits];
  if ([(_NTKCFaceDetailCollectionCellAccessibility *)self safeBoolForKey:@"disabled"])
  {
    v4 = &UIAccessibilityTraitNotEnabled;
LABEL_5:
    accessibilityTraits |= *v4;
    return accessibilityTraits;
  }

  if ([(_NTKCFaceDetailCollectionCellAccessibility *)self safeBoolForKey:@"active"])
  {
    v4 = &UIAccessibilityTraitSelected;
    goto LABEL_5;
  }

  return accessibilityTraits;
}

@end