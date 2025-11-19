@interface NotesDisplayController
+ (void)initialize;
- (BOOL)acceptNewSize:(unint64_t)a3;
- (BOOL)allowsAttachments;
- (BOOL)canInsertImagesInNoteContentLayer:(id)a3;
- (BOOL)isEndingNoteDisplay;
- (BOOL)noteContainsValuableContent;
- (BOOL)noteContentLayer:(id)a3 acceptContentsFromItemProviders:(id)a4;
- (BOOL)noteContentLayer:(id)a3 acceptContentsFromPasteboard:(id)a4;
- (BOOL)noteContentLayer:(id)a3 acceptStringIncreasingContentLength:(id)a4;
- (BOOL)noteContentLayerShouldBeginEditing:(id)a3 isUserInitiated:(BOOL)a4;
- (BOOL)noteHasSizeLimit;
- (BOOL)noteMatchesDisplayedContent:(id)a3;
- (BOOL)noteShouldBeDiscarded;
- (BOOL)wantsButtonsInToolbar;
- (BOOL)wantsToRemainFirstResponder;
- (CGPoint)contentLayerPointFromPoint:(CGPoint)a3 relativeToRect:(CGRect)a4;
- (CGPoint)inOccurenceActivityOrigin;
- (CGPoint)pendingArchivedContentOffset;
- (CGPoint)pointRelativeToRect:(CGRect)a3 fromContentLayerPoint:(CGPoint)a4;
- (CGRect)notesQuickLookActivityItem:(id)a3 rectForPreviewItem:(id)a4 inView:(id *)a5 previewController:(id)a6;
- (CGRect)rectForAttachmentPresentationOccurence:(id)a3 inView:(id *)a4;
- (ICViewControllerManager)viewControllerManager;
- (NSArray)actionButtonItemsForNavBar;
- (NSArray)actionButtonItemsForToolbar;
- (NotesDisplayController)initWithArchivedConfiguration:(id)a3;
- (NotesDisplayControllerDelegate)delegate;
- (UIBarButtonItem)closeAuxiliaryWindowButton;
- (UIBarButtonItem)doneButtonItem;
- (UIPrintFormatter)printFormatter;
- (UIScrollView)scrollView;
- (_NSRange)selectedRangeBeforeTextFinding;
- (id)archivedConfiguration;
- (id)attachmentContentIDs;
- (id)attachmentPresentationOccurencesForPreviewingWithManagedInterface:(BOOL)a3;
- (id)contextManager;
- (id)displayedActionButtonItemsWithTag:(int64_t)a3;
- (id)getCurrentContext;
- (id)newlyCreatedAttachmentPresentationWithData:(id)a3 mimeType:(id)a4 preferredFilename:(id)a5;
- (id)noteActivityItemsForSharing;
- (id)noteAttachmentObjectWithContentID:(id)a3;
- (id)noteAttachmentPresentationForContentID:(id)a3;
- (id)noteContentLayer:(id)a3 fileURLForAttachmentWithContentID:(id)a4;
- (id)noteContentLayer:(id)a3 updateAttachments:(id)a4;
- (id)noteHTMLEditorView;
- (id)noteIdentifierForNoteContentLayer:(id)a3;
- (id)notesQuickLookActivityItem:(id)a3 transitionImageForPreviewItem:(id)a4 previewController:(id)a5;
- (id)occurenceForPreviewItem:(id)a3 hintIndex:(int64_t)a4;
- (id)textFindingActivity;
- (id)webView;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)estimatedSizeOfDisplayedContent;
- (void)addButtonClicked:(id)a3;
- (void)animateDeleteTransitionWithCompletion:(id)a3;
- (void)applyAccessibilityInfo;
- (void)captureDisplayedNoteVersion;
- (void)copyNoteHTMLToPasteboard;
- (void)dealloc;
- (void)deleteButtonClicked:(id)a3;
- (void)didChangeNoteProviderStatus;
- (void)didDismissDeleteAlertController;
- (void)didDismissPickerController;
- (void)didReceiveMemoryWarning;
- (void)dismissPickerControllerWithCompletionHandler:(id)a3;
- (void)displayNote:(id)a3;
- (void)donateEditingIntentIfNecessary;
- (void)getPickerPopoverSourceRectWithCompletion:(id)a3;
- (void)insertAttachmentWithData:(id)a3 mimeType:(id)a4 preferredFilename:(id)a5;
- (void)insertImageInNoteContentLayer:(id)a3;
- (void)invalidateAutosaveTimer;
- (void)invalidateNoteUserActivity;
- (void)loadView;
- (void)noteContentLayer:(id)a3 didInvokeFormattingCalloutOption:(int64_t)a4;
- (void)noteContentLayer:(id)a3 didInvokeStyleFormattingOption:(int64_t)a4;
- (void)noteContentLayer:(id)a3 openURL:(id)a4;
- (void)noteContentLayer:(id)a3 setEditing:(BOOL)a4 animated:(BOOL)a5;
- (void)noteContentLayer:(id)a3 showShareSheetForAttachment:(id)a4 atPoint:(CGPoint)a5;
- (void)noteContentLayer:(id)a3 willHitTestWithEvent:(id)a4;
- (void)noteContentLayerContentDidChange:(id)a3 updatedTitle:(BOOL)a4 fromDrop:(BOOL)a5;
- (void)performFindInNote:(id)a3;
- (void)performFindInNoteUIActivity:(id)a3;
- (void)performReplaceInNote:(id)a3;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)prepareForDefaultImageSnapshotForScreen:(id)a3;
- (void)prepareForPresentation;
- (void)prepareForReuse;
- (void)prepareForSerializationWithLeftoverPresentations:(id *)a3 createdAttachments:(id *)a4;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)refreshAttachmentPresentations;
- (void)registerTraitChanges;
- (void)reloadContentLayer;
- (void)rememberNoteContentForEditingIntent;
- (void)resetAutosaveTimer;
- (void)restoreState;
- (void)runScrollPerformanceTest:(id)a3 iterations:(int)a4;
- (void)saveNote;
- (void)sceneDidActivate:(id)a3;
- (void)sceneWillDeactivate:(id)a3;
- (void)setAllAttachmentPresentationOccurences:(id)a3;
- (void)setContentFromNote;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setNeedsStatusBarAppearanceUpdate;
- (void)setNote:(id)a3;
- (void)setPerformingDeleteAnimation:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)shareButtonClicked:(id)a3;
- (void)showActionsForAttachmentPresentation:(id)a3 atPoint:(CGPoint)a4;
- (void)showAttachmentsUnsupportedAlertForNoteContentLayer:(id)a3;
- (void)significantTimeChange;
- (void)stopTextFinding;
- (void)turnOnContentLengthTrackingIfNeeded;
- (void)updateBarButtonItemsAnimated:(BOOL)a3;
- (void)updateBarsVisibilityAnimated:(BOOL)a3;
- (void)updateContentViewBezelsStandalone:(BOOL)a3 needsAdditionalBottomMargin:(BOOL)a4 needsAdditionalLeadingMargin:(BOOL)a5;
- (void)updateContextProviderStatus;
- (void)updateDate;
- (void)updateForceLightContentIfNecessary;
- (void)updateNavigationBarLeftButtonItemsAnimated:(BOOL)a3;
- (void)updateNavigationBarRightButtonItemsAnimated:(BOOL)a3;
- (void)updateNote:(id)a3;
- (void)updateNoteFromInterface;
- (void)updateNoteProviderStatus;
- (void)updateNoteTitle;
- (void)updateNoteUserActivityState;
- (void)updateToolbarButtonItemsAnimated:(BOOL)a3;
- (void)updateUserActivityStatus;
- (void)updateViewAnnotation;
- (void)userActivityWasContinued:(id)a3;
- (void)userActivityWillSave:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)warnUserAboutNoteSizeLimitExceeded;
- (void)willMoveToParentViewController:(id)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
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

- (NotesDisplayController)initWithArchivedConfiguration:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NotesDisplayController;
  v5 = [(NotesDisplayController *)&v12 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"IsEditing"];
    v5->_pendingArchivedEditingState = [v6 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"ContentOffset"];
    v8 = CGPointFromString(v7);

    v5->_pendingArchivedContentOffset = v8;
    v9 = [v4 objectForKeyedSubscript:@"NoteRecordId"];
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
    v4 = [(NotesDisplayController *)self contextManager];
    [v4 removeContextProvider:self];

    [(NotesDisplayController *)self invalidateNoteUserActivity];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NotesDisplayController *)self attachmentPresentations];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) contentIDURL];
        [NotesCIDURLProtocol unregisterDataProviderForCIDURL:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(NoteContentLayer *)self->_contentLayer setDelegate:0];
  [(NoteContentLayer *)self->_contentLayer setAttachmentPresentationDelegate:0];
  [(UIPresentationController *)self->_activityPresentationController setDelegate:0];
  v11 = [(PHPickerViewController *)self->_pickerController popoverPresentationController];
  [v11 setDelegate:0];

  v12.receiver = self;
  v12.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v12 dealloc];
}

- (void)invalidateAutosaveTimer
{
  v3 = [(NotesDisplayController *)self autosaveTimer];
  [v3 invalidate];

  [(NotesDisplayController *)self setAutosaveTimer:0];
}

- (void)resetAutosaveTimer
{
  v3 = [(NotesDisplayController *)self autosaveTimer];
  v4 = [v3 isValid];

  if (v4)
  {
    v6 = [(NotesDisplayController *)self autosaveTimer];
    v5 = [NSDate dateWithTimeIntervalSinceNow:2.0];
    [v6 setFireDate:v5];
  }

  else
  {
    v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"autosaveTimerFired:" selector:0 userInfo:0 repeats:2.0];
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
  v3 = [(NotesDisplayController *)self contentLayer];
  v4 = [v3 noteHTMLEditorView];
  [v4 stopEditing];

  v5 = [(NotesDisplayController *)self contentLayer];
  [v5 setTracksMaximumContentLength:0];

  v6 = [(NotesDisplayController *)self contentLayer];
  [v6 setContent:&stru_100661CF0 isPlainText:0 attachments:0];

  [(NotesDisplayController *)self setDisplayedNoteVersionTimestamp:0];
  [(NotesDisplayController *)self setDisplayedNoteVersionObjectID:0];
  [(NotesDisplayController *)self invalidateAutosaveTimer];

  [(NotesDisplayController *)self setContentHasUnsavedChanges:0];
}

- (void)significantTimeChange
{
  v3 = [(NotesDisplayController *)self autosaveTimer];

  if (v3)
  {

    [(NotesDisplayController *)self resetAutosaveTimer];
  }
}

- (void)updateDate
{
  if ([(NotesDisplayController *)self contentHasUnsavedChanges])
  {
    v5 = +[NSDate date];
  }

  else
  {
    v3 = [(NotesDisplayController *)self note];
    v5 = [v3 modificationDate];
  }

  v4 = [(NotesDisplayController *)self contentLayer];
  [v4 setTimestampDate:v5];
}

