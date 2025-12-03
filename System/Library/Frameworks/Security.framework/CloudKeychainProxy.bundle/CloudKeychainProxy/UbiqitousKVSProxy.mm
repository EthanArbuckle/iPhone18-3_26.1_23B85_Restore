@interface UbiqitousKVSProxy
+ (id)withAccount:(id)account store:(id)store lockMonitor:(id)monitor persistence:(id)persistence;
- (BOOL)hasPendingKey:(id)key;
- (BOOL)hasPendingNonShadowSyncIDs;
- (BOOL)hasPendingShadowSyncIDs;
- (BOOL)hasPendingSyncIDs;
- (BOOL)hasSyncPendingFor:(id)for;
- (NSDictionary)persistentData;
- (UbiqitousKVSProxy)initWithAccount:(id)account store:(id)store lockMonitor:(id)monitor persistence:(id)persistence;
- (id)copyAllKeyInterests;
- (id)copyAsDictionary;
- (id)copyValues:(id)values;
- (id)keysForCurrentLockState;
- (id)objectForKey:(id)key;
- (id)pendKeysAndGetNewlyPended:(id)pended;
- (id)pendKeysAndGetPendingForCurrentLockState:(id)state;
- (id)pendingKeysForCurrentLockState;
- (void)_queue_handleNotification:(const char *)notification;
- (void)_queue_kvsStoreChange;
- (void)_queue_locked;
- (void)_queue_processAllItems;
- (void)_queue_storeAccountChanged;
- (void)_queue_storeKeysChanged:(id)changed initial:(BOOL)initial;
- (void)_queue_unlocked;
- (void)calloutWith:(id)with;
- (void)clearStore;
- (void)dealloc;
- (void)doAfterFlush:(id)flush;
- (void)doEnsurePeerRegistration;
- (void)doSyncWithAllPeers;
- (void)doSyncWithPendingPeers;
- (void)handleNotification:(const char *)notification;
- (void)handlePendingEnsurePeerRegistrationRequests:(BOOL)requests;
- (void)intersectWithCurrentLockState:(id)state;
- (void)locked;
- (void)perfCounters:(id)counters;
- (void)persistState;
- (void)processKeyChangedEvent:(id)event;
- (void)processPendingKeysForCurrentLockState;
- (void)registerAtTimeKeys:(id)keys;
- (void)registerKeys:(id)keys forAccount:(id)account;
- (void)removeKeys:(id)keys forAccount:(id)account;
- (void)requestEnsurePeerRegistration;
- (void)requestSyncWithPeerIDs:(id)ds backupPeerIDs:(id)iDs;
- (void)sendKeysCallout:(id)callout;
- (void)setPersistentData:(id)data;
- (void)setStoreObjectsFromDictionary:(id)dictionary;
- (void)storeAccountChanged;
- (void)storeKeysChanged:(id)changed initial:(BOOL)initial;
- (void)synchronizeStore;
- (void)unlocked;
- (void)waitForSyncDone:(BOOL)done error:(id)error;
- (void)waitForSynchronization:(id)synchronization;
@end

@implementation UbiqitousKVSProxy

- (void)processPendingKeysForCurrentLockState
{
  pendingKeysForCurrentLockState = [(UbiqitousKVSProxy *)self pendingKeysForCurrentLockState];
  v3 = [(UbiqitousKVSProxy *)self copyValues:pendingKeysForCurrentLockState];
  [(UbiqitousKVSProxy *)self processKeyChangedEvent:v3];
}

- (void)processKeyChangedEvent:(id)event
{
  eventCopy = event;
  v5 = +[NSMutableDictionary dictionary];
  v6 = sub_10000AE54("processKeyChangedEvent");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = eventCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "changedValues:%@", buf, 0xCu);
  }

  +[NSMutableArray array];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100002224;
  v7 = v17[3] = &unk_100018A80;
  v18 = v7;
  v8 = v5;
  v19 = v8;
  [(UbiqitousKVSProxy *)eventCopy enumerateKeysAndObjectsUsingBlock:v17];
  if ([v7 count])
  {
    pendingKeys = self->_pendingKeys;
    v10 = [NSSet setWithArray:v7];
    [(NSMutableSet *)pendingKeys minusSet:v10];
  }

  if ([v8 count])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000022C8;
    v15[3] = &unk_100018AA8;
    v15[4] = self;
    v16 = v8;
    [(UbiqitousKVSProxy *)self sendKeysCallout:v15];
  }

  else
  {
    v11 = sub_10000AE54("keytrace");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 componentsJoinedByString:@" "];
      allObjects = [(NSMutableSet *)self->_pendingKeys allObjects];
      v14 = [allObjects componentsJoinedByString:@" "];
      *buf = 138412802;
      selfCopy = self;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ null: %@ pending: %@", buf, 0x20u);
    }
  }
}

