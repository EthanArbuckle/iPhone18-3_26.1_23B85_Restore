@interface CKPhotoStackBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation CKPhotoStackBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKAggregateAttachmentMessagePartChatItem" hasInstanceMethod:@"aggregateChatItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKPhotoStackBalloonView" isKindOfClass:@"CKGenericPhotoStackBalloonView"];
  [validationsCopy validateClass:@"CKGenericPhotoStackBalloonView" hasInstanceMethod:@"stackView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessagePartChatItem" hasInstanceMethod:@"visibleAssociatedMessageChatItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKAggregateAcknowledgmentChatItem"];
  [validationsCopy validateClass:@"PXMessagesStackItemsLayout" hasInstanceMethod:@"primaryItemIndex" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"PXMessagesStackView" hasInstanceMethod:@"currentAssetReference" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXMessagesStackView" isKindOfClass:@"PXBaseMessagesStackView"];
  [validationsCopy validateClass:@"PXBaseMessagesStackView" hasInstanceVariable:@"_layout" withType:"PXMessagesStackItemsLayout"];
  [validationsCopy validateClass:@"PXAssetReference" hasInstanceMethod:@"asset" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMediaObjectBackedAsset" hasInstanceMethod:@"playbackStyle" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsSafeCategory();
  _axChatItemForBalloon = [(CKPhotoStackBalloonViewAccessibility *)self _axChatItemForBalloon];
  v5 = [_axChatItemForBalloon safeArrayForKey:@"aggregateChatItems"];

  _accessibilityStackView = [(CKPhotoStackBalloonViewAccessibility *)self _accessibilityStackView];
  v7 = [_accessibilityStackView safeValueForKey:@"layout"];
  v8 = [v7 safeIntegerForKey:@"primaryItemIndex"];

  firstObject = 0;
  if (v8 < [v5 count])
  {
    v10 = [v5 objectAtIndex:v8];
    v11 = [v10 safeArrayForKey:@"visibleAssociatedMessageChatItems"];
    v12 = [v11 ax_filteredArrayUsingBlock:&__block_literal_global_1431];
    firstObject = [v12 firstObject];
  }

  v13 = [v5 count];
  v14 = MEMORY[0x29EDBA0F8];
  v15 = accessibilityLocalizedString(@"attachment.count");
  v16 = [v14 localizedStringWithFormat:v15, v13];

  _axMessageSender = [v3 _axMessageSender];
  _axReplyDescription = [v3 _axReplyDescription];
  _axStickerDescription = [v3 _axStickerDescription];
  accessibilityLabel = [firstObject accessibilityLabel];
  _axMessageTime = [v3 _axMessageTime];
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
  _axChatItemForBalloon = [(CKPhotoStackBalloonViewAccessibility *)self _axChatItemForBalloon];
  v4 = [_axChatItemForBalloon safeArrayForKey:@"aggregateChatItems"];

  v5 = [v4 count];
  _accessibilityStackView = [(CKPhotoStackBalloonViewAccessibility *)self _accessibilityStackView];
  v7 = [_accessibilityStackView safeValueForKey:@"layout"];
  v8 = [v7 safeIntegerForKey:@"primaryItemIndex"];

  _accessibilityStackView2 = [(CKPhotoStackBalloonViewAccessibility *)self _accessibilityStackView];
  v10 = [_accessibilityStackView2 safeValueForKeyPath:@"currentAssetReference.asset"];

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
  _accessibilityStackView = [(CKPhotoStackBalloonViewAccessibility *)self _accessibilityStackView];
  [_accessibilityStackView accessibilityIncrement];
}

- (void)accessibilityDecrement
{
  _accessibilityStackView = [(CKPhotoStackBalloonViewAccessibility *)self _accessibilityStackView];
  [_accessibilityStackView accessibilityDecrement];
}

- (CGPoint)accessibilityActivationPoint
{
  _accessibilityStackView = [(CKPhotoStackBalloonViewAccessibility *)self _accessibilityStackView];
  [_accessibilityStackView accessibilityActivationPoint];
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
  array = [MEMORY[0x29EDB8DE8] array];
  v8.receiver = self;
  v8.super_class = CKPhotoStackBalloonViewAccessibility;
  accessibilityCustomActions = [(CKPhotoStackBalloonViewAccessibility *)&v8 accessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:accessibilityCustomActions];

  _accessibilityStackView = [(CKPhotoStackBalloonViewAccessibility *)self _accessibilityStackView];
  accessibilityCustomActions2 = [_accessibilityStackView accessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:accessibilityCustomActions2];

  return array;
}

@end