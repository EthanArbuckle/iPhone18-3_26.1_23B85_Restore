@interface TLKImageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation TLKImageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TLKImageView" hasInstanceMethod:@"tlkImage" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TLKImage" hasInstanceMethod:@"uiImage" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(TLKImageViewAccessibility *)self safeValueForKeyPath:@"tlkImage.uiImage"];
  v4 = [v3 accessibilityLabel];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TLKImageViewAccessibility;
    v5 = [(TLKImageViewAccessibility *)&v8 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

@end