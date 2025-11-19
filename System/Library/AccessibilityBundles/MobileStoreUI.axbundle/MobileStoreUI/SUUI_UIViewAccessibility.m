@interface SUUI_UIViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityComputedLabelForNavigationBarWithAssociatedBarButtonItem:(id)a3;
@end

@implementation SUUI_UIViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIView" hasInstanceMethod:@"_accessibilityComputedLabelForNavigationBarWithAssociatedBarButtonItem:" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUINavigationBarButtonsController" hasInstanceVariable:@"_buttonItemElements" withType:"NSMapTable"];
  [v3 validateClass:@"SUUIButtonViewElement"];
}

- (id)_accessibilityComputedLabelForNavigationBarWithAssociatedBarButtonItem:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SUUI_UIViewAccessibility;
  v5 = [(SUUI_UIViewAccessibility *)&v14 _accessibilityComputedLabelForNavigationBarWithAssociatedBarButtonItem:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v4 target];
    NSClassFromString(&cfstr_Suuinavigation.isa);
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v9 = [v8 safeValueForKey:@"_buttonItemElements"];
      v10 = __UIAccessibilityCastAsClass();

      v11 = [v10 objectForKey:v4];
      v12 = __UIAccessibilitySafeClass();

      v7 = [v12 accessibilityLabel];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end