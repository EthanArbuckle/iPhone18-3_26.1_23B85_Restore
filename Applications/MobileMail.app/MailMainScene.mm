@interface MailMainScene
+ (NSArray)menuCommands;
+ (id)log;
- (BOOL)_isAccountCreationRestricted;
- (BOOL)_isDisplayingAccountSetup;
- (BOOL)_isMailboxListVisible;
- (BOOL)_presentAccountRestrictionAlertIfNecessary;
- (BOOL)_presentInitialSetupControllersIfNecessary;
- (BOOL)_sheetDropInteraction:(id)interaction canHandleUserActivityOfType:(id)type;
- (BOOL)_shouldPresentMailTrackingProtectionOnboarding;
- (BOOL)_shouldPresentOnboarding;
- (BOOL)_shouldPresentWelcomeOnboarding;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)displayMessage:(id)message;
- (BOOL)displayMessage:(id)message fromUserActivityRouter:(id)router;
- (BOOL)isComposeWindowActive;
- (BOOL)isOpenMailboxQuicklyViewVisible;
- (BOOL)presentAccountSetupControllerIfNecessary;
- (BOOL)presentNextOnboardingIfNecessary;
- (BOOL)presentOnboardingIfNecessary;
- (MFMailPopoverManager)popoverManager;
- (MailErrorHandler)errorHandler;
- (MessageListViewController)messageListViewController;
- (NSSet)selectedAccounts;
- (NSSet)statusMailboxes;
- (NSSet)suppressionMailboxes;
- (NSSet)visibleMailboxes;
- (UIViewController)openMailboxQuicklyViewController;
- (_TtC10MobileMail21AppStoreReviewManager)appStoreReviewManager;
- (id)_createAppleIntelligenceWelcomeOnboardingController;
- (id)_createMailTrackingProtectionOnboardingController;
- (id)_createURLRoutes;
- (id)_defaultAccountsToSelect;
- (id)_nextOnboardingController;
- (id)_sheetDropInteraction:(id)interaction presentingViewControllerForDroppingUserActivityOfType:(id)type;
- (id)_sheetDropInteraction:(id)interaction viewControllerForDroppingUserActivityOfType:(id)type;
- (id)_statusStringForCNAuthorizationStatus:(int64_t)status;
- (id)activeViewController;
- (id)alertOverlayControllerForActivityRouter:(id)router;
- (id)composeAccountIsDefault:(BOOL *)default;
- (id)composeControllerForCompositionContext:(id)context;
- (id)composeControllerForCompositionContext:(id)context forActivityRouter:(id)router;
- (id)extendedLaunchTracker;
- (id)mailboxPickerControllerForActivityRouter:(id)router;
- (id)messageListViewControllerForActivityRouter:(id)router;
- (id)splitViewControllerForActivityRouter:(id)router;
- (id)stateRestorationActivityForMailScene;
- (unint64_t)urlRouter:(id)router decidePolicyForRoutingRequest:(id)request;
- (void)_beginRestoringPreviousDraftIfPossible;
- (void)_cleanUpDeprecatedOnboarding;
- (void)_composeCommandInvoked:(id)invoked;
- (void)_dismissAccountSetupControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)_dismissAnyModalViewControllerOrPopoverAnimated:(BOOL)animated;
- (void)_handleAccountsChanged:(id)changed;
- (void)_mailAppleIntelligenceWelcomeViewControllerDidFinish:(id)finish;
- (void)_mailTrackingProtectionViewControllerDidFinish:(id)finish;
- (void)_openMailboxQuicklyInvoked:(id)invoked;
- (void)_prepareForAppleIntelligenceOnboardingIfNecessary;
- (void)_presentAccountSetupController;
- (void)_presentOnboarding;
- (void)_requestContactStoreAccessIfNeeded;
- (void)_requestUserNotificationAuthorization;
- (void)_resetSelectedAccounts;
- (void)_saveCompositionAsDraft:(id)draft;
- (void)_sendOnboardingAnalyticsDidShowOnboarding:(BOOL)onboarding wasPreviouslyBlockingRemoteContent:(BOOL)content;
- (void)_sendOnboardingAnalyticsDidShowOnboarding:(BOOL)onboarding wasPreviouslyBlockingRemoteContent:(BOOL)content optedIn:(BOOL)in;
- (void)_setupMailViewHierarchyWithState:(id)state;
- (void)_sheetDropInteraction:(id)interaction handleUserActivity:(id)activity forPresentedViewController:(id)controller;
- (void)_showComposeWithContext:(id)context animated:(BOOL)animated initialTitle:(id)title presentationSource:(id)source draftOriginalMessageID:(id)d completionBlock:(id)block;
- (void)_updateNavigationBarTitles;
- (void)accountSetupControllerDidChange:(id)change finished:(BOOL)finished;
- (void)closeOpenMailboxQuicklyViewController;
- (void)composeButtonLongPressed:(id)pressed;
- (void)composeButtonPressed:(id)pressed;
- (void)didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)dismissComposeController:(id)controller forUserActivityRouter:(id)router;
- (void)dismissComposeViewController:(id)controller animated:(BOOL)animated afterSending:(BOOL)sending;
- (void)displayError:(id)error forAccount:(id)account mode:(int64_t)mode;
- (void)displayMessageList;
- (void)dockContainer:(id)container didRestoreViewController:(id)controller;
- (void)dockContainer:(id)container dockedViewControllerWithIdentifier:(id)identifier;
- (void)dockContainer:(id)container dockedViewWasTornOffWithIdentifier:(id)identifier;
- (void)dockContainer:(id)container isVisible:(BOOL)visible;
- (void)hasDelayedMessagesDidChange:(BOOL)change;
- (void)mailComposeDeliveryController:(id)controller didMoveCancelledMessageToDrafts:(id)drafts draftMailboxObjectID:(id)d;
- (void)mailComposeDeliveryControllerDidAttemptToSaveDraft:(id)draft account:(id)account result:(unint64_t)result;
- (void)mailComposeDeliveryControllerDidAttemptToSend:(id)send outgoingMessageDelivery:(id)delivery result:(id)result;
- (void)mailComposeDeliveryControllerWillAttemptToSend:(id)send;
- (void)mailSceneContinueUserActivity:(id)activity;
- (void)mailSceneDidBecomeActive;
- (void)mailSceneDidConnectWithOptions:(id)options;
- (void)mailSceneDidDisconnect;
- (void)mailSceneDidEnterBackground;
- (void)mailSceneDidFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)mailScenePerformActionForShortcutItem:(id)item completionHandler:(id)handler;
- (void)mailSceneWillContinueUserActivityWithType:(id)type;
- (void)mailSceneWillEnterForeground;
- (void)mailSceneWillResignActive;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)openMailboxQuicklyDidSelectMailboxWithIdentifier:(id)identifier;
- (void)openURL:(id)l fromUserActivityRouter:(id)router completionHandler:(id)handler;
- (void)presentComposeController:(id)controller forUserActivityRouter:(id)router;
- (void)refreshOpenMailboxQuicklyItems;
- (void)resumeCompositionOfDraft:(id)draft legacyDraft:(id)legacyDraft;
- (void)selectDefaultMailbox;
- (void)setSelectedAccounts:(id)accounts;
@end

@implementation MailMainScene

- (id)extendedLaunchTracker
{
  v2 = +[UIApplication sharedApplication];
  extendedLaunchTracker = [v2 extendedLaunchTracker];

  return extendedLaunchTracker;
}

- (BOOL)_shouldPresentOnboarding
{
  v3 = +[UIApplication sharedApplication];
  if (([v3 launchedToTest] & 1) != 0 || objc_msgSend(v3, "isRunningTest"))
  {
    v4 = +[MailMainScene log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Onboarding not presented -- test is running", v7, 2u);
    }

    _shouldPresentMailTrackingProtectionOnboarding = 0;
  }

  else if ([(MailMainScene *)self _shouldPresentWelcomeOnboarding])
  {
    _shouldPresentMailTrackingProtectionOnboarding = 1;
  }

  else
  {
    _shouldPresentMailTrackingProtectionOnboarding = [(MailMainScene *)self _shouldPresentMailTrackingProtectionOnboarding];
  }

  return _shouldPresentMailTrackingProtectionOnboarding;
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E7F8;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD0C0 != -1)
  {
    dispatch_once(&qword_1006DD0C0, block);
  }

  v2 = qword_1006DD0B8;

  return v2;
}

- (void)_beginRestoringPreviousDraftIfPossible
{
  session = [(MailMainScene *)self session];
  mf_activeDraft = [session mf_activeDraft];

  identifier = [mf_activeDraft identifier];
  originalMessageIdentifier = [mf_activeDraft originalMessageIdentifier];
  if (identifier)
  {
    v7 = +[MailMainScene log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [mf_activeDraft ef_publicDescription];
      *buf = 138543362;
      v32 = ef_publicDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Beginning validation of prevously presented draft: %{public}@", buf, 0xCu);
    }

    v9 = +[EFPromise promise];
    v10 = +[EFScheduler globalAsyncScheduler];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100114E5C;
    v27[3] = &unk_10064C6B0;
    v28 = identifier;
    v11 = mf_activeDraft;
    v29 = v11;
    v12 = v9;
    v30 = v12;
    [v10 performBlock:v27];

    future = [v12 future];
    objc_initWeak(buf, self);
    v14 = +[EFScheduler mainThreadScheduler];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100115008;
    v23[3] = &unk_100650898;
    v24 = v11;
    selfCopy = self;
    v26 = originalMessageIdentifier;
    [future onScheduler:v14 addSuccessBlock:v23];

    v15 = +[EFScheduler mainThreadScheduler];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001152E0;
    v21[3] = &unk_10064DEA8;
    objc_copyWeak(&v22, buf);
    [future onScheduler:v15 addFailureBlock:v21];

    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10011535C;
    v19 = &unk_10064C838;
    objc_copyWeak(&v20, buf);
    [future always:&v16];
    [(MailMainScene *)self setDraftRestorationFuture:future, v16, v17, v18, v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);

    objc_destroyWeak(buf);
  }
}

- (void)mailSceneWillEnterForeground
{
  v11.receiver = self;
  v11.super_class = MailMainScene;
  [(MailScene *)&v11 mailSceneWillEnterForeground];
  errorHandler = [(MailMainScene *)self errorHandler];
  [errorHandler reset];

  if ([(MailMainScene *)self shouldSelectDefaultMailboxOnResume])
  {
    [UIView setAnimationsEnabled:0];
    [(MailMainScene *)self setShouldSelectDefaultMailboxOnResume:0];
    [(MailMainScene *)self selectDefaultMailbox];
    [UIView setAnimationsEnabled:1];
  }

  v4 = +[EFScheduler mainThreadScheduler];
  v5 = [v4 afterDelay:&stru_100650960 performBlock:1.0];

  if ([(MailMainScene *)self appleIntelligenceOnboardingState]== 2)
  {
    v6 = +[MUIAppleIntelligenceOnboardingViewController currentAppleIntelligenceOnboardingState];
    [(MailMainScene *)self setAppleIntelligenceOnboardingState:v6];
    if (v6 == 3)
    {
      onboardingNavigationController = [(MailMainScene *)self onboardingNavigationController];
      if (onboardingNavigationController)
      {
      }

      else
      {
        mailAppleIntelligenceWelcomeOnboardingViewController = [(MailMainScene *)self mailAppleIntelligenceWelcomeOnboardingViewController];

        if (!mailAppleIntelligenceWelcomeOnboardingViewController)
        {
          v9 = +[MailMainScene log];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v10 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Will enter foreground and attempt to display Apple Intelligence Onboarding.", v10, 2u);
          }

          [(MailMainScene *)self presentNextOnboardingIfNecessary];
        }
      }
    }
  }
}

- (MailErrorHandler)errorHandler
{
  errorHandler = self->_errorHandler;
  if (!errorHandler)
  {
    v4 = objc_alloc_init(MailErrorHandler);
    v5 = self->_errorHandler;
    self->_errorHandler = v4;

    errorHandler = [(MailMainScene *)self errorHandler];
    [errorHandler setPresentationDelegate:self];

    errorHandler = self->_errorHandler;
  }

  return errorHandler;
}

