@interface OSMNotificationFeatureMap
- (BOOL)isGroupMessage;
- (BOOL)isMessageSenderFavorite;
- (BOOL)isMessageSenderInContacts;
- (OSMNotificationFeatureMap)initWithNotification:(id)notification;
- (double)senderScore;
- (double)timeSinceMostRecentInteractionWithSender;
- (id)_messageSender;
- (id)_messageSenderCNContact;
- (id)_recent;
- (id)contactId;
- (id)recentInteractionsWithSender;
- (unint64_t)numberOfInteractionsBetweenDate:(id)date andDate:(id)andDate;
- (unint64_t)numberOfRecentInteractionsWithSender;
@end

@implementation OSMNotificationFeatureMap

- (id)_recent
{
  recentContactRecord = self->_recentContactRecord;
  if (!recentContactRecord)
  {
    v4 = dispatch_semaphore_create(0);
    _messageSender = [(OSMNotificationFeatureMap *)self _messageSender];
    displayName = [_messageSender displayName];
    v16[0] = CRAddressKindPhoneNumber;
    v16[1] = CRAddressKindEmail;
    v16[2] = CRAddressKindInstantMessage;
    v16[3] = CRAddressKindGroup;
    v7 = [NSArray arrayWithObjects:v16 count:4];
    v8 = [CRSearchQuery searchQueryForSearchTerm:displayName preferredKinds:v7 sendingAddress:0 recentsDomain:CRRecentsDomainMessages];

    v9 = +[CRRecentContactsLibrary defaultInstance];
    backgroundQueue = self->_backgroundQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000650C;
    v14[3] = &unk_1000105D0;
    v14[4] = self;
    v15 = v4;
    v11 = v4;
    [v9 performRecentsSearch:v8 queue:backgroundQueue completion:v14];

    v12 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v11, v12);

    recentContactRecord = self->_recentContactRecord;
  }

  return recentContactRecord;
}

- (id)_messageSender
{
  sender = self->_sender;
  if (!sender)
  {
    request = [(UNNotification *)self->_notification request];
    content = [request content];
    title = [content title];

    contactStore = self->_contactStore;
    v8 = [CNContact predicateForContactsMatchingName:title];
    v25 = CNContactIdentifierKey;
    v9 = [NSArray arrayWithObjects:&v25 count:1];
    v10 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v8 keysToFetch:v9 error:0];

    v11 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136315650;
      v20 = "[OSMNotificationFeatureMap _messageSender]";
      v21 = 2112;
      v22 = title;
      v23 = 2112;
      v24 = v10;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Found matching contacts for %@: %@", &v19, 0x20u);
    }

    v12 = [[INPersonHandle alloc] initWithValue:title type:0];
    v13 = [INPerson alloc];
    firstObject = [v10 firstObject];
    identifier = [firstObject identifier];
    v16 = [v13 initWithPersonHandle:v12 nameComponents:0 displayName:title image:0 contactIdentifier:identifier customIdentifier:0];
    v17 = self->_sender;
    self->_sender = v16;

    sender = self->_sender;
  }

  return sender;
}

- (id)contactId
{
  _messageSender = [(OSMNotificationFeatureMap *)self _messageSender];
  contactIdentifier = [_messageSender contactIdentifier];

  return contactIdentifier;
}

- (double)senderScore
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v3 = objc_alloc_init(PPContactStore);
  v4 = [NSSet alloc];
  _messageSender = [(OSMNotificationFeatureMap *)self _messageSender];
  displayName = [_messageSender displayName];
  v7 = [displayName componentsSeparatedByString:@" "];
  v8 = [v4 initWithArray:v7];

  v16 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100006A08;
  v13[3] = &unk_1000105A8;
  v9 = v8;
  v14 = v9;
  v15 = &v17;
  [v3 iterContactNameRecordsForClient:@"OpportuneSpeakingModule" error:&v16 block:v13];
  v10 = v16;
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

- (unint64_t)numberOfInteractionsBetweenDate:(id)date andDate:(id)andDate
{
  dateCopy = date;
  andDateCopy = andDate;
  _recent = [(OSMNotificationFeatureMap *)self _recent];
  recentDates = [_recent recentDates];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = recentDates;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if ([v16 compare:{dateCopy, v18}] == 1 && objc_msgSend(v16, "compare:", andDateCopy) == -1)
        {
          ++v13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (double)timeSinceMostRecentInteractionWithSender
{
  recentInteractionsWithSender = [(OSMNotificationFeatureMap *)self recentInteractionsWithSender];
  v3 = [recentInteractionsWithSender count];
  v4 = +[NSDate date];
  v5 = v4;
  if (v3 < 2)
  {
    [v4 timeIntervalSince1970];
    v8 = v9;
  }

  else
  {
    v6 = [recentInteractionsWithSender objectAtIndex:1];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7;
  }

  return v8;
}

- (unint64_t)numberOfRecentInteractionsWithSender
{
  _recent = [(OSMNotificationFeatureMap *)self _recent];
  countOfRecents = [_recent countOfRecents];

  return countOfRecents;
}

- (id)recentInteractionsWithSender
{
  _recent = [(OSMNotificationFeatureMap *)self _recent];
  recentDates = [_recent recentDates];

  if (recentDates)
  {
    v4 = recentDates;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (BOOL)isGroupMessage
{
  request = [(UNNotification *)self->_notification request];
  content = [request content];
  subtitle = [content subtitle];

  LOBYTE(request) = [subtitle length] != 0;
  return request;
}

- (id)_messageSenderCNContact
{
  _messageSender = [(OSMNotificationFeatureMap *)self _messageSender];
  contactIdentifier = [_messageSender contactIdentifier];

  if (contactIdentifier)
  {
    contactStore = self->_contactStore;
    v9 = CNContactIdentifierKey;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    v7 = [(CNContactStore *)contactStore unifiedContactWithIdentifier:contactIdentifier keysToFetch:v6 error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isMessageSenderFavorite
{
  _messageSenderCNContact = [(OSMNotificationFeatureMap *)self _messageSenderCNContact];
  if (_messageSenderCNContact)
  {
    v4 = [(CNFavorites *)self->_contactFavorites entriesForContact:_messageSenderCNContact];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isMessageSenderInContacts
{
  _messageSenderCNContact = [(OSMNotificationFeatureMap *)self _messageSenderCNContact];
  v3 = _messageSenderCNContact != 0;

  return v3;
}

- (OSMNotificationFeatureMap)initWithNotification:(id)notification
{
  notificationCopy = notification;
  v16.receiver = self;
  v16.super_class = OSMNotificationFeatureMap;
  v6 = [(OSMNotificationFeatureMap *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notification, notification);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("OSMNotificationFeatureMapBackgroundQueue", v8);
    backgroundQueue = v7->_backgroundQueue;
    v7->_backgroundQueue = v9;

    v11 = objc_alloc_init(CNContactStore);
    contactStore = v7->_contactStore;
    v7->_contactStore = v11;

    v13 = [[CNFavorites alloc] initWithContactStore:v7->_contactStore];
    contactFavorites = v7->_contactFavorites;
    v7->_contactFavorites = v13;
  }

  return v7;
}

@end