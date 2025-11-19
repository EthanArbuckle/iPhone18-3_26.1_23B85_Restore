@interface PHDeclineWithMessageController
- (BOOL)isMessagesTheDefaultTextApp;
- (NSString)displayName;
- (PHDeclineWithMessageController)initWithIncomingCall:(id)a3 customMessagePresentingViewController:(id)a4 declineCallService:(id)a5;
- (TUHandle)recipientHandle;
- (UIViewController)customMessagePresentingViewController;
- (id)declineMessageMenu;
- (id)replyWithMessageStore;
- (int)addressBookIdentifier;
- (void)configureDeclineMessageForButton:(id)a3;
- (void)declineCall;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)openDefaultMessagingAppWithReply:(id)a3;
- (void)sendDeclineViaChatKitWithMessageResponse:(id)a3;
- (void)sendDeclineViaIntentWithMessageResponse:(id)a3 extension:(id)a4;
- (void)sendDeclineWithMessageResponse:(id)a3;
- (void)setContextForCustomReplyWithSubscriptionIdentifier:(id)a3;
- (void)showCustomReplyWithMessageComposer;
@end

@implementation PHDeclineWithMessageController

- (id)declineMessageMenu
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(PHDeclineWithMessageController *)self replyWithMessageStore];
  v23 = [v4 defaultReplies];

  v5 = [(PHDeclineWithMessageController *)self replyWithMessageStore];
  v6 = [v5 customReplies];

  v22 = self;
  objc_initWeak(&location, self);
  v7 = 0;
  do
  {
    v8 = [v6 objectAtIndex:{v7, v22}];
    if ([v8 length])
    {
      v9 = v8;
      v10 = 0;
    }

    else
    {
      v9 = [v23 objectAtIndex:v7];
      v11 = [&off_10036AF28 objectAtIndex:v7];
      if ([v11 length])
      {
        v10 = [UIImage systemImageNamed:v11];
      }

      else
      {
        v10 = 0;
      }
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100108C14;
    v26[3] = &unk_1003598F8;
    objc_copyWeak(v27, &location);
    v27[1] = v7;
    v12 = [UIAction actionWithTitle:v9 image:v10 identifier:0 handler:v26];
    [v3 addObject:v12];

    objc_destroyWeak(v27);
    ++v7;
  }

  while (v7 != 3);
  v13 = [(PHDeclineWithMessageController *)v22 incomingCall];
  v14 = [v13 hasSendCustomMessageCapability];

  if (v14)
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"CUSTOM" value:&stru_100361FD0 table:@"InCallService"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100108CCC;
    v24[3] = &unk_100357018;
    objc_copyWeak(&v25, &location);
    v17 = [UIAction actionWithTitle:v16 image:0 identifier:0 handler:v24];
    [v3 addObject:v17];

    objc_destroyWeak(&v25);
  }

  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"REPLY_WITH_MESSAGE_ACTION_SHEET_TITLE" value:&stru_100361FD0 table:@"InCallService"];
  v20 = [UIMenu menuWithTitle:v19 image:0 identifier:@"messages" options:1 children:v3];

  objc_destroyWeak(&location);

  return v20;
}

