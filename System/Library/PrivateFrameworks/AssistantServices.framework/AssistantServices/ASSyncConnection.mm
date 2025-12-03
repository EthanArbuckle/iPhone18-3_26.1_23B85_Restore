@interface ASSyncConnection
- (ASSyncConnection)initWithDelegate:(id)delegate;
- (BOOL)_getChunkInfoWithHandler:(id)handler batchSize:(int64_t)size lastAnchor:(id)anchor updates:(id)updates deletes:(id)deletes post:(id *)post targetIsLocal:(BOOL)local;
- (BOOL)_infoIsValid:(id)valid forPreAnchor:(id)anchor;
- (BOOL)_sendChunkWithUpdates:(id)updates deletes:(id)deletes pre:(id)pre post:(id)post validity:(id)validity forRequestUUID:(id)d;
- (int64_t)defaultChunkBatchSize;
- (void)runSyncWithHandler:(id)handler info:(id)info forRequestUUID:(id)d;
@end

@implementation ASSyncConnection

- (void)runSyncWithHandler:(id)handler info:(id)info forRequestUUID:(id)d
{
  handlerCopy = handler;
  infoCopy = info;
  dCopy = d;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = v11;
  v13 = @"unknown";
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  reasons = [infoCopy reasons];
  allObjects = [reasons allObjects];
  v16 = [allObjects componentsJoinedByString:@"+"];

  v17 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v67 = "[ASSyncConnection runSyncWithHandler:info:forRequestUUID:]";
    v68 = 2112;
    v69 = v14;
    v70 = 2112;
    v71 = infoCopy;
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
  anchor = [infoCopy anchor];
  validity = [infoCopy validity];
  v23 = [infoCopy count];
  v24 = [infoCopy key];
  [(ASSyncBeginInfo *)v20 setAnchor:anchor];
  [(ASSyncBeginInfo *)v20 setValidity:validity];
  [(ASSyncBeginInfo *)v20 setCount:v23];
  [(ASSyncBeginInfo *)v20 setKey:v24];
  appMetadata = [infoCopy appMetadata];
  [(ASSyncBeginInfo *)v20 setAppMetadata:appMetadata];

  reasons2 = [infoCopy reasons];
  [(ASSyncBeginInfo *)v20 setReasons:reasons2];

  v27 = objc_autoreleasePoolPush();
  v57 = v24;
  if (objc_opt_respondsToSelector())
  {
    v28 = [[ASSyncConfiguration alloc] initWithConfigurationPlistForSyncKey:v24];
    [handlerCopy beginSyncWithInfo:v20 configuration:v28];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if (objc_opt_respondsToSelector())
      {
        [handlerCopy beginSyncWithAnchor:anchor validity:validity count:v23 forKey:v24 beginInfo:v20];
      }

      else
      {
        [handlerCopy beginSyncWithAnchor:anchor validity:validity forKey:v24 beginInfo:v20];
      }

      goto LABEL_10;
    }

    v28 = [[ASSyncConfiguration alloc] initWithConfigurationPlistForSyncKey:v24];
    [handlerCopy beginSyncWithAnchor:anchor validity:validity count:v23 forKey:v24 beginInfo:v20 configuration:v28];
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
  resetValidity = [(ASSyncBeginInfo *)v20 resetValidity];
  v58 = resetValidity;
  if (resetValidity)
  {
    v31 = resetValidity;
  }

  else
  {
    v31 = validity;
  }

  v59 = v31;
  v51 = validity;
  if (objc_opt_respondsToSelector())
  {
    _syncBatchSize = [handlerCopy _syncBatchSize];
  }

  else
  {
    _syncBatchSize = [(ASSyncConnection *)self defaultChunkBatchSize];
  }

  v33 = [[NSMutableArray alloc] initWithCapacity:_syncBatchSize];
  v34 = [[NSMutableArray alloc] initWithCapacity:_syncBatchSize];
  v52 = anchor;
  if (v58)
  {
    v35 = 0;
  }

  else
  {
    v35 = anchor;
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
    v38 = infoCopy;
    LOBYTE(v50) = [infoCopy targetIsLocal];
    v39 = handlerCopy;
    v40 = [(ASSyncConnection *)self _getChunkInfoWithHandler:handlerCopy batchSize:_syncBatchSize lastAnchor:v36 updates:v33 deletes:v34 post:&v61 targetIsLocal:v50];
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

    if (![(ASSyncConnection *)self _sendChunkWithUpdates:v33 deletes:v34 pre:v36 post:v41 validity:v59 forRequestUUID:dCopy])
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

    handlerCopy = v39;
    infoCopy = v38;
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
    [handlerCopy syncDidEnd];
  }
}

