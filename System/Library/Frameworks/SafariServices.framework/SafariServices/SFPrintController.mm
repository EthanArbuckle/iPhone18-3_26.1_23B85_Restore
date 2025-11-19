@interface SFPrintController
@end

@implementation SFPrintController

void __89___SFPrintController__preparePrintInteractionControllerForUsage_onlyIfLoaded_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _preparePrintInteractionControllerForUsage:*(a1 + 48) onlyIfLoaded:0 completion:*(a1 + 32)];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

uint64_t __89___SFPrintController__preparePrintInteractionControllerForUsage_onlyIfLoaded_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    [*(*(a1 + 32) + 104) setPrintingItem:a2];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __89___SFPrintController__preparePrintInteractionControllerForUsage_onlyIfLoaded_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) setURLString:*(*(a1 + 40) + 24)];
  if (*(a1 + 80) != 1)
  {
    v4 = [*(a1 + 56) _webViewPrintFormatter];
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = [*(a1 + 48) readerWebView];
  v4 = [v3 _webViewPrintFormatter];

  if (v4)
  {
LABEL_5:
    [*(*(a1 + 40) + 104) setDelegate:*(a1 + 32)];
    [*(*(a1 + 40) + 104) setPrintPageRenderer:*(a1 + 32)];
    [v4 setFrameToPrint:v5];
    [*(a1 + 32) setContentFormatter:v4];
    [v4 setSnapshotFirstPage:*(a1 + 72) == 2];
  }

LABEL_6:
  (*(*(a1 + 64) + 16))();
}

void __39___SFPrintController__printCurrentItem__block_invoke(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = v3[13];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39___SFPrintController__printCurrentItem__block_invoke_2;
    v5[3] = &unk_1E8490D30;
    objc_copyWeak(&v6, (a1 + 40));
    if ([v4 presentAnimated:1 completionHandler:v5])
    {
      *(*(a1 + 32) + 64) = 1;
    }

    objc_destroyWeak(&v6);
  }

  else
  {

    [v3 _didFinishPrintingCurrentItemWithResult:2 fromPrintInteractionControllerCompletion:0];
  }
}

void __39___SFPrintController__printCurrentItem__block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[64] = 0;
    v7 = 1;
    if (!a4)
    {
      v7 = 2;
    }

    if (a3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = WeakRetained;
    [WeakRetained _didFinishPrintingCurrentItemWithResult:v8 fromPrintInteractionControllerCompletion:1];
    WeakRetained = v9;
  }
}

void __103___SFPrintController__didFinishPrintingCurrentItemWithResult_fromPrintInteractionControllerCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleNextPrintRequest];
}

uint64_t __103___SFPrintController__didFinishPrintingCurrentItemWithResult_fromPrintInteractionControllerCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) completeWithResult:*(a1 + 48)];
  v2 = *(a1 + 40);

  return [v2 handleNextPrintRequest];
}

void __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 48) + 8);
  if ((*(v4 + 24) & 1) == 0)
  {
    *(v4 + 24) = 1;
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 32) printInteractionControllerDidFinish];
    }

    v5 = WBS_LOG_CHANNEL_PREFIXPrinting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = 134217984;
      v8 = [v3 length];
      _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_DEFAULT, "Finished generating PDF data of length %zu", &v7, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke_29(uint64_t a1, char a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
    v4 = *(a1 + 32);
    if (*(a1 + 48) == 3)
    {
      v5 = objc_loadWeakRetained((v4 + 96));
      if ([v5 printControllerShouldPrintReader:*(a1 + 32)])
      {
        v6 = objc_loadWeakRetained((*(a1 + 32) + 80));
        v7 = [v6 readerWebView];
      }

      else
      {
        v7 = WeakRetained;
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke_30;
      v13[3] = &unk_1E8490DD0;
      v14 = *(a1 + 40);
      [v7 createPDFWithConfiguration:0 completionHandler:v13];
    }

    else
    {
      [*(v4 + 104) _setupPrintPanel:0];
      v9 = *(*(a1 + 32) + 104);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke_31;
      v11[3] = &unk_1E8490DF8;
      v10 = *(a1 + 40);
      v11[4] = *(a1 + 32);
      v12 = v10;
      [v9 _generatePrintPreview:v11];
      v7 = v12;
    }
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPrinting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_DEFAULT, "Printing isn't currently allowed, so returning nil PDF data", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXPrinting();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke_30_cold_1(v9, v7, v5);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

void __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke_2;
  block[3] = &unk_1E848FF58;
  v7 = v3;
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke_2(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DEF0]);
  v3 = a1[4];
  v16 = 0;
  v4 = [v2 initWithContentsOfURL:v3 options:1 error:&v16];
  v5 = v16;
  v6 = WBS_LOG_CHANNEL_PREFIXPrinting();
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4 == 0;
  }

  if (v8)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = [v5 safari_privacyPreservingDescription];
      v11 = [v4 length];
      v12 = a1[4];
      *buf = 138543875;
      v18 = v10;
      v19 = 2048;
      v20 = v11;
      v21 = 2113;
      v22 = v12;
      _os_log_error_impl(&dword_1D4644000, v9, OS_LOG_TYPE_ERROR, "Failed to generate PDF data: %{public}@; PDF data length: %zu; PDF URL: %{private}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14 = v7;
    v15 = [v4 length];
    *buf = 134217984;
    v18 = v15;
    _os_log_impl(&dword_1D4644000, v14, OS_LOG_TYPE_INFO, "Successfully generated PDF data of length %zu", buf, 0xCu);
  }

  (*(a1[6] + 16))();
  [*(a1[5] + 104) _cleanPrintState];
}

uint64_t __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke_34(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXPrinting();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke_34_cold_1(v2);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

void __44___SFPrintController_handleNextPrintRequest__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (a2)
    {
      [WeakRetained _printCurrentItem];
    }

    else
    {
      [WeakRetained _didFinishPrintingCurrentItemWithResult:2 fromPrintInteractionControllerCompletion:0];
    }

    WeakRetained = v4;
  }
}

void __56___SFPrintController_getPDFDataForUsage_withCompletion___block_invoke_30_cold_1(void *a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 safari_privacyPreservingDescription];
  v7 = 138543618;
  v8 = v6;
  v9 = 2048;
  v10 = [a3 length];
  _os_log_error_impl(&dword_1D4644000, v5, OS_LOG_TYPE_ERROR, "Failed to generate PDF data: %{public}@; PDF data length: %zu", &v7, 0x16u);
}

@end