- (void)selectDefaultMailbox
{
  mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
  _shouldPresentOnboarding = [(MailMainScene *)self _shouldPresentOnboarding];
  _defaultAccountsToSelect = [(MailMainScene *)self _defaultAccountsToSelect];
  if ([_defaultAccountsToSelect count])
  {
    activationState = [(MailMainScene *)self activationState];
    if (activationState != 2)
    {
      [(MailMainScene *)self _requestContactStoreAccessIfNeeded];
    }

    accountSetupController = [(MailMainScene *)self accountSetupController];
    if (accountSetupController)
    {
      v7 = ![(MailMainScene *)self accountSetupFinished];
      if (activationState == 2)
      {
        LOBYTE(v7) = 0;
      }

      if ((v7 & 1) == 0)
      {

LABEL_15:
        accountSetupController2 = [(MailMainScene *)self accountSetupController];
        [(MailMainScene *)self accountSetupControllerDidChange:accountSetupController2 finished:[(MailMainScene *)self accountSetupFinished]];

LABEL_17:
        if (activationState != 2 || (-[MailMainScene favoritesManager](self, "favoritesManager"), v12 = objc_claimAutoreleasedReturnValue(), [v12 lastSelectedItem], v13 = objc_claimAutoreleasedReturnValue(), v12, !v13) || (-[MailMainScene favoritesManager](self, "favoritesManager"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "setLastSelectedItem:", 0), v14, v15 = objc_msgSend(mailboxPickerController, "selectFavoriteItem:animated:", v13, 0), v13, (v15 & 1) == 0))
        {
          if ([_defaultAccountsToSelect count] < 2)
          {
            anyObject = [_defaultAccountsToSelect anyObject];
            favoriteItemSelectionTarget = [mailboxPickerController favoriteItemSelectionTarget];
            primaryMailboxUid = [anyObject primaryMailboxUid];
            [favoriteItemSelectionTarget selectMailbox:primaryMailboxUid item:0 animated:0];
          }

          else
          {
            anyObject = [mailboxPickerController favoriteItemSelectionTarget];
            [anyObject selectCombinedMailboxWithType:7 item:0 animated:0];
          }
        }

        goto LABEL_24;
      }

      accountSetupController3 = [(MailMainScene *)self accountSetupController];
      accountSetupInProgress = [accountSetupController3 accountSetupInProgress];

      if ((accountSetupInProgress & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (![(MailMainScene *)self _isDisplayingAccountSetup])
    {
      if (_shouldPresentOnboarding)
      {
        [(MailMainScene *)self presentOnboardingIfNecessary];
      }

      else
      {
        [(MailMainScene *)self _requestUserNotificationAuthorization];
      }
    }

    goto LABEL_17;
  }

  if (![(MailMainScene *)self _isDisplayingAccountSetup])
  {
    favoriteItemSelectionTarget2 = [mailboxPickerController favoriteItemSelectionTarget];
    [favoriteItemSelectionTarget2 selectAccount:0 item:0 indexPath:0 animated:0];

    [(MailMainScene *)self _dismissAnyModalViewControllerOrPopoverAnimated:0];
    [(MailMainScene *)self _presentAccountSetupController];
  }

LABEL_24:
}

- (id)_defaultAccountsToSelect
{
  v3 = +[UIApplication sharedApplication];
  accountsProvider = [v3 accountsProvider];

  displayedAccounts = [accountsProvider displayedAccounts];
  if (![displayedAccounts count])
  {
    v8 = objc_alloc_init(NSSet);
    goto LABEL_12;
  }

  favoritesManager = [(MailMainScene *)self favoritesManager];
  lastSelectedItem = [favoritesManager lastSelectedItem];

  if (!lastSelectedItem)
  {
    goto LABEL_10;
  }

  if (([lastSelectedItem type] & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    account = [lastSelectedItem account];
    if (account)
    {
      account2 = [lastSelectedItem account];
      v11 = [displayedAccounts containsObject:account2];

      if (v11)
      {
        account3 = [lastSelectedItem account];
        v8 = [NSSet setWithObject:account3];

        if (v8)
        {
          goto LABEL_11;
        }
      }
    }

    goto LABEL_10;
  }

  v8 = displayedAccounts;
  if (!v8)
  {
LABEL_10:
    orderedAccounts = [accountsProvider orderedAccounts];
    firstObject = [orderedAccounts firstObject];
    v8 = [NSSet setWithObject:firstObject];
  }

LABEL_11:

LABEL_12:

  return v8;
}

- (void)_requestContactStoreAccessIfNeeded
{
  v3 = [CNContactStore authorizationStatusForEntityType:0];
  v4 = +[MailMainScene log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MailMainScene *)self _statusStringForCNAuthorizationStatus:v3];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Current contact store access status: %{public}@", &v8, 0xCu);
  }

  if (v3 == CNAuthorizationStatusNotDetermined)
  {
    if ([(MailMainScene *)self activationState]== 2)
    {
      [(MailMainScene *)self setShouldRequestContactAccess:1];
    }

    else
    {
      [(MailMainScene *)self setShouldRequestContactAccess:0];
      v6 = +[MailMainScene log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting Contact Store access", &v8, 2u);
      }

      v7 = objc_alloc_init(CNContactStore);
      [v7 requestAccessForEntityType:0 completionHandler:&stru_100650AF0];
    }
  }
}

- (BOOL)_isDisplayingAccountSetup
{
  accountSetupController = [(MailMainScene *)self accountSetupController];
  if (accountSetupController)
  {
    dockContainer = [(MailMainScene *)self dockContainer];
    presentedViewController = [dockContainer presentedViewController];
    accountSetupController2 = [(MailMainScene *)self accountSetupController];
    v7 = presentedViewController == accountSetupController2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_requestUserNotificationAuthorization
{
  if ([(MailMainScene *)self activationState]== 2)
  {
    [(MailMainScene *)self setShouldRequestUserNotificationAuthorization:1];
    v3 = MSUserNotificationsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Postponing authorization check.", buf, 2u);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v4 = +[UNUserNotificationCenter currentNotificationCenter];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100012E98;
    v5[3] = &unk_100650B40;
    objc_copyWeak(&v6, buf);
    [v4 getNotificationSettingsWithCompletionHandler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

- (NSSet)visibleMailboxes
{
  mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
  messageListViewController = [mailboxPickerController messageListViewController];
  mailboxes = [messageListViewController mailboxes];
  v5 = mailboxes;
  v6 = &__NSArray0__struct;
  if (mailboxes)
  {
    v6 = mailboxes;
  }

  v7 = v6;

  v8 = [NSSet setWithArray:v7];

  return v8;
}

- (NSSet)selectedAccounts
{
  selectedAccounts = self->_selectedAccounts;
  if (!selectedAccounts)
  {
    v4 = objc_alloc_init(NSSet);
    v5 = self->_selectedAccounts;
    self->_selectedAccounts = v4;

    selectedAccounts = self->_selectedAccounts;
  }

  return selectedAccounts;
}

- (NSSet)suppressionMailboxes
{
  mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
  messageListViewController = [mailboxPickerController messageListViewController];

  view = [messageListViewController view];
  window = [view window];

  if (window)
  {
    mailboxes = [messageListViewController mailboxes];
    v7 = mailboxes;
    v8 = &__NSArray0__struct;
    if (mailboxes)
    {
      v8 = mailboxes;
    }

    v9 = v8;

    v10 = [NSSet setWithArray:v9];
  }

  else
  {
    v10 = +[NSSet set];
  }

  return v10;
}

+ (NSArray)menuCommands
{
  v2 = qword_1006DD0C8;
  if (!qword_1006DD0C8)
  {
    v3 = objc_opt_new();
    v4 = +[EFDevice currentDevice];
    isPad = [v4 isPad];

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"TITLE_NEW_MESSAGE" value:&stru_100662A88 table:@"Main"];
    v8 = [MFMailMenuCommand shortcutWithInput:@"n" flags:0x100000 repeatable:1 menu:2 action:"_composeCommandInvoked:" title:v7 systemImageName:MFImageGlyphMenuBarNewMessage plist:0 position:&off_100674150];
    [v3 addObject:v8];

    if (_os_feature_enabled_impl())
    {
      v9 = _EFLocalizedString();
      v10 = MFImageGlyphMenuBarOpenMailboxQuickly;
      if (!isPad)
      {
        v10 = 0;
      }

      v11 = [MFMailMenuCommand shortcutWithInput:@"o" flags:1179648 repeatable:1 menu:14 action:"_openMailboxQuicklyInvoked:" title:v9 systemImageName:v10 plist:0];
      [v3 addObject:v11];
    }

    v12 = +[EFDevice currentDevice];
    isInternal = [v12 isInternal];

    if (isInternal)
    {
      v14 = [UIKeyCommand keyCommandWithInput:@"d" modifierFlags:1966080 action:"debugShortcutInvoked:"];
      [v14 setRepeatBehavior:2];
      v15 = _EFLocalizedString();
      [v14 setTitle:v15];

      if (isPad)
      {
        v16 = MFImageGlyphMenuBarDebugMenu;
      }

      else
      {
        v16 = 0;
      }

      v17 = [UIImage systemImageNamed:v16];
      [v14 setImage:v17];

      v18 = [MFMailMenuCommand shortcutWithCommand:v14 menu:0];
      [v3 addObject:v18];
    }

    v19 = [v3 copy];
    v20 = qword_1006DD0C8;
    qword_1006DD0C8 = v19;

    v2 = qword_1006DD0C8;
  }

  return v2;
}

- (void)mailSceneDidBecomeActive
{
  v10.receiver = self;
  v10.super_class = MailMainScene;
  [(MailScene *)&v10 mailSceneDidBecomeActive];
  v3 = +[UIApplication sharedApplication];
  accountsProvider = [v3 accountsProvider];
  displayedAccounts = [accountsProvider displayedAccounts];
  v6 = [displayedAccounts count];

  _shouldPresentOnboarding = [(MailMainScene *)self _shouldPresentOnboarding];
  v8 = 0;
  if (v6 && (_shouldPresentOnboarding & 1) == 0)
  {
    v8 = ![(MailMainScene *)self shouldDeferUserNotificationAuthorizationRequests];
  }

  if ([(MailMainScene *)self shouldRequestContactAccess])
  {
    [(MailMainScene *)self setShouldRequestContactAccess:0];
    [(MailMainScene *)self _requestContactStoreAccessIfNeeded];
  }

  if (([(MailMainScene *)self shouldRequestUserNotificationAuthorization]| v8))
  {
    [(MailMainScene *)self setShouldRequestUserNotificationAuthorization:0];
    [(MailMainScene *)self _requestUserNotificationAuthorization];
  }

  messageListViewController = [(MailMainScene *)self messageListViewController];
  [messageListViewController resumeRefreshAnimationIfNecessary];
}

- (BOOL)isComposeWindowActive
{
  dockContainer = [(MailMainScene *)self dockContainer];
  activeViewController = [dockContainer activeViewController];

  if (activeViewController && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [activeViewController isBeingDismissed] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)mailSceneDidConnectWithOptions:(id)options
{
  v73.receiver = self;
  v73.super_class = MailMainScene;
  optionsCopy = options;
  [(MailScene *)&v73 mailSceneDidConnectWithOptions:?];
  session = [(MailMainScene *)self session];
  [session mf_setIsMain:1];

  extendedLaunchTracker = [(MailMainScene *)self extendedLaunchTracker];
  [extendedLaunchTracker observeScene:self];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_handleAccountsChanged:" name:ECMailAccountsDidChangeNotification object:0];

  v7 = [MFMailComposeControllerViewDelegateHandler alloc];
  daemonInterface = [(MailScene *)self daemonInterface];
  v9 = [(MFMailComposeControllerViewDelegateHandler *)v7 initWithUICoordinator:self daemonInterface:daemonInterface];
  [(MailMainScene *)self setComposeViewDelegateHandler:v9];

  v10 = [MFUserActivityRouter alloc];
  daemonInterface2 = [(MailScene *)self daemonInterface];
  messageRepository = [daemonInterface2 messageRepository];
  v13 = [(MFUserActivityRouter *)v10 initWithDelegate:self messageRepository:messageRepository];
  [(MailMainScene *)self setUserActivityRouter:v13];

  v14 = [_TtC10MobileMail18ComposeUndoHandler alloc];
  daemonInterface3 = [(MailScene *)self daemonInterface];
  outgoingMessageRepository = [daemonInterface3 outgoingMessageRepository];
  v17 = [(ComposeUndoHandler *)v14 initWithOutgoingMessageRepository:outgoingMessageRepository];
  [(MailMainScene *)self setComposeUndoHandler:v17];

  session2 = [(MailMainScene *)self session];
  stateRestorationActivity = [session2 stateRestorationActivity];

  if ([EMInternalPreferences preferenceEnabled:13])
  {
    v19 = +[MailMainScene log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100488B68();
    }

    v20 = 0;
  }

  else
  {
    v20 = stateRestorationActivity;
  }

  v71 = v20;
  activityType = [v20 activityType];
  v22 = [activityType isEqualToString:@"com.apple.mobilemail.state.mailmainscene"];

  userActivities = [optionsCopy userActivities];
  v24 = [userActivities count];

  uRLContexts = [optionsCopy URLContexts];
  v26 = [uRLContexts count];

  shortcutItem = [optionsCopy shortcutItem];
  v68 = v24 != 0;
  v69 = v26 != 0;
  v67 = shortcutItem != 0;

  v28 = +[UIApplication sharedApplication];
  accountsProvider = [v28 accountsProvider];
  displayedAccounts = [accountsProvider displayedAccounts];
  v31 = [displayedAccounts count];

  _shouldPresentOnboarding = [(MailMainScene *)self _shouldPresentOnboarding];
  v33 = +[MailMainScene log];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    [(MailMainScene *)self session];
    v63 = v65 = v22;
    persistentIdentifier = [v63 persistentIdentifier];
    v64 = v31;
    v34 = v31 != 0;
    v35 = shortcutItem != 0;
    v36 = v26 != 0;
    v37 = v24 != 0;
    session3 = [(MailMainScene *)self session];
    mf_activeDraft = [session3 mf_activeDraft];
    ef_publicDescription = [mf_activeDraft ef_publicDescription];
    *buf = 138414082;
    v76 = persistentIdentifier;
    v77 = 1024;
    v78 = v65;
    v79 = 1024;
    v80 = v37;
    v81 = 1024;
    v82 = v36;
    v83 = 1024;
    v84 = v35;
    v85 = 1024;
    v86 = v34;
    v22 = v65;
    v87 = 2112;
    v88 = ef_publicDescription;
    v89 = 1024;
    v90 = _shouldPresentOnboarding ^ 1;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Connection conditions: sessionID=%@ hasRestorationActivity=%d isExpectingOtherActivity=%d isExpectingURLs=%d isExpectingAppShortcut=%d hasAccounts=%d activeDraft=%@ hasShownOnboarding=%{BOOL}d", buf, 0x3Au);

    v31 = v64;
  }

  v41 = v31 != 0;

  v42 = v68 || v69 || v67;
  if (v42 & 1 | ((v41 & v22 & 1) == 0) | _shouldPresentOnboarding & 1)
  {
    v43 = 0;
  }

  else
  {
    v44 = [MailMainSceneState alloc];
    userInfo = [v71 userInfo];
    daemonInterface4 = [(MailScene *)self daemonInterface];
    v43 = [(MailMainSceneState *)v44 initWithDictionary:userInfo daemonInterface:daemonInterface4];
  }

  [(MailMainScene *)self _setupMailViewHierarchyWithState:v43];
  session4 = [(MailMainScene *)self session];
  mf_activeDraft2 = [session4 mf_activeDraft];

  if ((v42 | !v41))
  {
    identifier = [mf_activeDraft2 identifier];

    if (identifier)
    {
      v50 = +[MailMainScene log];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription2 = [mf_activeDraft2 ef_publicDescription];
        *buf = 138412290;
        v76 = ef_publicDescription2;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "A draft (%@) was previously presented in this scene but we're launching to some action. Will recover to the dock...", buf, 0xCu);
      }

      session5 = [(MailMainScene *)self session];
      [session5 mf_setActiveDraft:0];

      v53 = +[UIApplication sharedApplication];
      dockPersistence = [v53 dockPersistence];
      [dockPersistence recoverAbandonedDrafts];
    }
  }

  else
  {
    [(MailMainScene *)self _beginRestoringPreviousDraftIfPossible];
  }

  mSMailActivityHandoffTypeQuickLook = [NSPredicate predicateWithFormat:@"NOT (self BEGINSWITH %@)", MSMailActivityHandoffTypeQuickLook];
  v74[0] = mSMailActivityHandoffTypeQuickLook;
  mSMailActivityHandoffTypeComposeWithStreams = [NSPredicate predicateWithFormat:@"NOT (self BEGINSWITH %@)", MSMailActivityHandoffTypeComposeWithStreams];
  v74[1] = mSMailActivityHandoffTypeComposeWithStreams;
  v57 = [NSArray arrayWithObjects:v74 count:2];
  v58 = [NSCompoundPredicate andPredicateWithSubpredicates:v57];
  activationConditions = [(MailMainScene *)self activationConditions];
  [activationConditions setCanActivateForTargetContentIdentifierPredicate:v58];

  v60 = +[EFScheduler globalAsyncScheduler];
  [v60 performBlock:&stru_100650870];

  daemonInterface5 = [(MailScene *)self daemonInterface];
  outgoingMessageRepository2 = [daemonInterface5 outgoingMessageRepository];
  [outgoingMessageRepository2 addOutgoingMessageRepositoryObserver:self];
}

- (void)_setupMailViewHierarchyWithState:(id)state
{
  stateCopy = state;
  v5 = +[MFMailMessageLibrary defaultInstance];
  persistence = [v5 persistence];
  conversationPersistence = [persistence conversationPersistence];

  v7 = +[UIApplication sharedApplication];
  accountsProvider = [v7 accountsProvider];

  v8 = [FavoritesManager alloc];
  v9 = +[UIApplication sharedApplication];
  favoritesPersistence = [v9 favoritesPersistence];
  favoritesManagerState = [stateCopy favoritesManagerState];
  v12 = [(FavoritesManager *)v8 initWithFavoritesPersistence:favoritesPersistence collections:favoritesManagerState conversationSubscriptionProvider:conversationPersistence];
  [(MailMainScene *)self setFavoritesManager:v12];

  v13 = [MailboxPickerOutlineController alloc];
  favoritesManager = [(MailMainScene *)self favoritesManager];
  v15 = [(MailboxPickerOutlineController *)v13 initWithMainScene:self favoritesManager:favoritesManager accountsProvider:accountsProvider];
  [(MailMainScene *)self setMailboxPickerController:v15];

  v16 = [[MailNavigationController alloc] initWithNavigationBarClass:0 toolbarClass:0];
  mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
  v61 = mailboxPickerController;
  v18 = [NSArray arrayWithObjects:&v61 count:1];
  [(MailNavigationController *)v16 setViewControllers:v18];

  [(MailNavigationController *)v16 setToolbarHidden:1];
  navigationBar = [(MailNavigationController *)v16 navigationBar];
  [navigationBar setPrefersLargeTitles:1];

  v20 = [[MailNavigationController alloc] initWithNavigationBarClass:0 toolbarClass:0];
  mailboxPickerController2 = [(MailMainScene *)self mailboxPickerController];
  messageListViewController = [mailboxPickerController2 messageListViewController];
  v60 = messageListViewController;
  v23 = [NSArray arrayWithObjects:&v60 count:1];
  [(MailNavigationController *)v20 setViewControllers:v23];

  [(MailNavigationController *)v20 setDelegate:self];
  [(MailNavigationController *)v20 configureBarsForMessageList];
  [(MailMainScene *)self setMasterNavigationController:v20];
  mailboxPickerController3 = [(MailMainScene *)self mailboxPickerController];
  messageListViewController2 = [mailboxPickerController3 messageListViewController];

  conversationViewController = [messageListViewController2 conversationViewController];
  v48 = [[MailDetailNavigationController alloc] initWithRootViewController:conversationViewController];
  v26 = [[MailSplitViewController alloc] initWithMailboxPickerNavigationController:v16 messageListNavigationController:v20 mailDetailNavigationController:v48 scene:self];
  [(MailMainScene *)self setSplitViewController:v26];

  v27 = [DockContainerViewController alloc];
  v28 = +[UIApplication sharedApplication];
  dockPersistence = [v28 dockPersistence];
  splitViewController = [(MailMainScene *)self splitViewController];
  v31 = [(DockContainerViewController *)v27 initWithPersistence:dockPersistence scene:self rootViewController:splitViewController];

  [(DockContainerViewController *)v31 setDelegate:self];
  [(MailMainScene *)self setDockContainer:v31];
  [(MailMainScene *)self setShouldSelectDefaultMailboxOnResume:stateCopy == 0];
  if (stateCopy)
  {
    v32 = +[MailMainScene log];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Restoration state is available, beginning restoration...", buf, 2u);
    }

    v33 = +[MailMainScene log];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      ef_publicDescription = [stateCopy ef_publicDescription];
      *buf = 138543362;
      v59 = ef_publicDescription;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "State: %{public}@", buf, 0xCu);
    }

    messageListStateFuture = [stateCopy messageListStateFuture];
    [messageListViewController2 restoreState:messageListStateFuture];
    v36 = +[EFScheduler mainThreadScheduler];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100114C48;
    v56[3] = &unk_10064D028;
    v56[4] = self;
    [messageListStateFuture onScheduler:v36 addFailureBlock:v56];

    splitViewController2 = [(MailMainScene *)self splitViewController];
    [splitViewController2 restorePrimaryNavigationState:{objc_msgSend(stateCopy, "primaryNavState")}];

    if ([stateCopy detailNavState])
    {
      conversationViewStateFuture = [stateCopy conversationViewStateFuture];
      conversationViewController2 = [messageListViewController2 conversationViewController];
      [conversationViewController2 restoreState:conversationViewStateFuture];

      objc_initWeak(buf, self);
      v40 = +[EFScheduler mainThreadScheduler];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100114CB0;
      v53[3] = &unk_10064FB30;
      objc_copyWeak(&v55, buf);
      v54 = messageListViewController2;
      [conversationViewStateFuture onScheduler:v40 addFailureBlock:v53];

      objc_destroyWeak(&v55);
      objc_destroyWeak(buf);
    }
  }

  v41 = [[_UISheetDropInteraction alloc] initWithDelegate:self];
  delegate = [(MailMainScene *)self delegate];
  window = [delegate window];

  [window addInteraction:v41];
  if (MUISolariumFeatureEnabled() && +[UIDevice mf_isPadIdiom])
  {
    [(MailMainScene *)self _updateNavigationBarTitles];
    objc_initWeak(buf, self);
    splitViewController3 = [(MailMainScene *)self splitViewController];
    v57 = objc_opt_class();
    v45 = [NSArray arrayWithObjects:&v57 count:1];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100114DF8;
    v51[3] = &unk_100650498;
    objc_copyWeak(&v52, buf);
    v46 = [splitViewController3 registerForTraitChanges:v45 withHandler:v51];

    objc_destroyWeak(&v52);
    objc_destroyWeak(buf);
  }
}

- (BOOL)displayMessage:(id)message
{
  messageCopy = message;
  currentMessageDisplayRequest = [(MailMainScene *)self currentMessageDisplayRequest];
  if (currentMessageDisplayRequest)
  {
    currentMessageDisplayRequest2 = [(MailMainScene *)self currentMessageDisplayRequest];
    hasFinished = [currentMessageDisplayRequest2 hasFinished];

    if ((hasFinished & 1) == 0)
    {
      v8 = [MFError errorWithDomain:MFMessageErrorDomain code:1028 localizedDescription:0];
      currentMessageDisplayRequest3 = [(MailMainScene *)self currentMessageDisplayRequest];
      [currentMessageDisplayRequest3 requestAbortedWithError:v8];
    }
  }

  messageListViewController = [(MailMainScene *)self messageListViewController];
  conversationViewController = [messageListViewController conversationViewController];

  message = [messageCopy message];
  v13 = [conversationViewController containsMessage:message];

  if (!v13)
  {
    [(MailMainScene *)self setCurrentMessageDisplayRequest:messageCopy];
    finishFuture = [messageCopy finishFuture];
    objc_initWeak(location, self);
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_100115ED0;
    v89[3] = &unk_10064C838;
    objc_copyWeak(&v90, location);
    v68 = finishFuture;
    [finishFuture always:v89];
    [messageCopy message];
    v85 = 0;
    v86 = &v85;
    v87 = 0x2020000000;
    v71 = v88 = 0;
    mailboxes = [v71 mailboxes];
    v69 = mailboxes;
    v21 = [mailboxes ef_firstObjectPassingTest:&stru_1006508B8];
    v67 = v21;
    if (v21)
    {
      firstObject = v21;
    }

    else
    {
      firstObject = [mailboxes firstObject];
    }

    v23 = firstObject;
    mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
    account = [v23 account];
    v66 = account;
    if (!v71 || !v23 || !account)
    {
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_10011620C;
      v72[3] = &unk_10064F8D8;
      v74 = &v85;
      v73 = messageCopy;
      v33 = +[EFScheduler mainThreadScheduler];
      [v33 performBlock:v72];

LABEL_52:
      v18 = *(v86 + 24);

      _Block_object_dispose(&v85, 8);
      objc_destroyWeak(&v90);
      objc_destroyWeak(location);

      goto LABEL_53;
    }

    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_100115F38;
    v84[3] = &unk_10064C7E8;
    v84[4] = self;
    [UIViewController _performWithoutDeferringTransitions:v84];
    [mailboxPickerController dismissAndUnfocus];
    if ([v23 type] == 5)
    {
      v25 = +[UIApplication sharedApplication];
      mailboxProvider = [v25 mailboxProvider];
      mailboxObjectIDs = [v71 mailboxObjectIDs];
      firstObject2 = [mailboxObjectIDs firstObject];
      v29 = [mailboxProvider legacyMailboxForObjectID:firstObject2];
      flags = [MFComposeMailMessage legacyMessageWithMessage:v71 mailboxUid:v29];

      v30 = [[_MFMailCompositionContext alloc] initDraftRestoreOfMessage:v71 legacyMessage:flags];
      [(MailMainScene *)self showComposeWithContext:v30 animated:0 initialTitle:0 presentationSource:0 completionBlock:0];
      v82[0] = _NSConcreteStackBlock;
      v82[1] = 3221225472;
      v82[2] = sub_100115F44;
      v82[3] = &unk_10064C7E8;
      v83 = messageCopy;
      v31 = +[EFScheduler mainThreadScheduler];
      [v31 performBlock:v82];

      v32 = v83;
LABEL_51:

      *(v86 + 24) = 1;
      goto LABEL_52;
    }

    selectedAccounts = [(MailMainScene *)self selectedAccounts];
    v35 = [selectedAccounts count];

    v36 = [v69 ef_firstObjectPassingTest:&stru_1006508D8];

    v38 = v35 > 1 && v36 != 0;
    isDisplayingMultipleAccounts = v38;
    flags = [v71 flags];
    isVIP = [v71 isVIP];
    flagged = [flags flagged];
    favoritesManager = [(MailMainScene *)self favoritesManager];
    lastSelectedItem = [favoritesManager lastSelectedItem];

    favoritesManager2 = [(MailMainScene *)self favoritesManager];
    mailboxesCollection = [favoritesManager2 mailboxesCollection];

    sourceType = [lastSelectedItem sourceType];
    splitViewController = [(MailMainScene *)self splitViewController];
    v45 = [splitViewController viewControllerForColumn:0];

    v46 = 0;
    if (!v36 || ((isVIP | flagged) & 1) == 0)
    {
      v30 = lastSelectedItem;
LABEL_46:
      v56 = [v45 popViewControllerAnimated:0];
      isShowingAllInboxes = isDisplayingMultipleAccounts;
      v58 = isDisplayingMultipleAccounts ^ 1;
      if (v46)
      {
        v58 = 1;
      }

      if ((v58 & 1) == 0)
      {
        isShowingAllInboxes = [mailboxesCollection isShowingAllInboxes];
      }

      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_100116024;
      v75[3] = &unk_100650900;
      v76 = mailboxPickerController;
      v81 = isShowingAllInboxes;
      v77 = v71;
      v80 = v46;
      v23 = v23;
      v78 = v23;
      v79 = messageCopy;
      v59 = +[EFScheduler mainThreadScheduler];
      [v59 performBlock:v75];

      v32 = mailboxesCollection;
      goto LABEL_51;
    }

    v30 = lastSelectedItem;
    if (isVIP)
    {
      v47 = [mailboxesCollection isShowingSharedMailboxOfType:1];
      if (v47 & 1 | ((flagged & 1) == 0))
      {
        v46 = v47;
        goto LABEL_32;
      }
    }

    else if (!flagged)
    {
      LOBYTE(v47) = 0;
      v46 = 0;
      goto LABEL_32;
    }

    v47 = [mailboxesCollection isShowingSharedMailboxOfType:2];
    if (v47)
    {
      v46 = 2;
    }

    else
    {
      v46 = 0;
    }

LABEL_32:
    if (v35 >= 2 && sourceType)
    {
      goto LABEL_46;
    }

    if (v35 >= 2 && !sourceType)
    {
      v46 = 0;
      goto LABEL_46;
    }

    v48 = v47 ^ 1;
    if (sourceType)
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_46;
    }

    representingMailbox = [lastSelectedItem representingMailbox];
    viewControllers = [v45 viewControllers];
    messageListViewController2 = [mailboxPickerController messageListViewController];
    v51 = [viewControllers containsObject:messageListViewController2];
    if (v51)
    {
      v52 = sub_100115F54(v51, representingMailbox, v69);

      if (v52)
      {
        v53 = +[UIApplication sharedApplication];
        mailboxProvider2 = [v53 mailboxProvider];
        v55 = [mailboxProvider2 mailboxFromLegacyMailbox:representingMailbox];

        v46 = 0;
        v23 = v55;
LABEL_45:

        goto LABEL_46;
      }
    }

    else
    {
    }

    v53 = +[UIApplication sharedApplication];
    mailboxProvider2 = [v53 accountsProvider];
    isDisplayingMultipleAccounts = [mailboxProvider2 isDisplayingMultipleAccounts];
    goto LABEL_45;
  }

  activationState = [(MailMainScene *)self activationState];
  splitViewController2 = [(MailMainScene *)self splitViewController];
  [splitViewController2 showConversationViewControllerAnimated:activationState == 0 completion:0];

  message2 = [messageCopy message];
  [conversationViewController scrollToMessageIfPossible:message2 animated:activationState == 0 pin:1];

  v17 = +[NSError ef_cancelledError];
  [messageCopy requestAbortedWithError:v17];

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

- (NSSet)statusMailboxes
{
  if ([(MailMainScene *)self _isMailboxListVisible])
  {
    favoritesManager = [(MailMainScene *)self favoritesManager];
    v4 = [favoritesManager visibleItemsOfType:3];
    v5 = [v4 ef_flatMap:&stru_100650940];
    v6 = [v5 ef_filter:EFIsNotNull];

    v7 = +[UIApplication sharedApplication];
    mailboxProvider = [v7 mailboxProvider];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10011652C;
    v19[3] = &unk_10064FEA8;
    v9 = mailboxProvider;
    v20 = v9;
    v10 = [v6 ef_compactMap:v19];
    v11 = [NSSet setWithArray:v10];
  }

  else
  {
    mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
    messageListViewController = [mailboxPickerController messageListViewController];
    mailboxes = [messageListViewController mailboxes];
    v15 = mailboxes;
    v16 = &__NSArray0__struct;
    if (mailboxes)
    {
      v16 = mailboxes;
    }

    v17 = v16;

    v11 = [NSSet setWithArray:v17];
  }

  return v11;
}

- (void)mailSceneWillResignActive
{
  v9.receiver = self;
  v9.super_class = MailMainScene;
  [(MailScene *)&v9 mailSceneWillResignActive];
  if ([(MailMainScene *)self isComposeWindowActive])
  {
    dockContainer = [(MailMainScene *)self dockContainer];
    activeViewController = [dockContainer activeViewController];

    v5 = activeViewController;
    _mailComposeController = [v5 _mailComposeController];
    [_mailComposeController finishEnteringRecipients];

    if ([v5 isQuickReply])
    {
      _mailComposeController2 = [v5 _mailComposeController];
      [_mailComposeController2 backUpDraft];
    }
  }

  messageListViewController = [(MailMainScene *)self messageListViewController];
  [messageListViewController suspendRefreshAnimationIfNecessary];
}

- (void)mailSceneDidEnterBackground
{
  v4.receiver = self;
  v4.super_class = MailMainScene;
  [(MailScene *)&v4 mailSceneDidEnterBackground];
  [(MailMainScene *)self setShouldDeferUserNotificationAuthorizationRequests:0];
  errorHandler = [(MailMainScene *)self errorHandler];
  [errorHandler reset];
}

- (void)mailSceneDidDisconnect
{
  v6.receiver = self;
  v6.super_class = MailMainScene;
  [(MailScene *)&v6 mailSceneDidDisconnect];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  daemonInterface = [(MailScene *)self daemonInterface];
  outgoingMessageRepository = [daemonInterface outgoingMessageRepository];
  [outgoingMessageRepository removeOutgoingMessageRepositoryObserver:self];
}

- (void)mailSceneWillContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  userActivityRouter = +[UIApplication sharedApplication];
  freeSpaceMonitor = [userActivityRouter freeSpaceMonitor];
  if ([freeSpaceMonitor isFreeSpaceCritical])
  {
  }

  else
  {
    _presentInitialSetupControllersIfNecessary = [(MailMainScene *)self _presentInitialSetupControllersIfNecessary];

    if (_presentInitialSetupControllersIfNecessary)
    {
      goto LABEL_6;
    }

    dockContainer = [(MailMainScene *)self dockContainer];
    [dockContainer popToRootViewControllerAnimated:1];

    userActivityRouter = [(MailMainScene *)self userActivityRouter];
    [userActivityRouter routeWillContinueUserActivityWithType:typeCopy];
  }

LABEL_6:
}

