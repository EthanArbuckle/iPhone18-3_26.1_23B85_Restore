@interface PLVideoRemakerAccessibility
- (void)_didEndRemakingWithTemporaryPath:(id)path;
- (void)cancel;
@end

@implementation PLVideoRemakerAccessibility

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = PLVideoRemakerAccessibility;
  [(PLVideoRemakerAccessibility *)&v2 cancel];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_didEndRemakingWithTemporaryPath:(id)path
{
  v3.receiver = self;
  v3.super_class = PLVideoRemakerAccessibility;
  [(PLVideoRemakerAccessibility *)&v3 _didEndRemakingWithTemporaryPath:path];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end