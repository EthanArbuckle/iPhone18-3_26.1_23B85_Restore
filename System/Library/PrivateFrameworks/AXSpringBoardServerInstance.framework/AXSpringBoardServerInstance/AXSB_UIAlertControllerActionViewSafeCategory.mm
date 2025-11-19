@interface AXSB_UIAlertControllerActionViewSafeCategory
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)layoutSubviews;
@end

@implementation AXSB_UIAlertControllerActionViewSafeCategory

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_UIAlertControllerActionView" hasInstanceMethod:@"action" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIAlertAction" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = AXSB_UIAlertControllerActionViewSafeCategory;
  [(AXSB_UIAlertControllerActionViewSafeCategory *)&v10 layoutSubviews];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"action"];
  v5 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v6 = [v5 safeValueForKey:@"title"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v5 _isChecked];
  v9 = *MEMORY[0x277D76598];
  if (!v8)
  {
    v9 = 0;
  }

  [(AXSB_UIAlertControllerActionViewSafeCategory *)self setAccessibilityTraits:*MEMORY[0x277D76548] | v9];
  [(AXSB_UIAlertControllerActionViewSafeCategory *)self setAccessibilityLabel:v7];
}

@end