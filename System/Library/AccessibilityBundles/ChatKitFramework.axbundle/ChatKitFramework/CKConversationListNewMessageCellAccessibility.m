@interface CKConversationListNewMessageCellAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKConversationListNewMessageCellAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CKConversationListNewMessageCellAccessibility;
  [(CKConversationListNewMessageCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKConversationListNewMessageCellAccessibility *)self safeValueForKey:@"_closeButton"];
  [v3 setIsAccessibilityElement:0];
}

@end