@interface WFImageFlipAction
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFImageFlipAction

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = [(WFImageFlipAction *)self parameterValueForKey:@"WFImageFlipDirection" ofClass:objc_opt_class()];
  v6 = [v5 isEqualToString:@"Horizontal"] ^ 1;
  v7 = objc_opt_class();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__WFImageFlipAction_runAsynchronouslyWithInput___block_invoke;
  v8[3] = &unk_278C1B8B0;
  v8[4] = self;
  v8[5] = v6;
  [inputCopy generateCollectionByCoercingToItemClass:v7 completionHandler:v8];
}

void __48__WFImageFlipAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__WFImageFlipAction_runAsynchronouslyWithInput___block_invoke_2;
    v9[3] = &__block_descriptor_40_e43_v24__0__WFContentItem_8___v_____NSError__16l;
    v9[4] = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__WFImageFlipAction_runAsynchronouslyWithInput___block_invoke_5;
    v8[3] = &unk_278C21E70;
    v8[4] = *(a1 + 32);
    [v6 transformItemsUsingBlock:v9 completionHandler:v8];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v7];
  }
}

void __48__WFImageFlipAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__WFImageFlipAction_runAsynchronouslyWithInput___block_invoke_3;
  v8[3] = &unk_278C1C920;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a2 getFileRepresentation:v8 forType:0];
}

void __48__WFImageFlipAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

void __48__WFImageFlipAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WFImageSizeFromFile();
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    WFAsyncTransformedImageFromImage();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __48__WFImageFlipAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1, void *a2, id a3, double a4, double a5, CGFloat a6, CGFloat a7)
{
  v12 = a3;
  v13 = a3;
  v22 = a2;
  v14 = [v13 CGContext];
  v15 = v14;
  if (*(a1 + 32))
  {
    CGContextTranslateCTM(v14, 0.0, a7);
    v16 = 1.0;
    v17 = -1.0;
  }

  else
  {
    CGContextTranslateCTM(v14, a6, 0.0);
    v16 = -1.0;
    v17 = 1.0;
  }

  CGContextScaleCTM(v15, v16, v17);
  v18 = *MEMORY[0x277CBF348];
  v19 = *(MEMORY[0x277CBF348] + 8);
  [v22 sizeInPoints];
  [v22 drawInContext:v13 inRect:{v18, v19, v20, v21}];
}

@end