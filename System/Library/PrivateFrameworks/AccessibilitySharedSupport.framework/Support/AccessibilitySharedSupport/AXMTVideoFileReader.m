@interface AXMTVideoFileReader
+ (BOOL)fileURLContainsSuitablePlayableVideo:(id)a3 error:(id *)a4;
- (AXMTVideoFileReader)initWithInput:(id)a3;
- (AXMTVideoFileReaderDelegate)delegate;
- (BOOL)isStarted;
- (CGSize)resolution;
- (void)_bringUp;
- (void)_cancelDispatchSource;
- (void)_pauseNotificationReceived:(id)a3;
- (void)_pausePlayback;
- (void)_playNotificationReceived:(id)a3;
- (void)_playVideoFile;
- (void)_readTimerFired;
- (void)_resumePlayback;
- (void)_setupDispatchSource;
- (void)_tearDown;
- (void)setInput:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation AXMTVideoFileReader

- (AXMTVideoFileReader)initWithInput:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12.receiver = self;
    v12.super_class = AXMTVideoFileReader;
    v5 = [(AXMTVideoFileReader *)&v12 init];
    if (v5)
    {
      v6 = [v4 copy];
      input = v5->_input;
      v5->_input = v6;

      v5->__lock._os_unfair_lock_opaque = 0;
      v8 = dispatch_queue_create("AXMTVideoFileReader.readingQueue", 0);
      readingQueue = v5->__readingQueue;
      v5->__readingQueue = v8;
    }

    self = v5;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setInput:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    if (([(AXSSMotionTrackingVideoFileInput *)self->_input isEqual:v4]& 1) == 0)
    {
      v5 = [(AXMTVideoFileReader *)self _fileURL];

      if (v5)
      {
        [(AXMTVideoFileReader *)self _tearDown];
      }

      v6 = [v10 copy];
      input = self->_input;
      self->_input = v6;

      v8 = +[AXMTVideoFilePlayManager shared];
      v9 = [v8 fileURLForMotionTrackingVideoFileInput:v10];

      if (v9)
      {
        [(AXMTVideoFileReader *)self _playVideoFile];
      }
    }
  }

  _objc_release_x1();
}

- (void)start
{
  if ([(AXMTVideoFileReader *)self status]== 3)
  {
    [(AXMTVideoFileReader *)self setStatus:2];

    [(AXMTVideoFileReader *)self _resumePlayback];
  }

  else if (![(AXMTVideoFileReader *)self status])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"_playNotificationReceived:" name:@"AXMTVideoFilePlayManagerPlayNotification" object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_pauseNotificationReceived:" name:@"AXMTVideoFilePlayManagerPauseNotification" object:0];

    [(AXMTVideoFileReader *)self setStatus:1];

    [(AXMTVideoFileReader *)self _playVideoFile];
  }
}

- (void)stop
{
  if ([(AXMTVideoFileReader *)self status])
  {
    [(AXMTVideoFileReader *)self setStatus:0];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"AXMTVideoFilePlayManagerPlayNotification" object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:@"AXMTVideoFilePlayManagerPauseNotification" object:0];

    v5 = [(AXMTVideoFileReader *)self _fileURL];

    if (v5)
    {

      [(AXMTVideoFileReader *)self _tearDown];
    }
  }
}

- (BOOL)isStarted
{
  v3 = [(AXMTVideoFileReader *)self status];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(AXMTVideoFileReader *)self status]== 2 || [(AXMTVideoFileReader *)self status]== 3;
  }

  return v3;
}

- (void)_playNotificationReceived:(id)a3
{
  v6 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(AXMTVideoFileReader *)self input];
    if ([v6 isEqual:v4])
    {
      v5 = [(AXMTVideoFileReader *)self input];

      if (v5)
      {
        if ([(AXMTVideoFileReader *)self status]== 3)
        {
          [(AXMTVideoFileReader *)self setStatus:2];
          [(AXMTVideoFileReader *)self _resumePlayback];
        }

        else if ([(AXMTVideoFileReader *)self status]== 1)
        {
          [(AXMTVideoFileReader *)self _playVideoFile];
        }
      }
    }

    else
    {
    }
  }

  _objc_release_x1();
}

