@interface HSPlaybackStage
- (BOOL)_decodePlayFrame:(const PlayFrame *)a3 toFrame:(Frame *)a4;
- (BOOL)playing;
- (HSPlaybackStage)initWithQueue:(id)a3;
- (float)progress;
- (id).cxx_construct;
- (id)data;
- (void)_load:(shared_ptr<HSUtil::IO::Readable>)a3;
- (void)_playConsumeFrame:(const PlayFrame *)a3;
- (void)_playNextFrame;
- (void)_playStateFrame:(const PlayFrame *)a3;
- (void)_setPlaying:(BOOL)a3;
- (void)_updatePlaybackTime:(int64_t)a3;
- (void)data;
- (void)loadFromData:(id)a3;
- (void)loadFromSource:(shared_ptr<HSUtil::IO::Readable>)a3;
- (void)reset;
- (void)setPlaying:(BOOL)a3;
- (void)setProgress:(float)a3 dispatchEvent:(BOOL)a4;
@end

@implementation HSPlaybackStage

- (HSPlaybackStage)initWithQueue:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = HSPlaybackStage;
  v6 = [(HSStage *)&v19 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v6->_queue, a3);
  if (!v7->_queue)
  {
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -15);
    v9 = dispatch_queue_create("HSRecordingStage playback queue", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    if (v7->_queue)
    {

      goto LABEL_5;
    }

    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPlaybackStage.mm", v20);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPlaybackStage initWithQueue:];
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

LABEL_5:
  HSUtil::ObjectLock::ObjectLock(v20, v7);
  objc_initWeak(&location, v7);
  v11 = v7->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __33__HSPlaybackStage_initWithQueue___block_invoke;
  handler[3] = &unk_1091A0;
  objc_copyWeak(&v17, &location);
  v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, v11);
  dispatch_source_set_event_handler(v12, handler);
  dispatch_source_set_timer(v12, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_activate(v12);
  playTimer = v7->_state.playTimer;
  v7->_state.playTimer = v12;

  v14 = v7;
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  HSUtil::ObjectLock::~ObjectLock(v20);
LABEL_10:

  return v14;
}

void __33__HSPlaybackStage_initWithQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _playNextFrame];
}

- (BOOL)playing
{
  v2 = self;
  HSUtil::ObjectLock::ObjectLock(v4, self);
  LOBYTE(v2) = v2->_state.play.playing;
  HSUtil::ObjectLock::~ObjectLock(v4);
  return v2;
}

- (void)setPlaying:(BOOL)a3
{
  v3 = a3;
  HSUtil::ObjectLock::ObjectLock(v5, self);
  [(HSPlaybackStage *)self _setPlaying:v3];
  HSUtil::ObjectLock::~ObjectLock(v5);
}

