@interface VSAccountInfoViewController
- (VSAccountInfoViewController)initWithAccount:(id)account identityProvider:(id)provider storage:(id)storage restrictionsCenter:(id)center;
- (VSAccountInfoViewController)initWithCoder:(id)coder;
- (VSAccountInfoViewController)initWithNibName:(id)name bundle:(id)bundle;
- (VSAccountInfoViewControllerDelegate)delegate;
- (id)_isAppAllowedAccountAccessWithSpecifier:(id)specifier;
- (id)_specifierForAppSettingsViewModel:(id)model modifier:(id)modifier;
- (id)createAccountFooterSpecifier;
- (id)createAppSpecifiers;
- (id)createDecidedSpecifiers;
- (id)createHeaderSpecifier;
- (id)createLoadingSpecifier;
- (id)createLoadingTitleSpecifier;
- (id)createLockupRequests;
- (id)createSignOutButtonSpecifier;
- (id)loadingSpecifier;
- (id)loadingTitleSpecifier;
- (id)specifiers;
- (void)_aboutPrivacyLinkTapped:(id)tapped;
- (void)_accountUsernameButtonTapped:(id)tapped;
- (void)_appsDidChange:(id)change;
- (void)_revokeVoucher:(id)voucher;
- (void)_seeMoreAppsLinkButtonTapped:(id)tapped;
- (void)_setAppAllowedAccess:(id)access withSpecifier:(id)specifier;
- (void)_setIdentityProvider:(id)provider;
- (void)dealloc;
- (void)disableAccountSignOutButton;
- (void)enqueueEvent:(id)event;
- (void)handleDestination:(id)destination completion:(id)completion;
- (void)handleSignOutSupportedTVProviderDestinationWithCompletion:(id)completion;
- (void)handleSignOutUnsupportedTVProviderDestinationWithCompletion:(id)completion;
- (void)prefetchLockupRequestsWithCompletionBlock:(id)block;
- (void)scrollToSignOutButtonWithCompletion:(id)completion;
- (void)scrollToSpecifier:(id)specifier withCompletion:(id)completion;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)setIdentityProvider:(id)provider;
- (void)showMVPDIfNeeded;
- (void)transitionToLoadedproviderState;
- (void)transitionToLoadedproviderandappsState;
@end

@implementation VSAccountInfoViewController

- (VSAccountInfoViewController)initWithCoder:(id)coder
{
  v4 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The %@ initializer is not available.", v4];

  return 0;
}

- (VSAccountInfoViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The %@ initializer is not available.", v5];

  return 0;
}

