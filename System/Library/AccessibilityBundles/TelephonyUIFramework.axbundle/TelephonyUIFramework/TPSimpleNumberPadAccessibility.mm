@interface TPSimpleNumberPadAccessibility
- (void)_updateDeleteButton;
@end

@implementation TPSimpleNumberPadAccessibility

- (void)_updateDeleteButton
{
  v2.receiver = self;
  v2.super_class = TPSimpleNumberPadAccessibility;
  [(TPSimpleNumberPadAccessibility *)&v2 _updateDeleteButton];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end