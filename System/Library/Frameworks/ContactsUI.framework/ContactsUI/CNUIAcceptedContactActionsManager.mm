@interface CNUIAcceptedContactActionsManager
+ (id)log;
- (CNUIAcceptedContactActionsManager)initWithConfiguration:(id)configuration;
- (CNUIAcceptedContactActionsManagerDelegate)delegate;
- (id)_makeAlertControllerForTagWithTitle:(id)title;
- (id)_makeAlertControllerToAddTag;
- (id)_makeAlertControllerToCreateContactOrAddTag;
- (id)_makeAlertControllerToEditTag;
- (id)cancelAction;
- (id)doneActionForAlertController:(id)controller;
- (id)presentingViewController;
- (id)presentingViewControllerWithSourceView:(id *)view sourceRect:(CGRect *)rect;
- (void)_presentAcceptedContacAddLabelViewController;
- (void)_presentAcceptedContactEditLabelViewController;
- (void)_presentCreateNewContactOrNewLabelViewController;
- (void)_presentCreateNewContactViewController;
- (void)_presentViewController:(id)controller;
- (void)_recordAcceptedEventWithDisplayName:(id)name;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)presentAcceptedContactViewController;
@end

@implementation CNUIAcceptedContactActionsManager

- (CNUIAcceptedContactActionsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  controllerCopy = controller;
  presentingViewController = [(CNUIAcceptedContactActionsManager *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  navigationController = [controllerCopy navigationController];

  v10 = [navigationController popViewControllerAnimated:1];
  delegate = [(CNUIAcceptedContactActionsManager *)self delegate];
  [delegate acceptedContactActionsManager:self didCreateNewContact:contactCopy];

  metricsEvent = [(CNUIAcceptedContactActionsManager *)self metricsEvent];
  [metricsEvent reportWithSuccess:1];
}

- (id)presentingViewControllerWithSourceView:(id *)view sourceRect:(CGRect *)rect
{
  delegate = [(CNUIAcceptedContactActionsManager *)self delegate];
  v8 = [delegate presentingViewControllerForAcceptedContactActionsManager:self sourceView:view sourceRect:rect];

  return v8;
}

- (id)presentingViewController
{
  delegate = [(CNUIAcceptedContactActionsManager *)self delegate];
  v4 = [delegate presentingViewControllerForAcceptedContactActionsManager:self sourceView:0 sourceRect:0];

  return v4;
}

- (id)cancelAction
{
  v3 = MEMORY[0x1E69DC648];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"ACCEPTED_CONTACTS_ADD_NAME_CANCEL_ACTION" value:&stru_1F0CE7398 table:@"Localized"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__CNUIAcceptedContactActionsManager_cancelAction__block_invoke;
  v8[3] = &unk_1E74E6C28;
  v8[4] = self;
  v6 = [v3 actionWithTitle:v5 style:1 handler:v8];

  return v6;
}

void __49__CNUIAcceptedContactActionsManager_cancelAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) metricsEvent];
  [v2 reportWithSuccess:0];

  v3 = [*(a1 + 32) delegate];
  [v3 acceptedContactActionsManagerDidCancel:*(a1 + 32)];
}

- (id)doneActionForAlertController:(id)controller
{
  controllerCopy = controller;
  v5 = MEMORY[0x1E69DC648];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"ACCEPTED_CONTACTS_ADD_NAME_DONE_ACTION" value:&stru_1F0CE7398 table:@"Localized"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CNUIAcceptedContactActionsManager_doneActionForAlertController___block_invoke;
  v11[3] = &unk_1E74E7308;
  v12 = controllerCopy;
  selfCopy = self;
  v8 = controllerCopy;
  v9 = [v5 actionWithTitle:v7 style:0 handler:v11];

  return v9;
}

void __66__CNUIAcceptedContactActionsManager_doneActionForAlertController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v5 = [v2 firstObject];

  v3 = *(a1 + 40);
  v4 = [v5 text];
  [v3 _recordAcceptedEventWithDisplayName:v4];
}