- (VSAccountInfoViewController)initWithAccount:(id)account identityProvider:(id)provider storage:(id)storage restrictionsCenter:(id)center
{
  accountCopy = account;
  providerCopy = provider;
  storageCopy = storage;
  centerCopy = center;
  VSRequireMainThread();
  if (accountCopy)
  {
    if (storageCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [NSException raise:NSInvalidArgumentException format:@"The storage parameter must not be nil."];
    if (centerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [NSException raise:NSInvalidArgumentException format:@"The account parameter must not be nil."];
  if (!storageCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (centerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [NSException raise:NSInvalidArgumentException format:@"The restrictionsCenter parameter must not be nil."];
LABEL_4:
  v32.receiver = self;
  v32.super_class = VSAccountInfoViewController;
  v15 = [(VSAccountInfoViewController *)&v32 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, account);
    objc_storeStrong(&v16->_identityProvider, provider);
    objc_storeStrong(&v16->_storage, storage);
    objc_storeStrong(&v16->_restrictionsCenter, center);
    v17 = objc_alloc_init(VSOnboardingInfoCenter);
    onboardingInfoCenter = v16->_onboardingInfoCenter;
    v16->_onboardingInfoCenter = v17;

    v19 = [[ASCLockupViewGroup alloc] initWithName:@"VSAccountInfoViewController"];
    group = v16->_group;
    v16->_group = v19;

    v21 = objc_alloc_init(NSOperationQueue);
    privateQueue = v16->_privateQueue;
    v16->_privateQueue = v21;

    [(NSOperationQueue *)v16->_privateQueue setName:@"VSAccountInfoViewController"];
    [(NSOperationQueue *)v16->_privateQueue setMaxConcurrentOperationCount:1];
    v23 = objc_alloc_init(VSStateMachine);
    stateMachine = v16->_stateMachine;
    v16->_stateMachine = v23;

    v25 = v16->_stateMachine;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    [(VSStateMachine *)v25 setName:v27];

    [(VSStateMachine *)v16->_stateMachine setDelegate:v16];
    [(VSStateMachine *)v16->_stateMachine setDestinationState:@"LoadedProvider" forEvent:@"LoadProvider" inState:@"Empty"];
    [(VSStateMachine *)v16->_stateMachine setDestinationState:@"LoadedProviderAndApps" forEvent:@"AppsDidChange" inState:@"LoadedProvider"];
    [(VSStateMachine *)v16->_stateMachine setIgnoresUnassignedEvents:1];
    [(VSStateMachine *)v16->_stateMachine activateWithState:@"Empty"];
    v28 = [[VSAppSettingsFacade alloc] initWithStorage:storageCopy restrictionsCenter:centerCopy];
    facade = v16->_facade;
    v16->_facade = v28;

    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v16 selector:"_appsDidChange:" name:VSAppSettingsFacadeAppsDidChangeNotification object:v16->_facade];
    [(VSAccountInfoViewController *)v16 _setIdentityProvider:providerCopy];
  }

  return v16;
}

- (void)dealloc
{
  VSRequireMainThread();
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:VSAppSettingsFacadeAppsDidChangeNotification object:self->_facade];

  v4.receiver = self;
  v4.super_class = VSAccountInfoViewController;
  [(VSAccountInfoViewController *)&v4 dealloc];
}

- (void)setIdentityProvider:(id)provider
{
  if (self->_identityProvider != provider)
  {
    [(VSAccountInfoViewController *)self _setIdentityProvider:?];
  }
}

- (void)_setIdentityProvider:(id)provider
{
  providerCopy = provider;
  objc_storeStrong(&self->_identityProvider, provider);
  facade = [(VSAccountInfoViewController *)self facade];
  [facade setIdentityProvider:providerCopy];

  displayName = [providerCopy displayName];
  forceUnwrapObject = [displayName forceUnwrapObject];

  if (![forceUnwrapObject length])
  {
    account = [(VSAccountInfoViewController *)self account];
    optionalIdentityProviderDisplayName = [account optionalIdentityProviderDisplayName];
    forceUnwrapObject2 = [optionalIdentityProviderDisplayName forceUnwrapObject];

    forceUnwrapObject = forceUnwrapObject2;
  }

  [(VSAccountInfoViewController *)self setTitle:forceUnwrapObject];
  if (providerCopy)
  {
    stateMachine = [(VSAccountInfoViewController *)self stateMachine];
    [stateMachine enqueueEvent:@"LoadProvider"];

    [(VSAccountInfoViewController *)self showMVPDIfNeeded];
  }
}

- (void)enqueueEvent:(id)event
{
  eventCopy = event;
  stateMachine = [(VSAccountInfoViewController *)self stateMachine];
  v6 = [stateMachine enqueueEvent:eventCopy];

  if ((v6 & 1) == 0)
  {
    [(VSAccountInfoViewController *)self reloadSpecifiers];

    [(VSAccountInfoViewController *)self showMVPDIfNeeded];
  }
}

- (void)_aboutPrivacyLinkTapped:(id)tapped
{
  onboardingInfoCenter = [(VSAccountInfoViewController *)self onboardingInfoCenter];
  [onboardingInfoCenter presentDetailsFromViewController:self];
}

- (void)_accountUsernameButtonTapped:(id)tapped
{
  delegate = [(VSAccountInfoViewController *)self delegate];
  account = [(VSAccountInfoViewController *)self account];
  identityProvider = [(VSAccountInfoViewController *)self identityProvider];
  [delegate accountInfoViewController:self didSelectEditAccountForAccount:account identityProvider:identityProvider];
}

- (void)_seeMoreAppsLinkButtonTapped:(id)tapped
{
  [VSMetricsManagerObjC recordClickEventWithPage:VSMetricPageSettingsAccountInfo pageType:VSMetricPageTypeSettings target:VSMetricClickTargetFindMoreApps];
  delegate = [(VSAccountInfoViewController *)self delegate];
  [delegate accountInfoViewControllerWantsMoreApps:self];
}

- (void)showMVPDIfNeeded
{
  delegate = [(VSAccountInfoViewController *)self delegate];
  if ([delegate accountInfoViewControllerShouldShowMVPDAppInstallPrompt:self])
  {
    facade = [(VSAccountInfoViewController *)self facade];
    shouldShowMVPDAppInstallPrompt = [facade shouldShowMVPDAppInstallPrompt];

    if (shouldShowMVPDAppInstallPrompt)
    {
      facade2 = [(VSAccountInfoViewController *)self facade];
      [facade2 presentMVPDAppInstallPromptFromViewController:self animated:1 completion:0];

      [delegate accountInfoViewControllerDidShowMVPDAppInstallPrompt];
    }
  }
}

- (void)_appsDidChange:(id)change
{
  changeCopy = change;
  facade = [(VSAccountInfoViewController *)self facade];
  appSections = [facade appSections];
  v7 = [appSections objectForKeyedSubscript:@"subscribed"];

  facade2 = [(VSAccountInfoViewController *)self facade];
  appSections2 = [facade2 appSections];
  v10 = [appSections2 objectForKeyedSubscript:@"available"];

  facade3 = [(VSAccountInfoViewController *)self facade];
  appSections3 = [facade3 appSections];
  v13 = [appSections3 objectForKeyedSubscript:@"upgrade"];

  if (v7 || v13 || v10)
  {
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2458;
    v14[3] = &unk_186E8;
    v14[4] = self;
    [(VSAccountInfoViewController *)self prefetchLockupRequestsWithCompletionBlock:v14];
    objc_destroyWeak(&location);
  }
}

- (id)createLockupRequests
{
  v3 = objc_alloc_init(NSMutableArray);
  facade = [(VSAccountInfoViewController *)self facade];
  appSections = [facade appSections];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = appSections;
  v19 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v18 = *v25;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v6);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = [v6 objectForKeyedSubscript:{v8, v18}];
        v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(v9);
              }

              adamID = [*(*(&v20 + 1) + 8 * j) adamID];
              v15 = [ASCLockupRequest tvProviderLockupRequestWithAdamID:adamID];
              [v3 addObject:v15];
            }

            v11 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }
      }

      v19 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }

  v16 = [v3 copy];

  return v16;
}