- (void)mailSceneContinueUserActivity:(id)activity
{
  activityCopy = activity;
  userActivityRouter = +[UIApplication sharedApplication];
  freeSpaceMonitor = [userActivityRouter freeSpaceMonitor];
  if ([freeSpaceMonitor isFreeSpaceCritical])
  {
  }

  else
  {
    _presentInitialSetupControllersIfNecessary = [(MailMainScene *)self _presentInitialSetupControllersIfNecessary];

    if (_presentInitialSetupControllersIfNecessary)
    {
      goto LABEL_6;
    }

    userActivityRouter = [(MailMainScene *)self userActivityRouter];
    [userActivityRouter routeUserActivity:activityCopy];
  }

LABEL_6:
}

- (void)mailSceneDidFailToContinueUserActivityWithType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  userActivityRouter = [(MailMainScene *)self userActivityRouter];
  [userActivityRouter routeUserActivityFailedWithType:typeCopy error:errorCopy];
}

- (void)mailScenePerformActionForShortcutItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  type = +[UIApplication sharedApplication];
  freeSpaceMonitor = [type freeSpaceMonitor];
  if ([freeSpaceMonitor isFreeSpaceCritical])
  {
    goto LABEL_12;
  }

  _presentInitialSetupControllersIfNecessary = [(MailMainScene *)self _presentInitialSetupControllersIfNecessary];

  if ((_presentInitialSetupControllersIfNecessary & 1) == 0)
  {
    type = [itemCopy type];
    mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
    freeSpaceMonitor = [mailboxPickerController messageListViewController];

    if ([type isEqualToString:@"com.apple.mobilemail.NewMessageApplicationShortcut"])
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100116DC4;
      v21[3] = &unk_1006509B0;
      v21[4] = self;
      v22 = handlerCopy;
      [UIViewController _performWithoutDeferringTransitions:v21];
      v12 = &v22;
    }

    else
    {
      if ([type isEqualToString:@"com.apple.mobilemail.SearchApplicationShortcut"])
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100117060;
        v18[3] = &unk_10064E320;
        v18[4] = self;
        v19 = freeSpaceMonitor;
        v20 = handlerCopy;
        [UIViewController _performWithoutDeferringTransitions:v18];
        v12 = &v19;
        v13 = &v20;
      }

      else
      {
        if (![type isEqualToString:@"com.apple.mobilemail.FavoriteItemApplicationShortcut"])
        {
LABEL_11:
          (*(handlerCopy + 2))(handlerCopy, 0);
LABEL_12:

          goto LABEL_13;
        }

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100117114;
        v14[3] = &unk_1006509D8;
        v14[4] = self;
        v15 = freeSpaceMonitor;
        v16 = itemCopy;
        v17 = handlerCopy;
        [UIViewController _performWithoutDeferringTransitions:v14];
        v12 = &v15;
        v13 = &v16;
      }
    }

    goto LABEL_11;
  }