- (void)reset
{
  HSUtil::ObjectLock::ObjectLock(v5, self);
  v3 = 0;
  v4 = 0;
  [(HSPlaybackStage *)self _load:&v3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  HSUtil::ObjectLock::~ObjectLock(v5);
}

- (float)progress
{
  v3 = HSUtil::ObjectLock::ObjectLock(v10, self);
  if (self->_state.play.playing)
  {
    [(HSPlaybackStage *)self _updatePlaybackTime:HSUtil::GetMonotonicTime(v3)];
  }

  end = self->_state.play.playback._frames.__end_;
  v5 = 0.0;
  if (self->_state.play.playback._frames.__begin_ != end)
  {
    if (self->_state.play.playback._nextFrame.__i_ == end)
    {
      v5 = 1.0;
    }

    else
    {
      var2 = end[-1].var2;
      v7 = __CFADD__(var2, 1);
      v8 = var2 + 1;
      if (!v7)
      {
        v5 = self->_state.play.playback._time / v8;
      }
    }
  }

  HSUtil::ObjectLock::~ObjectLock(v10);
  return v5;
}

- (void)setProgress:(float)a3 dispatchEvent:(BOOL)a4
{
  v4 = a4;
  HSUtil::ObjectLock::ObjectLock(v25, self);
  [(HSPlaybackStage *)self _setPlaying:0];
  v7 = fmax(fmin(a3, 1.0), 0.0);
  if (v7 == 0.0)
  {
    goto LABEL_2;
  }

  begin = self->_state.play.playback._frames.__begin_;
  end = self->_state.play.playback._frames.__end_;
  if (v7 != 1.0)
  {
    if (begin == end)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = (end[-1].var2 + 1);
    }

    v8 = (v17 * v7);
    goto LABEL_3;
  }

  if (begin == end)
  {
LABEL_2:
    v8 = 0;
  }

  else
  {
    v8 = end[-1].var2 + 1;
  }

LABEL_3:
  Playback::resetTime(&self->_state.play.playback, v8);
  if (v4)
  {
    i = self->_state.play.playback._nextFrame.__i_;
    v10 = self->_state.play.playback._frames.__end_;
    if (v10 != i)
    {
      while (i->var1 != 3)
      {
        if (++i == v10)
        {
          goto LABEL_24;
        }
      }
    }

    if (i != v10 && i && i != self->_state.play.progressEventPlayFrame)
    {
      v23 = 0uLL;
      v24 = 0;
      v31 = 0uLL;
      v13 = i;
      v32 = 0;
      while (1)
      {
        if (v13->var2 - i->var2 > 4999999)
        {
LABEL_20:
          v20 = v31;
          v21 = v32;
          v32 = 0;
          v31 = 0uLL;
          v22 = 1;
          *v33 = &v31;
          std::vector<HIDEvent * {__strong}>::__destroy_vector::operator()[abi:ne200100](v33);
          std::vector<HIDEvent * {__strong}>::__vdeallocate(&v23);
          v23 = v20;
          v24 = v21;
          v21 = 0;
          v20 = 0uLL;
          *v33 = &v20;
          std::vector<HIDEvent * {__strong}>::__destroy_vector::operator()[abi:ne200100](v33);
          self->_state.play.progressEventPlayFrame = i;
          v14 = objc_opt_new();
          std::vector<HIDEvent * {__strong}>::__vdeallocate((v14 + 8));
          *(v14 + 8) = v23;
          *(v14 + 24) = v24;
          v23 = 0uLL;
          v24 = 0;
          queue = self->_queue;
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = __45__HSPlaybackStage_setProgress_dispatchEvent___block_invoke;
          v18[3] = &unk_109250;
          v18[4] = self;
          v19 = v14;
          v16 = v14;
          dispatch_async(queue, v18);

          goto LABEL_23;
        }

        if (v13->var1 == 3)
        {
          v27 = 3;
          v28 = 0;
          v29 = 0;
          v26 = off_10A558;
          v30 = 0;
          HSRecordingTypes::PlaybackDecoder::decodeFrame(&self->_state.play.playback, v13, &v26);
          if (self->_state.play.playback.status)
          {
            basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPlaybackStage.mm", v33);
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [HSPlaybackStage setProgress:dispatchEvent:];
            }

            LOBYTE(v20) = 0;
            v22 = 0;

            *v33 = &v31;
            std::vector<HIDEvent * {__strong}>::__destroy_vector::operator()[abi:ne200100](v33);
            basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPlaybackStage.mm", v33);
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [HSPlaybackStage setProgress:dispatchEvent:];
            }

            if (v22 == 1)
            {
              *v33 = &v20;
              std::vector<HIDEvent * {__strong}>::__destroy_vector::operator()[abi:ne200100](v33);
            }

LABEL_23:
            *v33 = &v23;
            std::vector<HIDEvent * {__strong}>::__destroy_vector::operator()[abi:ne200100](v33);
            break;
          }

          std::vector<objc_object * {__strong}>::push_back[abi:ne200100](&v31, &v30);

          v10 = self->_state.play.playback._frames.__end_;
        }

        if (++v13 == v10)
        {
          goto LABEL_20;
        }
      }
    }
  }

LABEL_24:
  HSUtil::ObjectLock::~ObjectLock(v25);
}

- (void)loadFromSource:(shared_ptr<HSUtil::IO::Readable>)a3
{
  ptr = a3.__ptr_;
  if (!*a3.__ptr_)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HSPlaybackStage.mm" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"source"}];
  }

  HSUtil::ObjectLock::ObjectLock(v10, self);
  v5 = *(ptr + 1);
  v8 = *ptr;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(HSPlaybackStage *)self _load:&v8];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  HSUtil::ObjectLock::~ObjectLock(v10);
}

- (void)loadFromData:(id)a3
{
  if (!a3)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"HSPlaybackStage.mm" lineNumber:281 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  HSUtil::ObjectLock::ObjectLock(v6, self);
  std::allocate_shared[abi:ne200100]<HSUtil::Buffer,std::allocator<HSUtil::Buffer>,HSUtil::Buffer::CopyType const&,NSData * {__strong}&,0>();
}

- (id)data
{
  HSUtil::ObjectLock::ObjectLock(v8, self);
  ptr = self->_state.play.playback._source.__ptr_;
  cntrl = self->_state.play.playback._source.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  if (ptr)
  {
    HSUtil::IOUtil::ReadAll(ptr, 0, v7);
    if (v7[5])
    {
      v5 = HSUtil::Buffer::getNSData(v7);
    }

    else
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPlaybackStage.mm", v9);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSPlaybackStage data];
      }

      v5 = 0;
    }

    HSUtil::Buffer::~Buffer(v7);
    if (cntrl)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if (cntrl)
    {
LABEL_12:
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  HSUtil::ObjectLock::~ObjectLock(v8);

  return v5;
}

