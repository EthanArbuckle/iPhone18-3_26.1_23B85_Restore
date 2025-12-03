@interface VMProcessor
- (AudioStreamBasicDescription)debounceASBD;
- (BOOL)_configureDSPGraphsWithFormat:(id *)format;
- (BOOL)_prepareWithFormat:(AudioStreamBasicDescription *)format maxFramesPerRender:(unsigned int)render error:(id *)error;
- (id)initForRealTime:(BOOL)time;
- (void)_performAsynchronousRenderSensitiveAction:(id)action;
- (void)_registerInternalAudioUnits;
- (void)_setDSPGraphParameter:(float)parameter address:(unsigned int)address;
- (void)_unprepare;
- (void)_updateParameterForAddress:(id)address;
- (void)dealloc;
- (void)prepareWithFormat:(AudioStreamBasicDescription *)format maxFramesPerRender:(unsigned int)render;
- (void)setDebounceASBD:(AudioStreamBasicDescription *)d;
- (void)unprepare;
@end

@implementation VMProcessor

- (id)initForRealTime:(BOOL)time
{
  timeCopy = time;
  v12.receiver = self;
  v12.super_class = VMProcessor;
  v4 = [(VMProcessor *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_realTime = timeCopy;
    if (timeCopy)
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

- (void)prepareWithFormat:(AudioStreamBasicDescription *)format maxFramesPerRender:(unsigned int)render
{
  v4 = *&render;
  if ([(VMProcessor *)self debounceMaxFrames]!= render || ([(VMProcessor *)self debounceASBD], v7 = *&format->mBytesPerPacket, v15[0] = *&format->mSampleRate, v15[1] = v7, v16 = *&format->mBitsPerChannel, !sub_100095B34(v15, v17)))
  {
    [(VMProcessor *)self setDebounceMaxFrames:v4];
    v8 = *&format->mBytesPerPacket;
    v17[0] = *&format->mSampleRate;
    v17[1] = v8;
    v18 = *&format->mBitsPerChannel;
    [(VMProcessor *)self setDebounceASBD:v17];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v9 = *&format->mBytesPerPacket;
    v11 = *&format->mSampleRate;
    v12 = v9;
    v10[2] = sub_100048914;
    v10[3] = &unk_10028AB30;
    v10[4] = self;
    v13 = *&format->mBitsPerChannel;
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

- (BOOL)_prepareWithFormat:(AudioStreamBasicDescription *)format maxFramesPerRender:(unsigned int)render error:(id *)error
{
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100048DD4;
  v29[3] = &unk_10028AB58;
  v29[4] = self;
  v9 = objc_retainBlock(v29);
  v10 = *&format->mSampleRate;
  v11 = *&format->mBytesPerPacket;
  *&self->_ioFormat.mBitsPerChannel = *&format->mBitsPerChannel;
  *&self->_ioFormat.mBytesPerPacket = v11;
  *&self->_ioFormat.mSampleRate = v10;
  self->_maxFramesPerRender = render;
  self->_timestamp.mFlags |= 1u;
  v12 = 2;
  do
  {
    v13 = v12;
    v12 *= 2;
  }

  while (v13 < (format->mSampleRate * 0.01));
  self->_preferredBufferSize = v13;
  v14 = sub_100095C94(format->mChannelsPerFrame, render);
  v15 = 1.0 / (format->mSampleRate * 0.0500000007);
  v16 = 0.0;
  if (self->_enabled)
  {
    v16 = 1.0;
  }

  self->_utilityBuffer = v14;
  v17 = v15;
  self->_processedToCleanRatio = v16;
  self->_crossfadeIncrement = v17;
  if ([(VMProcessor *)self _configureDSPGraphsWithFormat:error])
  {
    sub_100095BC0(&self->_utilityBuffer->mNumberBuffers, self->_ioFormat.mChannelsPerFrame, self->_maxFramesPerRender, 1);
    sub_100048DF4(self, self->_maxFramesPerRender, self->_utilityBuffer);
    [(VMProcessor *)self _updateParameterForAddress:0];
    objc_initWeak(&location, self);
    uTF8String = [@"com.apple.VoiceMemos.audioParameterUpdate" UTF8String];
    v19 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100048F08;
    handler[3] = &unk_10028AB80;
    objc_copyWeak(&v27, &location);
    notify_register_dispatch(uTF8String, &self->_notifyToken, &_dispatch_main_q, handler);

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

- (void)_updateParameterForAddress:(id)address
{
  addressCopy = address;
  v5 = addressCopy;
  if (qword_1002D7000 == -1)
  {
    if (addressCopy)
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
      allValues = v6;
      if (v6)
      {
        [v6 currentValue];
        v9 = v8;
        address = [allValues address];
        LODWORD(v11) = v9;
        [(VMProcessor *)self _setDSPGraphParameter:address address:v11];
      }

      goto LABEL_13;
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allValues = [qword_1002D6FF8 allValues];
  v12 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        [v16 currentValue];
        v18 = v17;
        address2 = [v16 address];
        LODWORD(v20) = v18;
        [(VMProcessor *)self _setDSPGraphParameter:address2 address:v20];
      }

      v13 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

LABEL_13:
}

- (void)_setDSPGraphParameter:(float)parameter address:(unsigned int)address
{
  if (self->_dspGraphs && self->_ioFormat.mChannelsPerFrame)
  {
    v7 = 0;
    do
    {
      AudioUnitSetParameter(self->_dspGraphs[v7++], address, 0, 0, parameter, 0);
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

- (void)_performAsynchronousRenderSensitiveAction:(id)action
{
  actionCopy = action;
  v5 = actionCopy;
  if (self->_realTime)
  {
    preparationQueue = self->_preparationQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100049460;
    v7[3] = &unk_10028ABC8;
    v7[4] = self;
    v8 = actionCopy;
    dispatch_async(preparationQueue, v7);
  }

  else
  {
    actionCopy[2](actionCopy);
  }
}

- (BOOL)_configureDSPGraphsWithFormat:(id *)format
{
  mSampleRate = self->_ioFormat.mSampleRate;
  v55 = *&self->_ioFormat.mFormatID;
  mChannelsPerFrame = self->_ioFormat.mChannelsPerFrame;
  mBitsPerChannel = self->_ioFormat.mBitsPerChannel;
  mReserved = self->_ioFormat.mReserved;
  v9 = +[NSFileManager defaultManager];
  v10 = NSTemporaryDirectory();
  v11 = [NSURL fileURLWithPath:v10];
  v12 = [v9 URLForDirectory:99 inDomain:1 appropriateForURL:v11 create:1 error:format];

  path = [v12 path];
  v14 = [path stringByAppendingPathComponent:@"tmp.dspg"];

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100049BB4;
  v53[3] = &unk_10028A3B8;
  v15 = v12;
  v54 = v15;
  v16 = objc_retainBlock(v53);
  inData = v14;
  v41 = v14;
  if ([VMDSPGraph writeGraphTextToFile:v14 samplerate:mSampleRate bufferSize:self->_preferredBufferSize error:format])
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
      if (sub_1000959C0(v18, format))
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
          if (!sub_1000959C0(v23, format))
          {
            break;
          }

          v24 = AudioUnitSetProperty(self->_dspGraphs[v21 / 8 - 1], 0x70727370u, 0, 0, &v51, 8u);
          if (!sub_1000959C0(v24, format))
          {
            break;
          }

          v25 = AudioUnitSetProperty(self->_dspGraphs[v21 / 8 - 1], 0x61757370u, 0, 0, &v50, 8u);
          if (!sub_1000959C0(v25, format))
          {
            break;
          }

          v26 = sub_100095EC0(self->_dspGraphs[v21 / 8 - 1], &outData);
          if (!sub_1000959C0(v26, format))
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
          if (!sub_1000959C0(v28, format))
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
          if (!sub_1000959C0(v30, format) || (v31 = AudioUnitSetProperty(self->_dspGraphs[v21 / 8 - 1], 0x17u, 1u, 0, v48, 0x10u), !sub_1000959C0(v31, format)))
          {
            v15 = v37;
            v17 = v38;
            break;
          }

          v32 = AudioUnitInitialize(self->_dspGraphs[v21 / 8 - 1]);
          v15 = v37;
          v17 = v38;
          if (!sub_1000959C0(v32, format))
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

        while (sub_1000959C0(v33, format));
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

- (void)setDebounceASBD:(AudioStreamBasicDescription *)d
{
  v3 = *&d->mSampleRate;
  v4 = *&d->mBytesPerPacket;
  *&self->_debounceASBD.mBitsPerChannel = *&d->mBitsPerChannel;
  *&self->_debounceASBD.mSampleRate = v3;
  *&self->_debounceASBD.mBytesPerPacket = v4;
}

@end