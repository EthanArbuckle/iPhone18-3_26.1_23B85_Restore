@interface NTKCircularSmallCircularImageViewAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKCircularSmallCircularImageViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(NTKCircularSmallCircularImageViewAccessibility *)self safeValueForKey:@"imageView"];
  v4 = [v3 accessibilityLabel];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKCircularSmallCircularImageViewAccessibility;
    v5 = [(NTKCircularSmallCircularImageViewAccessibility *)&v8 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

@end