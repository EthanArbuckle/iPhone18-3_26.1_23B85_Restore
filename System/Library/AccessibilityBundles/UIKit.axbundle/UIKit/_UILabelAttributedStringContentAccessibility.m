@interface _UILabelAttributedStringContentAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_UILabelAttributedStringContentAccessibility)initWithAttributedString:(id)a3 defaultAttributes:(id)a4;
@end

@implementation _UILabelAttributedStringContentAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UILabelAttributedStringContent";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceVariable:@"_attributedString" withType:"NSAttributedString"];
  objc_storeStrong(v5, obj);
}

- (_UILabelAttributedStringContentAccessibility)initWithAttributedString:(id)a3 defaultAttributes:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v4 = v14;
  v14 = 0;
  v10.receiver = v4;
  v10.super_class = _UILabelAttributedStringContentAccessibility;
  v14 = [(_UILabelAttributedStringContentAccessibility *)&v10 initWithAttributedString:location[0] defaultAttributes:v12];
  v11 = MEMORY[0x29EDC9748](v14);
  v8 = [(_UILabelAttributedStringContentAccessibility *)v14 safeValueForKey:@"_attributedString"];
  v7 = [location[0] accessibilityLabel];
  [v8 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v7);
  MEMORY[0x29EDC9740](v8);
  v9 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v9;
}

@end