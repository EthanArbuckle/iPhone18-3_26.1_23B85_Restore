@interface ATBlurMixer
- (BOOL)isBlurEnabled;
- (BOOL)updateFormat:(const AudioStreamBasicDescription *)format error:(id *)error;
- (StringRef)getAUStripPath;
- (StringRef)getDSPGraphPath;
- (StringRef)getPropStripPath;
- (float)blendTimeMs;
- (id).cxx_construct;
- (id)initInternalWithFormat:(const AudioStreamBasicDescription *)format maxFrames:(unsigned int)frames isUplink:(BOOL)uplink error:(id *)error;
- (id)processBlock;
- (int)configure;
- (int)initializeAU;
- (int)setAUStrip:(__CFDictionary *)strip propertyStrip:(__CFDictionary *)propertyStrip;
- (int)setDSPGraph:(__CFString *)graph;
- (int)setElementCount:(unsigned int)count;
- (int)setFormat:(unsigned int)format;
- (int)setMaxFramesPerSlice;
- (int)setupAU;
- (int)uninitializeAU;
- (int)updateFormats;
- (unsigned)getBusCountForScope:(unsigned int)scope;
- (void)setBlendTimeMs:(float)ms;
- (void)setEnableBlur:(BOOL)blur;
@end

@implementation ATBlurMixer

- (id).cxx_construct
{
  *(self + 4) = 0uLL;
  *(self + 10) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  return self;
}

