@interface CKNavigationBarCanvasViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setTitleView:(id)a3;
@end

@implementation CKNavigationBarCanvasViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKNavigationBarCanvasView" hasInstanceMethod:@"buttonViewFaceTimeAudio" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKNavigationBarCanvasView" hasInstanceMethod:@"setTitleView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CKNavigationBarCanvasView" hasInstanceMethod:@"isBusinessChat" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKNavigationBarCanvasView" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CKNavigationBarCanvasViewAccessibility;
  [(CKNavigationBarCanvasViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKNavigationBarCanvasViewAccessibility *)self safeValueForKey:@"titleView"];
  [(CKNavigationBarCanvasViewAccessibility *)self setTitleView:v3];
}

- (void)setTitleView:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = CKNavigationBarCanvasViewAccessibility;
  [(CKNavigationBarCanvasViewAccessibility *)&v6 setTitleView:v4];
  NSClassFromString(&cfstr_Cklabel.isa);
  if (objc_opt_isKindOfClass())
  {
    [v4 setAccessibilityRespondsToUserInteraction:1];
    if ([(CKNavigationBarCanvasViewAccessibility *)self safeBoolForKey:@"isBusinessChat"])
    {
      v5 = accessibilityLocalizedString(@"conversation.verified");
      [v4 setAccessibilityValue:v5];
    }

    else
    {
      [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    }
  }
}

@end