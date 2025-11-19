@interface WFImageResizeAction
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFImageResizeAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__WFImageResizeAction_runAsynchronouslyWithInput___block_invoke;
  v6[3] = &unk_278C211D0;
  v6[4] = self;
  [v4 generateCollectionByCoercingToItemClass:v5 completionHandler:v6];
}

void __50__WFImageResizeAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v8 = [*(a1 + 32) parameterValueForKey:@"WFImageResizeWidth" ofClass:objc_opt_class()];
    [v8 floatValue];
    v10 = v9;

    v11 = [*(a1 + 32) parameterValueForKey:@"WFImageResizeHeight" ofClass:objc_opt_class()];
    [v11 floatValue];
    v13 = v12;

    v14 = [*(a1 + 32) parameterValueForKey:@"WFImageResizePercentage" ofClass:objc_opt_class()];
    [v14 floatValue];
    v16 = v15;

    v17 = [*(a1 + 32) parameterValueForKey:@"WFImageResizeLength" ofClass:objc_opt_class()];
    [v17 floatValue];
    v19 = v18;

    v20 = [*(a1 + 32) parameterValueForKey:@"WFImageResizeKey" ofClass:objc_opt_class()];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__WFImageResizeAction_runAsynchronouslyWithInput___block_invoke_2;
    v23[3] = &unk_278C18EE0;
    v25 = v10;
    v26 = v13;
    v24 = v20;
    v27 = v16;
    v28 = v19;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __50__WFImageResizeAction_runAsynchronouslyWithInput___block_invoke_4;
    v22[3] = &unk_278C21E70;
    v22[4] = *(a1 + 32);
    v21 = v20;
    [v6 transformItemsUsingBlock:v23 completionHandler:v22];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v7];
  }
}

void __50__WFImageResizeAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__WFImageResizeAction_runAsynchronouslyWithInput___block_invoke_3;
  v7[3] = &unk_278C18EB8;
  v9 = v5;
  v10 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = *(a1 + 56);
  v6 = v5;
  [a2 getFileRepresentation:v7 forType:0];
}

void __50__WFImageResizeAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

void __50__WFImageResizeAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2)
{
  v14 = a2;
  if (v14)
  {
    WFImageSizeFromFile();
    v4 = v3;
    v6 = v5;
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    if ([*(a1 + 32) isEqualToString:@"Size"])
    {
      if (*(a1 + 48) == 0.0)
      {
        v9 = v4 / v6 * *(a1 + 56);
      }

      else
      {
        *(a1 + 56);
      }
    }

    else if ([*(a1 + 32) isEqualToString:@"Percentage"])
    {
      v10 = v6 * *(a1 + 64) / 100.0;
    }

    else if ([*(a1 + 32) isEqualToString:@"Longest Edge"])
    {
      v11 = *(a1 + 72);
      if (v6 <= v4)
      {
        v12 = *(a1 + 72);
      }
    }

    v13 = *(a1 + 40);
    WFAsyncTransformedImageFromImage();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

@end