- (int64_t)defaultChunkBatchSize
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.assistant"];
  v4 = [v3 objectForKey:@"Sync Chunk Batch Size"];

  if (v4)
  {
    integerValue = [v4 integerValue];
    if ((integerValue - 1) >= 0x270F)
    {
      v6 = 100;
    }

    else
    {
      v6 = integerValue;
    }
  }

  else
  {
    v6 = 100;
  }

  return v6;
}

- (BOOL)_infoIsValid:(id)valid forPreAnchor:(id)anchor
{
  object = [valid object];
  v5 = object;
  if (object && ([object identifier], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
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

- (BOOL)_getChunkInfoWithHandler:(id)handler batchSize:(int64_t)size lastAnchor:(id)anchor updates:(id)updates deletes:(id)deletes post:(id *)post targetIsLocal:(BOOL)local
{
  handlerCopy = handler;
  anchorCopy = anchor;
  updatesCopy = updates;
  deletesCopy = deletes;
  v16 = objc_alloc_init(ASSyncChangeInfo);
  if (size < 1)
  {
    v30 = 0;
  }

  else
  {
    postCopy = post;
    v17 = 0;
    while (1)
    {
      [(ASSyncChangeInfo *)v16 setObject:0];
      [(ASSyncChangeInfo *)v16 setIsDelete:0];
      [(ASSyncChangeInfo *)v16 setPostAnchor:0];
      v18 = objc_autoreleasePoolPush();
      [handlerCopy getChangeAfterAnchor:anchorCopy changeInfo:v16];
      objc_autoreleasePoolPop(v18);
      object = [(ASSyncChangeInfo *)v16 object];
      isDelete = [(ASSyncChangeInfo *)v16 isDelete];
      postAnchor = [(ASSyncChangeInfo *)v16 postAnchor];
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

      if (!postAnchor || ([anchorCopy isEqualToString:postAnchor] & 1) != 0)
      {
        post = postCopy;
        goto LABEL_17;
      }

      if (![(ASSyncConnection *)self _infoIsValid:v16 forPreAnchor:anchorCopy])
      {
        break;
      }

      properties = [object properties];
      v27 = [properties count];

      if (v27)
      {
        if (isDelete)
        {
          v28 = deletesCopy;
        }

        else
        {
          v28 = updatesCopy;
        }

        dictionary = [object dictionary];
        [v28 addObject:dictionary];

        ++v17;
      }

      anchorCopy = postAnchor;
      if (v17 >= size)
      {
        v30 = 0;
        anchorCopy = postAnchor;
        post = postCopy;
        goto LABEL_18;
      }
    }

    v32 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v43 = "[ASSyncConnection _getChunkInfoWithHandler:batchSize:lastAnchor:updates:deletes:post:targetIsLocal:]";
      v44 = 2114;
      v45 = handlerCopy;
      v46 = 2112;
      v47 = v16;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s Sync plugin %{public}@ gave bad sync info %@", buf, 0x20u);
    }

    post = postCopy;
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
  *post = [anchorCopy copy];

  return v30;
}

- (BOOL)_sendChunkWithUpdates:(id)updates deletes:(id)deletes pre:(id)pre post:(id)post validity:(id)validity forRequestUUID:(id)d
{
  updatesCopy = updates;
  deletesCopy = deletes;
  preCopy = pre;
  postCopy = post;
  validityCopy = validity;
  dCopy = d;
  v20 = AFSiriLogContextSync;
  if (os_log_type_enabled(AFSiriLogContextSync, OS_LOG_TYPE_INFO))
  {
    v21 = v20;
    v24 = 136316162;
    v25 = "[ASSyncConnection _sendChunkWithUpdates:deletes:pre:post:validity:forRequestUUID:]";
    v26 = 2048;
    v27 = [updatesCopy count];
    v28 = 2048;
    v29 = [deletesCopy count];
    v30 = 2112;
    v31 = preCopy;
    v32 = 2112;
    v33 = postCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Sending chunk with %lu updates %lu deletes. Anchors (%@, %@)", &v24, 0x34u);
  }

  v22 = [(ASSyncConnectionDelegate *)self->_delegate sendSyncChunksWithPreAnchor:preCopy postAnchor:postCopy updates:updatesCopy deletes:deletesCopy validity:validityCopy forRequestUUID:dCopy];

  return v22 ^ 1;
}

- (ASSyncConnection)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = ASSyncConnection;
  v6 = [(ASSyncConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
  }

  return v7;
}

@end