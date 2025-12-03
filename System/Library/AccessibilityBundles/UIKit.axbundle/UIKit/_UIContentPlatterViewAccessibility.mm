@interface _UIContentPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (int64_t)accessibilityContainerType;
@end

@implementation _UIContentPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIContentPlatterView" hasInstanceMethod:@"expanded" withFullSignature:{"B", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v5 = a2;
  if (([(_UIContentPlatterViewAccessibility *)self safeBoolForKey:@"expanded"]& 1) != 0)
  {
    accessibilityLabel = accessibilityLocalizedString(@"context.menu.preview");
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = _UIContentPlatterViewAccessibility;
    accessibilityLabel = [(_UIContentPlatterViewAccessibility *)&v4 accessibilityLabel];
  }

  v2 = accessibilityLabel;

  return v2;
}

- (int64_t)accessibilityContainerType
{
  selfCopy = self;
  v4 = a2;
  if (([(_UIContentPlatterViewAccessibility *)self safeBoolForKey:@"expanded"]& 1) != 0)
  {
    return 4;
  }

  v3.receiver = selfCopy;
  v3.super_class = _UIContentPlatterViewAccessibility;
  return [(_UIContentPlatterViewAccessibility *)&v3 accessibilityContainerType];
}

@end