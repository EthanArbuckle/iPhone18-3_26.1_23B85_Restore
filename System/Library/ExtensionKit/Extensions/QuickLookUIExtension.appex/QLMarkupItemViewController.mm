@interface QLMarkupItemViewController
- (BOOL)_allowEditingContent:(id)a3;
- (BOOL)_isPreviewingUnconvertedDocument;
- (BOOL)canEnterFullScreen;
- (BOOL)canPinchToDismiss;
- (BOOL)canShowMarkupButton;
- (BOOL)controller:(id)a3 shouldOpenLinkAtURL:(id)a4;
- (BOOL)editorShouldAllowEditingContents:(id)a3;
- (BOOL)shouldAcceptTouch:(id)a3 ofGestureRecognizer:(id)a4;
- (BOOL)shouldAllowEditingContents;
- (CGRect)markupContentFrame;
- (NSURL)urlForDocumentWorkflows;
- (QLOriginalDateFormatProvider)originalDateFormatProvider;
- (SYDocumentWorkflowsClient)documentWorkflowsClient;
- (id)_formFillingBannerConfiguration;
- (id)_showLatestBannerConfiguration;
- (id)_showOriginalBannerConfiguration;
- (id)configurationForBanner;
- (id)toolbarButtonsForTraitCollection:(id)a3;
- (id)transitioningView;
- (void)_fetchDocumentAttributes;
- (void)_notifyHostWithEditedCopy:(id)a3 hostCompletionHandler:(id)a4;
- (void)_saveChangesNotifyingHost:(BOOL)a3 forceNotifyHost:(BOOL)a4 completionHandler:(id)a5;
- (void)_saveChangesNotifyingHostOnEditsQueue:(BOOL)a3 forceNotifyHost:(BOOL)a4 completionHandler:(id)a5;
- (void)_saveChangesWithEditedCopy:(id)a3 notifyHost:(BOOL)a4 completionHandler:(id)a5;
- (void)_setupPresentationMode:(unint64_t)a3;
- (void)_stopFormFilling;
- (void)_updateBannerVisibility;
- (void)_updatePencilSupportForPresentationModeIfNeeded:(unint64_t)a3;
- (void)_updatePreferredContentSizeWithData:(id)a3;
- (void)_updatePreferredContentSizeWithURL:(id)a3;
- (void)actionSheetDidDismiss;
- (void)buttonPressedWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)controllerWantsToShowShareSheet:(id)a3;
- (void)editDetectedForMarkupViewController:(id)a3 shouldEnableMarkup:(BOOL)a4;
- (void)editor:(id)a3 contentFrameDidChange:(CGRect)a4;
- (void)editorDidUnlockDocument:(id)a3;
- (void)hostSceneWillDeactivate;
- (void)hostViewControllerBackgroundColorChanged:(id)a3;
- (void)loadEditorWithData:(id)a3 placeholderImage:(id)a4 completionHandler:(id)a5;
- (void)loadEditorWithURL:(id)a3 placeholderImage:(id)a4 completionHandler:(id)a5;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)performFirstTimeAppearanceActions:(unint64_t)a3;
- (void)prepareForActionSheetPresentation;
- (void)restoreFullscreenState;
- (void)saveFullscreenStateAndHideChrome;
- (void)savePreviewEditedCopyWithCompletionHandler:(id)a3;
- (void)setHasChangesToRedo:(BOOL)a3;
- (void)setMarkupContentFrame:(CGRect)a3;
- (void)shouldLockPreviewForUnsavedEdits:(BOOL)a3;
- (void)showingSignatureView:(BOOL)a3;
- (void)togglePeriodicallySaveEdits:(BOOL)a3;
- (void)updateBannerVisibility;
- (void)updateContentFrame;
- (void)updateContentsAllowEditingContent;
- (void)updateInterfaceAfterSavingEdits;
- (void)updateMarkupBackgroundColor;
- (void)viewDidLoad;
@end

