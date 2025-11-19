@interface WFURLEncodeAction
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFURLEncodeAction

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  v5 = [(WFURLEncodeAction *)self parameterValueForKey:@"WFEncodeMode" ofClass:objc_opt_class()];
  v6 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__WFURLEncodeAction_runAsynchronouslyWithInput___block_invoke;
  v9[3] = &unk_278C1DFC8;
  v10 = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__WFURLEncodeAction_runAsynchronouslyWithInput___block_invoke_2;
  v8[3] = &unk_278C21E70;
  v8[4] = self;
  v7 = v5;
  [v4 transformObjectRepresentationsForClass:v6 usingBlock:v9 completionHandler:v8];
}

void __48__WFURLEncodeAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v15 = a2;
  if (v15)
  {
    v8 = *(a1 + 32);
    v9 = a5;
    v10 = a4;
    if ([v8 isEqualToString:@"Decode"])
    {
      v11 = [v15 stringByRemovingPercentEncoding];
      if (!v11)
      {
        v11 = v15;
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
      v14 = [v13 mutableCopy];

      [v14 removeCharactersInString:@"?&="];
      v11 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:v14];
    }

    (v9[2])(v9, v11, v10);
  }

  else
  {
    v12 = a5[2];
    v10 = a5;
    v11 = a4;
    v12(v10, 0, v11);
  }
}

void __48__WFURLEncodeAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

@end