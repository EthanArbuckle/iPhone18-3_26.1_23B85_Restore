void sub_FDC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  [v2 addObject:v3];
}

void sub_1034(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[PSSSSiriSyncHandler _startSubscriptionFetch]_block_invoke_2";
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%s Error getting active subscription services: %{public}@", buf, 0x16u);
    }
  }

  v8 = objc_alloc_init(NSMutableArray);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1210;
  v18 = &unk_41B0;
  v9 = v5;
  v19 = v9;
  v10 = v8;
  v20 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:&v15];
  v11 = objc_alloc_init(SAAppSubscriptions);
  v12 = [NSURL alloc];
  v13 = [v12 initWithString:{@"com.apple.app-subscriptions:all", v15, v16, v17, v18}];
  [v11 setIdentifier:v13];

  [v11 setActiveSubscriptions:v10];
  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v11);
  }
}

void sub_1210(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  v4 = [v3 objectForKey:@"provider"];
  if (v4)
  {
    v5 = [v3 objectForKey:@"active"];
    v6 = [v5 isEqualToNumber:&__kCFBooleanTrue];

    if (v6)
    {
      v7 = objc_alloc_init(SAAppSubscription);
      v8 = [[NSString alloc] initWithFormat:@"com.apple.app-subscription:%@", v4];
      v9 = [[NSURL alloc] initWithString:v8];
      [v7 setIdentifier:v9];

      [v7 setBundleId:v4];
      v10 = [v3 objectForKey:@"type"];
      v11 = v10;
      if (v10)
      {
        v13 = v10;
        v12 = [NSArray arrayWithObjects:&v13 count:1];
        [v7 setSubscriptionTiers:v12];
      }

      else
      {
        [v7 setSubscriptionTiers:&__NSArray0__struct];
      }

      [*(a1 + 40) addObject:v7];
    }
  }
}