@implementation QLMarkupItemViewController

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
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

  v14 = [(QuickLookContentEditor *)self->_markupViewController view];
  [v14 setOpaque:0];

  [(QuickLookContentEditor *)self->_markupViewController setDelegate:self];
  contentsAllowsEditingContents = self->_contentsAllowsEditingContents;
  self->_contentsAllowsEditingContents = 0;

  [(QuickLookContentEditor *)self->_markupViewController setShapeDetectionEnabled:1];
  [(QuickLookContentEditor *)self->_markupViewController setToolbarHidden:1];
  [(QuickLookContentEditor *)self->_markupViewController setPencilAlwaysDraws:[(QLMarkupItemViewController *)self shouldAllowEditingContents]];
  [(QLMarkupItemViewController *)self setFormDetectedInDocument:0];
  [(QLMarkupItemViewController *)self setAutofillDetected:0];
  v16 = [(QLMarkupItemViewController *)self scrollView];
  [v16 setContentOffset:{0.0, 0.0}];

  self->_lastSavedEditNumber = 0;
  [(QLMarkupItemViewController *)self addChildViewController:self->_markupViewController];
  v17 = [(QLMarkupItemViewController *)self view];
  v18 = [(QuickLookContentEditor *)self->_markupViewController view];
  [v17 addSubview:v18];

  [(QuickLookContentEditor *)self->_markupViewController didMoveToParentViewController:self];
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_10000B748;
  v30 = &unk_100024C80;
  v31 = self;
  v19 = v8;
  v32 = v19;
  v20 = objc_retainBlock(&v27);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(QLMarkupItemViewController *)self _updatePreferredContentSizeWithData:v7, v27, v28, v29, v30, v31];
    [(QLMarkupItemViewController *)self loadEditorWithData:v7 placeholderImage:0 completionHandler:v20];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v7;
        v22 = [v21 imageURL];
        [(QLMarkupItemViewController *)self _updatePreferredContentSizeWithURL:v22];

        v23 = [v21 imageURL];

        [(QLMarkupItemViewController *)self loadEditorWithURL:v23 placeholderImage:0 completionHandler:v20];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        v24 = v7;
        v25 = [v24 imageData];
        [(QLMarkupItemViewController *)self _updatePreferredContentSizeWithData:v25];

        v23 = [v24 imageData];
        v26 = [v24 image];

        [(QLMarkupItemViewController *)self loadEditorWithData:v23 placeholderImage:v26 completionHandler:v20];
      }

      goto LABEL_12;
    }

    [(QLMarkupItemViewController *)self _updatePreferredContentSizeWithURL:v7, v27, v28, v29, v30, v31];
    [(QLMarkupItemViewController *)self loadEditorWithURL:v7 placeholderImage:0 completionHandler:v20];
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

- (void)_updatePreferredContentSizeWithData:(id)a3
{
  v8 = a3;
  if (self->_markupViewController)
  {
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      markupViewController = self->_markupViewController;
      [objc_opt_class() suggestedContentSizeForData:v8];
      if (v6 != CGSizeZero.width || v5 != CGSizeZero.height)
      {
        [(QLMarkupItemViewController *)self setPreferredContentSize:?];
      }
    }
  }
}

- (void)_updatePreferredContentSizeWithURL:(id)a3
{
  v8 = a3;
  if (self->_markupViewController)
  {
    objc_opt_class();
    if (objc_opt_respondsToSelector())
    {
      markupViewController = self->_markupViewController;
      [objc_opt_class() suggestedContentSizeForURL:v8];
      if (v6 != CGSizeZero.width || v5 != CGSizeZero.height)
      {
        [(QLMarkupItemViewController *)self setPreferredContentSize:?];
      }
    }
  }
}

- (void)loadEditorWithData:(id)a3 placeholderImage:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(QLMarkupItemViewController *)self markupViewController];
  v12 = objc_opt_respondsToSelector();

  v13 = [(QLMarkupItemViewController *)self markupViewController];
  v15 = v13;
  if (v12)
  {
    [v13 loadWithData:v10 archivedModelData:0 placeholderImage:v9 completionHandler:v8];

    v14 = v15;
  }

  else
  {
    [v13 setData:v10 withArchivedModelData:0 placeholderImage:v9];

    (*(v8 + 2))(v8, 0);
    v14 = v8;
  }
}

- (void)loadEditorWithURL:(id)a3 placeholderImage:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(QLMarkupItemViewController *)self markupViewController];
  v12 = objc_opt_respondsToSelector();

  v13 = [(QLMarkupItemViewController *)self markupViewController];
  v15 = v13;
  if (v12)
  {
    [v13 loadWithURL:v10 archivedModelData:0 placeholderImage:v9 completionHandler:v8];

    v14 = v15;
  }

  else
  {
    [v13 setFileURL:v10 withArchivedModelData:0 placeholderImage:v9];

    (*(v8 + 2))(v8, 0);
    v14 = v8;
  }
}

