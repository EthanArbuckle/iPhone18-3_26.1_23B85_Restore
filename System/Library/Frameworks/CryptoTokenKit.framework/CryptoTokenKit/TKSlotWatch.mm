@interface TKSlotWatch
+ (BOOL)smartCard:(id)card mightHandleAIDFromExtension:(id)extension foundAID:(id *)d;
+ (id)supportedAIDsOfExtension:(id)extension;
+ (void)parseAIDForAttribute:(id)attribute into:(id)into;
- (TKSlotWatch)initWithName:(id)name endpoint:(id)endpoint slotType:(id)type watcher:(id)watcher;
- (void)dealloc;
- (void)getTokenIDs:(id)ds;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)remove;
- (void)startObserving;
- (void)tokenArrived;
- (void)tokenRemoved;
@end

@implementation TKSlotWatch

- (TKSlotWatch)initWithName:(id)name endpoint:(id)endpoint slotType:(id)type watcher:(id)watcher
{
  nameCopy = name;
  endpointCopy = endpoint;
  typeCopy = type;
  watcherCopy = watcher;
  v32.receiver = self;
  v32.super_class = TKSlotWatch;
  v15 = [(TKSlotWatch *)&v32 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    objc_storeStrong(&v16->_slotType, type);
    objc_storeStrong(&v16->_endpoint, endpoint);
    objc_storeWeak(&v16->_slotWatcher, watcherCopy);
    v16->_previousSlotState = 1;
    v17 = +[NSMutableDictionary dictionary];
    tokenConnections = v16->_tokenConnections;
    v16->_tokenConnections = v17;

    v31 = 0;
    v19 = [[TKSmartCardSlot alloc] initWithEndpoint:endpointCopy error:&v31];
    v20 = v31;
    smartCardSlot = v16->_smartCardSlot;
    v16->_smartCardSlot = v19;

    if (v16->_smartCardSlot)
    {
      nameCopy = [NSString stringWithFormat:@"slotwatch:%@", nameCopy];
      [nameCopy UTF8String];
      v23 = os_transaction_create();
      transaction = v16->_transaction;
      v16->_transaction = v23;

      nameCopy2 = [NSString stringWithFormat:@"slotwatch:%@", nameCopy];
      uTF8String = [nameCopy2 UTF8String];
      v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v28 = dispatch_queue_create(uTF8String, v27);
      queue = v16->_queue;
      v16->_queue = v28;
    }

    else
    {
      v27 = sub_10000B0B8();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10001E98C(v20, v27);
      }

      nameCopy2 = v16;
      v16 = 0;
    }
  }

  return v16;
}

- (void)dealloc
{
  smartCardSlot = self->_smartCardSlot;
  v4 = NSStringFromSelector("state");
  [(TKSmartCardSlot *)smartCardSlot removeObserver:self forKeyPath:v4 context:0];

  v5.receiver = self;
  v5.super_class = TKSlotWatch;
  [(TKSlotWatch *)&v5 dealloc];
}

- (void)startObserving
{
  smartCardSlot = self->_smartCardSlot;
  v4 = NSStringFromSelector("state");
  [(TKSmartCardSlot *)smartCardSlot addObserver:self forKeyPath:v4 options:7 context:0];
}