- (void)_recordAcceptedEventWithDisplayName:(id)name
{
  nameCopy = name;
  configuration = [(CNUIAcceptedContactActionsManager *)self configuration];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__CNUIAcceptedContactActionsManager__recordAcceptedEventWithDisplayName___block_invoke;
  v6[3] = &unk_1E74E5200;
  v6[4] = self;
  [configuration recordAcceptedEventWithDisplayName:nameCopy completionHandler:v6];
}

void __73__CNUIAcceptedContactActionsManager__recordAcceptedEventWithDisplayName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) metricsEvent];
  [v2 reportWithSuccess:1];

  v3 = [*(a1 + 32) delegate];
  [v3 acceptedContactActionsManager:*(a1 + 32) didRecordRecentEvent:0];
}

- (id)_makeAlertControllerForTagWithTitle:(id)title
{
  v4 = MEMORY[0x1E69DC650];
  titleCopy = title;
  configuration = [(CNUIAcceptedContactActionsManager *)self configuration];
  handle = [configuration handle];
  v8 = [v4 alertControllerWithTitle:titleCopy message:handle preferredStyle:1];

  v9 = [(CNUIAcceptedContactActionsManager *)self doneActionForAlertController:v8];
  cancelAction = [(CNUIAcceptedContactActionsManager *)self cancelAction];
  [v8 addAction:v9];
  [v8 addAction:cancelAction];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__CNUIAcceptedContactActionsManager__makeAlertControllerForTagWithTitle___block_invoke;
  v12[3] = &unk_1E74E51D8;
  v12[4] = self;
  [v8 addTextFieldWithConfigurationHandler:v12];
  [v8 setPreferredAction:v9];

  return v8;
}

void __73__CNUIAcceptedContactActionsManager__makeAlertControllerForTagWithTitle___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = a2;
  v3 = [v2 configuration];
  v4 = [v3 suggestedDisplayName];
  [v7 setText:v4];

  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"ACCEPTED_CONTACTS_ADD_NAME_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
  [v7 setPlaceholder:v6];

  [v7 setAutocapitalizationType:1];
  [v7 setClearButtonMode:1];
}

- (id)_makeAlertControllerToEditTag
{
  v3 = +[CNUIAcceptedContactActionsMetricsEvent editAction];
  [(CNUIAcceptedContactActionsManager *)self setMetricsEvent:v3];

  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"ACCEPTED_CONTACTS_EDIT_NAME_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = [(CNUIAcceptedContactActionsManager *)self _makeAlertControllerForTagWithTitle:v5];

  return v6;
}

- (id)_makeAlertControllerToAddTag
{
  v3 = +[CNUIAcceptedContactActionsMetricsEvent addAction];
  [(CNUIAcceptedContactActionsManager *)self setMetricsEvent:v3];

  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"ACCEPTED_CONTACTS_ADD_NAME_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = [(CNUIAcceptedContactActionsManager *)self _makeAlertControllerForTagWithTitle:v5];

  return v6;
}

- (id)_makeAlertControllerToCreateContactOrAddTag
{
  v3 = MEMORY[0x1E69DC650];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"ACCEPTED_CONTACTS_MARK_AS_KNOWN_ALERT_SUBTITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = [v3 alertControllerWithTitle:0 message:v5 preferredStyle:0];

  v7 = MEMORY[0x1E69DC648];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"ACCEPTED_CONTACTS_CREATE_CONTACT_CARD_ACTION" value:&stru_1F0CE7398 table:@"Localized"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__CNUIAcceptedContactActionsManager__makeAlertControllerToCreateContactOrAddTag__block_invoke;
  v18[3] = &unk_1E74E6C28;
  v18[4] = self;
  v10 = [v7 actionWithTitle:v9 style:0 handler:v18];

  v11 = MEMORY[0x1E69DC648];
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"ACCEPTED_CONTACTS_MARK_AS_KNOWN_ACTION" value:&stru_1F0CE7398 table:@"Localized"];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__CNUIAcceptedContactActionsManager__makeAlertControllerToCreateContactOrAddTag__block_invoke_2;
  v17[3] = &unk_1E74E6C28;
  v17[4] = self;
  v14 = [v11 actionWithTitle:v13 style:0 handler:v17];

  cancelAction = [(CNUIAcceptedContactActionsManager *)self cancelAction];
  [v6 addAction:v14];
  [v6 addAction:v10];
  [v6 addAction:cancelAction];
  [v6 setPreferredAction:v14];

  return v6;
}

