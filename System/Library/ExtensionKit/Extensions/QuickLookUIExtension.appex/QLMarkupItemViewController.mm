@interface QLMarkupItemViewController
- (BOOL)_allowEditingContent:(id)content;
- (BOOL)_isPreviewingUnconvertedDocument;
- (BOOL)canEnterFullScreen;
- (BOOL)canPinchToDismiss;
- (BOOL)canShowMarkupButton;
- (BOOL)controller:(id)controller shouldOpenLinkAtURL:(id)l;
- (BOOL)editorShouldAllowEditingContents:(id)contents;
- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer;
- (BOOL)shouldAllowEditingContents;
- (CGRect)markupContentFrame;
- (NSURL)urlForDocumentWorkflows;
- (QLOriginalDateFormatProvider)originalDateFormatProvider;
- (SYDocumentWorkflowsClient)documentWorkflowsClient;
- (id)_formFillingBannerConfiguration;
- (id)_showLatestBannerConfiguration;
- (id)_showOriginalBannerConfiguration;
- (id)configurationForBanner;
- (id)toolbarButtonsForTraitCollection:(id)collection;
- (id)transitioningView;
- (void)_fetchDocumentAttributes;
- (void)_notifyHostWithEditedCopy:(id)copy hostCompletionHandler:(id)handler;
- (void)_saveChangesNotifyingHost:(BOOL)host forceNotifyHost:(BOOL)notifyHost completionHandler:(id)handler;
- (void)_saveChangesNotifyingHostOnEditsQueue:(BOOL)queue forceNotifyHost:(BOOL)host completionHandler:(id)handler;
- (void)_saveChangesWithEditedCopy:(id)copy notifyHost:(BOOL)host completionHandler:(id)handler;
- (void)_setupPresentationMode:(unint64_t)mode;
- (void)_stopFormFilling;
- (void)_updateBannerVisibility;
- (void)_updatePencilSupportForPresentationModeIfNeeded:(unint64_t)needed;
- (void)_updatePreferredContentSizeWithData:(id)data;
- (void)_updatePreferredContentSizeWithURL:(id)l;
- (void)actionSheetDidDismiss;
- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)controllerWantsToShowShareSheet:(id)sheet;
- (void)editDetectedForMarkupViewController:(id)controller shouldEnableMarkup:(BOOL)markup;
- (void)editor:(id)editor contentFrameDidChange:(CGRect)change;
- (void)editorDidUnlockDocument:(id)document;
- (void)hostSceneWillDeactivate;
- (void)hostViewControllerBackgroundColorChanged:(id)changed;
- (void)loadEditorWithData:(id)data placeholderImage:(id)image completionHandler:(id)handler;
- (void)loadEditorWithURL:(id)l placeholderImage:(id)image completionHandler:(id)handler;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)performFirstTimeAppearanceActions:(unint64_t)actions;
- (void)prepareForActionSheetPresentation;
- (void)restoreFullscreenState;
- (void)saveFullscreenStateAndHideChrome;
- (void)savePreviewEditedCopyWithCompletionHandler:(id)handler;
- (void)setHasChangesToRedo:(BOOL)redo;
- (void)setMarkupContentFrame:(CGRect)frame;
- (void)shouldLockPreviewForUnsavedEdits:(BOOL)edits;
- (void)showingSignatureView:(BOOL)view;
- (void)togglePeriodicallySaveEdits:(BOOL)edits;
- (void)updateBannerVisibility;
- (void)updateContentFrame;
- (void)updateContentsAllowEditingContent;
- (void)updateInterfaceAfterSavingEdits;
- (void)updateMarkupBackgroundColor;
- (void)viewDidLoad;
@end

@implementation QLMarkupItemViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  handlerCopy = handler;
  v9 = _os_feature_enabled_impl();
  v10 = PPKQuickLookContentEditorViewController_ptr;
  if (!v9)
  {
    v10 = MUQuickLookContentEditorViewController_ptr;
  }

  v11 = *v10;
  v12 = objc_opt_new();
  markupViewController = self->_markupViewController;
  self->_markupViewController = v12;

  view = [(QuickLookContentEditor *)self->_markupViewController view];
  [view setOpaque:0];

  [(QuickLookContentEditor *)self->_markupViewController setDelegate:self];
  contentsAllowsEditingContents = self->_contentsAllowsEditingContents;
  self->_contentsAllowsEditingContents = 0;

  [(QuickLookContentEditor *)self->_markupViewController setShapeDetectionEnabled:1];
  [(QuickLookContentEditor *)self->_markupViewController setToolbarHidden:1];
  [(QuickLookContentEditor *)self->_markupViewController setPencilAlwaysDraws:[(QLMarkupItemViewController *)self shouldAllowEditingContents]];
  [(QLMarkupItemViewController *)self setFormDetectedInDocument:0];
  [(QLMarkupItemViewController *)self setAutofillDetected:0];
  scrollView = [(QLMarkupItemViewController *)self scrollView];
  [scrollView setContentOffset:{0.0, 0.0}];

  self->_lastSavedEditNumber = 0;
  [(QLMarkupItemViewController *)self addChildViewController:self->_markupViewController];
  view2 = [(QLMarkupItemViewController *)self view];
  view3 = [(QuickLookContentEditor *)self->_markupViewController view];
  [view2 addSubview:view3];

  [(QuickLookContentEditor *)self->_markupViewController didMoveToParentViewController:self];
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_10000B748;
  v30 = &unk_100024C80;
  selfCopy = self;
  v19 = handlerCopy;
  v32 = v19;
  v20 = objc_retainBlock(&v27);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(QLMarkupItemViewController *)self _updatePreferredContentSizeWithData:contentsCopy, v27, v28, v29, v30, selfCopy];
    [(QLMarkupItemViewController *)self loadEditorWithData:contentsCopy placeholderImage:0 completionHandler:v20];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = contentsCopy;
        imageURL = [v21 imageURL];
        [(QLMarkupItemViewController *)self _updatePreferredContentSizeWithURL:imageURL];

        imageURL2 = [v21 imageURL];

        [(QLMarkupItemViewController *)self loadEditorWithURL:imageURL2 placeholderImage:0 completionHandler:v20];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        v24 = contentsCopy;
        imageData = [v24 imageData];
        [(QLMarkupItemViewController *)self _updatePreferredContentSizeWithData:imageData];

        imageURL2 = [v24 imageData];
        image = [v24 image];

        [(QLMarkupItemViewController *)self loadEditorWithData:imageURL2 placeholderImage:image completionHandler:v20];
      }

      goto LABEL_12;
    }

    [(QLMarkupItemViewController *)self _updatePreferredContentSizeWithURL:contentsCopy, v27, v28, v29, v30, selfCopy];
    [(QLMarkupItemViewController *)self loadEditorWithURL:contentsCopy placeholderImage:0 completionHandler:v20];
  }

