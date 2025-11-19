@interface CNContactSuggestionAction
- (BOOL)_confirmOrReject:(BOOL)a3;
- (void)performActionWithSender:(id)a3;
@end

@implementation CNContactSuggestionAction

- (BOOL)_confirmOrReject:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactAction *)self delegate];
  v6 = [v5 contactViewCache];
  v7 = [v6 contactStore];

  v8 = objc_alloc_init(MEMORY[0x1E695CFA8]);
  [v8 setSuppressChangeNotifications:1];
  v9 = [(CNContactAction *)self contact];
  if (v3)
  {
    [v8 confirmSuggestion:v9];
  }

  else
  {
    [v8 rejectSuggestion:v9];
  }

  v18 = 0;
  [v7 executeSaveRequest:v8 error:&v18];
  v10 = v18;
  if (v10)
  {
    if (v3)
    {
      v11 = @"confirm";
    }

    else
    {
      v11 = @"reject";
    }

    v17 = [(CNContactAction *)self contact];
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactSuggestionAction.m", 60, 3, @"Could not %@ suggestion for contact %@, error: %@", v12, v13, v14, v15, v11);
  }

  return v10 == 0;
}

- (void)performActionWithSender:(id)a3
{
  v4 = a3;
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"SUGGESTION_IGNORE" value:&stru_1F0CE7398 table:@"Localized"];

  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v8 = CNContactsUIBundle();
  v9 = [v8 localizedStringForKey:@"SUGGESTION_IGNORE_ALERT_CONTROLLER_INFO" value:&stru_1F0CE7398 table:@"Localized"];
  [v7 setMessage:v9];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__CNContactSuggestionAction_performActionWithSender___block_invoke;
  v17[3] = &unk_1E74E6C28;
  v17[4] = self;
  v10 = [MEMORY[0x1E69DC648] actionWithTitle:v6 style:2 handler:v17];
  [v7 addAction:v10];

  v11 = MEMORY[0x1E69DC648];
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__CNContactSuggestionAction_performActionWithSender___block_invoke_2;
  v16[3] = &unk_1E74E6C28;
  v16[4] = self;
  v14 = [v11 actionWithTitle:v13 style:1 handler:v16];
  [v7 addAction:v14];

  v15 = [(CNContactAction *)self delegate];
  [v15 action:self presentViewController:v7 sender:v4];
}

void __53__CNContactSuggestionAction_performActionWithSender___block_invoke(uint64_t a1)
{
  [*(a1 + 32) ignoreSuggestion];
  v2 = [*(a1 + 32) delegate];
  [v2 actionDidFinish:*(a1 + 32)];
}

void __53__CNContactSuggestionAction_performActionWithSender___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionWasCanceled:*(a1 + 32)];
}

@end