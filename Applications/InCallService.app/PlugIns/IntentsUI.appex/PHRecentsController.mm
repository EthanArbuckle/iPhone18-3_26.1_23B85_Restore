@interface PHRecentsController
+ (id)indexPathsToInsertIntoCachedRecentCalls:(id)calls fromBackingRecentCalls:(id)recentCalls;
- (BOOL)isInitializationBlockQueued;
- (CNContactFormatter)contactFormatter;
- (CNContactStore)contactStore;
- (CNContactStore)suggestedContactStore;
- (NSArray)recentCalls;
- (NSCache)callProviderCache;
- (NSDictionary)blockedStatusCache;
- (NSMutableDictionary)contactCache;
- (NSMutableDictionary)itemCache;
- (NSNumberFormatter)numberFormatter;
- (PHRecentsController)init;
- (PHRecentsController)initWithCallHistoryController:(id)controller callProviderManager:(id)manager contactStore:(id)store suggestedContactStore:(id)contactStore metadataCache:(id)cache;
- (TUCallProviderManager)callProviderManager;
- (TUMetadataCache)metadataCache;
- (id)coalesceRecentCall:(id)call withRecentCall:(id)recentCall;
- (id)contactByHandleForRecentCall:(id)call keyDescriptors:(id)descriptors;
- (id)contactForHandle:(id)handle;
- (id)contactForRecentCall:(id)call keyDescriptors:(id)descriptors;
- (id)contactHandlesForHandle:(id)handle;
- (id)contactHandlesForRecentCalls:(id)calls;
- (id)contactsByHandleForRecentCall:(id)call keyDescriptors:(id)descriptors;
- (id)dialRequestForRecentCall:(id)call;
- (id)fetchCallProviderForRecentCall:(id)call;
- (id)fetchContactForContactCardDisplay:(id)display;
- (id)fetchContactFormatter;
- (id)fetchImageForRecentCall:(id)call;
- (id)fetchMutableItemForRecentCall:(id)call;
- (id)fetchMutableItemForRecentCall:(id)call numberOfOccurences:(unint64_t)occurences;
- (id)fetchNumberFormatter;
- (id)fetchRecentCalls;
- (id)fetchUnifiedContactForID:(id)d withDescriptors:(id)descriptors;
- (id)formattedNameForHandle:(id)handle countryCode:(id)code;
- (id)itemForRecentCall:(id)call numberOfOccurences:(unint64_t)occurences;
- (id)itemForRecentCall:(id)call presentationStyle:(int64_t)style;
- (id)localizedSubtitleForRecentCall:(id)call;
- (id)localizedSubtitleForRecentEmergencyCall:(id)call;
- (id)metadataItemsForRecentCall:(id)call;
- (id)subtitleForRecentEmergencyCall:(id)call;
- (id)unknownLabel;
- (id)updatedTitleForTempHandles:(id)handles countOfExcludedHandles:(int64_t)excludedHandles;
- (unint64_t)unreadCallCount;
- (void)addAcceptedIntroductionsNotifier;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)dealloc;
- (void)deleteAllRecentCalls;
- (void)deleteRecentCalls:(id)calls;
- (void)fetchBlockedStatusForRecentCalls:(id)calls;
- (void)fetchContactsForHandles:(id)handles;
- (void)fetchContactsForRecentCalls:(id)calls;
- (void)fetchMetadataForRecentCalls:(id)calls;
- (void)handleCNContactStoreDidChangeNotification:(id)notification;
- (void)handleIDSServiceAvailabilityDidChangeNotification:(id)notification;
- (void)handleNSCurrentLocaleDidChangeNotification:(id)notification;
- (void)handleTUCallHistoryControllerRecentCallsDidChangeNotification:(id)notification;
- (void)handleTUCallHistoryControllerUnreadCallCountDidChangeNotification:(id)notification;
- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)notification;
- (void)handleUIApplicationDidBecomeActiveNotification:(id)notification;
- (void)handleUIApplicationSignificantTimeChangeNotification:(id)notification;
- (void)handleUpdatedContacts;
- (void)markRecentAudioCallsAsRead;
- (void)markRecentCallsAsRead;
- (void)markRecentVideoCallsAsRead;
- (void)notifyDelegatesRecentsController:(id)controller didChangeCalls:(id)calls;
- (void)notifyDelegatesRecentsController:(id)controller didChangeUnreadCallCount:(unint64_t)count;
- (void)notifyDelegatesRecentsController:(id)controller didUpdateCalls:(id)calls;
- (void)notifyDelegatesRecentsControllerDidChangeMessages:(id)messages;
- (void)performDialRequest:(id)request;
- (void)performDialRequestForRecentCall:(id)call;
- (void)performJoinRequestForRecentCall:(id)call overrideProvider:(id)provider;
- (void)performSynchronousBlock:(id)block;
- (void)populateCachesForRecentCalls:(id)calls;
- (void)populateItemCacheForRecentCalls:(id)calls;
- (void)providersChangedForProviderManager:(id)manager;
- (void)queryCommTrustBlockedForCalls:(id)calls completion:(id)completion;
- (void)recentCallsWillShow;
- (void)removeDelegate:(id)delegate;
- (void)setContactFormatter:(id)formatter;
- (void)setInitializationBlockQueued:(BOOL)queued;
- (void)setNumberFormatter:(id)formatter;
- (void)setPreFetchingPredicate:(id)predicate;
- (void)setRecentCalls:(id)calls;
- (void)setUnreadCallCount:(unint64_t)count;
- (void)updateRecentCalls;
- (void)updateReminderUUID:(id)d forRecentCall:(id)call;
@end

@implementation PHRecentsController

