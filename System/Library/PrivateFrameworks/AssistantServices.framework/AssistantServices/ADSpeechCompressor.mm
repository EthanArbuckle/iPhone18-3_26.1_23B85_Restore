@interface ADSpeechCompressor
- (ADSpeechCompressor)initWithQueue:(id)a3 speechController:(id)a4 audioSessionController:(id)a5 audioPlaybackService:(id)a6 experimentContext:(id)a7;
- (void)addAudioSampleData:(id)a3;
- (void)cancelSpeechCaptureSuppressingAlert:(BOOL)a3;
- (void)dealloc;
- (void)getLastStartpointTimestampAndCurrentTime:(id)a3;
- (void)reset;
- (void)setDelegate:(id)a3;
- (void)startCompressionNarrowband:(BOOL)a3;
- (void)stopSpeechCaptureForEvent:(int64_t)a3 suppressAlert:(BOOL)a4 hostTime:(unint64_t)a5;
- (void)updateEndpointHintForRC:(id)a3 forceAccept:(BOOL)a4 completion:(id)a5;
@end

@implementation ADSpeechCompressor

- (void)addAudioSampleData:(id)a3
{
  v3 = __chkstk_darwin(self, a2, a3);
  v25 = v4;
  v5 = v3;
  v7 = v6;
  [*(v5 + 24) appendData:v7];
  v8 = *(v5 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DDE84;
  block[3] = &unk_10051E010;
  block[4] = v5;
  v23 = v7;
  v32 = v23;
  dispatch_async(v8, block);
  v9 = objc_alloc_init(NSMutableArray);
  while (1)
  {
    *&outOutputData.mNumberBuffers = 1;
    outOutputData.mBuffers[0].mData = v42;
    *&outOutputData.mBuffers[0].mNumberChannels = 0x200000000001;
    ioOutputDataPacketSize = 1;
    v10 = *(v5 + 16);
    inInputDataProcUserData[0] = _NSConcreteStackBlock;
    inInputDataProcUserData[1] = 3221225472;
    inInputDataProcUserData[2] = sub_1000DDED8;
    inInputDataProcUserData[3] = &unk_100511018;
    inInputDataProcUserData[4] = v5;
    inInputDataProcUserData[5] = v25;
    v11 = AudioConverterFillComplexBuffer(v10, sub_1000DE120, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, &outPacketDescription);
    if (v11)
    {
      break;
    }

    v12 = ioOutputDataPacketSize;
    if (ioOutputDataPacketSize)
    {
      v13 = 0;
      do
      {
        v14 = AFSiriLogContextSpeech;
        ++v13;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315906;
          v34 = "[ADSpeechCompressor addAudioSampleData:]";
          v35 = 1024;
          v36 = v13;
          v37 = 1024;
          v38 = v12;
          v39 = 1024;
          mDataByteSize = outPacketDescription.mDataByteSize;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s [%02u of %02u] Opus packet with %u bytes", buf, 0x1Eu);
        }

        v15 = [NSData dataWithBytes:outOutputData.mBuffers[0].mData + outPacketDescription.mStartOffset length:outPacketDescription.mDataByteSize, v23];
        [v9 addObject:v15];
        ++*(v5 + 32);

        v12 = ioOutputDataPacketSize;
      }

      while (v13 < ioOutputDataPacketSize);
    }
  }

  v16 = v11;
  if (v11 != 1836086393)
  {
    v17 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "[ADSpeechCompressor addAudioSampleData:]";
      v35 = 1026;
      v36 = v16;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s AudioConverter is sad: 0x%{public}xd", buf, 0x12u);
    }
  }

  [*(v5 + 24) replaceBytesInRange:0 withBytes:*(v5 + 40) length:{0, 0, v23}];
  *(v5 + 40) = 0;
  v18 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    v20 = [v9 count];
    *v42 = 136315394;
    v43 = "[ADSpeechCompressor addAudioSampleData:]";
    v44 = 2048;
    v45 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Sending %tu packets", v42, 0x16u);
  }

  v21 = *(v5 + 48);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000DE0C4;
  v26[3] = &unk_10051E010;
  v26[4] = v5;
  v27 = v9;
  v22 = v9;
  dispatch_async(v21, v26);
}

