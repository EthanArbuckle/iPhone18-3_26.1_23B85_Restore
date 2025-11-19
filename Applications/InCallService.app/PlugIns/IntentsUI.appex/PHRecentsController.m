@interface PHRecentsController
+ (id)indexPathsToInsertIntoCachedRecentCalls:(id)a3 fromBackingRecentCalls:(id)a4;
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
- (PHRecentsController)initWithCallHistoryController:(id)a3 callProviderManager:(id)a4 contactStore:(id)a5 suggestedContactStore:(id)a6 metadataCache:(id)a7;
- (TUCallProviderManager)callProviderManager;
- (TUMetadataCache)metadataCache;
- (id)coalesceRecentCall:(id)a3 withRecentCall:(id)a4;
- (id)contactByHandleForRecentCall:(id)a3 keyDescriptors:(id)a4;
- (id)contactForHandle:(id)a3;
- (id)contactForRecentCall:(id)a3 keyDescriptors:(id)a4;
- (id)contactHandlesForHandle:(id)a3;
- (id)contactHandlesForRecentCalls:(id)a3;
- (id)contactsByHandleForRecentCall:(id)a3 keyDescriptors:(id)a4;
- (id)dialRequestForRecentCall:(id)a3;
- (id)fetchCallProviderForRecentCall:(id)a3;
- (id)fetchContactForContactCardDisplay:(id)a3;
- (id)fetchContactFormatter;
- (id)fetchImageForRecentCall:(id)a3;
- (id)fetchMutableItemForRecentCall:(id)a3;
- (id)fetchMutableItemForRecentCall:(id)a3 numberOfOccurences:(unint64_t)a4;
- (id)fetchNumberFormatter;
- (id)fetchRecentCalls;
- (id)fetchUnifiedContactForID:(id)a3 withDescriptors:(id)a4;
- (id)formattedNameForHandle:(id)a3 countryCode:(id)a4;
- (id)itemForRecentCall:(id)a3 numberOfOccurences:(unint64_t)a4;
- (id)itemForRecentCall:(id)a3 presentationStyle:(int64_t)a4;
- (id)localizedSubtitleForRecentCall:(id)a3;
- (id)localizedSubtitleForRecentEmergencyCall:(id)a3;
- (id)metadataItemsForRecentCall:(id)a3;
- (id)subtitleForRecentEmergencyCall:(id)a3;
- (id)unknownLabel;
- (id)updatedTitleForTempHandles:(id)a3 countOfExcludedHandles:(int64_t)a4;
- (unint64_t)unreadCallCount;
- (void)addAcceptedIntroductionsNotifier;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)deleteAllRecentCalls;
- (void)deleteRecentCalls:(id)a3;
- (void)fetchBlockedStatusForRecentCalls:(id)a3;
- (void)fetchContactsForHandles:(id)a3;
- (void)fetchContactsForRecentCalls:(id)a3;
- (void)fetchMetadataForRecentCalls:(id)a3;
- (void)handleCNContactStoreDidChangeNotification:(id)a3;
- (void)handleIDSServiceAvailabilityDidChangeNotification:(id)a3;
- (void)handleNSCurrentLocaleDidChangeNotification:(id)a3;
- (void)handleTUCallHistoryControllerRecentCallsDidChangeNotification:(id)a3;
- (void)handleTUCallHistoryControllerUnreadCallCountDidChangeNotification:(id)a3;
- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)a3;
- (void)handleUIApplicationDidBecomeActiveNotification:(id)a3;
- (void)handleUIApplicationSignificantTimeChangeNotification:(id)a3;
- (void)handleUpdatedContacts;
- (void)markRecentAudioCallsAsRead;
- (void)markRecentCallsAsRead;
- (void)markRecentVideoCallsAsRead;
- (void)notifyDelegatesRecentsController:(id)a3 didChangeCalls:(id)a4;
- (void)notifyDelegatesRecentsController:(id)a3 didChangeUnreadCallCount:(unint64_t)a4;
- (void)notifyDelegatesRecentsController:(id)a3 didUpdateCalls:(id)a4;
- (void)notifyDelegatesRecentsControllerDidChangeMessages:(id)a3;
- (void)performDialRequest:(id)a3;
- (void)performDialRequestForRecentCall:(id)a3;
- (void)performJoinRequestForRecentCall:(id)a3 overrideProvider:(id)a4;
- (void)performSynchronousBlock:(id)a3;
- (void)populateCachesForRecentCalls:(id)a3;
- (void)populateItemCacheForRecentCalls:(id)a3;
- (void)providersChangedForProviderManager:(id)a3;
- (void)queryCommTrustBlockedForCalls:(id)a3 completion:(id)a4;
- (void)recentCallsWillShow;
- (void)removeDelegate:(id)a3;
- (void)setContactFormatter:(id)a3;
- (void)setInitializationBlockQueued:(BOOL)a3;
- (void)setNumberFormatter:(id)a3;
- (void)setPreFetchingPredicate:(id)a3;
- (void)setRecentCalls:(id)a3;
- (void)setUnreadCallCount:(unint64_t)a3;
- (void)updateRecentCalls;
- (void)updateReminderUUID:(id)a3 forRecentCall:(id)a4;
@end

@implementation PHRecentsController

+ (id)indexPathsToInsertIntoCachedRecentCalls:(id)a3 fromBackingRecentCalls:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v8 = 0;
  if ([v6 count])
  {
    v9 = 0;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:v9];
      if (v8 >= [v5 count])
      {
        v11 = 0;
      }

      else
      {
        v11 = [v5 objectAtIndexedSubscript:v8];
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

    while (v9 < [v6 count]);
  }

  if (v8 == [v5 count])
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

- (PHRecentsController)initWithCallHistoryController:(id)a3 callProviderManager:(id)a4 contactStore:(id)a5 suggestedContactStore:(id)a6 metadataCache:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v43 = a6;
  v16 = a7;
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
    v42 = v13;
    v21 = [NSString stringWithFormat:@"com.apple.calls.queue.%@.%p", objc_opt_class(), v18];
    dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v22 = v41 = v15;
    v23 = dispatch_queue_create([v21 UTF8String], v22);
    serialQueue = v18->_serialQueue;
    v18->_serialQueue = v23;

    dispatch_queue_set_specific(v18->_serialQueue, off_1000C4950, v18, 0);
    objc_storeStrong(&v18->_completionDispatchQueue, &_dispatch_main_q);
    objc_storeStrong(&v18->_callHistoryController, a3);
    v25 = objc_alloc_init(NSCache);
    callProviderCache = v18->_callProviderCache;
    v18->_callProviderCache = v25;

    objc_storeStrong(&v18->_callProviderManager, a4);
    callProviderManager = v18->_callProviderManager;
    v28 = [(PHRecentsController *)v18 serialQueue];
    [(TUCallProviderManager *)callProviderManager addDelegate:v18 queue:v28];

    v29 = objc_alloc_init(NSMutableDictionary);
    contactCache = v18->_contactCache;
    v18->_contactCache = v29;

    objc_storeStrong(&v18->_contactStore, a5);
    objc_storeStrong(&v18->_suggestedContactStore, a6);
    objc_storeStrong(&v18->_metadataCache, a7);
    v31 = [[TUSubtitleProvider alloc] initWithMetadataCache:v16 callProviderManager:v14];
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

    v15 = v41;
    v13 = v42;
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

