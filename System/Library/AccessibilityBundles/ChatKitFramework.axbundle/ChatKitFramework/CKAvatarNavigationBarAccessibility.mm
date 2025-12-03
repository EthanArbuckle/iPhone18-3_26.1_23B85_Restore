@interface CKAvatarNavigationBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
@end

@implementation CKAvatarNavigationBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKAvatarNavigationBar" isKindOfClass:@"UINavigationBar"];
  [validationsCopy validateClass:@"CKNavigationBarCanvasView"];
  [validationsCopy validateClass:@"CKNavigationBarCanvasView" hasInstanceMethod:@"leftItemView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKCanvasBackButtonView"];
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(CKAvatarNavigationBarAccessibility *)self safeValueForKeyPath:@"topItem._canvasView"];
  NSClassFromString(&cfstr_Cknavigationba_0.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = [v3 safeValueForKey:@"leftItemView"];
  NSClassFromString(&cfstr_Ckcanvasbackbu_0.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_5:
    v8.receiver = self;
    v8.super_class = CKAvatarNavigationBarAccessibility;
    accessibilityPerformEscape = [(CKAvatarNavigationBarAccessibility *)&v8 accessibilityPerformEscape];
    goto LABEL_6;
  }

  v9 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  [v5 sendActionsForControlEvents:64];

  accessibilityPerformEscape = 1;
LABEL_6:

  return accessibilityPerformEscape;
}

@end