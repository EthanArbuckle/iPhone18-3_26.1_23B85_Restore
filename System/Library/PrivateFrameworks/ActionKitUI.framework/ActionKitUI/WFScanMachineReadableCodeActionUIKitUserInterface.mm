@interface WFScanMachineReadableCodeActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithCode:(id)code error:(id)error;
- (void)showWithCompletionHandler:(id)handler;
@end

@implementation WFScanMachineReadableCodeActionUIKitUserInterface

- (void)finishWithCode:(id)code error:(id)error
{
  codeCopy = code;
  errorCopy = error;
  completionHandler = [(WFScanMachineReadableCodeActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFScanMachineReadableCodeActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, codeCopy, errorCopy);
  }

  [(WFScanMachineReadableCodeActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __93__WFScanMachineReadableCodeActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFScanMachineReadableCodeActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __93__WFScanMachineReadableCodeActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithCode:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)showWithCompletionHandler:(id)handler
{
  v94 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    handlerCopy = 0;
  }

  v79 = handlerCopy;
  [(WFScanMachineReadableCodeActionUIKitUserInterface *)self setCompletionHandler:?];
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v6 = getAVMetadataObjectTypeUPCECodeSymbolLoc_ptr;
  v91 = getAVMetadataObjectTypeUPCECodeSymbolLoc_ptr;
  if (!getAVMetadataObjectTypeUPCECodeSymbolLoc_ptr)
  {
    v83 = MEMORY[0x277D85DD0];
    v84 = 3221225472;
    v85 = __getAVMetadataObjectTypeUPCECodeSymbolLoc_block_invoke;
    v86 = &unk_278C37610;
    v87 = &v88;
    v7 = AVFoundationLibrary();
    v89[3] = dlsym(v7, "AVMetadataObjectTypeUPCECode");
    getAVMetadataObjectTypeUPCECodeSymbolLoc_ptr = *(v87[1] + 24);
    v6 = v89[3];
  }

  _Block_object_dispose(&v88, 8);
  if (!v6)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataObjectType getAVMetadataObjectTypeUPCECode(void)"];
    [currentHandler2 handleFailureInFunction:v49 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:19 description:{@"%s", dlerror()}];

    goto LABEL_56;
  }

  v8 = *v6;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v9 = getAVMetadataObjectTypeCode39CodeSymbolLoc_ptr;
  v91 = getAVMetadataObjectTypeCode39CodeSymbolLoc_ptr;
  v92[0] = v8;
  if (!getAVMetadataObjectTypeCode39CodeSymbolLoc_ptr)
  {
    v83 = MEMORY[0x277D85DD0];
    v84 = 3221225472;
    v85 = __getAVMetadataObjectTypeCode39CodeSymbolLoc_block_invoke;
    v86 = &unk_278C37610;
    v87 = &v88;
    v10 = AVFoundationLibrary();
    v89[3] = dlsym(v10, "AVMetadataObjectTypeCode39Code");
    getAVMetadataObjectTypeCode39CodeSymbolLoc_ptr = *(v87[1] + 24);
    v9 = v89[3];
  }

  _Block_object_dispose(&v88, 8);
  if (!v9)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataObjectType getAVMetadataObjectTypeCode39Code(void)"];
    [currentHandler3 handleFailureInFunction:v51 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:20 description:{@"%s", dlerror()}];

    goto LABEL_56;
  }

  v11 = *v9;
  v92[1] = v11;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v12 = getAVMetadataObjectTypeCode39Mod43CodeSymbolLoc_ptr;
  v91 = getAVMetadataObjectTypeCode39Mod43CodeSymbolLoc_ptr;
  if (!getAVMetadataObjectTypeCode39Mod43CodeSymbolLoc_ptr)
  {
    v83 = MEMORY[0x277D85DD0];
    v84 = 3221225472;
    v85 = __getAVMetadataObjectTypeCode39Mod43CodeSymbolLoc_block_invoke;
    v86 = &unk_278C37610;
    v87 = &v88;
    v13 = AVFoundationLibrary();
    v89[3] = dlsym(v13, "AVMetadataObjectTypeCode39Mod43Code");
    getAVMetadataObjectTypeCode39Mod43CodeSymbolLoc_ptr = *(v87[1] + 24);
    v12 = v89[3];
  }

  _Block_object_dispose(&v88, 8);
  if (!v12)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataObjectType getAVMetadataObjectTypeCode39Mod43Code(void)"];
    [currentHandler4 handleFailureInFunction:v53 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:21 description:{@"%s", dlerror()}];

    goto LABEL_56;
  }

  v14 = *v12;
  v92[2] = v14;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v15 = getAVMetadataObjectTypeEAN13CodeSymbolLoc_ptr;
  v91 = getAVMetadataObjectTypeEAN13CodeSymbolLoc_ptr;
  if (!getAVMetadataObjectTypeEAN13CodeSymbolLoc_ptr)
  {
    v83 = MEMORY[0x277D85DD0];
    v84 = 3221225472;
    v85 = __getAVMetadataObjectTypeEAN13CodeSymbolLoc_block_invoke;
    v86 = &unk_278C37610;
    v87 = &v88;
    v16 = AVFoundationLibrary();
    v89[3] = dlsym(v16, "AVMetadataObjectTypeEAN13Code");
    getAVMetadataObjectTypeEAN13CodeSymbolLoc_ptr = *(v87[1] + 24);
    v15 = v89[3];
  }

  _Block_object_dispose(&v88, 8);
  if (!v15)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataObjectType getAVMetadataObjectTypeEAN13Code(void)"];
    [currentHandler5 handleFailureInFunction:v55 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:22 description:{@"%s", dlerror()}];

    goto LABEL_56;
  }

  v78 = *v15;
  v92[3] = v78;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v17 = getAVMetadataObjectTypeEAN8CodeSymbolLoc_ptr;
  v91 = getAVMetadataObjectTypeEAN8CodeSymbolLoc_ptr;
  if (!getAVMetadataObjectTypeEAN8CodeSymbolLoc_ptr)
  {
    v83 = MEMORY[0x277D85DD0];
    v84 = 3221225472;
    v85 = __getAVMetadataObjectTypeEAN8CodeSymbolLoc_block_invoke;
    v86 = &unk_278C37610;
    v87 = &v88;
    v18 = AVFoundationLibrary();
    v89[3] = dlsym(v18, "AVMetadataObjectTypeEAN8Code");
    getAVMetadataObjectTypeEAN8CodeSymbolLoc_ptr = *(v87[1] + 24);
    v17 = v89[3];
  }

  _Block_object_dispose(&v88, 8);
  if (!v17)
  {
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataObjectType getAVMetadataObjectTypeEAN8Code(void)"];
    [currentHandler6 handleFailureInFunction:v57 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:23 description:{@"%s", dlerror()}];

    goto LABEL_56;
  }

  v77 = *v17;
  v92[4] = v77;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v19 = getAVMetadataObjectTypeCode93CodeSymbolLoc_ptr;
  v91 = getAVMetadataObjectTypeCode93CodeSymbolLoc_ptr;
  if (!getAVMetadataObjectTypeCode93CodeSymbolLoc_ptr)
  {
    v83 = MEMORY[0x277D85DD0];
    v84 = 3221225472;
    v85 = __getAVMetadataObjectTypeCode93CodeSymbolLoc_block_invoke;
    v86 = &unk_278C37610;
    v87 = &v88;
    v20 = AVFoundationLibrary();
    v89[3] = dlsym(v20, "AVMetadataObjectTypeCode93Code");
    getAVMetadataObjectTypeCode93CodeSymbolLoc_ptr = *(v87[1] + 24);
    v19 = v89[3];
  }

  _Block_object_dispose(&v88, 8);
  if (!v19)
  {
    currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
    v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataObjectType getAVMetadataObjectTypeCode93Code(void)"];
    [currentHandler7 handleFailureInFunction:v59 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:24 description:{@"%s", dlerror()}];

    goto LABEL_56;
  }

  v21 = *v19;
  v92[5] = v21;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v22 = getAVMetadataObjectTypeCode128CodeSymbolLoc_ptr;
  v91 = getAVMetadataObjectTypeCode128CodeSymbolLoc_ptr;
  if (!getAVMetadataObjectTypeCode128CodeSymbolLoc_ptr)
  {
    v83 = MEMORY[0x277D85DD0];
    v84 = 3221225472;
    v85 = __getAVMetadataObjectTypeCode128CodeSymbolLoc_block_invoke;
    v86 = &unk_278C37610;
    v87 = &v88;
    v23 = AVFoundationLibrary();
    v89[3] = dlsym(v23, "AVMetadataObjectTypeCode128Code");
    getAVMetadataObjectTypeCode128CodeSymbolLoc_ptr = *(v87[1] + 24);
    v22 = v89[3];
  }

  _Block_object_dispose(&v88, 8);
  if (!v22)
  {
    currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
    v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataObjectType getAVMetadataObjectTypeCode128Code(void)"];
    [currentHandler8 handleFailureInFunction:v61 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:25 description:{@"%s", dlerror()}];

    goto LABEL_56;
  }

  v24 = *v22;
  v92[6] = v24;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v25 = getAVMetadataObjectTypePDF417CodeSymbolLoc_ptr;
  v91 = getAVMetadataObjectTypePDF417CodeSymbolLoc_ptr;
  if (!getAVMetadataObjectTypePDF417CodeSymbolLoc_ptr)
  {
    v83 = MEMORY[0x277D85DD0];
    v84 = 3221225472;
    v85 = __getAVMetadataObjectTypePDF417CodeSymbolLoc_block_invoke;
    v86 = &unk_278C37610;
    v87 = &v88;
    v26 = AVFoundationLibrary();
    v89[3] = dlsym(v26, "AVMetadataObjectTypePDF417Code");
    getAVMetadataObjectTypePDF417CodeSymbolLoc_ptr = *(v87[1] + 24);
    v25 = v89[3];
  }

  _Block_object_dispose(&v88, 8);
  if (!v25)
  {
    currentHandler9 = [MEMORY[0x277CCA890] currentHandler];
    v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataObjectType getAVMetadataObjectTypePDF417Code(void)"];
    [currentHandler9 handleFailureInFunction:v63 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:26 description:{@"%s", dlerror()}];

    goto LABEL_56;
  }

  v27 = *v25;
  v92[7] = v27;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v28 = getAVMetadataObjectTypeQRCodeSymbolLoc_ptr;
  v91 = getAVMetadataObjectTypeQRCodeSymbolLoc_ptr;
  if (!getAVMetadataObjectTypeQRCodeSymbolLoc_ptr)
  {
    v83 = MEMORY[0x277D85DD0];
    v84 = 3221225472;
    v85 = __getAVMetadataObjectTypeQRCodeSymbolLoc_block_invoke;
    v86 = &unk_278C37610;
    v87 = &v88;
    v29 = AVFoundationLibrary();
    v89[3] = dlsym(v29, "AVMetadataObjectTypeQRCode");
    getAVMetadataObjectTypeQRCodeSymbolLoc_ptr = *(v87[1] + 24);
    v28 = v89[3];
  }

  _Block_object_dispose(&v88, 8);
  if (!v28)
  {
    currentHandler10 = [MEMORY[0x277CCA890] currentHandler];
    v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataObjectType getAVMetadataObjectTypeQRCode(void)"];
    [currentHandler10 handleFailureInFunction:v65 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:27 description:{@"%s", dlerror()}];

    goto LABEL_56;
  }

  v75 = v8;
  v76 = v11;
  selfCopy = self;
  v30 = *v28;
  v92[8] = v30;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v31 = getAVMetadataObjectTypeAztecCodeSymbolLoc_ptr;
  v91 = getAVMetadataObjectTypeAztecCodeSymbolLoc_ptr;
  if (!getAVMetadataObjectTypeAztecCodeSymbolLoc_ptr)
  {
    v83 = MEMORY[0x277D85DD0];
    v84 = 3221225472;
    v85 = __getAVMetadataObjectTypeAztecCodeSymbolLoc_block_invoke;
    v86 = &unk_278C37610;
    v87 = &v88;
    v32 = AVFoundationLibrary();
    v89[3] = dlsym(v32, "AVMetadataObjectTypeAztecCode");
    getAVMetadataObjectTypeAztecCodeSymbolLoc_ptr = *(v87[1] + 24);
    v31 = v89[3];
  }

  _Block_object_dispose(&v88, 8);
  if (!v31)
  {
    currentHandler11 = [MEMORY[0x277CCA890] currentHandler];
    v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataObjectType getAVMetadataObjectTypeAztecCode(void)"];
    [currentHandler11 handleFailureInFunction:v67 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:28 description:{@"%s", dlerror()}];

    goto LABEL_56;
  }

  v33 = *v31;
  v92[9] = v33;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v34 = getAVMetadataObjectTypeInterleaved2of5CodeSymbolLoc_ptr;
  v91 = getAVMetadataObjectTypeInterleaved2of5CodeSymbolLoc_ptr;
  if (!getAVMetadataObjectTypeInterleaved2of5CodeSymbolLoc_ptr)
  {
    v83 = MEMORY[0x277D85DD0];
    v84 = 3221225472;
    v85 = __getAVMetadataObjectTypeInterleaved2of5CodeSymbolLoc_block_invoke;
    v86 = &unk_278C37610;
    v87 = &v88;
    v35 = AVFoundationLibrary();
    v89[3] = dlsym(v35, "AVMetadataObjectTypeInterleaved2of5Code");
    getAVMetadataObjectTypeInterleaved2of5CodeSymbolLoc_ptr = *(v87[1] + 24);
    v34 = v89[3];
  }

  _Block_object_dispose(&v88, 8);
  if (!v34)
  {
    currentHandler12 = [MEMORY[0x277CCA890] currentHandler];
    v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataObjectType getAVMetadataObjectTypeInterleaved2of5Code(void)"];
    [currentHandler12 handleFailureInFunction:v69 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:29 description:{@"%s", dlerror()}];

    goto LABEL_56;
  }

  v36 = *v34;
  v92[10] = v36;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v37 = getAVMetadataObjectTypeITF14CodeSymbolLoc_ptr;
  v91 = getAVMetadataObjectTypeITF14CodeSymbolLoc_ptr;
  if (!getAVMetadataObjectTypeITF14CodeSymbolLoc_ptr)
  {
    v83 = MEMORY[0x277D85DD0];
    v84 = 3221225472;
    v85 = __getAVMetadataObjectTypeITF14CodeSymbolLoc_block_invoke;
    v86 = &unk_278C37610;
    v87 = &v88;
    v38 = AVFoundationLibrary();
    v89[3] = dlsym(v38, "AVMetadataObjectTypeITF14Code");
    getAVMetadataObjectTypeITF14CodeSymbolLoc_ptr = *(v87[1] + 24);
    v37 = v89[3];
  }

  _Block_object_dispose(&v88, 8);
  if (!v37)
  {
    currentHandler13 = [MEMORY[0x277CCA890] currentHandler];
    v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataObjectType getAVMetadataObjectTypeITF14Code(void)"];
    [currentHandler13 handleFailureInFunction:v71 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:30 description:{@"%s", dlerror()}];

    goto LABEL_56;
  }

  v39 = *v37;
  v92[11] = v39;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v40 = getAVMetadataObjectTypeDataMatrixCodeSymbolLoc_ptr;
  v91 = getAVMetadataObjectTypeDataMatrixCodeSymbolLoc_ptr;
  if (!getAVMetadataObjectTypeDataMatrixCodeSymbolLoc_ptr)
  {
    v83 = MEMORY[0x277D85DD0];
    v84 = 3221225472;
    v85 = __getAVMetadataObjectTypeDataMatrixCodeSymbolLoc_block_invoke;
    v86 = &unk_278C37610;
    v87 = &v88;
    v41 = AVFoundationLibrary();
    v89[3] = dlsym(v41, "AVMetadataObjectTypeDataMatrixCode");
    getAVMetadataObjectTypeDataMatrixCodeSymbolLoc_ptr = *(v87[1] + 24);
    v40 = v89[3];
  }

  _Block_object_dispose(&v88, 8);
  if (!v40)
  {
    currentHandler14 = [MEMORY[0x277CCA890] currentHandler];
    v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVMetadataObjectType getAVMetadataObjectTypeDataMatrixCode(void)"];
    [currentHandler14 handleFailureInFunction:v73 file:@"WFScanMachineReadableCodeActionUIKitUserInterface.m" lineNumber:31 description:{@"%s", dlerror()}];

LABEL_56:
    __break(1u);
  }

  v93 = *v40;
  v42 = MEMORY[0x277CBEA60];
  v43 = v93;
  v44 = [v42 arrayWithObjects:v92 count:13];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__WFScanMachineReadableCodeActionUIKitUserInterface_showWithCompletionHandler___block_invoke;
  block[3] = &unk_278C375A0;
  v81 = v44;
  v82 = selfCopy;
  v45 = v44;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v46 = *MEMORY[0x277D85DE8];
}