- (id)itemForRecentCall:(id)a3 presentationStyle:(int64_t)a4
{
  v6 = a3;
  v7 = -[PHRecentsController itemForRecentCall:numberOfOccurences:](self, "itemForRecentCall:numberOfOccurences:", v6, [v6 numberOfOccurrences]);
  v8 = [v6 serviceProvider];
  if ([v8 isEqualToString:kCHServiceProviderTelephony])
  {
    v9 = [v6 remoteParticipantHandles];
    v10 = [v9 count];
    v11 = v10 != 1;

    if (!a4)
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

    if (!a4)
    {
      goto LABEL_10;
    }

    v11 = 1;
  }

  v12 = [v6 imageURL];
  if (v12)
  {

    goto LABEL_10;
  }

  if (v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  v13 = [v6 remoteParticipantHandles];
  v14 = [v13 anyObject];

  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = [v6 name];
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = v15;
  v17 = [v6 name];
  v18 = [v17 length];

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
  v24 = v14;
  [(PHRecentsController *)self performSynchronousBlock:v23];
  v19 = v27[5];
  if (!v19)
  {
    v20 = [v7 mutableCopy];
    v21 = [v6 name];
    [v20 setLocalizedSubtitle:v21];

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

- (id)itemForRecentCall:(id)a3 numberOfOccurences:(unint64_t)a4
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
  v8 = self;
  v4 = a3;
  v9 = v4;
  [(PHRecentsController *)v8 performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)coalesceRecentCall:(id)a3 withRecentCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100011BFC;
  v21 = sub_100011C0C;
  v22 = 0;
  v8 = [(PHRecentsController *)self serialQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000122AC;
  v13[3] = &unk_1000B1E88;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (void)deleteAllRecentCalls
{
  v3 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012404;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)deleteRecentCalls:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000124FC;
  v7[3] = &unk_1000B1DE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)markRecentCallsAsRead
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Mark recent calls as read", buf, 2u);
  }

  v4 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012620;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)markRecentAudioCallsAsRead
{
  v3 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000126EC;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)markRecentVideoCallsAsRead
{
  v3 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000127B8;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)updateReminderUUID:(id)a3 forRecentCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating reminderUUID: %@, for recent call: %@", buf, 0x16u);
  }

  v9 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001295C;
  block[3] = &unk_1000B1EB0;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (id)contactForRecentCall:(id)a3 keyDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100011BFC;
  v25 = sub_100011C0C;
  v26 = 0;
  v8 = [v6 validRemoteParticipantHandles];
  v9 = [v8 count];

  if (v9 == 1)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100012B84;
    v17[3] = &unk_1000B1ED8;
    v17[4] = self;
    v18 = v6;
    v19 = v7;
    v20 = &v21;
    [(PHRecentsController *)self performSynchronousBlock:v17];
  }

  v10 = v22[5];
  if (!v10)
  {
    v11 = [(PHRecentsController *)self metadataCache];
    v12 = [CNMutableContact contactForRecentCall:v6 metadataCache:v11];
    v13 = [v12 copy];
    v14 = v22[5];
    v22[5] = v13;

    v10 = v22[5];
  }

  v15 = v10;
  _Block_object_dispose(&v21, 8);

  return v15;
}

- (id)contactByHandleForRecentCall:(id)a3 keyDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v16 = self;
  v8 = v6;
  v17 = v8;
  v9 = v7;
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

- (id)dialRequestForRecentCall:(id)a3
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
  v4 = a3;
  v9 = self;
  v10 = &v11;
  v8 = v4;
  [(PHRecentsController *)self performSynchronousBlock:v7];
  v5 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v5;
}

- (void)performDialRequest:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self presentScreenTimeShield];
  if (v5 && (v6 = v5, +[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), [v7 callFilterController], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "shouldRestrictDialRequest:performSynchronously:", v4, 1), v8, v7, v6, v9))
  {
    v10 = [(PHRecentsController *)self presentScreenTimeShield];
    (v10)[2](v10, v4);
  }

  else
  {
    v11 = +[TUCallCenter sharedInstance];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100013424;
    v12[3] = &unk_1000B1F50;
    v13 = v4;
    [v11 launchAppForDialRequest:v13 completion:v12];
  }
}

- (void)performDialRequestForRecentCall:(id)a3
{
  v4 = [(PHRecentsController *)self dialRequestForRecentCall:a3];
  if (v4)
  {
    [(PHRecentsController *)self performDialRequest:v4];
  }

  _objc_release_x1();
}

