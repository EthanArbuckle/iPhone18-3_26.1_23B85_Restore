@interface CKMessageEntryRecordedAudioViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityViewIsModal;
- (CKMessageEntryRecordedAudioViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityApplyPlayPauseDeleteButtonLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateProgress;
@end

@implementation CKMessageEntryRecordedAudioViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKActionMenuWindow"];
  [validationsCopy validateClass:@"CKMessageEntryRecordedAudioView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CKActionMenuWindow" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKAudioMediaObject" isKindOfClass:@"CKAVMediaObject"];
  [validationsCopy validateClass:@"CKMessageEntryRecordedAudioView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CKMessageEntryRecordedAudioView" hasInstanceMethod:@"audioMediaObject" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKAVMediaObject" hasInstanceMethod:@"duration" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CKMessageEntryRecordedAudioView" hasInstanceMethod:@"waveformImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryRecordedAudioView" hasInstanceMethod:@"updateProgress" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CKMessageEntryRecordedAudioView" hasInstanceMethod:@"isPlaying" withFullSignature:{"B", 0}];
}

- (void)_accessibilityApplyPlayPauseDeleteButtonLabel
{
  v3 = [(CKMessageEntryRecordedAudioViewAccessibility *)self safeUIViewForKey:@"playPauseDeleteButton"];
  v2 = accessibilityLocalizedString(@"audio.message.delete.button");
  [v3 setAccessibilityLabel:v2];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CKMessageEntryRecordedAudioViewAccessibility;
  [(CKMessageEntryRecordedAudioViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CKMessageEntryRecordedAudioViewAccessibility *)self _accessibilityApplyPlayPauseDeleteButtonLabel];
}

- (CKMessageEntryRecordedAudioViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = CKMessageEntryRecordedAudioViewAccessibility;
  v3 = [(CKMessageEntryRecordedAudioViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(CKMessageEntryRecordedAudioViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (BOOL)accessibilityViewIsModal
{
  objc_opt_class();
  nSClassFromString(&cfstr_Ckactionmenuwi.isa) = [NSClassFromString(&cfstr_Ckactionmenuwi.isa) sharedInstance];
  v3 = __UIAccessibilityCastAsClass();

  LOBYTE(nSClassFromString(&cfstr_Ckactionmenuwi.isa)) = [v3 isHidden];
  return nSClassFromString(&cfstr_Ckactionmenuwi.isa) ^ 1;
}

- (void)updateProgress
{
  v11.receiver = self;
  v11.super_class = CKMessageEntryRecordedAudioViewAccessibility;
  [(CKMessageEntryRecordedAudioViewAccessibility *)&v11 updateProgress];
  v3 = [(CKMessageEntryRecordedAudioViewAccessibility *)self safeValueForKey:@"timeLabel"];
  [v3 setIsAccessibilityElement:0];

  objc_opt_class();
  v4 = [(CKMessageEntryRecordedAudioViewAccessibility *)self safeValueForKey:@"waveformImageView"];
  v5 = __UIAccessibilityCastAsClass();

  [v5 setIsAccessibilityElement:1];
  accessibilityTraits = [v5 accessibilityTraits];
  [v5 setAccessibilityTraits:accessibilityTraits & ~*MEMORY[0x29EDC7F88]];
  v7 = accessibilityLocalizedString(@"audio.duration.label");
  [v5 setAccessibilityLabel:v7];

  v8 = [(CKMessageEntryRecordedAudioViewAccessibility *)self safeValueForKey:@"audioMediaObject"];
  v9 = [v8 safeValueForKey:@"duration"];
  [v9 doubleValue];
  v10 = AXDurationStringForDuration();
  [v5 setAccessibilityValue:v10];

  [v5 setAccessibilityRespondsToUserInteraction:0];
}

@end