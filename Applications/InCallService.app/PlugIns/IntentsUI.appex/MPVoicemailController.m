@interface MPVoicemailController
+ (id)_telephonyClient;
- (BOOL)isRestrictedMessage:(id)a3;
- (BOOL)shouldShowVerifiedBadge;
- (CNContactFormatter)contactFormatter;
- (MPVoicemailController)init;
- (MPVoicemailController)initWithVoicemailManager:(id)a3 accountManager:(id)a4 callProviderManager:(id)a5 contactStore:(id)a6 suggestedContactStore:(id)a7 metadataCache:(id)a8;
- (NSArray)audioMessages;
- (NSArray)contactKeyDescriptors;
- (NSArray)messages;
- (id)attributedStringForDowntimeMessage:(id)a3;
- (id)audioMessagesPassingTest:(id)a3;
- (id)localizedAttributedDowntimeTitleForMessage:(id)a3;
- (id)localizedHandleTitleFromMessage:(id)a3;
- (id)localizedSubtitleForMessage:(id)a3;
- (id)localizedTitleForMessage:(id)a3;
- (id)messagesPassingTest:(id)a3;
- (id)mutableSenderContactForMessage:(id)a3;
- (id)senderContactForMessage:(id)a3;
- (unint64_t)unreadMessageCount;
- (void)addAcceptedIntroductionsNotifier;
- (void)audioMessagesPassingTest:(id)a3 withCompletion:(id)a4;
- (void)audioMessagesWithCompletion:(id)a3;
- (void)dealloc;
- (void)deleteMessages:(id)a3;
- (void)fetchContactsForMessages:(id)a3 keyDescriptors:(id)a4;
- (void)fetchLegacyVoicemailsCompletion:(id)a3;
- (void)fetchMessagesCompletion:(id)a3;
- (void)fetchMetadataForMessages:(id)a3;
- (void)handleCNContactStoreDidChangeNotification:(id)a3;
- (void)handleNSCurrentLocaleDidChangeNotification:(id)a3;
- (void)handleRecentsChangedNotification:(id)a3;
- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)a3;
- (void)handleUIApplicationSignificantTimeChangeNotification:(id)a3;
- (void)handleUIApplicationWillEnterForegroundNotification:(id)a3;
- (void)handleUpdatedContacts;
- (void)handleVoicemailsChangedNotification:(id)a3;
- (void)loadLocalizedTitlesForMessages:(id)a3;
- (void)markMessagesAsRead:(id)a3;
- (void)messageForIdentifier:(id)a3 completionBlock:(id)a4;
- (void)messagesPassingTest:(id)a3 withCompletion:(id)a4;
- (void)moveMessagesToInbox:(id)a3;
- (void)performSynchronousBlock:(id)a3;
- (void)postMPVoicemailControllerMessagesDidChangeNotification;
- (void)postMPVoicemailControllerUnreadMessageCountDidChangeNotification;
- (void)providersChangedForProviderManager:(id)a3;
- (void)setAudioMessages:(id)a3;
- (void)setMessages:(id)a3;
- (void)setUnreadMessageCount:(unint64_t)a3;
- (void)trashMessages:(id)a3;
@end

@implementation MPVoicemailController

