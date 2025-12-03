@interface AudioDSPUplinkSpeechMixer_v2
- (AudioDSPUplinkSpeechMixer_v2)initWithSettings:(AudioDSPUplinkSpeechMixerSettings *)settings;
- (AudioStreamBasicDescription)sampleRate;
- (id).cxx_construct;
- (id)processBlock;
- (void)connectRemoteProcessingBlock;
- (void)connectRemoteProcessingBlockServer:(id)server;
- (void)dealloc;
- (void)diconnectRemoteProcessingBlockServer:(id)server;
- (void)disconnectRemoteProcessingBlock;
@end

@implementation AudioDSPUplinkSpeechMixer_v2

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

- (id)processBlock
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__AudioDSPUplinkSpeechMixer_v2_processBlock__block_invoke;
  aBlock[3] = &unk_1E866D828;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

- (void)dealloc
{
  [(AudioDSPUplinkSpeechMixer_v2 *)self disconnectRemoteProcessingBlock];
  v3.receiver = self;
  v3.super_class = AudioDSPUplinkSpeechMixer_v2;
  [(AudioDSPUplinkSpeechMixer_v2 *)&v3 dealloc];
}

- (AudioDSPUplinkSpeechMixer_v2)initWithSettings:(AudioDSPUplinkSpeechMixerSettings *)settings
{
  v74[2] = *MEMORY[0x1E69E9840];
  if (settings->streamDescription.mSampleRate <= 0.0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *v68 = 0;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "uplink speech mixer sample rate must be greater than zero";
LABEL_48:
    _os_log_error_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_ERROR, v16, v68, 2u);
    goto LABEL_9;
  }

  if (settings->maximumFramesPerSlice)
  {
    v4 = objc_opt_new();
    v71 = 1;
    v5 = *&settings->streamDescription.mBytesPerPacket;
    *v68 = *&settings->streamDescription.mSampleRate;
    v69 = v5;
    v70 = *&settings->streamDescription.mBitsPerChannel;
    v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:gResourcesBasePath];
    v57 = [v58 stringByAppendingPathComponent:@"uplink_speech_mixer.dspg"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [defaultManager fileExistsAtPath:v57];

    if (v7)
    {
      v8 = objc_opt_new();
      v73[0] = @"IO_SAMPLE_RATE";
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", settings->streamDescription.mSampleRate];
      v73[1] = @"IO_CHANNEL_COUNT";
      v74[0] = v9;
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", settings->streamDescription.mChannelsPerFrame];
      v74[1] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
      [v8 setPreprocessorMacroDefinitions:v11];

      v67 = 0;
      LOBYTE(v9) = [v8 interpretContentsOfFile:v57 updating:v4 error:&v67];
      v12 = v67;
      v13 = v12;
      if ((v9 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v57;
          *&buf[12] = 2112;
          *&buf[14] = v13;
          _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "uplink speech mixer failed to interpret %@ - %@", buf, 0x16u);
        }

        goto LABEL_34;
      }

      v14 = v12;
    }

    else
    {
      v8 = objc_opt_new();
      [v8 setName:@"HumanSpeechInput"];
      [v8 setDirection:0];
      [v4 addPort:v8];
      v56 = objc_opt_new();
      [v56 setName:@"SynthesizedSpeechInput"];
      [v56 setDirection:0];
      [v4 addPort:v56];
      v18 = objc_opt_new();
      [v18 setName:@"InputSum"];
      [v18 setClassName:@"sum"];
      [v18 setNumberOfInputs:2];
      [v18 setNumberOfOutputs:1];
      [v4 addBox:v18];
      *&buf[16] = 0;
      *buf = *"xfualcfslppa";
      v19 = objc_opt_new();
      [v19 setName:@"OutputSoftClip"];
      [v19 setAudioComponentDescription:buf];
      [v19 setNumberOfInputs:1];
      [v19 setNumberOfOutputs:1];
      [v4 addBox:v19];
      v55 = objc_opt_new();
      [v55 setName:@"MixedOutput"];
      [v55 setDirection:1];
      [v4 addPort:v55];
      v20 = objc_opt_new();
      name = [v8 name];
      [v20 setBoxName:name ofEndpoint:0];

      [v20 setPortIndex:0 ofEndpoint:0];
      name2 = [v18 name];
      [v20 setBoxName:name2 ofEndpoint:1];

      [v20 setPortIndex:0 ofEndpoint:1];
      [v20 setAudioStreamConfiguration:v68];
      [v4 addWire:v20];
      v23 = objc_opt_new();
      name3 = [v56 name];
      [v23 setBoxName:name3 ofEndpoint:0];

      [v23 setPortIndex:0 ofEndpoint:0];
      name4 = [v18 name];
      [v23 setBoxName:name4 ofEndpoint:1];

      [v23 setPortIndex:1 ofEndpoint:1];
      [v23 setAudioStreamConfiguration:v68];
      [v4 addWire:v23];
      v26 = objc_opt_new();
      name5 = [v18 name];
      [v26 setBoxName:name5 ofEndpoint:0];

      [v26 setPortIndex:0 ofEndpoint:0];
      name6 = [v19 name];
      [v26 setBoxName:name6 ofEndpoint:1];

      [v26 setPortIndex:0 ofEndpoint:1];
      [v26 setAudioStreamConfiguration:v68];
      [v4 addWire:v26];
      v29 = objc_opt_new();
      name7 = [v19 name];
      [v29 setBoxName:name7 ofEndpoint:0];

      [v29 setPortIndex:0 ofEndpoint:0];
      name8 = [v55 name];
      [v29 setBoxName:name8 ofEndpoint:1];

      [v29 setPortIndex:0 ofEndpoint:1];
      [v29 setAudioStreamConfiguration:v68];
      [v4 addWire:v29];
      v32 = [(AudioDSPUplinkSpeechMixer_v2 *)self description];
      [v4 setName:v32];

      v14 = 0;
    }

    [v4 setSliceDuration:settings->maximumFramesPerSlice | (settings->streamDescription.mSampleRate << 32)];
    [v4 setSliceDurationCanVary:1];
    v66 = v14;
    v8 = [objc_alloc(MEMORY[0x1E698D498]) initWithModel:v4 error:&v66];
    v13 = v66;

    if (v8)
    {
      v33 = [v58 stringByAppendingPathComponent:@"uplink_speech_mixer.propstrip"];
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v35 = [defaultManager2 fileExistsAtPath:v33];

      if (v35)
      {
        PropertyList = AudioDSPUplinkSpeechMixerLoadPropertyList(v33);
        if (PropertyList)
        {
          v65 = v13;
          v37 = [v8 applyStrip:PropertyList type:1 error:&v65];
          v38 = v65;

          if ((v37 & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v33;
              *&buf[12] = 2112;
              *&buf[14] = v38;
              _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "uplink speech mixer failed to apply %@ - %@", buf, 0x16u);
            }

            goto LABEL_43;
          }

          v13 = v38;
        }
      }

      PropertyList = [v58 stringByAppendingPathComponent:@"uplink_speech_mixer.austrip"];
      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v40 = [defaultManager3 fileExistsAtPath:PropertyList];

      if (!v40)
      {
        goto LABEL_22;
      }

      v41 = AudioDSPUplinkSpeechMixerLoadPropertyList(PropertyList);
      if (!v41)
      {
LABEL_21:

LABEL_22:
        v63 = v13;
        v43 = [v8 initialize:&v63];
        v44 = v63;

        v45 = v44;
        if (v43)
        {
          v62.receiver = self;
          v62.super_class = AudioDSPUplinkSpeechMixer_v2;
          v46 = [(AudioDSPUplinkSpeechMixer_v2 *)&v62 init];
          v47 = v46;
          v48 = v46;
          v60 = v46;
          if (v46)
          {
            v49 = *&settings->streamDescription.mSampleRate;
            v50 = *&settings->streamDescription.mBytesPerPacket;
            *(v46 + 40) = *&settings->streamDescription.mBitsPerChannel;
            *(v46 + 24) = v50;
            *(v46 + 8) = v49;
            CFRetain(v8);
            v61 = 0;
            CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(v47 + 7);
            *buf = 0;
            *(v48 + 7) = v8;
            CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(buf);
            CA::DSP::ReferenceCounted<__CADSPGraph *>::~ReferenceCounted(&v61);
            caulk::deferred_logger::create_v(buf, MEMORY[0x1E69E9C10], v51);
            v52 = *buf;
            *buf = 0;
            *&buf[8] = 0;
            v53 = *(v48 + 10);
            *(v48 + 72) = v52;
            if (v53)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v53);
              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
              }
            }

            *(v48 + 11) = 0;
          }

          [v48 connectRemoteProcessingBlock];
          v17 = v60;
          v38 = v45;
          self = v17;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v44;
            _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "uplink speech mixer failed to initialize DSP graph - %@", buf, 0xCu);
          }

          v17 = 0;
          v38 = v45;
        }

        goto LABEL_44;
      }

      v64 = v13;
      v42 = [v8 applyStrip:v41 type:0 error:&v64];
      v38 = v64;

      if (v42)
      {
        v13 = v38;
        goto LABEL_21;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = PropertyList;
        *&buf[12] = 2112;
        *&buf[14] = v38;
        _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "uplink speech mixer failed to apply %@ - %@", buf, 0x16u);
      }

