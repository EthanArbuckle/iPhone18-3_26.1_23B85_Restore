@interface ASAPlaythrough
- (ASAPlaythrough)initWithDevice:(id)device usingChannelMapping:(id)mapping;
- (ASAPlaythrough)initWithDevices:(id)devices usingMainDevice:(id)device andClockDevice:(id)clockDevice withName:(id)name isPrivate:(BOOL)private usingChannelMapping:(id)mapping;
- (ASAPlaythrough)initWithDevices:(id)devices usingMainDevice:(id)device andClockDeviceUID:(id)d withName:(id)name isPrivate:(BOOL)private usingChannelMapping:(id)mapping;
- (BOOL)start;
- (BOOL)stop;
- (void)_createIOContext;
- (void)_freeIOContext:(id *)context;
- (void)dealloc;
@end

@implementation ASAPlaythrough

- (ASAPlaythrough)initWithDevice:(id)device usingChannelMapping:(id)mapping
{
  deviceCopy = device;
  mappingCopy = mapping;
  v13.receiver = self;
  v13.super_class = ASAPlaythrough;
  v8 = [(ASAPlaythrough *)&v13 init];
  if (v8)
  {
    v9 = +[ASACoreAudio sharedCoreAudioObject];
    v10 = [v9 audioDeviceWithUID:deviceCopy];
    audioDevice = v8->_audioDevice;
    v8->_audioDevice = v10;

    if (v8->_audioDevice)
    {
      objc_storeStrong(&v8->_channelMapping, mapping);
      v8->_aggregateID = 0;
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (ASAPlaythrough)initWithDevices:(id)devices usingMainDevice:(id)device andClockDevice:(id)clockDevice withName:(id)name isPrivate:(BOOL)private usingChannelMapping:(id)mapping
{
  privateCopy = private;
  v83 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  deviceCopy = device;
  clockDeviceCopy = clockDevice;
  nameCopy = name;
  mappingCopy = mapping;
  array = [MEMORY[0x277CBEB18] array];
  string = [MEMORY[0x277CCAB68] string];
  firstObject = [devicesCopy firstObject];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v16 = devicesCopy;
  v17 = [v16 countByEnumeratingWithState:&v71 objects:v82 count:16];
  v61 = deviceCopy;
  if (v17)
  {
    v18 = v17;
    v19 = *v72;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v72 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v71 + 1) + 8 * i);
        clockDomain = [firstObject clockDomain];
        if (clockDomain != [v21 clockDomain])
        {
          v23 = 0;
          goto LABEL_11;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v71 objects:v82 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v23 = 1;
LABEL_11:

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v16;
  v24 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = string;
    v27 = *v68;

    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v68 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v67 + 1) + 8 * j);
        if (v23)
        {
          v30 = 0;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v80 = nameCopy;
            _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "All devices in aggregate %@ share a clock domain, disabling drift compensation", buf, 0xCu);
            v30 = 0;
          }
        }

        else
        {
          deviceUID = [clockDeviceCopy deviceUID];
          deviceUID2 = [v29 deviceUID];
          v33 = [deviceUID isEqualToString:deviceUID2];

          v30 = v33 ^ 1u;
        }

        v77[0] = @"uid";
        deviceUID3 = [v29 deviceUID];
        v78[0] = deviceUID3;
        v77[1] = @"drift";
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30];
        v78[1] = v35;
        v77[2] = @"drift quality";
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:127];
        v78[2] = v36;
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:3];

        [array addObject:v37];
        deviceUID4 = [v29 deviceUID];
        [v26 appendFormat:@"%@%@", &stru_285341100, deviceUID4];
      }

      v25 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
    }

    while (v25);
    firstObject = 0;
    string = v26;
  }

  v39 = MEMORY[0x277CCACA8];
  deviceUID5 = [clockDeviceCopy deviceUID];
  if (deviceUID5)
  {
    deviceUID6 = [clockDeviceCopy deviceUID];
    v42 = [v39 stringWithFormat:@"%@", deviceUID6];
  }

  else
  {
    v42 = [v39 stringWithFormat:@"%@", &stru_285341100];
  }

  v43 = MEMORY[0x277CCACA8];
  deviceUID7 = [v61 deviceUID];
  if (deviceUID7)
  {
    deviceUID8 = [v61 deviceUID];
    v46 = [v43 stringWithFormat:@"%@", deviceUID8];
  }

  else
  {
    v46 = [v43 stringWithFormat:@"%@", &stru_285341100];
  }

  v75[0] = @"name";
  v75[1] = @"uid";
  v76[0] = nameCopy;
  v76[1] = string;
  v75[2] = @"clock";
  v75[3] = @"master";
  v76[2] = v42;
  v76[3] = v46;
  v76[4] = array;
  v75[4] = @"subdevices";
  v75[5] = @"private";
  v47 = [MEMORY[0x277CCABB0] numberWithBool:privateCopy];
  v76[5] = v47;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v80 = v48;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Aggregate %@", buf, 0xCu);
  }

  v49 = +[ASACoreAudio sharedCoreAudioObject];
  v50 = [v49 pluginWithBundleID:@"com.apple.audio.V5"];
  v51 = [v50 audioDeviceObjectIDWithUID:string];
  *buf = v51;
  if (v51 && !AudioHardwareDestroyAggregateDevice(v51))
  {
    while (1)
    {
      *buf = [v50 audioDeviceObjectIDWithUID:string];
      if (!*buf)
      {
        break;
      }

      usleep(0x186A0u);
    }
  }

  if (AudioHardwareCreateAggregateDevice(v48, buf))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASAPlaythrough initWithDevices:usingMainDevice:andClockDevice:withName:isPrivate:usingChannelMapping:];
    }

    v52 = 0;
    aggregateUID = self;
    goto LABEL_44;
  }

  while (1)
  {
    v54 = *buf;
    if (v54 == [v50 audioDeviceObjectIDWithUID:string])
    {
      break;
    }

    usleep(0x2710u);
  }

  v55 = [(ASAPlaythrough *)self initWithDevice:string usingChannelMapping:mappingCopy];
  v52 = v55;
  if (v55)
  {
    v55->_aggregateID = *buf;
    v56 = string;
    aggregateUID = v52->_aggregateUID;
    v52->_aggregateUID = v56;
LABEL_44:
  }

  v57 = *MEMORY[0x277D85DE8];
  return v52;
}