LABEL_13:
}

- (id)stateRestorationActivityForMailScene
{
  v3 = +[MailMainScene log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [(MailMainScene *)self _sceneIdentifier];
    *buf = 138412290;
    v50 = _sceneIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restoration state was requested for MailMainScene with identifier %@. Starting state capture...", buf, 0xCu);
  }

  favoritesManager = [(MailMainScene *)self favoritesManager];
  dictionaryRepresentation = [favoritesManager dictionaryRepresentation];

  splitViewController = [(MailMainScene *)self splitViewController];
  isCollapsed = [splitViewController isCollapsed];
  v37 = [splitViewController viewControllerForColumn:0];
  topViewController = [v37 topViewController];
  v38 = topViewController;
  if (topViewController && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    messageListNavController = [splitViewController messageListNavController];
    v10 = topViewController == messageListNavController;

    if (v10)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  v35 = [splitViewController viewControllerForColumn:2];
  topViewController2 = [v35 topViewController];
  v36 = topViewController2;
  if (topViewController2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = topViewController2;
    if ([v12 isPrimary])
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    captureRestorationState = [v12 captureRestorationState];
    newBackgroundMonitor = [v12 newBackgroundMonitor];
    v39 = captureRestorationState;
    [(MailScene *)self addBackgroundMonitor:newBackgroundMonitor];
  }

  else
  {
    v13 = 0;
    v39 = 0;
  }

  mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
  messageListViewController = [mailboxPickerController messageListViewController];
  captureRestorationState2 = [messageListViewController captureRestorationState];

  if (captureRestorationState2)
  {
    v19 = [MailSceneBackgroundQueryMonitor alloc];
    visibleItems = [captureRestorationState2 visibleItems];
    messageList = [captureRestorationState2 messageList];
    daemonInterface = [(MailScene *)self daemonInterface];
    messageRepository = [daemonInterface messageRepository];
    v24 = [(MailSceneBackgroundQueryMonitor *)v19 initWithMessageListItems:visibleItems messageList:messageList messageRepository:messageRepository changeTypes:8];

    [(MailScene *)self addBackgroundMonitor:v24];
  }

  v25 = [MailMainSceneState alloc];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1001178B4;
  v42[3] = &unk_100650A00;
  v26 = dictionaryRepresentation;
  v43 = v26;
  v46 = v8;
  v47 = isCollapsed ^ 1;
  v48 = v13;
  v27 = v39;
  v44 = v27;
  v28 = captureRestorationState2;
  v45 = v28;
  v29 = [(MailMainSceneState *)v25 initWithBuilder:v42];
  v30 = +[MailMainScene log];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [(MailMainSceneState *)v29 ef_publicDescription];
    *buf = 138543362;
    v50 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Restoration state capture complete: %{public}@", buf, 0xCu);
  }

  v32 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.mobilemail.state.mailmainscene"];
  dictionaryRepresentation2 = [(MailMainSceneState *)v29 dictionaryRepresentation];
  [v32 setUserInfo:dictionaryRepresentation2];

  return v32;
}

- (id)_createURLRoutes
{
  v12.receiver = self;
  v12.super_class = MailMainScene;
  _createURLRoutes = [(MailScene *)&v12 _createURLRoutes];
  v4 = [_createURLRoutes mutableCopy];

  v5 = [[MFMessageDisplayURLRoute alloc] initWithScene:self];
  [v4 addObject:v5];

  v6 = [[MFComposeURLRoute alloc] initWithScene:self];
  [v4 addObject:v6];

  v7 = [[MFVIPURLRoute alloc] initWithScene:self];
  [v4 addObject:v7];

  v8 = [[MFFileURLRoute alloc] initWithScene:self];
  [v4 addObject:v8];

  v9 = [[MFMailboxURLRoute alloc] initWithScene:self];
  [v4 addObject:v9];

  v10 = [v4 copy];

  return v10;
}

- (unint64_t)urlRouter:(id)router decidePolicyForRoutingRequest:(id)request
{
  routerCopy = router;
  requestCopy = request;
  v8 = [requestCopy URL];
  if (([v8 mf_isOAuthRedirectURL] & 1) != 0 || !-[MailMainScene _presentInitialSetupControllersIfNecessary](self, "_presentInitialSetupControllersIfNecessary"))
  {

    goto LABEL_6;
  }

  v9 = [requestCopy URL];
  mf_isMailCleanupDashboardURL = [v9 mf_isMailCleanupDashboardURL];

  if (mf_isMailCleanupDashboardURL)
  {
LABEL_6:
    v14.receiver = self;
    v14.super_class = MailMainScene;
    v12 = [(MailScene *)&v14 urlRouter:routerCopy decidePolicyForRoutingRequest:requestCopy];
    goto LABEL_7;
  }

  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100117CB4;
  v15[3] = &unk_10064CC78;
  objc_copyWeak(&v17, &location);
  v16 = requestCopy;
  v11 = [EFInvocationToken tokenWithLabel:@"Post account setup action" invocationBlock:v15];
  [(MailMainScene *)self setPostAccountSetupInvocation:v11];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  v12 = 1;
LABEL_7:

  return v12;
}