LABEL_12:
  [(QLMarkupItemViewController *)self _fetchDocumentAttributes:v27];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = QLMarkupItemViewController;
  [(QLMarkupItemViewController *)&v8 viewDidLoad];
  objc_initWeak(&location, self);
  v9 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v9 count:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000B914;
  v5[3] = &unk_100024D08;
  objc_copyWeak(&v6, &location);
  v4 = [(QLMarkupItemViewController *)self registerForTraitChanges:v3 withHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_updatePreferredContentSizeWithData:(id)data
{
  dataCopy = data;
  if (self->_markupViewController)
  {
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      markupViewController = self->_markupViewController;
      [objc_opt_class() suggestedContentSizeForData:dataCopy];
      if (v6 != CGSizeZero.width || v5 != CGSizeZero.height)
      {
        [(QLMarkupItemViewController *)self setPreferredContentSize:?];
      }
    }
  }
}

- (void)_updatePreferredContentSizeWithURL:(id)l
{
  lCopy = l;
  if (self->_markupViewController)
  {
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      markupViewController = self->_markupViewController;
      [objc_opt_class() suggestedContentSizeForURL:lCopy];
      if (v6 != CGSizeZero.width || v5 != CGSizeZero.height)
      {
        [(QLMarkupItemViewController *)self setPreferredContentSize:?];
      }
    }
  }
}

- (void)loadEditorWithData:(id)data placeholderImage:(id)image completionHandler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  dataCopy = data;
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  v12 = objc_opt_respondsToSelector();

  markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
  v15 = markupViewController2;
  if (v12)
  {
    [markupViewController2 loadWithData:dataCopy archivedModelData:0 placeholderImage:imageCopy completionHandler:handlerCopy];

    v14 = v15;
  }

  else
  {
    [markupViewController2 setData:dataCopy withArchivedModelData:0 placeholderImage:imageCopy];

    (*(handlerCopy + 2))(handlerCopy, 0);
    v14 = handlerCopy;
  }
}

- (void)loadEditorWithURL:(id)l placeholderImage:(id)image completionHandler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  lCopy = l;
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  v12 = objc_opt_respondsToSelector();

  markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
  v15 = markupViewController2;
  if (v12)
  {
    [markupViewController2 loadWithURL:lCopy archivedModelData:0 placeholderImage:imageCopy completionHandler:handlerCopy];

    v14 = v15;
  }

  else
  {
    [markupViewController2 setFileURL:lCopy withArchivedModelData:0 placeholderImage:imageCopy];

    (*(handlerCopy + 2))(handlerCopy, 0);
    v14 = handlerCopy;
  }
}

- (void)hostViewControllerBackgroundColorChanged:(id)changed
{
  objc_storeStrong(&self->_hostViewControllerBackgroundColor, changed);

  [(QLMarkupItemViewController *)self updateMarkupBackgroundColor];
}

- (void)performFirstTimeAppearanceActions:(unint64_t)actions
{
  if ((actions & 4) != 0)
  {
    [(QLMarkupItemViewController *)self enableMarkupMode:1];
  }
}

- (void)_setupPresentationMode:(unint64_t)mode
{
  v5 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v5 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = v5;
    markupViewController = [(QLMarkupItemViewController *)self markupViewController];
    v14 = 134217984;
    presentationMode = [markupViewController presentationMode];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "_setupPresentationMode: %lu #AnyItemViewController", &v14, 0xCu);
  }

  if (mode - 1 <= 1)
  {
    markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
    markupViewController3 = markupViewController2;
    v10 = 0;
LABEL_9:
    [markupViewController2 setPresentationMode:v10];
LABEL_10:

    return;
  }

  if (mode - 3 <= 2)
  {
    markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
    markupViewController3 = markupViewController2;
    v10 = 1;
    goto LABEL_9;
  }

  v11 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v11 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = v11;
    markupViewController3 = [(QLMarkupItemViewController *)self markupViewController];
    presentationMode2 = [markupViewController3 presentationMode];
    v14 = 134217984;
    presentationMode = presentationMode2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Setting unsupported presentation mode: %lu #AnyItemViewController", &v14, 0xCu);

    goto LABEL_10;
  }
}

