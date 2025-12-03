@interface AudioAppleSiriRemoteInputDevice
- (AudioAppleSiriRemoteInputDevice)initWithInfo:(id)info;
- (AudioAppleSiriRemoteInputPlugin)plugin;
- (NSString)deviceIdentifier;
- (__CFDictionary)getMatchingDict:(int64_t)dict;
- (id)_audioBufferForFrame:(id)frame;
- (id)_audioTimeForFrame:(id)frame;
- (id)_gainForDoapFrame:(id)frame;
- (id)_gainForFrame:(id)frame;
- (id)_gainForTVRemoteFrame:(id)frame;
- (id)_qualityForSpeexFrame:(id)frame;
- (id)_supportedFormats;
- (unsigned)deviceCategory;
- (void)_processAudioFrame:(id)frame;
- (void)handleAudioFrameMsg:(id)msg;
- (void)handleStreamDidCancelMsg:(id)msg;
- (void)handleTransportDidStartMsg:(id)msg;
- (void)handleTransportDidStopMsg:(id)msg;
- (void)invalidate;
- (void)startRecordingWithCompletionBlock:(id)block;
- (void)stopRecordingWithCompletionBlock:(id)block;
@end

@implementation AudioAppleSiriRemoteInputDevice

- (AudioAppleSiriRemoteInputDevice)initWithInfo:(id)info
{
  infoCopy = info;
  v36.receiver = self;
  v36.super_class = AudioAppleSiriRemoteInputDevice;
  v5 = [(AudioAppleSiriRemoteInputDevice *)&v36 init];
  if (v5)
  {
    v6 = [infoCopy objectForKeyedSubscript:@"kMsgDeviceType"];
    v5->_deviceType = [v6 integerValue];

    v7 = [infoCopy objectForKeyedSubscript:@"kMsgArgIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    deviceType = v5->_deviceType;
    if (deviceType <= 2)
    {
      if (deviceType == 1)
      {
        v13 = [infoCopy objectForKeyedSubscript:@"kMsgPidNum"];
        v5->_pidNum = [v13 unsignedShortValue];

        pidNum = v5->_pidNum;
        if ((pidNum - 788) >= 2 && pidNum != 621)
        {
          if (pidNum != 614)
          {
            codec = v5->_codec;
            v5->_codec = @"unknown";

            if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
            {
              sub_4080(&v5->_pidNum);
            }

            goto LABEL_29;
          }

          v11 = v5->_codec;
          v15 = 76;
          v16 = 74;
          v5->_codec = @"speex";
          v17 = 70;
          v18 = 24;
          v19 = 20;
          v20 = 12;
          goto LABEL_22;
        }
      }

      else if (deviceType != 2)
      {
LABEL_12:
        v12 = qword_D118;
        if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
        {
          sub_40F4(v12);
        }

        goto LABEL_29;
      }

      v17 = 0;
      v11 = v5->_codec;
      v15 = 4;
      v5->_codec = @"opus";
LABEL_21:
      v16 = 2;
      v18 = 16;
      v19 = 24;
      v20 = 20;
LABEL_22:

      *(&v5->super.isa + v20) = v17;
      *(&v5->super.isa + v19) = v16;
      *(&v5->super.isa + v18) = v15;
      _supportedFormats = [(AudioAppleSiriRemoteInputDevice *)v5 _supportedFormats];
      supportedFormats = v5->supportedFormats;
      v5->supportedFormats = _supportedFormats;

      supportedFormats = [(AudioAppleSiriRemoteInputDevice *)v5 supportedFormats];
      v25 = [supportedFormats objectAtIndexedSubscript:0];
      format = v5->format;
      v5->format = v25;

      v27 = qword_D118;
      if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v5->_deviceType;
        v30 = v5->_identifier;
        v29 = v5->_codec;
        v31 = v27;
        v32 = [infoCopy description];
        *buf = 134218754;
        v38 = v28;
        v39 = 2112;
        v40 = v29;
        v41 = 2112;
        v42 = v30;
        v43 = 2112;
        v44 = v32;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Initialized AudioAppleSiriRemoteInputDevice type %lu, %@ codec with identifier %@, info %@", buf, 0x2Au);
      }

      goto LABEL_24;
    }

    if (deviceType == 3)
    {
      v21 = [infoCopy objectForKeyedSubscript:@"kMsgCodecType"];
      v5->_doapCodecType = [v21 unsignedShortValue];

      v11 = v5->_codec;
      if (v5->_doapCodecType != 7)
      {
        v5->_codec = @"unknown";

        if (!os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        goto LABEL_11;
      }
    }

    else
    {
      if (deviceType != 4)
      {
        goto LABEL_12;
      }

      if (!_os_feature_enabled_impl())
      {
        goto LABEL_29;
      }

      v10 = [infoCopy objectForKeyedSubscript:@"kMsgCodecType"];
      v5->_doapCodecType = [v10 unsignedShortValue];

      v11 = v5->_codec;
      if (v5->_doapCodecType != 7)
      {
        v5->_codec = @"unknown";

        if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
        {
LABEL_11:
          sub_400C(&v5->_doapCodecType);
        }

LABEL_29:
        v33 = 0;
        goto LABEL_30;
      }
    }

    v17 = 0;
    v5->_codec = @"opus";
    v15 = 4;
    goto LABEL_21;
  }

LABEL_24:
  v33 = v5;
LABEL_30:

  return v33;
}

- (__CFDictionary)getMatchingDict:(int64_t)dict
{
  if (dict == 1)
  {
    v4 = IOServiceMatching("IOHIDEventDriver");
    CFDictionarySetValue(v4, @"DeviceUsagePage", &off_8550);
    CFDictionarySetValue(v4, @"DeviceUsage", &off_8568);
  }

  else if (dict)
  {
    if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
    {
      sub_4184();
    }

    return 0;
  }

  else
  {
    v4 = IOServiceMatching("AppleEmbeddedBluetoothButtons");
    identifier = [(AudioAppleSiriRemoteInputDevice *)self identifier];
    CFDictionarySetValue(v4, @"PhysicalDeviceUniqueID", identifier);
  }

  return v4;
}

- (NSString)deviceIdentifier
{
  if ([(AudioAppleSiriRemoteInputDevice *)self deviceType]- 1 >= &dword_0 + 2)
  {
    identifier = [(AudioAppleSiriRemoteInputDevice *)self identifier];
    goto LABEL_17;
  }

  resolvedDeviceIdentifier = [(AudioAppleSiriRemoteInputDevice *)self resolvedDeviceIdentifier];

  if (resolvedDeviceIdentifier)
  {
    goto LABEL_13;
  }

  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, [(AudioAppleSiriRemoteInputDevice *)self getMatchingDict:v5]);
    if (MatchingService)
    {
      break;
    }

LABEL_8:
    v6 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v9 = MatchingService;
  entryID = 0;
  if (IORegistryEntryGetRegistryEntryID(MatchingService, &entryID))
  {
    IOObjectRelease(v9);
    goto LABEL_8;
  }

  v10 = [NSNumber numberWithUnsignedLongLong:entryID];
  stringValue = [v10 stringValue];
  [(AudioAppleSiriRemoteInputDevice *)self setResolvedDeviceIdentifier:stringValue];

  v12 = qword_D118;
  if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    identifier2 = [(AudioAppleSiriRemoteInputDevice *)self identifier];
    resolvedDeviceIdentifier2 = [(AudioAppleSiriRemoteInputDevice *)self resolvedDeviceIdentifier];
    *buf = 138412546;
    v21 = identifier2;
    v22 = 2112;
    v23 = resolvedDeviceIdentifier2;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Device with identifier %@ resolved to %@", buf, 0x16u);
  }

  IOObjectRelease(v9);