- (void)performJoinRequestForRecentCall:(id)a3 overrideProvider:(id)a4
{
  v5 = a3;
  v33 = a4;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PHRecentsController -performJoinRequestForRecentCall", buf, 2u);
  }

  v7 = [v5 validRemoteParticipantHandles];
  v8 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v7 count]);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = v5;
  v9 = [v5 validRemoteParticipantHandles];
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v36 + 1) + 8 * i) tuHandle];
        if (v14)
        {
          v15 = [TUConversationMember alloc];
          v16 = [NSSet setWithObject:v14];
          v17 = [v15 initWithHandles:v16];

          [v8 addObject:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
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
    v20 = v33;
    if (v33)
    {
      [v18 setProvider:v33];
    }

    v21 = [(PHRecentsController *)self callProviderManager];
    v22 = [v21 faceTimeProvider];
    v23 = [v34 outgoingLocalParticipantUUID];
    v24 = [v22 senderIdentityForAccountUUID:v23];

    if (v24)
    {
      v25 = [v24 handle];
      [v18 setCallerID:v25];
    }

    v26 = +[TUCallProviderManager invitationPreferencesForRecentCall];
    [v18 setInvitationPreferences:v26];

    v27 = [(PHRecentsController *)self presentScreenTimeShield];
    if (v27 && (v28 = v27, +[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v29 = objc_claimAutoreleasedReturnValue(), [v29 callFilterController], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "shouldRestrictJoinConversationRequest:performSynchronously:", v18, 1), v30, v20 = v33, v19 = v34, v29, v28, v31))
    {
      v32 = [(PHRecentsController *)self presentScreenTimeShield];
      (v32)[2](v32, v18);
    }

    else
    {
      v32 = +[TUCallCenter sharedInstance];
      [v32 launchAppForJoinRequest:v18];
    }
  }

  else
  {
    v18 = PHDefaultLog();
    v20 = v33;
    v19 = v34;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v34;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Could not create join request for recent call: %@", buf, 0xCu);
    }
  }
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v9 = a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v7 = [(PHRecentsController *)self delegateToQueue];
  if (v9)
  {
    v8 = v9;
  }

  else
  {
    v8 = &_dispatch_main_q;
  }

  [v7 setObject:v8 forKey:v6];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = [(PHRecentsController *)self delegateToQueue];
  [v5 removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)notifyDelegatesRecentsController:(id)a3 didUpdateCalls:(id)a4
{
  v6 = a3;
  v18 = a4;
  v7 = [(PHRecentsController *)self featureFlags];
  v8 = [v7 phoneRecentsAvatarsEnabled];

  if (v8)
  {
    os_unfair_lock_assert_owner(&self->_accessorLock);
    v17 = self;
    v9 = [(PHRecentsController *)self delegateToQueue];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v9 objectForKey:v14];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100013CA8;
          block[3] = &unk_1000B1EB0;
          block[4] = v14;
          v22 = v6;
          v23 = v18;
          dispatch_async(v15, block);

          v16 = &v22;
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }

          v15 = [v9 objectForKey:v14];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_100013CB8;
          v19[3] = &unk_1000B1EB0;
          v19[4] = v14;
          v20[0] = v6;
          v20[1] = v17;
          dispatch_async(v15, v19);
          v16 = v20;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v11)
      {
LABEL_14:

        break;
      }
    }
  }
}

- (void)notifyDelegatesRecentsController:(id)a3 didChangeCalls:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  v8 = [(PHRecentsController *)self delegateToQueue];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v14 = [v8 objectForKey:v13];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100013EA4;
          block[3] = &unk_1000B1EB0;
          block[4] = v13;
          v16 = v6;
          v17 = v7;
          dispatch_async(v14, block);
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)notifyDelegatesRecentsController:(id)a3 didChangeUnreadCallCount:(unint64_t)a4
{
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  v7 = [(PHRecentsController *)self delegateToQueue];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v13 = [v7 objectForKey:v12];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10001406C;
          block[3] = &unk_1000B1F78;
          block[4] = v12;
          v15 = v6;
          v16 = a4;
          dispatch_async(v13, block);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)notifyDelegatesRecentsControllerDidChangeMessages:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_accessorLock);
  v5 = [(PHRecentsController *)self delegateToQueue];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v5 objectForKey:v10];
          v12[0] = _NSConcreteStackBlock;
          v12[1] = 3221225472;
          v12[2] = sub_100014230;
          v12[3] = &unk_1000B1DE8;
          v12[4] = v10;
          v13 = v4;
          dispatch_async(v11, v12);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (NSCache)callProviderCache
{
  v3 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  callProviderCache = self->_callProviderCache;

  return callProviderCache;
}

- (NSDictionary)blockedStatusCache
{
  v3 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  blockedStatusCache = self->_blockedStatusCache;

  return blockedStatusCache;
}

- (NSMutableDictionary)contactCache
{
  v3 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  contactCache = self->_contactCache;

  return contactCache;
}

- (CNContactFormatter)contactFormatter
{
  v3 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  contactFormatter = self->_contactFormatter;

  return contactFormatter;
}

- (void)setContactFormatter:(id)a3
{
  v8 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  contactFormatter = self->_contactFormatter;
  p_contactFormatter = &self->_contactFormatter;
  if (contactFormatter != v8)
  {
    objc_storeStrong(p_contactFormatter, a3);
  }
}

- (BOOL)isInitializationBlockQueued
{
  os_unfair_lock_lock(&self->_accessorLock);
  initializationBlockQueued = self->_initializationBlockQueued;
  os_unfair_lock_unlock(&self->_accessorLock);
  return initializationBlockQueued;
}

- (void)setInitializationBlockQueued:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_initializationBlockQueued != v3)
  {
    self->_initializationBlockQueued = v3;
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (NSMutableDictionary)itemCache
{
  v3 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  itemCache = self->_itemCache;

  return itemCache;
}

- (NSNumberFormatter)numberFormatter
{
  v3 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  numberFormatter = self->_numberFormatter;

  return numberFormatter;
}

- (void)setNumberFormatter:(id)a3
{
  v8 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  numberFormatter = self->_numberFormatter;
  p_numberFormatter = &self->_numberFormatter;
  if (numberFormatter != v8)
  {
    objc_storeStrong(p_numberFormatter, a3);
  }
}

- (void)setRecentCalls:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  recentCalls = self->_recentCalls;
  if (recentCalls != v7 && ![(NSArray *)recentCalls isEqualToArray:v7])
  {
    v5 = [(NSArray *)v7 copy];
    v6 = self->_recentCalls;
    self->_recentCalls = v5;

    [(PHRecentsController *)self notifyDelegatesRecentsController:self didChangeCalls:self->_recentCalls];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setUnreadCallCount:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_unreadCallCount != a3)
  {
    self->_unreadCallCount = a3;
    [(PHRecentsController *)self notifyDelegatesRecentsController:self didChangeUnreadCallCount:a3];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)setPreFetchingPredicate:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_preFetchingPredicate != v6)
  {
    objc_storeStrong(&self->_preFetchingPredicate, a3);
    v5 = [(PHRecentsController *)self callHistoryController];
    [v5 setPreFetchingPredicate:v6];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (id)contactForHandle:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  [(PHRecentsController *)self contactHandlesForHandle:v4];
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
        v12 = [(PHRecentsController *)self contactCache];
        v13 = [v12 objectForKeyedSubscript:v11];
        v14 = [v13 value];

        if (v14)
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
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Handle not found in cache: %@", buf, 0xCu);
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (id)contactsByHandleForRecentCall:(id)a3 keyDescriptors:(id)a4
{
  v6 = a3;
  v54 = a4;
  v7 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v7);

  v53 = objc_alloc_init(NSMutableOrderedSet);
  v48 = objc_alloc_init(NSMutableDictionary);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v44 = v6;
  obj = [v6 validRemoteParticipantHandles];
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
              v16 = [(PHRecentsController *)self contactCache];
              v17 = [v16 objectForKeyedSubscript:v15];

              if (v17 && (([v17 value], (v18 = objc_claimAutoreleasedReturnValue()) == 0) || (v19 = v18, objc_msgSend(v17, "value"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "areKeysAvailable:", v54), v20, v8 = v53, v19, v21)))
              {
                v22 = [v17 value];
                if (v22)
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

                  [v24 addObject:v22];
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
    v25 = [(PHRecentsController *)self contactStore];
    v26 = [v8 array];
    v27 = [v25 contactsForHandles:v26 keyDescriptors:v54];

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
      v50 = [v48 allKeys];
      v29 = [v50 countByEnumeratingWithState:&v60 objects:v73 count:16];
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
              objc_enumerationMutation(v50);
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

            v41 = [v33 array];
            [v40 addObjectsFromArray:v41];
          }

          v30 = [v50 countByEnumeratingWithState:&v60 objects:v73 count:16];
        }

        while (v30);
      }
    }

    v8 = v53;
  }

  v42 = [v55 copy];

  return v42;
}

