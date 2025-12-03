@interface CNContactToggleBlockReportCallerAction
- (BOOL)isContactBlockedPreservingChanges:(BOOL)changes;
- (id)checkIsContactBlocked;
- (void)performActionWithSender:(id)sender;
- (void)presentSafetyCheckFlowForSender:(id)sender;
- (void)setContactBlocked:(BOOL)blocked;
@end

@implementation CNContactToggleBlockReportCallerAction

- (void)presentSafetyCheckFlowForSender:(id)sender
{
  senderCopy = sender;
  v5 = +[CNSafetyCheckHelper shared];
  contact = [(CNContactAction *)self contact];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CNContactToggleBlockReportCallerAction_presentSafetyCheckFlowForSender___block_invoke;
  v8[3] = &unk_1E74E4978;
  v8[4] = self;
  v9 = senderCopy;
  v7 = senderCopy;
  [v5 makeSafetyCheckFlowFor:contact completion:v8];
}

void __74__CNContactToggleBlockReportCallerAction_presentSafetyCheckFlowForSender___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__CNContactToggleBlockReportCallerAction_presentSafetyCheckFlowForSender___block_invoke_2;
    block[3] = &unk_1E74E6EE8;
    block[4] = *(a1 + 32);
    v6 = v3;
    v7 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __74__CNContactToggleBlockReportCallerAction_presentSafetyCheckFlowForSender___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 action:*(a1 + 32) presentViewController:*(a1 + 40) sender:*(a1 + 48)];
}

- (void)setContactBlocked:(BOOL)blocked
{
  blockedCopy = blocked;
  contact = [(CNContactAction *)self contact];
  allNumbersAndEmails = [contact allNumbersAndEmails];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__CNContactToggleBlockReportCallerAction_setContactBlocked___block_invoke;
  v8[3] = &__block_descriptor_33_e18_v16__0__NSString_8l;
  v9 = blockedCopy;
  [allNumbersAndEmails _cn_each:v8];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:blockedCopy];
  [(CNContactToggleBlockReportCallerAction *)self setIsBlockedCachedValue:v7];
}

void __60__CNContactToggleBlockReportCallerAction_setContactBlocked___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69966E8];
  v4 = a2;
  v6 = [v3 currentEnvironment];
  v5 = [v6 handleBlocking];
  [v5 setBlocked:*(a1 + 32) forHandle:v4];
}

- (void)performActionWithSender:(id)sender
{
  senderCopy = sender;
  if ([(CNContactToggleBlockReportCallerAction *)self isContactBlockedPreservingChanges:1])
  {
    [(CNContactToggleBlockReportCallerAction *)self setContactBlocked:0];
    delegate = [(CNContactAction *)self delegate];
    [delegate actionDidFinish:self];
  }

  else
  {
    v6 = MEMORY[0x1E69DC650];
    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"CARD_ACTION_BLOCK_REPORT_CONTACT_INFO_TEXT" value:&stru_1F0CE7398 table:@"Localized"];
    delegate = [v6 alertControllerWithTitle:v8 message:0 preferredStyle:0];

    [delegate setPreferredStyle:0];
    v9 = MEMORY[0x1E69DC648];
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"CARD_ACTION_BLOCK" value:&stru_1F0CE7398 table:@"Localized"];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __66__CNContactToggleBlockReportCallerAction_performActionWithSender___block_invoke;
    v28[3] = &unk_1E74E7308;
    v28[4] = self;
    v12 = senderCopy;
    v29 = v12;
    v13 = [v9 actionWithTitle:v11 style:2 handler:v28];
    [delegate addAction:v13];

    v14 = MEMORY[0x1E69DC648];
    v15 = CNContactsUIBundle();
    v16 = [v15 localizedStringForKey:@"CARD_ACTION_BLOCK_REPORT" value:&stru_1F0CE7398 table:@"Localized"];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __66__CNContactToggleBlockReportCallerAction_performActionWithSender___block_invoke_2;
    v26[3] = &unk_1E74E7308;
    v26[4] = self;
    v17 = v12;
    v27 = v17;
    v18 = [v14 actionWithTitle:v16 style:2 handler:v26];
    [delegate addAction:v18];

    v19 = MEMORY[0x1E69DC648];
    v20 = CNContactsUIBundle();
    v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __66__CNContactToggleBlockReportCallerAction_performActionWithSender___block_invoke_3;
    v25[3] = &unk_1E74E6C28;
    v25[4] = self;
    v22 = [v19 actionWithTitle:v21 style:1 handler:v25];
    [delegate addAction:v22];

    delegate2 = [(CNContactAction *)self delegate];
    [delegate2 action:self presentViewController:delegate sender:v17];

    v24 = +[CNSafetyCheckHelper shared];
    [v24 fetchSharing];
  }
}

void __66__CNContactToggleBlockReportCallerAction_performActionWithSender___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setContactBlocked:1];
  [*(a1 + 32) presentSafetyCheckFlowForSender:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  [v2 actionDidFinish:*(a1 + 32)];
}

void __66__CNContactToggleBlockReportCallerAction_performActionWithSender___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setContactBlocked:1];
  [*(a1 + 32) presentSafetyCheckFlowForSender:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  [v2 actionDidFinishFromSecondaryAction:*(a1 + 32)];
}

void __66__CNContactToggleBlockReportCallerAction_performActionWithSender___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionWasCanceled:*(a1 + 32)];
}

- (id)checkIsContactBlocked
{
  mEMORY[0x1E695CD60] = [MEMORY[0x1E695CD60] sharedAnalyzer];
  contact = [(CNContactAction *)self contact];
  v5 = [mEMORY[0x1E695CD60] isBlockedContact:contact];

  v6 = MEMORY[0x1E696AD98];

  return [v6 numberWithBool:v5];
}

- (BOOL)isContactBlockedPreservingChanges:(BOOL)changes
{
  if (!changes)
  {
    cn_runWithObjectLock();
  }

  v7 = MEMORY[0x1E69E9820];
  selfCopy = self;
  v4 = cn_objectResultWithObjectLock();
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

void __76__CNContactToggleBlockReportCallerAction_isContactBlockedPreservingChanges___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  *(v1 + 80) = 0;
}

id __76__CNContactToggleBlockReportCallerAction_isContactBlockedPreservingChanges___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (!v3)
  {
    v4 = [v2 checkIsContactBlocked];
    v5 = *(a1 + 32);
    v6 = *(v5 + 80);
    *(v5 + 80) = v4;

    v3 = *(*(a1 + 32) + 80);
  }

  return v3;
}

@end