- (void)configureDeclineMessageForButton:(id)a3
{
  v4 = a3;
  [v4 setContextMenuEnabled:1];
  [v4 setContextMenuIsPrimary:1];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100108DE8;
  v5[3] = &unk_100359920;
  objc_copyWeak(&v6, &location);
  [v4 _setMenuProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (PHDeclineWithMessageController)initWithIncomingCall:(id)a3 customMessagePresentingViewController:(id)a4 declineCallService:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = PHDeclineWithMessageController;
  v12 = [(PHDeclineWithMessageController *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_incomingCall, a3);
    objc_storeWeak(&v13->_customMessagePresentingViewController, v10);
    cachedPreviouslyUsedLastAddressHandle = v13->_cachedPreviouslyUsedLastAddressHandle;
    v13->_cachedPreviouslyUsedLastAddressHandle = &stru_100361FD0;

    objc_storeStrong(&v13->_declineCallService, a5);
  }

  return v13;
}

- (TUHandle)recipientHandle
{
  v3 = [(PHDeclineWithMessageController *)self incomingCall];
  v4 = [v3 handle];

  v34 = v4;
  v5 = [v4 value];
  v6 = [v5 destinationIdIsPseudonym];

  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = +[TUCallCenter sharedInstance];
  v8 = [(PHDeclineWithMessageController *)self incomingCall];
  v9 = [v7 activeConversationForCall:v8];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = [v9 remoteMembers];
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  v33 = v9;
  v13 = *v37;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v37 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v36 + 1) + 8 * i);
      if ([v15 validationSource] == 2)
      {
        v16 = [v15 association];
        if (v16)
        {
          v17 = v16;
          v18 = [v15 association];
          if ([v18 type] != 2)
          {
            goto LABEL_14;
          }

          v19 = [v15 association];
          if (([v19 isPrimary] & 1) == 0)
          {

LABEL_14:
            continue;
          }

          [v15 association];
          v21 = v20 = v10;
          v22 = [v21 handle];
          v35 = [v22 isEqualToHandle:v34];

          v10 = v20;
          if (v35)
          {
            v23 = [v15 handle];

            v34 = v23;
            goto LABEL_17;
          }
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v12);
LABEL_17:
  v9 = v33;
LABEL_18:

LABEL_19:
  if ([v34 type] == 2)
  {
    v24 = CPPhoneNumberCopyCountryCodeForIncomingTextMessage();
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = TUActiveCountryCode();
    }

    v27 = v26;

    v28 = [v34 value];
    v29 = TUNetworkCountryCode();
    v30 = TUNumberToDial();

    v31 = [[TUHandle alloc] initWithType:2 value:v30];
    v34 = v31;
  }

  return v34;
}

- (NSString)displayName
{
  v2 = [(PHDeclineWithMessageController *)self incomingCall];
  v3 = [v2 displayName];

  return v3;
}

- (int)addressBookIdentifier
{
  v2 = [(PHDeclineWithMessageController *)self incomingCall];
  v3 = [v2 abUID];

  return v3;
}

- (void)declineCall
{
  declineCallService = self->_declineCallService;
  v3 = [(PHDeclineWithMessageController *)self incomingCall];
  [(PHDeclineCallServiceProtocol *)declineCallService declineAnsweringWithCall:v3 anayticsSourceForDismissal:@"SBSUIInCallTransitionAnalyticsSourceDeclineWithMessage" reason:4 completionHandler:&stru_100359940];
}

- (id)replyWithMessageStore
{
  cachedReplyStore = self->_cachedReplyStore;
  if (!cachedReplyStore)
  {
    v4 = objc_alloc_init(TUReplyWithMessageStore);
    v5 = self->_cachedReplyStore;
    self->_cachedReplyStore = v4;

    cachedReplyStore = self->_cachedReplyStore;
  }

  return cachedReplyStore;
}

- (void)sendDeclineWithMessageResponse:(id)a3
{
  v4 = a3;
  v5 = [(PHDeclineWithMessageController *)self recipientHandle];
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = v4;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "response: %@ recipientHandle: %@", &v19, 0x16u);
  }

  v7 = [v5 value];
  v8 = [v7 destinationIdIsPseudonym];

  if ((v8 & 1) == 0)
  {
    v9 = [v5 value];
    if ([v9 length])
    {
      v10 = [v4 length];

      if (v10)
      {
        if ([(PHDeclineWithMessageController *)self isMessagesTheDefaultTextApp])
        {
          v11 = [(PHDeclineWithMessageController *)self incomingCall];
          v12 = [v11 sendMessageIntentExtension];

          v13 = sub_100004F84();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          if (v12)
          {
            if (v14)
            {
              LOWORD(v19) = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Using send message intent to send response", &v19, 2u);
            }

            [(PHDeclineWithMessageController *)self sendDeclineViaIntentWithMessageResponse:v4 extension:v12];
          }

          else
          {
            if (v14)
            {
              LOWORD(v19) = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Using ChatKit to send response", &v19, 2u);
            }

            [(PHDeclineWithMessageController *)self sendDeclineViaChatKitWithMessageResponse:v4];
            v17 = [(PHDeclineWithMessageController *)self displayName];
            v18 = [v5 value];
            [(PHDeclineWithMessageController *)self addressBookIdentifier];
            TUNotifyOfReplyWithMessage();
          }
        }

        else
        {
          v16 = sub_100004F84();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v19) = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Messages app not installed, trying to open default messaging app", &v19, 2u);
          }

          [(PHDeclineWithMessageController *)self openDefaultMessagingAppWithReply:v4];
        }

        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v15 = sub_100004F84();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100256C64();
  }

LABEL_15:
}

