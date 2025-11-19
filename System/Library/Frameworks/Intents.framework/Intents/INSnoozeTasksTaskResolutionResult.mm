@interface INSnoozeTasksTaskResolutionResult
+ (INSnoozeTasksTaskResolutionResult)unsupportedForReason:(INSnoozeTasksTaskUnsupportedReason)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3;
- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4;
@end

@implementation INSnoozeTasksTaskResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3
{
  v9.receiver = self;
  v9.super_class = INSnoozeTasksTaskResolutionResult;
  v4 = [(INIntentResolutionResult *)&v9 _buildIntentSlotResolutionResultWithIntentSlotDescription:a3];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    v5 = [v4 payloadUnsupported];
    [v5 setReason:1000];

    v6 = [v4 payloadUnsupported];
    if ([(INIntentResolutionResult *)self unsupportedReason]== 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    [v6 setSnoozeTasksIntentTaskUnsupportedReason:v7];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = INSnoozeTasksTaskResolutionResult;
  v7 = [(INIntentResolutionResult *)&v12 _initWithIntentSlotResolutionResult:v6 slotDescription:a4];
  if (v7)
  {
    v8 = [v6 payloadUnsupported];
    v9 = [v8 hasSnoozeTasksIntentTaskUnsupportedReason];

    if (v9)
    {
      v10 = [v6 payloadUnsupported];
      [v7 setUnsupportedReason:{objc_msgSend(v10, "snoozeTasksIntentTaskUnsupportedReason") == 1}];
    }
  }

  return v7;
}

+ (INSnoozeTasksTaskResolutionResult)unsupportedForReason:(INSnoozeTasksTaskUnsupportedReason)reason
{
  v4 = [a1 unsupported];
  [v4 setUnsupportedReason:reason];

  return v4;
}

@end