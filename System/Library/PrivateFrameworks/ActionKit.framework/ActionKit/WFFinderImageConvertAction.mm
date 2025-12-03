@interface WFFinderImageConvertAction
- (id)contextualAction;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFFinderImageConvertAction

- (id)contextualAction
{
  runningDelegate = [(WFFinderImageConvertAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    runningDelegate2 = [(WFFinderImageConvertAction *)self runningDelegate];
    v6 = [runningDelegate2 currentRunningContextForAction:self];

    contextualAction = [v6 contextualAction];
  }

  else
  {
    contextualAction = 0;
  }

  return contextualAction;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = [(WFFinderImageConvertAction *)self parameterValueForKey:@"WFFileFormat" ofClass:objc_opt_class()];
  v6 = [(WFFinderImageConvertAction *)self parameterValueForKey:@"WFSize" ofClass:objc_opt_class()];
  v7 = [(WFFinderImageConvertAction *)self parameterValueForKey:@"WFPreserveMetadata" ofClass:objc_opt_class()];
  v8 = WFFinderImageResizeFormatFromDescription();
  v9 = WFFinderImageResizeSizeFromDescription();
  v10 = objc_alloc_init(MEMORY[0x277D7C430]);
  v11 = [objc_alloc(MEMORY[0x277D79F70]) initWithFormat:v8 size:v9 preserveMetadata:objc_msgSend(v7, "BOOLValue")];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__WFFinderImageConvertAction_runAsynchronouslyWithInput___block_invoke;
  v15[3] = &unk_278C21E70;
  v15[4] = self;
  v12 = [v10 resizeImages:inputCopy toSize:v11 completion:v15];

  progress = [(WFFinderImageConvertAction *)self progress];
  [progress setTotalUnitCount:1];

  progress2 = [(WFFinderImageConvertAction *)self progress];
  [progress2 addChild:v12 withPendingUnitCount:1];
}

void __57__WFFinderImageConvertAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

@end