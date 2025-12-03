@interface AXChatKitGlue
+ (void)_handleMessageReceived:(id)received;
+ (void)accessibilityInitializeBundle;
@end

@implementation AXChatKitGlue

+ (void)accessibilityInitializeBundle
{
  if (!_Failover)
  {
    mEMORY[0x29EDBD6E8] = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8] performValidations:&__block_literal_global withPreValidationHandler:&__block_literal_global_454 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_463];

    mEMORY[0x29EDBD6E8]2 = [MEMORY[0x29EDBD6E8] sharedInstance];
    [mEMORY[0x29EDBD6E8]2 installSafeCategories:&__block_literal_global_1020 afterDelay:@"ChatKit AX Bundle" validationTargetName:@"ChatKit" overrideProcessName:1.0];

    AXPerformBlockOnMainThreadAfterDelay();
    mEMORY[0x29EDBD690] = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690] addHandler:&__block_literal_global_1031 forBundleName:@"MSMessageExtensionBalloonPlugin"];

    mEMORY[0x29EDBD690]2 = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690]2 addHandler:&__block_literal_global_1058 forBundleName:@"HandwritingProvider"];

    mEMORY[0x29EDBD690]3 = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690]3 addHandler:&__block_literal_global_1093 forFramework:@"ElectricTouch"];

    mEMORY[0x29EDBD690]4 = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690]4 addHandler:&__block_literal_global_1110 forFramework:@"ClipServices"];

    mEMORY[0x29EDBD690]5 = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690]5 addHandler:&__block_literal_global_1127 forFramework:@"LinkPresentation"];

    mEMORY[0x29EDBD690]6 = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690]6 addHandler:&__block_literal_global_1148 forBundleID:@"com.apple.Jellyfish.MessagesExtension"];

    mEMORY[0x29EDBD690]7 = [MEMORY[0x29EDBD690] sharedInstance];
    [mEMORY[0x29EDBD690]7 addHandler:&__block_literal_global_1156 forBundleName:@"UIKit.axbundle"];
  }
}

