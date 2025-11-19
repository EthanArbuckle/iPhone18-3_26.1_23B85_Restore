@interface SyncedLyricsLineViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (BOOL)isInstrumentalBreak;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SyncedLyricsLineViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"LyricsX.SyncedLyricsLineView" isKindOfClass:@"UIControl"];
  [v3 validateClass:@"UIControl" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"LyricsX.SyncedLyricsLineView" hasSwiftField:@"containerView" withSwiftType:"UIView"];
  [v3 validateClass:@"MusicTextContentView"];
  [v3 validateClass:@"MusicTextContentView" hasSwiftField:@"label" withSwiftType:"UILabel"];
  [v3 validateClass:@"MusicSBS_TextContentView"];
  [v3 validateClass:@"MusicSBS_TextContentView" hasSwiftField:@"text" withSwiftType:"Optional<String>"];
  [v3 validateClass:@"MusicSBS_TextContentView" hasSwiftField:@"attributedText" withSwiftType:"Optional<NSAttributedString>"];
  [v3 validateClass:@"MusicInstrumentalContentView"];
  [v3 validateClass:@"MusicDespacitoContentView"];
  [v3 validateClass:@"LyricsX.SyncedLyricsLineView" hasInstanceMethod:@"setSelected:animator:" withFullSignature:{"v", "B", "@", 0}];
}

- (BOOL)isAccessibilityElement
{
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  return [(SyncedLyricsLineViewAccessibility *)self isInstrumentalBreak];
}

- (id)accessibilityElements
{
  v19[1] = *MEMORY[0x29EDCA608];
  if (!_os_feature_enabled_impl())
  {
    v6 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  v3 = [(SyncedLyricsLineViewAccessibility *)self safeSwiftValueForKey:@"containerView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2910](@"MusicDespacitoContentView")];
  if (v5)
  {
    v6 = [MEMORY[0x29EDB8E90] mutableCopy];
    v7 = [v5 safeSwiftValueForKey:@"mainLineView"];
    v8 = [v7 currentAccessibilityLabel];
    if (v8)
    {
      [v8 setAccessibilityTraits:{-[SyncedLyricsLineViewAccessibility accessibilityTraits](self, "accessibilityTraits")}];
      [v6 addObject:v8];
    }

    v9 = [v5 safeSwiftValueForKey:@"translationLineView"];
    v10 = [v9 currentAccessibilityLabel];
LABEL_6:
    v11 = v10;
    if (v10)
    {
      [v10 setAccessibilityTraits:{-[SyncedLyricsLineViewAccessibility accessibilityTraits](self, "accessibilityTraits")}];
      [v6 addObject:v11];
    }

    goto LABEL_12;
  }

  v7 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2910](@"MusicTextContentView")];
  if (v7)
  {
    objc_opt_class();
    v12 = [v7 currentAccessibilityLabel];
    v8 = __UIAccessibilityCastAsClass();

    v19[0] = v8;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v19 count:1];
  }

  else
  {
    v8 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2910](@"MusicSBS_TextContentView")];
    if (v8)
    {
      v6 = [MEMORY[0x29EDB8E90] mutableCopy];
      v9 = [v8 accessibilityMainTextView];
      [v9 setIsAccessibilityElement:1];
      if (v9)
      {
        v15 = [v8 safeSwiftValueForKey:@"text"];
        if (v15)
        {
          [v9 setAccessibilityLabel:v15];
        }

        else
        {
          objc_opt_class();
          v16 = [v8 safeSwiftValueForKey:@"attributedText"];
          v17 = __UIAccessibilityCastAsClass();

          v18 = [v17 string];
          [v9 setAccessibilityLabel:v18];
        }

        [v9 setAccessibilityTraits:{-[SyncedLyricsLineViewAccessibility accessibilityTraits](self, "accessibilityTraits")}];
        [v6 addObject:v9];
      }

      v10 = [v8 accessibilityTranslationLabel];
      goto LABEL_6;
    }

    v6 = 0;
  }

LABEL_12:

LABEL_13:
  v13 = *MEMORY[0x29EDCA608];

  return v6;
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
  if (!_os_feature_enabled_impl())
  {
    objc_opt_class();
    v4 = [(SyncedLyricsLineViewAccessibility *)self safeSwiftValueForKey:@"containerView"];
    v5 = __UIAccessibilityCastAsClass();

    v6 = [v5 _accessibilityDescendantOfType:MEMORY[0x29C2E2910](@"MusicSBS_TextContentView")];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 safeSwiftValueForKey:@"text"];
      v9 = v8;
      if (v8)
      {
        v9 = v8;
        v3 = v9;
LABEL_15:

        goto LABEL_16;
      }

      objc_opt_class();
      v14 = [v7 safeSwiftValueForKey:@"attributedText"];
      v12 = __UIAccessibilityCastAsClass();

      v13 = [v12 string];
    }

    else
    {
      v9 = [v5 _accessibilityDescendantOfType:MEMORY[0x29C2E2910](@"MusicTextContentView")];
      if (v9)
      {
        objc_opt_class();
        v10 = [v9 safeSwiftValueForKey:@"label"];
        v11 = __UIAccessibilityCastAsClass();

        v3 = [v11 accessibilityLabel];

        if (v3)
        {
          goto LABEL_15;
        }
      }

      v12 = [v5 _accessibilityDescendantOfType:MEMORY[0x29C2E2910](@"MusicInstrumentalContentView")];
      if (!v12)
      {
        v3 = 0;
        goto LABEL_14;
      }

      v13 = accessibilityMusicLocalizedString(@"instrumental.break");
    }

    v3 = v13;
LABEL_14:

    goto LABEL_15;
  }

  if ([(SyncedLyricsLineViewAccessibility *)self isInstrumentalBreak])
  {
    v3 = accessibilityMusicLocalizedString(@"instrumental.break");
  }

  else
  {
    v3 = 0;
  }

LABEL_16:

  return v3;
}

- (BOOL)isInstrumentalBreak
{
  objc_opt_class();
  v3 = [(SyncedLyricsLineViewAccessibility *)self safeSwiftValueForKey:@"containerView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 _accessibilityDescendantOfType:MEMORY[0x29C2E2910](@"MusicInstrumentalContentView")];
  v6 = v5 != 0;

  return v6;
}

@end