@interface CNContactDeleteAcceptedAction
+ (id)os_log;
- (BOOL)deleteAccepted;
- (void)performActionWithSender:(id)sender;
@end

@implementation CNContactDeleteAcceptedAction

+ (id)os_log
{
  if (os_log_cn_once_token_6_53713 != -1)
  {
    dispatch_once(&os_log_cn_once_token_6_53713, &__block_literal_global_53714);
  }

  v3 = os_log_cn_once_object_6_53715;

  return v3;
}

uint64_t __39__CNContactDeleteAcceptedAction_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNContactDeleteAcceptedAction");
  v1 = os_log_cn_once_object_6_53715;
  os_log_cn_once_object_6_53715 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)deleteAccepted
{
  v40 = *MEMORY[0x1E69E9840];
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
  {
    contact = [(CNContactAction *)self contact];
    identifier = [contact identifier];
    v6 = identifier;
    v7 = @"<no identifier>";
    if (identifier)
    {
      v7 = identifier;
    }

    *buf = 138412290;
    v35 = v7;
    _os_log_impl(&dword_199A75000, os_log, OS_LOG_TYPE_INFO, "Starting deleteAccepted for contact: %@", buf, 0xCu);
  }

  contact2 = [(CNContactAction *)self contact];

  if (!contact2)
  {
    os_log2 = [objc_opt_class() os_log];
    if (!os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v24 = "Cannot delete accepted contact: contact is nil";
LABEL_41:
    _os_log_error_impl(&dword_199A75000, os_log2, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_20;
  }

  delegate = [(CNContactAction *)self delegate];

  if (delegate)
  {
    delegate2 = [(CNContactAction *)self delegate];
    contactViewCache = [delegate2 contactViewCache];
    os_log2 = [contactViewCache contactStore];

    if (!os_log2)
    {
      os_log3 = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_199A75000, os_log3, OS_LOG_TYPE_ERROR, "Cannot delete accepted contact: contactStore is nil", buf, 2u);
      }

      v25 = 0;
      goto LABEL_38;
    }

    v13 = objc_alloc_init(MEMORY[0x1E695CE60]);
    os_log4 = [objc_opt_class() os_log];
    os_log6 = os_log4;
    if (v13)
    {
      if (os_log_type_enabled(os_log4, OS_LOG_TYPE_INFO))
      {
        contact3 = [(CNContactAction *)self contact];
        identifier2 = [contact3 identifier];
        *buf = 138412546;
        v35 = v13;
        v36 = 2112;
        v37 = identifier2;
        _os_log_impl(&dword_199A75000, os_log6, OS_LOG_TYPE_INFO, "Created save request: %@, deleting contact: %@", buf, 0x16u);
      }

      contact4 = [(CNContactAction *)self contact];
      [(__CFString *)v13 deleteRecentContact:contact4];

      v33 = 0;
      v19 = [os_log2 executeSaveRequest:v13 error:&v33];
      os_log3 = v33;
      os_log5 = [objc_opt_class() os_log];
      os_log6 = os_log5;
      if (os_log3)
      {
        if (os_log_type_enabled(os_log5, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [os_log3 localizedDescription];
          domain = [os_log3 domain];
          code = [os_log3 code];
          *buf = 138412802;
          v35 = localizedDescription;
          v36 = 2112;
          v37 = domain;
          v38 = 2048;
          v39 = code;
          _os_log_error_impl(&dword_199A75000, os_log6, OS_LOG_TYPE_ERROR, "Could not delete CoreRecents accepted contact. Error: %@, Error domain: %@, Error code: %ld", buf, 0x20u);
        }

        userInfo = [os_log3 userInfo];

        if (!userInfo)
        {
          v25 = 0;
LABEL_37:

LABEL_38:
          goto LABEL_39;
        }

        os_log6 = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log6, OS_LOG_TYPE_ERROR))
        {
          userInfo2 = [os_log3 userInfo];
          *buf = 138412290;
          v35 = userInfo2;
          _os_log_error_impl(&dword_199A75000, os_log6, OS_LOG_TYPE_ERROR, "Error userInfo: %@", buf, 0xCu);
        }

        goto LABEL_35;
      }

      if (v19)
      {
        v25 = 1;
        if (os_log_type_enabled(os_log5, OS_LOG_TYPE_INFO))
        {
          contact5 = [(CNContactAction *)self contact];
          identifier3 = [contact5 identifier];
          *buf = 138412290;
          v35 = identifier3;
          _os_log_impl(&dword_199A75000, os_log6, OS_LOG_TYPE_INFO, "Successfully deleted CoreRecents accepted contact: %@", buf, 0xCu);
        }

        os_log3 = 0;
        goto LABEL_36;
      }

      if (os_log_type_enabled(os_log5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v26 = "executeSaveRequest returned NO but no error was provided";
        goto LABEL_33;
      }
    }

    else if (os_log_type_enabled(os_log4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Failed to create CNCoreRecentsSaveRequest";
LABEL_33:
      _os_log_error_impl(&dword_199A75000, os_log6, OS_LOG_TYPE_ERROR, v26, buf, 2u);
    }

    os_log3 = 0;
LABEL_35:
    v25 = 0;
LABEL_36:

    goto LABEL_37;
  }

  os_log2 = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v24 = "Cannot delete accepted contact: delegate is nil";
    goto LABEL_41;
  }

LABEL_20:
  v25 = 0;
LABEL_39:

  return v25;
}

- (void)performActionWithSender:(id)sender
{
  senderCopy = sender;
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"CARD_ACTION_DELETE_ACCEPTED_ALERT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"CARD_ACTION_DELETE_ACCEPTED_ALERT_INFO" value:&stru_1F0CE7398 table:@"Localized"];
  [v7 setMessage:v9];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__CNContactDeleteAcceptedAction_performActionWithSender___block_invoke;
  v17[3] = &unk_1E74E6C28;
  v17[4] = self;
  v10 = [MEMORY[0x1E69DC648] actionWithTitle:v6 style:2 handler:v17];
  [v7 addAction:v10];

  v11 = MEMORY[0x1E69DC648];
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__CNContactDeleteAcceptedAction_performActionWithSender___block_invoke_2;
  v16[3] = &unk_1E74E6C28;
  v16[4] = self;
  v14 = [v11 actionWithTitle:v13 style:1 handler:v16];
  [v7 addAction:v14];

  delegate = [(CNContactAction *)self delegate];
  [delegate action:self presentViewController:v7 sender:senderCopy];
}

void __57__CNContactDeleteAcceptedAction_performActionWithSender___block_invoke(uint64_t a1)
{
  [*(a1 + 32) deleteAccepted];
  v2 = [*(a1 + 32) delegate];
  [v2 actionDidFinish:*(a1 + 32)];
}

void __57__CNContactDeleteAcceptedAction_performActionWithSender___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionWasCanceled:*(a1 + 32)];
}

@end