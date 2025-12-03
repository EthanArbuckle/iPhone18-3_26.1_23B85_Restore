@interface INFindDeviceAndPlaySoundDeviceResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INFindDeviceAndPlaySoundDeviceResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v11.receiver = self;
  v11.super_class = INFindDeviceAndPlaySoundDeviceResolutionResult;
  v4 = [(INIntentResolutionResult *)&v11 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    payloadUnsupported = [v4 payloadUnsupported];
    [payloadUnsupported setReason:1000];

    payloadUnsupported2 = [v4 payloadUnsupported];
    unsupportedReason = [(INIntentResolutionResult *)self unsupportedReason];
    if (unsupportedReason == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0x7FFFFFFF;
    }

    if (unsupportedReason == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    [payloadUnsupported2 setFindDeviceAndPlaySoundIntentDeviceUnsupportedReason:v9];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = INFindDeviceAndPlaySoundDeviceResolutionResult;
  v7 = [(INIntentResolutionResult *)&v14 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadUnsupported = [resultCopy payloadUnsupported];
    hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason = [payloadUnsupported hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason];

    if (hasFindDeviceAndPlaySoundIntentDeviceUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      findDeviceAndPlaySoundIntentDeviceUnsupportedReason = [payloadUnsupported2 findDeviceAndPlaySoundIntentDeviceUnsupportedReason];
      if (findDeviceAndPlaySoundIntentDeviceUnsupportedReason == 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2 * (findDeviceAndPlaySoundIntentDeviceUnsupportedReason == 2);
      }

      [v7 setUnsupportedReason:v12];
    }
  }

  return v7;
}

+ (id)unsupportedForReason:(int64_t)reason
{
  unsupported = [self unsupported];
  [unsupported setUnsupportedReason:reason];

  return unsupported;
}

@end