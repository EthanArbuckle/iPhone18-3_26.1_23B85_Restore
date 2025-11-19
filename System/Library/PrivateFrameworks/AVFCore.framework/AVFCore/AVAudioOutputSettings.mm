@interface AVAudioOutputSettings
+ (AVAudioOutputSettings)audioOutputSettingsWithAudioSettingsDictionary:(id)a3;
+ (AVAudioOutputSettings)audioOutputSettingsWithTrustedAudioSettingsDictionary:(id)a3;
+ (id)_audioOutputSettingsWithAudioSettingsDictionary:(id)a3 exceptionReason:(id *)a4;
+ (id)audioConverterPropertiesForAudioSettingsDictionary:(id)a3;
@end

@implementation AVAudioOutputSettings

+ (AVAudioOutputSettings)audioOutputSettingsWithAudioSettingsDictionary:(id)a3
{
  v13 = 0;
  result = [a1 _audioOutputSettingsWithAudioSettingsDictionary:a3 exceptionReason:&v13];
  if (!result)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, v13, v6, v7, v8, v9, v10, v12), 0}];
    objc_exception_throw(v11);
  }

  return result;
}

+ (AVAudioOutputSettings)audioOutputSettingsWithTrustedAudioSettingsDictionary:(id)a3
{
  result = [a3 objectForKey:*MEMORY[0x1E69582B0]];
  if (result)
  {
    v5 = [[AVAVAudioSettingsAudioOutputSettings alloc] initWithTrustedAVAudioSettingsDictionary:a3];

    return v5;
  }

  return result;
}

+ (id)_audioOutputSettingsWithAudioSettingsDictionary:(id)a3 exceptionReason:(id *)a4
{
  if (a3)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___AVAudioOutputSettings;
    return objc_msgSendSuper2(&v6, sel__outputSettingsWithOutputSettingsDictionary_mediaType_exceptionReason_, a3, @"soun", a4);
  }

  else
  {

    return [a1 defaultAudioOutputSettings];
  }
}

+ (id)audioConverterPropertiesForAudioSettingsDictionary:(id)a3
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a3, "count")}];
  v5 = [a3 objectForKey:*MEMORY[0x1E69582C8]];
  if (v5 || (v5 = [a3 objectForKey:*MEMORY[0x1E6958278]]) != 0)
  {
    v20 = [v5 unsignedIntValue];
    [v4 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &v20, 4), AVStringForOSType(0x61636264u)}];
  }

  v6 = [a3 objectForKey:*MEMORY[0x1E6958280]];
  if (v6)
  {
    v20 = [v6 unsignedIntValue];
    [v4 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &v20, 4), AVStringForOSType(0x62726174u)}];
  }

  v7 = [a3 objectForKey:*MEMORY[0x1E6958290]];
  if (v7)
  {
    v8 = [v7 unsignedIntValue];
    v9 = [a3 objectForKey:*MEMORY[0x1E6958300]];
    if (v9)
    {
      v20 = [v9 unsignedIntValue] * v8;
      [v4 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &v20, 4), AVStringForOSType(0x62726174u)}];
    }
  }

  v10 = [a3 objectForKey:*MEMORY[0x1E6958270]];
  if (v10)
  {
    v20 = [v10 unsignedIntValue];
    [v4 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &v20, 4), AVStringForOSType(0x63647175u)}];
  }

  v11 = [a3 objectForKey:*MEMORY[0x1E6958338]];
  if (v11)
  {
    v20 = [v11 unsignedIntValue];
    [v4 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &v20, 4), AVStringForOSType(0x73726371u)}];
  }

  v12 = [a3 objectForKey:*MEMORY[0x1E6958298]];
  if (v12)
  {
    v13 = v12;
    if ([v12 compare:*MEMORY[0x1E6958008]])
    {
      if ([v13 compare:*MEMORY[0x1E6958010]])
      {
        if ([v13 compare:*MEMORY[0x1E6958020]])
        {
          if ([v13 compare:*MEMORY[0x1E6958018]])
          {
            goto LABEL_24;
          }

          v14 = 3;
        }

        else
        {
          v14 = 2;
        }
      }

      else
      {
        v14 = 1;
      }

      v20 = v14;
    }

    else
    {
      v20 = 0;
    }

    [v4 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &v20, 4), AVStringForOSType(0x61636266u)}];
  }

LABEL_24:
  v15 = [a3 objectForKey:*MEMORY[0x1E6958268]];
  if (v15)
  {
    v20 = [v15 unsignedIntValue];
    [v4 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &v20, 4), AVStringForOSType(0x76627271u)}];
  }

  v16 = [a3 objectForKey:*MEMORY[0x1E6958318]];
  if (v16)
  {
    v17 = v16;
    if ([v16 isEqualToString:*MEMORY[0x1E6958330]])
    {
      v18 = 1852797549;
    }

    else if ([v17 isEqualToString:*MEMORY[0x1E6958328]])
    {
      v18 = 1650553971;
    }

    else
    {
      v18 = 0;
    }

    v20 = v18;
    [v4 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKey:{"dataWithBytes:length:", &v20, 4), AVStringForOSType(0x73726361u)}];
  }

  return [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];
}

@end