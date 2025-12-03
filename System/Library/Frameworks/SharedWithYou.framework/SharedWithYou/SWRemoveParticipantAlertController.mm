@interface SWRemoveParticipantAlertController
+ (SWRemoveParticipantAlertController)alertControllerWithParticipant:(SWPerson *)participant highlight:(SWCollaborationHighlight *)highlight;
- (id)_initWithParticipant:(id)participant highlight:(id)highlight;
@end

@implementation SWRemoveParticipantAlertController

- (id)_initWithParticipant:(id)participant highlight:(id)highlight
{
  participantCopy = participant;
  highlightCopy = highlight;
  v17.receiver = self;
  v17.super_class = SWRemoveParticipantAlertController;
  v11 = [(SWRemoveParticipantAlertController *)&v17 init];
  if (v11)
  {
    title = [highlightCopy title];
    if (title)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = SWFrameworkBundle();
      v4 = [v14 localizedStringForKey:@"PERSON_HAS_BEEN_REMOVED_FROM_THIS_COLLABORATION_WITH_NAME" value:&stru_1F3ABB850 table:@"SharedWithYou"];
      displayName = [participantCopy displayName];
      title2 = [highlightCopy title];
      [v13 stringWithFormat:v4, displayName, title2];
    }

    else
    {
      v14 = SWFrameworkBundle();
      [v14 localizedStringForKey:@"PERSON_HAS_BEEN_REMOVED_FROM_THIS_COLLABORATION_WITHOUT_NAME" value:&stru_1F3ABB850 table:@"SharedWithYou"];
    }
    v15 = ;
    objc_storeStrong(&v11->_messageText, v15);
    if (title)
    {

      v15 = v4;
    }
  }

  return v11;
}

+ (SWRemoveParticipantAlertController)alertControllerWithParticipant:(SWPerson *)participant highlight:(SWCollaborationHighlight *)highlight
{
  v5 = highlight;
  v6 = participant;
  v7 = [[SWRemoveParticipantAlertController alloc] _initWithParticipant:v6 highlight:v5];

  [v7 setModalPresentationStyle:6];

  return v7;
}

void __52__SWRemoveParticipantAlertController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:*(a1 + 40) completion:0];
}

void __54___SWRemoveParticipantAlertController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (v7 && !v6 && WeakRetained)
  {
    [v7 setDelegate:WeakRetained];
    [v9 addChildViewController:v7];
    v10 = [v9 view];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v7 view];
    [v19 setFrame:{v12, v14, v16, v18}];

    v20 = [v7 view];
    [v20 setAutoresizingMask:18];

    v21 = [v9 view];
    v22 = [v7 view];
    [v21 addSubview:v22];

    [v7 didMoveToParentViewController:v9];
    v23 = [v9 participant];
    v24 = [v9 highlight];
    [v7 _promptToRemoveParticipant:v23 fromHighlight:v24 preferredStyle:{objc_msgSend(v9, "preferredStyle")}];
  }

  else
  {
    v25 = SWFrameworkLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v27 = 138412802;
      v28 = v7;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v6;
      _os_log_error_impl(&dword_1BBC06000, v25, OS_LOG_TYPE_ERROR, "Failed to present _SWRemoveParticipantAlertRemoteController. Dismissing without prompting the user for changes to the Messages group. remotePromptController: %@, presenter: %@, error: %@", &v27, 0x20u);
    }

    [v9 dismissAlert];
  }

  v26 = *MEMORY[0x1E69E9840];
}

@end