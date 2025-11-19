@interface WFGetFramesFromImageAction
- (void)cancel;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFGetFramesFromImageAction

- (void)cancel
{
  v3 = [(WFGetFramesFromImageAction *)self cancelBlock];

  if (v3)
  {
    v4 = [(WFGetFramesFromImageAction *)self cancelBlock];
    v4[2]();

    [(WFGetFramesFromImageAction *)self setCancelBlock:0];
  }

  v5.receiver = self;
  v5.super_class = WFGetFramesFromImageAction;
  [(WFGetFramesFromImageAction *)&v5 cancel];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke;
  v7[3] = &unk_278C211D0;
  v7[4] = self;
  [v4 generateCollectionByCoercingToItemClasses:v5 completionHandler:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke_2;
    v17[3] = &unk_278C1B0A0;
    v18 = *(a1 + 32);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke_5;
    v16[3] = &unk_278C21E70;
    v16[4] = v18;
    [v6 transformItemsAndFlattenUsingBlock:v17 completionHandler:v16];
  }

  else
  {
    v8 = *(a1 + 32);
    if (v7)
    {
      [v8 finishRunningWithError:v7];
    }

    else
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277D7CB30];
      v19[0] = *MEMORY[0x277CCA470];
      v11 = WFLocalizedString(@"No Image Provided");
      v20[0] = v11;
      v19[1] = *MEMORY[0x277CCA450];
      v12 = WFLocalizedString(@"No GIF was passed as input to Get Frames from Image.");
      v20[1] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
      v14 = [v9 errorWithDomain:v10 code:6 userInfo:v13];
      [v8 finishRunningWithError:v14];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = [v5 asset];
  v8 = [v7 burstIdentifier];

  if (!v8)
  {

LABEL_5:
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke_3;
    v13[3] = &unk_278C216C8;
    v14 = *(a1 + 32);
    v15 = v6;
    v12 = [MEMORY[0x277D79F68] typeWithUTType:{*MEMORY[0x277CE1D88], v13[0], 3221225472, __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke_3, &unk_278C216C8, v14}];
    [v5 getFileRepresentation:v13 forType:v12];

    goto LABEL_6;
  }

  v9 = MEMORY[0x277CFC4C0];
  v10 = [v7 burstIdentifier];
  v11 = [v9 itemsWithBurstIdentifier:v10];
  (*(v6 + 2))(v6, v11, 0);

LABEL_6:
}

void __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  v6 = a2;
  [v5 setCancelBlock:0];
  [*(a1 + 32) setOutput:v6];

  [*(a1 + 32) finishRunningWithError:v7];
}

void __57__WFGetFramesFromImageAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 wfName];
  v6 = *(a1 + 40);
  v5 = WFGenerateImageFilesFromGIF();

  [*(a1 + 32) setCancelBlock:v5];
}

@end