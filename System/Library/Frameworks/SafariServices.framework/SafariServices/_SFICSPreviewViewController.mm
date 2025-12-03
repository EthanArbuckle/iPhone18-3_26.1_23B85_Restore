@interface _SFICSPreviewViewController
- (_SFICSPreviewViewController)initWithFilePath:(id)path sourceURL:(id)l;
- (id)popViewControllerAnimated:(BOOL)animated;
- (void)_ensureLeftBarButtonItemsIncludesActivityItem:(id)item;
- (void)_ensureLeftBarButtonItemsIncludesDoneItem:(id)item;
- (void)_presentActivityViewController:(id)controller;
- (void)_updateNavigationBarItems;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _SFICSPreviewViewController

- (_SFICSPreviewViewController)initWithFilePath:(id)path sourceURL:(id)l
{
  pathCopy = path;
  lCopy = l;
  if ([pathCopy length])
  {
    v9 = pathCopy;
    v10 = lCopy;
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

    obj = l;
    v29 = lCopy;
    v13 = v12;
    _Block_object_dispose(&v36, 8);
    v14 = objc_alloc_init(v12);
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    safari_URLByNormalizingBlobURL = [v10 safari_URLByNormalizingBlobURL];
    if ([mEMORY[0x1E69ADFB8] isURLManaged:safari_URLByNormalizingBlobURL])
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
      objc_storeStrong(&self->_filePath, path);
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
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    lCopy = v29;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = _SFICSPreviewViewController;
  [(_SFICSPreviewViewController *)&v4 viewWillAppear:appear];
  [(_SFICSPreviewViewController *)self _updateNavigationBarItems];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = _SFICSPreviewViewController;
  [(_SFICSPreviewViewController *)&v5 viewWillDisappear:disappear];
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
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  view = [(_SFICSPreviewViewController *)self view];
  [view setBackgroundColor:whiteColor];
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v9.receiver = self;
  v9.super_class = _SFICSPreviewViewController;
  v5 = [(_SFICSPreviewViewController *)&v9 popViewControllerAnimated:?];
  if ((_SFDeviceIsPad() & 1) == 0 && !v5)
  {
    topViewController = [(_SFICSPreviewViewController *)self topViewController];
    bottomViewController = [(_SFICSPreviewViewController *)self bottomViewController];

    if (topViewController == bottomViewController)
    {
      [(_SFICSPreviewViewController *)self dismissViewControllerAnimated:animatedCopy completion:0];
    }
  }

  return v5;
}

- (void)_presentActivityViewController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  v5 = [[_SFOpenInOtherAppActivityViewController alloc] initWithFilePath:self->_filePath UTI:@"com.apple.ical.ics" sourceURL:self->_sourceURL];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __62___SFICSPreviewViewController__presentActivityViewController___block_invoke;
  v10 = &unk_1E8490C18;
  objc_copyWeak(&v11, &location);
  [(_SFOpenInOtherAppActivityViewController *)v5 setCompletionWithItemsHandler:&v7];
  [(_SFOpenInOtherAppActivityViewController *)v5 setModalPresentationStyle:7, v7, v8, v9, v10];
  popoverPresentationController = [(_SFOpenInOtherAppActivityViewController *)v5 popoverPresentationController];
  [popoverPresentationController setBarButtonItem:controllerCopy];

  [(_SFICSPreviewViewController *)self presentViewController:v5 animated:1 completion:0];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)_ensureLeftBarButtonItemsIncludesActivityItem:(id)item
{
  itemCopy = item;
  if ([_SFOpenInOtherAppActivityViewController canOpenWithFilePath:self->_filePath UTI:@"com.apple.ical.ics" sourceURL:self->_sourceURL])
  {
    array = [MEMORY[0x1E695DF70] array];
    leftBarButtonItem = [itemCopy leftBarButtonItem];
    if (leftBarButtonItem)
    {
      [array addObject:leftBarButtonItem];
    }

    if (([array containsObject:self->_activityBarButtonItem] & 1) == 0)
    {
      [array insertObject:self->_activityBarButtonItem atIndex:0];
    }

    [itemCopy setLeftBarButtonItems:array];
  }
}

- (void)_ensureLeftBarButtonItemsIncludesDoneItem:(id)item
{
  itemCopy = item;
  array = [MEMORY[0x1E695DF70] array];
  leftBarButtonItem = [itemCopy leftBarButtonItem];
  if (leftBarButtonItem)
  {
    [array addObject:leftBarButtonItem];
  }

  if (([array containsObject:self->_doneBarButtonItem] & 1) == 0)
  {
    [array insertObject:self->_doneBarButtonItem atIndex:0];
  }

  [itemCopy setLeftBarButtonItems:array];
}

- (void)_updateNavigationBarItems
{
  bottomViewController = [(_SFICSPreviewViewController *)self bottomViewController];
  navigationItem = [bottomViewController navigationItem];
  [bottomViewController view];

  [(_SFICSPreviewViewController *)self _ensureLeftBarButtonItemsIncludesActivityItem:navigationItem];
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
    [bottomViewController setShowsDoneButton:1];
  }

  else
  {
    [(_SFICSPreviewViewController *)self _ensureLeftBarButtonItemsIncludesDoneItem:navigationItem];
  }
}

@end