@interface SHAudioRecorder
+ (BOOL)hasAudioQueueFailedWithStatus:(int)status annotateError:(id *)error;
+ (BOOL)isAudioQueueRunning:(OpaqueAudioQueue *)running;
- (AudioStreamBasicDescription)audioStreamBasicDescription;
- (BOOL)isRunning;
- (BOOL)stopAudioQueueAndClearBuffersWithError:(id *)error;
- (SHAudioRecorder)initWithRecordingSource:(int64_t)source;
- (SHAudioRecorderDelegate)delegate;
- (void)dealloc;
- (void)setAudioStreamBasicDescription:(AudioStreamBasicDescription *)description;
- (void)startAudioQueueAfterRetrySecondsWithCompletion:(id)completion;
- (void)startRecordingWithCompletion:(id)completion;
@end

@implementation SHAudioRecorder

- (void)dealloc
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Deallocating SHAudioRecorder", buf, 2u);
  }

  [(SHAudioRecorder *)self stopAudioQueueAndClearBuffersWithError:0];
  v4.receiver = self;
  v4.super_class = SHAudioRecorder;
  [(SHAudioRecorder *)&v4 dealloc];
}

- (SHAudioRecorder)initWithRecordingSource:(int64_t)source
{
  v10.receiver = self;
  v10.super_class = SHAudioRecorder;
  v4 = [(SHAudioRecorder *)&v10 init];
  if (v4)
  {
    v5 = +[NSUUID UUID];
    identifier = v4->_identifier;
    v4->_identifier = v5;

    v4->_recordingSource = source;
    v7 = dispatch_queue_create("com.apple.ShazamKit.shazamaudiorecorder.dispatch", 0);
    audioRecorderDispatchQueue = v4->_audioRecorderDispatchQueue;
    v4->_audioRecorderDispatchQueue = v7;
  }

  return v4;
}

- (BOOL)isRunning
{
  v3 = objc_opt_class();
  audioQueue = self->_audioQueue;

  return [v3 isAudioQueueRunning:audioQueue];
}

- (void)startRecordingWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(SHAudioRecorder *)self isRunning])
  {
    v6 = [[AVAudioFormat alloc] initStandardFormatWithSampleRate:1 channels:44100.0];
    streamDescription = [v6 streamDescription];
    v8 = streamDescription[4];
    v9 = *(streamDescription + 1);
    *&self->_audioStreamBasicDescription.mSampleRate = *streamDescription;
    *&self->_audioStreamBasicDescription.mBytesPerPacket = v9;
    *&self->_audioStreamBasicDescription.mBitsPerChannel = v8;
    v10 = AudioQueueNewInput(&self->_audioStreamBasicDescription, sub_100026918, self, 0, 0, ([(SHAudioRecorder *)self recordingSource]!= 2) << 11, &self->_audioQueue);
    v32 = 0;
    v11 = [objc_opt_class() hasAudioQueueFailedWithStatus:v10 annotateError:&v32];
    v12 = v32;
    if (v11)
    {
      v13 = sh_log_object();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v12;
        v14 = "Failed to create a new audio queue input with error %@";
        v15 = v13;
        v16 = 12;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      }
    }

    else
    {
      if ([(SHAudioRecorder *)self recordingSource]== 1)
      {
        v17 = [[ATAudioTapDescription alloc] initSystemTapWithFormat:v6];
        v18 = [[ATAudioTap alloc] initWithTapDescription:v17];
        v19 = AudioQueueSetProperty(self->_audioQueue, 0x71746F62u, v18, 8u);
        v31 = v12;
        v20 = [objc_opt_class() hasAudioQueueFailedWithStatus:v19 annotateError:&v31];
        v21 = v31;

        if (v20)
        {
          v22 = sh_log_object();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to set audio queue property", buf, 2u);
          }

          completionCopy[2](completionCopy, 0, v21);
          v12 = v21;
          goto LABEL_20;
        }
      }

      else
      {
        v21 = v12;
      }

      v23 = AudioQueueAddPropertyListener(self->_audioQueue, 0x6171726Eu, sub_100026A1C, self);
      v30 = v21;
      v24 = [objc_opt_class() hasAudioQueueFailedWithStatus:v23 annotateError:&v30];
      v12 = v30;

      if ((v24 & 1) == 0)
      {
        for (i = 8; i != 32; i += 8)
        {
          AudioQueueAllocateBuffer(self->_audioQueue, 0x2000u, (self + i));
          AudioQueueEnqueueBuffer(self->_audioQueue, *(&self->super.isa + i), 0, 0);
        }

        v26 = AudioQueueStart(self->_audioQueue, 0);
        if (v26)
        {
          v27 = [NSError errorWithDomain:SHCoreErrorDomain code:v26 userInfo:0];
          v28 = sh_log_object();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to start audio queue with error %@, retry one more time", buf, 0xCu);
          }

          delegate = [(SHAudioRecorder *)self delegate];
          [delegate recorder:self failedToStartWithError:v27];

          [(SHAudioRecorder *)self startAudioQueueAfterRetrySecondsWithCompletion:completionCopy];
        }

        else
        {
          completionCopy[2](completionCopy, 1, 0);
        }

        goto LABEL_20;
      }

      v13 = sh_log_object();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v14 = "Failed to add isRunning property listener";
        v15 = v13;
        v16 = 2;
        goto LABEL_18;
      }
    }

    completionCopy[2](completionCopy, 0, v12);