- (void)prepareForDefaultImageSnapshotForScreen:(id)a3
{
  v4 = [(NotesDisplayController *)self deletePresentationController];

  if (v4)
  {
    v5 = [(NotesDisplayController *)self deletePresentationController];
    v6 = [v5 presentingViewController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10012C3E4;
    v7[3] = &unk_100645E30;
    v7[4] = self;
    [v6 dismissViewControllerAnimated:0 completion:v7];
  }
}

- (void)copyNoteHTMLToPasteboard
{
  v2 = [(NotesDisplayController *)self contentLayer];
  [v2 copyNoteHTMLToPasteboard];
}

- (BOOL)noteMatchesDisplayedContent:(id)a3
{
  v4 = a3;
  if ([(NotesDisplayController *)self contentHasUnsavedChanges])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 objectID];
    v7 = [(NotesDisplayController *)self displayedNoteVersionObjectID];
    if ([v6 isEqual:v7])
    {
      v8 = [v4 modificationDate];
      v9 = [(NotesDisplayController *)self displayedNoteVersionTimestamp];
      v5 = [v8 isEqual:v9];
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
  v3 = [(NotesDisplayController *)self note];
  v4 = [v3 objectID];
  [(NotesDisplayController *)self setDisplayedNoteVersionObjectID:v4];

  v6 = [(NotesDisplayController *)self note];
  v5 = [v6 modificationDate];
  [(NotesDisplayController *)self setDisplayedNoteVersionTimestamp:v5];
}

- (void)setNote:(id)a3
{
  v4 = a3;
  objc_opt_class();
  obj = ICCheckedDynamicCast();

  note = self->_note;
  if (note != obj && note != 0)
  {
    v7 = [(NotesDisplayController *)self view];
    v8 = [v7 window];

    if (v8)
    {
      v9 = [(NotesDisplayController *)self eventReporter];
      [v9 submitNoteViewEventForHTMLNote:self->_note];
    }
  }

  objc_storeStrong(&self->_note, obj);
  v10 = [(NoteObject *)obj store];
  v11 = [v10 account];

  if (v11)
  {
    v12 = [v11 preventMovingNotesToOtherAccounts];
  }

  else
  {
    v12 = 0;
  }

  [(NotesDisplayController *)self setNoteIsManaged:v12];
  if (self->_note)
  {
    v13 = [(NotesDisplayController *)self allowsAttachments];
    v14 = [(NotesDisplayController *)self contentLayer];
    [v14 setAllowsAttachments:v13];
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
      v15 = [(NotesDisplayController *)self view];
      v16 = [v15 window];

      if (v16)
      {
        v17 = [(NotesDisplayController *)self eventReporter];
        [v17 startNoteViewEventDurationTrackingForHTMLNote:self->_note];
      }
    }
  }

  [(NotesDisplayController *)self stopTextFinding];
  [(NotesDisplayController *)self updateViewAnnotation];
}

- (void)updateNote:(id)a3
{
  [(NotesDisplayController *)self setNote:a3];
  [(NotesDisplayController *)self setContentHasUnsavedChanges:1];
  [(NotesDisplayController *)self updateNoteFromInterface];
  v5 = [(NotesDisplayController *)self note];
  v4 = +[NSDate ic_modificationDateForNoteBeingEdited];
  [v5 setModificationDate:v4];
}

- (void)displayNote:(id)a3
{
  v10 = a3;
  v4 = [(NotesDisplayController *)self note];
  if (v4 == v10)
  {
  }

  else
  {
    v5 = +[UIApplication shouldMakeUIForDefaultPNG];

    if ((v5 & 1) == 0)
    {
      if ([(NotesDisplayController *)self noteMatchesDisplayedContent:v10])
      {
        [(NotesDisplayController *)self setNote:v10];
      }

      else
      {
        [(NotesDisplayController *)self stopTextFinding];
        if ([(NotesDisplayController *)self isEditing])
        {
          [(NotesDisplayController *)self setEditing:0 animated:0];
        }

        [(NotesDisplayController *)self setNote:v10];
        v8 = [(NotesDisplayController *)self contentLayer];
        [v8 scrollToTopAnimated:0];

        v9 = [(NotesDisplayController *)self contentLayer];

        if (v9)
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

  v6 = v10;
  if (v10)
  {
    goto LABEL_17;
  }

  v7 = [(NotesDisplayController *)self contentLayer];

  if (v7)
  {
    [(NotesDisplayController *)self setContentFromNote];
    [(NotesDisplayController *)self updateDate];
  }

  else
  {
    [(NotesDisplayController *)self setDidSetContentFromNote:0];
  }

LABEL_16:
  v6 = v10;
LABEL_17:
}

- (void)updateNoteTitle
{
  v3 = [(NotesDisplayController *)self contentLayer];
  v5 = [v3 title];

  v4 = [(NotesDisplayController *)self note];
  [v4 setTitle:v5];
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
          v9 = [(NoteObject *)self->_note attachments];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10012CCB4;
          v20[3] = &unk_10064AB10;
          v20[4] = v8;
          v10 = [NSPredicate predicateWithBlock:v20];
          v11 = [v9 filteredSetUsingPredicate:v10];
          v12 = [v11 anyObject];

          if (v12)
          {
            v13 = [v12 managedObjectContext];
            [v13 deleteObject:v12];

            [(NoteObject *)self->_note removeAttachmentsObject:v12];
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v5);
    }

    v14 = [(NotesDisplayController *)self contentLayer];
    v15 = [v14 contentAsPlainText:{-[NoteObject isPlainText](self->_note, "isPlainText")}];

    v16 = [(NotesDisplayController *)self note];
    [v16 setContent:v15];

    v17 = [(NotesDisplayController *)self note];
    [v17 addAttachments:v18];

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
      v3 = [(NotesDisplayController *)self eventReporter];
      v4 = [(NotesDisplayController *)self note];
      [v3 submitNoteEditEventForHTMLNote:v4];

      v5 = [(NotesDisplayController *)self note];
      v6 = +[NSDate date];
      [v5 setModificationDate:v6];

      v7 = +[NotesApp sharedNotesApp];
      v8 = [v7 noteContext];
      v15 = 0;
      v9 = [v8 save:&v15];
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
      v13 = [(NotesDisplayController *)self note];
      v14 = [v13 store];
      [v12 refreshNotesIfNeededForCollection:v14];

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
    v4 = [(NotesDisplayController *)self note];
    v5 = [v4 content];
    if ([v5 ic_containsNonWhitespaceCharacters])
    {
      v3 = 1;
    }

    else
    {
      v6 = [(NotesDisplayController *)self note];
      v7 = [v6 attachments];
      v3 = [v7 count] != 0;
    }
  }

  v8 = [(NotesDisplayController *)self note];
  v9 = v8 != 0;
  if (v8 && !v3)
  {
    v10 = [(NotesDisplayController *)self contentLayer];
    v9 = [v10 contentContainsValuableContent];
  }

  return v9;
}

- (BOOL)noteShouldBeDiscarded
{
  v3 = [(NotesDisplayController *)self note];
  if (v3 && ![(NotesDisplayController *)self isUpdatingNoteContent])
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
  v3 = [(NotesDisplayController *)self note];
  if (v3 && [(NotesDisplayController *)self isVisible])
  {
    if ([(NotesDisplayController *)self isEditing])
    {
      v4 = [(NotesDisplayController *)self noteCanBeSaved];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  if (v4 != [(NotesDisplayController *)self canProvideNote])
  {
    [(NotesDisplayController *)self setCanProvideNote:v4];

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
  v2 = [(NotesDisplayController *)self note];
  v3 = [v2 store];
  v4 = [v3 account];
  v5 = [v4 accountType] == 1;

  return v5;
}

- (unint64_t)estimatedSizeOfDisplayedContent
{
  v3 = [(NotesDisplayController *)self contentLayer];
  v4 = [v3 title];
  v5 = [v4 dataUsingEncoding:4];

  v6 = [v5 length];
  v7 = [(NotesDisplayController *)self contentLayer];
  v8 = [(NotesDisplayController *)self note];
  v9 = [v7 contentAsPlainText:{objc_msgSend(v8, "isPlainText")}];
  v10 = [v9 dataUsingEncoding:4];

  v11 = &v6[[v10 length]];
  v12 = [(NotesDisplayController *)self attachmentPresentations];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * v16);
        v21 = 0;
        [v17 getPresentationData:&v21 mimeType:0 error:0];
        v18 = v21;
        v11 = &v11[[v18 ic_lengthAsMIMEAttachment]];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

- (BOOL)acceptNewSize:(unint64_t)a3
{
  v9 = 0;
  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E1360();
  }

  v6 = sub_10010ADE4(a3, &v9);
  if (v6)
  {
    if (v9)
    {
      v7 = [(NotesDisplayController *)self contentLayer];
      [v7 setTracksMaximumContentLength:1];
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

  v10 = [(NotesDisplayController *)self contentLayer];
  if (![v10 tracksMaximumContentLength])
  {
    if (([(NotesDisplayController *)self isEditing]& 1) == 0)
    {
      v3 = [(NotesDisplayController *)self note];
      v4 = [v3 content];
      if ([v4 length] < 0x493E0)
      {
        v5 = [(NotesDisplayController *)self note];
        v6 = [v5 attachments];
        v7 = [v6 count];

        if (!v7)
        {
          return;
        }

LABEL_12:
        v11 = 0;
        v8 = sub_10010ADE4([(NotesDisplayController *)self estimatedSizeOfDisplayedContent], &v11);
        v9 = [(NotesDisplayController *)self contentLayer];
        [v9 setTracksMaximumContentLength:v11 | !v8];

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
  v2 = [(NotesDisplayController *)self note];
  v3 = [v2 store];
  v4 = [v3 account];
  v5 = [v4 supportsAttachments];

  return v5;
}

- (void)setAllAttachmentPresentationOccurences:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  allAttachmentPresentationOccurences = self->_allAttachmentPresentationOccurences;
  self->_allAttachmentPresentationOccurences = v5;

  v9 = [v4 ic_objectsPassingTest:&stru_10064AB30];

  v7 = [v9 copy];
  nonManagedAttachmentPresentationOccurences = self->_nonManagedAttachmentPresentationOccurences;
  self->_nonManagedAttachmentPresentationOccurences = v7;
}

- (id)attachmentPresentationOccurencesForPreviewingWithManagedInterface:(BOOL)a3
{
  v3 = &OBJC_IVAR___NotesDisplayController__nonManagedAttachmentPresentationOccurences;
  if (a3)
  {
    v3 = &OBJC_IVAR___NotesDisplayController__allAttachmentPresentationOccurences;
  }

  return *&self->ICNAViewController_opaque[*v3];
}

- (id)attachmentContentIDs
{
  v2 = [(NotesDisplayController *)self contentLayer];
  v3 = [v2 noteHTMLEditorView];
  v4 = [v3 attachmentContentIDs];

  return v4;
}

- (void)prepareForPresentation
{
  v3 = [(NotesDisplayController *)self attachmentContentIDs];
  v4 = [(NotesDisplayController *)self attachmentPresentations];
  v6 = 0;
  [NoteAttachmentPresentation prepareDocumentForPresentationWithAttachmentContentIDs:v3 withAttachmentPresentations:v4 occurences:&v6];
  v5 = v6;

  [(NotesDisplayController *)self setAllAttachmentPresentationOccurences:v5];
}

- (void)prepareForSerializationWithLeftoverPresentations:(id *)a3 createdAttachments:(id *)a4
{
  v5 = +[NotesApp sharedNotesApp];
  v37 = [v5 noteContext];

  v6 = [(NotesDisplayController *)self attachmentPresentations];
  v7 = [NSMutableOrderedSet orderedSetWithArray:v6];

  v32 = +[NSMutableSet set];
  v8 = [(NotesDisplayController *)self note];
  v9 = [v8 attachments];
  v10 = [v9 allObjects];
  v11 = [v10 ic_dictionaryByHashingContentWithFunction:&stru_10064AB50];
  v12 = [v11 mutableCopy];

  v13 = [(NotesDisplayController *)self attachmentPresentations];
  v14 = [v13 ic_dictionaryByHashingContentWithFunction:&stru_10064AB70];
  v15 = [v14 mutableCopy];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = self;
  v16 = [(NotesDisplayController *)self attachmentContentIDs];
  v17 = [v16 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v42;
    v35 = v12;
    v36 = v7;
    v33 = v16;
    v34 = v15;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(v16);
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
            v27 = [v23 contentID];
            v28 = [v23 filename];
            v22 = [ICLegacyContentUtilities createAttachmentWithContentID:v27 mimeType:v25 data:v24 filename:v28 inContext:v37];

            if (v22)
            {
              [v32 addObject:v22];
            }

            v12 = v35;
            v7 = v36;
            v16 = v33;
            v15 = v34;
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v18);
  }

  if (a4)
  {
    *a4 = [v32 copy];
  }

  if (a3)
  {
    *a3 = [v7 array];
  }

  [(NotesDisplayController *)v31 setAllAttachmentPresentationOccurences:0];
}

- (id)newlyCreatedAttachmentPresentationWithData:(id)a3 mimeType:(id)a4 preferredFilename:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    v10 = a3;
    v11 = +[ICLegacyContentUtilities generateContentID];
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = [ICLegacyContentUtilities suggestedFilenameForURL:0 mimeType:v8];
    }

    v14 = v12;
    v15 = +[NotesApp sharedNotesApp];
    v16 = [v15 noteContext];

    v17 = [ICLegacyContentUtilities createAttachmentWithContentID:v11 mimeType:v8 data:v10 filename:v14 inContext:v16];

    v18 = [(NotesDisplayController *)self note];
    [v18 addAttachmentsObject:v17];

    v19 = [(NotesDisplayController *)self note];
    v20 = [v19 managedObjectContext];
    [v20 ic_save];

    v13 = [[NoteAttachmentPresentation alloc] initWithNoteAttachmentObject:v17];
    v21 = [(NotesDisplayController *)self attachmentPresentations];
    v22 = [v21 arrayByAddingObject:v13];

    [(NotesDisplayController *)self setAttachmentPresentations:v22];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)insertAttachmentWithData:(id)a3 mimeType:(id)a4 preferredFilename:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if (![(NotesDisplayController *)self noteHasSizeLimit])
  {
    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = -[NotesDisplayController acceptNewSize:](self, "acceptNewSize:", [v13 ic_lengthAsMIMEAttachment] + -[NotesDisplayController estimatedSizeOfDisplayedContent](self, "estimatedSizeOfDisplayedContent"));
  if (v13 && (v10 & 1) != 0)
  {
LABEL_6:
    v11 = [(NotesDisplayController *)self newlyCreatedAttachmentPresentationWithData:v13 mimeType:v8 preferredFilename:v9];
    v12 = [(NotesDisplayController *)self contentLayer];
    [v12 replaceSelectionWithAttachmentPresentation:v11];
  }

LABEL_7:
}

- (id)noteAttachmentPresentationForContentID:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(NotesDisplayController *)self attachmentPresentations];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 contentID];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = v10;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = [(NotesDisplayController *)self noteAttachmentObjectWithContentID:v4];
  if (v5)
  {
    v13 = [[NoteAttachmentPresentation alloc] initWithNoteAttachmentObject:v5];
LABEL_12:
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)noteAttachmentObjectWithContentID:(id)a3
{
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(NotesDisplayController *)self note];
  v6 = [v5 attachments];

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v7)
  {

LABEL_13:
    v16 = [(NotesDisplayController *)self note];
    v17 = [v16 managedObjectContext];
    v18 = [ICLegacyAttachmentUtilities attachmentWithContentID:v4 context:v17];

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
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      v13 = [v12 contentID];
      v14 = [v13 isEqualToString:v4];

      if (v14)
      {
        v15 = v12;

        v9 = v15;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v8);

  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v9;
}

- (id)noteContentLayer:(id)a3 fileURLForAttachmentWithContentID:(id)a4
{
  v4 = [(NotesDisplayController *)self noteAttachmentPresentationForContentID:a4];
  v5 = [v4 dataFileURL];

  return v5;
}

- (void)setContentFromNote
{
  v3 = [(NotesDisplayController *)self contentLayer];
  v4 = [v3 delegate];

  if (v4 == self)
  {
    v5 = [(NotesDisplayController *)self contentLayer];
    [v5 setDelegate:0];

    v6 = [(NotesDisplayController *)self contentLayer];
    [v6 setAttachmentPresentationDelegate:0];
  }

  v7 = [(NotesDisplayController *)self note];
  v8 = [v7 content];

  v9 = [(NotesDisplayController *)self note];
  v10 = [v9 isPlainText];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012E478;
  v15[3] = &unk_1006462D8;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v17 = v10;
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

  if (v4 == self)
  {
    v13 = [(NotesDisplayController *)self contentLayer];
    [v13 setDelegate:self];

    v14 = [(NotesDisplayController *)self contentLayer];
    [v14 setAttachmentPresentationDelegate:self];
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
    v3 = [(NotesDisplayController *)self contentLayer];
    v4 = [v3 noteHTMLEditorView];
    [v4 setNeedsDisplay];

    v5 = [(NotesDisplayController *)self contentLayer];
    [v5 setNeedsLayout];

    [(NotesDisplayController *)self setEditing:1 animated:0];
  }

  else
  {
    [(NotesDisplayController *)self prepareForSerializationWithLeftoverPresentations:0 createdAttachments:0];
    [(NotesDisplayController *)self prepareForPresentation];
    v6 = [(NotesDisplayController *)self contentLayer];
    v7 = [v6 noteHTMLEditorView];
    [v7 setNeedsDisplay];

    v8 = [(NotesDisplayController *)self contentLayer];
    [v8 setNeedsLayout];
  }
}

- (void)refreshAttachmentPresentations
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [(NotesDisplayController *)self attachmentPresentations];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v23 + 1) + 8 * i) contentIDURL];
        [NotesCIDURLProtocol unregisterDataProviderForCIDURL:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v9 = [(NoteObject *)self->_note attachments];
  v10 = [v9 allObjects];
  v11 = [NoteAttachmentPresentation attachmentPresentationsForAttachments:v10];
  [(NotesDisplayController *)self setAttachmentPresentations:v11];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(NotesDisplayController *)self attachmentPresentations];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * j);
        v18 = [v17 contentIDURL];
        [NotesCIDURLProtocol registerDataProvider:v17 forCIDURL:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  [(NotesDisplayController *)self setAllAttachmentPresentationOccurences:0];
}

