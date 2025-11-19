@interface MapsDebugFileExportController
- (MapsDebugFileExportController)initWithFileAtURL:(id)a3 presentingViewController:(id)a4;
- (void)startWithCompletion:(id)a3;
@end

@implementation MapsDebugFileExportController

- (void)startWithCompletion:(id)a3
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100E638C4;
  v18[3] = &unk_1016566B8;
  v19 = a3;
  viewController = self->_viewController;
  v5 = v19;
  [(UIActivityViewController *)viewController setCompletionWithItemsHandler:v18];
  v6 = [(UIViewController *)self->_presentingViewController view];
  v7 = [(UIActivityViewController *)self->_viewController popoverPresentationController];
  [v7 setSourceView:v6];

  v8 = [(UIViewController *)self->_presentingViewController view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(UIActivityViewController *)self->_viewController popoverPresentationController];
  [v17 setSourceRect:{v10, v12, v14, v16}];

  [(UIViewController *)self->_presentingViewController presentViewController:self->_viewController animated:1 completion:0];
}

- (MapsDebugFileExportController)initWithFileAtURL:(id)a3 presentingViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = MapsDebugFileExportController;
  v8 = [(MapsDebugFileExportController *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_presentingViewController, a4);
    v10 = [UIActivityViewController alloc];
    v18 = v6;
    v11 = [NSArray arrayWithObjects:&v18 count:1];
    v12 = [v10 initWithActivityItems:v11 applicationActivities:0];
    viewController = v9->_viewController;
    v9->_viewController = v12;

    v17[0] = UIActivityTypePostToFacebook;
    v17[1] = UIActivityTypePostToWeibo;
    v17[2] = UIActivityTypePostToFlickr;
    v17[3] = UIActivityTypePostToVimeo;
    v17[4] = UIActivityTypePostToTencentWeibo;
    v14 = [NSArray arrayWithObjects:v17 count:5];
    [(UIActivityViewController *)v9->_viewController setExcludedActivityTypes:v14];
  }

  return v9;
}

@end