@interface ICNoteEditorViewController
- (BOOL)collaborationButtons_updateCollaborationStateIfNeeded;
- (BOOL)isDarkModeForActivityItemsConfiguration;
- (BOOL)noteEditorActionMenuCanScanDocuments:(id)a3;
- (id)app_systemPaperInkPaletteButtonView:(id)a3;
- (id)app_systemPaperNavigationBar;
- (id)collaborationButtons_collaborationBarButtonItem;
- (id)notePreview:(id)a3;
- (id)realtimeCollaborationSelectionController;
- (void)app_createAndPresentCloudSharingControllerBySender:(id)a3;
- (void)app_shareButtonPressed:(id)a3;
- (void)app_showMoveToFolder;
- (void)app_showRecoverNoteAlert;
- (void)collaborationButtons_acceptInviteWithShareURL:(id)a3 invitationViewController:(id)a4;
- (void)collaborationButtons_registerForSharedWithYouHighlightUpdates;
- (void)collaborationButtons_setupCollaborationController;
- (void)collaboration_setupActivityItemsConfigurationProvider;
- (void)groupActivityDidChange;
- (void)ic_addInsertNoteLinkInteraction;
- (void)link_addCreateNoteInteraction;
- (void)link_addReplaceSelectionInteraction;
- (void)link_removeLinkActionInteractions;
- (void)noteCursorVisibilityChanged:(id)a3;
- (void)noteEditorActionMenuShouldScanDocuments:(id)a3;
- (void)noteEditorActionMenuShouldShowHandwritingDebug:(id)a3;
- (void)noteEditorActionMenuWillShow:(id)a3;
- (void)paperKitViewDidAppear:(id)a3;
- (void)paperKitViewWillDisappear:(id)a3;
- (void)ppt_didEditorBeginEditing;
- (void)ppt_didFinishExtendedLaunch;
- (void)ppt_didShowNoteEditor;
- (void)ppt_inkPickerDidShow;
- (void)ppt_noteEditorDidLayoutSubviews;
- (void)ppt_textViewDidChange;
- (void)ppt_willLoadNoteIntoEditor;
- (void)rcc_updatePaperKitMessengerForAttachment:(id)a3 layoutManager:(id)a4;
- (void)rcc_updatePaperKitMessengerForAttachment:(id)a3 textLayoutManager:(id)a4;
- (void)realtimeCollaborationControllerDidChangeSelectionState:(id)a3;
- (void)realtimeCollaborationControllerSessionDidTerminate:(id)a3;
- (void)realtimeCollaborationControllerSessionWillBegin:(id)a3;
- (void)updateFastSyncParticipantCursorsForNote:(id)a3;
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
  v4 = [(ICNoteEditorViewController *)self view];
  v3 = [(ICNoteEditorViewController *)self note];
  [v4 ic_annotateWithNote:v3];
}

- (void)link_addCreateNoteInteraction
{
  objc_initWeak(&location, self);
  v3 = [(ICNoteEditorViewController *)self view];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000CE618;
  v4[3] = &unk_100648E68;
  objc_copyWeak(&v5, &location);
  [v3 ic_addCreateNoteInteractionWithFolderHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)ic_addInsertNoteLinkInteraction
{
  *(swift_allocObject() + 16) = self;
  objc_allocWithZone(type metadata accessor for UIAppIntentInteraction());
  sub_100024048();
  v7 = self;
  v3 = UIAppIntentInteraction.init<A>(intent:perform:)();
  v4 = [(ICNoteEditorViewController *)v7 view];
  if (v4)
  {
    v5 = v4;
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
  v3 = [(ICNoteEditorViewController *)self view];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000CE6FC;
  v4[3] = &unk_100648E90;
  objc_copyWeak(&v5, &location);
  [v3 ic_addReplaceSelectionInteractionWithTextHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)collaborationButtons_updateCollaborationStateIfNeeded
{
  v3 = [(ICNoteEditorViewController *)self note];
  if (v3)
  {
  }

  else
  {
    v4 = [(ICNoteEditorViewController *)self collaborationButtonsController];
    v5 = [v4 cloudObject];

    if (!v5)
    {
      return 0;
    }
  }

  v6 = [(ICNoteEditorViewController *)self collaborationButtonsController];
  if (v6)
  {
    v7 = v6;
    v8 = [(ICNoteEditorViewController *)self note];
    v9 = [(ICNoteEditorViewController *)self collaborationButtonsController];
    v10 = [v9 cloudObject];
    v11 = [v8 isEqual:v10];

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
  v4 = [(ICNoteEditorViewController *)self note];
  v5 = [(ICNoteEditorViewController *)self viewControllerManager];
  v6 = [(ICCollaborationButtonsController *)v3 initWithCloudObject:v4 coordinator:v5];
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
    v3 = [(ICNoteEditorViewController *)self _appearState];

    if (v3 != 1)
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
  v3 = [v2 isRunningTest];

  if (v3)
  {
    v4 = +[ICAppDelegate sharedInstance];
    [v4 didShowNoteEditor];
  }
}

- (void)ppt_didEditorBeginEditing
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 isRunningTest];

  if (v3)
  {
    v4 = +[ICAppDelegate sharedInstance];
    [v4 didEditorBeginEditing];
  }
}

- (void)ppt_textViewDidChange
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 isRunningTest];

  if (v3)
  {
    v4 = +[ICAppDelegate sharedInstance];
    [v4 textViewDidChange];
  }
}