LABEL_20:

    goto LABEL_21;
  }

  v5 = sh_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Already running audio queue", buf, 2u);
  }

  completionCopy[2](completionCopy, 1, 0);
LABEL_21:
}

+ (BOOL)isAudioQueueRunning:(OpaqueAudioQueue *)running
{
  ioDataSize = 4;
  outData = 0;
  v5 = 0;
  v3 = [self hasAudioQueueFailedWithStatus:AudioQueueGetProperty(running annotateError:{0x6171726Eu, &outData, &ioDataSize), &v5}];
  return (outData != 0) & ~v3;
}

- (BOOL)stopAudioQueueAndClearBuffersWithError:(id *)error
{
  audioQueue = self->_audioQueue;
  if (!audioQueue)
  {
    return 1;
  }

  v6 = AudioQueueStop(audioQueue, 1u);
  v7 = [objc_opt_class() hasAudioQueueFailedWithStatus:v6 annotateError:error];
  v8 = v7;
  if (error && v7)
  {
    v9 = sh_log_object();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *error;
      v20 = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to stop audio queue %@", &v20, 0xCu);
    }
  }

  v11 = v8 ^ 1;
  v12 = AudioQueueRemovePropertyListener(self->_audioQueue, 0x6171726Eu, sub_100026A1C, self);
  v13 = [objc_opt_class() hasAudioQueueFailedWithStatus:v12 annotateError:error];
  if (error && v13)
  {
    v14 = sh_log_object();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *error;
      v20 = 138412290;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to remove isRunning property listener %@", &v20, 0xCu);
    }
  }

  v16 = AudioQueueDispose(self->_audioQueue, 0);
  if ([objc_opt_class() hasAudioQueueFailedWithStatus:v16 annotateError:error])
  {
    if (error)
    {
      v17 = sh_log_object();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *error;
        v20 = 138412290;
        v21 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to dispose audio queue %@", &v20, 0xCu);
      }
    }
  }

  else
  {
    self->_audioQueue = 0;
  }

  return v11;
}

+ (BOOL)hasAudioQueueFailedWithStatus:(int)status annotateError:(id *)error
{
  if (status && error)
  {
    *error = [NSError errorWithDomain:NSOSStatusErrorDomain code:status userInfo:0];
  }

  return status != 0;
}

- (void)startAudioQueueAfterRetrySecondsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, 1000000000);
  audioRecorderDispatchQueue = [(SHAudioRecorder *)self audioRecorderDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026EE4;
  block[3] = &unk_10007D9A0;
  objc_copyWeak(&v10, &location);
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_after(v5, audioRecorderDispatchQueue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (SHAudioRecorderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AudioStreamBasicDescription)audioStreamBasicDescription
{
  v3 = *&self[2].mFormatID;
  *&retstr->mSampleRate = *&self[1].mBitsPerChannel;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[2].mBytesPerFrame;
  return self;
}

- (void)setAudioStreamBasicDescription:(AudioStreamBasicDescription *)description
{
  v3 = *&description->mSampleRate;
  v4 = *&description->mBytesPerPacket;
  *&self->_audioStreamBasicDescription.mBitsPerChannel = *&description->mBitsPerChannel;
  *&self->_audioStreamBasicDescription.mBytesPerPacket = v4;
  *&self->_audioStreamBasicDescription.mSampleRate = v3;
}

@end