- (void)_pauseNotificationReceived:(id)a3
{
  if ([(AXMTVideoFileReader *)self status]== 2 && [(AXMTVideoFileReader *)self status]!= 3)
  {
    [(AXMTVideoFileReader *)self setStatus:3];

    [(AXMTVideoFileReader *)self _pausePlayback];
  }
}

+ (BOOL)fileURLContainsSuitablePlayableVideo:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ([v5 checkResourceIsReachableAndReturnError:a4])
    {
      v7 = [AVAsset assetWithURL:v6];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 tracksWithMediaType:AVMediaTypeVideo];
        v10 = [v9 count];
        v11 = v10 != 0;
        if (!a4 || v10)
        {
          goto LABEL_13;
        }

        v12 = AXSSMotionTrackingErrorDomain;
        v13 = [NSString stringWithFormat:@"Invalid video tracks in fileURL %@!", v6, NSLocalizedDescriptionKey];
        v19 = v13;
        v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        *a4 = [NSError errorWithDomain:v12 code:0 userInfo:v14];
      }

      else
      {
        if (!a4)
        {
          v11 = 0;
          goto LABEL_14;
        }

        v16 = AXSSMotionTrackingErrorDomain;
        v20 = NSLocalizedDescriptionKey;
        v9 = [NSString stringWithFormat:@"Can't create asset with fileURL %@!", v6];
        v21 = v9;
        v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        *a4 = [NSError errorWithDomain:v16 code:0 userInfo:v13];
      }

      v11 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  else if (a4)
  {
    v15 = AXSSMotionTrackingErrorDomain;
    v22 = NSLocalizedDescriptionKey;
    v23 = @"Cannot play a nil fileURL!";
    v8 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [NSError errorWithDomain:v15 code:0 userInfo:v8];
    *a4 = v11 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v11 = 0;
LABEL_15:

  return v11;
}

- (void)_playVideoFile
{
  v3 = +[AXMTVideoFilePlayManager shared];
  v4 = [(AXMTVideoFileReader *)self input];
  v6 = [v3 fileURLForMotionTrackingVideoFileInput:v4];

  if (v6)
  {
    v5 = [(AXMTVideoFileReader *)self _fileURL];

    if (v5)
    {
      [(AXMTVideoFileReader *)self _tearDown];
    }

    [(AXMTVideoFileReader *)self setStatus:2];
    [(AXMTVideoFileReader *)self _bringUp];
  }
}

- (void)_pausePlayback
{
  os_unfair_lock_lock(&self->__lock);
  [(AXMTVideoFileReader *)self _cancelDispatchSource];

  os_unfair_lock_unlock(&self->__lock);
}

- (void)_resumePlayback
{
  os_unfair_lock_lock(&self->__lock);
  [(AXMTVideoFileReader *)self _setupDispatchSource];

  os_unfair_lock_unlock(&self->__lock);
}

- (void)_tearDown
{
  os_unfair_lock_lock(&self->__lock);
  [(AXMTVideoFileReader *)self _cancelDispatchSource];
  [(AXMTVideoFileReader *)self set_timerSource:0];
  v3 = [(AXMTVideoFileReader *)self _assetReader];

  if (v3)
  {
    v4 = [(AXMTVideoFileReader *)self _assetReader];
    [v4 cancelReading];
  }

  [(AXMTVideoFileReader *)self set_trackOutput:0];
  [(AXMTVideoFileReader *)self set_assetReader:0];
  [(AXMTVideoFileReader *)self set_metadataOutputAdaptors:0];
  [(AXMTVideoFileReader *)self set_fileURL:0];
  [(AXMTVideoFileReader *)self set_asset:0];

  os_unfair_lock_unlock(&self->__lock);
}

