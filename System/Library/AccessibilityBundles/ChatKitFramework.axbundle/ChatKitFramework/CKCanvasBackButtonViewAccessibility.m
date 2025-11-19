@interface CKCanvasBackButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CKCanvasBackButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKCanvasBackButtonView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKCanvasBackButtonView" hasInstanceMethod:@"backButtonView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CKCanvasBackButtonViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v3 = [v2 accessibilityLabel];

  if ([v3 length])
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityLocalizedString(@"message.view.back.button.unread");
    v6 = [v4 stringWithFormat:v5, v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end