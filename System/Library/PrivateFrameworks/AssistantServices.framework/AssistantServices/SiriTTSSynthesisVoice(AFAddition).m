@interface SiriTTSSynthesisVoice(AFAddition)
- (id)SAVoiceGender;
- (id)SAVoiceQuality;
- (id)SAVoiceType;
- (uint64_t)AFVoiceFootprint;
- (uint64_t)AFVoiceGender;
- (void)updateWithTargetVoice:()AFAddition;
@end

@implementation SiriTTSSynthesisVoice(AFAddition)

- (id)SAVoiceType
{
  v1 = [a1 type];
  if ((v1 - 1) > 5)
  {
    v2 = MEMORY[0x1E69C8450];
  }

  else
  {
    v2 = qword_1E73428E8[v1 - 1];
  }

  v3 = *v2;

  return v3;
}

- (id)SAVoiceQuality
{
  v1 = [a1 footprint];
  if (v1 > 3)
  {
    v2 = MEMORY[0x1E69C8448];
  }

  else
  {
    v2 = qword_1E73428C8[v1];
  }

  v3 = *v2;

  return v3;
}

- (id)SAVoiceGender
{
  v1 = [a1 gender];
  if ((v1 - 1) > 2)
  {
    v2 = MEMORY[0x1E69C8430];
  }

  else
  {
    v2 = qword_1E73428B0[v1 - 1];
  }

  v3 = *v2;

  return v3;
}

- (uint64_t)AFVoiceFootprint
{
  v1 = [a1 footprint];
  if (v1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1914CFDD8[v1];
  }
}

- (uint64_t)AFVoiceGender
{
  result = [a1 gender];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

- (void)updateWithTargetVoice:()AFAddition
{
  v4 = a3;
  v5 = [v4 name];
  v13 = [v5 lowercaseString];

  v6 = [v4 language];

  v7 = [a1 language];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [a1 setLanguage:v6];
  }

  v9 = v13;
  if (!v13)
  {
    goto LABEL_5;
  }

  v10 = [a1 name];
  v11 = [v10 lowercaseString];
  v12 = [v13 isEqualToString:v11];

  v9 = v13;
  if ((v12 & 1) == 0)
  {
    [a1 setName:v13];
  }

  else
  {
LABEL_5:
    if (v8)
    {
      [a1 setName:v9];
      goto LABEL_9;
    }
  }

  [a1 setFootprint:1];
  [a1 setType:1];
  [a1 setVersion:0];
LABEL_9:
}

@end