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
    v21 = MPVoicemailControllerSerialQueueContextKey;
    specific = dispatch_queue_get_specific(v20, MPVoicemailControllerSerialQueueContextKey);
    if (specific)
    {
      v23 = specific;
      v24 = PHDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [MPVoicemailController initWithVoicemailManager:v23 accountManager:v17 callProviderManager:v24 contactStore:? suggestedContactStore:? metadataCache:?];
      }

      v20 = v17->_serialDispatchQueue;
      v21 = MPVoicemailControllerSerialQueueContextKey;
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
    block[2] = __134__MPVoicemailController_initWithVoicemailManager_accountManager_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke;
    block[3] = &unk_100284FD0;
    v39 = v17;
    dispatch_async(v30, block);

    managerCopy = v33;
  }

  return v17;
}

void __134__MPVoicemailController_initWithVoicemailManager_accountManager_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MPVoicemailController initWithVoicemailManager, inside serialDispatchQueue", buf, 2u);
  }

  objc_storeStrong((*(a1 + 32) + 96), &_dispatch_main_q);
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = &__NSArray0__struct;

  v5 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __134__MPVoicemailController_initWithVoicemailManager_accountManager_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_109;
  v7[3] = &unk_1002854D0;
  v8 = v5;
  [v8 fetchMessagesCompletion:v7];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:"handleCNContactStoreDidChangeNotification:" name:CNContactStoreDidChangeNotification object:0];
  [v6 addObserver:*(a1 + 32) selector:"handleNSCurrentLocaleDidChangeNotification:" name:NSCurrentLocaleDidChangeNotification object:0];
  [v6 addObserver:*(a1 + 32) selector:"handleTUMetadataCacheDidFinishUpdatingNotification:" name:TUMetadataCacheDidFinishUpdatingNotification object:0];
  [v6 addObserver:*(a1 + 32) selector:"handleUIApplicationSignificantTimeChangeNotification:" name:UIApplicationSignificantTimeChangeNotification object:0];
  [v6 addObserver:*(a1 + 32) selector:"handleUIApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
  [v6 addObserver:*(a1 + 32) selector:"handleRecentsChangedNotification:" name:kCallHistoryDatabaseChangedNotification object:0];
  [v6 addObserver:*(a1 + 32) selector:"handleVoicemailsChangedNotification:" name:@"PHVoicemailManagerVoicemailsChanged" object:0];
  [*(a1 + 32) addAcceptedIntroductionsNotifier];
}