+ (id)indexPathsToInsertIntoCachedRecentCalls:(id)calls fromBackingRecentCalls:(id)recentCalls
{
  callsCopy = calls;
  recentCallsCopy = recentCalls;
  v7 = +[NSMutableArray array];
  v8 = 0;
  if ([recentCallsCopy count])
  {
    v9 = 0;
    do
    {
      v10 = [recentCallsCopy objectAtIndexedSubscript:v9];
      if (v8 >= [callsCopy count])
      {
        v11 = 0;
      }

      else
      {
        v11 = [callsCopy objectAtIndexedSubscript:v8];
      }

      if ([v11 isEqual:v10])
      {
        ++v8;
      }

      else
      {
        v12 = [NSIndexPath indexPathForRow:v9 inSection:0];
        [v7 addObject:v12];
      }

      ++v9;
    }

    while (v9 < [recentCallsCopy count]);
  }

  if (v8 == [callsCopy count])
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (PHRecentsController)init
{
  [(PHRecentsController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHRecentsController)initWithCallHistoryController:(id)controller callProviderManager:(id)manager contactStore:(id)store suggestedContactStore:(id)contactStore metadataCache:(id)cache
{
  controllerCopy = controller;
  managerCopy = manager;
  storeCopy = store;
  contactStoreCopy = contactStore;
  cacheCopy = cache;
  v46.receiver = self;
  v46.super_class = PHRecentsController;
  v17 = [(PHRecentsController *)&v46 init];
  v18 = v17;
  if (v17)
  {
    v17->_accessorLock._os_unfair_lock_opaque = 0;
    v19 = +[NSMapTable weakToStrongObjectsMapTable];
    delegateToQueue = v18->_delegateToQueue;
    v18->_delegateToQueue = v19;

    v18->_initializationBlockQueued = 1;
    v42 = controllerCopy;
    v21 = [NSString stringWithFormat:@"com.apple.calls.queue.%@.%p", objc_opt_class(), v18];
    dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v22 = v41 = storeCopy;
    v23 = dispatch_queue_create([v21 UTF8String], v22);
    serialQueue = v18->_serialQueue;
    v18->_serialQueue = v23;

    dispatch_queue_set_specific(v18->_serialQueue, off_1000C4950, v18, 0);
    objc_storeStrong(&v18->_completionDispatchQueue, &_dispatch_main_q);
    objc_storeStrong(&v18->_callHistoryController, controller);
    v25 = objc_alloc_init(NSCache);
    callProviderCache = v18->_callProviderCache;
    v18->_callProviderCache = v25;

    objc_storeStrong(&v18->_callProviderManager, manager);
    callProviderManager = v18->_callProviderManager;
    serialQueue = [(PHRecentsController *)v18 serialQueue];
    [(TUCallProviderManager *)callProviderManager addDelegate:v18 queue:serialQueue];

    v29 = objc_alloc_init(NSMutableDictionary);
    contactCache = v18->_contactCache;
    v18->_contactCache = v29;

    objc_storeStrong(&v18->_contactStore, store);
    objc_storeStrong(&v18->_suggestedContactStore, contactStore);
    objc_storeStrong(&v18->_metadataCache, cache);
    v31 = [[TUSubtitleProvider alloc] initWithMetadataCache:cacheCopy callProviderManager:managerCopy];
    subtitleProvider = v18->_subtitleProvider;
    v18->_subtitleProvider = v31;

    v33 = objc_alloc_init(NSDictionary);
    blockedStatusCache = v18->_blockedStatusCache;
    v18->_blockedStatusCache = v33;

    v35 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v18->_featureFlags;
    v18->_featureFlags = v35;

    v37 = objc_opt_new();
    analyticsLogger = v18->_analyticsLogger;
    v18->_analyticsLogger = v37;

    v39 = v18->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000113F0;
    block[3] = &unk_1000B1B80;
    v45 = v18;
    dispatch_async(v39, block);

    storeCopy = v41;
    controllerCopy = v42;
  }

  return v18;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  notify_cancel([(PHRecentsController *)self callDirectoryManagerIdentificationEntriesChangedNotificationToken]);
  v4.receiver = self;
  v4.super_class = PHRecentsController;
  [(PHRecentsController *)&v4 dealloc];
}

- (TUCallProviderManager)callProviderManager
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_callProviderManager;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (CNContactStore)contactStore
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_contactStore;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (CNContactStore)suggestedContactStore
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_suggestedContactStore;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (TUMetadataCache)metadataCache
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_metadataCache;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (NSArray)recentCalls
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100011BA0;
  v15[3] = &unk_1000B1E38;
  v15[4] = self;
  v3 = objc_retainBlock(v15);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100011BFC;
  v13 = sub_100011C0C;
  v14 = (v3[2])();
  if (!v10[5] && [(PHRecentsController *)self isInitializationBlockQueued])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100011C14;
    v6[3] = &unk_1000B1BD0;
    v8 = &v9;
    v7 = v3;
    [(PHRecentsController *)self performSynchronousBlock:v6];
  }

  v4 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v4;
}

- (unint64_t)unreadCallCount
{
  os_unfair_lock_lock(&self->_accessorLock);
  unreadCallCount = self->_unreadCallCount;
  os_unfair_lock_unlock(&self->_accessorLock);
  return unreadCallCount;
}

- (id)itemForRecentCall:(id)call presentationStyle:(int64_t)style
{
  callCopy = call;
  v7 = -[PHRecentsController itemForRecentCall:numberOfOccurences:](self, "itemForRecentCall:numberOfOccurences:", callCopy, [callCopy numberOfOccurrences]);
  serviceProvider = [callCopy serviceProvider];
  if ([serviceProvider isEqualToString:kCHServiceProviderTelephony])
  {
    remoteParticipantHandles = [callCopy remoteParticipantHandles];
    v10 = [remoteParticipantHandles count];
    v11 = v10 != 1;

    if (!style)
    {
      if (v10 == 1)
      {
        goto LABEL_11;
      }

LABEL_10:
      self = v7;
      goto LABEL_19;
    }
  }

  else
  {

    if (!style)
    {
      goto LABEL_10;
    }

    v11 = 1;
  }

  imageURL = [callCopy imageURL];
  if (imageURL)
  {

    goto LABEL_10;
  }

  if (v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  remoteParticipantHandles2 = [callCopy remoteParticipantHandles];
  anyObject = [remoteParticipantHandles2 anyObject];

  if (!anyObject)
  {
    goto LABEL_17;
  }

  name = [callCopy name];
  if (!name)
  {
    goto LABEL_17;
  }

  v16 = name;
  name2 = [callCopy name];
  v18 = [name2 length];

  if (!v18)
  {
    goto LABEL_17;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100011BFC;
  v30 = sub_100011C0C;
  v31 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100011F44;
  v23[3] = &unk_1000B1E60;
  v25 = &v26;
  v23[4] = self;
  v24 = anyObject;
  [(PHRecentsController *)self performSynchronousBlock:v23];
  v19 = v27[5];
  if (!v19)
  {
    v20 = [v7 mutableCopy];
    name3 = [callCopy name];
    [v20 setLocalizedSubtitle:name3];

    self = [v20 copy];
  }

  _Block_object_dispose(&v26, 8);
  if (v19)
  {
LABEL_17:
    self = v7;
  }

LABEL_19:

  return self;
}

- (id)itemForRecentCall:(id)call numberOfOccurences:(unint64_t)occurences
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100011BFC;
  v15 = sub_100011C0C;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000120BC;
  v7[3] = &unk_1000B1E60;
  v10 = &v11;
  selfCopy = self;
  callCopy = call;
  v9 = callCopy;
  [(PHRecentsController *)selfCopy performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)coalesceRecentCall:(id)call withRecentCall:(id)recentCall
{
  callCopy = call;
  recentCallCopy = recentCall;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100011BFC;
  v21 = sub_100011C0C;
  v22 = 0;
  serialQueue = [(PHRecentsController *)self serialQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000122AC;
  v13[3] = &unk_1000B1E88;
  v13[4] = self;
  v14 = callCopy;
  v15 = recentCallCopy;
  v16 = &v17;
  v9 = recentCallCopy;
  v10 = callCopy;
  dispatch_sync(serialQueue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (void)deleteAllRecentCalls
{
  serialQueue = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012404;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)deleteRecentCalls:(id)calls
{
  callsCopy = calls;
  serialQueue = [(PHRecentsController *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000124FC;
  v7[3] = &unk_1000B1DE8;
  v7[4] = self;
  v8 = callsCopy;
  v6 = callsCopy;
  dispatch_async(serialQueue, v7);
}

- (void)markRecentCallsAsRead
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Mark recent calls as read", buf, 2u);
  }

  serialQueue = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012620;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)markRecentAudioCallsAsRead
{
  serialQueue = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000126EC;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)markRecentVideoCallsAsRead
{
  serialQueue = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000127B8;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)updateReminderUUID:(id)d forRecentCall:(id)call
{
  dCopy = d;
  callCopy = call;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = dCopy;
    v17 = 2112;
    v18 = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating reminderUUID: %@, for recent call: %@", buf, 0x16u);
  }

  serialQueue = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001295C;
  block[3] = &unk_1000B1EB0;
  block[4] = self;
  v13 = dCopy;
  v14 = callCopy;
  v10 = callCopy;
  v11 = dCopy;
  dispatch_async(serialQueue, block);
}

- (id)contactForRecentCall:(id)call keyDescriptors:(id)descriptors
{
  callCopy = call;
  descriptorsCopy = descriptors;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100011BFC;
  v25 = sub_100011C0C;
  v26 = 0;
  validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
  v9 = [validRemoteParticipantHandles count];

  if (v9 == 1)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100012B84;
    v17[3] = &unk_1000B1ED8;
    v17[4] = self;
    v18 = callCopy;
    v19 = descriptorsCopy;
    v20 = &v21;
    [(PHRecentsController *)self performSynchronousBlock:v17];
  }

  v10 = v22[5];
  if (!v10)
  {
    metadataCache = [(PHRecentsController *)self metadataCache];
    v12 = [CNMutableContact contactForRecentCall:callCopy metadataCache:metadataCache];
    v13 = [v12 copy];
    v14 = v22[5];
    v22[5] = v13;

    v10 = v22[5];
  }

  v15 = v10;
  _Block_object_dispose(&v21, 8);

  return v15;
}

- (id)contactByHandleForRecentCall:(id)call keyDescriptors:(id)descriptors
{
  callCopy = call;
  descriptorsCopy = descriptors;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100011BFC;
  v24 = sub_100011C0C;
  v25 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100012D74;
  v15 = &unk_1000B1ED8;
  selfCopy = self;
  v8 = callCopy;
  v17 = v8;
  v9 = descriptorsCopy;
  v18 = v9;
  v19 = &v20;
  [(PHRecentsController *)self performSynchronousBlock:&v12];
  v10 = [v21[5] copy];

  _Block_object_dispose(&v20, 8);

  return v10;
}

- (void)addAcceptedIntroductionsNotifier
{
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100012FDC;
  v8 = &unk_1000B1F00;
  objc_copyWeak(&v9, &location);
  v3 = [CNCoreRecentsChangeNotifier acceptedIntroductionsNotifierWithBlock:&v5];
  acceptedIntroductionsNotifier = self->_acceptedIntroductionsNotifier;
  self->_acceptedIntroductionsNotifier = v3;

  [(CNCoreRecentsChangeNotifier *)self->_acceptedIntroductionsNotifier startObserving:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)dialRequestForRecentCall:(id)call
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100011BFC;
  v15 = sub_100011C0C;
  v16 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013148;
  v7[3] = &unk_1000B1F28;
  callCopy = call;
  selfCopy = self;
  v10 = &v11;
  v8 = callCopy;
  [(PHRecentsController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (void)performDialRequest:(id)request
{
  requestCopy = request;
  presentScreenTimeShield = [(PHRecentsController *)self presentScreenTimeShield];
  if (presentScreenTimeShield && (v6 = presentScreenTimeShield, +[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), [v7 callFilterController], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "shouldRestrictDialRequest:performSynchronously:", requestCopy, 1), v8, v7, v6, v9))
  {
    presentScreenTimeShield2 = [(PHRecentsController *)self presentScreenTimeShield];
    (presentScreenTimeShield2)[2](presentScreenTimeShield2, requestCopy);
  }

  else
  {
    v11 = +[TUCallCenter sharedInstance];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100013424;
    v12[3] = &unk_1000B1F50;
    v13 = requestCopy;
    [v11 launchAppForDialRequest:v13 completion:v12];
  }
}

- (void)performDialRequestForRecentCall:(id)call
{
  v4 = [(PHRecentsController *)self dialRequestForRecentCall:call];
  if (v4)
  {
    [(PHRecentsController *)self performDialRequest:v4];
  }

  _objc_release_x1();
}

- (void)performJoinRequestForRecentCall:(id)call overrideProvider:(id)provider
{
  callCopy = call;
  providerCopy = provider;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHRecentsController -performJoinRequestForRecentCall", buf, 2u);
  }

  validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
  v8 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [validRemoteParticipantHandles count]);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = callCopy;
  validRemoteParticipantHandles2 = [callCopy validRemoteParticipantHandles];
  v10 = [validRemoteParticipantHandles2 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(validRemoteParticipantHandles2);
        }

        tuHandle = [*(*(&v36 + 1) + 8 * i) tuHandle];
        if (tuHandle)
        {
          v15 = [TUConversationMember alloc];
          v16 = [NSSet setWithObject:tuHandle];
          v17 = [v15 initWithHandles:v16];

          [v8 addObject:v17];
        }
      }

      v11 = [validRemoteParticipantHandles2 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v18 = [[TUJoinConversationRequest alloc] initWithRemoteMembers:v8 originatingUIType:8];
    v19 = v34;
    -[NSObject setVideo:](v18, "setVideo:", [v34 mediaType] == 2);
    -[NSObject setVideoEnabled:](v18, "setVideoEnabled:", [v34 mediaType] == 2);
    [v18 setOriginatingUIType:8];
    v20 = providerCopy;
    if (providerCopy)
    {
      [v18 setProvider:providerCopy];
    }

    callProviderManager = [(PHRecentsController *)self callProviderManager];
    faceTimeProvider = [callProviderManager faceTimeProvider];
    outgoingLocalParticipantUUID = [v34 outgoingLocalParticipantUUID];
    v24 = [faceTimeProvider senderIdentityForAccountUUID:outgoingLocalParticipantUUID];

    if (v24)
    {
      handle = [v24 handle];
      [v18 setCallerID:handle];
    }

    v26 = +[TUCallProviderManager invitationPreferencesForRecentCall];
    [v18 setInvitationPreferences:v26];

    presentScreenTimeShield = [(PHRecentsController *)self presentScreenTimeShield];
    if (presentScreenTimeShield && (v28 = presentScreenTimeShield, +[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v29 = objc_claimAutoreleasedReturnValue(), [v29 callFilterController], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "shouldRestrictJoinConversationRequest:performSynchronously:", v18, 1), v30, v20 = providerCopy, v19 = v34, v29, v28, v31))
    {
      presentScreenTimeShield2 = [(PHRecentsController *)self presentScreenTimeShield];
      (presentScreenTimeShield2)[2](presentScreenTimeShield2, v18);
    }

    else
    {
      presentScreenTimeShield2 = +[TUCallCenter sharedInstance];
      [presentScreenTimeShield2 launchAppForJoinRequest:v18];
    }
  }

  else
  {
    v18 = PHDefaultLog();
    v20 = providerCopy;
    v19 = v34;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v34;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Could not create join request for recent call: %@", buf, 0xCu);
    }
  }
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_accessorLock);
  delegateToQueue = [(PHRecentsController *)self delegateToQueue];
  if (queueCopy)
  {
    v8 = queueCopy;
  }

  else
  {
    v8 = &_dispatch_main_q;
  }

  [delegateToQueue setObject:v8 forKey:delegateCopy];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_accessorLock);
  delegateToQueue = [(PHRecentsController *)self delegateToQueue];
  [delegateToQueue removeObjectForKey:delegateCopy];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)notifyDelegatesRecentsController:(id)controller didUpdateCalls:(id)calls
{
  controllerCopy = controller;
  callsCopy = calls;
  featureFlags = [(PHRecentsController *)self featureFlags];
  phoneRecentsAvatarsEnabled = [featureFlags phoneRecentsAvatarsEnabled];

  if (phoneRecentsAvatarsEnabled)
  {
    os_unfair_lock_assert_owner(&self->_accessorLock);
    selfCopy = self;
    delegateToQueue = [(PHRecentsController *)self delegateToQueue];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [delegateToQueue countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = v10;
    v12 = *v25;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v15 = [delegateToQueue objectForKey:v14];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100013CA8;
          block[3] = &unk_1000B1EB0;
          block[4] = v14;
          v22 = controllerCopy;
          v23 = callsCopy;
          dispatch_async(v15, block);

          v16 = &v22;
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }

          v15 = [delegateToQueue objectForKey:v14];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_100013CB8;
          v19[3] = &unk_1000B1EB0;
          v19[4] = v14;
          v20[0] = controllerCopy;
          v20[1] = selfCopy;
          dispatch_async(v15, v19);
          v16 = v20;
        }
      }

      v11 = [delegateToQueue countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v11)
      {
LABEL_14:

        break;
      }
    }
  }
}