- (ASAPlaythrough)initWithDevices:(id)devices usingMainDevice:(id)device andClockDeviceUID:(id)d withName:(id)name isPrivate:(BOOL)private usingChannelMapping:(id)mapping
{
  privateCopy = private;
  v37 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  deviceCopy = device;
  dCopy = d;
  nameCopy = name;
  mappingCopy = mapping;
  v16 = objc_opt_new();
  v17 = +[ASACoreAudio sharedCoreAudioObject];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = devicesCopy;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      v22 = 0;
      do
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v17 audioDeviceWithUID:*(*(&v32 + 1) + 8 * v22)];
        if (v23)
        {
          [v16 addObject:v23];
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v20);
  }

  v24 = [v17 audioDeviceWithUID:deviceCopy];
  v25 = [v17 clockDeviceWithUID:dCopy];
  v26 = [(ASAPlaythrough *)self initWithDevices:v16 usingMainDevice:v24 andClockDevice:v25 withName:nameCopy isPrivate:privateCopy usingChannelMapping:mappingCopy];

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)start
{
  if ([(ASAPlaythrough *)self playing])
  {
    [(ASAPlaythrough *)self stop];
  }

  [(ASAPlaythrough *)self _createIOContext];
  if (!self->_ioContext)
  {
    return 0;
  }

  audioDevice = [(ASAPlaythrough *)self audioDevice];
  v4 = [audioDevice createAudioProcID:&self->_procID forIOProc:InputOutputProc withClientData:self->_ioContext error:0];

  if (!v4)
  {
    return 0;
  }

  v5 = 4 * self->_ioContext->var2 + 12;
  v6 = malloc_type_calloc(1uLL, v5, 0x1080040FC6463CFuLL);
  v7 = v6;
  if (v6)
  {
    *v6 = self->_procID;
    ioContext = self->_ioContext;
    var2 = ioContext->var2;
    *(v6 + 2) = var2;
    if (var2)
    {
      v10 = 0;
      do
      {
        *(v6 + v10++ + 3) = 1;
      }

      while (v10 < ioContext->var2);
    }

    audioDevice2 = [(ASAPlaythrough *)self audioDevice];
    [audioDevice2 setMainOutputProperty:1937077093 withData:v7 ofSize:v5 withQualifier:0 ofSize:0];
  }

  free(v7);
  v12 = 4 * self->_ioContext->var1 + 12;
  v13 = malloc_type_calloc(1uLL, v12, 0x1080040FC6463CFuLL);
  v14 = v13;
  if (v13)
  {
    *v13 = self->_procID;
    v15 = self->_ioContext;
    var1 = v15->var1;
    *(v13 + 2) = var1;
    if (var1)
    {
      v17 = 0;
      do
      {
        *(v13 + v17++ + 3) = 1;
      }

      while (v17 < v15->var1);
    }

    audioDevice3 = [(ASAPlaythrough *)self audioDevice];
    [audioDevice3 setMainInputProperty:1937077093 withData:v14 ofSize:v12 withQualifier:0 ofSize:0];
  }

  free(v14);
  audioDevice4 = [(ASAPlaythrough *)self audioDevice];
  v20 = [audioDevice4 startAudioProc:self->_procID error:0];

  if (!v20)
  {
    audioDevice5 = [(ASAPlaythrough *)self audioDevice];
    [audioDevice5 destroyAudioProcID:self->_procID error:0];

    self->_procID = 0;
    [(ASAPlaythrough *)self _destroyIOContext];
    return 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Audio Proc Started\n", v24, 2u);
  }

  v21 = 1;
  [(ASAPlaythrough *)self setPlaying:1];
  return v21;
}