- (void)prefetchLockupRequestsWithCompletionBlock:(id)block
{
  blockCopy = block;
  group = [(VSAccountInfoViewController *)self group];
  createLockupRequests = [(VSAccountInfoViewController *)self createLockupRequests];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_27A8;
  v8[3] = &unk_18710;
  v9 = blockCopy;
  v7 = blockCopy;
  [group _cacheLockupsWithRequests:createLockupRequests withCompletionBlock:v8];
}

- (void)transitionToLoadedproviderState
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2980;
  block[3] = &unk_18738;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)transitionToLoadedproviderandappsState
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2AAC;
  block[3] = &unk_18738;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)createHeaderSpecifier
{
  v3 = +[PSSpecifier emptyGroupSpecifier];
  [v3 setIdentifier:@"Header"];
  [v3 setProperty:@"VSHeader" forKey:PSIDKey];
  v4 = +[NSBundle vs_frameworkBundle];
  v5 = [v4 localizedStringForKey:@"AUTHENTICATED_SETTINGS_HEADER_FORMAT" value:0 table:0];

  onboardingInfoCenter = [(VSAccountInfoViewController *)self onboardingInfoCenter];
  localizedButtonTitle = [onboardingInfoCenter localizedButtonTitle];

  account = [(VSAccountInfoViewController *)self account];
  identityProviderDisplayName = [account identityProviderDisplayName];

  v10 = [NSString stringWithFormat:v5, identityProviderDisplayName];
  v11 = [NSString stringWithFormat:@"%@ %@", v10, localizedButtonTitle];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v3 setProperty:v13 forKey:PSFooterCellClassGroupKey];

  [v3 setProperty:v11 forKey:PSFooterHyperlinkViewTitleKey];
  v19.location = [v11 rangeOfString:localizedButtonTitle];
  v14 = NSStringFromRange(v19);
  [v3 setProperty:v14 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v15 = [NSValue valueWithNonretainedObject:self];
  [v3 setProperty:v15 forKey:PSFooterHyperlinkViewTargetKey];

  v16 = NSStringFromSelector("_aboutPrivacyLinkTapped:");
  [v3 setProperty:v16 forKey:PSFooterHyperlinkViewActionKey];

  return v3;
}

