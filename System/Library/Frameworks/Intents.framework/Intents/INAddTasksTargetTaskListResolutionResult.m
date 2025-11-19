@interface INAddTasksTargetTaskListResolutionResult
+ (INAddTasksTargetTaskListResolutionResult)confirmationRequiredWithTaskListToConfirm:(INTaskList *)taskListToConfirm forReason:(INAddTasksTargetTaskListConfirmationReason)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3;
- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4;
@end

@implementation INAddTasksTargetTaskListResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)a3
{
  v9.receiver = self;
  v9.super_class = INAddTasksTargetTaskListResolutionResult;
  v4 = [(INIntentResolutionResult *)&v9 _buildIntentSlotResolutionResultWithIntentSlotDescription:a3];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 3 && [(INIntentResolutionResult *)self confirmationReason])
  {
    v5 = [v4 payloadConfirmation];
    [v5 setReason:1000];

    v6 = [v4 payloadConfirmation];
    if ([(INIntentResolutionResult *)self confirmationReason]== 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    [v6 setAddTasksIntentTargetTaskListConfirmationReason:v7];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)a3 slotDescription:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = INAddTasksTargetTaskListResolutionResult;
  v7 = [(INIntentResolutionResult *)&v12 _initWithIntentSlotResolutionResult:v6 slotDescription:a4];
  if (v7)
  {
    v8 = [v6 payloadConfirmation];
    v9 = [v8 hasAddTasksIntentTargetTaskListConfirmationReason];

    if (v9)
    {
      v10 = [v6 payloadConfirmation];
      [v7 setConfirmationReason:{objc_msgSend(v10, "addTasksIntentTargetTaskListConfirmationReason") == 1}];
    }
  }

  return v7;
}

+ (INAddTasksTargetTaskListResolutionResult)confirmationRequiredWithTaskListToConfirm:(INTaskList *)taskListToConfirm forReason:(INAddTasksTargetTaskListConfirmationReason)reason
{
  v5 = [a1 confirmationRequiredWithTaskListToConfirm:taskListToConfirm];
  [v5 setConfirmationReason:reason];

  return v5;
}

@end