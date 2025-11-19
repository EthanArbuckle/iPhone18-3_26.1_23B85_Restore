@interface MailStatusProgressBarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MailStatusProgressBarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MailStatusLabelView" hasInstanceMethod:@"primaryLabelText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MailStatusProgressBarView" isKindOfClass:@"MailStatusLabelView"];
  [v3 validateClass:@"MailStatusProgressBarView" hasInstanceMethod:@"toolbarView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFProgressToolbar" hasInstanceMethod:@"progressView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIProgressView" hasInstanceMethod:@"progress" withFullSignature:{"f", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MailStatusProgressBarViewAccessibility *)self safeValueForKey:@"toolbarView"];
  v4 = [v3 safeValueForKey:@"progressView"];
  [v4 safeFloatForKey:@"progress"];

  v5 = [(MailStatusProgressBarViewAccessibility *)self safeValueForKey:@"primaryLabelText"];
  v6 = AXFormatFloatWithPercentage();
  if (v5)
  {
    v9 = AXFormatFloatWithPercentage();
    v7 = __UIAXStringForVariables();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end