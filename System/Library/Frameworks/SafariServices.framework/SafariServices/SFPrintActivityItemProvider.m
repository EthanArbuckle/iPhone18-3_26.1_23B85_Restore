@interface SFPrintActivityItemProvider
@end

@implementation SFPrintActivityItemProvider

uint64_t __47___SFPrintActivityItemProvider_pdfItemProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47___SFPrintActivityItemProvider_pdfItemProvider__block_invoke_2;
  v6[3] = &unk_1E8490818;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  return 0;
}

void __47___SFPrintActivityItemProvider_pdfItemProvider__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 344);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47___SFPrintActivityItemProvider_pdfItemProvider__block_invoke_3;
  v4[3] = &unk_1E84942F0;
  v4[4] = v2;
  v5 = v1;
  [v3 getPDFDataForUsage:1 withCompletion:v4];
}

void __47___SFPrintActivityItemProvider_pdfItemProvider__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 328) setSize:{objc_msgSend(v3, "length")}];
  (*(*(a1 + 40) + 16))();
}

@end