- (id)contactHandlesForHandle:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [v3 value];
  if ([v5 length])
  {
    [v4 addObject:v5];
    v6 = [v3 normalizedValue];
    if ([v6 length])
    {
      v7 = [v3 value];
      v8 = [v6 isEqualToString:v7];

      if ((v8 & 1) == 0)
      {
        [v4 addObject:v6];
      }
    }
  }

  v9 = [v4 copy];

  return v9;
}

- (id)contactHandlesForRecentCalls:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
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
        v11 = [v10 validRemoteParticipantHandles];
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = [(PHRecentsController *)self contactHandlesForHandle:*(*(&v20 + 1) + 8 * j)];
              [v5 addObjectsFromArray:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v17 = [v5 array];

  return v17;
}

- (id)formattedNameForHandle:(id)a3 countryCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 type];
  v8 = PHDefaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 == 2)
  {
    if (v9)
    {
      v10 = [v5 value];
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "     - we'll format the destinationID '%@' with the country code '%@'", &v16, 0x16u);
    }

    v11 = [v5 value];
    v12 = TUFormattedPhoneNumber();

    if (!v12)
    {
LABEL_9:
      v14 = +[NSBundle mainBundle];
      v12 = [v14 localizedStringForKey:@"UNKNOWN_CALLER" value:&stru_1000B4840 table:@"PHRecents"];
    }
  }

  else
  {
    if (v9)
    {
      v13 = [v5 value];
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "     - handle can't/shouldn't be formatted as a phone number, so using the unmodified destination ID '%@'", &v16, 0xCu);
    }

    v12 = [v5 value];
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  return v12;
}

- (id)fetchCallProviderForRecentCall:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 serviceProvider];
  v7 = [(PHRecentsController *)self callProviderManager];
  if (v6)
  {
    v8 = [(PHRecentsController *)self callProviderCache];
    v9 = [v8 objectForKey:v6];

    if (v9)
    {
      goto LABEL_7;
    }

    v10 = [v7 providerForRecentCall:v4];
    if (v10)
    {
      v9 = v10;
      v11 = [(PHRecentsController *)self callProviderCache];
      [v11 setObject:v9 forKey:v6];

      goto LABEL_7;
    }

    v14 = PHDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Could not retrieve a call provider for the specified recent call: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = [NSString stringWithFormat:@"Service provider is nil for the specified recent call: %@", v4];
    NSLog(@"** TUAssertion failure: %@", v12);

    _TUAssertShouldCrashApplication();
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (void)fetchContactsForRecentCalls:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PHRecentsController *)self contactHandlesForRecentCalls:v4];
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = [v4 count];
    v10 = 2048;
    v11 = [v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching contacts for %lu calls using %lu handles", &v8, 0x16u);
  }

  [(PHRecentsController *)self fetchContactsForHandles:v6];
}

- (id)fetchContactForContactCardDisplay:(id)a3
{
  v4 = a3;
  if ([v4 canExceedUnifyingThreshold])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100011BFC;
    v16 = sub_100011C0C;
    v17 = 0;
    v5 = [(PHRecentsController *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015730;
    block[3] = &unk_1000B1E60;
    v10 = v4;
    v11 = &v12;
    block[4] = self;
    v6 = v4;
    dispatch_sync(v5, block);

    v7 = v13[5];
    if (!v7)
    {
      v7 = v6;
    }

    v4 = v7;

    _Block_object_dispose(&v12, 8);
  }

  return v4;
}

- (id)fetchUnifiedContactForID:(id)a3 withDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(PHRecentsController *)self contactStore];
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138740227;
    v25 = v6;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fetching unified contact for handle %{sensitive}@ using contact store %@", buf, 0x16u);
  }

  v11 = v7;
  if (!v7)
  {
    if (qword_1000C60E8 != -1)
    {
      sub_10007A954();
    }

    v11 = qword_1000C60E0;
  }

  v23 = 0;
  v12 = [v9 unifiedContactWithIdentifier:v6 keysToFetch:v11 error:&v23];
  v13 = v23;
  if (!v7)
  {
  }

  v14 = [TUOptionalObject alloc];
  if (v13)
  {
    v15 = [v14 initWithValue:0];
    v16 = [(PHRecentsController *)self contactCache];
    [v16 setObject:v15 forKeyedSubscript:v6];

    v17 = PHDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10007A97C(v6, v17);
    }

    v18 = 0;
  }

  else
  {
    v19 = [v14 initWithValue:v12];
    v20 = [(PHRecentsController *)self contactCache];
    [v20 setObject:v19 forKeyedSubscript:v6];

    v21 = PHDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740227;
      v25 = v12;
      v26 = 2117;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found unified contact %{sensitive}@ for contact handle %{sensitive}@", buf, 0x16u);
    }

    v18 = v12;
  }

  return v18;
}