- (BOOL)wantsToRemainFirstResponder
{
  v3 = [(NotesDisplayController *)self isViewLoaded];
  if (v3)
  {

    LOBYTE(v3) = [(NotesDisplayController *)self isEditing];
  }

  return v3;
}

- (void)loadView
{
  v3 = [[NotesBackgroundView alloc] initWithFrame:{0.0, 0.0, 320.0, 320.0}];
  [(NotesDisplayController *)self setBackgroundView:v3];

  v4 = [(NotesDisplayController *)self backgroundView];
  [v4 setAutoresizingMask:18];

  v5 = [(NotesDisplayController *)self backgroundView];
  [(NotesDisplayController *)self setView:v5];

  v6 = +[UIColor ICBackgroundColor];
  v7 = [(NotesDisplayController *)self view];
  [v7 setBackgroundColor:v6];

  v8 = [[NoteContentLayer alloc] initWithFrame:{0.0, 0.0, 320.0, 320.0}];
  [(NotesDisplayController *)self setContentLayer:v8];

  v9 = [(NotesDisplayController *)self note];

  if (v9)
  {
    v10 = [(NotesDisplayController *)self allowsAttachments];
    v11 = [(NotesDisplayController *)self contentLayer];
    [v11 setAllowsAttachments:v10];
  }

  v12 = [(NotesDisplayController *)self traitCollection];
  if ([v12 ic_hasCompactWidth])
  {
    v13 = 1;
  }

  else
  {
    v14 = [(NotesDisplayController *)self viewControllerManager];
    if ([v14 isAuxiliary])
    {
      v13 = 1;
    }

    else if (+[UIDevice ic_isVision])
    {
      v15 = [(NotesDisplayController *)self viewControllerManager];
      v13 = [v15 isMainSplitViewDisplayModeSecondaryOnly];
    }

    else
    {
      v13 = 0;
    }
  }

  v16 = [(NotesDisplayController *)self viewControllerManager];
  v17 = [v16 noteContainerViewMode] == 0;

  v18 = [(NotesDisplayController *)self viewControllerManager];
  v19 = ([v18 noteContainerViewMode] == 1) | v13;

  v20 = [(NotesDisplayController *)self backgroundView];
  v21 = [(NotesDisplayController *)self contentLayer];
  [v20 setContentView:v21 useSafeAreaLayoutGuide:+[UIDevice ic_isVision](UIDevice standalone:"ic_isVision") needsAdditionalBottomMargin:v13 needsAdditionalLeadingMargin:v17 force:{v19 & 1, 0}];

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
  v3 = [(NotesDisplayController *)self navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = [(NotesDisplayController *)self backgroundView];
  v5 = [(NotesDisplayController *)self ic_safeAreaLayoutGuide];
  v6 = [(NotesDisplayController *)self backgroundView];
  [v4 addConstraintsForSafeAreaLayoutGuide:v5 toContainer:v6];

  v7 = [(NotesDisplayController *)self contentLayer];
  [v7 setDelegate:self];

  v8 = [(NotesDisplayController *)self contentLayer];
  [v8 setAttachmentPresentationDelegate:self];

  if ([(NotesDisplayController *)self isEditing])
  {
    v9 = [(NotesDisplayController *)self contentLayer];
    v10 = [v9 noteHTMLEditorView];
    [v10 startEditing];
  }

  v11 = [(NotesDisplayController *)self webView];
  [v11 _setFindInteractionEnabled:1];
}

- (void)didReceiveMemoryWarning
{
  v3.receiver = self;
  v3.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v3 didReceiveMemoryWarning];
  [(NotesDisplayController *)self setDidSetContentFromNote:0];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v11.receiver = self;
  v11.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v11 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3)
  {
    v7 = [(NotesDisplayController *)self viewControllerManager];
    v8 = [v7 isAuxiliary];
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v4 = [(NotesDisplayController *)self ic_viewControllerManager];
      v9 = [v4 isAuxiliary];
    }

    v10 = [(NotesDisplayController *)self navigationItem];
    [v10 setHidesBackButton:v9];

    if ((v8 & 1) == 0)
    {
    }
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v4 willMoveToParentViewController:a3];
  [(NotesDisplayController *)self setToolbarItems:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = a3;
  [(NotesDisplayController *)self setIsAppearing:1];
  v6 = [(NotesDisplayController *)self note];

  if (v6)
  {
    v7 = [(NotesDisplayController *)self delegate];
    v8 = [(NotesDisplayController *)self note];
    [v7 noteDisplayController:self beginDisplayingNote:v8 animated:v4];
  }

  if (![(NotesDisplayController *)self didSetContentFromNote])
  {
    [(NotesDisplayController *)self setContentFromNote];
  }

  [(NotesDisplayController *)self updateBarButtonItemsAnimated:0];
  [(NotesDisplayController *)self updateBarsVisibilityAnimated:v4];
  v9 = [(NotesDisplayController *)self transitionCoordinator];

  if (v9)
  {
    v10 = [(NotesDisplayController *)self transitionCoordinator];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10012F1AC;
    v20[3] = &unk_100645E08;
    v20[4] = self;
    [v10 animateAlongsideTransition:v20 completion:0];
  }

  else
  {
    [(NotesDisplayController *)self updateForceLightContentIfNecessary];
  }

  v11 = [(NotesDisplayController *)self viewControllerManager];
  v12 = [v11 isAuxiliary];
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v3 = [(NotesDisplayController *)self ic_viewControllerManager];
    v13 = [v3 isAuxiliary];
  }

  v14 = [(NotesDisplayController *)self navigationItem];
  [v14 setHidesBackButton:v13];

  if ((v12 & 1) == 0)
  {
  }

  objc_initWeak(&location, self);
  v15 = [(NotesDisplayController *)self view];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10012F1B4;
  v17[3] = &unk_100648E68;
  objc_copyWeak(&v18, &location);
  [v15 ic_addCreateNoteInteractionWithFolderHandler:v17];

  v16.receiver = self;
  v16.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v16 viewWillAppear:v4];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v13 viewDidAppear:a3];
  v4 = [(NotesDisplayController *)self note];

  if (v4)
  {
    v5 = [(NotesDisplayController *)self eventReporter];
    v6 = [(NotesDisplayController *)self note];
    [v5 startNoteViewEventDurationTrackingForHTMLNote:v6];
  }

  v7 = [(NotesDisplayController *)self navigationController];
  [v7 setNavigationBarHidden:0 animated:0];

  if (![(NotesDisplayController *)self delayingSetContent])
  {
    v8 = [(NotesDisplayController *)self contentLayer];
    [v8 flashScrollIndicators];
  }

  [(NotesDisplayController *)self setVisible:1];
  [(NotesDisplayController *)self updateNoteProviderStatus];
  v9 = [(NotesDisplayController *)self contentLayer];
  [v9 setEditable:1];

  if ([(NotesDisplayController *)self startEditingAfterViewAppears])
  {
    v10 = [(NotesDisplayController *)self contentLayer];
    v11 = [v10 noteHTMLEditorView];
    [v11 startEditing];

    [(NotesDisplayController *)self setStartEditingAfterViewAppears:0];
  }

  [(NotesDisplayController *)self updateBarButtonItemsAnimated:1];
  v12 = +[ICAppDelegate sharedInstance];
  [v12 didFinishExtendedLaunch];

  [(NotesDisplayController *)self setIsAppearing:0];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)sceneWillDeactivate:(id)a3
{
  v4 = [a3 object];
  v5 = [(NotesDisplayController *)self viewIfLoaded];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v4 isEqual:v7];

  if (v8)
  {
    if ([(NotesDisplayController *)self ic_isViewVisible])
    {
      v9 = [(NotesDisplayController *)self note];

      if (v9)
      {
        v11 = [(NotesDisplayController *)self eventReporter];
        v10 = [(NotesDisplayController *)self note];
        [v11 submitNoteViewEventForHTMLNote:v10];
      }
    }
  }
}

