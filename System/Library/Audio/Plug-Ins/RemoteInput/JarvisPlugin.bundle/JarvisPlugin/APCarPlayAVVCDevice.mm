@interface APCarPlayAVVCDevice
- (APCarPlayAVVCDevice)initWithXPCClient:(OpaqueFigXPCRemoteClient *)client;
- (id)pickDefaultFormat;
- (int)readAndSendPacketToAVVC;
- (int)readCompressedBuffer:(id *)buffer numOutputSamples:(unsigned int *)samples;
- (int)readPCMBuffer:(id *)buffer numOutputSamples:(unsigned int *)samples;
- (int)readSupportedFormats;
- (void)actionCompleted:(id)completed WithResult:(int)result;
- (void)dealloc;
- (void)handleNotification:(__CFString *)notification fromCenter:(__CFNotificationCenter *)center fromObject:(const void *)object withUserInfo:(__CFDictionary *)info;
- (void)insertStreamStartTimestamp:(id)timestamp returnOptions:(const __CFDictionary *)options;
- (void)sendAllAvailableAudioDataToAVVC;
- (void)startRecordingWithSettings:(id)settings withCompletionBlock:(id)block;
- (void)stopRecordingWithCompletionBlock:(id)block;
- (void)stopRecordingWithOptionalForcedError:(int)error;
@end

@implementation APCarPlayAVVCDevice

