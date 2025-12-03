@interface ICNoteEditorViewController
- (BOOL)collaborationButtons_updateCollaborationStateIfNeeded;
- (BOOL)isDarkModeForActivityItemsConfiguration;
- (BOOL)noteEditorActionMenuCanScanDocuments:(id)documents;
- (id)app_systemPaperInkPaletteButtonView:(id)view;
- (id)app_systemPaperNavigationBar;
- (id)collaborationButtons_collaborationBarButtonItem;
- (id)notePreview:(id)preview;
- (id)realtimeCollaborationSelectionController;
- (void)app_createAndPresentCloudSharingControllerBySender:(id)sender;
- (void)app_shareButtonPressed:(id)pressed;
- (void)app_showMoveToFolder;
- (void)app_showRecoverNoteAlert;
- (void)collaborationButtons_acceptInviteWithShareURL:(id)l invitationViewController:(id)controller;
- (void)collaborationButtons_registerForSharedWithYouHighlightUpdates;
- (void)collaborationButtons_setupCollaborationController;
- (void)collaboration_setupActivityItemsConfigurationProvider;
- (void)groupActivityDidChange;
- (void)ic_addInsertNoteLinkInteraction;
- (void)link_addCreateNoteInteraction;
- (void)link_addReplaceSelectionInteraction;
- (void)link_removeLinkActionInteractions;
- (void)noteCursorVisibilityChanged:(id)changed;
- (void)noteEditorActionMenuShouldScanDocuments:(id)documents;
- (void)noteEditorActionMenuShouldShowHandwritingDebug:(id)debug;
- (void)noteEditorActionMenuWillShow:(id)show;
- (void)paperKitViewDidAppear:(id)appear;
- (void)paperKitViewWillDisappear:(id)disappear;
- (void)ppt_didEditorBeginEditing;
- (void)ppt_didFinishExtendedLaunch;
- (void)ppt_didShowNoteEditor;
- (void)ppt_inkPickerDidShow;
- (void)ppt_noteEditorDidLayoutSubviews;
- (void)ppt_textViewDidChange;
- (void)ppt_willLoadNoteIntoEditor;
- (void)rcc_updatePaperKitMessengerForAttachment:(id)attachment layoutManager:(id)manager;
- (void)rcc_updatePaperKitMessengerForAttachment:(id)attachment textLayoutManager:(id)manager;
- (void)realtimeCollaborationControllerDidChangeSelectionState:(id)state;
- (void)realtimeCollaborationControllerSessionDidTerminate:(id)terminate;
- (void)realtimeCollaborationControllerSessionWillBegin:(id)begin;
- (void)updateFastSyncParticipantCursorsForNote:(id)note;
- (void)updateViewAnnotation;
@end

@implementation ICNoteEditorViewController

- (void)collaborationButtons_registerForSharedWithYouHighlightUpdates
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"sharedWithYouControllerDidUpdateHighlights:" name:ICSharedWithYouControllerDidUpdateHighlightsNotification object:0];
}

- (void)ppt_willLoadNoteIntoEditor
{
  v2 = +[ICAppDelegate sharedInstance];
  [v2 willLoadNoteIntoEditor];
}

- (void)updateViewAnnotation
{
  view = [(ICNoteEditorViewController *)self view];
  note = [(ICNoteEditorViewController *)self note];
  [view ic_annotateWithNote:note];
}

