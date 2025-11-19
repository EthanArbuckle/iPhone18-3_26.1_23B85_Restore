@interface ICExportArchiveController
- (CGRect)sourceRect;
- (id)initForPresentingInViewController:(id)a3 markdown:(BOOL)a4;
- (void)exportObjects:(id)a3 completion:(id)a4;
- (void)showResultForArchiveURL:(id)a3 andError:(id)a4;
@end

@implementation ICExportArchiveController

- (id)initForPresentingInViewController:(id)a3 markdown:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v14.receiver = self;
  v14.super_class = ICExportArchiveController;
  v8 = [(ICExportArchiveController *)&v14 init];
  if (v8)
  {
    if (v4)
    {
      v9 = [objc_opt_class() exporterForMarkdown];
    }

    else
    {
      v9 = objc_alloc_init(ICArchiveExporter);
    }

    archiveExporter = v8->_archiveExporter;
    v8->_archiveExporter = v9;

    objc_storeStrong(&v8->_viewController, a3);
    v11 = objc_alloc_init(ICLongRunningTaskController);
    taskController = v8->_taskController;
    v8->_taskController = v11;

    [(ICLongRunningTaskController *)v8->_taskController setShouldShowCancelButton:1];
    [(ICLongRunningTaskController *)v8->_taskController setAllowSingleUnitProgress:1];
    [(ICLongRunningTaskController *)v8->_taskController setProgressStringBlock:&stru_100649F48];
    [(ICLongRunningTaskController *)v8->_taskController setShouldShowCircularProgress:1];
    [(ICLongRunningTaskController *)v8->_taskController setViewControllerToPresentFrom:v7];
  }

  return v8;
}

- (void)exportObjects:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = [(ICExportArchiveController *)self taskController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100100B48;
  v15[3] = &unk_100649F70;
  v17 = v21;
  v15[4] = self;
  v9 = v6;
  v16 = v9;
  v18 = v19;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100100BEC;
  v11[3] = &unk_100649F98;
  v11[4] = self;
  v13 = v21;
  v14 = v19;
  v10 = v7;
  v12 = v10;
  [v8 startTask:v15 completionBlock:v11];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
}

- (void)showResultForArchiveURL:(id)a3 andError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [UIActivityViewController alloc];
    v33 = v6;
    v9 = [NSArray arrayWithObjects:&v33 count:1];
    v10 = [v8 initWithActivityItems:v9 applicationActivities:0];

    v32[0] = UIActivityTypeOpenInIBooks;
    v32[1] = ICActivityTypeShareToNote;
    v32[2] = UIActivityTypeSharePlay;
    v11 = [NSArray arrayWithObjects:v32 count:3];
    [v10 setExcludedActivityTypes:v11];

    v12 = [(ICExportArchiveController *)self barButtonItem];
    v13 = [v10 popoverPresentationController];
    [v13 setBarButtonItem:v12];

    v14 = [(ICExportArchiveController *)self sourceView];
    v15 = [v10 popoverPresentationController];
    [v15 setSourceView:v14];

    [(ICExportArchiveController *)self sourceRect];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [v10 popoverPresentationController];
    [v24 setSourceRect:{v17, v19, v21, v23}];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100100F54;
    v30[3] = &unk_100649FC0;
    v30[4] = self;
    v31 = v6;
    [v10 setCompletionWithItemsHandler:v30];
    v25 = [(ICExportArchiveController *)self viewController];
    [v25 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v26 = +[NSBundle mainBundle];
    v27 = [v26 localizedStringForKey:@"Error Creating Archive" value:&stru_100661CF0 table:0];
    v28 = [v7 localizedDescription];
    v29 = [(ICExportArchiveController *)self viewController];
    [UIAlertController ic_showAlertWithTitle:v27 message:v28 viewController:v29];
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