- (void)notifyDelegatesRecentsController:(id)controller didChangeCalls:(id)calls
{
  controllerCopy = controller;
  callsCopy = calls;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  delegateToQueue = [(PHRecentsController *)self delegateToQueue];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [delegateToQueue countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [delegateToQueue objectForKey:v13];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100013EA4;
          block[3] = &unk_1000B1EB0;
          block[4] = v13;
          v16 = controllerCopy;
          v17 = callsCopy;
          dispatch_async(v14, block);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [delegateToQueue countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)notifyDelegatesRecentsController:(id)controller didChangeUnreadCallCount:(unint64_t)count
{
  controllerCopy = controller;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  delegateToQueue = [(PHRecentsController *)self delegateToQueue];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [delegateToQueue countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [delegateToQueue objectForKey:v12];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10001406C;
          block[3] = &unk_1000B1F78;
          block[4] = v12;
          v15 = controllerCopy;
          countCopy = count;
          dispatch_async(v13, block);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [delegateToQueue countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)notifyDelegatesRecentsControllerDidChangeMessages:(id)messages
{
  messagesCopy = messages;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  delegateToQueue = [(PHRecentsController *)self delegateToQueue];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [delegateToQueue countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(delegateToQueue);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [delegateToQueue objectForKey:v10];
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_100014230;
          v12[3] = &unk_1000B1DE8;
          v12[4] = v10;
          v13 = messagesCopy;
          dispatch_async(v11, v12);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [delegateToQueue countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (NSCache)callProviderCache
{
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  callProviderCache = self->_callProviderCache;

  return callProviderCache;
}

- (NSDictionary)blockedStatusCache
{
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  blockedStatusCache = self->_blockedStatusCache;

  return blockedStatusCache;
}

- (NSMutableDictionary)contactCache
{
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  contactCache = self->_contactCache;

  return contactCache;
}

- (CNContactFormatter)contactFormatter
{
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  contactFormatter = self->_contactFormatter;

  return contactFormatter;
}

- (void)setContactFormatter:(id)formatter
{
  formatterCopy = formatter;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  contactFormatter = self->_contactFormatter;
  p_contactFormatter = &self->_contactFormatter;
  if (contactFormatter != formatterCopy)
  {
    objc_storeStrong(p_contactFormatter, formatter);
  }
}

- (BOOL)isInitializationBlockQueued
{
  os_unfair_lock_lock(&self->_accessorLock);
  initializationBlockQueued = self->_initializationBlockQueued;
  os_unfair_lock_unlock(&self->_accessorLock);
  return initializationBlockQueued;
}

- (void)setInitializationBlockQueued:(BOOL)queued
{
  queuedCopy = queued;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_initializationBlockQueued != queuedCopy)
  {
    self->_initializationBlockQueued = queuedCopy;
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (NSMutableDictionary)itemCache
{
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  itemCache = self->_itemCache;

  return itemCache;
}

- (NSNumberFormatter)numberFormatter
{
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  numberFormatter = self->_numberFormatter;

  return numberFormatter;
}

- (void)setNumberFormatter:(id)formatter
{
  formatterCopy = formatter;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  numberFormatter = self->_numberFormatter;
  p_numberFormatter = &self->_numberFormatter;
  if (numberFormatter != formatterCopy)
  {
    objc_storeStrong(p_numberFormatter, formatter);
  }
}

- (void)setRecentCalls:(id)calls
{
  callsCopy = calls;
  os_unfair_lock_lock(&self->_accessorLock);
  recentCalls = self->_recentCalls;
  if (recentCalls != callsCopy && ![(NSArray *)recentCalls isEqualToArray:callsCopy])
  {
    v5 = [(NSArray *)callsCopy copy];
    v6 = self->_recentCalls;
    self->_recentCalls = v5;

    [(PHRecentsController *)self notifyDelegatesRecentsController:self didChangeCalls:self->_recentCalls];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setUnreadCallCount:(unint64_t)count
{
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_unreadCallCount != count)
  {
    self->_unreadCallCount = count;
    [(PHRecentsController *)self notifyDelegatesRecentsController:self didChangeUnreadCallCount:count];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setPreFetchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_preFetchingPredicate != predicateCopy)
  {
    objc_storeStrong(&self->_preFetchingPredicate, predicate);
    callHistoryController = [(PHRecentsController *)self callHistoryController];
    [callHistoryController setPreFetchingPredicate:predicateCopy];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (id)contactForHandle:(id)handle
{
  handleCopy = handle;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  [(PHRecentsController *)self contactHandlesForHandle:handleCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        contactCache = [(PHRecentsController *)self contactCache];
        v13 = [contactCache objectForKeyedSubscript:v11];
        value = [v13 value];

        if (value)
        {
          v15 = v6;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = PHDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = handleCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Handle not found in cache: %@", buf, 0xCu);
  }

  value = 0;
LABEL_13:

  return value;
}

- (id)contactsByHandleForRecentCall:(id)call keyDescriptors:(id)descriptors
{
  callCopy = call;
  descriptorsCopy = descriptors;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v53 = objc_alloc_init(NSMutableOrderedSet);
  v48 = objc_alloc_init(NSMutableDictionary);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v44 = callCopy;
  obj = [callCopy validRemoteParticipantHandles];
  v47 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v47)
  {
    v55 = 0;
    v46 = *v69;
    v8 = v53;
    do
    {
      v9 = 0;
      do
      {
        if (*v69 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v49 = v9;
        v51 = *(*(&v68 + 1) + 8 * v9);
        v10 = [(PHRecentsController *)self contactHandlesForHandle:?];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v64 objects:v74 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v65;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v65 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v64 + 1) + 8 * i);
              contactCache = [(PHRecentsController *)self contactCache];
              v17 = [contactCache objectForKeyedSubscript:v15];

              if (v17 && (([v17 value], (v18 = objc_claimAutoreleasedReturnValue()) == 0) || (v19 = v18, objc_msgSend(v17, "value"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "areKeysAvailable:", descriptorsCopy), v20, v8 = v53, v19, v21)))
              {
                value = [v17 value];
                if (value)
                {
                  v23 = v55;
                  if (!v55)
                  {
                    v23 = objc_alloc_init(NSMutableDictionary);
                  }

                  v55 = v23;
                  v24 = [v23 objectForKeyedSubscript:v51];
                  if (!v24)
                  {
                    v24 = +[NSMutableArray array];
                    [v55 setObject:v24 forKeyedSubscript:v51];
                  }

                  [v24 addObject:value];
                }
              }

              else
              {
                [v8 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v64 objects:v74 count:16];
          }

          while (v12);
        }

        [v48 setObject:v10 forKeyedSubscript:v51];

        v9 = v49 + 1;
      }

      while (v49 + 1 != v47);
      v47 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v47);
  }

  else
  {
    v55 = 0;
    v8 = v53;
  }

  if ([v8 count])
  {
    contactStore = [(PHRecentsController *)self contactStore];
    array = [v8 array];
    v27 = [contactStore contactsForHandles:array keyDescriptors:descriptorsCopy];

    if (v27)
    {
      v28 = v55;
      if (!v55)
      {
        v28 = objc_alloc_init(NSMutableDictionary);
      }

      v55 = v28;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      allKeys = [v48 allKeys];
      v29 = [allKeys countByEnumeratingWithState:&v60 objects:v73 count:16];
      if (v29)
      {
        v30 = v29;
        v52 = *v61;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v61 != v52)
            {
              objc_enumerationMutation(allKeys);
            }

            v32 = *(*(&v60 + 1) + 8 * j);
            v33 = objc_alloc_init(NSMutableOrderedSet);
            v34 = [v48 objectForKeyedSubscript:v32];
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v35 = [v34 countByEnumeratingWithState:&v56 objects:v72 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v57;
              do
              {
                for (k = 0; k != v36; k = k + 1)
                {
                  if (*v57 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = [v27 objectForKeyedSubscript:*(*(&v56 + 1) + 8 * k)];
                  if ([v39 count])
                  {
                    [v33 addObjectsFromArray:v39];
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v56 objects:v72 count:16];
              }

              while (v36);
            }

            v40 = [v55 objectForKeyedSubscript:v32];
            if (!v40)
            {
              v40 = +[NSMutableArray array];
              [v55 setObject:v40 forKeyedSubscript:v32];
            }

            array2 = [v33 array];
            [v40 addObjectsFromArray:array2];
          }

          v30 = [allKeys countByEnumeratingWithState:&v60 objects:v73 count:16];
        }

        while (v30);
      }
    }

    v8 = v53;
  }

  v42 = [v55 copy];

  return v42;
}

- (id)contactHandlesForHandle:(id)handle
{
  handleCopy = handle;
  v4 = +[NSMutableArray array];
  value = [handleCopy value];
  if ([value length])
  {
    [v4 addObject:value];
    normalizedValue = [handleCopy normalizedValue];
    if ([normalizedValue length])
    {
      value2 = [handleCopy value];
      v8 = [normalizedValue isEqualToString:value2];

      if ((v8 & 1) == 0)
      {
        [v4 addObject:normalizedValue];
      }
    }
  }

  v9 = [v4 copy];

  return v9;
}

- (id)contactHandlesForRecentCalls:(id)calls
{
  callsCopy = calls;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = callsCopy;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        validRemoteParticipantHandles = [v10 validRemoteParticipantHandles];
        v12 = [validRemoteParticipantHandles countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(validRemoteParticipantHandles);
              }

              v16 = [(PHRecentsController *)self contactHandlesForHandle:*(*(&v20 + 1) + 8 * j)];
              [v5 addObjectsFromArray:v16];
            }

            v13 = [validRemoteParticipantHandles countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  array = [v5 array];

  return array;
}

- (id)formattedNameForHandle:(id)handle countryCode:(id)code
{
  handleCopy = handle;
  codeCopy = code;
  type = [handleCopy type];
  v8 = PHDefaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (type == 2)
  {
    if (v9)
    {
      value = [handleCopy value];
      v16 = 138412546;
      v17 = value;
      v18 = 2112;
      v19 = codeCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "     - we'll format the destinationID '%@' with the country code '%@'", &v16, 0x16u);
    }

    value2 = [handleCopy value];
    value4 = TUFormattedPhoneNumber();

    if (!value4)
    {
LABEL_9:
      v14 = +[NSBundle mainBundle];
      value4 = [v14 localizedStringForKey:@"UNKNOWN_CALLER" value:&stru_1000B4840 table:@"PHRecents"];
    }
  }

  else
  {
    if (v9)
    {
      value3 = [handleCopy value];
      v16 = 138412290;
      v17 = value3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "     - handle can't/shouldn't be formatted as a phone number, so using the unmodified destination ID '%@'", &v16, 0xCu);
    }

    value4 = [handleCopy value];
    if (!value4)
    {
      goto LABEL_9;
    }
  }

  return value4;
}

- (id)fetchCallProviderForRecentCall:(id)call
{
  callCopy = call;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  serviceProvider = [callCopy serviceProvider];
  callProviderManager = [(PHRecentsController *)self callProviderManager];
  if (serviceProvider)
  {
    callProviderCache = [(PHRecentsController *)self callProviderCache];
    v9 = [callProviderCache objectForKey:serviceProvider];

    if (v9)
    {
      goto LABEL_7;
    }

    v10 = [callProviderManager providerForRecentCall:callCopy];
    if (v10)
    {
      v9 = v10;
      callProviderCache2 = [(PHRecentsController *)self callProviderCache];
      [callProviderCache2 setObject:v9 forKey:serviceProvider];

      goto LABEL_7;
    }

    v14 = PHDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = callCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Could not retrieve a call provider for the specified recent call: %@", buf, 0xCu);
    }
  }

  else
  {
    callCopy = [NSString stringWithFormat:@"Service provider is nil for the specified recent call: %@", callCopy];
    NSLog(@"** TUAssertion failure: %@", callCopy);

    _TUAssertShouldCrashApplication();
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (void)fetchContactsForRecentCalls:(id)calls
{
  callsCopy = calls;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = [(PHRecentsController *)self contactHandlesForRecentCalls:callsCopy];
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = [callsCopy count];
    v10 = 2048;
    v11 = [v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching contacts for %lu calls using %lu handles", &v8, 0x16u);
  }

  [(PHRecentsController *)self fetchContactsForHandles:v6];
}

- (id)fetchContactForContactCardDisplay:(id)display
{
  displayCopy = display;
  if ([displayCopy canExceedUnifyingThreshold])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100011BFC;
    v16 = sub_100011C0C;
    v17 = 0;
    serialQueue = [(PHRecentsController *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015730;
    block[3] = &unk_1000B1E60;
    v10 = displayCopy;
    v11 = &v12;
    block[4] = self;
    v6 = displayCopy;
    dispatch_sync(serialQueue, block);

    v7 = v13[5];
    if (!v7)
    {
      v7 = v6;
    }

    displayCopy = v7;

    _Block_object_dispose(&v12, 8);
  }

  return displayCopy;
}

- (id)fetchUnifiedContactForID:(id)d withDescriptors:(id)descriptors
{
  dCopy = d;
  descriptorsCopy = descriptors;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  contactStore = [(PHRecentsController *)self contactStore];
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138740227;
    v25 = dCopy;
    v26 = 2112;
    v27 = contactStore;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fetching unified contact for handle %{sensitive}@ using contact store %@", buf, 0x16u);
  }

  v11 = descriptorsCopy;
  if (!descriptorsCopy)
  {
    if (qword_1000C60E8 != -1)
    {
      sub_10007A954();
    }

    v11 = qword_1000C60E0;
  }

  v23 = 0;
  v12 = [contactStore unifiedContactWithIdentifier:dCopy keysToFetch:v11 error:&v23];
  v13 = v23;
  if (!descriptorsCopy)
  {
  }

  v14 = [TUOptionalObject alloc];
  if (v13)
  {
    v15 = [v14 initWithValue:0];
    contactCache = [(PHRecentsController *)self contactCache];
    [contactCache setObject:v15 forKeyedSubscript:dCopy];

    v17 = PHDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10007A97C(dCopy, v17);
    }

    v18 = 0;
  }

  else
  {
    v19 = [v14 initWithValue:v12];
    contactCache2 = [(PHRecentsController *)self contactCache];
    [contactCache2 setObject:v19 forKeyedSubscript:dCopy];

    v21 = PHDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740227;
      v25 = v12;
      v26 = 2117;
      v27 = dCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found unified contact %{sensitive}@ for contact handle %{sensitive}@", buf, 0x16u);
    }

    v18 = v12;
  }

  return v18;
}

- (void)fetchContactsForHandles:(id)handles
{
  handlesCopy = handles;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [handlesCopy count]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = handlesCopy;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        contactCache = [(PHRecentsController *)self contactCache];
        v14 = [contactCache objectForKeyedSubscript:v12];

        if (!v14)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    contactStore = [(PHRecentsController *)self contactStore];
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v6 count];
      *buf = 134218242;
      v44 = v17;
      v45 = 2112;
      v46 = contactStore;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fetching contacts for %lu handles using contact store %@", buf, 0x16u);
    }

    allObjects = [v6 allObjects];
    v32 = v7;
    if (qword_1000C60E8 != -1)
    {
      sub_10007A954();
    }

    v31 = contactStore;
    v19 = [contactStore contactsForHandles:allObjects keyDescriptors:qword_1000C60E0 alwaysUnifyLabeledValues:0];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = v6;
    obj = v6;
    v20 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v35 + 1) + 8 * j);
          v25 = [v19 objectForKeyedSubscript:v24];
          firstObject = [v25 firstObject];
          if ([v25 count] >= 2)
          {
            v27 = PHDefaultLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [v25 count];
              *buf = 134218499;
              v44 = v28;
              v45 = 2117;
              v46 = v24;
              v47 = 2117;
              v48 = firstObject;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Found %lu contacts for contact handle %{sensitive}@; caching the first contact %{sensitive}@", buf, 0x20u);
            }
          }

          v29 = [[TUOptionalObject alloc] initWithValue:firstObject];
          contactCache2 = [(PHRecentsController *)self contactCache];
          [contactCache2 setObject:v29 forKeyedSubscript:v24];
        }

        v21 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
      }

      while (v21);
    }

    v7 = v32;
    v6 = v33;
  }
}

