@interface SFDownloadsBarButtonItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation SFDownloadsBarButtonItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFDownloadsBarButtonItemView" hasInstanceVariable:@"_progress" withType:"d"];
  [v3 validateClass:@"SFDownloadsBarButtonItemView" hasInstanceVariable:@"_progressView" withType:"UIProgressView"];
}

- (id)accessibilityValue
{
  v3 = [(SFDownloadsBarButtonItemViewAccessibility *)self safeUIViewForKey:@"_progressView"];
  v4 = [v3 isHidden];

  if (v4)
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