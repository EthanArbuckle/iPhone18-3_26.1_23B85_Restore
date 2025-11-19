@interface CKRecipientSearchListControllerAccessibility
- (void)didSelectRecipient:(id)a3 atIndex:(unint64_t)a4;
@end

@implementation CKRecipientSearchListControllerAccessibility

- (void)didSelectRecipient:(id)a3 atIndex:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = CKRecipientSearchListControllerAccessibility;
  [(CKRecipientSearchListControllerAccessibility *)&v4 didSelectRecipient:a3 atIndex:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end