- (id)fetchContactFormatter
{
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v3 = objc_alloc_init(CNContactFormatter);
  [v3 setStyle:0];

  return v3;
}

- (id)fetchImageForRecentCall:(id)call
{
  callCopy = call;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  ttyType = [callCopy ttyType];
  if (ttyType == 2)
  {
    v7 = +[UIImage recentsTTYRelayGlyphImage];
LABEL_5:
    v8 = v7;
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  if (ttyType == 1)
  {
    v7 = +[UIImage recentsTTYDirectGlyphImage];
    goto LABEL_5;
  }

LABEL_6:
  callStatus = [callCopy callStatus];
  if (callStatus != kCHCallStatusConnectedOutgoing)
  {
    callStatus2 = [callCopy callStatus];
    if (callStatus2 != kCHCallStatusCancelled)
    {
      goto LABEL_11;
    }
  }

  mediaType = [callCopy mediaType];
  if (mediaType == 2)
  {
    v12 = +[UIImage recentsOutgoingVideoCallGlyphImage];
    goto LABEL_13;
  }

  if (mediaType != 1)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_14;
  }

  v12 = +[UIImage recentsOutgoingAudioCallGlyphImage];
LABEL_13:
  v8 = v12;
LABEL_14:

  return v8;
}

- (id)fetchMutableItemForRecentCall:(id)call
{
  callCopy = call;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = -[PHRecentsController fetchMutableItemForRecentCall:numberOfOccurences:](self, "fetchMutableItemForRecentCall:numberOfOccurences:", callCopy, [callCopy numberOfOccurrences]);

  return v6;
}

