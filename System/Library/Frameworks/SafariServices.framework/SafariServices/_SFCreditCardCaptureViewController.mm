@interface _SFCreditCardCaptureViewController
- (_SFCreditCardCaptureViewController)init;
- (void)cameraReader:(id)a3 didFailWithError:(id)a4;
- (void)cameraReader:(id)a3 didRecognizeObjects:(id)a4;
- (void)cameraReaderDidCancel:(id)a3;
- (void)cameraReaderDidEnd:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation _SFCreditCardCaptureViewController

- (_SFCreditCardCaptureViewController)init
{
  v42 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = _SFCreditCardCaptureViewController;
  v2 = [(_SFCreditCardCaptureViewController *)&v30 init];
  if (v2)
  {
    v3 = objc_alloc_init(getCRCameraReaderClass());
    reader = v2->_reader;
    v2->_reader = v3;

    v5 = [(CRCameraReader *)v2->_reader view];
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 bounds];
    [v5 setFrame:?];

    [(CRCameraReader *)v2->_reader setDelegate:v2];
    v7 = v2->_reader;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v8 = getCROutputTypeCreditCardCardholderNameSymbolLoc_ptr;
    v39 = getCROutputTypeCreditCardCardholderNameSymbolLoc_ptr;
    if (!getCROutputTypeCreditCardCardholderNameSymbolLoc_ptr)
    {
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __getCROutputTypeCreditCardCardholderNameSymbolLoc_block_invoke;
      v34 = &unk_1E848F710;
      v35 = &v36;
      v9 = CoreRecognitionLibrary();
      v10 = dlsym(v9, "CROutputTypeCreditCardCardholderName");
      *(v35[1] + 24) = v10;
      getCROutputTypeCreditCardCardholderNameSymbolLoc_ptr = *(v35[1] + 24);
      v8 = v37[3];
    }

    _Block_object_dispose(&v36, 8);
    if (!v8)
    {
      goto LABEL_13;
    }

    v11 = *v8;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v12 = getCROutputTypeCreditCardExpirationDateSymbolLoc_ptr;
    v39 = getCROutputTypeCreditCardExpirationDateSymbolLoc_ptr;
    v40[0] = v11;
    if (!getCROutputTypeCreditCardExpirationDateSymbolLoc_ptr)
    {
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __getCROutputTypeCreditCardExpirationDateSymbolLoc_block_invoke;
      v34 = &unk_1E848F710;
      v35 = &v36;
      v13 = CoreRecognitionLibrary();
      v14 = dlsym(v13, "CROutputTypeCreditCardExpirationDate");
      *(v35[1] + 24) = v14;
      getCROutputTypeCreditCardExpirationDateSymbolLoc_ptr = *(v35[1] + 24);
      v12 = v37[3];
    }

    _Block_object_dispose(&v36, 8);
    if (!v12)
    {
      goto LABEL_13;
    }

    v15 = *v12;
    v40[1] = v15;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v16 = getCROutputTypeCreditCardNumberSymbolLoc_ptr;
    v39 = getCROutputTypeCreditCardNumberSymbolLoc_ptr;
    if (!getCROutputTypeCreditCardNumberSymbolLoc_ptr)
    {
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __getCROutputTypeCreditCardNumberSymbolLoc_block_invoke;
      v34 = &unk_1E848F710;
      v35 = &v36;
      v17 = CoreRecognitionLibrary();
      v18 = dlsym(v17, "CROutputTypeCreditCardNumber");
      *(v35[1] + 24) = v18;
      getCROutputTypeCreditCardNumberSymbolLoc_ptr = *(v35[1] + 24);
      v16 = v37[3];
    }

    _Block_object_dispose(&v36, 8);
    if (!v16)
    {
LABEL_13:
      [SFDefaultBrowserListView productDetailsUserDidInteractWithApp:interactionType:];
      __break(1u);
    }

    v41 = *v16;
    v19 = MEMORY[0x1E695DEC8];
    v20 = v41;
    v21 = [v19 arrayWithObjects:v40 count:3];
    [(CRCameraReader *)v7 setOutputObjectTypes:v21];

    [(_SFCreditCardCaptureViewController *)v2 pushViewController:v2->_reader animated:0];
    v22 = [(CRCameraReader *)v2->_reader navigationController];
    v23 = [v22 navigationBar];

    v24 = [v23 standardAppearance];
    [v23 setScrollEdgeAppearance:v24];

    v25 = [(CRCameraReader *)v2->_reader navigationItem];
    v26 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v2 action:sel__cancel_];
    [v25 setLeftBarButtonItem:v26];

    v27 = _WBSLocalizedString();
    [v25 setTitle:v27];

    v28 = v2;
  }

  return v2;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _SFCreditCardCaptureViewController;
  [(_SFCreditCardCaptureViewController *)&v4 viewDidAppear:a3];
  [(CRCameraReader *)self->_reader start];
}

- (void)cameraReader:(id)a3 didFailWithError:(id)a4
{
  v5 = [(_SFCreditCardCaptureViewController *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68___SFCreditCardCaptureViewController_cameraReader_didFailWithError___block_invoke;
    block[3] = &unk_1E848F810;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)cameraReaderDidEnd:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___SFCreditCardCaptureViewController_cameraReaderDidEnd___block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)cameraReaderDidCancel:(id)a3
{
  v4 = [(_SFCreditCardCaptureViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60___SFCreditCardCaptureViewController_cameraReaderDidCancel___block_invoke;
    block[3] = &unk_1E848F810;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)cameraReader:(id)a3 didRecognizeObjects:(id)a4
{
  v5 = MEMORY[0x1E69C8F08];
  v6 = a4;
  v7 = [[v5 alloc] initWithCameraReaderOutput:v6];

  receivedCardData = self->_receivedCardData;
  self->_receivedCardData = v7;
}

@end