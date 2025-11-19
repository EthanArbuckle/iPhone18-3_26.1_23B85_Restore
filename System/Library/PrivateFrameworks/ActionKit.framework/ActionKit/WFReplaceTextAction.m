@interface WFReplaceTextAction
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFReplaceTextAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = [(WFReplaceTextAction *)self parameterValueForKey:@"WFReplaceTextRegularExpression" ofClass:objc_opt_class()];
  v6 = [v5 BOOLValue];

  v7 = [(WFReplaceTextAction *)self parameterValueForKey:@"WFReplaceTextCaseSensitive" ofClass:objc_opt_class()];
  v8 = [v7 BOOLValue];

  v9 = [(WFReplaceTextAction *)self parameterValueForKey:@"WFReplaceTextFind" ofClass:objc_opt_class()];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_2850323E8;
  }

  v12 = v11;

  v13 = [(WFReplaceTextAction *)self parameterValueForKey:@"WFReplaceTextReplace" ofClass:objc_opt_class()];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_2850323E8;
  }

  v16 = v15;

  if (v6)
  {
    v17 = v8 ^ 1u | 0x400;
  }

  else
  {
    v17 = v8 ^ 1u;
  }

  v18 = objc_opt_class();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __50__WFReplaceTextAction_runAsynchronouslyWithInput___block_invoke;
  v22[3] = &unk_278C1AD48;
  v23 = v12;
  v24 = v16;
  v25 = v17;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __50__WFReplaceTextAction_runAsynchronouslyWithInput___block_invoke_2;
  v21[3] = &unk_278C21E70;
  v21[4] = self;
  v19 = v16;
  v20 = v12;
  [v4 transformObjectRepresentationsForClass:v18 usingBlock:v22 completionHandler:v21];
}

void __50__WFReplaceTextAction_runAsynchronouslyWithInput___block_invoke(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a5;
  v11 = a4;
  v12 = a2;
  v13 = [v12 stringByReplacingOccurrencesOfString:v7 withString:v8 options:v9 range:{0, objc_msgSend(v12, "length")}];

  v10[2](v10, v13, v11);
}

uint64_t __50__WFReplaceTextAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setOutput:a2];
  v3 = *(a1 + 32);

  return [v3 finishRunningWithError:0];
}

@end