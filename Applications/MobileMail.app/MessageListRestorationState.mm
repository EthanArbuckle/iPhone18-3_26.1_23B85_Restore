@interface MessageListRestorationState
+ (OS_os_log)log;
+ (id)_loadMailboxesFromEncodedMailboxes:(id)mailboxes daemonInterface:(id)interface;
+ (id)_loadMailboxesFromObjectIDData:(id)data daemonInterface:(id)interface;
+ (id)loadFromDictionary:(id)dictionary daemonInterface:(id)interface;
- (MessageListRestorationState)initWithMessageList:(id)list mailboxes:(id)mailboxes visibleItems:(id)items scrolledToTop:(BOOL)top lastSelectedItemID:(id)d;
- (id)_beginLoadingWithMailboxesFuture:(id)future threaded:(BOOL)threaded trackOldest:(BOOL)oldest updateDisplayDate:(BOOL)date daemonInterface:(id)interface;
- (id)_firstVisibleItemFromAddedItemIDs:(id)ds;
- (id)dictionaryRepresentation;
- (void)_handleItemIDsAdded:(id)added messageList:(id)list;
- (void)collectionDidFinishInitialLoad:(id)load;
@end

@implementation MessageListRestorationState

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100156C9C;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD310 != -1)
  {
    dispatch_once(&qword_1006DD310, block);
  }

  v2 = qword_1006DD308;

  return v2;
}

+ (id)loadFromDictionary:(id)dictionary daemonInterface:(id)interface
{
  dictionaryCopy = dictionary;
  interfaceCopy = interface;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"MessageListStateVersion"];
  v8 = v7;
  if (v7)
  {
    integerValue = [v7 integerValue];
    if (integerValue > 2)
    {
      v10 = +[MessageListRestorationState log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v47 = integerValue;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Decoding v%li state from dictionary...", buf, 0xCu);
      }

      v11 = [dictionaryCopy objectForKeyedSubscript:@"MessageListStateEncodedMailboxes"];
      v42 = [dictionaryCopy objectForKeyedSubscript:@"MessageListStateVisibleItems"];
      v41 = [dictionaryCopy objectForKeyedSubscript:@"MessageListStateLastSelectedItemID"];
      v38 = [dictionaryCopy objectForKeyedSubscript:@"MessageListStateScrolledToTop"];
      v39 = [dictionaryCopy objectForKeyedSubscript:@"MessageListStateIsThreaded"];
      v40 = [dictionaryCopy objectForKeyedSubscript:@"MessageListStateTrackOldest"];
      v12 = [dictionaryCopy objectForKeyedSubscript:@"MessageListStateUpdateDisplayDate"];
      bOOLValue = [v12 BOOLValue];

      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = [NSSet setWithObjects:v13, v14, v15, objc_opt_class(), 0];
      v45 = 0;
      v37 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v16 fromData:v42 error:&v45];
      v17 = v45;
      if (v17)
      {
        v18 = v17;
        v19 = +[MessageListRestorationState log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [v18 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          sub_100489B1C();
        }

        v20 = [NSError mf_invalidRestorationDataErrorWithUnderlyingError:v18];
        v21 = [EFFuture futureWithError:v20];
        goto LABEL_27;
      }

      if ([v41 length])
      {
        v23 = objc_opt_class();
        v24 = objc_opt_class();
        v25 = [NSSet setWithObjects:v23, v24, objc_opt_class(), 0];
        v44 = 0;
        v20 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v25 fromData:v41 error:&v44];
        v26 = v25;
        v27 = v44;
        if (v27)
        {
          v18 = v27;
          v28 = +[MessageListRestorationState log];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [v18 ef_publicDescription];
            objc_claimAutoreleasedReturnValue();
            sub_100489B60();
          }

          v29 = [NSError mf_invalidRestorationDataErrorWithUnderlyingError:v18];
          v21 = [EFFuture futureWithError:v29];
          v30 = v26;
LABEL_26:

LABEL_27:
          goto LABEL_28;
        }
      }

      else
      {
        v20 = 0;
      }

      if (v38)
      {
        bOOLValue2 = [v38 BOOLValue];
      }

      else
      {
        bOOLValue2 = 1;
      }

      bOOLValue3 = [v39 BOOLValue];
      bOOLValue4 = [v40 BOOLValue];
      v30 = [self _loadMailboxesFromEncodedMailboxes:v11 daemonInterface:interfaceCopy];
      v34 = +[MessageListRestorationState log];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Decoded dictionary representation. Beginning load....", buf, 2u);
      }

      v29 = objc_alloc_init(MessageListRestorationState);
      [(MessageListRestorationState *)v29 setLastSelectedItemID:v20];
      [(MessageListRestorationState *)v29 setVisibleItems:v37];
      [(MessageListRestorationState *)v29 setScrolledToTop:bOOLValue2];
      v21 = [(MessageListRestorationState *)v29 _beginLoadingWithMailboxesFuture:v30 threaded:bOOLValue3 trackOldest:bOOLValue4 updateDisplayDate:bOOLValue daemonInterface:interfaceCopy];
      v18 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    integerValue = 1;
  }

  v22 = +[MessageListRestorationState log];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_100489BA4(integerValue, v22);
  }

  v11 = [NSError mf_invalidRestorationDataErrorWithUnderlyingError:0];
  v21 = [EFFuture futureWithError:v11];