- (void)ppt_inkPickerDidShow
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 isRunningTest];

  if (v3)
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

- (void)realtimeCollaborationControllerSessionWillBegin:(id)a3
{
  v4 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [(ICNoteEditorViewController *)self note];
  v6 = [v5 attachments];

  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v11 paperBundleModel];

        if (v12)
        {
          v13 = [(ICNoteEditorViewController *)self textView];
          v14 = [v13 textLayoutManager];
          if (v14)
          {
            v15 = v14;
            IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();

            if (IsTextKit2Enabled)
            {
              objc_opt_class();
              v17 = [(ICNoteEditorViewController *)self textView];
              v18 = [v17 textLayoutManager];
              v19 = ICCheckedDynamicCast();

              [v4 updatePaperKitMessengerForAttachment:v11 textLayoutManager:v19];
LABEL_14:

              continue;
            }
          }

          else
          {
          }

          v19 = [(ICNoteEditorViewController *)self textView];
          v20 = [v19 layoutManager];
          if (v20)
          {
            v21 = v20;
            v22 = ICInternalSettingsIsTextKit2Enabled();

            if (v22)
            {
              continue;
            }

            objc_opt_class();
            v23 = [(ICNoteEditorViewController *)self textView];
            v24 = [v23 layoutManager];
            v19 = ICCheckedDynamicCast();

            [v4 updatePaperKitMessengerForAttachment:v11 layoutManager:v19];
          }

          goto LABEL_14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
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

- (void)realtimeCollaborationControllerSessionDidTerminate:(id)a3
{
  v22 = a3;
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
  v7 = [(ICNoteEditorViewController *)self note];
  v8 = [v7 attachments];

  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v14 typeUTI];
        v16 = [v15 isEqualToString:v12];

        if (v16)
        {
          if (ICInternalSettingsIsTextKit2Enabled())
          {
            objc_opt_class();
            v17 = [(ICNoteEditorViewController *)self textView];
            v18 = [v17 textLayoutManager];
            v19 = ICCheckedDynamicCast();

            [v22 removePaperKitMessengerForAttachmentIfNecessary:v14 textLayoutManager:v19];
          }

          else
          {
            objc_opt_class();
            v20 = [(ICNoteEditorViewController *)self textView];
            v21 = [v20 layoutManager];
            v19 = ICCheckedDynamicCast();

            [v22 removePaperKitMessengerForAttachmentIfNecessary:v14 layoutManager:v19];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }
}

- (void)realtimeCollaborationControllerDidChangeSelectionState:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self realtimeCollaborationSelectionController];
  [v5 realtimeCollaborationControllerDidChangeSelectionState:v4];
}

- (void)paperKitViewDidAppear:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v7 = ICCheckedDynamicCast();

  v6 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
  [v6 configurePaperKitAttachmentViewIfNecessary:v7];
}

- (void)paperKitViewWillDisappear:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v7 = ICCheckedDynamicCast();

  v6 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
  [v6 removePaperKitMessengerForViewIfNecessary:v7];
}

