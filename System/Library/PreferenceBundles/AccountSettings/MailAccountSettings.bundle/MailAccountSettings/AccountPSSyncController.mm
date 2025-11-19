@interface AccountPSSyncController
- (BOOL)shouldAutomaticallyTryEnablingDataclassDuringSetup:(id)a3;
- (MailAccount)mailAccount;
- (id)specifiers;
- (id)valueForAccountSummaryCell;
- (void)viewDidLoad;
@end

@implementation AccountPSSyncController

- (void)viewDidLoad
{
  v3 = [(AccountPSSyncController *)self mailAccount];
  v4 = [v3 isManaged];

  if (v4)
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
  v3 = [(AccountPSSyncController *)&v10 specifiers];
  v4 = [v3 mutableCopy];

  v5 = [(AccountPSSyncController *)self mailAccount];
  v6 = [v5 otherTopLevelSpecifiers];
  [v4 addObjectsFromArray:v6];

  v7 = [v5 managedAccountFooterText];
  if (v7)
  {
    v8 = +[PSSpecifier emptyGroupSpecifier];
    [v8 setProperty:v7 forKey:PSFooterTextGroupKey];
    [v4 addObject:v8];
  }

  objc_storeStrong(&self->ACUIDataclassConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers], v4);

  return v4;
}

- (id)valueForAccountSummaryCell
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(AccountPSSyncController *)self account];
    v4 = [v3 accountDescription];
  }

  else
  {
    v3 = [(AccountPSSyncController *)self mailAccount];
    v5 = [v3 defaultEmailAddress];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [v3 firstEmailAddress];
    }

    v4 = v7;
  }

  return v4;
}

- (MailAccount)mailAccount
{
  v2 = [(AccountPSSyncController *)self account];
  v3 = [MFAccount accountWithPersistentAccount:v2];

  return v3;
}

- (BOOL)shouldAutomaticallyTryEnablingDataclassDuringSetup:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:kAccountDataclassNotes])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AccountPSSyncController;
    v5 = [(AccountPSSyncController *)&v7 shouldAutomaticallyTryEnablingDataclassDuringSetup:v4];
  }

  return v5;
}

@end