@interface AKFollowUpManager
- (AKFollowUpManager)initWithFollowUpFactory:(id)a3 provider:(id)a4;
- (BOOL)_synchronizeLocalFollowUpsWithServerPayload:(id)a3 altDSID:(id)a4 error:(id *)a5;
- (id)_alignedInsertionCandidates:(id)a3 withExistingItems:(id)a4;
- (id)pendingFollowUpWithCommand:(unint64_t)a3;
- (id)pendingFollowUpWithMessageId:(id)a3;
- (void)_notifyServerOfTeardownWithContext:(id)a3 completion:(id)a4;
- (void)_processFetchCompletionForAltDSID:(id)a3 items:(id)a4 fetchError:(id)a5 completion:(id)a6;
- (void)_refreshFollowUpsWithIdmsInfo:(id)a3 context:(id)a4 authHandler:(id)a5 completion:(id)a6;
- (void)_refreshFollowUpsWithIdmsInfo:(id)a3 context:(id)a4 completion:(id)a5;
- (void)processPushMessage:(id)a3;
- (void)synchronizeFollowUpItemsForContext:(id)a3 authHandler:(id)a4 completion:(id)a5;
- (void)tearDownFollowUpsWithItems:(id)a3;
- (void)teardownFollowUpWithContext:(id)a3 completion:(id)a4;
@end

@implementation AKFollowUpManager

