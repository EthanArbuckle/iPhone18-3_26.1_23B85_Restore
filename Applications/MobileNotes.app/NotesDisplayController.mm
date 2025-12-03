@interface NotesDisplayController
+ (void)initialize;
- (BOOL)acceptNewSize:(unint64_t)size;
- (BOOL)allowsAttachments;
- (BOOL)canInsertImagesInNoteContentLayer:(id)layer;
- (BOOL)isEndingNoteDisplay;
- (BOOL)noteContainsValuableContent;
- (BOOL)noteContentLayer:(id)layer acceptContentsFromItemProviders:(id)providers;
- (BOOL)noteContentLayer:(id)layer acceptContentsFromPasteboard:(id)pasteboard;
- (BOOL)noteContentLayer:(id)layer acceptStringIncreasingContentLength:(id)length;
- (BOOL)noteContentLayerShouldBeginEditing:(id)editing isUserInitiated:(BOOL)initiated;
- (BOOL)noteHasSizeLimit;
- (BOOL)noteMatchesDisplayedContent:(id)content;
- (BOOL)noteShouldBeDiscarded;
- (BOOL)wantsButtonsInToolbar;
- (BOOL)wantsToRemainFirstResponder;
- (CGPoint)contentLayerPointFromPoint:(CGPoint)point relativeToRect:(CGRect)rect;
- (CGPoint)inOccurenceActivityOrigin;
- (CGPoint)pendingArchivedContentOffset;
- (CGPoint)pointRelativeToRect:(CGRect)rect fromContentLayerPoint:(CGPoint)point;
- (CGRect)notesQuickLookActivityItem:(id)item rectForPreviewItem:(id)previewItem inView:(id *)view previewController:(id)controller;
- (CGRect)rectForAttachmentPresentationOccurence:(id)occurence inView:(id *)view;
- (ICViewControllerManager)viewControllerManager;
- (NSArray)actionButtonItemsForNavBar;
- (NSArray)actionButtonItemsForToolbar;
- (NotesDisplayController)initWithArchivedConfiguration:(id)configuration;
- (NotesDisplayControllerDelegate)delegate;
- (UIBarButtonItem)closeAuxiliaryWindowButton;
- (UIBarButtonItem)doneButtonItem;
- (UIPrintFormatter)printFormatter;
- (UIScrollView)scrollView;
- (_NSRange)selectedRangeBeforeTextFinding;
- (id)archivedConfiguration;
- (id)attachmentContentIDs;
- (id)attachmentPresentationOccurencesForPreviewingWithManagedInterface:(BOOL)interface;
- (id)contextManager;
- (id)displayedActionButtonItemsWithTag:(int64_t)tag;
- (id)getCurrentContext;
- (id)newlyCreatedAttachmentPresentationWithData:(id)data mimeType:(id)type preferredFilename:(id)filename;
- (id)noteActivityItemsForSharing;
- (id)noteAttachmentObjectWithContentID:(id)d;
- (id)noteAttachmentPresentationForContentID:(id)d;
- (id)noteContentLayer:(id)layer fileURLForAttachmentWithContentID:(id)d;
- (id)noteContentLayer:(id)layer updateAttachments:(id)attachments;
- (id)noteHTMLEditorView;
- (id)noteIdentifierForNoteContentLayer:(id)layer;
- (id)notesQuickLookActivityItem:(id)item transitionImageForPreviewItem:(id)previewItem previewController:(id)controller;
- (id)occurenceForPreviewItem:(id)item hintIndex:(int64_t)index;
- (id)textFindingActivity;
- (id)webView;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)estimatedSizeOfDisplayedContent;
- (void)addButtonClicked:(id)clicked;
- (void)animateDeleteTransitionWithCompletion:(id)completion;
- (void)applyAccessibilityInfo;
- (void)captureDisplayedNoteVersion;
- (void)copyNoteHTMLToPasteboard;
- (void)dealloc;
- (void)deleteButtonClicked:(id)clicked;
- (void)didChangeNoteProviderStatus;
- (void)didDismissDeleteAlertController;
- (void)didDismissPickerController;
- (void)didReceiveMemoryWarning;
- (void)dismissPickerControllerWithCompletionHandler:(id)handler;
- (void)displayNote:(id)note;
- (void)donateEditingIntentIfNecessary;
- (void)getPickerPopoverSourceRectWithCompletion:(id)completion;
- (void)insertAttachmentWithData:(id)data mimeType:(id)type preferredFilename:(id)filename;
- (void)insertImageInNoteContentLayer:(id)layer;
- (void)invalidateAutosaveTimer;
- (void)invalidateNoteUserActivity;
- (void)loadView;
- (void)noteContentLayer:(id)layer didInvokeFormattingCalloutOption:(int64_t)option;
- (void)noteContentLayer:(id)layer didInvokeStyleFormattingOption:(int64_t)option;
- (void)noteContentLayer:(id)layer openURL:(id)l;
- (void)noteContentLayer:(id)layer setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)noteContentLayer:(id)layer showShareSheetForAttachment:(id)attachment atPoint:(CGPoint)point;
- (void)noteContentLayer:(id)layer willHitTestWithEvent:(id)event;
- (void)noteContentLayerContentDidChange:(id)change updatedTitle:(BOOL)title fromDrop:(BOOL)drop;
- (void)performFindInNote:(id)note;
- (void)performFindInNoteUIActivity:(id)activity;
- (void)performReplaceInNote:(id)note;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)prepareForDefaultImageSnapshotForScreen:(id)screen;
- (void)prepareForPresentation;
- (void)prepareForReuse;
- (void)prepareForSerializationWithLeftoverPresentations:(id *)presentations createdAttachments:(id *)attachments;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)refreshAttachmentPresentations;
- (void)registerTraitChanges;
- (void)reloadContentLayer;
- (void)rememberNoteContentForEditingIntent;
- (void)resetAutosaveTimer;
- (void)restoreState;
- (void)runScrollPerformanceTest:(id)test iterations:(int)iterations;
- (void)saveNote;
- (void)sceneDidActivate:(id)activate;
- (void)sceneWillDeactivate:(id)deactivate;
- (void)setAllAttachmentPresentationOccurences:(id)occurences;
- (void)setContentFromNote;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setNeedsStatusBarAppearanceUpdate;
- (void)setNote:(id)note;
- (void)setPerformingDeleteAnimation:(BOOL)animation;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)shareButtonClicked:(id)clicked;
- (void)showActionsForAttachmentPresentation:(id)presentation atPoint:(CGPoint)point;
- (void)showAttachmentsUnsupportedAlertForNoteContentLayer:(id)layer;
- (void)significantTimeChange;
- (void)stopTextFinding;
- (void)turnOnContentLengthTrackingIfNeeded;
- (void)updateBarButtonItemsAnimated:(BOOL)animated;
- (void)updateBarsVisibilityAnimated:(BOOL)animated;
- (void)updateContentViewBezelsStandalone:(BOOL)standalone needsAdditionalBottomMargin:(BOOL)margin needsAdditionalLeadingMargin:(BOOL)leadingMargin;
- (void)updateContextProviderStatus;
- (void)updateDate;
- (void)updateForceLightContentIfNecessary;
- (void)updateNavigationBarLeftButtonItemsAnimated:(BOOL)animated;
- (void)updateNavigationBarRightButtonItemsAnimated:(BOOL)animated;
- (void)updateNote:(id)note;
- (void)updateNoteFromInterface;
- (void)updateNoteProviderStatus;
- (void)updateNoteTitle;
- (void)updateNoteUserActivityState;
- (void)updateToolbarButtonItemsAnimated:(BOOL)animated;
- (void)updateUserActivityStatus;
- (void)updateViewAnnotation;
- (void)userActivityWasContinued:(id)continued;
- (void)userActivityWillSave:(id)save;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)warnUserAboutNoteSizeLimitExceeded;
- (void)willMoveToParentViewController:(id)controller;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation NotesDisplayController

+ (void)initialize
{
  v8[0] = &off_10066E028;
  v8[1] = &off_10066E040;
  v9[0] = &off_10066E040;
  v9[1] = &off_10066E058;
  v8[2] = &off_10066E058;
  v8[3] = &off_10066E070;
  v9[2] = &off_10066E070;
  v9[3] = &off_10066E088;
  v8[4] = &off_10066E0A0;
  v8[5] = &off_10066E088;
  v9[4] = &off_10066E0B8;
  v9[5] = &off_10066E0D0;
  v8[6] = &off_10066E0B8;
  v8[7] = &off_10066E0D0;
  v9[6] = &off_10066E0E8;
  v9[7] = &off_10066E100;
  v2 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:8];
  v3 = qword_1006CB428;
  qword_1006CB428 = v2;

  v6[0] = &off_10066E0A0;
  v6[1] = &off_10066E088;
  v7[0] = &off_10066E100;
  v7[1] = &off_10066E118;
  v6[2] = &off_10066E0B8;
  v6[3] = &off_10066E0D0;
  v7[2] = &off_10066E130;
  v7[3] = &off_10066E148;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:4];
  v5 = qword_1006CB430;
  qword_1006CB430 = v4;
}