- (void)dockContainer:(id)container didRestoreViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = controllerCopy;
    composeViewDelegateHandler = [(MailMainScene *)self composeViewDelegateHandler];
    [v5 setMailComposeDelegate:composeViewDelegateHandler];

    v7 = [MFActiveDraft alloc];
    autosaveIdentifier = [v5 autosaveIdentifier];
    originalMessageObjectID = [v5 originalMessageObjectID];
    v10 = [(MFActiveDraft *)v7 initWithIdentifier:autosaveIdentifier andOriginalMessageIdentifier:originalMessageObjectID];
    session = [(MailMainScene *)self session];
    [session mf_setActiveDraft:v10];
  }
}

- (void)dockContainer:(id)container dockedViewControllerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  session = [(MailMainScene *)self session];
  mf_activeDraft = [session mf_activeDraft];
  identifier = [mf_activeDraft identifier];
  v8 = [identifierCopy isEqualToString:identifier];

  if (v8)
  {
    session2 = [(MailMainScene *)self session];
    [session2 mf_setActiveDraft:0];
  }
}

- (void)dockContainer:(id)container dockedViewWasTornOffWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  session = [(MailMainScene *)self session];
  mf_activeDraft = [session mf_activeDraft];
  identifier = [mf_activeDraft identifier];
  v8 = [identifierCopy isEqualToString:identifier];

  if (v8)
  {
    session2 = [(MailMainScene *)self session];
    [session2 mf_setActiveDraft:0];
  }
}

- (void)dockContainer:(id)container isVisible:(BOOL)visible
{
  visibleCopy = visible;
  containerCopy = container;
  if (MUISolariumFeatureEnabled())
  {
    if (visibleCopy)
    {
      additionalBottomSafeAreaInset = [(MailMainScene *)self additionalBottomSafeAreaInset];

      if (!additionalBottomSafeAreaInset)
      {
        view = [containerCopy view];
        [view safeAreaInsets];
        v9 = v8;

        splitViewController = [(MailMainScene *)self splitViewController];
        [splitViewController additionalSafeAreaInsets];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        splitViewController2 = [(MailMainScene *)self splitViewController];
        [splitViewController2 setAdditionalSafeAreaInsets:{v12, v14, v9 + v16, v18}];

        v20 = [NSNumber numberWithDouble:v9];
        [(MailMainScene *)self setAdditionalBottomSafeAreaInset:v20];
      }
    }

    else
    {
      additionalBottomSafeAreaInset2 = [(MailMainScene *)self additionalBottomSafeAreaInset];

      if (additionalBottomSafeAreaInset2)
      {
        additionalBottomSafeAreaInset3 = [(MailMainScene *)self additionalBottomSafeAreaInset];
        [additionalBottomSafeAreaInset3 doubleValue];
        v24 = v23;

        splitViewController3 = [(MailMainScene *)self splitViewController];
        [splitViewController3 additionalSafeAreaInsets];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        splitViewController4 = [(MailMainScene *)self splitViewController];
        [splitViewController4 setAdditionalSafeAreaInsets:{v27, v29, v31 - v24, v33}];

        [(MailMainScene *)self setAdditionalBottomSafeAreaInset:0];
      }
    }
  }
}

- (BOOL)_isMailboxListVisible
{
  splitViewController = [(MailMainScene *)self splitViewController];
  displayMode = [splitViewController displayMode];

  return (displayMode - 4) < 3;
}

- (id)composeControllerForCompositionContext:(id)context
{
  contextCopy = context;
  v5 = [[ComposeNavigationController alloc] initWithComposition:contextCopy];
  composeViewDelegateHandler = [(MailMainScene *)self composeViewDelegateHandler];
  [(ComposeNavigationController *)v5 setMailComposeDelegate:composeViewDelegateHandler];

  return v5;
}

- (void)_showComposeWithContext:(id)context animated:(BOOL)animated initialTitle:(id)title presentationSource:(id)source draftOriginalMessageID:(id)d completionBlock:(id)block
{
  animatedCopy = animated;
  contextCopy = context;
  titleCopy = title;
  sourceCopy = source;
  dCopy = d;
  blockCopy = block;
  v42 = blockCopy;
  v18 = [(MailMainScene *)self composeControllerForCompositionContext:contextCopy];
  if (v18)
  {
    originalMessage = [contextCopy originalMessage];

    if (originalMessage && [contextCopy composeType] != 4)
    {
      [contextCopy composeType];
    }

    if (titleCopy)
    {
      [v18 setInitialTitle:titleCopy];
    }

    composeCompletionBlock = [(MailMainScene *)self composeCompletionBlock];

    if (composeCompletionBlock)
    {
      composeCompletionBlock2 = [(MailMainScene *)self composeCompletionBlock];
      composeCompletionBlock2[2]();
    }

    [(MailMainScene *)self setComposeCompletionBlock:blockCopy];
    autosaveIdentifier = [v18 autosaveIdentifier];
    originalMessageObjectID = [v18 originalMessageObjectID];
    if (autosaveIdentifier)
    {
      v23 = +[UIApplication sharedApplication];
      dockPersistence = [v23 dockPersistence];
      [dockPersistence removeDockedStateWithIdentifier:autosaveIdentifier sender:0];
    }

    v39 = animatedCopy;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1001188F0;
    v44[3] = &unk_10064E348;
    v44[4] = self;
    v25 = autosaveIdentifier;
    v45 = v25;
    v46 = dCopy;
    v26 = originalMessageObjectID;
    v47 = v26;
    v41 = objc_retainBlock(v44);
    v27 = +[CLFSystemShellSwitcher sharedSystemShellSwitcher];
    isClarityBoardEnabled = [v27 isClarityBoardEnabled];

    if (isClarityBoardEnabled & 1 | ((+[UIDevice mf_isPadIdiom]& 1) == 0))
    {
      attachmentToMarkupContentID = [contextCopy attachmentToMarkupContentID];
      v37 = sourceCopy;
      v38 = titleCopy;
      if (!attachmentToMarkupContentID)
      {
        goto LABEL_20;
      }

      dockContainer = [(MailMainScene *)self dockContainer];
      presentedViewController = [dockContainer presentedViewController];
      v49 = 0;
      v50 = &v49;
      v51 = 0x2050000000;
      v32 = qword_1006DD0E0;
      v52 = qword_1006DD0E0;
      if (!qword_1006DD0E0)
      {
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_10011EC70;
        v48[3] = &unk_100650760;
        v48[4] = &v49;
        sub_10011EC70(v48);
        v32 = v50[3];
      }

      v33 = v32;
      _Block_object_dispose(&v49, 8);
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        sourceCopy = v37;
        titleCopy = v38;
        dockContainer2 = [(MailMainScene *)self dockContainer];
        presentedViewController2 = [dockContainer2 presentedViewController];
        [presentedViewController2 presentViewController:v18 animated:v39 completion:v41];
      }

      else
      {
LABEL_20:
        sourceCopy = v37;
        titleCopy = v38;
        if (MUISolariumFeatureEnabled())
        {
          if ((+[UIDevice mf_isPadIdiom]& 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v18 addZoomTransitionWithPresentationSourceView:v37];
            }
          }
        }

        dockContainer2 = [(MailMainScene *)self dockContainer];
        [dockContainer2 presentViewController:v18 animated:v39 completion:v41];
      }
    }

    else
    {
      [MFBayAdoption openComposeWithContext:contextCopy presentationSource:sourceCopy requestingScene:self];
    }
  }

  else
  {
    v25 = +[MailMainScene log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100488C48();
    }
  }
}

- (void)resumeCompositionOfDraft:(id)draft legacyDraft:(id)legacyDraft
{
  draftCopy = draft;
  legacyDraftCopy = legacyDraft;
  if (draftCopy)
  {
    v7 = [[_MFMailCompositionContext alloc] initDraftRestoreOfMessage:draftCopy legacyMessage:legacyDraftCopy];
  }

  else
  {
    v7 = objc_alloc_init(_MFMailCompositionContext);
    [v7 setShowKeyboardImmediately:1];
  }

  [(MailMainScene *)self showComposeWithContext:v7 animated:1 initialTitle:0 presentationSource:0 completionBlock:0];
}

- (void)_saveCompositionAsDraft:(id)draft
{
  _mailComposeController = [draft _mailComposeController];
  [_mailComposeController forceSaveAsDraft];
  v3 = [[MFMailComposeDeliveryController alloc] initWithComposeController:_mailComposeController];
  if (v3)
  {
    v4 = +[MFInvocationQueue sharedInvocationQueue];
    v5 = [MFMonitoredInvocation invocationWithSelector:"deliverMessage" target:v3 taskName:0 priority:6 canBeCancelled:1];
    [v4 addInvocation:v5];
  }
}

- (void)hasDelayedMessagesDidChange:(BOOL)change
{
  LOBYTE(v5) = change;
  v3 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v3 performBlock:&v4];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("_composeCommandInvoked:" == action || "debugShortcutInvoked:" == action)
  {
    if ("_composeCommandInvoked:" == action)
    {
      v9 = +[MailAccount activeNonLocalAccounts];
      v8 = [v9 count] != 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MailMainScene;
    v8 = [(MailScene *)&v11 canPerformAction:action withSender:senderCopy];
  }

  return v8;
}

- (void)_composeCommandInvoked:(id)invoked
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100118EF4;
  v10 = &unk_10064FC70;
  selfCopy = self;
  invokedCopy = invoked;
  v12 = invokedCopy;
  v5 = objc_retainBlock(&v7);
  if ([(MailMainScene *)self isComposeWindowActive:v7])
  {
    dockContainer = [(MailMainScene *)self dockContainer];
    [dockContainer dockPresentedViewControllerWithCompletion:v5];
  }

  else
  {
    (v5[2])(v5, 1);
  }
}

- (void)_openMailboxQuicklyInvoked:(id)invoked
{
  if (![(MailMainScene *)self isOpenMailboxQuicklyViewVisible])
  {
    mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
    isEditing = [mailboxPickerController isEditing];

    if (isEditing)
    {
      mailboxPickerController2 = [(MailMainScene *)self mailboxPickerController];
      [mailboxPickerController2 setEditing:0 animated:1];
    }

    [(MailMainScene *)self refreshOpenMailboxQuicklyItems];
    dockContainer = [(MailMainScene *)self dockContainer];
    openMailboxQuicklyViewController = [(MailMainScene *)self openMailboxQuicklyViewController];
    [dockContainer presentViewController:openMailboxQuicklyViewController animated:1 completion:0];
  }
}

- (BOOL)isOpenMailboxQuicklyViewVisible
{
  if (!self->_openMailboxQuicklyViewController)
  {
    return 0;
  }

  openMailboxQuicklyViewController = [(MailMainScene *)self openMailboxQuicklyViewController];
  viewIfLoaded = [openMailboxQuicklyViewController viewIfLoaded];
  window = [viewIfLoaded window];
  v5 = window != 0;

  return v5;
}

- (UIViewController)openMailboxQuicklyViewController
{
  openMailboxQuicklyViewController = self->_openMailboxQuicklyViewController;
  if (!openMailboxQuicklyViewController)
  {
    favoritesManager = [(MailMainScene *)self favoritesManager];
    v5 = [_TtC10MobileMail25OpenMailboxQuicklyFactory createOpenMailboxQuicklyViewControllerWithFavoritesManager:favoritesManager delegate:self];
    v6 = self->_openMailboxQuicklyViewController;
    self->_openMailboxQuicklyViewController = v5;

    openMailboxQuicklyViewController = self->_openMailboxQuicklyViewController;
  }

  return openMailboxQuicklyViewController;
}

- (void)refreshOpenMailboxQuicklyItems
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  favoritesManager = [(MailMainScene *)self favoritesManager];
  visibleMailboxCollections = [favoritesManager visibleMailboxCollections];

  obj = visibleMailboxCollections;
  v7 = [visibleMailboxCollections countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v20 = *v27;
    do
    {
      v21 = v7;
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        itemsIncludingSubItems = [v9 itemsIncludingSubItems];
        v11 = [itemsIncludingSubItems countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = *v23;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(itemsIncludingSubItems);
              }

              v14 = *(*(&v22 + 1) + 8 * j);
              itemURLString = [v14 itemURLString];
              if (itemURLString && ([v4 containsObject:itemURLString] & 1) == 0)
              {
                v16 = [_TtC10MobileMail25OpenMailboxQuicklyFactory createOpenMailboxQuicklyItemWithFavoriteItem:v14];
                if (v16)
                {
                  [(NSArray *)v3 addObject:v16];
                  [v4 addObject:itemURLString];
                }
              }
            }

            v11 = [itemsIncludingSubItems countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v11);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  openMailboxQuicklyItems = selfCopy->_openMailboxQuicklyItems;
  selfCopy->_openMailboxQuicklyItems = v3;
}

