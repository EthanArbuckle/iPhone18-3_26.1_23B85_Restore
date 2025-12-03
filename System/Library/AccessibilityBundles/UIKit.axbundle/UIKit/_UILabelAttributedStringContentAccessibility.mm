@interface _UILabelAttributedStringContentAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (_UILabelAttributedStringContentAccessibility)initWithAttributedString:(id)string defaultAttributes:(id)attributes;
@end

@implementation _UILabelAttributedStringContentAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UILabelAttributedStringContent";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceVariable:@"_attributedString" withType:"NSAttributedString"];
  objc_storeStrong(v5, obj);
}

- (_UILabelAttributedStringContentAccessibility)initWithAttributedString:(id)string defaultAttributes:(id)attributes
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  v12 = 0;
  objc_storeStrong(&v12, attributes);
  v4 = selfCopy;
  selfCopy = 0;
  v10.receiver = v4;
  v10.super_class = _UILabelAttributedStringContentAccessibility;
  selfCopy = [(_UILabelAttributedStringContentAccessibility *)&v10 initWithAttributedString:location[0] defaultAttributes:v12];
  v11 = MEMORY[0x29EDC9748](selfCopy);
  v8 = [(_UILabelAttributedStringContentAccessibility *)selfCopy safeValueForKey:@"_attributedString"];
  accessibilityLabel = [location[0] accessibilityLabel];
  [v8 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](accessibilityLabel);
  MEMORY[0x29EDC9740](v8);
  v9 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

@end