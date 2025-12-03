@interface CNContactToggleBlockCallerAction
- (BOOL)isContactBlockedPreservingChanges:(BOOL)changes;
- (id)checkIsContactBlocked;
- (void)performActionWithSender:(id)sender;
- (void)presentSafetyCheckFlowForSender:(id)sender;
- (void)setContactBlocked:(BOOL)blocked;
@end

@implementation CNContactToggleBlockCallerAction

- (void)presentSafetyCheckFlowForSender:(id)sender
{
  senderCopy = sender;
  v5 = +[CNSafetyCheckHelper shared];
  contact = [(CNContactAction *)self contact];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__CNContactToggleBlockCallerAction_presentSafetyCheckFlowForSender___block_invoke;
  v8[3] = &unk_1E74E4978;
  v8[4] = self;
  v9 = senderCopy;
  v7 = senderCopy;
  [v5 makeSafetyCheckFlowFor:contact completion:v8];
}

void __68__CNContactToggleBlockCallerAction_presentSafetyCheckFlowForSender___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__CNContactToggleBlockCallerAction_presentSafetyCheckFlowForSender___block_invoke_2;
    block[3] = &unk_1E74E6EE8;
    block[4] = *(a1 + 32);
    v6 = v3;
    v7 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __68__CNContactToggleBlockCallerAction_presentSafetyCheckFlowForSender___block_invoke_2(uint64_t a1)
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
  v8[2] = __54__CNContactToggleBlockCallerAction_setContactBlocked___block_invoke;
  v8[3] = &__block_descriptor_33_e18_v16__0__NSString_8l;
  v9 = blockedCopy;
  [allNumbersAndEmails _cn_each:v8];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:blockedCopy];
  [(CNContactToggleBlockCallerAction *)self setIsBlockedCachedValue:v7];
}

void __54__CNContactToggleBlockCallerAction_setContactBlocked___block_invoke(uint64_t a1, void *a2)
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
  if ([(CNContactToggleBlockCallerAction *)self isContactBlockedPreservingChanges:1])
  {
    [(CNContactToggleBlockCallerAction *)self setContactBlocked:0];
    delegate = [(CNContactAction *)self delegate];
    [delegate actionDidFinish:self];
  }

  else
  {
    v6 = MEMORY[0x1E69DC650];
    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"CARD_ACTION_BLOCK_CONTACT_INFO_TEXT" value:&stru_1F0CE7398 table:@"Localized"];
    delegate = [v6 alertControllerWithTitle:v8 message:0 preferredStyle:0];

    [delegate setPreferredStyle:0];
    v9 = MEMORY[0x1E69DC648];
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"CARD_ACTION_BLOCK_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __60__CNContactToggleBlockCallerAction_performActionWithSender___block_invoke;
    v21[3] = &unk_1E74E7308;
    v21[4] = self;
    v12 = senderCopy;
    v22 = v12;
    v13 = [v9 actionWithTitle:v11 style:2 handler:v21];
    [delegate addAction:v13];

    v14 = MEMORY[0x1E69DC648];
    v15 = CNContactsUIBundle();
    v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__CNContactToggleBlockCallerAction_performActionWithSender___block_invoke_2;
    v20[3] = &unk_1E74E6C28;
    v20[4] = self;
    v17 = [v14 actionWithTitle:v16 style:1 handler:v20];
    [delegate addAction:v17];

    delegate2 = [(CNContactAction *)self delegate];
    [delegate2 action:self presentViewController:delegate sender:v12];

    v19 = +[CNSafetyCheckHelper shared];
    [v19 fetchSharing];
  }
}

void __60__CNContactToggleBlockCallerAction_performActionWithSender___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setContactBlocked:1];
  [*(a1 + 32) presentSafetyCheckFlowForSender:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  [v2 actionDidFinish:*(a1 + 32)];
}

void __60__CNContactToggleBlockCallerAction_performActionWithSender___block_invoke_2(uint64_t a1)
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

void __70__CNContactToggleBlockCallerAction_isContactBlockedPreservingChanges___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  *(v1 + 80) = 0;
}

id __70__CNContactToggleBlockCallerAction_isContactBlockedPreservingChanges___block_invoke_2(uint64_t a1)
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