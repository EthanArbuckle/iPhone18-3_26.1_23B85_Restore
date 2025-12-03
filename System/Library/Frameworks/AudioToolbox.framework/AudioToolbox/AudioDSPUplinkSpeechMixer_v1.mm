@interface AudioDSPUplinkSpeechMixer_v1
- (AudioDSPUplinkSpeechMixer_v1)initWithSettings:(AudioDSPUplinkSpeechMixerSettings *)settings;
- (AudioStreamBasicDescription)sampleRate;
- (id).cxx_construct;
- (id)processBlock;
@end

@implementation AudioDSPUplinkSpeechMixer_v1

- (id).cxx_construct
{
  *(self + 144) = 0;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 72) = 0;
  return self;
}

- (id)processBlock
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__AudioDSPUplinkSpeechMixer_v1_processBlock__block_invoke;
  aBlock[3] = &unk_1E866D828;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

- (AudioDSPUplinkSpeechMixer_v1)initWithSettings:(AudioDSPUplinkSpeechMixerSettings *)settings
{
  selfCopy = self;
  v57[4] = *MEMORY[0x1E69E9840];
  mSampleRate = settings->streamDescription.mSampleRate;
  if (settings->streamDescription.mSampleRate <= 0.0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v10 = 0;
      goto LABEL_70;
    }

    LOWORD(__p[0]) = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "uplink speech mixer sample rate must be greater than zero";
LABEL_72:
    _os_log_error_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, v9, __p, 2u);
    goto LABEL_12;
  }

  if (!settings->maximumFramesPerSlice)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(__p[0]) = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "uplink speech mixer maximum number of frames per slice must be greater than zero";
    goto LABEL_72;
  }

  v48.receiver = self;
  v48.super_class = AudioDSPUplinkSpeechMixer_v1;
  v6 = [(AudioDSPUplinkSpeechMixer_v1 *)&v48 init];

  if (v6)
  {
    MEMORY[0x1E12BC390](&v54);
    v7 = *&settings->streamDescription.mBytesPerPacket;
    v44 = *&settings->streamDescription.mSampleRate;
    v45 = v7;
    v46 = *&settings->streamDescription.mBitsPerChannel;
    v47 = 1;
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v43, &gResourcesBasePath);
    v42 = 0;
    __p[0] = 0;
    __p[1] = 0;
    *&v27 = 0;
    std::string::append[abi:ne200100]<char const*,0>(__p, "uplink_speech_mixer.dspg", "");
    std::__fs::filesystem::operator/[abi:ne200100](&v41, &v43, __p);
    if (SBYTE7(v27) < 0)
    {
      operator delete(__p[0]);
    }

    std::__fs::filesystem::__status(&v41, 0);
    if (!LOBYTE(__p[0]) || LOBYTE(__p[0]) == 255)
    {
      operator new();
    }

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *__p = 0u;
    DSPGraph::Interpreter::Interpreter(__p);
    std::to_string(&v24, settings->streamDescription.mSampleRate);
    std::string::basic_string[abi:ne200100]<0>(&v50, "IO_SAMPLE_RATE");
    v51 = v24;
    memset(&v24, 0, sizeof(v24));
    std::to_string(&v23, settings->streamDescription.mChannelsPerFrame);
    std::string::basic_string[abi:ne200100]<0>(v52, "IO_CHANNEL_COUNT");
    v53 = v23;
    memset(&v23, 0, sizeof(v23));
    std::unordered_map<std::string,std::string>::unordered_map(cf, &v50, 2);
    memset(v22, 0, sizeof(v22));
    DSPGraph::Interpreter::compileFile();
    v11 = v40;
    v40 = 0;
    v42 = v11;
    v49 = v22;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v49);
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(cf);
    for (i = 0; i != -12; i -= 6)
    {
      v13 = (&v50.__pn_.__r_.__value_.__l.__data_ + i * 8);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[i + 2]) < 0)
      {
        operator delete(v13[9]);
      }

      if (*(v13 + 71) < 0)
      {
        operator delete(v13[6]);
      }
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    MEMORY[0x1E12BC370](__p);
    if (SHIBYTE(v41.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__pn_.__r_.__value_.__l.__data_);
    }

    DSPGraph::Graph::setSliceDuration();
    DSPGraph::Graph::configure(v11);
    __p[0] = 0;
    __p[1] = 0;
    *&v27 = 0;
    std::string::append[abi:ne200100]<char const*,0>(__p, "uplink_speech_mixer.propstrip", "");
    std::__fs::filesystem::operator/[abi:ne200100](&v50, &v43, __p);
    if (SBYTE7(v27) < 0)
    {
      operator delete(__p[0]);
    }

    std::__fs::filesystem::__status(&v50, 0);
    if (LOBYTE(__p[0]) && LOBYTE(__p[0]) != 255)
    {
      if ((v50.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v50;
      }

      else
      {
        v14 = v50.__pn_.__r_.__value_.__r.__words[0];
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v14);
      applesauce::CF::make_DataRef(cf, __p);
      if (SBYTE7(v27) < 0)
      {
        operator delete(__p[0]);
      }

      if (cf[0])
      {
        applesauce::CF::make_DictionaryRef(__p, cf[0]);
        if (__p[0])
        {
          DSPGraph::Graph::setPropertyStrip(v11, __p[0]);
          if (__p[0])
          {
            CFRelease(__p[0]);
          }
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }
    }

    if (SHIBYTE(v50.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__pn_.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char [28],void>(__p, "uplink_speech_mixer.austrip");
    std::__fs::filesystem::operator/[abi:ne200100](&v50, &v43, __p);
    if (SBYTE7(v27) < 0)
    {
      operator delete(__p[0]);
    }

    std::__fs::filesystem::__status(&v50, 0);
    if (LOBYTE(__p[0]) && LOBYTE(__p[0]) != 255)
    {
      if ((v50.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v50;
      }

      else
      {
        v15 = v50.__pn_.__r_.__value_.__r.__words[0];
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v15);
      applesauce::CF::make_DataRef(cf, __p);
      if (SBYTE7(v27) < 0)
      {
        operator delete(__p[0]);
      }

      if (cf[0])
      {
        applesauce::CF::make_DictionaryRef(__p, cf[0]);
        if (__p[0])
        {
          DSPGraph::Graph::setAUStrip(v11, __p[0]);
          if (__p[0])
          {
            CFRelease(__p[0]);
          }
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }
    }

    if (SHIBYTE(v50.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__pn_.__r_.__value_.__l.__data_);
    }

    DSPGraph::Graph::initialize(v11);
    v16 = *&settings->streamDescription.mSampleRate;
    v17 = *&settings->streamDescription.mBytesPerPacket;
    *&v6->_settings.streamDescription.mBitsPerChannel = *&settings->streamDescription.mBitsPerChannel;
    *&v6->_settings.streamDescription.mBytesPerPacket = v17;
    *&v6->_settings.streamDescription.mSampleRate = v16;
    std::shared_ptr<DSPGraph::Graph>::operator=[abi:ne200100]<DSPGraph::Graph,std::default_delete<DSPGraph::Graph>,0>(&v6->_graph, &v42);
    if (v6->_graphAUPB.__engaged_)
    {
      MEMORY[0x1E12BBBA0](&v6->_graphAUPB);
      v6->_graphAUPB.__engaged_ = 0;
    }

    MEMORY[0x1E12BBB90](&v6->_graphAUPB, &v6->_graph);
    v6->_graphAUPB.__engaged_ = 1;
    caulk::deferred_logger::create_v(__p, MEMORY[0x1E69E9C10], v18);
    v19 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    cntrl = v6->_graphErrorLogger.__cntrl_;
    v6->_graphErrorLogger = v19;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
      }
    }

    v6->_graphInputSampleTime = 0.0;
    if (v42)
    {
      (*(*v42 + 8))(v42);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    v54 = MEMORY[0x1E698D898] + 16;
    __p[0] = v57;
    std::vector<std::pair<std::string,AudioComponentDescription>>::__destroy_vector::operator()[abi:ne200100](__p);
    std::__hash_table<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<AudioComponentDescription>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,true>,std::__unordered_map_equal<AudioComponentDescription,std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,DSPGraph::NewBoxRegistry::AudioComponentDescriptionEquality,std::hash<AudioComponentDescription>,true>,std::allocator<std::__hash_value_type<AudioComponentDescription,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(&v56);
    std::__hash_table<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::function<DSPGraph::Box * ()(unsigned int,unsigned int)>>>>::~__hash_table(&v55);
  }

  selfCopy = v6;
  v10 = selfCopy;
LABEL_70:

  return v10;
}

- (AudioStreamBasicDescription)sampleRate
{
  v3 = *&self->mBytesPerFrame;
  *&retstr->mSampleRate = *&self->mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[1].mSampleRate;
  return self;
}

@end