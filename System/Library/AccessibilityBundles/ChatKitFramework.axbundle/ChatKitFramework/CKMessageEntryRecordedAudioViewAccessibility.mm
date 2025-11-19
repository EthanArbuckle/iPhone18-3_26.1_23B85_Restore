@interface CKMessageEntryRecordedAudioViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityViewIsModal;
- (CKMessageEntryRecordedAudioViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityApplyPlayPauseDeleteButtonLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateProgress;
@end

@implementation CKMessageEntryRecordedAudioViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKActionMenuWindow"];
  [v3 validateClass:@"CKMessageEntryRecordedAudioView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CKActionMenuWindow" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKAudioMediaObject" isKindOfClass:@"CKAVMediaObject"];
  [v3 validateClass:@"CKMessageEntryRecordedAudioView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CKMessageEntryRecordedAudioView" hasInstanceMethod:@"audioMediaObject" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKAVMediaObject" hasInstanceMethod:@"duration" withFullSignature:{"d", 0}];
  [v3 validateClass:@"CKMessageEntryRecordedAudioView" hasInstanceMethod:@"waveformImageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKMessageEntryRecordedAudioView" hasInstanceMethod:@"updateProgress" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CKMessageEntryRecordedAudioView" hasInstanceMethod:@"isPlaying" withFullSignature:{"B", 0}];
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

- (CKMessageEntryRecordedAudioViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = CKMessageEntryRecordedAudioViewAccessibility;
  v3 = [(CKMessageEntryRecordedAudioViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(CKMessageEntryRecordedAudioViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (BOOL)accessibilityViewIsModal
{
  objc_opt_class();
  v2 = [NSClassFromString(&cfstr_Ckactionmenuwi.isa) sharedInstance];
  v3 = __UIAccessibilityCastAsClass();

  LOBYTE(v2) = [v3 isHidden];
  return v2 ^ 1;
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
  v6 = [v5 accessibilityTraits];
  [v5 setAccessibilityTraits:v6 & ~*MEMORY[0x29EDC7F88]];
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