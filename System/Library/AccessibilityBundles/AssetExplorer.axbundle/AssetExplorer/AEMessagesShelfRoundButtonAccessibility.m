@interface AEMessagesShelfRoundButtonAccessibility
- (void)_commonAEMessagesRoundButtonInitializationWithStyle:(int64_t)a3;
@end

@implementation AEMessagesShelfRoundButtonAccessibility

- (void)_commonAEMessagesRoundButtonInitializationWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = AEMessagesShelfRoundButtonAccessibility;
  [(AEMessagesShelfRoundButtonAccessibility *)&v6 _commonAEMessagesRoundButtonInitializationWithStyle:?];
  if (a3 <= 2)
  {
    v5 = accessibilityLocalizedString(off_29F2A19C8[a3]);
    [(AEMessagesShelfRoundButtonAccessibility *)self setAccessibilityLabel:v5];
  }
}

@end