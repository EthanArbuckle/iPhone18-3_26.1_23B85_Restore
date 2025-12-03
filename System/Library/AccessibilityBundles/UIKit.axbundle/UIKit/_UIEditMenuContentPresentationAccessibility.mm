@interface _UIEditMenuContentPresentationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)hideMenuWithReason:(int64_t)reason;
@end

@implementation _UIEditMenuContentPresentationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIEditMenuContentPresentation" hasInstanceMethod:@"hideMenuWithReason:" withFullSignature:{"v", "q", 0}];
  objc_storeStrong(v4, obj);
}

- (void)hideMenuWithReason:(int64_t)reason
{
  selfCopy = self;
  v5 = a2;
  reasonCopy = reason;
  v3.receiver = self;
  v3.super_class = _UIEditMenuContentPresentationAccessibility;
  [(_UIEditMenuContentPresentationAccessibility *)&v3 hideMenuWithReason:reason];
  if (reasonCopy <= 1)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end