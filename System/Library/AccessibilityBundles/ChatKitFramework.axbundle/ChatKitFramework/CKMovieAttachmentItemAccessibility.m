@interface CKMovieAttachmentItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CKMovieAttachmentItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKMovieAttachmentItem" isKindOfClass:@"CKAttachmentItem"];
  [v3 validateClass:@"CKAttachmentItem" hasInstanceMethod:@"fileURL" withFullSignature:{"@", 0}];
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