LABEL_28:

  return v21;
}

+ (id)_loadMailboxesFromObjectIDData:(id)data daemonInterface:(id)interface
{
  dataCopy = data;
  interfaceCopy = interface;
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  v19 = 0;
  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:dataCopy error:&v19];
  v10 = v19;

  if (v10)
  {
    v11 = +[MessageListRestorationState log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v10 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100489C2C();
    }

    v12 = [NSError mf_invalidRestorationDataErrorWithUnderlyingError:v10];
    v13 = [EFFuture futureWithError:v12];
  }

  else
  {
    v14 = +[MessageListRestorationState log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Requesting mailboxes by object ID (v1)...", buf, 2u);
    }

    mailboxRepository = [interfaceCopy mailboxRepository];
    v16 = [mailboxRepository mailboxesForObjectIDs:v9];
    v12 = [EFFuture join:v16];

    v13 = [v12 recover:&stru_100651960];
  }

  v17 = v13;

  return v17;
}

+ (id)_loadMailboxesFromEncodedMailboxes:(id)mailboxes daemonInterface:(id)interface
{
  mailboxesCopy = mailboxes;
  interfaceCopy = interface;
  v7 = +[MessageListRestorationState log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Decoding mailboxes (v2)...", buf, 2u);
  }

  v8 = +[MessageListRestorationState log];
  v9 = [RestorationMailboxDecoder decoderWithDaemonInterface:interfaceCopy log:v8];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100157A38;
  v14[3] = &unk_100651988;
  v10 = v9;
  v15 = v10;
  v11 = [mailboxesCopy ef_map:v14];
  v12 = [EFFuture join:v11];

  return v12;
}

- (MessageListRestorationState)initWithMessageList:(id)list mailboxes:(id)mailboxes visibleItems:(id)items scrolledToTop:(BOOL)top lastSelectedItemID:(id)d
{
  listCopy = list;
  mailboxesCopy = mailboxes;
  itemsCopy = items;
  dCopy = d;
  v20.receiver = self;
  v20.super_class = MessageListRestorationState;
  v17 = [(MessageListRestorationState *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_messageList, list);
    objc_storeStrong(&v18->_mailboxes, mailboxes);
    objc_storeStrong(&v18->_visibleItems, items);
    v18->_scrolledToTop = top;
    objc_storeStrong(&v18->_lastSelectedItemID, d);
  }

  return v18;
}

