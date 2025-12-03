@interface HSRecordingStage
- (BOOL)_copyDataTo:(Writable *)to;
- (BOOL)_encodeFrame:(Frame *)frame;
- (BOOL)_enumerateEncoders:(id)encoders;
- (BOOL)copyDataTo:(Writable *)to;
- (BOOL)recording;
- (HSRecordingStage)init;
- (id).cxx_construct;
- (id)data;
- (unint64_t)_size;
- (unint64_t)size;
- (void)_encodeHeaderFrames:(void *)frames;
- (void)_recordConsumeFrame:(id)frame;
- (void)_recordStateFrame;
- (void)_reset;
- (void)_rotateEncoders:(void *)encoders;
- (void)_startRecording;
- (void)_stopRecording;
- (void)data;
- (void)dealloc;
- (void)handleConsume:(id)consume;
- (void)reset;
- (void)setDestination:(shared_ptr<HSUtil:(unint64_t)destination :IO::Writable>)a3 maxSize:;
- (void)setRecording:(BOOL)recording;
@end

@implementation HSRecordingStage

- (HSRecordingStage)init
{
  v8.receiver = self;
  v8.super_class = HSRecordingStage;
  v2 = [(HSStage *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v6 = 0;
    v7 = 0;
    [(HSRecordingStage *)v2 setDestination:&v6 maxSize:0];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v4 = v3;
  }

  return v3;
}

- (void)dealloc
{
  NSLog(@"~HSRecordingStage", a2);
  v3.receiver = self;
  v3.super_class = HSRecordingStage;
  [(HSStage *)&v3 dealloc];
}

- (void)setDestination:(shared_ptr<HSUtil:(unint64_t)destination :IO::Writable>)a3 maxSize:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  HSUtil::ObjectLock::ObjectLock(v14, self);
  p_state = &self->_state;
  recording = self->_state.recording;
  [(HSRecordingStage *)self _reset];
  var0 = ptr->var0;
  if (!ptr->var0)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN6HSUtil6BufferENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v10 = ptr[1].var0;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = self->_state.dst.__cntrl_;
  p_state->dst.__ptr_ = var0;
  self->_state.dst.__cntrl_ = v10;
  {
    v12 = self->_state.dst.__cntrl_;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = self->_state.src.__cntrl_;
  self->_state.src.__ptr_ = var0;
  self->_state.src.__cntrl_ = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    var0 = self->_state.src.__ptr_;
  }

  self->_state.maxSize = cntrl;
  if (cntrl && !var0)
  {
    __assert_rtn("[HSRecordingStage setDestination:maxSize:]", "HSRecordingStage.mm", 195, "_state.src || _state.maxSize==0");
  }

  if (recording)
  {
    [(HSRecordingStage *)self _startRecording];
  }

  HSUtil::ObjectLock::~ObjectLock(v14);
}

- (BOOL)recording
{
  selfCopy = self;
  HSUtil::ObjectLock::ObjectLock(v4, self);
  LOBYTE(selfCopy) = selfCopy->_state.recording;
  HSUtil::ObjectLock::~ObjectLock(v4);
  return selfCopy;
}

- (void)setRecording:(BOOL)recording
{
  recordingCopy = recording;
  HSUtil::ObjectLock::ObjectLock(v5, self);
  if (recordingCopy)
  {
    if (!self->_state.recording)
    {
      [(HSRecordingStage *)self _startRecording];
    }
  }

  else if (self->_state.recording)
  {
    [(HSRecordingStage *)self _stopRecording];
  }

  HSUtil::ObjectLock::~ObjectLock(v5);
}

- (void)reset
{
  HSUtil::ObjectLock::ObjectLock(v3, self);
  [(HSRecordingStage *)self _reset];
  HSUtil::ObjectLock::~ObjectLock(v3);
}

