@interface MailMainScene
+ (NSArray)menuCommands;
+ (id)log;
- (BOOL)_isAccountCreationRestricted;
- (BOOL)_isDisplayingAccountSetup;
- (BOOL)_isMailboxListVisible;
- (BOOL)_presentAccountRestrictionAlertIfNecessary;
- (BOOL)_presentInitialSetupControllersIfNecessary;
- (BOOL)_sheetDropInteraction:(id)a3 canHandleUserActivityOfType:(id)a4;
- (BOOL)_shouldPresentMailTrackingProtectionOnboarding;
- (BOOL)_shouldPresentOnboarding;
- (BOOL)_shouldPresentWelcomeOnboarding;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)displayMessage:(id)a3;
- (BOOL)displayMessage:(id)a3 fromUserActivityRouter:(id)a4;
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
- (id)_sheetDropInteraction:(id)a3 presentingViewControllerForDroppingUserActivityOfType:(id)a4;
- (id)_sheetDropInteraction:(id)a3 viewControllerForDroppingUserActivityOfType:(id)a4;
- (id)_statusStringForCNAuthorizationStatus:(int64_t)a3;
- (id)activeViewController;
- (id)alertOverlayControllerForActivityRouter:(id)a3;
- (id)composeAccountIsDefault:(BOOL *)a3;
- (id)composeControllerForCompositionContext:(id)a3;
- (id)composeControllerForCompositionContext:(id)a3 forActivityRouter:(id)a4;
- (id)extendedLaunchTracker;
- (id)mailboxPickerControllerForActivityRouter:(id)a3;
- (id)messageListViewControllerForActivityRouter:(id)a3;
- (id)splitViewControllerForActivityRouter:(id)a3;
- (id)stateRestorationActivityForMailScene;
- (unint64_t)urlRouter:(id)a3 decidePolicyForRoutingRequest:(id)a4;
- (void)_beginRestoringPreviousDraftIfPossible;
- (void)_cleanUpDeprecatedOnboarding;
- (void)_composeCommandInvoked:(id)a3;
- (void)_dismissAccountSetupControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)_dismissAnyModalViewControllerOrPopoverAnimated:(BOOL)a3;
- (void)_handleAccountsChanged:(id)a3;
- (void)_mailAppleIntelligenceWelcomeViewControllerDidFinish:(id)a3;
- (void)_mailTrackingProtectionViewControllerDidFinish:(id)a3;
- (void)_openMailboxQuicklyInvoked:(id)a3;
- (void)_prepareForAppleIntelligenceOnboardingIfNecessary;
- (void)_presentAccountSetupController;
- (void)_presentOnboarding;
- (void)_requestContactStoreAccessIfNeeded;
- (void)_requestUserNotificationAuthorization;
- (void)_resetSelectedAccounts;
- (void)_saveCompositionAsDraft:(id)a3;
- (void)_sendOnboardingAnalyticsDidShowOnboarding:(BOOL)a3 wasPreviouslyBlockingRemoteContent:(BOOL)a4;
- (void)_sendOnboardingAnalyticsDidShowOnboarding:(BOOL)a3 wasPreviouslyBlockingRemoteContent:(BOOL)a4 optedIn:(BOOL)a5;
- (void)_setupMailViewHierarchyWithState:(id)a3;
- (void)_sheetDropInteraction:(id)a3 handleUserActivity:(id)a4 forPresentedViewController:(id)a5;
- (void)_showComposeWithContext:(id)a3 animated:(BOOL)a4 initialTitle:(id)a5 presentationSource:(id)a6 draftOriginalMessageID:(id)a7 completionBlock:(id)a8;
- (void)_updateNavigationBarTitles;
- (void)accountSetupControllerDidChange:(id)a3 finished:(BOOL)a4;
- (void)closeOpenMailboxQuicklyViewController;
- (void)composeButtonLongPressed:(id)a3;
- (void)composeButtonPressed:(id)a3;
- (void)didFailToContinueUserActivityWithType:(id)a3 error:(id)a4;
- (void)dismissComposeController:(id)a3 forUserActivityRouter:(id)a4;
- (void)dismissComposeViewController:(id)a3 animated:(BOOL)a4 afterSending:(BOOL)a5;
- (void)displayError:(id)a3 forAccount:(id)a4 mode:(int64_t)a5;
- (void)displayMessageList;
- (void)dockContainer:(id)a3 didRestoreViewController:(id)a4;
- (void)dockContainer:(id)a3 dockedViewControllerWithIdentifier:(id)a4;
- (void)dockContainer:(id)a3 dockedViewWasTornOffWithIdentifier:(id)a4;
- (void)dockContainer:(id)a3 isVisible:(BOOL)a4;
- (void)hasDelayedMessagesDidChange:(BOOL)a3;
- (void)mailComposeDeliveryController:(id)a3 didMoveCancelledMessageToDrafts:(id)a4 draftMailboxObjectID:(id)a5;
- (void)mailComposeDeliveryControllerDidAttemptToSaveDraft:(id)a3 account:(id)a4 result:(unint64_t)a5;
- (void)mailComposeDeliveryControllerDidAttemptToSend:(id)a3 outgoingMessageDelivery:(id)a4 result:(id)a5;
- (void)mailComposeDeliveryControllerWillAttemptToSend:(id)a3;
- (void)mailSceneContinueUserActivity:(id)a3;
- (void)mailSceneDidBecomeActive;
- (void)mailSceneDidConnectWithOptions:(id)a3;
- (void)mailSceneDidDisconnect;
- (void)mailSceneDidEnterBackground;
- (void)mailSceneDidFailToContinueUserActivityWithType:(id)a3 error:(id)a4;
- (void)mailScenePerformActionForShortcutItem:(id)a3 completionHandler:(id)a4;
- (void)mailSceneWillContinueUserActivityWithType:(id)a3;
- (void)mailSceneWillEnterForeground;
- (void)mailSceneWillResignActive;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)openMailboxQuicklyDidSelectMailboxWithIdentifier:(id)a3;
- (void)openURL:(id)a3 fromUserActivityRouter:(id)a4 completionHandler:(id)a5;
- (void)presentComposeController:(id)a3 forUserActivityRouter:(id)a4;
- (void)refreshOpenMailboxQuicklyItems;
- (void)resumeCompositionOfDraft:(id)a3 legacyDraft:(id)a4;
- (void)selectDefaultMailbox;
- (void)setSelectedAccounts:(id)a3;
@end

@implementation MailMainScene

- (id)extendedLaunchTracker
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 extendedLaunchTracker];

  return v3;
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

    v5 = 0;
  }

  else if ([(MailMainScene *)self _shouldPresentWelcomeOnboarding])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(MailMainScene *)self _shouldPresentMailTrackingProtectionOnboarding];
  }

  return v5;
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E7F8;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD0C0 != -1)
  {
    dispatch_once(&qword_1006DD0C0, block);
  }

  v2 = qword_1006DD0B8;

  return v2;
}

- (void)_beginRestoringPreviousDraftIfPossible
{
  v3 = [(MailMainScene *)self session];
  v4 = [v3 mf_activeDraft];

  v5 = [v4 identifier];
  v6 = [v4 originalMessageIdentifier];
  if (v5)
  {
    v7 = +[MailMainScene log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 ef_publicDescription];
      *buf = 138543362;
      v32 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Beginning validation of prevously presented draft: %{public}@", buf, 0xCu);
    }

    v9 = +[EFPromise promise];
    v10 = +[EFScheduler globalAsyncScheduler];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100114E5C;
    v27[3] = &unk_10064C6B0;
    v28 = v5;
    v11 = v4;
    v29 = v11;
    v12 = v9;
    v30 = v12;
    [v10 performBlock:v27];

    v13 = [v12 future];
    objc_initWeak(buf, self);
    v14 = +[EFScheduler mainThreadScheduler];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100115008;
    v23[3] = &unk_100650898;
    v24 = v11;
    v25 = self;
    v26 = v6;
    [v13 onScheduler:v14 addSuccessBlock:v23];

    v15 = +[EFScheduler mainThreadScheduler];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001152E0;
    v21[3] = &unk_10064DEA8;
    objc_copyWeak(&v22, buf);
    [v13 onScheduler:v15 addFailureBlock:v21];

    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10011535C;
    v19 = &unk_10064C838;
    objc_copyWeak(&v20, buf);
    [v13 always:&v16];
    [(MailMainScene *)self setDraftRestorationFuture:v13, v16, v17, v18, v19];
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
  v3 = [(MailMainScene *)self errorHandler];
  [v3 reset];

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
      v7 = [(MailMainScene *)self onboardingNavigationController];
      if (v7)
      {
      }

      else
      {
        v8 = [(MailMainScene *)self mailAppleIntelligenceWelcomeOnboardingViewController];

        if (!v8)
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

    v6 = [(MailMainScene *)self errorHandler];
    [v6 setPresentationDelegate:self];

    errorHandler = self->_errorHandler;
  }

  return errorHandler;
}

