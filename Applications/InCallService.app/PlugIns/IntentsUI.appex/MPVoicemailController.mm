@interface MPVoicemailController
+ (id)_telephonyClient;
- (BOOL)isRestrictedMessage:(id)message;
- (BOOL)shouldShowVerifiedBadge;
- (CNContactFormatter)contactFormatter;
- (MPVoicemailController)init;
- (MPVoicemailController)initWithVoicemailManager:(id)manager accountManager:(id)accountManager callProviderManager:(id)providerManager contactStore:(id)store suggestedContactStore:(id)contactStore metadataCache:(id)cache;
- (NSArray)audioMessages;
- (NSArray)contactKeyDescriptors;
- (NSArray)messages;
- (id)attributedStringForDowntimeMessage:(id)message;
- (id)audioMessagesPassingTest:(id)test;
- (id)localizedAttributedDowntimeTitleForMessage:(id)message;
- (id)localizedHandleTitleFromMessage:(id)message;
- (id)localizedSubtitleForMessage:(id)message;
- (id)localizedTitleForMessage:(id)message;
- (id)messagesPassingTest:(id)test;
- (id)mutableSenderContactForMessage:(id)message;
- (id)senderContactForMessage:(id)message;
- (unint64_t)unreadMessageCount;
- (void)addAcceptedIntroductionsNotifier;
- (void)audioMessagesPassingTest:(id)test withCompletion:(id)completion;
- (void)audioMessagesWithCompletion:(id)completion;
- (void)dealloc;
- (void)deleteMessages:(id)messages;
- (void)fetchContactsForMessages:(id)messages keyDescriptors:(id)descriptors;
- (void)fetchLegacyVoicemailsCompletion:(id)completion;
- (void)fetchMessagesCompletion:(id)completion;
- (void)fetchMetadataForMessages:(id)messages;
- (void)handleCNContactStoreDidChangeNotification:(id)notification;
- (void)handleNSCurrentLocaleDidChangeNotification:(id)notification;
- (void)handleRecentsChangedNotification:(id)notification;
- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)notification;
- (void)handleUIApplicationSignificantTimeChangeNotification:(id)notification;
- (void)handleUIApplicationWillEnterForegroundNotification:(id)notification;
- (void)handleUpdatedContacts;
- (void)handleVoicemailsChangedNotification:(id)notification;
- (void)loadLocalizedTitlesForMessages:(id)messages;
- (void)markMessagesAsRead:(id)read;
- (void)messageForIdentifier:(id)identifier completionBlock:(id)block;
- (void)messagesPassingTest:(id)test withCompletion:(id)completion;
- (void)moveMessagesToInbox:(id)inbox;
- (void)performSynchronousBlock:(id)block;
- (void)postMPVoicemailControllerMessagesDidChangeNotification;
- (void)postMPVoicemailControllerUnreadMessageCountDidChangeNotification;
- (void)providersChangedForProviderManager:(id)manager;
- (void)setAudioMessages:(id)messages;
- (void)setMessages:(id)messages;
- (void)setUnreadMessageCount:(unint64_t)count;
- (void)trashMessages:(id)messages;
@end

@implementation MPVoicemailController

