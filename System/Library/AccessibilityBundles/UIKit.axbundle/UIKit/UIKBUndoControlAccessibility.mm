@interface UIKBUndoControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation UIKBUndoControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UIKBUndoControl";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"type" withFullSignature:{"q", 0}];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityLabel
{
  v3 = [(UIKBUndoControlAccessibility *)self safeIntegerForKey:@"type"];
  if (v3 && (v3 == 1 || v3 == 2 || v3 == 3 || v3 == 4 || v3 == 5))
  {
    v5 = UIKitAccessibilityLocalizedString();
  }

  else
  {
    v5 = [(UIKBUndoControlAccessibility *)self safeValueForKeyPath:@"label.text"];
  }

  return v5;
}

@end