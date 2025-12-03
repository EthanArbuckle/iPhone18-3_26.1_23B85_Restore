@interface UIFieldEditorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)insertText:(id)text;
@end

@implementation UIFieldEditorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = "@";
  v4 = @"UIFieldEditor";
  v5 = "v";
  [location[0] validateClass:"@" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"insertText:" withFullSignature:{v5, v3, 0}];
  objc_storeStrong(v7, v6);
}

- (void)insertText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  MEMORY[0x29ED3DFA0](*MEMORY[0x29EDC74D0]);
  v3.receiver = selfCopy;
  v3.super_class = UIFieldEditorAccessibility;
  [(UIFieldEditorAccessibility *)&v3 insertText:location[0]];
  MEMORY[0x29ED3DFA0](0);
  objc_storeStrong(location, 0);
}

@end