- (BOOL)isMessagesTheDefaultTextApp
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = v2;
  if (v2)
  {
    if ([v2 canChangeDefaultAppForCategory:10])
    {
      v14 = 0;
      v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.MobileSMS" allowPlaceholder:0 error:&v14];
      v5 = v14;
      if (v4)
      {
        v6 = +[LSApplicationWorkspace defaultWorkspace];
        v13 = v5;
        v7 = [v6 defaultApplicationForCategory:3 error:&v13];
        v8 = v13;

        v9 = [v7 isEqual:v4];
        v10 = sub_100004F84();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = @"NO";
          if (v9)
          {
            v11 = @"YES";
          }

          *buf = 138412290;
          v16 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "DefaultApp: Got App workspace isMessagesTheDefault %@", buf, 0xCu);
        }

        v5 = v8;
      }

      else
      {
        v7 = sub_100004F84();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v16 = v5;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DefaultApp: Can't find application record for domain com.apple.MobileSMS, error %@. Has Messages been uninstalled?", buf, 0xCu);
        }

        LOBYTE(v9) = 0;
      }
    }

    else
    {
      v5 = sub_100004F84();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DefaultApp: Can't change default app so behaving as if Messages is the default", buf, 2u);
      }

      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)openDefaultMessagingAppWithReply:(id)a3
{
  v4 = a3;
  v5 = [(PHDeclineWithMessageController *)self recipientHandle];
  v6 = objc_alloc_init(NSURLComponents);
  [v6 setScheme:@"im"];
  v7 = [v5 value];
  [v6 setPath:v7];

  if (v4)
  {
    v8 = [[NSURLQueryItem alloc] initWithName:@"body" value:v4];
    v17 = v8;
    v9 = [NSArray arrayWithObjects:&v17 count:1];
    [v6 setQueryItems:v9];
  }

  v10 = [v6 URL];
  v16 = 0;
  v11 = TUOpenURLWithError();
  v12 = 0;

  v13 = sub_100004F84();
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully opened default messaging app", v15, 2u);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100256CE8();
  }
}

- (void)showCustomReplyWithMessageComposer
{
  if ([(PHDeclineWithMessageController *)self isMessagesTheDefaultTextApp])
  {
    v3 = [(PHDeclineWithMessageController *)self incomingCall];
    v4 = [v3 provider];
    v5 = [v4 isSystemProvider];

    v6 = [(PHDeclineWithMessageController *)self incomingCall];
    v7 = v6;
    if (v5)
    {
      v8 = [v6 localSenderIdentity];
      v9 = [v8 accountUUID];
      v10 = [v9 UUIDString];
      [(PHDeclineWithMessageController *)self setContextForCustomReplyWithSubscriptionIdentifier:v10];

      v11 = objc_alloc_init(PHMessageComposeViewController);
      v12 = [(PHDeclineWithMessageController *)self recipientHandle];
      v13 = [v12 value];
      v20 = v13;
      v14 = [NSArray arrayWithObjects:&v20 count:1];
      [(PHMessageComposeViewController *)v11 setRecipients:v14];

      [(PHMessageComposeViewController *)v11 setBody:&stru_100361FD0];
      [(PHMessageComposeViewController *)v11 setMessageComposeDelegate:self];
      [(PHMessageComposeViewController *)v11 _setCanEditRecipients:0];
      [(PHMessageComposeViewController *)v11 disableUserAttachments];
      v15 = [(PHDeclineWithMessageController *)self customMessagePresentingViewController];
      [v15 presentViewController:v11 animated:1 completion:0];
    }

    else
    {
      v17 = [v6 hasSendCustomMessageCapability];

      if (!v17)
      {
        return;
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100109CE0;
      v18[3] = &unk_1003569B0;
      v18[4] = self;
      v11 = objc_retainBlock(v18);
      [(PHDeclineWithMessageController *)self declineCall];
      v15 = +[PHInCallUtilities sharedInstance];
      [v15 requestPasscodeUnlockWithCompletion:v11];
    }
  }

  else
  {
    v16 = sub_100004F84();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Messages app not installed or default, trying to open default messaging app", buf, 2u);
    }

    [(PHDeclineWithMessageController *)self openDefaultMessagingAppWithReply:0];
    [(PHDeclineWithMessageController *)self declineCall];
  }
}