- (void)sceneDidActivate:(id)a3
{
  v4 = [a3 object];
  v5 = [(NotesDisplayController *)self viewIfLoaded];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v4 isEqual:v7];

  if (v8)
  {
    if ([(NotesDisplayController *)self ic_isViewVisible])
    {
      v9 = [(NotesDisplayController *)self note];

      if (v9)
      {
        v11 = [(NotesDisplayController *)self eventReporter];
        v10 = [(NotesDisplayController *)self note];
        [v11 startNoteViewEventDurationTrackingForHTMLNote:v10];
      }
    }
  }
}

- (BOOL)isEndingNoteDisplay
{
  v3 = [(NotesDisplayController *)self navigationController];
  v4 = [v3 isMovingFromParentViewController];
  if (v4)
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
    v6 = v4;
    v7 = [(NotesDisplayController *)self navigationController];
    if (([v7 isBeingDismissed] & 1) != 0 || (-[NotesDisplayController isMovingFromParentViewController](self, "isMovingFromParentViewController") & 1) != 0 || -[NotesDisplayController isBeingDismissed](self, "isBeingDismissed"))
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

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(NotesDisplayController *)self note];

  if (v5)
  {
    v6 = [(NotesDisplayController *)self eventReporter];
    v7 = [(NotesDisplayController *)self note];
    [v6 submitNoteViewEventForHTMLNote:v7];
  }

  [(NotesDisplayController *)self saveNote];
  [(NotesDisplayController *)self setVisible:0];
  [(NotesDisplayController *)self updateNoteProviderStatus];
  v13.receiver = self;
  v13.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v13 viewWillDisappear:v3];
  if ([(NotesDisplayController *)self isEndingNoteDisplay])
  {
    v8 = [(NotesDisplayController *)self delegate];
    v9 = [(NotesDisplayController *)self note];
    [v8 noteDisplayController:self endDisplayingNote:v9 animated:v3];
  }

  v10 = [(NotesDisplayController *)self transitionCoordinator];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10012F8AC;
  v12[3] = &unk_100645E08;
  v12[4] = self;
  [v10 animateAlongsideTransition:0 completion:v12];

  v11 = [(NotesDisplayController *)self view];
  [v11 ic_removeLinkActionInteractions];

  [(NotesDisplayController *)self stopTextFinding];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if ([(NotesDisplayController *)self isEndingNoteDisplay])
  {
    [(NotesDisplayController *)self prepareForReuse];
  }

  v5 = [(NotesDisplayController *)self contentLayer];
  [v5 setEditable:0];

  v6.receiver = self;
  v6.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v6 viewDidDisappear:v3];
}

- (id)displayedActionButtonItemsWithTag:(int64_t)a3
{
  v5 = [(NotesDisplayController *)self navigationItem];
  v6 = [v5 rightBarButtonItems];
  v7 = [NSMutableArray arrayWithArray:v6];

  v8 = [(NotesDisplayController *)self toolbarItems];
  [v7 addObjectsFromArray:v8];

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
        if ([v14 tag] == a3)
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
    v7 = [(NotesDisplayController *)self viewControllerManager];
    v8 = [v6 initWithTitle:v5 style:0 target:v7 action:"closeAuxiliaryWindow"];
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

- (void)updateBarButtonItemsAnimated:(BOOL)a3
{
  v3 = a3;
  v14 = [(NotesDisplayController *)self traitCollection];
  if ([v14 horizontalSizeClass])
  {
    v5 = [(NotesDisplayController *)self traitCollection];
    v6 = [v5 verticalSizeClass];

    if (!v6)
    {
      return;
    }

    [(NotesDisplayController *)self updateToolbarButtonItemsAnimated:v3];
    [(NotesDisplayController *)self updateNavigationBarLeftButtonItemsAnimated:v3];
    [(NotesDisplayController *)self updateNavigationBarRightButtonItemsAnimated:v3];
    v7 = [(NotesDisplayController *)self addButtonItem];
    if ([(NotesDisplayController *)self noteCanBeSaved])
    {
      [v7 setEnabled:1];
    }

    else
    {
      v8 = [(NotesDisplayController *)self note];
      if (v8)
      {
        v9 = +[UIApplication shouldMakeUIForDefaultPNG];
      }

      else
      {
        v9 = 1;
      }

      [v7 setEnabled:v9];
    }

    v10 = [(NotesDisplayController *)self shareButtonItem];
    if ([(NotesDisplayController *)self noteCanBeSaved])
    {
      v11 = 1;
    }

    else
    {
      v11 = +[UIApplication shouldMakeUIForDefaultPNG];
    }

    [v10 setEnabled:v11];

    v14 = [(NotesDisplayController *)self deleteButtonItem];
    v12 = [(NotesDisplayController *)self note];
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = +[UIApplication shouldMakeUIForDefaultPNG];
    }

    [v14 setEnabled:v13];
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

    v7 = [(NotesDisplayController *)self deleteBarButtonItem];
    [v7 setTag:2];

    v8 = [UIBarButtonItem alloc];
    v9 = [UIImage systemImageNamed:@"square.and.arrow.up"];
    v10 = [v8 initWithImage:v9 style:0 target:self action:"shareButtonClicked:"];
    [(NotesDisplayController *)self setShareBarButtonItem:v10];

    v11 = [(NotesDisplayController *)self shareBarButtonItem];
    [v11 setTag:1];

    v12 = [UIBarButtonItem alloc];
    v13 = [UIImage systemImageNamed:@"square.and.pencil"];
    v14 = [v12 initWithImage:v13 style:0 target:self action:"addButtonClicked:"];
    [(NotesDisplayController *)self setCreateBarButtonItem:v14];

    v15 = [(NotesDisplayController *)self createBarButtonItem];
    [v15 setTag:3];

    v16 = [(NotesDisplayController *)self deleteBarButtonItem];
    v17 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:{0, v16}];
    v25[1] = v17;
    v18 = [(NotesDisplayController *)self shareBarButtonItem];
    v25[2] = v18;
    v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    v25[3] = v19;
    v20 = [(NotesDisplayController *)self createBarButtonItem];
    v25[4] = v20;
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

    v10 = [(NotesDisplayController *)self deleteNavBarButtonItem];
    [v10 setTag:2];

    v11 = [UIBarButtonItem alloc];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Share" value:&stru_100661CF0 table:0];
    v14 = [UIImage systemImageNamed:@"square.and.arrow.up"];
    v15 = [v11 initWithTitle:v13 image:v14 target:self action:"shareButtonClicked:" menu:0];
    [(NotesDisplayController *)self setShareNavBarButtonItem:v15];

    v16 = [(NotesDisplayController *)self shareNavBarButtonItem];
    [v16 setTag:1];

    v17 = [UIBarButtonItem alloc];
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"New Note" value:&stru_100661CF0 table:0];
    v20 = [UIImage systemImageNamed:@"square.and.pencil"];
    v21 = [v17 initWithTitle:v19 image:v20 target:self action:"addButtonClicked:" menu:0];
    [(NotesDisplayController *)self setCreateNavBarButtonItem:v21];

    v22 = [(NotesDisplayController *)self createNavBarButtonItem];
    [v22 setTag:3];

    v32[0] = v31;
    v23 = [(NotesDisplayController *)self createNavBarButtonItem];
    v32[1] = v23;
    v32[2] = v30;
    v24 = [(NotesDisplayController *)self shareNavBarButtonItem];
    v32[3] = v24;
    v32[4] = v29;
    v25 = [(NotesDisplayController *)self deleteNavBarButtonItem];
    v32[5] = v25;
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
  v2 = [(NotesDisplayController *)self traitCollection];
  v3 = [v2 horizontalSizeClass] == 1;

  return v3;
}

- (void)updateToolbarButtonItemsAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(NotesDisplayController *)self wantsButtonsInToolbar])
  {
    v7 = [(NotesDisplayController *)self actionButtonItemsForToolbar];
  }

  else
  {
    v7 = 0;
  }

  v5 = [(NotesDisplayController *)self toolbarItems];
  if ([v7 isEqual:v5])
  {

    goto LABEL_10;
  }

  if (v7)
  {
  }

  else
  {
    v6 = [(NotesDisplayController *)self toolbarItems];

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  [(NotesDisplayController *)self setToolbarItems:v7 animated:v3];
LABEL_10:
}

- (void)updateNavigationBarLeftButtonItemsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NotesDisplayController *)self viewControllerManager];
  if ([v5 isAuxiliary])
  {
  }

  else
  {
    v6 = [(NotesDisplayController *)self ic_viewControllerManager];
    v7 = [v6 isAuxiliary];

    if (!v7)
    {
      return;
    }
  }

  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    v9 = [(NotesDisplayController *)self navigationItem];
    v8 = [(NotesDisplayController *)self closeAuxiliaryWindowButton];
    [v9 setLeftBarButtonItem:v8 animated:v3];
  }
}

- (void)updateNavigationBarRightButtonItemsAnimated:(BOOL)a3
{
  v3 = a3;
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
      v6 = [(NotesDisplayController *)self doneButtonItem];
      [v12 addObject:v6];
    }
  }

  if (![(NotesDisplayController *)self wantsButtonsInToolbar])
  {
    v7 = [(NotesDisplayController *)self actionButtonItemsForNavBar];
    [v12 addObjectsFromArray:v7];
  }

  v8 = [(NotesDisplayController *)self navigationItem];
  v9 = [v8 rightBarButtonItems];
  if (([v12 isEqual:v9] & 1) == 0)
  {
    if (v12)
    {
    }

    else
    {
      v10 = [(NotesDisplayController *)self navigationItem];
      v11 = [v10 rightBarButtonItems];

      if (!v11)
      {
        goto LABEL_14;
      }
    }

    v8 = [(NotesDisplayController *)self navigationItem];
    v9 = [v12 copy];
    [v8 setRightBarButtonItems:v9 animated:v3];
  }

LABEL_14:
}

- (void)updateBarsVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NotesDisplayController *)self toolbarItems];
  v6 = [v5 count] == 0;

  v7 = [(NotesDisplayController *)self navigationController];
  [v7 setToolbarHidden:v6 animated:v3];
}

- (void)addButtonClicked:(id)a3
{
  if (![(NotesDisplayController *)self isEditing]|| [(NotesDisplayController *)self noteContainsValuableContent])
  {
    v5 = [(NotesDisplayController *)self viewControllerManager];
    v4 = [v5 showNewNoteWithApproach:2 sender:self animated:1];
  }
}

- (void)updateContentViewBezelsStandalone:(BOOL)a3 needsAdditionalBottomMargin:(BOOL)a4 needsAdditionalLeadingMargin:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = [(NotesDisplayController *)self backgroundView];
  [v8 updateContentViewBezelsStandalone:v7 needsAdditionalBottomMargin:v6 needsAdditionalLeadingMargin:v5 force:0];
}

- (BOOL)canInsertImagesInNoteContentLayer:(id)a3
{
  v3 = [(NotesDisplayController *)self allowsAttachments];
  v4 = v3 & [UIImagePickerController isSourceTypeAvailable:0];
  v5 = [UIImagePickerController availableMediaTypesForSourceType:0];
  v6 = [UTTypeImage identifier];
  v7 = [v5 containsObject:v6];

  return v4 & v7;
}

- (void)insertImageInNoteContentLayer:(id)a3
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

- (void)getPickerPopoverSourceRectWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NotesDisplayController *)self contentLayer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100130D84;
  v7[3] = &unk_10064ABE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getRectForSelectionWithCompletion:v7];
}

- (void)dismissPickerControllerWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(NotesDisplayController *)self isPickingAttachment])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100131020;
    v5[3] = &unk_100645E80;
    v5[4] = self;
    v6 = v4;
    [(NotesDisplayController *)self dismissViewControllerAnimated:1 completion:v5];
  }
}

- (void)didDismissPickerController
{
  if ([(NotesDisplayController *)self isPickingAttachment])
  {
    v3 = [(NotesDisplayController *)self contentLayer];
    v4 = [v3 noteHTMLEditorView];
    [v4 startEditing];

    [(NotesDisplayController *)self setPickingAttachment:0];

    [(NotesDisplayController *)self setPickerController:0];
  }
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v5 = a4;
  v6 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E13D4();
  }

  v7 = [UTTypeJPEG identifier];
  v17[0] = v7;
  v8 = [UTTypePNG identifier];
  v17[1] = v8;
  v9 = [UTTypeHEIC identifier];
  v17[2] = v9;
  v10 = [NSArray arrayWithObjects:v17 count:3];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013129C;
  v13[3] = &unk_100645D40;
  v14 = v5;
  v15 = v10;
  v16 = self;
  v11 = v10;
  v12 = v5;
  [(NotesDisplayController *)self dismissPickerControllerWithCompletionHandler:v13];
}

- (void)showActionsForAttachmentPresentation:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  [(NotesDisplayController *)self setEditing:0 animated:1];
  v8 = [v7 dataFileURL];
  v9 = +[UIPrintInfo printInfo];
  v10 = [v7 filename];
  [v9 setJobName:v10];

  [v9 setOutputType:1];
  v11 = [v7 sourceIsManaged];

  v24[0] = v8;
  v24[1] = v9;
  v12 = [NSArray arrayWithObjects:v24 count:2];
  v13 = [[UIActivityViewController alloc] initWithActivityItems:v12 applicationActivities:&__NSArray0__struct];
  v23[0] = UIActivityTypeOpenInIBooks;
  v23[1] = ICActivityTypeShareToNote;
  v23[2] = UIActivityTypeSharePlay;
  v14 = [NSArray arrayWithObjects:v23 count:3];
  [v13 setExcludedActivityTypes:v14];

  [v13 setIsContentManaged:v11];
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
  v16 = [v13 popoverPresentationController];
  [(NotesDisplayController *)self setActivityPresentationController:v16];
  v17 = [(NotesDisplayController *)self view];
  [v17 safeAreaInsets];
  v19 = v18;

  [v16 setSourceRect:{x, y + v19, 0.0, 0.0}];
  v20 = [(NotesDisplayController *)self webView];
  [v16 setSourceView:v20];

  [v16 setPermittedArrowDirections:15];
}

