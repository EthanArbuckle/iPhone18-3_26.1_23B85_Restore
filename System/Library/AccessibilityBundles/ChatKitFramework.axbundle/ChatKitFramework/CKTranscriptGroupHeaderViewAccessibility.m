@interface CKTranscriptGroupHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CKTranscriptGroupHeaderViewAccessibility)initWithFrame:(CGRect)a3 conversation:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKTranscriptGroupHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKTranscriptGroupHeaderView" hasInstanceMethod:@"actionButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKTranscriptGroupHeaderView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKTranscriptGroupHeaderView" hasInstanceMethod:@"initWithFrame: conversation:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  [v3 validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
}

- (CKTranscriptGroupHeaderViewAccessibility)initWithFrame:(CGRect)a3 conversation:(id)a4
{
  v6.receiver = self;
  v6.super_class = CKTranscriptGroupHeaderViewAccessibility;
  v4 = [(CKTranscriptGroupHeaderViewAccessibility *)&v6 initWithFrame:a4 conversation:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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