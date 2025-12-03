@interface ICImportArchiveController
- (id)initForPresentingInViewController:(id)controller markdown:(BOOL)markdown;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)importArchiveAtURL:(id)l intoNoteContainer:(id)container;
- (void)importIntoNoteContainer:(id)container completion:(id)completion;
- (void)showError:(id)error;
@end

@implementation ICImportArchiveController

- (id)initForPresentingInViewController:(id)controller markdown:(BOOL)markdown
{
  markdownCopy = markdown;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = ICImportArchiveController;
  v8 = [(ICImportArchiveController *)&v14 init];
  if (v8)
  {
    v9 = [[_TtC11MobileNotes17ICArchiveImporter alloc] initForNotesMarkdown:markdownCopy];
    archiveImporter = v8->_archiveImporter;
    v8->_archiveImporter = v9;

    v8->_markdown = markdownCopy;
    objc_storeStrong(&v8->_viewController, controller);
    v11 = objc_alloc_init(ICLongRunningTaskController);
    taskController = v8->_taskController;
    v8->_taskController = v11;

    [(ICLongRunningTaskController *)v8->_taskController setShouldShowCancelButton:1];
    [(ICLongRunningTaskController *)v8->_taskController setAllowSingleUnitProgress:1];
    [(ICLongRunningTaskController *)v8->_taskController setProgressStringBlock:&stru_10064B718];
    [(ICLongRunningTaskController *)v8->_taskController setShouldShowCircularProgress:1];
    [(ICLongRunningTaskController *)v8->_taskController setViewControllerToPresentFrom:controllerCopy];
  }

  return v8;
}

- (void)importIntoNoteContainer:(id)container completion:(id)completion
{
  completionCopy = completion;
  [(ICImportArchiveController *)self setNoteContainer:container];
  [(ICImportArchiveController *)self setCompletion:completionCopy];

  LODWORD(container) = [(ICImportArchiveController *)self markdown];
  v7 = [UIDocumentPickerViewController alloc];
  if (container)
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

  documentPickerViewController = [(ICImportArchiveController *)self documentPickerViewController];
  [documentPickerViewController setDelegate:self];

  documentPickerViewController2 = [(ICImportArchiveController *)self documentPickerViewController];
  [documentPickerViewController2 setAllowsMultipleSelection:0];

  viewController = [(ICImportArchiveController *)self viewController];
  documentPickerViewController3 = [(ICImportArchiveController *)self documentPickerViewController];
  [viewController presentViewController:documentPickerViewController3 animated:1 completion:0];
}

- (void)importArchiveAtURL:(id)l intoNoteContainer:(id)container
{
  lCopy = l;
  containerCopy = container;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_10015C018;
  v16[4] = sub_10015C028;
  v17 = 0;
  taskController = [(ICImportArchiveController *)self taskController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015C030;
  v12[3] = &unk_10064B740;
  v12[4] = self;
  v9 = lCopy;
  v13 = v9;
  v10 = containerCopy;
  v14 = v10;
  v15 = v16;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015C0D4;
  v11[3] = &unk_10064B768;
  v11[4] = self;
  v11[5] = v16;
  [taskController startTask:v12 completionBlock:v11];

  _Block_object_dispose(v16, 8);
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  firstObject = [ls firstObject];
  noteContainer = [(ICImportArchiveController *)self noteContainer];
  [(ICImportArchiveController *)self importArchiveAtURL:firstObject intoNoteContainer:noteContainer];

  [(ICImportArchiveController *)self setNoteContainer:0];
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  completion = [(ICImportArchiveController *)self completion];

  if (completion)
  {
    completion2 = [(ICImportArchiveController *)self completion];
    v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    (completion2)[2](completion2, v6);
  }

  [(ICImportArchiveController *)self setCompletion:0];

  [(ICImportArchiveController *)self setNoteContainer:0];
}

- (void)showError:(id)error
{
  errorCopy = error;
  v8 = +[NSBundle mainBundle];
  v5 = [v8 localizedStringForKey:@"Error Importing Archive" value:&stru_100661CF0 table:0];
  localizedDescription = [errorCopy localizedDescription];

  viewController = [(ICImportArchiveController *)self viewController];
  [UIAlertController ic_showAlertWithTitle:v5 message:localizedDescription viewController:viewController];
}

@end