- (id)updatedTitleForTempHandles:(id)handles countOfExcludedHandles:(int64_t)excludedHandles
{
  handlesCopy = handles;
  if (![handlesCopy length])
  {
    goto LABEL_6;
  }

  if (excludedHandles == 1)
  {
    v7 = TUBundle();
    v8 = [v7 localizedStringForKey:@"%@_AND_ONE_OTHER" value:&stru_1000B4840 table:@"TelephonyUtilities"];
    handlesCopy = [NSString stringWithFormat:v8, handlesCopy];

    goto LABEL_7;
  }

  if (excludedHandles >= 2)
  {
    v10 = TUBundle();
    v11 = [v10 localizedStringForKey:@"%@_AND_%@_OTHERS" value:&stru_1000B4840 table:@"TelephonyUtilities"];
    numberFormatter = [(PHRecentsController *)self numberFormatter];
    v13 = [NSNumber numberWithInteger:excludedHandles];
    v14 = [numberFormatter stringFromNumber:v13];
    handlesCopy = [NSString stringWithFormat:v11, handlesCopy, v14];
  }

  else
  {
LABEL_6:
    handlesCopy = handlesCopy;
  }

LABEL_7:

  return handlesCopy;
}

- (id)fetchMutableItemForRecentCall:(id)call numberOfOccurences:(unint64_t)occurences
{
  callCopy = call;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v8 = objc_alloc_init(PKMutableRecentsItem);
  validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
  v10 = [validRemoteParticipantHandles count];
  countOfExcludedHandles = [callCopy countOfExcludedHandles];
  v12 = countOfExcludedHandles;
  v158 = validRemoteParticipantHandles;
  if (v10 || countOfExcludedHandles < 1)
  {
    if (v10 > 1)
    {
      v150 = countOfExcludedHandles;
      v154 = v8;
      occurencesCopy = occurences;
      v160 = callCopy;
      v23 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [validRemoteParticipantHandles count]);
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      v24 = validRemoteParticipantHandles;
      v25 = [v24 countByEnumeratingWithState:&v161 objects:v169 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v162;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v162 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v161 + 1) + 8 * i);
            v30 = [(PHRecentsController *)self contactForHandle:v29];
            if (v30)
            {
              contactFormatter = [(PHRecentsController *)self contactFormatter];
              isoCountryCode2 = [contactFormatter stringFromContact:v30];

              if (isoCountryCode2)
              {
                [v23 addObject:isoCountryCode2];
              }

              else
              {
                isoCountryCode = [v160 isoCountryCode];
                v35 = [(PHRecentsController *)self formattedNameForHandle:v29 countryCode:isoCountryCode];
                [v23 addObject:v35];
              }
            }

            else
            {
              isoCountryCode2 = [v160 isoCountryCode];
              v33 = [(PHRecentsController *)self formattedNameForHandle:v29 countryCode:isoCountryCode2];
              [v23 addObject:v33];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v161 objects:v169 count:16];
        }

        while (v26);
      }

      v36 = +[NSMutableString string];
      v37 = [v23 count];
      switch(v37)
      {
        case 3:
          v53 = TUBundle();
          v54 = v53;
          v146 = v36;
          if (v150 == 1)
          {
            [v53 localizedStringForKey:@"%@_%@_%@_AND_ONE_OTHER" value:&stru_1000B4840 table:@"TelephonyUtilities"];
            v93 = v92 = v36;
            v94 = [v23 objectAtIndexedSubscript:0];
            v95 = [v23 objectAtIndexedSubscript:1];
            v96 = [v23 objectAtIndexedSubscript:2];
            v97 = [NSString stringWithFormat:v93, v94, v95, v96];

            [v92 appendString:v97];
            v54 = v97;
          }

          else if (v150)
          {
            v143 = [v53 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHERS" value:&stru_1000B4840 table:@"TelephonyUtilities"];
            v142 = [v23 objectAtIndexedSubscript:0];
            v108 = [v23 objectAtIndexedSubscript:1];
            v109 = [v23 objectAtIndexedSubscript:2];
            numberFormatter = [(PHRecentsController *)self numberFormatter];
            v111 = [NSNumber numberWithInteger:v150];
            v112 = [numberFormatter stringFromNumber:v111];
            v112 = [NSString stringWithFormat:v143, v142, v108, v109, v112];

            [v146 appendString:v112];
            v54 = v112;
          }

          else
          {
            v55 = [v53 localizedStringForKey:@"%@_%@_AND_%@" value:&stru_1000B4840 table:@"TelephonyUtilities"];
            v56 = [v23 objectAtIndexedSubscript:0];
            v57 = [v23 objectAtIndexedSubscript:1];
            v58 = [v23 objectAtIndexedSubscript:2];
            v59 = [NSString stringWithFormat:v55, v56, v57, v58];
            [v146 appendString:v59];
          }

          callCopy = v160;
          v8 = v154;

          v114 = TUBundle();
          v115 = [v114 localizedStringForKey:@"%@_%@_AND_%@" value:&stru_1000B4840 table:@"TelephonyUtilities"];
          v116 = [v23 objectAtIndexedSubscript:0];
          v117 = [v23 objectAtIndexedSubscript:1];
          v118 = [v23 objectAtIndexedSubscript:2];
          v118 = [NSString stringWithFormat:v115, v116, v117, v118];

          v36 = v146;
          break;
        case 2:
          v48 = TUBundle();
          v144 = v48;
          if (v150 == 1)
          {
            v49 = [v48 localizedStringForKey:@"%@_%@_AND_ONE_OTHER" value:&stru_1000B4840 table:@"TelephonyUtilities"];
            v50 = [v23 objectAtIndexedSubscript:0];
            v51 = [v23 objectAtIndexedSubscript:1];
            v103 = [NSString stringWithFormat:v49, v50, v51];
            callCopy = v160;
            v8 = v154;
          }

          else
          {
            callCopy = v160;
            v8 = v154;
            if (v150)
            {
              v49 = [v48 localizedStringForKey:@"%@_%@_AND_%@_OTHERS" value:&stru_1000B4840 table:@"TelephonyUtilities"];
              v50 = [v23 objectAtIndexedSubscript:0];
              v51 = [v23 objectAtIndexedSubscript:1];
              numberFormatter2 = [(PHRecentsController *)self numberFormatter];
              v102 = [NSNumber numberWithInteger:v150];
              [numberFormatter2 stringFromNumber:v102];
              v103 = v148 = v36;
              v103 = [NSString stringWithFormat:v49, v50, v51, v103];

              v36 = v148;
            }

            else
            {
              v49 = [v48 localizedStringForKey:@"%@_AND_%@" value:&stru_1000B4840 table:@"TelephonyUtilities"];
              v50 = [v23 objectAtIndexedSubscript:0];
              v51 = [v23 objectAtIndexedSubscript:1];
              v103 = [NSString stringWithFormat:v49, v50, v51];
            }
          }

          [v36 appendString:v103];
          v104 = TUBundle();
          v105 = [v104 localizedStringForKey:@"%@_AND_%@" value:&stru_1000B4840 table:@"TelephonyUtilities"];
          v106 = [v23 objectAtIndexedSubscript:0];
          v107 = [v23 objectAtIndexedSubscript:1];
          v118 = [NSString stringWithFormat:v105, v106, v107];

          break;
        case 1:
          callCopy = v160;
          v8 = v154;
          if (v150 == 1)
          {
            v98 = v36;
            v123 = TUBundle();
            v99 = [v123 localizedStringForKey:@"%@_AND_ONE_OTHER" value:&stru_1000B4840 table:@"TelephonyUtilities"];
            v100 = [v23 objectAtIndexedSubscript:0];
            v100 = [NSString stringWithFormat:v99, v100];
            [v98 appendString:v100];

            v36 = v98;
          }

          else
          {
            if (v150)
            {
              v145 = TUBundle();
              v119 = [v145 localizedStringForKey:@"%@_AND_%@_OTHERS" value:&stru_1000B4840 table:@"TelephonyUtilities"];
              v120 = [v23 objectAtIndexedSubscript:0];
              numberFormatter3 = [(PHRecentsController *)self numberFormatter];
              [NSNumber numberWithInteger:v150];
              v122 = v149 = v36;
              v123 = [numberFormatter3 stringFromNumber:v122];
              v124 = v119;
              v123 = [NSString stringWithFormat:v119, v120, v123];

              v36 = v149;
            }

            else
            {
              v123 = [v23 objectAtIndexedSubscript:0];
            }

            [v36 appendString:v123];
          }

          v118 = [v23 objectAtIndexedSubscript:0];
          break;
        default:
          if (v37 < 4)
          {
            v118 = 0;
          }

          else
          {
            v147 = v36;
            v60 = [v23 count] + v150 - 3;
            v151 = TUBundle();
            v61 = [v151 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHER" value:&stru_1000B4840 table:@"TelephonyUtilities"];
            v62 = [v23 objectAtIndexedSubscript:0];
            v63 = [v23 objectAtIndexedSubscript:1];
            v64 = [v23 objectAtIndexedSubscript:2];
            numberFormatter4 = [(PHRecentsController *)self numberFormatter];
            v66 = [NSNumber numberWithUnsignedInteger:v60];
            v67 = [numberFormatter4 stringFromNumber:v66];
            v68 = v61;
            v69 = [NSString stringWithFormat:v61, v62, v63, v64, v67];
            [v147 appendString:v69];

            v152 = TUBundle();
            v70 = [v152 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHER" value:&stru_1000B4840 table:@"TelephonyUtilities"];
            v71 = [v23 objectAtIndexedSubscript:0];
            v72 = [v23 objectAtIndexedSubscript:1];
            v73 = [v23 objectAtIndexedSubscript:2];
            numberFormatter5 = [(PHRecentsController *)self numberFormatter];
            v75 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 count] - 3);
            v76 = [numberFormatter5 stringFromNumber:v75];
            v118 = [NSString stringWithFormat:v70, v71, v72, v73, v76];

            v36 = v147;
          }

          callCopy = v160;
          v8 = v154;
          break;
      }

      if ([v36 length])
      {
        v44 = [v36 copy];
      }

      else
      {
        v44 = 0;
      }

      occurences = occurencesCopy;
    }

    else
    {
      anyObject = [validRemoteParticipantHandles anyObject];
      v155 = anyObject;
      if (anyObject)
      {
        [(PHRecentsController *)self contactHandlesForHandle:anyObject];
        v165 = 0u;
        v166 = 0u;
        v167 = 0u;
        v15 = v168 = 0u;
        v118 = [v15 countByEnumeratingWithState:&v165 objects:v170 count:16];
        if (v118)
        {
          v153 = v8;
          v159 = callCopy;
          v17 = *v166;
          while (2)
          {
            for (j = 0; j != v118; j = j + 1)
            {
              if (*v166 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v165 + 1) + 8 * j);
              contactCache = [(PHRecentsController *)self contactCache];
              v21 = [contactCache objectForKeyedSubscript:v19];
              value = [v21 value];

              if (value)
              {
                contactFormatter2 = [(PHRecentsController *)self contactFormatter];
                v46 = [contactFormatter2 stringFromContact:value];
                v44 = [(PHRecentsController *)self updatedTitleForTempHandles:v46 countOfExcludedHandles:v12];

                contactFormatter3 = [(PHRecentsController *)self contactFormatter];
                v118 = [contactFormatter3 stringFromContact:value];

                goto LABEL_37;
              }
            }

            v118 = [v15 countByEnumeratingWithState:&v165 objects:v170 count:16];
            if (v118)
            {
              continue;
            }

            break;
          }

          v44 = 0;
LABEL_37:
          callCopy = v159;
          v8 = v153;
        }

        else
        {
          v44 = 0;
        }
      }

      else
      {
        v118 = 0;
        v44 = 0;
      }

      v77 = [(PHRecentsController *)self fetchCallProviderForRecentCall:callCopy];
      if (![v44 length] && (objc_msgSend(v77, "isTelephonyProvider") & 1) == 0)
      {
        name = [callCopy name];
        v79 = [(PHRecentsController *)self updatedTitleForTempHandles:name countOfExcludedHandles:v12];

        name2 = [callCopy name];

        v118 = name2;
        v44 = v79;
      }

      if (![v44 length])
      {
        callerIdForDisplay = [callCopy callerIdForDisplay];
        v82 = [(PHRecentsController *)self updatedTitleForTempHandles:callerIdForDisplay countOfExcludedHandles:v12];

        v118 = callerIdForDisplay;
        v44 = v82;
      }

      if (![v44 length])
      {
        callerIdIsBlocked = [callCopy callerIdIsBlocked];
        v84 = +[NSBundle mainBundle];
        v85 = v84;
        if (callerIdIsBlocked)
        {
          v86 = @"NO_CALLER_ID";
        }

        else
        {
          v86 = @"UNKNOWN_CALLER";
        }

        v87 = [v84 localizedStringForKey:v86 value:&stru_1000B4840 table:@"PHRecents"];
        v88 = [(PHRecentsController *)self updatedTitleForTempHandles:v87 countOfExcludedHandles:v12];

        if ([callCopy callerIdIsBlocked])
        {
          v89 = @"NO_CALLER_ID";
        }

        else
        {
          v89 = @"UNKNOWN_CALLER";
        }

        v90 = +[NSBundle mainBundle];
        v91 = [v90 localizedStringForKey:v89 value:&stru_1000B4840 table:@"PHRecents"];

        v118 = v91;
        v44 = v88;
      }
    }
  }

  else
  {
    if (countOfExcludedHandles == 1)
    {
      v13 = TUBundle();
      v44 = [v13 localizedStringForKey:@"ONE_OTHER" value:&stru_1000B4840 table:@"TelephonyUtilities"];
    }

    else
    {
      v39 = TUBundle();
      [v39 localizedStringForKey:@"%@_OTHERS" value:&stru_1000B4840 table:@"TelephonyUtilities"];
      v40 = v157 = occurences;
      numberFormatter6 = [(PHRecentsController *)self numberFormatter];
      v42 = [NSNumber numberWithInteger:v12];
      v43 = [numberFormatter6 stringFromNumber:v42];
      v44 = [NSString stringWithFormat:v40, v43];

      occurences = v157;
    }

    v118 = 0;
  }

  date = [callCopy date];
  [v8 setDate:date];

  image = [v8 image];

  if (!image)
  {
    v127 = [(PHRecentsController *)self fetchImageForRecentCall:callCopy];
    [v8 setImage:v127];
  }

  if (occurences <= 1)
  {
    [v8 setLocalizedCount:0];
  }

  else
  {
    numberFormatter7 = [(PHRecentsController *)self numberFormatter];
    v129 = [NSNumber numberWithUnsignedInteger:occurences];
    v130 = [numberFormatter7 stringFromNumber:v129];
    v130 = [NSString stringWithFormat:@"(%@)", v130];
    [v8 setLocalizedCount:v130];
  }

  [v8 setLocalizedTitle:v44];
  [v8 setLocalizedValidHandlesTitle:v118];
  [v8 setVerified:{objc_msgSend(callCopy, "verificationStatus") == 1}];
  if (PHDeviceSupportsDualSim())
  {
    v132 = [(PHRecentsController *)self fetchCallProviderForRecentCall:callCopy];
    if ([callCopy ph_supportsLocalParticipantBadge])
    {
      prioritizedSenderIdentities = [v132 prioritizedSenderIdentities];
      v134 = [prioritizedSenderIdentities count];

      if (v134 >= 2)
      {
        callProviderManager = [(PHRecentsController *)self callProviderManager];
        telephonyProvider = [callProviderManager telephonyProvider];
        localParticipantUUID = [callCopy localParticipantUUID];
        v138 = [telephonyProvider senderIdentityForAccountUUID:localParticipantUUID];

        localizedShortName = [v138 localizedShortName];
        [v8 setLocalizedSenderIdentityTitle:localizedShortName];
      }
    }
  }

  return v8;
}

