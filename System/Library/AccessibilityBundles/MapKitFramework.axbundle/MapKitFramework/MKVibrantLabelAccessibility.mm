@interface MKVibrantLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MKVibrantLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKVibrantLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKVibrantLabel" hasInstanceMethod:@"attributedText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(MKVibrantLabelAccessibility *)self safeValueForKey:@"attributedText"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4 && [v4 length])
  {
    string = [v4 string];
  }

  else
  {
    string = [(MKVibrantLabelAccessibility *)self safeStringForKey:@"text"];
  }

  v6 = string;

  return v6;
}

@end