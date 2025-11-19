@interface PDFileSyncManager
+ (id)agentCache;
+ (id)agentForAsset:(id)a3 database:(id)a4 forUpload:(BOOL)a5;
+ (id)countedDownloadAgentByAssetID;
+ (id)countedUploadAgentByAssetID;
@end

@implementation PDFileSyncManager

+ (id)agentCache
{
  if (qword_10024DB98 != -1)
  {
    dispatch_once(&qword_10024DB98, &stru_100205C68);
  }

  v3 = qword_10024DB90;

  return v3;
}

+ (id)countedUploadAgentByAssetID
{
  if (qword_10024DBA8 != -1)
  {
    dispatch_once(&qword_10024DBA8, &stru_100205C88);
  }

  v3 = qword_10024DBA0;

  return v3;
}

+ (id)countedDownloadAgentByAssetID
{
  if (qword_10024DBB8 != -1)
  {
    dispatch_once(&qword_10024DBB8, &stru_100205CA8);
  }

  v3 = qword_10024DBB0;

  return v3;
}

+ (id)agentForAsset:(id)a3 database:(id)a4 forUpload:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = a1;
  objc_sync_enter(v10);
  if (v5)
  {
    [v10 countedUploadAgentByAssetID];
  }

  else
  {
    [v10 countedDownloadAgentByAssetID];
  }
  v11 = ;
  v12 = [v8 objectID];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    [v13 incrementCounter];
    v14 = [v13 counter];
    v15 = [v13 agent];
    CLSInitLog();
    v16 = CLSLogAsset;
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v8 objectID];
      v18 = v17;
      v19 = "DN";
      v27 = 134218754;
      v29 = 2048;
      v28 = v15;
      if (v5)
      {
        v19 = "UP";
      }

      v30 = v14;
      v31 = 2112;
      v32 = v17;
      v33 = 2080;
      v34 = v19;
      _os_log_debug_impl(&_mh_execute_header, &v16->super, OS_LOG_TYPE_DEBUG, "^^^^ PDFileSyncAgent: %p [%ld] :: %@ :: %s", &v27, 0x2Au);
    }
  }

  else
  {
    v15 = [[PDFileSyncAgent alloc] initWithAsset:v8 database:v9];
    v16 = [[PDCountedFileSyncAgent alloc] initWithAgent:v15];
    v20 = [(PDCountedFileSyncAgent *)v16 counter];
    v21 = [v8 objectID];
    [v11 setObject:v16 forKey:v21];

    CLSInitLog();
    v22 = CLSLogAsset;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v24 = [v8 objectID];
      v25 = "DN";
      v27 = 134218754;
      v29 = 2048;
      v28 = v15;
      if (v5)
      {
        v25 = "UP";
      }

      v30 = v20;
      v31 = 2112;
      v32 = v24;
      v33 = 2080;
      v34 = v25;
      v26 = v24;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "++++ PDFileSyncAgent: %p [%ld] :: %@ :: %s", &v27, 0x2Au);
    }
  }

  objc_sync_exit(v10);

  return v15;
}

@end