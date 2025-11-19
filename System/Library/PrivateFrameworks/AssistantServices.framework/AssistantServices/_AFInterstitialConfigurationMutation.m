@interface _AFInterstitialConfigurationMutation
- (BOOL)getIsDucking;
- (BOOL)getIsTwoShot;
- (BOOL)getIsVoiceTrigger;
- (_AFInterstitialConfigurationMutation)initWithBase:(id)a3;
- (id)getLanguageCode;
- (id)getRecordRoute;
- (int64_t)getGender;
- (int64_t)getStyle;
- (unint64_t)getSpeechEndHostTime;
@end

@implementation _AFInterstitialConfigurationMutation

- (int64_t)getStyle
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_style;
  }

  else
  {
    return [(AFInterstitialConfiguration *)self->_base style];
  }
}

- (id)getLanguageCode
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_languageCode;
  }

  else
  {
    v2 = [(AFInterstitialConfiguration *)self->_base languageCode];
  }

  return v2;
}

- (int64_t)getGender
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_gender;
  }

  else
  {
    return [(AFInterstitialConfiguration *)self->_base gender];
  }
}

- (id)getRecordRoute
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_recordRoute;
  }

  else
  {
    v2 = [(AFInterstitialConfiguration *)self->_base recordRoute];
  }

  return v2;
}

- (BOOL)getIsDucking
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    return self->_isDucking;
  }

  else
  {
    return [(AFInterstitialConfiguration *)self->_base isDucking];
  }
}

- (BOOL)getIsVoiceTrigger
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_isVoiceTrigger;
  }

  else
  {
    return [(AFInterstitialConfiguration *)self->_base isVoiceTrigger];
  }
}

- (unint64_t)getSpeechEndHostTime
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    return self->_speechEndHostTime;
  }

  else
  {
    return [(AFInterstitialConfiguration *)self->_base speechEndHostTime];
  }
}

- (BOOL)getIsTwoShot
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    return self->_isTwoShot;
  }

  else
  {
    return [(AFInterstitialConfiguration *)self->_base isTwoShot];
  }
}

- (_AFInterstitialConfigurationMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFInterstitialConfigurationMutation;
  v6 = [(_AFInterstitialConfigurationMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end