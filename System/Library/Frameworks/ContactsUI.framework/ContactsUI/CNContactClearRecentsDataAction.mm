@interface CNContactClearRecentsDataAction
- (CNContactClearRecentsDataAction)initWithRecentsData:(id)a3 coreRecentsManager:(id)a4;
- (id)title;
- (void)performActionWithSender:(id)a3;
@end

@implementation CNContactClearRecentsDataAction

- (void)performActionWithSender:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = [(CNContactClearRecentsDataAction *)self coreRecentsManager];
  v5 = [(CNContactClearRecentsDataAction *)self recentsData];
  v6 = [v5 recentContactID];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [(CNContactClearRecentsDataAction *)self recentsData];
  v9 = [v8 domain];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CNContactClearRecentsDataAction_performActionWithSender___block_invoke;
  v10[3] = &unk_1E74E5200;
  v10[4] = self;
  [v4 removeRecentsWithIdentifiers:v7 domain:v9 completionHandler:v10];
}

void __59__CNContactClearRecentsDataAction_performActionWithSender___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__CNContactClearRecentsDataAction_performActionWithSender___block_invoke_2;
  v3[3] = &unk_1E74E6A88;
  v3[4] = *(a1 + 32);
  [v2 performBlock:v3];
}

void __59__CNContactClearRecentsDataAction_performActionWithSender___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionDidFinish:*(a1 + 32)];
}

- (id)title
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"CLEAR_RECENTS" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (CNContactClearRecentsDataAction)initWithRecentsData:(id)a3 coreRecentsManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNContactClearRecentsDataAction;
  v9 = [(CNContactAction *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recentsData, a3);
    objc_storeStrong(&v10->_coreRecentsManager, a4);
    v11 = v10;
  }

  return v10;
}

@end