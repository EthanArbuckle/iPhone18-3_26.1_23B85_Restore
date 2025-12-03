@interface _UITextMenuLinkInteractionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
@end

@implementation _UITextMenuLinkInteractionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UITextMenuLinkInteraction" hasInstanceMethod:@"_contextMenuInteraction:styleForMenuWithConfiguration:" withFullSignature:{"@", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, interaction);
  v10 = 0;
  objc_storeStrong(&v10, configuration);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(_UITextMenuLinkInteractionAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AXIsPerformingSimpleTap"]& 1) != 0)
  {
    defaultStyle = [MEMORY[0x29EDC7E28] defaultStyle];
    [defaultStyle setPreferredLayout:3];
    v13 = MEMORY[0x29EDC9748](defaultStyle);
    v8 = 1;
    objc_storeStrong(&defaultStyle, 0);
  }

  else
  {
    v7.receiver = selfCopy;
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