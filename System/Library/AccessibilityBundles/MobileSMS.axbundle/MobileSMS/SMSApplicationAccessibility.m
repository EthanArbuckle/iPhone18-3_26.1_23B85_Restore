@interface SMSApplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilitySoftwareKeyboardActive;
- (id)_accessibilityMainWindow;
@end

@implementation SMSApplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"IMMessage" hasInstanceMethod:@"senderName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversation" hasInstanceMethod:@"chat" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IMChat" hasInstanceMethod:@"lastIncomingMessage" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IMMessage" hasInstanceMethod:@"isTypingMessage" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIApplication" hasInstanceMethod:@"_accessibilitySoftwareKeyboardActive" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKMessagesController" hasInstanceMethod:@"isShowingChatController" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIApplication" hasInstanceMethod:@"_accessibilityMainWindow" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKActionMenuWindow"];
  [v3 validateClass:@"CKActionMenuWindow" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
}

- (BOOL)_accessibilitySoftwareKeyboardActive
{
  v8 = 0;
  objc_opt_class();
  v3 = [MEMORY[0x29C2E0280](@"CKActionMenuWindow") sharedInstance];
  v4 = __UIAccessibilityCastAsClass();

  if (v4 && ![v4 isHidden])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SMSApplicationAccessibility;
    v5 = [(SMSApplicationAccessibility *)&v7 _accessibilitySoftwareKeyboardActive];
  }

  return v5;
}

- (id)_accessibilityMainWindow
{
  v7.receiver = self;
  v7.super_class = SMSApplicationAccessibility;
  v2 = [(SMSApplicationAccessibility *)&v7 _accessibilityMainWindow];
  v3 = [MEMORY[0x29EDC7DD0] keyWindow];
  v4 = v3;
  if (!v2 || v3 != v2 && [v2 accessibilityViewIsModal] && objc_msgSend(v4, "accessibilityViewIsModal"))
  {
    v5 = v4;

    v2 = v5;
  }

  return v2;
}

@end