- (void)noteCursorVisibilityChanged:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v22 = v4;
  v5 = [v4 object];
  v23 = ICDynamicCast();

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [(ICNoteEditorViewController *)self note];
  v7 = [v6 attachments];

  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 typeUTI];
        v15 = [v14 isEqualToString:v11];

        if (v15)
        {
          if (ICInternalSettingsIsTextKit2Enabled())
          {
            objc_opt_class();
            v16 = [(ICNoteEditorViewController *)self textView];
            v17 = [v16 textLayoutManager];
            v18 = ICCheckedDynamicCast();

            if (v18)
            {
              v19 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
              [v19 setShowsCursors:objc_msgSend(v23 forPaperKitAttachment:"showsCollaboratorCursors") textLayoutManager:{v13, v18}];
              goto LABEL_12;
            }
          }

          else
          {
            objc_opt_class();
            v20 = [(ICNoteEditorViewController *)self textView];
            v21 = [v20 layoutManager];
            v18 = ICCheckedDynamicCast();

            if (v18)
            {
              v19 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
              [v19 setShowsCursors:objc_msgSend(v23 forPaperKitAttachment:"showsCollaboratorCursors") layoutManager:{v13, v18}];
LABEL_12:
            }
          }

          continue;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }
}

- (void)rcc_updatePaperKitMessengerForAttachment:(id)a3 layoutManager:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
  v8 = [v7 hasActiveSession];

  if (v8)
  {
    v9 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
    [v9 updatePaperKitMessengerForAttachment:v10 layoutManager:v6];
  }
}

- (void)rcc_updatePaperKitMessengerForAttachment:(id)a3 textLayoutManager:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
  v8 = [v7 hasActiveSession];

  if (v8)
  {
    v9 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
    [v9 updatePaperKitMessengerForAttachment:v10 textLayoutManager:v6];
  }
}

- (void)groupActivityDidChange
{
  v3 = [(ICNoteEditorViewController *)self note];
  [(ICNoteEditorViewController *)self updateFastSyncParticipantCursorsForNote:v3];
}

- (void)updateFastSyncParticipantCursorsForNote:(id)a3
{
  v18 = a3;
  v4 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v18 identifier];
  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v18 identifier];
  v9 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
  v10 = [v9 currentNoteIdentifier];
  v11 = [v8 isEqualToString:v10];

  if (!v11)
  {
LABEL_7:
    [(ICNoteEditorViewController *)self setRealtimeCollaborationSelectionController:0];
    goto LABEL_8;
  }

  v12 = [(ICNoteEditorViewController *)self realtimeCollaborationSelectionController];
  v13 = [v12 realtimeCollaborationController];
  v14 = [(ICNoteEditorViewController *)self realtimeCollaborationController];

  if (v13 != v14)
  {
    v15 = [ICRealtimeCollaborationSelectionController alloc];
    v16 = [(ICNoteEditorViewController *)self realtimeCollaborationController];
    v17 = [(ICRealtimeCollaborationSelectionController *)v15 initWithEditorController:self realtimeCollaborationController:v16];
    [(ICNoteEditorViewController *)self setRealtimeCollaborationSelectionController:v17];
  }

LABEL_8:
}

- (void)app_showRecoverNoteAlert
{
  v3 = [ICRecoverNoteAlertController alloc];
  v4 = [(ICNoteEditorViewController *)self note];
  v5 = [(ICRecoverNoteAlertController *)v3 initWithNote:v4];

  [(ICRecoverNoteAlertController *)v5 showFromViewController:self];
}

- (void)app_showMoveToFolder
{
  v3 = [ICMoveNoteActivity alloc];
  v4 = [(ICNoteEditorViewController *)self note];
  v5 = [(ICMoveNoteActivity *)v3 initWithNote:v4 presentingViewController:self];

  [(ICMoveNoteActivity *)v5 performActivityWithCompletion:0];
}

- (id)app_systemPaperInkPaletteButtonView:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorViewController *)self viewControllerManager];
  v6 = [v5 systemPaperViewController];

  v7 = [v6 inkPaletteButtonViewWithInkPaletteController:v4];

  return v7;
}

- (id)app_systemPaperNavigationBar
{
  v2 = [(ICNoteEditorViewController *)self viewControllerManager];
  v3 = [v2 systemPaperViewController];

  v4 = [v3 systemPaperNavigationBar];

  return v4;
}

