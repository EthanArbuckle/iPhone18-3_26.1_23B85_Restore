@interface SMSApplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilitySoftwareKeyboardActive;
- (id)_accessibilityMainWindow;
@end

@implementation SMSApplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"IMMessage" hasInstanceMethod:@"senderName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKConversation" hasInstanceMethod:@"chat" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IMChat" hasInstanceMethod:@"lastIncomingMessage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IMMessage" hasInstanceMethod:@"isTypingMessage" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIApplication" hasInstanceMethod:@"_accessibilitySoftwareKeyboardActive" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKMessagesController" hasInstanceMethod:@"isShowingChatController" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIApplication" hasInstanceMethod:@"_accessibilityMainWindow" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKActionMenuWindow"];
  [validationsCopy validateClass:@"CKActionMenuWindow" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
}

- (BOOL)_accessibilitySoftwareKeyboardActive
{
  v8 = 0;
  objc_opt_class();
  mEMORY[0x29C2E0280](@"CKActionMenuWindow") = [MEMORY[0x29C2E0280](@"CKActionMenuWindow") sharedInstance];
  v4 = __UIAccessibilityCastAsClass();

  if (v4 && ![v4 isHidden])
  {
    _accessibilitySoftwareKeyboardActive = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SMSApplicationAccessibility;
    _accessibilitySoftwareKeyboardActive = [(SMSApplicationAccessibility *)&v7 _accessibilitySoftwareKeyboardActive];
  }

  return _accessibilitySoftwareKeyboardActive;
}

- (id)_accessibilityMainWindow
{
  v7.receiver = self;
  v7.super_class = SMSApplicationAccessibility;
  _accessibilityMainWindow = [(SMSApplicationAccessibility *)&v7 _accessibilityMainWindow];
  keyWindow = [MEMORY[0x29EDC7DD0] keyWindow];
  v4 = keyWindow;
  if (!_accessibilityMainWindow || keyWindow != _accessibilityMainWindow && [_accessibilityMainWindow accessibilityViewIsModal] && objc_msgSend(v4, "accessibilityViewIsModal"))
  {
    v5 = v4;

    _accessibilityMainWindow = v5;
  }

  return _accessibilityMainWindow;
}

@end