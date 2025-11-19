@interface SiriTTSSynthesisVoice
- (id)SAVoiceGender;
- (id)SAVoiceQuality;
- (id)SAVoiceType;
- (int64_t)AFVoiceFootprint;
- (int64_t)AFVoiceGender;
- (void)updateWithTargetVoice:(id)a3;
@end

@implementation SiriTTSSynthesisVoice

- (id)SAVoiceType
{
  v2 = [(SiriTTSSynthesisVoice *)self type];
  if ((v2 - 1) > 5)
  {
    v3 = &SAVoiceVoiceTypeUndefinedValue;
  }

  else
  {
    v3 = *(&off_100514870 + (v2 - 1));
  }

  v4 = *v3;

  return v4;
}

- (id)SAVoiceQuality
{
  v2 = [(SiriTTSSynthesisVoice *)self footprint];
  if (v2 > 3)
  {
    v3 = &SAVoiceQualityUnknownValue;
  }

  else
  {
    v3 = *(&off_100514850 + v2);
  }

  v4 = *v3;

  return v4;
}

- (id)SAVoiceGender
{
  v2 = [(SiriTTSSynthesisVoice *)self gender];
  if ((v2 - 1) > 2)
  {
    v3 = &SAVoiceGenderUnknownValue;
  }

  else
  {
    v3 = *(&off_100514838 + (v2 - 1));
  }

  v4 = *v3;

  return v4;
}

- (int64_t)AFVoiceFootprint
{
  v2 = [(SiriTTSSynthesisVoice *)self footprint];
  if (v2 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1003F03F8[v2];
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

- (void)updateWithTargetVoice:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v13 = [v5 lowercaseString];

  v6 = [v4 language];

  v7 = [(SiriTTSSynthesisVoice *)self language];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [(SiriTTSSynthesisVoice *)self setLanguage:v6];
  }

  v9 = v13;
  if (v13 && (-[SiriTTSSynthesisVoice name](self, "name"), v10 = objc_claimAutoreleasedReturnValue(), [v10 lowercaseString], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v13, "isEqualToString:", v11), v11, v10, v9 = v13, (v12 & 1) == 0))
  {
    [(SiriTTSSynthesisVoice *)self setName:v13];
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