- (id)createLoadingTitleSpecifier
{
  v2 = VSAppSettingsSectionLocalizedTitle();
  v3 = [PSSpecifier groupSpecifierWithName:v2];
  [v3 setIdentifier:@"LoadingTitle"];

  return v3;
}

- (id)loadingTitleSpecifier
{
  v3 = [(VSAccountInfoViewController *)self specifierForID:@"LoadingTitle"];
  v4 = v3;
  if (v3)
  {
    createLoadingTitleSpecifier = v3;
  }

  else
  {
    createLoadingTitleSpecifier = [(VSAccountInfoViewController *)self createLoadingTitleSpecifier];
  }

  v6 = createLoadingTitleSpecifier;

  return v6;
}

- (id)createLoadingSpecifier
{
  v2 = [PSSpecifier preferenceSpecifierNamed:&stru_19060 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v2 setIdentifier:@"LoadingSpecifier"];
  [v2 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];

  return v2;
}

- (id)loadingSpecifier
{
  v3 = [(VSAccountInfoViewController *)self specifierForID:@"LoadingSpecifier"];
  v4 = v3;
  if (v3)
  {
    createLoadingSpecifier = v3;
  }

  else
  {
    createLoadingSpecifier = [(VSAccountInfoViewController *)self createLoadingSpecifier];
  }

  v6 = createLoadingSpecifier;

  return v6;
}

- (id)createDecidedSpecifiers
{
  v3 = +[NSMutableArray array];
  facade = [(VSAccountInfoViewController *)self facade];
  appSections = [facade appSections];
  v6 = [appSections objectForKeyedSubscript:@"decided"];

  if ([v6 count])
  {
    v16 = VSAppSettingsSectionLocalizedTitle();
    v7 = [PSSpecifier groupSpecifierWithName:?];
    [v3 addObject:v7];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(VSAccountInfoViewController *)self _specifierForAppSettingsViewModel:*(*(&v17 + 1) + 8 * i) modifier:@"decided"];
          [v3 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v14 = [v3 copy];

  return v14;
}

- (id)createAppSpecifiers
{
  v3 = +[NSMutableArray array];
  facade = [(VSAccountInfoViewController *)self facade];
  appSections = [facade appSections];
  v6 = [appSections objectForKeyedSubscript:@"available"];

  facade2 = [(VSAccountInfoViewController *)self facade];
  appSections2 = [facade2 appSections];
  v9 = [appSections2 objectForKeyedSubscript:@"subscribed"];

  v36 = v9;
  v37 = v6;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  if (v6)
  {
    v11 = @"available";
  }

  else
  {
    v11 = @"subscribed";
  }

  v12 = v10;
  v13 = v11;
  if ([v12 count])
  {
    v14 = VSAppSettingsSectionLocalizedTitle();
    v15 = [PSSpecifier groupSpecifierWithName:v14];
    [v3 addObject:v15];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v16 = v12;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v43;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v43 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [(VSAccountInfoViewController *)self _specifierForAppSettingsViewModel:*(*(&v42 + 1) + 8 * i) modifier:v13];
          [v3 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v19);
    }

    v12 = v16;
  }

  facade3 = [(VSAccountInfoViewController *)self facade];
  appSections3 = [facade3 appSections];
  v25 = [appSections3 objectForKeyedSubscript:@"upgrade"];

  if ([v25 count])
  {
    v35 = v12;
    v34 = VSAppSettingsSectionLocalizedTitle();
    v26 = [PSSpecifier groupSpecifierWithName:?];
    [v3 addObject:v26];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = v25;
    v28 = [v27 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v39;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v39 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [(VSAccountInfoViewController *)self _specifierForAppSettingsViewModel:*(*(&v38 + 1) + 8 * j) modifier:@"upgrade"];
          [v3 addObject:v32];
        }

        v29 = [v27 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v29);
    }

    v12 = v35;
  }

  return v3;
}