- (unint64_t)size
{
  HSUtil::ObjectLock::ObjectLock(v5, self);
  _size = [(HSRecordingStage *)self _size];
  HSUtil::ObjectLock::~ObjectLock(v5);
  return _size;
}

- (id)data
{
  HSUtil::ObjectLock::ObjectLock(v7, self);
  LOBYTE(v6) = 0;
  if ([(HSRecordingStage *)self _copyDataTo:&off_108FA0, &off_108FF8, &off_109018, &off_109030, off_109048, HSUtil::Buffer::_EmptyData, 0, 0, v6])
  {
    v3 = HSUtil::Buffer::getNSData(&v5);
  }

  else
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingStage.mm", v8);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSRecordingStage data];
    }

    v3 = 0;
  }

  HSUtil::Buffer::~Buffer(&v5);
  HSUtil::ObjectLock::~ObjectLock(v7);

  return v3;
}

- (BOOL)copyDataTo:(Writable *)to
{
  HSUtil::ObjectLock::ObjectLock(v7, self);
  v5 = [(HSRecordingStage *)self _copyDataTo:to];
  if (!v5)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSRecordingStage.mm", v8);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSRecordingStage copyDataTo:];
    }
  }

  HSUtil::ObjectLock::~ObjectLock(v7);
  return v5;
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  if (self->_state.recording)
  {
    [(HSRecordingStage *)self _recordConsumeFrame:consumeCopy];
  }

  v5.receiver = self;
  v5.super_class = HSRecordingStage;
  [(HSStage *)&v5 handleConsume:consumeCopy];
}

- (void)_rotateEncoders:(void *)encoders
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Rotate encoders", v10, 2u);
  }

  currentEncoder = self->_state.currentEncoder;
  begin = self->_state.encoders.__begin_;
  if (currentEncoder < ((self->_state.encoders.__end_ - begin) >> 3) - 1)
  {
    v7 = currentEncoder + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = begin[v7];
  self->_state.currentEncoder = v7;
  *(v8 + 80) = *(v8 + 72);
  v9 = *(v8 + 96);
  if (v9)
  {
    *(v8 + 104) = v9;
    operator delete(v9);
  }

  *(v8 + 152) = 0;
  *(v8 + 16) = 0;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0;
  [(HSRecordingStage *)self _encodeHeaderFrames:encoders];
}

