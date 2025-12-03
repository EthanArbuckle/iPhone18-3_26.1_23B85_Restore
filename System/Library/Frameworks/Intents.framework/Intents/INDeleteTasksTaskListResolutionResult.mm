@interface INDeleteTasksTaskListResolutionResult
+ (INDeleteTasksTaskListResolutionResult)unsupportedForReason:(INDeleteTasksTaskListUnsupportedReason)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INDeleteTasksTaskListResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v9.receiver = self;
  v9.super_class = INDeleteTasksTaskListResolutionResult;
  v4 = [(INIntentResolutionResult *)&v9 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    payloadUnsupported = [v4 payloadUnsupported];
    [payloadUnsupported setReason:1000];

    payloadUnsupported2 = [v4 payloadUnsupported];
    if ([(INIntentResolutionResult *)self unsupportedReason]== 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    [payloadUnsupported2 setDeleteTasksIntentTaskListUnsupportedReason:v7];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = INDeleteTasksTaskListResolutionResult;
  v7 = [(INIntentResolutionResult *)&v12 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadUnsupported = [resultCopy payloadUnsupported];
    hasDeleteTasksIntentTaskListUnsupportedReason = [payloadUnsupported hasDeleteTasksIntentTaskListUnsupportedReason];

    if (hasDeleteTasksIntentTaskListUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      [v7 setUnsupportedReason:{objc_msgSend(payloadUnsupported2, "deleteTasksIntentTaskListUnsupportedReason") == 1}];
    }
  }

  return v7;
}

+ (INDeleteTasksTaskListResolutionResult)unsupportedForReason:(INDeleteTasksTaskListUnsupportedReason)reason
{
  unsupported = [self unsupported];
  [unsupported setUnsupportedReason:reason];

  return unsupported;
}

@end