- (void)hostViewControllerBackgroundColorChanged:(id)a3
{
  objc_storeStrong(&self->_hostViewControllerBackgroundColor, a3);

  [(QLMarkupItemViewController *)self updateMarkupBackgroundColor];
}

- (void)performFirstTimeAppearanceActions:(unint64_t)a3
{
  if ((a3 & 4) != 0)
  {
    [(QLMarkupItemViewController *)self enableMarkupMode:1];
  }
}

- (void)_setupPresentationMode:(unint64_t)a3
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
    v7 = [(QLMarkupItemViewController *)self markupViewController];
    v14 = 134217984;
    v15 = [v7 presentationMode];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "_setupPresentationMode: %lu #AnyItemViewController", &v14, 0xCu);
  }

  if (a3 - 1 <= 1)
  {
    v8 = [(QLMarkupItemViewController *)self markupViewController];
    v9 = v8;
    v10 = 0;
LABEL_9:
    [v8 setPresentationMode:v10];
LABEL_10:

    return;
  }

  if (a3 - 3 <= 2)
  {
    v8 = [(QLMarkupItemViewController *)self markupViewController];
    v9 = v8;
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
    v9 = [(QLMarkupItemViewController *)self markupViewController];
    v13 = [v9 presentationMode];
    v14 = 134217984;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Setting unsupported presentation mode: %lu #AnyItemViewController", &v14, 0xCu);

    goto LABEL_10;
  }
}

- (void)_saveChangesNotifyingHost:(BOOL)a3 forceNotifyHost:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [(QLMarkupItemViewController *)self saveEditsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C4D8;
  block[3] = &unk_100024D30;
  v13 = a3;
  v14 = a4;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(v9, block);
}

- (void)_saveChangesNotifyingHostOnEditsQueue:(BOOL)a3 forceNotifyHost:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(QLMarkupItemViewController *)self saveEditsQueue];
  dispatch_assert_queue_V2(v9);

  if ([(QLMarkupItemViewController *)self needsToSaveChanges])
  {
    if ([(QLMarkupItemViewController *)self shouldAllowEditingContents]&& self->_markupViewController)
    {
      objc_initWeak(location, self);
      v10 = [(QLMarkupItemViewController *)self markupViewController];
      v11 = [v10 outputContentType];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10000C748;
      v16[3] = &unk_100024D80;
      objc_copyWeak(&v18, location);
      v17 = v8;
      v19 = a3;
      [(QLMarkupItemViewController *)self editedCopyToSaveChangesWithOutputType:v11 completionHandler:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(location);
      goto LABEL_13;
    }
  }

  else if (v5)
  {
    v12 = [(QLMarkupItemViewController *)self context];
    v13 = [v12 item];
    v14 = [v13 editedCopy];
    [(QLMarkupItemViewController *)self _notifyHostWithEditedCopy:v14 hostCompletionHandler:v8];

    goto LABEL_13;
  }

  if (v8)
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

    v8[2](v8);
  }

LABEL_13:
}

- (void)_saveChangesWithEditedCopy:(id)a3 notifyHost:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 url];
  v11 = [(QLMarkupItemViewController *)self writeOptionsForSaving];
  if (v11)
  {
    [NSMutableDictionary dictionaryWithDictionary:v11];
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
    [v8 bumpVersion];
    [v8 markAsPurgeable];
    if (v6)
    {
      [(QLMarkupItemViewController *)self _notifyHostWithEditedCopy:v8 hostCompletionHandler:v9];
    }

    v16 = [(QLMarkupItemViewController *)self delegate];
    [v16 previewItemViewController:self hasUnsavedEdits:0];

    self->_lastSavedEditNumber = [(QLMarkupItemViewController *)self currentEditNumber];
    if (!v9)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (!v6)
    {
      v9[2](v9);
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

  LOBYTE(v6) = 0;
  if (v9)
  {
    goto LABEL_14;
  }

LABEL_16:
}

- (void)_notifyHostWithEditedCopy:(id)a3 hostCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v8 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Item view controller: %@ is notifying host with latest Markup changes: %@. #ItemViewController", &v10, 0x16u);
  }

  v9 = [(QLMarkupItemViewController *)self delegate];
  [v9 previewItemViewControllerDidEditCopyOfPreviewItem:self editedCopy:v6 completionHandler:v7];
}

