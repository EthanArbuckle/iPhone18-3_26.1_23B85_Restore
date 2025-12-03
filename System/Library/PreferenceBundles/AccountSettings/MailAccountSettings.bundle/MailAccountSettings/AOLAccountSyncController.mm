@interface AOLAccountSyncController
- (id)_reAuthenticationSectionSpecifiers;
- (void)_reAuthenticationButtonTapped:(id)tapped;
- (void)accountValidator:(id)validator finishedValidationOfAccount:(id)account usedSSL:(BOOL)l;
- (void)viewDidLoad;
@end

@implementation AOLAccountSyncController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = AOLAccountSyncController;
  [(YahooAccountSyncController *)&v8 viewDidLoad];
  if ([(AOLAccountSyncController *)self isFirstTimeSetup])
  {
    navigationItem = [(AOLAccountSyncController *)self navigationItem];
    title = [navigationItem title];
    v5 = *(&self->super._reAuthenticating + 1);
    *(&self->super._reAuthenticating + 1) = title;

    [(AOLAccountSyncController *)self setTaskCompletionAssertionEnabled:1];
    v6 = objc_alloc_init(+[AOLAccount accountValidatorClass]);
    [v6 setDelegate:self];
    mailAccount = [(AccountPSSyncController *)self mailAccount];
    [v6 validateAccount:mailAccount useSSL:1];
  }
}

- (void)_reAuthenticationButtonTapped:(id)tapped
{
  if (![(YahooAccountSyncController *)self reAuthenticating])
  {
    [(YahooAccountSyncController *)self setReAuthenticating:1];
    v4 = objc_alloc(NSClassFromString(@"SLAOLWebAuthController"));
    account = [(AOLAccountSyncController *)self account];
    accountStore = [(AOLAccountSyncController *)self accountStore];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_209FC;
    v12[3] = &unk_B9010;
    v12[4] = self;
    v7 = [v4 initWithAccount:account accountStore:accountStore presentationBlock:v12];
    v8 = *(&self->_firstTimeSetupValidationOriginalTitle + 3);
    *(&self->_firstTimeSetupValidationOriginalTitle + 3) = v7;

    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_20A10;
    v9[3] = &unk_B8FE8;
    objc_copyWeak(&v10, &location);
    [*(&self->_firstTimeSetupValidationOriginalTitle + 3) setCompletion:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (id)_reAuthenticationSectionSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[PSSpecifier emptyGroupSpecifier];
  account = [(AOLAccountSyncController *)self account];
  username = [account username];
  [v4 setProperty:username forKey:@"YahooNameForAccountToAuthenticate"];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 setProperty:v8 forKey:PSFooterCellClassGroupKey];

  [v3 addObject:v4];
  v9 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:v9];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"REENTER_PASSWORD" value:&stru_B9FC8 table:@"AccountPreferences"];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:objc_opt_class() cell:13 edit:0];

  [v12 setButtonAction:"_reAuthenticationButtonTapped:"];
  [v3 addObject:v12];

  return v3;
}

- (void)accountValidator:(id)validator finishedValidationOfAccount:(id)account usedSSL:(BOOL)l
{
  validatorCopy = validator;
  accountCopy = account;
  [(YahooAccountSyncController *)self setDidFirstTimeSetupValidation:1];
  [(AOLAccountSyncController *)self stopValidationWithPrompt:*(&self->super._reAuthenticating + 1) showButtons:1];
  if ([validatorCopy accountIsValid])
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([accountCopy deliveryAccount], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = accountCopy;
      if (v9)
      {
        v10 = +[MFInvocationQueue sharedInvocationQueue];
        v11 = [MFMonitoredInvocation mf_invocationWithSelector:"updateEmailAliases" target:v9];
        [v10 addInvocation:v11];
      }

      v12 = v8;
    }

    else
    {
      v9 = 0;
      v12 = 0;
    }

    [(AOLAccountSyncController *)self reloadSpecifiers];
  }

  else
  {
    v9 = 0;
    [(AOLAccountSyncController *)self cancelButtonTapped:self];
  }

  [(AOLAccountSyncController *)self setTaskCompletionAssertionEnabled:0];
}

@end