- (void)registerTraitChanges
{
  objc_initWeak(&location, self);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v8 count:2];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10012BDE8;
  v5[3] = &unk_100646240;
  objc_copyWeak(&v6, &location);
  v4 = [(NotesDisplayController *)self registerForTraitChanges:v3 withHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (NotesDisplayController)initWithArchivedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = NotesDisplayController;
  v5 = [(NotesDisplayController *)&v12 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [configurationCopy objectForKeyedSubscript:@"IsEditing"];
    v5->_pendingArchivedEditingState = [v6 BOOLValue];

    v7 = [configurationCopy objectForKeyedSubscript:@"ContentOffset"];
    v8 = CGPointFromString(v7);

    v5->_pendingArchivedContentOffset = v8;
    v9 = [configurationCopy objectForKeyedSubscript:@"NoteRecordId"];
    pendingArchivedNoteID = v5->_pendingArchivedNoteID;
    v5->_pendingArchivedNoteID = v9;

    [(NotesDisplayController *)v5 registerTraitChanges];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  if ([(NotesDisplayController *)self canProvideNote])
  {
    contextManager = [(NotesDisplayController *)self contextManager];
    [contextManager removeContextProvider:self];

    [(NotesDisplayController *)self invalidateNoteUserActivity];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  attachmentPresentations = [(NotesDisplayController *)self attachmentPresentations];
  v6 = [attachmentPresentations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(attachmentPresentations);
        }

        contentIDURL = [*(*(&v13 + 1) + 8 * v9) contentIDURL];
        [NotesCIDURLProtocol unregisterDataProviderForCIDURL:contentIDURL];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [attachmentPresentations countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(NoteContentLayer *)self->_contentLayer setDelegate:0];
  [(NoteContentLayer *)self->_contentLayer setAttachmentPresentationDelegate:0];
  [(UIPresentationController *)self->_activityPresentationController setDelegate:0];
  popoverPresentationController = [(PHPickerViewController *)self->_pickerController popoverPresentationController];
  [popoverPresentationController setDelegate:0];

  v12.receiver = self;
  v12.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v12 dealloc];
}

- (void)invalidateAutosaveTimer
{
  autosaveTimer = [(NotesDisplayController *)self autosaveTimer];
  [autosaveTimer invalidate];

  [(NotesDisplayController *)self setAutosaveTimer:0];
}

- (void)resetAutosaveTimer
{
  autosaveTimer = [(NotesDisplayController *)self autosaveTimer];
  isValid = [autosaveTimer isValid];

  if (isValid)
  {
    autosaveTimer2 = [(NotesDisplayController *)self autosaveTimer];
    v5 = [NSDate dateWithTimeIntervalSinceNow:2.0];
    [autosaveTimer2 setFireDate:v5];
  }

  else
  {
    autosaveTimer2 = [NSTimer scheduledTimerWithTimeInterval:self target:"autosaveTimerFired:" selector:0 userInfo:0 repeats:2.0];
    [(NotesDisplayController *)self setAutosaveTimer:?];
  }
}

- (void)prepareForReuse
{
  if ([(NotesDisplayController *)self isEditing])
  {
    [(NotesDisplayController *)self setEditing:0 animated:1];
  }

  [(NotesDisplayController *)self stopTextFinding];
  [(NotesDisplayController *)self setNote:0];
  contentLayer = [(NotesDisplayController *)self contentLayer];
  noteHTMLEditorView = [contentLayer noteHTMLEditorView];
  [noteHTMLEditorView stopEditing];

  contentLayer2 = [(NotesDisplayController *)self contentLayer];
  [contentLayer2 setTracksMaximumContentLength:0];

  contentLayer3 = [(NotesDisplayController *)self contentLayer];
  [contentLayer3 setContent:&stru_100661CF0 isPlainText:0 attachments:0];

  [(NotesDisplayController *)self setDisplayedNoteVersionTimestamp:0];
  [(NotesDisplayController *)self setDisplayedNoteVersionObjectID:0];
  [(NotesDisplayController *)self invalidateAutosaveTimer];

  [(NotesDisplayController *)self setContentHasUnsavedChanges:0];
}

- (void)significantTimeChange
{
  autosaveTimer = [(NotesDisplayController *)self autosaveTimer];

  if (autosaveTimer)
  {

    [(NotesDisplayController *)self resetAutosaveTimer];
  }
}

- (void)updateDate
{
  if ([(NotesDisplayController *)self contentHasUnsavedChanges])
  {
    modificationDate = +[NSDate date];
  }

  else
  {
    note = [(NotesDisplayController *)self note];
    modificationDate = [note modificationDate];
  }

  contentLayer = [(NotesDisplayController *)self contentLayer];
  [contentLayer setTimestampDate:modificationDate];
}

- (void)prepareForDefaultImageSnapshotForScreen:(id)screen
{
  deletePresentationController = [(NotesDisplayController *)self deletePresentationController];

  if (deletePresentationController)
  {
    deletePresentationController2 = [(NotesDisplayController *)self deletePresentationController];
    presentingViewController = [deletePresentationController2 presentingViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10012C3E4;
    v7[3] = &unk_100645E30;
    v7[4] = self;
    [presentingViewController dismissViewControllerAnimated:0 completion:v7];
  }
}

- (void)copyNoteHTMLToPasteboard
{
  contentLayer = [(NotesDisplayController *)self contentLayer];
  [contentLayer copyNoteHTMLToPasteboard];
}

- (BOOL)noteMatchesDisplayedContent:(id)content
{
  contentCopy = content;
  if ([(NotesDisplayController *)self contentHasUnsavedChanges])
  {
    v5 = 0;
  }

  else
  {
    objectID = [contentCopy objectID];
    displayedNoteVersionObjectID = [(NotesDisplayController *)self displayedNoteVersionObjectID];
    if ([objectID isEqual:displayedNoteVersionObjectID])
    {
      modificationDate = [contentCopy modificationDate];
      displayedNoteVersionTimestamp = [(NotesDisplayController *)self displayedNoteVersionTimestamp];
      v5 = [modificationDate isEqual:displayedNoteVersionTimestamp];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)captureDisplayedNoteVersion
{
  note = [(NotesDisplayController *)self note];
  objectID = [note objectID];
  [(NotesDisplayController *)self setDisplayedNoteVersionObjectID:objectID];

  note2 = [(NotesDisplayController *)self note];
  modificationDate = [note2 modificationDate];
  [(NotesDisplayController *)self setDisplayedNoteVersionTimestamp:modificationDate];
}

- (void)setNote:(id)note
{
  noteCopy = note;
  objc_opt_class();
  obj = ICCheckedDynamicCast();

  note = self->_note;
  if (note != obj && note != 0)
  {
    view = [(NotesDisplayController *)self view];
    window = [view window];

    if (window)
    {
      eventReporter = [(NotesDisplayController *)self eventReporter];
      [eventReporter submitNoteViewEventForHTMLNote:self->_note];
    }
  }

  objc_storeStrong(&self->_note, obj);
  store = [(NoteObject *)obj store];
  account = [store account];

  if (account)
  {
    preventMovingNotesToOtherAccounts = [account preventMovingNotesToOtherAccounts];
  }

  else
  {
    preventMovingNotesToOtherAccounts = 0;
  }

  [(NotesDisplayController *)self setNoteIsManaged:preventMovingNotesToOtherAccounts];
  if (self->_note)
  {
    allowsAttachments = [(NotesDisplayController *)self allowsAttachments];
    contentLayer = [(NotesDisplayController *)self contentLayer];
    [contentLayer setAllowsAttachments:allowsAttachments];
  }

  [(NotesDisplayController *)self invalidateNoteUserActivity];
  if (obj)
  {
    [(NotesDisplayController *)self updateUserActivityStatus];
  }

  if (note != obj)
  {
    if (self->_note)
    {
      view2 = [(NotesDisplayController *)self view];
      window2 = [view2 window];

      if (window2)
      {
        eventReporter2 = [(NotesDisplayController *)self eventReporter];
        [eventReporter2 startNoteViewEventDurationTrackingForHTMLNote:self->_note];
      }
    }
  }

  [(NotesDisplayController *)self stopTextFinding];
  [(NotesDisplayController *)self updateViewAnnotation];
}

- (void)updateNote:(id)note
{
  [(NotesDisplayController *)self setNote:note];
  [(NotesDisplayController *)self setContentHasUnsavedChanges:1];
  [(NotesDisplayController *)self updateNoteFromInterface];
  note = [(NotesDisplayController *)self note];
  v4 = +[NSDate ic_modificationDateForNoteBeingEdited];
  [note setModificationDate:v4];
}

- (void)displayNote:(id)note
{
  noteCopy = note;
  note = [(NotesDisplayController *)self note];
  if (note == noteCopy)
  {
  }

  else
  {
    v5 = +[UIApplication shouldMakeUIForDefaultPNG];

    if ((v5 & 1) == 0)
    {
      if ([(NotesDisplayController *)self noteMatchesDisplayedContent:noteCopy])
      {
        [(NotesDisplayController *)self setNote:noteCopy];
      }

      else
      {
        [(NotesDisplayController *)self stopTextFinding];
        if ([(NotesDisplayController *)self isEditing])
        {
          [(NotesDisplayController *)self setEditing:0 animated:0];
        }

        [(NotesDisplayController *)self setNote:noteCopy];
        contentLayer = [(NotesDisplayController *)self contentLayer];
        [contentLayer scrollToTopAnimated:0];

        contentLayer2 = [(NotesDisplayController *)self contentLayer];

        if (contentLayer2)
        {
          [(NotesDisplayController *)self setContentFromNote];
        }

        else
        {
          [(NotesDisplayController *)self setDidSetContentFromNote:0];
        }

        [(NotesDisplayController *)self captureDisplayedNoteVersion];
        [(NotesDisplayController *)self updateDate];
        [(NotesDisplayController *)self updateBarButtonItemsAnimated:0];
        [(NotesDisplayController *)self updateNoteProviderStatus];
        [(NotesDisplayController *)self updateForceLightContentIfNecessary];
      }

      goto LABEL_16;
    }
  }

  v6 = noteCopy;
  if (noteCopy)
  {
    goto LABEL_17;
  }

  contentLayer3 = [(NotesDisplayController *)self contentLayer];

  if (contentLayer3)
  {
    [(NotesDisplayController *)self setContentFromNote];
    [(NotesDisplayController *)self updateDate];
  }

  else
  {
    [(NotesDisplayController *)self setDidSetContentFromNote:0];
  }

LABEL_16:
  v6 = noteCopy;
LABEL_17:
}

- (void)updateNoteTitle
{
  contentLayer = [(NotesDisplayController *)self contentLayer];
  title = [contentLayer title];

  note = [(NotesDisplayController *)self note];
  [note setTitle:title];
}

- (void)updateNoteFromInterface
{
  if ([(NotesDisplayController *)self contentHasUnsavedChanges])
  {
    v25 = 0;
    v26 = 0;
    [(NotesDisplayController *)self prepareForSerializationWithLeftoverPresentations:&v26 createdAttachments:&v25];
    v3 = v26;
    v18 = v25;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v3;
    v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      do
      {
        v7 = 0;
        do
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v21 + 1) + 8 * v7);
          attachments = [(NoteObject *)self->_note attachments];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10012CCB4;
          v20[3] = &unk_10064AB10;
          v20[4] = v8;
          v10 = [NSPredicate predicateWithBlock:v20];
          v11 = [attachments filteredSetUsingPredicate:v10];
          anyObject = [v11 anyObject];

          if (anyObject)
          {
            managedObjectContext = [anyObject managedObjectContext];
            [managedObjectContext deleteObject:anyObject];

            [(NoteObject *)self->_note removeAttachmentsObject:anyObject];
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v5);
    }

    contentLayer = [(NotesDisplayController *)self contentLayer];
    v15 = [contentLayer contentAsPlainText:{-[NoteObject isPlainText](self->_note, "isPlainText")}];

    note = [(NotesDisplayController *)self note];
    [note setContent:v15];

    note2 = [(NotesDisplayController *)self note];
    [note2 addAttachments:v18];

    [(NotesDisplayController *)self updateNoteTitle];
    [(NotesDisplayController *)self updateNoteUserActivityState];
    [(NotesDisplayController *)self refreshAttachmentPresentations];
    [(NotesDisplayController *)self prepareForPresentation];
    [(NotesDisplayController *)self updateBarButtonItemsAnimated:0];
  }
}

- (void)saveNote
{
  if ([(NotesDisplayController *)self contentHasUnsavedChanges])
  {
    [(NotesDisplayController *)self updateNoteFromInterface];
    if ([(NotesDisplayController *)self noteCanBeSaved])
    {
      eventReporter = [(NotesDisplayController *)self eventReporter];
      note = [(NotesDisplayController *)self note];
      [eventReporter submitNoteEditEventForHTMLNote:note];

      note2 = [(NotesDisplayController *)self note];
      v6 = +[NSDate date];
      [note2 setModificationDate:v6];

      v7 = +[NotesApp sharedNotesApp];
      noteContext = [v7 noteContext];
      v15 = 0;
      v9 = [noteContext save:&v15];
      v10 = v15;

      if ((v9 & 1) == 0)
      {
        v11 = os_log_create("com.apple.notes", "HTML");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1004E123C(v10, v11);
        }
      }

      v12 = +[NotesApp sharedNotesApp];
      note3 = [(NotesDisplayController *)self note];
      store = [note3 store];
      [v12 refreshNotesIfNeededForCollection:store];

      [(NotesDisplayController *)self captureDisplayedNoteVersion];
      [(NotesDisplayController *)self setContentHasUnsavedChanges:0];
      [(NotesDisplayController *)self invalidateAutosaveTimer];
    }
  }
}

- (BOOL)noteContainsValuableContent
{
  if (([(NotesDisplayController *)self isEditing]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    note = [(NotesDisplayController *)self note];
    content = [note content];
    if ([content ic_containsNonWhitespaceCharacters])
    {
      v3 = 1;
    }

    else
    {
      note2 = [(NotesDisplayController *)self note];
      attachments = [note2 attachments];
      v3 = [attachments count] != 0;
    }
  }

  note3 = [(NotesDisplayController *)self note];
  contentContainsValuableContent = note3 != 0;
  if (note3 && !v3)
  {
    contentLayer = [(NotesDisplayController *)self contentLayer];
    contentContainsValuableContent = [contentLayer contentContainsValuableContent];
  }

  return contentContainsValuableContent;
}

- (BOOL)noteShouldBeDiscarded
{
  note = [(NotesDisplayController *)self note];
  if (note && ![(NotesDisplayController *)self isUpdatingNoteContent])
  {
    v4 = ![(NotesDisplayController *)self noteContainsValuableContent];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)updateNoteProviderStatus
{
  note = [(NotesDisplayController *)self note];
  if (note && [(NotesDisplayController *)self isVisible])
  {
    if ([(NotesDisplayController *)self isEditing])
    {
      noteCanBeSaved = [(NotesDisplayController *)self noteCanBeSaved];
    }

    else
    {
      noteCanBeSaved = 1;
    }
  }

  else
  {
    noteCanBeSaved = 0;
  }

  if (noteCanBeSaved != [(NotesDisplayController *)self canProvideNote])
  {
    [(NotesDisplayController *)self setCanProvideNote:noteCanBeSaved];

    [(NotesDisplayController *)self didChangeNoteProviderStatus];
  }
}

- (void)didChangeNoteProviderStatus
{
  [(NotesDisplayController *)self updateContextProviderStatus];

  [(NotesDisplayController *)self updateUserActivityStatus];
}

- (BOOL)noteHasSizeLimit
{
  note = [(NotesDisplayController *)self note];
  store = [note store];
  account = [store account];
  v5 = [account accountType] == 1;

  return v5;
}

- (unint64_t)estimatedSizeOfDisplayedContent
{
  contentLayer = [(NotesDisplayController *)self contentLayer];
  title = [contentLayer title];
  v5 = [title dataUsingEncoding:4];

  v6 = [v5 length];
  contentLayer2 = [(NotesDisplayController *)self contentLayer];
  note = [(NotesDisplayController *)self note];
  v9 = [contentLayer2 contentAsPlainText:{objc_msgSend(note, "isPlainText")}];
  v10 = [v9 dataUsingEncoding:4];

  v11 = &v6[[v10 length]];
  attachmentPresentations = [(NotesDisplayController *)self attachmentPresentations];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [attachmentPresentations countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(attachmentPresentations);
        }

        v17 = *(*(&v22 + 1) + 8 * v16);
        v21 = 0;
        [v17 getPresentationData:&v21 mimeType:0 error:0];
        v18 = v21;
        v11 = &v11[[v18 ic_lengthAsMIMEAttachment]];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [attachmentPresentations countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v19 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E12EC();
  }

  return v11;
}

- (BOOL)acceptNewSize:(unint64_t)size
{
  v9 = 0;
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E1360();
  }

  v6 = sub_10010ADE4(size, &v9);
  if (v6)
  {
    if (v9)
    {
      contentLayer = [(NotesDisplayController *)self contentLayer];
      [contentLayer setTracksMaximumContentLength:1];
    }
  }

  else
  {
    [(NotesDisplayController *)self warnUserAboutNoteSizeLimitExceeded];
  }

  return v6;
}

- (void)turnOnContentLengthTrackingIfNeeded
{
  if (![(NotesDisplayController *)self noteHasSizeLimit])
  {
    return;
  }

  contentLayer = [(NotesDisplayController *)self contentLayer];
  if (![contentLayer tracksMaximumContentLength])
  {
    if (([(NotesDisplayController *)self isEditing]& 1) == 0)
    {
      note = [(NotesDisplayController *)self note];
      content = [note content];
      if ([content length] < 0x493E0)
      {
        note2 = [(NotesDisplayController *)self note];
        attachments = [note2 attachments];
        v7 = [attachments count];

        if (!v7)
        {
          return;
        }

LABEL_12:
        v11 = 0;
        v8 = sub_10010ADE4([(NotesDisplayController *)self estimatedSizeOfDisplayedContent], &v11);
        contentLayer2 = [(NotesDisplayController *)self contentLayer];
        [contentLayer2 setTracksMaximumContentLength:v11 | !v8];

        return;
      }
    }

    goto LABEL_12;
  }
}

- (void)warnUserAboutNoteSizeLimitExceeded
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Maximum note size reached." value:&stru_100661CF0 table:0];
  v8 = [UIAlertController alertControllerWithTitle:v4 message:0 preferredStyle:1];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_100661CF0 table:0];
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:0];
  [v8 addAction:v7];

  [(NotesDisplayController *)self presentViewController:v8 animated:1 completion:0];
}

- (BOOL)allowsAttachments
{
  note = [(NotesDisplayController *)self note];
  store = [note store];
  account = [store account];
  supportsAttachments = [account supportsAttachments];

  return supportsAttachments;
}

- (void)setAllAttachmentPresentationOccurences:(id)occurences
{
  occurencesCopy = occurences;
  v5 = [occurencesCopy copy];
  allAttachmentPresentationOccurences = self->_allAttachmentPresentationOccurences;
  self->_allAttachmentPresentationOccurences = v5;

  v9 = [occurencesCopy ic_objectsPassingTest:&stru_10064AB30];

  v7 = [v9 copy];
  nonManagedAttachmentPresentationOccurences = self->_nonManagedAttachmentPresentationOccurences;
  self->_nonManagedAttachmentPresentationOccurences = v7;
}

- (id)attachmentPresentationOccurencesForPreviewingWithManagedInterface:(BOOL)interface
{
  v3 = &OBJC_IVAR___NotesDisplayController__nonManagedAttachmentPresentationOccurences;
  if (interface)
  {
    v3 = &OBJC_IVAR___NotesDisplayController__allAttachmentPresentationOccurences;
  }

  return *&self->ICNAViewController_opaque[*v3];
}

- (id)attachmentContentIDs
{
  contentLayer = [(NotesDisplayController *)self contentLayer];
  noteHTMLEditorView = [contentLayer noteHTMLEditorView];
  attachmentContentIDs = [noteHTMLEditorView attachmentContentIDs];

  return attachmentContentIDs;
}

- (void)prepareForPresentation
{
  attachmentContentIDs = [(NotesDisplayController *)self attachmentContentIDs];
  attachmentPresentations = [(NotesDisplayController *)self attachmentPresentations];
  v6 = 0;
  [NoteAttachmentPresentation prepareDocumentForPresentationWithAttachmentContentIDs:attachmentContentIDs withAttachmentPresentations:attachmentPresentations occurences:&v6];
  v5 = v6;

  [(NotesDisplayController *)self setAllAttachmentPresentationOccurences:v5];
}

