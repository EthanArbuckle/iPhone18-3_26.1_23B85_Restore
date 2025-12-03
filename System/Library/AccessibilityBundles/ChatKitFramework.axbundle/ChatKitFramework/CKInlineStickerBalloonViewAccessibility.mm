@interface CKInlineStickerBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsAttachedToOutgoingMessage;
- (id)_axBalloonContentDescription;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CKInlineStickerBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKInlineStickerBalloonView" isKindOfClass:@"CKBalloonImageView"];
  [validationsCopy validateClass:@"CKBalloonImageView" hasInstanceMethod:@"stickerAccessibilityDescription" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  if ([(CKInlineStickerBalloonViewAccessibility *)self _axIsAttachedToOutgoingMessage])
  {
    _axBalloonContentDescription = [(CKInlineStickerBalloonViewAccessibility *)self _axBalloonContentDescription];
    _axMessageSender = accessibilityLocalizedString(@"sticker.attached");
    v5 = __UIAXStringForVariables();
  }

  else
  {
    objc_opt_class();
    _axBalloonContentDescription = __UIAccessibilityCastAsSafeCategory();
    _axMessageSender = [_axBalloonContentDescription _axMessageSender];
    _axBalloonContentDescription2 = [(CKInlineStickerBalloonViewAccessibility *)self _axBalloonContentDescription];
    _axStickerDescription = [_axBalloonContentDescription _axStickerDescription];
    _axAcknowledgmentDescription = [_axBalloonContentDescription _axAcknowledgmentDescription];
    _axMessageTime = [_axBalloonContentDescription _axMessageTime];
    v5 = __UIAXStringForVariables();
  }

  return v5;
}

- (id)accessibilityCustomActions
{
  v7[1] = *MEMORY[0x29EDCA608];
  v2 = [(CKInlineStickerBalloonViewAccessibility *)self _accessibilityValueForKey:@"AXPluginClearActionProvider"];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = accessibilityLocalizedString(@"app.browser.clear.action.name");
    v4 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v3 target:v2 selector:sel__accessibilityClearPlugin];
    v7[0] = v4;
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = CKInlineStickerBalloonViewAccessibility;
  accessibilityTraits = [(CKInlineStickerBalloonViewAccessibility *)&v6 accessibilityTraits];
  if ([(CKInlineStickerBalloonViewAccessibility *)self _axIsAttachedToOutgoingMessage])
  {
    v4 = ~*MEMORY[0x29EDC7F70];
  }

  else
  {
    v4 = -1;
  }

  return v4 & accessibilityTraits;
}

- (id)_axBalloonContentDescription
{
  v2 = [(CKInlineStickerBalloonViewAccessibility *)self safeValueForKey:@"stickerAccessibilityDescription"];
  if (v2)
  {
    v3 = MEMORY[0x29EDBA0F8];
    v4 = accessibilityLocalizedString(@"sticker.label.format");
    v5 = [v3 localizedStringWithFormat:v4, v2];
  }

  else
  {
    v5 = accessibilityLocalizedString(@"sticker.unknown");
  }

  return v5;
}

- (BOOL)_axIsAttachedToOutgoingMessage
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsSafeCategory();
  _axChatItemForBalloon = [v2 _axChatItemForBalloon];
  v4 = _axChatItemForBalloon == 0;

  return v4;
}

@end