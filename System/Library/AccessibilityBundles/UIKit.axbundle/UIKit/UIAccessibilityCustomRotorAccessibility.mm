@interface UIAccessibilityCustomRotorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (UIAccessibilityCustomRotorAccessibility)initWithAttributedName:(id)name itemSearchBlock:(id)block;
- (UIAccessibilityCustomRotorAccessibility)initWithName:(id)name itemSearchBlock:(id)block;
- (UIAccessibilityCustomRotorAccessibility)initWithSystemType:(int64_t)type itemSearchBlock:(id)block;
- (void)_accessibilityApplyAttributes;
@end

@implementation UIAccessibilityCustomRotorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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

- (UIAccessibilityCustomRotorAccessibility)initWithSystemType:(int64_t)type itemSearchBlock:(id)block
{
  selfCopy = self;
  v11 = a2;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, block);
  v4 = selfCopy;
  selfCopy = 0;
  v7.receiver = v4;
  v7.super_class = UIAccessibilityCustomRotorAccessibility;
  selfCopy = [(UIAccessibilityCustomRotorAccessibility *)&v7 initWithSystemType:typeCopy itemSearchBlock:location];
  v8 = MEMORY[0x29EDC9748](selfCopy);
  [(UIAccessibilityCustomRotorAccessibility *)selfCopy _accessibilityApplyAttributes];
  v6 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (UIAccessibilityCustomRotorAccessibility)initWithName:(id)name itemSearchBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v10 = 0;
  objc_storeStrong(&v10, block);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = UIAccessibilityCustomRotorAccessibility;
  selfCopy = [(UIAccessibilityCustomRotorAccessibility *)&v8 initWithName:location[0] itemSearchBlock:v10];
  v9 = MEMORY[0x29EDC9748](selfCopy);
  [(UIAccessibilityCustomRotorAccessibility *)selfCopy _accessibilityApplyAttributes];
  v7 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (UIAccessibilityCustomRotorAccessibility)initWithAttributedName:(id)name itemSearchBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v10 = 0;
  objc_storeStrong(&v10, block);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = UIAccessibilityCustomRotorAccessibility;
  selfCopy = [(UIAccessibilityCustomRotorAccessibility *)&v8 initWithAttributedName:location[0] itemSearchBlock:v10];
  v9 = MEMORY[0x29EDC9748](selfCopy);
  [(UIAccessibilityCustomRotorAccessibility *)selfCopy _accessibilityApplyAttributes];
  v7 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

@end