- (float)blendTimeMs
{
  v21 = *MEMORY[0x1E69E9840];
  outValue = 0.0;
  Parameter = AudioUnitGetParameter(self->mAUDSPGraph.__ptr_, 1u, 0, 0, &outValue);
  if (Parameter)
  {
    v4 = Parameter;
    v5 = AT::Translation::gTranslationLog;
    if (os_log_type_enabled(AT::Translation::gTranslationLog, OS_LOG_TYPE_ERROR))
    {
      isUplink = self->_isUplink;
      v7 = "downlink";
      v12 = "ATBlurMixer.mm";
      *buf = 136316162;
      v13 = 1024;
      if (isUplink)
      {
        v7 = "uplink";
      }

      v14 = 537;
      v15 = 2048;
      selfCopy = self;
      v17 = 2080;
      v18 = v7;
      v19 = 1024;
      v20 = v4;
      _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ATBlurMixer@%p(%s): Error setting parameter BlurBlendTimeMs, err = %d", buf, 0x2Cu);
    }
  }

  result = outValue;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setBlendTimeMs:(float)ms
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = AudioUnitSetParameter(self->mAUDSPGraph.__ptr_, 1u, 0, 0, ms, 0);
  if (v4)
  {
    v5 = v4;
    v6 = AT::Translation::gTranslationLog;
    if (os_log_type_enabled(AT::Translation::gTranslationLog, OS_LOG_TYPE_ERROR))
    {
      isUplink = self->_isUplink;
      v8 = "donwlink";
      v11 = "ATBlurMixer.mm";
      v10 = 136316162;
      v12 = 1024;
      if (isUplink)
      {
        v8 = "uplink";
      }

      v13 = 524;
      v14 = 2048;
      selfCopy = self;
      v16 = 2080;
      v17 = v8;
      v18 = 1024;
      v19 = v5;
      _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ATBlurMixer@%p(%s): Error setting parameter BlurBlendTimeMs, err = %d", &v10, 0x2Cu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isBlurEnabled
{
  outValue = 0.0;
  Parameter = AudioUnitGetParameter(self->mAUDSPGraph.__ptr_, 0, 0, 0, &outValue);
  if (Parameter)
  {
    v4 = Parameter;
    v5 = self->_isUplink ? 7 : 9;
    v6 = _os_log_pack_size() + 88;
    message = caulk::deferred_logger::create_message(AT::Translation::gTranslationDeferredLog, v6 + v5, 16);
    if (message)
    {
      v8 = message;
      v9 = (message + v6);
      v10 = _os_log_pack_fill();
      selfCopy = self;
      if (self->_isUplink)
      {
        v12 = "uplink";
      }

      else
      {
        v12 = "downlink";
      }

      stpcpy(v9, v12);
      *v10 = 134218498;
      *(v10 + 4) = selfCopy;
      *(v10 + 12) = 2080;
      *(v10 + 14) = v9;
      *(v10 + 22) = 1024;
      *(v10 + 24) = v4;
      caulk::concurrent::messenger::enqueue(*(AT::Translation::gTranslationDeferredLog + 16), v8);
    }
  }

  v13 = fabsf(outValue);
  v14 = 1.0;
  if (v13 >= 1.0)
  {
    v14 = v13;
  }

  return v13 > fabsf(v14 * 0.00000011921);
}

- (void)setEnableBlur:(BOOL)blur
{
  v4 = AudioUnitSetParameter(self->mAUDSPGraph.__ptr_, 0, 0, 0, blur, 0);
  if (v4)
  {
    v5 = v4;
    v6 = self->_isUplink ? 7 : 9;
    v7 = _os_log_pack_size() + 88;
    message = caulk::deferred_logger::create_message(AT::Translation::gTranslationDeferredLog, v7 + v6, 16);
    if (message)
    {
      v9 = message;
      v10 = (message + v7);
      v11 = _os_log_pack_fill();
      selfCopy = self;
      if (self->_isUplink)
      {
        v12 = "uplink";
      }

      else
      {
        v12 = "downlink";
      }

      stpcpy(v10, v12);
      *v11 = 134218498;
      *(v11 + 4) = selfCopy;
      *(v11 + 12) = 2080;
      *(v11 + 14) = v10;
      *(v11 + 22) = 1024;
      *(v11 + 24) = v5;
      caulk::concurrent::messenger::enqueue(*(AT::Translation::gTranslationDeferredLog + 16), v9);
    }
  }
}

- (id)processBlock
{
  ptr = self->mAUDSPGraph.__ptr_;
  if (self->_isUplink)
  {
    v3 = v9;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __27__ATBlurMixer_processBlock__block_invoke;
    v9[3] = &__block_descriptor_40_e230_i52__0r__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_8I16r__AudioBufferList_I_1_AudioBuffer_II_v___20r__AudioBufferList_I_1_AudioBuffer_II_v___28__AudioBufferList_I_1_AudioBuffer_II_v___36__AudioBufferList_I_1_AudioBuffer_II_v___44l;
  }

  else
  {
    mRemoteFeedbackFeatureEnabled = self->mRemoteFeedbackFeatureEnabled;
    v3 = aBlock;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __27__ATBlurMixer_processBlock__block_invoke_2;
    aBlock[3] = &__block_descriptor_41_e230_i52__0r__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_8I16r__AudioBufferList_I_1_AudioBuffer_II_v___20r__AudioBufferList_I_1_AudioBuffer_II_v___28__AudioBufferList_I_1_AudioBuffer_II_v___36__AudioBufferList_I_1_AudioBuffer_II_v___44l;
    v8 = mRemoteFeedbackFeatureEnabled;
  }

  v3[4] = ptr;
  v5 = _Block_copy(v3);

  return v5;
}

uint64_t __27__ATBlurMixer_processBlock__block_invoke(uint64_t a1, AudioTimeStamp *inTimeStamp, UInt32 inNumberFrames, AudioBufferList *a4, AudioBufferList *a5, AudioBufferList *a6, AudioBufferList *a7)
{
  if (a7)
  {
    inInputBufferLists[0] = a4;
    inInputBufferLists[1] = a5;
    ioOutputBufferLists[0] = a6;
    ioOutputBufferLists[1] = a7;
    ioActionFlags = 0;
    return AudioUnitProcessMultiple(*(a1 + 32), &ioActionFlags, inTimeStamp, inNumberFrames, 2u, inInputBufferLists, 2u, ioOutputBufferLists);
  }

  else
  {
    v8 = CAAssertRtn();
    return __27__ATBlurMixer_processBlock__block_invoke_2(v8, v9, v10);
  }
}

id __27__ATBlurMixer_processBlock__block_invoke_2(uint64_t a1, AudioTimeStamp *inTimeStamp, UInt32 inNumberFrames, AudioBufferList *a4, AudioBufferList *a5, AudioBufferList *a6, AudioBufferList *a7)
{
  inInputBufferLists[0] = a4;
  inInputBufferLists[1] = a5;
  ioActionFlags = 0;
  if ((*(a1 + 40) & 1) == 0)
  {
    ioOutputBufferLists[0] = a6;
    v7 = *(a1 + 32);
    v8 = inNumberFrames;
    v9 = 1;
    return AudioUnitProcessMultiple(v7, &ioActionFlags, inTimeStamp, v8, 2u, inInputBufferLists, v9, ioOutputBufferLists);
  }

  if (a7)
  {
    ioOutputBufferLists[0] = a6;
    ioOutputBufferLists[1] = a7;
    v7 = *(a1 + 32);
    v8 = inNumberFrames;
    v9 = 2;
    return AudioUnitProcessMultiple(v7, &ioActionFlags, inTimeStamp, v8, 2u, inInputBufferLists, v9, ioOutputBufferLists);
  }

  v11 = CAAssertRtn();
  return [(ATBlurMixer *)v11 initInternalWithFormat:v12 maxFrames:v13 isUplink:v14 error:v15, v16];
}

- (id)initInternalWithFormat:(const AudioStreamBasicDescription *)format maxFrames:(unsigned int)frames isUplink:(BOOL)uplink error:(id *)error
{
  v20.receiver = self;
  v20.super_class = ATBlurMixer;
  v10 = [(ATBlurMixer *)&v20 init];
  v11 = v10;
  v12 = v10;
  if (v10)
  {
    v10->_isUplink = uplink;
    v10->mMaxFrames = frames;
    v10->mIsInitialized = 0;
    v13 = *&format->mSampleRate;
    v14 = *&format->mBytesPerPacket;
    *&v10->mStreamDescription.mBitsPerChannel = *&format->mBitsPerChannel;
    *&v10->mStreamDescription.mSampleRate = v13;
    *&v10->mStreamDescription.mBytesPerPacket = v14;
    std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Audio/Tunings/Generic/SpeechTranslation");
    if (v12[87] < 0)
    {
      operator delete(v11->mTuningDirectory.__rep_.__l.__data_);
    }

    *v11->mTuningDirectory.__rep_.__s.__data_ = v18;
    *(&v11->mTuningDirectory.__rep_.__l + 2) = v19;
    v12[96] = _os_feature_enabled_impl();
    configure = [v12 configure];
    if (configure)
    {
      if (error)
      {
        v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:configure userInfo:0];
        *error = v16;
      }

      return 0;
    }
  }

  return v12;
}

- (int)configure
{
  v21 = *MEMORY[0x1E69E9840];
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(__dst, &self->mTuningDirectory);
  std::__fs::filesystem::__status(__dst, 0);
  v3 = 1;
  if (__p.__r_.__value_.__s.__data_[0])
  {
    if (__p.__r_.__value_.__s.__data_[0] != 255)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, &self->mTuningDirectory);
      std::__fs::filesystem::__status(&__p, 0);
      v3 = cf != 2;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if (v3)
    {
LABEL_7:
      setupAU = 561017960;
      v5 = AT::Translation::gTranslationLog;
      if (os_log_type_enabled(AT::Translation::gTranslationLog, OS_LOG_TYPE_ERROR))
      {
        isUplink = self->_isUplink;
        *&__dst[4] = "ATBlurMixer.mm";
        *__dst = 136315906;
        *&__dst[12] = 1024;
        if (isUplink)
        {
          v7 = "uplink";
        }

        else
        {
          v7 = "downlink";
        }

        *&__dst[14] = 391;
        *&__dst[18] = 2048;
        *&__dst[20] = self;
        v19 = 2080;
        v20 = v7;
        _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ATBlurMixer@%p(%s): Tuning directory does not exist", __dst, 0x26u);
      }

      goto LABEL_28;
    }
  }

  else if (v3)
  {
    goto LABEL_7;
  }

  std::string::basic_string[abi:ne200100]<0>(__dst, "SpeechTranslator-Host.plist");
  ResourcePathUtilities::ResolveResourcePath(&__p, &self->mTuningDirectory, __dst);
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    ResourcePathUtilities::CFDictFromPath(&cf, &__p);
    v8 = cf;
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v9 = CFStringCreateWithBytes(0, "DuckingHoldTimeSeconds", 22, 0x8000100u, 0);
    *__dst = v9;
    if (!v9)
    {
      v15 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v15, "Could not construct");
    }

    Value = CFDictionaryGetValue(v8, v9);
    if (*__dst)
    {
      CFRelease(*__dst);
    }

    if (!Value || (v11 = applesauce::CF::convert_as<float,0>(Value), !HIDWORD(v11)))
    {
      LODWORD(v11) = 1065353216;
    }

    LODWORD(self->mBlurHoldTimeSec) = v11;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    self->mBlurHoldTimeSec = 1.0;
  }

  setupAU = [(ATBlurMixer *)self setupAU];
  if (__p.__r_.__value_.__r.__words[0])
  {
    CFRelease(__p.__r_.__value_.__l.__data_);
  }