- (BOOL)stop
{
  playing = [(ASAPlaythrough *)self playing];
  if (playing)
  {
    audioDevice = [(ASAPlaythrough *)self audioDevice];
    [audioDevice stopAudioProc:self->_procID error:0];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Audio Proc Stoped\n", v7, 2u);
    }

    audioDevice2 = [(ASAPlaythrough *)self audioDevice];
    [audioDevice2 destroyAudioProcID:self->_procID error:0];

    self->_procID = 0;
    [(ASAPlaythrough *)self _destroyIOContext];
    [(ASAPlaythrough *)self setPlaying:0];
  }

  return playing;
}

- (void)_createIOContext
{
  v117 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040D5B763B2uLL);
  if (v3)
  {
    v4 = v3;
    audioDevice = [(ASAPlaythrough *)self audioDevice];
    inputStreamObjectIDs = [audioDevice inputStreamObjectIDs];

    array = [MEMORY[0x277CBEB18] array];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    obj = inputStreamObjectIDs;
    v7 = [obj countByEnumeratingWithState:&v108 objects:v116 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v109;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v109 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = -[ASAObject initWithAudioObjectID:]([ASAStream alloc], "initWithAudioObjectID:", [*(*(&v108 + 1) + 8 * i) unsignedIntValue]);
          [array addObject:v12];
          virtualFormat = [(ASAStream *)v12 virtualFormat];
          v9 += [virtualFormat channelsPerFrame];
        }

        v8 = [obj countByEnumeratingWithState:&v108 objects:v116 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    audioDevice2 = [(ASAPlaythrough *)self audioDevice];
    outputStreamObjectIDs = [audioDevice2 outputStreamObjectIDs];

    array2 = [MEMORY[0x277CBEB18] array];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v89 = outputStreamObjectIDs;
    v16 = [v89 countByEnumeratingWithState:&v104 objects:v115 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v105;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v105 != v19)
          {
            objc_enumerationMutation(v89);
          }

          v21 = -[ASAObject initWithAudioObjectID:]([ASAStream alloc], "initWithAudioObjectID:", [*(*(&v104 + 1) + 8 * j) unsignedIntValue]);
          [array2 addObject:v21];
          virtualFormat2 = [(ASAStream *)v21 virtualFormat];
          v18 += [virtualFormat2 channelsPerFrame];
        }

        v17 = [v89 countByEnumeratingWithState:&v104 objects:v115 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    memset(&v103, 0, sizeof(v103));
    firstObject = [array firstObject];
    virtualFormat3 = [firstObject virtualFormat];
    v25 = virtualFormat3;
    if (virtualFormat3)
    {
      [virtualFormat3 audioStreamBasicDescription];
    }

    else
    {
      memset(&v103, 0, sizeof(v103));
    }

    v103.mFormatFlags |= 0x20u;
    v103.mBytesPerPacket = 4;
    v103.mChannelsPerFrame = v18;
    v103.mBytesPerFrame = 4;
    audioDevice3 = [(ASAPlaythrough *)self audioDevice];
    v4->var0 = [audioDevice3 ioBufferFrameSize];

    if (v9 <= v18)
    {
      v27 = v18;
    }

    else
    {
      v27 = v9;
    }

    v28 = 4 * v27 * v4->var0;
    v4->var3 = v28;
    v29 = malloc_type_calloc(1uLL, v28, 0x100004052888210uLL);
    v4->var4 = v29;
    if (!v29)
    {
      goto LABEL_95;
    }

    v30 = [obj count];
    v4->var1 = v30;
    v4->var5 = malloc_type_calloc(v30, 8uLL, 0x2004093837F09uLL);
    v4->var7 = malloc_type_calloc(v4->var1, 8uLL, 0x2004093837F09uLL);
    v31 = malloc_type_calloc(v4->var1, 8uLL, 0x2004093837F09uLL);
    v4->var9 = v31;
    if (v4->var5)
    {
      v88 = 0;
      if (v4->var7 && v31)
      {
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v82 = array;
        v91 = [v82 countByEnumeratingWithState:&v99 objects:v114 count:16];
        if (v91)
        {
          v32 = 0;
          v33 = 0;
          v88 = 0;
          v84 = *v100;
          selfCopy = self;
          do
          {
            v34 = 0;
            v35 = 0uLL;
            do
            {
              if (*v100 != v84)
              {
                objc_enumerationMutation(v82);
                v35 = 0uLL;
              }

              v36 = *(*(&v99 + 1) + 8 * v34);
              *&inSourceFormat.mBitsPerChannel = 0;
              *&inSourceFormat.mSampleRate = v35;
              *&inSourceFormat.mBytesPerPacket = v35;
              virtualFormat4 = [v36 virtualFormat];
              v38 = virtualFormat4;
              if (virtualFormat4)
              {
                [virtualFormat4 audioStreamBasicDescription];
              }

              else
              {
                memset(&inSourceFormat, 0, sizeof(inSourceFormat));
              }

              inDestinationFormat = inSourceFormat;
              inDestinationFormat.mFormatFlags = inSourceFormat.mFormatFlags | 0x20;
              inDestinationFormat.mBytesPerPacket = 4;
              inDestinationFormat.mBytesPerFrame = 4;
              AudioConverterNew(&inSourceFormat, &inDestinationFormat, &v4->var5[v33]);
              mChannelsPerFrame = inSourceFormat.mChannelsPerFrame;
              v40 = inSourceFormat.mChannelsPerFrame - 1;
              v41 = (inSourceFormat.mChannelsPerFrame - 1) & ((inSourceFormat.mFormatFlags << 26) >> 31);
              v4->var7[v33] = malloc_type_calloc(1uLL, 16 * v41 + 24, 0x10800404ACF7207uLL);
              v4->var9[v33] = malloc_type_calloc(1uLL, 16 * v40 + 24, 0x10800404ACF7207uLL);
              if (v4->var5[v33])
              {
                v42 = v4->var7[v33];
                self = selfCopy;
                v35 = 0uLL;
                if (v42 && (var9 = v4->var9, var9[v33]))
                {
                  v44 = 0;
                  v42->mNumberBuffers = v41 + 1;
                  var0 = v4->var0;
                  v46 = v4->var0 * inDestinationFormat.mBytesPerFrame;
                  var4 = v4->var4;
                  if (mChannelsPerFrame <= 1)
                  {
                    v48 = 1;
                  }

                  else
                  {
                    v48 = mChannelsPerFrame;
                  }

                  v49 = v32 * var0;
                  v50 = 16 * v48;
                  do
                  {
                    p_mNumberBuffers = &var9[v33]->mNumberBuffers;
                    *p_mNumberBuffers = mChannelsPerFrame;
                    v52 = &p_mNumberBuffers[v44 / 4];
                    v52[2] = 1;
                    v52[3] = v46;
                    *(v52 + 2) = &var4[v49];
                    v49 += var0;
                    v44 += 16;
                  }

                  while (v50 != v44);
                }

                else
                {
                  v88 = 1;
                }
              }

              else
              {
                v88 = 1;
                self = selfCopy;
                v35 = 0uLL;
              }

              ++v33;
              v32 += inSourceFormat.mChannelsPerFrame;
              ++v34;
            }

            while (v34 != v91);
            v91 = [v82 countByEnumeratingWithState:&v99 objects:v114 count:{16, 0.0}];
          }

          while (v91);
        }

        else
        {
          v88 = 0;
        }
      }
    }

    else
    {
      v88 = 0;
    }

    v53 = malloc_type_calloc(1uLL, 16 * (v18 - 1) + 24, 0x10800404ACF7207uLL);
    v4->var10 = v53;
    if (v53)
    {
      *v53 = v18;
      if (v18)
      {
        v54 = 0;
        v55 = v4->var0;
        v56 = v4->var0 * v103.mBytesPerFrame;
        v57 = v4->var4;
        v58 = v18;
        v59 = v53 + 4;
        do
        {
          *(v59 - 2) = 1;
          *(v59 - 1) = v56;
          *v59 = &v57[v54];
          v59 += 2;
          v54 += v55;
          --v58;
        }

        while (v58);
      }
    }

    v60 = [v89 count];
    v4->var2 = v60;
    v4->var6 = malloc_type_calloc(v60, 8uLL, 0x2004093837F09uLL);
    v61 = malloc_type_calloc(v4->var2, 8uLL, 0x2004093837F09uLL);
    v4->var8 = v61;
    if (v4->var6 && v61)
    {
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v83 = array2;
      v87 = [v83 countByEnumeratingWithState:&v94 objects:v112 count:16];
      if (v87)
      {
        v63 = 0;
        v85 = *v95;
        v64 = MEMORY[0x277D86220];
        *&v62 = 67109632;
        v81 = v62;
        do
        {
          v65 = 0;
          v66 = 0uLL;
          do
          {
            if (*v95 != v85)
            {
              objc_enumerationMutation(v83);
              v66 = 0uLL;
            }

            v67 = *(*(&v94 + 1) + 8 * v65);
            *&inSourceFormat.mBitsPerChannel = 0;
            *&inSourceFormat.mSampleRate = v66;
            *&inSourceFormat.mBytesPerPacket = v66;
            virtualFormat5 = [v67 virtualFormat];
            v69 = virtualFormat5;
            if (virtualFormat5)
            {
              [virtualFormat5 audioStreamBasicDescription];
            }

            else
            {
              memset(&inSourceFormat, 0, sizeof(inSourceFormat));
            }

            AudioConverterNew(&v103, &inSourceFormat, &v4->var6[v63]);
            v70 = (inSourceFormat.mChannelsPerFrame - 1) & ((inSourceFormat.mFormatFlags << 26) >> 31);
            v4->var8[v63] = malloc_type_calloc(1uLL, 16 * v70 + 24, 0x10800404ACF7207uLL);
            if (v4->var6[v63] && (v71 = v4->var8[v63]) != 0)
            {
              v71->mNumberBuffers = v70 + 1;
              v72 = malloc_type_calloc(inSourceFormat.mChannelsPerFrame, 4uLL, 0x100004052888210uLL);
              if (v72)
              {
                v73 = v72;
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  startingChannel = [v67 startingChannel];
                  *&inDestinationFormat.mSampleRate = __PAIR64__(v63, v81);
                  LOWORD(inDestinationFormat.mFormatID) = 1024;
                  *(&inDestinationFormat.mFormatID + 2) = startingChannel;
                  HIWORD(inDestinationFormat.mFormatFlags) = 1024;
                  inDestinationFormat.mBytesPerPacket = inSourceFormat.mChannelsPerFrame;
                  _os_log_impl(&dword_2415BC000, v64, OS_LOG_TYPE_DEFAULT, "Output Audio Map for %u starting at %u with %u channels\n", &inDestinationFormat, 0x14u);
                }

                if (inSourceFormat.mChannelsPerFrame)
                {
                  v75 = 0;
                  do
                  {
                    v76 = v75 + [v67 startingChannel] - 1;
                    if ([(NSArray *)self->_channelMapping count]<= v76)
                    {
                      v73[v75] = -1;
                    }

                    else
                    {
                      v77 = [(NSArray *)self->_channelMapping objectAtIndexedSubscript:v76];
                      v73[v75] = [v77 intValue];
                    }

                    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                    {
                      v78 = v73[v75];
                      LODWORD(inDestinationFormat.mSampleRate) = 67109376;
                      HIDWORD(inDestinationFormat.mSampleRate) = v75;
                      LOWORD(inDestinationFormat.mFormatID) = 1024;
                      *(&inDestinationFormat.mFormatID + 2) = v78;
                      _os_log_impl(&dword_2415BC000, v64, OS_LOG_TYPE_DEFAULT, "%d: %d\n", &inDestinationFormat, 0xEu);
                    }

                    ++v75;
                  }

                  while (v75 < inSourceFormat.mChannelsPerFrame);
                  v79 = 4 * inSourceFormat.mChannelsPerFrame;
                }

                else
                {
                  v79 = 0;
                }

                AudioConverterSetProperty(v4->var6[v63], 0x63686D70u, v79, v73);
                free(v73);
              }
            }

            else
            {
              v88 = 1;
            }

            ++v63;
            ++v65;
            v66 = 0uLL;
          }

          while (v65 != v87);
          v87 = [v83 countByEnumeratingWithState:&v94 objects:v112 count:{16, 0.0}];
        }

        while (v87);
      }
    }

    if (v4->var5 && v4->var7 && v4->var9 && v4->var10 && v4->var6 && !((v4->var8 == 0) | v88 & 1))
    {
      self->_ioContext = v4;
    }

    else
    {
LABEL_95:
      [(ASAPlaythrough *)self _freeIOContext:v4];
    }
  }

  v80 = *MEMORY[0x277D85DE8];
}

