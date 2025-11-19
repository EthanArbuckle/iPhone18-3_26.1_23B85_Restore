@interface NTKCFaceDetailTitleValueEditOptionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation NTKCFaceDetailTitleValueEditOptionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKCFaceDetailTitleValueEditOptionCell" hasProperty:@"titleText" withType:"@"];
  [v3 validateClass:@"NTKCFaceDetailTitleValueEditOptionCell" hasProperty:@"valueText" withType:"@"];
  [v3 validateClass:@"NTKCFaceDetailTitleValueEditOptionCell" hasProperty:@"active" withType:"B"];
}

- (id)accessibilityValue
{
  if ([(NTKCFaceDetailTitleValueEditOptionCellAccessibility *)self safeBoolForKey:@"active"])
  {
    v3 = [(NTKCFaceDetailTitleValueEditOptionCellAccessibility *)self safeStringForKey:@"valueText"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NTKCFaceDetailTitleValueEditOptionCellAccessibility;
    v3 = [(NTKCFaceDetailTitleValueEditOptionCellAccessibility *)&v5 accessibilityValue];
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = NTKCFaceDetailTitleValueEditOptionCellAccessibility;
  v3 = [(NTKCFaceDetailTitleValueEditOptionCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(NTKCFaceDetailTitleValueEditOptionCellAccessibility *)self safeBoolForKey:@"active"];
  v5 = UIAccessibilityTraitSelected;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

@end