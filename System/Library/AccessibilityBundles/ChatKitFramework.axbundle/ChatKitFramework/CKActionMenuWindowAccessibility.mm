@interface CKActionMenuWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setHidden:(BOOL)hidden;
@end

@implementation CKActionMenuWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKActionMenuWindow" hasInstanceMethod:@"actionMenuView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKActionMenuView"];
  [validationsCopy validateClass:@"CKActionMenuView" hasInstanceMethod:@"defaultActionIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CKActionMenuView" hasInstanceMethod:@"actionMenuItems" withFullSignature:{"@", 0}];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  isHidden = [(CKActionMenuWindowAccessibility *)self isHidden];
  v10.receiver = self;
  v10.super_class = CKActionMenuWindowAccessibility;
  [(CKActionMenuWindowAccessibility *)&v10 setHidden:hiddenCopy];
  if (isHidden != hiddenCopy)
  {
    if (hiddenCopy)
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