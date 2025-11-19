@interface CKPhotoStackBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation CKPhotoStackBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKAggregateAttachmentMessagePartChatItem" hasInstanceMethod:@"aggregateChatItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKPhotoStackBalloonView" isKindOfClass:@"CKGenericPhotoStackBalloonView"];
  [v3 validateClass:@"CKGenericPhotoStackBalloonView" hasInstanceMethod:@"stackView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessagePartChatItem" hasInstanceMethod:@"visibleAssociatedMessageChatItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKAggregateAcknowledgmentChatItem"];
  [v3 validateClass:@"PXMessagesStackItemsLayout" hasInstanceMethod:@"primaryItemIndex" withFullSignature:{"q", 0}];
  [v3 validateClass:@"PXMessagesStackView" hasInstanceMethod:@"currentAssetReference" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXMessagesStackView" isKindOfClass:@"PXBaseMessagesStackView"];
  [v3 validateClass:@"PXBaseMessagesStackView" hasInstanceVariable:@"_layout" withType:"PXMessagesStackItemsLayout"];
  [v3 validateClass:@"PXAssetReference" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMediaObjectBackedAsset" hasInstanceMethod:@"playbackStyle" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsSafeCategory();
  v4 = [(CKPhotoStackBalloonViewAccessibility *)self _axChatItemForBalloon];
  v5 = [v4 safeArrayForKey:@"aggregateChatItems"];

  v6 = [(CKPhotoStackBalloonViewAccessibility *)self _accessibilityStackView];
  v7 = [v6 safeValueForKey:@"layout"];
  v8 = [v7 safeIntegerForKey:@"primaryItemIndex"];

  v9 = 0;
  if (v8 < [v5 count])
  {
    v10 = [v5 objectAtIndex:v8];
    v11 = [v10 safeArrayForKey:@"visibleAssociatedMessageChatItems"];
    v12 = [v11 ax_filteredArrayUsingBlock:&__block_literal_global_1431];
    v9 = [v12 firstObject];
  }

  v13 = [v5 count];
  v14 = MEMORY[0x29EDBA0F8];
  v15 = accessibilityLocalizedString(@"attachment.count");
  v16 = [v14 localizedStringWithFormat:v15, v13];

  v17 = [v3 _axMessageSender];
  v18 = [v3 _axReplyDescription];
  v19 = [v3 _axStickerDescription];
  v20 = [v9 accessibilityLabel];
  v23 = [v3 _axMessageTime];
  v21 = __UIAXStringForVariables();

  return v21;
}

uint64_t __58__CKPhotoStackBalloonViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Ckaggregateack_2.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityValue
{
  v3 = [(CKPhotoStackBalloonViewAccessibility *)self _axChatItemForBalloon];
  v4 = [v3 safeArrayForKey:@"aggregateChatItems"];

  v5 = [v4 count];
  v6 = [(CKPhotoStackBalloonViewAccessibility *)self _accessibilityStackView];
  v7 = [v6 safeValueForKey:@"layout"];
  v8 = [v7 safeIntegerForKey:@"primaryItemIndex"];

  v9 = [(CKPhotoStackBalloonViewAccessibility *)self _accessibilityStackView];
  v10 = [v9 safeValueForKeyPath:@"currentAssetReference.asset"];

  if ([v10 safeIntegerForKey:@"playbackStyle"] == 4)
  {
    v11 = @"video.attachment";
  }

  else
  {
    v11 = @"image.attachment";
  }

  v12 = accessibilityLocalizedString(v11);
  v13 = v8 + 1;
  v14 = MEMORY[0x29EDBA0F8];
  v15 = accessibilityLocalizedString(@"messages.attachment.stack.view.format");
  v18 = [v14 localizedStringWithFormat:v15, v13, v5];
  v16 = __UIAXStringForVariables();

  return v16;
}

- (void)accessibilityIncrement
{
  v2 = [(CKPhotoStackBalloonViewAccessibility *)self _accessibilityStackView];
  [v2 accessibilityIncrement];
}

- (void)accessibilityDecrement
{
  v2 = [(CKPhotoStackBalloonViewAccessibility *)self _accessibilityStackView];
  [v2 accessibilityDecrement];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(CKPhotoStackBalloonViewAccessibility *)self _accessibilityStackView];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v8.receiver = self;
  v8.super_class = CKPhotoStackBalloonViewAccessibility;
  v4 = [(CKPhotoStackBalloonViewAccessibility *)&v8 accessibilityCustomActions];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(CKPhotoStackBalloonViewAccessibility *)self _accessibilityStackView];
  v6 = [v5 accessibilityCustomActions];
  [v3 axSafelyAddObjectsFromArray:v6];

  return v3;
}

@end