uint64_t __80__CNUIAcceptedContactActionsManager__makeAlertControllerToCreateContactOrAddTag__block_invoke(uint64_t a1)
{
  v2 = +[CNUIAcceptedContactActionsMetricsEvent createContactAction];
  [*(a1 + 32) setMetricsEvent:v2];

  v3 = *(a1 + 32);

  return [v3 _presentCreateNewContactViewController];
}

void __80__CNUIAcceptedContactActionsManager__makeAlertControllerToCreateContactOrAddTag__block_invoke_2(uint64_t a1)
{
  v2 = +[CNUIAcceptedContactActionsMetricsEvent markAsKnownAction];
  [*(a1 + 32) setMetricsEvent:v2];

  v3 = *(a1 + 32);
  v5 = [v3 configuration];
  v4 = [v5 suggestedDisplayName];
  [v3 _recordAcceptedEventWithDisplayName:v4];
}

- (void)_presentViewController:(id)controller
{
  controllerCopy = controller;
  presentingViewController = [(CNUIAcceptedContactActionsManager *)self presentingViewController];
  if (presentingViewController)
  {
    objc_opt_class();
    delegate = [(CNUIAcceptedContactActionsManager *)self delegate];
    if (objc_opt_isKindOfClass())
    {
      v7 = delegate;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      delegate2 = [v8 delegate];
      [delegate2 action:v8 presentViewController:controllerCopy sender:v8];
    }

    else
    {
      [presentingViewController presentViewController:controllerCopy animated:1 completion:&__block_literal_global_9_46112];
    }
  }

  else
  {
    v8 = +[CNUIAcceptedContactActionsManager log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_INFO, "Couldn't fetch presenting view controller from delegate", v10, 2u);
    }
  }
}

void __60__CNUIAcceptedContactActionsManager__presentViewController___block_invoke()
{
  v0 = +[CNUIAcceptedContactActionsManager log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&dword_199A75000, v0, OS_LOG_TYPE_DEBUG, "Presented the requested view controller", v1, 2u);
  }
}

- (void)_presentAcceptedContactEditLabelViewController
{
  v3 = +[CNUIAcceptedContactActionsManager log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Presenting UI to edit description", v5, 2u);
  }

  _makeAlertControllerToEditTag = [(CNUIAcceptedContactActionsManager *)self _makeAlertControllerToEditTag];
  [(CNUIAcceptedContactActionsManager *)self _presentViewController:_makeAlertControllerToEditTag];
}

- (void)_presentAcceptedContacAddLabelViewController
{
  v3 = +[CNUIAcceptedContactActionsManager log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Presenting UI to add description", v5, 2u);
  }

  _makeAlertControllerToAddTag = [(CNUIAcceptedContactActionsManager *)self _makeAlertControllerToAddTag];
  [(CNUIAcceptedContactActionsManager *)self _presentViewController:_makeAlertControllerToAddTag];
}

- (void)_presentCreateNewContactViewController
{
  v3 = +[CNUIAcceptedContactActionsManager log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Presenting UI to create new contact", v8, 2u);
  }

  configuration = [(CNUIAcceptedContactActionsManager *)self configuration];
  contactForNewContact = [configuration contactForNewContact];
  v6 = [CNContactViewController viewControllerForNewContact:contactForNewContact];

  [v6 setDelegate:self];
  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
  [(CNUIAcceptedContactActionsManager *)self _presentViewController:v7];
}

