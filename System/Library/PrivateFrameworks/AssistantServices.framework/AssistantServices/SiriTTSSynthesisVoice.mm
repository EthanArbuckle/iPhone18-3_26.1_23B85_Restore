@interface SiriTTSSynthesisVoice
- (id)SAVoiceGender;
- (id)SAVoiceQuality;
- (id)SAVoiceType;
- (int64_t)AFVoiceFootprint;
- (int64_t)AFVoiceGender;
- (void)updateWithTargetVoice:(id)voice;
@end

@implementation SiriTTSSynthesisVoice

- (id)SAVoiceType
{
  type = [(SiriTTSSynthesisVoice *)self type];
  if ((type - 1) > 5)
  {
    v3 = &SAVoiceVoiceTypeUndefinedValue;
  }

  else
  {
    v3 = *(&off_100514870 + (type - 1));
  }

  v4 = *v3;

  return v4;
}

- (id)SAVoiceQuality
{
  footprint = [(SiriTTSSynthesisVoice *)self footprint];
  if (footprint > 3)
  {
    v3 = &SAVoiceQualityUnknownValue;
  }

  else
  {
    v3 = *(&off_100514850 + footprint);
  }

  v4 = *v3;

  return v4;
}

- (id)SAVoiceGender
{
  gender = [(SiriTTSSynthesisVoice *)self gender];
  if ((gender - 1) > 2)
  {
    v3 = &SAVoiceGenderUnknownValue;
  }

  else
  {
    v3 = *(&off_100514838 + (gender - 1));
  }

  v4 = *v3;

  return v4;
}

- (int64_t)AFVoiceFootprint
{
  footprint = [(SiriTTSSynthesisVoice *)self footprint];
  if (footprint > 3)
  {
    return 0;
  }

  else
  {
    return qword_1003F03F8[footprint];
  }
}

- (int64_t)AFVoiceGender
{
  result = [(SiriTTSSynthesisVoice *)self gender];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

- (void)updateWithTargetVoice:(id)voice
{
  voiceCopy = voice;
  name = [voiceCopy name];
  lowercaseString = [name lowercaseString];

  language = [voiceCopy language];

  language2 = [(SiriTTSSynthesisVoice *)self language];
  v8 = [language isEqualToString:language2];

  if ((v8 & 1) == 0)
  {
    [(SiriTTSSynthesisVoice *)self setLanguage:language];
  }

  v9 = lowercaseString;
  if (lowercaseString && (-[SiriTTSSynthesisVoice name](self, "name"), v10 = objc_claimAutoreleasedReturnValue(), [v10 lowercaseString], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(lowercaseString, "isEqualToString:", v11), v11, v10, v9 = lowercaseString, (v12 & 1) == 0))
  {
    [(SiriTTSSynthesisVoice *)self setName:lowercaseString];
  }

  else if (v8)
  {
    [(SiriTTSSynthesisVoice *)self setName:v9];
    goto LABEL_9;
  }

  [(SiriTTSSynthesisVoice *)self setFootprint:1];
  [(SiriTTSSynthesisVoice *)self setType:1];
  [(SiriTTSSynthesisVoice *)self setVersion:0];
LABEL_9:
}

@end