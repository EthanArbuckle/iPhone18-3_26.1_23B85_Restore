@interface AXMTVideoFilePlayManager
+ (AXMTVideoFilePlayManager)shared;
- (AXMTVideoFilePlayManager)init;
- (id)fileURLForMotionTrackingVideoFileInput:(id)input;
- (void)pausePlaybackForCurrentVideo;
- (void)playVideoAtURL:(id)l onMotionTrackingVideoFileInput:(id)input completionHandler:(id)handler;
- (void)videoPlayedWithInput:(id)input success:(BOOL)success error:(id)error;
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

- (void)playVideoAtURL:(id)l onMotionTrackingVideoFileInput:(id)input completionHandler:(id)handler
{
  lCopy = l;
  inputCopy = input;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11 = handlerCopy;
  }

  else
  {
    v11 = &stru_100049128;
  }

  if (lCopy && inputCopy && ([inputCopy uniqueIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v40 = 0;
    v13 = [AXMTVideoFileReader fileURLContainsSuitablePlayableVideo:lCopy error:&v40];
    v14 = v40;
    if ((v13 & 1) == 0)
    {
      v11->invoke(v11, 0, v14);
      goto LABEL_19;
    }

    _completionHandlersByInputUniqueID = [(AXMTVideoFilePlayManager *)self _completionHandlersByInputUniqueID];
    uniqueIdentifier = [inputCopy uniqueIdentifier];
    v17 = [_completionHandlersByInputUniqueID objectForKeyedSubscript:uniqueIdentifier];

    if (v17)
    {
      v18 = AXSSLogForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100021544();
      }

      _completionHandlersByInputUniqueID2 = [(AXMTVideoFilePlayManager *)self _completionHandlersByInputUniqueID];
      uniqueIdentifier2 = [inputCopy uniqueIdentifier];
      v21 = [_completionHandlersByInputUniqueID2 objectForKeyedSubscript:uniqueIdentifier2];

      v22 = AXSSMotionTrackingErrorDomain;
      v41 = NSLocalizedDescriptionKey;
      v42 = @"Play has been stopped!";
      v23 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v24 = [NSError errorWithDomain:v22 code:0 userInfo:v23];
      (v21)[2](v21, 0, v24);

      _completionHandlersByInputUniqueID3 = [(AXMTVideoFilePlayManager *)self _completionHandlersByInputUniqueID];
      uniqueIdentifier3 = [inputCopy uniqueIdentifier];
      [_completionHandlersByInputUniqueID3 removeObjectForKey:uniqueIdentifier3];
    }

    _videoFileInputURLsByInputUniqueID = [(AXMTVideoFilePlayManager *)self _videoFileInputURLsByInputUniqueID];
    uniqueIdentifier4 = [inputCopy uniqueIdentifier];
    v29 = [_videoFileInputURLsByInputUniqueID objectForKeyedSubscript:uniqueIdentifier4];

    if (v29)
    {
      _videoFileInputURLsByInputUniqueID2 = [(AXMTVideoFilePlayManager *)self _videoFileInputURLsByInputUniqueID];
      uniqueIdentifier5 = [inputCopy uniqueIdentifier];
      [_videoFileInputURLsByInputUniqueID2 removeObjectForKey:uniqueIdentifier5];
    }

    v32 = AXSSLogForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      sub_1000215C4();
    }

    v33 = objc_retainBlock(v11);
    _completionHandlersByInputUniqueID4 = [(AXMTVideoFilePlayManager *)self _completionHandlersByInputUniqueID];
    uniqueIdentifier6 = [inputCopy uniqueIdentifier];
    [_completionHandlersByInputUniqueID4 setObject:v33 forKeyedSubscript:uniqueIdentifier6];

    _videoFileInputURLsByInputUniqueID3 = [(AXMTVideoFilePlayManager *)self _videoFileInputURLsByInputUniqueID];
    uniqueIdentifier7 = [inputCopy uniqueIdentifier];
    [_videoFileInputURLsByInputUniqueID3 setObject:lCopy forKeyedSubscript:uniqueIdentifier7];

    v38 = +[NSNotificationCenter defaultCenter];
    [v38 postNotificationName:@"AXMTVideoFilePlayManagerPlayNotification" object:inputCopy];
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

- (void)videoPlayedWithInput:(id)input success:(BOOL)success error:(id)error
{
  successCopy = success;
  inputCopy = input;
  errorCopy = error;
  _videoFileInputURLsByInputUniqueID = [(AXMTVideoFilePlayManager *)self _videoFileInputURLsByInputUniqueID];
  uniqueIdentifier = [inputCopy uniqueIdentifier];
  v12 = [_videoFileInputURLsByInputUniqueID objectForKeyedSubscript:uniqueIdentifier];

  if (v12)
  {
    v13 = AXSSLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v21 = 136315906;
      v22 = "[AXMTVideoFilePlayManager videoPlayedWithInput:success:error:]";
      v23 = 2112;
      v24 = inputCopy;
      v25 = 1024;
      v26 = successCopy;
      v27 = 2112;
      v28 = errorCopy;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s: Completed play %@ %d %@", &v21, 0x26u);
    }

    _videoFileInputURLsByInputUniqueID2 = [(AXMTVideoFilePlayManager *)self _videoFileInputURLsByInputUniqueID];
    uniqueIdentifier2 = [inputCopy uniqueIdentifier];
    [_videoFileInputURLsByInputUniqueID2 removeObjectForKey:uniqueIdentifier2];
  }

  _completionHandlersByInputUniqueID = [(AXMTVideoFilePlayManager *)self _completionHandlersByInputUniqueID];
  uniqueIdentifier3 = [inputCopy uniqueIdentifier];
  v18 = [_completionHandlersByInputUniqueID objectForKeyedSubscript:uniqueIdentifier3];

  if (v18)
  {
    (v18)[2](v18, successCopy, errorCopy);
    _completionHandlersByInputUniqueID2 = [(AXMTVideoFilePlayManager *)self _completionHandlersByInputUniqueID];
    uniqueIdentifier4 = [inputCopy uniqueIdentifier];
    [_completionHandlersByInputUniqueID2 removeObjectForKey:uniqueIdentifier4];
  }
}

- (id)fileURLForMotionTrackingVideoFileInput:(id)input
{
  if (input)
  {
    uniqueIdentifier = [input uniqueIdentifier];
    v5 = uniqueIdentifier;
    if (uniqueIdentifier && [uniqueIdentifier length])
    {
      _videoFileInputURLsByInputUniqueID = [(AXMTVideoFilePlayManager *)self _videoFileInputURLsByInputUniqueID];
      v7 = [_videoFileInputURLsByInputUniqueID objectForKeyedSubscript:v5];
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