- (void)fetchMetadataForRecentCalls:(id)calls
{
  callsCopy = calls;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  metadataCache = [(PHRecentsController *)self metadataCache];

  if (metadataCache)
  {
    v7 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCalls:callsCopy];
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v16 = [callsCopy count];
      v17 = 2048;
      v18 = [v7 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching metadata for %lu recent calls using %lu handles", buf, 0x16u);
    }

    featureFlags = [(PHRecentsController *)self featureFlags];
    phoneRecentsAvatarsEnabled = [featureFlags phoneRecentsAvatarsEnabled];

    metadataCache2 = [(PHRecentsController *)self metadataCache];
    v12 = metadataCache2;
    if (phoneRecentsAvatarsEnabled)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001764C;
      v13[3] = &unk_1000B1DE8;
      v13[4] = self;
      v14 = callsCopy;
      [v12 updateCacheWithDestinationIDs:v7 completion:v13];
    }

    else
    {
      [metadataCache2 updateCacheWithDestinationIDs:v7];
    }
  }
}

- (void)fetchBlockedStatusForRecentCalls:(id)calls
{
  callsCopy = calls;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  if ([callsCopy count])
  {
    blockedStatusCache = [(PHRecentsController *)self blockedStatusCache];

    if (blockedStatusCache)
    {
      featureFlags = [(PHRecentsController *)self featureFlags];
      betterBlockingEnabled = [featureFlags betterBlockingEnabled];

      if (betterBlockingEnabled)
      {
        v9 = PHDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v15 = [callsCopy count];
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetching blocked status for %lu recent calls", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100017AB0;
        v10[3] = &unk_1000B1FC8;
        objc_copyWeak(&v13, buf);
        v11 = callsCopy;
        selfCopy = self;
        [(PHRecentsController *)self queryCommTrustBlockedForCalls:v11 completion:v10];

        objc_destroyWeak(&v13);
        objc_destroyWeak(buf);
      }
    }
  }
}

