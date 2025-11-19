@interface MessageListRestorationState
+ (OS_os_log)log;
+ (id)_loadMailboxesFromEncodedMailboxes:(id)a3 daemonInterface:(id)a4;
+ (id)_loadMailboxesFromObjectIDData:(id)a3 daemonInterface:(id)a4;
+ (id)loadFromDictionary:(id)a3 daemonInterface:(id)a4;
- (MessageListRestorationState)initWithMessageList:(id)a3 mailboxes:(id)a4 visibleItems:(id)a5 scrolledToTop:(BOOL)a6 lastSelectedItemID:(id)a7;
- (id)_beginLoadingWithMailboxesFuture:(id)a3 threaded:(BOOL)a4 trackOldest:(BOOL)a5 updateDisplayDate:(BOOL)a6 daemonInterface:(id)a7;
- (id)_firstVisibleItemFromAddedItemIDs:(id)a3;
- (id)dictionaryRepresentation;
- (void)_handleItemIDsAdded:(id)a3 messageList:(id)a4;
- (void)collectionDidFinishInitialLoad:(id)a3;
@end

@implementation MessageListRestorationState

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100156C9C;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD310 != -1)
  {
    dispatch_once(&qword_1006DD310, block);
  }

  v2 = qword_1006DD308;

  return v2;
}

+ (id)loadFromDictionary:(id)a3 daemonInterface:(id)a4
{
  v6 = a3;
  v43 = a4;
  v7 = [v6 objectForKeyedSubscript:@"MessageListStateVersion"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 integerValue];
    if (v9 > 2)
    {
      v10 = +[MessageListRestorationState log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v47 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Decoding v%li state from dictionary...", buf, 0xCu);
      }

      v11 = [v6 objectForKeyedSubscript:@"MessageListStateEncodedMailboxes"];
      v42 = [v6 objectForKeyedSubscript:@"MessageListStateVisibleItems"];
      v41 = [v6 objectForKeyedSubscript:@"MessageListStateLastSelectedItemID"];
      v38 = [v6 objectForKeyedSubscript:@"MessageListStateScrolledToTop"];
      v39 = [v6 objectForKeyedSubscript:@"MessageListStateIsThreaded"];
      v40 = [v6 objectForKeyedSubscript:@"MessageListStateTrackOldest"];
      v12 = [v6 objectForKeyedSubscript:@"MessageListStateUpdateDisplayDate"];
      v36 = [v12 BOOLValue];

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
        v31 = [v38 BOOLValue];
      }

      else
      {
        v31 = 1;
      }

      v32 = [v39 BOOLValue];
      v33 = [v40 BOOLValue];
      v30 = [a1 _loadMailboxesFromEncodedMailboxes:v11 daemonInterface:v43];
      v34 = +[MessageListRestorationState log];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Decoded dictionary representation. Beginning load....", buf, 2u);
      }

      v29 = objc_alloc_init(MessageListRestorationState);
      [(MessageListRestorationState *)v29 setLastSelectedItemID:v20];
      [(MessageListRestorationState *)v29 setVisibleItems:v37];
      [(MessageListRestorationState *)v29 setScrolledToTop:v31];
      v21 = [(MessageListRestorationState *)v29 _beginLoadingWithMailboxesFuture:v30 threaded:v32 trackOldest:v33 updateDisplayDate:v36 daemonInterface:v43];
      v18 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v9 = 1;
  }

  v22 = +[MessageListRestorationState log];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_100489BA4(v9, v22);
  }

  v11 = [NSError mf_invalidRestorationDataErrorWithUnderlyingError:0];
  v21 = [EFFuture futureWithError:v11];
LABEL_28:

  return v21;
}

+ (id)_loadMailboxesFromObjectIDData:(id)a3 daemonInterface:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  v19 = 0;
  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v5 error:&v19];
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

    v15 = [v6 mailboxRepository];
    v16 = [v15 mailboxesForObjectIDs:v9];
    v12 = [EFFuture join:v16];

    v13 = [v12 recover:&stru_100651960];
  }

  v17 = v13;

  return v17;
}

+ (id)_loadMailboxesFromEncodedMailboxes:(id)a3 daemonInterface:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MessageListRestorationState log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Decoding mailboxes (v2)...", buf, 2u);
  }

  v8 = +[MessageListRestorationState log];
  v9 = [RestorationMailboxDecoder decoderWithDaemonInterface:v6 log:v8];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100157A38;
  v14[3] = &unk_100651988;
  v10 = v9;
  v15 = v10;
  v11 = [v5 ef_map:v14];
  v12 = [EFFuture join:v11];

  return v12;
}

