@interface CNContactAddToExistingContactAction
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)performActionWithSender:(id)sender;
@end

@implementation CNContactAddToExistingContactAction

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  if (contactCopy)
  {
    [(CNContactAddToExistingContactAction *)self setChosenContact:contactCopy];
    delegate = [(CNContactAction *)self delegate];
    contactPicker = [(CNContactAddToExistingContactAction *)self contactPicker];
    [delegate action:self dismissViewController:contactPicker sender:0];

    delegate2 = [(CNContactAction *)self delegate];
    [delegate2 actionDidFinish:self];

    contact = [(CNContactAction *)self contact];
    LODWORD(contactPicker) = [contact isSuggested];

    if (!contactPicker)
    {
      goto LABEL_6;
    }

    delegate3 = [(CNContactAction *)self delegate];
    contactViewCache = [delegate3 contactViewCache];
    contactStore = [contactViewCache contactStore];

    mEMORY[0x1E695CD50] = [MEMORY[0x1E695CD50] sharedNotifier];
    [mEMORY[0x1E695CD50] didSaveChangesSuccessfully:1 fromContactStore:contactStore requestIdentifier:0];
  }

  else
  {
    delegate4 = [(CNContactAction *)self delegate];
    contactPicker2 = [(CNContactAddToExistingContactAction *)self contactPicker];
    [delegate4 action:self dismissViewController:contactPicker2 sender:0];

    contactStore = [(CNContactAction *)self delegate];
    [contactStore actionWasCanceled:self];
  }

LABEL_6:
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  v12 = [contact mutableCopy];
  contact = [(CNContactAction *)self contact];
  v6 = [CNContactViewController viewControllerForUpdatingContact:v12 withPropertiesFromContact:contact];
  delegate = [(CNContactAction *)self delegate];
  contactViewCache = [delegate contactViewCache];
  contactStore = [contactViewCache contactStore];
  [v6 setContactStore:contactStore];

  [v6 setDelegate:self];
  contactPicker = [(CNContactAddToExistingContactAction *)self contactPicker];
  navigationController = [contactPicker navigationController];
  [navigationController pushViewController:v6 animated:1];
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  delegate = [(CNContactAction *)self delegate];
  [delegate action:self dismissViewController:cancelCopy sender:0];

  delegate2 = [(CNContactAction *)self delegate];
  [delegate2 actionWasCanceled:self];
}

- (void)performActionWithSender:(id)sender
{
  senderCopy = sender;
  v7 = objc_alloc_init(CNContactPickerViewController);
  [(CNContactPickerViewController *)v7 setDelegate:self];
  [(CNContactPickerViewController *)v7 setMode:2];
  [(CNContactPickerViewController *)v7 setAutocloses:0];
  [(CNContactPickerViewController *)v7 setOnlyRealContacts:1];
  contact = [(CNContactAction *)self contact];
  [(CNContactPickerViewController *)v7 scrollToClosestContactMatching:contact];

  [(CNContactAddToExistingContactAction *)self setChosenContact:0];
  delegate = [(CNContactAction *)self delegate];
  [delegate action:self presentViewController:v7 sender:senderCopy];

  [(CNContactAddToExistingContactAction *)self setContactPicker:v7];
}

@end