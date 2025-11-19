@interface AAPSyncMetaDataSource
+ ($334330880F6F150C3C7EE8C53B00592A)_createSourceInfoForLastState:(id)a3 startAnchor:(id)a4 keyAnchor:(id)a5 validity:(id)a6 configuration:(id)a7;
+ (id)projectedStateForKeyAnchor:(id)a3 withValidity:(id)a4;
- (AAPSyncMetaDataSource)initWithLastState:(id)a3 startAnchor:(id)a4 keyAnchor:(id)a5 validity:(id)a6 configuration:(id)a7 observer:(id)a8;
- (void)dealloc;
@end

@implementation AAPSyncMetaDataSource

- (AAPSyncMetaDataSource)initWithLastState:(id)a3 startAnchor:(id)a4 keyAnchor:(id)a5 validity:(id)a6 configuration:(id)a7 observer:(id)a8
{
  v18.receiver = self;
  v18.super_class = AAPSyncMetaDataSource;
  v14 = [(AAPSyncMetaDataSource *)&v18 init];
  if (v14)
  {
    v15 = dispatch_queue_create(0, 0);
    v14->_queue = v15;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5320;
    block[3] = &unk_20930;
    block[4] = v14;
    block[5] = a3;
    block[6] = a4;
    block[7] = a5;
    block[8] = a6;
    block[9] = a7;
    block[10] = a8;
    dispatch_async(v15, block);
  }

  return v14;
}

- (void)dealloc
{
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = AAPSyncMetaDataSource;
  [(AAPSyncMetaDataSource *)&v3 dealloc];
}

+ (id)projectedStateForKeyAnchor:(id)a3 withValidity:(id)a4
{
  v4 = [a1 _createSourceInfoForLastState:0 startAnchor:0 keyAnchor:a3 validity:a4 configuration:0];
  v6 = v5;

  return v6;
}

+ ($334330880F6F150C3C7EE8C53B00592A)_createSourceInfoForLastState:(id)a3 startAnchor:(id)a4 keyAnchor:(id)a5 validity:(id)a6 configuration:(id)a7
{
  v10 = objc_alloc_init(NSMutableArray);
  v77 = 0;
  v78 = &v77;
  v79 = 0x3052000000;
  v80 = sub_5CDC;
  v81 = sub_5CEC;
  v11 = [a5 isNewerThanAnchor:{objc_msgSend(a3, "keyAnchor")}];
  v12 = a5;
  if ((v11 & 1) == 0)
  {
    v12 = [a3 keyAnchor];
  }

  v82 = v12;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = [a5 isEqualToAnchor:{objc_msgSend(a3, "keyAnchor")}] ^ 1;
  v48 = a3;
  if ((v74[3] & 1) != 0 || ([objc_msgSend(a4 "primitiveAnchor")] & 1) == 0)
  {
    obj = [[NSMutableSet alloc] initWithSet:{objc_msgSend(a3, "apps")}];
    v14 = objc_alloc_init(NSMutableSet);
    v63 = _NSConcreteStackBlock;
    v64 = 3221225472;
    v65 = sub_5CF8;
    v66 = &unk_20998;
    v67 = obj;
    v68 = v14;
    v69 = a7;
    v70 = v10;
    v71 = &v77;
    v72 = &v73;
    AFApplicationWorkspaceEnumerateInstalledUserVisibleApplications();
    if (*(v74 + 24) == 1)
    {
      v15 = [a3 keyAnchor];
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v16 = [obj countByEnumeratingWithState:&v59 objects:v93 count:16];
      if (v16)
      {
        v17 = *v60;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v60 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v59 + 1) + 8 * i);
            v15 = [v15 anchorByIncrementingSubIndex];
            v20 = [[AAPSyncMetaDataItemDelete alloc] initWithAppId:v19 anchor:v15];
            [v10 addObject:v20];

            v21 = AFSiriLogContextPlugin;
            if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v84 = "+[AAPSyncMetaDataSource _createSourceInfoForLastState:startAnchor:keyAnchor:validity:configuration:]";
              v85 = 2112;
              v86 = v20;
              _os_log_debug_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: inserting delete metaDataItem=%@", buf, 0x16u);
            }
          }

          v16 = [obj countByEnumeratingWithState:&v59 objects:v93 count:16];
        }

        while (v16);
      }

      v22 = 0;
      a3 = v48;
    }

    else if ([obj count])
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_1080C();
      }

      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v23 = 0;
      v24 = 0;
      goto LABEL_60;
    }
  }

  else
  {
    v13 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v84 = "+[AAPSyncMetaDataSource _createSourceInfoForLastState:startAnchor:keyAnchor:validity:configuration:]";
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: no need to query MI if we only need to send up some delete records", buf, 0xCu);
    }

    v14 = 0;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v25 = [a3 deletes];
  v26 = [v25 countByEnumeratingWithState:&v55 objects:v92 count:16];
  if (!v26)
  {
    goto LABEL_40;
  }

  v27 = *v56;
  do
  {
    v28 = 0;
    do
    {
      if (*v56 != v27)
      {
        objc_enumerationMutation(v25);
      }

      v29 = *(*(&v55 + 1) + 8 * v28);
      if ([v14 containsObject:{objc_msgSend(v29, "appId")}])
      {
        v30 = AFSiriLogContextPlugin;
        if (!os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_35;
        }

        v31 = [v29 appId];
        *buf = 136315394;
        v84 = "+[AAPSyncMetaDataSource _createSourceInfoForLastState:startAnchor:keyAnchor:validity:configuration:]";
        v85 = 2112;
        v86 = v31;
        v32 = v30;
        v33 = "%s com.apple.siri.applications: not applying saved delete because the app has been re-added -> (%@)";
      }

      else
      {
        [v10 addObject:v29];
        v34 = AFSiriLogContextPlugin;
        if (!os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_35;
        }

        *buf = 136315394;
        v84 = "+[AAPSyncMetaDataSource _createSourceInfoForLastState:startAnchor:keyAnchor:validity:configuration:]";
        v85 = 2112;
        v86 = v29;
        v32 = v34;
        v33 = "%s com.apple.siri.applications: applying saved delete metaDataItem=%@";
      }

      _os_log_debug_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, v33, buf, 0x16u);
LABEL_35:
      v28 = v28 + 1;
    }

    while (v26 != v28);
    v35 = [v25 countByEnumeratingWithState:&v55 objects:v92 count:16];
    v26 = v35;
  }

  while (v35);
