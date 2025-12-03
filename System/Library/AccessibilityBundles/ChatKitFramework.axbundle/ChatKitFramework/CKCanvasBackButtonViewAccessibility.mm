@interface CKCanvasBackButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CKCanvasBackButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKCanvasBackButtonView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKCanvasBackButtonView" hasInstanceMethod:@"backButtonView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CKCanvasBackButtonViewAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityLocalizedString(@"message.view.back.button.unread");
    v6 = [v4 stringWithFormat:v5, accessibilityLabel];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end