- (MPVoicemailController)init
{
  [(MPVoicemailController *)self doesNotRecognizeSelector:a2];
  v2 = [NSException exceptionWithName:@"doesNotRecognizeSelector" reason:@"init not implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (MPVoicemailController)initWithVoicemailManager:(id)a3 accountManager:(id)a4 callProviderManager:(id)a5 contactStore:(id)a6 suggestedContactStore:(id)a7 metadataCache:(id)a8
{
  v15 = a3;
  v16 = a4;
  v37 = a5;
  v36 = a6;
  v35 = a7;
  v34 = a8;
  v41.receiver = self;
  v41.super_class = MPVoicemailController;
  v17 = [(MPVoicemailController *)&v41 init];
  if (v17)
  {
    v32 = v16;
    v33 = v15;
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
    objc_storeStrong(&v17->_callProviderManager, a5);
    objc_storeStrong(&v17->_contactStore, a6);
    objc_storeStrong(&v17->_suggestedContactStore, a7);
    objc_storeStrong(&v17->_metadataCache, a8);
    objc_storeStrong(&v17->_voicemailManager, a3);
    objc_storeStrong(&v17->_accountManager, a4);
    v25 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v17->_featureFlags;
    v17->_featureFlags = v25;

    v27 = objc_alloc_init(NSMutableDictionary);
    contactCache = v17->_contactCache;
    v17->_contactCache = v27;

    v29 = PHDefaultLog();
    v16 = v32;
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

    v15 = v33;
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

- (void)audioMessagesWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MPVoicemailController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FD6C;
  block[3] = &unk_1000B20C8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

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

- (void)loadLocalizedTitlesForMessages:(id)a3
{
  v4 = a3;
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
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(MPVoicemailController *)self localizedTitleForMessage:v9];
        v11 = [(MPVoicemailController *)self localizedSubtitleForMessage:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (id)localizedSubtitleForMessage:(id)a3
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
  v4 = a3;
  v9 = self;
  v10 = &v11;
  v8 = v4;
  [(MPVoicemailController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (BOOL)isRestrictedMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 senderDestinationID];
  if ([v4 length])
  {
    v5 = [v3 senderDestinationID];
  }

  else
  {
    v5 = TUCallFilterUnknownCallerAddress;
  }

  v6 = v5;

  v7 = [TUHandle normalizedHandleWithDestinationID:v6];
  v8 = +[TUCallCenter sharedInstance];
  v9 = [v8 callFilterController];
  v10 = [v9 containsRestrictedHandle:v7 forBundleIdentifier:TUBundleIdentifierMobilePhoneApplication];

  return v10;
}

- (id)localizedAttributedDowntimeTitleForMessage:(id)a3
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
  v4 = a3;
  v9 = self;
  v10 = &v11;
  v8 = v4;
  [(MPVoicemailController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)localizedTitleForMessage:(id)a3
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
  v4 = a3;
  v9 = self;
  v10 = &v11;
  v8 = v4;
  [(MPVoicemailController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)localizedHandleTitleFromMessage:(id)a3
{
  v4 = [a3 senderHandle];
  v5 = [v4 type];
  if (v5 == 2)
  {
LABEL_5:
    v10 = [v4 normalizedValue];
    v11 = [v4 isoCountryCode];
    v12 = PNCreateFormattedStringWithCountry();

    goto LABEL_7;
  }

  if (v5 == 3)
  {
    v6 = [(MPVoicemailController *)self featureFlags];
    v7 = [v6 callScreeningEnabledM3];

    if (v7)
    {
      v8 = [v4 normalizedValue];
      v9 = [CNLabeledValue localizedDisplayStringForLabel:v8 propertyName:CNContactEmailAddressesKey];
    }

    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:
  if (![v12 length])
  {
    v13 = [v4 value];

    v12 = v13;
  }

  return v12;
}

- (id)messagesPassingTest:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(MPVoicemailController *)self messages];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (void)messagesPassingTest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(MPVoicemailController *)self serialDispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000211F8;
  v11[3] = &unk_1000B2118;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (id)audioMessagesPassingTest:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(MPVoicemailController *)self audioMessages];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (void)audioMessagesPassingTest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(MPVoicemailController *)self serialDispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000215E4;
  v11[3] = &unk_1000B2118;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)deleteMessages:(id)a3
{
  v4 = a3;
  v5 = [(MPVoicemailController *)self voicemailManager];
  v6 = [(MPVoicemailController *)self serialDispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100021830;
  v9[3] = &unk_1000B1DE8;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

- (void)markMessagesAsRead:(id)a3
{
  v4 = a3;
  v5 = [(MPVoicemailController *)self voicemailManager];
  v6 = [(MPVoicemailController *)self serialDispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100021914;
  v9[3] = &unk_1000B1DE8;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

- (void)trashMessages:(id)a3
{
  v4 = a3;
  v5 = [(MPVoicemailController *)self voicemailManager];
  v6 = [(MPVoicemailController *)self serialDispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000219F8;
  v9[3] = &unk_1000B1DE8;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

- (void)moveMessagesToInbox:(id)a3
{
  v4 = a3;
  v5 = [(MPVoicemailController *)self voicemailManager];
  v6 = [(MPVoicemailController *)self serialDispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100021ADC;
  v9[3] = &unk_1000B1DE8;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, v9);
}

- (void)messageForIdentifier:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MPVoicemailController *)self voicemailManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100021BD0;
  v12 = v11[3] = &unk_1000B2190;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v8 = v7;
  v9 = v6;
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
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)attributedStringForDowntimeMessage:(id)a3
{
  v3 = a3;
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
    v11 = [v3 stringByAppendingString:@" "];
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
    v13 = [@" " stringByAppendingString:v3];
    v16 = [v15 initWithString:v13 attributes:v5];
    [v4 appendAttributedString:v16];
  }

  v17 = +[UIColor secondaryLabelColor];
  [v4 addAttribute:NSForegroundColorAttributeName value:v17 range:{0, objc_msgSend(v4, "length")}];

  return v4;
}

- (CNContactFormatter)contactFormatter
{
  v3 = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v3);

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
  v3 = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v3);

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

- (void)setMessages:(id)a3
{
  v10 = a3;
  v4 = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v4);

  v5 = v10;
  if (self->_messages != v10)
  {
    v6 = [(NSArray *)v10 copy];
    messages = self->_messages;
    self->_messages = v6;

    v8 = [NSPredicate predicateWithBlock:&stru_1000B21D0];
    v9 = [(NSArray *)v10 filteredArrayUsingPredicate:v8];

    if (self->_audioMessages != v9)
    {
      objc_storeStrong(&self->_audioMessages, v9);
    }

    [(MPVoicemailController *)self postMPVoicemailControllerMessagesDidChangeNotification];

    v5 = v10;
  }
}

- (void)setAudioMessages:(id)a3
{
  v8 = a3;
  v4 = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v4);

  v5 = v8;
  if (self->_audioMessages != v8)
  {
    v6 = [(NSArray *)v8 copy];
    audioMessages = self->_audioMessages;
    self->_audioMessages = v6;

    [(MPVoicemailController *)self postMPVoicemailControllerMessagesDidChangeNotification];
    v5 = v8;
  }
}

- (void)setUnreadMessageCount:(unint64_t)a3
{
  v5 = [(MPVoicemailController *)self serialDispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100022484;
  v6[3] = &unk_1000B21F8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (id)mutableSenderContactForMessage:(id)a3
{
  v4 = a3;
  v5 = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MPVoicemailController *)self metadataCache];
  v7 = [v4 senderDestinationID];
  if ([v7 length])
  {
    v8 = [TUHandle normalizedHandleWithDestinationID:v7];
    v9 = [v4 senderISOCountryCode];
    v10 = [CNMutableContact contactForHandle:v8 isoCountryCode:v9 metadataCache:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)senderContactForMessage:(id)a3
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
  v4 = a3;
  v9 = self;
  v10 = &v11;
  v8 = v4;
  [(MPVoicemailController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (void)fetchContactsForMessages:(id)a3 keyDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_alloc_init(NSMutableSet);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = v6;
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

        v15 = [*(*(&v45 + 1) + 8 * v14) senderDestinationID];
        if (v15)
        {
          v16 = [(MPVoicemailController *)self contactCache];
          v17 = [v16 objectForKeyedSubscript:v15];

          if (!v17)
          {
            [v9 addObject:v15];
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
    v21 = [(MPVoicemailController *)self contactStore];
    v22 = PHDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v9 count];
      *buf = 134218242;
      v51 = v23;
      v52 = 2112;
      v53 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Fetching contacts for %lu handles using contact store %@", buf, 0x16u);
    }

    v24 = [v9 allObjects];
    v25 = [v21 contactsForHandles:v24 keyDescriptors:v7];

    if (v25)
    {
      v36 = v21;
      v37 = v10;
      v38 = v9;
      v39 = v7;
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
            v33 = [v32 firstObject];
            v34 = [v31 initWithValue:v33];
            v35 = [(MPVoicemailController *)self contactCache];
            [v35 setObject:v34 forKeyedSubscript:v30];

            v29 = v29 + 1;
          }

          while (v27 != v29);
          v27 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v27);
      }

      v9 = v38;
      v7 = v39;
      v21 = v36;
      v10 = v37;
    }
  }
}

- (void)fetchMessagesCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MPVoicemailController *)self voicemailManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100022BEC;
  v8[3] = &unk_1000B2248;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 fetchMessagesWithCompletion:v8];
}

- (void)fetchMetadataForMessages:(id)a3
{
  v4 = a3;
  v5 = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(MPVoicemailController *)self metadataCache];

  if (v6)
  {
    v7 = [TUMetadataDestinationID metadataDestinationIDsForVMVoicemails:v4];
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218240;
      v11 = [v4 count];
      v12 = 2048;
      v13 = [v7 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching metadata for %lu voicemail messages using %lu handles", &v10, 0x16u);
    }

    v9 = [(MPVoicemailController *)self metadataCache];
    [v9 updateCacheWithDestinationIDs:v7];
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

- (void)fetchLegacyVoicemailsCompletion:(id)a3
{
  v4 = a3;
  [objc_opt_class() _telephonyClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022FE4;
  v7[3] = &unk_1000B22E0;
  v8 = v7[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = v8;
  [v6 getActiveContextsWithCallback:v7];
}

- (void)handleUpdatedContacts
{
  v3 = [(MPVoicemailController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023670;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)handleCNContactStoreDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v9, 0x16u);
  }

  [(MPVoicemailController *)self handleUpdatedContacts];
}

- (void)handleRecentsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", buf, 0x16u);
  }

  v9 = [(MPVoicemailController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002397C;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(v9, block);
}

- (void)handleNSCurrentLocaleDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", buf, 0x16u);
  }

  v9 = [(MPVoicemailController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023B3C;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(v9, block);
}

- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", buf, 0x16u);
  }

  v9 = [(MPVoicemailController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023D0C;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(v9, block);
}

- (void)handleUIApplicationSignificantTimeChangeNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v9, 0x16u);
  }

  [(MPVoicemailController *)self postMPVoicemailControllerMessagesDidChangeNotification];
}

- (void)handleUIApplicationWillEnterForegroundNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v10, 0x16u);
  }

  v9 = [(MPVoicemailController *)self voicemailManager];
  [v9 requestInitialStateIfNecessaryAndSendNotifications:1];
}

- (void)handleVoicemailsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", buf, 0x16u);
  }

  v9 = [(MPVoicemailController *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000240F8;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(v9, block);
}

- (void)postMPVoicemailControllerMessagesDidChangeNotification
{
  v3 = [(MPVoicemailController *)self completionDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000241FC;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)postMPVoicemailControllerUnreadMessageCountDidChangeNotification
{
  v3 = [(MPVoicemailController *)self completionDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000242E4;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)performSynchronousBlock:(id)a3
{
  if (dispatch_get_specific(off_1000C4A78) == self)
  {
    v6 = *(a3 + 2);
    v7 = a3;
    v6();
  }

  else
  {
    v5 = a3;
    v7 = [(MPVoicemailController *)self serialDispatchQueue];
    dispatch_sync(v7, v5);
  }
}

- (void)providersChangedForProviderManager:(id)a3
{
  v4 = a3;
  v5 = [(MPVoicemailController *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling providersChangedForProviderManager %@", &v9, 0x16u);
  }

  v7 = [(MPVoicemailController *)self localizedSubtitleCache];
  [v7 removeAllObjects];

  v8 = [(MPVoicemailController *)self localizedTitleCache];
  [v8 removeAllObjects];

  [(MPVoicemailController *)self postMPVoicemailControllerMessagesDidChangeNotification];
}

@end