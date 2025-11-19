@interface BrowserToolbarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityElementsHidden;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation BrowserToolbarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BrowserToolbar" hasInstanceVariable:@"_barRegistration" withType:"<_SFBarRegistrationToken>"];
  [v3 validateClass:@"SFBarRegistration" hasInstanceVariable:@"_shareItem" withType:"UIBarButtonItem"];
  [v3 validateClass:@"SFBarRegistration" hasInstanceVariable:@"_tabExposeItem" withType:"UIBarButtonItem"];
  [v3 validateClass:@"BrowserToolbar" hasInstanceMethod:@"initWithPlacement:hideBackground:" withFullSignature:{"@", "q", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v15.receiver = self;
  v15.super_class = BrowserToolbarAccessibility;
  [(BrowserToolbarAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v3 = [(BrowserToolbarAccessibility *)self safeValueForKey:@"_barRegistration"];
  v4 = [v3 safeValueForKey:@"_shareItem"];
  v5 = accessibilityLocalizedString(@"actions.button");
  [v4 setAccessibilityLabel:v5];

  v6 = [(BrowserToolbarAccessibility *)self safeValueForKey:@"_barRegistration"];
  v7 = [v6 safeValueForKey:@"_tabExposeItem"];
  v8 = accessibilityLocalizedString(@"buttonbar.tabs.text");
  [v7 setAccessibilityLabel:v8];

  v9 = [(BrowserToolbarAccessibility *)self safeValueForKey:@"_barRegistration"];
  v10 = [v9 safeValueForKey:@"_tabExposeItem"];
  v11 = accessibilityLocalizedString(@"buttonbar.tabs.hint");
  [v10 setAccessibilityHint:v11];

  v12 = [(BrowserToolbarAccessibility *)self safeValueForKey:@"_barRegistration"];
  v13 = [v12 safeValueForKey:@"_newTabItem"];
  v14 = accessibilityLocalizedString(@"new.tab.button");
  [v13 setAccessibilityLabel:v14];
}

- (BOOL)accessibilityElementsHidden
{
  [(BrowserToolbarAccessibility *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(BrowserToolbarAccessibility *)self window];
  [(BrowserToolbarAccessibility *)self convertRect:v11 toView:v4, v6, v8, v10];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(BrowserToolbarAccessibility *)self window];
  [v20 bounds];
  v29.origin.x = v21;
  v29.origin.y = v22;
  v29.size.width = v23;
  v29.size.height = v24;
  v27.origin.x = v13;
  v27.origin.y = v15;
  v27.size.width = v17;
  v27.size.height = v19;
  v28 = CGRectIntersection(v27, v29);
  v25 = fmin(v28.size.width, v28.size.height) <= 0.0;

  return v25;
}

@end