- (void)app_shareButtonPressed:(id)a3
{
  v4 = a3;
  v9 = +[ICCollaborationUIController sharedInstance];
  v5 = [(ICNoteEditorViewController *)self view];
  v6 = [v5 window];
  v7 = [(ICNoteEditorViewController *)self note];
  v8 = [(ICNoteEditorViewController *)self eventReporter];
  [v9 presentSendNoteActivityViewControllerWithPresentingWindow:v6 presentingViewController:self sourceItem:v4 sourceView:0 sourceRect:v7 note:&__NSArray0__struct excludedTypes:CGRectNull.origin.x eventReporter:CGRectNull.origin.y didPresentActivityHandler:{CGRectNull.size.width, CGRectNull.size.height, v8, 0}];
}

- (id)collaborationButtons_collaborationBarButtonItem
{
  v3 = [(ICNoteEditorViewController *)self collaborationButtonsController];

  if (!v3)
  {
    [(ICNoteEditorViewController *)self collaborationButtons_setupCollaborationController];
  }

  v4 = [(ICNoteEditorViewController *)self collaborationButtonsController];
  v5 = [v4 buttonItem];
  [(ICNoteEditorViewController *)self setCollaborationBarButtonItem:v5];

  return [(ICNoteEditorViewController *)self collaborationBarButtonItem];
}

- (void)collaborationButtons_acceptInviteWithShareURL:(id)a3 invitationViewController:(id)a4
{
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CE05C;
  block[3] = &unk_100645E30;
  v7 = a4;
  v16 = v7;
  dispatch_async(&_dispatch_main_q, block);
  v8 = dispatch_get_global_queue(2, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CE068;
  v11[3] = &unk_100645D40;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)app_createAndPresentCloudSharingControllerBySender:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(ICNoteEditorViewController *)self iCloudShareBarButtonItem];
  }

  v7 = v6;
  v8 = +[ICCollaborationUIController sharedInstance];
  v9 = [(ICNoteEditorViewController *)self note];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CE588;
  v10[3] = &unk_100645E30;
  v10[4] = self;
  [v8 showCloudSharingControllerForNote:v9 presentingViewController:self popoverBarButtonItem:v7 presented:v10 dismissed:0];
}

- (BOOL)isDarkModeForActivityItemsConfiguration
{
  v2 = [(ICNoteEditorViewController *)self traitCollection];
  v3 = [v2 ic_isDark];

  return v3;
}

- (void)link_removeLinkActionInteractions
{
  v2 = [(ICNoteEditorViewController *)self view];
  [v2 ic_removeLinkActionInteractions];
}

- (id)notePreview:(id)a3
{
  v3 = a3;
  v4 = [[ICNotePreviewViewController alloc] initWithNote:v3];

  return v4;
}

- (BOOL)noteEditorActionMenuCanScanDocuments:(id)a3
{
  if (+[UIDevice ic_isVision])
  {
    v4 = [(ICNoteEditorViewController *)self navigationItemConfiguration];
    v5 = [v4 mediaBarButtonItem];
    v6 = [v5 menu];
    v7 = v6 != 0;

    return v7;
  }

  else
  {

    return +[ICDeviceSupport isCameraAvailable];
  }
}

- (void)noteEditorActionMenuShouldScanDocuments:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DA538;
  v3[3] = &unk_100645E30;
  v3[4] = self;
  [(ICNoteEditorViewController *)self ic_dismissPresentedViewControllerAnimated:1 completion:v3];
}

- (void)noteEditorActionMenuShouldShowHandwritingDebug:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000DA5C0;
  v3[3] = &unk_100645E30;
  v3[4] = self;
  [(ICNoteEditorViewController *)self ic_dismissPresentedViewControllerAnimated:1 completion:v3];
}

- (void)noteEditorActionMenuWillShow:(id)a3
{
  v4 = [(ICNoteEditorViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICNoteEditorViewController *)self delegate];
    [v6 noteEditorDidTapActionMenu:self];
  }

  if (!_UISolariumEnabled() || (-[ICNoteEditorViewController traitCollection](self, "traitCollection"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 ic_hasCompactSize], v7, (v8 & 1) == 0))
  {

    [(ICNoteEditorViewController *)self hideInkPicker];
  }
}

@end