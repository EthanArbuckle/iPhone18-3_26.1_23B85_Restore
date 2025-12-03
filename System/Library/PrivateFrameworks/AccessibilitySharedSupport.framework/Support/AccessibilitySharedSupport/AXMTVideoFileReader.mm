@interface AXMTVideoFileReader
+ (BOOL)fileURLContainsSuitablePlayableVideo:(id)video error:(id *)error;
- (AXMTVideoFileReader)initWithInput:(id)input;
- (AXMTVideoFileReaderDelegate)delegate;
- (BOOL)isStarted;
- (CGSize)resolution;
- (void)_bringUp;
- (void)_cancelDispatchSource;
- (void)_pauseNotificationReceived:(id)received;
- (void)_pausePlayback;
- (void)_playNotificationReceived:(id)received;
- (void)_playVideoFile;
- (void)_readTimerFired;
- (void)_resumePlayback;
- (void)_setupDispatchSource;
- (void)_tearDown;
- (void)setInput:(id)input;
- (void)start;
- (void)stop;
@end

@implementation AXMTVideoFileReader

- (AXMTVideoFileReader)initWithInput:(id)input
{
  inputCopy = input;
  if (inputCopy)
  {
    v12.receiver = self;
    v12.super_class = AXMTVideoFileReader;
    v5 = [(AXMTVideoFileReader *)&v12 init];
    if (v5)
    {
      v6 = [inputCopy copy];
      input = v5->_input;
      v5->_input = v6;

      v5->__lock._os_unfair_lock_opaque = 0;
      v8 = dispatch_queue_create("AXMTVideoFileReader.readingQueue", 0);
      readingQueue = v5->__readingQueue;
      v5->__readingQueue = v8;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setInput:(id)input
{
  inputCopy = input;
  if (inputCopy)
  {
    v10 = inputCopy;
    if (([(AXSSMotionTrackingVideoFileInput *)self->_input isEqual:inputCopy]& 1) == 0)
    {
      _fileURL = [(AXMTVideoFileReader *)self _fileURL];

      if (_fileURL)
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

    _fileURL = [(AXMTVideoFileReader *)self _fileURL];

    if (_fileURL)
    {

      [(AXMTVideoFileReader *)self _tearDown];
    }
  }
}

- (BOOL)isStarted
{
  status = [(AXMTVideoFileReader *)self status];
  if (status != 1)
  {
    LOBYTE(status) = [(AXMTVideoFileReader *)self status]== 2 || [(AXMTVideoFileReader *)self status]== 3;
  }

  return status;
}

- (void)_playNotificationReceived:(id)received
{
  object = [received object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    input = [(AXMTVideoFileReader *)self input];
    if ([object isEqual:input])
    {
      input2 = [(AXMTVideoFileReader *)self input];

      if (input2)
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

- (void)_pauseNotificationReceived:(id)received
{
  if ([(AXMTVideoFileReader *)self status]== 2 && [(AXMTVideoFileReader *)self status]!= 3)
  {
    [(AXMTVideoFileReader *)self setStatus:3];

    [(AXMTVideoFileReader *)self _pausePlayback];
  }
}

+ (BOOL)fileURLContainsSuitablePlayableVideo:(id)video error:(id *)error
{
  videoCopy = video;
  v6 = videoCopy;
  if (videoCopy)
  {
    if ([videoCopy checkResourceIsReachableAndReturnError:error])
    {
      v7 = [AVAsset assetWithURL:v6];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 tracksWithMediaType:AVMediaTypeVideo];
        v10 = [v9 count];
        v11 = v10 != 0;
        if (!error || v10)
        {
          goto LABEL_13;
        }

        v12 = AXSSMotionTrackingErrorDomain;
        nSLocalizedDescriptionKey = [NSString stringWithFormat:@"Invalid video tracks in fileURL %@!", v6, NSLocalizedDescriptionKey];
        v19 = nSLocalizedDescriptionKey;
        v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        *error = [NSError errorWithDomain:v12 code:0 userInfo:v14];
      }

      else
      {
        if (!error)
        {
          v11 = 0;
          goto LABEL_14;
        }

        v16 = AXSSMotionTrackingErrorDomain;
        v20 = NSLocalizedDescriptionKey;
        v9 = [NSString stringWithFormat:@"Can't create asset with fileURL %@!", v6];
        v21 = v9;
        nSLocalizedDescriptionKey = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        *error = [NSError errorWithDomain:v16 code:0 userInfo:nSLocalizedDescriptionKey];
      }

      v11 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  else if (error)
  {
    v15 = AXSSMotionTrackingErrorDomain;
    v22 = NSLocalizedDescriptionKey;
    v23 = @"Cannot play a nil fileURL!";
    v8 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [NSError errorWithDomain:v15 code:0 userInfo:v8];
    *error = v11 = 0;
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
  input = [(AXMTVideoFileReader *)self input];
  v6 = [v3 fileURLForMotionTrackingVideoFileInput:input];

  if (v6)
  {
    _fileURL = [(AXMTVideoFileReader *)self _fileURL];

    if (_fileURL)
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
  _assetReader = [(AXMTVideoFileReader *)self _assetReader];

  if (_assetReader)
  {
    _assetReader2 = [(AXMTVideoFileReader *)self _assetReader];
    [_assetReader2 cancelReading];
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
  input = [(AXMTVideoFileReader *)self input];

  if (input)
  {
    v4 = +[AXMTVideoFilePlayManager shared];
    input2 = [(AXMTVideoFileReader *)self input];
    v6 = [v4 fileURLForMotionTrackingVideoFileInput:input2];
    [(AXMTVideoFileReader *)self set_fileURL:v6];
  }

  _fileURL = [(AXMTVideoFileReader *)self _fileURL];

  if (_fileURL)
  {
    _fileURL2 = [(AXMTVideoFileReader *)self _fileURL];
    v9 = [AVAsset assetWithURL:_fileURL2];

    if (v9)
    {
      v84 = 0;
      v10 = [AVAssetReader assetReaderWithAsset:v9 error:&v84];
      v11 = v84;
      [(AXMTVideoFileReader *)self set_assetReader:v10];

      _assetReader = [(AXMTVideoFileReader *)self _assetReader];

      if (!_assetReader)
      {
        _fileURL3 = [(AXMTVideoFileReader *)self _fileURL];
        v13 = [NSString stringWithFormat:@"Error creating assetReader for %@ %@ %@!", _fileURL3, v9, v11];

        os_unfair_lock_unlock(&self->__lock);
        v40 = AXSSLogForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_10001271C();
        }

        input8 = +[AXMTVideoFilePlayManager shared];
        input3 = [(AXMTVideoFileReader *)self input];
        v41 = AXSSMotionTrackingErrorDomain;
        v98 = NSLocalizedDescriptionKey;
        v99 = v13;
        v42 = [NSDictionary dictionaryWithObjects:&v99 forKeys:&v98 count:1];
        v43 = [NSError errorWithDomain:v41 code:0 userInfo:v42];
        [input8 videoPlayedWithInput:input3 success:0 error:v43];

        goto LABEL_41;
      }

      v13 = [v9 tracksWithMediaType:AVMediaTypeVideo];
      if ([v13 count])
      {
        lastObject = [v13 lastObject];
        v94 = kCVPixelBufferPixelFormatTypeKey;
        v95 = &off_100049E10;
        v15 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        input8 = [AVAssetReaderTrackOutput assetReaderTrackOutputWithTrack:lastObject outputSettings:v15];

        if (input8)
        {
          _assetReader2 = [(AXMTVideoFileReader *)self _assetReader];
          v18 = [_assetReader2 canAddOutput:input8];

          if (v18)
          {
            v19 = +[NSMutableArray array];
            [(AXMTVideoFileReader *)self set_metadataOutputAdaptors:v19];

            input3 = [v9 tracksWithMediaType:AVMediaTypeMetadata];
            if ([input3 count])
            {
              v77 = v13;
              v78 = v11;
              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              input3 = input3;
              v21 = [input3 countByEnumeratingWithState:&v80 objects:v87 count:16];
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
                      objc_enumerationMutation(input3);
                    }

                    v25 = [[AVAssetReaderTrackOutput alloc] initWithTrack:*(*(&v80 + 1) + 8 * i) outputSettings:0];
                    [v25 setAlwaysCopiesSampleData:0];
                    _assetReader3 = [(AXMTVideoFileReader *)self _assetReader];
                    v27 = [_assetReader3 canAddOutput:v25];

                    if ((v27 & 1) == 0)
                    {
                      _fileURL4 = [(AXMTVideoFileReader *)self _fileURL];
                      v62 = [NSString stringWithFormat:@"Error reading asset: %@. Error adding metadata track output! %@", _fileURL4, v25];

                      os_unfair_lock_unlock(&self->__lock);
                      v63 = AXSSLogForCategory();
                      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                      {
                        sub_10001271C();
                      }

                      v64 = +[AXMTVideoFilePlayManager shared];
                      input4 = [(AXMTVideoFileReader *)self input];
                      v66 = AXSSMotionTrackingErrorDomain;
                      v85 = NSLocalizedDescriptionKey;
                      v86 = v62;
                      v67 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
                      v68 = [NSError errorWithDomain:v66 code:0 userInfo:v67];
                      [v64 videoPlayedWithInput:input4 success:0 error:v68];

                      v13 = v77;
                      v11 = v78;
                      goto LABEL_41;
                    }

                    v28 = [[AVAssetReaderOutputMetadataAdaptor alloc] initWithAssetReaderTrackOutput:v25];
                    _metadataOutputAdaptors = [(AXMTVideoFileReader *)self _metadataOutputAdaptors];
                    [_metadataOutputAdaptors addObject:v28];

                    _assetReader4 = [(AXMTVideoFileReader *)self _assetReader];
                    [_assetReader4 addOutput:v25];
                  }

                  v22 = [input3 countByEnumeratingWithState:&v80 objects:v87 count:16];
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

              [(AXMTVideoFileReader *)self set_trackOutput:input8];
              _assetReader5 = [(AXMTVideoFileReader *)self _assetReader];
              [_assetReader5 addOutput:input8];

              [input8 markConfigurationAsFinal];
              _assetReader6 = [(AXMTVideoFileReader *)self _assetReader];
              [_assetReader6 startReading];

              v13 = v77;
              firstObject = [v77 firstObject];
              [firstObject nominalFrameRate];
              [(AXMTVideoFileReader *)self set_framerate:?];

              [(AXMTVideoFileReader *)self _setupDispatchSource];
              os_unfair_lock_unlock(&self->__lock);
              v11 = v78;
            }

            else
            {
              _fileURL5 = [(AXMTVideoFileReader *)self _fileURL];
              v70 = [NSString stringWithFormat:@"Error finding metadata track in asset: %@", _fileURL5];

              os_unfair_lock_unlock(&self->__lock);
              v71 = AXSSLogForCategory();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                sub_10001271C();
              }

              v72 = +[AXMTVideoFilePlayManager shared];
              input5 = [(AXMTVideoFileReader *)self input];
              v74 = AXSSMotionTrackingErrorDomain;
              v88 = NSLocalizedDescriptionKey;
              v89 = v70;
              [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
              v75 = v79 = v70;
              v76 = [NSError errorWithDomain:v74 code:0 userInfo:v75];
              [v72 videoPlayedWithInput:input5 success:0 error:v76];
            }

            goto LABEL_41;
          }

          _fileURL6 = [(AXMTVideoFileReader *)self _fileURL];
          input3 = [NSString stringWithFormat:@"Error reading asset: %@. Error adding track output! %@", _fileURL6, input8];

          os_unfair_lock_unlock(&self->__lock);
          v58 = AXSSLogForCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            sub_10001271C();
          }

          v52 = +[AXMTVideoFilePlayManager shared];
          input6 = [(AXMTVideoFileReader *)self input];
          v54 = AXSSMotionTrackingErrorDomain;
          v90 = NSLocalizedDescriptionKey;
          v91 = input3;
          v55 = &v91;
          v56 = &v90;
        }

        else
        {
          _fileURL7 = [(AXMTVideoFileReader *)self _fileURL];
          firstObject2 = [v13 firstObject];
          input3 = [NSString stringWithFormat:@"Error creating track output %@ %@ %@", _fileURL7, firstObject2, v9];

          os_unfair_lock_unlock(&self->__lock);
          v51 = AXSSLogForCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            sub_10001271C();
          }

          v52 = +[AXMTVideoFilePlayManager shared];
          input6 = [(AXMTVideoFileReader *)self input];
          v54 = AXSSMotionTrackingErrorDomain;
          v92 = NSLocalizedDescriptionKey;
          v93 = input3;
          v55 = &v93;
          v56 = &v92;
        }

        v59 = [NSDictionary dictionaryWithObjects:v55 forKeys:v56 count:1];
        v60 = [NSError errorWithDomain:v54 code:0 userInfo:v59];
        [v52 videoPlayedWithInput:input6 success:0 error:v60];

LABEL_41:
        return;
      }

      _fileURL8 = [(AXMTVideoFileReader *)self _fileURL];
      input8 = [NSString stringWithFormat:@"Error reading asset %@ %@. No video tracks found!", _fileURL8, v9];

      os_unfair_lock_unlock(&self->__lock);
      v45 = AXSSLogForCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_10001271C();
      }

      input3 = +[AXMTVideoFilePlayManager shared];
      input7 = [(AXMTVideoFileReader *)self input];
      v46 = AXSSMotionTrackingErrorDomain;
      v96 = NSLocalizedDescriptionKey;
      v97 = input8;
      v47 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      v48 = [NSError errorWithDomain:v46 code:0 userInfo:v47];
      [input3 videoPlayedWithInput:input7 success:0 error:v48];
    }

    else
    {
      _fileURL9 = [(AXMTVideoFileReader *)self _fileURL];
      v11 = [NSString stringWithFormat:@"Error creating asset %@!", _fileURL9];

      os_unfair_lock_unlock(&self->__lock);
      v36 = AXSSLogForCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10001271C();
      }

      v13 = +[AXMTVideoFilePlayManager shared];
      input8 = [(AXMTVideoFileReader *)self input];
      v37 = AXSSMotionTrackingErrorDomain;
      v100 = NSLocalizedDescriptionKey;
      v101 = v11;
      input3 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      input7 = [NSError errorWithDomain:v37 code:0 userInfo:input3];
      [v13 videoPlayedWithInput:input8 success:0 error:input7];
    }

    goto LABEL_41;
  }

  os_unfair_lock_unlock(&self->__lock);
}

- (void)_setupDispatchSource
{
  os_unfair_lock_assert_owner(&self->__lock);
  _readingQueue = [(AXMTVideoFileReader *)self _readingQueue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, _readingQueue);
  [(AXMTVideoFileReader *)self set_timerSource:v4];

  _timerSource = [(AXMTVideoFileReader *)self _timerSource];
  [(AXMTVideoFileReader *)self _framerate];
  dispatch_source_set_timer(_timerSource, 0, ((1.0 / v6) * 1000000000.0), 0);

  _timerSource2 = [(AXMTVideoFileReader *)self _timerSource];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100012000;
  handler[3] = &unk_1000488F8;
  handler[4] = self;
  dispatch_source_set_event_handler(_timerSource2, handler);

  _timerSource3 = [(AXMTVideoFileReader *)self _timerSource];
  dispatch_activate(_timerSource3);

  v9 = AXSSLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10001285C(self);
  }
}

- (void)_cancelDispatchSource
{
  os_unfair_lock_assert_owner(&self->__lock);
  _timerSource = [(AXMTVideoFileReader *)self _timerSource];

  if (_timerSource)
  {
    _timerSource2 = [(AXMTVideoFileReader *)self _timerSource];
    dispatch_source_cancel(_timerSource2);
  }
}

- (void)_readTimerFired
{
  os_unfair_lock_lock(&self->__lock);
  _trackOutput = [(AXMTVideoFileReader *)self _trackOutput];
  copyNextSampleBuffer = [_trackOutput copyNextSampleBuffer];

  v5 = +[NSMutableArray array];
  _metadataOutputAdaptors = [(AXMTVideoFileReader *)self _metadataOutputAdaptors];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100012458;
  v39[3] = &unk_100048E88;
  v7 = v5;
  v40 = v7;
  [_metadataOutputAdaptors enumerateObjectsUsingBlock:v39];

  os_unfair_lock_unlock(&self->__lock);
  if (copyNextSampleBuffer && [v7 count])
  {
    cf = copyNextSampleBuffer;
    selfCopy = self;
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
          items = [v10 items];
          v12 = [items countByEnumeratingWithState:&v31 objects:v41 count:16];
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
                  objc_enumerationMutation(items);
                }

                v16 = *(*(&v31 + 1) + 8 * j);
                value = [v16 value];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  value2 = [v16 value];
                  [v8 addObject:value2];
                }
              }

              v13 = [items countByEnumeratingWithState:&v31 objects:v41 count:16];
            }

            while (v13);
          }
        }

        v29 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v29);
    }

    delegate = [(AXMTVideoFileReader *)selfCopy delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      delegate2 = [(AXMTVideoFileReader *)selfCopy delegate];
      [delegate2 videoFileReader:selfCopy didReadSampleBuffer:cf withMetadata:v8];
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

    if (copyNextSampleBuffer)
    {
      CFRelease(copyNextSampleBuffer);
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