LABEL_13:
  resolvedDeviceIdentifier3 = [(AudioAppleSiriRemoteInputDevice *)self resolvedDeviceIdentifier];

  if (!resolvedDeviceIdentifier3)
  {
    v17 = qword_D118;
    if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
    {
      sub_41F4(v17);
    }
  }

  identifier = [(AudioAppleSiriRemoteInputDevice *)self resolvedDeviceIdentifier];
LABEL_17:

  return identifier;
}

- (unsigned)deviceCategory
{
  if ([(AudioAppleSiriRemoteInputDevice *)self deviceType]- 3 >= &dword_0 + 2)
  {
    return 1919513718;
  }

  else
  {
    return 1919510644;
  }
}

- (void)startRecordingWithCompletionBlock:(id)block
{
  [(AudioAppleSiriRemoteInputDevice *)self setStartCompletionBlock:block];
  plugin = [(AudioAppleSiriRemoteInputDevice *)self plugin];
  v7 = @"kMsgArgIdentifier";
  identifier = [(AudioAppleSiriRemoteInputDevice *)self identifier];
  v8 = identifier;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [plugin sendMsg:@"StartStream" args:v6];
}

- (void)stopRecordingWithCompletionBlock:(id)block
{
  [(AudioAppleSiriRemoteInputDevice *)self setStopCompletionBlock:block];
  plugin = [(AudioAppleSiriRemoteInputDevice *)self plugin];
  v7 = @"kMsgArgIdentifier";
  identifier = [(AudioAppleSiriRemoteInputDevice *)self identifier];
  v8 = identifier;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [plugin sendMsg:@"StopStream" args:v6];
}