- (void)selectDefaultMailbox
{
  v19 = [(MailMainScene *)self mailboxPickerController];
  v3 = [(MailMainScene *)self _shouldPresentOnboarding];
  v4 = [(MailMainScene *)self _defaultAccountsToSelect];
  if ([v4 count])
  {
    v5 = [(MailMainScene *)self activationState];
    if (v5 != 2)
    {
      [(MailMainScene *)self _requestContactStoreAccessIfNeeded];
    }

    v6 = [(MailMainScene *)self accountSetupController];
    if (v6)
    {
      v7 = ![(MailMainScene *)self accountSetupFinished];
      if (v5 == 2)
      {
        LOBYTE(v7) = 0;
      }

      if ((v7 & 1) == 0)
      {

LABEL_15:
        v11 = [(MailMainScene *)self accountSetupController];
        [(MailMainScene *)self accountSetupControllerDidChange:v11 finished:[(MailMainScene *)self accountSetupFinished]];

LABEL_17:
        if (v5 != 2 || (-[MailMainScene favoritesManager](self, "favoritesManager"), v12 = objc_claimAutoreleasedReturnValue(), [v12 lastSelectedItem], v13 = objc_claimAutoreleasedReturnValue(), v12, !v13) || (-[MailMainScene favoritesManager](self, "favoritesManager"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "setLastSelectedItem:", 0), v14, v15 = objc_msgSend(v19, "selectFavoriteItem:animated:", v13, 0), v13, (v15 & 1) == 0))
        {
          if ([v4 count] < 2)
          {
            v16 = [v4 anyObject];
            v17 = [v19 favoriteItemSelectionTarget];
            v18 = [v16 primaryMailboxUid];
            [v17 selectMailbox:v18 item:0 animated:0];
          }

          else
          {
            v16 = [v19 favoriteItemSelectionTarget];
            [v16 selectCombinedMailboxWithType:7 item:0 animated:0];
          }
        }

        goto LABEL_24;
      }

      v9 = [(MailMainScene *)self accountSetupController];
      v10 = [v9 accountSetupInProgress];

      if ((v10 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (![(MailMainScene *)self _isDisplayingAccountSetup])
    {
      if (v3)
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
    v8 = [v19 favoriteItemSelectionTarget];
    [v8 selectAccount:0 item:0 indexPath:0 animated:0];

    [(MailMainScene *)self _dismissAnyModalViewControllerOrPopoverAnimated:0];
    [(MailMainScene *)self _presentAccountSetupController];
  }

LABEL_24:
}

- (id)_defaultAccountsToSelect
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 accountsProvider];

  v5 = [v4 displayedAccounts];
  if (![v5 count])
  {
    v8 = objc_alloc_init(NSSet);
    goto LABEL_12;
  }

  v6 = [(MailMainScene *)self favoritesManager];
  v7 = [v6 lastSelectedItem];

  if (!v7)
  {
    goto LABEL_10;
  }

  if (([v7 type] & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    v9 = [v7 account];
    if (v9)
    {
      v10 = [v7 account];
      v11 = [v5 containsObject:v10];

      if (v11)
      {
        v12 = [v7 account];
        v8 = [NSSet setWithObject:v12];

        if (v8)
        {
          goto LABEL_11;
        }
      }
    }

    goto LABEL_10;
  }

  v8 = v5;
  if (!v8)
  {
LABEL_10:
    v13 = [v4 orderedAccounts];
    v14 = [v13 firstObject];
    v8 = [NSSet setWithObject:v14];
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
  v3 = [(MailMainScene *)self accountSetupController];
  if (v3)
  {
    v4 = [(MailMainScene *)self dockContainer];
    v5 = [v4 presentedViewController];
    v6 = [(MailMainScene *)self accountSetupController];
    v7 = v5 == v6;
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
  v2 = [(MailMainScene *)self mailboxPickerController];
  v3 = [v2 messageListViewController];
  v4 = [v3 mailboxes];
  v5 = v4;
  v6 = &__NSArray0__struct;
  if (v4)
  {
    v6 = v4;
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
  v2 = [(MailMainScene *)self mailboxPickerController];
  v3 = [v2 messageListViewController];

  v4 = [v3 view];
  v5 = [v4 window];

  if (v5)
  {
    v6 = [v3 mailboxes];
    v7 = v6;
    v8 = &__NSArray0__struct;
    if (v6)
    {
      v8 = v6;
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
    v5 = [v4 isPad];

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"TITLE_NEW_MESSAGE" value:&stru_100662A88 table:@"Main"];
    v8 = [MFMailMenuCommand shortcutWithInput:@"n" flags:0x100000 repeatable:1 menu:2 action:"_composeCommandInvoked:" title:v7 systemImageName:MFImageGlyphMenuBarNewMessage plist:0 position:&off_100674150];
    [v3 addObject:v8];

    if (_os_feature_enabled_impl())
    {
      v9 = _EFLocalizedString();
      v10 = MFImageGlyphMenuBarOpenMailboxQuickly;
      if (!v5)
      {
        v10 = 0;
      }

      v11 = [MFMailMenuCommand shortcutWithInput:@"o" flags:1179648 repeatable:1 menu:14 action:"_openMailboxQuicklyInvoked:" title:v9 systemImageName:v10 plist:0];
      [v3 addObject:v11];
    }

    v12 = +[EFDevice currentDevice];
    v13 = [v12 isInternal];

    if (v13)
    {
      v14 = [UIKeyCommand keyCommandWithInput:@"d" modifierFlags:1966080 action:"debugShortcutInvoked:"];
      [v14 setRepeatBehavior:2];
      v15 = _EFLocalizedString();
      [v14 setTitle:v15];

      if (v5)
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
  v4 = [v3 accountsProvider];
  v5 = [v4 displayedAccounts];
  v6 = [v5 count];

  v7 = [(MailMainScene *)self _shouldPresentOnboarding];
  v8 = 0;
  if (v6 && (v7 & 1) == 0)
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

  v9 = [(MailMainScene *)self messageListViewController];
  [v9 resumeRefreshAnimationIfNecessary];
}

- (BOOL)isComposeWindowActive
{
  v2 = [(MailMainScene *)self dockContainer];
  v3 = [v2 activeViewController];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 isBeingDismissed] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)mailSceneDidConnectWithOptions:(id)a3
{
  v73.receiver = self;
  v73.super_class = MailMainScene;
  v72 = a3;
  [(MailScene *)&v73 mailSceneDidConnectWithOptions:?];
  v4 = [(MailMainScene *)self session];
  [v4 mf_setIsMain:1];

  v5 = [(MailMainScene *)self extendedLaunchTracker];
  [v5 observeScene:self];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_handleAccountsChanged:" name:ECMailAccountsDidChangeNotification object:0];

  v7 = [MFMailComposeControllerViewDelegateHandler alloc];
  v8 = [(MailScene *)self daemonInterface];
  v9 = [(MFMailComposeControllerViewDelegateHandler *)v7 initWithUICoordinator:self daemonInterface:v8];
  [(MailMainScene *)self setComposeViewDelegateHandler:v9];

  v10 = [MFUserActivityRouter alloc];
  v11 = [(MailScene *)self daemonInterface];
  v12 = [v11 messageRepository];
  v13 = [(MFUserActivityRouter *)v10 initWithDelegate:self messageRepository:v12];
  [(MailMainScene *)self setUserActivityRouter:v13];

  v14 = [_TtC10MobileMail18ComposeUndoHandler alloc];
  v15 = [(MailScene *)self daemonInterface];
  v16 = [v15 outgoingMessageRepository];
  v17 = [(ComposeUndoHandler *)v14 initWithOutgoingMessageRepository:v16];
  [(MailMainScene *)self setComposeUndoHandler:v17];

  v18 = [(MailMainScene *)self session];
  v70 = [v18 stateRestorationActivity];

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
    v20 = v70;
  }

  v71 = v20;
  v21 = [v20 activityType];
  v22 = [v21 isEqualToString:@"com.apple.mobilemail.state.mailmainscene"];

  v23 = [v72 userActivities];
  v24 = [v23 count];

  v25 = [v72 URLContexts];
  v26 = [v25 count];

  v27 = [v72 shortcutItem];
  v68 = v24 != 0;
  v69 = v26 != 0;
  v67 = v27 != 0;

  v28 = +[UIApplication sharedApplication];
  v29 = [v28 accountsProvider];
  v30 = [v29 displayedAccounts];
  v31 = [v30 count];

  v32 = [(MailMainScene *)self _shouldPresentOnboarding];
  v33 = +[MailMainScene log];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    [(MailMainScene *)self session];
    v63 = v65 = v22;
    v66 = [v63 persistentIdentifier];
    v64 = v31;
    v34 = v31 != 0;
    v35 = v27 != 0;
    v36 = v26 != 0;
    v37 = v24 != 0;
    v38 = [(MailMainScene *)self session];
    v39 = [v38 mf_activeDraft];
    v40 = [v39 ef_publicDescription];
    *buf = 138414082;
    v76 = v66;
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
    v88 = v40;
    v89 = 1024;
    v90 = v32 ^ 1;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Connection conditions: sessionID=%@ hasRestorationActivity=%d isExpectingOtherActivity=%d isExpectingURLs=%d isExpectingAppShortcut=%d hasAccounts=%d activeDraft=%@ hasShownOnboarding=%{BOOL}d", buf, 0x3Au);

    v31 = v64;
  }

  v41 = v31 != 0;

  v42 = v68 || v69 || v67;
  if (v42 & 1 | ((v41 & v22 & 1) == 0) | v32 & 1)
  {
    v43 = 0;
  }

  else
  {
    v44 = [MailMainSceneState alloc];
    v45 = [v71 userInfo];
    v46 = [(MailScene *)self daemonInterface];
    v43 = [(MailMainSceneState *)v44 initWithDictionary:v45 daemonInterface:v46];
  }

  [(MailMainScene *)self _setupMailViewHierarchyWithState:v43];
  v47 = [(MailMainScene *)self session];
  v48 = [v47 mf_activeDraft];

  if ((v42 | !v41))
  {
    v49 = [v48 identifier];

    if (v49)
    {
      v50 = +[MailMainScene log];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [v48 ef_publicDescription];
        *buf = 138412290;
        v76 = v51;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "A draft (%@) was previously presented in this scene but we're launching to some action. Will recover to the dock...", buf, 0xCu);
      }

      v52 = [(MailMainScene *)self session];
      [v52 mf_setActiveDraft:0];

      v53 = +[UIApplication sharedApplication];
      v54 = [v53 dockPersistence];
      [v54 recoverAbandonedDrafts];
    }
  }

  else
  {
    [(MailMainScene *)self _beginRestoringPreviousDraftIfPossible];
  }

  v55 = [NSPredicate predicateWithFormat:@"NOT (self BEGINSWITH %@)", MSMailActivityHandoffTypeQuickLook];
  v74[0] = v55;
  v56 = [NSPredicate predicateWithFormat:@"NOT (self BEGINSWITH %@)", MSMailActivityHandoffTypeComposeWithStreams];
  v74[1] = v56;
  v57 = [NSArray arrayWithObjects:v74 count:2];
  v58 = [NSCompoundPredicate andPredicateWithSubpredicates:v57];
  v59 = [(MailMainScene *)self activationConditions];
  [v59 setCanActivateForTargetContentIdentifierPredicate:v58];

  v60 = +[EFScheduler globalAsyncScheduler];
  [v60 performBlock:&stru_100650870];

  v61 = [(MailScene *)self daemonInterface];
  v62 = [v61 outgoingMessageRepository];
  [v62 addOutgoingMessageRepositoryObserver:self];
}

- (void)_setupMailViewHierarchyWithState:(id)a3
{
  v4 = a3;
  v5 = +[MFMailMessageLibrary defaultInstance];
  v6 = [v5 persistence];
  v49 = [v6 conversationPersistence];

  v7 = +[UIApplication sharedApplication];
  v50 = [v7 accountsProvider];

  v8 = [FavoritesManager alloc];
  v9 = +[UIApplication sharedApplication];
  v10 = [v9 favoritesPersistence];
  v11 = [v4 favoritesManagerState];
  v12 = [(FavoritesManager *)v8 initWithFavoritesPersistence:v10 collections:v11 conversationSubscriptionProvider:v49];
  [(MailMainScene *)self setFavoritesManager:v12];

  v13 = [MailboxPickerOutlineController alloc];
  v14 = [(MailMainScene *)self favoritesManager];
  v15 = [(MailboxPickerOutlineController *)v13 initWithMainScene:self favoritesManager:v14 accountsProvider:v50];
  [(MailMainScene *)self setMailboxPickerController:v15];

  v16 = [[MailNavigationController alloc] initWithNavigationBarClass:0 toolbarClass:0];
  v17 = [(MailMainScene *)self mailboxPickerController];
  v61 = v17;
  v18 = [NSArray arrayWithObjects:&v61 count:1];
  [(MailNavigationController *)v16 setViewControllers:v18];

  [(MailNavigationController *)v16 setToolbarHidden:1];
  v19 = [(MailNavigationController *)v16 navigationBar];
  [v19 setPrefersLargeTitles:1];

  v20 = [[MailNavigationController alloc] initWithNavigationBarClass:0 toolbarClass:0];
  v21 = [(MailMainScene *)self mailboxPickerController];
  v22 = [v21 messageListViewController];
  v60 = v22;
  v23 = [NSArray arrayWithObjects:&v60 count:1];
  [(MailNavigationController *)v20 setViewControllers:v23];

  [(MailNavigationController *)v20 setDelegate:self];
  [(MailNavigationController *)v20 configureBarsForMessageList];
  [(MailMainScene *)self setMasterNavigationController:v20];
  v24 = [(MailMainScene *)self mailboxPickerController];
  v25 = [v24 messageListViewController];

  v47 = [v25 conversationViewController];
  v48 = [[MailDetailNavigationController alloc] initWithRootViewController:v47];
  v26 = [[MailSplitViewController alloc] initWithMailboxPickerNavigationController:v16 messageListNavigationController:v20 mailDetailNavigationController:v48 scene:self];
  [(MailMainScene *)self setSplitViewController:v26];

  v27 = [DockContainerViewController alloc];
  v28 = +[UIApplication sharedApplication];
  v29 = [v28 dockPersistence];
  v30 = [(MailMainScene *)self splitViewController];
  v31 = [(DockContainerViewController *)v27 initWithPersistence:v29 scene:self rootViewController:v30];

  [(DockContainerViewController *)v31 setDelegate:self];
  [(MailMainScene *)self setDockContainer:v31];
  [(MailMainScene *)self setShouldSelectDefaultMailboxOnResume:v4 == 0];
  if (v4)
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
      v34 = [v4 ef_publicDescription];
      *buf = 138543362;
      v59 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "State: %{public}@", buf, 0xCu);
    }

    v35 = [v4 messageListStateFuture];
    [v25 restoreState:v35];
    v36 = +[EFScheduler mainThreadScheduler];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100114C48;
    v56[3] = &unk_10064D028;
    v56[4] = self;
    [v35 onScheduler:v36 addFailureBlock:v56];

    v37 = [(MailMainScene *)self splitViewController];
    [v37 restorePrimaryNavigationState:{objc_msgSend(v4, "primaryNavState")}];

    if ([v4 detailNavState])
    {
      v38 = [v4 conversationViewStateFuture];
      v39 = [v25 conversationViewController];
      [v39 restoreState:v38];

      objc_initWeak(buf, self);
      v40 = +[EFScheduler mainThreadScheduler];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100114CB0;
      v53[3] = &unk_10064FB30;
      objc_copyWeak(&v55, buf);
      v54 = v25;
      [v38 onScheduler:v40 addFailureBlock:v53];

      objc_destroyWeak(&v55);
      objc_destroyWeak(buf);
    }
  }

  v41 = [[_UISheetDropInteraction alloc] initWithDelegate:self];
  v42 = [(MailMainScene *)self delegate];
  v43 = [v42 window];

  [v43 addInteraction:v41];
  if (MUISolariumFeatureEnabled() && +[UIDevice mf_isPadIdiom])
  {
    [(MailMainScene *)self _updateNavigationBarTitles];
    objc_initWeak(buf, self);
    v44 = [(MailMainScene *)self splitViewController];
    v57 = objc_opt_class();
    v45 = [NSArray arrayWithObjects:&v57 count:1];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100114DF8;
    v51[3] = &unk_100650498;
    objc_copyWeak(&v52, buf);
    v46 = [v44 registerForTraitChanges:v45 withHandler:v51];

    objc_destroyWeak(&v52);
    objc_destroyWeak(buf);
  }
}

