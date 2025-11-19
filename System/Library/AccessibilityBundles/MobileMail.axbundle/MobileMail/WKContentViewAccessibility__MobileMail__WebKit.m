@interface WKContentViewAccessibility__MobileMail__WebKit
- (int64_t)accessibilityContainerType;
@end

@implementation WKContentViewAccessibility__MobileMail__WebKit

- (int64_t)accessibilityContainerType
{
  v2 = [(WKContentViewAccessibility__MobileMail__WebKit *)self _accessibilityFindAncestor:&__block_literal_global_7 startWithSelf:0];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsSafeCategory();
  v4 = [v3 _accessibilityMessageIndexDescription];

  return 4 * (v4 == 0);
}

@end