LABEL_43:
      v17 = 0;
LABEL_44:

      v13 = v38;
      goto LABEL_45;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v13;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "uplink speech mixer failed to create DSP graph - %@", buf, 0xCu);
    }

    v8 = 0;
LABEL_34:
    v17 = 0;
LABEL_45:

    goto LABEL_46;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v68 = 0;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "uplink speech mixer maximum number of frames per slice must be greater than zero";
    goto LABEL_48;
  }

LABEL_9:
  v17 = 0;
LABEL_46:

  return v17;
}

- (AudioStreamBasicDescription)sampleRate
{
  v3 = *&self->mBytesPerFrame;
  *&retstr->mSampleRate = *&self->mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[1].mSampleRate;
  return self;
}

- (void)diconnectRemoteProcessingBlockServer:(id)server
{
  serverCopy = server;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy->_graphRemoteProcessingBlockHost;
  if (v5)
  {
    [serverCopy removeHost:v5];
    graphRemoteProcessingBlockHost = selfCopy->_graphRemoteProcessingBlockHost;
    selfCopy->_graphRemoteProcessingBlockHost = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)disconnectRemoteProcessingBlock
{
  obj = self;
  objc_sync_enter(obj);
  mEMORY[0x1E69C6E00] = [MEMORY[0x1E69C6E00] sharedInstance];
  [mEMORY[0x1E69C6E00] removeListener:obj];
  [(AudioDSPUplinkSpeechMixer_v2 *)obj diconnectRemoteProcessingBlockServer:mEMORY[0x1E69C6E00]];

  objc_sync_exit(obj);
}

- (void)connectRemoteProcessingBlockServer:(id)server
{
  v12 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([serverCopy isRunning])
  {
    v6 = selfCopy->_graph.mRef.mRef;
    v9 = 0;
    v7 = [(__CADSPGraph *)v6 createRemoteProcessingBlockHost:&v9];
    v8 = v9;
    if (v7)
    {
      objc_storeStrong(&selfCopy->_graphRemoteProcessingBlockHost, v7);
      [serverCopy addHost:v7];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v8;
      _os_log_error_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "uplink speech mixer failed to create DSP graph remote processing block host - %@", buf, 0xCu);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)connectRemoteProcessingBlock
{
  obj = self;
  objc_sync_enter(obj);
  mEMORY[0x1E69C6E00] = [MEMORY[0x1E69C6E00] sharedInstance];
  [mEMORY[0x1E69C6E00] addListener:obj];
  [(AudioDSPUplinkSpeechMixer_v2 *)obj connectRemoteProcessingBlockServer:mEMORY[0x1E69C6E00]];

  objc_sync_exit(obj);
}

@end