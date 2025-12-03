@interface INAddTasksTargetTaskListMemberResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INAddTasksTargetTaskListMemberResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v9.receiver = self;
  v9.super_class = INAddTasksTargetTaskListMemberResolutionResult;
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

    [payloadUnsupported2 setAddTasksIntentTargetTaskListMembersUnsupportedReason:v7];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = INAddTasksTargetTaskListMemberResolutionResult;
  v7 = [(INIntentResolutionResult *)&v12 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadUnsupported = [resultCopy payloadUnsupported];
    hasAddTasksIntentTargetTaskListMembersUnsupportedReason = [payloadUnsupported hasAddTasksIntentTargetTaskListMembersUnsupportedReason];

    if (hasAddTasksIntentTargetTaskListMembersUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      [v7 setUnsupportedReason:{objc_msgSend(payloadUnsupported2, "addTasksIntentTargetTaskListMembersUnsupportedReason") == 1}];
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