- (id)createAccountFooterSpecifier
{
  v3 = [PSSpecifier groupSpecifierWithID:@"accountGroup"];
  account = [(VSAccountInfoViewController *)self account];
  identityProviderDisplayName = [account identityProviderDisplayName];

  identityProvider = [(VSAccountInfoViewController *)self identityProvider];
  v7 = [identityProvider isFullySupportedForRequestsExpectingAuthenticationSchemes:0];

  if (v7)
  {
    account2 = [(VSAccountInfoViewController *)self account];
    username = [account2 username];

    account3 = [(VSAccountInfoViewController *)self account];
    isSynchronizable = [account3 isSynchronizable];

    v12 = +[NSBundle vs_frameworkBundle];
    account4 = [v12 localizedStringForKey:@"SETTINGS_FOOTER_SYNCHRONIZABLE_NOTE" value:0 table:0];

    if ((isSynchronizable & 1) == 0)
    {
      v14 = +[NSBundle vs_frameworkBundle];
      v15 = [v14 localizedStringForKey:@"SETTINGS_FOOTER_NOT_SYNCHRONIZABLE_NOTE_FORMAT" value:0 table:0];

      account4 = v15;
    }

    identityProviderDisplayName2 = [NSString stringWithFormat:account4, identityProviderDisplayName];
    v17 = [username length];
    v18 = +[NSBundle vs_frameworkBundle];
    v19 = v18;
    if (v17)
    {
      account5 = [v18 localizedStringForKey:@"SETTINGS_CHANGE_PROVIDER_FOOTER_FORMAT" value:0 table:0];

      [NSString stringWithFormat:account5, identityProviderDisplayName, username, identityProviderDisplayName2];
    }

    else
    {
      account5 = [v18 localizedStringForKey:@"SETTINGS_CHANGE_PROVIDER_ANONYMOUS_FOOTER_FORMAT" value:0 table:0];

      [NSString stringWithFormat:account5, identityProviderDisplayName, identityProviderDisplayName2, v25];
    }
    v23 = ;
  }

  else
  {
    v21 = +[NSBundle vs_frameworkBundle];
    username = [v21 localizedStringForKey:@"SETTINGS_CHANGE_PROVIDER_UNSUPPORTED_FOOTER_FORMAT" value:0 table:0];

    account4 = [(VSAccountInfoViewController *)self account];
    identityProviderDisplayName2 = [account4 identityProviderDisplayName];
    account5 = [(VSAccountInfoViewController *)self account];
    identityProviderDisplayName3 = [account5 identityProviderDisplayName];
    v23 = [NSString stringWithFormat:username, identityProviderDisplayName2, identityProviderDisplayName3];
  }

  [v3 setProperty:v23 forKey:PSFooterTextGroupKey];

  return v3;
}

- (id)createSignOutButtonSpecifier
{
  identityProvider = [(VSAccountInfoViewController *)self identityProvider];
  v4 = [identityProvider isFullySupportedForRequestsExpectingAuthenticationSchemes:0];

  v5 = +[NSBundle vs_frameworkBundle];
  v6 = v5;
  if (v4)
  {
    v7 = @"SIGN_OUT_BUTTON_TITLE";
  }

  else
  {
    v7 = @"SIGN_OUT_BUTTON_NON_PARTICIPATING_TITLE";
  }

  v8 = [v5 localizedStringForKey:v7 value:0 table:0];

  v9 = [PSSpecifier deleteButtonSpecifierWithName:v8 target:self action:"_accountUsernameButtonTapped:"];
  [v9 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v9 setProperty:@"AccountUsername" forKey:PSIDKey];

  return v9;
}

