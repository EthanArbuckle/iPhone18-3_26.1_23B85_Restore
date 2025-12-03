@interface CNContactCreateNewContactAction
- (UIViewController)presentingViewController;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)performActionWithSender:(id)sender;
@end

@implementation CNContactCreateNewContactAction

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  controllerCopy = controller;
  [(CNContactCreateNewContactAction *)self setCreatedContact:contactCopy];
  delegate = [(CNContactAction *)self delegate];
  contactViewCache = [delegate contactViewCache];
  contactStore = [contactViewCache contactStore];

  delegate2 = [(CNContactAction *)self delegate];
  parentViewController = [controllerCopy parentViewController];

  [delegate2 action:self dismissViewController:parentViewController sender:0];
  contact = [(CNContactAction *)self contact];
  LODWORD(delegate2) = [contact isSuggestedMe];

  if (delegate2)
  {
    v20 = 0;
    [contactStore setMeContact:contactCopy error:&v20];
    v14 = v20;
    v15 = v14;
    if (v14)
    {
      NSLog(&cfstr_ErrorSettingMe.isa, v14);
    }
  }

  delegate3 = [(CNContactAction *)self delegate];
  mEMORY[0x1E695CD50] = delegate3;
  if (!contactCopy)
  {
    [delegate3 actionWasCanceled:self];
    goto LABEL_9;
  }

  [delegate3 actionDidFinish:self];

  contact2 = [(CNContactAction *)self contact];
  isSuggested = [contact2 isSuggested];

  if (isSuggested)
  {
    mEMORY[0x1E695CD50] = [MEMORY[0x1E695CD50] sharedNotifier];
    [mEMORY[0x1E695CD50] didSaveChangesSuccessfully:1 fromContactStore:contactStore requestIdentifier:0];
LABEL_9:
  }
}

- (void)performActionWithSender:(id)sender
{
  senderCopy = sender;
  contact = [(CNContactAction *)self contact];
  v5 = [CNContactViewController viewControllerForNewContact:contact];
  delegate = [(CNContactAction *)self delegate];
  contactViewCache = [delegate contactViewCache];
  contactStore = [contactViewCache contactStore];
  [v5 setContactStore:contactStore];

  [v5 setDelegate:self];
  [v5 loadView];
  delegate2 = [(CNContactAction *)self delegate];
  contentViewController = [v5 contentViewController];
  [delegate2 action:self prepareChildContactViewController:contentViewController sender:self];

  [(CNContactCreateNewContactAction *)self setCreatedContact:0];
  v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  navigationBar = [v11 navigationBar];
  [navigationBar _cnui_applyContactStyle];

  delegate3 = [(CNContactAction *)self delegate];
  [delegate3 action:self presentViewController:v11 sender:senderCopy];
}

@end