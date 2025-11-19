@interface UIWebFormAccessoryAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (UIWebFormAccessoryAccessibility)initWithInputAssistantItem:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation UIWebFormAccessoryAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UIWebFormAccessory";
  v3 = "UIBarButtonItem";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UIWebFormAccessory" hasInstanceVariable:@"_previousItem" withType:"UIBarButtonItem"];
  [location[0] validateClass:@"UIWebFormAccessory" hasInstanceMethod:@"initWithInputAssistantItem:" withFullSignature:{"@", 0}];
  objc_storeStrong(v6, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = UIWebFormAccessoryAccessibility;
  [(UIWebFormAccessoryAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v4 = [(UIWebFormAccessoryAccessibility *)v9 safeValueForKey:@"_previousItem"];
  v3 = accessibilityLocalizedString(@"uibutton.table.previous.button.title");
  [v4 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v3);
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v6 = [(UIWebFormAccessoryAccessibility *)v9 safeValueForKey:@"_nextItem", v2];
  v5 = accessibilityLocalizedString(@"uibutton.table.next.button.title");
  [v6 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);
}

- (UIWebFormAccessoryAccessibility)initWithInputAssistantItem:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v6.receiver = v3;
  v6.super_class = UIWebFormAccessoryAccessibility;
  v9 = [(UIWebFormAccessoryAccessibility *)&v6 initWithInputAssistantItem:location[0]];
  v7 = MEMORY[0x29EDC9748](v9);
  [(UIWebFormAccessoryAccessibility *)v9 _accessibilityLoadAccessibilityInformation];
  v5 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

@end