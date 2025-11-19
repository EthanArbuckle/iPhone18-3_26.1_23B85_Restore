@interface QLZipItemViewController
- (DSArchiveService)archiveService;
- (UIDocumentPasswordView)passwordView;
- (id)_archiveServiceDestionationFolderURL:(id *)a3;
- (void)_expandArchiveContentsAtURL:(id)a3;
- (void)_hidePasswordView;
- (void)_makePasswordViewFirstResponder;
- (void)_readArchiveHeadersOfArchiveAtURL:(id)a3 passphrase:(id)a4 completionHandler:(id)a5;
- (void)_removeUnarchivingFolderAtURL:(id)a3;
- (void)_removeUnarchivingFoldersIfExist;
- (void)_showCouldNotUnarchiveAlertWithError:(id)a3;
- (void)_showInvalidPasswordAlert;
- (void)_showPasswordView;
- (void)_startUnarchivingContents;
- (void)_updateZipInformationWithZipSize:(id)a3;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)performAction;
- (void)prepareForInvalidationWithCompletionHandler:(id)a3;
- (void)userDidEnterPassword:(id)a3 forPasswordView:(id)a4;
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

- (void)prepareForInvalidationWithCompletionHandler:(id)a3
{
  v5 = a3;
  [(NSProgress *)self->_unarchiveProgress cancel];
  [(QLZipItemViewController *)self _removeUnarchivingFoldersIfExist];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)_updateZipInformationWithZipSize:(id)a3
{
  v4 = a3;
  v3 = v4;
  QLRunInMainThread();
}

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000030A4;
  v11[3] = &unk_1000249D8;
  v12 = a3;
  v13 = self;
  v14 = a5;
  v10.receiver = self;
  v10.super_class = QLZipItemViewController;
  v8 = v14;
  v9 = v12;
  [(QLZipItemViewController *)&v10 loadPreviewControllerWithContents:v9 context:a4 completionHandler:v11];
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
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_archiveService)
  {
    v3 = objc_opt_new();
    archiveService = v2->_archiveService;
    v2->_archiveService = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_archiveService;

  return v5;
}

- (id)_archiveServiceDestionationFolderURL:(id *)a3
{
  archiveServiceDestionationFolderURL = self->_archiveServiceDestionationFolderURL;
  if (!archiveServiceDestionationFolderURL)
  {
    v6 = [(QLZipItemViewController *)self contents];
    v7 = [NSURL _QLCreateTemporaryDirectoryForOriginalFileAtURL:v6 error:a3];

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
    v13 = [(QLZipItemViewController *)self delegate];
    [v13 previewItemViewController:self didFailWithError:v5];
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = [(QLZipItemViewController *)self contents];
    v7 = [v6 startAccessingSecurityScopedResource];

    v8 = [(QLZipItemViewController *)self archiveService];
    v9 = [(QLZipItemViewController *)self contents];
    password = self->_password;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003838;
    v14[3] = &unk_100024A50;
    objc_copyWeak(&v15, &location);
    v16 = v7;
    v11 = [v8 unarchiveItemAtURL:v9 passphrase:password destinationFolderURL:v3 completionHandler:v14];
    unarchiveProgress = self->_unarchiveProgress;
    self->_unarchiveProgress = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_readArchiveHeadersOfArchiveAtURL:(id)a3 passphrase:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  LOBYTE(a4) = [v8 startAccessingSecurityScopedResource];
  v11 = [(QLZipItemViewController *)self archiveService];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003DA4;
  v14[3] = &unk_100024A78;
  v17 = a4;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [v11 itemDescriptorsForItemAtURL:v13 passphrase:v10 completionHandler:v14];
}

- (void)_hidePasswordView
{
  v2 = [(QLZipItemViewController *)self passwordView];
  [v2 removeFromSuperview];
}

- (void)_showPasswordView
{
  v3 = [(QLZipItemViewController *)self passwordView];
  v4 = [(QLZipItemViewController *)self view];
  [v4 addSubview:v3];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(QLZipItemViewController *)self view];
  v13 = @"passwordView";
  v14 = v3;
  v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v7 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[passwordView]|" options:0 metrics:0 views:v6];
  [v5 addConstraints:v7];

  v8 = [(QLZipItemViewController *)self view];
  v11 = @"passwordView";
  v12 = v3;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[passwordView]|" options:0 metrics:0 views:v9];
  [v8 addConstraints:v10];
}

- (void)_makePasswordViewFirstResponder
{
  v3 = [(QLZipItemViewController *)self passwordView];
  v2 = [v3 passwordField];
  [v2 becomeFirstResponder];
}

- (void)_expandArchiveContentsAtURL:(id)a3
{
  v4 = a3;
  v5 = [(QLZipItemViewController *)self delegate];
  [v5 expandContentOfPreviewItemViewController:self unarchivedItemsURL:v4];
}

- (UIDocumentPasswordView)passwordView
{
  passwordView = self->_passwordView;
  if (!passwordView)
  {
    v4 = [UIDocumentPasswordView alloc];
    v5 = [(QLZipItemViewController *)self context];
    v6 = [v5 previewTitle];
    v7 = [v4 initWithDocumentName:v6];
    v8 = self->_passwordView;
    self->_passwordView = v7;

    [(UIDocumentPasswordView *)self->_passwordView setPasswordDelegate:self];
    passwordView = self->_passwordView;
  }

  return passwordView;
}

- (void)userDidEnterPassword:(id)a3 forPasswordView:(id)a4
{
  objc_storeStrong(&self->_password, a3);
  v6 = a3;
  v7 = [(QLZipItemViewController *)self contents];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000044FC;
  v8[3] = &unk_100024AC8;
  v8[4] = self;
  [(QLZipItemViewController *)self _readArchiveHeadersOfArchiveAtURL:v7 passphrase:v6 completionHandler:v8];
}

- (void)_showInvalidPasswordAlert
{
  v3 = [(QLZipItemViewController *)self passwordView];
  v4 = [v3 passwordField];
  [v4 setText:&stru_1000250E0];

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
  v9 = [(QLZipItemViewController *)self view];
  v10 = [v9 window];
  v11 = [v10 rootViewController];
  [v11 presentViewController:v6 animated:1 completion:0];
}

- (void)_showCouldNotUnarchiveAlertWithError:(id)a3
{
  v4 = a3;
  v5 = QLLocalizedStringFromTable();
  v6 = [(QLZipItemViewController *)self context];
  v7 = [v6 item];
  v8 = [v7 previewItemTitle];
  v9 = [NSString localizedStringWithFormat:v5, v8];
  v10 = [v4 localizedDescription];

  v11 = [UIAlertController alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  v12 = QLLocalizedStringWithDefaultValue();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100004B50;
  v17[3] = &unk_100024AF0;
  v17[4] = self;
  v13 = [UIAlertAction actionWithTitle:v12 style:0 handler:v17];

  [v11 addAction:v13];
  v14 = [(QLZipItemViewController *)self view];
  v15 = [v14 window];
  v16 = [v15 rootViewController];
  [v16 presentViewController:v11 animated:1 completion:0];
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

- (void)_removeUnarchivingFolderAtURL:(id)a3
{
  v3 = a3;
  v4 = [v3 path];
  v5 = +[NSFileManager defaultManager];
  v6 = [v3 startAccessingSecurityScopedResource];
  if (v4 && [v5 fileExistsAtPath:v4])
  {
    v14 = 0;
    v7 = [v5 removeItemAtPath:v4 error:&v14];
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
      v16 = v3;
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
      v16 = v3;
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

  if (v6)
  {
    [v3 stopAccessingSecurityScopedResource];
  }
}

@end