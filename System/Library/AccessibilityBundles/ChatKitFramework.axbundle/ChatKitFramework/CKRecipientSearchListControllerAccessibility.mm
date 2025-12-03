@interface CKRecipientSearchListControllerAccessibility
- (void)didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
@end

@implementation CKRecipientSearchListControllerAccessibility

- (void)didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  v4.receiver = self;
  v4.super_class = CKRecipientSearchListControllerAccessibility;
  [(CKRecipientSearchListControllerAccessibility *)&v4 didSelectRecipient:recipient atIndex:index];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end