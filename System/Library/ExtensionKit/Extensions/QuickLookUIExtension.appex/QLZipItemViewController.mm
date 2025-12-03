@interface QLZipItemViewController
- (DSArchiveService)archiveService;
- (UIDocumentPasswordView)passwordView;
- (id)_archiveServiceDestionationFolderURL:(id *)l;
- (void)_expandArchiveContentsAtURL:(id)l;
- (void)_hidePasswordView;
- (void)_makePasswordViewFirstResponder;
- (void)_readArchiveHeadersOfArchiveAtURL:(id)l passphrase:(id)passphrase completionHandler:(id)handler;
- (void)_removeUnarchivingFolderAtURL:(id)l;
- (void)_removeUnarchivingFoldersIfExist;
- (void)_showCouldNotUnarchiveAlertWithError:(id)error;
- (void)_showInvalidPasswordAlert;
- (void)_showPasswordView;
- (void)_startUnarchivingContents;
- (void)_updateZipInformationWithZipSize:(id)size;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)performAction;
- (void)prepareForInvalidationWithCompletionHandler:(id)handler;
- (void)userDidEnterPassword:(id)password forPasswordView:(id)view;
- (void)viewDidLoad;
@end

@implementation QLZipItemViewController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = QLZipItemViewController;
  [(QLZipItemViewController *)&v12 viewDidLoad];
  v3 = QLLocalizedString();
  v4 = [QLDetailItemViewControllerState detailItemViewControllerStateWithActionButtonTitle:v3 actionButtonView:0 informationVisible:1];
  readyToUnzipState = self->_readyToUnzipState;
  self->_readyToUnzipState = v4;

  v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  v7 = +[UIColor secondaryLabelColor];
  [v6 setColor:v7];

  [v6 setFrame:{0.0, 0.0, 32.0, 32.0}];
  [v6 startAnimating];
  v8 = [QLDetailItemViewControllerState detailItemViewControllerStateWithActionButtonTitle:&stru_1000250E0 actionButtonView:v6 informationVisible:1];
  unzippingState = self->_unzippingState;
  self->_unzippingState = v8;

  v10 = [QLDetailItemViewControllerState detailItemViewControllerStateWithActionButtonTitle:&stru_1000250E0 actionButtonView:0 informationVisible:1];
  unableToUnzipState = self->_unableToUnzipState;
  self->_unableToUnzipState = v10;

  [(QLZipItemViewController *)self setState:self->_readyToUnzipState];
  [(QLZipItemViewController *)self _updateZipInformationWithZipSize:&off_100025E78];
}

- (void)prepareForInvalidationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(NSProgress *)self->_unarchiveProgress cancel];
  [(QLZipItemViewController *)self _removeUnarchivingFoldersIfExist];
  v4 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v4 = handlerCopy;
  }
}

- (void)_updateZipInformationWithZipSize:(id)size
{
  sizeCopy = size;
  v3 = sizeCopy;
  QLRunInMainThread();
}

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000030A4;
  v11[3] = &unk_1000249D8;
  contentsCopy = contents;
  selfCopy = self;
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = QLZipItemViewController;
  v8 = handlerCopy;
  v9 = contentsCopy;
  [(QLZipItemViewController *)&v10 loadPreviewControllerWithContents:v9 context:context completionHandler:v11];
}

- (void)performAction
{
  [(QLZipItemViewController *)self setState:self->_unzippingState animated:1];
  v3 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000355C;
  block[3] = &unk_100024A00;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (DSArchiveService)archiveService
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_archiveService)
  {
    v3 = objc_opt_new();
    archiveService = selfCopy->_archiveService;
    selfCopy->_archiveService = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_archiveService;

  return v5;
}

