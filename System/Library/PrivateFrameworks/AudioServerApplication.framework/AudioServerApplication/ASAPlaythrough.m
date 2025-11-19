@interface ASAPlaythrough
- (ASAPlaythrough)initWithDevice:(id)a3 usingChannelMapping:(id)a4;
- (ASAPlaythrough)initWithDevices:(id)a3 usingMainDevice:(id)a4 andClockDevice:(id)a5 withName:(id)a6 isPrivate:(BOOL)a7 usingChannelMapping:(id)a8;
- (ASAPlaythrough)initWithDevices:(id)a3 usingMainDevice:(id)a4 andClockDeviceUID:(id)a5 withName:(id)a6 isPrivate:(BOOL)a7 usingChannelMapping:(id)a8;
- (BOOL)start;
- (BOOL)stop;
- (void)_createIOContext;
- (void)_freeIOContext:(id *)a3;
- (void)dealloc;
@end

@implementation ASAPlaythrough

- (ASAPlaythrough)initWithDevice:(id)a3 usingChannelMapping:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ASAPlaythrough;
  v8 = [(ASAPlaythrough *)&v13 init];
  if (v8)
  {
    v9 = +[ASACoreAudio sharedCoreAudioObject];
    v10 = [v9 audioDeviceWithUID:v6];
    audioDevice = v8->_audioDevice;
    v8->_audioDevice = v10;

    if (v8->_audioDevice)
    {
      objc_storeStrong(&v8->_channelMapping, a4);
      v8->_aggregateID = 0;
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (ASAPlaythrough)initWithDevices:(id)a3 usingMainDevice:(id)a4 andClockDevice:(id)a5 withName:(id)a6 isPrivate:(BOOL)a7 usingChannelMapping:(id)a8
{
  v59 = a7;
  v83 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v64 = a5;
  v63 = a6;
  v62 = a8;
  v66 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CCAB68] string];
  v15 = [v12 firstObject];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v71 objects:v82 count:16];
  v61 = v13;
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
        v22 = [v15 clockDomain];
        if (v22 != [v21 clockDomain])
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
    v26 = v14;
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
            v80 = v63;
            _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "All devices in aggregate %@ share a clock domain, disabling drift compensation", buf, 0xCu);
            v30 = 0;
          }
        }

        else
        {
          v31 = [v64 deviceUID];
          v32 = [v29 deviceUID];
          v33 = [v31 isEqualToString:v32];

          v30 = v33 ^ 1u;
        }

        v77[0] = @"uid";
        v34 = [v29 deviceUID];
        v78[0] = v34;
        v77[1] = @"drift";
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30];
        v78[1] = v35;
        v77[2] = @"drift quality";
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:127];
        v78[2] = v36;
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:3];

        [v66 addObject:v37];
        v38 = [v29 deviceUID];
        [v26 appendFormat:@"%@%@", &stru_285341100, v38];
      }

      v25 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
    }

    while (v25);
    v15 = 0;
    v14 = v26;
  }

  v39 = MEMORY[0x277CCACA8];
  v40 = [v64 deviceUID];
  if (v40)
  {
    v41 = [v64 deviceUID];
    v42 = [v39 stringWithFormat:@"%@", v41];
  }

  else
  {
    v42 = [v39 stringWithFormat:@"%@", &stru_285341100];
  }

  v43 = MEMORY[0x277CCACA8];
  v44 = [v61 deviceUID];
  if (v44)
  {
    v45 = [v61 deviceUID];
    v46 = [v43 stringWithFormat:@"%@", v45];
  }

  else
  {
    v46 = [v43 stringWithFormat:@"%@", &stru_285341100];
  }

  v75[0] = @"name";
  v75[1] = @"uid";
  v76[0] = v63;
  v76[1] = v14;
  v75[2] = @"clock";
  v75[3] = @"master";
  v76[2] = v42;
  v76[3] = v46;
  v76[4] = v66;
  v75[4] = @"subdevices";
  v75[5] = @"private";
  v47 = [MEMORY[0x277CCABB0] numberWithBool:v59];
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
  v51 = [v50 audioDeviceObjectIDWithUID:v14];
  *buf = v51;
  if (v51 && !AudioHardwareDestroyAggregateDevice(v51))
  {
    while (1)
    {
      *buf = [v50 audioDeviceObjectIDWithUID:v14];
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
    if (v54 == [v50 audioDeviceObjectIDWithUID:v14])
    {
      break;
    }

    usleep(0x2710u);
  }

  v55 = [(ASAPlaythrough *)self initWithDevice:v14 usingChannelMapping:v62];
  v52 = v55;
  if (v55)
  {
    v55->_aggregateID = *buf;
    v56 = v14;
    aggregateUID = v52->_aggregateUID;
    v52->_aggregateUID = v56;
LABEL_44:
  }

  v57 = *MEMORY[0x277D85DE8];
  return v52;
}

