@interface TPSPhonebookBundleController
- (PSSpecifier)telephoneNumberSpecifier;
- (TPSPhonebookBundleController)initWithParentListController:(id)controller;
- (id)myNumber:(id)number;
- (id)specifiers;
- (void)handleTPSPhonebookControllerSubscriptionDidChangeNotification:(id)notification;
@end

@implementation TPSPhonebookBundleController

- (TPSPhonebookBundleController)initWithParentListController:(id)controller
{
  v10.receiver = self;
  v10.super_class = TPSPhonebookBundleController;
  v3 = [(TPSPhonebookBundleController *)&v10 initWithParentListController:controller];
  v4 = v3;
  if (v3)
  {
    subscriptionContext = [(TPSPhonebookBundleController *)v3 subscriptionContext];
    if (subscriptionContext)
    {
      v6 = [[TPSPhonebookController alloc] initWithSubscriptionContext:subscriptionContext];
      phonebookController = v4->_phonebookController;
      v4->_phonebookController = v6;

      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:v4 selector:"handleTPSPhonebookControllerSubscriptionDidChangeNotification:" name:TPSPhonebookControllerSubscriptionDidChangeNotification object:v4->_phonebookController];
    }
  }

  return v4;
}

- (id)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = +[NSMutableArray array];
    telephoneNumberSpecifier = [(TPSPhonebookBundleController *)self telephoneNumberSpecifier];
    phonebookController = [(TPSPhonebookBundleController *)self phonebookController];
    isSubscriptionEditable = [phonebookController isSubscriptionEditable];

    if ((isSubscriptionEditable & 1) == 0)
    {
      [telephoneNumberSpecifier setCellType:4];
    }

    [v4 addObject:telephoneNumberSpecifier];
    v8 = [v4 copy];
    v9 = self->_specifiers;
    self->_specifiers = v8;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (PSSpecifier)telephoneNumberSpecifier
{
  telephoneNumberSpecifier = self->_telephoneNumberSpecifier;
  if (!telephoneNumberSpecifier)
  {
    v4 = [TPSPhonebookStrings localizedStringForKey:@"BUNDLE_CONTROLLER_ROOT_SPECIFIER_TITLE"];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:"myNumber:" detail:objc_opt_class() cell:2 edit:0];
    v6 = self->_telephoneNumberSpecifier;
    self->_telephoneNumberSpecifier = v5;

    [(PSSpecifier *)self->_telephoneNumberSpecifier setIdentifier:@"PHONEBOOK_TELEPHONY_SETTINGS"];
    v7 = self->_telephoneNumberSpecifier;
    phonebookController = [(TPSPhonebookBundleController *)self phonebookController];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(PSSpecifier *)v7 setProperty:phonebookController forKey:v10];

    telephoneNumberSpecifier = self->_telephoneNumberSpecifier;
  }

  return telephoneNumberSpecifier;
}

- (id)myNumber:(id)number
{
  phonebookController = [(TPSPhonebookBundleController *)self phonebookController];
  localizedSubscriptionTelephoneNumber = [phonebookController localizedSubscriptionTelephoneNumber];

  return localizedSubscriptionTelephoneNumber;
}

- (void)handleTPSPhonebookControllerSubscriptionDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = TPSPhonebookLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = notificationCopy;
    v6 = v10;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v9, 0x16u);
  }

  parentListController = [(TPSPhonebookBundleController *)self parentListController];
  telephoneNumberSpecifier = [(TPSPhonebookBundleController *)self telephoneNumberSpecifier];
  [parentListController reloadSpecifier:telephoneNumberSpecifier];
}

@end