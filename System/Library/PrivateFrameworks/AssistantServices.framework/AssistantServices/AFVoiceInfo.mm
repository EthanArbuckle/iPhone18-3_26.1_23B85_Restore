@interface AFVoiceInfo
+ (int64_t)genderForVSSpeechGender:(int64_t)gender;
- (BOOL)isMatchForSiriVoice:(id)voice;
- (BOOL)isMatchForVoiceAsset:(id)asset;
- (id)VSVoiceAsset;
- (int64_t)VSSpeechFootprint;
- (int64_t)VSSpeechGender;
- (int64_t)VSSpeechType;
@end

@implementation AFVoiceInfo

- (BOOL)isMatchForSiriVoice:(id)voice
{
  voiceCopy = voice;
  type = [voiceCopy type];
  isCustom = [(AFVoiceInfo *)self isCustom];
  v8 = type == 6 || (type - 3) < 2;
  if (isCustom)
  {
    v9 = v8;
  }

  else
  {
    v9 = (type - 1) < 2;
  }

  footprint = [(AFVoiceInfo *)self footprint];
  aFVoiceFootprint = [voiceCopy AFVoiceFootprint];
  languageCode = [(AFVoiceInfo *)self languageCode];
  language = [voiceCopy language];
  if ([languageCode isEqualToString:language])
  {
    name = [(AFVoiceInfo *)self name];
    name2 = [voiceCopy name];
    v16 = 0;
    if (([name isEqualToString:name2] & v9) == 1 && footprint == aFVoiceFootprint)
    {
      contentVersion = [(AFVoiceInfo *)self contentVersion];
      v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [voiceCopy version]);
      v16 = [contentVersion isEqualToNumber:v18];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isMatchForVoiceAsset:(id)asset
{
  assetCopy = asset;
  name = [assetCopy name];
  if (name && (v6 = name, [(AFVoiceInfo *)self name], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    name2 = [(AFVoiceInfo *)self name];
    name3 = [assetCopy name];
    v10 = [name2 isEqualToString:name3];
  }

  else
  {
    v10 = 1;
  }

  vSSpeechGender = [(AFVoiceInfo *)self VSSpeechGender];
  if (vSSpeechGender == [assetCopy gender] && (v12 = -[AFVoiceInfo VSSpeechFootprint](self, "VSSpeechFootprint"), v12 == objc_msgSend(assetCopy, "footprint")) && (v13 = -[AFVoiceInfo isCustom](self, "isCustom"), v13 != objc_msgSend(assetCopy, "isBuiltInVoice")))
  {
    languages = [assetCopy languages];
    languageCode = [(AFVoiceInfo *)self languageCode];
    if (([languages containsObject:languageCode] & v10) == 1)
    {
      contentVersion = [(AFVoiceInfo *)self contentVersion];
      contentVersion2 = [assetCopy contentVersion];
      if ([contentVersion isEqualToNumber:contentVersion2])
      {
        masteredVersion = [(AFVoiceInfo *)self masteredVersion];
        masteredVersion2 = [assetCopy masteredVersion];
        v20 = [masteredVersion isEqualToString:masteredVersion2];
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
  languageCode = [(AFVoiceInfo *)self languageCode];
  v5 = languageCode;
  if (languageCode)
  {
    v11 = languageCode;
    v6 = [NSArray arrayWithObjects:&v11 count:1];
    [v3 setLanguages:v6];
  }

  contentVersion = [(AFVoiceInfo *)self contentVersion];
  [v3 setContentVersion:contentVersion];

  masteredVersion = [(AFVoiceInfo *)self masteredVersion];
  [v3 setMasteredVersion:masteredVersion];

  name = [(AFVoiceInfo *)self name];
  [v3 setName:name];

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

+ (int64_t)genderForVSSpeechGender:(int64_t)gender
{
  if ((gender - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return gender;
  }
}

@end