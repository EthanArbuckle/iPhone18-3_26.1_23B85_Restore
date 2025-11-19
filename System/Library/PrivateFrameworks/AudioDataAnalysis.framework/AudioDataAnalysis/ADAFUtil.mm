@interface ADAFUtil
+ (BOOL)isProcessMediaserverd;
+ (id)stringFromDataType:(unsigned int)a3;
@end

@implementation ADAFUtil

+ (id)stringFromDataType:(unsigned int)a3
{
  if (a3 > 1835623275)
  {
    if (a3 != 1835623276)
    {
      if (a3 == 1936614505)
      {
        return @"SoundClassification";
      }

      return @"UnkownType";
    }

    return @"MicLevel";
  }

  else
  {
    if (a3 != 1702260324)
    {
      if (a3 == 1751213428)
      {
        return @"HeadphoneAudioExposure";
      }

      return @"UnkownType";
    }

    return @"EnvironmentalDosage";
  }
}

+ (BOOL)isProcessMediaserverd
{
  if (isProcessMediaserverd_once != -1)
  {
    +[ADAFUtil isProcessMediaserverd];
  }

  return isProcessMediaserverd_isMediaserverd;
}

void __33__ADAFUtil_isProcessMediaserverd__block_invoke()
{
  v0 = _os_feature_enabled_impl();
  v1 = @"mediaserverd";
  if (v0)
  {
    v1 = @"audiomxd";
  }

  v2 = MEMORY[0x277CCAC38];
  v3 = v1;
  v6 = [v2 processInfo];
  v4 = [v6 processName];
  v5 = [v4 isEqualToString:v3];

  isProcessMediaserverd_isMediaserverd = v5;
}

@end