- (BOOL)displayMessage:(id)a3
{
  v4 = a3;
  v5 = [(MailMainScene *)self currentMessageDisplayRequest];
  if (v5)
  {
    v6 = [(MailMainScene *)self currentMessageDisplayRequest];
    v7 = [v6 hasFinished];

    if ((v7 & 1) == 0)
    {
      v8 = [MFError errorWithDomain:MFMessageErrorDomain code:1028 localizedDescription:0];
      v9 = [(MailMainScene *)self currentMessageDisplayRequest];
      [v9 requestAbortedWithError:v8];
    }
  }

  v10 = [(MailMainScene *)self messageListViewController];
  v11 = [v10 conversationViewController];

  v12 = [v4 message];
  v13 = [v11 containsMessage:v12];

  if (!v13)
  {
    [(MailMainScene *)self setCurrentMessageDisplayRequest:v4];
    v19 = [v4 finishFuture];
    objc_initWeak(location, self);
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_100115ED0;
    v89[3] = &unk_10064C838;
    objc_copyWeak(&v90, location);
    v68 = v19;
    [v19 always:v89];
    [v4 message];
    v85 = 0;
    v86 = &v85;
    v87 = 0x2020000000;
    v71 = v88 = 0;
    v20 = [v71 mailboxes];
    v69 = v20;
    v21 = [v20 ef_firstObjectPassingTest:&stru_1006508B8];
    v67 = v21;
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = [v20 firstObject];
    }

    v23 = v22;
    v70 = [(MailMainScene *)self mailboxPickerController];
    v24 = [v23 account];
    v66 = v24;
    if (!v71 || !v23 || !v24)
    {
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_10011620C;
      v72[3] = &unk_10064F8D8;
      v74 = &v85;
      v73 = v4;
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
    [v70 dismissAndUnfocus];
    if ([v23 type] == 5)
    {
      v25 = +[UIApplication sharedApplication];
      v26 = [v25 mailboxProvider];
      v27 = [v71 mailboxObjectIDs];
      v28 = [v27 firstObject];
      v29 = [v26 legacyMailboxForObjectID:v28];
      v65 = [MFComposeMailMessage legacyMessageWithMessage:v71 mailboxUid:v29];

      v30 = [[_MFMailCompositionContext alloc] initDraftRestoreOfMessage:v71 legacyMessage:v65];
      [(MailMainScene *)self showComposeWithContext:v30 animated:0 initialTitle:0 presentationSource:0 completionBlock:0];
      v82[0] = _NSConcreteStackBlock;
      v82[1] = 3221225472;
      v82[2] = sub_100115F44;
      v82[3] = &unk_10064C7E8;
      v83 = v4;
      v31 = +[EFScheduler mainThreadScheduler];
      [v31 performBlock:v82];

      v32 = v83;
LABEL_51:

      *(v86 + 24) = 1;
      goto LABEL_52;
    }

    v34 = [(MailMainScene *)self selectedAccounts];
    v35 = [v34 count];

    v36 = [v69 ef_firstObjectPassingTest:&stru_1006508D8];

    v38 = v35 > 1 && v36 != 0;
    v62 = v38;
    v65 = [v71 flags];
    v39 = [v71 isVIP];
    v40 = [v65 flagged];
    v41 = [(MailMainScene *)self favoritesManager];
    v64 = [v41 lastSelectedItem];

    v42 = [(MailMainScene *)self favoritesManager];
    v63 = [v42 mailboxesCollection];

    v43 = [v64 sourceType];
    v44 = [(MailMainScene *)self splitViewController];
    v45 = [v44 viewControllerForColumn:0];

    v46 = 0;
    if (!v36 || ((v39 | v40) & 1) == 0)
    {
      v30 = v64;
LABEL_46:
      v56 = [v45 popViewControllerAnimated:0];
      v57 = v62;
      v58 = v62 ^ 1;
      if (v46)
      {
        v58 = 1;
      }

      if ((v58 & 1) == 0)
      {
        v57 = [v63 isShowingAllInboxes];
      }

      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_100116024;
      v75[3] = &unk_100650900;
      v76 = v70;
      v81 = v57;
      v77 = v71;
      v80 = v46;
      v23 = v23;
      v78 = v23;
      v79 = v4;
      v59 = +[EFScheduler mainThreadScheduler];
      [v59 performBlock:v75];

      v32 = v63;
      goto LABEL_51;
    }

    v30 = v64;
    if (v39)
    {
      v47 = [v63 isShowingSharedMailboxOfType:1];
      if (v47 & 1 | ((v40 & 1) == 0))
      {
        v46 = v47;
        goto LABEL_32;
      }
    }

    else if (!v40)
    {
      LOBYTE(v47) = 0;
      v46 = 0;
      goto LABEL_32;
    }

    v47 = [v63 isShowingSharedMailboxOfType:2];
    if (v47)
    {
      v46 = 2;
    }

    else
    {
      v46 = 0;
    }

LABEL_32:
    if (v35 >= 2 && v43)
    {
      goto LABEL_46;
    }

    if (v35 >= 2 && !v43)
    {
      v46 = 0;
      goto LABEL_46;
    }

    v48 = v47 ^ 1;
    if (v43)
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_46;
    }

    v61 = [v64 representingMailbox];
    v49 = [v45 viewControllers];
    v50 = [v70 messageListViewController];
    v51 = [v49 containsObject:v50];
    if (v51)
    {
      v52 = sub_100115F54(v51, v61, v69);

      if (v52)
      {
        v53 = +[UIApplication sharedApplication];
        v54 = [v53 mailboxProvider];
        v55 = [v54 mailboxFromLegacyMailbox:v61];

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
    v54 = [v53 accountsProvider];
    v62 = [v54 isDisplayingMultipleAccounts];
    goto LABEL_45;
  }

  v14 = [(MailMainScene *)self activationState];
  v15 = [(MailMainScene *)self splitViewController];
  [v15 showConversationViewControllerAnimated:v14 == 0 completion:0];

  v16 = [v4 message];
  [v11 scrollToMessageIfPossible:v16 animated:v14 == 0 pin:1];

  v17 = +[NSError ef_cancelledError];
  [v4 requestAbortedWithError:v17];

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

- (NSSet)statusMailboxes
{
  if ([(MailMainScene *)self _isMailboxListVisible])
  {
    v3 = [(MailMainScene *)self favoritesManager];
    v4 = [v3 visibleItemsOfType:3];
    v5 = [v4 ef_flatMap:&stru_100650940];
    v6 = [v5 ef_filter:EFIsNotNull];

    v7 = +[UIApplication sharedApplication];
    v8 = [v7 mailboxProvider];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10011652C;
    v19[3] = &unk_10064FEA8;
    v9 = v8;
    v20 = v9;
    v10 = [v6 ef_compactMap:v19];
    v11 = [NSSet setWithArray:v10];
  }

  else
  {
    v12 = [(MailMainScene *)self mailboxPickerController];
    v13 = [v12 messageListViewController];
    v14 = [v13 mailboxes];
    v15 = v14;
    v16 = &__NSArray0__struct;
    if (v14)
    {
      v16 = v14;
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
    v3 = [(MailMainScene *)self dockContainer];
    v4 = [v3 activeViewController];

    v5 = v4;
    v6 = [v5 _mailComposeController];
    [v6 finishEnteringRecipients];

    if ([v5 isQuickReply])
    {
      v7 = [v5 _mailComposeController];
      [v7 backUpDraft];
    }
  }

  v8 = [(MailMainScene *)self messageListViewController];
  [v8 suspendRefreshAnimationIfNecessary];
}

- (void)mailSceneDidEnterBackground
{
  v4.receiver = self;
  v4.super_class = MailMainScene;
  [(MailScene *)&v4 mailSceneDidEnterBackground];
  [(MailMainScene *)self setShouldDeferUserNotificationAuthorizationRequests:0];
  v3 = [(MailMainScene *)self errorHandler];
  [v3 reset];
}

- (void)mailSceneDidDisconnect
{
  v6.receiver = self;
  v6.super_class = MailMainScene;
  [(MailScene *)&v6 mailSceneDidDisconnect];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [(MailScene *)self daemonInterface];
  v5 = [v4 outgoingMessageRepository];
  [v5 removeOutgoingMessageRepositoryObserver:self];
}

- (void)mailSceneWillContinueUserActivityWithType:(id)a3
{
  v8 = a3;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 freeSpaceMonitor];
  if ([v5 isFreeSpaceCritical])
  {
  }

  else
  {
    v6 = [(MailMainScene *)self _presentInitialSetupControllersIfNecessary];

    if (v6)
    {
      goto LABEL_6;
    }

    v7 = [(MailMainScene *)self dockContainer];
    [v7 popToRootViewControllerAnimated:1];

    v4 = [(MailMainScene *)self userActivityRouter];
    [v4 routeWillContinueUserActivityWithType:v8];
  }

LABEL_6:
}

- (void)mailSceneContinueUserActivity:(id)a3
{
  v7 = a3;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 freeSpaceMonitor];
  if ([v5 isFreeSpaceCritical])
  {
  }

  else
  {
    v6 = [(MailMainScene *)self _presentInitialSetupControllersIfNecessary];

    if (v6)
    {
      goto LABEL_6;
    }

    v4 = [(MailMainScene *)self userActivityRouter];
    [v4 routeUserActivity:v7];
  }

LABEL_6:
}

- (void)mailSceneDidFailToContinueUserActivityWithType:(id)a3 error:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(MailMainScene *)self userActivityRouter];
  [v7 routeUserActivityFailedWithType:v8 error:v6];
}

