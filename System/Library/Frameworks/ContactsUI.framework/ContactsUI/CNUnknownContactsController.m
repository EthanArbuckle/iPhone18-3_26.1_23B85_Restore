@interface CNUnknownContactsController
+ (id)descriptorForRequiredKeys;
- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4;
- (BOOL)multipleUnknownContactsViewController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4;
- (CNUnknownContactsController)initWithContacts:(id)a3 contactStore:(id)a4;
- (CNUnknownContactsControllerDelegate)delegate;
- (id)viewController;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)multipleUnknownContactsViewControllerDidComplete:(id)a3;
@end

@implementation CNUnknownContactsController

- (CNUnknownContactsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v5 = [(CNUnknownContactsController *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNUnknownContactsController *)self delegate];
    [v7 unknownContactsControllerDidComplete:self];
  }
}

- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4
{
  v5 = a4;
  v6 = [(CNUnknownContactsController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNUnknownContactsController *)self delegate];
    v9 = [v8 unknownContactsController:self shouldPerformDefaultActionForContactProperty:v5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)multipleUnknownContactsViewController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4
{
  v5 = a4;
  v6 = [(CNUnknownContactsController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNUnknownContactsController *)self delegate];
    v9 = [v8 unknownContactsController:self shouldPerformDefaultActionForContactProperty:v5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)multipleUnknownContactsViewControllerDidComplete:(id)a3
{
  v4 = [(CNUnknownContactsController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNUnknownContactsController *)self delegate];
    [v6 unknownContactsControllerDidComplete:self];
  }
}

- (id)viewController
{
  v3 = [(CNUnknownContactsController *)self displayedController];
  if (!v3)
  {
    v4 = [(CNUnknownContactsController *)self contacts];
    v5 = [v4 count];

    if (v5 < 2)
    {
      v7 = [(CNUnknownContactsController *)self contacts];
      v8 = [v7 objectAtIndexedSubscript:0];
      v3 = [CNContactViewController viewControllerForUnknownContact:v8];
    }

    else
    {
      v6 = [CNMultipleUnknownContactsViewController alloc];
      v7 = [(CNUnknownContactsController *)self contacts];
      v3 = [(CNMultipleUnknownContactsViewController *)v6 initWithContacts:v7];
    }

    v9 = [(CNUnknownContactsController *)self contactStore];
    [(CNMultipleUnknownContactsViewController *)v3 setContactStore:v9];

    [(CNMultipleUnknownContactsViewController *)v3 setDelegate:self];
    [(CNUnknownContactsController *)self setDisplayedController:v3];
  }

  return v3;
}

- (CNUnknownContactsController)initWithContacts:(id)a3 contactStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    v13.receiver = self;
    v13.super_class = CNUnknownContactsController;
    v9 = [(CNUnknownContactsController *)&v13 init];
    if (v9)
    {
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = objc_alloc_init(MEMORY[0x1E695CE18]);
      }

      contactStore = v9->_contactStore;
      v9->_contactStore = v10;

      objc_storeStrong(&v9->_contacts, a3);
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