- (void)handleTransportDidStartMsg:(id)msg
{
  msgCopy = msg;
  startCompletionBlock = [(AudioAppleSiriRemoteInputDevice *)self startCompletionBlock];

  if (startCompletionBlock)
  {
    v6 = [msgCopy objectForKeyedSubscript:@"kMsgArgError"];
    if (v6)
    {
      v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:0];
      v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"kMsgArgError"];
    }

    else
    {
      v8 = 0;
    }

    startCompletionBlock2 = [(AudioAppleSiriRemoteInputDevice *)self startCompletionBlock];
    (startCompletionBlock2)[2](startCompletionBlock2, v8);

    v11 = qword_D118;
    if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "startCompletionBlock is successfully invoked with error %@", &v12, 0xCu);
    }

    [(AudioAppleSiriRemoteInputDevice *)self setStartCompletionBlock:0];
  }

  else
  {
    v9 = qword_D118;
    if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "startCompletionBlock is nil", &v12, 2u);
    }
  }
}

- (void)handleTransportDidStopMsg:(id)msg
{
  msgCopy = msg;
  stopCompletionBlock = [(AudioAppleSiriRemoteInputDevice *)self stopCompletionBlock];

  v5 = msgCopy;
  if (stopCompletionBlock)
  {
    v6 = [msgCopy objectForKeyedSubscript:@"kMsgArgError"];
    if (v6)
    {
      v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:0];
      v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"kMsgArgError"];
    }

    else
    {
      v8 = 0;
    }

    stopCompletionBlock2 = [(AudioAppleSiriRemoteInputDevice *)self stopCompletionBlock];
    (stopCompletionBlock2)[2](stopCompletionBlock2, v8);

    [(AudioAppleSiriRemoteInputDevice *)self setStopCompletionBlock:0];
    v5 = msgCopy;
  }
}

- (void)handleAudioFrameMsg:(id)msg
{
  v4 = [msg objectForKeyedSubscript:@"kMsgArgData"];
  [(AudioAppleSiriRemoteInputDevice *)self _processAudioFrame:v4];
}

- (void)handleStreamDidCancelMsg:(id)msg
{
  statusChangeBlock = [(AudioAppleSiriRemoteInputDevice *)self statusChangeBlock];

  if (statusChangeBlock)
  {
    v5 = qword_D118;
    if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "handle stream Cancel message", v7, 2u);
    }

    statusChangeBlock2 = [(AudioAppleSiriRemoteInputDevice *)self statusChangeBlock];
    statusChangeBlock2[2](statusChangeBlock2, 1919115630, 0);

    [(AudioAppleSiriRemoteInputDevice *)self setStatusChangeBlock:0];
  }
}

- (void)invalidate
{
  [(AudioAppleSiriRemoteInputDevice *)self setStopCompletionBlock:0];
  [(AudioAppleSiriRemoteInputDevice *)self setStartCompletionBlock:0];

  [(AudioAppleSiriRemoteInputDevice *)self setPlugin:0];
}

