@interface _MKRightImageButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation _MKRightImageButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_MKRightImageButton" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_MKRightImageButton" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(_MKRightImageButtonAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [v3 accessibilityLabel];

  if (![v4 length])
  {
    v5 = [(_MKRightImageButtonAccessibility *)self safeValueForKey:@"imageView"];
    v6 = [v5 accessibilityLabel];

    v4 = v6;
  }

  return v4;
}

@end