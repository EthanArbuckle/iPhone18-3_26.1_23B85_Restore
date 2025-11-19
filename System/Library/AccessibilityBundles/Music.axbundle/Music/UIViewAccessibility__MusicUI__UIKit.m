@interface UIViewAccessibility__MusicUI__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityElementsHidden;
@end

@implementation UIViewAccessibility__MusicUI__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UISheetPresentationController" hasInstanceMethod:@"_layoutInfo" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"_UISheetLayoutInfo" hasRequiredInstanceMethod:@"_indexOfCurrentActiveDetent"];
  [v3 validateProtocol:@"_UISheetLayoutInfo" hasRequiredInstanceMethod:@"_activeDetents"];
  [v3 validateClass:@"_UISheetActiveDetent" hasInstanceMethod:@"_identifier" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityElementsHidden
{
  v2 = self;
  v3 = [(UIViewAccessibility__MusicUI__UIKit *)self _accessibilityViewController];
  v5.receiver = v2;
  v5.super_class = UIViewAccessibility__MusicUI__UIKit;
  LOBYTE(v2) = [(UIViewAccessibility__MusicUI__UIKit *)&v5 accessibilityElementsHidden];

  return v2;
}

@end