- (void)_saveChangesNotifyingHost:(BOOL)host forceNotifyHost:(BOOL)notifyHost completionHandler:(id)handler
{
  handlerCopy = handler;
  saveEditsQueue = [(QLMarkupItemViewController *)self saveEditsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C4D8;
  block[3] = &unk_100024D30;
  hostCopy = host;
  notifyHostCopy = notifyHost;
  block[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(saveEditsQueue, block);
}

- (void)_saveChangesNotifyingHostOnEditsQueue:(BOOL)queue forceNotifyHost:(BOOL)host completionHandler:(id)handler
{
  hostCopy = host;
  handlerCopy = handler;
  saveEditsQueue = [(QLMarkupItemViewController *)self saveEditsQueue];
  dispatch_assert_queue_V2(saveEditsQueue);

  if ([(QLMarkupItemViewController *)self needsToSaveChanges])
  {
    if ([(QLMarkupItemViewController *)self shouldAllowEditingContents]&& self->_markupViewController)
    {
      objc_initWeak(location, self);
      markupViewController = [(QLMarkupItemViewController *)self markupViewController];
      outputContentType = [markupViewController outputContentType];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10000C748;
      v16[3] = &unk_100024D80;
      objc_copyWeak(&v18, location);
      v17 = handlerCopy;
      queueCopy = queue;
      [(QLMarkupItemViewController *)self editedCopyToSaveChangesWithOutputType:outputContentType completionHandler:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(location);
      goto LABEL_13;
    }
  }

  else if (hostCopy)
  {
    context = [(QLMarkupItemViewController *)self context];
    item = [context item];
    editedCopy = [item editedCopy];
    [(QLMarkupItemViewController *)self _notifyHostWithEditedCopy:editedCopy hostCompletionHandler:handlerCopy];

    goto LABEL_13;
  }

  if (handlerCopy)
  {
    v15 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v15 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Item view controller: %@ is notifying host after trying to save Markup changes. #ItemViewController", location, 0xCu);
    }

    handlerCopy[2](handlerCopy);
  }

LABEL_13:
}

- (void)_saveChangesWithEditedCopy:(id)copy notifyHost:(BOOL)host completionHandler:(id)handler
{
  hostCopy = host;
  copyCopy = copy;
  handlerCopy = handler;
  v10 = [copyCopy url];
  writeOptionsForSaving = [(QLMarkupItemViewController *)self writeOptionsForSaving];
  if (writeOptionsForSaving)
  {
    [NSMutableDictionary dictionaryWithDictionary:writeOptionsForSaving];
  }

  else
  {
    [NSMutableDictionary dictionaryWithCapacity:1];
  }
  v12 = ;
  [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"MUUseOriginalFileMetadata"];
  markupViewController = self->_markupViewController;
  v18 = 0;
  v14 = [(QuickLookContentEditor *)markupViewController writeToURL:v10 options:v12 error:&v18];
  v15 = v18;
  if (v14)
  {
    [copyCopy bumpVersion];
    [copyCopy markAsPurgeable];
    if (hostCopy)
    {
      [(QLMarkupItemViewController *)self _notifyHostWithEditedCopy:copyCopy hostCompletionHandler:handlerCopy];
    }

    delegate = [(QLMarkupItemViewController *)self delegate];
    [delegate previewItemViewController:self hasUnsavedEdits:0];

    self->_lastSavedEditNumber = [(QLMarkupItemViewController *)self currentEditNumber];
    if (!handlerCopy)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (!hostCopy)
    {
      handlerCopy[2](handlerCopy);
    }

    goto LABEL_16;
  }

  v17 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v17 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to save markup changes in file with error: %@ #AnyItemViewController", buf, 0xCu);
  }

  LOBYTE(hostCopy) = 0;
  if (handlerCopy)
  {
    goto LABEL_14;
  }

LABEL_16:
}

- (void)_notifyHostWithEditedCopy:(id)copy hostCompletionHandler:(id)handler
{
  copyCopy = copy;
  handlerCopy = handler;
  v8 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v8 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = copyCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Item view controller: %@ is notifying host with latest Markup changes: %@. #ItemViewController", &v10, 0x16u);
  }

  delegate = [(QLMarkupItemViewController *)self delegate];
  [delegate previewItemViewControllerDidEditCopyOfPreviewItem:self editedCopy:copyCopy completionHandler:handlerCopy];
}

- (BOOL)_isPreviewingUnconvertedDocument
{
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  outputContentType = [markupViewController outputContentType];
  preferredFilenameExtension = [outputContentType preferredFilenameExtension];

  context = [(QLMarkupItemViewController *)self context];
  contentType = [context contentType];

  if (contentType)
  {
    context2 = [(QLMarkupItemViewController *)self context];
    contentType2 = [context2 contentType];
    v10 = [UTType typeWithIdentifier:contentType2];

    preferredFilenameExtension2 = [v10 preferredFilenameExtension];
    v12 = [preferredFilenameExtension caseInsensitiveCompare:preferredFilenameExtension2] == 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)updateContentsAllowEditingContent
{
  context = [(QLMarkupItemViewController *)self context];
  canBeEdited = [context canBeEdited];

  context2 = [(QLMarkupItemViewController *)self context];
  [context2 editedFileBehavior];

  context3 = [(QLMarkupItemViewController *)self context];
  item = [context3 item];
  editingMode = [item editingMode];

  if (editingMode)
  {
    v9 = 1;
  }

  else
  {
    v9 = canBeEdited;
  }

  if (![(QLMarkupItemViewController *)self _isPreviewingUnconvertedDocument])
  {
    context4 = [(QLMarkupItemViewController *)self context];
    if (([context4 editedFileBehavior] & 2) != 0)
    {
      canHandleEditedCopy = 1;
    }

    else
    {
      context5 = [(QLMarkupItemViewController *)self context];
      item2 = [context5 item];
      if ([item2 editingMode] == 2)
      {
        canHandleEditedCopy = 1;
      }

      else
      {
        context6 = [(QLMarkupItemViewController *)self context];
        item3 = [context6 item];
        editingMode2 = [item3 editingMode];
        if (editingMode2 == QLPreviewItemEditingModeCreateCopyAndDisplayDismissActions)
        {
          canHandleEditedCopy = 1;
        }

        else
        {
          context7 = [(QLMarkupItemViewController *)self context];
          item4 = [context7 item];
          canHandleEditedCopy = [item4 canHandleEditedCopy];
        }
      }
    }

    v9 = v9 & canHandleEditedCopy;
  }

  v19 = [NSNumber numberWithBool:v9];
  contentsAllowsEditingContents = self->_contentsAllowsEditingContents;
  self->_contentsAllowsEditingContents = v19;

  _objc_release_x1();
}

- (BOOL)shouldAllowEditingContents
{
  selfCopy = self;
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  LOBYTE(selfCopy) = [(QLMarkupItemViewController *)selfCopy _allowEditingContent:markupViewController];

  return selfCopy;
}

- (void)savePreviewEditedCopyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(QLMarkupItemViewController *)self shouldAllowEditingContents])
  {
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000D1C8;
    v5[3] = &unk_100024DA8;
    v6 = handlerCopy;
    objc_copyWeak(&v7, &location);
    [(QLMarkupItemViewController *)self _saveChangesNotifyingHost:1 forceNotifyHost:0 completionHandler:v5];
    objc_destroyWeak(&v7);

    objc_destroyWeak(&location);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)updateMarkupBackgroundColor
{
  if ([(QuickLookContentEditor *)self->_markupViewController annotationEditingEnabled])
  {
    hostViewControllerBackgroundColor = self->_hostViewControllerBackgroundColor;
    if (hostViewControllerBackgroundColor)
    {
      v4 = hostViewControllerBackgroundColor;
    }

    else
    {
      v4 = +[UIColor systemBackgroundColor];
    }
  }

  else
  {
    v4 = +[UIColor clearColor];
  }

  v5 = v4;
  traitCollection = [(QLMarkupItemViewController *)self traitCollection];
  v8 = [(UIColor *)v5 resolvedColorWithTraitCollection:traitCollection];

  markupViewController = self->_markupViewController;
  if (objc_opt_respondsToSelector())
  {
    [(QuickLookContentEditor *)self->_markupViewController setCanvaBackgroundColor:v8];
  }

  else if (objc_opt_respondsToSelector())
  {
    [(QuickLookContentEditor *)self->_markupViewController setBackgroundColor:v8];
  }
}

