@interface ICExportArchiveController
- (CGRect)sourceRect;
- (id)initForPresentingInViewController:(id)controller markdown:(BOOL)markdown;
- (void)exportObjects:(id)objects completion:(id)completion;
- (void)showResultForArchiveURL:(id)l andError:(id)error;
@end

@implementation ICExportArchiveController

- (id)initForPresentingInViewController:(id)controller markdown:(BOOL)markdown
{
  markdownCopy = markdown;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = ICExportArchiveController;
  v8 = [(ICExportArchiveController *)&v14 init];
  if (v8)
  {
    if (markdownCopy)
    {
      exporterForMarkdown = [objc_opt_class() exporterForMarkdown];
    }

    else
    {
      exporterForMarkdown = objc_alloc_init(ICArchiveExporter);
    }

    archiveExporter = v8->_archiveExporter;
    v8->_archiveExporter = exporterForMarkdown;

    objc_storeStrong(&v8->_viewController, controller);
    v11 = objc_alloc_init(ICLongRunningTaskController);
    taskController = v8->_taskController;
    v8->_taskController = v11;

    [(ICLongRunningTaskController *)v8->_taskController setShouldShowCancelButton:1];
    [(ICLongRunningTaskController *)v8->_taskController setAllowSingleUnitProgress:1];
    [(ICLongRunningTaskController *)v8->_taskController setProgressStringBlock:&stru_100649F48];
    [(ICLongRunningTaskController *)v8->_taskController setShouldShowCircularProgress:1];
    [(ICLongRunningTaskController *)v8->_taskController setViewControllerToPresentFrom:controllerCopy];
  }

  return v8;
}

- (void)exportObjects:(id)objects completion:(id)completion
{
  objectsCopy = objects;
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_100100B30;
  v21[4] = sub_100100B40;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_100100B30;
  v19[4] = sub_100100B40;
  v20 = 0;
  taskController = [(ICExportArchiveController *)self taskController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100100B48;
  v15[3] = &unk_100649F70;
  v17 = v21;
  v15[4] = self;
  v9 = objectsCopy;
  v16 = v9;
  v18 = v19;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100100BEC;
  v11[3] = &unk_100649F98;
  v11[4] = self;
  v13 = v21;
  v14 = v19;
  v10 = completionCopy;
  v12 = v10;
  [taskController startTask:v15 completionBlock:v11];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
}

- (void)showResultForArchiveURL:(id)l andError:(id)error
{
  lCopy = l;
  errorCopy = error;
  if (lCopy)
  {
    v8 = [UIActivityViewController alloc];
    v33 = lCopy;
    v9 = [NSArray arrayWithObjects:&v33 count:1];
    v10 = [v8 initWithActivityItems:v9 applicationActivities:0];

    v32[0] = UIActivityTypeOpenInIBooks;
    v32[1] = ICActivityTypeShareToNote;
    v32[2] = UIActivityTypeSharePlay;
    v11 = [NSArray arrayWithObjects:v32 count:3];
    [v10 setExcludedActivityTypes:v11];

    barButtonItem = [(ICExportArchiveController *)self barButtonItem];
    popoverPresentationController = [v10 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:barButtonItem];

    sourceView = [(ICExportArchiveController *)self sourceView];
    popoverPresentationController2 = [v10 popoverPresentationController];
    [popoverPresentationController2 setSourceView:sourceView];

    [(ICExportArchiveController *)self sourceRect];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    popoverPresentationController3 = [v10 popoverPresentationController];
    [popoverPresentationController3 setSourceRect:{v17, v19, v21, v23}];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100100F54;
    v30[3] = &unk_100649FC0;
    v30[4] = self;
    v31 = lCopy;
    [v10 setCompletionWithItemsHandler:v30];
    viewController = [(ICExportArchiveController *)self viewController];
    [viewController presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v26 = +[NSBundle mainBundle];
    v27 = [v26 localizedStringForKey:@"Error Creating Archive" value:&stru_100661CF0 table:0];
    localizedDescription = [errorCopy localizedDescription];
    viewController2 = [(ICExportArchiveController *)self viewController];
    [UIAlertController ic_showAlertWithTitle:v27 message:localizedDescription viewController:viewController2];
  }
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end