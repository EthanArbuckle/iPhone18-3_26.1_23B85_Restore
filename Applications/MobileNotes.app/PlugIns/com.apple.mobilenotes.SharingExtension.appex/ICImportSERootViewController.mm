@interface ICImportSERootViewController
- (ICSERootViewController)rootViewController;
- (void)hideUI;
- (void)importCompletedForNoteProcessor:(id)processor destinationFolder:(id)folder;
- (void)importNotes;
- (void)importStartedForNoteProcessor:(id)processor;
- (void)progressUpdatedForImportNoteProcessor:(id)processor;
- (void)viewDidLoad;
@end

@implementation ICImportSERootViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ICImportSERootViewController;
  [(ICImportSERootViewController *)&v5 viewDidLoad];
  v3 = objc_alloc_init(ICImportNoteProcessor);
  [(ICImportSERootViewController *)self setImportNoteProcessor:v3];

  importNoteProcessor = [(ICImportSERootViewController *)self importNoteProcessor];
  [importNoteProcessor setDelegate:self];
}

- (void)progressUpdatedForImportNoteProcessor:(id)processor
{
  processorCopy = processor;
  if ([processorCopy state] == 1)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Loading notes to import…" value:&stru_1000F6F48 table:0];
  }

  else
  {
    if ([processorCopy state] != 2)
    {
      v6 = 0;
      goto LABEL_10;
    }

    totalNoteImported = [processorCopy totalNoteImported];
    if (totalNoteImported >= [processorCopy totalNoteFound])
    {
      v8 = totalNoteImported;
    }

    else
    {
      v8 = totalNoteImported + 1;
    }

    v5 = +[NSBundle mainBundle];
    v9 = [v5 localizedStringForKey:@"Importing note %lu of %lu…" value:&stru_1000F6F48 table:0];
    v6 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v9, v8, [processorCopy totalNoteFound]);
  }

LABEL_10:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006AE4;
  block[3] = &unk_1000F22D8;
  block[4] = self;
  v13 = v6;
  v14 = processorCopy;
  v10 = processorCopy;
  v11 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)importStartedForNoteProcessor:(id)processor
{
  v4 = +[NSDate date];
  [(ICImportSERootViewController *)self setLastAccessibilityAnnouncementDate:v4];
}

- (void)importCompletedForNoteProcessor:(id)processor destinationFolder:(id)folder
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006D7C;
  v6[3] = &unk_1000F23B8;
  processorCopy = processor;
  selfCopy = self;
  v5 = processorCopy;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)hideUI
{
  objc_initWeak(&location, self);
  rootViewController = [(ICImportSERootViewController *)self rootViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000726C;
  v4[3] = &unk_1000F23E0;
  objc_copyWeak(&v5, &location);
  [rootViewController dismissWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)importNotes
{
  v3 = dispatch_group_create();
  v24 = objc_alloc_init(NSMutableArray);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  selfCopy = self;
  rootViewController = [(ICImportSERootViewController *)self rootViewController];
  extensionContext = [rootViewController extensionContext];
  inputItems = [extensionContext inputItems];

  obj = inputItems;
  v22 = [inputItems countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v22)
  {
    v21 = *v35;
    do
    {
      v7 = 0;
      do
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v7;
        v8 = *(*(&v34 + 1) + 8 * v7);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        attachments = [v8 attachments];
        v10 = [attachments countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v31;
          do
          {
            v13 = 0;
            do
            {
              if (*v31 != v12)
              {
                objc_enumerationMutation(attachments);
              }

              v14 = *(*(&v30 + 1) + 8 * v13);
              identifier = [UTTypeURL identifier];
              v16 = [v14 hasItemConformingToTypeIdentifier:identifier];

              if (v16)
              {
                dispatch_group_enter(v3);
                identifier2 = [UTTypeURL identifier];
                v27[0] = _NSConcreteStackBlock;
                v27[1] = 3221225472;
                v27[2] = sub_100007614;
                v27[3] = &unk_1000F2408;
                v28 = v24;
                v29 = v3;
                [v14 loadItemForTypeIdentifier:identifier2 options:0 completionHandler:v27];
              }

              v13 = v13 + 1;
            }

            while (v11 != v13);
            v11 = [attachments countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v11);
        }

        v7 = v23 + 1;
      }

      while ((v23 + 1) != v22);
      v22 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v22);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000076E8;
  block[3] = &unk_1000F23B8;
  block[4] = selfCopy;
  v26 = v24;
  v18 = v24;
  dispatch_group_notify(v3, &_dispatch_main_q, block);
}

- (ICSERootViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

@end