uint64_t __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"CKBalloonView"];
  [v2 validateClass:@"CKImageBalloonView"];
  [v2 validateClass:@"CKMovieMediaObject"];
  [v2 validateClass:@"CKImageMediaObject"];
  [v2 validateClass:@"CKActionMenuWindow"];
  [v2 validateClass:@"CKConversation"];
  [v2 validateClass:@"CKConversation" hasInstanceMethod:@"isMuted" withFullSignature:{"B", 0}];
  [v2 validateClass:@"CKConversation" hasInstanceMethod:@"hasUnreadMessages" withFullSignature:{"B", 0}];
  [v2 validateClass:@"CKActionMenuWindow" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CKAttachmentBalloonView" isKindOfClass:@"CKBalloonView"];
  [v2 validateClass:@"CKEntity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"chatItems" withFullSignature:{"@", 0}];
  [v2 validateClass:@"IMChat" hasInstanceMethod:@"lastIncomingMessage" withFullSignature:{"@", 0}];
  [v2 validateClass:@"IMMessage" hasInstanceMethod:@"subject" withFullSignature:{"@", 0}];
  [v2 validateClass:@"IMMessage" hasInstanceMethod:@"sender" withFullSignature:{"@", 0}];
  [v2 validateClass:@"IMMessage" hasInstanceMethod:@"plainBody" withFullSignature:{"@", 0}];
  [v2 validateClass:@"IMMessage" hasInstanceMethod:@"inlineAttachmentAttributesArray" withFullSignature:{"@", 0}];
  [v2 validateClass:@"IMHandle" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [v2 validateClass:@"IMHandle" hasInstanceMethod:@"nameAndEmail" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CKConversationList"];
  [v2 validateClass:@"CKConversationList" hasClassMethod:@"sharedConversationList" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CKConversationList" hasInstanceMethod:@"conversationForExistingChat:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"CKRecipientSelectionController" hasInstanceMethod:@"toField" withFullSignature:{"@", 0}];
  [v2 validateClass:@"CKConversationListCell"];
  [v2 validateClass:@"CKConversationListCell"];
  [v2 validateClass:@"CKConversationListCell" hasInstanceVariable:@"_dateLabel" withType:"CKDateLabel"];
  [v2 validateClass:@"CKConversationListCell" hasInstanceVariable:@"_summaryLabel" withType:"UILabel"];
  [v2 validateClass:@"CKChatController"];
  [v2 validateClass:@"CKChatController" hasInstanceMethod:@"messageEntryViewSendButtonHit:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"CKChatController" hasInstanceMethod:@"_showPhotoPickerWithSourceType:" withFullSignature:{"v", "q", 0}];
  [v2 validateClass:@"CKChatController" hasInstanceMethod:@"_showVCalViewerForMediaObject:" withFullSignature:{"v", "@", 0}];
  [v2 validateClass:@"CKChatController" hasInstanceVariable:@"_conversation" withType:"CKConversation"];
  [v2 validateClass:@"CKMessageEntryView" hasInstanceVariable:@"_characterCountLabel" withType:"UILabel"];
  [v2 validateClass:@"CKMessageEntryView" hasInstanceVariable:@"_sendButton" withType:"CKEntryViewButton"];

  return 1;
}

uint64_t __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"ChatKit AX Bundle"];
  [v2 setOverrideProcessName:@"ChatKit"];
  [v2 setDebugBuild:0];

  return MEMORY[0x2A1C5E698]();
}

void __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 installSafeCategory:@"UITextFieldAccessibility__ChatKit__UIKit" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"UINavigationButtonAccessibility__ChatKit__UIKit" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"UIButtonAccessibility__ChatKit__UIKit" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"UILabelAccessibility__ChatKit__UIKit" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"_UIKBCompatInputViewAccessibility__ChatKit__UIKit" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"UIWindowAccessibility__ChatKit__UIKit" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"UITextEffectsWindowAccessibility__ChatKit__UIKit" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTextBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKImageBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAttachmentBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTranscriptPluginBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKRichLinkReplyPreviewBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAggregateAcknowledgmentBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKContactBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAudioBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKInlineStickerBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKLocationShareBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAutoloopMovieBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKPhotoStackBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKLinkBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTranscriptMessageCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMessageEntryTextViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMessageEntryContentViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKBalloonTextViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTranscriptBalloonCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTranscriptTypingIndicatorCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMessageEntryRecordedAudioViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAudioRecorderAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTranscriptCollectionViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKActionMenuItemImageViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKActionMenuItemAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKActionMenuWindowAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKActionMenuViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKSpeakerButtonAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKPresentationControllerWindowAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTranscriptCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTranscriptStatusCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTranscriptLabelCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAggregateAcknowledgmentChatItemAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKFullScreenBalloonViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"IMMessageAcknowledgmentChatItemAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKNicknameBannerViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKVideoCancelActionMenuItemAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"_CKVideoMessageRecordingWindowAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKVideoMessageRecordingViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"_MFAtomTextViewAccessibility__ChatKit__MessageUI" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"UIInputSetHostViewAccessibility__ChatKit__UIKit" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKSharedAssetCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKDetailsChildViewControllerCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKUIBehaviorAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTranscriptGroupHeaderViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMacRecipientsControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAttachmentCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKRecipientSelectionControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKRecipientSelectionViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CAMShutterButtonAccessibility__ChatKit__CameraKit" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKConversationListCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKConversationListNewMessageCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKConversationListNewMessageCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTranscriptDNDCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMessageEntryViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMessageEntryRichTextViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKEntryViewButtonAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKChatControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKImageAttachmentItemAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKLocationAttachmentItemAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMovieAttachmentItemAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTranscriptManagementNameFieldAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAvatarNavigationBarAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKCanvasBackButtonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKCoreChatControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKHandwritingWindowAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKChatInputControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKHandwritingPresentationControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTUConversationBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKVideoPlayerBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKNavBarUnifiedCallButtonAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAudioMessageRecordingViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"AudioMessageRecordingAppendButtonAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKEmbeddedRichLinkViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKBrowserSwitcherViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKBrowserSwitcherFooterViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKBrowserCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKFullscreenBrowserNavigationControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKEffectPickerViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKUIPageControlAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKUICollectionViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKDetailsControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKDetailsChatOptionsCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKDetailsChatOptionsCheckboxCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKDetailsContactsTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKDetailsDownloadAttachmentsHeaderFooterViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKDetailsSearchResultsTitleHeaderCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKDetailsLocationShareHeaderFooterViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKDetailsLocationShareCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKDetailsSeparatorCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKDefaultPluginEntryViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"UIAccessibilityElementKBKeyChatKitAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"UIAccessibilityElementKBEmojiCategoryChatKitAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"UIKeyboardEmojiCollectionViewCellAccessibility__ChatKit__UIKit" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAppManagerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKNotificationChatControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAppGrabberCloseButtonAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAppGrabberViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKFunCameraViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKNavbarCanvasViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKNavigationButtonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKNavigationBarCanvasViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKStickerDetailViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKStickerDetailCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKConversationSearchResultCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKLinkSearchControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKLinkSearchResultCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKPhotosSearchControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKPhotoSearchResultCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKLocationSearchControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKLocationSearchResultCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAttachmentsSearchControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAttachmentSearchResultCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKBrowserSwitcherCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMeCardNavigationControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKSearchViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKHighlightsSearchControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKConversationAvatarSearchResultCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKLargeTitleAccessoryViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKDetailsSearchViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMessagesControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKInlineReplyCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKInlineReplyChatControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKRecipientSearchListControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKConversationListCollectionViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKComposeNavbarCanvasViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKPinnedConversationViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKPinnedConversationCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMentionSuggestionCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMentionSuggestionViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKConversationListCollectionViewConversationCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKQuickActionSaveButtonAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKConversationListAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMessageHighlightButtonAccessibility" canInteractWithTargetClass:1];
  v2 = AXProcessGetName();
  v3 = [v2 isEqualToString:@"MessagesTranscriptExtension"];

  if (v3)
  {
    [v4 installSafeCategory:@"CKTranscriptExtensionViewControllerAccessibility" canInteractWithTargetClass:1];
  }

  [v4 installSafeCategory:@"CKMessagePartHighlightBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTranscriptActionButtonCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMediaObjectBackedAssetAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKEditableSearchResultCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKSyndicationPageViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKSyndicationContentViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMessageEditingBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMessageEditingViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKHyperlinkBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKEntryViewPlusButtonAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKSendMenuViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKSendMenuCollectionViewLayoutAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAudioMessageBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"SendMenuCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKComposeRecipientSelectionControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKBalloonImageViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKStickerTranscriptCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"AppCardContainerViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKComposeSubscriptionSelectorButtonAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"NavbarConversationTitleAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKFullScreenBalloonViewControllerPhoneAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"TapbackPickerCollectionViewCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"TapbackPickerEmojiTailViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"TapbackPickerCancelButtonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMentionsUtilitiesAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKMentionsControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTapbackPickerBalloonParentViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"TapbackPickerBalloonAccessoryViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"SendMenuCollectionViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKDetailsContactsStandardTableViewCellAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKAvatarButtonAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"TranscriptNavigationBarOrnamentViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTranscriptNavigationBarControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"RichLinkCardStackItemViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKSuggestedRepliesBalloonViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKCloudSyncNavBarStatusViewAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKGlassSendButtonAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKGlassSendMenuButtonAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKGlassCancelAudioRecordingButtonAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKReaderViewControllerAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKTranscriptLegibilityInternalButtonAccessibility" canInteractWithTargetClass:1];
  [v4 installSafeCategory:@"CKSuggestedReplyBalloonViewAccessibility" canInteractWithTargetClass:1];
}

void __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x29EDB9F48] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x29EDBD650]];

  if (v4)
  {
    v5 = [MEMORY[0x29EDBA068] defaultCenter];
    v6 = *MEMORY[0x29EDC5518];
    v7 = [MEMORY[0x29EDBA088] mainQueue];
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_6;
    v9[3] = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
    v9[4] = *(a1 + 32);
    v8 = [v5 addObserverForName:v6 object:0 queue:v7 usingBlock:v9];
  }
}

