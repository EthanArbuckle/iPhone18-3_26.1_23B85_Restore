@interface SyncedLyricsLineViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SyncedLyricsLineViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicCoreUI.SyncedLyricsLineView" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"UIControl" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MusicCoreUI.SyncedLyricsLineView" hasSwiftField:@"containerView" withSwiftType:"UIView"];
  [validationsCopy validateClass:@"MusicTextContentView"];
  [validationsCopy validateClass:@"MusicTextContentView" hasSwiftField:@"label" withSwiftType:"UILabel"];
  [validationsCopy validateClass:@"MusicSBS_TextContentView"];
  [validationsCopy validateClass:@"MusicSBS_TextContentView" hasSwiftField:@"text" withSwiftType:"Optional<String>"];
  [validationsCopy validateClass:@"MusicSBS_TextContentView" hasSwiftField:@"attributedText" withSwiftType:"Optional<NSAttributedString>"];
  [validationsCopy validateClass:@"MusicInstrumentalContentView"];
  [validationsCopy validateClass:@"MusicCoreUI.SyncedLyricsLineView" hasInstanceMethod:@"setSelected:animator:" withFullSignature:{"v", "B", "@", 0}];
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
      accessibilityLabel = v8;
      goto LABEL_11;
    }

    objc_opt_class();
    v14 = [v6 safeSwiftValueForKey:@"attributedText"];
    v12 = __UIAccessibilityCastAsClass();

    string = [v12 string];
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

  accessibilityLabel = [v11 accessibilityLabel];

  if (!accessibilityLabel)
  {
LABEL_6:
    v12 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2DD0](@"MusicInstrumentalContentView")];
    if (!v12)
    {
      accessibilityLabel = 0;
      goto LABEL_10;
    }

    string = accessibilityMusicLocalizedString(@"instrumental.break");
LABEL_9:
    accessibilityLabel = string;
LABEL_10:
  }

LABEL_11:

  return accessibilityLabel;
}

@end