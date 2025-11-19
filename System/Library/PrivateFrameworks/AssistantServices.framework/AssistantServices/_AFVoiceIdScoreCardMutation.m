@interface _AFVoiceIdScoreCardMutation
- (_AFVoiceIdScoreCardMutation)initWithBase:(id)a3;
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
    v2 = self->_deltaScoreThreshold;
  }

  else
  {
    v2 = [(AFVoiceIdScoreCard *)self->_base deltaScoreThreshold];
  }

  return v2;
}

- (id)getConfidentScoreThreshold
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    v2 = self->_confidentScoreThreshold;
  }

  else
  {
    v2 = [(AFVoiceIdScoreCard *)self->_base confidentScoreThreshold];
  }

  return v2;
}

- (id)getHighScoreThreshold
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    v2 = self->_highScoreThreshold;
  }

  else
  {
    v2 = [(AFVoiceIdScoreCard *)self->_base highScoreThreshold];
  }

  return v2;
}

- (id)getLowScoreThreshold
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    v2 = self->_lowScoreThreshold;
  }

  else
  {
    v2 = [(AFVoiceIdScoreCard *)self->_base lowScoreThreshold];
  }

  return v2;
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
    v2 = self->_userClassified;
  }

  else
  {
    v2 = [(AFVoiceIdScoreCard *)self->_base userClassified];
  }

  return v2;
}

- (id)getSpIdAssetVersion
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_spIdAssetVersion;
  }

  else
  {
    v2 = [(AFVoiceIdScoreCard *)self->_base spIdAssetVersion];
  }

  return v2;
}

- (id)getSpIdScoreThresholdingType
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_spIdScoreThresholdingType;
  }

  else
  {
    v2 = [(AFVoiceIdScoreCard *)self->_base spIdScoreThresholdingType];
  }

  return v2;
}

- (id)getSpIdUserScoresVersion
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_spIdUserScoresVersion;
  }

  else
  {
    v2 = [(AFVoiceIdScoreCard *)self->_base spIdUserScoresVersion];
  }

  return v2;
}

- (id)getSpIdKnownUserScores
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_spIdKnownUserScores;
  }

  else
  {
    v2 = [(AFVoiceIdScoreCard *)self->_base spIdKnownUserScores];
  }

  return v2;
}

- (id)getSpIdUnknownUserScore
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_spIdUnknownUserScore;
  }

  else
  {
    v2 = [(AFVoiceIdScoreCard *)self->_base spIdUnknownUserScore];
  }

  return v2;
}

- (id)getSpIdAudioProcessedDuration
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_spIdAudioProcessedDuration;
  }

  else
  {
    v2 = [(AFVoiceIdScoreCard *)self->_base spIdAudioProcessedDuration];
  }

  return v2;
}

- (_AFVoiceIdScoreCardMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFVoiceIdScoreCardMutation;
  v6 = [(_AFVoiceIdScoreCardMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end