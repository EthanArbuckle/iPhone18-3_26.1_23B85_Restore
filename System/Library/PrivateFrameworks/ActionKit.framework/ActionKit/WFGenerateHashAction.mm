@interface WFGenerateHashAction
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFGenerateHashAction

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = [(WFGenerateHashAction *)self parameterValueForKey:@"WFHashType" ofClass:objc_opt_class()];
  if ([v5 isEqualToString:@"SHA1"])
  {
    v6 = MEMORY[0x277D85BA0];
    v7 = 20;
  }

  else if ([v5 isEqualToString:@"SHA256"])
  {
    v6 = MEMORY[0x277D85BC0];
    v7 = 32;
  }

  else
  {
    v8 = [v5 isEqualToString:@"SHA512"];
    if (v8)
    {
      v6 = MEMORY[0x277D85BF8];
    }

    else
    {
      v6 = MEMORY[0x277D85B80];
    }

    if (v8)
    {
      v7 = 64;
    }

    else
    {
      v7 = 16;
    }
  }

  v9 = malloc_type_malloc(v7, 0xAD7EAD5CuLL);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__WFGenerateHashAction_runAsynchronouslyWithInput___block_invoke;
  v11[3] = &__block_descriptor_56_e62_v32__0__WFFileRepresentation_8__NSError_16___v_____NSError__24l;
  v11[4] = v6;
  v11[5] = v9;
  v11[6] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__WFGenerateHashAction_runAsynchronouslyWithInput___block_invoke_2;
  v10[3] = &unk_278C198A0;
  v10[4] = self;
  v10[5] = v9;
  [inputCopy transformFileRepresentationsForType:0 usingBlock:v11 completionHandler:v10];
}

void __51__WFGenerateHashAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v15 mappedData];
  v10 = objc_opt_new();
  (*(a1 + 32))([v9 bytes], objc_msgSend(v9, "length"), *(a1 + 40));
  if (*(a1 + 48))
  {
    v11 = 0;
    do
    {
      [v10 appendFormat:@"%02x", *(*(a1 + 40) + v11++)];
    }

    while (*(a1 + 48) > v11);
  }

  v12 = MEMORY[0x277CFC488];
  v13 = [v15 wfName];
  v14 = [v12 object:v10 named:v13];
  v8[2](v8, v14, v7);
}

void __51__WFGenerateHashAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v7 = a3;
  v6 = a2;
  free(v5);
  [*(a1 + 32) setOutput:v6];

  [*(a1 + 32) finishRunningWithError:v7];
}

@end