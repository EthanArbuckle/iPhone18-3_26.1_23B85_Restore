@interface _SFContactPreviewViewController
- (_SFContactPreviewViewController)initWithFilePath:(id)a3 sourceURL:(id)a4 deleteFileWhenDone:(BOOL)a5 beforeDismissHandler:(id)a6;
- (void)_presentActivityViewController:(id)a3;
- (void)dealloc;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation _SFContactPreviewViewController

- (_SFContactPreviewViewController)initWithFilePath:(id)a3 sourceURL:(id)a4 deleteFileWhenDone:(BOOL)a5 beforeDismissHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if ([v11 length])
  {
    v31 = a5;
    v14 = MEMORY[0x1E695DEF0];
    v15 = v11;
    v16 = [[v14 alloc] initWithContentsOfFile:v15];

    v17 = [MEMORY[0x1E695CE30] contactsWithData:v16 error:0];
    if ([v17 count])
    {
      v18 = MEMORY[0x1E695D148];
      v19 = [v17 firstObject];
      v20 = [v18 viewControllerForUnknownContact:v19];

      [v20 setActions:32];
      [v20 setAllowsEditing:0];
      v21 = objc_alloc_init(MEMORY[0x1E695CE18]);
      [v20 setContactStore:v21];

      [v20 setDisplayMode:1];
    }

    else
    {
      v20 = 0;
    }

    if (v20 && (v32.receiver = self, v32.super_class = _SFContactPreviewViewController, v23 = [(_SFContactPreviewViewController *)&v32 initWithRootViewController:v20], (self = v23) != 0))
    {
      objc_storeStrong(&v23->_filePath, a3);
      objc_storeStrong(&self->_sourceURL, a4);
      objc_storeStrong(&self->_contactViewController, v20);
      v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel__presentActivityViewController_];
      v25 = [(CNContactViewController *)self->_contactViewController navigationItem];
      [v25 setRightBarButtonItem:v24];

      v26 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
      v27 = [(CNContactViewController *)self->_contactViewController navigationItem];
      [v27 setLeftBarButtonItem:v26];

      v28 = _Block_copy(v13);
      beforeDismissHandler = self->_beforeDismissHandler;
      self->_beforeDismissHandler = v28;

      self->_deleteFileWhenDone = v31;
      self = self;
      v22 = self;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)dealloc
{
  if (self->_deleteFileWhenDone)
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    [v3 _web_removeFileOnlyAtPath:self->_filePath];
  }

  v4.receiver = self;
  v4.super_class = _SFContactPreviewViewController;
  [(_SFContactPreviewViewController *)&v4 dealloc];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = _SFContactPreviewViewController;
  [(_SFContactPreviewViewController *)&v6 viewWillDisappear:a3];
  beforeDismissHandler = self->_beforeDismissHandler;
  if (beforeDismissHandler)
  {
    beforeDismissHandler[2]();
    v5 = self->_beforeDismissHandler;
    self->_beforeDismissHandler = 0;
  }
}

- (void)_presentActivityViewController:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [[_SFOpenInOtherAppActivityViewController alloc] initWithFilePath:self->_filePath UTI:@"public.vcard" sourceURL:self->_sourceURL];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __66___SFContactPreviewViewController__presentActivityViewController___block_invoke;
  v10 = &unk_1E8490C18;
  objc_copyWeak(&v11, &location);
  [(_SFOpenInOtherAppActivityViewController *)v5 setCompletionWithItemsHandler:&v7];
  [(_SFOpenInOtherAppActivityViewController *)v5 setModalPresentationStyle:7, v7, v8, v9, v10];
  v6 = [(_SFOpenInOtherAppActivityViewController *)v5 popoverPresentationController];
  [v6 setBarButtonItem:v4];

  [(_SFContactPreviewViewController *)self presentViewController:v5 animated:1 completion:0];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

@end