@interface NTKCircularSmallCircularImageViewAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKCircularSmallCircularImageViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(NTKCircularSmallCircularImageViewAccessibility *)self safeValueForKey:@"imageView"];
  accessibilityLabel = [v3 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    accessibilityLabel2 = accessibilityLabel;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKCircularSmallCircularImageViewAccessibility;
    accessibilityLabel2 = [(NTKCircularSmallCircularImageViewAccessibility *)&v8 accessibilityLabel];
  }

  v6 = accessibilityLabel2;

  return v6;
}

@end