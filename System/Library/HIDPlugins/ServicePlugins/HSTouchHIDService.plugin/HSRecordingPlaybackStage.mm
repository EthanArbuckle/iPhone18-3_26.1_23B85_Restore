@interface HSRecordingPlaybackStage
- (BOOL)recordingCopyDataTo:(Writable *)to;
- (HSRecordingPlaybackStage)initWithPlaybackQueue:(id)queue;
- (float)playbackProgress;
- (id).cxx_construct;
- (id)HSRecordingPlaybackStageProxy_playbackSetProgressdispatchEvent:(id)event;
- (id)HSRecordingPlaybackStageProxy_recordingSetMaxSize:(id)size;
- (id)HSRecordingPlaybackStageProxy_setMode:(id)mode;
- (id)data;
- (int)_mode;
- (int)mode;
- (unint64_t)recordingSize;
- (void)_destroyRecordingBuffer;
- (void)_playbackHeartbeatTimerFired;
- (void)_setPlaybackTimerEnabled:(BOOL)enabled;
- (void)clear;
- (void)playbackLoadFromData:(id)data;
- (void)playbackSetProgress:(float)progress dispatchEvent:(BOOL)event;
- (void)recordingSetMaxSize:(unint64_t)size;
- (void)setConsumers:(id)consumers;
- (void)setMode:(int)mode;
@end

@implementation HSRecordingPlaybackStage

- (HSRecordingPlaybackStage)initWithPlaybackQueue:(id)queue
{
  v17.receiver = self;
  v17.super_class = HSRecordingPlaybackStage;
  v3 = [(HSStage *)&v17 init];
  if (v3)
  {
    HSUtil::ObjectLock::ObjectLock(v16, v3);
    v4 = objc_opt_new();
    recording = v3->_state.recording;
    v3->_state.recording = v4;

    v6 = objc_opt_new();
    playback = v3->_state.playback;
    v3->_state.playback = v6;

    objc_initWeak(&location, v3);
    v8 = dispatch_get_global_queue(21, 0);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __50__HSRecordingPlaybackStage_initWithPlaybackQueue___block_invoke;
    v13[3] = &unk_1091A0;
    objc_copyWeak(&v14, &location);
    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, v8);
    dispatch_source_set_event_handler(v9, v13);
    dispatch_source_set_timer(v9, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(v9);
    playbackHeartbeatTimer = v3->_state.playbackHeartbeatTimer;
    v3->_state.playbackHeartbeatTimer = v9;

    v11 = v3;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    HSUtil::ObjectLock::~ObjectLock(v16);
  }

  return v3;
}

void __50__HSRecordingPlaybackStage_initWithPlaybackQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _playbackHeartbeatTimerFired];
}

- (id)data
{
  HSUtil::ObjectLock::ObjectLock(v7, self);
  _mode = [(HSRecordingPlaybackStage *)self _mode];
  v4 = 40;
  if (_mode == 1)
  {
    v4 = 32;
  }

  data = [*(&self->_state.recordingMaxSize + v4) data];
  HSUtil::ObjectLock::~ObjectLock(v7);

  return data;
}

- (void)clear
{
  HSUtil::ObjectLock::ObjectLock(v4, self);
  _mode = [(HSRecordingPlaybackStage *)self _mode];
  [(HSRecordingStage *)self->_state.recording reset];
  [(HSPlaybackStage *)self->_state.playback reset];
  if (_mode == 1)
  {
    [(HSRecordingStage *)self->_state.recording setRecording:1];
  }

  else
  {
    [(HSRecordingPlaybackStage *)self _destroyRecordingBuffer];
  }

  [v4[1] unlock];
  LOBYTE(v4[0]) = 0;
  [(HSStage *)self postNotification:HSRecordingPlaybackStageDataChanged, v4[0]];
  HSUtil::ObjectLock::~ObjectLock(v4);
}

- (int)mode
{
  selfCopy = self;
  HSUtil::ObjectLock::ObjectLock(v4, self);
  LODWORD(selfCopy) = [(HSRecordingPlaybackStage *)selfCopy _mode];
  HSUtil::ObjectLock::~ObjectLock(v4);
  return selfCopy;
}

