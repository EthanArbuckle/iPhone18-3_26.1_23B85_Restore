@interface UITableViewAccessibility__MobileMail__UIKit
- (BOOL)isAccessibilityElement;
@end

@implementation UITableViewAccessibility__MobileMail__UIKit

- (BOOL)isAccessibilityElement
{
  v3 = [(UITableViewAccessibility__MobileMail__UIKit *)self safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Mfvipsendersli.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = UITableViewAccessibility__MobileMail__UIKit;
  return [(UITableViewAccessibility__MobileMail__UIKit *)&v6 isAccessibilityElement];
}

@end