void __134__MPVoicemailController_initWithVoicemailManager_accountManager_callProviderManager_contactStore_suggestedContactStore_metadataCache___block_invoke_109(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PHDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MPVoicemailController initWithVoicemailManager, fetchMessagesCompletion", v5, 2u);
  }

  [*(a1 + 32) setMessages:v3];
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
  block[2] = __53__MPVoicemailController_audioMessagesWithCompletion___block_invoke;
  block[3] = &unk_100285690;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(serialDispatchQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __53__MPVoicemailController_audioMessagesWithCompletion___block_invoke(uint64_t a1)
{
  if (objc_loadWeakRetained((a1 + 40)))
  {
    (*(*(a1 + 32) + 16))();
  }

  return _objc_release_x1();
}

- (NSArray)audioMessages
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __38__MPVoicemailController_audioMessages__block_invoke;
  v4[3] = &unk_1002856B8;
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
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __33__MPVoicemailController_messages__block_invoke;
  v4[3] = &unk_1002856B8;
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
  v4[2] = __43__MPVoicemailController_unreadMessageCount__block_invoke;
  v4[3] = &unk_1002856B8;
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
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __53__MPVoicemailController_localizedSubtitleForMessage___block_invoke;
  v7[3] = &unk_1002856E0;
  messageCopy = message;
  selfCopy = self;
  v10 = &v11;
  v8 = messageCopy;
  [(MPVoicemailController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __53__MPVoicemailController_localizedSubtitleForMessage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v43 = [NSString stringWithFormat:@"%@", v2];

  v3 = [*(a1 + 40) localizedSubtitleCache];
  v4 = [v3 objectForKey:v43];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (![*(*(*(a1 + 48) + 8) + 40) length])
  {
    v7 = [*(a1 + 32) senderDestinationID];
    if ([v7 length])
    {
      v8 = [*(a1 + 32) senderISOCountryCode];
      v9 = [*(a1 + 40) senderContactForMessage:*(a1 + 32)];
      v10 = [TUHandle normalizedHandleWithDestinationID:v7];
      v11 = v10;
      if (v9 && [v10 type] == 2)
      {
        v12 = [CNPhoneNumber phoneNumberWithDigits:v7 countryCode:v8];
        if (v12)
        {
          v13 = [v9 labeledValueForPhoneNumber:v12];
        }

        else
        {
          v13 = 0;
        }

        v14 = [v13 label];
        v15 = [CNLabeledValue localizedDisplayStringForLabel:v14 propertyName:CNContactPhoneNumbersKey];
        v16 = *(*(a1 + 48) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;
      }

      if (![*(*(*(a1 + 48) + 8) + 40) length])
      {
        v18 = [[TUMetadataDestinationID alloc] initWithHandle:v11];
        if (v18)
        {
          v19 = [*(a1 + 40) metadataCache];
          v20 = [v19 metadataForDestinationID:v18];

          v21 = [v20 metadataForProvider:objc_opt_class()];
          v22 = *(*(a1 + 48) + 8);
          v23 = *(v22 + 40);
          *(v22 + 40) = v21;

          if (![*(*(*(a1 + 48) + 8) + 40) length])
          {
            v24 = [v20 metadataForProvider:objc_opt_class()];
            v25 = *(*(a1 + 48) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v24;
          }

          if (![*(*(*(a1 + 48) + 8) + 40) length])
          {
            v27 = [v20 metadataForProvider:objc_opt_class()];
            v28 = *(*(a1 + 48) + 8);
            v29 = *(v28 + 40);
            *(v28 + 40) = v27;
          }
        }
      }
    }

    v30 = [*(a1 + 40) featureFlags];
    v31 = [v30 callScreeningEnabledM3];

    if (v31)
    {
      v32 = [*(a1 + 32) provider];
      v33 = [v32 isEqual:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

      if (v33)
      {
        v34 = +[NSBundle mainBundle];
        v35 = [v34 localizedStringForKey:@"MPVOICEMAIL_TABLE_VIEW_CELL_TITLE_FaceTime_Audio" value:&stru_10028F310 table:@"MPVoicemail"];
        v36 = *(*(a1 + 48) + 8);
        v37 = *(v36 + 40);
        *(v36 + 40) = v35;
      }
    }

    if (![*(*(*(a1 + 48) + 8) + 40) length])
    {
      v38 = +[NSBundle mainBundle];
      v39 = [v38 localizedStringForKey:@"MPVOICEMAIL_TABLE_VIEW_CELL_SUBTITLE_UNKNOWN" value:&stru_10028F310 table:@"MPVoicemail"];
      v40 = *(*(a1 + 48) + 8);
      v41 = *(v40 + 40);
      *(v40 + 40) = v39;
    }

    v42 = [*(a1 + 40) localizedSubtitleCache];
    [v42 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v43];
  }
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
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __68__MPVoicemailController_localizedAttributedDowntimeTitleForMessage___block_invoke;
  v7[3] = &unk_1002856E0;
  messageCopy = message;
  selfCopy = self;
  v10 = &v11;
  v8 = messageCopy;
  [(MPVoicemailController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __68__MPVoicemailController_localizedAttributedDowntimeTitleForMessage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v21 = [NSString stringWithFormat:@"%@", v2];

  v3 = [*(a1 + 40) localizedDowntimeTitleCache];
  v4 = [v3 objectForKey:v21];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(a1 + 40) senderContactForMessage:*(a1 + 32)];
    v8 = [*(a1 + 40) contactFormatter];
    v9 = [v8 stringFromContact:v7];

    if (![v9 length])
    {
      v10 = [*(a1 + 40) localizedHandleTitleFromMessage:*(a1 + 32)];

      v9 = v10;
    }

    if (![v9 length])
    {
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"MPVOICEMAIL_TABLE_VIEW_CELL_TITLE_UNKNOWN" value:&stru_10028F310 table:@"MPVoicemail"];

      v9 = v12;
    }

    v13 = *(a1 + 40);
    v14 = TUBundle();
    v15 = [v14 localizedStringForKey:@"DOWNTIME_CALLER_%@" value:&stru_10028F310 table:@"TelephonyUtilities"];
    v16 = [NSString stringWithFormat:v15, v9];
    v17 = [v13 attributedStringForDowntimeMessage:v16];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = [*(a1 + 40) localizedDowntimeTitleCache];
    [v20 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v21];
  }
}

- (id)localizedTitleForMessage:(id)message
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __50__MPVoicemailController_localizedTitleForMessage___block_invoke;
  v7[3] = &unk_1002856E0;
  messageCopy = message;
  selfCopy = self;
  v10 = &v11;
  v8 = messageCopy;
  [(MPVoicemailController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __50__MPVoicemailController_localizedTitleForMessage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v20 = [NSString stringWithFormat:@"%@", v2];

  v3 = [*(a1 + 40) localizedTitleCache];
  v4 = [v3 objectForKey:v20];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(a1 + 40) senderContactForMessage:*(a1 + 32)];
    v8 = [*(a1 + 40) contactFormatter];
    v9 = [v8 stringFromContact:v7];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (![*(*(*(a1 + 48) + 8) + 40) length])
    {
      v12 = [*(a1 + 40) localizedHandleTitleFromMessage:*(a1 + 32)];
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    if (![*(*(*(a1 + 48) + 8) + 40) length])
    {
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"MPVOICEMAIL_TABLE_VIEW_CELL_TITLE_UNKNOWN" value:&stru_10028F310 table:@"MPVoicemail"];
      v17 = *(*(a1 + 48) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    v19 = [*(a1 + 40) localizedTitleCache];
    [v19 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v20];
  }
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
  v11[2] = __60__MPVoicemailController_messagesPassingTest_withCompletion___block_invoke;
  v11[3] = &unk_100285708;
  objc_copyWeak(&v14, &location);
  v12 = testCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = testCopy;
  dispatch_async(serialDispatchQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __60__MPVoicemailController_messagesPassingTest_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = +[NSMutableArray array];
    v4 = WeakRetained[4];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          if ((*(*(a1 + 32) + 16))())
          {
            [v3 addObject:v9];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = *(a1 + 40);
    v11 = [v3 copy];
    (*(v10 + 16))(v10, v11);
  }
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
  v11[2] = __65__MPVoicemailController_audioMessagesPassingTest_withCompletion___block_invoke;
  v11[3] = &unk_100285708;
  objc_copyWeak(&v14, &location);
  v12 = testCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = testCopy;
  dispatch_async(serialDispatchQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __65__MPVoicemailController_audioMessagesPassingTest_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = +[NSMutableArray array];
    v4 = WeakRetained[3];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          if ((*(*(a1 + 32) + 16))())
          {
            [v3 addObject:v9];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = *(a1 + 40);
    v11 = [v3 copy];
    (*(v10 + 16))(v10, v11);
  }
}

- (void)deleteMessages:(id)messages
{
  messagesCopy = messages;
  voicemailManager = [(MPVoicemailController *)self voicemailManager];
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __40__MPVoicemailController_deleteMessages___block_invoke;
  v9[3] = &unk_1002852E0;
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
  v9[2] = __44__MPVoicemailController_markMessagesAsRead___block_invoke;
  v9[3] = &unk_1002852E0;
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
  v9[2] = __39__MPVoicemailController_trashMessages___block_invoke;
  v9[3] = &unk_1002852E0;
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
  v9[2] = __45__MPVoicemailController_moveMessagesToInbox___block_invoke;
  v9[3] = &unk_1002852E0;
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
  v11[2] = __62__MPVoicemailController_messageForIdentifier_completionBlock___block_invoke;
  v12 = v11[3] = &unk_100285780;
  v13 = identifierCopy;
  selfCopy = self;
  v15 = blockCopy;
  v8 = blockCopy;
  v9 = identifierCopy;
  v10 = v12;
  [(MPVoicemailController *)self performSynchronousBlock:v11];
}

void __62__MPVoicemailController_messageForIdentifier_completionBlock___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __62__MPVoicemailController_messageForIdentifier_completionBlock___block_invoke_2;
  v4[3] = &unk_100285758;
  v3 = a1[7];
  v4[4] = a1[6];
  v5 = v3;
  [v1 voicemailWithIdentifier:v2 completion:v4];
}

void __62__MPVoicemailController_messageForIdentifier_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) completionDispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __62__MPVoicemailController_messageForIdentifier_completionBlock___block_invoke_3;
  v7[3] = &unk_100285730;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)addAcceptedIntroductionsNotifier
{
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = __57__MPVoicemailController_addAcceptedIntroductionsNotifier__block_invoke;
  v8 = &unk_1002857A8;
  objc_copyWeak(&v9, &location);
  v3 = [CNCoreRecentsChangeNotifier acceptedIntroductionsNotifierWithBlock:&v5];
  acceptedIntroductionsNotifier = self->_acceptedIntroductionsNotifier;
  self->_acceptedIntroductionsNotifier = v3;

  [(CNCoreRecentsChangeNotifier *)self->_acceptedIntroductionsNotifier startObserving:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__MPVoicemailController_addAcceptedIntroductionsNotifier__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUpdatedContacts];
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

    v8 = [NSPredicate predicateWithBlock:&__block_literal_global_5];
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
  v6[2] = __47__MPVoicemailController_setUnreadMessageCount___block_invoke;
  v6[3] = &unk_1002852B8;
  v6[4] = self;
  v6[5] = count;
  dispatch_async(serialDispatchQueue, v6);
}

id __47__MPVoicemailController_setUnreadMessageCount___block_invoke(id result)
{
  v1 = *(result + 4);
  v2 = *(result + 5);
  if (*(v1 + 40) != v2)
  {
    *(v1 + 40) = v2;
    return [*(result + 4) postMPVoicemailControllerUnreadMessageCountDidChangeNotification];
  }

  return result;
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
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __49__MPVoicemailController_senderContactForMessage___block_invoke;
  v7[3] = &unk_1002856E0;
  messageCopy = message;
  selfCopy = self;
  v10 = &v11;
  v8 = messageCopy;
  [(MPVoicemailController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void __49__MPVoicemailController_senderContactForMessage___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) senderDestinationID];
  if ([v7 length])
  {
    v2 = [*(a1 + 40) contactCache];
    v3 = [v2 objectForKeyedSubscript:v7];
    v4 = [v3 value];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
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
  v8[2] = __49__MPVoicemailController_fetchMessagesCompletion___block_invoke;
  v8[3] = &unk_100285838;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [voicemailManager fetchMessagesWithCompletion:v8];
}

void __49__MPVoicemailController_fetchMessagesCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__MPVoicemailController_fetchMessagesCompletion___block_invoke_2;
  block[3] = &unk_100285810;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __49__MPVoicemailController_fetchMessagesCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 contactKeyDescriptors];
  [v2 fetchContactsForMessages:v3 keyDescriptors:v4];

  [*(a1 + 32) fetchMetadataForMessages:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 16);

  return v5();
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
  if (_telephonyClient_onceToken != -1)
  {
    +[MPVoicemailController _telephonyClient];
  }

  v3 = _telephonyClient_staticTelephonyClient;

  return v3;
}

void __41__MPVoicemailController__telephonyClient__block_invoke(id a1)
{
  v3 = dispatch_queue_create("com.apple.mobilephone.voicemail", 0);
  v1 = [[CoreTelephonyClient alloc] initWithQueue:v3];
  v2 = _telephonyClient_staticTelephonyClient;
  _telephonyClient_staticTelephonyClient = v1;
}

- (void)fetchLegacyVoicemailsCompletion:(id)completion
{
  completionCopy = completion;
  [objc_opt_class() _telephonyClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __57__MPVoicemailController_fetchLegacyVoicemailsCompletion___block_invoke;
  v7[3] = &unk_1002858D0;
  v8 = v7[4] = self;
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = v8;
  [v6 getActiveContextsWithCallback:v7];
}

void __57__MPVoicemailController_fetchLegacyVoicemailsCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v27 = 0;
    group = dispatch_group_create();
    v29 = +[NSMutableArray array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v28 = v5;
    obj = [v5 subscriptions];
    v8 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = v8;
    v10 = *v46;
    v11 = v44;
    while (1)
    {
      v12 = 0;
      v31 = v9;
      do
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v45 + 1) + 8 * v12);
        v34 = [v13 context];
        v14 = [*(a1 + 32) accountManager];
        v15 = [v14 accounts];
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v44[0] = __57__MPVoicemailController_fetchLegacyVoicemailsCompletion___block_invoke_189;
        v44[1] = &unk_100285880;
        v44[2] = v13;
        v16 = [v15 tu_firstObjectPassingTest:v43];

        if (v16)
        {
          v17 = [*(a1 + 32) accountManager];
          v18 = [v16 UUID];
          if ([v17 isAccountSubscribed:v18])
          {
          }

          else
          {
            v19 = [*(a1 + 32) accountManager];
            [v16 UUID];
            v20 = v11;
            v21 = a1;
            v23 = v22 = v10;
            v33 = [v19 isCallVoicemailSupportedForAccountUUID:v23];

            v10 = v22;
            a1 = v21;
            v11 = v20;
            v9 = v31;

            if (!v33)
            {
              goto LABEL_15;
            }

            dispatch_group_enter(group);
            v24 = *(a1 + 40);
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = __57__MPVoicemailController_fetchLegacyVoicemailsCompletion___block_invoke_2;
            v38[3] = &unk_1002858A8;
            v39 = group;
            v40 = v29;
            v41 = v16;
            v42 = v13;
            [v24 getVoicemailInfo:v34 completion:v38];

            v17 = v39;
          }
        }

LABEL_15:

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (!v9)
      {
LABEL_17:

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __57__MPVoicemailController_fetchLegacyVoicemailsCompletion___block_invoke_199;
        block[3] = &unk_100285730;
        v25 = *(a1 + 48);
        v36 = v29;
        v37 = v25;
        v26 = v29;
        v7 = group;
        dispatch_group_notify(group, &_dispatch_main_q, block);

        v6 = v27;
        v5 = v28;
        goto LABEL_18;
      }
    }
  }

  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __57__MPVoicemailController_fetchLegacyVoicemailsCompletion___block_invoke_cold_1(v6, v7);
  }

LABEL_18:
}

