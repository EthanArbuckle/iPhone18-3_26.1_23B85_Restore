@interface WFMakeVideoFromGIFAction
- (void)cancel;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFMakeVideoFromGIFAction

- (void)cancel
{
  cancelBlock = [(WFMakeVideoFromGIFAction *)self cancelBlock];

  if (cancelBlock)
  {
    cancelBlock2 = [(WFMakeVideoFromGIFAction *)self cancelBlock];
    cancelBlock2[2]();

    [(WFMakeVideoFromGIFAction *)self setCancelBlock:0];
  }

  v5.receiver = self;
  v5.super_class = WFMakeVideoFromGIFAction;
  [(WFMakeVideoFromGIFAction *)&v5 cancel];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v4 = MEMORY[0x277D79F68];
  v5 = *MEMORY[0x277CE1D88];
  inputCopy = input;
  v7 = [v4 typeWithUTType:v5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__WFMakeVideoFromGIFAction_runAsynchronouslyWithInput___block_invoke;
  v9[3] = &unk_278C1D2F0;
  v9[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__WFMakeVideoFromGIFAction_runAsynchronouslyWithInput___block_invoke_3;
  v8[3] = &unk_278C21E70;
  v8[4] = self;
  [inputCopy transformFirstFileRepresentationForType:v7 usingBlock:v9 completionHandler:v8];
}

void __55__WFMakeVideoFromGIFAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    v9 = [*(a1 + 32) parameterValueForKey:@"WFMakeVideoFromGIFActionLoopCount" ofClass:objc_opt_class()];
    [v9 integerValue];

    v10 = [v7 wfName];
    v13 = MEMORY[0x277D85DD0];
    v11 = v8;
    v14 = *(a1 + 32);
    v15 = v11;
    v12 = WFGenerateVideoFromGIF();
    [*(a1 + 32) setCancelBlock:{v12, v13, 3221225472, __55__WFMakeVideoFromGIFAction_runAsynchronouslyWithInput___block_invoke_2, &unk_278C216C8, v14}];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }
}

void __55__WFMakeVideoFromGIFAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

void __55__WFMakeVideoFromGIFAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 32) setCancelBlock:0];
    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = [v6 domain];
    if ([v9 isEqualToString:*MEMORY[0x277CFC5B0]])
    {
      v10 = [v7 code];

      if (!v10)
      {
        v11 = WFLocalizedString(@"GIF Not Animated");
        v12 = WFLocalizedString(@"Make Video from GIF failed because the GIF passed as input was not an animated GIF.");
        v13 = MEMORY[0x277CCA9B8];
        v14 = *MEMORY[0x277D7CB30];
        v15 = *MEMORY[0x277CCA450];
        v19[0] = *MEMORY[0x277CCA470];
        v19[1] = v15;
        v20[0] = v11;
        v20[1] = v12;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
        v17 = [v13 errorWithDomain:v14 code:6 userInfo:v16];

        v7 = v17;
      }
    }

    else
    {
    }

    v8 = *(*(a1 + 40) + 16);
  }

  v8();

  v18 = *MEMORY[0x277D85DE8];
}

@end