- (void)_setPlaying:(BOOL)a3
{
  p_state = &self->_state;
  if (self->_state.play.playing != a3)
  {
    self->_state.play.playing = a3;
    if (a3)
    {
      if (self->_state.play.playback._nextFrame.__i_ == self->_state.play.playback._frames.__end_)
      {
        self = Playback::resetTime(&self->_state.play.playback, 0);
      }

      MonotonicTime = HSUtil::GetMonotonicTime(self);
      time = p_state->play.playback._time;
      p_state->play.startTime = MonotonicTime;
      p_state->play.startTimeOffset = time;
      v6 = dispatch_time(0, 0);
      v7 = 0;
      p_state->play.dispatchStartTime = v6;
    }

    else
    {
      [(HSPlaybackStage *)self _updatePlaybackTime:HSUtil::GetMonotonicTime(self)];
      v7 = -1;
    }

    playTimer = p_state->playTimer;

    dispatch_source_set_timer(playTimer, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

- (void)_load:(shared_ptr<HSUtil::IO::Readable>)a3
{
  ptr = a3.__ptr_;
  [(HSPlaybackStage *)self _setPlaying:0, a3.__cntrl_];
  v26 = 0;
  Playback::Playback(&v27);
  v28 = 0u;
  v29 = 0u;
  self->_state.play.playing = 0;
  HSUtil::Decoder::operator=(&self->_state.play.playback, &v27);
  source = v27._source;
  v27._source.__ptr_ = 0;
  v27._source.__cntrl_ = 0;
  cntrl = self->_state.play.playback._source.__cntrl_;
  self->_state.play.playback._source = source;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  p_frames = &self->_state.play.playback._frames;
  begin = self->_state.play.playback._frames.__begin_;
  if (begin)
  {
    self->_state.play.playback._frames.__end_ = begin;
    operator delete(begin);
    p_frames->__begin_ = 0;
    self->_state.play.playback._frames.__end_ = 0;
    self->_state.play.playback._frames.__cap_ = 0;
  }

  self->_state.play.playback._frames = v27._frames;
  memset(&v27._frames, 0, sizeof(v27._frames));
  *&self->_state.play.playback._nextFrame.__i_ = *&v27._nextFrame.__i_;
  v9 = v29;
  *&self->_state.play.startTime = v28;
  *&self->_state.play.dispatchStartTime = v9;
  if (v27._source.__cntrl_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27._source.__cntrl_);
  }

  if (v27._keys.__cntrl_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27._keys.__cntrl_);
  }

  v10 = v27._callbacks.__ptr_;
  v27._callbacks.__ptr_ = 0;
  if (v10)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v10);
    operator delete();
  }

  if (*ptr)
  {
    v11 = *(ptr + 1);
    v24 = *ptr;
    v25 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    Playback::Playback(&v26, &v24);
    HSUtil::Decoder::operator=(&self->_state.play.playback, &v26);
    v12 = *&v27._off;
    *&v27._off = 0uLL;
    v13 = self->_state.play.playback._source.__cntrl_;
    self->_state.play.playback._source = v12;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v14 = p_frames->__begin_;
    if (p_frames->__begin_)
    {
      self->_state.play.playback._frames.__end_ = v14;
      operator delete(v14);
      p_frames->__begin_ = 0;
      self->_state.play.playback._frames.__end_ = 0;
      self->_state.play.playback._frames.__cap_ = 0;
    }

    *&self->_state.play.playback._frames.__begin_ = *&v27._source.__cntrl_;
    self->_state.play.playback._frames.__cap_ = v27._frames.__end_;
    memset(&v27._source.__cntrl_, 0, 24);
    *&self->_state.play.playback._nextFrame.__i_ = *&v27._frames.__cap_;
    if (v27._source.__ptr_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27._source.__ptr_);
    }

    if (v27._keys.__ptr_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27._keys.__ptr_);
    }

    master = v27._master;
    v27._master = 0;
    if (master)
    {
      std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](master);
      operator delete();
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (self->_state.play.playback.status)
    {
      v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v16)
      {
        [(HSPlaybackStage *)v16 _load:v17, v18, v19, v20, v21, v22, v23];
      }
    }
  }
}

