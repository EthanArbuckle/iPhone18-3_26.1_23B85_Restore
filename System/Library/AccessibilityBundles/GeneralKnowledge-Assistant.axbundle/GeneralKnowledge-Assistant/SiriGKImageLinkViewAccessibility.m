@interface SiriGKImageLinkViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SiriGKImageLinkViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(SiriGKImageLinkViewAccessibility *)self safeValueForKey:@"_imageLinkedAnswer"];
  v3 = [v2 safeValueForKey:@"name"];

  return v3;
}

@end