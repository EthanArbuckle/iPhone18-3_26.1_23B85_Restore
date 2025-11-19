@interface AXMTVideoFilePlayManager
+ (AXMTVideoFilePlayManager)shared;
- (AXMTVideoFilePlayManager)init;
- (id)fileURLForMotionTrackingVideoFileInput:(id)a3;
- (void)pausePlaybackForCurrentVideo;
- (void)playVideoAtURL:(id)a3 onMotionTrackingVideoFileInput:(id)a4 completionHandler:(id)a5;
- (void)videoPlayedWithInput:(id)a3 success:(BOOL)a4 error:(id)a5;
@end

@implementation AXMTVideoFilePlayManager

+ (AXMTVideoFilePlayManager)shared
{
  if (qword_1000545F0 != -1)
  {
    sub_100021530();
  }

  v3 = qword_1000545E8;

  return v3;
}

- (AXMTVideoFilePlayManager)init
{
  v8.receiver = self;
  v8.super_class = AXMTVideoFilePlayManager;
  v2 = [(AXMTVideoFilePlayManager *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    videoFileInputURLsByInputUniqueID = v2->__videoFileInputURLsByInputUniqueID;
    v2->__videoFileInputURLsByInputUniqueID = v3;

    v5 = +[NSMutableDictionary dictionary];
    completionHandlersByInputUniqueID = v2->__completionHandlersByInputUniqueID;
    v2->__completionHandlersByInputUniqueID = v5;
  }

  return v2;
}

- (void)playVideoAtURL:(id)a3 onMotionTrackingVideoFileInput:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &stru_100049128;
  }

  if (v8 && v9 && ([v9 uniqueIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v40 = 0;
    v13 = [AXMTVideoFileReader fileURLContainsSuitablePlayableVideo:v8 error:&v40];
    v14 = v40;
    if ((v13 & 1) == 0)
    {
      v11->invoke(v11, 0, v14);
      goto LABEL_19;
    }

    v15 = [(AXMTVideoFilePlayManager *)self _completionHandlersByInputUniqueID];
    v16 = [v9 uniqueIdentifier];
    v17 = [v15 objectForKeyedSubscript:v16];

    if (v17)
    {
      v18 = AXSSLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100021544();
      }

      v19 = [(AXMTVideoFilePlayManager *)self _completionHandlersByInputUniqueID];
      v20 = [v9 uniqueIdentifier];
      v21 = [v19 objectForKeyedSubscript:v20];

      v22 = AXSSMotionTrackingErrorDomain;
      v41 = NSLocalizedDescriptionKey;
      v42 = @"Play has been stopped!";
      v23 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v24 = [NSError errorWithDomain:v22 code:0 userInfo:v23];
      (v21)[2](v21, 0, v24);

      v25 = [(AXMTVideoFilePlayManager *)self _completionHandlersByInputUniqueID];
      v26 = [v9 uniqueIdentifier];
      [v25 removeObjectForKey:v26];
    }

    v27 = [(AXMTVideoFilePlayManager *)self _videoFileInputURLsByInputUniqueID];
    v28 = [v9 uniqueIdentifier];
    v29 = [v27 objectForKeyedSubscript:v28];

    if (v29)
    {
      v30 = [(AXMTVideoFilePlayManager *)self _videoFileInputURLsByInputUniqueID];
      v31 = [v9 uniqueIdentifier];
      [v30 removeObjectForKey:v31];
    }

    v32 = AXSSLogForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_1000215C4();
    }

    v33 = objc_retainBlock(v11);
    v34 = [(AXMTVideoFilePlayManager *)self _completionHandlersByInputUniqueID];
    v35 = [v9 uniqueIdentifier];
    [v34 setObject:v33 forKeyedSubscript:v35];

    v36 = [(AXMTVideoFilePlayManager *)self _videoFileInputURLsByInputUniqueID];
    v37 = [v9 uniqueIdentifier];
    [v36 setObject:v8 forKeyedSubscript:v37];

    v38 = +[NSNotificationCenter defaultCenter];
    [v38 postNotificationName:@"AXMTVideoFilePlayManagerPlayNotification" object:v9];
  }

  else
  {
    v39 = AXSSMotionTrackingErrorDomain;
    v43 = NSLocalizedDescriptionKey;
    v44 = @"Invalid videoFileInput or unique identifier!";
    v14 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v38 = [NSError errorWithDomain:v39 code:0 userInfo:v14];
    v11->invoke(v11, 0, v38);
  }

LABEL_19:
}

- (void)pausePlaybackForCurrentVideo
{
  v2 = AXSSLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100021650(v2);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"AXMTVideoFilePlayManagerPauseNotification" object:0];
}

- (void)videoPlayedWithInput:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(AXMTVideoFilePlayManager *)self _videoFileInputURLsByInputUniqueID];
  v11 = [v8 uniqueIdentifier];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = AXSSLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v21 = 136315906;
      v22 = "[AXMTVideoFilePlayManager videoPlayedWithInput:success:error:]";
      v23 = 2112;
      v24 = v8;
      v25 = 1024;
      v26 = v6;
      v27 = 2112;
      v28 = v9;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s: Completed play %@ %d %@", &v21, 0x26u);
    }

    v14 = [(AXMTVideoFilePlayManager *)self _videoFileInputURLsByInputUniqueID];
    v15 = [v8 uniqueIdentifier];
    [v14 removeObjectForKey:v15];
  }

  v16 = [(AXMTVideoFilePlayManager *)self _completionHandlersByInputUniqueID];
  v17 = [v8 uniqueIdentifier];
  v18 = [v16 objectForKeyedSubscript:v17];

  if (v18)
  {
    (v18)[2](v18, v6, v9);
    v19 = [(AXMTVideoFilePlayManager *)self _completionHandlersByInputUniqueID];
    v20 = [v8 uniqueIdentifier];
    [v19 removeObjectForKey:v20];
  }
}

- (id)fileURLForMotionTrackingVideoFileInput:(id)a3
{
  if (a3)
  {
    v4 = [a3 uniqueIdentifier];
    v5 = v4;
    if (v4 && [v4 length])
    {
      v6 = [(AXMTVideoFilePlayManager *)self _videoFileInputURLsByInputUniqueID];
      v7 = [v6 objectForKeyedSubscript:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end