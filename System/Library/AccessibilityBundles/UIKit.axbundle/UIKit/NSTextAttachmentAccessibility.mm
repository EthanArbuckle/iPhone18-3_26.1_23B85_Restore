@interface NSTextAttachmentAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)dealloc;
@end

@implementation NSTextAttachmentAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(NSTextAttachmentAccessibility *)self _accessibilityUnregister];
  v2.receiver = selfCopy;
  v2.super_class = NSTextAttachmentAccessibility;
  [(NSTextAttachmentAccessibility *)&v2 dealloc];
}

@end