@interface CAMSemanticStyleDetailViewAccessibility
- (id)accessibilityLabel;
@end

@implementation CAMSemanticStyleDetailViewAccessibility

- (id)accessibilityLabel
{
  v2 = UIAXStringForAllChildren();
  localizedLowercaseString = [v2 localizedLowercaseString];

  return localizedLowercaseString;
}

@end