- (void)mailScenePerformActionForShortcutItem:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[UIApplication sharedApplication];
  v9 = [v8 freeSpaceMonitor];
  if ([v9 isFreeSpaceCritical])
  {
    goto LABEL_12;
  }

  v10 = [(MailMainScene *)self _presentInitialSetupControllersIfNecessary];

  if ((v10 & 1) == 0)
  {
    v8 = [v6 type];
    v11 = [(MailMainScene *)self mailboxPickerController];
    v9 = [v11 messageListViewController];

    if ([v8 isEqualToString:@"com.apple.mobilemail.NewMessageApplicationShortcut"])
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100116DC4;
      v21[3] = &unk_1006509B0;
      v21[4] = self;
      v22 = v7;
      [UIViewController _performWithoutDeferringTransitions:v21];
      v12 = &v22;
    }

    else
    {
      if ([v8 isEqualToString:@"com.apple.mobilemail.SearchApplicationShortcut"])
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100117060;
        v18[3] = &unk_10064E320;
        v18[4] = self;
        v19 = v9;
        v20 = v7;
        [UIViewController _performWithoutDeferringTransitions:v18];
        v12 = &v19;
        v13 = &v20;
      }

      else
      {
        if (![v8 isEqualToString:@"com.apple.mobilemail.FavoriteItemApplicationShortcut"])
        {
LABEL_11:
          (*(v7 + 2))(v7, 0);
LABEL_12:

          goto LABEL_13;
        }

        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100117114;
        v14[3] = &unk_1006509D8;
        v14[4] = self;
        v15 = v9;
        v16 = v6;
        v17 = v7;
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
    v4 = [(MailMainScene *)self _sceneIdentifier];
    *buf = 138412290;
    v50 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restoration state was requested for MailMainScene with identifier %@. Starting state capture...", buf, 0xCu);
  }

  v5 = [(MailMainScene *)self favoritesManager];
  v41 = [v5 dictionaryRepresentation];

  v6 = [(MailMainScene *)self splitViewController];
  v40 = [v6 isCollapsed];
  v37 = [v6 viewControllerForColumn:0];
  v7 = [v37 topViewController];
  v38 = v7;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = [v6 messageListNavController];
    v10 = v7 == v9;

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

  v35 = [v6 viewControllerForColumn:2];
  v11 = [v35 topViewController];
  v36 = v11;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = v11;
    if ([v12 isPrimary])
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = [v12 captureRestorationState];
    v15 = [v12 newBackgroundMonitor];
    v39 = v14;
    [(MailScene *)self addBackgroundMonitor:v15];
  }

  else
  {
    v13 = 0;
    v39 = 0;
  }

  v16 = [(MailMainScene *)self mailboxPickerController];
  v17 = [v16 messageListViewController];
  v18 = [v17 captureRestorationState];

  if (v18)
  {
    v19 = [MailSceneBackgroundQueryMonitor alloc];
    v20 = [v18 visibleItems];
    v21 = [v18 messageList];
    v22 = [(MailScene *)self daemonInterface];
    v23 = [v22 messageRepository];
    v24 = [(MailSceneBackgroundQueryMonitor *)v19 initWithMessageListItems:v20 messageList:v21 messageRepository:v23 changeTypes:8];

    [(MailScene *)self addBackgroundMonitor:v24];
  }

  v25 = [MailMainSceneState alloc];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1001178B4;
  v42[3] = &unk_100650A00;
  v26 = v41;
  v43 = v26;
  v46 = v8;
  v47 = v40 ^ 1;
  v48 = v13;
  v27 = v39;
  v44 = v27;
  v28 = v18;
  v45 = v28;
  v29 = [(MailMainSceneState *)v25 initWithBuilder:v42];
  v30 = +[MailMainScene log];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(MailMainSceneState *)v29 ef_publicDescription];
    *buf = 138543362;
    v50 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Restoration state capture complete: %{public}@", buf, 0xCu);
  }

  v32 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.mobilemail.state.mailmainscene"];
  v33 = [(MailMainSceneState *)v29 dictionaryRepresentation];
  [v32 setUserInfo:v33];

  return v32;
}