- (void)_bringUp
{
  os_unfair_lock_lock(&self->__lock);
  [(AXMTVideoFileReader *)self set_fileURL:0];
  v3 = [(AXMTVideoFileReader *)self input];

  if (v3)
  {
    v4 = +[AXMTVideoFilePlayManager shared];
    v5 = [(AXMTVideoFileReader *)self input];
    v6 = [v4 fileURLForMotionTrackingVideoFileInput:v5];
    [(AXMTVideoFileReader *)self set_fileURL:v6];
  }

  v7 = [(AXMTVideoFileReader *)self _fileURL];

  if (v7)
  {
    v8 = [(AXMTVideoFileReader *)self _fileURL];
    v9 = [AVAsset assetWithURL:v8];

    if (v9)
    {
      v84 = 0;
      v10 = [AVAssetReader assetReaderWithAsset:v9 error:&v84];
      v11 = v84;
      [(AXMTVideoFileReader *)self set_assetReader:v10];

      v12 = [(AXMTVideoFileReader *)self _assetReader];

      if (!v12)
      {
        v39 = [(AXMTVideoFileReader *)self _fileURL];
        v13 = [NSString stringWithFormat:@"Error creating assetReader for %@ %@ %@!", v39, v9, v11];

        os_unfair_lock_unlock(&self->__lock);
        v40 = AXSSLogForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_10001271C();
        }

        v16 = +[AXMTVideoFilePlayManager shared];
        v20 = [(AXMTVideoFileReader *)self input];
        v41 = AXSSMotionTrackingErrorDomain;
        v98 = NSLocalizedDescriptionKey;
        v99 = v13;
        v42 = [NSDictionary dictionaryWithObjects:&v99 forKeys:&v98 count:1];
        v43 = [NSError errorWithDomain:v41 code:0 userInfo:v42];
        [v16 videoPlayedWithInput:v20 success:0 error:v43];

        goto LABEL_41;
      }

      v13 = [v9 tracksWithMediaType:AVMediaTypeVideo];
      if ([v13 count])
      {
        v14 = [v13 lastObject];
        v94 = kCVPixelBufferPixelFormatTypeKey;
        v95 = &off_100049E10;
        v15 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v16 = [AVAssetReaderTrackOutput assetReaderTrackOutputWithTrack:v14 outputSettings:v15];

        if (v16)
        {
          v17 = [(AXMTVideoFileReader *)self _assetReader];
          v18 = [v17 canAddOutput:v16];

          if (v18)
          {
            v19 = +[NSMutableArray array];
            [(AXMTVideoFileReader *)self set_metadataOutputAdaptors:v19];

            v20 = [v9 tracksWithMediaType:AVMediaTypeMetadata];
            if ([v20 count])
            {
              v77 = v13;
              v78 = v11;
              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              v20 = v20;
              v21 = [v20 countByEnumeratingWithState:&v80 objects:v87 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v81;
                while (2)
                {
                  for (i = 0; i != v22; i = i + 1)
                  {
                    if (*v81 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v25 = [[AVAssetReaderTrackOutput alloc] initWithTrack:*(*(&v80 + 1) + 8 * i) outputSettings:0];
                    [v25 setAlwaysCopiesSampleData:0];
                    v26 = [(AXMTVideoFileReader *)self _assetReader];
                    v27 = [v26 canAddOutput:v25];

                    if ((v27 & 1) == 0)
                    {
                      v61 = [(AXMTVideoFileReader *)self _fileURL];
                      v62 = [NSString stringWithFormat:@"Error reading asset: %@. Error adding metadata track output! %@", v61, v25];

                      os_unfair_lock_unlock(&self->__lock);
                      v63 = AXSSLogForCategory();
                      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                      {
                        sub_10001271C();
                      }

                      v64 = +[AXMTVideoFilePlayManager shared];
                      v65 = [(AXMTVideoFileReader *)self input];
                      v66 = AXSSMotionTrackingErrorDomain;
                      v85 = NSLocalizedDescriptionKey;
                      v86 = v62;
                      v67 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
                      v68 = [NSError errorWithDomain:v66 code:0 userInfo:v67];
                      [v64 videoPlayedWithInput:v65 success:0 error:v68];

                      v13 = v77;
                      v11 = v78;
                      goto LABEL_41;
                    }

                    v28 = [[AVAssetReaderOutputMetadataAdaptor alloc] initWithAssetReaderTrackOutput:v25];
                    v29 = [(AXMTVideoFileReader *)self _metadataOutputAdaptors];
                    [v29 addObject:v28];

                    v30 = [(AXMTVideoFileReader *)self _assetReader];
                    [v30 addOutput:v25];
                  }

                  v22 = [v20 countByEnumeratingWithState:&v80 objects:v87 count:16];
                  if (v22)
                  {
                    continue;
                  }

                  break;
                }
              }

              v31 = AXSSLogForCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                sub_100012790(self);
              }

              [(AXMTVideoFileReader *)self set_trackOutput:v16];
              v32 = [(AXMTVideoFileReader *)self _assetReader];
              [v32 addOutput:v16];

              [v16 markConfigurationAsFinal];
              v33 = [(AXMTVideoFileReader *)self _assetReader];
              [v33 startReading];

              v13 = v77;
              v34 = [v77 firstObject];
              [v34 nominalFrameRate];
              [(AXMTVideoFileReader *)self set_framerate:?];

              [(AXMTVideoFileReader *)self _setupDispatchSource];
              os_unfair_lock_unlock(&self->__lock);
              v11 = v78;
            }

            else
            {
              v69 = [(AXMTVideoFileReader *)self _fileURL];
              v70 = [NSString stringWithFormat:@"Error finding metadata track in asset: %@", v69];

              os_unfair_lock_unlock(&self->__lock);
              v71 = AXSSLogForCategory();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                sub_10001271C();
              }

              v72 = +[AXMTVideoFilePlayManager shared];
              v73 = [(AXMTVideoFileReader *)self input];
              v74 = AXSSMotionTrackingErrorDomain;
              v88 = NSLocalizedDescriptionKey;
              v89 = v70;
              [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
              v75 = v79 = v70;
              v76 = [NSError errorWithDomain:v74 code:0 userInfo:v75];
              [v72 videoPlayedWithInput:v73 success:0 error:v76];
            }

            goto LABEL_41;
          }

          v57 = [(AXMTVideoFileReader *)self _fileURL];
          v20 = [NSString stringWithFormat:@"Error reading asset: %@. Error adding track output! %@", v57, v16];

          os_unfair_lock_unlock(&self->__lock);
          v58 = AXSSLogForCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            sub_10001271C();
          }

          v52 = +[AXMTVideoFilePlayManager shared];
          v53 = [(AXMTVideoFileReader *)self input];
          v54 = AXSSMotionTrackingErrorDomain;
          v90 = NSLocalizedDescriptionKey;
          v91 = v20;
          v55 = &v91;
          v56 = &v90;
        }

        else
        {
          v49 = [(AXMTVideoFileReader *)self _fileURL];
          v50 = [v13 firstObject];
          v20 = [NSString stringWithFormat:@"Error creating track output %@ %@ %@", v49, v50, v9];

          os_unfair_lock_unlock(&self->__lock);
          v51 = AXSSLogForCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            sub_10001271C();
          }

          v52 = +[AXMTVideoFilePlayManager shared];
          v53 = [(AXMTVideoFileReader *)self input];
          v54 = AXSSMotionTrackingErrorDomain;
          v92 = NSLocalizedDescriptionKey;
          v93 = v20;
          v55 = &v93;
          v56 = &v92;
        }

        v59 = [NSDictionary dictionaryWithObjects:v55 forKeys:v56 count:1];
        v60 = [NSError errorWithDomain:v54 code:0 userInfo:v59];
        [v52 videoPlayedWithInput:v53 success:0 error:v60];

LABEL_41:
        return;
      }

      v44 = [(AXMTVideoFileReader *)self _fileURL];
      v16 = [NSString stringWithFormat:@"Error reading asset %@ %@. No video tracks found!", v44, v9];

      os_unfair_lock_unlock(&self->__lock);
      v45 = AXSSLogForCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_10001271C();
      }

      v20 = +[AXMTVideoFilePlayManager shared];
      v38 = [(AXMTVideoFileReader *)self input];
      v46 = AXSSMotionTrackingErrorDomain;
      v96 = NSLocalizedDescriptionKey;
      v97 = v16;
      v47 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      v48 = [NSError errorWithDomain:v46 code:0 userInfo:v47];
      [v20 videoPlayedWithInput:v38 success:0 error:v48];
    }

    else
    {
      v35 = [(AXMTVideoFileReader *)self _fileURL];
      v11 = [NSString stringWithFormat:@"Error creating asset %@!", v35];

      os_unfair_lock_unlock(&self->__lock);
      v36 = AXSSLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10001271C();
      }

      v13 = +[AXMTVideoFilePlayManager shared];
      v16 = [(AXMTVideoFileReader *)self input];
      v37 = AXSSMotionTrackingErrorDomain;
      v100 = NSLocalizedDescriptionKey;
      v101 = v11;
      v20 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      v38 = [NSError errorWithDomain:v37 code:0 userInfo:v20];
      [v13 videoPlayedWithInput:v16 success:0 error:v38];
    }

    goto LABEL_41;
  }

  os_unfair_lock_unlock(&self->__lock);
}

