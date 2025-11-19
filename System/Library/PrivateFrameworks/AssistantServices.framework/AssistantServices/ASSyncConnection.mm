@interface ASSyncConnection
- (ASSyncConnection)initWithDelegate:(id)a3;
- (BOOL)_getChunkInfoWithHandler:(id)a3 batchSize:(int64_t)a4 lastAnchor:(id)a5 updates:(id)a6 deletes:(id)a7 post:(id *)a8 targetIsLocal:(BOOL)a9;
- (BOOL)_infoIsValid:(id)a3 forPreAnchor:(id)a4;
- (BOOL)_sendChunkWithUpdates:(id)a3 deletes:(id)a4 pre:(id)a5 post:(id)a6 validity:(id)a7 forRequestUUID:(id)a8;
- (int64_t)defaultChunkBatchSize;
- (void)runSyncWithHandler:(id)a3 info:(id)a4 forRequestUUID:(id)a5;
@end

@implementation ASSyncConnection

- (void)runSyncWithHandler:(id)a3 info:(id)a4 forRequestUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v60 = a5;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = v11;
  v13 = @"unknown";
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  v55 = [v9 reasons];
  v15 = [v55 allObjects];
  v16 = [v15 componentsJoinedByString:@"+"];

  v17 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v67 = "[ASSyncConnection runSyncWithHandler:info:forRequestUUID:]";
    v68 = 2112;
    v69 = v14;
    v70 = 2112;
    v71 = v9;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s %@ Beginning sync with info %@", buf, 0x20u);
  }

  v18 = @"Assistant Service Event";
  v64[0] = @"Assistant Service Event";
  v64[1] = @"SyncHandler";
  v65[0] = @"Sync start";
  v65[1] = v14;
  v56 = v14;
  v64[2] = @"SyncReasons";
  v54 = v16;
  v65[2] = v16;
  v19 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:3];
  sub_100001FA8(v19);

  v20 = objc_alloc_init(ASSyncBeginInfo);
  v21 = [v9 anchor];
  v22 = [v9 validity];
  v23 = [v9 count];
  v24 = [v9 key];
  [(ASSyncBeginInfo *)v20 setAnchor:v21];
  [(ASSyncBeginInfo *)v20 setValidity:v22];
  [(ASSyncBeginInfo *)v20 setCount:v23];
  [(ASSyncBeginInfo *)v20 setKey:v24];
  v25 = [v9 appMetadata];
  [(ASSyncBeginInfo *)v20 setAppMetadata:v25];

  v26 = [v9 reasons];
  [(ASSyncBeginInfo *)v20 setReasons:v26];

  v27 = objc_autoreleasePoolPush();
  v57 = v24;
  if (objc_opt_respondsToSelector())
  {
    v28 = [[ASSyncConfiguration alloc] initWithConfigurationPlistForSyncKey:v24];
    [v8 beginSyncWithInfo:v20 configuration:v28];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if (objc_opt_respondsToSelector())
      {
        [v8 beginSyncWithAnchor:v21 validity:v22 count:v23 forKey:v24 beginInfo:v20];
      }

      else
      {
        [v8 beginSyncWithAnchor:v21 validity:v22 forKey:v24 beginInfo:v20];
      }

      goto LABEL_10;
    }

    v28 = [[ASSyncConfiguration alloc] initWithConfigurationPlistForSyncKey:v24];
    [v8 beginSyncWithAnchor:v21 validity:v22 count:v23 forKey:v24 beginInfo:v20 configuration:v28];
  }

