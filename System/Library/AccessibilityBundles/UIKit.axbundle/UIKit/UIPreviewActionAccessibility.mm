@interface UIPreviewActionAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIPreviewActionAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIPreviewAction" hasInstanceMethod:@"copyWithZone:" withFullSignature:{"@", "^{_NSZone=}", 0}];
  objc_storeStrong(v4, obj);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v7.receiver = self;
  v7.super_class = UIPreviewActionAccessibility;
  v8 = [(UIPreviewActionAccessibility *)&v7 copyWithZone:a3];
  v6 = [(UIPreviewActionAccessibility *)v11 accessibilityLabel];
  if (v6)
  {
    v5 = [v6 copyWithZone:v9];
    [v8 setAccessibilityLabel:v5];
    objc_storeStrong(&v5, 0);
  }

  v4 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v8, 0);
  return v4;
}

@end