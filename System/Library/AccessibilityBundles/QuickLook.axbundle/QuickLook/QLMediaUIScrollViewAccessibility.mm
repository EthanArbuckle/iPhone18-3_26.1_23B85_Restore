@interface QLMediaUIScrollViewAccessibility
- (BOOL)isDragging;
@end

@implementation QLMediaUIScrollViewAccessibility

- (BOOL)isDragging
{
  accessibilityIdentification = [(QLMediaUIScrollViewAccessibility *)self accessibilityIdentification];
  if (![accessibilityIdentification isEqualToString:@"MediaScrubber"])
  {

    goto LABEL_7;
  }

  _axIsDragging = [(QLMediaUIScrollViewAccessibility *)self _axIsDragging];

  if (!_axIsDragging)
  {
LABEL_7:
    v6.receiver = self;
    v6.super_class = QLMediaUIScrollViewAccessibility;
    return [(QLMediaUIScrollViewAccessibility *)&v6 isDragging];
  }

  return [(QLMediaUIScrollViewAccessibility *)self _axIsDragging];
}

@end