LABEL_10:
  objc_autoreleasePoolPop(v27);
  v29 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v67 = "[ASSyncConnection runSyncWithHandler:info:forRequestUUID:]";
    v68 = 2112;
    v69 = v20;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s BeginSyncInfo: %@", buf, 0x16u);
  }

  v53 = v20;
  v30 = [(ASSyncBeginInfo *)v20 resetValidity];
  v58 = v30;
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v22;
  }

  v59 = v31;
  v51 = v22;
  if (objc_opt_respondsToSelector())
  {
    v32 = [v8 _syncBatchSize];
  }

  else
  {
    v32 = [(ASSyncConnection *)self defaultChunkBatchSize];
  }

  v33 = [[NSMutableArray alloc] initWithCapacity:v32];
  v34 = [[NSMutableArray alloc] initWithCapacity:v32];
  v52 = v21;
  if (v58)
  {
    v35 = 0;
  }

  else
  {
    v35 = v21;
  }

  v36 = v35;
  do
  {
    v36 = v36;
    v37 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v67 = "[ASSyncConnection runSyncWithHandler:info:forRequestUUID:]";
      v68 = 2112;
      v69 = v36;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s Gathering chunk with pre %@", buf, 0x16u);
    }

    v61 = v36;
    v38 = v9;
    LOBYTE(v50) = [v9 targetIsLocal];
    v39 = v8;
    v40 = [(ASSyncConnection *)self _getChunkInfoWithHandler:v8 batchSize:v32 lastAnchor:v36 updates:v33 deletes:v34 post:&v61 targetIsLocal:v50];
    v41 = v61;

    if (v40)
    {
      v42 = AFSiriLogContextSync;
      if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v67 = "[ASSyncConnection runSyncWithHandler:info:forRequestUUID:]";
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s Last chunk!", buf, 0xCu);
      }
    }

    if (v36)
    {
      if (([(ASSyncBeginInfo *)v36 isEqualToString:v41]& 1) != 0)
      {
        goto LABEL_29;
      }
    }

    else if (!(v41 | v58))
    {
LABEL_29:
      v43 = AFSiriLogContextSync;
      if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v67 = "[ASSyncConnection runSyncWithHandler:info:forRequestUUID:]";
        v68 = 2112;
        v69 = v36;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s Ignoring empty sync chunk for anchors pre == post %@", buf, 0x16u);
      }

      goto LABEL_33;
    }

    if (![(ASSyncConnection *)self _sendChunkWithUpdates:v33 deletes:v34 pre:v36 post:v41 validity:v59 forRequestUUID:v60])
    {
      v46 = AFSiriLogContextSync;
      if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v67 = "[ASSyncConnection runSyncWithHandler:info:forRequestUUID:]";
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%s assistantd told us to stop sending chunks", buf, 0xCu);
      }

      goto LABEL_37;
    }

LABEL_33:
    if ((v40 & 1) == 0)
    {
      v44 = v41;

      v45 = 1;
      v36 = v44;
      goto LABEL_38;
    }

LABEL_37:
    v45 = 0;
LABEL_38:
    [v33 removeAllObjects];
    [v34 removeAllObjects];

    v8 = v39;
    v9 = v38;
  }

  while ((v45 & 1) != 0);
  v47 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v67 = "[ASSyncConnection runSyncWithHandler:info:forRequestUUID:]";
    v68 = 2112;
    v69 = v56;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s %@ Finishing sync", buf, 0x16u);
  }

  v48 = @"Assistant Service Event";
  v62[0] = @"Assistant Service Event";
  v62[1] = @"SyncHandler";
  v63[0] = @"Sync finish";
  v63[1] = v56;
  v62[2] = @"SyncReasons";
  v63[2] = v54;
  v49 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:3];
  sub_100001FA8(v49);

  if (objc_opt_respondsToSelector())
  {
    [v8 syncDidEnd];
  }
}

- (int64_t)defaultChunkBatchSize
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.assistant"];
  v4 = [v3 objectForKey:@"Sync Chunk Batch Size"];

  if (v4)
  {
    v5 = [v4 integerValue];
    if ((v5 - 1) >= 0x270F)
    {
      v6 = 100;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 100;
  }

  return v6;
}

