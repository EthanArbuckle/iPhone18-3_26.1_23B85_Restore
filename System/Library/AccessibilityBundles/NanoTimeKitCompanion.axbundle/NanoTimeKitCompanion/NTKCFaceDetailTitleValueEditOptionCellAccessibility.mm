@interface NTKCFaceDetailTitleValueEditOptionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation NTKCFaceDetailTitleValueEditOptionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKCFaceDetailTitleValueEditOptionCell" hasProperty:@"titleText" withType:"@"];
  [validationsCopy validateClass:@"NTKCFaceDetailTitleValueEditOptionCell" hasProperty:@"valueText" withType:"@"];
  [validationsCopy validateClass:@"NTKCFaceDetailTitleValueEditOptionCell" hasProperty:@"active" withType:"B"];
}

- (id)accessibilityValue
{
  if ([(NTKCFaceDetailTitleValueEditOptionCellAccessibility *)self safeBoolForKey:@"active"])
  {
    accessibilityValue = [(NTKCFaceDetailTitleValueEditOptionCellAccessibility *)self safeStringForKey:@"valueText"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NTKCFaceDetailTitleValueEditOptionCellAccessibility;
    accessibilityValue = [(NTKCFaceDetailTitleValueEditOptionCellAccessibility *)&v5 accessibilityValue];
  }

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = NTKCFaceDetailTitleValueEditOptionCellAccessibility;
  accessibilityTraits = [(NTKCFaceDetailTitleValueEditOptionCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(NTKCFaceDetailTitleValueEditOptionCellAccessibility *)self safeBoolForKey:@"active"];
  v5 = UIAccessibilityTraitSelected;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

@end