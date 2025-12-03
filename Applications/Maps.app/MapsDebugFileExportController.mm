@interface MapsDebugFileExportController
- (MapsDebugFileExportController)initWithFileAtURL:(id)l presentingViewController:(id)controller;
- (void)startWithCompletion:(id)completion;
@end

@implementation MapsDebugFileExportController

- (void)startWithCompletion:(id)completion
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100E638C4;
  v18[3] = &unk_1016566B8;
  completionCopy = completion;
  viewController = self->_viewController;
  v5 = completionCopy;
  [(UIActivityViewController *)viewController setCompletionWithItemsHandler:v18];
  view = [(UIViewController *)self->_presentingViewController view];
  popoverPresentationController = [(UIActivityViewController *)self->_viewController popoverPresentationController];
  [popoverPresentationController setSourceView:view];

  view2 = [(UIViewController *)self->_presentingViewController view];
  [view2 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  popoverPresentationController2 = [(UIActivityViewController *)self->_viewController popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v10, v12, v14, v16}];

  [(UIViewController *)self->_presentingViewController presentViewController:self->_viewController animated:1 completion:0];
}

- (MapsDebugFileExportController)initWithFileAtURL:(id)l presentingViewController:(id)controller
{
  lCopy = l;
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = MapsDebugFileExportController;
  v8 = [(MapsDebugFileExportController *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_presentingViewController, controller);
    v10 = [UIActivityViewController alloc];
    v18 = lCopy;
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