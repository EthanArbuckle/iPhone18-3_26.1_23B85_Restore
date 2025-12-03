@interface TPSPhonebookDetailController
- (TPSPhonebookController)phonebookController;
- (UIBarButtonItem)saveBarButtonItem;
- (id)errorAlertControllerWithMessage:(id)message;
- (void)saveAction;
- (void)viewDidLoad;
@end

@implementation TPSPhonebookDetailController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = TPSPhonebookDetailController;
  [(TPSPhonebookDetailController *)&v9 viewDidLoad];
  phonebookController = [(TPSPhonebookDetailController *)self phonebookController];
  isSubscriptionEditable = [phonebookController isSubscriptionEditable];

  if (isSubscriptionEditable)
  {
    v5 = objc_opt_class();
    saveBarButtonItem = [(TPSPhonebookDetailController *)self saveBarButtonItem];
  }

  else
  {
    v5 = objc_opt_class();
    saveBarButtonItem = 0;
  }

  specifier = [(TPSPhonebookDetailController *)self specifier];
  [specifier setEditPaneClass:v5];

  navigationItem = [(TPSPhonebookDetailController *)self navigationItem];
  [navigationItem setRightBarButtonItem:saveBarButtonItem];

  [(TPSPhonebookDetailController *)self setPane:0];
  [(TPSPhonebookDetailController *)self loadPane];
}

- (UIBarButtonItem)saveBarButtonItem
{
  saveBarButtonItem = self->_saveBarButtonItem;
  if (!saveBarButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:3 target:self action:"saveAction"];
    v5 = self->_saveBarButtonItem;
    self->_saveBarButtonItem = v4;

    saveBarButtonItem = self->_saveBarButtonItem;
  }

  return saveBarButtonItem;
}

- (TPSPhonebookController)phonebookController
{
  phonebookController = self->_phonebookController;
  if (!phonebookController)
  {
    specifier = [(TPSPhonebookDetailController *)self specifier];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [specifier propertyForKey:v6];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_phonebookController, v7);
    }

    if (!self->_phonebookController)
    {
      subscriptionContext = [(TPSDetailController *)self subscriptionContext];
      if (subscriptionContext)
      {
        v9 = [[TPSPhonebookController alloc] initWithSubscriptionContext:subscriptionContext];
        v10 = self->_phonebookController;
        self->_phonebookController = v9;
      }
    }

    phonebookController = self->_phonebookController;
  }

  return phonebookController;
}

- (void)saveAction
{
  pane = [(TPSPhonebookDetailController *)self pane];
  preferenceValue = [pane preferenceValue];

  if (preferenceValue)
  {
    phonebookController = [(TPSPhonebookDetailController *)self phonebookController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1BB8;
    v6[3] = &unk_8260;
    v7 = preferenceValue;
    selfCopy = self;
    [phonebookController updateSubscriptionTelephoneNumber:v7 completion:v6];
  }
}

- (id)errorAlertControllerWithMessage:(id)message
{
  messageCopy = message;
  v4 = [TPSPhonebookStrings localizedStringForKey:@"ERROR_ALERT_CONTROLLER_TITLE"];
  v5 = [UIAlertController alertControllerWithTitle:v4 message:messageCopy preferredStyle:1];

  v6 = [TPSPhonebookStrings localizedStringForKey:@"ERROR_ALERT_ACTION_TITLE_DISMISS"];
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:0];
  [v5 addAction:v7];

  return v5;
}

@end