void __79__WFScanMachineReadableCodeActionUIKitUserInterface_showWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [[CDZQRScanningViewController alloc] initWithMetadataObjectTypes:*(a1 + 32)];
  v3 = WFLocalizedString(@"Scan Code");
  [(CDZQRScanningViewController *)v2 setTitle:v3];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__WFScanMachineReadableCodeActionUIKitUserInterface_showWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_278C36A08;
  v7[4] = *(a1 + 40);
  [(CDZQRScanningViewController *)v2 setResultBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__WFScanMachineReadableCodeActionUIKitUserInterface_showWithCompletionHandler___block_invoke_4;
  v6[3] = &unk_278C36A30;
  v6[4] = *(a1 + 40);
  [(CDZQRScanningViewController *)v2 setErrorBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__WFScanMachineReadableCodeActionUIKitUserInterface_showWithCompletionHandler___block_invoke_6;
  v5[3] = &unk_278C37538;
  v5[4] = *(a1 + 40);
  [(CDZQRScanningViewController *)v2 setCancelBlock:v5];
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v2];
  [v4 setModalPresentationStyle:0];
  [*(a1 + 40) setNavigationController:v4];
  [*(a1 + 40) presentContent:v4];
}

void __79__WFScanMachineReadableCodeActionUIKitUserInterface_showWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) navigationController];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__WFScanMachineReadableCodeActionUIKitUserInterface_showWithCompletionHandler___block_invoke_3;
  v7[3] = &unk_278C375A0;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 dismissViewControllerAnimated:1 completion:v7];
}

void __79__WFScanMachineReadableCodeActionUIKitUserInterface_showWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) navigationController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__WFScanMachineReadableCodeActionUIKitUserInterface_showWithCompletionHandler___block_invoke_5;
  v6[3] = &unk_278C375A0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  [v4 dismissViewControllerAnimated:1 completion:v6];
}

void __79__WFScanMachineReadableCodeActionUIKitUserInterface_showWithCompletionHandler___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__WFScanMachineReadableCodeActionUIKitUserInterface_showWithCompletionHandler___block_invoke_7;
  v3[3] = &unk_278C37538;
  v3[4] = *(a1 + 32);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void __79__WFScanMachineReadableCodeActionUIKitUserInterface_showWithCompletionHandler___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishWithCode:0 error:v2];
}

void __79__WFScanMachineReadableCodeActionUIKitUserInterface_showWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CE8848]) initWithMachineReadableCodeObject:*(a1 + 32)];
  [*(a1 + 40) finishWithCode:v2 error:0];
}

@end