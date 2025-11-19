@interface VMProcessor
- (AudioStreamBasicDescription)debounceASBD;
- (BOOL)_configureDSPGraphsWithFormat:(id *)a3;
- (BOOL)_prepareWithFormat:(AudioStreamBasicDescription *)a3 maxFramesPerRender:(unsigned int)a4 error:(id *)a5;
- (id)initForRealTime:(BOOL)a3;
- (void)_performAsynchronousRenderSensitiveAction:(id)a3;
- (void)_registerInternalAudioUnits;
- (void)_setDSPGraphParameter:(float)a3 address:(unsigned int)a4;
- (void)_unprepare;
- (void)_updateParameterForAddress:(id)a3;
- (void)dealloc;
- (void)prepareWithFormat:(AudioStreamBasicDescription *)a3 maxFramesPerRender:(unsigned int)a4;
- (void)setDebounceASBD:(AudioStreamBasicDescription *)a3;
- (void)unprepare;
@end

@implementation VMProcessor

- (id)initForRealTime:(BOOL)a3
{
  v3 = a3;
  v12.receiver = self;
  v12.super_class = VMProcessor;
  v4 = [(VMProcessor *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_realTime = v3;
    if (v3)
    {
      pthread_mutex_init(&v4->_renderLock, 0);
      v6 = dispatch_queue_create("com.apple.VoiceMemos.VMProcessorQueue", 0);
      preparationQueue = v5->_preparationQueue;
      v5->_preparationQueue = v6;

      v8 = v5->_preparationQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000487AC;
      block[3] = &unk_10028A3B8;
      v11 = v5;
      dispatch_async(v8, block);
    }

    else
    {
      [(VMProcessor *)v4 _registerInternalAudioUnits];
    }
  }

  return v5;
}

- (void)dealloc
{
  [(VMProcessor *)self _unprepare];
  if (self->_realTime)
  {
    pthread_mutex_destroy(&self->_renderLock);
  }

  v3.receiver = self;
  v3.super_class = VMProcessor;
  [(VMProcessor *)&v3 dealloc];
}

- (void)prepareWithFormat:(AudioStreamBasicDescription *)a3 maxFramesPerRender:(unsigned int)a4
{
  v4 = *&a4;
  if ([(VMProcessor *)self debounceMaxFrames]!= a4 || ([(VMProcessor *)self debounceASBD], v7 = *&a3->mBytesPerPacket, v15[0] = *&a3->mSampleRate, v15[1] = v7, v16 = *&a3->mBitsPerChannel, !sub_100095B34(v15, v17)))
  {
    [(VMProcessor *)self setDebounceMaxFrames:v4];
    v8 = *&a3->mBytesPerPacket;
    v17[0] = *&a3->mSampleRate;
    v17[1] = v8;
    v18 = *&a3->mBitsPerChannel;
    [(VMProcessor *)self setDebounceASBD:v17];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v9 = *&a3->mBytesPerPacket;
    v11 = *&a3->mSampleRate;
    v12 = v9;
    v10[2] = sub_100048914;
    v10[3] = &unk_10028AB30;
    v10[4] = self;
    v13 = *&a3->mBitsPerChannel;
    v14 = v4;
    [(VMProcessor *)self _performAsynchronousRenderSensitiveAction:v10];
  }
}

- (void)unprepare
{
  *&self->_debounceASBD.mBitsPerChannel = 0;
  *&self->_debounceASBD.mSampleRate = 0u;
  *&self->_debounceASBD.mBytesPerPacket = 0u;
  self->_debounceMaxFrames = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100048AFC;
  v2[3] = &unk_10028A3B8;
  v2[4] = self;
  [(VMProcessor *)self _performAsynchronousRenderSensitiveAction:v2];
}

- (BOOL)_prepareWithFormat:(AudioStreamBasicDescription *)a3 maxFramesPerRender:(unsigned int)a4 error:(id *)a5
{
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100048DD4;
  v29[3] = &unk_10028AB58;
  v29[4] = self;
  v9 = objc_retainBlock(v29);
  v10 = *&a3->mSampleRate;
  v11 = *&a3->mBytesPerPacket;
  *&self->_ioFormat.mBitsPerChannel = *&a3->mBitsPerChannel;
  *&self->_ioFormat.mBytesPerPacket = v11;
  *&self->_ioFormat.mSampleRate = v10;
  self->_maxFramesPerRender = a4;
  self->_timestamp.mFlags |= 1u;
  v12 = 2;
  do
  {
    v13 = v12;
    v12 *= 2;
  }

  while (v13 < (a3->mSampleRate * 0.01));
  self->_preferredBufferSize = v13;
  v14 = sub_100095C94(a3->mChannelsPerFrame, a4);
  v15 = 1.0 / (a3->mSampleRate * 0.0500000007);
  v16 = 0.0;
  if (self->_enabled)
  {
    v16 = 1.0;
  }

  self->_utilityBuffer = v14;
  v17 = v15;
  self->_processedToCleanRatio = v16;
  self->_crossfadeIncrement = v17;
  if ([(VMProcessor *)self _configureDSPGraphsWithFormat:a5])
  {
    sub_100095BC0(&self->_utilityBuffer->mNumberBuffers, self->_ioFormat.mChannelsPerFrame, self->_maxFramesPerRender, 1);
    sub_100048DF4(self, self->_maxFramesPerRender, self->_utilityBuffer);
    [(VMProcessor *)self _updateParameterForAddress:0];
    objc_initWeak(&location, self);
    v18 = [@"com.apple.VoiceMemos.audioParameterUpdate" UTF8String];
    v19 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100048F08;
    handler[3] = &unk_10028AB80;
    objc_copyWeak(&v27, &location);
    notify_register_dispatch(v18, &self->_notifyToken, &_dispatch_main_q, handler);

    outData = 0.0;
    ioDataSize = 8;
    if (AudioUnitGetProperty(*self->_dspGraphs, 0xCu, 0, 0, &outData, &ioDataSize))
    {
      v20 = 3 * self->_preferredBufferSize;
      mSampleRate = self->_ioFormat.mSampleRate;
    }

    else
    {
      mSampleRate = self->_ioFormat.mSampleRate;
      v20 = vcvtad_u64_f64(outData * mSampleRate);
    }

    self->_graphLatencyInFrames = v20;
    self->_primingFadeInDurationFrames = (mSampleRate * 0.200000003);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
    v22 = 1;
  }

  else
  {
    v22 = (v9[2])(v9);
  }

  return v22;
}

- (void)_updateParameterForAddress:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (qword_1002D7000 == -1)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1001B7130();
    if (v5)
    {
LABEL_3:
      v6 = [qword_1002D6FF8 objectForKeyedSubscript:v5];
      v7 = v6;
      if (v6)
      {
        [v6 currentValue];
        v9 = v8;
        v10 = [v7 address];
        LODWORD(v11) = v9;
        [(VMProcessor *)self _setDSPGraphParameter:v10 address:v11];
      }

      goto LABEL_13;
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [qword_1002D6FF8 allValues];
  v12 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        [v16 currentValue];
        v18 = v17;
        v19 = [v16 address];
        LODWORD(v20) = v18;
        [(VMProcessor *)self _setDSPGraphParameter:v19 address:v20];
      }

      v13 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

LABEL_13:
}

