@interface UIAccessibilityCustomRotorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (UIAccessibilityCustomRotorAccessibility)initWithAttributedName:(id)a3 itemSearchBlock:(id)a4;
- (UIAccessibilityCustomRotorAccessibility)initWithName:(id)a3 itemSearchBlock:(id)a4;
- (UIAccessibilityCustomRotorAccessibility)initWithSystemType:(int64_t)a3 itemSearchBlock:(id)a4;
- (void)_accessibilityApplyAttributes;
@end

@implementation UIAccessibilityCustomRotorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = "@?";
  v4 = @"UIAccessibilityCustomRotor";
  v5 = "@";
  [location[0] validateClass:"q" hasInstanceMethod:"@?" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceMethod:@"initWithName:itemSearchBlock:" withFullSignature:{v5, v3, 0}];
  objc_storeStrong(v7, v6);
}

- (void)_accessibilityApplyAttributes
{
  if (result)
  {
    return [result setVisibleInTouchRotor:1];
  }

  return result;
}

- (UIAccessibilityCustomRotorAccessibility)initWithSystemType:(int64_t)a3 itemSearchBlock:(id)a4
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v12;
  v12 = 0;
  v7.receiver = v4;
  v7.super_class = UIAccessibilityCustomRotorAccessibility;
  v12 = [(UIAccessibilityCustomRotorAccessibility *)&v7 initWithSystemType:v10 itemSearchBlock:location];
  v8 = MEMORY[0x29EDC9748](v12);
  [(UIAccessibilityCustomRotorAccessibility *)v12 _accessibilityApplyAttributes];
  v6 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (UIAccessibilityCustomRotorAccessibility)initWithName:(id)a3 itemSearchBlock:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v8.receiver = v4;
  v8.super_class = UIAccessibilityCustomRotorAccessibility;
  v12 = [(UIAccessibilityCustomRotorAccessibility *)&v8 initWithName:location[0] itemSearchBlock:v10];
  v9 = MEMORY[0x29EDC9748](v12);
  [(UIAccessibilityCustomRotorAccessibility *)v12 _accessibilityApplyAttributes];
  v7 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v7;
}

- (UIAccessibilityCustomRotorAccessibility)initWithAttributedName:(id)a3 itemSearchBlock:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v8.receiver = v4;
  v8.super_class = UIAccessibilityCustomRotorAccessibility;
  v12 = [(UIAccessibilityCustomRotorAccessibility *)&v8 initWithAttributedName:location[0] itemSearchBlock:v10];
  v9 = MEMORY[0x29EDC9748](v12);
  [(UIAccessibilityCustomRotorAccessibility *)v12 _accessibilityApplyAttributes];
  v7 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v7;
}

@end