@interface INAddTasksTargetTaskListResolutionResult
+ (INAddTasksTargetTaskListResolutionResult)confirmationRequiredWithTaskListToConfirm:(INTaskList *)taskListToConfirm forReason:(INAddTasksTargetTaskListConfirmationReason)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INAddTasksTargetTaskListResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v9.receiver = self;
  v9.super_class = INAddTasksTargetTaskListResolutionResult;
  v4 = [(INIntentResolutionResult *)&v9 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 3 && [(INIntentResolutionResult *)self confirmationReason])
  {
    payloadConfirmation = [v4 payloadConfirmation];
    [payloadConfirmation setReason:1000];

    payloadConfirmation2 = [v4 payloadConfirmation];
    if ([(INIntentResolutionResult *)self confirmationReason]== 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    [payloadConfirmation2 setAddTasksIntentTargetTaskListConfirmationReason:v7];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = INAddTasksTargetTaskListResolutionResult;
  v7 = [(INIntentResolutionResult *)&v12 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadConfirmation = [resultCopy payloadConfirmation];
    hasAddTasksIntentTargetTaskListConfirmationReason = [payloadConfirmation hasAddTasksIntentTargetTaskListConfirmationReason];

    if (hasAddTasksIntentTargetTaskListConfirmationReason)
    {
      payloadConfirmation2 = [resultCopy payloadConfirmation];
      [v7 setConfirmationReason:{objc_msgSend(payloadConfirmation2, "addTasksIntentTargetTaskListConfirmationReason") == 1}];
    }
  }

  return v7;
}

+ (INAddTasksTargetTaskListResolutionResult)confirmationRequiredWithTaskListToConfirm:(INTaskList *)taskListToConfirm forReason:(INAddTasksTargetTaskListConfirmationReason)reason
{
  v5 = [self confirmationRequiredWithTaskListToConfirm:taskListToConfirm];
  [v5 setConfirmationReason:reason];

  return v5;
}

@end