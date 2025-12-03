@interface ADSpeechPlaybackSimulator
- (ADSpeechPlaybackSimulator)initWithQueue:(id)queue speechController:(id)controller audioSessionController:(id)sessionController audioPlaybackService:(id)service experimentContext:(id)context;
- (id)delegate;
- (void)cancelSpeechCaptureSuppressingAlert:(BOOL)alert;
- (void)getLastStartpointTimestampAndCurrentTime:(id)time;
- (void)setDelegate:(id)delegate;
- (void)startPlaybackWithURL:(id)l narrowBand:(BOOL)band dictation:(BOOL)dictation completion:(id)completion;
- (void)stopSpeechCaptureForEvent:(int64_t)event suppressAlert:(BOOL)alert hostTime:(unint64_t)time;
- (void)updateEndpointHintForRC:(id)c forceAccept:(BOOL)accept completion:(id)completion;
@end

@implementation ADSpeechPlaybackSimulator

- (void)startPlaybackWithURL:(id)l narrowBand:(BOOL)band dictation:(BOOL)dictation completion:(id)completion
{
  dictationCopy = dictation;
  lCopy = l;
  completionCopy = completion;
  v62 = 0;
  v12 = [ADSpeechLog buffersFromSpeechLogAtURL:lCopy isNarrowBand:&v62];
  if (v12)
  {
    v13 = v62;
    pathExtension = [lCopy pathExtension];
    v15 = [pathExtension caseInsensitiveCompare:@"opx"] == 0;

    v16 = &SASCodecOPUS_Mono_8000HzValue;
    if (!v15)
    {
      v16 = &SASCodecSpeex_NB_Quality7Value;
    }

    v17 = &SASCodecOPUS_Mono_16000HzValue;
    if (!v15)
    {
      v17 = &SASCodecSpeex_WB_Quality8Value;
    }

    if ((v13 | band))
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }

    v43 = *v18;
    v19 = [[CSSiriRecordingInfo alloc] initWithDictation:dictationCopy codec:v43];
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002DAF58;
    block[3] = &unk_10051E010;
    block[4] = self;
    v21 = v19;
    v60 = v21;
    dispatch_async(queue, block);
    v22 = [v12 count];
    if (AFPreferencesSimulateImmediateSpeechCapture())
    {
      v23 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[ADSpeechPlaybackSimulator startPlaybackWithURL:narrowBand:dictation:completion:]";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Simulating immediate speech capture", buf, 0xCu);
      }

      v24 = self->_queue;
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1002DAFB4;
      v56[3] = &unk_10051E128;
      v56[4] = self;
      v57 = v12;
      v58 = v22;
      dispatch_async(v24, v56);
      v25 = self->_queue;
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1002DB00C;
      v55[3] = &unk_10051D770;
      v55[4] = self;
      v55[5] = v22;
      dispatch_async(v25, v55);
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else
    {
      reverseObjectEnumerator = [v12 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      v30 = [NSMutableArray arrayWithArray:allObjects];

      v42 = [v30 count];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v68 = 0;
      AFPreferencesBufferedSpeechCapturePacketInterval();
      if (v31 == 0.0)
      {
        v32 = 0.01;
      }

      else
      {
        v32 = v31;
      }

      v33 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *v63 = 136315394;
        v64 = "[ADSpeechPlaybackSimulator startPlaybackWithURL:narrowBand:dictation:completion:]";
        v65 = 2048;
        v66 = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s Simulating buffered speech capture, speech packets sent every %f seconds", v63, 0x16u);
      }

      objc_initWeak(v63, self);
      v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v35 = dispatch_queue_create(0, v34);
      v36 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v35);

      dispatch_source_set_timer(v36, 0, (v32 * 1000000000.0), 0);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1002DB06C;
      handler[3] = &unk_10051A700;
      v50 = v30;
      selfCopy = self;
      v37 = v30;
      objc_copyWeak(&v54, v63);
      v53 = buf;
      v38 = v36;
      v52 = v38;
      dispatch_source_set_event_handler(v38, handler);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1002DB1E4;
      v44[3] = &unk_10051A750;
      v48[1] = v42;
      v47 = buf;
      v44[4] = self;
      objc_copyWeak(v48, v63);
      v39 = v38;
      v45 = v39;
      v46 = completionCopy;
      dispatch_source_set_cancel_handler(v39, v44);
      dispatch_resume(v39);
      playbackSource = self->_playbackSource;
      self->_playbackSource = v39;
      v41 = v39;

      objc_destroyWeak(v48);
      objc_destroyWeak(&v54);

      objc_destroyWeak(v63);
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v26 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[ADSpeechPlaybackSimulator startPlaybackWithURL:narrowBand:dictation:completion:]";
      *&buf[12] = 2114;
      *&buf[14] = lCopy;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Couldn't decode Speex / Opus buffers for speech log at URL %{public}@", buf, 0x16u);
    }

    v27 = self->_queue;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_1002DAEE0;
    v61[3] = &unk_10051DFE8;
    v61[4] = self;
    dispatch_async(v27, v61);
  }
}

- (void)updateEndpointHintForRC:(id)c forceAccept:(BOOL)accept completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0, 0);
  }
}

- (void)getLastStartpointTimestampAndCurrentTime:(id)time
{
  if (time)
  {
    (*(time + 2))(time, 0.0, 0.0);
  }
}

- (void)cancelSpeechCaptureSuppressingAlert:(BOOL)alert
{
  playbackSource = self->_playbackSource;
  if (playbackSource)
  {
    dispatch_source_cancel(playbackSource);
  }
}

- (void)stopSpeechCaptureForEvent:(int64_t)event suppressAlert:(BOOL)alert hostTime:(unint64_t)time
{
  playbackSource = self->_playbackSource;
  if (playbackSource)
  {
    dispatch_source_cancel(playbackSource);
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002DB524;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

- (ADSpeechPlaybackSimulator)initWithQueue:(id)queue speechController:(id)controller audioSessionController:(id)sessionController audioPlaybackService:(id)service experimentContext:(id)context
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = ADSpeechPlaybackSimulator;
  v10 = [(ADSpeechPlaybackSimulator *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, queue);
  }

  return v11;
}

@end