- (BOOL)_isPreviewingUnconvertedDocument
{
  v3 = [(QLMarkupItemViewController *)self markupViewController];
  v4 = [v3 outputContentType];
  v5 = [v4 preferredFilenameExtension];

  v6 = [(QLMarkupItemViewController *)self context];
  v7 = [v6 contentType];

  if (v7)
  {
    v8 = [(QLMarkupItemViewController *)self context];
    v9 = [v8 contentType];
    v10 = [UTType typeWithIdentifier:v9];

    v11 = [v10 preferredFilenameExtension];
    v12 = [v5 caseInsensitiveCompare:v11] == 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)updateContentsAllowEditingContent
{
  v3 = [(QLMarkupItemViewController *)self context];
  v4 = [v3 canBeEdited];

  v5 = [(QLMarkupItemViewController *)self context];
  [v5 editedFileBehavior];

  v6 = [(QLMarkupItemViewController *)self context];
  v7 = [v6 item];
  v8 = [v7 editingMode];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v4;
  }

  if (![(QLMarkupItemViewController *)self _isPreviewingUnconvertedDocument])
  {
    v10 = [(QLMarkupItemViewController *)self context];
    if (([v10 editedFileBehavior] & 2) != 0)
    {
      v13 = 1;
    }

    else
    {
      v11 = [(QLMarkupItemViewController *)self context];
      v12 = [v11 item];
      if ([v12 editingMode] == 2)
      {
        v13 = 1;
      }

      else
      {
        v14 = [(QLMarkupItemViewController *)self context];
        v15 = [v14 item];
        v16 = [v15 editingMode];
        if (v16 == QLPreviewItemEditingModeCreateCopyAndDisplayDismissActions)
        {
          v13 = 1;
        }

        else
        {
          v17 = [(QLMarkupItemViewController *)self context];
          v18 = [v17 item];
          v13 = [v18 canHandleEditedCopy];
        }
      }
    }

    v9 = v9 & v13;
  }

  v19 = [NSNumber numberWithBool:v9];
  contentsAllowsEditingContents = self->_contentsAllowsEditingContents;
  self->_contentsAllowsEditingContents = v19;

  _objc_release_x1();
}

- (BOOL)shouldAllowEditingContents
{
  v2 = self;
  v3 = [(QLMarkupItemViewController *)self markupViewController];
  LOBYTE(v2) = [(QLMarkupItemViewController *)v2 _allowEditingContent:v3];

  return v2;
}