- (void)fetchContactsForHandles:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v4;
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
        v13 = [(PHRecentsController *)self contactCache];
        v14 = [v13 objectForKeyedSubscript:v12];

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
    v15 = [(PHRecentsController *)self contactStore];
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v6 count];
      *buf = 134218242;
      v44 = v17;
      v45 = 2112;
      v46 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Fetching contacts for %lu handles using contact store %@", buf, 0x16u);
    }

    v18 = [v6 allObjects];
    v32 = v7;
    if (qword_1000C60E8 != -1)
    {
      sub_10007A954();
    }

    v31 = v15;
    v19 = [v15 contactsForHandles:v18 keyDescriptors:qword_1000C60E0 alwaysUnifyLabeledValues:0];

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
          v26 = [v25 firstObject];
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
              v48 = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Found %lu contacts for contact handle %{sensitive}@; caching the first contact %{sensitive}@", buf, 0x20u);
            }
          }

          v29 = [[TUOptionalObject alloc] initWithValue:v26];
          v30 = [(PHRecentsController *)self contactCache];
          [v30 setObject:v29 forKeyedSubscript:v24];
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
  v2 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v2);

  v3 = objc_alloc_init(CNContactFormatter);
  [v3 setStyle:0];

  return v3;
}

- (id)fetchImageForRecentCall:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 ttyType];
  if (v6 == 2)
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

  if (v6 == 1)
  {
    v7 = +[UIImage recentsTTYDirectGlyphImage];
    goto LABEL_5;
  }

LABEL_6:
  v9 = [v4 callStatus];
  if (v9 != kCHCallStatusConnectedOutgoing)
  {
    v10 = [v4 callStatus];
    if (v10 != kCHCallStatusCancelled)
    {
      goto LABEL_11;
    }
  }

  v11 = [v4 mediaType];
  if (v11 == 2)
  {
    v12 = +[UIImage recentsOutgoingVideoCallGlyphImage];
    goto LABEL_13;
  }

  if (v11 != 1)
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

- (id)fetchMutableItemForRecentCall:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = -[PHRecentsController fetchMutableItemForRecentCall:numberOfOccurences:](self, "fetchMutableItemForRecentCall:numberOfOccurences:", v4, [v4 numberOfOccurrences]);

  return v6;
}

- (id)updatedTitleForTempHandles:(id)a3 countOfExcludedHandles:(int64_t)a4
{
  v6 = a3;
  if (![v6 length])
  {
    goto LABEL_6;
  }

  if (a4 == 1)
  {
    v7 = TUBundle();
    v8 = [v7 localizedStringForKey:@"%@_AND_ONE_OTHER" value:&stru_1000B4840 table:@"TelephonyUtilities"];
    v9 = [NSString stringWithFormat:v8, v6];

    goto LABEL_7;
  }

  if (a4 >= 2)
  {
    v10 = TUBundle();
    v11 = [v10 localizedStringForKey:@"%@_AND_%@_OTHERS" value:&stru_1000B4840 table:@"TelephonyUtilities"];
    v12 = [(PHRecentsController *)self numberFormatter];
    v13 = [NSNumber numberWithInteger:a4];
    v14 = [v12 stringFromNumber:v13];
    v9 = [NSString stringWithFormat:v11, v6, v14];
  }

  else
  {
LABEL_6:
    v9 = v6;
  }

LABEL_7:

  return v9;
}

