@interface MTTableViewAccessibility
- (id)_accessibilitySupplementaryHeaderViews;
- (int64_t)accessibilityElementCount;
@end

@implementation MTTableViewAccessibility

- (int64_t)accessibilityElementCount
{
  v3 = objc_getAssociatedObject(self, &MTAXTableViewContainingSearchView);

  if (v3)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = MTTableViewAccessibility;
  return [(MTTableViewAccessibility *)&v5 accessibilityElementCount];
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v3 = objc_getAssociatedObject(self, &MTAXTableViewContainingSearchView);
  v4 = [v3 safeValueForKey:@"_accessibleSubviews"];

  v5 = [MEMORY[0x29EDB8DE8] array];
  v6 = v5;
  if (v4)
  {
    [v5 addObjectsFromArray:v4];
  }

  if ([v6 count])
  {
    v7 = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MTTableViewAccessibility;
    v7 = [(MTTableViewAccessibility *)&v10 _accessibilitySupplementaryHeaderViews];
  }

  v8 = v7;

  return v8;
}

@end