- (void)togglePeriodicallySaveEdits:(BOOL)edits
{
  saveEditsPeriodicallyTimer = self->_saveEditsPeriodicallyTimer;
  if (edits)
  {
    if (!saveEditsPeriodicallyTimer)
    {
      objc_initWeak(&location, self);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000D71C;
      v8[3] = &unk_100024DD0;
      objc_copyWeak(&v9, &location);
      v5 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v8 block:300.0];
      v6 = self->_saveEditsPeriodicallyTimer;
      self->_saveEditsPeriodicallyTimer = v5;

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(NSTimer *)saveEditsPeriodicallyTimer invalidate];
    v7 = self->_saveEditsPeriodicallyTimer;
    self->_saveEditsPeriodicallyTimer = 0;
  }
}

- (void)_updatePencilSupportForPresentationModeIfNeeded:(unint64_t)needed
{
  shouldAllowEditingContents = [(QLMarkupItemViewController *)self shouldAllowEditingContents];
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  [markupViewController setPencilAlwaysDraws:shouldAllowEditingContents];
}

- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (![(QLMarkupItemViewController *)self isSavingEdits])
  {
    if ([(QLMarkupItemViewController *)identifierCopy isEqualToString:QLDoneButtonIdentifier])
    {
      selfCopy2 = self;
      v10 = 0;
LABEL_14:
      [(QLMarkupItemViewController *)selfCopy2 enableMarkupMode:v10];
      goto LABEL_15;
    }

    if ([(QLMarkupItemViewController *)identifierCopy isEqualToString:@"QLInlineMarkup"])
    {
      markupViewController = [(QLMarkupItemViewController *)self markupViewController];
      formFillingEnabled = [markupViewController formFillingEnabled];

      if (formFillingEnabled)
      {
        [(QLMarkupItemViewController *)self _stopFormFilling];
      }

      if ([(QuickLookContentEditor *)self->_markupViewController annotationEditingEnabled])
      {
        [(QLMarkupItemViewController *)self _saveChangesNotifyingHost:1 forceNotifyHost:1];
      }

      v10 = [(QuickLookContentEditor *)self->_markupViewController annotationEditingEnabled]^ 1;
      selfCopy2 = self;
      goto LABEL_14;
    }

    if ([(QLMarkupItemViewController *)identifierCopy isEqualToString:QLFormFillingButtonIdentifier])
    {
      markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
      formFillingEnabled2 = [markupViewController2 formFillingEnabled];

      if (formFillingEnabled2)
      {
        [(QLMarkupItemViewController *)self _stopFormFilling];
      }

      else
      {
        [(QLMarkupItemViewController *)self startFormFilling];
      }

      goto LABEL_15;
    }

    if ([(QLMarkupItemViewController *)identifierCopy isEqualToString:@"QLMarkupUndo"])
    {
      undoManager = [(QuickLookContentEditor *)self->_markupViewController undoManager];
      [undoManager undo];
    }

    else
    {
      if (![(QLMarkupItemViewController *)identifierCopy isEqualToString:@"QLMarkupRedo"])
      {
        if ([(QLMarkupItemViewController *)identifierCopy isEqualToString:@"QLMarkupUndoAll"])
        {
          [(QuickLookContentEditor *)self->_markupViewController revert];
        }

        else if (![(QLMarkupItemViewController *)identifierCopy isEqualToString:QLToolbarButtonOptionCancelIdentifier])
        {
          goto LABEL_15;
        }

LABEL_31:
        markupViewController3 = [(QLMarkupItemViewController *)self markupViewController];
        [markupViewController3 becomeFirstResponder];

        goto LABEL_15;
      }

      undoManager = [(QuickLookContentEditor *)self->_markupViewController undoManager];
      [undoManager redo];
    }

    goto LABEL_31;
  }

  v8 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v8 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v18 = 138412546;
    selfCopy4 = identifierCopy;
    v20 = 2112;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Ignored button pressed with identifier: %@ because changes are being saved. %@ #ItemViewController", &v18, 0x16u);
  }

LABEL_15:
  if (handlerCopy)
  {
    v13 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v13 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v18 = 138412546;
      selfCopy4 = self;
      v20 = 2112;
      selfCopy3 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Item view controller: %@ is executing completion handler for button pressed with identifier: %@. #ItemViewController", &v18, 0x16u);
    }

    handlerCopy[2](handlerCopy);
  }
}

- (BOOL)canShowMarkupButton
{
  markupViewController = self->_markupViewController;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(QuickLookContentEditor *)self->_markupViewController documentIsLocked]^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return [(QLMarkupItemViewController *)self shouldAllowEditingContents]& v4;
}