- (void)sendDeclineViaChatKitWithMessageResponse:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "response: %@", buf, 0xCu);
  }

  v6 = +[IMDaemonController sharedInstance];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 bundleIdentifier];
  [v6 addListenerID:v8 capabilities:(kFZListenerCapChats | kFZListenerCapAccounts)];

  v9 = +[IMDaemonController sharedInstance];
  [v9 _setBlocksConnectionAtResume:1];

  if (qword_1003B0EF8 != -1)
  {
    sub_100256DE4();
  }

  v10 = +[IMSystemMonitor sharedInstance];
  [v10 _forceSuspended];

  v11 = +[IMSystemMonitor sharedInstance];
  [v11 _forceResumed];

  v12 = off_1003B0EF0;
  v13 = [(PHDeclineWithMessageController *)self recipientHandle];
  v14 = [v13 value];
  v20 = v14;
  v15 = [NSArray arrayWithObjects:&v20 count:1];
  v16 = [(PHDeclineWithMessageController *)self incomingCall];
  v17 = [v16 localSenderIdentity];
  v18 = [v17 accountUUID];
  v19 = [v18 UUIDString];
  v12(v15, v4, v19);
}

- (void)setContextForCustomReplyWithSubscriptionIdentifier:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setContextForCustomReplyWithSubscriptionIdenitifier: %@", buf, 0xCu);
  }

  v6 = +[IMDaemonController sharedInstance];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 bundleIdentifier];
  [v6 addListenerID:v8 capabilities:(kFZListenerCapChats | kFZListenerCapAccounts)];

  v9 = +[IMDaemonController sharedInstance];
  [v9 _setBlocksConnectionAtResume:1];

  if (qword_1003B0F08 != -1)
  {
    sub_100256E0C();
  }

  if (off_1003B0F00)
  {
    v10 = +[IMSystemMonitor sharedInstance];
    [v10 _forceSuspended];

    v11 = +[IMSystemMonitor sharedInstance];
    [v11 _forceResumed];

    v12 = off_1003B0F00;
    v13 = [(PHDeclineWithMessageController *)self recipientHandle];
    v14 = [v13 value];
    v17 = v14;
    v15 = [NSArray arrayWithObjects:&v17 count:1];
    v16 = v12(v15, v4);

    [(PHDeclineWithMessageController *)self setCachedPreviouslyUsedLastAddressHandle:v16];
  }
}

- (void)sendDeclineViaIntentWithMessageResponse:(id)a3 extension:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "response: %@", buf, 0xCu);
  }

  v9 = [(PHDeclineWithMessageController *)self recipientHandle];
  v10 = [v9 personHandle];

  v11 = [[INPerson alloc] initWithPersonHandle:v10 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
  v12 = [INSendMessageIntent alloc];
  v33 = v11;
  v13 = [NSArray arrayWithObjects:&v33 count:1];
  v14 = [v12 initWithRecipients:v13 content:v6 groupName:0 serviceName:0 sender:0];

  v15 = +[AFPreferences sharedPreferences];
  v16 = [v15 languageCode];

  if (v16)
  {
    v17 = objc_alloc_init(NSExtensionItem);
    v31 = _INExtensionItemSiriLanguageCodeKey;
    v32 = v16;
    v18 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [v17 setUserInfo:v18];

    v30 = v17;
    v19 = [NSArray arrayWithObjects:&v30 count:1];
  }

  else
  {
    v19 = &__NSArray0__struct;
  }

  v20 = sub_100004F84();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v7;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Beginning extension request for %@ with input items: %@", buf, 0x16u);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10010A88C;
  v23[3] = &unk_1003599F0;
  v24 = v7;
  v25 = v14;
  v21 = v14;
  v22 = v7;
  [v22 beginExtensionRequestWithOptions:1 inputItems:v19 completion:v23];
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 == 1)
    {
      [(PHDeclineWithMessageController *)self declineCall];
    }
  }

  else if ([(NSString *)self->_cachedPreviouslyUsedLastAddressHandle length])
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      cachedPreviouslyUsedLastAddressHandle = self->_cachedPreviouslyUsedLastAddressHandle;
      v10 = 138412290;
      v11 = cachedPreviouslyUsedLastAddressHandle;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resetting Context to: %@ as user cancelled custom reply", &v10, 0xCu);
    }

    [(PHDeclineWithMessageController *)self setContextForCustomReplyWithSubscriptionIdentifier:self->_cachedPreviouslyUsedLastAddressHandle];
  }

  v9 = self->_cachedPreviouslyUsedLastAddressHandle;
  self->_cachedPreviouslyUsedLastAddressHandle = &stru_100361FD0;

  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (UIViewController)customMessagePresentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_customMessagePresentingViewController);

  return WeakRetained;
}

@end