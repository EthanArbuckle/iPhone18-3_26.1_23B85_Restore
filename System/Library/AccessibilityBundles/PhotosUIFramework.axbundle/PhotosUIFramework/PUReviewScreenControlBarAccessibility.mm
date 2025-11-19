@interface PUReviewScreenControlBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (PUReviewScreenControlBarAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PUReviewScreenControlBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUReviewScreenControlBar" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"PUReviewScreenControlBar" hasInstanceMethod:@"sendButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUReviewScreenControlBar" hasInstanceMethod:@"markupButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUReviewScreenControlBar" hasInstanceMethod:@"editButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PUReviewScreenControlBarAccessibility;
  [(PUReviewScreenControlBarAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(PUReviewScreenControlBarAccessibility *)self safeValueForKey:@"sendButton"];
  v4 = accessibilityPULocalizedString(@"send.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(PUReviewScreenControlBarAccessibility *)self safeValueForKey:@"markupButton"];
  v6 = accessibilityPULocalizedString(@"markup.button");
  [v5 setAccessibilityLabel:v6];

  v7 = [(PUReviewScreenControlBarAccessibility *)self safeValueForKey:@"editButton"];
  v8 = accessibilityPULocalizedString(@"edit.button");
  [v7 setAccessibilityLabel:v8];
}

- (PUReviewScreenControlBarAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = PUReviewScreenControlBarAccessibility;
  v3 = [(PUReviewScreenControlBarAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PUReviewScreenControlBarAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

@end