- (void)disableAccountSignOutButton
{
  specifiers = [(VSAccountInfoViewController *)self specifiers];
  v3 = [specifiers specifierForID:@"AccountUsername"];

  [v3 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
}

- (id)_specifierForAppSettingsViewModel:(id)model modifier:(id)modifier
{
  modelCopy = model;
  modifierCopy = modifier;
  displayName = [modelCopy displayName];
  if ([displayName length])
  {
    v9 = +[VSAppInstallCell specifier];
    bundleID = [modelCopy bundleID];
    v11 = [NSString stringWithFormat:@"app:%@:%@", modifierCopy, bundleID];
    [v9 setProperty:v11 forKey:PSIDKey];

    group = [(VSAccountInfoViewController *)self group];
    [v9 setProperty:group forKey:@"VSAppInstallCellLockupGroupKey"];

    v13 = [ASCAdamID alloc];
    adamID = [modelCopy adamID];
    v15 = [v13 initWithStringValue:adamID];

    cachedLockupRequests = [(VSAccountInfoViewController *)self cachedLockupRequests];
    v17 = [cachedLockupRequests objectForKeyedSubscript:v15];

    [v9 setProperty:v17 forKey:@"VSAppInstallCellCachedRequestKey"];
    [v9 setProperty:modelCopy forKey:@"VSAppSettingsViewModel"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_revokeVoucher:(id)voucher
{
  v3 = [voucher propertyForKey:@"VSAppSettingsViewModel"];
  [v3 revokeVoucher];
}

- (id)_isAppAllowedAccountAccessWithSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:@"VSAppSettingsViewModel"];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 privacyState] == &dword_0 + 1);

  return v4;
}

- (void)_setAppAllowedAccess:(id)access withSpecifier:(id)specifier
{
  accessCopy = access;
  v5 = [specifier propertyForKey:@"VSAppSettingsViewModel"];
  privacyState = [v5 privacyState];
  if (privacyState == &dword_0 + 2)
  {
    if ([accessCopy BOOLValue])
    {
      goto LABEL_8;
    }

    v7 = 1;
    goto LABEL_7;
  }

  if (privacyState == &dword_0 + 1 && ([accessCopy BOOLValue] & 1) != 0)
  {
    v7 = 0;
LABEL_7:
    [v5 setAccessGranted:v7];
  }

LABEL_8:
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  stateMachine = [(VSAccountInfoViewController *)self stateMachine];
  currentState = [stateMachine currentState];
  forceUnwrapObject = [currentState forceUnwrapObject];

  if ([forceUnwrapObject isEqualToString:@"Empty"])
  {
    createHeaderSpecifier = [(VSAccountInfoViewController *)self createHeaderSpecifier];
    [v3 addObject:createHeaderSpecifier];

    createDecidedSpecifiers = [(VSAccountInfoViewController *)self createDecidedSpecifiers];
    [v3 addObjectsFromArray:createDecidedSpecifiers];

    createLoadingTitleSpecifier = [(VSAccountInfoViewController *)self createLoadingTitleSpecifier];
    [v3 addObject:createLoadingTitleSpecifier];

    createLoadingSpecifier = [(VSAccountInfoViewController *)self createLoadingSpecifier];
LABEL_8:
    v18 = createLoadingSpecifier;
    [v3 addObject:createLoadingSpecifier];

    goto LABEL_9;
  }

  if ([forceUnwrapObject isEqualToString:@"LoadedProvider"])
  {
    createHeaderSpecifier2 = [(VSAccountInfoViewController *)self createHeaderSpecifier];
    [v3 addObject:createHeaderSpecifier2];

    createDecidedSpecifiers2 = [(VSAccountInfoViewController *)self createDecidedSpecifiers];
    [v3 addObjectsFromArray:createDecidedSpecifiers2];

    createLoadingTitleSpecifier2 = [(VSAccountInfoViewController *)self createLoadingTitleSpecifier];
    [v3 addObject:createLoadingTitleSpecifier2];

    createLoadingSpecifier2 = [(VSAccountInfoViewController *)self createLoadingSpecifier];
    [v3 addObject:createLoadingSpecifier2];
LABEL_7:

    createAccountFooterSpecifier = [(VSAccountInfoViewController *)self createAccountFooterSpecifier];
    [v3 addObject:createAccountFooterSpecifier];

    createLoadingSpecifier = [(VSAccountInfoViewController *)self createSignOutButtonSpecifier];
    goto LABEL_8;
  }

  if ([forceUnwrapObject isEqualToString:@"LoadedProviderAndApps"])
  {
    createHeaderSpecifier3 = [(VSAccountInfoViewController *)self createHeaderSpecifier];
    [v3 addObject:createHeaderSpecifier3];

    createDecidedSpecifiers3 = [(VSAccountInfoViewController *)self createDecidedSpecifiers];
    [v3 addObjectsFromArray:createDecidedSpecifiers3];

    createLoadingSpecifier2 = [(VSAccountInfoViewController *)self createAppSpecifiers];
    [v3 addObjectsFromArray:createLoadingSpecifier2];
    goto LABEL_7;
  }

LABEL_9:
  v19 = [v3 copy];
  v20 = OBJC_IVAR___PSListController__specifiers;
  v21 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers] = v19;

  v22 = *&self->PSEditableListController_opaque[v20];
  v23 = v22;

  return v22;
}