void __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 object];
  [v2 _handleMessageReceived:v3];
}

void __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_7()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_1033 withPreValidationHandler:&__block_literal_global_1035 postValidationHandler:&__block_literal_global_1038];
}

void __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"MSMessageExtensionBalloonView"];
  [v2 validateClass:@"MSMessageExtensionBalloonLiveView"];
  [v2 validateClass:@"MSMessageExtensionBalloonLiveView" hasInstanceMethod:@"payload" withFullSignature:{"@", 0}];
  [v2 validateClass:@"MSMessageExtensionDataSource"];
  [v2 validateClass:@"MSMessageExtensionDataSource" hasClassMethod:@"messagePayloadFromPluginPayload:" withFullSignature:{"@", "@", 0}];
  [v2 validateClass:@"MSMessageExtensionDataSource" isKindOfClass:@"IMBalloonPluginDataSource"];
  [v2 validateClass:@"IMBalloonPluginDataSource" hasInstanceMethod:@"payload" withFullSignature:{"@", 0}];
}

void __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_11()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_1060 withPreValidationHandler:&__block_literal_global_1086 postValidationHandler:&__block_literal_global_1088];
}

uint64_t __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"HWBalloonDataSource"];
  [v2 validateClass:@"HWBalloonDataSource" hasInstanceMethod:@"handwritingFromPayload" withFullSignature:{"@", 0}];
  [v2 validateClass:@"HWHandwritingItem"];
  [v2 validateClass:@"HWHandwritingItem" hasInstanceMethod:@"drawing" withFullSignature:{"@", 0}];
  [v2 validateClass:@"DKDrawing"];
  [v2 validateClass:@"DKDrawing" hasInstanceMethod:@"strokes" withFullSignature:{"@", 0}];
  [v2 validateClass:@"HWPluginContentView"];
  [v2 validateClass:@"HWPluginContentView" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];

  return 1;
}

