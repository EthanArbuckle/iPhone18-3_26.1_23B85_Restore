@interface SendMenuCollectionViewAccessibility
- (id)_accessibilitySubviewsForGettingElementsWithOptions:(id)a3;
@end

@implementation SendMenuCollectionViewAccessibility

- (id)_accessibilitySubviewsForGettingElementsWithOptions:(id)a3
{
  v4 = a3;
  [v4 setShouldIncludeKeyboardObscuredElements:1];
  v7.receiver = self;
  v7.super_class = SendMenuCollectionViewAccessibility;
  v5 = [(SendMenuCollectionViewAccessibility *)&v7 _accessibilitySubviewsForGettingElementsWithOptions:v4];

  return v5;
}

@end