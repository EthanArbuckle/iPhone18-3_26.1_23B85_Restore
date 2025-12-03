@interface CNContactUpdateExistingContactAction
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)performActionWithSender:(id)sender;
@end

@implementation CNContactUpdateExistingContactAction

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  if (contact)
  {
    [(CNContactUpdateExistingContactAction *)self setExistingContact:contact];
    delegate = [(CNContactAction *)self delegate];
    [delegate action:self dismissViewController:controllerCopy sender:0];

    delegate2 = [(CNContactAction *)self delegate];
    [delegate2 actionDidFinish:self];
  }

  else
  {
    delegate3 = [(CNContactAction *)self delegate];
    [delegate3 action:self dismissViewController:controllerCopy sender:0];

    delegate2 = [(CNContactAction *)self delegate];
    [delegate2 actionWasCanceled:self];
  }
}

- (void)performActionWithSender:(id)sender
{
  v30[1] = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  v5 = MEMORY[0x1E695CD58];
  existingContact = [(CNContactUpdateExistingContactAction *)self existingContact];
  identifier = [existingContact identifier];
  v30[0] = identifier;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v9 = [v5 predicateForContactsWithIdentifiers:v8];

  v10 = objc_alloc(MEMORY[0x1E695CD78]);
  v11 = +[CNContactContentViewController descriptorForRequiredKeys];
  v29 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v13 = [v10 initWithKeysToFetch:v12];

  [v13 setOnlyMainStore:1];
  [v13 setUnifyResults:1];
  [v13 setPredicate:v9];
  delegate = [(CNContactAction *)self delegate];
  contactViewCache = [delegate contactViewCache];
  contactStore = [contactViewCache contactStore];

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__62420;
  v27 = __Block_byref_object_dispose__62421;
  v28 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__CNContactUpdateExistingContactAction_performActionWithSender___block_invoke;
  v22[3] = &unk_1E74E6F60;
  v22[4] = &v23;
  [contactStore enumerateContactsWithFetchRequest:v13 error:0 usingBlock:v22];
  v17 = v24[5];
  contact = [(CNContactAction *)self contact];
  v19 = [CNContactViewController viewControllerForUpdatingContact:v17 withPropertiesFromContact:contact];

  [v19 setContactStore:contactStore];
  [v19 setDelegate:self];
  v20 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v19];
  delegate2 = [(CNContactAction *)self delegate];
  [delegate2 action:self presentViewController:v20 sender:senderCopy];

  _Block_object_dispose(&v23, 8);
}

@end