- (id)toolbarButtonsForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = +[NSMutableArray array];
  if ([(QLMarkupItemViewController *)self canShowMarkupButton])
  {
    v6 = [[QLToolbarButton alloc] initWithIdentifier:@"QLInlineMarkup"];
    shouldDisplayAlternateEditButton = [(QuickLookContentEditor *)self->_markupViewController annotationEditingEnabled]&& ![(QLMarkupItemViewController *)self shouldDisplayAlternateEditButton];
    [v6 setSymbolImageName:@"pencil.tip.crop.circle"];
    [v6 setSelected:shouldDisplayAlternateEditButton];
    if (_UIBarsDesktopNavigationBarEnabled())
    {
      [v6 setForceToNavBar:{-[QuickLookContentEditor annotationEditingEnabled](self->_markupViewController, "annotationEditingEnabled")}];
      if (_UISolariumEnabled())
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }

      [v6 setPlacement:v8];
    }

    else
    {
      [v6 setForceToNavBar:1];
    }

    v9 = QLLocalizedString();
    [v6 setTitle:v9];

    [v6 setAccessibilityIdentifier:QLOverlayMarkupButtonAccessibilityIdentifier];
    v10 = [collectionCopy horizontalSizeClass] != 1 && objc_msgSend(collectionCopy, "userInterfaceIdiom") != 0;
    if (![(QuickLookContentEditor *)self->_markupViewController annotationEditingEnabled]|| v10)
    {
      [v5 addObject:v6];
    }

    else
    {
      v11 = [[QLToolbarButtonOption alloc] initWithIdentifier:@"QLMarkupUndoAll"];
      v12 = QLLocalizedString();
      v13 = v11;
      v38 = v11;
      [v11 setTitle:v12];

      v14 = [[QLToolbarButtonOption alloc] initWithIdentifier:@"QLMarkupUndo"];
      v15 = QLLocalizedString();
      [v14 setTitle:v15];

      v16 = [[QLToolbarButton alloc] initWithIdentifier:@"QLMarkupUndo"];
      [v16 setSymbolImageName:@"arrow.uturn.backward.circle"];
      [v16 setPlacement:0];
      v41[0] = v14;
      v41[1] = v13;
      v17 = +[QLToolbarButtonOption cancelOption];
      v41[2] = v17;
      v18 = [NSArray arrayWithObjects:v41 count:3];
      [v16 setOptions:v18];

      [v16 setForceToNavBar:1];
      [v16 setEnabled:self->_hasChangesToUndo];
      title = [v14 title];
      [v16 setTitle:title];

      v20 = [[QLToolbarButtonOption alloc] initWithIdentifier:@"QLMarkupRedo"];
      v21 = QLLocalizedString();
      [v20 setTitle:v21];

      v22 = [[QLToolbarButton alloc] initWithIdentifier:@"QLMarkupRedo"];
      [v22 setSymbolImageName:@"arrow.uturn.forward.circle"];
      [v22 setPlacement:0];
      v40[0] = v20;
      v23 = +[QLToolbarButtonOption cancelOption];
      v40[1] = v23;
      v24 = [NSArray arrayWithObjects:v40 count:2];
      [v22 setOptions:v24];

      [v22 setForceToNavBar:1];
      [v22 setEnabled:self->_hasChangesToRedo];
      title2 = [v20 title];
      [v22 setTitle:title2];

      v39[0] = v6;
      v39[1] = v22;
      v39[2] = v16;
      v26 = [NSArray arrayWithObjects:v39 count:3];
      [v5 addObjectsFromArray:v26];
    }
  }

  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  formFillingEnabled = [markupViewController formFillingEnabled];

  markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
  annotationEditingEnabled = [markupViewController2 annotationEditingEnabled];

  canOfferFormFillingForOriginalDocument = [(QLMarkupItemViewController *)self canOfferFormFillingForOriginalDocument];
  if (canOfferFormFillingForOriginalDocument)
  {
    canOfferFormFillingForOriginalDocument = [(QLMarkupItemViewController *)self formDetectedInDocument];
  }

  if ((((annotationEditingEnabled | formFillingEnabled) & 1) != 0 || canOfferFormFillingForOriginalDocument) && [(QLMarkupItemViewController *)self shouldAllowEditingContents])
  {
    v32 = [QLToolbarButton alloc];
    v33 = [v32 initWithIdentifier:QLFormFillingButtonIdentifier];
    [v33 setSymbolImageName:@"rectangle.and.pencil.and.ellipsis"];
    [v33 setSelected:formFillingEnabled];
    [v33 set_additionalSelectionInsets:{3.0, 2.0, 1.0, 5.0}];
    if (_UISolariumEnabled())
    {
      v34 = 0;
    }

    else
    {
      v34 = 2;
    }

    [v33 setPlacement:v34];
    [v33 setAccessibilityIdentifier:QLPDFItemViewControllerBarFormFillingRightButtonAccessibilityIdentifier];
    markupViewController3 = [(QLMarkupItemViewController *)self markupViewController];
    [v33 setForceToNavBar:{objc_msgSend(markupViewController3, "annotationEditingEnabled")}];

    v36 = QLLocalizedString();
    [v33 setTitle:v36];

    [v5 addObject:v33];
  }

  return v5;
}

- (void)_stopFormFilling
{
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  [markupViewController setFormFillingEnabled:0];

  delegate = [(QLMarkupItemViewController *)self delegate];
  [delegate previewItemViewControllerWantsUpdateOverlay:self animated:0];
}

- (id)transitioningView
{
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  transitioningView = [markupViewController transitioningView];

  return transitioningView;
}

- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer
{
  touchCopy = touch;
  v6 = (-[QuickLookContentEditor annotationEditingEnabled](self->_markupViewController, "annotationEditingEnabled") & 1) == 0 && (-[QuickLookContentEditor formFillingEnabled](self->_markupViewController, "formFillingEnabled") & 1) == 0 && (!-[QuickLookContentEditor pencilAlwaysDraws](self->_markupViewController, "pencilAlwaysDraws") || [touchCopy type] != 2);

  return v6;
}

