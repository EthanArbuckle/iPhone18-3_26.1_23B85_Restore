@interface CNContactToggleBlockCallerAction
- (BOOL)isContactBlockedPreservingChanges:(BOOL)a3;
- (id)checkIsContactBlocked;
- (void)performActionWithSender:(id)a3;
- (void)presentSafetyCheckFlowForSender:(id)a3;
- (void)setContactBlocked:(BOOL)a3;
@end

@implementation CNContactToggleBlockCallerAction

- (void)presentSafetyCheckFlowForSender:(id)a3
{
  v4 = a3;
  v5 = +[CNSafetyCheckHelper shared];
  v6 = [(CNContactAction *)self contact];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__CNContactToggleBlockCallerAction_presentSafetyCheckFlowForSender___block_invoke;
  v8[3] = &unk_1E74E4978;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 makeSafetyCheckFlowFor:v6 completion:v8];
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

- (void)setContactBlocked:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactAction *)self contact];
  v6 = [v5 allNumbersAndEmails];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CNContactToggleBlockCallerAction_setContactBlocked___block_invoke;
  v8[3] = &__block_descriptor_33_e18_v16__0__NSString_8l;
  v9 = v3;
  [v6 _cn_each:v8];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
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

- (void)performActionWithSender:(id)a3
{
  v4 = a3;
  if ([(CNContactToggleBlockCallerAction *)self isContactBlockedPreservingChanges:1])
  {
    [(CNContactToggleBlockCallerAction *)self setContactBlocked:0];
    v5 = [(CNContactAction *)self delegate];
    [v5 actionDidFinish:self];
  }

  else
  {
    v6 = MEMORY[0x1E69DC650];
    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"CARD_ACTION_BLOCK_CONTACT_INFO_TEXT" value:&stru_1F0CE7398 table:@"Localized"];
    v5 = [v6 alertControllerWithTitle:v8 message:0 preferredStyle:0];

    [v5 setPreferredStyle:0];
    v9 = MEMORY[0x1E69DC648];
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"CARD_ACTION_BLOCK_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __60__CNContactToggleBlockCallerAction_performActionWithSender___block_invoke;
    v21[3] = &unk_1E74E7308;
    v21[4] = self;
    v12 = v4;
    v22 = v12;
    v13 = [v9 actionWithTitle:v11 style:2 handler:v21];
    [v5 addAction:v13];

    v14 = MEMORY[0x1E69DC648];
    v15 = CNContactsUIBundle();
    v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__CNContactToggleBlockCallerAction_performActionWithSender___block_invoke_2;
    v20[3] = &unk_1E74E6C28;
    v20[4] = self;
    v17 = [v14 actionWithTitle:v16 style:1 handler:v20];
    [v5 addAction:v17];

    v18 = [(CNContactAction *)self delegate];
    [v18 action:self presentViewController:v5 sender:v12];

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
  v3 = [MEMORY[0x1E695CD60] sharedAnalyzer];
  v4 = [(CNContactAction *)self contact];
  v5 = [v3 isBlockedContact:v4];

  v6 = MEMORY[0x1E696AD98];

  return [v6 numberWithBool:v5];
}

- (BOOL)isContactBlockedPreservingChanges:(BOOL)a3
{
  if (!a3)
  {
    cn_runWithObjectLock();
  }

  v7 = MEMORY[0x1E69E9820];
  v8 = self;
  v4 = cn_objectResultWithObjectLock();
  v5 = [v4 BOOLValue];

  return v5;
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