@interface ICNoteQuickLookViewController
+ (void)initialize;
- (UIView)notePreviewControllerView;
- (void)preparePreviewOfSearchableItemWithIdentifier:(id)identifier queryString:(id)string completionHandler:(id)handler;
- (void)updateNotePreviewControllerFrame;
- (void)viewDidLayoutSubviews;
@end

@implementation ICNoteQuickLookViewController

+ (void)initialize
{
  [ICNoteContext startSharedContextWithOptions:546];
  v3 = objc_alloc_init(ICHTMLSearchIndexerDataSource);
  v2 = +[ICSearchIndexer sharedIndexer];
  [v2 addDataSource:v3];

  [NSTextAttachment registerTextAttachmentClass:objc_opt_class() forFileType:PKApplePaperTypeIdentifier];
}

- (void)preparePreviewOfSearchableItemWithIdentifier:(id)identifier queryString:(id)string completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v9 = +[ICSearchIndexer sharedIndexer];
  v10 = [v9 mainContextObjectForObjectIDURIString:identifierCopy];

  if (v10)
  {
    objc_opt_class();
    v11 = ICDynamicCast();
    objc_opt_class();
    v12 = ICDynamicCast();
    objc_opt_class();
    v13 = ICDynamicCast();
    objc_opt_class();
    v14 = ICDynamicCast();
    if (v11)
    {
      note = [v11 note];
      v16 = v13;
      v13 = note;
    }

    else
    {
      if (!v12)
      {
        goto LABEL_10;
      }

      note2 = [v12 note];
      v16 = v14;
      v14 = note2;
    }

LABEL_10:
    if (v13)
    {
      v26 = identifierCopy;
      v19 = ICNotePreviewController_ptr;
      v20 = v13;
    }

    else
    {
      if (!v14)
      {
LABEL_15:

        goto LABEL_16;
      }

      v26 = identifierCopy;
      v19 = NotePreviewController_ptr;
      v20 = v14;
    }

    v21 = [objc_alloc(*v19) initWithNote:v20];
    [v21 setupPreviewWithInitialFrame:{0.0, 0.0, 343.0, 490.0}];
    [(ICNoteQuickLookViewController *)self view];
    v23 = v22 = self;
    view = [v21 view];
    [v23 addSubview:view];

    view2 = [v21 view];
    [(ICNoteQuickLookViewController *)v22 setNotePreviewControllerView:view2];

    identifierCopy = v26;
    goto LABEL_15;
  }

  v17 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to get searchIndexableObject for objectIDURI %@", buf, 0xCu);
  }

LABEL_16:
  handlerCopy[2](handlerCopy, 0);
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICNoteQuickLookViewController;
  [(ICNoteQuickLookViewController *)&v3 viewDidLayoutSubviews];
  [(ICNoteQuickLookViewController *)self updateNotePreviewControllerFrame];
}

- (void)updateNotePreviewControllerFrame
{
  if ([(ICNoteQuickLookViewController *)self _appearState]== 2 || [(ICNoteQuickLookViewController *)self _appearState]== 1)
  {
    view = [(ICNoteQuickLookViewController *)self view];
    [view bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    notePreviewControllerView = [(ICNoteQuickLookViewController *)self notePreviewControllerView];
    [notePreviewControllerView setFrame:{v4, v6, v8, v10}];
  }
}

- (UIView)notePreviewControllerView
{
  WeakRetained = objc_loadWeakRetained(&self->_notePreviewControllerView);

  return WeakRetained;
}

@end