- (void)prepareForSerializationWithLeftoverPresentations:(id *)presentations createdAttachments:(id *)attachments
{
  v5 = +[NotesApp sharedNotesApp];
  noteContext = [v5 noteContext];

  attachmentPresentations = [(NotesDisplayController *)self attachmentPresentations];
  v7 = [NSMutableOrderedSet orderedSetWithArray:attachmentPresentations];

  v32 = +[NSMutableSet set];
  note = [(NotesDisplayController *)self note];
  attachments = [note attachments];
  allObjects = [attachments allObjects];
  v11 = [allObjects ic_dictionaryByHashingContentWithFunction:&stru_10064AB50];
  v12 = [v11 mutableCopy];

  attachmentPresentations2 = [(NotesDisplayController *)self attachmentPresentations];
  v14 = [attachmentPresentations2 ic_dictionaryByHashingContentWithFunction:&stru_10064AB70];
  v15 = [v14 mutableCopy];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  selfCopy = self;
  attachmentContentIDs = [(NotesDisplayController *)self attachmentContentIDs];
  v17 = [attachmentContentIDs countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v42;
    v35 = v12;
    v36 = v7;
    v33 = attachmentContentIDs;
    v34 = v15;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(attachmentContentIDs);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        v22 = [v12 objectForKeyedSubscript:v21];
        v23 = [v15 objectForKeyedSubscript:v21];
        if (v23)
        {
          [v7 removeObject:v23];
          if (!v22)
          {
            v39 = 0;
            v40 = 0;
            v38 = 0;
            [v23 getPresentationData:&v40 mimeType:&v39 error:&v38];
            v24 = v40;
            v25 = v39;
            v26 = v38;
            contentID = [v23 contentID];
            filename = [v23 filename];
            v22 = [ICLegacyContentUtilities createAttachmentWithContentID:contentID mimeType:v25 data:v24 filename:filename inContext:noteContext];

            if (v22)
            {
              [v32 addObject:v22];
            }

            v12 = v35;
            v7 = v36;
            attachmentContentIDs = v33;
            v15 = v34;
          }
        }
      }

      v18 = [attachmentContentIDs countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v18);
  }

  if (attachments)
  {
    *attachments = [v32 copy];
  }

  if (presentations)
  {
    *presentations = [v7 array];
  }

  [(NotesDisplayController *)selfCopy setAllAttachmentPresentationOccurences:0];
}

