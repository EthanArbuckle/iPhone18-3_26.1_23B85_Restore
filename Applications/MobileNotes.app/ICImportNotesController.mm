@interface ICImportNotesController
- (BOOL)canImportFileURLs:(id)a3 importableFileURLs:(id)a4;
- (NSProgress)longRunningTaskProgress;
- (id)importWarningAlertForFileCount:(unint64_t)a3;
- (id)initForPresentingInViewController:(id)a3;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)importCompletedForNoteProcessor:(id)a3 destinationFolder:(id)a4;
- (void)importFileURLs:(id)a3 shouldPreserveFolders:(BOOL)a4 account:(id)a5;
- (void)importIntoAccount:(id)a3 completion:(id)a4;
- (void)importStartedForNoteProcessor:(id)a3;
- (void)progressUpdatedForImportNoteProcessor:(id)a3;
- (void)showError:(id)a3;
- (void)willDismissProgressViewController:(id)a3;
@end

@implementation ICImportNotesController

- (id)initForPresentingInViewController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ICImportNotesController;
  v6 = [(ICImportNotesController *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(ICImportNoteProcessor);
    importNoteProcessor = v6->_importNoteProcessor;
    v6->_importNoteProcessor = v7;

    objc_storeStrong(&v6->_viewController, a3);
  }

  return v6;
}

- (void)importIntoAccount:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = [(ICImportNotesController *)self importNoteProcessor];
  v7 = [v6 state];

  if (v7)
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1004E1580(v8);
    }
  }

  else
  {
    [(ICImportNotesController *)self setDestinationAccount:v5];
    v9 = [UIDocumentPickerViewController alloc];
    v10 = [(ICImportNotesController *)self importNoteProcessor];
    v11 = [v10 allowedContentTypes];
    v12 = [v9 initForOpeningContentTypes:v11 asCopy:0];
    [(ICImportNotesController *)self setDocumentPickerViewController:v12];

    v13 = [(ICImportNotesController *)self documentPickerViewController];
    [v13 setDelegate:self];

    v14 = [(ICImportNotesController *)self documentPickerViewController];
    [v14 setAllowsMultipleSelection:1];

    v15 = [(ICImportNotesController *)self viewController];
    v16 = [(ICImportNotesController *)self documentPickerViewController];
    [v15 presentViewController:v16 animated:1 completion:0];
  }
}

- (id)importWarningAlertForFileCount:(unint64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Import to Notes?" value:&stru_100661CF0 table:0];

  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (a3 == 1)
  {
    v8 = @"This file will be added to an Imported Notes folder. It may look different in Notes.";
  }

  else
  {
    v8 = @"These files will be added to an Imported Notes folder. They may look different in Notes.";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_100661CF0 table:0];

  v10 = [UIAlertController alertControllerWithTitle:v5 message:v9 preferredStyle:1];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Cancel" value:&stru_100661CF0 table:0];
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:&stru_10064AE00];

  [v10 addAction:v13];

  return v10;
}

- (BOOL)canImportFileURLs:(id)a3 importableFileURLs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v41 = self;
  v8 = [(ICImportNotesController *)self importNoteProcessor];
  v39 = [v8 allowedContentTypes];

  [v7 removeAllObjects];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = v6;
  v42 = [v9 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (!v42)
  {
    v40 = 0;
    goto LABEL_30;
  }

  v40 = 0;
  v11 = *v52;
  v12 = NSURLTypeIdentifierKey;
  v38 = v45;
  *&v10 = 138412546;
  v37 = v10;
  do
  {
    v13 = 0;
    do
    {
      if (*v52 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v51 + 1) + 8 * v13);
      [v14 startAccessingSecurityScopedResource];
      v49 = 0;
      v50 = 0;
      v15 = [v14 getResourceValue:&v50 forKey:v12 error:&v49];
      v16 = v50;
      v17 = v49;
      [v14 stopAccessingSecurityScopedResource];
      v43 = v16;
      if (v15)
      {
        v18 = [UTTypeFolder identifier];
        v19 = [v16 isEqualToString:v18];

        if (v19)
        {
          v20 = +[NSFileManager defaultManager];
          v60 = v12;
          v21 = [NSArray arrayWithObjects:&v60 count:1];
          v48 = v17;
          v22 = [v20 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:v21 options:5 error:&v48];
          v23 = v11;
          v24 = v9;
          v25 = v7;
          v26 = v48;

          LOBYTE(v20) = [(ICImportNotesController *)v41 canImportFileURLs:v22 importableFileURLs:0];
          v17 = v26;
          v7 = v25;
          v9 = v24;
          v11 = v23;
          v12 = NSURLTypeIdentifierKey;
          if ((v20 & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_9:
          if (!v7)
          {
            goto LABEL_28;
          }

LABEL_10:
          [v7 addObject:v14];
          v40 = 1;
          goto LABEL_14;
        }

        if ([v16 isEqualToString:@"com.apple.stickies.appexport"])
        {
          v28 = +[NSFileManager defaultManager];
          v59 = v12;
          v29 = [NSArray arrayWithObjects:&v59 count:1];
          v47 = v17;
          v30 = [v28 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:v29 options:5 error:&v47];
          v31 = v47;

          v32 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v30, "count")}];
          if ([(ICImportNotesController *)v41 canImportFileURLs:v30 importableFileURLs:v32])
          {
            [v7 addObjectsFromArray:v32];
            v40 = 1;
          }

          v17 = v31;
        }

        else if (v16)
        {
          v33 = [ICUTType typeWithIdentifier:v16];
          if ([v39 containsObject:v33])
          {

            if (!v7)
            {
LABEL_28:

              v40 = 1;
              goto LABEL_30;
            }

            goto LABEL_10;
          }

          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v45[0] = sub_10013A768;
          v45[1] = &unk_10064AE28;
          v46 = v16;
          v34 = [v39 ic_containsObjectPassingTest:v44];

          if (v34)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        v27 = os_log_create("com.apple.notes", "Import");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = v37;
          v56 = v14;
          v57 = 2112;
          v58 = v17;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Couldn't determine UTI for file at URL: %@. Error: %@", buf, 0x16u);
        }
      }

LABEL_14:

      v13 = v13 + 1;
    }

    while (v42 != v13);
    v35 = [v9 countByEnumeratingWithState:&v51 objects:v61 count:16];
    v42 = v35;
  }

  while (v35);
