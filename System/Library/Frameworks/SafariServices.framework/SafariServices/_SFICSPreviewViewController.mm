@interface _SFICSPreviewViewController
- (_SFICSPreviewViewController)initWithFilePath:(id)a3 sourceURL:(id)a4;
- (id)popViewControllerAnimated:(BOOL)a3;
- (void)_ensureLeftBarButtonItemsIncludesActivityItem:(id)a3;
- (void)_ensureLeftBarButtonItemsIncludesDoneItem:(id)a3;
- (void)_presentActivityViewController:(id)a3;
- (void)_updateNavigationBarItems;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation _SFICSPreviewViewController

- (_SFICSPreviewViewController)initWithFilePath:(id)a3 sourceURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 length])
  {
    v9 = v7;
    v10 = v8;
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v9];
    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v12 = getEKEventStoreClass_softClass;
    v39 = getEKEventStoreClass_softClass;
    if (!getEKEventStoreClass_softClass)
    {
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __getEKEventStoreClass_block_invoke;
      v34 = &unk_1E848F710;
      v35 = &v36;
      __getEKEventStoreClass_block_invoke(&v31);
      v12 = v37[3];
    }

    obj = a4;
    v29 = v8;
    v13 = v12;
    _Block_object_dispose(&v36, 8);
    v14 = objc_alloc_init(v12);
    v15 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v16 = [v10 safari_URLByNormalizingBlobURL];
    if ([v15 isURLManaged:v16])
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    [v14 setSourceAccountManagement:v17];
    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v18 = getEKICSPreviewControllerClass_softClass;
    v39 = getEKICSPreviewControllerClass_softClass;
    if (!getEKICSPreviewControllerClass_softClass)
    {
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __getEKICSPreviewControllerClass_block_invoke;
      v34 = &unk_1E848F710;
      v35 = &v36;
      __getEKICSPreviewControllerClass_block_invoke(&v31);
      v18 = v37[3];
    }

    v19 = v18;
    _Block_object_dispose(&v36, 8);
    v20 = [[v18 alloc] initWithData:v11 eventStore:v14];
    [v20 setAllowsEditing:1];
    [v20 setAllowsImport:1];

    if (v20 && ([v20 viewController], v21 = objc_claimAutoreleasedReturnValue(), v30.receiver = self, v30.super_class = _SFICSPreviewViewController, self = -[_SFICSPreviewViewController initWithRootViewController:](&v30, sel_initWithRootViewController_, v21), v21, self))
    {
      objc_storeStrong(&self->_filePath, a3);
      objc_storeStrong(&self->_sourceURL, obj);
      objc_storeStrong(&self->_icsController, v20);
      [(EKICSPreviewController *)self->_icsController setPreviewDelegate:self];
      v22 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel__presentActivityViewController_];
      activityBarButtonItem = self->_activityBarButtonItem;
      self->_activityBarButtonItem = v22;

      v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
      doneBarButtonItem = self->_doneBarButtonItem;
      self->_doneBarButtonItem = v24;

      self = self;
      v26 = self;
    }

    else
    {
      v26 = 0;
    }

    v8 = v29;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _SFICSPreviewViewController;
  [(_SFICSPreviewViewController *)&v4 viewWillAppear:a3];
  [(_SFICSPreviewViewController *)self _updateNavigationBarItems];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _SFICSPreviewViewController;
  [(_SFICSPreviewViewController *)&v5 viewWillDisappear:a3];
  if (self->_beforeDismissHandler)
  {
    if ([(_SFICSPreviewViewController *)self isBeingDismissed])
    {
      (*(self->_beforeDismissHandler + 2))();
      beforeDismissHandler = self->_beforeDismissHandler;
      self->_beforeDismissHandler = 0;
    }
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _SFICSPreviewViewController;
  [(_SFICSPreviewViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [(_SFICSPreviewViewController *)self view];
  [v4 setBackgroundColor:v3];
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = _SFICSPreviewViewController;
  v5 = [(_SFICSPreviewViewController *)&v9 popViewControllerAnimated:?];
  if ((_SFDeviceIsPad() & 1) == 0 && !v5)
  {
    v6 = [(_SFICSPreviewViewController *)self topViewController];
    v7 = [(_SFICSPreviewViewController *)self bottomViewController];

    if (v6 == v7)
    {
      [(_SFICSPreviewViewController *)self dismissViewControllerAnimated:v3 completion:0];
    }
  }

  return v5;
}

- (void)_presentActivityViewController:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [[_SFOpenInOtherAppActivityViewController alloc] initWithFilePath:self->_filePath UTI:@"com.apple.ical.ics" sourceURL:self->_sourceURL];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __62___SFICSPreviewViewController__presentActivityViewController___block_invoke;
  v10 = &unk_1E8490C18;
  objc_copyWeak(&v11, &location);
  [(_SFOpenInOtherAppActivityViewController *)v5 setCompletionWithItemsHandler:&v7];
  [(_SFOpenInOtherAppActivityViewController *)v5 setModalPresentationStyle:7, v7, v8, v9, v10];
  v6 = [(_SFOpenInOtherAppActivityViewController *)v5 popoverPresentationController];
  [v6 setBarButtonItem:v4];

  [(_SFICSPreviewViewController *)self presentViewController:v5 animated:1 completion:0];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)_ensureLeftBarButtonItemsIncludesActivityItem:(id)a3
{
  v6 = a3;
  if ([_SFOpenInOtherAppActivityViewController canOpenWithFilePath:self->_filePath UTI:@"com.apple.ical.ics" sourceURL:self->_sourceURL])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [v6 leftBarButtonItem];
    if (v5)
    {
      [v4 addObject:v5];
    }

    if (([v4 containsObject:self->_activityBarButtonItem] & 1) == 0)
    {
      [v4 insertObject:self->_activityBarButtonItem atIndex:0];
    }

    [v6 setLeftBarButtonItems:v4];
  }
}

- (void)_ensureLeftBarButtonItemsIncludesDoneItem:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v6 leftBarButtonItem];
  if (v5)
  {
    [v4 addObject:v5];
  }

  if (([v4 containsObject:self->_doneBarButtonItem] & 1) == 0)
  {
    [v4 insertObject:self->_doneBarButtonItem atIndex:0];
  }

  [v6 setLeftBarButtonItems:v4];
}

- (void)_updateNavigationBarItems
{
  v3 = [(_SFICSPreviewViewController *)self bottomViewController];
  v4 = [v3 navigationItem];
  [v3 view];

  [(_SFICSPreviewViewController *)self _ensureLeftBarButtonItemsIncludesActivityItem:v4];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v5 = getEKEventViewControllerClass_softClass;
  v11 = getEKEventViewControllerClass_softClass;
  if (!getEKEventViewControllerClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getEKEventViewControllerClass_block_invoke;
    v7[3] = &unk_1E848F710;
    v7[4] = &v8;
    __getEKEventViewControllerClass_block_invoke(v7);
    v5 = v9[3];
  }

  v6 = v5;
  _Block_object_dispose(&v8, 8);
  if (objc_opt_isKindOfClass())
  {
    [v3 setShowsDoneButton:1];
  }

  else
  {
    [(_SFICSPreviewViewController *)self _ensureLeftBarButtonItemsIncludesDoneItem:v4];
  }
}

@end