- (MessageListRestorationState)initWithMessageList:(id)a3 mailboxes:(id)a4 visibleItems:(id)a5 scrolledToTop:(BOOL)a6 lastSelectedItemID:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = MessageListRestorationState;
  v17 = [(MessageListRestorationState *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_messageList, a3);
    objc_storeStrong(&v18->_mailboxes, a4);
    objc_storeStrong(&v18->_visibleItems, a5);
    v18->_scrolledToTop = a6;
    objc_storeStrong(&v18->_lastSelectedItemID, a7);
  }

  return v18;
}

- (id)dictionaryRepresentation
{
  v3 = [(MessageListRestorationState *)self messageList];
  v4 = [v3 query];

  v5 = [(MessageListRestorationState *)self mailboxes];
  v6 = [v5 ef_map:&stru_1006519C8];

  if (!v4 || ![v6 count] || (-[MessageListRestorationState visibleItems](self, "visibleItems"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v17 = 0;
    goto LABEL_22;
  }

  v28 = objc_alloc_init(NSMutableDictionary);
  v8 = +[MessageListRestorationState log];
  v9 = [RestorationMailboxEncoder encoderWithLog:v8];

  v10 = [(MessageListRestorationState *)self mailboxes];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10015819C;
  v31[3] = &unk_1006519F0;
  v11 = v9;
  v32 = v11;
  v12 = [v10 ef_compactMap:v31];

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
  v13 = [(MessageListRestorationState *)self visibleItems];
  v30 = 0;
  v14 = [NSKeyedArchiver archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v30];
  v15 = v30;

  if (!v15)
  {
    [v28 setObject:v14 forKeyedSubscript:@"MessageListStateVisibleItems"];
    v27 = [(MessageListRestorationState *)self lastSelectedItemID];
    if (v27)
    {
      v29 = 0;
      v16 = v27;
      v18 = [NSKeyedArchiver archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v29];
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

    v16 = v27;
    v20 = [NSNumber numberWithBool:[(MessageListRestorationState *)self scrolledToTop]];
    [v28 setObject:v20 forKeyedSubscript:@"MessageListStateScrolledToTop"];

    v21 = [(MessageListRestorationState *)self messageList];
    v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v21 isThreaded]);
    [v28 setObject:v22 forKeyedSubscript:@"MessageListStateIsThreaded"];

    v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 queryOptions] & 1);
    [v28 setObject:v23 forKeyedSubscript:@"MessageListStateTrackOldest"];

    v24 = [v4 targetClassOptions];
    v25 = [v24 objectForKeyedSubscript:EMMessageListItemQueryOptionUpdateDisplayDate];
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

- (id)_beginLoadingWithMailboxesFuture:(id)a3 threaded:(BOOL)a4 trackOldest:(BOOL)a5 updateDisplayDate:(BOOL)a6 daemonInterface:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = +[EFPromise promise];
  [(MessageListRestorationState *)self setFirstVisibleItemIDPromise:v14];

  v15 = [(MessageListRestorationState *)self visibleItems];
  v16 = [v15 count];

  if (v16)
  {
    v17 = [(MessageListRestorationState *)self visibleItems];
    v18 = [v17 ef_mapSelector:"itemID"];
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
  v23 = v13;
  v30 = v23;
  v31 = a5;
  v32 = a4;
  v33 = v22;
  v34 = a6;
  v35 = v21;
  v24 = [v12 then:v29];
  v25 = [v24 recover:&stru_100651A38];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001589CC;
  v28[3] = &unk_100651A60;
  v28[4] = self;
  v26 = [v25 then:v28];

  return v26;
}

- (void)_handleItemIDsAdded:(id)a3 messageList:(id)a4
{
  v5 = [(MessageListRestorationState *)self _firstVisibleItemFromAddedItemIDs:a3, a4];
  if (v5)
  {
    v6 = +[MessageListRestorationState log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Message list has loaded the first visible item. Continuing...", v9, 2u);
    }

    v7 = [(MessageListRestorationState *)self firstVisibleItemIDPromise];
    [v7 finishWithResult:v5];

    v8 = [(MessageListRestorationState *)self messageList];
    [v8 stopObserving:self];
  }
}

- (id)_firstVisibleItemFromAddedItemIDs:(id)a3
{
  v4 = a3;
  v5 = [(MessageListRestorationState *)self previouslyVisibleItemIDs];
  v6 = [v5 mutableCopy];

  v7 = [NSOrderedSet orderedSetWithArray:v4];
  [v6 intersectOrderedSet:v7];
  v8 = [v6 firstObject];

  return v8;
}

- (void)collectionDidFinishInitialLoad:(id)a3
{
  v4 = a3;
  v5 = +[MessageListRestorationState log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 ef_publicDescription];
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Finished initial load for: %{public}@", &v10, 0xCu);
  }

  v7 = [(MessageListRestorationState *)self firstVisibleItemIDPromise];
  v8 = [NSError em_internalErrorWithReason:@"no visible item IDs after initial load"];
  [v7 finishWithError:v8];

  v9 = [(MessageListRestorationState *)self messageList];
  [v9 stopObserving:self];
}

@end