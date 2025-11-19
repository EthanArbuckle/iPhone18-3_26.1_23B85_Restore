@interface HKMedicalIDPersonSummaryCellInvertColorsAccessibility
- (HKMedicalIDPersonSummaryCellInvertColorsAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadInvertColors;
@end

@implementation HKMedicalIDPersonSummaryCellInvertColorsAccessibility

- (HKMedicalIDPersonSummaryCellInvertColorsAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = HKMedicalIDPersonSummaryCellInvertColorsAccessibility;
  v3 = [(HKMedicalIDPersonSummaryCellInvertColorsAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(HKMedicalIDPersonSummaryCellInvertColorsAccessibility *)v3 _accessibilityLoadInvertColors];

  return v3;
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(HKMedicalIDPersonSummaryCellInvertColorsAccessibility *)self safeUIViewForKey:@"_pictureView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end