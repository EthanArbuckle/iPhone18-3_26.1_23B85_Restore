@interface CKAvatarNavigationBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
@end

@implementation CKAvatarNavigationBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKAvatarNavigationBar" isKindOfClass:@"UINavigationBar"];
  [v3 validateClass:@"CKNavigationBarCanvasView"];
  [v3 validateClass:@"CKNavigationBarCanvasView" hasInstanceMethod:@"leftItemView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKCanvasBackButtonView"];
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
    v6 = [(CKAvatarNavigationBarAccessibility *)&v8 accessibilityPerformEscape];
    goto LABEL_6;
  }

  v9 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  [v5 sendActionsForControlEvents:64];

  v6 = 1;
LABEL_6:

  return v6;
}

@end