- (MPVoicemailController)init
{
  [(MPVoicemailController *)self doesNotRecognizeSelector:a2];
  v2 = [NSException exceptionWithName:@"doesNotRecognizeSelector" reason:@"init not implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (MPVoicemailController)initWithVoicemailManager:(id)manager accountManager:(id)accountManager callProviderManager:(id)providerManager contactStore:(id)store suggestedContactStore:(id)contactStore metadataCache:(id)cache
{
  managerCopy = manager;
  accountManagerCopy = accountManager;
  providerManagerCopy = providerManager;
  storeCopy = store;
  contactStoreCopy = contactStore;
  cacheCopy = cache;
  v41.receiver = self;
  v41.super_class = MPVoicemailController;
  v17 = [(MPVoicemailController *)&v41 init];
  if (v17)
  {
    v32 = accountManagerCopy;
    v33 = managerCopy;
    v18 = +[MPVoicemailQueueManager serialQueue];
    serialDispatchQueue = v17->_serialDispatchQueue;
    v17->_serialDispatchQueue = v18;

    v20 = v17->_serialDispatchQueue;
    v21 = off_1000C4A78;
    specific = dispatch_queue_get_specific(v20, off_1000C4A78);
    if (specific)
    {
      v23 = specific;
      v24 = PHDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        sub_10007AA80(v23, v17, v24);
      }

      v20 = v17->_serialDispatchQueue;
      v21 = off_1000C4A78;
    }

    dispatch_queue_set_specific(v20, v21, v17, 0);
    objc_storeStrong(&v17->_callProviderManager, providerManager);
    objc_storeStrong(&v17->_contactStore, store);
    objc_storeStrong(&v17->_suggestedContactStore, contactStore);
    objc_storeStrong(&v17->_metadataCache, cache);
    objc_storeStrong(&v17->_voicemailManager, manager);
    objc_storeStrong(&v17->_accountManager, accountManager);
    v25 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v17->_featureFlags;
    v17->_featureFlags = v25;

    v27 = objc_alloc_init(NSMutableDictionary);
    contactCache = v17->_contactCache;
    v17->_contactCache = v27;

    v29 = PHDefaultLog();
    accountManagerCopy = v32;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "MPVoicemailController initWithVoicemailManager", buf, 2u);
    }

    v30 = v17->_serialDispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F97C;
    block[3] = &unk_1000B1B80;
    v39 = v17;
    dispatch_async(v30, block);

    managerCopy = v33;
  }

  return v17;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MPVoicemailController;
  [(MPVoicemailController *)&v4 dealloc];
}