- (BOOL)_infoIsValid:(id)a3 forPreAnchor:(id)a4
{
  v4 = [a3 object];
  v5 = v4;
  if (v4 && ([v4 identifier], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v8 = AFSiriLogContextSync;
    if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[ASSyncConnection _infoIsValid:forPreAnchor:]";
      v12 = 2112;
      v13 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Synced object has no identifier! %@", &v10, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_getChunkInfoWithHandler:(id)a3 batchSize:(int64_t)a4 lastAnchor:(id)a5 updates:(id)a6 deletes:(id)a7 post:(id *)a8 targetIsLocal:(BOOL)a9
{
  v14 = a3;
  v15 = a5;
  v40 = a6;
  v39 = a7;
  v16 = objc_alloc_init(ASSyncChangeInfo);
  if (a4 < 1)
  {
    v30 = 0;
  }

  else
  {
    v38 = a8;
    v17 = 0;
    while (1)
    {
      [(ASSyncChangeInfo *)v16 setObject:0];
      [(ASSyncChangeInfo *)v16 setIsDelete:0];
      [(ASSyncChangeInfo *)v16 setPostAnchor:0];
      v18 = objc_autoreleasePoolPush();
      [v14 getChangeAfterAnchor:v15 changeInfo:v16];
      objc_autoreleasePoolPop(v18);
      v19 = [(ASSyncChangeInfo *)v16 object];
      v20 = [(ASSyncChangeInfo *)v16 isDelete];
      v21 = [(ASSyncChangeInfo *)v16 postAnchor];
      v22 = AFSiriLogContextSync;
      if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
      {
        v23 = v22;
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 136315650;
        v43 = "[ASSyncConnection _getChunkInfoWithHandler:batchSize:lastAnchor:updates:deletes:post:targetIsLocal:]";
        v44 = 2112;
        v45 = v25;
        v46 = 2112;
        v47 = v16;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s %@ change info %@", buf, 0x20u);
      }

      if (!v21 || ([v15 isEqualToString:v21] & 1) != 0)
      {
        a8 = v38;
        goto LABEL_17;
      }

      if (![(ASSyncConnection *)self _infoIsValid:v16 forPreAnchor:v15])
      {
        break;
      }

      v26 = [v19 properties];
      v27 = [v26 count];

      if (v27)
      {
        if (v20)
        {
          v28 = v39;
        }

        else
        {
          v28 = v40;
        }

        v29 = [v19 dictionary];
        [v28 addObject:v29];

        ++v17;
      }

      v15 = v21;
      if (v17 >= a4)
      {
        v30 = 0;
        v15 = v21;
        a8 = v38;
        goto LABEL_18;
      }
    }

    v32 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v43 = "[ASSyncConnection _getChunkInfoWithHandler:batchSize:lastAnchor:updates:deletes:post:targetIsLocal:]";
      v44 = 2114;
      v45 = v14;
      v46 = 2112;
      v47 = v16;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s Sync plugin %{public}@ gave bad sync info %@", buf, 0x20u);
    }

    a8 = v38;
    if (AFIsInternalInstall())
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = [NSString stringWithFormat:@"Sync handler %@ return bad object %@", v34, v36];

      WriteStackshotReport_async();
    }

LABEL_17:

    v30 = 1;
  }

LABEL_18:
  *a8 = [v15 copy];

  return v30;
}

- (BOOL)_sendChunkWithUpdates:(id)a3 deletes:(id)a4 pre:(id)a5 post:(id)a6 validity:(id)a7 forRequestUUID:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    v21 = v20;
    v24 = 136316162;
    v25 = "[ASSyncConnection _sendChunkWithUpdates:deletes:pre:post:validity:forRequestUUID:]";
    v26 = 2048;
    v27 = [v14 count];
    v28 = 2048;
    v29 = [v15 count];
    v30 = 2112;
    v31 = v16;
    v32 = 2112;
    v33 = v17;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Sending chunk with %lu updates %lu deletes. Anchors (%@, %@)", &v24, 0x34u);
  }

  v22 = [(ASSyncConnectionDelegate *)self->_delegate sendSyncChunksWithPreAnchor:v16 postAnchor:v17 updates:v14 deletes:v15 validity:v18 forRequestUUID:v19];

  return v22 ^ 1;
}

- (ASSyncConnection)initWithDelegate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASSyncConnection;
  v6 = [(ASSyncConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
  }

  return v7;
}

@end