- (id)_archiveServiceDestionationFolderURL:(id *)l
{
  archiveServiceDestionationFolderURL = self->_archiveServiceDestionationFolderURL;
  if (!archiveServiceDestionationFolderURL)
  {
    contents = [(QLZipItemViewController *)self contents];
    v7 = [NSURL _QLCreateTemporaryDirectoryForOriginalFileAtURL:contents error:l];

    v8 = self->_archiveServiceDestionationFolderURL;
    self->_archiveServiceDestionationFolderURL = v7;

    archiveServiceDestionationFolderURL = self->_archiveServiceDestionationFolderURL;
  }

  return archiveServiceDestionationFolderURL;
}

- (void)_startUnarchivingContents
{
  v18 = 0;
  v3 = [(QLZipItemViewController *)self _archiveServiceDestionationFolderURL:&v18];
  v4 = v18;
  v5 = v4;
  if (!v3 || v4)
  {
    delegate = [(QLZipItemViewController *)self delegate];
    [delegate previewItemViewController:self didFailWithError:v5];
  }

  else
  {
    objc_initWeak(&location, self);
    contents = [(QLZipItemViewController *)self contents];
    startAccessingSecurityScopedResource = [contents startAccessingSecurityScopedResource];

    archiveService = [(QLZipItemViewController *)self archiveService];
    contents2 = [(QLZipItemViewController *)self contents];
    password = self->_password;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003838;
    v14[3] = &unk_100024A50;
    objc_copyWeak(&v15, &location);
    v16 = startAccessingSecurityScopedResource;
    v11 = [archiveService unarchiveItemAtURL:contents2 passphrase:password destinationFolderURL:v3 completionHandler:v14];
    unarchiveProgress = self->_unarchiveProgress;
    self->_unarchiveProgress = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_readArchiveHeadersOfArchiveAtURL:(id)l passphrase:(id)passphrase completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  passphraseCopy = passphrase;
  LOBYTE(passphrase) = [lCopy startAccessingSecurityScopedResource];
  archiveService = [(QLZipItemViewController *)self archiveService];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003DA4;
  v14[3] = &unk_100024A78;
  passphraseCopy2 = passphrase;
  v15 = lCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = lCopy;
  [archiveService itemDescriptorsForItemAtURL:v13 passphrase:passphraseCopy completionHandler:v14];
}

- (void)_hidePasswordView
{
  passwordView = [(QLZipItemViewController *)self passwordView];
  [passwordView removeFromSuperview];
}

- (void)_showPasswordView
{
  passwordView = [(QLZipItemViewController *)self passwordView];
  view = [(QLZipItemViewController *)self view];
  [view addSubview:passwordView];

  [passwordView setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(QLZipItemViewController *)self view];
  v13 = @"passwordView";
  v14 = passwordView;
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v7 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[passwordView]|" options:0 metrics:0 views:v6];
  [view2 addConstraints:v7];

  view3 = [(QLZipItemViewController *)self view];
  v11 = @"passwordView";
  v12 = passwordView;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[passwordView]|" options:0 metrics:0 views:v9];
  [view3 addConstraints:v10];
}

- (void)_makePasswordViewFirstResponder
{
  passwordView = [(QLZipItemViewController *)self passwordView];
  passwordField = [passwordView passwordField];
  [passwordField becomeFirstResponder];
}

- (void)_expandArchiveContentsAtURL:(id)l
{
  lCopy = l;
  delegate = [(QLZipItemViewController *)self delegate];
  [delegate expandContentOfPreviewItemViewController:self unarchivedItemsURL:lCopy];
}

- (UIDocumentPasswordView)passwordView
{
  passwordView = self->_passwordView;
  if (!passwordView)
  {
    v4 = [UIDocumentPasswordView alloc];
    context = [(QLZipItemViewController *)self context];
    previewTitle = [context previewTitle];
    v7 = [v4 initWithDocumentName:previewTitle];
    v8 = self->_passwordView;
    self->_passwordView = v7;

    [(UIDocumentPasswordView *)self->_passwordView setPasswordDelegate:self];
    passwordView = self->_passwordView;
  }

  return passwordView;
}

- (void)userDidEnterPassword:(id)password forPasswordView:(id)view
{
  objc_storeStrong(&self->_password, password);
  passwordCopy = password;
  contents = [(QLZipItemViewController *)self contents];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000044FC;
  v8[3] = &unk_100024AC8;
  v8[4] = self;
  [(QLZipItemViewController *)self _readArchiveHeadersOfArchiveAtURL:contents passphrase:passwordCopy completionHandler:v8];
}

- (void)_showInvalidPasswordAlert
{
  passwordView = [(QLZipItemViewController *)self passwordView];
  passwordField = [passwordView passwordField];
  [passwordField setText:&stru_1000250E0];

  v5 = QLLocalizedStringFromTable();
  v6 = [UIAlertController alertControllerWithTitle:v5 message:&stru_1000250E0 preferredStyle:1];

  v7 = QLLocalizedStringWithDefaultValue();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100004948;
  v12[3] = &unk_100024AF0;
  v12[4] = self;
  v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:v12];

  [v6 addAction:v8];
  view = [(QLZipItemViewController *)self view];
  window = [view window];
  rootViewController = [window rootViewController];
  [rootViewController presentViewController:v6 animated:1 completion:0];
}