- (AKFollowUpManager)initWithFollowUpFactory:(id)a3 provider:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKFollowUpManager;
  v8 = [(AKFollowUpManager *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_factory, location[0]);
    objc_storeStrong(&v12->_provider, v10);
    objc_storeStrong(&v12->_latestPushMessage, 0);
  }

  v6 = _objc_retain(v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (void)processPushMessage:(id)a3
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = _AKLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [location[0] command];
    v13 = [location[0] altDSID];
    sub_10001CE28(v31, v12, 1752392040, v13);
    _os_log_impl(&_mh_execute_header, v27, v26, "AKFollowUpManager processPushMessage command: %d altDSID: %{mask.hash}@", v31, 0x1Cu);
    _objc_release(v13);
  }

  objc_storeStrong(&v27, 0);
  if ([location[0] command] != 800 && objc_msgSend(location[0], "command") != 1900)
  {
    goto LABEL_16;
  }

  v25 = [location[0] altDSID];
  v9 = +[AKAccountManager sharedInstance];
  v24 = [(AKAccountManager *)v9 iCloudAccountForAltDSID:v25];
  _objc_release(v9);
  v23 = v24 != 0;
  v10 = +[AKAccountManager sharedInstance];
  v11 = [(AKAccountManager *)v10 isPrimaryiCloudAccount:v24];
  _objc_release(v10);
  v22 = v11;
  if (v24)
  {
    if ((v22 & 1) != 0 || [location[0] command] == 1900)
    {
      objc_storeStrong(&v29->_latestPushMessage, location[0]);
      v15 = objc_opt_new();
      [v15 setAltDSID:v25];
      v3 = objc_opt_class();
      v5 = [location[0] userInfo];
      v4 = [v5 objectForKeyedSubscript:AKFollowUpPushPayloadKey];
      v14 = sub_10001CF08(v3, v4);
      _objc_release(v4);
      _objc_release(v5);
      [(AKFollowUpManager *)v29 _refreshFollowUpsWithIdmsInfo:v14 context:v15 completion:?];
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
      v19 = 0;
    }

    else
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v18;
        v7 = v17;
        sub_10001CEEC(v16);
        _os_log_impl(&_mh_execute_header, v6, v7, "Suppressing repair push for non-primary account", v16, 2u);
      }

      objc_storeStrong(&v18, 0);
      v19 = 1;
    }
  }

  else
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v8 = [location[0] altDSID];
      sub_10001CE98(v30, 1752392040, v8);
      _os_log_error_impl(&_mh_execute_header, v21, v20, "Follow up push message is for an altDSID not signed in to iCloud: %{mask.hash}@", v30, 0x16u);
      _objc_release(v8);
    }

    objc_storeStrong(&v21, 0);
    v19 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  if (!v19)
  {
LABEL_16:
    v19 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)synchronizeFollowUpItemsForContext:(id)a3 authHandler:(id)a4 completion:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(AKFollowUpManager *)v10 _refreshFollowUpsWithIdmsInfo:0 context:location[0] authHandler:v8 completion:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_refreshFollowUpsWithIdmsInfo:(id)a3 context:(id)a4 completion:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(AKFollowUpManager *)v10 _refreshFollowUpsWithIdmsInfo:location[0] context:v8 authHandler:0 completion:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_refreshFollowUpsWithIdmsInfo:(id)a3 context:(id)a4 authHandler:(id)a5 completion:(id)a6
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v26 = 0;
  objc_storeStrong(&v26, a5);
  v25 = 0;
  objc_storeStrong(&v25, a6);
  v24 = _AKLogSystem();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v27 altDSID];
    sub_10001B098(v30, v9, location[0]);
    _os_log_impl(&_mh_execute_header, v24, v23, "Refreshing follow ups for %@ with info %@", v30, 0x16u);
    _objc_release(v9);
  }

  objc_storeStrong(&v24, 0);
  if (location[0])
  {
    v22 = [location[0] objectForKeyedSubscript:@"items"];
    v7 = v29;
    v8 = [v27 altDSID];
    [AKFollowUpManager _processFetchCompletionForAltDSID:v7 items:"_processFetchCompletionForAltDSID:items:fetchError:completion:" fetchError:? completion:?];
    _objc_release(v8);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v21 = [(AKFollowUpControllerServiceProvider *)v29->_serviceProvider serviceControllerForContext:v27];
    [v21 setAuthenticationDelegate:v26];
    v6 = v21;
    v13 = _NSConcreteStackBlock;
    v14 = -1073741824;
    v15 = 0;
    v16 = sub_10001D458;
    v17 = &unk_10031F110;
    v20 = _objc_retain(v25);
    v18 = _objc_retain(v29);
    v19 = _objc_retain(v27);
    [v6 executeRequestWithCompletion:&v13];
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

- (void)_processFetchCompletionForAltDSID:(id)a3 items:(id)a4 fetchError:(id)a5 completion:(id)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  v13 = 0;
  v12 = 0;
  if (v15)
  {
    objc_storeStrong(&v12, v15);
  }

  else
  {
    v11 = v12;
    v6 = [(AKFollowUpManager *)v18 _synchronizeLocalFollowUpsWithServerPayload:v16 altDSID:location[0] error:&v11];
    objc_storeStrong(&v12, v11);
    v13 = v6;
  }

  if ((v13 & 1) == 0)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v19, v12);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to synchronize local follow up state: %@", v19, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (v14)
  {
    (*(v14 + 2))(v14, v13 & 1, v12);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_synchronizeLocalFollowUpsWithServerPayload:(id)a3 altDSID:(id)a4 error:(id *)a5
{
  v78 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v76 = 0;
  objc_storeStrong(&v76, a4);
  v75 = a5;
  v74 = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    log = v74;
    v30 = type;
    sub_10001CEEC(v72);
    _os_log_impl(&_mh_execute_header, log, v30, "Synchronizing local follow up state", v72, 2u);
  }

  objc_storeStrong(&v74, 0);
  v71 = +[NSMutableDictionary dictionary];
  if (v78->_latestPushMessage)
  {
    v27 = [NSNumber numberWithUnsignedInteger:[(AKPushMessage *)v78->_latestPushMessage command]];
    [v71 setObject:? forKeyedSubscript:?];
    _objc_release(v27);
    v28 = [(AKPushMessage *)v78->_latestPushMessage messageId];
    [v71 setObject:? forKeyedSubscript:?];
    _objc_release(v28);
  }

  v5 = [(AKFollowUpProvider *)v78->_provider pendingFollowUpItems:0];
  v70 = [(AKFollowUpItemFactory *)v78->_factory itemsForAltDSID:v76 pushMessageInfo:v71 fromIDMSPayload:location[0]];
  v69 = _AKLogSystem();
  v68 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v84, v70);
    _os_log_impl(&_mh_execute_header, v69, v68, "Insertion Candidates: %@", v84, 0xCu);
  }

  objc_storeStrong(&v69, 0);
  if ([(AKPushMessage *)v78->_latestPushMessage command]== 1900)
  {
    v67 = [(AKFollowUpManager *)v78 pendingFollowUpWithCommand:800];
    v6 = [(AKFollowUpManager *)v78 _alignedInsertionCandidates:v70 withExistingItems:v67];
    v7 = v70;
    v70 = v6;
    _objc_release(v7);
    objc_storeStrong(&v67, 0);
  }

  else
  {
    v66 = [(AKFollowUpManager *)v78 pendingFollowUpWithCommand:800];
    if (v66)
    {
      v25 = [v70 aaf_map:&stru_10031F150];
      v65 = [NSSet setWithArray:?];
      _objc_release(v25);
      v26 = v66;
      v58 = _NSConcreteStackBlock;
      v59 = -1073741824;
      v60 = 0;
      v61 = sub_10001E480;
      v62 = &unk_10031F178;
      v63 = _objc_retain(v65);
      v64 = [v26 aaf_filter:&v58];
      if ([v64 count])
      {
        v57 = _AKLogSystem();
        v56 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v83, v64);
          _os_log_impl(&_mh_execute_header, v57, v56, "Deleting: %@", v83, 0xCu);
        }

        objc_storeStrong(&v57, 0);
        v55 = 0;
        provider = v78->_provider;
        v54 = 0;
        v24 = [(AKFollowUpProvider *)provider removeFollowUpItems:v64 error:&v54];
        objc_storeStrong(&v55, v54);
        if (!v24)
        {
          v53 = _AKLogSystem();
          v52 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            sub_1000194D4(v82, v55);
            _os_log_error_impl(&_mh_execute_header, v53, v52, "Failed to clear existing follow ups: %@", v82, 0xCu);
          }

          objc_storeStrong(&v53, 0);
        }

        objc_storeStrong(&v55, 0);
      }

      v22 = [(AKFollowUpItemFactory *)v78->_factory itemIdentifiersRequiringNotificationClearFromPayload:location[0]];
      v51 = [NSSet setWithArray:?];
      _objc_release(v22);
      v23 = v66;
      v44 = _NSConcreteStackBlock;
      v45 = -1073741824;
      v46 = 0;
      v47 = sub_10001E534;
      v48 = &unk_10031F178;
      v49 = _objc_retain(v51);
      v50 = [v23 aaf_filter:&v44];
      if ([v50 count])
      {
        v43 = _AKLogSystem();
        v42 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v81, v50);
          _os_log_impl(&_mh_execute_header, v43, v42, "Clearing Notifications: %@", v81, 0xCu);
        }

        objc_storeStrong(&v43, 0);
        memset(__b, 0, sizeof(__b));
        v20 = _objc_retain(v50);
        v21 = [v20 countByEnumeratingWithState:__b objects:v80 count:16];
        if (v21)
        {
          v17 = *__b[2];
          v18 = 0;
          v19 = v21;
          while (1)
          {
            v16 = v18;
            if (*__b[2] != v17)
            {
              objc_enumerationMutation(v20);
            }

            v41 = *(__b[1] + 8 * v18);
            [(AKFollowUpProvider *)v78->_provider clearNotificationsForItem:v41 error:0];
            ++v18;
            if (v16 + 1 >= v19)
            {
              v18 = 0;
              v19 = [v20 countByEnumeratingWithState:__b objects:v80 count:16];
              if (!v19)
              {
                break;
              }
            }
          }
        }

        _objc_release(v20);
      }

      v15 = v70;
      v34 = _NSConcreteStackBlock;
      v35 = -1073741824;
      v36 = 0;
      v37 = sub_10001E5E8;
      v38 = &unk_10031F178;
      v39 = _objc_retain(v51);
      v9 = [v15 aaf_filter:&v34];
      v10 = v70;
      v70 = v9;
      _objc_release(v10);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v50, 0);
      objc_storeStrong(&v49, 0);
      objc_storeStrong(&v51, 0);
      objc_storeStrong(&v64, 0);
      objc_storeStrong(&v63, 0);
      objc_storeStrong(&v65, 0);
    }

    v11 = [(AKFollowUpManager *)v78 _alignedInsertionCandidates:v70 withExistingItems:v66];
    v12 = v70;
    v70 = v11;
    _objc_release(v12);
    objc_storeStrong(&v66, 0);
  }

  objc_storeStrong(&v78->_latestPushMessage, 0);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v79, v70);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Inserting: %@", v79, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v14 = [(AKFollowUpProvider *)v78->_provider addFollowUpItems:v70 error:v75];
  objc_storeStrong(&v70, HIDWORD(v14));
  objc_storeStrong(&v71, HIDWORD(v14));
  objc_storeStrong(&v76, HIDWORD(v14));
  objc_storeStrong(location, HIDWORD(v14));
  return v14;
}