- (void)_startRecording
{
  OUTLINED_FUNCTION_4_1(__stack_chk_guard);
  (*(v0 + 16))();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_stopRecording
{
  OUTLINED_FUNCTION_4_1(__stack_chk_guard);
  (*(v0 + 16))();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_reset
{
  p_state = &self->_state;
  self->_state.recording = 0;
  std::vector<std::unique_ptr<EncoderState>>::clear[abi:ne200100](&self->_state.encoders.__begin_);
  p_state->currentEncoder = 0;
}

- (BOOL)_enumerateEncoders:(id)encoders
{
  encodersCopy = encoders;
  p_state = &self->_state;
  currentEncoder = self->_state.currentEncoder;
  v7 = 8 * currentEncoder + 8;
  while (1)
  {
    ++currentEncoder;
    begin = p_state->encoders.__begin_;
    if (currentEncoder >= (p_state->encoders.__end_ - begin) >> 3)
    {
      break;
    }

    v9 = (encodersCopy)[2](encodersCopy, &begin[v7]);
    v7 += 8;
    if ((v9 & 1) == 0)
    {
      v10 = 0;
      goto LABEL_8;
    }
  }

  v11 = 0;
  v12 = 0;
  do
  {
    v10 = (encodersCopy)[2](encodersCopy, p_state->encoders.__begin_ + v11);
    if ((v10 & 1) == 0)
    {
      break;
    }

    ++v12;
    v11 += 8;
  }

  while (v12 <= p_state->currentEncoder);
LABEL_8:

  return v10;
}

- (BOOL)_copyDataTo:(Writable *)to
{
  if (self->_state.encoders.__begin_ == self->_state.encoders.__end_)
  {
    return 0;
  }

  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __32__HSRecordingStage__copyDataTo___block_invoke;
  v5[3] = &unk_10A340;
  v5[4] = v6;
  v5[5] = to;
  v3 = [(HSRecordingStage *)self _enumerateEncoders:v5];
  _Block_object_dispose(v6, 8);
  return v3;
}

uint64_t __32__HSRecordingStage__copyDataTo___block_invoke(uint64_t a1, Readable **a2)
{
  v2 = *(*a2 + 23);
  if (v2)
  {
    if (HSUtil::IOUtil::Copy(*(a1 + 40), *(*(*(a1 + 32) + 8) + 24), *a2, 0, v2))
    {
      v5 = 0;
    }

    else
    {
      v5 = v4 == v2;
    }

    if (!v5)
    {
      return 0;
    }

    *(*(*(a1 + 32) + 8) + 24) += v2;
  }

  return 1;
}

- (unint64_t)_size
{
  begin = self->_state.encoders.__begin_;
  end = self->_state.encoders.__end_;
  if (begin == end)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *begin++;
    result += *(v5 + 184);
  }

  while (begin != end);
  return result;
}

- (void)_recordStateFrame
{
  OUTLINED_FUNCTION_4_1(__stack_chk_guard);
  (*(v0 + 16))();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_recordConsumeFrame:(id)frame
{
  frameCopy = frame;
  v7 = 3;
  v8 = 0;
  v9 = 0;
  v6 = off_10A558;
  v10 = frameCopy;
  if (![(HSRecordingStage *)self _encodeFrame:&v6])
  {
    [(HSRecordingStage *)self _rotateEncoders:0];
    if (![(HSRecordingStage *)self _encodeFrame:&v6])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "failed to encode consume frame after rotating encoders");
    }
  }
}

- (void)_encodeHeaderFrames:(void *)frames
{
  HSRecordingTypes::HeaderFrame::HeaderFrame(v9);
  if (![(HSRecordingStage *)self _encodeFrame:v9])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "failed to encode header frame");
LABEL_9:
  }

  if (frames)
  {
    if (![(HSRecordingStage *)self _encodeFrame:frames])
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "failed to encode state frame");
      goto LABEL_9;
    }
  }

  else
  {
    HSRecordingTypes::StateFrame::StateFrame(v7, &self->super);
    if (![(HSRecordingStage *)self _encodeFrame:v7])
    {
      v6 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v6, "failed to encode state frame");
    }

    v7[0] = off_10A510;
    std::__hash_table<std::__hash_value_type<std::string,HSStage * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,HSStage * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,HSStage * {__strong}>>>::~__hash_table(&v8);
  }
}

- (BOOL)_encodeFrame:(Frame *)frame
{
  p_state = &self->_state;
  v4 = *(self->_state.encoders.__begin_ + self->_state.currentEncoder);
  v5 = v4[23];
  v6 = (v4 + 2);
  if (!*(v4 + 4))
  {
    v7 = HSRecordingTypes::Frame::encode(frame, v6);
    if (!*v6 && (v7 & 1) == 0)
    {
      *v6 = 10;
    }
  }

  HSUtil::Encoder::flush(v6);
  v8 = *v6;
  if (v8)
  {
    if (p_state->maxSize)
    {
      if (v8 == 7)
      {
        if (!(*(*v4 + 40))(v4, v5))
        {
          return v8 == 0;
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "writeLength failed");
      }

      else
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "write failure");
      }
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "failed to encode with unbounded recording");
    }
  }

  return v8 == 0;
}

- (id).cxx_construct
{
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 145) = 0u;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  return self;
}

- (void)data
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)copyDataTo:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)_recordConsumeFrame:.cold.1()
{
  OUTLINED_FUNCTION_4_1(__stack_chk_guard);
  (*(v0 + 16))();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end