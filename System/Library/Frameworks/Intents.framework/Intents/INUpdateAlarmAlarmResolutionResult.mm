@interface INUpdateAlarmAlarmResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INUpdateAlarmAlarmResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v10.receiver = self;
  v10.super_class = INUpdateAlarmAlarmResolutionResult;
  v4 = [(INIntentResolutionResult *)&v10 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    payloadUnsupported = [v4 payloadUnsupported];
    [payloadUnsupported setReason:1000];

    payloadUnsupported2 = [v4 payloadUnsupported];
    v7 = [(INIntentResolutionResult *)self unsupportedReason]- 1;
    if (v7 > 2)
    {
      v8 = 0x7FFFFFFFLL;
    }

    else
    {
      v8 = dword_18EE5FB00[v7];
    }

    [payloadUnsupported2 setUpdateAlarmIntentAlarmUnsupportedReason:v8];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = INUpdateAlarmAlarmResolutionResult;
  v7 = [(INIntentResolutionResult *)&v14 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadUnsupported = [resultCopy payloadUnsupported];
    hasUpdateAlarmIntentAlarmUnsupportedReason = [payloadUnsupported hasUpdateAlarmIntentAlarmUnsupportedReason];

    if (hasUpdateAlarmIntentAlarmUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      updateAlarmIntentAlarmUnsupportedReason = [payloadUnsupported2 updateAlarmIntentAlarmUnsupportedReason];
      if (updateAlarmIntentAlarmUnsupportedReason > 3)
      {
        v12 = 0;
      }

      else
      {
        v12 = qword_18EE5FAE0[updateAlarmIntentAlarmUnsupportedReason];
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