- (void)_setDSPGraphParameter:(float)a3 address:(unsigned int)a4
{
  if (self->_dspGraphs && self->_ioFormat.mChannelsPerFrame)
  {
    v7 = 0;
    do
    {
      AudioUnitSetParameter(self->_dspGraphs[v7++], a4, 0, 0, a3, 0);
    }

    while (v7 < self->_ioFormat.mChannelsPerFrame);
  }
}

- (void)_unprepare
{
  dspGraphs = self->_dspGraphs;
  if (dspGraphs)
  {
    mChannelsPerFrame = self->_ioFormat.mChannelsPerFrame;
    if (!mChannelsPerFrame)
    {
      goto LABEL_8;
    }

    for (i = 0; i < mChannelsPerFrame; ++i)
    {
      v6 = self->_dspGraphs[i];
      if (v6)
      {
        AudioUnitUninitialize(v6);
        AudioComponentInstanceDispose(self->_dspGraphs[i]);
        mChannelsPerFrame = self->_ioFormat.mChannelsPerFrame;
      }
    }

    dspGraphs = self->_dspGraphs;
    if (dspGraphs)
    {
LABEL_8:
      free(dspGraphs);
    }
  }

  utilityBuffer = self->_utilityBuffer;
  if (utilityBuffer)
  {
    sub_100095D28(utilityBuffer, self->_ioFormat.mChannelsPerFrame);
  }

  notifyToken = self->_notifyToken;
  if (notifyToken)
  {
    notify_cancel(notifyToken);
  }

  self->_notifyToken = 0;
  self->_dspGraphs = 0;
  self->_maxFramesPerRender = 0;
  self->_utilityBuffer = 0;
  *&self->_ioFormat.mSampleRate = 0u;
  *&self->_ioFormat.mBytesPerPacket = 0u;
  *&self->_ioFormat.mBitsPerChannel = 0;
  *&self->_timestamp.mSampleTime = 0u;
  *&self->_timestamp.mRateScalar = 0u;
  *&self->_timestamp.mSMPTETime.mSubframes = 0u;
  *&self->_timestamp.mSMPTETime.mHours = 0u;
}

- (void)_performAsynchronousRenderSensitiveAction:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_realTime)
  {
    preparationQueue = self->_preparationQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100049460;
    v7[3] = &unk_10028ABC8;
    v7[4] = self;
    v8 = v4;
    dispatch_async(preparationQueue, v7);
  }

  else
  {
    v4[2](v4);
  }
}