- (id)copyValues:(id)values
{
  valuesCopy = values;
  store = [(UbiqitousKVSProxy *)self store];
  [NSMutableDictionary dictionaryWithCapacity:0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000024B4;
  v11[3] = &unk_100018A58;
  v6 = v12 = store;
  v13 = v6;
  v7 = store;
  [valuesCopy enumerateObjectsUsingBlock:v11];

  v8 = v13;
  v9 = v6;

  return v9;
}

- (id)pendKeysAndGetPendingForCurrentLockState:(id)state
{
  v4 = [(UbiqitousKVSProxy *)self pendKeysAndGetNewlyPended:state];

  return [(UbiqitousKVSProxy *)self pendingKeysForCurrentLockState];
}

- (id)pendingKeysForCurrentLockState
{
  v3 = [(NSMutableSet *)self->_pendingKeys mutableCopy];
  [(UbiqitousKVSProxy *)self intersectWithCurrentLockState:v3];

  return v3;
}

- (void)intersectWithCurrentLockState:(id)state
{
  stateCopy = state;
  keysForCurrentLockState = [(UbiqitousKVSProxy *)self keysForCurrentLockState];
  [stateCopy intersectSet:keysForCurrentLockState];
}

- (id)pendKeysAndGetNewlyPended:(id)pended
{
  pendedCopy = pended;
  copyAllKeyInterests = [(UbiqitousKVSProxy *)self copyAllKeyInterests];
  [copyAllKeyInterests intersectSet:pendedCopy];

  v6 = [copyAllKeyInterests mutableCopy];
  [v6 minusSet:self->_pendingKeys];
  if (!self->_shadowPendingKeys || ([v6 minusSet:?], (pendingKeys = self->_shadowPendingKeys) == 0))
  {
    pendingKeys = self->_pendingKeys;
  }

  [(NSMutableSet *)pendingKeys unionSet:copyAllKeyInterests];

  return v6;
}

- (id)keysForCurrentLockState
{
  v3 = [NSMutableSet setWithSet:self->_alwaysKeys];
  lockMonitor = [(UbiqitousKVSProxy *)self lockMonitor];
  unlockedSinceBoot = [lockMonitor unlockedSinceBoot];

  if (unlockedSinceBoot)
  {
    [v3 unionSet:self->_firstUnlockKeys];
  }

  lockMonitor2 = [(UbiqitousKVSProxy *)self lockMonitor];
  locked = [lockMonitor2 locked];

  if ((locked & 1) == 0)
  {
    [v3 unionSet:self->_unlockedKeys];
  }

  return v3;
}

- (void)unlocked
{
  ckdkvsproxy_queue = self->_ckdkvsproxy_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000027E0;
  block[3] = &unk_100018D18;
  block[4] = self;
  dispatch_sync(ckdkvsproxy_queue, block);
}

- (void)locked
{
  ckdkvsproxy_queue = self->_ckdkvsproxy_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000285C;
  block[3] = &unk_100018D18;
  block[4] = self;
  dispatch_sync(ckdkvsproxy_queue, block);
}

- (void)storeAccountChanged
{
  ckdkvsproxy_queue = self->_ckdkvsproxy_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000028D8;
  block[3] = &unk_100018D18;
  block[4] = self;
  dispatch_sync(ckdkvsproxy_queue, block);
}

- (void)storeKeysChanged:(id)changed initial:(BOOL)initial
{
  changedCopy = changed;
  ckdkvsproxy_queue = self->_ckdkvsproxy_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002988;
  block[3] = &unk_1000188A0;
  block[4] = self;
  v10 = changedCopy;
  initialCopy = initial;
  v8 = changedCopy;
  dispatch_sync(ckdkvsproxy_queue, block);
}

- (void)handleNotification:(const char *)notification
{
  ckdkvsproxy_queue = self->_ckdkvsproxy_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002A0C;
  v4[3] = &unk_100018A30;
  v4[4] = self;
  v4[5] = notification;
  dispatch_sync(ckdkvsproxy_queue, v4);
}

- (void)_queue_kvsStoreChange
{
  dispatch_assert_queue_V2(self->_ckdkvsproxy_queue);
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_100002AAC;
  activity_block[3] = &unk_100018D18;
  activity_block[4] = self;
  _os_activity_initiate(&_mh_execute_header, "kvsStoreChange", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)_queue_unlocked
{
  dispatch_assert_queue_V2(self->_ckdkvsproxy_queue);
  v3 = sub_10000AE54("event");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Unlocked", &v4, 0xCu);
  }

  [(UbiqitousKVSProxy *)self handlePendingEnsurePeerRegistrationRequests:0];
  [(UbiqitousKVSProxy *)self processPendingKeysForCurrentLockState];
  if ([(UbiqitousKVSProxy *)self hasPendingSyncIDs])
  {
    [(UbiqitousKVSProxy *)self doSyncWithPendingPeers];
  }
}

- (void)_queue_locked
{
  dispatch_assert_queue_V2(self->_ckdkvsproxy_queue);
  v3 = sub_10000AE54("event");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ Locked", &v4, 0xCu);
  }
}