- (id)newlyCreatedAttachmentPresentationWithData:(id)data mimeType:(id)type preferredFilename:(id)filename
{
  typeCopy = type;
  filenameCopy = filename;
  if (data)
  {
    dataCopy = data;
    v11 = +[ICLegacyContentUtilities generateContentID];
    if (filenameCopy)
    {
      v12 = filenameCopy;
    }

    else
    {
      v12 = [ICLegacyContentUtilities suggestedFilenameForURL:0 mimeType:typeCopy];
    }

    v14 = v12;
    v15 = +[NotesApp sharedNotesApp];
    noteContext = [v15 noteContext];

    v17 = [ICLegacyContentUtilities createAttachmentWithContentID:v11 mimeType:typeCopy data:dataCopy filename:v14 inContext:noteContext];

    note = [(NotesDisplayController *)self note];
    [note addAttachmentsObject:v17];

    note2 = [(NotesDisplayController *)self note];
    managedObjectContext = [note2 managedObjectContext];
    [managedObjectContext ic_save];

    v13 = [[NoteAttachmentPresentation alloc] initWithNoteAttachmentObject:v17];
    attachmentPresentations = [(NotesDisplayController *)self attachmentPresentations];
    v22 = [attachmentPresentations arrayByAddingObject:v13];

    [(NotesDisplayController *)self setAttachmentPresentations:v22];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)insertAttachmentWithData:(id)data mimeType:(id)type preferredFilename:(id)filename
{
  dataCopy = data;
  typeCopy = type;
  filenameCopy = filename;
  if (![(NotesDisplayController *)self noteHasSizeLimit])
  {
    if (!dataCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = -[NotesDisplayController acceptNewSize:](self, "acceptNewSize:", [dataCopy ic_lengthAsMIMEAttachment] + -[NotesDisplayController estimatedSizeOfDisplayedContent](self, "estimatedSizeOfDisplayedContent"));
  if (dataCopy && (v10 & 1) != 0)
  {
LABEL_6:
    v11 = [(NotesDisplayController *)self newlyCreatedAttachmentPresentationWithData:dataCopy mimeType:typeCopy preferredFilename:filenameCopy];
    contentLayer = [(NotesDisplayController *)self contentLayer];
    [contentLayer replaceSelectionWithAttachmentPresentation:v11];
  }

LABEL_7:
}

- (id)noteAttachmentPresentationForContentID:(id)d
{
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  attachmentPresentations = [(NotesDisplayController *)self attachmentPresentations];
  v6 = [attachmentPresentations countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(attachmentPresentations);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        contentID = [v10 contentID];
        v12 = [contentID isEqualToString:dCopy];

        if (v12)
        {
          v13 = v10;
          goto LABEL_12;
        }
      }

      v7 = [attachmentPresentations countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  attachmentPresentations = [(NotesDisplayController *)self noteAttachmentObjectWithContentID:dCopy];
  if (attachmentPresentations)
  {
    v13 = [[NoteAttachmentPresentation alloc] initWithNoteAttachmentObject:attachmentPresentations];
LABEL_12:
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)noteAttachmentObjectWithContentID:(id)d
{
  dCopy = d;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  note = [(NotesDisplayController *)self note];
  attachments = [note attachments];

  v7 = [attachments countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v7)
  {

LABEL_13:
    note2 = [(NotesDisplayController *)self note];
    managedObjectContext = [note2 managedObjectContext];
    v18 = [ICLegacyAttachmentUtilities attachmentWithContentID:dCopy context:managedObjectContext];

    objc_opt_class();
    v9 = ICDynamicCast();

    goto LABEL_14;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v21;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(attachments);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      contentID = [v12 contentID];
      v14 = [contentID isEqualToString:dCopy];

      if (v14)
      {
        v15 = v12;

        v9 = v15;
      }
    }

    v8 = [attachments countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v8);

  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v9;
}

- (id)noteContentLayer:(id)layer fileURLForAttachmentWithContentID:(id)d
{
  v4 = [(NotesDisplayController *)self noteAttachmentPresentationForContentID:d];
  dataFileURL = [v4 dataFileURL];

  return dataFileURL;
}

- (void)setContentFromNote
{
  contentLayer = [(NotesDisplayController *)self contentLayer];
  delegate = [contentLayer delegate];

  if (delegate == self)
  {
    contentLayer2 = [(NotesDisplayController *)self contentLayer];
    [contentLayer2 setDelegate:0];

    contentLayer3 = [(NotesDisplayController *)self contentLayer];
    [contentLayer3 setAttachmentPresentationDelegate:0];
  }

  note = [(NotesDisplayController *)self note];
  content = [note content];

  note2 = [(NotesDisplayController *)self note];
  isPlainText = [note2 isPlainText];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012E478;
  v15[3] = &unk_1006462D8;
  v15[4] = self;
  v11 = content;
  v16 = v11;
  v17 = isPlainText;
  v12 = objc_retainBlock(v15);
  if ([v11 length] <= 0x10000)
  {
    (v12[2])(v12);
  }

  else
  {
    [(NotesDisplayController *)self setDelayingSetContent:1];
    dispatch_async(&_dispatch_main_q, v12);
  }

  if (delegate == self)
  {
    contentLayer4 = [(NotesDisplayController *)self contentLayer];
    [contentLayer4 setDelegate:self];

    contentLayer5 = [(NotesDisplayController *)self contentLayer];
    [contentLayer5 setAttachmentPresentationDelegate:self];
  }

  [(NotesDisplayController *)self setDidSetContentFromNote:1];
}

- (void)reloadContentLayer
{
  if ([(NotesDisplayController *)self isEditing])
  {
    [(NotesDisplayController *)self setEditing:0 animated:0];
    [(NotesDisplayController *)self prepareForSerializationWithLeftoverPresentations:0 createdAttachments:0];
    [(NotesDisplayController *)self prepareForPresentation];
    contentLayer = [(NotesDisplayController *)self contentLayer];
    noteHTMLEditorView = [contentLayer noteHTMLEditorView];
    [noteHTMLEditorView setNeedsDisplay];

    contentLayer2 = [(NotesDisplayController *)self contentLayer];
    [contentLayer2 setNeedsLayout];

    [(NotesDisplayController *)self setEditing:1 animated:0];
  }

  else
  {
    [(NotesDisplayController *)self prepareForSerializationWithLeftoverPresentations:0 createdAttachments:0];
    [(NotesDisplayController *)self prepareForPresentation];
    contentLayer3 = [(NotesDisplayController *)self contentLayer];
    noteHTMLEditorView2 = [contentLayer3 noteHTMLEditorView];
    [noteHTMLEditorView2 setNeedsDisplay];

    contentLayer4 = [(NotesDisplayController *)self contentLayer];
    [contentLayer4 setNeedsLayout];
  }
}

- (void)refreshAttachmentPresentations
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  attachmentPresentations = [(NotesDisplayController *)self attachmentPresentations];
  v4 = [attachmentPresentations countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(attachmentPresentations);
        }

        contentIDURL = [*(*(&v23 + 1) + 8 * i) contentIDURL];
        [NotesCIDURLProtocol unregisterDataProviderForCIDURL:contentIDURL];
      }

      v5 = [attachmentPresentations countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  attachments = [(NoteObject *)self->_note attachments];
  allObjects = [attachments allObjects];
  v11 = [NoteAttachmentPresentation attachmentPresentationsForAttachments:allObjects];
  [(NotesDisplayController *)self setAttachmentPresentations:v11];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  attachmentPresentations2 = [(NotesDisplayController *)self attachmentPresentations];
  v13 = [attachmentPresentations2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(attachmentPresentations2);
        }

        v17 = *(*(&v19 + 1) + 8 * j);
        contentIDURL2 = [v17 contentIDURL];
        [NotesCIDURLProtocol registerDataProvider:v17 forCIDURL:contentIDURL2];
      }

      v14 = [attachmentPresentations2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  [(NotesDisplayController *)self setAllAttachmentPresentationOccurences:0];
}

- (BOOL)wantsToRemainFirstResponder
{
  isViewLoaded = [(NotesDisplayController *)self isViewLoaded];
  if (isViewLoaded)
  {

    LOBYTE(isViewLoaded) = [(NotesDisplayController *)self isEditing];
  }

  return isViewLoaded;
}

- (void)loadView
{
  v3 = [[NotesBackgroundView alloc] initWithFrame:{0.0, 0.0, 320.0, 320.0}];
  [(NotesDisplayController *)self setBackgroundView:v3];

  backgroundView = [(NotesDisplayController *)self backgroundView];
  [backgroundView setAutoresizingMask:18];

  backgroundView2 = [(NotesDisplayController *)self backgroundView];
  [(NotesDisplayController *)self setView:backgroundView2];

  v6 = +[UIColor ICBackgroundColor];
  view = [(NotesDisplayController *)self view];
  [view setBackgroundColor:v6];

  v8 = [[NoteContentLayer alloc] initWithFrame:{0.0, 0.0, 320.0, 320.0}];
  [(NotesDisplayController *)self setContentLayer:v8];

  note = [(NotesDisplayController *)self note];

  if (note)
  {
    allowsAttachments = [(NotesDisplayController *)self allowsAttachments];
    contentLayer = [(NotesDisplayController *)self contentLayer];
    [contentLayer setAllowsAttachments:allowsAttachments];
  }

  traitCollection = [(NotesDisplayController *)self traitCollection];
  if ([traitCollection ic_hasCompactWidth])
  {
    isMainSplitViewDisplayModeSecondaryOnly = 1;
  }

  else
  {
    viewControllerManager = [(NotesDisplayController *)self viewControllerManager];
    if ([viewControllerManager isAuxiliary])
    {
      isMainSplitViewDisplayModeSecondaryOnly = 1;
    }

    else if (+[UIDevice ic_isVision])
    {
      viewControllerManager2 = [(NotesDisplayController *)self viewControllerManager];
      isMainSplitViewDisplayModeSecondaryOnly = [viewControllerManager2 isMainSplitViewDisplayModeSecondaryOnly];
    }

    else
    {
      isMainSplitViewDisplayModeSecondaryOnly = 0;
    }
  }

  viewControllerManager3 = [(NotesDisplayController *)self viewControllerManager];
  v17 = [viewControllerManager3 noteContainerViewMode] == 0;

  viewControllerManager4 = [(NotesDisplayController *)self viewControllerManager];
  v19 = ([viewControllerManager4 noteContainerViewMode] == 1) | isMainSplitViewDisplayModeSecondaryOnly;

  backgroundView3 = [(NotesDisplayController *)self backgroundView];
  contentLayer2 = [(NotesDisplayController *)self contentLayer];
  [backgroundView3 setContentView:contentLayer2 useSafeAreaLayoutGuide:+[UIDevice ic_isVision](UIDevice standalone:"ic_isVision") needsAdditionalBottomMargin:isMainSplitViewDisplayModeSecondaryOnly needsAdditionalLeadingMargin:v17 force:{v19 & 1, 0}];

  if ((+[UIApplication shouldMakeUIForDefaultPNG]& 1) == 0)
  {
    [(NotesDisplayController *)self updateDate];
  }

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 addObserver:self selector:"_userFontSizeUpdated:" name:UIContentSizeCategoryDidChangeNotification object:0];
  [v22 addObserver:self selector:"applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];
  [v22 addObserver:self selector:"applicationWillResignActive:" name:UIApplicationWillResignActiveNotification object:0];
  [v22 addObserver:self selector:"applicationWillTerminate:" name:UIApplicationWillTerminateNotification object:0];
  [v22 addObserver:self selector:"sceneDidActivate:" name:UISceneDidActivateNotification object:0];
  [v22 addObserver:self selector:"sceneWillDeactivate:" name:UISceneWillDeactivateNotification object:0];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v12 viewDidLoad];
  navigationItem = [(NotesDisplayController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  backgroundView = [(NotesDisplayController *)self backgroundView];
  ic_safeAreaLayoutGuide = [(NotesDisplayController *)self ic_safeAreaLayoutGuide];
  backgroundView2 = [(NotesDisplayController *)self backgroundView];
  [backgroundView addConstraintsForSafeAreaLayoutGuide:ic_safeAreaLayoutGuide toContainer:backgroundView2];

  contentLayer = [(NotesDisplayController *)self contentLayer];
  [contentLayer setDelegate:self];

  contentLayer2 = [(NotesDisplayController *)self contentLayer];
  [contentLayer2 setAttachmentPresentationDelegate:self];

  if ([(NotesDisplayController *)self isEditing])
  {
    contentLayer3 = [(NotesDisplayController *)self contentLayer];
    noteHTMLEditorView = [contentLayer3 noteHTMLEditorView];
    [noteHTMLEditorView startEditing];
  }

  webView = [(NotesDisplayController *)self webView];
  [webView _setFindInteractionEnabled:1];
}

- (void)didReceiveMemoryWarning
{
  v3.receiver = self;
  v3.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v3 didReceiveMemoryWarning];
  [(NotesDisplayController *)self setDidSetContentFromNote:0];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v11.receiver = self;
  v11.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v11 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    viewControllerManager = [(NotesDisplayController *)self viewControllerManager];
    isAuxiliary = [viewControllerManager isAuxiliary];
    if (isAuxiliary)
    {
      isAuxiliary2 = 1;
    }

    else
    {
      ic_viewControllerManager = [(NotesDisplayController *)self ic_viewControllerManager];
      isAuxiliary2 = [ic_viewControllerManager isAuxiliary];
    }

    navigationItem = [(NotesDisplayController *)self navigationItem];
    [navigationItem setHidesBackButton:isAuxiliary2];

    if ((isAuxiliary & 1) == 0)
    {
    }
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v4 willMoveToParentViewController:controller];
  [(NotesDisplayController *)self setToolbarItems:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(NotesDisplayController *)self setIsAppearing:1];
  note = [(NotesDisplayController *)self note];

  if (note)
  {
    delegate = [(NotesDisplayController *)self delegate];
    note2 = [(NotesDisplayController *)self note];
    [delegate noteDisplayController:self beginDisplayingNote:note2 animated:appearCopy];
  }

  if (![(NotesDisplayController *)self didSetContentFromNote])
  {
    [(NotesDisplayController *)self setContentFromNote];
  }

  [(NotesDisplayController *)self updateBarButtonItemsAnimated:0];
  [(NotesDisplayController *)self updateBarsVisibilityAnimated:appearCopy];
  transitionCoordinator = [(NotesDisplayController *)self transitionCoordinator];

  if (transitionCoordinator)
  {
    transitionCoordinator2 = [(NotesDisplayController *)self transitionCoordinator];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10012F1AC;
    v20[3] = &unk_100645E08;
    v20[4] = self;
    [transitionCoordinator2 animateAlongsideTransition:v20 completion:0];
  }

  else
  {
    [(NotesDisplayController *)self updateForceLightContentIfNecessary];
  }

  viewControllerManager = [(NotesDisplayController *)self viewControllerManager];
  isAuxiliary = [viewControllerManager isAuxiliary];
  if (isAuxiliary)
  {
    isAuxiliary2 = 1;
  }

  else
  {
    ic_viewControllerManager = [(NotesDisplayController *)self ic_viewControllerManager];
    isAuxiliary2 = [ic_viewControllerManager isAuxiliary];
  }

  navigationItem = [(NotesDisplayController *)self navigationItem];
  [navigationItem setHidesBackButton:isAuxiliary2];

  if ((isAuxiliary & 1) == 0)
  {
  }

  objc_initWeak(&location, self);
  view = [(NotesDisplayController *)self view];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10012F1B4;
  v17[3] = &unk_100648E68;
  objc_copyWeak(&v18, &location);
  [view ic_addCreateNoteInteractionWithFolderHandler:v17];

  v16.receiver = self;
  v16.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v16 viewWillAppear:appearCopy];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v13 viewDidAppear:appear];
  note = [(NotesDisplayController *)self note];

  if (note)
  {
    eventReporter = [(NotesDisplayController *)self eventReporter];
    note2 = [(NotesDisplayController *)self note];
    [eventReporter startNoteViewEventDurationTrackingForHTMLNote:note2];
  }

  navigationController = [(NotesDisplayController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:0];

  if (![(NotesDisplayController *)self delayingSetContent])
  {
    contentLayer = [(NotesDisplayController *)self contentLayer];
    [contentLayer flashScrollIndicators];
  }

  [(NotesDisplayController *)self setVisible:1];
  [(NotesDisplayController *)self updateNoteProviderStatus];
  contentLayer2 = [(NotesDisplayController *)self contentLayer];
  [contentLayer2 setEditable:1];

  if ([(NotesDisplayController *)self startEditingAfterViewAppears])
  {
    contentLayer3 = [(NotesDisplayController *)self contentLayer];
    noteHTMLEditorView = [contentLayer3 noteHTMLEditorView];
    [noteHTMLEditorView startEditing];

    [(NotesDisplayController *)self setStartEditingAfterViewAppears:0];
  }

  [(NotesDisplayController *)self updateBarButtonItemsAnimated:1];
  v12 = +[ICAppDelegate sharedInstance];
  [v12 didFinishExtendedLaunch];

  [(NotesDisplayController *)self setIsAppearing:0];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)sceneWillDeactivate:(id)deactivate
{
  object = [deactivate object];
  viewIfLoaded = [(NotesDisplayController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  v8 = [object isEqual:windowScene];

  if (v8)
  {
    if ([(NotesDisplayController *)self ic_isViewVisible])
    {
      note = [(NotesDisplayController *)self note];

      if (note)
      {
        eventReporter = [(NotesDisplayController *)self eventReporter];
        note2 = [(NotesDisplayController *)self note];
        [eventReporter submitNoteViewEventForHTMLNote:note2];
      }
    }
  }
}

- (void)sceneDidActivate:(id)activate
{
  object = [activate object];
  viewIfLoaded = [(NotesDisplayController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  v8 = [object isEqual:windowScene];

  if (v8)
  {
    if ([(NotesDisplayController *)self ic_isViewVisible])
    {
      note = [(NotesDisplayController *)self note];

      if (note)
      {
        eventReporter = [(NotesDisplayController *)self eventReporter];
        note2 = [(NotesDisplayController *)self note];
        [eventReporter startNoteViewEventDurationTrackingForHTMLNote:note2];
      }
    }
  }
}

- (BOOL)isEndingNoteDisplay
{
  navigationController = [(NotesDisplayController *)self navigationController];
  isMovingFromParentViewController = [navigationController isMovingFromParentViewController];
  if (isMovingFromParentViewController)
  {
    if ([(NotesDisplayController *)self transitioningToSize])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = ![(NotesDisplayController *)self isAppearing];
    }
  }

  else
  {
    v6 = isMovingFromParentViewController;
    navigationController2 = [(NotesDisplayController *)self navigationController];
    if (([navigationController2 isBeingDismissed] & 1) != 0 || (-[NotesDisplayController isMovingFromParentViewController](self, "isMovingFromParentViewController") & 1) != 0 || -[NotesDisplayController isBeingDismissed](self, "isBeingDismissed"))
    {
      if ([(NotesDisplayController *)self transitioningToSize])
      {
        LOBYTE(v5) = 0;
        if (v6)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v5 = ![(NotesDisplayController *)self isAppearing];
        if (v6)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

LABEL_15:

  return v5;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  note = [(NotesDisplayController *)self note];

  if (note)
  {
    eventReporter = [(NotesDisplayController *)self eventReporter];
    note2 = [(NotesDisplayController *)self note];
    [eventReporter submitNoteViewEventForHTMLNote:note2];
  }

  [(NotesDisplayController *)self saveNote];
  [(NotesDisplayController *)self setVisible:0];
  [(NotesDisplayController *)self updateNoteProviderStatus];
  v13.receiver = self;
  v13.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v13 viewWillDisappear:disappearCopy];
  if ([(NotesDisplayController *)self isEndingNoteDisplay])
  {
    delegate = [(NotesDisplayController *)self delegate];
    note3 = [(NotesDisplayController *)self note];
    [delegate noteDisplayController:self endDisplayingNote:note3 animated:disappearCopy];
  }

  transitionCoordinator = [(NotesDisplayController *)self transitionCoordinator];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10012F8AC;
  v12[3] = &unk_100645E08;
  v12[4] = self;
  [transitionCoordinator animateAlongsideTransition:0 completion:v12];

  view = [(NotesDisplayController *)self view];
  [view ic_removeLinkActionInteractions];

  [(NotesDisplayController *)self stopTextFinding];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(NotesDisplayController *)self isEndingNoteDisplay])
  {
    [(NotesDisplayController *)self prepareForReuse];
  }

  contentLayer = [(NotesDisplayController *)self contentLayer];
  [contentLayer setEditable:0];

  v6.receiver = self;
  v6.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v6 viewDidDisappear:disappearCopy];
}

- (id)displayedActionButtonItemsWithTag:(int64_t)tag
{
  navigationItem = [(NotesDisplayController *)self navigationItem];
  rightBarButtonItems = [navigationItem rightBarButtonItems];
  v7 = [NSMutableArray arrayWithArray:rightBarButtonItems];

  toolbarItems = [(NotesDisplayController *)self toolbarItems];
  [v7 addObjectsFromArray:toolbarItems];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 tag] == tag)
        {
          v15 = v14;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (UIBarButtonItem)closeAuxiliaryWindowButton
{
  closeAuxiliaryWindowButton = self->_closeAuxiliaryWindowButton;
  if (!closeAuxiliaryWindowButton)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Close" value:&stru_100661CF0 table:0];

    v6 = [UIBarButtonItem alloc];
    viewControllerManager = [(NotesDisplayController *)self viewControllerManager];
    v8 = [v6 initWithTitle:v5 style:0 target:viewControllerManager action:"closeAuxiliaryWindow"];
    v9 = self->_closeAuxiliaryWindowButton;
    self->_closeAuxiliaryWindowButton = v8;

    closeAuxiliaryWindowButton = self->_closeAuxiliaryWindowButton;
  }

  return closeAuxiliaryWindowButton;
}

- (UIBarButtonItem)doneButtonItem
{
  doneButtonItem = self->_doneButtonItem;
  if (!doneButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonClicked:"];
    v5 = self->_doneButtonItem;
    self->_doneButtonItem = v4;

    doneButtonItem = self->_doneButtonItem;
  }

  v6 = doneButtonItem;

  return v6;
}

- (void)updateBarButtonItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  traitCollection = [(NotesDisplayController *)self traitCollection];
  if ([traitCollection horizontalSizeClass])
  {
    traitCollection2 = [(NotesDisplayController *)self traitCollection];
    verticalSizeClass = [traitCollection2 verticalSizeClass];

    if (!verticalSizeClass)
    {
      return;
    }

    [(NotesDisplayController *)self updateToolbarButtonItemsAnimated:animatedCopy];
    [(NotesDisplayController *)self updateNavigationBarLeftButtonItemsAnimated:animatedCopy];
    [(NotesDisplayController *)self updateNavigationBarRightButtonItemsAnimated:animatedCopy];
    addButtonItem = [(NotesDisplayController *)self addButtonItem];
    if ([(NotesDisplayController *)self noteCanBeSaved])
    {
      [addButtonItem setEnabled:1];
    }

    else
    {
      note = [(NotesDisplayController *)self note];
      if (note)
      {
        v9 = +[UIApplication shouldMakeUIForDefaultPNG];
      }

      else
      {
        v9 = 1;
      }

      [addButtonItem setEnabled:v9];
    }

    shareButtonItem = [(NotesDisplayController *)self shareButtonItem];
    if ([(NotesDisplayController *)self noteCanBeSaved])
    {
      v11 = 1;
    }

    else
    {
      v11 = +[UIApplication shouldMakeUIForDefaultPNG];
    }

    [shareButtonItem setEnabled:v11];

    traitCollection = [(NotesDisplayController *)self deleteButtonItem];
    note2 = [(NotesDisplayController *)self note];
    if (note2)
    {
      v13 = 1;
    }

    else
    {
      v13 = +[UIApplication shouldMakeUIForDefaultPNG];
    }

    [traitCollection setEnabled:v13];
  }
}

- (NSArray)actionButtonItemsForToolbar
{
  actionButtonItemsForToolbar = self->_actionButtonItemsForToolbar;
  if (!actionButtonItemsForToolbar)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = [UIImage systemImageNamed:@"trash"];
    v6 = [v4 initWithImage:v5 style:0 target:self action:"deleteButtonClicked:"];
    [(NotesDisplayController *)self setDeleteBarButtonItem:v6];

    deleteBarButtonItem = [(NotesDisplayController *)self deleteBarButtonItem];
    [deleteBarButtonItem setTag:2];

    v8 = [UIBarButtonItem alloc];
    v9 = [UIImage systemImageNamed:@"square.and.arrow.up"];
    v10 = [v8 initWithImage:v9 style:0 target:self action:"shareButtonClicked:"];
    [(NotesDisplayController *)self setShareBarButtonItem:v10];

    shareBarButtonItem = [(NotesDisplayController *)self shareBarButtonItem];
    [shareBarButtonItem setTag:1];

    v12 = [UIBarButtonItem alloc];
    v13 = [UIImage systemImageNamed:@"square.and.pencil"];
    v14 = [v12 initWithImage:v13 style:0 target:self action:"addButtonClicked:"];
    [(NotesDisplayController *)self setCreateBarButtonItem:v14];

    createBarButtonItem = [(NotesDisplayController *)self createBarButtonItem];
    [createBarButtonItem setTag:3];

    deleteBarButtonItem2 = [(NotesDisplayController *)self deleteBarButtonItem];
    v17 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:{0, deleteBarButtonItem2}];
    v25[1] = v17;
    shareBarButtonItem2 = [(NotesDisplayController *)self shareBarButtonItem];
    v25[2] = shareBarButtonItem2;
    v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    v25[3] = v19;
    createBarButtonItem2 = [(NotesDisplayController *)self createBarButtonItem];
    v25[4] = createBarButtonItem2;
    v21 = [NSArray arrayWithObjects:v25 count:5];
    v22 = self->_actionButtonItemsForToolbar;
    self->_actionButtonItemsForToolbar = v21;

    [(NotesDisplayController *)self applyAccessibilityInfo];
    actionButtonItemsForToolbar = self->_actionButtonItemsForToolbar;
  }

  v23 = actionButtonItemsForToolbar;

  return v23;
}

