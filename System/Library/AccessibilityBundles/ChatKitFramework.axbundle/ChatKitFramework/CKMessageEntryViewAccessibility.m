@interface CKMessageEntryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CKMessageEntryViewAccessibility)initWithFrame:(CGRect)a3 marginInsets:(UIEdgeInsets)a4 shouldAllowImpact:(BOOL)a5 shouldShowSendButton:(BOOL)a6 shouldShowSubject:(BOOL)a7 shouldShowPluginButtons:(BOOL)a8 shouldShowCharacterCount:(BOOL)a9 traitCollection:(id)a10 shouldDisableAttachments:(BOOL)a11 shouldUseNonEmojiKeyboard:(BOOL)a12 shouldUseNonHandwritingKeyboard:(BOOL)a13 shouldDisableKeyboardStickers:(BOOL)a14 shouldAllowPollSuggestions:(BOOL)a15 translationLanguage:(id)a16;
- (id)_axSendButtonKey;
- (void)_accessibilityApplyAudioButtonLabel;
- (void)_accessibilityApplyEmojiButtonLabel;
- (void)_accessibilityApplySendButtonHint;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySendButtonLabel;
- (void)_postSentAnnouncementIfNeeded;
- (void)audioMessageRecordingViewDidCancel:(id)a3;
- (void)keyCommandSend:(id)a3;
- (void)touchUpInsideSendButton:(id)a3;
- (void)updateEntryView;
@end

