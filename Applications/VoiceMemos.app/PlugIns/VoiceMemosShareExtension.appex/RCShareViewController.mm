@interface RCShareViewController
- (void)_didLoadFileInPlaceWithFileInfo:(id)info;
- (void)_loadFirstConformingAttachment:(id)attachment;
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

- (void)_loadFirstConformingAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  extensionContext = [(RCShareViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];

  v7 = [inputItems countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v21 = *v28;
    v22 = attachmentCopy;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(inputItems);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        attachments = [v11 attachments];
        v13 = [attachments countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                objc_enumerationMutation(attachments);
              }

              v17 = *(*(&v23 + 1) + 8 * j);
              rc_supportedFileTypesRepresented = [v17 rc_supportedFileTypesRepresented];
              firstObject = [rc_supportedFileTypesRepresented firstObject];

              if (firstObject)
              {
                attachmentCopy = v22;
                v20 = [v17 loadFileRepresentationForTypeIdentifier:firstObject completionHandler:v22];

                goto LABEL_18;
              }
            }

            v14 = [attachments countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v9 = v21;
      }

      v8 = [inputItems countByEnumeratingWithState:&v27 objects:v32 count:16];
      attachmentCopy = v22;
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
  navigationItem = [(RCShareTableViewController *)self->_tableViewController navigationItem];
  [navigationItem setLeftBarButtonItem:v15];

  v17 = self->_doneButtonItem;
  navigationItem2 = [(RCShareTableViewController *)self->_tableViewController navigationItem];
  [navigationItem2 setRightBarButtonItem:v17];

  [(RCShareViewController *)self addChildViewController:self->_navigationController];
  view = [(RCShareViewController *)self view];
  view2 = [(UINavigationController *)self->_navigationController view];
  [view addSubview:view2];

  [(UINavigationController *)self->_navigationController didMoveToParentViewController:self];
  view3 = [(UINavigationController *)self->_navigationController view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(RCShareViewController *)self view];
  topAnchor = [view4 topAnchor];
  view5 = [(UINavigationController *)self->_navigationController view];
  topAnchor2 = [view5 topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v43[0] = v38;
  view6 = [(RCShareViewController *)self view];
  bottomAnchor = [view6 bottomAnchor];
  view7 = [(UINavigationController *)self->_navigationController view];
  bottomAnchor2 = [view7 bottomAnchor];
  v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v43[1] = v33;
  view8 = [(RCShareViewController *)self view];
  leftAnchor = [view8 leftAnchor];
  view9 = [(UINavigationController *)self->_navigationController view];
  leftAnchor2 = [view9 leftAnchor];
  v25 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v43[2] = v25;
  view10 = [(RCShareViewController *)self view];
  rightAnchor = [view10 rightAnchor];
  view11 = [(UINavigationController *)self->_navigationController view];
  rightAnchor2 = [view11 rightAnchor];
  v30 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v43[3] = v30;
  v31 = [NSArray arrayWithObjects:v43 count:4];
  [NSLayoutConstraint activateConstraints:v31];
}

- (void)_didLoadFileInPlaceWithFileInfo:(id)info
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001BF0;
  v4[3] = &unk_1000041E8;
  v4[4] = self;
  infoCopy = info;
  v3 = infoCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_removeTemporaryAudioFileIfNeeded
{
  temporaryDirectoryURL = [(RCShareViewController *)self temporaryDirectoryURL];
  if (temporaryDirectoryURL)
  {
    v4 = +[NSFileManager defaultManager];
    v8 = 0;
    v5 = [v4 removeItemAtURL:temporaryDirectoryURL error:&v8];
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
  extensionContext = [(RCShareViewController *)self extensionContext];
  [extensionContext cancelRequestWithError:v4];
}

- (void)save
{
  sharedAudioFileInfo = [(RCShareViewController *)self sharedAudioFileInfo];
  v4 = sharedAudioFileInfo;
  if (sharedAudioFileInfo)
  {
    fileName = [sharedAudioFileInfo fileName];
    tableViewController = [(RCShareViewController *)self tableViewController];
    voiceMemoTitleText = [tableViewController voiceMemoTitleText];
    text = [voiceMemoTitleText text];

    if (text && ([text isEqualToString:&stru_1000042C8] & 1) == 0)
    {
      v9 = text;

      fileName = v9;
    }

    v10 = [v4 url];
    creationDate = [v4 creationDate];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100001F2C;
    v12[3] = &unk_1000041C0;
    v12[4] = self;
    [RCSavedRecordingsModel importRecordingWithSourceAudioURL:v10 name:fileName date:creationDate completionHandler:v12];
  }
}

@end