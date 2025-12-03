@interface PHDeclineWithMessageController
- (BOOL)isMessagesTheDefaultTextApp;
- (NSString)displayName;
- (PHDeclineWithMessageController)initWithIncomingCall:(id)call customMessagePresentingViewController:(id)controller declineCallService:(id)service;
- (TUHandle)recipientHandle;
- (UIViewController)customMessagePresentingViewController;
- (id)declineMessageMenu;
- (id)replyWithMessageStore;
- (int)addressBookIdentifier;
- (void)configureDeclineMessageForButton:(id)button;
- (void)declineCall;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)openDefaultMessagingAppWithReply:(id)reply;
- (void)sendDeclineViaChatKitWithMessageResponse:(id)response;
- (void)sendDeclineViaIntentWithMessageResponse:(id)response extension:(id)extension;
- (void)sendDeclineWithMessageResponse:(id)response;
- (void)setContextForCustomReplyWithSubscriptionIdentifier:(id)identifier;
- (void)showCustomReplyWithMessageComposer;
@end

@implementation PHDeclineWithMessageController

- (id)declineMessageMenu
{
  v3 = objc_alloc_init(NSMutableArray);
  replyWithMessageStore = [(PHDeclineWithMessageController *)self replyWithMessageStore];
  defaultReplies = [replyWithMessageStore defaultReplies];

  replyWithMessageStore2 = [(PHDeclineWithMessageController *)self replyWithMessageStore];
  customReplies = [replyWithMessageStore2 customReplies];

  selfCopy = self;
  objc_initWeak(&location, self);
  v7 = 0;
  do
  {
    v8 = [customReplies objectAtIndex:{v7, selfCopy}];
    if ([v8 length])
    {
      v9 = v8;
      v10 = 0;
    }

    else
    {
      v9 = [defaultReplies objectAtIndex:v7];
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
  incomingCall = [(PHDeclineWithMessageController *)selfCopy incomingCall];
  hasSendCustomMessageCapability = [incomingCall hasSendCustomMessageCapability];

  if (hasSendCustomMessageCapability)
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

- (void)configureDeclineMessageForButton:(id)button
{
  buttonCopy = button;
  [buttonCopy setContextMenuEnabled:1];
  [buttonCopy setContextMenuIsPrimary:1];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100108DE8;
  v5[3] = &unk_100359920;
  objc_copyWeak(&v6, &location);
  [buttonCopy _setMenuProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (PHDeclineWithMessageController)initWithIncomingCall:(id)call customMessagePresentingViewController:(id)controller declineCallService:(id)service
{
  callCopy = call;
  controllerCopy = controller;
  serviceCopy = service;
  v16.receiver = self;
  v16.super_class = PHDeclineWithMessageController;
  v12 = [(PHDeclineWithMessageController *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_incomingCall, call);
    objc_storeWeak(&v13->_customMessagePresentingViewController, controllerCopy);
    cachedPreviouslyUsedLastAddressHandle = v13->_cachedPreviouslyUsedLastAddressHandle;
    v13->_cachedPreviouslyUsedLastAddressHandle = &stru_100361FD0;

    objc_storeStrong(&v13->_declineCallService, service);
  }

  return v13;
}

- (TUHandle)recipientHandle
{
  incomingCall = [(PHDeclineWithMessageController *)self incomingCall];
  handle = [incomingCall handle];

  v34 = handle;
  value = [handle value];
  destinationIdIsPseudonym = [value destinationIdIsPseudonym];

  if (!destinationIdIsPseudonym)
  {
    goto LABEL_19;
  }

  v7 = +[TUCallCenter sharedInstance];
  incomingCall2 = [(PHDeclineWithMessageController *)self incomingCall];
  v9 = [v7 activeConversationForCall:incomingCall2];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  remoteMembers = [v9 remoteMembers];
  v11 = [remoteMembers countByEnumeratingWithState:&v36 objects:v40 count:16];
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
        objc_enumerationMutation(remoteMembers);
      }

      v15 = *(*(&v36 + 1) + 8 * i);
      if ([v15 validationSource] == 2)
      {
        association = [v15 association];
        if (association)
        {
          v17 = association;
          association2 = [v15 association];
          if ([association2 type] != 2)
          {
            goto LABEL_14;
          }

          association3 = [v15 association];
          if (([association3 isPrimary] & 1) == 0)
          {

LABEL_14:
            continue;
          }

          [v15 association];
          v21 = v20 = remoteMembers;
          handle2 = [v21 handle];
          v35 = [handle2 isEqualToHandle:v34];

          remoteMembers = v20;
          if (v35)
          {
            handle3 = [v15 handle];

            v34 = handle3;
            goto LABEL_17;
          }
        }
      }
    }

    v12 = [remoteMembers countByEnumeratingWithState:&v36 objects:v40 count:16];
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

    value2 = [v34 value];
    v29 = TUNetworkCountryCode();
    v30 = TUNumberToDial();

    v31 = [[TUHandle alloc] initWithType:2 value:v30];
    v34 = v31;
  }

  return v34;
}

- (NSString)displayName
{
  incomingCall = [(PHDeclineWithMessageController *)self incomingCall];
  displayName = [incomingCall displayName];

  return displayName;
}

- (int)addressBookIdentifier
{
  incomingCall = [(PHDeclineWithMessageController *)self incomingCall];
  abUID = [incomingCall abUID];

  return abUID;
}

- (void)declineCall
{
  declineCallService = self->_declineCallService;
  incomingCall = [(PHDeclineWithMessageController *)self incomingCall];
  [(PHDeclineCallServiceProtocol *)declineCallService declineAnsweringWithCall:incomingCall anayticsSourceForDismissal:@"SBSUIInCallTransitionAnalyticsSourceDeclineWithMessage" reason:4 completionHandler:&stru_100359940];
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

- (void)sendDeclineWithMessageResponse:(id)response
{
  responseCopy = response;
  recipientHandle = [(PHDeclineWithMessageController *)self recipientHandle];
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = responseCopy;
    v21 = 2112;
    v22 = recipientHandle;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "response: %@ recipientHandle: %@", &v19, 0x16u);
  }

  value = [recipientHandle value];
  destinationIdIsPseudonym = [value destinationIdIsPseudonym];

  if ((destinationIdIsPseudonym & 1) == 0)
  {
    value2 = [recipientHandle value];
    if ([value2 length])
    {
      v10 = [responseCopy length];

      if (v10)
      {
        if ([(PHDeclineWithMessageController *)self isMessagesTheDefaultTextApp])
        {
          incomingCall = [(PHDeclineWithMessageController *)self incomingCall];
          sendMessageIntentExtension = [incomingCall sendMessageIntentExtension];

          v13 = sub_100004F84();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          if (sendMessageIntentExtension)
          {
            if (v14)
            {
              LOWORD(v19) = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Using send message intent to send response", &v19, 2u);
            }

            [(PHDeclineWithMessageController *)self sendDeclineViaIntentWithMessageResponse:responseCopy extension:sendMessageIntentExtension];
          }

          else
          {
            if (v14)
            {
              LOWORD(v19) = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Using ChatKit to send response", &v19, 2u);
            }

            [(PHDeclineWithMessageController *)self sendDeclineViaChatKitWithMessageResponse:responseCopy];
            displayName = [(PHDeclineWithMessageController *)self displayName];
            value3 = [recipientHandle value];
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

          [(PHDeclineWithMessageController *)self openDefaultMessagingAppWithReply:responseCopy];
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

- (void)openDefaultMessagingAppWithReply:(id)reply
{
  replyCopy = reply;
  recipientHandle = [(PHDeclineWithMessageController *)self recipientHandle];
  v6 = objc_alloc_init(NSURLComponents);
  [v6 setScheme:@"im"];
  value = [recipientHandle value];
  [v6 setPath:value];

  if (replyCopy)
  {
    v8 = [[NSURLQueryItem alloc] initWithName:@"body" value:replyCopy];
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
    incomingCall = [(PHDeclineWithMessageController *)self incomingCall];
    provider = [incomingCall provider];
    isSystemProvider = [provider isSystemProvider];

    incomingCall2 = [(PHDeclineWithMessageController *)self incomingCall];
    v7 = incomingCall2;
    if (isSystemProvider)
    {
      localSenderIdentity = [incomingCall2 localSenderIdentity];
      accountUUID = [localSenderIdentity accountUUID];
      uUIDString = [accountUUID UUIDString];
      [(PHDeclineWithMessageController *)self setContextForCustomReplyWithSubscriptionIdentifier:uUIDString];

      v11 = objc_alloc_init(PHMessageComposeViewController);
      recipientHandle = [(PHDeclineWithMessageController *)self recipientHandle];
      value = [recipientHandle value];
      v20 = value;
      v14 = [NSArray arrayWithObjects:&v20 count:1];
      [(PHMessageComposeViewController *)v11 setRecipients:v14];

      [(PHMessageComposeViewController *)v11 setBody:&stru_100361FD0];
      [(PHMessageComposeViewController *)v11 setMessageComposeDelegate:self];
      [(PHMessageComposeViewController *)v11 _setCanEditRecipients:0];
      [(PHMessageComposeViewController *)v11 disableUserAttachments];
      customMessagePresentingViewController = [(PHDeclineWithMessageController *)self customMessagePresentingViewController];
      [customMessagePresentingViewController presentViewController:v11 animated:1 completion:0];
    }

    else
    {
      hasSendCustomMessageCapability = [incomingCall2 hasSendCustomMessageCapability];

      if (!hasSendCustomMessageCapability)
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
      customMessagePresentingViewController = +[PHInCallUtilities sharedInstance];
      [customMessagePresentingViewController requestPasscodeUnlockWithCompletion:v11];
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

- (void)sendDeclineViaChatKitWithMessageResponse:(id)response
{
  responseCopy = response;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = responseCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "response: %@", buf, 0xCu);
  }

  v6 = +[IMDaemonController sharedInstance];
  v7 = +[NSBundle mainBundle];
  bundleIdentifier = [v7 bundleIdentifier];
  [v6 addListenerID:bundleIdentifier capabilities:(kFZListenerCapChats | kFZListenerCapAccounts)];

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
  recipientHandle = [(PHDeclineWithMessageController *)self recipientHandle];
  value = [recipientHandle value];
  v20 = value;
  v15 = [NSArray arrayWithObjects:&v20 count:1];
  incomingCall = [(PHDeclineWithMessageController *)self incomingCall];
  localSenderIdentity = [incomingCall localSenderIdentity];
  accountUUID = [localSenderIdentity accountUUID];
  uUIDString = [accountUUID UUIDString];
  v12(v15, responseCopy, uUIDString);
}

- (void)setContextForCustomReplyWithSubscriptionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setContextForCustomReplyWithSubscriptionIdenitifier: %@", buf, 0xCu);
  }

  v6 = +[IMDaemonController sharedInstance];
  v7 = +[NSBundle mainBundle];
  bundleIdentifier = [v7 bundleIdentifier];
  [v6 addListenerID:bundleIdentifier capabilities:(kFZListenerCapChats | kFZListenerCapAccounts)];

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
    recipientHandle = [(PHDeclineWithMessageController *)self recipientHandle];
    value = [recipientHandle value];
    v17 = value;
    v15 = [NSArray arrayWithObjects:&v17 count:1];
    v16 = v12(v15, identifierCopy);

    [(PHDeclineWithMessageController *)self setCachedPreviouslyUsedLastAddressHandle:v16];
  }
}

- (void)sendDeclineViaIntentWithMessageResponse:(id)response extension:(id)extension
{
  responseCopy = response;
  extensionCopy = extension;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = responseCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "response: %@", buf, 0xCu);
  }

  recipientHandle = [(PHDeclineWithMessageController *)self recipientHandle];
  personHandle = [recipientHandle personHandle];

  v11 = [[INPerson alloc] initWithPersonHandle:personHandle nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
  v12 = [INSendMessageIntent alloc];
  v33 = v11;
  v13 = [NSArray arrayWithObjects:&v33 count:1];
  v14 = [v12 initWithRecipients:v13 content:responseCopy groupName:0 serviceName:0 sender:0];

  v15 = +[AFPreferences sharedPreferences];
  languageCode = [v15 languageCode];

  if (languageCode)
  {
    v17 = objc_alloc_init(NSExtensionItem);
    v31 = _INExtensionItemSiriLanguageCodeKey;
    v32 = languageCode;
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
    v27 = extensionCopy;
    v28 = 2112;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Beginning extension request for %@ with input items: %@", buf, 0x16u);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10010A88C;
  v23[3] = &unk_1003599F0;
  v24 = extensionCopy;
  v25 = v14;
  v21 = v14;
  v22 = extensionCopy;
  [v22 beginExtensionRequestWithOptions:1 inputItems:v19 completion:v23];
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  if (result)
  {
    if (result == 1)
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

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (UIViewController)customMessagePresentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_customMessagePresentingViewController);

  return WeakRetained;
}

@end