- (void)requestEnsurePeerRegistration
{
  if (self->_inCallout)
  {
    self->_shadowEnsurePeerRegistration = 1;
  }

  else
  {
    self->_ensurePeerRegistration = 1;
    [(UbiqitousKVSProxy *)self handlePendingEnsurePeerRegistrationRequests:1];

    [(UbiqitousKVSProxy *)self persistState];
  }
}

- (BOOL)hasPendingKey:(id)key
{
  keyCopy = key;
  pendingKeys = [(UbiqitousKVSProxy *)self pendingKeys];
  if ([pendingKeys containsObject:keyCopy])
  {
    v6 = 1;
  }

  else if (self->_shadowPendingKeys)
  {
    shadowPendingKeys = [(UbiqitousKVSProxy *)self shadowPendingKeys];
    v6 = [shadowPendingKeys containsObject:keyCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasSyncPendingFor:(id)for
{
  forCopy = for;
  if (([(NSMutableSet *)self->_pendingSyncPeerIDs containsObject:forCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    shadowPendingSyncPeerIDs = self->_shadowPendingSyncPeerIDs;
    if (shadowPendingSyncPeerIDs)
    {
      v5 = [(NSMutableSet *)shadowPendingSyncPeerIDs containsObject:forCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)requestSyncWithPeerIDs:(id)ds backupPeerIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  if ([dsCopy count] || objc_msgSend(iDsCopy, "count"))
  {
    v7 = [NSSet setWithArray:dsCopy];
    v8 = [NSSet setWithArray:iDsCopy];
    [(NSMutableSet *)self->_pendingSyncPeerIDs unionSet:v7];
    [(NSMutableSet *)self->_pendingSyncBackupPeerIDs unionSet:v8];
    if (self->_inCallout)
    {
      [(NSMutableSet *)self->_shadowPendingSyncPeerIDs unionSet:v7];
      [(NSMutableSet *)self->_shadowPendingSyncBackupPeerIDs unionSet:v8];
    }

    [(UbiqitousKVSProxy *)self persistState];
    [(UbiqitousKVSProxy *)self handlePendingEnsurePeerRegistrationRequests:1];
    if ([(UbiqitousKVSProxy *)self hasPendingSyncIDs])
    {
      if (!self->_inCallout)
      {
        lockMonitor = [(UbiqitousKVSProxy *)self lockMonitor];
        locked = [lockMonitor locked];

        if ((locked & 1) == 0)
        {
          [(UbiqitousKVSProxy *)self doSyncWithPendingPeers];
        }
      }
    }
  }
}

- (BOOL)hasPendingSyncIDs
{
  hasPendingNonShadowSyncIDs = [(UbiqitousKVSProxy *)self hasPendingNonShadowSyncIDs];
  if (self->_inCallout)
  {
    hasPendingNonShadowSyncIDs |= [(UbiqitousKVSProxy *)self hasPendingShadowSyncIDs];
  }

  return hasPendingNonShadowSyncIDs;
}

- (BOOL)hasPendingShadowSyncIDs
{
  shadowPendingSyncPeerIDs = self->_shadowPendingSyncPeerIDs;
  if (shadowPendingSyncPeerIDs && ![(NSMutableSet *)shadowPendingSyncPeerIDs isEmpty])
  {
    LOBYTE(shadowPendingSyncBackupPeerIDs) = 1;
  }

  else
  {
    shadowPendingSyncBackupPeerIDs = self->_shadowPendingSyncBackupPeerIDs;
    if (shadowPendingSyncBackupPeerIDs)
    {
      LOBYTE(shadowPendingSyncBackupPeerIDs) = [(NSMutableSet *)shadowPendingSyncBackupPeerIDs isEmpty]^ 1;
    }
  }

  return shadowPendingSyncBackupPeerIDs;
}

- (BOOL)hasPendingNonShadowSyncIDs
{
  if ([(NSMutableSet *)self->_pendingSyncPeerIDs isEmpty])
  {
    return [(NSMutableSet *)self->_pendingSyncBackupPeerIDs isEmpty]^ 1;
  }

  else
  {
    return 1;
  }
}

- (void)doSyncWithAllPeers
{
  [(UbiqitousKVSProxy *)self account];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003128;
  v5 = v4[3] = &unk_100018A08;
  v3 = v5;
  [(UbiqitousKVSProxy *)self calloutWith:v4];
}

- (void)doSyncWithPendingPeers
{
  [(UbiqitousKVSProxy *)self account];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000334C;
  v4[3] = &unk_1000189B8;
  v5 = v4[4] = self;
  v3 = v5;
  [(UbiqitousKVSProxy *)self calloutWith:v4];
}

- (void)doEnsurePeerRegistration
{
  account = [(UbiqitousKVSProxy *)self account];
  [(UbiqitousKVSProxy *)self setEnsurePeerRegistrationEnqueuedButNotStarted:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000037AC;
  v5[3] = &unk_1000189B8;
  v5[4] = self;
  v6 = account;
  v4 = account;
  [(UbiqitousKVSProxy *)self calloutWith:v5];
}

- (void)handlePendingEnsurePeerRegistrationRequests:(BOOL)requests
{
  calloutQueue = self->_calloutQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003A34;
  v4[3] = &unk_100018968;
  v4[4] = self;
  requestsCopy = requests;
  dispatch_async(calloutQueue, v4);
}

- (void)sendKeysCallout:(id)callout
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003C04;
  v4[3] = &unk_100018940;
  selfCopy = self;
  calloutCopy = callout;
  v3 = calloutCopy;
  [(UbiqitousKVSProxy *)selfCopy calloutWith:v4];
}

- (void)calloutWith:(id)with
{
  withCopy = with;
  xpc_transaction_begin();
  calloutQueue = self->_calloutQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003F38;
  v7[3] = &unk_100018DB8;
  v7[4] = self;
  v8 = withCopy;
  v6 = withCopy;
  dispatch_async(calloutQueue, v7);
}

- (void)doAfterFlush:(id)flush
{
  if (self->_inCallout)
  {
    v4 = objc_retainBlock(flush);
    shadowFlushBlock = self->_shadowFlushBlock;
    self->_shadowFlushBlock = v4;

    _objc_release_x1();
  }

  else
  {
    calloutQueue = self->_calloutQueue;

    dispatch_async(calloutQueue, flush);
  }
}

- (void)_queue_storeAccountChanged
{
  dispatch_assert_queue_V2(self->_ckdkvsproxy_queue);
  v3 = sub_10000AE54("event");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [(UbiqitousKVSProxy *)self setDsid:&stru_100019140];
  v5 = kSOSKVSAccountChangedKey;
  v6 = &__kCFBooleanTrue;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [(UbiqitousKVSProxy *)self processKeyChangedEvent:v4];
}

- (void)_queue_storeKeysChanged:(id)changed initial:(BOOL)initial
{
  initialCopy = initial;
  changedCopy = changed;
  dispatch_assert_queue_V2(self->_ckdkvsproxy_queue);
  self->_seenKVSStoreChange = 1;
  [(NSMutableSet *)self->_pendingKeys minusSet:changedCopy];
  v7 = [(UbiqitousKVSProxy *)self pendKeysAndGetPendingForCurrentLockState:changedCopy];
  v8 = [(UbiqitousKVSProxy *)self copyValues:v7];
  v9 = v8;
  if (initialCopy)
  {
    [v8 setObject:@"true" forKeyedSubscript:kSOSKVSInitialSyncKey];
  }

  v10 = sub_10000AE54("event");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    allObjects = [changedCopy allObjects];
    v12 = [allObjects componentsJoinedByString:@" "];
    allKeys = [v9 allKeys];
    v14 = [allKeys componentsJoinedByString:@" "];
    v15 = 138413058;
    selfCopy = self;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v14;
    v21 = 1024;
    v22 = initialCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ keysChangedInCloud: %@ keysOfInterest: %@ initial: %{BOOL}d", &v15, 0x26u);
  }

  if ([v9 count])
  {
    [(UbiqitousKVSProxy *)self processKeyChangedEvent:v9];
  }
}

- (void)_queue_handleNotification:(const char *)notification
{
  dispatch_assert_queue_V2(self->_ckdkvsproxy_queue);
  if (!strcmp(notification, "com.apple.security.cloudkeychain.forceupdate"))
  {

    [(UbiqitousKVSProxy *)self _queue_processAllItems];
  }

  else if (!strcmp(notification, "com.apple.security.cloudkeychainproxy.kvstorechange3"))
  {

    [(UbiqitousKVSProxy *)self _queue_kvsStoreChange];
  }
}

- (void)registerKeys:(id)keys forAccount:(id)account
{
  keysCopy = keys;
  accountCopy = account;
  if (accountCopy)
  {
    accountUUID = [(UbiqitousKVSProxy *)self accountUUID];
    if (accountUUID)
    {
      v8 = accountUUID;
      accountUUID2 = [(UbiqitousKVSProxy *)self accountUUID];
      v10 = [accountCopy isEqualToString:accountUUID2];

      [(UbiqitousKVSProxy *)self setAccountUUID:accountCopy];
      if (!v10)
      {
        copyAllKeyInterests = +[NSMutableSet set];
        goto LABEL_7;
      }
    }

    else
    {
      [(UbiqitousKVSProxy *)self setAccountUUID:accountCopy];
    }
  }

  copyAllKeyInterests = [(UbiqitousKVSProxy *)self copyAllKeyInterests];
LABEL_7:
  v12 = copyAllKeyInterests;
  v13 = [NSString stringWithUTF8String:"KeyParameter"];
  v14 = [keysCopy valueForKey:v13];

  v15 = [NSString stringWithUTF8String:"Circle"];
  v16 = [keysCopy valueForKey:v15];

  v17 = [NSString stringWithUTF8String:"Message"];
  v18 = [keysCopy valueForKey:v17];

  v19 = +[NSMutableSet set];
  alwaysKeys = self->_alwaysKeys;
  self->_alwaysKeys = v19;

  v21 = +[NSMutableSet set];
  firstUnlockKeys = self->_firstUnlockKeys;
  self->_firstUnlockKeys = v21;

  v23 = +[NSMutableSet set];
  unlockedKeys = self->_unlockedKeys;
  self->_unlockedKeys = v23;

  [(UbiqitousKVSProxy *)self registerAtTimeKeys:v14];
  [(UbiqitousKVSProxy *)self registerAtTimeKeys:v16];
  [(UbiqitousKVSProxy *)self registerAtTimeKeys:v18];
  copyAllKeyInterests2 = [(UbiqitousKVSProxy *)self copyAllKeyInterests];
  [(NSMutableSet *)self->_pendingKeys intersectSet:copyAllKeyInterests2];
  shadowPendingKeys = self->_shadowPendingKeys;
  if (shadowPendingKeys)
  {
    [(NSMutableSet *)shadowPendingKeys intersectSet:copyAllKeyInterests2];
  }

  [copyAllKeyInterests2 minusSet:v12];
  v27 = [(UbiqitousKVSProxy *)self pendKeysAndGetNewlyPended:copyAllKeyInterests2];
  [(UbiqitousKVSProxy *)self persistState];
  [(UbiqitousKVSProxy *)self intersectWithCurrentLockState:v27];
  if ([v27 count])
  {
    [(UbiqitousKVSProxy *)self processPendingKeysForCurrentLockState];
  }
}

- (void)removeKeys:(id)keys forAccount:(id)account
{
  keysCopy = keys;
  accountCopy = account;
  if (!accountCopy)
  {
    goto LABEL_4;
  }

  accountUUID = [(UbiqitousKVSProxy *)self accountUUID];
  if (!accountUUID)
  {
    goto LABEL_4;
  }

  v9 = accountUUID;
  accountUUID2 = [(UbiqitousKVSProxy *)self accountUUID];
  v11 = [accountCopy isEqualToString:accountUUID2];

  if ((v11 & 1) == 0)
  {
    v12 = sub_10000AE54("proxy");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "not removing keys, account UUID is for a new account", buf, 2u);
    }
  }

  else
  {
LABEL_4:
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100005190;
    v13[3] = &unk_100018CF0;
    v13[4] = self;
    [keysCopy enumerateObjectsUsingBlock:v13];
  }
}

- (void)registerAtTimeKeys:(id)keys
{
  if (keys)
  {
    keysCopy = keys;
    v13 = [keysCopy valueForKey:@"AlwaysKeys"];
    v5 = [keysCopy valueForKey:@"FirstUnlockKeys"];
    v6 = [keysCopy valueForKey:@"UnlockedKeys"];

    if (v13)
    {
      alwaysKeys = self->_alwaysKeys;
      v8 = [NSMutableSet setWithArray:v13];
      [(NSMutableSet *)alwaysKeys unionSet:v8];
    }

    if (v5)
    {
      firstUnlockKeys = self->_firstUnlockKeys;
      v10 = [NSMutableSet setWithArray:v5];
      [(NSMutableSet *)firstUnlockKeys unionSet:v10];
    }

    if (v6)
    {
      unlockedKeys = self->_unlockedKeys;
      v12 = [NSMutableSet setWithArray:v6];
      [(NSMutableSet *)unlockedKeys unionSet:v12];
    }
  }
}

- (id)copyAllKeyInterests
{
  v3 = [NSMutableSet setWithSet:self->_alwaysKeys];
  [v3 unionSet:self->_firstUnlockKeys];
  [v3 unionSet:self->_unlockedKeys];
  return v3;
}

- (void)waitForSyncDone:(BOOL)done error:(id)error
{
  doneCopy = done;
  errorCopy = error;
  if (doneCopy)
  {
    self->_nextFreshnessTime = dispatch_time(0, 5000000000);
  }

  v7 = sub_10000AE54("fresh");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "EFRESH";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Completing WFS", buf, 0xCu);
  }

  freshnessCompletions = self->_freshnessCompletions;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100005550;
  v13 = &unk_1000188C8;
  v15 = doneCopy;
  v14 = errorCopy;
  v9 = errorCopy;
  [(NSMutableArray *)freshnessCompletions enumerateObjectsUsingBlock:&v10];
  [(NSMutableArray *)self->_freshnessCompletions removeAllObjects:v10];
}

- (void)waitForSynchronization:(id)synchronization
{
  synchronizationCopy = synchronization;
  v5 = sub_10000AE54("fresh");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "EFRESH";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Requesting WFS", buf, 0xCu);
  }

  freshnessCompletions = self->_freshnessCompletions;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100005744;
  v14[3] = &unk_100018878;
  v7 = synchronizationCopy;
  v15 = v7;
  v8 = objc_retainBlock(v14);
  [(NSMutableArray *)freshnessCompletions addObject:v8];

  freshnessCompletions = [(UbiqitousKVSProxy *)self freshnessCompletions];
  v10 = [freshnessCompletions count];

  if (v10 == 1)
  {
    nextFreshnessTime = self->_nextFreshnessTime;
    v12 = dispatch_get_global_queue(0, 0);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100005824;
    v13[3] = &unk_100018D18;
    v13[4] = self;
    dispatch_after(nextFreshnessTime, v12, v13);
  }
}

- (void)setStoreObjectsFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v6 = [(UbiqitousKVSProxy *)dictionaryCopy mutableCopy];
    v7 = [v6 extractObjectForKey:kSOSKVSOfficialDSIDKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [[NSString alloc] initWithData:v9 encoding:134217984];
    if (v10)
    {
      objc_storeStrong(&self->_dsid, v10);
    }

    v11 = [v6 extractObjectForKey:kSOSKVSRequiredKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      p_dsid = &self->_dsid;
      dsid = self->_dsid;
      if (dsid && ![(NSString *)dsid isEqualToString:&stru_100019140])
      {
        if (([*p_dsid isEqual:v13] & 1) == 0)
        {
          v22 = sub_10000AE54("SecError");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *p_dsid;
            *buf = 138412546;
            selfCopy = v23;
            v27 = 2112;
            v28 = v13;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Account DSIDs do not match, cloud keychain proxy: %@, securityd: %@", buf, 0x16u);
          }

          store = sub_10000AE54("SecError");
          if (os_log_type_enabled(store, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy = v5;
            _os_log_impl(&_mh_execute_header, store, OS_LOG_TYPE_DEFAULT, "Not going to write these: %@ into KVS!", buf, 0xCu);
          }

          goto LABEL_17;
        }

        v21 = sub_10000AE54("dsid");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "DSIDs match, writing", buf, 2u);
        }
      }

      else
      {
        objc_storeStrong(&self->_dsid, v12);
      }
    }

    v16 = sub_10000AE54("keytrace");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [v6 allKeys];
      v18 = [allKeys componentsJoinedByString:@" "];
      *buf = 138412546;
      selfCopy = self;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ sending: %@", buf, 0x16u);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100005CC4;
    v24[3] = &unk_100018C38;
    v24[4] = self;
    [v6 enumerateKeysAndObjectsUsingBlock:v24];
    store = [(UbiqitousKVSProxy *)self store];
    allKeys2 = [v6 allKeys];
    [store pushWrites:allKeys2 requiresForceSync:0];

LABEL_17:
  }
}

