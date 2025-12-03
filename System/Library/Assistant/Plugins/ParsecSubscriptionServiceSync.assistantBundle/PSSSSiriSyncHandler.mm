@interface PSSSSiriSyncHandler
- (void)_startSubscriptionFetch;
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
@end

@implementation PSSSSiriSyncHandler

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  infoCopy = info;
  subscriptionsFuture = self->_subscriptionsFuture;
  anchorCopy = anchor;
  v9 = [(AFFuture *)subscriptionsFuture waitForValue:dispatch_time(0, 10000000000)];
  v10 = v9;
  if (v9)
  {
    _pssSiriSync_anchorValue = [v9 _pssSiriSync_anchorValue];
    v12 = [anchorCopy isEqualToString:_pssSiriSync_anchorValue];

    if ((v12 & 1) == 0)
    {
      [infoCopy setPostAnchor:_pssSiriSync_anchorValue];
      [infoCopy setObject:v10];
    }
  }

  else
  {
    v13 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[PSSSSiriSyncHandler getChangeAfterAnchor:changeInfo:]";
      _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%s Timed out. Leaving sync state as is.", &v14, 0xCu);
    }

    [infoCopy setPostAnchor:anchorCopy];

    [infoCopy setObject:0];
  }
}

- (void)_startSubscriptionFetch
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_FDC;
  v16[3] = &unk_4188;
  v17 = v3;
  v5 = v3;
  [v4 enumerateBundlesOfType:1 block:v16];

  v15 = 0;
  v6 = [[AFFuture alloc] initAndGetSetterBlock:&v15];
  v7 = v15;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1034;
  v12[3] = &unk_41D8;
  v13 = objc_alloc_init(PSSSSubscriptionManagerInternal);
  v14 = v7;
  v8 = v13;
  v9 = v7;
  [v8 getActiveSubscriptionServicesMatchingBundleIdentifiers:v5 domainIdentifiers:0 maximumExpirationLimit:v12 completionHandler:31104000.0];
  subscriptionsFuture = self->_subscriptionsFuture;
  self->_subscriptionsFuture = v6;
  v11 = v6;
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info
{
  infoCopy = info;
  if (([validity isEqualToString:@"1"] & 1) == 0)
  {
    [infoCopy resetWithValidity:@"1"];
  }

  [(PSSSSiriSyncHandler *)self _startSubscriptionFetch];
}

@end