- (APCarPlayAVVCDevice)initWithXPCClient:(OpaqueFigXPCRemoteClient *)client
{
  v22.receiver = self;
  v22.super_class = APCarPlayAVVCDevice;
  v4 = [(APCarPlayAVVCDevice *)&v22 init];
  v5 = v4;
  if (!v4)
  {
    sub_3994();
    return v5;
  }

  if (!client)
  {
    v4->_remote.client = 0;
    goto LABEL_24;
  }

  v6 = CFRetain(client);
  v5->_remote.client = v6;
  if (!v6)
  {
LABEL_24:
    sub_3938();
    goto LABEL_19;
  }

  v7 = APEndpointCarPlayRemoteCreate();
  if (v7)
  {
    v20 = v7;
    if (v7 == -6720)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, v5, sub_1C68, @"avvcDevice_ConnectionLost", v5->_remote.endpoint, CFNotificationSuspensionBehaviorDeliverImmediately);
  client = v5->_remote.client;
  endpoint = v5->_remote.endpoint;
  v11 = APEndpointStreamCarPlayAudioRemoteCreate();
  if (v11)
  {
    v20 = v11;
    if (v11 == -6720)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v12 = v5->_remote.endpoint;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
    v20 = -12782;
LABEL_17:
    APSLogErrorAt();
    goto LABEL_18;
  }

  v15 = v14(CMBaseObject, kFigEndpointProperty_ID, 0, &v5->_deviceIdentifier);
  if (v15)
  {
    v20 = v15;
    goto LABEL_17;
  }

  readSupportedFormats = [(APCarPlayAVVCDevice *)v5 readSupportedFormats];
  if (readSupportedFormats)
  {
    v20 = readSupportedFormats;
    sub_388C();
LABEL_18:
    if (v20 != -6720)
    {
LABEL_32:
      if (dword_CAE0 <= 90 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
      {
        sub_38F4();
      }

LABEL_35:

      return 0;
    }

LABEL_19:
    if (dword_CAE0 <= 30 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
    {
      sub_3964();
    }

    goto LABEL_35;
  }

  v5->_dataProcessing.avvcCompletionBlock = 0;
  v5->_dataProcessing.isActive = 0;
  CFAllocatorGetDefault();
  v17 = APSPowerAssertionCreate();
  v5->_dataProcessing.powerAssertion = v17;
  if (!v17 || (v18 = FigDispatchQueueCreateWithPriority(), (v5->_dataProcessing.queue = v18) == 0) || (v19 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v18), (v5->_dataProcessing.timer = v19) == 0))
  {
    APSLogErrorAt();
    goto LABEL_32;
  }

  dispatch_set_context(v19, v5);
  dispatch_source_set_event_handler_f(v5->_dataProcessing.timer, j__objc_msgSend_sendAllAvailableAudioDataToAVVC);
  if (dword_CAE0 <= 30 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
  {
    sub_38B4(v5);
  }

  return v5;
}

- (void)dealloc
{
  if (dword_CAE0 <= 30 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
  {
    sub_39C0(self);
  }

  [(APCarPlayAVVCDevice *)self stopRecordingWithOptionalForcedError:0];
  timer = self->_dataProcessing.timer;
  if (timer)
  {
    if (!self->_dataProcessing.isActive)
    {
      dispatch_resume(timer);
      v4 = self->_dataProcessing.timer;
    }

    dispatch_source_cancel_and_wait();
    v5 = self->_dataProcessing.timer;
    if (v5)
    {
      dispatch_release(v5);
      self->_dataProcessing.timer = 0;
    }
  }

  queue = self->_dataProcessing.queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_dataProcessing.queue = 0;
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, @"avvcDevice_ConnectionLost", self->_remote.endpoint);
  powerAssertion = self->_dataProcessing.powerAssertion;
  if (powerAssertion)
  {
    CFRelease(powerAssertion);
    self->_dataProcessing.powerAssertion = 0;
  }

  endpoint = self->_remote.endpoint;
  if (endpoint)
  {
    CFRelease(endpoint);
    self->_remote.endpoint = 0;
  }

  endpointStream = self->_remote.endpointStream;
  if (endpointStream)
  {
    CFRelease(endpointStream);
    self->_remote.endpointStream = 0;
  }

  xpcAudioSink = self->_remote.xpcAudioSink;
  if (xpcAudioSink)
  {
    CFRelease(xpcAudioSink);
    self->_remote.xpcAudioSink = 0;
  }

  client = self->_remote.client;
  if (client)
  {
    CFRelease(client);
  }

  v13.receiver = self;
  v13.super_class = APCarPlayAVVCDevice;
  [(APCarPlayAVVCDevice *)&v13 dealloc];
}

- (void)insertStreamStartTimestamp:(id)timestamp returnOptions:(const __CFDictionary *)options
{
  v6 = mach_absolute_time();
  *options = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v8 = Mutable;
    Int64 = CFDictionaryGetInt64();
    v10 = Int64;
    if (dword_CAE0 > 50)
    {
      if (!Int64)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (dword_CAE0 != -1 || _LogCategory_Initialize())
      {
        sub_3A3C();
      }

      if (!v10)
      {
        if (dword_CAE0 <= 50)
        {
          if (dword_CAE0 != -1 || (v10 = v6, _LogCategory_Initialize()))
          {
            sub_3AB4();
            v10 = v6;
          }

LABEL_20:
          if (dword_CAE0 <= 50 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
          {
            sub_3AF0();
          }

          goto LABEL_25;
        }

LABEL_24:
        v10 = v6;
LABEL_25:
        self->_dataProcessing.streamStartTimestamp = v10;
        CFDictionarySetInt64();
        *options = v8;
        return;
      }
    }

    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    v12 = FigGetCFPreferenceNumberWithDefault();
    if (v12 >= CFPreferenceNumberWithDefault)
    {
      v13 = CFPreferenceNumberWithDefault;
    }

    else
    {
      v13 = v12;
    }

    if (v13 && v10 > MillisecondsToUpTicks())
    {
      if (dword_CAE0 <= 50 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
      {
        sub_3A78();
      }

      v10 -= MillisecondsToUpTicks();
    }

    goto LABEL_20;
  }

  sub_3B68();
}

- (void)startRecordingWithSettings:(id)settings withCompletionBlock:(id)block
{
  queue = self->_dataProcessing.queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2124;
  block[3] = &unk_8440;
  block[5] = settings;
  block[6] = block;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)stopRecordingWithCompletionBlock:(id)block
{
  queue = self->_dataProcessing.queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_28F8;
  v5[3] = &unk_8490;
  v5[4] = self;
  v5[5] = block;
  dispatch_sync(queue, v5);
  [(APCarPlayAVVCDevice *)self stopRecordingWithOptionalForcedError:0];
}

- (int)readSupportedFormats
{
  theArray = 0;
  cf = 0;
  endpointStream = self->_remote.endpointStream;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v18 = -12782;
LABEL_14:
    APSLogErrorAt();
    goto LABEL_15;
  }

  v6 = v5(CMBaseObject, kAPEndpointStreamCarPlayAudioProperty_CarPlayAudioFormats, 0, &cf);
  if (v6)
  {
    v18 = v6;
    goto LABEL_14;
  }

  v7 = APCarPlayAudioFormatsCopyAudioFormatInfosForStreamAndType();
  if (v7)
  {
    v18 = v7;
    sub_3E4C();
  }

  else
  {
    Count = CFArrayGetCount(theArray);
    v9 = [[NSMutableArray alloc] initWithCapacity:Count];
    if (v9)
    {
      v10 = v9;
      if (Count < 1)
      {
LABEL_12:
        self->supportedFormats = v10;
        v18 = 0;
        self->format = [(APCarPlayAVVCDevice *)self pickDefaultFormat];
        goto LABEL_15;
      }

      v11 = 0;
      v12 = 1;
      while (1)
      {
        CFArrayGetValueAtIndex(theArray, v11);
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        Description = APCarPlayAudioFormatInfoGetDescription();
        v14 = *(Description + 32);
        v15 = *(Description + 16);
        v20 = *Description;
        v21 = v15;
        v22 = v14;
        if (DWORD2(v20) == 1819304813)
        {
          HIDWORD(v20) &= ~2u;
        }

        v16 = [[AVAudioFormat alloc] initWithStreamDescription:&v20];
        [(NSArray *)v10 setObject:v16 atIndexedSubscript:v11, v20];
        if (![(NSArray *)v10 objectAtIndexedSubscript:v11])
        {
          break;
        }

        v11 = v12;
        if (Count <= v12++)
        {
          goto LABEL_12;
        }
      }

      sub_3E74();
    }

    else
    {
      sub_3EA0();
    }

    v18 = 0;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v18;
}

- (id)pickDefaultFormat
{
  result = self->supportedFormats;
  if (result)
  {
    return [result objectAtIndexedSubscript:0];
  }

  return result;
}

- (int)readCompressedBuffer:(id *)buffer numOutputSamples:(unsigned int *)samples
{
  v19 = 1440;
  v18 = 0;
  if (*([(AVAudioFormat *)self->format streamDescription]+ 2) == 1819304813)
  {
    sub_3EE0();
    return -6705;
  }

  v7 = [[AVAudioCompressedBuffer alloc] initWithFormat:self->format packetCapacity:1 maximumPacketSize:1440];
  if (!v7)
  {
    sub_3ECC();
    return 0;
  }

  v8 = v7;
  xpcAudioSink = self->_remote.xpcAudioSink;
  v10 = *([v7 audioBufferList] + 2);
  packetDescriptions = [v8 packetDescriptions];
  v12 = *(CMBaseObjectGetVTable() + 16);
  if (*v12 < 2uLL)
  {
    v16 = -12781;
    goto LABEL_11;
  }

  v13 = v12[7];
  if (!v13)
  {
    v16 = -12782;
    goto LABEL_11;
  }

  v14 = v12[7];
  v15 = v13(xpcAudioSink, 0, v10, 1440, packetDescriptions, 1, &v19, &v18);
  v16 = v15;
  if (v15 == -6765)
  {
    goto LABEL_12;
  }

  if (v15)
  {
LABEL_11:
    APSLogErrorAt();
LABEL_12:

    return v16;
  }

  [v8 setByteLength:v19];
  [v8 setPacketCount:v18];
  *samples = *([(AVAudioFormat *)self->format streamDescription]+ 5);
  *buffer = v8;
  return v16;
}

- (int)readPCMBuffer:(id *)buffer numOutputSamples:(unsigned int *)samples
{
  v19 = 1440;
  v18 = 0;
  if (*([(AVAudioFormat *)self->format streamDescription]+ 2) != 1819304813)
  {
    sub_3EF4();
    return 0;
  }

  v7 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:self->format frameCapacity:0x5A0u / *(-[AVAudioFormat streamDescription](self->format, "streamDescription") + 6)];
  if (!v7)
  {
    sub_3F08();
    return 0;
  }

  v8 = v7;
  frameCapacity = [v7 frameCapacity];
  xpcAudioSink = self->_remote.xpcAudioSink;
  v11 = *([v8 audioBufferList] + 2);
  v12 = *(CMBaseObjectGetVTable() + 16);
  if (*v12 < 2uLL)
  {
    v16 = -12781;
    goto LABEL_11;
  }

  v13 = v12[7];
  if (!v13)
  {
    v16 = -12782;
    goto LABEL_11;
  }

  v14 = v12[7];
  v15 = v13(xpcAudioSink, 0, v11, 1440, 0, frameCapacity, &v19, &v18);
  v16 = v15;
  if (v15 == -6765)
  {
    goto LABEL_12;
  }

  if (v15)
  {
LABEL_11:
    APSLogErrorAt();
LABEL_12:

    return v16;
  }

  [v8 setFrameLength:v18];
  *buffer = v8;
  *samples = v18;
  return v16;
}

- (void)handleNotification:(__CFString *)notification fromCenter:(__CFNotificationCenter *)center fromObject:(const void *)object withUserInfo:(__CFDictionary *)info
{
  if (CFEqual(notification, kAPCarPlayAVVCNotification_StateIncompatibleWithAuxIn))
  {

    [(APCarPlayAVVCDevice *)self stopRecordingWithOptionalForcedError:1919115630];
  }

  else if (CFEqual(notification, @"avvcDevice_ConnectionLost"))
  {
    if (dword_CAE0 <= 50 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
    {
      sub_3F1C();
    }

    [(APCarPlayAVVCDevice *)self stopRecordingWithOptionalForcedError:1919115630];
    LocalCenter = CFNotificationCenterGetLocalCenter();
    v9 = kFigEndpointNotification_EndpointDeactivated;

    CFNotificationCenterPostNotification(LocalCenter, v9, self, 0, 1u);
  }
}

- (void)stopRecordingWithOptionalForcedError:(int)error
{
  queue = self->_dataProcessing.queue;
  if (queue)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_2668;
    v5[3] = &unk_8468;
    v5[4] = self;
    errorCopy = error;
    dispatch_sync(queue, v5);
  }
}

- (void)actionCompleted:(id)completed WithResult:(int)result
{
  if (self->_dataProcessing.avvcCompletionBlock)
  {
    if (dword_CAE0 <= 50 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
    {
      sub_18FC();
    }

    if (result)
    {
      v6 = [[NSError alloc] initWithDomain:NSOSStatusErrorDomain code:result userInfo:0];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    (*(self->_dataProcessing.avvcCompletionBlock + 2))(self->_dataProcessing.avvcCompletionBlock, v6);
    if (v7)
    {
    }
  }
}

- (int)readAndSendPacketToAVVC
{
  v14 = 0;
  v13 = 0;
  if (*([(AVAudioFormat *)self->format streamDescription]+ 2) == 1819304813)
  {
    v3 = [(APCarPlayAVVCDevice *)self readPCMBuffer:&v14 numOutputSamples:&v13];
  }

  else
  {
    v3 = [(APCarPlayAVVCDevice *)self readCompressedBuffer:&v14 numOutputSamples:&v13];
  }

  v5 = v3;
  if (!v3)
  {
    if (!self->audioInputBlock || !v14)
    {
      goto LABEL_9;
    }

    v6 = [AVAudioTime alloc];
    [(AVAudioFormat *)self->format sampleRate];
    v7 = [v6 initWithAudioTimeStamp:&self->_dataProcessing.timestamp sampleRate:?];
    if (v7)
    {
      v8 = v7;
      audioOptions = self->_dataProcessing.audioOptions;
      (*(self->audioInputBlock + 2))();

LABEL_9:
      LODWORD(v4) = v13;
      v10 = v4 / *[(AVAudioFormat *)self->format streamDescription];
      self->_dataProcessing.timestamp.mHostTime += SecondsToUpTicksF();
      LODWORD(v11) = v13;
      self->_dataProcessing.timestamp.mSampleTime = self->_dataProcessing.timestamp.mSampleTime + v11;
      ++self->_dataProcessing.numPacketsProcessed;
      goto LABEL_10;
    }

    APSLogErrorAt();
  }

LABEL_10:
  if (v14)
  {
  }

  return v5;
}

- (void)sendAllAvailableAudioDataToAVVC
{
  if (self->_dataProcessing.isActive)
  {
      ;
    }
  }
}

@end