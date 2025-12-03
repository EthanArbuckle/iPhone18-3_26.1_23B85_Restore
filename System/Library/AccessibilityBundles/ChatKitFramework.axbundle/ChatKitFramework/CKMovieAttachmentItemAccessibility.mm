@interface CKMovieAttachmentItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CKMovieAttachmentItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKMovieAttachmentItem" isKindOfClass:@"CKAttachmentItem"];
  [validationsCopy validateClass:@"CKAttachmentItem" hasInstanceMethod:@"fileURL" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = accessibilityLocalizedString(@"video.attachment");
  v4 = [(CKMovieAttachmentItemAccessibility *)self safeValueForKey:@"fileURL"];
  v5 = __UIAccessibilitySafeClass();

  v8 = UIAccessibilityMetadataDescriptionForVideo();
  v6 = __UIAXStringForVariables();

  return v6;
}

@end