- (void)openMailboxQuicklyDidSelectMailboxWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  favoritesManager = [(MailMainScene *)self favoritesManager];
  v16 = identifierCopy;
  v6 = [NSArray arrayWithObjects:&v16 count:1];
  v7 = [favoritesManager itemsMatchingItemURLStrings:v6];

  firstObject = [v7 firstObject];
  if (firstObject)
  {
    mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
    smartMailbox = [firstObject smartMailbox];

    if (smartMailbox)
    {
      favoriteItemSelectionTarget = [mailboxPickerController favoriteItemSelectionTarget];
      -[NSObject selectCombinedInboxWithSourceType:item:animated:](favoriteItemSelectionTarget, "selectCombinedInboxWithSourceType:item:animated:", [firstObject sourceType], firstObject, 0);
    }

    else
    {
      representingMailbox = [firstObject representingMailbox];

      if (representingMailbox)
      {
        favoriteItemSelectionTarget = [firstObject representingMailbox];
        favoriteItemSelectionTarget2 = [mailboxPickerController favoriteItemSelectionTarget];
        [favoriteItemSelectionTarget2 selectMailbox:favoriteItemSelectionTarget item:firstObject animated:0];
      }

      else
      {
        favoriteItemSelectionTarget = +[MailMainScene log];
        if (os_log_type_enabled(favoriteItemSelectionTarget, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, favoriteItemSelectionTarget, OS_LOG_TYPE_DEFAULT, "Unable to select mailbox since no mailbox was found for FavoriteItem", v15, 2u);
        }
      }
    }
  }

  else
  {
    mailboxPickerController = +[MailMainScene log];
    if (os_log_type_enabled(mailboxPickerController, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, mailboxPickerController, OS_LOG_TYPE_DEFAULT, "Unable to select mailbox since no matching FavoriteItem with identifier was found", v15, 2u);
    }
  }

  dockContainer = [(MailMainScene *)self dockContainer];
  [dockContainer dismissViewControllerAnimated:1 completion:0];
}

- (void)closeOpenMailboxQuicklyViewController
{
  dockContainer = [(MailMainScene *)self dockContainer];
  [dockContainer dismissViewControllerAnimated:1 completion:0];
}

- (void)composeButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  dockContainer = [(MailMainScene *)self dockContainer];
  presentedViewController = [dockContainer presentedViewController];

  if (presentedViewController && [presentedViewController modalPresentationStyle] == 7)
  {
    objc_initWeak(location, self);
    dockContainer2 = [(MailMainScene *)self dockContainer];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100119BB0;
    v19[3] = &unk_10064CC78;
    objc_copyWeak(&v21, location);
    v20 = pressedCopy;
    [dockContainer2 dismissViewControllerAnimated:1 completion:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = +[MailMainScene log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *location = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Created invocation to update aliases.", location, 2u);
    }

    v9 = +[MFInvocationQueue sharedInvocationQueue];
    v10 = [MFMonitoredInvocation mf_invocationWithSelector:"updateEmailAliasesForActiveAccounts" target:objc_opt_class()];
    [v9 addInvocation:v10];

    v18 = -86;
    v11 = objc_alloc_init(_MFMailCompositionContext);
    [v11 setShowKeyboardImmediately:1];
    v12 = [(MailMainScene *)self composeAccountIsDefault:&v18];
    v13 = +[MailMainScene log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [v12 ef_publicDescription];
      *location = 138412546;
      *&location[4] = ef_publicDescription;
      v23 = 1024;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Compose using account:%@, isDefault: %{BOOL}d.", location, 0x12u);
    }

    defaultEmailAddress = [v12 defaultEmailAddress];
    firstEmailAddress = defaultEmailAddress;
    if (!defaultEmailAddress)
    {
      firstEmailAddress = [v12 firstEmailAddress];
    }

    [v11 setPreferredSendingEmailAddress:firstEmailAddress];
    if (!defaultEmailAddress)
    {
    }

    [v11 setIsUsingDefaultAccount:v18];
    [v11 setPrefersFirstLineSelection:1];
    if (MUISolariumFeatureEnabled())
    {
      v17 = pressedCopy;
    }

    else
    {
      v17 = 0;
    }

    [(MailMainScene *)self showComposeWithContext:v11 animated:1 initialTitle:0 presentationSource:v17 completionBlock:0];
  }
}

- (void)composeButtonLongPressed:(id)pressed
{
  pressedCopy = pressed;
  v5 = [PreviousDraftPickerController alloc];
  daemonInterface = [(MailScene *)self daemonInterface];
  messageRepository = [daemonInterface messageRepository];
  v8 = [(PreviousDraftPickerController *)v5 initWithMessageRepository:messageRepository];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100119E50;
  v15[3] = &unk_100650A28;
  v15[4] = self;
  [(PreviousDraftPickerController *)v8 setActionBlock:v15];
  previousDraftPickerPopoverPresentationDelegate = [(MailMainScene *)self previousDraftPickerPopoverPresentationDelegate];

  if (!previousDraftPickerPopoverPresentationDelegate)
  {
    v10 = objc_alloc_init(PreviousDraftPickerPopoverPresentationDelegate);
    [(MailMainScene *)self setPreviousDraftPickerPopoverPresentationDelegate:v10];
  }

  [(PreviousDraftPickerController *)v8 setModalPresentationStyle:7];
  popoverPresentationController = [(PreviousDraftPickerController *)v8 popoverPresentationController];
  previousDraftPickerPopoverPresentationDelegate2 = [(MailMainScene *)self previousDraftPickerPopoverPresentationDelegate];
  [popoverPresentationController setDelegate:previousDraftPickerPopoverPresentationDelegate2];

  [popoverPresentationController setPermittedArrowDirections:3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [popoverPresentationController setBarButtonItem:pressedCopy];
  }

  else
  {
    v13 = pressedCopy;
    [popoverPresentationController setSourceView:v13];
    [v13 bounds];
    [popoverPresentationController setSourceRect:?];
  }

  dockContainer = [(MailMainScene *)self dockContainer];
  [dockContainer presentViewController:v8 animated:1 completion:0];
}

- (void)mailComposeDeliveryControllerWillAttemptToSend:(id)send
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10011A170;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

- (void)mailComposeDeliveryControllerDidAttemptToSend:(id)send outgoingMessageDelivery:(id)delivery result:(id)result
{
  sendCopy = send;
  deliveryCopy = delivery;
  resultCopy = result;
  if (([resultCopy status] & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v10 = +[MFNetworkController sharedInstance];
    isDataAvailable = [v10 isDataAvailable];

    if (isDataAvailable)
    {
      error = [sendCopy error];
      account = [deliveryCopy account];
      [(MailMainScene *)self displayError:error forAccount:account mode:2];
    }
  }

  v14 = +[MFActivityMonitor currentMonitor];
  [v14 reset];
}

- (void)mailComposeDeliveryControllerDidAttemptToSaveDraft:(id)draft account:(id)account result:(unint64_t)result
{
  draftCopy = draft;
  accountCopy = account;
  if (!result)
  {
    v9 = +[MFNetworkController sharedInstance];
    isDataAvailable = [v9 isDataAvailable];

    if (isDataAvailable)
    {
      error = [draftCopy error];
      [(MailMainScene *)self displayError:error forAccount:accountCopy mode:2];
    }
  }
}

- (void)mailComposeDeliveryController:(id)controller didMoveCancelledMessageToDrafts:(id)drafts draftMailboxObjectID:(id)d
{
  draftsCopy = drafts;
  dCopy = d;
  v8 = [_MFMailCompositionContext alloc];
  objectID = [draftsCopy objectID];
  daemonInterface = [(MailScene *)self daemonInterface];
  messageRepository = [daemonInterface messageRepository];
  v12 = +[UIApplication sharedApplication];
  mailboxProvider = [v12 mailboxProvider];
  v14 = [v8 initWithComposeType:2 objectID:objectID mailboxID:dCopy subject:0 autosaveID:0 messageRepository:messageRepository mailboxProvider:mailboxProvider];

  [(MailMainScene *)self showComposeWithContext:v14 animated:1 initialTitle:0 presentationSource:0 completionBlock:0];
}

- (void)dismissComposeViewController:(id)controller animated:(BOOL)animated afterSending:(BOOL)sending
{
  sendingCopy = sending;
  animatedCopy = animated;
  controllerCopy = controller;
  session = [(MailMainScene *)self session];
  [session mf_setActiveDraft:0];

  navigationController = [controllerCopy navigationController];
  mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
  messageListViewController = [mailboxPickerController messageListViewController];

  mailboxes = [messageListViewController mailboxes];
  v14 = [mailboxes ef_any:&stru_100650A48];

  dockContainer = [(MailMainScene *)self dockContainer];
  activeViewController = [dockContainer activeViewController];

  if (([controllerCopy isQuickReply] & 1) == 0)
  {
    if ([activeViewController isEqual:navigationController])
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10011A944;
      v21[3] = &unk_100650A70;
      v17 = navigationController;
      v22 = v17;
      selfCopy = self;
      v24 = v14;
      v25 = sendingCopy;
      v18 = objc_retainBlock(v21);
      if (animatedCopy && sendingCopy)
      {
        [v17 removeZoomTransition];
        dockContainer2 = [(MailMainScene *)self dockContainer];
        [dockContainer2 dismissViewControllerWithTransition:3 completion:v18];
      }

      else
      {
        dockContainer2 = [(MailMainScene *)self dockContainer];
        [dockContainer2 dismissViewControllerAnimated:animatedCopy completion:v18];
      }

      v20 = v22;
    }

    else
    {
      v20 = +[MailMainScene log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100488A88(controllerCopy, activeViewController, v20);
      }
    }
  }
}

- (void)didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  v7 = +[MailMainScene log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    ef_publicDescription = [errorCopy ef_publicDescription];
    sub_100488C7C(typeCopy, ef_publicDescription, v9, v7);
  }
}

- (id)activeViewController
{
  dockContainer = [(MailMainScene *)self dockContainer];
  activeViewController = [dockContainer activeViewController];

  return activeViewController;
}

- (_TtC10MobileMail21AppStoreReviewManager)appStoreReviewManager
{
  v2 = +[UIApplication sharedApplication];
  appStoreReviewManager = [v2 appStoreReviewManager];

  return appStoreReviewManager;
}

- (BOOL)_presentInitialSetupControllersIfNecessary
{
  if ([(MailMainScene *)self presentAccountSetupControllerIfNecessary]|| [(MailMainScene *)self presentOnboardingIfNecessary])
  {
    return 1;
  }

  [(MailMainScene *)self _requestUserNotificationAuthorization];
  return 0;
}

- (void)_cleanUpDeprecatedOnboarding
{
  v2 = +[NSUserDefaults em_userDefaults];
  [v2 removeObjectForKey:@"PresentedWhatsNewInSydro"];

  v3 = +[NSUserDefaults em_userDefaults];
  [v3 removeObjectForKey:@"LastWelcomeOnboardingUpdate"];
}

- (BOOL)presentOnboardingIfNecessary
{
  onboardingNavigationController = [(MailMainScene *)self onboardingNavigationController];

  if (onboardingNavigationController)
  {
    v4 = +[MailMainScene log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Onboarding is already in progress. Aborting onboarding.", v6, 2u);
    }

    return 1;
  }

  else
  {

    return [(MailMainScene *)self presentNextOnboardingIfNecessary];
  }
}

- (BOOL)presentNextOnboardingIfNecessary
{
  _shouldPresentOnboarding = [(MailMainScene *)self _shouldPresentOnboarding];
  if (_shouldPresentOnboarding)
  {
    [(MailMainScene *)self _presentOnboarding];
  }

  else
  {
    onboardingNavigationController = [(MailMainScene *)self onboardingNavigationController];

    if (onboardingNavigationController)
    {
      onboardingNavigationController2 = [(MailMainScene *)self onboardingNavigationController];
      [onboardingNavigationController2 dismissViewControllerAnimated:1 completion:0];

      [(MailMainScene *)self setOnboardingNavigationController:0];
      [(MailMainScene *)self setMailTrackingProtectionOnboardingViewController:0];
      postAccountSetupInvocation = [(MailMainScene *)self postAccountSetupInvocation];

      if (postAccountSetupInvocation)
      {
        postAccountSetupInvocation2 = [(MailMainScene *)self postAccountSetupInvocation];
        [postAccountSetupInvocation2 invoke];

        [(MailMainScene *)self setPostAccountSetupInvocation:0];
      }

      [(MailMainScene *)self _requestUserNotificationAuthorization];
      [(MailMainScene *)self _cleanUpDeprecatedOnboarding];
    }
  }

  return _shouldPresentOnboarding;
}

- (void)_presentOnboarding
{
  _nextOnboardingController = [(MailMainScene *)self _nextOnboardingController];
  if (_nextOnboardingController)
  {
    onboardingNavigationController = [(MailMainScene *)self onboardingNavigationController];

    if (onboardingNavigationController)
    {
      onboardingNavigationController2 = [(MailMainScene *)self onboardingNavigationController];
      [onboardingNavigationController2 pushViewController:_nextOnboardingController animated:1];
    }

    else
    {
      v5 = [[UINavigationController alloc] initWithRootViewController:_nextOnboardingController];
      [(MailMainScene *)self setOnboardingNavigationController:v5];

      onboardingNavigationController2 = [(MailMainScene *)self dockContainer];
      onboardingNavigationController3 = [(MailMainScene *)self onboardingNavigationController];
      [onboardingNavigationController2 presentViewController:onboardingNavigationController3 animated:1 completion:0];
    }
  }
}