- (id)_alignedInsertionCandidates:(id)a3 withExistingItems:(id)a4
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = +[NSMutableDictionary dictionary];
  v29 = +[NSMutableDictionary dictionary];
  v9 = location[0];
  v22 = _NSConcreteStackBlock;
  v23 = -1073741824;
  v24 = 0;
  v25 = sub_10001EAF0;
  v26 = &unk_10031F1A0;
  v27 = _objc_retain(v29);
  v28 = _objc_retain(v30);
  [v9 enumerateObjectsUsingBlock:&v22];
  v10 = v31;
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_10001ED78;
  v18 = &unk_10031F1C8;
  v19 = _objc_retain(v29);
  v20 = _objc_retain(v30);
  v21 = _objc_retain(v33);
  [v10 enumerateObjectsUsingBlock:&v14];
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v35, v29);
    _os_log_impl(&_mh_execute_header, oslog, type, "Found incoming sparse followups: %@", v35, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v11 = _AKLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v34, v30);
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found incoming full followups: %@", v34, 0xCu);
  }

  objc_storeStrong(&v11, 0);
  v7 = [v29 allValues];
  v5 = [v30 allValues];
  v6 = [v7 arrayByAddingObjectsFromArray:?];
  _objc_release(v5);
  _objc_release(v7);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)teardownFollowUpWithContext:(id)a3 completion:(id)a4
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  v20 = [location[0] itemIdentifier];
  v31 = 0;
  v21 = 1;
  if (v20)
  {
    v32 = [location[0] altDSID];
    v31 = 1;
    v21 = v32 == 0;
  }

  if (v31)
  {
    _objc_release(v32);
  }

  _objc_release(v20);
  if (v21)
  {
    v17 = v33;
    v18 = [NSError ak_errorWithCode:-7044];
    v17[2](v17, 0);
    _objc_release(v18);
    v30 = 1;
  }

  else
  {
    v10 = [location[0] akAction];
    v11 = [v10 isEqualToString:AKActionDelete];
    _objc_release(v10);
    v29 = v11;
    v12 = [location[0] akAction];
    v13 = [v12 isEqualToString:AKActionTeardown];
    _objc_release(v12);
    v28 = v13;
    v14 = [location[0] akAction];
    v15 = [v14 isEqualToString:AKFollowUpActionClear];
    _objc_release(v14);
    v27 = v15;
    v16 = 1;
    if ((v11 & 1) == 0)
    {
      v16 = 1;
      if ((v28 & 1) == 0)
      {
        v16 = [location[0] isContinuityPush];
      }
    }

    v26 = v16 & 1;
    v9 = 1;
    if ((v28 & 1) == 0)
    {
      v9 = 1;
      if ((v27 & 1) == 0)
      {
        v9 = [location[0] isContinuityPush];
      }
    }

    v25 = v9 & 1;
    if (v26)
    {
      provider = v35->_provider;
      v8 = [location[0] itemIdentifier];
      v36 = v8;
      v7 = [NSArray arrayWithObjects:&v36 count:1];
      [AKFollowUpProvider removeFollowUpItemsWithIdentifiers:"removeFollowUpItemsWithIdentifiers:error:" error:?];
      _objc_release(v7);
      _objc_release(v8);
    }

    else
    {
      v24 = _AKLogSystem();
      v23 = 16;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        log = v24;
        type = v23;
        sub_10001CEEC(v22);
        _os_log_error_impl(&_mh_execute_header, log, type, "Unknown action, ignoring...", v22, 2u);
      }

      objc_storeStrong(&v24, 0);
    }

    if (v25)
    {
      [(AKFollowUpManager *)v35 _notifyServerOfTeardownWithContext:location[0] completion:v33];
    }

    else
    {
      (*(v33 + 2))(v33, 1, 0);
    }

    v30 = 0;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
}

