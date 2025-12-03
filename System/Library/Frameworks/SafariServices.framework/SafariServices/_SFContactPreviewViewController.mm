@interface _SFContactPreviewViewController
- (_SFContactPreviewViewController)initWithFilePath:(id)path sourceURL:(id)l deleteFileWhenDone:(BOOL)done beforeDismissHandler:(id)handler;
- (void)_presentActivityViewController:(id)controller;
- (void)dealloc;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _SFContactPreviewViewController

- (_SFContactPreviewViewController)initWithFilePath:(id)path sourceURL:(id)l deleteFileWhenDone:(BOOL)done beforeDismissHandler:(id)handler
{
  pathCopy = path;
  lCopy = l;
  handlerCopy = handler;
  if ([pathCopy length])
  {
    doneCopy = done;
    v14 = MEMORY[0x1E695DEF0];
    v15 = pathCopy;
    v16 = [[v14 alloc] initWithContentsOfFile:v15];

    v17 = [MEMORY[0x1E695CE30] contactsWithData:v16 error:0];
    if ([v17 count])
    {
      v18 = MEMORY[0x1E695D148];
      firstObject = [v17 firstObject];
      v20 = [v18 viewControllerForUnknownContact:firstObject];

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
      objc_storeStrong(&v23->_filePath, path);
      objc_storeStrong(&self->_sourceURL, l);
      objc_storeStrong(&self->_contactViewController, v20);
      v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel__presentActivityViewController_];
      navigationItem = [(CNContactViewController *)self->_contactViewController navigationItem];
      [navigationItem setRightBarButtonItem:v24];

      v26 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
      navigationItem2 = [(CNContactViewController *)self->_contactViewController navigationItem];
      [navigationItem2 setLeftBarButtonItem:v26];

      v28 = _Block_copy(handlerCopy);
      beforeDismissHandler = self->_beforeDismissHandler;
      self->_beforeDismissHandler = v28;

      self->_deleteFileWhenDone = doneCopy;
      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  if (self->_deleteFileWhenDone)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager _web_removeFileOnlyAtPath:self->_filePath];
  }

  v4.receiver = self;
  v4.super_class = _SFContactPreviewViewController;
  [(_SFContactPreviewViewController *)&v4 dealloc];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = _SFContactPreviewViewController;
  [(_SFContactPreviewViewController *)&v6 viewWillDisappear:disappear];
  beforeDismissHandler = self->_beforeDismissHandler;
  if (beforeDismissHandler)
  {
    beforeDismissHandler[2]();
    v5 = self->_beforeDismissHandler;
    self->_beforeDismissHandler = 0;
  }
}

- (void)_presentActivityViewController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  v5 = [[_SFOpenInOtherAppActivityViewController alloc] initWithFilePath:self->_filePath UTI:@"public.vcard" sourceURL:self->_sourceURL];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __66___SFContactPreviewViewController__presentActivityViewController___block_invoke;
  v10 = &unk_1E8490C18;
  objc_copyWeak(&v11, &location);
  [(_SFOpenInOtherAppActivityViewController *)v5 setCompletionWithItemsHandler:&v7];
  [(_SFOpenInOtherAppActivityViewController *)v5 setModalPresentationStyle:7, v7, v8, v9, v10];
  popoverPresentationController = [(_SFOpenInOtherAppActivityViewController *)v5 popoverPresentationController];
  [popoverPresentationController setBarButtonItem:controllerCopy];

  [(_SFContactPreviewViewController *)self presentViewController:v5 animated:1 completion:0];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

@end