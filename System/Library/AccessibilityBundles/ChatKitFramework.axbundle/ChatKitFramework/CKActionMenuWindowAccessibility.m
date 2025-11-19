@interface CKActionMenuWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation CKActionMenuWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKActionMenuWindow" hasInstanceMethod:@"actionMenuView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKActionMenuView"];
  [v3 validateClass:@"CKActionMenuView" hasInstanceMethod:@"defaultActionIndex" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CKActionMenuView" hasInstanceMethod:@"actionMenuItems" withFullSignature:{"@", 0}];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKActionMenuWindowAccessibility *)self isHidden];
  v10.receiver = self;
  v10.super_class = CKActionMenuWindowAccessibility;
  [(CKActionMenuWindowAccessibility *)&v10 setHidden:v3];
  if (v5 != v3)
  {
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v7 = [(CKActionMenuWindowAccessibility *)self safeUIViewForKey:@"actionMenuView"];
      v8 = [v7 safeUnsignedIntegerForKey:@"defaultActionIndex"];
      v9 = [v7 safeArrayForKey:@"actionMenuItems"];
      v6 = [v9 axSafeObjectAtIndex:v8];
    }

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v6);
  }
}

@end