- (void)_notifyServerOfTeardownWithContext:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v25 = AKRequestBodyFollowupKey;
  v18 = [location[0] itemIdentifier];
  v24 = v18;
  v17 = [NSArray arrayWithObjects:&v24 count:?];
  v26 = v17;
  v16 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v20 = [(NSDictionary *)v16 mutableCopy];
  _objc_release(v16);
  _objc_release(v17);
  _objc_release(v18);
  if ([location[0] isContinuityPush])
  {
    v13 = [location[0] txnid];
    [v20 setObject:? forKeyedSubscript:?];
    _objc_release(v13);
    [v20 setObject:&off_100338F38 forKeyedSubscript:@"cmd"];
    v14 = [location[0] idmsData];
    _objc_release(v14);
    if (v14)
    {
      v12 = [location[0] idmsData];
      [v20 setObject:? forKeyedSubscript:?];
      _objc_release(v12);
    }

    v11 = [location[0] akAction];
    [v20 setObject:? forKeyedSubscript:?];
    _objc_release(v11);
  }

  else
  {
    v10 = [location[0] akAction];
    _objc_release(v10);
    if (v10)
    {
      v9 = [location[0] akAction];
      [v20 setObject:? forKeyedSubscript:?];
      _objc_release(v9);
    }
  }

  v19 = _AKLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v23, v20);
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending tear down payload: %@", v23, 0xCu);
  }

  objc_storeStrong(&v19, 0);
  v8 = +[AKAppleIDCheckInHelperService sharedService];
  v4 = v20;
  v7 = +[AKAccountManager sharedInstance];
  v6 = [location[0] altDSID];
  v5 = [AKAccountManager authKitAccountWithAltDSID:v7 error:"authKitAccountWithAltDSID:error:"];
  [v8 ackWithPayload:v4 account:? completion:?];
  _objc_release(v5);
  _objc_release(v6);
  _objc_release(v7);
  _objc_release(v8);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (id)pendingFollowUpWithMessageId:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [(AKFollowUpProvider *)v17->_provider pendingFollowUpItems:0];
  v14 = +[NSMutableArray array];
  v5 = v15;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10001FEDC;
  v11 = &unk_10031F1A0;
  v12 = _objc_retain(location[0]);
  v13 = _objc_retain(v14);
  [v5 enumerateObjectsUsingBlock:&v7];
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v18, v14);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Pending Follow Up items matching tear down message id: %@", v18, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v4 = _objc_retain(v14);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)pendingFollowUpWithCommand:(unint64_t)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = [(AKFollowUpProvider *)self->_provider pendingFollowUpItems:0];
  v13 = +[NSMutableArray array];
  v5 = v14;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_100020200;
  v11 = &unk_10031F1F0;
  v12[1] = v15;
  v12[0] = _objc_retain(v13);
  [v5 enumerateObjectsUsingBlock:&v7];
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_1000194D4(v18, v13);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Pending Follow Up items: %@", v18, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v4 = _objc_retain(v13);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);

  return v4;
}

- (void)tearDownFollowUpsWithItems:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000194D4(v6, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Tear down follow up items: %@", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(AKFollowUpProvider *)v5->_provider removeFollowUpItems:location[0] error:0];
  objc_storeStrong(location, 0);
}

@end