LABEL_28:
  v12 = *MEMORY[0x1E69E9840];
  return setupAU;
}

- (int)setupAU
{
  v23 = *MEMORY[0x1E69E9840];
  *&inDesc.componentType = *"xfuagpsdlppa";
  inDesc.componentFlagsMask = 0;
  Next = AudioComponentFindNext(0, &inDesc);
  outInstance = 0;
  v4 = AudioComponentInstanceNew(Next, &outInstance);
  setMaxFramesPerSlice = v4;
  if (outInstance)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100](&self->mAUDSPGraph.__ptr_, outInstance);
    setMaxFramesPerSlice = [(ATBlurMixer *)self setElementCount:1];
    if (!setMaxFramesPerSlice)
    {
      setMaxFramesPerSlice = [(ATBlurMixer *)self setElementCount:2];
      if (!setMaxFramesPerSlice)
      {
        [(ATBlurMixer *)self getDSPGraphPath];
        setMaxFramesPerSlice = [(ATBlurMixer *)self setDSPGraph:*buf];
        if (!setMaxFramesPerSlice)
        {
          setMaxFramesPerSlice = [(ATBlurMixer *)self setMaxFramesPerSlice];
          if (!setMaxFramesPerSlice)
          {
            setMaxFramesPerSlice = [(ATBlurMixer *)self updateFormats];
            if (!setMaxFramesPerSlice)
            {
              setMaxFramesPerSlice = [(ATBlurMixer *)self initializeAU];
            }
          }
        }

        if (*buf)
        {
          CFRelease(*buf);
        }
      }
    }
  }

  else
  {
    v7 = AT::Translation::gTranslationLog;
    if (os_log_type_enabled(AT::Translation::gTranslationLog, OS_LOG_TYPE_ERROR))
    {
      isUplink = self->_isUplink;
      v9 = "downlink";
      *&buf[4] = "ATBlurMixer.mm";
      *buf = 136316162;
      v15 = 1024;
      if (isUplink)
      {
        v9 = "uplink";
      }

      v16 = 347;
      v17 = 2048;
      selfCopy = self;
      v19 = 2080;
      v20 = v9;
      v21 = 1024;
      v22 = setMaxFramesPerSlice;
      _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ATBlurMixer@%p(%s): Error opening AUDSPGraph, err = %d", buf, 0x2Cu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return setMaxFramesPerSlice;
}

- (int)setMaxFramesPerSlice
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = AudioUnitSetProperty(self->mAUDSPGraph.__ptr_, 0xEu, 0, 0, &self->mMaxFrames, 4u);
  if (v3)
  {
    v4 = AT::Translation::gTranslationLog;
    if (os_log_type_enabled(AT::Translation::gTranslationLog, OS_LOG_TYPE_ERROR))
    {
      mMaxFrames = self->mMaxFrames;
      if (self->_isUplink)
      {
        v6 = "uplink";
      }

      else
      {
        v6 = "downlink";
      }

      v9 = 136316418;
      v10 = "ATBlurMixer.mm";
      v11 = 1024;
      v12 = 331;
      v13 = 2048;
      selfCopy = self;
      v15 = 2080;
      v16 = v6;
      v17 = 1024;
      v18 = mMaxFrames;
      v19 = 1024;
      v20 = v3;
      _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ATBlurMixer@%p(%s): Error setting kAudioUnitProperty_MaximumFramesPerSlice = %d, err = %d", &v9, 0x32u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (int)setDSPGraph:(__CFString *)graph
{
  v21 = *MEMORY[0x1E69E9840];
  inData = graph;
  v4 = AudioUnitSetProperty(self->mAUDSPGraph.__ptr_, 0x64737067u, 0, 0, &inData, 8u);
  if (v4)
  {
    v5 = AT::Translation::gTranslationLog;
    if (os_log_type_enabled(AT::Translation::gTranslationLog, OS_LOG_TYPE_ERROR))
    {
      isUplink = self->_isUplink;
      v7 = "downlink";
      v12 = "ATBlurMixer.mm";
      *buf = 136316162;
      v13 = 1024;
      if (isUplink)
      {
        v7 = "uplink";
      }

      v14 = 317;
      v15 = 2048;
      selfCopy = self;
      v17 = 2080;
      v18 = v7;
      v19 = 1024;
      v20 = v4;
      _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ATBlurMixer@%p(%s): Error setting kAUDSPGraphProperty_GraphTextFilePath, err = %d", buf, 0x2Cu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (int)setElementCount:(unsigned int)count
{
  v27 = *MEMORY[0x1E69E9840];
  inData = [(ATBlurMixer *)self getBusCountForScope:?];
  v5 = AudioUnitSetProperty(self->mAUDSPGraph.__ptr_, 0xBu, count, 0, &inData, 4u);
  if (v5)
  {
    v6 = AT::Translation::gTranslationLog;
    if (os_log_type_enabled(AT::Translation::gTranslationLog, OS_LOG_TYPE_ERROR))
    {
      v7 = "downlink";
      v8 = !self->_isUplink;
      *buf = 136316674;
      if (!v8)
      {
        v7 = "uplink";
      }

      v14 = "ATBlurMixer.mm";
      v16 = 303;
      v9 = "output";
      v17 = 2048;
      v15 = 1024;
      selfCopy = self;
      if (count == 1)
      {
        v9 = "input";
      }

      v19 = 2080;
      v20 = v7;
      v21 = 2080;
      v22 = v9;
      v23 = 1024;
      v24 = inData;
      v25 = 1024;
      v26 = v5;
      _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ATBlurMixer@%p(%s): Error setting kAudioUnitProperty_ElementCount on %s to %d, err = %d", buf, 0x3Cu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (int)uninitializeAU
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->mIsInitialized)
  {
    v3 = AudioUnitUninitialize(self->mAUDSPGraph.__ptr_);
    if (v3)
    {
      v4 = AT::Translation::gTranslationLog;
      if (os_log_type_enabled(AT::Translation::gTranslationLog, OS_LOG_TYPE_ERROR))
      {
        isUplink = self->_isUplink;
        v6 = "downlink";
        v10 = "ATBlurMixer.mm";
        v9 = 136316162;
        v11 = 1024;
        if (isUplink)
        {
          v6 = "uplink";
        }

        v12 = 286;
        v13 = 2048;
        selfCopy = self;
        v15 = 2080;
        v16 = v6;
        v17 = 1024;
        v18 = v3;
        _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ATBlurMixer@%p(%s): Error uninitializing AUDSPGraph, err = %d", &v9, 0x2Cu);
      }
    }

    self->mIsInitialized = 0;
  }

  else
  {
    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (StringRef)getDSPGraphPath
{
  v4 = v2;
  if (self->_isUplink)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "SpeechTranslator-Uplink.dspg");
    ResourcePathUtilities::ResolveResourcePath(v4, &self->mTuningDirectory, __p);
    goto LABEL_9;
  }

  if (!self->mRemoteFeedbackFeatureEnabled)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "SpeechTranslator-Downlink.dspg");
    ResourcePathUtilities::ResolveResourcePath(v4, &self->mTuningDirectory, __p);
LABEL_9:
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    return v5;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "SpeechTranslator-Downlink-WithRemoteFeedback.dspg");
  ResourcePathUtilities::ResolveResourcePath(&cf, &self->mTuningDirectory, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (cf)
  {
    *v4 = cf;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "SpeechTranslator-Uplink.dspg");
    ResourcePathUtilities::ResolveResourcePath(v4, &self->mTuningDirectory, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = cf;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v5;
}

- (StringRef)getPropStripPath
{
  v4 = v2;
  if (self->_isUplink)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "SpeechTranslator-Uplink.propstrip");
    ResourcePathUtilities::ResolveResourcePath(v4, &self->mTuningDirectory, __p);
    goto LABEL_9;
  }

  if (!self->mRemoteFeedbackFeatureEnabled)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "SpeechTranslator-Downlink.propstrip");
    ResourcePathUtilities::ResolveResourcePath(v4, &self->mTuningDirectory, __p);
LABEL_9:
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    return v5;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "SpeechTranslator-Downlink-WithRemoteFeedback.propstrip");
  ResourcePathUtilities::ResolveResourcePath(&cf, &self->mTuningDirectory, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (cf)
  {
    *v4 = cf;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "SpeechTranslator-Uplink.propstrip");
    ResourcePathUtilities::ResolveResourcePath(v4, &self->mTuningDirectory, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = cf;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v5;
}

- (StringRef)getAUStripPath
{
  v4 = v2;
  if (self->_isUplink)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "SpeechTranslator-Uplink.austrip");
    ResourcePathUtilities::ResolveResourcePath(v4, &self->mTuningDirectory, __p);
    goto LABEL_9;
  }

  if (!self->mRemoteFeedbackFeatureEnabled)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "SpeechTranslator-Downlink.austrip");
    ResourcePathUtilities::ResolveResourcePath(v4, &self->mTuningDirectory, __p);
LABEL_9:
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    return v5;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "SpeechTranslator-Downlink-WithRemoteFeedback.austrip");
  ResourcePathUtilities::ResolveResourcePath(&cf, &self->mTuningDirectory, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (cf)
  {
    *v4 = cf;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "SpeechTranslator-Uplink.austrip");
    ResourcePathUtilities::ResolveResourcePath(v4, &self->mTuningDirectory, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = cf;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v5;
}

- (int)initializeAU
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->mIsInitialized)
  {
    v2 = 0;
  }

  else
  {
    [(ATBlurMixer *)self getAUStripPath];
    ResourcePathUtilities::CFDictFromPath(&v10, cf);
    if (*cf)
    {
      CFRelease(*cf);
    }

    [(ATBlurMixer *)self getPropStripPath];
    ResourcePathUtilities::CFDictFromPath(&v9, cf);
    if (*cf)
    {
      CFRelease(*cf);
    }

    [(ATBlurMixer *)self setAUStrip:v10 propertyStrip:v9];
    v2 = AudioUnitInitialize(self->mAUDSPGraph.__ptr_);
    if (v2)
    {
      v4 = AT::Translation::gTranslationLog;
      if (os_log_type_enabled(AT::Translation::gTranslationLog, OS_LOG_TYPE_ERROR))
      {
        isUplink = self->_isUplink;
        v6 = "downlink";
        *&cf[4] = "ATBlurMixer.mm";
        *cf = 136316162;
        v12 = 1024;
        if (isUplink)
        {
          v6 = "uplink";
        }

        v13 = 193;
        v14 = 2048;
        selfCopy = self;
        v16 = 2080;
        v17 = v6;
        v18 = 1024;
        v19 = v2;
        _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ATBlurMixer@%p(%s): Error initializing AUDSPGraph, err = %d", cf, 0x2Cu);
      }
    }

    else
    {
      self->mIsInitialized = 1;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

- (int)setAUStrip:(__CFDictionary *)strip propertyStrip:(__CFDictionary *)propertyStrip
{
  v27 = *MEMORY[0x1E69E9840];
  propertyStripCopy = propertyStrip;
  inData = strip;
  v5 = AudioUnitSetProperty(self->mAUDSPGraph.__ptr_, 0x61757370u, 0, 0, &inData, 8u);
  if (v5)
  {
    v6 = v5;
    v7 = AT::Translation::gTranslationLog;
    if (os_log_type_enabled(AT::Translation::gTranslationLog, OS_LOG_TYPE_ERROR))
    {
      isUplink = self->_isUplink;
      v9 = "downlink";
      v18 = "ATBlurMixer.mm";
      *buf = 136316162;
      v19 = 1024;
      if (isUplink)
      {
        v9 = "uplink";
      }

      v20 = 155;
      v21 = 2048;
      selfCopy2 = self;
      v23 = 2080;
      v24 = v9;
      v25 = 1024;
      v26 = v6;
      v10 = "%25s:%-5d ATBlurMixer@%p(%s): Error setting kAUDSPGraphProperty_AUStrip, err = %d";
LABEL_11:
      _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_ERROR, v10, buf, 0x2Cu);
    }
  }

  else
  {
    v6 = AudioUnitSetProperty(self->mAUDSPGraph.__ptr_, 0x70727370u, 0, 0, &propertyStripCopy, 8u);
    if (v6)
    {
      v7 = AT::Translation::gTranslationLog;
      if (os_log_type_enabled(AT::Translation::gTranslationLog, OS_LOG_TYPE_ERROR))
      {
        v11 = self->_isUplink;
        v12 = "downlink";
        v18 = "ATBlurMixer.mm";
        *buf = 136316162;
        v19 = 1024;
        if (v11)
        {
          v12 = "uplink";
        }

        v20 = 166;
        v21 = 2048;
        selfCopy2 = self;
        v23 = 2080;
        v24 = v12;
        v25 = 1024;
        v26 = v6;
        v10 = "%25s:%-5d ATBlurMixer@%p(%s): Error setting kAUDSPGraphProperty_PropertyStrip, err = %d";
        goto LABEL_11;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (int)updateFormats
{
  mIsInitialized = self->mIsInitialized;
  if (mIsInitialized)
  {
    [(ATBlurMixer *)self uninitializeAU];
  }

  result = [(ATBlurMixer *)self setFormat:1];
  if (!result)
  {
    result = [(ATBlurMixer *)self setFormat:2];
    if (!result && mIsInitialized)
    {

      return [(ATBlurMixer *)self initializeAU];
    }
  }

  return result;
}

- (int)setFormat:(unsigned int)format
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [(ATBlurMixer *)self getBusCountForScope:?];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = AudioUnitSetProperty(self->mAUDSPGraph.__ptr_, 8u, format, v7, &self->mStreamDescription, 0x28u);
      if (v8)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v9 = v8;
    v10 = AT::Translation::gTranslationLog;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      isUplink = self->_isUplink;
      CAFormatter::CAFormatter(&v16, &self->mStreamDescription);
      v12 = "output";
      v18 = "ATBlurMixer.mm";
      *buf = 136316930;
      v19 = 1024;
      if (format == 1)
      {
        v12 = "input";
      }

      v20 = 117;
      v21 = 2048;
      v13 = "downlink";
      selfCopy = self;
      v23 = 2080;
      if (isUplink)
      {
        v13 = "uplink";
      }

      v24 = v13;
      v25 = 2080;
      v26 = v12;
      v27 = 2080;
      v28 = v16;
      v29 = 1024;
      v30 = v7;
      v31 = 1024;
      v32 = v9;
      _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d ATBlurMixer@%p(%s): Error setting %s stream format (%s) on element = %d, err = %d", buf, 0x46u);
      if (v16)
      {
        free(v16);
      }
    }
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (unsigned)getBusCountForScope:(unsigned int)scope
{
  if (scope == 1 || self->_isUplink)
  {
    return 2;
  }

  if (self->mRemoteFeedbackFeatureEnabled)
  {
    return 2;
  }

  return 1;
}

- (BOOL)updateFormat:(const AudioStreamBasicDescription *)format error:(id *)error
{
  v5 = *&format->mSampleRate;
  v6 = *&format->mBytesPerPacket;
  *&self->mStreamDescription.mBitsPerChannel = *&format->mBitsPerChannel;
  *&self->mStreamDescription.mSampleRate = v5;
  *&self->mStreamDescription.mBytesPerPacket = v6;
  updateFormats = [(ATBlurMixer *)self updateFormats];
  v8 = updateFormats;
  if (error)
  {
    if (updateFormats)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:updateFormats userInfo:0];
      *error = v9;
    }

    else
    {
      *error = 0;
    }
  }

  return v8 == 0;
}

@end