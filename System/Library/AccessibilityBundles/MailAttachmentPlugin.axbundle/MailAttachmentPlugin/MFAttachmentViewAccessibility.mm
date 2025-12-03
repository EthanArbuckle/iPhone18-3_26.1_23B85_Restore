@interface MFAttachmentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MFAttachmentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFAttachmentView" hasInstanceVariable:@"_filenameLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"MFAttachmentView" hasInstanceVariable:@"_statusLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"MFAttachmentView" hasInstanceVariable:@"_totalSizeString" withType:"NSString"];
}

- (id)accessibilityLabel
{
  v2 = [(MFAttachmentViewAccessibility *)self safeValueForKey:@"_filenameLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v3 = [(MFAttachmentViewAccessibility *)self safeValueForKey:@"_statusLabel"];
  if ([v3 _accessibilityViewIsVisible])
  {
    v4 = [(MFAttachmentViewAccessibility *)self safeValueForKey:@"_totalSizeString"];
    accessibilityLabel = [v3 accessibilityLabel];
    v5 = __UIAXStringForVariables();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end