- (CGRect)rectForAttachmentPresentationOccurence:(id)a3 inView:(id *)a4
{
  v6 = [a3 element];
  v7 = [(NotesDisplayController *)self contentLayer];
  [v7 rectForDOMNode:v6];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (a4)
  {
    *a4 = [(NotesDisplayController *)self contentLayer];
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

- (CGPoint)pointRelativeToRect:(CGRect)a3 fromContentLayerPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v8 = a3.origin.y;
  v9 = a3.origin.x;
  if (CGRectIsEmpty(a3))
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

- (CGPoint)contentLayerPointFromPoint:(CGPoint)a3 relativeToRect:(CGRect)a4
{
  v4 = a4.origin.x + a3.x * a4.size.width;
  v5 = a4.origin.y + a3.y * a4.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)occurenceForPreviewItem:(id)a3 hintIndex:(int64_t)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 presentation];
    v8 = [v7 sourceIsManaged];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NotesDisplayController *)self attachmentPresentationOccurencesForPreviewingWithManagedInterface:v8];
  if ([v9 count] > a4)
  {
    v10 = [v9 objectAtIndexedSubscript:a4];
    v11 = [v6 previewItemURL];
    v12 = [v10 previewItemURL];
    v13 = [v12 isEqual:v11];

    if (v13)
    {
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (CGRect)notesQuickLookActivityItem:(id)a3 rectForPreviewItem:(id)a4 inView:(id *)a5 previewController:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = -[NotesDisplayController occurenceForPreviewItem:hintIndex:](self, "occurenceForPreviewItem:hintIndex:", v10, [v9 currentPreviewItemIndex]);

  if (v11)
  {
    v12 = [v11 presentation];
    v13 = [v12 sourceIsManaged];
    if (v9 && v13)
    {
      v14 = [v9 isContentManaged];

      if ((v14 & 1) == 0)
      {
        NSLog(@"Error: Managed preview item is displayed in a non-managed preview controller %@", v11);
      }
    }

    else
    {
    }

    [(NotesDisplayController *)self rectForAttachmentPresentationOccurence:v11 inView:a5];
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

- (id)notesQuickLookActivityItem:(id)a3 transitionImageForPreviewItem:(id)a4 previewController:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = -[NotesDisplayController occurenceForPreviewItem:hintIndex:](self, "occurenceForPreviewItem:hintIndex:", v8, [v7 currentPreviewItemIndex]);

  if (v9)
  {
    v10 = [v9 presentation];
    v11 = [v10 sourceIsManaged];
    if (v7 && v11)
    {
      v12 = [v7 isContentManaged];

      if ((v12 & 1) == 0)
      {
        NSLog(@"Error: Managed preview item is displayed in a non-managed preview controller %@", v9);
      }
    }

    else
    {
    }

    v14 = [v9 presentation];
    v18 = 0;
    v15 = [v14 getPresentationData:&v18 mimeType:0 error:0];
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
  v23 = [(NotesDisplayController *)self printFormatter];
  v3 = [(NotesDisplayController *)self note];
  v4 = [v3 isPlainText];

  v5 = +[UIPrintInfo printInfo];
  v6 = v5;
  if (v4)
  {
    [v5 setOutputType:2];
  }

  v7 = [(NoteObject *)self->_note title];
  [v6 setJobName:v7];

  v8 = objc_alloc_init(NSMutableArray);
  v9 = [ICNoteLinkPresentationActivityItemSource alloc];
  v10 = [(NotesDisplayController *)self note];
  v11 = [v9 initWithNote:v10];

  [v8 addObject:v11];
  objc_initWeak(&location, self);
  v12 = [ICAirDropNoteActivityItemSource alloc];
  v13 = [(NoteObject *)self->_note title];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100132344;
  v24[3] = &unk_10064AC60;
  objc_copyWeak(&v25, &location);
  v14 = [v12 initWithTitle:v13 airDropDocumentCreator:v24];

  if (v14)
  {
    [v8 addObject:v14];
  }

  v15 = [ICLegacyNoteStringActivityItemSource alloc];
  v16 = [(NoteObject *)self->_note title];
  v17 = [(NoteObject *)self->_note content];
  v18 = [(NoteObject *)self->_note contentAsPlainText];
  v19 = [v15 initWithTitle:v16 content:v17 plainText:v18];

  if (v19)
  {
    [v8 addObject:v19];
  }

  v27[0] = v6;
  v27[1] = v23;
  v20 = [NSArray arrayWithObjects:v27 count:2];
  [v8 addObjectsFromArray:v20];

  v21 = [v8 copy];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v21;
}

- (UIPrintFormatter)printFormatter
{
  v3 = [(NotesDisplayController *)self note];
  v4 = [v3 isPlainText];

  if (v4)
  {
    v5 = [UISimpleTextPrintFormatter alloc];
    v6 = [(NotesDisplayController *)self contentLayer];
    v7 = [v6 noteHTMLEditorView];
    v8 = [v7 text];
    v9 = [v5 initWithText:v8];

    v10 = +[UIFont ic_preferredFontForBodyText];
    [v9 setFont:v10];

    [v9 setPerPageContentInsets:{36.0, 36.0, 36.0, 36.0}];
  }

  else
  {
    v11 = [(NotesDisplayController *)self contentLayer];
    v9 = [v11 viewPrintFormatter];
  }

  return v9;
}

- (void)shareButtonClicked:(id)a3
{
  if ([(NotesDisplayController *)self isEditing])
  {
    [(NotesDisplayController *)self setEditing:0 animated:1];
  }

  [(NotesDisplayController *)self stopTextFinding];
  if (ICDebugModeEnabled())
  {
    v4 = [ICChangeDatesActivity alloc];
    v5 = [(NotesDisplayController *)self note];
    v6 = [v4 initWithObject:v5 activityType:0];

    v7 = [NotesActivityViewController alloc];
    v8 = [(NotesDisplayController *)self noteActivityItemsForSharing];
    v9 = [(NotesDisplayController *)self textFindingActivity];
    v22[0] = v9;
    v22[1] = v6;
    v10 = [NSArray arrayWithObjects:v22 count:2];
    v11 = [(NotesActivityViewController *)v7 initWithActivityItems:v8 applicationActivities:v10];
  }

  else
  {
    v12 = [NotesActivityViewController alloc];
    v6 = [(NotesDisplayController *)self noteActivityItemsForSharing];
    v8 = [(NotesDisplayController *)self textFindingActivity];
    v21 = v8;
    v9 = [NSArray arrayWithObjects:&v21 count:1];
    v11 = [(NotesActivityViewController *)v12 initWithActivityItems:v6 applicationActivities:v9];
  }

  v20[0] = UIActivityTypeOpenInIBooks;
  v20[1] = ICActivityTypeShareToNote;
  v20[2] = UIActivityTypeSharePlay;
  v13 = [NSArray arrayWithObjects:v20 count:3];
  [(NotesActivityViewController *)v11 setExcludedActivityTypes:v13];

  [(NotesActivityViewController *)v11 setDisplayController:self];
  v14 = [(NoteObject *)self->_note store];
  v15 = [v14 account];
  -[NotesActivityViewController setIsContentManaged:](v11, "setIsContentManaged:", [v15 isManaged]);

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
  v17 = [(NotesActivityViewController *)v11 popoverPresentationController];
  v18 = [(NotesDisplayController *)self shareButtonItem];
  [v17 setBarButtonItem:v18];

  [v17 setPermittedArrowDirections:3];
}

- (id)textFindingActivity
{
  v2 = [[ICHTMLFindInNoteUIActivity alloc] initWithDelegate:self];

  return v2;
}

- (void)performFindInNote:(id)a3
{
  v4 = [(NotesDisplayController *)self webView];
  v3 = [v4 _findInteraction];
  [v3 presentFindNavigatorShowingReplace:0];
}

- (void)performReplaceInNote:(id)a3
{
  v4 = [(NotesDisplayController *)self webView];
  v3 = [v4 _findInteraction];
  [v3 presentFindNavigatorShowingReplace:1];
}

- (void)performFindInNoteUIActivity:(id)a3
{
  v6 = a3;
  v4 = [(NotesDisplayController *)self webView];
  v5 = [v4 _findInteraction];
  [v5 presentFindNavigatorShowingReplace:0];

  [v6 activityDidFinish:1];
}

- (void)stopTextFinding
{
  v3 = [(NotesDisplayController *)self webView];
  v4 = [v3 _findInteraction];
  v5 = [v4 isFindNavigatorVisible];

  if (v5)
  {
    v7 = [(NotesDisplayController *)self webView];
    v6 = [v7 _findInteraction];
    [v6 dismissFindNavigator];
  }
}

- (id)noteHTMLEditorView
{
  v2 = [(NotesDisplayController *)self contentLayer];
  v3 = [v2 noteHTMLEditorView];

  return v3;
}

- (id)webView
{
  v2 = [(NotesDisplayController *)self contentLayer];
  v3 = [v2 noteHTMLEditorView];
  v4 = [v3 webView];

  return v4;
}

- (UIScrollView)scrollView
{
  v2 = [(NotesDisplayController *)self contentLayer];
  v3 = [v2 noteHTMLEditorView];
  v4 = [v3 webView];
  v5 = [v4 scrollView];

  return v5;
}

- (void)deleteButtonClicked:(id)a3
{
  v4 = a3;
  if ([(NotesDisplayController *)self isEditing])
  {
    [(NotesDisplayController *)self setEditing:0 animated:1];
  }

  if ([(NotesDisplayController *)self noteShouldBeDiscarded])
  {
    [(NotesDisplayController *)self setIsUpdatingNoteContent:1];
    v5 = [(NotesDisplayController *)self delegate];
    v6 = [(NotesDisplayController *)self note];
    [v5 noteDisplayController:self deleteNote:v6 actionOrigin:1];

    [(NotesDisplayController *)self setIsUpdatingNoteContent:0];
  }

  else
  {
    v7 = [(NotesDisplayController *)self note];
    v8 = [ICDeleteDecisionController alloc];
    v17 = v7;
    v9 = [NSArray arrayWithObjects:&v17 count:1];
    v10 = [(NotesDisplayController *)self view];
    v11 = [v10 window];
    v12 = [(NotesDisplayController *)self eventReporter];
    v13 = [(ICDeleteDecisionController *)v8 initWithSourceObjects:v9 window:v11 sender:v4 eventReporter:v12];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100132DF4;
    v15[3] = &unk_1006487E8;
    v15[4] = self;
    v16 = v7;
    v14 = v7;
    [(ICDeleteDecisionController *)v13 performDecisionWithCompletion:v15];
  }
}

- (void)didDismissDeleteAlertController
{
  [(NotesDisplayController *)self updateBarButtonItemsAnimated:0];
  [(NotesDisplayController *)self cleanupAfterBarSourcedPopoverPresentation];

  [(NotesDisplayController *)self setDeletePresentationController:0];
}

- (void)setPerformingDeleteAnimation:(BOOL)a3
{
  if (self->_performingDeleteAnimation != a3)
  {
    self->_performingDeleteAnimation = a3;
    [(NotesDisplayController *)self setUserInteractionEnabled:!a3];
  }
}

- (void)animateDeleteTransitionWithCompletion:(id)a3
{
  v4 = a3;
  [(NotesDisplayController *)self setPerformingDeleteAnimation:1];
  v5 = [(NotesDisplayController *)self view];
  v6 = [v5 superview];

  v7 = [(NotesDisplayController *)self contentLayer];
  v8 = [v7 snapshotViewAfterScreenUpdates:0];

  [v6 addSubview:v8];
  v9 = [(NotesDisplayController *)self backgroundView];
  [v9 setContentViewVisible:0];

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001330F8;
  v18[3] = &unk_10064AC88;
  v22 = IsReduceMotionEnabled;
  v11 = v8;
  v19 = v11;
  v20 = self;
  v12 = v4;
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

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  if (!a3 && [(NotesDisplayController *)self isEditing])
  {
    [(NotesDisplayController *)self setEditing:0 animated:0];
  }

  v5 = [(NotesDisplayController *)self navigationController];
  v6 = [v5 navigationBar];
  [v6 setUserInteractionEnabled:v3];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(NotesDisplayController *)self navigationController];
  v8 = [v7 navigationBar];
  v9 = [v8 subviews];

  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v14 setUserInteractionEnabled:v3];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [(NotesDisplayController *)self navigationController];
  v16 = [v15 toolbar];
  [v16 setUserInteractionEnabled:v3];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v9 = a3;
  v4 = [(NotesDisplayController *)self activityPresentationController];

  if (v4 == v9)
  {
    [(NotesDisplayController *)self didDismissActivityController];
  }

  else
  {
    v5 = [v9 presentedViewController];
    v6 = [(NotesDisplayController *)self pickerController];

    if (v5 == v6)
    {
      [(NotesDisplayController *)self didDismissPickerController];
    }

    else
    {
      v7 = [(NotesDisplayController *)self deletePresentationController];

      v8 = v9;
      if (v7 != v9)
      {
        goto LABEL_8;
      }

      [(NotesDisplayController *)self didDismissDeleteAlertController];
    }
  }

  v8 = v9;
LABEL_8:
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(NotesDisplayController *)self isEditing]!= a3)
  {
    if (v5)
    {
      v7 = [(NotesDisplayController *)self delegate];
      v8 = [v7 canBeginEditingForNoteDisplayController:self];

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
      v9 = [(NotesDisplayController *)self contentLayer];
      [v9 setTracksMaximumContentLength:0];
    }

    v17.receiver = self;
    v17.super_class = NotesDisplayController;
    [(NotesDisplayController *)&v17 setEditing:v5 animated:v4];
    if (v5)
    {
      [(NotesDisplayController *)self setIsRespondingToStartEditing:1];
      [(NotesDisplayController *)self rememberNoteContentForEditingIntent];
    }

    else
    {
      [(NotesDisplayController *)self setIsRespondingToEndEditing:1];
      v10 = [(NotesDisplayController *)self contentLayer];
      v11 = [v10 noteHTMLEditorView];
      [v11 stopEditing];

      [(NotesDisplayController *)self invalidateAutosaveTimer];
      [(NotesDisplayController *)self saveNote];
      [(NotesDisplayController *)self donateEditingIntentIfNecessary];
    }

    if ([(NotesDisplayController *)self isViewLoaded]&& [(NotesDisplayController *)self isVisible])
    {
      if (v5)
      {
        v12 = [(NotesDisplayController *)self contentLayer];
        v13 = [v12 noteHTMLEditorView];
        [v13 startEditing];
      }
    }

    else if (v5)
    {
      [(NotesDisplayController *)self setStartEditingAfterViewAppears:1];
    }

    [(NotesDisplayController *)self updateBarButtonItemsAnimated:v4];
    [(NotesDisplayController *)self updateDate];
    [(NotesDisplayController *)self updateNoteUserActivityState];
    [(NotesDisplayController *)self updateBarButtonItemsAnimated:0];
    if ([(NotesDisplayController *)self isEditing])
    {
      v14 = [(NotesDisplayController *)self delegate];
      v15 = [(NotesDisplayController *)self note];
      [v14 noteDisplayController:self beginEditingNote:v15 animated:v4];

      v16 = +[NSNotificationCenter defaultCenter];
      [v16 postNotificationName:ICNoteEditorViewControllerDidStartEditingNotification object:self];
LABEL_19:
    }
  }
}

- (void)rememberNoteContentForEditingIntent
{
  v3 = [(NotesDisplayController *)self note];
  v4 = [v3 contentAsPlainTextPreservingNewlines];
  [(NotesDisplayController *)self setOriginalPlainTextNoteContent:v4];

  v5 = [(NotesDisplayController *)self originalPlainTextNoteContent];
  -[NotesDisplayController setIsEditingNewNote:](self, "setIsEditingNewNote:", [v5 length] == 0);
}