id __57__MPVoicemailController_fetchLegacyVoicemailsCompletion___block_invoke_189(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [v3 UUIDString];
  v5 = [*(a1 + 32) labelID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

void __57__MPVoicemailController_fetchLegacyVoicemailsCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  v10 = PHDefaultLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __57__MPVoicemailController_fetchLegacyVoicemailsCompletion___block_invoke_2_cold_1(v9, v11);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v17 = 138412546;
      v18 = v12;
      v19 = 1024;
      v20 = [v8 intValue];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Voicemail info returned available=%@, count=%d", &v17, 0x12u);
    }

    v13 = *(a1 + 40);
    v14 = [MPLegacyVoicemail alloc];
    v11 = [*(a1 + 48) UUID];
    v15 = [*(a1 + 56) label];
    v16 = [(MPLegacyVoicemail *)v14 initWithAccountID:v11 label:v15 hasUnreadMessages:a2];
    [v13 addObject:v16];
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)handleUpdatedContacts
{
  serialDispatchQueue = [(MPVoicemailController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __46__MPVoicemailController_handleUpdatedContacts__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

id __46__MPVoicemailController_handleUpdatedContacts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactCache];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) localizedSubtitleCache];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) localizedTitleCache];
  [v4 removeAllObjects];

  v5 = *(a1 + 32);
  v6 = v5[4];
  v7 = [v5 contactKeyDescriptors];
  [v5 fetchContactsForMessages:v6 keyDescriptors:v7];

  v8 = *(a1 + 32);

  return [v8 postMPVoicemailControllerMessagesDidChangeNotification];
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
  block[2] = __58__MPVoicemailController_handleRecentsChangedNotification___block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

