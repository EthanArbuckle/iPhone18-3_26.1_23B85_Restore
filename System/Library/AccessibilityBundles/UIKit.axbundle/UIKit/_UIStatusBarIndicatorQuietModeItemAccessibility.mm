@interface _UIStatusBarIndicatorQuietModeItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation _UIStatusBarIndicatorQuietModeItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIStatusBarIndicatorQuietModeItem" hasInstanceMethod:@"focusName" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityLabel
{
  v8 = self;
  v7[1] = a2;
  v4 = objc_alloc(MEMORY[0x29EDBD7E8]);
  v5 = [(_UIStatusBarIndicatorQuietModeItemAccessibility *)v8 safeStringForKey:@"focusName"];
  v7[0] = [v4 initWithString:?];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  [v7[0] setAttribute:*MEMORY[0x29EDB8F00] forKey:{*MEMORY[0x29EDBD988], v2}];
  v6 = MEMORY[0x29EDC9748](v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

@end