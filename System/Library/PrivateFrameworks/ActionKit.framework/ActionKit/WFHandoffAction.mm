@interface WFHandoffAction
- (void)runWithInput:(id)input error:(id *)error;
@end

@implementation WFHandoffAction

- (void)runWithInput:(id)input error:(id *)error
{
  runningDelegate = [(WFHandoffAction *)self runningDelegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0 || (-[WFHandoffAction runningDelegate](self, "runningDelegate"), v8 = objc_claimAutoreleasedReturnValue(), [v8 currentRunningContextForAction:self], v9 = objc_claimAutoreleasedReturnValue(), v8, LOBYTE(v8) = objc_msgSend(v9, "isShortcutsApp"), v9, (v8 & 1) == 0))
  {
    userInterface = [(WFHandoffAction *)self userInterface];
    isRunningWithSiriUI = [userInterface isRunningWithSiriUI];

    if (isRunningWithSiriUI)
    {
      *error = [MEMORY[0x277CCA9B8] wfUnsupportedUserInterfaceError];
    }
  }
}

@end