id __58__MPVoicemailController_handleRecentsChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localizedSubtitleCache];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) localizedTitleCache];
  [v3 removeAllObjects];

  v4 = *(a1 + 32);

  return [v4 postMPVoicemailControllerMessagesDidChangeNotification];
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
  block[2] = __68__MPVoicemailController_handleNSCurrentLocaleDidChangeNotification___block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

id __68__MPVoicemailController_handleNSCurrentLocaleDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  *(v2 + 144) = 0;

  v4 = [*(a1 + 32) localizedSubtitleCache];
  [v4 removeAllObjects];

  v5 = [*(a1 + 32) localizedTitleCache];
  [v5 removeAllObjects];

  v6 = *(a1 + 32);

  return [v6 postMPVoicemailControllerMessagesDidChangeNotification];
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
  block[2] = __76__MPVoicemailController_handleTUMetadataCacheDidFinishUpdatingNotification___block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

id __76__MPVoicemailController_handleTUMetadataCacheDidFinishUpdatingNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localizedSubtitleCache];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) localizedTitleCache];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) localizedDowntimeTitleCache];
  [v4 removeAllObjects];

  v5 = *(a1 + 32);

  return [v5 postMPVoicemailControllerMessagesDidChangeNotification];
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
  block[2] = __61__MPVoicemailController_handleVoicemailsChangedNotification___block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(serialDispatchQueue, block);
}

