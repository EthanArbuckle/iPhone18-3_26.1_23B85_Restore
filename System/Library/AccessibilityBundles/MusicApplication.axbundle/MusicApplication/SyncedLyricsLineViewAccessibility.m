@interface SyncedLyricsLineViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SyncedLyricsLineViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicCoreUI.SyncedLyricsLineView" isKindOfClass:@"UIControl"];
  [v3 validateClass:@"UIControl" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MusicCoreUI.SyncedLyricsLineView" hasSwiftField:@"containerView" withSwiftType:"UIView"];
  [v3 validateClass:@"MusicTextContentView"];
  [v3 validateClass:@"MusicTextContentView" hasSwiftField:@"label" withSwiftType:"UILabel"];
  [v3 validateClass:@"MusicSBS_TextContentView"];
  [v3 validateClass:@"MusicSBS_TextContentView" hasSwiftField:@"text" withSwiftType:"Optional<String>"];
  [v3 validateClass:@"MusicSBS_TextContentView" hasSwiftField:@"attributedText" withSwiftType:"Optional<NSAttributedString>"];
  [v3 validateClass:@"MusicInstrumentalContentView"];
  [v3 validateClass:@"MusicCoreUI.SyncedLyricsLineView" hasInstanceMethod:@"setSelected:animator:" withFullSignature:{"v", "B", "@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(SyncedLyricsLineViewAccessibility *)self safeBoolForKey:@"isSelected"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(SyncedLyricsLineViewAccessibility *)self safeSwiftValueForKey:@"containerView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2DD0](@"MusicSBS_TextContentView")];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 safeSwiftValueForKey:@"text"];
    v8 = v7;
    if (v7)
    {
      v8 = v7;
      v9 = v8;
      goto LABEL_11;
    }

    objc_opt_class();
    v14 = [v6 safeSwiftValueForKey:@"attributedText"];
    v12 = __UIAccessibilityCastAsClass();

    v13 = [v12 string];
    goto LABEL_9;
  }

  v8 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2DD0](@"MusicTextContentView")];
  if (!v8)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  v10 = [v8 safeSwiftValueForKey:@"label"];
  v11 = __UIAccessibilityCastAsClass();

  v9 = [v11 accessibilityLabel];

  if (!v9)
  {
LABEL_6:
    v12 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2DD0](@"MusicInstrumentalContentView")];
    if (!v12)
    {
      v9 = 0;
      goto LABEL_10;
    }

    v13 = accessibilityMusicLocalizedString(@"instrumental.break");
LABEL_9:
    v9 = v13;
LABEL_10:
  }

LABEL_11:

  return v9;
}

@end