- (id)_nextOnboardingController
{
  if (![(MailMainScene *)self _shouldPresentWelcomeOnboarding]|| ([(MailMainScene *)self _createAppleIntelligenceWelcomeOnboardingController], (_createMailTrackingProtectionOnboardingController = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([(MailMainScene *)self _shouldPresentMailTrackingProtectionOnboarding])
    {
      _createMailTrackingProtectionOnboardingController = [(MailMainScene *)self _createMailTrackingProtectionOnboardingController];
    }

    else
    {
      _createMailTrackingProtectionOnboardingController = 0;
    }
  }

  return _createMailTrackingProtectionOnboardingController;
}

- (BOOL)_shouldPresentWelcomeOnboarding
{
  if (![(MailMainScene *)self appleIntelligenceOnboardingState])
  {
    [(MailMainScene *)self _prepareForAppleIntelligenceOnboardingIfNecessary];
  }

  return [(MailMainScene *)self appleIntelligenceOnboardingState]== 3;
}

- (BOOL)_shouldPresentMailTrackingProtectionOnboarding
{
  v3 = +[NSUserDefaults em_userDefaults];
  v4 = [v3 integerForKey:EMUserDefaultLoadRemoteContentKey];

  if ((v4 & 2) != 0)
  {
    v10 = +[MailMainScene log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Tracking prevention onboarding not presented -- blocking remote content", buf, 2u);
    }

    selfCopy2 = self;
    v12 = 1;
    goto LABEL_16;
  }

  if (v4)
  {
    v7 = +[MailMainScene log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v13 = "Tracking prevention onboarding not presented -- already set by user";
      v14 = &v17;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
    }

LABEL_15:

    selfCopy2 = self;
    v12 = 0;
LABEL_16:
    [(MailMainScene *)selfCopy2 _sendOnboardingAnalyticsDidShowOnboarding:0 wasPreviouslyBlockingRemoteContent:v12];
    return 0;
  }

  v5 = +[MCProfileConnection sharedConnection];
  isMailPrivacyProtectionAllowed = [v5 isMailPrivacyProtectionAllowed];

  v7 = +[MailMainScene log];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if ((isMailPrivacyProtectionAllowed & 1) == 0)
  {
    if (v8)
    {
      *v16 = 0;
      v13 = "Tracking prevention onboarding not presented -- prohibited by MDM";
      v14 = v16;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v8)
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Tracking prevention onboarding should be presented", v15, 2u);
  }

  return 1;
}

- (void)_prepareForAppleIntelligenceOnboardingIfNecessary
{
  v3 = +[MUIAppleIntelligenceOnboardingViewController currentAppleIntelligenceOnboardingState];
  [(MailMainScene *)self setAppleIntelligenceOnboardingState:v3];
  v4 = +[MailMainScene log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Apple Intelligence onboarding state=%ld", &v5, 0xCu);
  }
}

- (id)_createAppleIntelligenceWelcomeOnboardingController
{
  v3 = +[MailMainScene log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Create Apple Intelligence welcome onboarding", v10, 2u);
  }

  mailAppleIntelligenceWelcomeOnboardingViewController = [(MailMainScene *)self mailAppleIntelligenceWelcomeOnboardingViewController];

  if (!mailAppleIntelligenceWelcomeOnboardingViewController)
  {
    v5 = objc_alloc_init(MUIAppleIntelligenceOnboardingViewController);
    [(MailMainScene *)self setMailAppleIntelligenceWelcomeOnboardingViewController:v5];
    v6 = kAppleIntelligenceOnboardingViewControllerDidCompleteNotification;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"_mailAppleIntelligenceWelcomeViewControllerDidFinish:" name:v6 object:0];
  }

  mailAppleIntelligenceWelcomeOnboardingViewController2 = [(MailMainScene *)self mailAppleIntelligenceWelcomeOnboardingViewController];

  return mailAppleIntelligenceWelcomeOnboardingViewController2;
}

- (id)_createMailTrackingProtectionOnboardingController
{
  v3 = +[MailMainScene log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mailTrackingProtectionOnboardingViewController = [(MailMainScene *)self mailTrackingProtectionOnboardingViewController];
    accountSetupController = [(MailMainScene *)self accountSetupController];
    v12 = 138543618;
    v13 = mailTrackingProtectionOnboardingViewController;
    v14 = 2114;
    v15 = accountSetupController;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Create tracking prevention onboarding (onboarding: %{public}@, account setup: %{public}@)", &v12, 0x16u);
  }

  mailTrackingProtectionOnboardingViewController2 = [(MailMainScene *)self mailTrackingProtectionOnboardingViewController];
  if (mailTrackingProtectionOnboardingViewController2)
  {
    goto LABEL_4;
  }

  accountSetupController2 = [(MailMainScene *)self accountSetupController];
  v8 = accountSetupController2 == 0;

  if (v8)
  {
    mailTrackingProtectionOnboardingViewController2 = objc_alloc_init(MailTrackingProtectionOnboardingViewController);
    [(MailMainScene *)self setMailTrackingProtectionOnboardingViewController:mailTrackingProtectionOnboardingViewController2];
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"_mailTrackingProtectionViewControllerDidFinish:" name:@"MailTrackingProtectionOnboardingViewControllerDidCompleteNotification" object:0];

LABEL_4:
  }

  mailTrackingProtectionOnboardingViewController3 = [(MailMainScene *)self mailTrackingProtectionOnboardingViewController];

  return mailTrackingProtectionOnboardingViewController3;
}

- (void)_mailAppleIntelligenceWelcomeViewControllerDidFinish:(id)finish
{
  mailAppleIntelligenceWelcomeOnboardingViewController = [(MailMainScene *)self mailAppleIntelligenceWelcomeOnboardingViewController];
  v5 = +[MailMainScene log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138543618;
    v9 = v7;
    v10 = 2048;
    v11 = mailAppleIntelligenceWelcomeOnboardingViewController;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Onboarding did finish", &v8, 0x16u);
  }

  [(MailMainScene *)self setAppleIntelligenceOnboardingState:4];
  if (mailAppleIntelligenceWelcomeOnboardingViewController)
  {
    [(MailMainScene *)self presentNextOnboardingIfNecessary];
  }
}

- (void)_mailTrackingProtectionViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  mailTrackingProtectionOnboardingViewController = [(MailMainScene *)self mailTrackingProtectionOnboardingViewController];
  v6 = +[MailMainScene log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v13 = 138543618;
    v14 = v8;
    v15 = 2048;
    v16 = mailTrackingProtectionOnboardingViewController;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Onboarding did finish", &v13, 0x16u);
  }

  if (mailTrackingProtectionOnboardingViewController)
  {
    [(MailMainScene *)self presentNextOnboardingIfNecessary];
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:@"MailTrackingProtectionOnboardingViewControllerDidCompleteNotification" object:0];

  userInfo = [finishCopy userInfo];
  v11 = [userInfo objectForKeyedSubscript:@"MailTrackingProtectionOnboardingViewControllerUserInfoKeyOptedIn"];
  v12 = v11;
  if (v11)
  {
    -[MailMainScene _sendOnboardingAnalyticsDidShowOnboarding:wasPreviouslyBlockingRemoteContent:optedIn:](self, "_sendOnboardingAnalyticsDidShowOnboarding:wasPreviouslyBlockingRemoteContent:optedIn:", 1, 0, [v11 BOOLValue]);
  }

  else
  {
    [(MailMainScene *)self _sendOnboardingAnalyticsDidShowOnboarding:0 wasPreviouslyBlockingRemoteContent:0];
  }
}

- (void)_sendOnboardingAnalyticsDidShowOnboarding:(BOOL)onboarding wasPreviouslyBlockingRemoteContent:(BOOL)content
{
  contentCopy = content;
  onboardingCopy = onboarding;
  if (content)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[NSUserDefaults em_userDefaults];
    v9 = [v8 integerForKey:EMUserDefaultLoadRemoteContentKey];

    v7 = (v9 & 8) == 0;
  }

  [(MailMainScene *)self _sendOnboardingAnalyticsDidShowOnboarding:onboardingCopy wasPreviouslyBlockingRemoteContent:contentCopy optedIn:v7];
}

- (void)_sendOnboardingAnalyticsDidShowOnboarding:(BOOL)onboarding wasPreviouslyBlockingRemoteContent:(BOOL)content optedIn:(BOOL)in
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011BA28;
  block[3] = &unk_100650AB0;
  onboardingCopy = onboarding;
  contentCopy = content;
  inCopy = in;
  if (qword_1006DD0D0 != -1)
  {
    dispatch_once(&qword_1006DD0D0, block);
  }
}

- (id)_statusStringForCNAuthorizationStatus:(int64_t)status
{
  if (status > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100650BE8 + status);
  }
}

- (void)setSelectedAccounts:(id)accounts
{
  accountsCopy = accounts;
  if (self->_selectedAccounts != accountsCopy)
  {
    errorHandler = [(MailMainScene *)self errorHandler];
    [errorHandler reset];

    objc_storeStrong(&self->_selectedAccounts, accounts);
    [(MailMainScene *)self setLastSelectedAccountID:0];
    if ([(NSSet *)accountsCopy count]== 1)
    {
      anyObject = [(NSSet *)accountsCopy anyObject];
      uniqueID = [anyObject uniqueID];
      [(MailMainScene *)self setLastSelectedAccountID:uniqueID];
    }
  }
}

- (void)_handleAccountsChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:ECMailAccountsDidChangeNotificationKeyPreviousAccountIdentifiers];

  userInfo2 = [changedCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:ECMailAccountsDidChangeNotificationKeyAccountIdentifiers];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  selectedAccounts = [(MailMainScene *)self selectedAccounts];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011C1C0;
  v13[3] = &unk_100650B68;
  v13[4] = &v14;
  v10 = [selectedAccounts ef_compactMap:v13];

  v11 = [v6 count];
  v12 = [v8 count];
  if ((v15[3] & 1) == 0 && (v11 == v12 || v11 && v12))
  {
    if ([v10 count])
    {
      [(MailMainScene *)self setSelectedAccounts:v10];
    }
  }

  else
  {
    [(MailMainScene *)self _resetSelectedAccounts];
  }

  _Block_object_dispose(&v14, 8);
}

- (void)_resetSelectedAccounts
{
  v3 = +[MailMainScene log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reset Selected Accounts", v14, 2u);
  }

  mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
  messageListViewController = [mailboxPickerController messageListViewController];
  conversationViewController = [messageListViewController conversationViewController];

  if (conversationViewController)
  {
    [conversationViewController setReferenceMessageListItem:0 referenceMessageList:0 showAsConversation:0 animated:0];
  }

  favoritesManager = [(MailMainScene *)self favoritesManager];
  [favoritesManager setLastSelectedItem:0];

  [(MailMainScene *)self selectDefaultMailbox];
  if ([(MailMainScene *)self activationState]== 2)
  {
    v8 = +[UIApplication sharedApplication];
    session = [(MailMainScene *)self session];
    [v8 requestSceneSessionRefresh:session];
  }

  else
  {
    postAccountSetupInvocation = [(MailMainScene *)self postAccountSetupInvocation];
    if (postAccountSetupInvocation)
    {
      if ([(MailMainScene *)self _isDisplayingAccountSetup])
      {
        accountSetupController = [(MailMainScene *)self accountSetupController];
        accountSetupInProgress = [accountSetupController accountSetupInProgress];

        if (accountSetupInProgress)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      postAccountSetupInvocation2 = [(MailMainScene *)self postAccountSetupInvocation];
      [postAccountSetupInvocation2 invoke];

      [(MailMainScene *)self setPostAccountSetupInvocation:0];
    }
  }

LABEL_13:
}

- (BOOL)presentAccountSetupControllerIfNecessary
{
  _defaultAccountsToSelect = [(MailMainScene *)self _defaultAccountsToSelect];
  anyObject = [_defaultAccountsToSelect anyObject];
  primaryMailboxUid = [anyObject primaryMailboxUid];

  if (!primaryMailboxUid)
  {
    [(MailMainScene *)self _presentAccountSetupController];
  }

  return primaryMailboxUid == 0;
}

- (void)_presentAccountSetupController
{
  if (![(MailMainScene *)self _presentAccountRestrictionAlertIfNecessary])
  {
    accountSetupController = [(MailMainScene *)self accountSetupController];

    if (!accountSetupController)
    {
      v4 = +[MailMainScene log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Presenting account setup controller", v8, 2u);
      }

      v5 = [[AccountSetupController alloc] initWithTitle:0 identifier:@"NEW_ACCOUNT"];
      [(AccountSetupController *)v5 setAccountSetupDelegate:self];
      [(AccountSetupController *)v5 setScene:self];
      [(AccountSetupController *)v5 setModalPresentationStyle:0];
      [(MailMainScene *)self setAccountSetupController:v5];
      dockContainer = [(MailMainScene *)self dockContainer];
      accountSetupController2 = [(MailMainScene *)self accountSetupController];
      [dockContainer presentViewController:accountSetupController2 animated:0 completion:0];
    }
  }
}

- (void)_dismissAccountSetupControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  accountSetupController = [(MailMainScene *)self accountSetupController];

  if (accountSetupController)
  {
    v8 = +[MailMainScene log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dismissing account setup controller", v12, 2u);
    }

    accountSetupController2 = [(MailMainScene *)self accountSetupController];
    [accountSetupController2 setAccountSetupDelegate:0];

    accountSetupController3 = [(MailMainScene *)self accountSetupController];
    [accountSetupController3 setScene:0];

    [(MailMainScene *)self setAccountSetupController:0];
    [(MailMainScene *)self setAccountSetupFinished:0];
    dockContainer = [(MailMainScene *)self dockContainer];
    [dockContainer dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }
}

- (BOOL)_isAccountCreationRestricted
{
  v3 = +[UIApplication sharedApplication];
  accountsProvider = [v3 accountsProvider];
  displayedAccounts = [accountsProvider displayedAccounts];
  v6 = [displayedAccounts count];

  if (v6)
  {
    v7 = +[MailMainScene log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v15 = +[UIApplication sharedApplication];
      accountsProvider2 = [v15 accountsProvider];
      displayedAccounts2 = [accountsProvider2 displayedAccounts];
      *buf = 67109120;
      v20 = [displayedAccounts2 count];
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Displayed account count is %u.", buf, 8u);
    }

    return 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011CAB8;
  block[3] = &unk_10064C7E8;
  block[4] = self;
  if (qword_1006DD0D8 != -1)
  {
    dispatch_once(&qword_1006DD0D8, block);
  }

  v9 = +[MCProfileConnection sharedConnection];
  v10 = [v9 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed];

  if (v10 == 2)
  {
    v11 = +[MailMainScene log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100488E28();
    }

LABEL_11:
    v8 = 1;
LABEL_17:

    return v8;
  }

  v11 = +[UMUserManager sharedManager];
  if (![v11 isMultiUser])
  {
    v8 = 0;
    goto LABEL_17;
  }

  v12 = +[NSUserDefaults em_userDefaults];
  v13 = [v12 BOOLForKey:@"MultiUserAllowAccountSetup"];

  if ((v13 & 1) == 0)
  {
    v11 = +[MailMainScene log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100488DE8();
    }

    goto LABEL_11;
  }

  return 0;
}

- (BOOL)_presentAccountRestrictionAlertIfNecessary
{
  _isAccountCreationRestricted = [(MailMainScene *)self _isAccountCreationRestricted];
  if (_isAccountCreationRestricted)
  {
    accountSetupController = [(MailMainScene *)self accountSetupController];

    if (accountSetupController)
    {
      accountSetupController2 = [(MailMainScene *)self accountSetupController];
      [(MailMainScene *)self setAccountSetupController:0];
      [accountSetupController2 dismissViewControllerAnimated:0 completion:0];
    }

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"ACCOUNT_RESTRICTION" value:&stru_100662A88 table:@"Main"];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ACCOUNT_RESTRICTION_DESCRIPTION"];
    v10 = [v8 localizedStringForKey:v9 value:&stru_100662A88 table:@"Main"];

    v11 = [UIAlertController alertControllerWithTitle:v7 message:v10 preferredStyle:1];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"OK" value:&stru_100662A88 table:@"Main"];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10011CE54;
    v19[3] = &unk_10064FCC0;
    v19[4] = self;
    v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v19];
    [v11 addAction:v14];

    for (i = [(MailMainScene *)self dockContainer];
    {
      presentedViewController = [i presentedViewController];

      if (!presentedViewController)
      {
        break;
      }

      presentedViewController2 = [i presentedViewController];
    }

    [i presentViewController:v11 animated:1 completion:0];
  }

  return _isAccountCreationRestricted;
}