- (BOOL)canPinchToDismiss
{
  scrollView = [(QLMarkupItemViewController *)self scrollView];
  v3 = scrollView;
  if (scrollView)
  {
    [scrollView zoomScale];
    v5 = v4;
    [v3 minimumZoomScale];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)showingSignatureView:(BOOL)view
{
  self->_showingSignatureView = view;
  delegate = [(QLMarkupItemViewController *)self delegate];
  [delegate previewItemViewController:self wantsFullScreen:1];
}

- (BOOL)canEnterFullScreen
{
  markupViewController = self->_markupViewController;
  if (objc_opt_respondsToSelector())
  {
    documentIsLocked = [(QuickLookContentEditor *)self->_markupViewController documentIsLocked];
  }

  else
  {
    documentIsLocked = 0;
  }

  return ([(QuickLookContentEditor *)self->_markupViewController annotationEditingEnabled]& 1) == 0 && !documentIsLocked || self->_showingSignatureView;
}

- (void)setHasChangesToRedo:(BOOL)redo
{
  if (self->_hasChangesToRedo != redo)
  {
    self->_hasChangesToRedo = redo;
    delegate = [(QLMarkupItemViewController *)self delegate];
    [delegate previewItemViewControllerWantsUpdateOverlay:self animated:0];
  }
}

- (void)editDetectedForMarkupViewController:(id)controller shouldEnableMarkup:(BOOL)markup
{
  markupCopy = markup;
  controllerCopy = controller;
  if (markupCopy)
  {
    [(QLMarkupItemViewController *)self shouldLockPreviewForUnsavedEdits:0];
    [(QLMarkupItemViewController *)self enableMarkupMode:1];
  }

  else
  {
    markupViewController = [(QLMarkupItemViewController *)self markupViewController];
    if ([markupViewController annotationEditingEnabled])
    {
    }

    else
    {
      needsToSaveChanges = [(QLMarkupItemViewController *)self needsToSaveChanges];

      if (needsToSaveChanges)
      {
        [(QLMarkupItemViewController *)self shouldLockPreviewForUnsavedEdits:1];
      }
    }
  }
}

- (void)shouldLockPreviewForUnsavedEdits:(BOOL)edits
{
  editsCopy = edits;
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  -[QLMarkupItemViewController togglePeriodicallySaveEdits:](self, "togglePeriodicallySaveEdits:", [markupViewController annotationEditingEnabled] | editsCopy);
}

- (void)prepareForActionSheetPresentation
{
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  [markupViewController resignFirstResponder];
}

- (void)actionSheetDidDismiss
{
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  [markupViewController becomeFirstResponder];
}

- (void)hostSceneWillDeactivate
{
  v3 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v3 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Saving changes and notifying host if needed before scene deactivation. (%@) #AnyItemViewController", &v4, 0xCu);
  }

  [(QLMarkupItemViewController *)self _saveChangesNotifyingHost:1 forceNotifyHost:1];
}

- (void)updateInterfaceAfterSavingEdits
{
  v4.receiver = self;
  v4.super_class = QLMarkupItemViewController;
  [(QLMarkupItemViewController *)&v4 updateInterfaceAfterSavingEdits];
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  [markupViewController becomeFirstResponder];
}

- (void)saveFullscreenStateAndHideChrome
{
  v3 = [NSNumber numberWithBool:self->_isFullScreen];
  savedFullScreenState = self->_savedFullScreenState;
  self->_savedFullScreenState = v3;

  delegate = [(QLMarkupItemViewController *)self delegate];
  [delegate previewItemViewController:self wantsFullScreen:1];
}

- (void)restoreFullscreenState
{
  savedFullScreenState = self->_savedFullScreenState;
  if (savedFullScreenState)
  {
    bOOLValue = [(NSNumber *)savedFullScreenState BOOLValue];
    v5 = self->_savedFullScreenState;
    self->_savedFullScreenState = 0;
  }

  else
  {
    bOOLValue = 0;
  }

  delegate = [(QLMarkupItemViewController *)self delegate];
  [delegate previewItemViewController:self wantsFullScreen:bOOLValue];
}

- (void)controllerWantsToShowShareSheet:(id)sheet
{
  delegate = [(QLMarkupItemViewController *)self delegate];
  [delegate previewItemViewControllerWantsToShowShareSheet:self];
}

- (BOOL)controller:(id)controller shouldOpenLinkAtURL:(id)l
{
  lCopy = l;
  if ([lCopy isSpringboardHandledURL])
  {
    v6 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v6 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = lCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Forwarding URL to client from %@ preview: %@ #AnyItemViewController", &v9, 0x16u);
    }

    delegate = [(QLMarkupItemViewController *)self delegate];
    [delegate previewItemViewController:self wantsToOpenURL:lCopy];
  }

  return 0;
}

- (void)editor:(id)editor contentFrameDidChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  contentViewScrollView = [markupViewController contentViewScrollView];
  [contentViewScrollView frame];
  v14.size.width = 100.0;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.height = 100.0;
  v11 = CGRectEqualToRect(v13, v14);

  if (!v11)
  {

    [(QLMarkupItemViewController *)self setMarkupContentFrame:x, y, width, height];
  }
}