- (id)dictionaryRepresentation
{
  messageList = [(MessageListRestorationState *)self messageList];
  query = [messageList query];

  mailboxes = [(MessageListRestorationState *)self mailboxes];
  v6 = [mailboxes ef_map:&stru_1006519C8];

  if (!query || ![v6 count] || (-[MessageListRestorationState visibleItems](self, "visibleItems"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v17 = 0;
    goto LABEL_22;
  }

  v28 = objc_alloc_init(NSMutableDictionary);
  v8 = +[MessageListRestorationState log];
  v9 = [RestorationMailboxEncoder encoderWithLog:v8];

  mailboxes2 = [(MessageListRestorationState *)self mailboxes];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10015819C;
  v31[3] = &unk_1006519F0;
  v11 = v9;
  v32 = v11;
  v12 = [mailboxes2 ef_compactMap:v31];

  if (![v12 count])
  {
    v14 = +[MessageListRestorationState log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100489D3C(v14);
    }

    v15 = 0;
    v17 = 0;
    goto LABEL_21;
  }

  [v28 setObject:v12 forKeyedSubscript:@"MessageListStateEncodedMailboxes"];
  visibleItems = [(MessageListRestorationState *)self visibleItems];
  v30 = 0;
  v14 = [NSKeyedArchiver archivedDataWithRootObject:visibleItems requiringSecureCoding:1 error:&v30];
  v15 = v30;

  if (!v15)
  {
    [v28 setObject:v14 forKeyedSubscript:@"MessageListStateVisibleItems"];
    lastSelectedItemID = [(MessageListRestorationState *)self lastSelectedItemID];
    if (lastSelectedItemID)
    {
      v29 = 0;
      v16 = lastSelectedItemID;
      v18 = [NSKeyedArchiver archivedDataWithRootObject:lastSelectedItemID requiringSecureCoding:1 error:&v29];
      v15 = v29;
      if (v15)
      {
        v19 = +[MessageListRestorationState log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [v15 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          sub_100489CF8();
        }

        goto LABEL_17;
      }

      [v28 setObject:v18 forKeyedSubscript:@"MessageListStateLastSelectedItemID"];
    }

    v16 = lastSelectedItemID;
    v20 = [NSNumber numberWithBool:[(MessageListRestorationState *)self scrolledToTop]];
    [v28 setObject:v20 forKeyedSubscript:@"MessageListStateScrolledToTop"];

    messageList2 = [(MessageListRestorationState *)self messageList];
    v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [messageList2 isThreaded]);
    [v28 setObject:v22 forKeyedSubscript:@"MessageListStateIsThreaded"];

    v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [query queryOptions] & 1);
    [v28 setObject:v23 forKeyedSubscript:@"MessageListStateTrackOldest"];

    targetClassOptions = [query targetClassOptions];
    v25 = [targetClassOptions objectForKeyedSubscript:EMMessageListItemQueryOptionUpdateDisplayDate];
    [v28 setObject:v25 forKeyedSubscript:@"MessageListStateUpdateDisplayDate"];

    [v28 setObject:&off_1006742D0 forKeyedSubscript:@"MessageListStateVersion"];
    v17 = [v28 copy];
    v15 = 0;
    goto LABEL_20;
  }

  v16 = +[MessageListRestorationState log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [v15 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_100489CB4();
  }

LABEL_17:
  v17 = 0;
LABEL_20:

LABEL_21:
LABEL_22:

  return v17;
}

- (id)_beginLoadingWithMailboxesFuture:(id)future threaded:(BOOL)threaded trackOldest:(BOOL)oldest updateDisplayDate:(BOOL)date daemonInterface:(id)interface
{
  futureCopy = future;
  interfaceCopy = interface;
  v14 = +[EFPromise promise];
  [(MessageListRestorationState *)self setFirstVisibleItemIDPromise:v14];

  visibleItems = [(MessageListRestorationState *)self visibleItems];
  v16 = [visibleItems count];

  if (v16)
  {
    visibleItems2 = [(MessageListRestorationState *)self visibleItems];
    v18 = [visibleItems2 ef_mapSelector:"itemID"];
    v19 = [NSOrderedSet orderedSetWithArray:v18];
    [(MessageListRestorationState *)self setPreviouslyVisibleItemIDs:v19];
  }

  v20 = +[NSUserDefaults em_userDefaults];
  v21 = v16 != 0;
  v22 = [v20 BOOLForKey:DisableThreadingKey] ^ 1;

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100158498;
  v29[3] = &unk_100651A18;
  v29[4] = self;
  v23 = interfaceCopy;
  v30 = v23;
  oldestCopy = oldest;
  threadedCopy = threaded;
  v33 = v22;
  dateCopy = date;
  v35 = v21;
  v24 = [futureCopy then:v29];
  v25 = [v24 recover:&stru_100651A38];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001589CC;
  v28[3] = &unk_100651A60;
  v28[4] = self;
  v26 = [v25 then:v28];

  return v26;
}

- (void)_handleItemIDsAdded:(id)added messageList:(id)list
{
  list = [(MessageListRestorationState *)self _firstVisibleItemFromAddedItemIDs:added, list];
  if (list)
  {
    v6 = +[MessageListRestorationState log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Message list has loaded the first visible item. Continuing...", v9, 2u);
    }

    firstVisibleItemIDPromise = [(MessageListRestorationState *)self firstVisibleItemIDPromise];
    [firstVisibleItemIDPromise finishWithResult:list];

    messageList = [(MessageListRestorationState *)self messageList];
    [messageList stopObserving:self];
  }
}

- (id)_firstVisibleItemFromAddedItemIDs:(id)ds
{
  dsCopy = ds;
  previouslyVisibleItemIDs = [(MessageListRestorationState *)self previouslyVisibleItemIDs];
  v6 = [previouslyVisibleItemIDs mutableCopy];

  v7 = [NSOrderedSet orderedSetWithArray:dsCopy];
  [v6 intersectOrderedSet:v7];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (void)collectionDidFinishInitialLoad:(id)load
{
  loadCopy = load;
  v5 = +[MessageListRestorationState log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    ef_publicDescription = [loadCopy ef_publicDescription];
    v10 = 138543362;
    v11 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Finished initial load for: %{public}@", &v10, 0xCu);
  }

  firstVisibleItemIDPromise = [(MessageListRestorationState *)self firstVisibleItemIDPromise];
  v8 = [NSError em_internalErrorWithReason:@"no visible item IDs after initial load"];
  [firstVisibleItemIDPromise finishWithError:v8];

  messageList = [(MessageListRestorationState *)self messageList];
  [messageList stopObserving:self];
}

@end