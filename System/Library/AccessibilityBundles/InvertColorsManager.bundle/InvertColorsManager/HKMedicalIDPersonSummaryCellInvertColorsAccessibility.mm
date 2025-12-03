@interface HKMedicalIDPersonSummaryCellInvertColorsAccessibility
- (HKMedicalIDPersonSummaryCellInvertColorsAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadInvertColors;
@end

@implementation HKMedicalIDPersonSummaryCellInvertColorsAccessibility

- (HKMedicalIDPersonSummaryCellInvertColorsAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = HKMedicalIDPersonSummaryCellInvertColorsAccessibility;
  v3 = [(HKMedicalIDPersonSummaryCellInvertColorsAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(HKMedicalIDPersonSummaryCellInvertColorsAccessibility *)v3 _accessibilityLoadInvertColors];

  return v3;
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(HKMedicalIDPersonSummaryCellInvertColorsAccessibility *)self safeUIViewForKey:@"_pictureView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end