LABEL_40:
  [v10 sortUsingComparator:&stru_209D8];
  v36 = objc_alloc_init(NSMutableArray);
  v37 = [v48 stopAnchor];
  v24 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v38 = [v10 countByEnumeratingWithState:&v51 objects:v91 count:16];
  if (v38)
  {
    v39 = *v52;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v52 != v39)
        {
          objc_enumerationMutation(v10);
        }

        v41 = *(*(&v51 + 1) + 8 * j);
        v42 = [v41 anchor];
        if ([v42 isNewerThanAnchor:a4])
        {
          [v24 addObject:v41];
          if ([v41 isMetaDataItemDelete])
          {
            [v36 addObject:v41];
          }

          if ([v42 isNewerThanAnchor:v37])
          {
            v37 = v42;
          }
        }
      }

      v38 = [v10 countByEnumeratingWithState:&v51 objects:v91 count:16];
    }

    while (v38);
  }

  v43 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v84 = "+[AAPSyncMetaDataSource _createSourceInfoForLastState:startAnchor:keyAnchor:validity:configuration:]";
    v85 = 2114;
    v86 = a4;
    v87 = 2114;
    v88 = v37;
    v89 = 2112;
    v90 = v24;
    _os_log_debug_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: sorted and trimmed metaData to range (%{public}@, %{public}@) -> %@", buf, 0x2Au);
  }

  if (*(v74 + 24) == 1)
  {
    v44 = [AAPSyncState alloc];
    v23 = [(AAPSyncState *)v44 initWithValidity:a6 version:4 keyAnchor:v78[5] startAnchor:a4 stopAnchor:v37 apps:v14 deletes:v36];
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_10900();
    }
  }

  else
  {
    v23 = v48;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_1088C();
    }
  }

LABEL_60:
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v77, 8);
  v45 = v24;
  v46 = v23;
  result.var1 = v46;
  result.var0 = v45;
  return result;
}

@end