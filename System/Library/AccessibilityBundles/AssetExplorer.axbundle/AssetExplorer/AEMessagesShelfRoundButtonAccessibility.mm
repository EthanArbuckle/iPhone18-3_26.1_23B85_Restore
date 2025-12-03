@interface AEMessagesShelfRoundButtonAccessibility
- (void)_commonAEMessagesRoundButtonInitializationWithStyle:(int64_t)style;
@end

@implementation AEMessagesShelfRoundButtonAccessibility

- (void)_commonAEMessagesRoundButtonInitializationWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = AEMessagesShelfRoundButtonAccessibility;
  [(AEMessagesShelfRoundButtonAccessibility *)&v6 _commonAEMessagesRoundButtonInitializationWithStyle:?];
  if (style <= 2)
  {
    v5 = accessibilityLocalizedString(off_29F2A19C8[style]);
    [(AEMessagesShelfRoundButtonAccessibility *)self setAccessibilityLabel:v5];
  }
}

@end