@interface CKImageAttachmentItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CKImageAttachmentItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKAttachmentItem"];
  [v3 validateClass:@"CKAttachmentItem" hasInstanceMethod:@"isIrisAsset" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKImageAttachmentItem" isKindOfClass:@"CKAttachmentItem"];
  [v3 validateClass:@"CKImageAttachmentItem" hasInstanceMethod:@"imageData" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKImageData" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMovieAttachmentItem" isKindOfClass:@"CKAttachmentItem"];
  [v3 validateClass:@"CKAttachmentItem" hasInstanceMethod:@"fileURL" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKImageAttachmentItemAccessibility *)self safeValueForKey:@"isIrisAsset"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = accessibilityLocalizedString(@"live.photo");
    v6 = AXAttributedStringForBetterPronuciation();
  }

  else
  {
    v6 = accessibilityLocalizedString(@"photo.attachment");
  }

  v7 = [(CKImageAttachmentItemAccessibility *)self safeValueForKey:@"fileURL"];
  v8 = __UIAccessibilitySafeClass();

  v9 = UIAccessibilityMetadataDescriptionForImage();
  v12 = UIAccessibilityPhotoCreationDate();
  v10 = __UIAXStringForVariables();

  return v10;
}

@end