- (id)_createURLRoutes
{
  v12.receiver = self;
  v12.super_class = MailMainScene;
  v3 = [(MailScene *)&v12 _createURLRoutes];
  v4 = [v3 mutableCopy];

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

- (unint64_t)urlRouter:(id)a3 decidePolicyForRoutingRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 URL];
  if (([v8 mf_isOAuthRedirectURL] & 1) != 0 || !-[MailMainScene _presentInitialSetupControllersIfNecessary](self, "_presentInitialSetupControllersIfNecessary"))
  {

    goto LABEL_6;
  }

  v9 = [v7 URL];
  v10 = [v9 mf_isMailCleanupDashboardURL];

  if (v10)
  {
LABEL_6:
    v14.receiver = self;
    v14.super_class = MailMainScene;
    v12 = [(MailScene *)&v14 urlRouter:v6 decidePolicyForRoutingRequest:v7];
    goto LABEL_7;
  }

  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100117CB4;
  v15[3] = &unk_10064CC78;
  objc_copyWeak(&v17, &location);
  v16 = v7;
  v11 = [EFInvocationToken tokenWithLabel:@"Post account setup action" invocationBlock:v15];
  [(MailMainScene *)self setPostAccountSetupInvocation:v11];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  v12 = 1;
LABEL_7:

  return v12;
}

- (void)dockContainer:(id)a3 didRestoreViewController:(id)a4
{
  v12 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v12;
    v6 = [(MailMainScene *)self composeViewDelegateHandler];
    [v5 setMailComposeDelegate:v6];

    v7 = [MFActiveDraft alloc];
    v8 = [v5 autosaveIdentifier];
    v9 = [v5 originalMessageObjectID];
    v10 = [(MFActiveDraft *)v7 initWithIdentifier:v8 andOriginalMessageIdentifier:v9];
    v11 = [(MailMainScene *)self session];
    [v11 mf_setActiveDraft:v10];
  }
}

- (void)dockContainer:(id)a3 dockedViewControllerWithIdentifier:(id)a4
{
  v10 = a4;
  v5 = [(MailMainScene *)self session];
  v6 = [v5 mf_activeDraft];
  v7 = [v6 identifier];
  v8 = [v10 isEqualToString:v7];

  if (v8)
  {
    v9 = [(MailMainScene *)self session];
    [v9 mf_setActiveDraft:0];
  }
}

- (void)dockContainer:(id)a3 dockedViewWasTornOffWithIdentifier:(id)a4
{
  v10 = a4;
  v5 = [(MailMainScene *)self session];
  v6 = [v5 mf_activeDraft];
  v7 = [v6 identifier];
  v8 = [v10 isEqualToString:v7];

  if (v8)
  {
    v9 = [(MailMainScene *)self session];
    [v9 mf_setActiveDraft:0];
  }
}

- (void)dockContainer:(id)a3 isVisible:(BOOL)a4
{
  v4 = a4;
  v35 = a3;
  if (MUISolariumFeatureEnabled())
  {
    if (v4)
    {
      v6 = [(MailMainScene *)self additionalBottomSafeAreaInset];

      if (!v6)
      {
        v7 = [v35 view];
        [v7 safeAreaInsets];
        v9 = v8;

        v10 = [(MailMainScene *)self splitViewController];
        [v10 additionalSafeAreaInsets];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v19 = [(MailMainScene *)self splitViewController];
        [v19 setAdditionalSafeAreaInsets:{v12, v14, v9 + v16, v18}];

        v20 = [NSNumber numberWithDouble:v9];
        [(MailMainScene *)self setAdditionalBottomSafeAreaInset:v20];
      }
    }

    else
    {
      v21 = [(MailMainScene *)self additionalBottomSafeAreaInset];

      if (v21)
      {
        v22 = [(MailMainScene *)self additionalBottomSafeAreaInset];
        [v22 doubleValue];
        v24 = v23;

        v25 = [(MailMainScene *)self splitViewController];
        [v25 additionalSafeAreaInsets];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        v34 = [(MailMainScene *)self splitViewController];
        [v34 setAdditionalSafeAreaInsets:{v27, v29, v31 - v24, v33}];

        [(MailMainScene *)self setAdditionalBottomSafeAreaInset:0];
      }
    }
  }
}

- (BOOL)_isMailboxListVisible
{
  v2 = [(MailMainScene *)self splitViewController];
  v3 = [v2 displayMode];

  return (v3 - 4) < 3;
}

- (id)composeControllerForCompositionContext:(id)a3
{
  v4 = a3;
  v5 = [[ComposeNavigationController alloc] initWithComposition:v4];
  v6 = [(MailMainScene *)self composeViewDelegateHandler];
  [(ComposeNavigationController *)v5 setMailComposeDelegate:v6];

  return v5;
}

- (void)_showComposeWithContext:(id)a3 animated:(BOOL)a4 initialTitle:(id)a5 presentationSource:(id)a6 draftOriginalMessageID:(id)a7 completionBlock:(id)a8
{
  v12 = a4;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v43 = a7;
  v17 = a8;
  v42 = v17;
  v18 = [(MailMainScene *)self composeControllerForCompositionContext:v14];
  if (v18)
  {
    v19 = [v14 originalMessage];

    if (v19 && [v14 composeType] != 4)
    {
      [v14 composeType];
    }

    if (v15)
    {
      [v18 setInitialTitle:v15];
    }

    v20 = [(MailMainScene *)self composeCompletionBlock];

    if (v20)
    {
      v21 = [(MailMainScene *)self composeCompletionBlock];
      v21[2]();
    }

    [(MailMainScene *)self setComposeCompletionBlock:v17];
    v22 = [v18 autosaveIdentifier];
    v40 = [v18 originalMessageObjectID];
    if (v22)
    {
      v23 = +[UIApplication sharedApplication];
      v24 = [v23 dockPersistence];
      [v24 removeDockedStateWithIdentifier:v22 sender:0];
    }

    v39 = v12;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1001188F0;
    v44[3] = &unk_10064E348;
    v44[4] = self;
    v25 = v22;
    v45 = v25;
    v46 = v43;
    v26 = v40;
    v47 = v26;
    v41 = objc_retainBlock(v44);
    v27 = +[CLFSystemShellSwitcher sharedSystemShellSwitcher];
    v28 = [v27 isClarityBoardEnabled];

    if (v28 & 1 | ((+[UIDevice mf_isPadIdiom]& 1) == 0))
    {
      v29 = [v14 attachmentToMarkupContentID];
      v37 = v16;
      v38 = v15;
      if (!v29)
      {
        goto LABEL_20;
      }

      v30 = [(MailMainScene *)self dockContainer];
      v31 = [v30 presentedViewController];
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
        v16 = v37;
        v15 = v38;
        v35 = [(MailMainScene *)self dockContainer];
        v36 = [v35 presentedViewController];
        [v36 presentViewController:v18 animated:v39 completion:v41];
      }

      else
      {
LABEL_20:
        v16 = v37;
        v15 = v38;
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

        v35 = [(MailMainScene *)self dockContainer];
        [v35 presentViewController:v18 animated:v39 completion:v41];
      }
    }

    else
    {
      [MFBayAdoption openComposeWithContext:v14 presentationSource:v16 requestingScene:self];
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

- (void)resumeCompositionOfDraft:(id)a3 legacyDraft:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    v7 = [[_MFMailCompositionContext alloc] initDraftRestoreOfMessage:v8 legacyMessage:v6];
  }

  else
  {
    v7 = objc_alloc_init(_MFMailCompositionContext);
    [v7 setShowKeyboardImmediately:1];
  }

  [(MailMainScene *)self showComposeWithContext:v7 animated:1 initialTitle:0 presentationSource:0 completionBlock:0];
}

- (void)_saveCompositionAsDraft:(id)a3
{
  v6 = [a3 _mailComposeController];
  [v6 forceSaveAsDraft];
  v3 = [[MFMailComposeDeliveryController alloc] initWithComposeController:v6];
  if (v3)
  {
    v4 = +[MFInvocationQueue sharedInvocationQueue];
    v5 = [MFMonitoredInvocation invocationWithSelector:"deliverMessage" target:v3 taskName:0 priority:6 canBeCancelled:1];
    [v4 addInvocation:v5];
  }
}

- (void)hasDelayedMessagesDidChange:(BOOL)a3
{
  LOBYTE(v5) = a3;
  v3 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v3 performBlock:&v4];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("_composeCommandInvoked:" == a3 || "debugShortcutInvoked:" == a3)
  {
    if ("_composeCommandInvoked:" == a3)
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
    v8 = [(MailScene *)&v11 canPerformAction:a3 withSender:v6];
  }

  return v8;
}

- (void)_composeCommandInvoked:(id)a3
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100118EF4;
  v10 = &unk_10064FC70;
  v11 = self;
  v4 = a3;
  v12 = v4;
  v5 = objc_retainBlock(&v7);
  if ([(MailMainScene *)self isComposeWindowActive:v7])
  {
    v6 = [(MailMainScene *)self dockContainer];
    [v6 dockPresentedViewControllerWithCompletion:v5];
  }

  else
  {
    (v5[2])(v5, 1);
  }
}

- (void)_openMailboxQuicklyInvoked:(id)a3
{
  if (![(MailMainScene *)self isOpenMailboxQuicklyViewVisible])
  {
    v6 = [(MailMainScene *)self mailboxPickerController];
    v4 = [v6 isEditing];

    if (v4)
    {
      v7 = [(MailMainScene *)self mailboxPickerController];
      [v7 setEditing:0 animated:1];
    }

    [(MailMainScene *)self refreshOpenMailboxQuicklyItems];
    v8 = [(MailMainScene *)self dockContainer];
    v5 = [(MailMainScene *)self openMailboxQuicklyViewController];
    [v8 presentViewController:v5 animated:1 completion:0];
  }
}

- (BOOL)isOpenMailboxQuicklyViewVisible
{
  if (!self->_openMailboxQuicklyViewController)
  {
    return 0;
  }

  v2 = [(MailMainScene *)self openMailboxQuicklyViewController];
  v3 = [v2 viewIfLoaded];
  v4 = [v3 window];
  v5 = v4 != 0;

  return v5;
}