- (id)fetchNumberFormatter
{
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v3 = objc_alloc_init(NSNumberFormatter);

  return v3;
}

- (id)fetchRecentCalls
{
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  recentCalls = [(PHRecentsController *)self recentCalls];
  callHistoryController = [(PHRecentsController *)self callHistoryController];
  recentCalls2 = [callHistoryController recentCalls];

  if ([recentCalls isEqualToArray:recentCalls2])
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Recent calls array has not changed. Ignoring", v12, 2u);
    }

    v8 = recentCalls;
  }

  else
  {
    itemCache = [(PHRecentsController *)self itemCache];
    [itemCache removeAllObjects];

    [(PHRecentsController *)self populateCachesForRecentCalls:recentCalls2];
    v8 = recentCalls2;
  }

  v10 = v8;

  return v8;
}

- (void)populateCachesForRecentCalls:(id)calls
{
  callsCopy = calls;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = [callsCopy count];
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting contacts for %lu calls", &v11, 0xCu);
  }

  [(PHRecentsController *)self fetchContactsForRecentCalls:callsCopy];
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting metadata for %lu recent calls.", &v11, 0xCu);
  }

  [(PHRecentsController *)self fetchMetadataForRecentCalls:callsCopy];
  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Requesting blocked status with %lu recent calls", &v11, 0xCu);
  }

  [(PHRecentsController *)self fetchBlockedStatusForRecentCalls:callsCopy];
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Populating item cache with %lu recent calls", &v11, 0xCu);
  }

  [(PHRecentsController *)self populateItemCacheForRecentCalls:callsCopy];
}

- (void)populateItemCacheForRecentCalls:(id)calls
{
  callsCopy = calls;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  itemCache = [(PHRecentsController *)self itemCache];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = callsCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(PHRecentsController *)self fetchMutableItemForRecentCall:v12, v17];
        v14 = [(PHRecentsController *)self localizedSubtitleForRecentCall:v12];
        [v13 setLocalizedSubtitle:v14];

        v15 = [v13 copy];
        uniqueId = [v12 uniqueId];
        [itemCache setObject:v15 forKeyedSubscript:uniqueId];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)updateRecentCalls
{
  fetchRecentCalls = [(PHRecentsController *)self fetchRecentCalls];
  [(PHRecentsController *)self setRecentCalls:fetchRecentCalls];
}

- (void)recentCallsWillShow
{
  callHistoryController = [(PHRecentsController *)self callHistoryController];
  [callHistoryController boostQualityOfService];
}

- (id)metadataItemsForRecentCall:(id)call
{
  callCopy = call;
  v5 = +[NSMutableArray array];
  v6 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCall:callCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        metadataCache = [(PHRecentsController *)self metadataCache];
        v13 = [metadataCache metadataForDestinationID:v11];

        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (void)handleUpdatedContacts
{
  serialQueue = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000185AC;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(serialQueue, block);
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
    v9 = 138412802;
    v10 = v6;
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", &v9, 0x20u);
  }

  [(PHRecentsController *)self handleUpdatedContacts];
}

- (void)handleIDSServiceAvailabilityDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  serialQueue = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018904;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(serialQueue, block);
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
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  serialQueue = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018A74;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)handleTUCallHistoryControllerRecentCallsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  callHistoryController = [(PHRecentsController *)self callHistoryController];
  v7 = [object isEqual:callHistoryController];

  serialQueue = PHDefaultLog();
  v9 = os_log_type_enabled(serialQueue, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = objc_opt_class();
      v11 = v10;
      name = [notificationCopy name];
      *buf = 138412802;
      v15 = v10;
      v16 = 2048;
      selfCopy = self;
      v18 = 2112;
      v19 = name;
      _os_log_impl(&_mh_execute_header, serialQueue, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
    }

    serialQueue = [(PHRecentsController *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018D58;
    block[3] = &unk_1000B1B80;
    block[4] = self;
    dispatch_async(serialQueue, block);
  }

  else if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, serialQueue, OS_LOG_TYPE_DEFAULT, "Ignoring calls change notification from different callHistoryController", buf, 2u);
  }
}

- (void)handleTUCallHistoryControllerUnreadCallCountDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  callHistoryController = [(PHRecentsController *)self callHistoryController];
  v7 = [object isEqual:callHistoryController];

  if (v7)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      name = [notificationCopy name];
      v14 = 138412802;
      v15 = v9;
      v16 = 2048;
      selfCopy = self;
      v18 = 2112;
      v19 = name;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", &v14, 0x20u);
    }

    object2 = [notificationCopy object];
    v13 = object2;
    if (object2)
    {
      -[PHRecentsController setUnreadCallCount:](self, "setUnreadCallCount:", [object2 unreadCallCount]);
    }
  }
}

- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)notification
{
  notificationCopy = notification;
  featureFlags = [(PHRecentsController *)self featureFlags];
  phoneRecentsAvatarsEnabled = [featureFlags phoneRecentsAvatarsEnabled];

  if ((phoneRecentsAvatarsEnabled & 1) == 0)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      name = [notificationCopy name];
      *buf = 138412802;
      v14 = v8;
      v15 = 2048;
      selfCopy = self;
      v17 = 2112;
      v18 = name;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
    }

    serialQueue = [(PHRecentsController *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100019050;
    block[3] = &unk_1000B1B80;
    block[4] = self;
    dispatch_async(serialQueue, block);
  }
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
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  serialQueue = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001939C;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)handleUIApplicationDidBecomeActiveNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  serialQueue = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000195A4;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)performSynchronousBlock:(id)block
{
  if (dispatch_get_specific(off_1000C4950) == self)
  {
    v6 = *(block + 2);
    blockCopy = block;
    v6();
  }

  else
  {
    blockCopy2 = block;
    blockCopy = [(PHRecentsController *)self serialQueue];
    dispatch_sync(blockCopy, blockCopy2);
  }
}

