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

  array = [MEMORY[0x29EDB8DE8] array];
  v6 = array;
  if (v4)
  {
    [array addObjectsFromArray:v4];
  }

  if ([v6 count])
  {
    _accessibilitySupplementaryHeaderViews = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MTTableViewAccessibility;
    _accessibilitySupplementaryHeaderViews = [(MTTableViewAccessibility *)&v10 _accessibilitySupplementaryHeaderViews];
  }

  v8 = _accessibilitySupplementaryHeaderViews;

  return v8;
}

@end