- (UIViewController)openMailboxQuicklyViewController
{
  openMailboxQuicklyViewController = self->_openMailboxQuicklyViewController;
  if (!openMailboxQuicklyViewController)
  {
    v4 = [(MailMainScene *)self favoritesManager];
    v5 = [_TtC10MobileMail25OpenMailboxQuicklyFactory createOpenMailboxQuicklyViewControllerWithFavoritesManager:v4 delegate:self];
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
  v18 = self;
  v5 = [(MailMainScene *)self favoritesManager];
  v6 = [v5 visibleMailboxCollections];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
        v10 = [v9 itemsIncludingSubItems];
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = *v23;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v22 + 1) + 8 * j);
              v15 = [v14 itemURLString];
              if (v15 && ([v4 containsObject:v15] & 1) == 0)
              {
                v16 = [_TtC10MobileMail25OpenMailboxQuicklyFactory createOpenMailboxQuicklyItemWithFavoriteItem:v14];
                if (v16)
                {
                  [(NSArray *)v3 addObject:v16];
                  [v4 addObject:v15];
                }
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v11);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  openMailboxQuicklyItems = v18->_openMailboxQuicklyItems;
  v18->_openMailboxQuicklyItems = v3;
}

- (void)openMailboxQuicklyDidSelectMailboxWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MailMainScene *)self favoritesManager];
  v16 = v4;
  v6 = [NSArray arrayWithObjects:&v16 count:1];
  v7 = [v5 itemsMatchingItemURLStrings:v6];

  v8 = [v7 firstObject];
  if (v8)
  {
    v9 = [(MailMainScene *)self mailboxPickerController];
    v10 = [v8 smartMailbox];

    if (v10)
    {
      v11 = [v9 favoriteItemSelectionTarget];
      -[NSObject selectCombinedInboxWithSourceType:item:animated:](v11, "selectCombinedInboxWithSourceType:item:animated:", [v8 sourceType], v8, 0);
    }

    else
    {
      v12 = [v8 representingMailbox];

      if (v12)
      {
        v11 = [v8 representingMailbox];
        v13 = [v9 favoriteItemSelectionTarget];
        [v13 selectMailbox:v11 item:v8 animated:0];
      }

      else
      {
        v11 = +[MailMainScene log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to select mailbox since no mailbox was found for FavoriteItem", v15, 2u);
        }
      }
    }
  }

  else
  {
    v9 = +[MailMainScene log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to select mailbox since no matching FavoriteItem with identifier was found", v15, 2u);
    }
  }

  v14 = [(MailMainScene *)self dockContainer];
  [v14 dismissViewControllerAnimated:1 completion:0];
}

- (void)closeOpenMailboxQuicklyViewController
{
  v2 = [(MailMainScene *)self dockContainer];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)composeButtonPressed:(id)a3
{
  v4 = a3;
  v5 = [(MailMainScene *)self dockContainer];
  v6 = [v5 presentedViewController];

  if (v6 && [v6 modalPresentationStyle] == 7)
  {
    objc_initWeak(location, self);
    v7 = [(MailMainScene *)self dockContainer];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100119BB0;
    v19[3] = &unk_10064CC78;
    objc_copyWeak(&v21, location);
    v20 = v4;
    [v7 dismissViewControllerAnimated:1 completion:v19];

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
      v14 = [v12 ef_publicDescription];
      *location = 138412546;
      *&location[4] = v14;
      v23 = 1024;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Compose using account:%@, isDefault: %{BOOL}d.", location, 0x12u);
    }

    v15 = [v12 defaultEmailAddress];
    v16 = v15;
    if (!v15)
    {
      v16 = [v12 firstEmailAddress];
    }

    [v11 setPreferredSendingEmailAddress:v16];
    if (!v15)
    {
    }

    [v11 setIsUsingDefaultAccount:v18];
    [v11 setPrefersFirstLineSelection:1];
    if (MUISolariumFeatureEnabled())
    {
      v17 = v4;
    }

    else
    {
      v17 = 0;
    }

    [(MailMainScene *)self showComposeWithContext:v11 animated:1 initialTitle:0 presentationSource:v17 completionBlock:0];
  }
}

- (void)composeButtonLongPressed:(id)a3
{
  v4 = a3;
  v5 = [PreviousDraftPickerController alloc];
  v6 = [(MailScene *)self daemonInterface];
  v7 = [v6 messageRepository];
  v8 = [(PreviousDraftPickerController *)v5 initWithMessageRepository:v7];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100119E50;
  v15[3] = &unk_100650A28;
  v15[4] = self;
  [(PreviousDraftPickerController *)v8 setActionBlock:v15];
  v9 = [(MailMainScene *)self previousDraftPickerPopoverPresentationDelegate];

  if (!v9)
  {
    v10 = objc_alloc_init(PreviousDraftPickerPopoverPresentationDelegate);
    [(MailMainScene *)self setPreviousDraftPickerPopoverPresentationDelegate:v10];
  }

  [(PreviousDraftPickerController *)v8 setModalPresentationStyle:7];
  v11 = [(PreviousDraftPickerController *)v8 popoverPresentationController];
  v12 = [(MailMainScene *)self previousDraftPickerPopoverPresentationDelegate];
  [v11 setDelegate:v12];

  [v11 setPermittedArrowDirections:3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 setBarButtonItem:v4];
  }

  else
  {
    v13 = v4;
    [v11 setSourceView:v13];
    [v13 bounds];
    [v11 setSourceRect:?];
  }

  v14 = [(MailMainScene *)self dockContainer];
  [v14 presentViewController:v8 animated:1 completion:0];
}

- (void)mailComposeDeliveryControllerWillAttemptToSend:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10011A170;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

- (void)mailComposeDeliveryControllerDidAttemptToSend:(id)a3 outgoingMessageDelivery:(id)a4 result:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if (([v9 status] & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v10 = +[MFNetworkController sharedInstance];
    v11 = [v10 isDataAvailable];

    if (v11)
    {
      v12 = [v15 error];
      v13 = [v8 account];
      [(MailMainScene *)self displayError:v12 forAccount:v13 mode:2];
    }
  }

  v14 = +[MFActivityMonitor currentMonitor];
  [v14 reset];
}

- (void)mailComposeDeliveryControllerDidAttemptToSaveDraft:(id)a3 account:(id)a4 result:(unint64_t)a5
{
  v12 = a3;
  v8 = a4;
  if (!a5)
  {
    v9 = +[MFNetworkController sharedInstance];
    v10 = [v9 isDataAvailable];

    if (v10)
    {
      v11 = [v12 error];
      [(MailMainScene *)self displayError:v11 forAccount:v8 mode:2];
    }
  }
}

- (void)mailComposeDeliveryController:(id)a3 didMoveCancelledMessageToDrafts:(id)a4 draftMailboxObjectID:(id)a5
{
  v15 = a4;
  v7 = a5;
  v8 = [_MFMailCompositionContext alloc];
  v9 = [v15 objectID];
  v10 = [(MailScene *)self daemonInterface];
  v11 = [v10 messageRepository];
  v12 = +[UIApplication sharedApplication];
  v13 = [v12 mailboxProvider];
  v14 = [v8 initWithComposeType:2 objectID:v9 mailboxID:v7 subject:0 autosaveID:0 messageRepository:v11 mailboxProvider:v13];

  [(MailMainScene *)self showComposeWithContext:v14 animated:1 initialTitle:0 presentationSource:0 completionBlock:0];
}

- (void)dismissComposeViewController:(id)a3 animated:(BOOL)a4 afterSending:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(MailMainScene *)self session];
  [v9 mf_setActiveDraft:0];

  v10 = [v8 navigationController];
  v11 = [(MailMainScene *)self mailboxPickerController];
  v12 = [v11 messageListViewController];

  v13 = [v12 mailboxes];
  v14 = [v13 ef_any:&stru_100650A48];

  v15 = [(MailMainScene *)self dockContainer];
  v16 = [v15 activeViewController];

  if (([v8 isQuickReply] & 1) == 0)
  {
    if ([v16 isEqual:v10])
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10011A944;
      v21[3] = &unk_100650A70;
      v17 = v10;
      v22 = v17;
      v23 = self;
      v24 = v14;
      v25 = v5;
      v18 = objc_retainBlock(v21);
      if (v6 && v5)
      {
        [v17 removeZoomTransition];
        v19 = [(MailMainScene *)self dockContainer];
        [v19 dismissViewControllerWithTransition:3 completion:v18];
      }

      else
      {
        v19 = [(MailMainScene *)self dockContainer];
        [v19 dismissViewControllerAnimated:v6 completion:v18];
      }

      v20 = v22;
    }

    else
    {
      v20 = +[MailMainScene log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100488A88(v8, v16, v20);
      }
    }
  }
}

- (void)didFailToContinueUserActivityWithType:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MailMainScene log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v6 ef_publicDescription];
    sub_100488C7C(v5, v8, v9, v7);
  }
}

- (id)activeViewController
{
  v2 = [(MailMainScene *)self dockContainer];
  v3 = [v2 activeViewController];

  return v3;
}

- (_TtC10MobileMail21AppStoreReviewManager)appStoreReviewManager
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 appStoreReviewManager];

  return v3;
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
  v3 = [(MailMainScene *)self onboardingNavigationController];

  if (v3)
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
  v3 = [(MailMainScene *)self _shouldPresentOnboarding];
  if (v3)
  {
    [(MailMainScene *)self _presentOnboarding];
  }

  else
  {
    v4 = [(MailMainScene *)self onboardingNavigationController];

    if (v4)
    {
      v5 = [(MailMainScene *)self onboardingNavigationController];
      [v5 dismissViewControllerAnimated:1 completion:0];

      [(MailMainScene *)self setOnboardingNavigationController:0];
      [(MailMainScene *)self setMailTrackingProtectionOnboardingViewController:0];
      v6 = [(MailMainScene *)self postAccountSetupInvocation];

      if (v6)
      {
        v7 = [(MailMainScene *)self postAccountSetupInvocation];
        [v7 invoke];

        [(MailMainScene *)self setPostAccountSetupInvocation:0];
      }

      [(MailMainScene *)self _requestUserNotificationAuthorization];
      [(MailMainScene *)self _cleanUpDeprecatedOnboarding];
    }
  }

  return v3;
}

