@interface PDFileSyncManager
+ (id)agentCache;
+ (id)agentForAsset:(id)asset database:(id)database forUpload:(BOOL)upload;
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

+ (id)agentForAsset:(id)asset database:(id)database forUpload:(BOOL)upload
{
  uploadCopy = upload;
  assetCopy = asset;
  databaseCopy = database;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (uploadCopy)
  {
    [selfCopy countedUploadAgentByAssetID];
  }

  else
  {
    [selfCopy countedDownloadAgentByAssetID];
  }
  v11 = ;
  objectID = [assetCopy objectID];
  v13 = [v11 objectForKey:objectID];

  if (v13)
  {
    [v13 incrementCounter];
    counter = [v13 counter];
    agent = [v13 agent];
    CLSInitLog();
    v16 = CLSLogAsset;
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_DEBUG))
    {
      objectID2 = [assetCopy objectID];
      v18 = objectID2;
      v19 = "DN";
      v27 = 134218754;
      v29 = 2048;
      v28 = agent;
      if (uploadCopy)
      {
        v19 = "UP";
      }

      v30 = counter;
      v31 = 2112;
      v32 = objectID2;
      v33 = 2080;
      v34 = v19;
      _os_log_debug_impl(&_mh_execute_header, &v16->super, OS_LOG_TYPE_DEBUG, "^^^^ PDFileSyncAgent: %p [%ld] :: %@ :: %s", &v27, 0x2Au);
    }
  }

  else
  {
    agent = [[PDFileSyncAgent alloc] initWithAsset:assetCopy database:databaseCopy];
    v16 = [[PDCountedFileSyncAgent alloc] initWithAgent:agent];
    counter2 = [(PDCountedFileSyncAgent *)v16 counter];
    objectID3 = [assetCopy objectID];
    [v11 setObject:v16 forKey:objectID3];

    CLSInitLog();
    v22 = CLSLogAsset;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      objectID4 = [assetCopy objectID];
      v25 = "DN";
      v27 = 134218754;
      v29 = 2048;
      v28 = agent;
      if (uploadCopy)
      {
        v25 = "UP";
      }

      v30 = counter2;
      v31 = 2112;
      v32 = objectID4;
      v33 = 2080;
      v34 = v25;
      v26 = objectID4;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "++++ PDFileSyncAgent: %p [%ld] :: %@ :: %s", &v27, 0x2Au);
    }
  }

  objc_sync_exit(selfCopy);

  return agent;
}

@end