- (id)_supportedFormats
{
  v14 = 0u;
  LODWORD(v14) = 1936745848;
  DWORD2(v14) = 70;
  v3 = [(AudioAppleSiriRemoteInputDevice *)self codec:0x40CF400000000000];
  v4 = [v3 isEqualToString:@"opus"];

  if (v4)
  {
    v5 = &v12;
  }

  else
  {
    codec = [(AudioAppleSiriRemoteInputDevice *)self codec];
    v7 = [codec isEqualToString:@"speex"];

    if (v7)
    {
      v5 = &v13;
    }

    else
    {
      v8 = qword_D118;
      if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
      {
        sub_4284(v8);
      }

      v5 = 0;
    }
  }

  v9 = [[AVAudioFormat alloc] initWithStreamDescription:v5];
  v15 = v9;
  v10 = [NSArray arrayWithObjects:&v15 count:1];

  return v10;
}

- (void)_processAudioFrame:(id)frame
{
  frameCopy = frame;
  if ([(AudioAppleSiriRemoteInputDevice *)self pidNum]== 621)
  {
    v5 = [(AudioAppleSiriRemoteInputDevice *)self _audioBufferForFrame:frameCopy];
    v6 = [(AudioAppleSiriRemoteInputDevice *)self _audioTimeForFrame:frameCopy];
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = [(AudioAppleSiriRemoteInputDevice *)self _gainForFrame:frameCopy];
    [v7 setObject:v8 forKey:AVAudioRemoteInputBufferGainKey];

    codec = [(AudioAppleSiriRemoteInputDevice *)self codec];
    v10 = [codec isEqualToString:@"speex"];

    if (v10)
    {
      v11 = [(AudioAppleSiriRemoteInputDevice *)self _qualityForSpeexFrame:frameCopy];
      [v7 setObject:v11 forKey:AVAudioRemoteInputBufferSpeexFrameQualitiesKey];
    }

    audioInputBlock = [(AudioAppleSiriRemoteInputDevice *)self audioInputBlock];

    if (audioInputBlock)
    {
      audioInputBlock2 = [(AudioAppleSiriRemoteInputDevice *)self audioInputBlock];
      (audioInputBlock2)[2](audioInputBlock2, v5, v6, v7);
    }

    goto LABEL_31;
  }

  v14 = [frameCopy length];
  if (v14 < 6)
  {
    goto LABEL_31;
  }

  v16 = v14;
  v17 = 0;
  v40 = 0;
  v39 = AVAudioRemoteInputBufferGainKey;
  v38 = AVAudioRemoteInputBufferSpeexFrameQualitiesKey;
  *&v15 = 134217984;
  v37 = v15;
  while (1)
  {
    codec2 = [(AudioAppleSiriRemoteInputDevice *)self codec];
    v19 = [codec2 isEqualToString:@"speex"];

    if (v19)
    {
      v20 = 78;
      goto LABEL_15;
    }

    codec3 = [(AudioAppleSiriRemoteInputDevice *)self codec];
    v22 = [codec3 isEqualToString:@"opus"];

    v20 = v40;
    if (v22)
    {
      break;
    }

LABEL_15:
    v23 = qword_D118;
    if (v16 < v20)
    {
      if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
      {
        sub_4398(v20, v16, v23);
      }

      goto LABEL_31;
    }

    if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v43 = v16;
      v44 = 1024;
      v45 = v20;
      _os_log_debug_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "Received BufferLength %ld, FrameLength %d", buf, 0x12u);
    }

    v40 = v20;
    v41 = v16;
    v24 = v20;
    v25 = frameCopy;
    v26 = [frameCopy subdataWithRange:{v17, v20}];
    v27 = [(AudioAppleSiriRemoteInputDevice *)self _audioBufferForFrame:v26];
    v28 = [(AudioAppleSiriRemoteInputDevice *)self _audioTimeForFrame:v26];
    v29 = objc_alloc_init(NSMutableDictionary);
    v30 = [(AudioAppleSiriRemoteInputDevice *)self _gainForFrame:v26];
    [v29 setObject:v30 forKey:v39];

    codec4 = [(AudioAppleSiriRemoteInputDevice *)self codec];
    v32 = [codec4 isEqualToString:@"speex"];

    if (v32)
    {
      v33 = [(AudioAppleSiriRemoteInputDevice *)self _qualityForSpeexFrame:v26];
      [v29 setObject:v33 forKey:v38];
    }

    audioInputBlock3 = [(AudioAppleSiriRemoteInputDevice *)self audioInputBlock];

    if (audioInputBlock3)
    {
      audioInputBlock4 = [(AudioAppleSiriRemoteInputDevice *)self audioInputBlock];
      (audioInputBlock4)[2](audioInputBlock4, v27, v28, v29);
    }

    frameCopy = v25;
    v16 = v41 - v24;
    if (v41 - v24 < 0)
    {
      v36 = qword_D118;
      if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
      {
        *buf = v37;
        v43 = v41 - v24;
        _os_log_error_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "Buffer length should be negative value %ld", buf, 0xCu);
      }
    }

    v17 += v24;

    if (v16 <= 5)
    {
      goto LABEL_31;
    }
  }

  buf[0] = 0;
  [frameCopy getBytes:buf range:{v17 + self->_frameLengthOffset, 1}];
  if (buf[0] < 0x5Fu)
  {
    if (!buf[0])
    {
      goto LABEL_31;
    }

    v20 = (buf[0] + 5);
    goto LABEL_15;
  }

  if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
  {
    sub_4314(buf);
  }

