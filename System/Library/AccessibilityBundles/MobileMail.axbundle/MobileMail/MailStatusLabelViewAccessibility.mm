@interface MailStatusLabelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MailStatusLabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MailStatusLabelView" hasInstanceMethod:@"primaryLabelText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MailStatusLabelView" hasInstanceMethod:@"secondaryLabelText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MailStatusLabelViewAccessibility *)self safeValueForKey:@"primaryLabelText"];
  v6 = [(MailStatusLabelViewAccessibility *)self safeValueForKey:@"secondaryLabelText"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end