@interface RCShareViewController
- (void)_didLoadFileInPlaceWithFileInfo:(id)a3;
- (void)_loadFirstConformingAttachment:(id)a3;
- (void)_removeTemporaryAudioFileIfNeeded;
- (void)cancel;
- (void)loadFileRepresentation;
- (void)loadView;
- (void)save;
- (void)setupViews;
@end

@implementation RCShareViewController

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = RCShareViewController;
  [(RCShareViewController *)&v3 loadView];
  [(RCShareViewController *)self setupViews];
  [(RCShareViewController *)self loadFileRepresentation];
}

- (void)_loadFirstConformingAttachment:(id)a3
{
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(RCShareViewController *)self extensionContext];
  v6 = [v5 inputItems];

  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v21 = *v28;
    v22 = v4;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v12 = [v11 attachments];
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          while (2)
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v23 + 1) + 8 * j);
              v18 = [v17 rc_supportedFileTypesRepresented];
              v19 = [v18 firstObject];

              if (v19)
              {
                v4 = v22;
                v20 = [v17 loadFileRepresentationForTypeIdentifier:v19 completionHandler:v22];

                goto LABEL_18;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v9 = v21;
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
      v4 = v22;
    }

    while (v8);
  }

LABEL_18:
}

- (void)loadFileRepresentation
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100001508;
  v2[3] = &unk_1000041C0;
  v2[4] = self;
  [(RCShareViewController *)self _loadFirstConformingAttachment:v2];
}

- (void)setupViews
{
  v3 = [[RCShareTableViewController alloc] initWithStyle:1];
  tableViewController = self->_tableViewController;
  self->_tableViewController = v3;

  v5 = [[UINavigationController alloc] initWithRootViewController:self->_tableViewController];
  navigationController = self->_navigationController;
  self->_navigationController = v5;

  v7 = [UIBarButtonItem alloc];
  v8 = RCLocalizedFrameworkString();
  v9 = [v7 initWithTitle:v8 style:0 target:self action:"cancel"];
  cancelButtonItem = self->_cancelButtonItem;
  self->_cancelButtonItem = v9;

  v11 = [UIBarButtonItem alloc];
  v12 = RCLocalizedFrameworkString();
  v13 = [v11 initWithTitle:v12 style:2 target:self action:"save"];
  doneButtonItem = self->_doneButtonItem;
  self->_doneButtonItem = v13;

  [(UIBarButtonItem *)self->_doneButtonItem setEnabled:0];
  v15 = self->_cancelButtonItem;
  v16 = [(RCShareTableViewController *)self->_tableViewController navigationItem];
  [v16 setLeftBarButtonItem:v15];

  v17 = self->_doneButtonItem;
  v18 = [(RCShareTableViewController *)self->_tableViewController navigationItem];
  [v18 setRightBarButtonItem:v17];

  [(RCShareViewController *)self addChildViewController:self->_navigationController];
  v19 = [(RCShareViewController *)self view];
  v20 = [(UINavigationController *)self->_navigationController view];
  [v19 addSubview:v20];

  [(UINavigationController *)self->_navigationController didMoveToParentViewController:self];
  v21 = [(UINavigationController *)self->_navigationController view];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v42 = [(RCShareViewController *)self view];
  v40 = [v42 topAnchor];
  v41 = [(UINavigationController *)self->_navigationController view];
  v39 = [v41 topAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v43[0] = v38;
  v37 = [(RCShareViewController *)self view];
  v35 = [v37 bottomAnchor];
  v36 = [(UINavigationController *)self->_navigationController view];
  v34 = [v36 bottomAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v43[1] = v33;
  v32 = [(RCShareViewController *)self view];
  v22 = [v32 leftAnchor];
  v23 = [(UINavigationController *)self->_navigationController view];
  v24 = [v23 leftAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  v43[2] = v25;
  v26 = [(RCShareViewController *)self view];
  v27 = [v26 rightAnchor];
  v28 = [(UINavigationController *)self->_navigationController view];
  v29 = [v28 rightAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  v43[3] = v30;
  v31 = [NSArray arrayWithObjects:v43 count:4];
  [NSLayoutConstraint activateConstraints:v31];
}

- (void)_didLoadFileInPlaceWithFileInfo:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001BF0;
  v4[3] = &unk_1000041E8;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_removeTemporaryAudioFileIfNeeded
{
  v3 = [(RCShareViewController *)self temporaryDirectoryURL];
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v8 = 0;
    v5 = [v4 removeItemAtURL:v3 error:&v8];
    v6 = v8;
    if (v5)
    {
      [(RCShareViewController *)self setTemporaryDirectoryURL:0];
    }

    else
    {
      v7 = OSLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10000216C(v6, v7);
      }
    }
  }
}

- (void)cancel
{
  [(RCShareViewController *)self _removeTemporaryAudioFileIfNeeded];
  v4 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
  v3 = [(RCShareViewController *)self extensionContext];
  [v3 cancelRequestWithError:v4];
}

- (void)save
{
  v3 = [(RCShareViewController *)self sharedAudioFileInfo];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 fileName];
    v6 = [(RCShareViewController *)self tableViewController];
    v7 = [v6 voiceMemoTitleText];
    v8 = [v7 text];

    if (v8 && ([v8 isEqualToString:&stru_1000042C8] & 1) == 0)
    {
      v9 = v8;

      v5 = v9;
    }

    v10 = [v4 url];
    v11 = [v4 creationDate];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100001F2C;
    v12[3] = &unk_1000041C0;
    v12[4] = self;
    [RCSavedRecordingsModel importRecordingWithSourceAudioURL:v10 name:v5 date:v11 completionHandler:v12];
  }
}

@end