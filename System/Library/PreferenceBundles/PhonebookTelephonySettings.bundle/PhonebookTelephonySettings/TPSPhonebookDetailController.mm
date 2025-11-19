@interface TPSPhonebookDetailController
- (TPSPhonebookController)phonebookController;
- (UIBarButtonItem)saveBarButtonItem;
- (id)errorAlertControllerWithMessage:(id)a3;
- (void)saveAction;
- (void)viewDidLoad;
@end

@implementation TPSPhonebookDetailController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = TPSPhonebookDetailController;
  [(TPSPhonebookDetailController *)&v9 viewDidLoad];
  v3 = [(TPSPhonebookDetailController *)self phonebookController];
  v4 = [v3 isSubscriptionEditable];

  if (v4)
  {
    v5 = objc_opt_class();
    v6 = [(TPSPhonebookDetailController *)self saveBarButtonItem];
  }

  else
  {
    v5 = objc_opt_class();
    v6 = 0;
  }

  v7 = [(TPSPhonebookDetailController *)self specifier];
  [v7 setEditPaneClass:v5];

  v8 = [(TPSPhonebookDetailController *)self navigationItem];
  [v8 setRightBarButtonItem:v6];

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
    v4 = [(TPSPhonebookDetailController *)self specifier];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 propertyForKey:v6];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_phonebookController, v7);
    }

    if (!self->_phonebookController)
    {
      v8 = [(TPSDetailController *)self subscriptionContext];
      if (v8)
      {
        v9 = [[TPSPhonebookController alloc] initWithSubscriptionContext:v8];
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
  v3 = [(TPSPhonebookDetailController *)self pane];
  v4 = [v3 preferenceValue];

  if (v4)
  {
    v5 = [(TPSPhonebookDetailController *)self phonebookController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1BB8;
    v6[3] = &unk_8260;
    v7 = v4;
    v8 = self;
    [v5 updateSubscriptionTelephoneNumber:v7 completion:v6];
  }
}

- (id)errorAlertControllerWithMessage:(id)a3
{
  v3 = a3;
  v4 = [TPSPhonebookStrings localizedStringForKey:@"ERROR_ALERT_CONTROLLER_TITLE"];
  v5 = [UIAlertController alertControllerWithTitle:v4 message:v3 preferredStyle:1];

  v6 = [TPSPhonebookStrings localizedStringForKey:@"ERROR_ALERT_ACTION_TITLE_DISMISS"];
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:0];
  [v5 addAction:v7];

  return v5;
}

@end