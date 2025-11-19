@interface MFAttachmentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MFAttachmentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFAttachmentView" hasInstanceVariable:@"_filenameLabel" withType:"UILabel"];
  [v3 validateClass:@"MFAttachmentView" hasInstanceVariable:@"_statusLabel" withType:"UILabel"];
  [v3 validateClass:@"MFAttachmentView" hasInstanceVariable:@"_totalSizeString" withType:"NSString"];
}

- (id)accessibilityLabel
{
  v2 = [(MFAttachmentViewAccessibility *)self safeValueForKey:@"_filenameLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(MFAttachmentViewAccessibility *)self safeValueForKey:@"_statusLabel"];
  if ([v3 _accessibilityViewIsVisible])
  {
    v4 = [(MFAttachmentViewAccessibility *)self safeValueForKey:@"_totalSizeString"];
    v7 = [v3 accessibilityLabel];
    v5 = __UIAXStringForVariables();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end