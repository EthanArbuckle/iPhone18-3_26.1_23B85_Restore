@interface TLKImageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation TLKImageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TLKImageView" hasInstanceMethod:@"tlkImage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TLKImage" hasInstanceMethod:@"uiImage" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(TLKImageViewAccessibility *)self safeValueForKeyPath:@"tlkImage.uiImage"];
  accessibilityLabel = [v3 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    accessibilityLabel2 = accessibilityLabel;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TLKImageViewAccessibility;
    accessibilityLabel2 = [(TLKImageViewAccessibility *)&v8 accessibilityLabel];
  }

  v6 = accessibilityLabel2;

  return v6;
}

@end