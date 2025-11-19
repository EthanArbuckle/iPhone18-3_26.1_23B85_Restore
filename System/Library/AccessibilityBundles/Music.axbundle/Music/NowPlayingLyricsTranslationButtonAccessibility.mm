@interface NowPlayingLyricsTranslationButtonAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation NowPlayingLyricsTranslationButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NowPlayingLyricsTranslationButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(NowPlayingLyricsTranslationButtonAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  v3 = [(NowPlayingLyricsTranslationButtonAccessibility *)self safeBoolForKey:@"accessibilityTranslationEnabled"];
  v4 = [(NowPlayingLyricsTranslationButtonAccessibility *)self safeBoolForKey:@"accessibilityTransliterationEnabled"];
  if ((v3 & 1) != 0 || v4)
  {
    v6 = @"lyrics.translation.on";
    if ((v3 & v4) != 0)
    {
      v6 = @"lyrics.translation.transliteration.on";
    }

    if (v3)
    {
      v7 = v6;
    }

    else
    {
      v7 = @"lyrics.transliteration.on";
    }

    v5 = accessibilityMusicLocalizedString(v7);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end