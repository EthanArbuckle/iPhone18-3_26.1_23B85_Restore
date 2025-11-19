@interface NSObject(MusicKit_SoftLinking_MPArtworkColorAnalysis)
- (id)_musicKit_self_artworkColorAnalysis;
- (uint64_t)musicKit_backgroundColor;
- (uint64_t)musicKit_primaryTextColor;
- (uint64_t)musicKit_secondaryTextColor;
- (uint64_t)musicKit_tertiaryTextColor;
@end

@implementation NSObject(MusicKit_SoftLinking_MPArtworkColorAnalysis)

- (id)_musicKit_self_artworkColorAnalysis
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getMPArtworkColorAnalysisClass_softClass;
  v10 = getMPArtworkColorAnalysisClass_softClass;
  if (!getMPArtworkColorAnalysisClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getMPArtworkColorAnalysisClass_block_invoke;
    v6[3] = &unk_278229610;
    v6[4] = &v7;
    __getMPArtworkColorAnalysisClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  if (objc_opt_isKindOfClass())
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)musicKit_backgroundColor
{
  v1 = [a1 _musicKit_self_artworkColorAnalysis];
  v2 = [v1 backgroundColor];
  v3 = [v2 CGColor];

  return v3;
}

- (uint64_t)musicKit_primaryTextColor
{
  v1 = [a1 _musicKit_self_artworkColorAnalysis];
  v2 = [v1 primaryTextColor];
  v3 = [v2 CGColor];

  return v3;
}

- (uint64_t)musicKit_secondaryTextColor
{
  v1 = [a1 _musicKit_self_artworkColorAnalysis];
  v2 = [v1 secondaryTextColor];
  v3 = [v2 CGColor];

  return v3;
}

- (uint64_t)musicKit_tertiaryTextColor
{
  v1 = [a1 _musicKit_self_artworkColorAnalysis];
  v2 = [v1 tertiaryTextColor];
  v3 = [v2 CGColor];

  return v3;
}

@end