@interface CKMessageEntryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CKMessageEntryViewAccessibility)initWithFrame:(CGRect)frame marginInsets:(UIEdgeInsets)insets shouldAllowImpact:(BOOL)impact shouldShowSendButton:(BOOL)button shouldShowSubject:(BOOL)subject shouldShowPluginButtons:(BOOL)buttons shouldShowCharacterCount:(BOOL)count traitCollection:(id)self0 shouldDisableAttachments:(BOOL)self1 shouldUseNonEmojiKeyboard:(BOOL)self2 shouldUseNonHandwritingKeyboard:(BOOL)self3 shouldDisableKeyboardStickers:(BOOL)self4 shouldAllowPollSuggestions:(BOOL)self5 translationLanguage:(id)self6;
- (id)_axSendButtonKey;
- (void)_accessibilityApplyAudioButtonLabel;
- (void)_accessibilityApplyEmojiButtonLabel;
- (void)_accessibilityApplySendButtonHint;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySendButtonLabel;
- (void)_postSentAnnouncementIfNeeded;
- (void)audioMessageRecordingViewDidCancel:(id)cancel;
- (void)keyCommandSend:(id)send;
- (void)touchUpInsideSendButton:(id)button;
- (void)updateEntryView;
@end

@implementation CKMessageEntryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"initWithFrame:marginInsets:shouldAllowImpact:shouldShowSendButton:shouldShowSubject:shouldShowPluginButtons:shouldShowCharacterCount:traitCollection:shouldDisableAttachments:shouldUseNonEmojiKeyboard:shouldUseNonHandwritingKeyboard:shouldDisableKeyboardStickers:shouldAllowPollSuggestions:translationLanguage:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "{UIEdgeInsets=dddd}", "B", "B", "B", "B", "B", "@", "B", "B", "B", "B", "B", "@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"keyCommandSend:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"hasRecording" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"updateEntryView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"touchUpInsideSendButton:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKActionMenuController" hasInstanceMethod:@"isActionMenuVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"audioButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"videoMessageRecordingViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKVideoMessageRecordingViewController" hasInstanceVariable:@"_presented" withType:"B"];
  [validationsCopy validateClass:@"CKMessageEntryRecordedAudioView" hasInstanceMethod:@"waveformImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKActionMenuController" hasInstanceMethod:@"actionMenuItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKRecordActionMenuItem" isKindOfClass:@"CKActionMenuItemView"];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"conversation" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"shouldAllowImpactSend" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"inputDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"sendButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"glassSendButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"emojiButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"audioMessageRecordingViewDidCancel:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"IMService"];
  [validationsCopy validateClass:@"IMService" hasClassMethod:@"iMessageService" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKConversation" hasInstanceMethod:@"sendButtonColor" withFullSignature:{"c", 0}];
  [validationsCopy validateClass:@"CKConversation" hasInstanceMethod:@"sendingService" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKBrowserSwitcherFooterView" hasInstanceMethod:@"appStripCollectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKInlineReplyChatController"];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
}

- (void)_accessibilityApplyAudioButtonLabel
{
  v5 = [(CKMessageEntryViewAccessibility *)self safeUIViewForKey:@"audioButton"];
  [v5 setAccessibilityIdentifier:@"axAudioButton"];
  v2 = accessibilityLocalizedString(@"audio.button.label");
  [v5 setAccessibilityLabel:v2];

  v3 = accessibilityLocalizedString(@"audio.button.hint");
  [v5 setAccessibilityHint:v3];

  v4 = accessibilityLocalizedString(@"audio.button.hint.macos");
  [v5 _accessibilitySetElementHelp:v4];

  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7FC8] | *MEMORY[0x29EDC7F70]];
}

- (void)_accessibilityApplyEmojiButtonLabel
{
  v3 = [(CKMessageEntryViewAccessibility *)self safeUIViewForKey:@"emojiButton"];
  v2 = accessibilityLocalizedString(@"emoji.button.text");
  [v3 setAccessibilityLabel:v2];
}

