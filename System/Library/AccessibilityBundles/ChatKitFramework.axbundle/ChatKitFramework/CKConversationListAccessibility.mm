@interface CKConversationListAccessibility
- (void)deleteConversations:(id)conversations;
@end

@implementation CKConversationListAccessibility

- (void)deleteConversations:(id)conversations
{
  v10.receiver = self;
  v10.super_class = CKConversationListAccessibility;
  conversationsCopy = conversations;
  [(CKConversationListAccessibility *)&v10 deleteConversations:conversationsCopy];
  v4 = MEMORY[0x29EDBD7E8];
  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"deleted.conversations.count");
  v7 = [conversationsCopy count];

  v8 = [v5 localizedStringWithFormat:v6, v7];
  v9 = [v4 axAttributedStringWithString:v8];

  [v9 setAttribute:&unk_2A2169FF0 forKey:*MEMORY[0x29EDBD860]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v9);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end