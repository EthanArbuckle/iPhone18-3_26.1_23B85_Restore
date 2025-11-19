@interface SBUIAppleLogoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation SBUIAppleLogoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBUIAppleLogoView" hasInstanceVariable:@"_progressWindow" withType:"PUIProgressWindow"];
  [v3 validateClass:@"SBUIAppleLogoView" hasInstanceVariable:@"_progress" withType:"f"];
  [v3 validateClass:@"PUIProgressWindow" hasInstanceVariable:@"_showsProgressBar" withType:"B"];
}

- (id)accessibilityLabel
{
  v3 = accessibilitySBLocalizedString(@"apple.logo");
  v4 = [(SBUIAppleLogoViewAccessibility *)self safeUIViewForKey:@"_progressWindow"];
  v5 = [v4 safeBoolForKey:@"_showsProgressBar"];

  if (v5)
  {
    v8 = accessibilitySBLocalizedString(@"progress.bar.label");
    v6 = __UIAXStringForVariables();

    v3 = v6;
  }

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(SBUIAppleLogoViewAccessibility *)self safeUIViewForKey:@"_progressWindow"];
  v4 = [v3 safeBoolForKey:@"_showsProgressBar"];

  if (v4)
  {
    [(SBUIAppleLogoViewAccessibility *)self safeFloatForKey:@"_progress"];
    v5 = AXFormatFloatWithPercentage();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end