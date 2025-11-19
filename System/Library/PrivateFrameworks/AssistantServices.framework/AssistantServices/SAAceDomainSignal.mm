@interface SAAceDomainSignal
- (id)_ad_likelyApplicationBundleIdentifiers;
- (id)_ad_preheatableDomain;
- (void)_ad_handleAceDomainSignalRequest:(id)a3 completionHandler:(id)a4;
- (void)_ad_recordPreheatLaunchOf:(id)a3;
@end

@implementation SAAceDomainSignal

- (id)_ad_preheatableDomain
{
  if (qword_100590968 != -1)
  {
    dispatch_once(&qword_100590968, &stru_10051B6A8);
  }

  v3 = [(SAAceDomainSignal *)self domain];
  if (v3)
  {
    v4 = [qword_100590960 objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_ad_handleAceDomainSignalRequest:(id)a3 completionHandler:(id)a4
{
  v18 = a3;
  v19 = a4;
  v22 = self;
  v20 = [(SAAceDomainSignal *)self _ad_likelyApplicationBundleIdentifiers];
  if ([v20 count])
  {
    v6 = dispatch_group_create();
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v35 = 0;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v20;
    v7 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v7)
    {
      v8 = *v31;
      v9 = BKSOpenApplicationOptionKeyActivateSuspended;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v12 = [off_10058E4F8() serviceWithDefaultShellEndpoint];
          if (v12)
          {
            dispatch_group_enter(v6);
            [(SAAceDomainSignal *)v22 _ad_recordPreheatLaunchOf:v11];
            v13 = off_10058E500();
            v36 = v9;
            v37 = &__kCFBooleanTrue;
            v14 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
            v15 = [v13 optionsWithDictionary:v14];
            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_1003025D8;
            v27[3] = &unk_10051B660;
            v29 = v34;
            v28 = v6;
            [v12 openApplication:v11 withOptions:v15 completion:v27];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v7);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100302694;
    block[3] = &unk_10051B688;
    v26 = v34;
    v25 = v19;
    v24 = v18;
    dispatch_group_notify(v6, &_dispatch_main_q, block);

    _Block_object_dispose(v34, 8);
  }

  else
  {
    v16 = objc_alloc_init(SACommandSucceeded);
    v17 = [v18 createResponseWithReplyCommand:v16];
    (*(v19 + 2))(v19, v17, 0);
  }
}

- (void)_ad_recordPreheatLaunchOf:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v6 = [[NSMutableDictionary alloc] initWithCapacity:2];
    [v6 setObject:v3 forKeyedSubscript:AFAnalyticsContextKey[0]];
    v4 = sub_100214CD0(v3);

    [v6 setObject:v4 forKeyedSubscript:AFAnalyticsContextKey[1]];
    v5 = +[AFAnalytics sharedAnalytics];
    [v5 logEventWithType:801 context:v6];
  }
}

- (id)_ad_likelyApplicationBundleIdentifiers
{
  if (AFIsNano())
  {
    if (qword_100590958 != -1)
    {
      dispatch_once(&qword_100590958, &stru_10051B638);
    }

    v3 = qword_100590950;
    v4 = [(SAAceDomainSignal *)self domain];
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      v10 = v5;
      v6 = [NSArray arrayWithObjects:&v10 count:1];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = [(SAAceDomainSignal *)self domain];
    v8 = [v7 isEqualToString:SAAceDomainSignalDomainSYNAPSEValue];

    if (v8)
    {
      v6 = [(SAAceDomainSignal *)self appIdHints];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end