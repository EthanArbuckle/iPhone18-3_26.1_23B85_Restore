@interface SFDownloadsBarButtonItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation SFDownloadsBarButtonItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFDownloadsBarButtonItemView" hasInstanceVariable:@"_progress" withType:"d"];
  [validationsCopy validateClass:@"SFDownloadsBarButtonItemView" hasInstanceVariable:@"_progressView" withType:"UIProgressView"];
}

- (id)accessibilityValue
{
  v3 = [(SFDownloadsBarButtonItemViewAccessibility *)self safeUIViewForKey:@"_progressView"];
  isHidden = [v3 isHidden];

  if (isHidden)
  {
    v5 = 0;
  }

  else
  {
    [(SFDownloadsBarButtonItemViewAccessibility *)self safeDoubleForKey:@"_progress"];
    v5 = AXFormatFloatWithPercentage();
  }

  return v5;
}

@end