- (void)savePreviewEditedCopyWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(QLMarkupItemViewController *)self shouldAllowEditingContents])
  {
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000D1C8;
    v5[3] = &unk_100024DA8;
    v6 = v4;
    objc_copyWeak(&v7, &location);
    [(QLMarkupItemViewController *)self _saveChangesNotifyingHost:1 forceNotifyHost:0 completionHandler:v5];
    objc_destroyWeak(&v7);

    objc_destroyWeak(&location);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
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
  v6 = [(QLMarkupItemViewController *)self traitCollection];
  v8 = [(UIColor *)v5 resolvedColorWithTraitCollection:v6];

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

- (void)togglePeriodicallySaveEdits:(BOOL)a3
{
  saveEditsPeriodicallyTimer = self->_saveEditsPeriodicallyTimer;
  if (a3)
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

- (void)_updatePencilSupportForPresentationModeIfNeeded:(unint64_t)a3
{
  v4 = [(QLMarkupItemViewController *)self shouldAllowEditingContents];
  v5 = [(QLMarkupItemViewController *)self markupViewController];
  [v5 setPencilAlwaysDraws:v4];
}

- (void)buttonPressedWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(QLMarkupItemViewController *)self isSavingEdits])
  {
    if ([(QLMarkupItemViewController *)v6 isEqualToString:QLDoneButtonIdentifier])
    {
      v9 = self;
      v10 = 0;
LABEL_14:
      [(QLMarkupItemViewController *)v9 enableMarkupMode:v10];
      goto LABEL_15;
    }

    if ([(QLMarkupItemViewController *)v6 isEqualToString:@"QLInlineMarkup"])
    {
      v11 = [(QLMarkupItemViewController *)self markupViewController];
      v12 = [v11 formFillingEnabled];

      if (v12)
      {
        [(QLMarkupItemViewController *)self _stopFormFilling];
      }

      if ([(QuickLookContentEditor *)self->_markupViewController annotationEditingEnabled])
      {
        [(QLMarkupItemViewController *)self _saveChangesNotifyingHost:1 forceNotifyHost:1];
      }

      v10 = [(QuickLookContentEditor *)self->_markupViewController annotationEditingEnabled]^ 1;
      v9 = self;
      goto LABEL_14;
    }

    if ([(QLMarkupItemViewController *)v6 isEqualToString:QLFormFillingButtonIdentifier])
    {
      v14 = [(QLMarkupItemViewController *)self markupViewController];
      v15 = [v14 formFillingEnabled];

      if (v15)
      {
        [(QLMarkupItemViewController *)self _stopFormFilling];
      }

      else
      {
        [(QLMarkupItemViewController *)self startFormFilling];
      }

      goto LABEL_15;
    }

    if ([(QLMarkupItemViewController *)v6 isEqualToString:@"QLMarkupUndo"])
    {
      v16 = [(QuickLookContentEditor *)self->_markupViewController undoManager];
      [v16 undo];
    }

    else
    {
      if (![(QLMarkupItemViewController *)v6 isEqualToString:@"QLMarkupRedo"])
      {
        if ([(QLMarkupItemViewController *)v6 isEqualToString:@"QLMarkupUndoAll"])
        {
          [(QuickLookContentEditor *)self->_markupViewController revert];
        }

        else if (![(QLMarkupItemViewController *)v6 isEqualToString:QLToolbarButtonOptionCancelIdentifier])
        {
          goto LABEL_15;
        }

LABEL_31:
        v17 = [(QLMarkupItemViewController *)self markupViewController];
        [v17 becomeFirstResponder];

        goto LABEL_15;
      }

      v16 = [(QuickLookContentEditor *)self->_markupViewController undoManager];
      [v16 redo];
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
    v19 = v6;
    v20 = 2112;
    v21 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Ignored button pressed with identifier: %@ because changes are being saved. %@ #ItemViewController", &v18, 0x16u);
  }

LABEL_15:
  if (v7)
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
      v19 = self;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Item view controller: %@ is executing completion handler for button pressed with identifier: %@. #ItemViewController", &v18, 0x16u);
    }

    v7[2](v7);
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

- (id)toolbarButtonsForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([(QLMarkupItemViewController *)self canShowMarkupButton])
  {
    v6 = [[QLToolbarButton alloc] initWithIdentifier:@"QLInlineMarkup"];
    v7 = [(QuickLookContentEditor *)self->_markupViewController annotationEditingEnabled]&& ![(QLMarkupItemViewController *)self shouldDisplayAlternateEditButton];
    [v6 setSymbolImageName:@"pencil.tip.crop.circle"];
    [v6 setSelected:v7];
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
    v10 = [v4 horizontalSizeClass] != 1 && objc_msgSend(v4, "userInterfaceIdiom") != 0;
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
      v19 = [v14 title];
      [v16 setTitle:v19];

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
      v25 = [v20 title];
      [v22 setTitle:v25];

      v39[0] = v6;
      v39[1] = v22;
      v39[2] = v16;
      v26 = [NSArray arrayWithObjects:v39 count:3];
      [v5 addObjectsFromArray:v26];
    }
  }

  v27 = [(QLMarkupItemViewController *)self markupViewController];
  v28 = [v27 formFillingEnabled];

  v29 = [(QLMarkupItemViewController *)self markupViewController];
  v30 = [v29 annotationEditingEnabled];

  v31 = [(QLMarkupItemViewController *)self canOfferFormFillingForOriginalDocument];
  if (v31)
  {
    v31 = [(QLMarkupItemViewController *)self formDetectedInDocument];
  }

  if ((((v30 | v28) & 1) != 0 || v31) && [(QLMarkupItemViewController *)self shouldAllowEditingContents])
  {
    v32 = [QLToolbarButton alloc];
    v33 = [v32 initWithIdentifier:QLFormFillingButtonIdentifier];
    [v33 setSymbolImageName:@"rectangle.and.pencil.and.ellipsis"];
    [v33 setSelected:v28];
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
    v35 = [(QLMarkupItemViewController *)self markupViewController];
    [v33 setForceToNavBar:{objc_msgSend(v35, "annotationEditingEnabled")}];

    v36 = QLLocalizedString();
    [v33 setTitle:v36];

    [v5 addObject:v33];
  }

  return v5;
}

