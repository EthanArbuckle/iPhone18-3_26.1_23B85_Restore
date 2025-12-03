@interface CKImageAttachmentItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CKImageAttachmentItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKAttachmentItem"];
  [validationsCopy validateClass:@"CKAttachmentItem" hasInstanceMethod:@"isIrisAsset" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKImageAttachmentItem" isKindOfClass:@"CKAttachmentItem"];
  [validationsCopy validateClass:@"CKImageAttachmentItem" hasInstanceMethod:@"imageData" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKImageData" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMovieAttachmentItem" isKindOfClass:@"CKAttachmentItem"];
  [validationsCopy validateClass:@"CKAttachmentItem" hasInstanceMethod:@"fileURL" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKImageAttachmentItemAccessibility *)self safeValueForKey:@"isIrisAsset"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
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