@interface _UITextMenuLinkInteractionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
@end

@implementation _UITextMenuLinkInteractionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UITextMenuLinkInteraction" hasInstanceMethod:@"_contextMenuInteraction:styleForMenuWithConfiguration:" withFullSignature:{"@", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(_UITextMenuLinkInteractionAccessibility *)v12 _accessibilityBoolValueForKey:@"AXIsPerformingSimpleTap"]& 1) != 0)
  {
    v9 = [MEMORY[0x29EDC7E28] defaultStyle];
    [v9 setPreferredLayout:3];
    v13 = MEMORY[0x29EDC9748](v9);
    v8 = 1;
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v7.receiver = v12;
    v7.super_class = _UITextMenuLinkInteractionAccessibility;
    v13 = [(_UITextMenuLinkInteractionAccessibility *)&v7 _contextMenuInteraction:location[0] styleForMenuWithConfiguration:v10];
    v8 = 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  v4 = v13;

  return v4;
}

@end