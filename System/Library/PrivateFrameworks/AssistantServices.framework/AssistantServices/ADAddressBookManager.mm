@interface ADAddressBookManager
- (ADAddressBookManager)initWithDelegate:(id)delegate;
- (CNContactStore)contactStore;
- (id)_fetchMappedMeCard;
- (id)contactHandlesForPerson:(id)person;
- (void)_firstUnlockStateDidChange:(id)change;
- (void)_meContactDidChange:(id)change;
- (void)dumpAssistantStateChunk:(id)chunk;
- (void)getMeCard:(id)card;
- (void)unregisterChangeHistory;
@end

@implementation ADAddressBookManager

- (void)dumpAssistantStateChunk:(id)chunk
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002B972C;
  v5[3] = &unk_10051B7A0;
  chunkCopy = chunk;
  v4 = chunkCopy;
  [(ADAddressBookManager *)self getMeCard:v5];
}

- (void)_firstUnlockStateDidChange:(id)change
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[ADAddressBookManager _firstUnlockStateDidChange:]";
    v9 = 2112;
    v10 = @"ADFirstUnlockNotification";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Received %@ Changed!", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002B98A0;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_meContactDidChange:(id)change
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[ADAddressBookManager _meContactDidChange:]";
    v9 = 2112;
    v10 = CNContactStoreMeContactDidChangeNotification;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Received %@ Changed!", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002B9A4C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)_fetchMappedMeCard
{
  v2 = objc_alloc_init(CNContactStore);
  v3 = [CNAssistantConversion descriptorsForRequiredKeysForConversionType:1];
  v9 = 0;
  v4 = [v2 _crossPlatformUnifiedMeContactWithKeysToFetch:v3 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[ADAddressBookManager _fetchMappedMeCard]";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Error retrieving me card: %@", buf, 0x16u);
    }
  }

  if (v4)
  {
    v7 = [CNAssistantConversion personFromMeContact:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(CNContactStore);
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (void)unregisterChangeHistory
{
  if ((AFIsHorseman() & 1) == 0)
  {
    contactStore = [(ADAddressBookManager *)self contactStore];
    v4 = 0;
    [contactStore unregisterChangeHistoryClientIdentifier:@"com.apple.contact.people" error:&v4];
  }
}

- (id)contactHandlesForPerson:(id)person
{
  personCopy = person;
  if (AFIsHorseman())
  {
    v5 = 0;
  }

  else
  {
    v5 = +[NSMutableSet set];
    internalGUID = [personCopy internalGUID];
    if (internalGUID)
    {
      internalGUID2 = [personCopy internalGUID];
    }

    else
    {
      identifier = [personCopy identifier];
      internalGUID2 = [identifier absoluteString];
    }

    if (internalGUID2)
    {
      v46[0] = CNContactPhoneNumbersKey;
      v46[1] = CNContactEmailAddressesKey;
      v9 = [NSArray arrayWithObjects:v46 count:2];
      contactStore = [(ADAddressBookManager *)self contactStore];
      v43 = 0;
      v33 = internalGUID2;
      v11 = [contactStore unifiedContactWithIdentifier:internalGUID2 keysToFetch:v9 error:&v43];
      v32 = v43;

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v34 = v11;
      phoneNumbers = [v11 phoneNumbers];
      v13 = [phoneNumbers countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v40;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v40 != v15)
            {
              objc_enumerationMutation(phoneNumbers);
            }

            v17 = *(*(&v39 + 1) + 8 * i);
            v18 = objc_alloc_init(STPersonContactHandle);
            [v18 setType:{1, v32}];
            label = [v17 label];
            [v18 setLabel:label];

            value = [v17 value];
            stringValue = [value stringValue];
            [v18 setHandle:stringValue];

            [v5 addObject:v18];
          }

          v14 = [phoneNumbers countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v14);
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      emailAddresses = [v34 emailAddresses];
      v23 = [emailAddresses countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v36;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v36 != v25)
            {
              objc_enumerationMutation(emailAddresses);
            }

            v27 = *(*(&v35 + 1) + 8 * j);
            v28 = objc_alloc_init(STPersonContactHandle);
            [v28 setType:0];
            label2 = [v27 label];
            [v28 setLabel:label2];

            value2 = [v27 value];
            [v28 setHandle:value2];

            [v5 addObject:v28];
          }

          v24 = [emailAddresses countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v24);
      }

      internalGUID2 = v33;
    }
  }

  return v5;
}

- (void)getMeCard:(id)card
{
  cardCopy = card;
  if (cardCopy)
  {
    if (AFIsHorseman())
    {
      cardCopy[2](cardCopy, 0);
    }

    else
    {
      queue = self->_queue;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1002BA128;
      v6[3] = &unk_10051E038;
      v6[4] = self;
      v7 = cardCopy;
      dispatch_async(queue, v6);
    }
  }
}

- (ADAddressBookManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (AFIsHorseman())
  {
    selfCopy = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ADAddressBookManager;
    v6 = [(ADAddressBookManager *)&v13 init];
    if (v6)
    {
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create("ADAddressBookManager", v7);

      queue = v6->_queue;
      v6->_queue = v8;

      v10 = objc_storeWeak(&v6->_delegate, delegateCopy);
      if (delegateCopy)
      {
        v11 = +[NSNotificationCenter defaultCenter];
        [v11 addObserver:v6 selector:"_meContactDidChange:" name:CNContactStoreMeContactDidChangeNotification object:0];
        [v11 addObserver:v6 selector:"_firstUnlockStateDidChange:" name:@"ADFirstUnlockNotification" object:0];
      }
    }

    self = v6;
    selfCopy = self;
  }

  return selfCopy;
}

@end