- (void)_setupDispatchSource
{
  os_unfair_lock_assert_owner(&self->__lock);
  v3 = [(AXMTVideoFileReader *)self _readingQueue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  [(AXMTVideoFileReader *)self set_timerSource:v4];

  v5 = [(AXMTVideoFileReader *)self _timerSource];
  [(AXMTVideoFileReader *)self _framerate];
  dispatch_source_set_timer(v5, 0, ((1.0 / v6) * 1000000000.0), 0);

  v7 = [(AXMTVideoFileReader *)self _timerSource];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100012000;
  handler[3] = &unk_1000488F8;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);

  v8 = [(AXMTVideoFileReader *)self _timerSource];
  dispatch_activate(v8);

  v9 = AXSSLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10001285C(self);
  }
}

- (void)_cancelDispatchSource
{
  os_unfair_lock_assert_owner(&self->__lock);
  v3 = [(AXMTVideoFileReader *)self _timerSource];

  if (v3)
  {
    v4 = [(AXMTVideoFileReader *)self _timerSource];
    dispatch_source_cancel(v4);
  }
}

- (void)_readTimerFired
{
  os_unfair_lock_lock(&self->__lock);
  v3 = [(AXMTVideoFileReader *)self _trackOutput];
  v4 = [v3 copyNextSampleBuffer];

  v5 = +[NSMutableArray array];
  v6 = [(AXMTVideoFileReader *)self _metadataOutputAdaptors];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100012458;
  v39[3] = &unk_100048E88;
  v7 = v5;
  v40 = v7;
  [v6 enumerateObjectsUsingBlock:v39];

  os_unfair_lock_unlock(&self->__lock);
  if (v4 && [v7 count])
  {
    cf = v4;
    v26 = self;
    v8 = +[NSMutableArray array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = v7;
    obj = v7;
    v29 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v29)
    {
      v28 = *v36;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v11 = [v10 items];
          v12 = [v11 countByEnumeratingWithState:&v31 objects:v41 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v32;
            do
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v32 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v31 + 1) + 8 * j);
                v17 = [v16 value];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v19 = [v16 value];
                  [v8 addObject:v19];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v31 objects:v41 count:16];
            }

            while (v13);
          }
        }

        v29 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v29);
    }

    v20 = [(AXMTVideoFileReader *)v26 delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(AXMTVideoFileReader *)v26 delegate];
      [v22 videoFileReader:v26 didReadSampleBuffer:cf withMetadata:v8];
    }

    CFRelease(cf);

    v7 = v25;
  }

  else
  {
    v23 = AXSSLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_1000128F4();
    }

    if (v4)
    {
      CFRelease(v4);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000124B8;
    block[3] = &unk_1000488F8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (AXMTVideoFileReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)resolution
{
  width = self->_resolution.width;
  height = self->_resolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end