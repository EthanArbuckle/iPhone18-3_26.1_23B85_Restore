@interface _AFInterstitialConfigurationMutation
- (BOOL)getIsDucking;
- (BOOL)getIsTwoShot;
- (BOOL)getIsVoiceTrigger;
- (_AFInterstitialConfigurationMutation)initWithBase:(id)base;
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
    languageCode = self->_languageCode;
  }

  else
  {
    languageCode = [(AFInterstitialConfiguration *)self->_base languageCode];
  }

  return languageCode;
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
    recordRoute = self->_recordRoute;
  }

  else
  {
    recordRoute = [(AFInterstitialConfiguration *)self->_base recordRoute];
  }

  return recordRoute;
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

- (_AFInterstitialConfigurationMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFInterstitialConfigurationMutation;
  v6 = [(_AFInterstitialConfigurationMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end