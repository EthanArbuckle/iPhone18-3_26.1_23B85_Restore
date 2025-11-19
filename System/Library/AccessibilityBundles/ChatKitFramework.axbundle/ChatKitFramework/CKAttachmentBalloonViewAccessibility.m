@interface CKAttachmentBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CKAttachmentBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKMediaObject" hasInstanceMethod:@"UTIType" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMediaObject" hasInstanceMethod:@"mediaType" withFullSignature:{"i", 0}];
  [v3 validateClass:@"CKAttachmentBalloonView" hasInstanceMethod:@"attachmentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKAttachmentBalloonView" hasInstanceMethod:@"mediaObject" withFullSignature:{"@", 0}];
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
  v11 = [v10 _axMessageSender];
  v12 = [v10 _axReplyDescription];
  v13 = [v10 _axStickerDescription];
  v14 = [v10 _axAcknowledgmentDescription];
  v18 = [v10 _axMessageTime];
  v15 = __UIAXStringForVariables();

  return v15;
}

@end