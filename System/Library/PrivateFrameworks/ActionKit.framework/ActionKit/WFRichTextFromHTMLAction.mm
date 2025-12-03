@interface WFRichTextFromHTMLAction
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFRichTextFromHTMLAction

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__WFRichTextFromHTMLAction_runAsynchronouslyWithInput___block_invoke_2;
  v6[3] = &unk_278C21E70;
  v6[4] = self;
  [inputCopy transformFirstObjectRepresentationForClass:v5 usingBlock:&__block_literal_global_3386 completionHandler:v6];
}

void __55__WFRichTextFromHTMLAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

void __55__WFRichTextFromHTMLAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a3;
  if (a2)
  {
    v8 = a5;
    v9 = a4;
    v10 = [a2 dataUsingEncoding:10];
    v11 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
    v12 = [MEMORY[0x277CFC3C8] fileWithData:v10 ofType:v11 proposedFilename:v14];
    (v8[2])(v8, v12, v9);
  }

  else
  {
    v13 = a5[2];
    v11 = a5;
    v10 = a4;
    v13(v11, 0, v10);
  }
}

@end