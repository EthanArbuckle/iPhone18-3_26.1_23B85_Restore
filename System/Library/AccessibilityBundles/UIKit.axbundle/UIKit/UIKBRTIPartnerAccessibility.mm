@interface UIKBRTIPartnerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unsigned)_performKeyboardOutputOperations:(id)operations;
@end

@implementation UIKBRTIPartnerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIKBRTIPartner" hasInstanceMethod:@"_performKeyboardOutputOperations:" withFullSignature:{"I", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (unsigned)_performKeyboardOutputOperations:(id)operations
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operations);
  _UIAccessibilityBlockPostingOfAllNotifications();
  v5.receiver = selfCopy;
  v5.super_class = UIKBRTIPartnerAccessibility;
  v6 = [(UIKBRTIPartnerAccessibility *)&v5 _performKeyboardOutputOperations:location[0]];
  AXPerformBlockAsynchronouslyOnMainThread();
  v4 = v6;
  objc_storeStrong(location, 0);
  return v4;
}

@end