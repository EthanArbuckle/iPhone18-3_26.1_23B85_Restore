@interface AFVoiceInfo
+ (int64_t)genderForVSSpeechGender:(int64_t)a3;
- (BOOL)isMatchForSiriVoice:(id)a3;
- (BOOL)isMatchForVoiceAsset:(id)a3;
- (id)VSVoiceAsset;
- (int64_t)VSSpeechFootprint;
- (int64_t)VSSpeechGender;
- (int64_t)VSSpeechType;
@end

@implementation AFVoiceInfo

- (BOOL)isMatchForSiriVoice:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [(AFVoiceInfo *)self isCustom];
  v8 = v5 == 6 || (v5 - 3) < 2;
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = (v5 - 1) < 2;
  }

  v10 = [(AFVoiceInfo *)self footprint];
  v11 = [v4 AFVoiceFootprint];
  v12 = [(AFVoiceInfo *)self languageCode];
  v13 = [v4 language];
  if ([v12 isEqualToString:v13])
  {
    v14 = [(AFVoiceInfo *)self name];
    v15 = [v4 name];
    v16 = 0;
    if (([v14 isEqualToString:v15] & v9) == 1 && v10 == v11)
    {
      v17 = [(AFVoiceInfo *)self contentVersion];
      v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 version]);
      v16 = [v17 isEqualToNumber:v18];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isMatchForVoiceAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  if (v5 && (v6 = v5, [(AFVoiceInfo *)self name], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [(AFVoiceInfo *)self name];
    v9 = [v4 name];
    v10 = [v8 isEqualToString:v9];
  }

  else
  {
    v10 = 1;
  }

  v11 = [(AFVoiceInfo *)self VSSpeechGender];
  if (v11 == [v4 gender] && (v12 = -[AFVoiceInfo VSSpeechFootprint](self, "VSSpeechFootprint"), v12 == objc_msgSend(v4, "footprint")) && (v13 = -[AFVoiceInfo isCustom](self, "isCustom"), v13 != objc_msgSend(v4, "isBuiltInVoice")))
  {
    v14 = [v4 languages];
    v15 = [(AFVoiceInfo *)self languageCode];
    if (([v14 containsObject:v15] & v10) == 1)
    {
      v16 = [(AFVoiceInfo *)self contentVersion];
      v17 = [v4 contentVersion];
      if ([v16 isEqualToNumber:v17])
      {
        v18 = [(AFVoiceInfo *)self masteredVersion];
        v19 = [v4 masteredVersion];
        v20 = [v18 isEqualToString:v19];
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)VSVoiceAsset
{
  v3 = objc_alloc_init(VSVoiceAsset);
  [v3 setGender:{-[AFVoiceInfo VSSpeechGender](self, "VSSpeechGender")}];
  [v3 setFootprint:{-[AFVoiceInfo VSSpeechFootprint](self, "VSSpeechFootprint")}];
  [v3 setIsBuiltInVoice:{-[AFVoiceInfo isCustom](self, "isCustom") ^ 1}];
  v4 = [(AFVoiceInfo *)self languageCode];
  v5 = v4;
  if (v4)
  {
    v11 = v4;
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    [v3 setLanguages:v6];
  }

  v7 = [(AFVoiceInfo *)self contentVersion];
  [v3 setContentVersion:v7];

  v8 = [(AFVoiceInfo *)self masteredVersion];
  [v3 setMasteredVersion:v8];

  v9 = [(AFVoiceInfo *)self name];
  [v3 setName:v9];

  return v3;
}

- (int64_t)VSSpeechType
{
  if ([(AFVoiceInfo *)self isCustom])
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (int64_t)VSSpeechFootprint
{
  result = [(AFVoiceInfo *)self footprint];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (int64_t)VSSpeechGender
{
  result = [(AFVoiceInfo *)self gender];
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

+ (int64_t)genderForVSSpeechGender:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end