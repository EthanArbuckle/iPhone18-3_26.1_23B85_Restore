@interface AccountPSSyncController
- (BOOL)shouldAutomaticallyTryEnablingDataclassDuringSetup:(id)setup;
- (MailAccount)mailAccount;
- (id)specifiers;
- (id)valueForAccountSummaryCell;
- (void)viewDidLoad;
@end

@implementation AccountPSSyncController

- (void)viewDidLoad
{
  mailAccount = [(AccountPSSyncController *)self mailAccount];
  isManaged = [mailAccount isManaged];

  if (isManaged)
  {
    [(AccountPSSyncController *)self setShouldShowDeleteAccountButton:0];
  }

  v5.receiver = self;
  v5.super_class = AccountPSSyncController;
  [(AccountPSSyncController *)&v5 viewDidLoad];
}

- (id)specifiers
{
  v10.receiver = self;
  v10.super_class = AccountPSSyncController;
  specifiers = [(AccountPSSyncController *)&v10 specifiers];
  v4 = [specifiers mutableCopy];

  mailAccount = [(AccountPSSyncController *)self mailAccount];
  otherTopLevelSpecifiers = [mailAccount otherTopLevelSpecifiers];
  [v4 addObjectsFromArray:otherTopLevelSpecifiers];

  managedAccountFooterText = [mailAccount managedAccountFooterText];
  if (managedAccountFooterText)
  {
    v8 = +[PSSpecifier emptyGroupSpecifier];
    [v8 setProperty:managedAccountFooterText forKey:PSFooterTextGroupKey];
    [v4 addObject:v8];
  }

  objc_storeStrong(&self->ACUIDataclassConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers], v4);

  return v4;
}

- (id)valueForAccountSummaryCell
{
  if (_os_feature_enabled_impl())
  {
    account = [(AccountPSSyncController *)self account];
    accountDescription = [account accountDescription];
  }

  else
  {
    account = [(AccountPSSyncController *)self mailAccount];
    defaultEmailAddress = [account defaultEmailAddress];
    v6 = defaultEmailAddress;
    if (defaultEmailAddress)
    {
      firstEmailAddress = defaultEmailAddress;
    }

    else
    {
      firstEmailAddress = [account firstEmailAddress];
    }

    accountDescription = firstEmailAddress;
  }

  return accountDescription;
}

- (MailAccount)mailAccount
{
  account = [(AccountPSSyncController *)self account];
  v3 = [MFAccount accountWithPersistentAccount:account];

  return v3;
}

- (BOOL)shouldAutomaticallyTryEnablingDataclassDuringSetup:(id)setup
{
  setupCopy = setup;
  if ([setupCopy isEqualToString:kAccountDataclassNotes])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AccountPSSyncController;
    v5 = [(AccountPSSyncController *)&v7 shouldAutomaticallyTryEnablingDataclassDuringSetup:setupCopy];
  }

  return v5;
}

@end