- (BOOL)_configureDSPGraphsWithFormat:(id *)a3
{
  mSampleRate = self->_ioFormat.mSampleRate;
  v55 = *&self->_ioFormat.mFormatID;
  mChannelsPerFrame = self->_ioFormat.mChannelsPerFrame;
  mBitsPerChannel = self->_ioFormat.mBitsPerChannel;
  mReserved = self->_ioFormat.mReserved;
  v9 = +[NSFileManager defaultManager];
  v10 = NSTemporaryDirectory();
  v11 = [NSURL fileURLWithPath:v10];
  v12 = [v9 URLForDirectory:99 inDomain:1 appropriateForURL:v11 create:1 error:a3];

  v13 = [v12 path];
  v14 = [v13 stringByAppendingPathComponent:@"tmp.dspg"];

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100049BB4;
  v53[3] = &unk_10028A3B8;
  v15 = v12;
  v54 = v15;
  v16 = objc_retainBlock(v53);
  inData = v14;
  v41 = v14;
  if ([VMDSPGraph writeGraphTextToFile:v14 samplerate:mSampleRate bufferSize:self->_preferredBufferSize error:a3])
  {
    v40 = +[VMDSPGraph propertyStrip];
    v51 = v40;
    v17 = +[VMDSPGraph auStrip];
    v50 = v17;
    outData = self->_preferredBufferSize;
    self->_dspGraphs = malloc_type_calloc(mChannelsPerFrame, 8uLL, 0x2004093837F09uLL);
    v48[0] = sub_100049C10;
    v48[1] = self;
    if (mChannelsPerFrame)
    {
      v18 = sub_100095AC4(0x61756678u, 0x64737067u, self->_dspGraphs);
      if (sub_1000959C0(v18, a3))
      {
        v39 = mReserved;
        v19 = mChannelsPerFrame;
        v20 = 0;
        v35 = v19;
        v36 = 8 * v19;
        v37 = v15;
        v21 = 8;
        v22 = 1;
        v38 = v17;
        do
        {
          v23 = AudioUnitSetProperty(self->_dspGraphs[v21 / 8 - 1], 0x64737067u, 0, 0, &inData, 8u);
          if (!sub_1000959C0(v23, a3))
          {
            break;
          }

          v24 = AudioUnitSetProperty(self->_dspGraphs[v21 / 8 - 1], 0x70727370u, 0, 0, &v51, 8u);
          if (!sub_1000959C0(v24, a3))
          {
            break;
          }

          v25 = AudioUnitSetProperty(self->_dspGraphs[v21 / 8 - 1], 0x61757370u, 0, 0, &v50, 8u);
          if (!sub_1000959C0(v25, a3))
          {
            break;
          }

          v26 = sub_100095EC0(self->_dspGraphs[v21 / 8 - 1], &outData);
          if (!sub_1000959C0(v26, a3))
          {
            break;
          }

          v27 = self->_dspGraphs[v21 / 8 - 1];
          v42 = mSampleRate;
          v43 = v55;
          v44 = mBitsPerChannel >> 3;
          v45 = 1;
          v46 = mBitsPerChannel;
          v47 = v39;
          v28 = sub_100095B14(v27, &v42, 1);
          if (!sub_1000959C0(v28, a3))
          {
            break;
          }

          v29 = self->_dspGraphs[v21 / 8 - 1];
          v42 = mSampleRate;
          v43 = v55;
          v44 = mBitsPerChannel >> 3;
          v45 = 1;
          v46 = mBitsPerChannel;
          v47 = v39;
          v30 = sub_100095B14(v29, &v42, 0);
          if (!sub_1000959C0(v30, a3) || (v31 = AudioUnitSetProperty(self->_dspGraphs[v21 / 8 - 1], 0x17u, 1u, 0, v48, 0x10u), !sub_1000959C0(v31, a3)))
          {
            v15 = v37;
            v17 = v38;
            break;
          }

          v32 = AudioUnitInitialize(self->_dspGraphs[v21 / 8 - 1]);
          v15 = v37;
          v17 = v38;
          if (!sub_1000959C0(v32, a3))
          {
            break;
          }

          if (v36 == v21)
          {
            goto LABEL_17;
          }

          v20 = v22 >= v35;
          v33 = sub_100095AC4(0x61756678u, 0x64737067u, &self->_dspGraphs[v21 / 8]);
          v21 += 8;
          ++v22;
        }

        while (sub_1000959C0(v33, a3));
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
LABEL_17:
      v20 = 1;
    }

    (v16[2])(v16);
  }

  else
  {
    (v16[2])(v16);
    v20 = 0;
  }

  return v20;
}

- (void)_registerInternalAudioUnits
{
  if (qword_1002D7008 != -1)
  {
    sub_1001B7144();
  }
}

- (AudioStreamBasicDescription)debounceASBD
{
  *&retstr->mBitsPerChannel = *&self[7].mBytesPerPacket;
  v3 = *&self[7].mSampleRate;
  *&retstr->mSampleRate = *&self[6].mBytesPerFrame;
  *&retstr->mBytesPerPacket = v3;
  return self;
}

- (void)setDebounceASBD:(AudioStreamBasicDescription *)a3
{
  v3 = *&a3->mSampleRate;
  v4 = *&a3->mBytesPerPacket;
  *&self->_debounceASBD.mBitsPerChannel = *&a3->mBitsPerChannel;
  *&self->_debounceASBD.mSampleRate = v3;
  *&self->_debounceASBD.mBytesPerPacket = v4;
}

@end