- (void)_accessibilitySendButtonLabel
{
  _axSendButtonKey = [(CKMessageEntryViewAccessibility *)self _axSendButtonKey];
  v4 = [(CKMessageEntryViewAccessibility *)self safeUIViewForKey:_axSendButtonKey];

  [v4 setIsAccessibilityElement:1];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __64__CKMessageEntryViewAccessibility__accessibilitySendButtonLabel__block_invoke;
  v5[3] = &unk_29F2B0908;
  objc_copyWeak(&v6, &location);
  [v4 setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __64__CKMessageEntryViewAccessibility__accessibilitySendButtonLabel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"delegate"];

  NSClassFromString(&cfstr_Ckinlinereplyc_2.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = @"send.button.reply.text";
  }

  else
  {
    v3 = @"send.button.text";
  }

  v4 = accessibilityLocalizedString(v3);

  return v4;
}

- (void)_accessibilityApplySendButtonHint
{
  v3 = [(CKMessageEntryViewAccessibility *)self safeValueForKey:@"conversation"];
  v4 = __UIAccessibilitySafeClass();

  if (v4)
  {
    v5 = [v4 safeValueForKey:@"sendButtonColor"];
    integerValue = [v5 integerValue];
    v7 = integerValue;

    if (integerValue == 6)
    {
      v8 = @"send.message.button.hint.business.chat";
    }

    else if (integerValue == 1)
    {
      v8 = @"send.message.button.hint.imessage";
    }

    else
    {
      if (integerValue)
      {
        v9 = 0;
        goto LABEL_11;
      }

      v8 = @"send.message.button.hint.sms";
    }

    v9 = accessibilityLocalizedString(v8);
  }

  else
  {
    v9 = 0;
    v7 = -1;
  }

LABEL_11:
  v10 = [(CKMessageEntryViewAccessibility *)self safeValueForKey:@"conversation"];
  v11 = [v10 safeValueForKey:@"sendingService"];
  v12 = [NSClassFromString(&cfstr_Imservice.isa) safeValueForKey:@"iMessageService"];
  if (v11 != v12 || ![(CKMessageEntryViewAccessibility *)self safeBoolForKey:@"shouldAllowImpactSend"])
  {

LABEL_19:
    goto LABEL_20;
  }

  if (v7 != 6)
  {
    if (AXForceTouchAvailableAndEnabled())
    {
      v13 = @"send.button.hint.force";
    }

    else
    {
      v13 = @"send.button.hint.longpress";
    }

    v10 = accessibilityLocalizedString(v13);
    v18 = v10;
    v19 = @"__AXStringForVariablesSentinel";
    __UIAXStringForVariables();
    v9 = v11 = v9;
    goto LABEL_19;
  }

LABEL_20:
  v14 = [(CKMessageEntryViewAccessibility *)self _axSendButtonKey:v18];
  v15 = [(CKMessageEntryViewAccessibility *)self safeValueForKey:v14];
  [v15 setAccessibilityHint:v9];

  _axSendButtonKey = [(CKMessageEntryViewAccessibility *)self _axSendButtonKey];
  v17 = [(CKMessageEntryViewAccessibility *)self safeValueForKey:_axSendButtonKey];
  [v17 _accessibilitySetElementHelp:v9];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CKMessageEntryViewAccessibility;
  [(CKMessageEntryViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  [(CKMessageEntryViewAccessibility *)self setAccessibilityIdentifier:@"MessageEntryView"];
  v3 = [(CKMessageEntryViewAccessibility *)self safeValueForKey:@"_characterCountLabel"];
  [v3 setAccessibilityIdentifier:@"CharacterCount"];

  _axSendButtonKey = [(CKMessageEntryViewAccessibility *)self _axSendButtonKey];
  v5 = [(CKMessageEntryViewAccessibility *)self safeValueForKey:_axSendButtonKey];
  [v5 setAccessibilityIdentifier:@"sendButton"];

  [(CKMessageEntryViewAccessibility *)self _accessibilitySendButtonLabel];
  [(CKMessageEntryViewAccessibility *)self _accessibilityApplySendButtonHint];
  [(CKMessageEntryViewAccessibility *)self _accessibilityApplyAudioButtonLabel];
  [(CKMessageEntryViewAccessibility *)self _accessibilityApplyEmojiButtonLabel];
}

- (CKMessageEntryViewAccessibility)initWithFrame:(CGRect)frame marginInsets:(UIEdgeInsets)insets shouldAllowImpact:(BOOL)impact shouldShowSendButton:(BOOL)button shouldShowSubject:(BOOL)subject shouldShowPluginButtons:(BOOL)buttons shouldShowCharacterCount:(BOOL)count traitCollection:(id)self0 shouldDisableAttachments:(BOOL)self1 shouldUseNonEmojiKeyboard:(BOOL)self2 shouldUseNonHandwritingKeyboard:(BOOL)self3 shouldDisableKeyboardStickers:(BOOL)self4 shouldAllowPollSuggestions:(BOOL)self5 translationLanguage:(id)self6
{
  v19.receiver = self;
  v19.super_class = CKMessageEntryViewAccessibility;
  *(&v18 + 3) = __PAIR16__(suggestions, stickers);
  *(&v18 + 1) = __PAIR16__(handwritingKeyboard, keyboard);
  LOBYTE(v18) = attachments;
  language = [(CKMessageEntryViewAccessibility *)&v19 initWithFrame:impact marginInsets:button shouldAllowImpact:subject shouldShowSendButton:buttons shouldShowSubject:count shouldShowPluginButtons:collection shouldShowCharacterCount:frame.origin.x traitCollection:frame.origin.y shouldDisableAttachments:frame.size.width shouldUseNonEmojiKeyboard:frame.size.height shouldUseNonHandwritingKeyboard:insets.top shouldDisableKeyboardStickers:insets.left shouldAllowPollSuggestions:insets.bottom translationLanguage:insets.right, v18, language];
  [(CKMessageEntryViewAccessibility *)language _accessibilityLoadAccessibilityInformation];

  return language;
}

- (void)updateEntryView
{
  v3.receiver = self;
  v3.super_class = CKMessageEntryViewAccessibility;
  [(CKMessageEntryViewAccessibility *)&v3 updateEntryView];
  [(CKMessageEntryViewAccessibility *)self _accessibilityApplySendButtonHint];
}

- (void)keyCommandSend:(id)send
{
  v14 = *MEMORY[0x29EDCA608];
  sendCopy = send;
  _accessibilityResponderElement = [*MEMORY[0x29EDC8008] _accessibilityResponderElement];
  if (UIAccessibilityIsVoiceOverRunning() && (v9[0] = MEMORY[0x29EDCA5F8], v9[1] = 3221225472, v9[2] = __50__CKMessageEntryViewAccessibility_keyCommandSend___block_invoke, v9[3] = &unk_29F2B0E70, v9[4] = self, [_accessibilityResponderElement _accessibilityFindViewAncestor:v9 startWithSelf:1], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = _accessibilityResponderElement;
      v12 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_29BCB0000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring key command because I'm not the focused element: %@ %@", buf, 0x16u);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKMessageEntryViewAccessibility;
    [(CKMessageEntryViewAccessibility *)&v8 keyCommandSend:sendCopy];
  }
}

- (void)touchUpInsideSendButton:(id)button
{
  v4.receiver = self;
  v4.super_class = CKMessageEntryViewAccessibility;
  [(CKMessageEntryViewAccessibility *)&v4 touchUpInsideSendButton:button];
  [(CKMessageEntryViewAccessibility *)self _postSentAnnouncementIfNeeded];
}

- (void)audioMessageRecordingViewDidCancel:(id)cancel
{
  v3.receiver = self;
  v3.super_class = CKMessageEntryViewAccessibility;
  [(CKMessageEntryViewAccessibility *)&v3 audioMessageRecordingViewDidCancel:cancel];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_postSentAnnouncementIfNeeded
{
  if ([(CKMessageEntryViewAccessibility *)self safeBoolForKey:@"hasRecording"])
  {
    v2 = *MEMORY[0x29EDC7EA8];
    v3 = accessibilityLocalizedString(@"sent");
    UIAccessibilityPostNotification(v2, v3);
  }
}

- (id)_axSendButtonKey
{
  mEMORY[0x29EDC5590] = [MEMORY[0x29EDC5590] sharedFeatureFlags];
  if ([mEMORY[0x29EDC5590] isEntryViewRefreshEnabled])
  {
    v3 = @"_glassSendButton";
  }

  else
  {
    v3 = @"_sendButton";
  }

  v4 = v3;

  return v3;
}

@end