- (NSArray)actionButtonItemsForNavBar
{
  actionButtonItemsForNavBar = self->_actionButtonItemsForNavBar;
  if (actionButtonItemsForNavBar)
  {
    v3 = actionButtonItemsForNavBar;
  }

  else
  {
    v31 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
    [v31 setWidth:-1.0];
    v30 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
    [v30 setWidth:10.0];
    v29 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
    [v29 setWidth:10.0];
    v5 = [UIBarButtonItem alloc];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Delete Note" value:&stru_100661CF0 table:0];
    v8 = [UIImage systemImageNamed:@"trash"];
    v9 = [v5 initWithTitle:v7 image:v8 target:self action:"deleteButtonClicked:" menu:0];
    [(NotesDisplayController *)self setDeleteNavBarButtonItem:v9];

    deleteNavBarButtonItem = [(NotesDisplayController *)self deleteNavBarButtonItem];
    [deleteNavBarButtonItem setTag:2];

    v11 = [UIBarButtonItem alloc];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Share" value:&stru_100661CF0 table:0];
    v14 = [UIImage systemImageNamed:@"square.and.arrow.up"];
    v15 = [v11 initWithTitle:v13 image:v14 target:self action:"shareButtonClicked:" menu:0];
    [(NotesDisplayController *)self setShareNavBarButtonItem:v15];

    shareNavBarButtonItem = [(NotesDisplayController *)self shareNavBarButtonItem];
    [shareNavBarButtonItem setTag:1];

    v17 = [UIBarButtonItem alloc];
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"New Note" value:&stru_100661CF0 table:0];
    v20 = [UIImage systemImageNamed:@"square.and.pencil"];
    v21 = [v17 initWithTitle:v19 image:v20 target:self action:"addButtonClicked:" menu:0];
    [(NotesDisplayController *)self setCreateNavBarButtonItem:v21];

    createNavBarButtonItem = [(NotesDisplayController *)self createNavBarButtonItem];
    [createNavBarButtonItem setTag:3];

    v32[0] = v31;
    createNavBarButtonItem2 = [(NotesDisplayController *)self createNavBarButtonItem];
    v32[1] = createNavBarButtonItem2;
    v32[2] = v30;
    shareNavBarButtonItem2 = [(NotesDisplayController *)self shareNavBarButtonItem];
    v32[3] = shareNavBarButtonItem2;
    v32[4] = v29;
    deleteNavBarButtonItem2 = [(NotesDisplayController *)self deleteNavBarButtonItem];
    v32[5] = deleteNavBarButtonItem2;
    v26 = [NSArray arrayWithObjects:v32 count:6];
    v27 = self->_actionButtonItemsForNavBar;
    self->_actionButtonItemsForNavBar = v26;

    [(NotesDisplayController *)self applyAccessibilityInfo];
    v3 = self->_actionButtonItemsForNavBar;
  }

  return v3;
}

- (BOOL)wantsButtonsInToolbar
{
  traitCollection = [(NotesDisplayController *)self traitCollection];
  v3 = [traitCollection horizontalSizeClass] == 1;

  return v3;
}

- (void)updateToolbarButtonItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(NotesDisplayController *)self wantsButtonsInToolbar])
  {
    actionButtonItemsForToolbar = [(NotesDisplayController *)self actionButtonItemsForToolbar];
  }

  else
  {
    actionButtonItemsForToolbar = 0;
  }

  toolbarItems = [(NotesDisplayController *)self toolbarItems];
  if ([actionButtonItemsForToolbar isEqual:toolbarItems])
  {

    goto LABEL_10;
  }

  if (actionButtonItemsForToolbar)
  {
  }

  else
  {
    toolbarItems2 = [(NotesDisplayController *)self toolbarItems];

    if (!toolbarItems2)
    {
      goto LABEL_10;
    }
  }

  [(NotesDisplayController *)self setToolbarItems:actionButtonItemsForToolbar animated:animatedCopy];
LABEL_10:
}

- (void)updateNavigationBarLeftButtonItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerManager = [(NotesDisplayController *)self viewControllerManager];
  if ([viewControllerManager isAuxiliary])
  {
  }

  else
  {
    ic_viewControllerManager = [(NotesDisplayController *)self ic_viewControllerManager];
    isAuxiliary = [ic_viewControllerManager isAuxiliary];

    if (!isAuxiliary)
    {
      return;
    }
  }

  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    navigationItem = [(NotesDisplayController *)self navigationItem];
    closeAuxiliaryWindowButton = [(NotesDisplayController *)self closeAuxiliaryWindowButton];
    [navigationItem setLeftBarButtonItem:closeAuxiliaryWindowButton animated:animatedCopy];
  }
}

- (void)updateNavigationBarRightButtonItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v12 = +[NSMutableArray array];
  if (+[UIDevice ic_isVision])
  {
    [(NotesDisplayController *)self isEditing];
  }

  else
  {
    v5 = +[UIDevice ic_isiPad];
    if ([(NotesDisplayController *)self isEditing]&& (v5 & 1) == 0)
    {
      doneButtonItem = [(NotesDisplayController *)self doneButtonItem];
      [v12 addObject:doneButtonItem];
    }
  }

  if (![(NotesDisplayController *)self wantsButtonsInToolbar])
  {
    actionButtonItemsForNavBar = [(NotesDisplayController *)self actionButtonItemsForNavBar];
    [v12 addObjectsFromArray:actionButtonItemsForNavBar];
  }

  navigationItem = [(NotesDisplayController *)self navigationItem];
  rightBarButtonItems = [navigationItem rightBarButtonItems];
  if (([v12 isEqual:rightBarButtonItems] & 1) == 0)
  {
    if (v12)
    {
    }

    else
    {
      navigationItem2 = [(NotesDisplayController *)self navigationItem];
      rightBarButtonItems2 = [navigationItem2 rightBarButtonItems];

      if (!rightBarButtonItems2)
      {
        goto LABEL_14;
      }
    }

    navigationItem = [(NotesDisplayController *)self navigationItem];
    rightBarButtonItems = [v12 copy];
    [navigationItem setRightBarButtonItems:rightBarButtonItems animated:animatedCopy];
  }

LABEL_14:
}

- (void)updateBarsVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  toolbarItems = [(NotesDisplayController *)self toolbarItems];
  v6 = [toolbarItems count] == 0;

  navigationController = [(NotesDisplayController *)self navigationController];
  [navigationController setToolbarHidden:v6 animated:animatedCopy];
}

- (void)addButtonClicked:(id)clicked
{
  if (![(NotesDisplayController *)self isEditing]|| [(NotesDisplayController *)self noteContainsValuableContent])
  {
    viewControllerManager = [(NotesDisplayController *)self viewControllerManager];
    v4 = [viewControllerManager showNewNoteWithApproach:2 sender:self animated:1];
  }
}

- (void)updateContentViewBezelsStandalone:(BOOL)standalone needsAdditionalBottomMargin:(BOOL)margin needsAdditionalLeadingMargin:(BOOL)leadingMargin
{
  leadingMarginCopy = leadingMargin;
  marginCopy = margin;
  standaloneCopy = standalone;
  backgroundView = [(NotesDisplayController *)self backgroundView];
  [backgroundView updateContentViewBezelsStandalone:standaloneCopy needsAdditionalBottomMargin:marginCopy needsAdditionalLeadingMargin:leadingMarginCopy force:0];
}

- (BOOL)canInsertImagesInNoteContentLayer:(id)layer
{
  allowsAttachments = [(NotesDisplayController *)self allowsAttachments];
  v4 = allowsAttachments & [UIImagePickerController isSourceTypeAvailable:0];
  v5 = [UIImagePickerController availableMediaTypesForSourceType:0];
  identifier = [UTTypeImage identifier];
  v7 = [v5 containsObject:identifier];

  return v4 & v7;
}

- (void)insertImageInNoteContentLayer:(id)layer
{
  v4 = objc_alloc_init(PHPickerConfiguration);
  v5 = +[PHPickerFilter imagesFilter];
  [v4 setFilter:v5];

  [v4 setPreferredAssetRepresentationMode:0];
  v6 = [[PHPickerViewController alloc] initWithConfiguration:v4];
  [v6 setDelegate:self];
  [(NotesDisplayController *)self setPickerController:v6];
  [(NotesDisplayController *)self setPickingAttachment:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100130B4C;
  v8[3] = &unk_10064AB98;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(NotesDisplayController *)self getPickerPopoverSourceRectWithCompletion:v8];
}

- (void)getPickerPopoverSourceRectWithCompletion:(id)completion
{
  completionCopy = completion;
  contentLayer = [(NotesDisplayController *)self contentLayer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100130D84;
  v7[3] = &unk_10064ABE8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [contentLayer getRectForSelectionWithCompletion:v7];
}

- (void)dismissPickerControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(NotesDisplayController *)self isPickingAttachment])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100131020;
    v5[3] = &unk_100645E80;
    v5[4] = self;
    v6 = handlerCopy;
    [(NotesDisplayController *)self dismissViewControllerAnimated:1 completion:v5];
  }
}

- (void)didDismissPickerController
{
  if ([(NotesDisplayController *)self isPickingAttachment])
  {
    contentLayer = [(NotesDisplayController *)self contentLayer];
    noteHTMLEditorView = [contentLayer noteHTMLEditorView];
    [noteHTMLEditorView startEditing];

    [(NotesDisplayController *)self setPickingAttachment:0];

    [(NotesDisplayController *)self setPickerController:0];
  }
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  pickingCopy = picking;
  v6 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E13D4();
  }

  identifier = [UTTypeJPEG identifier];
  v17[0] = identifier;
  identifier2 = [UTTypePNG identifier];
  v17[1] = identifier2;
  identifier3 = [UTTypeHEIC identifier];
  v17[2] = identifier3;
  v10 = [NSArray arrayWithObjects:v17 count:3];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013129C;
  v13[3] = &unk_100645D40;
  v14 = pickingCopy;
  v15 = v10;
  selfCopy = self;
  v11 = v10;
  v12 = pickingCopy;
  [(NotesDisplayController *)self dismissPickerControllerWithCompletionHandler:v13];
}

- (void)showActionsForAttachmentPresentation:(id)presentation atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  presentationCopy = presentation;
  [(NotesDisplayController *)self setEditing:0 animated:1];
  dataFileURL = [presentationCopy dataFileURL];
  v9 = +[UIPrintInfo printInfo];
  filename = [presentationCopy filename];
  [v9 setJobName:filename];

  [v9 setOutputType:1];
  sourceIsManaged = [presentationCopy sourceIsManaged];

  v24[0] = dataFileURL;
  v24[1] = v9;
  v12 = [NSArray arrayWithObjects:v24 count:2];
  v13 = [[UIActivityViewController alloc] initWithActivityItems:v12 applicationActivities:&__NSArray0__struct];
  v23[0] = UIActivityTypeOpenInIBooks;
  v23[1] = ICActivityTypeShareToNote;
  v23[2] = UIActivityTypeSharePlay;
  v14 = [NSArray arrayWithObjects:v23 count:3];
  [v13 setExcludedActivityTypes:v14];

  [v13 setIsContentManaged:sourceIsManaged];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100131B9C;
  v22[3] = &unk_1006485E8;
  v22[4] = self;
  [v13 setCompletionWithItemsHandler:v22];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100131BA4;
  v21[3] = &unk_10064AC38;
  v21[4] = self;
  [v13 setCompletionHandler:v21];
  if (+[UIDevice ic_isVision])
  {
    v15 = -2;
  }

  else
  {
    v15 = 7;
  }

  [v13 setModalPresentationStyle:v15];
  [(NotesDisplayController *)self presentViewController:v13 animated:1 completion:0];
  popoverPresentationController = [v13 popoverPresentationController];
  [(NotesDisplayController *)self setActivityPresentationController:popoverPresentationController];
  view = [(NotesDisplayController *)self view];
  [view safeAreaInsets];
  v19 = v18;

  [popoverPresentationController setSourceRect:{x, y + v19, 0.0, 0.0}];
  webView = [(NotesDisplayController *)self webView];
  [popoverPresentationController setSourceView:webView];

  [popoverPresentationController setPermittedArrowDirections:15];
}