- (void)_updatePlaybackTime:(int64_t)a3
{
  v3 = self->_state.play.startTimeOffset + a3 - self->_state.play.startTime;
  if (self->_state.play.playback._time > v3)
  {
    [HSPlaybackStage _updatePlaybackTime:];
  }

  self->_state.play.playback._time = v3;
}

- (BOOL)_decodePlayFrame:(const PlayFrame *)a3 toFrame:(Frame *)a4
{
  p_state = &self->_state;
  HSRecordingTypes::PlaybackDecoder::decodeFrame(&self->_state.play.playback, a3, a4);
  status = p_state->play.playback.status;
  if (status)
  {
    v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      [(HSPlaybackStage *)v7 _decodePlayFrame:v8 toFrame:v9, v10, v11, v12, v13, v14];
    }

    [(HSPlaybackStage *)self _setPlaying:0];
  }

  return status == 0;
}

- (void)_playStateFrame:(const PlayFrame *)a3
{
  if (a3->var1 != 2)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HSPlaybackStage.mm" lineNumber:362 description:{@"Invalid parameter not satisfying: %@", @"playFrame.type == Frame::Type::State"}];
  }

  HSRecordingTypes::StateFrame::StateFrame(v7, &self->super);
  if (![(HSPlaybackStage *)self _decodePlayFrame:a3 toFrame:v7])
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPlaybackStage.mm", v9);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPlaybackStage _playStateFrame:];
    }
  }

  v7[0] = off_10A510;
  std::__hash_table<std::__hash_value_type<std::string,HSStage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,HSStage * {__strong}>>>::~__hash_table(&v8);
}

- (void)_playConsumeFrame:(const PlayFrame *)a3
{
  if (a3->var1 != 3)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HSPlaybackStage.mm" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"playFrame.type == Frame::Type::Consume"}];
  }

  v9 = 3;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v8 = off_10A558;
  if ([(HSPlaybackStage *)self _decodePlayFrame:a3 toFrame:&v8])
  {
    v5 = v12;
    if ([v5 conformsToProtocol:&OBJC_PROTOCOL___HSTimestampable])
    {
      [v5 hsSetTimestamp:{objc_msgSend(v5, "hsTimestamp") + self->_state.play.startTime - self->_state.play.playback._frames.__begin_->var2}];
    }

    [(HSStage *)self consume:v5];
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSPlaybackStage.mm", v13);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSPlaybackStage _playConsumeFrame:];
    }
  }
}

- (void)_playNextFrame
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = HSUtil::ObjectLock::ObjectLock(v23, self);
  p_state = &self->_state;
  if (self->_state.play.playing)
  {
    [(HSPlaybackStage *)self _updatePlaybackTime:HSUtil::GetMonotonicTime(v3)];
    end = self->_state.play.playback._frames.__end_;
    i = self->_state.play.playback._nextFrame.__i_;
    if (i == end)
    {
LABEL_5:
      [(HSPlaybackStage *)self _setPlaying:0];
      goto LABEL_6;
    }

    var2 = i->var2;
    if (self->_state.play.playback._time < var2)
    {
      dispatchStartTime = self->_state.play.dispatchStartTime;
      v9 = var2 - self->_state.play.startTimeOffset;
      playTimer = p_state->playTimer;
      v11 = dispatch_time(dispatchStartTime, v9);
      dispatch_source_set_timer(playTimer, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
      goto LABEL_6;
    }

    self->_state.play.playback._nextFrame.__i_ = i + 1;
    if (&i[1] != end)
    {
      var2 = i[1].var2;
    }

    v12 = p_state->playTimer;
    v13 = dispatch_time(self->_state.play.dispatchStartTime, var2 - self->_state.play.startTimeOffset);
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
    var1 = i->var1;
    if (var1 != 1)
    {
      if (var1 == 3)
      {
        [(HSPlaybackStage *)self _playConsumeFrame:i];
        goto LABEL_6;
      }

      if (var1 == 2)
      {
        [(HSPlaybackStage *)self _playStateFrame:i];
        goto LABEL_6;
      }

      v15 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v15)
      {
        [(HSPlaybackStage *)v15 _playNextFrame:v16];
      }

      goto LABEL_5;
    }
  }

LABEL_6:
  HSUtil::ObjectLock::~ObjectLock(v23);
}

- (id).cxx_construct
{
  p_state = &self->_state;
  self->_state.playTimer = 0;
  self->_state.play.playing = 0;
  Playback::Playback(&self->_state.play.playback);
  *&p_state->play.dispatchStartTime = 0u;
  *&p_state->play.startTime = 0u;
  return self;
}

- (void)initWithQueue:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)setProgress:dispatchEvent:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)setProgress:dispatchEvent:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)data
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_playStateFrame:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_playConsumeFrame:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end