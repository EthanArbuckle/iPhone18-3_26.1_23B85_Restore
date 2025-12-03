@interface CNUnknownContactsController
+ (id)descriptorForRequiredKeys;
- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property;
- (BOOL)multipleUnknownContactsViewController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property;
- (CNUnknownContactsController)initWithContacts:(id)contacts contactStore:(id)store;
- (CNUnknownContactsControllerDelegate)delegate;
- (id)viewController;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)multipleUnknownContactsViewControllerDidComplete:(id)complete;
@end

@implementation CNUnknownContactsController

- (CNUnknownContactsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  v5 = [(CNUnknownContactsController *)self delegate:controller];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(CNUnknownContactsController *)self delegate];
    [delegate unknownContactsControllerDidComplete:self];
  }
}

- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property
{
  propertyCopy = property;
  delegate = [(CNUnknownContactsController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNUnknownContactsController *)self delegate];
    v9 = [delegate2 unknownContactsController:self shouldPerformDefaultActionForContactProperty:propertyCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)multipleUnknownContactsViewController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property
{
  propertyCopy = property;
  delegate = [(CNUnknownContactsController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNUnknownContactsController *)self delegate];
    v9 = [delegate2 unknownContactsController:self shouldPerformDefaultActionForContactProperty:propertyCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)multipleUnknownContactsViewControllerDidComplete:(id)complete
{
  delegate = [(CNUnknownContactsController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNUnknownContactsController *)self delegate];
    [delegate2 unknownContactsControllerDidComplete:self];
  }
}

- (id)viewController
{
  displayedController = [(CNUnknownContactsController *)self displayedController];
  if (!displayedController)
  {
    contacts = [(CNUnknownContactsController *)self contacts];
    v5 = [contacts count];

    if (v5 < 2)
    {
      contacts2 = [(CNUnknownContactsController *)self contacts];
      v8 = [contacts2 objectAtIndexedSubscript:0];
      displayedController = [CNContactViewController viewControllerForUnknownContact:v8];
    }

    else
    {
      v6 = [CNMultipleUnknownContactsViewController alloc];
      contacts2 = [(CNUnknownContactsController *)self contacts];
      displayedController = [(CNMultipleUnknownContactsViewController *)v6 initWithContacts:contacts2];
    }

    contactStore = [(CNUnknownContactsController *)self contactStore];
    [(CNMultipleUnknownContactsViewController *)displayedController setContactStore:contactStore];

    [(CNMultipleUnknownContactsViewController *)displayedController setDelegate:self];
    [(CNUnknownContactsController *)self setDisplayedController:displayedController];
  }

  return displayedController;
}

- (CNUnknownContactsController)initWithContacts:(id)contacts contactStore:(id)store
{
  contactsCopy = contacts;
  storeCopy = store;
  if ([contactsCopy count])
  {
    v13.receiver = self;
    v13.super_class = CNUnknownContactsController;
    v9 = [(CNUnknownContactsController *)&v13 init];
    if (v9)
    {
      if (storeCopy)
      {
        v10 = storeCopy;
      }

      else
      {
        v10 = objc_alloc_init(MEMORY[0x1E695CE18]);
      }

      contactStore = v9->_contactStore;
      v9->_contactStore = v10;

      objc_storeStrong(&v9->_contacts, contacts);
    }
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

+ (id)descriptorForRequiredKeys
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = +[CNContactViewController descriptorForRequiredKeys];
  v9[0] = v3;
  v4 = +[CNMultipleUnknownContactsViewController descriptorForRequiredKeys];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNUnknownContactsController descriptorForRequiredKeys]"];
  v7 = [v2 descriptorWithKeyDescriptors:v5 description:v6];

  return v7;
}

@end