- (void)_stopFormFilling
{
  v3 = [(QLMarkupItemViewController *)self markupViewController];
  [v3 setFormFillingEnabled:0];

  v4 = [(QLMarkupItemViewController *)self delegate];
  [v4 previewItemViewControllerWantsUpdateOverlay:self animated:0];
}

- (id)transitioningView
{
  v2 = [(QLMarkupItemViewController *)self markupViewController];
  v3 = [v2 transitioningView];

  return v3;
}

- (BOOL)shouldAcceptTouch:(id)a3 ofGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = (-[QuickLookContentEditor annotationEditingEnabled](self->_markupViewController, "annotationEditingEnabled") & 1) == 0 && (-[QuickLookContentEditor formFillingEnabled](self->_markupViewController, "formFillingEnabled") & 1) == 0 && (!-[QuickLookContentEditor pencilAlwaysDraws](self->_markupViewController, "pencilAlwaysDraws") || [v5 type] != 2);

  return v6;
}

- (BOOL)canPinchToDismiss
{
  v2 = [(QLMarkupItemViewController *)self scrollView];
  v3 = v2;
  if (v2)
  {
    [v2 zoomScale];
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

- (void)showingSignatureView:(BOOL)a3
{
  self->_showingSignatureView = a3;
  v4 = [(QLMarkupItemViewController *)self delegate];
  [v4 previewItemViewController:self wantsFullScreen:1];
}

- (BOOL)canEnterFullScreen
{
  markupViewController = self->_markupViewController;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(QuickLookContentEditor *)self->_markupViewController documentIsLocked];
  }

  else
  {
    v4 = 0;
  }

  return ([(QuickLookContentEditor *)self->_markupViewController annotationEditingEnabled]& 1) == 0 && !v4 || self->_showingSignatureView;
}

- (void)setHasChangesToRedo:(BOOL)a3
{
  if (self->_hasChangesToRedo != a3)
  {
    self->_hasChangesToRedo = a3;
    v5 = [(QLMarkupItemViewController *)self delegate];
    [v5 previewItemViewControllerWantsUpdateOverlay:self animated:0];
  }
}

- (void)editDetectedForMarkupViewController:(id)a3 shouldEnableMarkup:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (v4)
  {
    [(QLMarkupItemViewController *)self shouldLockPreviewForUnsavedEdits:0];
    [(QLMarkupItemViewController *)self enableMarkupMode:1];
  }

  else
  {
    v6 = [(QLMarkupItemViewController *)self markupViewController];
    if ([v6 annotationEditingEnabled])
    {
    }

    else
    {
      v7 = [(QLMarkupItemViewController *)self needsToSaveChanges];

      if (v7)
      {
        [(QLMarkupItemViewController *)self shouldLockPreviewForUnsavedEdits:1];
      }
    }
  }
}

- (void)shouldLockPreviewForUnsavedEdits:(BOOL)a3
{
  v3 = a3;
  v5 = [(QLMarkupItemViewController *)self markupViewController];
  -[QLMarkupItemViewController togglePeriodicallySaveEdits:](self, "togglePeriodicallySaveEdits:", [v5 annotationEditingEnabled] | v3);
}

- (void)prepareForActionSheetPresentation
{
  v2 = [(QLMarkupItemViewController *)self markupViewController];
  [v2 resignFirstResponder];
}

- (void)actionSheetDidDismiss
{
  v2 = [(QLMarkupItemViewController *)self markupViewController];
  [v2 becomeFirstResponder];
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
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Saving changes and notifying host if needed before scene deactivation. (%@) #AnyItemViewController", &v4, 0xCu);
  }

  [(QLMarkupItemViewController *)self _saveChangesNotifyingHost:1 forceNotifyHost:1];
}

- (void)updateInterfaceAfterSavingEdits
{
  v4.receiver = self;
  v4.super_class = QLMarkupItemViewController;
  [(QLMarkupItemViewController *)&v4 updateInterfaceAfterSavingEdits];
  v3 = [(QLMarkupItemViewController *)self markupViewController];
  [v3 becomeFirstResponder];
}

- (void)saveFullscreenStateAndHideChrome
{
  v3 = [NSNumber numberWithBool:self->_isFullScreen];
  savedFullScreenState = self->_savedFullScreenState;
  self->_savedFullScreenState = v3;

  v5 = [(QLMarkupItemViewController *)self delegate];
  [v5 previewItemViewController:self wantsFullScreen:1];
}