- (void)remove
{
  [(TKSlotWatch *)self tokenRemoved];
  WeakRetained = objc_loadWeakRetained(&self->_slotWatcher);
  [WeakRetained removeSlotWatch:self];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = [change objectForKey:{NSKeyValueChangeNewKey, object}];
  integerValue = [v7 integerValue];

  previousSlotState = self->_previousSlotState;
  v10 = previousSlotState;
  if (integerValue == 2)
  {
LABEL_4:
    integerValue = v10;
    if (previousSlotState == 1)
    {
LABEL_5:
      WeakRetained = objc_loadWeakRetained(&self->_slotWatcher);
      registry = [WeakRetained registry];
      [registry preloadTokens];

      integerValue = v10;
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  if (integerValue == previousSlotState)
  {
    v10 = integerValue;
    goto LABEL_4;
  }

  if (!integerValue)
  {
    [(TKSlotWatch *)self remove];
    goto LABEL_6;
  }

  if (integerValue == 1)
  {
    queue = self->_queue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000B3C0;
    v15[3] = &unk_100038710;
    v15[4] = self;
    dispatch_async(queue, v15);
    v10 = 1;
    goto LABEL_5;
  }

  if (integerValue == 4)
  {
    v13 = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B3B8;
    block[3] = &unk_100038710;
    block[4] = self;
    dispatch_async(v13, block);
  }

LABEL_6:
  self->_previousSlotState = integerValue;
}

- (void)getTokenIDs:(id)ds
{
  dsCopy = ds;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_tokenConnections allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        stringRepresentation = [*(*(&v11 + 1) + 8 * v9) stringRepresentation];
        [dsCopy addObject:stringRepresentation];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

+ (void)parseAIDForAttribute:(id)attribute into:(id)into
{
  attributeCopy = attribute;
  intoCopy = into;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = attributeCopy;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = [NSData dataFromAIDString:attributeCopy];
  }

  v7 = v6;
  if (v6)
  {
    [intoCopy addObject:v6];
  }

LABEL_7:
}

+ (id)supportedAIDsOfExtension:(id)extension
{
  attributes = [extension attributes];
  v5 = [attributes objectForKeyedSubscript:TKTokenClassDriverApplicationIDKey];

  if (v5)
  {
    v6 = +[NSMutableArray array];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [self parseAIDForAttribute:*(*(&v13 + 1) + 8 * i) into:{v6, v13}];
          }

          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }

    else
    {
      [self parseAIDForAttribute:v5 into:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)smartCard:(id)card mightHandleAIDFromExtension:(id)extension foundAID:(id *)d
{
  cardCopy = card;
  extensionCopy = extension;
  v7 = [self supportedAIDsOfExtension:?];
  v8 = v7;
  if (v7)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = sub_10000BAD8;
    v42 = sub_10000BAE8;
    v43 = 0;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (v9)
    {
      v10 = *v35;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          v33 = 0;
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10000BAF0;
          v29[3] = &unk_100038B48;
          v13 = cardCopy;
          v30 = v13;
          v31 = v12;
          v32 = &v38;
          v14 = [v13 inSessionWithError:&v33 executeBlock:v29];
          v15 = v33;
          if ((v14 & 1) == 0)
          {
            v18 = sub_10000B0B8();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              slot = [v13 slot];
              name = [slot name];
              *buf = 138543618;
              v45 = name;
              v46 = 2114;
              v47 = v15;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error connecting SmartCard in slot %{public}@: %{public}@", buf, 0x16u);
            }

            goto LABEL_16;
          }

          v16 = v39[5] == 0;

          if (!v16)
          {
            goto LABEL_16;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v34 objects:v48 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v19 = v39[5];
    v17 = v19 != 0;
    if (v19)
    {
      *d = v19;
    }

    else
    {
      v20 = sub_10000B0B8();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        identifier = [extensionCopy identifier];
        sub_10001EA18(identifier, buf, v20);
      }
    }

    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (void)tokenArrived
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v48 = _os_activity_create(&_mh_execute_header, "token inserted", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v48, &state);
  v2 = sub_10000B0B8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001EA68(self, v2, v3);
  }

  makeSmartCard = [(TKSmartCardSlot *)self->_smartCardSlot makeSmartCard];
  WeakRetained = objc_loadWeakRetained(&self->_slotWatcher);
  registry = [WeakRetained registry];

  v5 = objc_loadWeakRetained(&self->_slotWatcher);
  registry2 = [v5 registry];
  v50 = [registry2 beginTransaction:@"tokenArrived"];

  tokenExtensions = [v50 tokenExtensions];
  v60 = [&__NSArray0__struct mutableCopy];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  allValues = [tokenExtensions allValues];
  v8 = [allValues countByEnumeratingWithState:&v67 objects:v81 count:16];
  if (v8)
  {
    v9 = *v68;
    v10 = TKTokenTypeKey;
    v58 = TKTokenClassDriverProprietaryCardUsage;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v68 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v67 + 1) + 8 * i);
        attributes = [v12 attributes];
        v14 = [attributes objectForKeyedSubscript:v10];
        v15 = [v14 isEqual:@"smartcard"];

        if (v15)
        {
          attributes2 = [v12 attributes];
          v17 = [attributes2 objectForKeyedSubscript:v58];
          v18 = [v17 isEqual:&__kCFBooleanTrue];

          if (v18)
          {
            [v60 insertObject:v12 atIndex:0];
          }

          else
          {
            [v60 addObject:v12];
          }
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v67 objects:v81 count:16];
    }

    while (v8);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v19 = v60;
  v20 = [v19 countByEnumeratingWithState:&v63 objects:v80 count:16];
  v21 = 0;
  if (v20)
  {
    v53 = *v64;
    v52 = TKTokenClassDriverProprietaryCardUsage;
    v51 = v19;
    do
    {
      v54 = v20;
      for (j = 0; j != v54; j = j + 1)
      {
        if (*v64 != v53)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v63 + 1) + 8 * j);
        v24 = objc_opt_class();
        v62 = 0;
        v25 = [v24 smartCard:makeSmartCard mightHandleAIDFromExtension:v23 foundAID:&v62];
        v61 = v62;
        if (v25)
        {
          attributes3 = [v23 attributes];
          v27 = [attributes3 objectForKeyedSubscript:v52];
          v28 = [v27 isEqual:&__kCFBooleanTrue];

          driverCache = [registry driverCache];
          v59 = [driverCache hostTokenDriverFromExtension:v23];

          v30 = [[TKHostTokenConnection alloc] initWithDriver:v59 slot:self->_endpoint AID:v61 proprietaryCardUsage:v28 registry:registry error:0];
          if (v30)
          {
            selfCopy = self;
            objc_sync_enter(selfCopy);
            tokenConnections = self->_tokenConnections;
            token = [(TKHostTokenConnection *)v30 token];
            tokenID = [token tokenID];
            [(NSMutableDictionary *)tokenConnections setObject:v30 forKey:tokenID];

            v35 = sub_10000B0B8();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              name = self->_name;
              identifier = [v23 identifier];
              token2 = [(TKHostTokenConnection *)v30 token];
              tokenID2 = [token2 tokenID];
              v40 = [NSNumber numberWithBool:v28];
              *buf = 138544130;
              v73 = name;
              v74 = 2114;
              v75 = identifier;
              v76 = 2114;
              v77 = tokenID2;
              v78 = 2112;
              v79 = v40;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ is handling %{public}@ with proprietary card usage %@", buf, 0x2Au);

              v19 = v51;
            }

            objc_sync_exit(selfCopy);
            if (v28)
            {

              v21 = 1;
              goto LABEL_34;
            }

LABEL_26:
            v21 = 1;
          }

          else
          {
            if (v21)
            {
              goto LABEL_26;
            }

            v41 = sub_10000B0B8();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              identifier2 = [v23 identifier];
              v43 = self->_name;
              *buf = 138543618;
              v73 = identifier2;
              v74 = 2114;
              v75 = v43;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ cannot handle token in slot %{public}@", buf, 0x16u);
            }

            v21 = 0;
          }
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v63 objects:v80 count:16];
    }

    while (v20);
  }

LABEL_34:

  [v50 commit];
  if ((v21 & 1) == 0)
  {
    v44 = sub_10000B0B8();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [(TKSmartCardSlot *)self->_smartCardSlot ATR];
      v46 = [(TKSmartCardSlot *)self->_smartCardSlot ATR];
      bytes = [v46 bytes];
      *buf = 138543618;
      v73 = v45;
      v74 = 2114;
      v75 = bytes;
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "No token driver found for card %{public}@ (ATR: %{public}@)", buf, 0x16u);
    }
  }

  os_activity_scope_leave(&state);
}

- (void)tokenRemoved
{
  v3 = sub_10000B0B8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10001EADC(self, v3, v4);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_tokenConnections allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        WeakRetained = objc_loadWeakRetained(&selfCopy->_slotWatcher);
        registry = [WeakRetained registry];
        [registry removeTokenWithTokenID:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)selfCopy->_tokenConnections removeAllObjects];
  objc_sync_exit(selfCopy);
}

@end