- (void)startCompressionNarrowband:(BOOL)a3
{
  v3 = a3;
  p_audioConverter = &self->_audioConverter;
  if (self->_audioConverter)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"ADSpeechCompressor.m" lineNumber:109 description:@"Already started compressor"];
  }

  v7 = &SASCodecOPUS_Mono_8000HzValue;
  if (!v3)
  {
    v7 = &SASCodecOPUS_Mono_16000HzValue;
  }

  v8 = *v7;
  if (v3)
  {
    v9 = 8000.0;
  }

  else
  {
    v9 = 16000.0;
  }

  if (v3)
  {
    v10 = 160;
  }

  else
  {
    v10 = 320;
  }

  v11 = v8;
  v12 = [[CSSiriRecordingInfo alloc] initWithDictation:1 codec:v11];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DE3F4;
  block[3] = &unk_10051E010;
  block[4] = self;
  v14 = v12;
  v28 = v14;
  dispatch_async(queue, block);
  inSourceFormat.mSampleRate = v9;
  *&inSourceFormat.mFormatID = xmmword_1003F02E0;
  *&inSourceFormat.mBytesPerFrame = xmmword_1003F02F0;
  inDestinationFormat.mSampleRate = v9;
  *&inDestinationFormat.mFormatID = 1869641075;
  inDestinationFormat.mBytesPerPacket = 0;
  inDestinationFormat.mFramesPerPacket = v10;
  *&inDestinationFormat.mBytesPerFrame = xmmword_1003F0300;
  v15 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, p_audioConverter);
  if (v15)
  {
    v20 = v15;
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"ADSpeechCompressor.m" lineNumber:143 description:{@"AudioConverterNew failed: %x", v20}];
  }

  inPropertyData = 32000;
  v16 = AudioConverterSetProperty(*p_audioConverter, 0x62726174u, 4u, &inPropertyData);
  if (v16)
  {
    v22 = v16;
    v23 = +[NSAssertionHandler currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"ADSpeechCompressor.m" lineNumber:147 description:{@"AudioConverterSetProperty/kAudioConverterEncodeBitRate failed: %x", v22}];
  }

  v17 = objc_alloc_init(NSMutableData);
  bufferedAudio = self->_bufferedAudio;
  self->_bufferedAudio = v17;
}

- (void)reset
{
  audioConverter = self->_audioConverter;
  if (audioConverter)
  {
    AudioConverterDispose(audioConverter);
    self->_audioConverter = 0;
  }

  bufferedAudio = self->_bufferedAudio;
  self->_bufferedAudio = 0;

  self->_packetIndex = 0;
  self->_bytesConsumed = 0;
}

- (void)updateEndpointHintForRC:(id)a3 forceAccept:(BOOL)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0, 0, 0);
  }
}

- (void)getLastStartpointTimestampAndCurrentTime:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0.0, 0.0);
  }
}

- (void)cancelSpeechCaptureSuppressingAlert:(BOOL)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DE568;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopSpeechCaptureForEvent:(int64_t)a3 suppressAlert:(BOOL)a4 hostTime:(unint64_t)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DE640;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DE750;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)dealloc
{
  [(ADSpeechCompressor *)self reset];
  v3.receiver = self;
  v3.super_class = ADSpeechCompressor;
  [(ADSpeechCompressor *)&v3 dealloc];
}

- (ADSpeechCompressor)initWithQueue:(id)a3 speechController:(id)a4 audioSessionController:(id)a5 audioPlaybackService:(id)a6 experimentContext:(id)a7
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = ADSpeechCompressor;
  v10 = [(ADSpeechCompressor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_queue, a3);
  }

  return v11;
}

@end