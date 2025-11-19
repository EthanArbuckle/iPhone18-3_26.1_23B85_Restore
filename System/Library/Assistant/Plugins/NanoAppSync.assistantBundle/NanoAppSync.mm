void sub_1F54(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToString:@"IntentsInfoNano"] & 1) == 0)
  {
    [*(a1 + 40) resetWithValidity:@"IntentsInfoNano"];
  }

  if (*(*(a1 + 48) + 8))
  {
    v15 = +[NSAssertionHandler currentHandler];
    v16 = *(a1 + 48);
    [v15 handleFailureInMethod:*(a1 + 56) object:v16 file:*(a1 + 40) lineNumber:? description:?];
  }

  v2 = [*(a1 + 40) appMetadata];
  v3 = [v2 appIdentifyingInfo];
  v4 = [v3 bundleId];
  v5 = *(a1 + 48);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;

  v7 = *(*(a1 + 48) + 8);
  if (v7)
  {
    v8 = [v7 copy];
    v9 = +[ACXDeviceConnection sharedDeviceConnection];
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(v11 + 8);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_2170;
    v17[3] = &unk_8310;
    v17[4] = v11;
    v18 = v8;
    v19 = v10;
    v13 = v8;
    [v9 fetchInfoForApplicationWithBundleID:v12 forPairedDevice:0 completion:v17];
  }

  else
  {
    v14 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[NASAppIntentsInfoSyncHandler beginSyncWithAnchor:validity:count:forKey:beginInfo:]_block_invoke";
      _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%s ERROR: no app id?!", buf, 0xCu);
    }
  }
}

void sub_2170(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2264;
  block[3] = &unk_82E8;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v13 = v8;
  v14 = v9;
  v15 = v6;
  v16 = *(a1 + 48);
  v17 = v5;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void sub_2264(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:*(*(a1 + 40) + 8)])
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        v7 = *(*(a1 + 40) + 8);
        v8 = 136315650;
        v9 = "[NASAppIntentsInfoSyncHandler beginSyncWithAnchor:validity:count:forKey:beginInfo:]_block_invoke";
        v10 = 2114;
        v11 = v7;
        v12 = 2114;
        v13 = v2;
        _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%s Failed to get application info for %{public}@: %{public}@. It may have been uninstalled.", &v8, 0x20u);
      }

      [*(a1 + 56) resetWithValidity:0];
    }

    else
    {
      objc_storeStrong((*(a1 + 40) + 16), *(a1 + 64));
    }

    dispatch_group_leave(*(*(a1 + 40) + 32));
  }

  else
  {
    v4 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(*(a1 + 40) + 8);
      v8 = 136315650;
      v9 = "[NASAppIntentsInfoSyncHandler beginSyncWithAnchor:validity:count:forKey:beginInfo:]_block_invoke_2";
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%s Application info arrived too late for %@, ignoring. Now syncing %@", &v8, 0x20u);
    }
  }
}