- (ASAPlaythrough)initWithDevices:(id)a3 usingMainDevice:(id)a4 andClockDeviceUID:(id)a5 withName:(id)a6 isPrivate:(BOOL)a7 usingChannelMapping:(id)a8
{
  v30 = a7;
  v37 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v31 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  v16 = objc_opt_new();
  v17 = +[ASACoreAudio sharedCoreAudioObject];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = v12;
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

  v24 = [v17 audioDeviceWithUID:v31];
  v25 = [v17 clockDeviceWithUID:v13];
  v26 = [(ASAPlaythrough *)self initWithDevices:v16 usingMainDevice:v24 andClockDevice:v25 withName:v14 isPrivate:v30 usingChannelMapping:v15];

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

  v3 = [(ASAPlaythrough *)self audioDevice];
  v4 = [v3 createAudioProcID:&self->_procID forIOProc:InputOutputProc withClientData:self->_ioContext error:0];

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

    v11 = [(ASAPlaythrough *)self audioDevice];
    [v11 setMainOutputProperty:1937077093 withData:v7 ofSize:v5 withQualifier:0 ofSize:0];
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

    v18 = [(ASAPlaythrough *)self audioDevice];
    [v18 setMainInputProperty:1937077093 withData:v14 ofSize:v12 withQualifier:0 ofSize:0];
  }

  free(v14);
  v19 = [(ASAPlaythrough *)self audioDevice];
  v20 = [v19 startAudioProc:self->_procID error:0];

  if (!v20)
  {
    v22 = [(ASAPlaythrough *)self audioDevice];
    [v22 destroyAudioProcID:self->_procID error:0];

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
  v3 = [(ASAPlaythrough *)self playing];
  if (v3)
  {
    v4 = [(ASAPlaythrough *)self audioDevice];
    [v4 stopAudioProc:self->_procID error:0];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Audio Proc Stoped\n", v7, 2u);
    }

    v5 = [(ASAPlaythrough *)self audioDevice];
    [v5 destroyAudioProcID:self->_procID error:0];

    self->_procID = 0;
    [(ASAPlaythrough *)self _destroyIOContext];
    [(ASAPlaythrough *)self setPlaying:0];
  }

  return v3;
}

- (void)_createIOContext
{
  v117 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040D5B763B2uLL);
  if (v3)
  {
    v4 = v3;
    v5 = [(ASAPlaythrough *)self audioDevice];
    v6 = [v5 inputStreamObjectIDs];

    v93 = [MEMORY[0x277CBEB18] array];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    obj = v6;
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
          [v93 addObject:v12];
          v13 = [(ASAStream *)v12 virtualFormat];
          v9 += [v13 channelsPerFrame];
        }

        v8 = [obj countByEnumeratingWithState:&v108 objects:v116 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v14 = [(ASAPlaythrough *)self audioDevice];
    v15 = [v14 outputStreamObjectIDs];

    v92 = [MEMORY[0x277CBEB18] array];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v89 = v15;
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
          [v92 addObject:v21];
          v22 = [(ASAStream *)v21 virtualFormat];
          v18 += [v22 channelsPerFrame];
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
    v23 = [v93 firstObject];
    v24 = [v23 virtualFormat];
    v25 = v24;
    if (v24)
    {
      [v24 audioStreamBasicDescription];
    }

    else
    {
      memset(&v103, 0, sizeof(v103));
    }

    v103.mFormatFlags |= 0x20u;
    v103.mBytesPerPacket = 4;
    v103.mChannelsPerFrame = v18;
    v103.mBytesPerFrame = 4;
    v26 = [(ASAPlaythrough *)self audioDevice];
    v4->var0 = [v26 ioBufferFrameSize];

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
        v82 = v93;
        v91 = [v82 countByEnumeratingWithState:&v99 objects:v114 count:16];
        if (v91)
        {
          v32 = 0;
          v33 = 0;
          v88 = 0;
          v84 = *v100;
          v86 = self;
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
              v37 = [v36 virtualFormat];
              v38 = v37;
              if (v37)
              {
                [v37 audioStreamBasicDescription];
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
                self = v86;
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
                self = v86;
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
      v83 = v92;
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
            v68 = [v67 virtualFormat];
            v69 = v68;
            if (v68)
            {
              [v68 audioStreamBasicDescription];
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
                  v74 = [v67 startingChannel];
                  *&inDestinationFormat.mSampleRate = __PAIR64__(v63, v81);
                  LOWORD(inDestinationFormat.mFormatID) = 1024;
                  *(&inDestinationFormat.mFormatID + 2) = v74;
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

- (void)_freeIOContext:(id *)a3
{
  if (a3)
  {
    var6 = a3->var6;
    if (var6)
    {
      var2 = a3->var2;
      if (var2)
      {
        for (i = 0; i < var2; ++i)
        {
          v7 = a3->var6[i];
          if (v7)
          {
            AudioConverterDispose(v7);
            var2 = a3->var2;
          }
        }

        var6 = a3->var6;
      }

      free(var6);
    }

    var5 = a3->var5;
    if (var5)
    {
      var1 = a3->var1;
      if (var1)
      {
        for (j = 0; j < var1; ++j)
        {
          v11 = a3->var5[j];
          if (v11)
          {
            AudioConverterDispose(v11);
            var1 = a3->var1;
          }
        }

        var5 = a3->var5;
      }

      free(var5);
    }

    var7 = a3->var7;
    if (var7)
    {
      if (a3->var1)
      {
        v13 = 0;
        do
        {
          free(a3->var7[v13++]);
        }

        while (v13 < a3->var1);
        var7 = a3->var7;
      }

      free(var7);
    }

    var9 = a3->var9;
    if (var9)
    {
      if (a3->var1)
      {
        v15 = 0;
        do
        {
          free(a3->var9[v15++]);
        }

        while (v15 < a3->var1);
        var9 = a3->var9;
      }

      free(var9);
    }

    var8 = a3->var8;
    if (var8)
    {
      if (a3->var2)
      {
        v17 = 0;
        do
        {
          free(a3->var8[v17++]);
        }

        while (v17 < a3->var2);
        var8 = a3->var8;
      }

      free(var8);
    }

    free(a3->var10);
    free(a3->var4);

    free(a3);
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
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