- (id)fetchMutableItemForRecentCall:(id)a3 numberOfOccurences:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_alloc_init(PKMutableRecentsItem);
  v9 = [v6 validRemoteParticipantHandles];
  v10 = [v9 count];
  v11 = [v6 countOfExcludedHandles];
  v12 = v11;
  v158 = v9;
  if (v10 || v11 < 1)
  {
    if (v10 > 1)
    {
      v150 = v11;
      v154 = v8;
      v156 = a4;
      v160 = v6;
      v23 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      v24 = v9;
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
              v31 = [(PHRecentsController *)self contactFormatter];
              v32 = [v31 stringFromContact:v30];

              if (v32)
              {
                [v23 addObject:v32];
              }

              else
              {
                v34 = [v160 isoCountryCode];
                v35 = [(PHRecentsController *)self formattedNameForHandle:v29 countryCode:v34];
                [v23 addObject:v35];
              }
            }

            else
            {
              v32 = [v160 isoCountryCode];
              v33 = [(PHRecentsController *)self formattedNameForHandle:v29 countryCode:v32];
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
            v110 = [(PHRecentsController *)self numberFormatter];
            v111 = [NSNumber numberWithInteger:v150];
            v112 = [v110 stringFromNumber:v111];
            v113 = [NSString stringWithFormat:v143, v142, v108, v109, v112];

            [v146 appendString:v113];
            v54 = v113;
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

          v6 = v160;
          v8 = v154;

          v114 = TUBundle();
          v115 = [v114 localizedStringForKey:@"%@_%@_AND_%@" value:&stru_1000B4840 table:@"TelephonyUtilities"];
          v116 = [v23 objectAtIndexedSubscript:0];
          v117 = [v23 objectAtIndexedSubscript:1];
          v118 = [v23 objectAtIndexedSubscript:2];
          v16 = [NSString stringWithFormat:v115, v116, v117, v118];

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
            v52 = [NSString stringWithFormat:v49, v50, v51];
            v6 = v160;
            v8 = v154;
          }

          else
          {
            v6 = v160;
            v8 = v154;
            if (v150)
            {
              v49 = [v48 localizedStringForKey:@"%@_%@_AND_%@_OTHERS" value:&stru_1000B4840 table:@"TelephonyUtilities"];
              v50 = [v23 objectAtIndexedSubscript:0];
              v51 = [v23 objectAtIndexedSubscript:1];
              v141 = [(PHRecentsController *)self numberFormatter];
              v102 = [NSNumber numberWithInteger:v150];
              [v141 stringFromNumber:v102];
              v103 = v148 = v36;
              v52 = [NSString stringWithFormat:v49, v50, v51, v103];

              v36 = v148;
            }

            else
            {
              v49 = [v48 localizedStringForKey:@"%@_AND_%@" value:&stru_1000B4840 table:@"TelephonyUtilities"];
              v50 = [v23 objectAtIndexedSubscript:0];
              v51 = [v23 objectAtIndexedSubscript:1];
              v52 = [NSString stringWithFormat:v49, v50, v51];
            }
          }

          [v36 appendString:v52];
          v104 = TUBundle();
          v105 = [v104 localizedStringForKey:@"%@_AND_%@" value:&stru_1000B4840 table:@"TelephonyUtilities"];
          v106 = [v23 objectAtIndexedSubscript:0];
          v107 = [v23 objectAtIndexedSubscript:1];
          v16 = [NSString stringWithFormat:v105, v106, v107];

          break;
        case 1:
          v6 = v160;
          v8 = v154;
          if (v150 == 1)
          {
            v98 = v36;
            v38 = TUBundle();
            v99 = [v38 localizedStringForKey:@"%@_AND_ONE_OTHER" value:&stru_1000B4840 table:@"TelephonyUtilities"];
            v100 = [v23 objectAtIndexedSubscript:0];
            v101 = [NSString stringWithFormat:v99, v100];
            [v98 appendString:v101];

            v36 = v98;
          }

          else
          {
            if (v150)
            {
              v145 = TUBundle();
              v119 = [v145 localizedStringForKey:@"%@_AND_%@_OTHERS" value:&stru_1000B4840 table:@"TelephonyUtilities"];
              v120 = [v23 objectAtIndexedSubscript:0];
              v121 = [(PHRecentsController *)self numberFormatter];
              [NSNumber numberWithInteger:v150];
              v122 = v149 = v36;
              v123 = [v121 stringFromNumber:v122];
              v124 = v119;
              v38 = [NSString stringWithFormat:v119, v120, v123];

              v36 = v149;
            }

            else
            {
              v38 = [v23 objectAtIndexedSubscript:0];
            }

            [v36 appendString:v38];
          }

          v16 = [v23 objectAtIndexedSubscript:0];
          break;
        default:
          if (v37 < 4)
          {
            v16 = 0;
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
            v65 = [(PHRecentsController *)self numberFormatter];
            v66 = [NSNumber numberWithUnsignedInteger:v60];
            v67 = [v65 stringFromNumber:v66];
            v68 = v61;
            v69 = [NSString stringWithFormat:v61, v62, v63, v64, v67];
            [v147 appendString:v69];

            v152 = TUBundle();
            v70 = [v152 localizedStringForKey:@"%@_%@_%@_AND_%@_OTHER" value:&stru_1000B4840 table:@"TelephonyUtilities"];
            v71 = [v23 objectAtIndexedSubscript:0];
            v72 = [v23 objectAtIndexedSubscript:1];
            v73 = [v23 objectAtIndexedSubscript:2];
            v74 = [(PHRecentsController *)self numberFormatter];
            v75 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v23 count] - 3);
            v76 = [v74 stringFromNumber:v75];
            v16 = [NSString stringWithFormat:v70, v71, v72, v73, v76];

            v36 = v147;
          }

          v6 = v160;
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

      a4 = v156;
    }

    else
    {
      v14 = [v9 anyObject];
      v155 = v14;
      if (v14)
      {
        [(PHRecentsController *)self contactHandlesForHandle:v14];
        v165 = 0u;
        v166 = 0u;
        v167 = 0u;
        v15 = v168 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v165 objects:v170 count:16];
        if (v16)
        {
          v153 = v8;
          v159 = v6;
          v17 = *v166;
          while (2)
          {
            for (j = 0; j != v16; j = j + 1)
            {
              if (*v166 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v165 + 1) + 8 * j);
              v20 = [(PHRecentsController *)self contactCache];
              v21 = [v20 objectForKeyedSubscript:v19];
              v22 = [v21 value];

              if (v22)
              {
                v45 = [(PHRecentsController *)self contactFormatter];
                v46 = [v45 stringFromContact:v22];
                v44 = [(PHRecentsController *)self updatedTitleForTempHandles:v46 countOfExcludedHandles:v12];

                v47 = [(PHRecentsController *)self contactFormatter];
                v16 = [v47 stringFromContact:v22];

                goto LABEL_37;
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v165 objects:v170 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }

          v44 = 0;
LABEL_37:
          v6 = v159;
          v8 = v153;
        }

        else
        {
          v44 = 0;
        }
      }

      else
      {
        v16 = 0;
        v44 = 0;
      }

      v77 = [(PHRecentsController *)self fetchCallProviderForRecentCall:v6];
      if (![v44 length] && (objc_msgSend(v77, "isTelephonyProvider") & 1) == 0)
      {
        v78 = [v6 name];
        v79 = [(PHRecentsController *)self updatedTitleForTempHandles:v78 countOfExcludedHandles:v12];

        v80 = [v6 name];

        v16 = v80;
        v44 = v79;
      }

      if (![v44 length])
      {
        v81 = [v6 callerIdForDisplay];
        v82 = [(PHRecentsController *)self updatedTitleForTempHandles:v81 countOfExcludedHandles:v12];

        v16 = v81;
        v44 = v82;
      }

      if (![v44 length])
      {
        v83 = [v6 callerIdIsBlocked];
        v84 = +[NSBundle mainBundle];
        v85 = v84;
        if (v83)
        {
          v86 = @"NO_CALLER_ID";
        }

        else
        {
          v86 = @"UNKNOWN_CALLER";
        }

        v87 = [v84 localizedStringForKey:v86 value:&stru_1000B4840 table:@"PHRecents"];
        v88 = [(PHRecentsController *)self updatedTitleForTempHandles:v87 countOfExcludedHandles:v12];

        if ([v6 callerIdIsBlocked])
        {
          v89 = @"NO_CALLER_ID";
        }

        else
        {
          v89 = @"UNKNOWN_CALLER";
        }

        v90 = +[NSBundle mainBundle];
        v91 = [v90 localizedStringForKey:v89 value:&stru_1000B4840 table:@"PHRecents"];

        v16 = v91;
        v44 = v88;
      }
    }
  }

  else
  {
    if (v11 == 1)
    {
      v13 = TUBundle();
      v44 = [v13 localizedStringForKey:@"ONE_OTHER" value:&stru_1000B4840 table:@"TelephonyUtilities"];
    }

    else
    {
      v39 = TUBundle();
      [v39 localizedStringForKey:@"%@_OTHERS" value:&stru_1000B4840 table:@"TelephonyUtilities"];
      v40 = v157 = a4;
      v41 = [(PHRecentsController *)self numberFormatter];
      v42 = [NSNumber numberWithInteger:v12];
      v43 = [v41 stringFromNumber:v42];
      v44 = [NSString stringWithFormat:v40, v43];

      a4 = v157;
    }

    v16 = 0;
  }

  v125 = [v6 date];
  [v8 setDate:v125];

  v126 = [v8 image];

  if (!v126)
  {
    v127 = [(PHRecentsController *)self fetchImageForRecentCall:v6];
    [v8 setImage:v127];
  }

  if (a4 <= 1)
  {
    [v8 setLocalizedCount:0];
  }

  else
  {
    v128 = [(PHRecentsController *)self numberFormatter];
    v129 = [NSNumber numberWithUnsignedInteger:a4];
    v130 = [v128 stringFromNumber:v129];
    v131 = [NSString stringWithFormat:@"(%@)", v130];
    [v8 setLocalizedCount:v131];
  }

  [v8 setLocalizedTitle:v44];
  [v8 setLocalizedValidHandlesTitle:v16];
  [v8 setVerified:{objc_msgSend(v6, "verificationStatus") == 1}];
  if (PHDeviceSupportsDualSim())
  {
    v132 = [(PHRecentsController *)self fetchCallProviderForRecentCall:v6];
    if ([v6 ph_supportsLocalParticipantBadge])
    {
      v133 = [v132 prioritizedSenderIdentities];
      v134 = [v133 count];

      if (v134 >= 2)
      {
        v135 = [(PHRecentsController *)self callProviderManager];
        v136 = [v135 telephonyProvider];
        v137 = [v6 localParticipantUUID];
        v138 = [v136 senderIdentityForAccountUUID:v137];

        v139 = [v138 localizedShortName];
        [v8 setLocalizedSenderIdentityTitle:v139];
      }
    }
  }

  return v8;
}

