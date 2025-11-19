@interface CNContactAcceptedContactNameAction
- (id)presentingViewControllerForAcceptedContactActionsManager:(id)a3 sourceView:(id *)a4 sourceRect:(CGRect *)a5;
- (void)acceptedContactActionsManager:(id)a3 didRecordRecentEvent:(id)a4;
- (void)performActionWithSender:(id)a3;
@end

@implementation CNContactAcceptedContactNameAction

- (id)presentingViewControllerForAcceptedContactActionsManager:(id)a3 sourceView:(id *)a4 sourceRect:(CGRect *)a5
{
  v6 = [(CNContactAction *)self delegate:a3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(CNContactAction *)self delegate];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)acceptedContactActionsManager:(id)a3 didRecordRecentEvent:(id)a4
{
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = [(CNContactAction *)self delegate:a3];
  v6 = [v5 contactViewCache];
  v7 = [v6 contactStore];

  v8 = [(CNContactAction *)self contact];
  v9 = [v8 phoneNumbers];
  v10 = [v9 count];

  if (v10)
  {
    v11 = MEMORY[0x1E695CD58];
    v12 = [(CNContactAction *)self contact];
    v13 = [v12 phoneNumbers];
    v14 = [v13 firstObject];
    v15 = [v14 value];
    v16 = [v11 predicateForContactsMatchingPhoneNumber:v15];
  }

  else
  {
    v17 = [(CNContactAction *)self contact];
    v18 = [v17 emailAddresses];
    v19 = [v18 count];

    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = MEMORY[0x1E695CD58];
    v12 = [(CNContactAction *)self contact];
    v13 = [v12 emailAddresses];
    v14 = [v13 firstObject];
    v15 = [v14 value];
    v16 = [v20 predicateForContactsMatchingEmailAddress:v15];
  }

  v21 = v16;

  if (v21)
  {
    v22 = *MEMORY[0x1E695C208];
    v29[0] = *MEMORY[0x1E695C330];
    v29[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v24 = [v7 unifiedContactsMatchingPredicate:v21 keysToFetch:v23 error:0];

    v25 = [v24 _cn_filter:&__block_literal_global_11730];
    v26 = [v25 firstObject];
    [(CNContactAction *)self setContact:v26];
  }

LABEL_7:
  v27 = [(CNContactAction *)self delegate];
  [v27 actionDidUpdate:self];

  v28 = [MEMORY[0x1E695CD50] sharedNotifier];
  [v28 didSaveChangesSuccessfully:1 fromContactStore:v7 requestIdentifier:0];
}

- (void)performActionWithSender:(id)a3
{
  v4 = [(CNContactAction *)self contact];
  v5 = [v4 phoneNumbers];
  v6 = [v5 firstObject];
  v7 = [v6 value];
  v23 = [v7 stringValue];

  v8 = [(CNContactAction *)self contact];
  v9 = [v8 emailAddresses];
  v10 = [v9 firstObject];
  v11 = [v10 value];

  if (v23)
  {
    v12 = [CNUIAcceptedContactConfiguration configurationForPhoneNumber:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = [CNUIAcceptedContactConfiguration configurationForEmailAddress:v11];
  }

  v13 = v12;
  if (v12)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695CD80]);
    v15 = [(CNContactAction *)self contact];
    v16 = [v14 stringFromContact:v15];

    if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      v17 = 1;
    }

    else
    {
      v18 = [(CNContactAction *)self contact];
      v19 = [v18 isCoreRecentsAccepted];

      if (v19)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }
    }

    [v13 setConfigurationType:v17];
    [v13 setSuggestedDisplayName:v16];
    v20 = [[CNUIAcceptedContactActionsManager alloc] initWithConfiguration:v13];
    [(CNContactAcceptedContactNameAction *)self setActionsManager:v20];

    v21 = [(CNContactAcceptedContactNameAction *)self actionsManager];
    [v21 setDelegate:self];

    v22 = [(CNContactAcceptedContactNameAction *)self actionsManager];
    [v22 presentAcceptedContactViewController];
  }

LABEL_12:
}

@end