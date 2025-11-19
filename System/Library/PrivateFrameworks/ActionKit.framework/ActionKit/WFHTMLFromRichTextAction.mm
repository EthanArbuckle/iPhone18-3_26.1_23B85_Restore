@interface WFHTMLFromRichTextAction
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFHTMLFromRichTextAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = MEMORY[0x277D79F68];
  v5 = *MEMORY[0x277CE1DA0];
  v6 = a3;
  v7 = [v4 typeWithUTType:v5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__WFHTMLFromRichTextAction_runAsynchronouslyWithInput___block_invoke;
  v9[3] = &unk_278C1D2F0;
  v9[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__WFHTMLFromRichTextAction_runAsynchronouslyWithInput___block_invoke_2;
  v8[3] = &unk_278C21E70;
  v8[4] = self;
  [v6 transformFirstFileRepresentationForType:v7 usingBlock:v9 completionHandler:v8];
}

void __55__WFHTMLFromRichTextAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v17 data];
  v10 = [*(a1 + 32) parameterValueForKey:@"WFMakeFullDocument" ofClass:objc_opt_class()];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = [MEMORY[0x277CFC4F8] normalizedHTMLDocumentFromHTMLData:v9];

    v9 = v12;
  }

  v13 = [MEMORY[0x277CCACA8] wf_stringWithData:v9];
  if (v13)
  {
    v14 = MEMORY[0x277CFC488];
    v15 = [v17 wfName];
    v16 = [v14 object:v13 named:v15];
    v8[2](v8, v16, v7);
  }

  else
  {
    v8[2](v8, 0, v7);
  }
}

void __55__WFHTMLFromRichTextAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

@end