- (void)fetchMetadataForRecentCalls:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PHRecentsController *)self metadataCache];

  if (v6)
  {
    v7 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCalls:v4];
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v16 = [v4 count];
      v17 = 2048;
      v18 = [v7 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching metadata for %lu recent calls using %lu handles", buf, 0x16u);
    }

    v9 = [(PHRecentsController *)self featureFlags];
    v10 = [v9 phoneRecentsAvatarsEnabled];

    v11 = [(PHRecentsController *)self metadataCache];
    v12 = v11;
    if (v10)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10001764C;
      v13[3] = &unk_1000B1DE8;
      v13[4] = self;
      v14 = v4;
      [v12 updateCacheWithDestinationIDs:v7 completion:v13];
    }

    else
    {
      [v11 updateCacheWithDestinationIDs:v7];
    }
  }
}

- (void)fetchBlockedStatusForRecentCalls:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 count])
  {
    v6 = [(PHRecentsController *)self blockedStatusCache];

    if (v6)
    {
      v7 = [(PHRecentsController *)self featureFlags];
      v8 = [v7 betterBlockingEnabled];

      if (v8)
      {
        v9 = PHDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v15 = [v4 count];
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetching blocked status for %lu recent calls", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100017AB0;
        v10[3] = &unk_1000B1FC8;
        objc_copyWeak(&v13, buf);
        v11 = v4;
        v12 = self;
        [(PHRecentsController *)self queryCommTrustBlockedForCalls:v11 completion:v10];

        objc_destroyWeak(&v13);
        objc_destroyWeak(buf);
      }
    }
  }
}

- (id)fetchNumberFormatter
{
  v2 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v2);

  v3 = objc_alloc_init(NSNumberFormatter);

  return v3;
}

- (id)fetchRecentCalls
{
  v3 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(PHRecentsController *)self recentCalls];
  v5 = [(PHRecentsController *)self callHistoryController];
  v6 = [v5 recentCalls];

  if ([v4 isEqualToArray:v6])
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Recent calls array has not changed. Ignoring", v12, 2u);
    }

    v8 = v4;
  }

  else
  {
    v9 = [(PHRecentsController *)self itemCache];
    [v9 removeAllObjects];

    [(PHRecentsController *)self populateCachesForRecentCalls:v6];
    v8 = v6;
  }

  v10 = v8;

  return v8;
}

- (void)populateCachesForRecentCalls:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 count];
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting contacts for %lu calls", &v11, 0xCu);
  }

  [(PHRecentsController *)self fetchContactsForRecentCalls:v4];
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Requesting metadata for %lu recent calls.", &v11, 0xCu);
  }

  [(PHRecentsController *)self fetchMetadataForRecentCalls:v4];
  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Requesting blocked status with %lu recent calls", &v11, 0xCu);
  }

  [(PHRecentsController *)self fetchBlockedStatusForRecentCalls:v4];
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Populating item cache with %lu recent calls", &v11, 0xCu);
  }

  [(PHRecentsController *)self populateItemCacheForRecentCalls:v4];
}

- (void)populateItemCacheForRecentCalls:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PHRecentsController *)self itemCache];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v4;
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
        v16 = [v12 uniqueId];
        [v6 setObject:v15 forKeyedSubscript:v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)updateRecentCalls
{
  v3 = [(PHRecentsController *)self fetchRecentCalls];
  [(PHRecentsController *)self setRecentCalls:v3];
}

- (void)recentCallsWillShow
{
  v2 = [(PHRecentsController *)self callHistoryController];
  [v2 boostQualityOfService];
}

- (id)metadataItemsForRecentCall:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCall:v4];
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
        v12 = [(PHRecentsController *)self metadataCache];
        v13 = [v12 metadataForDestinationID:v11];

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
  v3 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000185AC;
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
    v9 = 138412802;
    v10 = v6;
    v11 = 2048;
    v12 = self;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", &v9, 0x20u);
  }

  [(PHRecentsController *)self handleUpdatedContacts];
}

- (void)handleIDSServiceAvailabilityDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  v9 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018904;
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
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  v9 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018A74;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(v9, block);
}

- (void)handleTUCallHistoryControllerRecentCallsDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [(PHRecentsController *)self callHistoryController];
  v7 = [v5 isEqual:v6];

  v8 = PHDefaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [v4 name];
      *buf = 138412802;
      v15 = v10;
      v16 = 2048;
      v17 = self;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
    }

    v8 = [(PHRecentsController *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018D58;
    block[3] = &unk_1000B1B80;
    block[4] = self;
    dispatch_async(v8, block);
  }

  else if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring calls change notification from different callHistoryController", buf, 2u);
  }
}

- (void)handleTUCallHistoryControllerUnreadCallCountDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [(PHRecentsController *)self callHistoryController];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [v4 name];
      v14 = 138412802;
      v15 = v9;
      v16 = 2048;
      v17 = self;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", &v14, 0x20u);
    }

    v12 = [v4 object];
    v13 = v12;
    if (v12)
    {
      -[PHRecentsController setUnreadCallCount:](self, "setUnreadCallCount:", [v12 unreadCallCount]);
    }
  }
}

- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self featureFlags];
  v6 = [v5 phoneRecentsAvatarsEnabled];

  if ((v6 & 1) == 0)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [v4 name];
      *buf = 138412802;
      v14 = v8;
      v15 = 2048;
      v16 = self;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
    }

    v11 = [(PHRecentsController *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100019050;
    block[3] = &unk_1000B1B80;
    block[4] = self;
    dispatch_async(v11, block);
  }
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
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  v9 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001939C;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(v9, block);
}

- (void)handleUIApplicationDidBecomeActiveNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v4 name];
    *buf = 138412802;
    v12 = v6;
    v13 = 2048;
    v14 = self;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling <%@>", buf, 0x20u);
  }

  v9 = [(PHRecentsController *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000195A4;
  block[3] = &unk_1000B1B80;
  block[4] = self;
  dispatch_async(v9, block);
}

- (void)performSynchronousBlock:(id)a3
{
  if (dispatch_get_specific(off_1000C4950) == self)
  {
    v6 = *(a3 + 2);
    v7 = a3;
    v6();
  }

  else
  {
    v5 = a3;
    v7 = [(PHRecentsController *)self serialQueue];
    dispatch_sync(v7, v5);
  }
}

- (void)providersChangedForProviderManager:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ <%p> is handling providersChangedForProviderManager %@", &v10, 0x20u);
  }

  v8 = [(PHRecentsController *)self recentCalls];
  if ([v8 count])
  {
    v9 = [(PHRecentsController *)self itemCache];
    [v9 removeAllObjects];

    [(PHRecentsController *)self populateItemCacheForRecentCalls:v8];
    os_unfair_lock_lock(&self->_accessorLock);
    [(PHRecentsController *)self notifyDelegatesRecentsController:self didChangeCalls:v8];
    os_unfair_lock_unlock(&self->_accessorLock);
  }
}

- (id)subtitleForRecentEmergencyCall:(id)a3
{
  v4 = [a3 callOccurrences];
  v5 = [(PHRecentsController *)self localizedSubtitleForRecentEmergencyCall:v4];

  return v5;
}

- (id)localizedSubtitleForRecentEmergencyCall:(id)a3
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a3;
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

- (id)localizedSubtitleForRecentCall:(id)a3
{
  v4 = a3;
  v5 = [(PHRecentsController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 wasEmergencyCall])
  {
    v6 = [(PHRecentsController *)self subtitleForRecentEmergencyCall:v4];
    goto LABEL_30;
  }

  v7 = [v4 blockedByExtension];

  if (v7)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"%@_BLOCKED_BY" value:&stru_1000B4840 table:@"PHRecents"];
    v10 = [v4 localizedBlockedByExtensionName];
    v6 = [NSString stringWithFormat:v9, v10];

    goto LABEL_30;
  }

  v11 = [(PHRecentsController *)self fetchCallProviderForRecentCall:v4];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_26;
  }

  if ([v11 isFaceTimeProvider])
  {
    v13 = [v4 mediaType];
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    if (v13 == 2)
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
    v25 = [v4 mediaType];
    if (v25 == 1)
    {
      v26 = @"RECENTS_CALL_PROVIDER_NAME_%@_CALL_CATEGORY_AUDIO";
      goto LABEL_39;
    }

    if (v25 == 2)
    {
      v26 = @"RECENTS_CALL_PROVIDER_NAME_%@_CALL_CATEGORY_VIDEO";
LABEL_39:
      v33 = +[NSBundle mainBundle];
      v34 = [v33 localizedStringForKey:v26 value:&stru_1000B4840 table:@"PHRecents"];
      v35 = [v12 localizedName];
      v18 = [NSString stringWithFormat:v34, v35];

      goto LABEL_27;
    }

LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

  v17 = [v4 remoteParticipantHandles];
  v15 = [v17 anyObject];

  if (!v15)
  {
    v18 = 0;
    goto LABEL_50;
  }

  [(PHRecentsController *)self contactHandlesForHandle:v15];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v55 = 0u;
  v18 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (!v18)
  {
    goto LABEL_49;
  }

  v50 = v15;
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
      v22 = [(PHRecentsController *)self contactCache];
      v23 = [v22 objectForKeyedSubscript:v21];
      v24 = [v23 value];

      if (v24)
      {
        v15 = v50;
        v29 = [v50 type];
        if (v29 == 3)
        {
          v30 = [v24 labeledValueForEmailAddress:v21];
          v31 = [v30 label];
          v32 = &CNContactEmailAddressesKey;
        }

        else
        {
          if (v29 == 2)
          {
            v36 = [v4 isoCountryCode];
            v31 = [CNPhoneNumber phoneNumberWithDigits:v21 countryCode:v36];

            if (v31)
            {
              v30 = [v24 labeledValueForPhoneNumber:v31];
            }

            else
            {
              v30 = 0;
            }

            v37 = [v30 label];
            v18 = [CNLabeledValue localizedDisplayStringForLabel:v37 propertyName:CNContactPhoneNumbersKey];

            goto LABEL_47;
          }

          if (v29 != 1)
          {
            v18 = 0;
LABEL_48:

            goto LABEL_49;
          }

          v30 = [v24 labeledValueForSocialProfileWithUsername:v21];
          v31 = [v30 label];
          v32 = &CNContactSocialProfilesKey;
        }

        v18 = [CNLabeledValue localizedDisplayStringForLabel:v31 propertyName:*v32];
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

  v15 = v50;
LABEL_49:

LABEL_50:
  if (-[PHRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v18) && [v4 isJunk])
  {
    v38 = [v4 junkIdentificationCategory];
    if (v38)
    {
      v39 = [v4 junkIdentificationCategory];
    }

    else
    {
      v39 = @"MAYBE_JUNK";
    }

    v40 = +[NSBundle mainBundle];
    v41 = [v40 localizedStringForKey:v39 value:&stru_1000B4840 table:@"PHRecents"];

    v18 = v41;
  }

  if ([(PHRecentsController *)self isLocalizedSubtitleUnknown:v18])
  {
    v42 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCall:v4];
    v43 = [v42 firstObject];

    if (v43)
    {
      v44 = [(PHRecentsController *)self metadataCache];
      v45 = [v44 metadataForDestinationID:v43];

      if (v45)
      {
        if (-[PHRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v18) && ([v4 callerIdIsBlocked] & 1) == 0)
        {
          v46 = [v45 metadataForProvider:objc_opt_class()];

          v18 = v46;
        }

        if (-[PHRecentsController isLocalizedSubtitleUnknown:](self, "isLocalizedSubtitleUnknown:", v18) && ([v4 callerIdIsBlocked] & 1) == 0)
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
    v27 = [(PHRecentsController *)self unknownLabel];

    v18 = v27;
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

- (void)queryCommTrustBlockedForCalls:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_100055038(0, &qword_1000C5C20);
  v6 = sub_10007B528();
  _Block_copy(v5);
  v7 = self;
  sub_1000655F8(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end