- (void)audioMessagesWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FD6C;
  block[3] = &unk_1000B20C8;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(serialDispatchQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (NSArray)audioMessages
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10001FED0;
  v9 = sub_10001FEE0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FEE8;
  v4[3] = &unk_1000B20F0;
  v4[4] = self;
  v4[5] = &v5;
  [(MPVoicemailController *)self performSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSArray)messages
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10001FED0;
  v9 = sub_10001FEE0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001FFFC;
  v4[3] = &unk_1000B20F0;
  v4[4] = self;
  v4[5] = &v5;
  [(MPVoicemailController *)self performSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (unint64_t)unreadMessageCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000200CC;
  v4[3] = &unk_1000B20F0;
  v4[4] = self;
  v4[5] = &v5;
  [(MPVoicemailController *)self performSynchronousBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)loadLocalizedTitlesForMessages:(id)messages
{
  messagesCopy = messages;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [messagesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(messagesCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(MPVoicemailController *)self localizedTitleForMessage:v9];
        v11 = [(MPVoicemailController *)self localizedSubtitleForMessage:v9];
      }

      v6 = [messagesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (id)localizedSubtitleForMessage:(id)message
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10001FED0;
  v15 = sub_10001FEE0;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020324;
  v7[3] = &unk_1000B1F28;
  messageCopy = message;
  selfCopy = self;
  v10 = &v11;
  v8 = messageCopy;
  [(MPVoicemailController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (BOOL)isRestrictedMessage:(id)message
{
  messageCopy = message;
  senderDestinationID = [messageCopy senderDestinationID];
  if ([senderDestinationID length])
  {
    senderDestinationID2 = [messageCopy senderDestinationID];
  }

  else
  {
    senderDestinationID2 = TUCallFilterUnknownCallerAddress;
  }

  v6 = senderDestinationID2;

  v7 = [TUHandle normalizedHandleWithDestinationID:v6];
  v8 = +[TUCallCenter sharedInstance];
  callFilterController = [v8 callFilterController];
  v10 = [callFilterController containsRestrictedHandle:v7 forBundleIdentifier:TUBundleIdentifierMobilePhoneApplication];

  return v10;
}

- (id)localizedAttributedDowntimeTitleForMessage:(id)message
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10001FED0;
  v15 = sub_10001FEE0;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020938;
  v7[3] = &unk_1000B1F28;
  messageCopy = message;
  selfCopy = self;
  v10 = &v11;
  v8 = messageCopy;
  [(MPVoicemailController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)localizedTitleForMessage:(id)message
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10001FED0;
  v15 = sub_10001FEE0;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020C8C;
  v7[3] = &unk_1000B1F28;
  messageCopy = message;
  selfCopy = self;
  v10 = &v11;
  v8 = messageCopy;
  [(MPVoicemailController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)localizedHandleTitleFromMessage:(id)message
{
  senderHandle = [message senderHandle];
  type = [senderHandle type];
  if (type == 2)
  {
LABEL_5:
    normalizedValue = [senderHandle normalizedValue];
    isoCountryCode = [senderHandle isoCountryCode];
    v12 = PNCreateFormattedStringWithCountry();

    goto LABEL_7;
  }

  if (type == 3)
  {
    featureFlags = [(MPVoicemailController *)self featureFlags];
    callScreeningEnabledM3 = [featureFlags callScreeningEnabledM3];

    if (callScreeningEnabledM3)
    {
      normalizedValue2 = [senderHandle normalizedValue];
      v9 = [CNLabeledValue localizedDisplayStringForLabel:normalizedValue2 propertyName:CNContactEmailAddressesKey];
    }

    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:
  if (![v12 length])
  {
    value = [senderHandle value];

    v12 = value;
  }

  return v12;
}

- (id)messagesPassingTest:(id)test
{
  testCopy = test;
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  messages = [(MPVoicemailController *)self messages];
  v7 = [messages countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(messages);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (testCopy[2](testCopy, v11))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [messages countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (void)messagesPassingTest:(id)test withCompletion:(id)completion
{
  testCopy = test;
  completionCopy = completion;
  objc_initWeak(&location, self);
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000211F8;
  v11[3] = &unk_1000B2118;
  objc_copyWeak(&v14, &location);
  v12 = testCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = testCopy;
  dispatch_async(serialDispatchQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (id)audioMessagesPassingTest:(id)test
{
  testCopy = test;
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  audioMessages = [(MPVoicemailController *)self audioMessages];
  v7 = [audioMessages countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(audioMessages);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (testCopy[2](testCopy, v11))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [audioMessages countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (void)audioMessagesPassingTest:(id)test withCompletion:(id)completion
{
  testCopy = test;
  completionCopy = completion;
  objc_initWeak(&location, self);
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000215E4;
  v11[3] = &unk_1000B2118;
  objc_copyWeak(&v14, &location);
  v12 = testCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = testCopy;
  dispatch_async(serialDispatchQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)deleteMessages:(id)messages
{
  messagesCopy = messages;
  voicemailManager = [(MPVoicemailController *)self voicemailManager];
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100021830;
  v9[3] = &unk_1000B1DE8;
  v10 = voicemailManager;
  v11 = messagesCopy;
  v7 = messagesCopy;
  v8 = voicemailManager;
  dispatch_async(serialDispatchQueue, v9);
}

- (void)markMessagesAsRead:(id)read
{
  readCopy = read;
  voicemailManager = [(MPVoicemailController *)self voicemailManager];
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100021914;
  v9[3] = &unk_1000B1DE8;
  v10 = voicemailManager;
  v11 = readCopy;
  v7 = readCopy;
  v8 = voicemailManager;
  dispatch_async(serialDispatchQueue, v9);
}

- (void)trashMessages:(id)messages
{
  messagesCopy = messages;
  voicemailManager = [(MPVoicemailController *)self voicemailManager];
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000219F8;
  v9[3] = &unk_1000B1DE8;
  v10 = voicemailManager;
  v11 = messagesCopy;
  v7 = messagesCopy;
  v8 = voicemailManager;
  dispatch_async(serialDispatchQueue, v9);
}

- (void)moveMessagesToInbox:(id)inbox
{
  inboxCopy = inbox;
  voicemailManager = [(MPVoicemailController *)self voicemailManager];
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100021ADC;
  v9[3] = &unk_1000B1DE8;
  v10 = voicemailManager;
  v11 = inboxCopy;
  v7 = inboxCopy;
  v8 = voicemailManager;
  dispatch_async(serialDispatchQueue, v9);
}

- (void)messageForIdentifier:(id)identifier completionBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  [(MPVoicemailController *)self voicemailManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100021BD0;
  v12 = v11[3] = &unk_1000B2190;
  v13 = identifierCopy;
  selfCopy = self;
  v15 = blockCopy;
  v8 = blockCopy;
  v9 = identifierCopy;
  v10 = v12;
  [(MPVoicemailController *)self performSynchronousBlock:v11];
}

- (void)addAcceptedIntroductionsNotifier
{
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100021E24;
  v8 = &unk_1000B1F00;
  objc_copyWeak(&v9, &location);
  v3 = [CNCoreRecentsChangeNotifier acceptedIntroductionsNotifierWithBlock:&v5];
  acceptedIntroductionsNotifier = self->_acceptedIntroductionsNotifier;
  self->_acceptedIntroductionsNotifier = v3;

  [(CNCoreRecentsChangeNotifier *)self->_acceptedIntroductionsNotifier startObserving:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)shouldShowVerifiedBadge
{
  v2 = PHPreferencesGetValue();
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)attributedStringForDowntimeMessage:(id)message
{
  messageCopy = message;
  v4 = objc_alloc_init(NSMutableAttributedString);
  v5 = +[NSMutableDictionary dictionary];
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  if (v6)
  {
    [v5 setObject:v6 forKeyedSubscript:NSFontAttributeName];
  }

  v7 = objc_alloc_init(NSTextAttachment);
  v8 = [UIImage tpImageForSymbolType:41 textStyle:UIFontTextStyleCallout scale:3 isStaticSize:0];
  v9 = [v8 imageWithRenderingMode:2];
  [v7 setImage:v9];

  if ([UIApp userInterfaceLayoutDirection] == 1)
  {
    v10 = [NSAttributedString alloc];
    v11 = [messageCopy stringByAppendingString:@" "];
    v12 = [v10 initWithString:v11 attributes:v5];
    [v4 appendAttributedString:v12];

    v13 = [NSAttributedString attributedStringWithAttachment:v7];
    [v4 appendAttributedString:v13];
  }

  else
  {
    v14 = [NSAttributedString attributedStringWithAttachment:v7];
    [v4 appendAttributedString:v14];

    v15 = [NSAttributedString alloc];
    v13 = [@" " stringByAppendingString:messageCopy];
    v16 = [v15 initWithString:v13 attributes:v5];
    [v4 appendAttributedString:v16];
  }

  v17 = +[UIColor secondaryLabelColor];
  [v4 addAttribute:NSForegroundColorAttributeName value:v17 range:{0, objc_msgSend(v4, "length")}];

  return v4;
}

- (CNContactFormatter)contactFormatter
{
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  contactFormatter = self->_contactFormatter;
  if (!contactFormatter)
  {
    v5 = objc_alloc_init(CNContactFormatter);
    [(CNContactFormatter *)v5 setStyle:0];
    v6 = self->_contactFormatter;
    self->_contactFormatter = v5;

    contactFormatter = self->_contactFormatter;
  }

  return contactFormatter;
}

- (NSArray)contactKeyDescriptors
{
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  contactKeyDescriptors = self->_contactKeyDescriptors;
  if (!contactKeyDescriptors)
  {
    v5 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
    v9[0] = v5;
    v9[1] = CNContactPhoneNumbersKey;
    v9[2] = CNContactEmailAddressesKey;
    v6 = [NSArray arrayWithObjects:v9 count:3];
    v7 = self->_contactKeyDescriptors;
    self->_contactKeyDescriptors = v6;

    contactKeyDescriptors = self->_contactKeyDescriptors;
  }

  return contactKeyDescriptors;
}

- (void)setMessages:(id)messages
{
  messagesCopy = messages;
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  v5 = messagesCopy;
  if (self->_messages != messagesCopy)
  {
    v6 = [(NSArray *)messagesCopy copy];
    messages = self->_messages;
    self->_messages = v6;

    v8 = [NSPredicate predicateWithBlock:&stru_1000B21D0];
    v9 = [(NSArray *)messagesCopy filteredArrayUsingPredicate:v8];

    if (self->_audioMessages != v9)
    {
      objc_storeStrong(&self->_audioMessages, v9);
    }

    [(MPVoicemailController *)self postMPVoicemailControllerMessagesDidChangeNotification];

    v5 = messagesCopy;
  }
}

- (void)setAudioMessages:(id)messages
{
  messagesCopy = messages;
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  v5 = messagesCopy;
  if (self->_audioMessages != messagesCopy)
  {
    v6 = [(NSArray *)messagesCopy copy];
    audioMessages = self->_audioMessages;
    self->_audioMessages = v6;

    [(MPVoicemailController *)self postMPVoicemailControllerMessagesDidChangeNotification];
    v5 = messagesCopy;
  }
}

- (void)setUnreadMessageCount:(unint64_t)count
{
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100022484;
  v6[3] = &unk_1000B21F8;
  v6[4] = self;
  v6[5] = count;
  dispatch_async(serialDispatchQueue, v6);
}

- (id)mutableSenderContactForMessage:(id)message
{
  messageCopy = message;
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  metadataCache = [(MPVoicemailController *)self metadataCache];
  senderDestinationID = [messageCopy senderDestinationID];
  if ([senderDestinationID length])
  {
    v8 = [TUHandle normalizedHandleWithDestinationID:senderDestinationID];
    senderISOCountryCode = [messageCopy senderISOCountryCode];
    v10 = [CNMutableContact contactForHandle:v8 isoCountryCode:senderISOCountryCode metadataCache:metadataCache];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)senderContactForMessage:(id)message
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10001FED0;
  v15 = sub_10001FEE0;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000226C4;
  v7[3] = &unk_1000B1F28;
  messageCopy = message;
  selfCopy = self;
  v10 = &v11;
  v8 = messageCopy;
  [(MPVoicemailController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (void)fetchContactsForMessages:(id)messages keyDescriptors:(id)descriptors
{
  messagesCopy = messages;
  descriptorsCopy = descriptors;
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  v9 = objc_alloc_init(NSMutableSet);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = messagesCopy;
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    do
    {
      v14 = 0;
      do
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v10);
        }

        senderDestinationID = [*(*(&v45 + 1) + 8 * v14) senderDestinationID];
        if (senderDestinationID)
        {
          contactCache = [(MPVoicemailController *)self contactCache];
          v17 = [contactCache objectForKeyedSubscript:senderDestinationID];

          if (!v17)
          {
            [v9 addObject:senderDestinationID];
          }
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v12);
  }

  v18 = PHDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v9 count];
    v20 = [v10 count];
    *buf = 134218240;
    v51 = v19;
    v52 = 2048;
    v53 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Found %lu contact handles in %lu messages", buf, 0x16u);
  }

  if ([v9 count])
  {
    contactStore = [(MPVoicemailController *)self contactStore];
    v22 = PHDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v9 count];
      *buf = 134218242;
      v51 = v23;
      v52 = 2112;
      v53 = contactStore;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Fetching contacts for %lu handles using contact store %@", buf, 0x16u);
    }

    allObjects = [v9 allObjects];
    v25 = [contactStore contactsForHandles:allObjects keyDescriptors:descriptorsCopy];

    if (v25)
    {
      v36 = contactStore;
      v37 = v10;
      v38 = v9;
      v39 = descriptorsCopy;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = v9;
      v26 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v42;
        do
        {
          v29 = 0;
          do
          {
            if (*v42 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v41 + 1) + 8 * v29);
            v31 = [TUOptionalObject alloc];
            v32 = [v25 objectForKeyedSubscript:v30];
            firstObject = [v32 firstObject];
            v34 = [v31 initWithValue:firstObject];
            contactCache2 = [(MPVoicemailController *)self contactCache];
            [contactCache2 setObject:v34 forKeyedSubscript:v30];

            v29 = v29 + 1;
          }

          while (v27 != v29);
          v27 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v27);
      }

      v9 = v38;
      descriptorsCopy = v39;
      contactStore = v36;
      v10 = v37;
    }
  }
}

- (void)fetchMessagesCompletion:(id)completion
{
  completionCopy = completion;
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  voicemailManager = [(MPVoicemailController *)self voicemailManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100022BEC;
  v8[3] = &unk_1000B2248;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [voicemailManager fetchMessagesWithCompletion:v8];
}

- (void)fetchMetadataForMessages:(id)messages
{
  messagesCopy = messages;
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  metadataCache = [(MPVoicemailController *)self metadataCache];

  if (metadataCache)
  {
    v7 = [TUMetadataDestinationID metadataDestinationIDsForVMVoicemails:messagesCopy];
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218240;
      v11 = [messagesCopy count];
      v12 = 2048;
      v13 = [v7 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching metadata for %lu voicemail messages using %lu handles", &v10, 0x16u);
    }

    metadataCache2 = [(MPVoicemailController *)self metadataCache];
    [metadataCache2 updateCacheWithDestinationIDs:v7];
  }
}

+ (id)_telephonyClient
{
  if (qword_1000C60F8 != -1)
  {
    sub_10007AB08();
  }

  v3 = qword_1000C60F0;

  return v3;
}

- (void)fetchLegacyVoicemailsCompletion:(id)completion
{
  completionCopy = completion;
  [objc_opt_class() _telephonyClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022FE4;
  v7[3] = &unk_1000B22E0;
  v8 = v7[4] = self;
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = v8;
  [v6 getActiveContextsWithCallback:v7];
}

- (void)handleUpdatedContacts
{
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023670;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

- (void)handleCNContactStoreDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v9, 0x16u);
  }

  [(MPVoicemailController *)self handleUpdatedContacts];
}

- (void)handleRecentsChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", buf, 0x16u);
  }

  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002397C;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

- (void)handleNSCurrentLocaleDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", buf, 0x16u);
  }

  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023B3C;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", buf, 0x16u);
  }

  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023D0C;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

- (void)handleUIApplicationSignificantTimeChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v9, 0x16u);
  }

  [(MPVoicemailController *)self postMPVoicemailControllerMessagesDidChangeNotification];
}

- (void)handleUIApplicationWillEnterForegroundNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v10, 0x16u);
  }

  voicemailManager = [(MPVoicemailController *)self voicemailManager];
  [voicemailManager requestInitialStateIfNecessaryAndSendNotifications:1];
}

- (void)handleVoicemailsChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", buf, 0x16u);
  }

  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000240F8;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

- (void)postMPVoicemailControllerMessagesDidChangeNotification
{
  completionDispatchQueue = [(MPVoicemailController *)self completionDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000241FC;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(completionDispatchQueue, block);
}

- (void)postMPVoicemailControllerUnreadMessageCountDidChangeNotification
{
  completionDispatchQueue = [(MPVoicemailController *)self completionDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000242E4;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(completionDispatchQueue, block);
}

- (void)performSynchronousBlock:(id)block
{
  if (dispatch_get_specific(off_1000C4A78) == self)
  {
    v6 = *(block + 2);
    blockCopy = block;
    v6();
  }

  else
  {
    blockCopy2 = block;
    blockCopy = [(MPVoicemailController *)self serialDispatchQueue];
    dispatch_sync(blockCopy, blockCopy2);
  }
}

- (void)providersChangedForProviderManager:(id)manager
{
  managerCopy = manager;
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(serialDispatchQueue);

  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = managerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling providersChangedForProviderManager %@", &v9, 0x16u);
  }

  localizedSubtitleCache = [(MPVoicemailController *)self localizedSubtitleCache];
  [localizedSubtitleCache removeAllObjects];

  localizedTitleCache = [(MPVoicemailController *)self localizedTitleCache];
  [localizedTitleCache removeAllObjects];

  [(MPVoicemailController *)self postMPVoicemailControllerMessagesDidChangeNotification];
}

@end