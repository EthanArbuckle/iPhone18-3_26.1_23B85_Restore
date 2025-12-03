@interface MailStatusObserver
- (MailStatusObserver)initWithMailboxRepository:(id)repository delegate:(id)delegate;
- (MailStatusObserverDelegate)delegate;
- (void)_fetchInAppMessageWithCompletion:(id)completion;
- (void)_inAppMessageChanged:(id)changed;
- (void)_startBadgeCountObserversWithLabel:(id)label;
- (void)checkForiCloudQuotaUpsellOffer;
- (void)dealloc;
- (void)icqOfferDidChange:(id)change;
- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change;
- (void)startObservingForActivityStatusMailboxes:(id)mailboxes badgeCountStatusMailboxes:(id)statusMailboxes filterPredicate:(id)predicate label:(id)label;
- (void)stopObserving;
@end

@implementation MailStatusObserver

- (void)stopObserving
{
  objc_initWeak(&location, self);
  activityStatusUpdateScheduler = self->_activityStatusUpdateScheduler;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000FCF4;
  v4[3] = &unk_10064C838;
  objc_copyWeak(&v5, &location);
  [(EFScheduler *)activityStatusUpdateScheduler performBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)checkForiCloudQuotaUpsellOffer
{
  if (MUISolariumFeatureEnabled())
  {

    [(MailStatusObserver *)self _inAppMessageChanged:0];
  }

  else
  {

    [(MailStatusObserver *)self icqOfferDidChange:0];
  }
}

- (MailStatusObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MailStatusObserver)initWithMailboxRepository:(id)repository delegate:(id)delegate
{
  repositoryCopy = repository;
  delegateCopy = delegate;
  v41.receiver = self;
  v41.super_class = MailStatusObserver;
  v9 = [(MailStatusObserver *)&v41 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mailboxRepository, repository);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.mobilemail.statusobserver", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1001338E0;
    v38[3] = &unk_10064C660;
    v14 = delegateCopy;
    v39 = v14;
    v15 = v10;
    v40 = v15;
    v16 = [MFNetworkController addNetworkObserverBlock:v38 queue:v10->_queue];
    networkObserverID = v15->_networkObserverID;
    v15->_networkObserverID = v16;

    atomic_store(0, &v15->_currentStatusObserverID);
    v18 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.statusobserver.activityRegistryUpdate" qualityOfService:17];
    activityStatusUpdateScheduler = v15->_activityStatusUpdateScheduler;
    v15->_activityStatusUpdateScheduler = v18;

    v20 = [[MailStatusMailboxActivityObserver alloc] initWithDelegate:v14];
    mailboxActivityObserver = v15->_mailboxActivityObserver;
    v15->_mailboxActivityObserver = v20;

    v22 = +[UIApplication sharedApplication];
    daemonInterface = [v22 daemonInterface];
    activityRegistry = [daemonInterface activityRegistry];

    mailboxActivityObserver = [(MailStatusObserver *)v15 mailboxActivityObserver];
    [mailboxActivityObserver startWithRegistry:activityRegistry];

    if (MUISolariumFeatureEnabled())
    {
      v26 = +[NSNotificationCenter defaultCenter];
      objc_initWeak(&location, v15);
      v27 = +[NSOperationQueue mainQueue];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1001338EC;
      v35[3] = &unk_10064EDC8;
      objc_copyWeak(&v36, &location);
      v28 = [v26 addObserverForName:@"MailAppControllerDidStartObservingInAppMessagesNotification" object:0 queue:v27 usingBlock:v35];
      [(MailStatusObserver *)v15 setInAppMessagingToken:v28];

      v29 = v15->_activityStatusUpdateScheduler;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100133968;
      v32[3] = &unk_10064C660;
      v30 = v26;
      v33 = v30;
      v34 = v15;
      [(EFScheduler *)v29 performBlock:v32];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }
  }

  return v10;
}

- (void)dealloc
{
  sub_10000FD50(self);
  mailboxActivityObserver = [(MailStatusObserver *)self mailboxActivityObserver];
  [mailboxActivityObserver tearDown];

  v4 = +[NSNotificationCenter defaultCenter];
  inAppMessagingToken = [(MailStatusObserver *)self inAppMessagingToken];
  [v4 removeObserver:inAppMessagingToken];

  [(MailStatusObserver *)self setInAppMessagingToken:0];
  if (self->_networkObserverID)
  {
    [MFNetworkController removeNetworkObserver:?];
    networkObserverID = self->_networkObserverID;
    self->_networkObserverID = 0;
  }

  v7.receiver = self;
  v7.super_class = MailStatusObserver;
  [(MailStatusObserver *)&v7 dealloc];
}

