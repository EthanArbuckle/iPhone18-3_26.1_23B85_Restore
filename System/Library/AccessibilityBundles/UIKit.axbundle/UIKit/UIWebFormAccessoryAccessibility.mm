@interface UIWebFormAccessoryAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (UIWebFormAccessoryAccessibility)initWithInputAssistantItem:(id)item;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation UIWebFormAccessoryAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UIWebFormAccessory";
  v3 = "UIBarButtonItem";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UIWebFormAccessory" hasInstanceVariable:@"_previousItem" withType:"UIBarButtonItem"];
  [location[0] validateClass:@"UIWebFormAccessory" hasInstanceMethod:@"initWithInputAssistantItem:" withFullSignature:{"@", 0}];
  objc_storeStrong(v6, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = UIWebFormAccessoryAccessibility;
  [(UIWebFormAccessoryAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v4 = [(UIWebFormAccessoryAccessibility *)selfCopy safeValueForKey:@"_previousItem"];
  v3 = accessibilityLocalizedString(@"uibutton.table.previous.button.title");
  [v4 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v3);
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v6 = [(UIWebFormAccessoryAccessibility *)selfCopy safeValueForKey:@"_nextItem", v2];
  v5 = accessibilityLocalizedString(@"uibutton.table.next.button.title");
  [v6 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);
}

- (UIWebFormAccessoryAccessibility)initWithInputAssistantItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = UIWebFormAccessoryAccessibility;
  selfCopy = [(UIWebFormAccessoryAccessibility *)&v6 initWithInputAssistantItem:location[0]];
  v7 = MEMORY[0x29EDC9748](selfCopy);
  [(UIWebFormAccessoryAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
  v5 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

@end