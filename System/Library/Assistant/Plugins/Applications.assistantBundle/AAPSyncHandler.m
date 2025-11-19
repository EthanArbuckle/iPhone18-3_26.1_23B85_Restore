@interface AAPSyncHandler
+ (void)_checkIfResetIsNeededForKey:(id)a3 withStartAnchorString:(id)a4 validity:(id)a5 lastState:(id)a6 completion:(id)a7;
- (AAPSyncHandler)init;
- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 count:(int64_t)a5 forKey:(id)a6 beginInfo:(id)a7 configuration:(id)a8;
- (void)dealloc;
- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4;
- (void)sourceIsReady:(id)a3;
- (void)syncDidEnd;
@end

@implementation AAPSyncHandler

- (AAPSyncHandler)init
{
  v6.receiver = self;
  v6.super_class = AAPSyncHandler;
  v2 = [(AAPSyncHandler *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create([[NSString UTF8String:@"%@.state"] stringWithFormat:?];
    v2->_stateQueue = v3;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_37C0;
    block[3] = &unk_20840;
    block[4] = v2;
    dispatch_async(v3, block);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_stateQueue);

  v3.receiver = self;
  v3.super_class = AAPSyncHandler;
  [(AAPSyncHandler *)&v3 dealloc];
}

+ (void)_checkIfResetIsNeededForKey:(id)a3 withStartAnchorString:(id)a4 validity:(id)a5 lastState:(id)a6 completion:(id)a7
{
  v51 = 0;
  v12 = [AAPSyncAnchor anchorFromStringRepresentation:a4 error:&v51];
  v13 = +[LSApplicationWorkspace defaultWorkspace];
  if (v13)
  {
    *buf = 0;
    v50 = 0;
    [v13 getKnowledgeUUID:buf andSequenceNumber:&v50];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [objc_msgSend(*buf "UUIDString")];
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_F9B4(buf);
      }

      v14 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = +[AAPSyncPrimitiveAnchor anchorFromIndex:](AAPSyncPrimitiveAnchor, "anchorFromIndex:", [v50 unsignedIntegerValue]);
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_FA28(&v50);
      }

      v16 = 0;
    }
  }

  else
  {
    v15 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_FA9C(v15);
    }

    v16 = 0;
    v14 = 0;
  }

  if (([@"com.apple.siri.applications" isEqualToString:a3] & 1) == 0)
  {
    [NSException raise:@"wrong syncKey" format:@"expecting %@", @"com.apple.siri.applications"];
    goto LABEL_39;
  }

  if (a4 && !v12)
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_FB20(&v51);
    }

    goto LABEL_39;
  }

  if (!v14 || ![v14 isEqualToString:{objc_msgSend(a6, "validity")}] || !objc_msgSend(v14, "isEqualToString:", a5))
  {
    v46 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      v48 = [a6 validity];
      *buf = 136315906;
      *&buf[4] = "+[AAPSyncHandler _checkIfResetIsNeededForKey:withStartAnchorString:validity:lastState:completion:]";
      v53 = 2114;
      v54 = v14;
      v55 = 2114;
      v56 = v48;
      v57 = 2114;
      v58 = a5;
      v43 = "%s com.apple.siri.applications: validity check failed: MI-'%{public}@' Internal-'%{public}@' Sync-'%{public}@'";
      v44 = v46;
      v45 = 42;
      goto LABEL_44;
    }

LABEL_39:
    v12 = 0;
    v47 = 1;
    goto LABEL_40;
  }

  v17 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
  {
    sub_FB94(v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v25 = [a6 version];
  v26 = AFSiriLogContextPlugin;
  v27 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG);
  if (v25 != &dword_4)
  {
    if (v27)
    {
      sub_FC0C(a6);
    }

    goto LABEL_39;
  }

  if (v27)
  {
    sub_FCB0(v26, v28, v29, v30, v31, v32, v33, v34);
  }

  v35 = [a6 keyAnchor];
  v36 = [v35 isNewerThanAnchor:v16];
  if (!v16 || (v36 & 1) != 0)
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_FD28();
    }

    goto LABEL_39;
  }

  v49 = v35;
  v37 = [a6 startAnchor];
  v38 = [v12 isOlderThanAnchor:v37];
  v39 = [v12 isNewerThanAnchor:v16];
  if (v37)
  {
    v40 = 1;
  }

  else
  {
    v40 = (v12 != 0) & v39;
  }

  v41 = AFSiriLogContextPlugin;
  v42 = os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG);
  if (v40 == 1 && ((v38 | v39) & 1) != 0)
  {
    if (v42)
    {
      *buf = 136316162;
      *&buf[4] = "+[AAPSyncHandler _checkIfResetIsNeededForKey:withStartAnchorString:validity:lastState:completion:]";
      v53 = 2114;
      v54 = v37;
      v55 = 2114;
      v56 = v12;
      v57 = 2114;
      v58 = v49;
      v59 = 2114;
      v60 = v16;
      v43 = "%s com.apple.siri.applications: startAnchor check failed: lastStart=%{public}@ start=%{public}@ lastKey=%{public}@ key=%{public}@";
      v44 = v41;
      v45 = 52;
LABEL_44:
      _os_log_debug_impl(&dword_0, v44, OS_LOG_TYPE_DEBUG, v43, buf, v45);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if (v42)
  {
    *buf = 136316162;
    *&buf[4] = "+[AAPSyncHandler _checkIfResetIsNeededForKey:withStartAnchorString:validity:lastState:completion:]";
    v53 = 2114;
    v54 = v37;
    v55 = 2114;
    v56 = v12;
    v57 = 2114;
    v58 = v49;
    v59 = 2114;
    v60 = v16;
    _os_log_debug_impl(&dword_0, v41, OS_LOG_TYPE_DEBUG, "%s com.apple.siri.applications: startAnchor checks out:  lastStart=%{public}@ start=%{public}@ lastKey=%{public}@ key=%{public}@", buf, 0x34u);
  }

  v47 = 0;
LABEL_40:
  (*(a7 + 2))(a7, v47, v12, v16, v14);
}

- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 count:(int64_t)a5 forKey:(id)a6 beginInfo:(id)a7 configuration:(id)a8
{
  stateQueue = self->_stateQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3E28;
  v9[3] = &unk_20890;
  v9[4] = self;
  v9[5] = a6;
  v9[6] = a3;
  v9[7] = a4;
  v9[8] = a7;
  v9[9] = a8;
  dispatch_sync(stateQueue, v9);
}

- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4
{
  v12 = 0;
  v7 = [AAPSyncAnchor anchorFromStringRepresentation:a3 error:&v12];
  v8 = v7;
  if (a3 && !v7)
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_FEE0(&v12);
    }

LABEL_5:
    [a4 setPostAnchor:a3];
    return;
  }

  processor = self->_processor;
  if (!processor)
  {
    source = self->_source;
    v11 = AFSiriLogContextPlugin;
    if (source)
    {
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
      {
        sub_FF54(v11);
      }
    }

    else if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[AAPSyncHandler getChangeAfterAnchor:changeInfo:]";
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: nothing to do - terminating sync", buf, 0xCu);
    }

    goto LABEL_5;
  }

  [(AAPSyncMetaDataProcessor *)processor processNextChange:a4 afterAnchor:v8];
}

- (void)syncDidEnd
{
  v2 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[AAPSyncHandler syncDidEnd]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: sync did end", &v3, 0xCu);
  }
}

- (void)sourceIsReady:(id)a3
{
  stateQueue = self->_stateQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4594;
  v4[3] = &unk_208B8;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(stateQueue, v4);
}

@end