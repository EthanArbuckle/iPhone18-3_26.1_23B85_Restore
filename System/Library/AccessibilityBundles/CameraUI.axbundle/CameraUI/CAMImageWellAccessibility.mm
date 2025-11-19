@interface CAMImageWellAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation CAMImageWellAccessibility

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v3 = [(CAMImageWellAccessibility *)self safeValueForKey:@"_thumbnailImageView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 image];
  v6 = v5 != 0;

  return v6;
}

@end