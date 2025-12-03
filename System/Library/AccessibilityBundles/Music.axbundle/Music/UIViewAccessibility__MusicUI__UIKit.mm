@interface UIViewAccessibility__MusicUI__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityElementsHidden;
@end

@implementation UIViewAccessibility__MusicUI__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UISheetPresentationController" hasInstanceMethod:@"_layoutInfo" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"_UISheetLayoutInfo" hasRequiredInstanceMethod:@"_indexOfCurrentActiveDetent"];
  [validationsCopy validateProtocol:@"_UISheetLayoutInfo" hasRequiredInstanceMethod:@"_activeDetents"];
  [validationsCopy validateClass:@"_UISheetActiveDetent" hasInstanceMethod:@"_identifier" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityElementsHidden
{
  selfCopy = self;
  _accessibilityViewController = [(UIViewAccessibility__MusicUI__UIKit *)self _accessibilityViewController];
  v5.receiver = selfCopy;
  v5.super_class = UIViewAccessibility__MusicUI__UIKit;
  LOBYTE(selfCopy) = [(UIViewAccessibility__MusicUI__UIKit *)&v5 accessibilityElementsHidden];

  return selfCopy;
}

@end