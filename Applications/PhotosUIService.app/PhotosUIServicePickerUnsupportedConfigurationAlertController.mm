@interface PhotosUIServicePickerUnsupportedConfigurationAlertController
- (id)createAlertViewController;
- (id)createInternalAlertViewController;
- (void)_tearDownRemoteViewController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation PhotosUIServicePickerUnsupportedConfigurationAlertController

- (id)createInternalAlertViewController
{
  objc_initWeak(&location, self);
  v2 = objc_alloc_init(PXRadarConfiguration);
  [v2 setComponent:0];
  [v2 setClassification:6];
  [v2 setAttachmentsIncludeAnyUserAsset:0];
  [v2 setWantsSystemDiagnostics:1];
  [v2 setWantsPhotosDiagnostics:1];
  [v2 setTitle:@"[Picker] Photo or Video Unavailable - Unsupported Configuration"];
  [v2 setDescription:@"Please add the app name and a screenshot if possible."];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002254;
  v15[3] = &unk_1000082E8;
  objc_copyWeak(&v16, &location);
  [v2 setCompletionHandler:v15];
  v3 = [UIAlertController alertControllerWithTitle:@"Photo or Video Unavailable" message:@"This app is using the Photos picker in an unsupported configuration. Please take a screenshot and file a radar.\n[Internal Only]" preferredStyle:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100002294;
  v13[3] = &unk_100008310;
  v4 = v2;
  v14 = v4;
  v5 = [UIAlertAction actionWithTitle:@"File Radar" style:0 handler:v13];
  [v3 addAction:v5];

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10000229C;
  v11 = &unk_1000082C0;
  objc_copyWeak(&v12, &location);
  v6 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:&v8];
  [v3 addAction:{v6, v8, v9, v10, v11}];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);

  return v3;
}

- (id)createAlertViewController
{
  objc_initWeak(&location, self);
  v2 = PXLocalizedString();
  v3 = PXLocalizedString();
  v4 = [UIAlertController alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  v5 = PXLocalizedString();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100002500;
  v12[3] = &unk_1000082C0;
  objc_copyWeak(&v13, &location);
  v6 = [UIAlertAction actionWithTitle:v5 style:0 handler:v12];
  [v4 addAction:v6];

  v7 = PXLocalizedString();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000025F8;
  v10[3] = &unk_1000082C0;
  objc_copyWeak(&v11, &location);
  v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:v10];
  [v4 addAction:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v4;
}

- (void)_tearDownRemoteViewController
{
  _remoteViewControllerProxy = [(PhotosUIServicePickerUnsupportedConfigurationAlertController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy deactivate];

  _remoteViewControllerProxy2 = [(PhotosUIServicePickerUnsupportedConfigurationAlertController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy2 invalidate];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PhotosUIServicePickerUnsupportedConfigurationAlertController;
  [(PhotosUIServicePickerUnsupportedConfigurationAlertController *)&v4 viewDidLoad];
  if (PLHasInternalUI())
  {
    [(PhotosUIServicePickerUnsupportedConfigurationAlertController *)self createInternalAlertViewController];
  }

  else
  {
    [(PhotosUIServicePickerUnsupportedConfigurationAlertController *)self createAlertViewController];
  }
  v3 = ;
  [(PhotosUIServicePickerUnsupportedConfigurationAlertController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

@end