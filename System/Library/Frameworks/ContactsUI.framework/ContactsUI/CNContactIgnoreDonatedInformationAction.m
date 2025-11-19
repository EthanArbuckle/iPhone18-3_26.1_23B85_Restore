@interface CNContactIgnoreDonatedInformationAction
- (BOOL)rejectAllDonations;
- (CNContactIgnoreDonatedInformationAction)initWithContact:(id)a3;
- (CNContactIgnoreDonatedInformationAction)initWithContact:(id)a3 donationStore:(id)a4 componentsFactory:(id)a5;
- (void)performActionWithSender:(id)a3;
- (void)showRejectionFailureAlert;
@end

@implementation CNContactIgnoreDonatedInformationAction

- (void)showRejectionFailureAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"IGNORE_CARD_SHEET_FAILURE_ALERT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"IGNORE_CARD_SHEET_FAILURE_ALERT_EXPLANATION" value:&stru_1F0CE7398 table:@"Localized"];
  v13 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v8 = [(CNContactIgnoreDonatedInformationAction *)self componentsFactory];
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
  v11 = [v8 alertActionWithTitle:v10 style:0 handler:0];
  [v13 addAction:v11];

  v12 = [(CNContactAction *)self delegate];
  [v12 action:self presentViewController:v13 sender:self];
}

- (BOOL)rejectAllDonations
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__30769;
  v19 = __Block_byref_object_dispose__30770;
  v20 = 0;
  v3 = [(CNContactIgnoreDonatedInformationAction *)self donationStore];
  v4 = [v3 meCardDonations];
  v5 = (v16 + 5);
  obj = v16[5];
  v6 = [v4 result:&obj];
  objc_storeStrong(v5, obj);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__CNContactIgnoreDonatedInformationAction_rejectAllDonations__block_invoke;
  v13[3] = &unk_1E74E3EF0;
  v13[4] = self;
  v13[5] = &v15;
  [v6 _cn_each:v13];

  v11 = v16[5];
  if (v11)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactIgnoreDonatedInformationAction.m", 85, 3, @"Error rejecting donated me card %@", v7, v8, v9, v10, v16[5]);
  }

  _Block_object_dispose(&v15, 8);

  return v11 == 0;
}

void __61__CNContactIgnoreDonatedInformationAction_rejectAllDonations__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 donationStore];
  v6 = [v4 origin];

  v7 = [v6 donationIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__CNContactIgnoreDonatedInformationAction_rejectAllDonations__block_invoke_2;
  v8[3] = &unk_1E74E3EC8;
  v8[4] = *(a1 + 40);
  [v5 rejectValueWithDonationIdentifier:v7 completionHandler:v8];
}

void __61__CNContactIgnoreDonatedInformationAction_rejectAllDonations__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)performActionWithSender:(id)a3
{
  v4 = a3;
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"CARD_ACTION_IGNORE_CARD" value:&stru_1F0CE7398 table:@"Localized"];

  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v8 = [(CNContactIgnoreDonatedInformationAction *)self componentsFactory];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__CNContactIgnoreDonatedInformationAction_performActionWithSender___block_invoke;
  v16[3] = &unk_1E74E6C28;
  v16[4] = self;
  v9 = [v8 alertActionWithTitle:v6 style:2 handler:v16];
  [v7 addAction:v9];

  v10 = [(CNContactIgnoreDonatedInformationAction *)self componentsFactory];
  v11 = CNContactsUIBundle();
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__CNContactIgnoreDonatedInformationAction_performActionWithSender___block_invoke_2;
  v15[3] = &unk_1E74E6C28;
  v15[4] = self;
  v13 = [v10 alertActionWithTitle:v12 style:1 handler:v15];
  [v7 addAction:v13];

  v14 = [(CNContactAction *)self delegate];
  [v14 action:self presentViewController:v7 sender:v4];
}

void __67__CNContactIgnoreDonatedInformationAction_performActionWithSender___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) rejectAllDonations] & 1) == 0)
  {
    [*(a1 + 32) showRejectionFailureAlert];
  }

  v2 = [*(a1 + 32) delegate];
  [v2 actionDidFinish:*(a1 + 32)];
}

void __67__CNContactIgnoreDonatedInformationAction_performActionWithSender___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionWasCanceled:*(a1 + 32)];
}

- (CNContactIgnoreDonatedInformationAction)initWithContact:(id)a3 donationStore:(id)a4 componentsFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = @"parameter ‘contact’ must be nonnull";
    goto LABEL_10;
  }

  if (!v9)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = @"parameter ‘donationStore’ must be nonnull";
    goto LABEL_10;
  }

  v11 = v10;
  if (!v10)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = @"parameter ‘componentsFactory’ must be nonnull";
LABEL_10:
    v19 = [v16 exceptionWithName:v17 reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  v20.receiver = self;
  v20.super_class = CNContactIgnoreDonatedInformationAction;
  v12 = [(CNContactAction *)&v20 initWithContact:v8];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_componentsFactory, a5);
    objc_storeStrong(&v13->_donationStore, a4);
    v14 = v13;
  }

  return v13;
}

- (CNContactIgnoreDonatedInformationAction)initWithContact:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CNInitializerUnavailableException();
  objc_exception_throw(v6);
}

@end