- (void)handleDestination:(id)destination completion:(id)completion
{
  completionCopy = completion;
  destinationCopy = destination;
  identityProvider = [(VSAccountInfoViewController *)self identityProvider];
  v9 = [identityProvider isFullySupportedForRequestsExpectingAuthenticationSchemes:0];

  v10 = [destinationCopy isEqual:@"signOut"];
  if (v9)
  {
    if (v10)
    {
      [(VSAccountInfoViewController *)self handleSignOutSupportedTVProviderDestinationWithCompletion:completionCopy];
      goto LABEL_9;
    }
  }

  else if (v10)
  {
    [(VSAccountInfoViewController *)self handleSignOutUnsupportedTVProviderDestinationWithCompletion:completionCopy];
    goto LABEL_9;
  }

  v11 = VSDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = v9;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Unhandled Destination for Supported Provider Status: %d", v13, 8u);
  }

  v12 = VSDestinationError();
  completionCopy[2](completionCopy, 0, v12);

LABEL_9:
}

- (void)handleSignOutSupportedTVProviderDestinationWithCompletion:(id)completion
{
  completionCopy = completion;
  identityProvider = [(VSAccountInfoViewController *)self identityProvider];
  v6 = [identityProvider isFullySupportedForRequestsExpectingAuthenticationSchemes:0];

  if (v6)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_4140;
    v8[3] = &unk_18760;
    v8[4] = self;
    v9 = completionCopy;
    [(VSAccountInfoViewController *)self scrollToSignOutButtonWithCompletion:v8];
  }

  else
  {
    v7 = VSDestinationError();
    (*(completionCopy + 2))(completionCopy, 0, v7);
  }
}

- (void)handleSignOutUnsupportedTVProviderDestinationWithCompletion:(id)completion
{
  completionCopy = completion;
  identityProvider = [(VSAccountInfoViewController *)self identityProvider];
  v6 = [identityProvider isFullySupportedForRequestsExpectingAuthenticationSchemes:0];

  if (v6)
  {
    v7 = VSDestinationError();
    completionCopy[2](completionCopy, 0, v7);
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_42D0;
    v8[3] = &unk_18760;
    v8[4] = self;
    v9 = completionCopy;
    [(VSAccountInfoViewController *)self scrollToSignOutButtonWithCompletion:v8];
  }
}

- (void)scrollToSignOutButtonWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [(VSAccountInfoViewController *)self specifierForID:@"AccountUsername"];
  v5 = PSEnabledKey;
  v6 = [v4 propertyForKey:PSEnabledKey];
  if (v6 && (v7 = v6, [v4 propertyForKey:v5], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLValue"), v8, v7, (v9 & 1) == 0))
  {
    v10 = VSDestinationError();
    completionCopy[2](completionCopy, 0, v10);
  }

  else
  {
    [(VSAccountInfoViewController *)self scrollToSpecifier:v4 withCompletion:completionCopy];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  table = [(VSAccountInfoViewController *)self table];
  [table vs_scrollViewDidEndScrollingAnimation];
}

- (void)scrollToSpecifier:(id)specifier withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = [(VSAccountInfoViewController *)self indexPathForSpecifier:specifier];
  if (v7)
  {
    table = [(VSAccountInfoViewController *)self table];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_4590;
    v10[3] = &unk_18788;
    v11 = completionCopy;
    [table vs_scrollToIndexPath:v7 atScrollPosition:1 animated:1 withCompletion:v10];
  }

  else
  {
    v9 = VSDestinationError();
    (*(completionCopy + 2))(completionCopy, 0, v9);
  }
}

- (VSAccountInfoViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end