- (void)perfCounters:(id)counters
{
  countersCopy = counters;
  store = [(UbiqitousKVSProxy *)self store];
  [store perfCounters:countersCopy];
}

- (void)persistState
{
  persistentData = [(UbiqitousKVSProxy *)self persistentData];
  persistenceURL = [(UbiqitousKVSProxy *)self persistenceURL];
  v5 = [persistenceURL writePlist:persistentData];

  if ((v5 & 1) == 0)
  {
    v6 = sub_10000AE54("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      persistenceURL2 = [(UbiqitousKVSProxy *)self persistenceURL];
      v8 = 138412290;
      v9 = persistenceURL2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to write persistence data to %@", &v8, 0xCu);
    }
  }
}

- (void)setPersistentData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"AlwaysKeys"];
  v6 = [NSMutableSet setWithArray:v5];
  alwaysKeys = self->_alwaysKeys;
  self->_alwaysKeys = v6;

  [(NSMutableSet *)self->_alwaysKeys addObject:kSOSKVSKeyParametersKey];
  v8 = [dataCopy objectForKeyedSubscript:@"FirstUnlockKeys"];
  v9 = [NSMutableSet setWithArray:v8];
  firstUnlockKeys = self->_firstUnlockKeys;
  self->_firstUnlockKeys = v9;

  v11 = [dataCopy objectForKeyedSubscript:@"UnlockedKeys"];
  v12 = [NSMutableSet setWithArray:v11];
  unlockedKeys = self->_unlockedKeys;
  self->_unlockedKeys = v12;

  v14 = [dataCopy objectForKeyedSubscript:@"PendingKeys"];
  v15 = [NSMutableSet setWithArray:v14];
  pendingKeys = self->_pendingKeys;
  self->_pendingKeys = v15;

  v17 = [dataCopy objectForKeyedSubscript:@"SyncPeerIDs"];
  v18 = [NSMutableSet setWithArray:v17];
  pendingSyncPeerIDs = self->_pendingSyncPeerIDs;
  self->_pendingSyncPeerIDs = v18;

  v20 = [dataCopy objectForKeyedSubscript:@"SyncBackupPeerIDs"];
  v21 = [NSMutableSet setWithArray:v20];
  pendingSyncBackupPeerIDs = self->_pendingSyncBackupPeerIDs;
  self->_pendingSyncBackupPeerIDs = v21;

  v23 = [dataCopy objectForKeyedSubscript:@"EnsurePeerRegistration"];
  self->_ensurePeerRegistration = [v23 BOOLValue];

  v24 = [dataCopy objectForKeyedSubscript:@"DSID"];
  dsid = self->_dsid;
  self->_dsid = v24;

  v26 = [dataCopy objectForKeyedSubscript:@"KeyAccountUUID"];

  accountUUID = self->_accountUUID;
  self->_accountUUID = v26;
}