- (void)link_addCreateNoteInteraction
{
  objc_initWeak(&location, self);
  view = [(ICNoteEditorViewController *)self view];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000CE618;
  v4[3] = &unk_100648E68;
  objc_copyWeak(&v5, &location);
  [view ic_addCreateNoteInteractionWithFolderHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)ic_addInsertNoteLinkInteraction
{
  *(swift_allocObject() + 16) = self;
  objc_allocWithZone(type metadata accessor for UIAppIntentInteraction());
  sub_100024048();
  selfCopy = self;
  v3 = UIAppIntentInteraction.init<A>(intent:perform:)();
  view = [(ICNoteEditorViewController *)selfCopy view];
  if (view)
  {
    v5 = view;
    v6 = v3;
    [v5 addInteraction:v6];
  }

  else
  {
    __break(1u);
  }
}

- (void)link_addReplaceSelectionInteraction
{
  objc_initWeak(&location, self);
  view = [(ICNoteEditorViewController *)self view];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000CE6FC;
  v4[3] = &unk_100648E90;
  objc_copyWeak(&v5, &location);
  [view ic_addReplaceSelectionInteractionWithTextHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)collaborationButtons_updateCollaborationStateIfNeeded
{
  note = [(ICNoteEditorViewController *)self note];
  if (note)
  {
  }

  else
  {
    collaborationButtonsController = [(ICNoteEditorViewController *)self collaborationButtonsController];
    cloudObject = [collaborationButtonsController cloudObject];

    if (!cloudObject)
    {
      return 0;
    }
  }

  collaborationButtonsController2 = [(ICNoteEditorViewController *)self collaborationButtonsController];
  if (collaborationButtonsController2)
  {
    v7 = collaborationButtonsController2;
    note2 = [(ICNoteEditorViewController *)self note];
    collaborationButtonsController3 = [(ICNoteEditorViewController *)self collaborationButtonsController];
    cloudObject2 = [collaborationButtonsController3 cloudObject];
    v11 = [note2 isEqual:cloudObject2];

    if (v11)
    {
      return 0;
    }
  }

  [(ICNoteEditorViewController *)self collaborationButtons_setupCollaborationController];
  return 1;
}

- (void)collaborationButtons_setupCollaborationController
{
  objc_initWeak(&location, self);
  v3 = [ICCollaborationButtonsController alloc];
  note = [(ICNoteEditorViewController *)self note];
  viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
  v6 = [(ICCollaborationButtonsController *)v3 initWithCloudObject:note coordinator:viewControllerManager];
  [(ICNoteEditorViewController *)self setCollaborationButtonsController:v6];

  objc_copyWeak(&v9, &location);
  v7 = [(ICNoteEditorViewController *)self collaborationButtonsController:_NSConcreteStackBlock];
  [v7 setDidPressManageShareButton:&v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)ppt_noteEditorDidLayoutSubviews
{
  v4 = +[UIApplication sharedApplication];
  if ([v4 isRunningTest])
  {
    _appearState = [(ICNoteEditorViewController *)self _appearState];

    if (_appearState != 1)
    {
      return;
    }

    v4 = +[ICAppDelegate sharedInstance];
    [v4 noteEditorDidLayoutSubviews];
  }
}

- (void)collaboration_setupActivityItemsConfigurationProvider
{
  v3 = [[ICNoteEditorActivityItemsConfigurationProvider alloc] initWithDelegate:self];
  [(ICNoteEditorViewController *)self setActivityItemsConfigurationProvider:v3];
}

- (void)ppt_didFinishExtendedLaunch
{
  v2 = +[ICAppDelegate sharedInstance];
  [v2 didFinishExtendedLaunch];
}

- (void)ppt_didShowNoteEditor
{
  v2 = +[UIApplication sharedApplication];
  isRunningTest = [v2 isRunningTest];

  if (isRunningTest)
  {
    v4 = +[ICAppDelegate sharedInstance];
    [v4 didShowNoteEditor];
  }
}

- (void)ppt_didEditorBeginEditing
{
  v2 = +[UIApplication sharedApplication];
  isRunningTest = [v2 isRunningTest];

  if (isRunningTest)
  {
    v4 = +[ICAppDelegate sharedInstance];
    [v4 didEditorBeginEditing];
  }
}

- (void)ppt_textViewDidChange
{
  v2 = +[UIApplication sharedApplication];
  isRunningTest = [v2 isRunningTest];

  if (isRunningTest)
  {
    v4 = +[ICAppDelegate sharedInstance];
    [v4 textViewDidChange];
  }
}

- (void)ppt_inkPickerDidShow
{
  v2 = +[UIApplication sharedApplication];
  isRunningTest = [v2 isRunningTest];

  if (isRunningTest)
  {
    v4 = +[ICAppDelegate sharedInstance];
    [v4 inkPickerDidShow];
  }
}

- (id)realtimeCollaborationSelectionController
{
  objc_opt_class();
  v3 = objc_getAssociatedObject(self, off_1006BB058);
  v4 = ICDynamicCast();

  return v4;
}

- (void)realtimeCollaborationControllerSessionWillBegin:(id)begin
{
  beginCopy = begin;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  note = [(ICNoteEditorViewController *)self note];
  attachments = [note attachments];

  v7 = [attachments countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(attachments);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        paperBundleModel = [v11 paperBundleModel];

        if (paperBundleModel)
        {
          textView = [(ICNoteEditorViewController *)self textView];
          textLayoutManager = [textView textLayoutManager];
          if (textLayoutManager)
          {
            v15 = textLayoutManager;
            IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();

            if (IsTextKit2Enabled)
            {
              objc_opt_class();
              textView2 = [(ICNoteEditorViewController *)self textView];
              textLayoutManager2 = [textView2 textLayoutManager];
              textView3 = ICCheckedDynamicCast();

              [beginCopy updatePaperKitMessengerForAttachment:v11 textLayoutManager:textView3];
LABEL_14:

              continue;
            }
          }

          else
          {
          }

          textView3 = [(ICNoteEditorViewController *)self textView];
          layoutManager = [textView3 layoutManager];
          if (layoutManager)
          {
            v21 = layoutManager;
            v22 = ICInternalSettingsIsTextKit2Enabled();

            if (v22)
            {
              continue;
            }

            objc_opt_class();
            textView4 = [(ICNoteEditorViewController *)self textView];
            layoutManager2 = [textView4 layoutManager];
            textView3 = ICCheckedDynamicCast();

            [beginCopy updatePaperKitMessengerForAttachment:v11 layoutManager:textView3];
          }

          goto LABEL_14;
        }
      }

      v8 = [attachments countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v25 = +[NSNotificationCenter defaultCenter];
  [v25 addObserver:self selector:"paperKitViewDidAppear:" name:ICSystemPaperTextAttachmentDidAppearNotification object:0];

  v26 = +[NSNotificationCenter defaultCenter];
  [v26 addObserver:self selector:"paperKitViewWillDisappear:" name:ICSystemPaperTextAttachmentWillDisappearNotification object:0];

  v27 = +[NSNotificationCenter defaultCenter];
  [v27 addObserver:self selector:"noteCursorVisibilityChanged:" name:ICNoteShowsCollaboratorCursorsDidChangeNotification object:0];
}

- (void)realtimeCollaborationControllerSessionDidTerminate:(id)terminate
{
  terminateCopy = terminate;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:ICSystemPaperTextAttachmentDidAppearNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:ICSystemPaperTextAttachmentWillDisappearNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:ICNoteShowsCollaboratorCursorsDidChangeNotification object:0];

  [(ICNoteEditorViewController *)self _realtimeCollaborationSessionStateDidChange];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  note = [(ICNoteEditorViewController *)self note];
  attachments = [note attachments];

  v9 = [attachments countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    v12 = ICAttachmentUTTypeSystemPaper;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(attachments);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        typeUTI = [v14 typeUTI];
        v16 = [typeUTI isEqualToString:v12];

        if (v16)
        {
          if (ICInternalSettingsIsTextKit2Enabled())
          {
            objc_opt_class();
            textView = [(ICNoteEditorViewController *)self textView];
            textLayoutManager = [textView textLayoutManager];
            v19 = ICCheckedDynamicCast();

            [terminateCopy removePaperKitMessengerForAttachmentIfNecessary:v14 textLayoutManager:v19];
          }

          else
          {
            objc_opt_class();
            textView2 = [(ICNoteEditorViewController *)self textView];
            layoutManager = [textView2 layoutManager];
            v19 = ICCheckedDynamicCast();

            [terminateCopy removePaperKitMessengerForAttachmentIfNecessary:v14 layoutManager:v19];
          }
        }
      }

      v10 = [attachments countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }
}

- (void)realtimeCollaborationControllerDidChangeSelectionState:(id)state
{
  stateCopy = state;
  realtimeCollaborationSelectionController = [(ICNoteEditorViewController *)self realtimeCollaborationSelectionController];
  [realtimeCollaborationSelectionController realtimeCollaborationControllerDidChangeSelectionState:stateCopy];
}

- (void)paperKitViewDidAppear:(id)appear
{
  appearCopy = appear;
  objc_opt_class();
  object = [appearCopy object];

  v7 = ICCheckedDynamicCast();

  realtimeCollaborationController = [(ICNoteEditorViewController *)self realtimeCollaborationController];
  [realtimeCollaborationController configurePaperKitAttachmentViewIfNecessary:v7];
}

- (void)paperKitViewWillDisappear:(id)disappear
{
  disappearCopy = disappear;
  objc_opt_class();
  object = [disappearCopy object];

  v7 = ICCheckedDynamicCast();

  realtimeCollaborationController = [(ICNoteEditorViewController *)self realtimeCollaborationController];
  [realtimeCollaborationController removePaperKitMessengerForViewIfNecessary:v7];
}

- (void)noteCursorVisibilityChanged:(id)changed
{
  changedCopy = changed;
  objc_opt_class();
  v22 = changedCopy;
  object = [changedCopy object];
  v23 = ICDynamicCast();

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  note = [(ICNoteEditorViewController *)self note];
  attachments = [note attachments];

  v8 = [attachments countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    v11 = ICAttachmentUTTypeSystemPaper;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(attachments);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        typeUTI = [v13 typeUTI];
        v15 = [typeUTI isEqualToString:v11];

        if (v15)
        {
          if (ICInternalSettingsIsTextKit2Enabled())
          {
            objc_opt_class();
            textView = [(ICNoteEditorViewController *)self textView];
            textLayoutManager = [textView textLayoutManager];
            v18 = ICCheckedDynamicCast();

            if (v18)
            {
              realtimeCollaborationController = [(ICNoteEditorViewController *)self realtimeCollaborationController];
              [realtimeCollaborationController setShowsCursors:objc_msgSend(v23 forPaperKitAttachment:"showsCollaboratorCursors") textLayoutManager:{v13, v18}];
              goto LABEL_12;
            }
          }

          else
          {
            objc_opt_class();
            textView2 = [(ICNoteEditorViewController *)self textView];
            layoutManager = [textView2 layoutManager];
            v18 = ICCheckedDynamicCast();

            if (v18)
            {
              realtimeCollaborationController = [(ICNoteEditorViewController *)self realtimeCollaborationController];
              [realtimeCollaborationController setShowsCursors:objc_msgSend(v23 forPaperKitAttachment:"showsCollaboratorCursors") layoutManager:{v13, v18}];
LABEL_12:
            }
          }

          continue;
        }
      }

      v9 = [attachments countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }
}

- (void)rcc_updatePaperKitMessengerForAttachment:(id)attachment layoutManager:(id)manager
{
  attachmentCopy = attachment;
  managerCopy = manager;
  realtimeCollaborationController = [(ICNoteEditorViewController *)self realtimeCollaborationController];
  hasActiveSession = [realtimeCollaborationController hasActiveSession];

  if (hasActiveSession)
  {
    realtimeCollaborationController2 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
    [realtimeCollaborationController2 updatePaperKitMessengerForAttachment:attachmentCopy layoutManager:managerCopy];
  }
}

- (void)rcc_updatePaperKitMessengerForAttachment:(id)attachment textLayoutManager:(id)manager
{
  attachmentCopy = attachment;
  managerCopy = manager;
  realtimeCollaborationController = [(ICNoteEditorViewController *)self realtimeCollaborationController];
  hasActiveSession = [realtimeCollaborationController hasActiveSession];

  if (hasActiveSession)
  {
    realtimeCollaborationController2 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
    [realtimeCollaborationController2 updatePaperKitMessengerForAttachment:attachmentCopy textLayoutManager:managerCopy];
  }
}

- (void)groupActivityDidChange
{
  note = [(ICNoteEditorViewController *)self note];
  [(ICNoteEditorViewController *)self updateFastSyncParticipantCursorsForNote:note];
}

- (void)updateFastSyncParticipantCursorsForNote:(id)note
{
  noteCopy = note;
  realtimeCollaborationController = [(ICNoteEditorViewController *)self realtimeCollaborationController];
  if (!realtimeCollaborationController)
  {
    goto LABEL_7;
  }

  v5 = realtimeCollaborationController;
  identifier = [noteCopy identifier];
  if (!identifier)
  {

    goto LABEL_7;
  }

  v7 = identifier;
  identifier2 = [noteCopy identifier];
  realtimeCollaborationController2 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
  currentNoteIdentifier = [realtimeCollaborationController2 currentNoteIdentifier];
  v11 = [identifier2 isEqualToString:currentNoteIdentifier];

  if (!v11)
  {
LABEL_7:
    [(ICNoteEditorViewController *)self setRealtimeCollaborationSelectionController:0];
    goto LABEL_8;
  }

  realtimeCollaborationSelectionController = [(ICNoteEditorViewController *)self realtimeCollaborationSelectionController];
  realtimeCollaborationController3 = [realtimeCollaborationSelectionController realtimeCollaborationController];
  realtimeCollaborationController4 = [(ICNoteEditorViewController *)self realtimeCollaborationController];

  if (realtimeCollaborationController3 != realtimeCollaborationController4)
  {
    v15 = [ICRealtimeCollaborationSelectionController alloc];
    realtimeCollaborationController5 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
    v17 = [(ICRealtimeCollaborationSelectionController *)v15 initWithEditorController:self realtimeCollaborationController:realtimeCollaborationController5];
    [(ICNoteEditorViewController *)self setRealtimeCollaborationSelectionController:v17];
  }

LABEL_8:
}

- (void)app_showRecoverNoteAlert
{
  v3 = [ICRecoverNoteAlertController alloc];
  note = [(ICNoteEditorViewController *)self note];
  v5 = [(ICRecoverNoteAlertController *)v3 initWithNote:note];

  [(ICRecoverNoteAlertController *)v5 showFromViewController:self];
}

- (void)app_showMoveToFolder
{
  v3 = [ICMoveNoteActivity alloc];
  note = [(ICNoteEditorViewController *)self note];
  v5 = [(ICMoveNoteActivity *)v3 initWithNote:note presentingViewController:self];

  [(ICMoveNoteActivity *)v5 performActivityWithCompletion:0];
}

- (id)app_systemPaperInkPaletteButtonView:(id)view
{
  viewCopy = view;
  viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
  systemPaperViewController = [viewControllerManager systemPaperViewController];

  v7 = [systemPaperViewController inkPaletteButtonViewWithInkPaletteController:viewCopy];

  return v7;
}

- (id)app_systemPaperNavigationBar
{
  viewControllerManager = [(ICNoteEditorViewController *)self viewControllerManager];
  systemPaperViewController = [viewControllerManager systemPaperViewController];

  systemPaperNavigationBar = [systemPaperViewController systemPaperNavigationBar];

  return systemPaperNavigationBar;
}

- (void)app_shareButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  v9 = +[ICCollaborationUIController sharedInstance];
  view = [(ICNoteEditorViewController *)self view];
  window = [view window];
  note = [(ICNoteEditorViewController *)self note];
  eventReporter = [(ICNoteEditorViewController *)self eventReporter];
  [v9 presentSendNoteActivityViewControllerWithPresentingWindow:window presentingViewController:self sourceItem:pressedCopy sourceView:0 sourceRect:note note:&__NSArray0__struct excludedTypes:CGRectNull.origin.x eventReporter:CGRectNull.origin.y didPresentActivityHandler:{CGRectNull.size.width, CGRectNull.size.height, eventReporter, 0}];
}

- (id)collaborationButtons_collaborationBarButtonItem
{
  collaborationButtonsController = [(ICNoteEditorViewController *)self collaborationButtonsController];

  if (!collaborationButtonsController)
  {
    [(ICNoteEditorViewController *)self collaborationButtons_setupCollaborationController];
  }

  collaborationButtonsController2 = [(ICNoteEditorViewController *)self collaborationButtonsController];
  buttonItem = [collaborationButtonsController2 buttonItem];
  [(ICNoteEditorViewController *)self setCollaborationBarButtonItem:buttonItem];

  return [(ICNoteEditorViewController *)self collaborationBarButtonItem];
}

- (void)collaborationButtons_acceptInviteWithShareURL:(id)l invitationViewController:(id)controller
{
  lCopy = l;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CE05C;
  block[3] = &unk_100645E30;
  controllerCopy = controller;
  v16 = controllerCopy;
  dispatch_async(&_dispatch_main_q, block);
  v8 = dispatch_get_global_queue(2, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CE068;
  v11[3] = &unk_100645D40;
  v12 = lCopy;
  v13 = controllerCopy;
  selfCopy = self;
  v9 = controllerCopy;
  v10 = lCopy;
  dispatch_async(v8, v11);
}

- (void)app_createAndPresentCloudSharingControllerBySender:(id)sender
{
  senderCopy = sender;
  v5 = senderCopy;
  if (senderCopy)
  {
    iCloudShareBarButtonItem = senderCopy;
  }

  else
  {
    iCloudShareBarButtonItem = [(ICNoteEditorViewController *)self iCloudShareBarButtonItem];
  }

  v7 = iCloudShareBarButtonItem;
  v8 = +[ICCollaborationUIController sharedInstance];
  note = [(ICNoteEditorViewController *)self note];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CE588;
  v10[3] = &unk_100645E30;
  v10[4] = self;
  [v8 showCloudSharingControllerForNote:note presentingViewController:self popoverBarButtonItem:v7 presented:v10 dismissed:0];
}

- (BOOL)isDarkModeForActivityItemsConfiguration
{
  traitCollection = [(ICNoteEditorViewController *)self traitCollection];
  ic_isDark = [traitCollection ic_isDark];

  return ic_isDark;
}

- (void)link_removeLinkActionInteractions
{
  view = [(ICNoteEditorViewController *)self view];
  [view ic_removeLinkActionInteractions];
}

- (id)notePreview:(id)preview
{
  previewCopy = preview;
  v4 = [[ICNotePreviewViewController alloc] initWithNote:previewCopy];

  return v4;
}

- (BOOL)noteEditorActionMenuCanScanDocuments:(id)documents
{
  if (+[UIDevice ic_isVision])
  {
    navigationItemConfiguration = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    mediaBarButtonItem = [navigationItemConfiguration mediaBarButtonItem];
    menu = [mediaBarButtonItem menu];
    v7 = menu != 0;

    return v7;
  }

  else
  {

    return +[ICDeviceSupport isCameraAvailable];
  }
}

- (void)noteEditorActionMenuShouldScanDocuments:(id)documents
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DA538;
  v3[3] = &unk_100645E30;
  v3[4] = self;
  [(ICNoteEditorViewController *)self ic_dismissPresentedViewControllerAnimated:1 completion:v3];
}

- (void)noteEditorActionMenuShouldShowHandwritingDebug:(id)debug
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DA5C0;
  v3[3] = &unk_100645E30;
  v3[4] = self;
  [(ICNoteEditorViewController *)self ic_dismissPresentedViewControllerAnimated:1 completion:v3];
}

- (void)noteEditorActionMenuWillShow:(id)show
{
  delegate = [(ICNoteEditorViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ICNoteEditorViewController *)self delegate];
    [delegate2 noteEditorDidTapActionMenu:self];
  }

  if (!_UISolariumEnabled() || (-[ICNoteEditorViewController traitCollection](self, "traitCollection"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 ic_hasCompactSize], v7, (v8 & 1) == 0))
  {

    [(ICNoteEditorViewController *)self hideInkPicker];
  }
}

@end