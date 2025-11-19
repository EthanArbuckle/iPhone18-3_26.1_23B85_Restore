@interface CKMediaObjectBackedAssetAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CKMediaObjectBackedAssetAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKMediaObjectBackedAsset" hasInstanceMethod:@"acknowledgmentChatItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMediaObjectBackedAsset" hasInstanceMethod:@"mediaType" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKMediaObjectBackedAssetAccessibility *)self accessibilityUserDefinedLabel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    goto LABEL_10;
  }

  v6 = [(CKMediaObjectBackedAssetAccessibility *)self _accessibilityMediaType];
  if (v6 == 1)
  {
    v7 = @"photo.attachment";
  }

  else
  {
    if (v6 != 2)
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