@interface CNContactClearRecentsDataAction
- (CNContactClearRecentsDataAction)initWithRecentsData:(id)data coreRecentsManager:(id)manager;
- (id)title;
- (void)performActionWithSender:(id)sender;
@end

@implementation CNContactClearRecentsDataAction

- (void)performActionWithSender:(id)sender
{
  v11[1] = *MEMORY[0x1E69E9840];
  coreRecentsManager = [(CNContactClearRecentsDataAction *)self coreRecentsManager];
  recentsData = [(CNContactClearRecentsDataAction *)self recentsData];
  recentContactID = [recentsData recentContactID];
  v11[0] = recentContactID;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  recentsData2 = [(CNContactClearRecentsDataAction *)self recentsData];
  domain = [recentsData2 domain];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CNContactClearRecentsDataAction_performActionWithSender___block_invoke;
  v10[3] = &unk_1E74E5200;
  v10[4] = self;
  [coreRecentsManager removeRecentsWithIdentifiers:v7 domain:domain completionHandler:v10];
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

- (CNContactClearRecentsDataAction)initWithRecentsData:(id)data coreRecentsManager:(id)manager
{
  dataCopy = data;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = CNContactClearRecentsDataAction;
  v9 = [(CNContactAction *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recentsData, data);
    objc_storeStrong(&v10->_coreRecentsManager, manager);
    v11 = v10;
  }

  return v10;
}

@end