- (void)restoreFullscreenState
{
  savedFullScreenState = self->_savedFullScreenState;
  if (savedFullScreenState)
  {
    v4 = [(NSNumber *)savedFullScreenState BOOLValue];
    v5 = self->_savedFullScreenState;
    self->_savedFullScreenState = 0;
  }

  else
  {
    v4 = 0;
  }

  v6 = [(QLMarkupItemViewController *)self delegate];
  [v6 previewItemViewController:self wantsFullScreen:v4];
}

- (void)controllerWantsToShowShareSheet:(id)a3
{
  v4 = [(QLMarkupItemViewController *)self delegate];
  [v4 previewItemViewControllerWantsToShowShareSheet:self];
}

- (BOOL)controller:(id)a3 shouldOpenLinkAtURL:(id)a4
{
  v5 = a4;
  if ([v5 isSpringboardHandledURL])
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
      v10 = self;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Forwarding URL to client from %@ preview: %@ #AnyItemViewController", &v9, 0x16u);
    }

    v7 = [(QLMarkupItemViewController *)self delegate];
    [v7 previewItemViewController:self wantsToOpenURL:v5];
  }

  return 0;
}

- (void)editor:(id)a3 contentFrameDidChange:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(QLMarkupItemViewController *)self markupViewController];
  v10 = [v9 contentViewScrollView];
  [v10 frame];
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
  v11 = [(QLMarkupItemViewController *)self markupViewController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = [(QLMarkupItemViewController *)self markupViewController];
  if (([v12 isBannerVisible] & 1) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  v13 = [(QLMarkupItemViewController *)self traitCollection];
  v14 = [v13 horizontalSizeClass];

  if (v14 == 1)
  {
    v6 = 0.0;
  }

LABEL_8:

  [(QLMarkupItemViewController *)self setContentFrame:v4, v6, v8, v10];
}

- (void)setMarkupContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_markupContentFrame = &self->_markupContentFrame;
  if (!CGRectEqualToRect(a3, self->_markupContentFrame))
  {
    p_markupContentFrame->origin.x = x;
    p_markupContentFrame->origin.y = y;
    p_markupContentFrame->size.width = width;
    p_markupContentFrame->size.height = height;

    [(QLMarkupItemViewController *)self updateContentFrame];
  }
}

- (BOOL)editorShouldAllowEditingContents:(id)a3
{
  v4 = a3;
  v5 = [(QLMarkupItemViewController *)self _isPreviewingUnconvertedDocument];
  LOBYTE(self) = [(QLMarkupItemViewController *)self _allowEditingContent:v4];

  return self & v5;
}

- (BOOL)_allowEditingContent:(id)a3
{
  v4 = a3;
  if (v4 && !self->_contentsAllowsEditingContents)
  {
    [(QLMarkupItemViewController *)self updateContentsAllowEditingContent];
  }

  v5 = [(QLMarkupItemViewController *)self appearance];
  v6 = -[QLMarkupItemViewController _presentationModeSupportsMarkup:](self, "_presentationModeSupportsMarkup:", [v5 presentationMode]);

  if (objc_opt_respondsToSelector())
  {
    v7 = [v4 documentIsLocked] ^ 1;
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

- (void)editorDidUnlockDocument:(id)a3
{
  v4 = [(QLMarkupItemViewController *)self delegate];
  [v4 previewItemViewControllerWantsUpdateOverlay:self animated:1];
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
  v2 = [(QLMarkupItemViewController *)self context];
  v3 = [v2 item];
  v4 = [v3 saveURL];

  return v4;
}

- (void)_fetchDocumentAttributes
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(QLMarkupItemViewController *)self context];
    v4 = [v3 item];
    v5 = [v4 saveURL];

    v6 = _qlsLogHandle;
    if (v5)
    {
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v6 = _qlsLogHandle;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        v8 = [(QLMarkupItemViewController *)self urlForDocumentWorkflows];
        *buf = 138412290;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetching document attributes for URL %@ #ItemViewController", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v9 = [(QLMarkupItemViewController *)self documentWorkflowsClient];
      v10 = [(QLMarkupItemViewController *)self urlForDocumentWorkflows];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10000F728;
      v21[3] = &unk_100024DF8;
      objc_copyWeak(&v22, buf);
      [v9 hasOriginalDocumentForFileAtURL:v10 completion:v21];

      v11 = [(QLMarkupItemViewController *)self documentWorkflowsClient];
      v12 = [(QLMarkupItemViewController *)self urlForDocumentWorkflows];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000F950;
      v19[3] = &unk_100024E20;
      objc_copyWeak(&v20, buf);
      [v11 hasLastModifiedDocumentForFileAtURL:v12 completion:v19];

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
        v15 = [(QLMarkupItemViewController *)self context];
        v16 = [v15 item];
        *buf = 138412290;
        v24 = v16;
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

  v9 = [(QLMarkupItemViewController *)self appearance];

  if (!v9)
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
    v23 = self;
    v4 = "No appearance yet on %@, do not show a banner #ItemViewController";
    v5 = v11;
    v6 = 12;
    goto LABEL_7;
  }

  v10 = [(QLMarkupItemViewController *)self appearance];
  if ([v10 presentationMode] == 2)
  {
  }

  else
  {
    v12 = [(QLMarkupItemViewController *)self appearance];
    v13 = [v12 presentationMode];

    if (v13 != 1)
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
        v21 = [(QLMarkupItemViewController *)self appearance];
        v22 = 134217984;
        v23 = [v21 presentationMode];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Appearance is not modal or push (got %lu instead), do not show a banner #ItemViewController", &v22, 0xCu);
      }

      goto LABEL_8;
    }
  }

  v14 = [(QLMarkupItemViewController *)self _showLatestBannerConfiguration];
  v15 = v14;
  if (v14)
  {
    v7 = v14;
  }

  else
  {
    v16 = [(QLMarkupItemViewController *)self _formFillingBannerConfiguration];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [(QLMarkupItemViewController *)self _showOriginalBannerConfiguration];
    }

    v7 = v18;
  }