- (void)_presentOnboarding
{
  v7 = [(MailMainScene *)self _nextOnboardingController];
  if (v7)
  {
    v3 = [(MailMainScene *)self onboardingNavigationController];

    if (v3)
    {
      v4 = [(MailMainScene *)self onboardingNavigationController];
      [v4 pushViewController:v7 animated:1];
    }

    else
    {
      v5 = [[UINavigationController alloc] initWithRootViewController:v7];
      [(MailMainScene *)self setOnboardingNavigationController:v5];

      v4 = [(MailMainScene *)self dockContainer];
      v6 = [(MailMainScene *)self onboardingNavigationController];
      [v4 presentViewController:v6 animated:1 completion:0];
    }
  }
}

- (id)_nextOnboardingController
{
  if (![(MailMainScene *)self _shouldPresentWelcomeOnboarding]|| ([(MailMainScene *)self _createAppleIntelligenceWelcomeOnboardingController], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([(MailMainScene *)self _shouldPresentMailTrackingProtectionOnboarding])
    {
      v3 = [(MailMainScene *)self _createMailTrackingProtectionOnboardingController];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
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

    v11 = self;
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

    v11 = self;
    v12 = 0;
LABEL_16:
    [(MailMainScene *)v11 _sendOnboardingAnalyticsDidShowOnboarding:0 wasPreviouslyBlockingRemoteContent:v12];
    return 0;
  }

  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v5 isMailPrivacyProtectionAllowed];

  v7 = +[MailMainScene log];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if ((v6 & 1) == 0)
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

  v4 = [(MailMainScene *)self mailAppleIntelligenceWelcomeOnboardingViewController];

  if (!v4)
  {
    v5 = objc_alloc_init(MUIAppleIntelligenceOnboardingViewController);
    [(MailMainScene *)self setMailAppleIntelligenceWelcomeOnboardingViewController:v5];
    v6 = kAppleIntelligenceOnboardingViewControllerDidCompleteNotification;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"_mailAppleIntelligenceWelcomeViewControllerDidFinish:" name:v6 object:0];
  }

  v8 = [(MailMainScene *)self mailAppleIntelligenceWelcomeOnboardingViewController];

  return v8;
}

- (id)_createMailTrackingProtectionOnboardingController
{
  v3 = +[MailMainScene log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MailMainScene *)self mailTrackingProtectionOnboardingViewController];
    v5 = [(MailMainScene *)self accountSetupController];
    v12 = 138543618;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Create tracking prevention onboarding (onboarding: %{public}@, account setup: %{public}@)", &v12, 0x16u);
  }

  v6 = [(MailMainScene *)self mailTrackingProtectionOnboardingViewController];
  if (v6)
  {
    goto LABEL_4;
  }

  v7 = [(MailMainScene *)self accountSetupController];
  v8 = v7 == 0;

  if (v8)
  {
    v6 = objc_alloc_init(MailTrackingProtectionOnboardingViewController);
    [(MailMainScene *)self setMailTrackingProtectionOnboardingViewController:v6];
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"_mailTrackingProtectionViewControllerDidFinish:" name:@"MailTrackingProtectionOnboardingViewControllerDidCompleteNotification" object:0];

LABEL_4:
  }

  v9 = [(MailMainScene *)self mailTrackingProtectionOnboardingViewController];

  return v9;
}

- (void)_mailAppleIntelligenceWelcomeViewControllerDidFinish:(id)a3
{
  v4 = [(MailMainScene *)self mailAppleIntelligenceWelcomeOnboardingViewController];
  v5 = +[MailMainScene log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138543618;
    v9 = v7;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Onboarding did finish", &v8, 0x16u);
  }

  [(MailMainScene *)self setAppleIntelligenceOnboardingState:4];
  if (v4)
  {
    [(MailMainScene *)self presentNextOnboardingIfNecessary];
  }
}

- (void)_mailTrackingProtectionViewControllerDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(MailMainScene *)self mailTrackingProtectionOnboardingViewController];
  v6 = +[MailMainScene log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v13 = 138543618;
    v14 = v8;
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Onboarding did finish", &v13, 0x16u);
  }

  if (v5)
  {
    [(MailMainScene *)self presentNextOnboardingIfNecessary];
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:@"MailTrackingProtectionOnboardingViewControllerDidCompleteNotification" object:0];

  v10 = [v4 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"MailTrackingProtectionOnboardingViewControllerUserInfoKeyOptedIn"];
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

- (void)_sendOnboardingAnalyticsDidShowOnboarding:(BOOL)a3 wasPreviouslyBlockingRemoteContent:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a4)
  {
    v7 = 0;
  }

  else
  {
    v8 = +[NSUserDefaults em_userDefaults];
    v9 = [v8 integerForKey:EMUserDefaultLoadRemoteContentKey];

    v7 = (v9 & 8) == 0;
  }

  [(MailMainScene *)self _sendOnboardingAnalyticsDidShowOnboarding:v5 wasPreviouslyBlockingRemoteContent:v4 optedIn:v7];
}

- (void)_sendOnboardingAnalyticsDidShowOnboarding:(BOOL)a3 wasPreviouslyBlockingRemoteContent:(BOOL)a4 optedIn:(BOOL)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011BA28;
  block[3] = &unk_100650AB0;
  v6 = a3;
  v7 = a4;
  v8 = a5;
  if (qword_1006DD0D0 != -1)
  {
    dispatch_once(&qword_1006DD0D0, block);
  }
}

- (id)_statusStringForCNAuthorizationStatus:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100650BE8 + a3);
  }
}

- (void)setSelectedAccounts:(id)a3
{
  v8 = a3;
  if (self->_selectedAccounts != v8)
  {
    v5 = [(MailMainScene *)self errorHandler];
    [v5 reset];

    objc_storeStrong(&self->_selectedAccounts, a3);
    [(MailMainScene *)self setLastSelectedAccountID:0];
    if ([(NSSet *)v8 count]== 1)
    {
      v6 = [(NSSet *)v8 anyObject];
      v7 = [v6 uniqueID];
      [(MailMainScene *)self setLastSelectedAccountID:v7];
    }
  }
}

- (void)_handleAccountsChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:ECMailAccountsDidChangeNotificationKeyPreviousAccountIdentifiers];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:ECMailAccountsDidChangeNotificationKeyAccountIdentifiers];

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9 = [(MailMainScene *)self selectedAccounts];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011C1C0;
  v13[3] = &unk_100650B68;
  v13[4] = &v14;
  v10 = [v9 ef_compactMap:v13];

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

  v4 = [(MailMainScene *)self mailboxPickerController];
  v5 = [v4 messageListViewController];
  v6 = [v5 conversationViewController];

  if (v6)
  {
    [v6 setReferenceMessageListItem:0 referenceMessageList:0 showAsConversation:0 animated:0];
  }

  v7 = [(MailMainScene *)self favoritesManager];
  [v7 setLastSelectedItem:0];

  [(MailMainScene *)self selectDefaultMailbox];
  if ([(MailMainScene *)self activationState]== 2)
  {
    v8 = +[UIApplication sharedApplication];
    v9 = [(MailMainScene *)self session];
    [v8 requestSceneSessionRefresh:v9];
  }

  else
  {
    v10 = [(MailMainScene *)self postAccountSetupInvocation];
    if (v10)
    {
      if ([(MailMainScene *)self _isDisplayingAccountSetup])
      {
        v11 = [(MailMainScene *)self accountSetupController];
        v12 = [v11 accountSetupInProgress];

        if (v12)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v13 = [(MailMainScene *)self postAccountSetupInvocation];
      [v13 invoke];

      [(MailMainScene *)self setPostAccountSetupInvocation:0];
    }
  }

LABEL_13:
}

- (BOOL)presentAccountSetupControllerIfNecessary
{
  v3 = [(MailMainScene *)self _defaultAccountsToSelect];
  v4 = [v3 anyObject];
  v5 = [v4 primaryMailboxUid];

  if (!v5)
  {
    [(MailMainScene *)self _presentAccountSetupController];
  }

  return v5 == 0;
}

- (void)_presentAccountSetupController
{
  if (![(MailMainScene *)self _presentAccountRestrictionAlertIfNecessary])
  {
    v3 = [(MailMainScene *)self accountSetupController];

    if (!v3)
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
      v6 = [(MailMainScene *)self dockContainer];
      v7 = [(MailMainScene *)self accountSetupController];
      [v6 presentViewController:v7 animated:0 completion:0];
    }
  }
}

- (void)_dismissAccountSetupControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MailMainScene *)self accountSetupController];

  if (v7)
  {
    v8 = +[MailMainScene log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dismissing account setup controller", v12, 2u);
    }

    v9 = [(MailMainScene *)self accountSetupController];
    [v9 setAccountSetupDelegate:0];

    v10 = [(MailMainScene *)self accountSetupController];
    [v10 setScene:0];

    [(MailMainScene *)self setAccountSetupController:0];
    [(MailMainScene *)self setAccountSetupFinished:0];
    v11 = [(MailMainScene *)self dockContainer];
    [v11 dismissViewControllerAnimated:v4 completion:v6];
  }
}