LABEL_31:
}

- (id)_audioBufferForFrame:(id)frame
{
  frameCopy = frame;
  codec = [(AudioAppleSiriRemoteInputDevice *)self codec];
  v6 = [codec isEqualToString:@"opus"];

  if (v6)
  {
    v15 = 0;
    [frameCopy getBytes:&v15 range:{self->_frameLengthOffset, 1}];
    v7 = v15;
    v8 = [AVAudioCompressedBuffer alloc];
    format = [(AudioAppleSiriRemoteInputDevice *)self format];
    v10 = [v8 initWithFormat:format packetCapacity:1 maximumPacketSize:94];

    [frameCopy getBytes:objc_msgSend(v10 range:{"data"), self->_frameLengthOffset + 1, v7}];
    packetDescriptions = [v10 packetDescriptions];
    *packetDescriptions = 0;
    packetDescriptions[2] = 0;
    packetDescriptions[3] = v7;
  }

  else
  {
    v12 = [AVAudioCompressedBuffer alloc];
    format2 = [(AudioAppleSiriRemoteInputDevice *)self format];
    v10 = [v12 initWithFormat:format2 packetCapacity:1];

    [frameCopy getBytes:objc_msgSend(v10 length:{"data"), self->_frameLength}];
  }

  [v10 setPacketCount:1];

  return v10;
}

- (id)_audioTimeForFrame:(id)frame
{
  v6 = 0;
  [frame getBytes:&v6 range:{self->_timeOffset, 2}];
  v3 = [AVAudioTime alloc];
  v4 = [v3 initWithSampleTime:v6 atRate:1.0];

  return v4;
}

- (id)_gainForFrame:(id)frame
{
  frameCopy = frame;
  deviceType = [(AudioAppleSiriRemoteInputDevice *)self deviceType];
  if ((deviceType - 1) < 2)
  {
    v7 = [(AudioAppleSiriRemoteInputDevice *)self _gainForTVRemoteFrame:frameCopy];
  }

  else
  {
    if (deviceType != 3 && deviceType != 4)
    {
      v6 = qword_D118;
      if (os_log_type_enabled(qword_D118, OS_LOG_TYPE_ERROR))
      {
        sub_4424(v6);
      }
    }

    v7 = [(AudioAppleSiriRemoteInputDevice *)self _gainForDoapFrame:frameCopy];
  }

  v8 = v7;

  return v8;
}

- (id)_gainForTVRemoteFrame:(id)frame
{
  v5 = 0;
  [frame getBytes:&v5 range:{self->_rmsOffset, 2}];
  v3 = [NSNumber numberWithDouble:vcvtd_n_f64_u32(v5, 0xFuLL)];

  return v3;
}

- (id)_gainForDoapFrame:(id)frame
{
  v5 = 0;
  [frame getBytes:&v5 range:{self->_rmsOffset, 2}];
  v3 = [NSData dataWithBytes:&v5 length:2];

  return v3;
}

- (id)_qualityForSpeexFrame:(id)frame
{
  v5 = 0;
  [frame getBytes:&v5 range:{72, 2}];
  v3 = [NSNumber numberWithDouble:vcvtd_n_f64_u32(v5, 0xBuLL)];

  return v3;
}

- (AudioAppleSiriRemoteInputPlugin)plugin
{
  WeakRetained = objc_loadWeakRetained(&self->_plugin);

  return WeakRetained;
}

@end