- (CGRect)rectForAttachmentPresentationOccurence:(id)occurence inView:(id *)view
{
  element = [occurence element];
  contentLayer = [(NotesDisplayController *)self contentLayer];
  [contentLayer rectForDOMNode:element];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (view)
  {
    *view = [(NotesDisplayController *)self contentLayer];
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGPoint)pointRelativeToRect:(CGRect)rect fromContentLayerPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  height = rect.size.height;
  width = rect.size.width;
  v8 = rect.origin.y;
  v9 = rect.origin.x;
  if (CGRectIsEmpty(rect))
  {
    v10 = CGPointZero.x;
    v11 = CGPointZero.y;
  }

  else
  {
    v10 = (x - v9) / width;
    v11 = (y - v8) / height;
  }

  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)contentLayerPointFromPoint:(CGPoint)point relativeToRect:(CGRect)rect
{
  v4 = rect.origin.x + point.x * rect.size.width;
  v5 = rect.origin.y + point.y * rect.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)occurenceForPreviewItem:(id)item hintIndex:(int64_t)index
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentation = [itemCopy presentation];
    sourceIsManaged = [presentation sourceIsManaged];
  }

  else
  {
    sourceIsManaged = 0;
  }

  v9 = [(NotesDisplayController *)self attachmentPresentationOccurencesForPreviewingWithManagedInterface:sourceIsManaged];
  if ([v9 count] > index)
  {
    v10 = [v9 objectAtIndexedSubscript:index];
    previewItemURL = [itemCopy previewItemURL];
    previewItemURL2 = [v10 previewItemURL];
    v13 = [previewItemURL2 isEqual:previewItemURL];

    if (v13)
    {
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (CGRect)notesQuickLookActivityItem:(id)item rectForPreviewItem:(id)previewItem inView:(id *)view previewController:(id)controller
{
  controllerCopy = controller;
  previewItemCopy = previewItem;
  v11 = -[NotesDisplayController occurenceForPreviewItem:hintIndex:](self, "occurenceForPreviewItem:hintIndex:", previewItemCopy, [controllerCopy currentPreviewItemIndex]);

  if (v11)
  {
    presentation = [v11 presentation];
    sourceIsManaged = [presentation sourceIsManaged];
    if (controllerCopy && sourceIsManaged)
    {
      isContentManaged = [controllerCopy isContentManaged];

      if ((isContentManaged & 1) == 0)
      {
        NSLog(@"Error: Managed preview item is displayed in a non-managed preview controller %@", v11);
      }
    }

    else
    {
    }

    [(NotesDisplayController *)self rectForAttachmentPresentationOccurence:v11 inView:view];
    x = v19;
    y = v20;
    width = v21;
    height = v22;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)notesQuickLookActivityItem:(id)item transitionImageForPreviewItem:(id)previewItem previewController:(id)controller
{
  controllerCopy = controller;
  previewItemCopy = previewItem;
  v9 = -[NotesDisplayController occurenceForPreviewItem:hintIndex:](self, "occurenceForPreviewItem:hintIndex:", previewItemCopy, [controllerCopy currentPreviewItemIndex]);

  if (v9)
  {
    presentation = [v9 presentation];
    sourceIsManaged = [presentation sourceIsManaged];
    if (controllerCopy && sourceIsManaged)
    {
      isContentManaged = [controllerCopy isContentManaged];

      if ((isContentManaged & 1) == 0)
      {
        NSLog(@"Error: Managed preview item is displayed in a non-managed preview controller %@", v9);
      }
    }

    else
    {
    }

    presentation2 = [v9 presentation];
    v18 = 0;
    v15 = [presentation2 getPresentationData:&v18 mimeType:0 error:0];
    v16 = v18;

    v13 = 0;
    if (v15)
    {
      v13 = [UIImage imageWithData:v16];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)noteActivityItemsForSharing
{
  printFormatter = [(NotesDisplayController *)self printFormatter];
  note = [(NotesDisplayController *)self note];
  isPlainText = [note isPlainText];

  v5 = +[UIPrintInfo printInfo];
  v6 = v5;
  if (isPlainText)
  {
    [v5 setOutputType:2];
  }

  title = [(NoteObject *)self->_note title];
  [v6 setJobName:title];

  v8 = objc_alloc_init(NSMutableArray);
  v9 = [ICNoteLinkPresentationActivityItemSource alloc];
  note2 = [(NotesDisplayController *)self note];
  v11 = [v9 initWithNote:note2];

  [v8 addObject:v11];
  objc_initWeak(&location, self);
  v12 = [ICAirDropNoteActivityItemSource alloc];
  title2 = [(NoteObject *)self->_note title];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100132344;
  v24[3] = &unk_10064AC60;
  objc_copyWeak(&v25, &location);
  v14 = [v12 initWithTitle:title2 airDropDocumentCreator:v24];

  if (v14)
  {
    [v8 addObject:v14];
  }

  v15 = [ICLegacyNoteStringActivityItemSource alloc];
  title3 = [(NoteObject *)self->_note title];
  content = [(NoteObject *)self->_note content];
  contentAsPlainText = [(NoteObject *)self->_note contentAsPlainText];
  v19 = [v15 initWithTitle:title3 content:content plainText:contentAsPlainText];

  if (v19)
  {
    [v8 addObject:v19];
  }

  v27[0] = v6;
  v27[1] = printFormatter;
  v20 = [NSArray arrayWithObjects:v27 count:2];
  [v8 addObjectsFromArray:v20];

  v21 = [v8 copy];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v21;
}

- (UIPrintFormatter)printFormatter
{
  note = [(NotesDisplayController *)self note];
  isPlainText = [note isPlainText];

  if (isPlainText)
  {
    v5 = [UISimpleTextPrintFormatter alloc];
    contentLayer = [(NotesDisplayController *)self contentLayer];
    noteHTMLEditorView = [contentLayer noteHTMLEditorView];
    text = [noteHTMLEditorView text];
    viewPrintFormatter = [v5 initWithText:text];

    v10 = +[UIFont ic_preferredFontForBodyText];
    [viewPrintFormatter setFont:v10];

    [viewPrintFormatter setPerPageContentInsets:{36.0, 36.0, 36.0, 36.0}];
  }

  else
  {
    contentLayer2 = [(NotesDisplayController *)self contentLayer];
    viewPrintFormatter = [contentLayer2 viewPrintFormatter];
  }

  return viewPrintFormatter;
}

- (void)shareButtonClicked:(id)clicked
{
  if ([(NotesDisplayController *)self isEditing])
  {
    [(NotesDisplayController *)self setEditing:0 animated:1];
  }

  [(NotesDisplayController *)self stopTextFinding];
  if (ICDebugModeEnabled())
  {
    v4 = [ICChangeDatesActivity alloc];
    note = [(NotesDisplayController *)self note];
    noteActivityItemsForSharing2 = [v4 initWithObject:note activityType:0];

    v7 = [NotesActivityViewController alloc];
    noteActivityItemsForSharing = [(NotesDisplayController *)self noteActivityItemsForSharing];
    textFindingActivity = [(NotesDisplayController *)self textFindingActivity];
    v22[0] = textFindingActivity;
    v22[1] = noteActivityItemsForSharing2;
    v10 = [NSArray arrayWithObjects:v22 count:2];
    v11 = [(NotesActivityViewController *)v7 initWithActivityItems:noteActivityItemsForSharing applicationActivities:v10];
  }

  else
  {
    v12 = [NotesActivityViewController alloc];
    noteActivityItemsForSharing2 = [(NotesDisplayController *)self noteActivityItemsForSharing];
    noteActivityItemsForSharing = [(NotesDisplayController *)self textFindingActivity];
    v21 = noteActivityItemsForSharing;
    textFindingActivity = [NSArray arrayWithObjects:&v21 count:1];
    v11 = [(NotesActivityViewController *)v12 initWithActivityItems:noteActivityItemsForSharing2 applicationActivities:textFindingActivity];
  }

  v20[0] = UIActivityTypeOpenInIBooks;
  v20[1] = ICActivityTypeShareToNote;
  v20[2] = UIActivityTypeSharePlay;
  v13 = [NSArray arrayWithObjects:v20 count:3];
  [(NotesActivityViewController *)v11 setExcludedActivityTypes:v13];

  [(NotesActivityViewController *)v11 setDisplayController:self];
  store = [(NoteObject *)self->_note store];
  account = [store account];
  -[NotesActivityViewController setIsContentManaged:](v11, "setIsContentManaged:", [account isManaged]);

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100132808;
  v19[3] = &unk_1006485E8;
  v19[4] = self;
  [(NotesActivityViewController *)v11 setCompletionWithItemsHandler:v19];
  [(NotesDisplayController *)self prepareForBarSourcedPopoverPresentation];
  if (+[UIDevice ic_isVision])
  {
    v16 = -2;
  }

  else
  {
    v16 = 7;
  }

  [(NotesActivityViewController *)v11 setModalPresentationStyle:v16];
  [(NotesDisplayController *)self presentViewController:v11 animated:1 completion:0];
  popoverPresentationController = [(NotesActivityViewController *)v11 popoverPresentationController];
  shareButtonItem = [(NotesDisplayController *)self shareButtonItem];
  [popoverPresentationController setBarButtonItem:shareButtonItem];

  [popoverPresentationController setPermittedArrowDirections:3];
}

- (id)textFindingActivity
{
  v2 = [[ICHTMLFindInNoteUIActivity alloc] initWithDelegate:self];

  return v2;
}

- (void)performFindInNote:(id)note
{
  webView = [(NotesDisplayController *)self webView];
  _findInteraction = [webView _findInteraction];
  [_findInteraction presentFindNavigatorShowingReplace:0];
}

- (void)performReplaceInNote:(id)note
{
  webView = [(NotesDisplayController *)self webView];
  _findInteraction = [webView _findInteraction];
  [_findInteraction presentFindNavigatorShowingReplace:1];
}

- (void)performFindInNoteUIActivity:(id)activity
{
  activityCopy = activity;
  webView = [(NotesDisplayController *)self webView];
  _findInteraction = [webView _findInteraction];
  [_findInteraction presentFindNavigatorShowingReplace:0];

  [activityCopy activityDidFinish:1];
}

- (void)stopTextFinding
{
  webView = [(NotesDisplayController *)self webView];
  _findInteraction = [webView _findInteraction];
  isFindNavigatorVisible = [_findInteraction isFindNavigatorVisible];

  if (isFindNavigatorVisible)
  {
    webView2 = [(NotesDisplayController *)self webView];
    _findInteraction2 = [webView2 _findInteraction];
    [_findInteraction2 dismissFindNavigator];
  }
}

- (id)noteHTMLEditorView
{
  contentLayer = [(NotesDisplayController *)self contentLayer];
  noteHTMLEditorView = [contentLayer noteHTMLEditorView];

  return noteHTMLEditorView;
}

- (id)webView
{
  contentLayer = [(NotesDisplayController *)self contentLayer];
  noteHTMLEditorView = [contentLayer noteHTMLEditorView];
  webView = [noteHTMLEditorView webView];

  return webView;
}

- (UIScrollView)scrollView
{
  contentLayer = [(NotesDisplayController *)self contentLayer];
  noteHTMLEditorView = [contentLayer noteHTMLEditorView];
  webView = [noteHTMLEditorView webView];
  scrollView = [webView scrollView];

  return scrollView;
}

- (void)deleteButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  if ([(NotesDisplayController *)self isEditing])
  {
    [(NotesDisplayController *)self setEditing:0 animated:1];
  }

  if ([(NotesDisplayController *)self noteShouldBeDiscarded])
  {
    [(NotesDisplayController *)self setIsUpdatingNoteContent:1];
    delegate = [(NotesDisplayController *)self delegate];
    note = [(NotesDisplayController *)self note];
    [delegate noteDisplayController:self deleteNote:note actionOrigin:1];

    [(NotesDisplayController *)self setIsUpdatingNoteContent:0];
  }

  else
  {
    note2 = [(NotesDisplayController *)self note];
    v8 = [ICDeleteDecisionController alloc];
    v17 = note2;
    v9 = [NSArray arrayWithObjects:&v17 count:1];
    view = [(NotesDisplayController *)self view];
    window = [view window];
    eventReporter = [(NotesDisplayController *)self eventReporter];
    v13 = [(ICDeleteDecisionController *)v8 initWithSourceObjects:v9 window:window sender:clickedCopy eventReporter:eventReporter];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100132DF4;
    v15[3] = &unk_1006487E8;
    v15[4] = self;
    v16 = note2;
    v14 = note2;
    [(ICDeleteDecisionController *)v13 performDecisionWithCompletion:v15];
  }
}

- (void)didDismissDeleteAlertController
{
  [(NotesDisplayController *)self updateBarButtonItemsAnimated:0];
  [(NotesDisplayController *)self cleanupAfterBarSourcedPopoverPresentation];

  [(NotesDisplayController *)self setDeletePresentationController:0];
}

- (void)setPerformingDeleteAnimation:(BOOL)animation
{
  if (self->_performingDeleteAnimation != animation)
  {
    self->_performingDeleteAnimation = animation;
    [(NotesDisplayController *)self setUserInteractionEnabled:!animation];
  }
}

- (void)animateDeleteTransitionWithCompletion:(id)completion
{
  completionCopy = completion;
  [(NotesDisplayController *)self setPerformingDeleteAnimation:1];
  view = [(NotesDisplayController *)self view];
  superview = [view superview];

  contentLayer = [(NotesDisplayController *)self contentLayer];
  v8 = [contentLayer snapshotViewAfterScreenUpdates:0];

  [superview addSubview:v8];
  backgroundView = [(NotesDisplayController *)self backgroundView];
  [backgroundView setContentViewVisible:0];

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001330F8;
  v18[3] = &unk_10064AC88;
  v22 = IsReduceMotionEnabled;
  v11 = v8;
  v19 = v11;
  selfCopy = self;
  v12 = completionCopy;
  v21 = v12;
  v13 = objc_retainBlock(v18);
  v14 = v13;
  if (IsReduceMotionEnabled)
  {
    (v13[2])(v13);
  }

  else
  {
    v23 = v11;
    v15 = [NSArray arrayWithObjects:&v23 count:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001332DC;
    v16[3] = &unk_1006465D0;
    v17 = v14;
    [UIView performSystemAnimation:0 onViews:v15 options:0 animations:0 completion:v16];
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (!enabled && [(NotesDisplayController *)self isEditing])
  {
    [(NotesDisplayController *)self setEditing:0 animated:0];
  }

  navigationController = [(NotesDisplayController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setUserInteractionEnabled:enabledCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  navigationController2 = [(NotesDisplayController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  subviews = [navigationBar2 subviews];

  v10 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(subviews);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v14 setUserInteractionEnabled:enabledCopy];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  navigationController3 = [(NotesDisplayController *)self navigationController];
  toolbar = [navigationController3 toolbar];
  [toolbar setUserInteractionEnabled:enabledCopy];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  activityPresentationController = [(NotesDisplayController *)self activityPresentationController];

  if (activityPresentationController == dismissCopy)
  {
    [(NotesDisplayController *)self didDismissActivityController];
  }

  else
  {
    presentedViewController = [dismissCopy presentedViewController];
    pickerController = [(NotesDisplayController *)self pickerController];

    if (presentedViewController == pickerController)
    {
      [(NotesDisplayController *)self didDismissPickerController];
    }

    else
    {
      deletePresentationController = [(NotesDisplayController *)self deletePresentationController];

      v8 = dismissCopy;
      if (deletePresentationController != dismissCopy)
      {
        goto LABEL_8;
      }

      [(NotesDisplayController *)self didDismissDeleteAlertController];
    }
  }

  v8 = dismissCopy;
LABEL_8:
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(NotesDisplayController *)self isEditing]!= editing)
  {
    if (editingCopy)
    {
      delegate = [(NotesDisplayController *)self delegate];
      v8 = [delegate canBeginEditingForNoteDisplayController:self];

      if ((v8 & 1) == 0)
      {
        v16 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1004E14CC(v16);
        }

        goto LABEL_19;
      }

      [(NotesDisplayController *)self turnOnContentLengthTrackingIfNeeded];
    }

    else
    {
      contentLayer = [(NotesDisplayController *)self contentLayer];
      [contentLayer setTracksMaximumContentLength:0];
    }

    v17.receiver = self;
    v17.super_class = NotesDisplayController;
    [(NotesDisplayController *)&v17 setEditing:editingCopy animated:animatedCopy];
    if (editingCopy)
    {
      [(NotesDisplayController *)self setIsRespondingToStartEditing:1];
      [(NotesDisplayController *)self rememberNoteContentForEditingIntent];
    }

    else
    {
      [(NotesDisplayController *)self setIsRespondingToEndEditing:1];
      contentLayer2 = [(NotesDisplayController *)self contentLayer];
      noteHTMLEditorView = [contentLayer2 noteHTMLEditorView];
      [noteHTMLEditorView stopEditing];

      [(NotesDisplayController *)self invalidateAutosaveTimer];
      [(NotesDisplayController *)self saveNote];
      [(NotesDisplayController *)self donateEditingIntentIfNecessary];
    }

    if ([(NotesDisplayController *)self isViewLoaded]&& [(NotesDisplayController *)self isVisible])
    {
      if (editingCopy)
      {
        contentLayer3 = [(NotesDisplayController *)self contentLayer];
        noteHTMLEditorView2 = [contentLayer3 noteHTMLEditorView];
        [noteHTMLEditorView2 startEditing];
      }
    }

    else if (editingCopy)
    {
      [(NotesDisplayController *)self setStartEditingAfterViewAppears:1];
    }

    [(NotesDisplayController *)self updateBarButtonItemsAnimated:animatedCopy];
    [(NotesDisplayController *)self updateDate];
    [(NotesDisplayController *)self updateNoteUserActivityState];
    [(NotesDisplayController *)self updateBarButtonItemsAnimated:0];
    if ([(NotesDisplayController *)self isEditing])
    {
      delegate2 = [(NotesDisplayController *)self delegate];
      note = [(NotesDisplayController *)self note];
      [delegate2 noteDisplayController:self beginEditingNote:note animated:animatedCopy];

      v16 = +[NSNotificationCenter defaultCenter];
      [v16 postNotificationName:ICNoteEditorViewControllerDidStartEditingNotification object:self];
LABEL_19:
    }
  }
}

- (void)rememberNoteContentForEditingIntent
{
  note = [(NotesDisplayController *)self note];
  contentAsPlainTextPreservingNewlines = [note contentAsPlainTextPreservingNewlines];
  [(NotesDisplayController *)self setOriginalPlainTextNoteContent:contentAsPlainTextPreservingNewlines];

  originalPlainTextNoteContent = [(NotesDisplayController *)self originalPlainTextNoteContent];
  -[NotesDisplayController setIsEditingNewNote:](self, "setIsEditingNewNote:", [originalPlainTextNoteContent length] == 0);
}

- (void)donateEditingIntentIfNecessary
{
  note = [(NotesDisplayController *)self note];
  contentAsPlainTextPreservingNewlines = [note contentAsPlainTextPreservingNewlines];
  v5 = [contentAsPlainTextPreservingNewlines length];

  if (v5)
  {
    if ([(NotesDisplayController *)self isEditingNewNote])
    {
      note2 = [(NotesDisplayController *)self note];
      v7 = [ICIntentsUtilities interactionForCreateNote:note2];
      [ICIntentsUtilities donateInteraction:v7];
      goto LABEL_4;
    }

    originalPlainTextNoteContent = [(NotesDisplayController *)self originalPlainTextNoteContent];

    if (originalPlainTextNoteContent)
    {
      note3 = [(NotesDisplayController *)self note];
      note2 = [note3 contentAsPlainTextPreservingNewlines];

      originalPlainTextNoteContent2 = [(NotesDisplayController *)self originalPlainTextNoteContent];
      v11 = [note2 hasPrefix:originalPlainTextNoteContent2];

      if (!v11)
      {
        goto LABEL_5;
      }

      originalPlainTextNoteContent3 = [(NotesDisplayController *)self originalPlainTextNoteContent];
      v7 = [note2 substringFromIndex:{objc_msgSend(originalPlainTextNoteContent3, "length")}];

      if ([v7 hasPrefix:@"\n"])
      {
        v13 = [v7 substringFromIndex:1];

        note4 = [(NotesDisplayController *)self note];
        v15 = [ICIntentsUtilities interactionForAppendToNote:note4 withAppendedText:v13];
        [ICIntentsUtilities donateInteraction:v15];

        v7 = v13;
      }

LABEL_4:

LABEL_5:
    }
  }

  [(NotesDisplayController *)self setIsEditingNewNote:0];

  [(NotesDisplayController *)self setOriginalPlainTextNoteContent:0];
}

- (id)noteIdentifierForNoteContentLayer:(id)layer
{
  note = [(NotesDisplayController *)self note];
  identifier = [note identifier];

  return identifier;
}

- (BOOL)noteContentLayerShouldBeginEditing:(id)editing isUserInitiated:(BOOL)initiated
{
  if (([UIApplication shouldMakeUIForDefaultPNG:editing]& 1) != 0)
  {
    return 0;
  }

  [(NotesDisplayController *)self stopTextFinding];
  note = [(NotesDisplayController *)self note];

  if (!note)
  {
    return 0;
  }

  presentedViewController = [(NotesDisplayController *)self presentedViewController];

  if (presentedViewController)
  {
    return 0;
  }

  delegate = [(NotesDisplayController *)self delegate];
  v9 = [delegate canBeginEditingForNoteDisplayController:self];

  return v9;
}

- (void)noteContentLayerContentDidChange:(id)change updatedTitle:(BOOL)title fromDrop:(BOOL)drop
{
  dropCopy = drop;
  titleCopy = title;
  [(NotesDisplayController *)self setIsUpdatingNoteContent:0];
  [(NotesDisplayController *)self resetAutosaveTimer];
  [(NotesDisplayController *)self setContentHasUnsavedChanges:1];
  v12 = +[NSDate ic_modificationDateForNoteBeingEdited];
  note = [(NotesDisplayController *)self note];
  modificationDate = [note modificationDate];
  v10 = [modificationDate isEqual:v12];

  if ((v10 & 1) == 0)
  {
    note2 = [(NotesDisplayController *)self note];
    [note2 setModificationDate:v12];
  }

  if (titleCopy)
  {
    [(NotesDisplayController *)self updateNoteTitle];
    [(NotesDisplayController *)self updateNoteProviderStatus];
    [(NotesDisplayController *)self updateNoteUserActivityState];
  }

  [(NotesDisplayController *)self updateBarButtonItemsAnimated:0];
  if (dropCopy)
  {
    [(NotesDisplayController *)self saveNote];
  }
}

- (BOOL)noteContentLayer:(id)layer acceptStringIncreasingContentLength:(id)length
{
  lengthCopy = length;
  if ([(NotesDisplayController *)self noteHasSizeLimit])
  {
    v6 = [lengthCopy dataUsingEncoding:4];
    v7 = [v6 length];

    v8 = [(NotesDisplayController *)self acceptNewSize:&v7[[(NotesDisplayController *)self estimatedSizeOfDisplayedContent]]];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)noteContentLayer:(id)layer setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  layerCopy = layer;
  if (editingCopy)
  {
    if ([(NotesDisplayController *)self isRespondingToStartEditing])
    {
      [(NotesDisplayController *)self setIsRespondingToStartEditing:0];
      goto LABEL_9;
    }
  }

  else if ([(NotesDisplayController *)self isRespondingToEndEditing])
  {
LABEL_5:
    [(NotesDisplayController *)self setIsRespondingToEndEditing:0];
    goto LABEL_9;
  }

  if ([(NotesDisplayController *)self isEditing]!= editingCopy && ![(NotesDisplayController *)self isPickingAttachment]&& ![(NotesDisplayController *)self isChangingTraitCollection])
  {
    [(NotesDisplayController *)self setEditing:editingCopy animated:animatedCopy];
    [(NotesDisplayController *)self setIsRespondingToStartEditing:0];
    goto LABEL_5;
  }

LABEL_9:
}

- (void)noteContentLayer:(id)layer willHitTestWithEvent:(id)event
{
  eventCopy = event;
  v5 = +[NSUserDefaults standardUserDefaults];
  if (+[ICDeviceSupport deviceSupportsPencil])
  {
    presentedViewController = [(NotesDisplayController *)self presentedViewController];
    if (presentedViewController)
    {
LABEL_3:

      goto LABEL_10;
    }

    if (([v5 BOOLForKey:@"hasShownPencilUnsupportedAlertForHTMLNote"] & 1) == 0)
    {
      if ([eventCopy _hidEvent])
      {
        Children = IOHIDEventGetChildren();
        if (Children)
        {
          v8 = Children;
          if (CFArrayGetCount(Children))
          {
            CFArrayGetValueAtIndex(v8, 0);
            [eventCopy _hidEvent];
            if (IOHIDEventGetType() == 11 && !IOHIDEventGetIntegerValue())
            {
              v9 = +[NSBundle mainBundle];
              presentedViewController = [v9 localizedStringForKey:@"Drawing Not Supported" value:&stru_100661CF0 table:0];

              v10 = +[NSBundle mainBundle];
              v18 = [v10 localizedStringForKey:@"Drawing using Apple Pencil is only supported on notes in your iCloud or On My iPad accounts." value:&stru_100661CF0 table:0];

              v11 = [UIAlertController alertControllerWithTitle:presentedViewController message:v18 preferredStyle:1];
              v12 = +[NSBundle mainBundle];
              v13 = [v12 localizedStringForKey:@"OK" value:&stru_100661CF0 table:0];
              v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];

              [v11 addAction:v14];
              v15 = +[NSBundle mainBundle];
              v16 = [v15 localizedStringForKey:@"Settings" value:&stru_100661CF0 table:0];
              v17 = [UIAlertAction actionWithTitle:v16 style:0 handler:&stru_10064ACA8];

              [v11 addAction:v17];
              [v5 setBool:1 forKey:@"hasShownPencilUnsupportedAlertForHTMLNote"];
              [(NotesDisplayController *)self presentViewController:v11 animated:1 completion:0];

              goto LABEL_3;
            }
          }
        }
      }
    }
  }

LABEL_10:
}

- (BOOL)noteContentLayer:(id)layer acceptContentsFromItemProviders:(id)providers
{
  if (![(NotesDisplayController *)self noteHasSizeLimit:layer])
  {
    return 1;
  }

  v5 = [(NotesDisplayController *)self estimatedSizeOfDisplayedContent]+ 1000000;

  return [(NotesDisplayController *)self acceptNewSize:v5];
}

- (BOOL)noteContentLayer:(id)layer acceptContentsFromPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  if ([(NotesDisplayController *)self noteHasSizeLimit])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [pasteboardCopy ic_dataForPasteboardTypes:{0, 0}];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v9 += [*(*(&v14 + 1) + 8 * i) ic_lengthAsMIMEAttachment];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v12 = [(NotesDisplayController *)self acceptNewSize:[(NotesDisplayController *)self estimatedSizeOfDisplayedContent]+ v9];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)noteContentLayer:(id)layer showShareSheetForAttachment:(id)attachment atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  attachmentCopy = attachment;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  attachmentPresentations = [(NotesDisplayController *)self attachmentPresentations];
  v10 = [attachmentPresentations countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(attachmentPresentations);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        contentID = [v14 contentID];
        v16 = [contentID isEqualToString:attachmentCopy];

        if (v16)
        {
          [(NotesDisplayController *)self showActionsForAttachmentPresentation:v14 atPoint:x, y];
          goto LABEL_11;
        }
      }

      v11 = [attachmentPresentations countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)noteContentLayer:(id)layer openURL:(id)l
{
  lCopy = l;
  v5 = +[UIApplication sharedApplication];
  [v5 openURL:lCopy options:&__NSDictionary0__struct completionHandler:0];
}

- (void)noteContentLayer:(id)layer didInvokeFormattingCalloutOption:(int64_t)option
{
  v5 = qword_1006CB428;
  v6 = [NSNumber numberWithInteger:option];
  v9 = [v5 objectForKeyedSubscript:v6];

  if (v9)
  {
    eventReporter = [(NotesDisplayController *)self eventReporter];
    note = [(NotesDisplayController *)self note];
    [eventReporter submitNoteEditorCallOutBarButtonSelectionEventForHTMLNote:note buttonTypeValue:{objc_msgSend(v9, "integerValue")}];
  }
}

- (void)noteContentLayer:(id)layer didInvokeStyleFormattingOption:(int64_t)option
{
  v5 = qword_1006CB430;
  v6 = [NSNumber numberWithInteger:option];
  v9 = [v5 objectForKeyedSubscript:v6];

  if (v9)
  {
    eventReporter = [(NotesDisplayController *)self eventReporter];
    note = [(NotesDisplayController *)self note];
    [eventReporter submitStyleFormatEventForHTMLNote:note styleTypeValue:{objc_msgSend(v9, "integerValue")}];
  }
}

- (id)noteContentLayer:(id)layer updateAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v62 = +[NSMutableDictionary dictionary];
  v5 = +[NSMutableDictionary dictionary];
  v6 = +[NSMutableArray array];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = attachmentsCopy;
  v7 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v76;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v76 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [NSURL URLWithString:*(*(&v75 + 1) + 8 * i)];
        resourceSpecifier = [v11 resourceSpecifier];

        if (resourceSpecifier)
        {
          allKeys = [v5 allKeys];
          resourceSpecifier2 = [v11 resourceSpecifier];
          v15 = [allKeys containsObject:resourceSpecifier2];

          if (v15)
          {
            [v6 addObject:v11];
          }

          resourceSpecifier3 = [v11 resourceSpecifier];
          [v5 setObject:v11 forKeyedSubscript:resourceSpecifier3];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
    }

    while (v8);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  note = [(NotesDisplayController *)self note];
  attachments = [note attachments];

  v19 = [attachments countByEnumeratingWithState:&v71 objects:v82 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v72;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v72 != v21)
        {
          objc_enumerationMutation(attachments);
        }

        v23 = *(*(&v71 + 1) + 8 * j);
        contentID = [v23 contentID];

        if (contentID)
        {
          contentID2 = [v23 contentID];
          v26 = [NSString ic_newURLForContentID:contentID2 percentEscaped:0];

          contentID3 = [v23 contentID];
          [v5 removeObjectForKey:contentID3];

          [v6 removeObject:v26];
        }
      }

      v20 = [attachments countByEnumeratingWithState:&v71 objects:v82 count:16];
    }

    while (v20);
  }

  allValues = [v5 allValues];
  v29 = [allValues arrayByAddingObjectsFromArray:v6];

  v30 = [NSSet setWithArray:v29];
  if ([v30 count])
  {
    note2 = [(NotesDisplayController *)self note];
    managedObjectContext = [note2 managedObjectContext];

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v56 = v30;
    v32 = v30;
    v65 = [v32 countByEnumeratingWithState:&v67 objects:v81 count:16];
    if (v65)
    {
      v55 = v29;
      v33 = 0;
      v34 = *v68;
      v60 = v6;
      v61 = v5;
      v58 = *v68;
      v59 = v32;
      do
      {
        for (k = 0; k != v65; k = k + 1)
        {
          if (*v68 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v67 + 1) + 8 * k);
          scheme = [v36 scheme];
          v38 = [scheme isEqualToString:@"cid"];

          if (v38)
          {
            resourceSpecifier4 = [v36 resourceSpecifier];
            v40 = [(NotesDisplayController *)self noteAttachmentObjectWithContentID:resourceSpecifier4];

            if (v40)
            {
              v66 = 0;
              v41 = [v40 attachmentDataWithError:&v66];
              v42 = v66;
              if (v42)
              {
                v43 = os_log_create("com.apple.notes", "UI");
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v80 = v36;
                  _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Could not load attachment data for attachment %@", buf, 0xCu);
                }
              }

              v44 = +[NotesApp sharedNotesApp];
              noteContext = [v44 noteContext];

              v46 = +[ICLegacyContentUtilities generateContentID];
              mimeType = [v40 mimeType];
              filename = [v40 filename];
              v49 = [ICLegacyContentUtilities createAttachmentWithContentID:v46 mimeType:mimeType data:v41 filename:filename inContext:noteContext];

              note3 = [(NotesDisplayController *)self note];
              [note3 addAttachmentsObject:v49];

              cidURL = [v49 cidURL];
              absoluteString = [cidURL absoluteString];
              absoluteString2 = [v36 absoluteString];
              [v62 setObject:absoluteString forKeyedSubscript:absoluteString2];

              v33 = 1;
              v6 = v60;
              v5 = v61;
              v34 = v58;
              v32 = v59;
            }
          }
        }

        v65 = [v32 countByEnumeratingWithState:&v67 objects:v81 count:16];
      }

      while (v65);

      v29 = v55;
      if (v33)
      {
        [managedObjectContext ic_save];
      }
    }

    else
    {
    }

    v30 = v56;
  }

  return v62;
}

