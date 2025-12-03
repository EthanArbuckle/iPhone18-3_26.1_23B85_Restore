@interface CKTranscriptGroupHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CKTranscriptGroupHeaderViewAccessibility)initWithFrame:(CGRect)frame conversation:(id)conversation;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKTranscriptGroupHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKTranscriptGroupHeaderView" hasInstanceMethod:@"actionButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTranscriptGroupHeaderView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTranscriptGroupHeaderView" hasInstanceMethod:@"initWithFrame: conversation:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
}

- (CKTranscriptGroupHeaderViewAccessibility)initWithFrame:(CGRect)frame conversation:(id)conversation
{
  v6.receiver = self;
  v6.super_class = CKTranscriptGroupHeaderViewAccessibility;
  v4 = [(CKTranscriptGroupHeaderViewAccessibility *)&v6 initWithFrame:conversation conversation:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(CKTranscriptGroupHeaderViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = CKTranscriptGroupHeaderViewAccessibility;
  [(CKTranscriptGroupHeaderViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKTranscriptGroupHeaderViewAccessibility *)self safeValueForKey:@"actionButton"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(CKTranscriptGroupHeaderViewAccessibility *)self safeValueForKey:@"textView"];
  v5 = [v4 safeValueForKey:@"textView"];
  v6 = accessibilityLocalizedString(@"to.field");
  [v5 setAccessibilityLabel:v6];
}

@end