- (NSDictionary)persistentData
{
  v14[0] = @"AlwaysKeys";
  allObjects = [(NSMutableSet *)self->_alwaysKeys allObjects];
  v15[0] = allObjects;
  v14[1] = @"FirstUnlockKeys";
  allObjects2 = [(NSMutableSet *)self->_firstUnlockKeys allObjects];
  v15[1] = allObjects2;
  v14[2] = @"UnlockedKeys";
  allObjects3 = [(NSMutableSet *)self->_unlockedKeys allObjects];
  v15[2] = allObjects3;
  v14[3] = @"PendingKeys";
  allObjects4 = [(NSMutableSet *)self->_pendingKeys allObjects];
  v15[3] = allObjects4;
  v14[4] = @"SyncPeerIDs";
  allObjects5 = [(NSMutableSet *)self->_pendingSyncPeerIDs allObjects];
  v15[4] = allObjects5;
  v14[5] = @"SyncBackupPeerIDs";
  allObjects6 = [(NSMutableSet *)self->_pendingSyncBackupPeerIDs allObjects];
  v15[5] = allObjects6;
  v14[6] = @"EnsurePeerRegistration";
  v9 = [NSNumber numberWithBool:self->_ensurePeerRegistration];
  dsid = self->_dsid;
  accountUUID = self->_accountUUID;
  v15[6] = v9;
  v15[7] = dsid;
  v14[7] = @"DSID";
  v14[8] = @"KeyAccountUUID";
  v15[8] = accountUUID;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:9];

  return v12;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:NSUbiquityIdentityDidChangeNotification object:0];

  v5.receiver = self;
  v5.super_class = UbiqitousKVSProxy;
  [(UbiqitousKVSProxy *)&v5 dealloc];
}

