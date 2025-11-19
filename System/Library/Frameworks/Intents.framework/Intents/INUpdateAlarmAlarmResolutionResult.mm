@interface INUpdateAlarmAlarmResolutionResult
+ (id)unsupportedForReason:(int64_t)a3;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3;
- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4;
@end

@implementation INUpdateAlarmAlarmResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3
{
  v10.receiver = self;
  v10.super_class = INUpdateAlarmAlarmResolutionResult;
  v4 = [(INIntentResolutionResult *)&v10 _buildIntentSlotResolutionResultWithIntentSlotDescription:a3];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    v5 = [v4 payloadUnsupported];
    [v5 setReason:1000];

    v6 = [v4 payloadUnsupported];
    v7 = [(INIntentResolutionResult *)self unsupportedReason]- 1;
    if (v7 > 2)
    {
      v8 = 0x7FFFFFFFLL;
    }

    else
    {
      v8 = dword_18EE5FB00[v7];
    }

    [v6 setUpdateAlarmIntentAlarmUnsupportedReason:v8];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = INUpdateAlarmAlarmResolutionResult;
  v7 = [(INIntentResolutionResult *)&v14 _initWithIntentSlotResolutionResult:v6 slotDescription:a4];
  if (v7)
  {
    v8 = [v6 payloadUnsupported];
    v9 = [v8 hasUpdateAlarmIntentAlarmUnsupportedReason];

    if (v9)
    {
      v10 = [v6 payloadUnsupported];
      v11 = [v10 updateAlarmIntentAlarmUnsupportedReason];
      if (v11 > 3)
      {
        v12 = 0;
      }

      else
      {
        v12 = qword_18EE5FAE0[v11];
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