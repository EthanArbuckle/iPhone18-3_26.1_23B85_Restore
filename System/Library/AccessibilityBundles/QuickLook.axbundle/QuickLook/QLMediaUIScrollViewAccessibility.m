@interface QLMediaUIScrollViewAccessibility
- (BOOL)isDragging;
@end

@implementation QLMediaUIScrollViewAccessibility

- (BOOL)isDragging
{
  v3 = [(QLMediaUIScrollViewAccessibility *)self accessibilityIdentification];
  if (![v3 isEqualToString:@"MediaScrubber"])
  {

    goto LABEL_7;
  }

  v4 = [(QLMediaUIScrollViewAccessibility *)self _axIsDragging];

  if (!v4)
  {
LABEL_7:
    v6.receiver = self;
    v6.super_class = QLMediaUIScrollViewAccessibility;
    return [(QLMediaUIScrollViewAccessibility *)&v6 isDragging];
  }

  return [(QLMediaUIScrollViewAccessibility *)self _axIsDragging];
}

@end