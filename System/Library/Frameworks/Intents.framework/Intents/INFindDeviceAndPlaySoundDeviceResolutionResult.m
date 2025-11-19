@interface INFindDeviceAndPlaySoundDeviceResolutionResult
+ (id)unsupportedForReason:(int64_t)a3;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3;
- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4;
@end

@implementation INFindDeviceAndPlaySoundDeviceResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3
{
  v11.receiver = self;
  v11.super_class = INFindDeviceAndPlaySoundDeviceResolutionResult;
  v4 = [(INIntentResolutionResult *)&v11 _buildIntentSlotResolutionResultWithIntentSlotDescription:a3];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    v5 = [v4 payloadUnsupported];
    [v5 setReason:1000];

    v6 = [v4 payloadUnsupported];
    v7 = [(INIntentResolutionResult *)self unsupportedReason];
    if (v7 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    if (v7 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    [v6 setFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:v9];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = INFindDeviceAndPlaySoundDeviceResolutionResult;
  v7 = [(INIntentResolutionResult *)&v14 _initWithIntentSlotResolutionResult:v6 slotDescription:a4];
  if (v7)
  {
    v8 = [v6 payloadUnsupported];
    v9 = [v8 hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason];

    if (v9)
    {
      v10 = [v6 payloadUnsupported];
      v11 = [v10 findDeviceAndPlaySoundIntentDeviceUnsupportedReason];
      if (v11 == 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2 * (v11 == 2);
      }

      [v7 setUnsupportedReason:v12];
    }
  }

  return v7;
}

+ (id)unsupportedForReason:(int64_t)a3
{
  v4 = [a1 unsupported];
  [v4 setUnsupportedReason:a3];

  return v4;
}

@end