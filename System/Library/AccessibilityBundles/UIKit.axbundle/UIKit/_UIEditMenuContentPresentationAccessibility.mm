@interface _UIEditMenuContentPresentationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)hideMenuWithReason:(int64_t)a3;
@end

@implementation _UIEditMenuContentPresentationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIEditMenuContentPresentation" hasInstanceMethod:@"hideMenuWithReason:" withFullSignature:{"v", "q", 0}];
  objc_storeStrong(v4, obj);
}

- (void)hideMenuWithReason:(int64_t)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = _UIEditMenuContentPresentationAccessibility;
  [(_UIEditMenuContentPresentationAccessibility *)&v3 hideMenuWithReason:a3];
  if (v4 <= 1)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end