@interface PUPhotoCommentEntryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (PUPhotoCommentEntryViewAccessibility)initWithFrame:(CGRect)frame;
@end

@implementation PUPhotoCommentEntryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUPhotoCommentEntryView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUPhotoCommentEntryView" hasInstanceMethod:@"placeholderLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUPhotoCommentEntryView" hasInstanceMethod:@"postButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUPhotoCommentEntryView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (PUPhotoCommentEntryViewAccessibility)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = PUPhotoCommentEntryViewAccessibility;
  v3 = [(PUPhotoCommentEntryViewAccessibility *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_opt_class();
  v4 = [(PUPhotoCommentEntryViewAccessibility *)v3 safeValueForKey:@"placeholderLabel"];
  v5 = [v4 safeValueForKey:@"text"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [(PUPhotoCommentEntryViewAccessibility *)v3 safeValueForKey:@"textView"];
  [v7 setAccessibilityIdentifier:@"AddCommentTextView"];

  v8 = [(PUPhotoCommentEntryViewAccessibility *)v3 safeValueForKey:@"textView"];
  [v8 setAccessibilityLabel:v6];

  v9 = [(PUPhotoCommentEntryViewAccessibility *)v3 safeValueForKey:@"placeholderLabel"];
  [v9 setIsAccessibilityElement:0];

  return v3;
}

@end