- (void)startObservingForActivityStatusMailboxes:(id)mailboxes badgeCountStatusMailboxes:(id)statusMailboxes filterPredicate:(id)predicate label:(id)label
{
  mailboxesCopy = mailboxes;
  statusMailboxesCopy = statusMailboxes;
  predicateCopy = predicate;
  labelCopy = label;
  [(MailStatusObserver *)self stopObserving];
  mailboxActivityObserver = [(MailStatusObserver *)self mailboxActivityObserver];
  mailboxRepository = [(MailStatusObserver *)self mailboxRepository];
  [mailboxActivityObserver setMailboxesOfInterest:mailboxesCopy mailboxTypeResolver:mailboxRepository];

  objc_initWeak(&location, self);
  activityStatusUpdateScheduler = self->_activityStatusUpdateScheduler;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100133C94;
  v20[3] = &unk_1006511E8;
  objc_copyWeak(&v24, &location);
  v17 = statusMailboxesCopy;
  v21 = v17;
  v18 = predicateCopy;
  v22 = v18;
  v19 = labelCopy;
  v23 = v19;
  [(EFScheduler *)activityStatusUpdateScheduler performBlock:v20];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_startBadgeCountObserversWithLabel:(id)label
{
  labelCopy = label;
  badgeCountStatusMailboxes = [(MailStatusObserver *)self badgeCountStatusMailboxes];
  if ([badgeCountStatusMailboxes count])
  {
    v28 = labelCopy;
    delegate = [(MailStatusObserver *)self delegate];
    v27 = delegate;
    if (delegate)
    {
      v7 = [delegate preferUnreadCountInsteadOfTotalCount:self];
    }

    else
    {
      v7 = 0;
    }

    v8 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:badgeCountStatusMailboxes];
    v9 = [NSMutableArray arrayWithObject:v8];

    v26 = v9;
    filterPredicate = [(MailStatusObserver *)self filterPredicate];
    if (filterPredicate)
    {
      [v9 addObject:filterPredicate];
    }

    if (v7)
    {
      v11 = +[EMMessageListItemPredicates predicateForUnreadMessages];
      if (([filterPredicate isEqual:v11] & 1) == 0)
      {
        [v9 addObject:v11];
      }
    }

    v24 = [NSCompoundPredicate ef_andCompoundPredicateWithSubpredicates:v9];
    v29 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v24 sortDescriptors:&__NSArray0__struct queryOptions:0 label:labelCopy];
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_1001342CC;
    v44 = sub_1001342DC;
    v45 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001342E4;
    v32[3] = &unk_100651210;
    v34 = &v40;
    v12 = objc_alloc_init(NSMutableSet);
    v33 = v12;
    v35 = &v36;
    v13 = [badgeCountStatusMailboxes ef_filter:v32];
    v14 = v13;
    if (v37[3])
    {
      mailboxScope = 0;
    }

    else if ([v13 count] || objc_msgSend(v12, "count"))
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1001343E0;
      v30[3] = &unk_10064CEC0;
      v16 = v12;
      v31 = v16;
      v17 = [v14 ef_filter:v30];
      v18 = [v17 ef_mapSelector:"objectID"];

      v19 = [[NSSet alloc] initWithArray:v18];
      mailboxScope = [[EMMailboxScope alloc] initWithMailboxTypes:v16 excludeTypes:0 mailboxObjectIDs:v19 excludeMailboxes:0];
    }

    else
    {
      mailboxScope = [v41[5] mailboxScope];
    }

    v20 = +[UIApplication sharedApplication];
    daemonInterface = [v20 daemonInterface];
    messageRepository = [daemonInterface messageRepository];
    v23 = [messageRepository startCountingQuery:v29 includingServerCountsForMailboxScope:mailboxScope withObserver:self];
    [(MailStatusObserver *)self setBadgeCountObserverCancelable:v23];

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);

    labelCopy = v28;
  }
}

- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change
{
  [(MailStatusObserver *)self setBadgeCount:change, query];
  delegate = [(MailStatusObserver *)self delegate];
  if (delegate)
  {
    [delegate badgeCountUpdated:self badgeCount:change];
  }
}

- (void)icqOfferDidChange:(id)change
{
  v4 = +[ICQOfferManager sharedOfferManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013458C;
  v5[3] = &unk_100651238;
  v5[4] = self;
  [v4 getOfferWithCompletion:v5];
}

- (void)_inAppMessageChanged:(id)changed
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001347B4;
  v4[3] = &unk_100651260;
  objc_copyWeak(&v5, &location);
  [(MailStatusObserver *)self _fetchInAppMessageWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_fetchInAppMessageWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ICQInAppMessaging shared];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001349B0;
  v6[3] = &unk_1006512B0;
  v5 = completionCopy;
  v7 = v5;
  [v4 fetchMessageWithCompletion:v6];
}

@end