- (void)_queue_processAllItems
{
  dispatch_assert_queue_V2(self->_ckdkvsproxy_queue);
  store = [(UbiqitousKVSProxy *)self store];
  copyAsDictionary = [store copyAsDictionary];

  if (copyAsDictionary)
  {
    v5 = sub_10000AE54("event");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [copyAsDictionary allKeys];
      v7 = [allKeys componentsJoinedByString:@" "];
      v8 = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ sending: %@", &v8, 0x16u);
    }

    [(UbiqitousKVSProxy *)self processKeyChangedEvent:copyAsDictionary];
  }
}

- (id)copyAsDictionary
{
  store = [(UbiqitousKVSProxy *)self store];
  copyAsDictionary = [store copyAsDictionary];

  return copyAsDictionary;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  store = [(UbiqitousKVSProxy *)self store];
  v6 = [store objectForKey:keyCopy];

  return v6;
}

- (void)synchronizeStore
{
  store = [(UbiqitousKVSProxy *)self store];
  v2 = +[NSArray array];
  [store pushWrites:v2 requiresForceSync:1];
}

- (void)clearStore
{
  store = [(UbiqitousKVSProxy *)self store];
  [store removeAllObjects];
}

- (UbiqitousKVSProxy)initWithAccount:(id)account store:(id)store lockMonitor:(id)monitor persistence:(id)persistence
{
  accountCopy = account;
  accountCopy2 = account;
  storeCopy = store;
  monitorCopy = monitor;
  persistenceCopy = persistence;
  v50.receiver = self;
  v50.super_class = UbiqitousKVSProxy;
  v15 = [(UbiqitousKVSProxy *)&v50 init];
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = sub_10000AE54("event");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    persistenceCopy2 = persistence;
    v17 = accountCopy;
    storeCopy2 = store;
    monitorCopy2 = monitor;
    v20 = persistenceCopy;
    v21 = monitorCopy;
    v22 = storeCopy;
    v23 = accountCopy2;
    v24 = getuid();
    v25 = geteuid();
    *buf = 138412802;
    v52 = v15;
    v53 = 1024;
    v54 = v24;
    accountCopy2 = v23;
    storeCopy = v22;
    monitorCopy = v21;
    persistenceCopy = v20;
    monitor = monitorCopy2;
    store = storeCopy2;
    accountCopy = v17;
    persistence = persistenceCopy2;
    v55 = 1024;
    v56 = v25;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ start UID=%u EUID=%u", buf, 0x18u);
  }

  if (OctagonPlatformSupportsSOS())
  {
    v15->_ensurePeerRegistration = 0;
    v26 = accountCopy2;
    v27 = +[NSMutableSet set];
    pendingSyncPeerIDs = v15->_pendingSyncPeerIDs;
    v15->_pendingSyncPeerIDs = v27;

    v29 = +[NSMutableSet set];
    pendingSyncBackupPeerIDs = v15->_pendingSyncBackupPeerIDs;
    v15->_pendingSyncBackupPeerIDs = v29;

    shadowPendingSyncPeerIDs = v15->_shadowPendingSyncPeerIDs;
    v15->_shadowPendingSyncPeerIDs = 0;

    shadowPendingSyncBackupPeerIDs = v15->_shadowPendingSyncBackupPeerIDs;
    v15->_shadowPendingSyncBackupPeerIDs = 0;

    objc_storeStrong(&v15->_persistenceURL, persistence);
    objc_storeStrong(&v15->_account, accountCopy);
    objc_storeStrong(&v15->_store, store);
    objc_storeStrong(&v15->_lockMonitor, monitor);
    v33 = dispatch_queue_create("CKDCallout", 0);
    calloutQueue = v15->_calloutQueue;
    v15->_calloutQueue = v33;

    v35 = dispatch_queue_create("CKDKVSProxy", 0);
    ckdkvsproxy_queue = v15->_ckdkvsproxy_queue;
    v15->_ckdkvsproxy_queue = v35;

    v37 = +[NSMutableArray array];
    freshnessCompletions = v15->_freshnessCompletions;
    v15->_freshnessCompletions = v37;

    v39 = +[XPCNotificationDispatcher dispatcher];
    [v39 addListener:v15];

    persistenceURL = [(UbiqitousKVSProxy *)v15 persistenceURL];
    readPlist = [persistenceURL readPlist];
    [(UbiqitousKVSProxy *)v15 setPersistentData:readPlist];

    dsid = v15->_dsid;
    v15->_dsid = &stru_100019140;

    accountUUID = v15->_accountUUID;
    v15->_accountUUID = &stru_100019140;

    store = [(UbiqitousKVSProxy *)v15 store];
    [store connectToProxy:v15];

    lockMonitor = [(UbiqitousKVSProxy *)v15 lockMonitor];
    [lockMonitor connectTo:v15];

    accountCopy2 = v26;
LABEL_6:
    v46 = v15;
    goto LABEL_10;
  }

  v47 = sub_10000AE54("nosos");
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Cannot run CloudKeychainProxy on a system with no SOS", buf, 2u);
  }

  v46 = 0;
LABEL_10:

  return v46;
}

+ (id)withAccount:(id)account store:(id)store lockMonitor:(id)monitor persistence:(id)persistence
{
  persistenceCopy = persistence;
  monitorCopy = monitor;
  storeCopy = store;
  accountCopy = account;
  v14 = [[self alloc] initWithAccount:accountCopy store:storeCopy lockMonitor:monitorCopy persistence:persistenceCopy];

  return v14;
}

@end