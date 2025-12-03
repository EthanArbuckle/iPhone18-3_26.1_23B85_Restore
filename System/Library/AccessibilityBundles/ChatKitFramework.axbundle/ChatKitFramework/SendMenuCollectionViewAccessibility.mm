@interface SendMenuCollectionViewAccessibility
- (id)_accessibilitySubviewsForGettingElementsWithOptions:(id)options;
@end

@implementation SendMenuCollectionViewAccessibility

- (id)_accessibilitySubviewsForGettingElementsWithOptions:(id)options
{
  optionsCopy = options;
  [optionsCopy setShouldIncludeKeyboardObscuredElements:1];
  v7.receiver = self;
  v7.super_class = SendMenuCollectionViewAccessibility;
  v5 = [(SendMenuCollectionViewAccessibility *)&v7 _accessibilitySubviewsForGettingElementsWithOptions:optionsCopy];

  return v5;
}

@end