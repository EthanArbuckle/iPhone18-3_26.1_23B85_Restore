@interface ICImportArchiveController
- (id)initForPresentingInViewController:(id)a3 markdown:(BOOL)a4;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
- (void)importArchiveAtURL:(id)a3 intoNoteContainer:(id)a4;
- (void)importIntoNoteContainer:(id)a3 completion:(id)a4;
- (void)showError:(id)a3;
@end

@implementation ICImportArchiveController

- (id)initForPresentingInViewController:(id)a3 markdown:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v14.receiver = self;
  v14.super_class = ICImportArchiveController;
  v8 = [(ICImportArchiveController *)&v14 init];
  if (v8)
  {
    v9 = [[_TtC11MobileNotes17ICArchiveImporter alloc] initForNotesMarkdown:v4];
    archiveImporter = v8->_archiveImporter;
    v8->_archiveImporter = v9;

    v8->_markdown = v4;
    objc_storeStrong(&v8->_viewController, a3);
    v11 = objc_alloc_init(ICLongRunningTaskController);
    taskController = v8->_taskController;
    v8->_taskController = v11;

    [(ICLongRunningTaskController *)v8->_taskController setShouldShowCancelButton:1];
    [(ICLongRunningTaskController *)v8->_taskController setAllowSingleUnitProgress:1];
    [(ICLongRunningTaskController *)v8->_taskController setProgressStringBlock:&stru_10064B718];
    [(ICLongRunningTaskController *)v8->_taskController setShouldShowCircularProgress:1];
    [(ICLongRunningTaskController *)v8->_taskController setViewControllerToPresentFrom:v7];
  }

  return v8;
}

- (void)importIntoNoteContainer:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(ICImportArchiveController *)self setNoteContainer:a3];
  [(ICImportArchiveController *)self setCompletion:v6];

  LODWORD(a3) = [(ICImportArchiveController *)self markdown];
  v7 = [UIDocumentPickerViewController alloc];
  if (a3)
  {
    v16 = UTTypeFolder;
    v8 = [NSArray arrayWithObjects:&v16 count:1];
    v9 = [v7 initForOpeningContentTypes:v8 asCopy:0];
    [(ICImportArchiveController *)self setDocumentPickerViewController:v9];
  }

  else
  {
    v8 = +[ICArchive universalTypeIdentifier];
    v15 = v8;
    v9 = [NSArray arrayWithObjects:&v15 count:1];
    v10 = [v7 initForOpeningContentTypes:v9 asCopy:0];
    [(ICImportArchiveController *)self setDocumentPickerViewController:v10];
  }

  v11 = [(ICImportArchiveController *)self documentPickerViewController];
  [v11 setDelegate:self];

  v12 = [(ICImportArchiveController *)self documentPickerViewController];
  [v12 setAllowsMultipleSelection:0];

  v13 = [(ICImportArchiveController *)self viewController];
  v14 = [(ICImportArchiveController *)self documentPickerViewController];
  [v13 presentViewController:v14 animated:1 completion:0];
}

- (void)importArchiveAtURL:(id)a3 intoNoteContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10015C018;
  v16[4] = sub_10015C028;
  v17 = 0;
  v8 = [(ICImportArchiveController *)self taskController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015C030;
  v12[3] = &unk_10064B740;
  v12[4] = self;
  v9 = v6;
  v13 = v9;
  v10 = v7;
  v14 = v10;
  v15 = v16;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015C0D4;
  v11[3] = &unk_10064B768;
  v11[4] = self;
  v11[5] = v16;
  [v8 startTask:v12 completionBlock:v11];

  _Block_object_dispose(v16, 8);
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v5 = [a4 firstObject];
  v6 = [(ICImportArchiveController *)self noteContainer];
  [(ICImportArchiveController *)self importArchiveAtURL:v5 intoNoteContainer:v6];

  [(ICImportArchiveController *)self setNoteContainer:0];
}

- (void)documentPickerWasCancelled:(id)a3
{
  v4 = [(ICImportArchiveController *)self completion];

  if (v4)
  {
    v5 = [(ICImportArchiveController *)self completion];
    v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    (v5)[2](v5, v6);
  }

  [(ICImportArchiveController *)self setCompletion:0];

  [(ICImportArchiveController *)self setNoteContainer:0];
}

- (void)showError:(id)a3
{
  v4 = a3;
  v8 = +[NSBundle mainBundle];
  v5 = [v8 localizedStringForKey:@"Error Importing Archive" value:&stru_100661CF0 table:0];
  v6 = [v4 localizedDescription];

  v7 = [(ICImportArchiveController *)self viewController];
  [UIAlertController ic_showAlertWithTitle:v5 message:v6 viewController:v7];
}

@end