LABEL_30:

  return v40 & 1;
}

- (void)importFileURLs:(id)a3 shouldPreserveFolders:(BOOL)a4 account:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(ICImportNotesController *)self importNoteProcessor];
  [v10 setDelegate:self];

  v11 = [(ICImportNotesController *)self importNoteProcessor];
  [v11 processURLs:v9 shouldPreserveFolders:v5 account:v8];
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v5 = a4;
  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
    v7 = [v6 pathExtension];
    v8 = +[ICArchive packageExtension];
    v9 = [v7 isEqualToString:v8] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [(ICImportNotesController *)self destinationAccount];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = +[ICNoteContext sharedContext];
    v14 = [v13 managedObjectContext];
    v12 = [ICAccount defaultAccountInContext:v14];
  }

  if (v9)
  {
    v15 = -[ICImportNotesController importWarningAlertForFileCount:](self, "importWarningAlertForFileCount:", [v5 count]);
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"Import" value:&stru_100661CF0 table:0];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10013AB38;
    v26[3] = &unk_1006467A0;
    v26[4] = self;
    v27 = v5;
    v29 = 0;
    v28 = v12;
    v18 = v12;
    v19 = v5;
    v20 = [UIAlertAction actionWithTitle:v17 style:0 handler:v26];

    [v15 addAction:v20];
    v21 = [(ICImportNotesController *)self viewController];
    [v21 presentViewController:v15 animated:1 completion:0];
  }

  else
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10013ABFC;
    v22[3] = &unk_100645ED0;
    v22[4] = self;
    v23 = v5;
    v25 = 0;
    v24 = v12;
    v19 = v12;
    v15 = v5;
    dispatch_async(&_dispatch_main_q, v22);
  }
}

- (void)importStartedForNoteProcessor:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013AC88;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)importCompletedForNoteProcessor:(id)a3 destinationFolder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_10013B108;
  v13[4] = sub_10013B118;
  v14 = [v7 objectID];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013B120;
  block[3] = &unk_100646008;
  block[4] = self;
  v8 = v6;
  v11 = v8;
  v12 = v13;
  dispatch_async(&_dispatch_main_q, block);
  v9 = v8;
  dispatchMainAfterDelay();

  _Block_object_dispose(v13, 8);
}

- (void)progressUpdatedForImportNoteProcessor:(id)a3
{
  v4 = a3;
  if ([v4 state] == 2)
  {
    if ([v4 totalNoteFound])
    {
      v5 = 100 * [v4 totalNoteImported];
      v6 = v5 / [v4 totalNoteFound];
    }

    else
    {
      v6 = 0;
    }

    [v4 totalNoteImported];
    [v4 totalNoteFound];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013B40C;
    block[3] = &unk_1006476B0;
    block[4] = self;
    block[5] = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v6 = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013B52C;
  v8[3] = &unk_10064AE98;
  v8[4] = self;
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)willDismissProgressViewController:(id)a3
{
  v3 = [(ICImportNotesController *)self importNoteProcessor];
  [v3 cancelProcess];
}

- (void)showError:(id)a3
{
  v4 = a3;
  v8 = +[NSBundle mainBundle];
  v5 = [v8 localizedStringForKey:@"Error Importing Archive" value:&stru_100661CF0 table:0];
  v6 = [v4 localizedDescription];

  v7 = [(ICImportNotesController *)self viewController];
  [UIAlertController ic_showAlertWithTitle:v5 message:v6 viewController:v7];
}

- (NSProgress)longRunningTaskProgress
{
  WeakRetained = objc_loadWeakRetained(&self->_longRunningTaskProgress);

  return WeakRetained;
}

@end