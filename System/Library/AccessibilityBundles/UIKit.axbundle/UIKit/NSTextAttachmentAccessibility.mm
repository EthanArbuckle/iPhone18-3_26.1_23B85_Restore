@interface NSTextAttachmentAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)dealloc;
@end

@implementation NSTextAttachmentAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(NSTextAttachmentAccessibility *)self _accessibilityUnregister];
  v2.receiver = v4;
  v2.super_class = NSTextAttachmentAccessibility;
  [(NSTextAttachmentAccessibility *)&v2 dealloc];
}

@end