- (void)_presentCreateNewContactOrNewLabelViewController
{
  v3 = *(MEMORY[0x1E695F058] + 16);
  v14 = *MEMORY[0x1E695F058];
  v15 = v3;
  v13 = 0;
  v4 = [(CNUIAcceptedContactActionsManager *)self presentingViewControllerWithSourceView:&v13 sourceRect:&v14];
  v5 = v13;
  if (v4)
  {
    _makeAlertControllerToCreateContactOrAddTag = [(CNUIAcceptedContactActionsManager *)self _makeAlertControllerToCreateContactOrAddTag];
    popoverPresentationController = [_makeAlertControllerToCreateContactOrAddTag popoverPresentationController];
    [popoverPresentationController setSourceView:v5];
    [popoverPresentationController setSourceRect:{v14, v15}];
    objc_opt_class();
    delegate = [(CNUIAcceptedContactActionsManager *)self delegate];
    if (objc_opt_isKindOfClass())
    {
      v9 = delegate;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      delegate2 = [v10 delegate];
      [delegate2 action:v10 presentViewController:_makeAlertControllerToCreateContactOrAddTag sender:v10];
    }

    else
    {
      [v4 presentViewController:_makeAlertControllerToCreateContactOrAddTag animated:1 completion:&__block_literal_global_5_46121];
    }
  }

  else
  {
    _makeAlertControllerToCreateContactOrAddTag = +[CNUIAcceptedContactActionsManager log];
    if (os_log_type_enabled(_makeAlertControllerToCreateContactOrAddTag, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_199A75000, _makeAlertControllerToCreateContactOrAddTag, OS_LOG_TYPE_INFO, "Couldn't fetch presenting view controller from delegate", v12, 2u);
    }
  }
}

void __85__CNUIAcceptedContactActionsManager__presentCreateNewContactOrNewLabelViewController__block_invoke()
{
  v0 = +[CNUIAcceptedContactActionsManager log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&dword_199A75000, v0, OS_LOG_TYPE_DEBUG, "Presented UI Accept contact", v1, 2u);
  }
}

- (void)presentAcceptedContactViewController
{
  presentingViewController = [(CNUIAcceptedContactActionsManager *)self presentingViewController];

  if (presentingViewController)
  {
    configuration = [(CNUIAcceptedContactActionsManager *)self configuration];
    configurationType = [configuration configurationType];

    if (configurationType == 1)
    {

      [(CNUIAcceptedContactActionsManager *)self _presentAcceptedContacAddLabelViewController];
    }

    else
    {
      configuration2 = [(CNUIAcceptedContactActionsManager *)self configuration];
      configurationType2 = [configuration2 configurationType];

      if (configurationType2 == 2)
      {

        [(CNUIAcceptedContactActionsManager *)self _presentAcceptedContactEditLabelViewController];
      }

      else
      {

        [(CNUIAcceptedContactActionsManager *)self _presentCreateNewContactOrNewLabelViewController];
      }
    }
  }

  else
  {
    v6 = +[CNUIAcceptedContactActionsManager log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEFAULT, "Couldn't fetch presenting view controller from delegate", v9, 2u);
    }
  }
}

- (CNUIAcceptedContactActionsManager)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = CNUIAcceptedContactActionsManager;
  v6 = [(CNUIAcceptedContactActionsManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

+ (id)log
{
  if (log_cn_once_token_1_46130 != -1)
  {
    dispatch_once(&log_cn_once_token_1_46130, &__block_literal_global_46131);
  }

  v3 = log_cn_once_object_1_46132;

  return v3;
}

uint64_t __40__CNUIAcceptedContactActionsManager_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "CNUIAcceptedContactActionsManager");
  v1 = log_cn_once_object_1_46132;
  log_cn_once_object_1_46132 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end