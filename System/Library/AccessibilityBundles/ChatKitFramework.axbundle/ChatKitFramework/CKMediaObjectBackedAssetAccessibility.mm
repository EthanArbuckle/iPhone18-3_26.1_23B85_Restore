@interface CKMediaObjectBackedAssetAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CKMediaObjectBackedAssetAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKMediaObjectBackedAsset" hasInstanceMethod:@"acknowledgmentChatItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMediaObjectBackedAsset" hasInstanceMethod:@"mediaType" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(CKMediaObjectBackedAssetAccessibility *)self accessibilityUserDefinedLabel];
  v4 = accessibilityUserDefinedLabel;
  if (accessibilityUserDefinedLabel)
  {
    v5 = accessibilityUserDefinedLabel;
    goto LABEL_10;
  }

  _accessibilityMediaType = [(CKMediaObjectBackedAssetAccessibility *)self _accessibilityMediaType];
  if (_accessibilityMediaType == 1)
  {
    v7 = @"photo.attachment";
  }

  else
  {
    if (_accessibilityMediaType != 2)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = @"video.attachment";
  }

  v8 = accessibilityLocalizedString(v7);
LABEL_9:
  v10 = [(CKMediaObjectBackedAssetAccessibility *)self safeValueForKey:@"acknowledgmentChatItem"];
  v5 = __UIAXStringForVariables();

LABEL_10:

  return v5;
}

@end