- (void)donateEditingIntentIfNecessary
{
  v3 = [(NotesDisplayController *)self note];
  v4 = [v3 contentAsPlainTextPreservingNewlines];
  v5 = [v4 length];

  if (v5)
  {
    if ([(NotesDisplayController *)self isEditingNewNote])
    {
      v6 = [(NotesDisplayController *)self note];
      v7 = [ICIntentsUtilities interactionForCreateNote:v6];
      [ICIntentsUtilities donateInteraction:v7];
      goto LABEL_4;
    }

    v8 = [(NotesDisplayController *)self originalPlainTextNoteContent];

    if (v8)
    {
      v9 = [(NotesDisplayController *)self note];
      v6 = [v9 contentAsPlainTextPreservingNewlines];

      v10 = [(NotesDisplayController *)self originalPlainTextNoteContent];
      v11 = [v6 hasPrefix:v10];

      if (!v11)
      {
        goto LABEL_5;
      }

      v12 = [(NotesDisplayController *)self originalPlainTextNoteContent];
      v7 = [v6 substringFromIndex:{objc_msgSend(v12, "length")}];

      if ([v7 hasPrefix:@"\n"])
      {
        v13 = [v7 substringFromIndex:1];

        v14 = [(NotesDisplayController *)self note];
        v15 = [ICIntentsUtilities interactionForAppendToNote:v14 withAppendedText:v13];
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

- (id)noteIdentifierForNoteContentLayer:(id)a3
{
  v3 = [(NotesDisplayController *)self note];
  v4 = [v3 identifier];

  return v4;
}

- (BOOL)noteContentLayerShouldBeginEditing:(id)a3 isUserInitiated:(BOOL)a4
{
  if (([UIApplication shouldMakeUIForDefaultPNG:a3]& 1) != 0)
  {
    return 0;
  }

  [(NotesDisplayController *)self stopTextFinding];
  v5 = [(NotesDisplayController *)self note];

  if (!v5)
  {
    return 0;
  }

  v6 = [(NotesDisplayController *)self presentedViewController];

  if (v6)
  {
    return 0;
  }

  v8 = [(NotesDisplayController *)self delegate];
  v9 = [v8 canBeginEditingForNoteDisplayController:self];

  return v9;
}

- (void)noteContentLayerContentDidChange:(id)a3 updatedTitle:(BOOL)a4 fromDrop:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [(NotesDisplayController *)self setIsUpdatingNoteContent:0];
  [(NotesDisplayController *)self resetAutosaveTimer];
  [(NotesDisplayController *)self setContentHasUnsavedChanges:1];
  v12 = +[NSDate ic_modificationDateForNoteBeingEdited];
  v8 = [(NotesDisplayController *)self note];
  v9 = [v8 modificationDate];
  v10 = [v9 isEqual:v12];

  if ((v10 & 1) == 0)
  {
    v11 = [(NotesDisplayController *)self note];
    [v11 setModificationDate:v12];
  }

  if (v6)
  {
    [(NotesDisplayController *)self updateNoteTitle];
    [(NotesDisplayController *)self updateNoteProviderStatus];
    [(NotesDisplayController *)self updateNoteUserActivityState];
  }

  [(NotesDisplayController *)self updateBarButtonItemsAnimated:0];
  if (v5)
  {
    [(NotesDisplayController *)self saveNote];
  }
}

- (BOOL)noteContentLayer:(id)a3 acceptStringIncreasingContentLength:(id)a4
{
  v5 = a4;
  if ([(NotesDisplayController *)self noteHasSizeLimit])
  {
    v6 = [v5 dataUsingEncoding:4];
    v7 = [v6 length];

    v8 = [(NotesDisplayController *)self acceptNewSize:&v7[[(NotesDisplayController *)self estimatedSizeOfDisplayedContent]]];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)noteContentLayer:(id)a3 setEditing:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (v6)
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

  if ([(NotesDisplayController *)self isEditing]!= v6 && ![(NotesDisplayController *)self isPickingAttachment]&& ![(NotesDisplayController *)self isChangingTraitCollection])
  {
    [(NotesDisplayController *)self setEditing:v6 animated:v5];
    [(NotesDisplayController *)self setIsRespondingToStartEditing:0];
    goto LABEL_5;
  }

LABEL_9:
}

- (void)noteContentLayer:(id)a3 willHitTestWithEvent:(id)a4
{
  v19 = a4;
  v5 = +[NSUserDefaults standardUserDefaults];
  if (+[ICDeviceSupport deviceSupportsPencil])
  {
    v6 = [(NotesDisplayController *)self presentedViewController];
    if (v6)
    {
LABEL_3:

      goto LABEL_10;
    }

    if (([v5 BOOLForKey:@"hasShownPencilUnsupportedAlertForHTMLNote"] & 1) == 0)
    {
      if ([v19 _hidEvent])
      {
        Children = IOHIDEventGetChildren();
        if (Children)
        {
          v8 = Children;
          if (CFArrayGetCount(Children))
          {
            CFArrayGetValueAtIndex(v8, 0);
            [v19 _hidEvent];
            if (IOHIDEventGetType() == 11 && !IOHIDEventGetIntegerValue())
            {
              v9 = +[NSBundle mainBundle];
              v6 = [v9 localizedStringForKey:@"Drawing Not Supported" value:&stru_100661CF0 table:0];

              v10 = +[NSBundle mainBundle];
              v18 = [v10 localizedStringForKey:@"Drawing using Apple Pencil is only supported on notes in your iCloud or On My iPad accounts." value:&stru_100661CF0 table:0];

              v11 = [UIAlertController alertControllerWithTitle:v6 message:v18 preferredStyle:1];
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

- (BOOL)noteContentLayer:(id)a3 acceptContentsFromItemProviders:(id)a4
{
  if (![(NotesDisplayController *)self noteHasSizeLimit:a3])
  {
    return 1;
  }

  v5 = [(NotesDisplayController *)self estimatedSizeOfDisplayedContent]+ 1000000;

  return [(NotesDisplayController *)self acceptNewSize:v5];
}

- (BOOL)noteContentLayer:(id)a3 acceptContentsFromPasteboard:(id)a4
{
  v5 = a4;
  if ([(NotesDisplayController *)self noteHasSizeLimit])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 ic_dataForPasteboardTypes:{0, 0}];
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

- (void)noteContentLayer:(id)a3 showShareSheetForAttachment:(id)a4 atPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(NotesDisplayController *)self attachmentPresentations];
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
        v15 = [v14 contentID];
        v16 = [v15 isEqualToString:v8];

        if (v16)
        {
          [(NotesDisplayController *)self showActionsForAttachmentPresentation:v14 atPoint:x, y];
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

LABEL_11:
}

- (void)noteContentLayer:(id)a3 openURL:(id)a4
{
  v4 = a4;
  v5 = +[UIApplication sharedApplication];
  [v5 openURL:v4 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)noteContentLayer:(id)a3 didInvokeFormattingCalloutOption:(int64_t)a4
{
  v5 = qword_1006CB428;
  v6 = [NSNumber numberWithInteger:a4];
  v9 = [v5 objectForKeyedSubscript:v6];

  if (v9)
  {
    v7 = [(NotesDisplayController *)self eventReporter];
    v8 = [(NotesDisplayController *)self note];
    [v7 submitNoteEditorCallOutBarButtonSelectionEventForHTMLNote:v8 buttonTypeValue:{objc_msgSend(v9, "integerValue")}];
  }
}

- (void)noteContentLayer:(id)a3 didInvokeStyleFormattingOption:(int64_t)a4
{
  v5 = qword_1006CB430;
  v6 = [NSNumber numberWithInteger:a4];
  v9 = [v5 objectForKeyedSubscript:v6];

  if (v9)
  {
    v7 = [(NotesDisplayController *)self eventReporter];
    v8 = [(NotesDisplayController *)self note];
    [v7 submitStyleFormatEventForHTMLNote:v8 styleTypeValue:{objc_msgSend(v9, "integerValue")}];
  }
}

- (id)noteContentLayer:(id)a3 updateAttachments:(id)a4
{
  v4 = a4;
  v62 = +[NSMutableDictionary dictionary];
  v5 = +[NSMutableDictionary dictionary];
  v6 = +[NSMutableArray array];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v4;
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
        v12 = [v11 resourceSpecifier];

        if (v12)
        {
          v13 = [v5 allKeys];
          v14 = [v11 resourceSpecifier];
          v15 = [v13 containsObject:v14];

          if (v15)
          {
            [v6 addObject:v11];
          }

          v16 = [v11 resourceSpecifier];
          [v5 setObject:v11 forKeyedSubscript:v16];
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
  v17 = [(NotesDisplayController *)self note];
  v18 = [v17 attachments];

  v19 = [v18 countByEnumeratingWithState:&v71 objects:v82 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v71 + 1) + 8 * j);
        v24 = [v23 contentID];

        if (v24)
        {
          v25 = [v23 contentID];
          v26 = [NSString ic_newURLForContentID:v25 percentEscaped:0];

          v27 = [v23 contentID];
          [v5 removeObjectForKey:v27];

          [v6 removeObject:v26];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v71 objects:v82 count:16];
    }

    while (v20);
  }

  v28 = [v5 allValues];
  v29 = [v28 arrayByAddingObjectsFromArray:v6];

  v30 = [NSSet setWithArray:v29];
  if ([v30 count])
  {
    v31 = [(NotesDisplayController *)self note];
    v57 = [v31 managedObjectContext];

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
          v37 = [v36 scheme];
          v38 = [v37 isEqualToString:@"cid"];

          if (v38)
          {
            v39 = [v36 resourceSpecifier];
            v40 = [(NotesDisplayController *)self noteAttachmentObjectWithContentID:v39];

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
              v45 = [v44 noteContext];

              v46 = +[ICLegacyContentUtilities generateContentID];
              v47 = [v40 mimeType];
              v48 = [v40 filename];
              v49 = [ICLegacyContentUtilities createAttachmentWithContentID:v46 mimeType:v47 data:v41 filename:v48 inContext:v45];

              v50 = [(NotesDisplayController *)self note];
              [v50 addAttachmentsObject:v49];

              v51 = [v49 cidURL];
              v52 = [v51 absoluteString];
              v53 = [v36 absoluteString];
              [v62 setObject:v52 forKeyedSubscript:v53];

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
        [v57 ic_save];
      }
    }

    else
    {
    }

    v30 = v56;
  }

  return v62;
}

- (void)showAttachmentsUnsupportedAlertForNoteContentLayer:(id)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Unsupported Attachment" value:&stru_100661CF0 table:0];
  v6 = [(NotesDisplayController *)self note];
  v7 = [v6 store];
  v8 = [v7 account];
  v9 = [v8 localizedAttachmentsNotSupportedReason];
  v13 = [UIAlertController alertControllerWithTitle:v5 message:v9 preferredStyle:1];

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
    v4 = [(NotesDisplayController *)self note];
    if (v4)
    {
      v5 = v4;
      v6 = [(NotesDisplayController *)self note];
      v7 = [v6 integerId];

      if (v7)
      {
        v8 = [(NotesDisplayController *)self note];
        v9 = [v8 integerId];
        [v3 setObject:v9 forKey:@"NoteRecordId"];
      }
    }

    if ([(NotesDisplayController *)self isEditing])
    {
      v10 = [NSNumber numberWithBool:1];
      [v3 setObject:v10 forKey:@"IsEditing"];
    }

    v11 = [(NotesDisplayController *)self contentLayer];

    if (v11)
    {
      v12 = [(NotesDisplayController *)self contentLayer];
      [v12 contentOffset];
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
  v3 = [(NotesDisplayController *)self pendingArchivedNoteID];

  if (v3)
  {
    v4 = [(NotesDisplayController *)self note];
    v5 = [v4 integerId];
    v6 = [(NotesDisplayController *)self pendingArchivedNoteID];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      if ([(NotesDisplayController *)self pendingArchivedEditingState])
      {
        [(NotesDisplayController *)self setEditing:1 animated:0];
      }

      v8 = [(NotesDisplayController *)self contentLayer];
      [(NotesDisplayController *)self pendingArchivedContentOffset];
      [v8 setContentOffset:?];
    }

    [(NotesDisplayController *)self setPendingArchivedContentOffset:CGPointZero.x, CGPointZero.y];
    [(NotesDisplayController *)self setPendingArchivedNoteID:0];

    [(NotesDisplayController *)self setPendingArchivedEditingState:0];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = NotesDisplayController;
  v7 = a4;
  [(NotesDisplayController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(NotesDisplayController *)self contentLayer];
  [v8 setNeedsUpdateConstraints];

  [(NotesDisplayController *)self setTransitioningToSize:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001351A8;
  v9[3] = &unk_100645E08;
  v9[4] = self;
  [v7 animateAlongsideTransition:&stru_10064ACC8 completion:v9];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(NotesDisplayController *)self setChangingTraitCollection:1];
  v8 = [(NotesDisplayController *)self contentLayer];
  v9 = [v8 isFirstResponder];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100135320;
  v11[3] = &unk_10064ACF0;
  v11[4] = self;
  v12 = v9;
  [v6 animateAlongsideTransition:0 completion:v11];
  v10.receiver = self;
  v10.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v10 willTransitionToTraitCollection:v7 withTransitionCoordinator:v6];
}

- (id)contextManager
{
  v2 = qword_1006CB438;
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

  v2 = qword_1006CB438;
  if (qword_1006CB438)
  {
LABEL_5:
    v2 = [v2 defaultContextManager];
  }

  return v2;
}

- (void)updateContextProviderStatus
{
  v3 = [(NotesDisplayController *)self canProvideNote];
  v4 = [(NotesDisplayController *)self contextManager];
  v5 = v4;
  if (v3)
  {
    [v4 addContextProvider:self];
  }

  else
  {
    [v4 removeContextProvider:self];
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

  v6 = [(objc_class *)v4 object];
  if (v6)
  {
    v7 = [(NoteObject *)self->_note noteId];
    [v6 setIdentifier:v7];

    v8 = [v6 dictionary];
    [v3 addObject:v8];
  }

  return v3;
}

- (void)setNeedsStatusBarAppearanceUpdate
{
  v4.receiver = self;
  v4.super_class = NotesDisplayController;
  [(NotesDisplayController *)&v4 setNeedsStatusBarAppearanceUpdate];
  v3 = [(NotesDisplayController *)self navigationController];
  [v3 setNeedsStatusBarAppearanceUpdate];
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

  v7 = [(NotesDisplayController *)self parentViewController];
  [v7 setOverrideTraitCollection:v6 forChildViewController:self];

  v8 = [(NotesDisplayController *)self navigationController];
  v9 = [v8 navigationBar];
  [v9 setOverrideUserInterfaceStyle:v5];

  v10 = [(NotesDisplayController *)self view];
  [v10 setOverrideUserInterfaceStyle:v5];

  v11 = [(NotesDisplayController *)self webView];
  [v11 setOverrideUserInterfaceStyle:v5];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v12 = [(NotesDisplayController *)self view];
    v13 = [v12 backgroundColor];

    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_100135978;
    v33 = &unk_10064AD38;
    v35 = v4;
    v34 = v13;
    v14 = v13;
    v15 = [UIColor colorWithDynamicProvider:&v30];
    v16 = objc_alloc_init(UINavigationBarAppearance);
    [v16 configureWithTransparentBackground];
    [v16 setBackgroundColor:v15];
    v17 = [(NotesDisplayController *)self navigationController];
    v18 = [v17 navigationBar];
    [v18 setStandardAppearance:v16];

    v19 = [(NotesDisplayController *)self navigationController];
    v20 = [v19 navigationBar];
    [v20 setCompactAppearance:v16];

    v21 = [(NotesDisplayController *)self navigationItem];
    [v21 setStandardAppearance:v16];

    v22 = [(NotesDisplayController *)self navigationItem];
    [v22 setCompactAppearance:v16];

    v23 = [(NotesDisplayController *)self navigationController];
    v24 = [v23 toolbar];
    v25 = [v24 standardAppearance];

    [v25 configureWithTransparentBackground];
    [v25 setBackgroundColor:v15];
    v26 = [(NotesDisplayController *)self navigationController];
    v27 = [v26 toolbar];
    [v27 setStandardAppearance:v25];

    v28 = [(NotesDisplayController *)self navigationController];
    v29 = [v28 toolbar];
    [v29 setCompactAppearance:v25];
  }

  [(NotesDisplayController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)updateUserActivityStatus
{
  if ([(NotesDisplayController *)self canProvideNote])
  {
    v3 = [(NotesDisplayController *)self noteUserActivity];

    if (!v3)
    {
      v5 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Notes"];
      [v5 setDelegate:self];
      [v5 setEligibleForSearch:1];
      [(NotesDisplayController *)self setNoteUserActivity:v5];
      [(NotesDisplayController *)self updateNoteUserActivityState];
      v4 = [(NotesDisplayController *)self noteUserActivity];
      [v4 becomeCurrent];
    }
  }

  else
  {

    [(NotesDisplayController *)self invalidateNoteUserActivity];
  }
}

- (void)updateNoteUserActivityState
{
  v3 = [(NotesDisplayController *)self noteUserActivity];
  if (v3)
  {
    v4 = v3;
    v5 = [(NotesDisplayController *)self note];

    if (v5)
    {
      v6 = [NoteUserActivityState alloc];
      v7 = [(NotesDisplayController *)self note];
      v23 = [(NoteUserActivityState *)v6 initWithNote:v7];

      v8 = [(NotesDisplayController *)self note];
      v9 = [v8 title];
      [(NoteUserActivityState *)v23 setTitle:v9];

      v10 = [(NotesDisplayController *)self note];
      v11 = [v10 guid];
      [(NoteUserActivityState *)v23 setNoteID:v11];

      [(NoteUserActivityState *)v23 setEditing:[(NotesDisplayController *)self isEditing]];
      v12 = [(NotesDisplayController *)self note];
      v13 = [v12 modificationDate];

      if ([(NotesDisplayController *)self isEditing])
      {
        v14 = +[NSDate date];

        v13 = v14;
      }

      [(NoteUserActivityState *)v23 setModificationDate:v13];
      v15 = [(NotesDisplayController *)self note];
      v16 = [v15 creationDate];
      [(NoteUserActivityState *)v23 setCreationDate:v16];

      v17 = [(NotesDisplayController *)self note];
      LODWORD(v16) = sub_10008BB04(v17);

      if (v16)
      {
        v18 = [(NotesDisplayController *)self note];
        -[NoteUserActivityState setContentPlainText:](v23, "setContentPlainText:", [v18 isPlainText]);
      }

      [(NotesDisplayController *)self setNoteUserActivityState:v23];
      v19 = [(NotesDisplayController *)self note];
      v20 = sub_10008BC10(v19);
      v21 = [(NotesDisplayController *)self noteUserActivity];
      [v21 setEligibleForHandoff:v20];

      v22 = [(NotesDisplayController *)self noteUserActivity];
      [v22 setNeedsSave:1];
    }
  }
}

- (void)invalidateNoteUserActivity
{
  v3 = [(NotesDisplayController *)self noteUserActivity];
  [v3 setDelegate:0];

  v4 = [(NotesDisplayController *)self noteUserActivity];
  [v4 invalidate];

  [(NotesDisplayController *)self setNoteUserActivity:0];

  [(NotesDisplayController *)self setNoteUserActivityState:0];
}

- (void)userActivityWasContinued:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100135E70;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)userActivityWillSave:(id)a3
{
  obj = a3;
  objc_sync_enter(obj);
  v4 = [(NotesDisplayController *)self noteUserActivityState];
  [v4 updateUserActivity:obj];

  objc_sync_exit(obj);
}

- (void)runScrollPerformanceTest:(id)a3 iterations:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(NotesDisplayController *)self contentLayer];
  v8 = [v7 noteHTMLEditorView];
  v9 = [v8 webView];
  v10 = [v9 scrollView];
  [v10 bounds];
  v12 = v11;

  v17 = objc_opt_self();
  v13 = [v17 contentLayer];
  v14 = [v13 noteHTMLEditorView];
  v15 = [v14 webView];
  v16 = [v15 scrollView];
  [v16 _performScrollTest:v6 iterations:v4 delta:v12];
}

- (void)applyAccessibilityInfo
{
  v3 = +[NSBundle mainBundle];
  v26 = [v3 localizedStringForKey:@"New note" value:&stru_100661CF0 table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Double tap to compose a new note." value:&stru_100661CF0 table:0];

  v6 = [(NotesDisplayController *)self createBarButtonItem];
  [v6 setAccessibilityLabel:v26];

  v7 = [(NotesDisplayController *)self createNavBarButtonItem];
  [v7 setAccessibilityLabel:v26];

  v8 = [(NotesDisplayController *)self createBarButtonItem];
  [v8 setAccessibilityHint:v5];

  v9 = [(NotesDisplayController *)self createNavBarButtonItem];
  [v9 setAccessibilityHint:v5];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Share note" value:&stru_100661CF0 table:0];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Double tap to share the current note." value:&stru_100661CF0 table:0];

  v14 = [(NotesDisplayController *)self shareBarButtonItem];
  [v14 setAccessibilityLabel:v11];

  v15 = [(NotesDisplayController *)self shareNavBarButtonItem];
  [v15 setAccessibilityLabel:v11];

  v16 = [(NotesDisplayController *)self shareBarButtonItem];
  [v16 setAccessibilityHint:v13];

  v17 = [(NotesDisplayController *)self shareNavBarButtonItem];
  [v17 setAccessibilityHint:v13];

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Delete note" value:&stru_100661CF0 table:0];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Double tap to delete the current note." value:&stru_100661CF0 table:0];

  v22 = [(NotesDisplayController *)self deleteBarButtonItem];
  [v22 setAccessibilityLabel:v19];

  v23 = [(NotesDisplayController *)self deleteNavBarButtonItem];
  [v23 setAccessibilityLabel:v19];

  v24 = [(NotesDisplayController *)self deleteBarButtonItem];
  [v24 setAccessibilityHint:v21];

  v25 = [(NotesDisplayController *)self deleteNavBarButtonItem];
  [v25 setAccessibilityHint:v21];
}

- (void)updateViewAnnotation
{
  v4 = [(NotesDisplayController *)self view];
  v3 = [(NotesDisplayController *)self note];
  [v4 ic_annotateWithNote:v3];
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