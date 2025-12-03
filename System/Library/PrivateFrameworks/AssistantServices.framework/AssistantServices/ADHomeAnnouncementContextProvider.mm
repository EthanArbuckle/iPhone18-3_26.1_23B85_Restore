@interface ADHomeAnnouncementContextProvider
- (ADHomeAnnouncementContextProvider)initWithDonationService:(id)service instanceContext:(id)context;
- (void)getRedactedContextForContextSnapshot:(id)snapshot metadata:(id)metadata privacyPolicy:(int64_t)policy completion:(id)completion;
- (void)handleHomeAnnouncementSnapshotUpdate:(id)update;
@end

@implementation ADHomeAnnouncementContextProvider

- (void)getRedactedContextForContextSnapshot:(id)snapshot metadata:(id)metadata privacyPolicy:(int64_t)policy completion:(id)completion
{
  v6 = *(completion + 2);
  if (policy == 10)
  {
    v6(completion, snapshot, metadata);
  }

  else
  {
    (v6)(completion, 0, 0, metadata);
  }
}

- (void)handleHomeAnnouncementSnapshotUpdate:(id)update
{
  updateCopy = update;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "[ADHomeAnnouncementContextProvider handleHomeAnnouncementSnapshotUpdate:]";
    v14 = 2112;
    v15 = updateCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal snapshot = %@", &v12, 0x16u);
  }

  v6 = +[NSDate date];
  v7 = [AFDeviceContextMetadata alloc];
  v8 = AFDeviceContextKeyHomeAnnouncement;
  v9 = [v6 dateByAddingTimeInterval:60.0];
  v10 = [v7 initWithType:v8 deliveryDate:v6 expirationDate:v9 redactedKeyPaths:0 historyConfiguration:0];

  WeakRetained = objc_loadWeakRetained(&self->_donationService);
  [WeakRetained donateContext:updateCopy withMetadata:v10 pushToRemote:0];
}

- (ADHomeAnnouncementContextProvider)initWithDonationService:(id)service instanceContext:(id)context
{
  serviceCopy = service;
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = ADHomeAnnouncementContextProvider;
  v8 = [(ADHomeAnnouncementContextProvider *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_donationService, serviceCopy);
    if (contextCopy)
    {
      v10 = contextCopy;
    }

    else
    {
      v10 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v9->_instanceContext;
    v9->_instanceContext = v10;

    if (+[AFFeatureFlags isAnnounceEnabled])
    {
      v12 = [[ADHomeAnnouncementContextAdaptor alloc] initWithInstanceContext:v9->_instanceContext];
      homeAnnouncementContextAdaptor = v9->_homeAnnouncementContextAdaptor;
      v9->_homeAnnouncementContextAdaptor = v12;

      objc_initWeak(&location, v9);
      v14 = v9->_homeAnnouncementContextAdaptor;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000DEB94;
      v17[3] = &unk_100511040;
      objc_copyWeak(&v18, &location);
      [(ADHomeAnnouncementContextAdaptor *)v14 registerSnapshotUpdater:v17];
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    WeakRetained = objc_loadWeakRetained(&v9->_donationService);
    [WeakRetained registerContextTransformer:v9 forType:AFDeviceContextKeyHomeAnnouncement];
  }

  return v9;
}

@end