- (BOOL)_isAccountCreationRestricted
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 accountsProvider];
  v5 = [v4 displayedAccounts];
  v6 = [v5 count];

  if (v6)
  {
    v7 = +[MailMainScene log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v15 = +[UIApplication sharedApplication];
      v16 = [v15 accountsProvider];
      v17 = [v16 displayedAccounts];
      *buf = 67109120;
      v20 = [v17 count];
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
  v3 = [(MailMainScene *)self _isAccountCreationRestricted];
  if (v3)
  {
    v4 = [(MailMainScene *)self accountSetupController];

    if (v4)
    {
      v5 = [(MailMainScene *)self accountSetupController];
      [(MailMainScene *)self setAccountSetupController:0];
      [v5 dismissViewControllerAnimated:0 completion:0];
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
      v16 = [i presentedViewController];

      if (!v16)
      {
        break;
      }

      v17 = [i presentedViewController];
    }

    [i presentViewController:v11 animated:1 completion:0];
  }

  return v3;
}

- (void)accountSetupControllerDidChange:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = +[MailMainScene log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Account setup controller did change. Finished %{BOOL}d", buf, 8u);
  }

  if (v4)
  {
    [(MailMainScene *)self setAccountSetupFinished:1];
  }

  v7 = +[UIApplication sharedApplication];
  v8 = [v7 accountsProvider];
  v9 = [v8 displayedAccounts];
  v10 = [v9 count] == 0;

  if (!v10)
  {
    v11 = [(MailMainScene *)self postAccountSetupInvocation];

    if (v11)
    {
      v12 = [(MailMainScene *)self postAccountSetupInvocation];
      [v12 invoke];

      [(MailMainScene *)self setPostAccountSetupInvocation:0];
      [(MailMainScene *)self _requestUserNotificationAuthorization];
    }

    else
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10011D114;
      v13[3] = &unk_10064D9D8;
      v14 = v4;
      v13[4] = self;
      [(MailMainScene *)self _dismissAccountSetupControllerAnimated:1 completion:v13];
    }
  }
}

- (id)mailboxPickerControllerForActivityRouter:(id)a3
{
  v3 = [(MailMainScene *)self mailboxPickerController];

  return v3;
}

- (id)splitViewControllerForActivityRouter:(id)a3
{
  v3 = [(MailMainScene *)self splitViewController];

  return v3;
}

- (BOOL)displayMessage:(id)a3 fromUserActivityRouter:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[MessageDisplayRequest alloc] initWithMessage:v5];
    v7 = [(MailMainScene *)self displayMessage:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)openURL:(id)a3 fromUserActivityRouter:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = [MFURLRoutingRequest requestWithURL:a3];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 future];
    v11 = +[EFScheduler mainThreadScheduler];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10011D4AC;
    v21[3] = &unk_100650988;
    v12 = v7;
    v22 = v12;
    [v10 onScheduler:v11 addSuccessBlock:v21];

    v13 = [v9 future];
    v14 = +[EFScheduler mainThreadScheduler];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10011D4C0;
    v19 = &unk_10064C478;
    v20 = v12;
    [v13 onScheduler:v14 addFailureBlock:&v16];
  }

  v15 = [(MailScene *)self urlRouter:v16];
  [v15 routeRequest:v9];
}

- (id)composeControllerForCompositionContext:(id)a3 forActivityRouter:(id)a4
{
  v4 = [(MailMainScene *)self composeControllerForCompositionContext:a3, a4];

  return v4;
}

- (void)presentComposeController:(id)a3 forUserActivityRouter:(id)a4
{
  v6 = a3;
  [(MailMainScene *)self _dismissAnyModalViewControllerOrPopoverAnimated:1];
  v5 = [(MailMainScene *)self dockContainer];
  [v5 presentViewController:v6 animated:1 completion:0];
}

- (void)dismissComposeController:(id)a3 forUserActivityRouter:(id)a4
{
  v9 = a3;
  v5 = [(MailMainScene *)self dockContainer];
  v6 = [v5 presentedViewController];

  v7 = v9;
  if (v6 == v9)
  {
    v8 = [(MailMainScene *)self dockContainer];
    [v8 dismissViewControllerAnimated:1 completion:0];

    v7 = v9;
  }
}

- (id)messageListViewControllerForActivityRouter:(id)a3
{
  v3 = [(MailMainScene *)self messageListViewController];

  return v3;
}

- (id)alertOverlayControllerForActivityRouter:(id)a3
{
  v3 = [(MailScene *)self alertOverlayController];

  return v3;
}

- (MessageListViewController)messageListViewController
{
  v2 = [(MailMainScene *)self mailboxPickerController];
  v3 = [v2 messageListViewController];

  return v3;
}

- (void)displayMessageList
{
  v2 = [(MailMainScene *)self splitViewController];
  [v2 showMessageListViewController:1 animated:0 completion:0];
}

- (void)displayError:(id)a3 forAccount:(id)a4 mode:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14 = self;
  v10 = v8;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v17 = a5;
  v12 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v12 performSyncBlock:&v13];
}

- (void)_dismissAnyModalViewControllerOrPopoverAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MailMainScene *)self accountSetupController];

  if (v5)
  {
    [(MailMainScene *)self _dismissAccountSetupControllerAnimated:v3 completion:0];
  }

  v6 = [(MailMainScene *)self dockContainer];
  [v6 popToRootViewControllerAnimated:v3];
}

- (id)composeAccountIsDefault:(BOOL *)a3
{
  v5 = [(MailMainScene *)self lastSelectedAccountID];

  if (v5)
  {
    v6 = [(MailMainScene *)self lastSelectedAccountID];
    v7 = [MailAccount accountWithUniqueId:v6];

    v8 = +[MailMainScene log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 ef_publicDescription];
      v27 = 138543362;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using lastSelectedAccount: %{public}@ for compose.", &v27, 0xCu);
    }

    if (v7)
    {
LABEL_13:
      v23 = 0;
      if (!a3)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  v10 = [(MailMainScene *)self mailboxPickerController];
  v11 = [v10 messageListViewController];
  v12 = [v11 conversationViewController];

  v13 = [v12 viewIfLoaded];
  v14 = [v13 window];

  if (v14)
  {
    v15 = [v12 targetMessageForBarButtonTriage];
    v16 = [v15 mailboxes];
    v17 = [v16 ef_map:&stru_100650BC8];
    v18 = [v17 ef_filter:EFIsNotNull];
    v19 = [v18 ef_notEmpty];

    v7 = [v19 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = +[MailMainScene log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v7 ef_publicDescription];
        v27 = 138543362;
        v28 = v21;
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

    if (v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v7 = +[MailAccount defaultMailAccountForDelivery];
  v25 = +[MailMainScene log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v7 ef_publicDescription];
    v27 = 138543362;
    v28 = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Using default account: %{public}@ for compose.", &v27, 0xCu);
  }

  v23 = 1;
  if (a3)
  {
LABEL_14:
    *a3 = v23;
  }

LABEL_15:

  return v7;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v14 = a3;
  v8 = a4;
  v9 = [v14 mf_viewControllerBefore:v8];
  v10 = sub_10001BC30(v9, v8, v5);
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:MailNavigationControllerWillShowViewControllerNotification object:v14 userInfo:v10];

  v12 = [v8 title];
  v13 = [(MailMainScene *)self splitViewController];
  [v13 _setDisplayModeButtonItemTitle:v12];
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v7 = a4;
  v8 = [v11 mf_viewControllerBefore:v7];
  v9 = sub_10001BC30(v8, v7, v5);

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:MailNavigationControllerDidShowViewControllerNotification object:v11 userInfo:v9];
}

- (BOOL)_sheetDropInteraction:(id)a3 canHandleUserActivityOfType:(id)a4
{
  v5 = a4;
  if ([v5 ef_caseInsensitiveIsEqualToString:MSMailActivityHandoffTypeComposeWithStreams])
  {
    v6 = ![(MailMainScene *)self isComposeWindowActive];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_sheetDropInteraction:(id)a3 presentingViewControllerForDroppingUserActivityOfType:(id)a4
{
  v4 = [(MailMainScene *)self dockContainer:a3];

  return v4;
}

- (id)_sheetDropInteraction:(id)a3 viewControllerForDroppingUserActivityOfType:(id)a4
{
  v5 = [[_MFMailCompositionContext alloc] initWithComposeType:1];
  v6 = [(MailMainScene *)self composeControllerForCompositionContext:v5];

  return v6;
}

- (void)_sheetDropInteraction:(id)a3 handleUserActivity:(id)a4 forPresentedViewController:(id)a5
{
  v18 = a5;
  v7 = [a4 userInfo];
  v8 = [v7 objectForKeyedSubscript:MSMailActivityHandoffTypeKey];
  v9 = [v7 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyMessageData];
  v10 = [v7 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyAutosaveID];
  v11 = [v7 objectForKeyedSubscript:MSMailActivityHandoffComposeKeySubject];
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

    v13 = [v7 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyOriginalMessageObjectID];
    v14 = [EMObjectID objectIDFromSerializedRepresentation:v13];
    v15 = [_MFMailCompositionContext alloc];
    v16 = [(MailScene *)self daemonInterface];
    v17 = [v16 messageRepository];
    v12 = [v15 initRecoveredAutosavedMessageWithIdentifier:v10 draftSubject:v11 messageRepository:v17 originalMessageObjectID:v14];

    if (!v12)
    {
      goto LABEL_10;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v18 _setCompositionContext:v12];
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

  v4 = [(MailMainScene *)self delegate];
  v5 = [v4 window];
  if (v5)
  {
    v6 = [MFMailPopoverManager managerForWindow:v5 createIfNeeded:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateNavigationBarTitles
{
  v8 = [(MailMainScene *)self splitViewController];
  v3 = [v8 viewControllerForColumn:0];
  if (MUISolariumFeatureEnabled() && +[UIDevice mf_isPadIdiom])
  {
    v4 = [v8 traitCollection];
    v5 = [v4 horizontalSizeClass] == 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MailMainScene *)self masterNavigationController];
  [v6 updateNavigationBarPrefersLargeTitles:v5 ^ 1];

  [v3 updateNavigationBarPrefersLargeTitles:v5 ^ 1];
  v7 = [(MailMainScene *)self mailboxPickerController];
  [v7 updateEditButtonPositionAndNavigationBarTitleHidden:v5];
}

@end