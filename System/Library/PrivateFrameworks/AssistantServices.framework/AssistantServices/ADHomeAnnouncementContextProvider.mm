@interface ADHomeAnnouncementContextProvider
- (ADHomeAnnouncementContextProvider)initWithDonationService:(id)a3 instanceContext:(id)a4;
- (void)getRedactedContextForContextSnapshot:(id)a3 metadata:(id)a4 privacyPolicy:(int64_t)a5 completion:(id)a6;
- (void)handleHomeAnnouncementSnapshotUpdate:(id)a3;
@end

@implementation ADHomeAnnouncementContextProvider

- (void)getRedactedContextForContextSnapshot:(id)a3 metadata:(id)a4 privacyPolicy:(int64_t)a5 completion:(id)a6
{
  v6 = *(a6 + 2);
  if (a5 == 10)
  {
    v6(a6, a3, a4);
  }

  else
  {
    (v6)(a6, 0, 0, a4);
  }
}

- (void)handleHomeAnnouncementSnapshotUpdate:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "[ADHomeAnnouncementContextProvider handleHomeAnnouncementSnapshotUpdate:]";
    v14 = 2112;
    v15 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s #hal snapshot = %@", &v12, 0x16u);
  }

  v6 = +[NSDate date];
  v7 = [AFDeviceContextMetadata alloc];
  v8 = AFDeviceContextKeyHomeAnnouncement;
  v9 = [v6 dateByAddingTimeInterval:60.0];
  v10 = [v7 initWithType:v8 deliveryDate:v6 expirationDate:v9 redactedKeyPaths:0 historyConfiguration:0];

  WeakRetained = objc_loadWeakRetained(&self->_donationService);
  [WeakRetained donateContext:v4 withMetadata:v10 pushToRemote:0];
}

- (ADHomeAnnouncementContextProvider)initWithDonationService:(id)a3 instanceContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = ADHomeAnnouncementContextProvider;
  v8 = [(ADHomeAnnouncementContextProvider *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_donationService, v6);
    if (v7)
    {
      v10 = v7;
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