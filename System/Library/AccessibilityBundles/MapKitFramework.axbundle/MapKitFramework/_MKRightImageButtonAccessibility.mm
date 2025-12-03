@interface _MKRightImageButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation _MKRightImageButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_MKRightImageButton" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_MKRightImageButton" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(_MKRightImageButtonAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  if (![accessibilityLabel length])
  {
    v5 = [(_MKRightImageButtonAccessibility *)self safeValueForKey:@"imageView"];
    accessibilityLabel2 = [v5 accessibilityLabel];

    accessibilityLabel = accessibilityLabel2;
  }

  return accessibilityLabel;
}

@end