LABEL_9:

  return v7;
}

- (id)_showLatestBannerConfiguration
{
  v3 = [(QLMarkupItemViewController *)self latestDocumentAttributes];
  if (v3)
  {
    v4 = [UIImage systemImageNamed:@"clock.arrow.circlepath"];
    v24 = QLLocalizedString();
    v5 = [v3 modifiedDate];
    v6 = objc_alloc_init(NSDateFormatter);
    [v6 setDateStyle:1];
    [v6 setTimeStyle:0];
    [v6 setDoesRelativeDateFormatting:1];
    v26 = [v6 stringFromDate:v5];
    v7 = objc_opt_new();
    [v7 setDateStyle:0];
    [v7 setTimeStyle:1];
    [v7 setFormattingContext:5];
    v25 = [v7 stringFromDate:v5];
    [v7 setLocalizedDateFormatFromTemplate:@"j"];
    v8 = [v7 stringFromDate:v5];
    v9 = +[NSCharacterSet decimalDigitCharacterSet];
    v10 = [v9 invertedSet];
    v23 = v8;
    v11 = [v8 componentsSeparatedByCharactersInSet:v10];
    v12 = [v11 componentsJoinedByString:&stru_1000250E0];

    v13 = objc_opt_new();
    v14 = [v13 numberFromString:v12];
    v15 = [v14 integerValue];

    if (v15 == 1)
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
  v3 = [(QLMarkupItemViewController *)self originalDocumentAttributes];
  if (v3)
  {
    v4 = QLLocalizedString();
    v5 = [v3 receivedDate];
    v6 = [(QLMarkupItemViewController *)self originalDateFormatProvider];
    v7 = [v3 sender];
    v8 = [v7 preferredFormattedName];
    v9 = +[NSDate now];
    v10 = [v6 originalStringWithSender:v8 date:v5 now:v9];

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

    v5 = [(QLMarkupItemViewController *)self markupViewController];
    v6 = [v5 formFillingEnabled];

    if ([(QLMarkupItemViewController *)self shouldAllowEditingContents]&& !(v4 & 1 | ![(QLMarkupItemViewController *)self canOfferFormFillingForOriginalDocument]| v6 & 1) && [(QLMarkupItemViewController *)self canShowFormFillingBanner])
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
  v3 = [(QLMarkupItemViewController *)self configurationForBanner];
  v4 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v4 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Updating banner with configuration: %@ #ItemViewController", &v9, 0xCu);
  }

  v5 = [(QLMarkupItemViewController *)self markupViewController];
  if (v3)
  {
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(QLMarkupItemViewController *)self markupViewController];
      [v7 showBannerWithConfiguration:v3];
LABEL_10:
    }
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v7 = [(QLMarkupItemViewController *)self markupViewController];
      [v7 hideBanner];
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