@interface CKNavigationBarCanvasViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setTitleView:(id)view;
@end

@implementation CKNavigationBarCanvasViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKNavigationBarCanvasView" hasInstanceMethod:@"buttonViewFaceTimeAudio" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKNavigationBarCanvasView" hasInstanceMethod:@"setTitleView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKNavigationBarCanvasView" hasInstanceMethod:@"isBusinessChat" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKNavigationBarCanvasView" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CKNavigationBarCanvasViewAccessibility;
  [(CKNavigationBarCanvasViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKNavigationBarCanvasViewAccessibility *)self safeValueForKey:@"titleView"];
  [(CKNavigationBarCanvasViewAccessibility *)self setTitleView:v3];
}

- (void)setTitleView:(id)view
{
  viewCopy = view;
  v6.receiver = self;
  v6.super_class = CKNavigationBarCanvasViewAccessibility;
  [(CKNavigationBarCanvasViewAccessibility *)&v6 setTitleView:viewCopy];
  NSClassFromString(&cfstr_Cklabel.isa);
  if (objc_opt_isKindOfClass())
  {
    [viewCopy setAccessibilityRespondsToUserInteraction:1];
    if ([(CKNavigationBarCanvasViewAccessibility *)self safeBoolForKey:@"isBusinessChat"])
    {
      v5 = accessibilityLocalizedString(@"conversation.verified");
      [viewCopy setAccessibilityValue:v5];
    }

    else
    {
      [viewCopy setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    }
  }
}

@end