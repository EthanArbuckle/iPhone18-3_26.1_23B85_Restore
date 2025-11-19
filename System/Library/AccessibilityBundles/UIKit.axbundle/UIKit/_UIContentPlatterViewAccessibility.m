@interface _UIContentPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (int64_t)accessibilityContainerType;
@end

@implementation _UIContentPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIContentPlatterView" hasInstanceMethod:@"expanded" withFullSignature:{"B", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityLabel
{
  v6 = self;
  v5 = a2;
  if (([(_UIContentPlatterViewAccessibility *)self safeBoolForKey:@"expanded"]& 1) != 0)
  {
    v7 = accessibilityLocalizedString(@"context.menu.preview");
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = _UIContentPlatterViewAccessibility;
    v7 = [(_UIContentPlatterViewAccessibility *)&v4 accessibilityLabel];
  }

  v2 = v7;

  return v2;
}

- (int64_t)accessibilityContainerType
{
  v5 = self;
  v4 = a2;
  if (([(_UIContentPlatterViewAccessibility *)self safeBoolForKey:@"expanded"]& 1) != 0)
  {
    return 4;
  }

  v3.receiver = v5;
  v3.super_class = _UIContentPlatterViewAccessibility;
  return [(_UIContentPlatterViewAccessibility *)&v3 accessibilityContainerType];
}

@end