- (void)_showCouldNotUnarchiveAlertWithError:(id)error
{
  errorCopy = error;
  v5 = QLLocalizedStringFromTable();
  context = [(QLZipItemViewController *)self context];
  item = [context item];
  previewItemTitle = [item previewItemTitle];
  v9 = [NSString localizedStringWithFormat:v5, previewItemTitle];
  localizedDescription = [errorCopy localizedDescription];

  v11 = [UIAlertController alertControllerWithTitle:v9 message:localizedDescription preferredStyle:1];

  v12 = QLLocalizedStringWithDefaultValue();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100004B50;
  v17[3] = &unk_100024AF0;
  v17[4] = self;
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v17];

  [v11 addAction:v13];
  view = [(QLZipItemViewController *)self view];
  window = [view window];
  rootViewController = [window rootViewController];
  [rootViewController presentViewController:v11 animated:1 completion:0];
}

- (void)_removeUnarchivingFoldersIfExist
{
  if (self->_archiveServiceDestionationFolderURL)
  {
    [(QLZipItemViewController *)self _removeUnarchivingFolderAtURL:?];
    archiveServiceDestionationFolderURL = self->_archiveServiceDestionationFolderURL;
    self->_archiveServiceDestionationFolderURL = 0;
  }

  if (self->_unarchivedItemsFolderURL)
  {
    [(QLZipItemViewController *)self _removeUnarchivingFolderAtURL:?];
    unarchivedItemsFolderURL = self->_unarchivedItemsFolderURL;
    self->_unarchivedItemsFolderURL = 0;
  }
}

- (void)_removeUnarchivingFolderAtURL:(id)l
{
  lCopy = l;
  path = [lCopy path];
  v5 = +[NSFileManager defaultManager];
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  if (path && [v5 fileExistsAtPath:path])
  {
    v14 = 0;
    v7 = [v5 removeItemAtPath:path error:&v14];
    v8 = v14;
    v9 = _qlsLogHandle;
    if (v7)
    {
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v9 = _qlsLogHandle;
      }

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      v16 = lCopy;
      v10 = "Successfully removed unarchiving folder at URL: %@ #PreviewItem";
      v11 = v9;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 12;
    }

    else
    {
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v9 = _qlsLogHandle;
      }

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 138412546;
      v16 = lCopy;
      v17 = 2112;
      v18 = v8;
      v10 = "Cannot remove unarchiving folder at URL: %@ with error: %@ #PreviewItem";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
    }

    _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, v13);
LABEL_13:
  }

  if (startAccessingSecurityScopedResource)
  {
    [lCopy stopAccessingSecurityScopedResource];
  }
}

@end