- (void)updateContentFrame
{
  [(QLMarkupItemViewController *)self markupContentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
  if (([markupViewController2 isBannerVisible] & 1) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  traitCollection = [(QLMarkupItemViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    v6 = 0.0;
  }

LABEL_8:

  [(QLMarkupItemViewController *)self setContentFrame:v4, v6, v8, v10];
}

- (void)setMarkupContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_markupContentFrame = &self->_markupContentFrame;
  if (!CGRectEqualToRect(frame, self->_markupContentFrame))
  {
    p_markupContentFrame->origin.x = x;
    p_markupContentFrame->origin.y = y;
    p_markupContentFrame->size.width = width;
    p_markupContentFrame->size.height = height;

    [(QLMarkupItemViewController *)self updateContentFrame];
  }
}

- (BOOL)editorShouldAllowEditingContents:(id)contents
{
  contentsCopy = contents;
  _isPreviewingUnconvertedDocument = [(QLMarkupItemViewController *)self _isPreviewingUnconvertedDocument];
  LOBYTE(self) = [(QLMarkupItemViewController *)self _allowEditingContent:contentsCopy];

  return self & _isPreviewingUnconvertedDocument;
}

- (BOOL)_allowEditingContent:(id)content
{
  contentCopy = content;
  if (contentCopy && !self->_contentsAllowsEditingContents)
  {
    [(QLMarkupItemViewController *)self updateContentsAllowEditingContent];
  }

  appearance = [(QLMarkupItemViewController *)self appearance];
  v6 = -[QLMarkupItemViewController _presentationModeSupportsMarkup:](self, "_presentationModeSupportsMarkup:", [appearance presentationMode]);

  if (objc_opt_respondsToSelector())
  {
    v7 = [contentCopy documentIsLocked] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  if ([(NSNumber *)self->_contentsAllowsEditingContents BOOLValue])
  {
    v8 = v6 & v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)editorDidUnlockDocument:(id)document
{
  delegate = [(QLMarkupItemViewController *)self delegate];
  [delegate previewItemViewControllerWantsUpdateOverlay:self animated:1];
}

- (SYDocumentWorkflowsClient)documentWorkflowsClient
{
  documentWorkflowsClient = self->_documentWorkflowsClient;
  if (!documentWorkflowsClient)
  {
    v4 = objc_alloc_init(SYDocumentWorkflowsClient);
    v5 = self->_documentWorkflowsClient;
    self->_documentWorkflowsClient = v4;

    documentWorkflowsClient = self->_documentWorkflowsClient;
  }

  return documentWorkflowsClient;
}

- (QLOriginalDateFormatProvider)originalDateFormatProvider
{
  originalDateFormatProvider = self->_originalDateFormatProvider;
  if (!originalDateFormatProvider)
  {
    v4 = objc_alloc_init(QLOriginalDateFormatProvider);
    v5 = self->_originalDateFormatProvider;
    self->_originalDateFormatProvider = v4;

    originalDateFormatProvider = self->_originalDateFormatProvider;
  }

  return originalDateFormatProvider;
}

- (NSURL)urlForDocumentWorkflows
{
  context = [(QLMarkupItemViewController *)self context];
  item = [context item];
  saveURL = [item saveURL];

  return saveURL;
}

- (void)_fetchDocumentAttributes
{
  if (_os_feature_enabled_impl())
  {
    context = [(QLMarkupItemViewController *)self context];
    item = [context item];
    saveURL = [item saveURL];

    v6 = _qlsLogHandle;
    if (saveURL)
    {
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v6 = _qlsLogHandle;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        urlForDocumentWorkflows = [(QLMarkupItemViewController *)self urlForDocumentWorkflows];
        *buf = 138412290;
        v24 = urlForDocumentWorkflows;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetching document attributes for URL %@ #ItemViewController", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      documentWorkflowsClient = [(QLMarkupItemViewController *)self documentWorkflowsClient];
      urlForDocumentWorkflows2 = [(QLMarkupItemViewController *)self urlForDocumentWorkflows];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10000F728;
      v21[3] = &unk_100024DF8;
      objc_copyWeak(&v22, buf);
      [documentWorkflowsClient hasOriginalDocumentForFileAtURL:urlForDocumentWorkflows2 completion:v21];

      documentWorkflowsClient2 = [(QLMarkupItemViewController *)self documentWorkflowsClient];
      urlForDocumentWorkflows3 = [(QLMarkupItemViewController *)self urlForDocumentWorkflows];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000F950;
      v19[3] = &unk_100024E20;
      objc_copyWeak(&v20, buf);
      [documentWorkflowsClient2 hasLastModifiedDocumentForFileAtURL:urlForDocumentWorkflows3 completion:v19];

      v13 = dispatch_get_global_queue(0, 0);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000FB78;
      v17[3] = &unk_100024E70;
      v17[4] = self;
      objc_copyWeak(&v18, buf);
      dispatch_async(v13, v17);

      objc_destroyWeak(&v18);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }

    else
    {
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v6 = _qlsLogHandle;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v14 = v6;
        context2 = [(QLMarkupItemViewController *)self context];
        item2 = [context2 item];
        *buf = 138412290;
        v24 = item2;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Can not fetch document attributes for a nil URL from item %@. Returning early #ItemViewController", buf, 0xCu);
      }
    }
  }
}

- (id)configurationForBanner
{
  if (([(QuickLookContentEditor *)self->_markupViewController annotationEditingEnabled]& 1) != 0 || [(QuickLookContentEditor *)self->_markupViewController formFillingEnabled])
  {
    v3 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v3 = _qlsLogHandle;
    }

    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    LOWORD(v22) = 0;
    v4 = "Markup or form filling is enabled, do not show any banner #ItemViewController";
    v5 = v3;
    v6 = 2;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, v4, &v22, v6);
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  appearance = [(QLMarkupItemViewController *)self appearance];

  if (!appearance)
  {
    v11 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v11 = _qlsLogHandle;
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v22 = 138412290;
    selfCopy = self;
    v4 = "No appearance yet on %@, do not show a banner #ItemViewController";
    v5 = v11;
    v6 = 12;
    goto LABEL_7;
  }

  appearance2 = [(QLMarkupItemViewController *)self appearance];
  if ([appearance2 presentationMode] == 2)
  {
  }

  else
  {
    appearance3 = [(QLMarkupItemViewController *)self appearance];
    presentationMode = [appearance3 presentationMode];

    if (presentationMode != 1)
    {
      v19 = _qlsLogHandle;
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v19 = _qlsLogHandle;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        appearance4 = [(QLMarkupItemViewController *)self appearance];
        v22 = 134217984;
        selfCopy = [appearance4 presentationMode];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Appearance is not modal or push (got %lu instead), do not show a banner #ItemViewController", &v22, 0xCu);
      }

      goto LABEL_8;
    }
  }

  _showLatestBannerConfiguration = [(QLMarkupItemViewController *)self _showLatestBannerConfiguration];
  v15 = _showLatestBannerConfiguration;
  if (_showLatestBannerConfiguration)
  {
    v7 = _showLatestBannerConfiguration;
  }

  else
  {
    _formFillingBannerConfiguration = [(QLMarkupItemViewController *)self _formFillingBannerConfiguration];
    v17 = _formFillingBannerConfiguration;
    if (_formFillingBannerConfiguration)
    {
      _showOriginalBannerConfiguration = _formFillingBannerConfiguration;
    }

    else
    {
      _showOriginalBannerConfiguration = [(QLMarkupItemViewController *)self _showOriginalBannerConfiguration];
    }

    v7 = _showOriginalBannerConfiguration;
  }

LABEL_9:

  return v7;
}

- (id)_showLatestBannerConfiguration
{
  latestDocumentAttributes = [(QLMarkupItemViewController *)self latestDocumentAttributes];
  if (latestDocumentAttributes)
  {
    v4 = [UIImage systemImageNamed:@"clock.arrow.circlepath"];
    v24 = QLLocalizedString();
    modifiedDate = [latestDocumentAttributes modifiedDate];
    v6 = objc_alloc_init(NSDateFormatter);
    [v6 setDateStyle:1];
    [v6 setTimeStyle:0];
    [v6 setDoesRelativeDateFormatting:1];
    v26 = [v6 stringFromDate:modifiedDate];
    v7 = objc_opt_new();
    [v7 setDateStyle:0];
    [v7 setTimeStyle:1];
    [v7 setFormattingContext:5];
    v25 = [v7 stringFromDate:modifiedDate];
    [v7 setLocalizedDateFormatFromTemplate:@"j"];
    v8 = [v7 stringFromDate:modifiedDate];
    v9 = +[NSCharacterSet decimalDigitCharacterSet];
    invertedSet = [v9 invertedSet];
    v23 = v8;
    v11 = [v8 componentsSeparatedByCharactersInSet:invertedSet];
    v12 = [v11 componentsJoinedByString:&stru_1000250E0];

    v13 = objc_opt_new();
    v14 = [v13 numberFromString:v12];
    integerValue = [v14 integerValue];

    if (integerValue == 1)
    {
      QLLocalizedStringWithDefaultValue();
    }

    else
    {
      QLLocalizedString();
    }
    v17 = ;
    v18 = [NSString localizedStringWithFormat:v17, v26, v25];

    objc_initWeak(location, self);
    v19 = QLLocalizedString();
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100010514;
    v29[3] = &unk_100024B18;
    objc_copyWeak(&v30, location);
    v20 = [UIAction actionWithTitle:v19 image:0 identifier:0 handler:v29];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100010724;
    v27[3] = &unk_100024B18;
    objc_copyWeak(&v28, location);
    v21 = [UIAction actionWithTitle:&stru_1000250E0 image:0 identifier:0 handler:v27];
    v16 = [QuickLookContentEditorBannerConfiguration configurationWithImage:v4 title:v24 subtitle:v18 primaryAction:v20 dismissAction:v21];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_showOriginalBannerConfiguration
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  originalDocumentAttributes = [(QLMarkupItemViewController *)self originalDocumentAttributes];
  if (originalDocumentAttributes)
  {
    v4 = QLLocalizedString();
    receivedDate = [originalDocumentAttributes receivedDate];
    originalDateFormatProvider = [(QLMarkupItemViewController *)self originalDateFormatProvider];
    sender = [originalDocumentAttributes sender];
    preferredFormattedName = [sender preferredFormattedName];
    v9 = +[NSDate now];
    v10 = [originalDateFormatProvider originalStringWithSender:preferredFormattedName date:receivedDate now:v9];

    objc_initWeak(&location, self);
    v11 = QLLocalizedString();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100010A3C;
    v18[3] = &unk_100024B18;
    objc_copyWeak(&v19, &location);
    v12 = [UIAction actionWithTitle:v11 image:0 identifier:0 handler:v18];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100010C4C;
    v16[3] = &unk_100024B18;
    objc_copyWeak(&v17, &location);
    v13 = [UIAction actionWithTitle:&stru_1000250E0 image:0 identifier:0 handler:v16];
    v14 = [QuickLookContentEditorBannerConfiguration configurationWithImage:0 title:v4 subtitle:v10 primaryAction:v12 dismissAction:v13];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_formFillingBannerConfiguration
{
  if ([(QLMarkupItemViewController *)self didDismissFormFillingBanner])
  {
    v3 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v3 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "User manually dismissed the form filling banner, do not show it #ItemViewController", buf, 2u);
    }
  }

  else
  {
    if (((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()) && [(QLMarkupItemViewController *)self formDetectedInDocument])
    {
      v4 = ![(QLMarkupItemViewController *)self autofillDetected];
    }

    else
    {
      LOBYTE(v4) = 1;
    }

    markupViewController = [(QLMarkupItemViewController *)self markupViewController];
    formFillingEnabled = [markupViewController formFillingEnabled];

    if ([(QLMarkupItemViewController *)self shouldAllowEditingContents]&& !(v4 & 1 | ![(QLMarkupItemViewController *)self canOfferFormFillingForOriginalDocument]| formFillingEnabled & 1) && [(QLMarkupItemViewController *)self canShowFormFillingBanner])
    {
      v7 = [UIImage systemImageNamed:@"rectangle.and.pencil.and.ellipsis"];
      [(QLMarkupItemViewController *)self _isPreviewingUnconvertedDocument];
      v9 = QLLocalizedString();
      objc_initWeak(buf, self);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100011084;
      v23[3] = &unk_100024E48;
      objc_copyWeak(&v24, buf);
      v10 = objc_retainBlock(v23);
      v11 = QLLocalizedString();
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10001128C;
      v20[3] = &unk_100024EC0;
      objc_copyWeak(&v22, buf);
      v12 = v10;
      v21 = v12;
      v13 = [UIAction actionWithTitle:v11 image:0 identifier:0 handler:v20];

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10001131C;
      v17[3] = &unk_100024EC0;
      objc_copyWeak(&v19, buf);
      v14 = v12;
      v18 = v14;
      v15 = [UIAction actionWithTitle:&stru_1000250E0 image:0 identifier:0 handler:v17];
      v16 = [QuickLookContentEditorBannerConfiguration configurationWithImage:v7 title:v9 subtitle:0 primaryAction:v13 dismissAction:v15];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&v22);

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);

      goto LABEL_16;
    }
  }

  v16 = 0;
LABEL_16:

  return v16;
}

- (void)updateBannerVisibility
{
  if ([(QLMarkupItemViewController *)self didReceiveFormFillingCallback]|| [(QLMarkupItemViewController *)self didDismissFormFillingBanner])
  {

    [(QLMarkupItemViewController *)self _updateBannerVisibility];
  }

  else
  {
    v3 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011450;
    block[3] = &unk_100024A00;
    block[4] = self;
    dispatch_after(v3, &_dispatch_main_q, block);
  }
}

- (void)_updateBannerVisibility
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  configurationForBanner = [(QLMarkupItemViewController *)self configurationForBanner];
  v4 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v4 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = configurationForBanner;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Updating banner with configuration: %@ #ItemViewController", &v9, 0xCu);
  }

  markupViewController = [(QLMarkupItemViewController *)self markupViewController];
  if (configurationForBanner)
  {
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
      [markupViewController2 showBannerWithConfiguration:configurationForBanner];
LABEL_10:
    }
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      markupViewController2 = [(QLMarkupItemViewController *)self markupViewController];
      [markupViewController2 hideBanner];
      goto LABEL_10;
    }
  }

  [(QLMarkupItemViewController *)self updateContentFrame];
}

- (CGRect)markupContentFrame
{
  x = self->_markupContentFrame.origin.x;
  y = self->_markupContentFrame.origin.y;
  width = self->_markupContentFrame.size.width;
  height = self->_markupContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end