- (void)_freeIOContext:(id *)context
{
  if (context)
  {
    var6 = context->var6;
    if (var6)
    {
      var2 = context->var2;
      if (var2)
      {
        for (i = 0; i < var2; ++i)
        {
          v7 = context->var6[i];
          if (v7)
          {
            AudioConverterDispose(v7);
            var2 = context->var2;
          }
        }

        var6 = context->var6;
      }

      free(var6);
    }

    var5 = context->var5;
    if (var5)
    {
      var1 = context->var1;
      if (var1)
      {
        for (j = 0; j < var1; ++j)
        {
          v11 = context->var5[j];
          if (v11)
          {
            AudioConverterDispose(v11);
            var1 = context->var1;
          }
        }

        var5 = context->var5;
      }

      free(var5);
    }

    var7 = context->var7;
    if (var7)
    {
      if (context->var1)
      {
        v13 = 0;
        do
        {
          free(context->var7[v13++]);
        }

        while (v13 < context->var1);
        var7 = context->var7;
      }

      free(var7);
    }

    var9 = context->var9;
    if (var9)
    {
      if (context->var1)
      {
        v15 = 0;
        do
        {
          free(context->var9[v15++]);
        }

        while (v15 < context->var1);
        var9 = context->var9;
      }

      free(var9);
    }

    var8 = context->var8;
    if (var8)
    {
      if (context->var2)
      {
        v17 = 0;
        do
        {
          free(context->var8[v17++]);
        }

        while (v17 < context->var2);
        var8 = context->var8;
      }

      free(var8);
    }

    free(context->var10);
    free(context->var4);

    free(context);
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *self;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithDevices:usingMainDevice:andClockDevice:withName:isPrivate:usingChannelMapping:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end