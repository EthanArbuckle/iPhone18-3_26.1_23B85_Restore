@interface MKVibrantLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MKVibrantLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MKVibrantLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKVibrantLabel" hasInstanceMethod:@"attributedText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(MKVibrantLabelAccessibility *)self safeValueForKey:@"attributedText"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4 && [v4 length])
  {
    v5 = [v4 string];
  }

  else
  {
    v5 = [(MKVibrantLabelAccessibility *)self safeStringForKey:@"text"];
  }

  v6 = v5;

  return v6;
}

@end