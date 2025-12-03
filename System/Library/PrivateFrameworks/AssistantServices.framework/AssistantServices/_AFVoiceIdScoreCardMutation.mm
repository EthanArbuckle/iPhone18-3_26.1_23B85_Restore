@interface _AFVoiceIdScoreCardMutation
- (_AFVoiceIdScoreCardMutation)initWithBase:(id)base;
- (id)getConfidentScoreThreshold;
- (id)getDeltaScoreThreshold;
- (id)getHighScoreThreshold;
- (id)getLowScoreThreshold;
- (id)getSpIdAssetVersion;
- (id)getSpIdAudioProcessedDuration;
- (id)getSpIdKnownUserScores;
- (id)getSpIdScoreThresholdingType;
- (id)getSpIdUnknownUserScore;
- (id)getSpIdUserScoresVersion;
- (id)getUserClassified;
- (int64_t)getHasSufficientAudioProcessed;
- (int64_t)getUserIdentityClassification;
@end

@implementation _AFVoiceIdScoreCardMutation

- (int64_t)getHasSufficientAudioProcessed
{
  if ((*&self->_mutationFlags & 0x2000) != 0)
  {
    return self->_hasSufficientAudioProcessed;
  }

  else
  {
    return [(AFVoiceIdScoreCard *)self->_base hasSufficientAudioProcessed];
  }
}

- (id)getDeltaScoreThreshold
{
  if ((*&self->_mutationFlags & 0x1000) != 0)
  {
    deltaScoreThreshold = self->_deltaScoreThreshold;
  }

  else
  {
    deltaScoreThreshold = [(AFVoiceIdScoreCard *)self->_base deltaScoreThreshold];
  }

  return deltaScoreThreshold;
}

- (id)getConfidentScoreThreshold
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    confidentScoreThreshold = self->_confidentScoreThreshold;
  }

  else
  {
    confidentScoreThreshold = [(AFVoiceIdScoreCard *)self->_base confidentScoreThreshold];
  }

  return confidentScoreThreshold;
}

- (id)getHighScoreThreshold
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    highScoreThreshold = self->_highScoreThreshold;
  }

  else
  {
    highScoreThreshold = [(AFVoiceIdScoreCard *)self->_base highScoreThreshold];
  }

  return highScoreThreshold;
}

- (id)getLowScoreThreshold
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    lowScoreThreshold = self->_lowScoreThreshold;
  }

  else
  {
    lowScoreThreshold = [(AFVoiceIdScoreCard *)self->_base lowScoreThreshold];
  }

  return lowScoreThreshold;
}

- (int64_t)getUserIdentityClassification
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    return self->_userIdentityClassification;
  }

  else
  {
    return [(AFVoiceIdScoreCard *)self->_base userIdentityClassification];
  }
}

- (id)getUserClassified
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    userClassified = self->_userClassified;
  }

  else
  {
    userClassified = [(AFVoiceIdScoreCard *)self->_base userClassified];
  }

  return userClassified;
}

- (id)getSpIdAssetVersion
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    spIdAssetVersion = self->_spIdAssetVersion;
  }

  else
  {
    spIdAssetVersion = [(AFVoiceIdScoreCard *)self->_base spIdAssetVersion];
  }

  return spIdAssetVersion;
}

- (id)getSpIdScoreThresholdingType
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    spIdScoreThresholdingType = self->_spIdScoreThresholdingType;
  }

  else
  {
    spIdScoreThresholdingType = [(AFVoiceIdScoreCard *)self->_base spIdScoreThresholdingType];
  }

  return spIdScoreThresholdingType;
}

- (id)getSpIdUserScoresVersion
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    spIdUserScoresVersion = self->_spIdUserScoresVersion;
  }

  else
  {
    spIdUserScoresVersion = [(AFVoiceIdScoreCard *)self->_base spIdUserScoresVersion];
  }

  return spIdUserScoresVersion;
}

- (id)getSpIdKnownUserScores
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    spIdKnownUserScores = self->_spIdKnownUserScores;
  }

  else
  {
    spIdKnownUserScores = [(AFVoiceIdScoreCard *)self->_base spIdKnownUserScores];
  }

  return spIdKnownUserScores;
}

- (id)getSpIdUnknownUserScore
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    spIdUnknownUserScore = self->_spIdUnknownUserScore;
  }

  else
  {
    spIdUnknownUserScore = [(AFVoiceIdScoreCard *)self->_base spIdUnknownUserScore];
  }

  return spIdUnknownUserScore;
}

- (id)getSpIdAudioProcessedDuration
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    spIdAudioProcessedDuration = self->_spIdAudioProcessedDuration;
  }

  else
  {
    spIdAudioProcessedDuration = [(AFVoiceIdScoreCard *)self->_base spIdAudioProcessedDuration];
  }

  return spIdAudioProcessedDuration;
}

- (_AFVoiceIdScoreCardMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFVoiceIdScoreCardMutation;
  v6 = [(_AFVoiceIdScoreCardMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end