- (void)setMode:(int)mode
{
  HSUtil::ObjectLock::ObjectLock(v10, self);
  _mode = [(HSRecordingPlaybackStage *)self _mode];
  if (_mode != mode)
  {
    [(HSRecordingStage *)self->_state.recording setRecording:0];
    [(HSPlaybackStage *)self->_state.playback setPlaying:0];
    if (_mode == 1)
    {
      playback = self->_state.playback;
      cntrl = self->_state.recordingBuffer.__cntrl_;
      ptr = self->_state.recordingBuffer.__ptr_;
      v9 = cntrl;
      if (cntrl)
      {
        atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
      }

      [(HSPlaybackStage *)playback loadFromSource:&ptr];
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    if (mode == 2)
    {
      [(HSPlaybackStage *)self->_state.playback setPlaying:1];
      [(HSRecordingPlaybackStage *)self _setPlaybackTimerEnabled:1];
    }

    else if (mode == 1)
    {
      [(HSPlaybackStage *)self->_state.playback reset];
      if (!self->_state.recordingBuffer.__ptr_)
      {
        [(HSRecordingPlaybackStage *)self _createRecordingBuffer];
      }

      [(HSRecordingStage *)self->_state.recording setRecording:1, ptr];
    }

    [v10[1] unlock];
    LOBYTE(v10[0]) = 0;
    [(HSStage *)self postNotification:HSRecordingPlaybackStageDataChanged];
  }

  HSUtil::ObjectLock::~ObjectLock(v10);
}

- (void)recordingSetMaxSize:(unint64_t)size
{
  HSUtil::ObjectLock::ObjectLock(v5, self);
  self->_state.recordingMaxSize = size;
  if ([(HSRecordingPlaybackStage *)self _mode]== 1)
  {
    [(HSRecordingPlaybackStage *)self _createRecordingBuffer];
  }

  else
  {
    [(HSRecordingPlaybackStage *)self _destroyRecordingBuffer];
  }

  [v5[1] unlock];
  LOBYTE(v5[0]) = 0;
  [(HSStage *)self postNotification:HSRecordingPlaybackStageDataChanged, v5[0]];
  HSUtil::ObjectLock::~ObjectLock(v5);
}

- (unint64_t)recordingSize
{
  HSUtil::ObjectLock::ObjectLock(v5, self);
  v3 = [(HSRecordingStage *)self->_state.recording size];
  HSUtil::ObjectLock::~ObjectLock(v5);
  return v3;
}

- (BOOL)recordingCopyDataTo:(Writable *)to
{
  HSUtil::ObjectLock::ObjectLock(v6, self);
  LOBYTE(to) = [(HSRecordingStage *)self->_state.recording copyDataTo:to];
  HSUtil::ObjectLock::~ObjectLock(v6);
  return to;
}

- (void)playbackLoadFromData:(id)data
{
  dataCopy = data;
  HSUtil::ObjectLock::ObjectLock(v5, self);
  [(HSPlaybackStage *)self->_state.playback reset];
  [(HSRecordingStage *)self->_state.recording reset];
  [(HSRecordingPlaybackStage *)self _destroyRecordingBuffer];
  [(HSPlaybackStage *)self->_state.playback loadFromData:dataCopy];
  [v5[1] unlock];
  LOBYTE(v5[0]) = 0;
  [(HSStage *)self postNotification:HSRecordingPlaybackStageDataChanged, v5[0]];
  HSUtil::ObjectLock::~ObjectLock(v5);
}

- (float)playbackProgress
{
  HSUtil::ObjectLock::ObjectLock(v6, self);
  if (([(HSRecordingPlaybackStage *)self _mode]| 2) == 2)
  {
    [(HSPlaybackStage *)self->_state.playback progress];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  HSUtil::ObjectLock::~ObjectLock(v6);
  return v4;
}

- (void)playbackSetProgress:(float)progress dispatchEvent:(BOOL)event
{
  eventCopy = event;
  HSUtil::ObjectLock::ObjectLock(v8, self);
  *&v7 = progress;
  [(HSPlaybackStage *)self->_state.playback setProgress:eventCopy dispatchEvent:v7];
  [v8[1] unlock];
  LOBYTE(v8[0]) = 0;
  [(HSStage *)self postNotification:HSRecordingPlaybackStageChanged, v8[0]];
  HSUtil::ObjectLock::~ObjectLock(v8);
}

- (void)setConsumers:(id)consumers
{
  consumersCopy = consumers;
  HSUtil::ObjectLock::ObjectLock(v6, self);
  v5.receiver = self;
  v5.super_class = HSRecordingPlaybackStage;
  [(HSStage *)&v5 setConsumers:consumersCopy];
  self = (self + 120);
  [*&self->super._state.lock.__m_.__opaque[16] setConsumers:consumersCopy];
  [*&self->super._state.lock.__m_.__opaque[24] setConsumers:consumersCopy];
  HSUtil::ObjectLock::~ObjectLock(v6);
}

- (int)_mode
{
  p_state = &self->_state;
  if ([(HSRecordingStage *)self->_state.recording recording])
  {
    return 1;
  }

  if ([(HSPlaybackStage *)p_state->playback playing])
  {
    return 2;
  }

  return 0;
}

- (void)_destroyRecordingBuffer
{
  p_state = &self->_state;
  cntrl = self->_state.recordingBuffer.__cntrl_;
  p_state->recordingBuffer.__ptr_ = 0;
  p_state->recordingBuffer.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  recording = p_state->recording;
  v5 = 0;
  v6 = 0;
  [(HSRecordingStage *)recording setDestination:&v5 maxSize:0];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

- (void)_setPlaybackTimerEnabled:(BOOL)enabled
{
  playbackHeartbeatTimer = self->_state.playbackHeartbeatTimer;
  if (enabled)
  {
    v4 = 0;
    v5 = 100000000;
  }

  else
  {
    v4 = -1;
    v5 = -1;
  }

  dispatch_source_set_timer(playbackHeartbeatTimer, v4, v5, 0);
}

- (void)_playbackHeartbeatTimerFired
{
  HSUtil::ObjectLock::ObjectLock(v3, self);
  if ([(HSRecordingPlaybackStage *)self _mode]!= 2)
  {
    [(HSRecordingPlaybackStage *)self _setPlaybackTimerEnabled:0];
  }

  [v3[1] unlock];
  LOBYTE(v3[0]) = 0;
  [(HSStage *)self postNotification:HSRecordingPlaybackStageChanged, v3[0]];
  HSUtil::ObjectLock::~ObjectLock(v3);
}

- (id).cxx_construct
{
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  return self;
}

- (id)HSRecordingPlaybackStageProxy_setMode:(id)mode
{
  v3 = HSProxySynth::HSRecordingPlaybackStageProxy_setMode_call1<void>(self, mode);

  return v3;
}

- (id)HSRecordingPlaybackStageProxy_recordingSetMaxSize:(id)size
{
  v3 = HSProxySynth::HSRecordingPlaybackStageProxy_recordingSetMaxSize_call1<void>(self, size);

  return v3;
}

- (id)HSRecordingPlaybackStageProxy_playbackSetProgressdispatchEvent:(id)event
{
  v3 = HSProxySynth::HSRecordingPlaybackStageProxy_playbackSetProgressdispatchEvent_call2<void>(self, event);

  return v3;
}

@end