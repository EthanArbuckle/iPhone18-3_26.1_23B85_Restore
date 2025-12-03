@interface MailStatusLabelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MailStatusLabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MailStatusLabelView" hasInstanceMethod:@"primaryLabelText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailStatusLabelView" hasInstanceMethod:@"secondaryLabelText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MailStatusLabelViewAccessibility *)self safeValueForKey:@"primaryLabelText"];
  v6 = [(MailStatusLabelViewAccessibility *)self safeValueForKey:@"secondaryLabelText"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end