- (void)accountSetupControllerDidChange:(id)change finished:(BOOL)finished
{
  finishedCopy = finished;
  v6 = +[MailMainScene log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = finishedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Account setup controller did change. Finished %{BOOL}d", buf, 8u);
  }

  if (finishedCopy)
  {
    [(MailMainScene *)self setAccountSetupFinished:1];
  }

  v7 = +[UIApplication sharedApplication];
  accountsProvider = [v7 accountsProvider];
  displayedAccounts = [accountsProvider displayedAccounts];
  v10 = [displayedAccounts count] == 0;

  if (!v10)
  {
    postAccountSetupInvocation = [(MailMainScene *)self postAccountSetupInvocation];

    if (postAccountSetupInvocation)
    {
      postAccountSetupInvocation2 = [(MailMainScene *)self postAccountSetupInvocation];
      [postAccountSetupInvocation2 invoke];

      [(MailMainScene *)self setPostAccountSetupInvocation:0];
      [(MailMainScene *)self _requestUserNotificationAuthorization];
    }

    else
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10011D114;
      v13[3] = &unk_10064D9D8;
      v14 = finishedCopy;
      v13[4] = self;
      [(MailMainScene *)self _dismissAccountSetupControllerAnimated:1 completion:v13];
    }
  }
}

- (id)mailboxPickerControllerForActivityRouter:(id)router
{
  mailboxPickerController = [(MailMainScene *)self mailboxPickerController];

  return mailboxPickerController;
}

- (id)splitViewControllerForActivityRouter:(id)router
{
  splitViewController = [(MailMainScene *)self splitViewController];

  return splitViewController;
}

- (BOOL)displayMessage:(id)message fromUserActivityRouter:(id)router
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[MessageDisplayRequest alloc] initWithMessage:messageCopy];
    v7 = [(MailMainScene *)self displayMessage:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)openURL:(id)l fromUserActivityRouter:(id)router completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [MFURLRoutingRequest requestWithURL:l];
  v9 = v8;
  if (handlerCopy)
  {
    future = [v8 future];
    v11 = +[EFScheduler mainThreadScheduler];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10011D4AC;
    v21[3] = &unk_100650988;
    v12 = handlerCopy;
    v22 = v12;
    [future onScheduler:v11 addSuccessBlock:v21];

    future2 = [v9 future];
    v14 = +[EFScheduler mainThreadScheduler];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10011D4C0;
    v19 = &unk_10064C478;
    v20 = v12;
    [future2 onScheduler:v14 addFailureBlock:&v16];
  }

  v15 = [(MailScene *)self urlRouter:v16];
  [v15 routeRequest:v9];
}

- (id)composeControllerForCompositionContext:(id)context forActivityRouter:(id)router
{
  router = [(MailMainScene *)self composeControllerForCompositionContext:context, router];

  return router;
}

- (void)presentComposeController:(id)controller forUserActivityRouter:(id)router
{
  controllerCopy = controller;
  [(MailMainScene *)self _dismissAnyModalViewControllerOrPopoverAnimated:1];
  dockContainer = [(MailMainScene *)self dockContainer];
  [dockContainer presentViewController:controllerCopy animated:1 completion:0];
}

- (void)dismissComposeController:(id)controller forUserActivityRouter:(id)router
{
  controllerCopy = controller;
  dockContainer = [(MailMainScene *)self dockContainer];
  presentedViewController = [dockContainer presentedViewController];

  v7 = controllerCopy;
  if (presentedViewController == controllerCopy)
  {
    dockContainer2 = [(MailMainScene *)self dockContainer];
    [dockContainer2 dismissViewControllerAnimated:1 completion:0];

    v7 = controllerCopy;
  }
}

- (id)messageListViewControllerForActivityRouter:(id)router
{
  messageListViewController = [(MailMainScene *)self messageListViewController];

  return messageListViewController;
}

- (id)alertOverlayControllerForActivityRouter:(id)router
{
  alertOverlayController = [(MailScene *)self alertOverlayController];

  return alertOverlayController;
}

- (MessageListViewController)messageListViewController
{
  mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
  messageListViewController = [mailboxPickerController messageListViewController];

  return messageListViewController;
}

- (void)displayMessageList
{
  splitViewController = [(MailMainScene *)self splitViewController];
  [splitViewController showMessageListViewController:1 animated:0 completion:0];
}

- (void)displayError:(id)error forAccount:(id)account mode:(int64_t)mode
{
  errorCopy = error;
  accountCopy = account;
  selfCopy = self;
  v10 = errorCopy;
  v15 = v10;
  v11 = accountCopy;
  v16 = v11;
  modeCopy = mode;
  v12 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v12 performSyncBlock:&v13];
}

- (void)_dismissAnyModalViewControllerOrPopoverAnimated:(BOOL)animated
{
  animatedCopy = animated;
  accountSetupController = [(MailMainScene *)self accountSetupController];

  if (accountSetupController)
  {
    [(MailMainScene *)self _dismissAccountSetupControllerAnimated:animatedCopy completion:0];
  }

  dockContainer = [(MailMainScene *)self dockContainer];
  [dockContainer popToRootViewControllerAnimated:animatedCopy];
}

- (id)composeAccountIsDefault:(BOOL *)default
{
  lastSelectedAccountID = [(MailMainScene *)self lastSelectedAccountID];

  if (lastSelectedAccountID)
  {
    lastSelectedAccountID2 = [(MailMainScene *)self lastSelectedAccountID];
    firstObject = [MailAccount accountWithUniqueId:lastSelectedAccountID2];

    v8 = +[MailMainScene log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [firstObject ef_publicDescription];
      v27 = 138543362;
      v28 = ef_publicDescription;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using lastSelectedAccount: %{public}@ for compose.", &v27, 0xCu);
    }

    if (firstObject)
    {
LABEL_13:
      v23 = 0;
      if (!default)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
  messageListViewController = [mailboxPickerController messageListViewController];
  conversationViewController = [messageListViewController conversationViewController];

  viewIfLoaded = [conversationViewController viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    targetMessageForBarButtonTriage = [conversationViewController targetMessageForBarButtonTriage];
    mailboxes = [targetMessageForBarButtonTriage mailboxes];
    v17 = [mailboxes ef_map:&stru_100650BC8];
    v18 = [v17 ef_filter:EFIsNotNull];
    ef_notEmpty = [v18 ef_notEmpty];

    firstObject = [ef_notEmpty firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = +[MailMainScene log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription2 = [firstObject ef_publicDescription];
        v27 = 138543362;
        v28 = ef_publicDescription2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using account: %{public}@ from referenceMessage for compose.", &v27, 0xCu);
      }
    }

    else
    {
      v20 = +[MailMainScene log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        v27 = 138543362;
        v28 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using account type is %{public}@.", &v27, 0xCu);
      }
    }

    if (firstObject)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  firstObject = +[MailAccount defaultMailAccountForDelivery];
  v25 = +[MailMainScene log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription3 = [firstObject ef_publicDescription];
    v27 = 138543362;
    v28 = ef_publicDescription3;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Using default account: %{public}@ for compose.", &v27, 0xCu);
  }

  v23 = 1;
  if (default)
  {
LABEL_14:
    *default = v23;
  }

LABEL_15:

  return firstObject;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v9 = [controllerCopy mf_viewControllerBefore:viewControllerCopy];
  v10 = sub_10001BC30(v9, viewControllerCopy, animatedCopy);
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:MailNavigationControllerWillShowViewControllerNotification object:controllerCopy userInfo:v10];

  title = [viewControllerCopy title];
  splitViewController = [(MailMainScene *)self splitViewController];
  [splitViewController _setDisplayModeButtonItemTitle:title];
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v8 = [controllerCopy mf_viewControllerBefore:viewControllerCopy];
  v9 = sub_10001BC30(v8, viewControllerCopy, animatedCopy);

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:MailNavigationControllerDidShowViewControllerNotification object:controllerCopy userInfo:v9];
}

- (BOOL)_sheetDropInteraction:(id)interaction canHandleUserActivityOfType:(id)type
{
  typeCopy = type;
  if ([typeCopy ef_caseInsensitiveIsEqualToString:MSMailActivityHandoffTypeComposeWithStreams])
  {
    v6 = ![(MailMainScene *)self isComposeWindowActive];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_sheetDropInteraction:(id)interaction presentingViewControllerForDroppingUserActivityOfType:(id)type
{
  v4 = [(MailMainScene *)self dockContainer:interaction];

  return v4;
}

- (id)_sheetDropInteraction:(id)interaction viewControllerForDroppingUserActivityOfType:(id)type
{
  v5 = [[_MFMailCompositionContext alloc] initWithComposeType:1];
  v6 = [(MailMainScene *)self composeControllerForCompositionContext:v5];

  return v6;
}

- (void)_sheetDropInteraction:(id)interaction handleUserActivity:(id)activity forPresentedViewController:(id)controller
{
  controllerCopy = controller;
  userInfo = [activity userInfo];
  v8 = [userInfo objectForKeyedSubscript:MSMailActivityHandoffTypeKey];
  v9 = [userInfo objectForKeyedSubscript:MSMailActivityHandoffComposeKeyMessageData];
  v10 = [userInfo objectForKeyedSubscript:MSMailActivityHandoffComposeKeyAutosaveID];
  v11 = [userInfo objectForKeyedSubscript:MSMailActivityHandoffComposeKeySubject];
  if ([v9 length] && objc_msgSend(v8, "isEqualToString:", MSMailActivityHandoffTypeComposeSansStreams))
  {
    v12 = [[_MFMailCompositionContext alloc] initWithComposeType:2 RFC822Data:v9];
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v10)
    {
      v12 = 0;
      goto LABEL_10;
    }

    v13 = [userInfo objectForKeyedSubscript:MSMailActivityHandoffComposeKeyOriginalMessageObjectID];
    v14 = [EMObjectID objectIDFromSerializedRepresentation:v13];
    v15 = [_MFMailCompositionContext alloc];
    daemonInterface = [(MailScene *)self daemonInterface];
    messageRepository = [daemonInterface messageRepository];
    v12 = [v15 initRecoveredAutosavedMessageWithIdentifier:v10 draftSubject:v11 messageRepository:messageRepository originalMessageObjectID:v14];

    if (!v12)
    {
      goto LABEL_10;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy _setCompositionContext:v12];
  }

LABEL_10:
}

- (MFMailPopoverManager)popoverManager
{
  if (pthread_main_np() != 1)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MailMainScene.m" lineNumber:2168 description:@"Current thread must be main"];
  }

  delegate = [(MailMainScene *)self delegate];
  window = [delegate window];
  if (window)
  {
    v6 = [MFMailPopoverManager managerForWindow:window createIfNeeded:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateNavigationBarTitles
{
  splitViewController = [(MailMainScene *)self splitViewController];
  v3 = [splitViewController viewControllerForColumn:0];
  if (MUISolariumFeatureEnabled() && +[UIDevice mf_isPadIdiom])
  {
    traitCollection = [splitViewController traitCollection];
    v5 = [traitCollection horizontalSizeClass] == 2;
  }

  else
  {
    v5 = 0;
  }

  masterNavigationController = [(MailMainScene *)self masterNavigationController];
  [masterNavigationController updateNavigationBarPrefersLargeTitles:v5 ^ 1];

  [v3 updateNavigationBarPrefersLargeTitles:v5 ^ 1];
  mailboxPickerController = [(MailMainScene *)self mailboxPickerController];
  [mailboxPickerController updateEditButtonPositionAndNavigationBarTitleHidden:v5];
}

@end