id __61__MPVoicemailController_handleVoicemailsChangedNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __61__MPVoicemailController_handleVoicemailsChangedNotification___block_invoke_2;
  v3[3] = &unk_1002854D0;
  v3[4] = v1;
  return [v1 fetchMessagesCompletion:v3];
}

- (void)postMPVoicemailControllerMessagesDidChangeNotification
{
  completionDispatchQueue = [(MPVoicemailController *)self completionDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __79__MPVoicemailController_postMPVoicemailControllerMessagesDidChangeNotification__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(completionDispatchQueue, block);
}

void __79__MPVoicemailController_postMPVoicemailControllerMessagesDidChangeNotification__block_invoke(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MPVoicemailControllerMessagesDidChangeNotification" object:*(a1 + 32)];
}

- (void)postMPVoicemailControllerUnreadMessageCountDidChangeNotification
{
  completionDispatchQueue = [(MPVoicemailController *)self completionDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __89__MPVoicemailController_postMPVoicemailControllerUnreadMessageCountDidChangeNotification__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(completionDispatchQueue, block);
}

void __89__MPVoicemailController_postMPVoicemailControllerUnreadMessageCountDidChangeNotification__block_invoke(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MPVoicemailControllerUnreadMessageCountDidChangeNotification" object:*(a1 + 32)];
}

- (void)performSynchronousBlock:(id)block
{
  if (dispatch_get_specific(MPVoicemailControllerSerialQueueContextKey) == self)
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

- (void)initWithVoicemailManager:(os_log_t)log accountManager:callProviderManager:contactStore:suggestedContactStore:metadataCache:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Multiple instances of MPVoicemailController detected in same process which is not yet supported. (existing: %@, self: %@)", &v3, 0x16u);
}

void __57__MPVoicemailController_fetchLegacyVoicemailsCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to get subscription information: %@", &v2, 0xCu);
}

void __57__MPVoicemailController_fetchLegacyVoicemailsCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to get voicemail information: %@", &v2, 0xCu);
}

@end