@implementation CKMessageEntryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"initWithFrame:marginInsets:shouldAllowImpact:shouldShowSendButton:shouldShowSubject:shouldShowPluginButtons:shouldShowCharacterCount:traitCollection:shouldDisableAttachments:shouldUseNonEmojiKeyboard:shouldUseNonHandwritingKeyboard:shouldDisableKeyboardStickers:shouldAllowPollSuggestions:translationLanguage:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "{UIEdgeInsets=dddd}", "B", "B", "B", "B", "B", "@", "B", "B", "B", "B", "B", "@", 0}];
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"keyCommandSend:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"hasRecording" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"updateEntryView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"touchUpInsideSendButton:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CKActionMenuController" hasInstanceMethod:@"isActionMenuVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"audioButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKChatController" hasInstanceMethod:@"videoMessageRecordingViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKVideoMessageRecordingViewController" hasInstanceVariable:@"_presented" withType:"B"];
  [v3 validateClass:@"CKMessageEntryRecordedAudioView" hasInstanceMethod:@"waveformImageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKActionMenuController" hasInstanceMethod:@"actionMenuItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKRecordActionMenuItem" isKindOfClass:@"CKActionMenuItemView"];
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"conversation" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"shouldAllowImpactSend" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"inputDelegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"sendButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"glassSendButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"emojiButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"audioMessageRecordingViewDidCancel:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"IMService"];
  [v3 validateClass:@"IMService" hasClassMethod:@"iMessageService" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversation" hasInstanceMethod:@"sendButtonColor" withFullSignature:{"c", 0}];
  [v3 validateClass:@"CKConversation" hasInstanceMethod:@"sendingService" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKBrowserSwitcherFooterView" hasInstanceMethod:@"appStripCollectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKInlineReplyChatController"];
  [v3 validateClass:@"CKMessageEntryView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
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
  v3 = [(CKMessageEntryViewAccessibility *)self _axSendButtonKey];
  v4 = [(CKMessageEntryViewAccessibility *)self safeUIViewForKey:v3];

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
    v6 = [v5 integerValue];
    v7 = v6;

    if (v6 == 6)
    {
      v8 = @"send.message.button.hint.business.chat";
    }

    else if (v6 == 1)
    {
      v8 = @"send.message.button.hint.imessage";
    }

    else
    {
      if (v6)
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

  v16 = [(CKMessageEntryViewAccessibility *)self _axSendButtonKey];
  v17 = [(CKMessageEntryViewAccessibility *)self safeValueForKey:v16];
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

  v4 = [(CKMessageEntryViewAccessibility *)self _axSendButtonKey];
  v5 = [(CKMessageEntryViewAccessibility *)self safeValueForKey:v4];
  [v5 setAccessibilityIdentifier:@"sendButton"];

  [(CKMessageEntryViewAccessibility *)self _accessibilitySendButtonLabel];
  [(CKMessageEntryViewAccessibility *)self _accessibilityApplySendButtonHint];
  [(CKMessageEntryViewAccessibility *)self _accessibilityApplyAudioButtonLabel];
  [(CKMessageEntryViewAccessibility *)self _accessibilityApplyEmojiButtonLabel];
}

- (CKMessageEntryViewAccessibility)initWithFrame:(CGRect)a3 marginInsets:(UIEdgeInsets)a4 shouldAllowImpact:(BOOL)a5 shouldShowSendButton:(BOOL)a6 shouldShowSubject:(BOOL)a7 shouldShowPluginButtons:(BOOL)a8 shouldShowCharacterCount:(BOOL)a9 traitCollection:(id)a10 shouldDisableAttachments:(BOOL)a11 shouldUseNonEmojiKeyboard:(BOOL)a12 shouldUseNonHandwritingKeyboard:(BOOL)a13 shouldDisableKeyboardStickers:(BOOL)a14 shouldAllowPollSuggestions:(BOOL)a15 translationLanguage:(id)a16
{
  v19.receiver = self;
  v19.super_class = CKMessageEntryViewAccessibility;
  *(&v18 + 3) = __PAIR16__(a15, a14);
  *(&v18 + 1) = __PAIR16__(a13, a12);
  LOBYTE(v18) = a11;
  v16 = [(CKMessageEntryViewAccessibility *)&v19 initWithFrame:a5 marginInsets:a6 shouldAllowImpact:a7 shouldShowSendButton:a8 shouldShowSubject:a9 shouldShowPluginButtons:a10 shouldShowCharacterCount:a3.origin.x traitCollection:a3.origin.y shouldDisableAttachments:a3.size.width shouldUseNonEmojiKeyboard:a3.size.height shouldUseNonHandwritingKeyboard:a4.top shouldDisableKeyboardStickers:a4.left shouldAllowPollSuggestions:a4.bottom translationLanguage:a4.right, v18, a16];
  [(CKMessageEntryViewAccessibility *)v16 _accessibilityLoadAccessibilityInformation];

  return v16;
}

- (void)updateEntryView
{
  v3.receiver = self;
  v3.super_class = CKMessageEntryViewAccessibility;
  [(CKMessageEntryViewAccessibility *)&v3 updateEntryView];
  [(CKMessageEntryViewAccessibility *)self _accessibilityApplySendButtonHint];
}

- (void)keyCommandSend:(id)a3
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [*MEMORY[0x29EDC8008] _accessibilityResponderElement];
  if (UIAccessibilityIsVoiceOverRunning() && (v9[0] = MEMORY[0x29EDCA5F8], v9[1] = 3221225472, v9[2] = __50__CKMessageEntryViewAccessibility_keyCommandSend___block_invoke, v9[3] = &unk_29F2B0E70, v9[4] = self, [v5 _accessibilityFindViewAncestor:v9 startWithSelf:1], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = self;
      _os_log_impl(&dword_29BCB0000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring key command because I'm not the focused element: %@ %@", buf, 0x16u);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKMessageEntryViewAccessibility;
    [(CKMessageEntryViewAccessibility *)&v8 keyCommandSend:v4];
  }
}

- (void)touchUpInsideSendButton:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKMessageEntryViewAccessibility;
  [(CKMessageEntryViewAccessibility *)&v4 touchUpInsideSendButton:a3];
  [(CKMessageEntryViewAccessibility *)self _postSentAnnouncementIfNeeded];
}

- (void)audioMessageRecordingViewDidCancel:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKMessageEntryViewAccessibility;
  [(CKMessageEntryViewAccessibility *)&v3 audioMessageRecordingViewDidCancel:a3];
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
  v2 = [MEMORY[0x29EDC5590] sharedFeatureFlags];
  if ([v2 isEntryViewRefreshEnabled])
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