- (void)showAttachmentsUnsupportedAlertForNoteContentLayer:(id)layer
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Unsupported Attachment" value:&stru_100661CF0 table:0];
  note = [(NotesDisplayController *)self note];
  store = [note store];
  account = [store account];
  localizedAttachmentsNotSupportedReason = [account localizedAttachmentsNotSupportedReason];
  v13 = [UIAlertController alertControllerWithTitle:v5 message:localizedAttachmentsNotSupportedReason preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_100661CF0 table:0];
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:0];

  [v13 addAction:v12];
  [(NotesDisplayController *)self presentViewController:v13 animated:1 completion:0];
}

- (id)archivedConfiguration
{
  if ([(NotesDisplayController *)self noteContainsValuableContent])
  {
    v3 = +[NSMutableDictionary dictionary];
    note = [(NotesDisplayController *)self note];
    if (note)
    {
      v5 = note;
      note2 = [(NotesDisplayController *)self note];
      integerId = [note2 integerId];

      if (integerId)
      {
        note3 = [(NotesDisplayController *)self note];
        integerId2 = [note3 integerId];
        [v3 setObject:integerId2 forKey:@"NoteRecordId"];
      }
    }

    if ([(NotesDisplayController *)self isEditing])
    {
      v10 = [NSNumber numberWithBool:1];
      [v3 setObject:v10 forKey:@"IsEditing"];
    }

    contentLayer = [(NotesDisplayController *)self contentLayer];

    if (contentLayer)
    {
      contentLayer2 = [(NotesDisplayController *)self contentLayer];
      [contentLayer2 contentOffset];
      v14 = v13;
      v16 = v15;

      if (v14 != CGPointZero.x || v16 != CGPointZero.y)
      {
        v21.x = v14;
        v21.y = v16;
        v18 = NSStringFromCGPoint(v21);
        [v3 setObject:v18 forKey:@"ContentOffset"];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)restoreState
{
  pendingArchivedNoteID = [(NotesDisplayController *)self pendingArchivedNoteID];

  if (pendingArchivedNoteID)
  {
    note = [(NotesDisplayController *)self note];
    integerId = [note integerId];
    pendingArchivedNoteID2 = [(NotesDisplayController *)self pendingArchivedNoteID];
    v7 = [integerId isEqual:pendingArchivedNoteID2];

    if (v7)
    {
      if ([(NotesDisplayController *)self pendingArchivedEditingState])
      {
        [(NotesDisplayController *)self setEditing:1 animated:0];
      }

      contentLayer = [(NotesDisplayController *)self contentLayer];
      [(NotesDisplayController *)self pendingArchivedContentOffset];
      [contentLayer setContentOffset:?];
    }

    [(NotesDisplayController *)self setPendingArchivedContentOffset:CGPointZero.x, CGPointZero.y];
    [(NotesDisplayController *)self setPendingArchivedNoteID:0];

    [(NotesDisplayController *)self setPendingArchivedEditingState:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = NotesDisplayController;
  coordinatorCopy = coordinator;
  [(NotesDisplayController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  contentLayer = [(NotesDisplayController *)self contentLayer];
  [contentLayer setNeedsUpdateConstraints];

  [(NotesDisplayController *)self setTransitioningToSize:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001351A8;
  v9[3] = &unk_100645E08;
  v9[4] = self;
  [coordinatorCopy animateAlongsideTransition:&stru_10064ACC8 completion:v9];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  [(NotesDisplayController *)self setChangingTraitCollection:1];
  contentLayer = [(NotesDisplayController *)self contentLayer];
  isFirstResponder = [contentLayer isFirstResponder];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100135320;
  v11[3] = &unk_10064ACF0;
  v11[4] = self;
  v12 = isFirstResponder;
  [coordinatorCopy animateAlongsideTransition:0 completion:v11];
  v10.receiver = self;
  v10.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v10 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
}

- (id)contextManager
{
  defaultContextManager = qword_1006CB438;
  if (qword_1006CB438)
  {
    goto LABEL_5;
  }

  v3 = UISystemRootDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"/System/Library/PrivateFrameworks/AssistantServices.framework"];

  v5 = [NSBundle bundleWithPath:v4];
  if ([v5 load])
  {
    qword_1006CB438 = NSClassFromString(@"AFContextManager");
  }

  defaultContextManager = qword_1006CB438;
  if (qword_1006CB438)
  {
LABEL_5:
    defaultContextManager = [defaultContextManager defaultContextManager];
  }

  return defaultContextManager;
}

- (void)updateContextProviderStatus
{
  canProvideNote = [(NotesDisplayController *)self canProvideNote];
  contextManager = [(NotesDisplayController *)self contextManager];
  v5 = contextManager;
  if (canProvideNote)
  {
    [contextManager addContextProvider:self];
  }

  else
  {
    [contextManager removeContextProvider:self];
  }
}

- (id)getCurrentContext
{
  [(NotesDisplayController *)self saveNote];
  v3 = [NSMutableArray arrayWithCapacity:1];
  v4 = NSClassFromString(@"SANoteObject");
  if (!v4)
  {
    v5 = [CPSystemRootDirectory() stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/SAObjects.framework/SAObjects"];
    if (dlopen([v5 UTF8String], 1))
    {
      v4 = NSClassFromString(@"SANoteObject");
    }

    else
    {
      NSLog(@"Unable to load framework");
      v4 = 0;
    }
  }

  object = [(objc_class *)v4 object];
  if (object)
  {
    noteId = [(NoteObject *)self->_note noteId];
    [object setIdentifier:noteId];

    dictionary = [object dictionary];
    [v3 addObject:dictionary];
  }

  return v3;
}

- (void)setNeedsStatusBarAppearanceUpdate
{
  v4.receiver = self;
  v4.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v4 setNeedsStatusBarAppearanceUpdate];
  navigationController = [(NotesDisplayController *)self navigationController];
  [navigationController setNeedsStatusBarAppearanceUpdate];
}

- (int64_t)preferredStatusBarStyle
{
  if (+[UITraitCollection ic_alwaysShowLightContent])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)updateForceLightContentIfNecessary
{
  v3 = +[UITraitCollection ic_alwaysShowLightContent];
  v4 = v3;
  v5 = v3;
  if (v3)
  {
    v6 = [UITraitCollection traitCollectionWithUserInterfaceStyle:v3];
  }

  else
  {
    v6 = 0;
  }

  parentViewController = [(NotesDisplayController *)self parentViewController];
  [parentViewController setOverrideTraitCollection:v6 forChildViewController:self];

  navigationController = [(NotesDisplayController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setOverrideUserInterfaceStyle:v5];

  view = [(NotesDisplayController *)self view];
  [view setOverrideUserInterfaceStyle:v5];

  webView = [(NotesDisplayController *)self webView];
  [webView setOverrideUserInterfaceStyle:v5];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    view2 = [(NotesDisplayController *)self view];
    backgroundColor = [view2 backgroundColor];

    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_100135978;
    v33 = &unk_10064AD38;
    v35 = v4;
    v34 = backgroundColor;
    v14 = backgroundColor;
    v15 = [UIColor colorWithDynamicProvider:&v30];
    v16 = objc_alloc_init(UINavigationBarAppearance);
    [v16 configureWithTransparentBackground];
    [v16 setBackgroundColor:v15];
    navigationController2 = [(NotesDisplayController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 setStandardAppearance:v16];

    navigationController3 = [(NotesDisplayController *)self navigationController];
    navigationBar3 = [navigationController3 navigationBar];
    [navigationBar3 setCompactAppearance:v16];

    navigationItem = [(NotesDisplayController *)self navigationItem];
    [navigationItem setStandardAppearance:v16];

    navigationItem2 = [(NotesDisplayController *)self navigationItem];
    [navigationItem2 setCompactAppearance:v16];

    navigationController4 = [(NotesDisplayController *)self navigationController];
    toolbar = [navigationController4 toolbar];
    standardAppearance = [toolbar standardAppearance];

    [standardAppearance configureWithTransparentBackground];
    [standardAppearance setBackgroundColor:v15];
    navigationController5 = [(NotesDisplayController *)self navigationController];
    toolbar2 = [navigationController5 toolbar];
    [toolbar2 setStandardAppearance:standardAppearance];

    navigationController6 = [(NotesDisplayController *)self navigationController];
    toolbar3 = [navigationController6 toolbar];
    [toolbar3 setCompactAppearance:standardAppearance];
  }

  [(NotesDisplayController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)updateUserActivityStatus
{
  if ([(NotesDisplayController *)self canProvideNote])
  {
    noteUserActivity = [(NotesDisplayController *)self noteUserActivity];

    if (!noteUserActivity)
    {
      v5 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Notes"];
      [v5 setDelegate:self];
      [v5 setEligibleForSearch:1];
      [(NotesDisplayController *)self setNoteUserActivity:v5];
      [(NotesDisplayController *)self updateNoteUserActivityState];
      noteUserActivity2 = [(NotesDisplayController *)self noteUserActivity];
      [noteUserActivity2 becomeCurrent];
    }
  }

  else
  {

    [(NotesDisplayController *)self invalidateNoteUserActivity];
  }
}

- (void)updateNoteUserActivityState
{
  noteUserActivity = [(NotesDisplayController *)self noteUserActivity];
  if (noteUserActivity)
  {
    v4 = noteUserActivity;
    note = [(NotesDisplayController *)self note];

    if (note)
    {
      v6 = [NoteUserActivityState alloc];
      note2 = [(NotesDisplayController *)self note];
      v23 = [(NoteUserActivityState *)v6 initWithNote:note2];

      note3 = [(NotesDisplayController *)self note];
      title = [note3 title];
      [(NoteUserActivityState *)v23 setTitle:title];

      note4 = [(NotesDisplayController *)self note];
      guid = [note4 guid];
      [(NoteUserActivityState *)v23 setNoteID:guid];

      [(NoteUserActivityState *)v23 setEditing:[(NotesDisplayController *)self isEditing]];
      note5 = [(NotesDisplayController *)self note];
      modificationDate = [note5 modificationDate];

      if ([(NotesDisplayController *)self isEditing])
      {
        v14 = +[NSDate date];

        modificationDate = v14;
      }

      [(NoteUserActivityState *)v23 setModificationDate:modificationDate];
      note6 = [(NotesDisplayController *)self note];
      creationDate = [note6 creationDate];
      [(NoteUserActivityState *)v23 setCreationDate:creationDate];

      note7 = [(NotesDisplayController *)self note];
      LODWORD(creationDate) = sub_10008BB04(note7);

      if (creationDate)
      {
        note8 = [(NotesDisplayController *)self note];
        -[NoteUserActivityState setContentPlainText:](v23, "setContentPlainText:", [note8 isPlainText]);
      }

      [(NotesDisplayController *)self setNoteUserActivityState:v23];
      note9 = [(NotesDisplayController *)self note];
      v20 = sub_10008BC10(note9);
      noteUserActivity2 = [(NotesDisplayController *)self noteUserActivity];
      [noteUserActivity2 setEligibleForHandoff:v20];

      noteUserActivity3 = [(NotesDisplayController *)self noteUserActivity];
      [noteUserActivity3 setNeedsSave:1];
    }
  }
}

- (void)invalidateNoteUserActivity
{
  noteUserActivity = [(NotesDisplayController *)self noteUserActivity];
  [noteUserActivity setDelegate:0];

  noteUserActivity2 = [(NotesDisplayController *)self noteUserActivity];
  [noteUserActivity2 invalidate];

  [(NotesDisplayController *)self setNoteUserActivity:0];

  [(NotesDisplayController *)self setNoteUserActivityState:0];
}

- (void)userActivityWasContinued:(id)continued
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100135E70;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)userActivityWillSave:(id)save
{
  obj = save;
  objc_sync_enter(obj);
  noteUserActivityState = [(NotesDisplayController *)self noteUserActivityState];
  [noteUserActivityState updateUserActivity:obj];

  objc_sync_exit(obj);
}

- (void)runScrollPerformanceTest:(id)test iterations:(int)iterations
{
  v4 = *&iterations;
  testCopy = test;
  contentLayer = [(NotesDisplayController *)self contentLayer];
  noteHTMLEditorView = [contentLayer noteHTMLEditorView];
  webView = [noteHTMLEditorView webView];
  scrollView = [webView scrollView];
  [scrollView bounds];
  v12 = v11;

  v17 = objc_opt_self();
  contentLayer2 = [v17 contentLayer];
  noteHTMLEditorView2 = [contentLayer2 noteHTMLEditorView];
  webView2 = [noteHTMLEditorView2 webView];
  scrollView2 = [webView2 scrollView];
  [scrollView2 _performScrollTest:testCopy iterations:v4 delta:v12];
}

- (void)applyAccessibilityInfo
{
  v3 = +[NSBundle mainBundle];
  v26 = [v3 localizedStringForKey:@"New note" value:&stru_100661CF0 table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Double tap to compose a new note." value:&stru_100661CF0 table:0];

  createBarButtonItem = [(NotesDisplayController *)self createBarButtonItem];
  [createBarButtonItem setAccessibilityLabel:v26];

  createNavBarButtonItem = [(NotesDisplayController *)self createNavBarButtonItem];
  [createNavBarButtonItem setAccessibilityLabel:v26];

  createBarButtonItem2 = [(NotesDisplayController *)self createBarButtonItem];
  [createBarButtonItem2 setAccessibilityHint:v5];

  createNavBarButtonItem2 = [(NotesDisplayController *)self createNavBarButtonItem];
  [createNavBarButtonItem2 setAccessibilityHint:v5];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Share note" value:&stru_100661CF0 table:0];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Double tap to share the current note." value:&stru_100661CF0 table:0];

  shareBarButtonItem = [(NotesDisplayController *)self shareBarButtonItem];
  [shareBarButtonItem setAccessibilityLabel:v11];

  shareNavBarButtonItem = [(NotesDisplayController *)self shareNavBarButtonItem];
  [shareNavBarButtonItem setAccessibilityLabel:v11];

  shareBarButtonItem2 = [(NotesDisplayController *)self shareBarButtonItem];
  [shareBarButtonItem2 setAccessibilityHint:v13];

  shareNavBarButtonItem2 = [(NotesDisplayController *)self shareNavBarButtonItem];
  [shareNavBarButtonItem2 setAccessibilityHint:v13];

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Delete note" value:&stru_100661CF0 table:0];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Double tap to delete the current note." value:&stru_100661CF0 table:0];

  deleteBarButtonItem = [(NotesDisplayController *)self deleteBarButtonItem];
  [deleteBarButtonItem setAccessibilityLabel:v19];

  deleteNavBarButtonItem = [(NotesDisplayController *)self deleteNavBarButtonItem];
  [deleteNavBarButtonItem setAccessibilityLabel:v19];

  deleteBarButtonItem2 = [(NotesDisplayController *)self deleteBarButtonItem];
  [deleteBarButtonItem2 setAccessibilityHint:v21];

  deleteNavBarButtonItem2 = [(NotesDisplayController *)self deleteNavBarButtonItem];
  [deleteNavBarButtonItem2 setAccessibilityHint:v21];
}

- (void)updateViewAnnotation
{
  view = [(NotesDisplayController *)self view];
  note = [(NotesDisplayController *)self note];
  [view ic_annotateWithNote:note];
}

- (NotesDisplayControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerManager);

  return WeakRetained;
}

- (CGPoint)inOccurenceActivityOrigin
{
  x = self->_inOccurenceActivityOrigin.x;
  y = self->_inOccurenceActivityOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)pendingArchivedContentOffset
{
  x = self->_pendingArchivedContentOffset.x;
  y = self->_pendingArchivedContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_NSRange)selectedRangeBeforeTextFinding
{
  p_selectedRangeBeforeTextFinding = &self->_selectedRangeBeforeTextFinding;
  location = self->_selectedRangeBeforeTextFinding.location;
  length = p_selectedRangeBeforeTextFinding->length;
  result.length = length;
  result.location = location;
  return result;
}

@end