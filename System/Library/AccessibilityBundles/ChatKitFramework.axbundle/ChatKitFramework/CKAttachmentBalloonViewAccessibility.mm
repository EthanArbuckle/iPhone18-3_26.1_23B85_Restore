@interface CKAttachmentBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CKAttachmentBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKMediaObject" hasInstanceMethod:@"UTIType" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMediaObject" hasInstanceMethod:@"mediaType" withFullSignature:{"i", 0}];
  [validationsCopy validateClass:@"CKAttachmentBalloonView" hasInstanceMethod:@"attachmentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKAttachmentBalloonView" hasInstanceMethod:@"mediaObject" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKAttachmentBalloonViewAccessibility *)self safeValueForKey:@"attachmentView"];
  v4 = [(CKAttachmentBalloonViewAccessibility *)self safeValueForKey:@"mediaObject"];
  v19 = [v4 safeValueForKey:@"UTIType"];
  LOBYTE(v17) = 1;
  _AXLogWithFacility();
  v5 = _AXCKStringForMediaType([v4 safeIntForKey:{@"mediaType", v17, @"icon: %@", v19}]);
  if ([v5 length])
  {
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"attachment.with.type");
    v8 = [v6 stringWithFormat:v7, v5];

    v5 = v8;
  }

  v9 = __UIAXStringForVariables();
  objc_opt_class();
  v10 = __UIAccessibilityCastAsSafeCategory();
  _axMessageSender = [v10 _axMessageSender];
  _axReplyDescription = [v10 _axReplyDescription];
  _axStickerDescription = [v10 _axStickerDescription];
  _axAcknowledgmentDescription = [v10 _axAcknowledgmentDescription];
  _axMessageTime = [v10 _axMessageTime];
  v15 = __UIAXStringForVariables();

  return v15;
}

@end