- (void)providersChangedForProviderManager:(id)manager
{
  managerCopy = manager;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = objc_opt_class();
    v12 = 2048;
    selfCopy = self;
    v14 = 2112;
    v15 = managerCopy;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling providersChangedForProviderManager %@", &v10, 0x20u);
  }

  recentCalls = [(PHRecentsController *)self recentCalls];
  if ([recentCalls count])
  {
    itemCache = [(PHRecentsController *)self itemCache];
    [itemCache removeAllObjects];

    [(PHRecentsController *)self populateItemCacheForRecentCalls:recentCalls];
    os_unfair_lock_lock(&self->_accessorLock);
    [(PHRecentsController *)self notifyDelegatesRecentsController:self didChangeCalls:recentCalls];
    os_unfair_lock_unlock(&self->_accessorLock);
  }
}

- (id)subtitleForRecentEmergencyCall:(id)call
{
  callOccurrences = [call callOccurrences];
  v5 = [(PHRecentsController *)self localizedSubtitleForRecentEmergencyCall:callOccurrences];

  return v5;
}

- (id)localizedSubtitleForRecentEmergencyCall:(id)call
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = call;
  v3 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v3)
  {
LABEL_33:
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    v19 = @"Emergency call";
    goto LABEL_34;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = *v25;
  v8 = kCHCallOccurrenceEmergencyVideosCountKey;
  v9 = kCHCallOccurrenceEmergencyImagesCountKey;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v24 + 1) + 8 * i);
      v12 = [v11 objectForKeyedSubscript:v8];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 += [v12 integerValue];
      }

      v13 = [v11 objectForKeyedSubscript:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 += [v13 integerValue];
      }
    }

    v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v4);
  if (v6 && !v5)
  {
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    v16 = @"Shared videos coalesced";
    v17 = @"Shared video coalesced";
    v18 = v6 == 1;
    goto LABEL_18;
  }

  if (v6 || !v5)
  {
    if (v6 == 1 && v5 == 1)
    {
      v14 = +[NSBundle mainBundle];
      v15 = v14;
      v19 = @"Shared video and photo coalesced";
      goto LABEL_34;
    }

    if (v6 == 1 && v5 >= 2)
    {
      v14 = +[NSBundle mainBundle];
      v15 = v14;
      v19 = @"Shared video and photos coalesced";
      goto LABEL_34;
    }

    if (v6 >= 2 && v5 == 1)
    {
      v14 = +[NSBundle mainBundle];
      v15 = v14;
      v19 = @"Shared videos and photo coalesced";
      goto LABEL_34;
    }

    if (v6 >= 2 && v5 >= 2)
    {
      v14 = +[NSBundle mainBundle];
      v15 = v14;
      v19 = @"Shared videos and photos coalesced";
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v14 = +[NSBundle mainBundle];
  v15 = v14;
  v16 = @"Shared photos coalesced";
  v17 = @"Shared photo coalesced";
  v18 = v5 == 1;
LABEL_18:
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v16;
  }

LABEL_34:
  v20 = [v14 localizedStringForKey:v19 value:&stru_1000B4840 table:@"PHRecents"];
  v21 = [NSString stringWithFormat:v20];

  return v21;
}

- (id)localizedSubtitleForRecentCall:(id)call
{
  callCopy = call;
  serialQueue = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  if ([callCopy wasEmergencyCall])
  {
    v6 = [(PHRecentsController *)self subtitleForRecentEmergencyCall:callCopy];
    goto LABEL_30;
  }

  blockedByExtension = [callCopy blockedByExtension];

  if (blockedByExtension)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"%@_BLOCKED_BY" value:&stru_1000B4840 table:@"PHRecents"];
    localizedBlockedByExtensionName = [callCopy localizedBlockedByExtensionName];
    v6 = [NSString stringWithFormat:v9, localizedBlockedByExtensionName];

    goto LABEL_30;
  }

  v11 = [(PHRecentsController *)self fetchCallProviderForRecentCall:callCopy];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_26;
  }

  if ([v11 isFaceTimeProvider])
  {
    mediaType = [callCopy mediaType];
    v14 = +[NSBundle mainBundle];
    anyObject = v14;
    if (mediaType == 2)
    {
      v16 = @"RECENTS_FACETIME_VIDEO";
    }

    else
    {
      v16 = @"RECENTS_FACETIME_AUDIO";
    }

    v18 = [v14 localizedStringForKey:v16 value:&stru_1000B4840 table:@"PHRecents"];
    goto LABEL_22;
  }

  if (![v12 isTelephonyProvider])
  {
    mediaType2 = [callCopy mediaType];
    if (mediaType2 == 1)
    {
      v26 = @"RECENTS_CALL_PROVIDER_NAME_%@_CALL_CATEGORY_AUDIO";
      goto LABEL_39;
    }

    if (mediaType2 == 2)
    {
      v26 = @"RECENTS_CALL_PROVIDER_NAME_%@_CALL_CATEGORY_VIDEO";
LABEL_39:
      v33 = +[NSBundle mainBundle];
      v34 = [v33 localizedStringForKey:v26 value:&stru_1000B4840 table:@"PHRecents"];
      localizedName = [v12 localizedName];
      v18 = [NSString stringWithFormat:v34, localizedName];

      goto LABEL_27;
    }

LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

  remoteParticipantHandles = [callCopy remoteParticipantHandles];
  anyObject = [remoteParticipantHandles anyObject];

  if (!anyObject)
  {
    v18 = 0;
    goto LABEL_50;
  }

  [(PHRecentsController *)self contactHandlesForHandle:anyObject];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v55 = 0u;
  v18 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v18)
  {
    goto LABEL_49;
  }

  v50 = anyObject;
  v19 = *v53;
  while (2)
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v53 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v52 + 1) + 8 * i);
      contactCache = [(PHRecentsController *)self contactCache];
      v23 = [contactCache objectForKeyedSubscript:v21];
      value = [v23 value];

      if (value)
      {
        anyObject = v50;
        type = [v50 type];
        if (type == 3)
        {
          v30 = [value labeledValueForEmailAddress:v21];
          label = [v30 label];
          v32 = &CNContactEmailAddressesKey;
        }

        else
        {
          if (type == 2)
          {
            isoCountryCode = [callCopy isoCountryCode];
            label = [CNPhoneNumber phoneNumberWithDigits:v21 countryCode:isoCountryCode];

            if (label)
            {
              v30 = [value labeledValueForPhoneNumber:label];
            }

            else
            {
              v30 = 0;
            }

            label2 = [v30 label];
            v18 = [CNLabeledValue localizedDisplayStringForLabel:label2 propertyName:CNContactPhoneNumbersKey];

            goto LABEL_47;
          }

          if (type != 1)
          {
            v18 = 0;
LABEL_48:

            goto LABEL_49;
          }

          v30 = [value labeledValueForSocialProfileWithUsername:v21];
          label = [v30 label];
          v32 = &CNContactSocialProfilesKey;
        }

        v18 = [CNLabeledValue localizedDisplayStringForLabel:label propertyName:*v32];
LABEL_47:

        goto LABEL_48;
      }
    }

    v18 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

  anyObject = v50;
LABEL_49:

LABEL_50:
  if (-[PHRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v18) && [callCopy isJunk])
  {
    junkIdentificationCategory = [callCopy junkIdentificationCategory];
    if (junkIdentificationCategory)
    {
      junkIdentificationCategory2 = [callCopy junkIdentificationCategory];
    }

    else
    {
      junkIdentificationCategory2 = @"MAYBE_JUNK";
    }

    v40 = +[NSBundle mainBundle];
    v41 = [v40 localizedStringForKey:junkIdentificationCategory2 value:&stru_1000B4840 table:@"PHRecents"];

    v18 = v41;
  }

  if ([(PHRecentsController *)self isLocalizedSubtitleUnknown:v18])
  {
    v42 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCall:callCopy];
    firstObject = [v42 firstObject];

    if (firstObject)
    {
      metadataCache = [(PHRecentsController *)self metadataCache];
      v45 = [metadataCache metadataForDestinationID:firstObject];

      if (v45)
      {
        if (-[PHRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v18) && ([callCopy callerIdIsBlocked] & 1) == 0)
        {
          v46 = [v45 metadataForProvider:objc_opt_class()];

          v18 = v46;
        }

        if (-[PHRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v18) && ([callCopy callerIdIsBlocked] & 1) == 0)
        {
          v47 = [v45 metadataForProvider:objc_opt_class()];

          v18 = v47;
        }

        if ([(PHRecentsController *)self isLocalizedSubtitleUnknown:v18])
        {
          v48 = [v45 metadataForProvider:objc_opt_class()];

          v18 = v48;
        }

        if ([(PHRecentsController *)self isLocalizedSubtitleUnknown:v18])
        {
          v49 = [v45 metadataForProvider:objc_opt_class()];

          v18 = v49;
        }
      }
    }

    else
    {
      v45 = 0;
    }
  }

LABEL_22:

LABEL_27:
  if (![v18 length])
  {
    unknownLabel = [(PHRecentsController *)self unknownLabel];

    v18 = unknownLabel;
  }

  v6 = v18;

LABEL_30:

  return v6;
}

- (id)unknownLabel
{
  if (qword_1000C60C8 != -1)
  {
    sub_10007A9F4();
  }

  v3 = qword_1000C60C0;

  return v3;
}

- (void)queryCommTrustBlockedForCalls:(id)calls completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_100055038(0, &qword_1000C5C20);
  v6 = sub_10007B528();
  _Block_copy(v5);
  selfCopy = self;
  sub_1000655F8(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end