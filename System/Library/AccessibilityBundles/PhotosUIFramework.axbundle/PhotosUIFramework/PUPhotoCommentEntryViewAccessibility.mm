@interface PUPhotoCommentEntryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (PUPhotoCommentEntryViewAccessibility)initWithFrame:(CGRect)a3;
@end

@implementation PUPhotoCommentEntryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUPhotoCommentEntryView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUPhotoCommentEntryView" hasInstanceMethod:@"placeholderLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUPhotoCommentEntryView" hasInstanceMethod:@"postButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UILabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUPhotoCommentEntryView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (PUPhotoCommentEntryViewAccessibility)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = PUPhotoCommentEntryViewAccessibility;
  v3 = [(PUPhotoCommentEntryViewAccessibility *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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