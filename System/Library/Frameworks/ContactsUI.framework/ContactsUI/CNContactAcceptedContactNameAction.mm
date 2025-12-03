@interface CNContactAcceptedContactNameAction
- (id)presentingViewControllerForAcceptedContactActionsManager:(id)manager sourceView:(id *)view sourceRect:(CGRect *)rect;
- (void)acceptedContactActionsManager:(id)manager didRecordRecentEvent:(id)event;
- (void)performActionWithSender:(id)sender;
@end

@implementation CNContactAcceptedContactNameAction

- (id)presentingViewControllerForAcceptedContactActionsManager:(id)manager sourceView:(id *)view sourceRect:(CGRect *)rect
{
  v6 = [(CNContactAction *)self delegate:manager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    delegate = [(CNContactAction *)self delegate];
  }

  else
  {
    delegate = 0;
  }

  return delegate;
}

- (void)acceptedContactActionsManager:(id)manager didRecordRecentEvent:(id)event
{
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = [(CNContactAction *)self delegate:manager];
  contactViewCache = [v5 contactViewCache];
  contactStore = [contactViewCache contactStore];

  contact = [(CNContactAction *)self contact];
  phoneNumbers = [contact phoneNumbers];
  v10 = [phoneNumbers count];

  if (v10)
  {
    v11 = MEMORY[0x1E695CD58];
    contact2 = [(CNContactAction *)self contact];
    phoneNumbers2 = [contact2 phoneNumbers];
    firstObject = [phoneNumbers2 firstObject];
    value = [firstObject value];
    v16 = [v11 predicateForContactsMatchingPhoneNumber:value];
  }

  else
  {
    contact3 = [(CNContactAction *)self contact];
    emailAddresses = [contact3 emailAddresses];
    v19 = [emailAddresses count];

    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = MEMORY[0x1E695CD58];
    contact2 = [(CNContactAction *)self contact];
    phoneNumbers2 = [contact2 emailAddresses];
    firstObject = [phoneNumbers2 firstObject];
    value = [firstObject value];
    v16 = [v20 predicateForContactsMatchingEmailAddress:value];
  }

  v21 = v16;

  if (v21)
  {
    v22 = *MEMORY[0x1E695C208];
    v29[0] = *MEMORY[0x1E695C330];
    v29[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v24 = [contactStore unifiedContactsMatchingPredicate:v21 keysToFetch:v23 error:0];

    v25 = [v24 _cn_filter:&__block_literal_global_11730];
    firstObject2 = [v25 firstObject];
    [(CNContactAction *)self setContact:firstObject2];
  }

LABEL_7:
  delegate = [(CNContactAction *)self delegate];
  [delegate actionDidUpdate:self];

  mEMORY[0x1E695CD50] = [MEMORY[0x1E695CD50] sharedNotifier];
  [mEMORY[0x1E695CD50] didSaveChangesSuccessfully:1 fromContactStore:contactStore requestIdentifier:0];
}

- (void)performActionWithSender:(id)sender
{
  contact = [(CNContactAction *)self contact];
  phoneNumbers = [contact phoneNumbers];
  firstObject = [phoneNumbers firstObject];
  value = [firstObject value];
  stringValue = [value stringValue];

  contact2 = [(CNContactAction *)self contact];
  emailAddresses = [contact2 emailAddresses];
  firstObject2 = [emailAddresses firstObject];
  value2 = [firstObject2 value];

  if (stringValue)
  {
    v12 = [CNUIAcceptedContactConfiguration configurationForPhoneNumber:?];
  }

  else
  {
    if (!value2)
    {
      goto LABEL_12;
    }

    v12 = [CNUIAcceptedContactConfiguration configurationForEmailAddress:value2];
  }

  v13 = v12;
  if (v12)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695CD80]);
    contact3 = [(CNContactAction *)self contact];
    v16 = [v14 stringFromContact:contact3];

    if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      v17 = 1;
    }

    else
    {
      contact4 = [(CNContactAction *)self contact];
      isCoreRecentsAccepted = [contact4 isCoreRecentsAccepted];

      if (isCoreRecentsAccepted)
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

    actionsManager = [(CNContactAcceptedContactNameAction *)self actionsManager];
    [actionsManager setDelegate:self];

    actionsManager2 = [(CNContactAcceptedContactNameAction *)self actionsManager];
    [actionsManager2 presentAcceptedContactViewController];
  }

LABEL_12:
}

@end