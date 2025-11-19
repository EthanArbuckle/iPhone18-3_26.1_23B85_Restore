@interface CAMSemanticStyleDetailViewAccessibility
- (id)accessibilityLabel;
@end

@implementation CAMSemanticStyleDetailViewAccessibility

- (id)accessibilityLabel
{
  v2 = UIAXStringForAllChildren();
  v3 = [v2 localizedLowercaseString];

  return v3;
}

@end