void __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_15()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_1095 withPreValidationHandler:&__block_literal_global_1103 postValidationHandler:&__block_literal_global_1105];
}

void __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_19()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_1112 withPreValidationHandler:&__block_literal_global_1120 postValidationHandler:&__block_literal_global_1122];
}

uint64_t __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_20(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"CPSClipURL"];
  [v2 validateClass:@"CPSClipURL" hasClassMethod:@"isSupported" withFullSignature:{"B", 0}];

  return 1;
}

void __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_23()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_1129 withPreValidationHandler:&__block_literal_global_1141 postValidationHandler:&__block_literal_global_1143];
}

uint64_t __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_24(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"LPLinkView" hasInstanceVariable:@"_metadata" withType:"LPLinkMetadata"];
  [v2 validateClass:@"LPApplicationIdentification"];

  return 1;
}

void __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_28()
{
  v0 = MEMORY[0x29EDC7358];
  v1 = [MEMORY[0x29EDB9F48] bundleWithIdentifier:@"com.apple.Jellyfish.MessagesExtension"];
  [v0 loadAccessibilityBundleForBundle:v1 didLoadCallback:0];
}

void __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_29()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_1158 withPreValidationHandler:&__block_literal_global_1169 postValidationHandler:&__block_literal_global_1171];
}

uint64_t __46__AXChatKitGlue_accessibilityInitializeBundle__block_invoke_30(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"CKBalloonTextView" isKindOfClass:@"UITextView"];
  [v2 validateClass:@"UITextView" hasInstanceMethod:@"_accessibilityGetValue" withFullSignature:{"@", 0}];

  return 1;
}

+ (void)_handleMessageReceived:(id)received
{
  v37[1] = *MEMORY[0x29EDCA608];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  receivedCopy = received;
  AXPerformSafeBlock();
  v4 = v31[5];

  _Block_object_dispose(&v30, 8);
  if (([v4 safeBoolForKey:@"isMuted"] & 1) == 0)
  {
    LOBYTE(v30) = 0;
    v5 = [receivedCopy safeValueForKey:@"lastIncomingMessage"];
    v6 = __UIAccessibilitySafeClass();

    if (v30 == 1)
    {
      abort();
    }

    sender = [v6 sender];
    firstName = [sender firstName];

    if (firstName || ([v6 sender], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "name"), firstName = objc_claimAutoreleasedReturnValue(), v9, firstName) || (objc_msgSend(v6, "safeValueForKey:", @"sender"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "safeValueForKey:", @"nameAndEmail"), firstName = objc_claimAutoreleasedReturnValue(), v10, firstName))
    {
      v11 = [v6 descriptionForPurpose:0 inChat:receivedCopy senderDisplayName:firstName];
      v12 = MEMORY[0x29EDBA0F8];
      v13 = accessibilityLocalizedString(@"message.from.format");
      v14 = [v12 stringWithFormat:v13, firstName];
      v15 = __UIAXStringForVariables();

      fileTransferGUIDs = [v6 fileTransferGUIDs];
      firstObject = [fileTransferGUIDs firstObject];

      if ([firstObject length])
      {
        mEMORY[0x29EDC5528] = [MEMORY[0x29EDC5528] sharedInstance];
        v19 = [mEMORY[0x29EDC5528] transferForGUID:firstObject];

        attributionInfo = [v19 attributionInfo];
        v21 = [attributionInfo objectForKey:*MEMORY[0x29EDC5560]];

        if ([v21 length])
        {
          v22 = __UIAXStringForVariables();

          v15 = v22;
        }
      }

      v23 = MEMORY[0x29EDBA0F8];
      v24 = accessibilityLocalizedString(@"message.received");
      v25 = [v23 stringWithFormat:v24, v15];

      v26 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v25];
      v36 = *MEMORY[0x29EDBDA00];
      v37[0] = MEMORY[0x29EDB8EB0];
      v27 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      [v26 setAttributes:v27];

      v29 = v26;
      v28 = v26;
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }
}

void __40__AXChatKitGlue__handleMessageReceived___block_invoke(uint64_t a1)
{
  v5 = [NSClassFromString(&cfstr_Ckconversation_0.isa) safeValueForKey:@"sharedConversationList"];
  v2 = [v5 conversationForExistingChat:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end