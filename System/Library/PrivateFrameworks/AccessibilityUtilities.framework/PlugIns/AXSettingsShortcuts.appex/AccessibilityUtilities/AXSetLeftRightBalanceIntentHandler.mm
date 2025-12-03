@interface AXSetLeftRightBalanceIntentHandler
- (void)handleSetLeftRightBalance:(id)balance completion:(id)completion;
- (void)resolveOperationForSetLeftRightBalance:(id)balance withCompletion:(id)completion;
- (void)resolveParameterForSetLeftRightBalance:(id)balance withCompletion:(id)completion;
- (void)resolveValueForSetLeftRightBalance:(id)balance withCompletion:(id)completion;
@end

@implementation AXSetLeftRightBalanceIntentHandler

- (void)handleSetLeftRightBalance:(id)balance completion:(id)completion
{
  balanceCopy = balance;
  completionCopy = completion;
  if ([balanceCopy operation] == 1)
  {
    v6 = +[AXSettings sharedInstance];
    leftRightBalanceEnabled = [v6 leftRightBalanceEnabled];

    v8 = +[AXSettings sharedInstance];
    [v8 setLeftRightBalanceEnabled:leftRightBalanceEnabled ^ 1];
  }

  else
  {
    if ([balanceCopy operation] != 2)
    {
      goto LABEL_6;
    }

    value = [balanceCopy value];
    [value floatValue];

    AXSLogarithmicValueForLinearValue();
    v11 = v10;
    v12 = v10 != 0.0;
    v13 = +[AXSettings sharedInstance];
    [v13 setLeftRightBalanceEnabled:v12];

    v14 = +[AXSettings sharedInstance];
    [v14 setLeftRightBalanceValue:v11];

    _AXSSetLeftRightAudioBalance();
  }

  v15 = [[AXSetLeftRightBalanceIntentResponse alloc] initWithCode:4 userActivity:0];
  completionCopy[2](completionCopy, v15);

LABEL_6:
}

- (void)resolveOperationForSetLeftRightBalance:(id)balance withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXLeftRightBalanceOperationResolutionResult successWithResolvedLeftRightBalanceOperation:](AXLeftRightBalanceOperationResolutionResult, "successWithResolvedLeftRightBalanceOperation:", [balance operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveParameterForSetLeftRightBalance:(id)balance withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [balance parameter]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveValueForSetLeftRightBalance:(id)balance withCompletion:(id)completion
{
  completionCopy = completion;
  value = [balance value];
  [value doubleValue];
  v7 = [AXSetLeftRightBalanceValueResolutionResult successWithResolvedValue:?];
  (*(completion + 2))(completionCopy, v7);
}

@end