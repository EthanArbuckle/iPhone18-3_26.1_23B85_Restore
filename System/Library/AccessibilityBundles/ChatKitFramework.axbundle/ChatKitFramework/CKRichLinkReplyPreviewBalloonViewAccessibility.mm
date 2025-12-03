@interface CKRichLinkReplyPreviewBalloonViewAccessibility
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation CKRichLinkReplyPreviewBalloonViewAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsSafeCategory();
  v4 = [(CKRichLinkReplyPreviewBalloonViewAccessibility *)self safeValueForKey:@"linkView"];
  accessibilityLabel = [v4 accessibilityLabel];

  _axMessageSender = [v3 _axMessageSender];
  _axReplyDescription = [v3 _axReplyDescription];
  _axStickerDescription = [v3 _axStickerDescription];
  _axAcknowledgmentDescription = [v3 _axAcknowledgmentDescription];
  _axMessageTime = [v3 _axMessageTime];
  v10 = __UIAXStringForVariables();

  return v10;
}

- (id)accessibilityCustomActions
{
  v3 = [(CKRichLinkReplyPreviewBalloonViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_1335 startWithSelf:1];
  v4 = v3;
  if (v3 && [v3 safeBoolForKey:@"isReplyContextPreview"])
  {
    array = [MEMORY[0x29EDB8DE8] array];
    objc_initWeak(&location, self);
    v6 = objc_alloc(MEMORY[0x29EDC78E0]);
    v7 = accessibilityLocalizedString(@"balloon.message.openthread.action");
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __76__CKRichLinkReplyPreviewBalloonViewAccessibility_accessibilityCustomActions__block_invoke_2;
    v11[3] = &unk_29F2B0958;
    objc_copyWeak(&v12, &location);
    v8 = [v6 initWithName:v7 actionHandler:v11];

    [array axSafelyAddObject:v8];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CKRichLinkReplyPreviewBalloonViewAccessibility;
    array = [(CKRichLinkReplyPreviewBalloonViewAccessibility *)&v10 accessibilityCustomActions];
  }

  return array;
}

uint64_t __76__CKRichLinkReplyPreviewBalloonViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Cktranscriptme_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __76__CKRichLinkReplyPreviewBalloonViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  AXPerformSafeBlock();

  return 1;
}

@end