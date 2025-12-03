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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (uint64_t)musicKit_backgroundColor
{
  _musicKit_self_artworkColorAnalysis = [self _musicKit_self_artworkColorAnalysis];
  backgroundColor = [_musicKit_self_artworkColorAnalysis backgroundColor];
  cGColor = [backgroundColor CGColor];

  return cGColor;
}

- (uint64_t)musicKit_primaryTextColor
{
  _musicKit_self_artworkColorAnalysis = [self _musicKit_self_artworkColorAnalysis];
  primaryTextColor = [_musicKit_self_artworkColorAnalysis primaryTextColor];
  cGColor = [primaryTextColor CGColor];

  return cGColor;
}

- (uint64_t)musicKit_secondaryTextColor
{
  _musicKit_self_artworkColorAnalysis = [self _musicKit_self_artworkColorAnalysis];
  secondaryTextColor = [_musicKit_self_artworkColorAnalysis secondaryTextColor];
  cGColor = [secondaryTextColor CGColor];

  return cGColor;
}

- (uint64_t)musicKit_tertiaryTextColor
{
  _musicKit_self_artworkColorAnalysis = [self _musicKit_self_artworkColorAnalysis];
  tertiaryTextColor = [_musicKit_self_artworkColorAnalysis tertiaryTextColor];
  cGColor = [tertiaryTextColor CGColor];

  return cGColor;
}

@end